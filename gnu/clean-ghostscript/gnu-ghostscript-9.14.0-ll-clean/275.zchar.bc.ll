; ModuleID = './zchar.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.op_def = type { i8*, i32 (%struct.gs_context_state_s*)* }
%struct.gs_context_state_s = type { %struct.gs_state_s*, %struct.gs_dual_memory_s, i32, %struct.ref_s, %struct.ref_s, i64, i64, i64, i32, i32, %struct.ref_s, %struct.ref_s, i32, i32, i32, i32, %struct.gs_file_path_s*, [3 x %struct.ref_s], %struct.stream_s*, %struct.op_array_table_s, %struct.op_array_table_s, i32 (%struct.gs_context_state_s**)*, i32, i32 (%struct.gs_context_state_s**)*, %struct.dict_stack_s, %struct.exec_stack_s, %struct.op_stack_s, %struct.i_plugin_holder_s* }
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
%struct.gx_io_device_s = type { i8*, i8*, %struct.gx_io_device_procs_s, i8* }
%struct.gx_io_device_procs_s = type { i32 (%struct.gx_io_device_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)*, i32 (%struct.gx_io_device_s*, %struct._IO_FILE*)*, i32 (%struct.gx_io_device_s*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stat*)*, %struct.file_enum_s* (%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.file_enum_s*, i8*, i32)*, void (%struct.file_enum_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)* }
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
%struct.gs_font_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s }
%struct.gs_notify_list_s = type { %struct.gs_memory_s*, %struct.gs_notify_registration_s* }
%struct.gs_notify_registration_s = type { i32 (i8*, i8*)*, i8*, %struct.gs_notify_registration_s* }
%struct.gs_font_procs_s = type { i32 (%struct.gs_font_dir_s*, %struct.gs_font_s*)*, i32 (%struct.gs_font_dir_s*, %struct.gs_font_s*, %struct.gs_matrix_s*, %struct.gs_font_s**)*, i32 (%struct.gs_font_s*, %struct.gs_point_s*, i32, %struct.gs_font_info_s*)*, i32 (%struct.gs_font_s*, %struct.gs_font_s*, i32)*, i64 (%struct.gs_font_s*, i64, i32)*, i64 (%struct.gs_font_s*, i64, i32)*, i32 (%struct.gs_font_s*, i32*, i32, i64*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)*, i32 (%struct.gs_font_s*, i32, i64, %struct.gs_matrix_s*, %struct.gx_path_s*, double*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_const_string_s*)*, i32 (%struct.gs_text_enum_s*, %struct.gs_font_s*)*, i32 (%struct.gs_text_enum_s*, i64*, i64*)*, i32 (%struct.gs_show_enum_s*, %struct.gs_state_s*, %struct.gs_font_s*, i64, i64)* }
%struct.gs_font_info_s = type { i32, i32, i32, %struct.gs_int_rect_s, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, %struct.gs_const_string_s, %struct.gs_const_string_s, %struct.gs_const_string_s, %struct.gs_const_string_s, i32 }
%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }
%struct.gs_const_string_s = type { i8*, i32 }
%struct.gs_glyph_info_s = type { i32, [2 x %struct.gs_point_s], %struct.gs_point_s, %struct.gs_rect_s, i32, i64* }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.gs_text_enum_s = type { %struct.gs_text_params_s, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_procs_s*, %struct.rc_header_s, i8*, %struct.gs_font_s*, i64, i32, %struct.gs_log2_scale_point_s, %struct.cached_fm_pair_s*, i32, i32, %struct.gx_font_stack_s, i32, i32, i32, %struct.gs_point_s, i64, i32, %struct.gs_log2_scale_point_s, %struct.gs_point_s, %struct.gs_text_returned_s }
%struct.gs_text_params_s = type { i32, %union.sd_, i32, %struct.gs_point_s, %struct.gs_point_s, %union.s_, float*, float*, i32 }
%union.sd_ = type { i8* }
%union.s_ = type { i64 }
%struct.gs_text_enum_procs_s = type { i32 (%struct.gs_text_enum_s*, %struct.gs_text_enum_s*)*, i32 (%struct.gs_text_enum_s*)*, i32 (%struct.gs_text_enum_s*)*, i32 (%struct.gs_text_enum_s*, %struct.gs_point_s*)*, i32 (%struct.gs_text_enum_s*, double*, i32)*, i32 (%struct.gs_text_enum_s*)*, void (%struct.gs_text_enum_s*, i8*)* }
%struct.cached_fm_pair_s = type opaque
%struct.gx_font_stack_s = type { i32, [6 x %struct.gx_font_stack_item_s] }
%struct.gx_font_stack_item_s = type { %struct.gs_font_s*, i32 }
%struct.gs_log2_scale_point_s = type { i32, i32 }
%struct.gs_text_returned_s = type { i64, i64, %struct.gs_point_s }
%struct.gs_show_enum_s = type opaque
%struct.gs_font_name_s = type { [48 x i8], i32 }
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
%struct.gx_image_enum_common_s = type opaque
%struct.gx_strip_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16, i16, i16, i32 }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_image_common_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s }
%struct.gs_get_bits_params_s = type opaque
%struct.gs_composite_s = type { %struct.gs_composite_type_s*, i64, i32, %struct.gs_composite_s*, %struct.gs_composite_s* }
%struct.gs_composite_type_s = type { i8, %struct.gs_composite_type_procs_s }
%struct.gs_composite_type_procs_s = type { i32 (%struct.gs_composite_s*, %struct.gx_device_s**, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, %struct.gs_composite_s*)*, i32 (%struct.gs_composite_s*, i8*, i32*, %struct.gx_device_clist_writer_s*)*, i32 (%struct.gs_composite_s**, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, i32, i32, %struct.gs_imager_state_s*)*, i32 (%struct.gs_composite_s*, %struct.gs_composite_s**, %struct.gx_device_s*)*, i32 (%struct.gs_composite_s*, i8, i8)*, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, i32*, i32*, i32, i32)* }
%struct.gx_device_clist_writer_s = type opaque
%struct.gs_transparency_group_params_s = type { %struct.gs_color_space_s*, i32, i32, i32, i32, i32, i32, i32, i64, %struct.cmm_profile_s* }
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
%struct.gs_dual_memory_s = type { %struct.gs_ref_memory_s*, %struct.vm_spaces_s, i32, i32 (%struct.gs_dual_memory_s*, i32)*, i32, i32 }
%struct.gs_ref_memory_s = type opaque
%struct.vm_spaces_s = type { void (%struct.vm_spaces_s*, i32)*, %union.anon.1 }
%union.anon.1 = type { [4 x %struct.gs_ref_memory_s*] }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16, i32 }
%union.v = type { i64 }
%struct.gs_file_path_s = type opaque
%struct.stream_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], %union.stream_cursor_s, i8*, i32, i32, i16, i8, i8, %struct.gs_string_s, i64, %struct.stream_procs, %struct.stream_s*, i32, i32, %struct.stream_state_s*, i16, i16, %struct.stream_s*, %struct.stream_s*, i32, i32, i32 (%struct.stream_s*)*, %struct._IO_FILE*, %struct.gs_const_string_s, i32, i64, i64 }
%struct.stream_template_s = type opaque
%union.stream_cursor_s = type { %struct.stream_cursor_read_s }
%struct.stream_cursor_read_s = type { i8*, i8*, i8* }
%struct.gs_string_s = type { i8*, i32 }
%struct.stream_procs = type { i32 (%struct.stream_s*, i64*)*, i32 (%struct.stream_s*, i64)*, void (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_s*, i32)* }
%struct.stream_cursor_write_s = type { i8*, i8*, i8* }
%struct.stream_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, {}*, i32, [80 x i8] }
%struct.op_array_table_s = type { %struct.ref_s, i16*, i32, i32, i32 }
%struct.dict_stack_s = type { %struct.ref_stack_s, i32, i32, i32, i16*, i32, %struct.ref_s*, %struct.ref_s }
%struct.ref_stack_s = type { %struct.ref_s*, %struct.ref_s*, %struct.ref_s*, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, %struct.ref_stack_params_s*, %struct.gs_ref_memory_s* }
%struct.ref_stack_params_s = type opaque
%struct.exec_stack_s = type { %struct.ref_stack_s, %struct.ref_s* }
%struct.op_stack_s = type { %struct.ref_stack_s }
%struct.i_plugin_holder_s = type opaque
%struct.obj_header_s = type opaque
%struct.int_gstate_s = type { %struct.ref_s, %struct.anon.2, %struct.anon.2, %struct.ref_s, %struct.ref_s, [2 x %struct.ref_colorspace_s], [2 x %struct.ref_s], %struct.anon.6, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s }
%struct.anon.2 = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s }
%struct.ref_colorspace_s = type { %struct.ref_s, %struct.ref_color_procs_s }
%struct.ref_color_procs_s = type { %struct.ref_cie_procs_s, %union.anon.5 }
%struct.ref_cie_procs_s = type { %union.anon.3, %union.anon.4, %struct.ref_s }
%union.anon.3 = type { %struct.ref_s }
%union.anon.4 = type { %struct.ref_s }
%union.anon.5 = type { %struct.ref_device_n_params_s }
%struct.ref_device_n_params_s = type { %struct.ref_s, %struct.ref_s }
%struct.anon.6 = type { %struct.ref_s, %struct.ref_cie_render_procs_s }
%struct.ref_cie_render_procs_s = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s }
%struct._ssn = type { %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s* }
%struct.dict_s = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s }
%struct.gs_font_type0_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_type0_data_s }
%struct.gs_type0_data_s = type { i32, i8, i8, i8, %struct.gs_const_string_s, i32, i32, i32*, i32, %struct.gs_font_s**, i32, %struct.gs_cmap_s* }
%struct.gs_cmap_s = type opaque
%struct.font_data_s = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %union._fs }
%union._fs = type { %struct._f42 }
%struct._f42 = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, i32, i64 }
%struct.gs_font_type42_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, %struct.gs_fapi_server_s*, i8*, i32, i32, %struct.gs_type42_data_s }
%struct.gs_uid_s = type { i64, i64* }
%struct.gs_type42_data_s = type { i32 (%struct.gs_font_type42_s*, i64, i32, i8**)*, i8*, i32 (%struct.gs_font_type42_s*, i64)*, i32 (%struct.gs_font_type42_s*, i32, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type42_s*, i32, i32, float*)*, i32 (%struct.gs_font_type42_s*, i32, i32, i64)*, i64, i64, i32, i32, [2 x %struct.gs_type42_mtx_s], i64, i64, i64, i32, i32, i32, i32, i32, i32, i32*, %struct.gs_glyph_cache_s*, i32, i32, i8*, i64 }
%struct.gs_glyph_data_s = type { %struct.gs_const_bytestring_s, %struct.gs_glyph_data_procs_s*, i8*, %struct.gs_memory_s* }
%struct.gs_const_bytestring_s = type { i8*, i32, i8* }
%struct.gs_glyph_data_procs_s = type { void (%struct.gs_glyph_data_s*, i8*)*, i32 (%struct.gs_glyph_data_s*, i32, i32)* }
%struct.gs_type42_mtx_s = type { i32, i64, i32 }
%struct.gs_glyph_cache_s = type opaque
%struct.gs_font_base_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, %struct.gs_fapi_server_s*, i8*, i32, i32 }
%struct.ref_stack_enum_s = type { %struct.ref_stack_block_s*, %struct.ref_s*, i32 }
%struct.ref_stack_block_s = type { %struct.ref_s, %struct.ref_s }

@.str = private unnamed_addr constant [7 x i8] c"3ashow\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"6awidthshow\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"2charpath\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"2.charboxpath\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"2kshow\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"6setcachedevice\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c":setcachedevice2\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"2setcharwidth\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"1show\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"1stringwidth\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"4widthshow\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"1.fontbbox\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"6.pdfawidthshow\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"4.pdfwidthshow\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"0%finish_show\00", align 1
@zchar_a_op_defs = constant [16 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zashow }, %struct.op_def { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zawidthshow }, %struct.op_def { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zcharpath }, %struct.op_def { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zcharboxpath }, %struct.op_def { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zkshow }, %struct.op_def { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zsetcachedevice }, %struct.op_def { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zsetcachedevice2 }, %struct.op_def { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zsetcharwidth }, %struct.op_def { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zshow }, %struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zstringwidth }, %struct.op_def { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zwidthshow }, %struct.op_def { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zfontbbox }, %struct.op_def { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zpdfawidthshow }, %struct.op_def { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zpdfwidthshow }, %struct.op_def { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @finish_show }, %struct.op_def zeroinitializer], align 16
@.str.15 = private unnamed_addr constant [21 x i8] c"0%finish_stringwidth\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"0%op_show_continue\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"0.incachedevice\00", align 1
@zchar_b_op_defs = constant [4 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @finish_stringwidth }, %struct.op_def { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @op_show_continue }, %struct.op_def { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zincachedevice }, %struct.op_def zeroinitializer], align 16
@.str.18 = private unnamed_addr constant [8 x i8] c".notdef\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"FontBBox\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"op_show_enum_setup\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"y_widths\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"x_widths\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"op_show_restore\00", align 1

