; ModuleID = './gscolor2.bc'
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
%struct.gx_device_color_s = type { %struct.gx_device_color_type_s*, %union._c, %struct.gs_int_point_s, i32, %struct.gs_client_color_s, %struct._mask }
%union._c = type { %struct._col }
%struct._col = type { %struct.gx_device_halftone_s*, i16, [64 x i8], [64 x i32], i16, i64 }
%struct.gx_device_halftone_s = type opaque
%struct.gs_int_point_s = type { i32, i32 }
%struct.gs_client_color_s = type { %struct.gs_pattern_instance_s*, %struct.gs_paint_color_s }
%struct.gs_pattern_instance_s = type { %struct.rc_header_s, %struct.gs_pattern_type_s*, %struct.gs_state_s*, i64 }
%struct.rc_header_s = type { i64, %struct.gs_memory_s*, void (%struct.gs_memory_s*, i8*, i8*)* }
%struct.gs_pattern_type_s = type { i32, %struct.pp_ }
%struct.pp_ = type { i32 (%struct.gs_pattern_template_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_pattern_template_s*, %struct.gs_matrix_s*, %struct.gs_state_s*, %struct.gs_memory_s*)*, %struct.gs_pattern_template_s* (%struct.gs_pattern_instance_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_state_s*)* }
%struct.gs_pattern_template_s = type { %struct.gs_pattern_type_s*, i32, %struct.gs_uid_s, i8* }
%struct.gs_uid_s = type { i64, i64* }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_color_space_s = type { %struct.gs_color_space_type_s*, %struct.rc_header_s, i64, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.client_color_space_data_s*, %struct.cmm_profile_s*, %union.anon }
%struct.gs_color_space_type_s = type { i32, i32, i32, %struct.gs_memory_struct_type_s*, i32 (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, void (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)*, i32 (%struct.gs_color_space_s*)* }
%struct.gsicc_link_s = type { i8*, %struct.gscms_procs_s, %struct.gsicc_hashlink_s, %struct.gsicc_link_cache_s*, i32, %struct.gsicc_link_s*, %struct.gx_semaphore_s*, i32, i32, i32, i32, i32, i32, %struct.gscms_procs_s, i32, i32, i32 }
%struct.gsicc_hashlink_s = type { i64, i64, i64, i64 }
%struct.gsicc_link_cache_s = type { %struct.gsicc_link_s*, i32, %struct.rc_header_s, %struct.gs_memory_s*, %struct.gx_monitor_s*, %struct.gx_semaphore_s*, i32 }
%struct.gx_monitor_s = type { %struct.gs_memory_s*, %union.gp_monitor }
%union.gp_monitor = type { i8* }
%struct.gx_semaphore_s = type { %struct.gs_memory_s*, %union.gp_semaphore }
%union.gp_semaphore = type { i8* }
%struct.gscms_procs_s = type { void (%struct.gx_device_s*, %struct.gsicc_link_s*, %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s*, i8*, i8*)*, void (%struct.gx_device_s*, %struct.gsicc_link_s*, i8*, i8*, i32)*, void (%struct.gsicc_link_s*)*, i32 (i8*, i32)* }
%struct.gsicc_bufferdesc_s = type { i8, i8, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.client_color_space_data_s = type { void (%struct.gs_color_space_s*, i32)* }
%struct.cmm_profile_s = type { i8, i8, i32, i32, i32, i32, %struct.gs_range_icc_s, i64, i32, [15 x i32], i32, i32, i32, %struct.gsicc_rendering_param_s, i8*, %struct.gx_device_s*, %struct.gsicc_namelist_s*, i8*, %struct.rc_header_s, i32, i8*, %struct.gs_memory_s*, %struct.gx_monitor_s* }
%struct.gs_range_icc_s = type { [15 x %struct.gs_range_s] }
%struct.gs_range_s = type { float, float }
%struct.gsicc_rendering_param_s = type { i32, i32, i32, i32, i32, i32 }
%struct.gsicc_namelist_s = type { i32, %struct.gsicc_colorname_s*, i8*, %struct.gs_devicen_color_map_s*, i32 }
%struct.gsicc_colorname_s = type { i8*, i32, %struct.gsicc_colorname_s* }
%struct.gs_devicen_color_map_s = type { i32, i32, i32, i32, i64, [64 x i32] }
%union.anon = type { %struct.gs_device_n_params_s }
%struct.gs_device_n_params_s = type { i64*, i32, %struct.gs_device_n_map_s*, %struct.gs_device_n_attributes_s*, i32, i32 (%struct.gs_memory_s*, i64, i8**, i32*)* }
%struct.gs_device_n_map_s = type opaque
%struct.gs_device_n_attributes_s = type opaque
%struct.gs_imager_state_s = type { i32, %struct.gs_memory_s*, i8*, %struct.gx_line_params_s, i32, %struct.gs_matrix_fixed_s, i32, %struct.gs_point_s, %struct.gs_point_s, i32, i32, i16, i32, %struct.gs_transparency_source_s, %struct.gs_transparency_source_s, %struct.gs_xstate_trans_flags, i64, i32, i32, i32, %struct.gx_device_s*, i32, i32, i32, i32, i32, i32, float, %struct.gs_fixed_point_s, i32, i32, i32, float, i32, i32, %struct.gsicc_manager_s*, %struct.gsicc_link_cache_s*, %struct.gsicc_profile_cache_s*, %struct.gx_color_map_procs_s* (%struct.gs_imager_state_s*, %struct.gx_device_s*)*, %struct.gs_halftone_s*, [2 x %struct.gs_int_point_s], %struct.gx_device_halftone_s*, %struct.gs_cie_render_s*, i32, %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s*, %struct.gx_transfer_s, [64 x %struct.gx_transfer_map_s*], %struct.gx_cie_joint_caches_s*, %struct.gx_color_map_procs_s*, %struct.gs_devicen_color_map_s, %struct.gx_pattern_cache_s*, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_devicen_color_map_s }
%struct.gx_line_params_s = type { float, i32, i32, i32, i32, i32, float, float, float, i32, %struct.gs_matrix_s, %struct.gx_dash_params_s }
%struct.gx_dash_params_s = type { float*, i32, float, i32, float, i32, i32, float }
%struct.gs_matrix_fixed_s = type { float, float, float, float, float, float, i32, i32, i32 }
%struct.gs_point_s = type { double, double }
%struct.gs_transparency_source_s = type { float }
%struct.gs_xstate_trans_flags = type { i32, i32 }
%struct.gs_fixed_point_s = type { i32, i32 }
%struct.gsicc_manager_s = type { %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.gsicc_devicen_s*, %struct.gsicc_smask_s*, i32, %struct.cmm_srcgtag_profile_s*, %struct.gs_memory_s*, %struct.rc_header_s }
%struct.gsicc_devicen_s = type { %struct.gsicc_devicen_entry_s*, %struct.gsicc_devicen_entry_s*, i32 }
%struct.gsicc_devicen_entry_s = type { %struct.cmm_profile_s*, %struct.gsicc_devicen_entry_s* }
%struct.gsicc_smask_s = type { %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.gs_memory_s*, i32 }
%struct.cmm_srcgtag_profile_s = type { [3 x %struct.cmm_profile_s*], [3 x %struct.gsicc_rendering_param_s], [3 x %struct.cmm_profile_s*], [3 x %struct.gsicc_rendering_param_s], %struct.cmm_profile_s*, %struct.gs_memory_s*, i32, i8*, %struct.rc_header_s }
%struct.gsicc_profile_cache_s = type { %struct.gsicc_profile_entry_s*, i32, %struct.rc_header_s, %struct.gs_memory_s* }
%struct.gsicc_profile_entry_s = type { %struct.gs_color_space_s*, %struct.gsicc_profile_entry_s*, i64 }
%struct.gs_halftone_s = type opaque
%struct.gs_cie_render_s = type { i32, %struct.rc_header_s, i64, i8*, %struct.gs_cie_wb_s, %struct.gs_matrix3_s, %struct.gs_range3_s, %struct.gs_cie_transform_proc3_s, %struct.gs_matrix3_s, %struct.gs_cie_render_proc3_s, %struct.gs_range3_s, %struct.gs_matrix3_s, %struct.gs_cie_render_proc3_s, %struct.gs_range3_s, %struct.gs_cie_render_table_s, %struct.gs_range3_s, %struct.gs_range3_s, %struct.gs_matrix3_s, [3 x float], %struct.gs_matrix3_s, %struct.gs_vector3_s, %struct.gs_vector3_s, %struct.anon.9 }
%struct.gs_cie_wb_s = type { %struct.gs_vector3_s, %struct.gs_vector3_s }
%struct.gs_cie_transform_proc3_s = type { i32 (i32, double, %struct.gs_cie_wbsd_s*, %struct.gs_cie_render_s*, float*)*, i8*, %struct.gs_const_string_s, i8* }
%struct.gs_cie_wbsd_s = type { %struct.anon.8, %struct.anon.8, %struct.anon.8, %struct.anon.8 }
%struct.anon.8 = type { %struct.gs_vector3_s, %struct.gs_vector3_s }
%struct.gs_cie_render_proc3_s = type { [3 x float (double, %struct.gs_cie_render_s*)*] }
%struct.gs_cie_render_table_s = type { %struct.gx_color_lookup_table_s, %struct.gs_cie_render_table_procs_s }
%struct.gx_color_lookup_table_s = type { i32, [4 x i32], i32, %struct.gs_const_string_s* }
%struct.gs_cie_render_table_procs_s = type { [4 x i16 (i8, %struct.gs_cie_render_s*)*] }
%struct.gs_range3_s = type { [3 x %struct.gs_range_s] }
%struct.gs_matrix3_s = type { %struct.gs_vector3_s, %struct.gs_vector3_s, %struct.gs_vector3_s, i32 }
%struct.gs_vector3_s = type { float, float, float }
%struct.anon.9 = type { %struct.gx_cie_vector_cache3_s, [3 x %struct.gx_cie_float_fixed_cache_s], [4 x %union.gx_cie_scalar_cache_s], i32 }
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
%struct.gx_pattern_cache_s = type { %struct.gs_memory_s*, %struct.gx_color_tile_s*, i32, i32, i32, i64, i64, void (%struct.gx_pattern_cache_s*)* }
%struct.gx_color_tile_s = type { i64, i32, %struct.gs_uid_s, i32, i32, %struct.gs_matrix_s, %struct.gs_rect_s, %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s, %struct.gx_pattern_trans_s*, %union.gx_device_clist_s*, i8, i8, i8, [2 x i8], i32, i32, i32 }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.gx_strip_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16, i16, i16, i32 }
%struct.gx_pattern_trans_s = type { %struct.gx_device_s*, i8*, %struct.gs_memory_s*, %struct.gx_pattern_trans_s*, %struct.gs_int_rect_s, i32, i32, i32, i32, i32, i32, %struct.pdf14_nonseparable_blending_procs_s*, i32, i32, %struct.gs_int_rect_s*, void (i32, i32, i32, i32, i32, i32, %struct.gx_color_tile_s*, %struct.gx_pattern_trans_s*)*, i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)* }
%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }
%struct.pdf14_nonseparable_blending_procs_s = type { void (i32, i8*, i8*, i8*)*, void (i32, i8*, i8*, i8*)* }
%struct.gx_image_enum_s = type opaque
%union.gx_device_clist_s = type opaque
%struct.gx_cie_joint_caches_s = type { i64, i64, i32, i32, %struct.rc_header_s, i32 (<2 x float>, float, i16*, float*, %struct.gs_imager_state_s*, %struct.gs_color_space_s*)*, i32, i32, %struct.gx_cie_vector_cache3_s, %struct.gs_cie_wbsd_s, i32, %struct.gx_cie_vector_cache3_s, i32 }
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
%struct.gx_path_s = type opaque
%struct.gx_fill_params_s = type opaque
%struct.gx_clip_path_s = type opaque
%struct.gx_stroke_params_s = type opaque
%struct.gs_fixed_edge_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_image1_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, i32, i32, i32, [130 x float], i32, i32, i32, %struct.gs_color_space_s*, i32, i32, i32, i32 }
%struct.gx_image_type_s = type opaque
%struct.gx_image_enum_common_s = type opaque
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
%struct.gs_font_s = type opaque
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
%struct.gs_pattern1_instance_s = type { %struct.rc_header_s, %struct.gs_pattern_type_s*, %struct.gs_state_s*, i64, %struct.gs_pattern1_template_s, %struct.gs_matrix_s, %struct.gs_rect_s, i32, i32, i32, i32, i32, %struct.gs_int_point_s, i64 }
%struct.gs_pattern1_template_s = type { %struct.gs_pattern_type_s*, i32, %struct.gs_uid_s, i8*, i32, i32, i32, %struct.gs_rect_s, float, float, i32 (%struct.gs_client_color_s*, %struct.gs_state_s*)* }
%struct.gs_fill_attributes_s = type { %struct.gs_fixed_rect_s*, i32, %struct.gx_device_halftone_s*, i32, i32, i32, %struct.patch_fill_state_s* }
%struct.patch_fill_state_s = type opaque
%struct.gs_devn_params_s = type opaque
%struct.gx_process_page_options_s = type { i32 (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i32, i32, i8**)*, void (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_int_rect_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, i8*)*, i8*, i32 }
%struct.gs_state_s = type { i32, %struct.gs_memory_s*, i8*, %struct.gx_line_params_s, i32, %struct.gs_matrix_fixed_s, i32, %struct.gs_point_s, %struct.gs_point_s, i32, i32, i16, i32, %struct.gs_transparency_source_s, %struct.gs_transparency_source_s, %struct.gs_xstate_trans_flags, i64, i32, i32, i32, %struct.gx_device_s*, i32, i32, i32, i32, i32, i32, float, %struct.gs_fixed_point_s, i32, i32, i32, float, i32, i32, %struct.gsicc_manager_s*, %struct.gsicc_link_cache_s*, %struct.gsicc_profile_cache_s*, %struct.gx_color_map_procs_s* (%struct.gs_imager_state_s*, %struct.gx_device_s*)*, %struct.gs_halftone_s*, [2 x %struct.gs_int_point_s], %struct.gx_device_halftone_s*, %struct.gs_cie_render_s*, i32, %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s*, %struct.gx_transfer_s, [64 x %struct.gx_transfer_map_s*], %struct.gx_cie_joint_caches_s*, %struct.gx_color_map_procs_s*, %struct.gs_devicen_color_map_s, %struct.gx_pattern_cache_s*, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_devicen_color_map_s, %struct.gs_state_s*, %struct.gs_matrix_s, i32, %struct.gs_matrix_s, i32, %struct.gx_path_s*, %struct.gx_clip_path_s*, %struct.gx_clip_stack_s*, %struct.gx_clip_path_s*, i64, i64, %struct.gx_clip_path_s*, i32, [2 x %struct.anon.10], %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_matrix_fixed_s, i32, i32, i32, %struct.gs_state_s*, i32, %struct.gx_device_s*, %struct.gs_device_filter_stack_s*, %struct.gs_state_client_procs_s }
%struct.gx_clip_stack_s = type opaque
%struct.anon.10 = type { %struct.gs_color_space_s*, %struct.gs_client_color_s*, %struct.gx_device_color_s* }
%struct.gs_device_filter_stack_s = type { %struct.gs_device_filter_stack_s*, %struct.gs_device_filter_s*, %struct.gx_device_s*, %struct.rc_header_s }
%struct.gs_device_filter_s = type opaque
%struct.gs_state_client_procs_s = type { i8* (%struct.gs_memory_s*)*, i32 (i8*, i8*)*, void (i8*, %struct.gs_memory_s*)*, i32 (i8*, i8*, i32)* }
%struct.gs_paint_color_s = type { [64 x float] }
%struct._mask = type { %struct.mp_, i64, %struct.gx_color_tile_s* }
%struct.mp_ = type { i32, i32 }
%struct.gx_device_color_saved_s = type { %struct.gx_device_color_type_s*, %union._svc, %struct.gs_int_point_s }
%union._svc = type { %struct._svbin, [304 x i8] }
%struct._svbin = type { [2 x i64], i32, i32 }
%struct.gx_rop_source_s = type { i8*, i32, i32, i64, [2 x i64], i32, i32 }
%struct.gc_struct_data_s = type { i16, i16, %struct.gs_memory_struct_type_s*, %struct.gc_ptr_element_s* }
%struct.gc_ptr_element_s = type { i16, i16 }
%struct.gs_indexed_params_s = type { i32, i32, %union.anon.6, i32 }
%union.anon.6 = type { %struct.gs_const_string_s }
%struct.gs_indexed_map_s = type { %struct.rc_header_s, %union.anon.7, i8*, i32, float* }
%union.anon.7 = type { i32 (%struct.gs_color_space_s*, i32, float*)* }
%struct.gc_procs_common_s = type { i8* (i8*, %struct.gc_state_s*)*, void (%struct.gs_string_s*, %struct.gc_state_s*)*, void (%struct.gs_const_string_s*, %struct.gc_state_s*)*, void (%struct.gs_param_string_s*, %struct.gc_state_s*)* }

@.str = private unnamed_addr constant [17 x i8] c"gs_setcolorspace\00", align 1
@gx_dc_type_data_none = external constant %struct.gx_device_color_type_s, align 8
@st_indexed_map = internal constant %struct.gs_memory_struct_type_s { i32 56, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @indexed_map_reloc_ptrs to i8*) }, align 8
@st_color_space_Indexed = internal constant %struct.gs_memory_struct_type_s { i32 120, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @cs_Indexed_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @cs_Indexed_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@gs_color_space_type_Indexed = constant %struct.gs_color_space_type_s { i32 10, i32 0, i32 0, %struct.gs_memory_struct_type_s* @st_color_space_Indexed, i32 (%struct.gs_color_space_s*)* @gx_num_components_1, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)* @gx_init_paint_1, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)* @gx_restrict_Indexed, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)* @gx_concrete_space_Indexed, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)* @gx_concretize_Indexed, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)* null, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)* @gx_default_remap_color, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)* @gx_install_Indexed, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)* @gx_set_overprint_Indexed, void (%struct.gs_color_space_s*)* @gx_final_Indexed, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)* @gx_no_adjust_color_count, i32 (%struct.gs_color_space_s*, %struct.stream_s*)* @gx_serialize_Indexed, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)* @gx_cspace_is_linear_default, i32 (%struct.gs_color_space_s*)* @gx_polarity_Indexed }, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"gs_cspace_build_Indexed\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"gs_indexed_map\00", align 1
@indexed_map_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 2, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([2 x %struct.gc_ptr_element_s], [2 x %struct.gc_ptr_element_s]* @indexed_map_enum_ptrs, i32 0, i32 0) }, align 8
@indexed_map_enum_ptrs = internal constant [2 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 32 }, %struct.gc_ptr_element_s { i16 0, i16 48 }], align 2
@.str.3 = private unnamed_addr constant [23 x i8] c"gs_color_space_Indexed\00", align 1
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8
@ptr_const_string_procs = external constant %struct.gs_ptr_procs_s, align 8
@.str.4 = private unnamed_addr constant [18 x i8] c"gx_adjust_Indexed\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"gx_final_Indexed\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"alloc_indexed_palette\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gs_setcolorspace_only(%struct.gs_state_s* %pgs, %struct.gs_color_space_s* %pcs) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %code = alloca i32, align 4
  %cs_old = alloca %struct.gs_color_space_s*, align 8
  %cc_old = alloca %struct.gs_client_color_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %code, align 4, !tbaa !5
  %1 = bitcast %struct.gs_color_space_s** %cs_old to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %2, i32 0, i32 69
  %arrayidx = getelementptr inbounds [2 x %struct.anon.10], [2 x %struct.anon.10]* %color, i32 0, i64 0
  %color_space = getelementptr inbounds %struct.anon.10, %struct.anon.10* %arrayidx, i32 0, i32 0
  %3 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %color_space, align 8, !tbaa !7
  store %struct.gs_color_space_s* %3, %struct.gs_color_space_s** %cs_old, align 8, !tbaa !1
  %4 = bitcast %struct.gs_client_color_s* %cc_old to i8*
  call void @llvm.lifetime.start(i64 264, i8* %4) #1
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color1 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %5, i32 0, i32 69
  %arrayidx2 = getelementptr inbounds [2 x %struct.anon.10], [2 x %struct.anon.10]* %color1, i32 0, i64 0
  %ccolor = getelementptr inbounds %struct.anon.10, %struct.anon.10* %arrayidx2, i32 0, i32 1
  %6 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %ccolor, align 8, !tbaa !9
  %7 = bitcast %struct.gs_client_color_s* %cc_old to i8*
  %8 = bitcast %struct.gs_client_color_s* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 264, i32 8, i1 false), !tbaa.struct !10
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %in_cachedevice = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %9, i32 0, i32 74
  %10 = load i32, i32* %in_cachedevice, align 4, !tbaa !12
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %id = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %11, i32 0, i32 2
  %12 = load i64, i64* %id, align 8, !tbaa !29
  %13 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %cs_old, align 8, !tbaa !1
  %id3 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %13, i32 0, i32 2
  %14 = load i64, i64* %id3, align 8, !tbaa !29
  %cmp = icmp ne i64 %12, %14
  br i1 %cmp, label %if.then.4, label %if.end.18

