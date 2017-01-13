; ModuleID = './gxi12bit.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sample_map_s = type { %union.sample_lookup_s, [16 x float], float, i32, i32 }
%union.sample_lookup_s = type { [16 x i32], [192 x i8] }
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
%struct.gs_cie_render_s = type { i32, %struct.rc_header_s, i64, i8*, %struct.gs_cie_wb_s, %struct.gs_matrix3_s, %struct.gs_range3_s, %struct.gs_cie_transform_proc3_s, %struct.gs_matrix3_s, %struct.gs_cie_render_proc3_s, %struct.gs_range3_s, %struct.gs_matrix3_s, %struct.gs_cie_render_proc3_s, %struct.gs_range3_s, %struct.gs_cie_render_table_s, %struct.gs_range3_s, %struct.gs_range3_s, %struct.gs_matrix3_s, [3 x float], %struct.gs_matrix3_s, %struct.gs_vector3_s, %struct.gs_vector3_s, %struct.anon.8 }
%struct.gs_cie_wb_s = type { %struct.gs_vector3_s, %struct.gs_vector3_s }
%struct.gs_cie_transform_proc3_s = type { i32 (i32, double, %struct.gs_cie_wbsd_s*, %struct.gs_cie_render_s*, float*)*, i8*, %struct.gs_const_string_s, i8* }
%struct.gs_cie_wbsd_s = type { %struct.anon.7, %struct.anon.7, %struct.anon.7, %struct.anon.7 }
%struct.anon.7 = type { %struct.gs_vector3_s, %struct.gs_vector3_s }
%struct.gs_const_string_s = type { i8*, i32 }
%struct.gs_cie_render_proc3_s = type { [3 x float (double, %struct.gs_cie_render_s*)*] }
%struct.gs_cie_render_table_s = type { %struct.gx_color_lookup_table_s, %struct.gs_cie_render_table_procs_s }
%struct.gx_color_lookup_table_s = type { i32, [4 x i32], i32, %struct.gs_const_string_s* }
%struct.gs_cie_render_table_procs_s = type { [4 x i16 (i8, %struct.gs_cie_render_s*)*] }
%struct.gs_range3_s = type { [3 x %struct.gs_range_s] }
%struct.gs_matrix3_s = type { %struct.gs_vector3_s, %struct.gs_vector3_s, %struct.gs_vector3_s, i32 }
%struct.gs_vector3_s = type { float, float, float }
%struct.anon.8 = type { %struct.gx_cie_vector_cache3_s, [3 x %struct.gx_cie_float_fixed_cache_s], [4 x %union.gx_cie_scalar_cache_s], i32 }
%struct.gx_cie_vector_cache3_s = type { [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.cie_interpolation_range_s] }
%struct.gx_cie_vector_cache_s = type { %struct.cie_cache_floats_s, %struct.cie_cache_vectors_s }
%struct.cie_cache_floats_s = type { %struct.cie_cache_params_s, [512 x float] }
%struct.cie_cache_params_s = type { i32, double, double, %struct.cie_linear_params_s }
%struct.cie_linear_params_s = type { i32, float, float }
%struct.cie_cache_vectors_s = type { %struct.cie_vector_cache_params_s, [512 x %struct.cie_cached_vector3_s] }
%struct.cie_vector_cache_params_s = type { float, float, float, [3 x %struct.cie_interpolation_range_s] }
%struct.cie_cached_vector3_s = type { float, float, float }
%struct.cie_interpolation_range_s = type { float, float }
%struct.gx_cie_float_fixed_cache_s = type { %struct.cie_cache_floats_s, %union.if_ }
%union.if_ = type { %struct.cie_cache_ints_s }
%struct.cie_cache_ints_s = type { %struct.cie_cache_params_s, [512 x i32] }
%union.gx_cie_scalar_cache_s = type { %struct.cie_cache_floats_s }
%struct.gx_transfer_map_s = type { %struct.rc_header_s, float (double, %struct.gx_transfer_map_s*)*, %struct.gs_mapping_closure_s, i64, [256 x i16] }
%struct.gs_mapping_closure_s = type { float (double, %struct.gx_transfer_map_s*, i8*)*, i8* }
%struct.gx_transfer_s = type { i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s* }
%struct.gx_color_map_procs_s = type { void (i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32, %struct.gs_color_space_s*)*, void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_imager_state_s*, %struct.gx_device_s*)* }
%struct.gx_pattern_cache_s = type opaque
%struct.gs_color_space_s = type { %struct.gs_color_space_type_s*, %struct.rc_header_s, i64, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.client_color_space_data_s*, %struct.cmm_profile_s*, %union.anon }
%struct.gs_color_space_type_s = type { i32, i32, i32, %struct.gs_memory_struct_type_s*, i32 (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, void (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)*, i32 (%struct.gs_color_space_s*)* }
%struct.gs_state_s = type opaque
%struct.stream_s = type opaque
%struct.client_color_space_data_s = type { void (%struct.gs_color_space_s*, i32)* }
%union.anon = type { %struct.gs_device_n_params_s }
%struct.gs_device_n_params_s = type { i64*, i32, %struct.gs_device_n_map_s*, %struct.gs_device_n_attributes_s*, i32, i32 (%struct.gs_memory_s*, i64, i8**, i32*)* }
%struct.gs_device_n_map_s = type opaque
%struct.gs_device_n_attributes_s = type opaque
%struct.gx_cie_joint_caches_s = type { i64, i64, i32, i32, %struct.rc_header_s, i32 (<2 x float>, float, i16*, float*, %struct.gs_imager_state_s*, %struct.gs_color_space_s*)*, i32, i32, %struct.gx_cie_vector_cache3_s, %struct.gs_cie_wbsd_s, i32, %struct.gx_cie_vector_cache3_s, i32 }
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
%struct.gx_path_s = type opaque
%struct.gx_fill_params_s = type opaque
%struct.gx_clip_path_s = type opaque
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
%struct.gs_font_s = type opaque
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
%struct.gx_image_enum_s = type { %struct.gx_image_type_s*, %struct.gx_image_enum_procs_s*, %struct.gx_device_s*, %struct.gs_memory_s*, i64, i32, i32, [65 x i32], [65 x i32], i32, i32, i8, i8, i8, i8, i32, %struct.mc_, i8, i8, i8, i8, %struct.gs_matrix_s, %struct.r_, %struct.anon.9, i32, i32, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s, i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)*, {}*, %struct.gs_imager_state_s*, %struct.gs_color_space_s*, i8*, i32, i8*, i32, i32, i32, i8, i8, i8, i8, %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s, i32, i32, i32, i32, %struct.gx_device_clip_s*, %struct.gx_device_rop_texture_s*, %struct.stream_image_scale_state_s*, i32, %struct.gs_int_point_s, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s, %struct.dd_, i32, i32, %struct.gs_int_point_s, i32, i32, i32, i32, i32, [65 x %struct.sample_map_s], %struct.gx_image_clue_s*, %struct.gx_device_color_s, %struct.gx_device_color_s, %struct.gx_device_color_s*, %struct.gx_device_color_s*, %struct.gsicc_link_s*, %struct.gx_image_color_cache_s*, i8*, i32, i32, i32, i8*, i32, i32, %struct.ht_landscape_info_s, %struct.gx_image_icc_setup_s, i32 }
%struct.mc_ = type { [130 x i32], i32, i32, i32 }
%struct.r_ = type { i32, i32, i32, i32 }
%struct.anon.9 = type { i32, i32, i32, i32 }
%struct.gx_device_clip_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, %struct.gx_clip_list_s, %struct.gx_clip_rect_s*, %struct.gs_int_point_s, %struct.gs_fixed_rect_s, i32 }
%struct.gx_clip_list_s = type { %struct.gx_clip_rect_s, %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s*, i32, i32, i32 }
%struct.gx_clip_rect_s = type { %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s*, i32, i32, i32, i32, i8 }
%struct.gx_device_rop_texture_s = type opaque
%struct.stream_image_scale_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], %struct.stream_image_scale_params_s }
%struct.stream_template_s = type { %struct.gs_memory_struct_type_s*, i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32, i32, void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)* }
%struct.stream_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8] }
%struct.stream_cursor_read_s = type { i8*, i8*, i8* }
%struct.stream_cursor_write_s = type { i8*, i8*, i8* }
%struct.stream_image_scale_params_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dd_ = type { %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s }
%struct.gx_dda_fixed_point_s = type { %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s }
%struct.gx_dda_fixed_s = type { %struct._a, %struct._e }
%struct._a = type { i32, i32 }
%struct._e = type { i32, i32, i32 }
%struct.gx_image_clue_s = type { %struct.gx_device_color_s, i32 }
%struct.gx_image_color_cache_s = type { i32*, i8* }
%struct.ht_landscape_info_s = type { i32, [64 x i32], i32, i32, i32, i32, i32, i32, i32 }
%struct.gx_image_icc_setup_s = type { i32, i32, i32, i32 }
%union.color_fracs = type { [16 x i64] }
%struct._devn = type { [64 x i16] }

@sample_unpack_12_proc = constant i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)* @sample_unpack_12, align 8
@sample_unpackicc_16_proc = external constant i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)*, align 8
@gx_dc_type_data_pure = external constant %struct.gx_device_color_type_s, align 8
@gx_dc_type_data_null = external constant %struct.gx_device_color_type_s, align 8
@__func__.image_render_icc16 = private unnamed_addr constant [19 x i8] c"image_render_icc16\00", align 1
@.str = private unnamed_addr constant [18 x i8] c"./base/gxi12bit.c\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"ICC Link not created during image render icc16\00", align 1
@gx_dc_type_data_none = external constant %struct.gx_device_color_type_s, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"image_render_color_icc\00", align 1

; Function Attrs: nounwind uwtable
define internal i8* @sample_unpack_12(i8* %bptr, i32* %pdata_x, i8* %data, i32 %data_x, i32 %dsize, %struct.sample_map_s* %ignore_smap, i32 %spread, i32 %ignore_num_components_per_plane) #0 {
entry:
  %bptr.addr = alloca i8*, align 8
  %pdata_x.addr = alloca i32*, align 8
  %data.addr = alloca i8*, align 8
  %data_x.addr = alloca i32, align 4
  %dsize.addr = alloca i32, align 4
  %ignore_smap.addr = alloca %struct.sample_map_s*, align 8
  %spread.addr = alloca i32, align 4
  %ignore_num_components_per_plane.addr = alloca i32, align 4
  %bufp = alloca i16*, align 8
  %dskip = alloca i32, align 4
  %psrc = alloca i8*, align 8
  %sample = alloca i32, align 4
  %left = alloca i32, align 4
  store i8* %bptr, i8** %bptr.addr, align 8, !tbaa !1
  store i32* %pdata_x, i32** %pdata_x.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %data_x, i32* %data_x.addr, align 4, !tbaa !5
  store i32 %dsize, i32* %dsize.addr, align 4, !tbaa !5
  store %struct.sample_map_s* %ignore_smap, %struct.sample_map_s** %ignore_smap.addr, align 8, !tbaa !1
  store i32 %spread, i32* %spread.addr, align 4, !tbaa !5
  store i32 %ignore_num_components_per_plane, i32* %ignore_num_components_per_plane.addr, align 4, !tbaa !5
  %0 = bitcast i16** %bufp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %bptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to i16*
  store i16* %2, i16** %bufp, align 8, !tbaa !1
  %3 = bitcast i32* %dskip to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %shr = ashr i32 %4, 1
  %mul = mul nsw i32 %shr, 3
  store i32 %mul, i32* %dskip, align 4, !tbaa !5
  %5 = bitcast i8** %psrc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %7 = load i32, i32* %dskip, align 4, !tbaa !5
  %idx.ext = zext i32 %7 to i64
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %idx.ext
  store i8* %add.ptr, i8** %psrc, align 8, !tbaa !1
  %8 = bitcast i32* %sample to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load i32, i32* %dsize.addr, align 4, !tbaa !5
  %11 = load i32, i32* %dskip, align 4, !tbaa !5
  %sub = sub i32 %10, %11
  store i32 %sub, i32* %left, align 4, !tbaa !5
  %12 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %and = and i32 %12, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %13 = load i32, i32* %left, align 4, !tbaa !5
  %cmp = icmp sgt i32 %13, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %14 = load i32, i32* %left, align 4, !tbaa !5
  switch i32 %14, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb.21
  ]

sw.default:                                       ; preds = %if.then
  %15 = load i8*, i8** %psrc, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 1
  %16 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %conv = zext i8 %16 to i32
  %and1 = and i32 %conv, 15
  %shl = shl i32 %and1, 8
  %17 = load i8*, i8** %psrc, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i8, i8* %17, i64 2
  %18 = load i8, i8* %arrayidx2, align 1, !tbaa !7
  %conv3 = zext i8 %18 to i32
  %add = add i32 %shl, %conv3
  store i32 %add, i32* %sample, align 4, !tbaa !5
  %19 = load i32, i32* %sample, align 4, !tbaa !5
  %conv4 = trunc i32 %19 to i16
  %conv5 = sext i16 %conv4 to i32
  %shl6 = shl i32 %conv5, 3
  %20 = load i32, i32* %sample, align 4, !tbaa !5
  %shr7 = lshr i32 %20, 9
  %add8 = add i32 %shl6, %shr7
  %21 = load i32, i32* %sample, align 4, !tbaa !5
  %shr9 = lshr i32 %21, 9
  %sub10 = sub i32 %add8, %shr9
  %conv11 = trunc i32 %sub10 to i16
  %22 = load i16*, i16** %bufp, align 8, !tbaa !1
  store i16 %conv11, i16* %22, align 2, !tbaa !8
  %23 = load i16*, i16** %bufp, align 8, !tbaa !1
  %24 = bitcast i16* %23 to i8*
  %25 = load i32, i32* %spread.addr, align 4, !tbaa !5
  %idx.ext12 = sext i32 %25 to i64
  %add.ptr13 = getelementptr inbounds i8, i8* %24, i64 %idx.ext12
  %26 = bitcast i8* %add.ptr13 to i16*
  store i16* %26, i16** %bufp, align 8, !tbaa !1
  %27 = load i8*, i8** %psrc, align 8, !tbaa !1
  %add.ptr14 = getelementptr inbounds i8, i8* %27, i64 3
  store i8* %add.ptr14, i8** %psrc, align 8, !tbaa !1
  %28 = load i32, i32* %left, align 4, !tbaa !5
  %sub15 = sub nsw i32 %28, 3
  store i32 %sub15, i32* %left, align 4, !tbaa !5
  br label %sw.epilog

sw.bb:                                            ; preds = %if.then
  %29 = load i8*, i8** %psrc, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds i8, i8* %29, i64 1
  %30 = load i8, i8* %arrayidx16, align 1, !tbaa !7
  %conv17 = zext i8 %30 to i32
  %and18 = and i32 %conv17, 15
  %mul19 = mul nsw i32 %and18, 2184
  %conv20 = trunc i32 %mul19 to i16
  %31 = load i16*, i16** %bufp, align 8, !tbaa !1
  store i16 %conv20, i16* %31, align 2, !tbaa !8
  br label %sw.bb.21

sw.bb.21:                                         ; preds = %if.then, %sw.bb
  store i32 0, i32* %left, align 4, !tbaa !5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.21, %sw.default
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %land.lhs.true, %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %32 = load i32, i32* %left, align 4, !tbaa !5
  %cmp22 = icmp sge i32 %32, 3
  br i1 %cmp22, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %33 = load i8*, i8** %psrc, align 8, !tbaa !1
  %34 = load i8, i8* %33, align 1, !tbaa !7
  %conv24 = zext i8 %34 to i32
  %shl25 = shl i32 %conv24, 4
  %35 = load i8*, i8** %psrc, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds i8, i8* %35, i64 1
  %36 = load i8, i8* %arrayidx26, align 1, !tbaa !7
  %conv27 = zext i8 %36 to i32
  %shr28 = ashr i32 %conv27, 4
  %add29 = add i32 %shl25, %shr28
  store i32 %add29, i32* %sample, align 4, !tbaa !5
  %37 = load i32, i32* %sample, align 4, !tbaa !5
  %conv30 = trunc i32 %37 to i16
  %conv31 = sext i16 %conv30 to i32
  %shl32 = shl i32 %conv31, 3
  %38 = load i32, i32* %sample, align 4, !tbaa !5
  %shr33 = lshr i32 %38, 9
  %add34 = add i32 %shl32, %shr33
  %39 = load i32, i32* %sample, align 4, !tbaa !5
  %shr35 = lshr i32 %39, 9
  %sub36 = sub i32 %add34, %shr35
  %conv37 = trunc i32 %sub36 to i16
  %40 = load i16*, i16** %bufp, align 8, !tbaa !1
  store i16 %conv37, i16* %40, align 2, !tbaa !8
  %41 = load i16*, i16** %bufp, align 8, !tbaa !1
  %42 = bitcast i16* %41 to i8*
  %43 = load i32, i32* %spread.addr, align 4, !tbaa !5
  %idx.ext38 = sext i32 %43 to i64
  %add.ptr39 = getelementptr inbounds i8, i8* %42, i64 %idx.ext38
  %44 = bitcast i8* %add.ptr39 to i16*
  store i16* %44, i16** %bufp, align 8, !tbaa !1
  %45 = load i8*, i8** %psrc, align 8, !tbaa !1
  %arrayidx40 = getelementptr inbounds i8, i8* %45, i64 1
  %46 = load i8, i8* %arrayidx40, align 1, !tbaa !7
  %conv41 = zext i8 %46 to i32
  %and42 = and i32 %conv41, 15
  %shl43 = shl i32 %and42, 8
  %47 = load i8*, i8** %psrc, align 8, !tbaa !1
  %arrayidx44 = getelementptr inbounds i8, i8* %47, i64 2
  %48 = load i8, i8* %arrayidx44, align 1, !tbaa !7
  %conv45 = zext i8 %48 to i32
  %add46 = add i32 %shl43, %conv45
  store i32 %add46, i32* %sample, align 4, !tbaa !5
  %49 = load i32, i32* %sample, align 4, !tbaa !5
  %conv47 = trunc i32 %49 to i16
  %conv48 = sext i16 %conv47 to i32
  %shl49 = shl i32 %conv48, 3
  %50 = load i32, i32* %sample, align 4, !tbaa !5
  %shr50 = lshr i32 %50, 9
  %add51 = add i32 %shl49, %shr50
  %51 = load i32, i32* %sample, align 4, !tbaa !5
  %shr52 = lshr i32 %51, 9
  %sub53 = sub i32 %add51, %shr52
  %conv54 = trunc i32 %sub53 to i16
  %52 = load i16*, i16** %bufp, align 8, !tbaa !1
  store i16 %conv54, i16* %52, align 2, !tbaa !8
  %53 = load i16*, i16** %bufp, align 8, !tbaa !1
  %54 = bitcast i16* %53 to i8*
  %55 = load i32, i32* %spread.addr, align 4, !tbaa !5
  %idx.ext55 = sext i32 %55 to i64
  %add.ptr56 = getelementptr inbounds i8, i8* %54, i64 %idx.ext55
  %56 = bitcast i8* %add.ptr56 to i16*
  store i16* %56, i16** %bufp, align 8, !tbaa !1
  %57 = load i8*, i8** %psrc, align 8, !tbaa !1
  %add.ptr57 = getelementptr inbounds i8, i8* %57, i64 3
  store i8* %add.ptr57, i8** %psrc, align 8, !tbaa !1
  %58 = load i32, i32* %left, align 4, !tbaa !5
  %sub58 = sub nsw i32 %58, 3
  store i32 %sub58, i32* %left, align 4, !tbaa !5
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %59 = load i32, i32* %left, align 4, !tbaa !5
  switch i32 %59, label %sw.epilog.93 [
    i32 2, label %sw.bb.59
    i32 1, label %sw.bb.81
    i32 0, label %sw.bb.92
  ]

sw.bb.59:                                         ; preds = %while.end
  %60 = load i8*, i8** %psrc, align 8, !tbaa !1
  %61 = load i8, i8* %60, align 1, !tbaa !7
  %conv60 = zext i8 %61 to i32
  %shl61 = shl i32 %conv60, 4
  %62 = load i8*, i8** %psrc, align 8, !tbaa !1
  %arrayidx62 = getelementptr inbounds i8, i8* %62, i64 1
  %63 = load i8, i8* %arrayidx62, align 1, !tbaa !7
  %conv63 = zext i8 %63 to i32
  %shr64 = ashr i32 %conv63, 4
  %add65 = add i32 %shl61, %shr64
  store i32 %add65, i32* %sample, align 4, !tbaa !5
  %64 = load i32, i32* %sample, align 4, !tbaa !5
  %conv66 = trunc i32 %64 to i16
  %conv67 = sext i16 %conv66 to i32
  %shl68 = shl i32 %conv67, 3
  %65 = load i32, i32* %sample, align 4, !tbaa !5
  %shr69 = lshr i32 %65, 9
  %add70 = add i32 %shl68, %shr69
  %66 = load i32, i32* %sample, align 4, !tbaa !5
  %shr71 = lshr i32 %66, 9
  %sub72 = sub i32 %add70, %shr71
  %conv73 = trunc i32 %sub72 to i16
  %67 = load i16*, i16** %bufp, align 8, !tbaa !1
  store i16 %conv73, i16* %67, align 2, !tbaa !8
  %68 = load i16*, i16** %bufp, align 8, !tbaa !1
  %69 = bitcast i16* %68 to i8*
  %70 = load i32, i32* %spread.addr, align 4, !tbaa !5
  %idx.ext74 = sext i32 %70 to i64
  %add.ptr75 = getelementptr inbounds i8, i8* %69, i64 %idx.ext74
  %71 = bitcast i8* %add.ptr75 to i16*
  store i16* %71, i16** %bufp, align 8, !tbaa !1
  %72 = load i8*, i8** %psrc, align 8, !tbaa !1
  %arrayidx76 = getelementptr inbounds i8, i8* %72, i64 1
  %73 = load i8, i8* %arrayidx76, align 1, !tbaa !7
  %conv77 = zext i8 %73 to i32
  %and78 = and i32 %conv77, 15
  %mul79 = mul nsw i32 %and78, 2184
  %conv80 = trunc i32 %mul79 to i16
  %74 = load i16*, i16** %bufp, align 8, !tbaa !1
  store i16 %conv80, i16* %74, align 2, !tbaa !8
  br label %sw.epilog.93

sw.bb.81:                                         ; preds = %while.end
  %75 = load i8*, i8** %psrc, align 8, !tbaa !1
  %76 = load i8, i8* %75, align 1, !tbaa !7
  %conv82 = zext i8 %76 to i32
  %shl83 = shl i32 %conv82, 4
  store i32 %shl83, i32* %sample, align 4, !tbaa !5
  %77 = load i32, i32* %sample, align 4, !tbaa !5
  %conv84 = trunc i32 %77 to i16
  %conv85 = sext i16 %conv84 to i32
  %shl86 = shl i32 %conv85, 3
  %78 = load i32, i32* %sample, align 4, !tbaa !5
  %shr87 = lshr i32 %78, 9
  %add88 = add i32 %shl86, %shr87
  %79 = load i32, i32* %sample, align 4, !tbaa !5
  %shr89 = lshr i32 %79, 9
  %sub90 = sub i32 %add88, %shr89
  %conv91 = trunc i32 %sub90 to i16
  %80 = load i16*, i16** %bufp, align 8, !tbaa !1
  store i16 %conv91, i16* %80, align 2, !tbaa !8
  br label %sw.epilog.93

sw.bb.92:                                         ; preds = %while.end
  br label %sw.epilog.93

sw.epilog.93:                                     ; preds = %sw.bb.92, %while.end, %sw.bb.81, %sw.bb.59
  %81 = load i32*, i32** %pdata_x.addr, align 8, !tbaa !1
  store i32 0, i32* %81, align 4, !tbaa !5
  %82 = load i8*, i8** %bptr.addr, align 8, !tbaa !1
  %83 = bitcast i32* %left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #1
  %84 = bitcast i32* %sample to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #1
  %85 = bitcast i8** %psrc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %85) #1
  %86 = bitcast i32* %dskip to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #1
  %87 = bitcast i16** %bufp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %87) #1
  ret i8* %82
}

; Function Attrs: nounwind uwtable
define i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)* @gs_image_class_2_fracs(%struct.gx_image_enum_s* %penum) #0 {
entry:
  %retval = alloca i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)*, align 8
  %penum.addr = alloca %struct.gx_image_enum_s*, align 8
  %std_cmap_procs = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %pcs45 = alloca %struct.gs_color_space_s*, align 8
  %rendering_params = alloca %struct.gsicc_rendering_param_s, align 4
  %k = alloca i32, align 4
  %src_num_comp = alloca i32, align 4
  %num_des_comps = alloca i32, align 4
  %code = alloca i32, align 4
  %dev_profile = alloca %struct.cmm_dev_profile_s*, align 8
  store %struct.gx_image_enum_s* %penum, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %0 = bitcast i32* %std_cmap_procs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %bps = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %1, i32 0, i32 11
  %2 = load i8, i8* %bps, align 1, !tbaa !10
  %conv = zext i8 %2 to i32
  %cmp = icmp sgt i32 %conv, 8
  br i1 %cmp, label %if.then, label %if.end.123

if.then:                                          ; preds = %entry
  %3 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %use_mask_color = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %3, i32 0, i32 17
  %4 = load i8, i8* %use_mask_color, align 1, !tbaa !33
  %tobool = icmp ne i8 %4, 0
  br i1 %tobool, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %5 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.2
  %6 = load i32, i32* %i, align 4, !tbaa !5
  %7 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %spp = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %7, i32 0, i32 14
  %8 = load i8, i8* %spp, align 1, !tbaa !34
  %conv3 = zext i8 %8 to i32
  %mul = mul nsw i32 %conv3, 2
  %cmp4 = icmp slt i32 %6, %mul
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %mask_color = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %10, i32 0, i32 16
  %values = getelementptr inbounds %struct.mc_, %struct.mc_* %mask_color, i32 0, i32 0
  %arrayidx = getelementptr inbounds [130 x i32], [130 x i32]* %values, i32 0, i64 %idxprom
  %11 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %conv6 = trunc i32 %11 to i16
  %conv7 = sext i16 %conv6 to i32
  %shl = shl i32 %conv7, 3
  %12 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom8 = sext i32 %12 to i64
  %13 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %mask_color9 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %13, i32 0, i32 16
  %values10 = getelementptr inbounds %struct.mc_, %struct.mc_* %mask_color9, i32 0, i32 0
  %arrayidx11 = getelementptr inbounds [130 x i32], [130 x i32]* %values10, i32 0, i64 %idxprom8
  %14 = load i32, i32* %arrayidx11, align 4, !tbaa !5
  %shr = lshr i32 %14, 9
  %add = add i32 %shl, %shr
  %15 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom12 = sext i32 %15 to i64
  %16 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %mask_color13 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %16, i32 0, i32 16
  %values14 = getelementptr inbounds %struct.mc_, %struct.mc_* %mask_color13, i32 0, i32 0
  %arrayidx15 = getelementptr inbounds [130 x i32], [130 x i32]* %values14, i32 0, i64 %idxprom12
  %17 = load i32, i32* %arrayidx15, align 4, !tbaa !5
  %shr16 = lshr i32 %17, 9
  %sub = sub i32 %add, %shr16
  %conv17 = trunc i32 %sub to i16
  %conv18 = sext i16 %conv17 to i32
  %18 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom19 = sext i32 %18 to i64
  %19 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %mask_color20 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %19, i32 0, i32 16
  %values21 = getelementptr inbounds %struct.mc_, %struct.mc_* %mask_color20, i32 0, i32 0
  %arrayidx22 = getelementptr inbounds [130 x i32], [130 x i32]* %values21, i32 0, i64 %idxprom19
  store i32 %conv18, i32* %arrayidx22, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  %22 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dev = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %22, i32 0, i32 2
  %23 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !35
  %24 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pis = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %24, i32 0, i32 30
  %25 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !36
  %call = call i32 @gx_device_uses_std_cmap_procs(%struct.gx_device_s* %23, %struct.gs_imager_state_s* %25) #6
  store i32 %call, i32* %std_cmap_procs, align 4, !tbaa !5
  %26 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pcs = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %26, i32 0, i32 31
  %27 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !37
  %call23 = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %27) #6
  %cmp24 = icmp eq i32 %call23, 4
  br i1 %cmp24, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end
  %28 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pcs26 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %28, i32 0, i32 31
  %29 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs26, align 8, !tbaa !37
  %cmm_icc_profile_data = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %29, i32 0, i32 6
  %30 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data, align 8, !tbaa !38
  %cmp27 = icmp eq %struct.cmm_profile_s* %30, null
  br i1 %cmp27, label %if.then.44, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.end
  %31 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %use_mask_color29 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %31, i32 0, i32 17
  %32 = load i8, i8* %use_mask_color29, align 1, !tbaa !33
  %conv30 = zext i8 %32 to i32
  %tobool31 = icmp ne i32 %conv30, 0
  br i1 %tobool31, label %if.then.44, label %lor.lhs.false.32

