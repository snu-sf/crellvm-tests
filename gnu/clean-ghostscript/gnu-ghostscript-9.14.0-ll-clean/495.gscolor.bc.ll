; ModuleID = './gscolor.bc'
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
%struct.gx_io_device_s = type opaque
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct.enum_ptr_s = type { i8*, i32 }
%struct.gc_state_s = type opaque
%struct.gc_ptr_element_s = type { i16, i16 }
%struct.gx_device_color_type_s = type { %struct.gs_memory_struct_type_s*, void (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*)*, %struct.gx_device_halftone_s* (%struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_int_point_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*, %struct.gx_device_s*, i64, i8*, i32*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_device_s*, i64, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_s*, i64*)* }
%struct.gx_device_color_s = type { %struct.gx_device_color_type_s*, %union._c, %struct.gs_int_point_s, i32, %struct.gs_client_color_s, %struct._mask }
%union._c = type { %struct._col }
%struct._col = type { %struct.gx_device_halftone_s*, i16, [64 x i8], [64 x i32], i16, i64 }
%struct.gx_device_halftone_s = type opaque
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
%struct.gs_imager_state_s = type { i32, %struct.gs_memory_s*, i8*, %struct.gx_line_params_s, i32, %struct.gs_matrix_fixed_s, i32, %struct.gs_point_s, %struct.gs_point_s, i32, i32, i16, i32, %struct.gs_transparency_source_s, %struct.gs_transparency_source_s, %struct.gs_xstate_trans_flags, i64, i32, i32, i32, %struct.gx_device_s*, i32, i32, i32, i32, i32, i32, float, %struct.gs_fixed_point_s, i32, i32, i32, float, i32, i32, %struct.gsicc_manager_s*, %struct.gsicc_link_cache_s*, %struct.gsicc_profile_cache_s*, %struct.gx_color_map_procs_s* (%struct.gs_imager_state_s*, %struct.gx_device_s*)*, %struct.gs_halftone_s*, [2 x %struct.gs_int_point_s], %struct.gx_device_halftone_s*, %struct.gs_cie_render_s*, i32, %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s*, %struct.gx_transfer_s, [64 x %struct.gx_transfer_map_s*], %struct.gx_cie_joint_caches_s*, %struct.gx_color_map_procs_s*, %struct.gs_devicen_color_map_s, %struct.gx_pattern_cache_s*, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_devicen_color_map_s }
%struct.gs_halftone_s = type opaque
%struct.gs_cie_render_s = type opaque
%struct.gx_transfer_map_s = type { %struct.rc_header_s, float (double, %struct.gx_transfer_map_s*)*, %struct.gs_mapping_closure_s, i64, [256 x i16] }
%struct.gs_mapping_closure_s = type { float (double, %struct.gx_transfer_map_s*, i8*)*, i8* }
%struct.gx_transfer_s = type { i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s* }
%struct.gx_color_map_procs_s = type { void (i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32, %struct.gs_color_space_s*)*, void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_imager_state_s*, %struct.gx_device_s*)* }
%struct.gx_pattern_cache_s = type opaque
%struct.gs_color_space_s = type { %struct.gs_color_space_type_s*, %struct.rc_header_s, i64, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.client_color_space_data_s*, %struct.cmm_profile_s*, %union.anon }
%struct.gs_color_space_type_s = type { i32, i32, i32, %struct.gs_memory_struct_type_s*, i32 (%struct.gs_color_space_s*)*, {}*, {}*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, void (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)*, i32 (%struct.gs_color_space_s*)* }
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
%struct.gs_device_filter_stack_s = type { %struct.gs_device_filter_stack_s*, %struct.gs_device_filter_s*, %struct.gx_device_s*, %struct.rc_header_s }
%struct.gs_device_filter_s = type opaque
%struct.gs_state_client_procs_s = type { i8* (%struct.gs_memory_s*)*, i32 (i8*, i8*)*, void (i8*, %struct.gs_memory_s*)*, i32 (i8*, i8*, i32)* }
%struct.gs_paint_color_s = type { [64 x float] }
%struct._mask = type { %struct.mp_, i64, %struct.gx_color_tile_s* }
%struct.mp_ = type { i32, i32 }
%struct.gx_color_tile_s = type opaque
%struct.gx_device_color_saved_s = type { %struct.gx_device_color_type_s*, %union._svc, %struct.gs_int_point_s }
%union._svc = type { %struct._svbin, [304 x i8] }
%struct._svbin = type { [2 x i64], i32, i32 }
%struct.gx_rop_source_s = type { i8*, i32, i32, i64, [2 x i64], i32, i32 }
%struct.gc_procs_common_s = type { i8* (i8*, %struct.gc_state_s*)*, void (%struct.gs_string_s*, %struct.gc_state_s*)*, void (%struct.gs_const_string_s*, %struct.gc_state_s*)*, void (%struct.gs_param_string_s*, %struct.gc_state_s*)* }
%struct.gs_string_s = type { i8*, i32 }
%struct.gs_const_string_s = type { i8*, i32 }

@.str = private unnamed_addr constant [16 x i8] c"gs_client_color\00", align 1
@client_color_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 1, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([1 x %struct.gc_ptr_element_s], [1 x %struct.gc_ptr_element_s]* @client_color_enum_ptrs, i32 0, i32 0) }, align 8
@st_client_color = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 264, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @client_color_reloc_ptrs to i8*) }, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"gx_transfer_map\00", align 1
@st_transfer_map = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 568, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @transfer_map_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @transfer_map_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@gx_dc_type_data_none = external constant %struct.gx_device_color_type_s, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"gs_setgray\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"gs_setrgbcolor\00", align 1
@gx_dc_type_data_null = external constant %struct.gx_device_color_type_s, align 8
@.str.4 = private unnamed_addr constant [15 x i8] c"gs_settransfer\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"gx_set_device_color_1\00", align 1
@gx_dc_type_data_pure = external constant %struct.gx_device_color_type_s, align 8
@client_color_enum_ptrs = internal constant [1 x %struct.gc_ptr_element_s] zeroinitializer, align 2
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8

declare %struct.gs_ptr_procs_s* @basic_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #0

declare void @basic_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #0

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @transfer_map_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #1 {
entry:
  %retval = alloca %struct.gs_ptr_procs_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %mptr = alloca %struct.gx_transfer_map_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_transfer_map_s** %mptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gx_transfer_map_s*
  store %struct.gx_transfer_map_s* %2, %struct.gx_transfer_map_s** %mptr, align 8, !tbaa !1
  %3 = load i32, i32* %index.addr, align 4, !tbaa !5
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
  ]

sw.default:                                       ; preds = %entry
  store %struct.gs_ptr_procs_s* null, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %4 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %mptr, align 8, !tbaa !1
  %proc = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %4, i32 0, i32 1
  %5 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %proc, align 8, !tbaa !7
  %cmp = icmp eq float (double, %struct.gx_transfer_map_s*)* %5, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb
  %6 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %mptr, align 8, !tbaa !1
  %closure = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %6, i32 0, i32 2
  %data = getelementptr inbounds %struct.gs_mapping_closure_s, %struct.gs_mapping_closure_s* %closure, i32 0, i32 1
  %7 = load i8*, i8** %data, align 8, !tbaa !12
  br label %cond.end

cond.false:                                       ; preds = %sw.bb
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %7, %cond.true ], [ null, %cond.false ]
  %8 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %8, i32 0, i32 0
  store i8* %cond, i8** %ptr, align 8, !tbaa !13
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %sw.default
  %9 = bitcast %struct.gx_transfer_map_s** %mptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #2
  %10 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %10
}

; Function Attrs: nounwind uwtable
define internal void @transfer_map_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #1 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %mptr = alloca %struct.gx_transfer_map_s*, align 8
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_transfer_map_s** %mptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gx_transfer_map_s*
  store %struct.gx_transfer_map_s* %2, %struct.gx_transfer_map_s** %mptr, align 8, !tbaa !1
  %3 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %mptr, align 8, !tbaa !1
  %proc = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %3, i32 0, i32 1
  %4 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %proc, align 8, !tbaa !7
  %cmp = icmp eq float (double, %struct.gx_transfer_map_s*)* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %6 = bitcast %struct.gc_state_s* %5 to %struct.gc_procs_common_s**
  %7 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %6, align 8, !tbaa !1
  %reloc_struct_ptr = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %7, i32 0, i32 0
  %8 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr, align 8, !tbaa !15
  %9 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %10 = bitcast i8* %9 to %struct.gx_transfer_map_s*
  %closure = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %10, i32 0, i32 2
  %data = getelementptr inbounds %struct.gs_mapping_closure_s, %struct.gs_mapping_closure_s* %closure, i32 0, i32 1
  %11 = load i8*, i8** %data, align 8, !tbaa !12
  %12 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call i8* %8(i8* %11, %struct.gc_state_s* %12) #3
  %13 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %14 = bitcast i8* %13 to %struct.gx_transfer_map_s*
  %closure1 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %14, i32 0, i32 2
  %data2 = getelementptr inbounds %struct.gs_mapping_closure_s, %struct.gs_mapping_closure_s* %closure1, i32 0, i32 1
  store i8* %call, i8** %data2, align 8, !tbaa !12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = bitcast %struct.gx_transfer_map_s** %mptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #2
  ret void
}

; Function Attrs: nounwind uwtable
define void @gx_init_paint_1(%struct.gs_client_color_s* %pcc, %struct.gs_color_space_s* %pcs) #1 {
entry:
  %pcc.addr = alloca %struct.gs_client_color_s*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  store %struct.gs_client_color_s* %pcc, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %paint = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %0, i32 0, i32 1
  %values = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint, i32 0, i32 0
  %arrayidx = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 0
  store float 0.000000e+00, float* %arrayidx, align 4, !tbaa !17
  ret void
}