if.then.4:                                        ; preds = %if.end
  %15 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  call void @rc_increment_cs(%struct.gs_color_space_s* %15) #4
  %16 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %17 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color5 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %17, i32 0, i32 69
  %arrayidx6 = getelementptr inbounds [2 x %struct.anon.10], [2 x %struct.anon.10]* %color5, i32 0, i64 0
  %color_space7 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %arrayidx6, i32 0, i32 0
  store %struct.gs_color_space_s* %16, %struct.gs_color_space_s** %color_space7, align 8, !tbaa !7
  %18 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %18, i32 0, i32 0
  %19 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !32
  %install_cspace = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %19, i32 0, i32 11
  %20 = load i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)** %install_cspace, align 8, !tbaa !33
  %21 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %22 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call = call i32 %20(%struct.gs_color_space_s* %21, %struct.gs_state_s* %22) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %cmp8 = icmp slt i32 %call, 0
  br i1 %cmp8, label %if.then.12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.4
  %23 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %overprint = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %23, i32 0, i32 21
  %24 = load i32, i32* %overprint, align 4, !tbaa !35
  %tobool9 = icmp ne i32 %24, 0
  br i1 %tobool9, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false
  %25 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call10 = call i32 @gs_do_set_overprint(%struct.gs_state_s* %25) #4
  store i32 %call10, i32* %code, align 4, !tbaa !5
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %land.lhs.true, %if.then.4
  %26 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %cs_old, align 8, !tbaa !1
  %27 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color13 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %27, i32 0, i32 69
  %arrayidx14 = getelementptr inbounds [2 x %struct.anon.10], [2 x %struct.anon.10]* %color13, i32 0, i64 0
  %color_space15 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %arrayidx14, i32 0, i32 0
  store %struct.gs_color_space_s* %26, %struct.gs_color_space_s** %color_space15, align 8, !tbaa !7
  %28 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  call void @rc_decrement_only_cs(%struct.gs_color_space_s* %28, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0)) #4
  br label %if.end.17

if.else:                                          ; preds = %land.lhs.true, %lor.lhs.false
  %29 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %cs_old, align 8, !tbaa !1
  %type16 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %29, i32 0, i32 0
  %30 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type16, align 8, !tbaa !32
  %adjust_color_count = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %30, i32 0, i32 14
  %31 = load void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)** %adjust_color_count, align 8, !tbaa !36
  %32 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %cs_old, align 8, !tbaa !1
  call void %31(%struct.gs_client_color_s* %cc_old, %struct.gs_color_space_s* %32, i32 -1) #4
  %33 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %cs_old, align 8, !tbaa !1
  call void @rc_decrement_only_cs(%struct.gs_color_space_s* %33, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0)) #4
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.then.12
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.end
  %34 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %34, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.18, %if.then
  %35 = bitcast %struct.gs_client_color_s* %cc_old to i8*
  call void @llvm.lifetime.end(i64 264, i8* %35) #1
  %36 = bitcast %struct.gs_color_space_s** %cs_old to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #1
  %37 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  %38 = load i32, i32* %retval
  ret i32 %38
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare void @rc_increment_cs(%struct.gs_color_space_s*) #2

declare i32 @gs_do_set_overprint(%struct.gs_state_s*) #2

declare void @rc_decrement_only_cs(%struct.gs_color_space_s*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @gs_setcolorspace(%struct.gs_state_s* %pgs, %struct.gs_color_space_s* %pcs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %code = alloca i32, align 4
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %code, align 4, !tbaa !5
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %2 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %call = call i32 @gs_setcolorspace_only(%struct.gs_state_s* %1, %struct.gs_color_space_s* %2) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %3 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp sge i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %pclient_color_space_data = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %4, i32 0, i32 5
  %5 = load %struct.client_color_space_data_s*, %struct.client_color_space_data_s** %pclient_color_space_data, align 8, !tbaa !37
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %6, i32 0, i32 69
  %arrayidx = getelementptr inbounds [2 x %struct.anon.10], [2 x %struct.anon.10]* %color, i32 0, i64 0
  %color_space = getelementptr inbounds %struct.anon.10, %struct.anon.10* %arrayidx, i32 0, i32 0
  %7 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %color_space, align 8, !tbaa !7
  %pclient_color_space_data1 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %7, i32 0, i32 5
  store %struct.client_color_space_data_s* %5, %struct.client_color_space_data_s** %pclient_color_space_data1, align 8, !tbaa !37
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color2 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %8, i32 0, i32 69
  %arrayidx3 = getelementptr inbounds [2 x %struct.anon.10], [2 x %struct.anon.10]* %color2, i32 0, i64 0
  %ccolor = getelementptr inbounds %struct.anon.10, %struct.anon.10* %arrayidx3, i32 0, i32 1
  %9 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %ccolor, align 8, !tbaa !9
  %pattern = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %9, i32 0, i32 0
  store %struct.gs_pattern_instance_s* null, %struct.gs_pattern_instance_s** %pattern, align 8, !tbaa !38
  %10 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %10, i32 0, i32 0
  %11 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !32
  %init_color = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %11, i32 0, i32 5
  %12 = load void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)** %init_color, align 8, !tbaa !41
  %13 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color4 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %13, i32 0, i32 69
  %arrayidx5 = getelementptr inbounds [2 x %struct.anon.10], [2 x %struct.anon.10]* %color4, i32 0, i64 0
  %ccolor6 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %arrayidx5, i32 0, i32 1
  %14 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %ccolor6, align 8, !tbaa !9
  %15 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  call void %12(%struct.gs_client_color_s* %14, %struct.gs_color_space_s* %15) #4
  %16 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color7 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %16, i32 0, i32 69
  %arrayidx8 = getelementptr inbounds [2 x %struct.anon.10], [2 x %struct.anon.10]* %color7, i32 0, i64 0
  %dev_color = getelementptr inbounds %struct.anon.10, %struct.anon.10* %arrayidx8, i32 0, i32 2
  %17 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color, align 8, !tbaa !42
  %type9 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %17, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_none, %struct.gx_device_color_type_s** %type9, align 8, !tbaa !43
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %18 = load i32, i32* %code, align 4, !tbaa !5
  %19 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define %struct.gs_color_space_s* @gs_currentcolorspace(%struct.gs_state_s* %pgs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 69
  %arrayidx = getelementptr inbounds [2 x %struct.anon.10], [2 x %struct.anon.10]* %color, i32 0, i64 0
  %color_space = getelementptr inbounds %struct.anon.10, %struct.anon.10* %arrayidx, i32 0, i32 0
  %1 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %color_space, align 8, !tbaa !7
  ret %struct.gs_color_space_s* %1
}

; Function Attrs: nounwind uwtable
define i32 @gs_setcolor(%struct.gs_state_s* %pgs, %struct.gs_client_color_s* %pcc) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pcc.addr = alloca %struct.gs_client_color_s*, align 8
  %pcs = alloca %struct.gs_color_space_s*, align 8
  %cc_old = alloca %struct.gs_client_color_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_client_color_s* %pcc, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i32 0, i32 69
  %arrayidx = getelementptr inbounds [2 x %struct.anon.10], [2 x %struct.anon.10]* %color, i32 0, i64 0
  %color_space = getelementptr inbounds %struct.anon.10, %struct.anon.10* %arrayidx, i32 0, i32 0
  %2 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %color_space, align 8, !tbaa !7
  store %struct.gs_color_space_s* %2, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %3 = bitcast %struct.gs_client_color_s* %cc_old to i8*
  call void @llvm.lifetime.start(i64 264, i8* %3) #1
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color1 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %4, i32 0, i32 69
  %arrayidx2 = getelementptr inbounds [2 x %struct.anon.10], [2 x %struct.anon.10]* %color1, i32 0, i64 0
  %ccolor = getelementptr inbounds %struct.anon.10, %struct.anon.10* %arrayidx2, i32 0, i32 1
  %5 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %ccolor, align 8, !tbaa !9
  %6 = bitcast %struct.gs_client_color_s* %cc_old to i8*
  %7 = bitcast %struct.gs_client_color_s* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 264, i32 8, i1 false), !tbaa.struct !10
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %in_cachedevice = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %8, i32 0, i32 74
  %9 = load i32, i32* %in_cachedevice, align 4, !tbaa !12
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color3 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %10, i32 0, i32 69
  %arrayidx4 = getelementptr inbounds [2 x %struct.anon.10], [2 x %struct.anon.10]* %color3, i32 0, i64 0
  %dev_color = getelementptr inbounds %struct.anon.10, %struct.anon.10* %arrayidx4, i32 0, i32 2
  %11 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color, align 8, !tbaa !42
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %11, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_none, %struct.gx_device_color_type_s** %type, align 8, !tbaa !43
  %12 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %type5 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %12, i32 0, i32 0
  %13 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type5, align 8, !tbaa !32
  %adjust_color_count = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %13, i32 0, i32 14
  %14 = load void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)** %adjust_color_count, align 8, !tbaa !36
  %15 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %16 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  call void %14(%struct.gs_client_color_s* %15, %struct.gs_color_space_s* %16, i32 1) #4
  %17 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color6 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %17, i32 0, i32 69
  %arrayidx7 = getelementptr inbounds [2 x %struct.anon.10], [2 x %struct.anon.10]* %color6, i32 0, i64 0
  %ccolor8 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %arrayidx7, i32 0, i32 1
  %18 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %ccolor8, align 8, !tbaa !9
  %19 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %20 = bitcast %struct.gs_client_color_s* %18 to i8*
  %21 = bitcast %struct.gs_client_color_s* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 264, i32 8, i1 false), !tbaa.struct !10
  %22 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %type9 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %22, i32 0, i32 0
  %23 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type9, align 8, !tbaa !32
  %restrict_color = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %23, i32 0, i32 6
  %24 = load void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)** %restrict_color, align 8, !tbaa !48
  %25 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color10 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %25, i32 0, i32 69
  %arrayidx11 = getelementptr inbounds [2 x %struct.anon.10], [2 x %struct.anon.10]* %color10, i32 0, i64 0
  %ccolor12 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %arrayidx11, i32 0, i32 1
  %26 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %ccolor12, align 8, !tbaa !9
  %27 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  call void %24(%struct.gs_client_color_s* %26, %struct.gs_color_space_s* %27) #4
  %28 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %type13 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %28, i32 0, i32 0
  %29 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type13, align 8, !tbaa !32
  %adjust_color_count14 = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %29, i32 0, i32 14
  %30 = load void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)** %adjust_color_count14, align 8, !tbaa !36
  %31 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  call void %30(%struct.gs_client_color_s* %cc_old, %struct.gs_color_space_s* %31, i32 -1) #4
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %32 = bitcast %struct.gs_client_color_s* %cc_old to i8*
  call void @llvm.lifetime.end(i64 264, i8* %32) #1
  %33 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  %34 = load i32, i32* %retval
  ret i32 %34
}

; Function Attrs: nounwind uwtable
define %struct.gs_client_color_s* @gs_currentcolor(%struct.gs_state_s* %pgs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 69
  %arrayidx = getelementptr inbounds [2 x %struct.anon.10], [2 x %struct.anon.10]* %color, i32 0, i64 0
  %ccolor = getelementptr inbounds %struct.anon.10, %struct.anon.10* %arrayidx, i32 0, i32 1
  %1 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %ccolor, align 8, !tbaa !9
  ret %struct.gs_client_color_s* %1
}

; Function Attrs: nounwind uwtable
define %struct.gx_device_color_s* @gs_currentdevicecolor(%struct.gs_state_s* %pgs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 69
  %arrayidx = getelementptr inbounds [2 x %struct.anon.10], [2 x %struct.anon.10]* %color, i32 0, i64 0
  %dev_color = getelementptr inbounds %struct.anon.10, %struct.anon.10* %arrayidx, i32 0, i32 2
  %1 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color, align 8, !tbaa !42
  ret %struct.gx_device_color_s* %1
}

; Function Attrs: nounwind uwtable
define i32 @lookup_indexed_map(%struct.gs_color_space_s* %pcs, i32 %index, float* %values) #0 {
entry:
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %index.addr = alloca i32, align 4
  %values.addr = alloca float*, align 8
  %m = alloca i32, align 4
  %pv = alloca float*, align 8
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  store float* %values, float** %values.addr, align 8, !tbaa !1
  %0 = bitcast i32* %m to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %base_space = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %1, i32 0, i32 3
  %2 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space, align 8, !tbaa !49
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %2, i32 0, i32 0
  %3 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !32
  %num_components = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %3, i32 0, i32 4
  %4 = load i32 (%struct.gs_color_space_s*)*, i32 (%struct.gs_color_space_s*)** %num_components, align 8, !tbaa !50
  %5 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %base_space1 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %5, i32 0, i32 3
  %6 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space1, align 8, !tbaa !49
  %call = call i32 %4(%struct.gs_color_space_s* %6) #4
  store i32 %call, i32* %m, align 4, !tbaa !5
  %7 = bitcast float** %pv to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load i32, i32* %index.addr, align 4, !tbaa !5
  %9 = load i32, i32* %m, align 4, !tbaa !5
  %mul = mul nsw i32 %8, %9
  %idxprom = sext i32 %mul to i64
  %10 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %10, i32 0, i32 7
  %indexed = bitcast %union.anon* %params to %struct.gs_indexed_params_s*
  %lookup = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %indexed, i32 0, i32 2
  %map = bitcast %union.anon.6* %lookup to %struct.gs_indexed_map_s**
  %11 = load %struct.gs_indexed_map_s*, %struct.gs_indexed_map_s** %map, align 8, !tbaa !1
  %values2 = getelementptr inbounds %struct.gs_indexed_map_s, %struct.gs_indexed_map_s* %11, i32 0, i32 4
  %12 = load float*, float** %values2, align 8, !tbaa !51
  %arrayidx = getelementptr inbounds float, float* %12, i64 %idxprom
  store float* %arrayidx, float** %pv, align 8, !tbaa !1
  %13 = load float*, float** %values.addr, align 8, !tbaa !1
  %14 = bitcast float* %13 to i8*
  %15 = load float*, float** %pv, align 8, !tbaa !1
  %16 = bitcast float* %15 to i8*
  %17 = load i32, i32* %m, align 4, !tbaa !5
  %conv = sext i32 %17 to i64
  %mul3 = mul i64 4, %conv
  %call4 = call i8* @memcpy(i8* %14, i8* %16, i64 %mul3) #5
  %18 = bitcast float** %pv to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  %19 = bitcast i32* %m to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define void @free_indexed_map(%struct.gs_memory_s* %pmem, i8* %pmap, i8* %cname) #0 {
entry:
  %pmem.addr = alloca %struct.gs_memory_s*, align 8
  %pmap.addr = alloca i8*, align 8
  %cname.addr = alloca i8*, align 8
  store %struct.gs_memory_s* %pmem, %struct.gs_memory_s** %pmem.addr, align 8, !tbaa !1
  store i8* %pmap, i8** %pmap.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %pmem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %0, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %1 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !53
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %pmem.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %pmap.addr, align 8, !tbaa !1
  %4 = bitcast i8* %3 to %struct.gs_indexed_map_s*
  %values = getelementptr inbounds %struct.gs_indexed_map_s, %struct.gs_indexed_map_s* %4, i32 0, i32 4
  %5 = load float*, float** %values, align 8, !tbaa !51
  %6 = bitcast float* %5 to i8*
  %7 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void %1(%struct.gs_memory_s* %2, i8* %6, i8* %7) #4
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %pmem.addr, align 8, !tbaa !1
  %procs1 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %8, i32 0, i32 1
  %free_object2 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs1, i32 0, i32 2
  %9 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object2, align 8, !tbaa !53
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %pmem.addr, align 8, !tbaa !1
  %11 = load i8*, i8** %pmap.addr, align 8, !tbaa !1
  %12 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void %9(%struct.gs_memory_s* %10, i8* %11, i8* %12) #4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @alloc_indexed_map(%struct.gs_indexed_map_s** %ppmap, i32 %nvals, %struct.gs_memory_s* %pmem, i8* %cname) #0 {
entry:
  %retval = alloca i32, align 4
  %ppmap.addr = alloca %struct.gs_indexed_map_s**, align 8
  %nvals.addr = alloca i32, align 4
  %pmem.addr = alloca %struct.gs_memory_s*, align 8
  %cname.addr = alloca i8*, align 8
  %pimap = alloca %struct.gs_indexed_map_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_indexed_map_s** %ppmap, %struct.gs_indexed_map_s*** %ppmap.addr, align 8, !tbaa !1
  store i32 %nvals, i32* %nvals.addr, align 4, !tbaa !5
  store %struct.gs_memory_s* %pmem, %struct.gs_memory_s** %pmem.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_indexed_map_s** %pimap to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %pmem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %1, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %2 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !56
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %pmem.addr, align 8, !tbaa !1
  %4 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call = call i8* %2(%struct.gs_memory_s* %3, %struct.gs_memory_struct_type_s* @st_indexed_map, i8* %4) #4
  %5 = bitcast i8* %call to %struct.gs_indexed_map_s*
  store %struct.gs_indexed_map_s* %5, %struct.gs_indexed_map_s** %pimap, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_indexed_map_s* %5, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %if.else
  %6 = load %struct.gs_indexed_map_s*, %struct.gs_indexed_map_s** %pimap, align 8, !tbaa !1
  %rc = getelementptr inbounds %struct.gs_indexed_map_s, %struct.gs_indexed_map_s* %6, i32 0, i32 0
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  store i64 1, i64* %ref_count, align 8, !tbaa !57
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %pmem.addr, align 8, !tbaa !1
  %8 = load %struct.gs_indexed_map_s*, %struct.gs_indexed_map_s** %pimap, align 8, !tbaa !1
  %rc2 = getelementptr inbounds %struct.gs_indexed_map_s, %struct.gs_indexed_map_s* %8, i32 0, i32 0
  %memory = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc2, i32 0, i32 1
  store %struct.gs_memory_s* %7, %struct.gs_memory_s** %memory, align 8, !tbaa !58
  %9 = load %struct.gs_indexed_map_s*, %struct.gs_indexed_map_s** %pimap, align 8, !tbaa !1
  %rc3 = getelementptr inbounds %struct.gs_indexed_map_s, %struct.gs_indexed_map_s* %9, i32 0, i32 0
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc3, i32 0, i32 2
  store void (%struct.gs_memory_s*, i8*, i8*)* @rc_free_struct_only, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !59
  br label %do.body.4

do.body.4:                                        ; preds = %do.body.1
  br label %do.cond

do.cond:                                          ; preds = %do.body.4
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.cond.5

do.cond.5:                                        ; preds = %do.end
  br label %do.end.6

do.end.6:                                         ; preds = %do.cond.5
  br label %if.end

if.end:                                           ; preds = %do.end.6
  br label %do.cond.7

do.cond.7:                                        ; preds = %if.end
  br label %do.end.8

do.end.8:                                         ; preds = %do.cond.7
  %10 = load i32, i32* %nvals.addr, align 4, !tbaa !5
  %cmp9 = icmp sgt i32 %10, 0
  br i1 %cmp9, label %if.then.10, label %if.else.18

if.then.10:                                       ; preds = %do.end.8
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %pmem.addr, align 8, !tbaa !1
  %procs11 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %11, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs11, i32 0, i32 10
  %12 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !60
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %pmem.addr, align 8, !tbaa !1
  %14 = load i32, i32* %nvals.addr, align 4, !tbaa !5
  %15 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call12 = call i8* %12(%struct.gs_memory_s* %13, i32 %14, i32 4, i8* %15) #4
  %16 = bitcast i8* %call12 to float*
  %17 = load %struct.gs_indexed_map_s*, %struct.gs_indexed_map_s** %pimap, align 8, !tbaa !1
  %values = getelementptr inbounds %struct.gs_indexed_map_s, %struct.gs_indexed_map_s* %17, i32 0, i32 4
  store float* %16, float** %values, align 8, !tbaa !51
  %18 = load %struct.gs_indexed_map_s*, %struct.gs_indexed_map_s** %pimap, align 8, !tbaa !1
  %values13 = getelementptr inbounds %struct.gs_indexed_map_s, %struct.gs_indexed_map_s* %18, i32 0, i32 4
  %19 = load float*, float** %values13, align 8, !tbaa !51
  %cmp14 = icmp eq float* %19, null
  br i1 %cmp14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.then.10
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %pmem.addr, align 8, !tbaa !1
  %procs16 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %20, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs16, i32 0, i32 2
  %21 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !53
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %pmem.addr, align 8, !tbaa !1
  %23 = load %struct.gs_indexed_map_s*, %struct.gs_indexed_map_s** %pimap, align 8, !tbaa !1
  %24 = bitcast %struct.gs_indexed_map_s* %23 to i8*
  %25 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void %21(%struct.gs_memory_s* %22, i8* %24, i8* %25) #4
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.17:                                        ; preds = %if.then.10
  br label %if.end.20