; Function Attrs: nounwind uwtable
define i32 @finish_stringwidth(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %width = alloca %struct.gs_point_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.gs_point_s* %width to i8*
  call void @llvm.lifetime.start(i64 16, i8* %3) #1
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 25
  %stack1 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p2 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack1, i32 0, i32 0
  %5 = load %struct.ref_s*, %struct.ref_s** %p2, align 8, !tbaa !19
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 1
  %pstruct = bitcast %union.v* %value to %struct.obj_header_s**
  %6 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %7 = bitcast %struct.obj_header_s* %6 to %struct.gs_text_enum_s*
  %call = call i32 @gs_text_total_width(%struct.gs_text_enum_s* %7, %struct.gs_point_s* %width) #3
  br label %do.body

do.body:                                          ; preds = %entry
  %8 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i64 2
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op, align 8, !tbaa !1
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %9, i32 0, i32 26
  %stack4 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack3, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack4, i32 0, i32 2
  %10 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !20
  %cmp = icmp ugt %struct.ref_s* %add.ptr, %10
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack5 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %11, i32 0, i32 26
  %stack6 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack5, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack6, i32 0, i32 7
  store i32 2, i32* %requested, align 4, !tbaa !21
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body
  %12 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %13 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack7 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %13, i32 0, i32 26
  %stack8 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack7, i32 0, i32 0
  %p9 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack8, i32 0, i32 0
  store %struct.ref_s* %12, %struct.ref_s** %p9, align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %width, i32 0, i32 0
  %14 = load double, double* %x, align 8, !tbaa !22
  %conv = fptrunc double %14 to float
  %15 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i64 -1
  %value11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr10, i32 0, i32 1
  %realval = bitcast %union.v* %value11 to float*
  store float %conv, float* %realval, align 4, !tbaa !25
  %16 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i64 -1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr12, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 4096, i16* %type_attrs, align 2, !tbaa !27
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %width, i32 0, i32 1
  %17 = load double, double* %y, align 8, !tbaa !28
  %conv13 = fptrunc double %17 to float
  %18 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i32 0, i32 1
  %realval15 = bitcast %union.v* %value14 to float*
  store float %conv13, float* %realval15, align 4, !tbaa !25
  %19 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i32 0, i32 0
  %type_attrs17 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas16, i32 0, i32 0
  store i16 4096, i16* %type_attrs17, align 2, !tbaa !27
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  %20 = bitcast %struct.gs_point_s* %width to i8*
  call void @llvm.lifetime.end(i64 16, i8* %20) #1
  %21 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #1
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @gs_text_total_width(%struct.gs_text_enum_s*, %struct.gs_point_s*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @zsetcachedevice(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %wbox = alloca [6 x double], align 16
  %penum = alloca %struct.gs_text_enum_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast [6 x double]* %wbox to i8*
  call void @llvm.lifetime.start(i64 48, i8* %3) #1
  %4 = bitcast %struct.gs_text_enum_s** %penum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call %struct.gs_text_enum_s* @op_show_find(%struct.gs_context_state_s* %5) #3
  store %struct.gs_text_enum_s* %call, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [6 x double], [6 x double]* %wbox, i32 0, i32 0
  %call1 = call i32 @num_params(%struct.ref_s* %7, i32 6, double* %arraydecay) #3
  store i32 %call1, i32* %code, align 4, !tbaa !29
  %8 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_text_enum_s* %8, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load i32, i32* %code, align 4, !tbaa !29
  %cmp2 = icmp slt i32 %9, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %10 = load i32, i32* %code, align 4, !tbaa !29
  store i32 %10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %11 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %call5 = call i32 @zchar_show_width_only(%struct.gs_text_enum_s* %11) #3
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end.4
  %12 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds [6 x double], [6 x double]* %wbox, i32 0, i64 0
  %call7 = call i32 @op_show_return_width(%struct.gs_context_state_s* %12, i32 6, double* %arrayidx) #3
  store i32 %call7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.end.4
  %13 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %arraydecay9 = getelementptr inbounds [6 x double], [6 x double]* %wbox, i32 0, i32 0
  %call10 = call i32 @gs_text_setcachedevice(%struct.gs_text_enum_s* %13, double* %arraydecay9) #3
  store i32 %call10, i32* %code, align 4, !tbaa !29
  %14 = load i32, i32* %code, align 4, !tbaa !29
  %cmp11 = icmp slt i32 %14, 0
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.8
  %15 = load i32, i32* %code, align 4, !tbaa !29
  store i32 %15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.13:                                        ; preds = %if.end.8
  %16 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack14 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %16, i32 0, i32 26
  %stack15 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack14, i32 0, i32 0
  %p16 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack15, i32 0, i32 0
  %17 = load %struct.ref_s*, %struct.ref_s** %p16, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i64 -6
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p16, align 8, !tbaa !5
  %18 = load i32, i32* %code, align 4, !tbaa !29
  %cmp17 = icmp eq i32 %18, 1
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.13
  %19 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %19, i32 0, i32 0
  %20 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !30
  %client_data = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %20, i32 0, i32 2
  %21 = load i8*, i8** %client_data, align 8, !tbaa !31
  %22 = bitcast i8* %21 to %struct.int_gstate_s*
  %pagedevice = getelementptr inbounds %struct.int_gstate_s, %struct.int_gstate_s* %22, i32 0, i32 10
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %pagedevice, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 3584, i16* %type_attrs, align 2, !tbaa !27
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %if.end.13
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.19, %if.then.12, %if.then.6, %if.then.3, %if.then
  %23 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #1
  %24 = bitcast %struct.gs_text_enum_s** %penum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = bitcast [6 x double]* %wbox to i8*
  call void @llvm.lifetime.end(i64 48, i8* %25) #1
  %26 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  %27 = load i32, i32* %retval
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define %struct.gs_text_enum_s* @op_show_find(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca %struct.gs_text_enum_s*, align 8
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @op_show_find_index(%struct.gs_context_state_s* %1) #3
  store i32 %call, i32* %index, align 4, !tbaa !29
  %2 = load i32, i32* %index, align 4, !tbaa !29
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.gs_text_enum_s* null, %struct.gs_text_enum_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %3, i32 0, i32 25
  %stack = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %4 = load i32, i32* %index, align 4, !tbaa !29
  %sub = sub i32 %4, 8
  %conv = zext i32 %sub to i64
  %call1 = call %struct.ref_s* @ref_stack_index(%struct.ref_stack_s* %stack, i64 %conv) #3
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %call1, i32 0, i32 1
  %pstruct = bitcast %union.v* %value to %struct.obj_header_s**
  %5 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %6 = bitcast %struct.obj_header_s* %5 to %struct.gs_text_enum_s*
  store %struct.gs_text_enum_s* %6, %struct.gs_text_enum_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %7 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %7) #1
  %8 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %retval
  ret %struct.gs_text_enum_s* %8
}

declare i32 @num_params(%struct.ref_s*, i32, double*) #2

; Function Attrs: nounwind uwtable
define i32 @zchar_show_width_only(%struct.gs_text_enum_s* %penum) #0 {
entry:
  %retval = alloca i32, align 4
  %penum.addr = alloca %struct.gs_text_enum_s*, align 8
  store %struct.gs_text_enum_s* %penum, %struct.gs_text_enum_s** %penum.addr, align 8, !tbaa !1
  %0 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum.addr, align 8, !tbaa !1
  %call = call i32 @gs_text_is_width_only(%struct.gs_text_enum_s* %0) #3
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum.addr, align 8, !tbaa !1
  %orig_font = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %1, i32 0, i32 4
  %2 = load %struct.gs_font_s*, %struct.gs_font_s** %orig_font, align 8, !tbaa !43
  %FontType = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %2, i32 0, i32 11
  %3 = load i32, i32* %FontType, align 4, !tbaa !50
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 9, label %sw.bb
    i32 11, label %sw.bb
    i32 32, label %sw.bb
    i32 42, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  store i32 1, i32* %retval
  br label %return

sw.default:                                       ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal i32 @op_show_return_width(%struct.gs_context_state_s* %i_ctx_p, i32 %npop, double* %pwidth) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %npop.addr = alloca i32, align 4
  %pwidth.addr = alloca double*, align 8
  %index = alloca i32, align 4
  %ep = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %ocount = alloca i32, align 4
  %dsaved = alloca i32, align 4
  %dcount = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store i32 %npop, i32* %npop.addr, align 4, !tbaa !29
  store double* %pwidth, double** %pwidth.addr, align 8, !tbaa !1
  %0 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @op_show_find_index(%struct.gs_context_state_s* %1) #3
  store i32 %call, i32* %index, align 4, !tbaa !29
  %2 = bitcast %struct.ref_s** %ep to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %3, i32 0, i32 25
  %stack = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %4 = load i32, i32* %index, align 4, !tbaa !29
  %sub = sub i32 %4, 8
  %conv = zext i32 %sub to i64
  %call1 = call %struct.ref_s* @ref_stack_index(%struct.ref_stack_s* %stack, i64 %conv) #3
  store %struct.ref_s* %call1, %struct.ref_s** %ep, align 8, !tbaa !1
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 1
  %pstruct = bitcast %union.v* %value to %struct.obj_header_s**
  %7 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %8 = bitcast %struct.obj_header_s* %7 to %struct.gs_text_enum_s*
  %9 = load double*, double** %pwidth.addr, align 8, !tbaa !1
  %call2 = call i32 @gs_text_setcharwidth(%struct.gs_text_enum_s* %8, double* %9) #3
  store i32 %call2, i32* %code, align 4, !tbaa !29
  %10 = bitcast i32* %ocount to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %dsaved to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast i32* %dcount to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load i32, i32* %code, align 4, !tbaa !29
  %cmp = icmp slt i32 %13, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %14 = load i32, i32* %code, align 4, !tbaa !29
  store i32 %14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %15 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %15, i32 0, i32 26
  %stack4 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %call5 = call i32 @ref_stack_count(%struct.ref_stack_s* %stack4) #3
  %16 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i64 -2
  %value6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 1
  %intval = bitcast %union.v* %value6 to i64*
  %17 = load i64, i64* %intval, align 8, !tbaa !55
  %conv7 = trunc i64 %17 to i32
  %sub8 = sub i32 %call5, %conv7
  store i32 %sub8, i32* %ocount, align 4, !tbaa !29
  %18 = load i32, i32* %ocount, align 4, !tbaa !29
  %19 = load i32, i32* %npop.addr, align 4, !tbaa !29
  %cmp9 = icmp ult i32 %18, %19
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end
  store i32 -17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.end
  %20 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i64 -3
  %value14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx13, i32 0, i32 1
  %intval15 = bitcast %union.v* %value14 to i64*
  %21 = load i64, i64* %intval15, align 8, !tbaa !55
  %conv16 = trunc i64 %21 to i32
  store i32 %conv16, i32* %dsaved, align 4, !tbaa !29
  %22 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %22, i32 0, i32 24
  %stack17 = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack, i32 0, i32 0
  %call18 = call i32 @ref_stack_count(%struct.ref_stack_s* %stack17) #3
  store i32 %call18, i32* %dcount, align 4, !tbaa !29
  %23 = load i32, i32* %dcount, align 4, !tbaa !29
  %24 = load i32, i32* %dsaved, align 4, !tbaa !29
  %cmp19 = icmp ult i32 %23, %24
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.12
  store i32 -4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.22:                                        ; preds = %if.end.12
  br label %while.cond

while.cond:                                       ; preds = %if.end.29, %if.end.22
  %25 = load i32, i32* %dcount, align 4, !tbaa !29
  %26 = load i32, i32* %dsaved, align 4, !tbaa !29
  %cmp23 = icmp ugt i32 %25, %26
  br i1 %cmp23, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %27 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call25 = call i32 @zend(%struct.gs_context_state_s* %27) #3
  store i32 %call25, i32* %code, align 4, !tbaa !29
  %28 = load i32, i32* %code, align 4, !tbaa !29
  %cmp26 = icmp slt i32 %28, 0
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %while.body
  %29 = load i32, i32* %code, align 4, !tbaa !29
  store i32 %29, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.29:                                        ; preds = %while.body
  %30 = load i32, i32* %dcount, align 4, !tbaa !29
  %dec = add i32 %30, -1
  store i32 %dec, i32* %dcount, align 4, !tbaa !29
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %31 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack30 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %31, i32 0, i32 26
  %stack31 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack30, i32 0, i32 0
  %32 = load i32, i32* %ocount, align 4, !tbaa !29
  call void @ref_stack_pop(%struct.ref_stack_s* %stack31, i32 %32) #3
  %33 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %34 = load i32, i32* %index, align 4, !tbaa !29
  %sub32 = sub i32 %34, 9
  call void @pop_estack(%struct.gs_context_state_s* %33, i32 %sub32) #3
  store i32 14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then.28, %if.then.21, %if.then.11, %if.then
  %35 = bitcast i32* %dcount to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %36 = bitcast i32* %dsaved to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  %37 = bitcast i32* %ocount to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  %38 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  %39 = bitcast %struct.ref_s** %ep to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  %40 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  %41 = load i32, i32* %retval
  ret i32 %41
}

declare i32 @gs_text_setcachedevice(%struct.gs_text_enum_s*, double*) #2

; Function Attrs: nounwind uwtable
define i32 @zsetcachedevice2(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %wbox = alloca [10 x double], align 16
  %penum = alloca %struct.gs_text_enum_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast [10 x double]* %wbox to i8*
  call void @llvm.lifetime.start(i64 80, i8* %3) #1
  %4 = bitcast %struct.gs_text_enum_s** %penum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call %struct.gs_text_enum_s* @op_show_find(%struct.gs_context_state_s* %5) #3
  store %struct.gs_text_enum_s* %call, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [10 x double], [10 x double]* %wbox, i32 0, i32 0
  %call1 = call i32 @num_params(%struct.ref_s* %7, i32 10, double* %arraydecay) #3
  store i32 %call1, i32* %code, align 4, !tbaa !29
  %8 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_text_enum_s* %8, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load i32, i32* %code, align 4, !tbaa !29
  %cmp2 = icmp slt i32 %9, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %10 = load i32, i32* %code, align 4, !tbaa !29
  store i32 %10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %11 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %call5 = call i32 @zchar_show_width_only(%struct.gs_text_enum_s* %11) #3
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.then.6, label %if.end.11

if.then.6:                                        ; preds = %if.end.4
  %12 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %13 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %13, i32 0, i32 0
  %14 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !30
  %call7 = call %struct.gs_font_s* @gs_rootfont(%struct.gs_state_s* %14) #3
  %WMode = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %call7, i32 0, i32 16
  %15 = load i32, i32* %WMode, align 4, !tbaa !56
  %tobool8 = icmp ne i32 %15, 0
  br i1 %tobool8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.6
  %arrayidx = getelementptr inbounds [10 x double], [10 x double]* %wbox, i32 0, i64 6
  br label %cond.end

cond.false:                                       ; preds = %if.then.6
  %arrayidx9 = getelementptr inbounds [10 x double], [10 x double]* %wbox, i32 0, i64 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double* [ %arrayidx, %cond.true ], [ %arrayidx9, %cond.false ]
  %call10 = call i32 @op_show_return_width(%struct.gs_context_state_s* %12, i32 10, double* %cond) #3
  store i32 %call10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %if.end.4
  %16 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %arraydecay12 = getelementptr inbounds [10 x double], [10 x double]* %wbox, i32 0, i32 0
  %call13 = call i32 @gs_text_setcachedevice2(%struct.gs_text_enum_s* %16, double* %arraydecay12) #3
  store i32 %call13, i32* %code, align 4, !tbaa !29
  %17 = load i32, i32* %code, align 4, !tbaa !29
  %cmp14 = icmp slt i32 %17, 0
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.11
  %18 = load i32, i32* %code, align 4, !tbaa !29
  store i32 %18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %if.end.11
  %19 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack17 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %19, i32 0, i32 26
  %stack18 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack17, i32 0, i32 0
  %p19 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack18, i32 0, i32 0
  %20 = load %struct.ref_s*, %struct.ref_s** %p19, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i64 -10
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p19, align 8, !tbaa !5
  %21 = load i32, i32* %code, align 4, !tbaa !29
  %cmp20 = icmp eq i32 %21, 1
  br i1 %cmp20, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %if.end.16
  %22 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs22 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %22, i32 0, i32 0
  %23 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs22, align 8, !tbaa !30
  %client_data = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %23, i32 0, i32 2
  %24 = load i8*, i8** %client_data, align 8, !tbaa !31
  %25 = bitcast i8* %24 to %struct.int_gstate_s*
  %pagedevice = getelementptr inbounds %struct.int_gstate_s, %struct.int_gstate_s* %25, i32 0, i32 10
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %pagedevice, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 3584, i16* %type_attrs, align 2, !tbaa !27
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %if.end.16
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.23, %if.then.15, %cond.end, %if.then.3, %if.then
  %26 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  %27 = bitcast %struct.gs_text_enum_s** %penum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  %28 = bitcast [10 x double]* %wbox to i8*
  call void @llvm.lifetime.end(i64 80, i8* %28) #1
  %29 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  %30 = load i32, i32* %retval
  ret i32 %30
}

declare %struct.gs_font_s* @gs_rootfont(%struct.gs_state_s*) #2

declare i32 @gs_text_setcachedevice2(%struct.gs_text_enum_s*, double*) #2

; Function Attrs: nounwind uwtable
define internal i32 @zashow(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %penum = alloca %struct.gs_text_enum_s*, align 8
  %axy = alloca [2 x double], align 16
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.gs_text_enum_s** %penum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast [2 x double]* %axy to i8*
  call void @llvm.lifetime.start(i64 16, i8* %4) #1
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 -1
  %arraydecay = getelementptr inbounds [2 x double], [2 x double]* %axy, i32 0, i32 0
  %call = call i32 @num_params(%struct.ref_s* %add.ptr, i32 2, double* %arraydecay) #3
  store i32 %call, i32* %code, align 4, !tbaa !29
  %7 = load i32, i32* %code, align 4, !tbaa !29
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call1 = call i32 @op_show_setup(%struct.gs_context_state_s* %8, %struct.ref_s* %9) #3
  store i32 %call1, i32* %code, align 4, !tbaa !29
  %cmp2 = icmp ne i32 %call1, 0
  br i1 %cmp2, label %if.then, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %10 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %10, i32 0, i32 0
  %11 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !30
  %arrayidx = getelementptr inbounds [2 x double], [2 x double]* %axy, i32 0, i64 0
  %12 = load double, double* %arrayidx, align 8, !tbaa !57
  %arrayidx4 = getelementptr inbounds [2 x double], [2 x double]* %axy, i32 0, i64 1
  %13 = load double, double* %arrayidx4, align 8, !tbaa !57
  %14 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 1
  %bytes = bitcast %union.v* %value to i8**
  %15 = load i8*, i8** %bytes, align 8, !tbaa !1
  %16 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 2
  %17 = load i32, i32* %rsize, align 4, !tbaa !58
  %18 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %18, i32 0, i32 1
  %spaces = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 1
  %memories = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces, i32 0, i32 1
  %named = bitcast %union.anon.1* %memories to %struct._ssn*
  %local = getelementptr inbounds %struct._ssn, %struct._ssn* %named, i32 0, i32 3
  %19 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %local, align 8, !tbaa !59
  %20 = bitcast %struct.gs_ref_memory_s* %19 to %struct.gs_memory_s*
  %call5 = call i32 @gs_ashow_begin(%struct.gs_state_s* %11, double %12, double %13, i8* %15, i32 %17, %struct.gs_memory_s* %20, %struct.gs_text_enum_s** %penum) #3
  store i32 %call5, i32* %code, align 4, !tbaa !29
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.3, %lor.lhs.false, %entry
  %21 = load i32, i32* %code, align 4, !tbaa !29
  store i32 %21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.3
  %22 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %enum_client_data = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %22, i32 0, i32 11
  %23 = bitcast i8** %enum_client_data to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @zashow, i32 (%struct.gs_context_state_s*)** %23, align 8, !tbaa !1
  %24 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %25 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %call7 = call i32 @op_show_finish_setup(%struct.gs_context_state_s* %24, %struct.gs_text_enum_s* %25, i32 3, i32 (%struct.gs_context_state_s*)* @finish_show) #3
  store i32 %call7, i32* %code, align 4, !tbaa !29
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then.9, label %if.end.13

if.then.9:                                        ; preds = %if.end
  %26 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory10 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %26, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory10, i32 0, i32 0
  %27 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !61
  %28 = bitcast %struct.gs_ref_memory_s* %27 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %28, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %29 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !62
  %30 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory11 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %30, i32 0, i32 1
  %current12 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory11, i32 0, i32 0
  %31 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current12, align 8, !tbaa !61
  %32 = bitcast %struct.gs_ref_memory_s* %31 to %struct.gs_memory_s*
  %33 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %34 = bitcast %struct.gs_text_enum_s* %33 to i8*
  call void %29(%struct.gs_memory_s* %32, i8* %34, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i32 0, i32 0)) #3
  %35 = load i32, i32* %code, align 4, !tbaa !29
  store i32 %35, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.13:                                        ; preds = %if.end
  %36 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call14 = call i32 @op_show_continue_pop(%struct.gs_context_state_s* %36, i32 3) #3
  store i32 %call14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.13, %if.then.9, %if.then
  %37 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  %38 = bitcast [2 x double]* %axy to i8*
  call void @llvm.lifetime.end(i64 16, i8* %38) #1
  %39 = bitcast %struct.gs_text_enum_s** %penum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  %40 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  %41 = load i32, i32* %retval
  ret i32 %41
}