; Function Attrs: nounwind uwtable
define void @gx_init_paint_3(%struct.gs_client_color_s* %pcc, %struct.gs_color_space_s* %pcs) #1 {
entry:
  %pcc.addr = alloca %struct.gs_client_color_s*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  store %struct.gs_client_color_s* %pcc, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %paint = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %0, i32 0, i32 1
  %values = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint, i32 0, i32 0
  %arrayidx = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 2
  store float 0.000000e+00, float* %arrayidx, align 4, !tbaa !17
  %1 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %paint1 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %1, i32 0, i32 1
  %values2 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint1, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [64 x float], [64 x float]* %values2, i32 0, i64 1
  store float 0.000000e+00, float* %arrayidx3, align 4, !tbaa !17
  %2 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %paint4 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %2, i32 0, i32 1
  %values5 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint4, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [64 x float], [64 x float]* %values5, i32 0, i64 0
  store float 0.000000e+00, float* %arrayidx6, align 4, !tbaa !17
  ret void
}

; Function Attrs: nounwind uwtable
define void @gx_init_paint_4(%struct.gs_client_color_s* %pcc, %struct.gs_color_space_s* %pcs) #1 {
entry:
  %pcc.addr = alloca %struct.gs_client_color_s*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  store %struct.gs_client_color_s* %pcc, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %paint = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %0, i32 0, i32 1
  %values = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint, i32 0, i32 0
  %arrayidx = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 3
  store float 1.000000e+00, float* %arrayidx, align 4, !tbaa !17
  %1 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %2 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  call void @gx_init_paint_3(%struct.gs_client_color_s* %1, %struct.gs_color_space_s* %2) #3
  ret void
}

; Function Attrs: nounwind uwtable
define void @gx_restrict01_paint_1(%struct.gs_client_color_s* %pcc, %struct.gs_color_space_s* %pcs) #1 {
entry:
  %pcc.addr = alloca %struct.gs_client_color_s*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  store %struct.gs_client_color_s* %pcc, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %paint = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %0, i32 0, i32 1
  %values = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint, i32 0, i32 0
  %arrayidx = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 0
  %1 = load float, float* %arrayidx, align 4, !tbaa !17
  %conv = fpext float %1 to double
  %cmp = fcmp ole double %conv, 0.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end.14

cond.false:                                       ; preds = %entry
  %2 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %paint2 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %2, i32 0, i32 1
  %values3 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint2, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [64 x float], [64 x float]* %values3, i32 0, i64 0
  %3 = load float, float* %arrayidx4, align 4, !tbaa !17
  %conv5 = fpext float %3 to double
  %cmp6 = fcmp oge double %conv5, 1.000000e+00
  br i1 %cmp6, label %cond.true.8, label %cond.false.9

cond.true.8:                                      ; preds = %cond.false
  br label %cond.end

cond.false.9:                                     ; preds = %cond.false
  %4 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %paint10 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %4, i32 0, i32 1
  %values11 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint10, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [64 x float], [64 x float]* %values11, i32 0, i64 0
  %5 = load float, float* %arrayidx12, align 4, !tbaa !17
  %conv13 = fpext float %5 to double
  br label %cond.end

cond.end:                                         ; preds = %cond.false.9, %cond.true.8
  %cond = phi double [ 1.000000e+00, %cond.true.8 ], [ %conv13, %cond.false.9 ]
  br label %cond.end.14

cond.end.14:                                      ; preds = %cond.end, %cond.true
  %cond15 = phi double [ 0.000000e+00, %cond.true ], [ %cond, %cond.end ]
  %conv16 = fptrunc double %cond15 to float
  %6 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %paint17 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %6, i32 0, i32 1
  %values18 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint17, i32 0, i32 0
  %arrayidx19 = getelementptr inbounds [64 x float], [64 x float]* %values18, i32 0, i64 0
  store float %conv16, float* %arrayidx19, align 4, !tbaa !17
  ret void
}

; Function Attrs: nounwind uwtable
define void @gx_restrict01_paint_3(%struct.gs_client_color_s* %pcc, %struct.gs_color_space_s* %pcs) #1 {
entry:
  %pcc.addr = alloca %struct.gs_client_color_s*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  store %struct.gs_client_color_s* %pcc, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %paint = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %0, i32 0, i32 1
  %values = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint, i32 0, i32 0
  %arrayidx = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 2
  %1 = load float, float* %arrayidx, align 4, !tbaa !17
  %conv = fpext float %1 to double
  %cmp = fcmp ole double %conv, 0.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end.14

cond.false:                                       ; preds = %entry
  %2 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %paint2 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %2, i32 0, i32 1
  %values3 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint2, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [64 x float], [64 x float]* %values3, i32 0, i64 2
  %3 = load float, float* %arrayidx4, align 4, !tbaa !17
  %conv5 = fpext float %3 to double
  %cmp6 = fcmp oge double %conv5, 1.000000e+00
  br i1 %cmp6, label %cond.true.8, label %cond.false.9

cond.true.8:                                      ; preds = %cond.false
  br label %cond.end

cond.false.9:                                     ; preds = %cond.false
  %4 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %paint10 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %4, i32 0, i32 1
  %values11 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint10, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [64 x float], [64 x float]* %values11, i32 0, i64 2
  %5 = load float, float* %arrayidx12, align 4, !tbaa !17
  %conv13 = fpext float %5 to double
  br label %cond.end

cond.end:                                         ; preds = %cond.false.9, %cond.true.8
  %cond = phi double [ 1.000000e+00, %cond.true.8 ], [ %conv13, %cond.false.9 ]
  br label %cond.end.14

cond.end.14:                                      ; preds = %cond.end, %cond.true
  %cond15 = phi double [ 0.000000e+00, %cond.true ], [ %cond, %cond.end ]
  %conv16 = fptrunc double %cond15 to float
  %6 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %paint17 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %6, i32 0, i32 1
  %values18 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint17, i32 0, i32 0
  %arrayidx19 = getelementptr inbounds [64 x float], [64 x float]* %values18, i32 0, i64 2
  store float %conv16, float* %arrayidx19, align 4, !tbaa !17
  %7 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %paint20 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %7, i32 0, i32 1
  %values21 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint20, i32 0, i32 0
  %arrayidx22 = getelementptr inbounds [64 x float], [64 x float]* %values21, i32 0, i64 1
  %8 = load float, float* %arrayidx22, align 4, !tbaa !17
  %conv23 = fpext float %8 to double
  %cmp24 = fcmp ole double %conv23, 0.000000e+00
  br i1 %cmp24, label %cond.true.26, label %cond.false.27

cond.true.26:                                     ; preds = %cond.end.14
  br label %cond.end.42

cond.false.27:                                    ; preds = %cond.end.14
  %9 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %paint28 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %9, i32 0, i32 1
  %values29 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint28, i32 0, i32 0
  %arrayidx30 = getelementptr inbounds [64 x float], [64 x float]* %values29, i32 0, i64 1
  %10 = load float, float* %arrayidx30, align 4, !tbaa !17
  %conv31 = fpext float %10 to double
  %cmp32 = fcmp oge double %conv31, 1.000000e+00
  br i1 %cmp32, label %cond.true.34, label %cond.false.35

cond.true.34:                                     ; preds = %cond.false.27
  br label %cond.end.40

cond.false.35:                                    ; preds = %cond.false.27
  %11 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %paint36 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %11, i32 0, i32 1
  %values37 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint36, i32 0, i32 0
  %arrayidx38 = getelementptr inbounds [64 x float], [64 x float]* %values37, i32 0, i64 1
  %12 = load float, float* %arrayidx38, align 4, !tbaa !17
  %conv39 = fpext float %12 to double
  br label %cond.end.40

cond.end.40:                                      ; preds = %cond.false.35, %cond.true.34
  %cond41 = phi double [ 1.000000e+00, %cond.true.34 ], [ %conv39, %cond.false.35 ]
  br label %cond.end.42

cond.end.42:                                      ; preds = %cond.end.40, %cond.true.26
  %cond43 = phi double [ 0.000000e+00, %cond.true.26 ], [ %cond41, %cond.end.40 ]
  %conv44 = fptrunc double %cond43 to float
  %13 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %paint45 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %13, i32 0, i32 1
  %values46 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint45, i32 0, i32 0
  %arrayidx47 = getelementptr inbounds [64 x float], [64 x float]* %values46, i32 0, i64 1
  store float %conv44, float* %arrayidx47, align 4, !tbaa !17
  %14 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %paint48 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %14, i32 0, i32 1
  %values49 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint48, i32 0, i32 0
  %arrayidx50 = getelementptr inbounds [64 x float], [64 x float]* %values49, i32 0, i64 0
  %15 = load float, float* %arrayidx50, align 4, !tbaa !17
  %conv51 = fpext float %15 to double
  %cmp52 = fcmp ole double %conv51, 0.000000e+00
  br i1 %cmp52, label %cond.true.54, label %cond.false.55

cond.true.54:                                     ; preds = %cond.end.42
  br label %cond.end.70

cond.false.55:                                    ; preds = %cond.end.42
  %16 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %paint56 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %16, i32 0, i32 1
  %values57 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint56, i32 0, i32 0
  %arrayidx58 = getelementptr inbounds [64 x float], [64 x float]* %values57, i32 0, i64 0
  %17 = load float, float* %arrayidx58, align 4, !tbaa !17
  %conv59 = fpext float %17 to double
  %cmp60 = fcmp oge double %conv59, 1.000000e+00
  br i1 %cmp60, label %cond.true.62, label %cond.false.63

cond.true.62:                                     ; preds = %cond.false.55
  br label %cond.end.68

cond.false.63:                                    ; preds = %cond.false.55
  %18 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %paint64 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %18, i32 0, i32 1
  %values65 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint64, i32 0, i32 0
  %arrayidx66 = getelementptr inbounds [64 x float], [64 x float]* %values65, i32 0, i64 0
  %19 = load float, float* %arrayidx66, align 4, !tbaa !17
  %conv67 = fpext float %19 to double
  br label %cond.end.68

cond.end.68:                                      ; preds = %cond.false.63, %cond.true.62
  %cond69 = phi double [ 1.000000e+00, %cond.true.62 ], [ %conv67, %cond.false.63 ]
  br label %cond.end.70

cond.end.70:                                      ; preds = %cond.end.68, %cond.true.54
  %cond71 = phi double [ 0.000000e+00, %cond.true.54 ], [ %cond69, %cond.end.68 ]
  %conv72 = fptrunc double %cond71 to float
  %20 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %paint73 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %20, i32 0, i32 1
  %values74 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint73, i32 0, i32 0
  %arrayidx75 = getelementptr inbounds [64 x float], [64 x float]* %values74, i32 0, i64 0
  store float %conv72, float* %arrayidx75, align 4, !tbaa !17
  ret void
}