if.else.18:                                       ; preds = %do.end.8
  %26 = load %struct.gs_indexed_map_s*, %struct.gs_indexed_map_s** %pimap, align 8, !tbaa !1
  %values19 = getelementptr inbounds %struct.gs_indexed_map_s, %struct.gs_indexed_map_s* %26, i32 0, i32 4
  store float* null, float** %values19, align 8, !tbaa !51
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.18, %if.end.17
  %27 = load %struct.gs_indexed_map_s*, %struct.gs_indexed_map_s** %pimap, align 8, !tbaa !1
  %rc21 = getelementptr inbounds %struct.gs_indexed_map_s, %struct.gs_indexed_map_s* %27, i32 0, i32 0
  %free22 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc21, i32 0, i32 2
  store void (%struct.gs_memory_s*, i8*, i8*)* @free_indexed_map, void (%struct.gs_memory_s*, i8*, i8*)** %free22, align 8, !tbaa !59
  %28 = load %struct.gs_indexed_map_s*, %struct.gs_indexed_map_s** %pimap, align 8, !tbaa !1
  %proc_data = getelementptr inbounds %struct.gs_indexed_map_s, %struct.gs_indexed_map_s* %28, i32 0, i32 2
  store i8* null, i8** %proc_data, align 8, !tbaa !61
  %29 = load i32, i32* %nvals.addr, align 4, !tbaa !5
  %30 = load %struct.gs_indexed_map_s*, %struct.gs_indexed_map_s** %pimap, align 8, !tbaa !1
  %num_values = getelementptr inbounds %struct.gs_indexed_map_s, %struct.gs_indexed_map_s* %30, i32 0, i32 3
  store i32 %29, i32* %num_values, align 4, !tbaa !62
  %31 = load %struct.gs_indexed_map_s*, %struct.gs_indexed_map_s** %pimap, align 8, !tbaa !1
  %32 = load %struct.gs_indexed_map_s**, %struct.gs_indexed_map_s*** %ppmap.addr, align 8, !tbaa !1
  store %struct.gs_indexed_map_s* %31, %struct.gs_indexed_map_s** %32, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.20, %if.then.15, %if.then
  %33 = bitcast %struct.gs_indexed_map_s** %pimap to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  %34 = load i32, i32* %retval
  ret i32 %34
}

declare void @rc_free_struct_only(%struct.gs_memory_s*, i8*, i8*) #2

declare i32 @gx_num_components_1(%struct.gs_color_space_s*) #2

declare void @gx_init_paint_1(%struct.gs_client_color_s*, %struct.gs_color_space_s*) #2

; Function Attrs: nounwind uwtable
define internal void @gx_restrict_Indexed(%struct.gs_client_color_s* %pcc, %struct.gs_color_space_s* %pcs) #0 {
entry:
  %pcc.addr = alloca %struct.gs_client_color_s*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %value = alloca float, align 4
  store %struct.gs_client_color_s* %pcc, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %0 = bitcast float* %value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %paint = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %1, i32 0, i32 1
  %values = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint, i32 0, i32 0
  %arrayidx = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 0
  %2 = load float, float* %arrayidx, align 4, !tbaa !63
  store float %2, float* %value, align 4, !tbaa !63
  %3 = load float, float* %value, align 4, !tbaa !63
  %conv = fpext float %3 to double
  %cmp = fcmp olt double %conv, 0.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end.11

cond.false:                                       ; preds = %entry
  %4 = load float, float* %value, align 4, !tbaa !63
  %5 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %5, i32 0, i32 7
  %indexed = bitcast %union.anon* %params to %struct.gs_indexed_params_s*
  %hival = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %indexed, i32 0, i32 0
  %6 = load i32, i32* %hival, align 4, !tbaa !64
  %conv2 = sitofp i32 %6 to float
  %cmp3 = fcmp oge float %4, %conv2
  br i1 %cmp3, label %cond.true.5, label %cond.false.10

cond.true.5:                                      ; preds = %cond.false
  %7 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params6 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %7, i32 0, i32 7
  %indexed7 = bitcast %union.anon* %params6 to %struct.gs_indexed_params_s*
  %hival8 = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %indexed7, i32 0, i32 0
  %8 = load i32, i32* %hival8, align 4, !tbaa !64
  %conv9 = sitofp i32 %8 to float
  br label %cond.end

cond.false.10:                                    ; preds = %cond.false
  %9 = load float, float* %value, align 4, !tbaa !63
  br label %cond.end

cond.end:                                         ; preds = %cond.false.10, %cond.true.5
  %cond = phi float [ %conv9, %cond.true.5 ], [ %9, %cond.false.10 ]
  br label %cond.end.11

cond.end.11:                                      ; preds = %cond.end, %cond.true
  %cond12 = phi float [ 0.000000e+00, %cond.true ], [ %cond, %cond.end ]
  %10 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %paint13 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %10, i32 0, i32 1
  %values14 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint13, i32 0, i32 0
  %arrayidx15 = getelementptr inbounds [64 x float], [64 x float]* %values14, i32 0, i64 0
  store float %cond12, float* %arrayidx15, align 4, !tbaa !63
  %11 = bitcast float* %value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %11) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.gs_color_space_s* @gx_concrete_space_Indexed(%struct.gs_color_space_s* %pcs, %struct.gs_imager_state_s* %pis) #0 {
entry:
  %retval = alloca %struct.gs_color_space_s*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %is_lab = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %0 = bitcast i32* %is_lab to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %is_lab, align 4, !tbaa !5
  %1 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %base_space = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %1, i32 0, i32 3
  %2 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space, align 8, !tbaa !49
  %call = call i32 @gs_color_space_is_PSCIE(%struct.gs_color_space_s* %2) #4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %3 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %base_space1 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %3, i32 0, i32 3
  %4 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space1, align 8, !tbaa !49
  %icc_equivalent = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %4, i32 0, i32 4
  %5 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_equivalent, align 8, !tbaa !66
  %cmp = icmp eq %struct.gs_color_space_s* %5, null
  br i1 %cmp, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %6 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %base_space3 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %6, i32 0, i32 3
  %7 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space3, align 8, !tbaa !49
  %8 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %8, i32 0, i32 1
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !67
  %call4 = call i32 @gs_colorspace_set_icc_equivalent(%struct.gs_color_space_s* %7, i32* %is_lab, %struct.gs_memory_s* %9) #4
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %10 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %base_space5 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %10, i32 0, i32 3
  %11 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space5, align 8, !tbaa !49
  %icc_equivalent6 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %11, i32 0, i32 4
  %12 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_equivalent6, align 8, !tbaa !66
  store %struct.gs_color_space_s* %12, %struct.gs_color_space_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %entry
  %13 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %base_space8 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %13, i32 0, i32 3
  %14 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space8, align 8, !tbaa !49
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %14, i32 0, i32 0
  %15 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !32
  %concrete_space = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %15, i32 0, i32 7
  %16 = load %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)** %concrete_space, align 8, !tbaa !69
  %17 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %base_space9 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %17, i32 0, i32 3
  %18 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space9, align 8, !tbaa !49
  %19 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %call10 = call %struct.gs_color_space_s* %16(%struct.gs_color_space_s* %18, %struct.gs_imager_state_s* %19) #4
  store %struct.gs_color_space_s* %call10, %struct.gs_color_space_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.7, %if.end
  %20 = bitcast i32* %is_lab to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
  %21 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %retval
  ret %struct.gs_color_space_s* %21
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_concretize_Indexed(%struct.gs_client_color_s* %pc, %struct.gs_color_space_s* %pcs, i16* %pconc, %struct.gs_imager_state_s* %pis, %struct.gx_device_s* %dev) #0 {
entry:
  %retval = alloca i32, align 4
  %pc.addr = alloca %struct.gs_client_color_s*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pconc.addr = alloca i16*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %cc = alloca %struct.gs_client_color_s, align 8
  %pbcs = alloca %struct.gs_color_space_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_client_color_s* %pc, %struct.gs_client_color_s** %pc.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store i16* %pconc, i16** %pconc.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_client_color_s* %cc to i8*
  call void @llvm.lifetime.start(i64 264, i8* %0) #1
  %1 = bitcast %struct.gs_color_space_s** %pbcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %base_space = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %2, i32 0, i32 3
  %3 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space, align 8, !tbaa !49
  store %struct.gs_color_space_s* %3, %struct.gs_color_space_s** %pbcs, align 8, !tbaa !1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pc.addr, align 8, !tbaa !1
  %6 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %call = call i32 @gs_indexed_limit_and_lookup(%struct.gs_client_color_s* %5, %struct.gs_color_space_s* %6, %struct.gs_client_color_s* %cc) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %7 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pbcs, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %9, i32 0, i32 0
  %10 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !32
  %concretize_color = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %10, i32 0, i32 8
  %11 = load i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)** %concretize_color, align 8, !tbaa !70
  %12 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pbcs, align 8, !tbaa !1
  %13 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %14 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %15 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call1 = call i32 %11(%struct.gs_client_color_s* %cc, %struct.gs_color_space_s* %12, i16* %13, %struct.gs_imager_state_s* %14, %struct.gx_device_s* %15) #4
  store i32 %call1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %16 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #1
  %17 = bitcast %struct.gs_color_space_s** %pbcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  %18 = bitcast %struct.gs_client_color_s* %cc to i8*
  call void @llvm.lifetime.end(i64 264, i8* %18) #1
  %19 = load i32, i32* %retval
  ret i32 %19
}

declare i32 @gx_default_remap_color(%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @gx_install_Indexed(%struct.gs_color_space_s* %pcs, %struct.gs_state_s* %pgs) #0 {
entry:
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %base_space = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %0, i32 0, i32 3
  %1 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space, align 8, !tbaa !49
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %1, i32 0, i32 0
  %2 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !32
  %install_cspace = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %2, i32 0, i32 11
  %3 = load i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)** %install_cspace, align 8, !tbaa !33
  %4 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %base_space1 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %4, i32 0, i32 3
  %5 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space1, align 8, !tbaa !49
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call = call i32 %3(%struct.gs_color_space_s* %5, %struct.gs_state_s* %6) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_set_overprint_Indexed(%struct.gs_color_space_s* %pcs, %struct.gs_state_s* %pgs) #0 {
entry:
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %base_space = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %0, i32 0, i32 3
  %1 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space, align 8, !tbaa !49
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %1, i32 0, i32 0
  %2 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !32
  %set_overprint = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %2, i32 0, i32 12
  %3 = load i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)** %set_overprint, align 8, !tbaa !71
  %4 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %base_space1 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %4, i32 0, i32 3
  %5 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space1, align 8, !tbaa !49
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call = call i32 %3(%struct.gs_color_space_s* %5, %struct.gs_state_s* %6) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal void @gx_final_Indexed(%struct.gs_color_space_s* %pcs) #0 {
entry:
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %data = alloca i8*, align 8
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %0, i32 0, i32 7
  %indexed = bitcast %union.anon* %params to %struct.gs_indexed_params_s*
  %use_proc = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %indexed, i32 0, i32 3
  %1 = load i32, i32* %use_proc, align 4, !tbaa !72
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.else.44

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %2 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params1 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %2, i32 0, i32 7
  %indexed2 = bitcast %union.anon* %params1 to %struct.gs_indexed_params_s*
  %lookup = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %indexed2, i32 0, i32 2
  %map = bitcast %union.anon.6* %lookup to %struct.gs_indexed_map_s**
  %3 = load %struct.gs_indexed_map_s*, %struct.gs_indexed_map_s** %map, align 8, !tbaa !1
  %tobool3 = icmp ne %struct.gs_indexed_map_s* %3, null
  br i1 %tobool3, label %if.then.4, label %if.end.42

if.then.4:                                        ; preds = %do.body
  br label %do.body.5

do.body.5:                                        ; preds = %if.then.4
  br label %do.body.6

do.body.6:                                        ; preds = %do.body.5
  br label %do.end

do.end:                                           ; preds = %do.body.6
  %4 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params7 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %4, i32 0, i32 7
  %indexed8 = bitcast %union.anon* %params7 to %struct.gs_indexed_params_s*
  %lookup9 = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %indexed8, i32 0, i32 2
  %map10 = bitcast %union.anon.6* %lookup9 to %struct.gs_indexed_map_s**
  %5 = load %struct.gs_indexed_map_s*, %struct.gs_indexed_map_s** %map10, align 8, !tbaa !1
  %rc = getelementptr inbounds %struct.gs_indexed_map_s, %struct.gs_indexed_map_s* %5, i32 0, i32 0
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %6 = load i64, i64* %ref_count, align 8, !tbaa !57
  %add = add nsw i64 %6, -1
  store i64 %add, i64* %ref_count, align 8, !tbaa !57
  br label %do.end.11

do.end.11:                                        ; preds = %do.end
  %7 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params12 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %7, i32 0, i32 7
  %indexed13 = bitcast %union.anon* %params12 to %struct.gs_indexed_params_s*
  %lookup14 = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %indexed13, i32 0, i32 2
  %map15 = bitcast %union.anon.6* %lookup14 to %struct.gs_indexed_map_s**
  %8 = load %struct.gs_indexed_map_s*, %struct.gs_indexed_map_s** %map15, align 8, !tbaa !1
  %rc16 = getelementptr inbounds %struct.gs_indexed_map_s, %struct.gs_indexed_map_s* %8, i32 0, i32 0
  %ref_count17 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc16, i32 0, i32 0
  %9 = load i64, i64* %ref_count17, align 8, !tbaa !57
  %tobool18 = icmp ne i64 %9, 0
  br i1 %tobool18, label %if.else, label %if.then.19

if.then.19:                                       ; preds = %do.end.11
  br label %do.body.20

do.body.20:                                       ; preds = %if.then.19
  br label %do.body.21

do.body.21:                                       ; preds = %do.body.20
  br label %do.end.22

do.end.22:                                        ; preds = %do.body.21
  %10 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params23 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %10, i32 0, i32 7
  %indexed24 = bitcast %union.anon* %params23 to %struct.gs_indexed_params_s*
  %lookup25 = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %indexed24, i32 0, i32 2
  %map26 = bitcast %union.anon.6* %lookup25 to %struct.gs_indexed_map_s**
  %11 = load %struct.gs_indexed_map_s*, %struct.gs_indexed_map_s** %map26, align 8, !tbaa !1
  %rc27 = getelementptr inbounds %struct.gs_indexed_map_s, %struct.gs_indexed_map_s* %11, i32 0, i32 0
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc27, i32 0, i32 2
  %12 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !59
  %13 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params28 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %13, i32 0, i32 7
  %indexed29 = bitcast %union.anon* %params28 to %struct.gs_indexed_params_s*
  %lookup30 = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %indexed29, i32 0, i32 2
  %map31 = bitcast %union.anon.6* %lookup30 to %struct.gs_indexed_map_s**
  %14 = load %struct.gs_indexed_map_s*, %struct.gs_indexed_map_s** %map31, align 8, !tbaa !1
  %rc32 = getelementptr inbounds %struct.gs_indexed_map_s, %struct.gs_indexed_map_s* %14, i32 0, i32 0
  %memory = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc32, i32 0, i32 1
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !58
  %16 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params33 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %16, i32 0, i32 7
  %indexed34 = bitcast %union.anon* %params33 to %struct.gs_indexed_params_s*
  %lookup35 = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %indexed34, i32 0, i32 2
  %map36 = bitcast %union.anon.6* %lookup35 to %struct.gs_indexed_map_s**
  %17 = load %struct.gs_indexed_map_s*, %struct.gs_indexed_map_s** %map36, align 8, !tbaa !1
  %18 = bitcast %struct.gs_indexed_map_s* %17 to i8*
  call void %12(%struct.gs_memory_s* %15, i8* %18, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0)) #4
  br label %do.end.37

do.end.37:                                        ; preds = %do.end.22
  br label %do.body.38

do.body.38:                                       ; preds = %do.end.37
  br label %do.end.39

do.end.39:                                        ; preds = %do.body.38
  br label %if.end

if.else:                                          ; preds = %do.end.11
  br label %do.body.40

do.body.40:                                       ; preds = %if.else
  br label %do.end.41

do.end.41:                                        ; preds = %do.body.40
  br label %if.end

if.end:                                           ; preds = %do.end.41, %do.end.39
  br label %if.end.42

if.end.42:                                        ; preds = %if.end, %do.body
  br label %do.end.43

do.end.43:                                        ; preds = %if.end.42
  br label %if.end.57

if.else.44:                                       ; preds = %entry
  %19 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  %20 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params45 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %20, i32 0, i32 7
  %indexed46 = bitcast %union.anon* %params45 to %struct.gs_indexed_params_s*
  %lookup47 = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %indexed46, i32 0, i32 2
  %table = bitcast %union.anon.6* %lookup47 to %struct.gs_const_string_s*
  %data48 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %table, i32 0, i32 0
  %21 = load i8*, i8** %data48, align 8, !tbaa !73
  store i8* %21, i8** %data, align 8, !tbaa !1
  %22 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %rc49 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %22, i32 0, i32 1
  %memory50 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc49, i32 0, i32 1
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory50, align 8, !tbaa !75
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %23, i32 0, i32 1
  %free_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 19
  %24 = load void (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)** %free_string, align 8, !tbaa !76
  %25 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %rc51 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %25, i32 0, i32 1
  %memory52 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc51, i32 0, i32 1
  %26 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory52, align 8, !tbaa !75
  %27 = load i8*, i8** %data, align 8, !tbaa !1
  %28 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params53 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %28, i32 0, i32 7
  %indexed54 = bitcast %union.anon* %params53 to %struct.gs_indexed_params_s*
  %lookup55 = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %indexed54, i32 0, i32 2
  %table56 = bitcast %union.anon.6* %lookup55 to %struct.gs_const_string_s*
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %table56, i32 0, i32 1
  %29 = load i32, i32* %size, align 4, !tbaa !77
  call void %24(%struct.gs_memory_s* %26, i8* %27, i32 %29, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0)) #4
  %30 = bitcast i8** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #1
  br label %if.end.57

if.end.57:                                        ; preds = %if.else.44, %do.end.43
  ret void
}