lor.lhs.false.32:                                 ; preds = %lor.lhs.false
  %33 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %bps33 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %33, i32 0, i32 11
  %34 = load i8, i8* %bps33, align 1, !tbaa !10
  %conv34 = zext i8 %34 to i32
  %cmp35 = icmp ne i32 %conv34, 16
  br i1 %cmp35, label %if.then.44, label %lor.lhs.false.37

lor.lhs.false.37:                                 ; preds = %lor.lhs.false.32
  %35 = load i32, i32* %std_cmap_procs, align 4, !tbaa !5
  %tobool38 = icmp ne i32 %35, 0
  br i1 %tobool38, label %lor.lhs.false.39, label %if.then.44

lor.lhs.false.39:                                 ; preds = %lor.lhs.false.37
  %36 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pcs40 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %36, i32 0, i32 31
  %37 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs40, align 8, !tbaa !37
  %call41 = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %37) #6
  %cmp42 = icmp eq i32 %call41, 3
  br i1 %cmp42, label %if.then.44, label %if.else

if.then.44:                                       ; preds = %lor.lhs.false.39, %lor.lhs.false.37, %lor.lhs.false.32, %lor.lhs.false, %land.lhs.true
  br label %do.body

do.body:                                          ; preds = %if.then.44
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)* @image_render_frac, i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false.39
  %38 = bitcast %struct.gs_color_space_s** %pcs45 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %38) #1
  %39 = bitcast %struct.gsicc_rendering_param_s* %rendering_params to i8*
  call void @llvm.lifetime.start(i64 24, i8* %39) #1
  %40 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %40) #1
  %41 = bitcast i32* %src_num_comp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %41) #1
  %42 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pcs46 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %42, i32 0, i32 31
  %43 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs46, align 8, !tbaa !37
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %43, i32 0, i32 0
  %44 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !41
  %num_components = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %44, i32 0, i32 4
  %45 = load i32 (%struct.gs_color_space_s*)*, i32 (%struct.gs_color_space_s*)** %num_components, align 8, !tbaa !42
  %46 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pcs47 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %46, i32 0, i32 31
  %47 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs47, align 8, !tbaa !37
  %call48 = call i32 %45(%struct.gs_color_space_s* %47) #6
  store i32 %call48, i32* %src_num_comp, align 4, !tbaa !5
  %48 = bitcast i32* %num_des_comps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %48) #1
  %49 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %49) #1
  %50 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %50) #1
  %51 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dev49 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %51, i32 0, i32 2
  %52 = load %struct.gx_device_s*, %struct.gx_device_s** %dev49, align 8, !tbaa !35
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %52, i32 0, i32 42
  %get_profile = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 67
  %53 = load i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile, align 8, !tbaa !44
  %54 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dev50 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %54, i32 0, i32 2
  %55 = load %struct.gx_device_s*, %struct.gx_device_s** %dev50, align 8, !tbaa !35
  %call51 = call i32 %53(%struct.gx_device_s* %55, %struct.cmm_dev_profile_s** %dev_profile) #6
  store i32 %call51, i32* %code, align 4, !tbaa !5
  %56 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %call52 = call i32 @gsicc_get_device_profile_comps(%struct.cmm_dev_profile_s* %56) #6
  store i32 %call52, i32* %num_des_comps, align 4, !tbaa !5
  %57 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icc_setup = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %57, i32 0, i32 80
  %need_decode = getelementptr inbounds %struct.gx_image_icc_setup_s, %struct.gx_image_icc_setup_s* %icc_setup, i32 0, i32 0
  store i32 0, i32* %need_decode, align 4, !tbaa !54
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.53

for.cond.53:                                      ; preds = %for.inc.65, %if.else
  %58 = load i32, i32* %k, align 4, !tbaa !5
  %59 = load i32, i32* %src_num_comp, align 4, !tbaa !5
  %cmp54 = icmp slt i32 %58, %59
  br i1 %cmp54, label %for.body.56, label %for.end.67

for.body.56:                                      ; preds = %for.cond.53
  %60 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom57 = sext i32 %60 to i64
  %61 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %61, i32 0, i32 64
  %arrayidx58 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map, i32 0, i64 %idxprom57
  %decoding = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx58, i32 0, i32 3
  %62 = load i32, i32* %decoding, align 4, !tbaa !55
  %cmp59 = icmp ne i32 %62, 0
  br i1 %cmp59, label %if.then.61, label %if.end.64

if.then.61:                                       ; preds = %for.body.56
  %63 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icc_setup62 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %63, i32 0, i32 80
  %need_decode63 = getelementptr inbounds %struct.gx_image_icc_setup_s, %struct.gx_image_icc_setup_s* %icc_setup62, i32 0, i32 0
  store i32 1, i32* %need_decode63, align 4, !tbaa !54
  br label %for.end.67

if.end.64:                                        ; preds = %for.body.56
  br label %for.inc.65

for.inc.65:                                       ; preds = %if.end.64
  %64 = load i32, i32* %k, align 4, !tbaa !5
  %inc66 = add nsw i32 %64, 1
  store i32 %inc66, i32* %k, align 4, !tbaa !5
  br label %for.cond.53

for.end.67:                                       ; preds = %if.then.61, %for.cond.53
  %65 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pis68 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %65, i32 0, i32 30
  %66 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis68, align 8, !tbaa !36
  %blackptcomp = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %66, i32 0, i32 34
  %67 = load i32, i32* %blackptcomp, align 4, !tbaa !57
  %black_point_comp = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %rendering_params, i32 0, i32 1
  store i32 %67, i32* %black_point_comp, align 4, !tbaa !68
  %graphics_type_tag = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %rendering_params, i32 0, i32 3
  store i32 2, i32* %graphics_type_tag, align 4, !tbaa !70
  %override_icc = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %rendering_params, i32 0, i32 5
  store i32 0, i32* %override_icc, align 4, !tbaa !71
  %preserve_black = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %rendering_params, i32 0, i32 2
  store i32 8, i32* %preserve_black, align 4, !tbaa !72
  %68 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pis69 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %68, i32 0, i32 30
  %69 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis69, align 8, !tbaa !36
  %renderingintent = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %69, i32 0, i32 33
  %70 = load i32, i32* %renderingintent, align 4, !tbaa !73
  %rendering_intent = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %rendering_params, i32 0, i32 0
  store i32 %70, i32* %rendering_intent, align 4, !tbaa !74
  %cmm = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %rendering_params, i32 0, i32 4
  store i32 0, i32* %cmm, align 4, !tbaa !75
  %71 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pcs70 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %71, i32 0, i32 31
  %72 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs70, align 8, !tbaa !37
  %call71 = call i32 @gs_color_space_is_PSCIE(%struct.gs_color_space_s* %72) #6
  %tobool72 = icmp ne i32 %call71, 0
  br i1 %tobool72, label %land.lhs.true.73, label %if.else.80

land.lhs.true.73:                                 ; preds = %for.end.67
  %73 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pcs74 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %73, i32 0, i32 31
  %74 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs74, align 8, !tbaa !37
  %icc_equivalent = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %74, i32 0, i32 4
  %75 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_equivalent, align 8, !tbaa !76
  %cmp75 = icmp ne %struct.gs_color_space_s* %75, null
  br i1 %cmp75, label %if.then.77, label %if.else.80

if.then.77:                                       ; preds = %land.lhs.true.73
  %76 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pcs78 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %76, i32 0, i32 31
  %77 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs78, align 8, !tbaa !37
  %icc_equivalent79 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %77, i32 0, i32 4
  %78 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_equivalent79, align 8, !tbaa !76
  store %struct.gs_color_space_s* %78, %struct.gs_color_space_s** %pcs45, align 8, !tbaa !1
  br label %if.end.82

if.else.80:                                       ; preds = %land.lhs.true.73, %for.end.67
  %79 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pcs81 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %79, i32 0, i32 31
  %80 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs81, align 8, !tbaa !37
  store %struct.gs_color_space_s* %80, %struct.gs_color_space_s** %pcs45, align 8, !tbaa !1
  br label %if.end.82

if.end.82:                                        ; preds = %if.else.80, %if.then.77
  %81 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs45, align 8, !tbaa !1
  %cmm_icc_profile_data83 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %81, i32 0, i32 6
  %82 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data83, align 8, !tbaa !38
  %islab = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %82, i32 0, i32 2
  %83 = load i32, i32* %islab, align 4, !tbaa !77
  %84 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icc_setup84 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %84, i32 0, i32 80
  %is_lab = getelementptr inbounds %struct.gx_image_icc_setup_s, %struct.gx_image_icc_setup_s* %icc_setup84, i32 0, i32 1
  store i32 %83, i32* %is_lab, align 4, !tbaa !80
  %85 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dev85 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %85, i32 0, i32 2
  %86 = load %struct.gx_device_s*, %struct.gx_device_s** %dev85, align 8, !tbaa !35
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %86, i32 0, i32 11
  %num_components86 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %87 = load i32, i32* %num_components86, align 4, !tbaa !81
  %cmp87 = icmp sgt i32 %87, 1
  br i1 %cmp87, label %cond.true, label %lor.lhs.false.89

lor.lhs.false.89:                                 ; preds = %if.end.82
  %88 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dev90 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %88, i32 0, i32 2
  %89 = load %struct.gx_device_s*, %struct.gx_device_s** %dev90, align 8, !tbaa !35
  %color_info91 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %89, i32 0, i32 11
  %gray_index = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info91, i32 0, i32 4
  %90 = load i8, i8* %gray_index, align 1, !tbaa !82
  %conv92 = zext i8 %90 to i32
  %cmp93 = icmp eq i32 %conv92, 255
  br i1 %cmp93, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false.89, %if.end.82
  %91 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dev95 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %91, i32 0, i32 2
  %92 = load %struct.gx_device_s*, %struct.gx_device_s** %dev95, align 8, !tbaa !35
  %color_info96 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %92, i32 0, i32 11
  %max_color = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info96, i32 0, i32 6
  %93 = load i32, i32* %max_color, align 4, !tbaa !83
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false.89
  %94 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dev97 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %94, i32 0, i32 2
  %95 = load %struct.gx_device_s*, %struct.gx_device_s** %dev97, align 8, !tbaa !35
  %color_info98 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %95, i32 0, i32 11
  %max_gray = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info98, i32 0, i32 5
  %96 = load i32, i32* %max_gray, align 4, !tbaa !84
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %93, %cond.true ], [ %96, %cond.false ]
  %cmp99 = icmp ult i32 %cond, 31
  %conv100 = zext i1 %cmp99 to i32
  %97 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icc_setup101 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %97, i32 0, i32 80
  %must_halftone = getelementptr inbounds %struct.gx_image_icc_setup_s, %struct.gx_image_icc_setup_s* %icc_setup101, i32 0, i32 2
  store i32 %conv100, i32* %must_halftone, align 4, !tbaa !85
  %98 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pis102 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %98, i32 0, i32 30
  %99 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis102, align 8, !tbaa !36
  %100 = load i32, i32* %num_des_comps, align 4, !tbaa !5
  %call103 = call i32 @gx_has_transfer(%struct.gs_imager_state_s* %99, i32 %100) #6
  %101 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icc_setup104 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %101, i32 0, i32 80
  %has_transfer = getelementptr inbounds %struct.gx_image_icc_setup_s, %struct.gx_image_icc_setup_s* %icc_setup104, i32 0, i32 3
  store i32 %call103, i32* %has_transfer, align 4, !tbaa !86
  %102 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icc_setup105 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %102, i32 0, i32 80
  %is_lab106 = getelementptr inbounds %struct.gx_image_icc_setup_s, %struct.gx_image_icc_setup_s* %icc_setup105, i32 0, i32 1
  %103 = load i32, i32* %is_lab106, align 4, !tbaa !80
  %tobool107 = icmp ne i32 %103, 0
  br i1 %tobool107, label %if.then.108, label %if.end.111

if.then.108:                                      ; preds = %cond.end
  %104 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icc_setup109 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %104, i32 0, i32 80
  %need_decode110 = getelementptr inbounds %struct.gx_image_icc_setup_s, %struct.gx_image_icc_setup_s* %icc_setup109, i32 0, i32 0
  store i32 0, i32* %need_decode110, align 4, !tbaa !54
  br label %if.end.111

if.end.111:                                       ; preds = %if.then.108, %cond.end
  %105 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icc_link = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %105, i32 0, i32 70
  %106 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link, align 8, !tbaa !87
  %cmp112 = icmp eq %struct.gsicc_link_s* %106, null
  br i1 %cmp112, label %if.then.114, label %if.end.119

if.then.114:                                      ; preds = %if.end.111
  %107 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pis115 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %107, i32 0, i32 30
  %108 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis115, align 8, !tbaa !36
  %109 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dev116 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %109, i32 0, i32 2
  %110 = load %struct.gx_device_s*, %struct.gx_device_s** %dev116, align 8, !tbaa !35
  %111 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs45, align 8, !tbaa !1
  %112 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %112, i32 0, i32 3
  %113 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !88
  %call117 = call %struct.gsicc_link_s* @gsicc_get_link(%struct.gs_imager_state_s* %108, %struct.gx_device_s* %110, %struct.gs_color_space_s* %111, %struct.gs_color_space_s* null, %struct.gsicc_rendering_param_s* %rendering_params, %struct.gs_memory_s* %113) #6
  %114 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icc_link118 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %114, i32 0, i32 70
  store %struct.gsicc_link_s* %call117, %struct.gsicc_link_s** %icc_link118, align 8, !tbaa !87
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.114, %if.end.111
  %115 = load i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)*, i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)** @sample_unpackicc_16_proc, align 8, !tbaa !1
  %116 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %unpack = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %116, i32 0, i32 28
  store i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)* %115, i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)** %unpack, align 8, !tbaa !89
  br label %do.body.120

do.body.120:                                      ; preds = %if.end.119
  br label %do.cond.121

do.cond.121:                                      ; preds = %do.body.120
  br label %do.end.122

do.end.122:                                       ; preds = %do.cond.121
  store i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)* @image_render_icc16, i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)** %retval
  store i32 1, i32* %cleanup.dest.slot
  %117 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %117) #1
  %118 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %118) #1
  %119 = bitcast i32* %num_des_comps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %119) #1
  %120 = bitcast i32* %src_num_comp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %120) #1
  %121 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %121) #1
  %122 = bitcast %struct.gsicc_rendering_param_s* %rendering_params to i8*
  call void @llvm.lifetime.end(i64 24, i8* %122) #1
  %123 = bitcast %struct.gs_color_space_s** %pcs45 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %123) #1
  br label %cleanup

if.end.123:                                       ; preds = %entry
  store i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)* null, i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.123, %do.end.122, %do.end
  %124 = bitcast i32* %std_cmap_procs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %124) #1
  %125 = load i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)*, i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)** %retval
  ret i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)* %125
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare i32 @gx_device_uses_std_cmap_procs(%struct.gx_device_s*, %struct.gs_imager_state_s*) #2

declare i32 @gs_color_space_get_index(%struct.gs_color_space_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @image_render_frac(%struct.gx_image_enum_s* %penum, i8* %buffer, i32 %data_x, i32 %w, i32 %h, %struct.gx_device_s* %dev) #0 {
entry:
  %retval = alloca i32, align 4
  %penum.addr = alloca %struct.gx_image_enum_s*, align 8
  %buffer.addr = alloca i8*, align 8
  %data_x.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pis = alloca %struct.gs_imager_state_s*, align 8
  %lop = alloca i32, align 4
  %pnext = alloca %struct.gx_dda_fixed_point_s, align 4
  %posture = alloca i32, align 4
  %xl = alloca i32, align 4
  %ytf = alloca i32, align 4
  %pdyx = alloca i32, align 4
  %pdyy = alloca i32, align 4
  %yt = alloca i32, align 4
  %iht = alloca i32, align 4
  %pcs = alloca %struct.gs_color_space_s*, align 8
  %remap_color = alloca i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, align 8
  %cc = alloca %struct.gs_client_color_s, align 8
  %device_color = alloca i32, align 4
  %cmap_procs = alloca %struct.gx_color_map_procs_s*, align 8
  %map_rgb = alloca void (i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, align 8
  %map_cmyk = alloca void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32, %struct.gs_color_space_s*)*, align 8
  %use_mask_color = alloca i32, align 4
  %devc1 = alloca %struct.gx_device_color_s, align 8
  %devc2 = alloca %struct.gx_device_color_s, align 8
  %pdevc = alloca %struct.gx_device_color_s*, align 8
  %pdevc_next = alloca %struct.gx_device_color_s*, align 8
  %spp = alloca i32, align 4
  %psrc_initial = alloca i16*, align 8
  %psrc = alloca i16*, align 8
  %rsrc = alloca i16*, align 8
  %xrun = alloca i32, align 4
  %irun = alloca i32, align 4
  %yrun = alloca i32, align 4
  %run = alloca %union.color_fracs, align 8
  %next = alloca %union.color_fracs, align 8
  %bufend = alloca i16*, align 8
  %code = alloca i32, align 4
  %mcode = alloca i32, align 4
  %i = alloca i32, align 4
  %is_devn = alloca i32, align 4
  %is_sep = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %i338 = alloca i32, align 4
  %ptemp = alloca %struct.gx_device_color_s*, align 8
  %xi = alloca i32, align 4
  %wi = alloca i32, align 4
  %xi535 = alloca i32, align 4
  %wi536 = alloca i32, align 4
  store %struct.gx_image_enum_s* %penum, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  store i8* %buffer, i8** %buffer.addr, align 8, !tbaa !1
  store i32 %data_x, i32* %data_x.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_imager_state_s** %pis to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pis1 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %1, i32 0, i32 30
  %2 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis1, align 8, !tbaa !36
  store %struct.gs_imager_state_s* %2, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %3 = bitcast i32* %lop to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %log_op = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %4, i32 0, i32 44
  %5 = load i32, i32* %log_op, align 4, !tbaa !90
  store i32 %5, i32* %lop, align 4, !tbaa !5
  %6 = bitcast %struct.gx_dda_fixed_point_s* %pnext to i8*
  call void @llvm.lifetime.start(i64 40, i8* %6) #1
  %7 = bitcast i32* %posture to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %posture2 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %8, i32 0, i32 37
  %9 = load i32, i32* %posture2, align 4, !tbaa !91
  store i32 %9, i32* %posture, align 4, !tbaa !7
  %10 = bitcast i32* %xl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %ytf to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast i32* %pdyx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast i32* %pdyy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast i32* %yt to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %yci = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %15, i32 0, i32 60
  %16 = load i32, i32* %yci, align 4, !tbaa !92
  store i32 %16, i32* %yt, align 4, !tbaa !5
  %17 = bitcast i32* %iht to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %hci = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %18, i32 0, i32 61
  %19 = load i32, i32* %hci, align 4, !tbaa !93
  store i32 %19, i32* %iht, align 4, !tbaa !5
  %20 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  %21 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pcs3 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %21, i32 0, i32 31
  %22 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs3, align 8, !tbaa !37
  store %struct.gs_color_space_s* %22, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %23 = bitcast i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %remap_color to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #1
  %24 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %24, i32 0, i32 0
  %25 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !41
  %remap_color4 = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %25, i32 0, i32 10
  %26 = load i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %remap_color4, align 8, !tbaa !94
  store i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)* %26, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %remap_color, align 8, !tbaa !1
  %27 = bitcast %struct.gs_client_color_s* %cc to i8*
  call void @llvm.lifetime.start(i64 264, i8* %27) #1
  %28 = bitcast i32* %device_color to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #1
  %29 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %device_color5 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %29, i32 0, i32 41
  %30 = load i8, i8* %device_color5, align 1, !tbaa !95
  %conv = zext i8 %30 to i32
  store i32 %conv, i32* %device_color, align 4, !tbaa !5
  %31 = bitcast %struct.gx_color_map_procs_s** %cmap_procs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %31) #1
  %32 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %33 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call %struct.gx_color_map_procs_s* @gx_get_cmap_procs(%struct.gs_imager_state_s* %32, %struct.gx_device_s* %33) #6
  store %struct.gx_color_map_procs_s* %call, %struct.gx_color_map_procs_s** %cmap_procs, align 8, !tbaa !1
  %34 = bitcast void (i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %map_rgb to i8*
  call void @llvm.lifetime.start(i64 8, i8* %34) #1
  %35 = load %struct.gx_color_map_procs_s*, %struct.gx_color_map_procs_s** %cmap_procs, align 8, !tbaa !1
  %map_rgb6 = getelementptr inbounds %struct.gx_color_map_procs_s, %struct.gx_color_map_procs_s* %35, i32 0, i32 1
  %36 = load void (i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %map_rgb6, align 8, !tbaa !96
  store void (i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)* %36, void (i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %map_rgb, align 8, !tbaa !1
  %37 = bitcast void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32, %struct.gs_color_space_s*)** %map_cmyk to i8*
  call void @llvm.lifetime.start(i64 8, i8* %37) #1
  %38 = load %struct.gx_color_map_procs_s*, %struct.gx_color_map_procs_s** %cmap_procs, align 8, !tbaa !1
  %map_cmyk7 = getelementptr inbounds %struct.gx_color_map_procs_s, %struct.gx_color_map_procs_s* %38, i32 0, i32 2
  %39 = load void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32, %struct.gs_color_space_s*)*, void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32, %struct.gs_color_space_s*)** %map_cmyk7, align 8, !tbaa !98
  store void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32, %struct.gs_color_space_s*)* %39, void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32, %struct.gs_color_space_s*)** %map_cmyk, align 8, !tbaa !1
  %40 = bitcast i32* %use_mask_color to i8*
  call void @llvm.lifetime.start(i64 4, i8* %40) #1
  %41 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %use_mask_color8 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %41, i32 0, i32 17
  %42 = load i8, i8* %use_mask_color8, align 1, !tbaa !33
  %conv9 = zext i8 %42 to i32
  store i32 %conv9, i32* %use_mask_color, align 4, !tbaa !5
  %43 = bitcast %struct.gx_device_color_s* %devc1 to i8*
  call void @llvm.lifetime.start(i64 656, i8* %43) #1
  %44 = bitcast %struct.gx_device_color_s* %devc2 to i8*
  call void @llvm.lifetime.start(i64 656, i8* %44) #1
  %45 = bitcast %struct.gx_device_color_s** %pdevc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %45) #1
  store %struct.gx_device_color_s* %devc1, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %46 = bitcast %struct.gx_device_color_s** %pdevc_next to i8*
  call void @llvm.lifetime.start(i64 8, i8* %46) #1
  store %struct.gx_device_color_s* %devc2, %struct.gx_device_color_s** %pdevc_next, align 8, !tbaa !1
  %47 = bitcast i32* %spp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %47) #1
  %48 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %spp10 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %48, i32 0, i32 14
  %49 = load i8, i8* %spp10, align 1, !tbaa !34
  %conv11 = zext i8 %49 to i32
  store i32 %conv11, i32* %spp, align 4, !tbaa !5
  %50 = bitcast i16** %psrc_initial to i8*
  call void @llvm.lifetime.start(i64 8, i8* %50) #1
  %51 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %52 = bitcast i8* %51 to i16*
  %53 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %54 = load i32, i32* %spp, align 4, !tbaa !5
  %mul = mul nsw i32 %53, %54
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i16, i16* %52, i64 %idx.ext
  store i16* %add.ptr, i16** %psrc_initial, align 8, !tbaa !1
  %55 = bitcast i16** %psrc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %55) #1
  %56 = load i16*, i16** %psrc_initial, align 8, !tbaa !1
  store i16* %56, i16** %psrc, align 8, !tbaa !1
  %57 = bitcast i16** %rsrc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %57) #1
  %58 = load i16*, i16** %psrc, align 8, !tbaa !1
  %59 = load i32, i32* %spp, align 4, !tbaa !5
  %idx.ext12 = sext i32 %59 to i64
  %add.ptr13 = getelementptr inbounds i16, i16* %58, i64 %idx.ext12
  store i16* %add.ptr13, i16** %rsrc, align 8, !tbaa !1
  %60 = bitcast i32* %xrun to i8*
  call void @llvm.lifetime.start(i64 4, i8* %60) #1
  %61 = bitcast i32* %irun to i8*
  call void @llvm.lifetime.start(i64 4, i8* %61) #1
  %62 = bitcast i32* %yrun to i8*
  call void @llvm.lifetime.start(i64 4, i8* %62) #1
  %63 = bitcast %union.color_fracs* %run to i8*
  call void @llvm.lifetime.start(i64 128, i8* %63) #1
  %64 = bitcast %union.color_fracs* %next to i8*
  call void @llvm.lifetime.start(i64 128, i8* %64) #1
  %65 = bitcast i16** %bufend to i8*
  call void @llvm.lifetime.start(i64 8, i8* %65) #1
  %66 = load i16*, i16** %psrc, align 8, !tbaa !1
  %67 = load i32, i32* %w.addr, align 4, !tbaa !5
  %idx.ext14 = zext i32 %67 to i64
  %add.ptr15 = getelementptr inbounds i16, i16* %66, i64 %idx.ext14
  store i16* %add.ptr15, i16** %bufend, align 8, !tbaa !1
  %68 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %68) #1
  store i32 0, i32* %code, align 4, !tbaa !5
  %69 = bitcast i32* %mcode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %69) #1
  store i32 0, i32* %mcode, align 4, !tbaa !5
  %70 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %70) #1
  %71 = bitcast i32* %is_devn to i8*
  call void @llvm.lifetime.start(i64 4, i8* %71) #1
  store i32 0, i32* %is_devn, align 4, !tbaa !5
  %72 = bitcast i32* %is_sep to i8*
  call void @llvm.lifetime.start(i64 4, i8* %72) #1
  %73 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pcs16 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %73, i32 0, i32 31
  %74 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs16, align 8, !tbaa !37
  %call17 = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %74) #6
  %cmp = icmp eq i32 %call17, 9
  %conv18 = zext i1 %cmp to i32
  store i32 %conv18, i32* %is_sep, align 4, !tbaa !5
  %75 = load i32, i32* %h.addr, align 4, !tbaa !5
  %cmp19 = icmp eq i32 %75, 0
  br i1 %cmp19, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.565