; Function Attrs: nounwind uwtable
define void @gx_restrict01_paint_4(%struct.gs_client_color_s* %pcc, %struct.gs_color_space_s* %pcs) #1 {
entry:
  %pcc.addr = alloca %struct.gs_client_color_s*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  store %struct.gs_client_color_s* %pcc, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %paint = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %0, i32 0, i32 1
  %values = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint, i32 0, i32 0
  %arrayidx = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 3
  %1 = load float, float* %arrayidx, align 4, !tbaa !17
  %conv = fpext float %1 to double
  %cmp = fcmp ole double %conv, 0.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end.14

cond.false:                                       ; preds = %entry
  %2 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %paint2 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %2, i32 0, i32 1
  %values3 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint2, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [64 x float], [64 x float]* %values3, i32 0, i64 3
  %3 = load float, float* %arrayidx4, align 4, !tbaa !17
  %conv5 = fpext float %3 to double
  %cmp6 = fcmp oge double %conv5, 1.000000e+00
  br i1 %cmp6, label %cond.true.8, label %cond.false.9

cond.true.8:                                      ; preds = %cond.false
  br label %cond.end

cond.false.9:                                     ; preds = %cond.false
  %4 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %paint10 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %4, i32 0, i32 1
  %values11 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint10, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [64 x float], [64 x float]* %values11, i32 0, i64 3
  %5 = load float, float* %arrayidx12, align 4, !tbaa !17
  %conv13 = fpext float %5 to double
  br label %cond.end

cond.end:                                         ; preds = %cond.false.9, %cond.true.8
  %cond = phi double [ 1.000000e+00, %cond.true.8 ], [ %conv13, %cond.false.9 ]
  br label %cond.end.14

cond.end.14:                                      ; preds = %cond.end, %cond.true
  %cond15 = phi double [ 0.000000e+00, %cond.true ], [ %cond, %cond.end ]
  %conv16 = fptrunc double %cond15 to float
  %6 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %paint17 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %6, i32 0, i32 1
  %values18 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint17, i32 0, i32 0
  %arrayidx19 = getelementptr inbounds [64 x float], [64 x float]* %values18, i32 0, i64 3
  store float %conv16, float* %arrayidx19, align 4, !tbaa !17
  %7 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %8 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  call void @gx_restrict01_paint_3(%struct.gs_client_color_s* %7, %struct.gs_color_space_s* %8) #3
  ret void
}

; Function Attrs: nounwind uwtable
define void @gx_no_adjust_color_count(%struct.gs_client_color_s* %pcc, %struct.gs_color_space_s* %pcs, i32 %delta) #1 {
entry:
  %pcc.addr = alloca %struct.gs_client_color_s*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %delta.addr = alloca i32, align 4
  store %struct.gs_client_color_s* %pcc, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store i32 %delta, i32* %delta.addr, align 4, !tbaa !5
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gs_setgray(%struct.gs_state_s* %pgs, double %gray) #1 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %gray.addr = alloca double, align 8
  %pcs = alloca %struct.gs_color_space_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %pcc = alloca %struct.gs_client_color_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store double %gray, double* %gray.addr, align 8, !tbaa !19
  %0 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %2, i32 0, i32 1
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !21
  %call = call %struct.gs_color_space_s* @gs_cspace_new_DeviceGray(%struct.gs_memory_s* %3) #3
  store %struct.gs_color_space_s* %call, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %4 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_color_space_s* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %6 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %call1 = call i32 @gs_setcolorspace(%struct.gs_state_s* %5, %struct.gs_color_space_s* %6) #3
  store i32 %call1, i32* %code, align 4, !tbaa !5
  %cmp2 = icmp sge i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.end.22

if.then.3:                                        ; preds = %if.end
  %7 = bitcast %struct.gs_client_color_s** %pcc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %8, i32 0, i32 69
  %arrayidx = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %color, i32 0, i64 0
  %ccolor = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx, i32 0, i32 1
  %9 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %ccolor, align 8, !tbaa !35
  store %struct.gs_client_color_s* %9, %struct.gs_client_color_s** %pcc, align 8, !tbaa !1
  %10 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color4 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %10, i32 0, i32 69
  %arrayidx5 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %color4, i32 0, i64 0
  %color_space = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx5, i32 0, i32 0
  %11 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %color_space, align 8, !tbaa !37
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %11, i32 0, i32 0
  %12 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !38
  %adjust_color_count = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %12, i32 0, i32 14
  %13 = load void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)** %adjust_color_count, align 8, !tbaa !40
  %14 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color6 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %14, i32 0, i32 69
  %arrayidx7 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %color6, i32 0, i64 0
  %ccolor8 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx7, i32 0, i32 1
  %15 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %ccolor8, align 8, !tbaa !35
  %16 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color9 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %16, i32 0, i32 69
  %arrayidx10 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %color9, i32 0, i64 0
  %color_space11 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx10, i32 0, i32 0
  %17 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %color_space11, align 8, !tbaa !37
  call void %13(%struct.gs_client_color_s* %15, %struct.gs_color_space_s* %17, i32 -1) #3
  %18 = load double, double* %gray.addr, align 8, !tbaa !19
  %cmp12 = fcmp ole double %18, 0.000000e+00
  br i1 %cmp12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.3
  br label %cond.end.16

cond.false:                                       ; preds = %if.then.3
  %19 = load double, double* %gray.addr, align 8, !tbaa !19
  %cmp13 = fcmp oge double %19, 1.000000e+00
  br i1 %cmp13, label %cond.true.14, label %cond.false.15

cond.true.14:                                     ; preds = %cond.false
  br label %cond.end

cond.false.15:                                    ; preds = %cond.false
  %20 = load double, double* %gray.addr, align 8, !tbaa !19
  br label %cond.end

cond.end:                                         ; preds = %cond.false.15, %cond.true.14
  %cond = phi double [ 1.000000e+00, %cond.true.14 ], [ %20, %cond.false.15 ]
  br label %cond.end.16

cond.end.16:                                      ; preds = %cond.end, %cond.true
  %cond17 = phi double [ 0.000000e+00, %cond.true ], [ %cond, %cond.end ]
  %conv = fptrunc double %cond17 to float
  %21 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc, align 8, !tbaa !1
  %paint = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %21, i32 0, i32 1
  %values = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint, i32 0, i32 0
  %arrayidx18 = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 0
  store float %conv, float* %arrayidx18, align 4, !tbaa !17
  %22 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc, align 8, !tbaa !1
  %pattern = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %22, i32 0, i32 0
  store %struct.gs_pattern_instance_s* null, %struct.gs_pattern_instance_s** %pattern, align 8, !tbaa !42
  %23 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color19 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %23, i32 0, i32 69
  %arrayidx20 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %color19, i32 0, i64 0
  %dev_color = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx20, i32 0, i32 2
  %24 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color, align 8, !tbaa !45
  %type21 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %24, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_none, %struct.gx_device_color_type_s** %type21, align 8, !tbaa !46
  %25 = bitcast %struct.gs_client_color_s** %pcc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #2
  br label %if.end.22

if.end.22:                                        ; preds = %cond.end.16, %if.end
  %26 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  call void @rc_decrement_cs(%struct.gs_color_space_s* %26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0)) #3
  %27 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %27, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.22, %if.then
  %28 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #2
  %29 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #2
  %30 = load i32, i32* %retval
  ret i32 %30
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare %struct.gs_color_space_s* @gs_cspace_new_DeviceGray(%struct.gs_memory_s*) #0

declare i32 @gs_setcolorspace(%struct.gs_state_s*, %struct.gs_color_space_s*) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

declare void @rc_decrement_cs(%struct.gs_color_space_s*, i8*) #0

; Function Attrs: nounwind uwtable
define i32 @gs_setrgbcolor(%struct.gs_state_s* %pgs, double %r, double %g, double %b) #1 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %r.addr = alloca double, align 8
  %g.addr = alloca double, align 8
  %b.addr = alloca double, align 8
  %pcs = alloca %struct.gs_color_space_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %pcc = alloca %struct.gs_client_color_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store double %r, double* %r.addr, align 8, !tbaa !19
  store double %g, double* %g.addr, align 8, !tbaa !19
  store double %b, double* %b.addr, align 8, !tbaa !19
  %0 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %2, i32 0, i32 1
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !21
  %call = call %struct.gs_color_space_s* @gs_cspace_new_DeviceRGB(%struct.gs_memory_s* %3) #3
  store %struct.gs_color_space_s* %call, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %4 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_color_space_s* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %6 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %call1 = call i32 @gs_setcolorspace(%struct.gs_state_s* %5, %struct.gs_color_space_s* %6) #3
  store i32 %call1, i32* %code, align 4, !tbaa !5
  %cmp2 = icmp sge i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.end.54

if.then.3:                                        ; preds = %if.end
  %7 = bitcast %struct.gs_client_color_s** %pcc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %8, i32 0, i32 69
  %arrayidx = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %color, i32 0, i64 0
  %ccolor = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx, i32 0, i32 1
  %9 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %ccolor, align 8, !tbaa !35
  store %struct.gs_client_color_s* %9, %struct.gs_client_color_s** %pcc, align 8, !tbaa !1
  %10 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color4 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %10, i32 0, i32 69
  %arrayidx5 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %color4, i32 0, i64 0
  %color_space = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx5, i32 0, i32 0
  %11 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %color_space, align 8, !tbaa !37
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %11, i32 0, i32 0
  %12 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !38
  %adjust_color_count = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %12, i32 0, i32 14
  %13 = load void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)** %adjust_color_count, align 8, !tbaa !40
  %14 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color6 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %14, i32 0, i32 69
  %arrayidx7 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %color6, i32 0, i64 0
  %ccolor8 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx7, i32 0, i32 1
  %15 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %ccolor8, align 8, !tbaa !35
  %16 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color9 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %16, i32 0, i32 69
  %arrayidx10 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %color9, i32 0, i64 0
  %color_space11 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx10, i32 0, i32 0
  %17 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %color_space11, align 8, !tbaa !37
  call void %13(%struct.gs_client_color_s* %15, %struct.gs_color_space_s* %17, i32 -1) #3
  %18 = load double, double* %r.addr, align 8, !tbaa !19
  %cmp12 = fcmp ole double %18, 0.000000e+00
  br i1 %cmp12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.3
  br label %cond.end.16

