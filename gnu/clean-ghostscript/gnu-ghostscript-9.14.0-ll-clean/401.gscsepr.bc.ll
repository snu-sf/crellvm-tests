; ModuleID = './gscsepr.bc'
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
%struct.gx_io_device_s = type { i8*, i8*, %struct.gx_io_device_procs_s, i8* }
%struct.gx_io_device_procs_s = type { i32 (%struct.gx_io_device_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)*, i32 (%struct.gx_io_device_s*, %struct._IO_FILE*)*, i32 (%struct.gx_io_device_s*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stat*)*, %struct.file_enum_s* (%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.file_enum_s*, i8*, i32)*, void (%struct.file_enum_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)* }
%struct.stream_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], %union.stream_cursor_s, i8*, i32, i32, i16, i8, i8, %struct.gs_string_s, i64, %struct.stream_procs, %struct.stream_s*, i32, i32, %struct.stream_state_s*, i16, i16, %struct.stream_s*, %struct.stream_s*, i32, i32, i32 (%struct.stream_s*)*, %struct._IO_FILE*, %struct.gs_const_string_s, i32, i64, i64 }
%struct.stream_template_s = type opaque
%union.stream_cursor_s = type { %struct.stream_cursor_read_s }
%struct.stream_cursor_read_s = type { i8*, i8*, i8* }
%struct.gs_string_s = type { i8*, i32 }
%struct.stream_procs = type { i32 (%struct.stream_s*, i64*)*, i32 (%struct.stream_s*, i64)*, void (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_s*, i32)* }
%struct.stream_cursor_write_s = type { i8*, i8*, i8* }
%struct.stream_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, {}*, i32, [80 x i8] }
%struct.gs_const_string_s = type { i8*, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.file_enum_s = type opaque
%struct.gs_param_list_s = type { %struct.gs_param_list_procs_s*, %struct.gs_memory_s*, i32 }
%struct.gs_param_list_procs_s = type { i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_typed_value_s*)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*, i32)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*)*, i32 (%struct.gs_param_list_s*, %union.gs_param_enumerator_s*, %struct.gs_param_string_s*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*)* }
%struct.gs_param_typed_value_s = type { %union.gs_param_value_s, i32 }
%union.gs_param_value_s = type { %struct.gs_param_string_s }
%struct.gs_param_string_s = type { i8*, i32, i32 }
%struct.gs_param_collection_s = type { %struct.gs_param_list_s*, i32 }
%union.gs_param_enumerator_s = type { i64 }
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct.gs_client_color_s = type { %struct.gs_pattern_instance_s*, %struct.gs_paint_color_s }
%struct.gs_pattern_instance_s = type { %struct.rc_header_s, %struct.gs_pattern_type_s*, %struct.gs_state_s*, i64 }
%struct.rc_header_s = type { i64, %struct.gs_memory_s*, void (%struct.gs_memory_s*, i8*, i8*)* }
%struct.gs_pattern_type_s = type opaque
%struct.gs_state_s = type { i32, %struct.gs_memory_s*, i8*, %struct.gx_line_params_s, i32, %struct.gs_matrix_fixed_s, i32, %struct.gs_point_s, %struct.gs_point_s, i32, i32, i16, i32, %struct.gs_transparency_source_s, %struct.gs_transparency_source_s, %struct.gs_xstate_trans_flags, i64, i32, i32, i32, %struct.gx_device_s*, i32, i32, i32, i32, i32, i32, float, %struct.gs_fixed_point_s, i32, i32, i32, float, i32, i32, %struct.gsicc_manager_s*, %struct.gsicc_link_cache_s*, %struct.gsicc_profile_cache_s*, %struct.gx_color_map_procs_s* (%struct.gs_imager_state_s*, %struct.gx_device_s*)*, %struct.gs_halftone_s*, [2 x %struct.gs_int_point_s], %struct.gx_device_halftone_s*, %struct.gs_cie_render_s*, i32, %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s*, %struct.gx_transfer_s, [64 x %struct.gx_transfer_map_s*], %struct.gx_cie_joint_caches_s*, %struct.gx_color_map_procs_s*, %struct.gs_devicen_color_map_s, %struct.gx_pattern_cache_s*, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_devicen_color_map_s, %struct.gs_state_s*, %struct.gs_matrix_s, i32, %struct.gs_matrix_s, i32, %struct.gx_path_s*, %struct.gx_clip_path_s*, %struct.gx_clip_stack_s*, %struct.gx_clip_path_s*, i64, i64, %struct.gx_clip_path_s*, i32, [2 x %struct.anon.1], %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_matrix_fixed_s, i32, i32, i32, %struct.gs_state_s*, i32, %struct.gx_device_s*, %struct.gs_device_filter_stack_s*, %struct.gs_state_client_procs_s }
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
%struct.gs_int_point_s = type { i32, i32 }
%struct.gx_device_halftone_s = type opaque
%struct.gs_cie_render_s = type { i32, %struct.rc_header_s, i64, i8*, %struct.gs_cie_wb_s, %struct.gs_matrix3_s, %struct.gs_range3_s, %struct.gs_cie_transform_proc3_s, %struct.gs_matrix3_s, %struct.gs_cie_render_proc3_s, %struct.gs_range3_s, %struct.gs_matrix3_s, %struct.gs_cie_render_proc3_s, %struct.gs_range3_s, %struct.gs_cie_render_table_s, %struct.gs_range3_s, %struct.gs_range3_s, %struct.gs_matrix3_s, [3 x float], %struct.gs_matrix3_s, %struct.gs_vector3_s, %struct.gs_vector3_s, %struct.anon.0 }
%struct.gs_cie_wb_s = type { %struct.gs_vector3_s, %struct.gs_vector3_s }
%struct.gs_cie_transform_proc3_s = type { i32 (i32, double, %struct.gs_cie_wbsd_s*, %struct.gs_cie_render_s*, float*)*, i8*, %struct.gs_const_string_s, i8* }
%struct.gs_cie_wbsd_s = type { %struct.anon, %struct.anon, %struct.anon, %struct.anon }
%struct.anon = type { %struct.gs_vector3_s, %struct.gs_vector3_s }
%struct.gs_cie_render_proc3_s = type { [3 x float (double, %struct.gs_cie_render_s*)*] }
%struct.gs_cie_render_table_s = type { %struct.gx_color_lookup_table_s, %struct.gs_cie_render_table_procs_s }
%struct.gx_color_lookup_table_s = type { i32, [4 x i32], i32, %struct.gs_const_string_s* }
%struct.gs_cie_render_table_procs_s = type { [4 x i16 (i8, %struct.gs_cie_render_s*)*] }
%struct.gs_range3_s = type { [3 x %struct.gs_range_s] }
%struct.gs_matrix3_s = type { %struct.gs_vector3_s, %struct.gs_vector3_s, %struct.gs_vector3_s, i32 }
%struct.gs_vector3_s = type { float, float, float }
%struct.anon.0 = type { %struct.gx_cie_vector_cache3_s, [3 x %struct.gx_cie_float_fixed_cache_s], [4 x %union.gx_cie_scalar_cache_s], i32 }
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
%struct.anon.1 = type { %struct.gs_color_space_s*, %struct.gs_client_color_s*, %struct.gx_device_color_s* }
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
%struct.gs_pattern1_instance_s = type { %struct.rc_header_s, %struct.gs_pattern_type_s*, %struct.gs_state_s*, i64, %struct.gs_pattern1_template_s, %struct.gs_matrix_s, %struct.gs_rect_s, i32, i32, i32, i32, i32, %struct.gs_int_point_s, i64 }
%struct.gs_pattern1_template_s = type { %struct.gs_pattern_type_s*, i32, %struct.gs_uid_s, i8*, i32, i32, i32, %struct.gs_rect_s, float, float, i32 (%struct.gs_client_color_s*, %struct.gs_state_s*)* }
%struct.gs_uid_s = type { i64, i64* }
%struct.gs_fill_attributes_s = type { %struct.gs_fixed_rect_s*, i32, %struct.gx_device_halftone_s*, i32, i32, i32, %struct.patch_fill_state_s* }
%struct.patch_fill_state_s = type opaque
%struct.gs_devn_params_s = type opaque
%struct.gx_process_page_options_s = type { i32 (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i32, i32, i8**)*, void (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_int_rect_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, i8*)*, i8*, i32 }
%struct.gs_device_filter_stack_s = type { %struct.gs_device_filter_stack_s*, %struct.gs_device_filter_s*, %struct.gx_device_s*, %struct.rc_header_s }
%struct.gs_device_filter_s = type opaque
%struct.gs_state_client_procs_s = type { i8* (%struct.gs_memory_s*)*, i32 (i8*, i8*)*, void (i8*, %struct.gs_memory_s*)*, i32 (i8*, i8*, i32)* }
%struct.gs_paint_color_s = type { [64 x float] }
%struct.gs_color_space_s = type { %struct.gs_color_space_type_s*, %struct.rc_header_s, i64, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.client_color_space_data_s*, %struct.cmm_profile_s*, %union.anon }
%struct.gs_color_space_type_s = type { i32, i32, i32, %struct.gs_memory_struct_type_s*, {}*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, void (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)*, i32 (%struct.gs_color_space_s*)* }
%struct.client_color_space_data_s = type { void (%struct.gs_color_space_s*, i32)* }
%union.anon = type { %struct.gs_device_n_params_s }
%struct.gs_device_n_params_s = type { i64*, i32, %struct.gs_device_n_map_s*, %struct.gs_device_n_attributes_s*, i32, i32 (%struct.gs_memory_s*, i64, i8**, i32*)* }
%struct.gs_device_n_map_s = type { %struct.rc_header_s, i32 (float*, float*, %struct.gs_imager_state_s*, i8*)*, i8*, i32, [64 x float], [64 x i16] }
%struct.gs_device_n_attributes_s = type { %struct.rc_header_s, i64, %struct.gs_color_space_s*, %struct.gs_device_n_attributes_s* }
%struct.gsicc_namedcolor_s = type { i8*, i32, [3 x i16] }
%struct.gs_separation_params_s = type { i64, %struct.gs_device_n_map_s*, i32, i32, i32 (%struct.gs_memory_s*, i64, i8**, i32*)* }
%struct.gs_overprint_params_s = type { i32, i32, i32, i64, i16, i32 }
%struct.gs_function_s = type { %struct.gs_function_head_s, %struct.gs_function_params_s }
%struct.gs_function_head_s = type { i32, %struct.gs_function_procs_s }
%struct.gs_function_procs_s = type { i32 (%struct.gs_function_s*, float*, float*)*, i32 (%struct.gs_function_s*, float*, float*, i32*)*, void (%struct.gs_function_s*, %struct.gs_function_info_s*)*, i32 (%struct.gs_function_s*, %struct.gs_param_list_s*)*, i32 (%struct.gs_function_s*, %struct.gs_function_s**, %struct.gs_range_s*, %struct.gs_memory_s*)*, void (%struct.gs_function_params_s*, %struct.gs_memory_s*)*, void (%struct.gs_function_s*, i32, %struct.gs_memory_s*)*, i32 (%struct.gs_function_s*, %struct.stream_s*)* }
%struct.gs_function_info_s = type { %struct.gs_data_source_s*, i64, %struct.gs_function_s**, i32 }
%struct.gs_data_source_s = type opaque
%struct.gs_function_params_s = type { i32, float*, i32, float* }
%struct.gc_procs_common_s = type { i8* (i8*, %struct.gc_state_s*)*, void (%struct.gs_string_s*, %struct.gc_state_s*)*, void (%struct.gs_const_string_s*, %struct.gc_state_s*)*, void (%struct.gs_param_string_s*, %struct.gc_state_s*)* }

@st_color_space_Separation = internal constant %struct.gs_memory_struct_type_s { i32 120, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @cs_Separation_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @cs_Separation_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@gs_color_space_type_Separation = constant { i32, i32, i32, %struct.gs_memory_struct_type_s*, i32 (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, void (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)*, i32 (%struct.gs_color_space_s*)* } { i32 9, i32 1, i32 0, %struct.gs_memory_struct_type_s* @st_color_space_Separation, i32 (%struct.gs_color_space_s*)* @gx_num_components_1, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)* @gx_init_Separation, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)* @gx_restrict01_paint_1, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)* @gx_concrete_space_Separation, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)* @gx_concretize_Separation, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)* @gx_remap_concrete_Separation, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)* @gx_remap_Separation, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)* @gx_install_Separation, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)* @gx_set_overprint_Separation, void (%struct.gs_color_space_s*)* @gx_final_Separation, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)* @gx_no_adjust_color_count, i32 (%struct.gs_color_space_s*, %struct.stream_s*)* @gx_serialize_Separation, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)* @gx_cspace_is_linear_default, i32 (%struct.gs_color_space_s*)* @gx_polarity_subtractive }, align 8
@.str = private unnamed_addr constant [27 x i8] c"gs_cspace_build_Separation\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"gs_color_space_Separation\00", align 1
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8
@ptr_name_index_procs = external constant %struct.gs_ptr_procs_s, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"gx_adjust_Separation\00", align 1
@gx_dc_type_data_null = external constant %struct.gx_device_color_type_s, align 8