declare void @gx_no_adjust_color_count(%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @gx_serialize_Indexed(%struct.gs_color_space_s* %pcs, %struct.stream_s* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %s.addr = alloca %struct.stream_s*, align 8
  %p = alloca %struct.gs_indexed_params_s*, align 8
  %n = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_indexed_params_s** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %1, i32 0, i32 7
  %indexed = bitcast %union.anon* %params to %struct.gs_indexed_params_s*
  store %struct.gs_indexed_params_s* %indexed, %struct.gs_indexed_params_s** %p, align 8, !tbaa !1
  %2 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %5 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call = call i32 @gx_serialize_cspace_type(%struct.gs_color_space_s* %4, %struct.stream_s* %5) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %6 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %base_space = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %8, i32 0, i32 3
  %9 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space, align 8, !tbaa !49
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %9, i32 0, i32 0
  %10 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !32
  %serialize = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %10, i32 0, i32 15
  %11 = load i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)** %serialize, align 8, !tbaa !78
  %12 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %base_space1 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %12, i32 0, i32 3
  %13 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space1, align 8, !tbaa !49
  %14 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call2 = call i32 %11(%struct.gs_color_space_s* %13, %struct.stream_s* %14) #4
  store i32 %call2, i32* %code, align 4, !tbaa !5
  %15 = load i32, i32* %code, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %15, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %16 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  %17 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %18 = load %struct.gs_indexed_params_s*, %struct.gs_indexed_params_s** %p, align 8, !tbaa !1
  %hival = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %18, i32 0, i32 0
  %19 = bitcast i32* %hival to i8*
  %call6 = call i32 @sputs(%struct.stream_s* %17, i8* %19, i32 4, i32* %n) #4
  store i32 %call6, i32* %code, align 4, !tbaa !5
  %20 = load i32, i32* %code, align 4, !tbaa !5
  %cmp7 = icmp slt i32 %20, 0
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.5
  %21 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.end.5
  %22 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %23 = load %struct.gs_indexed_params_s*, %struct.gs_indexed_params_s** %p, align 8, !tbaa !1
  %use_proc = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %23, i32 0, i32 3
  %24 = bitcast i32* %use_proc to i8*
  %call10 = call i32 @sputs(%struct.stream_s* %22, i8* %24, i32 4, i32* %n) #4
  store i32 %call10, i32* %code, align 4, !tbaa !5
  %25 = load i32, i32* %code, align 4, !tbaa !5
  %cmp11 = icmp slt i32 %25, 0
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.9
  %26 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %26, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.13:                                        ; preds = %if.end.9
  %27 = load %struct.gs_indexed_params_s*, %struct.gs_indexed_params_s** %p, align 8, !tbaa !1
  %use_proc14 = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %27, i32 0, i32 3
  %28 = load i32, i32* %use_proc14, align 4, !tbaa !72
  %tobool = icmp ne i32 %28, 0
  br i1 %tobool, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %if.end.13
  %29 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %30 = load %struct.gs_indexed_params_s*, %struct.gs_indexed_params_s** %p, align 8, !tbaa !1
  %lookup = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %30, i32 0, i32 2
  %map = bitcast %union.anon.6* %lookup to %struct.gs_indexed_map_s**
  %31 = load %struct.gs_indexed_map_s*, %struct.gs_indexed_map_s** %map, align 8, !tbaa !1
  %num_values = getelementptr inbounds %struct.gs_indexed_map_s, %struct.gs_indexed_map_s* %31, i32 0, i32 3
  %32 = bitcast i32* %num_values to i8*
  %call16 = call i32 @sputs(%struct.stream_s* %29, i8* %32, i32 4, i32* %n) #4
  store i32 %call16, i32* %code, align 4, !tbaa !5
  %33 = load i32, i32* %code, align 4, !tbaa !5
  %cmp17 = icmp slt i32 %33, 0
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.then.15
  %34 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %34, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.19:                                        ; preds = %if.then.15
  %35 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %36 = load %struct.gs_indexed_params_s*, %struct.gs_indexed_params_s** %p, align 8, !tbaa !1
  %lookup20 = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %36, i32 0, i32 2
  %map21 = bitcast %union.anon.6* %lookup20 to %struct.gs_indexed_map_s**
  %37 = load %struct.gs_indexed_map_s*, %struct.gs_indexed_map_s** %map21, align 8, !tbaa !1
  %values = getelementptr inbounds %struct.gs_indexed_map_s, %struct.gs_indexed_map_s* %37, i32 0, i32 4
  %38 = load float*, float** %values, align 8, !tbaa !51
  %arrayidx = getelementptr inbounds float, float* %38, i64 0
  %39 = bitcast float* %arrayidx to i8*
  %40 = load %struct.gs_indexed_params_s*, %struct.gs_indexed_params_s** %p, align 8, !tbaa !1
  %lookup22 = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %40, i32 0, i32 2
  %map23 = bitcast %union.anon.6* %lookup22 to %struct.gs_indexed_map_s**
  %41 = load %struct.gs_indexed_map_s*, %struct.gs_indexed_map_s** %map23, align 8, !tbaa !1
  %num_values24 = getelementptr inbounds %struct.gs_indexed_map_s, %struct.gs_indexed_map_s* %41, i32 0, i32 3
  %42 = load i32, i32* %num_values24, align 4, !tbaa !62
  %conv = zext i32 %42 to i64
  %mul = mul i64 4, %conv
  %conv25 = trunc i64 %mul to i32
  %call26 = call i32 @sputs(%struct.stream_s* %35, i8* %39, i32 %conv25, i32* %n) #4
  store i32 %call26, i32* %code, align 4, !tbaa !5
  br label %if.end.39

if.else:                                          ; preds = %if.end.13
  %43 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %44 = load %struct.gs_indexed_params_s*, %struct.gs_indexed_params_s** %p, align 8, !tbaa !1
  %lookup27 = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %44, i32 0, i32 2
  %table = bitcast %union.anon.6* %lookup27 to %struct.gs_const_string_s*
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %table, i32 0, i32 1
  %45 = bitcast i32* %size to i8*
  %call28 = call i32 @sputs(%struct.stream_s* %43, i8* %45, i32 4, i32* %n) #4
  store i32 %call28, i32* %code, align 4, !tbaa !5
  %46 = load i32, i32* %code, align 4, !tbaa !5
  %cmp29 = icmp slt i32 %46, 0
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.else
  %47 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %47, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.32:                                        ; preds = %if.else
  %48 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %49 = load %struct.gs_indexed_params_s*, %struct.gs_indexed_params_s** %p, align 8, !tbaa !1
  %lookup33 = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %49, i32 0, i32 2
  %table34 = bitcast %union.anon.6* %lookup33 to %struct.gs_const_string_s*
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %table34, i32 0, i32 0
  %50 = load i8*, i8** %data, align 8, !tbaa !73
  %51 = load %struct.gs_indexed_params_s*, %struct.gs_indexed_params_s** %p, align 8, !tbaa !1
  %lookup35 = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %51, i32 0, i32 2
  %table36 = bitcast %union.anon.6* %lookup35 to %struct.gs_const_string_s*
  %size37 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %table36, i32 0, i32 1
  %52 = load i32, i32* %size37, align 4, !tbaa !77
  %call38 = call i32 @sputs(%struct.stream_s* %48, i8* %50, i32 %52, i32* %n) #4
  store i32 %call38, i32* %code, align 4, !tbaa !5
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.32, %if.end.19
  %53 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %53, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.39, %if.then.31, %if.then.18, %if.then.12, %if.then.8, %if.then.4, %if.then
  %54 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #1
  %55 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #1
  %56 = bitcast %struct.gs_indexed_params_s** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #1
  %57 = load i32, i32* %retval
  ret i32 %57
}

declare i32 @gx_cspace_is_linear_default(%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @gx_polarity_Indexed(%struct.gs_color_space_s* %pcs) #0 {
entry:
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %base_space = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %0, i32 0, i32 3
  %1 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space, align 8, !tbaa !49
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %1, i32 0, i32 0
  %2 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !32
  %polarity = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %2, i32 0, i32 17
  %3 = load i32 (%struct.gs_color_space_s*)*, i32 (%struct.gs_color_space_s*)** %polarity, align 8, !tbaa !79
  %4 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %base_space1 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %4, i32 0, i32 3
  %5 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space1, align 8, !tbaa !49
  %call = call i32 %3(%struct.gs_color_space_s* %5) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gs_cspace_build_Indexed(%struct.gs_color_space_s** %ppcspace, %struct.gs_color_space_s* %pbase_cspace, i32 %num_entries, %struct.gs_const_string_s* %ptbl, %struct.gs_memory_s* %pmem) #0 {
entry:
  %retval = alloca i32, align 4
  %ppcspace.addr = alloca %struct.gs_color_space_s**, align 8
  %pbase_cspace.addr = alloca %struct.gs_color_space_s*, align 8
  %num_entries.addr = alloca i32, align 4
  %ptbl.addr = alloca %struct.gs_const_string_s*, align 8
  %pmem.addr = alloca %struct.gs_memory_s*, align 8
  %pcspace = alloca %struct.gs_color_space_s*, align 8
  %pindexed = alloca %struct.gs_indexed_params_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_color_space_s** %ppcspace, %struct.gs_color_space_s*** %ppcspace.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pbase_cspace, %struct.gs_color_space_s** %pbase_cspace.addr, align 8, !tbaa !1
  store i32 %num_entries, i32* %num_entries.addr, align 4, !tbaa !5
  store %struct.gs_const_string_s* %ptbl, %struct.gs_const_string_s** %ptbl.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %pmem, %struct.gs_memory_s** %pmem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_color_space_s** %pcspace to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store %struct.gs_color_space_s* null, %struct.gs_color_space_s** %pcspace, align 8, !tbaa !1
  %1 = bitcast %struct.gs_indexed_params_s** %pindexed to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store %struct.gs_indexed_params_s* null, %struct.gs_indexed_params_s** %pindexed, align 8, !tbaa !1
  %2 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pbase_cspace.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_color_space_s* %2, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pbase_cspace.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %3, i32 0, i32 0
  %4 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !32
  %can_be_base_space = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %4, i32 0, i32 1
  %5 = load i32, i32* %can_be_base_space, align 4, !tbaa !80
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %pmem.addr, align 8, !tbaa !1
  %call = call %struct.gs_color_space_s* @gs_cspace_alloc(%struct.gs_memory_s* %6, %struct.gs_color_space_type_s* @gs_color_space_type_Indexed) #4
  store %struct.gs_color_space_s* %call, %struct.gs_color_space_s** %pcspace, align 8, !tbaa !1
  %7 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcspace, align 8, !tbaa !1
  %cmp1 = icmp eq %struct.gs_color_space_s* %7, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %if.end
  %8 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcspace, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %8, i32 0, i32 7
  %indexed = bitcast %union.anon* %params to %struct.gs_indexed_params_s*
  store %struct.gs_indexed_params_s* %indexed, %struct.gs_indexed_params_s** %pindexed, align 8, !tbaa !1
  %9 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %ptbl.addr, align 8, !tbaa !1
  %cmp4 = icmp eq %struct.gs_const_string_s* %9, null
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end.3
  %10 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pbase_cspace.addr, align 8, !tbaa !1
  %11 = load i32, i32* %num_entries.addr, align 4, !tbaa !5
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %pmem.addr, align 8, !tbaa !1
  %call6 = call %struct.gs_indexed_map_s* @alloc_indexed_palette(%struct.gs_color_space_s* %10, i32 %11, %struct.gs_memory_s* %12) #4
  %13 = load %struct.gs_indexed_params_s*, %struct.gs_indexed_params_s** %pindexed, align 8, !tbaa !1
  %lookup = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %13, i32 0, i32 2
  %map = bitcast %union.anon.6* %lookup to %struct.gs_indexed_map_s**
  store %struct.gs_indexed_map_s* %call6, %struct.gs_indexed_map_s** %map, align 8, !tbaa !1
  %14 = load %struct.gs_indexed_params_s*, %struct.gs_indexed_params_s** %pindexed, align 8, !tbaa !1
  %lookup7 = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %14, i32 0, i32 2
  %map8 = bitcast %union.anon.6* %lookup7 to %struct.gs_indexed_map_s**
  %15 = load %struct.gs_indexed_map_s*, %struct.gs_indexed_map_s** %map8, align 8, !tbaa !1
  %cmp9 = icmp eq %struct.gs_indexed_map_s* %15, null
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.then.5
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %pmem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %16, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %17 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !53
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %pmem.addr, align 8, !tbaa !1
  %19 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcspace, align 8, !tbaa !1
  %20 = bitcast %struct.gs_color_space_s* %19 to i8*
  call void %17(%struct.gs_memory_s* %18, i8* %20, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0)) #4
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %if.then.5
  %21 = load %struct.gs_indexed_params_s*, %struct.gs_indexed_params_s** %pindexed, align 8, !tbaa !1
  %use_proc = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %21, i32 0, i32 3
  store i32 1, i32* %use_proc, align 4, !tbaa !72
  br label %if.end.14

if.else:                                          ; preds = %if.end.3
  %22 = load %struct.gs_indexed_params_s*, %struct.gs_indexed_params_s** %pindexed, align 8, !tbaa !1
  %lookup12 = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %22, i32 0, i32 2
  %table = bitcast %union.anon.6* %lookup12 to %struct.gs_const_string_s*
  %23 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %ptbl.addr, align 8, !tbaa !1
  %24 = bitcast %struct.gs_const_string_s* %table to i8*
  %25 = bitcast %struct.gs_const_string_s* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* %25, i64 16, i32 8, i1 false), !tbaa.struct !81
  %26 = load %struct.gs_indexed_params_s*, %struct.gs_indexed_params_s** %pindexed, align 8, !tbaa !1
  %use_proc13 = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %26, i32 0, i32 3
  store i32 0, i32* %use_proc13, align 4, !tbaa !72
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.end.11
  %27 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pbase_cspace.addr, align 8, !tbaa !1
  %28 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcspace, align 8, !tbaa !1
  %base_space = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %28, i32 0, i32 3
  store %struct.gs_color_space_s* %27, %struct.gs_color_space_s** %base_space, align 8, !tbaa !49
  %29 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pbase_cspace.addr, align 8, !tbaa !1
  call void @rc_increment_cs(%struct.gs_color_space_s* %29) #4
  %30 = load i32, i32* %num_entries.addr, align 4, !tbaa !5
  %sub = sub i32 %30, 1
  %31 = load %struct.gs_indexed_params_s*, %struct.gs_indexed_params_s** %pindexed, align 8, !tbaa !1
  %hival = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %31, i32 0, i32 0
  store i32 %sub, i32* %hival, align 4, !tbaa !64
  %32 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pbase_cspace.addr, align 8, !tbaa !1
  %type15 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %32, i32 0, i32 0
  %33 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type15, align 8, !tbaa !32
  %num_components = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %33, i32 0, i32 4
  %34 = load i32 (%struct.gs_color_space_s*)*, i32 (%struct.gs_color_space_s*)** %num_components, align 8, !tbaa !50
  %35 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pbase_cspace.addr, align 8, !tbaa !1
  %call16 = call i32 %34(%struct.gs_color_space_s* %35) #4
  %36 = load %struct.gs_indexed_params_s*, %struct.gs_indexed_params_s** %pindexed, align 8, !tbaa !1
  %n_comps = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %36, i32 0, i32 1
  store i32 %call16, i32* %n_comps, align 4, !tbaa !82
  %37 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcspace, align 8, !tbaa !1
  %38 = load %struct.gs_color_space_s**, %struct.gs_color_space_s*** %ppcspace.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %37, %struct.gs_color_space_s** %38, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.14, %if.then.10, %if.then.2, %if.then
  %39 = bitcast %struct.gs_indexed_params_s** %pindexed to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  %40 = bitcast %struct.gs_color_space_s** %pcspace to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  %41 = load i32, i32* %retval
  ret i32 %41
}

declare %struct.gs_color_space_s* @gs_cspace_alloc(%struct.gs_memory_s*, %struct.gs_color_space_type_s*) #2

; Function Attrs: nounwind uwtable
define internal %struct.gs_indexed_map_s* @alloc_indexed_palette(%struct.gs_color_space_s* %pbase_cspace, i32 %nvals, %struct.gs_memory_s* %pmem) #0 {
entry:
  %retval = alloca %struct.gs_indexed_map_s*, align 8
  %pbase_cspace.addr = alloca %struct.gs_color_space_s*, align 8
  %nvals.addr = alloca i32, align 4
  %pmem.addr = alloca %struct.gs_memory_s*, align 8
  %num_comps = alloca i32, align 4
  %pimap = alloca %struct.gs_indexed_map_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_color_space_s* %pbase_cspace, %struct.gs_color_space_s** %pbase_cspace.addr, align 8, !tbaa !1
  store i32 %nvals, i32* %nvals.addr, align 4, !tbaa !5
  store %struct.gs_memory_s* %pmem, %struct.gs_memory_s** %pmem.addr, align 8, !tbaa !1
  %0 = bitcast i32* %num_comps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pbase_cspace.addr, align 8, !tbaa !1
  %call = call i32 @gs_color_space_num_components(%struct.gs_color_space_s* %1) #4
  store i32 %call, i32* %num_comps, align 4, !tbaa !5
  %2 = bitcast %struct.gs_indexed_map_s** %pimap to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i32, i32* %nvals.addr, align 4, !tbaa !5
  %5 = load i32, i32* %num_comps, align 4, !tbaa !5
  %mul = mul nsw i32 %4, %5
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %pmem.addr, align 8, !tbaa !1
  %call1 = call i32 @alloc_indexed_map(%struct.gs_indexed_map_s** %pimap, i32 %mul, %struct.gs_memory_s* %6, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0)) #4
  store i32 %call1, i32* %code, align 4, !tbaa !5
  %7 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.gs_indexed_map_s* null, %struct.gs_indexed_map_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load i32, i32* %num_comps, align 4, !tbaa !5
  %cmp2 = icmp eq i32 %8, 1
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %9 = load %struct.gs_indexed_map_s*, %struct.gs_indexed_map_s** %pimap, align 8, !tbaa !1
  %proc = getelementptr inbounds %struct.gs_indexed_map_s, %struct.gs_indexed_map_s* %9, i32 0, i32 1
  %lookup_index = bitcast %union.anon.7* %proc to i32 (%struct.gs_color_space_s*, i32, float*)**
  store i32 (%struct.gs_color_space_s*, i32, float*)* @map_palette_entry_1, i32 (%struct.gs_color_space_s*, i32, float*)** %lookup_index, align 8, !tbaa !1
  br label %if.end.18

if.else:                                          ; preds = %if.end
  %10 = load i32, i32* %num_comps, align 4, !tbaa !5
  %cmp4 = icmp eq i32 %10, 3
  br i1 %cmp4, label %if.then.5, label %if.else.8

if.then.5:                                        ; preds = %if.else
  %11 = load %struct.gs_indexed_map_s*, %struct.gs_indexed_map_s** %pimap, align 8, !tbaa !1
  %proc6 = getelementptr inbounds %struct.gs_indexed_map_s, %struct.gs_indexed_map_s* %11, i32 0, i32 1
  %lookup_index7 = bitcast %union.anon.7* %proc6 to i32 (%struct.gs_color_space_s*, i32, float*)**
  store i32 (%struct.gs_color_space_s*, i32, float*)* @map_palette_entry_3, i32 (%struct.gs_color_space_s*, i32, float*)** %lookup_index7, align 8, !tbaa !1
  br label %if.end.17

if.else.8:                                        ; preds = %if.else
  %12 = load i32, i32* %num_comps, align 4, !tbaa !5
  %cmp9 = icmp eq i32 %12, 4
  br i1 %cmp9, label %if.then.10, label %if.else.13

if.then.10:                                       ; preds = %if.else.8
  %13 = load %struct.gs_indexed_map_s*, %struct.gs_indexed_map_s** %pimap, align 8, !tbaa !1
  %proc11 = getelementptr inbounds %struct.gs_indexed_map_s, %struct.gs_indexed_map_s* %13, i32 0, i32 1
  %lookup_index12 = bitcast %union.anon.7* %proc11 to i32 (%struct.gs_color_space_s*, i32, float*)**
  store i32 (%struct.gs_color_space_s*, i32, float*)* @map_palette_entry_4, i32 (%struct.gs_color_space_s*, i32, float*)** %lookup_index12, align 8, !tbaa !1
  br label %if.end.16

if.else.13:                                       ; preds = %if.else.8
  %14 = load %struct.gs_indexed_map_s*, %struct.gs_indexed_map_s** %pimap, align 8, !tbaa !1
  %proc14 = getelementptr inbounds %struct.gs_indexed_map_s, %struct.gs_indexed_map_s* %14, i32 0, i32 1
  %lookup_index15 = bitcast %union.anon.7* %proc14 to i32 (%struct.gs_color_space_s*, i32, float*)**
  store i32 (%struct.gs_color_space_s*, i32, float*)* @map_palette_entry_n, i32 (%struct.gs_color_space_s*, i32, float*)** %lookup_index15, align 8, !tbaa !1
  br label %if.end.16

if.end.16:                                        ; preds = %if.else.13, %if.then.10
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.then.5
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.then.3
  %15 = load %struct.gs_indexed_map_s*, %struct.gs_indexed_map_s** %pimap, align 8, !tbaa !1
  store %struct.gs_indexed_map_s* %15, %struct.gs_indexed_map_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.18, %if.then
  %16 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #1
  %17 = bitcast %struct.gs_indexed_map_s** %pimap to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  %18 = bitcast i32* %num_comps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #1
  %19 = load %struct.gs_indexed_map_s*, %struct.gs_indexed_map_s** %retval
  ret %struct.gs_indexed_map_s* %19
}

; Function Attrs: nounwind uwtable
define i32 @gs_cspace_indexed_num_entries(%struct.gs_color_space_s* %pcspace) #0 {
entry:
  %retval = alloca i32, align 4
  %pcspace.addr = alloca %struct.gs_color_space_s*, align 8
  store %struct.gs_color_space_s* %pcspace, %struct.gs_color_space_s** %pcspace.addr, align 8, !tbaa !1
  %0 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcspace.addr, align 8, !tbaa !1
  %call = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %0) #4
  %cmp = icmp ne i32 %call, 10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcspace.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %1, i32 0, i32 7
  %indexed = bitcast %union.anon* %params to %struct.gs_indexed_params_s*
  %hival = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %indexed, i32 0, i32 0
  %2 = load i32, i32* %hival, align 4, !tbaa !64
  %add = add nsw i32 %2, 1
  store i32 %add, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval
  ret i32 %3
}