; Function Attrs: nounwind uwtable
define internal i32 @zawidthshow(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @awidthshow_aux(%struct.gs_context_state_s* %0, i32 0) #3
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @zcharpath(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @zchar_path(%struct.gs_context_state_s* %0, i32 (%struct.gs_context_state_s*)* @zcharpath, i32 (%struct.gs_state_s*, i8*, i32, i32, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* @gs_charpath_begin) #3
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @zcharboxpath(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @zchar_path(%struct.gs_context_state_s* %0, i32 (%struct.gs_context_state_s*)* @zcharboxpath, i32 (%struct.gs_state_s*, i8*, i32, i32, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* @gs_charboxpath_begin) #3
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @zkshow(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %penum = alloca %struct.gs_text_enum_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.gs_text_enum_s** %penum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %6 = load i16, i16* %type_attrs, align 2, !tbaa !27
  %conv = zext i16 %6 to i32
  %and = and i32 %conv, 16160
  %cmp = icmp eq i32 %and, 4640
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 0
  %type_attrs3 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas2, i32 0, i32 0
  %8 = bitcast i16* %type_attrs3 to i8*
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 1
  %9 = load i8, i8* %arrayidx, align 1, !tbaa !65
  %conv4 = zext i8 %9 to i32
  %cmp5 = icmp eq i32 %conv4, 18
  br i1 %cmp5, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %10) #3
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ -7, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %11 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i64 -1
  %tas8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx7, i32 0, i32 0
  %type_attrs9 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas8, i32 0, i32 0
  %12 = load i16, i16* %type_attrs9, align 2, !tbaa !27
  %conv10 = zext i16 %12 to i32
  %and11 = and i32 %conv10, 15552
  %cmp12 = icmp eq i32 %and11, 1216
  br i1 %cmp12, label %if.end.17, label %if.then.14

if.then.14:                                       ; preds = %do.body
  %13 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i64 -1
  %call16 = call i32 @check_proc_failed(%struct.ref_s* %arrayidx15) #3
  store i32 %call16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.17:                                        ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.17
  br label %do.end

do.end:                                           ; preds = %do.cond
  %14 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %14, i32 0, i32 0
  %15 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !30
  %call18 = call %struct.gs_font_s* @gs_currentfont(%struct.gs_state_s* %15) #3
  %FontType = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %call18, i32 0, i32 11
  %16 = load i32, i32* %FontType, align 4, !tbaa !50
  %cmp19 = icmp eq i32 %16, 0
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %do.end
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.22:                                        ; preds = %do.end
  %17 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %18 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call23 = call i32 @op_show_setup(%struct.gs_context_state_s* %17, %struct.ref_s* %18) #3
  store i32 %call23, i32* %code, align 4, !tbaa !29
  %cmp24 = icmp ne i32 %call23, 0
  br i1 %cmp24, label %if.then.31, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.22
  %19 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs26 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %19, i32 0, i32 0
  %20 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs26, align 8, !tbaa !30
  %21 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 0, i32 1
  %bytes = bitcast %union.v* %value to i8**
  %22 = load i8*, i8** %bytes, align 8, !tbaa !1
  %23 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas27, i32 0, i32 2
  %24 = load i32, i32* %rsize, align 4, !tbaa !58
  %25 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %25, i32 0, i32 1
  %spaces = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 1
  %memories = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces, i32 0, i32 1
  %named = bitcast %union.anon.1* %memories to %struct._ssn*
  %local = getelementptr inbounds %struct._ssn, %struct._ssn* %named, i32 0, i32 3
  %26 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %local, align 8, !tbaa !59
  %27 = bitcast %struct.gs_ref_memory_s* %26 to %struct.gs_memory_s*
  %call28 = call i32 @gs_kshow_begin(%struct.gs_state_s* %20, i8* %22, i32 %24, %struct.gs_memory_s* %27, %struct.gs_text_enum_s** %penum) #3
  store i32 %call28, i32* %code, align 4, !tbaa !29
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %lor.lhs.false, %if.end.22
  %28 = load i32, i32* %code, align 4, !tbaa !29
  store i32 %28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.32:                                        ; preds = %lor.lhs.false
  %29 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %enum_client_data = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %29, i32 0, i32 11
  %30 = bitcast i8** %enum_client_data to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @zkshow, i32 (%struct.gs_context_state_s*)** %30, align 8, !tbaa !1
  %31 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %32 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %call33 = call i32 @op_show_finish_setup(%struct.gs_context_state_s* %31, %struct.gs_text_enum_s* %32, i32 2, i32 (%struct.gs_context_state_s*)* @finish_show) #3
  store i32 %call33, i32* %code, align 4, !tbaa !29
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.then.36, label %if.end.40

if.then.36:                                       ; preds = %if.end.32
  %33 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory37 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %33, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory37, i32 0, i32 0
  %34 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !61
  %35 = bitcast %struct.gs_ref_memory_s* %34 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %35, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %36 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !62
  %37 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory38 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %37, i32 0, i32 1
  %current39 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory38, i32 0, i32 0
  %38 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current39, align 8, !tbaa !61
  %39 = bitcast %struct.gs_ref_memory_s* %38 to %struct.gs_memory_s*
  %40 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %41 = bitcast %struct.gs_text_enum_s* %40 to i8*
  call void %36(%struct.gs_memory_s* %39, i8* %41, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i32 0, i32 0)) #3
  %42 = load i32, i32* %code, align 4, !tbaa !29
  store i32 %42, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.40:                                        ; preds = %if.end.32
  %43 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %43, i32 0, i32 25
  %stack41 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p42 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack41, i32 0, i32 0
  %44 = load %struct.ref_s*, %struct.ref_s** %p42, align 8, !tbaa !19
  %arrayidx43 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %44, i64 -1
  %45 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx44 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %45, i64 -1
  %46 = bitcast %struct.ref_s* %arrayidx43 to i8*
  %47 = bitcast %struct.ref_s* %arrayidx44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %46, i8* %47, i64 16, i32 8, i1 false), !tbaa.struct !66
  %48 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call45 = call i32 @op_show_continue_pop(%struct.gs_context_state_s* %48, i32 2) #3
  store i32 %call45, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.40, %if.then.36, %if.then.31, %if.then.21, %if.then.14, %cond.end
  %49 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #1
  %50 = bitcast %struct.gs_text_enum_s** %penum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #1
  %51 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #1
  %52 = load i32, i32* %retval
  ret i32 %52
}

; Function Attrs: nounwind uwtable
define internal i32 @zsetcharwidth(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %width = alloca [2 x double], align 16
  %penum = alloca %struct.gs_text_enum_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast [2 x double]* %width to i8*
  call void @llvm.lifetime.start(i64 16, i8* %3) #1
  %4 = bitcast %struct.gs_text_enum_s** %penum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call %struct.gs_text_enum_s* @op_show_find(%struct.gs_context_state_s* %5) #3
  store %struct.gs_text_enum_s* %call, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [2 x double], [2 x double]* %width, i32 0, i32 0
  %call1 = call i32 @num_params(%struct.ref_s* %7, i32 2, double* %arraydecay) #3
  store i32 %call1, i32* %code, align 4, !tbaa !29
  %8 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_text_enum_s* %8, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load i32, i32* %code, align 4, !tbaa !29
  %cmp2 = icmp slt i32 %9, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %10 = load i32, i32* %code, align 4, !tbaa !29
  store i32 %10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %11 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %call5 = call i32 @zchar_show_width_only(%struct.gs_text_enum_s* %11) #3
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end.4
  %12 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds [2 x double], [2 x double]* %width, i32 0, i64 0
  %call7 = call i32 @op_show_return_width(%struct.gs_context_state_s* %12, i32 2, double* %arrayidx) #3
  store i32 %call7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.end.4
  %13 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %arraydecay9 = getelementptr inbounds [2 x double], [2 x double]* %width, i32 0, i32 0
  %call10 = call i32 @gs_text_setcharwidth(%struct.gs_text_enum_s* %13, double* %arraydecay9) #3
  store i32 %call10, i32* %code, align 4, !tbaa !29
  %14 = load i32, i32* %code, align 4, !tbaa !29
  %cmp11 = icmp slt i32 %14, 0
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.8
  %15 = load i32, i32* %code, align 4, !tbaa !29
  store i32 %15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.13:                                        ; preds = %if.end.8
  %16 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack14 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %16, i32 0, i32 26
  %stack15 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack14, i32 0, i32 0
  %p16 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack15, i32 0, i32 0
  %17 = load %struct.ref_s*, %struct.ref_s** %p16, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i64 -2
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p16, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.13, %if.then.12, %if.then.6, %if.then.3, %if.then
  %18 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #1
  %19 = bitcast %struct.gs_text_enum_s** %penum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #1
  %20 = bitcast [2 x double]* %width to i8*
  call void @llvm.lifetime.end(i64 16, i8* %20) #1
  %21 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #1
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define internal i32 @zshow(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %penum = alloca %struct.gs_text_enum_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.gs_text_enum_s** %penum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @op_show_setup(%struct.gs_context_state_s* %5, %struct.ref_s* %6) #3
  store i32 %call, i32* %code, align 4, !tbaa !29
  %7 = load i32, i32* %code, align 4, !tbaa !29
  %cmp = icmp ne i32 %7, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %8, i32 0, i32 0
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !30
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 1
  %bytes = bitcast %union.v* %value to i8**
  %11 = load i8*, i8** %bytes, align 8, !tbaa !1
  %12 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 2
  %13 = load i32, i32* %rsize, align 4, !tbaa !58
  %14 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %14, i32 0, i32 1
  %spaces = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 1
  %memories = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces, i32 0, i32 1
  %named = bitcast %union.anon.1* %memories to %struct._ssn*
  %local = getelementptr inbounds %struct._ssn, %struct._ssn* %named, i32 0, i32 3
  %15 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %local, align 8, !tbaa !59
  %16 = bitcast %struct.gs_ref_memory_s* %15 to %struct.gs_memory_s*
  %call1 = call i32 @gs_show_begin(%struct.gs_state_s* %9, i8* %11, i32 %13, %struct.gs_memory_s* %16, %struct.gs_text_enum_s** %penum) #3
  store i32 %call1, i32* %code, align 4, !tbaa !29
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %17 = load i32, i32* %code, align 4, !tbaa !29
  store i32 %17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %18 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %enum_client_data = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %18, i32 0, i32 11
  %19 = bitcast i8** %enum_client_data to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @zshow, i32 (%struct.gs_context_state_s*)** %19, align 8, !tbaa !1
  %20 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %21 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %call3 = call i32 @op_show_finish_setup(%struct.gs_context_state_s* %20, %struct.gs_text_enum_s* %21, i32 1, i32 (%struct.gs_context_state_s*)* @finish_show) #3
  store i32 %call3, i32* %code, align 4, !tbaa !29
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.then.5, label %if.end.9

if.then.5:                                        ; preds = %if.end
  %22 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory6 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %22, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory6, i32 0, i32 0
  %23 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !61
  %24 = bitcast %struct.gs_ref_memory_s* %23 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %24, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %25 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !62
  %26 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory7 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %26, i32 0, i32 1
  %current8 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory7, i32 0, i32 0
  %27 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current8, align 8, !tbaa !61
  %28 = bitcast %struct.gs_ref_memory_s* %27 to %struct.gs_memory_s*
  %29 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %30 = bitcast %struct.gs_text_enum_s* %29 to i8*
  call void %25(%struct.gs_memory_s* %28, i8* %30, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i32 0, i32 0)) #3
  %31 = load i32, i32* %code, align 4, !tbaa !29
  store i32 %31, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.end
  %32 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call10 = call i32 @op_show_continue_pop(%struct.gs_context_state_s* %32, i32 1) #3
  store i32 %call10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.9, %if.then.5, %if.then
  %33 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  %34 = bitcast %struct.gs_text_enum_s** %penum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  %35 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  %36 = load i32, i32* %retval
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define internal i32 @zstringwidth(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %penum = alloca %struct.gs_text_enum_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.gs_text_enum_s** %penum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @op_show_setup(%struct.gs_context_state_s* %5, %struct.ref_s* %6) #3
  store i32 %call, i32* %code, align 4, !tbaa !29
  %7 = load i32, i32* %code, align 4, !tbaa !29
  %cmp = icmp ne i32 %7, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %8, i32 0, i32 0
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !30
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 1
  %bytes = bitcast %union.v* %value to i8**
  %11 = load i8*, i8** %bytes, align 8, !tbaa !1
  %12 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 2
  %13 = load i32, i32* %rsize, align 4, !tbaa !58
  %14 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %14, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %15 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !61
  %16 = bitcast %struct.gs_ref_memory_s* %15 to %struct.gs_memory_s*
  %call1 = call i32 @gs_stringwidth_begin(%struct.gs_state_s* %9, i8* %11, i32 %13, %struct.gs_memory_s* %16, %struct.gs_text_enum_s** %penum) #3
  store i32 %call1, i32* %code, align 4, !tbaa !29
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %17 = load i32, i32* %code, align 4, !tbaa !29
  store i32 %17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %18 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %enum_client_data = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %18, i32 0, i32 11
  %19 = bitcast i8** %enum_client_data to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @zstringwidth, i32 (%struct.gs_context_state_s*)** %19, align 8, !tbaa !1
  %20 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %21 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %call3 = call i32 @op_show_finish_setup(%struct.gs_context_state_s* %20, %struct.gs_text_enum_s* %21, i32 1, i32 (%struct.gs_context_state_s*)* @finish_stringwidth) #3
  store i32 %call3, i32* %code, align 4, !tbaa !29
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.then.5, label %if.end.10

if.then.5:                                        ; preds = %if.end
  %22 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory6 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %22, i32 0, i32 1
  %current7 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory6, i32 0, i32 0
  %23 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current7, align 8, !tbaa !61
  %24 = bitcast %struct.gs_ref_memory_s* %23 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %24, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %25 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !62
  %26 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory8 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %26, i32 0, i32 1
  %current9 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory8, i32 0, i32 0
  %27 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current9, align 8, !tbaa !61
  %28 = bitcast %struct.gs_ref_memory_s* %27 to %struct.gs_memory_s*
  %29 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %30 = bitcast %struct.gs_text_enum_s* %29 to i8*
  call void %25(%struct.gs_memory_s* %28, i8* %30, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i32 0, i32 0)) #3
  %31 = load i32, i32* %code, align 4, !tbaa !29
  store i32 %31, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %if.end
  %32 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call11 = call i32 @op_show_continue_pop(%struct.gs_context_state_s* %32, i32 1) #3
  store i32 %call11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.10, %if.then.5, %if.then
  %33 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  %34 = bitcast %struct.gs_text_enum_s** %penum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  %35 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  %36 = load i32, i32* %retval
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define internal i32 @zwidthshow(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @widthshow_aux(%struct.gs_context_state_s* %0, i32 0) #3
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @zfontbbox(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %bbox = alloca [4 x double], align 16
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast [4 x double]* %bbox to i8*
  call void @llvm.lifetime.start(i64 32, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %6 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 1
  %7 = load i8, i8* %arrayidx, align 1, !tbaa !65
  %conv = zext i8 %7 to i32
  %cmp = icmp eq i32 %conv, 2
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %8 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %8) #3
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 1
  %pdict = bitcast %union.v* %value to %struct.dict_s**
  %10 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !1
  %values = getelementptr inbounds %struct.dict_s, %struct.dict_s* %10, i32 0, i32 0
  %tas2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %values, i32 0, i32 0
  %type_attrs3 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas2, i32 0, i32 0
  %11 = load i16, i16* %type_attrs3, align 2, !tbaa !27
  %conv4 = zext i16 %11 to i32
  %and = and i32 %conv4, 32
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %do.body
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.6
  br label %do.end

do.end:                                           ; preds = %do.cond
  %12 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %12, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %13 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !61
  %14 = bitcast %struct.gs_ref_memory_s* %13 to %struct.gs_memory_s*
  %15 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [4 x double], [4 x double]* %bbox, i32 0, i32 0
  %call7 = call i32 @font_bbox_param(%struct.gs_memory_s* %14, %struct.ref_s* %15, double* %arraydecay) #3
  store i32 %call7, i32* %code, align 4, !tbaa !29
  %16 = load i32, i32* %code, align 4, !tbaa !29
  %cmp8 = icmp slt i32 %16, 0
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %do.end
  %17 = load i32, i32* %code, align 4, !tbaa !29
  store i32 %17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %do.end
  %arrayidx12 = getelementptr inbounds [4 x double], [4 x double]* %bbox, i32 0, i64 0
  %18 = load double, double* %arrayidx12, align 8, !tbaa !57
  %arrayidx13 = getelementptr inbounds [4 x double], [4 x double]* %bbox, i32 0, i64 2
  %19 = load double, double* %arrayidx13, align 8, !tbaa !57
  %cmp14 = fcmp olt double %18, %19
  br i1 %cmp14, label %land.lhs.true, label %if.else.41

land.lhs.true:                                    ; preds = %if.end.11
  %arrayidx16 = getelementptr inbounds [4 x double], [4 x double]* %bbox, i32 0, i64 1
  %20 = load double, double* %arrayidx16, align 8, !tbaa !57
  %arrayidx17 = getelementptr inbounds [4 x double], [4 x double]* %bbox, i32 0, i64 3
  %21 = load double, double* %arrayidx17, align 8, !tbaa !57
  %cmp18 = fcmp olt double %20, %21
  br i1 %cmp18, label %if.then.20, label %if.else.41

if.then.20:                                       ; preds = %land.lhs.true
  br label %do.body.21

do.body.21:                                       ; preds = %if.then.20
  %22 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i64 4
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op, align 8, !tbaa !1
  %23 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack22 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %23, i32 0, i32 26
  %stack23 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack22, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack23, i32 0, i32 2
  %24 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !20
  %cmp24 = icmp ugt %struct.ref_s* %add.ptr, %24
  br i1 %cmp24, label %if.then.26, label %if.else

if.then.26:                                       ; preds = %do.body.21
  %25 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack27 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %25, i32 0, i32 26
  %stack28 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack27, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack28, i32 0, i32 7
  store i32 4, i32* %requested, align 4, !tbaa !21
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body.21
  %26 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %27 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack29 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %27, i32 0, i32 26
  %stack30 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack29, i32 0, i32 0
  %p31 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack30, i32 0, i32 0
  store %struct.ref_s* %26, %struct.ref_s** %p31, align 8, !tbaa !5
  br label %if.end.32

if.end.32:                                        ; preds = %if.else
  br label %do.cond.33

do.cond.33:                                       ; preds = %if.end.32
  br label %do.end.34

do.end.34:                                        ; preds = %do.cond.33
  %28 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i64 -4
  %arraydecay36 = getelementptr inbounds [4 x double], [4 x double]* %bbox, i32 0, i32 0
  %call37 = call i32 @make_reals(%struct.ref_s* %add.ptr35, double* %arraydecay36, i32 4) #3
  %29 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i32 0, i32 1
  %boolval = bitcast %union.v* %value38 to i16*
  store i16 1, i16* %boolval, align 2, !tbaa !67
  %30 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i32 0, i32 0
  %type_attrs40 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas39, i32 0, i32 0
  store i16 256, i16* %type_attrs40, align 2, !tbaa !27
  br label %if.end.46

if.else.41:                                       ; preds = %land.lhs.true, %if.end.11
  %31 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value42 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i32 0, i32 1
  %boolval43 = bitcast %union.v* %value42 to i16*
  store i16 0, i16* %boolval43, align 2, !tbaa !67
  %32 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas44 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i32 0, i32 0
  %type_attrs45 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas44, i32 0, i32 0
  store i16 256, i16* %type_attrs45, align 2, !tbaa !27
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.41, %do.end.34
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.46, %if.then.26, %if.then.10, %if.then.5, %if.then
  %33 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  %34 = bitcast [4 x double]* %bbox to i8*
  call void @llvm.lifetime.end(i64 32, i8* %34) #1
  %35 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  %36 = load i32, i32* %retval
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define internal i32 @zpdfawidthshow(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @awidthshow_aux(%struct.gs_context_state_s* %0, i32 1) #3
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @zpdfwidthshow(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @widthshow_aux(%struct.gs_context_state_s* %0, i32 1) #3
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @finish_show(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @op_show_continue(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %code = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 0
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !30
  %3 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %3, i32 0, i32 25
  %stack = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %4 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !19
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 1
  %pstruct = bitcast %union.v* %value to %struct.obj_header_s**
  %5 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %6 = bitcast %struct.obj_header_s* %5 to %struct.gs_text_enum_s*
  %call = call i32 @gs_text_update_dev_color(%struct.gs_state_s* %2, %struct.gs_text_enum_s* %6) #3
  store i32 %call, i32* %code, align 4, !tbaa !29
  %7 = load i32, i32* %code, align 4, !tbaa !29
  %cmp = icmp sge i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %9, i32 0, i32 25
  %stack2 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack1, i32 0, i32 0
  %p3 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack2, i32 0, i32 0
  %10 = load %struct.ref_s*, %struct.ref_s** %p3, align 8, !tbaa !19
  %value4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 1
  %pstruct5 = bitcast %union.v* %value4 to %struct.obj_header_s**
  %11 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct5, align 8, !tbaa !1
  %12 = bitcast %struct.obj_header_s* %11 to %struct.gs_text_enum_s*
  %call6 = call i32 @gs_text_process(%struct.gs_text_enum_s* %12) #3
  %call7 = call i32 @op_show_continue_dispatch(%struct.gs_context_state_s* %8, i32 0, i32 %call6) #3
  store i32 %call7, i32* %code, align 4, !tbaa !29
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load i32, i32* %code, align 4, !tbaa !29
  %14 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #1
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal i32 @zincachedevice(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i64 1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op, align 8, !tbaa !1
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 26
  %stack2 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack2, i32 0, i32 2
  %5 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !20
  %cmp = icmp ugt %struct.ref_s* %add.ptr, %5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %6, i32 0, i32 26
  %stack4 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack3, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack4, i32 0, i32 7
  store i32 1, i32* %requested, align 4, !tbaa !21
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack5 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %8, i32 0, i32 26
  %stack6 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack5, i32 0, i32 0
  %p7 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack6, i32 0, i32 0
  store %struct.ref_s* %7, %struct.ref_s** %p7, align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %9, i32 0, i32 0
  %10 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !30
  %in_cachedevice = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %10, i32 0, i32 74
  %11 = load i32, i32* %in_cachedevice, align 4, !tbaa !68
  %tobool = icmp ne i32 %11, 0
  %lnot = xor i1 %tobool, true
  %lnot8 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot8 to i32
  %conv = trunc i32 %lnot.ext to i16
  %12 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 1
  %boolval = bitcast %union.v* %value to i16*
  store i16 %conv, i16* %boolval, align 2, !tbaa !67
  %13 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 256, i16* %type_attrs, align 2, !tbaa !27
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  %14 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define void @glyph_ref(%struct.gs_memory_s* %mem, i64 %glyph, %struct.ref_s* %gref) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %glyph.addr = alloca i64, align 8
  %gref.addr = alloca %struct.ref_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i64 %glyph, i64* %glyph.addr, align 8, !tbaa !55
  store %struct.ref_s* %gref, %struct.ref_s** %gref.addr, align 8, !tbaa !1
  %0 = load i64, i64* %glyph.addr, align 8, !tbaa !55
  %cmp = icmp ult i64 %0, 2147483648
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %1, i32 0, i32 2
  %2 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !69
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %2, i32 0, i32 16
  %3 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !70
  %4 = load i64, i64* %glyph.addr, align 8, !tbaa !55
  %conv = trunc i64 %4 to i32
  %5 = load %struct.ref_s*, %struct.ref_s** %gref.addr, align 8, !tbaa !1
  call void @names_index_ref(%struct.name_table_s* %3, i32 %conv, %struct.ref_s* %5) #3
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load i64, i64* %glyph.addr, align 8, !tbaa !55
  %sub = sub i64 %6, 2147483648
  %7 = load %struct.ref_s*, %struct.ref_s** %gref.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  store i64 %sub, i64* %intval, align 8, !tbaa !55
  %8 = load %struct.ref_s*, %struct.ref_s** %gref.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 2816, i16* %type_attrs, align 2, !tbaa !27
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare void @names_index_ref(%struct.name_table_s*, i32, %struct.ref_s*) #2

; Function Attrs: nounwind uwtable
define i32 @op_show_setup(%struct.gs_context_state_s* %i_ctx_p, %struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op.addr = alloca %struct.ref_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %1 = load i16, i16* %type_attrs, align 2, !tbaa !27
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 16160
  %cmp = icmp eq i32 %and, 4640
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i32 0, i32 0
  %type_attrs3 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas2, i32 0, i32 0
  %3 = bitcast i16* %type_attrs3 to i8*
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 1
  %4 = load i8, i8* %arrayidx, align 1, !tbaa !65
  %conv4 = zext i8 %4 to i32
  %cmp5 = icmp eq i32 %conv4, 18
  br i1 %cmp5, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then
  %5 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %5) #3
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ -7, %cond.false ]
  store i32 %cond, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call7 = call i32 @op_show_enum_setup(%struct.gs_context_state_s* %6) #3
  store i32 %call7, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %cond.end
  %7 = load i32, i32* %retval
  ret i32 %7
}

declare i32 @check_type_failed(%struct.ref_s*) #2

; Function Attrs: nounwind uwtable
define i32 @op_show_enum_setup(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %es_code_ = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 25
  %stack = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %1 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !19
  %2 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %2, i32 0, i32 25
  %stack2 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack1, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack2, i32 0, i32 2
  %3 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !72
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i64 -11
  %cmp = icmp ugt %struct.ref_s* %1, %add.ptr
  br i1 %cmp, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %4 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %5, i32 0, i32 25
  %stack4 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack3, i32 0, i32 0
  %call = call i32 @ref_stack_extend(%struct.ref_stack_s* %stack4, i32 11) #3
  store i32 %call, i32* %es_code_, align 4, !tbaa !29
  %6 = load i32, i32* %es_code_, align 4, !tbaa !29
  %cmp5 = icmp slt i32 %6, 0
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  %7 = load i32, i32* %es_code_, align 4, !tbaa !29
  store i32 %7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.6
  %8 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.7

if.end.7:                                         ; preds = %cleanup.cont, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.7, %cleanup
  %9 = load i32, i32* %retval
  ret i32 %9

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare i32 @ref_stack_extend(%struct.ref_stack_s*, i32) #2

; Function Attrs: nounwind uwtable
define i32 @op_show_finish_setup(%struct.gs_context_state_s* %i_ctx_p, %struct.gs_text_enum_s* %penum, i32 %npop, i32 (%struct.gs_context_state_s*)* %endproc) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %penum.addr = alloca %struct.gs_text_enum_s*, align 8
  %npop.addr = alloca i32, align 4
  %endproc.addr = alloca i32 (%struct.gs_context_state_s*)*, align 8
  %osenum = alloca %struct.gs_text_enum_s*, align 8
  %ep = alloca %struct.ref_s*, align 8
  %glyph = alloca i64, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %text26 = alloca %struct.gs_text_params_s, align 8
  %ft = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.gs_text_enum_s* %penum, %struct.gs_text_enum_s** %penum.addr, align 8, !tbaa !1
  store i32 %npop, i32* %npop.addr, align 4, !tbaa !29
  store i32 (%struct.gs_context_state_s*)* %endproc, i32 (%struct.gs_context_state_s*)** %endproc.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_text_enum_s** %osenum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call %struct.gs_text_enum_s* @op_show_find(%struct.gs_context_state_s* %1) #3
  store %struct.gs_text_enum_s* %call, %struct.gs_text_enum_s** %osenum, align 8, !tbaa !1
  %2 = bitcast %struct.ref_s** %ep to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %3, i32 0, i32 25
  %stack = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %4 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !19
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i64 9
  store %struct.ref_s* %add.ptr, %struct.ref_s** %ep, align 8, !tbaa !1
  %5 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %6, i32 0, i32 0
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !30
  %memory = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %7, i32 0, i32 1
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !73
  %call1 = call i32 @gs_currentcpsimode(%struct.gs_memory_s* %8) #3
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %9 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs2 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %10, i32 0, i32 0
  %11 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs2, align 8, !tbaa !30
  %12 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum.addr, align 8, !tbaa !1
  %call3 = call %struct.gs_text_params_s* @gs_get_text_params(%struct.gs_text_enum_s* %12) #3
  %13 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory4 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %13, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory4, i32 0, i32 0
  %14 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !61
  %15 = bitcast %struct.gs_ref_memory_s* %14 to %struct.gs_memory_s*
  %call5 = call i32 @gs_text_count_chars(%struct.gs_state_s* %11, %struct.gs_text_params_s* %call3, %struct.gs_memory_s* %15) #3
  store i32 %call5, i32* %code, align 4, !tbaa !29
  %16 = load i32, i32* %code, align 4, !tbaa !29
  %cmp = icmp slt i32 %16, 0
  br i1 %cmp, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  %17 = load i32, i32* %code, align 4, !tbaa !29
  store i32 %17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.6
  %18 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.165 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.7

if.end.7:                                         ; preds = %cleanup.cont, %entry
  %19 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %osenum, align 8, !tbaa !1
  %tobool8 = icmp ne %struct.gs_text_enum_s* %19, null
  br i1 %tobool8, label %land.lhs.true, label %if.end.47

land.lhs.true:                                    ; preds = %if.end.7
  %20 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %osenum, align 8, !tbaa !1
  %text = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %20, i32 0, i32 0
  %operation = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text, i32 0, i32 0
  %21 = load i32, i32* %operation, align 4, !tbaa !74
  %and = and i32 %21, 66049
  %cmp9 = icmp eq i32 %and, 66049
  br i1 %cmp9, label %land.lhs.true.10, label %if.end.47

land.lhs.true.10:                                 ; preds = %land.lhs.true
  %22 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum.addr, align 8, !tbaa !1
  %text11 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %22, i32 0, i32 0
  %operation12 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text11, i32 0, i32 0
  %23 = load i32, i32* %operation12, align 4, !tbaa !74
  %and13 = and i32 %23, 131073
  %cmp14 = icmp eq i32 %and13, 131073
  br i1 %cmp14, label %land.lhs.true.15, label %if.end.47

land.lhs.true.15:                                 ; preds = %land.lhs.true.10
  %24 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %osenum, align 8, !tbaa !1
  %call16 = call i64 @gs_text_current_glyph(%struct.gs_text_enum_s* %24) #3
  store i64 %call16, i64* %glyph, align 8, !tbaa !55
  %cmp17 = icmp ne i64 %call16, 2147483647
  br i1 %cmp17, label %land.lhs.true.18, label %if.end.47

land.lhs.true.18:                                 ; preds = %land.lhs.true.15
  %25 = load i64, i64* %glyph, align 8, !tbaa !55
  %cmp19 = icmp uge i64 %25, 2147483648
  br i1 %cmp19, label %land.lhs.true.20, label %if.end.47

land.lhs.true.20:                                 ; preds = %land.lhs.true.18
  %26 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %osenum, align 8, !tbaa !1
  %call21 = call %struct.gs_font_s* @gs_text_current_font(%struct.gs_text_enum_s* %26) #3
  %27 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum.addr, align 8, !tbaa !1
  %call22 = call %struct.gs_font_s* @gs_text_current_font(%struct.gs_text_enum_s* %27) #3
  %call23 = call i32 @gs_default_same_font(%struct.gs_font_s* %call21, %struct.gs_font_s* %call22, i32 1) #3
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then.25, label %if.end.47

if.then.25:                                       ; preds = %land.lhs.true.20
  %28 = bitcast %struct.gs_text_params_s* %text26 to i8*
  call void @llvm.lifetime.start(i64 88, i8* %28) #1
  %29 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum.addr, align 8, !tbaa !1
  %text27 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %29, i32 0, i32 0
  %size = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text27, i32 0, i32 2
  %30 = load i32, i32* %size, align 4, !tbaa !75
  %cmp28 = icmp eq i32 %30, 1
  br i1 %cmp28, label %land.lhs.true.29, label %if.then.35

land.lhs.true.29:                                 ; preds = %if.then.25
  %31 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum.addr, align 8, !tbaa !1
  %text30 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %31, i32 0, i32 0
  %data = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text30, i32 0, i32 1
  %bytes = bitcast %union.sd_* %data to i8**
  %32 = load i8*, i8** %bytes, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %32, i64 0
  %33 = load i8, i8* %arrayidx, align 1, !tbaa !65
  %conv = zext i8 %33 to i64
  %34 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %osenum, align 8, !tbaa !1
  %call31 = call i64 @gs_text_current_char(%struct.gs_text_enum_s* %34) #3
  %and32 = and i64 %call31, 255
  %cmp33 = icmp eq i64 %conv, %and32
  br i1 %cmp33, label %if.end.36, label %if.then.35

if.then.35:                                       ; preds = %land.lhs.true.29, %if.then.25
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.44

if.end.36:                                        ; preds = %land.lhs.true.29
  %35 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum.addr, align 8, !tbaa !1
  %text37 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %35, i32 0, i32 0
  %36 = bitcast %struct.gs_text_params_s* %text26 to i8*
  %37 = bitcast %struct.gs_text_params_s* %text37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* %37, i64 88, i32 8, i1 false), !tbaa.struct !76
  %operation38 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text26, i32 0, i32 0
  %38 = load i32, i32* %operation38, align 4, !tbaa !77
  %and39 = and i32 %38, -32
  %or = or i32 %and39, 32
  %operation40 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text26, i32 0, i32 0
  store i32 %or, i32* %operation40, align 4, !tbaa !77
  %39 = load i64, i64* %glyph, align 8, !tbaa !55
  %data41 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text26, i32 0, i32 1
  %d_glyph = bitcast %union.sd_* %data41 to i64*
  store i64 %39, i64* %d_glyph, align 8, !tbaa !55
  %size42 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text26, i32 0, i32 2
  store i32 1, i32* %size42, align 4, !tbaa !78
  %40 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum.addr, align 8, !tbaa !1
  %call43 = call i32 @gs_text_restart(%struct.gs_text_enum_s* %40, %struct.gs_text_params_s* %text26) #3
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.44

cleanup.44:                                       ; preds = %if.end.36, %if.then.35
  %41 = bitcast %struct.gs_text_params_s* %text26 to i8*
  call void @llvm.lifetime.end(i64 88, i8* %41) #1
  %cleanup.dest.45 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.45, label %cleanup.165 [
    i32 0, label %cleanup.cont.46
  ]

cleanup.cont.46:                                  ; preds = %cleanup.44
  br label %if.end.47

if.end.47:                                        ; preds = %cleanup.cont.46, %land.lhs.true.20, %land.lhs.true.18, %land.lhs.true.15, %land.lhs.true.10, %land.lhs.true, %if.end.7
  %42 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %osenum, align 8, !tbaa !1
  %tobool48 = icmp ne %struct.gs_text_enum_s* %42, null
  br i1 %tobool48, label %land.lhs.true.49, label %if.end.62

land.lhs.true.49:                                 ; preds = %if.end.47
  %43 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %osenum, align 8, !tbaa !1
  %current_font = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %43, i32 0, i32 12
  %44 = load %struct.gs_font_s*, %struct.gs_font_s** %current_font, align 8, !tbaa !79
  %FontType = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %44, i32 0, i32 11
  %45 = load i32, i32* %FontType, align 4, !tbaa !50
  %cmp50 = icmp eq i32 %45, 3
  br i1 %cmp50, label %land.lhs.true.52, label %if.end.62

land.lhs.true.52:                                 ; preds = %land.lhs.true.49
  %46 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %osenum, align 8, !tbaa !1
  %orig_font = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %46, i32 0, i32 4
  %47 = load %struct.gs_font_s*, %struct.gs_font_s** %orig_font, align 8, !tbaa !43
  %FontType53 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %47, i32 0, i32 11
  %48 = load i32, i32* %FontType53, align 4, !tbaa !50
  %cmp54 = icmp eq i32 %48, 0
  br i1 %cmp54, label %land.lhs.true.56, label %if.end.62

land.lhs.true.56:                                 ; preds = %land.lhs.true.52
  %49 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %osenum, align 8, !tbaa !1
  %orig_font57 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %49, i32 0, i32 4
  %50 = load %struct.gs_font_s*, %struct.gs_font_s** %orig_font57, align 8, !tbaa !43
  %51 = bitcast %struct.gs_font_s* %50 to %struct.gs_font_type0_s*
  %data58 = getelementptr inbounds %struct.gs_font_type0_s, %struct.gs_font_type0_s* %51, i32 0, i32 23
  %FMapType = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %data58, i32 0, i32 0
  %52 = load i32, i32* %FMapType, align 4, !tbaa !80
  %cmp59 = icmp eq i32 %52, 9
  br i1 %cmp59, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %land.lhs.true.56
  %53 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %osenum, align 8, !tbaa !1
  %returned = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %53, i32 0, i32 28
  %current_glyph = getelementptr inbounds %struct.gs_text_returned_s, %struct.gs_text_returned_s* %returned, i32 0, i32 1
  %54 = load i64, i64* %current_glyph, align 8, !tbaa !84
  %55 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum.addr, align 8, !tbaa !1
  %outer_CID = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %55, i32 0, i32 13
  store i64 %54, i64* %outer_CID, align 8, !tbaa !85
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.61, %land.lhs.true.56, %land.lhs.true.52, %land.lhs.true.49, %if.end.47
  %56 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %osenum, align 8, !tbaa !1
  %cmp63 = icmp eq %struct.gs_text_enum_s* %56, null
  br i1 %cmp63, label %land.lhs.true.65, label %if.end.85

land.lhs.true.65:                                 ; preds = %if.end.62
  %57 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum.addr, align 8, !tbaa !1
  %text66 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %57, i32 0, i32 0
  %operation67 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text66, i32 0, i32 0
  %58 = load i32, i32* %operation67, align 4, !tbaa !74
  %and68 = and i32 %58, 40
  %tobool69 = icmp ne i32 %and68, 0
  br i1 %tobool69, label %if.end.85, label %if.then.70

if.then.70:                                       ; preds = %land.lhs.true.65
  %59 = bitcast i32* %ft to i8*
  call void @llvm.lifetime.start(i64 4, i8* %59) #1
  %60 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs71 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %60, i32 0, i32 0
  %61 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs71, align 8, !tbaa !30
  %root_font = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %61, i32 0, i32 71
  %62 = load %struct.gs_font_s*, %struct.gs_font_s** %root_font, align 8, !tbaa !86
  %FontType72 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %62, i32 0, i32 11
  %63 = load i32, i32* %FontType72, align 4, !tbaa !50
  store i32 %63, i32* %ft, align 4, !tbaa !29
  %64 = load i32, i32* %ft, align 4, !tbaa !29
  %cmp73 = icmp sge i32 %64, 9
  br i1 %cmp73, label %land.lhs.true.75, label %lor.lhs.false

land.lhs.true.75:                                 ; preds = %if.then.70
  %65 = load i32, i32* %ft, align 4, !tbaa !29
  %cmp76 = icmp sle i32 %65, 11
  br i1 %cmp76, label %if.then.80, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.75, %if.then.70
  %66 = load i32, i32* %ft, align 4, !tbaa !29
  %cmp78 = icmp eq i32 %66, 32
  br i1 %cmp78, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %lor.lhs.false, %land.lhs.true.75
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.82

if.end.81:                                        ; preds = %lor.lhs.false
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.82

cleanup.82:                                       ; preds = %if.end.81, %if.then.80
  %67 = bitcast i32* %ft to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #1
  %cleanup.dest.83 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.83, label %cleanup.165 [
    i32 0, label %cleanup.cont.84
  ]

cleanup.cont.84:                                  ; preds = %cleanup.82
  br label %if.end.85

if.end.85:                                        ; preds = %cleanup.cont.84, %land.lhs.true.65, %if.end.62
  %68 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr86 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %68, i64 -8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr86, i32 0, i32 1
  %opproc = bitcast %union.v* %value to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @op_show_cleanup, i32 (%struct.gs_context_state_s*)** %opproc, align 8, !tbaa !1
  %69 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr87 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %69, i64 -8
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr87, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 3712, i16* %type_attrs, align 2, !tbaa !27
  %70 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr88 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %70, i64 -8
  %tas89 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr88, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas89, i32 0, i32 2
  store i32 1, i32* %rsize, align 4, !tbaa !58
  %71 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %endproc.addr, align 8, !tbaa !1
  %cmp90 = icmp eq i32 (%struct.gs_context_state_s*)* %71, null
  br i1 %cmp90, label %if.then.92, label %if.end.93

if.then.92:                                       ; preds = %if.end.85
  store i32 (%struct.gs_context_state_s*)* @finish_show, i32 (%struct.gs_context_state_s*)** %endproc.addr, align 8, !tbaa !1
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.92, %if.end.85
  %72 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %arrayidx94 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %72, i64 -1
  %tas95 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx94, i32 0, i32 0
  %type_attrs96 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas95, i32 0, i32 0
  store i16 3584, i16* %type_attrs96, align 2, !tbaa !27
  %73 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %73, i32 0, i32 26
  %stack97 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p98 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack97, i32 0, i32 0
  %74 = load %struct.ref_s*, %struct.ref_s** %p98, align 8, !tbaa !87
  %add.ptr99 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %74, i64 1
  %75 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack100 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %75, i32 0, i32 26
  %stack101 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack100, i32 0, i32 0
  %bot = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack101, i32 0, i32 1
  %76 = load %struct.ref_s*, %struct.ref_s** %bot, align 8, !tbaa !88
  %sub.ptr.lhs.cast = ptrtoint %struct.ref_s* %add.ptr99 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.ref_s* %76 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 16
  %77 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack102 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %77, i32 0, i32 26
  %stack103 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack102, i32 0, i32 0
  %extension_used = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack103, i32 0, i32 5
  %78 = load i32, i32* %extension_used, align 4, !tbaa !89
  %conv104 = zext i32 %78 to i64
  %add = add nsw i64 %sub.ptr.div, %conv104
  %79 = load i32, i32* %npop.addr, align 4, !tbaa !29
  %conv105 = sext i32 %79 to i64
  %sub = sub nsw i64 %add, %conv105
  %80 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %arrayidx106 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %80, i64 -2
  %value107 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx106, i32 0, i32 1
  %intval = bitcast %union.v* %value107 to i64*
  store i64 %sub, i64* %intval, align 8, !tbaa !55
  %81 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %arrayidx108 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %81, i64 -2
  %tas109 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx108, i32 0, i32 0
  %type_attrs110 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas109, i32 0, i32 0
  store i16 2816, i16* %type_attrs110, align 2, !tbaa !27
  %82 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %82, i32 0, i32 24
  %stack111 = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack, i32 0, i32 0
  %p112 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack111, i32 0, i32 0
  %83 = load %struct.ref_s*, %struct.ref_s** %p112, align 8, !tbaa !87
  %add.ptr113 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %83, i64 1
  %84 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack114 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %84, i32 0, i32 24
  %stack115 = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack114, i32 0, i32 0
  %bot116 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack115, i32 0, i32 1
  %85 = load %struct.ref_s*, %struct.ref_s** %bot116, align 8, !tbaa !88
  %sub.ptr.lhs.cast117 = ptrtoint %struct.ref_s* %add.ptr113 to i64
  %sub.ptr.rhs.cast118 = ptrtoint %struct.ref_s* %85 to i64
  %sub.ptr.sub119 = sub i64 %sub.ptr.lhs.cast117, %sub.ptr.rhs.cast118
  %sub.ptr.div120 = sdiv exact i64 %sub.ptr.sub119, 16
  %86 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack121 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %86, i32 0, i32 24
  %stack122 = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack121, i32 0, i32 0
  %extension_used123 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack122, i32 0, i32 5
  %87 = load i32, i32* %extension_used123, align 4, !tbaa !89
  %conv124 = zext i32 %87 to i64
  %add125 = add nsw i64 %sub.ptr.div120, %conv124
  %88 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %arrayidx126 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %88, i64 -3
  %value127 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx126, i32 0, i32 1
  %intval128 = bitcast %union.v* %value127 to i64*
  store i64 %add125, i64* %intval128, align 8, !tbaa !55
  %89 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %arrayidx129 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %89, i64 -3
  %tas130 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx129, i32 0, i32 0
  %type_attrs131 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas130, i32 0, i32 0
  store i16 2816, i16* %type_attrs131, align 2, !tbaa !27
  %90 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs132 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %90, i32 0, i32 0
  %91 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs132, align 8, !tbaa !30
  %level = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %91, i32 0, i32 77
  %92 = load i32, i32* %level, align 4, !tbaa !90
  %conv133 = sext i32 %92 to i64
  %93 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %arrayidx134 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %93, i64 -4
  %value135 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx134, i32 0, i32 1
  %intval136 = bitcast %union.v* %value135 to i64*
  store i64 %conv133, i64* %intval136, align 8, !tbaa !55
  %94 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %arrayidx137 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %94, i64 -4
  %tas138 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx137, i32 0, i32 0
  %type_attrs139 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas138, i32 0, i32 0
  store i16 2816, i16* %type_attrs139, align 2, !tbaa !27
  %95 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %arrayidx140 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %95, i64 -5
  %tas141 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx140, i32 0, i32 0
  %type_attrs142 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas141, i32 0, i32 0
  store i16 3584, i16* %type_attrs142, align 2, !tbaa !27
  %96 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %arrayidx143 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %96, i64 -6
  %tas144 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx143, i32 0, i32 0
  %type_attrs145 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas144, i32 0, i32 0
  store i16 3584, i16* %type_attrs145, align 2, !tbaa !27
  %97 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %endproc.addr, align 8, !tbaa !1
  %98 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %arrayidx146 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %98, i64 -7
  %value147 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx146, i32 0, i32 1
  %opproc148 = bitcast %union.v* %value147 to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* %97, i32 (%struct.gs_context_state_s*)** %opproc148, align 8, !tbaa !1
  %99 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %arrayidx149 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %99, i64 -7
  %tas150 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx149, i32 0, i32 0
  %type_attrs151 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas150, i32 0, i32 0
  store i16 3968, i16* %type_attrs151, align 2, !tbaa !27
  %100 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %arrayidx152 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %100, i64 -7
  %tas153 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx152, i32 0, i32 0
  %rsize154 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas153, i32 0, i32 2
  store i32 0, i32* %rsize154, align 4, !tbaa !58
  %101 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum.addr, align 8, !tbaa !1
  %102 = bitcast %struct.gs_text_enum_s* %101 to %struct.obj_header_s*
  %103 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %value155 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %103, i32 0, i32 1
  %pstruct = bitcast %union.v* %value155 to %struct.obj_header_s**
  store %struct.obj_header_s* %102, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %104 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory156 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %104, i32 0, i32 1
  %current_space = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory156, i32 0, i32 2
  %105 = load i32, i32* %current_space, align 4, !tbaa !91
  %or157 = or i32 0, %105
  %add158 = add i32 2048, %or157
  %conv159 = trunc i32 %add158 to i16
  %106 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %tas160 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %106, i32 0, i32 0
  %type_attrs161 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas160, i32 0, i32 0
  store i16 %conv159, i16* %type_attrs161, align 2, !tbaa !27
  %107 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %108 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack162 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %108, i32 0, i32 25
  %stack163 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack162, i32 0, i32 0
  %p164 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack163, i32 0, i32 0
  store %struct.ref_s* %107, %struct.ref_s** %p164, align 8, !tbaa !19
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.165

cleanup.165:                                      ; preds = %if.end.93, %cleanup.82, %cleanup.44, %cleanup
  %109 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.end(i64 8, i8* %109) #1
  %110 = bitcast %struct.ref_s** %ep to i8*
  call void @llvm.lifetime.end(i64 8, i8* %110) #1
  %111 = bitcast %struct.gs_text_enum_s** %osenum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %111) #1
  %112 = load i32, i32* %retval
  ret i32 %112
}

declare i32 @gs_currentcpsimode(%struct.gs_memory_s*) #2

declare i32 @gs_text_count_chars(%struct.gs_state_s*, %struct.gs_text_params_s*, %struct.gs_memory_s*) #2

declare %struct.gs_text_params_s* @gs_get_text_params(%struct.gs_text_enum_s*) #2

declare i64 @gs_text_current_glyph(%struct.gs_text_enum_s*) #2

declare i32 @gs_default_same_font(%struct.gs_font_s*, %struct.gs_font_s*, i32) #2

declare %struct.gs_font_s* @gs_text_current_font(%struct.gs_text_enum_s*) #2

declare i64 @gs_text_current_char(%struct.gs_text_enum_s*) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @gs_text_restart(%struct.gs_text_enum_s*, %struct.gs_text_params_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @op_show_cleanup(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @op_show_restore(%struct.gs_context_state_s* %0, i32 1) #3
  ret i32 %call
}

declare i32 @gs_text_update_dev_color(%struct.gs_state_s*, %struct.gs_text_enum_s*) #2

; Function Attrs: nounwind uwtable
define i32 @op_show_continue_dispatch(%struct.gs_context_state_s* %i_ctx_p, i32 %npop, i32 %code) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %npop.addr = alloca i32, align 4
  %code.addr = alloca i32, align 4
  %op = alloca %struct.ref_s*, align 8
  %penum = alloca %struct.gs_text_enum_s*, align 8
  %save_osp = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  %pslot = alloca %struct.ref_s*, align 8
  %pfont = alloca %struct.gs_font_s*, align 8
  %pfdata = alloca %struct.font_data_s*, align 8
  %chr = alloca i64, align 8
  %glyph = alloca i64, align 8
  %gref = alloca %struct.ref_s, align 8
  %pencoding = alloca %struct.ref_s*, align 8
  %eref = alloca %struct.ref_s, align 8
  %gref152 = alloca %struct.ref_s, align 8
  %pfont265 = alloca %struct.gs_font_s*, align 8
  %cnref = alloca %struct.ref_s, align 8
  %cont = alloca i32 (%struct.gs_context_state_s*)*, align 8
  %exec_cont = alloca i32 (%struct.gs_context_state_s*)*, align 8
  %glyph266 = alloca i64, align 8
  %code267 = alloca i32, align 4
  %pfont42 = alloca %struct.gs_font_type42_s*, align 8
  %glyph_index = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store i32 %npop, i32* %npop.addr, align 4, !tbaa !29
  store i32 %code, i32* %code.addr, align 4, !tbaa !29
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  %3 = load i32, i32* %npop.addr, align 4, !tbaa !29
  %idx.ext = sext i32 %3 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 %idx.neg
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op, align 8, !tbaa !1
  %4 = bitcast %struct.gs_text_enum_s** %penum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %5, i32 0, i32 25
  %stack1 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p2 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack1, i32 0, i32 0
  %6 = load %struct.ref_s*, %struct.ref_s** %p2, align 8, !tbaa !19
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 1
  %pstruct = bitcast %union.v* %value to %struct.obj_header_s**
  %7 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %8 = bitcast %struct.obj_header_s* %7 to %struct.gs_text_enum_s*
  store %struct.gs_text_enum_s* %8, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %9 = load i32, i32* %code.addr, align 4, !tbaa !29
  switch i32 %9, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb.17
    i32 1, label %sw.bb.64
    i32 3, label %sw.bb.264
  ]

sw.bb:                                            ; preds = %entry
  %10 = bitcast %struct.ref_s** %save_osp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %11, i32 0, i32 26
  %stack4 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack3, i32 0, i32 0
  %p5 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack4, i32 0, i32 0
  %12 = load %struct.ref_s*, %struct.ref_s** %p5, align 8, !tbaa !5
  store %struct.ref_s* %12, %struct.ref_s** %save_osp, align 8, !tbaa !1
  %13 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %14 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack6 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %14, i32 0, i32 26
  %stack7 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack6, i32 0, i32 0
  %p8 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack7, i32 0, i32 0
  store %struct.ref_s* %13, %struct.ref_s** %p8, align 8, !tbaa !5
  %15 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack9 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %15, i32 0, i32 25
  %stack10 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack9, i32 0, i32 0
  %p11 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack10, i32 0, i32 0
  %16 = load %struct.ref_s*, %struct.ref_s** %p11, align 8, !tbaa !19
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i64 -7
  %value12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 1
  %opproc = bitcast %union.v* %value12 to i32 (%struct.gs_context_state_s*)**
  %17 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %opproc, align 8, !tbaa !1
  %18 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 %17(%struct.gs_context_state_s* %18) #3
  store i32 %call, i32* %code.addr, align 4, !tbaa !29
  %19 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %20 = load i32, i32* %code.addr, align 4, !tbaa !29
  %call13 = call i32 @op_show_free(%struct.gs_context_state_s* %19, i32 %20) #3
  %21 = load i32, i32* %code.addr, align 4, !tbaa !29
  %cmp = icmp slt i32 %21, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %22 = load %struct.ref_s*, %struct.ref_s** %save_osp, align 8, !tbaa !1
  %23 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack14 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %23, i32 0, i32 26
  %stack15 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack14, i32 0, i32 0
  %p16 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack15, i32 0, i32 0
  store %struct.ref_s* %22, %struct.ref_s** %p16, align 8, !tbaa !5
  %24 = load i32, i32* %code.addr, align 4, !tbaa !29
  store i32 %24, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  store i32 14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %25 = bitcast %struct.ref_s** %save_osp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  br label %cleanup.310

sw.bb.17:                                         ; preds = %entry
  %26 = bitcast %struct.ref_s** %pslot to i8*
  call void @llvm.lifetime.start(i64 8, i8* %26) #1
  %27 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack18 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %27, i32 0, i32 25
  %stack19 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack18, i32 0, i32 0
  %p20 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack19, i32 0, i32 0
  %28 = load %struct.ref_s*, %struct.ref_s** %p20, align 8, !tbaa !19
  %arrayidx21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i64 -1
  store %struct.ref_s* %arrayidx21, %struct.ref_s** %pslot, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %sw.bb.17
  %29 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i64 2
  store %struct.ref_s* %add.ptr22, %struct.ref_s** %op, align 8, !tbaa !1
  %30 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack23 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %30, i32 0, i32 26
  %stack24 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack23, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack24, i32 0, i32 2
  %31 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !20
  %cmp25 = icmp ugt %struct.ref_s* %add.ptr22, %31
  br i1 %cmp25, label %if.then.26, label %if.else

if.then.26:                                       ; preds = %do.body
  %32 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack27 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %32, i32 0, i32 26
  %stack28 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack27, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack28, i32 0, i32 7
  store i32 2, i32* %requested, align 4, !tbaa !21
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.63

if.else:                                          ; preds = %do.body
  %33 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %34 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack29 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %34, i32 0, i32 26
  %stack30 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack29, i32 0, i32 0
  %p31 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack30, i32 0, i32 0
  store %struct.ref_s* %33, %struct.ref_s** %p31, align 8, !tbaa !5
  br label %if.end.32

if.end.32:                                        ; preds = %if.else
  br label %do.cond

do.cond:                                          ; preds = %if.end.32
  br label %do.end

do.end:                                           ; preds = %do.cond
  %35 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %call33 = call i64 @gs_text_current_char(%struct.gs_text_enum_s* %35) #3
  %36 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %36, i64 -1
  %value35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr34, i32 0, i32 1
  %intval = bitcast %union.v* %value35 to i64*
  store i64 %call33, i64* %intval, align 8, !tbaa !55
  %37 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr36 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %37, i64 -1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr36, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 2816, i16* %type_attrs, align 2, !tbaa !27
  %38 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %call37 = call i64 @gs_text_next_char(%struct.gs_text_enum_s* %38) #3
  %39 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %39, i32 0, i32 1
  %intval39 = bitcast %union.v* %value38 to i64*
  store i64 %call37, i64* %intval39, align 8, !tbaa !55
  %40 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas40 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %40, i32 0, i32 0
  %type_attrs41 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas40, i32 0, i32 0
  store i16 2816, i16* %type_attrs41, align 2, !tbaa !27
  %41 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack42 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %41, i32 0, i32 25
  %stack43 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack42, i32 0, i32 0
  %p44 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack43, i32 0, i32 0
  %42 = load %struct.ref_s*, %struct.ref_s** %p44, align 8, !tbaa !19
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %42, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %p44, align 8, !tbaa !19
  %43 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack45 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %43, i32 0, i32 25
  %stack46 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack45, i32 0, i32 0
  %p47 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack46, i32 0, i32 0
  %44 = load %struct.ref_s*, %struct.ref_s** %p47, align 8, !tbaa !19
  %value48 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %44, i32 0, i32 1
  %opproc49 = bitcast %union.v* %value48 to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @op_show_continue, i32 (%struct.gs_context_state_s*)** %opproc49, align 8, !tbaa !1
  %45 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack50 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %45, i32 0, i32 25
  %stack51 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack50, i32 0, i32 0
  %p52 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack51, i32 0, i32 0
  %46 = load %struct.ref_s*, %struct.ref_s** %p52, align 8, !tbaa !19
  %tas53 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %46, i32 0, i32 0
  %type_attrs54 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas53, i32 0, i32 0
  store i16 3968, i16* %type_attrs54, align 2, !tbaa !27
  %47 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack55 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %47, i32 0, i32 25
  %stack56 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack55, i32 0, i32 0
  %p57 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack56, i32 0, i32 0
  %48 = load %struct.ref_s*, %struct.ref_s** %p57, align 8, !tbaa !19
  %tas58 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %48, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas58, i32 0, i32 2
  store i32 0, i32* %rsize, align 4, !tbaa !58
  %49 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack59 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %49, i32 0, i32 25
  %stack60 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack59, i32 0, i32 0
  %p61 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack60, i32 0, i32 0
  %50 = load %struct.ref_s*, %struct.ref_s** %p61, align 8, !tbaa !19
  %incdec.ptr62 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %50, i32 1
  store %struct.ref_s* %incdec.ptr62, %struct.ref_s** %p61, align 8, !tbaa !19
  %51 = load %struct.ref_s*, %struct.ref_s** %pslot, align 8, !tbaa !1
  %52 = bitcast %struct.ref_s* %incdec.ptr62 to i8*
  %53 = bitcast %struct.ref_s* %51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %52, i8* %53, i64 16, i32 8, i1 false), !tbaa.struct !66
  store i32 5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.63

cleanup.63:                                       ; preds = %do.end, %if.then.26
  %54 = bitcast %struct.ref_s** %pslot to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #1
  br label %cleanup.310

sw.bb.64:                                         ; preds = %entry
  %55 = bitcast %struct.gs_font_s** %pfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %55) #1
  %56 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %56, i32 0, i32 0
  %57 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !30
  %call65 = call %struct.gs_font_s* @gs_currentfont(%struct.gs_state_s* %57) #3
  store %struct.gs_font_s* %call65, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %58 = bitcast %struct.font_data_s** %pfdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %58) #1
  %59 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %client_data = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %59, i32 0, i32 8
  %60 = load i8*, i8** %client_data, align 8, !tbaa !92
  %61 = bitcast i8* %60 to %struct.font_data_s*
  store %struct.font_data_s* %61, %struct.font_data_s** %pfdata, align 8, !tbaa !1
  %62 = bitcast i64* %chr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %62) #1
  %63 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %call66 = call i64 @gs_text_current_char(%struct.gs_text_enum_s* %63) #3
  store i64 %call66, i64* %chr, align 8, !tbaa !55
  %64 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.start(i64 8, i8* %64) #1
  %65 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %call67 = call i64 @gs_text_current_glyph(%struct.gs_text_enum_s* %65) #3
  store i64 %call67, i64* %glyph, align 8, !tbaa !55
  br label %do.body.68

do.body.68:                                       ; preds = %sw.bb.64
  %66 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr69 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %66, i64 2
  store %struct.ref_s* %add.ptr69, %struct.ref_s** %op, align 8, !tbaa !1
  %67 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack70 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %67, i32 0, i32 26
  %stack71 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack70, i32 0, i32 0
  %top72 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack71, i32 0, i32 2
  %68 = load %struct.ref_s*, %struct.ref_s** %top72, align 8, !tbaa !20
  %cmp73 = icmp ugt %struct.ref_s* %add.ptr69, %68
  br i1 %cmp73, label %if.then.74, label %if.else.78

if.then.74:                                       ; preds = %do.body.68
  %69 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack75 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %69, i32 0, i32 26
  %stack76 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack75, i32 0, i32 0
  %requested77 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack76, i32 0, i32 7
  store i32 2, i32* %requested77, align 4, !tbaa !21
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.260

if.else.78:                                       ; preds = %do.body.68
  %70 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %71 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack79 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %71, i32 0, i32 26
  %stack80 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack79, i32 0, i32 0
  %p81 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack80, i32 0, i32 0
  store %struct.ref_s* %70, %struct.ref_s** %p81, align 8, !tbaa !5
  br label %if.end.82

if.end.82:                                        ; preds = %if.else.78
  br label %do.cond.83

do.cond.83:                                       ; preds = %if.end.82
  br label %do.end.84

do.end.84:                                        ; preds = %do.cond.83
  %72 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx85 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %72, i64 -1
  %73 = load %struct.font_data_s*, %struct.font_data_s** %pfdata, align 8, !tbaa !1
  %dict = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %73, i32 0, i32 0
  %74 = bitcast %struct.ref_s* %arrayidx85 to i8*
  %75 = bitcast %struct.ref_s* %dict to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %74, i8* %75, i64 16, i32 8, i1 false), !tbaa.struct !66
  %76 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %76, i32 0, i32 11
  %77 = load i32, i32* %FontType, align 4, !tbaa !50
  %cmp86 = icmp eq i32 %77, 3
  br i1 %cmp86, label %if.then.87, label %if.else.151

if.then.87:                                       ; preds = %do.end.84
  %78 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %language_level = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %78, i32 0, i32 2
  %79 = load i32, i32* %language_level, align 4, !tbaa !93
  %cmp88 = icmp sge i32 %79, 2
  br i1 %cmp88, label %land.lhs.true, label %if.else.103

land.lhs.true:                                    ; preds = %if.then.87
  %80 = load %struct.font_data_s*, %struct.font_data_s** %pfdata, align 8, !tbaa !1
  %BuildGlyph = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %80, i32 0, i32 2
  %tas89 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %BuildGlyph, i32 0, i32 0
  %type_attrs90 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas89, i32 0, i32 0
  %81 = bitcast i16* %type_attrs90 to i8*
  %arrayidx91 = getelementptr inbounds i8, i8* %81, i64 1
  %82 = load i8, i8* %arrayidx91, align 1, !tbaa !65
  %conv = zext i8 %82 to i32
  %cmp92 = icmp eq i32 %conv, 14
  br i1 %cmp92, label %if.else.103, label %land.lhs.true.94

land.lhs.true.94:                                 ; preds = %land.lhs.true
  %83 = load i64, i64* %glyph, align 8, !tbaa !55
  %cmp95 = icmp ne i64 %83, 2147483647
  br i1 %cmp95, label %if.then.97, label %if.else.103

if.then.97:                                       ; preds = %land.lhs.true.94
  %84 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %84, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %85 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !61
  %86 = bitcast %struct.gs_ref_memory_s* %85 to %struct.gs_memory_s*
  %87 = load i64, i64* %glyph, align 8, !tbaa !55
  %88 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  call void @glyph_ref(%struct.gs_memory_s* %86, i64 %87, %struct.ref_s* %88) #3
  %89 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack98 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %89, i32 0, i32 25
  %stack99 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack98, i32 0, i32 0
  %p100 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack99, i32 0, i32 0
  %90 = load %struct.ref_s*, %struct.ref_s** %p100, align 8, !tbaa !19
  %arrayidx101 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %90, i64 2
  %91 = load %struct.font_data_s*, %struct.font_data_s** %pfdata, align 8, !tbaa !1
  %BuildGlyph102 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %91, i32 0, i32 2
  %92 = bitcast %struct.ref_s* %arrayidx101 to i8*
  %93 = bitcast %struct.ref_s* %BuildGlyph102 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %92, i8* %93, i64 16, i32 8, i1 false), !tbaa.struct !66
  br label %if.end.150