cond.false:                                       ; preds = %if.then.3
  %19 = load double, double* %r.addr, align 8, !tbaa !19
  %cmp13 = fcmp oge double %19, 1.000000e+00
  br i1 %cmp13, label %cond.true.14, label %cond.false.15

cond.true.14:                                     ; preds = %cond.false
  br label %cond.end

cond.false.15:                                    ; preds = %cond.false
  %20 = load double, double* %r.addr, align 8, !tbaa !19
  br label %cond.end

cond.end:                                         ; preds = %cond.false.15, %cond.true.14
  %cond = phi double [ 1.000000e+00, %cond.true.14 ], [ %20, %cond.false.15 ]
  br label %cond.end.16

cond.end.16:                                      ; preds = %cond.end, %cond.true
  %cond17 = phi double [ 0.000000e+00, %cond.true ], [ %cond, %cond.end ]
  %conv = fptrunc double %cond17 to float
  %21 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc, align 8, !tbaa !1
  %paint = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %21, i32 0, i32 1
  %values = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint, i32 0, i32 0
  %arrayidx18 = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 0
  store float %conv, float* %arrayidx18, align 4, !tbaa !17
  %22 = load double, double* %g.addr, align 8, !tbaa !19
  %cmp19 = fcmp ole double %22, 0.000000e+00
  br i1 %cmp19, label %cond.true.21, label %cond.false.22

cond.true.21:                                     ; preds = %cond.end.16
  br label %cond.end.29

cond.false.22:                                    ; preds = %cond.end.16
  %23 = load double, double* %g.addr, align 8, !tbaa !19
  %cmp23 = fcmp oge double %23, 1.000000e+00
  br i1 %cmp23, label %cond.true.25, label %cond.false.26

cond.true.25:                                     ; preds = %cond.false.22
  br label %cond.end.27

cond.false.26:                                    ; preds = %cond.false.22
  %24 = load double, double* %g.addr, align 8, !tbaa !19
  br label %cond.end.27

cond.end.27:                                      ; preds = %cond.false.26, %cond.true.25
  %cond28 = phi double [ 1.000000e+00, %cond.true.25 ], [ %24, %cond.false.26 ]
  br label %cond.end.29

cond.end.29:                                      ; preds = %cond.end.27, %cond.true.21
  %cond30 = phi double [ 0.000000e+00, %cond.true.21 ], [ %cond28, %cond.end.27 ]
  %conv31 = fptrunc double %cond30 to float
  %25 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc, align 8, !tbaa !1
  %paint32 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %25, i32 0, i32 1
  %values33 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint32, i32 0, i32 0
  %arrayidx34 = getelementptr inbounds [64 x float], [64 x float]* %values33, i32 0, i64 1
  store float %conv31, float* %arrayidx34, align 4, !tbaa !17
  %26 = load double, double* %b.addr, align 8, !tbaa !19
  %cmp35 = fcmp ole double %26, 0.000000e+00
  br i1 %cmp35, label %cond.true.37, label %cond.false.38

cond.true.37:                                     ; preds = %cond.end.29
  br label %cond.end.45

cond.false.38:                                    ; preds = %cond.end.29
  %27 = load double, double* %b.addr, align 8, !tbaa !19
  %cmp39 = fcmp oge double %27, 1.000000e+00
  br i1 %cmp39, label %cond.true.41, label %cond.false.42

cond.true.41:                                     ; preds = %cond.false.38
  br label %cond.end.43

cond.false.42:                                    ; preds = %cond.false.38
  %28 = load double, double* %b.addr, align 8, !tbaa !19
  br label %cond.end.43

cond.end.43:                                      ; preds = %cond.false.42, %cond.true.41
  %cond44 = phi double [ 1.000000e+00, %cond.true.41 ], [ %28, %cond.false.42 ]
  br label %cond.end.45

cond.end.45:                                      ; preds = %cond.end.43, %cond.true.37
  %cond46 = phi double [ 0.000000e+00, %cond.true.37 ], [ %cond44, %cond.end.43 ]
  %conv47 = fptrunc double %cond46 to float
  %29 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc, align 8, !tbaa !1
  %paint48 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %29, i32 0, i32 1
  %values49 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint48, i32 0, i32 0
  %arrayidx50 = getelementptr inbounds [64 x float], [64 x float]* %values49, i32 0, i64 2
  store float %conv47, float* %arrayidx50, align 4, !tbaa !17
  %30 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc, align 8, !tbaa !1
  %pattern = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %30, i32 0, i32 0
  store %struct.gs_pattern_instance_s* null, %struct.gs_pattern_instance_s** %pattern, align 8, !tbaa !42
  %31 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color51 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %31, i32 0, i32 69
  %arrayidx52 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %color51, i32 0, i64 0
  %dev_color = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx52, i32 0, i32 2
  %32 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color, align 8, !tbaa !45
  %type53 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %32, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_none, %struct.gx_device_color_type_s** %type53, align 8, !tbaa !46
  %33 = bitcast %struct.gs_client_color_s** %pcc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #2
  br label %if.end.54

if.end.54:                                        ; preds = %cond.end.45, %if.end
  %34 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  call void @rc_decrement_cs(%struct.gs_color_space_s* %34, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0)) #3
  %35 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %35, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.54, %if.then
  %36 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #2
  %37 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #2
  %38 = load i32, i32* %retval
  ret i32 %38
}

declare %struct.gs_color_space_s* @gs_cspace_new_DeviceRGB(%struct.gs_memory_s*) #0

; Function Attrs: nounwind uwtable
define i32 @gs_setnullcolor(%struct.gs_state_s* %pgs) #1 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %in_cachedevice = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 74
  %1 = load i32, i32* %in_cachedevice, align 4, !tbaa !51
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -21, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call = call i32 @gs_setgray(%struct.gs_state_s* %2, double 0.000000e+00) #3
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %3, i32 0, i32 69
  %arrayidx = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %color, i32 0, i64 0
  %dev_color = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx, i32 0, i32 2
  %4 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color, align 8, !tbaa !45
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %4, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_null, %struct.gx_device_color_type_s** %type, align 8, !tbaa !46
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define i32 @gs_settransfer(%struct.gs_state_s* %pgs, float (double, %struct.gx_transfer_map_s*)* %tproc) #1 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %tproc.addr = alloca float (double, %struct.gx_transfer_map_s*)*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store float (double, %struct.gx_transfer_map_s*)* %tproc, float (double, %struct.gx_transfer_map_s*)** %tproc.addr, align 8, !tbaa !1
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %1 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %tproc.addr, align 8, !tbaa !1
  %call = call i32 @gs_settransfer_remap(%struct.gs_state_s* %0, float (double, %struct.gx_transfer_map_s*)* %1, i32 1) #3
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gs_settransfer_remap(%struct.gs_state_s* %pgs, float (double, %struct.gx_transfer_map_s*)* %tproc, i32 %remap) #1 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %tproc.addr = alloca float (double, %struct.gx_transfer_map_s*)*, align 8
  %remap.addr = alloca i32, align 4
  %ptran = alloca %struct.gx_transfer_s*, align 8
  %new = alloca %struct.gx_transfer_map_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store float (double, %struct.gx_transfer_map_s*)* %tproc, float (double, %struct.gx_transfer_map_s*)** %tproc.addr, align 8, !tbaa !1
  store i32 %remap, i32* %remap.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_transfer_s** %ptran to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %set_transfer = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i32 0, i32 46
  store %struct.gx_transfer_s* %set_transfer, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %red = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %2, i32 0, i32 1
  %3 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %red, align 8, !tbaa !52
  %tobool = icmp ne %struct.gx_transfer_map_s* %3, null
  br i1 %tobool, label %if.then, label %if.end.26

if.then:                                          ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %if.then
  br label %do.body.2

do.body.2:                                        ; preds = %do.body.1
  br label %do.cond

do.cond:                                          ; preds = %do.body.2
  br label %do.end

do.end:                                           ; preds = %do.cond
  %4 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %red3 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %4, i32 0, i32 1
  %5 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %red3, align 8, !tbaa !52
  %rc = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %5, i32 0, i32 0
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %6 = load i64, i64* %ref_count, align 8, !tbaa !53
  %add = add nsw i64 %6, -1
  store i64 %add, i64* %ref_count, align 8, !tbaa !53
  br label %do.cond.4

do.cond.4:                                        ; preds = %do.end
  br label %do.end.5

do.end.5:                                         ; preds = %do.cond.4
  %7 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %red6 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %7, i32 0, i32 1
  %8 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %red6, align 8, !tbaa !52
  %rc7 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %8, i32 0, i32 0
  %ref_count8 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc7, i32 0, i32 0
  %9 = load i64, i64* %ref_count8, align 8, !tbaa !53
  %tobool9 = icmp ne i64 %9, 0
  br i1 %tobool9, label %if.else, label %if.then.10

if.then.10:                                       ; preds = %do.end.5
  br label %do.body.11

do.body.11:                                       ; preds = %if.then.10
  br label %do.body.12

do.body.12:                                       ; preds = %do.body.11
  br label %do.cond.13

do.cond.13:                                       ; preds = %do.body.12
  br label %do.end.14

do.end.14:                                        ; preds = %do.cond.13
  %10 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %red15 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %10, i32 0, i32 1
  %11 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %red15, align 8, !tbaa !52
  %rc16 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %11, i32 0, i32 0
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc16, i32 0, i32 2
  %12 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !54
  %13 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %red17 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %13, i32 0, i32 1
  %14 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %red17, align 8, !tbaa !52
  %rc18 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %14, i32 0, i32 0
  %memory = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc18, i32 0, i32 1
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !55
  %16 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %red19 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %16, i32 0, i32 1
  %17 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %red19, align 8, !tbaa !52
  %18 = bitcast %struct.gx_transfer_map_s* %17 to i8*
  call void %12(%struct.gs_memory_s* %15, i8* %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0)) #3
  br label %do.cond.20

