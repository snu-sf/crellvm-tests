; ModuleID = './gsicc_manage.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_color_space_type_s = type { i32, i32, i32, %struct.gs_memory_struct_type_s*, i32 (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, void (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)*, i32 (%struct.gs_color_space_s*)* }
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
%struct.gs_client_color_s = type { %struct.gs_pattern_instance_s*, %struct.gs_paint_color_s }
%struct.gs_pattern_instance_s = type { %struct.rc_header_s, %struct.gs_pattern_type_s*, %struct.gs_state_s*, i64 }
%struct.rc_header_s = type { i64, %struct.gs_memory_s*, void (%struct.gs_memory_s*, i8*, i8*)* }
%struct.gs_pattern_type_s = type opaque
%struct.gs_state_s = type { i32, %struct.gs_memory_s*, i8*, %struct.gx_line_params_s, i32, %struct.gs_matrix_fixed_s, i32, %struct.gs_point_s, %struct.gs_point_s, i32, i32, i16, i32, %struct.gs_transparency_source_s, %struct.gs_transparency_source_s, %struct.gs_xstate_trans_flags, i64, i32, i32, i32, %struct.gx_device_s*, i32, i32, i32, i32, i32, i32, float, %struct.gs_fixed_point_s, i32, i32, i32, float, i32, i32, %struct.gsicc_manager_s*, %struct.gsicc_link_cache_s*, %struct.gsicc_profile_cache_s*, %struct.gx_color_map_procs_s* (%struct.gs_imager_state_s*, %struct.gx_device_s*)*, %struct.gs_halftone_s*, [2 x %struct.gs_int_point_s], %struct.gx_device_halftone_s*, %struct.gs_cie_render_s*, i32, %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s*, %struct.gx_transfer_s, [64 x %struct.gx_transfer_map_s*], %struct.gx_cie_joint_caches_s*, %struct.gx_color_map_procs_s*, %struct.gs_devicen_color_map_s, %struct.gx_pattern_cache_s*, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_devicen_color_map_s, %struct.gs_state_s*, %struct.gs_matrix_s, i32, %struct.gs_matrix_s, i32, %struct.gx_path_s*, %struct.gx_clip_path_s*, %struct.gx_clip_stack_s*, %struct.gx_clip_path_s*, i64, i64, %struct.gx_clip_path_s*, i32, [2 x %struct.anon.2], %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_matrix_fixed_s, i32, i32, i32, %struct.gs_state_s*, i32, %struct.gx_device_s*, %struct.gs_device_filter_stack_s*, %struct.gs_state_client_procs_s }
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
%struct.gs_halftone_s = type { i32, %struct.rc_header_s, %union.anon }
%union.anon = type { %struct.gs_colorscreen_halftone_s }
%struct.gs_colorscreen_halftone_s = type { %union._css }
%union._css = type { [4 x %struct.gs_screen_halftone_s] }
%struct.gs_screen_halftone_s = type { float, float, float (double, double)*, float, float }
%struct.gs_int_point_s = type { i32, i32 }
%struct.gx_device_halftone_s = type { %struct.gx_ht_order_s, %struct.rc_header_s, i64, i32, %struct.gx_ht_order_component_s*, i32, i32, i32, i32 }
%struct.gx_ht_order_s = type { %struct.gx_ht_cell_params_s, i16, i16, i16, i16, i16, i16, i32, i32, i32, %struct.gx_ht_order_procs_s*, %struct.gs_memory_s*, i32*, i8*, %struct.gx_ht_cache_s*, %struct.gx_transfer_map_s*, %struct.gx_ht_order_screen_params_s, i8*, i32 }
%struct.gx_ht_cell_params_s = type { i16, i16, i16, i16, i16, i16, i64, i16, i16, i32, i32, i32 }
%struct.gx_ht_order_procs_s = type { i32, i32 (%struct.gx_ht_order_s*, i8*)*, i32 (%struct.gx_ht_order_s*, i32, %struct.gs_int_point_s*)*, i32 (%struct.gx_ht_tile_s*, i32, %struct.gx_ht_order_s*)*, i32 (%struct.gx_ht_order_s*, i16, i8*, i32, i32, i32, i32, i32)* }
%struct.gx_ht_tile_s = type { %struct.gx_strip_bitmap_s, i32, i32 }
%struct.gx_strip_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16, i16, i16, i32 }
%struct.gx_ht_cache_s = type opaque
%struct.gx_ht_order_screen_params_s = type { %struct.gs_matrix_s, i64 }
%struct.gx_ht_order_component_s = type { %struct.gx_ht_order_s, i32, i32 }
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
%struct.gx_transfer_map_s = type { %struct.rc_header_s, {}*, %struct.gs_mapping_closure_s, i64, [256 x i16] }
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
%struct._mask = type { %struct.mp_, i64, %struct.gx_color_tile_s* }
%struct.mp_ = type { i32, i32 }
%struct.gx_color_tile_s = type opaque
%struct.gx_pattern_cache_s = type opaque
%struct.gx_cie_joint_caches_s = type { i64, i64, i32, i32, %struct.rc_header_s, i32 (<2 x float>, float, i16*, float*, %struct.gs_imager_state_s*, %struct.gs_color_space_s*)*, i32, i32, %struct.gx_cie_vector_cache3_s, %struct.gs_cie_wbsd_s, i32, %struct.gx_cie_vector_cache3_s, i32 }
%struct.gs_devicen_color_map_s = type { i32, i32, i32, i32, i64, [64 x i32] }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gx_path_s = type opaque
%struct.gx_clip_stack_s = type opaque
%struct.gx_clip_path_s = type opaque
%struct.anon.2 = type { %struct.gs_color_space_s*, %struct.gs_client_color_s*, %struct.gx_device_color_s* }
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
%struct.gx_clist_state_s = type { [2 x i64], %struct.gx_device_color_saved_s, i32, i64, i64, %struct.gs_int_point_s, [2 x i64], [2 x %struct.gx_device_color_s], %struct.gx_cmd_rect, i32, i16, i16, i32, i32, i32, %struct.cmd_list_s, %struct.gx_colors_usage_s }
%struct.gx_cmd_rect = type { i32, i32, i32, i32 }
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
%struct.gs_devn_params_s = type opaque
%struct.gx_process_page_options_s = type { i32 (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i32, i32, i8**)*, void (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_int_rect_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, i8*)*, i8*, i32 }
%struct.gs_device_filter_stack_s = type { %struct.gs_device_filter_stack_s*, %struct.gs_device_filter_s*, %struct.gx_device_s*, %struct.rc_header_s }
%struct.gs_device_filter_s = type opaque
%struct.gs_state_client_procs_s = type { i8* (%struct.gs_memory_s*)*, i32 (i8*, i8*)*, void (i8*, %struct.gs_memory_s*)*, i32 (i8*, i8*, i32)* }
%struct.gs_paint_color_s = type { [64 x float] }
%struct.gs_color_space_s = type { %struct.gs_color_space_type_s*, %struct.rc_header_s, i64, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.client_color_space_data_s*, %struct.cmm_profile_s*, %union.anon.3 }
%struct.client_color_space_data_s = type { void (%struct.gs_color_space_s*, i32)* }
%union.anon.3 = type { %struct.gs_device_n_params_s }
%struct.gs_device_n_params_s = type { i64*, i32, %struct.gs_device_n_map_s*, %struct.gs_device_n_attributes_s*, i32, i32 (%struct.gs_memory_s*, i64, i8**, i32*)* }
%struct.gs_device_n_map_s = type opaque
%struct.gs_device_n_attributes_s = type opaque
%struct.stream_s = type opaque
%struct.default_profile_def_s = type { i8*, i32 }
%struct.gc_struct_data_s = type { i16, i16, %struct.gs_memory_struct_type_s*, %struct.gc_ptr_element_s* }
%struct.gc_ptr_element_s = type { i16, i16 }
%struct.gx_device_clist_reader_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, %struct.gx_device_buf_procs_s, %struct.gs_memory_s*, i8*, i32, %struct.gx_band_params_s, i32, i32, %struct.gx_bits_cache_chunk_s, %struct.gx_bits_cache_s, i32, i32, %struct.tile_hash*, i32, i32, %struct.gx_band_page_info_s, i32, i64, %struct.clist_icctable_s*, %struct.gsicc_link_cache_s*, i32, %struct.gsicc_link_cache_s**, %struct.gx_render_plane_s, %struct.gx_placed_page_s*, %struct.gx_colors_usage_s*, i32, i8*, i32, %struct.clist_render_thread_control_s*, i8*, i32, i32, i32 }
%struct.gx_placed_page_s = type { %struct.gx_saved_page_s*, %struct.gs_int_point_s }
%struct.gx_saved_page_s = type { [32 x i8], %struct.gx_device_color_info_s, [4096 x i8], [4096 x i8], %struct.clist_io_procs_s*, i32, i64, %struct.gx_band_params_s, %struct.gs_memory_s*, i32, i8* }
%struct.clist_render_thread_control_s = type opaque
%struct.gsicc_serialized_profile_s = type { i8, i8, i32, i32, i32, i32, %struct.gs_range_icc_s, i64, i32, [15 x i32], i32, i32, i32, %struct.gsicc_rendering_param_s }
%struct.gs_cie_abc_s = type { %struct.gs_cie_common_s, %struct.rc_header_s, %struct.gs_range3_s, %struct.gs_cie_abc_proc3_s, %struct.gs_matrix3_s, %struct.anon.9 }
%struct.gs_cie_common_s = type { i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i8*, %struct.gs_range3_s, %struct.gs_cie_common_proc3_s, %struct.gs_matrix3_s, %struct.gs_cie_wb_s, %struct.anon.4 }
%struct.gs_cie_common_proc3_s = type { [3 x float (double, %struct.gs_cie_common_s*)*] }
%struct.anon.4 = type { [3 x %union.gx_cie_scalar_cache_s] }
%struct.gs_cie_abc_proc3_s = type { [3 x float (double, %struct.gs_cie_abc_s*)*] }
%struct.anon.9 = type { i32, %struct.gx_cie_vector_cache3_s }
%struct.gs_cie_a_s = type { %struct.gs_cie_common_s, %struct.rc_header_s, %struct.gs_range_s, float (double, %struct.gs_cie_a_s*)*, %struct.gs_vector3_s, %struct.anon.10 }
%struct.anon.10 = type { %struct.gx_cie_vector_cache_s }

@.str = private unnamed_addr constant [19 x i8] c"gsicc_new_iccsmask\00", align 1
@__func__.gsicc_initialize_iccsmask = private unnamed_addr constant [26 x i8] c"gsicc_initialize_iccsmask\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"./base/gsicc_manage.c\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"insufficient memory to allocate smask profiles\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"ps_gray.icc\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"failed to load gray smask profile\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"ps_rgb.icc\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"failed to load rgb smask profile\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"ps_cmyk.icc\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"failed to load cmyk smask profile\00", align 1
@gsicc_set_srcgtag_struct.srcgtag_keys = internal constant [7 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0)], align 16
@.str.9 = private unnamed_addr constant [10 x i8] c"ColorTune\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"Graphic_CMYK\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"Image_CMYK\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"Text_CMYK\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"Graphic_RGB\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"Image_RGB\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"Text_RGB\00", align 1
@__func__.gsicc_set_srcgtag_struct = private unnamed_addr constant [25 x i8] c"gsicc_set_srcgtag_struct\00", align 1
@.str.16 = private unnamed_addr constant [40 x i8] c"setting of %s src obj color info failed\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"%%%ds\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"\09,\1A\0A\0D\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"Replace\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"failed to find key in %s\00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c"Error in srcgtag data %s\00", align 1
@.str.23 = private unnamed_addr constant [33 x i8] c"Insufficient memory for tag name\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"OIProfile\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"gsicc_set_profile\00", align 1
@.str.26 = private unnamed_addr constant [25 x i8] c"problems with profile %s\00", align 1
@.str.27 = private unnamed_addr constant [37 x i8] c"Insufficient memory for profile name\00", align 1
@__func__.gsicc_initialize_default_profile = private unnamed_addr constant [33 x i8] c"gsicc_initialize_default_profile\00", align 1
@.str.28 = private unnamed_addr constant [39 x i8] c"allocation of profile %s handle failed\00", align 1
@.str.29 = private unnamed_addr constant [47 x i8] c"A default profile has an incorrect color space\00", align 1
@.str.30 = private unnamed_addr constant [31 x i8] c"gsicc_new_device_profile_array\00", align 1
@gs_color_space_type_ICC = external constant %struct.gs_color_space_type_s, align 8
@__func__.gsicc_set_devicen_equiv_colors = private unnamed_addr constant [31 x i8] c"gsicc_set_devicen_equiv_colors\00", align 1
@.str.31 = private unnamed_addr constant [42 x i8] c"Insufficient memory for devn equiv colors\00", align 1
@.str.32 = private unnamed_addr constant [35 x i8] c"gsicc_set_device_profile_colorants\00", align 1
@.str.33 = private unnamed_addr constant [38 x i8] c"Insufficient memory for colorant name\00", align 1
@.str.34 = private unnamed_addr constant [30 x i8] c"Cyan, Magenta, Yellow, Black,\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"ICC_COLOR_%d,\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"ICC_COLOR_%d\00", align 1
@.str.37 = private unnamed_addr constant [34 x i8] c"Insufficient memory for spot name\00", align 1
@.str.38 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.39 = private unnamed_addr constant [39 x i8] c"Insufficient memory for spot color map\00", align 1
@.str.40 = private unnamed_addr constant [33 x i8] c"gsicc_init_device_profile_struct\00", align 1
@.str.41 = private unnamed_addr constant [17 x i8] c"default_gray.icc\00", align 1
@.str.42 = private unnamed_addr constant [16 x i8] c"default_rgb.icc\00", align 1
@.str.43 = private unnamed_addr constant [17 x i8] c"default_cmyk.icc\00", align 1
@__func__.gsicc_set_device_profile = private unnamed_addr constant [25 x i8] c"gsicc_set_device_profile\00", align 1
@.str.44 = private unnamed_addr constant [27 x i8] c"cannot find device profile\00", align 1
@.str.45 = private unnamed_addr constant [23 x i8] c"gsicc_set_gscs_profile\00", align 1
@.str.46 = private unnamed_addr constant [18 x i8] c"gsicc_profile_new\00", align 1
@.str.47 = private unnamed_addr constant [21 x i8] c"gsicc_init_gs_colors\00", align 1
@default_profile_params = internal global [4 x %struct.default_profile_def_s] [%struct.default_profile_def_s { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.41, i32 0, i32 0), i32 1 }, %struct.default_profile_def_s { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.42, i32 0, i32 0), i32 2 }, %struct.default_profile_def_s { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.43, i32 0, i32 0), i32 3 }, %struct.default_profile_def_s { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.71, i32 0, i32 0), i32 5 }], align 16
@__func__.gsicc_init_iccmanager = private unnamed_addr constant [22 x i8] c"gsicc_init_iccmanager\00", align 1
@.str.48 = private unnamed_addr constant [32 x i8] c"cannot find default icc profile\00", align 1
@st_gsicc_manager = internal constant %struct.gs_memory_struct_type_s { i32 112, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.91, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @gsicc_manager_profile_reloc_ptrs to i8*) }, align 8
@.str.49 = private unnamed_addr constant [18 x i8] c"gsicc_manager_new\00", align 1
@.str.50 = private unnamed_addr constant [31 x i8] c"gsicc_get_profile_handle_clist\00", align 1
@__func__.gsicc_get_gscs_profile = private unnamed_addr constant [23 x i8] c"gsicc_get_gscs_profile\00", align 1
@.str.51 = private unnamed_addr constant [41 x i8] c"Failed to create ICC profile from CIEABC\00", align 1
@.str.52 = private unnamed_addr constant [24 x i8] c"gsicc_profile_reference\00", align 1
@gs_currentdevicenicc.rfs = internal constant i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0), align 8
@.str.53 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.54 = private unnamed_addr constant [24 x i8] c"set_devicen_profile_icc\00", align 1
@.str.55 = private unnamed_addr constant [3 x i8] c",;\00", align 1
@__func__.gs_setdevicenprofileicc = private unnamed_addr constant [24 x i8] c"gs_setdevicenprofileicc\00", align 1
@.str.56 = private unnamed_addr constant [32 x i8] c"cannot find devicen icc profile\00", align 1
@gs_currentdefaultgrayicc.rfs = internal constant i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.41, i32 0, i32 0), align 8
@.str.57 = private unnamed_addr constant [21 x i8] c"set_default_gray_icc\00", align 1
@__func__.gs_setdefaultgrayicc = private unnamed_addr constant [21 x i8] c"gs_setdefaultgrayicc\00", align 1
@.str.58 = private unnamed_addr constant [37 x i8] c"cannot find default gray icc profile\00", align 1
@.str.59 = private unnamed_addr constant [46 x i8] c"error initializing gstate color spaces to icc\00", align 1
@gs_currenticcdirectory.rfs = internal constant i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.60, i32 0, i32 0), align 8
@.str.60 = private unnamed_addr constant [18 x i8] c"%rom%iccprofiles/\00", align 1
@.str.61 = private unnamed_addr constant [18 x i8] c"set_icc_directory\00", align 1
@__func__.gs_seticcdirectory = private unnamed_addr constant [19 x i8] c"gs_seticcdirectory\00", align 1
@.str.62 = private unnamed_addr constant [31 x i8] c"cannot allocate directory name\00", align 1
@.str.63 = private unnamed_addr constant [16 x i8] c"set_srcgtag_icc\00", align 1
@__func__.gs_setsrcgtagicc = private unnamed_addr constant [17 x i8] c"gs_setsrcgtagicc\00", align 1
@.str.64 = private unnamed_addr constant [24 x i8] c"cannot find srctag file\00", align 1
@gs_currentdefaultrgbicc.rfs = internal constant i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.42, i32 0, i32 0), align 8
@.str.65 = private unnamed_addr constant [20 x i8] c"set_default_rgb_icc\00", align 1
@__func__.gs_setdefaultrgbicc = private unnamed_addr constant [20 x i8] c"gs_setdefaultrgbicc\00", align 1
@.str.66 = private unnamed_addr constant [36 x i8] c"cannot find default rgb icc profile\00", align 1
@gs_currentnamedicc.rfs = internal constant i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0), align 8
@.str.67 = private unnamed_addr constant [22 x i8] c"set_named_profile_icc\00", align 1
@__func__.gs_setnamedprofileicc = private unnamed_addr constant [22 x i8] c"gs_setnamedprofileicc\00", align 1
@.str.68 = private unnamed_addr constant [36 x i8] c"cannot find named color icc profile\00", align 1
@gs_currentdefaultcmykicc.rfs = internal constant i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.43, i32 0, i32 0), align 8
@.str.69 = private unnamed_addr constant [21 x i8] c"set_default_cmyk_icc\00", align 1
@__func__.gs_setdefaultcmykicc = private unnamed_addr constant [21 x i8] c"gs_setdefaultcmykicc\00", align 1
@.str.70 = private unnamed_addr constant [37 x i8] c"cannot find default cmyk icc profile\00", align 1
@gs_currentlabicc.rfs = internal constant i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.71, i32 0, i32 0), align 8
@.str.71 = private unnamed_addr constant [8 x i8] c"lab.icc\00", align 1
@.str.72 = private unnamed_addr constant [12 x i8] c"set_lab_icc\00", align 1
@__func__.gs_setlabicc = private unnamed_addr constant [13 x i8] c"gs_setlabicc\00", align 1
@.str.73 = private unnamed_addr constant [36 x i8] c"cannot find default lab icc profile\00", align 1
@.str.74 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@st_gsicc_devicen_entry = internal constant %struct.gs_memory_struct_type_s { i32 16, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.77, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @gsicc_devicen_entry_reloc_ptrs to i8*) }, align 8
@.str.75 = private unnamed_addr constant [18 x i8] c"gsicc_new_devicen\00", align 1
@.str.76 = private unnamed_addr constant [49 x i8] c"insufficient memory to allocate device n profile\00", align 1
@st_gsicc_devicen = internal constant %struct.gs_memory_struct_type_s { i32 24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.78, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @gsicc_devicen_reloc_ptrs to i8*) }, align 8
@.str.77 = private unnamed_addr constant [20 x i8] c"gsicc_devicen_entry\00", align 1
@gsicc_devicen_entry_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 1, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([1 x %struct.gc_ptr_element_s], [1 x %struct.gc_ptr_element_s]* @gsicc_devicen_entry_enum_ptrs, i32 0, i32 0) }, align 8
@gsicc_devicen_entry_enum_ptrs = internal constant [1 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 8 }], align 2
@.str.78 = private unnamed_addr constant [14 x i8] c"gsicc_devicen\00", align 1
@gsicc_devicen_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 2, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([2 x %struct.gc_ptr_element_s], [2 x %struct.gc_ptr_element_s]* @gsicc_devicen_enum_ptrs, i32 0, i32 0) }, align 8
@gsicc_devicen_enum_ptrs = internal constant [2 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s zeroinitializer, %struct.gc_ptr_element_s { i16 0, i16 8 }], align 2
@.str.79 = private unnamed_addr constant [20 x i8] c"gsicc_get_spotnames\00", align 1
@.str.80 = private unnamed_addr constant [18 x i8] c"gsicc_open_search\00", align 1
@.str.81 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.82 = private unnamed_addr constant [19 x i8] c"Could not find %s \00", align 1
@.str.83 = private unnamed_addr constant [26 x i8] c"gsicc_new_srcgtag_profile\00", align 1
@.str.84 = private unnamed_addr constant [24 x i8] c"rc_free_srcgtag_profile\00", align 1
@.str.85 = private unnamed_addr constant [22 x i8] c"rc_free_profile_array\00", align 1
@.str.86 = private unnamed_addr constant [21 x i8] c"gsicc_free_spotnames\00", align 1
@.str.87 = private unnamed_addr constant [19 x i8] c"gsicc_new_namelist\00", align 1
@st_gsicc_colorname = internal constant %struct.gs_memory_struct_type_s { i32 24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.89, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @gsicc_colorname_reloc_ptrs to i8*) }, align 8
@.str.88 = private unnamed_addr constant [20 x i8] c"gsicc_new_colorname\00", align 1
@.str.89 = private unnamed_addr constant [16 x i8] c"gsicc_colorname\00", align 1
@gsicc_colorname_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 2, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([2 x %struct.gc_ptr_element_s], [2 x %struct.gc_ptr_element_s]* @gsicc_colorname_enum_ptrs, i32 0, i32 0) }, align 8
@gsicc_colorname_enum_ptrs = internal constant [2 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s zeroinitializer, %struct.gc_ptr_element_s { i16 0, i16 16 }], align 2
@.str.90 = private unnamed_addr constant [20 x i8] c"rc_free_icc_profile\00", align 1
@.str.91 = private unnamed_addr constant [14 x i8] c"gsicc_manager\00", align 1
@gsicc_manager_profile_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 2, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([2 x %struct.gc_ptr_element_s], [2 x %struct.gc_ptr_element_s]* @gsicc_manager_enum_ptrs, i32 0, i32 0) }, align 8
@gsicc_manager_enum_ptrs = internal constant [2 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 56 }, %struct.gc_ptr_element_s { i16 0, i16 48 }], align 2
@.str.92 = private unnamed_addr constant [22 x i8] c"rc_gsicc_manager_free\00", align 1
@.str.93 = private unnamed_addr constant [19 x i8] c"gsicc_load_profile\00", align 1
@__func__.gsicc_load_profile_buffer = private unnamed_addr constant [26 x i8] c"gsicc_load_profile_buffer\00", align 1
@.str.94 = private unnamed_addr constant [39 x i8] c"Insufficient memory for profile buffer\00", align 1
@__func__.gsicc_load_namedcolor_buffer = private unnamed_addr constant [29 x i8] c"gsicc_load_namedcolor_buffer\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gsicc_getprofilesize(i8* %buffer) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  store i8* %buffer, i8** %buffer.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1, !tbaa !5
  %conv = zext i8 %1 to i32
  %shl = shl i32 %conv, 24
  %2 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i8, i8* %2, i64 1
  %3 = load i8, i8* %arrayidx1, align 1, !tbaa !5
  %conv2 = zext i8 %3 to i32
  %shl3 = shl i32 %conv2, 16
  %add = add nsw i32 %shl, %shl3
  %4 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i8, i8* %4, i64 2
  %5 = load i8, i8* %arrayidx4, align 1, !tbaa !5
  %conv5 = zext i8 %5 to i32
  %shl6 = shl i32 %conv5, 8
  %add7 = add nsw i32 %add, %shl6
  %6 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds i8, i8* %6, i64 3
  %7 = load i8, i8* %arrayidx8, align 1, !tbaa !5
  %conv9 = zext i8 %7 to i32
  %add10 = add nsw i32 %add7, %conv9
  ret i32 %add10
}

; Function Attrs: nounwind uwtable
define void @gscms_set_icc_range(%struct.cmm_profile_s** %icc_profile) #0 {
entry:
  %icc_profile.addr = alloca %struct.cmm_profile_s**, align 8
  %num_comp = alloca i32, align 4
  %k = alloca i32, align 4
  store %struct.cmm_profile_s** %icc_profile, %struct.cmm_profile_s*** %icc_profile.addr, align 8, !tbaa !1
  %0 = bitcast i32* %num_comp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.cmm_profile_s**, %struct.cmm_profile_s*** %icc_profile.addr, align 8, !tbaa !1
  %2 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %1, align 8, !tbaa !1
  %num_comps = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %2, i32 0, i32 0
  %3 = load i8, i8* %num_comps, align 1, !tbaa !6
  %conv = zext i8 %3 to i32
  store i32 %conv, i32* %num_comp, align 4, !tbaa !13
  %4 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 0, i32* %k, align 4, !tbaa !13
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %k, align 4, !tbaa !13
  %6 = load i32, i32* %num_comp, align 4, !tbaa !13
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %k, align 4, !tbaa !13
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.cmm_profile_s**, %struct.cmm_profile_s*** %icc_profile.addr, align 8, !tbaa !1
  %9 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %8, align 8, !tbaa !1
  %Range = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %9, i32 0, i32 6
  %ranges = getelementptr inbounds %struct.gs_range_icc_s, %struct.gs_range_icc_s* %Range, i32 0, i32 0
  %arrayidx = getelementptr inbounds [15 x %struct.gs_range_s], [15 x %struct.gs_range_s]* %ranges, i32 0, i64 %idxprom
  %rmin = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx, i32 0, i32 0
  store float 0.000000e+00, float* %rmin, align 4, !tbaa !14
  %10 = load i32, i32* %k, align 4, !tbaa !13
  %idxprom2 = sext i32 %10 to i64
  %11 = load %struct.cmm_profile_s**, %struct.cmm_profile_s*** %icc_profile.addr, align 8, !tbaa !1
  %12 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %11, align 8, !tbaa !1
  %Range3 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %12, i32 0, i32 6
  %ranges4 = getelementptr inbounds %struct.gs_range_icc_s, %struct.gs_range_icc_s* %Range3, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [15 x %struct.gs_range_s], [15 x %struct.gs_range_s]* %ranges4, i32 0, i64 %idxprom2
  %rmax = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx5, i32 0, i32 1
  store float 1.000000e+00, float* %rmax, align 4, !tbaa !17
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %k, align 4, !tbaa !13
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %k, align 4, !tbaa !13
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #1
  %15 = bitcast i32* %num_comp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define %struct.cmm_profile_s* @gsicc_set_iccsmaskprofile(i8* %pname, i32 %namelen, %struct.gsicc_manager_s* %icc_manager, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca %struct.cmm_profile_s*, align 8
  %pname.addr = alloca i8*, align 8
  %namelen.addr = alloca i32, align 4
  %icc_manager.addr = alloca %struct.gsicc_manager_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %str = alloca %struct.stream_s*, align 8
  %code = alloca i32, align 4
  %icc_profile = alloca %struct.cmm_profile_s*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %pname, i8** %pname.addr, align 8, !tbaa !1
  store i32 %namelen, i32* %namelen.addr, align 4, !tbaa !13
  store %struct.gsicc_manager_s* %icc_manager, %struct.gsicc_manager_s** %icc_manager.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_s** %str to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast %struct.cmm_profile_s** %icc_profile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.gsicc_manager_s* %3, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %5 = load i32, i32* %namelen.addr, align 4, !tbaa !13
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i32 @gsicc_open_search(i8* %4, i32 %5, %struct.gs_memory_s* %6, i8* null, i32 0, %struct.stream_s** %str) #5
  store i32 %call, i32* %code, align 4, !tbaa !13
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %8 = load i32, i32* %namelen.addr, align 4, !tbaa !13
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %10, i32 0, i32 2
  %11 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !18
  %profiledir = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %11, i32 0, i32 24
  %12 = load i8*, i8** %profiledir, align 8, !tbaa !21
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %gs_lib_ctx1 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %13, i32 0, i32 2
  %14 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx1, align 8, !tbaa !18
  %profiledir_len = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %14, i32 0, i32 25
  %15 = load i32, i32* %profiledir_len, align 4, !tbaa !23
  %call2 = call i32 @gsicc_open_search(i8* %7, i32 %8, %struct.gs_memory_s* %9, i8* %12, i32 %15, %struct.stream_s** %str) #5
  store i32 %call2, i32* %code, align 4, !tbaa !13
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %16 = load i32, i32* %code, align 4, !tbaa !13
  %cmp3 = icmp slt i32 %16, 0
  br i1 %cmp3, label %if.then.5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %17 = load %struct.stream_s*, %struct.stream_s** %str, align 8, !tbaa !1
  %cmp4 = icmp eq %struct.stream_s* %17, null
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %lor.lhs.false, %if.end
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %lor.lhs.false
  %18 = load %struct.stream_s*, %struct.stream_s** %str, align 8, !tbaa !1
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %20 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %21 = load i32, i32* %namelen.addr, align 4, !tbaa !13
  %call7 = call %struct.cmm_profile_s* @gsicc_profile_new(%struct.stream_s* %18, %struct.gs_memory_s* %19, i8* %20, i32 %21) #5
  store %struct.cmm_profile_s* %call7, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !1
  %22 = load %struct.stream_s*, %struct.stream_s** %str, align 8, !tbaa !1
  %call8 = call i32 @sfclose(%struct.stream_s* %22) #5
  store i32 %call8, i32* %code, align 4, !tbaa !13
  %23 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !1
  %cmp9 = icmp eq %struct.cmm_profile_s* %23, null
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.6
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %if.end.6
  %24 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !1
  %buffer = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %24, i32 0, i32 14
  %25 = load i8*, i8** %buffer, align 8, !tbaa !24
  %26 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !1
  %buffer_size = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %26, i32 0, i32 11
  %27 = load i32, i32* %buffer_size, align 4, !tbaa !25
  %28 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call12 = call i8* @gsicc_get_profile_handle_buffer(i8* %25, i32 %27, %struct.gs_memory_s* %28) #5
  %29 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !1
  %profile_handle = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %29, i32 0, i32 17
  store i8* %call12, i8** %profile_handle, align 8, !tbaa !26
  %30 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !1
  %buffer13 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %30, i32 0, i32 14
  %31 = load i8*, i8** %buffer13, align 8, !tbaa !24
  %32 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !1
  %hashcode = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %32, i32 0, i32 7
  %33 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !1
  %buffer_size14 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %33, i32 0, i32 11
  %34 = load i32, i32* %buffer_size14, align 4, !tbaa !25
  call void @gsicc_get_icc_buff_hash(i8* %31, i64* %hashcode, i32 %34) #5
  %35 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !1
  %hash_is_valid = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %35, i32 0, i32 8
  store i32 1, i32* %hash_is_valid, align 4, !tbaa !27
  %36 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !1
  %profile_handle15 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %36, i32 0, i32 17
  %37 = load i8*, i8** %profile_handle15, align 8, !tbaa !26
  %call16 = call i32 @gscms_get_input_channel_count(i8* %37) #5
  %conv = trunc i32 %call16 to i8
  %38 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !1
  %num_comps = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %38, i32 0, i32 0
  store i8 %conv, i8* %num_comps, align 1, !tbaa !6
  %39 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !1
  %profile_handle17 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %39, i32 0, i32 17
  %40 = load i8*, i8** %profile_handle17, align 8, !tbaa !26
  %call18 = call i32 @gscms_get_output_channel_count(i8* %40) #5
  %conv19 = trunc i32 %call18 to i8
  %41 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !1
  %num_comps_out = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %41, i32 0, i32 1
  store i8 %conv19, i8* %num_comps_out, align 1, !tbaa !28
  %42 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !1
  %profile_handle20 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %42, i32 0, i32 17
  %43 = load i8*, i8** %profile_handle20, align 8, !tbaa !26
  %call21 = call i32 @gscms_get_profile_data_space(i8* %43) #5
  %44 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !1
  %data_cs = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %44, i32 0, i32 5
  store i32 %call21, i32* %data_cs, align 4, !tbaa !29
  call void @gscms_set_icc_range(%struct.cmm_profile_s** %icc_profile) #5
  %45 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !1
  store %struct.cmm_profile_s* %45, %struct.cmm_profile_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.11, %if.then.10, %if.then.5
  %46 = bitcast %struct.cmm_profile_s** %icc_profile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #1
  %47 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #1
  %48 = bitcast %struct.stream_s** %str to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
  %49 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %retval
  ret %struct.cmm_profile_s* %49
}

; Function Attrs: nounwind uwtable
define internal i32 @gsicc_open_search(i8* %pname, i32 %namelen, %struct.gs_memory_s* %mem_gc, i8* %dirname, i32 %dirlen, %struct.stream_s** %strp) #0 {
entry:
  %retval = alloca i32, align 4
  %pname.addr = alloca i8*, align 8
  %namelen.addr = alloca i32, align 4
  %mem_gc.addr = alloca %struct.gs_memory_s*, align 8
  %dirname.addr = alloca i8*, align 8
  %dirlen.addr = alloca i32, align 4
  %strp.addr = alloca %struct.stream_s**, align 8
  %buffer = alloca i8*, align 8
  %str = alloca %struct.stream_s*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %pname, i8** %pname.addr, align 8, !tbaa !1
  store i32 %namelen, i32* %namelen.addr, align 4, !tbaa !13
  store %struct.gs_memory_s* %mem_gc, %struct.gs_memory_s** %mem_gc.addr, align 8, !tbaa !1
  store i8* %dirname, i8** %dirname.addr, align 8, !tbaa !1
  store i32 %dirlen, i32* %dirlen.addr, align 4, !tbaa !13
  store %struct.stream_s** %strp, %struct.stream_s*** %strp.addr, align 8, !tbaa !1
  %0 = bitcast i8** %buffer to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.stream_s** %str to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load i8*, i8** %dirname.addr, align 8, !tbaa !1
  %cmp = icmp ne i8* %2, null
  br i1 %cmp, label %if.then, label %if.end.12

if.then:                                          ; preds = %entry
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem_gc.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %3, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %4 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !30
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem_gc.addr, align 8, !tbaa !1
  %6 = load i32, i32* %namelen.addr, align 4, !tbaa !13
  %7 = load i32, i32* %dirlen.addr, align 4, !tbaa !13
  %add = add nsw i32 %6, %7
  %add1 = add nsw i32 %add, 1
  %call = call i8* %4(%struct.gs_memory_s* %5, i32 %add1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.80, i32 0, i32 0)) #5
  store i8* %call, i8** %buffer, align 8, !tbaa !1
  %8 = load i8*, i8** %buffer, align 8, !tbaa !1
  %cmp2 = icmp eq i8* %8, null
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %9 = load i8*, i8** %buffer, align 8, !tbaa !1
  %10 = load i8*, i8** %dirname.addr, align 8, !tbaa !1
  %call4 = call i8* @strcpy(i8* %9, i8* %10) #6
  %11 = load i8*, i8** %buffer, align 8, !tbaa !1
  %12 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %call5 = call i8* @strcat(i8* %11, i8* %12) #6
  %13 = load i32, i32* %namelen.addr, align 4, !tbaa !13
  %14 = load i32, i32* %dirlen.addr, align 4, !tbaa !13
  %add6 = add nsw i32 %13, %14
  %idxprom = sext i32 %add6 to i64
  %15 = load i8*, i8** %buffer, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1, !tbaa !5
  %16 = load i8*, i8** %buffer, align 8, !tbaa !1
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem_gc.addr, align 8, !tbaa !1
  %call7 = call %struct.stream_s* @sfopen(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.81, i32 0, i32 0), %struct.gs_memory_s* %17) #5
  store %struct.stream_s* %call7, %struct.stream_s** %str, align 8, !tbaa !1
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem_gc.addr, align 8, !tbaa !1
  %procs8 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %18, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs8, i32 0, i32 2
  %19 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !31
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem_gc.addr, align 8, !tbaa !1
  %21 = load i8*, i8** %buffer, align 8, !tbaa !1
  call void %19(%struct.gs_memory_s* %20, i8* %21, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.80, i32 0, i32 0)) #5
  %22 = load %struct.stream_s*, %struct.stream_s** %str, align 8, !tbaa !1
  %cmp9 = icmp ne %struct.stream_s* %22, null
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end
  %23 = load %struct.stream_s*, %struct.stream_s** %str, align 8, !tbaa !1
  %24 = load %struct.stream_s**, %struct.stream_s*** %strp.addr, align 8, !tbaa !1
  store %struct.stream_s* %23, %struct.stream_s** %24, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %if.end
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %entry
  %25 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %26 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem_gc.addr, align 8, !tbaa !1
  %call13 = call %struct.stream_s* @sfopen(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.81, i32 0, i32 0), %struct.gs_memory_s* %26) #5
  store %struct.stream_s* %call13, %struct.stream_s** %str, align 8, !tbaa !1
  %27 = load %struct.stream_s*, %struct.stream_s** %str, align 8, !tbaa !1
  %cmp14 = icmp ne %struct.stream_s* %27, null
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.12
  %28 = load %struct.stream_s*, %struct.stream_s** %str, align 8, !tbaa !1
  %29 = load %struct.stream_s**, %struct.stream_s*** %strp.addr, align 8, !tbaa !1
  store %struct.stream_s* %28, %struct.stream_s** %29, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %if.end.12
  %30 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem_gc.addr, align 8, !tbaa !1
  %procs17 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %30, i32 0, i32 1
  %alloc_bytes18 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs17, i32 0, i32 7
  %31 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes18, align 8, !tbaa !30
  %32 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem_gc.addr, align 8, !tbaa !1
  %33 = load i32, i32* %namelen.addr, align 4, !tbaa !13
  %add19 = add nsw i32 1, %33
  %conv = sext i32 %add19 to i64
  %call20 = call i64 @strlen(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.60, i32 0, i32 0)) #7
  %add21 = add i64 %conv, %call20
  %conv22 = trunc i64 %add21 to i32
  %call23 = call i8* %31(%struct.gs_memory_s* %32, i32 %conv22, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.80, i32 0, i32 0)) #5
  store i8* %call23, i8** %buffer, align 8, !tbaa !1
  %34 = load i8*, i8** %buffer, align 8, !tbaa !1
  %cmp24 = icmp eq i8* %34, null
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.16
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.27:                                        ; preds = %if.end.16
  %35 = load i8*, i8** %buffer, align 8, !tbaa !1
  %call28 = call i8* @strcpy(i8* %35, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.60, i32 0, i32 0)) #6
  %36 = load i8*, i8** %buffer, align 8, !tbaa !1
  %37 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %call29 = call i8* @strcat(i8* %36, i8* %37) #6
  %38 = load i32, i32* %namelen.addr, align 4, !tbaa !13
  %conv30 = sext i32 %38 to i64
  %call31 = call i64 @strlen(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.60, i32 0, i32 0)) #7
  %add32 = add i64 %conv30, %call31
  %39 = load i8*, i8** %buffer, align 8, !tbaa !1
  %arrayidx33 = getelementptr inbounds i8, i8* %39, i64 %add32
  store i8 0, i8* %arrayidx33, align 1, !tbaa !5
  %40 = load i8*, i8** %buffer, align 8, !tbaa !1
  %41 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem_gc.addr, align 8, !tbaa !1
  %call34 = call %struct.stream_s* @sfopen(i8* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.81, i32 0, i32 0), %struct.gs_memory_s* %41) #5
  store %struct.stream_s* %call34, %struct.stream_s** %str, align 8, !tbaa !1
  %42 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem_gc.addr, align 8, !tbaa !1
  %procs35 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %42, i32 0, i32 1
  %free_object36 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs35, i32 0, i32 2
  %43 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object36, align 8, !tbaa !31
  %44 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem_gc.addr, align 8, !tbaa !1
  %45 = load i8*, i8** %buffer, align 8, !tbaa !1
  call void %43(%struct.gs_memory_s* %44, i8* %45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.80, i32 0, i32 0)) #5
  %46 = load %struct.stream_s*, %struct.stream_s** %str, align 8, !tbaa !1
  %cmp37 = icmp eq %struct.stream_s* %46, null
  br i1 %cmp37, label %if.then.39, label %if.end.41

if.then.39:                                       ; preds = %if.end.27
  %47 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %call40 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 1050, i32 3, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.82, i32 0, i32 0), i8* %47) #5
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.39, %if.end.27
  %48 = load %struct.stream_s*, %struct.stream_s** %str, align 8, !tbaa !1
  %49 = load %struct.stream_s**, %struct.stream_s*** %strp.addr, align 8, !tbaa !1
  store %struct.stream_s* %48, %struct.stream_s** %49, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.41, %if.then.26, %if.then.15, %if.then.10, %if.then.3
  %50 = bitcast %struct.stream_s** %str to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #1
  %51 = bitcast i8** %buffer to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #1
  %52 = load i32, i32* %retval
  ret i32 %52
}

; Function Attrs: nounwind uwtable
define %struct.cmm_profile_s* @gsicc_profile_new(%struct.stream_s* %s, %struct.gs_memory_s* %memory, i8* %pname, i32 %namelen) #0 {
entry:
  %retval = alloca %struct.cmm_profile_s*, align 8
  %s.addr = alloca %struct.stream_s*, align 8
  %memory.addr = alloca %struct.gs_memory_s*, align 8
  %pname.addr = alloca i8*, align 8
  %namelen.addr = alloca i32, align 4
  %result = alloca %struct.cmm_profile_s*, align 8
  %code = alloca i32, align 4
  %nameptr = alloca i8*, align 8
  %mem_nongc = alloca %struct.gs_memory_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %memory, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  store i8* %pname, i8** %pname.addr, align 8, !tbaa !1
  store i32 %namelen, i32* %namelen.addr, align 4, !tbaa !13
  %0 = bitcast %struct.cmm_profile_s** %result to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i8** %nameptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store i8* null, i8** %nameptr, align 8, !tbaa !1
  %3 = bitcast %struct.gs_memory_s** %mem_nongc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %4, i32 0, i32 3
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !32
  store %struct.gs_memory_s* %5, %struct.gs_memory_s** %mem_nongc, align 8, !tbaa !1
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem_nongc, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %6, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %7 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !30
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem_nongc, align 8, !tbaa !1
  %call = call i8* %7(%struct.gs_memory_s* %8, i32 344, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.46, i32 0, i32 0)) #5
  %9 = bitcast i8* %call to %struct.cmm_profile_s*
  store %struct.cmm_profile_s* %9, %struct.cmm_profile_s** %result, align 8, !tbaa !1
  %10 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %result, align 8, !tbaa !1
  %cmp = icmp eq %struct.cmm_profile_s* %10, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %result, align 8, !tbaa !1
  store %struct.cmm_profile_s* %11, %struct.cmm_profile_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %result, align 8, !tbaa !1
  %13 = bitcast %struct.cmm_profile_s* %12 to i8*
  %call1 = call i8* @memset(i8* %13, i32 0, i64 ptrtoint (i8** getelementptr inbounds (%struct.cmm_profile_s, %struct.cmm_profile_s* null, i32 0, i32 14) to i64)) #6
  %14 = load i32, i32* %namelen.addr, align 4, !tbaa !13
  %cmp2 = icmp sgt i32 %14, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem_nongc, align 8, !tbaa !1
  %procs4 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %15, i32 0, i32 1
  %alloc_bytes5 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs4, i32 0, i32 7
  %16 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes5, align 8, !tbaa !30
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem_nongc, align 8, !tbaa !1
  %18 = load i32, i32* %namelen.addr, align 4, !tbaa !13
  %add = add nsw i32 %18, 1
  %call6 = call i8* %16(%struct.gs_memory_s* %17, i32 %add, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.46, i32 0, i32 0)) #5
  store i8* %call6, i8** %nameptr, align 8, !tbaa !1
  %19 = load i8*, i8** %nameptr, align 8, !tbaa !1
  %cmp7 = icmp eq i8* %19, null
  br i1 %cmp7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.then.3
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem_nongc, align 8, !tbaa !1
  %procs9 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %20, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs9, i32 0, i32 2
  %21 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !31
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem_nongc, align 8, !tbaa !1
  %23 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %result, align 8, !tbaa !1
  %24 = bitcast %struct.cmm_profile_s* %23 to i8*
  call void %21(%struct.gs_memory_s* %22, i8* %24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.46, i32 0, i32 0)) #5
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %if.then.3
  %25 = load i8*, i8** %nameptr, align 8, !tbaa !1
  %26 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %27 = load i32, i32* %namelen.addr, align 4, !tbaa !13
  %conv = sext i32 %27 to i64
  %call11 = call i8* @memcpy(i8* %25, i8* %26, i64 %conv) #6
  %28 = load i32, i32* %namelen.addr, align 4, !tbaa !13
  %idxprom = sext i32 %28 to i64
  %29 = load i8*, i8** %nameptr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %29, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1, !tbaa !5
  %30 = load i8*, i8** %nameptr, align 8, !tbaa !1
  %31 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %result, align 8, !tbaa !1
  %name = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %31, i32 0, i32 20
  store i8* %30, i8** %name, align 8, !tbaa !33
  br label %if.end.13

if.else:                                          ; preds = %if.end
  %32 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %result, align 8, !tbaa !1
  %name12 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %32, i32 0, i32 20
  store i8* null, i8** %name12, align 8, !tbaa !33
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.end.10
  %33 = load i32, i32* %namelen.addr, align 4, !tbaa !13
  %34 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %result, align 8, !tbaa !1
  %name_length = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %34, i32 0, i32 19
  store i32 %33, i32* %name_length, align 4, !tbaa !34
  %35 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cmp14 = icmp ne %struct.stream_s* %35, null
  br i1 %cmp14, label %if.then.16, label %if.else.26

if.then.16:                                       ; preds = %if.end.13
  %36 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %result, align 8, !tbaa !1
  %37 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %38 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem_nongc, align 8, !tbaa !1
  %call17 = call i32 @gsicc_load_profile_buffer(%struct.cmm_profile_s* %36, %struct.stream_s* %37, %struct.gs_memory_s* %38) #5
  store i32 %call17, i32* %code, align 4, !tbaa !13
  %39 = load i32, i32* %code, align 4, !tbaa !13
  %cmp18 = icmp slt i32 %39, 0
  br i1 %cmp18, label %if.then.20, label %if.end.25

if.then.20:                                       ; preds = %if.then.16
  %40 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem_nongc, align 8, !tbaa !1
  %procs21 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %40, i32 0, i32 1
  %free_object22 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs21, i32 0, i32 2
  %41 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object22, align 8, !tbaa !31
  %42 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem_nongc, align 8, !tbaa !1
  %43 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %result, align 8, !tbaa !1
  %44 = bitcast %struct.cmm_profile_s* %43 to i8*
  call void %41(%struct.gs_memory_s* %42, i8* %44, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.46, i32 0, i32 0)) #5
  %45 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem_nongc, align 8, !tbaa !1
  %procs23 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %45, i32 0, i32 1
  %free_object24 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs23, i32 0, i32 2
  %46 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object24, align 8, !tbaa !31
  %47 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem_nongc, align 8, !tbaa !1
  %48 = load i8*, i8** %nameptr, align 8, !tbaa !1
  call void %46(%struct.gs_memory_s* %47, i8* %48, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.46, i32 0, i32 0)) #5
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.25:                                        ; preds = %if.then.16
  br label %if.end.27

if.else.26:                                       ; preds = %if.end.13
  %49 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %result, align 8, !tbaa !1
  %buffer = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %49, i32 0, i32 14
  store i8* null, i8** %buffer, align 8, !tbaa !24
  %50 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %result, align 8, !tbaa !1
  %buffer_size = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %50, i32 0, i32 11
  store i32 0, i32* %buffer_size, align 4, !tbaa !25
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.26, %if.end.25
  br label %do.body

do.body:                                          ; preds = %if.end.27
  %51 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %result, align 8, !tbaa !1
  %rc = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %51, i32 0, i32 18
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  store i64 1, i64* %ref_count, align 8, !tbaa !35
  %52 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem_nongc, align 8, !tbaa !1
  %53 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %result, align 8, !tbaa !1
  %rc28 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %53, i32 0, i32 18
  %memory29 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc28, i32 0, i32 1
  store %struct.gs_memory_s* %52, %struct.gs_memory_s** %memory29, align 8, !tbaa !36
  %54 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %result, align 8, !tbaa !1
  %rc30 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %54, i32 0, i32 18
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc30, i32 0, i32 2
  store void (%struct.gs_memory_s*, i8*, i8*)* @rc_free_icc_profile, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !37
  br label %do.body.31

do.body.31:                                       ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %do.body.31
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.cond.32

do.cond.32:                                       ; preds = %do.end
  br label %do.end.33

do.end.33:                                        ; preds = %do.cond.32
  %55 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %result, align 8, !tbaa !1
  %profile_handle = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %55, i32 0, i32 17
  store i8* null, i8** %profile_handle, align 8, !tbaa !26
  %56 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %result, align 8, !tbaa !1
  %spotnames = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %56, i32 0, i32 16
  store %struct.gsicc_namelist_s* null, %struct.gsicc_namelist_s** %spotnames, align 8, !tbaa !38
  %57 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %result, align 8, !tbaa !1
  %rend_is_valid = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %57, i32 0, i32 12
  store i32 0, i32* %rend_is_valid, align 4, !tbaa !39
  %58 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %result, align 8, !tbaa !1
  %isdevlink = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %58, i32 0, i32 3
  store i32 0, i32* %isdevlink, align 4, !tbaa !40
  %59 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %result, align 8, !tbaa !1
  %dev = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %59, i32 0, i32 15
  store %struct.gx_device_s* null, %struct.gx_device_s** %dev, align 8, !tbaa !41
  %60 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem_nongc, align 8, !tbaa !1
  %61 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %result, align 8, !tbaa !1
  %memory34 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %61, i32 0, i32 21
  store %struct.gs_memory_s* %60, %struct.gs_memory_s** %memory34, align 8, !tbaa !42
  %62 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem_nongc, align 8, !tbaa !1
  %call35 = call %struct.gx_monitor_s* @gx_monitor_alloc(%struct.gs_memory_s* %62) #5
  %63 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %result, align 8, !tbaa !1
  %lock = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %63, i32 0, i32 22
  store %struct.gx_monitor_s* %call35, %struct.gx_monitor_s** %lock, align 8, !tbaa !43
  %64 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %result, align 8, !tbaa !1
  %lock36 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %64, i32 0, i32 22
  %65 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %lock36, align 8, !tbaa !43
  %cmp37 = icmp eq %struct.gx_monitor_s* %65, null
  br i1 %cmp37, label %if.then.39, label %if.end.44

if.then.39:                                       ; preds = %do.end.33
  %66 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem_nongc, align 8, !tbaa !1
  %procs40 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %66, i32 0, i32 1
  %free_object41 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs40, i32 0, i32 2
  %67 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object41, align 8, !tbaa !31
  %68 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem_nongc, align 8, !tbaa !1
  %69 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %result, align 8, !tbaa !1
  %70 = bitcast %struct.cmm_profile_s* %69 to i8*
  call void %67(%struct.gs_memory_s* %68, i8* %70, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.46, i32 0, i32 0)) #5
  %71 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem_nongc, align 8, !tbaa !1
  %procs42 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %71, i32 0, i32 1
  %free_object43 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs42, i32 0, i32 2
  %72 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object43, align 8, !tbaa !31
  %73 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem_nongc, align 8, !tbaa !1
  %74 = load i8*, i8** %nameptr, align 8, !tbaa !1
  call void %72(%struct.gs_memory_s* %73, i8* %74, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.46, i32 0, i32 0)) #5
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.44:                                        ; preds = %do.end.33
  br label %do.body.45

do.body.45:                                       ; preds = %if.end.44
  br label %do.cond.46

do.cond.46:                                       ; preds = %do.body.45
  br label %do.end.47

do.end.47:                                        ; preds = %do.cond.46
  %75 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %result, align 8, !tbaa !1
  store %struct.cmm_profile_s* %75, %struct.cmm_profile_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.47, %if.then.39, %if.then.20, %if.then.8, %if.then
  %76 = bitcast %struct.gs_memory_s** %mem_nongc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %76) #1
  %77 = bitcast i8** %nameptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %77) #1
  %78 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #1
  %79 = bitcast %struct.cmm_profile_s** %result to i8*
  call void @llvm.lifetime.end(i64 8, i8* %79) #1
  %80 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %retval
  ret %struct.cmm_profile_s* %80
}

declare i32 @sfclose(%struct.stream_s*) #2

; Function Attrs: nounwind uwtable
define i8* @gsicc_get_profile_handle_buffer(i8* %buffer, i32 %profile_size, %struct.gs_memory_s* %memory) #0 {
entry:
  %retval = alloca i8*, align 8
  %buffer.addr = alloca i8*, align 8
  %profile_size.addr = alloca i32, align 4
  %memory.addr = alloca %struct.gs_memory_s*, align 8
  %profile_handle = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %buffer, i8** %buffer.addr, align 8, !tbaa !1
  store i32 %profile_size, i32* %profile_size.addr, align 4, !tbaa !13
  store %struct.gs_memory_s* %memory, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %0 = bitcast i8** %profile_handle to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store i8* null, i8** %profile_handle, align 8, !tbaa !1
  %1 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %profile_size.addr, align 4, !tbaa !13
  %cmp1 = icmp slt i32 %2, 128
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %3, i32 0, i32 3
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !32
  %5 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %6 = load i32, i32* %profile_size.addr, align 4, !tbaa !13
  %call = call i8* @gscms_get_profile_handle_mem(%struct.gs_memory_s* %4, i8* %5, i32 %6) #5
  store i8* %call, i8** %profile_handle, align 8, !tbaa !1
  %7 = load i8*, i8** %profile_handle, align 8, !tbaa !1
  store i8* %7, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %entry
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.3, %if.end, %if.then.2
  %8 = bitcast i8** %profile_handle to i8*
  call void @llvm.lifetime.end(i64 8, i8* %8) #1
  %9 = load i8*, i8** %retval
  ret i8* %9
}

declare void @gsicc_get_icc_buff_hash(i8*, i64*, i32) #2

declare i32 @gscms_get_input_channel_count(i8*) #2

declare i32 @gscms_get_output_channel_count(i8*) #2

declare i32 @gscms_get_profile_data_space(i8*) #2

; Function Attrs: nounwind uwtable
define %struct.gsicc_smask_s* @gsicc_new_iccsmask(%struct.gs_memory_s* %memory) #0 {
entry:
  %memory.addr = alloca %struct.gs_memory_s*, align 8
  %result = alloca %struct.gsicc_smask_s*, align 8
  store %struct.gs_memory_s* %memory, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gsicc_smask_s** %result to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %1, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %2 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !30
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %call = call i8* %2(%struct.gs_memory_s* %3, i32 40, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0)) #5
  %4 = bitcast i8* %call to %struct.gsicc_smask_s*
  store %struct.gsicc_smask_s* %4, %struct.gsicc_smask_s** %result, align 8, !tbaa !1
  %5 = load %struct.gsicc_smask_s*, %struct.gsicc_smask_s** %result, align 8, !tbaa !1
  %cmp = icmp ne %struct.gsicc_smask_s* %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.gsicc_smask_s*, %struct.gsicc_smask_s** %result, align 8, !tbaa !1
  %smask_gray = getelementptr inbounds %struct.gsicc_smask_s, %struct.gsicc_smask_s* %6, i32 0, i32 0
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %smask_gray, align 8, !tbaa !44
  %7 = load %struct.gsicc_smask_s*, %struct.gsicc_smask_s** %result, align 8, !tbaa !1
  %smask_rgb = getelementptr inbounds %struct.gsicc_smask_s, %struct.gsicc_smask_s* %7, i32 0, i32 1
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %smask_rgb, align 8, !tbaa !46
  %8 = load %struct.gsicc_smask_s*, %struct.gsicc_smask_s** %result, align 8, !tbaa !1
  %smask_cmyk = getelementptr inbounds %struct.gsicc_smask_s, %struct.gsicc_smask_s* %8, i32 0, i32 2
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %smask_cmyk, align 8, !tbaa !47
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %10 = load %struct.gsicc_smask_s*, %struct.gsicc_smask_s** %result, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gsicc_smask_s, %struct.gsicc_smask_s* %10, i32 0, i32 3
  store %struct.gs_memory_s* %9, %struct.gs_memory_s** %memory1, align 8, !tbaa !48
  %11 = load %struct.gsicc_smask_s*, %struct.gsicc_smask_s** %result, align 8, !tbaa !1
  %swapped = getelementptr inbounds %struct.gsicc_smask_s, %struct.gsicc_smask_s* %11, i32 0, i32 4
  store i32 0, i32* %swapped, align 4, !tbaa !49
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct.gsicc_smask_s*, %struct.gsicc_smask_s** %result, align 8, !tbaa !1
  %13 = bitcast %struct.gsicc_smask_s** %result to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #1
  ret %struct.gsicc_smask_s* %12
}

; Function Attrs: nounwind uwtable
define i32 @gsicc_initialize_iccsmask(%struct.gsicc_manager_s* %icc_manager) #0 {
entry:
  %retval = alloca i32, align 4
  %icc_manager.addr = alloca %struct.gsicc_manager_s*, align 8
  %stable_mem = alloca %struct.gs_memory_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gsicc_manager_s* %icc_manager, %struct.gsicc_manager_s** %icc_manager.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_s** %stable_mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %1, i32 0, i32 10
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !50
  %stable_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %2, i32 0, i32 0
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory, align 8, !tbaa !52
  store %struct.gs_memory_s* %3, %struct.gs_memory_s** %stable_mem, align 8, !tbaa !1
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_mem, align 8, !tbaa !1
  %call = call %struct.gsicc_smask_s* @gsicc_new_iccsmask(%struct.gs_memory_s* %4) #5
  %5 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager.addr, align 8, !tbaa !1
  %smask_profiles = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %5, i32 0, i32 7
  store %struct.gsicc_smask_s* %call, %struct.gsicc_smask_s** %smask_profiles, align 8, !tbaa !53
  %6 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager.addr, align 8, !tbaa !1
  %smask_profiles1 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %6, i32 0, i32 7
  %7 = load %struct.gsicc_smask_s*, %struct.gsicc_smask_s** %smask_profiles1, align 8, !tbaa !53
  %cmp = icmp eq %struct.gsicc_smask_s* %7, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gsicc_initialize_iccsmask, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 199, i32 0, i32 -25, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i32 0, i32 0)) #5
  store i32 %call2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call i64 @strlen(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0)) #7
  %conv = trunc i64 %call3 to i32
  %8 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager.addr, align 8, !tbaa !1
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_mem, align 8, !tbaa !1
  %call4 = call %struct.cmm_profile_s* @gsicc_set_iccsmaskprofile(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i32 %conv, %struct.gsicc_manager_s* %8, %struct.gs_memory_s* %9) #5
  %10 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager.addr, align 8, !tbaa !1
  %smask_profiles5 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %10, i32 0, i32 7
  %11 = load %struct.gsicc_smask_s*, %struct.gsicc_smask_s** %smask_profiles5, align 8, !tbaa !53
  %smask_gray = getelementptr inbounds %struct.gsicc_smask_s, %struct.gsicc_smask_s* %11, i32 0, i32 0
  store %struct.cmm_profile_s* %call4, %struct.cmm_profile_s** %smask_gray, align 8, !tbaa !44
  %cmp6 = icmp eq %struct.cmm_profile_s* %call4, null
  br i1 %cmp6, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end
  %call9 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gsicc_initialize_iccsmask, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 204, i32 0, i32 -1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i32 0, i32 0)) #5
  store i32 %call9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %if.end
  %call11 = call i64 @strlen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0)) #7
  %conv12 = trunc i64 %call11 to i32
  %12 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager.addr, align 8, !tbaa !1
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_mem, align 8, !tbaa !1
  %call13 = call %struct.cmm_profile_s* @gsicc_set_iccsmaskprofile(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i32 %conv12, %struct.gsicc_manager_s* %12, %struct.gs_memory_s* %13) #5
  %14 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager.addr, align 8, !tbaa !1
  %smask_profiles14 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %14, i32 0, i32 7
  %15 = load %struct.gsicc_smask_s*, %struct.gsicc_smask_s** %smask_profiles14, align 8, !tbaa !53
  %smask_rgb = getelementptr inbounds %struct.gsicc_smask_s, %struct.gsicc_smask_s* %15, i32 0, i32 1
  store %struct.cmm_profile_s* %call13, %struct.cmm_profile_s** %smask_rgb, align 8, !tbaa !46
  %cmp15 = icmp eq %struct.cmm_profile_s* %call13, null
  br i1 %cmp15, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %if.end.10
  %call18 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gsicc_initialize_iccsmask, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 209, i32 0, i32 -1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i32 0, i32 0)) #5
  store i32 %call18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.19:                                        ; preds = %if.end.10
  %call20 = call i64 @strlen(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0)) #7
  %conv21 = trunc i64 %call20 to i32
  %16 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager.addr, align 8, !tbaa !1
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_mem, align 8, !tbaa !1
  %call22 = call %struct.cmm_profile_s* @gsicc_set_iccsmaskprofile(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), i32 %conv21, %struct.gsicc_manager_s* %16, %struct.gs_memory_s* %17) #5
  %18 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager.addr, align 8, !tbaa !1
  %smask_profiles23 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %18, i32 0, i32 7
  %19 = load %struct.gsicc_smask_s*, %struct.gsicc_smask_s** %smask_profiles23, align 8, !tbaa !53
  %smask_cmyk = getelementptr inbounds %struct.gsicc_smask_s, %struct.gsicc_smask_s* %19, i32 0, i32 2
  store %struct.cmm_profile_s* %call22, %struct.cmm_profile_s** %smask_cmyk, align 8, !tbaa !47
  %cmp24 = icmp eq %struct.cmm_profile_s* %call22, null
  br i1 %cmp24, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %if.end.19
  %call27 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gsicc_initialize_iccsmask, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 214, i32 0, i32 -1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i32 0, i32 0)) #5
  store i32 %call27, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.28:                                        ; preds = %if.end.19
  %20 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager.addr, align 8, !tbaa !1
  %smask_profiles29 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %20, i32 0, i32 7
  %21 = load %struct.gsicc_smask_s*, %struct.gsicc_smask_s** %smask_profiles29, align 8, !tbaa !53
  %smask_gray30 = getelementptr inbounds %struct.gsicc_smask_s, %struct.gsicc_smask_s* %21, i32 0, i32 0
  %22 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %smask_gray30, align 8, !tbaa !44
  %default_match = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %22, i32 0, i32 4
  store i32 1, i32* %default_match, align 4, !tbaa !54
  %23 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager.addr, align 8, !tbaa !1
  %smask_profiles31 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %23, i32 0, i32 7
  %24 = load %struct.gsicc_smask_s*, %struct.gsicc_smask_s** %smask_profiles31, align 8, !tbaa !53
  %smask_rgb32 = getelementptr inbounds %struct.gsicc_smask_s, %struct.gsicc_smask_s* %24, i32 0, i32 1
  %25 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %smask_rgb32, align 8, !tbaa !46
  %default_match33 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %25, i32 0, i32 4
  store i32 2, i32* %default_match33, align 4, !tbaa !54
  %26 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager.addr, align 8, !tbaa !1
  %smask_profiles34 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %26, i32 0, i32 7
  %27 = load %struct.gsicc_smask_s*, %struct.gsicc_smask_s** %smask_profiles34, align 8, !tbaa !53
  %smask_cmyk35 = getelementptr inbounds %struct.gsicc_smask_s, %struct.gsicc_smask_s* %27, i32 0, i32 2
  %28 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %smask_cmyk35, align 8, !tbaa !47
  %default_match36 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %28, i32 0, i32 4
  store i32 3, i32* %default_match36, align 4, !tbaa !54
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.28, %if.then.26, %if.then.17, %if.then.8, %if.then
  %29 = bitcast %struct.gs_memory_s** %stable_mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  %30 = load i32, i32* %retval
  ret i32 %30
}

declare i32 @gs_throw_imp(i8*, i8*, i32, i32, i32, i8*, ...) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind uwtable
define %struct.cmm_profile_s* @gsicc_finddevicen(%struct.gs_color_space_s* %pcs, %struct.gsicc_manager_s* %icc_manager) #0 {
entry:
  %retval = alloca %struct.cmm_profile_s*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %icc_manager.addr = alloca %struct.gsicc_manager_s*, align 8
  %k = alloca i32, align 4
  %j = alloca i32, align 4
  %i = alloca i32, align 4
  %curr_entry = alloca %struct.gsicc_devicen_entry_s*, align 8
  %num_comps = alloca i32, align 4
  %names = alloca i64*, align 8
  %pname = alloca i8*, align 8
  %name_size = alloca i32, align 4
  %devicen_profiles = alloca %struct.gsicc_devicen_s*, align 8
  %icc_spot_entry = alloca %struct.gsicc_colorname_s*, align 8
  %match_count = alloca i32, align 4
  %permute_needed = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gsicc_manager_s* %icc_manager, %struct.gsicc_manager_s** %icc_manager.addr, align 8, !tbaa !1
  %0 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast %struct.gsicc_devicen_entry_s** %curr_entry to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %num_comps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i64** %names to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %6, i32 0, i32 7
  %device_n = bitcast %union.anon.3* %params to %struct.gs_device_n_params_s*
  %names1 = getelementptr inbounds %struct.gs_device_n_params_s, %struct.gs_device_n_params_s* %device_n, i32 0, i32 0
  %7 = load i64*, i64** %names1, align 8, !tbaa !55
  store i64* %7, i64** %names, align 8, !tbaa !1
  %8 = bitcast i8** %pname to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast i32* %name_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast %struct.gsicc_devicen_s** %devicen_profiles to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager.addr, align 8, !tbaa !1
  %device_n2 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %11, i32 0, i32 6
  %12 = load %struct.gsicc_devicen_s*, %struct.gsicc_devicen_s** %device_n2, align 8, !tbaa !57
  store %struct.gsicc_devicen_s* %12, %struct.gsicc_devicen_s** %devicen_profiles, align 8, !tbaa !1
  %13 = bitcast %struct.gsicc_colorname_s** %icc_spot_entry to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = bitcast i32* %match_count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  store i32 0, i32* %match_count, align 4, !tbaa !13
  %15 = bitcast i32* %permute_needed to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  store i32 0, i32* %permute_needed, align 4, !tbaa !13
  %16 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %call = call i32 @gs_color_space_num_components(%struct.gs_color_space_s* %16) #5
  store i32 %call, i32* %num_comps, align 4, !tbaa !13
  %17 = load %struct.gsicc_devicen_s*, %struct.gsicc_devicen_s** %devicen_profiles, align 8, !tbaa !1
  %head = getelementptr inbounds %struct.gsicc_devicen_s, %struct.gsicc_devicen_s* %17, i32 0, i32 0
  %18 = load %struct.gsicc_devicen_entry_s*, %struct.gsicc_devicen_entry_s** %head, align 8, !tbaa !58
  store %struct.gsicc_devicen_entry_s* %18, %struct.gsicc_devicen_entry_s** %curr_entry, align 8, !tbaa !1
  store i32 0, i32* %k, align 4, !tbaa !13
  br label %for.cond

for.cond:                                         ; preds = %for.inc.46, %entry
  %19 = load i32, i32* %k, align 4, !tbaa !13
  %20 = load %struct.gsicc_devicen_s*, %struct.gsicc_devicen_s** %devicen_profiles, align 8, !tbaa !1
  %count = getelementptr inbounds %struct.gsicc_devicen_s, %struct.gsicc_devicen_s* %20, i32 0, i32 2
  %21 = load i32, i32* %count, align 4, !tbaa !60
  %cmp = icmp slt i32 %19, %21
  br i1 %cmp, label %for.body, label %for.end.48

for.body:                                         ; preds = %for.cond
  %22 = load %struct.gsicc_devicen_entry_s*, %struct.gsicc_devicen_entry_s** %curr_entry, align 8, !tbaa !1
  %iccprofile = getelementptr inbounds %struct.gsicc_devicen_entry_s, %struct.gsicc_devicen_entry_s* %22, i32 0, i32 0
  %23 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %iccprofile, align 8, !tbaa !61
  %num_comps3 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %23, i32 0, i32 0
  %24 = load i8, i8* %num_comps3, align 1, !tbaa !6
  %conv = zext i8 %24 to i32
  %25 = load i32, i32* %num_comps, align 4, !tbaa !13
  %cmp4 = icmp eq i32 %conv, %25
  br i1 %cmp4, label %if.then, label %if.end.45

if.then:                                          ; preds = %for.body
  store i32 0, i32* %j, align 4, !tbaa !13
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.36, %if.then
  %26 = load i32, i32* %j, align 4, !tbaa !13
  %27 = load i32, i32* %num_comps, align 4, !tbaa !13
  %cmp7 = icmp slt i32 %26, %27
  br i1 %cmp7, label %for.body.9, label %for.end.38

for.body.9:                                       ; preds = %for.cond.6
  %28 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params10 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %28, i32 0, i32 7
  %device_n11 = bitcast %union.anon.3* %params10 to %struct.gs_device_n_params_s*
  %get_colorname_string = getelementptr inbounds %struct.gs_device_n_params_s, %struct.gs_device_n_params_s* %device_n11, i32 0, i32 5
  %29 = load i32 (%struct.gs_memory_s*, i64, i8**, i32*)*, i32 (%struct.gs_memory_s*, i64, i8**, i32*)** %get_colorname_string, align 8, !tbaa !63
  %30 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %30, i32 0, i32 10
  %31 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !50
  %32 = load i32, i32* %j, align 4, !tbaa !13
  %idxprom = sext i32 %32 to i64
  %33 = load i64*, i64** %names, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %33, i64 %idxprom
  %34 = load i64, i64* %arrayidx, align 8, !tbaa !64
  %call12 = call i32 %29(%struct.gs_memory_s* %31, i64 %34, i8** %pname, i32* %name_size) #5
  %35 = load %struct.gsicc_devicen_entry_s*, %struct.gsicc_devicen_entry_s** %curr_entry, align 8, !tbaa !1
  %iccprofile13 = getelementptr inbounds %struct.gsicc_devicen_entry_s, %struct.gsicc_devicen_entry_s* %35, i32 0, i32 0
  %36 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %iccprofile13, align 8, !tbaa !61
  %spotnames = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %36, i32 0, i32 16
  %37 = load %struct.gsicc_namelist_s*, %struct.gsicc_namelist_s** %spotnames, align 8, !tbaa !38
  %head14 = getelementptr inbounds %struct.gsicc_namelist_s, %struct.gsicc_namelist_s* %37, i32 0, i32 1
  %38 = load %struct.gsicc_colorname_s*, %struct.gsicc_colorname_s** %head14, align 8, !tbaa !65
  store %struct.gsicc_colorname_s* %38, %struct.gsicc_colorname_s** %icc_spot_entry, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !13
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc, %for.body.9
  %39 = load i32, i32* %i, align 4, !tbaa !13
  %40 = load i32, i32* %num_comps, align 4, !tbaa !13
  %cmp16 = icmp slt i32 %39, %40
  br i1 %cmp16, label %for.body.18, label %for.end

for.body.18:                                      ; preds = %for.cond.15
  %41 = load i8*, i8** %pname, align 8, !tbaa !1
  %42 = load %struct.gsicc_colorname_s*, %struct.gsicc_colorname_s** %icc_spot_entry, align 8, !tbaa !1
  %name = getelementptr inbounds %struct.gsicc_colorname_s, %struct.gsicc_colorname_s* %42, i32 0, i32 0
  %43 = load i8*, i8** %name, align 8, !tbaa !67
  %44 = load i32, i32* %name_size, align 4, !tbaa !13
  %conv19 = zext i32 %44 to i64
  %call20 = call i32 @strncmp(i8* %41, i8* %43, i64 %conv19) #7
  %cmp21 = icmp eq i32 %call20, 0
  br i1 %cmp21, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %for.body.18
  %45 = load i32, i32* %match_count, align 4, !tbaa !13
  %inc = add nsw i32 %45, 1
  store i32 %inc, i32* %match_count, align 4, !tbaa !13
  %46 = load i32, i32* %i, align 4, !tbaa !13
  %47 = load i32, i32* %j, align 4, !tbaa !13
  %idxprom24 = sext i32 %47 to i64
  %48 = load %struct.gsicc_devicen_entry_s*, %struct.gsicc_devicen_entry_s** %curr_entry, align 8, !tbaa !1
  %iccprofile25 = getelementptr inbounds %struct.gsicc_devicen_entry_s, %struct.gsicc_devicen_entry_s* %48, i32 0, i32 0
  %49 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %iccprofile25, align 8, !tbaa !61
  %devicen_permute = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %49, i32 0, i32 9
  %arrayidx26 = getelementptr inbounds [15 x i32], [15 x i32]* %devicen_permute, i32 0, i64 %idxprom24
  store i32 %46, i32* %arrayidx26, align 4, !tbaa !13
  %50 = load i32, i32* %j, align 4, !tbaa !13
  %51 = load i32, i32* %i, align 4, !tbaa !13
  %cmp27 = icmp ne i32 %50, %51
  br i1 %cmp27, label %if.then.29, label %if.end

if.then.29:                                       ; preds = %if.then.23
  store i32 1, i32* %permute_needed, align 4, !tbaa !13
  br label %if.end

if.end:                                           ; preds = %if.then.29, %if.then.23
  br label %for.end

if.else:                                          ; preds = %for.body.18
  %52 = load %struct.gsicc_colorname_s*, %struct.gsicc_colorname_s** %icc_spot_entry, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.gsicc_colorname_s, %struct.gsicc_colorname_s* %52, i32 0, i32 2
  %53 = load %struct.gsicc_colorname_s*, %struct.gsicc_colorname_s** %next, align 8, !tbaa !69
  store %struct.gsicc_colorname_s* %53, %struct.gsicc_colorname_s** %icc_spot_entry, align 8, !tbaa !1
  br label %if.end.30

if.end.30:                                        ; preds = %if.else
  br label %for.inc

for.inc:                                          ; preds = %if.end.30
  %54 = load i32, i32* %i, align 4, !tbaa !13
  %inc31 = add nsw i32 %54, 1
  store i32 %inc31, i32* %i, align 4, !tbaa !13
  br label %for.cond.15

for.end:                                          ; preds = %if.end, %for.cond.15
  %55 = load i32, i32* %match_count, align 4, !tbaa !13
  %56 = load i32, i32* %j, align 4, !tbaa !13
  %add = add nsw i32 %56, 1
  %cmp32 = icmp slt i32 %55, %add
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %for.end
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.35:                                        ; preds = %for.end
  br label %for.inc.36

for.inc.36:                                       ; preds = %if.end.35
  %57 = load i32, i32* %j, align 4, !tbaa !13
  %inc37 = add nsw i32 %57, 1
  store i32 %inc37, i32* %j, align 4, !tbaa !13
  br label %for.cond.6

for.end.38:                                       ; preds = %for.cond.6
  %58 = load i32, i32* %match_count, align 4, !tbaa !13
  %59 = load i32, i32* %num_comps, align 4, !tbaa !13
  %cmp39 = icmp eq i32 %58, %59
  br i1 %cmp39, label %if.then.41, label %if.end.44

if.then.41:                                       ; preds = %for.end.38
  %60 = load i32, i32* %permute_needed, align 4, !tbaa !13
  %61 = load %struct.gsicc_devicen_entry_s*, %struct.gsicc_devicen_entry_s** %curr_entry, align 8, !tbaa !1
  %iccprofile42 = getelementptr inbounds %struct.gsicc_devicen_entry_s, %struct.gsicc_devicen_entry_s* %61, i32 0, i32 0
  %62 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %iccprofile42, align 8, !tbaa !61
  %devicen_permute_needed = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %62, i32 0, i32 10
  store i32 %60, i32* %devicen_permute_needed, align 4, !tbaa !70
  %63 = load %struct.gsicc_devicen_entry_s*, %struct.gsicc_devicen_entry_s** %curr_entry, align 8, !tbaa !1
  %iccprofile43 = getelementptr inbounds %struct.gsicc_devicen_entry_s, %struct.gsicc_devicen_entry_s* %63, i32 0, i32 0
  %64 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %iccprofile43, align 8, !tbaa !61
  store %struct.cmm_profile_s* %64, %struct.cmm_profile_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.44:                                        ; preds = %for.end.38
  store i32 0, i32* %match_count, align 4, !tbaa !13
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %for.body
  br label %for.inc.46

for.inc.46:                                       ; preds = %if.end.45
  %65 = load i32, i32* %k, align 4, !tbaa !13
  %inc47 = add nsw i32 %65, 1
  store i32 %inc47, i32* %k, align 4, !tbaa !13
  br label %for.cond

for.end.48:                                       ; preds = %for.cond
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.48, %if.then.41, %if.then.34
  %66 = bitcast i32* %permute_needed to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #1
  %67 = bitcast i32* %match_count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #1
  %68 = bitcast %struct.gsicc_colorname_s** %icc_spot_entry to i8*
  call void @llvm.lifetime.end(i64 8, i8* %68) #1
  %69 = bitcast %struct.gsicc_devicen_s** %devicen_profiles to i8*
  call void @llvm.lifetime.end(i64 8, i8* %69) #1
  %70 = bitcast i32* %name_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #1
  %71 = bitcast i8** %pname to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #1
  %72 = bitcast i64** %names to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #1
  %73 = bitcast i32* %num_comps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #1
  %74 = bitcast %struct.gsicc_devicen_entry_s** %curr_entry to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #1
  %75 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #1
  %76 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #1
  %77 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #1
  %78 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %retval
  ret %struct.cmm_profile_s* %78
}

declare i32 @gs_color_space_num_components(%struct.gs_color_space_s*) #2

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define i32 @gsicc_get_default_type(%struct.cmm_profile_s* %profile_data) #0 {
entry:
  %retval = alloca i32, align 4
  %profile_data.addr = alloca %struct.cmm_profile_s*, align 8
  store %struct.cmm_profile_s* %profile_data, %struct.cmm_profile_s** %profile_data.addr, align 8, !tbaa !1
  %0 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %profile_data.addr, align 8, !tbaa !1
  %default_match = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %0, i32 0, i32 4
  %1 = load i32, i32* %default_match, align 4, !tbaa !54
  switch i32 %1, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.1
    i32 3, label %sw.bb.2
    i32 13, label %sw.bb.3
    i32 14, label %sw.bb.4
    i32 15, label %sw.bb.5
    i32 16, label %sw.bb.6
  ]

sw.bb:                                            ; preds = %entry
  store i32 0, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

sw.bb.2:                                          ; preds = %entry
  store i32 2, i32* %retval
  br label %return

sw.bb.3:                                          ; preds = %entry
  store i32 8, i32* %retval
  br label %return

sw.bb.4:                                          ; preds = %entry
  store i32 7, i32* %retval
  br label %return

sw.bb.5:                                          ; preds = %entry
  store i32 6, i32* %retval
  br label %return

sw.bb.6:                                          ; preds = %entry
  store i32 5, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  store i32 12, i32* %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  %2 = load i32, i32* %retval
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define i32 @gsicc_profile_from_ps(%struct.cmm_profile_s* %profile_data) #0 {
entry:
  %retval = alloca i32, align 4
  %profile_data.addr = alloca %struct.cmm_profile_s*, align 8
  store %struct.cmm_profile_s* %profile_data, %struct.cmm_profile_s** %profile_data.addr, align 8, !tbaa !1
  %0 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %profile_data.addr, align 8, !tbaa !1
  %default_match = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %0, i32 0, i32 4
  %1 = load i32, i32* %default_match, align 4, !tbaa !54
  switch i32 %1, label %sw.default [
    i32 13, label %sw.bb
    i32 14, label %sw.bb
    i32 15, label %sw.bb
    i32 16, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry
  store i32 1, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %2 = load i32, i32* %retval
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define i32 @gsicc_set_srcgtag_struct(%struct.gsicc_manager_s* %icc_manager, i8* %pname, i32 %namelen) #0 {
entry:
  %retval = alloca i32, align 4
  %icc_manager.addr = alloca %struct.gsicc_manager_s*, align 8
  %pname.addr = alloca i8*, align 8
  %namelen.addr = alloca i32, align 4
  %mem = alloca %struct.gs_memory_s*, align 8
  %str = alloca %struct.stream_s*, align 8
  %code = alloca i32, align 4
  %info_size = alloca i32, align 4
  %buffer_ptr = alloca i8*, align 8
  %curr_ptr = alloca i8*, align 8
  %num_bytes = alloca i32, align 4
  %str_format_key = alloca [6 x i8], align 1
  %str_format_file = alloca [6 x i8], align 1
  %k = alloca i32, align 4
  %icc_profile = alloca %struct.cmm_profile_s*, align 8
  %srcgtag = alloca %struct.cmm_srcgtag_profile_s*, align 8
  %start = alloca i32, align 4
  %cmm = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gsicc_manager_s* %icc_manager, %struct.gsicc_manager_s** %icc_manager.addr, align 8, !tbaa !1
  store i8* %pname, i8** %pname.addr, align 8, !tbaa !1
  store i32 %namelen, i32* %namelen.addr, align 4, !tbaa !13
  %0 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.stream_s** %str to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %info_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i8** %buffer_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i8** %curr_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i32* %num_bytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast [6 x i8]* %str_format_key to i8*
  call void @llvm.lifetime.start(i64 6, i8* %7) #1
  %8 = bitcast [6 x i8]* %str_format_file to i8*
  call void @llvm.lifetime.start(i64 6, i8* %8) #1
  %9 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast %struct.cmm_profile_s** %icc_profile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast %struct.cmm_srcgtag_profile_s** %srcgtag to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = bitcast i32* %start to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  store i32 1, i32* %start, align 4, !tbaa !13
  %13 = bitcast i32* %cmm to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  store i32 0, i32* %cmm, align 4, !tbaa !5
  %14 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.gsicc_manager_s* %14, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %15 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager.addr, align 8, !tbaa !1
  %srcgtag_profile = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %15, i32 0, i32 9
  %16 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag_profile, align 8, !tbaa !71
  %cmp1 = icmp ne %struct.cmm_srcgtag_profile_s* %16, null
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false
  %17 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %17, i32 0, i32 10
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !50
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %18, i32 0, i32 3
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !32
  store %struct.gs_memory_s* %19, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %20 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %21 = load i32, i32* %namelen.addr, align 4, !tbaa !13
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %23, i32 0, i32 2
  %24 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !18
  %profiledir = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %24, i32 0, i32 24
  %25 = load i8*, i8** %profiledir, align 8, !tbaa !21
  %26 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %gs_lib_ctx2 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %26, i32 0, i32 2
  %27 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx2, align 8, !tbaa !18
  %profiledir_len = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %27, i32 0, i32 25
  %28 = load i32, i32* %profiledir_len, align 4, !tbaa !23
  %call = call i32 @gsicc_open_search(i8* %20, i32 %21, %struct.gs_memory_s* %22, i8* %25, i32 %28, %struct.stream_s** %str) #5
  store i32 %call, i32* %code, align 4, !tbaa !13
  %29 = load i32, i32* %code, align 4, !tbaa !13
  %cmp3 = icmp slt i32 %29, 0
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.else
  %30 = load i32, i32* %code, align 4, !tbaa !13
  store i32 %30, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.else
  br label %if.end.5

if.end.5:                                         ; preds = %if.end
  %31 = load %struct.stream_s*, %struct.stream_s** %str, align 8, !tbaa !1
  %cmp6 = icmp ne %struct.stream_s* %31, null
  br i1 %cmp6, label %if.then.7, label %if.else.291

if.then.7:                                        ; preds = %if.end.5
  %32 = load %struct.stream_s*, %struct.stream_s** %str, align 8, !tbaa !1
  %call8 = call i32 @sfseek(%struct.stream_s* %32, i64 0, i32 2) #5
  store i32 %call8, i32* %code, align 4, !tbaa !13
  %33 = load %struct.stream_s*, %struct.stream_s** %str, align 8, !tbaa !1
  %call9 = call i64 @sftell(%struct.stream_s* %33) #5
  %conv = trunc i64 %call9 to i32
  store i32 %conv, i32* %info_size, align 4, !tbaa !13
  %34 = load %struct.stream_s*, %struct.stream_s** %str, align 8, !tbaa !1
  %call10 = call i32 @srewind(%struct.stream_s* %34) #5
  store i32 %call10, i32* %code, align 4, !tbaa !13
  %35 = load i32, i32* %info_size, align 4, !tbaa !13
  %cmp11 = icmp sgt i32 %35, 32768
  br i1 %cmp11, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.then.7
  %36 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %call14 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gsicc_set_srcgtag_struct, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 547, i32 0, i32 -1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.16, i32 0, i32 0), i8* %36) #5
  store i32 %call14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %if.then.7
  %37 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %37, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %38 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !30
  %39 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %40 = load i32, i32* %info_size, align 4, !tbaa !13
  %add = add nsw i32 %40, 1
  %call16 = call i8* %38(%struct.gs_memory_s* %39, i32 %add, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gsicc_set_srcgtag_struct, i32 0, i32 0)) #5
  store i8* %call16, i8** %buffer_ptr, align 8, !tbaa !1
  %41 = load i8*, i8** %buffer_ptr, align 8, !tbaa !1
  %cmp17 = icmp eq i8* %41, null
  br i1 %cmp17, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %if.end.15
  %42 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %call20 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gsicc_set_srcgtag_struct, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 554, i32 0, i32 -25, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.16, i32 0, i32 0), i8* %42) #5
  store i32 %call20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %if.end.15
  %43 = load i8*, i8** %buffer_ptr, align 8, !tbaa !1
  %44 = load i32, i32* %info_size, align 4, !tbaa !13
  %conv22 = sext i32 %44 to i64
  %45 = load %struct.stream_s*, %struct.stream_s** %str, align 8, !tbaa !1
  %call23 = call i32 @sfread(i8* %43, i64 1, i64 %conv22, %struct.stream_s* %45) #5
  store i32 %call23, i32* %num_bytes, align 4, !tbaa !13
  %46 = load %struct.stream_s*, %struct.stream_s** %str, align 8, !tbaa !1
  %call24 = call i32 @sfclose(%struct.stream_s* %46) #5
  store i32 %call24, i32* %code, align 4, !tbaa !13
  %47 = load i32, i32* %info_size, align 4, !tbaa !13
  %idxprom = sext i32 %47 to i64
  %48 = load i8*, i8** %buffer_ptr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %48, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1, !tbaa !5
  %49 = load i32, i32* %num_bytes, align 4, !tbaa !13
  %50 = load i32, i32* %info_size, align 4, !tbaa !13
  %cmp25 = icmp ne i32 %49, %50
  br i1 %cmp25, label %if.then.27, label %if.end.30

if.then.27:                                       ; preds = %if.end.21
  %51 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs28 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %51, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs28, i32 0, i32 2
  %52 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !31
  %53 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %54 = load i8*, i8** %buffer_ptr, align 8, !tbaa !1
  call void %52(%struct.gs_memory_s* %53, i8* %54, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gsicc_set_srcgtag_struct, i32 0, i32 0)) #5
  %55 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %call29 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gsicc_set_srcgtag_struct, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 562, i32 0, i32 -1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.16, i32 0, i32 0), i8* %55) #5
  store i32 %call29, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.30:                                        ; preds = %if.end.21
  %56 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call31 = call %struct.cmm_srcgtag_profile_s* @gsicc_new_srcgtag_profile(%struct.gs_memory_s* %56) #5
  store %struct.cmm_srcgtag_profile_s* %call31, %struct.cmm_srcgtag_profile_s** %srcgtag, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [6 x i8], [6 x i8]* %str_format_key, i32 0, i32 0
  %call32 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i32 12) #5
  %arraydecay33 = getelementptr inbounds [6 x i8], [6 x i8]* %str_format_file, i32 0, i32 0
  %call34 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i32 4096) #5
  %57 = load i8*, i8** %buffer_ptr, align 8, !tbaa !1
  store i8* %57, i8** %curr_ptr, align 8, !tbaa !1
  store i32 0, i32* %k, align 4, !tbaa !13
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.30
  %58 = load i32, i32* %k, align 4, !tbaa !13
  %cmp35 = icmp slt i32 %58, 3
  br i1 %cmp35, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %59 = load i32, i32* %k, align 4, !tbaa !13
  %idxprom37 = sext i32 %59 to i64
  %60 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag, align 8, !tbaa !1
  %rgb_rend_cond = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %60, i32 0, i32 1
  %arrayidx38 = getelementptr inbounds [3 x %struct.gsicc_rendering_param_s], [3 x %struct.gsicc_rendering_param_s]* %rgb_rend_cond, i32 0, i64 %idxprom37
  %cmm39 = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %arrayidx38, i32 0, i32 4
  store i32 0, i32* %cmm39, align 4, !tbaa !72
  %61 = load i32, i32* %k, align 4, !tbaa !13
  %idxprom40 = sext i32 %61 to i64
  %62 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag, align 8, !tbaa !1
  %cmyk_rend_cond = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %62, i32 0, i32 3
  %arrayidx41 = getelementptr inbounds [3 x %struct.gsicc_rendering_param_s], [3 x %struct.gsicc_rendering_param_s]* %cmyk_rend_cond, i32 0, i64 %idxprom40
  %cmm42 = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %arrayidx41, i32 0, i32 4
  store i32 0, i32* %cmm42, align 4, !tbaa !72
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %63 = load i32, i32* %k, align 4, !tbaa !13
  %inc = add nsw i32 %63, 1
  store i32 %inc, i32* %k, align 4, !tbaa !13
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %for.end
  %64 = load i32, i32* %start, align 4, !tbaa !13
  %tobool = icmp ne i32 %64, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %65 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %call43 = call i64 @strlen(i8* %65) #7
  %cmp44 = icmp ugt i64 %call43, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %66 = phi i1 [ true, %while.cond ], [ %cmp44, %lor.rhs ]
  br i1 %66, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %67 = load i32, i32* %start, align 4, !tbaa !13
  %tobool46 = icmp ne i32 %67, 0
  br i1 %tobool46, label %if.then.47, label %if.else.49

if.then.47:                                       ; preds = %while.body
  %68 = load i8*, i8** %buffer_ptr, align 8, !tbaa !1
  %call48 = call i8* @strtok(i8* %68, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0)) #6
  store i8* %call48, i8** %curr_ptr, align 8, !tbaa !1
  store i32 0, i32* %start, align 4, !tbaa !13
  br label %if.end.51

if.else.49:                                       ; preds = %while.body
  %call50 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0)) #6
  store i8* %call50, i8** %curr_ptr, align 8, !tbaa !1
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.49, %if.then.47
  %69 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %cmp52 = icmp eq i8* %69, null
  br i1 %cmp52, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %if.end.51
  br label %while.end

if.end.55:                                        ; preds = %if.end.51
  store i32 0, i32* %k, align 4, !tbaa !13
  br label %for.cond.56

for.cond.56:                                      ; preds = %for.inc.143, %if.end.55
  %70 = load i32, i32* %k, align 4, !tbaa !13
  %cmp57 = icmp slt i32 %70, 7
  br i1 %cmp57, label %for.body.59, label %for.end.145

for.body.59:                                      ; preds = %for.cond.56
  %71 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %72 = load i32, i32* %k, align 4, !tbaa !13
  %idxprom60 = sext i32 %72 to i64
  %arrayidx61 = getelementptr inbounds [7 x i8*], [7 x i8*]* @gsicc_set_srcgtag_struct.srcgtag_keys, i32 0, i64 %idxprom60
  %73 = load i8*, i8** %arrayidx61, align 8, !tbaa !1
  %74 = load i32, i32* %k, align 4, !tbaa !13
  %idxprom62 = sext i32 %74 to i64
  %arrayidx63 = getelementptr inbounds [7 x i8*], [7 x i8*]* @gsicc_set_srcgtag_struct.srcgtag_keys, i32 0, i64 %idxprom62
  %75 = load i8*, i8** %arrayidx63, align 8, !tbaa !1
  %call64 = call i64 @strlen(i8* %75) #7
  %call65 = call i32 @strncmp(i8* %71, i8* %73, i64 %call64) #7
  %cmp66 = icmp eq i32 %call65, 0
  br i1 %cmp66, label %if.then.68, label %if.end.142

if.then.68:                                       ; preds = %for.body.59
  %call69 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0)) #6
  store i8* %call69, i8** %curr_ptr, align 8, !tbaa !1
  %76 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %call70 = call i64 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0)) #7
  %call71 = call i32 @strncmp(i8* %76, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i64 %call70) #7
  %cmp72 = icmp eq i32 %call71, 0
  br i1 %cmp72, label %land.lhs.true, label %if.else.79

land.lhs.true:                                    ; preds = %if.then.68
  %77 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %call74 = call i64 @strlen(i8* %77) #7
  %call75 = call i64 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0)) #7
  %cmp76 = icmp eq i64 %call74, %call75
  br i1 %cmp76, label %if.then.78, label %if.else.79

if.then.78:                                       ; preds = %land.lhs.true
  store i32 1, i32* %cmm, align 4, !tbaa !5
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !1
  br label %for.end.145

if.else.79:                                       ; preds = %land.lhs.true, %if.then.68
  %78 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %call80 = call i64 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0)) #7
  %call81 = call i32 @strncmp(i8* %78, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i64 %call80) #7
  %cmp82 = icmp eq i32 %call81, 0
  br i1 %cmp82, label %land.lhs.true.84, label %if.else.90

land.lhs.true.84:                                 ; preds = %if.else.79
  %79 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %call85 = call i64 @strlen(i8* %79) #7
  %call86 = call i64 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0)) #7
  %cmp87 = icmp eq i64 %call85, %call86
  br i1 %cmp87, label %if.then.89, label %if.else.90

if.then.89:                                       ; preds = %land.lhs.true.84
  store i32 2, i32* %cmm, align 4, !tbaa !5
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !1
  br label %for.end.145

if.else.90:                                       ; preds = %land.lhs.true.84, %if.else.79
  %80 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %81 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %call91 = call i64 @strlen(i8* %81) #7
  %conv92 = trunc i64 %call91 to i32
  %82 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %83 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %gs_lib_ctx93 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %83, i32 0, i32 2
  %84 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx93, align 8, !tbaa !18
  %profiledir94 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %84, i32 0, i32 24
  %85 = load i8*, i8** %profiledir94, align 8, !tbaa !21
  %86 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %gs_lib_ctx95 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %86, i32 0, i32 2
  %87 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx95, align 8, !tbaa !18
  %profiledir_len96 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %87, i32 0, i32 25
  %88 = load i32, i32* %profiledir_len96, align 4, !tbaa !23
  %call97 = call i32 @gsicc_open_search(i8* %80, i32 %conv92, %struct.gs_memory_s* %82, i8* %85, i32 %88, %struct.stream_s** %str) #5
  store i32 %call97, i32* %code, align 4, !tbaa !13
  %89 = load i32, i32* %code, align 4, !tbaa !13
  %cmp98 = icmp slt i32 %89, 0
  br i1 %cmp98, label %if.then.100, label %if.end.101

if.then.100:                                      ; preds = %if.else.90
  %90 = load i32, i32* %code, align 4, !tbaa !13
  store i32 %90, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.101:                                       ; preds = %if.else.90
  %91 = load %struct.stream_s*, %struct.stream_s** %str, align 8, !tbaa !1
  %cmp102 = icmp ne %struct.stream_s* %91, null
  br i1 %cmp102, label %if.then.104, label %if.else.110

if.then.104:                                      ; preds = %if.end.101
  %92 = load %struct.stream_s*, %struct.stream_s** %str, align 8, !tbaa !1
  %93 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %94 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %95 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %call105 = call i64 @strlen(i8* %95) #7
  %conv106 = trunc i64 %call105 to i32
  %call107 = call %struct.cmm_profile_s* @gsicc_profile_new(%struct.stream_s* %92, %struct.gs_memory_s* %93, i8* %94, i32 %conv106) #5
  store %struct.cmm_profile_s* %call107, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !1
  %96 = load %struct.stream_s*, %struct.stream_s** %str, align 8, !tbaa !1
  %call108 = call i32 @sfclose(%struct.stream_s* %96) #5
  store i32 %call108, i32* %code, align 4, !tbaa !13
  %97 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !1
  call void @gsicc_init_profile_info(%struct.cmm_profile_s* %97) #5
  store i32 0, i32* %cmm, align 4, !tbaa !5
  %98 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !1
  %call109 = call i32 @gsicc_check_device_link(%struct.cmm_profile_s* %98) #5
  br label %for.end.145

if.else.110:                                      ; preds = %if.end.101
  %99 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs111 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %99, i32 0, i32 1
  %free_object112 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs111, i32 0, i32 2
  %100 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object112, align 8, !tbaa !31
  %101 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %102 = load i8*, i8** %buffer_ptr, align 8, !tbaa !1
  call void %100(%struct.gs_memory_s* %101, i8* %102, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gsicc_set_srcgtag_struct, i32 0, i32 0)) #5
  br label %do.body

do.body:                                          ; preds = %if.else.110
  %103 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag, align 8, !tbaa !1
  %tobool113 = icmp ne %struct.cmm_srcgtag_profile_s* %103, null
  br i1 %tobool113, label %if.then.114, label %if.end.138

if.then.114:                                      ; preds = %do.body
  br label %do.body.115

do.body.115:                                      ; preds = %if.then.114
  br label %do.body.116

do.body.116:                                      ; preds = %do.body.115
  br label %do.cond

do.cond:                                          ; preds = %do.body.116
  br label %do.end

do.end:                                           ; preds = %do.cond
  %104 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag, align 8, !tbaa !1
  %rc = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %104, i32 0, i32 8
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %105 = load i64, i64* %ref_count, align 8, !tbaa !73
  %add117 = add nsw i64 %105, -1
  store i64 %add117, i64* %ref_count, align 8, !tbaa !73
  br label %do.cond.118

do.cond.118:                                      ; preds = %do.end
  br label %do.end.119

do.end.119:                                       ; preds = %do.cond.118
  %106 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag, align 8, !tbaa !1
  %rc120 = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %106, i32 0, i32 8
  %ref_count121 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc120, i32 0, i32 0
  %107 = load i64, i64* %ref_count121, align 8, !tbaa !73
  %tobool122 = icmp ne i64 %107, 0
  br i1 %tobool122, label %if.else.133, label %if.then.123

if.then.123:                                      ; preds = %do.end.119
  br label %do.body.124

do.body.124:                                      ; preds = %if.then.123
  br label %do.body.125

do.body.125:                                      ; preds = %do.body.124
  br label %do.cond.126

do.cond.126:                                      ; preds = %do.body.125
  br label %do.end.127

do.end.127:                                       ; preds = %do.cond.126
  %108 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag, align 8, !tbaa !1
  %rc128 = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %108, i32 0, i32 8
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc128, i32 0, i32 2
  %109 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !75
  %110 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag, align 8, !tbaa !1
  %rc129 = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %110, i32 0, i32 8
  %memory130 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc129, i32 0, i32 1
  %111 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory130, align 8, !tbaa !76
  %112 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag, align 8, !tbaa !1
  %113 = bitcast %struct.cmm_srcgtag_profile_s* %112 to i8*
  call void %109(%struct.gs_memory_s* %111, i8* %113, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gsicc_set_srcgtag_struct, i32 0, i32 0)) #5
  br label %do.cond.131

do.cond.131:                                      ; preds = %do.end.127
  br label %do.end.132

do.end.132:                                       ; preds = %do.cond.131
  store %struct.cmm_srcgtag_profile_s* null, %struct.cmm_srcgtag_profile_s** %srcgtag, align 8, !tbaa !1
  br label %if.end.137

if.else.133:                                      ; preds = %do.end.119
  br label %do.body.134

do.body.134:                                      ; preds = %if.else.133
  br label %do.cond.135

do.cond.135:                                      ; preds = %do.body.134
  br label %do.end.136

do.end.136:                                       ; preds = %do.cond.135
  br label %if.end.137

if.end.137:                                       ; preds = %do.end.136, %do.end.132
  br label %if.end.138

if.end.138:                                       ; preds = %if.end.137, %do.body
  br label %do.cond.139

do.cond.139:                                      ; preds = %if.end.138
  br label %do.end.140

do.end.140:                                       ; preds = %do.cond.139
  %114 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %call141 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gsicc_set_srcgtag_struct, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 628, i32 0, i32 -1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.16, i32 0, i32 0), i8* %114) #5
  store i32 %call141, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.142:                                       ; preds = %for.body.59
  br label %for.inc.143

for.inc.143:                                      ; preds = %if.end.142
  %115 = load i32, i32* %k, align 4, !tbaa !13
  %inc144 = add nsw i32 %115, 1
  store i32 %inc144, i32* %k, align 4, !tbaa !13
  br label %for.cond.56

for.end.145:                                      ; preds = %if.then.104, %if.then.89, %if.then.78, %for.cond.56
  %116 = load i32, i32* %k, align 4, !tbaa !13
  switch i32 %116, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.146
    i32 2, label %sw.bb.157
    i32 3, label %sw.bb.169
    i32 4, label %sw.bb.181
    i32 5, label %sw.bb.192
    i32 6, label %sw.bb.204
    i32 7, label %sw.bb.216
  ]

sw.bb:                                            ; preds = %for.end.145
  %117 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !1
  %118 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag, align 8, !tbaa !1
  %color_warp_profile = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %118, i32 0, i32 4
  store %struct.cmm_profile_s* %117, %struct.cmm_profile_s** %color_warp_profile, align 8, !tbaa !77
  br label %sw.epilog

sw.bb.146:                                        ; preds = %for.end.145
  %119 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !1
  %120 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag, align 8, !tbaa !1
  %cmyk_profiles = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %120, i32 0, i32 2
  %arrayidx147 = getelementptr inbounds [3 x %struct.cmm_profile_s*], [3 x %struct.cmm_profile_s*]* %cmyk_profiles, i32 0, i64 0
  store %struct.cmm_profile_s* %119, %struct.cmm_profile_s** %arrayidx147, align 8, !tbaa !1
  %121 = load i32, i32* %cmm, align 4, !tbaa !5
  %122 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag, align 8, !tbaa !1
  %cmyk_rend_cond148 = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %122, i32 0, i32 3
  %arrayidx149 = getelementptr inbounds [3 x %struct.gsicc_rendering_param_s], [3 x %struct.gsicc_rendering_param_s]* %cmyk_rend_cond148, i32 0, i64 0
  %cmm150 = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %arrayidx149, i32 0, i32 4
  store i32 %121, i32* %cmm150, align 4, !tbaa !72
  %123 = load i32, i32* %cmm, align 4, !tbaa !5
  %cmp151 = icmp eq i32 %123, 0
  br i1 %cmp151, label %if.then.153, label %if.end.156

if.then.153:                                      ; preds = %sw.bb.146
  %124 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag, align 8, !tbaa !1
  %cmyk_rend_cond154 = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %124, i32 0, i32 3
  %arrayidx155 = getelementptr inbounds [3 x %struct.gsicc_rendering_param_s], [3 x %struct.gsicc_rendering_param_s]* %cmyk_rend_cond154, i32 0, i64 0
  call void @gsicc_fill_srcgtag_item(%struct.gsicc_rendering_param_s* %arrayidx155, i32 1) #5
  br label %if.end.156

if.end.156:                                       ; preds = %if.then.153, %sw.bb.146
  br label %sw.epilog

sw.bb.157:                                        ; preds = %for.end.145
  %125 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !1
  %126 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag, align 8, !tbaa !1
  %cmyk_profiles158 = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %126, i32 0, i32 2
  %arrayidx159 = getelementptr inbounds [3 x %struct.cmm_profile_s*], [3 x %struct.cmm_profile_s*]* %cmyk_profiles158, i32 0, i64 1
  store %struct.cmm_profile_s* %125, %struct.cmm_profile_s** %arrayidx159, align 8, !tbaa !1
  %127 = load i32, i32* %cmm, align 4, !tbaa !5
  %128 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag, align 8, !tbaa !1
  %cmyk_rend_cond160 = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %128, i32 0, i32 3
  %arrayidx161 = getelementptr inbounds [3 x %struct.gsicc_rendering_param_s], [3 x %struct.gsicc_rendering_param_s]* %cmyk_rend_cond160, i32 0, i64 1
  %cmm162 = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %arrayidx161, i32 0, i32 4
  store i32 %127, i32* %cmm162, align 4, !tbaa !72
  %129 = load i32, i32* %cmm, align 4, !tbaa !5
  %cmp163 = icmp eq i32 %129, 0
  br i1 %cmp163, label %if.then.165, label %if.end.168

if.then.165:                                      ; preds = %sw.bb.157
  %130 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag, align 8, !tbaa !1
  %cmyk_rend_cond166 = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %130, i32 0, i32 3
  %arrayidx167 = getelementptr inbounds [3 x %struct.gsicc_rendering_param_s], [3 x %struct.gsicc_rendering_param_s]* %cmyk_rend_cond166, i32 0, i64 1
  call void @gsicc_fill_srcgtag_item(%struct.gsicc_rendering_param_s* %arrayidx167, i32 1) #5
  br label %if.end.168

if.end.168:                                       ; preds = %if.then.165, %sw.bb.157
  br label %sw.epilog

sw.bb.169:                                        ; preds = %for.end.145
  %131 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !1
  %132 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag, align 8, !tbaa !1
  %cmyk_profiles170 = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %132, i32 0, i32 2
  %arrayidx171 = getelementptr inbounds [3 x %struct.cmm_profile_s*], [3 x %struct.cmm_profile_s*]* %cmyk_profiles170, i32 0, i64 2
  store %struct.cmm_profile_s* %131, %struct.cmm_profile_s** %arrayidx171, align 8, !tbaa !1
  %133 = load i32, i32* %cmm, align 4, !tbaa !5
  %134 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag, align 8, !tbaa !1
  %cmyk_rend_cond172 = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %134, i32 0, i32 3
  %arrayidx173 = getelementptr inbounds [3 x %struct.gsicc_rendering_param_s], [3 x %struct.gsicc_rendering_param_s]* %cmyk_rend_cond172, i32 0, i64 2
  %cmm174 = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %arrayidx173, i32 0, i32 4
  store i32 %133, i32* %cmm174, align 4, !tbaa !72
  %135 = load i32, i32* %cmm, align 4, !tbaa !5
  %cmp175 = icmp eq i32 %135, 0
  br i1 %cmp175, label %if.then.177, label %if.end.180

if.then.177:                                      ; preds = %sw.bb.169
  %136 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag, align 8, !tbaa !1
  %cmyk_rend_cond178 = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %136, i32 0, i32 3
  %arrayidx179 = getelementptr inbounds [3 x %struct.gsicc_rendering_param_s], [3 x %struct.gsicc_rendering_param_s]* %cmyk_rend_cond178, i32 0, i64 2
  call void @gsicc_fill_srcgtag_item(%struct.gsicc_rendering_param_s* %arrayidx179, i32 1) #5
  br label %if.end.180

if.end.180:                                       ; preds = %if.then.177, %sw.bb.169
  br label %sw.epilog

sw.bb.181:                                        ; preds = %for.end.145
  %137 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !1
  %138 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag, align 8, !tbaa !1
  %rgb_profiles = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %138, i32 0, i32 0
  %arrayidx182 = getelementptr inbounds [3 x %struct.cmm_profile_s*], [3 x %struct.cmm_profile_s*]* %rgb_profiles, i32 0, i64 0
  store %struct.cmm_profile_s* %137, %struct.cmm_profile_s** %arrayidx182, align 8, !tbaa !1
  %139 = load i32, i32* %cmm, align 4, !tbaa !5
  %140 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag, align 8, !tbaa !1
  %rgb_rend_cond183 = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %140, i32 0, i32 1
  %arrayidx184 = getelementptr inbounds [3 x %struct.gsicc_rendering_param_s], [3 x %struct.gsicc_rendering_param_s]* %rgb_rend_cond183, i32 0, i64 0
  %cmm185 = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %arrayidx184, i32 0, i32 4
  store i32 %139, i32* %cmm185, align 4, !tbaa !72
  %141 = load i32, i32* %cmm, align 4, !tbaa !5
  %cmp186 = icmp eq i32 %141, 0
  br i1 %cmp186, label %if.then.188, label %if.end.191

if.then.188:                                      ; preds = %sw.bb.181
  %142 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag, align 8, !tbaa !1
  %rgb_rend_cond189 = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %142, i32 0, i32 1
  %arrayidx190 = getelementptr inbounds [3 x %struct.gsicc_rendering_param_s], [3 x %struct.gsicc_rendering_param_s]* %rgb_rend_cond189, i32 0, i64 0
  call void @gsicc_fill_srcgtag_item(%struct.gsicc_rendering_param_s* %arrayidx190, i32 0) #5
  br label %if.end.191

if.end.191:                                       ; preds = %if.then.188, %sw.bb.181
  br label %sw.epilog

sw.bb.192:                                        ; preds = %for.end.145
  %143 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !1
  %144 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag, align 8, !tbaa !1
  %rgb_profiles193 = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %144, i32 0, i32 0
  %arrayidx194 = getelementptr inbounds [3 x %struct.cmm_profile_s*], [3 x %struct.cmm_profile_s*]* %rgb_profiles193, i32 0, i64 1
  store %struct.cmm_profile_s* %143, %struct.cmm_profile_s** %arrayidx194, align 8, !tbaa !1
  %145 = load i32, i32* %cmm, align 4, !tbaa !5
  %146 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag, align 8, !tbaa !1
  %rgb_rend_cond195 = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %146, i32 0, i32 1
  %arrayidx196 = getelementptr inbounds [3 x %struct.gsicc_rendering_param_s], [3 x %struct.gsicc_rendering_param_s]* %rgb_rend_cond195, i32 0, i64 1
  %cmm197 = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %arrayidx196, i32 0, i32 4
  store i32 %145, i32* %cmm197, align 4, !tbaa !72
  %147 = load i32, i32* %cmm, align 4, !tbaa !5
  %cmp198 = icmp eq i32 %147, 0
  br i1 %cmp198, label %if.then.200, label %if.end.203

if.then.200:                                      ; preds = %sw.bb.192
  %148 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag, align 8, !tbaa !1
  %rgb_rend_cond201 = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %148, i32 0, i32 1
  %arrayidx202 = getelementptr inbounds [3 x %struct.gsicc_rendering_param_s], [3 x %struct.gsicc_rendering_param_s]* %rgb_rend_cond201, i32 0, i64 1
  call void @gsicc_fill_srcgtag_item(%struct.gsicc_rendering_param_s* %arrayidx202, i32 0) #5
  br label %if.end.203

if.end.203:                                       ; preds = %if.then.200, %sw.bb.192
  br label %sw.epilog

sw.bb.204:                                        ; preds = %for.end.145
  %149 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !1
  %150 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag, align 8, !tbaa !1
  %rgb_profiles205 = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %150, i32 0, i32 0
  %arrayidx206 = getelementptr inbounds [3 x %struct.cmm_profile_s*], [3 x %struct.cmm_profile_s*]* %rgb_profiles205, i32 0, i64 2
  store %struct.cmm_profile_s* %149, %struct.cmm_profile_s** %arrayidx206, align 8, !tbaa !1
  %151 = load i32, i32* %cmm, align 4, !tbaa !5
  %152 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag, align 8, !tbaa !1
  %rgb_rend_cond207 = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %152, i32 0, i32 1
  %arrayidx208 = getelementptr inbounds [3 x %struct.gsicc_rendering_param_s], [3 x %struct.gsicc_rendering_param_s]* %rgb_rend_cond207, i32 0, i64 2
  %cmm209 = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %arrayidx208, i32 0, i32 4
  store i32 %151, i32* %cmm209, align 4, !tbaa !72
  %153 = load i32, i32* %cmm, align 4, !tbaa !5
  %cmp210 = icmp eq i32 %153, 0
  br i1 %cmp210, label %if.then.212, label %if.end.215

if.then.212:                                      ; preds = %sw.bb.204
  %154 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag, align 8, !tbaa !1
  %rgb_rend_cond213 = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %154, i32 0, i32 1
  %arrayidx214 = getelementptr inbounds [3 x %struct.gsicc_rendering_param_s], [3 x %struct.gsicc_rendering_param_s]* %rgb_rend_cond213, i32 0, i64 2
  call void @gsicc_fill_srcgtag_item(%struct.gsicc_rendering_param_s* %arrayidx214, i32 0) #5
  br label %if.end.215

if.end.215:                                       ; preds = %if.then.212, %sw.bb.204
  br label %sw.epilog

sw.bb.216:                                        ; preds = %for.end.145
  %155 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs217 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %155, i32 0, i32 1
  %free_object218 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs217, i32 0, i32 2
  %156 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object218, align 8, !tbaa !31
  %157 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %158 = load i8*, i8** %buffer_ptr, align 8, !tbaa !1
  call void %156(%struct.gs_memory_s* %157, i8* %158, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gsicc_set_srcgtag_struct, i32 0, i32 0)) #5
  br label %do.body.219

do.body.219:                                      ; preds = %sw.bb.216
  %159 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag, align 8, !tbaa !1
  %tobool220 = icmp ne %struct.cmm_srcgtag_profile_s* %159, null
  br i1 %tobool220, label %if.then.221, label %if.end.250

if.then.221:                                      ; preds = %do.body.219
  br label %do.body.222

do.body.222:                                      ; preds = %if.then.221
  br label %do.body.223

do.body.223:                                      ; preds = %do.body.222
  br label %do.cond.224

do.cond.224:                                      ; preds = %do.body.223
  br label %do.end.225

do.end.225:                                       ; preds = %do.cond.224
  %160 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag, align 8, !tbaa !1
  %rc226 = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %160, i32 0, i32 8
  %ref_count227 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc226, i32 0, i32 0
  %161 = load i64, i64* %ref_count227, align 8, !tbaa !73
  %add228 = add nsw i64 %161, -1
  store i64 %add228, i64* %ref_count227, align 8, !tbaa !73
  br label %do.cond.229

do.cond.229:                                      ; preds = %do.end.225
  br label %do.end.230

do.end.230:                                       ; preds = %do.cond.229
  %162 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag, align 8, !tbaa !1
  %rc231 = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %162, i32 0, i32 8
  %ref_count232 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc231, i32 0, i32 0
  %163 = load i64, i64* %ref_count232, align 8, !tbaa !73
  %tobool233 = icmp ne i64 %163, 0
  br i1 %tobool233, label %if.else.245, label %if.then.234

if.then.234:                                      ; preds = %do.end.230
  br label %do.body.235

do.body.235:                                      ; preds = %if.then.234
  br label %do.body.236

do.body.236:                                      ; preds = %do.body.235
  br label %do.cond.237

do.cond.237:                                      ; preds = %do.body.236
  br label %do.end.238

do.end.238:                                       ; preds = %do.cond.237
  %164 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag, align 8, !tbaa !1
  %rc239 = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %164, i32 0, i32 8
  %free240 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc239, i32 0, i32 2
  %165 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free240, align 8, !tbaa !75
  %166 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag, align 8, !tbaa !1
  %rc241 = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %166, i32 0, i32 8
  %memory242 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc241, i32 0, i32 1
  %167 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory242, align 8, !tbaa !76
  %168 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag, align 8, !tbaa !1
  %169 = bitcast %struct.cmm_srcgtag_profile_s* %168 to i8*
  call void %165(%struct.gs_memory_s* %167, i8* %169, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gsicc_set_srcgtag_struct, i32 0, i32 0)) #5
  br label %do.cond.243

do.cond.243:                                      ; preds = %do.end.238
  br label %do.end.244

do.end.244:                                       ; preds = %do.cond.243
  store %struct.cmm_srcgtag_profile_s* null, %struct.cmm_srcgtag_profile_s** %srcgtag, align 8, !tbaa !1
  br label %if.end.249

if.else.245:                                      ; preds = %do.end.230
  br label %do.body.246

do.body.246:                                      ; preds = %if.else.245
  br label %do.cond.247

do.cond.247:                                      ; preds = %do.body.246
  br label %do.end.248

do.end.248:                                       ; preds = %do.cond.247
  br label %if.end.249

if.end.249:                                       ; preds = %do.end.248, %do.end.244
  br label %if.end.250

if.end.250:                                       ; preds = %if.end.249, %do.body.219
  br label %do.cond.251

do.cond.251:                                      ; preds = %if.end.250
  br label %do.end.252

do.end.252:                                       ; preds = %do.cond.251
  %170 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %call253 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gsicc_set_srcgtag_struct, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 686, i32 0, i32 -1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.21, i32 0, i32 0), i8* %170) #5
  store i32 %call253, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.default:                                       ; preds = %for.end.145
  %171 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs254 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %171, i32 0, i32 1
  %free_object255 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs254, i32 0, i32 2
  %172 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object255, align 8, !tbaa !31
  %173 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %174 = load i8*, i8** %buffer_ptr, align 8, !tbaa !1
  call void %172(%struct.gs_memory_s* %173, i8* %174, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gsicc_set_srcgtag_struct, i32 0, i32 0)) #5
  br label %do.body.256

do.body.256:                                      ; preds = %sw.default
  %175 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag, align 8, !tbaa !1
  %tobool257 = icmp ne %struct.cmm_srcgtag_profile_s* %175, null
  br i1 %tobool257, label %if.then.258, label %if.end.287

if.then.258:                                      ; preds = %do.body.256
  br label %do.body.259

do.body.259:                                      ; preds = %if.then.258
  br label %do.body.260

do.body.260:                                      ; preds = %do.body.259
  br label %do.cond.261

do.cond.261:                                      ; preds = %do.body.260
  br label %do.end.262

do.end.262:                                       ; preds = %do.cond.261
  %176 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag, align 8, !tbaa !1
  %rc263 = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %176, i32 0, i32 8
  %ref_count264 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc263, i32 0, i32 0
  %177 = load i64, i64* %ref_count264, align 8, !tbaa !73
  %add265 = add nsw i64 %177, -1
  store i64 %add265, i64* %ref_count264, align 8, !tbaa !73
  br label %do.cond.266

do.cond.266:                                      ; preds = %do.end.262
  br label %do.end.267

do.end.267:                                       ; preds = %do.cond.266
  %178 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag, align 8, !tbaa !1
  %rc268 = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %178, i32 0, i32 8
  %ref_count269 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc268, i32 0, i32 0
  %179 = load i64, i64* %ref_count269, align 8, !tbaa !73
  %tobool270 = icmp ne i64 %179, 0
  br i1 %tobool270, label %if.else.282, label %if.then.271

if.then.271:                                      ; preds = %do.end.267
  br label %do.body.272

do.body.272:                                      ; preds = %if.then.271
  br label %do.body.273

do.body.273:                                      ; preds = %do.body.272
  br label %do.cond.274

do.cond.274:                                      ; preds = %do.body.273
  br label %do.end.275

do.end.275:                                       ; preds = %do.cond.274
  %180 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag, align 8, !tbaa !1
  %rc276 = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %180, i32 0, i32 8
  %free277 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc276, i32 0, i32 2
  %181 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free277, align 8, !tbaa !75
  %182 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag, align 8, !tbaa !1
  %rc278 = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %182, i32 0, i32 8
  %memory279 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc278, i32 0, i32 1
  %183 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory279, align 8, !tbaa !76
  %184 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag, align 8, !tbaa !1
  %185 = bitcast %struct.cmm_srcgtag_profile_s* %184 to i8*
  call void %181(%struct.gs_memory_s* %183, i8* %185, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gsicc_set_srcgtag_struct, i32 0, i32 0)) #5
  br label %do.cond.280

do.cond.280:                                      ; preds = %do.end.275
  br label %do.end.281

do.end.281:                                       ; preds = %do.cond.280
  store %struct.cmm_srcgtag_profile_s* null, %struct.cmm_srcgtag_profile_s** %srcgtag, align 8, !tbaa !1
  br label %if.end.286

if.else.282:                                      ; preds = %do.end.267
  br label %do.body.283

do.body.283:                                      ; preds = %if.else.282
  br label %do.cond.284

do.cond.284:                                      ; preds = %do.body.283
  br label %do.end.285

do.end.285:                                       ; preds = %do.cond.284
  br label %if.end.286

if.end.286:                                       ; preds = %do.end.285, %do.end.281
  br label %if.end.287

if.end.287:                                       ; preds = %if.end.286, %do.body.256
  br label %do.cond.288

do.cond.288:                                      ; preds = %if.end.287
  br label %do.end.289

do.end.289:                                       ; preds = %do.cond.288
  %186 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %call290 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gsicc_set_srcgtag_struct, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 692, i32 0, i32 -1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.22, i32 0, i32 0), i8* %186) #5
  store i32 %call290, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %if.end.215, %if.end.203, %if.end.191, %if.end.180, %if.end.168, %if.end.156, %sw.bb
  br label %while.cond

while.end:                                        ; preds = %if.then.54, %lor.end
  br label %if.end.293

if.else.291:                                      ; preds = %if.end.5
  %187 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %call292 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gsicc_set_srcgtag_struct, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 697, i32 0, i32 -1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.16, i32 0, i32 0), i8* %187) #5
  store i32 %call292, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.293:                                       ; preds = %while.end
  %188 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs294 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %188, i32 0, i32 1
  %free_object295 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs294, i32 0, i32 2
  %189 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object295, align 8, !tbaa !31
  %190 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %191 = load i8*, i8** %buffer_ptr, align 8, !tbaa !1
  call void %189(%struct.gs_memory_s* %190, i8* %191, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gsicc_set_srcgtag_struct, i32 0, i32 0)) #5
  %192 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %call296 = call i64 @strlen(i8* %192) #7
  %conv297 = trunc i64 %call296 to i32
  %193 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag, align 8, !tbaa !1
  %name_length = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %193, i32 0, i32 6
  store i32 %conv297, i32* %name_length, align 4, !tbaa !78
  %194 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs298 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %194, i32 0, i32 1
  %alloc_bytes299 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs298, i32 0, i32 7
  %195 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes299, align 8, !tbaa !30
  %196 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %197 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag, align 8, !tbaa !1
  %name_length300 = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %197, i32 0, i32 6
  %198 = load i32, i32* %name_length300, align 4, !tbaa !78
  %call301 = call i8* %195(%struct.gs_memory_s* %196, i32 %198, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gsicc_set_srcgtag_struct, i32 0, i32 0)) #5
  %199 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag, align 8, !tbaa !1
  %name = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %199, i32 0, i32 7
  store i8* %call301, i8** %name, align 8, !tbaa !79
  %200 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag, align 8, !tbaa !1
  %name302 = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %200, i32 0, i32 7
  %201 = load i8*, i8** %name302, align 8, !tbaa !79
  %cmp303 = icmp eq i8* %201, null
  br i1 %cmp303, label %if.then.305, label %if.end.307

if.then.305:                                      ; preds = %if.end.293
  %call306 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gsicc_set_srcgtag_struct, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 704, i32 0, i32 -25, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.23, i32 0, i32 0)) #5
  store i32 %call306, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.307:                                       ; preds = %if.end.293
  %202 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag, align 8, !tbaa !1
  %name308 = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %202, i32 0, i32 7
  %203 = load i8*, i8** %name308, align 8, !tbaa !79
  %204 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %205 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag, align 8, !tbaa !1
  %name_length309 = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %205, i32 0, i32 6
  %206 = load i32, i32* %name_length309, align 4, !tbaa !78
  %conv310 = sext i32 %206 to i64
  %call311 = call i8* @strncpy(i8* %203, i8* %204, i64 %conv310) #6
  %207 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag, align 8, !tbaa !1
  %208 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager.addr, align 8, !tbaa !1
  %srcgtag_profile312 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %208, i32 0, i32 9
  store %struct.cmm_srcgtag_profile_s* %207, %struct.cmm_srcgtag_profile_s** %srcgtag_profile312, align 8, !tbaa !71
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.307, %if.then.305, %if.else.291, %do.end.289, %do.end.252, %do.end.140, %if.then.100, %if.then.27, %if.then.19, %if.then.13, %if.then.4, %if.then
  %209 = bitcast i32* %cmm to i8*
  call void @llvm.lifetime.end(i64 4, i8* %209) #1
  %210 = bitcast i32* %start to i8*
  call void @llvm.lifetime.end(i64 4, i8* %210) #1
  %211 = bitcast %struct.cmm_srcgtag_profile_s** %srcgtag to i8*
  call void @llvm.lifetime.end(i64 8, i8* %211) #1
  %212 = bitcast %struct.cmm_profile_s** %icc_profile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %212) #1
  %213 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %213) #1
  %214 = bitcast [6 x i8]* %str_format_file to i8*
  call void @llvm.lifetime.end(i64 6, i8* %214) #1
  %215 = bitcast [6 x i8]* %str_format_key to i8*
  call void @llvm.lifetime.end(i64 6, i8* %215) #1
  %216 = bitcast i32* %num_bytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %216) #1
  %217 = bitcast i8** %curr_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %217) #1
  %218 = bitcast i8** %buffer_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %218) #1
  %219 = bitcast i32* %info_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %219) #1
  %220 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %220) #1
  %221 = bitcast %struct.stream_s** %str to i8*
  call void @llvm.lifetime.end(i64 8, i8* %221) #1
  %222 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %222) #1
  %223 = load i32, i32* %retval
  ret i32 %223
}

declare i32 @sfseek(%struct.stream_s*, i64, i32) #2

declare i64 @sftell(%struct.stream_s*) #2

declare i32 @srewind(%struct.stream_s*) #2

declare i32 @sfread(i8*, i64, i64, %struct.stream_s*) #2

; Function Attrs: nounwind uwtable
define internal %struct.cmm_srcgtag_profile_s* @gsicc_new_srcgtag_profile(%struct.gs_memory_s* %memory) #0 {
entry:
  %retval = alloca %struct.cmm_srcgtag_profile_s*, align 8
  %memory.addr = alloca %struct.gs_memory_s*, align 8
  %result = alloca %struct.cmm_srcgtag_profile_s*, align 8
  %k = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %memory, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cmm_srcgtag_profile_s** %result to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %2, i32 0, i32 3
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !32
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %3, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %4 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !30
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %non_gc_memory1 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %5, i32 0, i32 3
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory1, align 8, !tbaa !32
  %call = call i8* %4(%struct.gs_memory_s* %6, i32 248, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.83, i32 0, i32 0)) #5
  %7 = bitcast i8* %call to %struct.cmm_srcgtag_profile_s*
  store %struct.cmm_srcgtag_profile_s* %7, %struct.cmm_srcgtag_profile_s** %result, align 8, !tbaa !1
  %8 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %result, align 8, !tbaa !1
  %cmp = icmp eq %struct.cmm_srcgtag_profile_s* %8, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.cmm_srcgtag_profile_s* null, %struct.cmm_srcgtag_profile_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %non_gc_memory2 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %9, i32 0, i32 3
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory2, align 8, !tbaa !32
  %11 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %result, align 8, !tbaa !1
  %memory3 = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %11, i32 0, i32 5
  store %struct.gs_memory_s* %10, %struct.gs_memory_s** %memory3, align 8, !tbaa !80
  store i32 0, i32* %k, align 4, !tbaa !13
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %12 = load i32, i32* %k, align 4, !tbaa !13
  %cmp4 = icmp slt i32 %12, 3
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %k, align 4, !tbaa !13
  %idxprom = sext i32 %13 to i64
  %14 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %result, align 8, !tbaa !1
  %rgb_profiles = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %14, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x %struct.cmm_profile_s*], [3 x %struct.cmm_profile_s*]* %rgb_profiles, i32 0, i64 %idxprom
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %arrayidx, align 8, !tbaa !1
  %15 = load i32, i32* %k, align 4, !tbaa !13
  %idxprom5 = sext i32 %15 to i64
  %16 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %result, align 8, !tbaa !1
  %cmyk_profiles = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %16, i32 0, i32 2
  %arrayidx6 = getelementptr inbounds [3 x %struct.cmm_profile_s*], [3 x %struct.cmm_profile_s*]* %cmyk_profiles, i32 0, i64 %idxprom5
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %arrayidx6, align 8, !tbaa !1
  %17 = load i32, i32* %k, align 4, !tbaa !13
  %idxprom7 = sext i32 %17 to i64
  %18 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %result, align 8, !tbaa !1
  %rgb_rend_cond = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %18, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [3 x %struct.gsicc_rendering_param_s], [3 x %struct.gsicc_rendering_param_s]* %rgb_rend_cond, i32 0, i64 %idxprom7
  %black_point_comp = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %arrayidx8, i32 0, i32 1
  store i32 8, i32* %black_point_comp, align 4, !tbaa !81
  %19 = load i32, i32* %k, align 4, !tbaa !13
  %idxprom9 = sext i32 %19 to i64
  %20 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %result, align 8, !tbaa !1
  %rgb_rend_cond10 = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %20, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [3 x %struct.gsicc_rendering_param_s], [3 x %struct.gsicc_rendering_param_s]* %rgb_rend_cond10, i32 0, i64 %idxprom9
  %rendering_intent = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %arrayidx11, i32 0, i32 0
  store i32 8, i32* %rendering_intent, align 4, !tbaa !82
  %21 = load i32, i32* %k, align 4, !tbaa !13
  %idxprom12 = sext i32 %21 to i64
  %22 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %result, align 8, !tbaa !1
  %rgb_rend_cond13 = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %22, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [3 x %struct.gsicc_rendering_param_s], [3 x %struct.gsicc_rendering_param_s]* %rgb_rend_cond13, i32 0, i64 %idxprom12
  %override_icc = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %arrayidx14, i32 0, i32 5
  store i32 0, i32* %override_icc, align 4, !tbaa !83
  %23 = load i32, i32* %k, align 4, !tbaa !13
  %idxprom15 = sext i32 %23 to i64
  %24 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %result, align 8, !tbaa !1
  %rgb_rend_cond16 = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %24, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [3 x %struct.gsicc_rendering_param_s], [3 x %struct.gsicc_rendering_param_s]* %rgb_rend_cond16, i32 0, i64 %idxprom15
  %preserve_black = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %arrayidx17, i32 0, i32 2
  store i32 8, i32* %preserve_black, align 4, !tbaa !84
  %25 = load i32, i32* %k, align 4, !tbaa !13
  %idxprom18 = sext i32 %25 to i64
  %26 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %result, align 8, !tbaa !1
  %rgb_rend_cond19 = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %26, i32 0, i32 1
  %arrayidx20 = getelementptr inbounds [3 x %struct.gsicc_rendering_param_s], [3 x %struct.gsicc_rendering_param_s]* %rgb_rend_cond19, i32 0, i64 %idxprom18
  %cmm = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %arrayidx20, i32 0, i32 4
  store i32 0, i32* %cmm, align 4, !tbaa !72
  %27 = load i32, i32* %k, align 4, !tbaa !13
  %idxprom21 = sext i32 %27 to i64
  %28 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %result, align 8, !tbaa !1
  %cmyk_rend_cond = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %28, i32 0, i32 3
  %arrayidx22 = getelementptr inbounds [3 x %struct.gsicc_rendering_param_s], [3 x %struct.gsicc_rendering_param_s]* %cmyk_rend_cond, i32 0, i64 %idxprom21
  %black_point_comp23 = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %arrayidx22, i32 0, i32 1
  store i32 8, i32* %black_point_comp23, align 4, !tbaa !81
  %29 = load i32, i32* %k, align 4, !tbaa !13
  %idxprom24 = sext i32 %29 to i64
  %30 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %result, align 8, !tbaa !1
  %cmyk_rend_cond25 = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %30, i32 0, i32 3
  %arrayidx26 = getelementptr inbounds [3 x %struct.gsicc_rendering_param_s], [3 x %struct.gsicc_rendering_param_s]* %cmyk_rend_cond25, i32 0, i64 %idxprom24
  %rendering_intent27 = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %arrayidx26, i32 0, i32 0
  store i32 8, i32* %rendering_intent27, align 4, !tbaa !82
  %31 = load i32, i32* %k, align 4, !tbaa !13
  %idxprom28 = sext i32 %31 to i64
  %32 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %result, align 8, !tbaa !1
  %cmyk_rend_cond29 = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %32, i32 0, i32 3
  %arrayidx30 = getelementptr inbounds [3 x %struct.gsicc_rendering_param_s], [3 x %struct.gsicc_rendering_param_s]* %cmyk_rend_cond29, i32 0, i64 %idxprom28
  %override_icc31 = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %arrayidx30, i32 0, i32 5
  store i32 0, i32* %override_icc31, align 4, !tbaa !83
  %33 = load i32, i32* %k, align 4, !tbaa !13
  %idxprom32 = sext i32 %33 to i64
  %34 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %result, align 8, !tbaa !1
  %cmyk_rend_cond33 = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %34, i32 0, i32 3
  %arrayidx34 = getelementptr inbounds [3 x %struct.gsicc_rendering_param_s], [3 x %struct.gsicc_rendering_param_s]* %cmyk_rend_cond33, i32 0, i64 %idxprom32
  %preserve_black35 = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %arrayidx34, i32 0, i32 2
  store i32 8, i32* %preserve_black35, align 4, !tbaa !84
  %35 = load i32, i32* %k, align 4, !tbaa !13
  %idxprom36 = sext i32 %35 to i64
  %36 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %result, align 8, !tbaa !1
  %cmyk_rend_cond37 = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %36, i32 0, i32 3
  %arrayidx38 = getelementptr inbounds [3 x %struct.gsicc_rendering_param_s], [3 x %struct.gsicc_rendering_param_s]* %cmyk_rend_cond37, i32 0, i64 %idxprom36
  %cmm39 = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %arrayidx38, i32 0, i32 4
  store i32 0, i32* %cmm39, align 4, !tbaa !72
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %37 = load i32, i32* %k, align 4, !tbaa !13
  %inc = add nsw i32 %37, 1
  store i32 %inc, i32* %k, align 4, !tbaa !13
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %38 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %result, align 8, !tbaa !1
  %color_warp_profile = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %38, i32 0, i32 4
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %color_warp_profile, align 8, !tbaa !77
  %39 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %result, align 8, !tbaa !1
  %name = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %39, i32 0, i32 7
  store i8* null, i8** %name, align 8, !tbaa !79
  %40 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %result, align 8, !tbaa !1
  %name_length = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %40, i32 0, i32 6
  store i32 0, i32* %name_length, align 4, !tbaa !78
  br label %do.body

do.body:                                          ; preds = %for.end
  %41 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %result, align 8, !tbaa !1
  %rc = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %41, i32 0, i32 8
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  store i64 1, i64* %ref_count, align 8, !tbaa !73
  %42 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %non_gc_memory40 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %42, i32 0, i32 3
  %43 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory40, align 8, !tbaa !32
  %44 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %result, align 8, !tbaa !1
  %rc41 = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %44, i32 0, i32 8
  %memory42 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc41, i32 0, i32 1
  store %struct.gs_memory_s* %43, %struct.gs_memory_s** %memory42, align 8, !tbaa !76
  %45 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %result, align 8, !tbaa !1
  %rc43 = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %45, i32 0, i32 8
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc43, i32 0, i32 2
  store void (%struct.gs_memory_s*, i8*, i8*)* @rc_free_srcgtag_profile, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !75
  br label %do.body.44

do.body.44:                                       ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %do.body.44
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.cond.45

do.cond.45:                                       ; preds = %do.end
  br label %do.end.46

do.end.46:                                        ; preds = %do.cond.45
  %46 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %result, align 8, !tbaa !1
  store %struct.cmm_srcgtag_profile_s* %46, %struct.cmm_srcgtag_profile_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.46, %if.then
  %47 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #1
  %48 = bitcast %struct.cmm_srcgtag_profile_s** %result to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
  %49 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %retval
  ret %struct.cmm_srcgtag_profile_s* %49
}

declare i32 @gs_sprintf(i8*, i8*, ...) #2

; Function Attrs: nounwind
declare i8* @strtok(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define void @gsicc_init_profile_info(%struct.cmm_profile_s* %profile) #0 {
entry:
  %profile.addr = alloca %struct.cmm_profile_s*, align 8
  %k = alloca i32, align 4
  store %struct.cmm_profile_s* %profile, %struct.cmm_profile_s** %profile.addr, align 8, !tbaa !1
  %0 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %profile.addr, align 8, !tbaa !1
  %buffer = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %1, i32 0, i32 14
  %2 = load i8*, i8** %buffer, align 8, !tbaa !24
  %3 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %profile.addr, align 8, !tbaa !1
  %buffer_size = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %3, i32 0, i32 11
  %4 = load i32, i32* %buffer_size, align 4, !tbaa !25
  %5 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %profile.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %5, i32 0, i32 21
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !42
  %call = call i8* @gsicc_get_profile_handle_buffer(i8* %2, i32 %4, %struct.gs_memory_s* %6) #5
  %7 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %profile.addr, align 8, !tbaa !1
  %profile_handle = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %7, i32 0, i32 17
  store i8* %call, i8** %profile_handle, align 8, !tbaa !26
  %8 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %profile.addr, align 8, !tbaa !1
  %buffer1 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %8, i32 0, i32 14
  %9 = load i8*, i8** %buffer1, align 8, !tbaa !24
  %10 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %profile.addr, align 8, !tbaa !1
  %hashcode = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %10, i32 0, i32 7
  %11 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %profile.addr, align 8, !tbaa !1
  %buffer_size2 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %11, i32 0, i32 11
  %12 = load i32, i32* %buffer_size2, align 4, !tbaa !25
  call void @gsicc_get_icc_buff_hash(i8* %9, i64* %hashcode, i32 %12) #5
  %13 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %profile.addr, align 8, !tbaa !1
  %hash_is_valid = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %13, i32 0, i32 8
  store i32 1, i32* %hash_is_valid, align 4, !tbaa !27
  %14 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %profile.addr, align 8, !tbaa !1
  %default_match = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %14, i32 0, i32 4
  store i32 0, i32* %default_match, align 4, !tbaa !54
  %15 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %profile.addr, align 8, !tbaa !1
  %profile_handle3 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %15, i32 0, i32 17
  %16 = load i8*, i8** %profile_handle3, align 8, !tbaa !26
  %call4 = call i32 @gscms_get_input_channel_count(i8* %16) #5
  %conv = trunc i32 %call4 to i8
  %17 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %profile.addr, align 8, !tbaa !1
  %num_comps = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %17, i32 0, i32 0
  store i8 %conv, i8* %num_comps, align 1, !tbaa !6
  %18 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %profile.addr, align 8, !tbaa !1
  %profile_handle5 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %18, i32 0, i32 17
  %19 = load i8*, i8** %profile_handle5, align 8, !tbaa !26
  %call6 = call i32 @gscms_get_output_channel_count(i8* %19) #5
  %conv7 = trunc i32 %call6 to i8
  %20 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %profile.addr, align 8, !tbaa !1
  %num_comps_out = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %20, i32 0, i32 1
  store i8 %conv7, i8* %num_comps_out, align 1, !tbaa !28
  %21 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %profile.addr, align 8, !tbaa !1
  %profile_handle8 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %21, i32 0, i32 17
  %22 = load i8*, i8** %profile_handle8, align 8, !tbaa !26
  %call9 = call i32 @gscms_get_profile_data_space(i8* %22) #5
  %23 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %profile.addr, align 8, !tbaa !1
  %data_cs = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %23, i32 0, i32 5
  store i32 %call9, i32* %data_cs, align 4, !tbaa !29
  store i32 0, i32* %k, align 4, !tbaa !13
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %24 = load i32, i32* %k, align 4, !tbaa !13
  %25 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %profile.addr, align 8, !tbaa !1
  %num_comps10 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %25, i32 0, i32 0
  %26 = load i8, i8* %num_comps10, align 1, !tbaa !6
  %conv11 = zext i8 %26 to i32
  %cmp = icmp slt i32 %24, %conv11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %27 = load i32, i32* %k, align 4, !tbaa !13
  %idxprom = sext i32 %27 to i64
  %28 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %profile.addr, align 8, !tbaa !1
  %Range = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %28, i32 0, i32 6
  %ranges = getelementptr inbounds %struct.gs_range_icc_s, %struct.gs_range_icc_s* %Range, i32 0, i32 0
  %arrayidx = getelementptr inbounds [15 x %struct.gs_range_s], [15 x %struct.gs_range_s]* %ranges, i32 0, i64 %idxprom
  %rmin = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx, i32 0, i32 0
  store float 0.000000e+00, float* %rmin, align 4, !tbaa !14
  %29 = load i32, i32* %k, align 4, !tbaa !13
  %idxprom13 = sext i32 %29 to i64
  %30 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %profile.addr, align 8, !tbaa !1
  %Range14 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %30, i32 0, i32 6
  %ranges15 = getelementptr inbounds %struct.gs_range_icc_s, %struct.gs_range_icc_s* %Range14, i32 0, i32 0
  %arrayidx16 = getelementptr inbounds [15 x %struct.gs_range_s], [15 x %struct.gs_range_s]* %ranges15, i32 0, i64 %idxprom13
  %rmax = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx16, i32 0, i32 1
  store float 1.000000e+00, float* %rmax, align 4, !tbaa !17
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %31 = load i32, i32* %k, align 4, !tbaa !13
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %k, align 4, !tbaa !13
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %32 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gsicc_check_device_link(%struct.cmm_profile_s* %icc_profile) #0 {
entry:
  %icc_profile.addr = alloca %struct.cmm_profile_s*, align 8
  %value = alloca i32, align 4
  store %struct.cmm_profile_s* %icc_profile, %struct.cmm_profile_s** %icc_profile.addr, align 8, !tbaa !1
  %0 = bitcast i32* %value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile.addr, align 8, !tbaa !1
  %profile_handle = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %1, i32 0, i32 17
  %2 = load i8*, i8** %profile_handle, align 8, !tbaa !26
  %call = call i32 @gscms_is_device_link(i8* %2) #5
  store i32 %call, i32* %value, align 4, !tbaa !13
  %3 = load i32, i32* %value, align 4, !tbaa !13
  %4 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile.addr, align 8, !tbaa !1
  %isdevlink = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %4, i32 0, i32 3
  store i32 %3, i32* %isdevlink, align 4, !tbaa !40
  %5 = load i32, i32* %value, align 4, !tbaa !13
  %6 = bitcast i32* %value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %6) #1
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define internal void @gsicc_fill_srcgtag_item(%struct.gsicc_rendering_param_s* %r_params, i32 %cmyk) #0 {
entry:
  %r_params.addr = alloca %struct.gsicc_rendering_param_s*, align 8
  %cmyk.addr = alloca i32, align 4
  %curr_ptr = alloca i8*, align 8
  %blackptcomp = alloca i32, align 4
  %or_icc = alloca i32, align 4
  %preserve_k = alloca i32, align 4
  %ri = alloca i32, align 4
  %count = alloca i32, align 4
  store %struct.gsicc_rendering_param_s* %r_params, %struct.gsicc_rendering_param_s** %r_params.addr, align 8, !tbaa !1
  store i32 %cmyk, i32* %cmyk.addr, align 4, !tbaa !13
  %0 = bitcast i8** %curr_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %blackptcomp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %or_icc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %preserve_k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %ri to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 0, i32* %count, align 4, !tbaa !13
  %call = call i8* @strtok(i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0)) #6
  store i8* %call, i8** %curr_ptr, align 8, !tbaa !1
  %6 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %call1 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.74, i32 0, i32 0), i32* %ri) #6
  store i32 %call1, i32* %count, align 4, !tbaa !13
  %7 = load i32, i32* %ri, align 4, !tbaa !13
  %or = or i32 %7, 4
  %8 = load %struct.gsicc_rendering_param_s*, %struct.gsicc_rendering_param_s** %r_params.addr, align 8, !tbaa !1
  %rendering_intent = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %8, i32 0, i32 0
  store i32 %or, i32* %rendering_intent, align 4, !tbaa !82
  %call2 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0)) #6
  store i8* %call2, i8** %curr_ptr, align 8, !tbaa !1
  %9 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %call3 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.74, i32 0, i32 0), i32* %blackptcomp) #6
  store i32 %call3, i32* %count, align 4, !tbaa !13
  %10 = load i32, i32* %blackptcomp, align 4, !tbaa !13
  %or4 = or i32 %10, 4
  %11 = load %struct.gsicc_rendering_param_s*, %struct.gsicc_rendering_param_s** %r_params.addr, align 8, !tbaa !1
  %black_point_comp = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %11, i32 0, i32 1
  store i32 %or4, i32* %black_point_comp, align 4, !tbaa !81
  %call5 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0)) #6
  store i8* %call5, i8** %curr_ptr, align 8, !tbaa !1
  %12 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %call6 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.74, i32 0, i32 0), i32* %or_icc) #6
  store i32 %call6, i32* %count, align 4, !tbaa !13
  %13 = load i32, i32* %or_icc, align 4, !tbaa !13
  %14 = load %struct.gsicc_rendering_param_s*, %struct.gsicc_rendering_param_s** %r_params.addr, align 8, !tbaa !1
  %override_icc = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %14, i32 0, i32 5
  store i32 %13, i32* %override_icc, align 4, !tbaa !83
  %15 = load i32, i32* %cmyk.addr, align 4, !tbaa !13
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call7 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0)) #6
  store i8* %call7, i8** %curr_ptr, align 8, !tbaa !1
  %16 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %call8 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.74, i32 0, i32 0), i32* %preserve_k) #6
  store i32 %call8, i32* %count, align 4, !tbaa !13
  %17 = load i32, i32* %preserve_k, align 4, !tbaa !13
  %or9 = or i32 %17, 4
  %18 = load %struct.gsicc_rendering_param_s*, %struct.gsicc_rendering_param_s** %r_params.addr, align 8, !tbaa !1
  %preserve_black = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %18, i32 0, i32 2
  store i32 %or9, i32* %preserve_black, align 4, !tbaa !84
  br label %if.end

if.else:                                          ; preds = %entry
  %19 = load %struct.gsicc_rendering_param_s*, %struct.gsicc_rendering_param_s** %r_params.addr, align 8, !tbaa !1
  %preserve_black10 = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %19, i32 0, i32 2
  store i32 8, i32* %preserve_black10, align 4, !tbaa !84
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %20 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
  %21 = bitcast i32* %ri to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  %22 = bitcast i32* %preserve_k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #1
  %23 = bitcast i32* %or_icc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #1
  %24 = bitcast i32* %blackptcomp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  %25 = bitcast i8** %curr_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  ret void
}

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #4

; Function Attrs: nounwind uwtable
define i32 @gsicc_set_profile(%struct.gsicc_manager_s* %icc_manager, i8* %pname, i32 %namelen, i32 %defaulttype) #0 {
entry:
  %retval = alloca i32, align 4
  %icc_manager.addr = alloca %struct.gsicc_manager_s*, align 8
  %pname.addr = alloca i8*, align 8
  %namelen.addr = alloca i32, align 4
  %defaulttype.addr = alloca i32, align 4
  %icc_profile = alloca %struct.cmm_profile_s*, align 8
  %manager_default_profile = alloca %struct.cmm_profile_s**, align 8
  %str = alloca %struct.stream_s*, align 8
  %mem_gc = alloca %struct.gs_memory_s*, align 8
  %code = alloca i32, align 4
  %k = alloca i32, align 4
  %num_comps = alloca i32, align 4
  %default_space = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %current_entry = alloca %struct.gsicc_devicen_entry_s*, align 8
  %nameptr = alloca i8*, align 8
  store %struct.gsicc_manager_s* %icc_manager, %struct.gsicc_manager_s** %icc_manager.addr, align 8, !tbaa !1
  store i8* %pname, i8** %pname.addr, align 8, !tbaa !1
  store i32 %namelen, i32* %namelen.addr, align 4, !tbaa !13
  store i32 %defaulttype, i32* %defaulttype.addr, align 4, !tbaa !5
  %0 = bitcast %struct.cmm_profile_s** %icc_profile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.cmm_profile_s*** %manager_default_profile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store %struct.cmm_profile_s** null, %struct.cmm_profile_s*** %manager_default_profile, align 8, !tbaa !1
  %2 = bitcast %struct.stream_s** %str to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast %struct.gs_memory_s** %mem_gc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %4, i32 0, i32 10
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !50
  store %struct.gs_memory_s* %5, %struct.gs_memory_s** %mem_gc, align 8, !tbaa !1
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %num_comps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  store i32 0, i32* %num_comps, align 4, !tbaa !13
  %9 = bitcast i32* %default_space to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  store i32 0, i32* %default_space, align 4, !tbaa !5
  %10 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager.addr, align 8, !tbaa !1
  %smask_profiles = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %10, i32 0, i32 7
  %11 = load %struct.gsicc_smask_s*, %struct.gsicc_smask_s** %smask_profiles, align 8, !tbaa !53
  %cmp = icmp ne %struct.gsicc_smask_s* %11, null
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %12 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager.addr, align 8, !tbaa !1
  %smask_profiles1 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %12, i32 0, i32 7
  %13 = load %struct.gsicc_smask_s*, %struct.gsicc_smask_s** %smask_profiles1, align 8, !tbaa !53
  %swapped = getelementptr inbounds %struct.gsicc_smask_s, %struct.gsicc_smask_s* %13, i32 0, i32 4
  %14 = load i32, i32* %swapped, align 4, !tbaa !49
  %cmp2 = icmp eq i32 %14, 1
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.148

if.else:                                          ; preds = %land.lhs.true, %entry
  %15 = load i32, i32* %defaulttype.addr, align 4, !tbaa !5
  switch i32 %15, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.3
    i32 3, label %sw.bb.4
    i32 4, label %sw.bb.5
    i32 5, label %sw.bb.6
    i32 6, label %sw.bb.7
    i32 0, label %sw.bb.8
  ]

sw.bb:                                            ; preds = %if.else
  %16 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager.addr, align 8, !tbaa !1
  %default_gray = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %16, i32 0, i32 1
  store %struct.cmm_profile_s** %default_gray, %struct.cmm_profile_s*** %manager_default_profile, align 8, !tbaa !1
  store i32 1, i32* %default_space, align 4, !tbaa !5
  store i32 1, i32* %num_comps, align 4, !tbaa !13
  br label %sw.epilog

sw.bb.3:                                          ; preds = %if.else
  %17 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager.addr, align 8, !tbaa !1
  %default_rgb = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %17, i32 0, i32 2
  store %struct.cmm_profile_s** %default_rgb, %struct.cmm_profile_s*** %manager_default_profile, align 8, !tbaa !1
  store i32 2, i32* %default_space, align 4, !tbaa !5
  store i32 3, i32* %num_comps, align 4, !tbaa !13
  br label %sw.epilog

sw.bb.4:                                          ; preds = %if.else
  %18 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager.addr, align 8, !tbaa !1
  %default_cmyk = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %18, i32 0, i32 3
  store %struct.cmm_profile_s** %default_cmyk, %struct.cmm_profile_s*** %manager_default_profile, align 8, !tbaa !1
  store i32 3, i32* %default_space, align 4, !tbaa !5
  store i32 4, i32* %num_comps, align 4, !tbaa !13
  br label %sw.epilog

sw.bb.5:                                          ; preds = %if.else
  %19 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager.addr, align 8, !tbaa !1
  %device_named = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %19, i32 0, i32 0
  store %struct.cmm_profile_s** %device_named, %struct.cmm_profile_s*** %manager_default_profile, align 8, !tbaa !1
  store i32 7, i32* %default_space, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.6:                                          ; preds = %if.else
  %20 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager.addr, align 8, !tbaa !1
  %lab_profile = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %20, i32 0, i32 4
  store %struct.cmm_profile_s** %lab_profile, %struct.cmm_profile_s*** %manager_default_profile, align 8, !tbaa !1
  store i32 3, i32* %num_comps, align 4, !tbaa !13
  store i32 6, i32* %default_space, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.7:                                          ; preds = %if.else
  store %struct.cmm_profile_s** null, %struct.cmm_profile_s*** %manager_default_profile, align 8, !tbaa !1
  store i32 4, i32* %default_space, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.8:                                          ; preds = %if.else
  br label %sw.default

sw.default:                                       ; preds = %if.else, %sw.bb.8
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.148

sw.epilog:                                        ; preds = %sw.bb.7, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb
  br label %if.end

if.end:                                           ; preds = %sw.epilog
  %21 = load i32, i32* %defaulttype.addr, align 4, !tbaa !5
  %cmp9 = icmp ne i32 %21, 6
  br i1 %cmp9, label %land.lhs.true.10, label %if.end.54

land.lhs.true.10:                                 ; preds = %if.end
  %22 = load %struct.cmm_profile_s**, %struct.cmm_profile_s*** %manager_default_profile, align 8, !tbaa !1
  %23 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %22, align 8, !tbaa !1
  %cmp11 = icmp ne %struct.cmm_profile_s* %23, null
  br i1 %cmp11, label %if.then.12, label %if.end.54

if.then.12:                                       ; preds = %land.lhs.true.10
  %24 = load %struct.cmm_profile_s**, %struct.cmm_profile_s*** %manager_default_profile, align 8, !tbaa !1
  %25 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %24, align 8, !tbaa !1
  store %struct.cmm_profile_s* %25, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !1
  %26 = load i32, i32* %namelen.addr, align 4, !tbaa !13
  %27 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !1
  %name_length = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %27, i32 0, i32 19
  %28 = load i32, i32* %name_length, align 4, !tbaa !34
  %cmp13 = icmp eq i32 %26, %28
  br i1 %cmp13, label %if.then.14, label %if.end.19

if.then.14:                                       ; preds = %if.then.12
  %29 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %30 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !1
  %name = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %30, i32 0, i32 20
  %31 = load i8*, i8** %name, align 8, !tbaa !33
  %32 = load i32, i32* %namelen.addr, align 4, !tbaa !13
  %conv = sext i32 %32 to i64
  %call = call i32 @memcmp(i8* %29, i8* %31, i64 %conv) #7
  %cmp15 = icmp eq i32 %call, 0
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.then.14
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.148

if.end.18:                                        ; preds = %if.then.14
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.then.12
  %33 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !1
  %name20 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %33, i32 0, i32 20
  %34 = load i8*, i8** %name20, align 8, !tbaa !33
  %35 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !1
  %name21 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %35, i32 0, i32 20
  %36 = load i8*, i8** %name21, align 8, !tbaa !33
  %call22 = call i64 @strlen(i8* %36) #7
  %call23 = call i32 @strncmp(i8* %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), i64 %call22) #7
  %cmp24 = icmp eq i32 %call23, 0
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.19
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.148

if.end.27:                                        ; preds = %if.end.19
  br label %do.body

do.body:                                          ; preds = %if.end.27
  %37 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !1
  %tobool = icmp ne %struct.cmm_profile_s* %37, null
  br i1 %tobool, label %if.then.28, label %if.end.51

if.then.28:                                       ; preds = %do.body
  br label %do.body.29

do.body.29:                                       ; preds = %if.then.28
  br label %do.body.30

do.body.30:                                       ; preds = %do.body.29
  br label %do.cond

do.cond:                                          ; preds = %do.body.30
  br label %do.end

do.end:                                           ; preds = %do.cond
  %38 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !1
  %rc = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %38, i32 0, i32 18
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %39 = load i64, i64* %ref_count, align 8, !tbaa !35
  %add = add nsw i64 %39, -1
  store i64 %add, i64* %ref_count, align 8, !tbaa !35
  br label %do.cond.31

do.cond.31:                                       ; preds = %do.end
  br label %do.end.32

do.end.32:                                        ; preds = %do.cond.31
  %40 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !1
  %rc33 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %40, i32 0, i32 18
  %ref_count34 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc33, i32 0, i32 0
  %41 = load i64, i64* %ref_count34, align 8, !tbaa !35
  %tobool35 = icmp ne i64 %41, 0
  br i1 %tobool35, label %if.else.46, label %if.then.36

if.then.36:                                       ; preds = %do.end.32
  br label %do.body.37

do.body.37:                                       ; preds = %if.then.36
  br label %do.body.38

do.body.38:                                       ; preds = %do.body.37
  br label %do.cond.39

do.cond.39:                                       ; preds = %do.body.38
  br label %do.end.40

do.end.40:                                        ; preds = %do.cond.39
  %42 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !1
  %rc41 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %42, i32 0, i32 18
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc41, i32 0, i32 2
  %43 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !37
  %44 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !1
  %rc42 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %44, i32 0, i32 18
  %memory43 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc42, i32 0, i32 1
  %45 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory43, align 8, !tbaa !36
  %46 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !1
  %47 = bitcast %struct.cmm_profile_s* %46 to i8*
  call void %43(%struct.gs_memory_s* %45, i8* %47, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i32 0, i32 0)) #5
  br label %do.cond.44

do.cond.44:                                       ; preds = %do.end.40
  br label %do.end.45

do.end.45:                                        ; preds = %do.cond.44
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !1
  br label %if.end.50

if.else.46:                                       ; preds = %do.end.32
  br label %do.body.47

do.body.47:                                       ; preds = %if.else.46
  br label %do.cond.48

do.cond.48:                                       ; preds = %do.body.47
  br label %do.end.49

do.end.49:                                        ; preds = %do.cond.48
  br label %if.end.50

if.end.50:                                        ; preds = %do.end.49, %do.end.45
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %do.body
  br label %do.cond.52

do.cond.52:                                       ; preds = %if.end.51
  br label %do.end.53

do.end.53:                                        ; preds = %do.cond.52
  br label %if.end.54

if.end.54:                                        ; preds = %do.end.53, %land.lhs.true.10, %if.end
  %48 = load i32, i32* %defaulttype.addr, align 4, !tbaa !5
  %cmp55 = icmp eq i32 %48, 6
  br i1 %cmp55, label %if.then.57, label %if.end.90

if.then.57:                                       ; preds = %if.end.54
  %49 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager.addr, align 8, !tbaa !1
  %device_n = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %49, i32 0, i32 6
  %50 = load %struct.gsicc_devicen_s*, %struct.gsicc_devicen_s** %device_n, align 8, !tbaa !57
  %cmp58 = icmp ne %struct.gsicc_devicen_s* %50, null
  br i1 %cmp58, label %if.then.60, label %if.end.82

if.then.60:                                       ; preds = %if.then.57
  %51 = bitcast %struct.gsicc_devicen_entry_s** %current_entry to i8*
  call void @llvm.lifetime.start(i64 8, i8* %51) #1
  %52 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager.addr, align 8, !tbaa !1
  %device_n61 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %52, i32 0, i32 6
  %53 = load %struct.gsicc_devicen_s*, %struct.gsicc_devicen_s** %device_n61, align 8, !tbaa !57
  %head = getelementptr inbounds %struct.gsicc_devicen_s, %struct.gsicc_devicen_s* %53, i32 0, i32 0
  %54 = load %struct.gsicc_devicen_entry_s*, %struct.gsicc_devicen_entry_s** %head, align 8, !tbaa !58
  store %struct.gsicc_devicen_entry_s* %54, %struct.gsicc_devicen_entry_s** %current_entry, align 8, !tbaa !1
  store i32 0, i32* %k, align 4, !tbaa !13
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.60
  %55 = load i32, i32* %k, align 4, !tbaa !13
  %56 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager.addr, align 8, !tbaa !1
  %device_n62 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %56, i32 0, i32 6
  %57 = load %struct.gsicc_devicen_s*, %struct.gsicc_devicen_s** %device_n62, align 8, !tbaa !57
  %count = getelementptr inbounds %struct.gsicc_devicen_s, %struct.gsicc_devicen_s* %57, i32 0, i32 2
  %58 = load i32, i32* %count, align 4, !tbaa !60
  %cmp63 = icmp slt i32 %55, %58
  br i1 %cmp63, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %59 = load %struct.gsicc_devicen_entry_s*, %struct.gsicc_devicen_entry_s** %current_entry, align 8, !tbaa !1
  %iccprofile = getelementptr inbounds %struct.gsicc_devicen_entry_s, %struct.gsicc_devicen_entry_s* %59, i32 0, i32 0
  %60 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %iccprofile, align 8, !tbaa !61
  %cmp65 = icmp ne %struct.cmm_profile_s* %60, null
  br i1 %cmp65, label %if.then.67, label %if.end.81

if.then.67:                                       ; preds = %for.body
  %61 = load %struct.gsicc_devicen_entry_s*, %struct.gsicc_devicen_entry_s** %current_entry, align 8, !tbaa !1
  %iccprofile68 = getelementptr inbounds %struct.gsicc_devicen_entry_s, %struct.gsicc_devicen_entry_s* %61, i32 0, i32 0
  %62 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %iccprofile68, align 8, !tbaa !61
  store %struct.cmm_profile_s* %62, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !1
  %63 = load i32, i32* %namelen.addr, align 4, !tbaa !13
  %64 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !1
  %name_length69 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %64, i32 0, i32 19
  %65 = load i32, i32* %name_length69, align 4, !tbaa !34
  %cmp70 = icmp eq i32 %63, %65
  br i1 %cmp70, label %if.then.72, label %if.end.80

if.then.72:                                       ; preds = %if.then.67
  %66 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %67 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !1
  %name73 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %67, i32 0, i32 20
  %68 = load i8*, i8** %name73, align 8, !tbaa !33
  %69 = load i32, i32* %namelen.addr, align 4, !tbaa !13
  %conv74 = sext i32 %69 to i64
  %call75 = call i32 @memcmp(i8* %66, i8* %68, i64 %conv74) #7
  %cmp76 = icmp eq i32 %call75, 0
  br i1 %cmp76, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %if.then.72
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.79:                                        ; preds = %if.then.72
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %if.then.67
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80, %for.body
  %70 = load %struct.gsicc_devicen_entry_s*, %struct.gsicc_devicen_entry_s** %current_entry, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.gsicc_devicen_entry_s, %struct.gsicc_devicen_entry_s* %70, i32 0, i32 1
  %71 = load %struct.gsicc_devicen_entry_s*, %struct.gsicc_devicen_entry_s** %next, align 8, !tbaa !85
  store %struct.gsicc_devicen_entry_s* %71, %struct.gsicc_devicen_entry_s** %current_entry, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %if.end.81
  %72 = load i32, i32* %k, align 4, !tbaa !13
  %inc = add nsw i32 %72, 1
  store i32 %inc, i32* %k, align 4, !tbaa !13
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.78
  %73 = bitcast %struct.gsicc_devicen_entry_s** %current_entry to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.148 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.82

if.end.82:                                        ; preds = %cleanup.cont, %if.then.57
  %74 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager.addr, align 8, !tbaa !1
  %call83 = call i32 @gsicc_new_devicen(%struct.gsicc_manager_s* %74) #5
  store i32 %call83, i32* %code, align 4, !tbaa !13
  %75 = load i32, i32* %code, align 4, !tbaa !13
  %cmp84 = icmp slt i32 %75, 0
  br i1 %cmp84, label %if.then.86, label %if.end.87

if.then.86:                                       ; preds = %if.end.82
  %76 = load i32, i32* %code, align 4, !tbaa !13
  store i32 %76, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.148

if.end.87:                                        ; preds = %if.end.82
  %77 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager.addr, align 8, !tbaa !1
  %device_n88 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %77, i32 0, i32 6
  %78 = load %struct.gsicc_devicen_s*, %struct.gsicc_devicen_s** %device_n88, align 8, !tbaa !57
  %final = getelementptr inbounds %struct.gsicc_devicen_s, %struct.gsicc_devicen_s* %78, i32 0, i32 1
  %79 = load %struct.gsicc_devicen_entry_s*, %struct.gsicc_devicen_entry_s** %final, align 8, !tbaa !86
  %iccprofile89 = getelementptr inbounds %struct.gsicc_devicen_entry_s, %struct.gsicc_devicen_entry_s* %79, i32 0, i32 0
  store %struct.cmm_profile_s** %iccprofile89, %struct.cmm_profile_s*** %manager_default_profile, align 8, !tbaa !1
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.87, %if.end.54
  %80 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %81 = load i32, i32* %namelen.addr, align 4, !tbaa !13
  %82 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem_gc, align 8, !tbaa !1
  %83 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem_gc, align 8, !tbaa !1
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %83, i32 0, i32 2
  %84 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !18
  %profiledir = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %84, i32 0, i32 24
  %85 = load i8*, i8** %profiledir, align 8, !tbaa !21
  %86 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem_gc, align 8, !tbaa !1
  %gs_lib_ctx91 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %86, i32 0, i32 2
  %87 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx91, align 8, !tbaa !18
  %profiledir_len = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %87, i32 0, i32 25
  %88 = load i32, i32* %profiledir_len, align 4, !tbaa !23
  %call92 = call i32 @gsicc_open_search(i8* %80, i32 %81, %struct.gs_memory_s* %82, i8* %85, i32 %88, %struct.stream_s** %str) #5
  store i32 %call92, i32* %code, align 4, !tbaa !13
  %89 = load i32, i32* %code, align 4, !tbaa !13
  %cmp93 = icmp slt i32 %89, 0
  br i1 %cmp93, label %if.then.95, label %if.end.96

if.then.95:                                       ; preds = %if.end.90
  %90 = load i32, i32* %code, align 4, !tbaa !13
  store i32 %90, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.148

if.end.96:                                        ; preds = %if.end.90
  %91 = load %struct.stream_s*, %struct.stream_s** %str, align 8, !tbaa !1
  %cmp97 = icmp ne %struct.stream_s* %91, null
  br i1 %cmp97, label %if.then.99, label %if.end.147

if.then.99:                                       ; preds = %if.end.96
  %92 = load %struct.stream_s*, %struct.stream_s** %str, align 8, !tbaa !1
  %93 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem_gc, align 8, !tbaa !1
  %94 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %95 = load i32, i32* %namelen.addr, align 4, !tbaa !13
  %call100 = call %struct.cmm_profile_s* @gsicc_profile_new(%struct.stream_s* %92, %struct.gs_memory_s* %93, i8* %94, i32 %95) #5
  store %struct.cmm_profile_s* %call100, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !1
  %96 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !1
  %cmp101 = icmp eq %struct.cmm_profile_s* %96, null
  br i1 %cmp101, label %land.lhs.true.103, label %if.end.128

land.lhs.true.103:                                ; preds = %if.then.99
  %97 = load i32, i32* %defaulttype.addr, align 4, !tbaa !5
  %cmp104 = icmp eq i32 %97, 4
  br i1 %cmp104, label %if.then.106, label %if.end.128

if.then.106:                                      ; preds = %land.lhs.true.103
  %98 = bitcast i8** %nameptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %98) #1
  %99 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem_gc, align 8, !tbaa !1
  %call107 = call %struct.cmm_profile_s* @gsicc_profile_new(%struct.stream_s* null, %struct.gs_memory_s* %99, i8* null, i32 0) #5
  store %struct.cmm_profile_s* %call107, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !1
  %100 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !1
  %data_cs = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %100, i32 0, i32 5
  store i32 7, i32* %data_cs, align 4, !tbaa !29
  %101 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !1
  %102 = load %struct.stream_s*, %struct.stream_s** %str, align 8, !tbaa !1
  %103 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem_gc, align 8, !tbaa !1
  %call108 = call i32 @gsicc_load_namedcolor_buffer(%struct.cmm_profile_s* %101, %struct.stream_s* %102, %struct.gs_memory_s* %103) #5
  store i32 %call108, i32* %code, align 4, !tbaa !13
  %104 = load i32, i32* %code, align 4, !tbaa !13
  %cmp109 = icmp slt i32 %104, 0
  br i1 %cmp109, label %if.then.111, label %if.end.113

if.then.111:                                      ; preds = %if.then.106
  %105 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %call112 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 831, i32 0, i32 -1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.26, i32 0, i32 0), i8* %105) #5
  store i32 %call112, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.127

if.end.113:                                       ; preds = %if.then.106
  %106 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !1
  %107 = load %struct.cmm_profile_s**, %struct.cmm_profile_s*** %manager_default_profile, align 8, !tbaa !1
  store %struct.cmm_profile_s* %106, %struct.cmm_profile_s** %107, align 8, !tbaa !1
  %108 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !1
  %memory114 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %108, i32 0, i32 21
  %109 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory114, align 8, !tbaa !42
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %109, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %110 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !30
  %111 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !1
  %memory115 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %111, i32 0, i32 21
  %112 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory115, align 8, !tbaa !42
  %113 = load i32, i32* %namelen.addr, align 4, !tbaa !13
  %add116 = add nsw i32 %113, 1
  %call117 = call i8* %110(%struct.gs_memory_s* %112, i32 %add116, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i32 0, i32 0)) #5
  store i8* %call117, i8** %nameptr, align 8, !tbaa !1
  %114 = load i8*, i8** %nameptr, align 8, !tbaa !1
  %cmp118 = icmp eq i8* %114, null
  br i1 %cmp118, label %if.then.120, label %if.end.122

if.then.120:                                      ; preds = %if.end.113
  %call121 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 836, i32 0, i32 -25, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.27, i32 0, i32 0)) #5
  store i32 %call121, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.127

if.end.122:                                       ; preds = %if.end.113
  %115 = load i8*, i8** %nameptr, align 8, !tbaa !1
  %116 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %117 = load i32, i32* %namelen.addr, align 4, !tbaa !13
  %conv123 = sext i32 %117 to i64
  %call124 = call i8* @memcpy(i8* %115, i8* %116, i64 %conv123) #6
  %118 = load i32, i32* %namelen.addr, align 4, !tbaa !13
  %idxprom = sext i32 %118 to i64
  %119 = load i8*, i8** %nameptr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %119, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1, !tbaa !5
  %120 = load i8*, i8** %nameptr, align 8, !tbaa !1
  %121 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !1
  %name125 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %121, i32 0, i32 20
  store i8* %120, i8** %name125, align 8, !tbaa !33
  %122 = load i32, i32* %namelen.addr, align 4, !tbaa !13
  %123 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !1
  %name_length126 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %123, i32 0, i32 19
  store i32 %122, i32* %name_length126, align 4, !tbaa !34
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.127

cleanup.127:                                      ; preds = %if.end.122, %if.then.120, %if.then.111
  %124 = bitcast i8** %nameptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %124) #1
  br label %cleanup.148

if.end.128:                                       ; preds = %land.lhs.true.103, %if.then.99
  %125 = load %struct.stream_s*, %struct.stream_s** %str, align 8, !tbaa !1
  %call129 = call i32 @sfclose(%struct.stream_s* %125) #5
  store i32 %call129, i32* %code, align 4, !tbaa !13
  %126 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !1
  %cmp130 = icmp eq %struct.cmm_profile_s* %126, null
  br i1 %cmp130, label %if.then.132, label %if.end.134

if.then.132:                                      ; preds = %if.end.128
  %127 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %call133 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 845, i32 0, i32 -1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.26, i32 0, i32 0), i8* %127) #5
  store i32 %call133, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.148

if.end.134:                                       ; preds = %if.end.128
  %128 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !1
  %129 = load %struct.cmm_profile_s**, %struct.cmm_profile_s*** %manager_default_profile, align 8, !tbaa !1
  store %struct.cmm_profile_s* %128, %struct.cmm_profile_s** %129, align 8, !tbaa !1
  %130 = load i32, i32* %defaulttype.addr, align 4, !tbaa !5
  %131 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !1
  %default_match = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %131, i32 0, i32 4
  store i32 %130, i32* %default_match, align 4, !tbaa !54
  %132 = load i32, i32* %defaulttype.addr, align 4, !tbaa !5
  %cmp135 = icmp eq i32 %132, 5
  br i1 %cmp135, label %if.then.137, label %if.end.138

if.then.137:                                      ; preds = %if.end.134
  %133 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !1
  %islab = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %133, i32 0, i32 2
  store i32 1, i32* %islab, align 4, !tbaa !87
  br label %if.end.138

if.end.138:                                       ; preds = %if.then.137, %if.end.134
  %134 = load i32, i32* %defaulttype.addr, align 4, !tbaa !5
  %cmp139 = icmp eq i32 %134, 6
  br i1 %cmp139, label %if.then.141, label %if.end.143

if.then.141:                                      ; preds = %if.end.138
  %135 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !1
  %136 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager.addr, align 8, !tbaa !1
  %memory142 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %136, i32 0, i32 10
  %137 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory142, align 8, !tbaa !50
  call void @gsicc_get_devicen_names(%struct.cmm_profile_s* %135, %struct.gs_memory_s* %137) #5
  br label %if.end.143

if.end.143:                                       ; preds = %if.then.141, %if.end.138
  %138 = load i32, i32* %num_comps, align 4, !tbaa !13
  %conv144 = trunc i32 %138 to i8
  %139 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !1
  %num_comps145 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %139, i32 0, i32 0
  store i8 %conv144, i8* %num_comps145, align 1, !tbaa !6
  %140 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !1
  %num_comps_out = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %140, i32 0, i32 1
  store i8 3, i8* %num_comps_out, align 1, !tbaa !28
  call void @gscms_set_icc_range(%struct.cmm_profile_s** %icc_profile) #5
  %141 = load i32, i32* %default_space, align 4, !tbaa !5
  %142 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !1
  %data_cs146 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %142, i32 0, i32 5
  store i32 %141, i32* %data_cs146, align 4, !tbaa !29
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.148

if.end.147:                                       ; preds = %if.end.96
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.148

cleanup.148:                                      ; preds = %if.end.147, %if.end.143, %if.then.132, %cleanup.127, %if.then.95, %if.then.86, %cleanup, %if.then.26, %if.then.17, %sw.default, %if.then
  %143 = bitcast i32* %default_space to i8*
  call void @llvm.lifetime.end(i64 4, i8* %143) #1
  %144 = bitcast i32* %num_comps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %144) #1
  %145 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %145) #1
  %146 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %146) #1
  %147 = bitcast %struct.gs_memory_s** %mem_gc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %147) #1
  %148 = bitcast %struct.stream_s** %str to i8*
  call void @llvm.lifetime.end(i64 8, i8* %148) #1
  %149 = bitcast %struct.cmm_profile_s*** %manager_default_profile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %149) #1
  %150 = bitcast %struct.cmm_profile_s** %icc_profile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %150) #1
  %151 = load i32, i32* %retval
  ret i32 %151
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define internal i32 @gsicc_new_devicen(%struct.gsicc_manager_s* %icc_manager) #0 {
entry:
  %retval = alloca i32, align 4
  %icc_manager.addr = alloca %struct.gsicc_manager_s*, align 8
  %device_n_entry = alloca %struct.gsicc_devicen_entry_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gsicc_manager_s* %icc_manager, %struct.gsicc_manager_s** %icc_manager.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gsicc_devicen_entry_s** %device_n_entry to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %1, i32 0, i32 10
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !50
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %2, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %3 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !88
  %4 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %4, i32 0, i32 10
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !50
  %call = call i8* %3(%struct.gs_memory_s* %5, %struct.gs_memory_struct_type_s* @st_gsicc_devicen_entry, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.75, i32 0, i32 0)) #5
  %6 = bitcast i8* %call to %struct.gsicc_devicen_entry_s*
  store %struct.gsicc_devicen_entry_s* %6, %struct.gsicc_devicen_entry_s** %device_n_entry, align 8, !tbaa !1
  %7 = load %struct.gsicc_devicen_entry_s*, %struct.gsicc_devicen_entry_s** %device_n_entry, align 8, !tbaa !1
  %cmp = icmp eq %struct.gsicc_devicen_entry_s* %7, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 233, i32 0, i32 -25, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.76, i32 0, i32 0)) #5
  store i32 %call2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct.gsicc_devicen_entry_s*, %struct.gsicc_devicen_entry_s** %device_n_entry, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.gsicc_devicen_entry_s, %struct.gsicc_devicen_entry_s* %8, i32 0, i32 1
  store %struct.gsicc_devicen_entry_s* null, %struct.gsicc_devicen_entry_s** %next, align 8, !tbaa !85
  %9 = load %struct.gsicc_devicen_entry_s*, %struct.gsicc_devicen_entry_s** %device_n_entry, align 8, !tbaa !1
  %iccprofile = getelementptr inbounds %struct.gsicc_devicen_entry_s, %struct.gsicc_devicen_entry_s* %9, i32 0, i32 0
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %iccprofile, align 8, !tbaa !61
  %10 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager.addr, align 8, !tbaa !1
  %device_n = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %10, i32 0, i32 6
  %11 = load %struct.gsicc_devicen_s*, %struct.gsicc_devicen_s** %device_n, align 8, !tbaa !57
  %cmp3 = icmp eq %struct.gsicc_devicen_s* %11, null
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end
  %12 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager.addr, align 8, !tbaa !1
  %memory5 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %12, i32 0, i32 10
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory5, align 8, !tbaa !50
  %procs6 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %13, i32 0, i32 1
  %alloc_struct7 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs6, i32 0, i32 8
  %14 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct7, align 8, !tbaa !88
  %15 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager.addr, align 8, !tbaa !1
  %memory8 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %15, i32 0, i32 10
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory8, align 8, !tbaa !50
  %call9 = call i8* %14(%struct.gs_memory_s* %16, %struct.gs_memory_struct_type_s* @st_gsicc_devicen, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.75, i32 0, i32 0)) #5
  %17 = bitcast i8* %call9 to %struct.gsicc_devicen_s*
  %18 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager.addr, align 8, !tbaa !1
  %device_n10 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %18, i32 0, i32 6
  store %struct.gsicc_devicen_s* %17, %struct.gsicc_devicen_s** %device_n10, align 8, !tbaa !57
  %19 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager.addr, align 8, !tbaa !1
  %device_n11 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %19, i32 0, i32 6
  %20 = load %struct.gsicc_devicen_s*, %struct.gsicc_devicen_s** %device_n11, align 8, !tbaa !57
  %cmp12 = icmp eq %struct.gsicc_devicen_s* %20, null
  br i1 %cmp12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.then.4
  %call14 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 243, i32 0, i32 -25, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.76, i32 0, i32 0)) #5
  store i32 %call14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %if.then.4
  %21 = load %struct.gsicc_devicen_entry_s*, %struct.gsicc_devicen_entry_s** %device_n_entry, align 8, !tbaa !1
  %22 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager.addr, align 8, !tbaa !1
  %device_n16 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %22, i32 0, i32 6
  %23 = load %struct.gsicc_devicen_s*, %struct.gsicc_devicen_s** %device_n16, align 8, !tbaa !57
  %head = getelementptr inbounds %struct.gsicc_devicen_s, %struct.gsicc_devicen_s* %23, i32 0, i32 0
  store %struct.gsicc_devicen_entry_s* %21, %struct.gsicc_devicen_entry_s** %head, align 8, !tbaa !58
  %24 = load %struct.gsicc_devicen_entry_s*, %struct.gsicc_devicen_entry_s** %device_n_entry, align 8, !tbaa !1
  %25 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager.addr, align 8, !tbaa !1
  %device_n17 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %25, i32 0, i32 6
  %26 = load %struct.gsicc_devicen_s*, %struct.gsicc_devicen_s** %device_n17, align 8, !tbaa !57
  %final = getelementptr inbounds %struct.gsicc_devicen_s, %struct.gsicc_devicen_s* %26, i32 0, i32 1
  store %struct.gsicc_devicen_entry_s* %24, %struct.gsicc_devicen_entry_s** %final, align 8, !tbaa !86
  %27 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager.addr, align 8, !tbaa !1
  %device_n18 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %27, i32 0, i32 6
  %28 = load %struct.gsicc_devicen_s*, %struct.gsicc_devicen_s** %device_n18, align 8, !tbaa !57
  %count = getelementptr inbounds %struct.gsicc_devicen_s, %struct.gsicc_devicen_s* %28, i32 0, i32 2
  store i32 1, i32* %count, align 4, !tbaa !60
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %if.end
  %29 = load %struct.gsicc_devicen_entry_s*, %struct.gsicc_devicen_entry_s** %device_n_entry, align 8, !tbaa !1
  %30 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager.addr, align 8, !tbaa !1
  %device_n19 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %30, i32 0, i32 6
  %31 = load %struct.gsicc_devicen_s*, %struct.gsicc_devicen_s** %device_n19, align 8, !tbaa !57
  %final20 = getelementptr inbounds %struct.gsicc_devicen_s, %struct.gsicc_devicen_s* %31, i32 0, i32 1
  %32 = load %struct.gsicc_devicen_entry_s*, %struct.gsicc_devicen_entry_s** %final20, align 8, !tbaa !86
  %next21 = getelementptr inbounds %struct.gsicc_devicen_entry_s, %struct.gsicc_devicen_entry_s* %32, i32 0, i32 1
  store %struct.gsicc_devicen_entry_s* %29, %struct.gsicc_devicen_entry_s** %next21, align 8, !tbaa !85
  %33 = load %struct.gsicc_devicen_entry_s*, %struct.gsicc_devicen_entry_s** %device_n_entry, align 8, !tbaa !1
  %34 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager.addr, align 8, !tbaa !1
  %device_n22 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %34, i32 0, i32 6
  %35 = load %struct.gsicc_devicen_s*, %struct.gsicc_devicen_s** %device_n22, align 8, !tbaa !57
  %final23 = getelementptr inbounds %struct.gsicc_devicen_s, %struct.gsicc_devicen_s* %35, i32 0, i32 1
  store %struct.gsicc_devicen_entry_s* %33, %struct.gsicc_devicen_entry_s** %final23, align 8, !tbaa !86
  %36 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager.addr, align 8, !tbaa !1
  %device_n24 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %36, i32 0, i32 6
  %37 = load %struct.gsicc_devicen_s*, %struct.gsicc_devicen_s** %device_n24, align 8, !tbaa !57
  %count25 = getelementptr inbounds %struct.gsicc_devicen_s, %struct.gsicc_devicen_s* %37, i32 0, i32 2
  %38 = load i32, i32* %count25, align 4, !tbaa !60
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %count25, align 4, !tbaa !60
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end.15, %if.then.13, %if.then
  %39 = bitcast %struct.gsicc_devicen_entry_s** %device_n_entry to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  %40 = load i32, i32* %retval
  ret i32 %40
}

; Function Attrs: nounwind uwtable
define internal i32 @gsicc_load_namedcolor_buffer(%struct.cmm_profile_s* %profile, %struct.stream_s* %s, %struct.gs_memory_s* %memory) #0 {
entry:
  %retval = alloca i32, align 4
  %profile.addr = alloca %struct.cmm_profile_s*, align 8
  %s.addr = alloca %struct.stream_s*, align 8
  %memory.addr = alloca %struct.gs_memory_s*, align 8
  %num_bytes = alloca i32, align 4
  %profile_size = alloca i32, align 4
  %buffer_ptr = alloca i8*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.cmm_profile_s* %profile, %struct.cmm_profile_s** %profile.addr, align 8, !tbaa !1
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %memory, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %0 = bitcast i32* %num_bytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %profile_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i8** %buffer_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call = call i32 @srewind(%struct.stream_s* %4) #5
  store i32 %call, i32* %code, align 4, !tbaa !13
  %5 = load i32, i32* %code, align 4, !tbaa !13
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %code, align 4, !tbaa !13
  store i32 %6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call1 = call i32 @sfseek(%struct.stream_s* %7, i64 0, i32 2) #5
  store i32 %call1, i32* %code, align 4, !tbaa !13
  %8 = load i32, i32* %code, align 4, !tbaa !13
  %cmp2 = icmp slt i32 %8, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %9 = load i32, i32* %code, align 4, !tbaa !13
  store i32 %9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %10 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call5 = call i64 @sftell(%struct.stream_s* %10) #5
  %conv = trunc i64 %call5 to i32
  store i32 %conv, i32* %profile_size, align 4, !tbaa !13
  %11 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call6 = call i32 @srewind(%struct.stream_s* %11) #5
  store i32 %call6, i32* %code, align 4, !tbaa !13
  %12 = load i32, i32* %code, align 4, !tbaa !13
  %cmp7 = icmp slt i32 %12, 0
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.4
  %13 = load i32, i32* %code, align 4, !tbaa !13
  store i32 %13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %if.end.4
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %14, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %15 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !30
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %17 = load i32, i32* %profile_size, align 4, !tbaa !13
  %call11 = call i8* %15(%struct.gs_memory_s* %16, i32 %17, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.93, i32 0, i32 0)) #5
  store i8* %call11, i8** %buffer_ptr, align 8, !tbaa !1
  %18 = load i8*, i8** %buffer_ptr, align 8, !tbaa !1
  %cmp12 = icmp eq i8* %18, null
  br i1 %cmp12, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.end.10
  %call15 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gsicc_load_namedcolor_buffer, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 1984, i32 0, i32 -25, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.94, i32 0, i32 0)) #5
  store i32 %call15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %if.end.10
  %19 = load i8*, i8** %buffer_ptr, align 8, !tbaa !1
  %20 = load i32, i32* %profile_size, align 4, !tbaa !13
  %conv17 = sext i32 %20 to i64
  %21 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call18 = call i32 @sfread(i8* %19, i64 1, i64 %conv17, %struct.stream_s* %21) #5
  store i32 %call18, i32* %num_bytes, align 4, !tbaa !13
  %22 = load i32, i32* %num_bytes, align 4, !tbaa !13
  %23 = load i32, i32* %profile_size, align 4, !tbaa !13
  %cmp19 = icmp ne i32 %22, %23
  br i1 %cmp19, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %if.end.16
  %24 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %procs22 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %24, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs22, i32 0, i32 2
  %25 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !31
  %26 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %27 = load i8*, i8** %buffer_ptr, align 8, !tbaa !1
  call void %25(%struct.gs_memory_s* %26, i8* %27, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.93, i32 0, i32 0)) #5
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.23:                                        ; preds = %if.end.16
  %28 = load i8*, i8** %buffer_ptr, align 8, !tbaa !1
  %29 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %profile.addr, align 8, !tbaa !1
  %buffer = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %29, i32 0, i32 14
  store i8* %28, i8** %buffer, align 8, !tbaa !24
  %30 = load i32, i32* %num_bytes, align 4, !tbaa !13
  %31 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %profile.addr, align 8, !tbaa !1
  %buffer_size = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %31, i32 0, i32 11
  store i32 %30, i32* %buffer_size, align 4, !tbaa !25
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.23, %if.then.21, %if.then.14, %if.then.9, %if.then.3, %if.then
  %32 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #1
  %33 = bitcast i8** %buffer_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  %34 = bitcast i32* %profile_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  %35 = bitcast i32* %num_bytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %36 = load i32, i32* %retval
  ret i32 %36
}

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #4

; Function Attrs: nounwind uwtable
define internal void @gsicc_get_devicen_names(%struct.cmm_profile_s* %icc_profile, %struct.gs_memory_s* %memory) #0 {
entry:
  %icc_profile.addr = alloca %struct.cmm_profile_s*, align 8
  %memory.addr = alloca %struct.gs_memory_s*, align 8
  store %struct.cmm_profile_s* %icc_profile, %struct.cmm_profile_s** %icc_profile.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %memory, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %0 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile.addr, align 8, !tbaa !1
  %profile_handle = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %0, i32 0, i32 17
  %1 = load i8*, i8** %profile_handle, align 8, !tbaa !26
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %2 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile.addr, align 8, !tbaa !1
  %buffer = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %2, i32 0, i32 14
  %3 = load i8*, i8** %buffer, align 8, !tbaa !24
  %cmp1 = icmp ne i8* %3, null
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %4 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile.addr, align 8, !tbaa !1
  %buffer3 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %4, i32 0, i32 14
  %5 = load i8*, i8** %buffer3, align 8, !tbaa !24
  %6 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile.addr, align 8, !tbaa !1
  %buffer_size = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %6, i32 0, i32 11
  %7 = load i32, i32* %buffer_size, align 4, !tbaa !25
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %call = call i8* @gsicc_get_profile_handle_buffer(i8* %5, i32 %7, %struct.gs_memory_s* %8) #5
  %9 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile.addr, align 8, !tbaa !1
  %profile_handle4 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %9, i32 0, i32 17
  store i8* %call, i8** %profile_handle4, align 8, !tbaa !26
  br label %if.end

if.else:                                          ; preds = %if.then
  br label %return

if.end:                                           ; preds = %if.then.2
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  %10 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile.addr, align 8, !tbaa !1
  %profile_handle6 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %10, i32 0, i32 17
  %11 = load i8*, i8** %profile_handle6, align 8, !tbaa !26
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %12, i32 0, i32 3
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !32
  %call7 = call %struct.gsicc_namelist_s* @gsicc_get_spotnames(i8* %11, %struct.gs_memory_s* %13) #5
  %14 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile.addr, align 8, !tbaa !1
  %spotnames = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %14, i32 0, i32 16
  store %struct.gsicc_namelist_s* %call7, %struct.gsicc_namelist_s** %spotnames, align 8, !tbaa !38
  br label %return

return:                                           ; preds = %if.end.5, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gsicc_initialize_default_profile(%struct.cmm_profile_s* %icc_profile) #0 {
entry:
  %retval = alloca i32, align 4
  %icc_profile.addr = alloca %struct.cmm_profile_s*, align 8
  %defaulttype = alloca i32, align 4
  %default_space = alloca i32, align 4
  %num_comps = alloca i32, align 4
  %num_comps_out = alloca i32, align 4
  %mem = alloca %struct.gs_memory_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.cmm_profile_s* %icc_profile, %struct.cmm_profile_s** %icc_profile.addr, align 8, !tbaa !1
  %0 = bitcast i32* %defaulttype to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile.addr, align 8, !tbaa !1
  %default_match = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %1, i32 0, i32 4
  %2 = load i32, i32* %default_match, align 4, !tbaa !54
  store i32 %2, i32* %defaulttype, align 4, !tbaa !5
  %3 = bitcast i32* %default_space to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %default_space, align 4, !tbaa !5
  %4 = bitcast i32* %num_comps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %num_comps_out to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %7, i32 0, i32 21
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !42
  store %struct.gs_memory_s* %8, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %9 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile.addr, align 8, !tbaa !1
  %profile_handle = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %9, i32 0, i32 17
  %10 = load i8*, i8** %profile_handle, align 8, !tbaa !26
  %cmp = icmp ne i8* %10, null
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %11 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile.addr, align 8, !tbaa !1
  %buffer = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %11, i32 0, i32 14
  %12 = load i8*, i8** %buffer, align 8, !tbaa !24
  %13 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile.addr, align 8, !tbaa !1
  %buffer_size = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %13, i32 0, i32 11
  %14 = load i32, i32* %buffer_size, align 4, !tbaa !25
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call = call i8* @gsicc_get_profile_handle_buffer(i8* %12, i32 %14, %struct.gs_memory_s* %15) #5
  %16 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile.addr, align 8, !tbaa !1
  %profile_handle1 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %16, i32 0, i32 17
  store i8* %call, i8** %profile_handle1, align 8, !tbaa !26
  %17 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile.addr, align 8, !tbaa !1
  %profile_handle2 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %17, i32 0, i32 17
  %18 = load i8*, i8** %profile_handle2, align 8, !tbaa !26
  %cmp3 = icmp eq i8* %18, null
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %19 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile.addr, align 8, !tbaa !1
  %name = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %19, i32 0, i32 20
  %20 = load i8*, i8** %name, align 8, !tbaa !33
  %call5 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gsicc_initialize_default_profile, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 891, i32 1, i32 -25, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.28, i32 0, i32 0), i8* %20) #5
  store i32 %call5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %entry
  %21 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile.addr, align 8, !tbaa !1
  %buffer7 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %21, i32 0, i32 14
  %22 = load i8*, i8** %buffer7, align 8, !tbaa !24
  %cmp8 = icmp ne i8* %22, null
  br i1 %cmp8, label %land.lhs.true, label %if.end.14

land.lhs.true:                                    ; preds = %if.end.6
  %23 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile.addr, align 8, !tbaa !1
  %hash_is_valid = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %23, i32 0, i32 8
  %24 = load i32, i32* %hash_is_valid, align 4, !tbaa !27
  %cmp9 = icmp eq i32 %24, 0
  br i1 %cmp9, label %if.then.10, label %if.end.14

if.then.10:                                       ; preds = %land.lhs.true
  %25 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile.addr, align 8, !tbaa !1
  %buffer11 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %25, i32 0, i32 14
  %26 = load i8*, i8** %buffer11, align 8, !tbaa !24
  %27 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile.addr, align 8, !tbaa !1
  %hashcode = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %27, i32 0, i32 7
  %28 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile.addr, align 8, !tbaa !1
  %buffer_size12 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %28, i32 0, i32 11
  %29 = load i32, i32* %buffer_size12, align 4, !tbaa !25
  call void @gsicc_get_icc_buff_hash(i8* %26, i64* %hashcode, i32 %29) #5
  %30 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile.addr, align 8, !tbaa !1
  %hash_is_valid13 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %30, i32 0, i32 8
  store i32 1, i32* %hash_is_valid13, align 4, !tbaa !27
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.10, %land.lhs.true, %if.end.6
  %31 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile.addr, align 8, !tbaa !1
  %num_comps15 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %31, i32 0, i32 0
  %32 = load i8, i8* %num_comps15, align 1, !tbaa !6
  %conv = zext i8 %32 to i32
  store i32 %conv, i32* %num_comps, align 4, !tbaa !13
  %33 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile.addr, align 8, !tbaa !1
  %profile_handle16 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %33, i32 0, i32 17
  %34 = load i8*, i8** %profile_handle16, align 8, !tbaa !26
  %call17 = call i32 @gscms_get_input_channel_count(i8* %34) #5
  %conv18 = trunc i32 %call17 to i8
  %35 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile.addr, align 8, !tbaa !1
  %num_comps19 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %35, i32 0, i32 0
  store i8 %conv18, i8* %num_comps19, align 1, !tbaa !6
  %36 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile.addr, align 8, !tbaa !1
  %num_comps_out20 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %36, i32 0, i32 1
  %37 = load i8, i8* %num_comps_out20, align 1, !tbaa !28
  %conv21 = zext i8 %37 to i32
  store i32 %conv21, i32* %num_comps_out, align 4, !tbaa !13
  %38 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile.addr, align 8, !tbaa !1
  %profile_handle22 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %38, i32 0, i32 17
  %39 = load i8*, i8** %profile_handle22, align 8, !tbaa !26
  %call23 = call i32 @gscms_get_output_channel_count(i8* %39) #5
  %conv24 = trunc i32 %call23 to i8
  %40 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile.addr, align 8, !tbaa !1
  %num_comps_out25 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %40, i32 0, i32 1
  store i8 %conv24, i8* %num_comps_out25, align 1, !tbaa !28
  %41 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile.addr, align 8, !tbaa !1
  %profile_handle26 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %41, i32 0, i32 17
  %42 = load i8*, i8** %profile_handle26, align 8, !tbaa !26
  %call27 = call i32 @gscms_get_profile_data_space(i8* %42) #5
  %43 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile.addr, align 8, !tbaa !1
  %data_cs = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %43, i32 0, i32 5
  store i32 %call27, i32* %data_cs, align 4, !tbaa !29
  br label %do.body

do.body:                                          ; preds = %if.end.14
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %44 = load i32, i32* %defaulttype, align 4, !tbaa !5
  switch i32 %44, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.31
    i32 3, label %sw.bb.35
    i32 4, label %sw.bb.39
    i32 5, label %sw.bb.43
    i32 6, label %sw.bb.47
    i32 0, label %sw.bb.51
  ]

sw.bb:                                            ; preds = %do.end
  br label %do.body.28

do.body.28:                                       ; preds = %sw.bb
  br label %do.cond.29

do.cond.29:                                       ; preds = %do.body.28
  br label %do.end.30

do.end.30:                                        ; preds = %do.cond.29
  store i32 1, i32* %default_space, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.31:                                         ; preds = %do.end
  br label %do.body.32

do.body.32:                                       ; preds = %sw.bb.31
  br label %do.cond.33

do.cond.33:                                       ; preds = %do.body.32
  br label %do.end.34

do.end.34:                                        ; preds = %do.cond.33
  store i32 2, i32* %default_space, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.35:                                         ; preds = %do.end
  br label %do.body.36

do.body.36:                                       ; preds = %sw.bb.35
  br label %do.cond.37

do.cond.37:                                       ; preds = %do.body.36
  br label %do.end.38

do.end.38:                                        ; preds = %do.cond.37
  store i32 3, i32* %default_space, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.39:                                         ; preds = %do.end
  br label %do.body.40

do.body.40:                                       ; preds = %sw.bb.39
  br label %do.cond.41

do.cond.41:                                       ; preds = %do.body.40
  br label %do.end.42

do.end.42:                                        ; preds = %do.cond.41
  br label %sw.epilog

sw.bb.43:                                         ; preds = %do.end
  br label %do.body.44

do.body.44:                                       ; preds = %sw.bb.43
  br label %do.cond.45

do.cond.45:                                       ; preds = %do.body.44
  br label %do.end.46

do.end.46:                                        ; preds = %do.cond.45
  br label %sw.epilog

sw.bb.47:                                         ; preds = %do.end
  br label %do.body.48

do.body.48:                                       ; preds = %sw.bb.47
  br label %do.cond.49

do.cond.49:                                       ; preds = %do.body.48
  br label %do.end.50

do.end.50:                                        ; preds = %do.cond.49
  br label %sw.epilog

sw.bb.51:                                         ; preds = %do.end
  br label %sw.default

sw.default:                                       ; preds = %do.end, %sw.bb.51
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %do.end.50, %do.end.46, %do.end.42, %do.end.38, %do.end.34, %do.end.30
  br label %do.body.52

do.body.52:                                       ; preds = %sw.epilog
  br label %do.cond.53

do.cond.53:                                       ; preds = %do.body.52
  br label %do.end.54

do.end.54:                                        ; preds = %do.cond.53
  br label %do.body.55

do.body.55:                                       ; preds = %do.end.54
  br label %do.cond.56

do.cond.56:                                       ; preds = %do.body.55
  br label %do.end.57

do.end.57:                                        ; preds = %do.cond.56
  %45 = load i32, i32* %default_space, align 4, !tbaa !5
  %cmp58 = icmp ne i32 %45, 0
  br i1 %cmp58, label %if.then.69, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.57
  %46 = load i32, i32* %num_comps, align 4, !tbaa !13
  %47 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile.addr, align 8, !tbaa !1
  %num_comps60 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %47, i32 0, i32 0
  %48 = load i8, i8* %num_comps60, align 1, !tbaa !6
  %conv61 = zext i8 %48 to i32
  %cmp62 = icmp ne i32 %46, %conv61
  br i1 %cmp62, label %if.then.69, label %lor.lhs.false.64

lor.lhs.false.64:                                 ; preds = %lor.lhs.false
  %49 = load i32, i32* %num_comps_out, align 4, !tbaa !13
  %50 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile.addr, align 8, !tbaa !1
  %num_comps_out65 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %50, i32 0, i32 1
  %51 = load i8, i8* %num_comps_out65, align 1, !tbaa !28
  %conv66 = zext i8 %51 to i32
  %cmp67 = icmp ne i32 %49, %conv66
  br i1 %cmp67, label %if.then.69, label %if.end.76

if.then.69:                                       ; preds = %lor.lhs.false.64, %lor.lhs.false, %do.end.57
  %52 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile.addr, align 8, !tbaa !1
  %data_cs70 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %52, i32 0, i32 5
  %53 = load i32, i32* %data_cs70, align 4, !tbaa !29
  %54 = load i32, i32* %default_space, align 4, !tbaa !5
  %cmp71 = icmp ne i32 %53, %54
  br i1 %cmp71, label %if.then.73, label %if.end.75

if.then.73:                                       ; preds = %if.then.69
  %call74 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gsicc_initialize_default_profile, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 944, i32 1, i32 -1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.29, i32 0, i32 0)) #5
  store i32 %call74, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.75:                                        ; preds = %if.then.69
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %lor.lhs.false.64
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.76, %if.then.73, %sw.default, %if.then.4
  %55 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #1
  %56 = bitcast i32* %num_comps_out to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #1
  %57 = bitcast i32* %num_comps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #1
  %58 = bitcast i32* %default_space to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #1
  %59 = bitcast i32* %defaulttype to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #1
  %60 = load i32, i32* %retval
  ret i32 %60
}

; Function Attrs: nounwind uwtable
define %struct.cmm_profile_s* @gsicc_get_profile_handle_file(i8* %pname, i32 %namelen, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca %struct.cmm_profile_s*, align 8
  %pname.addr = alloca i8*, align 8
  %namelen.addr = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %result = alloca %struct.cmm_profile_s*, align 8
  %str = alloca %struct.stream_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %pname, i8** %pname.addr, align 8, !tbaa !1
  store i32 %namelen, i32* %namelen.addr, align 4, !tbaa !13
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cmm_profile_s** %result to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.stream_s** %str to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %4 = load i32, i32* %namelen.addr, align 4, !tbaa !13
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i32 @gsicc_open_search(i8* %3, i32 %4, %struct.gs_memory_s* %5, i8* null, i32 0, %struct.stream_s** %str) #5
  store i32 %call, i32* %code, align 4, !tbaa !13
  %6 = load i32, i32* %code, align 4, !tbaa !13
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %7 = load %struct.stream_s*, %struct.stream_s** %str, align 8, !tbaa !1
  %cmp1 = icmp eq %struct.stream_s* %7, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %8 = load %struct.stream_s*, %struct.stream_s** %str, align 8, !tbaa !1
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %10 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %11 = load i32, i32* %namelen.addr, align 4, !tbaa !13
  %call2 = call %struct.cmm_profile_s* @gsicc_profile_new(%struct.stream_s* %8, %struct.gs_memory_s* %9, i8* %10, i32 %11) #5
  store %struct.cmm_profile_s* %call2, %struct.cmm_profile_s** %result, align 8, !tbaa !1
  %12 = load %struct.stream_s*, %struct.stream_s** %str, align 8, !tbaa !1
  %call3 = call i32 @sfclose(%struct.stream_s* %12) #5
  store i32 %call3, i32* %code, align 4, !tbaa !13
  %13 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %result, align 8, !tbaa !1
  call void @gsicc_init_profile_info(%struct.cmm_profile_s* %13) #5
  %14 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %result, align 8, !tbaa !1
  store %struct.cmm_profile_s* %14, %struct.cmm_profile_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %15 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #1
  %16 = bitcast %struct.stream_s** %str to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  %17 = bitcast %struct.cmm_profile_s** %result to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  %18 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %retval
  ret %struct.cmm_profile_s* %18
}

; Function Attrs: nounwind uwtable
define %struct.cmm_dev_profile_s* @gsicc_new_device_profile_array(%struct.gs_memory_s* %memory) #0 {
entry:
  %retval = alloca %struct.cmm_dev_profile_s*, align 8
  %memory.addr = alloca %struct.gs_memory_s*, align 8
  %result = alloca %struct.cmm_dev_profile_s*, align 8
  %k = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %memory, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cmm_dev_profile_s** %result to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %2, i32 0, i32 3
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !32
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %3, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %4 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !30
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %non_gc_memory1 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %5, i32 0, i32 3
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory1, align 8, !tbaa !32
  %call = call i8* %4(%struct.gs_memory_s* %6, i32 224, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.30, i32 0, i32 0)) #5
  %7 = bitcast i8* %call to %struct.cmm_dev_profile_s*
  store %struct.cmm_dev_profile_s* %7, %struct.cmm_dev_profile_s** %result, align 8, !tbaa !1
  %8 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %result, align 8, !tbaa !1
  %cmp = icmp eq %struct.cmm_dev_profile_s* %8, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  store %struct.cmm_dev_profile_s* null, %struct.cmm_dev_profile_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %do.end
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %non_gc_memory2 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %9, i32 0, i32 3
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory2, align 8, !tbaa !32
  %11 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %result, align 8, !tbaa !1
  %memory3 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %11, i32 0, i32 13
  store %struct.gs_memory_s* %10, %struct.gs_memory_s** %memory3, align 8, !tbaa !89
  store i32 0, i32* %k, align 4, !tbaa !13
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %12 = load i32, i32* %k, align 4, !tbaa !13
  %cmp4 = icmp slt i32 %12, 4
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %k, align 4, !tbaa !13
  %idxprom = sext i32 %13 to i64
  %14 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %result, align 8, !tbaa !1
  %device_profile = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %14, i32 0, i32 0
  %arrayidx = getelementptr inbounds [4 x %struct.cmm_profile_s*], [4 x %struct.cmm_profile_s*]* %device_profile, i32 0, i64 %idxprom
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %arrayidx, align 8, !tbaa !1
  %15 = load i32, i32* %k, align 4, !tbaa !13
  %idxprom5 = sext i32 %15 to i64
  %16 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %result, align 8, !tbaa !1
  %rendercond = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %16, i32 0, i32 4
  %arrayidx6 = getelementptr inbounds [4 x %struct.gsicc_rendering_param_s], [4 x %struct.gsicc_rendering_param_s]* %rendercond, i32 0, i64 %idxprom5
  %rendering_intent = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %arrayidx6, i32 0, i32 0
  store i32 8, i32* %rendering_intent, align 4, !tbaa !82
  %17 = load i32, i32* %k, align 4, !tbaa !13
  %idxprom7 = sext i32 %17 to i64
  %18 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %result, align 8, !tbaa !1
  %rendercond8 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %18, i32 0, i32 4
  %arrayidx9 = getelementptr inbounds [4 x %struct.gsicc_rendering_param_s], [4 x %struct.gsicc_rendering_param_s]* %rendercond8, i32 0, i64 %idxprom7
  %black_point_comp = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %arrayidx9, i32 0, i32 1
  store i32 8, i32* %black_point_comp, align 4, !tbaa !81
  %19 = load i32, i32* %k, align 4, !tbaa !13
  %idxprom10 = sext i32 %19 to i64
  %20 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %result, align 8, !tbaa !1
  %rendercond11 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %20, i32 0, i32 4
  %arrayidx12 = getelementptr inbounds [4 x %struct.gsicc_rendering_param_s], [4 x %struct.gsicc_rendering_param_s]* %rendercond11, i32 0, i64 %idxprom10
  %override_icc = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %arrayidx12, i32 0, i32 5
  store i32 0, i32* %override_icc, align 4, !tbaa !83
  %21 = load i32, i32* %k, align 4, !tbaa !13
  %idxprom13 = sext i32 %21 to i64
  %22 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %result, align 8, !tbaa !1
  %rendercond14 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %22, i32 0, i32 4
  %arrayidx15 = getelementptr inbounds [4 x %struct.gsicc_rendering_param_s], [4 x %struct.gsicc_rendering_param_s]* %rendercond14, i32 0, i64 %idxprom13
  %preserve_black = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %arrayidx15, i32 0, i32 2
  store i32 8, i32* %preserve_black, align 4, !tbaa !84
  %23 = load i32, i32* %k, align 4, !tbaa !13
  %idxprom16 = sext i32 %23 to i64
  %24 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %result, align 8, !tbaa !1
  %rendercond17 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %24, i32 0, i32 4
  %arrayidx18 = getelementptr inbounds [4 x %struct.gsicc_rendering_param_s], [4 x %struct.gsicc_rendering_param_s]* %rendercond17, i32 0, i64 %idxprom16
  %graphics_type_tag = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %arrayidx18, i32 0, i32 3
  store i32 0, i32* %graphics_type_tag, align 4, !tbaa !91
  %25 = load i32, i32* %k, align 4, !tbaa !13
  %idxprom19 = sext i32 %25 to i64
  %26 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %result, align 8, !tbaa !1
  %rendercond20 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %26, i32 0, i32 4
  %arrayidx21 = getelementptr inbounds [4 x %struct.gsicc_rendering_param_s], [4 x %struct.gsicc_rendering_param_s]* %rendercond20, i32 0, i64 %idxprom19
  %cmm = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %arrayidx21, i32 0, i32 4
  store i32 0, i32* %cmm, align 4, !tbaa !72
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load i32, i32* %k, align 4, !tbaa !13
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %k, align 4, !tbaa !13
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %28 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %result, align 8, !tbaa !1
  %proof_profile = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %28, i32 0, i32 1
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %proof_profile, align 8, !tbaa !92
  %29 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %result, align 8, !tbaa !1
  %link_profile = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %29, i32 0, i32 2
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %link_profile, align 8, !tbaa !93
  %30 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %result, align 8, !tbaa !1
  %oi_profile = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %30, i32 0, i32 3
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %oi_profile, align 8, !tbaa !94
  %31 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %result, align 8, !tbaa !1
  %spotnames = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %31, i32 0, i32 11
  store %struct.gsicc_namelist_s* null, %struct.gsicc_namelist_s** %spotnames, align 8, !tbaa !95
  %32 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %result, align 8, !tbaa !1
  %devicegraytok = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %32, i32 0, i32 5
  store i32 1, i32* %devicegraytok, align 4, !tbaa !96
  %33 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %result, align 8, !tbaa !1
  %graydetection = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %33, i32 0, i32 6
  store i32 0, i32* %graydetection, align 4, !tbaa !97
  %34 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %result, align 8, !tbaa !1
  %pageneutralcolor = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %34, i32 0, i32 7
  store i32 0, i32* %pageneutralcolor, align 4, !tbaa !98
  %35 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %result, align 8, !tbaa !1
  %usefastcolor = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %35, i32 0, i32 8
  store i32 0, i32* %usefastcolor, align 4, !tbaa !99
  %36 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %result, align 8, !tbaa !1
  %prebandthreshold = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %36, i32 0, i32 12
  store i32 1, i32* %prebandthreshold, align 4, !tbaa !100
  %37 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %result, align 8, !tbaa !1
  %supports_devn = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %37, i32 0, i32 9
  store i32 0, i32* %supports_devn, align 4, !tbaa !101
  %38 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %result, align 8, !tbaa !1
  %sim_overprint = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %38, i32 0, i32 10
  store i32 1, i32* %sim_overprint, align 4, !tbaa !102
  br label %do.body.22

do.body.22:                                       ; preds = %for.end
  %39 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %result, align 8, !tbaa !1
  %rc = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %39, i32 0, i32 14
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  store i64 1, i64* %ref_count, align 8, !tbaa !103
  %40 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %non_gc_memory23 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %40, i32 0, i32 3
  %41 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory23, align 8, !tbaa !32
  %42 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %result, align 8, !tbaa !1
  %rc24 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %42, i32 0, i32 14
  %memory25 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc24, i32 0, i32 1
  store %struct.gs_memory_s* %41, %struct.gs_memory_s** %memory25, align 8, !tbaa !104
  %43 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %result, align 8, !tbaa !1
  %rc26 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %43, i32 0, i32 14
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc26, i32 0, i32 2
  store void (%struct.gs_memory_s*, i8*, i8*)* @rc_free_profile_array, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !105
  br label %do.body.27

do.body.27:                                       ; preds = %do.body.22
  br label %do.cond.28

do.cond.28:                                       ; preds = %do.body.27
  br label %do.end.29

do.end.29:                                        ; preds = %do.cond.28
  br label %do.cond.30

do.cond.30:                                       ; preds = %do.end.29
  br label %do.end.31

do.end.31:                                        ; preds = %do.cond.30
  %44 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %result, align 8, !tbaa !1
  store %struct.cmm_dev_profile_s* %44, %struct.cmm_dev_profile_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.31, %if.then
  %45 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #1
  %46 = bitcast %struct.cmm_dev_profile_s** %result to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #1
  %47 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %retval
  ret %struct.cmm_dev_profile_s* %47
}

; Function Attrs: nounwind uwtable
define internal void @rc_free_profile_array(%struct.gs_memory_s* %mem, i8* %ptr_in, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %ptr_in.addr = alloca i8*, align 8
  %cname.addr = alloca i8*, align 8
  %icc_struct = alloca %struct.cmm_dev_profile_s*, align 8
  %k = alloca i32, align 4
  %mem_nongc = alloca %struct.gs_memory_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %ptr_in, i8** %ptr_in.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cmm_dev_profile_s** %icc_struct to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %ptr_in.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.cmm_dev_profile_s*
  store %struct.cmm_dev_profile_s* %2, %struct.cmm_dev_profile_s** %icc_struct, align 8, !tbaa !1
  %3 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast %struct.gs_memory_s** %mem_nongc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %5, i32 0, i32 13
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !89
  store %struct.gs_memory_s* %6, %struct.gs_memory_s** %mem_nongc, align 8, !tbaa !1
  %7 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct, align 8, !tbaa !1
  %rc = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %7, i32 0, i32 14
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %8 = load i64, i64* %ref_count, align 8, !tbaa !103
  %cmp = icmp sle i64 %8, 1
  br i1 %cmp, label %if.then, label %if.end.209

if.then:                                          ; preds = %entry
  store i32 0, i32* %k, align 4, !tbaa !13
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %9 = load i32, i32* %k, align 4, !tbaa !13
  %cmp1 = icmp slt i32 %9, 4
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %k, align 4, !tbaa !13
  %idxprom = sext i32 %10 to i64
  %11 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct, align 8, !tbaa !1
  %device_profile = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %11, i32 0, i32 0
  %arrayidx = getelementptr inbounds [4 x %struct.cmm_profile_s*], [4 x %struct.cmm_profile_s*]* %device_profile, i32 0, i64 %idxprom
  %12 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %arrayidx, align 8, !tbaa !1
  %cmp2 = icmp ne %struct.cmm_profile_s* %12, null
  br i1 %cmp2, label %if.then.3, label %if.end.54

if.then.3:                                        ; preds = %for.body
  br label %do.body

do.body:                                          ; preds = %if.then.3
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.4

do.body.4:                                        ; preds = %do.end
  %13 = load i32, i32* %k, align 4, !tbaa !13
  %idxprom5 = sext i32 %13 to i64
  %14 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct, align 8, !tbaa !1
  %device_profile6 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %14, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [4 x %struct.cmm_profile_s*], [4 x %struct.cmm_profile_s*]* %device_profile6, i32 0, i64 %idxprom5
  %15 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %arrayidx7, align 8, !tbaa !1
  %tobool = icmp ne %struct.cmm_profile_s* %15, null
  br i1 %tobool, label %if.then.8, label %if.end.51

if.then.8:                                        ; preds = %do.body.4
  br label %do.body.9

do.body.9:                                        ; preds = %if.then.8
  br label %do.body.10

do.body.10:                                       ; preds = %do.body.9
  br label %do.cond.11

do.cond.11:                                       ; preds = %do.body.10
  br label %do.end.12

do.end.12:                                        ; preds = %do.cond.11
  %16 = load i32, i32* %k, align 4, !tbaa !13
  %idxprom13 = sext i32 %16 to i64
  %17 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct, align 8, !tbaa !1
  %device_profile14 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %17, i32 0, i32 0
  %arrayidx15 = getelementptr inbounds [4 x %struct.cmm_profile_s*], [4 x %struct.cmm_profile_s*]* %device_profile14, i32 0, i64 %idxprom13
  %18 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %arrayidx15, align 8, !tbaa !1
  %rc16 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %18, i32 0, i32 18
  %ref_count17 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc16, i32 0, i32 0
  %19 = load i64, i64* %ref_count17, align 8, !tbaa !35
  %add = add nsw i64 %19, -1
  store i64 %add, i64* %ref_count17, align 8, !tbaa !35
  br label %do.cond.18

do.cond.18:                                       ; preds = %do.end.12
  br label %do.end.19

do.end.19:                                        ; preds = %do.cond.18
  %20 = load i32, i32* %k, align 4, !tbaa !13
  %idxprom20 = sext i32 %20 to i64
  %21 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct, align 8, !tbaa !1
  %device_profile21 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %21, i32 0, i32 0
  %arrayidx22 = getelementptr inbounds [4 x %struct.cmm_profile_s*], [4 x %struct.cmm_profile_s*]* %device_profile21, i32 0, i64 %idxprom20
  %22 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %arrayidx22, align 8, !tbaa !1
  %rc23 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %22, i32 0, i32 18
  %ref_count24 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc23, i32 0, i32 0
  %23 = load i64, i64* %ref_count24, align 8, !tbaa !35
  %tobool25 = icmp ne i64 %23, 0
  br i1 %tobool25, label %if.else, label %if.then.26

if.then.26:                                       ; preds = %do.end.19
  br label %do.body.27

do.body.27:                                       ; preds = %if.then.26
  br label %do.body.28

do.body.28:                                       ; preds = %do.body.27
  br label %do.cond.29

do.cond.29:                                       ; preds = %do.body.28
  br label %do.end.30

do.end.30:                                        ; preds = %do.cond.29
  %24 = load i32, i32* %k, align 4, !tbaa !13
  %idxprom31 = sext i32 %24 to i64
  %25 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct, align 8, !tbaa !1
  %device_profile32 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %25, i32 0, i32 0
  %arrayidx33 = getelementptr inbounds [4 x %struct.cmm_profile_s*], [4 x %struct.cmm_profile_s*]* %device_profile32, i32 0, i64 %idxprom31
  %26 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %arrayidx33, align 8, !tbaa !1
  %rc34 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %26, i32 0, i32 18
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc34, i32 0, i32 2
  %27 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !37
  %28 = load i32, i32* %k, align 4, !tbaa !13
  %idxprom35 = sext i32 %28 to i64
  %29 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct, align 8, !tbaa !1
  %device_profile36 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %29, i32 0, i32 0
  %arrayidx37 = getelementptr inbounds [4 x %struct.cmm_profile_s*], [4 x %struct.cmm_profile_s*]* %device_profile36, i32 0, i64 %idxprom35
  %30 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %arrayidx37, align 8, !tbaa !1
  %rc38 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %30, i32 0, i32 18
  %memory39 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc38, i32 0, i32 1
  %31 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory39, align 8, !tbaa !36
  %32 = load i32, i32* %k, align 4, !tbaa !13
  %idxprom40 = sext i32 %32 to i64
  %33 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct, align 8, !tbaa !1
  %device_profile41 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %33, i32 0, i32 0
  %arrayidx42 = getelementptr inbounds [4 x %struct.cmm_profile_s*], [4 x %struct.cmm_profile_s*]* %device_profile41, i32 0, i64 %idxprom40
  %34 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %arrayidx42, align 8, !tbaa !1
  %35 = bitcast %struct.cmm_profile_s* %34 to i8*
  call void %27(%struct.gs_memory_s* %31, i8* %35, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.85, i32 0, i32 0)) #5
  br label %do.cond.43

do.cond.43:                                       ; preds = %do.end.30
  br label %do.end.44

do.end.44:                                        ; preds = %do.cond.43
  %36 = load i32, i32* %k, align 4, !tbaa !13
  %idxprom45 = sext i32 %36 to i64
  %37 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct, align 8, !tbaa !1
  %device_profile46 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %37, i32 0, i32 0
  %arrayidx47 = getelementptr inbounds [4 x %struct.cmm_profile_s*], [4 x %struct.cmm_profile_s*]* %device_profile46, i32 0, i64 %idxprom45
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %arrayidx47, align 8, !tbaa !1
  br label %if.end

if.else:                                          ; preds = %do.end.19
  br label %do.body.48

do.body.48:                                       ; preds = %if.else
  br label %do.cond.49

do.cond.49:                                       ; preds = %do.body.48
  br label %do.end.50

do.end.50:                                        ; preds = %do.cond.49
  br label %if.end

if.end:                                           ; preds = %do.end.50, %do.end.44
  br label %if.end.51

if.end.51:                                        ; preds = %if.end, %do.body.4
  br label %do.cond.52

do.cond.52:                                       ; preds = %if.end.51
  br label %do.end.53

do.end.53:                                        ; preds = %do.cond.52
  br label %if.end.54

if.end.54:                                        ; preds = %do.end.53, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.54
  %38 = load i32, i32* %k, align 4, !tbaa !13
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %k, align 4, !tbaa !13
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %39 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct, align 8, !tbaa !1
  %link_profile = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %39, i32 0, i32 2
  %40 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %link_profile, align 8, !tbaa !93
  %cmp55 = icmp ne %struct.cmm_profile_s* %40, null
  br i1 %cmp55, label %if.then.56, label %if.end.101

if.then.56:                                       ; preds = %for.end
  br label %do.body.57

do.body.57:                                       ; preds = %if.then.56
  br label %do.cond.58

do.cond.58:                                       ; preds = %do.body.57
  br label %do.end.59

do.end.59:                                        ; preds = %do.cond.58
  br label %do.body.60

do.body.60:                                       ; preds = %do.end.59
  %41 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct, align 8, !tbaa !1
  %link_profile61 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %41, i32 0, i32 2
  %42 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %link_profile61, align 8, !tbaa !93
  %tobool62 = icmp ne %struct.cmm_profile_s* %42, null
  br i1 %tobool62, label %if.then.63, label %if.end.98

if.then.63:                                       ; preds = %do.body.60
  br label %do.body.64

do.body.64:                                       ; preds = %if.then.63
  br label %do.body.65

do.body.65:                                       ; preds = %do.body.64
  br label %do.cond.66

do.cond.66:                                       ; preds = %do.body.65
  br label %do.end.67

do.end.67:                                        ; preds = %do.cond.66
  %43 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct, align 8, !tbaa !1
  %link_profile68 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %43, i32 0, i32 2
  %44 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %link_profile68, align 8, !tbaa !93
  %rc69 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %44, i32 0, i32 18
  %ref_count70 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc69, i32 0, i32 0
  %45 = load i64, i64* %ref_count70, align 8, !tbaa !35
  %add71 = add nsw i64 %45, -1
  store i64 %add71, i64* %ref_count70, align 8, !tbaa !35
  br label %do.cond.72

do.cond.72:                                       ; preds = %do.end.67
  br label %do.end.73

do.end.73:                                        ; preds = %do.cond.72
  %46 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct, align 8, !tbaa !1
  %link_profile74 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %46, i32 0, i32 2
  %47 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %link_profile74, align 8, !tbaa !93
  %rc75 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %47, i32 0, i32 18
  %ref_count76 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc75, i32 0, i32 0
  %48 = load i64, i64* %ref_count76, align 8, !tbaa !35
  %tobool77 = icmp ne i64 %48, 0
  br i1 %tobool77, label %if.else.93, label %if.then.78

if.then.78:                                       ; preds = %do.end.73
  br label %do.body.79

do.body.79:                                       ; preds = %if.then.78
  br label %do.body.80

do.body.80:                                       ; preds = %do.body.79
  br label %do.cond.81

do.cond.81:                                       ; preds = %do.body.80
  br label %do.end.82

do.end.82:                                        ; preds = %do.cond.81
  %49 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct, align 8, !tbaa !1
  %link_profile83 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %49, i32 0, i32 2
  %50 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %link_profile83, align 8, !tbaa !93
  %rc84 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %50, i32 0, i32 18
  %free85 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc84, i32 0, i32 2
  %51 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free85, align 8, !tbaa !37
  %52 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct, align 8, !tbaa !1
  %link_profile86 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %52, i32 0, i32 2
  %53 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %link_profile86, align 8, !tbaa !93
  %rc87 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %53, i32 0, i32 18
  %memory88 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc87, i32 0, i32 1
  %54 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory88, align 8, !tbaa !36
  %55 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct, align 8, !tbaa !1
  %link_profile89 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %55, i32 0, i32 2
  %56 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %link_profile89, align 8, !tbaa !93
  %57 = bitcast %struct.cmm_profile_s* %56 to i8*
  call void %51(%struct.gs_memory_s* %54, i8* %57, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.85, i32 0, i32 0)) #5
  br label %do.cond.90

do.cond.90:                                       ; preds = %do.end.82
  br label %do.end.91

do.end.91:                                        ; preds = %do.cond.90
  %58 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct, align 8, !tbaa !1
  %link_profile92 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %58, i32 0, i32 2
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %link_profile92, align 8, !tbaa !93
  br label %if.end.97

if.else.93:                                       ; preds = %do.end.73
  br label %do.body.94

do.body.94:                                       ; preds = %if.else.93
  br label %do.cond.95

do.cond.95:                                       ; preds = %do.body.94
  br label %do.end.96

do.end.96:                                        ; preds = %do.cond.95
  br label %if.end.97

if.end.97:                                        ; preds = %do.end.96, %do.end.91
  br label %if.end.98

if.end.98:                                        ; preds = %if.end.97, %do.body.60
  br label %do.cond.99

do.cond.99:                                       ; preds = %if.end.98
  br label %do.end.100

do.end.100:                                       ; preds = %do.cond.99
  br label %if.end.101

if.end.101:                                       ; preds = %do.end.100, %for.end
  %59 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct, align 8, !tbaa !1
  %proof_profile = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %59, i32 0, i32 1
  %60 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %proof_profile, align 8, !tbaa !92
  %cmp102 = icmp ne %struct.cmm_profile_s* %60, null
  br i1 %cmp102, label %if.then.103, label %if.end.148

if.then.103:                                      ; preds = %if.end.101
  br label %do.body.104

do.body.104:                                      ; preds = %if.then.103
  br label %do.cond.105

do.cond.105:                                      ; preds = %do.body.104
  br label %do.end.106

do.end.106:                                       ; preds = %do.cond.105
  br label %do.body.107

do.body.107:                                      ; preds = %do.end.106
  %61 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct, align 8, !tbaa !1
  %proof_profile108 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %61, i32 0, i32 1
  %62 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %proof_profile108, align 8, !tbaa !92
  %tobool109 = icmp ne %struct.cmm_profile_s* %62, null
  br i1 %tobool109, label %if.then.110, label %if.end.145

if.then.110:                                      ; preds = %do.body.107
  br label %do.body.111

do.body.111:                                      ; preds = %if.then.110
  br label %do.body.112

do.body.112:                                      ; preds = %do.body.111
  br label %do.cond.113

do.cond.113:                                      ; preds = %do.body.112
  br label %do.end.114

do.end.114:                                       ; preds = %do.cond.113
  %63 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct, align 8, !tbaa !1
  %proof_profile115 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %63, i32 0, i32 1
  %64 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %proof_profile115, align 8, !tbaa !92
  %rc116 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %64, i32 0, i32 18
  %ref_count117 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc116, i32 0, i32 0
  %65 = load i64, i64* %ref_count117, align 8, !tbaa !35
  %add118 = add nsw i64 %65, -1
  store i64 %add118, i64* %ref_count117, align 8, !tbaa !35
  br label %do.cond.119

do.cond.119:                                      ; preds = %do.end.114
  br label %do.end.120

do.end.120:                                       ; preds = %do.cond.119
  %66 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct, align 8, !tbaa !1
  %proof_profile121 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %66, i32 0, i32 1
  %67 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %proof_profile121, align 8, !tbaa !92
  %rc122 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %67, i32 0, i32 18
  %ref_count123 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc122, i32 0, i32 0
  %68 = load i64, i64* %ref_count123, align 8, !tbaa !35
  %tobool124 = icmp ne i64 %68, 0
  br i1 %tobool124, label %if.else.140, label %if.then.125

if.then.125:                                      ; preds = %do.end.120
  br label %do.body.126

do.body.126:                                      ; preds = %if.then.125
  br label %do.body.127

do.body.127:                                      ; preds = %do.body.126
  br label %do.cond.128

do.cond.128:                                      ; preds = %do.body.127
  br label %do.end.129

do.end.129:                                       ; preds = %do.cond.128
  %69 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct, align 8, !tbaa !1
  %proof_profile130 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %69, i32 0, i32 1
  %70 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %proof_profile130, align 8, !tbaa !92
  %rc131 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %70, i32 0, i32 18
  %free132 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc131, i32 0, i32 2
  %71 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free132, align 8, !tbaa !37
  %72 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct, align 8, !tbaa !1
  %proof_profile133 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %72, i32 0, i32 1
  %73 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %proof_profile133, align 8, !tbaa !92
  %rc134 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %73, i32 0, i32 18
  %memory135 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc134, i32 0, i32 1
  %74 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory135, align 8, !tbaa !36
  %75 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct, align 8, !tbaa !1
  %proof_profile136 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %75, i32 0, i32 1
  %76 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %proof_profile136, align 8, !tbaa !92
  %77 = bitcast %struct.cmm_profile_s* %76 to i8*
  call void %71(%struct.gs_memory_s* %74, i8* %77, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.85, i32 0, i32 0)) #5
  br label %do.cond.137

do.cond.137:                                      ; preds = %do.end.129
  br label %do.end.138

do.end.138:                                       ; preds = %do.cond.137
  %78 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct, align 8, !tbaa !1
  %proof_profile139 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %78, i32 0, i32 1
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %proof_profile139, align 8, !tbaa !92
  br label %if.end.144

if.else.140:                                      ; preds = %do.end.120
  br label %do.body.141

do.body.141:                                      ; preds = %if.else.140
  br label %do.cond.142

do.cond.142:                                      ; preds = %do.body.141
  br label %do.end.143

do.end.143:                                       ; preds = %do.cond.142
  br label %if.end.144

if.end.144:                                       ; preds = %do.end.143, %do.end.138
  br label %if.end.145

if.end.145:                                       ; preds = %if.end.144, %do.body.107
  br label %do.cond.146

do.cond.146:                                      ; preds = %if.end.145
  br label %do.end.147

do.end.147:                                       ; preds = %do.cond.146
  br label %if.end.148

if.end.148:                                       ; preds = %do.end.147, %if.end.101
  %79 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct, align 8, !tbaa !1
  %oi_profile = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %79, i32 0, i32 3
  %80 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %oi_profile, align 8, !tbaa !94
  %cmp149 = icmp ne %struct.cmm_profile_s* %80, null
  br i1 %cmp149, label %if.then.150, label %if.end.195

if.then.150:                                      ; preds = %if.end.148
  br label %do.body.151

do.body.151:                                      ; preds = %if.then.150
  br label %do.cond.152

do.cond.152:                                      ; preds = %do.body.151
  br label %do.end.153

do.end.153:                                       ; preds = %do.cond.152
  br label %do.body.154

do.body.154:                                      ; preds = %do.end.153
  %81 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct, align 8, !tbaa !1
  %oi_profile155 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %81, i32 0, i32 3
  %82 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %oi_profile155, align 8, !tbaa !94
  %tobool156 = icmp ne %struct.cmm_profile_s* %82, null
  br i1 %tobool156, label %if.then.157, label %if.end.192

if.then.157:                                      ; preds = %do.body.154
  br label %do.body.158

do.body.158:                                      ; preds = %if.then.157
  br label %do.body.159

do.body.159:                                      ; preds = %do.body.158
  br label %do.cond.160

do.cond.160:                                      ; preds = %do.body.159
  br label %do.end.161

do.end.161:                                       ; preds = %do.cond.160
  %83 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct, align 8, !tbaa !1
  %oi_profile162 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %83, i32 0, i32 3
  %84 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %oi_profile162, align 8, !tbaa !94
  %rc163 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %84, i32 0, i32 18
  %ref_count164 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc163, i32 0, i32 0
  %85 = load i64, i64* %ref_count164, align 8, !tbaa !35
  %add165 = add nsw i64 %85, -1
  store i64 %add165, i64* %ref_count164, align 8, !tbaa !35
  br label %do.cond.166

do.cond.166:                                      ; preds = %do.end.161
  br label %do.end.167

do.end.167:                                       ; preds = %do.cond.166
  %86 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct, align 8, !tbaa !1
  %oi_profile168 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %86, i32 0, i32 3
  %87 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %oi_profile168, align 8, !tbaa !94
  %rc169 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %87, i32 0, i32 18
  %ref_count170 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc169, i32 0, i32 0
  %88 = load i64, i64* %ref_count170, align 8, !tbaa !35
  %tobool171 = icmp ne i64 %88, 0
  br i1 %tobool171, label %if.else.187, label %if.then.172

if.then.172:                                      ; preds = %do.end.167
  br label %do.body.173

do.body.173:                                      ; preds = %if.then.172
  br label %do.body.174

do.body.174:                                      ; preds = %do.body.173
  br label %do.cond.175

do.cond.175:                                      ; preds = %do.body.174
  br label %do.end.176

do.end.176:                                       ; preds = %do.cond.175
  %89 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct, align 8, !tbaa !1
  %oi_profile177 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %89, i32 0, i32 3
  %90 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %oi_profile177, align 8, !tbaa !94
  %rc178 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %90, i32 0, i32 18
  %free179 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc178, i32 0, i32 2
  %91 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free179, align 8, !tbaa !37
  %92 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct, align 8, !tbaa !1
  %oi_profile180 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %92, i32 0, i32 3
  %93 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %oi_profile180, align 8, !tbaa !94
  %rc181 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %93, i32 0, i32 18
  %memory182 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc181, i32 0, i32 1
  %94 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory182, align 8, !tbaa !36
  %95 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct, align 8, !tbaa !1
  %oi_profile183 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %95, i32 0, i32 3
  %96 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %oi_profile183, align 8, !tbaa !94
  %97 = bitcast %struct.cmm_profile_s* %96 to i8*
  call void %91(%struct.gs_memory_s* %94, i8* %97, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.85, i32 0, i32 0)) #5
  br label %do.cond.184

do.cond.184:                                      ; preds = %do.end.176
  br label %do.end.185

do.end.185:                                       ; preds = %do.cond.184
  %98 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct, align 8, !tbaa !1
  %oi_profile186 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %98, i32 0, i32 3
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %oi_profile186, align 8, !tbaa !94
  br label %if.end.191

if.else.187:                                      ; preds = %do.end.167
  br label %do.body.188

do.body.188:                                      ; preds = %if.else.187
  br label %do.cond.189

do.cond.189:                                      ; preds = %do.body.188
  br label %do.end.190

do.end.190:                                       ; preds = %do.cond.189
  br label %if.end.191

if.end.191:                                       ; preds = %do.end.190, %do.end.185
  br label %if.end.192

if.end.192:                                       ; preds = %if.end.191, %do.body.154
  br label %do.cond.193

do.cond.193:                                      ; preds = %if.end.192
  br label %do.end.194

do.end.194:                                       ; preds = %do.cond.193
  br label %if.end.195

if.end.195:                                       ; preds = %do.end.194, %if.end.148
  %99 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct, align 8, !tbaa !1
  %spotnames = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %99, i32 0, i32 11
  %100 = load %struct.gsicc_namelist_s*, %struct.gsicc_namelist_s** %spotnames, align 8, !tbaa !95
  %cmp196 = icmp ne %struct.gsicc_namelist_s* %100, null
  br i1 %cmp196, label %if.then.197, label %if.end.203

if.then.197:                                      ; preds = %if.end.195
  br label %do.body.198

do.body.198:                                      ; preds = %if.then.197
  br label %do.cond.199

do.cond.199:                                      ; preds = %do.body.198
  br label %do.end.200

do.end.200:                                       ; preds = %do.cond.199
  %101 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct, align 8, !tbaa !1
  %spotnames201 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %101, i32 0, i32 11
  %102 = load %struct.gsicc_namelist_s*, %struct.gsicc_namelist_s** %spotnames201, align 8, !tbaa !95
  %103 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem_nongc, align 8, !tbaa !1
  call void @gsicc_free_spotnames(%struct.gsicc_namelist_s* %102, %struct.gs_memory_s* %103) #5
  %104 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem_nongc, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %104, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %105 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !31
  %106 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem_nongc, align 8, !tbaa !1
  %107 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct, align 8, !tbaa !1
  %spotnames202 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %107, i32 0, i32 11
  %108 = load %struct.gsicc_namelist_s*, %struct.gsicc_namelist_s** %spotnames202, align 8, !tbaa !95
  %109 = bitcast %struct.gsicc_namelist_s* %108 to i8*
  call void %105(%struct.gs_memory_s* %106, i8* %109, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.85, i32 0, i32 0)) #5
  br label %if.end.203

if.end.203:                                       ; preds = %do.end.200, %if.end.195
  br label %do.body.204

do.body.204:                                      ; preds = %if.end.203
  br label %do.cond.205

do.cond.205:                                      ; preds = %do.body.204
  br label %do.end.206

do.end.206:                                       ; preds = %do.cond.205
  %110 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem_nongc, align 8, !tbaa !1
  %procs207 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %110, i32 0, i32 1
  %free_object208 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs207, i32 0, i32 2
  %111 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object208, align 8, !tbaa !31
  %112 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem_nongc, align 8, !tbaa !1
  %113 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct, align 8, !tbaa !1
  %114 = bitcast %struct.cmm_dev_profile_s* %113 to i8*
  call void %111(%struct.gs_memory_s* %112, i8* %114, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.85, i32 0, i32 0)) #5
  br label %if.end.209

if.end.209:                                       ; preds = %do.end.206, %entry
  %115 = bitcast %struct.gs_memory_s** %mem_nongc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %115) #1
  %116 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %116) #1
  %117 = bitcast %struct.cmm_dev_profile_s** %icc_struct to i8*
  call void @llvm.lifetime.end(i64 8, i8* %117) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gsicc_set_device_blackpreserve(%struct.gx_device_s* %dev, i32 %blackpreserve, i32 %profile_type) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %blackpreserve.addr = alloca i32, align 4
  %profile_type.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %profile_struct = alloca %struct.cmm_dev_profile_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %blackpreserve, i32* %blackpreserve.addr, align 4, !tbaa !5
  store i32 %profile_type, i32* %profile_type.addr, align 4, !tbaa !5
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.cmm_dev_profile_s** %profile_struct to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %2, i32 0, i32 42
  %get_profile = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 67
  %3 = load i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile, align 8, !tbaa !106
  %cmp = icmp eq i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* %3, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %icc_struct = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %4, i32 0, i32 39
  %5 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct, align 8, !tbaa !117
  store %struct.cmm_dev_profile_s* %5, %struct.cmm_dev_profile_s** %profile_struct, align 8, !tbaa !1
  br label %if.end.5

if.else:                                          ; preds = %entry
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %6, i32 0, i32 42
  %get_profile2 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs1, i32 0, i32 67
  %7 = load i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile2, align 8, !tbaa !106
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call i32 %7(%struct.gx_device_s* %8, %struct.cmm_dev_profile_s** %profile_struct) #5
  store i32 %call, i32* %code, align 4, !tbaa !13
  %9 = load i32, i32* %code, align 4, !tbaa !13
  %cmp3 = icmp slt i32 %9, 0
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.else
  %10 = load i32, i32* %code, align 4, !tbaa !13
  store i32 %10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.else
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  %11 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %profile_struct, align 8, !tbaa !1
  %cmp6 = icmp eq %struct.cmm_dev_profile_s* %11, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.end.5
  %12 = load i32, i32* %blackpreserve.addr, align 4, !tbaa !5
  %13 = load i32, i32* %profile_type.addr, align 4, !tbaa !5
  %idxprom = zext i32 %13 to i64
  %14 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %profile_struct, align 8, !tbaa !1
  %rendercond = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %14, i32 0, i32 4
  %arrayidx = getelementptr inbounds [4 x %struct.gsicc_rendering_param_s], [4 x %struct.gsicc_rendering_param_s]* %rendercond, i32 0, i64 %idxprom
  %preserve_black = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %arrayidx, i32 0, i32 2
  store i32 %12, i32* %preserve_black, align 4, !tbaa !84
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.8, %if.then.7, %if.then.4
  %15 = bitcast %struct.cmm_dev_profile_s** %profile_struct to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  %16 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #1
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define i32 @gsicc_set_device_profile_intent(%struct.gx_device_s* %dev, i32 %intent, i32 %profile_type) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %intent.addr = alloca i32, align 4
  %profile_type.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %profile_struct = alloca %struct.cmm_dev_profile_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %intent, i32* %intent.addr, align 4, !tbaa !5
  store i32 %profile_type, i32* %profile_type.addr, align 4, !tbaa !5
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.cmm_dev_profile_s** %profile_struct to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %2, i32 0, i32 42
  %get_profile = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 67
  %3 = load i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile, align 8, !tbaa !106
  %cmp = icmp eq i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* %3, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %icc_struct = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %4, i32 0, i32 39
  %5 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct, align 8, !tbaa !117
  store %struct.cmm_dev_profile_s* %5, %struct.cmm_dev_profile_s** %profile_struct, align 8, !tbaa !1
  br label %if.end.5

if.else:                                          ; preds = %entry
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %6, i32 0, i32 42
  %get_profile2 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs1, i32 0, i32 67
  %7 = load i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile2, align 8, !tbaa !106
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call i32 %7(%struct.gx_device_s* %8, %struct.cmm_dev_profile_s** %profile_struct) #5
  store i32 %call, i32* %code, align 4, !tbaa !13
  %9 = load i32, i32* %code, align 4, !tbaa !13
  %cmp3 = icmp slt i32 %9, 0
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.else
  %10 = load i32, i32* %code, align 4, !tbaa !13
  store i32 %10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.else
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  %11 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %profile_struct, align 8, !tbaa !1
  %cmp6 = icmp eq %struct.cmm_dev_profile_s* %11, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.end.5
  %12 = load i32, i32* %intent.addr, align 4, !tbaa !5
  %13 = load i32, i32* %profile_type.addr, align 4, !tbaa !5
  %idxprom = zext i32 %13 to i64
  %14 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %profile_struct, align 8, !tbaa !1
  %rendercond = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %14, i32 0, i32 4
  %arrayidx = getelementptr inbounds [4 x %struct.gsicc_rendering_param_s], [4 x %struct.gsicc_rendering_param_s]* %rendercond, i32 0, i64 %idxprom
  %rendering_intent = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %arrayidx, i32 0, i32 0
  store i32 %12, i32* %rendering_intent, align 4, !tbaa !82
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.8, %if.then.7, %if.then.4
  %15 = bitcast %struct.cmm_dev_profile_s** %profile_struct to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  %16 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #1
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define i32 @gsicc_set_device_blackptcomp(%struct.gx_device_s* %dev, i32 %blackptcomp, i32 %profile_type) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %blackptcomp.addr = alloca i32, align 4
  %profile_type.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %profile_struct = alloca %struct.cmm_dev_profile_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %blackptcomp, i32* %blackptcomp.addr, align 4, !tbaa !5
  store i32 %profile_type, i32* %profile_type.addr, align 4, !tbaa !5
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %code, align 4, !tbaa !13
  %1 = bitcast %struct.cmm_dev_profile_s** %profile_struct to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %2, i32 0, i32 42
  %get_profile = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 67
  %3 = load i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile, align 8, !tbaa !106
  %cmp = icmp eq i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* %3, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %icc_struct = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %4, i32 0, i32 39
  %5 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct, align 8, !tbaa !117
  store %struct.cmm_dev_profile_s* %5, %struct.cmm_dev_profile_s** %profile_struct, align 8, !tbaa !1
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %6, i32 0, i32 42
  %get_profile2 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs1, i32 0, i32 67
  %7 = load i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile2, align 8, !tbaa !106
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call i32 %7(%struct.gx_device_s* %8, %struct.cmm_dev_profile_s** %profile_struct) #5
  store i32 %call, i32* %code, align 4, !tbaa !13
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %profile_struct, align 8, !tbaa !1
  %cmp3 = icmp eq %struct.cmm_dev_profile_s* %9, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  %10 = load i32, i32* %blackptcomp.addr, align 4, !tbaa !5
  %11 = load i32, i32* %profile_type.addr, align 4, !tbaa !5
  %idxprom = zext i32 %11 to i64
  %12 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %profile_struct, align 8, !tbaa !1
  %rendercond = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %12, i32 0, i32 4
  %arrayidx = getelementptr inbounds [4 x %struct.gsicc_rendering_param_s], [4 x %struct.gsicc_rendering_param_s]* %rendercond, i32 0, i64 %idxprom
  %black_point_comp = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %arrayidx, i32 0, i32 1
  store i32 %10, i32* %black_point_comp, align 4, !tbaa !81
  %13 = load i32, i32* %code, align 4, !tbaa !13
  store i32 %13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.5, %if.then.4
  %14 = bitcast %struct.cmm_dev_profile_s** %profile_struct to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  %15 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #1
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define i32 @gsicc_set_devicen_equiv_colors(%struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis, %struct.cmm_profile_s* %profile) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %profile.addr = alloca %struct.cmm_profile_s*, align 8
  %temp_state = alloca %struct.gs_state_s, align 8
  %pcspace = alloca %struct.gs_color_space_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.cmm_profile_s* %profile, %struct.cmm_profile_s** %profile.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_state_s* %temp_state to i8*
  call void @llvm.lifetime.start(i64 1920, i8* %0) #1
  %1 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_imager_state_s* %1 to %struct.gs_state_s*
  %3 = bitcast %struct.gs_state_s* %temp_state to i8*
  %4 = bitcast %struct.gs_state_s* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 1920, i32 8, i1 false), !tbaa.struct !118
  %5 = bitcast %struct.gs_color_space_s** %pcspace to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %6, i32 0, i32 1
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !123
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %7, i32 0, i32 3
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !32
  %call = call %struct.gs_color_space_s* @gs_cspace_alloc(%struct.gs_memory_s* %8, %struct.gs_color_space_type_s* @gs_color_space_type_ICC) #5
  store %struct.gs_color_space_s* %call, %struct.gs_color_space_s** %pcspace, align 8, !tbaa !1
  %9 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcspace, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_color_space_s* %9, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gsicc_set_devicen_equiv_colors, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 1293, i32 0, i32 -25, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.31, i32 0, i32 0)) #5
  store i32 %call1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %profile.addr, align 8, !tbaa !1
  %11 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcspace, align 8, !tbaa !1
  %cmm_icc_profile_data = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %11, i32 0, i32 6
  store %struct.cmm_profile_s* %10, %struct.cmm_profile_s** %cmm_icc_profile_data, align 8, !tbaa !135
  %12 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcspace, align 8, !tbaa !1
  %color = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %temp_state, i32 0, i32 69
  %arrayidx = getelementptr inbounds [2 x %struct.anon.2], [2 x %struct.anon.2]* %color, i32 0, i64 0
  %color_space = getelementptr inbounds %struct.anon.2, %struct.anon.2* %arrayidx, i32 0, i32 0
  store %struct.gs_color_space_s* %12, %struct.gs_color_space_s** %color_space, align 8, !tbaa !137
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %13, i32 0, i32 42
  %update_spot_equivalent_colors = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 59
  %14 = load i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)** %update_spot_equivalent_colors, align 8, !tbaa !139
  %15 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call2 = call i32 %14(%struct.gx_device_s* %15, %struct.gs_state_s* %temp_state) #5
  store i32 %call2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %16 = bitcast %struct.gs_color_space_s** %pcspace to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  %17 = bitcast %struct.gs_state_s* %temp_state to i8*
  call void @llvm.lifetime.end(i64 1920, i8* %17) #1
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare %struct.gs_color_space_s* @gs_cspace_alloc(%struct.gs_memory_s*, %struct.gs_color_space_type_s*) #2

; Function Attrs: nounwind uwtable
define i32 @gsicc_set_device_profile_colorants(%struct.gx_device_s* %dev, i8* %name_str) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %name_str.addr = alloca i8*, align 8
  %code = alloca i32, align 4
  %profile_struct = alloca %struct.cmm_dev_profile_s*, align 8
  %name_entry = alloca %struct.gsicc_colorname_s*, align 8
  %curr_entry = alloca %struct.gsicc_colorname_s**, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %temp_ptr = alloca i8*, align 8
  %done = alloca i32, align 4
  %spot_names = alloca %struct.gsicc_namelist_s*, align 8
  %pch = alloca i8*, align 8
  %str_len = alloca i32, align 4
  %k = alloca i32, align 4
  %free_str = alloca i32, align 4
  %count = alloca i32, align 4
  %total_len = alloca i32, align 4
  %kk = alloca i32, align 4
  %num_comps = alloca i32, align 4
  %temp_str = alloca [14 x i8], align 1
  %cleanup.dest.slot = alloca i32
  %colorant_number = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %name_str, i8** %name_str.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.cmm_dev_profile_s** %profile_struct to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast %struct.gsicc_colorname_s** %name_entry to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast %struct.gsicc_colorname_s*** %curr_entry to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i8** %temp_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i32* %done to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast %struct.gsicc_namelist_s** %spot_names to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast i8** %pch to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast i32* %str_len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %free_str to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  store i32 0, i32* %free_str, align 4, !tbaa !13
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %12, i32 0, i32 42
  %get_profile = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 67
  %13 = load i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile, align 8, !tbaa !106
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call i32 %13(%struct.gx_device_s* %14, %struct.cmm_dev_profile_s** %profile_struct) #5
  store i32 %call, i32* %code, align 4, !tbaa !13
  %15 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %profile_struct, align 8, !tbaa !1
  %cmp = icmp ne %struct.cmm_dev_profile_s* %15, null
  br i1 %cmp, label %if.then, label %if.end.156

if.then:                                          ; preds = %entry
  %16 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  store i32 0, i32* %count, align 4, !tbaa !13
  %17 = load i8*, i8** %name_str.addr, align 8, !tbaa !1
  %cmp1 = icmp eq i8* %17, null
  br i1 %cmp1, label %if.then.2, label %if.end.27

if.then.2:                                        ; preds = %if.then
  %18 = bitcast i32* %total_len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = bitcast i32* %kk to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  %20 = bitcast i32* %num_comps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %profile_struct, align 8, !tbaa !1
  %device_profile = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %21, i32 0, i32 0
  %arrayidx = getelementptr inbounds [4 x %struct.cmm_profile_s*], [4 x %struct.cmm_profile_s*]* %device_profile, i32 0, i64 0
  %22 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %arrayidx, align 8, !tbaa !1
  %num_comps3 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %22, i32 0, i32 0
  %23 = load i8, i8* %num_comps3, align 1, !tbaa !6
  %conv = zext i8 %23 to i32
  store i32 %conv, i32* %num_comps, align 4, !tbaa !13
  %24 = bitcast [14 x i8]* %temp_str to i8*
  call void @llvm.lifetime.start(i64 14, i8* %24) #1
  store i32 1, i32* %free_str, align 4, !tbaa !13
  %25 = load i32, i32* %num_comps, align 4, !tbaa !13
  %sub = sub nsw i32 %25, 4
  %mul = mul nsw i32 13, %sub
  %add = add nsw i32 %mul, 30
  %sub4 = sub nsw i32 %add, 1
  store i32 %sub4, i32* %total_len, align 4, !tbaa !13
  %26 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %26, i32 0, i32 3
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !140
  %procs5 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %27, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs5, i32 0, i32 7
  %28 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !30
  %29 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory6 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %29, i32 0, i32 3
  %30 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory6, align 8, !tbaa !140
  %31 = load i32, i32* %total_len, align 4, !tbaa !13
  %add7 = add nsw i32 %31, 1
  %call8 = call i8* %28(%struct.gs_memory_s* %30, i32 %add7, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.32, i32 0, i32 0)) #5
  store i8* %call8, i8** %name_str.addr, align 8, !tbaa !1
  %32 = load i8*, i8** %name_str.addr, align 8, !tbaa !1
  %cmp9 = icmp eq i8* %32, null
  br i1 %cmp9, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %if.then.2
  %call12 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 1342, i32 0, i32 -25, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.33, i32 0, i32 0)) #5
  store i32 %call12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then.2
  %33 = load i8*, i8** %name_str.addr, align 8, !tbaa !1
  %call13 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %33, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.34, i32 0, i32 0)) #5
  store i32 0, i32* %kk, align 4, !tbaa !13
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %34 = load i32, i32* %kk, align 4, !tbaa !13
  %35 = load i32, i32* %num_comps, align 4, !tbaa !13
  %sub14 = sub nsw i32 %35, 5
  %cmp15 = icmp slt i32 %34, %sub14
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %temp_str, i32 0, i32 0
  %36 = load i32, i32* %kk, align 4, !tbaa !13
  %call17 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i32 0, i32 0), i32 %36) #5
  %37 = load i8*, i8** %name_str.addr, align 8, !tbaa !1
  %arraydecay18 = getelementptr inbounds [14 x i8], [14 x i8]* %temp_str, i32 0, i32 0
  %call19 = call i8* @strcat(i8* %37, i8* %arraydecay18) #6
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %38 = load i32, i32* %kk, align 4, !tbaa !13
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %kk, align 4, !tbaa !13
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay20 = getelementptr inbounds [14 x i8], [14 x i8]* %temp_str, i32 0, i32 0
  %39 = load i32, i32* %kk, align 4, !tbaa !13
  %call21 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.36, i32 0, i32 0), i32 %39) #5
  %40 = load i8*, i8** %name_str.addr, align 8, !tbaa !1
  %arraydecay22 = getelementptr inbounds [14 x i8], [14 x i8]* %temp_str, i32 0, i32 0
  %call23 = call i8* @strcat(i8* %40, i8* %arraydecay22) #6
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.11
  %41 = bitcast [14 x i8]* %temp_str to i8*
  call void @llvm.lifetime.end(i64 14, i8* %41) #1
  %42 = bitcast i32* %num_comps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #1
  %43 = bitcast i32* %kk to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #1
  %44 = bitcast i32* %total_len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.153 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.27

if.end.27:                                        ; preds = %cleanup.cont, %if.then
  %45 = load i8*, i8** %name_str.addr, align 8, !tbaa !1
  %call28 = call i64 @strlen(i8* %45) #7
  %conv29 = trunc i64 %call28 to i32
  store i32 %conv29, i32* %str_len, align 4, !tbaa !13
  %46 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %profile_struct, align 8, !tbaa !1
  %spotnames = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %46, i32 0, i32 11
  %47 = load %struct.gsicc_namelist_s*, %struct.gsicc_namelist_s** %spotnames, align 8, !tbaa !95
  %cmp30 = icmp ne %struct.gsicc_namelist_s* %47, null
  br i1 %cmp30, label %land.lhs.true, label %if.end.57

land.lhs.true:                                    ; preds = %if.end.27
  %48 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %profile_struct, align 8, !tbaa !1
  %spotnames32 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %48, i32 0, i32 11
  %49 = load %struct.gsicc_namelist_s*, %struct.gsicc_namelist_s** %spotnames32, align 8, !tbaa !95
  %name_str33 = getelementptr inbounds %struct.gsicc_namelist_s, %struct.gsicc_namelist_s* %49, i32 0, i32 2
  %50 = load i8*, i8** %name_str33, align 8, !tbaa !141
  %cmp34 = icmp ne i8* %50, null
  br i1 %cmp34, label %land.lhs.true.36, label %if.end.57

land.lhs.true.36:                                 ; preds = %land.lhs.true
  %51 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %profile_struct, align 8, !tbaa !1
  %spotnames37 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %51, i32 0, i32 11
  %52 = load %struct.gsicc_namelist_s*, %struct.gsicc_namelist_s** %spotnames37, align 8, !tbaa !95
  %name_str38 = getelementptr inbounds %struct.gsicc_namelist_s, %struct.gsicc_namelist_s* %52, i32 0, i32 2
  %53 = load i8*, i8** %name_str38, align 8, !tbaa !141
  %call39 = call i64 @strlen(i8* %53) #7
  %54 = load i32, i32* %str_len, align 4, !tbaa !13
  %conv40 = sext i32 %54 to i64
  %cmp41 = icmp eq i64 %call39, %conv40
  br i1 %cmp41, label %if.then.43, label %if.end.57

if.then.43:                                       ; preds = %land.lhs.true.36
  %55 = load i8*, i8** %name_str.addr, align 8, !tbaa !1
  %56 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %profile_struct, align 8, !tbaa !1
  %spotnames44 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %56, i32 0, i32 11
  %57 = load %struct.gsicc_namelist_s*, %struct.gsicc_namelist_s** %spotnames44, align 8, !tbaa !95
  %name_str45 = getelementptr inbounds %struct.gsicc_namelist_s, %struct.gsicc_namelist_s* %57, i32 0, i32 2
  %58 = load i8*, i8** %name_str45, align 8, !tbaa !141
  %59 = load i32, i32* %str_len, align 4, !tbaa !13
  %conv46 = sext i32 %59 to i64
  %call47 = call i32 @strncmp(i8* %55, i8* %58, i64 %conv46) #7
  %cmp48 = icmp eq i32 %call47, 0
  br i1 %cmp48, label %if.then.50, label %if.end.56

if.then.50:                                       ; preds = %if.then.43
  %60 = load i32, i32* %free_str, align 4, !tbaa !13
  %tobool = icmp ne i32 %60, 0
  br i1 %tobool, label %if.then.51, label %if.end.55

if.then.51:                                       ; preds = %if.then.50
  %61 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory52 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %61, i32 0, i32 3
  %62 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory52, align 8, !tbaa !140
  %procs53 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %62, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs53, i32 0, i32 2
  %63 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !31
  %64 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory54 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %64, i32 0, i32 3
  %65 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory54, align 8, !tbaa !140
  %66 = load i8*, i8** %name_str.addr, align 8, !tbaa !1
  call void %63(%struct.gs_memory_s* %65, i8* %66, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.32, i32 0, i32 0)) #5
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.51, %if.then.50
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.153

if.end.56:                                        ; preds = %if.then.43
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %land.lhs.true.36, %land.lhs.true, %if.end.27
  %67 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory58 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %67, i32 0, i32 3
  %68 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory58, align 8, !tbaa !140
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %68, i32 0, i32 3
  %69 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !32
  store %struct.gs_memory_s* %69, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %70 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %profile_struct, align 8, !tbaa !1
  %spotnames59 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %70, i32 0, i32 11
  %71 = load %struct.gsicc_namelist_s*, %struct.gsicc_namelist_s** %spotnames59, align 8, !tbaa !95
  %cmp60 = icmp ne %struct.gsicc_namelist_s* %71, null
  br i1 %cmp60, label %if.then.62, label %if.end.67

if.then.62:                                       ; preds = %if.end.57
  %72 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %profile_struct, align 8, !tbaa !1
  %spotnames63 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %72, i32 0, i32 11
  %73 = load %struct.gsicc_namelist_s*, %struct.gsicc_namelist_s** %spotnames63, align 8, !tbaa !95
  %74 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  call void @gsicc_free_spotnames(%struct.gsicc_namelist_s* %73, %struct.gs_memory_s* %74) #5
  %75 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs64 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %75, i32 0, i32 1
  %free_object65 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs64, i32 0, i32 2
  %76 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object65, align 8, !tbaa !31
  %77 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %78 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %profile_struct, align 8, !tbaa !1
  %spotnames66 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %78, i32 0, i32 11
  %79 = load %struct.gsicc_namelist_s*, %struct.gsicc_namelist_s** %spotnames66, align 8, !tbaa !95
  %80 = bitcast %struct.gsicc_namelist_s* %79 to i8*
  call void %76(%struct.gs_memory_s* %77, i8* %80, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.32, i32 0, i32 0)) #5
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.62, %if.end.57
  %81 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call68 = call %struct.gsicc_namelist_s* @gsicc_new_namelist(%struct.gs_memory_s* %81) #5
  store %struct.gsicc_namelist_s* %call68, %struct.gsicc_namelist_s** %spot_names, align 8, !tbaa !1
  %82 = load %struct.gsicc_namelist_s*, %struct.gsicc_namelist_s** %spot_names, align 8, !tbaa !1
  %83 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %profile_struct, align 8, !tbaa !1
  %spotnames69 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %83, i32 0, i32 11
  store %struct.gsicc_namelist_s* %82, %struct.gsicc_namelist_s** %spotnames69, align 8, !tbaa !95
  %84 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs70 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %84, i32 0, i32 1
  %alloc_bytes71 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs70, i32 0, i32 7
  %85 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes71, align 8, !tbaa !30
  %86 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %87 = load i32, i32* %str_len, align 4, !tbaa !13
  %add72 = add nsw i32 %87, 1
  %call73 = call i8* %85(%struct.gs_memory_s* %86, i32 %add72, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.32, i32 0, i32 0)) #5
  %88 = load %struct.gsicc_namelist_s*, %struct.gsicc_namelist_s** %spot_names, align 8, !tbaa !1
  %name_str74 = getelementptr inbounds %struct.gsicc_namelist_s, %struct.gsicc_namelist_s* %88, i32 0, i32 2
  store i8* %call73, i8** %name_str74, align 8, !tbaa !141
  %89 = load %struct.gsicc_namelist_s*, %struct.gsicc_namelist_s** %spot_names, align 8, !tbaa !1
  %name_str75 = getelementptr inbounds %struct.gsicc_namelist_s, %struct.gsicc_namelist_s* %89, i32 0, i32 2
  %90 = load i8*, i8** %name_str75, align 8, !tbaa !141
  %cmp76 = icmp eq i8* %90, null
  br i1 %cmp76, label %if.then.78, label %if.end.80

if.then.78:                                       ; preds = %if.end.67
  %call79 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 1378, i32 0, i32 -25, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.37, i32 0, i32 0)) #5
  store i32 %call79, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.153

if.end.80:                                        ; preds = %if.end.67
  %91 = load %struct.gsicc_namelist_s*, %struct.gsicc_namelist_s** %spot_names, align 8, !tbaa !1
  %name_str81 = getelementptr inbounds %struct.gsicc_namelist_s, %struct.gsicc_namelist_s* %91, i32 0, i32 2
  %92 = load i8*, i8** %name_str81, align 8, !tbaa !141
  %93 = load i8*, i8** %name_str.addr, align 8, !tbaa !1
  %94 = load i8*, i8** %name_str.addr, align 8, !tbaa !1
  %call82 = call i64 @strlen(i8* %94) #7
  %call83 = call i8* @memcpy(i8* %92, i8* %93, i64 %call82) #6
  %95 = load i32, i32* %str_len, align 4, !tbaa !13
  %idxprom = sext i32 %95 to i64
  %96 = load %struct.gsicc_namelist_s*, %struct.gsicc_namelist_s** %spot_names, align 8, !tbaa !1
  %name_str84 = getelementptr inbounds %struct.gsicc_namelist_s, %struct.gsicc_namelist_s* %96, i32 0, i32 2
  %97 = load i8*, i8** %name_str84, align 8, !tbaa !141
  %arrayidx85 = getelementptr inbounds i8, i8* %97, i64 %idxprom
  store i8 0, i8* %arrayidx85, align 1, !tbaa !5
  %98 = load %struct.gsicc_namelist_s*, %struct.gsicc_namelist_s** %spot_names, align 8, !tbaa !1
  %head = getelementptr inbounds %struct.gsicc_namelist_s, %struct.gsicc_namelist_s* %98, i32 0, i32 1
  store %struct.gsicc_colorname_s** %head, %struct.gsicc_colorname_s*** %curr_entry, align 8, !tbaa !1
  %99 = load i8*, i8** %name_str.addr, align 8, !tbaa !1
  %call86 = call i8* @strtok(i8* %99, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i32 0, i32 0)) #6
  store i8* %call86, i8** %pch, align 8, !tbaa !1
  store i32 0, i32* %count, align 4, !tbaa !13
  br label %while.cond

while.cond:                                       ; preds = %if.end.109, %if.end.80
  %100 = load i8*, i8** %pch, align 8, !tbaa !1
  %cmp87 = icmp ne i8* %100, null
  br i1 %cmp87, label %while.body, label %while.end.116

while.body:                                       ; preds = %while.cond
  %101 = load i8*, i8** %pch, align 8, !tbaa !1
  store i8* %101, i8** %temp_ptr, align 8, !tbaa !1
  store i32 0, i32* %done, align 4, !tbaa !13
  br label %while.cond.89

while.cond.89:                                    ; preds = %if.end.96, %while.body
  %102 = load i32, i32* %done, align 4, !tbaa !13
  %tobool90 = icmp ne i32 %102, 0
  %lnot = xor i1 %tobool90, true
  br i1 %lnot, label %while.body.91, label %while.end

while.body.91:                                    ; preds = %while.cond.89
  %103 = load i8*, i8** %temp_ptr, align 8, !tbaa !1
  %104 = load i8, i8* %103, align 1, !tbaa !5
  %conv92 = sext i8 %104 to i32
  %cmp93 = icmp eq i32 %conv92, 32
  br i1 %cmp93, label %if.then.95, label %if.else

if.then.95:                                       ; preds = %while.body.91
  %105 = load i8*, i8** %temp_ptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %incdec.ptr, i8** %temp_ptr, align 8, !tbaa !1
  br label %if.end.96

if.else:                                          ; preds = %while.body.91
  store i32 1, i32* %done, align 4, !tbaa !13
  br label %if.end.96

if.end.96:                                        ; preds = %if.else, %if.then.95
  br label %while.cond.89

while.end:                                        ; preds = %while.cond.89
  %106 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call97 = call %struct.gsicc_colorname_s* @gsicc_new_colorname(%struct.gs_memory_s* %106) #5
  store %struct.gsicc_colorname_s* %call97, %struct.gsicc_colorname_s** %name_entry, align 8, !tbaa !1
  %107 = load %struct.gsicc_colorname_s*, %struct.gsicc_colorname_s** %name_entry, align 8, !tbaa !1
  %108 = load %struct.gsicc_colorname_s**, %struct.gsicc_colorname_s*** %curr_entry, align 8, !tbaa !1
  store %struct.gsicc_colorname_s* %107, %struct.gsicc_colorname_s** %108, align 8, !tbaa !1
  %109 = load i8*, i8** %temp_ptr, align 8, !tbaa !1
  %call98 = call i64 @strlen(i8* %109) #7
  %conv99 = trunc i64 %call98 to i32
  %110 = load %struct.gsicc_colorname_s*, %struct.gsicc_colorname_s** %name_entry, align 8, !tbaa !1
  %length = getelementptr inbounds %struct.gsicc_colorname_s, %struct.gsicc_colorname_s* %110, i32 0, i32 1
  store i32 %conv99, i32* %length, align 4, !tbaa !142
  %111 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs100 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %111, i32 0, i32 1
  %alloc_bytes101 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs100, i32 0, i32 7
  %112 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes101, align 8, !tbaa !30
  %113 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %114 = load %struct.gsicc_colorname_s*, %struct.gsicc_colorname_s** %name_entry, align 8, !tbaa !1
  %length102 = getelementptr inbounds %struct.gsicc_colorname_s, %struct.gsicc_colorname_s* %114, i32 0, i32 1
  %115 = load i32, i32* %length102, align 4, !tbaa !142
  %call103 = call i8* %112(%struct.gs_memory_s* %113, i32 %115, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.32, i32 0, i32 0)) #5
  %116 = load %struct.gsicc_colorname_s*, %struct.gsicc_colorname_s** %name_entry, align 8, !tbaa !1
  %name = getelementptr inbounds %struct.gsicc_colorname_s, %struct.gsicc_colorname_s* %116, i32 0, i32 0
  store i8* %call103, i8** %name, align 8, !tbaa !67
  %117 = load %struct.gsicc_namelist_s*, %struct.gsicc_namelist_s** %spot_names, align 8, !tbaa !1
  %name_str104 = getelementptr inbounds %struct.gsicc_namelist_s, %struct.gsicc_namelist_s* %117, i32 0, i32 2
  %118 = load i8*, i8** %name_str104, align 8, !tbaa !141
  %cmp105 = icmp eq i8* %118, null
  br i1 %cmp105, label %if.then.107, label %if.end.109

if.then.107:                                      ; preds = %while.end
  %call108 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 1404, i32 0, i32 -25, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.37, i32 0, i32 0)) #5
  store i32 %call108, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.153

if.end.109:                                       ; preds = %while.end
  %119 = load %struct.gsicc_colorname_s*, %struct.gsicc_colorname_s** %name_entry, align 8, !tbaa !1
  %name110 = getelementptr inbounds %struct.gsicc_colorname_s, %struct.gsicc_colorname_s* %119, i32 0, i32 0
  %120 = load i8*, i8** %name110, align 8, !tbaa !67
  %121 = load i8*, i8** %temp_ptr, align 8, !tbaa !1
  %122 = load %struct.gsicc_colorname_s*, %struct.gsicc_colorname_s** %name_entry, align 8, !tbaa !1
  %length111 = getelementptr inbounds %struct.gsicc_colorname_s, %struct.gsicc_colorname_s* %122, i32 0, i32 1
  %123 = load i32, i32* %length111, align 4, !tbaa !142
  %conv112 = sext i32 %123 to i64
  %call113 = call i8* @memcpy(i8* %120, i8* %121, i64 %conv112) #6
  %124 = load %struct.gsicc_colorname_s**, %struct.gsicc_colorname_s*** %curr_entry, align 8, !tbaa !1
  %125 = load %struct.gsicc_colorname_s*, %struct.gsicc_colorname_s** %124, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.gsicc_colorname_s, %struct.gsicc_colorname_s* %125, i32 0, i32 2
  store %struct.gsicc_colorname_s** %next, %struct.gsicc_colorname_s*** %curr_entry, align 8, !tbaa !1
  %126 = load i32, i32* %count, align 4, !tbaa !13
  %add114 = add nsw i32 %126, 1
  store i32 %add114, i32* %count, align 4, !tbaa !13
  %call115 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i32 0, i32 0)) #6
  store i8* %call115, i8** %pch, align 8, !tbaa !1
  br label %while.cond

while.end.116:                                    ; preds = %while.cond
  %127 = load i32, i32* %count, align 4, !tbaa !13
  %128 = load %struct.gsicc_namelist_s*, %struct.gsicc_namelist_s** %spot_names, align 8, !tbaa !1
  %count117 = getelementptr inbounds %struct.gsicc_namelist_s, %struct.gsicc_namelist_s* %128, i32 0, i32 0
  store i32 %127, i32* %count117, align 4, !tbaa !143
  %129 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs118 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %129, i32 0, i32 1
  %alloc_bytes119 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs118, i32 0, i32 7
  %130 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes119, align 8, !tbaa !30
  %131 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call120 = call i8* %130(%struct.gs_memory_s* %131, i32 280, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.32, i32 0, i32 0)) #5
  %132 = bitcast i8* %call120 to %struct.gs_devicen_color_map_s*
  %133 = load %struct.gsicc_namelist_s*, %struct.gsicc_namelist_s** %spot_names, align 8, !tbaa !1
  %color_map = getelementptr inbounds %struct.gsicc_namelist_s, %struct.gsicc_namelist_s* %133, i32 0, i32 3
  store %struct.gs_devicen_color_map_s* %132, %struct.gs_devicen_color_map_s** %color_map, align 8, !tbaa !144
  %134 = load %struct.gsicc_namelist_s*, %struct.gsicc_namelist_s** %spot_names, align 8, !tbaa !1
  %color_map121 = getelementptr inbounds %struct.gsicc_namelist_s, %struct.gsicc_namelist_s* %134, i32 0, i32 3
  %135 = load %struct.gs_devicen_color_map_s*, %struct.gs_devicen_color_map_s** %color_map121, align 8, !tbaa !144
  %cmp122 = icmp eq %struct.gs_devicen_color_map_s* %135, null
  br i1 %cmp122, label %if.then.124, label %if.end.126

if.then.124:                                      ; preds = %while.end.116
  %call125 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 1422, i32 0, i32 -25, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.39, i32 0, i32 0)) #5
  store i32 %call125, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.153

if.end.126:                                       ; preds = %while.end.116
  %136 = load i32, i32* %count, align 4, !tbaa !13
  %137 = load %struct.gsicc_namelist_s*, %struct.gsicc_namelist_s** %spot_names, align 8, !tbaa !1
  %color_map127 = getelementptr inbounds %struct.gsicc_namelist_s, %struct.gsicc_namelist_s* %137, i32 0, i32 3
  %138 = load %struct.gs_devicen_color_map_s*, %struct.gs_devicen_color_map_s** %color_map127, align 8, !tbaa !144
  %num_colorants = getelementptr inbounds %struct.gs_devicen_color_map_s, %struct.gs_devicen_color_map_s* %138, i32 0, i32 3
  store i32 %136, i32* %num_colorants, align 4, !tbaa !145
  %139 = load i32, i32* %count, align 4, !tbaa !13
  %140 = load %struct.gsicc_namelist_s*, %struct.gsicc_namelist_s** %spot_names, align 8, !tbaa !1
  %color_map128 = getelementptr inbounds %struct.gsicc_namelist_s, %struct.gsicc_namelist_s* %140, i32 0, i32 3
  %141 = load %struct.gs_devicen_color_map_s*, %struct.gs_devicen_color_map_s** %color_map128, align 8, !tbaa !144
  %num_components = getelementptr inbounds %struct.gs_devicen_color_map_s, %struct.gs_devicen_color_map_s* %141, i32 0, i32 2
  store i32 %139, i32* %num_components, align 4, !tbaa !146
  %142 = load %struct.gsicc_namelist_s*, %struct.gsicc_namelist_s** %spot_names, align 8, !tbaa !1
  %head129 = getelementptr inbounds %struct.gsicc_namelist_s, %struct.gsicc_namelist_s* %142, i32 0, i32 1
  %143 = load %struct.gsicc_colorname_s*, %struct.gsicc_colorname_s** %head129, align 8, !tbaa !65
  store %struct.gsicc_colorname_s* %143, %struct.gsicc_colorname_s** %name_entry, align 8, !tbaa !1
  store i32 0, i32* %k, align 4, !tbaa !13
  br label %for.cond.130

for.cond.130:                                     ; preds = %for.inc.143, %if.end.126
  %144 = load i32, i32* %k, align 4, !tbaa !13
  %145 = load i32, i32* %count, align 4, !tbaa !13
  %cmp131 = icmp slt i32 %144, %145
  br i1 %cmp131, label %for.body.133, label %for.end.145

for.body.133:                                     ; preds = %for.cond.130
  %146 = bitcast i32* %colorant_number to i8*
  call void @llvm.lifetime.start(i64 4, i8* %146) #1
  %147 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs134 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %147, i32 0, i32 42
  %get_color_comp_index = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs134, i32 0, i32 50
  %148 = load i32 (%struct.gx_device_s*, i8*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32)** %get_color_comp_index, align 8, !tbaa !147
  %149 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %150 = load %struct.gsicc_colorname_s*, %struct.gsicc_colorname_s** %name_entry, align 8, !tbaa !1
  %name135 = getelementptr inbounds %struct.gsicc_colorname_s, %struct.gsicc_colorname_s* %150, i32 0, i32 0
  %151 = load i8*, i8** %name135, align 8, !tbaa !67
  %152 = load %struct.gsicc_colorname_s*, %struct.gsicc_colorname_s** %name_entry, align 8, !tbaa !1
  %length136 = getelementptr inbounds %struct.gsicc_colorname_s, %struct.gsicc_colorname_s* %152, i32 0, i32 1
  %153 = load i32, i32* %length136, align 4, !tbaa !142
  %call137 = call i32 %148(%struct.gx_device_s* %149, i8* %151, i32 %153, i32 1) #5
  store i32 %call137, i32* %colorant_number, align 4, !tbaa !13
  %154 = load %struct.gsicc_colorname_s*, %struct.gsicc_colorname_s** %name_entry, align 8, !tbaa !1
  %next138 = getelementptr inbounds %struct.gsicc_colorname_s, %struct.gsicc_colorname_s* %154, i32 0, i32 2
  %155 = load %struct.gsicc_colorname_s*, %struct.gsicc_colorname_s** %next138, align 8, !tbaa !69
  store %struct.gsicc_colorname_s* %155, %struct.gsicc_colorname_s** %name_entry, align 8, !tbaa !1
  %156 = load i32, i32* %colorant_number, align 4, !tbaa !13
  %157 = load i32, i32* %k, align 4, !tbaa !13
  %idxprom139 = sext i32 %157 to i64
  %158 = load %struct.gsicc_namelist_s*, %struct.gsicc_namelist_s** %spot_names, align 8, !tbaa !1
  %color_map140 = getelementptr inbounds %struct.gsicc_namelist_s, %struct.gsicc_namelist_s* %158, i32 0, i32 3
  %159 = load %struct.gs_devicen_color_map_s*, %struct.gs_devicen_color_map_s** %color_map140, align 8, !tbaa !144
  %color_map141 = getelementptr inbounds %struct.gs_devicen_color_map_s, %struct.gs_devicen_color_map_s* %159, i32 0, i32 5
  %arrayidx142 = getelementptr inbounds [64 x i32], [64 x i32]* %color_map141, i32 0, i64 %idxprom139
  store i32 %156, i32* %arrayidx142, align 4, !tbaa !13
  %160 = bitcast i32* %colorant_number to i8*
  call void @llvm.lifetime.end(i64 4, i8* %160) #1
  br label %for.inc.143

for.inc.143:                                      ; preds = %for.body.133
  %161 = load i32, i32* %k, align 4, !tbaa !13
  %inc144 = add nsw i32 %161, 1
  store i32 %inc144, i32* %k, align 4, !tbaa !13
  br label %for.cond.130

for.end.145:                                      ; preds = %for.cond.130
  %162 = load %struct.gsicc_namelist_s*, %struct.gsicc_namelist_s** %spot_names, align 8, !tbaa !1
  %equiv_cmyk_set = getelementptr inbounds %struct.gsicc_namelist_s, %struct.gsicc_namelist_s* %162, i32 0, i32 4
  store i32 0, i32* %equiv_cmyk_set, align 4, !tbaa !148
  %163 = load i32, i32* %free_str, align 4, !tbaa !13
  %tobool146 = icmp ne i32 %163, 0
  br i1 %tobool146, label %if.then.147, label %if.end.152

if.then.147:                                      ; preds = %for.end.145
  %164 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory148 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %164, i32 0, i32 3
  %165 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory148, align 8, !tbaa !140
  %procs149 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %165, i32 0, i32 1
  %free_object150 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs149, i32 0, i32 2
  %166 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object150, align 8, !tbaa !31
  %167 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory151 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %167, i32 0, i32 3
  %168 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory151, align 8, !tbaa !140
  %169 = load i8*, i8** %name_str.addr, align 8, !tbaa !1
  call void %166(%struct.gs_memory_s* %168, i8* %169, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.32, i32 0, i32 0)) #5
  br label %if.end.152

if.end.152:                                       ; preds = %if.then.147, %for.end.145
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.153

cleanup.153:                                      ; preds = %if.end.152, %if.then.124, %if.then.107, %if.then.78, %if.end.55, %cleanup
  %170 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %170) #1
  %cleanup.dest.154 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.154, label %cleanup.157 [
    i32 0, label %cleanup.cont.155
  ]

cleanup.cont.155:                                 ; preds = %cleanup.153
  br label %if.end.156

if.end.156:                                       ; preds = %cleanup.cont.155, %entry
  %171 = load i32, i32* %code, align 4, !tbaa !13
  store i32 %171, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.157

cleanup.157:                                      ; preds = %if.end.156, %cleanup.153
  %172 = bitcast i32* %free_str to i8*
  call void @llvm.lifetime.end(i64 4, i8* %172) #1
  %173 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %173) #1
  %174 = bitcast i32* %str_len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %174) #1
  %175 = bitcast i8** %pch to i8*
  call void @llvm.lifetime.end(i64 8, i8* %175) #1
  %176 = bitcast %struct.gsicc_namelist_s** %spot_names to i8*
  call void @llvm.lifetime.end(i64 8, i8* %176) #1
  %177 = bitcast i32* %done to i8*
  call void @llvm.lifetime.end(i64 4, i8* %177) #1
  %178 = bitcast i8** %temp_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %178) #1
  %179 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %179) #1
  %180 = bitcast %struct.gsicc_colorname_s*** %curr_entry to i8*
  call void @llvm.lifetime.end(i64 8, i8* %180) #1
  %181 = bitcast %struct.gsicc_colorname_s** %name_entry to i8*
  call void @llvm.lifetime.end(i64 8, i8* %181) #1
  %182 = bitcast %struct.cmm_dev_profile_s** %profile_struct to i8*
  call void @llvm.lifetime.end(i64 8, i8* %182) #1
  %183 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %183) #1
  %184 = load i32, i32* %retval
  ret i32 %184
}

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define internal void @gsicc_free_spotnames(%struct.gsicc_namelist_s* %spotnames, %struct.gs_memory_s* %mem) #0 {
entry:
  %spotnames.addr = alloca %struct.gsicc_namelist_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %k = alloca i32, align 4
  %curr_name = alloca %struct.gsicc_colorname_s*, align 8
  %next_name = alloca %struct.gsicc_colorname_s*, align 8
  store %struct.gsicc_namelist_s* %spotnames, %struct.gsicc_namelist_s** %spotnames.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.gsicc_colorname_s** %curr_name to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast %struct.gsicc_colorname_s** %next_name to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.gsicc_namelist_s*, %struct.gsicc_namelist_s** %spotnames.addr, align 8, !tbaa !1
  %head = getelementptr inbounds %struct.gsicc_namelist_s, %struct.gsicc_namelist_s* %3, i32 0, i32 1
  %4 = load %struct.gsicc_colorname_s*, %struct.gsicc_colorname_s** %head, align 8, !tbaa !65
  store %struct.gsicc_colorname_s* %4, %struct.gsicc_colorname_s** %curr_name, align 8, !tbaa !1
  store i32 0, i32* %k, align 4, !tbaa !13
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %k, align 4, !tbaa !13
  %6 = load %struct.gsicc_namelist_s*, %struct.gsicc_namelist_s** %spotnames.addr, align 8, !tbaa !1
  %count = getelementptr inbounds %struct.gsicc_namelist_s, %struct.gsicc_namelist_s* %6, i32 0, i32 0
  %7 = load i32, i32* %count, align 4, !tbaa !143
  %cmp = icmp slt i32 %5, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.gsicc_colorname_s*, %struct.gsicc_colorname_s** %curr_name, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.gsicc_colorname_s, %struct.gsicc_colorname_s* %8, i32 0, i32 2
  %9 = load %struct.gsicc_colorname_s*, %struct.gsicc_colorname_s** %next, align 8, !tbaa !69
  store %struct.gsicc_colorname_s* %9, %struct.gsicc_colorname_s** %next_name, align 8, !tbaa !1
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %10, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %11 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !31
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %13 = load %struct.gsicc_colorname_s*, %struct.gsicc_colorname_s** %curr_name, align 8, !tbaa !1
  %name = getelementptr inbounds %struct.gsicc_colorname_s, %struct.gsicc_colorname_s* %13, i32 0, i32 0
  %14 = load i8*, i8** %name, align 8, !tbaa !67
  call void %11(%struct.gs_memory_s* %12, i8* %14, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.86, i32 0, i32 0)) #5
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs1 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %15, i32 0, i32 1
  %free_object2 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs1, i32 0, i32 2
  %16 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object2, align 8, !tbaa !31
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %18 = load %struct.gsicc_colorname_s*, %struct.gsicc_colorname_s** %curr_name, align 8, !tbaa !1
  %19 = bitcast %struct.gsicc_colorname_s* %18 to i8*
  call void %16(%struct.gs_memory_s* %17, i8* %19, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.86, i32 0, i32 0)) #5
  %20 = load %struct.gsicc_colorname_s*, %struct.gsicc_colorname_s** %next_name, align 8, !tbaa !1
  store %struct.gsicc_colorname_s* %20, %struct.gsicc_colorname_s** %curr_name, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %k, align 4, !tbaa !13
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %k, align 4, !tbaa !13
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load %struct.gsicc_namelist_s*, %struct.gsicc_namelist_s** %spotnames.addr, align 8, !tbaa !1
  %color_map = getelementptr inbounds %struct.gsicc_namelist_s, %struct.gsicc_namelist_s* %22, i32 0, i32 3
  %23 = load %struct.gs_devicen_color_map_s*, %struct.gs_devicen_color_map_s** %color_map, align 8, !tbaa !144
  %cmp3 = icmp ne %struct.gs_devicen_color_map_s* %23, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %24 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs4 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %24, i32 0, i32 1
  %free_object5 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs4, i32 0, i32 2
  %25 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object5, align 8, !tbaa !31
  %26 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %27 = load %struct.gsicc_namelist_s*, %struct.gsicc_namelist_s** %spotnames.addr, align 8, !tbaa !1
  %color_map6 = getelementptr inbounds %struct.gsicc_namelist_s, %struct.gsicc_namelist_s* %27, i32 0, i32 3
  %28 = load %struct.gs_devicen_color_map_s*, %struct.gs_devicen_color_map_s** %color_map6, align 8, !tbaa !144
  %29 = bitcast %struct.gs_devicen_color_map_s* %28 to i8*
  call void %25(%struct.gs_memory_s* %26, i8* %29, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.86, i32 0, i32 0)) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %30 = load %struct.gsicc_namelist_s*, %struct.gsicc_namelist_s** %spotnames.addr, align 8, !tbaa !1
  %name_str = getelementptr inbounds %struct.gsicc_namelist_s, %struct.gsicc_namelist_s* %30, i32 0, i32 2
  %31 = load i8*, i8** %name_str, align 8, !tbaa !141
  %cmp7 = icmp ne i8* %31, null
  br i1 %cmp7, label %if.then.8, label %if.end.12

if.then.8:                                        ; preds = %if.end
  %32 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs9 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %32, i32 0, i32 1
  %free_object10 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs9, i32 0, i32 2
  %33 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object10, align 8, !tbaa !31
  %34 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %35 = load %struct.gsicc_namelist_s*, %struct.gsicc_namelist_s** %spotnames.addr, align 8, !tbaa !1
  %name_str11 = getelementptr inbounds %struct.gsicc_namelist_s, %struct.gsicc_namelist_s* %35, i32 0, i32 2
  %36 = load i8*, i8** %name_str11, align 8, !tbaa !141
  call void %33(%struct.gs_memory_s* %34, i8* %36, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.86, i32 0, i32 0)) #5
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.8, %if.end
  %37 = bitcast %struct.gsicc_colorname_s** %next_name to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  %38 = bitcast %struct.gsicc_colorname_s** %curr_name to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #1
  %39 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.gsicc_namelist_s* @gsicc_new_namelist(%struct.gs_memory_s* %memory) #0 {
entry:
  %retval = alloca %struct.gsicc_namelist_s*, align 8
  %memory.addr = alloca %struct.gs_memory_s*, align 8
  %result = alloca %struct.gsicc_namelist_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %memory, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gsicc_namelist_s** %result to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %1, i32 0, i32 3
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !32
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %2, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %3 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !30
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %non_gc_memory1 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %4, i32 0, i32 3
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory1, align 8, !tbaa !32
  %call = call i8* %3(%struct.gs_memory_s* %5, i32 40, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.87, i32 0, i32 0)) #5
  %6 = bitcast i8* %call to %struct.gsicc_namelist_s*
  store %struct.gsicc_namelist_s* %6, %struct.gsicc_namelist_s** %result, align 8, !tbaa !1
  %7 = load %struct.gsicc_namelist_s*, %struct.gsicc_namelist_s** %result, align 8, !tbaa !1
  %cmp = icmp eq %struct.gsicc_namelist_s* %7, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.gsicc_namelist_s* null, %struct.gsicc_namelist_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct.gsicc_namelist_s*, %struct.gsicc_namelist_s** %result, align 8, !tbaa !1
  %count = getelementptr inbounds %struct.gsicc_namelist_s, %struct.gsicc_namelist_s* %8, i32 0, i32 0
  store i32 0, i32* %count, align 4, !tbaa !143
  %9 = load %struct.gsicc_namelist_s*, %struct.gsicc_namelist_s** %result, align 8, !tbaa !1
  %head = getelementptr inbounds %struct.gsicc_namelist_s, %struct.gsicc_namelist_s* %9, i32 0, i32 1
  store %struct.gsicc_colorname_s* null, %struct.gsicc_colorname_s** %head, align 8, !tbaa !65
  %10 = load %struct.gsicc_namelist_s*, %struct.gsicc_namelist_s** %result, align 8, !tbaa !1
  %name_str = getelementptr inbounds %struct.gsicc_namelist_s, %struct.gsicc_namelist_s* %10, i32 0, i32 2
  store i8* null, i8** %name_str, align 8, !tbaa !141
  %11 = load %struct.gsicc_namelist_s*, %struct.gsicc_namelist_s** %result, align 8, !tbaa !1
  %color_map = getelementptr inbounds %struct.gsicc_namelist_s, %struct.gsicc_namelist_s* %11, i32 0, i32 3
  store %struct.gs_devicen_color_map_s* null, %struct.gs_devicen_color_map_s** %color_map, align 8, !tbaa !144
  %12 = load %struct.gsicc_namelist_s*, %struct.gsicc_namelist_s** %result, align 8, !tbaa !1
  store %struct.gsicc_namelist_s* %12, %struct.gsicc_namelist_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %13 = bitcast %struct.gsicc_namelist_s** %result to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #1
  %14 = load %struct.gsicc_namelist_s*, %struct.gsicc_namelist_s** %retval
  ret %struct.gsicc_namelist_s* %14
}

; Function Attrs: nounwind uwtable
define internal %struct.gsicc_colorname_s* @gsicc_new_colorname(%struct.gs_memory_s* %memory) #0 {
entry:
  %retval = alloca %struct.gsicc_colorname_s*, align 8
  %memory.addr = alloca %struct.gs_memory_s*, align 8
  %result = alloca %struct.gsicc_colorname_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %memory, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gsicc_colorname_s** %result to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %1, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %2 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !88
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %call = call i8* %2(%struct.gs_memory_s* %3, %struct.gs_memory_struct_type_s* @st_gsicc_colorname, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.88, i32 0, i32 0)) #5
  %4 = bitcast i8* %call to %struct.gsicc_colorname_s*
  store %struct.gsicc_colorname_s* %4, %struct.gsicc_colorname_s** %result, align 8, !tbaa !1
  %5 = load %struct.gsicc_colorname_s*, %struct.gsicc_colorname_s** %result, align 8, !tbaa !1
  %cmp = icmp eq %struct.gsicc_colorname_s* %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.gsicc_colorname_s* null, %struct.gsicc_colorname_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load %struct.gsicc_colorname_s*, %struct.gsicc_colorname_s** %result, align 8, !tbaa !1
  %length = getelementptr inbounds %struct.gsicc_colorname_s, %struct.gsicc_colorname_s* %6, i32 0, i32 1
  store i32 0, i32* %length, align 4, !tbaa !142
  %7 = load %struct.gsicc_colorname_s*, %struct.gsicc_colorname_s** %result, align 8, !tbaa !1
  %name = getelementptr inbounds %struct.gsicc_colorname_s, %struct.gsicc_colorname_s* %7, i32 0, i32 0
  store i8* null, i8** %name, align 8, !tbaa !67
  %8 = load %struct.gsicc_colorname_s*, %struct.gsicc_colorname_s** %result, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.gsicc_colorname_s, %struct.gsicc_colorname_s* %8, i32 0, i32 2
  store %struct.gsicc_colorname_s* null, %struct.gsicc_colorname_s** %next, align 8, !tbaa !69
  %9 = load %struct.gsicc_colorname_s*, %struct.gsicc_colorname_s** %result, align 8, !tbaa !1
  store %struct.gsicc_colorname_s* %9, %struct.gsicc_colorname_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %10 = bitcast %struct.gsicc_colorname_s** %result to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #1
  %11 = load %struct.gsicc_colorname_s*, %struct.gsicc_colorname_s** %retval
  ret %struct.gsicc_colorname_s* %11
}

; Function Attrs: nounwind uwtable
define i32 @gsicc_init_device_profile_struct(%struct.gx_device_s* %dev, i8* %profile_name, i32 %profile_type) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %profile_name.addr = alloca i8*, align 8
  %profile_type.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %curr_profile = alloca %struct.cmm_profile_s*, align 8
  %profile_struct = alloca %struct.cmm_dev_profile_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %profile_name, i8** %profile_name.addr, align 8, !tbaa !1
  store i32 %profile_type, i32* %profile_type.addr, align 4, !tbaa !5
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.cmm_profile_s** %curr_profile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast %struct.cmm_dev_profile_s** %profile_struct to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %icc_struct = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %3, i32 0, i32 39
  %4 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct, align 8, !tbaa !117
  store %struct.cmm_dev_profile_s* %4, %struct.cmm_dev_profile_s** %profile_struct, align 8, !tbaa !1
  %5 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %profile_struct, align 8, !tbaa !1
  %cmp = icmp ne %struct.cmm_dev_profile_s* %5, null
  br i1 %cmp, label %if.then, label %if.else.76

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %profile_type.addr, align 4, !tbaa !5
  %cmp1 = icmp ult i32 %6, 4
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %7 = load i32, i32* %profile_type.addr, align 4, !tbaa !5
  %idxprom = zext i32 %7 to i64
  %8 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %profile_struct, align 8, !tbaa !1
  %device_profile = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %8, i32 0, i32 0
  %arrayidx = getelementptr inbounds [4 x %struct.cmm_profile_s*], [4 x %struct.cmm_profile_s*]* %device_profile, i32 0, i64 %idxprom
  %9 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %arrayidx, align 8, !tbaa !1
  store %struct.cmm_profile_s* %9, %struct.cmm_profile_s** %curr_profile, align 8, !tbaa !1
  br label %if.end.6

if.else:                                          ; preds = %if.then
  %10 = load i32, i32* %profile_type.addr, align 4, !tbaa !5
  %cmp3 = icmp eq i32 %10, 4
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %if.else
  %11 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %profile_struct, align 8, !tbaa !1
  %proof_profile = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %11, i32 0, i32 1
  %12 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %proof_profile, align 8, !tbaa !92
  store %struct.cmm_profile_s* %12, %struct.cmm_profile_s** %curr_profile, align 8, !tbaa !1
  br label %if.end

if.else.5:                                        ; preds = %if.else
  %13 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %profile_struct, align 8, !tbaa !1
  %link_profile = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %13, i32 0, i32 2
  %14 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %link_profile, align 8, !tbaa !93
  store %struct.cmm_profile_s* %14, %struct.cmm_profile_s** %curr_profile, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then.2
  %15 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %curr_profile, align 8, !tbaa !1
  %cmp7 = icmp ne %struct.cmm_profile_s* %15, null
  br i1 %cmp7, label %if.then.8, label %if.end.75

if.then.8:                                        ; preds = %if.end.6
  %16 = load i8*, i8** %profile_name.addr, align 8, !tbaa !1
  %cmp9 = icmp ne i8* %16, null
  br i1 %cmp9, label %if.then.10, label %if.end.74

if.then.10:                                       ; preds = %if.then.8
  %17 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %curr_profile, align 8, !tbaa !1
  %name = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %17, i32 0, i32 20
  %18 = load i8*, i8** %name, align 8, !tbaa !33
  %19 = load i8*, i8** %profile_name.addr, align 8, !tbaa !1
  %20 = load i8*, i8** %profile_name.addr, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %20) #7
  %call11 = call i32 @strncmp(i8* %18, i8* %19, i64 %call) #7
  %cmp12 = icmp ne i32 %call11, 0
  br i1 %cmp12, label %land.lhs.true, label %if.else.72

land.lhs.true:                                    ; preds = %if.then.10
  %21 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %curr_profile, align 8, !tbaa !1
  %name13 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %21, i32 0, i32 20
  %22 = load i8*, i8** %name13, align 8, !tbaa !33
  %23 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %curr_profile, align 8, !tbaa !1
  %name14 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %23, i32 0, i32 20
  %24 = load i8*, i8** %name14, align 8, !tbaa !33
  %call15 = call i64 @strlen(i8* %24) #7
  %call16 = call i32 @strncmp(i8* %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), i64 %call15) #7
  %cmp17 = icmp ne i32 %call16, 0
  br i1 %cmp17, label %if.then.18, label %if.else.72

if.then.18:                                       ; preds = %land.lhs.true
  br label %do.body

do.body:                                          ; preds = %if.then.18
  %25 = load i32, i32* %profile_type.addr, align 4, !tbaa !5
  %idxprom19 = zext i32 %25 to i64
  %26 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %icc_struct20 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %26, i32 0, i32 39
  %27 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct20, align 8, !tbaa !117
  %device_profile21 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %27, i32 0, i32 0
  %arrayidx22 = getelementptr inbounds [4 x %struct.cmm_profile_s*], [4 x %struct.cmm_profile_s*]* %device_profile21, i32 0, i64 %idxprom19
  %28 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %arrayidx22, align 8, !tbaa !1
  %tobool = icmp ne %struct.cmm_profile_s* %28, null
  br i1 %tobool, label %if.then.23, label %if.end.69

if.then.23:                                       ; preds = %do.body
  br label %do.body.24

do.body.24:                                       ; preds = %if.then.23
  br label %do.body.25

do.body.25:                                       ; preds = %do.body.24
  br label %do.cond

do.cond:                                          ; preds = %do.body.25
  br label %do.end

do.end:                                           ; preds = %do.cond
  %29 = load i32, i32* %profile_type.addr, align 4, !tbaa !5
  %idxprom26 = zext i32 %29 to i64
  %30 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %icc_struct27 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %30, i32 0, i32 39
  %31 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct27, align 8, !tbaa !117
  %device_profile28 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %31, i32 0, i32 0
  %arrayidx29 = getelementptr inbounds [4 x %struct.cmm_profile_s*], [4 x %struct.cmm_profile_s*]* %device_profile28, i32 0, i64 %idxprom26
  %32 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %arrayidx29, align 8, !tbaa !1
  %rc = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %32, i32 0, i32 18
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %33 = load i64, i64* %ref_count, align 8, !tbaa !35
  %add = add nsw i64 %33, -1
  store i64 %add, i64* %ref_count, align 8, !tbaa !35
  br label %do.cond.30

do.cond.30:                                       ; preds = %do.end
  br label %do.end.31

do.end.31:                                        ; preds = %do.cond.30
  %34 = load i32, i32* %profile_type.addr, align 4, !tbaa !5
  %idxprom32 = zext i32 %34 to i64
  %35 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %icc_struct33 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %35, i32 0, i32 39
  %36 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct33, align 8, !tbaa !117
  %device_profile34 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %36, i32 0, i32 0
  %arrayidx35 = getelementptr inbounds [4 x %struct.cmm_profile_s*], [4 x %struct.cmm_profile_s*]* %device_profile34, i32 0, i64 %idxprom32
  %37 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %arrayidx35, align 8, !tbaa !1
  %rc36 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %37, i32 0, i32 18
  %ref_count37 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc36, i32 0, i32 0
  %38 = load i64, i64* %ref_count37, align 8, !tbaa !35
  %tobool38 = icmp ne i64 %38, 0
  br i1 %tobool38, label %if.else.64, label %if.then.39

if.then.39:                                       ; preds = %do.end.31
  br label %do.body.40

do.body.40:                                       ; preds = %if.then.39
  br label %do.body.41

do.body.41:                                       ; preds = %do.body.40
  br label %do.cond.42

do.cond.42:                                       ; preds = %do.body.41
  br label %do.end.43

do.end.43:                                        ; preds = %do.cond.42
  %39 = load i32, i32* %profile_type.addr, align 4, !tbaa !5
  %idxprom44 = zext i32 %39 to i64
  %40 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %icc_struct45 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %40, i32 0, i32 39
  %41 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct45, align 8, !tbaa !117
  %device_profile46 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %41, i32 0, i32 0
  %arrayidx47 = getelementptr inbounds [4 x %struct.cmm_profile_s*], [4 x %struct.cmm_profile_s*]* %device_profile46, i32 0, i64 %idxprom44
  %42 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %arrayidx47, align 8, !tbaa !1
  %rc48 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %42, i32 0, i32 18
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc48, i32 0, i32 2
  %43 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !37
  %44 = load i32, i32* %profile_type.addr, align 4, !tbaa !5
  %idxprom49 = zext i32 %44 to i64
  %45 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %icc_struct50 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %45, i32 0, i32 39
  %46 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct50, align 8, !tbaa !117
  %device_profile51 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %46, i32 0, i32 0
  %arrayidx52 = getelementptr inbounds [4 x %struct.cmm_profile_s*], [4 x %struct.cmm_profile_s*]* %device_profile51, i32 0, i64 %idxprom49
  %47 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %arrayidx52, align 8, !tbaa !1
  %rc53 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %47, i32 0, i32 18
  %memory = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc53, i32 0, i32 1
  %48 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !36
  %49 = load i32, i32* %profile_type.addr, align 4, !tbaa !5
  %idxprom54 = zext i32 %49 to i64
  %50 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %icc_struct55 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %50, i32 0, i32 39
  %51 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct55, align 8, !tbaa !117
  %device_profile56 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %51, i32 0, i32 0
  %arrayidx57 = getelementptr inbounds [4 x %struct.cmm_profile_s*], [4 x %struct.cmm_profile_s*]* %device_profile56, i32 0, i64 %idxprom54
  %52 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %arrayidx57, align 8, !tbaa !1
  %53 = bitcast %struct.cmm_profile_s* %52 to i8*
  call void %43(%struct.gs_memory_s* %48, i8* %53, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.40, i32 0, i32 0)) #5
  br label %do.cond.58

do.cond.58:                                       ; preds = %do.end.43
  br label %do.end.59

do.end.59:                                        ; preds = %do.cond.58
  %54 = load i32, i32* %profile_type.addr, align 4, !tbaa !5
  %idxprom60 = zext i32 %54 to i64
  %55 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %icc_struct61 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %55, i32 0, i32 39
  %56 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct61, align 8, !tbaa !117
  %device_profile62 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %56, i32 0, i32 0
  %arrayidx63 = getelementptr inbounds [4 x %struct.cmm_profile_s*], [4 x %struct.cmm_profile_s*]* %device_profile62, i32 0, i64 %idxprom60
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %arrayidx63, align 8, !tbaa !1
  br label %if.end.68

if.else.64:                                       ; preds = %do.end.31
  br label %do.body.65

do.body.65:                                       ; preds = %if.else.64
  br label %do.cond.66

do.cond.66:                                       ; preds = %do.body.65
  br label %do.end.67

do.end.67:                                        ; preds = %do.cond.66
  br label %if.end.68

if.end.68:                                        ; preds = %do.end.67, %do.end.59
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %do.body
  br label %do.cond.70

do.cond.70:                                       ; preds = %if.end.69
  br label %do.end.71

do.end.71:                                        ; preds = %do.cond.70
  br label %if.end.73

if.else.72:                                       ; preds = %land.lhs.true, %if.then.10
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.73:                                        ; preds = %do.end.71
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %if.then.8
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %if.end.6
  br label %if.end.84

if.else.76:                                       ; preds = %entry
  %57 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory77 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %57, i32 0, i32 3
  %58 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory77, align 8, !tbaa !140
  %call78 = call %struct.cmm_dev_profile_s* @gsicc_new_device_profile_array(%struct.gs_memory_s* %58) #5
  %59 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %icc_struct79 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %59, i32 0, i32 39
  store %struct.cmm_dev_profile_s* %call78, %struct.cmm_dev_profile_s** %icc_struct79, align 8, !tbaa !117
  %60 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %icc_struct80 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %60, i32 0, i32 39
  %61 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct80, align 8, !tbaa !117
  store %struct.cmm_dev_profile_s* %61, %struct.cmm_dev_profile_s** %profile_struct, align 8, !tbaa !1
  %62 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %profile_struct, align 8, !tbaa !1
  %cmp81 = icmp eq %struct.cmm_dev_profile_s* %62, null
  br i1 %cmp81, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %if.else.76
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.83:                                        ; preds = %if.else.76
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %if.end.75
  %63 = load i8*, i8** %profile_name.addr, align 8, !tbaa !1
  %cmp85 = icmp eq i8* %63, null
  br i1 %cmp85, label %if.then.86, label %if.else.116

if.then.86:                                       ; preds = %if.end.84
  %64 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory87 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %64, i32 0, i32 3
  %65 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory87, align 8, !tbaa !140
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %65, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %66 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !30
  %67 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory88 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %67, i32 0, i32 3
  %68 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory88, align 8, !tbaa !140
  %call89 = call i8* %66(%struct.gs_memory_s* %68, i32 17, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.40, i32 0, i32 0)) #5
  store i8* %call89, i8** %profile_name.addr, align 8, !tbaa !1
  %69 = load i8*, i8** %profile_name.addr, align 8, !tbaa !1
  %cmp90 = icmp eq i8* %69, null
  br i1 %cmp90, label %if.then.91, label %if.end.92

if.then.91:                                       ; preds = %if.then.86
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.92:                                        ; preds = %if.then.86
  %70 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %70, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %71 = load i32, i32* %num_components, align 4, !tbaa !149
  switch i32 %71, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb.97
    i32 4, label %sw.bb.102
  ]

sw.bb:                                            ; preds = %if.end.92
  %72 = load i8*, i8** %profile_name.addr, align 8, !tbaa !1
  %call93 = call i64 @strlen(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.41, i32 0, i32 0)) #7
  %call94 = call i8* @strncpy(i8* %72, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.41, i32 0, i32 0), i64 %call93) #6
  %call95 = call i64 @strlen(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.41, i32 0, i32 0)) #7
  %73 = load i8*, i8** %profile_name.addr, align 8, !tbaa !1
  %arrayidx96 = getelementptr inbounds i8, i8* %73, i64 %call95
  store i8 0, i8* %arrayidx96, align 1, !tbaa !5
  br label %sw.epilog

sw.bb.97:                                         ; preds = %if.end.92
  %74 = load i8*, i8** %profile_name.addr, align 8, !tbaa !1
  %call98 = call i64 @strlen(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.42, i32 0, i32 0)) #7
  %call99 = call i8* @strncpy(i8* %74, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.42, i32 0, i32 0), i64 %call98) #6
  %call100 = call i64 @strlen(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.42, i32 0, i32 0)) #7
  %75 = load i8*, i8** %profile_name.addr, align 8, !tbaa !1
  %arrayidx101 = getelementptr inbounds i8, i8* %75, i64 %call100
  store i8 0, i8* %arrayidx101, align 1, !tbaa !5
  br label %sw.epilog

sw.bb.102:                                        ; preds = %if.end.92
  %76 = load i8*, i8** %profile_name.addr, align 8, !tbaa !1
  %call103 = call i64 @strlen(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.43, i32 0, i32 0)) #7
  %call104 = call i8* @strncpy(i8* %76, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.43, i32 0, i32 0), i64 %call103) #6
  %call105 = call i64 @strlen(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.43, i32 0, i32 0)) #7
  %77 = load i8*, i8** %profile_name.addr, align 8, !tbaa !1
  %arrayidx106 = getelementptr inbounds i8, i8* %77, i64 %call105
  store i8 0, i8* %arrayidx106, align 1, !tbaa !5
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.92
  %78 = load i8*, i8** %profile_name.addr, align 8, !tbaa !1
  %call107 = call i64 @strlen(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.43, i32 0, i32 0)) #7
  %call108 = call i8* @strncpy(i8* %78, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.43, i32 0, i32 0), i64 %call107) #6
  %call109 = call i64 @strlen(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.43, i32 0, i32 0)) #7
  %79 = load i8*, i8** %profile_name.addr, align 8, !tbaa !1
  %arrayidx110 = getelementptr inbounds i8, i8* %79, i64 %call109
  store i8 0, i8* %arrayidx110, align 1, !tbaa !5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.102, %sw.bb.97, %sw.bb
  %80 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %81 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory111 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %81, i32 0, i32 3
  %82 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory111, align 8, !tbaa !140
  %83 = load i8*, i8** %profile_name.addr, align 8, !tbaa !1
  %84 = load i32, i32* %profile_type.addr, align 4, !tbaa !5
  %call112 = call i32 @gsicc_set_device_profile(%struct.gx_device_s* %80, %struct.gs_memory_s* %82, i8* %83, i32 %84) #5
  store i32 %call112, i32* %code, align 4, !tbaa !13
  %85 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory113 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %85, i32 0, i32 3
  %86 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory113, align 8, !tbaa !140
  %procs114 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %86, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs114, i32 0, i32 2
  %87 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !31
  %88 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory115 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %88, i32 0, i32 3
  %89 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory115, align 8, !tbaa !140
  %90 = load i8*, i8** %profile_name.addr, align 8, !tbaa !1
  call void %87(%struct.gs_memory_s* %89, i8* %90, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.40, i32 0, i32 0)) #5
  %91 = load i32, i32* %code, align 4, !tbaa !13
  store i32 %91, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.116:                                      ; preds = %if.end.84
  %92 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %93 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory117 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %93, i32 0, i32 3
  %94 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory117, align 8, !tbaa !140
  %95 = load i8*, i8** %profile_name.addr, align 8, !tbaa !1
  %96 = load i32, i32* %profile_type.addr, align 4, !tbaa !5
  %call118 = call i32 @gsicc_set_device_profile(%struct.gx_device_s* %92, %struct.gs_memory_s* %94, i8* %95, i32 %96) #5
  store i32 %call118, i32* %code, align 4, !tbaa !13
  %97 = load i32, i32* %code, align 4, !tbaa !13
  store i32 %97, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else.116, %sw.epilog, %if.then.91, %if.then.82, %if.else.72
  %98 = bitcast %struct.cmm_dev_profile_s** %profile_struct to i8*
  call void @llvm.lifetime.end(i64 8, i8* %98) #1
  %99 = bitcast %struct.cmm_profile_s** %curr_profile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %99) #1
  %100 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %100) #1
  %101 = load i32, i32* %retval
  ret i32 %101
}

; Function Attrs: nounwind uwtable
define i32 @gsicc_set_device_profile(%struct.gx_device_s* %pdev, %struct.gs_memory_s* %mem, i8* %file_name, i32 %pro_enum) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %file_name.addr = alloca i8*, align 8
  %pro_enum.addr = alloca i32, align 4
  %icc_profile = alloca %struct.cmm_profile_s*, align 8
  %str = alloca %struct.stream_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %file_name, i8** %file_name.addr, align 8, !tbaa !1
  store i32 %pro_enum, i32* %pro_enum.addr, align 4, !tbaa !5
  %0 = bitcast %struct.cmm_profile_s** %icc_profile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.stream_s** %str to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load i8*, i8** %file_name.addr, align 8, !tbaa !1
  %cmp = icmp ne i8* %3, null
  br i1 %cmp, label %if.then, label %if.end.89

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** %file_name.addr, align 8, !tbaa !1
  %5 = load i8*, i8** %file_name.addr, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %5) #7
  %conv = trunc i64 %call to i32
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %7, i32 0, i32 2
  %8 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !18
  %profiledir = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %8, i32 0, i32 24
  %9 = load i8*, i8** %profiledir, align 8, !tbaa !21
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %gs_lib_ctx1 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %10, i32 0, i32 2
  %11 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx1, align 8, !tbaa !18
  %profiledir_len = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %11, i32 0, i32 25
  %12 = load i32, i32* %profiledir_len, align 4, !tbaa !23
  %call2 = call i32 @gsicc_open_search(i8* %4, i32 %conv, %struct.gs_memory_s* %6, i8* %9, i32 %12, %struct.stream_s** %str) #5
  store i32 %call2, i32* %code, align 4, !tbaa !13
  %13 = load i32, i32* %code, align 4, !tbaa !13
  %cmp3 = icmp slt i32 %13, 0
  br i1 %cmp3, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %14 = load i32, i32* %code, align 4, !tbaa !13
  store i32 %14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %15 = load %struct.stream_s*, %struct.stream_s** %str, align 8, !tbaa !1
  %cmp6 = icmp ne %struct.stream_s* %15, null
  br i1 %cmp6, label %if.then.8, label %if.else.86

if.then.8:                                        ; preds = %if.end
  %16 = load %struct.stream_s*, %struct.stream_s** %str, align 8, !tbaa !1
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %18 = load i8*, i8** %file_name.addr, align 8, !tbaa !1
  %19 = load i8*, i8** %file_name.addr, align 8, !tbaa !1
  %call9 = call i64 @strlen(i8* %19) #7
  %conv10 = trunc i64 %call9 to i32
  %call11 = call %struct.cmm_profile_s* @gsicc_profile_new(%struct.stream_s* %16, %struct.gs_memory_s* %17, i8* %18, i32 %conv10) #5
  store %struct.cmm_profile_s* %call11, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !1
  %20 = load %struct.stream_s*, %struct.stream_s** %str, align 8, !tbaa !1
  %call12 = call i32 @sfclose(%struct.stream_s* %20) #5
  store i32 %call12, i32* %code, align 4, !tbaa !13
  %21 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !1
  %cmp13 = icmp eq %struct.cmm_profile_s* %21, null
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.then.8
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %if.then.8
  %22 = load i32, i32* %pro_enum.addr, align 4, !tbaa !5
  %cmp17 = icmp ult i32 %22, 4
  br i1 %cmp17, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %if.end.16
  br label %do.body

do.body:                                          ; preds = %if.then.19
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %23 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !1
  %24 = load i32, i32* %pro_enum.addr, align 4, !tbaa !5
  %idxprom = zext i32 %24 to i64
  %25 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %icc_struct = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %25, i32 0, i32 39
  %26 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct, align 8, !tbaa !117
  %device_profile = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %26, i32 0, i32 0
  %arrayidx = getelementptr inbounds [4 x %struct.cmm_profile_s*], [4 x %struct.cmm_profile_s*]* %device_profile, i32 0, i64 %idxprom
  store %struct.cmm_profile_s* %23, %struct.cmm_profile_s** %arrayidx, align 8, !tbaa !1
  br label %if.end.33

if.else:                                          ; preds = %if.end.16
  %27 = load i32, i32* %pro_enum.addr, align 4, !tbaa !5
  %cmp20 = icmp eq i32 %27, 4
  br i1 %cmp20, label %if.then.22, label %if.else.27

if.then.22:                                       ; preds = %if.else
  br label %do.body.23

do.body.23:                                       ; preds = %if.then.22
  br label %do.cond.24

do.cond.24:                                       ; preds = %do.body.23
  br label %do.end.25

do.end.25:                                        ; preds = %do.cond.24
  %28 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !1
  %29 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %icc_struct26 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %29, i32 0, i32 39
  %30 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct26, align 8, !tbaa !117
  %proof_profile = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %30, i32 0, i32 1
  store %struct.cmm_profile_s* %28, %struct.cmm_profile_s** %proof_profile, align 8, !tbaa !92
  br label %if.end.32

if.else.27:                                       ; preds = %if.else
  br label %do.body.28

do.body.28:                                       ; preds = %if.else.27
  br label %do.cond.29

do.cond.29:                                       ; preds = %do.body.28
  br label %do.end.30

do.end.30:                                        ; preds = %do.cond.29
  %31 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !1
  %32 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %icc_struct31 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %32, i32 0, i32 39
  %33 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct31, align 8, !tbaa !117
  %link_profile = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %33, i32 0, i32 2
  store %struct.cmm_profile_s* %31, %struct.cmm_profile_s** %link_profile, align 8, !tbaa !93
  br label %if.end.32

if.end.32:                                        ; preds = %do.end.30, %do.end.25
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %do.end
  %34 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !1
  %buffer = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %34, i32 0, i32 14
  %35 = load i8*, i8** %buffer, align 8, !tbaa !24
  %36 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !1
  %buffer_size = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %36, i32 0, i32 11
  %37 = load i32, i32* %buffer_size, align 4, !tbaa !25
  %38 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call34 = call i8* @gsicc_get_profile_handle_buffer(i8* %35, i32 %37, %struct.gs_memory_s* %38) #5
  %39 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !1
  %profile_handle = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %39, i32 0, i32 17
  store i8* %call34, i8** %profile_handle, align 8, !tbaa !26
  %40 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !1
  %profile_handle35 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %40, i32 0, i32 17
  %41 = load i8*, i8** %profile_handle35, align 8, !tbaa !26
  %cmp36 = icmp eq i8* %41, null
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.end.33
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.39:                                        ; preds = %if.end.33
  %42 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !1
  %buffer40 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %42, i32 0, i32 14
  %43 = load i8*, i8** %buffer40, align 8, !tbaa !24
  %44 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !1
  %hashcode = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %44, i32 0, i32 7
  %45 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !1
  %buffer_size41 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %45, i32 0, i32 11
  %46 = load i32, i32* %buffer_size41, align 4, !tbaa !25
  call void @gsicc_get_icc_buff_hash(i8* %43, i64* %hashcode, i32 %46) #5
  %47 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !1
  %hash_is_valid = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %47, i32 0, i32 8
  store i32 1, i32* %hash_is_valid, align 4, !tbaa !27
  %48 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !1
  %profile_handle42 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %48, i32 0, i32 17
  %49 = load i8*, i8** %profile_handle42, align 8, !tbaa !26
  %call43 = call i32 @gscms_get_input_channel_count(i8* %49) #5
  %conv44 = trunc i32 %call43 to i8
  %50 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !1
  %num_comps = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %50, i32 0, i32 0
  store i8 %conv44, i8* %num_comps, align 1, !tbaa !6
  br label %do.body.45

do.body.45:                                       ; preds = %if.end.39
  br label %do.cond.46

do.cond.46:                                       ; preds = %do.body.45
  br label %do.end.47

do.end.47:                                        ; preds = %do.cond.46
  %51 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !1
  %profile_handle48 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %51, i32 0, i32 17
  %52 = load i8*, i8** %profile_handle48, align 8, !tbaa !26
  %call49 = call i32 @gscms_get_output_channel_count(i8* %52) #5
  %conv50 = trunc i32 %call49 to i8
  %53 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !1
  %num_comps_out = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %53, i32 0, i32 1
  store i8 %conv50, i8* %num_comps_out, align 1, !tbaa !28
  %54 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !1
  %profile_handle51 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %54, i32 0, i32 17
  %55 = load i8*, i8** %profile_handle51, align 8, !tbaa !26
  %call52 = call i32 @gscms_get_profile_data_space(i8* %55) #5
  %56 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !1
  %data_cs = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %56, i32 0, i32 5
  store i32 %call52, i32* %data_cs, align 4, !tbaa !29
  %57 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !1
  %num_comps53 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %57, i32 0, i32 0
  %58 = load i8, i8* %num_comps53, align 1, !tbaa !6
  %conv54 = zext i8 %58 to i32
  switch i32 %conv54, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb.62
    i32 4, label %sw.bb.72
  ]

sw.bb:                                            ; preds = %do.end.47
  %59 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !1
  %name = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %59, i32 0, i32 20
  %60 = load i8*, i8** %name, align 8, !tbaa !33
  %61 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !1
  %name55 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %61, i32 0, i32 20
  %62 = load i8*, i8** %name55, align 8, !tbaa !33
  %call56 = call i64 @strlen(i8* %62) #7
  %call57 = call i32 @strncmp(i8* %60, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.41, i32 0, i32 0), i64 %call56) #7
  %cmp58 = icmp eq i32 %call57, 0
  br i1 %cmp58, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %sw.bb
  %63 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !1
  %default_match = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %63, i32 0, i32 4
  store i32 1, i32* %default_match, align 4, !tbaa !54
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.60, %sw.bb
  br label %sw.epilog

sw.bb.62:                                         ; preds = %do.end.47
  %64 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !1
  %name63 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %64, i32 0, i32 20
  %65 = load i8*, i8** %name63, align 8, !tbaa !33
  %66 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !1
  %name64 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %66, i32 0, i32 20
  %67 = load i8*, i8** %name64, align 8, !tbaa !33
  %call65 = call i64 @strlen(i8* %67) #7
  %call66 = call i32 @strncmp(i8* %65, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.42, i32 0, i32 0), i64 %call65) #7
  %cmp67 = icmp eq i32 %call66, 0
  br i1 %cmp67, label %if.then.69, label %if.end.71

if.then.69:                                       ; preds = %sw.bb.62
  %68 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !1
  %default_match70 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %68, i32 0, i32 4
  store i32 2, i32* %default_match70, align 4, !tbaa !54
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.69, %sw.bb.62
  br label %sw.epilog

sw.bb.72:                                         ; preds = %do.end.47
  %69 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !1
  %name73 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %69, i32 0, i32 20
  %70 = load i8*, i8** %name73, align 8, !tbaa !33
  %71 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !1
  %name74 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %71, i32 0, i32 20
  %72 = load i8*, i8** %name74, align 8, !tbaa !33
  %call75 = call i64 @strlen(i8* %72) #7
  %call76 = call i32 @strncmp(i8* %70, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.43, i32 0, i32 0), i64 %call75) #7
  %cmp77 = icmp eq i32 %call76, 0
  br i1 %cmp77, label %if.then.79, label %if.end.81

if.then.79:                                       ; preds = %sw.bb.72
  %73 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !1
  %default_match80 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %73, i32 0, i32 4
  store i32 3, i32* %default_match80, align 4, !tbaa !54
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.79, %sw.bb.72
  br label %sw.epilog

sw.default:                                       ; preds = %do.end.47
  %74 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call82 = call i32 @gsicc_set_device_profile_colorants(%struct.gx_device_s* %74, i8* null) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.81, %if.end.71, %if.end.61
  br label %do.body.83

do.body.83:                                       ; preds = %sw.epilog
  br label %do.cond.84

do.cond.84:                                       ; preds = %do.body.83
  br label %do.end.85

do.end.85:                                        ; preds = %do.cond.84
  br label %if.end.88

if.else.86:                                       ; preds = %if.end
  %call87 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gsicc_set_device_profile, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 1651, i32 1, i32 -1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.44, i32 0, i32 0)) #5
  store i32 %call87, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.88:                                        ; preds = %do.end.85
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.88, %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.89, %if.else.86, %if.then.38, %if.then.15, %if.then.5
  %75 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #1
  %76 = bitcast %struct.stream_s** %str to i8*
  call void @llvm.lifetime.end(i64 8, i8* %76) #1
  %77 = bitcast %struct.cmm_profile_s** %icc_profile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %77) #1
  %78 = load i32, i32* %retval
  ret i32 %78
}

; Function Attrs: nounwind uwtable
define i8* @gsicc_get_dev_icccolorants(%struct.cmm_dev_profile_s* %dev_profile) #0 {
entry:
  %retval = alloca i8*, align 8
  %dev_profile.addr = alloca %struct.cmm_dev_profile_s*, align 8
  store %struct.cmm_dev_profile_s* %dev_profile, %struct.cmm_dev_profile_s** %dev_profile.addr, align 8, !tbaa !1
  %0 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.cmm_dev_profile_s* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile.addr, align 8, !tbaa !1
  %spotnames = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %1, i32 0, i32 11
  %2 = load %struct.gsicc_namelist_s*, %struct.gsicc_namelist_s** %spotnames, align 8, !tbaa !95
  %cmp1 = icmp eq %struct.gsicc_namelist_s* %2, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %3 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile.addr, align 8, !tbaa !1
  %spotnames3 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %3, i32 0, i32 11
  %4 = load %struct.gsicc_namelist_s*, %struct.gsicc_namelist_s** %spotnames3, align 8, !tbaa !95
  %name_str = getelementptr inbounds %struct.gsicc_namelist_s, %struct.gsicc_namelist_s* %4, i32 0, i32 2
  %5 = load i8*, i8** %name_str, align 8, !tbaa !141
  %cmp4 = icmp eq i8* %5, null
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false.2, %lor.lhs.false, %entry
  store i8* null, i8** %retval
  br label %return

if.else:                                          ; preds = %lor.lhs.false.2
  %6 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile.addr, align 8, !tbaa !1
  %spotnames5 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %6, i32 0, i32 11
  %7 = load %struct.gsicc_namelist_s*, %struct.gsicc_namelist_s** %spotnames5, align 8, !tbaa !95
  %name_str6 = getelementptr inbounds %struct.gsicc_namelist_s, %struct.gsicc_namelist_s* %7, i32 0, i32 2
  %8 = load i8*, i8** %name_str6, align 8, !tbaa !141
  store i8* %8, i8** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %9 = load i8*, i8** %retval
  ret i8* %9
}

; Function Attrs: nounwind uwtable
define i32 @gsicc_set_gscs_profile(%struct.gs_color_space_s* %pcs, %struct.cmm_profile_s* %icc_profile, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %icc_profile.addr = alloca %struct.cmm_profile_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.cmm_profile_s* %icc_profile, %struct.cmm_profile_s** %icc_profile.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_color_space_s* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %1 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.cmm_profile_s* %1, null
  br i1 %tobool, label %if.then.1, label %if.end.5

if.then.1:                                        ; preds = %do.body
  br label %do.body.2

do.body.2:                                        ; preds = %if.then.1
  %2 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile.addr, align 8, !tbaa !1
  %rc = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %2, i32 0, i32 18
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %3 = load i64, i64* %ref_count, align 8, !tbaa !35
  %inc = add nsw i64 %3, 1
  store i64 %inc, i64* %ref_count, align 8, !tbaa !35
  br label %do.body.3

do.body.3:                                        ; preds = %do.body.2
  br label %do.end

do.end:                                           ; preds = %do.body.3
  br label %do.end.4

do.end.4:                                         ; preds = %do.end
  br label %if.end.5

if.end.5:                                         ; preds = %do.end.4, %do.body
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %4 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %cmm_icc_profile_data = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %4, i32 0, i32 6
  %5 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data, align 8, !tbaa !135
  %cmp7 = icmp ne %struct.cmm_profile_s* %5, null
  br i1 %cmp7, label %if.then.8, label %if.end.40

if.then.8:                                        ; preds = %do.end.6
  br label %do.body.9

do.body.9:                                        ; preds = %if.then.8
  %6 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %cmm_icc_profile_data10 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %6, i32 0, i32 6
  %7 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data10, align 8, !tbaa !135
  %tobool11 = icmp ne %struct.cmm_profile_s* %7, null
  br i1 %tobool11, label %if.then.12, label %if.end.38

if.then.12:                                       ; preds = %do.body.9
  br label %do.body.13

do.body.13:                                       ; preds = %if.then.12
  br label %do.body.14

do.body.14:                                       ; preds = %do.body.13
  br label %do.end.15

do.end.15:                                        ; preds = %do.body.14
  %8 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %cmm_icc_profile_data16 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %8, i32 0, i32 6
  %9 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data16, align 8, !tbaa !135
  %rc17 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %9, i32 0, i32 18
  %ref_count18 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc17, i32 0, i32 0
  %10 = load i64, i64* %ref_count18, align 8, !tbaa !35
  %add = add nsw i64 %10, -1
  store i64 %add, i64* %ref_count18, align 8, !tbaa !35
  br label %do.end.19

do.end.19:                                        ; preds = %do.end.15
  %11 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %cmm_icc_profile_data20 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %11, i32 0, i32 6
  %12 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data20, align 8, !tbaa !135
  %rc21 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %12, i32 0, i32 18
  %ref_count22 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc21, i32 0, i32 0
  %13 = load i64, i64* %ref_count22, align 8, !tbaa !35
  %tobool23 = icmp ne i64 %13, 0
  br i1 %tobool23, label %if.else, label %if.then.24

if.then.24:                                       ; preds = %do.end.19
  br label %do.body.25

do.body.25:                                       ; preds = %if.then.24
  br label %do.body.26

do.body.26:                                       ; preds = %do.body.25
  br label %do.end.27

do.end.27:                                        ; preds = %do.body.26
  %14 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %cmm_icc_profile_data28 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %14, i32 0, i32 6
  %15 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data28, align 8, !tbaa !135
  %rc29 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %15, i32 0, i32 18
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc29, i32 0, i32 2
  %16 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !37
  %17 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %cmm_icc_profile_data30 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %17, i32 0, i32 6
  %18 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data30, align 8, !tbaa !135
  %rc31 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %18, i32 0, i32 18
  %memory = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc31, i32 0, i32 1
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !36
  %20 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %cmm_icc_profile_data32 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %20, i32 0, i32 6
  %21 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data32, align 8, !tbaa !135
  %22 = bitcast %struct.cmm_profile_s* %21 to i8*
  call void %16(%struct.gs_memory_s* %19, i8* %22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.45, i32 0, i32 0)) #5
  br label %do.end.33

do.end.33:                                        ; preds = %do.end.27
  %23 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %cmm_icc_profile_data34 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %23, i32 0, i32 6
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %cmm_icc_profile_data34, align 8, !tbaa !135
  br label %if.end.37

if.else:                                          ; preds = %do.end.19
  br label %do.body.35

do.body.35:                                       ; preds = %if.else
  br label %do.end.36

do.end.36:                                        ; preds = %do.body.35
  br label %if.end.37

if.end.37:                                        ; preds = %do.end.36, %do.end.33
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %do.body.9
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  br label %if.end.40

if.end.40:                                        ; preds = %do.end.39, %do.end.6
  %24 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile.addr, align 8, !tbaa !1
  %25 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %cmm_icc_profile_data41 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %25, i32 0, i32 6
  store %struct.cmm_profile_s* %24, %struct.cmm_profile_s** %cmm_icc_profile_data41, align 8, !tbaa !135
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.40, %if.then
  %26 = load i32, i32* %retval
  ret i32 %26
}

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #4

; Function Attrs: nounwind uwtable
define internal i32 @gsicc_load_profile_buffer(%struct.cmm_profile_s* %profile, %struct.stream_s* %s, %struct.gs_memory_s* %memory) #0 {
entry:
  %retval = alloca i32, align 4
  %profile.addr = alloca %struct.cmm_profile_s*, align 8
  %s.addr = alloca %struct.stream_s*, align 8
  %memory.addr = alloca %struct.gs_memory_s*, align 8
  %num_bytes = alloca i32, align 4
  %profile_size = alloca i32, align 4
  %buffer_ptr = alloca i8*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.cmm_profile_s* %profile, %struct.cmm_profile_s** %profile.addr, align 8, !tbaa !1
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %memory, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %0 = bitcast i32* %num_bytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %profile_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i8** %buffer_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call = call i32 @srewind(%struct.stream_s* %4) #5
  store i32 %call, i32* %code, align 4, !tbaa !13
  %5 = load i32, i32* %code, align 4, !tbaa !13
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %code, align 4, !tbaa !13
  store i32 %6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call1 = call i32 @sfseek(%struct.stream_s* %7, i64 0, i32 2) #5
  store i32 %call1, i32* %code, align 4, !tbaa !13
  %8 = load i32, i32* %code, align 4, !tbaa !13
  %cmp2 = icmp slt i32 %8, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %9 = load i32, i32* %code, align 4, !tbaa !13
  store i32 %9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %10 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call5 = call i64 @sftell(%struct.stream_s* %10) #5
  %conv = trunc i64 %call5 to i32
  store i32 %conv, i32* %profile_size, align 4, !tbaa !13
  %11 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call6 = call i32 @srewind(%struct.stream_s* %11) #5
  store i32 %call6, i32* %code, align 4, !tbaa !13
  %12 = load i32, i32* %code, align 4, !tbaa !13
  %cmp7 = icmp slt i32 %12, 0
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.4
  %13 = load i32, i32* %code, align 4, !tbaa !13
  store i32 %13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %if.end.4
  %14 = load i32, i32* %profile_size, align 4, !tbaa !13
  %cmp11 = icmp slt i32 %14, 128
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.10
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %if.end.10
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %15, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %16 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !30
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %18 = load i32, i32* %profile_size, align 4, !tbaa !13
  %call15 = call i8* %16(%struct.gs_memory_s* %17, i32 %18, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.93, i32 0, i32 0)) #5
  store i8* %call15, i8** %buffer_ptr, align 8, !tbaa !1
  %19 = load i8*, i8** %buffer_ptr, align 8, !tbaa !1
  %cmp16 = icmp eq i8* %19, null
  br i1 %cmp16, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %if.end.14
  %call19 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gsicc_load_profile_buffer, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 1950, i32 0, i32 -25, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.94, i32 0, i32 0)) #5
  store i32 %call19, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.20:                                        ; preds = %if.end.14
  %20 = load i8*, i8** %buffer_ptr, align 8, !tbaa !1
  %21 = load i32, i32* %profile_size, align 4, !tbaa !13
  %conv21 = sext i32 %21 to i64
  %22 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call22 = call i32 @sfread(i8* %20, i64 1, i64 %conv21, %struct.stream_s* %22) #5
  store i32 %call22, i32* %num_bytes, align 4, !tbaa !13
  %23 = load i32, i32* %num_bytes, align 4, !tbaa !13
  %24 = load i32, i32* %profile_size, align 4, !tbaa !13
  %cmp23 = icmp ne i32 %23, %24
  br i1 %cmp23, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %if.end.20
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %procs26 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %25, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs26, i32 0, i32 2
  %26 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !31
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %28 = load i8*, i8** %buffer_ptr, align 8, !tbaa !1
  call void %26(%struct.gs_memory_s* %27, i8* %28, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.93, i32 0, i32 0)) #5
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.27:                                        ; preds = %if.end.20
  %29 = load i8*, i8** %buffer_ptr, align 8, !tbaa !1
  %30 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %profile.addr, align 8, !tbaa !1
  %buffer = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %30, i32 0, i32 14
  store i8* %29, i8** %buffer, align 8, !tbaa !24
  %31 = load i32, i32* %num_bytes, align 4, !tbaa !13
  %32 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %profile.addr, align 8, !tbaa !1
  %buffer_size = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %32, i32 0, i32 11
  store i32 %31, i32* %buffer_size, align 4, !tbaa !25
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.27, %if.then.25, %if.then.18, %if.then.13, %if.then.9, %if.then.3, %if.then
  %33 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  %34 = bitcast i8** %buffer_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  %35 = bitcast i32* %profile_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %36 = bitcast i32* %num_bytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  %37 = load i32, i32* %retval
  ret i32 %37
}

; Function Attrs: nounwind uwtable
define internal void @rc_free_icc_profile(%struct.gs_memory_s* %mem, i8* %ptr_in, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %ptr_in.addr = alloca i8*, align 8
  %cname.addr = alloca i8*, align 8
  %profile = alloca %struct.cmm_profile_s*, align 8
  %mem_nongc = alloca %struct.gs_memory_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %ptr_in, i8** %ptr_in.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cmm_profile_s** %profile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %ptr_in.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.cmm_profile_s*
  store %struct.cmm_profile_s* %2, %struct.cmm_profile_s** %profile, align 8, !tbaa !1
  %3 = bitcast %struct.gs_memory_s** %mem_nongc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %profile, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %4, i32 0, i32 21
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !42
  store %struct.gs_memory_s* %5, %struct.gs_memory_s** %mem_nongc, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %6 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %profile, align 8, !tbaa !1
  %rc = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %6, i32 0, i32 18
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %7 = load i64, i64* %ref_count, align 8, !tbaa !35
  %cmp = icmp sle i64 %7, 1
  br i1 %cmp, label %if.then, label %if.end.35

if.then:                                          ; preds = %do.end
  %8 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %profile, align 8, !tbaa !1
  %buffer = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %8, i32 0, i32 14
  %9 = load i8*, i8** %buffer, align 8, !tbaa !24
  %cmp1 = icmp ne i8* %9, null
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem_nongc, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %10, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %11 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !31
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem_nongc, align 8, !tbaa !1
  %13 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %profile, align 8, !tbaa !1
  %buffer3 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %13, i32 0, i32 14
  %14 = load i8*, i8** %buffer3, align 8, !tbaa !24
  call void %11(%struct.gs_memory_s* %12, i8* %14, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.90, i32 0, i32 0)) #5
  %15 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %profile, align 8, !tbaa !1
  %buffer4 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %15, i32 0, i32 14
  store i8* null, i8** %buffer4, align 8, !tbaa !24
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  br label %do.body.5

do.body.5:                                        ; preds = %if.end
  br label %do.cond.6

do.cond.6:                                        ; preds = %do.body.5
  br label %do.end.7

do.end.7:                                         ; preds = %do.cond.6
  %16 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %profile, align 8, !tbaa !1
  %profile_handle = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %16, i32 0, i32 17
  %17 = load i8*, i8** %profile_handle, align 8, !tbaa !26
  %cmp8 = icmp ne i8* %17, null
  br i1 %cmp8, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %do.end.7
  %18 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %profile, align 8, !tbaa !1
  %profile_handle10 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %18, i32 0, i32 17
  %19 = load i8*, i8** %profile_handle10, align 8, !tbaa !26
  call void @gscms_release_profile(i8* %19) #5
  %20 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %profile, align 8, !tbaa !1
  %profile_handle11 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %20, i32 0, i32 17
  store i8* null, i8** %profile_handle11, align 8, !tbaa !26
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.9, %do.end.7
  %21 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %profile, align 8, !tbaa !1
  %name = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %21, i32 0, i32 20
  %22 = load i8*, i8** %name, align 8, !tbaa !33
  %cmp13 = icmp ne i8* %22, null
  br i1 %cmp13, label %if.then.14, label %if.end.19

if.then.14:                                       ; preds = %if.end.12
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem_nongc, align 8, !tbaa !1
  %procs15 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %23, i32 0, i32 1
  %free_object16 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs15, i32 0, i32 2
  %24 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object16, align 8, !tbaa !31
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem_nongc, align 8, !tbaa !1
  %26 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %profile, align 8, !tbaa !1
  %name17 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %26, i32 0, i32 20
  %27 = load i8*, i8** %name17, align 8, !tbaa !33
  call void %24(%struct.gs_memory_s* %25, i8* %27, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.90, i32 0, i32 0)) #5
  %28 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %profile, align 8, !tbaa !1
  %name18 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %28, i32 0, i32 20
  store i8* null, i8** %name18, align 8, !tbaa !33
  %29 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %profile, align 8, !tbaa !1
  %name_length = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %29, i32 0, i32 19
  store i32 0, i32* %name_length, align 4, !tbaa !34
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.14, %if.end.12
  %30 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %profile, align 8, !tbaa !1
  %hash_is_valid = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %30, i32 0, i32 8
  store i32 0, i32* %hash_is_valid, align 4, !tbaa !27
  %31 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %profile, align 8, !tbaa !1
  %lock = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %31, i32 0, i32 22
  %32 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %lock, align 8, !tbaa !43
  %cmp20 = icmp ne %struct.gx_monitor_s* %32, null
  br i1 %cmp20, label %if.then.21, label %if.end.25

if.then.21:                                       ; preds = %if.end.19
  %33 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem_nongc, align 8, !tbaa !1
  %procs22 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %33, i32 0, i32 1
  %free_object23 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs22, i32 0, i32 2
  %34 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object23, align 8, !tbaa !31
  %35 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem_nongc, align 8, !tbaa !1
  %36 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %profile, align 8, !tbaa !1
  %lock24 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %36, i32 0, i32 22
  %37 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %lock24, align 8, !tbaa !43
  %38 = bitcast %struct.gx_monitor_s* %37 to i8*
  call void %34(%struct.gs_memory_s* %35, i8* %38, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.90, i32 0, i32 0)) #5
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.21, %if.end.19
  %39 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %profile, align 8, !tbaa !1
  %spotnames = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %39, i32 0, i32 16
  %40 = load %struct.gsicc_namelist_s*, %struct.gsicc_namelist_s** %spotnames, align 8, !tbaa !38
  %cmp26 = icmp ne %struct.gsicc_namelist_s* %40, null
  br i1 %cmp26, label %if.then.27, label %if.end.32

if.then.27:                                       ; preds = %if.end.25
  %41 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %profile, align 8, !tbaa !1
  %spotnames28 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %41, i32 0, i32 16
  %42 = load %struct.gsicc_namelist_s*, %struct.gsicc_namelist_s** %spotnames28, align 8, !tbaa !38
  %43 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem_nongc, align 8, !tbaa !1
  call void @gsicc_free_spotnames(%struct.gsicc_namelist_s* %42, %struct.gs_memory_s* %43) #5
  %44 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem_nongc, align 8, !tbaa !1
  %procs29 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %44, i32 0, i32 1
  %free_object30 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs29, i32 0, i32 2
  %45 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object30, align 8, !tbaa !31
  %46 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem_nongc, align 8, !tbaa !1
  %47 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %profile, align 8, !tbaa !1
  %spotnames31 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %47, i32 0, i32 16
  %48 = load %struct.gsicc_namelist_s*, %struct.gsicc_namelist_s** %spotnames31, align 8, !tbaa !38
  %49 = bitcast %struct.gsicc_namelist_s* %48 to i8*
  call void %45(%struct.gs_memory_s* %46, i8* %49, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.90, i32 0, i32 0)) #5
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.27, %if.end.25
  %50 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem_nongc, align 8, !tbaa !1
  %procs33 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %50, i32 0, i32 1
  %free_object34 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs33, i32 0, i32 2
  %51 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object34, align 8, !tbaa !31
  %52 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem_nongc, align 8, !tbaa !1
  %53 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %profile, align 8, !tbaa !1
  %54 = bitcast %struct.cmm_profile_s* %53 to i8*
  call void %51(%struct.gs_memory_s* %52, i8* %54, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.90, i32 0, i32 0)) #5
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.32, %do.end
  %55 = bitcast %struct.gs_memory_s** %mem_nongc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #1
  %56 = bitcast %struct.cmm_profile_s** %profile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #1
  ret void
}

declare %struct.gx_monitor_s* @gx_monitor_alloc(%struct.gs_memory_s*) #2

; Function Attrs: nounwind uwtable
define i32 @gsicc_init_gs_colors(%struct.gs_state_s* %pgs) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %code = alloca i32, align 4
  %cs_old = alloca %struct.gs_color_space_s*, align 8
  %cs_new = alloca %struct.gs_color_space_s*, align 8
  %k = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %code, align 4, !tbaa !13
  %1 = bitcast %struct.gs_color_space_s** %cs_old to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast %struct.gs_color_space_s** %cs_new to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %in_cachedevice = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %4, i32 0, i32 74
  %5 = load i32, i32* %in_cachedevice, align 4, !tbaa !150
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, i32* %k, align 4, !tbaa !13
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i32, i32* %k, align 4, !tbaa !13
  %cmp = icmp slt i32 %6, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %k, align 4, !tbaa !13
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %8, i32 0, i32 69
  %arrayidx = getelementptr inbounds [2 x %struct.anon.2], [2 x %struct.anon.2]* %color, i32 0, i64 %idxprom
  %color_space = getelementptr inbounds %struct.anon.2, %struct.anon.2* %arrayidx, i32 0, i32 0
  %9 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %color_space, align 8, !tbaa !137
  store %struct.gs_color_space_s* %9, %struct.gs_color_space_s** %cs_old, align 8, !tbaa !1
  %10 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %10, i32 0, i32 1
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !153
  %call = call %struct.gs_color_space_s* @gs_cspace_new_DeviceGray(%struct.gs_memory_s* %11) #5
  store %struct.gs_color_space_s* %call, %struct.gs_color_space_s** %cs_new, align 8, !tbaa !1
  %12 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %cs_new, align 8, !tbaa !1
  call void @rc_increment_cs(%struct.gs_color_space_s* %12) #5
  %13 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %cs_new, align 8, !tbaa !1
  %14 = load i32, i32* %k, align 4, !tbaa !13
  %idxprom1 = sext i32 %14 to i64
  %15 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color2 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %15, i32 0, i32 69
  %arrayidx3 = getelementptr inbounds [2 x %struct.anon.2], [2 x %struct.anon.2]* %color2, i32 0, i64 %idxprom1
  %color_space4 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %arrayidx3, i32 0, i32 0
  store %struct.gs_color_space_s* %13, %struct.gs_color_space_s** %color_space4, align 8, !tbaa !137
  %16 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %cs_new, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %16, i32 0, i32 0
  %17 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !154
  %install_cspace = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %17, i32 0, i32 11
  %18 = load i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)** %install_cspace, align 8, !tbaa !155
  %19 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %cs_new, align 8, !tbaa !1
  %20 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call5 = call i32 %18(%struct.gs_color_space_s* %19, %struct.gs_state_s* %20) #5
  store i32 %call5, i32* %code, align 4, !tbaa !13
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %for.body
  %21 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %cs_old, align 8, !tbaa !1
  %22 = load i32, i32* %k, align 4, !tbaa !13
  %idxprom8 = sext i32 %22 to i64
  %23 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color9 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %23, i32 0, i32 69
  %arrayidx10 = getelementptr inbounds [2 x %struct.anon.2], [2 x %struct.anon.2]* %color9, i32 0, i64 %idxprom8
  %color_space11 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %arrayidx10, i32 0, i32 0
  store %struct.gs_color_space_s* %21, %struct.gs_color_space_s** %color_space11, align 8, !tbaa !137
  %24 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %cs_new, align 8, !tbaa !1
  call void @rc_decrement_only_cs(%struct.gs_color_space_s* %24, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.47, i32 0, i32 0)) #5
  %25 = load i32, i32* %code, align 4, !tbaa !13
  store i32 %25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %for.body
  %26 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %cs_old, align 8, !tbaa !1
  call void @rc_decrement_only_cs(%struct.gs_color_space_s* %26, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.47, i32 0, i32 0)) #5
  br label %if.end.12

if.end.12:                                        ; preds = %if.else
  br label %for.inc

for.inc:                                          ; preds = %if.end.12
  %27 = load i32, i32* %k, align 4, !tbaa !13
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %k, align 4, !tbaa !13
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %28 = load i32, i32* %code, align 4, !tbaa !13
  store i32 %28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.7, %if.then
  %29 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #1
  %30 = bitcast %struct.gs_color_space_s** %cs_new to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #1
  %31 = bitcast %struct.gs_color_space_s** %cs_old to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  %32 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #1
  %33 = load i32, i32* %retval
  ret i32 %33
}

declare %struct.gs_color_space_s* @gs_cspace_new_DeviceGray(%struct.gs_memory_s*) #2

declare void @rc_increment_cs(%struct.gs_color_space_s*) #2

declare void @rc_decrement_only_cs(%struct.gs_color_space_s*, i8*) #2

; Function Attrs: nounwind uwtable
define i32 @gsicc_init_iccmanager(%struct.gs_state_s* %pgs) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %code = alloca i32, align 4
  %k = alloca i32, align 4
  %pname = alloca i8*, align 8
  %namelen = alloca i32, align 4
  %iccmanager = alloca %struct.gsicc_manager_s*, align 8
  %profile = alloca %struct.cmm_profile_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %code, align 4, !tbaa !13
  %1 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i8** %pname to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i32* %namelen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast %struct.gsicc_manager_s** %iccmanager to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %icc_manager = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %5, i32 0, i32 35
  %6 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !157
  store %struct.gsicc_manager_s* %6, %struct.gsicc_manager_s** %iccmanager, align 8, !tbaa !1
  %7 = bitcast %struct.cmm_profile_s** %profile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  store i32 0, i32* %k, align 4, !tbaa !13
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %k, align 4, !tbaa !13
  %cmp = icmp slt i32 %8, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %k, align 4, !tbaa !13
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [4 x %struct.default_profile_def_s], [4 x %struct.default_profile_def_s]* @default_profile_params, i32 0, i64 %idxprom
  %path = getelementptr inbounds %struct.default_profile_def_s, %struct.default_profile_def_s* %arrayidx, i32 0, i32 0
  %10 = load i8*, i8** %path, align 8, !tbaa !158
  store i8* %10, i8** %pname, align 8, !tbaa !1
  %11 = load i8*, i8** %pname, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %11) #7
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %namelen, align 4, !tbaa !13
  %12 = load i32, i32* %k, align 4, !tbaa !13
  %idxprom1 = sext i32 %12 to i64
  %arrayidx2 = getelementptr inbounds [4 x %struct.default_profile_def_s], [4 x %struct.default_profile_def_s]* @default_profile_params, i32 0, i64 %idxprom1
  %default_type = getelementptr inbounds %struct.default_profile_def_s, %struct.default_profile_def_s* %arrayidx2, i32 0, i32 1
  %13 = load i32, i32* %default_type, align 4, !tbaa !160
  switch i32 %13, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.3
    i32 3, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %for.body
  %14 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %iccmanager, align 8, !tbaa !1
  %default_gray = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %14, i32 0, i32 1
  %15 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %default_gray, align 8, !tbaa !161
  store %struct.cmm_profile_s* %15, %struct.cmm_profile_s** %profile, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.3:                                          ; preds = %for.body
  %16 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %iccmanager, align 8, !tbaa !1
  %default_rgb = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %16, i32 0, i32 2
  %17 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %default_rgb, align 8, !tbaa !162
  store %struct.cmm_profile_s* %17, %struct.cmm_profile_s** %profile, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.4:                                          ; preds = %for.body
  %18 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %iccmanager, align 8, !tbaa !1
  %default_cmyk = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %18, i32 0, i32 3
  %19 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %default_cmyk, align 8, !tbaa !163
  store %struct.cmm_profile_s* %19, %struct.cmm_profile_s** %profile, align 8, !tbaa !1
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %profile, align 8, !tbaa !1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.4, %sw.bb.3, %sw.bb
  %20 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %profile, align 8, !tbaa !1
  %cmp5 = icmp eq %struct.cmm_profile_s* %20, null
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog
  %21 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %iccmanager, align 8, !tbaa !1
  %22 = load i8*, i8** %pname, align 8, !tbaa !1
  %23 = load i32, i32* %namelen, align 4, !tbaa !13
  %add = add nsw i32 %23, 1
  %24 = load i32, i32* %k, align 4, !tbaa !13
  %idxprom7 = sext i32 %24 to i64
  %arrayidx8 = getelementptr inbounds [4 x %struct.default_profile_def_s], [4 x %struct.default_profile_def_s]* @default_profile_params, i32 0, i64 %idxprom7
  %default_type9 = getelementptr inbounds %struct.default_profile_def_s, %struct.default_profile_def_s* %arrayidx8, i32 0, i32 1
  %25 = load i32, i32* %default_type9, align 4, !tbaa !160
  %call10 = call i32 @gsicc_set_profile(%struct.gsicc_manager_s* %21, i8* %22, i32 %add, i32 %25) #5
  store i32 %call10, i32* %code, align 4, !tbaa !13
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog
  %26 = load i32, i32* %code, align 4, !tbaa !13
  %cmp11 = icmp slt i32 %26, 0
  br i1 %cmp11, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.end
  %27 = load i32, i32* %code, align 4, !tbaa !13
  %call14 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gsicc_init_iccmanager, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 1848, i32 1, i32 %27, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.48, i32 0, i32 0)) #5
  store i32 %call14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.15
  %28 = load i32, i32* %k, align 4, !tbaa !13
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %k, align 4, !tbaa !13
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.13
  %29 = bitcast %struct.cmm_profile_s** %profile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  %30 = bitcast %struct.gsicc_manager_s** %iccmanager to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #1
  %31 = bitcast i32* %namelen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  %32 = bitcast i8** %pname to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  %33 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  %34 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  %35 = load i32, i32* %retval
  ret i32 %35
}

; Function Attrs: nounwind uwtable
define %struct.gsicc_manager_s* @gsicc_manager_new(%struct.gs_memory_s* %memory) #0 {
entry:
  %retval = alloca %struct.gsicc_manager_s*, align 8
  %memory.addr = alloca %struct.gs_memory_s*, align 8
  %result = alloca %struct.gsicc_manager_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %memory, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gsicc_manager_s** %result to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %stable_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %1, i32 0, i32 0
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory, align 8, !tbaa !52
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %2, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %3 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !88
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %stable_memory1 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %4, i32 0, i32 0
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory1, align 8, !tbaa !52
  %call = call i8* %3(%struct.gs_memory_s* %5, %struct.gs_memory_struct_type_s* @st_gsicc_manager, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.49, i32 0, i32 0)) #5
  %6 = bitcast i8* %call to %struct.gsicc_manager_s*
  store %struct.gsicc_manager_s* %6, %struct.gsicc_manager_s** %result, align 8, !tbaa !1
  %7 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %result, align 8, !tbaa !1
  %cmp = icmp eq %struct.gsicc_manager_s* %7, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.gsicc_manager_s* null, %struct.gsicc_manager_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %8 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %result, align 8, !tbaa !1
  %rc = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %8, i32 0, i32 11
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  store i64 1, i64* %ref_count, align 8, !tbaa !164
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %stable_memory2 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %9, i32 0, i32 0
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory2, align 8, !tbaa !52
  %11 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %result, align 8, !tbaa !1
  %rc3 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %11, i32 0, i32 11
  %memory4 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc3, i32 0, i32 1
  store %struct.gs_memory_s* %10, %struct.gs_memory_s** %memory4, align 8, !tbaa !165
  %12 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %result, align 8, !tbaa !1
  %rc5 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %12, i32 0, i32 11
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc5, i32 0, i32 2
  store void (%struct.gs_memory_s*, i8*, i8*)* @rc_gsicc_manager_free, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !166
  br label %do.body.6

do.body.6:                                        ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %do.body.6
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.cond.7

do.cond.7:                                        ; preds = %do.end
  br label %do.end.8

do.end.8:                                         ; preds = %do.cond.7
  %13 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %result, align 8, !tbaa !1
  %default_gray = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %13, i32 0, i32 1
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %default_gray, align 8, !tbaa !161
  %14 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %result, align 8, !tbaa !1
  %default_rgb = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %14, i32 0, i32 2
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %default_rgb, align 8, !tbaa !162
  %15 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %result, align 8, !tbaa !1
  %default_cmyk = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %15, i32 0, i32 3
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %default_cmyk, align 8, !tbaa !163
  %16 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %result, align 8, !tbaa !1
  %lab_profile = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %16, i32 0, i32 4
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %lab_profile, align 8, !tbaa !167
  %17 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %result, align 8, !tbaa !1
  %graytok_profile = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %17, i32 0, i32 5
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %graytok_profile, align 8, !tbaa !168
  %18 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %result, align 8, !tbaa !1
  %device_named = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %18, i32 0, i32 0
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %device_named, align 8, !tbaa !169
  %19 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %result, align 8, !tbaa !1
  %device_n = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %19, i32 0, i32 6
  store %struct.gsicc_devicen_s* null, %struct.gsicc_devicen_s** %device_n, align 8, !tbaa !57
  %20 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %result, align 8, !tbaa !1
  %smask_profiles = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %20, i32 0, i32 7
  store %struct.gsicc_smask_s* null, %struct.gsicc_smask_s** %smask_profiles, align 8, !tbaa !53
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %stable_memory9 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %21, i32 0, i32 0
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory9, align 8, !tbaa !52
  %23 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %result, align 8, !tbaa !1
  %memory10 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %23, i32 0, i32 10
  store %struct.gs_memory_s* %22, %struct.gs_memory_s** %memory10, align 8, !tbaa !50
  %24 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %result, align 8, !tbaa !1
  %srcgtag_profile = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %24, i32 0, i32 9
  store %struct.cmm_srcgtag_profile_s* null, %struct.cmm_srcgtag_profile_s** %srcgtag_profile, align 8, !tbaa !71
  %25 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %result, align 8, !tbaa !1
  %override_internal = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %25, i32 0, i32 8
  store i32 0, i32* %override_internal, align 4, !tbaa !170
  %26 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %result, align 8, !tbaa !1
  store %struct.gsicc_manager_s* %26, %struct.gsicc_manager_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.8, %if.then
  %27 = bitcast %struct.gsicc_manager_s** %result to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  %28 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %retval
  ret %struct.gsicc_manager_s* %28
}

; Function Attrs: nounwind uwtable
define internal void @rc_gsicc_manager_free(%struct.gs_memory_s* %mem, i8* %ptr_in, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %ptr_in.addr = alloca i8*, align 8
  %cname.addr = alloca i8*, align 8
  %icc_manager = alloca %struct.gsicc_manager_s*, align 8
  %k = alloca i32, align 4
  %device_n = alloca %struct.gsicc_devicen_entry_s*, align 8
  %device_n_next = alloca %struct.gsicc_devicen_entry_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %ptr_in, i8** %ptr_in.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gsicc_manager_s** %icc_manager to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %ptr_in.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gsicc_manager_s*
  store %struct.gsicc_manager_s* %2, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %3 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast %struct.gsicc_devicen_entry_s** %device_n to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast %struct.gsicc_devicen_entry_s** %device_n_next to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  br label %do.body

do.body:                                          ; preds = %entry
  %6 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %default_cmyk = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %6, i32 0, i32 3
  %7 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %default_cmyk, align 8, !tbaa !163
  %tobool = icmp ne %struct.cmm_profile_s* %7, null
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
  %8 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %default_cmyk3 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %8, i32 0, i32 3
  %9 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %default_cmyk3, align 8, !tbaa !163
  %rc = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %9, i32 0, i32 18
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %10 = load i64, i64* %ref_count, align 8, !tbaa !35
  %add = add nsw i64 %10, -1
  store i64 %add, i64* %ref_count, align 8, !tbaa !35
  br label %do.cond.4

do.cond.4:                                        ; preds = %do.end
  br label %do.end.5

do.end.5:                                         ; preds = %do.cond.4
  %11 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %default_cmyk6 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %11, i32 0, i32 3
  %12 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %default_cmyk6, align 8, !tbaa !163
  %rc7 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %12, i32 0, i32 18
  %ref_count8 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc7, i32 0, i32 0
  %13 = load i64, i64* %ref_count8, align 8, !tbaa !35
  %tobool9 = icmp ne i64 %13, 0
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
  %14 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %default_cmyk15 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %14, i32 0, i32 3
  %15 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %default_cmyk15, align 8, !tbaa !163
  %rc16 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %15, i32 0, i32 18
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc16, i32 0, i32 2
  %16 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !37
  %17 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %default_cmyk17 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %17, i32 0, i32 3
  %18 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %default_cmyk17, align 8, !tbaa !163
  %rc18 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %18, i32 0, i32 18
  %memory = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc18, i32 0, i32 1
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !36
  %20 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %default_cmyk19 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %20, i32 0, i32 3
  %21 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %default_cmyk19, align 8, !tbaa !163
  %22 = bitcast %struct.cmm_profile_s* %21 to i8*
  call void %16(%struct.gs_memory_s* %19, i8* %22, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.92, i32 0, i32 0)) #5
  br label %do.cond.20

do.cond.20:                                       ; preds = %do.end.14
  br label %do.end.21

do.end.21:                                        ; preds = %do.cond.20
  %23 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %default_cmyk22 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %23, i32 0, i32 3
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %default_cmyk22, align 8, !tbaa !163
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
  %24 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %default_gray = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %24, i32 0, i32 1
  %25 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %default_gray, align 8, !tbaa !161
  %tobool30 = icmp ne %struct.cmm_profile_s* %25, null
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
  %26 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %default_gray36 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %26, i32 0, i32 1
  %27 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %default_gray36, align 8, !tbaa !161
  %rc37 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %27, i32 0, i32 18
  %ref_count38 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc37, i32 0, i32 0
  %28 = load i64, i64* %ref_count38, align 8, !tbaa !35
  %add39 = add nsw i64 %28, -1
  store i64 %add39, i64* %ref_count38, align 8, !tbaa !35
  br label %do.cond.40

do.cond.40:                                       ; preds = %do.end.35
  br label %do.end.41

do.end.41:                                        ; preds = %do.cond.40
  %29 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %default_gray42 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %29, i32 0, i32 1
  %30 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %default_gray42, align 8, !tbaa !161
  %rc43 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %30, i32 0, i32 18
  %ref_count44 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc43, i32 0, i32 0
  %31 = load i64, i64* %ref_count44, align 8, !tbaa !35
  %tobool45 = icmp ne i64 %31, 0
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
  %32 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %default_gray51 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %32, i32 0, i32 1
  %33 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %default_gray51, align 8, !tbaa !161
  %rc52 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %33, i32 0, i32 18
  %free53 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc52, i32 0, i32 2
  %34 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free53, align 8, !tbaa !37
  %35 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %default_gray54 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %35, i32 0, i32 1
  %36 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %default_gray54, align 8, !tbaa !161
  %rc55 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %36, i32 0, i32 18
  %memory56 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc55, i32 0, i32 1
  %37 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory56, align 8, !tbaa !36
  %38 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %default_gray57 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %38, i32 0, i32 1
  %39 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %default_gray57, align 8, !tbaa !161
  %40 = bitcast %struct.cmm_profile_s* %39 to i8*
  call void %34(%struct.gs_memory_s* %37, i8* %40, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.92, i32 0, i32 0)) #5
  br label %do.cond.58

do.cond.58:                                       ; preds = %do.end.50
  br label %do.end.59

do.end.59:                                        ; preds = %do.cond.58
  %41 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %default_gray60 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %41, i32 0, i32 1
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %default_gray60, align 8, !tbaa !161
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
  %42 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %default_rgb = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %42, i32 0, i32 2
  %43 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %default_rgb, align 8, !tbaa !162
  %tobool70 = icmp ne %struct.cmm_profile_s* %43, null
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
  %44 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %default_rgb76 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %44, i32 0, i32 2
  %45 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %default_rgb76, align 8, !tbaa !162
  %rc77 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %45, i32 0, i32 18
  %ref_count78 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc77, i32 0, i32 0
  %46 = load i64, i64* %ref_count78, align 8, !tbaa !35
  %add79 = add nsw i64 %46, -1
  store i64 %add79, i64* %ref_count78, align 8, !tbaa !35
  br label %do.cond.80

do.cond.80:                                       ; preds = %do.end.75
  br label %do.end.81

do.end.81:                                        ; preds = %do.cond.80
  %47 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %default_rgb82 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %47, i32 0, i32 2
  %48 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %default_rgb82, align 8, !tbaa !162
  %rc83 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %48, i32 0, i32 18
  %ref_count84 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc83, i32 0, i32 0
  %49 = load i64, i64* %ref_count84, align 8, !tbaa !35
  %tobool85 = icmp ne i64 %49, 0
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
  %50 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %default_rgb91 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %50, i32 0, i32 2
  %51 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %default_rgb91, align 8, !tbaa !162
  %rc92 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %51, i32 0, i32 18
  %free93 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc92, i32 0, i32 2
  %52 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free93, align 8, !tbaa !37
  %53 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %default_rgb94 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %53, i32 0, i32 2
  %54 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %default_rgb94, align 8, !tbaa !162
  %rc95 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %54, i32 0, i32 18
  %memory96 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc95, i32 0, i32 1
  %55 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory96, align 8, !tbaa !36
  %56 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %default_rgb97 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %56, i32 0, i32 2
  %57 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %default_rgb97, align 8, !tbaa !162
  %58 = bitcast %struct.cmm_profile_s* %57 to i8*
  call void %52(%struct.gs_memory_s* %55, i8* %58, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.92, i32 0, i32 0)) #5
  br label %do.cond.98

do.cond.98:                                       ; preds = %do.end.90
  br label %do.end.99

do.end.99:                                        ; preds = %do.cond.98
  %59 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %default_rgb100 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %59, i32 0, i32 2
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %default_rgb100, align 8, !tbaa !162
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
  %60 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %device_named = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %60, i32 0, i32 0
  %61 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %device_named, align 8, !tbaa !169
  %tobool110 = icmp ne %struct.cmm_profile_s* %61, null
  br i1 %tobool110, label %if.then.111, label %if.end.146

if.then.111:                                      ; preds = %do.body.109
  br label %do.body.112

do.body.112:                                      ; preds = %if.then.111
  br label %do.body.113

do.body.113:                                      ; preds = %do.body.112
  br label %do.cond.114

do.cond.114:                                      ; preds = %do.body.113
  br label %do.end.115

do.end.115:                                       ; preds = %do.cond.114
  %62 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %device_named116 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %62, i32 0, i32 0
  %63 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %device_named116, align 8, !tbaa !169
  %rc117 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %63, i32 0, i32 18
  %ref_count118 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc117, i32 0, i32 0
  %64 = load i64, i64* %ref_count118, align 8, !tbaa !35
  %add119 = add nsw i64 %64, -1
  store i64 %add119, i64* %ref_count118, align 8, !tbaa !35
  br label %do.cond.120

do.cond.120:                                      ; preds = %do.end.115
  br label %do.end.121

do.end.121:                                       ; preds = %do.cond.120
  %65 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %device_named122 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %65, i32 0, i32 0
  %66 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %device_named122, align 8, !tbaa !169
  %rc123 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %66, i32 0, i32 18
  %ref_count124 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc123, i32 0, i32 0
  %67 = load i64, i64* %ref_count124, align 8, !tbaa !35
  %tobool125 = icmp ne i64 %67, 0
  br i1 %tobool125, label %if.else.141, label %if.then.126

if.then.126:                                      ; preds = %do.end.121
  br label %do.body.127

do.body.127:                                      ; preds = %if.then.126
  br label %do.body.128

do.body.128:                                      ; preds = %do.body.127
  br label %do.cond.129

do.cond.129:                                      ; preds = %do.body.128
  br label %do.end.130

do.end.130:                                       ; preds = %do.cond.129
  %68 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %device_named131 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %68, i32 0, i32 0
  %69 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %device_named131, align 8, !tbaa !169
  %rc132 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %69, i32 0, i32 18
  %free133 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc132, i32 0, i32 2
  %70 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free133, align 8, !tbaa !37
  %71 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %device_named134 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %71, i32 0, i32 0
  %72 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %device_named134, align 8, !tbaa !169
  %rc135 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %72, i32 0, i32 18
  %memory136 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc135, i32 0, i32 1
  %73 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory136, align 8, !tbaa !36
  %74 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %device_named137 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %74, i32 0, i32 0
  %75 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %device_named137, align 8, !tbaa !169
  %76 = bitcast %struct.cmm_profile_s* %75 to i8*
  call void %70(%struct.gs_memory_s* %73, i8* %76, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.92, i32 0, i32 0)) #5
  br label %do.cond.138

do.cond.138:                                      ; preds = %do.end.130
  br label %do.end.139

do.end.139:                                       ; preds = %do.cond.138
  %77 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %device_named140 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %77, i32 0, i32 0
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %device_named140, align 8, !tbaa !169
  br label %if.end.145

if.else.141:                                      ; preds = %do.end.121
  br label %do.body.142

do.body.142:                                      ; preds = %if.else.141
  br label %do.cond.143

do.cond.143:                                      ; preds = %do.body.142
  br label %do.end.144

do.end.144:                                       ; preds = %do.cond.143
  br label %if.end.145

if.end.145:                                       ; preds = %do.end.144, %do.end.139
  br label %if.end.146

if.end.146:                                       ; preds = %if.end.145, %do.body.109
  br label %do.cond.147

do.cond.147:                                      ; preds = %if.end.146
  br label %do.end.148

do.end.148:                                       ; preds = %do.cond.147
  br label %do.body.149

do.body.149:                                      ; preds = %do.end.148
  %78 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %lab_profile = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %78, i32 0, i32 4
  %79 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %lab_profile, align 8, !tbaa !167
  %tobool150 = icmp ne %struct.cmm_profile_s* %79, null
  br i1 %tobool150, label %if.then.151, label %if.end.186

if.then.151:                                      ; preds = %do.body.149
  br label %do.body.152

do.body.152:                                      ; preds = %if.then.151
  br label %do.body.153

do.body.153:                                      ; preds = %do.body.152
  br label %do.cond.154

do.cond.154:                                      ; preds = %do.body.153
  br label %do.end.155

do.end.155:                                       ; preds = %do.cond.154
  %80 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %lab_profile156 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %80, i32 0, i32 4
  %81 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %lab_profile156, align 8, !tbaa !167
  %rc157 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %81, i32 0, i32 18
  %ref_count158 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc157, i32 0, i32 0
  %82 = load i64, i64* %ref_count158, align 8, !tbaa !35
  %add159 = add nsw i64 %82, -1
  store i64 %add159, i64* %ref_count158, align 8, !tbaa !35
  br label %do.cond.160

do.cond.160:                                      ; preds = %do.end.155
  br label %do.end.161

do.end.161:                                       ; preds = %do.cond.160
  %83 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %lab_profile162 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %83, i32 0, i32 4
  %84 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %lab_profile162, align 8, !tbaa !167
  %rc163 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %84, i32 0, i32 18
  %ref_count164 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc163, i32 0, i32 0
  %85 = load i64, i64* %ref_count164, align 8, !tbaa !35
  %tobool165 = icmp ne i64 %85, 0
  br i1 %tobool165, label %if.else.181, label %if.then.166

if.then.166:                                      ; preds = %do.end.161
  br label %do.body.167

do.body.167:                                      ; preds = %if.then.166
  br label %do.body.168

do.body.168:                                      ; preds = %do.body.167
  br label %do.cond.169

do.cond.169:                                      ; preds = %do.body.168
  br label %do.end.170

do.end.170:                                       ; preds = %do.cond.169
  %86 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %lab_profile171 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %86, i32 0, i32 4
  %87 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %lab_profile171, align 8, !tbaa !167
  %rc172 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %87, i32 0, i32 18
  %free173 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc172, i32 0, i32 2
  %88 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free173, align 8, !tbaa !37
  %89 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %lab_profile174 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %89, i32 0, i32 4
  %90 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %lab_profile174, align 8, !tbaa !167
  %rc175 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %90, i32 0, i32 18
  %memory176 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc175, i32 0, i32 1
  %91 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory176, align 8, !tbaa !36
  %92 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %lab_profile177 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %92, i32 0, i32 4
  %93 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %lab_profile177, align 8, !tbaa !167
  %94 = bitcast %struct.cmm_profile_s* %93 to i8*
  call void %88(%struct.gs_memory_s* %91, i8* %94, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.92, i32 0, i32 0)) #5
  br label %do.cond.178

do.cond.178:                                      ; preds = %do.end.170
  br label %do.end.179

do.end.179:                                       ; preds = %do.cond.178
  %95 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %lab_profile180 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %95, i32 0, i32 4
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %lab_profile180, align 8, !tbaa !167
  br label %if.end.185

if.else.181:                                      ; preds = %do.end.161
  br label %do.body.182

do.body.182:                                      ; preds = %if.else.181
  br label %do.cond.183

do.cond.183:                                      ; preds = %do.body.182
  br label %do.end.184

do.end.184:                                       ; preds = %do.cond.183
  br label %if.end.185

if.end.185:                                       ; preds = %do.end.184, %do.end.179
  br label %if.end.186

if.end.186:                                       ; preds = %if.end.185, %do.body.149
  br label %do.cond.187

do.cond.187:                                      ; preds = %if.end.186
  br label %do.end.188

do.end.188:                                       ; preds = %do.cond.187
  br label %do.body.189

do.body.189:                                      ; preds = %do.end.188
  %96 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %graytok_profile = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %96, i32 0, i32 5
  %97 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %graytok_profile, align 8, !tbaa !168
  %tobool190 = icmp ne %struct.cmm_profile_s* %97, null
  br i1 %tobool190, label %if.then.191, label %if.end.226

if.then.191:                                      ; preds = %do.body.189
  br label %do.body.192

do.body.192:                                      ; preds = %if.then.191
  br label %do.body.193

do.body.193:                                      ; preds = %do.body.192
  br label %do.cond.194

do.cond.194:                                      ; preds = %do.body.193
  br label %do.end.195

do.end.195:                                       ; preds = %do.cond.194
  %98 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %graytok_profile196 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %98, i32 0, i32 5
  %99 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %graytok_profile196, align 8, !tbaa !168
  %rc197 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %99, i32 0, i32 18
  %ref_count198 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc197, i32 0, i32 0
  %100 = load i64, i64* %ref_count198, align 8, !tbaa !35
  %add199 = add nsw i64 %100, -1
  store i64 %add199, i64* %ref_count198, align 8, !tbaa !35
  br label %do.cond.200

do.cond.200:                                      ; preds = %do.end.195
  br label %do.end.201

do.end.201:                                       ; preds = %do.cond.200
  %101 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %graytok_profile202 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %101, i32 0, i32 5
  %102 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %graytok_profile202, align 8, !tbaa !168
  %rc203 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %102, i32 0, i32 18
  %ref_count204 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc203, i32 0, i32 0
  %103 = load i64, i64* %ref_count204, align 8, !tbaa !35
  %tobool205 = icmp ne i64 %103, 0
  br i1 %tobool205, label %if.else.221, label %if.then.206

if.then.206:                                      ; preds = %do.end.201
  br label %do.body.207

do.body.207:                                      ; preds = %if.then.206
  br label %do.body.208

do.body.208:                                      ; preds = %do.body.207
  br label %do.cond.209

do.cond.209:                                      ; preds = %do.body.208
  br label %do.end.210

do.end.210:                                       ; preds = %do.cond.209
  %104 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %graytok_profile211 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %104, i32 0, i32 5
  %105 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %graytok_profile211, align 8, !tbaa !168
  %rc212 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %105, i32 0, i32 18
  %free213 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc212, i32 0, i32 2
  %106 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free213, align 8, !tbaa !37
  %107 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %graytok_profile214 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %107, i32 0, i32 5
  %108 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %graytok_profile214, align 8, !tbaa !168
  %rc215 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %108, i32 0, i32 18
  %memory216 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc215, i32 0, i32 1
  %109 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory216, align 8, !tbaa !36
  %110 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %graytok_profile217 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %110, i32 0, i32 5
  %111 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %graytok_profile217, align 8, !tbaa !168
  %112 = bitcast %struct.cmm_profile_s* %111 to i8*
  call void %106(%struct.gs_memory_s* %109, i8* %112, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.92, i32 0, i32 0)) #5
  br label %do.cond.218

do.cond.218:                                      ; preds = %do.end.210
  br label %do.end.219

do.end.219:                                       ; preds = %do.cond.218
  %113 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %graytok_profile220 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %113, i32 0, i32 5
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %graytok_profile220, align 8, !tbaa !168
  br label %if.end.225

if.else.221:                                      ; preds = %do.end.201
  br label %do.body.222

do.body.222:                                      ; preds = %if.else.221
  br label %do.cond.223

do.cond.223:                                      ; preds = %do.body.222
  br label %do.end.224

do.end.224:                                       ; preds = %do.cond.223
  br label %if.end.225

if.end.225:                                       ; preds = %do.end.224, %do.end.219
  br label %if.end.226

if.end.226:                                       ; preds = %if.end.225, %do.body.189
  br label %do.cond.227

do.cond.227:                                      ; preds = %if.end.226
  br label %do.end.228

do.end.228:                                       ; preds = %do.cond.227
  br label %do.body.229

do.body.229:                                      ; preds = %do.end.228
  %114 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %srcgtag_profile = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %114, i32 0, i32 9
  %115 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag_profile, align 8, !tbaa !71
  %tobool230 = icmp ne %struct.cmm_srcgtag_profile_s* %115, null
  br i1 %tobool230, label %if.then.231, label %if.end.266

if.then.231:                                      ; preds = %do.body.229
  br label %do.body.232

do.body.232:                                      ; preds = %if.then.231
  br label %do.body.233

do.body.233:                                      ; preds = %do.body.232
  br label %do.cond.234

do.cond.234:                                      ; preds = %do.body.233
  br label %do.end.235

do.end.235:                                       ; preds = %do.cond.234
  %116 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %srcgtag_profile236 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %116, i32 0, i32 9
  %117 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag_profile236, align 8, !tbaa !71
  %rc237 = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %117, i32 0, i32 8
  %ref_count238 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc237, i32 0, i32 0
  %118 = load i64, i64* %ref_count238, align 8, !tbaa !73
  %add239 = add nsw i64 %118, -1
  store i64 %add239, i64* %ref_count238, align 8, !tbaa !73
  br label %do.cond.240

do.cond.240:                                      ; preds = %do.end.235
  br label %do.end.241

do.end.241:                                       ; preds = %do.cond.240
  %119 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %srcgtag_profile242 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %119, i32 0, i32 9
  %120 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag_profile242, align 8, !tbaa !71
  %rc243 = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %120, i32 0, i32 8
  %ref_count244 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc243, i32 0, i32 0
  %121 = load i64, i64* %ref_count244, align 8, !tbaa !73
  %tobool245 = icmp ne i64 %121, 0
  br i1 %tobool245, label %if.else.261, label %if.then.246

if.then.246:                                      ; preds = %do.end.241
  br label %do.body.247

do.body.247:                                      ; preds = %if.then.246
  br label %do.body.248

do.body.248:                                      ; preds = %do.body.247
  br label %do.cond.249

do.cond.249:                                      ; preds = %do.body.248
  br label %do.end.250

do.end.250:                                       ; preds = %do.cond.249
  %122 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %srcgtag_profile251 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %122, i32 0, i32 9
  %123 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag_profile251, align 8, !tbaa !71
  %rc252 = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %123, i32 0, i32 8
  %free253 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc252, i32 0, i32 2
  %124 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free253, align 8, !tbaa !75
  %125 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %srcgtag_profile254 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %125, i32 0, i32 9
  %126 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag_profile254, align 8, !tbaa !71
  %rc255 = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %126, i32 0, i32 8
  %memory256 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc255, i32 0, i32 1
  %127 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory256, align 8, !tbaa !76
  %128 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %srcgtag_profile257 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %128, i32 0, i32 9
  %129 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag_profile257, align 8, !tbaa !71
  %130 = bitcast %struct.cmm_srcgtag_profile_s* %129 to i8*
  call void %124(%struct.gs_memory_s* %127, i8* %130, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.92, i32 0, i32 0)) #5
  br label %do.cond.258

do.cond.258:                                      ; preds = %do.end.250
  br label %do.end.259

do.end.259:                                       ; preds = %do.cond.258
  %131 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %srcgtag_profile260 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %131, i32 0, i32 9
  store %struct.cmm_srcgtag_profile_s* null, %struct.cmm_srcgtag_profile_s** %srcgtag_profile260, align 8, !tbaa !71
  br label %if.end.265

if.else.261:                                      ; preds = %do.end.241
  br label %do.body.262

do.body.262:                                      ; preds = %if.else.261
  br label %do.cond.263

do.cond.263:                                      ; preds = %do.body.262
  br label %do.end.264

do.end.264:                                       ; preds = %do.cond.263
  br label %if.end.265

if.end.265:                                       ; preds = %do.end.264, %do.end.259
  br label %if.end.266

if.end.266:                                       ; preds = %if.end.265, %do.body.229
  br label %do.cond.267

do.cond.267:                                      ; preds = %if.end.266
  br label %do.end.268

do.end.268:                                       ; preds = %do.cond.267
  %132 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %device_n269 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %132, i32 0, i32 6
  %133 = load %struct.gsicc_devicen_s*, %struct.gsicc_devicen_s** %device_n269, align 8, !tbaa !57
  %cmp = icmp ne %struct.gsicc_devicen_s* %133, null
  br i1 %cmp, label %if.then.270, label %if.end.321

if.then.270:                                      ; preds = %do.end.268
  %134 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %device_n271 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %134, i32 0, i32 6
  %135 = load %struct.gsicc_devicen_s*, %struct.gsicc_devicen_s** %device_n271, align 8, !tbaa !57
  %head = getelementptr inbounds %struct.gsicc_devicen_s, %struct.gsicc_devicen_s* %135, i32 0, i32 0
  %136 = load %struct.gsicc_devicen_entry_s*, %struct.gsicc_devicen_entry_s** %head, align 8, !tbaa !58
  store %struct.gsicc_devicen_entry_s* %136, %struct.gsicc_devicen_entry_s** %device_n, align 8, !tbaa !1
  store i32 0, i32* %k, align 4, !tbaa !13
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.270
  %137 = load i32, i32* %k, align 4, !tbaa !13
  %138 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %device_n272 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %138, i32 0, i32 6
  %139 = load %struct.gsicc_devicen_s*, %struct.gsicc_devicen_s** %device_n272, align 8, !tbaa !57
  %count = getelementptr inbounds %struct.gsicc_devicen_s, %struct.gsicc_devicen_s* %139, i32 0, i32 2
  %140 = load i32, i32* %count, align 4, !tbaa !60
  %cmp273 = icmp slt i32 %137, %140
  br i1 %cmp273, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body.274

do.body.274:                                      ; preds = %for.body
  %141 = load %struct.gsicc_devicen_entry_s*, %struct.gsicc_devicen_entry_s** %device_n, align 8, !tbaa !1
  %iccprofile = getelementptr inbounds %struct.gsicc_devicen_entry_s, %struct.gsicc_devicen_entry_s* %141, i32 0, i32 0
  %142 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %iccprofile, align 8, !tbaa !61
  %tobool275 = icmp ne %struct.cmm_profile_s* %142, null
  br i1 %tobool275, label %if.then.276, label %if.end.311

if.then.276:                                      ; preds = %do.body.274
  br label %do.body.277

do.body.277:                                      ; preds = %if.then.276
  br label %do.body.278

do.body.278:                                      ; preds = %do.body.277
  br label %do.cond.279

do.cond.279:                                      ; preds = %do.body.278
  br label %do.end.280

do.end.280:                                       ; preds = %do.cond.279
  %143 = load %struct.gsicc_devicen_entry_s*, %struct.gsicc_devicen_entry_s** %device_n, align 8, !tbaa !1
  %iccprofile281 = getelementptr inbounds %struct.gsicc_devicen_entry_s, %struct.gsicc_devicen_entry_s* %143, i32 0, i32 0
  %144 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %iccprofile281, align 8, !tbaa !61
  %rc282 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %144, i32 0, i32 18
  %ref_count283 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc282, i32 0, i32 0
  %145 = load i64, i64* %ref_count283, align 8, !tbaa !35
  %add284 = add nsw i64 %145, -1
  store i64 %add284, i64* %ref_count283, align 8, !tbaa !35
  br label %do.cond.285

do.cond.285:                                      ; preds = %do.end.280
  br label %do.end.286

do.end.286:                                       ; preds = %do.cond.285
  %146 = load %struct.gsicc_devicen_entry_s*, %struct.gsicc_devicen_entry_s** %device_n, align 8, !tbaa !1
  %iccprofile287 = getelementptr inbounds %struct.gsicc_devicen_entry_s, %struct.gsicc_devicen_entry_s* %146, i32 0, i32 0
  %147 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %iccprofile287, align 8, !tbaa !61
  %rc288 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %147, i32 0, i32 18
  %ref_count289 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc288, i32 0, i32 0
  %148 = load i64, i64* %ref_count289, align 8, !tbaa !35
  %tobool290 = icmp ne i64 %148, 0
  br i1 %tobool290, label %if.else.306, label %if.then.291

if.then.291:                                      ; preds = %do.end.286
  br label %do.body.292

do.body.292:                                      ; preds = %if.then.291
  br label %do.body.293

do.body.293:                                      ; preds = %do.body.292
  br label %do.cond.294

do.cond.294:                                      ; preds = %do.body.293
  br label %do.end.295

do.end.295:                                       ; preds = %do.cond.294
  %149 = load %struct.gsicc_devicen_entry_s*, %struct.gsicc_devicen_entry_s** %device_n, align 8, !tbaa !1
  %iccprofile296 = getelementptr inbounds %struct.gsicc_devicen_entry_s, %struct.gsicc_devicen_entry_s* %149, i32 0, i32 0
  %150 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %iccprofile296, align 8, !tbaa !61
  %rc297 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %150, i32 0, i32 18
  %free298 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc297, i32 0, i32 2
  %151 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free298, align 8, !tbaa !37
  %152 = load %struct.gsicc_devicen_entry_s*, %struct.gsicc_devicen_entry_s** %device_n, align 8, !tbaa !1
  %iccprofile299 = getelementptr inbounds %struct.gsicc_devicen_entry_s, %struct.gsicc_devicen_entry_s* %152, i32 0, i32 0
  %153 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %iccprofile299, align 8, !tbaa !61
  %rc300 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %153, i32 0, i32 18
  %memory301 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc300, i32 0, i32 1
  %154 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory301, align 8, !tbaa !36
  %155 = load %struct.gsicc_devicen_entry_s*, %struct.gsicc_devicen_entry_s** %device_n, align 8, !tbaa !1
  %iccprofile302 = getelementptr inbounds %struct.gsicc_devicen_entry_s, %struct.gsicc_devicen_entry_s* %155, i32 0, i32 0
  %156 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %iccprofile302, align 8, !tbaa !61
  %157 = bitcast %struct.cmm_profile_s* %156 to i8*
  call void %151(%struct.gs_memory_s* %154, i8* %157, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.92, i32 0, i32 0)) #5
  br label %do.cond.303

do.cond.303:                                      ; preds = %do.end.295
  br label %do.end.304

do.end.304:                                       ; preds = %do.cond.303
  %158 = load %struct.gsicc_devicen_entry_s*, %struct.gsicc_devicen_entry_s** %device_n, align 8, !tbaa !1
  %iccprofile305 = getelementptr inbounds %struct.gsicc_devicen_entry_s, %struct.gsicc_devicen_entry_s* %158, i32 0, i32 0
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %iccprofile305, align 8, !tbaa !61
  br label %if.end.310

if.else.306:                                      ; preds = %do.end.286
  br label %do.body.307

do.body.307:                                      ; preds = %if.else.306
  br label %do.cond.308

do.cond.308:                                      ; preds = %do.body.307
  br label %do.end.309

do.end.309:                                       ; preds = %do.cond.308
  br label %if.end.310

if.end.310:                                       ; preds = %do.end.309, %do.end.304
  br label %if.end.311

if.end.311:                                       ; preds = %if.end.310, %do.body.274
  br label %do.cond.312

do.cond.312:                                      ; preds = %if.end.311
  br label %do.end.313

do.end.313:                                       ; preds = %do.cond.312
  %159 = load %struct.gsicc_devicen_entry_s*, %struct.gsicc_devicen_entry_s** %device_n, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.gsicc_devicen_entry_s, %struct.gsicc_devicen_entry_s* %159, i32 0, i32 1
  %160 = load %struct.gsicc_devicen_entry_s*, %struct.gsicc_devicen_entry_s** %next, align 8, !tbaa !85
  store %struct.gsicc_devicen_entry_s* %160, %struct.gsicc_devicen_entry_s** %device_n_next, align 8, !tbaa !1
  %161 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %memory314 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %161, i32 0, i32 10
  %162 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory314, align 8, !tbaa !50
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %162, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %163 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !31
  %164 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %memory315 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %164, i32 0, i32 10
  %165 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory315, align 8, !tbaa !50
  %166 = load %struct.gsicc_devicen_entry_s*, %struct.gsicc_devicen_entry_s** %device_n, align 8, !tbaa !1
  %167 = bitcast %struct.gsicc_devicen_entry_s* %166 to i8*
  call void %163(%struct.gs_memory_s* %165, i8* %167, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.92, i32 0, i32 0)) #5
  %168 = load %struct.gsicc_devicen_entry_s*, %struct.gsicc_devicen_entry_s** %device_n_next, align 8, !tbaa !1
  store %struct.gsicc_devicen_entry_s* %168, %struct.gsicc_devicen_entry_s** %device_n, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %do.end.313
  %169 = load i32, i32* %k, align 4, !tbaa !13
  %inc = add nsw i32 %169, 1
  store i32 %inc, i32* %k, align 4, !tbaa !13
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %170 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %memory316 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %170, i32 0, i32 10
  %171 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory316, align 8, !tbaa !50
  %procs317 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %171, i32 0, i32 1
  %free_object318 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs317, i32 0, i32 2
  %172 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object318, align 8, !tbaa !31
  %173 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %memory319 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %173, i32 0, i32 10
  %174 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory319, align 8, !tbaa !50
  %175 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %device_n320 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %175, i32 0, i32 6
  %176 = load %struct.gsicc_devicen_s*, %struct.gsicc_devicen_s** %device_n320, align 8, !tbaa !57
  %177 = bitcast %struct.gsicc_devicen_s* %176 to i8*
  call void %172(%struct.gs_memory_s* %174, i8* %177, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.92, i32 0, i32 0)) #5
  br label %if.end.321

if.end.321:                                       ; preds = %for.end, %do.end.268
  %178 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %smask_profiles = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %178, i32 0, i32 7
  %179 = load %struct.gsicc_smask_s*, %struct.gsicc_smask_s** %smask_profiles, align 8, !tbaa !53
  %cmp322 = icmp ne %struct.gsicc_smask_s* %179, null
  br i1 %cmp322, label %if.then.323, label %if.end.465

if.then.323:                                      ; preds = %if.end.321
  br label %do.body.324

do.body.324:                                      ; preds = %if.then.323
  %180 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %smask_profiles325 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %180, i32 0, i32 7
  %181 = load %struct.gsicc_smask_s*, %struct.gsicc_smask_s** %smask_profiles325, align 8, !tbaa !53
  %smask_gray = getelementptr inbounds %struct.gsicc_smask_s, %struct.gsicc_smask_s* %181, i32 0, i32 0
  %182 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %smask_gray, align 8, !tbaa !44
  %tobool326 = icmp ne %struct.cmm_profile_s* %182, null
  br i1 %tobool326, label %if.then.327, label %if.end.368

if.then.327:                                      ; preds = %do.body.324
  br label %do.body.328

do.body.328:                                      ; preds = %if.then.327
  br label %do.body.329

do.body.329:                                      ; preds = %do.body.328
  br label %do.cond.330

do.cond.330:                                      ; preds = %do.body.329
  br label %do.end.331

do.end.331:                                       ; preds = %do.cond.330
  %183 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %smask_profiles332 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %183, i32 0, i32 7
  %184 = load %struct.gsicc_smask_s*, %struct.gsicc_smask_s** %smask_profiles332, align 8, !tbaa !53
  %smask_gray333 = getelementptr inbounds %struct.gsicc_smask_s, %struct.gsicc_smask_s* %184, i32 0, i32 0
  %185 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %smask_gray333, align 8, !tbaa !44
  %rc334 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %185, i32 0, i32 18
  %ref_count335 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc334, i32 0, i32 0
  %186 = load i64, i64* %ref_count335, align 8, !tbaa !35
  %add336 = add nsw i64 %186, -1
  store i64 %add336, i64* %ref_count335, align 8, !tbaa !35
  br label %do.cond.337

do.cond.337:                                      ; preds = %do.end.331
  br label %do.end.338

do.end.338:                                       ; preds = %do.cond.337
  %187 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %smask_profiles339 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %187, i32 0, i32 7
  %188 = load %struct.gsicc_smask_s*, %struct.gsicc_smask_s** %smask_profiles339, align 8, !tbaa !53
  %smask_gray340 = getelementptr inbounds %struct.gsicc_smask_s, %struct.gsicc_smask_s* %188, i32 0, i32 0
  %189 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %smask_gray340, align 8, !tbaa !44
  %rc341 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %189, i32 0, i32 18
  %ref_count342 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc341, i32 0, i32 0
  %190 = load i64, i64* %ref_count342, align 8, !tbaa !35
  %tobool343 = icmp ne i64 %190, 0
  br i1 %tobool343, label %if.else.363, label %if.then.344

if.then.344:                                      ; preds = %do.end.338
  br label %do.body.345

do.body.345:                                      ; preds = %if.then.344
  br label %do.body.346

do.body.346:                                      ; preds = %do.body.345
  br label %do.cond.347

do.cond.347:                                      ; preds = %do.body.346
  br label %do.end.348

do.end.348:                                       ; preds = %do.cond.347
  %191 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %smask_profiles349 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %191, i32 0, i32 7
  %192 = load %struct.gsicc_smask_s*, %struct.gsicc_smask_s** %smask_profiles349, align 8, !tbaa !53
  %smask_gray350 = getelementptr inbounds %struct.gsicc_smask_s, %struct.gsicc_smask_s* %192, i32 0, i32 0
  %193 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %smask_gray350, align 8, !tbaa !44
  %rc351 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %193, i32 0, i32 18
  %free352 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc351, i32 0, i32 2
  %194 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free352, align 8, !tbaa !37
  %195 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %smask_profiles353 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %195, i32 0, i32 7
  %196 = load %struct.gsicc_smask_s*, %struct.gsicc_smask_s** %smask_profiles353, align 8, !tbaa !53
  %smask_gray354 = getelementptr inbounds %struct.gsicc_smask_s, %struct.gsicc_smask_s* %196, i32 0, i32 0
  %197 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %smask_gray354, align 8, !tbaa !44
  %rc355 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %197, i32 0, i32 18
  %memory356 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc355, i32 0, i32 1
  %198 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory356, align 8, !tbaa !36
  %199 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %smask_profiles357 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %199, i32 0, i32 7
  %200 = load %struct.gsicc_smask_s*, %struct.gsicc_smask_s** %smask_profiles357, align 8, !tbaa !53
  %smask_gray358 = getelementptr inbounds %struct.gsicc_smask_s, %struct.gsicc_smask_s* %200, i32 0, i32 0
  %201 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %smask_gray358, align 8, !tbaa !44
  %202 = bitcast %struct.cmm_profile_s* %201 to i8*
  call void %194(%struct.gs_memory_s* %198, i8* %202, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.92, i32 0, i32 0)) #5
  br label %do.cond.359

do.cond.359:                                      ; preds = %do.end.348
  br label %do.end.360

do.end.360:                                       ; preds = %do.cond.359
  %203 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %smask_profiles361 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %203, i32 0, i32 7
  %204 = load %struct.gsicc_smask_s*, %struct.gsicc_smask_s** %smask_profiles361, align 8, !tbaa !53
  %smask_gray362 = getelementptr inbounds %struct.gsicc_smask_s, %struct.gsicc_smask_s* %204, i32 0, i32 0
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %smask_gray362, align 8, !tbaa !44
  br label %if.end.367

if.else.363:                                      ; preds = %do.end.338
  br label %do.body.364

do.body.364:                                      ; preds = %if.else.363
  br label %do.cond.365

do.cond.365:                                      ; preds = %do.body.364
  br label %do.end.366

do.end.366:                                       ; preds = %do.cond.365
  br label %if.end.367

if.end.367:                                       ; preds = %do.end.366, %do.end.360
  br label %if.end.368

if.end.368:                                       ; preds = %if.end.367, %do.body.324
  br label %do.cond.369

do.cond.369:                                      ; preds = %if.end.368
  br label %do.end.370

do.end.370:                                       ; preds = %do.cond.369
  br label %do.body.371

do.body.371:                                      ; preds = %do.end.370
  %205 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %smask_profiles372 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %205, i32 0, i32 7
  %206 = load %struct.gsicc_smask_s*, %struct.gsicc_smask_s** %smask_profiles372, align 8, !tbaa !53
  %smask_rgb = getelementptr inbounds %struct.gsicc_smask_s, %struct.gsicc_smask_s* %206, i32 0, i32 1
  %207 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %smask_rgb, align 8, !tbaa !46
  %tobool373 = icmp ne %struct.cmm_profile_s* %207, null
  br i1 %tobool373, label %if.then.374, label %if.end.415

if.then.374:                                      ; preds = %do.body.371
  br label %do.body.375

do.body.375:                                      ; preds = %if.then.374
  br label %do.body.376

do.body.376:                                      ; preds = %do.body.375
  br label %do.cond.377

do.cond.377:                                      ; preds = %do.body.376
  br label %do.end.378

do.end.378:                                       ; preds = %do.cond.377
  %208 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %smask_profiles379 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %208, i32 0, i32 7
  %209 = load %struct.gsicc_smask_s*, %struct.gsicc_smask_s** %smask_profiles379, align 8, !tbaa !53
  %smask_rgb380 = getelementptr inbounds %struct.gsicc_smask_s, %struct.gsicc_smask_s* %209, i32 0, i32 1
  %210 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %smask_rgb380, align 8, !tbaa !46
  %rc381 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %210, i32 0, i32 18
  %ref_count382 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc381, i32 0, i32 0
  %211 = load i64, i64* %ref_count382, align 8, !tbaa !35
  %add383 = add nsw i64 %211, -1
  store i64 %add383, i64* %ref_count382, align 8, !tbaa !35
  br label %do.cond.384

do.cond.384:                                      ; preds = %do.end.378
  br label %do.end.385

do.end.385:                                       ; preds = %do.cond.384
  %212 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %smask_profiles386 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %212, i32 0, i32 7
  %213 = load %struct.gsicc_smask_s*, %struct.gsicc_smask_s** %smask_profiles386, align 8, !tbaa !53
  %smask_rgb387 = getelementptr inbounds %struct.gsicc_smask_s, %struct.gsicc_smask_s* %213, i32 0, i32 1
  %214 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %smask_rgb387, align 8, !tbaa !46
  %rc388 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %214, i32 0, i32 18
  %ref_count389 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc388, i32 0, i32 0
  %215 = load i64, i64* %ref_count389, align 8, !tbaa !35
  %tobool390 = icmp ne i64 %215, 0
  br i1 %tobool390, label %if.else.410, label %if.then.391

if.then.391:                                      ; preds = %do.end.385
  br label %do.body.392

do.body.392:                                      ; preds = %if.then.391
  br label %do.body.393

do.body.393:                                      ; preds = %do.body.392
  br label %do.cond.394

do.cond.394:                                      ; preds = %do.body.393
  br label %do.end.395

do.end.395:                                       ; preds = %do.cond.394
  %216 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %smask_profiles396 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %216, i32 0, i32 7
  %217 = load %struct.gsicc_smask_s*, %struct.gsicc_smask_s** %smask_profiles396, align 8, !tbaa !53
  %smask_rgb397 = getelementptr inbounds %struct.gsicc_smask_s, %struct.gsicc_smask_s* %217, i32 0, i32 1
  %218 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %smask_rgb397, align 8, !tbaa !46
  %rc398 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %218, i32 0, i32 18
  %free399 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc398, i32 0, i32 2
  %219 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free399, align 8, !tbaa !37
  %220 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %smask_profiles400 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %220, i32 0, i32 7
  %221 = load %struct.gsicc_smask_s*, %struct.gsicc_smask_s** %smask_profiles400, align 8, !tbaa !53
  %smask_rgb401 = getelementptr inbounds %struct.gsicc_smask_s, %struct.gsicc_smask_s* %221, i32 0, i32 1
  %222 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %smask_rgb401, align 8, !tbaa !46
  %rc402 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %222, i32 0, i32 18
  %memory403 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc402, i32 0, i32 1
  %223 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory403, align 8, !tbaa !36
  %224 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %smask_profiles404 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %224, i32 0, i32 7
  %225 = load %struct.gsicc_smask_s*, %struct.gsicc_smask_s** %smask_profiles404, align 8, !tbaa !53
  %smask_rgb405 = getelementptr inbounds %struct.gsicc_smask_s, %struct.gsicc_smask_s* %225, i32 0, i32 1
  %226 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %smask_rgb405, align 8, !tbaa !46
  %227 = bitcast %struct.cmm_profile_s* %226 to i8*
  call void %219(%struct.gs_memory_s* %223, i8* %227, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.92, i32 0, i32 0)) #5
  br label %do.cond.406

do.cond.406:                                      ; preds = %do.end.395
  br label %do.end.407

do.end.407:                                       ; preds = %do.cond.406
  %228 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %smask_profiles408 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %228, i32 0, i32 7
  %229 = load %struct.gsicc_smask_s*, %struct.gsicc_smask_s** %smask_profiles408, align 8, !tbaa !53
  %smask_rgb409 = getelementptr inbounds %struct.gsicc_smask_s, %struct.gsicc_smask_s* %229, i32 0, i32 1
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %smask_rgb409, align 8, !tbaa !46
  br label %if.end.414

if.else.410:                                      ; preds = %do.end.385
  br label %do.body.411

do.body.411:                                      ; preds = %if.else.410
  br label %do.cond.412

do.cond.412:                                      ; preds = %do.body.411
  br label %do.end.413

do.end.413:                                       ; preds = %do.cond.412
  br label %if.end.414

if.end.414:                                       ; preds = %do.end.413, %do.end.407
  br label %if.end.415

if.end.415:                                       ; preds = %if.end.414, %do.body.371
  br label %do.cond.416

do.cond.416:                                      ; preds = %if.end.415
  br label %do.end.417

do.end.417:                                       ; preds = %do.cond.416
  br label %do.body.418

do.body.418:                                      ; preds = %do.end.417
  %230 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %smask_profiles419 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %230, i32 0, i32 7
  %231 = load %struct.gsicc_smask_s*, %struct.gsicc_smask_s** %smask_profiles419, align 8, !tbaa !53
  %smask_cmyk = getelementptr inbounds %struct.gsicc_smask_s, %struct.gsicc_smask_s* %231, i32 0, i32 2
  %232 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %smask_cmyk, align 8, !tbaa !47
  %tobool420 = icmp ne %struct.cmm_profile_s* %232, null
  br i1 %tobool420, label %if.then.421, label %if.end.462

if.then.421:                                      ; preds = %do.body.418
  br label %do.body.422

do.body.422:                                      ; preds = %if.then.421
  br label %do.body.423

do.body.423:                                      ; preds = %do.body.422
  br label %do.cond.424

do.cond.424:                                      ; preds = %do.body.423
  br label %do.end.425

do.end.425:                                       ; preds = %do.cond.424
  %233 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %smask_profiles426 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %233, i32 0, i32 7
  %234 = load %struct.gsicc_smask_s*, %struct.gsicc_smask_s** %smask_profiles426, align 8, !tbaa !53
  %smask_cmyk427 = getelementptr inbounds %struct.gsicc_smask_s, %struct.gsicc_smask_s* %234, i32 0, i32 2
  %235 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %smask_cmyk427, align 8, !tbaa !47
  %rc428 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %235, i32 0, i32 18
  %ref_count429 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc428, i32 0, i32 0
  %236 = load i64, i64* %ref_count429, align 8, !tbaa !35
  %add430 = add nsw i64 %236, -1
  store i64 %add430, i64* %ref_count429, align 8, !tbaa !35
  br label %do.cond.431

do.cond.431:                                      ; preds = %do.end.425
  br label %do.end.432

do.end.432:                                       ; preds = %do.cond.431
  %237 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %smask_profiles433 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %237, i32 0, i32 7
  %238 = load %struct.gsicc_smask_s*, %struct.gsicc_smask_s** %smask_profiles433, align 8, !tbaa !53
  %smask_cmyk434 = getelementptr inbounds %struct.gsicc_smask_s, %struct.gsicc_smask_s* %238, i32 0, i32 2
  %239 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %smask_cmyk434, align 8, !tbaa !47
  %rc435 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %239, i32 0, i32 18
  %ref_count436 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc435, i32 0, i32 0
  %240 = load i64, i64* %ref_count436, align 8, !tbaa !35
  %tobool437 = icmp ne i64 %240, 0
  br i1 %tobool437, label %if.else.457, label %if.then.438

if.then.438:                                      ; preds = %do.end.432
  br label %do.body.439

do.body.439:                                      ; preds = %if.then.438
  br label %do.body.440

do.body.440:                                      ; preds = %do.body.439
  br label %do.cond.441

do.cond.441:                                      ; preds = %do.body.440
  br label %do.end.442

do.end.442:                                       ; preds = %do.cond.441
  %241 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %smask_profiles443 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %241, i32 0, i32 7
  %242 = load %struct.gsicc_smask_s*, %struct.gsicc_smask_s** %smask_profiles443, align 8, !tbaa !53
  %smask_cmyk444 = getelementptr inbounds %struct.gsicc_smask_s, %struct.gsicc_smask_s* %242, i32 0, i32 2
  %243 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %smask_cmyk444, align 8, !tbaa !47
  %rc445 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %243, i32 0, i32 18
  %free446 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc445, i32 0, i32 2
  %244 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free446, align 8, !tbaa !37
  %245 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %smask_profiles447 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %245, i32 0, i32 7
  %246 = load %struct.gsicc_smask_s*, %struct.gsicc_smask_s** %smask_profiles447, align 8, !tbaa !53
  %smask_cmyk448 = getelementptr inbounds %struct.gsicc_smask_s, %struct.gsicc_smask_s* %246, i32 0, i32 2
  %247 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %smask_cmyk448, align 8, !tbaa !47
  %rc449 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %247, i32 0, i32 18
  %memory450 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc449, i32 0, i32 1
  %248 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory450, align 8, !tbaa !36
  %249 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %smask_profiles451 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %249, i32 0, i32 7
  %250 = load %struct.gsicc_smask_s*, %struct.gsicc_smask_s** %smask_profiles451, align 8, !tbaa !53
  %smask_cmyk452 = getelementptr inbounds %struct.gsicc_smask_s, %struct.gsicc_smask_s* %250, i32 0, i32 2
  %251 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %smask_cmyk452, align 8, !tbaa !47
  %252 = bitcast %struct.cmm_profile_s* %251 to i8*
  call void %244(%struct.gs_memory_s* %248, i8* %252, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.92, i32 0, i32 0)) #5
  br label %do.cond.453

do.cond.453:                                      ; preds = %do.end.442
  br label %do.end.454

do.end.454:                                       ; preds = %do.cond.453
  %253 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %smask_profiles455 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %253, i32 0, i32 7
  %254 = load %struct.gsicc_smask_s*, %struct.gsicc_smask_s** %smask_profiles455, align 8, !tbaa !53
  %smask_cmyk456 = getelementptr inbounds %struct.gsicc_smask_s, %struct.gsicc_smask_s* %254, i32 0, i32 2
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %smask_cmyk456, align 8, !tbaa !47
  br label %if.end.461

if.else.457:                                      ; preds = %do.end.432
  br label %do.body.458

do.body.458:                                      ; preds = %if.else.457
  br label %do.cond.459

do.cond.459:                                      ; preds = %do.body.458
  br label %do.end.460

do.end.460:                                       ; preds = %do.cond.459
  br label %if.end.461

if.end.461:                                       ; preds = %do.end.460, %do.end.454
  br label %if.end.462

if.end.462:                                       ; preds = %if.end.461, %do.body.418
  br label %do.cond.463

do.cond.463:                                      ; preds = %if.end.462
  br label %do.end.464

do.end.464:                                       ; preds = %do.cond.463
  br label %if.end.465

if.end.465:                                       ; preds = %do.end.464, %if.end.321
  %255 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %memory466 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %255, i32 0, i32 10
  %256 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory466, align 8, !tbaa !50
  %procs467 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %256, i32 0, i32 1
  %free_object468 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs467, i32 0, i32 2
  %257 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object468, align 8, !tbaa !31
  %258 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %memory469 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %258, i32 0, i32 10
  %259 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory469, align 8, !tbaa !50
  %260 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %261 = bitcast %struct.gsicc_manager_s* %260 to i8*
  call void %257(%struct.gs_memory_s* %259, i8* %261, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.92, i32 0, i32 0)) #5
  %262 = bitcast %struct.gsicc_devicen_entry_s** %device_n_next to i8*
  call void @llvm.lifetime.end(i64 8, i8* %262) #1
  %263 = bitcast %struct.gsicc_devicen_entry_s** %device_n to i8*
  call void @llvm.lifetime.end(i64 8, i8* %263) #1
  %264 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %264) #1
  %265 = bitcast %struct.gsicc_manager_s** %icc_manager to i8*
  call void @llvm.lifetime.end(i64 8, i8* %265) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @gsicc_init_hash_cs(%struct.cmm_profile_s* %picc_profile, %struct.gs_imager_state_s* %pis) #0 {
entry:
  %picc_profile.addr = alloca %struct.cmm_profile_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  store %struct.cmm_profile_s* %picc_profile, %struct.cmm_profile_s** %picc_profile.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %0 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile.addr, align 8, !tbaa !1
  %hash_is_valid = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %0, i32 0, i32 8
  %1 = load i32, i32* %hash_is_valid, align 4, !tbaa !27
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile.addr, align 8, !tbaa !1
  %buffer = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %2, i32 0, i32 14
  %3 = load i8*, i8** %buffer, align 8, !tbaa !24
  %4 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile.addr, align 8, !tbaa !1
  %hashcode = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %4, i32 0, i32 7
  %5 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile.addr, align 8, !tbaa !1
  %buffer_size = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %5, i32 0, i32 11
  %6 = load i32, i32* %buffer_size, align 4, !tbaa !25
  call void @gsicc_get_icc_buff_hash(i8* %3, i64* %hashcode, i32 %6) #5
  %7 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile.addr, align 8, !tbaa !1
  %hash_is_valid1 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %7, i32 0, i32 8
  store i32 1, i32* %hash_is_valid1, align 4, !tbaa !27
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile.addr, align 8, !tbaa !1
  %9 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  call void @gsicc_set_default_cs_value(%struct.cmm_profile_s* %8, %struct.gs_imager_state_s* %9) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gsicc_set_default_cs_value(%struct.cmm_profile_s* %picc_profile, %struct.gs_imager_state_s* %pis) #0 {
entry:
  %picc_profile.addr = alloca %struct.cmm_profile_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %icc_manager = alloca %struct.gsicc_manager_s*, align 8
  %hashcode = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.cmm_profile_s* %picc_profile, %struct.cmm_profile_s** %picc_profile.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gsicc_manager_s** %icc_manager to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %icc_manager1 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %1, i32 0, i32 35
  %2 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager1, align 8, !tbaa !171
  store %struct.gsicc_manager_s* %2, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %3 = bitcast i64* %hashcode to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile.addr, align 8, !tbaa !1
  %hashcode2 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %4, i32 0, i32 7
  %5 = load i64, i64* %hashcode2, align 8, !tbaa !172
  store i64 %5, i64* %hashcode, align 8, !tbaa !64
  %6 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile.addr, align 8, !tbaa !1
  %default_match = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %6, i32 0, i32 4
  %7 = load i32, i32* %default_match, align 4, !tbaa !54
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end.27

if.then:                                          ; preds = %entry
  %8 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile.addr, align 8, !tbaa !1
  %data_cs = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %8, i32 0, i32 5
  %9 = load i32, i32* %data_cs, align 4, !tbaa !29
  switch i32 %9, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.7
    i32 3, label %sw.bb.13
    i32 6, label %sw.bb.19
    i32 5, label %sw.bb.25
    i32 4, label %sw.bb.26
  ]

sw.bb:                                            ; preds = %if.then
  %10 = load i64, i64* %hashcode, align 8, !tbaa !64
  %11 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %default_gray = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %11, i32 0, i32 1
  %12 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %default_gray, align 8, !tbaa !161
  %hashcode3 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %12, i32 0, i32 7
  %13 = load i64, i64* %hashcode3, align 8, !tbaa !172
  %cmp4 = icmp eq i64 %10, %13
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %sw.bb
  %14 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile.addr, align 8, !tbaa !1
  %default_match6 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %14, i32 0, i32 4
  store i32 7, i32* %default_match6, align 4, !tbaa !54
  br label %if.end

if.end:                                           ; preds = %if.then.5, %sw.bb
  br label %sw.epilog

sw.bb.7:                                          ; preds = %if.then
  %15 = load i64, i64* %hashcode, align 8, !tbaa !64
  %16 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %default_rgb = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %16, i32 0, i32 2
  %17 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %default_rgb, align 8, !tbaa !162
  %hashcode8 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %17, i32 0, i32 7
  %18 = load i64, i64* %hashcode8, align 8, !tbaa !172
  %cmp9 = icmp eq i64 %15, %18
  br i1 %cmp9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %sw.bb.7
  %19 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile.addr, align 8, !tbaa !1
  %default_match11 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %19, i32 0, i32 4
  store i32 8, i32* %default_match11, align 4, !tbaa !54
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %sw.bb.7
  br label %sw.epilog

sw.bb.13:                                         ; preds = %if.then
  %20 = load i64, i64* %hashcode, align 8, !tbaa !64
  %21 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %default_cmyk = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %21, i32 0, i32 3
  %22 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %default_cmyk, align 8, !tbaa !163
  %hashcode14 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %22, i32 0, i32 7
  %23 = load i64, i64* %hashcode14, align 8, !tbaa !172
  %cmp15 = icmp eq i64 %20, %23
  br i1 %cmp15, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %sw.bb.13
  %24 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile.addr, align 8, !tbaa !1
  %default_match17 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %24, i32 0, i32 4
  store i32 9, i32* %default_match17, align 4, !tbaa !54
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %sw.bb.13
  br label %sw.epilog

sw.bb.19:                                         ; preds = %if.then
  %25 = load i64, i64* %hashcode, align 8, !tbaa !64
  %26 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %lab_profile = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %26, i32 0, i32 4
  %27 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %lab_profile, align 8, !tbaa !167
  %hashcode20 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %27, i32 0, i32 7
  %28 = load i64, i64* %hashcode20, align 8, !tbaa !172
  %cmp21 = icmp eq i64 %25, %28
  br i1 %cmp21, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %sw.bb.19
  %29 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile.addr, align 8, !tbaa !1
  %default_match23 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %29, i32 0, i32 4
  store i32 10, i32* %default_match23, align 4, !tbaa !54
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %sw.bb.19
  br label %sw.epilog

sw.bb.25:                                         ; preds = %if.then
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.26:                                         ; preds = %if.then
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.default:                                       ; preds = %if.then
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %if.end.24, %if.end.18, %if.end.12, %if.end
  br label %if.end.27

if.end.27:                                        ; preds = %sw.epilog, %entry
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.27, %sw.default, %sw.bb.26, %sw.bb.25
  %30 = bitcast i64* %hashcode to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #1
  %31 = bitcast %struct.gsicc_manager_s** %icc_manager to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
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
define i8* @gsicc_get_profile_handle_clist(%struct.cmm_profile_s* %picc_profile, %struct.gs_memory_s* %memory) #0 {
entry:
  %retval = alloca i8*, align 8
  %picc_profile.addr = alloca %struct.cmm_profile_s*, align 8
  %memory.addr = alloca %struct.gs_memory_s*, align 8
  %profile_handle = alloca i8*, align 8
  %profile_size = alloca i32, align 4
  %size = alloca i32, align 4
  %pcrdev = alloca %struct.gx_device_clist_reader_s*, align 8
  %buffer_ptr = alloca i8*, align 8
  %position = alloca i64, align 8
  %profile_header = alloca %struct.gsicc_serialized_profile_s, align 8
  %k = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.cmm_profile_s* %picc_profile, %struct.cmm_profile_s** %picc_profile.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %memory, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %0 = bitcast i8** %profile_handle to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store i8* null, i8** %profile_handle, align 8, !tbaa !1
  %1 = bitcast i32* %profile_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast %struct.gx_device_clist_reader_s** %pcrdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile.addr, align 8, !tbaa !1
  %dev = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %4, i32 0, i32 15
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !41
  %6 = bitcast %struct.gx_device_s* %5 to %struct.gx_device_clist_reader_s*
  store %struct.gx_device_clist_reader_s* %6, %struct.gx_device_clist_reader_s** %pcrdev, align 8, !tbaa !1
  %7 = bitcast i8** %buffer_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast i64* %position to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast %struct.gsicc_serialized_profile_s* %profile_header to i8*
  call void @llvm.lifetime.start(i64 256, i8* %9) #1
  %10 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %pcrdev, align 8, !tbaa !1
  %cmp = icmp ne %struct.gx_device_clist_reader_s* %11, null
  br i1 %cmp, label %if.then, label %if.end.43

if.then:                                          ; preds = %entry
  %12 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %pcrdev, align 8, !tbaa !1
  %icc_table = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %12, i32 0, i32 61
  %13 = load %struct.clist_icctable_s*, %struct.clist_icctable_s** %icc_table, align 8, !tbaa !173
  %14 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile.addr, align 8, !tbaa !1
  %hashcode = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %14, i32 0, i32 7
  %15 = load i64, i64* %hashcode, align 8, !tbaa !172
  %call = call i64 @gsicc_search_icc_table(%struct.clist_icctable_s* %13, i64 %15, i32* %size) #5
  store i64 %call, i64* %position, align 8, !tbaa !64
  %16 = load i64, i64* %position, align 8, !tbaa !64
  %cmp1 = icmp slt i64 %16, 0
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %17 = load i32, i32* %size, align 4, !tbaa !13
  %conv = sext i32 %17 to i64
  %sub = sub nsw i64 %conv, ptrtoint (i8** getelementptr inbounds (%struct.cmm_profile_s, %struct.cmm_profile_s* null, i32 0, i32 14) to i64)
  %conv3 = trunc i64 %sub to i32
  store i32 %conv3, i32* %profile_size, align 4, !tbaa !13
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %18, i32 0, i32 3
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !32
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %19, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %20 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !30
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %non_gc_memory4 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %21, i32 0, i32 3
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory4, align 8, !tbaa !32
  %23 = load i32, i32* %profile_size, align 4, !tbaa !13
  %call5 = call i8* %20(%struct.gs_memory_s* %22, i32 %23, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.50, i32 0, i32 0)) #5
  store i8* %call5, i8** %buffer_ptr, align 8, !tbaa !1
  %24 = load i8*, i8** %buffer_ptr, align 8, !tbaa !1
  %cmp6 = icmp eq i8* %24, null
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.end
  %25 = load i8*, i8** %buffer_ptr, align 8, !tbaa !1
  %26 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile.addr, align 8, !tbaa !1
  %buffer = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %26, i32 0, i32 14
  store i8* %25, i8** %buffer, align 8, !tbaa !24
  %27 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %pcrdev, align 8, !tbaa !1
  %28 = load i64, i64* %position, align 8, !tbaa !64
  %add = add nsw i64 %28, ptrtoint (i8** getelementptr inbounds (%struct.cmm_profile_s, %struct.cmm_profile_s* null, i32 0, i32 14) to i64)
  %29 = load i32, i32* %profile_size, align 4, !tbaa !13
  %30 = load i8*, i8** %buffer_ptr, align 8, !tbaa !1
  %call10 = call i32 @clist_read_chunk(%struct.gx_device_clist_reader_s* %27, i64 %add, i32 %29, i8* %30) #5
  %31 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %non_gc_memory11 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %31, i32 0, i32 3
  %32 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory11, align 8, !tbaa !32
  %33 = load i8*, i8** %buffer_ptr, align 8, !tbaa !1
  %34 = load i32, i32* %profile_size, align 4, !tbaa !13
  %call12 = call i8* @gscms_get_profile_handle_mem(%struct.gs_memory_s* %32, i8* %33, i32 %34) #5
  store i8* %call12, i8** %profile_handle, align 8, !tbaa !1
  %35 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %pcrdev, align 8, !tbaa !1
  %36 = load i64, i64* %position, align 8, !tbaa !64
  %37 = bitcast %struct.gsicc_serialized_profile_s* %profile_header to i8*
  %call13 = call i32 @clist_read_chunk(%struct.gx_device_clist_reader_s* %35, i64 %36, i32 ptrtoint (i8** getelementptr inbounds (%struct.cmm_profile_s, %struct.cmm_profile_s* null, i32 0, i32 14) to i32), i8* %37) #5
  %buffer_size = getelementptr inbounds %struct.gsicc_serialized_profile_s, %struct.gsicc_serialized_profile_s* %profile_header, i32 0, i32 11
  %38 = load i32, i32* %buffer_size, align 4, !tbaa !180
  %39 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile.addr, align 8, !tbaa !1
  %buffer_size14 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %39, i32 0, i32 11
  store i32 %38, i32* %buffer_size14, align 4, !tbaa !25
  %data_cs = getelementptr inbounds %struct.gsicc_serialized_profile_s, %struct.gsicc_serialized_profile_s* %profile_header, i32 0, i32 5
  %40 = load i32, i32* %data_cs, align 4, !tbaa !182
  %41 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile.addr, align 8, !tbaa !1
  %data_cs15 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %41, i32 0, i32 5
  store i32 %40, i32* %data_cs15, align 4, !tbaa !29
  %default_match = getelementptr inbounds %struct.gsicc_serialized_profile_s, %struct.gsicc_serialized_profile_s* %profile_header, i32 0, i32 4
  %42 = load i32, i32* %default_match, align 4, !tbaa !183
  %43 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile.addr, align 8, !tbaa !1
  %default_match16 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %43, i32 0, i32 4
  store i32 %42, i32* %default_match16, align 4, !tbaa !54
  %hash_is_valid = getelementptr inbounds %struct.gsicc_serialized_profile_s, %struct.gsicc_serialized_profile_s* %profile_header, i32 0, i32 8
  %44 = load i32, i32* %hash_is_valid, align 4, !tbaa !184
  %45 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile.addr, align 8, !tbaa !1
  %hash_is_valid17 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %45, i32 0, i32 8
  store i32 %44, i32* %hash_is_valid17, align 4, !tbaa !27
  %hashcode18 = getelementptr inbounds %struct.gsicc_serialized_profile_s, %struct.gsicc_serialized_profile_s* %profile_header, i32 0, i32 7
  %46 = load i64, i64* %hashcode18, align 8, !tbaa !185
  %47 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile.addr, align 8, !tbaa !1
  %hashcode19 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %47, i32 0, i32 7
  store i64 %46, i64* %hashcode19, align 8, !tbaa !172
  %islab = getelementptr inbounds %struct.gsicc_serialized_profile_s, %struct.gsicc_serialized_profile_s* %profile_header, i32 0, i32 2
  %48 = load i32, i32* %islab, align 4, !tbaa !186
  %49 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile.addr, align 8, !tbaa !1
  %islab20 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %49, i32 0, i32 2
  store i32 %48, i32* %islab20, align 4, !tbaa !87
  %num_comps = getelementptr inbounds %struct.gsicc_serialized_profile_s, %struct.gsicc_serialized_profile_s* %profile_header, i32 0, i32 0
  %50 = load i8, i8* %num_comps, align 1, !tbaa !187
  %51 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile.addr, align 8, !tbaa !1
  %num_comps21 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %51, i32 0, i32 0
  store i8 %50, i8* %num_comps21, align 1, !tbaa !6
  %rend_is_valid = getelementptr inbounds %struct.gsicc_serialized_profile_s, %struct.gsicc_serialized_profile_s* %profile_header, i32 0, i32 12
  %52 = load i32, i32* %rend_is_valid, align 4, !tbaa !188
  %53 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile.addr, align 8, !tbaa !1
  %rend_is_valid22 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %53, i32 0, i32 12
  store i32 %52, i32* %rend_is_valid22, align 4, !tbaa !39
  %54 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile.addr, align 8, !tbaa !1
  %rend_cond = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %54, i32 0, i32 13
  %rend_cond23 = getelementptr inbounds %struct.gsicc_serialized_profile_s, %struct.gsicc_serialized_profile_s* %profile_header, i32 0, i32 13
  %55 = bitcast %struct.gsicc_rendering_param_s* %rend_cond to i8*
  %56 = bitcast %struct.gsicc_rendering_param_s* %rend_cond23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %55, i8* %56, i64 24, i32 4, i1 false), !tbaa.struct !189
  %isdevlink = getelementptr inbounds %struct.gsicc_serialized_profile_s, %struct.gsicc_serialized_profile_s* %profile_header, i32 0, i32 3
  %57 = load i32, i32* %isdevlink, align 4, !tbaa !190
  %58 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile.addr, align 8, !tbaa !1
  %isdevlink24 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %58, i32 0, i32 3
  store i32 %57, i32* %isdevlink24, align 4, !tbaa !40
  store i32 0, i32* %k, align 4, !tbaa !13
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.9
  %59 = load i32, i32* %k, align 4, !tbaa !13
  %num_comps25 = getelementptr inbounds %struct.gsicc_serialized_profile_s, %struct.gsicc_serialized_profile_s* %profile_header, i32 0, i32 0
  %60 = load i8, i8* %num_comps25, align 1, !tbaa !187
  %conv26 = zext i8 %60 to i32
  %cmp27 = icmp slt i32 %59, %conv26
  br i1 %cmp27, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %61 = load i32, i32* %k, align 4, !tbaa !13
  %idxprom = sext i32 %61 to i64
  %Range = getelementptr inbounds %struct.gsicc_serialized_profile_s, %struct.gsicc_serialized_profile_s* %profile_header, i32 0, i32 6
  %ranges = getelementptr inbounds %struct.gs_range_icc_s, %struct.gs_range_icc_s* %Range, i32 0, i32 0
  %arrayidx = getelementptr inbounds [15 x %struct.gs_range_s], [15 x %struct.gs_range_s]* %ranges, i32 0, i64 %idxprom
  %rmax = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx, i32 0, i32 1
  %62 = load float, float* %rmax, align 4, !tbaa !17
  %63 = load i32, i32* %k, align 4, !tbaa !13
  %idxprom29 = sext i32 %63 to i64
  %64 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile.addr, align 8, !tbaa !1
  %Range30 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %64, i32 0, i32 6
  %ranges31 = getelementptr inbounds %struct.gs_range_icc_s, %struct.gs_range_icc_s* %Range30, i32 0, i32 0
  %arrayidx32 = getelementptr inbounds [15 x %struct.gs_range_s], [15 x %struct.gs_range_s]* %ranges31, i32 0, i64 %idxprom29
  %rmax33 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx32, i32 0, i32 1
  store float %62, float* %rmax33, align 4, !tbaa !17
  %65 = load i32, i32* %k, align 4, !tbaa !13
  %idxprom34 = sext i32 %65 to i64
  %Range35 = getelementptr inbounds %struct.gsicc_serialized_profile_s, %struct.gsicc_serialized_profile_s* %profile_header, i32 0, i32 6
  %ranges36 = getelementptr inbounds %struct.gs_range_icc_s, %struct.gs_range_icc_s* %Range35, i32 0, i32 0
  %arrayidx37 = getelementptr inbounds [15 x %struct.gs_range_s], [15 x %struct.gs_range_s]* %ranges36, i32 0, i64 %idxprom34
  %rmin = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx37, i32 0, i32 0
  %66 = load float, float* %rmin, align 4, !tbaa !14
  %67 = load i32, i32* %k, align 4, !tbaa !13
  %idxprom38 = sext i32 %67 to i64
  %68 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile.addr, align 8, !tbaa !1
  %Range39 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %68, i32 0, i32 6
  %ranges40 = getelementptr inbounds %struct.gs_range_icc_s, %struct.gs_range_icc_s* %Range39, i32 0, i32 0
  %arrayidx41 = getelementptr inbounds [15 x %struct.gs_range_s], [15 x %struct.gs_range_s]* %ranges40, i32 0, i64 %idxprom38
  %rmin42 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx41, i32 0, i32 0
  store float %66, float* %rmin42, align 4, !tbaa !14
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %69 = load i32, i32* %k, align 4, !tbaa !13
  %inc = add nsw i32 %69, 1
  store i32 %inc, i32* %k, align 4, !tbaa !13
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %70 = load i8*, i8** %profile_handle, align 8, !tbaa !1
  store i8* %70, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.43:                                        ; preds = %entry
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.43, %for.end, %if.then.8, %if.then.2
  %71 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #1
  %72 = bitcast %struct.gsicc_serialized_profile_s* %profile_header to i8*
  call void @llvm.lifetime.end(i64 256, i8* %72) #1
  %73 = bitcast i64* %position to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #1
  %74 = bitcast i8** %buffer_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #1
  %75 = bitcast %struct.gx_device_clist_reader_s** %pcrdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %75) #1
  %76 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #1
  %77 = bitcast i32* %profile_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #1
  %78 = bitcast i8** %profile_handle to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #1
  %79 = load i8*, i8** %retval
  ret i8* %79
}

; Function Attrs: nounwind uwtable
define internal i64 @gsicc_search_icc_table(%struct.clist_icctable_s* %icc_table, i64 %icc_hashcode, i32* %size) #0 {
entry:
  %retval = alloca i64, align 8
  %icc_table.addr = alloca %struct.clist_icctable_s*, align 8
  %icc_hashcode.addr = alloca i64, align 8
  %size.addr = alloca i32*, align 8
  %tablesize = alloca i32, align 4
  %k = alloca i32, align 4
  %curr_entry = alloca %struct.clist_icctable_entry_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.clist_icctable_s* %icc_table, %struct.clist_icctable_s** %icc_table.addr, align 8, !tbaa !1
  store i64 %icc_hashcode, i64* %icc_hashcode.addr, align 8, !tbaa !64
  store i32* %size, i32** %size.addr, align 8, !tbaa !1
  %0 = bitcast i32* %tablesize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.clist_icctable_s*, %struct.clist_icctable_s** %icc_table.addr, align 8, !tbaa !1
  %tablesize1 = getelementptr inbounds %struct.clist_icctable_s, %struct.clist_icctable_s* %1, i32 0, i32 0
  %2 = load i32, i32* %tablesize1, align 4, !tbaa !191
  store i32 %2, i32* %tablesize, align 4, !tbaa !13
  %3 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast %struct.clist_icctable_entry_s** %curr_entry to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.clist_icctable_s*, %struct.clist_icctable_s** %icc_table.addr, align 8, !tbaa !1
  %head = getelementptr inbounds %struct.clist_icctable_s, %struct.clist_icctable_s* %5, i32 0, i32 2
  %6 = load %struct.clist_icctable_entry_s*, %struct.clist_icctable_entry_s** %head, align 8, !tbaa !193
  store %struct.clist_icctable_entry_s* %6, %struct.clist_icctable_entry_s** %curr_entry, align 8, !tbaa !1
  store i32 0, i32* %k, align 4, !tbaa !13
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %k, align 4, !tbaa !13
  %8 = load i32, i32* %tablesize, align 4, !tbaa !13
  %cmp = icmp slt i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct.clist_icctable_entry_s*, %struct.clist_icctable_entry_s** %curr_entry, align 8, !tbaa !1
  %serial_data = getelementptr inbounds %struct.clist_icctable_entry_s, %struct.clist_icctable_entry_s* %9, i32 0, i32 0
  %hashcode = getelementptr inbounds %struct.clist_icc_serial_entry_s, %struct.clist_icc_serial_entry_s* %serial_data, i32 0, i32 0
  %10 = load i64, i64* %hashcode, align 8, !tbaa !194
  %11 = load i64, i64* %icc_hashcode.addr, align 8, !tbaa !64
  %cmp2 = icmp eq i64 %10, %11
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %12 = load %struct.clist_icctable_entry_s*, %struct.clist_icctable_entry_s** %curr_entry, align 8, !tbaa !1
  %serial_data3 = getelementptr inbounds %struct.clist_icctable_entry_s, %struct.clist_icctable_entry_s* %12, i32 0, i32 0
  %size4 = getelementptr inbounds %struct.clist_icc_serial_entry_s, %struct.clist_icc_serial_entry_s* %serial_data3, i32 0, i32 2
  %13 = load i32, i32* %size4, align 4, !tbaa !197
  %14 = load i32*, i32** %size.addr, align 8, !tbaa !1
  store i32 %13, i32* %14, align 4, !tbaa !13
  %15 = load %struct.clist_icctable_entry_s*, %struct.clist_icctable_entry_s** %curr_entry, align 8, !tbaa !1
  %serial_data5 = getelementptr inbounds %struct.clist_icctable_entry_s, %struct.clist_icctable_entry_s* %15, i32 0, i32 0
  %file_position = getelementptr inbounds %struct.clist_icc_serial_entry_s, %struct.clist_icc_serial_entry_s* %serial_data5, i32 0, i32 1
  %16 = load i64, i64* %file_position, align 8, !tbaa !198
  store i64 %16, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  %17 = load %struct.clist_icctable_entry_s*, %struct.clist_icctable_entry_s** %curr_entry, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.clist_icctable_entry_s, %struct.clist_icctable_entry_s* %17, i32 0, i32 1
  %18 = load %struct.clist_icctable_entry_s*, %struct.clist_icctable_entry_s** %next, align 8, !tbaa !199
  store %struct.clist_icctable_entry_s* %18, %struct.clist_icctable_entry_s** %curr_entry, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %19 = load i32, i32* %k, align 4, !tbaa !13
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %k, align 4, !tbaa !13
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load i32*, i32** %size.addr, align 8, !tbaa !1
  store i32 0, i32* %20, align 4, !tbaa !13
  store i64 -1, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %21 = bitcast %struct.clist_icctable_entry_s** %curr_entry to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #1
  %22 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #1
  %23 = bitcast i32* %tablesize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #1
  %24 = load i64, i64* %retval
  ret i64 %24
}

declare i32 @clist_read_chunk(%struct.gx_device_clist_reader_s*, i64, i32, i8*) #2

declare i8* @gscms_get_profile_handle_mem(%struct.gs_memory_s*, i8*, i32) #2

; Function Attrs: nounwind uwtable
define %struct.cmm_profile_s* @gsicc_get_gscs_profile(%struct.gs_color_space_s* %gs_colorspace, %struct.gsicc_manager_s* %icc_manager) #0 {
entry:
  %retval = alloca %struct.cmm_profile_s*, align 8
  %gs_colorspace.addr = alloca %struct.gs_color_space_s*, align 8
  %icc_manager.addr = alloca %struct.gsicc_manager_s*, align 8
  %profile = alloca %struct.cmm_profile_s*, align 8
  %color_space_index = alloca i32, align 4
  %code = alloca i32, align 4
  %islab = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_color_space_s* %gs_colorspace, %struct.gs_color_space_s** %gs_colorspace.addr, align 8, !tbaa !1
  store %struct.gsicc_manager_s* %icc_manager, %struct.gsicc_manager_s** %icc_manager.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cmm_profile_s** %profile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %gs_colorspace.addr, align 8, !tbaa !1
  %cmm_icc_profile_data = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %1, i32 0, i32 6
  %2 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data, align 8, !tbaa !135
  store %struct.cmm_profile_s* %2, %struct.cmm_profile_s** %profile, align 8, !tbaa !1
  %3 = bitcast i32* %color_space_index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %gs_colorspace.addr, align 8, !tbaa !1
  %call = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %4) #5
  store i32 %call, i32* %color_space_index, align 4, !tbaa !5
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 0, i32* %code, align 4, !tbaa !13
  %6 = bitcast i32* %islab to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %profile, align 8, !tbaa !1
  %cmp = icmp ne %struct.cmm_profile_s* %7, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %profile, align 8, !tbaa !1
  store %struct.cmm_profile_s* %8, %struct.cmm_profile_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load i32, i32* %color_space_index, align 4, !tbaa !5
  switch i32 %9, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.3
    i32 4, label %sw.bb.4
    i32 5, label %sw.bb.5
    i32 6, label %sw.bb.19
    i32 7, label %sw.bb.40
    i32 8, label %sw.bb.140
    i32 9, label %sw.bb.161
    i32 11, label %sw.bb.162
    i32 10, label %sw.bb.162
    i32 12, label %sw.bb.163
  ]

sw.bb:                                            ; preds = %if.end
  %10 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager.addr, align 8, !tbaa !1
  %default_gray = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %10, i32 0, i32 1
  %11 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %default_gray, align 8, !tbaa !161
  store %struct.cmm_profile_s* %11, %struct.cmm_profile_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.1:                                          ; preds = %if.end
  %12 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager.addr, align 8, !tbaa !1
  %default_rgb = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %12, i32 0, i32 2
  %13 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %default_rgb, align 8, !tbaa !162
  store %struct.cmm_profile_s* %13, %struct.cmm_profile_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.2:                                          ; preds = %if.end
  %14 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager.addr, align 8, !tbaa !1
  %default_cmyk = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %14, i32 0, i32 3
  %15 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %default_cmyk, align 8, !tbaa !163
  store %struct.cmm_profile_s* %15, %struct.cmm_profile_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.3:                                          ; preds = %if.end
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.4:                                          ; preds = %if.end
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.5:                                          ; preds = %if.end
  %16 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager.addr, align 8, !tbaa !1
  %default_cmyk6 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %16, i32 0, i32 3
  %17 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %default_cmyk6, align 8, !tbaa !163
  %18 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %gs_colorspace.addr, align 8, !tbaa !1
  %cmm_icc_profile_data7 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %18, i32 0, i32 6
  store %struct.cmm_profile_s* %17, %struct.cmm_profile_s** %cmm_icc_profile_data7, align 8, !tbaa !135
  br label %do.body

do.body:                                          ; preds = %sw.bb.5
  %19 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager.addr, align 8, !tbaa !1
  %default_cmyk8 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %19, i32 0, i32 3
  %20 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %default_cmyk8, align 8, !tbaa !163
  %tobool = icmp ne %struct.cmm_profile_s* %20, null
  br i1 %tobool, label %if.then.9, label %if.end.15

if.then.9:                                        ; preds = %do.body
  br label %do.body.10

do.body.10:                                       ; preds = %if.then.9
  %21 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager.addr, align 8, !tbaa !1
  %default_cmyk11 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %21, i32 0, i32 3
  %22 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %default_cmyk11, align 8, !tbaa !163
  %rc = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %22, i32 0, i32 18
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %23 = load i64, i64* %ref_count, align 8, !tbaa !35
  %inc = add nsw i64 %23, 1
  store i64 %inc, i64* %ref_count, align 8, !tbaa !35
  br label %do.body.12

do.body.12:                                       ; preds = %do.body.10
  br label %do.cond

do.cond:                                          ; preds = %do.body.12
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.cond.13

do.cond.13:                                       ; preds = %do.end
  br label %do.end.14

do.end.14:                                        ; preds = %do.cond.13
  br label %if.end.15

if.end.15:                                        ; preds = %do.end.14, %do.body
  br label %do.cond.16

do.cond.16:                                       ; preds = %if.end.15
  br label %do.end.17

do.end.17:                                        ; preds = %do.cond.16
  %24 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %gs_colorspace.addr, align 8, !tbaa !1
  %cmm_icc_profile_data18 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %24, i32 0, i32 6
  %25 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data18, align 8, !tbaa !135
  store %struct.cmm_profile_s* %25, %struct.cmm_profile_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.19:                                         ; preds = %if.end
  %26 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager.addr, align 8, !tbaa !1
  %default_rgb20 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %26, i32 0, i32 2
  %27 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %default_rgb20, align 8, !tbaa !162
  %28 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %gs_colorspace.addr, align 8, !tbaa !1
  %cmm_icc_profile_data21 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %28, i32 0, i32 6
  store %struct.cmm_profile_s* %27, %struct.cmm_profile_s** %cmm_icc_profile_data21, align 8, !tbaa !135
  br label %do.body.22

do.body.22:                                       ; preds = %sw.bb.19
  %29 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager.addr, align 8, !tbaa !1
  %default_rgb23 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %29, i32 0, i32 2
  %30 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %default_rgb23, align 8, !tbaa !162
  %tobool24 = icmp ne %struct.cmm_profile_s* %30, null
  br i1 %tobool24, label %if.then.25, label %if.end.36

if.then.25:                                       ; preds = %do.body.22
  br label %do.body.26

do.body.26:                                       ; preds = %if.then.25
  %31 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager.addr, align 8, !tbaa !1
  %default_rgb27 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %31, i32 0, i32 2
  %32 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %default_rgb27, align 8, !tbaa !162
  %rc28 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %32, i32 0, i32 18
  %ref_count29 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc28, i32 0, i32 0
  %33 = load i64, i64* %ref_count29, align 8, !tbaa !35
  %inc30 = add nsw i64 %33, 1
  store i64 %inc30, i64* %ref_count29, align 8, !tbaa !35
  br label %do.body.31

do.body.31:                                       ; preds = %do.body.26
  br label %do.cond.32

do.cond.32:                                       ; preds = %do.body.31
  br label %do.end.33

do.end.33:                                        ; preds = %do.cond.32
  br label %do.cond.34

do.cond.34:                                       ; preds = %do.end.33
  br label %do.end.35

do.end.35:                                        ; preds = %do.cond.34
  br label %if.end.36

if.end.36:                                        ; preds = %do.end.35, %do.body.22
  br label %do.cond.37

do.cond.37:                                       ; preds = %if.end.36
  br label %do.end.38

do.end.38:                                        ; preds = %do.cond.37
  %34 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %gs_colorspace.addr, align 8, !tbaa !1
  %cmm_icc_profile_data39 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %34, i32 0, i32 6
  %35 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data39, align 8, !tbaa !135
  store %struct.cmm_profile_s* %35, %struct.cmm_profile_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.40:                                         ; preds = %if.end
  %36 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %36, i32 0, i32 10
  %37 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !50
  %call41 = call %struct.cmm_profile_s* @gsicc_profile_new(%struct.stream_s* null, %struct.gs_memory_s* %37, i8* null, i32 0) #5
  %38 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %gs_colorspace.addr, align 8, !tbaa !1
  %cmm_icc_profile_data42 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %38, i32 0, i32 6
  store %struct.cmm_profile_s* %call41, %struct.cmm_profile_s** %cmm_icc_profile_data42, align 8, !tbaa !135
  %39 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %gs_colorspace.addr, align 8, !tbaa !1
  %40 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %gs_colorspace.addr, align 8, !tbaa !1
  %cmm_icc_profile_data43 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %40, i32 0, i32 6
  %41 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data43, align 8, !tbaa !135
  %buffer = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %41, i32 0, i32 14
  %42 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %gs_colorspace.addr, align 8, !tbaa !1
  %cmm_icc_profile_data44 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %42, i32 0, i32 6
  %43 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data44, align 8, !tbaa !135
  %buffer_size = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %43, i32 0, i32 11
  %44 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager.addr, align 8, !tbaa !1
  %memory45 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %44, i32 0, i32 10
  %45 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory45, align 8, !tbaa !50
  %46 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %gs_colorspace.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %46, i32 0, i32 7
  %abc = bitcast %union.anon.3* %params to %struct.gs_cie_abc_s**
  %47 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %abc, align 8, !tbaa !1
  %caches = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %47, i32 0, i32 5
  %DecodeABC = getelementptr inbounds %struct.anon.9, %struct.anon.9* %caches, i32 0, i32 1
  %caches46 = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %DecodeABC, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.gx_cie_vector_cache_s]* %caches46, i32 0, i64 0
  %48 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %gs_colorspace.addr, align 8, !tbaa !1
  %params47 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %48, i32 0, i32 7
  %abc48 = bitcast %union.anon.3* %params47 to %struct.gs_cie_abc_s**
  %49 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %abc48, align 8, !tbaa !1
  %common = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %49, i32 0, i32 0
  %caches49 = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %common, i32 0, i32 6
  %DecodeLMN = getelementptr inbounds %struct.anon.4, %struct.anon.4* %caches49, i32 0, i32 0
  %arrayidx50 = getelementptr inbounds [3 x %union.gx_cie_scalar_cache_s], [3 x %union.gx_cie_scalar_cache_s]* %DecodeLMN, i32 0, i64 0
  %call51 = call i32 @gsicc_create_fromabc(%struct.gs_color_space_s* %39, i8** %buffer, i32* %buffer_size, %struct.gs_memory_s* %45, %struct.gx_cie_vector_cache_s* %arrayidx, %union.gx_cie_scalar_cache_s* %arrayidx50, i32* %islab) #5
  store i32 %call51, i32* %code, align 4, !tbaa !13
  %50 = load i32, i32* %code, align 4, !tbaa !13
  %cmp52 = icmp slt i32 %50, 0
  br i1 %cmp52, label %if.then.53, label %if.end.93

if.then.53:                                       ; preds = %sw.bb.40
  %call54 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gsicc_get_gscs_profile, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 2182, i32 3, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.51, i32 0, i32 0)) #5
  br label %do.body.55

do.body.55:                                       ; preds = %if.then.53
  %51 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %gs_colorspace.addr, align 8, !tbaa !1
  %cmm_icc_profile_data56 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %51, i32 0, i32 6
  %52 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data56, align 8, !tbaa !135
  %tobool57 = icmp ne %struct.cmm_profile_s* %52, null
  br i1 %tobool57, label %if.then.58, label %if.end.90

if.then.58:                                       ; preds = %do.body.55
  br label %do.body.59

do.body.59:                                       ; preds = %if.then.58
  br label %do.body.60

do.body.60:                                       ; preds = %do.body.59
  br label %do.cond.61

do.cond.61:                                       ; preds = %do.body.60
  br label %do.end.62

do.end.62:                                        ; preds = %do.cond.61
  %53 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %gs_colorspace.addr, align 8, !tbaa !1
  %cmm_icc_profile_data63 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %53, i32 0, i32 6
  %54 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data63, align 8, !tbaa !135
  %rc64 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %54, i32 0, i32 18
  %ref_count65 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc64, i32 0, i32 0
  %55 = load i64, i64* %ref_count65, align 8, !tbaa !35
  %add = add nsw i64 %55, -1
  store i64 %add, i64* %ref_count65, align 8, !tbaa !35
  br label %do.cond.66

do.cond.66:                                       ; preds = %do.end.62
  br label %do.end.67

do.end.67:                                        ; preds = %do.cond.66
  %56 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %gs_colorspace.addr, align 8, !tbaa !1
  %cmm_icc_profile_data68 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %56, i32 0, i32 6
  %57 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data68, align 8, !tbaa !135
  %rc69 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %57, i32 0, i32 18
  %ref_count70 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc69, i32 0, i32 0
  %58 = load i64, i64* %ref_count70, align 8, !tbaa !35
  %tobool71 = icmp ne i64 %58, 0
  br i1 %tobool71, label %if.else, label %if.then.72

if.then.72:                                       ; preds = %do.end.67
  br label %do.body.73

do.body.73:                                       ; preds = %if.then.72
  br label %do.body.74

do.body.74:                                       ; preds = %do.body.73
  br label %do.cond.75

do.cond.75:                                       ; preds = %do.body.74
  br label %do.end.76

do.end.76:                                        ; preds = %do.cond.75
  %59 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %gs_colorspace.addr, align 8, !tbaa !1
  %cmm_icc_profile_data77 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %59, i32 0, i32 6
  %60 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data77, align 8, !tbaa !135
  %rc78 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %60, i32 0, i32 18
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc78, i32 0, i32 2
  %61 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !37
  %62 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %gs_colorspace.addr, align 8, !tbaa !1
  %cmm_icc_profile_data79 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %62, i32 0, i32 6
  %63 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data79, align 8, !tbaa !135
  %rc80 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %63, i32 0, i32 18
  %memory81 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc80, i32 0, i32 1
  %64 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory81, align 8, !tbaa !36
  %65 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %gs_colorspace.addr, align 8, !tbaa !1
  %cmm_icc_profile_data82 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %65, i32 0, i32 6
  %66 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data82, align 8, !tbaa !135
  %67 = bitcast %struct.cmm_profile_s* %66 to i8*
  call void %61(%struct.gs_memory_s* %64, i8* %67, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gsicc_get_gscs_profile, i32 0, i32 0)) #5
  br label %do.cond.83

do.cond.83:                                       ; preds = %do.end.76
  br label %do.end.84

do.end.84:                                        ; preds = %do.cond.83
  %68 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %gs_colorspace.addr, align 8, !tbaa !1
  %cmm_icc_profile_data85 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %68, i32 0, i32 6
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %cmm_icc_profile_data85, align 8, !tbaa !135
  br label %if.end.89

if.else:                                          ; preds = %do.end.67
  br label %do.body.86

do.body.86:                                       ; preds = %if.else
  br label %do.cond.87

do.cond.87:                                       ; preds = %do.body.86
  br label %do.end.88

do.end.88:                                        ; preds = %do.cond.87
  br label %if.end.89

if.end.89:                                        ; preds = %do.end.88, %do.end.84
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %do.body.55
  br label %do.cond.91

do.cond.91:                                       ; preds = %if.end.90
  br label %do.end.92

do.end.92:                                        ; preds = %do.cond.91
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.93:                                        ; preds = %sw.bb.40
  %69 = load i32, i32* %islab, align 4, !tbaa !13
  %tobool94 = icmp ne i32 %69, 0
  br i1 %tobool94, label %if.then.95, label %if.end.137

if.then.95:                                       ; preds = %if.end.93
  br label %do.body.96

do.body.96:                                       ; preds = %if.then.95
  %70 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %gs_colorspace.addr, align 8, !tbaa !1
  %cmm_icc_profile_data97 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %70, i32 0, i32 6
  %71 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data97, align 8, !tbaa !135
  %tobool98 = icmp ne %struct.cmm_profile_s* %71, null
  br i1 %tobool98, label %if.then.99, label %if.end.134

if.then.99:                                       ; preds = %do.body.96
  br label %do.body.100

do.body.100:                                      ; preds = %if.then.99
  br label %do.body.101

do.body.101:                                      ; preds = %do.body.100
  br label %do.cond.102

do.cond.102:                                      ; preds = %do.body.101
  br label %do.end.103

do.end.103:                                       ; preds = %do.cond.102
  %72 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %gs_colorspace.addr, align 8, !tbaa !1
  %cmm_icc_profile_data104 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %72, i32 0, i32 6
  %73 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data104, align 8, !tbaa !135
  %rc105 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %73, i32 0, i32 18
  %ref_count106 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc105, i32 0, i32 0
  %74 = load i64, i64* %ref_count106, align 8, !tbaa !35
  %add107 = add nsw i64 %74, -1
  store i64 %add107, i64* %ref_count106, align 8, !tbaa !35
  br label %do.cond.108

do.cond.108:                                      ; preds = %do.end.103
  br label %do.end.109

do.end.109:                                       ; preds = %do.cond.108
  %75 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %gs_colorspace.addr, align 8, !tbaa !1
  %cmm_icc_profile_data110 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %75, i32 0, i32 6
  %76 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data110, align 8, !tbaa !135
  %rc111 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %76, i32 0, i32 18
  %ref_count112 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc111, i32 0, i32 0
  %77 = load i64, i64* %ref_count112, align 8, !tbaa !35
  %tobool113 = icmp ne i64 %77, 0
  br i1 %tobool113, label %if.else.129, label %if.then.114

if.then.114:                                      ; preds = %do.end.109
  br label %do.body.115

do.body.115:                                      ; preds = %if.then.114
  br label %do.body.116

do.body.116:                                      ; preds = %do.body.115
  br label %do.cond.117

do.cond.117:                                      ; preds = %do.body.116
  br label %do.end.118

do.end.118:                                       ; preds = %do.cond.117
  %78 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %gs_colorspace.addr, align 8, !tbaa !1
  %cmm_icc_profile_data119 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %78, i32 0, i32 6
  %79 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data119, align 8, !tbaa !135
  %rc120 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %79, i32 0, i32 18
  %free121 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc120, i32 0, i32 2
  %80 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free121, align 8, !tbaa !37
  %81 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %gs_colorspace.addr, align 8, !tbaa !1
  %cmm_icc_profile_data122 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %81, i32 0, i32 6
  %82 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data122, align 8, !tbaa !135
  %rc123 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %82, i32 0, i32 18
  %memory124 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc123, i32 0, i32 1
  %83 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory124, align 8, !tbaa !36
  %84 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %gs_colorspace.addr, align 8, !tbaa !1
  %cmm_icc_profile_data125 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %84, i32 0, i32 6
  %85 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data125, align 8, !tbaa !135
  %86 = bitcast %struct.cmm_profile_s* %85 to i8*
  call void %80(%struct.gs_memory_s* %83, i8* %86, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gsicc_get_gscs_profile, i32 0, i32 0)) #5
  br label %do.cond.126

do.cond.126:                                      ; preds = %do.end.118
  br label %do.end.127

do.end.127:                                       ; preds = %do.cond.126
  %87 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %gs_colorspace.addr, align 8, !tbaa !1
  %cmm_icc_profile_data128 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %87, i32 0, i32 6
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %cmm_icc_profile_data128, align 8, !tbaa !135
  br label %if.end.133

if.else.129:                                      ; preds = %do.end.109
  br label %do.body.130

do.body.130:                                      ; preds = %if.else.129
  br label %do.cond.131

do.cond.131:                                      ; preds = %do.body.130
  br label %do.end.132

do.end.132:                                       ; preds = %do.cond.131
  br label %if.end.133

if.end.133:                                       ; preds = %do.end.132, %do.end.127
  br label %if.end.134

if.end.134:                                       ; preds = %if.end.133, %do.body.96
  br label %do.cond.135

do.cond.135:                                      ; preds = %if.end.134
  br label %do.end.136

do.end.136:                                       ; preds = %do.cond.135
  %88 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager.addr, align 8, !tbaa !1
  %lab_profile = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %88, i32 0, i32 4
  %89 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %lab_profile, align 8, !tbaa !167
  store %struct.cmm_profile_s* %89, %struct.cmm_profile_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.137:                                       ; preds = %if.end.93
  %90 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %gs_colorspace.addr, align 8, !tbaa !1
  %cmm_icc_profile_data138 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %90, i32 0, i32 6
  %91 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data138, align 8, !tbaa !135
  %default_match = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %91, i32 0, i32 4
  store i32 14, i32* %default_match, align 4, !tbaa !54
  %92 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %gs_colorspace.addr, align 8, !tbaa !1
  %cmm_icc_profile_data139 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %92, i32 0, i32 6
  %93 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data139, align 8, !tbaa !135
  store %struct.cmm_profile_s* %93, %struct.cmm_profile_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.140:                                        ; preds = %if.end
  %94 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager.addr, align 8, !tbaa !1
  %memory141 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %94, i32 0, i32 10
  %95 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory141, align 8, !tbaa !50
  %call142 = call %struct.cmm_profile_s* @gsicc_profile_new(%struct.stream_s* null, %struct.gs_memory_s* %95, i8* null, i32 0) #5
  %96 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %gs_colorspace.addr, align 8, !tbaa !1
  %cmm_icc_profile_data143 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %96, i32 0, i32 6
  store %struct.cmm_profile_s* %call142, %struct.cmm_profile_s** %cmm_icc_profile_data143, align 8, !tbaa !135
  %97 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %gs_colorspace.addr, align 8, !tbaa !1
  %98 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %gs_colorspace.addr, align 8, !tbaa !1
  %cmm_icc_profile_data144 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %98, i32 0, i32 6
  %99 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data144, align 8, !tbaa !135
  %buffer145 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %99, i32 0, i32 14
  %100 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %gs_colorspace.addr, align 8, !tbaa !1
  %cmm_icc_profile_data146 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %100, i32 0, i32 6
  %101 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data146, align 8, !tbaa !135
  %buffer_size147 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %101, i32 0, i32 11
  %102 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager.addr, align 8, !tbaa !1
  %memory148 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %102, i32 0, i32 10
  %103 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory148, align 8, !tbaa !50
  %104 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %gs_colorspace.addr, align 8, !tbaa !1
  %params149 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %104, i32 0, i32 7
  %a = bitcast %union.anon.3* %params149 to %struct.gs_cie_a_s**
  %105 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %a, align 8, !tbaa !1
  %caches150 = getelementptr inbounds %struct.gs_cie_a_s, %struct.gs_cie_a_s* %105, i32 0, i32 5
  %DecodeA = getelementptr inbounds %struct.anon.10, %struct.anon.10* %caches150, i32 0, i32 0
  %106 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %gs_colorspace.addr, align 8, !tbaa !1
  %params151 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %106, i32 0, i32 7
  %a152 = bitcast %union.anon.3* %params151 to %struct.gs_cie_a_s**
  %107 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %a152, align 8, !tbaa !1
  %common153 = getelementptr inbounds %struct.gs_cie_a_s, %struct.gs_cie_a_s* %107, i32 0, i32 0
  %caches154 = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %common153, i32 0, i32 6
  %DecodeLMN155 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %caches154, i32 0, i32 0
  %arrayidx156 = getelementptr inbounds [3 x %union.gx_cie_scalar_cache_s], [3 x %union.gx_cie_scalar_cache_s]* %DecodeLMN155, i32 0, i64 0
  %call157 = call i32 @gsicc_create_froma(%struct.gs_color_space_s* %97, i8** %buffer145, i32* %buffer_size147, %struct.gs_memory_s* %103, %struct.gx_cie_vector_cache_s* %DecodeA, %union.gx_cie_scalar_cache_s* %arrayidx156) #5
  store i32 %call157, i32* %code, align 4, !tbaa !13
  %108 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %gs_colorspace.addr, align 8, !tbaa !1
  %cmm_icc_profile_data158 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %108, i32 0, i32 6
  %109 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data158, align 8, !tbaa !135
  %default_match159 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %109, i32 0, i32 4
  store i32 13, i32* %default_match159, align 4, !tbaa !54
  %110 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %gs_colorspace.addr, align 8, !tbaa !1
  %cmm_icc_profile_data160 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %110, i32 0, i32 6
  %111 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data160, align 8, !tbaa !135
  store %struct.cmm_profile_s* %111, %struct.cmm_profile_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.161:                                        ; preds = %if.end
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.162:                                        ; preds = %if.end, %if.end
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.163:                                        ; preds = %if.end
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %if.end
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb.163, %sw.bb.162, %sw.bb.161, %sw.bb.140, %if.end.137, %do.end.136, %do.end.92, %do.end.38, %do.end.17, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb, %if.then
  %112 = bitcast i32* %islab to i8*
  call void @llvm.lifetime.end(i64 4, i8* %112) #1
  %113 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %113) #1
  %114 = bitcast i32* %color_space_index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %114) #1
  %115 = bitcast %struct.cmm_profile_s** %profile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %115) #1
  %116 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %retval
  ret %struct.cmm_profile_s* %116
}

declare i32 @gs_color_space_get_index(%struct.gs_color_space_s*) #2

declare i32 @gsicc_create_fromabc(%struct.gs_color_space_s*, i8**, i32*, %struct.gs_memory_s*, %struct.gx_cie_vector_cache_s*, %union.gx_cie_scalar_cache_s*, i32*) #2

declare i32 @gsicc_create_froma(%struct.gs_color_space_s*, i8**, i32*, %struct.gs_memory_s*, %struct.gx_cie_vector_cache_s*, %union.gx_cie_scalar_cache_s*) #2

; Function Attrs: nounwind uwtable
define %struct.cmm_profile_s* @gsicc_read_serial_icc(%struct.gx_device_s* %dev, i64 %icc_hashcode) #0 {
entry:
  %retval = alloca %struct.cmm_profile_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %icc_hashcode.addr = alloca i64, align 8
  %profile = alloca %struct.cmm_profile_s*, align 8
  %position = alloca i64, align 8
  %size = alloca i32, align 4
  %code = alloca i32, align 4
  %pcrdev = alloca %struct.gx_device_clist_reader_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i64 %icc_hashcode, i64* %icc_hashcode.addr, align 8, !tbaa !64
  %0 = bitcast %struct.cmm_profile_s** %profile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i64* %position to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast %struct.gx_device_clist_reader_s** %pcrdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %6 = bitcast %struct.gx_device_s* %5 to %struct.gx_device_clist_reader_s*
  store %struct.gx_device_clist_reader_s* %6, %struct.gx_device_clist_reader_s** %pcrdev, align 8, !tbaa !1
  %7 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %pcrdev, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %7, i32 0, i32 3
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !200
  %call = call %struct.cmm_profile_s* @gsicc_profile_new(%struct.stream_s* null, %struct.gs_memory_s* %8, i8* null, i32 0) #5
  store %struct.cmm_profile_s* %call, %struct.cmm_profile_s** %profile, align 8, !tbaa !1
  %9 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %profile, align 8, !tbaa !1
  %cmp = icmp eq %struct.cmm_profile_s* %9, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %pcrdev, align 8, !tbaa !1
  %icc_table = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %10, i32 0, i32 61
  %11 = load %struct.clist_icctable_s*, %struct.clist_icctable_s** %icc_table, align 8, !tbaa !173
  %cmp1 = icmp eq %struct.clist_icctable_s* %11, null
  br i1 %cmp1, label %if.then.2, label %if.end.7

if.then.2:                                        ; preds = %if.end
  %12 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %pcrdev, align 8, !tbaa !1
  %call3 = call i32 @clist_read_icctable(%struct.gx_device_clist_reader_s* %12) #5
  store i32 %call3, i32* %code, align 4, !tbaa !13
  %13 = load i32, i32* %code, align 4, !tbaa !13
  %cmp4 = icmp slt i32 %13, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.then.2
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.then.2
  br label %if.end.7

if.end.7:                                         ; preds = %if.end.6, %if.end
  %14 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %pcrdev, align 8, !tbaa !1
  %icc_table8 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %14, i32 0, i32 61
  %15 = load %struct.clist_icctable_s*, %struct.clist_icctable_s** %icc_table8, align 8, !tbaa !173
  %16 = load i64, i64* %icc_hashcode.addr, align 8, !tbaa !64
  %call9 = call i64 @gsicc_search_icc_table(%struct.clist_icctable_s* %15, i64 %16, i32* %size) #5
  store i64 %call9, i64* %position, align 8, !tbaa !64
  %17 = load i64, i64* %position, align 8, !tbaa !64
  %cmp10 = icmp slt i64 %17, 0
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.7
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.end.7
  %18 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %pcrdev, align 8, !tbaa !1
  %19 = load i64, i64* %position, align 8, !tbaa !64
  %20 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %profile, align 8, !tbaa !1
  %21 = bitcast %struct.cmm_profile_s* %20 to i8*
  %call13 = call i32 @clist_read_chunk(%struct.gx_device_clist_reader_s* %18, i64 %19, i32 ptrtoint (i8** getelementptr inbounds (%struct.cmm_profile_s, %struct.cmm_profile_s* null, i32 0, i32 14) to i32), i8* %21) #5
  %22 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %profile, align 8, !tbaa !1
  store %struct.cmm_profile_s* %22, %struct.cmm_profile_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.12, %if.then.11, %if.then.5, %if.then
  %23 = bitcast %struct.gx_device_clist_reader_s** %pcrdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  %24 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  %25 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  %26 = bitcast i64* %position to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  %27 = bitcast %struct.cmm_profile_s** %profile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  %28 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %retval
  ret %struct.cmm_profile_s* %28
}

declare i32 @clist_read_icctable(%struct.gx_device_clist_reader_s*) #2

; Function Attrs: nounwind uwtable
define void @gsicc_profile_serialize(%struct.gsicc_serialized_profile_s* %profile_data, %struct.cmm_profile_s* %icc_profile) #0 {
entry:
  %profile_data.addr = alloca %struct.gsicc_serialized_profile_s*, align 8
  %icc_profile.addr = alloca %struct.cmm_profile_s*, align 8
  store %struct.gsicc_serialized_profile_s* %profile_data, %struct.gsicc_serialized_profile_s** %profile_data.addr, align 8, !tbaa !1
  store %struct.cmm_profile_s* %icc_profile, %struct.cmm_profile_s** %icc_profile.addr, align 8, !tbaa !1
  %0 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.cmm_profile_s* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.gsicc_serialized_profile_s*, %struct.gsicc_serialized_profile_s** %profile_data.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gsicc_serialized_profile_s* %1 to i8*
  %3 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile.addr, align 8, !tbaa !1
  %4 = bitcast %struct.cmm_profile_s* %3 to i8*
  %call = call i8* @memcpy(i8* %2, i8* %4, i64 ptrtoint (i8** getelementptr inbounds (%struct.cmm_profile_s, %struct.cmm_profile_s* null, i32 0, i32 14) to i64)) #6
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gsicc_getsrc_channel_count(%struct.cmm_profile_s* %icc_profile) #0 {
entry:
  %icc_profile.addr = alloca %struct.cmm_profile_s*, align 8
  store %struct.cmm_profile_s* %icc_profile, %struct.cmm_profile_s** %icc_profile.addr, align 8, !tbaa !1
  %0 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile.addr, align 8, !tbaa !1
  %profile_handle = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %0, i32 0, i32 17
  %1 = load i8*, i8** %profile_handle, align 8, !tbaa !26
  %call = call i32 @gscms_get_input_channel_count(i8* %1) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define void @gsicc_profile_reference(%struct.cmm_profile_s* %icc_profile, i32 %delta) #0 {
entry:
  %icc_profile.addr = alloca %struct.cmm_profile_s*, align 8
  %delta.addr = alloca i32, align 4
  store %struct.cmm_profile_s* %icc_profile, %struct.cmm_profile_s** %icc_profile.addr, align 8, !tbaa !1
  store i32 %delta, i32* %delta.addr, align 4, !tbaa !13
  %0 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.cmm_profile_s* %0, null
  br i1 %cmp, label %if.then, label %if.end.19

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %1 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.cmm_profile_s* %1, null
  br i1 %tobool, label %if.then.1, label %if.end.17

if.then.1:                                        ; preds = %do.body
  br label %do.body.2

do.body.2:                                        ; preds = %if.then.1
  br label %do.body.3

do.body.3:                                        ; preds = %do.body.2
  br label %do.end

do.end:                                           ; preds = %do.body.3
  %2 = load i32, i32* %delta.addr, align 4, !tbaa !13
  %conv = sext i32 %2 to i64
  %3 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile.addr, align 8, !tbaa !1
  %rc = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %3, i32 0, i32 18
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %4 = load i64, i64* %ref_count, align 8, !tbaa !35
  %add = add nsw i64 %4, %conv
  store i64 %add, i64* %ref_count, align 8, !tbaa !35
  br label %do.end.4

do.end.4:                                         ; preds = %do.end
  %5 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile.addr, align 8, !tbaa !1
  %rc5 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %5, i32 0, i32 18
  %ref_count6 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc5, i32 0, i32 0
  %6 = load i64, i64* %ref_count6, align 8, !tbaa !35
  %tobool7 = icmp ne i64 %6, 0
  br i1 %tobool7, label %if.else, label %if.then.8

if.then.8:                                        ; preds = %do.end.4
  br label %do.body.9

do.body.9:                                        ; preds = %if.then.8
  br label %do.body.10

do.body.10:                                       ; preds = %do.body.9
  br label %do.end.11

do.end.11:                                        ; preds = %do.body.10
  %7 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile.addr, align 8, !tbaa !1
  %rc12 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %7, i32 0, i32 18
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc12, i32 0, i32 2
  %8 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !37
  %9 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile.addr, align 8, !tbaa !1
  %rc13 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %9, i32 0, i32 18
  %memory = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc13, i32 0, i32 1
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !36
  %11 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile.addr, align 8, !tbaa !1
  %12 = bitcast %struct.cmm_profile_s* %11 to i8*
  call void %8(%struct.gs_memory_s* %10, i8* %12, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.52, i32 0, i32 0)) #5
  br label %do.end.14

do.end.14:                                        ; preds = %do.end.11
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %icc_profile.addr, align 8, !tbaa !1
  br label %if.end

if.else:                                          ; preds = %do.end.4
  br label %do.body.15

do.body.15:                                       ; preds = %if.else
  br label %do.end.16

do.end.16:                                        ; preds = %do.body.15
  br label %if.end

if.end:                                           ; preds = %do.end.16, %do.end.14
  br label %if.end.17

if.end.17:                                        ; preds = %if.end, %do.body
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  br label %if.end.19

if.end.19:                                        ; preds = %do.end.18, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @gsicc_get_srcprofile(i32 %data_cs, i32 %graphics_type_tag, %struct.cmm_srcgtag_profile_s* %srcgtag_profile, %struct.cmm_profile_s** %profile, %struct.gsicc_rendering_param_s* %render_cond) #0 {
entry:
  %data_cs.addr = alloca i32, align 4
  %graphics_type_tag.addr = alloca i32, align 4
  %srcgtag_profile.addr = alloca %struct.cmm_srcgtag_profile_s*, align 8
  %profile.addr = alloca %struct.cmm_profile_s**, align 8
  %render_cond.addr = alloca %struct.gsicc_rendering_param_s*, align 8
  store i32 %data_cs, i32* %data_cs.addr, align 4, !tbaa !5
  store i32 %graphics_type_tag, i32* %graphics_type_tag.addr, align 4, !tbaa !5
  store %struct.cmm_srcgtag_profile_s* %srcgtag_profile, %struct.cmm_srcgtag_profile_s** %srcgtag_profile.addr, align 8, !tbaa !1
  store %struct.cmm_profile_s** %profile, %struct.cmm_profile_s*** %profile.addr, align 8, !tbaa !1
  store %struct.gsicc_rendering_param_s* %render_cond, %struct.gsicc_rendering_param_s** %render_cond.addr, align 8, !tbaa !1
  %0 = load %struct.cmm_profile_s**, %struct.cmm_profile_s*** %profile.addr, align 8, !tbaa !1
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %0, align 8, !tbaa !1
  %1 = load %struct.gsicc_rendering_param_s*, %struct.gsicc_rendering_param_s** %render_cond.addr, align 8, !tbaa !1
  %rendering_intent = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %1, i32 0, i32 0
  store i32 0, i32* %rendering_intent, align 4, !tbaa !82
  %2 = load i32, i32* %graphics_type_tag.addr, align 4, !tbaa !5
  %and = and i32 %2, -129
  switch i32 %and, label %sw.default [
    i32 0, label %sw.bb
    i32 8, label %sw.bb
    i32 4, label %sw.bb.1
    i32 2, label %sw.bb.8
    i32 1, label %sw.bb.24
  ]

sw.bb:                                            ; preds = %entry, %entry
  br label %sw.default

sw.default:                                       ; preds = %entry, %sw.bb
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %3 = load i32, i32* %data_cs.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb.1
  %4 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag_profile.addr, align 8, !tbaa !1
  %rgb_profiles = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %4, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x %struct.cmm_profile_s*], [3 x %struct.cmm_profile_s*]* %rgb_profiles, i32 0, i64 0
  %5 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %arrayidx, align 8, !tbaa !1
  %6 = load %struct.cmm_profile_s**, %struct.cmm_profile_s*** %profile.addr, align 8, !tbaa !1
  store %struct.cmm_profile_s* %5, %struct.cmm_profile_s** %6, align 8, !tbaa !1
  %7 = load %struct.gsicc_rendering_param_s*, %struct.gsicc_rendering_param_s** %render_cond.addr, align 8, !tbaa !1
  %8 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag_profile.addr, align 8, !tbaa !1
  %rgb_rend_cond = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %8, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [3 x %struct.gsicc_rendering_param_s], [3 x %struct.gsicc_rendering_param_s]* %rgb_rend_cond, i32 0, i64 0
  %9 = bitcast %struct.gsicc_rendering_param_s* %7 to i8*
  %10 = bitcast %struct.gsicc_rendering_param_s* %arrayidx2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 24, i32 4, i1 false), !tbaa.struct !189
  br label %if.end.7

if.else:                                          ; preds = %sw.bb.1
  %11 = load i32, i32* %data_cs.addr, align 4, !tbaa !5
  %cmp3 = icmp eq i32 %11, 3
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.else
  %12 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag_profile.addr, align 8, !tbaa !1
  %cmyk_profiles = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %12, i32 0, i32 2
  %arrayidx5 = getelementptr inbounds [3 x %struct.cmm_profile_s*], [3 x %struct.cmm_profile_s*]* %cmyk_profiles, i32 0, i64 0
  %13 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %arrayidx5, align 8, !tbaa !1
  %14 = load %struct.cmm_profile_s**, %struct.cmm_profile_s*** %profile.addr, align 8, !tbaa !1
  store %struct.cmm_profile_s* %13, %struct.cmm_profile_s** %14, align 8, !tbaa !1
  %15 = load %struct.gsicc_rendering_param_s*, %struct.gsicc_rendering_param_s** %render_cond.addr, align 8, !tbaa !1
  %16 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag_profile.addr, align 8, !tbaa !1
  %cmyk_rend_cond = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %16, i32 0, i32 3
  %arrayidx6 = getelementptr inbounds [3 x %struct.gsicc_rendering_param_s], [3 x %struct.gsicc_rendering_param_s]* %cmyk_rend_cond, i32 0, i64 0
  %17 = bitcast %struct.gsicc_rendering_param_s* %15 to i8*
  %18 = bitcast %struct.gsicc_rendering_param_s* %arrayidx6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 24, i32 4, i1 false), !tbaa.struct !189
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.else
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  br label %sw.epilog

sw.bb.8:                                          ; preds = %entry
  %19 = load i32, i32* %data_cs.addr, align 4, !tbaa !5
  %cmp9 = icmp eq i32 %19, 2
  br i1 %cmp9, label %if.then.10, label %if.else.15

if.then.10:                                       ; preds = %sw.bb.8
  %20 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag_profile.addr, align 8, !tbaa !1
  %rgb_profiles11 = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %20, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [3 x %struct.cmm_profile_s*], [3 x %struct.cmm_profile_s*]* %rgb_profiles11, i32 0, i64 1
  %21 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %arrayidx12, align 8, !tbaa !1
  %22 = load %struct.cmm_profile_s**, %struct.cmm_profile_s*** %profile.addr, align 8, !tbaa !1
  store %struct.cmm_profile_s* %21, %struct.cmm_profile_s** %22, align 8, !tbaa !1
  %23 = load %struct.gsicc_rendering_param_s*, %struct.gsicc_rendering_param_s** %render_cond.addr, align 8, !tbaa !1
  %24 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag_profile.addr, align 8, !tbaa !1
  %rgb_rend_cond13 = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %24, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [3 x %struct.gsicc_rendering_param_s], [3 x %struct.gsicc_rendering_param_s]* %rgb_rend_cond13, i32 0, i64 1
  %25 = bitcast %struct.gsicc_rendering_param_s* %23 to i8*
  %26 = bitcast %struct.gsicc_rendering_param_s* %arrayidx14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 24, i32 4, i1 false), !tbaa.struct !189
  br label %if.end.23

if.else.15:                                       ; preds = %sw.bb.8
  %27 = load i32, i32* %data_cs.addr, align 4, !tbaa !5
  %cmp16 = icmp eq i32 %27, 3
  br i1 %cmp16, label %if.then.17, label %if.end.22

if.then.17:                                       ; preds = %if.else.15
  %28 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag_profile.addr, align 8, !tbaa !1
  %cmyk_profiles18 = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %28, i32 0, i32 2
  %arrayidx19 = getelementptr inbounds [3 x %struct.cmm_profile_s*], [3 x %struct.cmm_profile_s*]* %cmyk_profiles18, i32 0, i64 1
  %29 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %arrayidx19, align 8, !tbaa !1
  %30 = load %struct.cmm_profile_s**, %struct.cmm_profile_s*** %profile.addr, align 8, !tbaa !1
  store %struct.cmm_profile_s* %29, %struct.cmm_profile_s** %30, align 8, !tbaa !1
  %31 = load %struct.gsicc_rendering_param_s*, %struct.gsicc_rendering_param_s** %render_cond.addr, align 8, !tbaa !1
  %32 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag_profile.addr, align 8, !tbaa !1
  %cmyk_rend_cond20 = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %32, i32 0, i32 3
  %arrayidx21 = getelementptr inbounds [3 x %struct.gsicc_rendering_param_s], [3 x %struct.gsicc_rendering_param_s]* %cmyk_rend_cond20, i32 0, i64 1
  %33 = bitcast %struct.gsicc_rendering_param_s* %31 to i8*
  %34 = bitcast %struct.gsicc_rendering_param_s* %arrayidx21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* %34, i64 24, i32 4, i1 false), !tbaa.struct !189
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.17, %if.else.15
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.then.10
  br label %sw.epilog

sw.bb.24:                                         ; preds = %entry
  %35 = load i32, i32* %data_cs.addr, align 4, !tbaa !5
  %cmp25 = icmp eq i32 %35, 2
  br i1 %cmp25, label %if.then.26, label %if.else.31

if.then.26:                                       ; preds = %sw.bb.24
  %36 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag_profile.addr, align 8, !tbaa !1
  %rgb_profiles27 = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %36, i32 0, i32 0
  %arrayidx28 = getelementptr inbounds [3 x %struct.cmm_profile_s*], [3 x %struct.cmm_profile_s*]* %rgb_profiles27, i32 0, i64 2
  %37 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %arrayidx28, align 8, !tbaa !1
  %38 = load %struct.cmm_profile_s**, %struct.cmm_profile_s*** %profile.addr, align 8, !tbaa !1
  store %struct.cmm_profile_s* %37, %struct.cmm_profile_s** %38, align 8, !tbaa !1
  %39 = load %struct.gsicc_rendering_param_s*, %struct.gsicc_rendering_param_s** %render_cond.addr, align 8, !tbaa !1
  %40 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag_profile.addr, align 8, !tbaa !1
  %rgb_rend_cond29 = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %40, i32 0, i32 1
  %arrayidx30 = getelementptr inbounds [3 x %struct.gsicc_rendering_param_s], [3 x %struct.gsicc_rendering_param_s]* %rgb_rend_cond29, i32 0, i64 2
  %41 = bitcast %struct.gsicc_rendering_param_s* %39 to i8*
  %42 = bitcast %struct.gsicc_rendering_param_s* %arrayidx30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %41, i8* %42, i64 24, i32 4, i1 false), !tbaa.struct !189
  br label %if.end.39

if.else.31:                                       ; preds = %sw.bb.24
  %43 = load i32, i32* %data_cs.addr, align 4, !tbaa !5
  %cmp32 = icmp eq i32 %43, 3
  br i1 %cmp32, label %if.then.33, label %if.end.38

if.then.33:                                       ; preds = %if.else.31
  %44 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag_profile.addr, align 8, !tbaa !1
  %cmyk_profiles34 = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %44, i32 0, i32 2
  %arrayidx35 = getelementptr inbounds [3 x %struct.cmm_profile_s*], [3 x %struct.cmm_profile_s*]* %cmyk_profiles34, i32 0, i64 2
  %45 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %arrayidx35, align 8, !tbaa !1
  %46 = load %struct.cmm_profile_s**, %struct.cmm_profile_s*** %profile.addr, align 8, !tbaa !1
  store %struct.cmm_profile_s* %45, %struct.cmm_profile_s** %46, align 8, !tbaa !1
  %47 = load %struct.gsicc_rendering_param_s*, %struct.gsicc_rendering_param_s** %render_cond.addr, align 8, !tbaa !1
  %48 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag_profile.addr, align 8, !tbaa !1
  %cmyk_rend_cond36 = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %48, i32 0, i32 3
  %arrayidx37 = getelementptr inbounds [3 x %struct.gsicc_rendering_param_s], [3 x %struct.gsicc_rendering_param_s]* %cmyk_rend_cond36, i32 0, i64 2
  %49 = bitcast %struct.gsicc_rendering_param_s* %47 to i8*
  %50 = bitcast %struct.gsicc_rendering_param_s* %arrayidx37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %49, i8* %50, i64 24, i32 4, i1 false), !tbaa.struct !189
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.33, %if.else.31
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.then.26
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.39, %if.end.23, %if.end.7, %sw.default
  ret void
}

; Function Attrs: nounwind uwtable
define void @gsicc_extract_profile(i32 %graphics_type_tag, %struct.cmm_dev_profile_s* %profile_struct, %struct.cmm_profile_s** %profile, %struct.gsicc_rendering_param_s* %render_cond) #0 {
entry:
  %graphics_type_tag.addr = alloca i32, align 4
  %profile_struct.addr = alloca %struct.cmm_dev_profile_s*, align 8
  %profile.addr = alloca %struct.cmm_profile_s**, align 8
  %render_cond.addr = alloca %struct.gsicc_rendering_param_s*, align 8
  store i32 %graphics_type_tag, i32* %graphics_type_tag.addr, align 4, !tbaa !5
  store %struct.cmm_dev_profile_s* %profile_struct, %struct.cmm_dev_profile_s** %profile_struct.addr, align 8, !tbaa !1
  store %struct.cmm_profile_s** %profile, %struct.cmm_profile_s*** %profile.addr, align 8, !tbaa !1
  store %struct.gsicc_rendering_param_s* %render_cond, %struct.gsicc_rendering_param_s** %render_cond.addr, align 8, !tbaa !1
  %0 = load i32, i32* %graphics_type_tag.addr, align 4, !tbaa !5
  %and = and i32 %0, -129
  switch i32 %and, label %sw.default [
    i32 0, label %sw.bb
    i32 8, label %sw.bb
    i32 4, label %sw.bb.2
    i32 2, label %sw.bb.11
    i32 1, label %sw.bb.24
  ]

sw.bb:                                            ; preds = %entry, %entry
  br label %sw.default

sw.default:                                       ; preds = %entry, %sw.bb
  %1 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %profile_struct.addr, align 8, !tbaa !1
  %device_profile = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %1, i32 0, i32 0
  %arrayidx = getelementptr inbounds [4 x %struct.cmm_profile_s*], [4 x %struct.cmm_profile_s*]* %device_profile, i32 0, i64 0
  %2 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %arrayidx, align 8, !tbaa !1
  %3 = load %struct.cmm_profile_s**, %struct.cmm_profile_s*** %profile.addr, align 8, !tbaa !1
  store %struct.cmm_profile_s* %2, %struct.cmm_profile_s** %3, align 8, !tbaa !1
  %4 = load %struct.gsicc_rendering_param_s*, %struct.gsicc_rendering_param_s** %render_cond.addr, align 8, !tbaa !1
  %5 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %profile_struct.addr, align 8, !tbaa !1
  %rendercond = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %5, i32 0, i32 4
  %arrayidx1 = getelementptr inbounds [4 x %struct.gsicc_rendering_param_s], [4 x %struct.gsicc_rendering_param_s]* %rendercond, i32 0, i64 0
  %6 = bitcast %struct.gsicc_rendering_param_s* %4 to i8*
  %7 = bitcast %struct.gsicc_rendering_param_s* %arrayidx1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 24, i32 4, i1 false), !tbaa.struct !189
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %8 = load %struct.gsicc_rendering_param_s*, %struct.gsicc_rendering_param_s** %render_cond.addr, align 8, !tbaa !1
  %9 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %profile_struct.addr, align 8, !tbaa !1
  %rendercond3 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %9, i32 0, i32 4
  %arrayidx4 = getelementptr inbounds [4 x %struct.gsicc_rendering_param_s], [4 x %struct.gsicc_rendering_param_s]* %rendercond3, i32 0, i64 1
  %10 = bitcast %struct.gsicc_rendering_param_s* %8 to i8*
  %11 = bitcast %struct.gsicc_rendering_param_s* %arrayidx4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 24, i32 4, i1 false), !tbaa.struct !189
  %12 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %profile_struct.addr, align 8, !tbaa !1
  %device_profile5 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %12, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [4 x %struct.cmm_profile_s*], [4 x %struct.cmm_profile_s*]* %device_profile5, i32 0, i64 1
  %13 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %arrayidx6, align 8, !tbaa !1
  %cmp = icmp ne %struct.cmm_profile_s* %13, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb.2
  %14 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %profile_struct.addr, align 8, !tbaa !1
  %device_profile7 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %14, i32 0, i32 0
  %arrayidx8 = getelementptr inbounds [4 x %struct.cmm_profile_s*], [4 x %struct.cmm_profile_s*]* %device_profile7, i32 0, i64 1
  %15 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %arrayidx8, align 8, !tbaa !1
  %16 = load %struct.cmm_profile_s**, %struct.cmm_profile_s*** %profile.addr, align 8, !tbaa !1
  store %struct.cmm_profile_s* %15, %struct.cmm_profile_s** %16, align 8, !tbaa !1
  br label %if.end

if.else:                                          ; preds = %sw.bb.2
  %17 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %profile_struct.addr, align 8, !tbaa !1
  %device_profile9 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %17, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [4 x %struct.cmm_profile_s*], [4 x %struct.cmm_profile_s*]* %device_profile9, i32 0, i64 0
  %18 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %arrayidx10, align 8, !tbaa !1
  %19 = load %struct.cmm_profile_s**, %struct.cmm_profile_s*** %profile.addr, align 8, !tbaa !1
  store %struct.cmm_profile_s* %18, %struct.cmm_profile_s** %19, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog

sw.bb.11:                                         ; preds = %entry
  %20 = load %struct.gsicc_rendering_param_s*, %struct.gsicc_rendering_param_s** %render_cond.addr, align 8, !tbaa !1
  %21 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %profile_struct.addr, align 8, !tbaa !1
  %rendercond12 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %21, i32 0, i32 4
  %arrayidx13 = getelementptr inbounds [4 x %struct.gsicc_rendering_param_s], [4 x %struct.gsicc_rendering_param_s]* %rendercond12, i32 0, i64 2
  %22 = bitcast %struct.gsicc_rendering_param_s* %20 to i8*
  %23 = bitcast %struct.gsicc_rendering_param_s* %arrayidx13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 24, i32 4, i1 false), !tbaa.struct !189
  %24 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %profile_struct.addr, align 8, !tbaa !1
  %device_profile14 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %24, i32 0, i32 0
  %arrayidx15 = getelementptr inbounds [4 x %struct.cmm_profile_s*], [4 x %struct.cmm_profile_s*]* %device_profile14, i32 0, i64 2
  %25 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %arrayidx15, align 8, !tbaa !1
  %cmp16 = icmp ne %struct.cmm_profile_s* %25, null
  br i1 %cmp16, label %if.then.17, label %if.else.20

if.then.17:                                       ; preds = %sw.bb.11
  %26 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %profile_struct.addr, align 8, !tbaa !1
  %device_profile18 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %26, i32 0, i32 0
  %arrayidx19 = getelementptr inbounds [4 x %struct.cmm_profile_s*], [4 x %struct.cmm_profile_s*]* %device_profile18, i32 0, i64 2
  %27 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %arrayidx19, align 8, !tbaa !1
  %28 = load %struct.cmm_profile_s**, %struct.cmm_profile_s*** %profile.addr, align 8, !tbaa !1
  store %struct.cmm_profile_s* %27, %struct.cmm_profile_s** %28, align 8, !tbaa !1
  br label %if.end.23

if.else.20:                                       ; preds = %sw.bb.11
  %29 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %profile_struct.addr, align 8, !tbaa !1
  %device_profile21 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %29, i32 0, i32 0
  %arrayidx22 = getelementptr inbounds [4 x %struct.cmm_profile_s*], [4 x %struct.cmm_profile_s*]* %device_profile21, i32 0, i64 0
  %30 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %arrayidx22, align 8, !tbaa !1
  %31 = load %struct.cmm_profile_s**, %struct.cmm_profile_s*** %profile.addr, align 8, !tbaa !1
  store %struct.cmm_profile_s* %30, %struct.cmm_profile_s** %31, align 8, !tbaa !1
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.20, %if.then.17
  br label %sw.epilog

sw.bb.24:                                         ; preds = %entry
  %32 = load %struct.gsicc_rendering_param_s*, %struct.gsicc_rendering_param_s** %render_cond.addr, align 8, !tbaa !1
  %33 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %profile_struct.addr, align 8, !tbaa !1
  %rendercond25 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %33, i32 0, i32 4
  %arrayidx26 = getelementptr inbounds [4 x %struct.gsicc_rendering_param_s], [4 x %struct.gsicc_rendering_param_s]* %rendercond25, i32 0, i64 3
  %34 = bitcast %struct.gsicc_rendering_param_s* %32 to i8*
  %35 = bitcast %struct.gsicc_rendering_param_s* %arrayidx26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* %35, i64 24, i32 4, i1 false), !tbaa.struct !189
  %36 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %profile_struct.addr, align 8, !tbaa !1
  %device_profile27 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %36, i32 0, i32 0
  %arrayidx28 = getelementptr inbounds [4 x %struct.cmm_profile_s*], [4 x %struct.cmm_profile_s*]* %device_profile27, i32 0, i64 3
  %37 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %arrayidx28, align 8, !tbaa !1
  %cmp29 = icmp ne %struct.cmm_profile_s* %37, null
  br i1 %cmp29, label %if.then.30, label %if.else.33

if.then.30:                                       ; preds = %sw.bb.24
  %38 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %profile_struct.addr, align 8, !tbaa !1
  %device_profile31 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %38, i32 0, i32 0
  %arrayidx32 = getelementptr inbounds [4 x %struct.cmm_profile_s*], [4 x %struct.cmm_profile_s*]* %device_profile31, i32 0, i64 3
  %39 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %arrayidx32, align 8, !tbaa !1
  %40 = load %struct.cmm_profile_s**, %struct.cmm_profile_s*** %profile.addr, align 8, !tbaa !1
  store %struct.cmm_profile_s* %39, %struct.cmm_profile_s** %40, align 8, !tbaa !1
  br label %if.end.36

if.else.33:                                       ; preds = %sw.bb.24
  %41 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %profile_struct.addr, align 8, !tbaa !1
  %device_profile34 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %41, i32 0, i32 0
  %arrayidx35 = getelementptr inbounds [4 x %struct.cmm_profile_s*], [4 x %struct.cmm_profile_s*]* %device_profile34, i32 0, i64 0
  %42 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %arrayidx35, align 8, !tbaa !1
  %43 = load %struct.cmm_profile_s**, %struct.cmm_profile_s*** %profile.addr, align 8, !tbaa !1
  store %struct.cmm_profile_s* %42, %struct.cmm_profile_s** %43, align 8, !tbaa !1
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.33, %if.then.30
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.36, %if.end.23, %if.end, %sw.default
  ret void
}

; Function Attrs: nounwind uwtable
define void @gs_setoverrideicc(%struct.gs_imager_state_s* %pis, i32 %value) #0 {
entry:
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %value.addr = alloca i32, align 4
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store i32 %value, i32* %value.addr, align 4, !tbaa !13
  %0 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %icc_manager = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %0, i32 0, i32 35
  %1 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !171
  %cmp = icmp ne %struct.gsicc_manager_s* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %value.addr, align 4, !tbaa !13
  %3 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %icc_manager1 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %3, i32 0, i32 35
  %4 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager1, align 8, !tbaa !171
  %override_internal = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %4, i32 0, i32 8
  store i32 %2, i32* %override_internal, align 4, !tbaa !170
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gs_currentoverrideicc(%struct.gs_imager_state_s* %pis) #0 {
entry:
  %retval = alloca i32, align 4
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %0 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %icc_manager = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %0, i32 0, i32 35
  %1 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !171
  %cmp = icmp ne %struct.gsicc_manager_s* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %icc_manager1 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %2, i32 0, i32 35
  %3 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager1, align 8, !tbaa !171
  %override_internal = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %3, i32 0, i32 8
  %4 = load i32, i32* %override_internal, align 4, !tbaa !170
  store i32 %4, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define void @gsicc_setrange_lab(%struct.cmm_profile_s* %profile) #0 {
entry:
  %profile.addr = alloca %struct.cmm_profile_s*, align 8
  store %struct.cmm_profile_s* %profile, %struct.cmm_profile_s** %profile.addr, align 8, !tbaa !1
  %0 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %profile.addr, align 8, !tbaa !1
  %Range = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %0, i32 0, i32 6
  %ranges = getelementptr inbounds %struct.gs_range_icc_s, %struct.gs_range_icc_s* %Range, i32 0, i32 0
  %arrayidx = getelementptr inbounds [15 x %struct.gs_range_s], [15 x %struct.gs_range_s]* %ranges, i32 0, i64 0
  %rmin = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx, i32 0, i32 0
  store float 0.000000e+00, float* %rmin, align 4, !tbaa !14
  %1 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %profile.addr, align 8, !tbaa !1
  %Range1 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %1, i32 0, i32 6
  %ranges2 = getelementptr inbounds %struct.gs_range_icc_s, %struct.gs_range_icc_s* %Range1, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [15 x %struct.gs_range_s], [15 x %struct.gs_range_s]* %ranges2, i32 0, i64 0
  %rmax = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx3, i32 0, i32 1
  store float 1.000000e+02, float* %rmax, align 4, !tbaa !17
  %2 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %profile.addr, align 8, !tbaa !1
  %Range4 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %2, i32 0, i32 6
  %ranges5 = getelementptr inbounds %struct.gs_range_icc_s, %struct.gs_range_icc_s* %Range4, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [15 x %struct.gs_range_s], [15 x %struct.gs_range_s]* %ranges5, i32 0, i64 1
  %rmin7 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx6, i32 0, i32 0
  store float -1.280000e+02, float* %rmin7, align 4, !tbaa !14
  %3 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %profile.addr, align 8, !tbaa !1
  %Range8 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %3, i32 0, i32 6
  %ranges9 = getelementptr inbounds %struct.gs_range_icc_s, %struct.gs_range_icc_s* %Range8, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [15 x %struct.gs_range_s], [15 x %struct.gs_range_s]* %ranges9, i32 0, i64 1
  %rmax11 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx10, i32 0, i32 1
  store float 1.270000e+02, float* %rmax11, align 4, !tbaa !17
  %4 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %profile.addr, align 8, !tbaa !1
  %Range12 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %4, i32 0, i32 6
  %ranges13 = getelementptr inbounds %struct.gs_range_icc_s, %struct.gs_range_icc_s* %Range12, i32 0, i32 0
  %arrayidx14 = getelementptr inbounds [15 x %struct.gs_range_s], [15 x %struct.gs_range_s]* %ranges13, i32 0, i64 2
  %rmin15 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx14, i32 0, i32 0
  store float -1.280000e+02, float* %rmin15, align 4, !tbaa !14
  %5 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %profile.addr, align 8, !tbaa !1
  %Range16 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %5, i32 0, i32 6
  %ranges17 = getelementptr inbounds %struct.gs_range_icc_s, %struct.gs_range_icc_s* %Range16, i32 0, i32 0
  %arrayidx18 = getelementptr inbounds [15 x %struct.gs_range_s], [15 x %struct.gs_range_s]* %ranges17, i32 0, i64 2
  %rmax19 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx18, i32 0, i32 1
  store float 1.270000e+02, float* %rmax19, align 4, !tbaa !17
  ret void
}

; Function Attrs: nounwind uwtable
define void @gs_currentdevicenicc(%struct.gs_state_s* %pgs, %struct.gs_param_string_s* %pval) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pval.addr = alloca %struct.gs_param_string_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pval, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %icc_manager = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 35
  %1 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !157
  %device_n = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %1, i32 0, i32 6
  %2 = load %struct.gsicc_devicen_s*, %struct.gsicc_devicen_s** %device_n, align 8, !tbaa !57
  %cmp = icmp eq %struct.gsicc_devicen_s* %2, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** @gs_currentdevicenicc.rfs, align 8, !tbaa !1
  %4 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %4, i32 0, i32 0
  store i8* %3, i8** %data, align 8, !tbaa !201
  %5 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %persistent = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %5, i32 0, i32 2
  store i32 1, i32* %persistent, align 4, !tbaa !203
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %icc_manager1 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %6, i32 0, i32 35
  %7 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager1, align 8, !tbaa !157
  %device_n2 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %7, i32 0, i32 6
  %8 = load %struct.gsicc_devicen_s*, %struct.gsicc_devicen_s** %device_n2, align 8, !tbaa !57
  %head = getelementptr inbounds %struct.gsicc_devicen_s, %struct.gsicc_devicen_s* %8, i32 0, i32 0
  %9 = load %struct.gsicc_devicen_entry_s*, %struct.gsicc_devicen_entry_s** %head, align 8, !tbaa !58
  %iccprofile = getelementptr inbounds %struct.gsicc_devicen_entry_s, %struct.gsicc_devicen_entry_s* %9, i32 0, i32 0
  %10 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %iccprofile, align 8, !tbaa !61
  %name = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %10, i32 0, i32 20
  %11 = load i8*, i8** %name, align 8, !tbaa !33
  %12 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %data3 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %12, i32 0, i32 0
  store i8* %11, i8** %data3, align 8, !tbaa !201
  %13 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %persistent4 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %13, i32 0, i32 2
  store i32 0, i32* %persistent4, align 4, !tbaa !203
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %14 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %data5 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %14, i32 0, i32 0
  %15 = load i8*, i8** %data5, align 8, !tbaa !201
  %call = call i64 @strlen(i8* %15) #7
  %conv = trunc i64 %call to i32
  %16 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %16, i32 0, i32 1
  store i32 %conv, i32* %size, align 4, !tbaa !204
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gs_setdevicenprofileicc(%struct.gs_state_s* %pgs, %struct.gs_param_string_s* %pval) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pval.addr = alloca %struct.gs_param_string_s*, align 8
  %code = alloca i32, align 4
  %pname = alloca i8*, align 8
  %pstr = alloca i8*, align 8
  %pstrend = alloca i8*, align 8
  %namelen = alloca i32, align 4
  %mem = alloca %struct.gs_memory_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pval, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %code, align 4, !tbaa !13
  %1 = bitcast i8** %pname to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i8** %pstr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i8** %pstrend to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %namelen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %5, i32 0, i32 1
  %6 = load i32, i32* %size, align 4, !tbaa !204
  %add = add i32 %6, 1
  store i32 %add, i32* %namelen, align 4, !tbaa !13
  %7 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %8, i32 0, i32 1
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !153
  store %struct.gs_memory_s* %9, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %10 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %size1 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %10, i32 0, i32 1
  %11 = load i32, i32* %size1, align 4, !tbaa !204
  %cmp = icmp ne i32 %11, 0
  br i1 %cmp, label %if.then, label %if.end.46

if.then:                                          ; preds = %entry
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %12, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %13 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !30
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %15 = load i32, i32* %namelen, align 4, !tbaa !13
  %call = call i8* %13(%struct.gs_memory_s* %14, i32 %15, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.54, i32 0, i32 0)) #5
  store i8* %call, i8** %pname, align 8, !tbaa !1
  %16 = load i8*, i8** %pname, align 8, !tbaa !1
  %cmp2 = icmp eq i8* %16, null
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %17 = load i8*, i8** %pname, align 8, !tbaa !1
  %18 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %18, i32 0, i32 0
  %19 = load i8*, i8** %data, align 8, !tbaa !201
  %20 = load i32, i32* %namelen, align 4, !tbaa !13
  %sub = sub nsw i32 %20, 1
  %conv = sext i32 %sub to i64
  %call4 = call i8* @memcpy(i8* %17, i8* %19, i64 %conv) #6
  %21 = load i32, i32* %namelen, align 4, !tbaa !13
  %sub5 = sub nsw i32 %21, 1
  %idxprom = sext i32 %sub5 to i64
  %22 = load i8*, i8** %pname, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %22, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1, !tbaa !5
  %23 = load i8*, i8** %pname, align 8, !tbaa !1
  %call6 = call i8* @strtok(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i32 0, i32 0)) #6
  store i8* %call6, i8** %pstr, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %if.end.42, %if.end
  %24 = load i8*, i8** %pstr, align 8, !tbaa !1
  %cmp7 = icmp ne i8* %24, null
  br i1 %cmp7, label %while.body, label %while.end.44

while.body:                                       ; preds = %while.cond
  %25 = load i8*, i8** %pstr, align 8, !tbaa !1
  %call9 = call i64 @strlen(i8* %25) #7
  %conv10 = trunc i64 %call9 to i32
  store i32 %conv10, i32* %namelen, align 4, !tbaa !13
  br label %while.cond.11

while.cond.11:                                    ; preds = %while.body.18, %while.body
  %26 = load i32, i32* %namelen, align 4, !tbaa !13
  %cmp12 = icmp sgt i32 %26, 0
  br i1 %cmp12, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.11
  %27 = load i8*, i8** %pstr, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds i8, i8* %27, i64 0
  %28 = load i8, i8* %arrayidx14, align 1, !tbaa !5
  %conv15 = sext i8 %28 to i32
  %cmp16 = icmp eq i32 %conv15, 32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.11
  %29 = phi i1 [ false, %while.cond.11 ], [ %cmp16, %land.rhs ]
  br i1 %29, label %while.body.18, label %while.end

while.body.18:                                    ; preds = %land.end
  %30 = load i8*, i8** %pstr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr, i8** %pstr, align 8, !tbaa !1
  %31 = load i32, i32* %namelen, align 4, !tbaa !13
  %dec = add nsw i32 %31, -1
  store i32 %dec, i32* %namelen, align 4, !tbaa !13
  br label %while.cond.11

while.end:                                        ; preds = %land.end
  %32 = load i8*, i8** %pstr, align 8, !tbaa !1
  %call19 = call i64 @strlen(i8* %32) #7
  %conv20 = trunc i64 %call19 to i32
  store i32 %conv20, i32* %namelen, align 4, !tbaa !13
  %33 = load i32, i32* %namelen, align 4, !tbaa !13
  %sub21 = sub nsw i32 %33, 1
  %idxprom22 = sext i32 %sub21 to i64
  %34 = load i8*, i8** %pstr, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds i8, i8* %34, i64 %idxprom22
  store i8* %arrayidx23, i8** %pstrend, align 8, !tbaa !1
  br label %while.cond.24

while.cond.24:                                    ; preds = %while.body.33, %while.end
  %35 = load i32, i32* %namelen, align 4, !tbaa !13
  %cmp25 = icmp sgt i32 %35, 0
  br i1 %cmp25, label %land.rhs.27, label %land.end.32

land.rhs.27:                                      ; preds = %while.cond.24
  %36 = load i8*, i8** %pstrend, align 8, !tbaa !1
  %arrayidx28 = getelementptr inbounds i8, i8* %36, i64 0
  %37 = load i8, i8* %arrayidx28, align 1, !tbaa !5
  %conv29 = sext i8 %37 to i32
  %cmp30 = icmp eq i32 %conv29, 32
  br label %land.end.32

land.end.32:                                      ; preds = %land.rhs.27, %while.cond.24
  %38 = phi i1 [ false, %while.cond.24 ], [ %cmp30, %land.rhs.27 ]
  br i1 %38, label %while.body.33, label %while.end.36

while.body.33:                                    ; preds = %land.end.32
  %39 = load i8*, i8** %pstrend, align 8, !tbaa !1
  %incdec.ptr34 = getelementptr inbounds i8, i8* %39, i32 -1
  store i8* %incdec.ptr34, i8** %pstrend, align 8, !tbaa !1
  %40 = load i32, i32* %namelen, align 4, !tbaa !13
  %dec35 = add nsw i32 %40, -1
  store i32 %dec35, i32* %namelen, align 4, !tbaa !13
  br label %while.cond.24

while.end.36:                                     ; preds = %land.end.32
  %41 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %icc_manager = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %41, i32 0, i32 35
  %42 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !157
  %43 = load i8*, i8** %pstr, align 8, !tbaa !1
  %44 = load i32, i32* %namelen, align 4, !tbaa !13
  %call37 = call i32 @gsicc_set_profile(%struct.gsicc_manager_s* %42, i8* %43, i32 %44, i32 6) #5
  store i32 %call37, i32* %code, align 4, !tbaa !13
  %45 = load i32, i32* %code, align 4, !tbaa !13
  %cmp38 = icmp slt i32 %45, 0
  br i1 %cmp38, label %if.then.40, label %if.end.42

if.then.40:                                       ; preds = %while.end.36
  %46 = load i32, i32* %code, align 4, !tbaa !13
  %call41 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gs_setdevicenprofileicc, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 2496, i32 0, i32 %46, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.56, i32 0, i32 0)) #5
  store i32 %call41, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.42:                                        ; preds = %while.end.36
  %call43 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i32 0, i32 0)) #6
  store i8* %call43, i8** %pstr, align 8, !tbaa !1
  br label %while.cond

while.end.44:                                     ; preds = %while.cond
  %47 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs45 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %47, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs45, i32 0, i32 2
  %48 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !31
  %49 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %50 = load i8*, i8** %pname, align 8, !tbaa !1
  call void %48(%struct.gs_memory_s* %49, i8* %50, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.54, i32 0, i32 0)) #5
  %51 = load i32, i32* %code, align 4, !tbaa !13
  store i32 %51, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.46:                                        ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.46, %while.end.44, %if.then.40, %if.then.3
  %52 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #1
  %53 = bitcast i32* %namelen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #1
  %54 = bitcast i8** %pstrend to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #1
  %55 = bitcast i8** %pstr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #1
  %56 = bitcast i8** %pname to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #1
  %57 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #1
  %58 = load i32, i32* %retval
  ret i32 %58
}

; Function Attrs: nounwind uwtable
define void @gs_currentdefaultgrayicc(%struct.gs_state_s* %pgs, %struct.gs_param_string_s* %pval) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pval.addr = alloca %struct.gs_param_string_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pval, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %icc_manager = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 35
  %1 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !157
  %default_gray = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %1, i32 0, i32 1
  %2 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %default_gray, align 8, !tbaa !161
  %cmp = icmp eq %struct.cmm_profile_s* %2, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** @gs_currentdefaultgrayicc.rfs, align 8, !tbaa !1
  %4 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %4, i32 0, i32 0
  store i8* %3, i8** %data, align 8, !tbaa !201
  %5 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %persistent = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %5, i32 0, i32 2
  store i32 1, i32* %persistent, align 4, !tbaa !203
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %icc_manager1 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %6, i32 0, i32 35
  %7 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager1, align 8, !tbaa !157
  %default_gray2 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %7, i32 0, i32 1
  %8 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %default_gray2, align 8, !tbaa !161
  %name = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %8, i32 0, i32 20
  %9 = load i8*, i8** %name, align 8, !tbaa !33
  %10 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %data3 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %10, i32 0, i32 0
  store i8* %9, i8** %data3, align 8, !tbaa !201
  %11 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %persistent4 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %11, i32 0, i32 2
  store i32 0, i32* %persistent4, align 4, !tbaa !203
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %12 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %data5 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %12, i32 0, i32 0
  %13 = load i8*, i8** %data5, align 8, !tbaa !201
  %call = call i64 @strlen(i8* %13) #7
  %conv = trunc i64 %call to i32
  %14 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %14, i32 0, i32 1
  store i32 %conv, i32* %size, align 4, !tbaa !204
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gs_setdefaultgrayicc(%struct.gs_state_s* %pgs, %struct.gs_param_string_s* %pval) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pval.addr = alloca %struct.gs_param_string_s*, align 8
  %code = alloca i32, align 4
  %pname = alloca i8*, align 8
  %namelen = alloca i32, align 4
  %mem = alloca %struct.gs_memory_s*, align 8
  %not_initialized = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pval, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i8** %pname to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32* %namelen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %3, i32 0, i32 1
  %4 = load i32, i32* %size, align 4, !tbaa !204
  %add = add i32 %4, 1
  store i32 %add, i32* %namelen, align 4, !tbaa !13
  %5 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %6, i32 0, i32 1
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !153
  store %struct.gs_memory_s* %7, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %8 = bitcast i32* %not_initialized to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %icc_manager = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %9, i32 0, i32 35
  %10 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !157
  %default_gray = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %10, i32 0, i32 1
  %11 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %default_gray, align 8, !tbaa !161
  %cmp = icmp eq %struct.cmm_profile_s* %11, null
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %not_initialized, align 4, !tbaa !13
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %12, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %13 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !30
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %15 = load i32, i32* %namelen, align 4, !tbaa !13
  %call = call i8* %13(%struct.gs_memory_s* %14, i32 %15, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.57, i32 0, i32 0)) #5
  store i8* %call, i8** %pname, align 8, !tbaa !1
  %16 = load i8*, i8** %pname, align 8, !tbaa !1
  %cmp1 = icmp eq i8* %16, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %17 = load i8*, i8** %pname, align 8, !tbaa !1
  %18 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %18, i32 0, i32 0
  %19 = load i8*, i8** %data, align 8, !tbaa !201
  %20 = load i32, i32* %namelen, align 4, !tbaa !13
  %sub = sub nsw i32 %20, 1
  %conv3 = sext i32 %sub to i64
  %call4 = call i8* @memcpy(i8* %17, i8* %19, i64 %conv3) #6
  %21 = load i32, i32* %namelen, align 4, !tbaa !13
  %sub5 = sub nsw i32 %21, 1
  %idxprom = sext i32 %sub5 to i64
  %22 = load i8*, i8** %pname, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %22, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1, !tbaa !5
  %23 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %icc_manager6 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %23, i32 0, i32 35
  %24 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager6, align 8, !tbaa !157
  %25 = load i8*, i8** %pname, align 8, !tbaa !1
  %26 = load i32, i32* %namelen, align 4, !tbaa !13
  %call7 = call i32 @gsicc_set_profile(%struct.gsicc_manager_s* %24, i8* %25, i32 %26, i32 1) #5
  store i32 %call7, i32* %code, align 4, !tbaa !13
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs8 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %27, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs8, i32 0, i32 2
  %28 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !31
  %29 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %30 = load i8*, i8** %pname, align 8, !tbaa !1
  call void %28(%struct.gs_memory_s* %29, i8* %30, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.57, i32 0, i32 0)) #5
  %31 = load i32, i32* %code, align 4, !tbaa !13
  %cmp9 = icmp slt i32 %31, 0
  br i1 %cmp9, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.end
  %32 = load i32, i32* %code, align 4, !tbaa !13
  %call12 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gs_setdefaultgrayicc, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 2547, i32 0, i32 %32, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.58, i32 0, i32 0)) #5
  store i32 %call12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.13:                                        ; preds = %if.end
  %33 = load i32, i32* %not_initialized, align 4, !tbaa !13
  %tobool = icmp ne i32 %33, 0
  br i1 %tobool, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.end.13
  %34 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call15 = call i32 @gsicc_init_gs_colors(%struct.gs_state_s* %34) #5
  store i32 %call15, i32* %code, align 4, !tbaa !13
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %if.end.13
  %35 = load i32, i32* %code, align 4, !tbaa !13
  %cmp17 = icmp slt i32 %35, 0
  br i1 %cmp17, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %if.end.16
  %36 = load i32, i32* %code, align 4, !tbaa !13
  %call20 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gs_setdefaultgrayicc, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 2554, i32 0, i32 %36, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.59, i32 0, i32 0)) #5
  store i32 %call20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %if.end.16
  %37 = load i32, i32* %code, align 4, !tbaa !13
  store i32 %37, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.21, %if.then.19, %if.then.11, %if.then
  %38 = bitcast i32* %not_initialized to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  %39 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  %40 = bitcast i32* %namelen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  %41 = bitcast i8** %pname to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  %42 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #1
  %43 = load i32, i32* %retval
  ret i32 %43
}

; Function Attrs: nounwind uwtable
define void @gs_currenticcdirectory(%struct.gs_state_s* %pgs, %struct.gs_param_string_s* %pval) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pval.addr = alloca %struct.gs_param_string_s*, align 8
  %lib_ctx = alloca %struct.gs_lib_ctx_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pval, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_lib_ctx_s** %lib_ctx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i32 0, i32 1
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !153
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %2, i32 0, i32 2
  %3 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !18
  store %struct.gs_lib_ctx_s* %3, %struct.gs_lib_ctx_s** %lib_ctx, align 8, !tbaa !1
  %4 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %lib_ctx, align 8, !tbaa !1
  %profiledir = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %4, i32 0, i32 24
  %5 = load i8*, i8** %profiledir, align 8, !tbaa !21
  %cmp = icmp eq i8* %5, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load i8*, i8** @gs_currenticcdirectory.rfs, align 8, !tbaa !1
  %7 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %7, i32 0, i32 0
  store i8* %6, i8** %data, align 8, !tbaa !201
  %8 = load i8*, i8** @gs_currenticcdirectory.rfs, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %8) #7
  %conv = trunc i64 %call to i32
  %9 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %9, i32 0, i32 1
  store i32 %conv, i32* %size, align 4, !tbaa !204
  %10 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %persistent = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %10, i32 0, i32 2
  store i32 1, i32* %persistent, align 4, !tbaa !203
  br label %if.end

if.else:                                          ; preds = %entry
  %11 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %lib_ctx, align 8, !tbaa !1
  %profiledir1 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %11, i32 0, i32 24
  %12 = load i8*, i8** %profiledir1, align 8, !tbaa !21
  %13 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %data2 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %13, i32 0, i32 0
  store i8* %12, i8** %data2, align 8, !tbaa !201
  %14 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %lib_ctx, align 8, !tbaa !1
  %profiledir_len = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %14, i32 0, i32 25
  %15 = load i32, i32* %profiledir_len, align 4, !tbaa !23
  %16 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %size3 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %16, i32 0, i32 1
  store i32 %15, i32* %size3, align 4, !tbaa !204
  %17 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %persistent4 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %17, i32 0, i32 2
  store i32 0, i32* %persistent4, align 4, !tbaa !203
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %18 = bitcast %struct.gs_lib_ctx_s** %lib_ctx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gs_seticcdirectory(%struct.gs_state_s* %pgs, %struct.gs_param_string_s* %pval) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pval.addr = alloca %struct.gs_param_string_s*, align 8
  %pname = alloca i8*, align 8
  %namelen = alloca i32, align 4
  %mem = alloca %struct.gs_memory_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pval, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %0 = bitcast i8** %pname to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %namelen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %2, i32 0, i32 1
  %3 = load i32, i32* %size, align 4, !tbaa !204
  %add = add i32 %3, 1
  store i32 %add, i32* %namelen, align 4, !tbaa !13
  %4 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %5, i32 0, i32 1
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !153
  store %struct.gs_memory_s* %6, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %7 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %size1 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %7, i32 0, i32 1
  %8 = load i32, i32* %size1, align 4, !tbaa !204
  %cmp = icmp ne i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end.8

if.then:                                          ; preds = %entry
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %9, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %10 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !30
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %12 = load i32, i32* %namelen, align 4, !tbaa !13
  %call = call i8* %10(%struct.gs_memory_s* %11, i32 %12, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.61, i32 0, i32 0)) #5
  store i8* %call, i8** %pname, align 8, !tbaa !1
  %13 = load i8*, i8** %pname, align 8, !tbaa !1
  %cmp2 = icmp eq i8* %13, null
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %call4 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gs_seticcdirectory, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 2587, i32 1, i32 -1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.62, i32 0, i32 0)) #5
  store i32 %call4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %14 = load i8*, i8** %pname, align 8, !tbaa !1
  %15 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %15, i32 0, i32 0
  %16 = load i8*, i8** %data, align 8, !tbaa !201
  %17 = load i32, i32* %namelen, align 4, !tbaa !13
  %sub = sub nsw i32 %17, 1
  %conv = sext i32 %sub to i64
  %call5 = call i8* @memcpy(i8* %14, i8* %16, i64 %conv) #6
  %18 = load i32, i32* %namelen, align 4, !tbaa !13
  %sub6 = sub nsw i32 %18, 1
  %idxprom = sext i32 %sub6 to i64
  %19 = load i8*, i8** %pname, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %19, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1, !tbaa !5
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %21 = load i8*, i8** %pname, align 8, !tbaa !1
  %22 = load i32, i32* %namelen, align 4, !tbaa !13
  call void @gs_lib_ctx_set_icc_directory(%struct.gs_memory_s* %20, i8* %21, i32 %22) #5
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs7 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %23, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs7, i32 0, i32 2
  %24 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !31
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %26 = load i8*, i8** %pname, align 8, !tbaa !1
  call void %24(%struct.gs_memory_s* %25, i8* %26, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.61, i32 0, i32 0)) #5
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.8, %if.then.3
  %27 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  %28 = bitcast i32* %namelen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  %29 = bitcast i8** %pname to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  %30 = load i32, i32* %retval
  ret i32 %30
}

declare void @gs_lib_ctx_set_icc_directory(%struct.gs_memory_s*, i8*, i32) #2

; Function Attrs: nounwind uwtable
define void @gs_currentsrcgtagicc(%struct.gs_state_s* %pgs, %struct.gs_param_string_s* %pval) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pval.addr = alloca %struct.gs_param_string_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pval, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %icc_manager = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 35
  %1 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !157
  %srcgtag_profile = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %1, i32 0, i32 9
  %2 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag_profile, align 8, !tbaa !71
  %cmp = icmp eq %struct.cmm_srcgtag_profile_s* %2, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %3, i32 0, i32 0
  store i8* null, i8** %data, align 8, !tbaa !201
  %4 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %4, i32 0, i32 1
  store i32 0, i32* %size, align 4, !tbaa !204
  %5 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %persistent = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %5, i32 0, i32 2
  store i32 1, i32* %persistent, align 4, !tbaa !203
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %icc_manager1 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %6, i32 0, i32 35
  %7 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager1, align 8, !tbaa !157
  %srcgtag_profile2 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %7, i32 0, i32 9
  %8 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag_profile2, align 8, !tbaa !71
  %name = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %8, i32 0, i32 7
  %9 = load i8*, i8** %name, align 8, !tbaa !79
  %10 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %data3 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %10, i32 0, i32 0
  store i8* %9, i8** %data3, align 8, !tbaa !201
  %11 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %data4 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %11, i32 0, i32 0
  %12 = load i8*, i8** %data4, align 8, !tbaa !201
  %call = call i64 @strlen(i8* %12) #7
  %conv = trunc i64 %call to i32
  %13 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %size5 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %13, i32 0, i32 1
  store i32 %conv, i32* %size5, align 4, !tbaa !204
  %14 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %persistent6 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %14, i32 0, i32 2
  store i32 0, i32* %persistent6, align 4, !tbaa !203
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gs_setsrcgtagicc(%struct.gs_state_s* %pgs, %struct.gs_param_string_s* %pval) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pval.addr = alloca %struct.gs_param_string_s*, align 8
  %code = alloca i32, align 4
  %pname = alloca i8*, align 8
  %namelen = alloca i32, align 4
  %mem = alloca %struct.gs_memory_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pval, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i8** %pname to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32* %namelen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %3, i32 0, i32 1
  %4 = load i32, i32* %size, align 4, !tbaa !204
  %add = add i32 %4, 1
  store i32 %add, i32* %namelen, align 4, !tbaa !13
  %5 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %6, i32 0, i32 1
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !153
  store %struct.gs_memory_s* %7, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %8 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %size1 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %8, i32 0, i32 1
  %9 = load i32, i32* %size1, align 4, !tbaa !204
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %10, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %11 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !30
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %13 = load i32, i32* %namelen, align 4, !tbaa !13
  %call = call i8* %11(%struct.gs_memory_s* %12, i32 %13, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.63, i32 0, i32 0)) #5
  store i8* %call, i8** %pname, align 8, !tbaa !1
  %14 = load i8*, i8** %pname, align 8, !tbaa !1
  %cmp2 = icmp eq i8* %14, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %15 = load i8*, i8** %pname, align 8, !tbaa !1
  %16 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %16, i32 0, i32 0
  %17 = load i8*, i8** %data, align 8, !tbaa !201
  %18 = load i32, i32* %namelen, align 4, !tbaa !13
  %sub = sub nsw i32 %18, 1
  %conv = sext i32 %sub to i64
  %call5 = call i8* @memcpy(i8* %15, i8* %17, i64 %conv) #6
  %19 = load i32, i32* %namelen, align 4, !tbaa !13
  %sub6 = sub nsw i32 %19, 1
  %idxprom = sext i32 %sub6 to i64
  %20 = load i8*, i8** %pname, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %20, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1, !tbaa !5
  %21 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %icc_manager = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %21, i32 0, i32 35
  %22 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !157
  %23 = load i8*, i8** %pname, align 8, !tbaa !1
  %24 = load i32, i32* %namelen, align 4, !tbaa !13
  %call7 = call i32 @gsicc_set_srcgtag_struct(%struct.gsicc_manager_s* %22, i8* %23, i32 %24) #5
  store i32 %call7, i32* %code, align 4, !tbaa !13
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs8 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %25, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs8, i32 0, i32 2
  %26 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !31
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %28 = load i8*, i8** %pname, align 8, !tbaa !1
  call void %26(%struct.gs_memory_s* %27, i8* %28, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.63, i32 0, i32 0)) #5
  %29 = load i32, i32* %code, align 4, !tbaa !13
  %cmp9 = icmp slt i32 %29, 0
  br i1 %cmp9, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.end.4
  %30 = load i32, i32* %code, align 4, !tbaa !13
  %call12 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.gs_setsrcgtagicc, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 2628, i32 1, i32 %30, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.64, i32 0, i32 0)) #5
  store i32 %call12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.13:                                        ; preds = %if.end.4
  %31 = load i32, i32* %code, align 4, !tbaa !13
  store i32 %31, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.13, %if.then.11, %if.then.3, %if.then
  %32 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  %33 = bitcast i32* %namelen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  %34 = bitcast i8** %pname to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  %35 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %36 = load i32, i32* %retval
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define void @gs_currentdefaultrgbicc(%struct.gs_state_s* %pgs, %struct.gs_param_string_s* %pval) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pval.addr = alloca %struct.gs_param_string_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pval, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %icc_manager = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 35
  %1 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !157
  %default_rgb = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %1, i32 0, i32 2
  %2 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %default_rgb, align 8, !tbaa !162
  %cmp = icmp eq %struct.cmm_profile_s* %2, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** @gs_currentdefaultrgbicc.rfs, align 8, !tbaa !1
  %4 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %4, i32 0, i32 0
  store i8* %3, i8** %data, align 8, !tbaa !201
  %5 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %persistent = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %5, i32 0, i32 2
  store i32 1, i32* %persistent, align 4, !tbaa !203
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %icc_manager1 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %6, i32 0, i32 35
  %7 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager1, align 8, !tbaa !157
  %default_rgb2 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %7, i32 0, i32 2
  %8 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %default_rgb2, align 8, !tbaa !162
  %name = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %8, i32 0, i32 20
  %9 = load i8*, i8** %name, align 8, !tbaa !33
  %10 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %data3 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %10, i32 0, i32 0
  store i8* %9, i8** %data3, align 8, !tbaa !201
  %11 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %persistent4 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %11, i32 0, i32 2
  store i32 0, i32* %persistent4, align 4, !tbaa !203
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %12 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %data5 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %12, i32 0, i32 0
  %13 = load i8*, i8** %data5, align 8, !tbaa !201
  %call = call i64 @strlen(i8* %13) #7
  %conv = trunc i64 %call to i32
  %14 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %14, i32 0, i32 1
  store i32 %conv, i32* %size, align 4, !tbaa !204
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gs_setdefaultrgbicc(%struct.gs_state_s* %pgs, %struct.gs_param_string_s* %pval) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pval.addr = alloca %struct.gs_param_string_s*, align 8
  %code = alloca i32, align 4
  %pname = alloca i8*, align 8
  %namelen = alloca i32, align 4
  %mem = alloca %struct.gs_memory_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pval, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i8** %pname to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32* %namelen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %3, i32 0, i32 1
  %4 = load i32, i32* %size, align 4, !tbaa !204
  %add = add i32 %4, 1
  store i32 %add, i32* %namelen, align 4, !tbaa !13
  %5 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %6, i32 0, i32 1
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !153
  store %struct.gs_memory_s* %7, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %8, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %9 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !30
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %11 = load i32, i32* %namelen, align 4, !tbaa !13
  %call = call i8* %9(%struct.gs_memory_s* %10, i32 %11, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.65, i32 0, i32 0)) #5
  store i8* %call, i8** %pname, align 8, !tbaa !1
  %12 = load i8*, i8** %pname, align 8, !tbaa !1
  %cmp = icmp eq i8* %12, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %13 = load i8*, i8** %pname, align 8, !tbaa !1
  %14 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %14, i32 0, i32 0
  %15 = load i8*, i8** %data, align 8, !tbaa !201
  %16 = load i32, i32* %namelen, align 4, !tbaa !13
  %sub = sub nsw i32 %16, 1
  %conv = sext i32 %sub to i64
  %call1 = call i8* @memcpy(i8* %13, i8* %15, i64 %conv) #6
  %17 = load i32, i32* %namelen, align 4, !tbaa !13
  %sub2 = sub nsw i32 %17, 1
  %idxprom = sext i32 %sub2 to i64
  %18 = load i8*, i8** %pname, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %18, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1, !tbaa !5
  %19 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %icc_manager = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %19, i32 0, i32 35
  %20 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !157
  %21 = load i8*, i8** %pname, align 8, !tbaa !1
  %22 = load i32, i32* %namelen, align 4, !tbaa !13
  %call3 = call i32 @gsicc_set_profile(%struct.gsicc_manager_s* %20, i8* %21, i32 %22, i32 2) #5
  store i32 %call3, i32* %code, align 4, !tbaa !13
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs4 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %23, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs4, i32 0, i32 2
  %24 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !31
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %26 = load i8*, i8** %pname, align 8, !tbaa !1
  call void %24(%struct.gs_memory_s* %25, i8* %26, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.65, i32 0, i32 0)) #5
  %27 = load i32, i32* %code, align 4, !tbaa !13
  %cmp5 = icmp slt i32 %27, 0
  br i1 %cmp5, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end
  %28 = load i32, i32* %code, align 4, !tbaa !13
  %call8 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gs_setdefaultrgbicc, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 2666, i32 1, i32 %28, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.66, i32 0, i32 0)) #5
  store i32 %call8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.end
  %29 = load i32, i32* %code, align 4, !tbaa !13
  store i32 %29, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.9, %if.then.7, %if.then
  %30 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #1
  %31 = bitcast i32* %namelen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  %32 = bitcast i8** %pname to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  %33 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  %34 = load i32, i32* %retval
  ret i32 %34
}

; Function Attrs: nounwind uwtable
define void @gs_currentnamedicc(%struct.gs_state_s* %pgs, %struct.gs_param_string_s* %pval) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pval.addr = alloca %struct.gs_param_string_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pval, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %icc_manager = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 35
  %1 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !157
  %device_named = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %1, i32 0, i32 0
  %2 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %device_named, align 8, !tbaa !169
  %cmp = icmp eq %struct.cmm_profile_s* %2, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** @gs_currentnamedicc.rfs, align 8, !tbaa !1
  %4 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %4, i32 0, i32 0
  store i8* %3, i8** %data, align 8, !tbaa !201
  %5 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %persistent = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %5, i32 0, i32 2
  store i32 1, i32* %persistent, align 4, !tbaa !203
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %icc_manager1 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %6, i32 0, i32 35
  %7 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager1, align 8, !tbaa !157
  %device_named2 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %7, i32 0, i32 0
  %8 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %device_named2, align 8, !tbaa !169
  %name = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %8, i32 0, i32 20
  %9 = load i8*, i8** %name, align 8, !tbaa !33
  %10 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %data3 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %10, i32 0, i32 0
  store i8* %9, i8** %data3, align 8, !tbaa !201
  %11 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %persistent4 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %11, i32 0, i32 2
  store i32 0, i32* %persistent4, align 4, !tbaa !203
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %12 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %data5 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %12, i32 0, i32 0
  %13 = load i8*, i8** %data5, align 8, !tbaa !201
  %call = call i64 @strlen(i8* %13) #7
  %conv = trunc i64 %call to i32
  %14 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %14, i32 0, i32 1
  store i32 %conv, i32* %size, align 4, !tbaa !204
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gs_setnamedprofileicc(%struct.gs_state_s* %pgs, %struct.gs_param_string_s* %pval) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pval.addr = alloca %struct.gs_param_string_s*, align 8
  %code = alloca i32, align 4
  %pname = alloca i8*, align 8
  %namelen = alloca i32, align 4
  %mem = alloca %struct.gs_memory_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pval, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i8** %pname to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32* %namelen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %3, i32 0, i32 1
  %4 = load i32, i32* %size, align 4, !tbaa !204
  %add = add i32 %4, 1
  store i32 %add, i32* %namelen, align 4, !tbaa !13
  %5 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %6, i32 0, i32 1
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !153
  store %struct.gs_memory_s* %7, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %8 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %size1 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %8, i32 0, i32 1
  %9 = load i32, i32* %size1, align 4, !tbaa !204
  %cmp = icmp ne i32 %9, 0
  br i1 %cmp, label %if.then, label %if.end.13

if.then:                                          ; preds = %entry
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %10, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %11 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !30
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %13 = load i32, i32* %namelen, align 4, !tbaa !13
  %call = call i8* %11(%struct.gs_memory_s* %12, i32 %13, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.67, i32 0, i32 0)) #5
  store i8* %call, i8** %pname, align 8, !tbaa !1
  %14 = load i8*, i8** %pname, align 8, !tbaa !1
  %cmp2 = icmp eq i8* %14, null
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %15 = load i8*, i8** %pname, align 8, !tbaa !1
  %16 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %16, i32 0, i32 0
  %17 = load i8*, i8** %data, align 8, !tbaa !201
  %18 = load i32, i32* %namelen, align 4, !tbaa !13
  %sub = sub nsw i32 %18, 1
  %conv = sext i32 %sub to i64
  %call4 = call i8* @memcpy(i8* %15, i8* %17, i64 %conv) #6
  %19 = load i32, i32* %namelen, align 4, !tbaa !13
  %sub5 = sub nsw i32 %19, 1
  %idxprom = sext i32 %sub5 to i64
  %20 = load i8*, i8** %pname, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %20, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1, !tbaa !5
  %21 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %icc_manager = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %21, i32 0, i32 35
  %22 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !157
  %23 = load i8*, i8** %pname, align 8, !tbaa !1
  %24 = load i32, i32* %namelen, align 4, !tbaa !13
  %call6 = call i32 @gsicc_set_profile(%struct.gsicc_manager_s* %22, i8* %23, i32 %24, i32 4) #5
  store i32 %call6, i32* %code, align 4, !tbaa !13
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs7 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %25, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs7, i32 0, i32 2
  %26 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !31
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %28 = load i8*, i8** %pname, align 8, !tbaa !1
  call void %26(%struct.gs_memory_s* %27, i8* %28, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.67, i32 0, i32 0)) #5
  %29 = load i32, i32* %code, align 4, !tbaa !13
  %cmp8 = icmp slt i32 %29, 0
  br i1 %cmp8, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end
  %30 = load i32, i32* %code, align 4, !tbaa !13
  %call11 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gs_setnamedprofileicc, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 2706, i32 1, i32 %30, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.68, i32 0, i32 0)) #5
  store i32 %call11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.end
  %31 = load i32, i32* %code, align 4, !tbaa !13
  store i32 %31, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.13:                                        ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.13, %if.end.12, %if.then.10, %if.then.3
  %32 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  %33 = bitcast i32* %namelen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  %34 = bitcast i8** %pname to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  %35 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %36 = load i32, i32* %retval
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define void @gs_currentdefaultcmykicc(%struct.gs_state_s* %pgs, %struct.gs_param_string_s* %pval) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pval.addr = alloca %struct.gs_param_string_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pval, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %icc_manager = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 35
  %1 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !157
  %default_cmyk = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %1, i32 0, i32 3
  %2 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %default_cmyk, align 8, !tbaa !163
  %cmp = icmp eq %struct.cmm_profile_s* %2, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** @gs_currentdefaultcmykicc.rfs, align 8, !tbaa !1
  %4 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %4, i32 0, i32 0
  store i8* %3, i8** %data, align 8, !tbaa !201
  %5 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %persistent = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %5, i32 0, i32 2
  store i32 1, i32* %persistent, align 4, !tbaa !203
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %icc_manager1 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %6, i32 0, i32 35
  %7 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager1, align 8, !tbaa !157
  %default_cmyk2 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %7, i32 0, i32 3
  %8 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %default_cmyk2, align 8, !tbaa !163
  %name = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %8, i32 0, i32 20
  %9 = load i8*, i8** %name, align 8, !tbaa !33
  %10 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %data3 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %10, i32 0, i32 0
  store i8* %9, i8** %data3, align 8, !tbaa !201
  %11 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %persistent4 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %11, i32 0, i32 2
  store i32 0, i32* %persistent4, align 4, !tbaa !203
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %12 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %data5 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %12, i32 0, i32 0
  %13 = load i8*, i8** %data5, align 8, !tbaa !201
  %call = call i64 @strlen(i8* %13) #7
  %conv = trunc i64 %call to i32
  %14 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %14, i32 0, i32 1
  store i32 %conv, i32* %size, align 4, !tbaa !204
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gs_setdefaultcmykicc(%struct.gs_state_s* %pgs, %struct.gs_param_string_s* %pval) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pval.addr = alloca %struct.gs_param_string_s*, align 8
  %code = alloca i32, align 4
  %pname = alloca i8*, align 8
  %namelen = alloca i32, align 4
  %mem = alloca %struct.gs_memory_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pval, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i8** %pname to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32* %namelen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %3, i32 0, i32 1
  %4 = load i32, i32* %size, align 4, !tbaa !204
  %add = add i32 %4, 1
  store i32 %add, i32* %namelen, align 4, !tbaa !13
  %5 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %6, i32 0, i32 1
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !153
  store %struct.gs_memory_s* %7, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %8, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %9 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !30
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %11 = load i32, i32* %namelen, align 4, !tbaa !13
  %call = call i8* %9(%struct.gs_memory_s* %10, i32 %11, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.69, i32 0, i32 0)) #5
  store i8* %call, i8** %pname, align 8, !tbaa !1
  %12 = load i8*, i8** %pname, align 8, !tbaa !1
  %cmp = icmp eq i8* %12, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %13 = load i8*, i8** %pname, align 8, !tbaa !1
  %14 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %14, i32 0, i32 0
  %15 = load i8*, i8** %data, align 8, !tbaa !201
  %16 = load i32, i32* %namelen, align 4, !tbaa !13
  %sub = sub nsw i32 %16, 1
  %conv = sext i32 %sub to i64
  %call1 = call i8* @memcpy(i8* %13, i8* %15, i64 %conv) #6
  %17 = load i32, i32* %namelen, align 4, !tbaa !13
  %sub2 = sub nsw i32 %17, 1
  %idxprom = sext i32 %sub2 to i64
  %18 = load i8*, i8** %pname, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %18, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1, !tbaa !5
  %19 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %icc_manager = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %19, i32 0, i32 35
  %20 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !157
  %21 = load i8*, i8** %pname, align 8, !tbaa !1
  %22 = load i32, i32* %namelen, align 4, !tbaa !13
  %call3 = call i32 @gsicc_set_profile(%struct.gsicc_manager_s* %20, i8* %21, i32 %22, i32 3) #5
  store i32 %call3, i32* %code, align 4, !tbaa !13
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs4 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %23, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs4, i32 0, i32 2
  %24 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !31
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %26 = load i8*, i8** %pname, align 8, !tbaa !1
  call void %24(%struct.gs_memory_s* %25, i8* %26, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.69, i32 0, i32 0)) #5
  %27 = load i32, i32* %code, align 4, !tbaa !13
  %cmp5 = icmp slt i32 %27, 0
  br i1 %cmp5, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end
  %28 = load i32, i32* %code, align 4, !tbaa !13
  %call8 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gs_setdefaultcmykicc, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 2746, i32 0, i32 %28, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.70, i32 0, i32 0)) #5
  store i32 %call8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.end
  %29 = load i32, i32* %code, align 4, !tbaa !13
  store i32 %29, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.9, %if.then.7, %if.then
  %30 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #1
  %31 = bitcast i32* %namelen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  %32 = bitcast i8** %pname to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  %33 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  %34 = load i32, i32* %retval
  ret i32 %34
}

; Function Attrs: nounwind uwtable
define void @gs_currentlabicc(%struct.gs_state_s* %pgs, %struct.gs_param_string_s* %pval) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pval.addr = alloca %struct.gs_param_string_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pval, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %icc_manager = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 35
  %1 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !157
  %lab_profile = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %1, i32 0, i32 4
  %2 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %lab_profile, align 8, !tbaa !167
  %cmp = icmp eq %struct.cmm_profile_s* %2, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load i8*, i8** @gs_currentlabicc.rfs, align 8, !tbaa !1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %icc_manager1 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %4, i32 0, i32 35
  %5 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager1, align 8, !tbaa !157
  %lab_profile2 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %5, i32 0, i32 4
  %6 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %lab_profile2, align 8, !tbaa !167
  %name = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %6, i32 0, i32 20
  %7 = load i8*, i8** %name, align 8, !tbaa !33
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %3, %cond.true ], [ %7, %cond.false ]
  %8 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %8, i32 0, i32 0
  store i8* %cond, i8** %data, align 8, !tbaa !201
  %9 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %data3 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %9, i32 0, i32 0
  %10 = load i8*, i8** %data3, align 8, !tbaa !201
  %call = call i64 @strlen(i8* %10) #7
  %conv = trunc i64 %call to i32
  %11 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %11, i32 0, i32 1
  store i32 %conv, i32* %size, align 4, !tbaa !204
  %12 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %persistent = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %12, i32 0, i32 2
  store i32 1, i32* %persistent, align 4, !tbaa !203
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gs_setlabicc(%struct.gs_state_s* %pgs, %struct.gs_param_string_s* %pval) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pval.addr = alloca %struct.gs_param_string_s*, align 8
  %code = alloca i32, align 4
  %pname = alloca i8*, align 8
  %namelen = alloca i32, align 4
  %mem = alloca %struct.gs_memory_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pval, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i8** %pname to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32* %namelen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %3, i32 0, i32 1
  %4 = load i32, i32* %size, align 4, !tbaa !204
  %add = add i32 %4, 1
  store i32 %add, i32* %namelen, align 4, !tbaa !13
  %5 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %6, i32 0, i32 1
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !153
  store %struct.gs_memory_s* %7, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %8, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %9 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !30
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %11 = load i32, i32* %namelen, align 4, !tbaa !13
  %call = call i8* %9(%struct.gs_memory_s* %10, i32 %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.72, i32 0, i32 0)) #5
  store i8* %call, i8** %pname, align 8, !tbaa !1
  %12 = load i8*, i8** %pname, align 8, !tbaa !1
  %cmp = icmp eq i8* %12, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %13 = load i8*, i8** %pname, align 8, !tbaa !1
  %14 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %14, i32 0, i32 0
  %15 = load i8*, i8** %data, align 8, !tbaa !201
  %16 = load i32, i32* %namelen, align 4, !tbaa !13
  %sub = sub nsw i32 %16, 1
  %conv = sext i32 %sub to i64
  %call1 = call i8* @memcpy(i8* %13, i8* %15, i64 %conv) #6
  %17 = load i32, i32* %namelen, align 4, !tbaa !13
  %sub2 = sub nsw i32 %17, 1
  %idxprom = sext i32 %sub2 to i64
  %18 = load i8*, i8** %pname, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %18, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1, !tbaa !5
  %19 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %icc_manager = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %19, i32 0, i32 35
  %20 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !157
  %21 = load i8*, i8** %pname, align 8, !tbaa !1
  %22 = load i32, i32* %namelen, align 4, !tbaa !13
  %call3 = call i32 @gsicc_set_profile(%struct.gsicc_manager_s* %20, i8* %21, i32 %22, i32 5) #5
  store i32 %call3, i32* %code, align 4, !tbaa !13
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs4 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %23, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs4, i32 0, i32 2
  %24 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !31
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %26 = load i8*, i8** %pname, align 8, !tbaa !1
  call void %24(%struct.gs_memory_s* %25, i8* %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.72, i32 0, i32 0)) #5
  %27 = load i32, i32* %code, align 4, !tbaa !13
  %cmp5 = icmp slt i32 %27, 0
  br i1 %cmp5, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end
  %28 = load i32, i32* %code, align 4, !tbaa !13
  %call8 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.gs_setlabicc, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 2780, i32 0, i32 %28, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.73, i32 0, i32 0)) #5
  store i32 %call8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.end
  %29 = load i32, i32* %code, align 4, !tbaa !13
  store i32 %29, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.9, %if.then.7, %if.then
  %30 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #1
  %31 = bitcast i32* %namelen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  %32 = bitcast i8** %pname to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  %33 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  %34 = load i32, i32* %retval
  ret i32 %34
}

declare i32 @gscms_is_device_link(i8*) #2

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #4

declare %struct.gs_ptr_procs_s* @basic_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #2

declare void @basic_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #2

; Function Attrs: nounwind uwtable
define internal %struct.gsicc_namelist_s* @gsicc_get_spotnames(i8* %profile, %struct.gs_memory_s* %memory) #0 {
entry:
  %retval = alloca %struct.gsicc_namelist_s*, align 8
  %profile.addr = alloca i8*, align 8
  %memory.addr = alloca %struct.gs_memory_s*, align 8
  %k = alloca i32, align 4
  %list = alloca %struct.gsicc_namelist_s*, align 8
  %name = alloca %struct.gsicc_colorname_s*, align 8
  %curr_entry = alloca %struct.gsicc_colorname_s**, align 8
  %num_colors = alloca i32, align 4
  %clr_name = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %profile, i8** %profile.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %memory, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %0 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.gsicc_namelist_s** %list to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast %struct.gsicc_colorname_s** %name to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast %struct.gsicc_colorname_s*** %curr_entry to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %num_colors to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i8** %clr_name to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load i8*, i8** %profile.addr, align 8, !tbaa !1
  %call = call i32 @gscms_get_numberclrtnames(i8* %6) #5
  store i32 %call, i32* %num_colors, align 4, !tbaa !13
  %7 = load i32, i32* %num_colors, align 4, !tbaa !13
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.gsicc_namelist_s* null, %struct.gsicc_namelist_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %call1 = call %struct.gsicc_namelist_s* @gsicc_new_namelist(%struct.gs_memory_s* %8) #5
  store %struct.gsicc_namelist_s* %call1, %struct.gsicc_namelist_s** %list, align 8, !tbaa !1
  %9 = load %struct.gsicc_namelist_s*, %struct.gsicc_namelist_s** %list, align 8, !tbaa !1
  %cmp2 = icmp eq %struct.gsicc_namelist_s* %9, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store %struct.gsicc_namelist_s* null, %struct.gsicc_namelist_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %10 = load %struct.gsicc_namelist_s*, %struct.gsicc_namelist_s** %list, align 8, !tbaa !1
  %head = getelementptr inbounds %struct.gsicc_namelist_s, %struct.gsicc_namelist_s* %10, i32 0, i32 1
  store %struct.gsicc_colorname_s** %head, %struct.gsicc_colorname_s*** %curr_entry, align 8, !tbaa !1
  %11 = load i32, i32* %num_colors, align 4, !tbaa !13
  %12 = load %struct.gsicc_namelist_s*, %struct.gsicc_namelist_s** %list, align 8, !tbaa !1
  %count = getelementptr inbounds %struct.gsicc_namelist_s, %struct.gsicc_namelist_s* %12, i32 0, i32 0
  store i32 %11, i32* %count, align 4, !tbaa !143
  store i32 0, i32* %k, align 4, !tbaa !13
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.4
  %13 = load i32, i32* %k, align 4, !tbaa !13
  %14 = load i32, i32* %num_colors, align 4, !tbaa !13
  %cmp5 = icmp slt i32 %13, %14
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i8*, i8** %profile.addr, align 8, !tbaa !1
  %16 = load i32, i32* %k, align 4, !tbaa !13
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %call6 = call i8* @gscms_get_clrtname(i8* %15, i32 %16, %struct.gs_memory_s* %17) #5
  store i8* %call6, i8** %clr_name, align 8, !tbaa !1
  %18 = load i8*, i8** %clr_name, align 8, !tbaa !1
  %cmp7 = icmp eq i8* %18, null
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %for.body
  br label %for.end

if.end.9:                                         ; preds = %for.body
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %call10 = call %struct.gsicc_colorname_s* @gsicc_new_colorname(%struct.gs_memory_s* %19) #5
  store %struct.gsicc_colorname_s* %call10, %struct.gsicc_colorname_s** %name, align 8, !tbaa !1
  %20 = load %struct.gsicc_colorname_s*, %struct.gsicc_colorname_s** %name, align 8, !tbaa !1
  %cmp11 = icmp eq %struct.gsicc_colorname_s* %20, null
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.9
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %21, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %22 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !31
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %24 = load i8*, i8** %clr_name, align 8, !tbaa !1
  call void %22(%struct.gs_memory_s* %23, i8* %24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.79, i32 0, i32 0)) #5
  br label %for.end

if.end.13:                                        ; preds = %if.end.9
  %25 = load i8*, i8** %clr_name, align 8, !tbaa !1
  %26 = load %struct.gsicc_colorname_s*, %struct.gsicc_colorname_s** %name, align 8, !tbaa !1
  %name14 = getelementptr inbounds %struct.gsicc_colorname_s, %struct.gsicc_colorname_s* %26, i32 0, i32 0
  store i8* %25, i8** %name14, align 8, !tbaa !67
  %27 = load i8*, i8** %clr_name, align 8, !tbaa !1
  %call15 = call i64 @strlen(i8* %27) #7
  %conv = trunc i64 %call15 to i32
  %28 = load %struct.gsicc_colorname_s*, %struct.gsicc_colorname_s** %name, align 8, !tbaa !1
  %length = getelementptr inbounds %struct.gsicc_colorname_s, %struct.gsicc_colorname_s* %28, i32 0, i32 1
  store i32 %conv, i32* %length, align 4, !tbaa !142
  %29 = load %struct.gsicc_colorname_s*, %struct.gsicc_colorname_s** %name, align 8, !tbaa !1
  %30 = load %struct.gsicc_colorname_s**, %struct.gsicc_colorname_s*** %curr_entry, align 8, !tbaa !1
  store %struct.gsicc_colorname_s* %29, %struct.gsicc_colorname_s** %30, align 8, !tbaa !1
  %31 = load %struct.gsicc_colorname_s*, %struct.gsicc_colorname_s** %name, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.gsicc_colorname_s, %struct.gsicc_colorname_s* %31, i32 0, i32 2
  store %struct.gsicc_colorname_s** %next, %struct.gsicc_colorname_s*** %curr_entry, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %if.end.13
  %32 = load i32, i32* %k, align 4, !tbaa !13
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %k, align 4, !tbaa !13
  br label %for.cond

for.end:                                          ; preds = %if.then.12, %if.then.8, %for.cond
  %33 = load i32, i32* %k, align 4, !tbaa !13
  %34 = load i32, i32* %num_colors, align 4, !tbaa !13
  %cmp16 = icmp slt i32 %33, %34
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %for.end
  %35 = load %struct.gsicc_namelist_s*, %struct.gsicc_namelist_s** %list, align 8, !tbaa !1
  %36 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  call void @gsicc_free_spotnames(%struct.gsicc_namelist_s* %35, %struct.gs_memory_s* %36) #5
  store %struct.gsicc_namelist_s* null, %struct.gsicc_namelist_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.19:                                        ; preds = %for.end
  %37 = load %struct.gsicc_namelist_s*, %struct.gsicc_namelist_s** %list, align 8, !tbaa !1
  store %struct.gsicc_namelist_s* %37, %struct.gsicc_namelist_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.19, %if.then.18, %if.then.3, %if.then
  %38 = bitcast i8** %clr_name to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #1
  %39 = bitcast i32* %num_colors to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  %40 = bitcast %struct.gsicc_colorname_s*** %curr_entry to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  %41 = bitcast %struct.gsicc_colorname_s** %name to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  %42 = bitcast %struct.gsicc_namelist_s** %list to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  %43 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #1
  %44 = load %struct.gsicc_namelist_s*, %struct.gsicc_namelist_s** %retval
  ret %struct.gsicc_namelist_s* %44
}

declare i32 @gscms_get_numberclrtnames(i8*) #2

declare i8* @gscms_get_clrtname(i8*, i32, %struct.gs_memory_s*) #2

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #4

declare %struct.stream_s* @sfopen(i8*, i8*, %struct.gs_memory_s*) #2

; Function Attrs: nounwind uwtable
define internal void @rc_free_srcgtag_profile(%struct.gs_memory_s* %mem, i8* %ptr_in, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %ptr_in.addr = alloca i8*, align 8
  %cname.addr = alloca i8*, align 8
  %srcgtag_profile = alloca %struct.cmm_srcgtag_profile_s*, align 8
  %k = alloca i32, align 4
  %mem_nongc = alloca %struct.gs_memory_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %ptr_in, i8** %ptr_in.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cmm_srcgtag_profile_s** %srcgtag_profile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %ptr_in.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.cmm_srcgtag_profile_s*
  store %struct.cmm_srcgtag_profile_s* %2, %struct.cmm_srcgtag_profile_s** %srcgtag_profile, align 8, !tbaa !1
  %3 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast %struct.gs_memory_s** %mem_nongc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag_profile, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %5, i32 0, i32 5
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !80
  store %struct.gs_memory_s* %6, %struct.gs_memory_s** %mem_nongc, align 8, !tbaa !1
  %7 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag_profile, align 8, !tbaa !1
  %rc = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %7, i32 0, i32 8
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %8 = load i64, i64* %ref_count, align 8, !tbaa !73
  %cmp = icmp sle i64 %8, 1
  br i1 %cmp, label %if.then, label %if.end.158

if.then:                                          ; preds = %entry
  store i32 0, i32* %k, align 4, !tbaa !13
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %9 = load i32, i32* %k, align 4, !tbaa !13
  %cmp1 = icmp slt i32 %9, 3
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %k, align 4, !tbaa !13
  %idxprom = sext i32 %10 to i64
  %11 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag_profile, align 8, !tbaa !1
  %rgb_profiles = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %11, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x %struct.cmm_profile_s*], [3 x %struct.cmm_profile_s*]* %rgb_profiles, i32 0, i64 %idxprom
  %12 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %arrayidx, align 8, !tbaa !1
  %cmp2 = icmp ne %struct.cmm_profile_s* %12, null
  br i1 %cmp2, label %if.then.3, label %if.end.51

if.then.3:                                        ; preds = %for.body
  br label %do.body

do.body:                                          ; preds = %if.then.3
  %13 = load i32, i32* %k, align 4, !tbaa !13
  %idxprom4 = sext i32 %13 to i64
  %14 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag_profile, align 8, !tbaa !1
  %rgb_profiles5 = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %14, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [3 x %struct.cmm_profile_s*], [3 x %struct.cmm_profile_s*]* %rgb_profiles5, i32 0, i64 %idxprom4
  %15 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %arrayidx6, align 8, !tbaa !1
  %tobool = icmp ne %struct.cmm_profile_s* %15, null
  br i1 %tobool, label %if.then.7, label %if.end.48

if.then.7:                                        ; preds = %do.body
  br label %do.body.8

do.body.8:                                        ; preds = %if.then.7
  br label %do.body.9

do.body.9:                                        ; preds = %do.body.8
  br label %do.cond

do.cond:                                          ; preds = %do.body.9
  br label %do.end

do.end:                                           ; preds = %do.cond
  %16 = load i32, i32* %k, align 4, !tbaa !13
  %idxprom10 = sext i32 %16 to i64
  %17 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag_profile, align 8, !tbaa !1
  %rgb_profiles11 = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %17, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [3 x %struct.cmm_profile_s*], [3 x %struct.cmm_profile_s*]* %rgb_profiles11, i32 0, i64 %idxprom10
  %18 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %arrayidx12, align 8, !tbaa !1
  %rc13 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %18, i32 0, i32 18
  %ref_count14 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc13, i32 0, i32 0
  %19 = load i64, i64* %ref_count14, align 8, !tbaa !35
  %add = add nsw i64 %19, -1
  store i64 %add, i64* %ref_count14, align 8, !tbaa !35
  br label %do.cond.15

do.cond.15:                                       ; preds = %do.end
  br label %do.end.16

do.end.16:                                        ; preds = %do.cond.15
  %20 = load i32, i32* %k, align 4, !tbaa !13
  %idxprom17 = sext i32 %20 to i64
  %21 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag_profile, align 8, !tbaa !1
  %rgb_profiles18 = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %21, i32 0, i32 0
  %arrayidx19 = getelementptr inbounds [3 x %struct.cmm_profile_s*], [3 x %struct.cmm_profile_s*]* %rgb_profiles18, i32 0, i64 %idxprom17
  %22 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %arrayidx19, align 8, !tbaa !1
  %rc20 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %22, i32 0, i32 18
  %ref_count21 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc20, i32 0, i32 0
  %23 = load i64, i64* %ref_count21, align 8, !tbaa !35
  %tobool22 = icmp ne i64 %23, 0
  br i1 %tobool22, label %if.else, label %if.then.23

if.then.23:                                       ; preds = %do.end.16
  br label %do.body.24

do.body.24:                                       ; preds = %if.then.23
  br label %do.body.25

do.body.25:                                       ; preds = %do.body.24
  br label %do.cond.26

do.cond.26:                                       ; preds = %do.body.25
  br label %do.end.27

do.end.27:                                        ; preds = %do.cond.26
  %24 = load i32, i32* %k, align 4, !tbaa !13
  %idxprom28 = sext i32 %24 to i64
  %25 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag_profile, align 8, !tbaa !1
  %rgb_profiles29 = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %25, i32 0, i32 0
  %arrayidx30 = getelementptr inbounds [3 x %struct.cmm_profile_s*], [3 x %struct.cmm_profile_s*]* %rgb_profiles29, i32 0, i64 %idxprom28
  %26 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %arrayidx30, align 8, !tbaa !1
  %rc31 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %26, i32 0, i32 18
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc31, i32 0, i32 2
  %27 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !37
  %28 = load i32, i32* %k, align 4, !tbaa !13
  %idxprom32 = sext i32 %28 to i64
  %29 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag_profile, align 8, !tbaa !1
  %rgb_profiles33 = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %29, i32 0, i32 0
  %arrayidx34 = getelementptr inbounds [3 x %struct.cmm_profile_s*], [3 x %struct.cmm_profile_s*]* %rgb_profiles33, i32 0, i64 %idxprom32
  %30 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %arrayidx34, align 8, !tbaa !1
  %rc35 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %30, i32 0, i32 18
  %memory36 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc35, i32 0, i32 1
  %31 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory36, align 8, !tbaa !36
  %32 = load i32, i32* %k, align 4, !tbaa !13
  %idxprom37 = sext i32 %32 to i64
  %33 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag_profile, align 8, !tbaa !1
  %rgb_profiles38 = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %33, i32 0, i32 0
  %arrayidx39 = getelementptr inbounds [3 x %struct.cmm_profile_s*], [3 x %struct.cmm_profile_s*]* %rgb_profiles38, i32 0, i64 %idxprom37
  %34 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %arrayidx39, align 8, !tbaa !1
  %35 = bitcast %struct.cmm_profile_s* %34 to i8*
  call void %27(%struct.gs_memory_s* %31, i8* %35, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.84, i32 0, i32 0)) #5
  br label %do.cond.40

do.cond.40:                                       ; preds = %do.end.27
  br label %do.end.41

do.end.41:                                        ; preds = %do.cond.40
  %36 = load i32, i32* %k, align 4, !tbaa !13
  %idxprom42 = sext i32 %36 to i64
  %37 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag_profile, align 8, !tbaa !1
  %rgb_profiles43 = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %37, i32 0, i32 0
  %arrayidx44 = getelementptr inbounds [3 x %struct.cmm_profile_s*], [3 x %struct.cmm_profile_s*]* %rgb_profiles43, i32 0, i64 %idxprom42
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %arrayidx44, align 8, !tbaa !1
  br label %if.end

if.else:                                          ; preds = %do.end.16
  br label %do.body.45

do.body.45:                                       ; preds = %if.else
  br label %do.cond.46

do.cond.46:                                       ; preds = %do.body.45
  br label %do.end.47

do.end.47:                                        ; preds = %do.cond.46
  br label %if.end

if.end:                                           ; preds = %do.end.47, %do.end.41
  br label %if.end.48

if.end.48:                                        ; preds = %if.end, %do.body
  br label %do.cond.49

do.cond.49:                                       ; preds = %if.end.48
  br label %do.end.50

do.end.50:                                        ; preds = %do.cond.49
  br label %if.end.51

if.end.51:                                        ; preds = %do.end.50, %for.body
  %38 = load i32, i32* %k, align 4, !tbaa !13
  %idxprom52 = sext i32 %38 to i64
  %39 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag_profile, align 8, !tbaa !1
  %cmyk_profiles = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %39, i32 0, i32 2
  %arrayidx53 = getelementptr inbounds [3 x %struct.cmm_profile_s*], [3 x %struct.cmm_profile_s*]* %cmyk_profiles, i32 0, i64 %idxprom52
  %40 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %arrayidx53, align 8, !tbaa !1
  %cmp54 = icmp ne %struct.cmm_profile_s* %40, null
  br i1 %cmp54, label %if.then.55, label %if.end.111

if.then.55:                                       ; preds = %if.end.51
  br label %do.body.56

do.body.56:                                       ; preds = %if.then.55
  %41 = load i32, i32* %k, align 4, !tbaa !13
  %idxprom57 = sext i32 %41 to i64
  %42 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag_profile, align 8, !tbaa !1
  %cmyk_profiles58 = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %42, i32 0, i32 2
  %arrayidx59 = getelementptr inbounds [3 x %struct.cmm_profile_s*], [3 x %struct.cmm_profile_s*]* %cmyk_profiles58, i32 0, i64 %idxprom57
  %43 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %arrayidx59, align 8, !tbaa !1
  %tobool60 = icmp ne %struct.cmm_profile_s* %43, null
  br i1 %tobool60, label %if.then.61, label %if.end.108

if.then.61:                                       ; preds = %do.body.56
  br label %do.body.62

do.body.62:                                       ; preds = %if.then.61
  br label %do.body.63

do.body.63:                                       ; preds = %do.body.62
  br label %do.cond.64

do.cond.64:                                       ; preds = %do.body.63
  br label %do.end.65

do.end.65:                                        ; preds = %do.cond.64
  %44 = load i32, i32* %k, align 4, !tbaa !13
  %idxprom66 = sext i32 %44 to i64
  %45 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag_profile, align 8, !tbaa !1
  %cmyk_profiles67 = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %45, i32 0, i32 2
  %arrayidx68 = getelementptr inbounds [3 x %struct.cmm_profile_s*], [3 x %struct.cmm_profile_s*]* %cmyk_profiles67, i32 0, i64 %idxprom66
  %46 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %arrayidx68, align 8, !tbaa !1
  %rc69 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %46, i32 0, i32 18
  %ref_count70 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc69, i32 0, i32 0
  %47 = load i64, i64* %ref_count70, align 8, !tbaa !35
  %add71 = add nsw i64 %47, -1
  store i64 %add71, i64* %ref_count70, align 8, !tbaa !35
  br label %do.cond.72

do.cond.72:                                       ; preds = %do.end.65
  br label %do.end.73

do.end.73:                                        ; preds = %do.cond.72
  %48 = load i32, i32* %k, align 4, !tbaa !13
  %idxprom74 = sext i32 %48 to i64
  %49 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag_profile, align 8, !tbaa !1
  %cmyk_profiles75 = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %49, i32 0, i32 2
  %arrayidx76 = getelementptr inbounds [3 x %struct.cmm_profile_s*], [3 x %struct.cmm_profile_s*]* %cmyk_profiles75, i32 0, i64 %idxprom74
  %50 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %arrayidx76, align 8, !tbaa !1
  %rc77 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %50, i32 0, i32 18
  %ref_count78 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc77, i32 0, i32 0
  %51 = load i64, i64* %ref_count78, align 8, !tbaa !35
  %tobool79 = icmp ne i64 %51, 0
  br i1 %tobool79, label %if.else.103, label %if.then.80

if.then.80:                                       ; preds = %do.end.73
  br label %do.body.81

do.body.81:                                       ; preds = %if.then.80
  br label %do.body.82

do.body.82:                                       ; preds = %do.body.81
  br label %do.cond.83

do.cond.83:                                       ; preds = %do.body.82
  br label %do.end.84

do.end.84:                                        ; preds = %do.cond.83
  %52 = load i32, i32* %k, align 4, !tbaa !13
  %idxprom85 = sext i32 %52 to i64
  %53 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag_profile, align 8, !tbaa !1
  %cmyk_profiles86 = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %53, i32 0, i32 2
  %arrayidx87 = getelementptr inbounds [3 x %struct.cmm_profile_s*], [3 x %struct.cmm_profile_s*]* %cmyk_profiles86, i32 0, i64 %idxprom85
  %54 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %arrayidx87, align 8, !tbaa !1
  %rc88 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %54, i32 0, i32 18
  %free89 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc88, i32 0, i32 2
  %55 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free89, align 8, !tbaa !37
  %56 = load i32, i32* %k, align 4, !tbaa !13
  %idxprom90 = sext i32 %56 to i64
  %57 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag_profile, align 8, !tbaa !1
  %cmyk_profiles91 = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %57, i32 0, i32 2
  %arrayidx92 = getelementptr inbounds [3 x %struct.cmm_profile_s*], [3 x %struct.cmm_profile_s*]* %cmyk_profiles91, i32 0, i64 %idxprom90
  %58 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %arrayidx92, align 8, !tbaa !1
  %rc93 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %58, i32 0, i32 18
  %memory94 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc93, i32 0, i32 1
  %59 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory94, align 8, !tbaa !36
  %60 = load i32, i32* %k, align 4, !tbaa !13
  %idxprom95 = sext i32 %60 to i64
  %61 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag_profile, align 8, !tbaa !1
  %cmyk_profiles96 = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %61, i32 0, i32 2
  %arrayidx97 = getelementptr inbounds [3 x %struct.cmm_profile_s*], [3 x %struct.cmm_profile_s*]* %cmyk_profiles96, i32 0, i64 %idxprom95
  %62 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %arrayidx97, align 8, !tbaa !1
  %63 = bitcast %struct.cmm_profile_s* %62 to i8*
  call void %55(%struct.gs_memory_s* %59, i8* %63, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.84, i32 0, i32 0)) #5
  br label %do.cond.98

do.cond.98:                                       ; preds = %do.end.84
  br label %do.end.99

do.end.99:                                        ; preds = %do.cond.98
  %64 = load i32, i32* %k, align 4, !tbaa !13
  %idxprom100 = sext i32 %64 to i64
  %65 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag_profile, align 8, !tbaa !1
  %cmyk_profiles101 = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %65, i32 0, i32 2
  %arrayidx102 = getelementptr inbounds [3 x %struct.cmm_profile_s*], [3 x %struct.cmm_profile_s*]* %cmyk_profiles101, i32 0, i64 %idxprom100
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %arrayidx102, align 8, !tbaa !1
  br label %if.end.107

if.else.103:                                      ; preds = %do.end.73
  br label %do.body.104

do.body.104:                                      ; preds = %if.else.103
  br label %do.cond.105

do.cond.105:                                      ; preds = %do.body.104
  br label %do.end.106

do.end.106:                                       ; preds = %do.cond.105
  br label %if.end.107

if.end.107:                                       ; preds = %do.end.106, %do.end.99
  br label %if.end.108

if.end.108:                                       ; preds = %if.end.107, %do.body.56
  br label %do.cond.109

do.cond.109:                                      ; preds = %if.end.108
  br label %do.end.110

do.end.110:                                       ; preds = %do.cond.109
  br label %if.end.111

if.end.111:                                       ; preds = %do.end.110, %if.end.51
  %66 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag_profile, align 8, !tbaa !1
  %color_warp_profile = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %66, i32 0, i32 4
  %67 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %color_warp_profile, align 8, !tbaa !77
  %cmp112 = icmp ne %struct.cmm_profile_s* %67, null
  br i1 %cmp112, label %if.then.113, label %if.end.155

if.then.113:                                      ; preds = %if.end.111
  br label %do.body.114

do.body.114:                                      ; preds = %if.then.113
  %68 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag_profile, align 8, !tbaa !1
  %color_warp_profile115 = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %68, i32 0, i32 4
  %69 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %color_warp_profile115, align 8, !tbaa !77
  %tobool116 = icmp ne %struct.cmm_profile_s* %69, null
  br i1 %tobool116, label %if.then.117, label %if.end.152

if.then.117:                                      ; preds = %do.body.114
  br label %do.body.118

do.body.118:                                      ; preds = %if.then.117
  br label %do.body.119

do.body.119:                                      ; preds = %do.body.118
  br label %do.cond.120

do.cond.120:                                      ; preds = %do.body.119
  br label %do.end.121

do.end.121:                                       ; preds = %do.cond.120
  %70 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag_profile, align 8, !tbaa !1
  %color_warp_profile122 = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %70, i32 0, i32 4
  %71 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %color_warp_profile122, align 8, !tbaa !77
  %rc123 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %71, i32 0, i32 18
  %ref_count124 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc123, i32 0, i32 0
  %72 = load i64, i64* %ref_count124, align 8, !tbaa !35
  %add125 = add nsw i64 %72, -1
  store i64 %add125, i64* %ref_count124, align 8, !tbaa !35
  br label %do.cond.126

do.cond.126:                                      ; preds = %do.end.121
  br label %do.end.127

do.end.127:                                       ; preds = %do.cond.126
  %73 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag_profile, align 8, !tbaa !1
  %color_warp_profile128 = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %73, i32 0, i32 4
  %74 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %color_warp_profile128, align 8, !tbaa !77
  %rc129 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %74, i32 0, i32 18
  %ref_count130 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc129, i32 0, i32 0
  %75 = load i64, i64* %ref_count130, align 8, !tbaa !35
  %tobool131 = icmp ne i64 %75, 0
  br i1 %tobool131, label %if.else.147, label %if.then.132

if.then.132:                                      ; preds = %do.end.127
  br label %do.body.133

do.body.133:                                      ; preds = %if.then.132
  br label %do.body.134

do.body.134:                                      ; preds = %do.body.133
  br label %do.cond.135

do.cond.135:                                      ; preds = %do.body.134
  br label %do.end.136

do.end.136:                                       ; preds = %do.cond.135
  %76 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag_profile, align 8, !tbaa !1
  %color_warp_profile137 = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %76, i32 0, i32 4
  %77 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %color_warp_profile137, align 8, !tbaa !77
  %rc138 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %77, i32 0, i32 18
  %free139 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc138, i32 0, i32 2
  %78 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free139, align 8, !tbaa !37
  %79 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag_profile, align 8, !tbaa !1
  %color_warp_profile140 = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %79, i32 0, i32 4
  %80 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %color_warp_profile140, align 8, !tbaa !77
  %rc141 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %80, i32 0, i32 18
  %memory142 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc141, i32 0, i32 1
  %81 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory142, align 8, !tbaa !36
  %82 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag_profile, align 8, !tbaa !1
  %color_warp_profile143 = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %82, i32 0, i32 4
  %83 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %color_warp_profile143, align 8, !tbaa !77
  %84 = bitcast %struct.cmm_profile_s* %83 to i8*
  call void %78(%struct.gs_memory_s* %81, i8* %84, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.84, i32 0, i32 0)) #5
  br label %do.cond.144

do.cond.144:                                      ; preds = %do.end.136
  br label %do.end.145

do.end.145:                                       ; preds = %do.cond.144
  %85 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag_profile, align 8, !tbaa !1
  %color_warp_profile146 = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %85, i32 0, i32 4
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %color_warp_profile146, align 8, !tbaa !77
  br label %if.end.151

if.else.147:                                      ; preds = %do.end.127
  br label %do.body.148

do.body.148:                                      ; preds = %if.else.147
  br label %do.cond.149

do.cond.149:                                      ; preds = %do.body.148
  br label %do.end.150

do.end.150:                                       ; preds = %do.cond.149
  br label %if.end.151

if.end.151:                                       ; preds = %do.end.150, %do.end.145
  br label %if.end.152

if.end.152:                                       ; preds = %if.end.151, %do.body.114
  br label %do.cond.153

do.cond.153:                                      ; preds = %if.end.152
  br label %do.end.154

do.end.154:                                       ; preds = %do.cond.153
  br label %if.end.155

if.end.155:                                       ; preds = %do.end.154, %if.end.111
  br label %for.inc

for.inc:                                          ; preds = %if.end.155
  %86 = load i32, i32* %k, align 4, !tbaa !13
  %inc = add nsw i32 %86, 1
  store i32 %inc, i32* %k, align 4, !tbaa !13
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %87 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem_nongc, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %87, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %88 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !31
  %89 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem_nongc, align 8, !tbaa !1
  %90 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag_profile, align 8, !tbaa !1
  %name = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %90, i32 0, i32 7
  %91 = load i8*, i8** %name, align 8, !tbaa !79
  call void %88(%struct.gs_memory_s* %89, i8* %91, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.84, i32 0, i32 0)) #5
  %92 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem_nongc, align 8, !tbaa !1
  %procs156 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %92, i32 0, i32 1
  %free_object157 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs156, i32 0, i32 2
  %93 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object157, align 8, !tbaa !31
  %94 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem_nongc, align 8, !tbaa !1
  %95 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag_profile, align 8, !tbaa !1
  %96 = bitcast %struct.cmm_srcgtag_profile_s* %95 to i8*
  call void %93(%struct.gs_memory_s* %94, i8* %96, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.84, i32 0, i32 0)) #5
  br label %if.end.158

if.end.158:                                       ; preds = %for.end, %entry
  %97 = bitcast %struct.gs_memory_s** %mem_nongc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %97) #1
  %98 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %98) #1
  %99 = bitcast %struct.cmm_srcgtag_profile_s** %srcgtag_profile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %99) #1
  ret void
}

declare void @gscms_release_profile(i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin }
attributes #6 = { nobuiltin nounwind }
attributes #7 = { nobuiltin nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!3, !3, i64 0}
!6 = !{!7, !3, i64 0}
!7 = !{!"cmm_profile_s", !3, i64 0, !3, i64 1, !8, i64 4, !8, i64 8, !3, i64 12, !3, i64 16, !9, i64 20, !10, i64 144, !8, i64 152, !3, i64 156, !8, i64 216, !8, i64 220, !8, i64 224, !11, i64 228, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !12, i64 288, !8, i64 312, !2, i64 320, !2, i64 328, !2, i64 336}
!8 = !{!"int", !3, i64 0}
!9 = !{!"gs_range_icc_s", !3, i64 0}
!10 = !{!"long", !3, i64 0}
!11 = !{!"gsicc_rendering_param_s", !3, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !8, i64 20}
!12 = !{!"rc_header_s", !10, i64 0, !2, i64 8, !2, i64 16}
!13 = !{!8, !8, i64 0}
!14 = !{!15, !16, i64 0}
!15 = !{!"gs_range_s", !16, i64 0, !16, i64 4}
!16 = !{!"float", !3, i64 0}
!17 = !{!15, !16, i64 4}
!18 = !{!19, !2, i64 192}
!19 = !{!"gs_memory_s", !2, i64 0, !20, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!20 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!21 = !{!22, !2, i64 184}
!22 = !{!"gs_lib_ctx_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !8, i64 40, !8, i64 44, !8, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !10, i64 104, !2, i64 112, !2, i64 120, !8, i64 128, !2, i64 136, !8, i64 144, !8, i64 148, !3, i64 152, !2, i64 168, !8, i64 176, !2, i64 184, !8, i64 192, !2, i64 200, !2, i64 208}
!23 = !{!22, !8, i64 192}
!24 = !{!7, !2, i64 256}
!25 = !{!7, !8, i64 220}
!26 = !{!7, !2, i64 280}
!27 = !{!7, !8, i64 152}
!28 = !{!7, !3, i64 1}
!29 = !{!7, !3, i64 16}
!30 = !{!19, !2, i64 64}
!31 = !{!19, !2, i64 24}
!32 = !{!19, !2, i64 200}
!33 = !{!7, !2, i64 320}
!34 = !{!7, !8, i64 312}
!35 = !{!7, !10, i64 288}
!36 = !{!7, !2, i64 296}
!37 = !{!7, !2, i64 304}
!38 = !{!7, !2, i64 272}
!39 = !{!7, !8, i64 224}
!40 = !{!7, !8, i64 8}
!41 = !{!7, !2, i64 264}
!42 = !{!7, !2, i64 328}
!43 = !{!7, !2, i64 336}
!44 = !{!45, !2, i64 0}
!45 = !{!"gsicc_smask_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !8, i64 32}
!46 = !{!45, !2, i64 8}
!47 = !{!45, !2, i64 16}
!48 = !{!45, !2, i64 24}
!49 = !{!45, !8, i64 32}
!50 = !{!51, !2, i64 80}
!51 = !{!"gsicc_manager_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !8, i64 64, !2, i64 72, !2, i64 80, !12, i64 88}
!52 = !{!19, !2, i64 0}
!53 = !{!51, !2, i64 56}
!54 = !{!7, !3, i64 12}
!55 = !{!56, !2, i64 0}
!56 = !{!"gs_device_n_params_s", !2, i64 0, !8, i64 8, !2, i64 16, !2, i64 24, !8, i64 32, !2, i64 40}
!57 = !{!51, !2, i64 48}
!58 = !{!59, !2, i64 0}
!59 = !{!"gsicc_devicen_s", !2, i64 0, !2, i64 8, !8, i64 16}
!60 = !{!59, !8, i64 16}
!61 = !{!62, !2, i64 0}
!62 = !{!"gsicc_devicen_entry_s", !2, i64 0, !2, i64 8}
!63 = !{!56, !2, i64 40}
!64 = !{!10, !10, i64 0}
!65 = !{!66, !2, i64 8}
!66 = !{!"gsicc_namelist_s", !8, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !8, i64 32}
!67 = !{!68, !2, i64 0}
!68 = !{!"gsicc_colorname_s", !2, i64 0, !8, i64 8, !2, i64 16}
!69 = !{!68, !2, i64 16}
!70 = !{!7, !8, i64 216}
!71 = !{!51, !2, i64 72}
!72 = !{!11, !3, i64 16}
!73 = !{!74, !10, i64 224}
!74 = !{!"cmm_srcgtag_profile_s", !3, i64 0, !3, i64 24, !3, i64 96, !3, i64 120, !2, i64 192, !2, i64 200, !8, i64 208, !2, i64 216, !12, i64 224}
!75 = !{!74, !2, i64 240}
!76 = !{!74, !2, i64 232}
!77 = !{!74, !2, i64 192}
!78 = !{!74, !8, i64 208}
!79 = !{!74, !2, i64 216}
!80 = !{!74, !2, i64 200}
!81 = !{!11, !3, i64 4}
!82 = !{!11, !3, i64 0}
!83 = !{!11, !8, i64 20}
!84 = !{!11, !3, i64 8}
!85 = !{!62, !2, i64 8}
!86 = !{!59, !2, i64 8}
!87 = !{!7, !8, i64 4}
!88 = !{!19, !2, i64 72}
!89 = !{!90, !2, i64 192}
!90 = !{!"cmm_dev_profile_s", !3, i64 0, !2, i64 32, !2, i64 40, !2, i64 48, !3, i64 56, !8, i64 152, !8, i64 156, !8, i64 160, !8, i64 164, !8, i64 168, !8, i64 172, !2, i64 176, !8, i64 184, !2, i64 192, !12, i64 200}
!91 = !{!11, !3, i64 12}
!92 = !{!90, !2, i64 32}
!93 = !{!90, !2, i64 40}
!94 = !{!90, !2, i64 48}
!95 = !{!90, !2, i64 176}
!96 = !{!90, !8, i64 152}
!97 = !{!90, !8, i64 156}
!98 = !{!90, !8, i64 160}
!99 = !{!90, !8, i64 164}
!100 = !{!90, !8, i64 184}
!101 = !{!90, !8, i64 168}
!102 = !{!90, !8, i64 172}
!103 = !{!90, !10, i64 200}
!104 = !{!90, !2, i64 208}
!105 = !{!90, !2, i64 216}
!106 = !{!107, !2, i64 1680}
!107 = !{!"gx_device_s", !8, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !8, i64 40, !2, i64 48, !12, i64 56, !8, i64 80, !8, i64 84, !8, i64 88, !108, i64 96, !111, i64 816, !8, i64 832, !8, i64 836, !8, i64 840, !8, i64 844, !8, i64 848, !8, i64 852, !3, i64 856, !3, i64 864, !8, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !10, i64 928, !10, i64 936, !8, i64 944, !8, i64 948, !8, i64 952, !8, i64 956, !8, i64 960, !10, i64 968, !10, i64 976, !112, i64 984, !8, i64 1052, !8, i64 1056, !113, i64 1064, !2, i64 1104, !3, i64 1112, !115, i64 1120, !116, i64 1144}
!108 = !{!"gx_device_color_info_s", !8, i64 0, !8, i64 4, !3, i64 8, !109, i64 12, !3, i64 14, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !110, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !10, i64 704, !8, i64 712}
!109 = !{!"short", !3, i64 0}
!110 = !{!"gx_device_anti_alias_info_s", !8, i64 0, !8, i64 4}
!111 = !{!"gx_device_cached_colors_s", !10, i64 0, !10, i64 8}
!112 = !{!"gx_stroked_gradient_recognizer_s", !8, i64 0, !3, i64 4, !3, i64 36}
!113 = !{!"gdev_space_params_s", !10, i64 0, !10, i64 8, !114, i64 16, !8, i64 32, !3, i64 36}
!114 = !{!"gx_band_params_s", !8, i64 0, !8, i64 4, !10, i64 8}
!115 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!116 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!117 = !{!107, !2, i64 1104}
!118 = !{i64 0, i64 4, !13, i64 8, i64 8, !1, i64 16, i64 8, !1, i64 24, i64 4, !119, i64 28, i64 4, !5, i64 32, i64 4, !5, i64 36, i64 4, !5, i64 40, i64 4, !5, i64 44, i64 4, !13, i64 48, i64 4, !119, i64 52, i64 4, !119, i64 56, i64 4, !119, i64 60, i64 4, !13, i64 64, i64 4, !119, i64 68, i64 4, !119, i64 72, i64 4, !119, i64 76, i64 4, !119, i64 80, i64 4, !119, i64 84, i64 4, !119, i64 88, i64 8, !1, i64 96, i64 4, !13, i64 100, i64 4, !119, i64 104, i64 4, !13, i64 108, i64 4, !119, i64 112, i64 4, !13, i64 116, i64 4, !13, i64 120, i64 4, !119, i64 128, i64 4, !13, i64 132, i64 4, !119, i64 136, i64 4, !119, i64 140, i64 4, !119, i64 144, i64 4, !119, i64 148, i64 4, !119, i64 152, i64 4, !119, i64 156, i64 4, !13, i64 160, i64 4, !13, i64 164, i64 4, !13, i64 168, i64 4, !13, i64 176, i64 8, !120, i64 184, i64 8, !120, i64 192, i64 8, !120, i64 200, i64 8, !120, i64 208, i64 4, !13, i64 212, i64 4, !13, i64 216, i64 2, !122, i64 220, i64 4, !5, i64 224, i64 4, !119, i64 228, i64 4, !119, i64 232, i64 4, !13, i64 236, i64 4, !13, i64 240, i64 8, !64, i64 248, i64 4, !13, i64 252, i64 4, !13, i64 256, i64 4, !13, i64 264, i64 8, !1, i64 272, i64 4, !13, i64 276, i64 4, !13, i64 280, i64 4, !13, i64 284, i64 4, !13, i64 288, i64 4, !13, i64 292, i64 4, !13, i64 296, i64 4, !119, i64 300, i64 4, !13, i64 304, i64 4, !13, i64 308, i64 4, !13, i64 312, i64 4, !13, i64 316, i64 4, !13, i64 320, i64 4, !119, i64 324, i64 4, !13, i64 328, i64 4, !13, i64 336, i64 8, !1, i64 344, i64 8, !1, i64 352, i64 8, !1, i64 360, i64 8, !1, i64 368, i64 8, !1, i64 376, i64 16, !5, i64 392, i64 8, !1, i64 400, i64 8, !1, i64 408, i64 4, !13, i64 416, i64 8, !1, i64 424, i64 8, !1, i64 432, i64 4, !13, i64 440, i64 8, !1, i64 448, i64 4, !13, i64 456, i64 8, !1, i64 464, i64 4, !13, i64 472, i64 8, !1, i64 480, i64 4, !13, i64 488, i64 8, !1, i64 496, i64 512, !5, i64 1008, i64 8, !1, i64 1016, i64 8, !1, i64 1024, i64 4, !13, i64 1028, i64 4, !5, i64 1032, i64 4, !13, i64 1036, i64 4, !13, i64 1040, i64 8, !64, i64 1048, i64 256, !5, i64 1304, i64 8, !1, i64 1312, i64 8, !1, i64 1320, i64 8, !1, i64 1328, i64 8, !1, i64 1336, i64 4, !13, i64 1340, i64 4, !5, i64 1344, i64 4, !13, i64 1348, i64 4, !13, i64 1352, i64 8, !64, i64 1360, i64 256, !5, i64 1616, i64 8, !1, i64 1624, i64 4, !119, i64 1628, i64 4, !119, i64 1632, i64 4, !119, i64 1636, i64 4, !119, i64 1640, i64 4, !119, i64 1644, i64 4, !119, i64 1648, i64 4, !13, i64 1652, i64 4, !119, i64 1656, i64 4, !119, i64 1660, i64 4, !119, i64 1664, i64 4, !119, i64 1668, i64 4, !119, i64 1672, i64 4, !119, i64 1676, i64 4, !13, i64 1680, i64 8, !1, i64 1688, i64 8, !1, i64 1696, i64 8, !1, i64 1704, i64 8, !1, i64 1712, i64 8, !64, i64 1720, i64 8, !64, i64 1728, i64 8, !1, i64 1736, i64 4, !13, i64 1744, i64 48, !5, i64 1792, i64 8, !1, i64 1800, i64 8, !1, i64 1808, i64 4, !119, i64 1812, i64 4, !119, i64 1816, i64 4, !119, i64 1820, i64 4, !119, i64 1824, i64 4, !119, i64 1828, i64 4, !119, i64 1832, i64 4, !13, i64 1836, i64 4, !13, i64 1840, i64 4, !13, i64 1844, i64 4, !13, i64 1848, i64 4, !5, i64 1852, i64 4, !5, i64 1856, i64 8, !1, i64 1864, i64 4, !13, i64 1872, i64 8, !1, i64 1880, i64 8, !1, i64 1888, i64 8, !1, i64 1896, i64 8, !1, i64 1904, i64 8, !1, i64 1912, i64 8, !1}
!119 = !{!16, !16, i64 0}
!120 = !{!121, !121, i64 0}
!121 = !{!"double", !3, i64 0}
!122 = !{!109, !109, i64 0}
!123 = !{!124, !2, i64 8}
!124 = !{!"gs_imager_state_s", !8, i64 0, !2, i64 8, !2, i64 16, !125, i64 24, !8, i64 128, !128, i64 132, !8, i64 168, !129, i64 176, !129, i64 192, !8, i64 208, !8, i64 212, !109, i64 216, !3, i64 220, !130, i64 224, !130, i64 228, !131, i64 232, !10, i64 240, !8, i64 248, !8, i64 252, !8, i64 256, !2, i64 264, !8, i64 272, !8, i64 276, !8, i64 280, !8, i64 284, !8, i64 288, !8, i64 292, !16, i64 296, !132, i64 300, !8, i64 308, !8, i64 312, !8, i64 316, !16, i64 320, !8, i64 324, !8, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !8, i64 408, !2, i64 416, !2, i64 424, !133, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !134, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !134, i64 1336}
!125 = !{!"gx_line_params_s", !16, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !8, i64 20, !16, i64 24, !16, i64 28, !16, i64 32, !8, i64 36, !126, i64 40, !127, i64 64}
!126 = !{!"gs_matrix_s", !16, i64 0, !16, i64 4, !16, i64 8, !16, i64 12, !16, i64 16, !16, i64 20}
!127 = !{!"gx_dash_params_s", !2, i64 0, !8, i64 8, !16, i64 12, !8, i64 16, !16, i64 20, !8, i64 24, !8, i64 28, !16, i64 32}
!128 = !{!"gs_matrix_fixed_s", !16, i64 0, !16, i64 4, !16, i64 8, !16, i64 12, !16, i64 16, !16, i64 20, !8, i64 24, !8, i64 28, !8, i64 32}
!129 = !{!"gs_point_s", !121, i64 0, !121, i64 8}
!130 = !{!"gs_transparency_source_s", !16, i64 0}
!131 = !{!"gs_xstate_trans_flags", !8, i64 0, !8, i64 4}
!132 = !{!"gs_fixed_point_s", !8, i64 0, !8, i64 4}
!133 = !{!"gx_transfer_s", !8, i64 0, !2, i64 8, !8, i64 16, !2, i64 24, !8, i64 32, !2, i64 40, !8, i64 48, !2, i64 56}
!134 = !{!"gs_devicen_color_map_s", !8, i64 0, !3, i64 4, !8, i64 8, !8, i64 12, !10, i64 16, !3, i64 24}
!135 = !{!136, !2, i64 64}
!136 = !{!"gs_color_space_s", !2, i64 0, !12, i64 8, !10, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !3, i64 72}
!137 = !{!138, !2, i64 0}
!138 = !{!"", !2, i64 0, !2, i64 8, !2, i64 16}
!139 = !{!107, !2, i64 1616}
!140 = !{!107, !2, i64 24}
!141 = !{!66, !2, i64 16}
!142 = !{!68, !8, i64 8}
!143 = !{!66, !8, i64 0}
!144 = !{!66, !2, i64 24}
!145 = !{!134, !8, i64 12}
!146 = !{!134, !8, i64 8}
!147 = !{!107, !2, i64 1544}
!148 = !{!66, !8, i64 32}
!149 = !{!107, !8, i64 100}
!150 = !{!151, !3, i64 1848}
!151 = !{!"gs_state_s", !8, i64 0, !2, i64 8, !2, i64 16, !125, i64 24, !8, i64 128, !128, i64 132, !8, i64 168, !129, i64 176, !129, i64 192, !8, i64 208, !8, i64 212, !109, i64 216, !3, i64 220, !130, i64 224, !130, i64 228, !131, i64 232, !10, i64 240, !8, i64 248, !8, i64 252, !8, i64 256, !2, i64 264, !8, i64 272, !8, i64 276, !8, i64 280, !8, i64 284, !8, i64 288, !8, i64 292, !16, i64 296, !132, i64 300, !8, i64 308, !8, i64 312, !8, i64 316, !16, i64 320, !8, i64 324, !8, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !8, i64 408, !2, i64 416, !2, i64 424, !133, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !134, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !134, i64 1336, !2, i64 1616, !126, i64 1624, !8, i64 1648, !126, i64 1652, !8, i64 1676, !2, i64 1680, !2, i64 1688, !2, i64 1696, !2, i64 1704, !10, i64 1712, !10, i64 1720, !2, i64 1728, !8, i64 1736, !3, i64 1744, !2, i64 1792, !2, i64 1800, !128, i64 1808, !8, i64 1844, !3, i64 1848, !3, i64 1852, !2, i64 1856, !8, i64 1864, !2, i64 1872, !2, i64 1880, !152, i64 1888}
!152 = !{!"gs_state_client_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!153 = !{!151, !2, i64 8}
!154 = !{!136, !2, i64 0}
!155 = !{!156, !2, i64 80}
!156 = !{!"gs_color_space_type_s", !3, i64 0, !8, i64 4, !8, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128}
!157 = !{!151, !2, i64 336}
!158 = !{!159, !2, i64 0}
!159 = !{!"default_profile_def_s", !2, i64 0, !3, i64 8}
!160 = !{!159, !3, i64 8}
!161 = !{!51, !2, i64 8}
!162 = !{!51, !2, i64 16}
!163 = !{!51, !2, i64 24}
!164 = !{!51, !10, i64 88}
!165 = !{!51, !2, i64 96}
!166 = !{!51, !2, i64 104}
!167 = !{!51, !2, i64 32}
!168 = !{!51, !2, i64 40}
!169 = !{!51, !2, i64 0}
!170 = !{!51, !8, i64 64}
!171 = !{!124, !2, i64 336}
!172 = !{!7, !10, i64 144}
!173 = !{!174, !2, i64 10160}
!174 = !{!"gx_device_clist_reader_s", !8, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !8, i64 40, !2, i64 48, !12, i64 56, !8, i64 80, !8, i64 84, !8, i64 88, !108, i64 96, !111, i64 816, !8, i64 832, !8, i64 836, !8, i64 840, !8, i64 844, !8, i64 848, !8, i64 852, !3, i64 856, !3, i64 864, !8, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !10, i64 928, !10, i64 936, !8, i64 944, !8, i64 948, !8, i64 952, !8, i64 956, !8, i64 960, !10, i64 968, !10, i64 976, !112, i64 984, !8, i64 1052, !8, i64 1056, !113, i64 1064, !2, i64 1104, !3, i64 1112, !115, i64 1120, !116, i64 1144, !2, i64 1728, !175, i64 1736, !2, i64 1768, !2, i64 1776, !8, i64 1784, !114, i64 1792, !8, i64 1808, !8, i64 1812, !176, i64 1816, !177, i64 1840, !8, i64 1864, !8, i64 1868, !2, i64 1872, !8, i64 1880, !8, i64 1884, !178, i64 1888, !8, i64 10144, !10, i64 10152, !2, i64 10160, !2, i64 10168, !8, i64 10176, !2, i64 10184, !179, i64 10192, !2, i64 10208, !2, i64 10216, !8, i64 10224, !2, i64 10232, !8, i64 10240, !2, i64 10248, !2, i64 10256, !8, i64 10264, !8, i64 10268, !8, i64 10272}
!175 = !{!"gx_device_buf_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!176 = !{!"gx_bits_cache_chunk_s", !2, i64 0, !2, i64 8, !8, i64 16, !8, i64 20}
!177 = !{!"gx_bits_cache_s", !2, i64 0, !8, i64 8, !8, i64 12, !8, i64 16}
!178 = !{!"gx_band_page_info_s", !3, i64 0, !2, i64 4096, !3, i64 4104, !2, i64 8200, !2, i64 8208, !8, i64 8216, !10, i64 8224, !10, i64 8232, !114, i64 8240}
!179 = !{!"gx_render_plane_s", !8, i64 0, !8, i64 4, !8, i64 8}
!180 = !{!181, !8, i64 220}
!181 = !{!"gsicc_serialized_profile_s", !3, i64 0, !3, i64 1, !8, i64 4, !8, i64 8, !3, i64 12, !3, i64 16, !9, i64 20, !10, i64 144, !8, i64 152, !3, i64 156, !8, i64 216, !8, i64 220, !8, i64 224, !11, i64 228}
!182 = !{!181, !3, i64 16}
!183 = !{!181, !3, i64 12}
!184 = !{!181, !8, i64 152}
!185 = !{!181, !10, i64 144}
!186 = !{!181, !8, i64 4}
!187 = !{!181, !3, i64 0}
!188 = !{!181, !8, i64 224}
!189 = !{i64 0, i64 4, !5, i64 4, i64 4, !5, i64 8, i64 4, !5, i64 12, i64 4, !5, i64 16, i64 4, !5, i64 20, i64 4, !13}
!190 = !{!181, !8, i64 8}
!191 = !{!192, !8, i64 0}
!192 = !{!"clist_icctable_s", !8, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!193 = !{!192, !2, i64 16}
!194 = !{!195, !10, i64 0}
!195 = !{!"clist_icctable_entry_s", !196, i64 0, !2, i64 24, !2, i64 32, !8, i64 40}
!196 = !{!"clist_icc_serial_entry_s", !10, i64 0, !10, i64 8, !8, i64 16}
!197 = !{!195, !8, i64 16}
!198 = !{!195, !10, i64 8}
!199 = !{!195, !2, i64 24}
!200 = !{!174, !2, i64 24}
!201 = !{!202, !2, i64 0}
!202 = !{!"gs_param_string_s", !2, i64 0, !8, i64 8, !8, i64 12}
!203 = !{!202, !8, i64 12}
!204 = !{!202, !8, i64 8}