if.else.103:                                      ; preds = %land.lhs.true.94, %land.lhs.true, %if.then.87
  %94 = load %struct.font_data_s*, %struct.font_data_s** %pfdata, align 8, !tbaa !1
  %BuildChar = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %94, i32 0, i32 1
  %tas104 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %BuildChar, i32 0, i32 0
  %type_attrs105 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas104, i32 0, i32 0
  %95 = bitcast i16* %type_attrs105 to i8*
  %arrayidx106 = getelementptr inbounds i8, i8* %95, i64 1
  %96 = load i8, i8* %arrayidx106, align 1, !tbaa !65
  %conv107 = zext i8 %96 to i32
  %cmp108 = icmp eq i32 %conv107, 14
  br i1 %cmp108, label %if.then.110, label %if.else.111

if.then.110:                                      ; preds = %if.else.103
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup.260

if.else.111:                                      ; preds = %if.else.103
  %97 = load i64, i64* %chr, align 8, !tbaa !55
  %cmp112 = icmp eq i64 %97, -1
  br i1 %cmp112, label %if.then.114, label %if.else.138

if.then.114:                                      ; preds = %if.else.111
  %98 = bitcast %struct.ref_s* %gref to i8*
  call void @llvm.lifetime.start(i64 16, i8* %98) #1
  %99 = bitcast %struct.ref_s** %pencoding to i8*
  call void @llvm.lifetime.start(i64 8, i8* %99) #1
  %100 = load %struct.font_data_s*, %struct.font_data_s** %pfdata, align 8, !tbaa !1
  %Encoding = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %100, i32 0, i32 3
  store %struct.ref_s* %Encoding, %struct.ref_s** %pencoding, align 8, !tbaa !1
  %101 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory115 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %101, i32 0, i32 1
  %current116 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory115, i32 0, i32 0
  %102 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current116, align 8, !tbaa !61
  %103 = bitcast %struct.gs_ref_memory_s* %102 to %struct.gs_memory_s*
  %104 = load i64, i64* %glyph, align 8, !tbaa !55
  call void @glyph_ref(%struct.gs_memory_s* %103, i64 %104, %struct.ref_s* %gref) #3
  %105 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory117 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %105, i32 0, i32 1
  %current118 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory117, i32 0, i32 0
  %106 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current118, align 8, !tbaa !61
  %107 = bitcast %struct.gs_ref_memory_s* %106 to %struct.gs_memory_s*
  %108 = load %struct.ref_s*, %struct.ref_s** %pencoding, align 8, !tbaa !1
  %109 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call119 = call i32 @map_glyph_to_char(%struct.gs_memory_s* %107, %struct.ref_s* %gref, %struct.ref_s* %108, %struct.ref_s* %109) #3
  %tobool = icmp ne i32 %call119, 0
  br i1 %tobool, label %if.end.130, label %if.then.120