declare i32 @gs_color_space_get_index(%struct.gs_color_space_s*) #2

; Function Attrs: nounwind uwtable
define float* @gs_cspace_indexed_value_array(%struct.gs_color_space_s* %pcspace) #0 {
entry:
  %retval = alloca float*, align 8
  %pcspace.addr = alloca %struct.gs_color_space_s*, align 8
  store %struct.gs_color_space_s* %pcspace, %struct.gs_color_space_s** %pcspace.addr, align 8, !tbaa !1
  %0 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcspace.addr, align 8, !tbaa !1
  %call = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %0) #4
  %cmp = icmp ne i32 %call, 10
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcspace.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %1, i32 0, i32 7
  %indexed = bitcast %union.anon* %params to %struct.gs_indexed_params_s*
  %use_proc = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %indexed, i32 0, i32 3
  %2 = load i32, i32* %use_proc, align 4, !tbaa !72
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store float* null, float** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcspace.addr, align 8, !tbaa !1
  %params1 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %3, i32 0, i32 7
  %indexed2 = bitcast %union.anon* %params1 to %struct.gs_indexed_params_s*
  %lookup = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %indexed2, i32 0, i32 2
  %map = bitcast %union.anon.6* %lookup to %struct.gs_indexed_map_s**
  %4 = load %struct.gs_indexed_map_s*, %struct.gs_indexed_map_s** %map, align 8, !tbaa !1
  %values = getelementptr inbounds %struct.gs_indexed_map_s, %struct.gs_indexed_map_s* %4, i32 0, i32 4
  %5 = load float*, float** %values, align 8, !tbaa !51
  store float* %5, float** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load float*, float** %retval
  ret float* %6
}

; Function Attrs: nounwind uwtable
define i32 @gs_cspace_indexed_set_proc(%struct.gs_color_space_s* %pcspace, i32 (%struct.gs_color_space_s*, i32, float*)* %proc) #0 {
entry:
  %retval = alloca i32, align 4
  %pcspace.addr = alloca %struct.gs_color_space_s*, align 8
  %proc.addr = alloca i32 (%struct.gs_color_space_s*, i32, float*)*, align 8
  store %struct.gs_color_space_s* %pcspace, %struct.gs_color_space_s** %pcspace.addr, align 8, !tbaa !1
  store i32 (%struct.gs_color_space_s*, i32, float*)* %proc, i32 (%struct.gs_color_space_s*, i32, float*)** %proc.addr, align 8, !tbaa !1
  %0 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcspace.addr, align 8, !tbaa !1
  %call = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %0) #4
  %cmp = icmp ne i32 %call, 10
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcspace.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %1, i32 0, i32 7
  %indexed = bitcast %union.anon* %params to %struct.gs_indexed_params_s*
  %use_proc = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %indexed, i32 0, i32 3
  %2 = load i32, i32* %use_proc, align 4, !tbaa !72
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -15, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load i32 (%struct.gs_color_space_s*, i32, float*)*, i32 (%struct.gs_color_space_s*, i32, float*)** %proc.addr, align 8, !tbaa !1
  %4 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcspace.addr, align 8, !tbaa !1
  %params1 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %4, i32 0, i32 7
  %indexed2 = bitcast %union.anon* %params1 to %struct.gs_indexed_params_s*
  %lookup = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %indexed2, i32 0, i32 2
  %map = bitcast %union.anon.6* %lookup to %struct.gs_indexed_map_s**
  %5 = load %struct.gs_indexed_map_s*, %struct.gs_indexed_map_s** %map, align 8, !tbaa !1
  %proc3 = getelementptr inbounds %struct.gs_indexed_map_s, %struct.gs_indexed_map_s* %5, i32 0, i32 1
  %lookup_index = bitcast %union.anon.7* %proc3 to i32 (%struct.gs_color_space_s*, i32, float*)**
  store i32 (%struct.gs_color_space_s*, i32, float*)* %3, i32 (%struct.gs_color_space_s*, i32, float*)** %lookup_index, align 8, !tbaa !1
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @gs_cspace_indexed_lookup(%struct.gs_color_space_s* %pcs, i32 %index, %struct.gs_client_color_s* %pcc) #0 {
entry:
  %retval = alloca i32, align 4
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %index.addr = alloca i32, align 4
  %pcc.addr = alloca %struct.gs_client_color_s*, align 8
  %pip = alloca %struct.gs_indexed_params_s*, align 8
  %cleanup.dest.slot = alloca i32
  %pbcs = alloca %struct.gs_color_space_s*, align 8
  %m = alloca i32, align 4
  %pcomp = alloca i8*, align 8
  %i = alloca i32, align 4
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  store %struct.gs_client_color_s* %pcc, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_indexed_params_s** %pip to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %1, i32 0, i32 7
  %indexed = bitcast %union.anon* %params to %struct.gs_indexed_params_s*
  store %struct.gs_indexed_params_s* %indexed, %struct.gs_indexed_params_s** %pip, align 8, !tbaa !1
  %2 = load %struct.gs_indexed_params_s*, %struct.gs_indexed_params_s** %pip, align 8, !tbaa !1
  %use_proc = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %2, i32 0, i32 3
  %3 = load i32, i32* %use_proc, align 4, !tbaa !72
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.gs_indexed_params_s*, %struct.gs_indexed_params_s** %pip, align 8, !tbaa !1
  %lookup = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %4, i32 0, i32 2
  %map = bitcast %union.anon.6* %lookup to %struct.gs_indexed_map_s**
  %5 = load %struct.gs_indexed_map_s*, %struct.gs_indexed_map_s** %map, align 8, !tbaa !1
  %proc = getelementptr inbounds %struct.gs_indexed_map_s, %struct.gs_indexed_map_s* %5, i32 0, i32 1
  %lookup_index = bitcast %union.anon.7* %proc to i32 (%struct.gs_color_space_s*, i32, float*)**
  %6 = load i32 (%struct.gs_color_space_s*, i32, float*)*, i32 (%struct.gs_color_space_s*, i32, float*)** %lookup_index, align 8, !tbaa !1
  %7 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %8 = load i32, i32* %index.addr, align 4, !tbaa !5
  %9 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %paint = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %9, i32 0, i32 1
  %values = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint, i32 0, i32 0
  %arrayidx = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 0
  %call = call i32 %6(%struct.gs_color_space_s* %7, i32 %8, float* %arrayidx) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %entry
  %10 = bitcast %struct.gs_color_space_s** %pbcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %base_space = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %11, i32 0, i32 3
  %12 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space, align 8, !tbaa !49
  store %struct.gs_color_space_s* %12, %struct.gs_color_space_s** %pbcs, align 8, !tbaa !1
  %13 = bitcast i32* %m to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pbcs, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %14, i32 0, i32 0
  %15 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !32
  %num_components = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %15, i32 0, i32 4
  %16 = load i32 (%struct.gs_color_space_s*)*, i32 (%struct.gs_color_space_s*)** %num_components, align 8, !tbaa !50
  %17 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pbcs, align 8, !tbaa !1
  %call1 = call i32 %16(%struct.gs_color_space_s* %17) #4
  store i32 %call1, i32* %m, align 4, !tbaa !5
  %18 = bitcast i8** %pcomp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  %19 = load %struct.gs_indexed_params_s*, %struct.gs_indexed_params_s** %pip, align 8, !tbaa !1
  %lookup2 = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %19, i32 0, i32 2
  %table = bitcast %union.anon.6* %lookup2 to %struct.gs_const_string_s*
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %table, i32 0, i32 0
  %20 = load i8*, i8** %data, align 8, !tbaa !73
  %21 = load i32, i32* %m, align 4, !tbaa !5
  %22 = load i32, i32* %index.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %21, %22
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %20, i64 %idx.ext
  store i8* %add.ptr, i8** %pcomp, align 8, !tbaa !1
  %23 = load i32, i32* %m, align 4, !tbaa !5
  switch i32 %23, label %sw.default [
    i32 4, label %sw.bb
    i32 3, label %sw.bb.19
    i32 2, label %sw.bb.28
    i32 1, label %sw.bb.37
  ]

sw.default:                                       ; preds = %if.else
  %24 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.default
  %25 = load i32, i32* %i, align 4, !tbaa !5
  %26 = load i32, i32* %m, align 4, !tbaa !5
  %cmp = icmp slt i32 %25, %26
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %27 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %27 to i64
  %28 = load i8*, i8** %pcomp, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i8, i8* %28, i64 %idxprom
  %29 = load i8, i8* %arrayidx3, align 1, !tbaa !11
  %conv = zext i8 %29 to i32
  %conv4 = sitofp i32 %conv to double
  %mul5 = fmul double %conv4, 0x3F70101010101010
  %conv6 = fptrunc double %mul5 to float
  %30 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom7 = sext i32 %30 to i64
  %31 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %paint8 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %31, i32 0, i32 1
  %values9 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint8, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [64 x float], [64 x float]* %values9, i32 0, i64 %idxprom7
  store float %conv6, float* %arrayidx10, align 4, !tbaa !63
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %32 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %33 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  br label %sw.epilog

sw.bb:                                            ; preds = %if.else
  %34 = load i8*, i8** %pcomp, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i8, i8* %34, i64 3
  %35 = load i8, i8* %arrayidx11, align 1, !tbaa !11
  %conv12 = zext i8 %35 to i32
  %conv13 = sitofp i32 %conv12 to double
  %mul14 = fmul double %conv13, 0x3F70101010101010
  %conv15 = fptrunc double %mul14 to float
  %36 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %paint16 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %36, i32 0, i32 1
  %values17 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint16, i32 0, i32 0
  %arrayidx18 = getelementptr inbounds [64 x float], [64 x float]* %values17, i32 0, i64 3
  store float %conv15, float* %arrayidx18, align 4, !tbaa !63
  br label %sw.bb.19

sw.bb.19:                                         ; preds = %if.else, %sw.bb
  %37 = load i8*, i8** %pcomp, align 8, !tbaa !1
  %arrayidx20 = getelementptr inbounds i8, i8* %37, i64 2
  %38 = load i8, i8* %arrayidx20, align 1, !tbaa !11
  %conv21 = zext i8 %38 to i32
  %conv22 = sitofp i32 %conv21 to double
  %mul23 = fmul double %conv22, 0x3F70101010101010
  %conv24 = fptrunc double %mul23 to float
  %39 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %paint25 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %39, i32 0, i32 1
  %values26 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint25, i32 0, i32 0
  %arrayidx27 = getelementptr inbounds [64 x float], [64 x float]* %values26, i32 0, i64 2
  store float %conv24, float* %arrayidx27, align 4, !tbaa !63
  br label %sw.bb.28

sw.bb.28:                                         ; preds = %if.else, %sw.bb.19
  %40 = load i8*, i8** %pcomp, align 8, !tbaa !1
  %arrayidx29 = getelementptr inbounds i8, i8* %40, i64 1
  %41 = load i8, i8* %arrayidx29, align 1, !tbaa !11
  %conv30 = zext i8 %41 to i32
  %conv31 = sitofp i32 %conv30 to double
  %mul32 = fmul double %conv31, 0x3F70101010101010
  %conv33 = fptrunc double %mul32 to float
  %42 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %paint34 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %42, i32 0, i32 1
  %values35 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint34, i32 0, i32 0
  %arrayidx36 = getelementptr inbounds [64 x float], [64 x float]* %values35, i32 0, i64 1
  store float %conv33, float* %arrayidx36, align 4, !tbaa !63
  br label %sw.bb.37

sw.bb.37:                                         ; preds = %if.else, %sw.bb.28
  %43 = load i8*, i8** %pcomp, align 8, !tbaa !1
  %arrayidx38 = getelementptr inbounds i8, i8* %43, i64 0
  %44 = load i8, i8* %arrayidx38, align 1, !tbaa !11
  %conv39 = zext i8 %44 to i32
  %conv40 = sitofp i32 %conv39 to double
  %mul41 = fmul double %conv40, 0x3F70101010101010
  %conv42 = fptrunc double %mul41 to float
  %45 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %paint43 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %45, i32 0, i32 1
  %values44 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint43, i32 0, i32 0
  %arrayidx45 = getelementptr inbounds [64 x float], [64 x float]* %values44, i32 0, i64 0
  store float %conv42, float* %arrayidx45, align 4, !tbaa !63
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.37, %for.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %46 = bitcast i8** %pcomp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #1
  %47 = bitcast i32* %m to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #1
  %48 = bitcast %struct.gs_color_space_s** %pbcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then
  %49 = bitcast %struct.gs_indexed_params_s** %pip to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #1
  %50 = load i32, i32* %retval
  ret i32 %50
}

; Function Attrs: nounwind uwtable
define i32 @gs_cspace_indexed_lookup_bytes(%struct.gs_color_space_s* %pcs, float %index_float, i8* %output) #0 {
entry:
  %retval = alloca i32, align 4
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %index_float.addr = alloca float, align 4
  %output.addr = alloca i8*, align 8
  %pip = alloca %struct.gs_indexed_params_s*, align 8
  %pbcs = alloca %struct.gs_color_space_s*, align 8
  %m = alloca i32, align 4
  %index = alloca i32, align 4
  %values = alloca [64 x float], align 16
  %ok = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %pcomp = alloca i8*, align 8
  %i150 = alloca i32, align 4
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store float %index_float, float* %index_float.addr, align 4, !tbaa !63
  store i8* %output, i8** %output.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_indexed_params_s** %pip to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %1, i32 0, i32 7
  %indexed = bitcast %union.anon* %params to %struct.gs_indexed_params_s*
  store %struct.gs_indexed_params_s* %indexed, %struct.gs_indexed_params_s** %pip, align 8, !tbaa !1
  %2 = bitcast %struct.gs_color_space_s** %pbcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %base_space = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %3, i32 0, i32 3
  %4 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space, align 8, !tbaa !49
  store %struct.gs_color_space_s* %4, %struct.gs_color_space_s** %pbcs, align 8, !tbaa !1
  %5 = bitcast i32* %m to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pbcs, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %6, i32 0, i32 0
  %7 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !32
  %num_components = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %7, i32 0, i32 4
  %8 = load i32 (%struct.gs_color_space_s*)*, i32 (%struct.gs_color_space_s*)** %num_components, align 8, !tbaa !50
  %9 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pbcs, align 8, !tbaa !1
  %call = call i32 %8(%struct.gs_color_space_s* %9) #4
  store i32 %call, i32* %m, align 4, !tbaa !5
  %10 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load float, float* %index_float.addr, align 4, !tbaa !63
  %conv = fpext float %11 to double
  %cmp = fcmp olt double %conv, 0.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end.13

cond.false:                                       ; preds = %entry
  %12 = load float, float* %index_float.addr, align 4, !tbaa !63
  %13 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params2 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %13, i32 0, i32 7
  %indexed3 = bitcast %union.anon* %params2 to %struct.gs_indexed_params_s*
  %hival = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %indexed3, i32 0, i32 0
  %14 = load i32, i32* %hival, align 4, !tbaa !64
  %conv4 = sitofp i32 %14 to float
  %cmp5 = fcmp oge float %12, %conv4
  br i1 %cmp5, label %cond.true.7, label %cond.false.11

cond.true.7:                                      ; preds = %cond.false
  %15 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params8 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %15, i32 0, i32 7
  %indexed9 = bitcast %union.anon* %params8 to %struct.gs_indexed_params_s*
  %hival10 = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %indexed9, i32 0, i32 0
  %16 = load i32, i32* %hival10, align 4, !tbaa !64
  br label %cond.end

cond.false.11:                                    ; preds = %cond.false
  %17 = load float, float* %index_float.addr, align 4, !tbaa !63
  %conv12 = fptosi float %17 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false.11, %cond.true.7
  %cond = phi i32 [ %16, %cond.true.7 ], [ %conv12, %cond.false.11 ]
  br label %cond.end.13