if.end:                                           ; preds = %entry
  %76 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %76, i32 0, i32 55
  %pixel0 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda, i32 0, i32 2
  %77 = bitcast %struct.gx_dda_fixed_point_s* %pnext to i8*
  %78 = bitcast %struct.gx_dda_fixed_point_s* %pixel0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %77, i8* %78, i64 40, i32 4, i1 false), !tbaa.struct !99
  %x = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pnext, i32 0, i32 0
  %state = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x, i32 0, i32 0
  %Q = getelementptr inbounds %struct._a, %struct._a* %state, i32 0, i32 0
  %79 = load i32, i32* %Q, align 4, !tbaa !100
  store i32 %79, i32* %xl, align 4, !tbaa !5
  store i32 %79, i32* %xrun, align 4, !tbaa !5
  %80 = load i32, i32* %xrun, align 4, !tbaa !5
  %add = add nsw i32 %80, 128
  %shr = ashr i32 %add, 8
  store i32 %shr, i32* %irun, align 4, !tbaa !5
  %y = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pnext, i32 0, i32 1
  %state21 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y, i32 0, i32 0
  %Q22 = getelementptr inbounds %struct._a, %struct._a* %state21, i32 0, i32 0
  %81 = load i32, i32* %Q22, align 4, !tbaa !101
  store i32 %81, i32* %ytf, align 4, !tbaa !5
  store i32 %81, i32* %yrun, align 4, !tbaa !5
  %82 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda23 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %82, i32 0, i32 55
  %row = getelementptr inbounds %struct.dd_, %struct.dd_* %dda23, i32 0, i32 0
  %x24 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %row, i32 0, i32 0
  %state25 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x24, i32 0, i32 0
  %Q26 = getelementptr inbounds %struct._a, %struct._a* %state25, i32 0, i32 0
  %83 = load i32, i32* %Q26, align 4, !tbaa !102
  %84 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %cur = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %84, i32 0, i32 53
  %x27 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cur, i32 0, i32 0
  %85 = load i32, i32* %x27, align 4, !tbaa !103
  %sub = sub nsw i32 %83, %85
  store i32 %sub, i32* %pdyx, align 4, !tbaa !5
  %86 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda28 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %86, i32 0, i32 55
  %row29 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda28, i32 0, i32 0
  %y30 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %row29, i32 0, i32 1
  %state31 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y30, i32 0, i32 0
  %Q32 = getelementptr inbounds %struct._a, %struct._a* %state31, i32 0, i32 0
  %87 = load i32, i32* %Q32, align 4, !tbaa !104
  %88 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %cur33 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %88, i32 0, i32 53
  %y34 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cur33, i32 0, i32 1
  %89 = load i32, i32* %y34, align 4, !tbaa !105
  %sub35 = sub nsw i32 %87, %89
  store i32 %sub35, i32* %pdyy, align 4, !tbaa !5
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %90 = bitcast %union.color_fracs* %run to i8*
  %call36 = call i8* @memset(i8* %90, i32 0, i64 128) #7
  %91 = bitcast %union.color_fracs* %next to i8*
  %call37 = call i8* @memset(i8* %91, i32 0, i64 128) #7
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %devc1, i32 0, i32 1
  %pure = bitcast %union._c* %colors to i64*
  store i64 -1, i64* %pure, align 8, !tbaa !106
  %type38 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %devc1, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_pure, %struct.gx_device_color_type_s** %type38, align 8, !tbaa !107
  %ccolor_valid = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %devc1, i32 0, i32 3
  store i32 0, i32* %ccolor_valid, align 4, !tbaa !108
  %colors39 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %devc2, i32 0, i32 1
  %pure40 = bitcast %union._c* %colors39 to i64*
  store i64 -1, i64* %pure40, align 8, !tbaa !106
  %type41 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %devc2, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_pure, %struct.gx_device_color_type_s** %type41, align 8, !tbaa !107
  %ccolor_valid42 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %devc2, i32 0, i32 3
  store i32 0, i32* %ccolor_valid42, align 4, !tbaa !108
  %pattern = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 0
  store %struct.gs_pattern_instance_s* null, %struct.gs_pattern_instance_s** %pattern, align 8, !tbaa !109
  %92 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %type43 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %92, i32 0, i32 0
  %93 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type43, align 8, !tbaa !41
  %init_color = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %93, i32 0, i32 5
  %94 = load void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)** %init_color, align 8, !tbaa !110
  %95 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  call void %94(%struct.gs_client_color_s* %cc, %struct.gs_color_space_s* %95) #6
  %96 = load i16*, i16** %psrc, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %96, i64 0
  %97 = load i16, i16* %arrayidx, align 2, !tbaa !8
  %conv44 = sext i16 %97 to i32
  %neg = xor i32 %conv44, -1
  %conv45 = trunc i32 %neg to i16
  %v = bitcast %union.color_fracs* %run to [64 x i16]*
  %arrayidx46 = getelementptr inbounds [64 x i16], [64 x i16]* %v, i32 0, i64 0
  store i16 %conv45, i16* %arrayidx46, align 2, !tbaa !8
  %98 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %98, i32 0, i32 42
  %dev_spec_op = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 65
  %99 = load i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)** %dev_spec_op, align 8, !tbaa !111
  %100 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call47 = call i32 %99(%struct.gx_device_s* %100, i32 11, i8* null, i32 0) #6
  %tobool = icmp ne i32 %call47, 0
  br i1 %tobool, label %if.then.48, label %if.end.58

if.then.48:                                       ; preds = %do.end
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.48
  %101 = load i32, i32* %i, align 4, !tbaa !5
  %cmp49 = icmp slt i32 %101, 64
  br i1 %cmp49, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %102 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %102 to i64
  %103 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %colors51 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %103, i32 0, i32 1
  %devn = bitcast %union._c* %colors51 to %struct._devn*
  %values = getelementptr inbounds %struct._devn, %struct._devn* %devn, i32 0, i32 0
  %arrayidx52 = getelementptr inbounds [64 x i16], [64 x i16]* %values, i32 0, i64 %idxprom
  store i16 0, i16* %arrayidx52, align 2, !tbaa !8
  %104 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom53 = sext i32 %104 to i64
  %105 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc_next, align 8, !tbaa !1
  %colors54 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %105, i32 0, i32 1
  %devn55 = bitcast %union._c* %colors54 to %struct._devn*
  %values56 = getelementptr inbounds %struct._devn, %struct._devn* %devn55, i32 0, i32 0
  %arrayidx57 = getelementptr inbounds [64 x i16], [64 x i16]* %values56, i32 0, i64 %idxprom53
  store i16 0, i16* %arrayidx57, align 2, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %106 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %106, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %is_devn, align 4, !tbaa !5
  br label %if.end.58

if.end.58:                                        ; preds = %for.end, %do.end
  br label %while.cond

while.cond:                                       ; preds = %do.end.525, %if.end.58
  %107 = load i16*, i16** %psrc, align 8, !tbaa !1
  %108 = load i16*, i16** %bufend, align 8, !tbaa !1
  %cmp59 = icmp ult i16* %107, %108
  br i1 %cmp59, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %109 = load i16*, i16** %psrc, align 8, !tbaa !1
  %arrayidx61 = getelementptr inbounds i16, i16* %109, i64 0
  %110 = load i16, i16* %arrayidx61, align 2, !tbaa !8
  %v62 = bitcast %union.color_fracs* %next to [64 x i16]*
  %arrayidx63 = getelementptr inbounds [64 x i16], [64 x i16]* %v62, i32 0, i64 0
  store i16 %110, i16* %arrayidx63, align 2, !tbaa !8
  %111 = load i32, i32* %spp, align 4, !tbaa !5
  switch i32 %111, label %sw.default [
    i32 4, label %sw.bb
    i32 3, label %sw.bb.162
    i32 1, label %sw.bb.247
  ]

sw.bb:                                            ; preds = %while.body
  %112 = load i16*, i16** %psrc, align 8, !tbaa !1
  %arrayidx64 = getelementptr inbounds i16, i16* %112, i64 1
  %113 = load i16, i16* %arrayidx64, align 2, !tbaa !8
  %v65 = bitcast %union.color_fracs* %next to [64 x i16]*
  %arrayidx66 = getelementptr inbounds [64 x i16], [64 x i16]* %v65, i32 0, i64 1
  store i16 %113, i16* %arrayidx66, align 2, !tbaa !8
  %114 = load i16*, i16** %psrc, align 8, !tbaa !1
  %arrayidx67 = getelementptr inbounds i16, i16* %114, i64 2
  %115 = load i16, i16* %arrayidx67, align 2, !tbaa !8
  %v68 = bitcast %union.color_fracs* %next to [64 x i16]*
  %arrayidx69 = getelementptr inbounds [64 x i16], [64 x i16]* %v68, i32 0, i64 2
  store i16 %115, i16* %arrayidx69, align 2, !tbaa !8
  %116 = load i16*, i16** %psrc, align 8, !tbaa !1
  %arrayidx70 = getelementptr inbounds i16, i16* %116, i64 3
  %117 = load i16, i16* %arrayidx70, align 2, !tbaa !8
  %v71 = bitcast %union.color_fracs* %next to [64 x i16]*
  %arrayidx72 = getelementptr inbounds [64 x i16], [64 x i16]* %v71, i32 0, i64 3
  store i16 %117, i16* %arrayidx72, align 2, !tbaa !8
  %118 = load i16*, i16** %psrc, align 8, !tbaa !1
  %add.ptr73 = getelementptr inbounds i16, i16* %118, i64 4
  store i16* %add.ptr73, i16** %psrc, align 8, !tbaa !1
  %all = bitcast %union.color_fracs* %next to [16 x i64]*
  %arrayidx74 = getelementptr inbounds [16 x i64], [16 x i64]* %all, i32 0, i64 0
  %119 = load i64, i64* %arrayidx74, align 8, !tbaa !106
  %all75 = bitcast %union.color_fracs* %run to [16 x i64]*
  %arrayidx76 = getelementptr inbounds [16 x i64], [16 x i64]* %all75, i32 0, i64 0
  %120 = load i64, i64* %arrayidx76, align 8, !tbaa !106
  %cmp77 = icmp eq i64 %119, %120
  br i1 %cmp77, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %sw.bb
  br label %inc.448

if.end.80:                                        ; preds = %sw.bb
  %121 = load i32, i32* %use_mask_color, align 4, !tbaa !5
  %tobool81 = icmp ne i32 %121, 0
  br i1 %tobool81, label %land.lhs.true, label %if.end.87

land.lhs.true:                                    ; preds = %if.end.80
  %v82 = bitcast %union.color_fracs* %next to [64 x i16]*
  %arraydecay = getelementptr inbounds [64 x i16], [64 x i16]* %v82, i32 0, i32 0
  %122 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %call83 = call i32 @mask_color12_matches(i16* %arraydecay, %struct.gx_image_enum_s* %122, i32 4) #6
  %tobool84 = icmp ne i32 %call83, 0
  br i1 %tobool84, label %if.then.85, label %if.end.87

if.then.85:                                       ; preds = %land.lhs.true
  %123 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc_next, align 8, !tbaa !1
  %type86 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %123, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_null, %struct.gx_device_color_type_s** %type86, align 8, !tbaa !107
  br label %f

if.end.87:                                        ; preds = %land.lhs.true, %if.end.80
  %124 = load i32, i32* %device_color, align 4, !tbaa !5
  %tobool88 = icmp ne i32 %124, 0
  br i1 %tobool88, label %if.then.89, label %if.end.98

if.then.89:                                       ; preds = %if.end.87
  %125 = load void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32, %struct.gs_color_space_s*)*, void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32, %struct.gs_color_space_s*)** %map_cmyk, align 8, !tbaa !1
  %v90 = bitcast %union.color_fracs* %next to [64 x i16]*
  %arrayidx91 = getelementptr inbounds [64 x i16], [64 x i16]* %v90, i32 0, i64 0
  %126 = load i16, i16* %arrayidx91, align 2, !tbaa !8
  %v92 = bitcast %union.color_fracs* %next to [64 x i16]*
  %arrayidx93 = getelementptr inbounds [64 x i16], [64 x i16]* %v92, i32 0, i64 1
  %127 = load i16, i16* %arrayidx93, align 2, !tbaa !8
  %v94 = bitcast %union.color_fracs* %next to [64 x i16]*
  %arrayidx95 = getelementptr inbounds [64 x i16], [64 x i16]* %v94, i32 0, i64 2
  %128 = load i16, i16* %arrayidx95, align 2, !tbaa !8
  %v96 = bitcast %union.color_fracs* %next to [64 x i16]*
  %arrayidx97 = getelementptr inbounds [64 x i16], [64 x i16]* %v96, i32 0, i64 3
  %129 = load i16, i16* %arrayidx97, align 2, !tbaa !8
  %130 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc_next, align 8, !tbaa !1
  %131 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %132 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  call void %125(i16 signext %126, i16 signext %127, i16 signext %128, i16 signext %129, %struct.gx_device_color_s* %130, %struct.gs_imager_state_s* %131, %struct.gx_device_s* %132, i32 1, %struct.gs_color_space_s* null) #6
  br label %f

if.end.98:                                        ; preds = %if.end.87
  %133 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %133, i32 0, i32 64
  %arrayidx99 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map, i32 0, i64 0
  %decode_lookup = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx99, i32 0, i32 1
  %arrayidx100 = getelementptr inbounds [16 x float], [16 x float]* %decode_lookup, i32 0, i64 0
  %134 = load float, float* %arrayidx100, align 4, !tbaa !112
  %v101 = bitcast %union.color_fracs* %next to [64 x i16]*
  %arrayidx102 = getelementptr inbounds [64 x i16], [64 x i16]* %v101, i32 0, i64 0
  %135 = load i16, i16* %arrayidx102, align 2, !tbaa !8
  %conv103 = sext i16 %135 to i32
  %conv104 = sitofp i32 %conv103 to float
  %136 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map105 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %136, i32 0, i32 64
  %arrayidx106 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map105, i32 0, i64 0
  %decode_factor = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx106, i32 0, i32 2
  %137 = load float, float* %decode_factor, align 4, !tbaa !113
  %mul107 = fmul float %conv104, %137
  %add108 = fadd float %134, %mul107
  %paint = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values109 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint, i32 0, i32 0
  %arrayidx110 = getelementptr inbounds [64 x float], [64 x float]* %values109, i32 0, i64 0
  store float %add108, float* %arrayidx110, align 4, !tbaa !112
  %138 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map111 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %138, i32 0, i32 64
  %arrayidx112 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map111, i32 0, i64 1
  %decode_lookup113 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx112, i32 0, i32 1
  %arrayidx114 = getelementptr inbounds [16 x float], [16 x float]* %decode_lookup113, i32 0, i64 0
  %139 = load float, float* %arrayidx114, align 4, !tbaa !112
  %v115 = bitcast %union.color_fracs* %next to [64 x i16]*
  %arrayidx116 = getelementptr inbounds [64 x i16], [64 x i16]* %v115, i32 0, i64 1
  %140 = load i16, i16* %arrayidx116, align 2, !tbaa !8
  %conv117 = sext i16 %140 to i32
  %conv118 = sitofp i32 %conv117 to float
  %141 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map119 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %141, i32 0, i32 64
  %arrayidx120 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map119, i32 0, i64 1
  %decode_factor121 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx120, i32 0, i32 2
  %142 = load float, float* %decode_factor121, align 4, !tbaa !113
  %mul122 = fmul float %conv118, %142
  %add123 = fadd float %139, %mul122
  %paint124 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values125 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint124, i32 0, i32 0
  %arrayidx126 = getelementptr inbounds [64 x float], [64 x float]* %values125, i32 0, i64 1
  store float %add123, float* %arrayidx126, align 4, !tbaa !112
  %143 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map127 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %143, i32 0, i32 64
  %arrayidx128 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map127, i32 0, i64 2
  %decode_lookup129 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx128, i32 0, i32 1
  %arrayidx130 = getelementptr inbounds [16 x float], [16 x float]* %decode_lookup129, i32 0, i64 0
  %144 = load float, float* %arrayidx130, align 4, !tbaa !112
  %v131 = bitcast %union.color_fracs* %next to [64 x i16]*
  %arrayidx132 = getelementptr inbounds [64 x i16], [64 x i16]* %v131, i32 0, i64 2
  %145 = load i16, i16* %arrayidx132, align 2, !tbaa !8
  %conv133 = sext i16 %145 to i32
  %conv134 = sitofp i32 %conv133 to float
  %146 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map135 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %146, i32 0, i32 64
  %arrayidx136 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map135, i32 0, i64 2
  %decode_factor137 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx136, i32 0, i32 2
  %147 = load float, float* %decode_factor137, align 4, !tbaa !113
  %mul138 = fmul float %conv134, %147
  %add139 = fadd float %144, %mul138
  %paint140 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values141 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint140, i32 0, i32 0
  %arrayidx142 = getelementptr inbounds [64 x float], [64 x float]* %values141, i32 0, i64 2
  store float %add139, float* %arrayidx142, align 4, !tbaa !112
  %148 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map143 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %148, i32 0, i32 64
  %arrayidx144 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map143, i32 0, i64 3
  %decode_lookup145 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx144, i32 0, i32 1
  %arrayidx146 = getelementptr inbounds [16 x float], [16 x float]* %decode_lookup145, i32 0, i64 0
  %149 = load float, float* %arrayidx146, align 4, !tbaa !112
  %v147 = bitcast %union.color_fracs* %next to [64 x i16]*
  %arrayidx148 = getelementptr inbounds [64 x i16], [64 x i16]* %v147, i32 0, i64 3
  %150 = load i16, i16* %arrayidx148, align 2, !tbaa !8
  %conv149 = sext i16 %150 to i32
  %conv150 = sitofp i32 %conv149 to float
  %151 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map151 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %151, i32 0, i32 64
  %arrayidx152 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map151, i32 0, i64 3
  %decode_factor153 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx152, i32 0, i32 2
  %152 = load float, float* %decode_factor153, align 4, !tbaa !113
  %mul154 = fmul float %conv150, %152
  %add155 = fadd float %149, %mul154
  %paint156 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values157 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint156, i32 0, i32 0
  %arrayidx158 = getelementptr inbounds [64 x float], [64 x float]* %values157, i32 0, i64 3
  store float %add155, float* %arrayidx158, align 4, !tbaa !112
  br label %do.body.159

do.body.159:                                      ; preds = %if.end.98
  br label %do.cond.160

do.cond.160:                                      ; preds = %do.body.159
  br label %do.end.161

do.end.161:                                       ; preds = %do.cond.160
  br label %sw.epilog

sw.bb.162:                                        ; preds = %while.body
  %153 = load i16*, i16** %psrc, align 8, !tbaa !1
  %arrayidx163 = getelementptr inbounds i16, i16* %153, i64 1
  %154 = load i16, i16* %arrayidx163, align 2, !tbaa !8
  %v164 = bitcast %union.color_fracs* %next to [64 x i16]*
  %arrayidx165 = getelementptr inbounds [64 x i16], [64 x i16]* %v164, i32 0, i64 1
  store i16 %154, i16* %arrayidx165, align 2, !tbaa !8
  %155 = load i16*, i16** %psrc, align 8, !tbaa !1
  %arrayidx166 = getelementptr inbounds i16, i16* %155, i64 2
  %156 = load i16, i16* %arrayidx166, align 2, !tbaa !8
  %v167 = bitcast %union.color_fracs* %next to [64 x i16]*
  %arrayidx168 = getelementptr inbounds [64 x i16], [64 x i16]* %v167, i32 0, i64 2
  store i16 %156, i16* %arrayidx168, align 2, !tbaa !8
  %157 = load i16*, i16** %psrc, align 8, !tbaa !1
  %add.ptr169 = getelementptr inbounds i16, i16* %157, i64 3
  store i16* %add.ptr169, i16** %psrc, align 8, !tbaa !1
  %all170 = bitcast %union.color_fracs* %next to [16 x i64]*
  %arrayidx171 = getelementptr inbounds [16 x i64], [16 x i64]* %all170, i32 0, i64 0
  %158 = load i64, i64* %arrayidx171, align 8, !tbaa !106
  %all172 = bitcast %union.color_fracs* %run to [16 x i64]*
  %arrayidx173 = getelementptr inbounds [16 x i64], [16 x i64]* %all172, i32 0, i64 0
  %159 = load i64, i64* %arrayidx173, align 8, !tbaa !106
  %cmp174 = icmp eq i64 %158, %159
  br i1 %cmp174, label %if.then.176, label %if.end.177

if.then.176:                                      ; preds = %sw.bb.162
  br label %inc.448

if.end.177:                                       ; preds = %sw.bb.162
  %160 = load i32, i32* %use_mask_color, align 4, !tbaa !5
  %tobool178 = icmp ne i32 %160, 0
  br i1 %tobool178, label %land.lhs.true.179, label %if.end.186

land.lhs.true.179:                                ; preds = %if.end.177
  %v180 = bitcast %union.color_fracs* %next to [64 x i16]*
  %arraydecay181 = getelementptr inbounds [64 x i16], [64 x i16]* %v180, i32 0, i32 0
  %161 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %call182 = call i32 @mask_color12_matches(i16* %arraydecay181, %struct.gx_image_enum_s* %161, i32 3) #6
  %tobool183 = icmp ne i32 %call182, 0
  br i1 %tobool183, label %if.then.184, label %if.end.186

if.then.184:                                      ; preds = %land.lhs.true.179
  %162 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc_next, align 8, !tbaa !1
  %type185 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %162, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_null, %struct.gx_device_color_type_s** %type185, align 8, !tbaa !107
  br label %f

if.end.186:                                       ; preds = %land.lhs.true.179, %if.end.177
  %163 = load i32, i32* %device_color, align 4, !tbaa !5
  %tobool187 = icmp ne i32 %163, 0
  br i1 %tobool187, label %if.then.188, label %if.end.195