declare i32 @gx_num_components_1(%struct.gs_color_space_s*) #0

; Function Attrs: nounwind uwtable
define internal void @gx_init_Separation(%struct.gs_client_color_s* %pcc, %struct.gs_color_space_s* %pcs) #1 {
entry:
  %pcc.addr = alloca %struct.gs_client_color_s*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  store %struct.gs_client_color_s* %pcc, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %paint = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %0, i32 0, i32 1
  %values = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint, i32 0, i32 0
  %arrayidx = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 0
  store float 1.000000e+00, float* %arrayidx, align 4, !tbaa !5
  ret void
}

declare void @gx_restrict01_paint_1(%struct.gs_client_color_s*, %struct.gs_color_space_s*) #0

; Function Attrs: nounwind uwtable
define internal %struct.gs_color_space_s* @gx_concrete_space_Separation(%struct.gs_color_space_s* %pcs, %struct.gs_imager_state_s* %pis) #1 {
entry:
  %retval = alloca %struct.gs_color_space_s*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %is_lab = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %0 = bitcast i32* %is_lab to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 0, i32* %is_lab, align 4, !tbaa !7
  %1 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %color_component_map = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %1, i32 0, i32 50
  %use_alt_cspace = getelementptr inbounds %struct.gs_devicen_color_map_s, %struct.gs_devicen_color_map_s* %color_component_map, i32 0, i32 0
  %2 = load i32, i32* %use_alt_cspace, align 4, !tbaa !9
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end.13

if.then:                                          ; preds = %entry
  %3 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %base_space = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %3, i32 0, i32 3
  %4 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space, align 8, !tbaa !24
  %call = call i32 @gs_color_space_is_PSCIE(%struct.gs_color_space_s* %4) #3
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.then.2, label %if.end.9

if.then.2:                                        ; preds = %if.then
  %5 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %base_space3 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %5, i32 0, i32 3
  %6 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space3, align 8, !tbaa !24
  %icc_equivalent = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %6, i32 0, i32 4
  %7 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_equivalent, align 8, !tbaa !27
  %cmp = icmp eq %struct.gs_color_space_s* %7, null
  br i1 %cmp, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then.2
  %8 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %base_space5 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %8, i32 0, i32 3
  %9 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space5, align 8, !tbaa !24
  %10 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %10, i32 0, i32 1
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !28
  %call6 = call i32 @gs_colorspace_set_icc_equivalent(%struct.gs_color_space_s* %9, i32* %is_lab, %struct.gs_memory_s* %11) #3
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then.2
  %12 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %base_space7 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %12, i32 0, i32 3
  %13 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space7, align 8, !tbaa !24
  %icc_equivalent8 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %13, i32 0, i32 4
  %14 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_equivalent8, align 8, !tbaa !27
  store %struct.gs_color_space_s* %14, %struct.gs_color_space_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.then
  %15 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %base_space10 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %15, i32 0, i32 3
  %16 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space10, align 8, !tbaa !24
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %16, i32 0, i32 0
  %17 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !29
  %concrete_space = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %17, i32 0, i32 7
  %18 = load %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)** %concrete_space, align 8, !tbaa !30
  %19 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %base_space11 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %19, i32 0, i32 3
  %20 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space11, align 8, !tbaa !24
  %21 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %call12 = call %struct.gs_color_space_s* %18(%struct.gs_color_space_s* %20, %struct.gs_imager_state_s* %21) #3
  store %struct.gs_color_space_s* %call12, %struct.gs_color_space_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.13:                                        ; preds = %entry
  %22 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %22, %struct.gs_color_space_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.13, %if.end.9, %if.end
  %23 = bitcast i32* %is_lab to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #2
  %24 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %retval
  ret %struct.gs_color_space_s* %24
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_concretize_Separation(%struct.gs_client_color_s* %pc, %struct.gs_color_space_s* %pcs, i16* %pconc, %struct.gs_imager_state_s* %pis, %struct.gx_device_s* %dev) #1 {
entry:
  %retval = alloca i32, align 4
  %pc.addr = alloca %struct.gs_client_color_s*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pconc.addr = alloca i16*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %code = alloca i32, align 4
  %cc = alloca %struct.gs_client_color_s, align 8
  %pacs = alloca %struct.gs_color_space_s*, align 8
  %is_lab = alloca i32, align 4
  %k = alloca i32, align 4
  %num_des_comps = alloca i32, align 4
  %named_color = alloca %struct.gsicc_namedcolor_s, align 8
  %map = alloca %struct.gs_device_n_map_s*, align 8
  %device_values = alloca [64 x i16], align 16
  %name = alloca i64, align 8
  %pname = alloca i8*, align 8
  %name_size = alloca i32, align 4
  %rendering_params = alloca %struct.gsicc_rendering_param_s, align 4
  %cleanup.dest.slot = alloca i32
  %i = alloca i32, align 4
  %num_out = alloca i32, align 4
  store %struct.gs_client_color_s* %pc, %struct.gs_client_color_s** %pc.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store i16* %pconc, i16** %pconc.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast %struct.gs_client_color_s* %cc to i8*
  call void @llvm.lifetime.start(i64 264, i8* %1) #2
  %2 = bitcast %struct.gs_color_space_s** %pacs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %base_space = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %3, i32 0, i32 3
  %4 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space, align 8, !tbaa !24
  store %struct.gs_color_space_s* %4, %struct.gs_color_space_s** %pacs, align 8, !tbaa !1
  %5 = bitcast i32* %is_lab to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast i32* %num_des_comps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %8, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %9 = load i32, i32* %num_components, align 4, !tbaa !32
  store i32 %9, i32* %num_des_comps, align 4, !tbaa !7
  %10 = bitcast %struct.gsicc_namedcolor_s* %named_color to i8*
  call void @llvm.lifetime.start(i64 24, i8* %10) #2
  %11 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %11, i32 0, i32 7
  %separation = bitcast %union.anon* %params to %struct.gs_separation_params_s*
  %sep_type = getelementptr inbounds %struct.gs_separation_params_s, %struct.gs_separation_params_s* %separation, i32 0, i32 2
  %12 = load i32, i32* %sep_type, align 4, !tbaa !42
  %cmp = icmp eq i32 %12, 2
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %13 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params1 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %13, i32 0, i32 7
  %separation2 = bitcast %union.anon* %params1 to %struct.gs_separation_params_s*
  %use_alt_cspace = getelementptr inbounds %struct.gs_separation_params_s, %struct.gs_separation_params_s* %separation2, i32 0, i32 3
  %14 = load i32, i32* %use_alt_cspace, align 4, !tbaa !44
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %15 = bitcast %struct.gs_device_n_map_s** %map to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #2
  %16 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params3 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %16, i32 0, i32 7
  %separation4 = bitcast %union.anon* %params3 to %struct.gs_separation_params_s*
  %map5 = getelementptr inbounds %struct.gs_separation_params_s, %struct.gs_separation_params_s* %separation4, i32 0, i32 1
  %17 = load %struct.gs_device_n_map_s*, %struct.gs_device_n_map_s** %map5, align 8, !tbaa !45
  store %struct.gs_device_n_map_s* %17, %struct.gs_device_n_map_s** %map, align 8, !tbaa !1
  %18 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %icc_manager = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %18, i32 0, i32 35
  %19 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !46
  %device_named = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %19, i32 0, i32 0
  %20 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %device_named, align 8, !tbaa !47
  %cmp6 = icmp ne %struct.cmm_profile_s* %20, null
  br i1 %cmp6, label %if.then.7, label %if.end.27

if.then.7:                                        ; preds = %if.then
  %21 = bitcast [64 x i16]* %device_values to i8*
  call void @llvm.lifetime.start(i64 128, i8* %21) #2
  %22 = bitcast i64* %name to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #2
  %23 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params8 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %23, i32 0, i32 7
  %separation9 = bitcast %union.anon* %params8 to %struct.gs_separation_params_s*
  %sep_name = getelementptr inbounds %struct.gs_separation_params_s, %struct.gs_separation_params_s* %separation9, i32 0, i32 0
  %24 = load i64, i64* %sep_name, align 8, !tbaa !49
  store i64 %24, i64* %name, align 8, !tbaa !50
  %25 = bitcast i8** %pname to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #2
  %26 = bitcast i32* %name_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #2
  %27 = bitcast %struct.gsicc_rendering_param_s* %rendering_params to i8*
  call void @llvm.lifetime.start(i64 24, i8* %27) #2
  %28 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %blackptcomp = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %28, i32 0, i32 34
  %29 = load i32, i32* %blackptcomp, align 4, !tbaa !51
  %black_point_comp = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %rendering_params, i32 0, i32 1
  store i32 %29, i32* %black_point_comp, align 4, !tbaa !52
  %30 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %graphics_type_tag = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %30, i32 0, i32 40
  %31 = load i32, i32* %graphics_type_tag, align 4, !tbaa !54
  %graphics_type_tag10 = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %rendering_params, i32 0, i32 3
  store i32 %31, i32* %graphics_type_tag10, align 4, !tbaa !55
  %override_icc = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %rendering_params, i32 0, i32 5
  store i32 0, i32* %override_icc, align 4, !tbaa !56
  %preserve_black = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %rendering_params, i32 0, i32 2
  store i32 8, i32* %preserve_black, align 4, !tbaa !57
  %32 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %renderingintent = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %32, i32 0, i32 33
  %33 = load i32, i32* %renderingintent, align 4, !tbaa !58
  %rendering_intent = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %rendering_params, i32 0, i32 0
  store i32 %33, i32* %rendering_intent, align 4, !tbaa !59
  %cmm = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %rendering_params, i32 0, i32 4
  store i32 0, i32* %cmm, align 4, !tbaa !60
  %34 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params11 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %34, i32 0, i32 7
  %separation12 = bitcast %union.anon* %params11 to %struct.gs_separation_params_s*
  %get_colorname_string = getelementptr inbounds %struct.gs_separation_params_s, %struct.gs_separation_params_s* %separation12, i32 0, i32 4
  %35 = load i32 (%struct.gs_memory_s*, i64, i8**, i32*)*, i32 (%struct.gs_memory_s*, i64, i8**, i32*)** %get_colorname_string, align 8, !tbaa !61
  %36 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %36, i32 0, i32 1
  %37 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !28
  %38 = load i64, i64* %name, align 8, !tbaa !50
  %call = call i32 %35(%struct.gs_memory_s* %37, i64 %38, i8** %pname, i32* %name_size) #3
  %39 = load i8*, i8** %pname, align 8, !tbaa !1
  %colorant_name = getelementptr inbounds %struct.gsicc_namedcolor_s, %struct.gsicc_namedcolor_s* %named_color, i32 0, i32 0
  store i8* %39, i8** %colorant_name, align 8, !tbaa !62
  %40 = load i32, i32* %name_size, align 4, !tbaa !7
  %name_size13 = getelementptr inbounds %struct.gsicc_namedcolor_s, %struct.gsicc_namedcolor_s* %named_color, i32 0, i32 1
  store i32 %40, i32* %name_size13, align 4, !tbaa !64
  %41 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pc.addr, align 8, !tbaa !1
  %paint = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %41, i32 0, i32 1
  %values = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint, i32 0, i32 0
  %arraydecay = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i32 0
  %arraydecay14 = getelementptr inbounds [64 x i16], [64 x i16]* %device_values, i32 0, i32 0
  %42 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %43 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call15 = call i32 @gsicc_transform_named_color(float* %arraydecay, %struct.gsicc_namedcolor_s* %named_color, i32 1, i16* %arraydecay14, %struct.gs_imager_state_s* %42, %struct.gx_device_s* %43, %struct.cmm_profile_s* null, %struct.gsicc_rendering_param_s* %rendering_params) #3
  store i32 %call15, i32* %code, align 4, !tbaa !7
  %44 = load i32, i32* %code, align 4, !tbaa !7
  %cmp16 = icmp eq i32 %44, 0
  br i1 %cmp16, label %if.then.17, label %if.end

if.then.17:                                       ; preds = %if.then.7
  store i32 0, i32* %k, align 4, !tbaa !7
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.17
  %45 = load i32, i32* %k, align 4, !tbaa !7
  %46 = load i32, i32* %num_des_comps, align 4, !tbaa !7
  %cmp18 = icmp slt i32 %45, %46
  br i1 %cmp18, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %47 = load i32, i32* %k, align 4, !tbaa !7
  %idxprom = sext i32 %47 to i64
  %arrayidx = getelementptr inbounds [64 x i16], [64 x i16]* %device_values, i32 0, i64 %idxprom
  %48 = load i16, i16* %arrayidx, align 2, !tbaa !65
  %conv = uitofp i16 %48 to float
  %conv19 = fpext float %conv to double
  %div = fdiv double %conv19, 6.553500e+04
  %add = fadd double %div, 0x3EF0010010010010
  %mul = fmul double %add, 3.276000e+04
  %conv20 = fptosi double %mul to i16
  %49 = load i32, i32* %k, align 4, !tbaa !7
  %idxprom21 = sext i32 %49 to i64
  %50 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %arrayidx22 = getelementptr inbounds i16, i16* %50, i64 %idxprom21
  store i16 %conv20, i16* %arrayidx22, align 2, !tbaa !65
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %51 = load i32, i32* %k, align 4, !tbaa !7
  %inc = add nsw i32 %51, 1
  store i32 %inc, i32* %k, align 4, !tbaa !7
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then.7
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.end
  %52 = bitcast %struct.gsicc_rendering_param_s* %rendering_params to i8*
  call void @llvm.lifetime.end(i64 24, i8* %52) #2
  %53 = bitcast i32* %name_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #2
  %54 = bitcast i8** %pname to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #2
  %55 = bitcast i64* %name to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #2
  %56 = bitcast [64 x i16]* %device_values to i8*
  call void @llvm.lifetime.end(i64 128, i8* %56) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.115 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.27