do.cond.20:                                       ; preds = %do.end.14
  br label %do.end.21

do.end.21:                                        ; preds = %do.cond.20
  %19 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %red22 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %19, i32 0, i32 1
  store %struct.gx_transfer_map_s* null, %struct.gx_transfer_map_s** %red22, align 8, !tbaa !52
  br label %if.end

if.else:                                          ; preds = %do.end.5
  br label %do.body.23

do.body.23:                                       ; preds = %if.else
  br label %do.cond.24

do.cond.24:                                       ; preds = %do.body.23
  br label %do.end.25

do.end.25:                                        ; preds = %do.cond.24
  br label %if.end

if.end:                                           ; preds = %do.end.25, %do.end.21
  br label %if.end.26

if.end.26:                                        ; preds = %if.end, %do.body
  br label %do.cond.27

do.cond.27:                                       ; preds = %if.end.26
  br label %do.end.28

do.end.28:                                        ; preds = %do.cond.27
  br label %do.body.29

do.body.29:                                       ; preds = %do.end.28
  %20 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %green = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %20, i32 0, i32 3
  %21 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %green, align 8, !tbaa !56
  %tobool30 = icmp ne %struct.gx_transfer_map_s* %21, null
  br i1 %tobool30, label %if.then.31, label %if.end.66

if.then.31:                                       ; preds = %do.body.29
  br label %do.body.32

do.body.32:                                       ; preds = %if.then.31
  br label %do.body.33

do.body.33:                                       ; preds = %do.body.32
  br label %do.cond.34

do.cond.34:                                       ; preds = %do.body.33
  br label %do.end.35

do.end.35:                                        ; preds = %do.cond.34
  %22 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %green36 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %22, i32 0, i32 3
  %23 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %green36, align 8, !tbaa !56
  %rc37 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %23, i32 0, i32 0
  %ref_count38 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc37, i32 0, i32 0
  %24 = load i64, i64* %ref_count38, align 8, !tbaa !53
  %add39 = add nsw i64 %24, -1
  store i64 %add39, i64* %ref_count38, align 8, !tbaa !53
  br label %do.cond.40

do.cond.40:                                       ; preds = %do.end.35
  br label %do.end.41

do.end.41:                                        ; preds = %do.cond.40
  %25 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %green42 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %25, i32 0, i32 3
  %26 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %green42, align 8, !tbaa !56
  %rc43 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %26, i32 0, i32 0
  %ref_count44 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc43, i32 0, i32 0
  %27 = load i64, i64* %ref_count44, align 8, !tbaa !53
  %tobool45 = icmp ne i64 %27, 0
  br i1 %tobool45, label %if.else.61, label %if.then.46

if.then.46:                                       ; preds = %do.end.41
  br label %do.body.47

do.body.47:                                       ; preds = %if.then.46
  br label %do.body.48

do.body.48:                                       ; preds = %do.body.47
  br label %do.cond.49

do.cond.49:                                       ; preds = %do.body.48
  br label %do.end.50

do.end.50:                                        ; preds = %do.cond.49
  %28 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %green51 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %28, i32 0, i32 3
  %29 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %green51, align 8, !tbaa !56
  %rc52 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %29, i32 0, i32 0
  %free53 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc52, i32 0, i32 2
  %30 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free53, align 8, !tbaa !54
  %31 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %green54 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %31, i32 0, i32 3
  %32 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %green54, align 8, !tbaa !56
  %rc55 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %32, i32 0, i32 0
  %memory56 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc55, i32 0, i32 1
  %33 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory56, align 8, !tbaa !55
  %34 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %green57 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %34, i32 0, i32 3
  %35 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %green57, align 8, !tbaa !56
  %36 = bitcast %struct.gx_transfer_map_s* %35 to i8*
  call void %30(%struct.gs_memory_s* %33, i8* %36, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0)) #3
  br label %do.cond.58

do.cond.58:                                       ; preds = %do.end.50
  br label %do.end.59

do.end.59:                                        ; preds = %do.cond.58
  %37 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %green60 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %37, i32 0, i32 3
  store %struct.gx_transfer_map_s* null, %struct.gx_transfer_map_s** %green60, align 8, !tbaa !56
  br label %if.end.65

if.else.61:                                       ; preds = %do.end.41
  br label %do.body.62

do.body.62:                                       ; preds = %if.else.61
  br label %do.cond.63

do.cond.63:                                       ; preds = %do.body.62
  br label %do.end.64

do.end.64:                                        ; preds = %do.cond.63
  br label %if.end.65

if.end.65:                                        ; preds = %do.end.64, %do.end.59
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %do.body.29
  br label %do.cond.67

do.cond.67:                                       ; preds = %if.end.66
  br label %do.end.68

do.end.68:                                        ; preds = %do.cond.67
  br label %do.body.69

do.body.69:                                       ; preds = %do.end.68
  %38 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %blue = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %38, i32 0, i32 5
  %39 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %blue, align 8, !tbaa !57
  %tobool70 = icmp ne %struct.gx_transfer_map_s* %39, null
  br i1 %tobool70, label %if.then.71, label %if.end.106

if.then.71:                                       ; preds = %do.body.69
  br label %do.body.72

do.body.72:                                       ; preds = %if.then.71
  br label %do.body.73

do.body.73:                                       ; preds = %do.body.72
  br label %do.cond.74

do.cond.74:                                       ; preds = %do.body.73
  br label %do.end.75

do.end.75:                                        ; preds = %do.cond.74
  %40 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %blue76 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %40, i32 0, i32 5
  %41 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %blue76, align 8, !tbaa !57
  %rc77 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %41, i32 0, i32 0
  %ref_count78 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc77, i32 0, i32 0
  %42 = load i64, i64* %ref_count78, align 8, !tbaa !53
  %add79 = add nsw i64 %42, -1
  store i64 %add79, i64* %ref_count78, align 8, !tbaa !53
  br label %do.cond.80

do.cond.80:                                       ; preds = %do.end.75
  br label %do.end.81

do.end.81:                                        ; preds = %do.cond.80
  %43 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %blue82 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %43, i32 0, i32 5
  %44 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %blue82, align 8, !tbaa !57
  %rc83 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %44, i32 0, i32 0
  %ref_count84 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc83, i32 0, i32 0
  %45 = load i64, i64* %ref_count84, align 8, !tbaa !53
  %tobool85 = icmp ne i64 %45, 0
  br i1 %tobool85, label %if.else.101, label %if.then.86

if.then.86:                                       ; preds = %do.end.81
  br label %do.body.87

do.body.87:                                       ; preds = %if.then.86
  br label %do.body.88

do.body.88:                                       ; preds = %do.body.87
  br label %do.cond.89

do.cond.89:                                       ; preds = %do.body.88
  br label %do.end.90

do.end.90:                                        ; preds = %do.cond.89
  %46 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %blue91 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %46, i32 0, i32 5
  %47 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %blue91, align 8, !tbaa !57
  %rc92 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %47, i32 0, i32 0
  %free93 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc92, i32 0, i32 2
  %48 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free93, align 8, !tbaa !54
  %49 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %blue94 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %49, i32 0, i32 5
  %50 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %blue94, align 8, !tbaa !57
  %rc95 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %50, i32 0, i32 0
  %memory96 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc95, i32 0, i32 1
  %51 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory96, align 8, !tbaa !55
  %52 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %blue97 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %52, i32 0, i32 5
  %53 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %blue97, align 8, !tbaa !57
  %54 = bitcast %struct.gx_transfer_map_s* %53 to i8*
  call void %48(%struct.gs_memory_s* %51, i8* %54, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0)) #3
  br label %do.cond.98

do.cond.98:                                       ; preds = %do.end.90
  br label %do.end.99

do.end.99:                                        ; preds = %do.cond.98
  %55 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %blue100 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %55, i32 0, i32 5
  store %struct.gx_transfer_map_s* null, %struct.gx_transfer_map_s** %blue100, align 8, !tbaa !57
  br label %if.end.105

if.else.101:                                      ; preds = %do.end.81
  br label %do.body.102

do.body.102:                                      ; preds = %if.else.101
  br label %do.cond.103

do.cond.103:                                      ; preds = %do.body.102
  br label %do.end.104

do.end.104:                                       ; preds = %do.cond.103
  br label %if.end.105

if.end.105:                                       ; preds = %do.end.104, %do.end.99
  br label %if.end.106

if.end.106:                                       ; preds = %if.end.105, %do.body.69
  br label %do.cond.107

do.cond.107:                                      ; preds = %if.end.106
  br label %do.end.108

do.end.108:                                       ; preds = %do.cond.107
  br label %do.body.109

do.body.109:                                      ; preds = %do.end.108
  %56 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %gray = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %56, i32 0, i32 7
  %57 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %gray, align 8, !tbaa !58
  %cmp = icmp eq %struct.gx_transfer_map_s* %57, null
  br i1 %cmp, label %if.then.120, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.109
  %58 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %gray110 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %58, i32 0, i32 7
  %59 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %gray110, align 8, !tbaa !58
  %rc111 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %59, i32 0, i32 0
  %ref_count112 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc111, i32 0, i32 0
  %60 = load i64, i64* %ref_count112, align 8, !tbaa !53
  %cmp113 = icmp sgt i64 %60, 1
  br i1 %cmp113, label %if.then.120, label %lor.lhs.false.114

lor.lhs.false.114:                                ; preds = %lor.lhs.false
  %61 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %gray115 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %61, i32 0, i32 7
  %62 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %gray115, align 8, !tbaa !58
  %rc116 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %62, i32 0, i32 0
  %memory117 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc116, i32 0, i32 1
  %63 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory117, align 8, !tbaa !55
  %64 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory118 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %64, i32 0, i32 1
  %65 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory118, align 8, !tbaa !21
  %cmp119 = icmp ne %struct.gs_memory_s* %63, %65
  br i1 %cmp119, label %if.then.120, label %if.end.158

if.then.120:                                      ; preds = %lor.lhs.false.114, %lor.lhs.false, %do.body.109
  %66 = bitcast %struct.gx_transfer_map_s** %new to i8*
  call void @llvm.lifetime.start(i64 8, i8* %66) #2
  br label %do.body.121