cond.end.13:                                      ; preds = %cond.end, %cond.true
  %cond14 = phi i32 [ 0, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond14, i32* %index, align 4, !tbaa !5
  %18 = load %struct.gs_indexed_params_s*, %struct.gs_indexed_params_s** %pip, align 8, !tbaa !1
  %use_proc = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %18, i32 0, i32 3
  %19 = load i32, i32* %use_proc, align 4, !tbaa !72
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end.13
  %20 = bitcast [64 x float]* %values to i8*
  call void @llvm.lifetime.start(i64 256, i8* %20) #1
  %21 = bitcast i32* %ok to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = load %struct.gs_indexed_params_s*, %struct.gs_indexed_params_s** %pip, align 8, !tbaa !1
  %lookup = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %22, i32 0, i32 2
  %map = bitcast %union.anon.6* %lookup to %struct.gs_indexed_map_s**
  %23 = load %struct.gs_indexed_map_s*, %struct.gs_indexed_map_s** %map, align 8, !tbaa !1
  %proc = getelementptr inbounds %struct.gs_indexed_map_s, %struct.gs_indexed_map_s* %23, i32 0, i32 1
  %lookup_index = bitcast %union.anon.7* %proc to i32 (%struct.gs_color_space_s*, i32, float*)**
  %24 = load i32 (%struct.gs_color_space_s*, i32, float*)*, i32 (%struct.gs_color_space_s*, i32, float*)** %lookup_index, align 8, !tbaa !1
  %25 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %26 = load i32, i32* %index, align 4, !tbaa !5
  %arraydecay = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i32 0
  %call15 = call i32 %24(%struct.gs_color_space_s* %25, i32 %26, float* %arraydecay) #4
  store i32 %call15, i32* %ok, align 4, !tbaa !5
  %27 = load i32, i32* %m, align 4, !tbaa !5
  switch i32 %27, label %sw.default [
    i32 4, label %sw.bb
    i32 3, label %sw.bb.69
    i32 2, label %sw.bb.95
    i32 1, label %sw.bb.121
  ]

sw.default:                                       ; preds = %if.then
  %28 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.default
  %29 = load i32, i32* %i, align 4, !tbaa !5
  %30 = load i32, i32* %m, align 4, !tbaa !5
  %cmp16 = icmp slt i32 %29, %30
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %31 to i64
  %arrayidx = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 %idxprom
  %32 = load float, float* %arrayidx, align 4, !tbaa !63
  %conv18 = fpext float %32 to double
  %cmp19 = fcmp olt double 0.000000e+00, %conv18
  br i1 %cmp19, label %land.lhs.true, label %cond.false.32

land.lhs.true:                                    ; preds = %for.body
  %33 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom21 = sext i32 %33 to i64
  %arrayidx22 = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 %idxprom21
  %34 = load float, float* %arrayidx22, align 4, !tbaa !63
  %conv23 = fpext float %34 to double
  %cmp24 = fcmp olt double %conv23, 1.000000e+00
  br i1 %cmp24, label %cond.true.26, label %cond.false.32

cond.true.26:                                     ; preds = %land.lhs.true
  %35 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom27 = sext i32 %35 to i64
  %arrayidx28 = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 %idxprom27
  %36 = load float, float* %arrayidx28, align 4, !tbaa !63
  %conv29 = fpext float %36 to double
  %mul = fmul double %conv29, 2.550000e+02
  %conv30 = fptoui double %mul to i8
  %conv31 = zext i8 %conv30 to i32
  br label %cond.end.39

cond.false.32:                                    ; preds = %land.lhs.true, %for.body
  %37 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom33 = sext i32 %37 to i64
  %arrayidx34 = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 %idxprom33
  %38 = load float, float* %arrayidx34, align 4, !tbaa !63
  %conv35 = fpext float %38 to double
  %cmp36 = fcmp ole double %conv35, 0.000000e+00
  %cond38 = select i1 %cmp36, i32 0, i32 255
  br label %cond.end.39

cond.end.39:                                      ; preds = %cond.false.32, %cond.true.26
  %cond40 = phi i32 [ %conv31, %cond.true.26 ], [ %cond38, %cond.false.32 ]
  %conv41 = trunc i32 %cond40 to i8
  %39 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom42 = sext i32 %39 to i64
  %40 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %arrayidx43 = getelementptr inbounds i8, i8* %40, i64 %idxprom42
  store i8 %conv41, i8* %arrayidx43, align 1, !tbaa !11
  br label %for.inc

for.inc:                                          ; preds = %cond.end.39
  %41 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %41, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %42 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #1
  br label %sw.epilog

sw.bb:                                            ; preds = %if.then
  %arrayidx44 = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 3
  %43 = load float, float* %arrayidx44, align 4, !tbaa !63
  %conv45 = fpext float %43 to double
  %cmp46 = fcmp olt double 0.000000e+00, %conv45
  br i1 %cmp46, label %land.lhs.true.48, label %cond.false.59

land.lhs.true.48:                                 ; preds = %sw.bb
  %arrayidx49 = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 3
  %44 = load float, float* %arrayidx49, align 4, !tbaa !63
  %conv50 = fpext float %44 to double
  %cmp51 = fcmp olt double %conv50, 1.000000e+00
  br i1 %cmp51, label %cond.true.53, label %cond.false.59

cond.true.53:                                     ; preds = %land.lhs.true.48
  %arrayidx54 = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 3
  %45 = load float, float* %arrayidx54, align 4, !tbaa !63
  %conv55 = fpext float %45 to double
  %mul56 = fmul double %conv55, 2.550000e+02
  %conv57 = fptoui double %mul56 to i8
  %conv58 = zext i8 %conv57 to i32
  br label %cond.end.65

cond.false.59:                                    ; preds = %land.lhs.true.48, %sw.bb
  %arrayidx60 = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 3
  %46 = load float, float* %arrayidx60, align 4, !tbaa !63
  %conv61 = fpext float %46 to double
  %cmp62 = fcmp ole double %conv61, 0.000000e+00
  %cond64 = select i1 %cmp62, i32 0, i32 255
  br label %cond.end.65

cond.end.65:                                      ; preds = %cond.false.59, %cond.true.53
  %cond66 = phi i32 [ %conv58, %cond.true.53 ], [ %cond64, %cond.false.59 ]
  %conv67 = trunc i32 %cond66 to i8
  %47 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %arrayidx68 = getelementptr inbounds i8, i8* %47, i64 3
  store i8 %conv67, i8* %arrayidx68, align 1, !tbaa !11
  br label %sw.bb.69

sw.bb.69:                                         ; preds = %if.then, %cond.end.65
  %arrayidx70 = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 2
  %48 = load float, float* %arrayidx70, align 4, !tbaa !63
  %conv71 = fpext float %48 to double
  %cmp72 = fcmp olt double 0.000000e+00, %conv71
  br i1 %cmp72, label %land.lhs.true.74, label %cond.false.85

land.lhs.true.74:                                 ; preds = %sw.bb.69
  %arrayidx75 = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 2
  %49 = load float, float* %arrayidx75, align 4, !tbaa !63
  %conv76 = fpext float %49 to double
  %cmp77 = fcmp olt double %conv76, 1.000000e+00
  br i1 %cmp77, label %cond.true.79, label %cond.false.85

cond.true.79:                                     ; preds = %land.lhs.true.74
  %arrayidx80 = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 2
  %50 = load float, float* %arrayidx80, align 4, !tbaa !63
  %conv81 = fpext float %50 to double
  %mul82 = fmul double %conv81, 2.550000e+02
  %conv83 = fptoui double %mul82 to i8
  %conv84 = zext i8 %conv83 to i32
  br label %cond.end.91

cond.false.85:                                    ; preds = %land.lhs.true.74, %sw.bb.69
  %arrayidx86 = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 2
  %51 = load float, float* %arrayidx86, align 4, !tbaa !63
  %conv87 = fpext float %51 to double
  %cmp88 = fcmp ole double %conv87, 0.000000e+00
  %cond90 = select i1 %cmp88, i32 0, i32 255
  br label %cond.end.91

cond.end.91:                                      ; preds = %cond.false.85, %cond.true.79
  %cond92 = phi i32 [ %conv84, %cond.true.79 ], [ %cond90, %cond.false.85 ]
  %conv93 = trunc i32 %cond92 to i8
  %52 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %arrayidx94 = getelementptr inbounds i8, i8* %52, i64 2
  store i8 %conv93, i8* %arrayidx94, align 1, !tbaa !11
  br label %sw.bb.95

sw.bb.95:                                         ; preds = %if.then, %cond.end.91
  %arrayidx96 = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 1
  %53 = load float, float* %arrayidx96, align 4, !tbaa !63
  %conv97 = fpext float %53 to double
  %cmp98 = fcmp olt double 0.000000e+00, %conv97
  br i1 %cmp98, label %land.lhs.true.100, label %cond.false.111

land.lhs.true.100:                                ; preds = %sw.bb.95
  %arrayidx101 = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 1
  %54 = load float, float* %arrayidx101, align 4, !tbaa !63
  %conv102 = fpext float %54 to double
  %cmp103 = fcmp olt double %conv102, 1.000000e+00
  br i1 %cmp103, label %cond.true.105, label %cond.false.111

cond.true.105:                                    ; preds = %land.lhs.true.100
  %arrayidx106 = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 1
  %55 = load float, float* %arrayidx106, align 4, !tbaa !63
  %conv107 = fpext float %55 to double
  %mul108 = fmul double %conv107, 2.550000e+02
  %conv109 = fptoui double %mul108 to i8
  %conv110 = zext i8 %conv109 to i32
  br label %cond.end.117

cond.false.111:                                   ; preds = %land.lhs.true.100, %sw.bb.95
  %arrayidx112 = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 1
  %56 = load float, float* %arrayidx112, align 4, !tbaa !63
  %conv113 = fpext float %56 to double
  %cmp114 = fcmp ole double %conv113, 0.000000e+00
  %cond116 = select i1 %cmp114, i32 0, i32 255
  br label %cond.end.117

cond.end.117:                                     ; preds = %cond.false.111, %cond.true.105
  %cond118 = phi i32 [ %conv110, %cond.true.105 ], [ %cond116, %cond.false.111 ]
  %conv119 = trunc i32 %cond118 to i8
  %57 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %arrayidx120 = getelementptr inbounds i8, i8* %57, i64 1
  store i8 %conv119, i8* %arrayidx120, align 1, !tbaa !11
  br label %sw.bb.121

sw.bb.121:                                        ; preds = %if.then, %cond.end.117
  %arrayidx122 = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 0
  %58 = load float, float* %arrayidx122, align 4, !tbaa !63
  %conv123 = fpext float %58 to double
  %cmp124 = fcmp olt double 0.000000e+00, %conv123
  br i1 %cmp124, label %land.lhs.true.126, label %cond.false.137

land.lhs.true.126:                                ; preds = %sw.bb.121
  %arrayidx127 = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 0
  %59 = load float, float* %arrayidx127, align 4, !tbaa !63
  %conv128 = fpext float %59 to double
  %cmp129 = fcmp olt double %conv128, 1.000000e+00
  br i1 %cmp129, label %cond.true.131, label %cond.false.137

cond.true.131:                                    ; preds = %land.lhs.true.126
  %arrayidx132 = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 0
  %60 = load float, float* %arrayidx132, align 4, !tbaa !63
  %conv133 = fpext float %60 to double
  %mul134 = fmul double %conv133, 2.550000e+02
  %conv135 = fptoui double %mul134 to i8
  %conv136 = zext i8 %conv135 to i32
  br label %cond.end.143

cond.false.137:                                   ; preds = %land.lhs.true.126, %sw.bb.121
  %arrayidx138 = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 0
  %61 = load float, float* %arrayidx138, align 4, !tbaa !63
  %conv139 = fpext float %61 to double
  %cmp140 = fcmp ole double %conv139, 0.000000e+00
  %cond142 = select i1 %cmp140, i32 0, i32 255
  br label %cond.end.143

cond.end.143:                                     ; preds = %cond.false.137, %cond.true.131
  %cond144 = phi i32 [ %conv136, %cond.true.131 ], [ %cond142, %cond.false.137 ]
  %conv145 = trunc i32 %cond144 to i8
  %62 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %arrayidx146 = getelementptr inbounds i8, i8* %62, i64 0
  store i8 %conv145, i8* %arrayidx146, align 1, !tbaa !11
  br label %sw.epilog

sw.epilog:                                        ; preds = %cond.end.143, %for.end
  %63 = load i32, i32* %ok, align 4, !tbaa !5
  store i32 %63, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %64 = bitcast i32* %ok to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #1
  %65 = bitcast [64 x float]* %values to i8*
  call void @llvm.lifetime.end(i64 256, i8* %65) #1
  br label %cleanup

if.else:                                          ; preds = %cond.end.13
  %66 = bitcast i8** %pcomp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %66) #1
  %67 = load %struct.gs_indexed_params_s*, %struct.gs_indexed_params_s** %pip, align 8, !tbaa !1
  %lookup147 = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %67, i32 0, i32 2
  %table = bitcast %union.anon.6* %lookup147 to %struct.gs_const_string_s*
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %table, i32 0, i32 0
  %68 = load i8*, i8** %data, align 8, !tbaa !73
  %69 = load i32, i32* %m, align 4, !tbaa !5
  %70 = load i32, i32* %index, align 4, !tbaa !5
  %mul148 = mul nsw i32 %69, %70
  %idx.ext = sext i32 %mul148 to i64
  %add.ptr = getelementptr inbounds i8, i8* %68, i64 %idx.ext
  store i8* %add.ptr, i8** %pcomp, align 8, !tbaa !1
  %71 = load i32, i32* %m, align 4, !tbaa !5
  switch i32 %71, label %sw.default.149 [
    i32 4, label %sw.bb.162
    i32 3, label %sw.bb.165
    i32 2, label %sw.bb.168
    i32 1, label %sw.bb.171
  ]

sw.default.149:                                   ; preds = %if.else
  %72 = bitcast i32* %i150 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %72) #1
  store i32 0, i32* %i150, align 4, !tbaa !5
  br label %for.cond.151

for.cond.151:                                     ; preds = %for.inc.159, %sw.default.149
  %73 = load i32, i32* %i150, align 4, !tbaa !5
  %74 = load i32, i32* %m, align 4, !tbaa !5
  %cmp152 = icmp slt i32 %73, %74
  br i1 %cmp152, label %for.body.154, label %for.end.161

for.body.154:                                     ; preds = %for.cond.151
  %75 = load i32, i32* %i150, align 4, !tbaa !5
  %idxprom155 = sext i32 %75 to i64
  %76 = load i8*, i8** %pcomp, align 8, !tbaa !1
  %arrayidx156 = getelementptr inbounds i8, i8* %76, i64 %idxprom155
  %77 = load i8, i8* %arrayidx156, align 1, !tbaa !11
  %78 = load i32, i32* %i150, align 4, !tbaa !5
  %idxprom157 = sext i32 %78 to i64
  %79 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %arrayidx158 = getelementptr inbounds i8, i8* %79, i64 %idxprom157
  store i8 %77, i8* %arrayidx158, align 1, !tbaa !11
  br label %for.inc.159

for.inc.159:                                      ; preds = %for.body.154
  %80 = load i32, i32* %i150, align 4, !tbaa !5
  %inc160 = add nsw i32 %80, 1
  store i32 %inc160, i32* %i150, align 4, !tbaa !5
  br label %for.cond.151

for.end.161:                                      ; preds = %for.cond.151
  %81 = bitcast i32* %i150 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %81) #1
  br label %sw.epilog.174

sw.bb.162:                                        ; preds = %if.else
  %82 = load i8*, i8** %pcomp, align 8, !tbaa !1
  %arrayidx163 = getelementptr inbounds i8, i8* %82, i64 3
  %83 = load i8, i8* %arrayidx163, align 1, !tbaa !11
  %84 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %arrayidx164 = getelementptr inbounds i8, i8* %84, i64 3
  store i8 %83, i8* %arrayidx164, align 1, !tbaa !11
  br label %sw.bb.165

sw.bb.165:                                        ; preds = %if.else, %sw.bb.162
  %85 = load i8*, i8** %pcomp, align 8, !tbaa !1
  %arrayidx166 = getelementptr inbounds i8, i8* %85, i64 2
  %86 = load i8, i8* %arrayidx166, align 1, !tbaa !11
  %87 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %arrayidx167 = getelementptr inbounds i8, i8* %87, i64 2
  store i8 %86, i8* %arrayidx167, align 1, !tbaa !11
  br label %sw.bb.168

sw.bb.168:                                        ; preds = %if.else, %sw.bb.165
  %88 = load i8*, i8** %pcomp, align 8, !tbaa !1
  %arrayidx169 = getelementptr inbounds i8, i8* %88, i64 1
  %89 = load i8, i8* %arrayidx169, align 1, !tbaa !11
  %90 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %arrayidx170 = getelementptr inbounds i8, i8* %90, i64 1
  store i8 %89, i8* %arrayidx170, align 1, !tbaa !11
  br label %sw.bb.171

sw.bb.171:                                        ; preds = %if.else, %sw.bb.168
  %91 = load i8*, i8** %pcomp, align 8, !tbaa !1
  %arrayidx172 = getelementptr inbounds i8, i8* %91, i64 0
  %92 = load i8, i8* %arrayidx172, align 1, !tbaa !11
  %93 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %arrayidx173 = getelementptr inbounds i8, i8* %93, i64 0
  store i8 %92, i8* %arrayidx173, align 1, !tbaa !11
  br label %sw.epilog.174

sw.epilog.174:                                    ; preds = %sw.bb.171, %for.end.161
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %94 = bitcast i8** %pcomp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %94) #1
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog.174, %sw.epilog
  %95 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %95) #1
  %96 = bitcast i32* %m to i8*
  call void @llvm.lifetime.end(i64 4, i8* %96) #1
  %97 = bitcast %struct.gs_color_space_s** %pbcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %97) #1
  %98 = bitcast %struct.gs_indexed_params_s** %pip to i8*
  call void @llvm.lifetime.end(i64 8, i8* %98) #1
  %99 = load i32, i32* %retval
  ret i32 %99
}

; Function Attrs: nounwind uwtable
define i32 @gs_cspace_indexed_lookup_frac(%struct.gs_color_space_s* %pcs, float %index_float, i16* %output) #0 {
entry:
  %retval = alloca i32, align 4
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %index_float.addr = alloca float, align 4
  %output.addr = alloca i16*, align 8
  %pip = alloca %struct.gs_indexed_params_s*, align 8
  %pbcs = alloca %struct.gs_color_space_s*, align 8
  %m = alloca i32, align 4
  %index = alloca i32, align 4
  %values = alloca [64 x float], align 16
  %ok = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %pcomp = alloca i8*, align 8
  %i52 = alloca i32, align 4
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store float %index_float, float* %index_float.addr, align 4, !tbaa !63
  store i16* %output, i16** %output.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_indexed_params_s** %pip to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %1, i32 0, i32 7
  %indexed = bitcast %union.anon* %params to %struct.gs_indexed_params_s*
  store %struct.gs_indexed_params_s* %indexed, %struct.gs_indexed_params_s** %pip, align 8, !tbaa !1
  %2 = bitcast %struct.gs_color_space_s** %pbcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %base_space = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %3, i32 0, i32 3
  %4 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space, align 8, !tbaa !49
  store %struct.gs_color_space_s* %4, %struct.gs_color_space_s** %pbcs, align 8, !tbaa !1
  %5 = bitcast i32* %m to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pbcs, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %6, i32 0, i32 0
  %7 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !32
  %num_components = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %7, i32 0, i32 4
  %8 = load i32 (%struct.gs_color_space_s*)*, i32 (%struct.gs_color_space_s*)** %num_components, align 8, !tbaa !50
  %9 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pbcs, align 8, !tbaa !1
  %call = call i32 %8(%struct.gs_color_space_s* %9) #4
  store i32 %call, i32* %m, align 4, !tbaa !5
  %10 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load float, float* %index_float.addr, align 4, !tbaa !63
  %conv = fpext float %11 to double
  %cmp = fcmp olt double %conv, 0.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end.13

cond.false:                                       ; preds = %entry
  %12 = load float, float* %index_float.addr, align 4, !tbaa !63
  %13 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params2 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %13, i32 0, i32 7
  %indexed3 = bitcast %union.anon* %params2 to %struct.gs_indexed_params_s*
  %hival = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %indexed3, i32 0, i32 0
  %14 = load i32, i32* %hival, align 4, !tbaa !64
  %conv4 = sitofp i32 %14 to float
  %cmp5 = fcmp oge float %12, %conv4
  br i1 %cmp5, label %cond.true.7, label %cond.false.11

cond.true.7:                                      ; preds = %cond.false
  %15 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params8 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %15, i32 0, i32 7
  %indexed9 = bitcast %union.anon* %params8 to %struct.gs_indexed_params_s*
  %hival10 = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %indexed9, i32 0, i32 0
  %16 = load i32, i32* %hival10, align 4, !tbaa !64
  br label %cond.end

cond.false.11:                                    ; preds = %cond.false
  %17 = load float, float* %index_float.addr, align 4, !tbaa !63
  %conv12 = fptosi float %17 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false.11, %cond.true.7
  %cond = phi i32 [ %16, %cond.true.7 ], [ %conv12, %cond.false.11 ]
  br label %cond.end.13

cond.end.13:                                      ; preds = %cond.end, %cond.true
  %cond14 = phi i32 [ 0, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond14, i32* %index, align 4, !tbaa !5
  %18 = load %struct.gs_indexed_params_s*, %struct.gs_indexed_params_s** %pip, align 8, !tbaa !1
  %use_proc = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %18, i32 0, i32 3
  %19 = load i32, i32* %use_proc, align 4, !tbaa !72
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end.13
  %20 = bitcast [64 x float]* %values to i8*
  call void @llvm.lifetime.start(i64 256, i8* %20) #1
  %21 = bitcast i32* %ok to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = load %struct.gs_indexed_params_s*, %struct.gs_indexed_params_s** %pip, align 8, !tbaa !1
  %lookup = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %22, i32 0, i32 2
  %map = bitcast %union.anon.6* %lookup to %struct.gs_indexed_map_s**
  %23 = load %struct.gs_indexed_map_s*, %struct.gs_indexed_map_s** %map, align 8, !tbaa !1
  %proc = getelementptr inbounds %struct.gs_indexed_map_s, %struct.gs_indexed_map_s* %23, i32 0, i32 1
  %lookup_index = bitcast %union.anon.7* %proc to i32 (%struct.gs_color_space_s*, i32, float*)**
  %24 = load i32 (%struct.gs_color_space_s*, i32, float*)*, i32 (%struct.gs_color_space_s*, i32, float*)** %lookup_index, align 8, !tbaa !1
  %25 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %26 = load i32, i32* %index, align 4, !tbaa !5
  %arraydecay = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i32 0
  %call15 = call i32 %24(%struct.gs_color_space_s* %25, i32 %26, float* %arraydecay) #4
  store i32 %call15, i32* %ok, align 4, !tbaa !5
  %27 = load i32, i32* %m, align 4, !tbaa !5
  switch i32 %27, label %sw.default [
    i32 4, label %sw.bb
    i32 3, label %sw.bb.28
    i32 2, label %sw.bb.35
    i32 1, label %sw.bb.42
  ]

sw.default:                                       ; preds = %if.then
  %28 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.default
  %29 = load i32, i32* %i, align 4, !tbaa !5
  %30 = load i32, i32* %m, align 4, !tbaa !5
  %cmp16 = icmp slt i32 %29, %30
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %31 to i64
  %arrayidx = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 %idxprom
  %32 = load float, float* %arrayidx, align 4, !tbaa !63
  %conv18 = fpext float %32 to double
  %add = fadd double %conv18, 0x3EF0010010010010
  %mul = fmul double %add, 3.276000e+04
  %conv19 = fptosi double %mul to i16
  %33 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom20 = sext i32 %33 to i64
  %34 = load i16*, i16** %output.addr, align 8, !tbaa !1
  %arrayidx21 = getelementptr inbounds i16, i16* %34, i64 %idxprom20
  store i16 %conv19, i16* %arrayidx21, align 2, !tbaa !83
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %35 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %36 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  br label %sw.epilog

sw.bb:                                            ; preds = %if.then
  %arrayidx22 = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 3
  %37 = load float, float* %arrayidx22, align 4, !tbaa !63
  %conv23 = fpext float %37 to double
  %add24 = fadd double %conv23, 0x3EF0010010010010
  %mul25 = fmul double %add24, 3.276000e+04
  %conv26 = fptosi double %mul25 to i16
  %38 = load i16*, i16** %output.addr, align 8, !tbaa !1
  %arrayidx27 = getelementptr inbounds i16, i16* %38, i64 3
  store i16 %conv26, i16* %arrayidx27, align 2, !tbaa !83
  br label %sw.bb.28

sw.bb.28:                                         ; preds = %if.then, %sw.bb
  %arrayidx29 = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 2
  %39 = load float, float* %arrayidx29, align 4, !tbaa !63
  %conv30 = fpext float %39 to double
  %add31 = fadd double %conv30, 0x3EF0010010010010
  %mul32 = fmul double %add31, 3.276000e+04
  %conv33 = fptosi double %mul32 to i16
  %40 = load i16*, i16** %output.addr, align 8, !tbaa !1
  %arrayidx34 = getelementptr inbounds i16, i16* %40, i64 2
  store i16 %conv33, i16* %arrayidx34, align 2, !tbaa !83
  br label %sw.bb.35

sw.bb.35:                                         ; preds = %if.then, %sw.bb.28
  %arrayidx36 = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 1
  %41 = load float, float* %arrayidx36, align 4, !tbaa !63
  %conv37 = fpext float %41 to double
  %add38 = fadd double %conv37, 0x3EF0010010010010
  %mul39 = fmul double %add38, 3.276000e+04
  %conv40 = fptosi double %mul39 to i16
  %42 = load i16*, i16** %output.addr, align 8, !tbaa !1
  %arrayidx41 = getelementptr inbounds i16, i16* %42, i64 1
  store i16 %conv40, i16* %arrayidx41, align 2, !tbaa !83
  br label %sw.bb.42

sw.bb.42:                                         ; preds = %if.then, %sw.bb.35
  %arrayidx43 = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 0
  %43 = load float, float* %arrayidx43, align 4, !tbaa !63
  %conv44 = fpext float %43 to double
  %add45 = fadd double %conv44, 0x3EF0010010010010
  %mul46 = fmul double %add45, 3.276000e+04
  %conv47 = fptosi double %mul46 to i16
  %44 = load i16*, i16** %output.addr, align 8, !tbaa !1
  %arrayidx48 = getelementptr inbounds i16, i16* %44, i64 0
  store i16 %conv47, i16* %arrayidx48, align 2, !tbaa !83
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.42, %for.end
  %45 = load i32, i32* %ok, align 4, !tbaa !5
  store i32 %45, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %46 = bitcast i32* %ok to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #1
  %47 = bitcast [64 x float]* %values to i8*
  call void @llvm.lifetime.end(i64 256, i8* %47) #1
  br label %cleanup

if.else:                                          ; preds = %cond.end.13
  %48 = bitcast i8** %pcomp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %48) #1
  %49 = load %struct.gs_indexed_params_s*, %struct.gs_indexed_params_s** %pip, align 8, !tbaa !1
  %lookup49 = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %49, i32 0, i32 2
  %table = bitcast %union.anon.6* %lookup49 to %struct.gs_const_string_s*
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %table, i32 0, i32 0
  %50 = load i8*, i8** %data, align 8, !tbaa !73
  %51 = load i32, i32* %m, align 4, !tbaa !5
  %52 = load i32, i32* %index, align 4, !tbaa !5
  %mul50 = mul nsw i32 %51, %52
  %idx.ext = sext i32 %mul50 to i64
  %add.ptr = getelementptr inbounds i8, i8* %50, i64 %idx.ext
  store i8* %add.ptr, i8** %pcomp, align 8, !tbaa !1
  %53 = load i32, i32* %m, align 4, !tbaa !5
  switch i32 %53, label %sw.default.51 [
    i32 4, label %sw.bb.75
    i32 3, label %sw.bb.90
    i32 2, label %sw.bb.105
    i32 1, label %sw.bb.120
  ]