if.end.27:                                        ; preds = %cleanup.cont, %if.then
  %57 = load %struct.gs_device_n_map_s*, %struct.gs_device_n_map_s** %map, align 8, !tbaa !1
  %cache_valid = getelementptr inbounds %struct.gs_device_n_map_s, %struct.gs_device_n_map_s* %57, i32 0, i32 3
  %58 = load i32, i32* %cache_valid, align 4, !tbaa !66
  %tobool28 = icmp ne i32 %58, 0
  br i1 %tobool28, label %land.lhs.true.29, label %if.end.51

land.lhs.true.29:                                 ; preds = %if.end.27
  %59 = load %struct.gs_device_n_map_s*, %struct.gs_device_n_map_s** %map, align 8, !tbaa !1
  %tint = getelementptr inbounds %struct.gs_device_n_map_s, %struct.gs_device_n_map_s* %59, i32 0, i32 4
  %arrayidx30 = getelementptr inbounds [64 x float], [64 x float]* %tint, i32 0, i64 0
  %60 = load float, float* %arrayidx30, align 4, !tbaa !5
  %61 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pc.addr, align 8, !tbaa !1
  %paint31 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %61, i32 0, i32 1
  %values32 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint31, i32 0, i32 0
  %arrayidx33 = getelementptr inbounds [64 x float], [64 x float]* %values32, i32 0, i64 0
  %62 = load float, float* %arrayidx33, align 4, !tbaa !5
  %cmp34 = fcmp oeq float %60, %62
  br i1 %cmp34, label %if.then.36, label %if.end.51

if.then.36:                                       ; preds = %land.lhs.true.29
  %63 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %63) #2
  %64 = bitcast i32* %num_out to i8*
  call void @llvm.lifetime.start(i64 4, i8* %64) #2
  %65 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pacs, align 8, !tbaa !1
  %call37 = call i32 @gs_color_space_num_components(%struct.gs_color_space_s* %65) #3
  store i32 %call37, i32* %num_out, align 4, !tbaa !7
  store i32 0, i32* %i, align 4, !tbaa !7
  br label %for.cond.38

for.cond.38:                                      ; preds = %for.inc.46, %if.then.36
  %66 = load i32, i32* %i, align 4, !tbaa !7
  %67 = load i32, i32* %num_out, align 4, !tbaa !7
  %cmp39 = icmp slt i32 %66, %67
  br i1 %cmp39, label %for.body.41, label %for.end.48

for.body.41:                                      ; preds = %for.cond.38
  %68 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom42 = sext i32 %68 to i64
  %69 = load %struct.gs_device_n_map_s*, %struct.gs_device_n_map_s** %map, align 8, !tbaa !1
  %conc = getelementptr inbounds %struct.gs_device_n_map_s, %struct.gs_device_n_map_s* %69, i32 0, i32 5
  %arrayidx43 = getelementptr inbounds [64 x i16], [64 x i16]* %conc, i32 0, i64 %idxprom42
  %70 = load i16, i16* %arrayidx43, align 2, !tbaa !65
  %71 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom44 = sext i32 %71 to i64
  %72 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %arrayidx45 = getelementptr inbounds i16, i16* %72, i64 %idxprom44
  store i16 %70, i16* %arrayidx45, align 2, !tbaa !65
  br label %for.inc.46

for.inc.46:                                       ; preds = %for.body.41
  %73 = load i32, i32* %i, align 4, !tbaa !7
  %inc47 = add nsw i32 %73, 1
  store i32 %inc47, i32* %i, align 4, !tbaa !7
  br label %for.cond.38

for.end.48:                                       ; preds = %for.cond.38
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %74 = bitcast i32* %num_out to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #2
  %75 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #2
  br label %cleanup.115

if.end.51:                                        ; preds = %land.lhs.true.29, %if.end.27
  %76 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params52 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %76, i32 0, i32 7
  %separation53 = bitcast %union.anon* %params52 to %struct.gs_separation_params_s*
  %map54 = getelementptr inbounds %struct.gs_separation_params_s, %struct.gs_separation_params_s* %separation53, i32 0, i32 1
  %77 = load %struct.gs_device_n_map_s*, %struct.gs_device_n_map_s** %map54, align 8, !tbaa !45
  %tint_transform = getelementptr inbounds %struct.gs_device_n_map_s, %struct.gs_device_n_map_s* %77, i32 0, i32 1
  %78 = load i32 (float*, float*, %struct.gs_imager_state_s*, i8*)*, i32 (float*, float*, %struct.gs_imager_state_s*, i8*)** %tint_transform, align 8, !tbaa !68
  %79 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pc.addr, align 8, !tbaa !1
  %paint55 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %79, i32 0, i32 1
  %values56 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint55, i32 0, i32 0
  %arraydecay57 = getelementptr inbounds [64 x float], [64 x float]* %values56, i32 0, i32 0
  %paint58 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values59 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint58, i32 0, i32 0
  %arrayidx60 = getelementptr inbounds [64 x float], [64 x float]* %values59, i32 0, i64 0
  %80 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %81 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params61 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %81, i32 0, i32 7
  %separation62 = bitcast %union.anon* %params61 to %struct.gs_separation_params_s*
  %map63 = getelementptr inbounds %struct.gs_separation_params_s, %struct.gs_separation_params_s* %separation62, i32 0, i32 1
  %82 = load %struct.gs_device_n_map_s*, %struct.gs_device_n_map_s** %map63, align 8, !tbaa !45
  %tint_transform_data = getelementptr inbounds %struct.gs_device_n_map_s, %struct.gs_device_n_map_s* %82, i32 0, i32 2
  %83 = load i8*, i8** %tint_transform_data, align 8, !tbaa !69
  %call64 = call i32 %78(float* %arraydecay57, float* %arrayidx60, %struct.gs_imager_state_s* %80, i8* %83) #3
  store i32 %call64, i32* %code, align 4, !tbaa !7
  %84 = load i32, i32* %code, align 4, !tbaa !7
  %cmp65 = icmp slt i32 %84, 0
  br i1 %cmp65, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %if.end.51
  %85 = load i32, i32* %code, align 4, !tbaa !7
  store i32 %85, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.115

if.end.68:                                        ; preds = %if.end.51
  %86 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pacs, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %86, i32 0, i32 0
  %87 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !29
  %restrict_color = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %87, i32 0, i32 6
  %88 = load void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)** %restrict_color, align 8, !tbaa !70
  %89 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pacs, align 8, !tbaa !1
  call void %88(%struct.gs_client_color_s* %cc, %struct.gs_color_space_s* %89) #3
  %90 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pacs, align 8, !tbaa !1
  %call69 = call i32 @gs_color_space_is_PSCIE(%struct.gs_color_space_s* %90) #3
  %tobool70 = icmp ne i32 %call69, 0
  br i1 %tobool70, label %if.then.71, label %if.end.80

if.then.71:                                       ; preds = %if.end.68
  %91 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pacs, align 8, !tbaa !1
  %call72 = call i32 @rescale_cie_colors(%struct.gs_color_space_s* %91, %struct.gs_client_color_s* %cc) #3
  %92 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pacs, align 8, !tbaa !1
  %icc_equivalent = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %92, i32 0, i32 4
  %93 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_equivalent, align 8, !tbaa !27
  %cmp73 = icmp eq %struct.gs_color_space_s* %93, null
  br i1 %cmp73, label %if.then.75, label %if.end.78

if.then.75:                                       ; preds = %if.then.71
  %94 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pacs, align 8, !tbaa !1
  %95 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %memory76 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %95, i32 0, i32 1
  %96 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory76, align 8, !tbaa !28
  %call77 = call i32 @gs_colorspace_set_icc_equivalent(%struct.gs_color_space_s* %94, i32* %is_lab, %struct.gs_memory_s* %96) #3
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.75, %if.then.71
  %97 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pacs, align 8, !tbaa !1
  %icc_equivalent79 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %97, i32 0, i32 4
  %98 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_equivalent79, align 8, !tbaa !27
  store %struct.gs_color_space_s* %98, %struct.gs_color_space_s** %pacs, align 8, !tbaa !1
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.78, %if.end.68
  %99 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pacs, align 8, !tbaa !1
  %cmm_icc_profile_data = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %99, i32 0, i32 6
  %100 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data, align 8, !tbaa !71
  %data_cs = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %100, i32 0, i32 5
  %101 = load i32, i32* %data_cs, align 4, !tbaa !72
  %cmp81 = icmp eq i32 %101, 6
  br i1 %cmp81, label %if.then.85, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.80
  %102 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pacs, align 8, !tbaa !1
  %cmm_icc_profile_data83 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %102, i32 0, i32 6
  %103 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data83, align 8, !tbaa !71
  %islab = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %103, i32 0, i32 2
  %104 = load i32, i32* %islab, align 4, !tbaa !75
  %tobool84 = icmp ne i32 %104, 0
  br i1 %tobool84, label %if.then.85, label %if.end.112

if.then.85:                                       ; preds = %lor.lhs.false, %if.end.80
  %paint86 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values87 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint86, i32 0, i32 0
  %arrayidx88 = getelementptr inbounds [64 x float], [64 x float]* %values87, i32 0, i64 0
  %105 = load float, float* %arrayidx88, align 4, !tbaa !5
  %conv89 = fpext float %105 to double
  %div90 = fdiv double %conv89, 1.000000e+02
  %conv91 = fptrunc double %div90 to float
  store float %conv91, float* %arrayidx88, align 4, !tbaa !5
  %paint92 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values93 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint92, i32 0, i32 0
  %arrayidx94 = getelementptr inbounds [64 x float], [64 x float]* %values93, i32 0, i64 1
  %106 = load float, float* %arrayidx94, align 4, !tbaa !5
  %add95 = fadd float %106, 1.280000e+02
  %conv96 = fpext float %add95 to double
  %div97 = fdiv double %conv96, 2.550000e+02
  %conv98 = fptrunc double %div97 to float
  %paint99 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values100 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint99, i32 0, i32 0
  %arrayidx101 = getelementptr inbounds [64 x float], [64 x float]* %values100, i32 0, i64 1
  store float %conv98, float* %arrayidx101, align 4, !tbaa !5
  %paint102 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values103 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint102, i32 0, i32 0
  %arrayidx104 = getelementptr inbounds [64 x float], [64 x float]* %values103, i32 0, i64 2
  %107 = load float, float* %arrayidx104, align 4, !tbaa !5
  %add105 = fadd float %107, 1.280000e+02
  %conv106 = fpext float %add105 to double
  %div107 = fdiv double %conv106, 2.550000e+02
  %conv108 = fptrunc double %div107 to float
  %paint109 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values110 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint109, i32 0, i32 0
  %arrayidx111 = getelementptr inbounds [64 x float], [64 x float]* %values110, i32 0, i64 2
  store float %conv108, float* %arrayidx111, align 4, !tbaa !5
  br label %if.end.112

if.end.112:                                       ; preds = %if.then.85, %lor.lhs.false
  %108 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pacs, align 8, !tbaa !1
  %type113 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %108, i32 0, i32 0
  %109 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type113, align 8, !tbaa !29
  %concretize_color = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %109, i32 0, i32 8
  %110 = load i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)** %concretize_color, align 8, !tbaa !76
  %111 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pacs, align 8, !tbaa !1
  %112 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %113 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %114 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call114 = call i32 %110(%struct.gs_client_color_s* %cc, %struct.gs_color_space_s* %111, i16* %112, %struct.gs_imager_state_s* %113, %struct.gx_device_s* %114) #3
  store i32 %call114, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.115

cleanup.115:                                      ; preds = %if.end.112, %if.then.67, %for.end.48, %cleanup
  %115 = bitcast %struct.gs_device_n_map_s** %map to i8*
  call void @llvm.lifetime.end(i64 8, i8* %115) #2
  br label %cleanup.122