if.then.120:                                      ; preds = %if.then.114
  %110 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory121 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %110, i32 0, i32 1
  %current122 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory121, i32 0, i32 0
  %111 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current122, align 8, !tbaa !61
  %112 = bitcast %struct.gs_ref_memory_s* %111 to %struct.gs_memory_s*
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %112, i32 0, i32 2
  %113 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !69
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %113, i32 0, i32 16
  %114 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !70
  %call123 = call i32 @names_enter_string(%struct.name_table_s* %114, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), %struct.ref_s* %gref) #3
  %115 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory124 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %115, i32 0, i32 1
  %current125 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory124, i32 0, i32 0
  %116 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current125, align 8, !tbaa !61
  %117 = bitcast %struct.gs_ref_memory_s* %116 to %struct.gs_memory_s*
  %118 = load %struct.ref_s*, %struct.ref_s** %pencoding, align 8, !tbaa !1
  %119 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call126 = call i32 @map_glyph_to_char(%struct.gs_memory_s* %117, %struct.ref_s* %gref, %struct.ref_s* %118, %struct.ref_s* %119) #3
  %tobool127 = icmp ne i32 %call126, 0
  br i1 %tobool127, label %if.end.129, label %if.then.128

if.then.128:                                      ; preds = %if.then.120
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup.136

if.end.129:                                       ; preds = %if.then.120
  br label %if.end.130

if.end.130:                                       ; preds = %if.end.129, %if.then.114
  %120 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack131 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %120, i32 0, i32 25
  %stack132 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack131, i32 0, i32 0
  %p133 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack132, i32 0, i32 0
  %121 = load %struct.ref_s*, %struct.ref_s** %p133, align 8, !tbaa !19
  %arrayidx134 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %121, i64 2
  %122 = load %struct.font_data_s*, %struct.font_data_s** %pfdata, align 8, !tbaa !1
  %BuildChar135 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %122, i32 0, i32 1
  %123 = bitcast %struct.ref_s* %arrayidx134 to i8*
  %124 = bitcast %struct.ref_s* %BuildChar135 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %123, i8* %124, i64 16, i32 8, i1 false), !tbaa.struct !66
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.136

cleanup.136:                                      ; preds = %if.then.128, %if.end.130
  %125 = bitcast %struct.ref_s** %pencoding to i8*
  call void @llvm.lifetime.end(i64 8, i8* %125) #1
  %126 = bitcast %struct.ref_s* %gref to i8*
  call void @llvm.lifetime.end(i64 16, i8* %126) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.260 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup.136
  br label %if.end.148

if.else.138:                                      ; preds = %if.else.111
  %127 = load i64, i64* %chr, align 8, !tbaa !55
  %and = and i64 %127, 255
  %128 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value139 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %128, i32 0, i32 1
  %intval140 = bitcast %union.v* %value139 to i64*
  store i64 %and, i64* %intval140, align 8, !tbaa !55
  %129 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas141 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %129, i32 0, i32 0
  %type_attrs142 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas141, i32 0, i32 0
  store i16 2816, i16* %type_attrs142, align 2, !tbaa !27
  %130 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack143 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %130, i32 0, i32 25
  %stack144 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack143, i32 0, i32 0
  %p145 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack144, i32 0, i32 0
  %131 = load %struct.ref_s*, %struct.ref_s** %p145, align 8, !tbaa !19
  %arrayidx146 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %131, i64 2
  %132 = load %struct.font_data_s*, %struct.font_data_s** %pfdata, align 8, !tbaa !1
  %BuildChar147 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %132, i32 0, i32 1
  %133 = bitcast %struct.ref_s* %arrayidx146 to i8*
  %134 = bitcast %struct.ref_s* %BuildChar147 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %133, i8* %134, i64 16, i32 8, i1 false), !tbaa.struct !66
  br label %if.end.148

if.end.148:                                       ; preds = %if.else.138, %cleanup.cont
  br label %if.end.149

if.end.149:                                       ; preds = %if.end.148
  br label %if.end.150

if.end.150:                                       ; preds = %if.end.149, %if.then.97
  br label %if.end.217

if.else.151:                                      ; preds = %do.end.84
  %135 = bitcast %struct.ref_s* %eref to i8*
  call void @llvm.lifetime.start(i64 16, i8* %135) #1
  %136 = bitcast %struct.ref_s* %gref152 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %136) #1
  %137 = load i64, i64* %chr, align 8, !tbaa !55
  %cmp153 = icmp ne i64 %137, -1
  br i1 %cmp153, label %land.lhs.true.155, label %if.else.199

land.lhs.true.155:                                ; preds = %if.else.151
  %138 = load %struct.font_data_s*, %struct.font_data_s** %pfdata, align 8, !tbaa !1
  %BuildChar156 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %138, i32 0, i32 1
  %tas157 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %BuildChar156, i32 0, i32 0
  %type_attrs158 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas157, i32 0, i32 0
  %139 = bitcast i16* %type_attrs158 to i8*
  %arrayidx159 = getelementptr inbounds i8, i8* %139, i64 1
  %140 = load i8, i8* %arrayidx159, align 1, !tbaa !65
  %conv160 = zext i8 %140 to i32
  %cmp161 = icmp eq i32 %conv160, 14
  br i1 %cmp161, label %if.else.199, label %land.lhs.true.163

land.lhs.true.163:                                ; preds = %land.lhs.true.155
  %141 = load i64, i64* %glyph, align 8, !tbaa !55
  %cmp164 = icmp eq i64 %141, 2147483647
  br i1 %cmp164, label %if.then.188, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.163
  %142 = load %struct.font_data_s*, %struct.font_data_s** %pfdata, align 8, !tbaa !1
  %Encoding166 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %142, i32 0, i32 3
  %tas167 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %Encoding166, i32 0, i32 0
  %type_attrs168 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas167, i32 0, i32 0
  %143 = bitcast i16* %type_attrs168 to i8*
  %arrayidx169 = getelementptr inbounds i8, i8* %143, i64 1
  %144 = load i8, i8* %arrayidx169, align 1, !tbaa !65
  %conv170 = zext i8 %144 to i32
  %cmp171 = icmp eq i32 %conv170, 14
  br i1 %cmp171, label %if.else.199, label %land.lhs.true.173

land.lhs.true.173:                                ; preds = %lor.lhs.false
  %145 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory174 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %145, i32 0, i32 1
  %current175 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory174, i32 0, i32 0
  %146 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current175, align 8, !tbaa !61
  %147 = bitcast %struct.gs_ref_memory_s* %146 to %struct.gs_memory_s*
  %148 = load %struct.font_data_s*, %struct.font_data_s** %pfdata, align 8, !tbaa !1
  %Encoding176 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %148, i32 0, i32 3
  %149 = load i64, i64* %chr, align 8, !tbaa !55
  %and177 = and i64 %149, 255
  %call178 = call i32 @array_get(%struct.gs_memory_s* %147, %struct.ref_s* %Encoding176, i64 %and177, %struct.ref_s* %eref) #3
  %cmp179 = icmp sge i32 %call178, 0
  br i1 %cmp179, label %land.lhs.true.181, label %if.else.199

land.lhs.true.181:                                ; preds = %land.lhs.true.173
  %150 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory182 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %150, i32 0, i32 1
  %current183 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory182, i32 0, i32 0
  %151 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current183, align 8, !tbaa !61
  %152 = bitcast %struct.gs_ref_memory_s* %151 to %struct.gs_memory_s*
  %153 = load i64, i64* %glyph, align 8, !tbaa !55
  call void @glyph_ref(%struct.gs_memory_s* %152, i64 %153, %struct.ref_s* %gref152) #3
  %154 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory184 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %154, i32 0, i32 1
  %current185 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory184, i32 0, i32 0
  %155 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current185, align 8, !tbaa !61
  %156 = bitcast %struct.gs_ref_memory_s* %155 to %struct.gs_memory_s*
  %call186 = call i32 @obj_eq(%struct.gs_memory_s* %156, %struct.ref_s* %gref152, %struct.ref_s* %eref) #3
  %tobool187 = icmp ne i32 %call186, 0
  br i1 %tobool187, label %if.then.188, label %if.else.199

if.then.188:                                      ; preds = %land.lhs.true.181, %land.lhs.true.163
  %157 = load i64, i64* %chr, align 8, !tbaa !55
  %and189 = and i64 %157, 255
  %158 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value190 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %158, i32 0, i32 1
  %intval191 = bitcast %union.v* %value190 to i64*
  store i64 %and189, i64* %intval191, align 8, !tbaa !55
  %159 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas192 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %159, i32 0, i32 0
  %type_attrs193 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas192, i32 0, i32 0
  store i16 2816, i16* %type_attrs193, align 2, !tbaa !27
  %160 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack194 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %160, i32 0, i32 25
  %stack195 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack194, i32 0, i32 0
  %p196 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack195, i32 0, i32 0
  %161 = load %struct.ref_s*, %struct.ref_s** %p196, align 8, !tbaa !19
  %arrayidx197 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %161, i64 2
  %162 = load %struct.font_data_s*, %struct.font_data_s** %pfdata, align 8, !tbaa !1
  %BuildChar198 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %162, i32 0, i32 1
  %163 = bitcast %struct.ref_s* %arrayidx197 to i8*
  %164 = bitcast %struct.ref_s* %BuildChar198 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %163, i8* %164, i64 16, i32 8, i1 false), !tbaa.struct !66
  br label %if.end.216

if.else.199:                                      ; preds = %land.lhs.true.181, %land.lhs.true.173, %lor.lhs.false, %land.lhs.true.155, %if.else.151
  %165 = load i64, i64* %glyph, align 8, !tbaa !55
  %cmp200 = icmp eq i64 %165, 2147483647
  br i1 %cmp200, label %if.then.202, label %if.else.207

if.then.202:                                      ; preds = %if.else.199
  %166 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value203 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %166, i32 0, i32 1
  %intval204 = bitcast %union.v* %value203 to i64*
  store i64 0, i64* %intval204, align 8, !tbaa !55
  %167 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas205 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %167, i32 0, i32 0
  %type_attrs206 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas205, i32 0, i32 0
  store i16 2816, i16* %type_attrs206, align 2, !tbaa !27
  br label %if.end.210

if.else.207:                                      ; preds = %if.else.199
  %168 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory208 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %168, i32 0, i32 1
  %current209 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory208, i32 0, i32 0
  %169 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current209, align 8, !tbaa !61
  %170 = bitcast %struct.gs_ref_memory_s* %169 to %struct.gs_memory_s*
  %171 = load i64, i64* %glyph, align 8, !tbaa !55
  %172 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  call void @glyph_ref(%struct.gs_memory_s* %170, i64 %171, %struct.ref_s* %172) #3
  br label %if.end.210

if.end.210:                                       ; preds = %if.else.207, %if.then.202
  %173 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack211 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %173, i32 0, i32 25
  %stack212 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack211, i32 0, i32 0
  %p213 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack212, i32 0, i32 0
  %174 = load %struct.ref_s*, %struct.ref_s** %p213, align 8, !tbaa !19
  %arrayidx214 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %174, i64 2
  %175 = load %struct.font_data_s*, %struct.font_data_s** %pfdata, align 8, !tbaa !1
  %BuildGlyph215 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %175, i32 0, i32 2
  %176 = bitcast %struct.ref_s* %arrayidx214 to i8*
  %177 = bitcast %struct.ref_s* %BuildGlyph215 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %176, i8* %177, i64 16, i32 8, i1 false), !tbaa.struct !66
  br label %if.end.216

if.end.216:                                       ; preds = %if.end.210, %if.then.188
  %178 = bitcast %struct.ref_s* %gref152 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %178) #1
  %179 = bitcast %struct.ref_s* %eref to i8*
  call void @llvm.lifetime.end(i64 16, i8* %179) #1
  br label %if.end.217

if.end.217:                                       ; preds = %if.end.216, %if.end.150
  %180 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack218 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %180, i32 0, i32 26
  %stack219 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack218, i32 0, i32 0
  %call220 = call i32 @ref_stack_count(%struct.ref_stack_s* %stack219) #3
  %sub = sub i32 %call220, 2
  %conv221 = zext i32 %sub to i64
  %181 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack222 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %181, i32 0, i32 25
  %stack223 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack222, i32 0, i32 0
  %p224 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack223, i32 0, i32 0
  %182 = load %struct.ref_s*, %struct.ref_s** %p224, align 8, !tbaa !19
  %arrayidx225 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %182, i64 -2
  %value226 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx225, i32 0, i32 1
  %intval227 = bitcast %union.v* %value226 to i64*
  store i64 %conv221, i64* %intval227, align 8, !tbaa !55
  %183 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %183, i32 0, i32 24
  %stack228 = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack, i32 0, i32 0
  %call229 = call i32 @ref_stack_count(%struct.ref_stack_s* %stack228) #3
  %conv230 = zext i32 %call229 to i64
  %184 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack231 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %184, i32 0, i32 25
  %stack232 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack231, i32 0, i32 0
  %p233 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack232, i32 0, i32 0
  %185 = load %struct.ref_s*, %struct.ref_s** %p233, align 8, !tbaa !19
  %arrayidx234 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %185, i64 -3
  %value235 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx234, i32 0, i32 1
  %intval236 = bitcast %union.v* %value235 to i64*
  store i64 %conv230, i64* %intval236, align 8, !tbaa !55
  %186 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack237 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %186, i32 0, i32 25
  %stack238 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack237, i32 0, i32 0
  %p239 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack238, i32 0, i32 0
  %187 = load %struct.ref_s*, %struct.ref_s** %p239, align 8, !tbaa !19
  %incdec.ptr240 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %187, i32 1
  store %struct.ref_s* %incdec.ptr240, %struct.ref_s** %p239, align 8, !tbaa !19
  %188 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack241 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %188, i32 0, i32 25
  %stack242 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack241, i32 0, i32 0
  %p243 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack242, i32 0, i32 0
  %189 = load %struct.ref_s*, %struct.ref_s** %p243, align 8, !tbaa !19
  %value244 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %189, i32 0, i32 1
  %opproc245 = bitcast %union.v* %value244 to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @op_show_continue, i32 (%struct.gs_context_state_s*)** %opproc245, align 8, !tbaa !1
  %190 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack246 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %190, i32 0, i32 25
  %stack247 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack246, i32 0, i32 0
  %p248 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack247, i32 0, i32 0
  %191 = load %struct.ref_s*, %struct.ref_s** %p248, align 8, !tbaa !19
  %tas249 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %191, i32 0, i32 0
  %type_attrs250 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas249, i32 0, i32 0
  store i16 3968, i16* %type_attrs250, align 2, !tbaa !27
  %192 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack251 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %192, i32 0, i32 25
  %stack252 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack251, i32 0, i32 0
  %p253 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack252, i32 0, i32 0
  %193 = load %struct.ref_s*, %struct.ref_s** %p253, align 8, !tbaa !19
  %tas254 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %193, i32 0, i32 0
  %rsize255 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas254, i32 0, i32 2
  store i32 0, i32* %rsize255, align 4, !tbaa !58
  %194 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack256 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %194, i32 0, i32 25
  %stack257 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack256, i32 0, i32 0
  %p258 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack257, i32 0, i32 0
  %195 = load %struct.ref_s*, %struct.ref_s** %p258, align 8, !tbaa !19
  %incdec.ptr259 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %195, i32 1
  store %struct.ref_s* %incdec.ptr259, %struct.ref_s** %p258, align 8, !tbaa !19
  store i32 5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.260

cleanup.260:                                      ; preds = %if.then.110, %if.end.217, %cleanup.136, %if.then.74
  %196 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.end(i64 8, i8* %196) #1
  %197 = bitcast i64* %chr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %197) #1
  %198 = bitcast %struct.font_data_s** %pfdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %198) #1
  %199 = bitcast %struct.gs_font_s** %pfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %199) #1
  %cleanup.dest304 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest304, label %cleanup.310 [
    i32 7, label %err
  ]