sw.default.51:                                    ; preds = %if.else
  %54 = bitcast i32* %i52 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %54) #1
  store i32 0, i32* %i52, align 4, !tbaa !5
  br label %for.cond.53

for.cond.53:                                      ; preds = %for.inc.72, %sw.default.51
  %55 = load i32, i32* %i52, align 4, !tbaa !5
  %56 = load i32, i32* %m, align 4, !tbaa !5
  %cmp54 = icmp slt i32 %55, %56
  br i1 %cmp54, label %for.body.56, label %for.end.74

for.body.56:                                      ; preds = %for.cond.53
  %57 = load i32, i32* %i52, align 4, !tbaa !5
  %idxprom57 = sext i32 %57 to i64
  %58 = load i8*, i8** %pcomp, align 8, !tbaa !1
  %arrayidx58 = getelementptr inbounds i8, i8* %58, i64 %idxprom57
  %59 = load i8, i8* %arrayidx58, align 1, !tbaa !11
  %conv59 = zext i8 %59 to i16
  %conv60 = sext i16 %conv59 to i32
  %shl = shl i32 %conv60, 7
  %60 = load i32, i32* %i52, align 4, !tbaa !5
  %idxprom61 = sext i32 %60 to i64
  %61 = load i8*, i8** %pcomp, align 8, !tbaa !1
  %arrayidx62 = getelementptr inbounds i8, i8* %61, i64 %idxprom61
  %62 = load i8, i8* %arrayidx62, align 1, !tbaa !11
  %conv63 = zext i8 %62 to i32
  %shr = ashr i32 %conv63, 1
  %add64 = add nsw i32 %shl, %shr
  %63 = load i32, i32* %i52, align 4, !tbaa !5
  %idxprom65 = sext i32 %63 to i64
  %64 = load i8*, i8** %pcomp, align 8, !tbaa !1
  %arrayidx66 = getelementptr inbounds i8, i8* %64, i64 %idxprom65
  %65 = load i8, i8* %arrayidx66, align 1, !tbaa !11
  %conv67 = zext i8 %65 to i32
  %shr68 = ashr i32 %conv67, 5
  %sub = sub nsw i32 %add64, %shr68
  %conv69 = trunc i32 %sub to i16
  %66 = load i32, i32* %i52, align 4, !tbaa !5
  %idxprom70 = sext i32 %66 to i64
  %67 = load i16*, i16** %output.addr, align 8, !tbaa !1
  %arrayidx71 = getelementptr inbounds i16, i16* %67, i64 %idxprom70
  store i16 %conv69, i16* %arrayidx71, align 2, !tbaa !83
  br label %for.inc.72

for.inc.72:                                       ; preds = %for.body.56
  %68 = load i32, i32* %i52, align 4, !tbaa !5
  %inc73 = add nsw i32 %68, 1
  store i32 %inc73, i32* %i52, align 4, !tbaa !5
  br label %for.cond.53

for.end.74:                                       ; preds = %for.cond.53
  %69 = bitcast i32* %i52 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #1
  br label %sw.epilog.135

sw.bb.75:                                         ; preds = %if.else
  %70 = load i8*, i8** %pcomp, align 8, !tbaa !1
  %arrayidx76 = getelementptr inbounds i8, i8* %70, i64 3
  %71 = load i8, i8* %arrayidx76, align 1, !tbaa !11
  %conv77 = zext i8 %71 to i16
  %conv78 = sext i16 %conv77 to i32
  %shl79 = shl i32 %conv78, 7
  %72 = load i8*, i8** %pcomp, align 8, !tbaa !1
  %arrayidx80 = getelementptr inbounds i8, i8* %72, i64 3
  %73 = load i8, i8* %arrayidx80, align 1, !tbaa !11
  %conv81 = zext i8 %73 to i32
  %shr82 = ashr i32 %conv81, 1
  %add83 = add nsw i32 %shl79, %shr82
  %74 = load i8*, i8** %pcomp, align 8, !tbaa !1
  %arrayidx84 = getelementptr inbounds i8, i8* %74, i64 3
  %75 = load i8, i8* %arrayidx84, align 1, !tbaa !11
  %conv85 = zext i8 %75 to i32
  %shr86 = ashr i32 %conv85, 5
  %sub87 = sub nsw i32 %add83, %shr86
  %conv88 = trunc i32 %sub87 to i16
  %76 = load i16*, i16** %output.addr, align 8, !tbaa !1
  %arrayidx89 = getelementptr inbounds i16, i16* %76, i64 3
  store i16 %conv88, i16* %arrayidx89, align 2, !tbaa !83
  br label %sw.bb.90

sw.bb.90:                                         ; preds = %if.else, %sw.bb.75
  %77 = load i8*, i8** %pcomp, align 8, !tbaa !1
  %arrayidx91 = getelementptr inbounds i8, i8* %77, i64 2
  %78 = load i8, i8* %arrayidx91, align 1, !tbaa !11
  %conv92 = zext i8 %78 to i16
  %conv93 = sext i16 %conv92 to i32
  %shl94 = shl i32 %conv93, 7
  %79 = load i8*, i8** %pcomp, align 8, !tbaa !1
  %arrayidx95 = getelementptr inbounds i8, i8* %79, i64 2
  %80 = load i8, i8* %arrayidx95, align 1, !tbaa !11
  %conv96 = zext i8 %80 to i32
  %shr97 = ashr i32 %conv96, 1
  %add98 = add nsw i32 %shl94, %shr97
  %81 = load i8*, i8** %pcomp, align 8, !tbaa !1
  %arrayidx99 = getelementptr inbounds i8, i8* %81, i64 2
  %82 = load i8, i8* %arrayidx99, align 1, !tbaa !11
  %conv100 = zext i8 %82 to i32
  %shr101 = ashr i32 %conv100, 5
  %sub102 = sub nsw i32 %add98, %shr101
  %conv103 = trunc i32 %sub102 to i16
  %83 = load i16*, i16** %output.addr, align 8, !tbaa !1
  %arrayidx104 = getelementptr inbounds i16, i16* %83, i64 2
  store i16 %conv103, i16* %arrayidx104, align 2, !tbaa !83
  br label %sw.bb.105

sw.bb.105:                                        ; preds = %if.else, %sw.bb.90
  %84 = load i8*, i8** %pcomp, align 8, !tbaa !1
  %arrayidx106 = getelementptr inbounds i8, i8* %84, i64 1
  %85 = load i8, i8* %arrayidx106, align 1, !tbaa !11
  %conv107 = zext i8 %85 to i16
  %conv108 = sext i16 %conv107 to i32
  %shl109 = shl i32 %conv108, 7
  %86 = load i8*, i8** %pcomp, align 8, !tbaa !1
  %arrayidx110 = getelementptr inbounds i8, i8* %86, i64 1
  %87 = load i8, i8* %arrayidx110, align 1, !tbaa !11
  %conv111 = zext i8 %87 to i32
  %shr112 = ashr i32 %conv111, 1
  %add113 = add nsw i32 %shl109, %shr112
  %88 = load i8*, i8** %pcomp, align 8, !tbaa !1
  %arrayidx114 = getelementptr inbounds i8, i8* %88, i64 1
  %89 = load i8, i8* %arrayidx114, align 1, !tbaa !11
  %conv115 = zext i8 %89 to i32
  %shr116 = ashr i32 %conv115, 5
  %sub117 = sub nsw i32 %add113, %shr116
  %conv118 = trunc i32 %sub117 to i16
  %90 = load i16*, i16** %output.addr, align 8, !tbaa !1
  %arrayidx119 = getelementptr inbounds i16, i16* %90, i64 1
  store i16 %conv118, i16* %arrayidx119, align 2, !tbaa !83
  br label %sw.bb.120

sw.bb.120:                                        ; preds = %if.else, %sw.bb.105
  %91 = load i8*, i8** %pcomp, align 8, !tbaa !1
  %arrayidx121 = getelementptr inbounds i8, i8* %91, i64 0
  %92 = load i8, i8* %arrayidx121, align 1, !tbaa !11
  %conv122 = zext i8 %92 to i16
  %conv123 = sext i16 %conv122 to i32
  %shl124 = shl i32 %conv123, 7
  %93 = load i8*, i8** %pcomp, align 8, !tbaa !1
  %arrayidx125 = getelementptr inbounds i8, i8* %93, i64 0
  %94 = load i8, i8* %arrayidx125, align 1, !tbaa !11
  %conv126 = zext i8 %94 to i32
  %shr127 = ashr i32 %conv126, 1
  %add128 = add nsw i32 %shl124, %shr127
  %95 = load i8*, i8** %pcomp, align 8, !tbaa !1
  %arrayidx129 = getelementptr inbounds i8, i8* %95, i64 0
  %96 = load i8, i8* %arrayidx129, align 1, !tbaa !11
  %conv130 = zext i8 %96 to i32
  %shr131 = ashr i32 %conv130, 5
  %sub132 = sub nsw i32 %add128, %shr131
  %conv133 = trunc i32 %sub132 to i16
  %97 = load i16*, i16** %output.addr, align 8, !tbaa !1
  %arrayidx134 = getelementptr inbounds i16, i16* %97, i64 0
  store i16 %conv133, i16* %arrayidx134, align 2, !tbaa !83
  br label %sw.epilog.135

sw.epilog.135:                                    ; preds = %sw.bb.120, %for.end.74
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %98 = bitcast i8** %pcomp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %98) #1
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog.135, %sw.epilog
  %99 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %99) #1
  %100 = bitcast i32* %m to i8*
  call void @llvm.lifetime.end(i64 4, i8* %100) #1
  %101 = bitcast %struct.gs_color_space_s** %pbcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %101) #1
  %102 = bitcast %struct.gs_indexed_params_s** %pip to i8*
  call void @llvm.lifetime.end(i64 8, i8* %102) #1
  %103 = load i32, i32* %retval
  ret i32 %103
}

; Function Attrs: nounwind uwtable
define i32 @gs_indexed_limit_and_lookup(%struct.gs_client_color_s* %pc, %struct.gs_color_space_s* %pcs, %struct.gs_client_color_s* %pcc) #0 {
entry:
  %pc.addr = alloca %struct.gs_client_color_s*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pcc.addr = alloca %struct.gs_client_color_s*, align 8
  %value = alloca float, align 4
  %index = alloca i32, align 4
  store %struct.gs_client_color_s* %pc, %struct.gs_client_color_s** %pc.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gs_client_color_s* %pcc, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %0 = bitcast float* %value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pc.addr, align 8, !tbaa !1
  %paint = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %1, i32 0, i32 1
  %values = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint, i32 0, i32 0
  %arrayidx = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 0
  %2 = load float, float* %arrayidx, align 4, !tbaa !63
  %conv = fpext float %2 to double
  %add = fadd double %conv, 1.000000e-03
  %conv1 = fptrunc double %add to float
  store float %conv1, float* %value, align 4, !tbaa !63
  %3 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load float, float* %value, align 4, !tbaa !63
  %conv2 = fpext float %4 to double
  %cmp = fcmp olt double %conv2, 0.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end.13

cond.false:                                       ; preds = %entry
  %5 = load float, float* %value, align 4, !tbaa !63
  %6 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %6, i32 0, i32 7
  %indexed = bitcast %union.anon* %params to %struct.gs_indexed_params_s*
  %hival = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %indexed, i32 0, i32 0
  %7 = load i32, i32* %hival, align 4, !tbaa !64
  %conv4 = sitofp i32 %7 to float
  %cmp5 = fcmp oge float %5, %conv4
  br i1 %cmp5, label %cond.true.7, label %cond.false.11

cond.true.7:                                      ; preds = %cond.false
  %8 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params8 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %8, i32 0, i32 7
  %indexed9 = bitcast %union.anon* %params8 to %struct.gs_indexed_params_s*
  %hival10 = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %indexed9, i32 0, i32 0
  %9 = load i32, i32* %hival10, align 4, !tbaa !64
  br label %cond.end

cond.false.11:                                    ; preds = %cond.false
  %10 = load float, float* %value, align 4, !tbaa !63
  %conv12 = fptosi float %10 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false.11, %cond.true.7
  %cond = phi i32 [ %9, %cond.true.7 ], [ %conv12, %cond.false.11 ]
  br label %cond.end.13

cond.end.13:                                      ; preds = %cond.end, %cond.true
  %cond14 = phi i32 [ 0, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond14, i32* %index, align 4, !tbaa !5
  %11 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %12 = load i32, i32* %index, align 4, !tbaa !5
  %13 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %call = call i32 @gs_cspace_indexed_lookup(%struct.gs_color_space_s* %11, i32 %12, %struct.gs_client_color_s* %13) #4
  %14 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #1
  %15 = bitcast float* %value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #1
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gs_includecolorspace(%struct.gs_state_s* %pgs, i8* %res_name, i32 %name_length) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %res_name.addr = alloca i8*, align 8
  %name_length.addr = alloca i32, align 4
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store i8* %res_name, i8** %res_name.addr, align 8, !tbaa !1
  store i32 %name_length, i32* %name_length.addr, align 4, !tbaa !5
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 78
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %device, align 8, !tbaa !84
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 42
  %include_color_space = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 55
  %2 = load i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)** %include_color_space, align 8, !tbaa !85
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device1 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %3, i32 0, i32 78
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %device1, align 8, !tbaa !84
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %5, i32 0, i32 69
  %arrayidx = getelementptr inbounds [2 x %struct.anon.10], [2 x %struct.anon.10]* %color, i32 0, i64 0
  %color_space = getelementptr inbounds %struct.anon.10, %struct.anon.10* %arrayidx, i32 0, i32 0
  %6 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %color_space, align 8, !tbaa !7
  %7 = load i8*, i8** %res_name.addr, align 8, !tbaa !1
  %8 = load i32, i32* %name_length.addr, align 4, !tbaa !5
  %call = call i32 %2(%struct.gx_device_s* %4, %struct.gs_color_space_s* %6, i8* %7, i32 %8) #4
  ret i32 %call
}

declare %struct.gs_ptr_procs_s* @basic_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #2

declare void @basic_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #2

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @cs_Indexed_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %retval = alloca %struct.gs_ptr_procs_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %pcs = alloca %struct.gs_color_space_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_color_space_s*
  store %struct.gs_color_space_s* %2, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %3 = load i32, i32* %index.addr, align 4, !tbaa !5
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
  ]

sw.default:                                       ; preds = %entry
  store %struct.gs_ptr_procs_s* null, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %4 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %4, i32 0, i32 7
  %indexed = bitcast %union.anon* %params to %struct.gs_indexed_params_s*
  %use_proc = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %indexed, i32 0, i32 3
  %5 = load i32, i32* %use_proc, align 4, !tbaa !72
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  %6 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %params1 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %6, i32 0, i32 7
  %indexed2 = bitcast %union.anon* %params1 to %struct.gs_indexed_params_s*
  %lookup = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %indexed2, i32 0, i32 2
  %map = bitcast %union.anon.6* %lookup to %struct.gs_indexed_map_s**
  %7 = load %struct.gs_indexed_map_s*, %struct.gs_indexed_map_s** %map, align 8, !tbaa !1
  %8 = bitcast %struct.gs_indexed_map_s* %7 to i8*
  %9 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %9, i32 0, i32 0
  store i8* %8, i8** %ptr, align 8, !tbaa !95
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %sw.bb
  %10 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %params3 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %10, i32 0, i32 7
  %indexed4 = bitcast %union.anon* %params3 to %struct.gs_indexed_params_s*
  %lookup5 = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %indexed4, i32 0, i32 2
  %table = bitcast %union.anon.6* %lookup5 to %struct.gs_const_string_s*
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %table, i32 0, i32 0
  %11 = load i8*, i8** %data, align 8, !tbaa !73
  %12 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr6 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %12, i32 0, i32 0
  store i8* %11, i8** %ptr6, align 8, !tbaa !95
  %13 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %call = call i32 @indexed_table_size(%struct.gs_color_space_s* %13) #4
  %14 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %size7 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %14, i32 0, i32 1
  store i32 %call, i32* %size7, align 4, !tbaa !97
  store %struct.gs_ptr_procs_s* @ptr_const_string_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then, %sw.default
  %15 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  %16 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %16
}

; Function Attrs: nounwind uwtable
define internal void @cs_Indexed_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %pcs = alloca %struct.gs_color_space_s*, align 8
  %table = alloca %struct.gs_const_string_s, align 8
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_color_space_s*
  store %struct.gs_color_space_s* %2, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %3 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %3, i32 0, i32 7
  %indexed = bitcast %union.anon* %params to %struct.gs_indexed_params_s*
  %use_proc = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %indexed, i32 0, i32 3
  %4 = load i32, i32* %use_proc, align 4, !tbaa !72
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %6 = bitcast %struct.gc_state_s* %5 to %struct.gc_procs_common_s**
  %7 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %6, align 8, !tbaa !1
  %reloc_struct_ptr = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %7, i32 0, i32 0
  %8 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr, align 8, !tbaa !98
  %9 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %10 = bitcast i8* %9 to %struct.gs_color_space_s*
  %params1 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %10, i32 0, i32 7
  %indexed2 = bitcast %union.anon* %params1 to %struct.gs_indexed_params_s*
  %lookup = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %indexed2, i32 0, i32 2
  %map = bitcast %union.anon.6* %lookup to %struct.gs_indexed_map_s**
  %11 = load %struct.gs_indexed_map_s*, %struct.gs_indexed_map_s** %map, align 8, !tbaa !1
  %12 = bitcast %struct.gs_indexed_map_s* %11 to i8*
  %13 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call i8* %8(i8* %12, %struct.gc_state_s* %13) #4
  %14 = bitcast i8* %call to %struct.gs_indexed_map_s*
  %15 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %16 = bitcast i8* %15 to %struct.gs_color_space_s*
  %params3 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %16, i32 0, i32 7
  %indexed4 = bitcast %union.anon* %params3 to %struct.gs_indexed_params_s*
  %lookup5 = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %indexed4, i32 0, i32 2
  %map6 = bitcast %union.anon.6* %lookup5 to %struct.gs_indexed_map_s**
  store %struct.gs_indexed_map_s* %14, %struct.gs_indexed_map_s** %map6, align 8, !tbaa !1
  br label %if.end