if.then.188:                                      ; preds = %if.end.186
  %164 = load void (i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %map_rgb, align 8, !tbaa !1
  %v189 = bitcast %union.color_fracs* %next to [64 x i16]*
  %arrayidx190 = getelementptr inbounds [64 x i16], [64 x i16]* %v189, i32 0, i64 0
  %165 = load i16, i16* %arrayidx190, align 2, !tbaa !8
  %v191 = bitcast %union.color_fracs* %next to [64 x i16]*
  %arrayidx192 = getelementptr inbounds [64 x i16], [64 x i16]* %v191, i32 0, i64 1
  %166 = load i16, i16* %arrayidx192, align 2, !tbaa !8
  %v193 = bitcast %union.color_fracs* %next to [64 x i16]*
  %arrayidx194 = getelementptr inbounds [64 x i16], [64 x i16]* %v193, i32 0, i64 2
  %167 = load i16, i16* %arrayidx194, align 2, !tbaa !8
  %168 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc_next, align 8, !tbaa !1
  %169 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %170 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  call void %164(i16 signext %165, i16 signext %166, i16 signext %167, %struct.gx_device_color_s* %168, %struct.gs_imager_state_s* %169, %struct.gx_device_s* %170, i32 1) #6
  br label %f

if.end.195:                                       ; preds = %if.end.186
  %171 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map196 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %171, i32 0, i32 64
  %arrayidx197 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map196, i32 0, i64 0
  %decode_lookup198 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx197, i32 0, i32 1
  %arrayidx199 = getelementptr inbounds [16 x float], [16 x float]* %decode_lookup198, i32 0, i64 0
  %172 = load float, float* %arrayidx199, align 4, !tbaa !112
  %v200 = bitcast %union.color_fracs* %next to [64 x i16]*
  %arrayidx201 = getelementptr inbounds [64 x i16], [64 x i16]* %v200, i32 0, i64 0
  %173 = load i16, i16* %arrayidx201, align 2, !tbaa !8
  %conv202 = sext i16 %173 to i32
  %conv203 = sitofp i32 %conv202 to float
  %174 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map204 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %174, i32 0, i32 64
  %arrayidx205 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map204, i32 0, i64 0
  %decode_factor206 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx205, i32 0, i32 2
  %175 = load float, float* %decode_factor206, align 4, !tbaa !113
  %mul207 = fmul float %conv203, %175
  %add208 = fadd float %172, %mul207
  %paint209 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values210 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint209, i32 0, i32 0
  %arrayidx211 = getelementptr inbounds [64 x float], [64 x float]* %values210, i32 0, i64 0
  store float %add208, float* %arrayidx211, align 4, !tbaa !112
  %176 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map212 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %176, i32 0, i32 64
  %arrayidx213 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map212, i32 0, i64 1
  %decode_lookup214 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx213, i32 0, i32 1
  %arrayidx215 = getelementptr inbounds [16 x float], [16 x float]* %decode_lookup214, i32 0, i64 0
  %177 = load float, float* %arrayidx215, align 4, !tbaa !112
  %v216 = bitcast %union.color_fracs* %next to [64 x i16]*
  %arrayidx217 = getelementptr inbounds [64 x i16], [64 x i16]* %v216, i32 0, i64 1
  %178 = load i16, i16* %arrayidx217, align 2, !tbaa !8
  %conv218 = sext i16 %178 to i32
  %conv219 = sitofp i32 %conv218 to float
  %179 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map220 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %179, i32 0, i32 64
  %arrayidx221 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map220, i32 0, i64 1
  %decode_factor222 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx221, i32 0, i32 2
  %180 = load float, float* %decode_factor222, align 4, !tbaa !113
  %mul223 = fmul float %conv219, %180
  %add224 = fadd float %177, %mul223
  %paint225 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values226 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint225, i32 0, i32 0
  %arrayidx227 = getelementptr inbounds [64 x float], [64 x float]* %values226, i32 0, i64 1
  store float %add224, float* %arrayidx227, align 4, !tbaa !112
  %181 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map228 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %181, i32 0, i32 64
  %arrayidx229 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map228, i32 0, i64 2
  %decode_lookup230 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx229, i32 0, i32 1
  %arrayidx231 = getelementptr inbounds [16 x float], [16 x float]* %decode_lookup230, i32 0, i64 0
  %182 = load float, float* %arrayidx231, align 4, !tbaa !112
  %v232 = bitcast %union.color_fracs* %next to [64 x i16]*
  %arrayidx233 = getelementptr inbounds [64 x i16], [64 x i16]* %v232, i32 0, i64 2
  %183 = load i16, i16* %arrayidx233, align 2, !tbaa !8
  %conv234 = sext i16 %183 to i32
  %conv235 = sitofp i32 %conv234 to float
  %184 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map236 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %184, i32 0, i32 64
  %arrayidx237 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map236, i32 0, i64 2
  %decode_factor238 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx237, i32 0, i32 2
  %185 = load float, float* %decode_factor238, align 4, !tbaa !113
  %mul239 = fmul float %conv235, %185
  %add240 = fadd float %182, %mul239
  %paint241 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values242 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint241, i32 0, i32 0
  %arrayidx243 = getelementptr inbounds [64 x float], [64 x float]* %values242, i32 0, i64 2
  store float %add240, float* %arrayidx243, align 4, !tbaa !112
  br label %do.body.244

do.body.244:                                      ; preds = %if.end.195
  br label %do.cond.245

do.cond.245:                                      ; preds = %do.body.244
  br label %do.end.246

do.end.246:                                       ; preds = %do.cond.245
  br label %sw.epilog

sw.bb.247:                                        ; preds = %while.body
  %186 = load i32, i32* %is_devn, align 4, !tbaa !5
  %tobool248 = icmp ne i32 %186, 0
  br i1 %tobool248, label %land.lhs.true.249, label %if.else

land.lhs.true.249:                                ; preds = %sw.bb.247
  %187 = load i32, i32* %is_sep, align 4, !tbaa !5
  %tobool250 = icmp ne i32 %187, 0
  br i1 %tobool250, label %if.then.251, label %if.else

if.then.251:                                      ; preds = %land.lhs.true.249
  %188 = load i16*, i16** %psrc, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i16, i16* %188, i32 1
  store i16* %incdec.ptr, i16** %psrc, align 8, !tbaa !1
  %v252 = bitcast %union.color_fracs* %next to [64 x i16]*
  %arrayidx253 = getelementptr inbounds [64 x i16], [64 x i16]* %v252, i32 0, i64 0
  %189 = load i16, i16* %arrayidx253, align 2, !tbaa !8
  %conv254 = sext i16 %189 to i32
  %v255 = bitcast %union.color_fracs* %run to [64 x i16]*
  %arrayidx256 = getelementptr inbounds [64 x i16], [64 x i16]* %v255, i32 0, i64 0
  %190 = load i16, i16* %arrayidx256, align 2, !tbaa !8
  %conv257 = sext i16 %190 to i32
  %cmp258 = icmp eq i32 %conv254, %conv257
  br i1 %cmp258, label %if.then.260, label %if.end.261

if.then.260:                                      ; preds = %if.then.251
  br label %inc.448

if.end.261:                                       ; preds = %if.then.251
  %191 = load i32, i32* %use_mask_color, align 4, !tbaa !5
  %tobool262 = icmp ne i32 %191, 0
  br i1 %tobool262, label %land.lhs.true.263, label %if.end.270

land.lhs.true.263:                                ; preds = %if.end.261
  %v264 = bitcast %union.color_fracs* %next to [64 x i16]*
  %arraydecay265 = getelementptr inbounds [64 x i16], [64 x i16]* %v264, i32 0, i32 0
  %192 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %call266 = call i32 @mask_color12_matches(i16* %arraydecay265, %struct.gx_image_enum_s* %192, i32 1) #6
  %tobool267 = icmp ne i32 %call266, 0
  br i1 %tobool267, label %if.then.268, label %if.end.270

if.then.268:                                      ; preds = %land.lhs.true.263
  %193 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc_next, align 8, !tbaa !1
  %type269 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %193, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_null, %struct.gx_device_color_type_s** %type269, align 8, !tbaa !107
  br label %f

if.end.270:                                       ; preds = %land.lhs.true.263, %if.end.261
  %194 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map271 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %194, i32 0, i32 64
  %arrayidx272 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map271, i32 0, i64 0
  %decode_lookup273 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx272, i32 0, i32 1
  %arrayidx274 = getelementptr inbounds [16 x float], [16 x float]* %decode_lookup273, i32 0, i64 0
  %195 = load float, float* %arrayidx274, align 4, !tbaa !112
  %v275 = bitcast %union.color_fracs* %next to [64 x i16]*
  %arrayidx276 = getelementptr inbounds [64 x i16], [64 x i16]* %v275, i32 0, i64 0
  %196 = load i16, i16* %arrayidx276, align 2, !tbaa !8
  %conv277 = sext i16 %196 to i32
  %conv278 = sitofp i32 %conv277 to float
  %197 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map279 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %197, i32 0, i32 64
  %arrayidx280 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map279, i32 0, i64 0
  %decode_factor281 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx280, i32 0, i32 2
  %198 = load float, float* %decode_factor281, align 4, !tbaa !113
  %mul282 = fmul float %conv278, %198
  %add283 = fadd float %195, %mul282
  %paint284 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values285 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint284, i32 0, i32 0
  %arrayidx286 = getelementptr inbounds [64 x float], [64 x float]* %values285, i32 0, i64 0
  store float %add283, float* %arrayidx286, align 4, !tbaa !112
  br label %do.body.287

do.body.287:                                      ; preds = %if.end.270
  br label %do.cond.288

do.cond.288:                                      ; preds = %do.body.287
  br label %do.end.289

do.end.289:                                       ; preds = %do.cond.288
  br label %sw.epilog

if.else:                                          ; preds = %land.lhs.true.249, %sw.bb.247
  %199 = load i16*, i16** %psrc, align 8, !tbaa !1
  %incdec.ptr290 = getelementptr inbounds i16, i16* %199, i32 1
  store i16* %incdec.ptr290, i16** %psrc, align 8, !tbaa !1
  %v291 = bitcast %union.color_fracs* %next to [64 x i16]*
  %arrayidx292 = getelementptr inbounds [64 x i16], [64 x i16]* %v291, i32 0, i64 0
  %200 = load i16, i16* %arrayidx292, align 2, !tbaa !8
  %conv293 = sext i16 %200 to i32
  %v294 = bitcast %union.color_fracs* %run to [64 x i16]*
  %arrayidx295 = getelementptr inbounds [64 x i16], [64 x i16]* %v294, i32 0, i64 0
  %201 = load i16, i16* %arrayidx295, align 2, !tbaa !8
  %conv296 = sext i16 %201 to i32
  %cmp297 = icmp eq i32 %conv293, %conv296
  br i1 %cmp297, label %if.then.299, label %if.end.300

if.then.299:                                      ; preds = %if.else
  br label %inc.448

if.end.300:                                       ; preds = %if.else
  %202 = load i32, i32* %use_mask_color, align 4, !tbaa !5
  %tobool301 = icmp ne i32 %202, 0
  br i1 %tobool301, label %land.lhs.true.302, label %if.end.309

land.lhs.true.302:                                ; preds = %if.end.300
  %v303 = bitcast %union.color_fracs* %next to [64 x i16]*
  %arraydecay304 = getelementptr inbounds [64 x i16], [64 x i16]* %v303, i32 0, i32 0
  %203 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %call305 = call i32 @mask_color12_matches(i16* %arraydecay304, %struct.gx_image_enum_s* %203, i32 1) #6
  %tobool306 = icmp ne i32 %call305, 0
  br i1 %tobool306, label %if.then.307, label %if.end.309

if.then.307:                                      ; preds = %land.lhs.true.302
  %204 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc_next, align 8, !tbaa !1
  %type308 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %204, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_null, %struct.gx_device_color_type_s** %type308, align 8, !tbaa !107
  br label %f

if.end.309:                                       ; preds = %land.lhs.true.302, %if.end.300
  %205 = load i32, i32* %device_color, align 4, !tbaa !5
  %tobool310 = icmp ne i32 %205, 0
  br i1 %tobool310, label %if.then.311, label %if.end.318

if.then.311:                                      ; preds = %if.end.309
  %206 = load void (i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %map_rgb, align 8, !tbaa !1
  %v312 = bitcast %union.color_fracs* %next to [64 x i16]*
  %arrayidx313 = getelementptr inbounds [64 x i16], [64 x i16]* %v312, i32 0, i64 0
  %207 = load i16, i16* %arrayidx313, align 2, !tbaa !8
  %v314 = bitcast %union.color_fracs* %next to [64 x i16]*
  %arrayidx315 = getelementptr inbounds [64 x i16], [64 x i16]* %v314, i32 0, i64 0
  %208 = load i16, i16* %arrayidx315, align 2, !tbaa !8
  %v316 = bitcast %union.color_fracs* %next to [64 x i16]*
  %arrayidx317 = getelementptr inbounds [64 x i16], [64 x i16]* %v316, i32 0, i64 0
  %209 = load i16, i16* %arrayidx317, align 2, !tbaa !8
  %210 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc_next, align 8, !tbaa !1
  %211 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %212 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  call void %206(i16 signext %207, i16 signext %208, i16 signext %209, %struct.gx_device_color_s* %210, %struct.gs_imager_state_s* %211, %struct.gx_device_s* %212, i32 1) #6
  br label %f

if.end.318:                                       ; preds = %if.end.309
  %213 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map319 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %213, i32 0, i32 64
  %arrayidx320 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map319, i32 0, i64 0
  %decode_lookup321 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx320, i32 0, i32 1
  %arrayidx322 = getelementptr inbounds [16 x float], [16 x float]* %decode_lookup321, i32 0, i64 0
  %214 = load float, float* %arrayidx322, align 4, !tbaa !112
  %v323 = bitcast %union.color_fracs* %next to [64 x i16]*
  %arrayidx324 = getelementptr inbounds [64 x i16], [64 x i16]* %v323, i32 0, i64 0
  %215 = load i16, i16* %arrayidx324, align 2, !tbaa !8
  %conv325 = sext i16 %215 to i32
  %conv326 = sitofp i32 %conv325 to float
  %216 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map327 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %216, i32 0, i32 64
  %arrayidx328 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map327, i32 0, i64 0
  %decode_factor329 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx328, i32 0, i32 2
  %217 = load float, float* %decode_factor329, align 4, !tbaa !113
  %mul330 = fmul float %conv326, %217
  %add331 = fadd float %214, %mul330
  %paint332 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values333 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint332, i32 0, i32 0
  %arrayidx334 = getelementptr inbounds [64 x float], [64 x float]* %values333, i32 0, i64 0
  store float %add331, float* %arrayidx334, align 4, !tbaa !112
  br label %do.body.335

do.body.335:                                      ; preds = %if.end.318
  br label %do.cond.336

do.cond.336:                                      ; preds = %do.body.335
  br label %do.end.337

do.end.337:                                       ; preds = %do.cond.336
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  %218 = bitcast i32* %i338 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %218) #1
  store i32 1, i32* %i338, align 4, !tbaa !5
  br label %for.cond.339

for.cond.339:                                     ; preds = %for.inc.348, %sw.default
  %219 = load i32, i32* %i338, align 4, !tbaa !5
  %220 = load i32, i32* %spp, align 4, !tbaa !5
  %cmp340 = icmp slt i32 %219, %220
  br i1 %cmp340, label %for.body.342, label %for.end.350

for.body.342:                                     ; preds = %for.cond.339
  %221 = load i32, i32* %i338, align 4, !tbaa !5
  %idxprom343 = sext i32 %221 to i64
  %222 = load i16*, i16** %psrc, align 8, !tbaa !1
  %arrayidx344 = getelementptr inbounds i16, i16* %222, i64 %idxprom343
  %223 = load i16, i16* %arrayidx344, align 2, !tbaa !8
  %224 = load i32, i32* %i338, align 4, !tbaa !5
  %idxprom345 = sext i32 %224 to i64
  %v346 = bitcast %union.color_fracs* %next to [64 x i16]*
  %arrayidx347 = getelementptr inbounds [64 x i16], [64 x i16]* %v346, i32 0, i64 %idxprom345
  store i16 %223, i16* %arrayidx347, align 2, !tbaa !8
  br label %for.inc.348

for.inc.348:                                      ; preds = %for.body.342
  %225 = load i32, i32* %i338, align 4, !tbaa !5
  %inc349 = add nsw i32 %225, 1
  store i32 %inc349, i32* %i338, align 4, !tbaa !5
  br label %for.cond.339

for.end.350:                                      ; preds = %for.cond.339
  %226 = load i32, i32* %spp, align 4, !tbaa !5
  %227 = load i16*, i16** %psrc, align 8, !tbaa !1
  %idx.ext351 = sext i32 %226 to i64
  %add.ptr352 = getelementptr inbounds i16, i16* %227, i64 %idx.ext351
  store i16* %add.ptr352, i16** %psrc, align 8, !tbaa !1
  %v353 = bitcast %union.color_fracs* %next to [64 x i16]*
  %arraydecay354 = getelementptr inbounds [64 x i16], [64 x i16]* %v353, i32 0, i32 0
  %228 = bitcast i16* %arraydecay354 to i8*
  %v355 = bitcast %union.color_fracs* %run to [64 x i16]*
  %arraydecay356 = getelementptr inbounds [64 x i16], [64 x i16]* %v355, i32 0, i32 0
  %229 = bitcast i16* %arraydecay356 to i8*
  %230 = load i32, i32* %spp, align 4, !tbaa !5
  %conv357 = sext i32 %230 to i64
  %mul358 = mul i64 %conv357, 2
  %call359 = call i32 @memcmp(i8* %228, i8* %229, i64 %mul358) #8
  %tobool360 = icmp ne i32 %call359, 0
  br i1 %tobool360, label %if.end.362, label %if.then.361

if.then.361:                                      ; preds = %for.end.350
  store i32 10, i32* %cleanup.dest.slot
  br label %cleanup

if.end.362:                                       ; preds = %for.end.350
  %231 = load i32, i32* %use_mask_color, align 4, !tbaa !5
  %tobool363 = icmp ne i32 %231, 0
  br i1 %tobool363, label %land.lhs.true.364, label %if.end.371

land.lhs.true.364:                                ; preds = %if.end.362
  %v365 = bitcast %union.color_fracs* %next to [64 x i16]*
  %arraydecay366 = getelementptr inbounds [64 x i16], [64 x i16]* %v365, i32 0, i32 0
  %232 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %233 = load i32, i32* %spp, align 4, !tbaa !5
  %call367 = call i32 @mask_color12_matches(i16* %arraydecay366, %struct.gx_image_enum_s* %232, i32 %233) #6
  %tobool368 = icmp ne i32 %call367, 0
  br i1 %tobool368, label %if.then.369, label %if.end.371

if.then.369:                                      ; preds = %land.lhs.true.364
  %234 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc_next, align 8, !tbaa !1
  %type370 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %234, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_null, %struct.gx_device_color_type_s** %type370, align 8, !tbaa !107
  store i32 11, i32* %cleanup.dest.slot
  br label %cleanup

if.end.371:                                       ; preds = %land.lhs.true.364, %if.end.362
  store i32 0, i32* %i338, align 4, !tbaa !5
  br label %for.cond.372

for.cond.372:                                     ; preds = %for.inc.396, %if.end.371
  %235 = load i32, i32* %i338, align 4, !tbaa !5
  %236 = load i32, i32* %spp, align 4, !tbaa !5
  %cmp373 = icmp slt i32 %235, %236
  br i1 %cmp373, label %for.body.375, label %for.end.398

for.body.375:                                     ; preds = %for.cond.372
  %237 = load i32, i32* %i338, align 4, !tbaa !5
  %idxprom376 = sext i32 %237 to i64
  %238 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map377 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %238, i32 0, i32 64
  %arrayidx378 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map377, i32 0, i64 %idxprom376
  %decode_lookup379 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx378, i32 0, i32 1
  %arrayidx380 = getelementptr inbounds [16 x float], [16 x float]* %decode_lookup379, i32 0, i64 0
  %239 = load float, float* %arrayidx380, align 4, !tbaa !112
  %240 = load i32, i32* %i338, align 4, !tbaa !5
  %idxprom381 = sext i32 %240 to i64
  %v382 = bitcast %union.color_fracs* %next to [64 x i16]*
  %arrayidx383 = getelementptr inbounds [64 x i16], [64 x i16]* %v382, i32 0, i64 %idxprom381
  %241 = load i16, i16* %arrayidx383, align 2, !tbaa !8
  %conv384 = sext i16 %241 to i32
  %conv385 = sitofp i32 %conv384 to float
  %242 = load i32, i32* %i338, align 4, !tbaa !5
  %idxprom386 = sext i32 %242 to i64
  %243 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map387 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %243, i32 0, i32 64
  %arrayidx388 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map387, i32 0, i64 %idxprom386
  %decode_factor389 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx388, i32 0, i32 2
  %244 = load float, float* %decode_factor389, align 4, !tbaa !113
  %mul390 = fmul float %conv385, %244
  %add391 = fadd float %239, %mul390
  %245 = load i32, i32* %i338, align 4, !tbaa !5
  %idxprom392 = sext i32 %245 to i64
  %paint393 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values394 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint393, i32 0, i32 0
  %arrayidx395 = getelementptr inbounds [64 x float], [64 x float]* %values394, i32 0, i64 %idxprom392
  store float %add391, float* %arrayidx395, align 4, !tbaa !112
  br label %for.inc.396

for.inc.396:                                      ; preds = %for.body.375
  %246 = load i32, i32* %i338, align 4, !tbaa !5
  %inc397 = add nsw i32 %246, 1
  store i32 %inc397, i32* %i338, align 4, !tbaa !5
  br label %for.cond.372

for.end.398:                                      ; preds = %for.cond.372
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.369, %if.then.361, %for.end.398
  %247 = bitcast i32* %i338 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %247) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.565 [
    i32 0, label %cleanup.cont
    i32 11, label %f
    i32 10, label %inc.448
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %sw.epilog

sw.epilog:                                        ; preds = %cleanup.cont, %do.end.337, %do.end.289, %do.end.246, %do.end.161
  %248 = load i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %remap_color, align 8, !tbaa !1
  %249 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %250 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc_next, align 8, !tbaa !1
  %251 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %252 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call399 = call i32 %248(%struct.gs_client_color_s* %cc, %struct.gs_color_space_s* %249, %struct.gx_device_color_s* %250, %struct.gs_imager_state_s* %251, %struct.gx_device_s* %252, i32 1) #6
  store i32 %call399, i32* %mcode, align 4, !tbaa !5
  %253 = load i32, i32* %mcode, align 4, !tbaa !5
  %cmp400 = icmp slt i32 %253, 0
  br i1 %cmp400, label %if.then.402, label %if.end.403

if.then.402:                                      ; preds = %sw.epilog
  br label %fill

if.end.403:                                       ; preds = %sw.epilog
  br label %f

f:                                                ; preds = %if.end.403, %cleanup, %if.then.311, %if.then.307, %if.then.268, %if.then.188, %if.then.184, %if.then.89, %if.then.85
  br label %do.body.404

do.body.404:                                      ; preds = %f
  br label %do.cond.405

do.cond.405:                                      ; preds = %do.body.404
  br label %do.end.406

do.end.406:                                       ; preds = %do.cond.405
  %call407 = call i32 @gx_device_color_equal(%struct.gx_device_color_s* %devc1, %struct.gx_device_color_s* %devc2) #6
  %tobool408 = icmp ne i32 %call407, 0
  br i1 %tobool408, label %if.end.447, label %if.then.409

if.then.409:                                      ; preds = %do.end.406
  %254 = bitcast %struct.gx_device_color_s** %ptemp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %254) #1
  br label %fill

fill:                                             ; preds = %if.then.409, %if.then.402
  %255 = load i32, i32* %posture, align 4, !tbaa !7
  %cmp410 = icmp ne i32 %255, 0
  br i1 %cmp410, label %if.then.412, label %if.else.417

if.then.412:                                      ; preds = %fill
  %256 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs413 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %256, i32 0, i32 42
  %fill_parallelogram = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs413, i32 0, i32 28
  %257 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)** %fill_parallelogram, align 8, !tbaa !114
  %258 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %259 = load i32, i32* %xrun, align 4, !tbaa !5
  %260 = load i32, i32* %yrun, align 4, !tbaa !5
  %261 = load i32, i32* %xl, align 4, !tbaa !5
  %262 = load i32, i32* %xrun, align 4, !tbaa !5
  %sub414 = sub nsw i32 %261, %262
  %263 = load i32, i32* %ytf, align 4, !tbaa !5
  %264 = load i32, i32* %yrun, align 4, !tbaa !5
  %sub415 = sub nsw i32 %263, %264
  %265 = load i32, i32* %pdyx, align 4, !tbaa !5
  %266 = load i32, i32* %pdyy, align 4, !tbaa !5
  %267 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %268 = load i32, i32* %lop, align 4, !tbaa !5
  %call416 = call i32 %257(%struct.gx_device_s* %258, i32 %259, i32 %260, i32 %sub414, i32 %sub415, i32 %265, i32 %266, %struct.gx_device_color_s* %267, i32 %268) #6
  store i32 %call416, i32* %code, align 4, !tbaa !5
  br label %if.end.435

if.else.417:                                      ; preds = %fill
  %269 = bitcast i32* %xi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %269) #1
  %270 = load i32, i32* %irun, align 4, !tbaa !5
  store i32 %270, i32* %xi, align 4, !tbaa !5
  %271 = bitcast i32* %wi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %271) #1
  %272 = load i32, i32* %xl, align 4, !tbaa !5
  %add418 = add nsw i32 %272, 128
  %shr419 = ashr i32 %add418, 8
  store i32 %shr419, i32* %irun, align 4, !tbaa !5
  %273 = load i32, i32* %xi, align 4, !tbaa !5
  %sub420 = sub nsw i32 %shr419, %273
  store i32 %sub420, i32* %wi, align 4, !tbaa !5
  %274 = load i32, i32* %wi, align 4, !tbaa !5
  %cmp421 = icmp slt i32 %274, 0
  br i1 %cmp421, label %if.then.423, label %if.end.426

if.then.423:                                      ; preds = %if.else.417
  %275 = load i32, i32* %wi, align 4, !tbaa !5
  %276 = load i32, i32* %xi, align 4, !tbaa !5
  %add424 = add nsw i32 %276, %275
  store i32 %add424, i32* %xi, align 4, !tbaa !5
  %277 = load i32, i32* %wi, align 4, !tbaa !5
  %sub425 = sub nsw i32 0, %277
  store i32 %sub425, i32* %wi, align 4, !tbaa !5
  br label %if.end.426

if.end.426:                                       ; preds = %if.then.423, %if.else.417
  %278 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %type427 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %278, i32 0, i32 0
  %279 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type427, align 8, !tbaa !107
  %fill_rectangle = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %279, i32 0, i32 5
  %280 = load i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)** %fill_rectangle, align 8, !tbaa !115
  %281 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %282 = load i32, i32* %xi, align 4, !tbaa !5
  %283 = load i32, i32* %yt, align 4, !tbaa !5
  %284 = load i32, i32* %wi, align 4, !tbaa !5
  %285 = load i32, i32* %iht, align 4, !tbaa !5
  %286 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %287 = load i32, i32* %lop, align 4, !tbaa !5
  %call428 = call i32 %280(%struct.gx_device_color_s* %281, i32 %282, i32 %283, i32 %284, i32 %285, %struct.gx_device_s* %286, i32 %287, %struct.gx_rop_source_s* null) #6
  store i32 %call428, i32* %code, align 4, !tbaa !5
  br label %do.body.429

do.body.429:                                      ; preds = %if.end.426
  br label %do.cond.430

do.cond.430:                                      ; preds = %do.body.429
  br label %do.end.431

do.end.431:                                       ; preds = %do.cond.430
  br label %do.body.432

do.body.432:                                      ; preds = %do.end.431
  br label %do.cond.433

do.cond.433:                                      ; preds = %do.body.432
  br label %do.end.434

do.end.434:                                       ; preds = %do.cond.433
  %288 = bitcast i32* %wi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %288) #1
  %289 = bitcast i32* %xi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %289) #1
  br label %if.end.435

if.end.435:                                       ; preds = %do.end.434, %if.then.412
  %290 = load i32, i32* %code, align 4, !tbaa !5
  %cmp436 = icmp slt i32 %290, 0
  br i1 %cmp436, label %if.then.438, label %if.end.439

if.then.438:                                      ; preds = %if.end.435
  store i32 33, i32* %cleanup.dest.slot
  br label %cleanup.444

if.end.439:                                       ; preds = %if.end.435
  %291 = load i16*, i16** %psrc, align 8, !tbaa !1
  store i16* %291, i16** %rsrc, align 8, !tbaa !1
  %292 = load i32, i32* %mcode, align 4, !tbaa !5
  store i32 %292, i32* %code, align 4, !tbaa !5
  %cmp440 = icmp slt i32 %292, 0
  br i1 %cmp440, label %if.then.442, label %if.end.443

if.then.442:                                      ; preds = %if.end.439
  store i32 33, i32* %cleanup.dest.slot
  br label %cleanup.444

if.end.443:                                       ; preds = %if.end.439
  %293 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  store %struct.gx_device_color_s* %293, %struct.gx_device_color_s** %ptemp, align 8, !tbaa !1
  %294 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc_next, align 8, !tbaa !1
  store %struct.gx_device_color_s* %294, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %295 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %ptemp, align 8, !tbaa !1
  store %struct.gx_device_color_s* %295, %struct.gx_device_color_s** %pdevc_next, align 8, !tbaa !1
  %296 = load i32, i32* %xl, align 4, !tbaa !5
  store i32 %296, i32* %xrun, align 4, !tbaa !5
  %297 = load i32, i32* %ytf, align 4, !tbaa !5
  store i32 %297, i32* %yrun, align 4, !tbaa !5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.444

cleanup.444:                                      ; preds = %if.then.442, %if.then.438, %if.end.443
  %298 = bitcast %struct.gx_device_color_s** %ptemp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %298) #1
  %cleanup.dest.445 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.445, label %cleanup.565 [
    i32 0, label %cleanup.cont.446
    i32 33, label %err
  ]

cleanup.cont.446:                                 ; preds = %cleanup.444
  br label %if.end.447

if.end.447:                                       ; preds = %cleanup.cont.446, %do.end.406
  %299 = bitcast %union.color_fracs* %run to i8*
  %300 = bitcast %union.color_fracs* %next to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %299, i8* %300, i64 128, i32 8, i1 false), !tbaa.struct !117
  br label %inc.448

inc.448:                                          ; preds = %if.end.447, %cleanup, %if.then.299, %if.then.260, %if.then.176, %if.then.79
  br label %do.body.449

do.body.449:                                      ; preds = %inc.448
  br label %do.body.450

do.body.450:                                      ; preds = %do.body.449
  %x451 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pnext, i32 0, i32 0
  %step = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x451, i32 0, i32 1
  %dR = getelementptr inbounds %struct._e, %struct._e* %step, i32 0, i32 1
  %301 = load i32, i32* %dR, align 4, !tbaa !118
  %x452 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pnext, i32 0, i32 0
  %state453 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x452, i32 0, i32 0
  %R = getelementptr inbounds %struct._a, %struct._a* %state453, i32 0, i32 1
  %302 = load i32, i32* %R, align 4, !tbaa !119
  %sub454 = sub i32 %302, %301
  store i32 %sub454, i32* %R, align 4, !tbaa !119
  %x455 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pnext, i32 0, i32 0
  %state456 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x455, i32 0, i32 0
  %R457 = getelementptr inbounds %struct._a, %struct._a* %state456, i32 0, i32 1
  %303 = load i32, i32* %R457, align 4, !tbaa !119
  %cmp458 = icmp slt i32 %303, 0
  br i1 %cmp458, label %if.then.460, label %if.end.471