do.body.121:                                      ; preds = %if.then.120
  %67 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory122 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %67, i32 0, i32 1
  %68 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory122, align 8, !tbaa !21
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %68, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %69 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !59
  %70 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory123 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %70, i32 0, i32 1
  %71 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory123, align 8, !tbaa !21
  %call = call i8* %69(%struct.gs_memory_s* %71, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_transfer_map to %struct.gs_memory_struct_type_s*), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0)) #3
  %72 = bitcast i8* %call to %struct.gx_transfer_map_s*
  store %struct.gx_transfer_map_s* %72, %struct.gx_transfer_map_s** %new, align 8, !tbaa !1
  %cmp124 = icmp eq %struct.gx_transfer_map_s* %72, null
  br i1 %cmp124, label %if.then.125, label %if.else.126

if.then.125:                                      ; preds = %do.body.121
  store i32 42, i32* %cleanup.dest.slot
  br label %cleanup

if.else.126:                                      ; preds = %do.body.121
  br label %do.body.127

do.body.127:                                      ; preds = %if.else.126
  %73 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %new, align 8, !tbaa !1
  %rc128 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %73, i32 0, i32 0
  %ref_count129 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc128, i32 0, i32 0
  store i64 1, i64* %ref_count129, align 8, !tbaa !53
  %74 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory130 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %74, i32 0, i32 1
  %75 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory130, align 8, !tbaa !21
  %76 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %new, align 8, !tbaa !1
  %rc131 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %76, i32 0, i32 0
  %memory132 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc131, i32 0, i32 1
  store %struct.gs_memory_s* %75, %struct.gs_memory_s** %memory132, align 8, !tbaa !55
  %77 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %new, align 8, !tbaa !1
  %rc133 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %77, i32 0, i32 0
  %free134 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc133, i32 0, i32 2
  store void (%struct.gs_memory_s*, i8*, i8*)* @rc_free_struct_only, void (%struct.gs_memory_s*, i8*, i8*)** %free134, align 8, !tbaa !54
  br label %do.body.135

do.body.135:                                      ; preds = %do.body.127
  br label %do.cond.136

do.cond.136:                                      ; preds = %do.body.135
  br label %do.end.137

do.end.137:                                       ; preds = %do.cond.136
  br label %do.cond.138

do.cond.138:                                      ; preds = %do.end.137
  br label %do.end.139

do.end.139:                                       ; preds = %do.cond.138
  br label %if.end.140

if.end.140:                                       ; preds = %do.end.139
  br label %do.cond.141

do.cond.141:                                      ; preds = %if.end.140
  br label %do.end.142

do.end.142:                                       ; preds = %do.cond.141
  %78 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %gray143 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %78, i32 0, i32 7
  %79 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %gray143, align 8, !tbaa !58
  %tobool144 = icmp ne %struct.gx_transfer_map_s* %79, null
  br i1 %tobool144, label %if.then.145, label %if.end.156

if.then.145:                                      ; preds = %do.end.142
  br label %do.body.146

do.body.146:                                      ; preds = %if.then.145
  br label %do.body.147

do.body.147:                                      ; preds = %do.body.146
  br label %do.cond.148

do.cond.148:                                      ; preds = %do.body.147
  br label %do.end.149

do.end.149:                                       ; preds = %do.cond.148
  %80 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %gray150 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %80, i32 0, i32 7
  %81 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %gray150, align 8, !tbaa !58
  %rc151 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %81, i32 0, i32 0
  %ref_count152 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc151, i32 0, i32 0
  %82 = load i64, i64* %ref_count152, align 8, !tbaa !53
  %add153 = add nsw i64 %82, -1
  store i64 %add153, i64* %ref_count152, align 8, !tbaa !53
  br label %do.cond.154

do.cond.154:                                      ; preds = %do.end.149
  br label %do.end.155

do.end.155:                                       ; preds = %do.cond.154
  br label %if.end.156

if.end.156:                                       ; preds = %do.end.155, %do.end.142
  %83 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %new, align 8, !tbaa !1
  %84 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %gray157 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %84, i32 0, i32 7
  store %struct.gx_transfer_map_s* %83, %struct.gx_transfer_map_s** %gray157, align 8, !tbaa !58
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.125, %if.end.156
  %85 = bitcast %struct.gx_transfer_map_s** %new to i8*
  call void @llvm.lifetime.end(i64 8, i8* %85) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.240 [
    i32 0, label %cleanup.cont
    i32 42, label %fail
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.158

if.end.158:                                       ; preds = %cleanup.cont, %lor.lhs.false.114
  br label %do.cond.159

do.cond.159:                                      ; preds = %if.end.158
  br label %do.end.160

do.end.160:                                       ; preds = %do.cond.159
  %86 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %tproc.addr, align 8, !tbaa !1
  %87 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %gray161 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %87, i32 0, i32 7
  %88 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %gray161, align 8, !tbaa !58
  %proc = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %88, i32 0, i32 1
  store float (double, %struct.gx_transfer_map_s*)* %86, float (double, %struct.gx_transfer_map_s*)** %proc, align 8, !tbaa !7
  %89 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory162 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %89, i32 0, i32 1
  %90 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory162, align 8, !tbaa !21
  %call163 = call i64 @gs_next_ids(%struct.gs_memory_s* %90, i32 1) #3
  %91 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %gray164 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %91, i32 0, i32 7
  %92 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %gray164, align 8, !tbaa !58
  %id = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %92, i32 0, i32 3
  store i64 %call163, i64* %id, align 8, !tbaa !62
  %93 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %red165 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %93, i32 0, i32 1
  store %struct.gx_transfer_map_s* null, %struct.gx_transfer_map_s** %red165, align 8, !tbaa !52
  %94 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %green166 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %94, i32 0, i32 3
  store %struct.gx_transfer_map_s* null, %struct.gx_transfer_map_s** %green166, align 8, !tbaa !56
  %95 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %blue167 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %95, i32 0, i32 5
  store %struct.gx_transfer_map_s* null, %struct.gx_transfer_map_s** %blue167, align 8, !tbaa !57
  %96 = load i32, i32* %remap.addr, align 4, !tbaa !5
  %tobool168 = icmp ne i32 %96, 0
  br i1 %tobool168, label %if.then.169, label %if.else.171

if.then.169:                                      ; preds = %do.end.160
  %97 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %98 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %gray170 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %98, i32 0, i32 7
  %99 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %gray170, align 8, !tbaa !58
  call void @load_transfer_map(%struct.gs_state_s* %97, %struct.gx_transfer_map_s* %99, double 0.000000e+00) #3
  %100 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  call void @gx_set_effective_transfer(%struct.gs_state_s* %100) #3
  %101 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %101, i32 0, i32 69
  %arrayidx = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %color, i32 0, i64 0
  %dev_color = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx, i32 0, i32 2
  %102 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color, align 8, !tbaa !45
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %102, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_none, %struct.gx_device_color_type_s** %type, align 8, !tbaa !46
  br label %if.end.172

if.else.171:                                      ; preds = %do.end.160
  %103 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  call void @gx_set_effective_transfer(%struct.gs_state_s* %103) #3
  br label %if.end.172

if.end.172:                                       ; preds = %if.else.171, %if.then.169
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.240

fail:                                             ; preds = %cleanup
  br label %do.body.173

do.body.173:                                      ; preds = %fail
  %104 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %red174 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %104, i32 0, i32 1
  %105 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %red174, align 8, !tbaa !52
  %tobool175 = icmp ne %struct.gx_transfer_map_s* %105, null
  br i1 %tobool175, label %if.then.176, label %if.end.186

if.then.176:                                      ; preds = %do.body.173
  br label %do.body.177

do.body.177:                                      ; preds = %if.then.176
  %106 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %red178 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %106, i32 0, i32 1
  %107 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %red178, align 8, !tbaa !52
  %rc179 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %107, i32 0, i32 0
  %ref_count180 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc179, i32 0, i32 0
  %108 = load i64, i64* %ref_count180, align 8, !tbaa !53
  %inc = add nsw i64 %108, 1
  store i64 %inc, i64* %ref_count180, align 8, !tbaa !53
  br label %do.body.181

do.body.181:                                      ; preds = %do.body.177
  br label %do.cond.182

do.cond.182:                                      ; preds = %do.body.181
  br label %do.end.183

do.end.183:                                       ; preds = %do.cond.182
  br label %do.cond.184

do.cond.184:                                      ; preds = %do.end.183
  br label %do.end.185

do.end.185:                                       ; preds = %do.cond.184
  br label %if.end.186

if.end.186:                                       ; preds = %do.end.185, %do.body.173
  br label %do.cond.187

do.cond.187:                                      ; preds = %if.end.186
  br label %do.end.188

do.end.188:                                       ; preds = %do.cond.187
  br label %do.body.189

do.body.189:                                      ; preds = %do.end.188
  %109 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %green190 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %109, i32 0, i32 3
  %110 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %green190, align 8, !tbaa !56
  %tobool191 = icmp ne %struct.gx_transfer_map_s* %110, null
  br i1 %tobool191, label %if.then.192, label %if.end.203

if.then.192:                                      ; preds = %do.body.189
  br label %do.body.193

do.body.193:                                      ; preds = %if.then.192
  %111 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %green194 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %111, i32 0, i32 3
  %112 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %green194, align 8, !tbaa !56
  %rc195 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %112, i32 0, i32 0
  %ref_count196 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc195, i32 0, i32 0
  %113 = load i64, i64* %ref_count196, align 8, !tbaa !53
  %inc197 = add nsw i64 %113, 1
  store i64 %inc197, i64* %ref_count196, align 8, !tbaa !53
  br label %do.body.198

do.body.198:                                      ; preds = %do.body.193
  br label %do.cond.199

do.cond.199:                                      ; preds = %do.body.198
  br label %do.end.200

do.end.200:                                       ; preds = %do.cond.199
  br label %do.cond.201

do.cond.201:                                      ; preds = %do.end.200
  br label %do.end.202

do.end.202:                                       ; preds = %do.cond.201
  br label %if.end.203

if.end.203:                                       ; preds = %do.end.202, %do.body.189
  br label %do.cond.204

do.cond.204:                                      ; preds = %if.end.203
  br label %do.end.205

do.end.205:                                       ; preds = %do.cond.204
  br label %do.body.206

do.body.206:                                      ; preds = %do.end.205
  %114 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %blue207 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %114, i32 0, i32 5
  %115 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %blue207, align 8, !tbaa !57
  %tobool208 = icmp ne %struct.gx_transfer_map_s* %115, null
  br i1 %tobool208, label %if.then.209, label %if.end.220

if.then.209:                                      ; preds = %do.body.206
  br label %do.body.210

do.body.210:                                      ; preds = %if.then.209
  %116 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %blue211 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %116, i32 0, i32 5
  %117 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %blue211, align 8, !tbaa !57
  %rc212 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %117, i32 0, i32 0
  %ref_count213 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc212, i32 0, i32 0
  %118 = load i64, i64* %ref_count213, align 8, !tbaa !53
  %inc214 = add nsw i64 %118, 1
  store i64 %inc214, i64* %ref_count213, align 8, !tbaa !53
  br label %do.body.215

do.body.215:                                      ; preds = %do.body.210
  br label %do.cond.216

do.cond.216:                                      ; preds = %do.body.215
  br label %do.end.217

do.end.217:                                       ; preds = %do.cond.216
  br label %do.cond.218

do.cond.218:                                      ; preds = %do.end.217
  br label %do.end.219

do.end.219:                                       ; preds = %do.cond.218
  br label %if.end.220

if.end.220:                                       ; preds = %do.end.219, %do.body.206
  br label %do.cond.221

do.cond.221:                                      ; preds = %if.end.220
  br label %do.end.222

do.end.222:                                       ; preds = %do.cond.221
  br label %do.body.223

do.body.223:                                      ; preds = %do.end.222
  %119 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %gray224 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %119, i32 0, i32 7
  %120 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %gray224, align 8, !tbaa !58
  %tobool225 = icmp ne %struct.gx_transfer_map_s* %120, null
  br i1 %tobool225, label %if.then.226, label %if.end.237

if.then.226:                                      ; preds = %do.body.223
  br label %do.body.227

do.body.227:                                      ; preds = %if.then.226
  %121 = load %struct.gx_transfer_s*, %struct.gx_transfer_s** %ptran, align 8, !tbaa !1
  %gray228 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %121, i32 0, i32 7
  %122 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %gray228, align 8, !tbaa !58
  %rc229 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %122, i32 0, i32 0
  %ref_count230 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc229, i32 0, i32 0
  %123 = load i64, i64* %ref_count230, align 8, !tbaa !53
  %inc231 = add nsw i64 %123, 1
  store i64 %inc231, i64* %ref_count230, align 8, !tbaa !53
  br label %do.body.232

do.body.232:                                      ; preds = %do.body.227
  br label %do.cond.233

do.cond.233:                                      ; preds = %do.body.232
  br label %do.end.234

do.end.234:                                       ; preds = %do.cond.233
  br label %do.cond.235

do.cond.235:                                      ; preds = %do.end.234
  br label %do.end.236

do.end.236:                                       ; preds = %do.cond.235
  br label %if.end.237

if.end.237:                                       ; preds = %do.end.236, %do.body.223
  br label %do.cond.238

do.cond.238:                                      ; preds = %if.end.237
  br label %do.end.239

do.end.239:                                       ; preds = %do.cond.238
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.240

cleanup.240:                                      ; preds = %do.end.239, %if.end.172, %cleanup
  %124 = bitcast %struct.gx_transfer_s** %ptran to i8*
  call void @llvm.lifetime.end(i64 8, i8* %124) #2
  %125 = load i32, i32* %retval
  ret i32 %125
}