if.else:                                          ; preds = %entry
  %17 = bitcast %struct.gs_const_string_s* %table to i8*
  call void @llvm.lifetime.start(i64 16, i8* %17) #1
  %18 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %params7 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %18, i32 0, i32 7
  %indexed8 = bitcast %union.anon* %params7 to %struct.gs_indexed_params_s*
  %lookup9 = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %indexed8, i32 0, i32 2
  %table10 = bitcast %union.anon.6* %lookup9 to %struct.gs_const_string_s*
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %table10, i32 0, i32 0
  %19 = load i8*, i8** %data, align 8, !tbaa !73
  %data11 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %table, i32 0, i32 0
  store i8* %19, i8** %data11, align 8, !tbaa !73
  %20 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %call12 = call i32 @indexed_table_size(%struct.gs_color_space_s* %20) #4
  %size13 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %table, i32 0, i32 1
  store i32 %call12, i32* %size13, align 4, !tbaa !77
  %21 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %22 = bitcast %struct.gc_state_s* %21 to %struct.gc_procs_common_s**
  %23 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %22, align 8, !tbaa !1
  %reloc_const_string = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %23, i32 0, i32 2
  %24 = load void (%struct.gs_const_string_s*, %struct.gc_state_s*)*, void (%struct.gs_const_string_s*, %struct.gc_state_s*)** %reloc_const_string, align 8, !tbaa !100
  %25 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %24(%struct.gs_const_string_s* %table, %struct.gc_state_s* %25) #4
  %data14 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %table, i32 0, i32 0
  %26 = load i8*, i8** %data14, align 8, !tbaa !73
  %27 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %params15 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %27, i32 0, i32 7
  %indexed16 = bitcast %union.anon* %params15 to %struct.gs_indexed_params_s*
  %lookup17 = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %indexed16, i32 0, i32 2
  %table18 = bitcast %union.anon.6* %lookup17 to %struct.gs_const_string_s*
  %data19 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %table18, i32 0, i32 0
  store i8* %26, i8** %data19, align 8, !tbaa !73
  %28 = bitcast %struct.gs_const_string_s* %table to i8*
  call void @llvm.lifetime.end(i64 16, i8* %28) #1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %29 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @indexed_table_size(%struct.gs_color_space_s* %pcs) #0 {
entry:
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %0, i32 0, i32 7
  %indexed = bitcast %union.anon* %params to %struct.gs_indexed_params_s*
  %hival = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %indexed, i32 0, i32 0
  %1 = load i32, i32* %hival, align 4, !tbaa !64
  %add = add nsw i32 %1, 1
  %2 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params1 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %2, i32 0, i32 7
  %indexed2 = bitcast %union.anon* %params1 to %struct.gs_indexed_params_s*
  %n_comps = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %indexed2, i32 0, i32 1
  %3 = load i32, i32* %n_comps, align 4, !tbaa !82
  %mul = mul nsw i32 %add, %3
  ret i32 %mul
}

declare i32 @gs_color_space_num_components(%struct.gs_color_space_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @map_palette_entry_1(%struct.gs_color_space_s* %pcs, i32 %indx, float* %values) #0 {
entry:
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %indx.addr = alloca i32, align 4
  %values.addr = alloca float*, align 8
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store i32 %indx, i32* %indx.addr, align 4, !tbaa !5
  store float* %values, float** %values.addr, align 8, !tbaa !1
  %0 = load i32, i32* %indx.addr, align 4, !tbaa !5
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %1, i32 0, i32 7
  %indexed = bitcast %union.anon* %params to %struct.gs_indexed_params_s*
  %lookup = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %indexed, i32 0, i32 2
  %map = bitcast %union.anon.6* %lookup to %struct.gs_indexed_map_s**
  %2 = load %struct.gs_indexed_map_s*, %struct.gs_indexed_map_s** %map, align 8, !tbaa !1
  %values1 = getelementptr inbounds %struct.gs_indexed_map_s, %struct.gs_indexed_map_s* %2, i32 0, i32 4
  %3 = load float*, float** %values1, align 8, !tbaa !51
  %arrayidx = getelementptr inbounds float, float* %3, i64 %idxprom
  %4 = load float, float* %arrayidx, align 4, !tbaa !63
  %5 = load float*, float** %values.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds float, float* %5, i64 0
  store float %4, float* %arrayidx2, align 4, !tbaa !63
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @map_palette_entry_3(%struct.gs_color_space_s* %pcs, i32 %indx, float* %values) #0 {
entry:
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %indx.addr = alloca i32, align 4
  %values.addr = alloca float*, align 8
  %pv = alloca float*, align 8
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store i32 %indx, i32* %indx.addr, align 4, !tbaa !5
  store float* %values, float** %values.addr, align 8, !tbaa !1
  %0 = bitcast float** %pv to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i32, i32* %indx.addr, align 4, !tbaa !5
  %mul = mul nsw i32 3, %1
  %idxprom = sext i32 %mul to i64
  %2 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %2, i32 0, i32 7
  %indexed = bitcast %union.anon* %params to %struct.gs_indexed_params_s*
  %lookup = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %indexed, i32 0, i32 2
  %map = bitcast %union.anon.6* %lookup to %struct.gs_indexed_map_s**
  %3 = load %struct.gs_indexed_map_s*, %struct.gs_indexed_map_s** %map, align 8, !tbaa !1
  %values1 = getelementptr inbounds %struct.gs_indexed_map_s, %struct.gs_indexed_map_s* %3, i32 0, i32 4
  %4 = load float*, float** %values1, align 8, !tbaa !51
  %arrayidx = getelementptr inbounds float, float* %4, i64 %idxprom
  store float* %arrayidx, float** %pv, align 8, !tbaa !1
  %5 = load float*, float** %pv, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds float, float* %5, i64 0
  %6 = load float, float* %arrayidx2, align 4, !tbaa !63
  %7 = load float*, float** %values.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds float, float* %7, i64 0
  store float %6, float* %arrayidx3, align 4, !tbaa !63
  %8 = load float*, float** %pv, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds float, float* %8, i64 1
  %9 = load float, float* %arrayidx4, align 4, !tbaa !63
  %10 = load float*, float** %values.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds float, float* %10, i64 1
  store float %9, float* %arrayidx5, align 4, !tbaa !63
  %11 = load float*, float** %pv, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds float, float* %11, i64 2
  %12 = load float, float* %arrayidx6, align 4, !tbaa !63
  %13 = load float*, float** %values.addr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds float, float* %13, i64 2
  store float %12, float* %arrayidx7, align 4, !tbaa !63
  %14 = bitcast float** %pv to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @map_palette_entry_4(%struct.gs_color_space_s* %pcs, i32 %indx, float* %values) #0 {
entry:
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %indx.addr = alloca i32, align 4
  %values.addr = alloca float*, align 8
  %pv = alloca float*, align 8
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store i32 %indx, i32* %indx.addr, align 4, !tbaa !5
  store float* %values, float** %values.addr, align 8, !tbaa !1
  %0 = bitcast float** %pv to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i32, i32* %indx.addr, align 4, !tbaa !5
  %mul = mul nsw i32 4, %1
  %idxprom = sext i32 %mul to i64
  %2 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %2, i32 0, i32 7
  %indexed = bitcast %union.anon* %params to %struct.gs_indexed_params_s*
  %lookup = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %indexed, i32 0, i32 2
  %map = bitcast %union.anon.6* %lookup to %struct.gs_indexed_map_s**
  %3 = load %struct.gs_indexed_map_s*, %struct.gs_indexed_map_s** %map, align 8, !tbaa !1
  %values1 = getelementptr inbounds %struct.gs_indexed_map_s, %struct.gs_indexed_map_s* %3, i32 0, i32 4
  %4 = load float*, float** %values1, align 8, !tbaa !51
  %arrayidx = getelementptr inbounds float, float* %4, i64 %idxprom
  store float* %arrayidx, float** %pv, align 8, !tbaa !1
  %5 = load float*, float** %pv, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds float, float* %5, i64 0
  %6 = load float, float* %arrayidx2, align 4, !tbaa !63
  %7 = load float*, float** %values.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds float, float* %7, i64 0
  store float %6, float* %arrayidx3, align 4, !tbaa !63
  %8 = load float*, float** %pv, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds float, float* %8, i64 1
  %9 = load float, float* %arrayidx4, align 4, !tbaa !63
  %10 = load float*, float** %values.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds float, float* %10, i64 1
  store float %9, float* %arrayidx5, align 4, !tbaa !63
  %11 = load float*, float** %pv, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds float, float* %11, i64 2
  %12 = load float, float* %arrayidx6, align 4, !tbaa !63
  %13 = load float*, float** %values.addr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds float, float* %13, i64 2
  store float %12, float* %arrayidx7, align 4, !tbaa !63
  %14 = load float*, float** %pv, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds float, float* %14, i64 3
  %15 = load float, float* %arrayidx8, align 4, !tbaa !63
  %16 = load float*, float** %values.addr, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds float, float* %16, i64 3
  store float %15, float* %arrayidx9, align 4, !tbaa !63
  %17 = bitcast float** %pv to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @map_palette_entry_n(%struct.gs_color_space_s* %pcs, i32 %indx, float* %values) #0 {
entry:
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %indx.addr = alloca i32, align 4
  %values.addr = alloca float*, align 8
  %m = alloca i32, align 4
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store i32 %indx, i32* %indx.addr, align 4, !tbaa !5
  store float* %values, float** %values.addr, align 8, !tbaa !1
  %0 = bitcast i32* %m to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %base_space = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %1, i32 0, i32 3
  %2 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space, align 8, !tbaa !49
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %2, i32 0, i32 0
  %3 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !32
  %num_components = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %3, i32 0, i32 4
  %4 = load i32 (%struct.gs_color_space_s*)*, i32 (%struct.gs_color_space_s*)** %num_components, align 8, !tbaa !50
  %5 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %base_space1 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %5, i32 0, i32 3
  %6 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space1, align 8, !tbaa !49
  %call = call i32 %4(%struct.gs_color_space_s* %6) #4
  store i32 %call, i32* %m, align 4, !tbaa !5
  %7 = load float*, float** %values.addr, align 8, !tbaa !1
  %8 = bitcast float* %7 to i8*
  %9 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %9, i32 0, i32 7
  %indexed = bitcast %union.anon* %params to %struct.gs_indexed_params_s*
  %lookup = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %indexed, i32 0, i32 2
  %map = bitcast %union.anon.6* %lookup to %struct.gs_indexed_map_s**
  %10 = load %struct.gs_indexed_map_s*, %struct.gs_indexed_map_s** %map, align 8, !tbaa !1
  %values2 = getelementptr inbounds %struct.gs_indexed_map_s, %struct.gs_indexed_map_s* %10, i32 0, i32 4
  %11 = load float*, float** %values2, align 8, !tbaa !51
  %12 = load i32, i32* %indx.addr, align 4, !tbaa !5
  %13 = load i32, i32* %m, align 4, !tbaa !5
  %mul = mul nsw i32 %12, %13
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds float, float* %11, i64 %idx.ext
  %14 = bitcast float* %add.ptr to i8*
  %15 = load i32, i32* %m, align 4, !tbaa !5
  %conv = sext i32 %15 to i64
  %mul3 = mul i64 %conv, 4
  %call4 = call i8* @memcpy(i8* %8, i8* %14, i64 %mul3) #5
  %16 = bitcast i32* %m to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #1
  ret i32 0
}

declare i32 @gs_color_space_is_PSCIE(%struct.gs_color_space_s*) #2

declare i32 @gs_colorspace_set_icc_equivalent(%struct.gs_color_space_s*, i32*, %struct.gs_memory_s*) #2

declare i32 @gx_serialize_cspace_type(%struct.gs_color_space_s*, %struct.stream_s*) #2

declare i32 @sputs(%struct.stream_s*, i8*, i32, i32*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin }
attributes #5 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !2, i64 0}
!8 = !{!"", !2, i64 0, !2, i64 8, !2, i64 16}
!9 = !{!8, !2, i64 8}
!10 = !{i64 0, i64 8, !1, i64 8, i64 256, !11}
!11 = !{!3, !3, i64 0}
!12 = !{!13, !3, i64 1848}
!13 = !{!"gs_state_s", !6, i64 0, !2, i64 8, !2, i64 16, !14, i64 24, !6, i64 128, !18, i64 132, !6, i64 168, !19, i64 176, !19, i64 192, !6, i64 208, !6, i64 212, !21, i64 216, !3, i64 220, !22, i64 224, !22, i64 228, !23, i64 232, !24, i64 240, !6, i64 248, !6, i64 252, !6, i64 256, !2, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !15, i64 296, !25, i64 300, !6, i64 308, !6, i64 312, !6, i64 316, !15, i64 320, !6, i64 324, !6, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !6, i64 408, !2, i64 416, !2, i64 424, !26, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !27, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !27, i64 1336, !2, i64 1616, !16, i64 1624, !6, i64 1648, !16, i64 1652, !6, i64 1676, !2, i64 1680, !2, i64 1688, !2, i64 1696, !2, i64 1704, !24, i64 1712, !24, i64 1720, !2, i64 1728, !6, i64 1736, !3, i64 1744, !2, i64 1792, !2, i64 1800, !18, i64 1808, !6, i64 1844, !3, i64 1848, !3, i64 1852, !2, i64 1856, !6, i64 1864, !2, i64 1872, !2, i64 1880, !28, i64 1888}
!14 = !{!"gx_line_params_s", !15, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !6, i64 20, !15, i64 24, !15, i64 28, !15, i64 32, !6, i64 36, !16, i64 40, !17, i64 64}
!15 = !{!"float", !3, i64 0}
!16 = !{!"gs_matrix_s", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !15, i64 20}
!17 = !{!"gx_dash_params_s", !2, i64 0, !6, i64 8, !15, i64 12, !6, i64 16, !15, i64 20, !6, i64 24, !6, i64 28, !15, i64 32}
!18 = !{!"gs_matrix_fixed_s", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !15, i64 20, !6, i64 24, !6, i64 28, !6, i64 32}
!19 = !{!"gs_point_s", !20, i64 0, !20, i64 8}
!20 = !{!"double", !3, i64 0}
!21 = !{!"short", !3, i64 0}
!22 = !{!"gs_transparency_source_s", !15, i64 0}
!23 = !{!"gs_xstate_trans_flags", !6, i64 0, !6, i64 4}
!24 = !{!"long", !3, i64 0}
!25 = !{!"gs_fixed_point_s", !6, i64 0, !6, i64 4}
!26 = !{!"gx_transfer_s", !6, i64 0, !2, i64 8, !6, i64 16, !2, i64 24, !6, i64 32, !2, i64 40, !6, i64 48, !2, i64 56}
!27 = !{!"gs_devicen_color_map_s", !6, i64 0, !3, i64 4, !6, i64 8, !6, i64 12, !24, i64 16, !3, i64 24}
!28 = !{!"gs_state_client_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!29 = !{!30, !24, i64 32}
!30 = !{!"gs_color_space_s", !2, i64 0, !31, i64 8, !24, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !3, i64 72}
!31 = !{!"rc_header_s", !24, i64 0, !2, i64 8, !2, i64 16}
!32 = !{!30, !2, i64 0}
!33 = !{!34, !2, i64 80}
!34 = !{!"gs_color_space_type_s", !3, i64 0, !6, i64 4, !6, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128}
!35 = !{!13, !6, i64 272}
!36 = !{!34, !2, i64 104}
!37 = !{!30, !2, i64 56}
!38 = !{!39, !2, i64 0}
!39 = !{!"gs_client_color_s", !2, i64 0, !40, i64 8}
!40 = !{!"gs_paint_color_s", !3, i64 0}
!41 = !{!34, !2, i64 32}
!42 = !{!8, !2, i64 16}
!43 = !{!44, !2, i64 0}
!44 = !{!"gx_device_color_s", !2, i64 0, !3, i64 8, !45, i64 352, !6, i64 360, !39, i64 368, !46, i64 632}
!45 = !{!"gs_int_point_s", !6, i64 0, !6, i64 4}
!46 = !{!"_mask", !47, i64 0, !24, i64 8, !2, i64 16}
!47 = !{!"mp_", !6, i64 0, !6, i64 4}
!48 = !{!34, !2, i64 40}
!49 = !{!30, !2, i64 40}
!50 = !{!34, !2, i64 24}
!51 = !{!52, !2, i64 48}
!52 = !{!"gs_indexed_map_s", !31, i64 0, !3, i64 24, !2, i64 32, !6, i64 40, !2, i64 48}
!53 = !{!54, !2, i64 24}
!54 = !{!"gs_memory_s", !2, i64 0, !55, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!55 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!56 = !{!54, !2, i64 72}
!57 = !{!52, !24, i64 0}
!58 = !{!52, !2, i64 8}
!59 = !{!52, !2, i64 16}
!60 = !{!54, !2, i64 88}
!61 = !{!52, !2, i64 32}
!62 = !{!52, !6, i64 40}
!63 = !{!15, !15, i64 0}
!64 = !{!65, !6, i64 0}
!65 = !{!"gs_indexed_params_s", !6, i64 0, !6, i64 4, !3, i64 8, !6, i64 24}
!66 = !{!30, !2, i64 48}
!67 = !{!68, !2, i64 8}
!68 = !{!"gs_imager_state_s", !6, i64 0, !2, i64 8, !2, i64 16, !14, i64 24, !6, i64 128, !18, i64 132, !6, i64 168, !19, i64 176, !19, i64 192, !6, i64 208, !6, i64 212, !21, i64 216, !3, i64 220, !22, i64 224, !22, i64 228, !23, i64 232, !24, i64 240, !6, i64 248, !6, i64 252, !6, i64 256, !2, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !15, i64 296, !25, i64 300, !6, i64 308, !6, i64 312, !6, i64 316, !15, i64 320, !6, i64 324, !6, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !6, i64 408, !2, i64 416, !2, i64 424, !26, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !27, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !27, i64 1336}
!69 = !{!34, !2, i64 48}
!70 = !{!34, !2, i64 56}
!71 = !{!34, !2, i64 88}
!72 = !{!65, !6, i64 24}
!73 = !{!74, !2, i64 0}
!74 = !{!"gs_const_string_s", !2, i64 0, !6, i64 8}
!75 = !{!30, !2, i64 16}
!76 = !{!54, !2, i64 160}
!77 = !{!74, !6, i64 8}
!78 = !{!34, !2, i64 112}
!79 = !{!34, !2, i64 128}
!80 = !{!34, !6, i64 4}
!81 = !{i64 0, i64 8, !1, i64 8, i64 4, !5}
!82 = !{!65, !6, i64 4}
!83 = !{!21, !21, i64 0}
!84 = !{!13, !2, i64 1872}
!85 = !{!86, !2, i64 1584}
!86 = !{!"gx_device_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !31, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !87, i64 96, !89, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !24, i64 928, !24, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !24, i64 968, !24, i64 976, !90, i64 984, !6, i64 1052, !6, i64 1056, !91, i64 1064, !2, i64 1104, !3, i64 1112, !93, i64 1120, !94, i64 1144}
!87 = !{!"gx_device_color_info_s", !6, i64 0, !6, i64 4, !3, i64 8, !21, i64 12, !3, i64 14, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !88, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !24, i64 704, !6, i64 712}
!88 = !{!"gx_device_anti_alias_info_s", !6, i64 0, !6, i64 4}
!89 = !{!"gx_device_cached_colors_s", !24, i64 0, !24, i64 8}
!90 = !{!"gx_stroked_gradient_recognizer_s", !6, i64 0, !3, i64 4, !3, i64 36}
!91 = !{!"gdev_space_params_s", !24, i64 0, !24, i64 8, !92, i64 16, !6, i64 32, !3, i64 36}
!92 = !{!"gx_band_params_s", !6, i64 0, !6, i64 4, !24, i64 8}
!93 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!94 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!95 = !{!96, !2, i64 0}
!96 = !{!"enum_ptr_s", !2, i64 0, !6, i64 8}
!97 = !{!96, !6, i64 8}
!98 = !{!99, !2, i64 0}
!99 = !{!"gc_procs_common_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!100 = !{!99, !2, i64 16}
