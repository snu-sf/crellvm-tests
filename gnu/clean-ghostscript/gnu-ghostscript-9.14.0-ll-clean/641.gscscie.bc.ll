; ModuleID = './gscscie.bc'
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
%struct.enum_ptr_s = type { i8*, i32 }
%struct.gc_state_s = type opaque
%struct.gc_ptr_element_s = type { i16, i16 }
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
%struct.gs_pattern1_instance_s = type opaque
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
%struct.gs_device_n_map_s = type opaque
%struct.gs_device_n_attributes_s = type opaque
%struct.gs_cie_common_proc3_s = type { [3 x float (double, %struct.gs_cie_common_s*)*] }
%struct.gs_cie_common_s = type { i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i8*, %struct.gs_range3_s, %struct.gs_cie_common_proc3_s, %struct.gs_matrix3_s, %struct.gs_cie_wb_s, %struct.anon.2 }
%struct.anon.2 = type { [3 x %union.gx_cie_scalar_cache_s] }
%struct.gs_cie_a_s = type { %struct.gs_cie_common_s, %struct.rc_header_s, %struct.gs_range_s, float (double, %struct.gs_cie_a_s*)*, %struct.gs_vector3_s, %struct.anon.8 }
%struct.anon.8 = type { %struct.gx_cie_vector_cache_s }
%struct.gs_cie_def_proc3_s = type { [3 x float (double, %struct.gs_cie_def_s*)*] }
%struct.gs_cie_def_s = type { %struct.gs_cie_common_s, %struct.rc_header_s, %struct.gs_range3_s, %struct.gs_cie_abc_proc3_s, %struct.gs_matrix3_s, %struct.anon.5, %struct.gs_range3_s, %struct.gs_cie_def_proc3_s, %struct.gs_range3_s, %struct.gx_color_lookup_table_s, %struct.anon.6 }
%struct.gs_cie_abc_proc3_s = type { [3 x float (double, %struct.gs_cie_abc_s*)*] }
%struct.gs_cie_abc_s = type { %struct.gs_cie_common_s, %struct.rc_header_s, %struct.gs_range3_s, %struct.gs_cie_abc_proc3_s, %struct.gs_matrix3_s, %struct.anon.7 }
%struct.anon.7 = type { i32, %struct.gx_cie_vector_cache3_s }
%struct.anon.5 = type { i32, %struct.gx_cie_vector_cache3_s }
%struct.anon.6 = type { [3 x %union.gx_cie_scalar_cache_s] }
%struct.gs_range4_s = type { [4 x %struct.gs_range_s] }
%struct.gs_cie_defg_proc4_s = type { [4 x float (double, %struct.gs_cie_defg_s*)*] }
%struct.gs_cie_defg_s = type { %struct.gs_cie_common_s, %struct.rc_header_s, %struct.gs_range3_s, %struct.gs_cie_abc_proc3_s, %struct.gs_matrix3_s, %struct.anon.3, %struct.gs_range4_s, %struct.gs_cie_defg_proc4_s, %struct.gs_range4_s, %struct.gx_color_lookup_table_s, %struct.anon.4 }
%struct.anon.3 = type { i32, %struct.gx_cie_vector_cache3_s }
%struct.anon.4 = type { [4 x %union.gx_cie_scalar_cache_s] }
%struct.gs_cie_common_elements_s = type { %struct.gs_cie_common_s, %struct.rc_header_s }

@.str = private unnamed_addr constant [14 x i8] c"gs_cie_common\00", align 1
@cie_common_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 1, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([1 x %struct.gc_ptr_element_s], [1 x %struct.gc_ptr_element_s]* @cie_common_enum_ptrs, i32 0, i32 0) }, align 8
@st_cie_common = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 6392, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @cie_common_reloc_ptrs to i8*) }, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"gs_cie_common_elements_t\00", align 1
@st_cie_common_elements_t = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 6416, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @cie_common_reloc_ptrs to i8*) }, align 8
@gs_color_space_type_CIEDEFG = constant { i32, i32, i32, %struct.gs_memory_struct_type_s*, i32 (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, void (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)*, i32 (%struct.gs_color_space_s*)* } { i32 5, i32 1, i32 1, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_color_space_CIEDEFG to %struct.gs_memory_struct_type_s*), i32 (%struct.gs_color_space_s*)* @gx_num_components_4, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)* @gx_init_CIE, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)* @gx_restrict_CIEDEFG, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)* @gx_concrete_space_CIE, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)* @gx_concretize_CIEDEFG, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)* null, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)* @gx_remap_CIEDEFG, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)* @gx_install_CIE, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)* @gx_spot_colors_set_overprint, void (%struct.gs_color_space_s*)* @gx_final_CIEDEFG, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)* @gx_no_adjust_color_count, i32 (%struct.gs_color_space_s*, %struct.stream_s*)* @gx_serialize_CIEDEFG, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)* @gx_cspace_is_linear_default, i32 (%struct.gs_color_space_s*)* @gx_polarity_subtractive }, align 8
@gs_color_space_type_CIEDEF = constant { i32, i32, i32, %struct.gs_memory_struct_type_s*, i32 (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, void (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)*, i32 (%struct.gs_color_space_s*)* } { i32 6, i32 1, i32 1, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_color_space_CIEDEF to %struct.gs_memory_struct_type_s*), i32 (%struct.gs_color_space_s*)* @gx_num_components_3, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)* @gx_init_CIE, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)* @gx_restrict_CIEDEF, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)* @gx_concrete_space_CIE, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)* @gx_concretize_CIEDEF, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)* null, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)* @gx_remap_CIEDEF, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)* @gx_install_CIE, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)* @gx_spot_colors_set_overprint, void (%struct.gs_color_space_s*)* @gx_final_CIEDEF, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)* @gx_no_adjust_color_count, i32 (%struct.gs_color_space_s*, %struct.stream_s*)* @gx_serialize_CIEDEF, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)* @gx_cspace_is_linear_default, i32 (%struct.gs_color_space_s*)* @gx_polarity_subtractive }, align 8
@gs_color_space_type_CIEABC = constant { i32, i32, i32, %struct.gs_memory_struct_type_s*, i32 (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, void (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)*, i32 (%struct.gs_color_space_s*)* } { i32 7, i32 1, i32 1, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_color_space_CIEABC to %struct.gs_memory_struct_type_s*), i32 (%struct.gs_color_space_s*)* @gx_num_components_3, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)* @gx_init_CIE, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)* @gx_restrict_CIEABC, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)* @gx_concrete_space_CIE, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)* @gx_concretize_CIEABC, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)* null, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)* @gx_remap_CIEABC, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)* @gx_install_CIE, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)* @gx_spot_colors_set_overprint, void (%struct.gs_color_space_s*)* @gx_final_CIEABC, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)* @gx_no_adjust_color_count, i32 (%struct.gs_color_space_s*, %struct.stream_s*)* @gx_serialize_CIEABC, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)* @gx_cspace_is_linear_default, i32 (%struct.gs_color_space_s*)* @gx_polarity_additive }, align 8
@gs_color_space_type_CIEA = constant { i32, i32, i32, %struct.gs_memory_struct_type_s*, i32 (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, void (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)*, i32 (%struct.gs_color_space_s*)* } { i32 8, i32 1, i32 1, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_color_space_CIEA to %struct.gs_memory_struct_type_s*), i32 (%struct.gs_color_space_s*)* @gx_num_components_1, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)* @gx_init_CIE, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)* @gx_restrict_CIEA, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)* @gx_concrete_space_CIE, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)* @gx_concretize_CIEA, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)* null, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)* @gx_remap_CIEA, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)* @gx_install_CIE, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)* @gx_spot_colors_set_overprint, void (%struct.gs_color_space_s*)* @gx_final_CIEA, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)* @gx_no_adjust_color_count, i32 (%struct.gs_color_space_s*, %struct.stream_s*)* @gx_serialize_CIEA, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)* @gx_cspace_is_linear_default, i32 (%struct.gs_color_space_s*)* @gx_polarity_additive }, align 8
@Range3_default = external constant %struct.gs_range3_s, align 4
@DecodeLMN_default = external constant %struct.gs_cie_common_proc3_s, align 8
@Matrix3_default = external constant %struct.gs_matrix3_s, align 4
@BlackPoint_default = external constant %struct.gs_vector3_s, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"gx_build_cie_space(data)\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"gx_build_cie_space\00", align 1
@RangeA_default = external constant %struct.gs_range_s, align 4
@DecodeA_default = external constant float (double, %struct.gs_cie_a_s*)*, align 8
@MatrixA_default = external constant %struct.gs_vector3_s, align 4
@DecodeDEF_default = external constant %struct.gs_cie_def_proc3_s, align 8
@Range4_default = external constant %struct.gs_range4_s, align 4
@DecodeDEFG_default = external constant %struct.gs_cie_defg_proc4_s, align 8
@cie_common_enum_ptrs = internal constant [1 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 8 }], align 2
@.str.4 = private unnamed_addr constant [24 x i8] c"gs_color_space(CIEDEFG)\00", align 1
@cs_CIEDEFG_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 1, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([1 x %struct.gc_ptr_element_s], [1 x %struct.gc_ptr_element_s]* @cs_CIEDEFG_enum_ptrs, i32 0, i32 0) }, align 8
@st_color_space_CIEDEFG = internal constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 120, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @cs_CIEDEFG_reloc_ptrs to i8*) }, align 8
@cs_CIEDEFG_enum_ptrs = internal constant [1 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 72 }], align 2
@.str.5 = private unnamed_addr constant [23 x i8] c"gs_color_space(CIEDEF)\00", align 1
@cs_CIEDEF_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 1, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([1 x %struct.gc_ptr_element_s], [1 x %struct.gc_ptr_element_s]* @cs_CIEDEF_enum_ptrs, i32 0, i32 0) }, align 8
@st_color_space_CIEDEF = internal constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 120, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @cs_CIEDEF_reloc_ptrs to i8*) }, align 8
@cs_CIEDEF_enum_ptrs = internal constant [1 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 72 }], align 2
@.str.6 = private unnamed_addr constant [23 x i8] c"gs_color_space(CIEABC)\00", align 1
@cs_CIEABC_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 1, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([1 x %struct.gc_ptr_element_s], [1 x %struct.gc_ptr_element_s]* @cs_CIEABC_enum_ptrs, i32 0, i32 0) }, align 8
@st_color_space_CIEABC = internal constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 120, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @cs_CIEABC_reloc_ptrs to i8*) }, align 8
@cs_CIEABC_enum_ptrs = internal constant [1 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 72 }], align 2
@.str.7 = private unnamed_addr constant [21 x i8] c"gs_color_space(CIEA)\00", align 1
@cs_CIEA_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 1, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([1 x %struct.gc_ptr_element_s], [1 x %struct.gc_ptr_element_s]* @cs_CIEA_enum_ptrs, i32 0, i32 0) }, align 8
@st_color_space_CIEA = internal constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 120, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @cs_CIEA_reloc_ptrs to i8*) }, align 8
@cs_CIEA_enum_ptrs = internal constant [1 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 72 }], align 2
@.str.8 = private unnamed_addr constant [17 x i8] c"gx_final_CIEDEFG\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"gx_final_CIEDEF\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"gx_final_CIEABC\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"gx_final_CIEA\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"gx_adjust_cspace_CIEA\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"gs_cie_a\00", align 1
@st_cie_a = internal constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 14720, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @cie_common_reloc_ptrs to i8*) }, align 8
@.str.14 = private unnamed_addr constant [11 x i8] c"gs_cie_abc\00", align 1
@st_cie_abc = internal constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 31352, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @cie_common_reloc_ptrs to i8*) }, align 8
@DecodeABC_default = external constant %struct.gs_cie_abc_proc3_s, align 8
@.str.15 = private unnamed_addr constant [11 x i8] c"gs_cie_def\00", align 1
@cie_def_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 1, i16 0, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_cie_abc to %struct.gs_memory_struct_type_s*), %struct.gc_ptr_element_s* getelementptr inbounds ([1 x %struct.gc_ptr_element_s], [1 x %struct.gc_ptr_element_s]* @cie_def_enum_ptrs, i32 0, i32 0) }, align 8
@st_cie_def = internal constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 37720, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @cie_def_reloc_ptrs to i8*) }, align 8
@cie_def_enum_ptrs = internal constant [1 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 31448 }], align 2
@.str.16 = private unnamed_addr constant [12 x i8] c"gs_cie_defg\00", align 1
@cie_defg_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 1, i16 0, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_cie_abc to %struct.gs_memory_struct_type_s*), %struct.gc_ptr_element_s* getelementptr inbounds ([1 x %struct.gc_ptr_element_s], [1 x %struct.gc_ptr_element_s]* @cie_defg_enum_ptrs, i32 0, i32 0) }, align 8
@st_cie_defg = internal constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 39832, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @cie_defg_reloc_ptrs to i8*) }, align 8
@cie_defg_enum_ptrs = internal constant [1 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 31472 }], align 2

declare %struct.gs_ptr_procs_s* @basic_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #0

declare void @basic_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #0

declare i32 @gx_num_components_4(%struct.gs_color_space_s*) #0

declare void @gx_init_CIE(%struct.gs_client_color_s*, %struct.gs_color_space_s*) #0

declare void @gx_restrict_CIEDEFG(%struct.gs_client_color_s*, %struct.gs_color_space_s*) #0

; Function Attrs: nounwind uwtable
define %struct.gs_color_space_s* @gx_concrete_space_CIE(%struct.gs_color_space_s* %pcs, %struct.gs_imager_state_s* %pis) #1 {
entry:
  %retval = alloca %struct.gs_color_space_s*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pcie = alloca %struct.gs_cie_render_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_cie_render_s** %pcie to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %cie_render = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %1, i32 0, i32 42
  %2 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %cie_render, align 8, !tbaa !5
  store %struct.gs_cie_render_s* %2, %struct.gs_cie_render_s** %pcie, align 8, !tbaa !1
  %3 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcie, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_cie_render_s* %3, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcie, align 8, !tbaa !1
  %RenderTable = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %4, i32 0, i32 14
  %lookup = getelementptr inbounds %struct.gs_cie_render_table_s, %struct.gs_cie_render_table_s* %RenderTable, i32 0, i32 0
  %table = getelementptr inbounds %struct.gx_color_lookup_table_s, %struct.gx_color_lookup_table_s* %lookup, i32 0, i32 3
  %5 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %table, align 8, !tbaa !22
  %cmp1 = icmp eq %struct.gs_const_string_s* %5, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %6 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcie, align 8, !tbaa !1
  %RenderTable3 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %6, i32 0, i32 14
  %lookup4 = getelementptr inbounds %struct.gs_cie_render_table_s, %struct.gs_cie_render_table_s* %RenderTable3, i32 0, i32 0
  %m = getelementptr inbounds %struct.gx_color_lookup_table_s, %struct.gx_color_lookup_table_s* %lookup4, i32 0, i32 2
  %7 = load i32, i32* %m, align 4, !tbaa !37
  %cmp5 = icmp eq i32 %7, 3
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false.2, %lor.lhs.false, %entry
  %8 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %devicergb_cs = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %8, i32 0, i32 52
  %9 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %devicergb_cs, align 8, !tbaa !38
  store %struct.gs_color_space_s* %9, %struct.gs_color_space_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false.2
  %10 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %devicecmyk_cs = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %10, i32 0, i32 53
  %11 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %devicecmyk_cs, align 8, !tbaa !39
  store %struct.gs_color_space_s* %11, %struct.gs_color_space_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %12 = bitcast %struct.gs_cie_render_s** %pcie to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #2
  %13 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %retval
  ret %struct.gs_color_space_s* %13
}

declare i32 @gx_concretize_CIEDEFG(%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*) #0

declare i32 @gx_remap_CIEDEFG(%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32) #0

; Function Attrs: nounwind uwtable
define i32 @gx_install_CIE(%struct.gs_color_space_s* %pcs, %struct.gs_state_s* %pgs) #1 {
entry:
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %0, i32 0, i32 7
  %a = bitcast %union.anon* %params to %struct.gs_cie_a_s**
  %1 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %a, align 8, !tbaa !1
  %common = getelementptr inbounds %struct.gs_cie_a_s, %struct.gs_cie_a_s* %1, i32 0, i32 0
  %install_cspace = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %common, i32 0, i32 0
  %2 = load i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)** %install_cspace, align 8, !tbaa !40
  %3 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call = call i32 %2(%struct.gs_color_space_s* %3, %struct.gs_state_s* %4) #3
  ret i32 %call
}

declare i32 @gx_spot_colors_set_overprint(%struct.gs_color_space_s*, %struct.gs_state_s*) #0

; Function Attrs: nounwind uwtable
define internal void @gx_final_CIEDEFG(%struct.gs_color_space_s* %pcs) #1 {
entry:
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pcs_noconst = alloca %struct.gs_color_space_s*, align 8
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_color_space_s** %pcs_noconst to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %1, %struct.gs_color_space_s** %pcs_noconst, align 8, !tbaa !1
  %2 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %icc_equivalent = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %2, i32 0, i32 4
  %3 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_equivalent, align 8, !tbaa !53
  %cmp = icmp ne %struct.gs_color_space_s* %3, null
  br i1 %cmp, label %if.then, label %if.end.31

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %4 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_noconst, align 8, !tbaa !1
  %icc_equivalent1 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %4, i32 0, i32 4
  %5 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_equivalent1, align 8, !tbaa !53
  %tobool = icmp ne %struct.gs_color_space_s* %5, null
  br i1 %tobool, label %if.then.2, label %if.end.28

if.then.2:                                        ; preds = %do.body
  br label %do.body.3

do.body.3:                                        ; preds = %if.then.2
  br label %do.body.4

do.body.4:                                        ; preds = %do.body.3
  br label %do.cond

do.cond:                                          ; preds = %do.body.4
  br label %do.end

do.end:                                           ; preds = %do.cond
  %6 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_noconst, align 8, !tbaa !1
  %icc_equivalent5 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %6, i32 0, i32 4
  %7 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_equivalent5, align 8, !tbaa !53
  %rc = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %7, i32 0, i32 1
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %8 = load i64, i64* %ref_count, align 8, !tbaa !55
  %add = add nsw i64 %8, -1
  store i64 %add, i64* %ref_count, align 8, !tbaa !55
  br label %do.cond.6

do.cond.6:                                        ; preds = %do.end
  br label %do.end.7

