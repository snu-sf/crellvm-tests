; ModuleID = './gxicolor.bc'
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
%struct.gx_device_halftone_s = type { %struct.gx_ht_order_s, %struct.rc_header_s, i64, i32, %struct.gx_ht_order_component_s*, i32, i32, i32, i32 }
%struct.gx_ht_order_s = type { %struct.gx_ht_cell_params_s, i16, i16, i16, i16, i16, i16, i32, i32, i32, %struct.gx_ht_order_procs_s*, %struct.gs_memory_s*, i32*, i8*, %struct.gx_ht_cache_s*, %struct.gx_transfer_map_s*, %struct.gx_ht_order_screen_params_s, i8*, i32 }
%struct.gx_ht_cell_params_s = type { i16, i16, i16, i16, i16, i16, i64, i16, i16, i32, i32, i32 }
%struct.gx_ht_order_procs_s = type { i32, i32 (%struct.gx_ht_order_s*, i8*)*, i32 (%struct.gx_ht_order_s*, i32, %struct.gs_int_point_s*)*, i32 (%struct.gx_ht_tile_s*, i32, %struct.gx_ht_order_s*)*, i32 (%struct.gx_ht_order_s*, i16, i8*, i32, i32, i32, i32, i32)* }
%struct.gx_ht_tile_s = type { %struct.gx_strip_bitmap_s, i32, i32 }
%struct.gx_strip_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16, i16, i16, i32 }
%struct.gx_ht_cache_s = type { i8*, i32, %struct.gx_ht_tile_s*, i32, %struct.gx_ht_order_s, i32, i32, i32, i64, %struct.gx_ht_tile_s* (%struct.gx_ht_cache_s*, i32)* }
%struct.gx_transfer_map_s = type { %struct.rc_header_s, float (double, %struct.gx_transfer_map_s*)*, %struct.gs_mapping_closure_s, i64, [256 x i16] }
%struct.gs_mapping_closure_s = type { float (double, %struct.gx_transfer_map_s*, i8*)*, i8* }
%struct.gx_ht_order_screen_params_s = type { %struct.gs_matrix_s, i64 }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.rc_header_s = type { i64, %struct.gs_memory_s*, void (%struct.gs_memory_s*, i8*, i8*)* }
%struct.gx_ht_order_component_s = type { %struct.gx_ht_order_s, i32, i32 }
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
%struct.gsicc_link_cache_s = type { %struct.gsicc_link_s*, i32, %struct.rc_header_s, %struct.gs_memory_s*, %struct.gx_monitor_s*, %struct.gx_semaphore_s*, i32 }
%struct.gsicc_link_s = type { i8*, %struct.gscms_procs_s, %struct.gsicc_hashlink_s, %struct.gsicc_link_cache_s*, i32, %struct.gsicc_link_s*, %struct.gx_semaphore_s*, i32, i32, i32, i32, i32, i32, %struct.gscms_procs_s, i32, i32, i32 }
%struct.gsicc_hashlink_s = type { i64, i64, i64, i64 }
%struct.gscms_procs_s = type { void (%struct.gx_device_s*, %struct.gsicc_link_s*, %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s*, i8*, i8*)*, void (%struct.gx_device_s*, %struct.gsicc_link_s*, i8*, i8*, i32)*, void (%struct.gsicc_link_s*)*, i32 (i8*, i32)* }
%struct.gsicc_bufferdesc_s = type { i8, i8, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.gx_semaphore_s = type { %struct.gs_memory_s*, %union.gp_semaphore }
%union.gp_semaphore = type { i8* }
%struct.gsicc_profile_cache_s = type { %struct.gsicc_profile_entry_s*, i32, %struct.rc_header_s, %struct.gs_memory_s* }
%struct.gsicc_profile_entry_s = type { %struct.gs_color_space_s*, %struct.gsicc_profile_entry_s*, i64 }
%struct.gs_halftone_s = type { i32, %struct.rc_header_s, %union.anon }
%union.anon = type { %struct.gs_colorscreen_halftone_s }
%struct.gs_colorscreen_halftone_s = type { %union._css }
%union._css = type { [4 x %struct.gs_screen_halftone_s] }
%struct.gs_screen_halftone_s = type { float, float, float (double, double)*, float, float }
%struct.gs_cie_render_s = type { i32, %struct.rc_header_s, i64, i8*, %struct.gs_cie_wb_s, %struct.gs_matrix3_s, %struct.gs_range3_s, %struct.gs_cie_transform_proc3_s, %struct.gs_matrix3_s, %struct.gs_cie_render_proc3_s, %struct.gs_range3_s, %struct.gs_matrix3_s, %struct.gs_cie_render_proc3_s, %struct.gs_range3_s, %struct.gs_cie_render_table_s, %struct.gs_range3_s, %struct.gs_range3_s, %struct.gs_matrix3_s, [3 x float], %struct.gs_matrix3_s, %struct.gs_vector3_s, %struct.gs_vector3_s, %struct.anon.1 }
%struct.gs_cie_wb_s = type { %struct.gs_vector3_s, %struct.gs_vector3_s }
%struct.gs_cie_transform_proc3_s = type { i32 (i32, double, %struct.gs_cie_wbsd_s*, %struct.gs_cie_render_s*, float*)*, i8*, %struct.gs_const_string_s, i8* }
%struct.gs_cie_wbsd_s = type { %struct.anon, %struct.anon, %struct.anon, %struct.anon }
%struct.anon = type { %struct.gs_vector3_s, %struct.gs_vector3_s }
%struct.gs_const_string_s = type { i8*, i32 }
%struct.gs_cie_render_proc3_s = type { [3 x float (double, %struct.gs_cie_render_s*)*] }
%struct.gs_cie_render_table_s = type { %struct.gx_color_lookup_table_s, %struct.gs_cie_render_table_procs_s }
%struct.gx_color_lookup_table_s = type { i32, [4 x i32], i32, %struct.gs_const_string_s* }
%struct.gs_cie_render_table_procs_s = type { [4 x i16 (i8, %struct.gs_cie_render_s*)*] }
%struct.gs_range3_s = type { [3 x %struct.gs_range_s] }
%struct.gs_matrix3_s = type { %struct.gs_vector3_s, %struct.gs_vector3_s, %struct.gs_vector3_s, i32 }
%struct.gs_vector3_s = type { float, float, float }
%struct.anon.1 = type { %struct.gx_cie_vector_cache3_s, [3 x %struct.gx_cie_float_fixed_cache_s], [4 x %union.gx_cie_scalar_cache_s], i32 }
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
%struct.gx_transfer_s = type { i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s* }
%struct.gx_color_map_procs_s = type { void (i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32, %struct.gs_color_space_s*)*, void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_imager_state_s*, %struct.gx_device_s*)* }
%struct.gx_pattern_cache_s = type opaque
%struct.gs_color_space_s = type { %struct.gs_color_space_type_s*, %struct.rc_header_s, i64, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.client_color_space_data_s*, %struct.cmm_profile_s*, %union.anon.3 }
%struct.gs_color_space_type_s = type { i32, i32, i32, %struct.gs_memory_struct_type_s*, i32 (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, void (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)*, i32 (%struct.gs_color_space_s*)* }
%struct.gs_state_s = type { i32, %struct.gs_memory_s*, i8*, %struct.gx_line_params_s, i32, %struct.gs_matrix_fixed_s, i32, %struct.gs_point_s, %struct.gs_point_s, i32, i32, i16, i32, %struct.gs_transparency_source_s, %struct.gs_transparency_source_s, %struct.gs_xstate_trans_flags, i64, i32, i32, i32, %struct.gx_device_s*, i32, i32, i32, i32, i32, i32, float, %struct.gs_fixed_point_s, i32, i32, i32, float, i32, i32, %struct.gsicc_manager_s*, %struct.gsicc_link_cache_s*, %struct.gsicc_profile_cache_s*, %struct.gx_color_map_procs_s* (%struct.gs_imager_state_s*, %struct.gx_device_s*)*, %struct.gs_halftone_s*, [2 x %struct.gs_int_point_s], %struct.gx_device_halftone_s*, %struct.gs_cie_render_s*, i32, %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s*, %struct.gx_transfer_s, [64 x %struct.gx_transfer_map_s*], %struct.gx_cie_joint_caches_s*, %struct.gx_color_map_procs_s*, %struct.gs_devicen_color_map_s, %struct.gx_pattern_cache_s*, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_devicen_color_map_s, %struct.gs_state_s*, %struct.gs_matrix_s, i32, %struct.gs_matrix_s, i32, %struct.gx_path_s*, %struct.gx_clip_path_s*, %struct.gx_clip_stack_s*, %struct.gx_clip_path_s*, i64, i64, %struct.gx_clip_path_s*, i32, [2 x %struct.anon.2], %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_matrix_fixed_s, i32, i32, i32, %struct.gs_state_s*, i32, %struct.gx_device_s*, %struct.gs_device_filter_stack_s*, %struct.gs_state_client_procs_s }
%struct.gx_path_s = type opaque
%struct.gx_clip_stack_s = type opaque
%struct.gx_clip_path_s = type opaque
%struct.anon.2 = type { %struct.gs_color_space_s*, %struct.gs_client_color_s*, %struct.gx_device_color_s* }
%struct.gs_font_s = type opaque
%struct.gs_device_filter_stack_s = type { %struct.gs_device_filter_stack_s*, %struct.gs_device_filter_s*, %struct.gx_device_s*, %struct.rc_header_s }
%struct.gs_device_filter_s = type opaque
%struct.gs_state_client_procs_s = type { i8* (%struct.gs_memory_s*)*, i32 (i8*, i8*)*, void (i8*, %struct.gs_memory_s*)*, i32 (i8*, i8*, i32)* }
%struct.stream_s = type opaque
%struct.client_color_space_data_s = type { void (%struct.gs_color_space_s*, i32)* }
%union.anon.3 = type { %struct.gs_device_n_params_s }
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
%struct.gx_image_enum_s = type { %struct.gx_image_type_s*, %struct.gx_image_enum_procs_s*, %struct.gx_device_s*, %struct.gs_memory_s*, i64, i32, i32, [65 x i32], [65 x i32], i32, i32, i8, i8, i8, i8, i32, %struct.mc_, i8, i8, i8, i8, %struct.gs_matrix_s, %struct.r_, %struct.anon.12, i32, i32, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s, i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)*, {}*, %struct.gs_imager_state_s*, %struct.gs_color_space_s*, i8*, i32, i8*, i32, i32, i32, i8, i8, i8, i8, %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s, i32, i32, i32, i32, %struct.gx_device_clip_s*, %struct.gx_device_rop_texture_s*, %struct.stream_image_scale_state_s*, i32, %struct.gs_int_point_s, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s, %struct.dd_, i32, i32, %struct.gs_int_point_s, i32, i32, i32, i32, i32, [65 x %struct.sample_map_s], %struct.gx_image_clue_s*, %struct.gx_device_color_s, %struct.gx_device_color_s, %struct.gx_device_color_s*, %struct.gx_device_color_s*, %struct.gsicc_link_s*, %struct.gx_image_color_cache_s*, i8*, i32, i32, i32, i8*, i32, i32, %struct.ht_landscape_info_s, %struct.gx_image_icc_setup_s, i32 }
%struct.mc_ = type { [130 x i32], i32, i32, i32 }
%struct.r_ = type { i32, i32, i32, i32 }
%struct.anon.12 = type { i32, i32, i32, i32 }
%struct.sample_map_s = type { %union.sample_lookup_s, [16 x float], float, i32, i32 }
%union.sample_lookup_s = type { [16 x i32], [192 x i8] }
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
%union.color_samples = type { [16 x i32] }
%struct._devn = type { [64 x i16] }
%struct.gx_dda_int_s = type { %struct.ia_, %struct.ie_ }
%struct.ia_ = type { i32, i32 }
%struct.ie_ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"image_render_color_thresh\00", align 1
@__func__.image_color_icc_prep = private unnamed_addr constant [21 x i8] c"image_color_icc_prep\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"./base/gxicolor.c\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"ICC Link not created during image render color\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"image_render_color_icc\00", align 1
@gx_dc_type_data_none = external constant %struct.gx_device_color_type_s, align 8
@gx_dc_type_data_pure = external constant %struct.gx_device_color_type_s, align 8
@gx_dc_type_data_null = external constant %struct.gx_device_color_type_s, align 8

; Function Attrs: nounwind uwtable
define i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)* @gs_image_class_4_color(%struct.gx_image_enum_s* %penum) #0 {
entry:
  %retval = alloca i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)*, align 8
  %penum.addr = alloca %struct.gx_image_enum_s*, align 8
  %std_cmap_procs = alloca i32, align 4
  %code = alloca i32, align 4
  %use_fast_thresh = alloca i32, align 4
  %is_planar_dev = alloca i32, align 4
  %i = alloca i32, align 4
  %mask = alloca %union.color_samples, align 4
  %test = alloca %union.color_samples, align 4
  %exact = alloca i32, align 4
  %v0 = alloca i8, align 1
  %v1 = alloca i8, align 1
  %match = alloca i8, align 1
  %cleanup.dest.slot = alloca i32
  %pcs68 = alloca %struct.gs_color_space_s*, align 8
  %rendering_params = alloca %struct.gsicc_rendering_param_s, align 4
  %k = alloca i32, align 4
  %src_num_comp = alloca i32, align 4
  %des_num_comp = alloca i32, align 4
  %dev_profile = alloca %struct.cmm_dev_profile_s*, align 8
  store %struct.gx_image_enum_s* %penum, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %0 = bitcast i32* %std_cmap_procs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %use_fast_thresh to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 1, i32* %use_fast_thresh, align 4, !tbaa !5
  %3 = bitcast i32* %is_planar_dev to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %is_planar_dev, align 4, !tbaa !5
  %4 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %use_mask_color = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %4, i32 0, i32 17
  %5 = load i8, i8* %use_mask_color, align 1, !tbaa !7
  %tobool = icmp ne i8 %5, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast %union.color_samples* %mask to i8*
  call void @llvm.lifetime.start(i64 64, i8* %7) #1
  %8 = bitcast %union.color_samples* %test to i8*
  call void @llvm.lifetime.start(i64 64, i8* %8) #1
  %9 = bitcast i32* %exact to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %spp = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %10, i32 0, i32 14
  %11 = load i8, i8* %spp, align 1, !tbaa !30
  %conv = zext i8 %11 to i32
  %cmp = icmp sle i32 %conv, 4
  %conv1 = zext i1 %cmp to i32
  store i32 %conv1, i32* %exact, align 4, !tbaa !5
  %12 = bitcast %union.color_samples* %mask to i8*
  %call = call i8* @memset(i8* %12, i32 0, i64 64) #7
  %13 = bitcast %union.color_samples* %test to i8*
  %call2 = call i8* @memset(i8* %13, i32 0, i64 64) #7
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %14 = load i32, i32* %i, align 4, !tbaa !5
  %15 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %spp3 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %15, i32 0, i32 14
  %16 = load i8, i8* %spp3, align 1, !tbaa !30
  %conv4 = zext i8 %16 to i32
  %cmp5 = icmp slt i32 %14, %conv4
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start(i64 1, i8* %v0) #1
  call void @llvm.lifetime.start(i64 1, i8* %v1) #1
  call void @llvm.lifetime.start(i64 1, i8* %match) #1
  store i8 -1, i8* %match, align 1, !tbaa !31
  %17 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %18 = load i32, i32* %i, align 4, !tbaa !5
  call void @gx_image_scale_mask_colors(%struct.gx_image_enum_s* %17, i32 %18) #8
  %19 = load i32, i32* %i, align 4, !tbaa !5
  %mul = mul nsw i32 2, %19
  %idxprom = sext i32 %mul to i64
  %20 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %mask_color = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %20, i32 0, i32 16
  %values = getelementptr inbounds %struct.mc_, %struct.mc_* %mask_color, i32 0, i32 0
  %arrayidx = getelementptr inbounds [130 x i32], [130 x i32]* %values, i32 0, i64 %idxprom
  %21 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %conv7 = trunc i32 %21 to i8
  store i8 %conv7, i8* %v0, align 1, !tbaa !31
  %22 = load i32, i32* %i, align 4, !tbaa !5
  %mul8 = mul nsw i32 2, %22
  %add = add nsw i32 %mul8, 1
  %idxprom9 = sext i32 %add to i64
  %23 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %mask_color10 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %23, i32 0, i32 16
  %values11 = getelementptr inbounds %struct.mc_, %struct.mc_* %mask_color10, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [130 x i32], [130 x i32]* %values11, i32 0, i64 %idxprom9
  %24 = load i32, i32* %arrayidx12, align 4, !tbaa !5
  %conv13 = trunc i32 %24 to i8
  store i8 %conv13, i8* %v1, align 1, !tbaa !31
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %25 = load i8, i8* %v0, align 1, !tbaa !31
  %conv14 = zext i8 %25 to i32
  %26 = load i8, i8* %match, align 1, !tbaa !31
  %conv15 = zext i8 %26 to i32
  %and = and i32 %conv14, %conv15
  %27 = load i8, i8* %v1, align 1, !tbaa !31
  %conv16 = zext i8 %27 to i32
  %28 = load i8, i8* %match, align 1, !tbaa !31
  %conv17 = zext i8 %28 to i32
  %and18 = and i32 %conv16, %conv17
  %cmp19 = icmp ne i32 %and, %and18
  br i1 %cmp19, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %29 = load i8, i8* %match, align 1, !tbaa !31
  %conv21 = zext i8 %29 to i32
  %shl = shl i32 %conv21, 1
  %conv22 = trunc i32 %shl to i8
  store i8 %conv22, i8* %match, align 1, !tbaa !31
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %30 = load i8, i8* %match, align 1, !tbaa !31
  %31 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom23 = sext i32 %31 to i64
  %v = bitcast %union.color_samples* %mask to [64 x i8]*
  %arrayidx24 = getelementptr inbounds [64 x i8], [64 x i8]* %v, i32 0, i64 %idxprom23
  store i8 %30, i8* %arrayidx24, align 1, !tbaa !31
  %32 = load i8, i8* %v0, align 1, !tbaa !31
  %conv25 = zext i8 %32 to i32
  %33 = load i8, i8* %match, align 1, !tbaa !31
  %conv26 = zext i8 %33 to i32
  %and27 = and i32 %conv25, %conv26
  %conv28 = trunc i32 %and27 to i8
  %34 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom29 = sext i32 %34 to i64
  %v30 = bitcast %union.color_samples* %test to [64 x i8]*
  %arrayidx31 = getelementptr inbounds [64 x i8], [64 x i8]* %v30, i32 0, i64 %idxprom29
  store i8 %conv28, i8* %arrayidx31, align 1, !tbaa !31
  %35 = load i8, i8* %v0, align 1, !tbaa !31
  %conv32 = zext i8 %35 to i32
  %36 = load i8, i8* %match, align 1, !tbaa !31
  %conv33 = zext i8 %36 to i32
  %cmp34 = icmp eq i32 %conv32, %conv33
  br i1 %cmp34, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.end
  %37 = load i8, i8* %v1, align 1, !tbaa !31
  %conv36 = zext i8 %37 to i32
  %38 = load i8, i8* %match, align 1, !tbaa !31
  %conv37 = zext i8 %38 to i32
  %or = or i32 %conv36, %conv37
  %cmp38 = icmp eq i32 %or, 255
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.end
  %39 = phi i1 [ false, %while.end ], [ %cmp38, %land.rhs ]
  %land.ext = zext i1 %39 to i32
  %40 = load i32, i32* %exact, align 4, !tbaa !5
  %and40 = and i32 %40, %land.ext
  store i32 %and40, i32* %exact, align 4, !tbaa !5
  call void @llvm.lifetime.end(i64 1, i8* %match) #1
  call void @llvm.lifetime.end(i64 1, i8* %v1) #1
  call void @llvm.lifetime.end(i64 1, i8* %v0) #1
  br label %for.inc

for.inc:                                          ; preds = %land.end
  %41 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %41, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %all = bitcast %union.color_samples* %mask to [16 x i32]*
  %arrayidx41 = getelementptr inbounds [16 x i32], [16 x i32]* %all, i32 0, i64 0
  %42 = load i32, i32* %arrayidx41, align 4, !tbaa !5
  %43 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %mask_color42 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %43, i32 0, i32 16
  %mask43 = getelementptr inbounds %struct.mc_, %struct.mc_* %mask_color42, i32 0, i32 1
  store i32 %42, i32* %mask43, align 4, !tbaa !32
  %all44 = bitcast %union.color_samples* %test to [16 x i32]*
  %arrayidx45 = getelementptr inbounds [16 x i32], [16 x i32]* %all44, i32 0, i64 0
  %44 = load i32, i32* %arrayidx45, align 4, !tbaa !5
  %45 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %mask_color46 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %45, i32 0, i32 16
  %test47 = getelementptr inbounds %struct.mc_, %struct.mc_* %mask_color46, i32 0, i32 2
  store i32 %44, i32* %test47, align 4, !tbaa !33
  %46 = load i32, i32* %exact, align 4, !tbaa !5
  %47 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %mask_color48 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %47, i32 0, i32 16
  %exact49 = getelementptr inbounds %struct.mc_, %struct.mc_* %mask_color48, i32 0, i32 3
  store i32 %46, i32* %exact49, align 4, !tbaa !34
  %48 = bitcast i32* %exact to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #1
  %49 = bitcast %union.color_samples* %test to i8*
  call void @llvm.lifetime.end(i64 64, i8* %49) #1
  %50 = bitcast %union.color_samples* %mask to i8*
  call void @llvm.lifetime.end(i64 64, i8* %50) #1
  %51 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #1
  br label %if.end

if.else:                                          ; preds = %entry
  %52 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %mask_color50 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %52, i32 0, i32 16
  %mask51 = getelementptr inbounds %struct.mc_, %struct.mc_* %mask_color50, i32 0, i32 1
  store i32 0, i32* %mask51, align 4, !tbaa !32
  %53 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %mask_color52 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %53, i32 0, i32 16
  %test53 = getelementptr inbounds %struct.mc_, %struct.mc_* %mask_color52, i32 0, i32 2
  store i32 -1, i32* %test53, align 4, !tbaa !33
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  %54 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dev = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %54, i32 0, i32 2
  %55 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !35
  %56 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pis = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %56, i32 0, i32 30
  %57 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !36
  %call54 = call i32 @gx_device_uses_std_cmap_procs(%struct.gx_device_s* %55, %struct.gs_imager_state_s* %57) #8
  store i32 %call54, i32* %std_cmap_procs, align 4, !tbaa !5
  %58 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pcs = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %58, i32 0, i32 31
  %59 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !37
  %call55 = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %59) #8
  %cmp56 = icmp eq i32 %call55, 4
  br i1 %cmp56, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end
  %60 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pcs58 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %60, i32 0, i32 31
  %61 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs58, align 8, !tbaa !37
  %cmm_icc_profile_data = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %61, i32 0, i32 6
  %62 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data, align 8, !tbaa !38
  %cmp59 = icmp eq %struct.cmm_profile_s* %62, null
  br i1 %cmp59, label %if.then.66, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.end
  %63 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %use_mask_color61 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %63, i32 0, i32 17
  %64 = load i8, i8* %use_mask_color61, align 1, !tbaa !7
  %conv62 = zext i8 %64 to i32
  %tobool63 = icmp ne i32 %conv62, 0
  br i1 %tobool63, label %if.then.66, label %lor.lhs.false.64

lor.lhs.false.64:                                 ; preds = %lor.lhs.false
  %65 = load i32, i32* %std_cmap_procs, align 4, !tbaa !5
  %tobool65 = icmp ne i32 %65, 0
  br i1 %tobool65, label %if.else.67, label %if.then.66

if.then.66:                                       ; preds = %lor.lhs.false.64, %lor.lhs.false, %land.lhs.true
  store i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)* @image_render_color_DeviceN, i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.231

if.else.67:                                       ; preds = %lor.lhs.false.64
  %66 = bitcast %struct.gs_color_space_s** %pcs68 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %66) #1
  %67 = bitcast %struct.gsicc_rendering_param_s* %rendering_params to i8*
  call void @llvm.lifetime.start(i64 24, i8* %67) #1
  %68 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %68) #1
  %69 = bitcast i32* %src_num_comp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %69) #1
  %70 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pcs69 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %70, i32 0, i32 31
  %71 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs69, align 8, !tbaa !37
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %71, i32 0, i32 0
  %72 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !41
  %num_components = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %72, i32 0, i32 4
  %73 = load i32 (%struct.gs_color_space_s*)*, i32 (%struct.gs_color_space_s*)** %num_components, align 8, !tbaa !42
  %74 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pcs70 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %74, i32 0, i32 31
  %75 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs70, align 8, !tbaa !37
  %call71 = call i32 %73(%struct.gs_color_space_s* %75) #8
  store i32 %call71, i32* %src_num_comp, align 4, !tbaa !5
  %76 = bitcast i32* %des_num_comp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %76) #1
  %77 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %77) #1
  %78 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dev72 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %78, i32 0, i32 2
  %79 = load %struct.gx_device_s*, %struct.gx_device_s** %dev72, align 8, !tbaa !35
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %79, i32 0, i32 42
  %get_profile = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 67
  %80 = load i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile, align 8, !tbaa !44
  %81 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dev73 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %81, i32 0, i32 2
  %82 = load %struct.gx_device_s*, %struct.gx_device_s** %dev73, align 8, !tbaa !35
  %call74 = call i32 %80(%struct.gx_device_s* %82, %struct.cmm_dev_profile_s** %dev_profile) #8
  store i32 %call74, i32* %code, align 4, !tbaa !5
  %83 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %call75 = call i32 @gsicc_get_device_profile_comps(%struct.cmm_dev_profile_s* %83) #8
  store i32 %call75, i32* %des_num_comp, align 4, !tbaa !5
  %84 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icc_setup = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %84, i32 0, i32 80
  %need_decode = getelementptr inbounds %struct.gx_image_icc_setup_s, %struct.gx_image_icc_setup_s* %icc_setup, i32 0, i32 0
  store i32 0, i32* %need_decode, align 4, !tbaa !55
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.76

for.cond.76:                                      ; preds = %for.inc.88, %if.else.67
  %85 = load i32, i32* %k, align 4, !tbaa !5
  %86 = load i32, i32* %src_num_comp, align 4, !tbaa !5
  %cmp77 = icmp slt i32 %85, %86
  br i1 %cmp77, label %for.body.79, label %for.end.90

for.body.79:                                      ; preds = %for.cond.76
  %87 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom80 = sext i32 %87 to i64
  %88 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %88, i32 0, i32 64
  %arrayidx81 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map, i32 0, i64 %idxprom80
  %decoding = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx81, i32 0, i32 3
  %89 = load i32, i32* %decoding, align 4, !tbaa !56
  %cmp82 = icmp ne i32 %89, 0
  br i1 %cmp82, label %if.then.84, label %if.end.87

if.then.84:                                       ; preds = %for.body.79
  %90 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icc_setup85 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %90, i32 0, i32 80
  %need_decode86 = getelementptr inbounds %struct.gx_image_icc_setup_s, %struct.gx_image_icc_setup_s* %icc_setup85, i32 0, i32 0
  store i32 1, i32* %need_decode86, align 4, !tbaa !55
  br label %for.end.90

if.end.87:                                        ; preds = %for.body.79
  br label %for.inc.88

for.inc.88:                                       ; preds = %if.end.87
  %91 = load i32, i32* %k, align 4, !tbaa !5
  %inc89 = add nsw i32 %91, 1
  store i32 %inc89, i32* %k, align 4, !tbaa !5
  br label %for.cond.76

for.end.90:                                       ; preds = %if.then.84, %for.cond.76
  %92 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pis91 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %92, i32 0, i32 30
  %93 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis91, align 8, !tbaa !36
  %blackptcomp = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %93, i32 0, i32 34
  %94 = load i32, i32* %blackptcomp, align 4, !tbaa !58
  %black_point_comp = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %rendering_params, i32 0, i32 1
  store i32 %94, i32* %black_point_comp, align 4, !tbaa !69
  %graphics_type_tag = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %rendering_params, i32 0, i32 3
  store i32 2, i32* %graphics_type_tag, align 4, !tbaa !71
  %override_icc = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %rendering_params, i32 0, i32 5
  store i32 0, i32* %override_icc, align 4, !tbaa !72
  %preserve_black = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %rendering_params, i32 0, i32 2
  store i32 8, i32* %preserve_black, align 4, !tbaa !73
  %95 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pis92 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %95, i32 0, i32 30
  %96 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis92, align 8, !tbaa !36
  %renderingintent = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %96, i32 0, i32 33
  %97 = load i32, i32* %renderingintent, align 4, !tbaa !74
  %rendering_intent = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %rendering_params, i32 0, i32 0
  store i32 %97, i32* %rendering_intent, align 4, !tbaa !75
  %cmm = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %rendering_params, i32 0, i32 4
  store i32 0, i32* %cmm, align 4, !tbaa !76
  %98 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pcs93 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %98, i32 0, i32 31
  %99 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs93, align 8, !tbaa !37
  %call94 = call i32 @gs_color_space_is_PSCIE(%struct.gs_color_space_s* %99) #8
  %tobool95 = icmp ne i32 %call94, 0
  br i1 %tobool95, label %land.lhs.true.96, label %if.else.103

land.lhs.true.96:                                 ; preds = %for.end.90
  %100 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pcs97 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %100, i32 0, i32 31
  %101 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs97, align 8, !tbaa !37
  %icc_equivalent = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %101, i32 0, i32 4
  %102 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_equivalent, align 8, !tbaa !77
  %cmp98 = icmp ne %struct.gs_color_space_s* %102, null
  br i1 %cmp98, label %if.then.100, label %if.else.103

if.then.100:                                      ; preds = %land.lhs.true.96
  %103 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pcs101 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %103, i32 0, i32 31
  %104 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs101, align 8, !tbaa !37
  %icc_equivalent102 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %104, i32 0, i32 4
  %105 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_equivalent102, align 8, !tbaa !77
  store %struct.gs_color_space_s* %105, %struct.gs_color_space_s** %pcs68, align 8, !tbaa !1
  br label %if.end.105

if.else.103:                                      ; preds = %land.lhs.true.96, %for.end.90
  %106 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pcs104 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %106, i32 0, i32 31
  %107 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs104, align 8, !tbaa !37
  store %struct.gs_color_space_s* %107, %struct.gs_color_space_s** %pcs68, align 8, !tbaa !1
  br label %if.end.105

if.end.105:                                       ; preds = %if.else.103, %if.then.100
  %108 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs68, align 8, !tbaa !1
  %cmm_icc_profile_data106 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %108, i32 0, i32 6
  %109 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data106, align 8, !tbaa !38
  %islab = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %109, i32 0, i32 2
  %110 = load i32, i32* %islab, align 4, !tbaa !78
  %111 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icc_setup107 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %111, i32 0, i32 80
  %is_lab = getelementptr inbounds %struct.gx_image_icc_setup_s, %struct.gx_image_icc_setup_s* %icc_setup107, i32 0, i32 1
  store i32 %110, i32* %is_lab, align 4, !tbaa !81
  %112 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dev108 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %112, i32 0, i32 2
  %113 = load %struct.gx_device_s*, %struct.gx_device_s** %dev108, align 8, !tbaa !35
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %113, i32 0, i32 11
  %num_components109 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %114 = load i32, i32* %num_components109, align 4, !tbaa !82
  %cmp110 = icmp sgt i32 %114, 1
  br i1 %cmp110, label %cond.true, label %lor.lhs.false.112

lor.lhs.false.112:                                ; preds = %if.end.105
  %115 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dev113 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %115, i32 0, i32 2
  %116 = load %struct.gx_device_s*, %struct.gx_device_s** %dev113, align 8, !tbaa !35
  %color_info114 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %116, i32 0, i32 11
  %gray_index = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info114, i32 0, i32 4
  %117 = load i8, i8* %gray_index, align 1, !tbaa !83
  %conv115 = zext i8 %117 to i32
  %cmp116 = icmp eq i32 %conv115, 255
  br i1 %cmp116, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false.112, %if.end.105
  %118 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dev118 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %118, i32 0, i32 2
  %119 = load %struct.gx_device_s*, %struct.gx_device_s** %dev118, align 8, !tbaa !35
  %color_info119 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %119, i32 0, i32 11
  %max_color = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info119, i32 0, i32 6
  %120 = load i32, i32* %max_color, align 4, !tbaa !84
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false.112
  %121 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dev120 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %121, i32 0, i32 2
  %122 = load %struct.gx_device_s*, %struct.gx_device_s** %dev120, align 8, !tbaa !35
  %color_info121 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %122, i32 0, i32 11
  %max_gray = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info121, i32 0, i32 5
  %123 = load i32, i32* %max_gray, align 4, !tbaa !85
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %120, %cond.true ], [ %123, %cond.false ]
  %cmp122 = icmp ult i32 %cond, 31
  %conv123 = zext i1 %cmp122 to i32
  %124 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icc_setup124 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %124, i32 0, i32 80
  %must_halftone = getelementptr inbounds %struct.gx_image_icc_setup_s, %struct.gx_image_icc_setup_s* %icc_setup124, i32 0, i32 2
  store i32 %conv123, i32* %must_halftone, align 4, !tbaa !86
  %125 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pis125 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %125, i32 0, i32 30
  %126 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis125, align 8, !tbaa !36
  %127 = load i32, i32* %des_num_comp, align 4, !tbaa !5
  %call126 = call i32 @gx_has_transfer(%struct.gs_imager_state_s* %126, i32 %127) #8
  %128 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icc_setup127 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %128, i32 0, i32 80
  %has_transfer = getelementptr inbounds %struct.gx_image_icc_setup_s, %struct.gx_image_icc_setup_s* %icc_setup127, i32 0, i32 3
  store i32 %call126, i32* %has_transfer, align 4, !tbaa !87
  %129 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icc_setup128 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %129, i32 0, i32 80
  %is_lab129 = getelementptr inbounds %struct.gx_image_icc_setup_s, %struct.gx_image_icc_setup_s* %icc_setup128, i32 0, i32 1
  %130 = load i32, i32* %is_lab129, align 4, !tbaa !81
  %tobool130 = icmp ne i32 %130, 0
  br i1 %tobool130, label %if.then.131, label %if.end.134

if.then.131:                                      ; preds = %cond.end
  %131 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icc_setup132 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %131, i32 0, i32 80
  %need_decode133 = getelementptr inbounds %struct.gx_image_icc_setup_s, %struct.gx_image_icc_setup_s* %icc_setup132, i32 0, i32 0
  store i32 0, i32* %need_decode133, align 4, !tbaa !55
  br label %if.end.134

if.end.134:                                       ; preds = %if.then.131, %cond.end
  %132 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icc_link = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %132, i32 0, i32 70
  %133 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link, align 8, !tbaa !88
  %cmp135 = icmp eq %struct.gsicc_link_s* %133, null
  br i1 %cmp135, label %if.then.137, label %if.end.142

if.then.137:                                      ; preds = %if.end.134
  %134 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pis138 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %134, i32 0, i32 30
  %135 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis138, align 8, !tbaa !36
  %136 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dev139 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %136, i32 0, i32 2
  %137 = load %struct.gx_device_s*, %struct.gx_device_s** %dev139, align 8, !tbaa !35
  %138 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs68, align 8, !tbaa !1
  %139 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %139, i32 0, i32 3
  %140 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !89
  %call140 = call %struct.gsicc_link_s* @gsicc_get_link(%struct.gs_imager_state_s* %135, %struct.gx_device_s* %137, %struct.gs_color_space_s* %138, %struct.gs_color_space_s* null, %struct.gsicc_rendering_param_s* %rendering_params, %struct.gs_memory_s* %140) #8
  %141 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %icc_link141 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %141, i32 0, i32 70
  store %struct.gsicc_link_s* %call140, %struct.gsicc_link_s** %icc_link141, align 8, !tbaa !88
  br label %if.end.142

if.end.142:                                       ; preds = %if.then.137, %if.end.134
  %142 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %use_cie_range = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %142, i32 0, i32 81
  store i32 0, i32* %use_cie_range, align 4, !tbaa !90
  %143 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pcs143 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %143, i32 0, i32 31
  %144 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs143, align 8, !tbaa !37
  %call144 = call i32 @gs_color_space_is_PSCIE(%struct.gs_color_space_s* %144) #8
  %tobool145 = icmp ne i32 %call144, 0
  br i1 %tobool145, label %land.lhs.true.146, label %if.end.162

land.lhs.true.146:                                ; preds = %if.end.142
  %145 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pcs147 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %145, i32 0, i32 31
  %146 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs147, align 8, !tbaa !37
  %icc_equivalent148 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %146, i32 0, i32 4
  %147 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_equivalent148, align 8, !tbaa !77
  %cmp149 = icmp ne %struct.gs_color_space_s* %147, null
  br i1 %cmp149, label %if.then.151, label %if.end.162

if.then.151:                                      ; preds = %land.lhs.true.146
  %148 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pcs152 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %148, i32 0, i32 31
  %149 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs152, align 8, !tbaa !37
  %call153 = call i32 @check_cie_range(%struct.gs_color_space_s* %149) #8
  %tobool154 = icmp ne i32 %call153, 0
  br i1 %tobool154, label %if.end.161, label %if.then.155

if.then.155:                                      ; preds = %if.then.151
  %150 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pcs156 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %150, i32 0, i32 31
  %151 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs156, align 8, !tbaa !37
  %call157 = call %struct.gs_range_s* @get_cie_range(%struct.gs_color_space_s* %151) #8
  %cmp158 = icmp ne %struct.gs_range_s* %call157, null
  %conv159 = zext i1 %cmp158 to i32
  %152 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %use_cie_range160 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %152, i32 0, i32 81
  store i32 %conv159, i32* %use_cie_range160, align 4, !tbaa !90
  br label %if.end.161

if.end.161:                                       ; preds = %if.then.155, %if.then.151
  br label %if.end.162

if.end.162:                                       ; preds = %if.end.161, %land.lhs.true.146, %if.end.142
  %153 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dev163 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %153, i32 0, i32 2
  %154 = load %struct.gx_device_s*, %struct.gx_device_s** %dev163, align 8, !tbaa !35
  %color_info164 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %154, i32 0, i32 11
  %num_components165 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info164, i32 0, i32 1
  %155 = load i32, i32* %num_components165, align 4, !tbaa !82
  %cmp166 = icmp sgt i32 %155, 1
  br i1 %cmp166, label %cond.true.175, label %lor.lhs.false.168

lor.lhs.false.168:                                ; preds = %if.end.162
  %156 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dev169 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %156, i32 0, i32 2
  %157 = load %struct.gx_device_s*, %struct.gx_device_s** %dev169, align 8, !tbaa !35
  %color_info170 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %157, i32 0, i32 11
  %gray_index171 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info170, i32 0, i32 4
  %158 = load i8, i8* %gray_index171, align 1, !tbaa !83
  %conv172 = zext i8 %158 to i32
  %cmp173 = icmp eq i32 %conv172, 255
  br i1 %cmp173, label %cond.true.175, label %cond.false.179

cond.true.175:                                    ; preds = %lor.lhs.false.168, %if.end.162
  %159 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dev176 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %159, i32 0, i32 2
  %160 = load %struct.gx_device_s*, %struct.gx_device_s** %dev176, align 8, !tbaa !35
  %color_info177 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %160, i32 0, i32 11
  %max_color178 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info177, i32 0, i32 6
  %161 = load i32, i32* %max_color178, align 4, !tbaa !84
  br label %cond.end.183

cond.false.179:                                   ; preds = %lor.lhs.false.168
  %162 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dev180 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %162, i32 0, i32 2
  %163 = load %struct.gx_device_s*, %struct.gx_device_s** %dev180, align 8, !tbaa !35
  %color_info181 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %163, i32 0, i32 11
  %max_gray182 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info181, i32 0, i32 5
  %164 = load i32, i32* %max_gray182, align 4, !tbaa !85
  br label %cond.end.183

cond.end.183:                                     ; preds = %cond.false.179, %cond.true.175
  %cond184 = phi i32 [ %161, %cond.true.175 ], [ %164, %cond.false.179 ]
  %cmp185 = icmp ult i32 %cond184, 31
  br i1 %cmp185, label %land.lhs.true.187, label %if.end.225

land.lhs.true.187:                                ; preds = %cond.end.183
  %165 = load i32, i32* %use_fast_thresh, align 4, !tbaa !5
  %tobool188 = icmp ne i32 %165, 0
  br i1 %tobool188, label %land.lhs.true.189, label %if.end.225

land.lhs.true.189:                                ; preds = %land.lhs.true.187
  %166 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %posture = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %166, i32 0, i32 37
  %167 = load i32, i32* %posture, align 4, !tbaa !91
  %cmp190 = icmp eq i32 %167, 0
  br i1 %cmp190, label %land.lhs.true.196, label %lor.lhs.false.192

lor.lhs.false.192:                                ; preds = %land.lhs.true.189
  %168 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %posture193 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %168, i32 0, i32 37
  %169 = load i32, i32* %posture193, align 4, !tbaa !91
  %cmp194 = icmp eq i32 %169, 1
  br i1 %cmp194, label %land.lhs.true.196, label %if.end.225

land.lhs.true.196:                                ; preds = %lor.lhs.false.192, %land.lhs.true.189
  %170 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %image_parent_type = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %170, i32 0, i32 78
  %171 = load i32, i32* %image_parent_type, align 4, !tbaa !92
  %cmp197 = icmp eq i32 %171, 0
  br i1 %cmp197, label %if.then.199, label %if.end.225

if.then.199:                                      ; preds = %land.lhs.true.196
  %172 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dev200 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %172, i32 0, i32 2
  %173 = load %struct.gx_device_s*, %struct.gx_device_s** %dev200, align 8, !tbaa !35
  %is_planar = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %173, i32 0, i32 17
  %174 = load i32, i32* %is_planar, align 4, !tbaa !93
  store i32 %174, i32* %is_planar_dev, align 4, !tbaa !5
  %175 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dev201 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %175, i32 0, i32 2
  %176 = load %struct.gx_device_s*, %struct.gx_device_s** %dev201, align 8, !tbaa !35
  %color_info202 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %176, i32 0, i32 11
  %num_components203 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info202, i32 0, i32 1
  %177 = load i32, i32* %num_components203, align 4, !tbaa !82
  %cmp204 = icmp eq i32 %177, 1
  br i1 %cmp204, label %land.lhs.true.206, label %lor.lhs.false.212

land.lhs.true.206:                                ; preds = %if.then.199
  %178 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dev207 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %178, i32 0, i32 2
  %179 = load %struct.gx_device_s*, %struct.gx_device_s** %dev207, align 8, !tbaa !35
  %color_info208 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %179, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info208, i32 0, i32 3
  %180 = load i16, i16* %depth, align 2, !tbaa !94
  %conv209 = zext i16 %180 to i32
  %cmp210 = icmp eq i32 %conv209, 1
  br i1 %cmp210, label %land.lhs.true.214, label %lor.lhs.false.212

lor.lhs.false.212:                                ; preds = %land.lhs.true.206, %if.then.199
  %181 = load i32, i32* %is_planar_dev, align 4, !tbaa !5
  %tobool213 = icmp ne i32 %181, 0
  br i1 %tobool213, label %land.lhs.true.214, label %if.end.224

land.lhs.true.214:                                ; preds = %lor.lhs.false.212, %land.lhs.true.206
  %182 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %bps = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %182, i32 0, i32 11
  %183 = load i8, i8* %bps, align 1, !tbaa !95
  %conv215 = zext i8 %183 to i32
  %cmp216 = icmp eq i32 %conv215, 8
  br i1 %cmp216, label %if.then.218, label %if.end.224

if.then.218:                                      ; preds = %land.lhs.true.214
  %184 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %call219 = call i32 @gxht_thresh_image_init(%struct.gx_image_enum_s* %184) #8
  store i32 %call219, i32* %code, align 4, !tbaa !5
  %185 = load i32, i32* %code, align 4, !tbaa !5
  %cmp220 = icmp eq i32 %185, 0
  br i1 %cmp220, label %if.then.222, label %if.end.223

if.then.222:                                      ; preds = %if.then.218
  store i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)* @image_render_color_thresh, i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.223:                                       ; preds = %if.then.218
  br label %if.end.224

if.end.224:                                       ; preds = %if.end.223, %land.lhs.true.214, %lor.lhs.false.212
  br label %if.end.225

if.end.225:                                       ; preds = %if.end.224, %land.lhs.true.196, %lor.lhs.false.192, %land.lhs.true.187, %cond.end.183
  store i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)* @image_render_color_icc, i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.225, %if.then.222
  %186 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %186) #1
  %187 = bitcast i32* %des_num_comp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %187) #1
  %188 = bitcast i32* %src_num_comp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %188) #1
  %189 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %189) #1
  %190 = bitcast %struct.gsicc_rendering_param_s* %rendering_params to i8*
  call void @llvm.lifetime.end(i64 24, i8* %190) #1
  %191 = bitcast %struct.gs_color_space_s** %pcs68 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %191) #1
  br label %cleanup.231

cleanup.231:                                      ; preds = %cleanup, %if.then.66
  %192 = bitcast i32* %is_planar_dev to i8*
  call void @llvm.lifetime.end(i64 4, i8* %192) #1
  %193 = bitcast i32* %use_fast_thresh to i8*
  call void @llvm.lifetime.end(i64 4, i8* %193) #1
  %194 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %194) #1
  %195 = bitcast i32* %std_cmap_procs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %195) #1
  %196 = load i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)*, i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)** %retval
  ret i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)* %196
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #2

declare void @gx_image_scale_mask_colors(%struct.gx_image_enum_s*, i32) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare i32 @gx_device_uses_std_cmap_procs(%struct.gx_device_s*, %struct.gs_imager_state_s*) #3

declare i32 @gs_color_space_get_index(%struct.gs_color_space_s*) #3

; Function Attrs: nounwind uwtable
define internal i32 @image_render_color_DeviceN(%struct.gx_image_enum_s* %penum_orig, i8* %buffer, i32 %data_x, i32 %w, i32 %h, %struct.gx_device_s* %dev) #0 {
entry:
  %retval = alloca i32, align 4
  %penum_orig.addr = alloca %struct.gx_image_enum_s*, align 8
  %buffer.addr = alloca i8*, align 8
  %data_x.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %penum = alloca %struct.gx_image_enum_s*, align 8
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
  %remap_color = alloca i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, align 8
  %cc = alloca %struct.gs_client_color_s, align 8
  %devc1 = alloca %struct.gx_device_color_s, align 8
  %devc2 = alloca %struct.gx_device_color_s, align 8
  %pdevc = alloca %struct.gx_device_color_s*, align 8
  %pdevc_next = alloca %struct.gx_device_color_s*, align 8
  %ptemp = alloca %struct.gx_device_color_s*, align 8
  %spp = alloca i32, align 4
  %psrc_initial = alloca i8*, align 8
  %psrc = alloca i8*, align 8
  %rsrc = alloca i8*, align 8
  %xrun = alloca i32, align 4
  %yrun = alloca i32, align 4
  %irun = alloca i32, align 4
  %run = alloca %union.color_samples, align 4
  %next = alloca %union.color_samples, align 4
  %bufend = alloca i8*, align 8
  %code = alloca i32, align 4
  %mcode = alloca i32, align 4
  %i = alloca i32, align 4
  %mask = alloca i32, align 4
  %test = alloca i32, align 4
  %lab_case = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %xi = alloca i32, align 4
  %wi = alloca i32, align 4
  %yi = alloca i32, align 4
  %hi = alloca i32, align 4
  %xi304 = alloca i32, align 4
  %wi305 = alloca i32, align 4
  %yi323 = alloca i32, align 4
  %hi324 = alloca i32, align 4
  store %struct.gx_image_enum_s* %penum_orig, %struct.gx_image_enum_s** %penum_orig.addr, align 8, !tbaa !1
  store i8* %buffer, i8** %buffer.addr, align 8, !tbaa !1
  store i32 %data_x, i32* %data_x.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_image_enum_s** %penum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum_orig.addr, align 8, !tbaa !1
  store %struct.gx_image_enum_s* %1, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %2 = bitcast %struct.gs_imager_state_s** %pis to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %pis1 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %3, i32 0, i32 30
  %4 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis1, align 8, !tbaa !36
  store %struct.gs_imager_state_s* %4, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %5 = bitcast i32* %lop to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %log_op = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %6, i32 0, i32 44
  %7 = load i32, i32* %log_op, align 4, !tbaa !96
  store i32 %7, i32* %lop, align 4, !tbaa !5
  %8 = bitcast %struct.gx_dda_fixed_point_s* %pnext to i8*
  call void @llvm.lifetime.start(i64 40, i8* %8) #1
  %9 = bitcast i32* %posture to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %posture2 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %10, i32 0, i32 37
  %11 = load i32, i32* %posture2, align 4, !tbaa !91
  store i32 %11, i32* %posture, align 4, !tbaa !31
  %12 = bitcast i32* %xprev to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast i32* %yprev to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast i32* %pdyx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast i32* %pdyy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = bitcast i32* %vci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = bitcast i32* %vdi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  %19 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %pcs3 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %19, i32 0, i32 31
  %20 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs3, align 8, !tbaa !37
  store %struct.gs_color_space_s* %20, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %21 = bitcast i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %remap_color to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  %22 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %22, i32 0, i32 0
  %23 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !41
  %remap_color4 = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %23, i32 0, i32 10
  %24 = load i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %remap_color4, align 8, !tbaa !97
  store i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)* %24, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %remap_color, align 8, !tbaa !1
  %25 = bitcast %struct.gs_client_color_s* %cc to i8*
  call void @llvm.lifetime.start(i64 264, i8* %25) #1
  %26 = bitcast %struct.gx_device_color_s* %devc1 to i8*
  call void @llvm.lifetime.start(i64 656, i8* %26) #1
  %27 = bitcast %struct.gx_device_color_s* %devc2 to i8*
  call void @llvm.lifetime.start(i64 656, i8* %27) #1
  %28 = bitcast %struct.gx_device_color_s** %pdevc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %28) #1
  %29 = bitcast %struct.gx_device_color_s** %pdevc_next to i8*
  call void @llvm.lifetime.start(i64 8, i8* %29) #1
  %30 = bitcast %struct.gx_device_color_s** %ptemp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %30) #1
  %31 = bitcast i32* %spp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #1
  %32 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %spp5 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %32, i32 0, i32 14
  %33 = load i8, i8* %spp5, align 1, !tbaa !30
  %conv = zext i8 %33 to i32
  store i32 %conv, i32* %spp, align 4, !tbaa !5
  %34 = bitcast i8** %psrc_initial to i8*
  call void @llvm.lifetime.start(i64 8, i8* %34) #1
  %35 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %36 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %37 = load i32, i32* %spp, align 4, !tbaa !5
  %mul = mul nsw i32 %36, %37
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %35, i64 %idx.ext
  store i8* %add.ptr, i8** %psrc_initial, align 8, !tbaa !1
  %38 = bitcast i8** %psrc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %38) #1
  %39 = load i8*, i8** %psrc_initial, align 8, !tbaa !1
  store i8* %39, i8** %psrc, align 8, !tbaa !1
  %40 = bitcast i8** %rsrc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %40) #1
  %41 = load i8*, i8** %psrc, align 8, !tbaa !1
  %42 = load i32, i32* %spp, align 4, !tbaa !5
  %idx.ext6 = sext i32 %42 to i64
  %add.ptr7 = getelementptr inbounds i8, i8* %41, i64 %idx.ext6
  store i8* %add.ptr7, i8** %rsrc, align 8, !tbaa !1
  %43 = bitcast i32* %xrun to i8*
  call void @llvm.lifetime.start(i64 4, i8* %43) #1
  %44 = bitcast i32* %yrun to i8*
  call void @llvm.lifetime.start(i64 4, i8* %44) #1
  %45 = bitcast i32* %irun to i8*
  call void @llvm.lifetime.start(i64 4, i8* %45) #1
  %46 = bitcast %union.color_samples* %run to i8*
  call void @llvm.lifetime.start(i64 64, i8* %46) #1
  %47 = bitcast %union.color_samples* %next to i8*
  call void @llvm.lifetime.start(i64 64, i8* %47) #1
  %48 = bitcast i8** %bufend to i8*
  call void @llvm.lifetime.start(i64 8, i8* %48) #1
  %49 = load i8*, i8** %psrc, align 8, !tbaa !1
  %50 = load i32, i32* %w.addr, align 4, !tbaa !5
  %idx.ext8 = zext i32 %50 to i64
  %add.ptr9 = getelementptr inbounds i8, i8* %49, i64 %idx.ext8
  store i8* %add.ptr9, i8** %bufend, align 8, !tbaa !1
  %51 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %51) #1
  store i32 0, i32* %code, align 4, !tbaa !5
  %52 = bitcast i32* %mcode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %52) #1
  store i32 0, i32* %mcode, align 4, !tbaa !5
  %53 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %53) #1
  %54 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %54) #1
  %55 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %mask_color = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %55, i32 0, i32 16
  %mask10 = getelementptr inbounds %struct.mc_, %struct.mc_* %mask_color, i32 0, i32 1
  %56 = load i32, i32* %mask10, align 4, !tbaa !32
  store i32 %56, i32* %mask, align 4, !tbaa !5
  %57 = bitcast i32* %test to i8*
  call void @llvm.lifetime.start(i64 4, i8* %57) #1
  %58 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %mask_color11 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %58, i32 0, i32 16
  %test12 = getelementptr inbounds %struct.mc_, %struct.mc_* %mask_color11, i32 0, i32 2
  %59 = load i32, i32* %test12, align 4, !tbaa !33
  store i32 %59, i32* %test, align 4, !tbaa !5
  %60 = bitcast i32* %lab_case to i8*
  call void @llvm.lifetime.start(i64 4, i8* %60) #1
  store i32 0, i32* %lab_case, align 4, !tbaa !5
  %61 = load i32, i32* %h.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %61, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %62 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %call = call i32 @gs_color_space_is_ICC(%struct.gs_color_space_s* %62) #8
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %63 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %cmm_icc_profile_data = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %63, i32 0, i32 6
  %64 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data, align 8, !tbaa !38
  %cmp14 = icmp ne %struct.cmm_profile_s* %64, null
  br i1 %cmp14, label %land.lhs.true.16, label %if.else

land.lhs.true.16:                                 ; preds = %land.lhs.true
  %65 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %cmm_icc_profile_data17 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %65, i32 0, i32 6
  %66 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data17, align 8, !tbaa !38
  %islab = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %66, i32 0, i32 2
  %67 = load i32, i32* %islab, align 4, !tbaa !78
  %tobool18 = icmp ne i32 %67, 0
  br i1 %tobool18, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %land.lhs.true.16
  store i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)* @gx_remap_ICC_imagelab, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %remap_color, align 8, !tbaa !1
  store i32 1, i32* %lab_case, align 4, !tbaa !5
  br label %if.end.22

if.else:                                          ; preds = %land.lhs.true.16, %land.lhs.true, %if.end
  %68 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %type20 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %68, i32 0, i32 0
  %69 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type20, align 8, !tbaa !41
  %remap_color21 = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %69, i32 0, i32 10
  %70 = load i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %remap_color21, align 8, !tbaa !97
  store i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)* %70, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %remap_color, align 8, !tbaa !1
  br label %if.end.22

if.end.22:                                        ; preds = %if.else, %if.then.19
  store %struct.gx_device_color_s* %devc1, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  store %struct.gx_device_color_s* %devc2, %struct.gx_device_color_s** %pdevc_next, align 8, !tbaa !1
  %71 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %71, i32 0, i32 42
  %dev_spec_op = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 65
  %72 = load i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)** %dev_spec_op, align 8, !tbaa !98
  %73 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call23 = call i32 %72(%struct.gx_device_s* %73, i32 11, i8* null, i32 0) #8
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then.25, label %if.end.33

if.then.25:                                       ; preds = %if.end.22
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.25
  %74 = load i32, i32* %i, align 4, !tbaa !5
  %cmp26 = icmp slt i32 %74, 64
  br i1 %cmp26, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %75 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %75 to i64
  %76 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %76, i32 0, i32 1
  %devn = bitcast %union._c* %colors to %struct._devn*
  %values = getelementptr inbounds %struct._devn, %struct._devn* %devn, i32 0, i32 0
  %arrayidx = getelementptr inbounds [64 x i16], [64 x i16]* %values, i32 0, i64 %idxprom
  store i16 0, i16* %arrayidx, align 2, !tbaa !99
  %77 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom28 = sext i32 %77 to i64
  %78 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc_next, align 8, !tbaa !1
  %colors29 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %78, i32 0, i32 1
  %devn30 = bitcast %union._c* %colors29 to %struct._devn*
  %values31 = getelementptr inbounds %struct._devn, %struct._devn* %devn30, i32 0, i32 0
  %arrayidx32 = getelementptr inbounds [64 x i16], [64 x i16]* %values31, i32 0, i64 %idxprom28
  store i16 0, i16* %arrayidx32, align 2, !tbaa !99
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %79 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %79, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.33

if.end.33:                                        ; preds = %for.end, %if.end.22
  %80 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %type34 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %80, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_none, %struct.gx_device_color_type_s** %type34, align 8, !tbaa !100
  %81 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc_next, align 8, !tbaa !1
  %type35 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %81, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_none, %struct.gx_device_color_type_s** %type35, align 8, !tbaa !100
  %82 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %dda = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %82, i32 0, i32 55
  %pixel0 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda, i32 0, i32 2
  %83 = bitcast %struct.gx_dda_fixed_point_s* %pnext to i8*
  %84 = bitcast %struct.gx_dda_fixed_point_s* %pixel0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %83, i8* %84, i64 40, i32 4, i1 false), !tbaa.struct !101
  %x = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pnext, i32 0, i32 0
  %state = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x, i32 0, i32 0
  %Q = getelementptr inbounds %struct._a, %struct._a* %state, i32 0, i32 0
  %85 = load i32, i32* %Q, align 4, !tbaa !102
  store i32 %85, i32* %xprev, align 4, !tbaa !5
  store i32 %85, i32* %xrun, align 4, !tbaa !5
  %y = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pnext, i32 0, i32 1
  %state36 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y, i32 0, i32 0
  %Q37 = getelementptr inbounds %struct._a, %struct._a* %state36, i32 0, i32 0
  %86 = load i32, i32* %Q37, align 4, !tbaa !103
  store i32 %86, i32* %yprev, align 4, !tbaa !5
  store i32 %86, i32* %yrun, align 4, !tbaa !5
  %87 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %dda38 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %87, i32 0, i32 55
  %row = getelementptr inbounds %struct.dd_, %struct.dd_* %dda38, i32 0, i32 0
  %x39 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %row, i32 0, i32 0
  %state40 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x39, i32 0, i32 0
  %Q41 = getelementptr inbounds %struct._a, %struct._a* %state40, i32 0, i32 0
  %88 = load i32, i32* %Q41, align 4, !tbaa !104
  %89 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %cur = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %89, i32 0, i32 53
  %x42 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cur, i32 0, i32 0
  %90 = load i32, i32* %x42, align 4, !tbaa !105
  %sub = sub nsw i32 %88, %90
  store i32 %sub, i32* %pdyx, align 4, !tbaa !5
  %91 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %dda43 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %91, i32 0, i32 55
  %row44 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda43, i32 0, i32 0
  %y45 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %row44, i32 0, i32 1
  %state46 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y45, i32 0, i32 0
  %Q47 = getelementptr inbounds %struct._a, %struct._a* %state46, i32 0, i32 0
  %92 = load i32, i32* %Q47, align 4, !tbaa !106
  %93 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %cur48 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %93, i32 0, i32 53
  %y49 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cur48, i32 0, i32 1
  %94 = load i32, i32* %y49, align 4, !tbaa !107
  %sub50 = sub nsw i32 %92, %94
  store i32 %sub50, i32* %pdyy, align 4, !tbaa !5
  %95 = load i32, i32* %posture, align 4, !tbaa !31
  switch i32 %95, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.51
  ]

sw.bb:                                            ; preds = %if.end.33
  %96 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %yci = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %96, i32 0, i32 60
  %97 = load i32, i32* %yci, align 4, !tbaa !108
  store i32 %97, i32* %vci, align 4, !tbaa !5
  %98 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %hci = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %98, i32 0, i32 61
  %99 = load i32, i32* %hci, align 4, !tbaa !109
  store i32 %99, i32* %vdi, align 4, !tbaa !5
  %100 = load i32, i32* %xrun, align 4, !tbaa !5
  %add = add nsw i32 %100, 128
  %shr = ashr i32 %add, 8
  store i32 %shr, i32* %irun, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.51:                                         ; preds = %if.end.33
  br label %sw.default

sw.default:                                       ; preds = %if.end.33, %sw.bb.51
  %101 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %xci = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %101, i32 0, i32 62
  %102 = load i32, i32* %xci, align 4, !tbaa !110
  store i32 %102, i32* %vci, align 4, !tbaa !5
  %103 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %wci = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %103, i32 0, i32 63
  %104 = load i32, i32* %wci, align 4, !tbaa !111
  store i32 %104, i32* %vdi, align 4, !tbaa !5
  %105 = load i32, i32* %yrun, align 4, !tbaa !5
  %add52 = add nsw i32 %105, 128
  %shr53 = ashr i32 %add52, 8
  store i32 %shr53, i32* %irun, align 4, !tbaa !5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  br label %do.body

do.body:                                          ; preds = %sw.epilog
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %106 = bitcast %union.color_samples* %run to i8*
  %call54 = call i8* @memset(i8* %106, i32 0, i64 64) #7
  %107 = bitcast %union.color_samples* %next to i8*
  %call55 = call i8* @memset(i8* %107, i32 0, i64 64) #7
  %pattern = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 0
  store %struct.gs_pattern_instance_s* null, %struct.gs_pattern_instance_s** %pattern, align 8, !tbaa !112
  %108 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %type56 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %108, i32 0, i32 0
  %109 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type56, align 8, !tbaa !41
  %init_color = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %109, i32 0, i32 5
  %110 = load void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)** %init_color, align 8, !tbaa !113
  %111 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  call void %110(%struct.gs_client_color_s* %cc, %struct.gs_color_space_s* %111) #8
  %112 = load i8*, i8** %psrc, align 8, !tbaa !1
  %arrayidx57 = getelementptr inbounds i8, i8* %112, i64 0
  %113 = load i8, i8* %arrayidx57, align 1, !tbaa !31
  %conv58 = zext i8 %113 to i32
  %neg = xor i32 %conv58, -1
  %conv59 = trunc i32 %neg to i8
  %v = bitcast %union.color_samples* %run to [64 x i8]*
  %arrayidx60 = getelementptr inbounds [64 x i8], [64 x i8]* %v, i32 0, i64 0
  store i8 %conv59, i8* %arrayidx60, align 1, !tbaa !31
  br label %while.cond

while.cond:                                       ; preds = %inc.296, %do.end
  %114 = load i8*, i8** %psrc, align 8, !tbaa !1
  %115 = load i8*, i8** %bufend, align 8, !tbaa !1
  %cmp61 = icmp ult i8* %114, %115
  br i1 %cmp61, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %do.body.63

do.body.63:                                       ; preds = %while.body
  %x64 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pnext, i32 0, i32 0
  %step = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x64, i32 0, i32 1
  %dR = getelementptr inbounds %struct._e, %struct._e* %step, i32 0, i32 1
  %116 = load i32, i32* %dR, align 4, !tbaa !114
  %x65 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pnext, i32 0, i32 0
  %state66 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x65, i32 0, i32 0
  %R = getelementptr inbounds %struct._a, %struct._a* %state66, i32 0, i32 1
  %117 = load i32, i32* %R, align 4, !tbaa !115
  %sub67 = sub i32 %117, %116
  store i32 %sub67, i32* %R, align 4, !tbaa !115
  %x68 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pnext, i32 0, i32 0
  %state69 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x68, i32 0, i32 0
  %R70 = getelementptr inbounds %struct._a, %struct._a* %state69, i32 0, i32 1
  %118 = load i32, i32* %R70, align 4, !tbaa !115
  %cmp71 = icmp slt i32 %118, 0
  br i1 %cmp71, label %if.then.73, label %if.end.84

if.then.73:                                       ; preds = %do.body.63
  %x74 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pnext, i32 0, i32 0
  %state75 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x74, i32 0, i32 0
  %Q76 = getelementptr inbounds %struct._a, %struct._a* %state75, i32 0, i32 0
  %119 = load i32, i32* %Q76, align 4, !tbaa !102
  %inc77 = add nsw i32 %119, 1
  store i32 %inc77, i32* %Q76, align 4, !tbaa !102
  %x78 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pnext, i32 0, i32 0
  %step79 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x78, i32 0, i32 1
  %N = getelementptr inbounds %struct._e, %struct._e* %step79, i32 0, i32 2
  %120 = load i32, i32* %N, align 4, !tbaa !116
  %x80 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pnext, i32 0, i32 0
  %state81 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x80, i32 0, i32 0
  %R82 = getelementptr inbounds %struct._a, %struct._a* %state81, i32 0, i32 1
  %121 = load i32, i32* %R82, align 4, !tbaa !115
  %add83 = add i32 %121, %120
  store i32 %add83, i32* %R82, align 4, !tbaa !115
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.73, %do.body.63
  %x85 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pnext, i32 0, i32 0
  %step86 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x85, i32 0, i32 1
  %dQ = getelementptr inbounds %struct._e, %struct._e* %step86, i32 0, i32 0
  %122 = load i32, i32* %dQ, align 4, !tbaa !117
  %x87 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pnext, i32 0, i32 0
  %state88 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x87, i32 0, i32 0
  %Q89 = getelementptr inbounds %struct._a, %struct._a* %state88, i32 0, i32 0
  %123 = load i32, i32* %Q89, align 4, !tbaa !102
  %add90 = add nsw i32 %123, %122
  store i32 %add90, i32* %Q89, align 4, !tbaa !102
  br label %do.cond.91

do.cond.91:                                       ; preds = %if.end.84
  br label %do.end.92

do.end.92:                                        ; preds = %do.cond.91
  br label %do.body.93

do.body.93:                                       ; preds = %do.end.92
  %y94 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pnext, i32 0, i32 1
  %step95 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y94, i32 0, i32 1
  %dR96 = getelementptr inbounds %struct._e, %struct._e* %step95, i32 0, i32 1
  %124 = load i32, i32* %dR96, align 4, !tbaa !118
  %y97 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pnext, i32 0, i32 1
  %state98 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y97, i32 0, i32 0
  %R99 = getelementptr inbounds %struct._a, %struct._a* %state98, i32 0, i32 1
  %125 = load i32, i32* %R99, align 4, !tbaa !119
  %sub100 = sub i32 %125, %124
  store i32 %sub100, i32* %R99, align 4, !tbaa !119
  %y101 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pnext, i32 0, i32 1
  %state102 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y101, i32 0, i32 0
  %R103 = getelementptr inbounds %struct._a, %struct._a* %state102, i32 0, i32 1
  %126 = load i32, i32* %R103, align 4, !tbaa !119
  %cmp104 = icmp slt i32 %126, 0
  br i1 %cmp104, label %if.then.106, label %if.end.118

if.then.106:                                      ; preds = %do.body.93
  %y107 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pnext, i32 0, i32 1
  %state108 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y107, i32 0, i32 0
  %Q109 = getelementptr inbounds %struct._a, %struct._a* %state108, i32 0, i32 0
  %127 = load i32, i32* %Q109, align 4, !tbaa !103
  %inc110 = add nsw i32 %127, 1
  store i32 %inc110, i32* %Q109, align 4, !tbaa !103
  %y111 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pnext, i32 0, i32 1
  %step112 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y111, i32 0, i32 1
  %N113 = getelementptr inbounds %struct._e, %struct._e* %step112, i32 0, i32 2
  %128 = load i32, i32* %N113, align 4, !tbaa !120
  %y114 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pnext, i32 0, i32 1
  %state115 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y114, i32 0, i32 0
  %R116 = getelementptr inbounds %struct._a, %struct._a* %state115, i32 0, i32 1
  %129 = load i32, i32* %R116, align 4, !tbaa !119
  %add117 = add i32 %129, %128
  store i32 %add117, i32* %R116, align 4, !tbaa !119
  br label %if.end.118

if.end.118:                                       ; preds = %if.then.106, %do.body.93
  %y119 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pnext, i32 0, i32 1
  %step120 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y119, i32 0, i32 1
  %dQ121 = getelementptr inbounds %struct._e, %struct._e* %step120, i32 0, i32 0
  %130 = load i32, i32* %dQ121, align 4, !tbaa !121
  %y122 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pnext, i32 0, i32 1
  %state123 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y122, i32 0, i32 0
  %Q124 = getelementptr inbounds %struct._a, %struct._a* %state123, i32 0, i32 0
  %131 = load i32, i32* %Q124, align 4, !tbaa !103
  %add125 = add nsw i32 %131, %130
  store i32 %add125, i32* %Q124, align 4, !tbaa !103
  br label %do.cond.126

do.cond.126:                                      ; preds = %if.end.118
  br label %do.end.127

do.end.127:                                       ; preds = %do.cond.126
  %132 = load i32, i32* %posture, align 4, !tbaa !31
  %cmp128 = icmp ne i32 %132, 2
  br i1 %cmp128, label %land.lhs.true.130, label %if.end.138

land.lhs.true.130:                                ; preds = %do.end.127
  %133 = load i8*, i8** %psrc, align 8, !tbaa !1
  %v131 = bitcast %union.color_samples* %run to [64 x i8]*
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %v131, i32 0, i32 0
  %134 = load i32, i32* %spp, align 4, !tbaa !5
  %conv132 = sext i32 %134 to i64
  %call133 = call i32 @memcmp(i8* %133, i8* %arraydecay, i64 %conv132) #9
  %tobool134 = icmp ne i32 %call133, 0
  br i1 %tobool134, label %if.end.138, label %if.then.135

if.then.135:                                      ; preds = %land.lhs.true.130
  %135 = load i32, i32* %spp, align 4, !tbaa !5
  %136 = load i8*, i8** %psrc, align 8, !tbaa !1
  %idx.ext136 = sext i32 %135 to i64
  %add.ptr137 = getelementptr inbounds i8, i8* %136, i64 %idx.ext136
  store i8* %add.ptr137, i8** %psrc, align 8, !tbaa !1
  br label %inc.296

if.end.138:                                       ; preds = %land.lhs.true.130, %do.end.127
  %v139 = bitcast %union.color_samples* %next to [64 x i8]*
  %arraydecay140 = getelementptr inbounds [64 x i8], [64 x i8]* %v139, i32 0, i32 0
  %137 = load i8*, i8** %psrc, align 8, !tbaa !1
  %138 = load i32, i32* %spp, align 4, !tbaa !5
  %conv141 = sext i32 %138 to i64
  %call142 = call i8* @memcpy(i8* %arraydecay140, i8* %137, i64 %conv141) #7
  %139 = load i32, i32* %spp, align 4, !tbaa !5
  %140 = load i8*, i8** %psrc, align 8, !tbaa !1
  %idx.ext143 = sext i32 %139 to i64
  %add.ptr144 = getelementptr inbounds i8, i8* %140, i64 %idx.ext143
  store i8* %add.ptr144, i8** %psrc, align 8, !tbaa !1
  %all = bitcast %union.color_samples* %next to [16 x i32]*
  %arrayidx145 = getelementptr inbounds [16 x i32], [16 x i32]* %all, i32 0, i64 0
  %141 = load i32, i32* %arrayidx145, align 4, !tbaa !5
  %142 = load i32, i32* %mask, align 4, !tbaa !5
  %and = and i32 %141, %142
  %143 = load i32, i32* %test, align 4, !tbaa !5
  %cmp146 = icmp eq i32 %and, %143
  br i1 %cmp146, label %land.lhs.true.148, label %if.end.157

land.lhs.true.148:                                ; preds = %if.end.138
  %144 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %mask_color149 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %144, i32 0, i32 16
  %exact = getelementptr inbounds %struct.mc_, %struct.mc_* %mask_color149, i32 0, i32 3
  %145 = load i32, i32* %exact, align 4, !tbaa !34
  %tobool150 = icmp ne i32 %145, 0
  br i1 %tobool150, label %if.then.155, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.148
  %v151 = bitcast %union.color_samples* %next to [64 x i8]*
  %arraydecay152 = getelementptr inbounds [64 x i8], [64 x i8]* %v151, i32 0, i32 0
  %146 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %147 = load i32, i32* %spp, align 4, !tbaa !5
  %call153 = call i32 @mask_color_matches(i8* %arraydecay152, %struct.gx_image_enum_s* %146, i32 %147) #8
  %tobool154 = icmp ne i32 %call153, 0
  br i1 %tobool154, label %if.then.155, label %if.end.157

if.then.155:                                      ; preds = %lor.lhs.false, %land.lhs.true.148
  %148 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc_next, align 8, !tbaa !1
  %type156 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %148, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_null, %struct.gx_device_color_type_s** %type156, align 8, !tbaa !100
  br label %mapped

if.end.157:                                       ; preds = %lor.lhs.false, %if.end.138
  %149 = load i32, i32* %lab_case, align 4, !tbaa !5
  %tobool158 = icmp ne i32 %149, 0
  br i1 %tobool158, label %if.then.159, label %if.else.176

if.then.159:                                      ; preds = %if.end.157
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.160

for.cond.160:                                     ; preds = %for.inc.173, %if.then.159
  %150 = load i32, i32* %i, align 4, !tbaa !5
  %151 = load i32, i32* %spp, align 4, !tbaa !5
  %cmp161 = icmp slt i32 %150, %151
  br i1 %cmp161, label %for.body.163, label %for.end.175

for.body.163:                                     ; preds = %for.cond.160
  %152 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom164 = sext i32 %152 to i64
  %v165 = bitcast %union.color_samples* %next to [64 x i8]*
  %arrayidx166 = getelementptr inbounds [64 x i8], [64 x i8]* %v165, i32 0, i64 %idxprom164
  %153 = load i8, i8* %arrayidx166, align 1, !tbaa !31
  %conv167 = zext i8 %153 to i32
  %conv168 = sitofp i32 %conv167 to float
  %mul169 = fmul float %conv168, 0x3F70101020000000
  %154 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom170 = sext i32 %154 to i64
  %paint = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values171 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint, i32 0, i32 0
  %arrayidx172 = getelementptr inbounds [64 x float], [64 x float]* %values171, i32 0, i64 %idxprom170
  store float %mul169, float* %arrayidx172, align 4, !tbaa !122
  br label %for.inc.173

for.inc.173:                                      ; preds = %for.body.163
  %155 = load i32, i32* %i, align 4, !tbaa !5
  %inc174 = add nsw i32 %155, 1
  store i32 %inc174, i32* %i, align 4, !tbaa !5
  br label %for.cond.160

for.end.175:                                      ; preds = %for.cond.160
  br label %if.end.233

if.else.176:                                      ; preds = %if.end.157
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.177

for.cond.177:                                     ; preds = %for.inc.230, %if.else.176
  %156 = load i32, i32* %i, align 4, !tbaa !5
  %157 = load i32, i32* %spp, align 4, !tbaa !5
  %cmp178 = icmp slt i32 %156, %157
  br i1 %cmp178, label %for.body.180, label %for.end.232

for.body.180:                                     ; preds = %for.cond.177
  %158 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom181 = sext i32 %158 to i64
  %159 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %map = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %159, i32 0, i32 64
  %arrayidx182 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map, i32 0, i64 %idxprom181
  %decoding = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx182, i32 0, i32 3
  %160 = load i32, i32* %decoding, align 4, !tbaa !56
  switch i32 %160, label %sw.epilog.229 [
    i32 0, label %sw.bb.183
    i32 1, label %sw.bb.194
    i32 2, label %sw.bb.209
  ]

sw.bb.183:                                        ; preds = %for.body.180
  %161 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom184 = sext i32 %161 to i64
  %v185 = bitcast %union.color_samples* %next to [64 x i8]*
  %arrayidx186 = getelementptr inbounds [64 x i8], [64 x i8]* %v185, i32 0, i64 %idxprom184
  %162 = load i8, i8* %arrayidx186, align 1, !tbaa !31
  %conv187 = zext i8 %162 to i32
  %conv188 = sitofp i32 %conv187 to float
  %mul189 = fmul float %conv188, 0x3F70101020000000
  %163 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom190 = sext i32 %163 to i64
  %paint191 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values192 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint191, i32 0, i32 0
  %arrayidx193 = getelementptr inbounds [64 x float], [64 x float]* %values192, i32 0, i64 %idxprom190
  store float %mul189, float* %arrayidx193, align 4, !tbaa !122
  br label %sw.epilog.229

sw.bb.194:                                        ; preds = %for.body.180
  %164 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom195 = sext i32 %164 to i64
  %v196 = bitcast %union.color_samples* %next to [64 x i8]*
  %arrayidx197 = getelementptr inbounds [64 x i8], [64 x i8]* %v196, i32 0, i64 %idxprom195
  %165 = load i8, i8* %arrayidx197, align 1, !tbaa !31
  %conv198 = zext i8 %165 to i32
  %shr199 = ashr i32 %conv198, 4
  %idxprom200 = sext i32 %shr199 to i64
  %166 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom201 = sext i32 %166 to i64
  %167 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %map202 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %167, i32 0, i32 64
  %arrayidx203 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map202, i32 0, i64 %idxprom201
  %decode_lookup = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx203, i32 0, i32 1
  %arrayidx204 = getelementptr inbounds [16 x float], [16 x float]* %decode_lookup, i32 0, i64 %idxprom200
  %168 = load float, float* %arrayidx204, align 4, !tbaa !122
  %169 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom205 = sext i32 %169 to i64
  %paint206 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values207 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint206, i32 0, i32 0
  %arrayidx208 = getelementptr inbounds [64 x float], [64 x float]* %values207, i32 0, i64 %idxprom205
  store float %168, float* %arrayidx208, align 4, !tbaa !122
  br label %sw.epilog.229

sw.bb.209:                                        ; preds = %for.body.180
  %170 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom210 = sext i32 %170 to i64
  %171 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %map211 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %171, i32 0, i32 64
  %arrayidx212 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map211, i32 0, i64 %idxprom210
  %decode_lookup213 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx212, i32 0, i32 1
  %arrayidx214 = getelementptr inbounds [16 x float], [16 x float]* %decode_lookup213, i32 0, i64 0
  %172 = load float, float* %arrayidx214, align 4, !tbaa !122
  %173 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom215 = sext i32 %173 to i64
  %v216 = bitcast %union.color_samples* %next to [64 x i8]*
  %arrayidx217 = getelementptr inbounds [64 x i8], [64 x i8]* %v216, i32 0, i64 %idxprom215
  %174 = load i8, i8* %arrayidx217, align 1, !tbaa !31
  %conv218 = zext i8 %174 to i32
  %conv219 = sitofp i32 %conv218 to float
  %175 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom220 = sext i32 %175 to i64
  %176 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %map221 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %176, i32 0, i32 64
  %arrayidx222 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map221, i32 0, i64 %idxprom220
  %decode_factor = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx222, i32 0, i32 2
  %177 = load float, float* %decode_factor, align 4, !tbaa !123
  %mul223 = fmul float %conv219, %177
  %add224 = fadd float %172, %mul223
  %178 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom225 = sext i32 %178 to i64
  %paint226 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values227 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint226, i32 0, i32 0
  %arrayidx228 = getelementptr inbounds [64 x float], [64 x float]* %values227, i32 0, i64 %idxprom225
  store float %add224, float* %arrayidx228, align 4, !tbaa !122
  br label %sw.epilog.229

sw.epilog.229:                                    ; preds = %sw.bb.209, %for.body.180, %sw.bb.194, %sw.bb.183
  br label %for.inc.230

for.inc.230:                                      ; preds = %sw.epilog.229
  %179 = load i32, i32* %i, align 4, !tbaa !5
  %inc231 = add nsw i32 %179, 1
  store i32 %inc231, i32* %i, align 4, !tbaa !5
  br label %for.cond.177

for.end.232:                                      ; preds = %for.cond.177
  br label %if.end.233

if.end.233:                                       ; preds = %for.end.232, %for.end.175
  %180 = load i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %remap_color, align 8, !tbaa !1
  %181 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %182 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc_next, align 8, !tbaa !1
  %183 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %184 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call234 = call i32 %180(%struct.gs_client_color_s* %cc, %struct.gs_color_space_s* %181, %struct.gx_device_color_s* %182, %struct.gs_imager_state_s* %183, %struct.gx_device_s* %184, i32 1) #8
  store i32 %call234, i32* %mcode, align 4, !tbaa !5
  br label %mapped

mapped:                                           ; preds = %if.end.233, %if.then.155
  %185 = load i32, i32* %mcode, align 4, !tbaa !5
  %cmp235 = icmp slt i32 %185, 0
  br i1 %cmp235, label %if.then.237, label %if.end.238

if.then.237:                                      ; preds = %mapped
  br label %fill

if.end.238:                                       ; preds = %mapped
  br label %do.body.239

do.body.239:                                      ; preds = %if.end.238
  br label %do.cond.240

do.cond.240:                                      ; preds = %do.body.239
  br label %do.end.241

do.end.241:                                       ; preds = %do.cond.240
  %186 = load i32, i32* %posture, align 4, !tbaa !31
  %cmp242 = icmp ne i32 %186, 2
  br i1 %cmp242, label %land.lhs.true.244, label %if.end.248

land.lhs.true.244:                                ; preds = %do.end.241
  %187 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %188 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc_next, align 8, !tbaa !1
  %call245 = call i32 @gx_device_color_equal(%struct.gx_device_color_s* %187, %struct.gx_device_color_s* %188) #8
  %tobool246 = icmp ne i32 %call245, 0
  br i1 %tobool246, label %if.then.247, label %if.end.248

if.then.247:                                      ; preds = %land.lhs.true.244
  br label %set

if.end.248:                                       ; preds = %land.lhs.true.244, %do.end.241
  br label %fill

fill:                                             ; preds = %if.end.248, %if.then.237
  %189 = load i32, i32* %posture, align 4, !tbaa !31
  switch i32 %189, label %sw.default.282 [
    i32 0, label %sw.bb.249
    i32 1, label %sw.bb.265
  ]

sw.bb.249:                                        ; preds = %fill
  %190 = bitcast i32* %xi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %190) #1
  %191 = load i32, i32* %irun, align 4, !tbaa !5
  store i32 %191, i32* %xi, align 4, !tbaa !5
  %192 = bitcast i32* %wi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %192) #1
  %193 = load i32, i32* %xprev, align 4, !tbaa !5
  %add250 = add nsw i32 %193, 128
  %shr251 = ashr i32 %add250, 8
  store i32 %shr251, i32* %irun, align 4, !tbaa !5
  %194 = load i32, i32* %xi, align 4, !tbaa !5
  %sub252 = sub nsw i32 %shr251, %194
  store i32 %sub252, i32* %wi, align 4, !tbaa !5
  %195 = load i32, i32* %wi, align 4, !tbaa !5
  %cmp253 = icmp slt i32 %195, 0
  br i1 %cmp253, label %if.then.255, label %if.end.258

if.then.255:                                      ; preds = %sw.bb.249
  %196 = load i32, i32* %wi, align 4, !tbaa !5
  %197 = load i32, i32* %xi, align 4, !tbaa !5
  %add256 = add nsw i32 %197, %196
  store i32 %add256, i32* %xi, align 4, !tbaa !5
  %198 = load i32, i32* %wi, align 4, !tbaa !5
  %sub257 = sub nsw i32 0, %198
  store i32 %sub257, i32* %wi, align 4, !tbaa !5
  br label %if.end.258

if.end.258:                                       ; preds = %if.then.255, %sw.bb.249
  %199 = load i32, i32* %wi, align 4, !tbaa !5
  %cmp259 = icmp sgt i32 %199, 0
  br i1 %cmp259, label %if.then.261, label %if.end.264

if.then.261:                                      ; preds = %if.end.258
  %200 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %type262 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %200, i32 0, i32 0
  %201 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type262, align 8, !tbaa !100
  %fill_rectangle = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %201, i32 0, i32 5
  %202 = load i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)** %fill_rectangle, align 8, !tbaa !124
  %203 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %204 = load i32, i32* %xi, align 4, !tbaa !5
  %205 = load i32, i32* %vci, align 4, !tbaa !5
  %206 = load i32, i32* %wi, align 4, !tbaa !5
  %207 = load i32, i32* %vdi, align 4, !tbaa !5
  %208 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %209 = load i32, i32* %lop, align 4, !tbaa !5
  %call263 = call i32 %202(%struct.gx_device_color_s* %203, i32 %204, i32 %205, i32 %206, i32 %207, %struct.gx_device_s* %208, i32 %209, %struct.gx_rop_source_s* null) #8
  store i32 %call263, i32* %code, align 4, !tbaa !5
  br label %if.end.264

if.end.264:                                       ; preds = %if.then.261, %if.end.258
  %210 = bitcast i32* %wi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %210) #1
  %211 = bitcast i32* %xi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %211) #1
  br label %sw.epilog.287

sw.bb.265:                                        ; preds = %fill
  %212 = bitcast i32* %yi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %212) #1
  %213 = load i32, i32* %irun, align 4, !tbaa !5
  store i32 %213, i32* %yi, align 4, !tbaa !5
  %214 = bitcast i32* %hi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %214) #1
  %215 = load i32, i32* %yprev, align 4, !tbaa !5
  %add266 = add nsw i32 %215, 128
  %shr267 = ashr i32 %add266, 8
  store i32 %shr267, i32* %irun, align 4, !tbaa !5
  %216 = load i32, i32* %yi, align 4, !tbaa !5
  %sub268 = sub nsw i32 %shr267, %216
  store i32 %sub268, i32* %hi, align 4, !tbaa !5
  %217 = load i32, i32* %hi, align 4, !tbaa !5
  %cmp269 = icmp slt i32 %217, 0
  br i1 %cmp269, label %if.then.271, label %if.end.274

if.then.271:                                      ; preds = %sw.bb.265
  %218 = load i32, i32* %hi, align 4, !tbaa !5
  %219 = load i32, i32* %yi, align 4, !tbaa !5
  %add272 = add nsw i32 %219, %218
  store i32 %add272, i32* %yi, align 4, !tbaa !5
  %220 = load i32, i32* %hi, align 4, !tbaa !5
  %sub273 = sub nsw i32 0, %220
  store i32 %sub273, i32* %hi, align 4, !tbaa !5
  br label %if.end.274

if.end.274:                                       ; preds = %if.then.271, %sw.bb.265
  %221 = load i32, i32* %hi, align 4, !tbaa !5
  %cmp275 = icmp sgt i32 %221, 0
  br i1 %cmp275, label %if.then.277, label %if.end.281

if.then.277:                                      ; preds = %if.end.274
  %222 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %type278 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %222, i32 0, i32 0
  %223 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type278, align 8, !tbaa !100
  %fill_rectangle279 = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %223, i32 0, i32 5
  %224 = load i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)** %fill_rectangle279, align 8, !tbaa !124
  %225 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %226 = load i32, i32* %vci, align 4, !tbaa !5
  %227 = load i32, i32* %yi, align 4, !tbaa !5
  %228 = load i32, i32* %vdi, align 4, !tbaa !5
  %229 = load i32, i32* %hi, align 4, !tbaa !5
  %230 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %231 = load i32, i32* %lop, align 4, !tbaa !5
  %call280 = call i32 %224(%struct.gx_device_color_s* %225, i32 %226, i32 %227, i32 %228, i32 %229, %struct.gx_device_s* %230, i32 %231, %struct.gx_rop_source_s* null) #8
  store i32 %call280, i32* %code, align 4, !tbaa !5
  br label %if.end.281

if.end.281:                                       ; preds = %if.then.277, %if.end.274
  %232 = bitcast i32* %hi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %232) #1
  %233 = bitcast i32* %yi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %233) #1
  br label %sw.epilog.287

sw.default.282:                                   ; preds = %fill
  %234 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs283 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %234, i32 0, i32 42
  %fill_parallelogram = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs283, i32 0, i32 28
  %235 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)** %fill_parallelogram, align 8, !tbaa !126
  %236 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %237 = load i32, i32* %xrun, align 4, !tbaa !5
  %238 = load i32, i32* %yrun, align 4, !tbaa !5
  %239 = load i32, i32* %xprev, align 4, !tbaa !5
  %240 = load i32, i32* %xrun, align 4, !tbaa !5
  %sub284 = sub nsw i32 %239, %240
  %241 = load i32, i32* %yprev, align 4, !tbaa !5
  %242 = load i32, i32* %yrun, align 4, !tbaa !5
  %sub285 = sub nsw i32 %241, %242
  %243 = load i32, i32* %pdyx, align 4, !tbaa !5
  %244 = load i32, i32* %pdyy, align 4, !tbaa !5
  %245 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %246 = load i32, i32* %lop, align 4, !tbaa !5
  %call286 = call i32 %235(%struct.gx_device_s* %236, i32 %237, i32 %238, i32 %sub284, i32 %sub285, i32 %243, i32 %244, %struct.gx_device_color_s* %245, i32 %246) #8
  store i32 %call286, i32* %code, align 4, !tbaa !5
  %247 = load i32, i32* %xprev, align 4, !tbaa !5
  store i32 %247, i32* %xrun, align 4, !tbaa !5
  %248 = load i32, i32* %yprev, align 4, !tbaa !5
  store i32 %248, i32* %yrun, align 4, !tbaa !5
  br label %sw.epilog.287

sw.epilog.287:                                    ; preds = %sw.default.282, %if.end.281, %if.end.264
  %249 = load i32, i32* %code, align 4, !tbaa !5
  %cmp288 = icmp slt i32 %249, 0
  br i1 %cmp288, label %if.then.290, label %if.end.291

if.then.290:                                      ; preds = %sw.epilog.287
  br label %err

if.end.291:                                       ; preds = %sw.epilog.287
  %250 = load i8*, i8** %psrc, align 8, !tbaa !1
  store i8* %250, i8** %rsrc, align 8, !tbaa !1
  %251 = load i32, i32* %mcode, align 4, !tbaa !5
  store i32 %251, i32* %code, align 4, !tbaa !5
  %cmp292 = icmp slt i32 %251, 0
  br i1 %cmp292, label %if.then.294, label %if.end.295

if.then.294:                                      ; preds = %if.end.291
  br label %err

if.end.295:                                       ; preds = %if.end.291
  %252 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  store %struct.gx_device_color_s* %252, %struct.gx_device_color_s** %ptemp, align 8, !tbaa !1
  %253 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc_next, align 8, !tbaa !1
  store %struct.gx_device_color_s* %253, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %254 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %ptemp, align 8, !tbaa !1
  store %struct.gx_device_color_s* %254, %struct.gx_device_color_s** %pdevc_next, align 8, !tbaa !1
  br label %set

set:                                              ; preds = %if.end.295, %if.then.247
  %255 = bitcast %union.color_samples* %run to i8*
  %256 = bitcast %union.color_samples* %next to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %255, i8* %256, i64 64, i32 4, i1 false), !tbaa.struct !127
  br label %inc.296

inc.296:                                          ; preds = %set, %if.then.135
  %x297 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pnext, i32 0, i32 0
  %state298 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x297, i32 0, i32 0
  %Q299 = getelementptr inbounds %struct._a, %struct._a* %state298, i32 0, i32 0
  %257 = load i32, i32* %Q299, align 4, !tbaa !102
  store i32 %257, i32* %xprev, align 4, !tbaa !5
  %y300 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pnext, i32 0, i32 1
  %state301 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y300, i32 0, i32 0
  %Q302 = getelementptr inbounds %struct._a, %struct._a* %state301, i32 0, i32 0
  %258 = load i32, i32* %Q302, align 4, !tbaa !103
  store i32 %258, i32* %yprev, align 4, !tbaa !5
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %259 = load i32, i32* %posture, align 4, !tbaa !31
  switch i32 %259, label %sw.default.341 [
    i32 0, label %sw.bb.303
    i32 1, label %sw.bb.322
  ]

sw.bb.303:                                        ; preds = %while.end
  %260 = bitcast i32* %xi304 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %260) #1
  %261 = load i32, i32* %irun, align 4, !tbaa !5
  store i32 %261, i32* %xi304, align 4, !tbaa !5
  %262 = bitcast i32* %wi305 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %262) #1
  %263 = load i32, i32* %xprev, align 4, !tbaa !5
  %add306 = add nsw i32 %263, 128
  %shr307 = ashr i32 %add306, 8
  store i32 %shr307, i32* %irun, align 4, !tbaa !5
  %264 = load i32, i32* %xi304, align 4, !tbaa !5
  %sub308 = sub nsw i32 %shr307, %264
  store i32 %sub308, i32* %wi305, align 4, !tbaa !5
  %265 = load i32, i32* %wi305, align 4, !tbaa !5
  %cmp309 = icmp slt i32 %265, 0
  br i1 %cmp309, label %if.then.311, label %if.end.314

if.then.311:                                      ; preds = %sw.bb.303
  %266 = load i32, i32* %wi305, align 4, !tbaa !5
  %267 = load i32, i32* %xi304, align 4, !tbaa !5
  %add312 = add nsw i32 %267, %266
  store i32 %add312, i32* %xi304, align 4, !tbaa !5
  %268 = load i32, i32* %wi305, align 4, !tbaa !5
  %sub313 = sub nsw i32 0, %268
  store i32 %sub313, i32* %wi305, align 4, !tbaa !5
  br label %if.end.314

if.end.314:                                       ; preds = %if.then.311, %sw.bb.303
  %269 = load i32, i32* %wi305, align 4, !tbaa !5
  %cmp315 = icmp sgt i32 %269, 0
  br i1 %cmp315, label %if.then.317, label %if.end.321

if.then.317:                                      ; preds = %if.end.314
  %270 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %type318 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %270, i32 0, i32 0
  %271 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type318, align 8, !tbaa !100
  %fill_rectangle319 = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %271, i32 0, i32 5
  %272 = load i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)** %fill_rectangle319, align 8, !tbaa !124
  %273 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %274 = load i32, i32* %xi304, align 4, !tbaa !5
  %275 = load i32, i32* %vci, align 4, !tbaa !5
  %276 = load i32, i32* %wi305, align 4, !tbaa !5
  %277 = load i32, i32* %vdi, align 4, !tbaa !5
  %278 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %279 = load i32, i32* %lop, align 4, !tbaa !5
  %call320 = call i32 %272(%struct.gx_device_color_s* %273, i32 %274, i32 %275, i32 %276, i32 %277, %struct.gx_device_s* %278, i32 %279, %struct.gx_rop_source_s* null) #8
  store i32 %call320, i32* %code, align 4, !tbaa !5
  br label %if.end.321

if.end.321:                                       ; preds = %if.then.317, %if.end.314
  %280 = bitcast i32* %wi305 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %280) #1
  %281 = bitcast i32* %xi304 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %281) #1
  br label %sw.epilog.347

sw.bb.322:                                        ; preds = %while.end
  %282 = bitcast i32* %yi323 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %282) #1
  %283 = load i32, i32* %irun, align 4, !tbaa !5
  store i32 %283, i32* %yi323, align 4, !tbaa !5
  %284 = bitcast i32* %hi324 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %284) #1
  %285 = load i32, i32* %yprev, align 4, !tbaa !5
  %add325 = add nsw i32 %285, 128
  %shr326 = ashr i32 %add325, 8
  store i32 %shr326, i32* %irun, align 4, !tbaa !5
  %286 = load i32, i32* %yi323, align 4, !tbaa !5
  %sub327 = sub nsw i32 %shr326, %286
  store i32 %sub327, i32* %hi324, align 4, !tbaa !5
  %287 = load i32, i32* %hi324, align 4, !tbaa !5
  %cmp328 = icmp slt i32 %287, 0
  br i1 %cmp328, label %if.then.330, label %if.end.333

if.then.330:                                      ; preds = %sw.bb.322
  %288 = load i32, i32* %hi324, align 4, !tbaa !5
  %289 = load i32, i32* %yi323, align 4, !tbaa !5
  %add331 = add nsw i32 %289, %288
  store i32 %add331, i32* %yi323, align 4, !tbaa !5
  %290 = load i32, i32* %hi324, align 4, !tbaa !5
  %sub332 = sub nsw i32 0, %290
  store i32 %sub332, i32* %hi324, align 4, !tbaa !5
  br label %if.end.333

if.end.333:                                       ; preds = %if.then.330, %sw.bb.322
  %291 = load i32, i32* %hi324, align 4, !tbaa !5
  %cmp334 = icmp sgt i32 %291, 0
  br i1 %cmp334, label %if.then.336, label %if.end.340

if.then.336:                                      ; preds = %if.end.333
  %292 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %type337 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %292, i32 0, i32 0
  %293 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type337, align 8, !tbaa !100
  %fill_rectangle338 = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %293, i32 0, i32 5
  %294 = load i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)** %fill_rectangle338, align 8, !tbaa !124
  %295 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %296 = load i32, i32* %vci, align 4, !tbaa !5
  %297 = load i32, i32* %yi323, align 4, !tbaa !5
  %298 = load i32, i32* %vdi, align 4, !tbaa !5
  %299 = load i32, i32* %hi324, align 4, !tbaa !5
  %300 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %301 = load i32, i32* %lop, align 4, !tbaa !5
  %call339 = call i32 %294(%struct.gx_device_color_s* %295, i32 %296, i32 %297, i32 %298, i32 %299, %struct.gx_device_s* %300, i32 %301, %struct.gx_rop_source_s* null) #8
  store i32 %call339, i32* %code, align 4, !tbaa !5
  br label %if.end.340

if.end.340:                                       ; preds = %if.then.336, %if.end.333
  %302 = bitcast i32* %hi324 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %302) #1
  %303 = bitcast i32* %yi323 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %303) #1
  br label %sw.epilog.347

sw.default.341:                                   ; preds = %while.end
  %304 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs342 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %304, i32 0, i32 42
  %fill_parallelogram343 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs342, i32 0, i32 28
  %305 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)** %fill_parallelogram343, align 8, !tbaa !126
  %306 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %307 = load i32, i32* %xrun, align 4, !tbaa !5
  %308 = load i32, i32* %yrun, align 4, !tbaa !5
  %309 = load i32, i32* %xprev, align 4, !tbaa !5
  %310 = load i32, i32* %xrun, align 4, !tbaa !5
  %sub344 = sub nsw i32 %309, %310
  %311 = load i32, i32* %yprev, align 4, !tbaa !5
  %312 = load i32, i32* %yrun, align 4, !tbaa !5
  %sub345 = sub nsw i32 %311, %312
  %313 = load i32, i32* %pdyx, align 4, !tbaa !5
  %314 = load i32, i32* %pdyy, align 4, !tbaa !5
  %315 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %316 = load i32, i32* %lop, align 4, !tbaa !5
  %call346 = call i32 %305(%struct.gx_device_s* %306, i32 %307, i32 %308, i32 %sub344, i32 %sub345, i32 %313, i32 %314, %struct.gx_device_color_s* %315, i32 %316) #8
  store i32 %call346, i32* %code, align 4, !tbaa !5
  br label %sw.epilog.347

sw.epilog.347:                                    ; preds = %sw.default.341, %if.end.340, %if.end.321
  %317 = load i32, i32* %code, align 4, !tbaa !5
  %cmp348 = icmp slt i32 %317, 0
  br i1 %cmp348, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.epilog.347
  %318 = load i32, i32* %code, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %sw.epilog.347
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %318, %cond.true ], [ 1, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

err:                                              ; preds = %if.then.294, %if.then.290
  %319 = load i8*, i8** %rsrc, align 8, !tbaa !1
  %320 = load i32, i32* %spp, align 4, !tbaa !5
  %idx.ext350 = sext i32 %320 to i64
  %idx.neg = sub i64 0, %idx.ext350
  %add.ptr351 = getelementptr inbounds i8, i8* %319, i64 %idx.neg
  %321 = load i8*, i8** %psrc_initial, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %add.ptr351 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %321 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %322 = load i32, i32* %spp, align 4, !tbaa !5
  %conv352 = sext i32 %322 to i64
  %div = sdiv i64 %sub.ptr.sub, %conv352
  %conv353 = trunc i64 %div to i32
  %323 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum_orig.addr, align 8, !tbaa !1
  %used = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %323, i32 0, i32 52
  %x354 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %used, i32 0, i32 0
  store i32 %conv353, i32* %x354, align 4, !tbaa !128
  %324 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum_orig.addr, align 8, !tbaa !1
  %used355 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %324, i32 0, i32 52
  %y356 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %used355, i32 0, i32 1
  store i32 0, i32* %y356, align 4, !tbaa !129
  %325 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %325, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %err, %cond.end, %if.then
  %326 = bitcast i32* %lab_case to i8*
  call void @llvm.lifetime.end(i64 4, i8* %326) #1
  %327 = bitcast i32* %test to i8*
  call void @llvm.lifetime.end(i64 4, i8* %327) #1
  %328 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %328) #1
  %329 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %329) #1
  %330 = bitcast i32* %mcode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %330) #1
  %331 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %331) #1
  %332 = bitcast i8** %bufend to i8*
  call void @llvm.lifetime.end(i64 8, i8* %332) #1
  %333 = bitcast %union.color_samples* %next to i8*
  call void @llvm.lifetime.end(i64 64, i8* %333) #1
  %334 = bitcast %union.color_samples* %run to i8*
  call void @llvm.lifetime.end(i64 64, i8* %334) #1
  %335 = bitcast i32* %irun to i8*
  call void @llvm.lifetime.end(i64 4, i8* %335) #1
  %336 = bitcast i32* %yrun to i8*
  call void @llvm.lifetime.end(i64 4, i8* %336) #1
  %337 = bitcast i32* %xrun to i8*
  call void @llvm.lifetime.end(i64 4, i8* %337) #1
  %338 = bitcast i8** %rsrc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %338) #1
  %339 = bitcast i8** %psrc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %339) #1
  %340 = bitcast i8** %psrc_initial to i8*
  call void @llvm.lifetime.end(i64 8, i8* %340) #1
  %341 = bitcast i32* %spp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %341) #1
  %342 = bitcast %struct.gx_device_color_s** %ptemp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %342) #1
  %343 = bitcast %struct.gx_device_color_s** %pdevc_next to i8*
  call void @llvm.lifetime.end(i64 8, i8* %343) #1
  %344 = bitcast %struct.gx_device_color_s** %pdevc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %344) #1
  %345 = bitcast %struct.gx_device_color_s* %devc2 to i8*
  call void @llvm.lifetime.end(i64 656, i8* %345) #1
  %346 = bitcast %struct.gx_device_color_s* %devc1 to i8*
  call void @llvm.lifetime.end(i64 656, i8* %346) #1
  %347 = bitcast %struct.gs_client_color_s* %cc to i8*
  call void @llvm.lifetime.end(i64 264, i8* %347) #1
  %348 = bitcast i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %remap_color to i8*
  call void @llvm.lifetime.end(i64 8, i8* %348) #1
  %349 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %349) #1
  %350 = bitcast i32* %vdi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %350) #1
  %351 = bitcast i32* %vci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %351) #1
  %352 = bitcast i32* %pdyy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %352) #1
  %353 = bitcast i32* %pdyx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %353) #1
  %354 = bitcast i32* %yprev to i8*
  call void @llvm.lifetime.end(i64 4, i8* %354) #1
  %355 = bitcast i32* %xprev to i8*
  call void @llvm.lifetime.end(i64 4, i8* %355) #1
  %356 = bitcast i32* %posture to i8*
  call void @llvm.lifetime.end(i64 4, i8* %356) #1
  %357 = bitcast %struct.gx_dda_fixed_point_s* %pnext to i8*
  call void @llvm.lifetime.end(i64 40, i8* %357) #1
  %358 = bitcast i32* %lop to i8*
  call void @llvm.lifetime.end(i64 4, i8* %358) #1
  %359 = bitcast %struct.gs_imager_state_s** %pis to i8*
  call void @llvm.lifetime.end(i64 8, i8* %359) #1
  %360 = bitcast %struct.gx_image_enum_s** %penum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %360) #1
  %361 = load i32, i32* %retval
  ret i32 %361
}

declare i32 @gsicc_get_device_profile_comps(%struct.cmm_dev_profile_s*) #3

declare i32 @gs_color_space_is_PSCIE(%struct.gs_color_space_s*) #3

declare i32 @gx_has_transfer(%struct.gs_imager_state_s*, i32) #3

declare %struct.gsicc_link_s* @gsicc_get_link(%struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.gsicc_rendering_param_s*, %struct.gs_memory_s*) #3

declare i32 @check_cie_range(%struct.gs_color_space_s*) #3

declare %struct.gs_range_s* @get_cie_range(%struct.gs_color_space_s*) #3

declare i32 @gxht_thresh_image_init(%struct.gx_image_enum_s*) #3

; Function Attrs: nounwind uwtable
define internal i32 @image_render_color_thresh(%struct.gx_image_enum_s* %penum_orig, i8* %buffer, i32 %data_x, i32 %w, i32 %h, %struct.gx_device_s* %dev) #0 {
entry:
  %retval = alloca i32, align 4
  %penum_orig.addr = alloca %struct.gx_image_enum_s*, align 8
  %buffer.addr = alloca i8*, align 8
  %data_x.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %penum = alloca %struct.gx_image_enum_s*, align 8
  %posture = alloca i32, align 4
  %vdi = alloca i32, align 4
  %xrun = alloca i32, align 4
  %thresh_align = alloca i8*, align 8
  %devc_contone = alloca [64 x i8*], align 16
  %psrc_plane = alloca [64 x i8*], align 16
  %devc_contone_gray = alloca i8*, align 8
  %psrc = alloca i8*, align 8
  %dest_width = alloca i32, align 4
  %dest_height = alloca i32, align 4
  %data_length = alloca i32, align 4
  %spp_out = alloca i32, align 4
  %position = alloca i32, align 4
  %k = alloca i32, align 4
  %j = alloca i32, align 4
  %offset_bits = alloca i32, align 4
  %contone_stride = alloca i32, align 4
  %scale_factor = alloca i32, align 4
  %offset = alloca i32, align 4
  %src_size = alloca i32, align 4
  %flush_buff = alloca i32, align 4
  %psrc_temp = alloca i8*, align 8
  %offset_contone = alloca [64 x i32], align 16
  %offset_threshold = alloca i32, align 4
  %dda_ht = alloca %struct.gx_dda_int_s, align 4
  %code = alloca i32, align 4
  %spp_cm = alloca i32, align 4
  %psrc_cm = alloca i8*, align 8
  %psrc_cm_start = alloca i8*, align 8
  %bufend = alloca i8*, align 8
  %curr_ptr = alloca i8*, align 8
  %psrc_planestride = alloca i32, align 4
  %conc = alloca i16, align 2
  %num_des_comp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_image_enum_s* %penum_orig, %struct.gx_image_enum_s** %penum_orig.addr, align 8, !tbaa !1
  store i8* %buffer, i8** %buffer.addr, align 8, !tbaa !1
  store i32 %data_x, i32* %data_x.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_image_enum_s** %penum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum_orig.addr, align 8, !tbaa !1
  store %struct.gx_image_enum_s* %1, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %2 = bitcast i32* %posture to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %posture1 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %3, i32 0, i32 37
  %4 = load i32, i32* %posture1, align 4, !tbaa !91
  store i32 %4, i32* %posture, align 4, !tbaa !31
  %5 = bitcast i32* %vdi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %xrun to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i32 0, i32* %xrun, align 4, !tbaa !5
  %7 = bitcast i8** %thresh_align to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast [64 x i8*]* %devc_contone to i8*
  call void @llvm.lifetime.start(i64 512, i8* %8) #1
  %9 = bitcast [64 x i8*]* %psrc_plane to i8*
  call void @llvm.lifetime.start(i64 512, i8* %9) #1
  %10 = bitcast i8** %devc_contone_gray to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast i8** %psrc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %13 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %idx.ext = sext i32 %13 to i64
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 %idx.ext
  store i8* %add.ptr, i8** %psrc, align 8, !tbaa !1
  %14 = bitcast i32* %dest_width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast i32* %dest_height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = bitcast i32* %data_length to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = bitcast i32* %spp_out to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %18, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %19 = load i32, i32* %num_components, align 4, !tbaa !82
  store i32 %19, i32* %spp_out, align 4, !tbaa !5
  %20 = bitcast i32* %position to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  %23 = bitcast i32* %offset_bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %24 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %ht_offset_bits = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %24, i32 0, i32 74
  %25 = load i32, i32* %ht_offset_bits, align 4, !tbaa !130
  store i32 %25, i32* %offset_bits, align 4, !tbaa !5
  %26 = bitcast i32* %contone_stride to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #1
  store i32 0, i32* %contone_stride, align 4, !tbaa !5
  %27 = bitcast i32* %scale_factor to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  %28 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #1
  %29 = bitcast i32* %src_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #1
  %30 = bitcast i32* %flush_buff to i8*
  call void @llvm.lifetime.start(i64 4, i8* %30) #1
  store i32 0, i32* %flush_buff, align 4, !tbaa !5
  %31 = bitcast i8** %psrc_temp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %31) #1
  %32 = bitcast [64 x i32]* %offset_contone to i8*
  call void @llvm.lifetime.start(i64 256, i8* %32) #1
  %33 = bitcast i32* %offset_threshold to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #1
  %34 = bitcast %struct.gx_dda_int_s* %dda_ht to i8*
  call void @llvm.lifetime.start(i64 20, i8* %34) #1
  %35 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %35) #1
  store i32 0, i32* %code, align 4, !tbaa !5
  %36 = bitcast i32* %spp_cm to i8*
  call void @llvm.lifetime.start(i64 4, i8* %36) #1
  store i32 0, i32* %spp_cm, align 4, !tbaa !5
  %37 = bitcast i8** %psrc_cm to i8*
  call void @llvm.lifetime.start(i64 8, i8* %37) #1
  store i8* null, i8** %psrc_cm, align 8, !tbaa !1
  %38 = bitcast i8** %psrc_cm_start to i8*
  call void @llvm.lifetime.start(i64 8, i8* %38) #1
  store i8* null, i8** %psrc_cm_start, align 8, !tbaa !1
  %39 = bitcast i8** %bufend to i8*
  call void @llvm.lifetime.start(i64 8, i8* %39) #1
  store i8* null, i8** %bufend, align 8, !tbaa !1
  %40 = bitcast i8** %curr_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %40) #1
  %41 = bitcast i32* %psrc_planestride to i8*
  call void @llvm.lifetime.start(i64 4, i8* %41) #1
  %42 = load i32, i32* %w.addr, align 4, !tbaa !5
  %43 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %spp = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %43, i32 0, i32 14
  %44 = load i8, i8* %spp, align 1, !tbaa !30
  %conv = zext i8 %44 to i32
  %div = udiv i32 %42, %conv
  store i32 %div, i32* %psrc_planestride, align 4, !tbaa !5
  %45 = bitcast i16* %conc to i8*
  call void @llvm.lifetime.start(i64 2, i8* %45) #1
  %46 = bitcast i32* %num_des_comp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %46) #1
  %47 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %dev2 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %47, i32 0, i32 2
  %48 = load %struct.gx_device_s*, %struct.gx_device_s** %dev2, align 8, !tbaa !35
  %color_info3 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %48, i32 0, i32 11
  %num_components4 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info3, i32 0, i32 1
  %49 = load i32, i32* %num_components4, align 4, !tbaa !82
  store i32 %49, i32* %num_des_comp, align 4, !tbaa !5
  %50 = load i32, i32* %h.addr, align 4, !tbaa !5
  %cmp = icmp ne i32 %50, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %51 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %52 = load i8*, i8** %psrc, align 8, !tbaa !1
  %53 = load i32, i32* %w.addr, align 4, !tbaa !5
  %54 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call i32 @image_color_icc_prep(%struct.gx_image_enum_s* %51, i8* %52, i32 %53, %struct.gx_device_s* %54, i32* %spp_cm, i8** %psrc_cm, i8** %psrc_cm_start, i8** %bufend, i32 1) #8
  store i32 %call, i32* %code, align 4, !tbaa !5
  %55 = load i32, i32* %code, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %55, 0
  br i1 %cmp6, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then
  %56 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %56, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %57 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %icc_setup = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %57, i32 0, i32 80
  %has_transfer = getelementptr inbounds %struct.gx_image_icc_setup_s, %struct.gx_image_icc_setup_s* %icc_setup, i32 0, i32 3
  %58 = load i32, i32* %has_transfer, align 4, !tbaa !87
  %tobool = icmp ne i32 %58, 0
  br i1 %tobool, label %if.then.9, label %if.end.33

if.then.9:                                        ; preds = %if.end
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.30, %if.then.9
  %59 = load i32, i32* %k, align 4, !tbaa !5
  %60 = load i32, i32* %num_des_comp, align 4, !tbaa !5
  %cmp10 = icmp slt i32 %59, %60
  br i1 %cmp10, label %for.body, label %for.end.32

for.body:                                         ; preds = %for.cond
  %61 = load i8*, i8** %psrc_cm, align 8, !tbaa !1
  %62 = load i32, i32* %psrc_planestride, align 4, !tbaa !5
  %63 = load i32, i32* %k, align 4, !tbaa !5
  %mul = mul nsw i32 %62, %63
  %idx.ext12 = sext i32 %mul to i64
  %add.ptr13 = getelementptr inbounds i8, i8* %61, i64 %idx.ext12
  store i8* %add.ptr13, i8** %curr_ptr, align 8, !tbaa !1
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc, %for.body
  %64 = load i32, i32* %j, align 4, !tbaa !5
  %65 = load i32, i32* %psrc_planestride, align 4, !tbaa !5
  %cmp15 = icmp slt i32 %64, %65
  br i1 %cmp15, label %for.body.17, label %for.end

for.body.17:                                      ; preds = %for.cond.14
  %66 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %66, i64 0
  %67 = load i8, i8* %arrayidx, align 1, !tbaa !31
  %conv18 = zext i8 %67 to i32
  %shl = shl i32 %conv18, 8
  %68 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds i8, i8* %68, i64 0
  %69 = load i8, i8* %arrayidx19, align 1, !tbaa !31
  %conv20 = zext i8 %69 to i32
  %shr = ashr i32 %conv20, 0
  %add = add nsw i32 %shl, %shr
  %conv21 = trunc i32 %add to i16
  store i16 %conv21, i16* %conc, align 2, !tbaa !99
  %70 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %pis = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %70, i32 0, i32 30
  %71 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !36
  %72 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %dev22 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %72, i32 0, i32 2
  %73 = load %struct.gx_device_s*, %struct.gx_device_s** %dev22, align 8, !tbaa !35
  %74 = load i32, i32* %k, align 4, !tbaa !5
  call void @cmap_transfer_plane(i16* %conc, %struct.gs_imager_state_s* %71, %struct.gx_device_s* %73, i32 %74) #8
  %75 = load i16, i16* %conc, align 2, !tbaa !99
  %conv23 = zext i16 %75 to i32
  %mul24 = mul i32 %conv23, 65281
  %add25 = add i32 %mul24, 8388608
  %shr26 = lshr i32 %add25, 24
  %conv27 = trunc i32 %shr26 to i16
  %conv28 = trunc i16 %conv27 to i8
  %76 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %arrayidx29 = getelementptr inbounds i8, i8* %76, i64 0
  store i8 %conv28, i8* %arrayidx29, align 1, !tbaa !31
  br label %for.inc

for.inc:                                          ; preds = %for.body.17
  %77 = load i32, i32* %j, align 4, !tbaa !5
  %inc = add nsw i32 %77, 1
  store i32 %inc, i32* %j, align 4, !tbaa !5
  %78 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %incdec.ptr, i8** %curr_ptr, align 8, !tbaa !1
  br label %for.cond.14

for.end:                                          ; preds = %for.cond.14
  br label %for.inc.30

for.inc.30:                                       ; preds = %for.end
  %79 = load i32, i32* %k, align 4, !tbaa !5
  %inc31 = add nsw i32 %79, 1
  store i32 %inc31, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.end.32:                                       ; preds = %for.cond
  br label %if.end.33

if.end.33:                                        ; preds = %for.end.32, %if.end
  br label %if.end.45

if.else:                                          ; preds = %entry
  %80 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %ht_landscape = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %80, i32 0, i32 79
  %count = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape, i32 0, i32 0
  %81 = load i32, i32* %count, align 4, !tbaa !131
  %cmp34 = icmp eq i32 %81, 0
  br i1 %cmp34, label %if.then.38, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %82 = load i32, i32* %posture, align 4, !tbaa !31
  %cmp36 = icmp eq i32 %82, 0
  br i1 %cmp36, label %if.then.38, label %if.else.39

if.then.38:                                       ; preds = %lor.lhs.false, %if.else
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.39:                                       ; preds = %lor.lhs.false
  %83 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %ht_landscape40 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %83, i32 0, i32 79
  %count41 = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape40, i32 0, i32 0
  %84 = load i32, i32* %count41, align 4, !tbaa !131
  store i32 %84, i32* %offset_bits, align 4, !tbaa !5
  %85 = load i32, i32* %offset_bits, align 4, !tbaa !5
  %86 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %ht_offset_bits42 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %86, i32 0, i32 74
  store i32 %85, i32* %ht_offset_bits42, align 4, !tbaa !130
  %87 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %ht_landscape43 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %87, i32 0, i32 79
  %offset_set = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape43, i32 0, i32 6
  store i32 1, i32* %offset_set, align 4, !tbaa !132
  store i32 1, i32* %flush_buff, align 4, !tbaa !5
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.39
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.end.33
  %88 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %rect = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %88, i32 0, i32 22
  %w46 = getelementptr inbounds %struct.r_, %struct.r_* %rect, i32 0, i32 2
  %89 = load i32, i32* %w46, align 4, !tbaa !133
  store i32 %89, i32* %src_size, align 4, !tbaa !5
  %90 = load i32, i32* %posture, align 4, !tbaa !31
  switch i32 %90, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.112
  ]

sw.bb:                                            ; preds = %if.end.45
  %91 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %hci = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %91, i32 0, i32 61
  %92 = load i32, i32* %hci, align 4, !tbaa !109
  store i32 %92, i32* %vdi, align 4, !tbaa !5
  %93 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %line_size = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %93, i32 0, i32 35
  %94 = load i32, i32* %line_size, align 4, !tbaa !134
  store i32 %94, i32* %contone_stride, align 4, !tbaa !5
  %95 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %thresh_buffer = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %95, i32 0, i32 76
  %96 = load i8*, i8** %thresh_buffer, align 8, !tbaa !135
  %97 = ptrtoint i8* %96 to i64
  %98 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %ht_offset_bits47 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %98, i32 0, i32 74
  %99 = load i32, i32* %ht_offset_bits47, align 4, !tbaa !130
  %conv48 = sext i32 %99 to i64
  %add49 = add nsw i64 %97, %conv48
  %sub = sub nsw i64 0, %add49
  %and = and i64 %sub, 15
  %conv50 = trunc i64 %and to i32
  store i32 %conv50, i32* %offset_threshold, align 4, !tbaa !5
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.51

for.cond.51:                                      ; preds = %for.inc.65, %sw.bb
  %100 = load i32, i32* %k, align 4, !tbaa !5
  %101 = load i32, i32* %spp_out, align 4, !tbaa !5
  %cmp52 = icmp slt i32 %100, %101
  br i1 %cmp52, label %for.body.54, label %for.end.67

for.body.54:                                      ; preds = %for.cond.51
  %102 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %line = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %102, i32 0, i32 34
  %103 = load i8*, i8** %line, align 8, !tbaa !136
  %104 = ptrtoint i8* %103 to i64
  %105 = load i32, i32* %contone_stride, align 4, !tbaa !5
  %106 = load i32, i32* %k, align 4, !tbaa !5
  %mul55 = mul nsw i32 %105, %106
  %conv56 = sext i32 %mul55 to i64
  %add57 = add nsw i64 %104, %conv56
  %107 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %ht_offset_bits58 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %107, i32 0, i32 74
  %108 = load i32, i32* %ht_offset_bits58, align 4, !tbaa !130
  %conv59 = sext i32 %108 to i64
  %add60 = add nsw i64 %add57, %conv59
  %sub61 = sub nsw i64 0, %add60
  %and62 = and i64 %sub61, 15
  %conv63 = trunc i64 %and62 to i32
  %109 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom = sext i32 %109 to i64
  %arrayidx64 = getelementptr inbounds [64 x i32], [64 x i32]* %offset_contone, i32 0, i64 %idxprom
  store i32 %conv63, i32* %arrayidx64, align 4, !tbaa !5
  br label %for.inc.65

for.inc.65:                                       ; preds = %for.body.54
  %110 = load i32, i32* %k, align 4, !tbaa !5
  %inc66 = add nsw i32 %110, 1
  store i32 %inc66, i32* %k, align 4, !tbaa !5
  br label %for.cond.51

for.end.67:                                       ; preds = %for.cond.51
  %111 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %dda = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %111, i32 0, i32 55
  %pixel0 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda, i32 0, i32 2
  %x = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pixel0, i32 0, i32 0
  %state = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x, i32 0, i32 0
  %Q = getelementptr inbounds %struct._a, %struct._a* %state, i32 0, i32 0
  %112 = load i32, i32* %Q, align 4, !tbaa !137
  store i32 %112, i32* %xrun, align 4, !tbaa !5
  %113 = load i32, i32* %xrun, align 4, !tbaa !5
  %114 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %adjust = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %114, i32 0, i32 45
  %115 = load i32, i32* %adjust, align 4, !tbaa !138
  %sub68 = sub nsw i32 %113, %115
  %conv69 = sext i32 %sub68 to i64
  %add70 = add nsw i64 %conv69, 127
  %conv71 = trunc i64 %add70 to i32
  store i32 %conv71, i32* %xrun, align 4, !tbaa !5
  %116 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %x_extent = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %116, i32 0, i32 26
  %x72 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %x_extent, i32 0, i32 0
  %117 = load i32, i32* %x72, align 4, !tbaa !139
  %cmp73 = icmp slt i32 %117, 0
  br i1 %cmp73, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end.67
  %118 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %x_extent75 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %118, i32 0, i32 26
  %x76 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %x_extent75, i32 0, i32 0
  %119 = load i32, i32* %x76, align 4, !tbaa !139
  %sub77 = sub nsw i32 0, %119
  br label %cond.end

cond.false:                                       ; preds = %for.end.67
  %120 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %x_extent78 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %120, i32 0, i32 26
  %x79 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %x_extent78, i32 0, i32 0
  %121 = load i32, i32* %x79, align 4, !tbaa !139
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub77, %cond.true ], [ %121, %cond.false ]
  %add80 = add nsw i32 %cond, 128
  %shr81 = ashr i32 %add80, 8
  store i32 %shr81, i32* %dest_width, align 4, !tbaa !5
  %122 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %x_extent82 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %122, i32 0, i32 26
  %x83 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %x_extent82, i32 0, i32 0
  %123 = load i32, i32* %x83, align 4, !tbaa !139
  %cmp84 = icmp slt i32 %123, 0
  br i1 %cmp84, label %if.then.86, label %if.end.90

if.then.86:                                       ; preds = %cond.end
  %124 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %x_extent87 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %124, i32 0, i32 26
  %x88 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %x_extent87, i32 0, i32 0
  %125 = load i32, i32* %x88, align 4, !tbaa !139
  %126 = load i32, i32* %xrun, align 4, !tbaa !5
  %add89 = add nsw i32 %126, %125
  store i32 %add89, i32* %xrun, align 4, !tbaa !5
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.86, %cond.end
  %127 = load i32, i32* %dest_width, align 4, !tbaa !5
  store i32 %127, i32* %data_length, align 4, !tbaa !5
  %128 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %y_extent = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %128, i32 0, i32 27
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %y_extent, i32 0, i32 1
  %129 = load i32, i32* %y, align 4, !tbaa !140
  %cmp91 = icmp slt i32 %129, 0
  br i1 %cmp91, label %cond.true.93, label %cond.false.97

cond.true.93:                                     ; preds = %if.end.90
  %130 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %y_extent94 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %130, i32 0, i32 27
  %y95 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %y_extent94, i32 0, i32 1
  %131 = load i32, i32* %y95, align 4, !tbaa !140
  %sub96 = sub nsw i32 0, %131
  br label %cond.end.100

cond.false.97:                                    ; preds = %if.end.90
  %132 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %y_extent98 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %132, i32 0, i32 27
  %y99 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %y_extent98, i32 0, i32 1
  %133 = load i32, i32* %y99, align 4, !tbaa !140
  br label %cond.end.100

cond.end.100:                                     ; preds = %cond.false.97, %cond.true.93
  %cond101 = phi i32 [ %sub96, %cond.true.93 ], [ %133, %cond.false.97 ]
  %add102 = add nsw i32 %cond101, 128
  %shr103 = ashr i32 %add102, 8
  store i32 %shr103, i32* %dest_height, align 4, !tbaa !5
  %134 = load i32, i32* %src_size, align 4, !tbaa !5
  %conv104 = sitofp i32 %134 to float
  %135 = load i32, i32* %dest_width, align 4, !tbaa !5
  %conv105 = sitofp i32 %135 to float
  %div106 = fdiv float %conv104, %conv105
  %mul107 = fmul float %div106, 2.560000e+02
  %conv108 = fpext float %mul107 to double
  %add109 = fadd double %conv108, 5.000000e-01
  %call110 = call double @floor(double %add109) #10
  %conv111 = fptosi double %call110 to i32
  store i32 %conv111, i32* %scale_factor, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.112:                                        ; preds = %if.end.45
  br label %sw.default

sw.default:                                       ; preds = %if.end.45, %sw.bb.112
  %136 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %wci = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %136, i32 0, i32 63
  %137 = load i32, i32* %wci, align 4, !tbaa !111
  store i32 %137, i32* %vdi, align 4, !tbaa !5
  %138 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %line_size113 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %138, i32 0, i32 35
  %139 = load i32, i32* %line_size113, align 4, !tbaa !134
  store i32 %139, i32* %contone_stride, align 4, !tbaa !5
  %140 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %thresh_buffer114 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %140, i32 0, i32 76
  %141 = load i8*, i8** %thresh_buffer114, align 8, !tbaa !135
  %142 = ptrtoint i8* %141 to i64
  %sub115 = sub nsw i64 0, %142
  %and116 = and i64 %sub115, 15
  %conv117 = trunc i64 %and116 to i32
  store i32 %conv117, i32* %offset_threshold, align 4, !tbaa !5
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.118

for.cond.118:                                     ; preds = %for.inc.131, %sw.default
  %143 = load i32, i32* %k, align 4, !tbaa !5
  %144 = load i32, i32* %spp_out, align 4, !tbaa !5
  %cmp119 = icmp slt i32 %143, %144
  br i1 %cmp119, label %for.body.121, label %for.end.133

for.body.121:                                     ; preds = %for.cond.118
  %145 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %line122 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %145, i32 0, i32 34
  %146 = load i8*, i8** %line122, align 8, !tbaa !136
  %147 = ptrtoint i8* %146 to i64
  %148 = load i32, i32* %contone_stride, align 4, !tbaa !5
  %149 = load i32, i32* %k, align 4, !tbaa !5
  %mul123 = mul nsw i32 %148, %149
  %conv124 = sext i32 %mul123 to i64
  %add125 = add nsw i64 %147, %conv124
  %sub126 = sub nsw i64 0, %add125
  %and127 = and i64 %sub126, 15
  %conv128 = trunc i64 %and127 to i32
  %150 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom129 = sext i32 %150 to i64
  %arrayidx130 = getelementptr inbounds [64 x i32], [64 x i32]* %offset_contone, i32 0, i64 %idxprom129
  store i32 %conv128, i32* %arrayidx130, align 4, !tbaa !5
  br label %for.inc.131

for.inc.131:                                      ; preds = %for.body.121
  %151 = load i32, i32* %k, align 4, !tbaa !5
  %inc132 = add nsw i32 %151, 1
  store i32 %inc132, i32* %k, align 4, !tbaa !5
  br label %for.cond.118

for.end.133:                                      ; preds = %for.cond.118
  %152 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %y_extent134 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %152, i32 0, i32 27
  %x135 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %y_extent134, i32 0, i32 0
  %153 = load i32, i32* %x135, align 4, !tbaa !141
  %cmp136 = icmp slt i32 %153, 0
  br i1 %cmp136, label %cond.true.138, label %cond.false.142

cond.true.138:                                    ; preds = %for.end.133
  %154 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %y_extent139 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %154, i32 0, i32 27
  %x140 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %y_extent139, i32 0, i32 0
  %155 = load i32, i32* %x140, align 4, !tbaa !141
  %sub141 = sub nsw i32 0, %155
  br label %cond.end.145

cond.false.142:                                   ; preds = %for.end.133
  %156 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %y_extent143 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %156, i32 0, i32 27
  %x144 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %y_extent143, i32 0, i32 0
  %157 = load i32, i32* %x144, align 4, !tbaa !141
  br label %cond.end.145

cond.end.145:                                     ; preds = %cond.false.142, %cond.true.138
  %cond146 = phi i32 [ %sub141, %cond.true.138 ], [ %157, %cond.false.142 ]
  %add147 = add nsw i32 %cond146, 128
  %shr148 = ashr i32 %add147, 8
  store i32 %shr148, i32* %dest_width, align 4, !tbaa !5
  %158 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %x_extent149 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %158, i32 0, i32 26
  %y150 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %x_extent149, i32 0, i32 1
  %159 = load i32, i32* %y150, align 4, !tbaa !142
  %cmp151 = icmp slt i32 %159, 0
  br i1 %cmp151, label %cond.true.153, label %cond.false.157

cond.true.153:                                    ; preds = %cond.end.145
  %160 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %x_extent154 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %160, i32 0, i32 26
  %y155 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %x_extent154, i32 0, i32 1
  %161 = load i32, i32* %y155, align 4, !tbaa !142
  %sub156 = sub nsw i32 0, %161
  br label %cond.end.160

cond.false.157:                                   ; preds = %cond.end.145
  %162 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %x_extent158 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %162, i32 0, i32 26
  %y159 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %x_extent158, i32 0, i32 1
  %163 = load i32, i32* %y159, align 4, !tbaa !142
  br label %cond.end.160

cond.end.160:                                     ; preds = %cond.false.157, %cond.true.153
  %cond161 = phi i32 [ %sub156, %cond.true.153 ], [ %163, %cond.false.157 ]
  %add162 = add nsw i32 %cond161, 128
  %shr163 = ashr i32 %add162, 8
  store i32 %shr163, i32* %dest_height, align 4, !tbaa !5
  %164 = load i32, i32* %dest_height, align 4, !tbaa !5
  store i32 %164, i32* %data_length, align 4, !tbaa !5
  %165 = load i32, i32* %src_size, align 4, !tbaa !5
  %conv164 = sitofp i32 %165 to float
  %166 = load i32, i32* %dest_height, align 4, !tbaa !5
  %conv165 = sitofp i32 %166 to float
  %div166 = fdiv float %conv164, %conv165
  %mul167 = fmul float %div166, 2.560000e+02
  %conv168 = fpext float %mul167 to double
  %add169 = fadd double %conv168, 5.000000e-01
  %call170 = call double @floor(double %add169) #10
  %conv171 = fptosi double %call170 to i32
  store i32 %conv171, i32* %scale_factor, align 4, !tbaa !5
  %167 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %ht_landscape172 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %167, i32 0, i32 79
  %count173 = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape172, i32 0, i32 0
  %168 = load i32, i32* %count173, align 4, !tbaa !131
  %cmp174 = icmp eq i32 %168, 0
  br i1 %cmp174, label %if.then.176, label %if.end.219

if.then.176:                                      ; preds = %cond.end.160
  %169 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %ht_landscape177 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %169, i32 0, i32 79
  %offset_set178 = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape177, i32 0, i32 6
  store i32 1, i32* %offset_set178, align 4, !tbaa !132
  %170 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %ht_landscape179 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %170, i32 0, i32 79
  %index = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape179, i32 0, i32 4
  %171 = load i32, i32* %index, align 4, !tbaa !143
  %cmp180 = icmp slt i32 %171, 0
  br i1 %cmp180, label %if.then.182, label %if.else.194

if.then.182:                                      ; preds = %if.then.176
  %172 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %xci = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %172, i32 0, i32 62
  %173 = load i32, i32* %xci, align 4, !tbaa !110
  %174 = load i32, i32* %vdi, align 4, !tbaa !5
  %add183 = add nsw i32 %173, %174
  %sub184 = sub nsw i32 %add183, 1
  %175 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %ht_landscape185 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %175, i32 0, i32 79
  %xstart = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape185, i32 0, i32 2
  store i32 %sub184, i32* %xstart, align 4, !tbaa !144
  %176 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %ht_landscape186 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %176, i32 0, i32 79
  %xstart187 = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape186, i32 0, i32 2
  %177 = load i32, i32* %xstart187, align 4, !tbaa !144
  %rem = srem i32 %177, 16
  %add188 = add nsw i32 %rem, 1
  store i32 %add188, i32* %offset_bits, align 4, !tbaa !5
  %178 = load i32, i32* %offset_bits, align 4, !tbaa !5
  %cmp189 = icmp sle i32 %178, 0
  br i1 %cmp189, label %if.then.191, label %if.end.193

if.then.191:                                      ; preds = %if.then.182
  %179 = load i32, i32* %offset_bits, align 4, !tbaa !5
  %add192 = add nsw i32 %179, 16
  store i32 %add192, i32* %offset_bits, align 4, !tbaa !5
  br label %if.end.193

if.end.193:                                       ; preds = %if.then.191, %if.then.182
  br label %if.end.206

if.else.194:                                      ; preds = %if.then.176
  %180 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %xci195 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %180, i32 0, i32 62
  %181 = load i32, i32* %xci195, align 4, !tbaa !110
  %182 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %ht_landscape196 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %182, i32 0, i32 79
  %xstart197 = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape196, i32 0, i32 2
  store i32 %181, i32* %xstart197, align 4, !tbaa !144
  %183 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %xci198 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %183, i32 0, i32 62
  %184 = load i32, i32* %xci198, align 4, !tbaa !110
  %rem199 = srem i32 %184, 16
  %sub200 = sub nsw i32 16, %rem199
  store i32 %sub200, i32* %offset_bits, align 4, !tbaa !5
  %185 = load i32, i32* %offset_bits, align 4, !tbaa !5
  %cmp201 = icmp sge i32 %185, 16
  br i1 %cmp201, label %if.then.203, label %if.end.205

if.then.203:                                      ; preds = %if.else.194
  %186 = load i32, i32* %offset_bits, align 4, !tbaa !5
  %sub204 = sub nsw i32 %186, 16
  store i32 %sub204, i32* %offset_bits, align 4, !tbaa !5
  br label %if.end.205

if.end.205:                                       ; preds = %if.then.203, %if.else.194
  br label %if.end.206

if.end.206:                                       ; preds = %if.end.205, %if.end.193
  %187 = load i32, i32* %offset_bits, align 4, !tbaa !5
  %cmp207 = icmp eq i32 %187, 0
  br i1 %cmp207, label %if.then.212, label %lor.lhs.false.209

lor.lhs.false.209:                                ; preds = %if.end.206
  %188 = load i32, i32* %offset_bits, align 4, !tbaa !5
  %cmp210 = icmp eq i32 %188, 16
  br i1 %cmp210, label %if.then.212, label %if.else.216

if.then.212:                                      ; preds = %lor.lhs.false.209, %if.end.206
  %189 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %ht_landscape213 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %189, i32 0, i32 79
  %offset_set214 = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape213, i32 0, i32 6
  store i32 0, i32* %offset_set214, align 4, !tbaa !132
  %190 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %ht_offset_bits215 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %190, i32 0, i32 74
  store i32 0, i32* %ht_offset_bits215, align 4, !tbaa !130
  br label %if.end.218

if.else.216:                                      ; preds = %lor.lhs.false.209
  %191 = load i32, i32* %offset_bits, align 4, !tbaa !5
  %192 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %ht_offset_bits217 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %192, i32 0, i32 74
  store i32 %191, i32* %ht_offset_bits217, align 4, !tbaa !130
  br label %if.end.218

if.end.218:                                       ; preds = %if.else.216, %if.then.212
  br label %if.end.219

if.end.219:                                       ; preds = %if.end.218, %cond.end.160
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.219, %cond.end.100
  %193 = load i32, i32* %flush_buff, align 4, !tbaa !5
  %tobool220 = icmp ne i32 %193, 0
  br i1 %tobool220, label %if.then.221, label %if.end.222

if.then.221:                                      ; preds = %sw.epilog
  br label %flush

if.end.222:                                       ; preds = %sw.epilog
  br label %do.body

do.body:                                          ; preds = %if.end.222
  br label %do.body.223

do.body.223:                                      ; preds = %do.body
  %194 = load i32, i32* %data_length, align 4, !tbaa !5
  %cmp224 = icmp eq i32 %194, 0
  br i1 %cmp224, label %if.then.226, label %if.else.228

if.then.226:                                      ; preds = %do.body.223
  %step = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 1
  %dQ = getelementptr inbounds %struct.ie_, %struct.ie_* %step, i32 0, i32 0
  store i32 0, i32* %dQ, align 4, !tbaa !145
  %step227 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 1
  %dR = getelementptr inbounds %struct.ie_, %struct.ie_* %step227, i32 0, i32 1
  store i32 0, i32* %dR, align 4, !tbaa !149
  br label %if.end.260

if.else.228:                                      ; preds = %do.body.223
  %195 = load i32, i32* %src_size, align 4, !tbaa !5
  %cmp229 = icmp slt i32 %195, 0
  br i1 %cmp229, label %if.then.231, label %if.else.252

if.then.231:                                      ; preds = %if.else.228
  %196 = load i32, i32* %src_size, align 4, !tbaa !5
  %sub232 = sub nsw i32 0, %196
  %197 = load i32, i32* %data_length, align 4, !tbaa !5
  %div233 = udiv i32 %sub232, %197
  %sub234 = sub nsw i32 0, %div233
  %step235 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 1
  %dQ236 = getelementptr inbounds %struct.ie_, %struct.ie_* %step235, i32 0, i32 0
  store i32 %sub234, i32* %dQ236, align 4, !tbaa !145
  %198 = load i32, i32* %src_size, align 4, !tbaa !5
  %sub237 = sub nsw i32 0, %198
  %199 = load i32, i32* %data_length, align 4, !tbaa !5
  %rem238 = srem i32 %sub237, %199
  %step239 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 1
  %dR240 = getelementptr inbounds %struct.ie_, %struct.ie_* %step239, i32 0, i32 1
  store i32 %rem238, i32* %dR240, align 4, !tbaa !149
  %cmp241 = icmp ne i32 %rem238, 0
  br i1 %cmp241, label %if.then.243, label %if.end.251

if.then.243:                                      ; preds = %if.then.231
  %step244 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 1
  %dQ245 = getelementptr inbounds %struct.ie_, %struct.ie_* %step244, i32 0, i32 0
  %200 = load i32, i32* %dQ245, align 4, !tbaa !145
  %dec = add nsw i32 %200, -1
  store i32 %dec, i32* %dQ245, align 4, !tbaa !145
  %201 = load i32, i32* %data_length, align 4, !tbaa !5
  %step246 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 1
  %dR247 = getelementptr inbounds %struct.ie_, %struct.ie_* %step246, i32 0, i32 1
  %202 = load i32, i32* %dR247, align 4, !tbaa !149
  %sub248 = sub i32 %201, %202
  %step249 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 1
  %dR250 = getelementptr inbounds %struct.ie_, %struct.ie_* %step249, i32 0, i32 1
  store i32 %sub248, i32* %dR250, align 4, !tbaa !149
  br label %if.end.251

if.end.251:                                       ; preds = %if.then.243, %if.then.231
  br label %if.end.259

if.else.252:                                      ; preds = %if.else.228
  %203 = load i32, i32* %src_size, align 4, !tbaa !5
  %204 = load i32, i32* %data_length, align 4, !tbaa !5
  %div253 = sdiv i32 %203, %204
  %step254 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 1
  %dQ255 = getelementptr inbounds %struct.ie_, %struct.ie_* %step254, i32 0, i32 0
  store i32 %div253, i32* %dQ255, align 4, !tbaa !145
  %205 = load i32, i32* %src_size, align 4, !tbaa !5
  %206 = load i32, i32* %data_length, align 4, !tbaa !5
  %rem256 = srem i32 %205, %206
  %step257 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 1
  %dR258 = getelementptr inbounds %struct.ie_, %struct.ie_* %step257, i32 0, i32 1
  store i32 %rem256, i32* %dR258, align 4, !tbaa !149
  br label %if.end.259

if.end.259:                                       ; preds = %if.else.252, %if.end.251
  br label %if.end.260

if.end.260:                                       ; preds = %if.end.259, %if.then.226
  %207 = load i32, i32* %data_length, align 4, !tbaa !5
  %step261 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 1
  %N = getelementptr inbounds %struct.ie_, %struct.ie_* %step261, i32 0, i32 2
  store i32 %207, i32* %N, align 4, !tbaa !150
  br label %do.cond

do.cond:                                          ; preds = %if.end.260
  br label %do.end

do.end:                                           ; preds = %do.cond
  %step262 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 1
  %dQ263 = getelementptr inbounds %struct.ie_, %struct.ie_* %step262, i32 0, i32 0
  %208 = load i32, i32* %dQ263, align 4, !tbaa !145
  %shr264 = ashr i32 %208, 1
  %add265 = add nsw i32 0, %shr264
  %state266 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %Q267 = getelementptr inbounds %struct.ia_, %struct.ia_* %state266, i32 0, i32 0
  store i32 %add265, i32* %Q267, align 4, !tbaa !151
  %209 = load i32, i32* %data_length, align 4, !tbaa !5
  %sub268 = sub nsw i32 %209, 1
  %step269 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 1
  %dR270 = getelementptr inbounds %struct.ie_, %struct.ie_* %step269, i32 0, i32 1
  %210 = load i32, i32* %dR270, align 4, !tbaa !149
  %step271 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 1
  %dQ272 = getelementptr inbounds %struct.ie_, %struct.ie_* %step271, i32 0, i32 0
  %211 = load i32, i32* %dQ272, align 4, !tbaa !145
  %and273 = and i32 %211, 1
  %tobool274 = icmp ne i32 %and273, 0
  br i1 %tobool274, label %cond.true.275, label %cond.false.278

cond.true.275:                                    ; preds = %do.end
  %step276 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 1
  %N277 = getelementptr inbounds %struct.ie_, %struct.ie_* %step276, i32 0, i32 2
  %212 = load i32, i32* %N277, align 4, !tbaa !150
  br label %cond.end.279

cond.false.278:                                   ; preds = %do.end
  br label %cond.end.279

cond.end.279:                                     ; preds = %cond.false.278, %cond.true.275
  %cond280 = phi i32 [ %212, %cond.true.275 ], [ 0, %cond.false.278 ]
  %add281 = add i32 %210, %cond280
  %shr282 = lshr i32 %add281, 1
  %sub283 = sub i32 %sub268, %shr282
  %state284 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %R = getelementptr inbounds %struct.ia_, %struct.ia_* %state284, i32 0, i32 1
  store i32 %sub283, i32* %R, align 4, !tbaa !152
  %state285 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %R286 = getelementptr inbounds %struct.ia_, %struct.ia_* %state285, i32 0, i32 1
  %213 = load i32, i32* %R286, align 4, !tbaa !152
  %cmp287 = icmp slt i32 %213, 0
  br i1 %cmp287, label %if.then.289, label %if.end.298

if.then.289:                                      ; preds = %cond.end.279
  %state290 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %Q291 = getelementptr inbounds %struct.ia_, %struct.ia_* %state290, i32 0, i32 0
  %214 = load i32, i32* %Q291, align 4, !tbaa !151
  %inc292 = add nsw i32 %214, 1
  store i32 %inc292, i32* %Q291, align 4, !tbaa !151
  %step293 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 1
  %N294 = getelementptr inbounds %struct.ie_, %struct.ie_* %step293, i32 0, i32 2
  %215 = load i32, i32* %N294, align 4, !tbaa !150
  %state295 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %R296 = getelementptr inbounds %struct.ia_, %struct.ia_* %state295, i32 0, i32 1
  %216 = load i32, i32* %R296, align 4, !tbaa !152
  %add297 = add i32 %216, %215
  store i32 %add297, i32* %R296, align 4, !tbaa !152
  br label %if.end.298

if.end.298:                                       ; preds = %if.then.289, %cond.end.279
  br label %do.cond.299

do.cond.299:                                      ; preds = %if.end.298
  br label %do.end.300

do.end.300:                                       ; preds = %do.cond.299
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.301

for.cond.301:                                     ; preds = %for.inc.336, %do.end.300
  %217 = load i32, i32* %k, align 4, !tbaa !5
  %218 = load i32, i32* %spp_out, align 4, !tbaa !5
  %cmp302 = icmp slt i32 %217, %218
  br i1 %cmp302, label %for.body.304, label %for.end.338

for.body.304:                                     ; preds = %for.cond.301
  %219 = load i32, i32* %posture, align 4, !tbaa !31
  %cmp305 = icmp eq i32 %219, 0
  br i1 %cmp305, label %if.then.307, label %if.else.318

if.then.307:                                      ; preds = %for.body.304
  %220 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %line308 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %220, i32 0, i32 34
  %221 = load i8*, i8** %line308, align 8, !tbaa !136
  %222 = load i32, i32* %contone_stride, align 4, !tbaa !5
  %223 = load i32, i32* %k, align 4, !tbaa !5
  %mul309 = mul nsw i32 %222, %223
  %idx.ext310 = sext i32 %mul309 to i64
  %add.ptr311 = getelementptr inbounds i8, i8* %221, i64 %idx.ext310
  %224 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom312 = sext i32 %224 to i64
  %arrayidx313 = getelementptr inbounds [64 x i32], [64 x i32]* %offset_contone, i32 0, i64 %idxprom312
  %225 = load i32, i32* %arrayidx313, align 4, !tbaa !5
  %idx.ext314 = sext i32 %225 to i64
  %add.ptr315 = getelementptr inbounds i8, i8* %add.ptr311, i64 %idx.ext314
  %226 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom316 = sext i32 %226 to i64
  %arrayidx317 = getelementptr inbounds [64 x i8*], [64 x i8*]* %devc_contone, i32 0, i64 %idxprom316
  store i8* %add.ptr315, i8** %arrayidx317, align 8, !tbaa !1
  br label %if.end.330

if.else.318:                                      ; preds = %for.body.304
  %227 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %line319 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %227, i32 0, i32 34
  %228 = load i8*, i8** %line319, align 8, !tbaa !136
  %229 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom320 = sext i32 %229 to i64
  %arrayidx321 = getelementptr inbounds [64 x i32], [64 x i32]* %offset_contone, i32 0, i64 %idxprom320
  %230 = load i32, i32* %arrayidx321, align 4, !tbaa !5
  %idx.ext322 = sext i32 %230 to i64
  %add.ptr323 = getelementptr inbounds i8, i8* %228, i64 %idx.ext322
  %231 = load i32, i32* %k, align 4, !tbaa !5
  %mul324 = mul nsw i32 64, %231
  %232 = load i32, i32* %contone_stride, align 4, !tbaa !5
  %mul325 = mul nsw i32 %mul324, %232
  %idx.ext326 = sext i32 %mul325 to i64
  %add.ptr327 = getelementptr inbounds i8, i8* %add.ptr323, i64 %idx.ext326
  %233 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom328 = sext i32 %233 to i64
  %arrayidx329 = getelementptr inbounds [64 x i8*], [64 x i8*]* %devc_contone, i32 0, i64 %idxprom328
  store i8* %add.ptr327, i8** %arrayidx329, align 8, !tbaa !1
  br label %if.end.330

if.end.330:                                       ; preds = %if.else.318, %if.then.307
  %234 = load i8*, i8** %psrc_cm, align 8, !tbaa !1
  %235 = load i32, i32* %psrc_planestride, align 4, !tbaa !5
  %236 = load i32, i32* %k, align 4, !tbaa !5
  %mul331 = mul nsw i32 %235, %236
  %idx.ext332 = sext i32 %mul331 to i64
  %add.ptr333 = getelementptr inbounds i8, i8* %234, i64 %idx.ext332
  %237 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom334 = sext i32 %237 to i64
  %arrayidx335 = getelementptr inbounds [64 x i8*], [64 x i8*]* %psrc_plane, i32 0, i64 %idxprom334
  store i8* %add.ptr333, i8** %arrayidx335, align 8, !tbaa !1
  br label %for.inc.336

for.inc.336:                                      ; preds = %if.end.330
  %238 = load i32, i32* %k, align 4, !tbaa !5
  %inc337 = add nsw i32 %238, 1
  store i32 %inc337, i32* %k, align 4, !tbaa !5
  br label %for.cond.301

for.end.338:                                      ; preds = %for.cond.301
  %239 = load i32, i32* %spp_out, align 4, !tbaa !5
  switch i32 %239, label %sw.default.1026 [
    i32 1, label %sw.bb.339
    i32 4, label %sw.bb.603
  ]

sw.bb.339:                                        ; preds = %for.end.338
  %arrayidx340 = getelementptr inbounds [64 x i8*], [64 x i8*]* %devc_contone, i32 0, i64 0
  %240 = load i8*, i8** %arrayidx340, align 8, !tbaa !1
  store i8* %240, i8** %devc_contone_gray, align 8, !tbaa !1
  %241 = load i32, i32* %posture, align 4, !tbaa !31
  switch i32 %241, label %sw.default.601 [
    i32 0, label %sw.bb.341
    i32 1, label %sw.bb.451
  ]

sw.bb.341:                                        ; preds = %sw.bb.339
  %242 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %dst_width = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %242, i32 0, i32 25
  %243 = load i32, i32* %dst_width, align 4, !tbaa !153
  %cmp342 = icmp sgt i32 %243, 0
  br i1 %cmp342, label %if.then.344, label %if.else.407

if.then.344:                                      ; preds = %sw.bb.341
  %244 = load i32, i32* %src_size, align 4, !tbaa !5
  %245 = load i32, i32* %dest_width, align 4, !tbaa !5
  %cmp345 = icmp eq i32 %244, %245
  br i1 %cmp345, label %if.then.347, label %if.else.350

if.then.347:                                      ; preds = %if.then.344
  %246 = load i8*, i8** %devc_contone_gray, align 8, !tbaa !1
  %247 = load i8*, i8** %psrc_cm, align 8, !tbaa !1
  %248 = load i32, i32* %data_length, align 4, !tbaa !5
  %conv348 = sext i32 %248 to i64
  %call349 = call i8* @memcpy(i8* %246, i8* %247, i64 %conv348) #7
  br label %if.end.406

if.else.350:                                      ; preds = %if.then.344
  %249 = load i32, i32* %src_size, align 4, !tbaa !5
  %mul351 = mul nsw i32 %249, 2
  %250 = load i32, i32* %dest_width, align 4, !tbaa !5
  %cmp352 = icmp eq i32 %mul351, %250
  br i1 %cmp352, label %if.then.354, label %if.else.365

if.then.354:                                      ; preds = %if.else.350
  %251 = load i8*, i8** %psrc_cm, align 8, !tbaa !1
  store i8* %251, i8** %psrc_temp, align 8, !tbaa !1
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.355

for.cond.355:                                     ; preds = %for.inc.360, %if.then.354
  %252 = load i32, i32* %k, align 4, !tbaa !5
  %253 = load i32, i32* %data_length, align 4, !tbaa !5
  %cmp356 = icmp slt i32 %252, %253
  br i1 %cmp356, label %for.body.358, label %for.end.364

for.body.358:                                     ; preds = %for.cond.355
  %254 = load i8*, i8** %psrc_temp, align 8, !tbaa !1
  %255 = load i8, i8* %254, align 1, !tbaa !31
  %256 = load i8*, i8** %devc_contone_gray, align 8, !tbaa !1
  %add.ptr359 = getelementptr inbounds i8, i8* %256, i64 1
  store i8 %255, i8* %add.ptr359, align 1, !tbaa !31
  %257 = load i8*, i8** %devc_contone_gray, align 8, !tbaa !1
  store i8 %255, i8* %257, align 1, !tbaa !31
  br label %for.inc.360

for.inc.360:                                      ; preds = %for.body.358
  %258 = load i32, i32* %k, align 4, !tbaa !5
  %add361 = add nsw i32 %258, 2
  store i32 %add361, i32* %k, align 4, !tbaa !5
  %259 = load i8*, i8** %devc_contone_gray, align 8, !tbaa !1
  %add.ptr362 = getelementptr inbounds i8, i8* %259, i64 2
  store i8* %add.ptr362, i8** %devc_contone_gray, align 8, !tbaa !1
  %260 = load i8*, i8** %psrc_temp, align 8, !tbaa !1
  %incdec.ptr363 = getelementptr inbounds i8, i8* %260, i32 1
  store i8* %incdec.ptr363, i8** %psrc_temp, align 8, !tbaa !1
  br label %for.cond.355

for.end.364:                                      ; preds = %for.cond.355
  br label %if.end.405

if.else.365:                                      ; preds = %if.else.350
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.366

for.cond.366:                                     ; preds = %for.inc.401, %if.else.365
  %261 = load i32, i32* %k, align 4, !tbaa !5
  %262 = load i32, i32* %data_length, align 4, !tbaa !5
  %cmp367 = icmp slt i32 %261, %262
  br i1 %cmp367, label %for.body.369, label %for.end.404

for.body.369:                                     ; preds = %for.cond.366
  %state370 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %Q371 = getelementptr inbounds %struct.ia_, %struct.ia_* %state370, i32 0, i32 0
  %263 = load i32, i32* %Q371, align 4, !tbaa !151
  %idxprom372 = sext i32 %263 to i64
  %264 = load i8*, i8** %psrc_cm, align 8, !tbaa !1
  %arrayidx373 = getelementptr inbounds i8, i8* %264, i64 %idxprom372
  %265 = load i8, i8* %arrayidx373, align 1, !tbaa !31
  %266 = load i8*, i8** %devc_contone_gray, align 8, !tbaa !1
  store i8 %265, i8* %266, align 1, !tbaa !31
  br label %do.body.374

do.body.374:                                      ; preds = %for.body.369
  %step375 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 1
  %dR376 = getelementptr inbounds %struct.ie_, %struct.ie_* %step375, i32 0, i32 1
  %267 = load i32, i32* %dR376, align 4, !tbaa !149
  %state377 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %R378 = getelementptr inbounds %struct.ia_, %struct.ia_* %state377, i32 0, i32 1
  %268 = load i32, i32* %R378, align 4, !tbaa !152
  %sub379 = sub i32 %268, %267
  store i32 %sub379, i32* %R378, align 4, !tbaa !152
  %state380 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %R381 = getelementptr inbounds %struct.ia_, %struct.ia_* %state380, i32 0, i32 1
  %269 = load i32, i32* %R381, align 4, !tbaa !152
  %cmp382 = icmp slt i32 %269, 0
  br i1 %cmp382, label %if.then.384, label %if.end.393

if.then.384:                                      ; preds = %do.body.374
  %state385 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %Q386 = getelementptr inbounds %struct.ia_, %struct.ia_* %state385, i32 0, i32 0
  %270 = load i32, i32* %Q386, align 4, !tbaa !151
  %inc387 = add nsw i32 %270, 1
  store i32 %inc387, i32* %Q386, align 4, !tbaa !151
  %step388 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 1
  %N389 = getelementptr inbounds %struct.ie_, %struct.ie_* %step388, i32 0, i32 2
  %271 = load i32, i32* %N389, align 4, !tbaa !150
  %state390 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %R391 = getelementptr inbounds %struct.ia_, %struct.ia_* %state390, i32 0, i32 1
  %272 = load i32, i32* %R391, align 4, !tbaa !152
  %add392 = add i32 %272, %271
  store i32 %add392, i32* %R391, align 4, !tbaa !152
  br label %if.end.393

if.end.393:                                       ; preds = %if.then.384, %do.body.374
  %step394 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 1
  %dQ395 = getelementptr inbounds %struct.ie_, %struct.ie_* %step394, i32 0, i32 0
  %273 = load i32, i32* %dQ395, align 4, !tbaa !145
  %state396 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %Q397 = getelementptr inbounds %struct.ia_, %struct.ia_* %state396, i32 0, i32 0
  %274 = load i32, i32* %Q397, align 4, !tbaa !151
  %add398 = add nsw i32 %274, %273
  store i32 %add398, i32* %Q397, align 4, !tbaa !151
  br label %do.cond.399

do.cond.399:                                      ; preds = %if.end.393
  br label %do.end.400

do.end.400:                                       ; preds = %do.cond.399
  br label %for.inc.401

for.inc.401:                                      ; preds = %do.end.400
  %275 = load i32, i32* %k, align 4, !tbaa !5
  %inc402 = add nsw i32 %275, 1
  store i32 %inc402, i32* %k, align 4, !tbaa !5
  %276 = load i8*, i8** %devc_contone_gray, align 8, !tbaa !1
  %incdec.ptr403 = getelementptr inbounds i8, i8* %276, i32 1
  store i8* %incdec.ptr403, i8** %devc_contone_gray, align 8, !tbaa !1
  br label %for.cond.366

for.end.404:                                      ; preds = %for.cond.366
  br label %if.end.405

if.end.405:                                       ; preds = %for.end.404, %for.end.364
  br label %if.end.406

if.end.406:                                       ; preds = %if.end.405, %if.then.347
  br label %if.end.450

if.else.407:                                      ; preds = %sw.bb.341
  %277 = load i32, i32* %data_length, align 4, !tbaa !5
  %sub408 = sub nsw i32 %277, 1
  %278 = load i8*, i8** %devc_contone_gray, align 8, !tbaa !1
  %idx.ext409 = sext i32 %sub408 to i64
  %add.ptr410 = getelementptr inbounds i8, i8* %278, i64 %idx.ext409
  store i8* %add.ptr410, i8** %devc_contone_gray, align 8, !tbaa !1
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.411

for.cond.411:                                     ; preds = %for.inc.446, %if.else.407
  %279 = load i32, i32* %k, align 4, !tbaa !5
  %280 = load i32, i32* %data_length, align 4, !tbaa !5
  %cmp412 = icmp slt i32 %279, %280
  br i1 %cmp412, label %for.body.414, label %for.end.449

for.body.414:                                     ; preds = %for.cond.411
  %state415 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %Q416 = getelementptr inbounds %struct.ia_, %struct.ia_* %state415, i32 0, i32 0
  %281 = load i32, i32* %Q416, align 4, !tbaa !151
  %idxprom417 = sext i32 %281 to i64
  %282 = load i8*, i8** %psrc_cm, align 8, !tbaa !1
  %arrayidx418 = getelementptr inbounds i8, i8* %282, i64 %idxprom417
  %283 = load i8, i8* %arrayidx418, align 1, !tbaa !31
  %284 = load i8*, i8** %devc_contone_gray, align 8, !tbaa !1
  store i8 %283, i8* %284, align 1, !tbaa !31
  br label %do.body.419

do.body.419:                                      ; preds = %for.body.414
  %step420 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 1
  %dR421 = getelementptr inbounds %struct.ie_, %struct.ie_* %step420, i32 0, i32 1
  %285 = load i32, i32* %dR421, align 4, !tbaa !149
  %state422 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %R423 = getelementptr inbounds %struct.ia_, %struct.ia_* %state422, i32 0, i32 1
  %286 = load i32, i32* %R423, align 4, !tbaa !152
  %sub424 = sub i32 %286, %285
  store i32 %sub424, i32* %R423, align 4, !tbaa !152
  %state425 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %R426 = getelementptr inbounds %struct.ia_, %struct.ia_* %state425, i32 0, i32 1
  %287 = load i32, i32* %R426, align 4, !tbaa !152
  %cmp427 = icmp slt i32 %287, 0
  br i1 %cmp427, label %if.then.429, label %if.end.438

if.then.429:                                      ; preds = %do.body.419
  %state430 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %Q431 = getelementptr inbounds %struct.ia_, %struct.ia_* %state430, i32 0, i32 0
  %288 = load i32, i32* %Q431, align 4, !tbaa !151
  %inc432 = add nsw i32 %288, 1
  store i32 %inc432, i32* %Q431, align 4, !tbaa !151
  %step433 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 1
  %N434 = getelementptr inbounds %struct.ie_, %struct.ie_* %step433, i32 0, i32 2
  %289 = load i32, i32* %N434, align 4, !tbaa !150
  %state435 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %R436 = getelementptr inbounds %struct.ia_, %struct.ia_* %state435, i32 0, i32 1
  %290 = load i32, i32* %R436, align 4, !tbaa !152
  %add437 = add i32 %290, %289
  store i32 %add437, i32* %R436, align 4, !tbaa !152
  br label %if.end.438

if.end.438:                                       ; preds = %if.then.429, %do.body.419
  %step439 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 1
  %dQ440 = getelementptr inbounds %struct.ie_, %struct.ie_* %step439, i32 0, i32 0
  %291 = load i32, i32* %dQ440, align 4, !tbaa !145
  %state441 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %Q442 = getelementptr inbounds %struct.ia_, %struct.ia_* %state441, i32 0, i32 0
  %292 = load i32, i32* %Q442, align 4, !tbaa !151
  %add443 = add nsw i32 %292, %291
  store i32 %add443, i32* %Q442, align 4, !tbaa !151
  br label %do.cond.444

do.cond.444:                                      ; preds = %if.end.438
  br label %do.end.445

do.end.445:                                       ; preds = %do.cond.444
  br label %for.inc.446

for.inc.446:                                      ; preds = %do.end.445
  %293 = load i32, i32* %k, align 4, !tbaa !5
  %inc447 = add nsw i32 %293, 1
  store i32 %inc447, i32* %k, align 4, !tbaa !5
  %294 = load i8*, i8** %devc_contone_gray, align 8, !tbaa !1
  %incdec.ptr448 = getelementptr inbounds i8, i8* %294, i32 -1
  store i8* %incdec.ptr448, i8** %devc_contone_gray, align 8, !tbaa !1
  br label %for.cond.411

for.end.449:                                      ; preds = %for.cond.411
  br label %if.end.450

if.end.450:                                       ; preds = %for.end.449, %if.end.406
  br label %sw.epilog.602

sw.bb.451:                                        ; preds = %sw.bb.339
  %295 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %ht_landscape452 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %295, i32 0, i32 79
  %flipy = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape452, i32 0, i32 7
  %296 = load i32, i32* %flipy, align 4, !tbaa !154
  %tobool453 = icmp ne i32 %296, 0
  br i1 %tobool453, label %if.then.454, label %if.else.500

if.then.454:                                      ; preds = %sw.bb.451
  %297 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %ht_landscape455 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %297, i32 0, i32 79
  %curr_pos = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape455, i32 0, i32 3
  %298 = load i32, i32* %curr_pos, align 4, !tbaa !155
  %299 = load i32, i32* %data_length, align 4, !tbaa !5
  %sub456 = sub nsw i32 %299, 1
  %mul457 = mul nsw i32 64, %sub456
  %add458 = add nsw i32 %298, %mul457
  store i32 %add458, i32* %position, align 4, !tbaa !5
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.459

for.cond.459:                                     ; preds = %for.inc.497, %if.then.454
  %300 = load i32, i32* %k, align 4, !tbaa !5
  %301 = load i32, i32* %data_length, align 4, !tbaa !5
  %cmp460 = icmp slt i32 %300, %301
  br i1 %cmp460, label %for.body.462, label %for.end.499

for.body.462:                                     ; preds = %for.cond.459
  %state463 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %Q464 = getelementptr inbounds %struct.ia_, %struct.ia_* %state463, i32 0, i32 0
  %302 = load i32, i32* %Q464, align 4, !tbaa !151
  %idxprom465 = sext i32 %302 to i64
  %303 = load i8*, i8** %psrc_cm, align 8, !tbaa !1
  %arrayidx466 = getelementptr inbounds i8, i8* %303, i64 %idxprom465
  %304 = load i8, i8* %arrayidx466, align 1, !tbaa !31
  %305 = load i32, i32* %position, align 4, !tbaa !5
  %idxprom467 = sext i32 %305 to i64
  %306 = load i8*, i8** %devc_contone_gray, align 8, !tbaa !1
  %arrayidx468 = getelementptr inbounds i8, i8* %306, i64 %idxprom467
  store i8 %304, i8* %arrayidx468, align 1, !tbaa !31
  %307 = load i32, i32* %position, align 4, !tbaa !5
  %sub469 = sub nsw i32 %307, 64
  store i32 %sub469, i32* %position, align 4, !tbaa !5
  br label %do.body.470

do.body.470:                                      ; preds = %for.body.462
  %step471 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 1
  %dR472 = getelementptr inbounds %struct.ie_, %struct.ie_* %step471, i32 0, i32 1
  %308 = load i32, i32* %dR472, align 4, !tbaa !149
  %state473 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %R474 = getelementptr inbounds %struct.ia_, %struct.ia_* %state473, i32 0, i32 1
  %309 = load i32, i32* %R474, align 4, !tbaa !152
  %sub475 = sub i32 %309, %308
  store i32 %sub475, i32* %R474, align 4, !tbaa !152
  %state476 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %R477 = getelementptr inbounds %struct.ia_, %struct.ia_* %state476, i32 0, i32 1
  %310 = load i32, i32* %R477, align 4, !tbaa !152
  %cmp478 = icmp slt i32 %310, 0
  br i1 %cmp478, label %if.then.480, label %if.end.489

if.then.480:                                      ; preds = %do.body.470
  %state481 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %Q482 = getelementptr inbounds %struct.ia_, %struct.ia_* %state481, i32 0, i32 0
  %311 = load i32, i32* %Q482, align 4, !tbaa !151
  %inc483 = add nsw i32 %311, 1
  store i32 %inc483, i32* %Q482, align 4, !tbaa !151
  %step484 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 1
  %N485 = getelementptr inbounds %struct.ie_, %struct.ie_* %step484, i32 0, i32 2
  %312 = load i32, i32* %N485, align 4, !tbaa !150
  %state486 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %R487 = getelementptr inbounds %struct.ia_, %struct.ia_* %state486, i32 0, i32 1
  %313 = load i32, i32* %R487, align 4, !tbaa !152
  %add488 = add i32 %313, %312
  store i32 %add488, i32* %R487, align 4, !tbaa !152
  br label %if.end.489

if.end.489:                                       ; preds = %if.then.480, %do.body.470
  %step490 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 1
  %dQ491 = getelementptr inbounds %struct.ie_, %struct.ie_* %step490, i32 0, i32 0
  %314 = load i32, i32* %dQ491, align 4, !tbaa !145
  %state492 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %Q493 = getelementptr inbounds %struct.ia_, %struct.ia_* %state492, i32 0, i32 0
  %315 = load i32, i32* %Q493, align 4, !tbaa !151
  %add494 = add nsw i32 %315, %314
  store i32 %add494, i32* %Q493, align 4, !tbaa !151
  br label %do.cond.495

do.cond.495:                                      ; preds = %if.end.489
  br label %do.end.496

do.end.496:                                       ; preds = %do.cond.495
  br label %for.inc.497

for.inc.497:                                      ; preds = %do.end.496
  %316 = load i32, i32* %k, align 4, !tbaa !5
  %inc498 = add nsw i32 %316, 1
  store i32 %inc498, i32* %k, align 4, !tbaa !5
  br label %for.cond.459

for.end.499:                                      ; preds = %for.cond.459
  br label %if.end.585

if.else.500:                                      ; preds = %sw.bb.451
  %317 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %ht_landscape501 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %317, i32 0, i32 79
  %curr_pos502 = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape501, i32 0, i32 3
  %318 = load i32, i32* %curr_pos502, align 4, !tbaa !155
  store i32 %318, i32* %position, align 4, !tbaa !5
  %319 = load i32, i32* %src_size, align 4, !tbaa !5
  %320 = load i32, i32* %dest_height, align 4, !tbaa !5
  %cmp503 = icmp eq i32 %319, %320
  br i1 %cmp503, label %if.then.505, label %if.else.518

if.then.505:                                      ; preds = %if.else.500
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.506

for.cond.506:                                     ; preds = %for.inc.515, %if.then.505
  %321 = load i32, i32* %k, align 4, !tbaa !5
  %322 = load i32, i32* %data_length, align 4, !tbaa !5
  %cmp507 = icmp slt i32 %321, %322
  br i1 %cmp507, label %for.body.509, label %for.end.517

for.body.509:                                     ; preds = %for.cond.506
  %323 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom510 = sext i32 %323 to i64
  %324 = load i8*, i8** %psrc_cm, align 8, !tbaa !1
  %arrayidx511 = getelementptr inbounds i8, i8* %324, i64 %idxprom510
  %325 = load i8, i8* %arrayidx511, align 1, !tbaa !31
  %326 = load i32, i32* %position, align 4, !tbaa !5
  %idxprom512 = sext i32 %326 to i64
  %327 = load i8*, i8** %devc_contone_gray, align 8, !tbaa !1
  %arrayidx513 = getelementptr inbounds i8, i8* %327, i64 %idxprom512
  store i8 %325, i8* %arrayidx513, align 1, !tbaa !31
  %328 = load i32, i32* %position, align 4, !tbaa !5
  %add514 = add nsw i32 %328, 64
  store i32 %add514, i32* %position, align 4, !tbaa !5
  br label %for.inc.515

for.inc.515:                                      ; preds = %for.body.509
  %329 = load i32, i32* %k, align 4, !tbaa !5
  %inc516 = add nsw i32 %329, 1
  store i32 %inc516, i32* %k, align 4, !tbaa !5
  br label %for.cond.506

for.end.517:                                      ; preds = %for.cond.506
  br label %if.end.584

if.else.518:                                      ; preds = %if.else.500
  %330 = load i32, i32* %scale_factor, align 4, !tbaa !5
  %conv519 = sext i32 %330 to i64
  %cmp520 = icmp eq i64 %conv519, 128
  br i1 %cmp520, label %if.then.522, label %if.else.541

if.then.522:                                      ; preds = %if.else.518
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.523

for.cond.523:                                     ; preds = %for.inc.538, %if.then.522
  %331 = load i32, i32* %k, align 4, !tbaa !5
  %332 = load i32, i32* %data_length, align 4, !tbaa !5
  %cmp524 = icmp slt i32 %331, %332
  br i1 %cmp524, label %for.body.526, label %for.end.540

for.body.526:                                     ; preds = %for.cond.523
  %333 = load i32, i32* %scale_factor, align 4, !tbaa !5
  %334 = load i32, i32* %k, align 4, !tbaa !5
  %mul527 = mul nsw i32 %333, %334
  %add528 = add nsw i32 %mul527, 128
  %shr529 = ashr i32 %add528, 8
  store i32 %shr529, i32* %offset, align 4, !tbaa !5
  %335 = load i32, i32* %offset, align 4, !tbaa !5
  %idxprom530 = sext i32 %335 to i64
  %336 = load i8*, i8** %psrc_cm, align 8, !tbaa !1
  %arrayidx531 = getelementptr inbounds i8, i8* %336, i64 %idxprom530
  %337 = load i8, i8* %arrayidx531, align 1, !tbaa !31
  %338 = load i32, i32* %position, align 4, !tbaa !5
  %add532 = add nsw i32 %338, 64
  %idxprom533 = sext i32 %add532 to i64
  %339 = load i8*, i8** %devc_contone_gray, align 8, !tbaa !1
  %arrayidx534 = getelementptr inbounds i8, i8* %339, i64 %idxprom533
  store i8 %337, i8* %arrayidx534, align 1, !tbaa !31
  %340 = load i32, i32* %position, align 4, !tbaa !5
  %idxprom535 = sext i32 %340 to i64
  %341 = load i8*, i8** %devc_contone_gray, align 8, !tbaa !1
  %arrayidx536 = getelementptr inbounds i8, i8* %341, i64 %idxprom535
  store i8 %337, i8* %arrayidx536, align 1, !tbaa !31
  %342 = load i32, i32* %position, align 4, !tbaa !5
  %add537 = add nsw i32 %342, 128
  store i32 %add537, i32* %position, align 4, !tbaa !5
  br label %for.inc.538

for.inc.538:                                      ; preds = %for.body.526
  %343 = load i32, i32* %k, align 4, !tbaa !5
  %add539 = add nsw i32 %343, 2
  store i32 %add539, i32* %k, align 4, !tbaa !5
  br label %for.cond.523

for.end.540:                                      ; preds = %for.cond.523
  br label %if.end.583

if.else.541:                                      ; preds = %if.else.518
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.542

for.cond.542:                                     ; preds = %for.inc.580, %if.else.541
  %344 = load i32, i32* %k, align 4, !tbaa !5
  %345 = load i32, i32* %data_length, align 4, !tbaa !5
  %cmp543 = icmp slt i32 %344, %345
  br i1 %cmp543, label %for.body.545, label %for.end.582

for.body.545:                                     ; preds = %for.cond.542
  %state546 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %Q547 = getelementptr inbounds %struct.ia_, %struct.ia_* %state546, i32 0, i32 0
  %346 = load i32, i32* %Q547, align 4, !tbaa !151
  %idxprom548 = sext i32 %346 to i64
  %347 = load i8*, i8** %psrc_cm, align 8, !tbaa !1
  %arrayidx549 = getelementptr inbounds i8, i8* %347, i64 %idxprom548
  %348 = load i8, i8* %arrayidx549, align 1, !tbaa !31
  %349 = load i32, i32* %position, align 4, !tbaa !5
  %idxprom550 = sext i32 %349 to i64
  %350 = load i8*, i8** %devc_contone_gray, align 8, !tbaa !1
  %arrayidx551 = getelementptr inbounds i8, i8* %350, i64 %idxprom550
  store i8 %348, i8* %arrayidx551, align 1, !tbaa !31
  %351 = load i32, i32* %position, align 4, !tbaa !5
  %add552 = add nsw i32 %351, 64
  store i32 %add552, i32* %position, align 4, !tbaa !5
  br label %do.body.553

do.body.553:                                      ; preds = %for.body.545
  %step554 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 1
  %dR555 = getelementptr inbounds %struct.ie_, %struct.ie_* %step554, i32 0, i32 1
  %352 = load i32, i32* %dR555, align 4, !tbaa !149
  %state556 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %R557 = getelementptr inbounds %struct.ia_, %struct.ia_* %state556, i32 0, i32 1
  %353 = load i32, i32* %R557, align 4, !tbaa !152
  %sub558 = sub i32 %353, %352
  store i32 %sub558, i32* %R557, align 4, !tbaa !152
  %state559 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %R560 = getelementptr inbounds %struct.ia_, %struct.ia_* %state559, i32 0, i32 1
  %354 = load i32, i32* %R560, align 4, !tbaa !152
  %cmp561 = icmp slt i32 %354, 0
  br i1 %cmp561, label %if.then.563, label %if.end.572

if.then.563:                                      ; preds = %do.body.553
  %state564 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %Q565 = getelementptr inbounds %struct.ia_, %struct.ia_* %state564, i32 0, i32 0
  %355 = load i32, i32* %Q565, align 4, !tbaa !151
  %inc566 = add nsw i32 %355, 1
  store i32 %inc566, i32* %Q565, align 4, !tbaa !151
  %step567 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 1
  %N568 = getelementptr inbounds %struct.ie_, %struct.ie_* %step567, i32 0, i32 2
  %356 = load i32, i32* %N568, align 4, !tbaa !150
  %state569 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %R570 = getelementptr inbounds %struct.ia_, %struct.ia_* %state569, i32 0, i32 1
  %357 = load i32, i32* %R570, align 4, !tbaa !152
  %add571 = add i32 %357, %356
  store i32 %add571, i32* %R570, align 4, !tbaa !152
  br label %if.end.572

if.end.572:                                       ; preds = %if.then.563, %do.body.553
  %step573 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 1
  %dQ574 = getelementptr inbounds %struct.ie_, %struct.ie_* %step573, i32 0, i32 0
  %358 = load i32, i32* %dQ574, align 4, !tbaa !145
  %state575 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %Q576 = getelementptr inbounds %struct.ia_, %struct.ia_* %state575, i32 0, i32 0
  %359 = load i32, i32* %Q576, align 4, !tbaa !151
  %add577 = add nsw i32 %359, %358
  store i32 %add577, i32* %Q576, align 4, !tbaa !151
  br label %do.cond.578

do.cond.578:                                      ; preds = %if.end.572
  br label %do.end.579

do.end.579:                                       ; preds = %do.cond.578
  br label %for.inc.580

for.inc.580:                                      ; preds = %do.end.579
  %360 = load i32, i32* %k, align 4, !tbaa !5
  %inc581 = add nsw i32 %360, 1
  store i32 %inc581, i32* %k, align 4, !tbaa !5
  br label %for.cond.542

for.end.582:                                      ; preds = %for.cond.542
  br label %if.end.583

if.end.583:                                       ; preds = %for.end.582, %for.end.540
  br label %if.end.584

if.end.584:                                       ; preds = %if.end.583, %for.end.517
  br label %if.end.585

if.end.585:                                       ; preds = %if.end.584, %for.end.499
  %361 = load i32, i32* %vdi, align 4, !tbaa !5
  %362 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %ht_landscape586 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %362, i32 0, i32 79
  %count587 = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape586, i32 0, i32 0
  %363 = load i32, i32* %count587, align 4, !tbaa !131
  %add588 = add nsw i32 %363, %361
  store i32 %add588, i32* %count587, align 4, !tbaa !131
  %364 = load i32, i32* %vdi, align 4, !tbaa !5
  %365 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %ht_landscape589 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %365, i32 0, i32 79
  %curr_pos590 = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape589, i32 0, i32 3
  %366 = load i32, i32* %curr_pos590, align 4, !tbaa !155
  %idxprom591 = sext i32 %366 to i64
  %367 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %ht_landscape592 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %367, i32 0, i32 79
  %widths = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape592, i32 0, i32 1
  %arrayidx593 = getelementptr inbounds [64 x i32], [64 x i32]* %widths, i32 0, i64 %idxprom591
  store i32 %364, i32* %arrayidx593, align 4, !tbaa !5
  %368 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %ht_landscape594 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %368, i32 0, i32 79
  %index595 = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape594, i32 0, i32 4
  %369 = load i32, i32* %index595, align 4, !tbaa !143
  %370 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %ht_landscape596 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %370, i32 0, i32 79
  %curr_pos597 = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape596, i32 0, i32 3
  %371 = load i32, i32* %curr_pos597, align 4, !tbaa !155
  %add598 = add nsw i32 %371, %369
  store i32 %add598, i32* %curr_pos597, align 4, !tbaa !155
  %372 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %ht_landscape599 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %372, i32 0, i32 79
  %num_contones = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape599, i32 0, i32 5
  %373 = load i32, i32* %num_contones, align 4, !tbaa !156
  %inc600 = add nsw i32 %373, 1
  store i32 %inc600, i32* %num_contones, align 4, !tbaa !156
  br label %sw.epilog.602

sw.default.601:                                   ; preds = %sw.bb.339
  br label %sw.epilog.602

sw.epilog.602:                                    ; preds = %sw.default.601, %if.end.585, %if.end.450
  br label %sw.epilog.1027

sw.bb.603:                                        ; preds = %for.end.338
  %374 = load i32, i32* %posture, align 4, !tbaa !31
  switch i32 %374, label %sw.default.1024 [
    i32 0, label %sw.bb.604
    i32 1, label %sw.bb.813
  ]

sw.bb.604:                                        ; preds = %sw.bb.603
  %375 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %dst_width605 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %375, i32 0, i32 25
  %376 = load i32, i32* %dst_width605, align 4, !tbaa !153
  %cmp606 = icmp sgt i32 %376, 0
  br i1 %cmp606, label %if.then.608, label %if.else.733

if.then.608:                                      ; preds = %sw.bb.604
  %377 = load i32, i32* %src_size, align 4, !tbaa !5
  %378 = load i32, i32* %dest_width, align 4, !tbaa !5
  %cmp609 = icmp eq i32 %377, %378
  br i1 %cmp609, label %if.then.611, label %if.else.628

if.then.611:                                      ; preds = %if.then.608
  %arrayidx612 = getelementptr inbounds [64 x i8*], [64 x i8*]* %devc_contone, i32 0, i64 0
  %379 = load i8*, i8** %arrayidx612, align 8, !tbaa !1
  %arrayidx613 = getelementptr inbounds [64 x i8*], [64 x i8*]* %psrc_plane, i32 0, i64 0
  %380 = load i8*, i8** %arrayidx613, align 8, !tbaa !1
  %381 = load i32, i32* %data_length, align 4, !tbaa !5
  %conv614 = sext i32 %381 to i64
  %call615 = call i8* @memcpy(i8* %379, i8* %380, i64 %conv614) #7
  %arrayidx616 = getelementptr inbounds [64 x i8*], [64 x i8*]* %devc_contone, i32 0, i64 1
  %382 = load i8*, i8** %arrayidx616, align 8, !tbaa !1
  %arrayidx617 = getelementptr inbounds [64 x i8*], [64 x i8*]* %psrc_plane, i32 0, i64 1
  %383 = load i8*, i8** %arrayidx617, align 8, !tbaa !1
  %384 = load i32, i32* %data_length, align 4, !tbaa !5
  %conv618 = sext i32 %384 to i64
  %call619 = call i8* @memcpy(i8* %382, i8* %383, i64 %conv618) #7
  %arrayidx620 = getelementptr inbounds [64 x i8*], [64 x i8*]* %devc_contone, i32 0, i64 2
  %385 = load i8*, i8** %arrayidx620, align 8, !tbaa !1
  %arrayidx621 = getelementptr inbounds [64 x i8*], [64 x i8*]* %psrc_plane, i32 0, i64 2
  %386 = load i8*, i8** %arrayidx621, align 8, !tbaa !1
  %387 = load i32, i32* %data_length, align 4, !tbaa !5
  %conv622 = sext i32 %387 to i64
  %call623 = call i8* @memcpy(i8* %385, i8* %386, i64 %conv622) #7
  %arrayidx624 = getelementptr inbounds [64 x i8*], [64 x i8*]* %devc_contone, i32 0, i64 3
  %388 = load i8*, i8** %arrayidx624, align 8, !tbaa !1
  %arrayidx625 = getelementptr inbounds [64 x i8*], [64 x i8*]* %psrc_plane, i32 0, i64 3
  %389 = load i8*, i8** %arrayidx625, align 8, !tbaa !1
  %390 = load i32, i32* %data_length, align 4, !tbaa !5
  %conv626 = sext i32 %390 to i64
  %call627 = call i8* @memcpy(i8* %388, i8* %389, i64 %conv626) #7
  br label %if.end.732

if.else.628:                                      ; preds = %if.then.608
  %391 = load i32, i32* %src_size, align 4, !tbaa !5
  %mul629 = mul nsw i32 %391, 2
  %392 = load i32, i32* %dest_width, align 4, !tbaa !5
  %cmp630 = icmp eq i32 %mul629, %392
  br i1 %cmp630, label %if.then.632, label %if.else.668

if.then.632:                                      ; preds = %if.else.628
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.633

for.cond.633:                                     ; preds = %for.inc.665, %if.then.632
  %393 = load i32, i32* %k, align 4, !tbaa !5
  %394 = load i32, i32* %data_length, align 4, !tbaa !5
  %cmp634 = icmp slt i32 %393, %394
  br i1 %cmp634, label %for.body.636, label %for.end.667

for.body.636:                                     ; preds = %for.cond.633
  %arrayidx637 = getelementptr inbounds [64 x i8*], [64 x i8*]* %psrc_plane, i32 0, i64 0
  %395 = load i8*, i8** %arrayidx637, align 8, !tbaa !1
  %incdec.ptr638 = getelementptr inbounds i8, i8* %395, i32 1
  store i8* %incdec.ptr638, i8** %arrayidx637, align 8, !tbaa !1
  %396 = load i8, i8* %395, align 1, !tbaa !31
  %arrayidx639 = getelementptr inbounds [64 x i8*], [64 x i8*]* %devc_contone, i32 0, i64 0
  %397 = load i8*, i8** %arrayidx639, align 8, !tbaa !1
  %add.ptr640 = getelementptr inbounds i8, i8* %397, i64 1
  store i8 %396, i8* %add.ptr640, align 1, !tbaa !31
  %arrayidx641 = getelementptr inbounds [64 x i8*], [64 x i8*]* %devc_contone, i32 0, i64 0
  %398 = load i8*, i8** %arrayidx641, align 8, !tbaa !1
  store i8 %396, i8* %398, align 1, !tbaa !31
  %arrayidx642 = getelementptr inbounds [64 x i8*], [64 x i8*]* %psrc_plane, i32 0, i64 1
  %399 = load i8*, i8** %arrayidx642, align 8, !tbaa !1
  %incdec.ptr643 = getelementptr inbounds i8, i8* %399, i32 1
  store i8* %incdec.ptr643, i8** %arrayidx642, align 8, !tbaa !1
  %400 = load i8, i8* %399, align 1, !tbaa !31
  %arrayidx644 = getelementptr inbounds [64 x i8*], [64 x i8*]* %devc_contone, i32 0, i64 1
  %401 = load i8*, i8** %arrayidx644, align 8, !tbaa !1
  %add.ptr645 = getelementptr inbounds i8, i8* %401, i64 1
  store i8 %400, i8* %add.ptr645, align 1, !tbaa !31
  %arrayidx646 = getelementptr inbounds [64 x i8*], [64 x i8*]* %devc_contone, i32 0, i64 1
  %402 = load i8*, i8** %arrayidx646, align 8, !tbaa !1
  store i8 %400, i8* %402, align 1, !tbaa !31
  %arrayidx647 = getelementptr inbounds [64 x i8*], [64 x i8*]* %psrc_plane, i32 0, i64 2
  %403 = load i8*, i8** %arrayidx647, align 8, !tbaa !1
  %incdec.ptr648 = getelementptr inbounds i8, i8* %403, i32 1
  store i8* %incdec.ptr648, i8** %arrayidx647, align 8, !tbaa !1
  %404 = load i8, i8* %403, align 1, !tbaa !31
  %arrayidx649 = getelementptr inbounds [64 x i8*], [64 x i8*]* %devc_contone, i32 0, i64 2
  %405 = load i8*, i8** %arrayidx649, align 8, !tbaa !1
  %add.ptr650 = getelementptr inbounds i8, i8* %405, i64 1
  store i8 %404, i8* %add.ptr650, align 1, !tbaa !31
  %arrayidx651 = getelementptr inbounds [64 x i8*], [64 x i8*]* %devc_contone, i32 0, i64 2
  %406 = load i8*, i8** %arrayidx651, align 8, !tbaa !1
  store i8 %404, i8* %406, align 1, !tbaa !31
  %arrayidx652 = getelementptr inbounds [64 x i8*], [64 x i8*]* %psrc_plane, i32 0, i64 3
  %407 = load i8*, i8** %arrayidx652, align 8, !tbaa !1
  %incdec.ptr653 = getelementptr inbounds i8, i8* %407, i32 1
  store i8* %incdec.ptr653, i8** %arrayidx652, align 8, !tbaa !1
  %408 = load i8, i8* %407, align 1, !tbaa !31
  %arrayidx654 = getelementptr inbounds [64 x i8*], [64 x i8*]* %devc_contone, i32 0, i64 3
  %409 = load i8*, i8** %arrayidx654, align 8, !tbaa !1
  %add.ptr655 = getelementptr inbounds i8, i8* %409, i64 1
  store i8 %408, i8* %add.ptr655, align 1, !tbaa !31
  %arrayidx656 = getelementptr inbounds [64 x i8*], [64 x i8*]* %devc_contone, i32 0, i64 3
  %410 = load i8*, i8** %arrayidx656, align 8, !tbaa !1
  store i8 %408, i8* %410, align 1, !tbaa !31
  %arrayidx657 = getelementptr inbounds [64 x i8*], [64 x i8*]* %devc_contone, i32 0, i64 0
  %411 = load i8*, i8** %arrayidx657, align 8, !tbaa !1
  %add.ptr658 = getelementptr inbounds i8, i8* %411, i64 2
  store i8* %add.ptr658, i8** %arrayidx657, align 8, !tbaa !1
  %arrayidx659 = getelementptr inbounds [64 x i8*], [64 x i8*]* %devc_contone, i32 0, i64 1
  %412 = load i8*, i8** %arrayidx659, align 8, !tbaa !1
  %add.ptr660 = getelementptr inbounds i8, i8* %412, i64 2
  store i8* %add.ptr660, i8** %arrayidx659, align 8, !tbaa !1
  %arrayidx661 = getelementptr inbounds [64 x i8*], [64 x i8*]* %devc_contone, i32 0, i64 2
  %413 = load i8*, i8** %arrayidx661, align 8, !tbaa !1
  %add.ptr662 = getelementptr inbounds i8, i8* %413, i64 2
  store i8* %add.ptr662, i8** %arrayidx661, align 8, !tbaa !1
  %arrayidx663 = getelementptr inbounds [64 x i8*], [64 x i8*]* %devc_contone, i32 0, i64 3
  %414 = load i8*, i8** %arrayidx663, align 8, !tbaa !1
  %add.ptr664 = getelementptr inbounds i8, i8* %414, i64 2
  store i8* %add.ptr664, i8** %arrayidx663, align 8, !tbaa !1
  br label %for.inc.665

for.inc.665:                                      ; preds = %for.body.636
  %415 = load i32, i32* %k, align 4, !tbaa !5
  %add666 = add nsw i32 %415, 2
  store i32 %add666, i32* %k, align 4, !tbaa !5
  br label %for.cond.633

for.end.667:                                      ; preds = %for.cond.633
  br label %if.end.731

if.else.668:                                      ; preds = %if.else.628
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.669

for.cond.669:                                     ; preds = %for.inc.728, %if.else.668
  %416 = load i32, i32* %k, align 4, !tbaa !5
  %417 = load i32, i32* %data_length, align 4, !tbaa !5
  %cmp670 = icmp slt i32 %416, %417
  br i1 %cmp670, label %for.body.672, label %for.end.730

for.body.672:                                     ; preds = %for.cond.669
  %state673 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %Q674 = getelementptr inbounds %struct.ia_, %struct.ia_* %state673, i32 0, i32 0
  %418 = load i32, i32* %Q674, align 4, !tbaa !151
  %idxprom675 = sext i32 %418 to i64
  %arrayidx676 = getelementptr inbounds [64 x i8*], [64 x i8*]* %psrc_plane, i32 0, i64 0
  %419 = load i8*, i8** %arrayidx676, align 8, !tbaa !1
  %arrayidx677 = getelementptr inbounds i8, i8* %419, i64 %idxprom675
  %420 = load i8, i8* %arrayidx677, align 1, !tbaa !31
  %arrayidx678 = getelementptr inbounds [64 x i8*], [64 x i8*]* %devc_contone, i32 0, i64 0
  %421 = load i8*, i8** %arrayidx678, align 8, !tbaa !1
  %incdec.ptr679 = getelementptr inbounds i8, i8* %421, i32 1
  store i8* %incdec.ptr679, i8** %arrayidx678, align 8, !tbaa !1
  store i8 %420, i8* %421, align 1, !tbaa !31
  %state680 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %Q681 = getelementptr inbounds %struct.ia_, %struct.ia_* %state680, i32 0, i32 0
  %422 = load i32, i32* %Q681, align 4, !tbaa !151
  %idxprom682 = sext i32 %422 to i64
  %arrayidx683 = getelementptr inbounds [64 x i8*], [64 x i8*]* %psrc_plane, i32 0, i64 1
  %423 = load i8*, i8** %arrayidx683, align 8, !tbaa !1
  %arrayidx684 = getelementptr inbounds i8, i8* %423, i64 %idxprom682
  %424 = load i8, i8* %arrayidx684, align 1, !tbaa !31
  %arrayidx685 = getelementptr inbounds [64 x i8*], [64 x i8*]* %devc_contone, i32 0, i64 1
  %425 = load i8*, i8** %arrayidx685, align 8, !tbaa !1
  %incdec.ptr686 = getelementptr inbounds i8, i8* %425, i32 1
  store i8* %incdec.ptr686, i8** %arrayidx685, align 8, !tbaa !1
  store i8 %424, i8* %425, align 1, !tbaa !31
  %state687 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %Q688 = getelementptr inbounds %struct.ia_, %struct.ia_* %state687, i32 0, i32 0
  %426 = load i32, i32* %Q688, align 4, !tbaa !151
  %idxprom689 = sext i32 %426 to i64
  %arrayidx690 = getelementptr inbounds [64 x i8*], [64 x i8*]* %psrc_plane, i32 0, i64 2
  %427 = load i8*, i8** %arrayidx690, align 8, !tbaa !1
  %arrayidx691 = getelementptr inbounds i8, i8* %427, i64 %idxprom689
  %428 = load i8, i8* %arrayidx691, align 1, !tbaa !31
  %arrayidx692 = getelementptr inbounds [64 x i8*], [64 x i8*]* %devc_contone, i32 0, i64 2
  %429 = load i8*, i8** %arrayidx692, align 8, !tbaa !1
  %incdec.ptr693 = getelementptr inbounds i8, i8* %429, i32 1
  store i8* %incdec.ptr693, i8** %arrayidx692, align 8, !tbaa !1
  store i8 %428, i8* %429, align 1, !tbaa !31
  %state694 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %Q695 = getelementptr inbounds %struct.ia_, %struct.ia_* %state694, i32 0, i32 0
  %430 = load i32, i32* %Q695, align 4, !tbaa !151
  %idxprom696 = sext i32 %430 to i64
  %arrayidx697 = getelementptr inbounds [64 x i8*], [64 x i8*]* %psrc_plane, i32 0, i64 3
  %431 = load i8*, i8** %arrayidx697, align 8, !tbaa !1
  %arrayidx698 = getelementptr inbounds i8, i8* %431, i64 %idxprom696
  %432 = load i8, i8* %arrayidx698, align 1, !tbaa !31
  %arrayidx699 = getelementptr inbounds [64 x i8*], [64 x i8*]* %devc_contone, i32 0, i64 3
  %433 = load i8*, i8** %arrayidx699, align 8, !tbaa !1
  %incdec.ptr700 = getelementptr inbounds i8, i8* %433, i32 1
  store i8* %incdec.ptr700, i8** %arrayidx699, align 8, !tbaa !1
  store i8 %432, i8* %433, align 1, !tbaa !31
  br label %do.body.701

do.body.701:                                      ; preds = %for.body.672
  %step702 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 1
  %dR703 = getelementptr inbounds %struct.ie_, %struct.ie_* %step702, i32 0, i32 1
  %434 = load i32, i32* %dR703, align 4, !tbaa !149
  %state704 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %R705 = getelementptr inbounds %struct.ia_, %struct.ia_* %state704, i32 0, i32 1
  %435 = load i32, i32* %R705, align 4, !tbaa !152
  %sub706 = sub i32 %435, %434
  store i32 %sub706, i32* %R705, align 4, !tbaa !152
  %state707 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %R708 = getelementptr inbounds %struct.ia_, %struct.ia_* %state707, i32 0, i32 1
  %436 = load i32, i32* %R708, align 4, !tbaa !152
  %cmp709 = icmp slt i32 %436, 0
  br i1 %cmp709, label %if.then.711, label %if.end.720

if.then.711:                                      ; preds = %do.body.701
  %state712 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %Q713 = getelementptr inbounds %struct.ia_, %struct.ia_* %state712, i32 0, i32 0
  %437 = load i32, i32* %Q713, align 4, !tbaa !151
  %inc714 = add nsw i32 %437, 1
  store i32 %inc714, i32* %Q713, align 4, !tbaa !151
  %step715 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 1
  %N716 = getelementptr inbounds %struct.ie_, %struct.ie_* %step715, i32 0, i32 2
  %438 = load i32, i32* %N716, align 4, !tbaa !150
  %state717 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %R718 = getelementptr inbounds %struct.ia_, %struct.ia_* %state717, i32 0, i32 1
  %439 = load i32, i32* %R718, align 4, !tbaa !152
  %add719 = add i32 %439, %438
  store i32 %add719, i32* %R718, align 4, !tbaa !152
  br label %if.end.720

if.end.720:                                       ; preds = %if.then.711, %do.body.701
  %step721 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 1
  %dQ722 = getelementptr inbounds %struct.ie_, %struct.ie_* %step721, i32 0, i32 0
  %440 = load i32, i32* %dQ722, align 4, !tbaa !145
  %state723 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %Q724 = getelementptr inbounds %struct.ia_, %struct.ia_* %state723, i32 0, i32 0
  %441 = load i32, i32* %Q724, align 4, !tbaa !151
  %add725 = add nsw i32 %441, %440
  store i32 %add725, i32* %Q724, align 4, !tbaa !151
  br label %do.cond.726

do.cond.726:                                      ; preds = %if.end.720
  br label %do.end.727

do.end.727:                                       ; preds = %do.cond.726
  br label %for.inc.728

for.inc.728:                                      ; preds = %do.end.727
  %442 = load i32, i32* %k, align 4, !tbaa !5
  %inc729 = add nsw i32 %442, 1
  store i32 %inc729, i32* %k, align 4, !tbaa !5
  br label %for.cond.669

for.end.730:                                      ; preds = %for.cond.669
  br label %if.end.731

if.end.731:                                       ; preds = %for.end.730, %for.end.667
  br label %if.end.732

if.end.732:                                       ; preds = %if.end.731, %if.then.611
  br label %if.end.812

if.else.733:                                      ; preds = %sw.bb.604
  %443 = load i32, i32* %data_length, align 4, !tbaa !5
  %sub734 = sub nsw i32 %443, 1
  %arrayidx735 = getelementptr inbounds [64 x i8*], [64 x i8*]* %devc_contone, i32 0, i64 0
  %444 = load i8*, i8** %arrayidx735, align 8, !tbaa !1
  %idx.ext736 = sext i32 %sub734 to i64
  %add.ptr737 = getelementptr inbounds i8, i8* %444, i64 %idx.ext736
  store i8* %add.ptr737, i8** %arrayidx735, align 8, !tbaa !1
  %445 = load i32, i32* %data_length, align 4, !tbaa !5
  %sub738 = sub nsw i32 %445, 1
  %arrayidx739 = getelementptr inbounds [64 x i8*], [64 x i8*]* %devc_contone, i32 0, i64 1
  %446 = load i8*, i8** %arrayidx739, align 8, !tbaa !1
  %idx.ext740 = sext i32 %sub738 to i64
  %add.ptr741 = getelementptr inbounds i8, i8* %446, i64 %idx.ext740
  store i8* %add.ptr741, i8** %arrayidx739, align 8, !tbaa !1
  %447 = load i32, i32* %data_length, align 4, !tbaa !5
  %sub742 = sub nsw i32 %447, 1
  %arrayidx743 = getelementptr inbounds [64 x i8*], [64 x i8*]* %devc_contone, i32 0, i64 2
  %448 = load i8*, i8** %arrayidx743, align 8, !tbaa !1
  %idx.ext744 = sext i32 %sub742 to i64
  %add.ptr745 = getelementptr inbounds i8, i8* %448, i64 %idx.ext744
  store i8* %add.ptr745, i8** %arrayidx743, align 8, !tbaa !1
  %449 = load i32, i32* %data_length, align 4, !tbaa !5
  %sub746 = sub nsw i32 %449, 1
  %arrayidx747 = getelementptr inbounds [64 x i8*], [64 x i8*]* %devc_contone, i32 0, i64 3
  %450 = load i8*, i8** %arrayidx747, align 8, !tbaa !1
  %idx.ext748 = sext i32 %sub746 to i64
  %add.ptr749 = getelementptr inbounds i8, i8* %450, i64 %idx.ext748
  store i8* %add.ptr749, i8** %arrayidx747, align 8, !tbaa !1
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.750

for.cond.750:                                     ; preds = %for.inc.809, %if.else.733
  %451 = load i32, i32* %k, align 4, !tbaa !5
  %452 = load i32, i32* %data_length, align 4, !tbaa !5
  %cmp751 = icmp slt i32 %451, %452
  br i1 %cmp751, label %for.body.753, label %for.end.811

for.body.753:                                     ; preds = %for.cond.750
  %state754 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %Q755 = getelementptr inbounds %struct.ia_, %struct.ia_* %state754, i32 0, i32 0
  %453 = load i32, i32* %Q755, align 4, !tbaa !151
  %idxprom756 = sext i32 %453 to i64
  %arrayidx757 = getelementptr inbounds [64 x i8*], [64 x i8*]* %psrc_plane, i32 0, i64 0
  %454 = load i8*, i8** %arrayidx757, align 8, !tbaa !1
  %arrayidx758 = getelementptr inbounds i8, i8* %454, i64 %idxprom756
  %455 = load i8, i8* %arrayidx758, align 1, !tbaa !31
  %arrayidx759 = getelementptr inbounds [64 x i8*], [64 x i8*]* %devc_contone, i32 0, i64 0
  %456 = load i8*, i8** %arrayidx759, align 8, !tbaa !1
  %incdec.ptr760 = getelementptr inbounds i8, i8* %456, i32 -1
  store i8* %incdec.ptr760, i8** %arrayidx759, align 8, !tbaa !1
  store i8 %455, i8* %456, align 1, !tbaa !31
  %state761 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %Q762 = getelementptr inbounds %struct.ia_, %struct.ia_* %state761, i32 0, i32 0
  %457 = load i32, i32* %Q762, align 4, !tbaa !151
  %idxprom763 = sext i32 %457 to i64
  %arrayidx764 = getelementptr inbounds [64 x i8*], [64 x i8*]* %psrc_plane, i32 0, i64 1
  %458 = load i8*, i8** %arrayidx764, align 8, !tbaa !1
  %arrayidx765 = getelementptr inbounds i8, i8* %458, i64 %idxprom763
  %459 = load i8, i8* %arrayidx765, align 1, !tbaa !31
  %arrayidx766 = getelementptr inbounds [64 x i8*], [64 x i8*]* %devc_contone, i32 0, i64 1
  %460 = load i8*, i8** %arrayidx766, align 8, !tbaa !1
  %incdec.ptr767 = getelementptr inbounds i8, i8* %460, i32 -1
  store i8* %incdec.ptr767, i8** %arrayidx766, align 8, !tbaa !1
  store i8 %459, i8* %460, align 1, !tbaa !31
  %state768 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %Q769 = getelementptr inbounds %struct.ia_, %struct.ia_* %state768, i32 0, i32 0
  %461 = load i32, i32* %Q769, align 4, !tbaa !151
  %idxprom770 = sext i32 %461 to i64
  %arrayidx771 = getelementptr inbounds [64 x i8*], [64 x i8*]* %psrc_plane, i32 0, i64 2
  %462 = load i8*, i8** %arrayidx771, align 8, !tbaa !1
  %arrayidx772 = getelementptr inbounds i8, i8* %462, i64 %idxprom770
  %463 = load i8, i8* %arrayidx772, align 1, !tbaa !31
  %arrayidx773 = getelementptr inbounds [64 x i8*], [64 x i8*]* %devc_contone, i32 0, i64 2
  %464 = load i8*, i8** %arrayidx773, align 8, !tbaa !1
  %incdec.ptr774 = getelementptr inbounds i8, i8* %464, i32 -1
  store i8* %incdec.ptr774, i8** %arrayidx773, align 8, !tbaa !1
  store i8 %463, i8* %464, align 1, !tbaa !31
  %state775 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %Q776 = getelementptr inbounds %struct.ia_, %struct.ia_* %state775, i32 0, i32 0
  %465 = load i32, i32* %Q776, align 4, !tbaa !151
  %idxprom777 = sext i32 %465 to i64
  %arrayidx778 = getelementptr inbounds [64 x i8*], [64 x i8*]* %psrc_plane, i32 0, i64 3
  %466 = load i8*, i8** %arrayidx778, align 8, !tbaa !1
  %arrayidx779 = getelementptr inbounds i8, i8* %466, i64 %idxprom777
  %467 = load i8, i8* %arrayidx779, align 1, !tbaa !31
  %arrayidx780 = getelementptr inbounds [64 x i8*], [64 x i8*]* %devc_contone, i32 0, i64 3
  %468 = load i8*, i8** %arrayidx780, align 8, !tbaa !1
  %incdec.ptr781 = getelementptr inbounds i8, i8* %468, i32 -1
  store i8* %incdec.ptr781, i8** %arrayidx780, align 8, !tbaa !1
  store i8 %467, i8* %468, align 1, !tbaa !31
  br label %do.body.782

do.body.782:                                      ; preds = %for.body.753
  %step783 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 1
  %dR784 = getelementptr inbounds %struct.ie_, %struct.ie_* %step783, i32 0, i32 1
  %469 = load i32, i32* %dR784, align 4, !tbaa !149
  %state785 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %R786 = getelementptr inbounds %struct.ia_, %struct.ia_* %state785, i32 0, i32 1
  %470 = load i32, i32* %R786, align 4, !tbaa !152
  %sub787 = sub i32 %470, %469
  store i32 %sub787, i32* %R786, align 4, !tbaa !152
  %state788 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %R789 = getelementptr inbounds %struct.ia_, %struct.ia_* %state788, i32 0, i32 1
  %471 = load i32, i32* %R789, align 4, !tbaa !152
  %cmp790 = icmp slt i32 %471, 0
  br i1 %cmp790, label %if.then.792, label %if.end.801

if.then.792:                                      ; preds = %do.body.782
  %state793 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %Q794 = getelementptr inbounds %struct.ia_, %struct.ia_* %state793, i32 0, i32 0
  %472 = load i32, i32* %Q794, align 4, !tbaa !151
  %inc795 = add nsw i32 %472, 1
  store i32 %inc795, i32* %Q794, align 4, !tbaa !151
  %step796 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 1
  %N797 = getelementptr inbounds %struct.ie_, %struct.ie_* %step796, i32 0, i32 2
  %473 = load i32, i32* %N797, align 4, !tbaa !150
  %state798 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %R799 = getelementptr inbounds %struct.ia_, %struct.ia_* %state798, i32 0, i32 1
  %474 = load i32, i32* %R799, align 4, !tbaa !152
  %add800 = add i32 %474, %473
  store i32 %add800, i32* %R799, align 4, !tbaa !152
  br label %if.end.801

if.end.801:                                       ; preds = %if.then.792, %do.body.782
  %step802 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 1
  %dQ803 = getelementptr inbounds %struct.ie_, %struct.ie_* %step802, i32 0, i32 0
  %475 = load i32, i32* %dQ803, align 4, !tbaa !145
  %state804 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %Q805 = getelementptr inbounds %struct.ia_, %struct.ia_* %state804, i32 0, i32 0
  %476 = load i32, i32* %Q805, align 4, !tbaa !151
  %add806 = add nsw i32 %476, %475
  store i32 %add806, i32* %Q805, align 4, !tbaa !151
  br label %do.cond.807

do.cond.807:                                      ; preds = %if.end.801
  br label %do.end.808

do.end.808:                                       ; preds = %do.cond.807
  br label %for.inc.809

for.inc.809:                                      ; preds = %do.end.808
  %477 = load i32, i32* %k, align 4, !tbaa !5
  %inc810 = add nsw i32 %477, 1
  store i32 %inc810, i32* %k, align 4, !tbaa !5
  br label %for.cond.750

for.end.811:                                      ; preds = %for.cond.750
  br label %if.end.812

if.end.812:                                       ; preds = %for.end.811, %if.end.732
  br label %sw.epilog.1025

sw.bb.813:                                        ; preds = %sw.bb.603
  %478 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %ht_landscape814 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %478, i32 0, i32 79
  %flipy815 = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape814, i32 0, i32 7
  %479 = load i32, i32* %flipy815, align 4, !tbaa !154
  %tobool816 = icmp ne i32 %479, 0
  br i1 %tobool816, label %if.then.817, label %if.else.875

if.then.817:                                      ; preds = %sw.bb.813
  %480 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %ht_landscape818 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %480, i32 0, i32 79
  %curr_pos819 = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape818, i32 0, i32 3
  %481 = load i32, i32* %curr_pos819, align 4, !tbaa !155
  %482 = load i32, i32* %data_length, align 4, !tbaa !5
  %sub820 = sub nsw i32 %482, 1
  %mul821 = mul nsw i32 64, %sub820
  %add822 = add nsw i32 %481, %mul821
  store i32 %add822, i32* %position, align 4, !tbaa !5
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.823

for.cond.823:                                     ; preds = %for.inc.872, %if.then.817
  %483 = load i32, i32* %k, align 4, !tbaa !5
  %484 = load i32, i32* %data_length, align 4, !tbaa !5
  %cmp824 = icmp slt i32 %483, %484
  br i1 %cmp824, label %for.body.826, label %for.end.874

for.body.826:                                     ; preds = %for.cond.823
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.827

for.cond.827:                                     ; preds = %for.inc.841, %for.body.826
  %485 = load i32, i32* %j, align 4, !tbaa !5
  %486 = load i32, i32* %spp_out, align 4, !tbaa !5
  %cmp828 = icmp slt i32 %485, %486
  br i1 %cmp828, label %for.body.830, label %for.end.843

for.body.830:                                     ; preds = %for.cond.827
  %state831 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %Q832 = getelementptr inbounds %struct.ia_, %struct.ia_* %state831, i32 0, i32 0
  %487 = load i32, i32* %Q832, align 4, !tbaa !151
  %idxprom833 = sext i32 %487 to i64
  %488 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom834 = sext i32 %488 to i64
  %arrayidx835 = getelementptr inbounds [64 x i8*], [64 x i8*]* %psrc_plane, i32 0, i64 %idxprom834
  %489 = load i8*, i8** %arrayidx835, align 8, !tbaa !1
  %arrayidx836 = getelementptr inbounds i8, i8* %489, i64 %idxprom833
  %490 = load i8, i8* %arrayidx836, align 1, !tbaa !31
  %491 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom837 = sext i32 %491 to i64
  %arrayidx838 = getelementptr inbounds [64 x i8*], [64 x i8*]* %devc_contone, i32 0, i64 %idxprom837
  %492 = load i8*, i8** %arrayidx838, align 8, !tbaa !1
  %493 = load i32, i32* %position, align 4, !tbaa !5
  %idx.ext839 = sext i32 %493 to i64
  %add.ptr840 = getelementptr inbounds i8, i8* %492, i64 %idx.ext839
  store i8 %490, i8* %add.ptr840, align 1, !tbaa !31
  br label %for.inc.841

for.inc.841:                                      ; preds = %for.body.830
  %494 = load i32, i32* %j, align 4, !tbaa !5
  %inc842 = add nsw i32 %494, 1
  store i32 %inc842, i32* %j, align 4, !tbaa !5
  br label %for.cond.827

for.end.843:                                      ; preds = %for.cond.827
  %495 = load i32, i32* %position, align 4, !tbaa !5
  %sub844 = sub nsw i32 %495, 64
  store i32 %sub844, i32* %position, align 4, !tbaa !5
  br label %do.body.845

do.body.845:                                      ; preds = %for.end.843
  %step846 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 1
  %dR847 = getelementptr inbounds %struct.ie_, %struct.ie_* %step846, i32 0, i32 1
  %496 = load i32, i32* %dR847, align 4, !tbaa !149
  %state848 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %R849 = getelementptr inbounds %struct.ia_, %struct.ia_* %state848, i32 0, i32 1
  %497 = load i32, i32* %R849, align 4, !tbaa !152
  %sub850 = sub i32 %497, %496
  store i32 %sub850, i32* %R849, align 4, !tbaa !152
  %state851 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %R852 = getelementptr inbounds %struct.ia_, %struct.ia_* %state851, i32 0, i32 1
  %498 = load i32, i32* %R852, align 4, !tbaa !152
  %cmp853 = icmp slt i32 %498, 0
  br i1 %cmp853, label %if.then.855, label %if.end.864

if.then.855:                                      ; preds = %do.body.845
  %state856 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %Q857 = getelementptr inbounds %struct.ia_, %struct.ia_* %state856, i32 0, i32 0
  %499 = load i32, i32* %Q857, align 4, !tbaa !151
  %inc858 = add nsw i32 %499, 1
  store i32 %inc858, i32* %Q857, align 4, !tbaa !151
  %step859 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 1
  %N860 = getelementptr inbounds %struct.ie_, %struct.ie_* %step859, i32 0, i32 2
  %500 = load i32, i32* %N860, align 4, !tbaa !150
  %state861 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %R862 = getelementptr inbounds %struct.ia_, %struct.ia_* %state861, i32 0, i32 1
  %501 = load i32, i32* %R862, align 4, !tbaa !152
  %add863 = add i32 %501, %500
  store i32 %add863, i32* %R862, align 4, !tbaa !152
  br label %if.end.864

if.end.864:                                       ; preds = %if.then.855, %do.body.845
  %step865 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 1
  %dQ866 = getelementptr inbounds %struct.ie_, %struct.ie_* %step865, i32 0, i32 0
  %502 = load i32, i32* %dQ866, align 4, !tbaa !145
  %state867 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %Q868 = getelementptr inbounds %struct.ia_, %struct.ia_* %state867, i32 0, i32 0
  %503 = load i32, i32* %Q868, align 4, !tbaa !151
  %add869 = add nsw i32 %503, %502
  store i32 %add869, i32* %Q868, align 4, !tbaa !151
  br label %do.cond.870

do.cond.870:                                      ; preds = %if.end.864
  br label %do.end.871

do.end.871:                                       ; preds = %do.cond.870
  br label %for.inc.872

for.inc.872:                                      ; preds = %do.end.871
  %504 = load i32, i32* %k, align 4, !tbaa !5
  %inc873 = add nsw i32 %504, 1
  store i32 %inc873, i32* %k, align 4, !tbaa !5
  br label %for.cond.823

for.end.874:                                      ; preds = %for.cond.823
  br label %if.end.1006

if.else.875:                                      ; preds = %sw.bb.813
  %505 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %ht_landscape876 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %505, i32 0, i32 79
  %curr_pos877 = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape876, i32 0, i32 3
  %506 = load i32, i32* %curr_pos877, align 4, !tbaa !155
  store i32 %506, i32* %position, align 4, !tbaa !5
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.878

for.cond.878:                                     ; preds = %for.inc.888, %if.else.875
  %507 = load i32, i32* %k, align 4, !tbaa !5
  %508 = load i32, i32* %spp_out, align 4, !tbaa !5
  %cmp879 = icmp slt i32 %507, %508
  br i1 %cmp879, label %for.body.881, label %for.end.890

for.body.881:                                     ; preds = %for.cond.878
  %509 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom882 = sext i32 %509 to i64
  %arrayidx883 = getelementptr inbounds [64 x i8*], [64 x i8*]* %devc_contone, i32 0, i64 %idxprom882
  %510 = load i8*, i8** %arrayidx883, align 8, !tbaa !1
  %511 = load i32, i32* %position, align 4, !tbaa !5
  %idx.ext884 = sext i32 %511 to i64
  %add.ptr885 = getelementptr inbounds i8, i8* %510, i64 %idx.ext884
  %512 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom886 = sext i32 %512 to i64
  %arrayidx887 = getelementptr inbounds [64 x i8*], [64 x i8*]* %devc_contone, i32 0, i64 %idxprom886
  store i8* %add.ptr885, i8** %arrayidx887, align 8, !tbaa !1
  br label %for.inc.888

for.inc.888:                                      ; preds = %for.body.881
  %513 = load i32, i32* %k, align 4, !tbaa !5
  %inc889 = add nsw i32 %513, 1
  store i32 %inc889, i32* %k, align 4, !tbaa !5
  br label %for.cond.878

for.end.890:                                      ; preds = %for.cond.878
  %514 = load i32, i32* %src_size, align 4, !tbaa !5
  %515 = load i32, i32* %dest_height, align 4, !tbaa !5
  %cmp891 = icmp eq i32 %514, %515
  br i1 %cmp891, label %if.then.893, label %if.else.917

if.then.893:                                      ; preds = %for.end.890
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.894

for.cond.894:                                     ; preds = %for.inc.914, %if.then.893
  %516 = load i32, i32* %k, align 4, !tbaa !5
  %517 = load i32, i32* %data_length, align 4, !tbaa !5
  %cmp895 = icmp slt i32 %516, %517
  br i1 %cmp895, label %for.body.897, label %for.end.916

for.body.897:                                     ; preds = %for.cond.894
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.898

for.cond.898:                                     ; preds = %for.inc.911, %for.body.897
  %518 = load i32, i32* %j, align 4, !tbaa !5
  %519 = load i32, i32* %spp_out, align 4, !tbaa !5
  %cmp899 = icmp slt i32 %518, %519
  br i1 %cmp899, label %for.body.901, label %for.end.913

for.body.901:                                     ; preds = %for.cond.898
  %520 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom902 = sext i32 %520 to i64
  %521 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom903 = sext i32 %521 to i64
  %arrayidx904 = getelementptr inbounds [64 x i8*], [64 x i8*]* %psrc_plane, i32 0, i64 %idxprom903
  %522 = load i8*, i8** %arrayidx904, align 8, !tbaa !1
  %arrayidx905 = getelementptr inbounds i8, i8* %522, i64 %idxprom902
  %523 = load i8, i8* %arrayidx905, align 1, !tbaa !31
  %524 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom906 = sext i32 %524 to i64
  %arrayidx907 = getelementptr inbounds [64 x i8*], [64 x i8*]* %devc_contone, i32 0, i64 %idxprom906
  %525 = load i8*, i8** %arrayidx907, align 8, !tbaa !1
  store i8 %523, i8* %525, align 1, !tbaa !31
  %526 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom908 = sext i32 %526 to i64
  %arrayidx909 = getelementptr inbounds [64 x i8*], [64 x i8*]* %devc_contone, i32 0, i64 %idxprom908
  %527 = load i8*, i8** %arrayidx909, align 8, !tbaa !1
  %add.ptr910 = getelementptr inbounds i8, i8* %527, i64 64
  store i8* %add.ptr910, i8** %arrayidx909, align 8, !tbaa !1
  br label %for.inc.911

for.inc.911:                                      ; preds = %for.body.901
  %528 = load i32, i32* %j, align 4, !tbaa !5
  %inc912 = add nsw i32 %528, 1
  store i32 %inc912, i32* %j, align 4, !tbaa !5
  br label %for.cond.898

for.end.913:                                      ; preds = %for.cond.898
  br label %for.inc.914

for.inc.914:                                      ; preds = %for.end.913
  %529 = load i32, i32* %k, align 4, !tbaa !5
  %inc915 = add nsw i32 %529, 1
  store i32 %inc915, i32* %k, align 4, !tbaa !5
  br label %for.cond.894

for.end.916:                                      ; preds = %for.cond.894
  br label %if.end.1005

if.else.917:                                      ; preds = %for.end.890
  %530 = load i32, i32* %scale_factor, align 4, !tbaa !5
  %conv918 = sext i32 %530 to i64
  %cmp919 = icmp eq i64 %conv918, 128
  br i1 %cmp919, label %if.then.921, label %if.else.951

if.then.921:                                      ; preds = %if.else.917
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.922

for.cond.922:                                     ; preds = %for.inc.948, %if.then.921
  %531 = load i32, i32* %k, align 4, !tbaa !5
  %532 = load i32, i32* %data_length, align 4, !tbaa !5
  %cmp923 = icmp slt i32 %531, %532
  br i1 %cmp923, label %for.body.925, label %for.end.950

for.body.925:                                     ; preds = %for.cond.922
  %533 = load i32, i32* %scale_factor, align 4, !tbaa !5
  %534 = load i32, i32* %k, align 4, !tbaa !5
  %mul926 = mul nsw i32 %533, %534
  %add927 = add nsw i32 %mul926, 128
  %shr928 = ashr i32 %add927, 8
  store i32 %shr928, i32* %offset, align 4, !tbaa !5
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.929

for.cond.929:                                     ; preds = %for.inc.945, %for.body.925
  %535 = load i32, i32* %j, align 4, !tbaa !5
  %536 = load i32, i32* %spp_out, align 4, !tbaa !5
  %cmp930 = icmp slt i32 %535, %536
  br i1 %cmp930, label %for.body.932, label %for.end.947

for.body.932:                                     ; preds = %for.cond.929
  %537 = load i32, i32* %offset, align 4, !tbaa !5
  %idxprom933 = sext i32 %537 to i64
  %538 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom934 = sext i32 %538 to i64
  %arrayidx935 = getelementptr inbounds [64 x i8*], [64 x i8*]* %psrc_plane, i32 0, i64 %idxprom934
  %539 = load i8*, i8** %arrayidx935, align 8, !tbaa !1
  %arrayidx936 = getelementptr inbounds i8, i8* %539, i64 %idxprom933
  %540 = load i8, i8* %arrayidx936, align 1, !tbaa !31
  %541 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom937 = sext i32 %541 to i64
  %arrayidx938 = getelementptr inbounds [64 x i8*], [64 x i8*]* %devc_contone, i32 0, i64 %idxprom937
  %542 = load i8*, i8** %arrayidx938, align 8, !tbaa !1
  %add.ptr939 = getelementptr inbounds i8, i8* %542, i64 64
  store i8 %540, i8* %add.ptr939, align 1, !tbaa !31
  %543 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom940 = sext i32 %543 to i64
  %arrayidx941 = getelementptr inbounds [64 x i8*], [64 x i8*]* %devc_contone, i32 0, i64 %idxprom940
  %544 = load i8*, i8** %arrayidx941, align 8, !tbaa !1
  store i8 %540, i8* %544, align 1, !tbaa !31
  %545 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom942 = sext i32 %545 to i64
  %arrayidx943 = getelementptr inbounds [64 x i8*], [64 x i8*]* %devc_contone, i32 0, i64 %idxprom942
  %546 = load i8*, i8** %arrayidx943, align 8, !tbaa !1
  %add.ptr944 = getelementptr inbounds i8, i8* %546, i64 128
  store i8* %add.ptr944, i8** %arrayidx943, align 8, !tbaa !1
  br label %for.inc.945

for.inc.945:                                      ; preds = %for.body.932
  %547 = load i32, i32* %j, align 4, !tbaa !5
  %inc946 = add nsw i32 %547, 1
  store i32 %inc946, i32* %j, align 4, !tbaa !5
  br label %for.cond.929

for.end.947:                                      ; preds = %for.cond.929
  br label %for.inc.948

for.inc.948:                                      ; preds = %for.end.947
  %548 = load i32, i32* %k, align 4, !tbaa !5
  %add949 = add nsw i32 %548, 2
  store i32 %add949, i32* %k, align 4, !tbaa !5
  br label %for.cond.922

for.end.950:                                      ; preds = %for.cond.922
  br label %if.end.1004

if.else.951:                                      ; preds = %if.else.917
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.952

for.cond.952:                                     ; preds = %for.inc.1001, %if.else.951
  %549 = load i32, i32* %k, align 4, !tbaa !5
  %550 = load i32, i32* %data_length, align 4, !tbaa !5
  %cmp953 = icmp slt i32 %549, %550
  br i1 %cmp953, label %for.body.955, label %for.end.1003

for.body.955:                                     ; preds = %for.cond.952
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.956

for.cond.956:                                     ; preds = %for.inc.971, %for.body.955
  %551 = load i32, i32* %j, align 4, !tbaa !5
  %552 = load i32, i32* %spp_out, align 4, !tbaa !5
  %cmp957 = icmp slt i32 %551, %552
  br i1 %cmp957, label %for.body.959, label %for.end.973

for.body.959:                                     ; preds = %for.cond.956
  %state960 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %Q961 = getelementptr inbounds %struct.ia_, %struct.ia_* %state960, i32 0, i32 0
  %553 = load i32, i32* %Q961, align 4, !tbaa !151
  %idxprom962 = sext i32 %553 to i64
  %554 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom963 = sext i32 %554 to i64
  %arrayidx964 = getelementptr inbounds [64 x i8*], [64 x i8*]* %psrc_plane, i32 0, i64 %idxprom963
  %555 = load i8*, i8** %arrayidx964, align 8, !tbaa !1
  %arrayidx965 = getelementptr inbounds i8, i8* %555, i64 %idxprom962
  %556 = load i8, i8* %arrayidx965, align 1, !tbaa !31
  %557 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom966 = sext i32 %557 to i64
  %arrayidx967 = getelementptr inbounds [64 x i8*], [64 x i8*]* %devc_contone, i32 0, i64 %idxprom966
  %558 = load i8*, i8** %arrayidx967, align 8, !tbaa !1
  store i8 %556, i8* %558, align 1, !tbaa !31
  %559 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom968 = sext i32 %559 to i64
  %arrayidx969 = getelementptr inbounds [64 x i8*], [64 x i8*]* %devc_contone, i32 0, i64 %idxprom968
  %560 = load i8*, i8** %arrayidx969, align 8, !tbaa !1
  %add.ptr970 = getelementptr inbounds i8, i8* %560, i64 64
  store i8* %add.ptr970, i8** %arrayidx969, align 8, !tbaa !1
  br label %for.inc.971

for.inc.971:                                      ; preds = %for.body.959
  %561 = load i32, i32* %j, align 4, !tbaa !5
  %inc972 = add nsw i32 %561, 1
  store i32 %inc972, i32* %j, align 4, !tbaa !5
  br label %for.cond.956

for.end.973:                                      ; preds = %for.cond.956
  br label %do.body.974

do.body.974:                                      ; preds = %for.end.973
  %step975 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 1
  %dR976 = getelementptr inbounds %struct.ie_, %struct.ie_* %step975, i32 0, i32 1
  %562 = load i32, i32* %dR976, align 4, !tbaa !149
  %state977 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %R978 = getelementptr inbounds %struct.ia_, %struct.ia_* %state977, i32 0, i32 1
  %563 = load i32, i32* %R978, align 4, !tbaa !152
  %sub979 = sub i32 %563, %562
  store i32 %sub979, i32* %R978, align 4, !tbaa !152
  %state980 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %R981 = getelementptr inbounds %struct.ia_, %struct.ia_* %state980, i32 0, i32 1
  %564 = load i32, i32* %R981, align 4, !tbaa !152
  %cmp982 = icmp slt i32 %564, 0
  br i1 %cmp982, label %if.then.984, label %if.end.993

if.then.984:                                      ; preds = %do.body.974
  %state985 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %Q986 = getelementptr inbounds %struct.ia_, %struct.ia_* %state985, i32 0, i32 0
  %565 = load i32, i32* %Q986, align 4, !tbaa !151
  %inc987 = add nsw i32 %565, 1
  store i32 %inc987, i32* %Q986, align 4, !tbaa !151
  %step988 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 1
  %N989 = getelementptr inbounds %struct.ie_, %struct.ie_* %step988, i32 0, i32 2
  %566 = load i32, i32* %N989, align 4, !tbaa !150
  %state990 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %R991 = getelementptr inbounds %struct.ia_, %struct.ia_* %state990, i32 0, i32 1
  %567 = load i32, i32* %R991, align 4, !tbaa !152
  %add992 = add i32 %567, %566
  store i32 %add992, i32* %R991, align 4, !tbaa !152
  br label %if.end.993

if.end.993:                                       ; preds = %if.then.984, %do.body.974
  %step994 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 1
  %dQ995 = getelementptr inbounds %struct.ie_, %struct.ie_* %step994, i32 0, i32 0
  %568 = load i32, i32* %dQ995, align 4, !tbaa !145
  %state996 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_ht, i32 0, i32 0
  %Q997 = getelementptr inbounds %struct.ia_, %struct.ia_* %state996, i32 0, i32 0
  %569 = load i32, i32* %Q997, align 4, !tbaa !151
  %add998 = add nsw i32 %569, %568
  store i32 %add998, i32* %Q997, align 4, !tbaa !151
  br label %do.cond.999

do.cond.999:                                      ; preds = %if.end.993
  br label %do.end.1000

do.end.1000:                                      ; preds = %do.cond.999
  br label %for.inc.1001

for.inc.1001:                                     ; preds = %do.end.1000
  %570 = load i32, i32* %k, align 4, !tbaa !5
  %inc1002 = add nsw i32 %570, 1
  store i32 %inc1002, i32* %k, align 4, !tbaa !5
  br label %for.cond.952

for.end.1003:                                     ; preds = %for.cond.952
  br label %if.end.1004

if.end.1004:                                      ; preds = %for.end.1003, %for.end.950
  br label %if.end.1005

if.end.1005:                                      ; preds = %if.end.1004, %for.end.916
  br label %if.end.1006

if.end.1006:                                      ; preds = %if.end.1005, %for.end.874
  %571 = load i32, i32* %vdi, align 4, !tbaa !5
  %572 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %ht_landscape1007 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %572, i32 0, i32 79
  %count1008 = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape1007, i32 0, i32 0
  %573 = load i32, i32* %count1008, align 4, !tbaa !131
  %add1009 = add nsw i32 %573, %571
  store i32 %add1009, i32* %count1008, align 4, !tbaa !131
  %574 = load i32, i32* %vdi, align 4, !tbaa !5
  %575 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %ht_landscape1010 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %575, i32 0, i32 79
  %curr_pos1011 = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape1010, i32 0, i32 3
  %576 = load i32, i32* %curr_pos1011, align 4, !tbaa !155
  %idxprom1012 = sext i32 %576 to i64
  %577 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %ht_landscape1013 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %577, i32 0, i32 79
  %widths1014 = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape1013, i32 0, i32 1
  %arrayidx1015 = getelementptr inbounds [64 x i32], [64 x i32]* %widths1014, i32 0, i64 %idxprom1012
  store i32 %574, i32* %arrayidx1015, align 4, !tbaa !5
  %578 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %ht_landscape1016 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %578, i32 0, i32 79
  %index1017 = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape1016, i32 0, i32 4
  %579 = load i32, i32* %index1017, align 4, !tbaa !143
  %580 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %ht_landscape1018 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %580, i32 0, i32 79
  %curr_pos1019 = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape1018, i32 0, i32 3
  %581 = load i32, i32* %curr_pos1019, align 4, !tbaa !155
  %add1020 = add nsw i32 %581, %579
  store i32 %add1020, i32* %curr_pos1019, align 4, !tbaa !155
  %582 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %ht_landscape1021 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %582, i32 0, i32 79
  %num_contones1022 = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape1021, i32 0, i32 5
  %583 = load i32, i32* %num_contones1022, align 4, !tbaa !156
  %inc1023 = add nsw i32 %583, 1
  store i32 %inc1023, i32* %num_contones1022, align 4, !tbaa !156
  br label %sw.epilog.1025

sw.default.1024:                                  ; preds = %sw.bb.603
  br label %sw.epilog.1025

sw.epilog.1025:                                   ; preds = %sw.default.1024, %if.end.1006, %if.end.812
  br label %sw.epilog.1027

sw.default.1026:                                  ; preds = %for.end.338
  br label %sw.epilog.1027

sw.epilog.1027:                                   ; preds = %sw.default.1026, %sw.epilog.1025, %sw.epilog.602
  br label %flush

flush:                                            ; preds = %sw.epilog.1027, %if.then.221
  %584 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %thresh_buffer1028 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %584, i32 0, i32 76
  %585 = load i8*, i8** %thresh_buffer1028, align 8, !tbaa !135
  %586 = load i32, i32* %offset_threshold, align 4, !tbaa !5
  %idx.ext1029 = sext i32 %586 to i64
  %add.ptr1030 = getelementptr inbounds i8, i8* %585, i64 %idx.ext1029
  store i8* %add.ptr1030, i8** %thresh_align, align 8, !tbaa !1
  %587 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %588 = load i32, i32* %xrun, align 4, !tbaa !5
  %589 = load i32, i32* %dest_width, align 4, !tbaa !5
  %590 = load i32, i32* %dest_height, align 4, !tbaa !5
  %591 = load i8*, i8** %thresh_align, align 8, !tbaa !1
  %592 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [64 x i32], [64 x i32]* %offset_contone, i32 0, i32 0
  %593 = load i32, i32* %contone_stride, align 4, !tbaa !5
  %call1031 = call i32 @gxht_thresh_planes(%struct.gx_image_enum_s* %587, i32 %588, i32 %589, i32 %590, i8* %591, %struct.gx_device_s* %592, i32* %arraydecay, i32 %593) #8
  store i32 %call1031, i32* %code, align 4, !tbaa !5
  %594 = load i8*, i8** %psrc_cm_start, align 8, !tbaa !1
  %cmp1032 = icmp ne i8* %594, null
  br i1 %cmp1032, label %if.then.1034, label %if.end.1038

if.then.1034:                                     ; preds = %flush
  %595 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %pis1035 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %595, i32 0, i32 30
  %596 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis1035, align 8, !tbaa !36
  %memory = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %596, i32 0, i32 1
  %597 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !157
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %597, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %598 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !158
  %599 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %pis1036 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %599, i32 0, i32 30
  %600 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis1036, align 8, !tbaa !36
  %memory1037 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %600, i32 0, i32 1
  %601 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1037, align 8, !tbaa !157
  %602 = load i8*, i8** %psrc_cm_start, align 8, !tbaa !1
  call void %598(%struct.gs_memory_s* %601, i8* %602, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i32 0, i32 0)) #8
  br label %if.end.1038

if.end.1038:                                      ; preds = %if.then.1034, %flush
  %603 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %603, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.1038, %if.then.38, %if.then.8
  %604 = bitcast i32* %num_des_comp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %604) #1
  %605 = bitcast i16* %conc to i8*
  call void @llvm.lifetime.end(i64 2, i8* %605) #1
  %606 = bitcast i32* %psrc_planestride to i8*
  call void @llvm.lifetime.end(i64 4, i8* %606) #1
  %607 = bitcast i8** %curr_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %607) #1
  %608 = bitcast i8** %bufend to i8*
  call void @llvm.lifetime.end(i64 8, i8* %608) #1
  %609 = bitcast i8** %psrc_cm_start to i8*
  call void @llvm.lifetime.end(i64 8, i8* %609) #1
  %610 = bitcast i8** %psrc_cm to i8*
  call void @llvm.lifetime.end(i64 8, i8* %610) #1
  %611 = bitcast i32* %spp_cm to i8*
  call void @llvm.lifetime.end(i64 4, i8* %611) #1
  %612 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %612) #1
  %613 = bitcast %struct.gx_dda_int_s* %dda_ht to i8*
  call void @llvm.lifetime.end(i64 20, i8* %613) #1
  %614 = bitcast i32* %offset_threshold to i8*
  call void @llvm.lifetime.end(i64 4, i8* %614) #1
  %615 = bitcast [64 x i32]* %offset_contone to i8*
  call void @llvm.lifetime.end(i64 256, i8* %615) #1
  %616 = bitcast i8** %psrc_temp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %616) #1
  %617 = bitcast i32* %flush_buff to i8*
  call void @llvm.lifetime.end(i64 4, i8* %617) #1
  %618 = bitcast i32* %src_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %618) #1
  %619 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %619) #1
  %620 = bitcast i32* %scale_factor to i8*
  call void @llvm.lifetime.end(i64 4, i8* %620) #1
  %621 = bitcast i32* %contone_stride to i8*
  call void @llvm.lifetime.end(i64 4, i8* %621) #1
  %622 = bitcast i32* %offset_bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %622) #1
  %623 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %623) #1
  %624 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %624) #1
  %625 = bitcast i32* %position to i8*
  call void @llvm.lifetime.end(i64 4, i8* %625) #1
  %626 = bitcast i32* %spp_out to i8*
  call void @llvm.lifetime.end(i64 4, i8* %626) #1
  %627 = bitcast i32* %data_length to i8*
  call void @llvm.lifetime.end(i64 4, i8* %627) #1
  %628 = bitcast i32* %dest_height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %628) #1
  %629 = bitcast i32* %dest_width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %629) #1
  %630 = bitcast i8** %psrc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %630) #1
  %631 = bitcast i8** %devc_contone_gray to i8*
  call void @llvm.lifetime.end(i64 8, i8* %631) #1
  %632 = bitcast [64 x i8*]* %psrc_plane to i8*
  call void @llvm.lifetime.end(i64 512, i8* %632) #1
  %633 = bitcast [64 x i8*]* %devc_contone to i8*
  call void @llvm.lifetime.end(i64 512, i8* %633) #1
  %634 = bitcast i8** %thresh_align to i8*
  call void @llvm.lifetime.end(i64 8, i8* %634) #1
  %635 = bitcast i32* %xrun to i8*
  call void @llvm.lifetime.end(i64 4, i8* %635) #1
  %636 = bitcast i32* %vdi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %636) #1
  %637 = bitcast i32* %posture to i8*
  call void @llvm.lifetime.end(i64 4, i8* %637) #1
  %638 = bitcast %struct.gx_image_enum_s** %penum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %638) #1
  %639 = load i32, i32* %retval
  ret i32 %639
}

; Function Attrs: nounwind uwtable
define internal i32 @image_render_color_icc(%struct.gx_image_enum_s* %penum_orig, i8* %buffer, i32 %data_x, i32 %w, i32 %h, %struct.gx_device_s* %dev) #0 {
entry:
  %retval = alloca i32, align 4
  %penum_orig.addr = alloca %struct.gx_image_enum_s*, align 8
  %buffer.addr = alloca i8*, align 8
  %data_x.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %penum = alloca %struct.gx_image_enum_s*, align 8
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
  %devc1 = alloca %struct.gx_device_color_s, align 8
  %devc2 = alloca %struct.gx_device_color_s, align 8
  %pdevc = alloca %struct.gx_device_color_s*, align 8
  %pdevc_next = alloca %struct.gx_device_color_s*, align 8
  %ptemp = alloca %struct.gx_device_color_s*, align 8
  %spp = alloca i32, align 4
  %psrc_initial = alloca i8*, align 8
  %psrc = alloca i8*, align 8
  %rsrc = alloca i8*, align 8
  %xrun = alloca i32, align 4
  %yrun = alloca i32, align 4
  %irun = alloca i32, align 4
  %run = alloca %union.color_samples, align 4
  %next = alloca %union.color_samples, align 4
  %bufend = alloca i8*, align 8
  %code = alloca i32, align 4
  %psrc_cm = alloca i8*, align 8
  %psrc_cm_start = alloca i8*, align 8
  %k = alloca i32, align 4
  %conc = alloca [64 x i16], align 16
  %spp_cm = alloca i32, align 4
  %color = alloca i64, align 8
  %must_halftone = alloca i32, align 4
  %has_transfer = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %xi = alloca i32, align 4
  %wi = alloca i32, align 4
  %yi = alloca i32, align 4
  %hi = alloca i32, align 4
  %xi202 = alloca i32, align 4
  %wi203 = alloca i32, align 4
  %yi221 = alloca i32, align 4
  %hi222 = alloca i32, align 4
  store %struct.gx_image_enum_s* %penum_orig, %struct.gx_image_enum_s** %penum_orig.addr, align 8, !tbaa !1
  store i8* %buffer, i8** %buffer.addr, align 8, !tbaa !1
  store i32 %data_x, i32* %data_x.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_image_enum_s** %penum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum_orig.addr, align 8, !tbaa !1
  store %struct.gx_image_enum_s* %1, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %2 = bitcast %struct.gs_imager_state_s** %pis to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %pis1 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %3, i32 0, i32 30
  %4 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis1, align 8, !tbaa !36
  store %struct.gs_imager_state_s* %4, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %5 = bitcast i32* %lop to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %log_op = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %6, i32 0, i32 44
  %7 = load i32, i32* %log_op, align 4, !tbaa !96
  store i32 %7, i32* %lop, align 4, !tbaa !5
  %8 = bitcast %struct.gx_dda_fixed_point_s* %pnext to i8*
  call void @llvm.lifetime.start(i64 40, i8* %8) #1
  %9 = bitcast i32* %posture to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %posture2 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %10, i32 0, i32 37
  %11 = load i32, i32* %posture2, align 4, !tbaa !91
  store i32 %11, i32* %posture, align 4, !tbaa !31
  %12 = bitcast i32* %xprev to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast i32* %yprev to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast i32* %pdyx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast i32* %pdyy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = bitcast i32* %vci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = bitcast i32* %vdi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = bitcast %struct.gx_device_color_s* %devc1 to i8*
  call void @llvm.lifetime.start(i64 656, i8* %18) #1
  %19 = bitcast %struct.gx_device_color_s* %devc2 to i8*
  call void @llvm.lifetime.start(i64 656, i8* %19) #1
  %20 = bitcast %struct.gx_device_color_s** %pdevc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  %21 = bitcast %struct.gx_device_color_s** %pdevc_next to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  %22 = bitcast %struct.gx_device_color_s** %ptemp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #1
  %23 = bitcast i32* %spp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %24 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %spp3 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %24, i32 0, i32 14
  %25 = load i8, i8* %spp3, align 1, !tbaa !30
  %conv = zext i8 %25 to i32
  store i32 %conv, i32* %spp, align 4, !tbaa !5
  %26 = bitcast i8** %psrc_initial to i8*
  call void @llvm.lifetime.start(i64 8, i8* %26) #1
  %27 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %28 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %29 = load i32, i32* %spp, align 4, !tbaa !5
  %mul = mul nsw i32 %28, %29
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %27, i64 %idx.ext
  store i8* %add.ptr, i8** %psrc_initial, align 8, !tbaa !1
  %30 = bitcast i8** %psrc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %30) #1
  %31 = load i8*, i8** %psrc_initial, align 8, !tbaa !1
  store i8* %31, i8** %psrc, align 8, !tbaa !1
  %32 = bitcast i8** %rsrc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %32) #1
  %33 = load i8*, i8** %psrc, align 8, !tbaa !1
  %34 = load i32, i32* %spp, align 4, !tbaa !5
  %idx.ext4 = sext i32 %34 to i64
  %add.ptr5 = getelementptr inbounds i8, i8* %33, i64 %idx.ext4
  store i8* %add.ptr5, i8** %rsrc, align 8, !tbaa !1
  %35 = bitcast i32* %xrun to i8*
  call void @llvm.lifetime.start(i64 4, i8* %35) #1
  %36 = bitcast i32* %yrun to i8*
  call void @llvm.lifetime.start(i64 4, i8* %36) #1
  %37 = bitcast i32* %irun to i8*
  call void @llvm.lifetime.start(i64 4, i8* %37) #1
  %38 = bitcast %union.color_samples* %run to i8*
  call void @llvm.lifetime.start(i64 64, i8* %38) #1
  %39 = bitcast %union.color_samples* %next to i8*
  call void @llvm.lifetime.start(i64 64, i8* %39) #1
  %40 = bitcast i8** %bufend to i8*
  call void @llvm.lifetime.start(i64 8, i8* %40) #1
  store i8* null, i8** %bufend, align 8, !tbaa !1
  %41 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %41) #1
  store i32 0, i32* %code, align 4, !tbaa !5
  %42 = bitcast i8** %psrc_cm to i8*
  call void @llvm.lifetime.start(i64 8, i8* %42) #1
  store i8* null, i8** %psrc_cm, align 8, !tbaa !1
  %43 = bitcast i8** %psrc_cm_start to i8*
  call void @llvm.lifetime.start(i64 8, i8* %43) #1
  store i8* null, i8** %psrc_cm_start, align 8, !tbaa !1
  %44 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %44) #1
  %45 = bitcast [64 x i16]* %conc to i8*
  call void @llvm.lifetime.start(i64 128, i8* %45) #1
  %46 = bitcast i32* %spp_cm to i8*
  call void @llvm.lifetime.start(i64 4, i8* %46) #1
  store i32 0, i32* %spp_cm, align 4, !tbaa !5
  %47 = bitcast i64* %color to i8*
  call void @llvm.lifetime.start(i64 8, i8* %47) #1
  %48 = bitcast i32* %must_halftone to i8*
  call void @llvm.lifetime.start(i64 4, i8* %48) #1
  %49 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %icc_setup = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %49, i32 0, i32 80
  %must_halftone6 = getelementptr inbounds %struct.gx_image_icc_setup_s, %struct.gx_image_icc_setup_s* %icc_setup, i32 0, i32 2
  %50 = load i32, i32* %must_halftone6, align 4, !tbaa !86
  store i32 %50, i32* %must_halftone, align 4, !tbaa !5
  %51 = bitcast i32* %has_transfer to i8*
  call void @llvm.lifetime.start(i64 4, i8* %51) #1
  %52 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %icc_setup7 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %52, i32 0, i32 80
  %has_transfer8 = getelementptr inbounds %struct.gx_image_icc_setup_s, %struct.gx_image_icc_setup_s* %icc_setup7, i32 0, i32 3
  %53 = load i32, i32* %has_transfer8, align 4, !tbaa !87
  store i32 %53, i32* %has_transfer, align 4, !tbaa !5
  store %struct.gx_device_color_s* %devc1, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  store %struct.gx_device_color_s* %devc2, %struct.gx_device_color_s** %pdevc_next, align 8, !tbaa !1
  %54 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %54, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_none, %struct.gx_device_color_type_s** %type, align 8, !tbaa !100
  %55 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc_next, align 8, !tbaa !1
  %type9 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %55, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_none, %struct.gx_device_color_type_s** %type9, align 8, !tbaa !100
  %56 = load i32, i32* %h.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %56, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %57 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum_orig.addr, align 8, !tbaa !1
  %58 = load i8*, i8** %psrc, align 8, !tbaa !1
  %59 = load i32, i32* %w.addr, align 4, !tbaa !5
  %60 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call i32 @image_color_icc_prep(%struct.gx_image_enum_s* %57, i8* %58, i32 %59, %struct.gx_device_s* %60, i32* %spp_cm, i8** %psrc_cm, i8** %psrc_cm_start, i8** %bufend, i32 0) #8
  store i32 %call, i32* %code, align 4, !tbaa !5
  %61 = load i32, i32* %code, align 4, !tbaa !5
  %cmp11 = icmp slt i32 %61, 0
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end
  %62 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %62, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %if.end
  %arrayidx = getelementptr inbounds [64 x i16], [64 x i16]* %conc, i32 0, i64 0
  %63 = bitcast i16* %arrayidx to i8*
  %call15 = call i8* @memset(i8* %63, i32 0, i64 128) #7
  %64 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %dda = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %64, i32 0, i32 55
  %pixel0 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda, i32 0, i32 2
  %65 = bitcast %struct.gx_dda_fixed_point_s* %pnext to i8*
  %66 = bitcast %struct.gx_dda_fixed_point_s* %pixel0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %65, i8* %66, i64 40, i32 4, i1 false), !tbaa.struct !101
  %x = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pnext, i32 0, i32 0
  %state = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x, i32 0, i32 0
  %Q = getelementptr inbounds %struct._a, %struct._a* %state, i32 0, i32 0
  %67 = load i32, i32* %Q, align 4, !tbaa !102
  store i32 %67, i32* %xprev, align 4, !tbaa !5
  store i32 %67, i32* %xrun, align 4, !tbaa !5
  %y = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pnext, i32 0, i32 1
  %state16 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y, i32 0, i32 0
  %Q17 = getelementptr inbounds %struct._a, %struct._a* %state16, i32 0, i32 0
  %68 = load i32, i32* %Q17, align 4, !tbaa !103
  store i32 %68, i32* %yprev, align 4, !tbaa !5
  store i32 %68, i32* %yrun, align 4, !tbaa !5
  %69 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %dda18 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %69, i32 0, i32 55
  %row = getelementptr inbounds %struct.dd_, %struct.dd_* %dda18, i32 0, i32 0
  %x19 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %row, i32 0, i32 0
  %state20 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x19, i32 0, i32 0
  %Q21 = getelementptr inbounds %struct._a, %struct._a* %state20, i32 0, i32 0
  %70 = load i32, i32* %Q21, align 4, !tbaa !104
  %71 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %cur = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %71, i32 0, i32 53
  %x22 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cur, i32 0, i32 0
  %72 = load i32, i32* %x22, align 4, !tbaa !105
  %sub = sub nsw i32 %70, %72
  store i32 %sub, i32* %pdyx, align 4, !tbaa !5
  %73 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %dda23 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %73, i32 0, i32 55
  %row24 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda23, i32 0, i32 0
  %y25 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %row24, i32 0, i32 1
  %state26 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y25, i32 0, i32 0
  %Q27 = getelementptr inbounds %struct._a, %struct._a* %state26, i32 0, i32 0
  %74 = load i32, i32* %Q27, align 4, !tbaa !106
  %75 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %cur28 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %75, i32 0, i32 53
  %y29 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cur28, i32 0, i32 1
  %76 = load i32, i32* %y29, align 4, !tbaa !107
  %sub30 = sub nsw i32 %74, %76
  store i32 %sub30, i32* %pdyy, align 4, !tbaa !5
  %77 = load i32, i32* %posture, align 4, !tbaa !31
  switch i32 %77, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.31
  ]

sw.bb:                                            ; preds = %if.end.14
  %78 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %yci = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %78, i32 0, i32 60
  %79 = load i32, i32* %yci, align 4, !tbaa !108
  store i32 %79, i32* %vci, align 4, !tbaa !5
  %80 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %hci = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %80, i32 0, i32 61
  %81 = load i32, i32* %hci, align 4, !tbaa !109
  store i32 %81, i32* %vdi, align 4, !tbaa !5
  %82 = load i32, i32* %xrun, align 4, !tbaa !5
  %add = add nsw i32 %82, 128
  %shr = ashr i32 %add, 8
  store i32 %shr, i32* %irun, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.31:                                         ; preds = %if.end.14
  br label %sw.default

sw.default:                                       ; preds = %if.end.14, %sw.bb.31
  %83 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %xci = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %83, i32 0, i32 62
  %84 = load i32, i32* %xci, align 4, !tbaa !110
  store i32 %84, i32* %vci, align 4, !tbaa !5
  %85 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %wci = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %85, i32 0, i32 63
  %86 = load i32, i32* %wci, align 4, !tbaa !111
  store i32 %86, i32* %vdi, align 4, !tbaa !5
  %87 = load i32, i32* %yrun, align 4, !tbaa !5
  %add32 = add nsw i32 %87, 128
  %shr33 = ashr i32 %add32, 8
  store i32 %shr33, i32* %irun, align 4, !tbaa !5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  br label %do.body

do.body:                                          ; preds = %sw.epilog
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %88 = bitcast %union.color_samples* %run to i8*
  %call34 = call i8* @memset(i8* %88, i32 0, i64 64) #7
  %89 = bitcast %union.color_samples* %next to i8*
  %call35 = call i8* @memset(i8* %89, i32 0, i64 64) #7
  %90 = load i8*, i8** %psrc_cm, align 8, !tbaa !1
  %arrayidx36 = getelementptr inbounds i8, i8* %90, i64 0
  %91 = load i8, i8* %arrayidx36, align 1, !tbaa !31
  %conv37 = zext i8 %91 to i32
  %neg = xor i32 %conv37, -1
  %conv38 = trunc i32 %neg to i8
  %v = bitcast %union.color_samples* %run to [64 x i8]*
  %arrayidx39 = getelementptr inbounds [64 x i8], [64 x i8]* %v, i32 0, i64 0
  store i8 %conv38, i8* %arrayidx39, align 1, !tbaa !31
  br label %while.cond

while.cond:                                       ; preds = %inc.194, %do.end
  %92 = load i8*, i8** %psrc_cm, align 8, !tbaa !1
  %93 = load i8*, i8** %bufend, align 8, !tbaa !1
  %cmp40 = icmp ult i8* %92, %93
  br i1 %cmp40, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %do.body.42

do.body.42:                                       ; preds = %while.body
  %x43 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pnext, i32 0, i32 0
  %step = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x43, i32 0, i32 1
  %dR = getelementptr inbounds %struct._e, %struct._e* %step, i32 0, i32 1
  %94 = load i32, i32* %dR, align 4, !tbaa !114
  %x44 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pnext, i32 0, i32 0
  %state45 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x44, i32 0, i32 0
  %R = getelementptr inbounds %struct._a, %struct._a* %state45, i32 0, i32 1
  %95 = load i32, i32* %R, align 4, !tbaa !115
  %sub46 = sub i32 %95, %94
  store i32 %sub46, i32* %R, align 4, !tbaa !115
  %x47 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pnext, i32 0, i32 0
  %state48 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x47, i32 0, i32 0
  %R49 = getelementptr inbounds %struct._a, %struct._a* %state48, i32 0, i32 1
  %96 = load i32, i32* %R49, align 4, !tbaa !115
  %cmp50 = icmp slt i32 %96, 0
  br i1 %cmp50, label %if.then.52, label %if.end.62

if.then.52:                                       ; preds = %do.body.42
  %x53 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pnext, i32 0, i32 0
  %state54 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x53, i32 0, i32 0
  %Q55 = getelementptr inbounds %struct._a, %struct._a* %state54, i32 0, i32 0
  %97 = load i32, i32* %Q55, align 4, !tbaa !102
  %inc = add nsw i32 %97, 1
  store i32 %inc, i32* %Q55, align 4, !tbaa !102
  %x56 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pnext, i32 0, i32 0
  %step57 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x56, i32 0, i32 1
  %N = getelementptr inbounds %struct._e, %struct._e* %step57, i32 0, i32 2
  %98 = load i32, i32* %N, align 4, !tbaa !116
  %x58 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pnext, i32 0, i32 0
  %state59 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x58, i32 0, i32 0
  %R60 = getelementptr inbounds %struct._a, %struct._a* %state59, i32 0, i32 1
  %99 = load i32, i32* %R60, align 4, !tbaa !115
  %add61 = add i32 %99, %98
  store i32 %add61, i32* %R60, align 4, !tbaa !115
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.52, %do.body.42
  %x63 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pnext, i32 0, i32 0
  %step64 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x63, i32 0, i32 1
  %dQ = getelementptr inbounds %struct._e, %struct._e* %step64, i32 0, i32 0
  %100 = load i32, i32* %dQ, align 4, !tbaa !117
  %x65 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pnext, i32 0, i32 0
  %state66 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x65, i32 0, i32 0
  %Q67 = getelementptr inbounds %struct._a, %struct._a* %state66, i32 0, i32 0
  %101 = load i32, i32* %Q67, align 4, !tbaa !102
  %add68 = add nsw i32 %101, %100
  store i32 %add68, i32* %Q67, align 4, !tbaa !102
  br label %do.cond.69

do.cond.69:                                       ; preds = %if.end.62
  br label %do.end.70

do.end.70:                                        ; preds = %do.cond.69
  br label %do.body.71

do.body.71:                                       ; preds = %do.end.70
  %y72 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pnext, i32 0, i32 1
  %step73 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y72, i32 0, i32 1
  %dR74 = getelementptr inbounds %struct._e, %struct._e* %step73, i32 0, i32 1
  %102 = load i32, i32* %dR74, align 4, !tbaa !118
  %y75 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pnext, i32 0, i32 1
  %state76 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y75, i32 0, i32 0
  %R77 = getelementptr inbounds %struct._a, %struct._a* %state76, i32 0, i32 1
  %103 = load i32, i32* %R77, align 4, !tbaa !119
  %sub78 = sub i32 %103, %102
  store i32 %sub78, i32* %R77, align 4, !tbaa !119
  %y79 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pnext, i32 0, i32 1
  %state80 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y79, i32 0, i32 0
  %R81 = getelementptr inbounds %struct._a, %struct._a* %state80, i32 0, i32 1
  %104 = load i32, i32* %R81, align 4, !tbaa !119
  %cmp82 = icmp slt i32 %104, 0
  br i1 %cmp82, label %if.then.84, label %if.end.96

if.then.84:                                       ; preds = %do.body.71
  %y85 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pnext, i32 0, i32 1
  %state86 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y85, i32 0, i32 0
  %Q87 = getelementptr inbounds %struct._a, %struct._a* %state86, i32 0, i32 0
  %105 = load i32, i32* %Q87, align 4, !tbaa !103
  %inc88 = add nsw i32 %105, 1
  store i32 %inc88, i32* %Q87, align 4, !tbaa !103
  %y89 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pnext, i32 0, i32 1
  %step90 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y89, i32 0, i32 1
  %N91 = getelementptr inbounds %struct._e, %struct._e* %step90, i32 0, i32 2
  %106 = load i32, i32* %N91, align 4, !tbaa !120
  %y92 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pnext, i32 0, i32 1
  %state93 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y92, i32 0, i32 0
  %R94 = getelementptr inbounds %struct._a, %struct._a* %state93, i32 0, i32 1
  %107 = load i32, i32* %R94, align 4, !tbaa !119
  %add95 = add i32 %107, %106
  store i32 %add95, i32* %R94, align 4, !tbaa !119
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.84, %do.body.71
  %y97 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pnext, i32 0, i32 1
  %step98 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y97, i32 0, i32 1
  %dQ99 = getelementptr inbounds %struct._e, %struct._e* %step98, i32 0, i32 0
  %108 = load i32, i32* %dQ99, align 4, !tbaa !121
  %y100 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pnext, i32 0, i32 1
  %state101 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y100, i32 0, i32 0
  %Q102 = getelementptr inbounds %struct._a, %struct._a* %state101, i32 0, i32 0
  %109 = load i32, i32* %Q102, align 4, !tbaa !103
  %add103 = add nsw i32 %109, %108
  store i32 %add103, i32* %Q102, align 4, !tbaa !103
  br label %do.cond.104

do.cond.104:                                      ; preds = %if.end.96
  br label %do.end.105

do.end.105:                                       ; preds = %do.cond.104
  %110 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %alpha = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %110, i32 0, i32 15
  %111 = load i32, i32* %alpha, align 4, !tbaa !161
  %tobool = icmp ne i32 %111, 0
  br i1 %tobool, label %if.then.106, label %if.else

if.then.106:                                      ; preds = %do.end.105
  br label %if.end.113

if.else:                                          ; preds = %do.end.105
  %v107 = bitcast %union.color_samples* %next to [64 x i8]*
  %arrayidx108 = getelementptr inbounds [64 x i8], [64 x i8]* %v107, i32 0, i64 0
  %112 = load i8*, i8** %psrc_cm, align 8, !tbaa !1
  %113 = load i32, i32* %spp_cm, align 4, !tbaa !5
  %conv109 = sext i32 %113 to i64
  %call110 = call i8* @memcpy(i8* %arrayidx108, i8* %112, i64 %conv109) #7
  %114 = load i32, i32* %spp_cm, align 4, !tbaa !5
  %115 = load i8*, i8** %psrc_cm, align 8, !tbaa !1
  %idx.ext111 = sext i32 %114 to i64
  %add.ptr112 = getelementptr inbounds i8, i8* %115, i64 %idx.ext111
  store i8* %add.ptr112, i8** %psrc_cm, align 8, !tbaa !1
  br label %if.end.113

if.end.113:                                       ; preds = %if.else, %if.then.106
  %116 = load i32, i32* %posture, align 4, !tbaa !31
  %cmp114 = icmp ne i32 %116, 2
  br i1 %cmp114, label %land.lhs.true, label %if.end.122

land.lhs.true:                                    ; preds = %if.end.113
  %all = bitcast %union.color_samples* %next to [16 x i32]*
  %arrayidx116 = getelementptr inbounds [16 x i32], [16 x i32]* %all, i32 0, i64 0
  %117 = load i32, i32* %arrayidx116, align 4, !tbaa !5
  %all117 = bitcast %union.color_samples* %run to [16 x i32]*
  %arrayidx118 = getelementptr inbounds [16 x i32], [16 x i32]* %all117, i32 0, i64 0
  %118 = load i32, i32* %arrayidx118, align 4, !tbaa !5
  %cmp119 = icmp eq i32 %117, %118
  br i1 %cmp119, label %if.then.121, label %if.end.122

if.then.121:                                      ; preds = %land.lhs.true
  br label %inc.194

if.end.122:                                       ; preds = %land.lhs.true, %if.end.113
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.122
  %119 = load i32, i32* %k, align 4, !tbaa !5
  %120 = load i32, i32* %spp_cm, align 4, !tbaa !5
  %cmp123 = icmp slt i32 %119, %120
  br i1 %cmp123, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %121 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom = sext i32 %121 to i64
  %v125 = bitcast %union.color_samples* %next to [64 x i8]*
  %arrayidx126 = getelementptr inbounds [64 x i8], [64 x i8]* %v125, i32 0, i64 %idxprom
  %122 = load i8, i8* %arrayidx126, align 1, !tbaa !31
  %conv127 = zext i8 %122 to i32
  %shl = shl i32 %conv127, 8
  %123 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom128 = sext i32 %123 to i64
  %v129 = bitcast %union.color_samples* %next to [64 x i8]*
  %arrayidx130 = getelementptr inbounds [64 x i8], [64 x i8]* %v129, i32 0, i64 %idxprom128
  %124 = load i8, i8* %arrayidx130, align 1, !tbaa !31
  %conv131 = zext i8 %124 to i32
  %shr132 = ashr i32 %conv131, 0
  %add133 = add nsw i32 %shl, %shr132
  %conv134 = trunc i32 %add133 to i16
  %125 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom135 = sext i32 %125 to i64
  %arrayidx136 = getelementptr inbounds [64 x i16], [64 x i16]* %conc, i32 0, i64 %idxprom135
  store i16 %conv134, i16* %arrayidx136, align 2, !tbaa !99
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %126 = load i32, i32* %k, align 4, !tbaa !5
  %inc137 = add nsw i32 %126, 1
  store i32 %inc137, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %127 = load i32, i32* %must_halftone, align 4, !tbaa !5
  %tobool138 = icmp ne i32 %127, 0
  br i1 %tobool138, label %if.then.140, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %128 = load i32, i32* %has_transfer, align 4, !tbaa !5
  %tobool139 = icmp ne i32 %128, 0
  br i1 %tobool139, label %if.then.140, label %if.else.142

if.then.140:                                      ; preds = %lor.lhs.false, %for.end
  %arrayidx141 = getelementptr inbounds [64 x i16], [64 x i16]* %conc, i32 0, i64 0
  %129 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc_next, align 8, !tbaa !1
  %130 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %131 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %132 = load i32, i32* %has_transfer, align 4, !tbaa !5
  %133 = load i32, i32* %must_halftone, align 4, !tbaa !5
  call void @cmap_transfer_halftone(i16* %arrayidx141, %struct.gx_device_color_s* %129, %struct.gs_imager_state_s* %130, %struct.gx_device_s* %131, i32 %132, i32 %133, i32 1) #8
  br label %if.end.150

if.else.142:                                      ; preds = %lor.lhs.false
  %134 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %134, i32 0, i32 42
  %encode_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 51
  %135 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %encode_color, align 8, !tbaa !162
  %136 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arrayidx143 = getelementptr inbounds [64 x i16], [64 x i16]* %conc, i32 0, i64 0
  %call144 = call i64 %135(%struct.gx_device_s* %136, i16* %arrayidx143) #8
  store i64 %call144, i64* %color, align 8, !tbaa !163
  %137 = load i64, i64* %color, align 8, !tbaa !163
  %cmp145 = icmp ne i64 %137, -1
  br i1 %cmp145, label %if.then.147, label %if.end.149

if.then.147:                                      ; preds = %if.else.142
  %138 = load i64, i64* %color, align 8, !tbaa !163
  %139 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc_next, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %139, i32 0, i32 1
  %pure = bitcast %union._c* %colors to i64*
  store i64 %138, i64* %pure, align 8, !tbaa !163
  %140 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc_next, align 8, !tbaa !1
  %type148 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %140, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_pure, %struct.gx_device_color_type_s** %type148, align 8, !tbaa !100
  br label %if.end.149

if.end.149:                                       ; preds = %if.then.147, %if.else.142
  br label %if.end.150

if.end.150:                                       ; preds = %if.end.149, %if.then.140
  %141 = load i32, i32* %posture, align 4, !tbaa !31
  switch i32 %141, label %sw.default.184 [
    i32 0, label %sw.bb.151
    i32 1, label %sw.bb.167
  ]

sw.bb.151:                                        ; preds = %if.end.150
  %142 = bitcast i32* %xi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %142) #1
  %143 = load i32, i32* %irun, align 4, !tbaa !5
  store i32 %143, i32* %xi, align 4, !tbaa !5
  %144 = bitcast i32* %wi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %144) #1
  %145 = load i32, i32* %xprev, align 4, !tbaa !5
  %add152 = add nsw i32 %145, 128
  %shr153 = ashr i32 %add152, 8
  store i32 %shr153, i32* %irun, align 4, !tbaa !5
  %146 = load i32, i32* %xi, align 4, !tbaa !5
  %sub154 = sub nsw i32 %shr153, %146
  store i32 %sub154, i32* %wi, align 4, !tbaa !5
  %147 = load i32, i32* %wi, align 4, !tbaa !5
  %cmp155 = icmp slt i32 %147, 0
  br i1 %cmp155, label %if.then.157, label %if.end.160

if.then.157:                                      ; preds = %sw.bb.151
  %148 = load i32, i32* %wi, align 4, !tbaa !5
  %149 = load i32, i32* %xi, align 4, !tbaa !5
  %add158 = add nsw i32 %149, %148
  store i32 %add158, i32* %xi, align 4, !tbaa !5
  %150 = load i32, i32* %wi, align 4, !tbaa !5
  %sub159 = sub nsw i32 0, %150
  store i32 %sub159, i32* %wi, align 4, !tbaa !5
  br label %if.end.160

if.end.160:                                       ; preds = %if.then.157, %sw.bb.151
  %151 = load i32, i32* %wi, align 4, !tbaa !5
  %cmp161 = icmp sgt i32 %151, 0
  br i1 %cmp161, label %if.then.163, label %if.end.166

if.then.163:                                      ; preds = %if.end.160
  %152 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %type164 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %152, i32 0, i32 0
  %153 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type164, align 8, !tbaa !100
  %fill_rectangle = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %153, i32 0, i32 5
  %154 = load i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)** %fill_rectangle, align 8, !tbaa !124
  %155 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %156 = load i32, i32* %xi, align 4, !tbaa !5
  %157 = load i32, i32* %vci, align 4, !tbaa !5
  %158 = load i32, i32* %wi, align 4, !tbaa !5
  %159 = load i32, i32* %vdi, align 4, !tbaa !5
  %160 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %161 = load i32, i32* %lop, align 4, !tbaa !5
  %call165 = call i32 %154(%struct.gx_device_color_s* %155, i32 %156, i32 %157, i32 %158, i32 %159, %struct.gx_device_s* %160, i32 %161, %struct.gx_rop_source_s* null) #8
  store i32 %call165, i32* %code, align 4, !tbaa !5
  br label %if.end.166

if.end.166:                                       ; preds = %if.then.163, %if.end.160
  %162 = bitcast i32* %wi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %162) #1
  %163 = bitcast i32* %xi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %163) #1
  br label %sw.epilog.189

sw.bb.167:                                        ; preds = %if.end.150
  %164 = bitcast i32* %yi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %164) #1
  %165 = load i32, i32* %irun, align 4, !tbaa !5
  store i32 %165, i32* %yi, align 4, !tbaa !5
  %166 = bitcast i32* %hi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %166) #1
  %167 = load i32, i32* %yprev, align 4, !tbaa !5
  %add168 = add nsw i32 %167, 128
  %shr169 = ashr i32 %add168, 8
  store i32 %shr169, i32* %irun, align 4, !tbaa !5
  %168 = load i32, i32* %yi, align 4, !tbaa !5
  %sub170 = sub nsw i32 %shr169, %168
  store i32 %sub170, i32* %hi, align 4, !tbaa !5
  %169 = load i32, i32* %hi, align 4, !tbaa !5
  %cmp171 = icmp slt i32 %169, 0
  br i1 %cmp171, label %if.then.173, label %if.end.176

if.then.173:                                      ; preds = %sw.bb.167
  %170 = load i32, i32* %hi, align 4, !tbaa !5
  %171 = load i32, i32* %yi, align 4, !tbaa !5
  %add174 = add nsw i32 %171, %170
  store i32 %add174, i32* %yi, align 4, !tbaa !5
  %172 = load i32, i32* %hi, align 4, !tbaa !5
  %sub175 = sub nsw i32 0, %172
  store i32 %sub175, i32* %hi, align 4, !tbaa !5
  br label %if.end.176

if.end.176:                                       ; preds = %if.then.173, %sw.bb.167
  %173 = load i32, i32* %hi, align 4, !tbaa !5
  %cmp177 = icmp sgt i32 %173, 0
  br i1 %cmp177, label %if.then.179, label %if.end.183

if.then.179:                                      ; preds = %if.end.176
  %174 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %type180 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %174, i32 0, i32 0
  %175 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type180, align 8, !tbaa !100
  %fill_rectangle181 = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %175, i32 0, i32 5
  %176 = load i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)** %fill_rectangle181, align 8, !tbaa !124
  %177 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %178 = load i32, i32* %vci, align 4, !tbaa !5
  %179 = load i32, i32* %yi, align 4, !tbaa !5
  %180 = load i32, i32* %vdi, align 4, !tbaa !5
  %181 = load i32, i32* %hi, align 4, !tbaa !5
  %182 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %183 = load i32, i32* %lop, align 4, !tbaa !5
  %call182 = call i32 %176(%struct.gx_device_color_s* %177, i32 %178, i32 %179, i32 %180, i32 %181, %struct.gx_device_s* %182, i32 %183, %struct.gx_rop_source_s* null) #8
  store i32 %call182, i32* %code, align 4, !tbaa !5
  br label %if.end.183

if.end.183:                                       ; preds = %if.then.179, %if.end.176
  %184 = bitcast i32* %hi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %184) #1
  %185 = bitcast i32* %yi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %185) #1
  br label %sw.epilog.189

sw.default.184:                                   ; preds = %if.end.150
  %186 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs185 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %186, i32 0, i32 42
  %fill_parallelogram = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs185, i32 0, i32 28
  %187 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)** %fill_parallelogram, align 8, !tbaa !126
  %188 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %189 = load i32, i32* %xrun, align 4, !tbaa !5
  %190 = load i32, i32* %yrun, align 4, !tbaa !5
  %191 = load i32, i32* %xprev, align 4, !tbaa !5
  %192 = load i32, i32* %xrun, align 4, !tbaa !5
  %sub186 = sub nsw i32 %191, %192
  %193 = load i32, i32* %yprev, align 4, !tbaa !5
  %194 = load i32, i32* %yrun, align 4, !tbaa !5
  %sub187 = sub nsw i32 %193, %194
  %195 = load i32, i32* %pdyx, align 4, !tbaa !5
  %196 = load i32, i32* %pdyy, align 4, !tbaa !5
  %197 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %198 = load i32, i32* %lop, align 4, !tbaa !5
  %call188 = call i32 %187(%struct.gx_device_s* %188, i32 %189, i32 %190, i32 %sub186, i32 %sub187, i32 %195, i32 %196, %struct.gx_device_color_s* %197, i32 %198) #8
  store i32 %call188, i32* %code, align 4, !tbaa !5
  %199 = load i32, i32* %xprev, align 4, !tbaa !5
  store i32 %199, i32* %xrun, align 4, !tbaa !5
  %200 = load i32, i32* %yprev, align 4, !tbaa !5
  store i32 %200, i32* %yrun, align 4, !tbaa !5
  br label %sw.epilog.189

sw.epilog.189:                                    ; preds = %sw.default.184, %if.end.183, %if.end.166
  %201 = load i32, i32* %code, align 4, !tbaa !5
  %cmp190 = icmp slt i32 %201, 0
  br i1 %cmp190, label %if.then.192, label %if.end.193

if.then.192:                                      ; preds = %sw.epilog.189
  br label %err

if.end.193:                                       ; preds = %sw.epilog.189
  %202 = load i8*, i8** %psrc, align 8, !tbaa !1
  store i8* %202, i8** %rsrc, align 8, !tbaa !1
  %203 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  store %struct.gx_device_color_s* %203, %struct.gx_device_color_s** %ptemp, align 8, !tbaa !1
  %204 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc_next, align 8, !tbaa !1
  store %struct.gx_device_color_s* %204, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %205 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %ptemp, align 8, !tbaa !1
  store %struct.gx_device_color_s* %205, %struct.gx_device_color_s** %pdevc_next, align 8, !tbaa !1
  %206 = bitcast %union.color_samples* %run to i8*
  %207 = bitcast %union.color_samples* %next to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %206, i8* %207, i64 64, i32 4, i1 false), !tbaa.struct !127
  br label %inc.194

inc.194:                                          ; preds = %if.end.193, %if.then.121
  %x195 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pnext, i32 0, i32 0
  %state196 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x195, i32 0, i32 0
  %Q197 = getelementptr inbounds %struct._a, %struct._a* %state196, i32 0, i32 0
  %208 = load i32, i32* %Q197, align 4, !tbaa !102
  store i32 %208, i32* %xprev, align 4, !tbaa !5
  %y198 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pnext, i32 0, i32 1
  %state199 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y198, i32 0, i32 0
  %Q200 = getelementptr inbounds %struct._a, %struct._a* %state199, i32 0, i32 0
  %209 = load i32, i32* %Q200, align 4, !tbaa !103
  store i32 %209, i32* %yprev, align 4, !tbaa !5
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %210 = load i32, i32* %posture, align 4, !tbaa !31
  switch i32 %210, label %sw.default.239 [
    i32 0, label %sw.bb.201
    i32 1, label %sw.bb.220
  ]

sw.bb.201:                                        ; preds = %while.end
  %211 = bitcast i32* %xi202 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %211) #1
  %212 = load i32, i32* %irun, align 4, !tbaa !5
  store i32 %212, i32* %xi202, align 4, !tbaa !5
  %213 = bitcast i32* %wi203 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %213) #1
  %214 = load i32, i32* %xprev, align 4, !tbaa !5
  %add204 = add nsw i32 %214, 128
  %shr205 = ashr i32 %add204, 8
  store i32 %shr205, i32* %irun, align 4, !tbaa !5
  %215 = load i32, i32* %xi202, align 4, !tbaa !5
  %sub206 = sub nsw i32 %shr205, %215
  store i32 %sub206, i32* %wi203, align 4, !tbaa !5
  %216 = load i32, i32* %wi203, align 4, !tbaa !5
  %cmp207 = icmp slt i32 %216, 0
  br i1 %cmp207, label %if.then.209, label %if.end.212

if.then.209:                                      ; preds = %sw.bb.201
  %217 = load i32, i32* %wi203, align 4, !tbaa !5
  %218 = load i32, i32* %xi202, align 4, !tbaa !5
  %add210 = add nsw i32 %218, %217
  store i32 %add210, i32* %xi202, align 4, !tbaa !5
  %219 = load i32, i32* %wi203, align 4, !tbaa !5
  %sub211 = sub nsw i32 0, %219
  store i32 %sub211, i32* %wi203, align 4, !tbaa !5
  br label %if.end.212

if.end.212:                                       ; preds = %if.then.209, %sw.bb.201
  %220 = load i32, i32* %wi203, align 4, !tbaa !5
  %cmp213 = icmp sgt i32 %220, 0
  br i1 %cmp213, label %if.then.215, label %if.end.219

if.then.215:                                      ; preds = %if.end.212
  %221 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %type216 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %221, i32 0, i32 0
  %222 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type216, align 8, !tbaa !100
  %fill_rectangle217 = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %222, i32 0, i32 5
  %223 = load i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)** %fill_rectangle217, align 8, !tbaa !124
  %224 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %225 = load i32, i32* %xi202, align 4, !tbaa !5
  %226 = load i32, i32* %vci, align 4, !tbaa !5
  %227 = load i32, i32* %wi203, align 4, !tbaa !5
  %228 = load i32, i32* %vdi, align 4, !tbaa !5
  %229 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %230 = load i32, i32* %lop, align 4, !tbaa !5
  %call218 = call i32 %223(%struct.gx_device_color_s* %224, i32 %225, i32 %226, i32 %227, i32 %228, %struct.gx_device_s* %229, i32 %230, %struct.gx_rop_source_s* null) #8
  store i32 %call218, i32* %code, align 4, !tbaa !5
  br label %if.end.219

if.end.219:                                       ; preds = %if.then.215, %if.end.212
  %231 = bitcast i32* %wi203 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %231) #1
  %232 = bitcast i32* %xi202 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %232) #1
  br label %sw.epilog.245

sw.bb.220:                                        ; preds = %while.end
  %233 = bitcast i32* %yi221 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %233) #1
  %234 = load i32, i32* %irun, align 4, !tbaa !5
  store i32 %234, i32* %yi221, align 4, !tbaa !5
  %235 = bitcast i32* %hi222 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %235) #1
  %236 = load i32, i32* %yprev, align 4, !tbaa !5
  %add223 = add nsw i32 %236, 128
  %shr224 = ashr i32 %add223, 8
  store i32 %shr224, i32* %irun, align 4, !tbaa !5
  %237 = load i32, i32* %yi221, align 4, !tbaa !5
  %sub225 = sub nsw i32 %shr224, %237
  store i32 %sub225, i32* %hi222, align 4, !tbaa !5
  %238 = load i32, i32* %hi222, align 4, !tbaa !5
  %cmp226 = icmp slt i32 %238, 0
  br i1 %cmp226, label %if.then.228, label %if.end.231

if.then.228:                                      ; preds = %sw.bb.220
  %239 = load i32, i32* %hi222, align 4, !tbaa !5
  %240 = load i32, i32* %yi221, align 4, !tbaa !5
  %add229 = add nsw i32 %240, %239
  store i32 %add229, i32* %yi221, align 4, !tbaa !5
  %241 = load i32, i32* %hi222, align 4, !tbaa !5
  %sub230 = sub nsw i32 0, %241
  store i32 %sub230, i32* %hi222, align 4, !tbaa !5
  br label %if.end.231

if.end.231:                                       ; preds = %if.then.228, %sw.bb.220
  %242 = load i32, i32* %hi222, align 4, !tbaa !5
  %cmp232 = icmp sgt i32 %242, 0
  br i1 %cmp232, label %if.then.234, label %if.end.238

if.then.234:                                      ; preds = %if.end.231
  %243 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %type235 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %243, i32 0, i32 0
  %244 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type235, align 8, !tbaa !100
  %fill_rectangle236 = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %244, i32 0, i32 5
  %245 = load i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)** %fill_rectangle236, align 8, !tbaa !124
  %246 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %247 = load i32, i32* %vci, align 4, !tbaa !5
  %248 = load i32, i32* %yi221, align 4, !tbaa !5
  %249 = load i32, i32* %vdi, align 4, !tbaa !5
  %250 = load i32, i32* %hi222, align 4, !tbaa !5
  %251 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %252 = load i32, i32* %lop, align 4, !tbaa !5
  %call237 = call i32 %245(%struct.gx_device_color_s* %246, i32 %247, i32 %248, i32 %249, i32 %250, %struct.gx_device_s* %251, i32 %252, %struct.gx_rop_source_s* null) #8
  store i32 %call237, i32* %code, align 4, !tbaa !5
  br label %if.end.238

if.end.238:                                       ; preds = %if.then.234, %if.end.231
  %253 = bitcast i32* %hi222 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %253) #1
  %254 = bitcast i32* %yi221 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %254) #1
  br label %sw.epilog.245

sw.default.239:                                   ; preds = %while.end
  %255 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs240 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %255, i32 0, i32 42
  %fill_parallelogram241 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs240, i32 0, i32 28
  %256 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)** %fill_parallelogram241, align 8, !tbaa !126
  %257 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %258 = load i32, i32* %xrun, align 4, !tbaa !5
  %259 = load i32, i32* %yrun, align 4, !tbaa !5
  %260 = load i32, i32* %xprev, align 4, !tbaa !5
  %261 = load i32, i32* %xrun, align 4, !tbaa !5
  %sub242 = sub nsw i32 %260, %261
  %262 = load i32, i32* %yprev, align 4, !tbaa !5
  %263 = load i32, i32* %yrun, align 4, !tbaa !5
  %sub243 = sub nsw i32 %262, %263
  %264 = load i32, i32* %pdyx, align 4, !tbaa !5
  %265 = load i32, i32* %pdyy, align 4, !tbaa !5
  %266 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !1
  %267 = load i32, i32* %lop, align 4, !tbaa !5
  %call244 = call i32 %256(%struct.gx_device_s* %257, i32 %258, i32 %259, i32 %sub242, i32 %sub243, i32 %264, i32 %265, %struct.gx_device_color_s* %266, i32 %267) #8
  store i32 %call244, i32* %code, align 4, !tbaa !5
  br label %sw.epilog.245

sw.epilog.245:                                    ; preds = %sw.default.239, %if.end.238, %if.end.219
  %268 = load i8*, i8** %psrc_cm_start, align 8, !tbaa !1
  %cmp246 = icmp ne i8* %268, null
  br i1 %cmp246, label %if.then.248, label %if.end.251

if.then.248:                                      ; preds = %sw.epilog.245
  %269 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %269, i32 0, i32 1
  %270 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !157
  %procs249 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %270, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs249, i32 0, i32 2
  %271 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !158
  %272 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %memory250 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %272, i32 0, i32 1
  %273 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory250, align 8, !tbaa !157
  %274 = load i8*, i8** %psrc_cm_start, align 8, !tbaa !1
  call void %271(%struct.gs_memory_s* %273, i8* %274, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0)) #8
  br label %if.end.251

if.end.251:                                       ; preds = %if.then.248, %sw.epilog.245
  %275 = load i32, i32* %code, align 4, !tbaa !5
  %cmp252 = icmp slt i32 %275, 0
  br i1 %cmp252, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.251
  %276 = load i32, i32* %code, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %if.end.251
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %276, %cond.true ], [ 1, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

err:                                              ; preds = %if.then.192
  %277 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %memory254 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %277, i32 0, i32 1
  %278 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory254, align 8, !tbaa !157
  %procs255 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %278, i32 0, i32 1
  %free_object256 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs255, i32 0, i32 2
  %279 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object256, align 8, !tbaa !158
  %280 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %memory257 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %280, i32 0, i32 1
  %281 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory257, align 8, !tbaa !157
  %282 = load i8*, i8** %psrc_cm_start, align 8, !tbaa !1
  call void %279(%struct.gs_memory_s* %281, i8* %282, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0)) #8
  %283 = load i8*, i8** %rsrc, align 8, !tbaa !1
  %284 = load i32, i32* %spp, align 4, !tbaa !5
  %idx.ext258 = sext i32 %284 to i64
  %idx.neg = sub i64 0, %idx.ext258
  %add.ptr259 = getelementptr inbounds i8, i8* %283, i64 %idx.neg
  %285 = load i8*, i8** %psrc_initial, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %add.ptr259 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %285 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %286 = load i32, i32* %spp, align 4, !tbaa !5
  %conv260 = sext i32 %286 to i64
  %div = sdiv i64 %sub.ptr.sub, %conv260
  %conv261 = trunc i64 %div to i32
  %287 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum_orig.addr, align 8, !tbaa !1
  %used = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %287, i32 0, i32 52
  %x262 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %used, i32 0, i32 0
  store i32 %conv261, i32* %x262, align 4, !tbaa !128
  %288 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum_orig.addr, align 8, !tbaa !1
  %used263 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %288, i32 0, i32 52
  %y264 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %used263, i32 0, i32 1
  store i32 0, i32* %y264, align 4, !tbaa !129
  %289 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %289, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %err, %cond.end, %if.then.13, %if.then
  %290 = bitcast i32* %has_transfer to i8*
  call void @llvm.lifetime.end(i64 4, i8* %290) #1
  %291 = bitcast i32* %must_halftone to i8*
  call void @llvm.lifetime.end(i64 4, i8* %291) #1
  %292 = bitcast i64* %color to i8*
  call void @llvm.lifetime.end(i64 8, i8* %292) #1
  %293 = bitcast i32* %spp_cm to i8*
  call void @llvm.lifetime.end(i64 4, i8* %293) #1
  %294 = bitcast [64 x i16]* %conc to i8*
  call void @llvm.lifetime.end(i64 128, i8* %294) #1
  %295 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %295) #1
  %296 = bitcast i8** %psrc_cm_start to i8*
  call void @llvm.lifetime.end(i64 8, i8* %296) #1
  %297 = bitcast i8** %psrc_cm to i8*
  call void @llvm.lifetime.end(i64 8, i8* %297) #1
  %298 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %298) #1
  %299 = bitcast i8** %bufend to i8*
  call void @llvm.lifetime.end(i64 8, i8* %299) #1
  %300 = bitcast %union.color_samples* %next to i8*
  call void @llvm.lifetime.end(i64 64, i8* %300) #1
  %301 = bitcast %union.color_samples* %run to i8*
  call void @llvm.lifetime.end(i64 64, i8* %301) #1
  %302 = bitcast i32* %irun to i8*
  call void @llvm.lifetime.end(i64 4, i8* %302) #1
  %303 = bitcast i32* %yrun to i8*
  call void @llvm.lifetime.end(i64 4, i8* %303) #1
  %304 = bitcast i32* %xrun to i8*
  call void @llvm.lifetime.end(i64 4, i8* %304) #1
  %305 = bitcast i8** %rsrc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %305) #1
  %306 = bitcast i8** %psrc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %306) #1
  %307 = bitcast i8** %psrc_initial to i8*
  call void @llvm.lifetime.end(i64 8, i8* %307) #1
  %308 = bitcast i32* %spp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %308) #1
  %309 = bitcast %struct.gx_device_color_s** %ptemp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %309) #1
  %310 = bitcast %struct.gx_device_color_s** %pdevc_next to i8*
  call void @llvm.lifetime.end(i64 8, i8* %310) #1
  %311 = bitcast %struct.gx_device_color_s** %pdevc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %311) #1
  %312 = bitcast %struct.gx_device_color_s* %devc2 to i8*
  call void @llvm.lifetime.end(i64 656, i8* %312) #1
  %313 = bitcast %struct.gx_device_color_s* %devc1 to i8*
  call void @llvm.lifetime.end(i64 656, i8* %313) #1
  %314 = bitcast i32* %vdi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %314) #1
  %315 = bitcast i32* %vci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %315) #1
  %316 = bitcast i32* %pdyy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %316) #1
  %317 = bitcast i32* %pdyx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %317) #1
  %318 = bitcast i32* %yprev to i8*
  call void @llvm.lifetime.end(i64 4, i8* %318) #1
  %319 = bitcast i32* %xprev to i8*
  call void @llvm.lifetime.end(i64 4, i8* %319) #1
  %320 = bitcast i32* %posture to i8*
  call void @llvm.lifetime.end(i64 4, i8* %320) #1
  %321 = bitcast %struct.gx_dda_fixed_point_s* %pnext to i8*
  call void @llvm.lifetime.end(i64 40, i8* %321) #1
  %322 = bitcast i32* %lop to i8*
  call void @llvm.lifetime.end(i64 4, i8* %322) #1
  %323 = bitcast %struct.gs_imager_state_s** %pis to i8*
  call void @llvm.lifetime.end(i64 8, i8* %323) #1
  %324 = bitcast %struct.gx_image_enum_s** %penum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %324) #1
  %325 = load i32, i32* %retval
  ret i32 %325
}

; Function Attrs: nounwind uwtable
define internal i32 @image_color_icc_prep(%struct.gx_image_enum_s* %penum_orig, i8* %psrc, i32 %w, %struct.gx_device_s* %dev, i32* %spp_cm_out, i8** %psrc_cm, i8** %psrc_cm_start, i8** %bufend, i32 %planar_out) #0 {
entry:
  %retval = alloca i32, align 4
  %penum_orig.addr = alloca %struct.gx_image_enum_s*, align 8
  %psrc.addr = alloca i8*, align 8
  %w.addr = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %spp_cm_out.addr = alloca i32*, align 8
  %psrc_cm.addr = alloca i8**, align 8
  %psrc_cm_start.addr = alloca i8**, align 8
  %bufend.addr = alloca i8**, align 8
  %planar_out.addr = alloca i32, align 4
  %penum = alloca %struct.gx_image_enum_s*, align 8
  %pis = alloca %struct.gs_imager_state_s*, align 8
  %need_decode = alloca i32, align 4
  %input_buff_desc = alloca %struct.gsicc_bufferdesc_s, align 4
  %output_buff_desc = alloca %struct.gsicc_bufferdesc_s, align 4
  %num_pixels = alloca i32, align 4
  %spp_cm = alloca i32, align 4
  %spp = alloca i32, align 4
  %force_planar = alloca i32, align 4
  %num_des_comps = alloca i32, align 4
  %code = alloca i32, align 4
  %dev_profile = alloca %struct.cmm_dev_profile_s*, align 8
  %psrc_decode = alloca i8*, align 8
  %planar_src = alloca i8*, align 8
  %planar_des = alloca i8*, align 8
  %k = alloca i32, align 4
  %j = alloca i32, align 4
  %width = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_image_enum_s* %penum_orig, %struct.gx_image_enum_s** %penum_orig.addr, align 8, !tbaa !1
  store i8* %psrc, i8** %psrc.addr, align 8, !tbaa !1
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32* %spp_cm_out, i32** %spp_cm_out.addr, align 8, !tbaa !1
  store i8** %psrc_cm, i8*** %psrc_cm.addr, align 8, !tbaa !1
  store i8** %psrc_cm_start, i8*** %psrc_cm_start.addr, align 8, !tbaa !1
  store i8** %bufend, i8*** %bufend.addr, align 8, !tbaa !1
  store i32 %planar_out, i32* %planar_out.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_image_enum_s** %penum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum_orig.addr, align 8, !tbaa !1
  store %struct.gx_image_enum_s* %1, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %2 = bitcast %struct.gs_imager_state_s** %pis to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %pis1 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %3, i32 0, i32 30
  %4 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis1, align 8, !tbaa !36
  store %struct.gs_imager_state_s* %4, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %5 = bitcast i32* %need_decode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %icc_setup = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %6, i32 0, i32 80
  %need_decode2 = getelementptr inbounds %struct.gx_image_icc_setup_s, %struct.gx_image_icc_setup_s* %icc_setup, i32 0, i32 0
  %7 = load i32, i32* %need_decode2, align 4, !tbaa !55
  store i32 %7, i32* %need_decode, align 4, !tbaa !5
  %8 = bitcast %struct.gsicc_bufferdesc_s* %input_buff_desc to i8*
  call void @llvm.lifetime.start(i64 36, i8* %8) #1
  %9 = bitcast %struct.gsicc_bufferdesc_s* %output_buff_desc to i8*
  call void @llvm.lifetime.start(i64 36, i8* %9) #1
  %10 = bitcast i32* %num_pixels to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %spp_cm to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast i32* %spp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %spp3 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %13, i32 0, i32 14
  %14 = load i8, i8* %spp3, align 1, !tbaa !30
  %conv = zext i8 %14 to i32
  store i32 %conv, i32* %spp, align 4, !tbaa !5
  %15 = bitcast i32* %force_planar to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  store i32 0, i32* %force_planar, align 4, !tbaa !5
  %16 = bitcast i32* %num_des_comps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  %19 = bitcast i8** %psrc_decode to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  %20 = bitcast i8** %planar_src to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  %21 = bitcast i8** %planar_des to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  %22 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  %23 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %24 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  %25 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %25, i32 0, i32 42
  %get_profile = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 67
  %26 = load i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile, align 8, !tbaa !44
  %27 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call i32 %26(%struct.gx_device_s* %27, %struct.cmm_dev_profile_s** %dev_profile) #8
  store i32 %call, i32* %code, align 4, !tbaa !5
  %28 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %28, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %29 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %29, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %30 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %call5 = call i32 @gsicc_get_device_profile_comps(%struct.cmm_dev_profile_s* %30) #8
  store i32 %call5, i32* %num_des_comps, align 4, !tbaa !5
  %31 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %icc_link = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %31, i32 0, i32 70
  %32 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link, align 8, !tbaa !88
  %cmp6 = icmp eq %struct.gsicc_link_s* %32, null
  br i1 %cmp6, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end
  %call9 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.image_color_icc_prep, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i32 318, i32 1, i32 -1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i32 0, i32 0)) #8
  store i32 %call9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %if.end
  %33 = load i32, i32* %num_des_comps, align 4, !tbaa !5
  %cmp11 = icmp ne i32 %33, 1
  br i1 %cmp11, label %land.lhs.true, label %if.end.16

land.lhs.true:                                    ; preds = %if.end.10
  %34 = load i32, i32* %planar_out.addr, align 4, !tbaa !5
  %cmp13 = icmp eq i32 %34, 1
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %land.lhs.true
  store i32 1, i32* %force_planar, align 4, !tbaa !5
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %land.lhs.true, %if.end.10
  %35 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %icc_link17 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %35, i32 0, i32 70
  %36 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link17, align 8, !tbaa !88
  %is_identity = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %36, i32 0, i32 10
  %37 = load i32, i32* %is_identity, align 4, !tbaa !164
  %tobool = icmp ne i32 %37, 0
  br i1 %tobool, label %land.lhs.true.18, label %if.else

land.lhs.true.18:                                 ; preds = %if.end.16
  %38 = load i32, i32* %need_decode, align 4, !tbaa !5
  %tobool19 = icmp ne i32 %38, 0
  br i1 %tobool19, label %if.else, label %land.lhs.true.20

land.lhs.true.20:                                 ; preds = %land.lhs.true.18
  %39 = load i32, i32* %force_planar, align 4, !tbaa !5
  %tobool21 = icmp ne i32 %39, 0
  br i1 %tobool21, label %if.else, label %if.then.22

if.then.22:                                       ; preds = %land.lhs.true.20
  %40 = load i8*, i8** %psrc.addr, align 8, !tbaa !1
  %41 = load i8**, i8*** %psrc_cm.addr, align 8, !tbaa !1
  store i8* %40, i8** %41, align 8, !tbaa !1
  %42 = load i32, i32* %spp, align 4, !tbaa !5
  store i32 %42, i32* %spp_cm, align 4, !tbaa !5
  %43 = load i8**, i8*** %psrc_cm.addr, align 8, !tbaa !1
  %44 = load i8*, i8** %43, align 8, !tbaa !1
  %45 = load i32, i32* %w.addr, align 4, !tbaa !5
  %idx.ext = zext i32 %45 to i64
  %add.ptr = getelementptr inbounds i8, i8* %44, i64 %idx.ext
  %46 = load i8**, i8*** %bufend.addr, align 8, !tbaa !1
  store i8* %add.ptr, i8** %46, align 8, !tbaa !1
  %47 = load i8**, i8*** %psrc_cm_start.addr, align 8, !tbaa !1
  store i8* null, i8** %47, align 8, !tbaa !1
  br label %if.end.121

if.else:                                          ; preds = %land.lhs.true.20, %land.lhs.true.18, %if.end.16
  %48 = load i32, i32* %num_des_comps, align 4, !tbaa !5
  store i32 %48, i32* %spp_cm, align 4, !tbaa !5
  %49 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %49, i32 0, i32 1
  %50 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !157
  %procs23 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %50, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs23, i32 0, i32 7
  %51 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !168
  %52 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %memory24 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %52, i32 0, i32 1
  %53 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory24, align 8, !tbaa !157
  %54 = load i32, i32* %w.addr, align 4, !tbaa !5
  %55 = load i32, i32* %spp_cm, align 4, !tbaa !5
  %mul = mul i32 %54, %55
  %56 = load i32, i32* %spp, align 4, !tbaa !5
  %div = udiv i32 %mul, %56
  %call25 = call i8* %51(%struct.gs_memory_s* %53, i32 %div, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.image_color_icc_prep, i32 0, i32 0)) #8
  %57 = load i8**, i8*** %psrc_cm.addr, align 8, !tbaa !1
  store i8* %call25, i8** %57, align 8, !tbaa !1
  %58 = load i8**, i8*** %psrc_cm.addr, align 8, !tbaa !1
  %59 = load i8*, i8** %58, align 8, !tbaa !1
  %60 = load i8**, i8*** %psrc_cm_start.addr, align 8, !tbaa !1
  store i8* %59, i8** %60, align 8, !tbaa !1
  %61 = load i8**, i8*** %psrc_cm.addr, align 8, !tbaa !1
  %62 = load i8*, i8** %61, align 8, !tbaa !1
  %63 = load i32, i32* %w.addr, align 4, !tbaa !5
  %64 = load i32, i32* %spp_cm, align 4, !tbaa !5
  %mul26 = mul i32 %63, %64
  %65 = load i32, i32* %spp, align 4, !tbaa !5
  %div27 = udiv i32 %mul26, %65
  %idx.ext28 = zext i32 %div27 to i64
  %add.ptr29 = getelementptr inbounds i8, i8* %62, i64 %idx.ext28
  %66 = load i8**, i8*** %bufend.addr, align 8, !tbaa !1
  store i8* %add.ptr29, i8** %66, align 8, !tbaa !1
  %67 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %icc_link30 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %67, i32 0, i32 70
  %68 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link30, align 8, !tbaa !88
  %is_identity31 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %68, i32 0, i32 10
  %69 = load i32, i32* %is_identity31, align 4, !tbaa !164
  %tobool32 = icmp ne i32 %69, 0
  br i1 %tobool32, label %if.then.33, label %if.else.77

if.then.33:                                       ; preds = %if.else
  %70 = load i32, i32* %force_planar, align 4, !tbaa !5
  %tobool34 = icmp ne i32 %70, 0
  br i1 %tobool34, label %if.else.36, label %if.then.35

if.then.35:                                       ; preds = %if.then.33
  %71 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %72 = load i8*, i8** %psrc.addr, align 8, !tbaa !1
  %73 = load i32, i32* %spp, align 4, !tbaa !5
  %74 = load i8**, i8*** %psrc_cm.addr, align 8, !tbaa !1
  %75 = load i8*, i8** %74, align 8, !tbaa !1
  %76 = load i8**, i8*** %bufend.addr, align 8, !tbaa !1
  %77 = load i8*, i8** %76, align 8, !tbaa !1
  call void @decode_row(%struct.gx_image_enum_s* %71, i8* %72, i32 %73, i8* %75, i8* %77) #8
  br label %if.end.76

if.else.36:                                       ; preds = %if.then.33
  %78 = load i32, i32* %need_decode, align 4, !tbaa !5
  %tobool37 = icmp ne i32 %78, 0
  br i1 %tobool37, label %if.then.38, label %if.else.53

if.then.38:                                       ; preds = %if.else.36
  %79 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %memory39 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %79, i32 0, i32 1
  %80 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory39, align 8, !tbaa !157
  %procs40 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %80, i32 0, i32 1
  %alloc_bytes41 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs40, i32 0, i32 7
  %81 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes41, align 8, !tbaa !168
  %82 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %memory42 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %82, i32 0, i32 1
  %83 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory42, align 8, !tbaa !157
  %84 = load i32, i32* %w.addr, align 4, !tbaa !5
  %call43 = call i8* %81(%struct.gs_memory_s* %83, i32 %84, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.image_color_icc_prep, i32 0, i32 0)) #8
  store i8* %call43, i8** %psrc_decode, align 8, !tbaa !1
  %85 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %use_cie_range = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %85, i32 0, i32 81
  %86 = load i32, i32* %use_cie_range, align 4, !tbaa !90
  %tobool44 = icmp ne i32 %86, 0
  br i1 %tobool44, label %if.else.48, label %if.then.45

if.then.45:                                       ; preds = %if.then.38
  %87 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %88 = load i8*, i8** %psrc.addr, align 8, !tbaa !1
  %89 = load i32, i32* %spp, align 4, !tbaa !5
  %90 = load i8*, i8** %psrc_decode, align 8, !tbaa !1
  %91 = load i8*, i8** %psrc_decode, align 8, !tbaa !1
  %92 = load i32, i32* %w.addr, align 4, !tbaa !5
  %idx.ext46 = zext i32 %92 to i64
  %add.ptr47 = getelementptr inbounds i8, i8* %91, i64 %idx.ext46
  call void @decode_row(%struct.gx_image_enum_s* %87, i8* %88, i32 %89, i8* %90, i8* %add.ptr47) #8
  br label %if.end.52

if.else.48:                                       ; preds = %if.then.38
  %93 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %94 = load i8*, i8** %psrc.addr, align 8, !tbaa !1
  %95 = load i32, i32* %spp, align 4, !tbaa !5
  %96 = load i8*, i8** %psrc_decode, align 8, !tbaa !1
  %97 = load i8*, i8** %psrc_decode, align 8, !tbaa !1
  %98 = load i32, i32* %w.addr, align 4, !tbaa !5
  %idx.ext49 = zext i32 %98 to i64
  %add.ptr50 = getelementptr inbounds i8, i8* %97, i64 %idx.ext49
  %99 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %pcs = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %99, i32 0, i32 31
  %100 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !37
  %call51 = call %struct.gs_range_s* @get_cie_range(%struct.gs_color_space_s* %100) #8
  call void @decode_row_cie(%struct.gx_image_enum_s* %93, i8* %94, i32 %95, i8* %96, i8* %add.ptr50, %struct.gs_range_s* %call51) #8
  br label %if.end.52

if.end.52:                                        ; preds = %if.else.48, %if.then.45
  %101 = load i8*, i8** %psrc_decode, align 8, !tbaa !1
  store i8* %101, i8** %planar_src, align 8, !tbaa !1
  br label %if.end.54

if.else.53:                                       ; preds = %if.else.36
  store i8* null, i8** %psrc_decode, align 8, !tbaa !1
  %102 = load i8*, i8** %psrc.addr, align 8, !tbaa !1
  store i8* %102, i8** %planar_src, align 8, !tbaa !1
  br label %if.end.54

if.end.54:                                        ; preds = %if.else.53, %if.end.52
  %103 = load i32, i32* %w.addr, align 4, !tbaa !5
  %104 = load i32, i32* %spp, align 4, !tbaa !5
  %div55 = udiv i32 %103, %104
  store i32 %div55, i32* %width, align 4, !tbaa !5
  %105 = load i8**, i8*** %psrc_cm.addr, align 8, !tbaa !1
  %106 = load i8*, i8** %105, align 8, !tbaa !1
  store i8* %106, i8** %planar_des, align 8, !tbaa !1
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.66, %if.end.54
  %107 = load i32, i32* %k, align 4, !tbaa !5
  %108 = load i32, i32* %width, align 4, !tbaa !5
  %cmp56 = icmp slt i32 %107, %108
  br i1 %cmp56, label %for.body, label %for.end.68

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.58

for.cond.58:                                      ; preds = %for.inc, %for.body
  %109 = load i32, i32* %j, align 4, !tbaa !5
  %110 = load i32, i32* %spp, align 4, !tbaa !5
  %cmp59 = icmp slt i32 %109, %110
  br i1 %cmp59, label %for.body.61, label %for.end

for.body.61:                                      ; preds = %for.cond.58
  %111 = load i8*, i8** %planar_src, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %incdec.ptr, i8** %planar_src, align 8, !tbaa !1
  %112 = load i8, i8* %111, align 1, !tbaa !31
  %113 = load i8*, i8** %planar_des, align 8, !tbaa !1
  %114 = load i32, i32* %j, align 4, !tbaa !5
  %115 = load i32, i32* %width, align 4, !tbaa !5
  %mul62 = mul nsw i32 %114, %115
  %idx.ext63 = sext i32 %mul62 to i64
  %add.ptr64 = getelementptr inbounds i8, i8* %113, i64 %idx.ext63
  store i8 %112, i8* %add.ptr64, align 1, !tbaa !31
  br label %for.inc

for.inc:                                          ; preds = %for.body.61
  %116 = load i32, i32* %j, align 4, !tbaa !5
  %inc = add nsw i32 %116, 1
  store i32 %inc, i32* %j, align 4, !tbaa !5
  br label %for.cond.58

for.end:                                          ; preds = %for.cond.58
  %117 = load i8*, i8** %planar_des, align 8, !tbaa !1
  %incdec.ptr65 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %incdec.ptr65, i8** %planar_des, align 8, !tbaa !1
  br label %for.inc.66

for.inc.66:                                       ; preds = %for.end
  %118 = load i32, i32* %k, align 4, !tbaa !5
  %inc67 = add nsw i32 %118, 1
  store i32 %inc67, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.end.68:                                       ; preds = %for.cond
  %119 = load i8*, i8** %psrc_decode, align 8, !tbaa !1
  %cmp69 = icmp ne i8* %119, null
  br i1 %cmp69, label %if.then.71, label %if.end.75

if.then.71:                                       ; preds = %for.end.68
  %120 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %memory72 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %120, i32 0, i32 1
  %121 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory72, align 8, !tbaa !157
  %procs73 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %121, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs73, i32 0, i32 2
  %122 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !158
  %123 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %memory74 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %123, i32 0, i32 1
  %124 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory74, align 8, !tbaa !157
  %125 = load i8*, i8** %psrc_decode, align 8, !tbaa !1
  call void %122(%struct.gs_memory_s* %124, i8* %125, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0)) #8
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.71, %for.end.68
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %if.then.35
  br label %if.end.120

if.else.77:                                       ; preds = %if.else
  %126 = load i32, i32* %w.addr, align 4, !tbaa !5
  %127 = load i32, i32* %spp, align 4, !tbaa !5
  %div78 = udiv i32 %126, %127
  store i32 %div78, i32* %num_pixels, align 4, !tbaa !5
  %128 = load i32, i32* %spp, align 4, !tbaa !5
  %conv79 = trunc i32 %128 to i8
  %129 = load i32, i32* %w.addr, align 4, !tbaa !5
  %130 = load i32, i32* %num_pixels, align 4, !tbaa !5
  call void @gsicc_init_buffer(%struct.gsicc_bufferdesc_s* %input_buff_desc, i8 zeroext %conv79, i8 zeroext 1, i32 0, i32 0, i32 0, i32 0, i32 %129, i32 1, i32 %130) #8
  %131 = load i32, i32* %force_planar, align 4, !tbaa !5
  %tobool80 = icmp ne i32 %131, 0
  br i1 %tobool80, label %if.else.84, label %if.then.81

if.then.81:                                       ; preds = %if.else.77
  %132 = load i32, i32* %spp_cm, align 4, !tbaa !5
  %conv82 = trunc i32 %132 to i8
  %133 = load i32, i32* %num_pixels, align 4, !tbaa !5
  %134 = load i32, i32* %spp_cm, align 4, !tbaa !5
  %mul83 = mul nsw i32 %133, %134
  %135 = load i32, i32* %num_pixels, align 4, !tbaa !5
  call void @gsicc_init_buffer(%struct.gsicc_bufferdesc_s* %output_buff_desc, i8 zeroext %conv82, i8 zeroext 1, i32 0, i32 0, i32 0, i32 0, i32 %mul83, i32 1, i32 %135) #8
  br label %if.end.88

if.else.84:                                       ; preds = %if.else.77
  %136 = load i32, i32* %spp_cm, align 4, !tbaa !5
  %conv85 = trunc i32 %136 to i8
  %137 = load i32, i32* %w.addr, align 4, !tbaa !5
  %138 = load i32, i32* %spp, align 4, !tbaa !5
  %div86 = udiv i32 %137, %138
  %139 = load i32, i32* %w.addr, align 4, !tbaa !5
  %140 = load i32, i32* %spp, align 4, !tbaa !5
  %div87 = udiv i32 %139, %140
  %141 = load i32, i32* %num_pixels, align 4, !tbaa !5
  call void @gsicc_init_buffer(%struct.gsicc_bufferdesc_s* %output_buff_desc, i8 zeroext %conv85, i8 zeroext 1, i32 0, i32 0, i32 1, i32 %div86, i32 %div87, i32 1, i32 %141) #8
  br label %if.end.88

if.end.88:                                        ; preds = %if.else.84, %if.then.81
  %142 = load i32, i32* %need_decode, align 4, !tbaa !5
  %tobool89 = icmp ne i32 %142, 0
  br i1 %tobool89, label %if.then.90, label %if.else.114

if.then.90:                                       ; preds = %if.end.88
  %143 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %memory91 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %143, i32 0, i32 1
  %144 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory91, align 8, !tbaa !157
  %procs92 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %144, i32 0, i32 1
  %alloc_bytes93 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs92, i32 0, i32 7
  %145 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes93, align 8, !tbaa !168
  %146 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %memory94 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %146, i32 0, i32 1
  %147 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory94, align 8, !tbaa !157
  %148 = load i32, i32* %w.addr, align 4, !tbaa !5
  %call95 = call i8* %145(%struct.gs_memory_s* %147, i32 %148, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.image_color_icc_prep, i32 0, i32 0)) #8
  store i8* %call95, i8** %psrc_decode, align 8, !tbaa !1
  %149 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %use_cie_range96 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %149, i32 0, i32 81
  %150 = load i32, i32* %use_cie_range96, align 4, !tbaa !90
  %tobool97 = icmp ne i32 %150, 0
  br i1 %tobool97, label %if.else.101, label %if.then.98

if.then.98:                                       ; preds = %if.then.90
  %151 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %152 = load i8*, i8** %psrc.addr, align 8, !tbaa !1
  %153 = load i32, i32* %spp, align 4, !tbaa !5
  %154 = load i8*, i8** %psrc_decode, align 8, !tbaa !1
  %155 = load i8*, i8** %psrc_decode, align 8, !tbaa !1
  %156 = load i32, i32* %w.addr, align 4, !tbaa !5
  %idx.ext99 = zext i32 %156 to i64
  %add.ptr100 = getelementptr inbounds i8, i8* %155, i64 %idx.ext99
  call void @decode_row(%struct.gx_image_enum_s* %151, i8* %152, i32 %153, i8* %154, i8* %add.ptr100) #8
  br label %if.end.106

if.else.101:                                      ; preds = %if.then.90
  %157 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %158 = load i8*, i8** %psrc.addr, align 8, !tbaa !1
  %159 = load i32, i32* %spp, align 4, !tbaa !5
  %160 = load i8*, i8** %psrc_decode, align 8, !tbaa !1
  %161 = load i8*, i8** %psrc_decode, align 8, !tbaa !1
  %162 = load i32, i32* %w.addr, align 4, !tbaa !5
  %idx.ext102 = zext i32 %162 to i64
  %add.ptr103 = getelementptr inbounds i8, i8* %161, i64 %idx.ext102
  %163 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %pcs104 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %163, i32 0, i32 31
  %164 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs104, align 8, !tbaa !37
  %call105 = call %struct.gs_range_s* @get_cie_range(%struct.gs_color_space_s* %164) #8
  call void @decode_row_cie(%struct.gx_image_enum_s* %157, i8* %158, i32 %159, i8* %160, i8* %add.ptr103, %struct.gs_range_s* %call105) #8
  br label %if.end.106

if.end.106:                                       ; preds = %if.else.101, %if.then.98
  %165 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %icc_link107 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %165, i32 0, i32 70
  %166 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link107, align 8, !tbaa !88
  %procs108 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %166, i32 0, i32 1
  %map_buffer = getelementptr inbounds %struct.gscms_procs_s, %struct.gscms_procs_s* %procs108, i32 0, i32 0
  %167 = load void (%struct.gx_device_s*, %struct.gsicc_link_s*, %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s*, i8*, i8*)*, void (%struct.gx_device_s*, %struct.gsicc_link_s*, %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s*, i8*, i8*)** %map_buffer, align 8, !tbaa !169
  %168 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %169 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %icc_link109 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %169, i32 0, i32 70
  %170 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link109, align 8, !tbaa !88
  %171 = load i8*, i8** %psrc_decode, align 8, !tbaa !1
  %172 = load i8**, i8*** %psrc_cm.addr, align 8, !tbaa !1
  %173 = load i8*, i8** %172, align 8, !tbaa !1
  call void %167(%struct.gx_device_s* %168, %struct.gsicc_link_s* %170, %struct.gsicc_bufferdesc_s* %input_buff_desc, %struct.gsicc_bufferdesc_s* %output_buff_desc, i8* %171, i8* %173) #8
  %174 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %memory110 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %174, i32 0, i32 1
  %175 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory110, align 8, !tbaa !157
  %procs111 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %175, i32 0, i32 1
  %free_object112 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs111, i32 0, i32 2
  %176 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object112, align 8, !tbaa !158
  %177 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %memory113 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %177, i32 0, i32 1
  %178 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory113, align 8, !tbaa !157
  %179 = load i8*, i8** %psrc_decode, align 8, !tbaa !1
  call void %176(%struct.gs_memory_s* %178, i8* %179, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.image_color_icc_prep, i32 0, i32 0)) #8
  br label %if.end.119

if.else.114:                                      ; preds = %if.end.88
  %180 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %icc_link115 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %180, i32 0, i32 70
  %181 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link115, align 8, !tbaa !88
  %procs116 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %181, i32 0, i32 1
  %map_buffer117 = getelementptr inbounds %struct.gscms_procs_s, %struct.gscms_procs_s* %procs116, i32 0, i32 0
  %182 = load void (%struct.gx_device_s*, %struct.gsicc_link_s*, %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s*, i8*, i8*)*, void (%struct.gx_device_s*, %struct.gsicc_link_s*, %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s*, i8*, i8*)** %map_buffer117, align 8, !tbaa !169
  %183 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %184 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %icc_link118 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %184, i32 0, i32 70
  %185 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link118, align 8, !tbaa !88
  %186 = load i8*, i8** %psrc.addr, align 8, !tbaa !1
  %187 = load i8**, i8*** %psrc_cm.addr, align 8, !tbaa !1
  %188 = load i8*, i8** %187, align 8, !tbaa !1
  call void %182(%struct.gx_device_s* %183, %struct.gsicc_link_s* %185, %struct.gsicc_bufferdesc_s* %input_buff_desc, %struct.gsicc_bufferdesc_s* %output_buff_desc, i8* %186, i8* %188) #8
  br label %if.end.119

if.end.119:                                       ; preds = %if.else.114, %if.end.106
  br label %if.end.120

if.end.120:                                       ; preds = %if.end.119, %if.end.76
  br label %if.end.121

if.end.121:                                       ; preds = %if.end.120, %if.then.22
  %189 = load i32, i32* %spp_cm, align 4, !tbaa !5
  %190 = load i32*, i32** %spp_cm_out.addr, align 8, !tbaa !1
  store i32 %189, i32* %190, align 4, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.121, %if.then.8, %if.then
  %191 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %191) #1
  %192 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %192) #1
  %193 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %193) #1
  %194 = bitcast i8** %planar_des to i8*
  call void @llvm.lifetime.end(i64 8, i8* %194) #1
  %195 = bitcast i8** %planar_src to i8*
  call void @llvm.lifetime.end(i64 8, i8* %195) #1
  %196 = bitcast i8** %psrc_decode to i8*
  call void @llvm.lifetime.end(i64 8, i8* %196) #1
  %197 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %197) #1
  %198 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %198) #1
  %199 = bitcast i32* %num_des_comps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %199) #1
  %200 = bitcast i32* %force_planar to i8*
  call void @llvm.lifetime.end(i64 4, i8* %200) #1
  %201 = bitcast i32* %spp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %201) #1
  %202 = bitcast i32* %spp_cm to i8*
  call void @llvm.lifetime.end(i64 4, i8* %202) #1
  %203 = bitcast i32* %num_pixels to i8*
  call void @llvm.lifetime.end(i64 4, i8* %203) #1
  %204 = bitcast %struct.gsicc_bufferdesc_s* %output_buff_desc to i8*
  call void @llvm.lifetime.end(i64 36, i8* %204) #1
  %205 = bitcast %struct.gsicc_bufferdesc_s* %input_buff_desc to i8*
  call void @llvm.lifetime.end(i64 36, i8* %205) #1
  %206 = bitcast i32* %need_decode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %206) #1
  %207 = bitcast %struct.gs_imager_state_s** %pis to i8*
  call void @llvm.lifetime.end(i64 8, i8* %207) #1
  %208 = bitcast %struct.gx_image_enum_s** %penum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %208) #1
  %209 = load i32, i32* %retval
  ret i32 %209
}

declare void @cmap_transfer_plane(i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32) #3

; Function Attrs: nounwind readnone
declare double @floor(double) #4

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #2

declare i32 @gxht_thresh_planes(%struct.gx_image_enum_s*, i32, i32, i32, i8*, %struct.gx_device_s*, i32*, i32) #3

declare i32 @gs_throw_imp(i8*, i8*, i32, i32, i32, i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal void @decode_row(%struct.gx_image_enum_s* %penum, i8* %psrc, i32 %spp, i8* %pdes, i8* %bufend) #0 {
entry:
  %penum.addr = alloca %struct.gx_image_enum_s*, align 8
  %psrc.addr = alloca i8*, align 8
  %spp.addr = alloca i32, align 4
  %pdes.addr = alloca i8*, align 8
  %bufend.addr = alloca i8*, align 8
  %curr_pos = alloca i8*, align 8
  %k = alloca i32, align 4
  %temp = alloca float, align 4
  store %struct.gx_image_enum_s* %penum, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  store i8* %psrc, i8** %psrc.addr, align 8, !tbaa !1
  store i32 %spp, i32* %spp.addr, align 4, !tbaa !5
  store i8* %pdes, i8** %pdes.addr, align 8, !tbaa !1
  store i8* %bufend, i8** %bufend.addr, align 8, !tbaa !1
  %0 = bitcast i8** %curr_pos to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %pdes.addr, align 8, !tbaa !1
  store i8* %1, i8** %curr_pos, align 8, !tbaa !1
  %2 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast float* %temp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %4 = load i8*, i8** %curr_pos, align 8, !tbaa !1
  %5 = load i8*, i8** %bufend.addr, align 8, !tbaa !1
  %cmp = icmp ult i8* %4, %5
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
  %10 = load i32, i32* %decoding, align 4, !tbaa !56
  switch i32 %10, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.2
    i32 2, label %sw.bb.17
  ]

sw.bb:                                            ; preds = %for.body
  %11 = load i8*, i8** %psrc.addr, align 8, !tbaa !1
  %12 = load i8, i8* %11, align 1, !tbaa !31
  %13 = load i8*, i8** %curr_pos, align 8, !tbaa !1
  store i8 %12, i8* %13, align 1, !tbaa !31
  br label %sw.epilog

sw.bb.2:                                          ; preds = %for.body
  %14 = load i8*, i8** %psrc.addr, align 8, !tbaa !1
  %15 = load i8, i8* %14, align 1, !tbaa !31
  %conv = zext i8 %15 to i32
  %shr = ashr i32 %conv, 4
  %idxprom3 = sext i32 %shr to i64
  %16 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom4 = sext i32 %16 to i64
  %17 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map5 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %17, i32 0, i32 64
  %arrayidx6 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map5, i32 0, i64 %idxprom4
  %decode_lookup = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx6, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [16 x float], [16 x float]* %decode_lookup, i32 0, i64 %idxprom3
  %18 = load float, float* %arrayidx7, align 4, !tbaa !122
  %conv8 = fpext float %18 to double
  %mul = fmul double %conv8, 2.550000e+02
  %conv9 = fptrunc double %mul to float
  store float %conv9, float* %temp, align 4, !tbaa !122
  %19 = load float, float* %temp, align 4, !tbaa !122
  %cmp10 = fcmp ogt float %19, 2.550000e+02
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.2
  store float 2.550000e+02, float* %temp, align 4, !tbaa !122
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.2
  %20 = load float, float* %temp, align 4, !tbaa !122
  %cmp12 = fcmp olt float %20, 0.000000e+00
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end
  store float 0.000000e+00, float* %temp, align 4, !tbaa !122
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.end
  %21 = load float, float* %temp, align 4, !tbaa !122
  %conv16 = fptoui float %21 to i8
  %22 = load i8*, i8** %curr_pos, align 8, !tbaa !1
  store i8 %conv16, i8* %22, align 1, !tbaa !31
  br label %sw.epilog

sw.bb.17:                                         ; preds = %for.body
  %23 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom18 = sext i32 %23 to i64
  %24 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map19 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %24, i32 0, i32 64
  %arrayidx20 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map19, i32 0, i64 %idxprom18
  %decode_lookup21 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx20, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [16 x float], [16 x float]* %decode_lookup21, i32 0, i64 0
  %25 = load float, float* %arrayidx22, align 4, !tbaa !122
  %26 = load i8*, i8** %psrc.addr, align 8, !tbaa !1
  %27 = load i8, i8* %26, align 1, !tbaa !31
  %conv23 = zext i8 %27 to i32
  %conv24 = sitofp i32 %conv23 to float
  %28 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom25 = sext i32 %28 to i64
  %29 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map26 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %29, i32 0, i32 64
  %arrayidx27 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map26, i32 0, i64 %idxprom25
  %decode_factor = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx27, i32 0, i32 2
  %30 = load float, float* %decode_factor, align 4, !tbaa !123
  %mul28 = fmul float %conv24, %30
  %add = fadd float %25, %mul28
  store float %add, float* %temp, align 4, !tbaa !122
  %31 = load float, float* %temp, align 4, !tbaa !122
  %mul29 = fmul float %31, 2.550000e+02
  store float %mul29, float* %temp, align 4, !tbaa !122
  %32 = load float, float* %temp, align 4, !tbaa !122
  %cmp30 = fcmp ogt float %32, 2.550000e+02
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %sw.bb.17
  store float 2.550000e+02, float* %temp, align 4, !tbaa !122
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %sw.bb.17
  %33 = load float, float* %temp, align 4, !tbaa !122
  %cmp34 = fcmp olt float %33, 0.000000e+00
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end.33
  store float 0.000000e+00, float* %temp, align 4, !tbaa !122
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %if.end.33
  %34 = load float, float* %temp, align 4, !tbaa !122
  %conv38 = fptoui float %34 to i8
  %35 = load i8*, i8** %curr_pos, align 8, !tbaa !1
  store i8 %conv38, i8* %35, align 1, !tbaa !31
  br label %sw.default

sw.default:                                       ; preds = %for.body, %if.end.37
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.15, %sw.bb
  %36 = load i8*, i8** %curr_pos, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr, i8** %curr_pos, align 8, !tbaa !1
  %37 = load i8*, i8** %psrc.addr, align 8, !tbaa !1
  %incdec.ptr39 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr39, i8** %psrc.addr, align 8, !tbaa !1
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
  %41 = bitcast i8** %curr_pos to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @decode_row_cie(%struct.gx_image_enum_s* %penum, i8* %psrc, i32 %spp, i8* %pdes, i8* %bufend, %struct.gs_range_s* %range_array) #0 {
entry:
  %penum.addr = alloca %struct.gx_image_enum_s*, align 8
  %psrc.addr = alloca i8*, align 8
  %spp.addr = alloca i32, align 4
  %pdes.addr = alloca i8*, align 8
  %bufend.addr = alloca i8*, align 8
  %range_array.addr = alloca %struct.gs_range_s*, align 8
  %curr_pos = alloca i8*, align 8
  %k = alloca i32, align 4
  %temp = alloca float, align 4
  store %struct.gx_image_enum_s* %penum, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  store i8* %psrc, i8** %psrc.addr, align 8, !tbaa !1
  store i32 %spp, i32* %spp.addr, align 4, !tbaa !5
  store i8* %pdes, i8** %pdes.addr, align 8, !tbaa !1
  store i8* %bufend, i8** %bufend.addr, align 8, !tbaa !1
  store %struct.gs_range_s* %range_array, %struct.gs_range_s** %range_array.addr, align 8, !tbaa !1
  %0 = bitcast i8** %curr_pos to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %pdes.addr, align 8, !tbaa !1
  store i8* %1, i8** %curr_pos, align 8, !tbaa !1
  %2 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast float* %temp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %4 = load i8*, i8** %curr_pos, align 8, !tbaa !1
  %5 = load i8*, i8** %bufend.addr, align 8, !tbaa !1
  %cmp = icmp ult i8* %4, %5
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
  %10 = load i32, i32* %decoding, align 4, !tbaa !56
  switch i32 %10, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.2
    i32 2, label %sw.bb.20
  ]

sw.bb:                                            ; preds = %for.body
  %11 = load i8*, i8** %psrc.addr, align 8, !tbaa !1
  %12 = load i8, i8* %11, align 1, !tbaa !31
  %13 = load i8*, i8** %curr_pos, align 8, !tbaa !1
  store i8 %12, i8* %13, align 1, !tbaa !31
  br label %sw.epilog

sw.bb.2:                                          ; preds = %for.body
  %14 = load i8*, i8** %psrc.addr, align 8, !tbaa !1
  %15 = load i8, i8* %14, align 1, !tbaa !31
  %conv = zext i8 %15 to i32
  %shr = ashr i32 %conv, 4
  %idxprom3 = sext i32 %shr to i64
  %16 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom4 = sext i32 %16 to i64
  %17 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map5 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %17, i32 0, i32 64
  %arrayidx6 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map5, i32 0, i64 %idxprom4
  %decode_lookup = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx6, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [16 x float], [16 x float]* %decode_lookup, i32 0, i64 %idxprom3
  %18 = load float, float* %arrayidx7, align 4, !tbaa !122
  %conv8 = fpext float %18 to double
  %mul = fmul double %conv8, 2.550000e+02
  %conv9 = fptrunc double %mul to float
  store float %conv9, float* %temp, align 4, !tbaa !122
  %19 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom10 = sext i32 %19 to i64
  %20 = load %struct.gs_range_s*, %struct.gs_range_s** %range_array.addr, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %20, i64 %idxprom10
  %21 = load float, float* %temp, align 4, !tbaa !122
  %22 = bitcast %struct.gs_range_s* %arrayidx11 to <2 x float>*
  %23 = load <2 x float>, <2 x float>* %22, align 4
  %call = call float @rescale_input_color(<2 x float> %23, float %21) #8
  store float %call, float* %temp, align 4, !tbaa !122
  %24 = load float, float* %temp, align 4, !tbaa !122
  %mul12 = fmul float %24, 2.550000e+02
  store float %mul12, float* %temp, align 4, !tbaa !122
  %25 = load float, float* %temp, align 4, !tbaa !122
  %cmp13 = fcmp ogt float %25, 2.550000e+02
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.2
  store float 2.550000e+02, float* %temp, align 4, !tbaa !122
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.2
  %26 = load float, float* %temp, align 4, !tbaa !122
  %cmp15 = fcmp olt float %26, 0.000000e+00
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end
  store float 0.000000e+00, float* %temp, align 4, !tbaa !122
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.end
  %27 = load float, float* %temp, align 4, !tbaa !122
  %conv19 = fptoui float %27 to i8
  %28 = load i8*, i8** %curr_pos, align 8, !tbaa !1
  store i8 %conv19, i8* %28, align 1, !tbaa !31
  br label %sw.epilog

sw.bb.20:                                         ; preds = %for.body
  %29 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom21 = sext i32 %29 to i64
  %30 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map22 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %30, i32 0, i32 64
  %arrayidx23 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map22, i32 0, i64 %idxprom21
  %decode_lookup24 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx23, i32 0, i32 1
  %arrayidx25 = getelementptr inbounds [16 x float], [16 x float]* %decode_lookup24, i32 0, i64 0
  %31 = load float, float* %arrayidx25, align 4, !tbaa !122
  %32 = load i8*, i8** %psrc.addr, align 8, !tbaa !1
  %33 = load i8, i8* %32, align 1, !tbaa !31
  %conv26 = zext i8 %33 to i32
  %conv27 = sitofp i32 %conv26 to float
  %34 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom28 = sext i32 %34 to i64
  %35 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %map29 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %35, i32 0, i32 64
  %arrayidx30 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map29, i32 0, i64 %idxprom28
  %decode_factor = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx30, i32 0, i32 2
  %36 = load float, float* %decode_factor, align 4, !tbaa !123
  %mul31 = fmul float %conv27, %36
  %add = fadd float %31, %mul31
  store float %add, float* %temp, align 4, !tbaa !122
  %37 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom32 = sext i32 %37 to i64
  %38 = load %struct.gs_range_s*, %struct.gs_range_s** %range_array.addr, align 8, !tbaa !1
  %arrayidx33 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %38, i64 %idxprom32
  %39 = load float, float* %temp, align 4, !tbaa !122
  %40 = bitcast %struct.gs_range_s* %arrayidx33 to <2 x float>*
  %41 = load <2 x float>, <2 x float>* %40, align 4
  %call34 = call float @rescale_input_color(<2 x float> %41, float %39) #8
  store float %call34, float* %temp, align 4, !tbaa !122
  %42 = load float, float* %temp, align 4, !tbaa !122
  %mul35 = fmul float %42, 2.550000e+02
  store float %mul35, float* %temp, align 4, !tbaa !122
  %43 = load float, float* %temp, align 4, !tbaa !122
  %cmp36 = fcmp ogt float %43, 2.550000e+02
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %sw.bb.20
  store float 2.550000e+02, float* %temp, align 4, !tbaa !122
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.38, %sw.bb.20
  %44 = load float, float* %temp, align 4, !tbaa !122
  %cmp40 = fcmp olt float %44, 0.000000e+00
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.end.39
  store float 0.000000e+00, float* %temp, align 4, !tbaa !122
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.42, %if.end.39
  %45 = load float, float* %temp, align 4, !tbaa !122
  %conv44 = fptoui float %45 to i8
  %46 = load i8*, i8** %curr_pos, align 8, !tbaa !1
  store i8 %conv44, i8* %46, align 1, !tbaa !31
  br label %sw.default

sw.default:                                       ; preds = %for.body, %if.end.43
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.18, %sw.bb
  %47 = load i8*, i8** %curr_pos, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %incdec.ptr, i8** %curr_pos, align 8, !tbaa !1
  %48 = load i8*, i8** %psrc.addr, align 8, !tbaa !1
  %incdec.ptr45 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %incdec.ptr45, i8** %psrc.addr, align 8, !tbaa !1
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
  %52 = bitcast i8** %curr_pos to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #1
  ret void
}

declare void @gsicc_init_buffer(%struct.gsicc_bufferdesc_s*, i8 zeroext, i8 zeroext, i32, i32, i32, i32, i32, i32, i32) #3

; Function Attrs: inlinehint nounwind uwtable
define internal float @rescale_input_color(<2 x float> %range.coerce, float %input) #5 {
entry:
  %range = alloca %struct.gs_range_s, align 8
  %input.addr = alloca float, align 4
  %0 = bitcast %struct.gs_range_s* %range to <2 x float>*
  store <2 x float> %range.coerce, <2 x float>* %0, align 8
  store float %input, float* %input.addr, align 4, !tbaa !122
  %1 = load float, float* %input.addr, align 4, !tbaa !122
  %rmin = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %range, i32 0, i32 0
  %2 = load float, float* %rmin, align 4, !tbaa !170
  %sub = fsub float %1, %2
  %rmax = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %range, i32 0, i32 1
  %3 = load float, float* %rmax, align 4, !tbaa !172
  %rmin1 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %range, i32 0, i32 0
  %4 = load float, float* %rmin1, align 4, !tbaa !170
  %sub2 = fsub float %3, %4
  %div = fdiv float %sub, %sub2
  ret float %div
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare void @cmap_transfer_halftone(i16*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32, i32, i32) #3

declare i32 @gs_color_space_is_ICC(%struct.gs_color_space_s*) #3

declare i32 @gx_remap_ICC_imagelab(%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32) #3

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #6

; Function Attrs: nounwind uwtable
define internal i32 @mask_color_matches(i8* %v, %struct.gx_image_enum_s* %penum, i32 %num_components) #0 {
entry:
  %retval = alloca i32, align 4
  %v.addr = alloca i8*, align 8
  %penum.addr = alloca %struct.gx_image_enum_s*, align 8
  %num_components.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %v, i8** %v.addr, align 8, !tbaa !1
  store %struct.gx_image_enum_s* %penum, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  store i32 %num_components, i32* %num_components.addr, align 4, !tbaa !5
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %num_components.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %1, 2
  store i32 %mul, i32* %i, align 4, !tbaa !5
  %2 = load i32, i32* %num_components.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %2, 1
  %3 = load i8*, i8** %v.addr, align 8, !tbaa !1
  %idx.ext = sext i32 %sub to i64
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %idx.ext
  store i8* %add.ptr, i8** %v.addr, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4, !tbaa !5
  %sub1 = sub nsw i32 %4, 2
  store i32 %sub1, i32* %i, align 4, !tbaa !5
  %cmp = icmp sge i32 %sub1, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i8*, i8** %v.addr, align 8, !tbaa !1
  %6 = load i8, i8* %5, align 1, !tbaa !31
  %conv = zext i8 %6 to i32
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
  %10 = load i8*, i8** %v.addr, align 8, !tbaa !1
  %11 = load i8, i8* %10, align 1, !tbaa !31
  %conv4 = zext i8 %11 to i32
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
  %15 = load i8*, i8** %v.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %15, i32 -1
  store i8* %incdec.ptr, i8** %v.addr, align 8, !tbaa !1
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

declare i32 @gx_device_color_equal(%struct.gx_device_color_s*, %struct.gx_device_color_s*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nobuiltin nounwind }
attributes #8 = { nobuiltin }
attributes #9 = { nobuiltin nounwind readonly }
attributes #10 = { nobuiltin nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !3, i64 1116}
!8 = !{!"gx_image_enum_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !9, i64 32, !6, i64 40, !6, i64 44, !3, i64 48, !3, i64 308, !6, i64 568, !6, i64 572, !3, i64 576, !3, i64 577, !3, i64 578, !3, i64 579, !3, i64 580, !10, i64 584, !3, i64 1116, !3, i64 1117, !3, i64 1118, !3, i64 1119, !11, i64 1120, !13, i64 1144, !14, i64 1160, !6, i64 1176, !6, i64 1180, !15, i64 1184, !15, i64 1192, !2, i64 1200, !2, i64 1208, !2, i64 1216, !2, i64 1224, !2, i64 1232, !6, i64 1240, !2, i64 1248, !6, i64 1256, !6, i64 1260, !3, i64 1264, !3, i64 1268, !3, i64 1269, !3, i64 1270, !3, i64 1271, !16, i64 1272, !16, i64 1288, !6, i64 1304, !6, i64 1308, !6, i64 1312, !6, i64 1316, !2, i64 1320, !2, i64 1328, !2, i64 1336, !6, i64 1344, !17, i64 1348, !15, i64 1356, !15, i64 1364, !18, i64 1372, !6, i64 1492, !6, i64 1496, !17, i64 1500, !6, i64 1508, !6, i64 1512, !6, i64 1516, !6, i64 1520, !6, i64 1524, !3, i64 1528, !2, i64 23112, !23, i64 23120, !23, i64 23776, !2, i64 24432, !2, i64 24440, !2, i64 24448, !2, i64 24456, !2, i64 24464, !6, i64 24472, !6, i64 24476, !6, i64 24480, !2, i64 24488, !6, i64 24496, !3, i64 24500, !28, i64 24504, !29, i64 24792, !6, i64 24808}
!9 = !{!"long", !3, i64 0}
!10 = !{!"mc_", !3, i64 0, !6, i64 520, !6, i64 524, !6, i64 528}
!11 = !{!"gs_matrix_s", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20}
!12 = !{!"float", !3, i64 0}
!13 = !{!"r_", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!14 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!15 = !{!"gs_fixed_point_s", !6, i64 0, !6, i64 4}
!16 = !{!"gs_fixed_rect_s", !15, i64 0, !15, i64 8}
!17 = !{!"gs_int_point_s", !6, i64 0, !6, i64 4}
!18 = !{!"dd_", !19, i64 0, !19, i64 40, !19, i64 80}
!19 = !{!"gx_dda_fixed_point_s", !20, i64 0, !20, i64 20}
!20 = !{!"gx_dda_fixed_s", !21, i64 0, !22, i64 8}
!21 = !{!"_a", !6, i64 0, !6, i64 4}
!22 = !{!"_e", !6, i64 0, !6, i64 4, !6, i64 8}
!23 = !{!"gx_device_color_s", !2, i64 0, !3, i64 8, !17, i64 352, !6, i64 360, !24, i64 368, !26, i64 632}
!24 = !{!"gs_client_color_s", !2, i64 0, !25, i64 8}
!25 = !{!"gs_paint_color_s", !3, i64 0}
!26 = !{!"_mask", !27, i64 0, !9, i64 8, !2, i64 16}
!27 = !{!"mp_", !6, i64 0, !6, i64 4}
!28 = !{!"ht_landscape_info_s", !6, i64 0, !3, i64 4, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284}
!29 = !{!"gx_image_icc_setup_s", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!30 = !{!8, !3, i64 579}
!31 = !{!3, !3, i64 0}
!32 = !{!8, !6, i64 1104}
!33 = !{!8, !6, i64 1108}
!34 = !{!8, !6, i64 1112}
!35 = !{!8, !2, i64 16}
!36 = !{!8, !2, i64 1216}
!37 = !{!8, !2, i64 1224}
!38 = !{!39, !2, i64 64}
!39 = !{!"gs_color_space_s", !2, i64 0, !40, i64 8, !9, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !3, i64 72}
!40 = !{!"rc_header_s", !9, i64 0, !2, i64 8, !2, i64 16}
!41 = !{!39, !2, i64 0}
!42 = !{!43, !2, i64 24}
!43 = !{!"gs_color_space_type_s", !3, i64 0, !6, i64 4, !6, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128}
!44 = !{!45, !2, i64 1680}
!45 = !{!"gx_device_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !40, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !46, i64 96, !49, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !9, i64 928, !9, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !9, i64 968, !9, i64 976, !50, i64 984, !6, i64 1052, !6, i64 1056, !51, i64 1064, !2, i64 1104, !3, i64 1112, !53, i64 1120, !54, i64 1144}
!46 = !{!"gx_device_color_info_s", !6, i64 0, !6, i64 4, !3, i64 8, !47, i64 12, !3, i64 14, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !48, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !9, i64 704, !6, i64 712}
!47 = !{!"short", !3, i64 0}
!48 = !{!"gx_device_anti_alias_info_s", !6, i64 0, !6, i64 4}
!49 = !{!"gx_device_cached_colors_s", !9, i64 0, !9, i64 8}
!50 = !{!"gx_stroked_gradient_recognizer_s", !6, i64 0, !3, i64 4, !3, i64 36}
!51 = !{!"gdev_space_params_s", !9, i64 0, !9, i64 8, !52, i64 16, !6, i64 32, !3, i64 36}
!52 = !{!"gx_band_params_s", !6, i64 0, !6, i64 4, !9, i64 8}
!53 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!54 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!55 = !{!8, !6, i64 24792}
!56 = !{!57, !3, i64 324}
!57 = !{!"sample_map_s", !3, i64 0, !3, i64 256, !12, i64 320, !3, i64 324, !6, i64 328}
!58 = !{!59, !6, i64 328}
!59 = !{!"gs_imager_state_s", !6, i64 0, !2, i64 8, !2, i64 16, !60, i64 24, !6, i64 128, !62, i64 132, !6, i64 168, !63, i64 176, !63, i64 192, !6, i64 208, !6, i64 212, !47, i64 216, !3, i64 220, !65, i64 224, !65, i64 228, !66, i64 232, !9, i64 240, !6, i64 248, !6, i64 252, !6, i64 256, !2, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !12, i64 296, !15, i64 300, !6, i64 308, !6, i64 312, !6, i64 316, !12, i64 320, !6, i64 324, !6, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !6, i64 408, !2, i64 416, !2, i64 424, !67, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !68, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !68, i64 1336}
!60 = !{!"gx_line_params_s", !12, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !6, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !6, i64 36, !11, i64 40, !61, i64 64}
!61 = !{!"gx_dash_params_s", !2, i64 0, !6, i64 8, !12, i64 12, !6, i64 16, !12, i64 20, !6, i64 24, !6, i64 28, !12, i64 32}
!62 = !{!"gs_matrix_fixed_s", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !6, i64 24, !6, i64 28, !6, i64 32}
!63 = !{!"gs_point_s", !64, i64 0, !64, i64 8}
!64 = !{!"double", !3, i64 0}
!65 = !{!"gs_transparency_source_s", !12, i64 0}
!66 = !{!"gs_xstate_trans_flags", !6, i64 0, !6, i64 4}
!67 = !{!"gx_transfer_s", !6, i64 0, !2, i64 8, !6, i64 16, !2, i64 24, !6, i64 32, !2, i64 40, !6, i64 48, !2, i64 56}
!68 = !{!"gs_devicen_color_map_s", !6, i64 0, !3, i64 4, !6, i64 8, !6, i64 12, !9, i64 16, !3, i64 24}
!69 = !{!70, !3, i64 4}
!70 = !{!"gsicc_rendering_param_s", !3, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !6, i64 20}
!71 = !{!70, !3, i64 12}
!72 = !{!70, !6, i64 20}
!73 = !{!70, !3, i64 8}
!74 = !{!59, !6, i64 324}
!75 = !{!70, !3, i64 0}
!76 = !{!70, !3, i64 16}
!77 = !{!39, !2, i64 48}
!78 = !{!79, !6, i64 4}
!79 = !{!"cmm_profile_s", !3, i64 0, !3, i64 1, !6, i64 4, !6, i64 8, !3, i64 12, !3, i64 16, !80, i64 20, !9, i64 144, !6, i64 152, !3, i64 156, !6, i64 216, !6, i64 220, !6, i64 224, !70, i64 228, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !40, i64 288, !6, i64 312, !2, i64 320, !2, i64 328, !2, i64 336}
!80 = !{!"gs_range_icc_s", !3, i64 0}
!81 = !{!8, !6, i64 24796}
!82 = !{!45, !6, i64 100}
!83 = !{!45, !3, i64 110}
!84 = !{!45, !6, i64 116}
!85 = !{!45, !6, i64 112}
!86 = !{!8, !6, i64 24800}
!87 = !{!8, !6, i64 24804}
!88 = !{!8, !2, i64 24448}
!89 = !{!8, !2, i64 24}
!90 = !{!8, !6, i64 24808}
!91 = !{!8, !3, i64 1264}
!92 = !{!8, !3, i64 24500}
!93 = !{!45, !6, i64 848}
!94 = !{!45, !47, i64 108}
!95 = !{!8, !3, i64 576}
!96 = !{!8, !6, i64 1304}
!97 = !{!43, !2, i64 72}
!98 = !{!45, !2, i64 1664}
!99 = !{!47, !47, i64 0}
!100 = !{!23, !2, i64 0}
!101 = !{i64 0, i64 4, !5, i64 4, i64 4, !5, i64 8, i64 4, !5, i64 12, i64 4, !5, i64 16, i64 4, !5, i64 20, i64 4, !5, i64 24, i64 4, !5, i64 28, i64 4, !5, i64 32, i64 4, !5, i64 36, i64 4, !5}
!102 = !{!19, !6, i64 0}
!103 = !{!19, !6, i64 20}
!104 = !{!8, !6, i64 1372}
!105 = !{!8, !6, i64 1356}
!106 = !{!8, !6, i64 1392}
!107 = !{!8, !6, i64 1360}
!108 = !{!8, !6, i64 1512}
!109 = !{!8, !6, i64 1516}
!110 = !{!8, !6, i64 1520}
!111 = !{!8, !6, i64 1524}
!112 = !{!24, !2, i64 0}
!113 = !{!43, !2, i64 32}
!114 = !{!19, !6, i64 12}
!115 = !{!19, !6, i64 4}
!116 = !{!19, !6, i64 16}
!117 = !{!19, !6, i64 8}
!118 = !{!19, !6, i64 32}
!119 = !{!19, !6, i64 24}
!120 = !{!19, !6, i64 36}
!121 = !{!19, !6, i64 28}
!122 = !{!12, !12, i64 0}
!123 = !{!57, !12, i64 320}
!124 = !{!125, !2, i64 40}
!125 = !{!"gx_device_color_type_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80}
!126 = !{!45, !2, i64 1368}
!127 = !{i64 0, i64 64, !31, i64 0, i64 64, !31}
!128 = !{!8, !6, i64 1348}
!129 = !{!8, !6, i64 1352}
!130 = !{!8, !6, i64 24476}
!131 = !{!8, !6, i64 24504}
!132 = !{!8, !6, i64 24780}
!133 = !{!8, !6, i64 1152}
!134 = !{!8, !6, i64 1256}
!135 = !{!8, !2, i64 24488}
!136 = !{!8, !2, i64 1248}
!137 = !{!8, !6, i64 1452}
!138 = !{!8, !6, i64 1308}
!139 = !{!8, !6, i64 1184}
!140 = !{!8, !6, i64 1196}
!141 = !{!8, !6, i64 1192}
!142 = !{!8, !6, i64 1188}
!143 = !{!8, !6, i64 24772}
!144 = !{!8, !6, i64 24764}
!145 = !{!146, !6, i64 8}
!146 = !{!"gx_dda_int_s", !147, i64 0, !148, i64 8}
!147 = !{!"ia_", !6, i64 0, !6, i64 4}
!148 = !{!"ie_", !6, i64 0, !6, i64 4, !6, i64 8}
!149 = !{!146, !6, i64 12}
!150 = !{!146, !6, i64 16}
!151 = !{!146, !6, i64 0}
!152 = !{!146, !6, i64 4}
!153 = !{!8, !6, i64 1180}
!154 = !{!8, !6, i64 24784}
!155 = !{!8, !6, i64 24768}
!156 = !{!8, !6, i64 24776}
!157 = !{!59, !2, i64 8}
!158 = !{!159, !2, i64 24}
!159 = !{!"gs_memory_s", !2, i64 0, !160, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!160 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!161 = !{!8, !3, i64 580}
!162 = !{!45, !2, i64 1552}
!163 = !{!9, !9, i64 0}
!164 = !{!165, !6, i64 116}
!165 = !{!"gsicc_link_s", !2, i64 0, !166, i64 8, !167, i64 40, !2, i64 72, !6, i64 80, !2, i64 88, !2, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !166, i64 128, !3, i64 160, !6, i64 164, !6, i64 168}
!166 = !{!"gscms_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!167 = !{!"gsicc_hashlink_s", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24}
!168 = !{!159, !2, i64 64}
!169 = !{!165, !2, i64 8}
!170 = !{!171, !12, i64 0}
!171 = !{!"gs_range_s", !12, i64 0, !12, i64 4}
!172 = !{!171, !12, i64 4}