declare void @rc_free_struct_only(%struct.gs_memory_s*, i8*, i8*) #0

declare i64 @gs_next_ids(%struct.gs_memory_s*, i32) #0

; Function Attrs: nounwind uwtable
define void @load_transfer_map(%struct.gs_state_s* %pgs, %struct.gx_transfer_map_s* %pmap, double %min_value) #1 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pmap.addr = alloca %struct.gx_transfer_map_s*, align 8
  %min_value.addr = alloca double, align 8
  %proc = alloca float (double, %struct.gx_transfer_map_s*, i8*)*, align 8
  %proc_data = alloca i8*, align 8
  %values = alloca i16*, align 8
  %fmin = alloca i16, align 2
  %i = alloca i32, align 4
  %fval = alloca float, align 4
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gx_transfer_map_s* %pmap, %struct.gx_transfer_map_s** %pmap.addr, align 8, !tbaa !1
  store double %min_value, double* %min_value.addr, align 8, !tbaa !19
  %0 = bitcast float (double, %struct.gx_transfer_map_s*, i8*)** %proc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i8** %proc_data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast i16** %values to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %pmap.addr, align 8, !tbaa !1
  %values1 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %3, i32 0, i32 4
  %arraydecay = getelementptr inbounds [256 x i16], [256 x i16]* %values1, i32 0, i32 0
  store i16* %arraydecay, i16** %values, align 8, !tbaa !1
  %4 = bitcast i16* %fmin to i8*
  call void @llvm.lifetime.start(i64 2, i8* %4) #2
  %5 = load double, double* %min_value.addr, align 8, !tbaa !19
  %add = fadd double %5, 0x3EF0010010010010
  %mul = fmul double %add, 3.276000e+04
  %conv = fptosi double %mul to i16
  store i16 %conv, i16* %fmin, align 2, !tbaa !63
  %6 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %pmap.addr, align 8, !tbaa !1
  %proc2 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %7, i32 0, i32 1
  %8 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %proc2, align 8, !tbaa !7
  %cmp = icmp eq float (double, %struct.gx_transfer_map_s*)* %8, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %9 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %pmap.addr, align 8, !tbaa !1
  %closure = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %9, i32 0, i32 2
  %proc4 = getelementptr inbounds %struct.gs_mapping_closure_s, %struct.gs_mapping_closure_s* %closure, i32 0, i32 0
  %10 = load float (double, %struct.gx_transfer_map_s*, i8*)*, float (double, %struct.gx_transfer_map_s*, i8*)** %proc4, align 8, !tbaa !64
  store float (double, %struct.gx_transfer_map_s*, i8*)* %10, float (double, %struct.gx_transfer_map_s*, i8*)** %proc, align 8, !tbaa !1
  %11 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %pmap.addr, align 8, !tbaa !1
  %closure5 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %11, i32 0, i32 2
  %data = getelementptr inbounds %struct.gs_mapping_closure_s, %struct.gs_mapping_closure_s* %closure5, i32 0, i32 1
  %12 = load i8*, i8** %data, align 8, !tbaa !12
  store i8* %12, i8** %proc_data, align 8, !tbaa !1
  br label %if.end

if.else:                                          ; preds = %entry
  store float (double, %struct.gx_transfer_map_s*, i8*)* @transfer_use_proc, float (double, %struct.gx_transfer_map_s*, i8*)** %proc, align 8, !tbaa !1
  store i8* null, i8** %proc_data, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %13 = load i32, i32* %i, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %13, 256
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = bitcast float* %fval to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  %15 = load float (double, %struct.gx_transfer_map_s*, i8*)*, float (double, %struct.gx_transfer_map_s*, i8*)** %proc, align 8, !tbaa !1
  %16 = load i32, i32* %i, align 4, !tbaa !5
  %conv8 = sitofp i32 %16 to float
  %div = fdiv float %conv8, 2.550000e+02
  %conv9 = fpext float %div to double
  %17 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %pmap.addr, align 8, !tbaa !1
  %18 = load i8*, i8** %proc_data, align 8, !tbaa !1
  %call = call float %15(double %conv9, %struct.gx_transfer_map_s* %17, i8* %18) #3
  store float %call, float* %fval, align 4, !tbaa !17
  %19 = load float, float* %fval, align 4, !tbaa !17
  %conv10 = fpext float %19 to double
  %20 = load double, double* %min_value.addr, align 8, !tbaa !19
  %cmp11 = fcmp olt double %conv10, %20
  br i1 %cmp11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %21 = load i16, i16* %fmin, align 2, !tbaa !63
  %conv13 = sext i16 %21 to i32
  br label %cond.end.24

cond.false:                                       ; preds = %for.body
  %22 = load float, float* %fval, align 4, !tbaa !17
  %conv14 = fpext float %22 to double
  %cmp15 = fcmp oge double %conv14, 1.000000e+00
  br i1 %cmp15, label %cond.true.17, label %cond.false.18

cond.true.17:                                     ; preds = %cond.false
  br label %cond.end

cond.false.18:                                    ; preds = %cond.false
  %23 = load float, float* %fval, align 4, !tbaa !17
  %conv19 = fpext float %23 to double
  %add20 = fadd double %conv19, 0x3EF0010010010010
  %mul21 = fmul double %add20, 3.276000e+04
  %conv22 = fptosi double %mul21 to i16
  %conv23 = sext i16 %conv22 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false.18, %cond.true.17
  %cond = phi i32 [ 32760, %cond.true.17 ], [ %conv23, %cond.false.18 ]
  br label %cond.end.24

cond.end.24:                                      ; preds = %cond.end, %cond.true
  %cond25 = phi i32 [ %conv13, %cond.true ], [ %cond, %cond.end ]
  %conv26 = trunc i32 %cond25 to i16
  %24 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %24 to i64
  %25 = load i16*, i16** %values, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %25, i64 %idxprom
  store i16 %conv26, i16* %arrayidx, align 2, !tbaa !63
  %26 = bitcast float* %fval to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #2
  br label %for.inc

for.inc:                                          ; preds = %cond.end.24
  %27 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %28 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #2
  %29 = bitcast i16* %fmin to i8*
  call void @llvm.lifetime.end(i64 2, i8* %29) #2
  %30 = bitcast i16** %values to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #2
  %31 = bitcast i8** %proc_data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #2
  %32 = bitcast float (double, %struct.gx_transfer_map_s*, i8*)** %proc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #2
  ret void
}

declare void @gx_set_effective_transfer(%struct.gs_state_s*) #0