if.else:                                          ; preds = %land.lhs.true, %entry
  %116 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pc.addr, align 8, !tbaa !1
  %paint116 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %116, i32 0, i32 1
  %values117 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint116, i32 0, i32 0
  %arrayidx118 = getelementptr inbounds [64 x float], [64 x float]* %values117, i32 0, i64 0
  %117 = load float, float* %arrayidx118, align 4, !tbaa !5
  %call119 = call signext i16 @gx_unit_frac(float %117) #3
  %118 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %arrayidx120 = getelementptr inbounds i16, i16* %118, i64 0
  store i16 %call119, i16* %arrayidx120, align 2, !tbaa !65
  br label %if.end.121

if.end.121:                                       ; preds = %if.else
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.122

cleanup.122:                                      ; preds = %if.end.121, %cleanup.115
  %119 = bitcast %struct.gsicc_namedcolor_s* %named_color to i8*
  call void @llvm.lifetime.end(i64 24, i8* %119) #2
  %120 = bitcast i32* %num_des_comps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %120) #2
  %121 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %121) #2
  %122 = bitcast i32* %is_lab to i8*
  call void @llvm.lifetime.end(i64 4, i8* %122) #2
  %123 = bitcast %struct.gs_color_space_s** %pacs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %123) #2
  %124 = bitcast %struct.gs_client_color_s* %cc to i8*
  call void @llvm.lifetime.end(i64 264, i8* %124) #2
  %125 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %125) #2
  %126 = load i32, i32* %retval
  ret i32 %126
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_remap_concrete_Separation(i16* %pconc, %struct.gs_color_space_s* %pcs, %struct.gx_device_color_s* %pdc, %struct.gs_imager_state_s* %pis, %struct.gx_device_s* %dev, i32 %select) #1 {
entry:
  %retval = alloca i32, align 4
  %pconc.addr = alloca i16*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pdc.addr = alloca %struct.gx_device_color_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %select.addr = alloca i32, align 4
  %pacs = alloca %struct.gs_color_space_s*, align 8
  store i16* %pconc, i16** %pconc.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdc, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %select, i32* %select.addr, align 4, !tbaa !77
  %0 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %color_component_map = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %0, i32 0, i32 50
  %use_alt_cspace = getelementptr inbounds %struct.gs_devicen_color_map_s, %struct.gs_devicen_color_map_s* %color_component_map, i32 0, i32 0
  %1 = load i32, i32* %use_alt_cspace, align 4, !tbaa !9
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = bitcast %struct.gs_color_space_s** %pacs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %base_space = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %3, i32 0, i32 3
  %4 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space, align 8, !tbaa !24
  store %struct.gs_color_space_s* %4, %struct.gs_color_space_s** %pacs, align 8, !tbaa !1
  %5 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pacs, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %5, i32 0, i32 0
  %6 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !29
  %remap_concrete_color = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %6, i32 0, i32 9
  %7 = load i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %remap_concrete_color, align 8, !tbaa !78
  %8 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %9 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pacs, align 8, !tbaa !1
  %10 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %11 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %13 = load i32, i32* %select.addr, align 4, !tbaa !77
  %call = call i32 %7(i16* %8, %struct.gs_color_space_s* %9, %struct.gx_device_color_s* %10, %struct.gs_imager_state_s* %11, %struct.gx_device_s* %12, i32 %13) #3
  store i32 %call, i32* %retval
  %14 = bitcast %struct.gs_color_space_s** %pacs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #2
  br label %return

if.else:                                          ; preds = %entry
  %15 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %cmap_procs = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %15, i32 0, i32 49
  %16 = load %struct.gx_color_map_procs_s*, %struct.gx_color_map_procs_s** %cmap_procs, align 8, !tbaa !79
  %map_separation = getelementptr inbounds %struct.gx_color_map_procs_s, %struct.gx_color_map_procs_s* %16, i32 0, i32 4
  %17 = load void (i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %map_separation, align 8, !tbaa !80
  %18 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %18, i64 0
  %19 = load i16, i16* %arrayidx, align 2, !tbaa !65
  %20 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %21 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %22 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %23 = load i32, i32* %select.addr, align 4, !tbaa !77
  call void %17(i16 signext %19, %struct.gx_device_color_s* %20, %struct.gs_imager_state_s* %21, %struct.gx_device_s* %22, i32 %23) #3
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %24 = load i32, i32* %retval
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_remap_Separation(%struct.gs_client_color_s* %pcc, %struct.gs_color_space_s* %pcs, %struct.gx_device_color_s* %pdc, %struct.gs_imager_state_s* %pis, %struct.gx_device_s* %dev, i32 %select) #1 {
entry:
  %pcc.addr = alloca %struct.gs_client_color_s*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pdc.addr = alloca %struct.gx_device_color_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %select.addr = alloca i32, align 4
  %code = alloca i32, align 4
  store %struct.gs_client_color_s* %pcc, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdc, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %select, i32* %select.addr, align 4, !tbaa !77
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 0, i32* %code, align 4, !tbaa !7
  %1 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %1, i32 0, i32 7
  %separation = bitcast %union.anon* %params to %struct.gs_separation_params_s*
  %sep_type = getelementptr inbounds %struct.gs_separation_params_s, %struct.gs_separation_params_s* %separation, i32 0, i32 2
  %2 = load i32, i32* %sep_type, align 4, !tbaa !42
  %cmp = icmp ne i32 %2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %4 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %5 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %6 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %8 = load i32, i32* %select.addr, align 4, !tbaa !77
  %call = call i32 @gx_default_remap_color(%struct.gs_client_color_s* %3, %struct.gs_color_space_s* %4, %struct.gx_device_color_s* %5, %struct.gs_imager_state_s* %6, %struct.gx_device_s* %7, i32 %8) #3
  store i32 %call, i32* %code, align 4, !tbaa !7
  br label %if.end

if.else:                                          ; preds = %entry
  %9 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %9, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_null, %struct.gx_device_color_type_s** %type, align 8, !tbaa !82
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %10 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %paint = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %10, i32 0, i32 1
  %values = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint, i32 0, i32 0
  %arrayidx = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 0
  %11 = load float, float* %arrayidx, align 4, !tbaa !5
  %12 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %ccolor = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %12, i32 0, i32 4
  %paint1 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %ccolor, i32 0, i32 1
  %values2 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint1, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [64 x float], [64 x float]* %values2, i32 0, i64 0
  store float %11, float* %arrayidx3, align 4, !tbaa !5
  %13 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %ccolor_valid = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %13, i32 0, i32 3
  store i32 1, i32* %ccolor_valid, align 4, !tbaa !89
  %14 = load i32, i32* %code, align 4, !tbaa !7
  %15 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #2
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_install_Separation(%struct.gs_color_space_s* %pcs, %struct.gs_state_s* %pgs) #1 {
entry:
  %retval = alloca i32, align 4
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call = call i32 @check_Separation_component_name(%struct.gs_color_space_s* %1, %struct.gs_state_s* %2) #3
  store i32 %call, i32* %code, align 4, !tbaa !7
  %3 = load i32, i32* %code, align 4, !tbaa !7
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %code, align 4, !tbaa !7
  store i32 %4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call1 = call i32 @using_alt_color_space(%struct.gs_state_s* %5) #3
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %6, i32 0, i32 69
  %arrayidx = getelementptr inbounds [2 x %struct.anon.1], [2 x %struct.anon.1]* %color, i32 0, i64 0
  %color_space = getelementptr inbounds %struct.anon.1, %struct.anon.1* %arrayidx, i32 0, i32 0
  %7 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %color_space, align 8, !tbaa !90
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %7, i32 0, i32 7
  %separation = bitcast %union.anon* %params to %struct.gs_separation_params_s*
  %use_alt_cspace = getelementptr inbounds %struct.gs_separation_params_s, %struct.gs_separation_params_s* %separation, i32 0, i32 3
  store i32 %call1, i32* %use_alt_cspace, align 4, !tbaa !44
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color2 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %8, i32 0, i32 69
  %arrayidx3 = getelementptr inbounds [2 x %struct.anon.1], [2 x %struct.anon.1]* %color2, i32 0, i64 0
  %color_space4 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %arrayidx3, i32 0, i32 0
  %9 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %color_space4, align 8, !tbaa !90
  %params5 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %9, i32 0, i32 7
  %separation6 = bitcast %union.anon* %params5 to %struct.gs_separation_params_s*
  %use_alt_cspace7 = getelementptr inbounds %struct.gs_separation_params_s, %struct.gs_separation_params_s* %separation6, i32 0, i32 3
  %10 = load i32, i32* %use_alt_cspace7, align 4, !tbaa !44
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end
  %11 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %base_space = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %11, i32 0, i32 3
  %12 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space, align 8, !tbaa !24
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %12, i32 0, i32 0
  %13 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !29
  %install_cspace = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %13, i32 0, i32 11
  %14 = load i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)** %install_cspace, align 8, !tbaa !92
  %15 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %base_space9 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %15, i32 0, i32 3
  %16 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space9, align 8, !tbaa !24
  %17 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call10 = call i32 %14(%struct.gs_color_space_s* %16, %struct.gs_state_s* %17) #3
  store i32 %call10, i32* %code, align 4, !tbaa !7
  br label %if.end.16

if.else:                                          ; preds = %if.end
  %18 = load i32, i32* %code, align 4, !tbaa !7
  %cmp11 = icmp sge i32 %18, 0
  br i1 %cmp11, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %if.else
  %19 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %19, i32 0, i32 78
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %device, align 8, !tbaa !93
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %20, i32 0, i32 42
  %update_spot_equivalent_colors = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 59
  %21 = load i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)** %update_spot_equivalent_colors, align 8, !tbaa !96
  %22 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device13 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %22, i32 0, i32 78
  %23 = load %struct.gx_device_s*, %struct.gx_device_s** %device13, align 8, !tbaa !93
  %24 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call14 = call i32 %21(%struct.gx_device_s* %23, %struct.gs_state_s* %24) #3
  store i32 %call14, i32* %code, align 4, !tbaa !7
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.12, %if.else
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.then.8
  %25 = load i32, i32* %code, align 4, !tbaa !7
  store i32 %25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.16, %if.then
  %26 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #2
  %27 = load i32, i32* %retval
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_set_overprint_Separation(%struct.gs_color_space_s* %pcs, %struct.gs_state_s* %pgs) #1 {
entry:
  %retval = alloca i32, align 4
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pcmap = alloca %struct.gs_devicen_color_map_s*, align 8
  %dev = alloca %struct.gx_device_s*, align 8
  %dev_profile = alloca %struct.cmm_dev_profile_s*, align 8
  %cleanup.dest.slot = alloca i32
  %params = alloca %struct.gs_overprint_params_s, align 8
  %mcomp = alloca i32, align 4
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_devicen_color_map_s** %pcmap to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color_component_map = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i32 0, i32 50
  store %struct.gs_devicen_color_map_s* %color_component_map, %struct.gs_devicen_color_map_s** %pcmap, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %3, i32 0, i32 78
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %device, align 8, !tbaa !93
  store %struct.gx_device_s* %4, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %5 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %6, i32 0, i32 42
  %get_profile = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 67
  %7 = load i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile, align 8, !tbaa !97
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %call = call i32 %7(%struct.gx_device_s* %8, %struct.cmm_dev_profile_s** %dev_profile) #3
  %9 = load %struct.gs_devicen_color_map_s*, %struct.gs_devicen_color_map_s** %pcmap, align 8, !tbaa !1
  %use_alt_cspace = getelementptr inbounds %struct.gs_devicen_color_map_s, %struct.gs_devicen_color_map_s* %9, i32 0, i32 0
  %10 = load i32, i32* %use_alt_cspace, align 4, !tbaa !98
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then, label %if.else.16

if.then:                                          ; preds = %entry
  %11 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %sim_overprint = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %11, i32 0, i32 10
  %12 = load i32, i32* %sim_overprint, align 4, !tbaa !99
  %tobool1 = icmp ne i32 %12, 0
  br i1 %tobool1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %13, i32 0, i32 11
  %polarity = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 2
  %14 = load i32, i32* %polarity, align 4, !tbaa !101
  %cmp = icmp eq i32 %14, 0
  br i1 %cmp, label %land.lhs.true.2, label %if.else

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %15 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %color_info3 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %15, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info3, i32 0, i32 1
  %16 = load i32, i32* %num_components, align 4, !tbaa !32
  %cmp4 = icmp sgt i32 %16, 1
  br i1 %cmp4, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.2
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %color_info5 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %17, i32 0, i32 11
  %gray_index = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info5, i32 0, i32 4
  %18 = load i8, i8* %gray_index, align 1, !tbaa !102
  %conv = zext i8 %18 to i32
  %cmp6 = icmp eq i32 %conv, 255
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %land.lhs.true.2
  %19 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %color_info8 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %19, i32 0, i32 11
  %max_color = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info8, i32 0, i32 6
  %20 = load i32, i32* %max_color, align 4, !tbaa !103
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %21 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %color_info9 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %21, i32 0, i32 11
  %max_gray = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info9, i32 0, i32 5
  %22 = load i32, i32* %max_gray, align 4, !tbaa !104
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %20, %cond.true ], [ %22, %cond.false ]
  %cmp10 = icmp ult i32 %cond, 31
  br i1 %cmp10, label %if.else, label %if.then.12