do.end.7:                                         ; preds = %do.cond.6
  %9 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_noconst, align 8, !tbaa !1
  %icc_equivalent8 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %9, i32 0, i32 4
  %10 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_equivalent8, align 8, !tbaa !53
  %rc9 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %10, i32 0, i32 1
  %ref_count10 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc9, i32 0, i32 0
  %11 = load i64, i64* %ref_count10, align 8, !tbaa !55
  %tobool11 = icmp ne i64 %11, 0
  br i1 %tobool11, label %if.else, label %if.then.12

if.then.12:                                       ; preds = %do.end.7
  br label %do.body.13

do.body.13:                                       ; preds = %if.then.12
  br label %do.body.14

do.body.14:                                       ; preds = %do.body.13
  br label %do.cond.15

do.cond.15:                                       ; preds = %do.body.14
  br label %do.end.16

do.end.16:                                        ; preds = %do.cond.15
  %12 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_noconst, align 8, !tbaa !1
  %icc_equivalent17 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %12, i32 0, i32 4
  %13 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_equivalent17, align 8, !tbaa !53
  %rc18 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %13, i32 0, i32 1
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc18, i32 0, i32 2
  %14 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !56
  %15 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_noconst, align 8, !tbaa !1
  %icc_equivalent19 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %15, i32 0, i32 4
  %16 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_equivalent19, align 8, !tbaa !53
  %rc20 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %16, i32 0, i32 1
  %memory = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc20, i32 0, i32 1
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !57
  %18 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_noconst, align 8, !tbaa !1
  %icc_equivalent21 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %18, i32 0, i32 4
  %19 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_equivalent21, align 8, !tbaa !53
  %20 = bitcast %struct.gs_color_space_s* %19 to i8*
  call void %14(%struct.gs_memory_s* %17, i8* %20, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0)) #3
  br label %do.cond.22

do.cond.22:                                       ; preds = %do.end.16
  br label %do.end.23

do.end.23:                                        ; preds = %do.cond.22
  %21 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_noconst, align 8, !tbaa !1
  %icc_equivalent24 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %21, i32 0, i32 4
  store %struct.gs_color_space_s* null, %struct.gs_color_space_s** %icc_equivalent24, align 8, !tbaa !53
  br label %if.end

if.else:                                          ; preds = %do.end.7
  br label %do.body.25

do.body.25:                                       ; preds = %if.else
  br label %do.cond.26

do.cond.26:                                       ; preds = %do.body.25
  br label %do.end.27

do.end.27:                                        ; preds = %do.cond.26
  br label %if.end

if.end:                                           ; preds = %do.end.27, %do.end.23
  br label %if.end.28

if.end.28:                                        ; preds = %if.end, %do.body
  br label %do.cond.29

do.cond.29:                                       ; preds = %if.end.28
  br label %do.end.30

do.end.30:                                        ; preds = %do.cond.29
  br label %if.end.31

if.end.31:                                        ; preds = %do.end.30, %entry
  %22 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %cmm_icc_profile_data = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %22, i32 0, i32 6
  %23 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data, align 8, !tbaa !58
  %cmp32 = icmp ne %struct.cmm_profile_s* %23, null
  br i1 %cmp32, label %if.then.33, label %if.end.75

if.then.33:                                       ; preds = %if.end.31
  br label %do.body.34

do.body.34:                                       ; preds = %if.then.33
  %24 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_noconst, align 8, !tbaa !1
  %cmm_icc_profile_data35 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %24, i32 0, i32 6
  %25 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data35, align 8, !tbaa !58
  %tobool36 = icmp ne %struct.cmm_profile_s* %25, null
  br i1 %tobool36, label %if.then.37, label %if.end.72

if.then.37:                                       ; preds = %do.body.34
  br label %do.body.38

do.body.38:                                       ; preds = %if.then.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.body.38
  br label %do.cond.40

do.cond.40:                                       ; preds = %do.body.39
  br label %do.end.41

do.end.41:                                        ; preds = %do.cond.40
  %26 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_noconst, align 8, !tbaa !1
  %cmm_icc_profile_data42 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %26, i32 0, i32 6
  %27 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data42, align 8, !tbaa !58
  %rc43 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %27, i32 0, i32 18
  %ref_count44 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc43, i32 0, i32 0
  %28 = load i64, i64* %ref_count44, align 8, !tbaa !59
  %add45 = add nsw i64 %28, -1
  store i64 %add45, i64* %ref_count44, align 8, !tbaa !59
  br label %do.cond.46

do.cond.46:                                       ; preds = %do.end.41
  br label %do.end.47

do.end.47:                                        ; preds = %do.cond.46
  %29 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_noconst, align 8, !tbaa !1
  %cmm_icc_profile_data48 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %29, i32 0, i32 6
  %30 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data48, align 8, !tbaa !58
  %rc49 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %30, i32 0, i32 18
  %ref_count50 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc49, i32 0, i32 0
  %31 = load i64, i64* %ref_count50, align 8, !tbaa !59
  %tobool51 = icmp ne i64 %31, 0
  br i1 %tobool51, label %if.else.67, label %if.then.52

if.then.52:                                       ; preds = %do.end.47
  br label %do.body.53

do.body.53:                                       ; preds = %if.then.52
  br label %do.body.54

do.body.54:                                       ; preds = %do.body.53
  br label %do.cond.55

do.cond.55:                                       ; preds = %do.body.54
  br label %do.end.56

do.end.56:                                        ; preds = %do.cond.55
  %32 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_noconst, align 8, !tbaa !1
  %cmm_icc_profile_data57 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %32, i32 0, i32 6
  %33 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data57, align 8, !tbaa !58
  %rc58 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %33, i32 0, i32 18
  %free59 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc58, i32 0, i32 2
  %34 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free59, align 8, !tbaa !63
  %35 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_noconst, align 8, !tbaa !1
  %cmm_icc_profile_data60 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %35, i32 0, i32 6
  %36 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data60, align 8, !tbaa !58
  %rc61 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %36, i32 0, i32 18
  %memory62 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc61, i32 0, i32 1
  %37 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory62, align 8, !tbaa !64
  %38 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_noconst, align 8, !tbaa !1
  %cmm_icc_profile_data63 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %38, i32 0, i32 6
  %39 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data63, align 8, !tbaa !58
  %40 = bitcast %struct.cmm_profile_s* %39 to i8*
  call void %34(%struct.gs_memory_s* %37, i8* %40, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0)) #3
  br label %do.cond.64

do.cond.64:                                       ; preds = %do.end.56
  br label %do.end.65

do.end.65:                                        ; preds = %do.cond.64
  %41 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_noconst, align 8, !tbaa !1
  %cmm_icc_profile_data66 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %41, i32 0, i32 6
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %cmm_icc_profile_data66, align 8, !tbaa !58
  br label %if.end.71

if.else.67:                                       ; preds = %do.end.47
  br label %do.body.68

do.body.68:                                       ; preds = %if.else.67
  br label %do.cond.69

do.cond.69:                                       ; preds = %do.body.68
  br label %do.end.70

do.end.70:                                        ; preds = %do.cond.69
  br label %if.end.71

if.end.71:                                        ; preds = %do.end.70, %do.end.65
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %do.body.34
  br label %do.cond.73

do.cond.73:                                       ; preds = %if.end.72
  br label %do.end.74

do.end.74:                                        ; preds = %do.cond.73
  br label %if.end.75

if.end.75:                                        ; preds = %do.end.74, %if.end.31
  br label %do.body.76

do.body.76:                                       ; preds = %if.end.75
  %42 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_noconst, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %42, i32 0, i32 7
  %defg = bitcast %union.anon* %params to %struct.gs_cie_defg_s**
  %43 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %defg, align 8, !tbaa !1
  %tobool77 = icmp ne %struct.gs_cie_defg_s* %43, null
  br i1 %tobool77, label %if.then.78, label %if.end.119

if.then.78:                                       ; preds = %do.body.76
  br label %do.body.79

do.body.79:                                       ; preds = %if.then.78
  br label %do.body.80

do.body.80:                                       ; preds = %do.body.79
  br label %do.cond.81

do.cond.81:                                       ; preds = %do.body.80
  br label %do.end.82

do.end.82:                                        ; preds = %do.cond.81
  %44 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_noconst, align 8, !tbaa !1
  %params83 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %44, i32 0, i32 7
  %defg84 = bitcast %union.anon* %params83 to %struct.gs_cie_defg_s**
  %45 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %defg84, align 8, !tbaa !1
  %rc85 = getelementptr inbounds %struct.gs_cie_defg_s, %struct.gs_cie_defg_s* %45, i32 0, i32 1
  %ref_count86 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc85, i32 0, i32 0
  %46 = load i64, i64* %ref_count86, align 8, !tbaa !65
  %add87 = add nsw i64 %46, -1
  store i64 %add87, i64* %ref_count86, align 8, !tbaa !65
  br label %do.cond.88

do.cond.88:                                       ; preds = %do.end.82
  br label %do.end.89

do.end.89:                                        ; preds = %do.cond.88
  %47 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_noconst, align 8, !tbaa !1
  %params90 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %47, i32 0, i32 7
  %defg91 = bitcast %union.anon* %params90 to %struct.gs_cie_defg_s**
  %48 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %defg91, align 8, !tbaa !1
  %rc92 = getelementptr inbounds %struct.gs_cie_defg_s, %struct.gs_cie_defg_s* %48, i32 0, i32 1
  %ref_count93 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc92, i32 0, i32 0
  %49 = load i64, i64* %ref_count93, align 8, !tbaa !65
  %tobool94 = icmp ne i64 %49, 0
  br i1 %tobool94, label %if.else.114, label %if.then.95

if.then.95:                                       ; preds = %do.end.89
  br label %do.body.96

do.body.96:                                       ; preds = %if.then.95
  br label %do.body.97

do.body.97:                                       ; preds = %do.body.96
  br label %do.cond.98

do.cond.98:                                       ; preds = %do.body.97
  br label %do.end.99

do.end.99:                                        ; preds = %do.cond.98
  %50 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_noconst, align 8, !tbaa !1
  %params100 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %50, i32 0, i32 7
  %defg101 = bitcast %union.anon* %params100 to %struct.gs_cie_defg_s**
  %51 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %defg101, align 8, !tbaa !1
  %rc102 = getelementptr inbounds %struct.gs_cie_defg_s, %struct.gs_cie_defg_s* %51, i32 0, i32 1
  %free103 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc102, i32 0, i32 2
  %52 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free103, align 8, !tbaa !71
  %53 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_noconst, align 8, !tbaa !1
  %params104 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %53, i32 0, i32 7
  %defg105 = bitcast %union.anon* %params104 to %struct.gs_cie_defg_s**
  %54 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %defg105, align 8, !tbaa !1
  %rc106 = getelementptr inbounds %struct.gs_cie_defg_s, %struct.gs_cie_defg_s* %54, i32 0, i32 1
  %memory107 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc106, i32 0, i32 1
  %55 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory107, align 8, !tbaa !72
  %56 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_noconst, align 8, !tbaa !1
  %params108 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %56, i32 0, i32 7
  %defg109 = bitcast %union.anon* %params108 to %struct.gs_cie_defg_s**
  %57 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %defg109, align 8, !tbaa !1
  %58 = bitcast %struct.gs_cie_defg_s* %57 to i8*
  call void %52(%struct.gs_memory_s* %55, i8* %58, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0)) #3
  br label %do.cond.110

do.cond.110:                                      ; preds = %do.end.99
  br label %do.end.111

do.end.111:                                       ; preds = %do.cond.110
  %59 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_noconst, align 8, !tbaa !1
  %params112 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %59, i32 0, i32 7
  %defg113 = bitcast %union.anon* %params112 to %struct.gs_cie_defg_s**
  store %struct.gs_cie_defg_s* null, %struct.gs_cie_defg_s** %defg113, align 8, !tbaa !1
  br label %if.end.118

if.else.114:                                      ; preds = %do.end.89
  br label %do.body.115

do.body.115:                                      ; preds = %if.else.114
  br label %do.cond.116

do.cond.116:                                      ; preds = %do.body.115
  br label %do.end.117

do.end.117:                                       ; preds = %do.cond.116
  br label %if.end.118

if.end.118:                                       ; preds = %do.end.117, %do.end.111
  br label %if.end.119

if.end.119:                                       ; preds = %if.end.118, %do.body.76
  br label %do.cond.120

do.cond.120:                                      ; preds = %if.end.119
  br label %do.end.121

do.end.121:                                       ; preds = %do.cond.120
  %60 = bitcast %struct.gs_color_space_s** %pcs_noconst to i8*
  call void @llvm.lifetime.end(i64 8, i8* %60) #2
  ret void
}

declare void @gx_no_adjust_color_count(%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32) #0

; Function Attrs: nounwind uwtable
define internal i32 @gx_serialize_CIEDEFG(%struct.gs_color_space_s* %pcs, %struct.stream_s* %s) #1 {
entry:
  %retval = alloca i32, align 4
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %s.addr = alloca %struct.stream_s*, align 8
  %p = alloca %struct.gs_cie_defg_s*, align 8
  %n = alloca i32, align 4
  %k = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_cie_defg_s** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %1, i32 0, i32 7
  %defg = bitcast %union.anon* %params to %struct.gs_cie_defg_s**
  %2 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %defg, align 8, !tbaa !1
  store %struct.gs_cie_defg_s* %2, %struct.gs_cie_defg_s** %p, align 8, !tbaa !1
  %3 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %7 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call = call i32 @gx_serialize_cie_common_elements(%struct.gs_color_space_s* %6, %struct.stream_s* %7) #3
  store i32 %call, i32* %code, align 4, !tbaa !73
  %8 = load i32, i32* %code, align 4, !tbaa !73
  %cmp = icmp slt i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %code, align 4, !tbaa !73
  store i32 %9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %11 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %p, align 8, !tbaa !1
  %RangeDEFG = getelementptr inbounds %struct.gs_cie_defg_s, %struct.gs_cie_defg_s* %11, i32 0, i32 6
  %12 = bitcast %struct.gs_range4_s* %RangeDEFG to i8*
  %call1 = call i32 @sputs(%struct.stream_s* %10, i8* %12, i32 32, i32* %n) #3
  store i32 %call1, i32* %code, align 4, !tbaa !73
  %13 = load i32, i32* %code, align 4, !tbaa !73
  %cmp2 = icmp slt i32 %13, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %14 = load i32, i32* %code, align 4, !tbaa !73
  store i32 %14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  store i32 0, i32* %k, align 4, !tbaa !73
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.4
  %15 = load i32, i32* %k, align 4, !tbaa !73
  %cmp5 = icmp ult i32 %15, 3
  br i1 %cmp5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %16 = load i32, i32* %code, align 4, !tbaa !73
  %cmp6 = icmp sge i32 %16, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %17 = phi i1 [ false, %for.cond ], [ %cmp6, %land.rhs ]
  br i1 %17, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %18 = load i32, i32* %k, align 4, !tbaa !73
  %idxprom = zext i32 %18 to i64
  %19 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %p, align 8, !tbaa !1
  %caches_defg = getelementptr inbounds %struct.gs_cie_defg_s, %struct.gs_cie_defg_s* %19, i32 0, i32 10
  %DecodeDEFG = getelementptr inbounds %struct.anon.4, %struct.anon.4* %caches_defg, i32 0, i32 0
  %arrayidx = getelementptr inbounds [4 x %union.gx_cie_scalar_cache_s], [4 x %union.gx_cie_scalar_cache_s]* %DecodeDEFG, i32 0, i64 %idxprom
  %floats = bitcast %union.gx_cie_scalar_cache_s* %arrayidx to %struct.cie_cache_floats_s*
  %20 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call7 = call i32 @gx_serialize_cie_cache(%struct.cie_cache_floats_s* %floats, %struct.stream_s* %20) #3
  store i32 %call7, i32* %code, align 4, !tbaa !73
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %k, align 4, !tbaa !73
  %inc = add i32 %21, 1
  store i32 %inc, i32* %k, align 4, !tbaa !73
  br label %for.cond

for.end:                                          ; preds = %land.end
  %22 = load i32, i32* %code, align 4, !tbaa !73
  %cmp8 = icmp slt i32 %22, 0
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %for.end
  %23 = load i32, i32* %code, align 4, !tbaa !73
  store i32 %23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %for.end
  %24 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %25 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %p, align 8, !tbaa !1
  %RangeHIJK = getelementptr inbounds %struct.gs_cie_defg_s, %struct.gs_cie_defg_s* %25, i32 0, i32 8
  %26 = bitcast %struct.gs_range4_s* %RangeHIJK to i8*
  %call11 = call i32 @sputs(%struct.stream_s* %24, i8* %26, i32 32, i32* %n) #3
  store i32 %call11, i32* %code, align 4, !tbaa !73
  %27 = load i32, i32* %code, align 4, !tbaa !73
  %cmp12 = icmp slt i32 %27, 0
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.10
  %28 = load i32, i32* %code, align 4, !tbaa !73
  store i32 %28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %if.end.10
  %29 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %p, align 8, !tbaa !1
  %Table = getelementptr inbounds %struct.gs_cie_defg_s, %struct.gs_cie_defg_s* %29, i32 0, i32 9
  %30 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call15 = call i32 @gx_serialize_lookup_table(%struct.gx_color_lookup_table_s* %Table, %struct.stream_s* %30) #3
  store i32 %call15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.14, %if.then.13, %if.then.9, %if.then.3, %if.then
  %31 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #2
  %32 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #2
  %33 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #2
  %34 = bitcast %struct.gs_cie_defg_s** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #2
  %35 = load i32, i32* %retval
  ret i32 %35
}

declare i32 @gx_cspace_is_linear_default(%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*) #0

declare i32 @gx_polarity_subtractive(%struct.gs_color_space_s*) #0

declare i32 @gx_num_components_3(%struct.gs_color_space_s*) #0

declare void @gx_restrict_CIEDEF(%struct.gs_client_color_s*, %struct.gs_color_space_s*) #0

declare i32 @gx_concretize_CIEDEF(%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*) #0

declare i32 @gx_remap_CIEDEF(%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32) #0