; Function Attrs: nounwind uwtable
define float (double, %struct.gx_transfer_map_s*)* @gs_currenttransfer(%struct.gs_state_s* %pgs) #1 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %set_transfer = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 46
  %gray = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer, i32 0, i32 7
  %1 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %gray, align 8, !tbaa !65
  %proc = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %1, i32 0, i32 1
  %2 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %proc, align 8, !tbaa !7
  ret float (double, %struct.gx_transfer_map_s*)* %2
}

; Function Attrs: nounwind uwtable
define i32 @gx_set_device_color_1(%struct.gs_state_s* %pgs) #1 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pcs = alloca %struct.gs_color_space_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  call void @gs_setoverprint(%struct.gs_state_s* %1, i32 0) #3
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call = call i32 @gs_setoverprintmode(%struct.gs_state_s* %2, i32 0) #3
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %3, i32 0, i32 1
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !21
  %call1 = call %struct.gs_color_space_s* @gs_cspace_new_DeviceGray(%struct.gs_memory_s* %4) #3
  store %struct.gs_color_space_s* %call1, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %5 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %tobool = icmp ne %struct.gs_color_space_s* %5, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %7 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %call2 = call i32 @gs_setcolorspace(%struct.gs_state_s* %6, %struct.gs_color_space_s* %7) #3
  %8 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  call void @rc_decrement_only_cs(%struct.gs_color_space_s* %8, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0)) #3
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %9, i32 0, i32 69
  %arrayidx = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %color, i32 0, i64 0
  %dev_color = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx, i32 0, i32 2
  %10 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color, align 8, !tbaa !45
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %10, i32 0, i32 1
  %pure = bitcast %union._c* %colors to i64*
  store i64 1, i64* %pure, align 8, !tbaa !66
  %11 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color3 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %11, i32 0, i32 69
  %arrayidx4 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %color3, i32 0, i64 0
  %dev_color5 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx4, i32 0, i32 2
  %12 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color5, align 8, !tbaa !45
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %12, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_pure, %struct.gx_device_color_type_s** %type, align 8, !tbaa !46
  %13 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color6 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %13, i32 0, i32 69
  %arrayidx7 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %color6, i32 0, i64 0
  %dev_color8 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx7, i32 0, i32 2
  %14 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color8, align 8, !tbaa !45
  %ccolor_valid = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %14, i32 0, i32 3
  store i32 0, i32* %ccolor_valid, align 4, !tbaa !67
  %15 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %log_op = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %15, i32 0, i32 10
  store i32 252, i32* %log_op, align 4, !tbaa !68
  %16 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %effective_overprint_mode = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %16, i32 0, i32 23
  %17 = load i32, i32* %effective_overprint_mode, align 4, !tbaa !69
  %cmp = icmp eq i32 %17, 1
  br i1 %cmp, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.end
  %18 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call10 = call i32 @gs_do_set_overprint(%struct.gs_state_s* %18) #3
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.11, %if.else
  %19 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #2
  %20 = load i32, i32* %retval
  ret i32 %20
}

declare void @gs_setoverprint(%struct.gs_state_s*, i32) #0

declare i32 @gs_setoverprintmode(%struct.gs_state_s*, i32) #0

declare void @rc_decrement_only_cs(%struct.gs_color_space_s*, i8*) #0

declare i32 @gs_do_set_overprint(%struct.gs_state_s*) #0

; Function Attrs: nounwind uwtable
define internal float @transfer_use_proc(double %value, %struct.gx_transfer_map_s* %pmap, i8* %ignore_proc_data) #1 {
entry:
  %value.addr = alloca double, align 8
  %pmap.addr = alloca %struct.gx_transfer_map_s*, align 8
  %ignore_proc_data.addr = alloca i8*, align 8
  store double %value, double* %value.addr, align 8, !tbaa !19
  store %struct.gx_transfer_map_s* %pmap, %struct.gx_transfer_map_s** %pmap.addr, align 8, !tbaa !1
  store i8* %ignore_proc_data, i8** %ignore_proc_data.addr, align 8, !tbaa !1
  %0 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %pmap.addr, align 8, !tbaa !1
  %proc = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %0, i32 0, i32 1
  %1 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %proc, align 8, !tbaa !7
  %2 = load double, double* %value.addr, align 8, !tbaa !19
  %3 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %pmap.addr, align 8, !tbaa !1
  %call = call float %1(double %2, %struct.gx_transfer_map_s* %3) #3
  ret float %call
}

attributes #0 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !2, i64 24}
!8 = !{!"gx_transfer_map_s", !9, i64 0, !2, i64 24, !11, i64 32, !10, i64 48, !3, i64 56}
!9 = !{!"rc_header_s", !10, i64 0, !2, i64 8, !2, i64 16}
!10 = !{!"long", !3, i64 0}
!11 = !{!"gs_mapping_closure_s", !2, i64 0, !2, i64 8}
!12 = !{!8, !2, i64 40}
!13 = !{!14, !2, i64 0}
!14 = !{!"enum_ptr_s", !2, i64 0, !6, i64 8}
!15 = !{!16, !2, i64 0}
!16 = !{!"gc_procs_common_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!17 = !{!18, !18, i64 0}
!18 = !{!"float", !3, i64 0}
!19 = !{!20, !20, i64 0}
!20 = !{!"double", !3, i64 0}
!21 = !{!22, !2, i64 8}
!22 = !{!"gs_state_s", !6, i64 0, !2, i64 8, !2, i64 16, !23, i64 24, !6, i64 128, !26, i64 132, !6, i64 168, !27, i64 176, !27, i64 192, !6, i64 208, !6, i64 212, !28, i64 216, !3, i64 220, !29, i64 224, !29, i64 228, !30, i64 232, !10, i64 240, !6, i64 248, !6, i64 252, !6, i64 256, !2, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !18, i64 296, !31, i64 300, !6, i64 308, !6, i64 312, !6, i64 316, !18, i64 320, !6, i64 324, !6, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !6, i64 408, !2, i64 416, !2, i64 424, !32, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !33, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !33, i64 1336, !2, i64 1616, !24, i64 1624, !6, i64 1648, !24, i64 1652, !6, i64 1676, !2, i64 1680, !2, i64 1688, !2, i64 1696, !2, i64 1704, !10, i64 1712, !10, i64 1720, !2, i64 1728, !6, i64 1736, !3, i64 1744, !2, i64 1792, !2, i64 1800, !26, i64 1808, !6, i64 1844, !3, i64 1848, !3, i64 1852, !2, i64 1856, !6, i64 1864, !2, i64 1872, !2, i64 1880, !34, i64 1888}
!23 = !{!"gx_line_params_s", !18, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !6, i64 20, !18, i64 24, !18, i64 28, !18, i64 32, !6, i64 36, !24, i64 40, !25, i64 64}
!24 = !{!"gs_matrix_s", !18, i64 0, !18, i64 4, !18, i64 8, !18, i64 12, !18, i64 16, !18, i64 20}
!25 = !{!"gx_dash_params_s", !2, i64 0, !6, i64 8, !18, i64 12, !6, i64 16, !18, i64 20, !6, i64 24, !6, i64 28, !18, i64 32}
!26 = !{!"gs_matrix_fixed_s", !18, i64 0, !18, i64 4, !18, i64 8, !18, i64 12, !18, i64 16, !18, i64 20, !6, i64 24, !6, i64 28, !6, i64 32}
!27 = !{!"gs_point_s", !20, i64 0, !20, i64 8}
!28 = !{!"short", !3, i64 0}
!29 = !{!"gs_transparency_source_s", !18, i64 0}
!30 = !{!"gs_xstate_trans_flags", !6, i64 0, !6, i64 4}
!31 = !{!"gs_fixed_point_s", !6, i64 0, !6, i64 4}
!32 = !{!"gx_transfer_s", !6, i64 0, !2, i64 8, !6, i64 16, !2, i64 24, !6, i64 32, !2, i64 40, !6, i64 48, !2, i64 56}
!33 = !{!"gs_devicen_color_map_s", !6, i64 0, !3, i64 4, !6, i64 8, !6, i64 12, !10, i64 16, !3, i64 24}
!34 = !{!"gs_state_client_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!35 = !{!36, !2, i64 8}
!36 = !{!"", !2, i64 0, !2, i64 8, !2, i64 16}
!37 = !{!36, !2, i64 0}
!38 = !{!39, !2, i64 0}
!39 = !{!"gs_color_space_s", !2, i64 0, !9, i64 8, !10, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !3, i64 72}
!40 = !{!41, !2, i64 104}
!41 = !{!"gs_color_space_type_s", !3, i64 0, !6, i64 4, !6, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128}
!42 = !{!43, !2, i64 0}
!43 = !{!"gs_client_color_s", !2, i64 0, !44, i64 8}
!44 = !{!"gs_paint_color_s", !3, i64 0}
!45 = !{!36, !2, i64 16}
!46 = !{!47, !2, i64 0}
!47 = !{!"gx_device_color_s", !2, i64 0, !3, i64 8, !48, i64 352, !6, i64 360, !43, i64 368, !49, i64 632}
!48 = !{!"gs_int_point_s", !6, i64 0, !6, i64 4}
!49 = !{!"_mask", !50, i64 0, !10, i64 8, !2, i64 16}
!50 = !{!"mp_", !6, i64 0, !6, i64 4}
!51 = !{!22, !3, i64 1848}
!52 = !{!32, !2, i64 8}
!53 = !{!8, !10, i64 0}
!54 = !{!8, !2, i64 16}
!55 = !{!8, !2, i64 8}
!56 = !{!32, !2, i64 24}
!57 = !{!32, !2, i64 40}
!58 = !{!32, !2, i64 56}
!59 = !{!60, !2, i64 72}
!60 = !{!"gs_memory_s", !2, i64 0, !61, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!61 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!62 = !{!8, !10, i64 48}
!63 = !{!28, !28, i64 0}
!64 = !{!8, !2, i64 32}
!65 = !{!22, !2, i64 488}
!66 = !{!10, !10, i64 0}
!67 = !{!47, !6, i64 360}
!68 = !{!22, !6, i64 212}
!69 = !{!22, !6, i64 280}