if.then.12:                                       ; preds = %cond.end
  %23 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %base_space = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %23, i32 0, i32 3
  %24 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space, align 8, !tbaa !24
  %25 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call13 = call i32 @gx_simulated_set_overprint(%struct.gs_color_space_s* %24, %struct.gs_state_s* %25) #3
  store i32 %call13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %cond.end, %land.lhs.true, %if.then
  %26 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %base_space14 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %26, i32 0, i32 3
  %27 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space14, align 8, !tbaa !24
  %28 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call15 = call i32 @gx_spot_colors_set_overprint(%struct.gs_color_space_s* %27, %struct.gs_state_s* %28) #3
  store i32 %call15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.16:                                       ; preds = %entry
  %29 = bitcast %struct.gs_overprint_params_s* %params to i8*
  call void @llvm.lifetime.start(i64 32, i8* %29) #2
  %blendspot = getelementptr inbounds %struct.gs_overprint_params_s, %struct.gs_overprint_params_s* %params, i32 0, i32 5
  store i32 0, i32* %blendspot, align 4, !tbaa !105
  %30 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %overprint = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %30, i32 0, i32 21
  %31 = load i32, i32* %overprint, align 4, !tbaa !107
  %tobool17 = icmp ne i32 %31, 0
  br i1 %tobool17, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.else.16
  %32 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params18 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %32, i32 0, i32 7
  %separation = bitcast %union.anon* %params18 to %struct.gs_separation_params_s*
  %sep_type = getelementptr inbounds %struct.gs_separation_params_s, %struct.gs_separation_params_s* %separation, i32 0, i32 2
  %33 = load i32, i32* %sep_type, align 4, !tbaa !42
  %cmp19 = icmp ne i32 %33, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.else.16
  %34 = phi i1 [ false, %if.else.16 ], [ %cmp19, %land.rhs ]
  %land.ext = zext i1 %34 to i32
  %retain_any_comps = getelementptr inbounds %struct.gs_overprint_params_s, %struct.gs_overprint_params_s* %params, i32 0, i32 0
  store i32 %land.ext, i32* %retain_any_comps, align 4, !tbaa !108
  %retain_any_comps21 = getelementptr inbounds %struct.gs_overprint_params_s, %struct.gs_overprint_params_s* %params, i32 0, i32 0
  %35 = load i32, i32* %retain_any_comps21, align 4, !tbaa !108
  %tobool22 = icmp ne i32 %35, 0
  br i1 %tobool22, label %if.then.23, label %if.end.35

if.then.23:                                       ; preds = %land.end
  %retain_spot_comps = getelementptr inbounds %struct.gs_overprint_params_s, %struct.gs_overprint_params_s* %params, i32 0, i32 1
  store i32 0, i32* %retain_spot_comps, align 4, !tbaa !109
  %drawn_comps = getelementptr inbounds %struct.gs_overprint_params_s, %struct.gs_overprint_params_s* %params, i32 0, i32 3
  store i64 0, i64* %drawn_comps, align 8, !tbaa !110
  %k_value = getelementptr inbounds %struct.gs_overprint_params_s, %struct.gs_overprint_params_s* %params, i32 0, i32 4
  store i16 0, i16* %k_value, align 2, !tbaa !111
  %36 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params24 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %36, i32 0, i32 7
  %separation25 = bitcast %union.anon* %params24 to %struct.gs_separation_params_s*
  %sep_type26 = getelementptr inbounds %struct.gs_separation_params_s, %struct.gs_separation_params_s* %separation25, i32 0, i32 2
  %37 = load i32, i32* %sep_type26, align 4, !tbaa !42
  %cmp27 = icmp ne i32 %37, 0
  br i1 %cmp27, label %if.then.29, label %if.end.34

if.then.29:                                       ; preds = %if.then.23
  %38 = bitcast i32* %mcomp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %38) #2
  %39 = load %struct.gs_devicen_color_map_s*, %struct.gs_devicen_color_map_s** %pcmap, align 8, !tbaa !1
  %color_map = getelementptr inbounds %struct.gs_devicen_color_map_s, %struct.gs_devicen_color_map_s* %39, i32 0, i32 5
  %arrayidx = getelementptr inbounds [64 x i32], [64 x i32]* %color_map, i32 0, i64 0
  %40 = load i32, i32* %arrayidx, align 4, !tbaa !7
  store i32 %40, i32* %mcomp, align 4, !tbaa !7
  %41 = load i32, i32* %mcomp, align 4, !tbaa !7
  %cmp30 = icmp sge i32 %41, 0
  br i1 %cmp30, label %if.then.32, label %if.end

if.then.32:                                       ; preds = %if.then.29
  %42 = load i32, i32* %mcomp, align 4, !tbaa !7
  %sh_prom = zext i32 %42 to i64
  %shl = shl i64 1, %sh_prom
  %drawn_comps33 = getelementptr inbounds %struct.gs_overprint_params_s, %struct.gs_overprint_params_s* %params, i32 0, i32 3
  %43 = load i64, i64* %drawn_comps33, align 8, !tbaa !110
  %or = or i64 %43, %shl
  store i64 %or, i64* %drawn_comps33, align 8, !tbaa !110
  br label %if.end

if.end:                                           ; preds = %if.then.32, %if.then.29
  %44 = bitcast i32* %mcomp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #2
  br label %if.end.34

if.end.34:                                        ; preds = %if.end, %if.then.23
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %land.end
  %45 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %effective_overprint_mode = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %45, i32 0, i32 23
  store i32 0, i32* %effective_overprint_mode, align 4, !tbaa !112
  %46 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call36 = call i32 @gs_state_update_overprint(%struct.gs_state_s* %46, %struct.gs_overprint_params_s* %params) #3
  store i32 %call36, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %47 = bitcast %struct.gs_overprint_params_s* %params to i8*
  call void @llvm.lifetime.end(i64 32, i8* %47) #2
  br label %cleanup

cleanup:                                          ; preds = %if.end.35, %if.else, %if.then.12
  %48 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #2
  %49 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #2
  %50 = bitcast %struct.gs_devicen_color_map_s** %pcmap to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #2
  %51 = load i32, i32* %retval
  ret i32 %51
}

; Function Attrs: nounwind uwtable
define internal void @gx_final_Separation(%struct.gs_color_space_s* %pcs) #1 {
entry:
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %0, i32 0, i32 7
  %separation = bitcast %union.anon* %params to %struct.gs_separation_params_s*
  %map = getelementptr inbounds %struct.gs_separation_params_s, %struct.gs_separation_params_s* %separation, i32 0, i32 1
  %1 = load %struct.gs_device_n_map_s*, %struct.gs_device_n_map_s** %map, align 8, !tbaa !45
  %tobool = icmp ne %struct.gs_device_n_map_s* %1, null
  br i1 %tobool, label %if.then, label %if.end.33

if.then:                                          ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %if.then
  br label %do.body.2

do.body.2:                                        ; preds = %do.body.1
  br label %do.end

do.end:                                           ; preds = %do.body.2
  %2 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params3 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %2, i32 0, i32 7
  %separation4 = bitcast %union.anon* %params3 to %struct.gs_separation_params_s*
  %map5 = getelementptr inbounds %struct.gs_separation_params_s, %struct.gs_separation_params_s* %separation4, i32 0, i32 1
  %3 = load %struct.gs_device_n_map_s*, %struct.gs_device_n_map_s** %map5, align 8, !tbaa !45
  %rc = getelementptr inbounds %struct.gs_device_n_map_s, %struct.gs_device_n_map_s* %3, i32 0, i32 0
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %4 = load i64, i64* %ref_count, align 8, !tbaa !113
  %add = add nsw i64 %4, -1
  store i64 %add, i64* %ref_count, align 8, !tbaa !113
  br label %do.end.6

do.end.6:                                         ; preds = %do.end
  %5 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params7 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %5, i32 0, i32 7
  %separation8 = bitcast %union.anon* %params7 to %struct.gs_separation_params_s*
  %map9 = getelementptr inbounds %struct.gs_separation_params_s, %struct.gs_separation_params_s* %separation8, i32 0, i32 1
  %6 = load %struct.gs_device_n_map_s*, %struct.gs_device_n_map_s** %map9, align 8, !tbaa !45
  %rc10 = getelementptr inbounds %struct.gs_device_n_map_s, %struct.gs_device_n_map_s* %6, i32 0, i32 0
  %ref_count11 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc10, i32 0, i32 0
  %7 = load i64, i64* %ref_count11, align 8, !tbaa !113
  %tobool12 = icmp ne i64 %7, 0
  br i1 %tobool12, label %if.else, label %if.then.13

if.then.13:                                       ; preds = %do.end.6
  br label %do.body.14

do.body.14:                                       ; preds = %if.then.13
  br label %do.body.15

do.body.15:                                       ; preds = %do.body.14
  br label %do.end.16

do.end.16:                                        ; preds = %do.body.15
  %8 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params17 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %8, i32 0, i32 7
  %separation18 = bitcast %union.anon* %params17 to %struct.gs_separation_params_s*
  %map19 = getelementptr inbounds %struct.gs_separation_params_s, %struct.gs_separation_params_s* %separation18, i32 0, i32 1
  %9 = load %struct.gs_device_n_map_s*, %struct.gs_device_n_map_s** %map19, align 8, !tbaa !45
  %rc20 = getelementptr inbounds %struct.gs_device_n_map_s, %struct.gs_device_n_map_s* %9, i32 0, i32 0
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc20, i32 0, i32 2
  %10 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !114
  %11 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params21 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %11, i32 0, i32 7
  %separation22 = bitcast %union.anon* %params21 to %struct.gs_separation_params_s*
  %map23 = getelementptr inbounds %struct.gs_separation_params_s, %struct.gs_separation_params_s* %separation22, i32 0, i32 1
  %12 = load %struct.gs_device_n_map_s*, %struct.gs_device_n_map_s** %map23, align 8, !tbaa !45
  %rc24 = getelementptr inbounds %struct.gs_device_n_map_s, %struct.gs_device_n_map_s* %12, i32 0, i32 0
  %memory = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc24, i32 0, i32 1
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !115
  %14 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params25 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %14, i32 0, i32 7
  %separation26 = bitcast %union.anon* %params25 to %struct.gs_separation_params_s*
  %map27 = getelementptr inbounds %struct.gs_separation_params_s, %struct.gs_separation_params_s* %separation26, i32 0, i32 1
  %15 = load %struct.gs_device_n_map_s*, %struct.gs_device_n_map_s** %map27, align 8, !tbaa !45
  %16 = bitcast %struct.gs_device_n_map_s* %15 to i8*
  call void %10(%struct.gs_memory_s* %13, i8* %16, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0)) #3
  br label %do.end.28

do.end.28:                                        ; preds = %do.end.16
  br label %do.body.29

do.body.29:                                       ; preds = %do.end.28
  br label %do.end.30

do.end.30:                                        ; preds = %do.body.29
  br label %if.end

if.else:                                          ; preds = %do.end.6
  br label %do.body.31

do.body.31:                                       ; preds = %if.else
  br label %do.end.32

do.end.32:                                        ; preds = %do.body.31
  br label %if.end

if.end:                                           ; preds = %do.end.32, %do.end.30
  br label %if.end.33

if.end.33:                                        ; preds = %if.end, %do.body
  br label %do.end.34

do.end.34:                                        ; preds = %if.end.33
  ret void
}

declare void @gx_no_adjust_color_count(%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32) #0