sw.bb.264:                                        ; preds = %entry
  %200 = bitcast %struct.gs_font_s** %pfont265 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %200) #1
  %201 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %current_font = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %201, i32 0, i32 12
  %202 = load %struct.gs_font_s*, %struct.gs_font_s** %current_font, align 8, !tbaa !79
  store %struct.gs_font_s* %202, %struct.gs_font_s** %pfont265, align 8, !tbaa !1
  %203 = bitcast %struct.ref_s* %cnref to i8*
  call void @llvm.lifetime.start(i64 16, i8* %203) #1
  %204 = bitcast i32 (%struct.gs_context_state_s*)** %cont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %204) #1
  store i32 (%struct.gs_context_state_s*)* @op_show_continue, i32 (%struct.gs_context_state_s*)** %cont, align 8, !tbaa !1
  %205 = bitcast i32 (%struct.gs_context_state_s*)** %exec_cont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %205) #1
  store i32 (%struct.gs_context_state_s*)* null, i32 (%struct.gs_context_state_s*)** %exec_cont, align 8, !tbaa !1
  %206 = bitcast i64* %glyph266 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %206) #1
  %207 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %returned = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %207, i32 0, i32 28
  %current_glyph = getelementptr inbounds %struct.gs_text_returned_s, %struct.gs_text_returned_s* %returned, i32 0, i32 1
  %208 = load i64, i64* %current_glyph, align 8, !tbaa !84
  store i64 %208, i64* %glyph266, align 8, !tbaa !55
  %209 = bitcast i32* %code267 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %209) #1
  %210 = load i32, i32* %npop.addr, align 4, !tbaa !29
  %211 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack268 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %211, i32 0, i32 26
  %stack269 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack268, i32 0, i32 0
  %p270 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack269, i32 0, i32 0
  %212 = load %struct.ref_s*, %struct.ref_s** %p270, align 8, !tbaa !5
  %idx.ext271 = sext i32 %210 to i64
  %idx.neg272 = sub i64 0, %idx.ext271
  %add.ptr273 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %212, i64 %idx.neg272
  store %struct.ref_s* %add.ptr273, %struct.ref_s** %p270, align 8, !tbaa !5
  %213 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack274 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %213, i32 0, i32 26
  %stack275 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack274, i32 0, i32 0
  %p276 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack275, i32 0, i32 0
  %214 = load %struct.ref_s*, %struct.ref_s** %p276, align 8, !tbaa !5
  store %struct.ref_s* %214, %struct.ref_s** %op, align 8, !tbaa !1
  %215 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory277 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %215, i32 0, i32 1
  %current278 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory277, i32 0, i32 0
  %216 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current278, align 8, !tbaa !61
  %217 = bitcast %struct.gs_ref_memory_s* %216 to %struct.gs_memory_s*
  %218 = load i64, i64* %glyph266, align 8, !tbaa !55
  call void @glyph_ref(%struct.gs_memory_s* %217, i64 %218, %struct.ref_s* %cnref) #3
  %219 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont265, align 8, !tbaa !1
  %FontType279 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %219, i32 0, i32 11
  %220 = load i32, i32* %FontType279, align 4, !tbaa !50
  %cmp280 = icmp eq i32 %220, 11
  br i1 %cmp280, label %if.then.282, label %if.else.285

if.then.282:                                      ; preds = %sw.bb.264
  %221 = bitcast %struct.gs_font_type42_s** %pfont42 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %221) #1
  %222 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont265, align 8, !tbaa !1
  %223 = bitcast %struct.gs_font_s* %222 to %struct.gs_font_type42_s*
  store %struct.gs_font_type42_s* %223, %struct.gs_font_type42_s** %pfont42, align 8, !tbaa !1
  %224 = bitcast i32* %glyph_index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %224) #1
  %225 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont42, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %225, i32 0, i32 29
  %get_glyph_index = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data, i32 0, i32 2
  %226 = load i32 (%struct.gs_font_type42_s*, i64)*, i32 (%struct.gs_font_type42_s*, i64)** %get_glyph_index, align 8, !tbaa !94
  %227 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont42, align 8, !tbaa !1
  %228 = load i64, i64* %glyph266, align 8, !tbaa !55
  %call283 = call i32 %226(%struct.gs_font_type42_s* %227, i64 %228) #3
  store i32 %call283, i32* %glyph_index, align 4, !tbaa !29
  %229 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %230 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont42, align 8, !tbaa !1
  %231 = bitcast %struct.gs_font_type42_s* %230 to %struct.gs_font_base_s*
  %232 = load i32, i32* %glyph_index, align 4, !tbaa !29
  %233 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %cont, align 8, !tbaa !1
  %call284 = call i32 @zchar42_set_cache(%struct.gs_context_state_s* %229, %struct.gs_font_base_s* %231, %struct.ref_s* %cnref, i32 %232, i32 (%struct.gs_context_state_s*)* %233, i32 (%struct.gs_context_state_s*)** %exec_cont) #3
  store i32 %call284, i32* %code267, align 4, !tbaa !29
  %234 = bitcast i32* %glyph_index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %234) #1
  %235 = bitcast %struct.gs_font_type42_s** %pfont42 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %235) #1
  br label %if.end.293

if.else.285:                                      ; preds = %sw.bb.264
  %236 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont265, align 8, !tbaa !1
  %FontType286 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %236, i32 0, i32 11
  %237 = load i32, i32* %FontType286, align 4, !tbaa !50
  %cmp287 = icmp eq i32 %237, 9
  br i1 %cmp287, label %if.then.289, label %if.else.291

if.then.289:                                      ; preds = %if.else.285
  %238 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %239 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont265, align 8, !tbaa !1
  %240 = bitcast %struct.gs_font_s* %239 to %struct.gs_font_base_s*
  %241 = load i64, i64* %glyph266, align 8, !tbaa !55
  %242 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %cont, align 8, !tbaa !1
  %call290 = call i32 @z1_set_cache(%struct.gs_context_state_s* %238, %struct.gs_font_base_s* %240, %struct.ref_s* %cnref, i64 %241, i32 (%struct.gs_context_state_s*)* %242, i32 (%struct.gs_context_state_s*)** %exec_cont) #3
  store i32 %call290, i32* %code267, align 4, !tbaa !29
  br label %if.end.292

if.else.291:                                      ; preds = %if.else.285
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.298

if.end.292:                                       ; preds = %if.then.289
  br label %if.end.293

if.end.293:                                       ; preds = %if.end.292, %if.then.282
  %243 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %exec_cont, align 8, !tbaa !1
  %cmp294 = icmp ne i32 (%struct.gs_context_state_s*)* %243, null
  br i1 %cmp294, label %if.then.296, label %if.end.297

if.then.296:                                      ; preds = %if.end.293
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.298

if.end.297:                                       ; preds = %if.end.293
  %244 = load i32, i32* %code267, align 4, !tbaa !29
  store i32 %244, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.298

cleanup.298:                                      ; preds = %if.end.297, %if.then.296, %if.else.291
  %245 = bitcast i32* %code267 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %245) #1
  %246 = bitcast i64* %glyph266 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %246) #1
  %247 = bitcast i32 (%struct.gs_context_state_s*)** %exec_cont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %247) #1
  %248 = bitcast i32 (%struct.gs_context_state_s*)** %cont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %248) #1
  %249 = bitcast %struct.ref_s* %cnref to i8*
  call void @llvm.lifetime.end(i64 16, i8* %249) #1
  %250 = bitcast %struct.gs_font_s** %pfont265 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %250) #1
  br label %cleanup.310

sw.default:                                       ; preds = %entry
  br label %err

err:                                              ; preds = %sw.default, %cleanup.260
  %251 = load i32, i32* %code.addr, align 4, !tbaa !29
  %cmp305 = icmp sge i32 %251, 0
  br i1 %cmp305, label %if.then.307, label %if.end.308

if.then.307:                                      ; preds = %err
  store i32 -10, i32* %code.addr, align 4, !tbaa !29
  br label %if.end.308

if.end.308:                                       ; preds = %if.then.307, %err
  %252 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %253 = load i32, i32* %code.addr, align 4, !tbaa !29
  %call309 = call i32 @op_show_free(%struct.gs_context_state_s* %252, i32 %253) #3
  store i32 %call309, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.310

cleanup.310:                                      ; preds = %if.end.308, %cleanup.260, %cleanup.298, %cleanup.63, %cleanup
  %254 = bitcast %struct.gs_text_enum_s** %penum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %254) #1
  %255 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %255) #1
  %256 = load i32, i32* %retval
  ret i32 %256
}

declare i32 @gs_text_process(%struct.gs_text_enum_s*) #2

; Function Attrs: nounwind uwtable
define i32 @op_show_continue_pop(%struct.gs_context_state_s* %i_ctx_p, i32 %npop) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %npop.addr = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store i32 %npop, i32* %npop.addr, align 4, !tbaa !29
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %1 = load i32, i32* %npop.addr, align 4, !tbaa !29
  %2 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %2, i32 0, i32 25
  %stack = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %3 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !19
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 1
  %pstruct = bitcast %union.v* %value to %struct.obj_header_s**
  %4 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %5 = bitcast %struct.obj_header_s* %4 to %struct.gs_text_enum_s*
  %call = call i32 @gs_text_process(%struct.gs_text_enum_s* %5) #3
  %call1 = call i32 @op_show_continue_dispatch(%struct.gs_context_state_s* %0, i32 %1, i32 %call) #3
  ret i32 %call1
}

; Function Attrs: nounwind uwtable
define i32 @op_show_free(%struct.gs_context_state_s* %i_ctx_p, i32 %code) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %code.addr = alloca i32, align 4
  %rcode = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store i32 %code, i32* %code.addr, align 4, !tbaa !29
  %0 = bitcast i32* %rcode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 25
  %stack = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !19
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 -9
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p, align 8, !tbaa !19
  %3 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %4 = load i32, i32* %code.addr, align 4, !tbaa !29
  %cmp = icmp slt i32 %4, 0
  %conv = zext i1 %cmp to i32
  %call = call i32 @op_show_restore(%struct.gs_context_state_s* %3, i32 %conv) #3
  store i32 %call, i32* %rcode, align 4, !tbaa !29
  %5 = load i32, i32* %rcode, align 4, !tbaa !29
  %cmp1 = icmp slt i32 %5, 0
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %6 = load i32, i32* %rcode, align 4, !tbaa !29
  br label %cond.end

cond.false:                                       ; preds = %entry
  %7 = load i32, i32* %code.addr, align 4, !tbaa !29
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %6, %cond.true ], [ %7, %cond.false ]
  %8 = bitcast i32* %rcode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #1
  ret i32 %cond
}

declare i64 @gs_text_next_char(%struct.gs_text_enum_s*) #2

declare %struct.gs_font_s* @gs_currentfont(%struct.gs_state_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @map_glyph_to_char(%struct.gs_memory_s* %mem, %struct.ref_s* %pgref, %struct.ref_s* %pencoding, %struct.ref_s* %pch) #0 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pgref.addr = alloca %struct.ref_s*, align 8
  %pencoding.addr = alloca %struct.ref_s*, align 8
  %pch.addr = alloca %struct.ref_s*, align 8
  %esize = alloca i32, align 4
  %ch = alloca i32, align 4
  %eref = alloca %struct.ref_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.ref_s* %pgref, %struct.ref_s** %pgref.addr, align 8, !tbaa !1
  store %struct.ref_s* %pencoding, %struct.ref_s** %pencoding.addr, align 8, !tbaa !1
  store %struct.ref_s* %pch, %struct.ref_s** %pch.addr, align 8, !tbaa !1
  %0 = bitcast i32* %esize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.ref_s*, %struct.ref_s** %pencoding.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 2
  %2 = load i32, i32* %rsize, align 4, !tbaa !58
  store i32 %2, i32* %esize, align 4, !tbaa !29
  %3 = bitcast i32* %ch to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast %struct.ref_s* %eref to i8*
  call void @llvm.lifetime.start(i64 16, i8* %4) #1
  store i32 0, i32* %ch, align 4, !tbaa !29
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %ch, align 4, !tbaa !29
  %6 = load i32, i32* %esize, align 4, !tbaa !29
  %cmp = icmp ult i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %8 = load %struct.ref_s*, %struct.ref_s** %pencoding.addr, align 8, !tbaa !1
  %9 = load i32, i32* %ch, align 4, !tbaa !29
  %conv = zext i32 %9 to i64
  %call = call i32 @array_get(%struct.gs_memory_s* %7, %struct.ref_s* %8, i64 %conv, %struct.ref_s* %eref) #3
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %11 = load %struct.ref_s*, %struct.ref_s** %pgref.addr, align 8, !tbaa !1
  %call1 = call i32 @obj_eq(%struct.gs_memory_s* %10, %struct.ref_s* %11, %struct.ref_s* %eref) #3
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %12 = load i32, i32* %ch, align 4, !tbaa !29
  %conv2 = zext i32 %12 to i64
  %13 = load %struct.ref_s*, %struct.ref_s** %pch.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  store i64 %conv2, i64* %intval, align 8, !tbaa !55
  %14 = load %struct.ref_s*, %struct.ref_s** %pch.addr, align 8, !tbaa !1
  %tas3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas3, i32 0, i32 0
  store i16 2816, i16* %type_attrs, align 2, !tbaa !27
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i32, i32* %ch, align 4, !tbaa !29
  %inc = add i32 %15, 1
  store i32 %inc, i32* %ch, align 4, !tbaa !29
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %16 = bitcast %struct.ref_s* %eref to i8*
  call void @llvm.lifetime.end(i64 16, i8* %16) #1
  %17 = bitcast i32* %ch to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #1
  %18 = bitcast i32* %esize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #1
  %19 = load i32, i32* %retval
  ret i32 %19
}

declare i32 @names_enter_string(%struct.name_table_s*, i8*, %struct.ref_s*) #2

declare i32 @array_get(%struct.gs_memory_s*, %struct.ref_s*, i64, %struct.ref_s*) #2

declare i32 @obj_eq(%struct.gs_memory_s*, %struct.ref_s*, %struct.ref_s*) #2

declare i32 @ref_stack_count(%struct.ref_stack_s*) #2

declare i32 @zchar42_set_cache(%struct.gs_context_state_s*, %struct.gs_font_base_s*, %struct.ref_s*, i32, i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)**) #2

declare i32 @z1_set_cache(%struct.gs_context_state_s*, %struct.gs_font_base_s*, %struct.ref_s*, i64, i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)**) #2

; Function Attrs: nounwind uwtable
define internal i32 @op_show_find_index(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %rsenum = alloca %struct.ref_stack_enum_s, align 8
  %count = alloca i32, align 4
  %ep = alloca %struct.ref_s*, align 8
  %size = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_stack_enum_s* %rsenum to i8*
  call void @llvm.lifetime.start(i64 24, i8* %0) #1
  %1 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %count, align 4, !tbaa !29
  %2 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %2, i32 0, i32 25
  %stack = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  call void @ref_stack_enum_begin(%struct.ref_stack_enum_s* %rsenum, %struct.ref_stack_s* %stack) #3
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %3 = bitcast %struct.ref_s** %ep to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %ptr = getelementptr inbounds %struct.ref_stack_enum_s, %struct.ref_stack_enum_s* %rsenum, i32 0, i32 1
  %4 = load %struct.ref_s*, %struct.ref_s** %ptr, align 8, !tbaa !99
  store %struct.ref_s* %4, %struct.ref_s** %ep, align 8, !tbaa !1
  %5 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %size1 = getelementptr inbounds %struct.ref_stack_enum_s, %struct.ref_stack_enum_s* %rsenum, i32 0, i32 2
  %6 = load i32, i32* %size1, align 4, !tbaa !101
  store i32 %6, i32* %size, align 4, !tbaa !29
  %7 = load i32, i32* %size, align 4, !tbaa !29
  %sub = sub i32 %7, 1
  %8 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %idx.ext = zext i32 %sub to i64
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i64 %idx.ext
  store %struct.ref_s* %add.ptr, %struct.ref_s** %ep, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.body
  %9 = load i32, i32* %size, align 4, !tbaa !29
  %cmp = icmp ne i32 %9, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %11 = load i16, i16* %type_attrs, align 2, !tbaa !27
  %conv = zext i16 %11 to i32
  %and = and i32 %conv, 16256
  %cmp2 = icmp eq i32 %and, 3712
  br i1 %cmp2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %12 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %tas4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas4, i32 0, i32 2
  %13 = load i32, i32* %rsize, align 4, !tbaa !58
  %cmp5 = icmp eq i32 %13, 1
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %14 = load i32, i32* %count, align 4, !tbaa !29
  store i32 %14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i32, i32* %size, align 4, !tbaa !29
  %dec = add i32 %15, -1
  store i32 %dec, i32* %size, align 4, !tbaa !29
  %16 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 -1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %ep, align 8, !tbaa !1
  %17 = load i32, i32* %count, align 4, !tbaa !29
  %inc = add i32 %17, 1
  store i32 %inc, i32* %count, align 4, !tbaa !29
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %18 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #1
  %19 = bitcast %struct.ref_s** %ep to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.8 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.cond

do.cond:                                          ; preds = %cleanup.cont
  %call = call i32 @ref_stack_enum_next(%struct.ref_stack_enum_s* %rsenum) #3
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.8

cleanup.8:                                        ; preds = %do.end, %cleanup
  %20 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
  %21 = bitcast %struct.ref_stack_enum_s* %rsenum to i8*
  call void @llvm.lifetime.end(i64 24, i8* %21) #1
  %22 = load i32, i32* %retval
  ret i32 %22
}

declare %struct.ref_s* @ref_stack_index(%struct.ref_stack_s*, i64) #2

declare i32 @gs_text_is_width_only(%struct.gs_text_enum_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @op_show_restore(%struct.gs_context_state_s* %i_ctx_p, i32 %for_error) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %for_error.addr = alloca i32, align 4
  %ep = alloca %struct.ref_s*, align 8
  %penum = alloca %struct.gs_text_enum_s*, align 8
  %saved_level = alloca i32, align 4
  %code = alloca i32, align 4
  %proc = alloca i32 (%struct.gs_context_state_s*)*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store i32 %for_error, i32* %for_error.addr, align 4, !tbaa !29
  %0 = bitcast %struct.ref_s** %ep to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 25
  %stack = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !19
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 9
  store %struct.ref_s* %add.ptr, %struct.ref_s** %ep, align 8, !tbaa !1
  %3 = bitcast %struct.gs_text_enum_s** %penum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 1
  %pstruct = bitcast %union.v* %value to %struct.obj_header_s**
  %5 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %6 = bitcast %struct.obj_header_s* %5 to %struct.gs_text_enum_s*
  store %struct.gs_text_enum_s* %6, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %7 = bitcast i32* %saved_level to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i64 -4
  %value1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 1
  %intval = bitcast %union.v* %value1 to i64*
  %9 = load i64, i64* %intval, align 8, !tbaa !55
  %conv = trunc i64 %9 to i32
  store i32 %conv, i32* %saved_level, align 4, !tbaa !29
  %10 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  store i32 0, i32* %code, align 4, !tbaa !29
  %11 = load i32, i32* %for_error.addr, align 4, !tbaa !29
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then, label %if.end.15

if.then:                                          ; preds = %entry
  %12 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 1
  %value3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx2, i32 0, i32 1
  %opproc = bitcast %union.v* %value3 to i32 (%struct.gs_context_state_s*)**
  %13 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %opproc, align 8, !tbaa !1
  %cmp = icmp eq i32 (%struct.gs_context_state_s*)* %13, @op_show_continue
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %14 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %enum_client_data = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %14, i32 0, i32 11
  %15 = load i8*, i8** %enum_client_data, align 8, !tbaa !102
  %cmp5 = icmp ne i8* %15, null
  br i1 %cmp5, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %land.lhs.true
  %16 = bitcast i32 (%struct.gs_context_state_s*)** %proc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %enum_client_data8 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %17, i32 0, i32 11
  %18 = load i8*, i8** %enum_client_data8, align 8, !tbaa !102
  %19 = bitcast i32 (%struct.gs_context_state_s*)** %proc to i8**
  store i8* %18, i8** %19, align 8, !tbaa !1
  %20 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %proc, align 8, !tbaa !1
  %21 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i64 1
  %value10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr9, i32 0, i32 1
  %opproc11 = bitcast %union.v* %value10 to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* %20, i32 (%struct.gs_context_state_s*)** %opproc11, align 8, !tbaa !1
  %22 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i64 1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr12, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 3968, i16* %type_attrs, align 2, !tbaa !27
  %23 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i64 1
  %tas14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr13, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas14, i32 0, i32 2
  store i32 0, i32* %rsize, align 4, !tbaa !58
  %24 = bitcast i32 (%struct.gs_context_state_s*)** %proc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  br label %if.end

if.end:                                           ; preds = %if.then.7, %land.lhs.true, %if.then
  br label %if.end.15

if.end.15:                                        ; preds = %if.end, %entry
  %25 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %text = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %25, i32 0, i32 0
  %operation = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text, i32 0, i32 0
  %26 = load i32, i32* %operation, align 4, !tbaa !74
  %and = and i32 %26, 131584
  %cmp16 = icmp eq i32 %and, 131584
  br i1 %cmp16, label %land.lhs.true.18, label %if.end.22

land.lhs.true.18:                                 ; preds = %if.end.15
  %27 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %27, i32 0, i32 0
  %28 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !30
  %text_rendering_mode = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %28, i32 0, i32 18
  %29 = load i32, i32* %text_rendering_mode, align 4, !tbaa !103
  %cmp19 = icmp ne i32 %29, 3
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %land.lhs.true.18
  %30 = load i32, i32* %saved_level, align 4, !tbaa !29
  %dec = add nsw i32 %30, -1
  store i32 %dec, i32* %saved_level, align 4, !tbaa !29
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %land.lhs.true.18, %if.end.15
  %31 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %text23 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %31, i32 0, i32 0
  %operation24 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text23, i32 0, i32 0
  %32 = load i32, i32* %operation24, align 4, !tbaa !74
  %and25 = and i32 %32, 256
  %tobool26 = icmp ne i32 %and25, 0
  br i1 %tobool26, label %if.then.27, label %if.end.39

if.then.27:                                       ; preds = %if.end.22
  %33 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %33, i32 0, i32 8
  %34 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !104
  %35 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %text28 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %35, i32 0, i32 0
  %y_widths = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text28, i32 0, i32 7
  %36 = load float*, float** %y_widths, align 8, !tbaa !105
  %37 = bitcast float* %36 to i8*
  call void @gs_free_const_object(%struct.gs_memory_s* %34, i8* %37, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0)) #3
  %38 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %text29 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %38, i32 0, i32 0
  %x_widths = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text29, i32 0, i32 6
  %39 = load float*, float** %x_widths, align 8, !tbaa !106
  %40 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %text30 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %40, i32 0, i32 0
  %y_widths31 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text30, i32 0, i32 7
  %41 = load float*, float** %y_widths31, align 8, !tbaa !105
  %cmp32 = icmp ne float* %39, %41
  br i1 %cmp32, label %if.then.34, label %if.end.38

if.then.34:                                       ; preds = %if.then.27
  %42 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %memory35 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %42, i32 0, i32 8
  %43 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory35, align 8, !tbaa !104
  %44 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %text36 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %44, i32 0, i32 0
  %x_widths37 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text36, i32 0, i32 6
  %45 = load float*, float** %x_widths37, align 8, !tbaa !106
  %46 = bitcast float* %45 to i8*
  call void @gs_free_const_object(%struct.gs_memory_s* %43, i8* %46, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0)) #3
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.34, %if.then.27
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.end.22
  %47 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs40 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %47, i32 0, i32 0
  %48 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs40, align 8, !tbaa !30
  %49 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %orig_font = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %49, i32 0, i32 4
  %50 = load %struct.gs_font_s*, %struct.gs_font_s** %orig_font, align 8, !tbaa !43
  call void @gs_set_currentfont(%struct.gs_state_s* %48, %struct.gs_font_s* %50) #3
  br label %while.cond