; Function Attrs: nounwind uwtable
define internal void @gx_final_CIEDEF(%struct.gs_color_space_s* %pcs) #1 {
entry:
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pcs_noconst = alloca %struct.gs_color_space_s*, align 8
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_color_space_s** %pcs_noconst to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %1, %struct.gs_color_space_s** %pcs_noconst, align 8, !tbaa !1
  %2 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %icc_equivalent = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %2, i32 0, i32 4
  %3 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_equivalent, align 8, !tbaa !53
  %cmp = icmp ne %struct.gs_color_space_s* %3, null
  br i1 %cmp, label %if.then, label %if.end.31

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %4 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_noconst, align 8, !tbaa !1
  %icc_equivalent1 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %4, i32 0, i32 4
  %5 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_equivalent1, align 8, !tbaa !53
  %tobool = icmp ne %struct.gs_color_space_s* %5, null
  br i1 %tobool, label %if.then.2, label %if.end.28

if.then.2:                                        ; preds = %do.body
  br label %do.body.3

do.body.3:                                        ; preds = %if.then.2
  br label %do.body.4

do.body.4:                                        ; preds = %do.body.3
  br label %do.cond

do.cond:                                          ; preds = %do.body.4
  br label %do.end

do.end:                                           ; preds = %do.cond
  %6 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_noconst, align 8, !tbaa !1
  %icc_equivalent5 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %6, i32 0, i32 4
  %7 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_equivalent5, align 8, !tbaa !53
  %rc = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %7, i32 0, i32 1
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %8 = load i64, i64* %ref_count, align 8, !tbaa !55
  %add = add nsw i64 %8, -1
  store i64 %add, i64* %ref_count, align 8, !tbaa !55
  br label %do.cond.6

do.cond.6:                                        ; preds = %do.end
  br label %do.end.7

do.end.7:                                         ; preds = %do.cond.6
  %9 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_noconst, align 8, !tbaa !1
  %icc_equivalent8 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %9, i32 0, i32 4
  %10 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_equivalent8, align 8, !tbaa !53
  %rc9 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %10, i32 0, i32 1
  %ref_count10 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc9, i32 0, i32 0
  %11 = load i64, i64* %ref_count10, align 8, !tbaa !55
  %tobool11 = icmp ne i64 %11, 0
  br i1 %tobool11, label %if.else, label %if.then.12

if.then.12:                                       ; preds = %do.end.7
  br label %do.body.13

do.body.13:                                       ; preds = %if.then.12
  br label %do.body.14

do.body.14:                                       ; preds = %do.body.13
  br label %do.cond.15

do.cond.15:                                       ; preds = %do.body.14
  br label %do.end.16

do.end.16:                                        ; preds = %do.cond.15
  %12 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_noconst, align 8, !tbaa !1
  %icc_equivalent17 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %12, i32 0, i32 4
  %13 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_equivalent17, align 8, !tbaa !53
  %rc18 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %13, i32 0, i32 1
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc18, i32 0, i32 2
  %14 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !56
  %15 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_noconst, align 8, !tbaa !1
  %icc_equivalent19 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %15, i32 0, i32 4
  %16 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_equivalent19, align 8, !tbaa !53
  %rc20 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %16, i32 0, i32 1
  %memory = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc20, i32 0, i32 1
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !57
  %18 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_noconst, align 8, !tbaa !1
  %icc_equivalent21 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %18, i32 0, i32 4
  %19 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_equivalent21, align 8, !tbaa !53
  %20 = bitcast %struct.gs_color_space_s* %19 to i8*
  call void %14(%struct.gs_memory_s* %17, i8* %20, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0)) #3
  br label %do.cond.22

do.cond.22:                                       ; preds = %do.end.16
  br label %do.end.23

do.end.23:                                        ; preds = %do.cond.22
  %21 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_noconst, align 8, !tbaa !1
  %icc_equivalent24 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %21, i32 0, i32 4
  store %struct.gs_color_space_s* null, %struct.gs_color_space_s** %icc_equivalent24, align 8, !tbaa !53
  br label %if.end

if.else:                                          ; preds = %do.end.7
  br label %do.body.25

do.body.25:                                       ; preds = %if.else
  br label %do.cond.26

do.cond.26:                                       ; preds = %do.body.25
  br label %do.end.27

do.end.27:                                        ; preds = %do.cond.26
  br label %if.end

if.end:                                           ; preds = %do.end.27, %do.end.23
  br label %if.end.28

if.end.28:                                        ; preds = %if.end, %do.body
  br label %do.cond.29

do.cond.29:                                       ; preds = %if.end.28
  br label %do.end.30

do.end.30:                                        ; preds = %do.cond.29
  br label %if.end.31

if.end.31:                                        ; preds = %do.end.30, %entry
  %22 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %cmm_icc_profile_data = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %22, i32 0, i32 6
  %23 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data, align 8, !tbaa !58
  %cmp32 = icmp ne %struct.cmm_profile_s* %23, null
  br i1 %cmp32, label %if.then.33, label %if.end.75

if.then.33:                                       ; preds = %if.end.31
  br label %do.body.34

do.body.34:                                       ; preds = %if.then.33
  %24 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_noconst, align 8, !tbaa !1
  %cmm_icc_profile_data35 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %24, i32 0, i32 6
  %25 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data35, align 8, !tbaa !58
  %tobool36 = icmp ne %struct.cmm_profile_s* %25, null
  br i1 %tobool36, label %if.then.37, label %if.end.72

if.then.37:                                       ; preds = %do.body.34
  br label %do.body.38

do.body.38:                                       ; preds = %if.then.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.body.38
  br label %do.cond.40

do.cond.40:                                       ; preds = %do.body.39
  br label %do.end.41

do.end.41:                                        ; preds = %do.cond.40
  %26 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_noconst, align 8, !tbaa !1
  %cmm_icc_profile_data42 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %26, i32 0, i32 6
  %27 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data42, align 8, !tbaa !58
  %rc43 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %27, i32 0, i32 18
  %ref_count44 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc43, i32 0, i32 0
  %28 = load i64, i64* %ref_count44, align 8, !tbaa !59
  %add45 = add nsw i64 %28, -1
  store i64 %add45, i64* %ref_count44, align 8, !tbaa !59
  br label %do.cond.46

do.cond.46:                                       ; preds = %do.end.41
  br label %do.end.47

do.end.47:                                        ; preds = %do.cond.46
  %29 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_noconst, align 8, !tbaa !1
  %cmm_icc_profile_data48 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %29, i32 0, i32 6
  %30 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data48, align 8, !tbaa !58
  %rc49 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %30, i32 0, i32 18
  %ref_count50 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc49, i32 0, i32 0
  %31 = load i64, i64* %ref_count50, align 8, !tbaa !59
  %tobool51 = icmp ne i64 %31, 0
  br i1 %tobool51, label %if.else.67, label %if.then.52

if.then.52:                                       ; preds = %do.end.47
  br label %do.body.53

do.body.53:                                       ; preds = %if.then.52
  br label %do.body.54

do.body.54:                                       ; preds = %do.body.53
  br label %do.cond.55

do.cond.55:                                       ; preds = %do.body.54
  br label %do.end.56

do.end.56:                                        ; preds = %do.cond.55
  %32 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_noconst, align 8, !tbaa !1
  %cmm_icc_profile_data57 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %32, i32 0, i32 6
  %33 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data57, align 8, !tbaa !58
  %rc58 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %33, i32 0, i32 18
  %free59 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc58, i32 0, i32 2
  %34 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free59, align 8, !tbaa !63
  %35 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_noconst, align 8, !tbaa !1
  %cmm_icc_profile_data60 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %35, i32 0, i32 6
  %36 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data60, align 8, !tbaa !58
  %rc61 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %36, i32 0, i32 18
  %memory62 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc61, i32 0, i32 1
  %37 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory62, align 8, !tbaa !64
  %38 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_noconst, align 8, !tbaa !1
  %cmm_icc_profile_data63 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %38, i32 0, i32 6
  %39 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data63, align 8, !tbaa !58
  %40 = bitcast %struct.cmm_profile_s* %39 to i8*
  call void %34(%struct.gs_memory_s* %37, i8* %40, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0)) #3
  br label %do.cond.64

do.cond.64:                                       ; preds = %do.end.56
  br label %do.end.65

do.end.65:                                        ; preds = %do.cond.64
  %41 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_noconst, align 8, !tbaa !1
  %cmm_icc_profile_data66 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %41, i32 0, i32 6
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %cmm_icc_profile_data66, align 8, !tbaa !58
  br label %if.end.71

if.else.67:                                       ; preds = %do.end.47
  br label %do.body.68

do.body.68:                                       ; preds = %if.else.67
  br label %do.cond.69

do.cond.69:                                       ; preds = %do.body.68
  br label %do.end.70

do.end.70:                                        ; preds = %do.cond.69
  br label %if.end.71

if.end.71:                                        ; preds = %do.end.70, %do.end.65
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %do.body.34
  br label %do.cond.73

do.cond.73:                                       ; preds = %if.end.72
  br label %do.end.74

do.end.74:                                        ; preds = %do.cond.73
  br label %if.end.75

if.end.75:                                        ; preds = %do.end.74, %if.end.31
  br label %do.body.76

do.body.76:                                       ; preds = %if.end.75
  %42 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_noconst, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %42, i32 0, i32 7
  %def = bitcast %union.anon* %params to %struct.gs_cie_def_s**
  %43 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %def, align 8, !tbaa !1
  %tobool77 = icmp ne %struct.gs_cie_def_s* %43, null
  br i1 %tobool77, label %if.then.78, label %if.end.119

if.then.78:                                       ; preds = %do.body.76
  br label %do.body.79

do.body.79:                                       ; preds = %if.then.78
  br label %do.body.80

do.body.80:                                       ; preds = %do.body.79
  br label %do.cond.81

do.cond.81:                                       ; preds = %do.body.80
  br label %do.end.82

do.end.82:                                        ; preds = %do.cond.81
  %44 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_noconst, align 8, !tbaa !1
  %params83 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %44, i32 0, i32 7
  %def84 = bitcast %union.anon* %params83 to %struct.gs_cie_def_s**
  %45 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %def84, align 8, !tbaa !1
  %rc85 = getelementptr inbounds %struct.gs_cie_def_s, %struct.gs_cie_def_s* %45, i32 0, i32 1
  %ref_count86 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc85, i32 0, i32 0
  %46 = load i64, i64* %ref_count86, align 8, !tbaa !74
  %add87 = add nsw i64 %46, -1
  store i64 %add87, i64* %ref_count86, align 8, !tbaa !74
  br label %do.cond.88

do.cond.88:                                       ; preds = %do.end.82
  br label %do.end.89

do.end.89:                                        ; preds = %do.cond.88
  %47 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_noconst, align 8, !tbaa !1
  %params90 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %47, i32 0, i32 7
  %def91 = bitcast %union.anon* %params90 to %struct.gs_cie_def_s**
  %48 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %def91, align 8, !tbaa !1
  %rc92 = getelementptr inbounds %struct.gs_cie_def_s, %struct.gs_cie_def_s* %48, i32 0, i32 1
  %ref_count93 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc92, i32 0, i32 0
  %49 = load i64, i64* %ref_count93, align 8, !tbaa !74
  %tobool94 = icmp ne i64 %49, 0
  br i1 %tobool94, label %if.else.114, label %if.then.95

if.then.95:                                       ; preds = %do.end.89
  br label %do.body.96

do.body.96:                                       ; preds = %if.then.95
  br label %do.body.97

do.body.97:                                       ; preds = %do.body.96
  br label %do.cond.98

do.cond.98:                                       ; preds = %do.body.97
  br label %do.end.99

do.end.99:                                        ; preds = %do.cond.98
  %50 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_noconst, align 8, !tbaa !1
  %params100 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %50, i32 0, i32 7
  %def101 = bitcast %union.anon* %params100 to %struct.gs_cie_def_s**
  %51 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %def101, align 8, !tbaa !1
  %rc102 = getelementptr inbounds %struct.gs_cie_def_s, %struct.gs_cie_def_s* %51, i32 0, i32 1
  %free103 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc102, i32 0, i32 2
  %52 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free103, align 8, !tbaa !77
  %53 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_noconst, align 8, !tbaa !1
  %params104 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %53, i32 0, i32 7
  %def105 = bitcast %union.anon* %params104 to %struct.gs_cie_def_s**
  %54 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %def105, align 8, !tbaa !1
  %rc106 = getelementptr inbounds %struct.gs_cie_def_s, %struct.gs_cie_def_s* %54, i32 0, i32 1
  %memory107 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc106, i32 0, i32 1
  %55 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory107, align 8, !tbaa !78
  %56 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_noconst, align 8, !tbaa !1
  %params108 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %56, i32 0, i32 7
  %def109 = bitcast %union.anon* %params108 to %struct.gs_cie_def_s**
  %57 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %def109, align 8, !tbaa !1
  %58 = bitcast %struct.gs_cie_def_s* %57 to i8*
  call void %52(%struct.gs_memory_s* %55, i8* %58, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0)) #3
  br label %do.cond.110

do.cond.110:                                      ; preds = %do.end.99
  br label %do.end.111

do.end.111:                                       ; preds = %do.cond.110
  %59 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_noconst, align 8, !tbaa !1
  %params112 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %59, i32 0, i32 7
  %def113 = bitcast %union.anon* %params112 to %struct.gs_cie_def_s**
  store %struct.gs_cie_def_s* null, %struct.gs_cie_def_s** %def113, align 8, !tbaa !1
  br label %if.end.118

if.else.114:                                      ; preds = %do.end.89
  br label %do.body.115

do.body.115:                                      ; preds = %if.else.114
  br label %do.cond.116

do.cond.116:                                      ; preds = %do.body.115
  br label %do.end.117

do.end.117:                                       ; preds = %do.cond.116
  br label %if.end.118

if.end.118:                                       ; preds = %do.end.117, %do.end.111
  br label %if.end.119

if.end.119:                                       ; preds = %if.end.118, %do.body.76
  br label %do.cond.120

do.cond.120:                                      ; preds = %if.end.119
  br label %do.end.121

do.end.121:                                       ; preds = %do.cond.120
  %60 = bitcast %struct.gs_color_space_s** %pcs_noconst to i8*
  call void @llvm.lifetime.end(i64 8, i8* %60) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_serialize_CIEDEF(%struct.gs_color_space_s* %pcs, %struct.stream_s* %s) #1 {
entry:
  %retval = alloca i32, align 4
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %s.addr = alloca %struct.stream_s*, align 8
  %p = alloca %struct.gs_cie_def_s*, align 8
  %n = alloca i32, align 4
  %k = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_cie_def_s** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %1, i32 0, i32 7
  %def = bitcast %union.anon* %params to %struct.gs_cie_def_s**
  %2 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %def, align 8, !tbaa !1
  store %struct.gs_cie_def_s* %2, %struct.gs_cie_def_s** %p, align 8, !tbaa !1
  %3 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %7 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call = call i32 @gx_serialize_cie_common_elements(%struct.gs_color_space_s* %6, %struct.stream_s* %7) #3
  store i32 %call, i32* %code, align 4, !tbaa !73
  %8 = load i32, i32* %code, align 4, !tbaa !73
  %cmp = icmp slt i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %code, align 4, !tbaa !73
  store i32 %9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %11 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %p, align 8, !tbaa !1
  %RangeDEF = getelementptr inbounds %struct.gs_cie_def_s, %struct.gs_cie_def_s* %11, i32 0, i32 6
  %12 = bitcast %struct.gs_range3_s* %RangeDEF to i8*
  %call1 = call i32 @sputs(%struct.stream_s* %10, i8* %12, i32 24, i32* %n) #3
  store i32 %call1, i32* %code, align 4, !tbaa !73
  %13 = load i32, i32* %code, align 4, !tbaa !73
  %cmp2 = icmp slt i32 %13, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %14 = load i32, i32* %code, align 4, !tbaa !73
  store i32 %14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  store i32 0, i32* %k, align 4, !tbaa !73
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.4
  %15 = load i32, i32* %k, align 4, !tbaa !73
  %cmp5 = icmp ult i32 %15, 3
  br i1 %cmp5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %16 = load i32, i32* %code, align 4, !tbaa !73
  %cmp6 = icmp sge i32 %16, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %17 = phi i1 [ false, %for.cond ], [ %cmp6, %land.rhs ]
  br i1 %17, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %18 = load i32, i32* %k, align 4, !tbaa !73
  %idxprom = zext i32 %18 to i64
  %19 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %p, align 8, !tbaa !1
  %caches_def = getelementptr inbounds %struct.gs_cie_def_s, %struct.gs_cie_def_s* %19, i32 0, i32 10
  %DecodeDEF = getelementptr inbounds %struct.anon.6, %struct.anon.6* %caches_def, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x %union.gx_cie_scalar_cache_s], [3 x %union.gx_cie_scalar_cache_s]* %DecodeDEF, i32 0, i64 %idxprom
  %floats = bitcast %union.gx_cie_scalar_cache_s* %arrayidx to %struct.cie_cache_floats_s*
  %20 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call7 = call i32 @gx_serialize_cie_cache(%struct.cie_cache_floats_s* %floats, %struct.stream_s* %20) #3
  store i32 %call7, i32* %code, align 4, !tbaa !73
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %k, align 4, !tbaa !73
  %inc = add i32 %21, 1
  store i32 %inc, i32* %k, align 4, !tbaa !73
  br label %for.cond

for.end:                                          ; preds = %land.end
  %22 = load i32, i32* %code, align 4, !tbaa !73
  %cmp8 = icmp slt i32 %22, 0
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %for.end
  %23 = load i32, i32* %code, align 4, !tbaa !73
  store i32 %23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %for.end
  %24 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %25 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %p, align 8, !tbaa !1
  %RangeHIJ = getelementptr inbounds %struct.gs_cie_def_s, %struct.gs_cie_def_s* %25, i32 0, i32 8
  %26 = bitcast %struct.gs_range3_s* %RangeHIJ to i8*
  %call11 = call i32 @sputs(%struct.stream_s* %24, i8* %26, i32 24, i32* %n) #3
  store i32 %call11, i32* %code, align 4, !tbaa !73
  %27 = load i32, i32* %code, align 4, !tbaa !73
  %cmp12 = icmp slt i32 %27, 0
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.10
  %28 = load i32, i32* %code, align 4, !tbaa !73
  store i32 %28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %if.end.10
  %29 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %p, align 8, !tbaa !1
  %Table = getelementptr inbounds %struct.gs_cie_def_s, %struct.gs_cie_def_s* %29, i32 0, i32 9
  %30 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call15 = call i32 @gx_serialize_lookup_table(%struct.gx_color_lookup_table_s* %Table, %struct.stream_s* %30) #3
  store i32 %call15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.14, %if.then.13, %if.then.9, %if.then.3, %if.then
  %31 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #2
  %32 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #2
  %33 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #2
  %34 = bitcast %struct.gs_cie_def_s** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #2
  %35 = load i32, i32* %retval
  ret i32 %35
}