; Function Attrs: nounwind uwtable
define internal i32 @gx_serialize_Separation(%struct.gs_color_space_s* %pcs, %struct.stream_s* %s) #1 {
entry:
  %retval = alloca i32, align 4
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %s.addr = alloca %struct.stream_s*, align 8
  %p = alloca %struct.gs_separation_params_s*, align 8
  %n = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_separation_params_s** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %1, i32 0, i32 7
  %separation = bitcast %union.anon* %params to %struct.gs_separation_params_s*
  store %struct.gs_separation_params_s* %separation, %struct.gs_separation_params_s** %p, align 8, !tbaa !1
  %2 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %5 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call = call i32 @gx_serialize_cspace_type(%struct.gs_color_space_s* %4, %struct.stream_s* %5) #3
  store i32 %call, i32* %code, align 4, !tbaa !7
  %6 = load i32, i32* %code, align 4, !tbaa !7
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %code, align 4, !tbaa !7
  store i32 %7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %9 = load %struct.gs_separation_params_s*, %struct.gs_separation_params_s** %p, align 8, !tbaa !1
  %sep_name = getelementptr inbounds %struct.gs_separation_params_s, %struct.gs_separation_params_s* %9, i32 0, i32 0
  %10 = bitcast i64* %sep_name to i8*
  %call1 = call i32 @sputs(%struct.stream_s* %8, i8* %10, i32 8, i32* %n) #3
  store i32 %call1, i32* %code, align 4, !tbaa !7
  %11 = load i32, i32* %code, align 4, !tbaa !7
  %cmp2 = icmp slt i32 %11, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %12 = load i32, i32* %code, align 4, !tbaa !7
  store i32 %12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %13 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %base_space = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %13, i32 0, i32 3
  %14 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space, align 8, !tbaa !24
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %14, i32 0, i32 0
  %15 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !29
  %serialize = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %15, i32 0, i32 15
  %16 = load i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)** %serialize, align 8, !tbaa !116
  %17 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %base_space5 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %17, i32 0, i32 3
  %18 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space5, align 8, !tbaa !24
  %19 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call6 = call i32 %16(%struct.gs_color_space_s* %18, %struct.stream_s* %19) #3
  store i32 %call6, i32* %code, align 4, !tbaa !7
  %20 = load i32, i32* %code, align 4, !tbaa !7
  %cmp7 = icmp slt i32 %20, 0
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.4
  %21 = load i32, i32* %code, align 4, !tbaa !7
  store i32 %21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.end.4
  %22 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %23 = load %struct.gs_separation_params_s*, %struct.gs_separation_params_s** %p, align 8, !tbaa !1
  %map = getelementptr inbounds %struct.gs_separation_params_s, %struct.gs_separation_params_s* %23, i32 0, i32 1
  %24 = load %struct.gs_device_n_map_s*, %struct.gs_device_n_map_s** %map, align 8, !tbaa !45
  %25 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call10 = call i32 @gx_serialize_device_n_map(%struct.gs_color_space_s* %22, %struct.gs_device_n_map_s* %24, %struct.stream_s* %25) #3
  store i32 %call10, i32* %code, align 4, !tbaa !7
  %26 = load i32, i32* %code, align 4, !tbaa !7
  %cmp11 = icmp slt i32 %26, 0
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.9
  %27 = load i32, i32* %code, align 4, !tbaa !7
  store i32 %27, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.13:                                        ; preds = %if.end.9
  %28 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %29 = load %struct.gs_separation_params_s*, %struct.gs_separation_params_s** %p, align 8, !tbaa !1
  %sep_type = getelementptr inbounds %struct.gs_separation_params_s, %struct.gs_separation_params_s* %29, i32 0, i32 2
  %30 = bitcast i32* %sep_type to i8*
  %call14 = call i32 @sputs(%struct.stream_s* %28, i8* %30, i32 4, i32* %n) #3
  store i32 %call14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.13, %if.then.12, %if.then.8, %if.then.3, %if.then
  %31 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #2
  %32 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #2
  %33 = bitcast %struct.gs_separation_params_s** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #2
  %34 = load i32, i32* %retval
  ret i32 %34
}

declare i32 @gx_cspace_is_linear_default(%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*) #0

declare i32 @gx_polarity_subtractive(%struct.gs_color_space_s*) #0

; Function Attrs: nounwind uwtable
define i32 @gs_cspace_new_Separation(%struct.gs_color_space_s** %ppcs, %struct.gs_color_space_s* %palt_cspace, %struct.gs_memory_s* %pmem) #1 {
entry:
  %retval = alloca i32, align 4
  %ppcs.addr = alloca %struct.gs_color_space_s**, align 8
  %palt_cspace.addr = alloca %struct.gs_color_space_s*, align 8
  %pmem.addr = alloca %struct.gs_memory_s*, align 8
  %pcs = alloca %struct.gs_color_space_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_color_space_s** %ppcs, %struct.gs_color_space_s*** %ppcs.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %palt_cspace, %struct.gs_color_space_s** %palt_cspace.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %pmem, %struct.gs_memory_s** %pmem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %palt_cspace.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_color_space_s* %2, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %palt_cspace.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %3, i32 0, i32 0
  %4 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !29
  %can_be_alt_space = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %4, i32 0, i32 2
  %5 = load i32, i32* %can_be_alt_space, align 4, !tbaa !117
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %pmem.addr, align 8, !tbaa !1
  %call = call %struct.gs_color_space_s* @gs_cspace_alloc(%struct.gs_memory_s* %6, %struct.gs_color_space_type_s* bitcast ({ i32, i32, i32, %struct.gs_memory_struct_type_s*, i32 (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, void (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)*, i32 (%struct.gs_color_space_s*)* }* @gs_color_space_type_Separation to %struct.gs_color_space_type_s*)) #3
  store %struct.gs_color_space_s* %call, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %7 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %cmp1 = icmp eq %struct.gs_color_space_s* %7, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %if.end
  %8 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %8, i32 0, i32 7
  %separation = bitcast %union.anon* %params to %struct.gs_separation_params_s*
  %map = getelementptr inbounds %struct.gs_separation_params_s, %struct.gs_separation_params_s* %separation, i32 0, i32 1
  store %struct.gs_device_n_map_s* null, %struct.gs_device_n_map_s** %map, align 8, !tbaa !45
  %9 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %params4 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %9, i32 0, i32 7
  %separation5 = bitcast %union.anon* %params4 to %struct.gs_separation_params_s*
  %map6 = getelementptr inbounds %struct.gs_separation_params_s, %struct.gs_separation_params_s* %separation5, i32 0, i32 1
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %pmem.addr, align 8, !tbaa !1
  %call7 = call i32 @alloc_device_n_map(%struct.gs_device_n_map_s** %map6, %struct.gs_memory_s* %10, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i32 0, i32 0)) #3
  store i32 %call7, i32* %code, align 4, !tbaa !7
  %11 = load i32, i32* %code, align 4, !tbaa !7
  %cmp8 = icmp slt i32 %11, 0
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.3
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %pmem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %12, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %13 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !118
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %pmem.addr, align 8, !tbaa !1
  %15 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %16 = bitcast %struct.gs_color_space_s* %15 to i8*
  call void %13(%struct.gs_memory_s* %14, i8* %16, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i32 0, i32 0)) #3
  %17 = load i32, i32* %code, align 4, !tbaa !7
  store i32 %17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %if.end.3
  %18 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %palt_cspace.addr, align 8, !tbaa !1
  %19 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %base_space = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %19, i32 0, i32 3
  store %struct.gs_color_space_s* %18, %struct.gs_color_space_s** %base_space, align 8, !tbaa !24
  %20 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %palt_cspace.addr, align 8, !tbaa !1
  call void @rc_increment_cs(%struct.gs_color_space_s* %20) #3
  %21 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %22 = load %struct.gs_color_space_s**, %struct.gs_color_space_s*** %ppcs.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %21, %struct.gs_color_space_s** %22, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.10, %if.then.9, %if.then.2, %if.then
  %23 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #2
  %24 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #2
  %25 = load i32, i32* %retval
  ret i32 %25
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare %struct.gs_color_space_s* @gs_cspace_alloc(%struct.gs_memory_s*, %struct.gs_color_space_type_s*) #0

declare i32 @alloc_device_n_map(%struct.gs_device_n_map_s**, %struct.gs_memory_s*, i8*) #0

declare void @rc_increment_cs(%struct.gs_color_space_s*) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define i32 @gs_cspace_set_sepr_function(%struct.gs_color_space_s* %pcspace, %struct.gs_function_s* %pfn) #1 {
entry:
  %retval = alloca i32, align 4
  %pcspace.addr = alloca %struct.gs_color_space_s*, align 8
  %pfn.addr = alloca %struct.gs_function_s*, align 8
  %pimap = alloca %struct.gs_device_n_map_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_color_space_s* %pcspace, %struct.gs_color_space_s** %pcspace.addr, align 8, !tbaa !1
  store %struct.gs_function_s* %pfn, %struct.gs_function_s** %pfn.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_device_n_map_s** %pimap to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcspace.addr, align 8, !tbaa !1
  %call = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %1) #3
  %cmp = icmp ne i32 %call, 9
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_function_s, %struct.gs_function_s* %2, i32 0, i32 1
  %m = getelementptr inbounds %struct.gs_function_params_s, %struct.gs_function_params_s* %params, i32 0, i32 0
  %3 = load i32, i32* %m, align 4, !tbaa !121
  %cmp1 = icmp ne i32 %3, 1
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %4 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn.addr, align 8, !tbaa !1
  %params3 = getelementptr inbounds %struct.gs_function_s, %struct.gs_function_s* %4, i32 0, i32 1
  %n = getelementptr inbounds %struct.gs_function_params_s, %struct.gs_function_params_s* %params3, i32 0, i32 2
  %5 = load i32, i32* %n, align 4, !tbaa !126
  %6 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcspace.addr, align 8, !tbaa !1
  %base_space = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %6, i32 0, i32 3
  %7 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space, align 8, !tbaa !24
  %call4 = call i32 @gs_color_space_num_components(%struct.gs_color_space_s* %7) #3
  %cmp5 = icmp ne i32 %5, %call4
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.2, %lor.lhs.false, %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.2
  %8 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcspace.addr, align 8, !tbaa !1
  %params6 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %8, i32 0, i32 7
  %separation = bitcast %union.anon* %params6 to %struct.gs_separation_params_s*
  %map = getelementptr inbounds %struct.gs_separation_params_s, %struct.gs_separation_params_s* %separation, i32 0, i32 1
  %9 = load %struct.gs_device_n_map_s*, %struct.gs_device_n_map_s** %map, align 8, !tbaa !45
  store %struct.gs_device_n_map_s* %9, %struct.gs_device_n_map_s** %pimap, align 8, !tbaa !1
  %10 = load %struct.gs_device_n_map_s*, %struct.gs_device_n_map_s** %pimap, align 8, !tbaa !1
  %tint_transform = getelementptr inbounds %struct.gs_device_n_map_s, %struct.gs_device_n_map_s* %10, i32 0, i32 1
  store i32 (float*, float*, %struct.gs_imager_state_s*, i8*)* @map_devn_using_function, i32 (float*, float*, %struct.gs_imager_state_s*, i8*)** %tint_transform, align 8, !tbaa !68
  %11 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn.addr, align 8, !tbaa !1
  %12 = bitcast %struct.gs_function_s* %11 to i8*
  %13 = load %struct.gs_device_n_map_s*, %struct.gs_device_n_map_s** %pimap, align 8, !tbaa !1
  %tint_transform_data = getelementptr inbounds %struct.gs_device_n_map_s, %struct.gs_device_n_map_s* %13, i32 0, i32 2
  store i8* %12, i8** %tint_transform_data, align 8, !tbaa !69
  %14 = load %struct.gs_device_n_map_s*, %struct.gs_device_n_map_s** %pimap, align 8, !tbaa !1
  %cache_valid = getelementptr inbounds %struct.gs_device_n_map_s, %struct.gs_device_n_map_s* %14, i32 0, i32 3
  store i32 0, i32* %cache_valid, align 4, !tbaa !66
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %15 = bitcast %struct.gs_device_n_map_s** %pimap to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #2
  %16 = load i32, i32* %retval
  ret i32 %16
}

declare i32 @gs_color_space_get_index(%struct.gs_color_space_s*) #0

declare i32 @gs_color_space_num_components(%struct.gs_color_space_s*) #0

declare i32 @map_devn_using_function(float*, float*, %struct.gs_imager_state_s*, i8*) #0

; Function Attrs: nounwind uwtable
define %struct.gs_function_s* @gs_cspace_get_sepr_function(%struct.gs_color_space_s* %pcspace) #1 {
entry:
  %retval = alloca %struct.gs_function_s*, align 8
  %pcspace.addr = alloca %struct.gs_color_space_s*, align 8
  store %struct.gs_color_space_s* %pcspace, %struct.gs_color_space_s** %pcspace.addr, align 8, !tbaa !1
  %0 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcspace.addr, align 8, !tbaa !1
  %call = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %0) #3
  %cmp = icmp eq i32 %call, 9
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcspace.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %1, i32 0, i32 7
  %separation = bitcast %union.anon* %params to %struct.gs_separation_params_s*
  %map = getelementptr inbounds %struct.gs_separation_params_s, %struct.gs_separation_params_s* %separation, i32 0, i32 1
  %2 = load %struct.gs_device_n_map_s*, %struct.gs_device_n_map_s** %map, align 8, !tbaa !45
  %tint_transform = getelementptr inbounds %struct.gs_device_n_map_s, %struct.gs_device_n_map_s* %2, i32 0, i32 1
  %3 = load i32 (float*, float*, %struct.gs_imager_state_s*, i8*)*, i32 (float*, float*, %struct.gs_imager_state_s*, i8*)** %tint_transform, align 8, !tbaa !68
  %cmp1 = icmp eq i32 (float*, float*, %struct.gs_imager_state_s*, i8*)* %3, @map_devn_using_function
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcspace.addr, align 8, !tbaa !1
  %params2 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %4, i32 0, i32 7
  %separation3 = bitcast %union.anon* %params2 to %struct.gs_separation_params_s*
  %map4 = getelementptr inbounds %struct.gs_separation_params_s, %struct.gs_separation_params_s* %separation3, i32 0, i32 1
  %5 = load %struct.gs_device_n_map_s*, %struct.gs_device_n_map_s** %map4, align 8, !tbaa !45
  %tint_transform_data = getelementptr inbounds %struct.gs_device_n_map_s, %struct.gs_device_n_map_s* %5, i32 0, i32 2
  %6 = load i8*, i8** %tint_transform_data, align 8, !tbaa !69
  %7 = bitcast i8* %6 to %struct.gs_function_s*
  store %struct.gs_function_s* %7, %struct.gs_function_s** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  store %struct.gs_function_s* null, %struct.gs_function_s** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load %struct.gs_function_s*, %struct.gs_function_s** %retval
  ret %struct.gs_function_s* %8
}

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @cs_Separation_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #1 {
entry:
  %retval = alloca %struct.gs_ptr_procs_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !7
  store i32 %index, i32* %index.addr, align 4, !tbaa !7
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = load i32, i32* %index.addr, align 4, !tbaa !7
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
  ]