if.then.460:                                      ; preds = %do.body.450
  %x461 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pnext, i32 0, i32 0
  %state462 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x461, i32 0, i32 0
  %Q463 = getelementptr inbounds %struct._a, %struct._a* %state462, i32 0, i32 0
  %304 = load i32, i32* %Q463, align 4, !tbaa !100
  %inc464 = add nsw i32 %304, 1
  store i32 %inc464, i32* %Q463, align 4, !tbaa !100
  %x465 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pnext, i32 0, i32 0
  %step466 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x465, i32 0, i32 1
  %N = getelementptr inbounds %struct._e, %struct._e* %step466, i32 0, i32 2
  %305 = load i32, i32* %N, align 4, !tbaa !120
  %x467 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pnext, i32 0, i32 0
  %state468 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x467, i32 0, i32 0
  %R469 = getelementptr inbounds %struct._a, %struct._a* %state468, i32 0, i32 1
  %306 = load i32, i32* %R469, align 4, !tbaa !119
  %add470 = add i32 %306, %305
  store i32 %add470, i32* %R469, align 4, !tbaa !119
  br label %if.end.471

if.end.471:                                       ; preds = %if.then.460, %do.body.450
  %x472 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pnext, i32 0, i32 0
  %step473 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x472, i32 0, i32 1
  %dQ = getelementptr inbounds %struct._e, %struct._e* %step473, i32 0, i32 0
  %307 = load i32, i32* %dQ, align 4, !tbaa !121
  %x474 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pnext, i32 0, i32 0
  %state475 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x474, i32 0, i32 0
  %Q476 = getelementptr inbounds %struct._a, %struct._a* %state475, i32 0, i32 0
  %308 = load i32, i32* %Q476, align 4, !tbaa !100
  %add477 = add nsw i32 %308, %307
  store i32 %add477, i32* %Q476, align 4, !tbaa !100
  br label %do.cond.478

do.cond.478:                                      ; preds = %if.end.471
  br label %do.end.479

do.end.479:                                       ; preds = %do.cond.478
  %x480 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pnext, i32 0, i32 0
  %state481 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x480, i32 0, i32 0
  %Q482 = getelementptr inbounds %struct._a, %struct._a* %state481, i32 0, i32 0
  %309 = load i32, i32* %Q482, align 4, !tbaa !100
  store i32 %309, i32* %xl, align 4, !tbaa !5
  br label %do.cond.483

do.cond.483:                                      ; preds = %do.end.479
  br label %do.end.484

do.end.484:                                       ; preds = %do.cond.483
  br label %do.body.485

do.body.485:                                      ; preds = %do.end.484
  br label %do.body.486

do.body.486:                                      ; preds = %do.body.485
  %y487 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pnext, i32 0, i32 1
  %step488 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y487, i32 0, i32 1
  %dR489 = getelementptr inbounds %struct._e, %struct._e* %step488, i32 0, i32 1
  %310 = load i32, i32* %dR489, align 4, !tbaa !122
  %y490 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pnext, i32 0, i32 1
  %state491 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y490, i32 0, i32 0
  %R492 = getelementptr inbounds %struct._a, %struct._a* %state491, i32 0, i32 1
  %311 = load i32, i32* %R492, align 4, !tbaa !123
  %sub493 = sub i32 %311, %310
  store i32 %sub493, i32* %R492, align 4, !tbaa !123
  %y494 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pnext, i32 0, i32 1
  %state495 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y494, i32 0, i32 0
  %R496 = getelementptr inbounds %struct._a, %struct._a* %state495, i32 0, i32 1
  %312 = load i32, i32* %R496, align 4, !tbaa !123
  %cmp497 = icmp slt i32 %312, 0
  br i1 %cmp497, label %if.then.499, label %if.end.511

if.then.499:                                      ; preds = %do.body.486
  %y500 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pnext, i32 0, i32 1
  %state501 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y500, i32 0, i32 0
  %Q502 = getelementptr inbounds %struct._a, %struct._a* %state501, i32 0, i32 0
  %313 = load i32, i32* %Q502, align 4, !tbaa !101
  %inc503 = add nsw i32 %313, 1
  store i32 %inc503, i32* %Q502, align 4, !tbaa !101
  %y504 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pnext, i32 0, i32 1
  %step505 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y504, i32 0, i32 1
  %N506 = getelementptr inbounds %struct._e, %struct._e* %step505, i32 0, i32 2
  %314 = load i32, i32* %N506, align 4, !tbaa !124
  %y507 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pnext, i32 0, i32 1
  %state508 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y507, i32 0, i32 0
  %R509 = getelementptr inbounds %struct._a, %struct._a* %state508, i32 0, i32 1
  %315 = load i32, i32* %R509, align 4, !tbaa !123
  %add510 = add i32 %315, %314
  store i32 %add510, i32* %R509, align 4, !tbaa !123
  br label %if.end.511

if.end.511:                                       ; preds = %if.then.499, %do.body.486
  %y512 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pnext, i32 0, i32 1
  %step513 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y512, i32 0, i32 1
  %dQ514 = getelementptr inbounds %struct._e, %struct._e* %step513, i32 0, i32 0
  %316 = load i32, i32* %dQ514, align 4, !tbaa !125
  %y515 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pnext, i32 0, i32 1
  %state516 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y515, i32 0, i32 0
  %Q517 = getelementptr inbounds %struct._a, %struct._a* %state516, i32 0, i32 0
  %317 = load i32, i32* %Q517, align 4, !tbaa !101
  %add518 = add nsw i32 %317, %316
  store i32 %add518, i32* %Q517, align 4, !tbaa !101
  br label %do.cond.519

do.cond.519:                                      ; preds = %if.end.511
  br label %do.end.520

do.end.520:                                       ; preds = %do.cond.519
  %y521 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pnext, i32 0, i32 1
  %state522 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y521, i32 0, i32 0
  %Q523 = getelementptr inbounds %struct._a, %struct._a* %state522, i32 0, i32 0
  %318 = load i32, i32* %Q523, align 4, !tbaa !101
  store i32 %318, i32* %ytf, align 4, !tbaa !5
  br label %do.cond.524

do.cond.524:                                      ; preds = %do.end.520
  br label %do.end.525

do.end.525:                                       ; preds = %do.cond.524
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %319 = load i32, i32* %posture, align 4, !tbaa !7
  %cmp526 = icmp ne i32 %319, 0
  br i1 %cmp526, label %if.then.528, label %if.else.534

if.then.528:                                      ; preds = %while.end
  %320 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs529 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %320, i32 0, i32 42
  %fill_parallelogram530 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs529, i32 0, i32 28
  %321 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)** %fill_parallelogram530, align 8, !tbaa !114
  %322 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %323 = load i32, i32* %xrun, align 4, !tbaa !5
  %324 = load i32, i32* %yrun, align 4, !tbaa !5
  %325 = load i32, i32* %xl, align 4, !tbaa !5
  %326 = load i32, i32* %xrun, align 4, !tbaa !5
  %sub531 = sub nsw i32 %325, %326
  %327 = load i32, i32* %ytf, align 4, !tbaa !5
  %328 = load i32, i32* %yrun, align 4, !tbaa !5
  %sub532 = sub nsw i32 %327, %328
  %329 = load i32, i32* %pdyx, align 4, !tbaa !5
  %330 = load i32, i32* %pdyy, align 4, !tbaa !5
  %331 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %332 = load i32, i32* %lop, align 4, !tbaa !5
  %call533 = call i32 %321(%struct.gx_device_s* %322, i32 %323, i32 %324, i32 %sub531, i32 %sub532, i32 %329, i32 %330, %struct.gx_device_color_s* %331, i32 %332) #6
  store i32 %call533, i32* %code, align 4, !tbaa !5
  br label %if.end.555

if.else.534:                                      ; preds = %while.end
  %333 = bitcast i32* %xi535 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %333) #1
  %334 = load i32, i32* %irun, align 4, !tbaa !5
  store i32 %334, i32* %xi535, align 4, !tbaa !5
  %335 = bitcast i32* %wi536 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %335) #1
  %336 = load i32, i32* %xl, align 4, !tbaa !5
  %add537 = add nsw i32 %336, 128
  %shr538 = ashr i32 %add537, 8
  store i32 %shr538, i32* %irun, align 4, !tbaa !5
  %337 = load i32, i32* %xi535, align 4, !tbaa !5
  %sub539 = sub nsw i32 %shr538, %337
  store i32 %sub539, i32* %wi536, align 4, !tbaa !5
  %338 = load i32, i32* %wi536, align 4, !tbaa !5
  %cmp540 = icmp slt i32 %338, 0
  br i1 %cmp540, label %if.then.542, label %if.end.545

if.then.542:                                      ; preds = %if.else.534
  %339 = load i32, i32* %wi536, align 4, !tbaa !5
  %340 = load i32, i32* %xi535, align 4, !tbaa !5
  %add543 = add nsw i32 %340, %339
  store i32 %add543, i32* %xi535, align 4, !tbaa !5
  %341 = load i32, i32* %wi536, align 4, !tbaa !5
  %sub544 = sub nsw i32 0, %341
  store i32 %sub544, i32* %wi536, align 4, !tbaa !5
  br label %if.end.545

if.end.545:                                       ; preds = %if.then.542, %if.else.534
  %342 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %type546 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %342, i32 0, i32 0
  %343 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type546, align 8, !tbaa !107
  %fill_rectangle547 = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %343, i32 0, i32 5
  %344 = load i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)** %fill_rectangle547, align 8, !tbaa !115
  %345 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %346 = load i32, i32* %xi535, align 4, !tbaa !5
  %347 = load i32, i32* %yt, align 4, !tbaa !5
  %348 = load i32, i32* %wi536, align 4, !tbaa !5
  %349 = load i32, i32* %iht, align 4, !tbaa !5
  %350 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %351 = load i32, i32* %lop, align 4, !tbaa !5
  %call548 = call i32 %344(%struct.gx_device_color_s* %345, i32 %346, i32 %347, i32 %348, i32 %349, %struct.gx_device_s* %350, i32 %351, %struct.gx_rop_source_s* null) #6
  store i32 %call548, i32* %code, align 4, !tbaa !5
  br label %do.body.549

do.body.549:                                      ; preds = %if.end.545
  br label %do.cond.550

do.cond.550:                                      ; preds = %do.body.549
  br label %do.end.551

do.end.551:                                       ; preds = %do.cond.550
  br label %do.body.552

do.body.552:                                      ; preds = %do.end.551
  br label %do.cond.553

do.cond.553:                                      ; preds = %do.body.552
  br label %do.end.554

do.end.554:                                       ; preds = %do.cond.553
  %352 = bitcast i32* %wi536 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %352) #1
  %353 = bitcast i32* %xi535 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %353) #1
  br label %if.end.555

if.end.555:                                       ; preds = %do.end.554, %if.then.528
  %354 = load i32, i32* %code, align 4, !tbaa !5
  %cmp556 = icmp slt i32 %354, 0
  br i1 %cmp556, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.555
  %355 = load i32, i32* %code, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %if.end.555
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %355, %cond.true ], [ 1, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.565

err:                                              ; preds = %cleanup.444
  %356 = load i16*, i16** %rsrc, align 8, !tbaa !1
  %357 = load i32, i32* %spp, align 4, !tbaa !5
  %idx.ext558 = sext i32 %357 to i64
  %idx.neg = sub i64 0, %idx.ext558
  %add.ptr559 = getelementptr inbounds i16, i16* %356, i64 %idx.neg
  %358 = load i16*, i16** %psrc_initial, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i16* %add.ptr559 to i64
  %sub.ptr.rhs.cast = ptrtoint i16* %358 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 2
  %359 = load i32, i32* %spp, align 4, !tbaa !5
  %conv560 = sext i32 %359 to i64
  %div = sdiv i64 %sub.ptr.div, %conv560
  %conv561 = trunc i64 %div to i32
  %360 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %used = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %360, i32 0, i32 52
  %x562 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %used, i32 0, i32 0
  store i32 %conv561, i32* %x562, align 4, !tbaa !126
  %361 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %used563 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %361, i32 0, i32 52
  %y564 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %used563, i32 0, i32 1
  store i32 0, i32* %y564, align 4, !tbaa !127
  %362 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %362, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.565

cleanup.565:                                      ; preds = %err, %cond.end, %cleanup.444, %cleanup, %if.then
  %363 = bitcast i32* %is_sep to i8*
  call void @llvm.lifetime.end(i64 4, i8* %363) #1
  %364 = bitcast i32* %is_devn to i8*
  call void @llvm.lifetime.end(i64 4, i8* %364) #1
  %365 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %365) #1
  %366 = bitcast i32* %mcode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %366) #1
  %367 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %367) #1
  %368 = bitcast i16** %bufend to i8*
  call void @llvm.lifetime.end(i64 8, i8* %368) #1
  %369 = bitcast %union.color_fracs* %next to i8*
  call void @llvm.lifetime.end(i64 128, i8* %369) #1
  %370 = bitcast %union.color_fracs* %run to i8*
  call void @llvm.lifetime.end(i64 128, i8* %370) #1
  %371 = bitcast i32* %yrun to i8*
  call void @llvm.lifetime.end(i64 4, i8* %371) #1
  %372 = bitcast i32* %irun to i8*
  call void @llvm.lifetime.end(i64 4, i8* %372) #1
  %373 = bitcast i32* %xrun to i8*
  call void @llvm.lifetime.end(i64 4, i8* %373) #1
  %374 = bitcast i16** %rsrc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %374) #1
  %375 = bitcast i16** %psrc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %375) #1
  %376 = bitcast i16** %psrc_initial to i8*
  call void @llvm.lifetime.end(i64 8, i8* %376) #1
  %377 = bitcast i32* %spp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %377) #1
  %378 = bitcast %struct.gx_device_color_s** %pdevc_next to i8*
  call void @llvm.lifetime.end(i64 8, i8* %378) #1
  %379 = bitcast %struct.gx_device_color_s** %pdevc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %379) #1
  %380 = bitcast %struct.gx_device_color_s* %devc2 to i8*
  call void @llvm.lifetime.end(i64 656, i8* %380) #1
  %381 = bitcast %struct.gx_device_color_s* %devc1 to i8*
  call void @llvm.lifetime.end(i64 656, i8* %381) #1
  %382 = bitcast i32* %use_mask_color to i8*
  call void @llvm.lifetime.end(i64 4, i8* %382) #1
  %383 = bitcast void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32, %struct.gs_color_space_s*)** %map_cmyk to i8*
  call void @llvm.lifetime.end(i64 8, i8* %383) #1
  %384 = bitcast void (i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %map_rgb to i8*
  call void @llvm.lifetime.end(i64 8, i8* %384) #1
  %385 = bitcast %struct.gx_color_map_procs_s** %cmap_procs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %385) #1
  %386 = bitcast i32* %device_color to i8*
  call void @llvm.lifetime.end(i64 4, i8* %386) #1
  %387 = bitcast %struct.gs_client_color_s* %cc to i8*
  call void @llvm.lifetime.end(i64 264, i8* %387) #1
  %388 = bitcast i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %remap_color to i8*
  call void @llvm.lifetime.end(i64 8, i8* %388) #1
  %389 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %389) #1
  %390 = bitcast i32* %iht to i8*
  call void @llvm.lifetime.end(i64 4, i8* %390) #1
  %391 = bitcast i32* %yt to i8*
  call void @llvm.lifetime.end(i64 4, i8* %391) #1
  %392 = bitcast i32* %pdyy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %392) #1
  %393 = bitcast i32* %pdyx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %393) #1
  %394 = bitcast i32* %ytf to i8*
  call void @llvm.lifetime.end(i64 4, i8* %394) #1
  %395 = bitcast i32* %xl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %395) #1
  %396 = bitcast i32* %posture to i8*
  call void @llvm.lifetime.end(i64 4, i8* %396) #1
  %397 = bitcast %struct.gx_dda_fixed_point_s* %pnext to i8*
  call void @llvm.lifetime.end(i64 40, i8* %397) #1
  %398 = bitcast i32* %lop to i8*
  call void @llvm.lifetime.end(i64 4, i8* %398) #1
  %399 = bitcast %struct.gs_imager_state_s** %pis to i8*
  call void @llvm.lifetime.end(i64 8, i8* %399) #1
  %400 = load i32, i32* %retval
  ret i32 %400
}

declare i32 @gsicc_get_device_profile_comps(%struct.cmm_dev_profile_s*) #2

declare i32 @gs_color_space_is_PSCIE(%struct.gs_color_space_s*) #2

declare i32 @gx_has_transfer(%struct.gs_imager_state_s*, i32) #2

declare %struct.gsicc_link_s* @gsicc_get_link(%struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.gsicc_rendering_param_s*, %struct.gs_memory_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @image_render_icc16(%struct.gx_image_enum_s* %penum, i8* %buffer, i32 %data_x, i32 %w, i32 %h, %struct.gx_device_s* %dev) #0 {
entry:
  %retval = alloca i32, align 4
  %penum.addr = alloca %struct.gx_image_enum_s*, align 8
  %buffer.addr = alloca i8*, align 8
  %data_x.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pis = alloca %struct.gs_imager_state_s*, align 8
  %lop = alloca i32, align 4
  %pnext = alloca %struct.gx_dda_fixed_point_s, align 4
  %posture = alloca i32, align 4
  %xprev = alloca i32, align 4
  %yprev = alloca i32, align 4
  %pdyx = alloca i32, align 4
  %pdyy = alloca i32, align 4
  %vci = alloca i32, align 4
  %vdi = alloca i32, align 4
  %pcs = alloca %struct.gs_color_space_s*, align 8
  %devc1 = alloca %struct.gx_device_color_s, align 8
  %devc2 = alloca %struct.gx_device_color_s, align 8
  %pdevc = alloca %struct.gx_device_color_s*, align 8
  %pdevc_next = alloca %struct.gx_device_color_s*, align 8
  %ptemp = alloca %struct.gx_device_color_s*, align 8
  %spp = alloca i32, align 4
  %psrc_initial = alloca i16*, align 8
  %psrc = alloca i16*, align 8
  %rsrc = alloca i16*, align 8
  %xrun = alloca i32, align 4
  %irun = alloca i32, align 4
  %yrun = alloca i32, align 4
  %run = alloca %union.color_fracs, align 8
  %next = alloca %union.color_fracs, align 8
  %bufend = alloca i16*, align 8
  %code = alloca i32, align 4
  %input_buff_desc = alloca %struct.gsicc_bufferdesc_s, align 4
  %output_buff_desc = alloca %struct.gsicc_bufferdesc_s, align 4
  %psrc_cm = alloca i16*, align 8
  %psrc_cm_start = alloca i16*, align 8
  %psrc_decode = alloca i16*, align 8
  %k = alloca i32, align 4
  %conc = alloca [64 x i16], align 16
  %spp_cm = alloca i32, align 4
  %num_pixels = alloca i32, align 4
  %color = alloca i64, align 8
  %need_decode = alloca i32, align 4
  %must_halftone = alloca i32, align 4
  %has_transfer = alloca i32, align 4
  %num_des_comps = alloca i32, align 4
  %dev_profile = alloca %struct.cmm_dev_profile_s*, align 8
  %cleanup.dest.slot = alloca i32
  %xi = alloca i32, align 4
  %wi = alloca i32, align 4
  %xi279 = alloca i32, align 4
  %wi280 = alloca i32, align 4
  store %struct.gx_image_enum_s* %penum, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  store i8* %buffer, i8** %buffer.addr, align 8, !tbaa !1
  store i32 %data_x, i32* %data_x.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_imager_state_s** %pis to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pis1 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %1, i32 0, i32 30
  %2 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis1, align 8, !tbaa !36
  store %struct.gs_imager_state_s* %2, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %3 = bitcast i32* %lop to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %log_op = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %4, i32 0, i32 44
  %5 = load i32, i32* %log_op, align 4, !tbaa !90
  store i32 %5, i32* %lop, align 4, !tbaa !5
  %6 = bitcast %struct.gx_dda_fixed_point_s* %pnext to i8*
  call void @llvm.lifetime.start(i64 40, i8* %6) #1
  %7 = bitcast i32* %posture to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %posture2 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %8, i32 0, i32 37
  %9 = load i32, i32* %posture2, align 4, !tbaa !91
  store i32 %9, i32* %posture, align 4, !tbaa !7
  %10 = bitcast i32* %xprev to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %yprev to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast i32* %pdyx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast i32* %pdyy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast i32* %vci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast i32* %vdi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = bitcast %struct.gx_device_color_s* %devc1 to i8*
  call void @llvm.lifetime.start(i64 656, i8* %17) #1
  %18 = bitcast %struct.gx_device_color_s* %devc2 to i8*
  call void @llvm.lifetime.start(i64 656, i8* %18) #1
  %19 = bitcast %struct.gx_device_color_s** %pdevc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  %20 = bitcast %struct.gx_device_color_s** %pdevc_next to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  %21 = bitcast %struct.gx_device_color_s** %ptemp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  %22 = bitcast i32* %spp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  %23 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %spp3 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %23, i32 0, i32 14
  %24 = load i8, i8* %spp3, align 1, !tbaa !34
  %conv = zext i8 %24 to i32
  store i32 %conv, i32* %spp, align 4, !tbaa !5
  %25 = bitcast i16** %psrc_initial to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #1
  %26 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %27 = bitcast i8* %26 to i16*
  %28 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %29 = load i32, i32* %spp, align 4, !tbaa !5
  %mul = mul nsw i32 %28, %29
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i16, i16* %27, i64 %idx.ext
  store i16* %add.ptr, i16** %psrc_initial, align 8, !tbaa !1
  %30 = bitcast i16** %psrc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %30) #1
  %31 = load i16*, i16** %psrc_initial, align 8, !tbaa !1
  store i16* %31, i16** %psrc, align 8, !tbaa !1
  %32 = bitcast i16** %rsrc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %32) #1
  %33 = load i16*, i16** %psrc, align 8, !tbaa !1
  %34 = load i32, i32* %spp, align 4, !tbaa !5
  %idx.ext4 = sext i32 %34 to i64
  %add.ptr5 = getelementptr inbounds i16, i16* %33, i64 %idx.ext4
  store i16* %add.ptr5, i16** %rsrc, align 8, !tbaa !1
  %35 = bitcast i32* %xrun to i8*
  call void @llvm.lifetime.start(i64 4, i8* %35) #1
  %36 = bitcast i32* %irun to i8*
  call void @llvm.lifetime.start(i64 4, i8* %36) #1
  %37 = bitcast i32* %yrun to i8*
  call void @llvm.lifetime.start(i64 4, i8* %37) #1
  %38 = bitcast %union.color_fracs* %run to i8*
  call void @llvm.lifetime.start(i64 128, i8* %38) #1
  %39 = bitcast %union.color_fracs* %next to i8*
  call void @llvm.lifetime.start(i64 128, i8* %39) #1
  %40 = bitcast i16** %bufend to i8*
  call void @llvm.lifetime.start(i64 8, i8* %40) #1
  %41 = load i16*, i16** %psrc, align 8, !tbaa !1
  %42 = load i32, i32* %w.addr, align 4, !tbaa !5
  %idx.ext6 = zext i32 %42 to i64
  %add.ptr7 = getelementptr inbounds i16, i16* %41, i64 %idx.ext6
  store i16* %add.ptr7, i16** %bufend, align 8, !tbaa !1
  %43 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %43) #1
  store i32 0, i32* %code, align 4, !tbaa !5
  %44 = bitcast %struct.gsicc_bufferdesc_s* %input_buff_desc to i8*
  call void @llvm.lifetime.start(i64 36, i8* %44) #1
  %45 = bitcast %struct.gsicc_bufferdesc_s* %output_buff_desc to i8*
  call void @llvm.lifetime.start(i64 36, i8* %45) #1
  %46 = bitcast i16** %psrc_cm to i8*
  call void @llvm.lifetime.start(i64 8, i8* %46) #1
  %47 = bitcast i16** %psrc_cm_start to i8*
  call void @llvm.lifetime.start(i64 8, i8* %47) #1
  %48 = bitcast i16** %psrc_decode to i8*
  call void @llvm.lifetime.start(i64 8, i8* %48) #1
  %49 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %49) #1
  %50 = bitcast [64 x i16]* %conc to i8*
  call void @llvm.lifetime.start(i64 128, i8* %50) #1
  %51 = bitcast i32* %spp_cm to i8*
  call void @llvm.lifetime.start(i64 4, i8* %51) #1
  %52 = bitcast i32* %num_pixels to i8*
  call void @llvm.lifetime.start(i64 4, i8* %52) #1
  %53 = bitcast i64* %color to i8*
  call void @llvm.lifetime.start(i64 8, i8* %53) #1
  %54 = bitcast i32* %need_decode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %54) #1
  %55 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icc_setup = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %55, i32 0, i32 80
  %need_decode8 = getelementptr inbounds %struct.gx_image_icc_setup_s, %struct.gx_image_icc_setup_s* %icc_setup, i32 0, i32 0
  %56 = load i32, i32* %need_decode8, align 4, !tbaa !54
  store i32 %56, i32* %need_decode, align 4, !tbaa !5
  %57 = bitcast i32* %must_halftone to i8*
  call void @llvm.lifetime.start(i64 4, i8* %57) #1
  %58 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icc_setup9 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %58, i32 0, i32 80
  %must_halftone10 = getelementptr inbounds %struct.gx_image_icc_setup_s, %struct.gx_image_icc_setup_s* %icc_setup9, i32 0, i32 2
  %59 = load i32, i32* %must_halftone10, align 4, !tbaa !85
  store i32 %59, i32* %must_halftone, align 4, !tbaa !5
  %60 = bitcast i32* %has_transfer to i8*
  call void @llvm.lifetime.start(i64 4, i8* %60) #1
  %61 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icc_setup11 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %61, i32 0, i32 80
  %has_transfer12 = getelementptr inbounds %struct.gx_image_icc_setup_s, %struct.gx_image_icc_setup_s* %icc_setup11, i32 0, i32 3
  %62 = load i32, i32* %has_transfer12, align 4, !tbaa !86
  store i32 %62, i32* %has_transfer, align 4, !tbaa !5
  %63 = bitcast i32* %num_des_comps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %63) #1
  %64 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %64) #1
  %65 = load i32, i32* %h.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %65, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %66 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icc_link = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %66, i32 0, i32 70
  %67 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link, align 8, !tbaa !87
  %cmp14 = icmp eq %struct.gsicc_link_s* %67, null
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end
  %call = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.image_render_icc16, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 630, i32 1, i32 -1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i32 0, i32 0)) #6
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.17:                                        ; preds = %if.end
  %arrayidx = getelementptr inbounds [64 x i16], [64 x i16]* %conc, i32 0, i64 0
  %68 = bitcast i16* %arrayidx to i8*
  %call18 = call i8* @memset(i8* %68, i32 0, i64 128) #7
  %69 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pcs19 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %69, i32 0, i32 31
  %70 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs19, align 8, !tbaa !37
  %call20 = call i32 @gs_color_space_is_PSCIE(%struct.gs_color_space_s* %70) #6
  %tobool = icmp ne i32 %call20, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end.17
  %71 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pcs21 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %71, i32 0, i32 31
  %72 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs21, align 8, !tbaa !37
  %icc_equivalent = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %72, i32 0, i32 4
  %73 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_equivalent, align 8, !tbaa !76
  %cmp22 = icmp ne %struct.gs_color_space_s* %73, null
  br i1 %cmp22, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %land.lhs.true
  %74 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pcs25 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %74, i32 0, i32 31
  %75 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs25, align 8, !tbaa !37
  %icc_equivalent26 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %75, i32 0, i32 4
  %76 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_equivalent26, align 8, !tbaa !76
  store %struct.gs_color_space_s* %76, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  br label %if.end.28