declare void @gx_restrict_CIEABC(%struct.gs_client_color_s*, %struct.gs_color_space_s*) #0

declare i32 @gx_concretize_CIEABC(%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*) #0

declare i32 @gx_remap_CIEABC(%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32) #0

; Function Attrs: nounwind uwtable
define internal void @gx_final_CIEABC(%struct.gs_color_space_s* %pcs) #1 {
entry:
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pcs_noconst = alloca %struct.gs_color_space_s*, align 8
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_color_space_s** %pcs_noconst to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %1, %struct.gs_color_space_s** %pcs_noconst, align 8, !tbaa !1
  %2 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %icc_equivalent = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %2, i32 0, i32 4
  %3 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_equivalent, align 8, !tbaa !53
  %cmp = icmp ne %struct.gs_color_space_s* %3, null
  br i1 %cmp, label %if.then, label %if.end.31

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %4 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_noconst, align 8, !tbaa !1
  %icc_equivalent1 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %4, i32 0, i32 4
  %5 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_equivalent1, align 8, !tbaa !53
  %tobool = icmp ne %struct.gs_color_space_s* %5, null
  br i1 %tobool, label %if.then.2, label %if.end.28

if.then.2:                                        ; preds = %do.body
  br label %do.body.3

do.body.3:                                        ; preds = %if.then.2
  br label %do.body.4

do.body.4:                                        ; preds = %do.body.3
  br label %do.cond

do.cond:                                          ; preds = %do.body.4
  br label %do.end

do.end:                                           ; preds = %do.cond
  %6 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_noconst, align 8, !tbaa !1
  %icc_equivalent5 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %6, i32 0, i32 4
  %7 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_equivalent5, align 8, !tbaa !53
  %rc = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %7, i32 0, i32 1
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %8 = load i64, i64* %ref_count, align 8, !tbaa !55
  %add = add nsw i64 %8, -1
  store i64 %add, i64* %ref_count, align 8, !tbaa !55
  br label %do.cond.6

do.cond.6:                                        ; preds = %do.end
  br label %do.end.7

do.end.7:                                         ; preds = %do.cond.6
  %9 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_noconst, align 8, !tbaa !1
  %icc_equivalent8 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %9, i32 0, i32 4
  %10 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_equivalent8, align 8, !tbaa !53
  %rc9 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %10, i32 0, i32 1
  %ref_count10 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc9, i32 0, i32 0
  %11 = load i64, i64* %ref_count10, align 8, !tbaa !55
  %tobool11 = icmp ne i64 %11, 0
  br i1 %tobool11, label %if.else, label %if.then.12

if.then.12:                                       ; preds = %do.end.7
  br label %do.body.13

do.body.13:                                       ; preds = %if.then.12
  br label %do.body.14

do.body.14:                                       ; preds = %do.body.13
  br label %do.cond.15

do.cond.15:                                       ; preds = %do.body.14
  br label %do.end.16

do.end.16:                                        ; preds = %do.cond.15
  %12 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_noconst, align 8, !tbaa !1
  %icc_equivalent17 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %12, i32 0, i32 4
  %13 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_equivalent17, align 8, !tbaa !53
  %rc18 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %13, i32 0, i32 1
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc18, i32 0, i32 2
  %14 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !56
  %15 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_noconst, align 8, !tbaa !1
  %icc_equivalent19 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %15, i32 0, i32 4
  %16 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_equivalent19, align 8, !tbaa !53
  %rc20 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %16, i32 0, i32 1
  %memory = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc20, i32 0, i32 1
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !57
  %18 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_noconst, align 8, !tbaa !1
  %icc_equivalent21 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %18, i32 0, i32 4
  %19 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_equivalent21, align 8, !tbaa !53
  %20 = bitcast %struct.gs_color_space_s* %19 to i8*
  call void %14(%struct.gs_memory_s* %17, i8* %20, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0)) #3
  br label %do.cond.22

do.cond.22:                                       ; preds = %do.end.16
  br label %do.end.23

do.end.23:                                        ; preds = %do.cond.22
  %21 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_noconst, align 8, !tbaa !1
  %icc_equivalent24 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %21, i32 0, i32 4
  store %struct.gs_color_space_s* null, %struct.gs_color_space_s** %icc_equivalent24, align 8, !tbaa !53
  br label %if.end

if.else:                                          ; preds = %do.end.7
  br label %do.body.25

do.body.25:                                       ; preds = %if.else
  br label %do.cond.26

do.cond.26:                                       ; preds = %do.body.25
  br label %do.end.27

do.end.27:                                        ; preds = %do.cond.26
  br label %if.end

if.end:                                           ; preds = %do.end.27, %do.end.23
  br label %if.end.28

if.end.28:                                        ; preds = %if.end, %do.body
  br label %do.cond.29

do.cond.29:                                       ; preds = %if.end.28
  br label %do.end.30

do.end.30:                                        ; preds = %do.cond.29
  br label %if.end.31

if.end.31:                                        ; preds = %do.end.30, %entry
  %22 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %cmm_icc_profile_data = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %22, i32 0, i32 6
  %23 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data, align 8, !tbaa !58
  %cmp32 = icmp ne %struct.cmm_profile_s* %23, null
  br i1 %cmp32, label %if.then.33, label %if.end.75

if.then.33:                                       ; preds = %if.end.31
  br label %do.body.34

do.body.34:                                       ; preds = %if.then.33
  %24 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_noconst, align 8, !tbaa !1
  %cmm_icc_profile_data35 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %24, i32 0, i32 6
  %25 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data35, align 8, !tbaa !58
  %tobool36 = icmp ne %struct.cmm_profile_s* %25, null
  br i1 %tobool36, label %if.then.37, label %if.end.72

if.then.37:                                       ; preds = %do.body.34
  br label %do.body.38

do.body.38:                                       ; preds = %if.then.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.body.38
  br label %do.cond.40

do.cond.40:                                       ; preds = %do.body.39
  br label %do.end.41

do.end.41:                                        ; preds = %do.cond.40
  %26 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_noconst, align 8, !tbaa !1
  %cmm_icc_profile_data42 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %26, i32 0, i32 6
  %27 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data42, align 8, !tbaa !58
  %rc43 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %27, i32 0, i32 18
  %ref_count44 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc43, i32 0, i32 0
  %28 = load i64, i64* %ref_count44, align 8, !tbaa !59
  %add45 = add nsw i64 %28, -1
  store i64 %add45, i64* %ref_count44, align 8, !tbaa !59
  br label %do.cond.46

do.cond.46:                                       ; preds = %do.end.41
  br label %do.end.47

do.end.47:                                        ; preds = %do.cond.46
  %29 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_noconst, align 8, !tbaa !1
  %cmm_icc_profile_data48 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %29, i32 0, i32 6
  %30 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data48, align 8, !tbaa !58
  %rc49 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %30, i32 0, i32 18
  %ref_count50 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc49, i32 0, i32 0
  %31 = load i64, i64* %ref_count50, align 8, !tbaa !59
  %tobool51 = icmp ne i64 %31, 0
  br i1 %tobool51, label %if.else.67, label %if.then.52

if.then.52:                                       ; preds = %do.end.47
  br label %do.body.53

do.body.53:                                       ; preds = %if.then.52
  br label %do.body.54

do.body.54:                                       ; preds = %do.body.53
  br label %do.cond.55

do.cond.55:                                       ; preds = %do.body.54
  br label %do.end.56

do.end.56:                                        ; preds = %do.cond.55
  %32 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_noconst, align 8, !tbaa !1
  %cmm_icc_profile_data57 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %32, i32 0, i32 6
  %33 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data57, align 8, !tbaa !58
  %rc58 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %33, i32 0, i32 18
  %free59 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc58, i32 0, i32 2
  %34 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free59, align 8, !tbaa !63
  %35 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_noconst, align 8, !tbaa !1
  %cmm_icc_profile_data60 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %35, i32 0, i32 6
  %36 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data60, align 8, !tbaa !58
  %rc61 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %36, i32 0, i32 18
  %memory62 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc61, i32 0, i32 1
  %37 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory62, align 8, !tbaa !64
  %38 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_noconst, align 8, !tbaa !1
  %cmm_icc_profile_data63 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %38, i32 0, i32 6
  %39 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data63, align 8, !tbaa !58
  %40 = bitcast %struct.cmm_profile_s* %39 to i8*
  call void %34(%struct.gs_memory_s* %37, i8* %40, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0)) #3
  br label %do.cond.64

do.cond.64:                                       ; preds = %do.end.56
  br label %do.end.65

do.end.65:                                        ; preds = %do.cond.64
  %41 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_noconst, align 8, !tbaa !1
  %cmm_icc_profile_data66 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %41, i32 0, i32 6
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %cmm_icc_profile_data66, align 8, !tbaa !58
  br label %if.end.71

if.else.67:                                       ; preds = %do.end.47
  br label %do.body.68

do.body.68:                                       ; preds = %if.else.67
  br label %do.cond.69

do.cond.69:                                       ; preds = %do.body.68
  br label %do.end.70

do.end.70:                                        ; preds = %do.cond.69
  br label %if.end.71

if.end.71:                                        ; preds = %do.end.70, %do.end.65
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %do.body.34
  br label %do.cond.73

do.cond.73:                                       ; preds = %if.end.72
  br label %do.end.74

do.end.74:                                        ; preds = %do.cond.73
  br label %if.end.75

if.end.75:                                        ; preds = %do.end.74, %if.end.31
  br label %do.body.76

do.body.76:                                       ; preds = %if.end.75
  %42 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_noconst, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %42, i32 0, i32 7
  %abc = bitcast %union.anon* %params to %struct.gs_cie_abc_s**
  %43 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %abc, align 8, !tbaa !1
  %tobool77 = icmp ne %struct.gs_cie_abc_s* %43, null
  br i1 %tobool77, label %if.then.78, label %if.end.119

if.then.78:                                       ; preds = %do.body.76
  br label %do.body.79

do.body.79:                                       ; preds = %if.then.78
  br label %do.body.80

do.body.80:                                       ; preds = %do.body.79
  br label %do.cond.81

do.cond.81:                                       ; preds = %do.body.80
  br label %do.end.82

do.end.82:                                        ; preds = %do.cond.81
  %44 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_noconst, align 8, !tbaa !1
  %params83 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %44, i32 0, i32 7
  %abc84 = bitcast %union.anon* %params83 to %struct.gs_cie_abc_s**
  %45 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %abc84, align 8, !tbaa !1
  %rc85 = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %45, i32 0, i32 1
  %ref_count86 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc85, i32 0, i32 0
  %46 = load i64, i64* %ref_count86, align 8, !tbaa !79
  %add87 = add nsw i64 %46, -1
  store i64 %add87, i64* %ref_count86, align 8, !tbaa !79
  br label %do.cond.88

do.cond.88:                                       ; preds = %do.end.82
  br label %do.end.89

do.end.89:                                        ; preds = %do.cond.88
  %47 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_noconst, align 8, !tbaa !1
  %params90 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %47, i32 0, i32 7
  %abc91 = bitcast %union.anon* %params90 to %struct.gs_cie_abc_s**
  %48 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %abc91, align 8, !tbaa !1
  %rc92 = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %48, i32 0, i32 1
  %ref_count93 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc92, i32 0, i32 0
  %49 = load i64, i64* %ref_count93, align 8, !tbaa !79
  %tobool94 = icmp ne i64 %49, 0
  br i1 %tobool94, label %if.else.114, label %if.then.95

if.then.95:                                       ; preds = %do.end.89
  br label %do.body.96

do.body.96:                                       ; preds = %if.then.95
  br label %do.body.97

do.body.97:                                       ; preds = %do.body.96
  br label %do.cond.98

do.cond.98:                                       ; preds = %do.body.97
  br label %do.end.99

do.end.99:                                        ; preds = %do.cond.98
  %50 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_noconst, align 8, !tbaa !1
  %params100 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %50, i32 0, i32 7
  %abc101 = bitcast %union.anon* %params100 to %struct.gs_cie_abc_s**
  %51 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %abc101, align 8, !tbaa !1
  %rc102 = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %51, i32 0, i32 1
  %free103 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc102, i32 0, i32 2
  %52 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free103, align 8, !tbaa !81
  %53 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_noconst, align 8, !tbaa !1
  %params104 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %53, i32 0, i32 7
  %abc105 = bitcast %union.anon* %params104 to %struct.gs_cie_abc_s**
  %54 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %abc105, align 8, !tbaa !1
  %rc106 = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %54, i32 0, i32 1
  %memory107 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc106, i32 0, i32 1
  %55 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory107, align 8, !tbaa !82
  %56 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_noconst, align 8, !tbaa !1
  %params108 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %56, i32 0, i32 7
  %abc109 = bitcast %union.anon* %params108 to %struct.gs_cie_abc_s**
  %57 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %abc109, align 8, !tbaa !1
  %58 = bitcast %struct.gs_cie_abc_s* %57 to i8*
  call void %52(%struct.gs_memory_s* %55, i8* %58, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0)) #3
  br label %do.cond.110

do.cond.110:                                      ; preds = %do.end.99
  br label %do.end.111

do.end.111:                                       ; preds = %do.cond.110
  %59 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_noconst, align 8, !tbaa !1
  %params112 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %59, i32 0, i32 7
  %abc113 = bitcast %union.anon* %params112 to %struct.gs_cie_abc_s**
  store %struct.gs_cie_abc_s* null, %struct.gs_cie_abc_s** %abc113, align 8, !tbaa !1
  br label %if.end.118

if.else.114:                                      ; preds = %do.end.89
  br label %do.body.115

do.body.115:                                      ; preds = %if.else.114
  br label %do.cond.116

do.cond.116:                                      ; preds = %do.body.115
  br label %do.end.117

do.end.117:                                       ; preds = %do.cond.116
  br label %if.end.118

if.end.118:                                       ; preds = %do.end.117, %do.end.111
  br label %if.end.119

if.end.119:                                       ; preds = %if.end.118, %do.body.76
  br label %do.cond.120

do.cond.120:                                      ; preds = %if.end.119
  br label %do.end.121

do.end.121:                                       ; preds = %do.cond.120
  %60 = bitcast %struct.gs_color_space_s** %pcs_noconst to i8*
  call void @llvm.lifetime.end(i64 8, i8* %60) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_serialize_CIEABC(%struct.gs_color_space_s* %pcs, %struct.stream_s* %s) #1 {
entry:
  %retval = alloca i32, align 4
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %s.addr = alloca %struct.stream_s*, align 8
  %p = alloca %struct.gs_cie_abc_s*, align 8
  %n = alloca i32, align 4
  %k = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_cie_abc_s** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %1, i32 0, i32 7
  %abc = bitcast %union.anon* %params to %struct.gs_cie_abc_s**
  %2 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %abc, align 8, !tbaa !1
  store %struct.gs_cie_abc_s* %2, %struct.gs_cie_abc_s** %p, align 8, !tbaa !1
  %3 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %7 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call = call i32 @gx_serialize_cie_common_elements(%struct.gs_color_space_s* %6, %struct.stream_s* %7) #3
  store i32 %call, i32* %code, align 4, !tbaa !73
  %8 = load i32, i32* %code, align 4, !tbaa !73
  %cmp = icmp slt i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %code, align 4, !tbaa !73
  store i32 %9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %11 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %p, align 8, !tbaa !1
  %RangeABC = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %11, i32 0, i32 2
  %12 = bitcast %struct.gs_range3_s* %RangeABC to i8*
  %call1 = call i32 @sputs(%struct.stream_s* %10, i8* %12, i32 24, i32* %n) #3
  store i32 %call1, i32* %code, align 4, !tbaa !73
  %13 = load i32, i32* %code, align 4, !tbaa !73
  %cmp2 = icmp slt i32 %13, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %14 = load i32, i32* %code, align 4, !tbaa !73
  store i32 %14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %15 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %16 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %p, align 8, !tbaa !1
  %caches = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %16, i32 0, i32 5
  %skipABC = getelementptr inbounds %struct.anon.7, %struct.anon.7* %caches, i32 0, i32 0
  %17 = bitcast i32* %skipABC to i8*
  %call5 = call i32 @sputs(%struct.stream_s* %15, i8* %17, i32 4, i32* %n) #3
  store i32 %call5, i32* %code, align 4, !tbaa !73
  %18 = load i32, i32* %code, align 4, !tbaa !73
  %cmp6 = icmp slt i32 %18, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  %19 = load i32, i32* %code, align 4, !tbaa !73
  store i32 %19, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.end.4
  %20 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %p, align 8, !tbaa !1
  %caches9 = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %20, i32 0, i32 5
  %skipABC10 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %caches9, i32 0, i32 0
  %21 = load i32, i32* %skipABC10, align 4, !tbaa !83
  %tobool = icmp ne i32 %21, 0
  br i1 %tobool, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.8
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.end.8
  store i32 0, i32* %k, align 4, !tbaa !73
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.12
  %22 = load i32, i32* %k, align 4, !tbaa !73
  %cmp13 = icmp ult i32 %22, 3
  br i1 %cmp13, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %23 = load i32, i32* %code, align 4, !tbaa !73
  %cmp14 = icmp sge i32 %23, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %24 = phi i1 [ false, %for.cond ], [ %cmp14, %land.rhs ]
  br i1 %24, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %25 = load i32, i32* %k, align 4, !tbaa !73
  %idxprom = zext i32 %25 to i64
  %26 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %p, align 8, !tbaa !1
  %caches15 = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %26, i32 0, i32 5
  %DecodeABC = getelementptr inbounds %struct.anon.7, %struct.anon.7* %caches15, i32 0, i32 1
  %caches16 = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %DecodeABC, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.gx_cie_vector_cache_s]* %caches16, i32 0, i64 %idxprom
  %floats = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arrayidx, i32 0, i32 0
  %27 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call17 = call i32 @gx_serialize_cie_cache(%struct.cie_cache_floats_s* %floats, %struct.stream_s* %27) #3
  store i32 %call17, i32* %code, align 4, !tbaa !73
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %28 = load i32, i32* %k, align 4, !tbaa !73
  %inc = add i32 %28, 1
  store i32 %inc, i32* %k, align 4, !tbaa !73
  br label %for.cond