sw.default:                                       ; preds = %entry
  store %struct.gs_ptr_procs_s* null, %struct.gs_ptr_procs_s** %retval
  br label %return

sw.bb:                                            ; preds = %entry
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_color_space_s*
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %2, i32 0, i32 7
  %separation = bitcast %union.anon* %params to %struct.gs_separation_params_s*
  %map = getelementptr inbounds %struct.gs_separation_params_s, %struct.gs_separation_params_s* %separation, i32 0, i32 1
  %3 = load %struct.gs_device_n_map_s*, %struct.gs_device_n_map_s** %map, align 8, !tbaa !45
  %4 = bitcast %struct.gs_device_n_map_s* %3 to i8*
  %5 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %5, i32 0, i32 0
  store i8* %4, i8** %ptr, align 8, !tbaa !127
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %6 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %7 = bitcast i8* %6 to %struct.gs_color_space_s*
  %params2 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %7, i32 0, i32 7
  %separation3 = bitcast %union.anon* %params2 to %struct.gs_separation_params_s*
  %sep_name = getelementptr inbounds %struct.gs_separation_params_s, %struct.gs_separation_params_s* %separation3, i32 0, i32 0
  %8 = load i64, i64* %sep_name, align 8, !tbaa !49
  %conv = trunc i64 %8 to i32
  %9 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %size4 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %9, i32 0, i32 1
  store i32 %conv, i32* %size4, align 4, !tbaa !129
  store %struct.gs_ptr_procs_s* @ptr_name_index_procs, %struct.gs_ptr_procs_s** %retval
  br label %return

return:                                           ; preds = %sw.bb.1, %sw.bb, %sw.default
  %10 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %10
}

; Function Attrs: nounwind uwtable
define internal void @cs_Separation_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #1 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !7
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %1 = bitcast %struct.gc_state_s* %0 to %struct.gc_procs_common_s**
  %2 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %1, align 8, !tbaa !1
  %reloc_struct_ptr = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %2, i32 0, i32 0
  %3 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr, align 8, !tbaa !130
  %4 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %5 = bitcast i8* %4 to %struct.gs_color_space_s*
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %5, i32 0, i32 7
  %separation = bitcast %union.anon* %params to %struct.gs_separation_params_s*
  %map = getelementptr inbounds %struct.gs_separation_params_s, %struct.gs_separation_params_s* %separation, i32 0, i32 1
  %6 = load %struct.gs_device_n_map_s*, %struct.gs_device_n_map_s** %map, align 8, !tbaa !45
  %7 = bitcast %struct.gs_device_n_map_s* %6 to i8*
  %8 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call i8* %3(i8* %7, %struct.gc_state_s* %8) #3
  %9 = bitcast i8* %call to %struct.gs_device_n_map_s*
  %10 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %11 = bitcast i8* %10 to %struct.gs_color_space_s*
  %params1 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %11, i32 0, i32 7
  %separation2 = bitcast %union.anon* %params1 to %struct.gs_separation_params_s*
  %map3 = getelementptr inbounds %struct.gs_separation_params_s, %struct.gs_separation_params_s* %separation2, i32 0, i32 1
  store %struct.gs_device_n_map_s* %9, %struct.gs_device_n_map_s** %map3, align 8, !tbaa !45
  ret void
}

declare i32 @gs_color_space_is_PSCIE(%struct.gs_color_space_s*) #0

declare i32 @gs_colorspace_set_icc_equivalent(%struct.gs_color_space_s*, i32*, %struct.gs_memory_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @check_Separation_component_name(%struct.gs_color_space_s* %pcs, %struct.gs_state_s* %pgs) #1 {
entry:
  %retval = alloca i32, align 4
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %name = alloca i64, align 8
  %colorant_number = alloca i32, align 4
  %pname = alloca i8*, align 8
  %name_size = alloca i32, align 4
  %pcolor_component_map = alloca %struct.gs_devicen_color_map_s*, align 8
  %dev = alloca %struct.gx_device_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = bitcast i64* %name to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %1, i32 0, i32 7
  %separation = bitcast %union.anon* %params to %struct.gs_separation_params_s*
  %sep_name = getelementptr inbounds %struct.gs_separation_params_s, %struct.gs_separation_params_s* %separation, i32 0, i32 0
  %2 = load i64, i64* %sep_name, align 8, !tbaa !49
  store i64 %2, i64* %name, align 8, !tbaa !50
  %3 = bitcast i32* %colorant_number to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i8** %pname to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = bitcast i32* %name_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast %struct.gs_devicen_color_map_s** %pcolor_component_map to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color_component_map = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %7, i32 0, i32 50
  store %struct.gs_devicen_color_map_s* %color_component_map, %struct.gs_devicen_color_map_s** %pcolor_component_map, align 8, !tbaa !1
  %8 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %9, i32 0, i32 78
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %device, align 8, !tbaa !93
  store %struct.gx_device_s* %10, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %11 = load %struct.gs_devicen_color_map_s*, %struct.gs_devicen_color_map_s** %pcolor_component_map, align 8, !tbaa !1
  %num_components = getelementptr inbounds %struct.gs_devicen_color_map_s, %struct.gs_devicen_color_map_s* %11, i32 0, i32 2
  store i32 1, i32* %num_components, align 4, !tbaa !132
  %12 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %id = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %12, i32 0, i32 2
  %13 = load i64, i64* %id, align 8, !tbaa !133
  %14 = load %struct.gs_devicen_color_map_s*, %struct.gs_devicen_color_map_s** %pcolor_component_map, align 8, !tbaa !1
  %cspace_id = getelementptr inbounds %struct.gs_devicen_color_map_s, %struct.gs_devicen_color_map_s* %14, i32 0, i32 4
  store i64 %13, i64* %cspace_id, align 8, !tbaa !134
  %15 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %15, i32 0, i32 11
  %num_components1 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %16 = load i32, i32* %num_components1, align 4, !tbaa !32
  %17 = load %struct.gs_devicen_color_map_s*, %struct.gs_devicen_color_map_s** %pcolor_component_map, align 8, !tbaa !1
  %num_colorants = getelementptr inbounds %struct.gs_devicen_color_map_s, %struct.gs_devicen_color_map_s* %17, i32 0, i32 3
  store i32 %16, i32* %num_colorants, align 4, !tbaa !135
  %18 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params2 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %18, i32 0, i32 7
  %separation3 = bitcast %union.anon* %params2 to %struct.gs_separation_params_s*
  %sep_type = getelementptr inbounds %struct.gs_separation_params_s, %struct.gs_separation_params_s* %separation3, i32 0, i32 2
  %19 = load i32, i32* %sep_type, align 4, !tbaa !42
  %20 = load %struct.gs_devicen_color_map_s*, %struct.gs_devicen_color_map_s** %pcolor_component_map, align 8, !tbaa !1
  %sep_type4 = getelementptr inbounds %struct.gs_devicen_color_map_s, %struct.gs_devicen_color_map_s* %20, i32 0, i32 1
  store i32 %19, i32* %sep_type4, align 4, !tbaa !136
  %21 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params5 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %21, i32 0, i32 7
  %separation6 = bitcast %union.anon* %params5 to %struct.gs_separation_params_s*
  %sep_type7 = getelementptr inbounds %struct.gs_separation_params_s, %struct.gs_separation_params_s* %separation6, i32 0, i32 2
  %22 = load i32, i32* %sep_type7, align 4, !tbaa !42
  %cmp = icmp ne i32 %22, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %23 = load %struct.gs_devicen_color_map_s*, %struct.gs_devicen_color_map_s** %pcolor_component_map, align 8, !tbaa !1
  %use_alt_cspace = getelementptr inbounds %struct.gs_devicen_color_map_s, %struct.gs_devicen_color_map_s* %23, i32 0, i32 0
  store i32 0, i32* %use_alt_cspace, align 4, !tbaa !98
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %24 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %color_info8 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %24, i32 0, i32 11
  %polarity = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info8, i32 0, i32 2
  %25 = load i32, i32* %polarity, align 4, !tbaa !101
  %cmp9 = icmp eq i32 %25, 1
  br i1 %cmp9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end
  %26 = load %struct.gs_devicen_color_map_s*, %struct.gs_devicen_color_map_s** %pcolor_component_map, align 8, !tbaa !1
  %use_alt_cspace11 = getelementptr inbounds %struct.gs_devicen_color_map_s, %struct.gs_devicen_color_map_s* %26, i32 0, i32 0
  store i32 1, i32* %use_alt_cspace11, align 4, !tbaa !98
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.end
  %27 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params13 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %27, i32 0, i32 7
  %separation14 = bitcast %union.anon* %params13 to %struct.gs_separation_params_s*
  %get_colorname_string = getelementptr inbounds %struct.gs_separation_params_s, %struct.gs_separation_params_s* %separation14, i32 0, i32 4
  %28 = load i32 (%struct.gs_memory_s*, i64, i8**, i32*)*, i32 (%struct.gs_memory_s*, i64, i8**, i32*)** %get_colorname_string, align 8, !tbaa !61
  %29 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %29, i32 0, i32 3
  %30 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !137
  %31 = load i64, i64* %name, align 8, !tbaa !50
  %call = call i32 %28(%struct.gs_memory_s* %30, i64 %31, i8** %pname, i32* %name_size) #3
  %32 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %32, i32 0, i32 42
  %get_color_comp_index = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 50
  %33 = load i32 (%struct.gx_device_s*, i8*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32)** %get_color_comp_index, align 8, !tbaa !138
  %34 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %35 = load i8*, i8** %pname, align 8, !tbaa !1
  %36 = load i32, i32* %name_size, align 4, !tbaa !7
  %call15 = call i32 %33(%struct.gx_device_s* %34, i8* %35, i32 %36, i32 1) #3
  store i32 %call15, i32* %colorant_number, align 4, !tbaa !7
  %37 = load i32, i32* %colorant_number, align 4, !tbaa !7
  %cmp16 = icmp sge i32 %37, 0
  br i1 %cmp16, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end.12
  %38 = load i32, i32* %colorant_number, align 4, !tbaa !7
  %39 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %color_info17 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %39, i32 0, i32 11
  %max_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info17, i32 0, i32 0
  %40 = load i32, i32* %max_components, align 4, !tbaa !139
  %cmp18 = icmp slt i32 %38, %40
  br i1 %cmp18, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %land.lhs.true
  %41 = load i32, i32* %colorant_number, align 4, !tbaa !7
  %cmp20 = icmp eq i32 %41, 64
  br i1 %cmp20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.19
  br label %cond.end

cond.false:                                       ; preds = %if.then.19
  %42 = load i32, i32* %colorant_number, align 4, !tbaa !7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -1, %cond.true ], [ %42, %cond.false ]
  %43 = load %struct.gs_devicen_color_map_s*, %struct.gs_devicen_color_map_s** %pcolor_component_map, align 8, !tbaa !1
  %color_map = getelementptr inbounds %struct.gs_devicen_color_map_s, %struct.gs_devicen_color_map_s* %43, i32 0, i32 5
  %arrayidx = getelementptr inbounds [64 x i32], [64 x i32]* %color_map, i32 0, i64 0
  store i32 %cond, i32* %arrayidx, align 4, !tbaa !7
  %44 = load %struct.gs_devicen_color_map_s*, %struct.gs_devicen_color_map_s** %pcolor_component_map, align 8, !tbaa !1
  %use_alt_cspace21 = getelementptr inbounds %struct.gs_devicen_color_map_s, %struct.gs_devicen_color_map_s* %44, i32 0, i32 0
  store i32 0, i32* %use_alt_cspace21, align 4, !tbaa !98
  br label %if.end.23

if.else:                                          ; preds = %land.lhs.true, %if.end.12
  %45 = load %struct.gs_devicen_color_map_s*, %struct.gs_devicen_color_map_s** %pcolor_component_map, align 8, !tbaa !1
  %use_alt_cspace22 = getelementptr inbounds %struct.gs_devicen_color_map_s, %struct.gs_devicen_color_map_s* %45, i32 0, i32 0
  store i32 1, i32* %use_alt_cspace22, align 4, !tbaa !98
  br label %if.end.23

if.end.23:                                        ; preds = %if.else, %cond.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.23, %if.then.10, %if.then
  %46 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #2
  %47 = bitcast %struct.gs_devicen_color_map_s** %pcolor_component_map to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #2
  %48 = bitcast i32* %name_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #2
  %49 = bitcast i8** %pname to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #2
  %50 = bitcast i32* %colorant_number to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #2
  %51 = bitcast i64* %name to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #2
  %52 = load i32, i32* %retval
  ret i32 %52
}