if.else:                                          ; preds = %land.lhs.true, %if.end.17
  %77 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pcs27 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %77, i32 0, i32 31
  %78 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs27, align 8, !tbaa !37
  store %struct.gs_color_space_s* %78, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  br label %if.end.28

if.end.28:                                        ; preds = %if.else, %if.then.24
  store %struct.gx_device_color_s* %devc1, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  store %struct.gx_device_color_s* %devc2, %struct.gx_device_color_s** %pdevc_next, align 8, !tbaa !1
  %79 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %79, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_none, %struct.gx_device_color_type_s** %type, align 8, !tbaa !107
  %80 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc_next, align 8, !tbaa !1
  %type29 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %80, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_none, %struct.gx_device_color_type_s** %type29, align 8, !tbaa !107
  %81 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %81, i32 0, i32 42
  %get_profile = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 67
  %82 = load i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile, align 8, !tbaa !44
  %83 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call30 = call i32 %82(%struct.gx_device_s* %83, %struct.cmm_dev_profile_s** %dev_profile) #6
  store i32 %call30, i32* %code, align 4, !tbaa !5
  %84 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %call31 = call i32 @gsicc_get_device_profile_comps(%struct.cmm_dev_profile_s* %84) #6
  store i32 %call31, i32* %num_des_comps, align 4, !tbaa !5
  %85 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icc_link32 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %85, i32 0, i32 70
  %86 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link32, align 8, !tbaa !87
  %is_identity = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %86, i32 0, i32 10
  %87 = load i32, i32* %is_identity, align 4, !tbaa !128
  %tobool33 = icmp ne i32 %87, 0
  br i1 %tobool33, label %land.lhs.true.34, label %if.else.39

land.lhs.true.34:                                 ; preds = %if.end.28
  %88 = load i32, i32* %need_decode, align 4, !tbaa !5
  %tobool35 = icmp ne i32 %88, 0
  br i1 %tobool35, label %if.else.39, label %if.then.36

if.then.36:                                       ; preds = %land.lhs.true.34
  %89 = load i16*, i16** %psrc, align 8, !tbaa !1
  store i16* %89, i16** %psrc_cm, align 8, !tbaa !1
  %90 = load i32, i32* %spp, align 4, !tbaa !5
  store i32 %90, i32* %spp_cm, align 4, !tbaa !5
  %91 = load i16*, i16** %psrc_cm, align 8, !tbaa !1
  %92 = load i32, i32* %w.addr, align 4, !tbaa !5
  %idx.ext37 = zext i32 %92 to i64
  %add.ptr38 = getelementptr inbounds i16, i16* %91, i64 %idx.ext37
  store i16* %add.ptr38, i16** %bufend, align 8, !tbaa !1
  store i16* null, i16** %psrc_cm_start, align 8, !tbaa !1
  br label %if.end.101

if.else.39:                                       ; preds = %land.lhs.true.34, %if.end.28
  %93 = load i32, i32* %num_des_comps, align 4, !tbaa !5
  store i32 %93, i32* %spp_cm, align 4, !tbaa !5
  %94 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %94, i32 0, i32 1
  %95 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !132
  %procs40 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %95, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs40, i32 0, i32 7
  %96 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !133
  %97 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %memory41 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %97, i32 0, i32 1
  %98 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory41, align 8, !tbaa !132
  %99 = load i32, i32* %w.addr, align 4, !tbaa !5
  %conv42 = zext i32 %99 to i64
  %mul43 = mul i64 2, %conv42
  %100 = load i32, i32* %spp_cm, align 4, !tbaa !5
  %conv44 = sext i32 %100 to i64
  %mul45 = mul i64 %mul43, %conv44
  %101 = load i32, i32* %spp, align 4, !tbaa !5
  %conv46 = sext i32 %101 to i64
  %div = udiv i64 %mul45, %conv46
  %conv47 = trunc i64 %div to i32
  %call48 = call i8* %96(%struct.gs_memory_s* %98, i32 %conv47, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.image_render_icc16, i32 0, i32 0)) #6
  %102 = bitcast i8* %call48 to i16*
  store i16* %102, i16** %psrc_cm, align 8, !tbaa !1
  %103 = load i16*, i16** %psrc_cm, align 8, !tbaa !1
  store i16* %103, i16** %psrc_cm_start, align 8, !tbaa !1
  %104 = load i16*, i16** %psrc_cm, align 8, !tbaa !1
  %105 = load i32, i32* %w.addr, align 4, !tbaa !5
  %106 = load i32, i32* %spp_cm, align 4, !tbaa !5
  %mul49 = mul i32 %105, %106
  %107 = load i32, i32* %spp, align 4, !tbaa !5
  %div50 = udiv i32 %mul49, %107
  %idx.ext51 = zext i32 %div50 to i64
  %add.ptr52 = getelementptr inbounds i16, i16* %104, i64 %idx.ext51
  store i16* %add.ptr52, i16** %bufend, align 8, !tbaa !1
  %108 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icc_link53 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %108, i32 0, i32 70
  %109 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link53, align 8, !tbaa !87
  %is_identity54 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %109, i32 0, i32 10
  %110 = load i32, i32* %is_identity54, align 4, !tbaa !128
  %tobool55 = icmp ne i32 %110, 0
  br i1 %tobool55, label %if.then.56, label %if.else.57

if.then.56:                                       ; preds = %if.else.39
  %111 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %112 = load i16*, i16** %psrc, align 8, !tbaa !1
  %113 = load i32, i32* %spp, align 4, !tbaa !5
  %114 = load i16*, i16** %psrc_cm, align 8, !tbaa !1
  %115 = load i16*, i16** %bufend, align 8, !tbaa !1
  call void @decode_row16(%struct.gx_image_enum_s* %111, i16* %112, i32 %113, i16* %114, i16* %115) #6
  br label %if.end.100

if.else.57:                                       ; preds = %if.else.39
  %116 = load i32, i32* %w.addr, align 4, !tbaa !5
  %117 = load i32, i32* %spp, align 4, !tbaa !5
  %div58 = udiv i32 %116, %117
  store i32 %div58, i32* %num_pixels, align 4, !tbaa !5
  %118 = load i32, i32* %spp, align 4, !tbaa !5
  %conv59 = trunc i32 %118 to i8
  %119 = load i32, i32* %w.addr, align 4, !tbaa !5
  %mul60 = mul i32 %119, 2
  %120 = load i32, i32* %num_pixels, align 4, !tbaa !5
  call void @gsicc_init_buffer(%struct.gsicc_bufferdesc_s* %input_buff_desc, i8 zeroext %conv59, i8 zeroext 2, i32 0, i32 0, i32 0, i32 0, i32 %mul60, i32 1, i32 %120) #6
  %121 = load i32, i32* %spp_cm, align 4, !tbaa !5
  %conv61 = trunc i32 %121 to i8
  %122 = load i32, i32* %num_pixels, align 4, !tbaa !5
  %123 = load i32, i32* %spp_cm, align 4, !tbaa !5
  %mul62 = mul nsw i32 %122, %123
  %mul63 = mul nsw i32 %mul62, 2
  %124 = load i32, i32* %num_pixels, align 4, !tbaa !5
  call void @gsicc_init_buffer(%struct.gsicc_bufferdesc_s* %output_buff_desc, i8 zeroext %conv61, i8 zeroext 2, i32 0, i32 0, i32 0, i32 0, i32 %mul63, i32 1, i32 %124) #6
  %125 = load i32, i32* %need_decode, align 4, !tbaa !5
  %tobool64 = icmp ne i32 %125, 0
  br i1 %tobool64, label %if.then.65, label %if.else.94

if.then.65:                                       ; preds = %if.else.57
  %126 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %memory66 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %126, i32 0, i32 1
  %127 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory66, align 8, !tbaa !132
  %procs67 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %127, i32 0, i32 1
  %alloc_bytes68 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs67, i32 0, i32 7
  %128 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes68, align 8, !tbaa !133
  %129 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %memory69 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %129, i32 0, i32 1
  %130 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory69, align 8, !tbaa !132
  %131 = load i32, i32* %w.addr, align 4, !tbaa !5
  %conv70 = zext i32 %131 to i64
  %mul71 = mul i64 2, %conv70
  %132 = load i32, i32* %spp_cm, align 4, !tbaa !5
  %conv72 = sext i32 %132 to i64
  %mul73 = mul i64 %mul71, %conv72
  %133 = load i32, i32* %spp, align 4, !tbaa !5
  %conv74 = sext i32 %133 to i64
  %div75 = udiv i64 %mul73, %conv74
  %conv76 = trunc i64 %div75 to i32
  %call77 = call i8* %128(%struct.gs_memory_s* %130, i32 %conv76, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.image_render_icc16, i32 0, i32 0)) #6
  %134 = bitcast i8* %call77 to i16*
  store i16* %134, i16** %psrc_decode, align 8, !tbaa !1
  %135 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %use_cie_range = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %135, i32 0, i32 81
  %136 = load i32, i32* %use_cie_range, align 4, !tbaa !136
  %tobool78 = icmp ne i32 %136, 0
  br i1 %tobool78, label %if.else.82, label %if.then.79

if.then.79:                                       ; preds = %if.then.65
  %137 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %138 = load i16*, i16** %psrc, align 8, !tbaa !1
  %139 = load i32, i32* %spp, align 4, !tbaa !5
  %140 = load i16*, i16** %psrc_decode, align 8, !tbaa !1
  %141 = load i16*, i16** %psrc_decode, align 8, !tbaa !1
  %142 = load i32, i32* %w.addr, align 4, !tbaa !5
  %idx.ext80 = zext i32 %142 to i64
  %add.ptr81 = getelementptr inbounds i16, i16* %141, i64 %idx.ext80
  call void @decode_row16(%struct.gx_image_enum_s* %137, i16* %138, i32 %139, i16* %140, i16* %add.ptr81) #6
  br label %if.end.87

if.else.82:                                       ; preds = %if.then.65
  %143 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %144 = load i16*, i16** %psrc, align 8, !tbaa !1
  %145 = load i32, i32* %spp, align 4, !tbaa !5
  %146 = load i16*, i16** %psrc_decode, align 8, !tbaa !1
  %147 = load i16*, i16** %psrc_decode, align 8, !tbaa !1
  %148 = load i32, i32* %w.addr, align 4, !tbaa !5
  %idx.ext83 = zext i32 %148 to i64
  %add.ptr84 = getelementptr inbounds i16, i16* %147, i64 %idx.ext83
  %149 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pcs85 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %149, i32 0, i32 31
  %150 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs85, align 8, !tbaa !37
  %call86 = call %struct.gs_range_s* @get_cie_range(%struct.gs_color_space_s* %150) #6
  call void @decode_row_cie16(%struct.gx_image_enum_s* %143, i16* %144, i32 %145, i16* %146, i16* %add.ptr84, %struct.gs_range_s* %call86) #6
  br label %if.end.87

if.end.87:                                        ; preds = %if.else.82, %if.then.79
  %151 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icc_link88 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %151, i32 0, i32 70
  %152 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link88, align 8, !tbaa !87
  %procs89 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %152, i32 0, i32 1
  %map_buffer = getelementptr inbounds %struct.gscms_procs_s, %struct.gscms_procs_s* %procs89, i32 0, i32 0
  %153 = load void (%struct.gx_device_s*, %struct.gsicc_link_s*, %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s*, i8*, i8*)*, void (%struct.gx_device_s*, %struct.gsicc_link_s*, %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s*, i8*, i8*)** %map_buffer, align 8, !tbaa !137
  %154 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %155 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icc_link90 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %155, i32 0, i32 70
  %156 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link90, align 8, !tbaa !87
  %157 = load i16*, i16** %psrc_decode, align 8, !tbaa !1
  %158 = bitcast i16* %157 to i8*
  %159 = load i16*, i16** %psrc_cm, align 8, !tbaa !1
  %160 = bitcast i16* %159 to i8*
  call void %153(%struct.gx_device_s* %154, %struct.gsicc_link_s* %156, %struct.gsicc_bufferdesc_s* %input_buff_desc, %struct.gsicc_bufferdesc_s* %output_buff_desc, i8* %158, i8* %160) #6
  %161 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %memory91 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %161, i32 0, i32 1
  %162 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory91, align 8, !tbaa !132
  %procs92 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %162, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs92, i32 0, i32 2
  %163 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !138
  %164 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %memory93 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %164, i32 0, i32 1
  %165 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory93, align 8, !tbaa !132
  %166 = load i16*, i16** %psrc_decode, align 8, !tbaa !1
  %167 = bitcast i16* %166 to i8*
  call void %163(%struct.gs_memory_s* %165, i8* %167, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0)) #6
  br label %if.end.99

if.else.94:                                       ; preds = %if.else.57
  %168 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icc_link95 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %168, i32 0, i32 70
  %169 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link95, align 8, !tbaa !87
  %procs96 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %169, i32 0, i32 1
  %map_buffer97 = getelementptr inbounds %struct.gscms_procs_s, %struct.gscms_procs_s* %procs96, i32 0, i32 0
  %170 = load void (%struct.gx_device_s*, %struct.gsicc_link_s*, %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s*, i8*, i8*)*, void (%struct.gx_device_s*, %struct.gsicc_link_s*, %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s*, i8*, i8*)** %map_buffer97, align 8, !tbaa !137
  %171 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %172 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icc_link98 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %172, i32 0, i32 70
  %173 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link98, align 8, !tbaa !87
  %174 = load i16*, i16** %psrc, align 8, !tbaa !1
  %175 = bitcast i16* %174 to i8*
  %176 = load i16*, i16** %psrc_cm, align 8, !tbaa !1
  %177 = bitcast i16* %176 to i8*
  call void %170(%struct.gx_device_s* %171, %struct.gsicc_link_s* %173, %struct.gsicc_bufferdesc_s* %input_buff_desc, %struct.gsicc_bufferdesc_s* %output_buff_desc, i8* %175, i8* %177) #6
  br label %if.end.99

if.end.99:                                        ; preds = %if.else.94, %if.end.87
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.99, %if.then.56
  br label %if.end.101

if.end.101:                                       ; preds = %if.end.100, %if.then.36
  %178 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %178, i32 0, i32 55
  %pixel0 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda, i32 0, i32 2
  %179 = bitcast %struct.gx_dda_fixed_point_s* %pnext to i8*
  %180 = bitcast %struct.gx_dda_fixed_point_s* %pixel0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %179, i8* %180, i64 40, i32 4, i1 false), !tbaa.struct !99
  %x = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pnext, i32 0, i32 0
  %state = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x, i32 0, i32 0
  %Q = getelementptr inbounds %struct._a, %struct._a* %state, i32 0, i32 0
  %181 = load i32, i32* %Q, align 4, !tbaa !100
  store i32 %181, i32* %xprev, align 4, !tbaa !5
  store i32 %181, i32* %xrun, align 4, !tbaa !5
  %y = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pnext, i32 0, i32 1
  %state102 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y, i32 0, i32 0
  %Q103 = getelementptr inbounds %struct._a, %struct._a* %state102, i32 0, i32 0
  %182 = load i32, i32* %Q103, align 4, !tbaa !101
  store i32 %182, i32* %yprev, align 4, !tbaa !5
  store i32 %182, i32* %yrun, align 4, !tbaa !5
  %183 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda104 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %183, i32 0, i32 55
  %row = getelementptr inbounds %struct.dd_, %struct.dd_* %dda104, i32 0, i32 0
  %x105 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %row, i32 0, i32 0
  %state106 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x105, i32 0, i32 0
  %Q107 = getelementptr inbounds %struct._a, %struct._a* %state106, i32 0, i32 0
  %184 = load i32, i32* %Q107, align 4, !tbaa !102
  %185 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %cur = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %185, i32 0, i32 53
  %x108 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cur, i32 0, i32 0
  %186 = load i32, i32* %x108, align 4, !tbaa !103
  %sub = sub nsw i32 %184, %186
  store i32 %sub, i32* %pdyx, align 4, !tbaa !5
  %187 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda109 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %187, i32 0, i32 55
  %row110 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda109, i32 0, i32 0
  %y111 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %row110, i32 0, i32 1
  %state112 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y111, i32 0, i32 0
  %Q113 = getelementptr inbounds %struct._a, %struct._a* %state112, i32 0, i32 0
  %188 = load i32, i32* %Q113, align 4, !tbaa !104
  %189 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %cur114 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %189, i32 0, i32 53
  %y115 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cur114, i32 0, i32 1
  %190 = load i32, i32* %y115, align 4, !tbaa !105
  %sub116 = sub nsw i32 %188, %190
  store i32 %sub116, i32* %pdyy, align 4, !tbaa !5
  %191 = load i32, i32* %posture, align 4, !tbaa !7
  switch i32 %191, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.117
  ]

sw.bb:                                            ; preds = %if.end.101
  %192 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %yci = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %192, i32 0, i32 60
  %193 = load i32, i32* %yci, align 4, !tbaa !92
  store i32 %193, i32* %vci, align 4, !tbaa !5
  %194 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %hci = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %194, i32 0, i32 61
  %195 = load i32, i32* %hci, align 4, !tbaa !93
  store i32 %195, i32* %vdi, align 4, !tbaa !5
  %196 = load i32, i32* %xrun, align 4, !tbaa !5
  %add = add nsw i32 %196, 128
  %shr = ashr i32 %add, 8
  store i32 %shr, i32* %irun, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.117:                                        ; preds = %if.end.101
  br label %sw.default

sw.default:                                       ; preds = %if.end.101, %sw.bb.117
  %197 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %xci = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %197, i32 0, i32 62
  %198 = load i32, i32* %xci, align 4, !tbaa !139
  store i32 %198, i32* %vci, align 4, !tbaa !5
  %199 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %wci = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %199, i32 0, i32 63
  %200 = load i32, i32* %wci, align 4, !tbaa !140
  store i32 %200, i32* %vdi, align 4, !tbaa !5
  %201 = load i32, i32* %yrun, align 4, !tbaa !5
  %add118 = add nsw i32 %201, 128
  %shr119 = ashr i32 %add118, 8
  store i32 %shr119, i32* %irun, align 4, !tbaa !5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  br label %do.body

do.body:                                          ; preds = %sw.epilog
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %202 = bitcast %union.color_fracs* %run to i8*
  %call120 = call i8* @memset(i8* %202, i32 0, i64 128) #7
  %203 = bitcast %union.color_fracs* %next to i8*
  %call121 = call i8* @memset(i8* %203, i32 0, i64 128) #7
  %204 = load i16*, i16** %psrc_cm, align 8, !tbaa !1
  %arrayidx122 = getelementptr inbounds i16, i16* %204, i64 0
  %205 = load i16, i16* %arrayidx122, align 2, !tbaa !8
  %conv123 = zext i16 %205 to i32
  %neg = xor i32 %conv123, -1
  %conv124 = trunc i32 %neg to i16
  %v = bitcast %union.color_fracs* %run to [64 x i16]*
  %arrayidx125 = getelementptr inbounds [64 x i16], [64 x i16]* %v, i32 0, i64 0
  store i16 %conv124, i16* %arrayidx125, align 2, !tbaa !8
  br label %while.cond

while.cond:                                       ; preds = %inc.263, %do.end
  %206 = load i16*, i16** %psrc_cm, align 8, !tbaa !1
  %207 = load i16*, i16** %bufend, align 8, !tbaa !1
  %cmp126 = icmp ult i16* %206, %207
  br i1 %cmp126, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %do.body.128

do.body.128:                                      ; preds = %while.body
  %x129 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pnext, i32 0, i32 0
  %step = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x129, i32 0, i32 1
  %dR = getelementptr inbounds %struct._e, %struct._e* %step, i32 0, i32 1
  %208 = load i32, i32* %dR, align 4, !tbaa !118
  %x130 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pnext, i32 0, i32 0
  %state131 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x130, i32 0, i32 0
  %R = getelementptr inbounds %struct._a, %struct._a* %state131, i32 0, i32 1
  %209 = load i32, i32* %R, align 4, !tbaa !119
  %sub132 = sub i32 %209, %208
  store i32 %sub132, i32* %R, align 4, !tbaa !119
  %x133 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pnext, i32 0, i32 0
  %state134 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x133, i32 0, i32 0
  %R135 = getelementptr inbounds %struct._a, %struct._a* %state134, i32 0, i32 1
  %210 = load i32, i32* %R135, align 4, !tbaa !119
  %cmp136 = icmp slt i32 %210, 0
  br i1 %cmp136, label %if.then.138, label %if.end.148

if.then.138:                                      ; preds = %do.body.128
  %x139 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pnext, i32 0, i32 0
  %state140 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x139, i32 0, i32 0
  %Q141 = getelementptr inbounds %struct._a, %struct._a* %state140, i32 0, i32 0
  %211 = load i32, i32* %Q141, align 4, !tbaa !100
  %inc = add nsw i32 %211, 1
  store i32 %inc, i32* %Q141, align 4, !tbaa !100
  %x142 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pnext, i32 0, i32 0
  %step143 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x142, i32 0, i32 1
  %N = getelementptr inbounds %struct._e, %struct._e* %step143, i32 0, i32 2
  %212 = load i32, i32* %N, align 4, !tbaa !120
  %x144 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pnext, i32 0, i32 0
  %state145 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x144, i32 0, i32 0
  %R146 = getelementptr inbounds %struct._a, %struct._a* %state145, i32 0, i32 1
  %213 = load i32, i32* %R146, align 4, !tbaa !119
  %add147 = add i32 %213, %212
  store i32 %add147, i32* %R146, align 4, !tbaa !119
  br label %if.end.148

if.end.148:                                       ; preds = %if.then.138, %do.body.128
  %x149 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pnext, i32 0, i32 0
  %step150 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x149, i32 0, i32 1
  %dQ = getelementptr inbounds %struct._e, %struct._e* %step150, i32 0, i32 0
  %214 = load i32, i32* %dQ, align 4, !tbaa !121
  %x151 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pnext, i32 0, i32 0
  %state152 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x151, i32 0, i32 0
  %Q153 = getelementptr inbounds %struct._a, %struct._a* %state152, i32 0, i32 0
  %215 = load i32, i32* %Q153, align 4, !tbaa !100
  %add154 = add nsw i32 %215, %214
  store i32 %add154, i32* %Q153, align 4, !tbaa !100
  br label %do.cond.155

do.cond.155:                                      ; preds = %if.end.148
  br label %do.end.156

do.end.156:                                       ; preds = %do.cond.155
  br label %do.body.157

do.body.157:                                      ; preds = %do.end.156
  %y158 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pnext, i32 0, i32 1
  %step159 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y158, i32 0, i32 1
  %dR160 = getelementptr inbounds %struct._e, %struct._e* %step159, i32 0, i32 1
  %216 = load i32, i32* %dR160, align 4, !tbaa !122
  %y161 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pnext, i32 0, i32 1
  %state162 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y161, i32 0, i32 0
  %R163 = getelementptr inbounds %struct._a, %struct._a* %state162, i32 0, i32 1
  %217 = load i32, i32* %R163, align 4, !tbaa !123
  %sub164 = sub i32 %217, %216
  store i32 %sub164, i32* %R163, align 4, !tbaa !123
  %y165 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pnext, i32 0, i32 1
  %state166 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y165, i32 0, i32 0
  %R167 = getelementptr inbounds %struct._a, %struct._a* %state166, i32 0, i32 1
  %218 = load i32, i32* %R167, align 4, !tbaa !123
  %cmp168 = icmp slt i32 %218, 0
  br i1 %cmp168, label %if.then.170, label %if.end.182

if.then.170:                                      ; preds = %do.body.157
  %y171 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pnext, i32 0, i32 1
  %state172 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y171, i32 0, i32 0
  %Q173 = getelementptr inbounds %struct._a, %struct._a* %state172, i32 0, i32 0
  %219 = load i32, i32* %Q173, align 4, !tbaa !101
  %inc174 = add nsw i32 %219, 1
  store i32 %inc174, i32* %Q173, align 4, !tbaa !101
  %y175 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pnext, i32 0, i32 1
  %step176 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y175, i32 0, i32 1
  %N177 = getelementptr inbounds %struct._e, %struct._e* %step176, i32 0, i32 2
  %220 = load i32, i32* %N177, align 4, !tbaa !124
  %y178 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pnext, i32 0, i32 1
  %state179 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y178, i32 0, i32 0
  %R180 = getelementptr inbounds %struct._a, %struct._a* %state179, i32 0, i32 1
  %221 = load i32, i32* %R180, align 4, !tbaa !123
  %add181 = add i32 %221, %220
  store i32 %add181, i32* %R180, align 4, !tbaa !123
  br label %if.end.182

if.end.182:                                       ; preds = %if.then.170, %do.body.157
  %y183 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pnext, i32 0, i32 1
  %step184 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y183, i32 0, i32 1
  %dQ185 = getelementptr inbounds %struct._e, %struct._e* %step184, i32 0, i32 0
  %222 = load i32, i32* %dQ185, align 4, !tbaa !125
  %y186 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pnext, i32 0, i32 1
  %state187 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y186, i32 0, i32 0
  %Q188 = getelementptr inbounds %struct._a, %struct._a* %state187, i32 0, i32 0
  %223 = load i32, i32* %Q188, align 4, !tbaa !101
  %add189 = add nsw i32 %223, %222
  store i32 %add189, i32* %Q188, align 4, !tbaa !101
  br label %do.cond.190

do.cond.190:                                      ; preds = %if.end.182
  br label %do.end.191

do.end.191:                                       ; preds = %do.cond.190
  %224 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %alpha = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %224, i32 0, i32 15
  %225 = load i32, i32* %alpha, align 4, !tbaa !141
  %tobool192 = icmp ne i32 %225, 0
  br i1 %tobool192, label %if.then.193, label %if.else.194

if.then.193:                                      ; preds = %do.end.191
  br label %if.end.202

if.else.194:                                      ; preds = %do.end.191
  %v195 = bitcast %union.color_fracs* %next to [64 x i16]*
  %arrayidx196 = getelementptr inbounds [64 x i16], [64 x i16]* %v195, i32 0, i64 0
  %226 = bitcast i16* %arrayidx196 to i8*
  %227 = load i16*, i16** %psrc_cm, align 8, !tbaa !1
  %228 = bitcast i16* %227 to i8*
  %229 = load i32, i32* %spp_cm, align 4, !tbaa !5
  %mul197 = mul nsw i32 %229, 2
  %conv198 = sext i32 %mul197 to i64
  %call199 = call i8* @memcpy(i8* %226, i8* %228, i64 %conv198) #7
  %230 = load i32, i32* %spp_cm, align 4, !tbaa !5
  %231 = load i16*, i16** %psrc_cm, align 8, !tbaa !1
  %idx.ext200 = sext i32 %230 to i64
  %add.ptr201 = getelementptr inbounds i16, i16* %231, i64 %idx.ext200
  store i16* %add.ptr201, i16** %psrc_cm, align 8, !tbaa !1
  br label %if.end.202