for.end:                                          ; preds = %land.end
  %29 = load i32, i32* %code, align 4, !tbaa !73
  %cmp18 = icmp slt i32 %29, 0
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %for.end
  %30 = load i32, i32* %code, align 4, !tbaa !73
  store i32 %30, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.20:                                        ; preds = %for.end
  %31 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %32 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %p, align 8, !tbaa !1
  %MatrixABC = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %32, i32 0, i32 4
  %33 = bitcast %struct.gs_matrix3_s* %MatrixABC to i8*
  %call21 = call i32 @sputs(%struct.stream_s* %31, i8* %33, i32 40, i32* %n) #3
  store i32 %call21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.20, %if.then.19, %if.then.11, %if.then.7, %if.then.3, %if.then
  %34 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #2
  %35 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #2
  %36 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #2
  %37 = bitcast %struct.gs_cie_abc_s** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #2
  %38 = load i32, i32* %retval
  ret i32 %38
}

declare i32 @gx_polarity_additive(%struct.gs_color_space_s*) #0

declare i32 @gx_num_components_1(%struct.gs_color_space_s*) #0

declare void @gx_restrict_CIEA(%struct.gs_client_color_s*, %struct.gs_color_space_s*) #0

declare i32 @gx_concretize_CIEA(%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*) #0

declare i32 @gx_remap_CIEA(%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32) #0

; Function Attrs: nounwind uwtable
define internal void @gx_final_CIEA(%struct.gs_color_space_s* %pcs) #1 {
entry:
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pcs_noconst = alloca %struct.gs_color_space_s*, align 8
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_color_space_s** %pcs_noconst to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %1, %struct.gs_color_space_s** %pcs_noconst, align 8, !tbaa !1
  %2 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %icc_equivalent = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %2, i32 0, i32 4
  %3 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_equivalent, align 8, !tbaa !53
  %cmp = icmp ne %struct.gs_color_space_s* %3, null
  br i1 %cmp, label %if.then, label %if.end.31

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %4 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_noconst, align 8, !tbaa !1
  %icc_equivalent1 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %4, i32 0, i32 4
  %5 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_equivalent1, align 8, !tbaa !53
  %tobool = icmp ne %struct.gs_color_space_s* %5, null
  br i1 %tobool, label %if.then.2, label %if.end.28

if.then.2:                                        ; preds = %do.body
  br label %do.body.3

do.body.3:                                        ; preds = %if.then.2
  br label %do.body.4

do.body.4:                                        ; preds = %do.body.3
  br label %do.cond

do.cond:                                          ; preds = %do.body.4
  br label %do.end

do.end:                                           ; preds = %do.cond
  %6 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_noconst, align 8, !tbaa !1
  %icc_equivalent5 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %6, i32 0, i32 4
  %7 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_equivalent5, align 8, !tbaa !53
  %rc = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %7, i32 0, i32 1
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %8 = load i64, i64* %ref_count, align 8, !tbaa !55
  %add = add nsw i64 %8, -1
  store i64 %add, i64* %ref_count, align 8, !tbaa !55
  br label %do.cond.6

do.cond.6:                                        ; preds = %do.end
  br label %do.end.7

do.end.7:                                         ; preds = %do.cond.6
  %9 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_noconst, align 8, !tbaa !1
  %icc_equivalent8 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %9, i32 0, i32 4
  %10 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_equivalent8, align 8, !tbaa !53
  %rc9 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %10, i32 0, i32 1
  %ref_count10 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc9, i32 0, i32 0
  %11 = load i64, i64* %ref_count10, align 8, !tbaa !55
  %tobool11 = icmp ne i64 %11, 0
  br i1 %tobool11, label %if.else, label %if.then.12

if.then.12:                                       ; preds = %do.end.7
  br label %do.body.13

do.body.13:                                       ; preds = %if.then.12
  br label %do.body.14

do.body.14:                                       ; preds = %do.body.13
  br label %do.cond.15

do.cond.15:                                       ; preds = %do.body.14
  br label %do.end.16

do.end.16:                                        ; preds = %do.cond.15
  %12 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_noconst, align 8, !tbaa !1
  %icc_equivalent17 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %12, i32 0, i32 4
  %13 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_equivalent17, align 8, !tbaa !53
  %rc18 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %13, i32 0, i32 1
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc18, i32 0, i32 2
  %14 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !56
  %15 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_noconst, align 8, !tbaa !1
  %icc_equivalent19 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %15, i32 0, i32 4
  %16 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_equivalent19, align 8, !tbaa !53
  %rc20 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %16, i32 0, i32 1
  %memory = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc20, i32 0, i32 1
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !57
  %18 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_noconst, align 8, !tbaa !1
  %icc_equivalent21 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %18, i32 0, i32 4
  %19 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_equivalent21, align 8, !tbaa !53
  %20 = bitcast %struct.gs_color_space_s* %19 to i8*
  call void %14(%struct.gs_memory_s* %17, i8* %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0)) #3
  br label %do.cond.22

do.cond.22:                                       ; preds = %do.end.16
  br label %do.end.23

do.end.23:                                        ; preds = %do.cond.22
  %21 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_noconst, align 8, !tbaa !1
  %icc_equivalent24 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %21, i32 0, i32 4
  store %struct.gs_color_space_s* null, %struct.gs_color_space_s** %icc_equivalent24, align 8, !tbaa !53
  br label %if.end

if.else:                                          ; preds = %do.end.7
  br label %do.body.25

do.body.25:                                       ; preds = %if.else
  br label %do.cond.26

do.cond.26:                                       ; preds = %do.body.25
  br label %do.end.27

do.end.27:                                        ; preds = %do.cond.26
  br label %if.end

if.end:                                           ; preds = %do.end.27, %do.end.23
  br label %if.end.28

if.end.28:                                        ; preds = %if.end, %do.body
  br label %do.cond.29

do.cond.29:                                       ; preds = %if.end.28
  br label %do.end.30

do.end.30:                                        ; preds = %do.cond.29
  br label %if.end.31

if.end.31:                                        ; preds = %do.end.30, %entry
  %22 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %cmm_icc_profile_data = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %22, i32 0, i32 6
  %23 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data, align 8, !tbaa !58
  %cmp32 = icmp ne %struct.cmm_profile_s* %23, null
  br i1 %cmp32, label %if.then.33, label %if.end.75

if.then.33:                                       ; preds = %if.end.31
  br label %do.body.34

do.body.34:                                       ; preds = %if.then.33
  %24 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_noconst, align 8, !tbaa !1
  %cmm_icc_profile_data35 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %24, i32 0, i32 6
  %25 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data35, align 8, !tbaa !58
  %tobool36 = icmp ne %struct.cmm_profile_s* %25, null
  br i1 %tobool36, label %if.then.37, label %if.end.72

if.then.37:                                       ; preds = %do.body.34
  br label %do.body.38

do.body.38:                                       ; preds = %if.then.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.body.38
  br label %do.cond.40

do.cond.40:                                       ; preds = %do.body.39
  br label %do.end.41

do.end.41:                                        ; preds = %do.cond.40
  %26 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_noconst, align 8, !tbaa !1
  %cmm_icc_profile_data42 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %26, i32 0, i32 6
  %27 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data42, align 8, !tbaa !58
  %rc43 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %27, i32 0, i32 18
  %ref_count44 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc43, i32 0, i32 0
  %28 = load i64, i64* %ref_count44, align 8, !tbaa !59
  %add45 = add nsw i64 %28, -1
  store i64 %add45, i64* %ref_count44, align 8, !tbaa !59
  br label %do.cond.46

do.cond.46:                                       ; preds = %do.end.41
  br label %do.end.47

do.end.47:                                        ; preds = %do.cond.46
  %29 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_noconst, align 8, !tbaa !1
  %cmm_icc_profile_data48 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %29, i32 0, i32 6
  %30 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data48, align 8, !tbaa !58
  %rc49 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %30, i32 0, i32 18
  %ref_count50 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc49, i32 0, i32 0
  %31 = load i64, i64* %ref_count50, align 8, !tbaa !59
  %tobool51 = icmp ne i64 %31, 0
  br i1 %tobool51, label %if.else.67, label %if.then.52

if.then.52:                                       ; preds = %do.end.47
  br label %do.body.53

do.body.53:                                       ; preds = %if.then.52
  br label %do.body.54

do.body.54:                                       ; preds = %do.body.53
  br label %do.cond.55

do.cond.55:                                       ; preds = %do.body.54
  br label %do.end.56

do.end.56:                                        ; preds = %do.cond.55
  %32 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_noconst, align 8, !tbaa !1
  %cmm_icc_profile_data57 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %32, i32 0, i32 6
  %33 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data57, align 8, !tbaa !58
  %rc58 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %33, i32 0, i32 18
  %free59 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc58, i32 0, i32 2
  %34 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free59, align 8, !tbaa !63
  %35 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_noconst, align 8, !tbaa !1
  %cmm_icc_profile_data60 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %35, i32 0, i32 6
  %36 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data60, align 8, !tbaa !58
  %rc61 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %36, i32 0, i32 18
  %memory62 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc61, i32 0, i32 1
  %37 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory62, align 8, !tbaa !64
  %38 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_noconst, align 8, !tbaa !1
  %cmm_icc_profile_data63 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %38, i32 0, i32 6
  %39 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data63, align 8, !tbaa !58
  %40 = bitcast %struct.cmm_profile_s* %39 to i8*
  call void %34(%struct.gs_memory_s* %37, i8* %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0)) #3
  br label %do.cond.64

do.cond.64:                                       ; preds = %do.end.56
  br label %do.end.65

do.end.65:                                        ; preds = %do.cond.64
  %41 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_noconst, align 8, !tbaa !1
  %cmm_icc_profile_data66 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %41, i32 0, i32 6
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %cmm_icc_profile_data66, align 8, !tbaa !58
  br label %if.end.71

if.else.67:                                       ; preds = %do.end.47
  br label %do.body.68

do.body.68:                                       ; preds = %if.else.67
  br label %do.cond.69

do.cond.69:                                       ; preds = %do.body.68
  br label %do.end.70

do.end.70:                                        ; preds = %do.cond.69
  br label %if.end.71

if.end.71:                                        ; preds = %do.end.70, %do.end.65
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %do.body.34
  br label %do.cond.73

do.cond.73:                                       ; preds = %if.end.72
  br label %do.end.74

do.end.74:                                        ; preds = %do.cond.73
  br label %if.end.75

if.end.75:                                        ; preds = %do.end.74, %if.end.31
  br label %do.body.76

do.body.76:                                       ; preds = %if.end.75
  %42 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_noconst, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %42, i32 0, i32 7
  %a = bitcast %union.anon* %params to %struct.gs_cie_a_s**
  %43 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %a, align 8, !tbaa !1
  %tobool77 = icmp ne %struct.gs_cie_a_s* %43, null
  br i1 %tobool77, label %if.then.78, label %if.end.119

if.then.78:                                       ; preds = %do.body.76
  br label %do.body.79

do.body.79:                                       ; preds = %if.then.78
  br label %do.body.80

do.body.80:                                       ; preds = %do.body.79
  br label %do.cond.81

do.cond.81:                                       ; preds = %do.body.80
  br label %do.end.82

do.end.82:                                        ; preds = %do.cond.81
  %44 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_noconst, align 8, !tbaa !1
  %params83 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %44, i32 0, i32 7
  %a84 = bitcast %union.anon* %params83 to %struct.gs_cie_a_s**
  %45 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %a84, align 8, !tbaa !1
  %rc85 = getelementptr inbounds %struct.gs_cie_a_s, %struct.gs_cie_a_s* %45, i32 0, i32 1
  %ref_count86 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc85, i32 0, i32 0
  %46 = load i64, i64* %ref_count86, align 8, !tbaa !84
  %add87 = add nsw i64 %46, -1
  store i64 %add87, i64* %ref_count86, align 8, !tbaa !84
  br label %do.cond.88

do.cond.88:                                       ; preds = %do.end.82
  br label %do.end.89

do.end.89:                                        ; preds = %do.cond.88
  %47 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_noconst, align 8, !tbaa !1
  %params90 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %47, i32 0, i32 7
  %a91 = bitcast %union.anon* %params90 to %struct.gs_cie_a_s**
  %48 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %a91, align 8, !tbaa !1
  %rc92 = getelementptr inbounds %struct.gs_cie_a_s, %struct.gs_cie_a_s* %48, i32 0, i32 1
  %ref_count93 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc92, i32 0, i32 0
  %49 = load i64, i64* %ref_count93, align 8, !tbaa !84
  %tobool94 = icmp ne i64 %49, 0
  br i1 %tobool94, label %if.else.114, label %if.then.95

if.then.95:                                       ; preds = %do.end.89
  br label %do.body.96

do.body.96:                                       ; preds = %if.then.95
  br label %do.body.97

do.body.97:                                       ; preds = %do.body.96
  br label %do.cond.98

do.cond.98:                                       ; preds = %do.body.97
  br label %do.end.99

do.end.99:                                        ; preds = %do.cond.98
  %50 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_noconst, align 8, !tbaa !1
  %params100 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %50, i32 0, i32 7
  %a101 = bitcast %union.anon* %params100 to %struct.gs_cie_a_s**
  %51 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %a101, align 8, !tbaa !1
  %rc102 = getelementptr inbounds %struct.gs_cie_a_s, %struct.gs_cie_a_s* %51, i32 0, i32 1
  %free103 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc102, i32 0, i32 2
  %52 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free103, align 8, !tbaa !85
  %53 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_noconst, align 8, !tbaa !1
  %params104 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %53, i32 0, i32 7
  %a105 = bitcast %union.anon* %params104 to %struct.gs_cie_a_s**
  %54 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %a105, align 8, !tbaa !1
  %rc106 = getelementptr inbounds %struct.gs_cie_a_s, %struct.gs_cie_a_s* %54, i32 0, i32 1
  %memory107 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc106, i32 0, i32 1
  %55 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory107, align 8, !tbaa !86
  %56 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_noconst, align 8, !tbaa !1
  %params108 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %56, i32 0, i32 7
  %a109 = bitcast %union.anon* %params108 to %struct.gs_cie_a_s**
  %57 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %a109, align 8, !tbaa !1
  %58 = bitcast %struct.gs_cie_a_s* %57 to i8*
  call void %52(%struct.gs_memory_s* %55, i8* %58, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i32 0, i32 0)) #3
  br label %do.cond.110

do.cond.110:                                      ; preds = %do.end.99
  br label %do.end.111

do.end.111:                                       ; preds = %do.cond.110
  %59 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_noconst, align 8, !tbaa !1
  %params112 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %59, i32 0, i32 7
  %a113 = bitcast %union.anon* %params112 to %struct.gs_cie_a_s**
  store %struct.gs_cie_a_s* null, %struct.gs_cie_a_s** %a113, align 8, !tbaa !1
  br label %if.end.118

if.else.114:                                      ; preds = %do.end.89
  br label %do.body.115

do.body.115:                                      ; preds = %if.else.114
  br label %do.cond.116

do.cond.116:                                      ; preds = %do.body.115
  br label %do.end.117

do.end.117:                                       ; preds = %do.cond.116
  br label %if.end.118

if.end.118:                                       ; preds = %do.end.117, %do.end.111
  br label %if.end.119

if.end.119:                                       ; preds = %if.end.118, %do.body.76
  br label %do.cond.120

do.cond.120:                                      ; preds = %if.end.119
  br label %do.end.121

do.end.121:                                       ; preds = %do.cond.120
  %60 = bitcast %struct.gs_color_space_s** %pcs_noconst to i8*
  call void @llvm.lifetime.end(i64 8, i8* %60) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_serialize_CIEA(%struct.gs_color_space_s* %pcs, %struct.stream_s* %s) #1 {