declare i32 @using_alt_color_space(%struct.gs_state_s*) #0

declare i32 @gx_simulated_set_overprint(%struct.gs_color_space_s*, %struct.gs_state_s*) #0

declare i32 @gx_spot_colors_set_overprint(%struct.gs_color_space_s*, %struct.gs_state_s*) #0

declare i32 @gs_state_update_overprint(%struct.gs_state_s*, %struct.gs_overprint_params_s*) #0

declare i32 @gx_default_remap_color(%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32) #0

declare i32 @gsicc_transform_named_color(float*, %struct.gsicc_namedcolor_s*, i32, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.cmm_profile_s*, %struct.gsicc_rendering_param_s*) #0

declare i32 @rescale_cie_colors(%struct.gs_color_space_s*, %struct.gs_client_color_s*) #0

declare signext i16 @gx_unit_frac(float) #0

declare i32 @gx_serialize_cspace_type(%struct.gs_color_space_s*, %struct.stream_s*) #0

declare i32 @sputs(%struct.stream_s*, i8*, i32, i32*) #0

declare i32 @gx_serialize_device_n_map(%struct.gs_color_space_s*, %struct.gs_device_n_map_s*, %struct.stream_s*) #0

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
!6 = !{!"float", !3, i64 0}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !3, i64 0}
!9 = !{!10, !8, i64 1024}
!10 = !{!"gs_imager_state_s", !8, i64 0, !2, i64 8, !2, i64 16, !11, i64 24, !8, i64 128, !14, i64 132, !8, i64 168, !15, i64 176, !15, i64 192, !8, i64 208, !8, i64 212, !17, i64 216, !3, i64 220, !18, i64 224, !18, i64 228, !19, i64 232, !20, i64 240, !8, i64 248, !8, i64 252, !8, i64 256, !2, i64 264, !8, i64 272, !8, i64 276, !8, i64 280, !8, i64 284, !8, i64 288, !8, i64 292, !6, i64 296, !21, i64 300, !8, i64 308, !8, i64 312, !8, i64 316, !6, i64 320, !8, i64 324, !8, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !8, i64 408, !2, i64 416, !2, i64 424, !22, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !23, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !23, i64 1336}
!11 = !{!"gx_line_params_s", !6, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !8, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !8, i64 36, !12, i64 40, !13, i64 64}
!12 = !{!"gs_matrix_s", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20}
!13 = !{!"gx_dash_params_s", !2, i64 0, !8, i64 8, !6, i64 12, !8, i64 16, !6, i64 20, !8, i64 24, !8, i64 28, !6, i64 32}
!14 = !{!"gs_matrix_fixed_s", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !8, i64 24, !8, i64 28, !8, i64 32}
!15 = !{!"gs_point_s", !16, i64 0, !16, i64 8}
!16 = !{!"double", !3, i64 0}
!17 = !{!"short", !3, i64 0}
!18 = !{!"gs_transparency_source_s", !6, i64 0}
!19 = !{!"gs_xstate_trans_flags", !8, i64 0, !8, i64 4}
!20 = !{!"long", !3, i64 0}
!21 = !{!"gs_fixed_point_s", !8, i64 0, !8, i64 4}
!22 = !{!"gx_transfer_s", !8, i64 0, !2, i64 8, !8, i64 16, !2, i64 24, !8, i64 32, !2, i64 40, !8, i64 48, !2, i64 56}
!23 = !{!"gs_devicen_color_map_s", !8, i64 0, !3, i64 4, !8, i64 8, !8, i64 12, !20, i64 16, !3, i64 24}
!24 = !{!25, !2, i64 40}
!25 = !{!"gs_color_space_s", !2, i64 0, !26, i64 8, !20, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !3, i64 72}
!26 = !{!"rc_header_s", !20, i64 0, !2, i64 8, !2, i64 16}
!27 = !{!25, !2, i64 48}
!28 = !{!10, !2, i64 8}
!29 = !{!25, !2, i64 0}
!30 = !{!31, !2, i64 48}
!31 = !{!"gs_color_space_type_s", !3, i64 0, !8, i64 4, !8, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128}
!32 = !{!33, !8, i64 100}
!33 = !{!"gx_device_s", !8, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !8, i64 40, !2, i64 48, !26, i64 56, !8, i64 80, !8, i64 84, !8, i64 88, !34, i64 96, !36, i64 816, !8, i64 832, !8, i64 836, !8, i64 840, !8, i64 844, !8, i64 848, !8, i64 852, !3, i64 856, !3, i64 864, !8, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !20, i64 928, !20, i64 936, !8, i64 944, !8, i64 948, !8, i64 952, !8, i64 956, !8, i64 960, !20, i64 968, !20, i64 976, !37, i64 984, !8, i64 1052, !8, i64 1056, !38, i64 1064, !2, i64 1104, !3, i64 1112, !40, i64 1120, !41, i64 1144}
!34 = !{!"gx_device_color_info_s", !8, i64 0, !8, i64 4, !3, i64 8, !17, i64 12, !3, i64 14, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !35, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !20, i64 704, !8, i64 712}
!35 = !{!"gx_device_anti_alias_info_s", !8, i64 0, !8, i64 4}
!36 = !{!"gx_device_cached_colors_s", !20, i64 0, !20, i64 8}
!37 = !{!"gx_stroked_gradient_recognizer_s", !8, i64 0, !3, i64 4, !3, i64 36}
!38 = !{!"gdev_space_params_s", !20, i64 0, !20, i64 8, !39, i64 16, !8, i64 32, !3, i64 36}
!39 = !{!"gx_band_params_s", !8, i64 0, !8, i64 4, !20, i64 8}
!40 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!41 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!42 = !{!43, !3, i64 16}
!43 = !{!"gs_separation_params_s", !20, i64 0, !2, i64 8, !3, i64 16, !8, i64 20, !2, i64 24}
!44 = !{!43, !8, i64 20}
!45 = !{!43, !2, i64 8}
!46 = !{!10, !2, i64 336}
!47 = !{!48, !2, i64 0}
!48 = !{!"gsicc_manager_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !8, i64 64, !2, i64 72, !2, i64 80, !26, i64 88}
!49 = !{!43, !20, i64 0}
!50 = !{!20, !20, i64 0}
!51 = !{!10, !8, i64 328}
!52 = !{!53, !3, i64 4}
!53 = !{!"gsicc_rendering_param_s", !3, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !8, i64 20}
!54 = !{!33, !3, i64 1112}
!55 = !{!53, !3, i64 12}
!56 = !{!53, !8, i64 20}
!57 = !{!53, !3, i64 8}
!58 = !{!10, !8, i64 324}
!59 = !{!53, !3, i64 0}
!60 = !{!53, !3, i64 16}
!61 = !{!43, !2, i64 24}
!62 = !{!63, !2, i64 0}
!63 = !{!"gsicc_namedcolor_s", !2, i64 0, !8, i64 8, !3, i64 12}
!64 = !{!63, !8, i64 8}
!65 = !{!17, !17, i64 0}
!66 = !{!67, !8, i64 40}
!67 = !{!"gs_device_n_map_s", !26, i64 0, !2, i64 24, !2, i64 32, !8, i64 40, !3, i64 44, !3, i64 300}
!68 = !{!67, !2, i64 24}
!69 = !{!67, !2, i64 32}
!70 = !{!31, !2, i64 40}
!71 = !{!25, !2, i64 64}
!72 = !{!73, !3, i64 16}
!73 = !{!"cmm_profile_s", !3, i64 0, !3, i64 1, !8, i64 4, !8, i64 8, !3, i64 12, !3, i64 16, !74, i64 20, !20, i64 144, !8, i64 152, !3, i64 156, !8, i64 216, !8, i64 220, !8, i64 224, !53, i64 228, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !26, i64 288, !8, i64 312, !2, i64 320, !2, i64 328, !2, i64 336}
!74 = !{!"gs_range_icc_s", !3, i64 0}
!75 = !{!73, !8, i64 4}
!76 = !{!31, !2, i64 56}
!77 = !{!3, !3, i64 0}
!78 = !{!31, !2, i64 64}
!79 = !{!10, !2, i64 1016}
!80 = !{!81, !2, i64 32}
!81 = !{!"gx_color_map_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48}
!82 = !{!83, !2, i64 0}
!83 = !{!"gx_device_color_s", !2, i64 0, !3, i64 8, !84, i64 352, !8, i64 360, !85, i64 368, !87, i64 632}
!84 = !{!"gs_int_point_s", !8, i64 0, !8, i64 4}
!85 = !{!"gs_client_color_s", !2, i64 0, !86, i64 8}
!86 = !{!"gs_paint_color_s", !3, i64 0}
!87 = !{!"_mask", !88, i64 0, !20, i64 8, !2, i64 16}
!88 = !{!"mp_", !8, i64 0, !8, i64 4}
!89 = !{!83, !8, i64 360}
!90 = !{!91, !2, i64 0}
!91 = !{!"", !2, i64 0, !2, i64 8, !2, i64 16}
!92 = !{!31, !2, i64 80}
!93 = !{!94, !2, i64 1872}
!94 = !{!"gs_state_s", !8, i64 0, !2, i64 8, !2, i64 16, !11, i64 24, !8, i64 128, !14, i64 132, !8, i64 168, !15, i64 176, !15, i64 192, !8, i64 208, !8, i64 212, !17, i64 216, !3, i64 220, !18, i64 224, !18, i64 228, !19, i64 232, !20, i64 240, !8, i64 248, !8, i64 252, !8, i64 256, !2, i64 264, !8, i64 272, !8, i64 276, !8, i64 280, !8, i64 284, !8, i64 288, !8, i64 292, !6, i64 296, !21, i64 300, !8, i64 308, !8, i64 312, !8, i64 316, !6, i64 320, !8, i64 324, !8, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !8, i64 408, !2, i64 416, !2, i64 424, !22, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !23, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !23, i64 1336, !2, i64 1616, !12, i64 1624, !8, i64 1648, !12, i64 1652, !8, i64 1676, !2, i64 1680, !2, i64 1688, !2, i64 1696, !2, i64 1704, !20, i64 1712, !20, i64 1720, !2, i64 1728, !8, i64 1736, !3, i64 1744, !2, i64 1792, !2, i64 1800, !14, i64 1808, !8, i64 1844, !3, i64 1848, !3, i64 1852, !2, i64 1856, !8, i64 1864, !2, i64 1872, !2, i64 1880, !95, i64 1888}
!95 = !{!"gs_state_client_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!96 = !{!33, !2, i64 1616}
!97 = !{!33, !2, i64 1680}
!98 = !{!23, !8, i64 0}
!99 = !{!100, !8, i64 172}
!100 = !{!"cmm_dev_profile_s", !3, i64 0, !2, i64 32, !2, i64 40, !2, i64 48, !3, i64 56, !8, i64 152, !8, i64 156, !8, i64 160, !8, i64 164, !8, i64 168, !8, i64 172, !2, i64 176, !8, i64 184, !2, i64 192, !26, i64 200}
!101 = !{!33, !3, i64 104}
!102 = !{!33, !3, i64 110}
!103 = !{!33, !8, i64 116}
!104 = !{!33, !8, i64 112}
!105 = !{!106, !8, i64 28}
!106 = !{!"gs_overprint_params_s", !8, i64 0, !8, i64 4, !8, i64 8, !20, i64 16, !17, i64 24, !8, i64 28}
!107 = !{!94, !8, i64 272}
!108 = !{!106, !8, i64 0}
!109 = !{!106, !8, i64 4}
!110 = !{!106, !20, i64 16}
!111 = !{!106, !17, i64 24}
!112 = !{!94, !8, i64 280}
!113 = !{!67, !20, i64 0}
!114 = !{!67, !2, i64 16}
!115 = !{!67, !2, i64 8}
!116 = !{!31, !2, i64 112}
!117 = !{!31, !8, i64 8}
!118 = !{!119, !2, i64 24}
!119 = !{!"gs_memory_s", !2, i64 0, !120, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!120 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!121 = !{!122, !8, i64 72}
!122 = !{!"gs_function_s", !123, i64 0, !125, i64 72}
!123 = !{!"gs_function_head_s", !8, i64 0, !124, i64 8}
!124 = !{!"gs_function_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56}
!125 = !{!"gs_function_params_s", !8, i64 0, !2, i64 8, !8, i64 16, !2, i64 24}
!126 = !{!122, !8, i64 88}
!127 = !{!128, !2, i64 0}
!128 = !{!"enum_ptr_s", !2, i64 0, !8, i64 8}
!129 = !{!128, !8, i64 8}
!130 = !{!131, !2, i64 0}
!131 = !{!"gc_procs_common_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!132 = !{!23, !8, i64 8}
!133 = !{!25, !20, i64 32}
!134 = !{!23, !20, i64 16}
!135 = !{!23, !8, i64 12}
!136 = !{!23, !3, i64 4}
!137 = !{!33, !2, i64 24}
!138 = !{!33, !2, i64 1544}
!139 = !{!33, !8, i64 96}