if.end.202:                                       ; preds = %if.else.194, %if.then.193
  %232 = load i32, i32* %posture, align 4, !tbaa !7
  %cmp203 = icmp ne i32 %232, 2
  br i1 %cmp203, label %land.lhs.true.205, label %if.end.213

land.lhs.true.205:                                ; preds = %if.end.202
  %all = bitcast %union.color_fracs* %next to [16 x i64]*
  %arraydecay = getelementptr inbounds [16 x i64], [16 x i64]* %all, i32 0, i32 0
  %233 = bitcast i64* %arraydecay to i8*
  %all206 = bitcast %union.color_fracs* %run to [16 x i64]*
  %arraydecay207 = getelementptr inbounds [16 x i64], [16 x i64]* %all206, i32 0, i32 0
  %234 = bitcast i64* %arraydecay207 to i8*
  %235 = load i32, i32* %spp_cm, align 4, !tbaa !5
  %mul208 = mul nsw i32 %235, 2
  %conv209 = sext i32 %mul208 to i64
  %call210 = call i32 @memcmp(i8* %233, i8* %234, i64 %conv209) #8
  %tobool211 = icmp ne i32 %call210, 0
  br i1 %tobool211, label %if.end.213, label %if.then.212

if.then.212:                                      ; preds = %land.lhs.true.205
  br label %inc.263

if.end.213:                                       ; preds = %land.lhs.true.205, %if.end.202
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.213
  %236 = load i32, i32* %k, align 4, !tbaa !5
  %237 = load i32, i32* %spp_cm, align 4, !tbaa !5
  %cmp214 = icmp slt i32 %236, %237
  br i1 %cmp214, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %238 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom = sext i32 %238 to i64
  %v216 = bitcast %union.color_fracs* %next to [64 x i16]*
  %arrayidx217 = getelementptr inbounds [64 x i16], [64 x i16]* %v216, i32 0, i64 %idxprom
  %239 = load i16, i16* %arrayidx217, align 2, !tbaa !8
  %240 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom218 = sext i32 %240 to i64
  %arrayidx219 = getelementptr inbounds [64 x i16], [64 x i16]* %conc, i32 0, i64 %idxprom218
  store i16 %239, i16* %arrayidx219, align 2, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %241 = load i32, i32* %k, align 4, !tbaa !5
  %inc220 = add nsw i32 %241, 1
  store i32 %inc220, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %242 = load i32, i32* %must_halftone, align 4, !tbaa !5
  %tobool221 = icmp ne i32 %242, 0
  br i1 %tobool221, label %if.then.223, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %243 = load i32, i32* %has_transfer, align 4, !tbaa !5
  %tobool222 = icmp ne i32 %243, 0
  br i1 %tobool222, label %if.then.223, label %if.else.225

if.then.223:                                      ; preds = %lor.lhs.false, %for.end
  %arrayidx224 = getelementptr inbounds [64 x i16], [64 x i16]* %conc, i32 0, i64 0
  %244 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc_next, align 8, !tbaa !1
  %245 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %246 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %247 = load i32, i32* %has_transfer, align 4, !tbaa !5
  %248 = load i32, i32* %must_halftone, align 4, !tbaa !5
  call void @cmap_transfer_halftone(i16* %arrayidx224, %struct.gx_device_color_s* %244, %struct.gs_imager_state_s* %245, %struct.gx_device_s* %246, i32 %247, i32 %248, i32 1) #6
  br label %if.end.234

if.else.225:                                      ; preds = %lor.lhs.false
  %249 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs226 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %249, i32 0, i32 42
  %encode_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs226, i32 0, i32 51
  %250 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %encode_color, align 8, !tbaa !142
  %251 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arrayidx227 = getelementptr inbounds [64 x i16], [64 x i16]* %conc, i32 0, i64 0
  %call228 = call i64 %250(%struct.gx_device_s* %251, i16* %arrayidx227) #6
  store i64 %call228, i64* %color, align 8, !tbaa !106
  %252 = load i64, i64* %color, align 8, !tbaa !106
  %cmp229 = icmp ne i64 %252, -1
  br i1 %cmp229, label %if.then.231, label %if.end.233

if.then.231:                                      ; preds = %if.else.225
  %253 = load i64, i64* %color, align 8, !tbaa !106
  %254 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc_next, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %254, i32 0, i32 1
  %pure = bitcast %union._c* %colors to i64*
  store i64 %253, i64* %pure, align 8, !tbaa !106
  %255 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc_next, align 8, !tbaa !1
  %type232 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %255, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_pure, %struct.gx_device_color_type_s** %type232, align 8, !tbaa !107
  br label %if.end.233

if.end.233:                                       ; preds = %if.then.231, %if.else.225
  br label %if.end.234

if.end.234:                                       ; preds = %if.end.233, %if.then.223
  %256 = load i32, i32* %posture, align 4, !tbaa !7
  %cmp235 = icmp ne i32 %256, 0
  br i1 %cmp235, label %if.then.237, label %if.else.242

if.then.237:                                      ; preds = %if.end.234
  %257 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs238 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %257, i32 0, i32 42
  %fill_parallelogram = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs238, i32 0, i32 28
  %258 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)** %fill_parallelogram, align 8, !tbaa !114
  %259 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %260 = load i32, i32* %xrun, align 4, !tbaa !5
  %261 = load i32, i32* %yrun, align 4, !tbaa !5
  %262 = load i32, i32* %xprev, align 4, !tbaa !5
  %263 = load i32, i32* %xrun, align 4, !tbaa !5
  %sub239 = sub nsw i32 %262, %263
  %264 = load i32, i32* %yprev, align 4, !tbaa !5
  %265 = load i32, i32* %yrun, align 4, !tbaa !5
  %sub240 = sub nsw i32 %264, %265
  %266 = load i32, i32* %pdyx, align 4, !tbaa !5
  %267 = load i32, i32* %pdyy, align 4, !tbaa !5
  %268 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %269 = load i32, i32* %lop, align 4, !tbaa !5
  %call241 = call i32 %258(%struct.gx_device_s* %259, i32 %260, i32 %261, i32 %sub239, i32 %sub240, i32 %266, i32 %267, %struct.gx_device_color_s* %268, i32 %269) #6
  store i32 %call241, i32* %code, align 4, !tbaa !5
  %270 = load i32, i32* %xprev, align 4, !tbaa !5
  store i32 %270, i32* %xrun, align 4, !tbaa !5
  %271 = load i32, i32* %yprev, align 4, !tbaa !5
  store i32 %271, i32* %yrun, align 4, !tbaa !5
  br label %if.end.258

if.else.242:                                      ; preds = %if.end.234
  %272 = bitcast i32* %xi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %272) #1
  %273 = load i32, i32* %irun, align 4, !tbaa !5
  store i32 %273, i32* %xi, align 4, !tbaa !5
  %274 = bitcast i32* %wi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %274) #1
  %275 = load i32, i32* %xprev, align 4, !tbaa !5
  %add243 = add nsw i32 %275, 128
  %shr244 = ashr i32 %add243, 8
  store i32 %shr244, i32* %irun, align 4, !tbaa !5
  %276 = load i32, i32* %xi, align 4, !tbaa !5
  %sub245 = sub nsw i32 %shr244, %276
  store i32 %sub245, i32* %wi, align 4, !tbaa !5
  %277 = load i32, i32* %wi, align 4, !tbaa !5
  %cmp246 = icmp slt i32 %277, 0
  br i1 %cmp246, label %if.then.248, label %if.end.251

if.then.248:                                      ; preds = %if.else.242
  %278 = load i32, i32* %wi, align 4, !tbaa !5
  %279 = load i32, i32* %xi, align 4, !tbaa !5
  %add249 = add nsw i32 %279, %278
  store i32 %add249, i32* %xi, align 4, !tbaa !5
  %280 = load i32, i32* %wi, align 4, !tbaa !5
  %sub250 = sub nsw i32 0, %280
  store i32 %sub250, i32* %wi, align 4, !tbaa !5
  br label %if.end.251

if.end.251:                                       ; preds = %if.then.248, %if.else.242
  %281 = load i32, i32* %wi, align 4, !tbaa !5
  %cmp252 = icmp sgt i32 %281, 0
  br i1 %cmp252, label %if.then.254, label %if.end.257

if.then.254:                                      ; preds = %if.end.251
  %282 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %type255 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %282, i32 0, i32 0
  %283 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type255, align 8, !tbaa !107
  %fill_rectangle = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %283, i32 0, i32 5
  %284 = load i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)** %fill_rectangle, align 8, !tbaa !115
  %285 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %286 = load i32, i32* %xi, align 4, !tbaa !5
  %287 = load i32, i32* %vci, align 4, !tbaa !5
  %288 = load i32, i32* %wi, align 4, !tbaa !5
  %289 = load i32, i32* %vdi, align 4, !tbaa !5
  %290 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %291 = load i32, i32* %lop, align 4, !tbaa !5
  %call256 = call i32 %284(%struct.gx_device_color_s* %285, i32 %286, i32 %287, i32 %288, i32 %289, %struct.gx_device_s* %290, i32 %291, %struct.gx_rop_source_s* null) #6
  store i32 %call256, i32* %code, align 4, !tbaa !5
  br label %if.end.257

if.end.257:                                       ; preds = %if.then.254, %if.end.251
  %292 = bitcast i32* %wi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %292) #1
  %293 = bitcast i32* %xi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %293) #1
  br label %if.end.258

if.end.258:                                       ; preds = %if.end.257, %if.then.237
  %294 = load i32, i32* %code, align 4, !tbaa !5
  %cmp259 = icmp slt i32 %294, 0
  br i1 %cmp259, label %if.then.261, label %if.end.262

if.then.261:                                      ; preds = %if.end.258
  br label %err

if.end.262:                                       ; preds = %if.end.258
  %295 = load i16*, i16** %psrc, align 8, !tbaa !1
  store i16* %295, i16** %rsrc, align 8, !tbaa !1
  %296 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  store %struct.gx_device_color_s* %296, %struct.gx_device_color_s** %ptemp, align 8, !tbaa !1
  %297 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc_next, align 8, !tbaa !1
  store %struct.gx_device_color_s* %297, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %298 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %ptemp, align 8, !tbaa !1
  store %struct.gx_device_color_s* %298, %struct.gx_device_color_s** %pdevc_next, align 8, !tbaa !1
  %299 = bitcast %union.color_fracs* %run to i8*
  %300 = bitcast %union.color_fracs* %next to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %299, i8* %300, i64 128, i32 8, i1 false), !tbaa.struct !117
  br label %inc.263

inc.263:                                          ; preds = %if.end.262, %if.then.212
  %x264 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pnext, i32 0, i32 0
  %state265 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x264, i32 0, i32 0
  %Q266 = getelementptr inbounds %struct._a, %struct._a* %state265, i32 0, i32 0
  %301 = load i32, i32* %Q266, align 4, !tbaa !100
  store i32 %301, i32* %xprev, align 4, !tbaa !5
  %y267 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pnext, i32 0, i32 1
  %state268 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y267, i32 0, i32 0
  %Q269 = getelementptr inbounds %struct._a, %struct._a* %state268, i32 0, i32 0
  %302 = load i32, i32* %Q269, align 4, !tbaa !101
  store i32 %302, i32* %yprev, align 4, !tbaa !5
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %303 = load i32, i32* %posture, align 4, !tbaa !7
  %cmp270 = icmp ne i32 %303, 0
  br i1 %cmp270, label %if.then.272, label %if.else.278

if.then.272:                                      ; preds = %while.end
  %304 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs273 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %304, i32 0, i32 42
  %fill_parallelogram274 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs273, i32 0, i32 28
  %305 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)** %fill_parallelogram274, align 8, !tbaa !114
  %306 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %307 = load i32, i32* %xrun, align 4, !tbaa !5
  %308 = load i32, i32* %yrun, align 4, !tbaa !5
  %309 = load i32, i32* %xprev, align 4, !tbaa !5
  %310 = load i32, i32* %xrun, align 4, !tbaa !5
  %sub275 = sub nsw i32 %309, %310
  %311 = load i32, i32* %yprev, align 4, !tbaa !5
  %312 = load i32, i32* %yrun, align 4, !tbaa !5
  %sub276 = sub nsw i32 %311, %312
  %313 = load i32, i32* %pdyx, align 4, !tbaa !5
  %314 = load i32, i32* %pdyy, align 4, !tbaa !5
  %315 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %316 = load i32, i32* %lop, align 4, !tbaa !5
  %call277 = call i32 %305(%struct.gx_device_s* %306, i32 %307, i32 %308, i32 %sub275, i32 %sub276, i32 %313, i32 %314, %struct.gx_device_color_s* %315, i32 %316) #6
  store i32 %call277, i32* %code, align 4, !tbaa !5
  br label %if.end.297

if.else.278:                                      ; preds = %while.end
  %317 = bitcast i32* %xi279 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %317) #1
  %318 = load i32, i32* %irun, align 4, !tbaa !5
  store i32 %318, i32* %xi279, align 4, !tbaa !5
  %319 = bitcast i32* %wi280 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %319) #1
  %320 = load i32, i32* %xprev, align 4, !tbaa !5
  %add281 = add nsw i32 %320, 128
  %shr282 = ashr i32 %add281, 8
  store i32 %shr282, i32* %irun, align 4, !tbaa !5
  %321 = load i32, i32* %xi279, align 4, !tbaa !5
  %sub283 = sub nsw i32 %shr282, %321
  store i32 %sub283, i32* %wi280, align 4, !tbaa !5
  %322 = load i32, i32* %wi280, align 4, !tbaa !5
  %cmp284 = icmp slt i32 %322, 0
  br i1 %cmp284, label %if.then.286, label %if.end.289

if.then.286:                                      ; preds = %if.else.278
  %323 = load i32, i32* %wi280, align 4, !tbaa !5
  %324 = load i32, i32* %xi279, align 4, !tbaa !5
  %add287 = add nsw i32 %324, %323
  store i32 %add287, i32* %xi279, align 4, !tbaa !5
  %325 = load i32, i32* %wi280, align 4, !tbaa !5
  %sub288 = sub nsw i32 0, %325
  store i32 %sub288, i32* %wi280, align 4, !tbaa !5
  br label %if.end.289

if.end.289:                                       ; preds = %if.then.286, %if.else.278
  %326 = load i32, i32* %wi280, align 4, !tbaa !5
  %cmp290 = icmp sgt i32 %326, 0
  br i1 %cmp290, label %if.then.292, label %if.end.296

if.then.292:                                      ; preds = %if.end.289
  %327 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %type293 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %327, i32 0, i32 0
  %328 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type293, align 8, !tbaa !107
  %fill_rectangle294 = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %328, i32 0, i32 5
  %329 = load i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)** %fill_rectangle294, align 8, !tbaa !115
  %330 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %331 = load i32, i32* %xi279, align 4, !tbaa !5
  %332 = load i32, i32* %vci, align 4, !tbaa !5
  %333 = load i32, i32* %wi280, align 4, !tbaa !5
  %334 = load i32, i32* %vdi, align 4, !tbaa !5
  %335 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %336 = load i32, i32* %lop, align 4, !tbaa !5
  %call295 = call i32 %329(%struct.gx_device_color_s* %330, i32 %331, i32 %332, i32 %333, i32 %334, %struct.gx_device_s* %335, i32 %336, %struct.gx_rop_source_s* null) #6
  store i32 %call295, i32* %code, align 4, !tbaa !5
  br label %if.end.296

if.end.296:                                       ; preds = %if.then.292, %if.end.289
  %337 = bitcast i32* %wi280 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %337) #1
  %338 = bitcast i32* %xi279 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %338) #1
  br label %if.end.297

if.end.297:                                       ; preds = %if.end.296, %if.then.272
  %339 = load i16*, i16** %psrc_cm_start, align 8, !tbaa !1
  %cmp298 = icmp ne i16* %339, null
  br i1 %cmp298, label %if.then.300, label %if.end.305

if.then.300:                                      ; preds = %if.end.297
  %340 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %memory301 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %340, i32 0, i32 1
  %341 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory301, align 8, !tbaa !132
  %procs302 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %341, i32 0, i32 1
  %free_object303 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs302, i32 0, i32 2
  %342 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object303, align 8, !tbaa !138
  %343 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %memory304 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %343, i32 0, i32 1
  %344 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory304, align 8, !tbaa !132
  %345 = load i16*, i16** %psrc_cm_start, align 8, !tbaa !1
  %346 = bitcast i16* %345 to i8*
  call void %342(%struct.gs_memory_s* %344, i8* %346, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.image_render_icc16, i32 0, i32 0)) #6
  br label %if.end.305

if.end.305:                                       ; preds = %if.then.300, %if.end.297
  %347 = load i32, i32* %code, align 4, !tbaa !5
  %cmp306 = icmp slt i32 %347, 0
  br i1 %cmp306, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.305
  %348 = load i32, i32* %code, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %if.end.305
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %348, %cond.true ], [ 1, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

err:                                              ; preds = %if.then.261
  %349 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %memory308 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %349, i32 0, i32 1
  %350 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory308, align 8, !tbaa !132
  %procs309 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %350, i32 0, i32 1
  %free_object310 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs309, i32 0, i32 2
  %351 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object310, align 8, !tbaa !138
  %352 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %memory311 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %352, i32 0, i32 1
  %353 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory311, align 8, !tbaa !132
  %354 = load i16*, i16** %psrc_cm_start, align 8, !tbaa !1
  %355 = bitcast i16* %354 to i8*
  call void %351(%struct.gs_memory_s* %353, i8* %355, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.image_render_icc16, i32 0, i32 0)) #6
  %356 = load i16*, i16** %rsrc, align 8, !tbaa !1
  %357 = load i32, i32* %spp, align 4, !tbaa !5
  %idx.ext312 = sext i32 %357 to i64
  %idx.neg = sub i64 0, %idx.ext312
  %add.ptr313 = getelementptr inbounds i16, i16* %356, i64 %idx.neg
  %358 = load i16*, i16** %psrc_initial, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i16* %add.ptr313 to i64
  %sub.ptr.rhs.cast = ptrtoint i16* %358 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 2
  %359 = load i32, i32* %spp, align 4, !tbaa !5
  %conv314 = sext i32 %359 to i64
  %div315 = sdiv i64 %sub.ptr.div, %conv314
  %conv316 = trunc i64 %div315 to i32
  %360 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %used = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %360, i32 0, i32 52
  %x317 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %used, i32 0, i32 0
  store i32 %conv316, i32* %x317, align 4, !tbaa !126
  %361 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %used318 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %361, i32 0, i32 52
  %y319 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %used318, i32 0, i32 1
  store i32 0, i32* %y319, align 4, !tbaa !127
  %362 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %362, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %err, %cond.end, %if.then.16, %if.then
  %363 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %363) #1
  %364 = bitcast i32* %num_des_comps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %364) #1
  %365 = bitcast i32* %has_transfer to i8*
  call void @llvm.lifetime.end(i64 4, i8* %365) #1
  %366 = bitcast i32* %must_halftone to i8*
  call void @llvm.lifetime.end(i64 4, i8* %366) #1
  %367 = bitcast i32* %need_decode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %367) #1
  %368 = bitcast i64* %color to i8*
  call void @llvm.lifetime.end(i64 8, i8* %368) #1
  %369 = bitcast i32* %num_pixels to i8*
  call void @llvm.lifetime.end(i64 4, i8* %369) #1
  %370 = bitcast i32* %spp_cm to i8*
  call void @llvm.lifetime.end(i64 4, i8* %370) #1
  %371 = bitcast [64 x i16]* %conc to i8*
  call void @llvm.lifetime.end(i64 128, i8* %371) #1
  %372 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %372) #1
  %373 = bitcast i16** %psrc_decode to i8*
  call void @llvm.lifetime.end(i64 8, i8* %373) #1
  %374 = bitcast i16** %psrc_cm_start to i8*
  call void @llvm.lifetime.end(i64 8, i8* %374) #1
  %375 = bitcast i16** %psrc_cm to i8*
  call void @llvm.lifetime.end(i64 8, i8* %375) #1
  %376 = bitcast %struct.gsicc_bufferdesc_s* %output_buff_desc to i8*
  call void @llvm.lifetime.end(i64 36, i8* %376) #1
  %377 = bitcast %struct.gsicc_bufferdesc_s* %input_buff_desc to i8*
  call void @llvm.lifetime.end(i64 36, i8* %377) #1
  %378 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %378) #1
  %379 = bitcast i16** %bufend to i8*
  call void @llvm.lifetime.end(i64 8, i8* %379) #1
  %380 = bitcast %union.color_fracs* %next to i8*
  call void @llvm.lifetime.end(i64 128, i8* %380) #1
  %381 = bitcast %union.color_fracs* %run to i8*
  call void @llvm.lifetime.end(i64 128, i8* %381) #1
  %382 = bitcast i32* %yrun to i8*
  call void @llvm.lifetime.end(i64 4, i8* %382) #1
  %383 = bitcast i32* %irun to i8*
  call void @llvm.lifetime.end(i64 4, i8* %383) #1
  %384 = bitcast i32* %xrun to i8*
  call void @llvm.lifetime.end(i64 4, i8* %384) #1
  %385 = bitcast i16** %rsrc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %385) #1
  %386 = bitcast i16** %psrc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %386) #1
  %387 = bitcast i16** %psrc_initial to i8*
  call void @llvm.lifetime.end(i64 8, i8* %387) #1
  %388 = bitcast i32* %spp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %388) #1
  %389 = bitcast %struct.gx_device_color_s** %ptemp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %389) #1
  %390 = bitcast %struct.gx_device_color_s** %pdevc_next to i8*
  call void @llvm.lifetime.end(i64 8, i8* %390) #1
  %391 = bitcast %struct.gx_device_color_s** %pdevc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %391) #1
  %392 = bitcast %struct.gx_device_color_s* %devc2 to i8*
  call void @llvm.lifetime.end(i64 656, i8* %392) #1
  %393 = bitcast %struct.gx_device_color_s* %devc1 to i8*
  call void @llvm.lifetime.end(i64 656, i8* %393) #1
  %394 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %394) #1
  %395 = bitcast i32* %vdi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %395) #1
  %396 = bitcast i32* %vci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %396) #1
  %397 = bitcast i32* %pdyy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %397) #1
  %398 = bitcast i32* %pdyx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %398) #1
  %399 = bitcast i32* %yprev to i8*
  call void @llvm.lifetime.end(i64 4, i8* %399) #1
  %400 = bitcast i32* %xprev to i8*
  call void @llvm.lifetime.end(i64 4, i8* %400) #1
  %401 = bitcast i32* %posture to i8*
  call void @llvm.lifetime.end(i64 4, i8* %401) #1
  %402 = bitcast %struct.gx_dda_fixed_point_s* %pnext to i8*
  call void @llvm.lifetime.end(i64 40, i8* %402) #1
  %403 = bitcast i32* %lop to i8*
  call void @llvm.lifetime.end(i64 4, i8* %403) #1
  %404 = bitcast %struct.gs_imager_state_s** %pis to i8*
  call void @llvm.lifetime.end(i64 8, i8* %404) #1
  %405 = load i32, i32* %retval
  ret i32 %405
}

declare %struct.gx_color_map_procs_s* @gx_get_cmap_procs(%struct.gs_imager_state_s*, %struct.gx_device_s*) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #3

; Function Attrs: nounwind uwtable
define internal i32 @mask_color12_matches(i16* %v, %struct.gx_image_enum_s* %penum, i32 %num_components) #0 {
entry:
  %retval = alloca i32, align 4
  %v.addr = alloca i16*, align 8
  %penum.addr = alloca %struct.gx_image_enum_s*, align 8
  %num_components.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i16* %v, i16** %v.addr, align 8, !tbaa !1
  store %struct.gx_image_enum_s* %penum, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  store i32 %num_components, i32* %num_components.addr, align 4, !tbaa !5
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %num_components.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %1, 2
  store i32 %mul, i32* %i, align 4, !tbaa !5
  %2 = load i32, i32* %num_components.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %2, 1
  %3 = load i16*, i16** %v.addr, align 8, !tbaa !1
  %idx.ext = sext i32 %sub to i64
  %add.ptr = getelementptr inbounds i16, i16* %3, i64 %idx.ext
  store i16* %add.ptr, i16** %v.addr, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4, !tbaa !5
  %sub1 = sub nsw i32 %4, 2
  store i32 %sub1, i32* %i, align 4, !tbaa !5
  %cmp = icmp sge i32 %sub1, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i16*, i16** %v.addr, align 8, !tbaa !1
  %6 = load i16, i16* %5, align 2, !tbaa !8
  %conv = sext i16 %6 to i32
  %7 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %mask_color = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %8, i32 0, i32 16
  %values = getelementptr inbounds %struct.mc_, %struct.mc_* %mask_color, i32 0, i32 0
  %arrayidx = getelementptr inbounds [130 x i32], [130 x i32]* %values, i32 0, i64 %idxprom
  %9 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %cmp2 = icmp ult i32 %conv, %9
  br i1 %cmp2, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %10 = load i16*, i16** %v.addr, align 8, !tbaa !1
  %11 = load i16, i16* %10, align 2, !tbaa !8
  %conv4 = sext i16 %11 to i32
  %12 = load i32, i32* %i, align 4, !tbaa !5
  %add = add nsw i32 %12, 1
  %idxprom5 = sext i32 %add to i64
  %13 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %mask_color6 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %13, i32 0, i32 16
  %values7 = getelementptr inbounds %struct.mc_, %struct.mc_* %mask_color6, i32 0, i32 0
  %arrayidx8 = getelementptr inbounds [130 x i32], [130 x i32]* %values7, i32 0, i64 %idxprom5
  %14 = load i32, i32* %arrayidx8, align 4, !tbaa !5
  %cmp9 = icmp ugt i32 %conv4, %14
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i16*, i16** %v.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i16, i16* %15, i32 -1
  store i16* %incdec.ptr, i16** %v.addr, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %16 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #1
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #4

declare i32 @gx_device_color_equal(%struct.gx_device_color_s*, %struct.gx_device_color_s*) #2

declare i32 @gs_throw_imp(i8*, i8*, i32, i32, i32, i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal void @decode_row16(%struct.gx_image_enum_s* %penum, i16* %psrc, i32 %spp, i16* %pdes, i16* %bufend) #0 {
entry:
  %penum.addr = alloca %struct.gx_image_enum_s*, align 8
  %psrc.addr = alloca i16*, align 8
  %spp.addr = alloca i32, align 4
  %pdes.addr = alloca i16*, align 8
  %bufend.addr = alloca i16*, align 8
  %curr_pos = alloca i16*, align 8
  %k = alloca i32, align 4
  %temp = alloca float, align 4
  store %struct.gx_image_enum_s* %penum, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  store i16* %psrc, i16** %psrc.addr, align 8, !tbaa !1
  store i32 %spp, i32* %spp.addr, align 4, !tbaa !5
  store i16* %pdes, i16** %pdes.addr, align 8, !tbaa !1
  store i16* %bufend, i16** %bufend.addr, align 8, !tbaa !1
  %0 = bitcast i16** %curr_pos to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i16*, i16** %pdes.addr, align 8, !tbaa !1
  store i16* %1, i16** %curr_pos, align 8, !tbaa !1
  %2 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast float* %temp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %4 = load i16*, i16** %curr_pos, align 8, !tbaa !1
  %5 = load i16*, i16** %bufend.addr, align 8, !tbaa !1
  %cmp = icmp ult i16* %4, %5
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %6 = load i32, i32* %k, align 4, !tbaa !5
  %7 = load i32, i32* %spp.addr, align 4, !tbaa !5
  %cmp1 = icmp slt i32 %6, %7
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %9, i32 0, i32 64
  %arrayidx = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map, i32 0, i64 %idxprom
  %decoding = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx, i32 0, i32 3
  %10 = load i32, i32* %decoding, align 4, !tbaa !55
  switch i32 %10, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.2
    i32 2, label %sw.bb.15
  ]