entry:
  %retval = alloca i32, align 4
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %s.addr = alloca %struct.stream_s*, align 8
  %p = alloca %struct.gs_cie_a_s*, align 8
  %n = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_cie_a_s** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %1, i32 0, i32 7
  %a = bitcast %union.anon* %params to %struct.gs_cie_a_s**
  %2 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %a, align 8, !tbaa !1
  store %struct.gs_cie_a_s* %2, %struct.gs_cie_a_s** %p, align 8, !tbaa !1
  %3 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %6 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call = call i32 @gx_serialize_cie_common_elements(%struct.gs_color_space_s* %5, %struct.stream_s* %6) #3
  store i32 %call, i32* %code, align 4, !tbaa !73
  %7 = load i32, i32* %code, align 4, !tbaa !73
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %code, align 4, !tbaa !73
  store i32 %8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %10 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %p, align 8, !tbaa !1
  %RangeA = getelementptr inbounds %struct.gs_cie_a_s, %struct.gs_cie_a_s* %10, i32 0, i32 2
  %11 = bitcast %struct.gs_range_s* %RangeA to i8*
  %call1 = call i32 @sputs(%struct.stream_s* %9, i8* %11, i32 8, i32* %n) #3
  store i32 %call1, i32* %code, align 4, !tbaa !73
  %12 = load i32, i32* %code, align 4, !tbaa !73
  %cmp2 = icmp slt i32 %12, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %13 = load i32, i32* %code, align 4, !tbaa !73
  store i32 %13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %14 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %p, align 8, !tbaa !1
  %caches = getelementptr inbounds %struct.gs_cie_a_s, %struct.gs_cie_a_s* %14, i32 0, i32 5
  %DecodeA = getelementptr inbounds %struct.anon.8, %struct.anon.8* %caches, i32 0, i32 0
  %floats = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %DecodeA, i32 0, i32 0
  %15 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call5 = call i32 @gx_serialize_cie_cache(%struct.cie_cache_floats_s* %floats, %struct.stream_s* %15) #3
  store i32 %call5, i32* %code, align 4, !tbaa !73
  %16 = load i32, i32* %code, align 4, !tbaa !73
  %cmp6 = icmp slt i32 %16, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  %17 = load i32, i32* %code, align 4, !tbaa !73
  store i32 %17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.end.4
  %18 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %19 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %p, align 8, !tbaa !1
  %MatrixA = getelementptr inbounds %struct.gs_cie_a_s, %struct.gs_cie_a_s* %19, i32 0, i32 4
  %20 = bitcast %struct.gs_vector3_s* %MatrixA to i8*
  %call9 = call i32 @sputs(%struct.stream_s* %18, i8* %20, i32 12, i32* %n) #3
  store i32 %call9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.8, %if.then.7, %if.then.3, %if.then
  %21 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #2
  %22 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #2
  %23 = bitcast %struct.gs_cie_a_s** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #2
  %24 = load i32, i32* %retval
  ret i32 %24
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define void @gx_set_common_cie_defaults(%struct.gs_cie_common_s* %pcommon, i8* %client_data) #1 {
entry:
  %pcommon.addr = alloca %struct.gs_cie_common_s*, align 8
  %client_data.addr = alloca i8*, align 8
  store %struct.gs_cie_common_s* %pcommon, %struct.gs_cie_common_s** %pcommon.addr, align 8, !tbaa !1
  store i8* %client_data, i8** %client_data.addr, align 8, !tbaa !1
  %0 = load %struct.gs_cie_common_s*, %struct.gs_cie_common_s** %pcommon.addr, align 8, !tbaa !1
  %RangeLMN = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %0, i32 0, i32 2
  %1 = bitcast %struct.gs_range3_s* %RangeLMN to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* bitcast (%struct.gs_range3_s* @Range3_default to i8*), i64 24, i32 4, i1 false), !tbaa.struct !87
  %2 = load %struct.gs_cie_common_s*, %struct.gs_cie_common_s** %pcommon.addr, align 8, !tbaa !1
  %DecodeLMN = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %2, i32 0, i32 3
  %3 = bitcast %struct.gs_cie_common_proc3_s* %DecodeLMN to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* bitcast (%struct.gs_cie_common_proc3_s* @DecodeLMN_default to i8*), i64 24, i32 8, i1 false), !tbaa.struct !87
  %4 = load %struct.gs_cie_common_s*, %struct.gs_cie_common_s** %pcommon.addr, align 8, !tbaa !1
  %MatrixLMN = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %4, i32 0, i32 4
  %5 = bitcast %struct.gs_matrix3_s* %MatrixLMN to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* bitcast (%struct.gs_matrix3_s* @Matrix3_default to i8*), i64 40, i32 4, i1 false), !tbaa.struct !89
  %6 = load %struct.gs_cie_common_s*, %struct.gs_cie_common_s** %pcommon.addr, align 8, !tbaa !1
  %points = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %6, i32 0, i32 5
  %WhitePoint = getelementptr inbounds %struct.gs_cie_wb_s, %struct.gs_cie_wb_s* %points, i32 0, i32 0
  %7 = bitcast %struct.gs_vector3_s* %WhitePoint to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* bitcast (%struct.gs_vector3_s* @BlackPoint_default to i8*), i64 12, i32 4, i1 false), !tbaa.struct !91
  %8 = load %struct.gs_cie_common_s*, %struct.gs_cie_common_s** %pcommon.addr, align 8, !tbaa !1
  %points1 = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %8, i32 0, i32 5
  %BlackPoint = getelementptr inbounds %struct.gs_cie_wb_s, %struct.gs_cie_wb_s* %points1, i32 0, i32 1
  %9 = bitcast %struct.gs_vector3_s* %BlackPoint to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* bitcast (%struct.gs_vector3_s* @BlackPoint_default to i8*), i64 12, i32 4, i1 false), !tbaa.struct !91
  %10 = load i8*, i8** %client_data.addr, align 8, !tbaa !1
  %11 = load %struct.gs_cie_common_s*, %struct.gs_cie_common_s** %pcommon.addr, align 8, !tbaa !1
  %client_data2 = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %11, i32 0, i32 1
  store i8* %10, i8** %client_data2, align 8, !tbaa !92
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define i8* @gx_build_cie_space(%struct.gs_color_space_s** %ppcspace, %struct.gs_color_space_type_s* %pcstype, %struct.gs_memory_struct_type_s* %stype, %struct.gs_memory_s* %pmem) #1 {
entry:
  %retval = alloca i8*, align 8
  %ppcspace.addr = alloca %struct.gs_color_space_s**, align 8
  %pcstype.addr = alloca %struct.gs_color_space_type_s*, align 8
  %stype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %pmem.addr = alloca %struct.gs_memory_s*, align 8
  %pcspace = alloca %struct.gs_color_space_s*, align 8
  %pdata = alloca %struct.gs_cie_common_elements_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_color_space_s** %ppcspace, %struct.gs_color_space_s*** %ppcspace.addr, align 8, !tbaa !1
  store %struct.gs_color_space_type_s* %pcstype, %struct.gs_color_space_type_s** %pcstype.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %stype, %struct.gs_memory_struct_type_s** %stype.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %pmem, %struct.gs_memory_s** %pmem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_color_space_s** %pcspace to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %pmem.addr, align 8, !tbaa !1
  %2 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %pcstype.addr, align 8, !tbaa !1
  %call = call %struct.gs_color_space_s* @gs_cspace_alloc(%struct.gs_memory_s* %1, %struct.gs_color_space_type_s* %2) #3
  store %struct.gs_color_space_s* %call, %struct.gs_color_space_s** %pcspace, align 8, !tbaa !1
  %3 = bitcast %struct.gs_cie_common_elements_s** %pdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcspace, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_color_space_s* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %pmem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %5, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %6 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !93
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %pmem.addr, align 8, !tbaa !1
  %8 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %stype.addr, align 8, !tbaa !1
  %call1 = call i8* %6(%struct.gs_memory_s* %7, %struct.gs_memory_struct_type_s* %8, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i32 0, i32 0)) #3
  %9 = bitcast i8* %call1 to %struct.gs_cie_common_elements_s*
  store %struct.gs_cie_common_elements_s* %9, %struct.gs_cie_common_elements_s** %pdata, align 8, !tbaa !1
  %cmp2 = icmp eq %struct.gs_cie_common_elements_s* %9, null
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %pmem.addr, align 8, !tbaa !1
  %procs4 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %10, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs4, i32 0, i32 2
  %11 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !96
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %pmem.addr, align 8, !tbaa !1
  %13 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcspace, align 8, !tbaa !1
  %14 = bitcast %struct.gs_color_space_s* %13 to i8*
  call void %11(%struct.gs_memory_s* %12, i8* %14, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0)) #3
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body
  br label %do.body.5

do.body.5:                                        ; preds = %if.else
  %15 = load %struct.gs_cie_common_elements_s*, %struct.gs_cie_common_elements_s** %pdata, align 8, !tbaa !1
  %rc = getelementptr inbounds %struct.gs_cie_common_elements_s, %struct.gs_cie_common_elements_s* %15, i32 0, i32 1
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  store i64 1, i64* %ref_count, align 8, !tbaa !97
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %pmem.addr, align 8, !tbaa !1
  %17 = load %struct.gs_cie_common_elements_s*, %struct.gs_cie_common_elements_s** %pdata, align 8, !tbaa !1
  %rc6 = getelementptr inbounds %struct.gs_cie_common_elements_s, %struct.gs_cie_common_elements_s* %17, i32 0, i32 1
  %memory = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc6, i32 0, i32 1
  store %struct.gs_memory_s* %16, %struct.gs_memory_s** %memory, align 8, !tbaa !99
  %18 = load %struct.gs_cie_common_elements_s*, %struct.gs_cie_common_elements_s** %pdata, align 8, !tbaa !1
  %rc7 = getelementptr inbounds %struct.gs_cie_common_elements_s, %struct.gs_cie_common_elements_s* %18, i32 0, i32 1
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc7, i32 0, i32 2
  store void (%struct.gs_memory_s*, i8*, i8*)* @rc_free_struct_only, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !100
  br label %do.body.8

do.body.8:                                        ; preds = %do.body.5
  br label %do.cond

do.cond:                                          ; preds = %do.body.8
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.cond.9

do.cond.9:                                        ; preds = %do.end
  br label %do.end.10

do.end.10:                                        ; preds = %do.cond.9
  br label %if.end.11

if.end.11:                                        ; preds = %do.end.10
  br label %do.cond.12

do.cond.12:                                       ; preds = %if.end.11
  br label %do.end.13

do.end.13:                                        ; preds = %do.cond.12
  %19 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcspace, align 8, !tbaa !1
  %20 = load %struct.gs_color_space_s**, %struct.gs_color_space_s*** %ppcspace.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %19, %struct.gs_color_space_s** %20, align 8, !tbaa !1
  %21 = load %struct.gs_cie_common_elements_s*, %struct.gs_cie_common_elements_s** %pdata, align 8, !tbaa !1
  %22 = bitcast %struct.gs_cie_common_elements_s* %21 to i8*
  store i8* %22, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.13, %if.then.3, %if.then
  %23 = bitcast %struct.gs_cie_common_elements_s** %pdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #2
  %24 = bitcast %struct.gs_color_space_s** %pcspace to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #2
  %25 = load i8*, i8** %retval
  ret i8* %25
}

declare %struct.gs_color_space_s* @gs_cspace_alloc(%struct.gs_memory_s*, %struct.gs_color_space_type_s*) #0

declare void @rc_free_struct_only(%struct.gs_memory_s*, i8*, i8*) #0

; Function Attrs: nounwind uwtable
define i32 @gs_cspace_build_CIEA(%struct.gs_color_space_s** %ppcspace, i8* %client_data, %struct.gs_memory_s* %pmem) #1 {
entry:
  %retval = alloca i32, align 4
  %ppcspace.addr = alloca %struct.gs_color_space_s**, align 8
  %client_data.addr = alloca i8*, align 8
  %pmem.addr = alloca %struct.gs_memory_s*, align 8
  %pciea = alloca %struct.gs_cie_a_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_color_space_s** %ppcspace, %struct.gs_color_space_s*** %ppcspace.addr, align 8, !tbaa !1
  store i8* %client_data, i8** %client_data.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %pmem, %struct.gs_memory_s** %pmem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_cie_a_s** %pciea to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_color_space_s**, %struct.gs_color_space_s*** %ppcspace.addr, align 8, !tbaa !1
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %pmem.addr, align 8, !tbaa !1
  %call = call i8* @gx_build_cie_space(%struct.gs_color_space_s** %1, %struct.gs_color_space_type_s* bitcast ({ i32, i32, i32, %struct.gs_memory_struct_type_s*, i32 (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, void (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)*, i32 (%struct.gs_color_space_s*)* }* @gs_color_space_type_CIEA to %struct.gs_color_space_type_s*), %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_cie_a to %struct.gs_memory_struct_type_s*), %struct.gs_memory_s* %2) #3
  %3 = bitcast i8* %call to %struct.gs_cie_a_s*
  store %struct.gs_cie_a_s* %3, %struct.gs_cie_a_s** %pciea, align 8, !tbaa !1
  %4 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %pciea, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_cie_a_s* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %pciea, align 8, !tbaa !1
  %common = getelementptr inbounds %struct.gs_cie_a_s, %struct.gs_cie_a_s* %5, i32 0, i32 0
  %6 = load i8*, i8** %client_data.addr, align 8, !tbaa !1
  call void @gx_set_common_cie_defaults(%struct.gs_cie_common_s* %common, i8* %6) #3
  %7 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %pciea, align 8, !tbaa !1
  %common1 = getelementptr inbounds %struct.gs_cie_a_s, %struct.gs_cie_a_s* %7, i32 0, i32 0
  %install_cspace = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %common1, i32 0, i32 0
  store i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)* @gx_install_CIEA, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)** %install_cspace, align 8, !tbaa !40
  %8 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %pciea, align 8, !tbaa !1
  %RangeA = getelementptr inbounds %struct.gs_cie_a_s, %struct.gs_cie_a_s* %8, i32 0, i32 2
  %9 = bitcast %struct.gs_range_s* %RangeA to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* bitcast (%struct.gs_range_s* @RangeA_default to i8*), i64 8, i32 4, i1 false), !tbaa.struct !101
  %10 = load float (double, %struct.gs_cie_a_s*)*, float (double, %struct.gs_cie_a_s*)** @DecodeA_default, align 8, !tbaa !1
  %11 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %pciea, align 8, !tbaa !1
  %DecodeA = getelementptr inbounds %struct.gs_cie_a_s, %struct.gs_cie_a_s* %11, i32 0, i32 3
  store float (double, %struct.gs_cie_a_s*)* %10, float (double, %struct.gs_cie_a_s*)** %DecodeA, align 8, !tbaa !102
  %12 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %pciea, align 8, !tbaa !1
  %MatrixA = getelementptr inbounds %struct.gs_cie_a_s, %struct.gs_cie_a_s* %12, i32 0, i32 4
  %13 = bitcast %struct.gs_vector3_s* %MatrixA to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* bitcast (%struct.gs_vector3_s* @MatrixA_default to i8*), i64 12, i32 4, i1 false), !tbaa.struct !91
  %14 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %pciea, align 8, !tbaa !1
  %15 = load %struct.gs_color_space_s**, %struct.gs_color_space_s*** %ppcspace.addr, align 8, !tbaa !1
  %16 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %15, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %16, i32 0, i32 7
  %a = bitcast %union.anon* %params to %struct.gs_cie_a_s**
  store %struct.gs_cie_a_s* %14, %struct.gs_cie_a_s** %a, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %17 = bitcast %struct.gs_cie_a_s** %pciea to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #2
  %18 = load i32, i32* %retval
  ret i32 %18
}

declare i32 @gx_install_CIEA(%struct.gs_color_space_s*, %struct.gs_state_s*) #0

; Function Attrs: nounwind uwtable
define i32 @gs_cspace_build_CIEABC(%struct.gs_color_space_s** %ppcspace, i8* %client_data, %struct.gs_memory_s* %pmem) #1 {
entry:
  %retval = alloca i32, align 4
  %ppcspace.addr = alloca %struct.gs_color_space_s**, align 8
  %client_data.addr = alloca i8*, align 8
  %pmem.addr = alloca %struct.gs_memory_s*, align 8
  %pabc = alloca %struct.gs_cie_abc_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_color_space_s** %ppcspace, %struct.gs_color_space_s*** %ppcspace.addr, align 8, !tbaa !1
  store i8* %client_data, i8** %client_data.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %pmem, %struct.gs_memory_s** %pmem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_cie_abc_s** %pabc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_color_space_s**, %struct.gs_color_space_s*** %ppcspace.addr, align 8, !tbaa !1
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %pmem.addr, align 8, !tbaa !1
  %call = call i8* @gx_build_cie_space(%struct.gs_color_space_s** %1, %struct.gs_color_space_type_s* bitcast ({ i32, i32, i32, %struct.gs_memory_struct_type_s*, i32 (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, void (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)*, i32 (%struct.gs_color_space_s*)* }* @gs_color_space_type_CIEABC to %struct.gs_color_space_type_s*), %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_cie_abc to %struct.gs_memory_struct_type_s*), %struct.gs_memory_s* %2) #3
  %3 = bitcast i8* %call to %struct.gs_cie_abc_s*
  store %struct.gs_cie_abc_s* %3, %struct.gs_cie_abc_s** %pabc, align 8, !tbaa !1
  %4 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pabc, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_cie_abc_s* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pabc, align 8, !tbaa !1
  %6 = load i8*, i8** %client_data.addr, align 8, !tbaa !1
  call void @set_cie_abc_defaults(%struct.gs_cie_abc_s* %5, i8* %6) #3
  %7 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pabc, align 8, !tbaa !1
  %common = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %7, i32 0, i32 0
  %install_cspace = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %common, i32 0, i32 0
  store i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)* @gx_install_CIEABC, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)** %install_cspace, align 8, !tbaa !103
  %8 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pabc, align 8, !tbaa !1
  %9 = load %struct.gs_color_space_s**, %struct.gs_color_space_s*** %ppcspace.addr, align 8, !tbaa !1
  %10 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %9, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %10, i32 0, i32 7
  %abc = bitcast %union.anon* %params to %struct.gs_cie_abc_s**
  store %struct.gs_cie_abc_s* %8, %struct.gs_cie_abc_s** %abc, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %11 = bitcast %struct.gs_cie_abc_s** %pabc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #2
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal void @set_cie_abc_defaults(%struct.gs_cie_abc_s* %pabc, i8* %client_data) #1 {
entry:
  %pabc.addr = alloca %struct.gs_cie_abc_s*, align 8
  %client_data.addr = alloca i8*, align 8
  store %struct.gs_cie_abc_s* %pabc, %struct.gs_cie_abc_s** %pabc.addr, align 8, !tbaa !1
  store i8* %client_data, i8** %client_data.addr, align 8, !tbaa !1
  %0 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pabc.addr, align 8, !tbaa !1
  %common = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %0, i32 0, i32 0
  %1 = load i8*, i8** %client_data.addr, align 8, !tbaa !1
  call void @gx_set_common_cie_defaults(%struct.gs_cie_common_s* %common, i8* %1) #3
  %2 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pabc.addr, align 8, !tbaa !1
  %RangeABC = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %2, i32 0, i32 2
  %3 = bitcast %struct.gs_range3_s* %RangeABC to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* bitcast (%struct.gs_range3_s* @Range3_default to i8*), i64 24, i32 4, i1 false), !tbaa.struct !87
  %4 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pabc.addr, align 8, !tbaa !1
  %DecodeABC = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %4, i32 0, i32 3
  %5 = bitcast %struct.gs_cie_abc_proc3_s* %DecodeABC to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* bitcast (%struct.gs_cie_abc_proc3_s* @DecodeABC_default to i8*), i64 24, i32 8, i1 false), !tbaa.struct !87
  %6 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pabc.addr, align 8, !tbaa !1
  %MatrixABC = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %6, i32 0, i32 4
  %7 = bitcast %struct.gs_matrix3_s* %MatrixABC to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* bitcast (%struct.gs_matrix3_s* @Matrix3_default to i8*), i64 40, i32 4, i1 false), !tbaa.struct !89
  ret void
}

declare i32 @gx_install_CIEABC(%struct.gs_color_space_s*, %struct.gs_state_s*) #0