while.cond:                                       ; preds = %if.end.56, %if.end.39
  %51 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs41 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %51, i32 0, i32 0
  %52 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs41, align 8, !tbaa !30
  %level = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %52, i32 0, i32 77
  %53 = load i32, i32* %level, align 4, !tbaa !90
  %54 = load i32, i32* %saved_level, align 4, !tbaa !29
  %cmp42 = icmp sgt i32 %53, %54
  br i1 %cmp42, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %55 = load i32, i32* %code, align 4, !tbaa !29
  %cmp44 = icmp sge i32 %55, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %56 = phi i1 [ false, %while.cond ], [ %cmp44, %land.rhs ]
  br i1 %56, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %57 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs46 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %57, i32 0, i32 0
  %58 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs46, align 8, !tbaa !30
  %saved = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %58, i32 0, i32 56
  %59 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8, !tbaa !107
  %cmp47 = icmp eq %struct.gs_state_s* %59, null
  br i1 %cmp47, label %if.then.54, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %60 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs49 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %60, i32 0, i32 0
  %61 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs49, align 8, !tbaa !30
  %saved50 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %61, i32 0, i32 56
  %62 = load %struct.gs_state_s*, %struct.gs_state_s** %saved50, align 8, !tbaa !107
  %saved51 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %62, i32 0, i32 56
  %63 = load %struct.gs_state_s*, %struct.gs_state_s** %saved51, align 8, !tbaa !107
  %cmp52 = icmp eq %struct.gs_state_s* %63, null
  br i1 %cmp52, label %if.then.54, label %if.else

if.then.54:                                       ; preds = %lor.lhs.false, %while.body
  store i32 -100, i32* %code, align 4, !tbaa !29
  br label %if.end.56

if.else:                                          ; preds = %lor.lhs.false
  %64 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs55 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %64, i32 0, i32 0
  %65 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs55, align 8, !tbaa !30
  %call = call i32 @gs_grestore(%struct.gs_state_s* %65) #3
  store i32 %call, i32* %code, align 4, !tbaa !29
  br label %if.end.56

if.end.56:                                        ; preds = %if.else, %if.then.54
  br label %while.cond

while.end:                                        ; preds = %land.end
  %66 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  call void @gs_text_release(%struct.gs_text_enum_s* %66, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i32 0, i32 0)) #3
  %67 = load i32, i32* %code, align 4, !tbaa !29
  %68 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #1
  %69 = bitcast i32* %saved_level to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #1
  %70 = bitcast %struct.gs_text_enum_s** %penum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #1
  %71 = bitcast %struct.ref_s** %ep to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #1
  ret i32 %67
}

; Function Attrs: nounwind uwtable
define i32 @font_bbox_param(%struct.gs_memory_s* %mem, %struct.ref_s* %pfdict, double* %bbox) #0 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pfdict.addr = alloca %struct.ref_s*, align 8
  %bbox.addr = alloca double*, align 8
  %pbbox = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  %pbe = alloca i16*, align 8
  %rbe = alloca [4 x %struct.ref_s], align 16
  %i = alloca i32, align 4
  %code = alloca i32, align 4
  %dx = alloca float, align 4
  %dy = alloca float, align 4
  %ratio = alloca float, align 4
  %max_ratio = alloca float, align 4
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.ref_s* %pfdict, %struct.ref_s** %pfdict.addr, align 8, !tbaa !1
  store double* %bbox, double** %bbox.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %pbbox to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load double*, double** %bbox.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds double, double* %1, i64 3
  store double 0.000000e+00, double* %arrayidx, align 8, !tbaa !57
  %2 = load double*, double** %bbox.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds double, double* %2, i64 2
  store double 0.000000e+00, double* %arrayidx1, align 8, !tbaa !57
  %3 = load double*, double** %bbox.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds double, double* %3, i64 1
  store double 0.000000e+00, double* %arrayidx2, align 8, !tbaa !57
  %4 = load double*, double** %bbox.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds double, double* %4, i64 0
  store double 0.000000e+00, double* %arrayidx3, align 8, !tbaa !57
  %5 = load %struct.ref_s*, %struct.ref_s** %pfdict.addr, align 8, !tbaa !1
  %call = call i32 @dict_find_string(%struct.ref_s* %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), %struct.ref_s** %pbbox) #3
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load %struct.ref_s*, %struct.ref_s** %pbbox, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %7 = load i16, i16* %type_attrs, align 2, !tbaa !27
  %conv = zext i16 %7 to i32
  %and = and i32 %conv, 15360
  %cmp4 = icmp eq i32 %and, 1024
  br i1 %cmp4, label %if.end, label %if.then.6

if.then.6:                                        ; preds = %if.then
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.60

if.end:                                           ; preds = %if.then
  %8 = load %struct.ref_s*, %struct.ref_s** %pbbox, align 8, !tbaa !1
  %tas7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas7, i32 0, i32 2
  %9 = load i32, i32* %rsize, align 4, !tbaa !58
  %cmp8 = icmp eq i32 %9, 4
  br i1 %cmp8, label %if.then.10, label %if.end.55

if.then.10:                                       ; preds = %if.end
  %10 = bitcast i16** %pbe to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load %struct.ref_s*, %struct.ref_s** %pbbox, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 1
  %packed = bitcast %union.v* %value to i16**
  %12 = load i16*, i16** %packed, align 8, !tbaa !1
  store i16* %12, i16** %pbe, align 8, !tbaa !1
  %13 = bitcast [4 x %struct.ref_s]* %rbe to i8*
  call void @llvm.lifetime.start(i64 64, i8* %13) #1
  %14 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = bitcast float* %dx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = bitcast float* %dy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = bitcast float* %ratio to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = bitcast float* %max_ratio to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  store float 1.200000e+01, float* %max_ratio, align 4, !tbaa !25
  store i32 0, i32* %i, align 4, !tbaa !29
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.10
  %20 = load i32, i32* %i, align 4, !tbaa !29
  %cmp11 = icmp slt i32 %20, 4
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %22 = load i16*, i16** %pbe, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [4 x %struct.ref_s], [4 x %struct.ref_s]* %rbe, i32 0, i32 0
  %23 = load i32, i32* %i, align 4, !tbaa !29
  %idx.ext = sext i32 %23 to i64
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arraydecay, i64 %idx.ext
  call void @packed_get(%struct.gs_memory_s* %21, i16* %22, %struct.ref_s* %add.ptr) #3
  %24 = load i16*, i16** %pbe, align 8, !tbaa !1
  %25 = load i16, i16* %24, align 2, !tbaa !67
  %conv13 = zext i16 %25 to i32
  %cmp14 = icmp sge i32 %conv13, 16384
  br i1 %cmp14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %26 = load i16*, i16** %pbe, align 8, !tbaa !1
  %add.ptr16 = getelementptr inbounds i16, i16* %26, i64 1
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %27 = load i16*, i16** %pbe, align 8, !tbaa !1
  %add.ptr17 = getelementptr inbounds i16, i16* %27, i64 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i16* [ %add.ptr16, %cond.true ], [ %add.ptr17, %cond.false ]
  store i16* %cond, i16** %pbe, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %28 = load i32, i32* %i, align 4, !tbaa !29
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %i, align 4, !tbaa !29
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay18 = getelementptr inbounds [4 x %struct.ref_s], [4 x %struct.ref_s]* %rbe, i32 0, i32 0
  %add.ptr19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arraydecay18, i64 3
  %29 = load double*, double** %bbox.addr, align 8, !tbaa !1
  %call20 = call i32 @num_params(%struct.ref_s* %add.ptr19, i32 4, double* %29) #3
  store i32 %call20, i32* %code, align 4, !tbaa !29
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %for.end
  %30 = load i32, i32* %code, align 4, !tbaa !29
  store i32 %30, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.24:                                        ; preds = %for.end
  %31 = load double*, double** %bbox.addr, align 8, !tbaa !1
  %arrayidx25 = getelementptr inbounds double, double* %31, i64 2
  %32 = load double, double* %arrayidx25, align 8, !tbaa !57
  %33 = load double*, double** %bbox.addr, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds double, double* %33, i64 0
  %34 = load double, double* %arrayidx26, align 8, !tbaa !57
  %sub = fsub double %32, %34
  %conv27 = fptrunc double %sub to float
  store float %conv27, float* %dx, align 4, !tbaa !25
  %35 = load double*, double** %bbox.addr, align 8, !tbaa !1
  %arrayidx28 = getelementptr inbounds double, double* %35, i64 3
  %36 = load double, double* %arrayidx28, align 8, !tbaa !57
  %37 = load double*, double** %bbox.addr, align 8, !tbaa !1
  %arrayidx29 = getelementptr inbounds double, double* %37, i64 1
  %38 = load double, double* %arrayidx29, align 8, !tbaa !57
  %sub30 = fsub double %36, %38
  %conv31 = fptrunc double %sub30 to float
  store float %conv31, float* %dy, align 4, !tbaa !25
  %39 = load float, float* %dx, align 4, !tbaa !25
  %cmp32 = fcmp ole float %39, 0.000000e+00
  br i1 %cmp32, label %if.then.42, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.24
  %40 = load float, float* %dy, align 4, !tbaa !25
  %cmp34 = fcmp ole float %40, 0.000000e+00
  br i1 %cmp34, label %if.then.42, label %lor.lhs.false.36

lor.lhs.false.36:                                 ; preds = %lor.lhs.false
  %41 = load float, float* %dy, align 4, !tbaa !25
  %42 = load float, float* %dx, align 4, !tbaa !25
  %div = fdiv float %41, %42
  store float %div, float* %ratio, align 4, !tbaa !25
  %cmp37 = fcmp olt float %div, 0x3FB5555560000000
  br i1 %cmp37, label %if.then.42, label %lor.lhs.false.39

lor.lhs.false.39:                                 ; preds = %lor.lhs.false.36
  %43 = load float, float* %ratio, align 4, !tbaa !25
  %cmp40 = fcmp ogt float %43, 1.200000e+01
  br i1 %cmp40, label %if.then.42, label %if.end.47

if.then.42:                                       ; preds = %lor.lhs.false.39, %lor.lhs.false.36, %lor.lhs.false, %if.end.24
  %44 = load double*, double** %bbox.addr, align 8, !tbaa !1
  %arrayidx43 = getelementptr inbounds double, double* %44, i64 3
  store double 0.000000e+00, double* %arrayidx43, align 8, !tbaa !57
  %45 = load double*, double** %bbox.addr, align 8, !tbaa !1
  %arrayidx44 = getelementptr inbounds double, double* %45, i64 2
  store double 0.000000e+00, double* %arrayidx44, align 8, !tbaa !57
  %46 = load double*, double** %bbox.addr, align 8, !tbaa !1
  %arrayidx45 = getelementptr inbounds double, double* %46, i64 1
  store double 0.000000e+00, double* %arrayidx45, align 8, !tbaa !57
  %47 = load double*, double** %bbox.addr, align 8, !tbaa !1
  %arrayidx46 = getelementptr inbounds double, double* %47, i64 0
  store double 0.000000e+00, double* %arrayidx46, align 8, !tbaa !57
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.42, %lor.lhs.false.39
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.47, %if.then.23
  %48 = bitcast float* %max_ratio to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #1
  %49 = bitcast float* %ratio to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #1
  %50 = bitcast float* %dy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #1
  %51 = bitcast float* %dx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #1
  %52 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #1
  %53 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #1
  %54 = bitcast [4 x %struct.ref_s]* %rbe to i8*
  call void @llvm.lifetime.end(i64 64, i8* %54) #1
  %55 = bitcast i16** %pbe to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.60 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.55

if.end.55:                                        ; preds = %cleanup.cont, %if.end
  br label %if.end.59

if.else:                                          ; preds = %entry
  %56 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call56 = call i32 @gs_currentcpsimode(%struct.gs_memory_s* %56) #3
  %tobool = icmp ne i32 %call56, 0
  br i1 %tobool, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %if.else
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.60

if.end.58:                                        ; preds = %if.else
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %if.end.55
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.60

cleanup.60:                                       ; preds = %if.end.59, %if.then.57, %cleanup, %if.then.6
  %57 = bitcast %struct.ref_s** %pbbox to i8*
  call void @llvm.lifetime.end(i64 8, i8* %57) #1
  %58 = load i32, i32* %retval
  ret i32 %58
}

declare i32 @dict_find_string(%struct.ref_s*, i8*, %struct.ref_s**) #2

declare void @packed_get(%struct.gs_memory_s*, i16*, %struct.ref_s*) #2

declare i32 @gs_ashow_begin(%struct.gs_state_s*, double, double, i8*, i32, %struct.gs_memory_s*, %struct.gs_text_enum_s**) #2

; Function Attrs: nounwind uwtable
define internal i32 @awidthshow_aux(%struct.gs_context_state_s* %i_ctx_p, i32 %single_byte_space) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %single_byte_space.addr = alloca i32, align 4
  %op = alloca %struct.ref_s*, align 8
  %penum = alloca %struct.gs_text_enum_s*, align 8
  %cxy = alloca [2 x double], align 16
  %axy = alloca [2 x double], align 16
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store i32 %single_byte_space, i32* %single_byte_space.addr, align 4, !tbaa !29
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.gs_text_enum_s** %penum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast [2 x double]* %cxy to i8*
  call void @llvm.lifetime.start(i64 16, i8* %4) #1
  %5 = bitcast [2 x double]* %axy to i8*
  call void @llvm.lifetime.start(i64 16, i8* %5) #1
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %8 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @op_show_setup(%struct.gs_context_state_s* %7, %struct.ref_s* %8) #3
  store i32 %call, i32* %code, align 4, !tbaa !29
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %code, align 4, !tbaa !29
  store i32 %9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 -1
  %arraydecay = getelementptr inbounds [2 x double], [2 x double]* %axy, i32 0, i32 0
  %call1 = call i32 @num_params(%struct.ref_s* %add.ptr, i32 2, double* %arraydecay) #3
  store i32 %call1, i32* %code, align 4, !tbaa !29
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %11 = load i32, i32* %code, align 4, !tbaa !29
  store i32 %11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %12 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 -3
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %13 = bitcast i16* %type_attrs to i8*
  %arrayidx5 = getelementptr inbounds i8, i8* %13, i64 1
  %14 = load i8, i8* %arrayidx5, align 1, !tbaa !65
  %conv = zext i8 %14 to i32
  %cmp6 = icmp eq i32 %conv, 11
  br i1 %cmp6, label %if.end.11, label %if.then.8

if.then.8:                                        ; preds = %if.end.4
  %15 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i64 -3
  %call10 = call i32 @check_type_failed(%struct.ref_s* %arrayidx9) #3
  store i32 %call10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %if.end.4
  %16 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %16, i32 0, i32 0
  %17 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !30
  %call12 = call %struct.gs_font_s* @gs_currentfont(%struct.gs_state_s* %17) #3
  %FontType = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %call12, i32 0, i32 11
  %18 = load i32, i32* %FontType, align 4, !tbaa !50
  %cmp13 = icmp eq i32 %18, 0
  br i1 %cmp13, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %if.end.11
  %19 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i64 -3
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx16, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %20 = load i64, i64* %intval, align 8, !tbaa !55
  %21 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i64 -3
  %value18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx17, i32 0, i32 1
  %intval19 = bitcast %union.v* %value18 to i64*
  %22 = load i64, i64* %intval19, align 8, !tbaa !55
  %cmp20 = icmp ne i64 %20, %22
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.then.15
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.23:                                        ; preds = %if.then.15
  br label %if.end.36

if.else:                                          ; preds = %if.end.11
  %23 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i64 -3
  %value25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx24, i32 0, i32 1
  %intval26 = bitcast %union.v* %value25 to i64*
  %24 = load i64, i64* %intval26, align 8, !tbaa !55
  %cmp27 = icmp slt i64 %24, 0
  br i1 %cmp27, label %if.then.34, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %25 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i64 -3
  %value30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx29, i32 0, i32 1
  %intval31 = bitcast %union.v* %value30 to i64*
  %26 = load i64, i64* %intval31, align 8, !tbaa !55
  %cmp32 = icmp sgt i64 %26, 255
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %lor.lhs.false, %if.else
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.35:                                        ; preds = %lor.lhs.false
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.end.23
  %27 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr37 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i64 -4
  %arraydecay38 = getelementptr inbounds [2 x double], [2 x double]* %cxy, i32 0, i32 0
  %call39 = call i32 @num_params(%struct.ref_s* %add.ptr37, i32 2, double* %arraydecay38) #3
  store i32 %call39, i32* %code, align 4, !tbaa !29
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.end.36
  %28 = load i32, i32* %code, align 4, !tbaa !29
  store i32 %28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.43:                                        ; preds = %if.end.36
  %29 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs44 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %29, i32 0, i32 0
  %30 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs44, align 8, !tbaa !30
  %arrayidx45 = getelementptr inbounds [2 x double], [2 x double]* %cxy, i32 0, i64 0
  %31 = load double, double* %arrayidx45, align 8, !tbaa !57
  %arrayidx46 = getelementptr inbounds [2 x double], [2 x double]* %cxy, i32 0, i64 1
  %32 = load double, double* %arrayidx46, align 8, !tbaa !57
  %33 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx47 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i64 -3
  %value48 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx47, i32 0, i32 1
  %intval49 = bitcast %union.v* %value48 to i64*
  %34 = load i64, i64* %intval49, align 8, !tbaa !55
  %arrayidx50 = getelementptr inbounds [2 x double], [2 x double]* %axy, i32 0, i64 0
  %35 = load double, double* %arrayidx50, align 8, !tbaa !57
  %arrayidx51 = getelementptr inbounds [2 x double], [2 x double]* %axy, i32 0, i64 1
  %36 = load double, double* %arrayidx51, align 8, !tbaa !57
  %37 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value52 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %37, i32 0, i32 1
  %bytes = bitcast %union.v* %value52 to i8**
  %38 = load i8*, i8** %bytes, align 8, !tbaa !1
  %39 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas53 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %39, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas53, i32 0, i32 2
  %40 = load i32, i32* %rsize, align 4, !tbaa !58
  %41 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %41, i32 0, i32 1
  %spaces = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 1
  %memories = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces, i32 0, i32 1
  %named = bitcast %union.anon.1* %memories to %struct._ssn*
  %local = getelementptr inbounds %struct._ssn, %struct._ssn* %named, i32 0, i32 3
  %42 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %local, align 8, !tbaa !59
  %43 = bitcast %struct.gs_ref_memory_s* %42 to %struct.gs_memory_s*
  %call54 = call i32 @gs_awidthshow_begin(%struct.gs_state_s* %30, double %31, double %32, i64 %34, double %35, double %36, i8* %38, i32 %40, %struct.gs_memory_s* %43, %struct.gs_text_enum_s** %penum) #3
  store i32 %call54, i32* %code, align 4, !tbaa !29
  %cmp55 = icmp slt i32 %call54, 0
  br i1 %cmp55, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %if.end.43
  %44 = load i32, i32* %code, align 4, !tbaa !29
  store i32 %44, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.58:                                        ; preds = %if.end.43
  %45 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %enum_client_data = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %45, i32 0, i32 11
  %46 = bitcast i8** %enum_client_data to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @zawidthshow, i32 (%struct.gs_context_state_s*)** %46, align 8, !tbaa !1
  %47 = load i32, i32* %single_byte_space.addr, align 4, !tbaa !29
  %48 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %single_byte_space59 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %48, i32 0, i32 21
  store i32 %47, i32* %single_byte_space59, align 4, !tbaa !108
  %49 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %50 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %call60 = call i32 @op_show_finish_setup(%struct.gs_context_state_s* %49, %struct.gs_text_enum_s* %50, i32 6, i32 (%struct.gs_context_state_s*)* @finish_show) #3
  store i32 %call60, i32* %code, align 4, !tbaa !29
  %cmp61 = icmp slt i32 %call60, 0
  br i1 %cmp61, label %if.then.63, label %if.end.67

if.then.63:                                       ; preds = %if.end.58
  %51 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory64 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %51, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory64, i32 0, i32 0
  %52 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !61
  %53 = bitcast %struct.gs_ref_memory_s* %52 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %53, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %54 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !62
  %55 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory65 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %55, i32 0, i32 1
  %current66 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory65, i32 0, i32 0
  %56 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current66, align 8, !tbaa !61
  %57 = bitcast %struct.gs_ref_memory_s* %56 to %struct.gs_memory_s*
  %58 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %59 = bitcast %struct.gs_text_enum_s* %58 to i8*
  call void %54(%struct.gs_memory_s* %57, i8* %59, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i32 0, i32 0)) #3
  %60 = load i32, i32* %code, align 4, !tbaa !29
  store i32 %60, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.67:                                        ; preds = %if.end.58
  %61 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call68 = call i32 @op_show_continue_pop(%struct.gs_context_state_s* %61, i32 6) #3
  store i32 %call68, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.67, %if.then.63, %if.then.57, %if.then.42, %if.then.34, %if.then.22, %if.then.8, %if.then.3, %if.then
  %62 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #1
  %63 = bitcast [2 x double]* %axy to i8*
  call void @llvm.lifetime.end(i64 16, i8* %63) #1
  %64 = bitcast [2 x double]* %cxy to i8*
  call void @llvm.lifetime.end(i64 16, i8* %64) #1
  %65 = bitcast %struct.gs_text_enum_s** %penum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #1
  %66 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #1
  %67 = load i32, i32* %retval
  ret i32 %67
}

declare i32 @gs_awidthshow_begin(%struct.gs_state_s*, double, double, i64, double, double, i8*, i32, %struct.gs_memory_s*, %struct.gs_text_enum_s**) #2

; Function Attrs: nounwind uwtable
define internal i32 @zchar_path(%struct.gs_context_state_s* %i_ctx_p, i32 (%struct.gs_context_state_s*)* %proc, i32 (%struct.gs_state_s*, i8*, i32, i32, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* %begin) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %proc.addr = alloca i32 (%struct.gs_context_state_s*)*, align 8
  %begin.addr = alloca i32 (%struct.gs_state_s*, i8*, i32, i32, %struct.gs_memory_s*, %struct.gs_text_enum_s**)*, align 8
  %op = alloca %struct.ref_s*, align 8
  %penum = alloca %struct.gs_text_enum_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store i32 (%struct.gs_context_state_s*)* %proc, i32 (%struct.gs_context_state_s*)** %proc.addr, align 8, !tbaa !1
  store i32 (%struct.gs_state_s*, i8*, i32, i32, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* %begin, i32 (%struct.gs_state_s*, i8*, i32, i32, %struct.gs_memory_s*, %struct.gs_text_enum_s**)** %begin.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.gs_text_enum_s** %penum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %6 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 1
  %7 = load i8, i8* %arrayidx, align 1, !tbaa !65
  %conv = zext i8 %7 to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %8 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %8) #3
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 -1
  %call2 = call i32 @op_show_setup(%struct.gs_context_state_s* %9, %struct.ref_s* %add.ptr) #3
  store i32 %call2, i32* %code, align 4, !tbaa !29
  %11 = load i32, i32* %code, align 4, !tbaa !29
  %cmp3 = icmp ne i32 %11, 0
  br i1 %cmp3, label %if.then.13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %12 = load i32 (%struct.gs_state_s*, i8*, i32, i32, %struct.gs_memory_s*, %struct.gs_text_enum_s**)*, i32 (%struct.gs_state_s*, i8*, i32, i32, %struct.gs_memory_s*, %struct.gs_text_enum_s**)** %begin.addr, align 8, !tbaa !1
  %13 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %13, i32 0, i32 0
  %14 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !30
  %15 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i64 -1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx5, i32 0, i32 1
  %bytes = bitcast %union.v* %value to i8**
  %16 = load i8*, i8** %bytes, align 8, !tbaa !1
  %17 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i64 -1
  %tas7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr6, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas7, i32 0, i32 2
  %18 = load i32, i32* %rsize, align 4, !tbaa !58
  %19 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i32 0, i32 1
  %boolval = bitcast %union.v* %value8 to i16*
  %20 = load i16, i16* %boolval, align 2, !tbaa !67
  %conv9 = zext i16 %20 to i32
  %21 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %21, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %22 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !61
  %23 = bitcast %struct.gs_ref_memory_s* %22 to %struct.gs_memory_s*
  %call10 = call i32 %12(%struct.gs_state_s* %14, i8* %16, i32 %18, i32 %conv9, %struct.gs_memory_s* %23, %struct.gs_text_enum_s** %penum) #3
  store i32 %call10, i32* %code, align 4, !tbaa !29
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %lor.lhs.false, %if.end
  %24 = load i32, i32* %code, align 4, !tbaa !29
  store i32 %24, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %lor.lhs.false
  %25 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %proc.addr, align 8, !tbaa !1
  %26 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %enum_client_data = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %26, i32 0, i32 11
  %27 = bitcast i8** %enum_client_data to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* %25, i32 (%struct.gs_context_state_s*)** %27, align 8, !tbaa !1
  %28 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %29 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %call15 = call i32 @op_show_finish_setup(%struct.gs_context_state_s* %28, %struct.gs_text_enum_s* %29, i32 2, i32 (%struct.gs_context_state_s*)* @finish_show) #3
  store i32 %call15, i32* %code, align 4, !tbaa !29
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.then.18, label %if.end.23

if.then.18:                                       ; preds = %if.end.14
  %30 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory19 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %30, i32 0, i32 1
  %current20 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory19, i32 0, i32 0
  %31 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current20, align 8, !tbaa !61
  %32 = bitcast %struct.gs_ref_memory_s* %31 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %32, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %33 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !62
  %34 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory21 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %34, i32 0, i32 1
  %current22 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory21, i32 0, i32 0
  %35 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current22, align 8, !tbaa !61
  %36 = bitcast %struct.gs_ref_memory_s* %35 to %struct.gs_memory_s*
  %37 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %38 = bitcast %struct.gs_text_enum_s* %37 to i8*
  call void %33(%struct.gs_memory_s* %36, i8* %38, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i32 0, i32 0)) #3
  %39 = load i32, i32* %code, align 4, !tbaa !29
  store i32 %39, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.23:                                        ; preds = %if.end.14
  %40 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call24 = call i32 @op_show_continue_pop(%struct.gs_context_state_s* %40, i32 2) #3
  store i32 %call24, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.23, %if.then.18, %if.then.13, %if.then
  %41 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #1
  %42 = bitcast %struct.gs_text_enum_s** %penum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  %43 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #1
  %44 = load i32, i32* %retval
  ret i32 %44
}