sw.bb:                                            ; preds = %for.body
  %11 = load i16*, i16** %psrc.addr, align 8, !tbaa !1
  %12 = load i16, i16* %11, align 2, !tbaa !8
  %13 = load i16*, i16** %curr_pos, align 8, !tbaa !1
  store i16 %12, i16* %13, align 2, !tbaa !8
  br label %sw.epilog

sw.bb.2:                                          ; preds = %for.body
  %14 = load i16*, i16** %psrc.addr, align 8, !tbaa !1
  %15 = load i16, i16* %14, align 2, !tbaa !8
  %conv = zext i16 %15 to i32
  %shr = ashr i32 %conv, 4
  %idxprom3 = sext i32 %shr to i64
  %16 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom4 = sext i32 %16 to i64
  %17 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map5 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %17, i32 0, i32 64
  %arrayidx6 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map5, i32 0, i64 %idxprom4
  %decode_lookup = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx6, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [16 x float], [16 x float]* %decode_lookup, i32 0, i64 %idxprom3
  %18 = load float, float* %arrayidx7, align 4, !tbaa !112
  %mul = fmul float %18, 6.553500e+04
  store float %mul, float* %temp, align 4, !tbaa !112
  %19 = load float, float* %temp, align 4, !tbaa !112
  %cmp8 = fcmp ogt float %19, 6.553500e+04
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.2
  store float 6.553500e+04, float* %temp, align 4, !tbaa !112
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.2
  %20 = load float, float* %temp, align 4, !tbaa !112
  %cmp10 = fcmp olt float %20, 0.000000e+00
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end
  store float 0.000000e+00, float* %temp, align 4, !tbaa !112
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.end
  %21 = load float, float* %temp, align 4, !tbaa !112
  %conv14 = fptoui float %21 to i16
  %22 = load i16*, i16** %curr_pos, align 8, !tbaa !1
  store i16 %conv14, i16* %22, align 2, !tbaa !8
  br label %sw.epilog

sw.bb.15:                                         ; preds = %for.body
  %23 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom16 = sext i32 %23 to i64
  %24 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map17 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %24, i32 0, i32 64
  %arrayidx18 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map17, i32 0, i64 %idxprom16
  %decode_lookup19 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx18, i32 0, i32 1
  %arrayidx20 = getelementptr inbounds [16 x float], [16 x float]* %decode_lookup19, i32 0, i64 0
  %25 = load float, float* %arrayidx20, align 4, !tbaa !112
  %26 = load i16*, i16** %psrc.addr, align 8, !tbaa !1
  %27 = load i16, i16* %26, align 2, !tbaa !8
  %conv21 = zext i16 %27 to i32
  %conv22 = sitofp i32 %conv21 to float
  %28 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom23 = sext i32 %28 to i64
  %29 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map24 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %29, i32 0, i32 64
  %arrayidx25 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map24, i32 0, i64 %idxprom23
  %decode_factor = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx25, i32 0, i32 2
  %30 = load float, float* %decode_factor, align 4, !tbaa !113
  %mul26 = fmul float %conv22, %30
  %add = fadd float %25, %mul26
  store float %add, float* %temp, align 4, !tbaa !112
  %31 = load float, float* %temp, align 4, !tbaa !112
  %mul27 = fmul float %31, 6.553500e+04
  store float %mul27, float* %temp, align 4, !tbaa !112
  %32 = load float, float* %temp, align 4, !tbaa !112
  %cmp28 = fcmp ogt float %32, 6.553500e+04
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %sw.bb.15
  store float 6.553500e+04, float* %temp, align 4, !tbaa !112
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %sw.bb.15
  %33 = load float, float* %temp, align 4, !tbaa !112
  %cmp32 = fcmp olt float %33, 0.000000e+00
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.end.31
  store float 0.000000e+00, float* %temp, align 4, !tbaa !112
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.34, %if.end.31
  %34 = load float, float* %temp, align 4, !tbaa !112
  %conv36 = fptoui float %34 to i16
  %35 = load i16*, i16** %curr_pos, align 8, !tbaa !1
  store i16 %conv36, i16* %35, align 2, !tbaa !8
  br label %sw.default

sw.default:                                       ; preds = %for.body, %if.end.35
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.13, %sw.bb
  %36 = load i16*, i16** %curr_pos, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i16, i16* %36, i32 1
  store i16* %incdec.ptr, i16** %curr_pos, align 8, !tbaa !1
  %37 = load i16*, i16** %psrc.addr, align 8, !tbaa !1
  %incdec.ptr37 = getelementptr inbounds i16, i16* %37, i32 1
  store i16* %incdec.ptr37, i16** %psrc.addr, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %38 = load i32, i32* %k, align 4, !tbaa !5
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %39 = bitcast float* %temp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  %40 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  %41 = bitcast i16** %curr_pos to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  ret void
}

declare void @gsicc_init_buffer(%struct.gsicc_bufferdesc_s*, i8 zeroext, i8 zeroext, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind uwtable
define internal void @decode_row_cie16(%struct.gx_image_enum_s* %penum, i16* %psrc, i32 %spp, i16* %pdes, i16* %bufend, %struct.gs_range_s* %range_array) #0 {
entry:
  %penum.addr = alloca %struct.gx_image_enum_s*, align 8
  %psrc.addr = alloca i16*, align 8
  %spp.addr = alloca i32, align 4
  %pdes.addr = alloca i16*, align 8
  %bufend.addr = alloca i16*, align 8
  %range_array.addr = alloca %struct.gs_range_s*, align 8
  %curr_pos = alloca i16*, align 8
  %k = alloca i32, align 4
  %temp = alloca float, align 4
  store %struct.gx_image_enum_s* %penum, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  store i16* %psrc, i16** %psrc.addr, align 8, !tbaa !1
  store i32 %spp, i32* %spp.addr, align 4, !tbaa !5
  store i16* %pdes, i16** %pdes.addr, align 8, !tbaa !1
  store i16* %bufend, i16** %bufend.addr, align 8, !tbaa !1
  store %struct.gs_range_s* %range_array, %struct.gs_range_s** %range_array.addr, align 8, !tbaa !1
  %0 = bitcast i16** %curr_pos to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i16*, i16** %pdes.addr, align 8, !tbaa !1
  store i16* %1, i16** %curr_pos, align 8, !tbaa !1
  %2 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast float* %temp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %4 = load i16*, i16** %curr_pos, align 8, !tbaa !1
  %5 = load i16*, i16** %bufend.addr, align 8, !tbaa !1
  %cmp = icmp ult i16* %4, %5
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %6 = load i32, i32* %k, align 4, !tbaa !5
  %7 = load i32, i32* %spp.addr, align 4, !tbaa !5
  %cmp1 = icmp slt i32 %6, %7
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %9, i32 0, i32 64
  %arrayidx = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map, i32 0, i64 %idxprom
  %decoding = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx, i32 0, i32 3
  %10 = load i32, i32* %decoding, align 4, !tbaa !55
  switch i32 %10, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.2
    i32 2, label %sw.bb.21
  ]

sw.bb:                                            ; preds = %for.body
  %11 = load i16*, i16** %psrc.addr, align 8, !tbaa !1
  %12 = load i16, i16* %11, align 2, !tbaa !8
  %13 = load i16*, i16** %curr_pos, align 8, !tbaa !1
  store i16 %12, i16* %13, align 2, !tbaa !8
  br label %sw.epilog

sw.bb.2:                                          ; preds = %for.body
  %14 = load i16*, i16** %psrc.addr, align 8, !tbaa !1
  %15 = load i16, i16* %14, align 2, !tbaa !8
  %conv = zext i16 %15 to i32
  %shr = ashr i32 %conv, 4
  %idxprom3 = sext i32 %shr to i64
  %16 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom4 = sext i32 %16 to i64
  %17 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map5 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %17, i32 0, i32 64
  %arrayidx6 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map5, i32 0, i64 %idxprom4
  %decode_lookup = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx6, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [16 x float], [16 x float]* %decode_lookup, i32 0, i64 %idxprom3
  %18 = load float, float* %arrayidx7, align 4, !tbaa !112
  %conv8 = fpext float %18 to double
  %mul = fmul double %conv8, 6.553500e+04
  %conv9 = fptrunc double %mul to float
  store float %conv9, float* %temp, align 4, !tbaa !112
  %19 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom10 = sext i32 %19 to i64
  %20 = load %struct.gs_range_s*, %struct.gs_range_s** %range_array.addr, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %20, i64 %idxprom10
  %21 = load float, float* %temp, align 4, !tbaa !112
  %22 = bitcast %struct.gs_range_s* %arrayidx11 to <2 x float>*
  %23 = load <2 x float>, <2 x float>* %22, align 4
  %call = call float @rescale_input_color(<2 x float> %23, float %21) #6
  store float %call, float* %temp, align 4, !tbaa !112
  %24 = load float, float* %temp, align 4, !tbaa !112
  %mul12 = fmul float %24, 6.553500e+04
  store float %mul12, float* %temp, align 4, !tbaa !112
  %25 = load float, float* %temp, align 4, !tbaa !112
  %conv13 = fpext float %25 to double
  %cmp14 = fcmp ogt double %conv13, 6.553500e+04
  br i1 %cmp14, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.2
  store float 6.553500e+04, float* %temp, align 4, !tbaa !112
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.2
  %26 = load float, float* %temp, align 4, !tbaa !112
  %cmp16 = fcmp olt float %26, 0.000000e+00
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end
  store float 0.000000e+00, float* %temp, align 4, !tbaa !112
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %if.end
  %27 = load float, float* %temp, align 4, !tbaa !112
  %conv20 = fptoui float %27 to i16
  %28 = load i16*, i16** %curr_pos, align 8, !tbaa !1
  store i16 %conv20, i16* %28, align 2, !tbaa !8
  br label %sw.epilog

sw.bb.21:                                         ; preds = %for.body
  %29 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom22 = sext i32 %29 to i64
  %30 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map23 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %30, i32 0, i32 64
  %arrayidx24 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map23, i32 0, i64 %idxprom22
  %decode_lookup25 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx24, i32 0, i32 1
  %arrayidx26 = getelementptr inbounds [16 x float], [16 x float]* %decode_lookup25, i32 0, i64 0
  %31 = load float, float* %arrayidx26, align 4, !tbaa !112
  %32 = load i16*, i16** %psrc.addr, align 8, !tbaa !1
  %33 = load i16, i16* %32, align 2, !tbaa !8
  %conv27 = zext i16 %33 to i32
  %conv28 = sitofp i32 %conv27 to float
  %34 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom29 = sext i32 %34 to i64
  %35 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map30 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %35, i32 0, i32 64
  %arrayidx31 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map30, i32 0, i64 %idxprom29
  %decode_factor = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx31, i32 0, i32 2
  %36 = load float, float* %decode_factor, align 4, !tbaa !113
  %mul32 = fmul float %conv28, %36
  %add = fadd float %31, %mul32
  store float %add, float* %temp, align 4, !tbaa !112
  %37 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom33 = sext i32 %37 to i64
  %38 = load %struct.gs_range_s*, %struct.gs_range_s** %range_array.addr, align 8, !tbaa !1
  %arrayidx34 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %38, i64 %idxprom33
  %39 = load float, float* %temp, align 4, !tbaa !112
  %40 = bitcast %struct.gs_range_s* %arrayidx34 to <2 x float>*
  %41 = load <2 x float>, <2 x float>* %40, align 4
  %call35 = call float @rescale_input_color(<2 x float> %41, float %39) #6
  store float %call35, float* %temp, align 4, !tbaa !112
  %42 = load float, float* %temp, align 4, !tbaa !112
  %mul36 = fmul float %42, 6.553500e+04
  store float %mul36, float* %temp, align 4, !tbaa !112
  %43 = load float, float* %temp, align 4, !tbaa !112
  %cmp37 = fcmp ogt float %43, 6.553500e+04
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %sw.bb.21
  store float 6.553500e+04, float* %temp, align 4, !tbaa !112
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.39, %sw.bb.21
  %44 = load float, float* %temp, align 4, !tbaa !112
  %cmp41 = fcmp olt float %44, 0.000000e+00
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.end.40
  store float 0.000000e+00, float* %temp, align 4, !tbaa !112
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.43, %if.end.40
  %45 = load float, float* %temp, align 4, !tbaa !112
  %conv45 = fptoui float %45 to i16
  %46 = load i16*, i16** %curr_pos, align 8, !tbaa !1
  store i16 %conv45, i16* %46, align 2, !tbaa !8
  br label %sw.default

sw.default:                                       ; preds = %for.body, %if.end.44
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.19, %sw.bb
  %47 = load i16*, i16** %curr_pos, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i16, i16* %47, i32 1
  store i16* %incdec.ptr, i16** %curr_pos, align 8, !tbaa !1
  %48 = load i16*, i16** %psrc.addr, align 8, !tbaa !1
  %incdec.ptr46 = getelementptr inbounds i16, i16* %48, i32 1
  store i16* %incdec.ptr46, i16** %psrc.addr, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %49 = load i32, i32* %k, align 4, !tbaa !5
  %inc = add nsw i32 %49, 1
  store i32 %inc, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %50 = bitcast float* %temp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #1
  %51 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #1
  %52 = bitcast i16** %curr_pos to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #1
  ret void
}

declare %struct.gs_range_s* @get_cie_range(%struct.gs_color_space_s*) #2

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

declare void @cmap_transfer_halftone(i16*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32, i32, i32) #2

; Function Attrs: inlinehint nounwind uwtable
define internal float @rescale_input_color(<2 x float> %range.coerce, float %input) #5 {
entry:
  %range = alloca %struct.gs_range_s, align 8
  %input.addr = alloca float, align 4
  %0 = bitcast %struct.gs_range_s* %range to <2 x float>*
  store <2 x float> %range.coerce, <2 x float>* %0, align 8
  store float %input, float* %input.addr, align 4, !tbaa !112
  %1 = load float, float* %input.addr, align 4, !tbaa !112
  %rmin = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %range, i32 0, i32 0
  %2 = load float, float* %rmin, align 4, !tbaa !143
  %sub = fsub float %1, %2
  %rmax = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %range, i32 0, i32 1
  %3 = load float, float* %rmax, align 4, !tbaa !145
  %rmin1 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %range, i32 0, i32 0
  %4 = load float, float* %rmin1, align 4, !tbaa !143
  %sub2 = fsub float %3, %4
  %div = fdiv float %sub, %sub2
  ret float %div
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin }
attributes #7 = { nobuiltin nounwind }
attributes #8 = { nobuiltin nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!3, !3, i64 0}
!8 = !{!9, !9, i64 0}
!9 = !{!"short", !3, i64 0}
!10 = !{!11, !3, i64 576}
!11 = !{!"gx_image_enum_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !12, i64 32, !6, i64 40, !6, i64 44, !3, i64 48, !3, i64 308, !6, i64 568, !6, i64 572, !3, i64 576, !3, i64 577, !3, i64 578, !3, i64 579, !3, i64 580, !13, i64 584, !3, i64 1116, !3, i64 1117, !3, i64 1118, !3, i64 1119, !14, i64 1120, !16, i64 1144, !17, i64 1160, !6, i64 1176, !6, i64 1180, !18, i64 1184, !18, i64 1192, !2, i64 1200, !2, i64 1208, !2, i64 1216, !2, i64 1224, !2, i64 1232, !6, i64 1240, !2, i64 1248, !6, i64 1256, !6, i64 1260, !3, i64 1264, !3, i64 1268, !3, i64 1269, !3, i64 1270, !3, i64 1271, !19, i64 1272, !19, i64 1288, !6, i64 1304, !6, i64 1308, !6, i64 1312, !6, i64 1316, !2, i64 1320, !2, i64 1328, !2, i64 1336, !6, i64 1344, !20, i64 1348, !18, i64 1356, !18, i64 1364, !21, i64 1372, !6, i64 1492, !6, i64 1496, !20, i64 1500, !6, i64 1508, !6, i64 1512, !6, i64 1516, !6, i64 1520, !6, i64 1524, !3, i64 1528, !2, i64 23112, !26, i64 23120, !26, i64 23776, !2, i64 24432, !2, i64 24440, !2, i64 24448, !2, i64 24456, !2, i64 24464, !6, i64 24472, !6, i64 24476, !6, i64 24480, !2, i64 24488, !6, i64 24496, !3, i64 24500, !31, i64 24504, !32, i64 24792, !6, i64 24808}
!12 = !{!"long", !3, i64 0}
!13 = !{!"mc_", !3, i64 0, !6, i64 520, !6, i64 524, !6, i64 528}
!14 = !{!"gs_matrix_s", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !15, i64 20}
!15 = !{!"float", !3, i64 0}
!16 = !{!"r_", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!17 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!18 = !{!"gs_fixed_point_s", !6, i64 0, !6, i64 4}
!19 = !{!"gs_fixed_rect_s", !18, i64 0, !18, i64 8}
!20 = !{!"gs_int_point_s", !6, i64 0, !6, i64 4}
!21 = !{!"dd_", !22, i64 0, !22, i64 40, !22, i64 80}
!22 = !{!"gx_dda_fixed_point_s", !23, i64 0, !23, i64 20}
!23 = !{!"gx_dda_fixed_s", !24, i64 0, !25, i64 8}
!24 = !{!"_a", !6, i64 0, !6, i64 4}
!25 = !{!"_e", !6, i64 0, !6, i64 4, !6, i64 8}
!26 = !{!"gx_device_color_s", !2, i64 0, !3, i64 8, !20, i64 352, !6, i64 360, !27, i64 368, !29, i64 632}
!27 = !{!"gs_client_color_s", !2, i64 0, !28, i64 8}
!28 = !{!"gs_paint_color_s", !3, i64 0}
!29 = !{!"_mask", !30, i64 0, !12, i64 8, !2, i64 16}
!30 = !{!"mp_", !6, i64 0, !6, i64 4}
!31 = !{!"ht_landscape_info_s", !6, i64 0, !3, i64 4, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284}
!32 = !{!"gx_image_icc_setup_s", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!33 = !{!11, !3, i64 1116}
!34 = !{!11, !3, i64 579}
!35 = !{!11, !2, i64 16}
!36 = !{!11, !2, i64 1216}
!37 = !{!11, !2, i64 1224}
!38 = !{!39, !2, i64 64}
!39 = !{!"gs_color_space_s", !2, i64 0, !40, i64 8, !12, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !3, i64 72}
!40 = !{!"rc_header_s", !12, i64 0, !2, i64 8, !2, i64 16}
!41 = !{!39, !2, i64 0}
!42 = !{!43, !2, i64 24}
!43 = !{!"gs_color_space_type_s", !3, i64 0, !6, i64 4, !6, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128}
!44 = !{!45, !2, i64 1680}
!45 = !{!"gx_device_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !40, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !46, i64 96, !48, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !12, i64 928, !12, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !12, i64 968, !12, i64 976, !49, i64 984, !6, i64 1052, !6, i64 1056, !50, i64 1064, !2, i64 1104, !3, i64 1112, !52, i64 1120, !53, i64 1144}
!46 = !{!"gx_device_color_info_s", !6, i64 0, !6, i64 4, !3, i64 8, !9, i64 12, !3, i64 14, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !47, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !12, i64 704, !6, i64 712}
!47 = !{!"gx_device_anti_alias_info_s", !6, i64 0, !6, i64 4}
!48 = !{!"gx_device_cached_colors_s", !12, i64 0, !12, i64 8}
!49 = !{!"gx_stroked_gradient_recognizer_s", !6, i64 0, !3, i64 4, !3, i64 36}
!50 = !{!"gdev_space_params_s", !12, i64 0, !12, i64 8, !51, i64 16, !6, i64 32, !3, i64 36}
!51 = !{!"gx_band_params_s", !6, i64 0, !6, i64 4, !12, i64 8}
!52 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!53 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!54 = !{!11, !6, i64 24792}
!55 = !{!56, !3, i64 324}
!56 = !{!"sample_map_s", !3, i64 0, !3, i64 256, !15, i64 320, !3, i64 324, !6, i64 328}
!57 = !{!58, !6, i64 328}
!58 = !{!"gs_imager_state_s", !6, i64 0, !2, i64 8, !2, i64 16, !59, i64 24, !6, i64 128, !61, i64 132, !6, i64 168, !62, i64 176, !62, i64 192, !6, i64 208, !6, i64 212, !9, i64 216, !3, i64 220, !64, i64 224, !64, i64 228, !65, i64 232, !12, i64 240, !6, i64 248, !6, i64 252, !6, i64 256, !2, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !15, i64 296, !18, i64 300, !6, i64 308, !6, i64 312, !6, i64 316, !15, i64 320, !6, i64 324, !6, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !6, i64 408, !2, i64 416, !2, i64 424, !66, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !67, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !67, i64 1336}
!59 = !{!"gx_line_params_s", !15, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !6, i64 20, !15, i64 24, !15, i64 28, !15, i64 32, !6, i64 36, !14, i64 40, !60, i64 64}
!60 = !{!"gx_dash_params_s", !2, i64 0, !6, i64 8, !15, i64 12, !6, i64 16, !15, i64 20, !6, i64 24, !6, i64 28, !15, i64 32}
!61 = !{!"gs_matrix_fixed_s", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !15, i64 20, !6, i64 24, !6, i64 28, !6, i64 32}
!62 = !{!"gs_point_s", !63, i64 0, !63, i64 8}
!63 = !{!"double", !3, i64 0}
!64 = !{!"gs_transparency_source_s", !15, i64 0}
!65 = !{!"gs_xstate_trans_flags", !6, i64 0, !6, i64 4}
!66 = !{!"gx_transfer_s", !6, i64 0, !2, i64 8, !6, i64 16, !2, i64 24, !6, i64 32, !2, i64 40, !6, i64 48, !2, i64 56}
!67 = !{!"gs_devicen_color_map_s", !6, i64 0, !3, i64 4, !6, i64 8, !6, i64 12, !12, i64 16, !3, i64 24}
!68 = !{!69, !3, i64 4}
!69 = !{!"gsicc_rendering_param_s", !3, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !6, i64 20}
!70 = !{!69, !3, i64 12}
!71 = !{!69, !6, i64 20}
!72 = !{!69, !3, i64 8}
!73 = !{!58, !6, i64 324}
!74 = !{!69, !3, i64 0}
!75 = !{!69, !3, i64 16}
!76 = !{!39, !2, i64 48}
!77 = !{!78, !6, i64 4}
!78 = !{!"cmm_profile_s", !3, i64 0, !3, i64 1, !6, i64 4, !6, i64 8, !3, i64 12, !3, i64 16, !79, i64 20, !12, i64 144, !6, i64 152, !3, i64 156, !6, i64 216, !6, i64 220, !6, i64 224, !69, i64 228, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !40, i64 288, !6, i64 312, !2, i64 320, !2, i64 328, !2, i64 336}
!79 = !{!"gs_range_icc_s", !3, i64 0}
!80 = !{!11, !6, i64 24796}
!81 = !{!45, !6, i64 100}
!82 = !{!45, !3, i64 110}
!83 = !{!45, !6, i64 116}
!84 = !{!45, !6, i64 112}
!85 = !{!11, !6, i64 24800}
!86 = !{!11, !6, i64 24804}
!87 = !{!11, !2, i64 24448}
!88 = !{!11, !2, i64 24}
!89 = !{!11, !2, i64 1200}
!90 = !{!11, !6, i64 1304}
!91 = !{!11, !3, i64 1264}
!92 = !{!11, !6, i64 1512}
!93 = !{!11, !6, i64 1516}
!94 = !{!43, !2, i64 72}
!95 = !{!11, !3, i64 1271}
!96 = !{!97, !2, i64 8}
!97 = !{!"gx_color_map_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48}
!98 = !{!97, !2, i64 16}
!99 = !{i64 0, i64 4, !5, i64 4, i64 4, !5, i64 8, i64 4, !5, i64 12, i64 4, !5, i64 16, i64 4, !5, i64 20, i64 4, !5, i64 24, i64 4, !5, i64 28, i64 4, !5, i64 32, i64 4, !5, i64 36, i64 4, !5}
!100 = !{!22, !6, i64 0}
!101 = !{!22, !6, i64 20}
!102 = !{!11, !6, i64 1372}
!103 = !{!11, !6, i64 1356}
!104 = !{!11, !6, i64 1392}
!105 = !{!11, !6, i64 1360}
!106 = !{!12, !12, i64 0}
!107 = !{!26, !2, i64 0}
!108 = !{!26, !6, i64 360}
!109 = !{!27, !2, i64 0}
!110 = !{!43, !2, i64 32}
!111 = !{!45, !2, i64 1664}
!112 = !{!15, !15, i64 0}
!113 = !{!56, !15, i64 320}
!114 = !{!45, !2, i64 1368}
!115 = !{!116, !2, i64 40}
!116 = !{!"gx_device_color_type_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80}
!117 = !{i64 0, i64 128, !7, i64 0, i64 128, !7}
!118 = !{!22, !6, i64 12}
!119 = !{!22, !6, i64 4}
!120 = !{!22, !6, i64 16}
!121 = !{!22, !6, i64 8}
!122 = !{!22, !6, i64 32}
!123 = !{!22, !6, i64 24}
!124 = !{!22, !6, i64 36}
!125 = !{!22, !6, i64 28}
!126 = !{!11, !6, i64 1348}
!127 = !{!11, !6, i64 1352}
!128 = !{!129, !6, i64 116}
!129 = !{!"gsicc_link_s", !2, i64 0, !130, i64 8, !131, i64 40, !2, i64 72, !6, i64 80, !2, i64 88, !2, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !130, i64 128, !3, i64 160, !6, i64 164, !6, i64 168}
!130 = !{!"gscms_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!131 = !{!"gsicc_hashlink_s", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24}
!132 = !{!58, !2, i64 8}
!133 = !{!134, !2, i64 64}
!134 = !{!"gs_memory_s", !2, i64 0, !135, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!135 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!136 = !{!11, !6, i64 24808}
!137 = !{!129, !2, i64 8}
!138 = !{!134, !2, i64 24}
!139 = !{!11, !6, i64 1520}
!140 = !{!11, !6, i64 1524}
!141 = !{!11, !3, i64 580}
!142 = !{!45, !2, i64 1552}
!143 = !{!144, !15, i64 0}
!144 = !{!"gs_range_s", !15, i64 0, !15, i64 4}
!145 = !{!144, !15, i64 4}