; Function Attrs: nounwind uwtable
define i32 @gs_cspace_build_CIEDEF(%struct.gs_color_space_s** %ppcspace, i8* %client_data, %struct.gs_memory_s* %pmem) #1 {
entry:
  %retval = alloca i32, align 4
  %ppcspace.addr = alloca %struct.gs_color_space_s**, align 8
  %client_data.addr = alloca i8*, align 8
  %pmem.addr = alloca %struct.gs_memory_s*, align 8
  %pdef = alloca %struct.gs_cie_def_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_color_space_s** %ppcspace, %struct.gs_color_space_s*** %ppcspace.addr, align 8, !tbaa !1
  store i8* %client_data, i8** %client_data.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %pmem, %struct.gs_memory_s** %pmem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_cie_def_s** %pdef to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_color_space_s**, %struct.gs_color_space_s*** %ppcspace.addr, align 8, !tbaa !1
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %pmem.addr, align 8, !tbaa !1
  %call = call i8* @gx_build_cie_space(%struct.gs_color_space_s** %1, %struct.gs_color_space_type_s* bitcast ({ i32, i32, i32, %struct.gs_memory_struct_type_s*, i32 (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, void (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)*, i32 (%struct.gs_color_space_s*)* }* @gs_color_space_type_CIEDEF to %struct.gs_color_space_type_s*), %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_cie_def to %struct.gs_memory_struct_type_s*), %struct.gs_memory_s* %2) #3
  %3 = bitcast i8* %call to %struct.gs_cie_def_s*
  store %struct.gs_cie_def_s* %3, %struct.gs_cie_def_s** %pdef, align 8, !tbaa !1
  %4 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %pdef, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_cie_def_s* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %pdef, align 8, !tbaa !1
  %6 = bitcast %struct.gs_cie_def_s* %5 to %struct.gs_cie_abc_s*
  %7 = load i8*, i8** %client_data.addr, align 8, !tbaa !1
  call void @set_cie_abc_defaults(%struct.gs_cie_abc_s* %6, i8* %7) #3
  %8 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %pdef, align 8, !tbaa !1
  %common = getelementptr inbounds %struct.gs_cie_def_s, %struct.gs_cie_def_s* %8, i32 0, i32 0
  %install_cspace = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %common, i32 0, i32 0
  store i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)* @gx_install_CIEDEF, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)** %install_cspace, align 8, !tbaa !104
  %9 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %pdef, align 8, !tbaa !1
  %RangeDEF = getelementptr inbounds %struct.gs_cie_def_s, %struct.gs_cie_def_s* %9, i32 0, i32 6
  %10 = bitcast %struct.gs_range3_s* %RangeDEF to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* bitcast (%struct.gs_range3_s* @Range3_default to i8*), i64 24, i32 4, i1 false), !tbaa.struct !87
  %11 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %pdef, align 8, !tbaa !1
  %DecodeDEF = getelementptr inbounds %struct.gs_cie_def_s, %struct.gs_cie_def_s* %11, i32 0, i32 7
  %12 = bitcast %struct.gs_cie_def_proc3_s* %DecodeDEF to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* bitcast (%struct.gs_cie_def_proc3_s* @DecodeDEF_default to i8*), i64 24, i32 8, i1 false), !tbaa.struct !87
  %13 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %pdef, align 8, !tbaa !1
  %RangeHIJ = getelementptr inbounds %struct.gs_cie_def_s, %struct.gs_cie_def_s* %13, i32 0, i32 8
  %14 = bitcast %struct.gs_range3_s* %RangeHIJ to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* bitcast (%struct.gs_range3_s* @Range3_default to i8*), i64 24, i32 4, i1 false), !tbaa.struct !87
  %15 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %pdef, align 8, !tbaa !1
  %Table = getelementptr inbounds %struct.gs_cie_def_s, %struct.gs_cie_def_s* %15, i32 0, i32 9
  call void @set_ctbl_defaults(%struct.gx_color_lookup_table_s* %Table, i32 3) #3
  %16 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %pdef, align 8, !tbaa !1
  %17 = load %struct.gs_color_space_s**, %struct.gs_color_space_s*** %ppcspace.addr, align 8, !tbaa !1
  %18 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %17, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %18, i32 0, i32 7
  %def = bitcast %union.anon* %params to %struct.gs_cie_def_s**
  store %struct.gs_cie_def_s* %16, %struct.gs_cie_def_s** %def, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %19 = bitcast %struct.gs_cie_def_s** %pdef to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #2
  %20 = load i32, i32* %retval
  ret i32 %20
}

declare i32 @gx_install_CIEDEF(%struct.gs_color_space_s*, %struct.gs_state_s*) #0

; Function Attrs: nounwind uwtable
define internal void @set_ctbl_defaults(%struct.gx_color_lookup_table_s* %plktblp, i32 %num_comps) #1 {
entry:
  %plktblp.addr = alloca %struct.gx_color_lookup_table_s*, align 8
  %num_comps.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.gx_color_lookup_table_s* %plktblp, %struct.gx_color_lookup_table_s** %plktblp.addr, align 8, !tbaa !1
  store i32 %num_comps, i32* %num_comps.addr, align 4, !tbaa !73
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load i32, i32* %num_comps.addr, align 4, !tbaa !73
  %2 = load %struct.gx_color_lookup_table_s*, %struct.gx_color_lookup_table_s** %plktblp.addr, align 8, !tbaa !1
  %n = getelementptr inbounds %struct.gx_color_lookup_table_s, %struct.gx_color_lookup_table_s* %2, i32 0, i32 0
  store i32 %1, i32* %n, align 4, !tbaa !105
  %3 = load %struct.gx_color_lookup_table_s*, %struct.gx_color_lookup_table_s** %plktblp.addr, align 8, !tbaa !1
  %m = getelementptr inbounds %struct.gx_color_lookup_table_s, %struct.gx_color_lookup_table_s* %3, i32 0, i32 2
  store i32 3, i32* %m, align 4, !tbaa !106
  store i32 0, i32* %i, align 4, !tbaa !73
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4, !tbaa !73
  %conv = sext i32 %4 to i64
  %cmp = icmp ult i64 %conv, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !tbaa !73
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.gx_color_lookup_table_s*, %struct.gx_color_lookup_table_s** %plktblp.addr, align 8, !tbaa !1
  %dims = getelementptr inbounds %struct.gx_color_lookup_table_s, %struct.gx_color_lookup_table_s* %6, i32 0, i32 1
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %dims, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4, !tbaa !73
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !tbaa !73
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4, !tbaa !73
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load %struct.gx_color_lookup_table_s*, %struct.gx_color_lookup_table_s** %plktblp.addr, align 8, !tbaa !1
  %table = getelementptr inbounds %struct.gx_color_lookup_table_s, %struct.gx_color_lookup_table_s* %8, i32 0, i32 3
  store %struct.gs_const_string_s* null, %struct.gs_const_string_s** %table, align 8, !tbaa !107
  %9 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %9) #2
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gs_cspace_build_CIEDEFG(%struct.gs_color_space_s** %ppcspace, i8* %client_data, %struct.gs_memory_s* %pmem) #1 {
entry:
  %retval = alloca i32, align 4
  %ppcspace.addr = alloca %struct.gs_color_space_s**, align 8
  %client_data.addr = alloca i8*, align 8
  %pmem.addr = alloca %struct.gs_memory_s*, align 8
  %pdefg = alloca %struct.gs_cie_defg_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_color_space_s** %ppcspace, %struct.gs_color_space_s*** %ppcspace.addr, align 8, !tbaa !1
  store i8* %client_data, i8** %client_data.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %pmem, %struct.gs_memory_s** %pmem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_cie_defg_s** %pdefg to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_color_space_s**, %struct.gs_color_space_s*** %ppcspace.addr, align 8, !tbaa !1
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %pmem.addr, align 8, !tbaa !1
  %call = call i8* @gx_build_cie_space(%struct.gs_color_space_s** %1, %struct.gs_color_space_type_s* bitcast ({ i32, i32, i32, %struct.gs_memory_struct_type_s*, i32 (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, void (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)*, i32 (%struct.gs_color_space_s*)* }* @gs_color_space_type_CIEDEFG to %struct.gs_color_space_type_s*), %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_cie_defg to %struct.gs_memory_struct_type_s*), %struct.gs_memory_s* %2) #3
  %3 = bitcast i8* %call to %struct.gs_cie_defg_s*
  store %struct.gs_cie_defg_s* %3, %struct.gs_cie_defg_s** %pdefg, align 8, !tbaa !1
  %4 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %pdefg, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_cie_defg_s* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %pdefg, align 8, !tbaa !1
  %6 = bitcast %struct.gs_cie_defg_s* %5 to %struct.gs_cie_abc_s*
  %7 = load i8*, i8** %client_data.addr, align 8, !tbaa !1
  call void @set_cie_abc_defaults(%struct.gs_cie_abc_s* %6, i8* %7) #3
  %8 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %pdefg, align 8, !tbaa !1
  %common = getelementptr inbounds %struct.gs_cie_defg_s, %struct.gs_cie_defg_s* %8, i32 0, i32 0
  %install_cspace = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %common, i32 0, i32 0
  store i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)* @gx_install_CIEDEFG, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)** %install_cspace, align 8, !tbaa !108
  %9 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %pdefg, align 8, !tbaa !1
  %RangeDEFG = getelementptr inbounds %struct.gs_cie_defg_s, %struct.gs_cie_defg_s* %9, i32 0, i32 6
  %10 = bitcast %struct.gs_range4_s* %RangeDEFG to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* bitcast (%struct.gs_range4_s* @Range4_default to i8*), i64 32, i32 4, i1 false), !tbaa.struct !109
  %11 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %pdefg, align 8, !tbaa !1
  %DecodeDEFG = getelementptr inbounds %struct.gs_cie_defg_s, %struct.gs_cie_defg_s* %11, i32 0, i32 7
  %12 = bitcast %struct.gs_cie_defg_proc4_s* %DecodeDEFG to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* bitcast (%struct.gs_cie_defg_proc4_s* @DecodeDEFG_default to i8*), i64 32, i32 8, i1 false), !tbaa.struct !109
  %13 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %pdefg, align 8, !tbaa !1
  %RangeHIJK = getelementptr inbounds %struct.gs_cie_defg_s, %struct.gs_cie_defg_s* %13, i32 0, i32 8
  %14 = bitcast %struct.gs_range4_s* %RangeHIJK to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* bitcast (%struct.gs_range4_s* @Range4_default to i8*), i64 32, i32 4, i1 false), !tbaa.struct !109
  %15 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %pdefg, align 8, !tbaa !1
  %Table = getelementptr inbounds %struct.gs_cie_defg_s, %struct.gs_cie_defg_s* %15, i32 0, i32 9
  call void @set_ctbl_defaults(%struct.gx_color_lookup_table_s* %Table, i32 4) #3
  %16 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %pdefg, align 8, !tbaa !1
  %17 = load %struct.gs_color_space_s**, %struct.gs_color_space_s*** %ppcspace.addr, align 8, !tbaa !1
  %18 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %17, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %18, i32 0, i32 7
  %defg = bitcast %union.anon* %params to %struct.gs_cie_defg_s**
  store %struct.gs_cie_defg_s* %16, %struct.gs_cie_defg_s** %defg, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %19 = bitcast %struct.gs_cie_defg_s** %pdefg to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #2
  %20 = load i32, i32* %retval
  ret i32 %20
}

declare i32 @gx_install_CIEDEFG(%struct.gs_color_space_s*, %struct.gs_state_s*) #0

; Function Attrs: nounwind uwtable
define i32 @gs_cie_defx_set_lookup_table(%struct.gs_color_space_s* %pcspace, i32* %pdims, %struct.gs_const_string_s* %ptable) #1 {
entry:
  %retval = alloca i32, align 4
  %pcspace.addr = alloca %struct.gs_color_space_s*, align 8
  %pdims.addr = alloca i32*, align 8
  %ptable.addr = alloca %struct.gs_const_string_s*, align 8
  %plktblp = alloca %struct.gx_color_lookup_table_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_color_space_s* %pcspace, %struct.gs_color_space_s** %pcspace.addr, align 8, !tbaa !1
  store i32* %pdims, i32** %pdims.addr, align 8, !tbaa !1
  store %struct.gs_const_string_s* %ptable, %struct.gs_const_string_s** %ptable.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_color_lookup_table_s** %plktblp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcspace.addr, align 8, !tbaa !1
  %call = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %1) #3
  switch i32 %call, label %sw.default [
    i32 6, label %sw.bb
    i32 5, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcspace.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %2, i32 0, i32 7
  %def = bitcast %union.anon* %params to %struct.gs_cie_def_s**
  %3 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %def, align 8, !tbaa !1
  %Table = getelementptr inbounds %struct.gs_cie_def_s, %struct.gs_cie_def_s* %3, i32 0, i32 9
  store %struct.gx_color_lookup_table_s* %Table, %struct.gx_color_lookup_table_s** %plktblp, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %4 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcspace.addr, align 8, !tbaa !1
  %params2 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %4, i32 0, i32 7
  %defg = bitcast %union.anon* %params2 to %struct.gs_cie_defg_s**
  %5 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %defg, align 8, !tbaa !1
  %Table3 = getelementptr inbounds %struct.gs_cie_defg_s, %struct.gs_cie_defg_s* %5, i32 0, i32 9
  store %struct.gx_color_lookup_table_s* %Table3, %struct.gx_color_lookup_table_s** %plktblp, align 8, !tbaa !1
  %6 = load i32*, i32** %pdims.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i32, i32* %6, i64 3
  %7 = load i32, i32* %arrayidx, align 4, !tbaa !73
  %8 = load %struct.gx_color_lookup_table_s*, %struct.gx_color_lookup_table_s** %plktblp, align 8, !tbaa !1
  %dims = getelementptr inbounds %struct.gx_color_lookup_table_s, %struct.gx_color_lookup_table_s* %8, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [4 x i32], [4 x i32]* %dims, i32 0, i64 3
  store i32 %7, i32* %arrayidx4, align 4, !tbaa !73
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb.1, %sw.bb
  %9 = load i32*, i32** %pdims.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i32, i32* %9, i64 0
  %10 = load i32, i32* %arrayidx5, align 4, !tbaa !73
  %11 = load %struct.gx_color_lookup_table_s*, %struct.gx_color_lookup_table_s** %plktblp, align 8, !tbaa !1
  %dims6 = getelementptr inbounds %struct.gx_color_lookup_table_s, %struct.gx_color_lookup_table_s* %11, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [4 x i32], [4 x i32]* %dims6, i32 0, i64 0
  store i32 %10, i32* %arrayidx7, align 4, !tbaa !73
  %12 = load i32*, i32** %pdims.addr, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds i32, i32* %12, i64 1
  %13 = load i32, i32* %arrayidx8, align 4, !tbaa !73
  %14 = load %struct.gx_color_lookup_table_s*, %struct.gx_color_lookup_table_s** %plktblp, align 8, !tbaa !1
  %dims9 = getelementptr inbounds %struct.gx_color_lookup_table_s, %struct.gx_color_lookup_table_s* %14, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [4 x i32], [4 x i32]* %dims9, i32 0, i64 1
  store i32 %13, i32* %arrayidx10, align 4, !tbaa !73
  %15 = load i32*, i32** %pdims.addr, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i32, i32* %15, i64 2
  %16 = load i32, i32* %arrayidx11, align 4, !tbaa !73
  %17 = load %struct.gx_color_lookup_table_s*, %struct.gx_color_lookup_table_s** %plktblp, align 8, !tbaa !1
  %dims12 = getelementptr inbounds %struct.gx_color_lookup_table_s, %struct.gx_color_lookup_table_s* %17, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [4 x i32], [4 x i32]* %dims12, i32 0, i64 2
  store i32 %16, i32* %arrayidx13, align 4, !tbaa !73
  %18 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %ptable.addr, align 8, !tbaa !1
  %19 = load %struct.gx_color_lookup_table_s*, %struct.gx_color_lookup_table_s** %plktblp, align 8, !tbaa !1
  %table = getelementptr inbounds %struct.gx_color_lookup_table_s, %struct.gx_color_lookup_table_s* %19, i32 0, i32 3
  store %struct.gs_const_string_s* %18, %struct.gs_const_string_s** %table, align 8, !tbaa !107
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default
  %20 = bitcast %struct.gx_color_lookup_table_s** %plktblp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #2
  %21 = load i32, i32* %retval
  ret i32 %21
}

declare i32 @gs_color_space_get_index(%struct.gs_color_space_s*) #0

; Function Attrs: nounwind uwtable
define i32 @gx_serialize_cie_common_elements(%struct.gs_color_space_s* %pcs, %struct.stream_s* %s) #1 {
entry:
  %retval = alloca i32, align 4
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %s.addr = alloca %struct.stream_s*, align 8
  %p = alloca %struct.gs_cie_a_s*, align 8
  %n = alloca i32, align 4
  %k = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_cie_a_s** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %1, i32 0, i32 7
  %a = bitcast %union.anon* %params to %struct.gs_cie_a_s**
  %2 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %a, align 8, !tbaa !1
  store %struct.gs_cie_a_s* %2, %struct.gs_cie_a_s** %p, align 8, !tbaa !1
  %3 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %7 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call = call i32 @gx_serialize_cspace_type(%struct.gs_color_space_s* %6, %struct.stream_s* %7) #3
  store i32 %call, i32* %code, align 4, !tbaa !73
  %8 = load i32, i32* %code, align 4, !tbaa !73
  %cmp = icmp slt i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %code, align 4, !tbaa !73
  store i32 %9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %11 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %p, align 8, !tbaa !1
  %common = getelementptr inbounds %struct.gs_cie_a_s, %struct.gs_cie_a_s* %11, i32 0, i32 0
  %RangeLMN = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %common, i32 0, i32 2
  %12 = bitcast %struct.gs_range3_s* %RangeLMN to i8*
  %call1 = call i32 @sputs(%struct.stream_s* %10, i8* %12, i32 24, i32* %n) #3
  store i32 %call1, i32* %code, align 4, !tbaa !73
  %13 = load i32, i32* %code, align 4, !tbaa !73
  %cmp2 = icmp slt i32 %13, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %14 = load i32, i32* %code, align 4, !tbaa !73
  store i32 %14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  store i32 0, i32* %k, align 4, !tbaa !73
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.4
  %15 = load i32, i32* %k, align 4, !tbaa !73
  %cmp5 = icmp ult i32 %15, 3
  br i1 %cmp5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %16 = load i32, i32* %code, align 4, !tbaa !73
  %cmp6 = icmp sge i32 %16, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %17 = phi i1 [ false, %for.cond ], [ %cmp6, %land.rhs ]
  br i1 %17, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %18 = load i32, i32* %k, align 4, !tbaa !73
  %idxprom = zext i32 %18 to i64
  %19 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %p, align 8, !tbaa !1
  %common7 = getelementptr inbounds %struct.gs_cie_a_s, %struct.gs_cie_a_s* %19, i32 0, i32 0
  %caches = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %common7, i32 0, i32 6
  %DecodeLMN = getelementptr inbounds %struct.anon.2, %struct.anon.2* %caches, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x %union.gx_cie_scalar_cache_s], [3 x %union.gx_cie_scalar_cache_s]* %DecodeLMN, i32 0, i64 %idxprom
  %floats = bitcast %union.gx_cie_scalar_cache_s* %arrayidx to %struct.cie_cache_floats_s*
  %20 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call8 = call i32 @gx_serialize_cie_cache(%struct.cie_cache_floats_s* %floats, %struct.stream_s* %20) #3
  store i32 %call8, i32* %code, align 4, !tbaa !73
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %k, align 4, !tbaa !73
  %inc = add i32 %21, 1
  store i32 %inc, i32* %k, align 4, !tbaa !73
  br label %for.cond