declare i32 @gs_charpath_begin(%struct.gs_state_s*, i8*, i32, i32, %struct.gs_memory_s*, %struct.gs_text_enum_s**) #2

declare i32 @gs_charboxpath_begin(%struct.gs_state_s*, i8*, i32, i32, %struct.gs_memory_s*, %struct.gs_text_enum_s**) #2

declare i32 @check_proc_failed(%struct.ref_s*) #2

declare i32 @gs_kshow_begin(%struct.gs_state_s*, i8*, i32, %struct.gs_memory_s*, %struct.gs_text_enum_s**) #2

declare i32 @gs_text_setcharwidth(%struct.gs_text_enum_s*, double*) #2

declare i32 @gs_show_begin(%struct.gs_state_s*, i8*, i32, %struct.gs_memory_s*, %struct.gs_text_enum_s**) #2

declare i32 @gs_stringwidth_begin(%struct.gs_state_s*, i8*, i32, %struct.gs_memory_s*, %struct.gs_text_enum_s**) #2

; Function Attrs: nounwind uwtable
define internal i32 @widthshow_aux(%struct.gs_context_state_s* %i_ctx_p, i32 %single_byte_space) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %single_byte_space.addr = alloca i32, align 4
  %op = alloca %struct.ref_s*, align 8
  %penum = alloca %struct.gs_text_enum_s*, align 8
  %cxy = alloca [2 x double], align 16
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store i32 %single_byte_space, i32* %single_byte_space.addr, align 4, !tbaa !29
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.gs_text_enum_s** %penum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast [2 x double]* %cxy to i8*
  call void @llvm.lifetime.start(i64 16, i8* %4) #1
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @op_show_setup(%struct.gs_context_state_s* %6, %struct.ref_s* %7) #3
  store i32 %call, i32* %code, align 4, !tbaa !29
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %code, align 4, !tbaa !29
  store i32 %8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i64 -1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %10 = bitcast i16* %type_attrs to i8*
  %arrayidx1 = getelementptr inbounds i8, i8* %10, i64 1
  %11 = load i8, i8* %arrayidx1, align 1, !tbaa !65
  %conv = zext i8 %11 to i32
  %cmp2 = icmp eq i32 %conv, 11
  br i1 %cmp2, label %if.end.7, label %if.then.4

if.then.4:                                        ; preds = %if.end
  %12 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 -1
  %call6 = call i32 @check_type_failed(%struct.ref_s* %arrayidx5) #3
  store i32 %call6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %if.end
  %13 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %13, i32 0, i32 0
  %14 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !30
  %call8 = call %struct.gs_font_s* @gs_currentfont(%struct.gs_state_s* %14) #3
  %FontType = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %call8, i32 0, i32 11
  %15 = load i32, i32* %FontType, align 4, !tbaa !50
  %cmp9 = icmp eq i32 %15, 0
  br i1 %cmp9, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.end.7
  %16 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i64 -1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx12, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %17 = load i64, i64* %intval, align 8, !tbaa !55
  %18 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i64 -1
  %value14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx13, i32 0, i32 1
  %intval15 = bitcast %union.v* %value14 to i64*
  %19 = load i64, i64* %intval15, align 8, !tbaa !55
  %cmp16 = icmp ne i64 %17, %19
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.then.11
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.19:                                        ; preds = %if.then.11
  br label %if.end.32

if.else:                                          ; preds = %if.end.7
  %20 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i64 -1
  %value21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx20, i32 0, i32 1
  %intval22 = bitcast %union.v* %value21 to i64*
  %21 = load i64, i64* %intval22, align 8, !tbaa !55
  %cmp23 = icmp slt i64 %21, 0
  br i1 %cmp23, label %if.then.30, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %22 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i64 -1
  %value26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx25, i32 0, i32 1
  %intval27 = bitcast %union.v* %value26 to i64*
  %23 = load i64, i64* %intval27, align 8, !tbaa !55
  %cmp28 = icmp sgt i64 %23, 255
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %lor.lhs.false, %if.else
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.31:                                        ; preds = %lor.lhs.false
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.end.19
  %24 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i64 -2
  %arraydecay = getelementptr inbounds [2 x double], [2 x double]* %cxy, i32 0, i32 0
  %call33 = call i32 @num_params(%struct.ref_s* %add.ptr, i32 2, double* %arraydecay) #3
  store i32 %call33, i32* %code, align 4, !tbaa !29
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end.32
  %25 = load i32, i32* %code, align 4, !tbaa !29
  store i32 %25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.37:                                        ; preds = %if.end.32
  %26 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs38 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %26, i32 0, i32 0
  %27 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs38, align 8, !tbaa !30
  %arrayidx39 = getelementptr inbounds [2 x double], [2 x double]* %cxy, i32 0, i64 0
  %28 = load double, double* %arrayidx39, align 8, !tbaa !57
  %arrayidx40 = getelementptr inbounds [2 x double], [2 x double]* %cxy, i32 0, i64 1
  %29 = load double, double* %arrayidx40, align 8, !tbaa !57
  %30 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i64 -1
  %value42 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx41, i32 0, i32 1
  %intval43 = bitcast %union.v* %value42 to i64*
  %31 = load i64, i64* %intval43, align 8, !tbaa !55
  %32 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value44 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i32 0, i32 1
  %bytes = bitcast %union.v* %value44 to i8**
  %33 = load i8*, i8** %bytes, align 8, !tbaa !1
  %34 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas45 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas45, i32 0, i32 2
  %35 = load i32, i32* %rsize, align 4, !tbaa !58
  %36 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %36, i32 0, i32 1
  %spaces = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 1
  %memories = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces, i32 0, i32 1
  %named = bitcast %union.anon.1* %memories to %struct._ssn*
  %local = getelementptr inbounds %struct._ssn, %struct._ssn* %named, i32 0, i32 3
  %37 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %local, align 8, !tbaa !59
  %38 = bitcast %struct.gs_ref_memory_s* %37 to %struct.gs_memory_s*
  %call46 = call i32 @gs_widthshow_begin(%struct.gs_state_s* %27, double %28, double %29, i64 %31, i8* %33, i32 %35, %struct.gs_memory_s* %38, %struct.gs_text_enum_s** %penum) #3
  store i32 %call46, i32* %code, align 4, !tbaa !29
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %if.end.37
  %39 = load i32, i32* %code, align 4, !tbaa !29
  store i32 %39, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.50:                                        ; preds = %if.end.37
  %40 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %enum_client_data = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %40, i32 0, i32 11
  %41 = bitcast i8** %enum_client_data to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @zwidthshow, i32 (%struct.gs_context_state_s*)** %41, align 8, !tbaa !1
  %42 = load i32, i32* %single_byte_space.addr, align 4, !tbaa !29
  %43 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %single_byte_space51 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %43, i32 0, i32 21
  store i32 %42, i32* %single_byte_space51, align 4, !tbaa !108
  %44 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %45 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %call52 = call i32 @op_show_finish_setup(%struct.gs_context_state_s* %44, %struct.gs_text_enum_s* %45, i32 4, i32 (%struct.gs_context_state_s*)* @finish_show) #3
  store i32 %call52, i32* %code, align 4, !tbaa !29
  %cmp53 = icmp slt i32 %call52, 0
  br i1 %cmp53, label %if.then.55, label %if.end.59

if.then.55:                                       ; preds = %if.end.50
  %46 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory56 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %46, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory56, i32 0, i32 0
  %47 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !61
  %48 = bitcast %struct.gs_ref_memory_s* %47 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %48, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %49 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !62
  %50 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory57 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %50, i32 0, i32 1
  %current58 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory57, i32 0, i32 0
  %51 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current58, align 8, !tbaa !61
  %52 = bitcast %struct.gs_ref_memory_s* %51 to %struct.gs_memory_s*
  %53 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %54 = bitcast %struct.gs_text_enum_s* %53 to i8*
  call void %49(%struct.gs_memory_s* %52, i8* %54, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i32 0, i32 0)) #3
  %55 = load i32, i32* %code, align 4, !tbaa !29
  store i32 %55, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.59:                                        ; preds = %if.end.50
  %56 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call60 = call i32 @op_show_continue_pop(%struct.gs_context_state_s* %56, i32 4) #3
  store i32 %call60, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.59, %if.then.55, %if.then.49, %if.then.36, %if.then.30, %if.then.18, %if.then.4, %if.then
  %57 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #1
  %58 = bitcast [2 x double]* %cxy to i8*
  call void @llvm.lifetime.end(i64 16, i8* %58) #1
  %59 = bitcast %struct.gs_text_enum_s** %penum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #1
  %60 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %60) #1
  %61 = load i32, i32* %retval
  ret i32 %61
}

declare i32 @gs_widthshow_begin(%struct.gs_state_s*, double, double, i64, i8*, i32, %struct.gs_memory_s*, %struct.gs_text_enum_s**) #2

declare i32 @make_reals(%struct.ref_s*, double*, i32) #2

declare void @ref_stack_enum_begin(%struct.ref_stack_enum_s*, %struct.ref_stack_s*) #2

declare i32 @ref_stack_enum_next(%struct.ref_stack_enum_s*) #2

declare i32 @zend(%struct.gs_context_state_s*) #2

declare void @ref_stack_pop(%struct.ref_stack_s*, i32) #2

declare void @pop_estack(%struct.gs_context_state_s*, i32) #2

declare void @gs_free_const_object(%struct.gs_memory_s*, i8*, i8*) #2

declare void @gs_set_currentfont(%struct.gs_state_s*, %struct.gs_font_s*) #2

declare i32 @gs_grestore(%struct.gs_state_s*) #2

declare void @gs_text_release(%struct.gs_text_enum_s*, i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !2, i64 624}
!6 = !{!"gs_context_state_s", !2, i64 0, !7, i64 8, !9, i64 80, !10, i64 88, !10, i64 104, !13, i64 120, !13, i64 128, !13, i64 136, !9, i64 144, !9, i64 148, !10, i64 152, !10, i64 168, !9, i64 184, !9, i64 188, !9, i64 192, !9, i64 196, !2, i64 200, !3, i64 208, !2, i64 256, !14, i64 264, !14, i64 304, !2, i64 344, !9, i64 352, !2, i64 360, !15, i64 368, !17, i64 520, !18, i64 624, !2, i64 720}
!7 = !{!"gs_dual_memory_s", !2, i64 0, !8, i64 8, !9, i64 48, !2, i64 56, !9, i64 64, !9, i64 68}
!8 = !{!"vm_spaces_s", !2, i64 0, !3, i64 8}
!9 = !{!"int", !3, i64 0}
!10 = !{!"ref_s", !11, i64 0, !3, i64 8}
!11 = !{!"tas_s", !12, i64 0, !12, i64 2, !9, i64 4}
!12 = !{!"short", !3, i64 0}
!13 = !{!"long", !3, i64 0}
!14 = !{!"op_array_table_s", !10, i64 0, !2, i64 16, !9, i64 24, !9, i64 28, !9, i64 32}
!15 = !{!"dict_stack_s", !16, i64 0, !9, i64 96, !9, i64 100, !9, i64 104, !2, i64 112, !9, i64 120, !2, i64 128, !10, i64 136}
!16 = !{!"ref_stack_s", !2, i64 0, !2, i64 8, !2, i64 16, !10, i64 24, !9, i64 40, !9, i64 44, !10, i64 48, !9, i64 64, !9, i64 68, !9, i64 72, !2, i64 80, !2, i64 88}
!17 = !{!"exec_stack_s", !16, i64 0, !2, i64 96}
!18 = !{!"op_stack_s", !16, i64 0}
!19 = !{!6, !2, i64 520}
!20 = !{!6, !2, i64 640}
!21 = !{!6, !9, i64 688}
!22 = !{!23, !24, i64 0}
!23 = !{!"gs_point_s", !24, i64 0, !24, i64 8}
!24 = !{!"double", !3, i64 0}
!25 = !{!26, !26, i64 0}
!26 = !{!"float", !3, i64 0}
!27 = !{!10, !12, i64 0}
!28 = !{!23, !24, i64 8}
!29 = !{!9, !9, i64 0}
!30 = !{!6, !2, i64 0}
!31 = !{!32, !2, i64 16}
!32 = !{!"gs_state_s", !9, i64 0, !2, i64 8, !2, i64 16, !33, i64 24, !9, i64 128, !36, i64 132, !9, i64 168, !23, i64 176, !23, i64 192, !9, i64 208, !9, i64 212, !12, i64 216, !3, i64 220, !37, i64 224, !37, i64 228, !38, i64 232, !13, i64 240, !9, i64 248, !9, i64 252, !9, i64 256, !2, i64 264, !9, i64 272, !9, i64 276, !9, i64 280, !9, i64 284, !9, i64 288, !9, i64 292, !26, i64 296, !39, i64 300, !9, i64 308, !9, i64 312, !9, i64 316, !26, i64 320, !9, i64 324, !9, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !9, i64 408, !2, i64 416, !2, i64 424, !40, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !41, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !41, i64 1336, !2, i64 1616, !34, i64 1624, !9, i64 1648, !34, i64 1652, !9, i64 1676, !2, i64 1680, !2, i64 1688, !2, i64 1696, !2, i64 1704, !13, i64 1712, !13, i64 1720, !2, i64 1728, !9, i64 1736, !3, i64 1744, !2, i64 1792, !2, i64 1800, !36, i64 1808, !9, i64 1844, !3, i64 1848, !3, i64 1852, !2, i64 1856, !9, i64 1864, !2, i64 1872, !2, i64 1880, !42, i64 1888}
!33 = !{!"gx_line_params_s", !26, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !9, i64 20, !26, i64 24, !26, i64 28, !26, i64 32, !9, i64 36, !34, i64 40, !35, i64 64}
!34 = !{!"gs_matrix_s", !26, i64 0, !26, i64 4, !26, i64 8, !26, i64 12, !26, i64 16, !26, i64 20}
!35 = !{!"gx_dash_params_s", !2, i64 0, !9, i64 8, !26, i64 12, !9, i64 16, !26, i64 20, !9, i64 24, !9, i64 28, !26, i64 32}
!36 = !{!"gs_matrix_fixed_s", !26, i64 0, !26, i64 4, !26, i64 8, !26, i64 12, !26, i64 16, !26, i64 20, !9, i64 24, !9, i64 28, !9, i64 32}
!37 = !{!"gs_transparency_source_s", !26, i64 0}
!38 = !{!"gs_xstate_trans_flags", !9, i64 0, !9, i64 4}
!39 = !{!"gs_fixed_point_s", !9, i64 0, !9, i64 4}
!40 = !{!"gx_transfer_s", !9, i64 0, !2, i64 8, !9, i64 16, !2, i64 24, !9, i64 32, !2, i64 40, !9, i64 48, !2, i64 56}
!41 = !{!"gs_devicen_color_map_s", !9, i64 0, !3, i64 4, !9, i64 8, !9, i64 12, !13, i64 16, !3, i64 24}
!42 = !{!"gs_state_client_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!43 = !{!44, !2, i64 112}
!44 = !{!"gs_text_enum_s", !45, i64 0, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !46, i64 160, !2, i64 184, !2, i64 192, !13, i64 200, !9, i64 208, !47, i64 212, !2, i64 224, !9, i64 232, !9, i64 236, !48, i64 240, !9, i64 344, !9, i64 348, !9, i64 352, !23, i64 360, !13, i64 376, !9, i64 384, !47, i64 388, !23, i64 400, !49, i64 416}
!45 = !{!"gs_text_params_s", !9, i64 0, !3, i64 8, !9, i64 16, !23, i64 24, !23, i64 40, !3, i64 56, !2, i64 64, !2, i64 72, !9, i64 80}
!46 = !{!"rc_header_s", !13, i64 0, !2, i64 8, !2, i64 16}
!47 = !{!"gs_log2_scale_point_s", !9, i64 0, !9, i64 4}
!48 = !{!"gx_font_stack_s", !9, i64 0, !3, i64 8}
!49 = !{!"gs_text_returned_s", !13, i64 0, !13, i64 8, !23, i64 16}
!50 = !{!51, !3, i64 128}
!51 = !{!"gs_font_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !9, i64 32, !52, i64 40, !13, i64 56, !2, i64 64, !2, i64 72, !34, i64 80, !34, i64 104, !3, i64 128, !9, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !9, i64 148, !9, i64 152, !26, i64 156, !9, i64 160, !53, i64 168, !54, i64 272, !54, i64 324}
!52 = !{!"gs_notify_list_s", !2, i64 0, !2, i64 8}
!53 = !{!"gs_font_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96}
!54 = !{!"gs_font_name_s", !3, i64 0, !9, i64 48}
!55 = !{!13, !13, i64 0}
!56 = !{!51, !9, i64 148}
!57 = !{!24, !24, i64 0}
!58 = !{!10, !9, i64 4}
!59 = !{!60, !2, i64 24}
!60 = !{!"_ssn", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!61 = !{!6, !2, i64 8}
!62 = !{!63, !2, i64 24}
!63 = !{!"gs_memory_s", !2, i64 0, !64, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!64 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!65 = !{!3, !3, i64 0}
!66 = !{i64 0, i64 2, !67, i64 2, i64 2, !67, i64 4, i64 4, !29, i64 8, i64 8, !55, i64 8, i64 2, !67, i64 8, i64 4, !25, i64 8, i64 8, !55, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !55}
!67 = !{!12, !12, i64 0}
!68 = !{!32, !3, i64 1848}
!69 = !{!63, !2, i64 192}
!70 = !{!71, !2, i64 120}
!71 = !{!"gs_lib_ctx_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !9, i64 40, !9, i64 44, !9, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !13, i64 104, !2, i64 112, !2, i64 120, !9, i64 128, !2, i64 136, !9, i64 144, !9, i64 148, !3, i64 152, !2, i64 168, !9, i64 176, !2, i64 184, !9, i64 192, !2, i64 200, !2, i64 208}
!72 = !{!6, !2, i64 536}
!73 = !{!32, !2, i64 8}
!74 = !{!44, !9, i64 0}
!75 = !{!44, !9, i64 16}
!76 = !{i64 0, i64 4, !29, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !55, i64 8, i64 8, !55, i64 16, i64 4, !29, i64 24, i64 8, !57, i64 32, i64 8, !57, i64 40, i64 8, !57, i64 48, i64 8, !57, i64 56, i64 8, !55, i64 56, i64 8, !55, i64 64, i64 8, !1, i64 72, i64 8, !1, i64 80, i64 4, !29}
!77 = !{!45, !9, i64 0}
!78 = !{!45, !9, i64 16}
!79 = !{!44, !2, i64 192}
!80 = !{!81, !3, i64 376}
!81 = !{!"gs_font_type0_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !9, i64 32, !52, i64 40, !13, i64 56, !2, i64 64, !2, i64 72, !34, i64 80, !34, i64 104, !3, i64 128, !9, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !9, i64 148, !9, i64 152, !26, i64 156, !9, i64 160, !53, i64 168, !54, i64 272, !54, i64 324, !82, i64 376}
!82 = !{!"gs_type0_data_s", !3, i64 0, !3, i64 4, !3, i64 5, !3, i64 6, !83, i64 8, !9, i64 24, !9, i64 28, !2, i64 32, !9, i64 40, !2, i64 48, !9, i64 56, !2, i64 64}
!83 = !{!"gs_const_string_s", !2, i64 0, !9, i64 8}
!84 = !{!44, !13, i64 424}
!85 = !{!44, !13, i64 200}
!86 = !{!32, !2, i64 1800}
!87 = !{!16, !2, i64 0}
!88 = !{!16, !2, i64 8}
!89 = !{!16, !9, i64 44}
!90 = !{!32, !9, i64 1864}
!91 = !{!7, !9, i64 48}
!92 = !{!51, !2, i64 72}
!93 = !{!6, !9, i64 80}
!94 = !{!95, !2, i64 464}
!95 = !{!"gs_font_type42_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !9, i64 32, !52, i64 40, !13, i64 56, !2, i64 64, !2, i64 72, !34, i64 80, !34, i64 104, !3, i64 128, !9, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !9, i64 148, !9, i64 152, !26, i64 156, !9, i64 160, !53, i64 168, !54, i64 272, !54, i64 324, !96, i64 376, !97, i64 408, !2, i64 424, !2, i64 432, !3, i64 440, !3, i64 444, !98, i64 448}
!96 = !{!"gs_rect_s", !23, i64 0, !23, i64 16}
!97 = !{!"gs_uid_s", !13, i64 0, !2, i64 8}
!98 = !{!"gs_type42_data_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !13, i64 48, !13, i64 56, !9, i64 64, !9, i64 68, !3, i64 72, !13, i64 120, !13, i64 128, !13, i64 136, !9, i64 144, !9, i64 148, !9, i64 152, !9, i64 156, !9, i64 160, !9, i64 164, !2, i64 168, !2, i64 176, !9, i64 184, !9, i64 188, !2, i64 192, !13, i64 200}
!99 = !{!100, !2, i64 8}
!100 = !{!"ref_stack_enum_s", !2, i64 0, !2, i64 8, !9, i64 16}
!101 = !{!100, !9, i64 16}
!102 = !{!44, !2, i64 184}
!103 = !{!32, !9, i64 252}
!104 = !{!44, !2, i64 144}
!105 = !{!44, !2, i64 72}
!106 = !{!44, !2, i64 64}
!107 = !{!32, !2, i64 1616}
!108 = !{!44, !9, i64 348}