for.end:                                          ; preds = %land.end
  %22 = load i32, i32* %code, align 4, !tbaa !73
  %cmp9 = icmp slt i32 %22, 0
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %for.end
  %23 = load i32, i32* %code, align 4, !tbaa !73
  store i32 %23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %for.end
  %24 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %25 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %p, align 8, !tbaa !1
  %common12 = getelementptr inbounds %struct.gs_cie_a_s, %struct.gs_cie_a_s* %25, i32 0, i32 0
  %MatrixLMN = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %common12, i32 0, i32 4
  %26 = bitcast %struct.gs_matrix3_s* %MatrixLMN to i8*
  %call13 = call i32 @sputs(%struct.stream_s* %24, i8* %26, i32 40, i32* %n) #3
  store i32 %call13, i32* %code, align 4, !tbaa !73
  %27 = load i32, i32* %code, align 4, !tbaa !73
  %cmp14 = icmp slt i32 %27, 0
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.11
  %28 = load i32, i32* %code, align 4, !tbaa !73
  store i32 %28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %if.end.11
  %29 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %30 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %p, align 8, !tbaa !1
  %common17 = getelementptr inbounds %struct.gs_cie_a_s, %struct.gs_cie_a_s* %30, i32 0, i32 0
  %points = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %common17, i32 0, i32 5
  %31 = bitcast %struct.gs_cie_wb_s* %points to i8*
  %call18 = call i32 @sputs(%struct.stream_s* %29, i8* %31, i32 24, i32* %n) #3
  store i32 %call18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.16, %if.then.15, %if.then.10, %if.then.3, %if.then
  %32 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #2
  %33 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #2
  %34 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #2
  %35 = bitcast %struct.gs_cie_a_s** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #2
  %36 = load i32, i32* %retval
  ret i32 %36
}

declare i32 @gx_serialize_cspace_type(%struct.gs_color_space_s*, %struct.stream_s*) #0

declare i32 @sputs(%struct.stream_s*, i8*, i32, i32*) #0

; Function Attrs: nounwind uwtable
define internal i32 @gx_serialize_cie_cache(%struct.cie_cache_floats_s* %c, %struct.stream_s* %s) #1 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca %struct.cie_cache_floats_s*, align 8
  %s.addr = alloca %struct.stream_s*, align 8
  %cache_size = alloca i32, align 4
  %n = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.cie_cache_floats_s* %c, %struct.cie_cache_floats_s** %c.addr, align 8, !tbaa !1
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %0 = bitcast i32* %cache_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 512, i32* %cache_size, align 4, !tbaa !73
  %1 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %4 = load %struct.cie_cache_floats_s*, %struct.cie_cache_floats_s** %c.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %4, i32 0, i32 0
  %is_identity = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params, i32 0, i32 0
  %5 = bitcast i32* %is_identity to i8*
  %call = call i32 @sputs(%struct.stream_s* %3, i8* %5, i32 4, i32* %n) #3
  store i32 %call, i32* %code, align 4, !tbaa !73
  %6 = load %struct.cie_cache_floats_s*, %struct.cie_cache_floats_s** %c.addr, align 8, !tbaa !1
  %params1 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %6, i32 0, i32 0
  %is_identity2 = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params1, i32 0, i32 0
  %7 = load i32, i32* %is_identity2, align 4, !tbaa !110
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %9 = bitcast i32* %cache_size to i8*
  %call3 = call i32 @sputs(%struct.stream_s* %8, i8* %9, i32 4, i32* %n) #3
  store i32 %call3, i32* %code, align 4, !tbaa !73
  %10 = load i32, i32* %code, align 4, !tbaa !73
  %cmp = icmp slt i32 %10, 0
  br i1 %cmp, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %11 = load i32, i32* %code, align 4, !tbaa !73
  store i32 %11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  %12 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %13 = load %struct.cie_cache_floats_s*, %struct.cie_cache_floats_s** %c.addr, align 8, !tbaa !1
  %values = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %13, i32 0, i32 1
  %arraydecay = getelementptr inbounds [512 x float], [512 x float]* %values, i32 0, i32 0
  %14 = bitcast float* %arraydecay to i8*
  %call6 = call i32 @sputs(%struct.stream_s* %12, i8* %14, i32 2048, i32* %n) #3
  store i32 %call6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.5, %if.then.4, %if.then
  %15 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #2
  %16 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #2
  %17 = bitcast i32* %cache_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #2
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_serialize_lookup_table(%struct.gx_color_lookup_table_s* %t, %struct.stream_s* %s) #1 {
entry:
  %retval = alloca i32, align 4
  %t.addr = alloca %struct.gx_color_lookup_table_s*, align 8
  %s.addr = alloca %struct.stream_s*, align 8
  %n = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_color_lookup_table_s* %t, %struct.gx_color_lookup_table_s** %t.addr, align 8, !tbaa !1
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %0 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %3 = load %struct.gx_color_lookup_table_s*, %struct.gx_color_lookup_table_s** %t.addr, align 8, !tbaa !1
  %n1 = getelementptr inbounds %struct.gx_color_lookup_table_s, %struct.gx_color_lookup_table_s* %3, i32 0, i32 0
  %4 = bitcast i32* %n1 to i8*
  %call = call i32 @sputs(%struct.stream_s* %2, i8* %4, i32 4, i32* %n) #3
  store i32 %call, i32* %code, align 4, !tbaa !73
  %5 = load i32, i32* %code, align 4, !tbaa !73
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %code, align 4, !tbaa !73
  store i32 %6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %8 = load %struct.gx_color_lookup_table_s*, %struct.gx_color_lookup_table_s** %t.addr, align 8, !tbaa !1
  %dims = getelementptr inbounds %struct.gx_color_lookup_table_s, %struct.gx_color_lookup_table_s* %8, i32 0, i32 1
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %dims, i32 0, i64 0
  %9 = bitcast i32* %arrayidx to i8*
  %10 = load %struct.gx_color_lookup_table_s*, %struct.gx_color_lookup_table_s** %t.addr, align 8, !tbaa !1
  %n2 = getelementptr inbounds %struct.gx_color_lookup_table_s, %struct.gx_color_lookup_table_s* %10, i32 0, i32 0
  %11 = load i32, i32* %n2, align 4, !tbaa !105
  %conv = sext i32 %11 to i64
  %mul = mul i64 4, %conv
  %conv3 = trunc i64 %mul to i32
  %call4 = call i32 @sputs(%struct.stream_s* %7, i8* %9, i32 %conv3, i32* %n) #3
  store i32 %call4, i32* %code, align 4, !tbaa !73
  %12 = load i32, i32* %code, align 4, !tbaa !73
  %cmp5 = icmp slt i32 %12, 0
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  %13 = load i32, i32* %code, align 4, !tbaa !73
  store i32 %13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.end
  %14 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %15 = load %struct.gx_color_lookup_table_s*, %struct.gx_color_lookup_table_s** %t.addr, align 8, !tbaa !1
  %m = getelementptr inbounds %struct.gx_color_lookup_table_s, %struct.gx_color_lookup_table_s* %15, i32 0, i32 2
  %16 = bitcast i32* %m to i8*
  %call9 = call i32 @sputs(%struct.stream_s* %14, i8* %16, i32 4, i32* %n) #3
  store i32 %call9, i32* %code, align 4, !tbaa !73
  %17 = load i32, i32* %code, align 4, !tbaa !73
  %cmp10 = icmp slt i32 %17, 0
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.8
  %18 = load i32, i32* %code, align 4, !tbaa !73
  store i32 %18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.13:                                        ; preds = %if.end.8
  %19 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %20 = load %struct.gx_color_lookup_table_s*, %struct.gx_color_lookup_table_s** %t.addr, align 8, !tbaa !1
  %table = getelementptr inbounds %struct.gx_color_lookup_table_s, %struct.gx_color_lookup_table_s* %20, i32 0, i32 3
  %21 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %table, align 8, !tbaa !107
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %21, i32 0, i32 1
  %22 = bitcast i32* %size to i8*
  %call14 = call i32 @sputs(%struct.stream_s* %19, i8* %22, i32 4, i32* %n) #3
  store i32 %call14, i32* %code, align 4, !tbaa !73
  %23 = load i32, i32* %code, align 4, !tbaa !73
  %cmp15 = icmp slt i32 %23, 0
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.13
  %24 = load i32, i32* %code, align 4, !tbaa !73
  store i32 %24, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %if.end.13
  %25 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %26 = load %struct.gx_color_lookup_table_s*, %struct.gx_color_lookup_table_s** %t.addr, align 8, !tbaa !1
  %table19 = getelementptr inbounds %struct.gx_color_lookup_table_s, %struct.gx_color_lookup_table_s* %26, i32 0, i32 3
  %27 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %table19, align 8, !tbaa !107
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %27, i32 0, i32 0
  %28 = load i8*, i8** %data, align 8, !tbaa !111
  %29 = load %struct.gx_color_lookup_table_s*, %struct.gx_color_lookup_table_s** %t.addr, align 8, !tbaa !1
  %table20 = getelementptr inbounds %struct.gx_color_lookup_table_s, %struct.gx_color_lookup_table_s* %29, i32 0, i32 3
  %30 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %table20, align 8, !tbaa !107
  %size21 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %30, i32 0, i32 1
  %31 = load i32, i32* %size21, align 4, !tbaa !112
  %call22 = call i32 @sputs(%struct.stream_s* %25, i8* %28, i32 %31, i32* %n) #3
  store i32 %call22, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.18, %if.then.17, %if.then.12, %if.then.7, %if.then
  %32 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #2
  %33 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #2
  %34 = load i32, i32* %retval
  ret i32 %34
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
!5 = !{!6, !2, i64 400}
!6 = !{!"gs_imager_state_s", !7, i64 0, !2, i64 8, !2, i64 16, !8, i64 24, !7, i64 128, !12, i64 132, !7, i64 168, !13, i64 176, !13, i64 192, !7, i64 208, !7, i64 212, !15, i64 216, !3, i64 220, !16, i64 224, !16, i64 228, !17, i64 232, !18, i64 240, !7, i64 248, !7, i64 252, !7, i64 256, !2, i64 264, !7, i64 272, !7, i64 276, !7, i64 280, !7, i64 284, !7, i64 288, !7, i64 292, !9, i64 296, !19, i64 300, !7, i64 308, !7, i64 312, !7, i64 316, !9, i64 320, !7, i64 324, !7, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !7, i64 408, !2, i64 416, !2, i64 424, !20, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !21, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !21, i64 1336}
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
!22 = !{!23, !2, i64 376}
!23 = !{!"gs_cie_render_s", !3, i64 0, !24, i64 8, !18, i64 32, !2, i64 40, !25, i64 48, !27, i64 72, !28, i64 112, !29, i64 136, !27, i64 176, !31, i64 216, !28, i64 240, !27, i64 264, !31, i64 304, !28, i64 328, !32, i64 352, !28, i64 416, !28, i64 440, !27, i64 464, !3, i64 504, !27, i64 516, !26, i64 556, !26, i64 568, !35, i64 584}
!24 = !{!"rc_header_s", !18, i64 0, !2, i64 8, !2, i64 16}
!25 = !{!"gs_cie_wb_s", !26, i64 0, !26, i64 12}
!26 = !{!"gs_vector3_s", !9, i64 0, !9, i64 4, !9, i64 8}
!27 = !{!"gs_matrix3_s", !26, i64 0, !26, i64 12, !26, i64 24, !7, i64 36}
!28 = !{!"gs_range3_s", !3, i64 0}
!29 = !{!"gs_cie_transform_proc3_s", !2, i64 0, !2, i64 8, !30, i64 16, !2, i64 32}
!30 = !{!"gs_const_string_s", !2, i64 0, !7, i64 8}
!31 = !{!"gs_cie_render_proc3_s", !3, i64 0}
!32 = !{!"gs_cie_render_table_s", !33, i64 0, !34, i64 32}
!33 = !{!"gx_color_lookup_table_s", !7, i64 0, !3, i64 4, !7, i64 20, !2, i64 24}
!34 = !{!"gs_cie_render_table_procs_s", !3, i64 0}
!35 = !{!"", !36, i64 0, !3, i64 24840, !3, i64 37368, !7, i64 45720}
!36 = !{!"gx_cie_vector_cache3_s", !3, i64 0, !3, i64 24816}
!37 = !{!23, !7, i64 372}
!38 = !{!6, !2, i64 1312}
!39 = !{!6, !2, i64 1320}
!40 = !{!41, !2, i64 0}
!41 = !{!"gs_cie_a_s", !42, i64 0, !24, i64 6392, !45, i64 6416, !2, i64 6424, !26, i64 6432, !46, i64 6448}
!42 = !{!"gs_cie_common_s", !2, i64 0, !2, i64 8, !28, i64 16, !43, i64 40, !27, i64 64, !25, i64 104, !44, i64 128}
!43 = !{!"gs_cie_common_proc3_s", !3, i64 0}
!44 = !{!"", !3, i64 0}
!45 = !{!"gs_range_s", !9, i64 0, !9, i64 4}
!46 = !{!"", !47, i64 0}
!47 = !{!"gx_cie_vector_cache_s", !48, i64 0, !51, i64 2088}
!48 = !{!"cie_cache_floats_s", !49, i64 0, !3, i64 40}
!49 = !{!"cie_cache_params_s", !7, i64 0, !14, i64 8, !14, i64 16, !50, i64 24}
!50 = !{!"cie_linear_params_s", !7, i64 0, !9, i64 4, !9, i64 8}
!51 = !{!"cie_cache_vectors_s", !52, i64 0, !3, i64 36}
!52 = !{!"cie_vector_cache_params_s", !9, i64 0, !9, i64 4, !9, i64 8, !3, i64 12}
!53 = !{!54, !2, i64 48}
!54 = !{!"gs_color_space_s", !2, i64 0, !24, i64 8, !18, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !3, i64 72}
!55 = !{!54, !18, i64 8}
!56 = !{!54, !2, i64 24}
!57 = !{!54, !2, i64 16}
!58 = !{!54, !2, i64 64}
!59 = !{!60, !18, i64 288}
!60 = !{!"cmm_profile_s", !3, i64 0, !3, i64 1, !7, i64 4, !7, i64 8, !3, i64 12, !3, i64 16, !61, i64 20, !18, i64 144, !7, i64 152, !3, i64 156, !7, i64 216, !7, i64 220, !7, i64 224, !62, i64 228, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !24, i64 288, !7, i64 312, !2, i64 320, !2, i64 328, !2, i64 336}
!61 = !{!"gs_range_icc_s", !3, i64 0}
!62 = !{!"gsicc_rendering_param_s", !3, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !7, i64 20}
!63 = !{!60, !2, i64 304}
!64 = !{!60, !2, i64 296}
!65 = !{!66, !18, i64 6392}
!66 = !{!"gs_cie_defg_s", !42, i64 0, !24, i64 6392, !28, i64 6416, !67, i64 6440, !27, i64 6464, !68, i64 6504, !69, i64 31352, !70, i64 31384, !69, i64 31416, !33, i64 31448, !44, i64 31480}
!67 = !{!"gs_cie_abc_proc3_s", !3, i64 0}
!68 = !{!"", !7, i64 0, !36, i64 8}
!69 = !{!"gs_range4_s", !3, i64 0}
!70 = !{!"gs_cie_defg_proc4_s", !3, i64 0}
!71 = !{!66, !2, i64 6408}
!72 = !{!66, !2, i64 6400}
!73 = !{!7, !7, i64 0}
!74 = !{!75, !18, i64 6392}
!75 = !{!"gs_cie_def_s", !42, i64 0, !24, i64 6392, !28, i64 6416, !67, i64 6440, !27, i64 6464, !68, i64 6504, !28, i64 31352, !76, i64 31376, !28, i64 31400, !33, i64 31424, !44, i64 31456}
!76 = !{!"gs_cie_def_proc3_s", !3, i64 0}
!77 = !{!75, !2, i64 6408}
!78 = !{!75, !2, i64 6400}
!79 = !{!80, !18, i64 6392}
!80 = !{!"gs_cie_abc_s", !42, i64 0, !24, i64 6392, !28, i64 6416, !67, i64 6440, !27, i64 6464, !68, i64 6504}
!81 = !{!80, !2, i64 6408}
!82 = !{!80, !2, i64 6400}
!83 = !{!80, !7, i64 6504}
!84 = !{!41, !18, i64 6392}
!85 = !{!41, !2, i64 6408}
!86 = !{!41, !2, i64 6400}
!87 = !{i64 0, i64 24, !88}
!88 = !{!3, !3, i64 0}
!89 = !{i64 0, i64 4, !90, i64 4, i64 4, !90, i64 8, i64 4, !90, i64 12, i64 4, !90, i64 16, i64 4, !90, i64 20, i64 4, !90, i64 24, i64 4, !90, i64 28, i64 4, !90, i64 32, i64 4, !90, i64 36, i64 4, !73}
!90 = !{!9, !9, i64 0}
!91 = !{i64 0, i64 4, !90, i64 4, i64 4, !90, i64 8, i64 4, !90}
!92 = !{!42, !2, i64 8}
!93 = !{!94, !2, i64 72}
!94 = !{!"gs_memory_s", !2, i64 0, !95, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!95 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!96 = !{!94, !2, i64 24}
!97 = !{!98, !18, i64 6392}
!98 = !{!"gs_cie_common_elements_s", !42, i64 0, !24, i64 6392}
!99 = !{!98, !2, i64 6400}
!100 = !{!98, !2, i64 6408}
!101 = !{i64 0, i64 4, !90, i64 4, i64 4, !90}
!102 = !{!41, !2, i64 6424}
!103 = !{!80, !2, i64 0}
!104 = !{!75, !2, i64 0}
!105 = !{!33, !7, i64 0}
!106 = !{!33, !7, i64 20}
!107 = !{!33, !2, i64 24}
!108 = !{!66, !2, i64 0}
!109 = !{i64 0, i64 32, !88}
!110 = !{!48, !7, i64 0}
!111 = !{!30, !2, i64 0}
!112 = !{!30, !7, i64 8}
