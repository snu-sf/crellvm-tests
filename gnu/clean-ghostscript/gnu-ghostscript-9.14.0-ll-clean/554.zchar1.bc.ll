; ModuleID = './zchar1.bc'
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
%struct.gs_show_enum_s = type { %struct.gs_text_params_s, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_procs_s*, %struct.rc_header_s, i8*, %struct.gs_font_s*, i64, i32, %struct.gs_log2_scale_point_s, %struct.cached_fm_pair_s*, i32, i32, %struct.gx_font_stack_s, i32, i32, i32, %struct.gs_point_s, i64, i32, %struct.gs_log2_scale_point_s, %struct.gs_point_s, %struct.gs_text_returned_s, i32, %struct.gs_state_s*, i32, i32, %struct.gs_state_s*, i32, %struct.gs_int_rect_s, %struct.gs_int_rect_s, i32, i32, i64 (%struct.gs_font_s*, i64, i32)*, %struct.gx_device_memory_s*, %struct.gx_device_memory_s*, %struct.gx_device_null_s*, %struct.gs_fixed_point_s, %struct.gs_point_s, i32, %struct.gs_fixed_point_s, %struct.cached_char_s*, i32, i32 (%struct.gs_show_enum_s*)* }
%struct.gx_device_memory_s = type opaque
%struct.gx_device_null_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s* }
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
%struct.cached_char_s = type opaque
%struct.gs_font_name_s = type { [48 x i8], i32 }
%struct.gs_matrix_fixed_s = type { float, float, float, float, float, float, i32, i32, i32 }
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
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
%struct.gs_font_type1_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, %struct.gs_fapi_server_s*, i8*, i32, i32, %struct.gs_type1_data_s }
%struct.gs_uid_s = type { i64, i64* }
%struct.gs_type1_data_s = type { %struct.gs_type1_data_procs_s, i32 (%struct.gs_type1_state_s*, %struct.gs_glyph_data_s*, i32*)*, i8*, %struct.gs_font_base_s*, i32, i32, i32, i64, i32, i32, i32, float, float, %struct.anon.2, float, i32, %struct.anon.3, %struct.anon.4, i32, %struct.anon.5, i32, %struct.anon.6, %struct.anon.7, %struct.anon.8, %struct.anon.9, %struct.anon.10, [16 x i8], i32 }
%struct.gs_type1_data_procs_s = type { {}*, i32 (%struct.gs_font_type1_s*, i32, i32, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type1_s*, i32, i64*, %struct.gs_const_string_s*, %struct.gs_glyph_data_s*)*, i32 (i8*, i32*, i32)*, i32 (i8*, i32*)* }
%struct.gs_type1_state_s = type { %struct.t1_hinter_s, %struct.gs_font_type1_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, i32, i32, i8*, %struct.fixed_coeff, float, %struct.point_scale_s, %struct.gs_log2_scale_point_s, %struct.gs_fixed_point_s, [48 x i32], i32, [11 x %struct.ip_state_t], i32, i32, i32, i32, i32, i32, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s, i32, i32, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s, i32, %struct.gs_fixed_point_s, i32, i32, %struct.gs_fixed_point_s, i32, i32, %struct.gs_fixed_point_s, [32 x i32] }
%struct.t1_hinter_s = type { %struct.fraction_matrix, %struct.fraction_matrix, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [110 x %struct.t1_pole_s], %struct.t1_pole_s*, [30 x %struct.t1_hint_s], %struct.t1_hint_s*, [6 x %struct.t1_zone_s], %struct.t1_zone_s*, [10 x i32], i32*, [10 x i32], i32*, [2 x [13 x i32]], [2 x i32*], [13 x i32], i32*, [30 x %struct.t1_hint_range_s], %struct.t1_hint_range_s*, [120 x %struct.t1_hint_applying_s], %struct.t1_hint_applying_s*, [2 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.gx_path_s*, %struct.gs_memory_s* }
%struct.fraction_matrix = type { i32, i32, i32, i32, i32, i32 }
%struct.t1_pole_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.t1_hint_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32 }
%struct.t1_zone_s = type { i32, i32, i32, i32, i32 }
%struct.t1_hint_range_s = type { i16, i16, i32 }
%struct.t1_hint_applying_s = type { i32, i32, i32 }
%struct.fixed_coeff = type { i64, i64, i64, i64, i32, i32, i32, i32 }
%struct.point_scale_s = type { %struct.pixel_scale_s, %struct.pixel_scale_s }
%struct.pixel_scale_s = type { i32, i32, i32 }
%struct.ip_state_t = type { i8*, i8*, i16, %struct.gs_glyph_data_s }
%struct.gs_glyph_data_s = type { %struct.gs_const_bytestring_s, %struct.gs_glyph_data_procs_s*, i8*, %struct.gs_memory_s* }
%struct.gs_const_bytestring_s = type { i8*, i32, i8* }
%struct.gs_glyph_data_procs_s = type { void (%struct.gs_glyph_data_s*, i8*)*, i32 (%struct.gs_glyph_data_s*, i32, i32)* }
%struct.gs_font_base_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, %struct.gs_fapi_server_s*, i8*, i32, i32 }
%struct.anon.2 = type { i32, [14 x float] }
%struct.anon.3 = type { i32, [14 x float] }
%struct.anon.4 = type { i32, [10 x float] }
%struct.anon.5 = type { i32, [10 x float] }
%struct.anon.6 = type { i32, [1 x float] }
%struct.anon.7 = type { i32, [1 x float] }
%struct.anon.8 = type { i32, [12 x float] }
%struct.anon.9 = type { i32, [12 x float] }
%struct.anon.10 = type { i32, [16 x float] }
%struct.gc_struct_data_s = type { i16, i16, %struct.gs_memory_struct_type_s*, %struct.gc_ptr_element_s* }
%struct.gc_ptr_element_s = type { i16, i16 }
%struct.gs_type1exec_state_s = type { %struct.gs_type1_state_s, %struct.gs_context_state_s*, [4 x double], i32, %struct.gs_rect_s, i32, [6 x %struct.ref_s], i32, i32 }
%struct.gs_font_cid0_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, %struct.gs_fapi_server_s*, i8*, i32, i32, %struct.gs_font_cid0_data_s }
%struct.gs_font_cid0_data_s = type { %struct.gs_font_cid_data_s, i64, %struct.gs_font_type1_s**, i32, i32, i32 (%struct.gs_font_base_s*, i64, %struct.gs_glyph_data_s*, i32*)*, i8* }
%struct.gs_font_cid_data_s = type { %struct.gs_cid_system_info_s, i32, i32, i32 }
%struct.gs_cid_system_info_s = type { %struct.gs_const_string_s, %struct.gs_const_string_s, i32 }
%struct.obj_header_s = type opaque
%struct.font_data_s = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %union._fs }
%union._fs = type { %struct._f42 }
%struct._f42 = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, i32, i64 }
%struct._f1 = type { %struct.ref_s, %struct.ref_s, %struct.ref_s }

@.str = private unnamed_addr constant [16 x i8] c"4.type1execchar\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"4%bbox_getsbw_continue\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"4%bbox_continue\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"4%bbox_finish_fill\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"4%bbox_finish_stroke\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"4%nobbox_continue\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"4%nobbox_fill\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"4%nobbox_stroke\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"4.setweightvector\00", align 1
@zchar1_op_defs = constant [10 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @ztype1execchar }, %struct.op_def { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @bbox_getsbw_continue }, %struct.op_def { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @bbox_continue }, %struct.op_def { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @bbox_finish_fill }, %struct.op_def { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @bbox_finish_stroke }, %struct.op_def { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @nobbox_continue }, %struct.op_def { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @nobbox_fill }, %struct.op_def { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @nobbox_stroke }, %struct.op_def { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zsetweightvector }, %struct.op_def zeroinitializer], align 16
@z1_data_procs = constant { i32 (%struct.gs_font_type1_s*, i64, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type1_s*, i32, i32, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type1_s*, i32, i64*, %struct.gs_const_string_s*, %struct.gs_glyph_data_s*)*, i32 (i8*, i32*, i32)*, i32 (i8*, i32*)* } { i32 (%struct.gs_font_type1_s*, i64, %struct.gs_glyph_data_s*)* @z1_glyph_data, i32 (%struct.gs_font_type1_s*, i32, i32, %struct.gs_glyph_data_s*)* @z1_subr_data, i32 (%struct.gs_font_type1_s*, i32, i64*, %struct.gs_const_string_s*, %struct.gs_glyph_data_s*)* @z1_seac_data, i32 (i8*, i32*, i32)* @z1_push, i32 (i8*, i32*)* @z1_pop }, align 8
@z1_set_cache.id_matrix = private unnamed_addr constant %struct.gs_matrix_s { float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00 }, align 4
@gx_dc_type_data_pure = external constant %struct.gx_device_color_type_s, align 8
@st_gs_type1exec_state = internal constant %struct.gs_memory_struct_type_s { i32 11408, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @gs_type1exec_state_reloc_ptrs to i8*) }, align 8
@.str.9 = private unnamed_addr constant [21 x i8] c"type1_call_OtherSubr\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"gs_type1exec_state\00", align 1
@gs_type1exec_state_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 1, i16 0, %struct.gs_memory_struct_type_s* @st_gs_type1_state, %struct.gc_ptr_element_s* getelementptr inbounds ([1 x %struct.gc_ptr_element_s], [1 x %struct.gc_ptr_element_s]* @gs_type1exec_state_enum_ptrs, i32 0, i32 0) }, align 8
@st_gs_type1_state = external constant %struct.gs_memory_struct_type_s, align 8
@gs_type1exec_state_enum_ptrs = internal constant [1 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 11216 }], align 2
@.str.11 = private unnamed_addr constant [17 x i8] c"op_type1_cleanup\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"op_type1_free\00", align 1

; Function Attrs: nounwind uwtable
define i32 @charstring_execchar(%struct.gs_context_state_s* %i_ctx_p, i32 %font_type_mask) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %font_type_mask.addr = alloca i32, align 4
  %penum = alloca %struct.gs_text_enum_s*, align 8
  %pfont = alloca %struct.gs_font_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %penum_s = alloca %struct.gs_show_enum_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store i32 %font_type_mask, i32* %font_type_mask.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gs_text_enum_s** %penum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call %struct.gs_text_enum_s* @op_show_find(%struct.gs_context_state_s* %1) #4
  store %struct.gs_text_enum_s* %call, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %2 = bitcast %struct.gs_font_s** %pfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %5 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !7
  store %struct.ref_s* %5, %struct.ref_s** %op, align 8, !tbaa !1
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i64 -3
  %call1 = call i32 @font_param(%struct.ref_s* %add.ptr, %struct.gs_font_s** %pfont) #4
  store i32 %call1, i32* %code, align 4, !tbaa !5
  %8 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %cmp2 = icmp eq %struct.gs_text_enum_s* %10, null
  br i1 %cmp2, label %if.then.7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %11 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %11, i32 0, i32 11
  %12 = load i32, i32* %FontType, align 4, !tbaa !20
  %conv = zext i32 %12 to i64
  %cmp3 = icmp uge i64 %conv, 32
  br i1 %cmp3, label %if.then.7, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %lor.lhs.false
  %13 = load i32, i32* %font_type_mask.addr, align 4, !tbaa !5
  %14 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %FontType6 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %14, i32 0, i32 11
  %15 = load i32, i32* %FontType6, align 4, !tbaa !20
  %shl = shl i32 1, %15
  %and = and i32 %13, %shl
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %lor.lhs.false.5, %lor.lhs.false, %if.end
  store i32 -21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %lor.lhs.false.5
  %16 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %17 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %18 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %call9 = call i32 @charstring_execchar_aux(%struct.gs_context_state_s* %16, %struct.gs_text_enum_s* %17, %struct.gs_font_s* %18) #4
  store i32 %call9, i32* %code, align 4, !tbaa !5
  %19 = load i32, i32* %code, align 4, !tbaa !5
  %cmp10 = icmp slt i32 %19, 0
  br i1 %cmp10, label %land.lhs.true, label %if.end.21

land.lhs.true:                                    ; preds = %if.end.8
  %20 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %20, i32 0, i32 0
  %21 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !27
  %in_cachedevice = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %21, i32 0, i32 74
  %22 = load i32, i32* %in_cachedevice, align 4, !tbaa !28
  %cmp12 = icmp eq i32 %22, 3
  br i1 %cmp12, label %if.then.14, label %if.end.21

if.then.14:                                       ; preds = %land.lhs.true
  %23 = bitcast %struct.gs_show_enum_s** %penum_s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #1
  %24 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %25 = bitcast %struct.gs_text_enum_s* %24 to %struct.gs_show_enum_s*
  store %struct.gs_show_enum_s* %25, %struct.gs_show_enum_s** %penum_s, align 8, !tbaa !1
  %26 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum_s, align 8, !tbaa !1
  %cc = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %26, i32 0, i32 47
  %27 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8, !tbaa !41
  %cmp15 = icmp ne %struct.cached_char_s* %27, null
  br i1 %cmp15, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %if.then.14
  %28 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %dir = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %28, i32 0, i32 3
  %29 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir, align 8, !tbaa !50
  %30 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum_s, align 8, !tbaa !1
  %cc18 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %30, i32 0, i32 47
  %31 = load %struct.cached_char_s*, %struct.cached_char_s** %cc18, align 8, !tbaa !41
  call void @gx_free_cached_char(%struct.gs_font_dir_s* %29, %struct.cached_char_s* %31) #4
  %32 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum_s, align 8, !tbaa !1
  %cc19 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %32, i32 0, i32 47
  store %struct.cached_char_s* null, %struct.cached_char_s** %cc19, align 8, !tbaa !41
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %if.then.14
  %33 = bitcast %struct.gs_show_enum_s** %penum_s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %land.lhs.true, %if.end.8
  %34 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %34, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.21, %if.then.7, %if.then
  %35 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %36 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #1
  %37 = bitcast %struct.gs_font_s** %pfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  %38 = bitcast %struct.gs_text_enum_s** %penum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #1
  %39 = load i32, i32* %retval
  ret i32 %39
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare %struct.gs_text_enum_s* @op_show_find(%struct.gs_context_state_s*) #2

declare i32 @font_param(%struct.ref_s*, %struct.gs_font_s**) #2

; Function Attrs: nounwind uwtable
define internal i32 @charstring_execchar_aux(%struct.gs_context_state_s* %i_ctx_p, %struct.gs_text_enum_s* %penum, %struct.gs_font_s* %pfont) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %penum.addr = alloca %struct.gs_text_enum_s*, align 8
  %pfont.addr = alloca %struct.gs_font_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %pbfont = alloca %struct.gs_font_base_s*, align 8
  %pfont1 = alloca %struct.gs_font_type1_s*, align 8
  %pdata = alloca %struct.gs_type1_data_s*, align 8
  %cxs = alloca %struct.gs_type1exec_state_s, align 8
  %pcis = alloca %struct.gs_type1_state_s*, align 8
  %FontBBox = alloca %struct.gs_rect_s, align 8
  %code = alloca i32, align 4
  %pfcid0 = alloca %struct.gs_font_cid0_s*, align 8
  %es_code_ = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %exec_cont = alloca i32 (%struct.gs_context_state_s*)*, align 8
  %opstr = alloca %struct.ref_s*, align 8
  %other_subr = alloca %struct.ref_s, align 8
  %pctm = alloca %struct.gs_matrix_s*, align 8
  %exec_cont131 = alloca i32 (%struct.gs_context_state_s*)*, align 8
  %pt = alloca %struct.gs_point_s, align 8
  %pt163 = alloca %struct.gs_point_s, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.gs_text_enum_s* %penum, %struct.gs_text_enum_s** %penum.addr, align 8, !tbaa !1
  store %struct.gs_font_s* %pfont, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !7
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.gs_font_base_s** %pbfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gs_font_s* %4 to %struct.gs_font_base_s*
  store %struct.gs_font_base_s* %5, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %6 = bitcast %struct.gs_font_type1_s** %pfont1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %8 = bitcast %struct.gs_font_s* %7 to %struct.gs_font_type1_s*
  store %struct.gs_font_type1_s* %8, %struct.gs_font_type1_s** %pfont1, align 8, !tbaa !1
  %9 = bitcast %struct.gs_type1_data_s** %pdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast %struct.gs_type1exec_state_s* %cxs to i8*
  call void @llvm.lifetime.start(i64 11408, i8* %10) #1
  %11 = bitcast %struct.gs_type1_state_s** %pcis to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %cis = getelementptr inbounds %struct.gs_type1exec_state_s, %struct.gs_type1exec_state_s* %cxs, i32 0, i32 0
  store %struct.gs_type1_state_s* %cis, %struct.gs_type1_state_s** %pcis, align 8, !tbaa !1
  %12 = bitcast %struct.gs_rect_s* %FontBBox to i8*
  call void @llvm.lifetime.start(i64 32, i8* %12) #1
  %13 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont1, align 8, !tbaa !1
  %FontBBox1 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %13, i32 0, i32 23
  %14 = bitcast %struct.gs_rect_s* %FontBBox to i8*
  %15 = bitcast %struct.gs_rect_s* %FontBBox1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 32, i32 8, i1 false), !tbaa.struct !51
  %16 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum.addr, align 8, !tbaa !1
  %current_font = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %17, i32 0, i32 12
  %18 = load %struct.gs_font_s*, %struct.gs_font_s** %current_font, align 8, !tbaa !53
  %FontType = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %18, i32 0, i32 11
  %19 = load i32, i32* %FontType, align 4, !tbaa !20
  %cmp = icmp eq i32 %19, 9
  br i1 %cmp, label %if.then, label %if.end.12

if.then:                                          ; preds = %entry
  %q = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox, i32 0, i32 1
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q, i32 0, i32 0
  %20 = load double, double* %x, align 8, !tbaa !55
  %p2 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox, i32 0, i32 0
  %x3 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p2, i32 0, i32 0
  %21 = load double, double* %x3, align 8, !tbaa !57
  %cmp4 = fcmp ole double %20, %21
  br i1 %cmp4, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %q5 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox, i32 0, i32 1
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q5, i32 0, i32 1
  %22 = load double, double* %y, align 8, !tbaa !58
  %p6 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox, i32 0, i32 0
  %y7 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p6, i32 0, i32 1
  %23 = load double, double* %y7, align 8, !tbaa !59
  %cmp8 = fcmp ole double %22, %23
  br i1 %cmp8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %land.lhs.true
  %24 = bitcast %struct.gs_font_cid0_s** %pfcid0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #1
  %25 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum.addr, align 8, !tbaa !1
  %current_font10 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %25, i32 0, i32 12
  %26 = load %struct.gs_font_s*, %struct.gs_font_s** %current_font10, align 8, !tbaa !53
  %27 = bitcast %struct.gs_font_s* %26 to %struct.gs_font_cid0_s*
  store %struct.gs_font_cid0_s* %27, %struct.gs_font_cid0_s** %pfcid0, align 8, !tbaa !1
  %28 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %pfcid0, align 8, !tbaa !1
  %FontBBox11 = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %28, i32 0, i32 23
  %29 = bitcast %struct.gs_rect_s* %FontBBox to i8*
  %30 = bitcast %struct.gs_rect_s* %FontBBox11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %30, i64 32, i32 8, i1 false), !tbaa.struct !51
  %31 = bitcast %struct.gs_font_cid0_s** %pfcid0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  br label %if.end

if.end:                                           ; preds = %if.then.9, %land.lhs.true, %if.then
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %entry
  %32 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont1, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %32, i32 0, i32 29
  store %struct.gs_type1_data_s* %data, %struct.gs_type1_data_s** %pdata, align 8, !tbaa !1
  %33 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %PaintType = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %33, i32 0, i32 17
  %34 = load i32, i32* %PaintType, align 4, !tbaa !60
  %tobool = icmp ne i32 %34, 0
  br i1 %tobool, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.12
  %35 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %35, i32 0, i32 0
  %36 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !27
  %37 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %StrokeWidth = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %37, i32 0, i32 18
  %38 = load float, float* %StrokeWidth, align 4, !tbaa !61
  %conv = fpext float %38 to double
  %call = call i32 @gs_setlinewidth(%struct.gs_state_s* %36, double %conv) #4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.end.12
  %39 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %39, i32 0, i32 25
  %stack15 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p16 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack15, i32 0, i32 0
  %40 = load %struct.ref_s*, %struct.ref_s** %p16, align 8, !tbaa !62
  %41 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack17 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %41, i32 0, i32 25
  %stack18 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack17, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack18, i32 0, i32 2
  %42 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !63
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %42, i64 -3
  %cmp19 = icmp ugt %struct.ref_s* %40, %add.ptr
  br i1 %cmp19, label %if.then.21, label %if.end.29

if.then.21:                                       ; preds = %if.end.14
  %43 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.start(i64 4, i8* %43) #1
  %44 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack22 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %44, i32 0, i32 25
  %stack23 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack22, i32 0, i32 0
  %call24 = call i32 @ref_stack_extend(%struct.ref_stack_s* %stack23, i32 3) #4
  store i32 %call24, i32* %es_code_, align 4, !tbaa !5
  %45 = load i32, i32* %es_code_, align 4, !tbaa !5
  %cmp25 = icmp slt i32 %45, 0
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.then.21
  %46 = load i32, i32* %es_code_, align 4, !tbaa !5
  store i32 %46, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.28:                                        ; preds = %if.then.21
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.28, %if.then.27
  %47 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.208 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.29

if.end.29:                                        ; preds = %cleanup.cont, %if.end.14
  %48 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %48, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %49 = load i16, i16* %type_attrs, align 2, !tbaa !64
  %conv30 = zext i16 %49 to i32
  %and = and i32 %conv30, 15552
  %cmp31 = icmp eq i32 %and, 1216
  br i1 %cmp31, label %if.then.33, label %if.end.35

if.then.33:                                       ; preds = %if.end.29
  %50 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call34 = call i32 @zchar_exec_char_proc(%struct.gs_context_state_s* %50) #4
  store i32 %call34, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.208

if.end.35:                                        ; preds = %if.end.29
  %51 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas36 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %51, i32 0, i32 0
  %type_attrs37 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas36, i32 0, i32 0
  %52 = bitcast i16* %type_attrs37 to i8*
  %arrayidx = getelementptr inbounds i8, i8* %52, i64 1
  %53 = load i8, i8* %arrayidx, align 1, !tbaa !65
  %conv38 = zext i8 %53 to i32
  %cmp39 = icmp eq i32 %conv38, 18
  br i1 %cmp39, label %if.end.43, label %if.then.41

if.then.41:                                       ; preds = %if.end.35
  %54 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call42 = call i32 @check_type_failed(%struct.ref_s* %54) #4
  store i32 %call42, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.208

if.end.43:                                        ; preds = %if.end.35
  %55 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas44 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %55, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas44, i32 0, i32 2
  %56 = load i32, i32* %rsize, align 4, !tbaa !66
  %57 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata, align 8, !tbaa !1
  %lenIV = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %57, i32 0, i32 4
  %58 = load i32, i32* %lenIV, align 4, !tbaa !67
  %cmp45 = icmp sgt i32 %58, 0
  br i1 %cmp45, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.43
  %59 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata, align 8, !tbaa !1
  %lenIV47 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %59, i32 0, i32 4
  %60 = load i32, i32* %lenIV47, align 4, !tbaa !67
  br label %cond.end

cond.false:                                       ; preds = %if.end.43
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %60, %cond.true ], [ 0, %cond.false ]
  %cmp48 = icmp ule i32 %56, %cond
  br i1 %cmp48, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %cond.end
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.208

if.end.51:                                        ; preds = %cond.end
  %61 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum.addr, align 8, !tbaa !1
  %FontBBox_as_Metrics2 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %61, i32 0, i32 23
  %x52 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %FontBBox_as_Metrics2, i32 0, i32 0
  %62 = load double, double* %x52, align 8, !tbaa !71
  %cmp53 = fcmp oeq double %62, 0.000000e+00
  br i1 %cmp53, label %land.lhs.true.55, label %lor.lhs.false

land.lhs.true.55:                                 ; preds = %if.end.51
  %63 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum.addr, align 8, !tbaa !1
  %FontBBox_as_Metrics256 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %63, i32 0, i32 23
  %y57 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %FontBBox_as_Metrics256, i32 0, i32 1
  %64 = load double, double* %y57, align 8, !tbaa !72
  %cmp58 = fcmp oeq double %64, 0.000000e+00
  br i1 %cmp58, label %if.then.64, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.55, %if.end.51
  %65 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs60 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %65, i32 0, i32 0
  %66 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs60, align 8, !tbaa !27
  %call61 = call %struct.gs_font_s* @gs_rootfont(%struct.gs_state_s* %66) #4
  %WMode = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %call61, i32 0, i32 16
  %67 = load i32, i32* %WMode, align 4, !tbaa !73
  %cmp62 = icmp eq i32 %67, 0
  br i1 %cmp62, label %if.then.64, label %if.else

if.then.64:                                       ; preds = %lor.lhs.false, %land.lhs.true.55
  %68 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %69 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr65 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %69, i64 -1
  %sbw = getelementptr inbounds %struct.gs_type1exec_state_s, %struct.gs_type1exec_state_s* %cxs, i32 0, i32 2
  %arraydecay = getelementptr inbounds [4 x double], [4 x double]* %sbw, i32 0, i32 0
  %call66 = call i32 @zchar_get_metrics(%struct.gs_font_base_s* %68, %struct.ref_s* %add.ptr65, double* %arraydecay) #4
  store i32 %call66, i32* %code, align 4, !tbaa !5
  %70 = load i32, i32* %code, align 4, !tbaa !5
  %cmp67 = icmp slt i32 %70, 0
  br i1 %cmp67, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %if.then.64
  %71 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %71, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.208

if.end.70:                                        ; preds = %if.then.64
  %72 = load i32, i32* %code, align 4, !tbaa !5
  %present = getelementptr inbounds %struct.gs_type1exec_state_s, %struct.gs_type1exec_state_s* %cxs, i32 0, i32 3
  store i32 %72, i32* %present, align 4, !tbaa !74
  %use_FontBBox_as_Metrics2 = getelementptr inbounds %struct.gs_type1exec_state_s, %struct.gs_type1exec_state_s* %cxs, i32 0, i32 5
  store i32 0, i32* %use_FontBBox_as_Metrics2, align 4, !tbaa !82
  br label %if.end.87

if.else:                                          ; preds = %lor.lhs.false
  %73 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum.addr, align 8, !tbaa !1
  %FontBBox_as_Metrics271 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %73, i32 0, i32 23
  %x72 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %FontBBox_as_Metrics271, i32 0, i32 0
  %74 = load double, double* %x72, align 8, !tbaa !71
  %div = fdiv double %74, 2.000000e+00
  %sbw73 = getelementptr inbounds %struct.gs_type1exec_state_s, %struct.gs_type1exec_state_s* %cxs, i32 0, i32 2
  %arrayidx74 = getelementptr inbounds [4 x double], [4 x double]* %sbw73, i32 0, i64 0
  store double %div, double* %arrayidx74, align 8, !tbaa !52
  %75 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum.addr, align 8, !tbaa !1
  %FontBBox_as_Metrics275 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %75, i32 0, i32 23
  %y76 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %FontBBox_as_Metrics275, i32 0, i32 1
  %76 = load double, double* %y76, align 8, !tbaa !72
  %sbw77 = getelementptr inbounds %struct.gs_type1exec_state_s, %struct.gs_type1exec_state_s* %cxs, i32 0, i32 2
  %arrayidx78 = getelementptr inbounds [4 x double], [4 x double]* %sbw77, i32 0, i64 1
  store double %76, double* %arrayidx78, align 8, !tbaa !52
  %sbw79 = getelementptr inbounds %struct.gs_type1exec_state_s, %struct.gs_type1exec_state_s* %cxs, i32 0, i32 2
  %arrayidx80 = getelementptr inbounds [4 x double], [4 x double]* %sbw79, i32 0, i64 2
  store double 0.000000e+00, double* %arrayidx80, align 8, !tbaa !52
  %77 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum.addr, align 8, !tbaa !1
  %FontBBox_as_Metrics281 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %77, i32 0, i32 23
  %x82 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %FontBBox_as_Metrics281, i32 0, i32 0
  %78 = load double, double* %x82, align 8, !tbaa !71
  %sub = fsub double -0.000000e+00, %78
  %sbw83 = getelementptr inbounds %struct.gs_type1exec_state_s, %struct.gs_type1exec_state_s* %cxs, i32 0, i32 2
  %arrayidx84 = getelementptr inbounds [4 x double], [4 x double]* %sbw83, i32 0, i64 3
  store double %sub, double* %arrayidx84, align 8, !tbaa !52
  %use_FontBBox_as_Metrics285 = getelementptr inbounds %struct.gs_type1exec_state_s, %struct.gs_type1exec_state_s* %cxs, i32 0, i32 5
  store i32 1, i32* %use_FontBBox_as_Metrics285, align 4, !tbaa !82
  %present86 = getelementptr inbounds %struct.gs_type1exec_state_s, %struct.gs_type1exec_state_s* %cxs, i32 0, i32 3
  store i32 0, i32* %present86, align 4, !tbaa !74
  br label %if.end.87

if.end.87:                                        ; preds = %if.else, %if.end.70
  %79 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs88 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %79, i32 0, i32 0
  %80 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs88, align 8, !tbaa !27
  %call89 = call i32 @gs_moveto(%struct.gs_state_s* %80, double 0.000000e+00, double 0.000000e+00) #4
  store i32 %call89, i32* %code, align 4, !tbaa !5
  %81 = load i32, i32* %code, align 4, !tbaa !5
  %cmp90 = icmp slt i32 %81, 0
  br i1 %cmp90, label %if.then.92, label %if.end.93

if.then.92:                                       ; preds = %if.end.87
  %82 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %82, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.208

if.end.93:                                        ; preds = %if.end.87
  %83 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis, align 8, !tbaa !1
  %84 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum.addr, align 8, !tbaa !1
  %85 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs94 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %85, i32 0, i32 0
  %86 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs94, align 8, !tbaa !27
  %87 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont1, align 8, !tbaa !1
  %call95 = call i32 @type1_exec_init(%struct.gs_type1_state_s* %83, %struct.gs_text_enum_s* %84, %struct.gs_state_s* %86, %struct.gs_font_type1_s* %87) #4
  store i32 %call95, i32* %code, align 4, !tbaa !5
  %88 = load i32, i32* %code, align 4, !tbaa !5
  %cmp96 = icmp slt i32 %88, 0
  br i1 %cmp96, label %if.then.98, label %if.end.99

if.then.98:                                       ; preds = %if.end.93
  %89 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %89, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.208

if.end.99:                                        ; preds = %if.end.93
  %90 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis, align 8, !tbaa !1
  %91 = bitcast %struct.gs_type1exec_state_s* %cxs to i8*
  call void @gs_type1_set_callback_data(%struct.gs_type1_state_s* %90, i8* %91) #4
  %q100 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox, i32 0, i32 1
  %x101 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q100, i32 0, i32 0
  %92 = load double, double* %x101, align 8, !tbaa !55
  %p102 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox, i32 0, i32 0
  %x103 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p102, i32 0, i32 0
  %93 = load double, double* %x103, align 8, !tbaa !57
  %cmp104 = fcmp ogt double %92, %93
  br i1 %cmp104, label %land.lhs.true.106, label %if.else.125

land.lhs.true.106:                                ; preds = %if.end.99
  %q107 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox, i32 0, i32 1
  %y108 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q107, i32 0, i32 1
  %94 = load double, double* %y108, align 8, !tbaa !58
  %p109 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox, i32 0, i32 0
  %y110 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p109, i32 0, i32 1
  %95 = load double, double* %y110, align 8, !tbaa !59
  %cmp111 = fcmp ogt double %94, %95
  br i1 %cmp111, label %if.then.113, label %if.else.125

if.then.113:                                      ; preds = %land.lhs.true.106
  %96 = bitcast i32 (%struct.gs_context_state_s*)** %exec_cont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %96) #1
  store i32 (%struct.gs_context_state_s*)* null, i32 (%struct.gs_context_state_s*)** %exec_cont, align 8, !tbaa !1
  %char_bbox = getelementptr inbounds %struct.gs_type1exec_state_s, %struct.gs_type1exec_state_s* %cxs, i32 0, i32 4
  %97 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont1, align 8, !tbaa !1
  %FontBBox114 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %97, i32 0, i32 23
  %98 = bitcast %struct.gs_rect_s* %char_bbox to i8*
  %99 = bitcast %struct.gs_rect_s* %FontBBox114 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %98, i8* %99, i64 32, i32 8, i1 false), !tbaa.struct !51
  %100 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %101 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum.addr, align 8, !tbaa !1
  %102 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %call115 = call i32 @type1exec_bbox(%struct.gs_context_state_s* %100, %struct.gs_text_enum_s* %101, %struct.gs_type1exec_state_s* %cxs, %struct.gs_font_s* %102, i32 (%struct.gs_context_state_s*)** %exec_cont) #4
  store i32 %call115, i32* %code, align 4, !tbaa !5
  %103 = load i32, i32* %code, align 4, !tbaa !5
  %cmp116 = icmp sge i32 %103, 0
  br i1 %cmp116, label %land.lhs.true.118, label %if.end.123

land.lhs.true.118:                                ; preds = %if.then.113
  %104 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %exec_cont, align 8, !tbaa !1
  %cmp119 = icmp ne i32 (%struct.gs_context_state_s*)* %104, null
  br i1 %cmp119, label %if.then.121, label %if.end.123

if.then.121:                                      ; preds = %land.lhs.true.118
  %105 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %exec_cont, align 8, !tbaa !1
  %106 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call122 = call i32 %105(%struct.gs_context_state_s* %106) #4
  store i32 %call122, i32* %code, align 4, !tbaa !5
  br label %if.end.123

if.end.123:                                       ; preds = %if.then.121, %land.lhs.true.118, %if.then.113
  %107 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %107, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %108 = bitcast i32 (%struct.gs_context_state_s*)** %exec_cont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %108) #1
  br label %cleanup.208

if.else.125:                                      ; preds = %land.lhs.true.106, %if.end.99
  %109 = bitcast %struct.ref_s** %opstr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %109) #1
  %110 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  store %struct.ref_s* %110, %struct.ref_s** %opstr, align 8, !tbaa !1
  %111 = bitcast %struct.ref_s* %other_subr to i8*
  call void @llvm.lifetime.start(i64 16, i8* %111) #1
  %112 = bitcast %struct.gs_matrix_s** %pctm to i8*
  call void @llvm.lifetime.start(i64 8, i8* %112) #1
  %113 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs126 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %113, i32 0, i32 0
  %114 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs126, align 8, !tbaa !27
  %ctm = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %114, i32 0, i32 5
  %115 = bitcast %struct.gs_matrix_fixed_s* %ctm to %struct.gs_matrix_s*
  store %struct.gs_matrix_s* %115, %struct.gs_matrix_s** %pctm, align 8, !tbaa !1
  %116 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pctm, align 8, !tbaa !1
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %116, i32 0, i32 0
  %117 = load float, float* %xx, align 4, !tbaa !83
  %118 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pctm, align 8, !tbaa !1
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %118, i32 0, i32 3
  %119 = load float, float* %yy, align 4, !tbaa !84
  %mul = fmul float %117, %119
  %120 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pctm, align 8, !tbaa !1
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %120, i32 0, i32 1
  %121 = load float, float* %xy, align 4, !tbaa !85
  %122 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pctm, align 8, !tbaa !1
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %122, i32 0, i32 2
  %123 = load float, float* %yx, align 4, !tbaa !86
  %mul127 = fmul float %121, %123
  %cmp128 = fcmp oeq float %mul, %mul127
  br i1 %cmp128, label %if.then.130, label %if.end.154

if.then.130:                                      ; preds = %if.else.125
  %124 = bitcast i32 (%struct.gs_context_state_s*)** %exec_cont131 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %124) #1
  store i32 (%struct.gs_context_state_s*)* null, i32 (%struct.gs_context_state_s*)** %exec_cont131, align 8, !tbaa !1
  %char_bbox132 = getelementptr inbounds %struct.gs_type1exec_state_s, %struct.gs_type1exec_state_s* %cxs, i32 0, i32 4
  %p133 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %char_bbox132, i32 0, i32 0
  %x134 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p133, i32 0, i32 0
  store double 0.000000e+00, double* %x134, align 8, !tbaa !87
  %char_bbox135 = getelementptr inbounds %struct.gs_type1exec_state_s, %struct.gs_type1exec_state_s* %cxs, i32 0, i32 4
  %p136 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %char_bbox135, i32 0, i32 0
  %y137 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p136, i32 0, i32 1
  store double 0.000000e+00, double* %y137, align 8, !tbaa !88
  %char_bbox138 = getelementptr inbounds %struct.gs_type1exec_state_s, %struct.gs_type1exec_state_s* %cxs, i32 0, i32 4
  %q139 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %char_bbox138, i32 0, i32 1
  %x140 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q139, i32 0, i32 0
  store double 0.000000e+00, double* %x140, align 8, !tbaa !89
  %char_bbox141 = getelementptr inbounds %struct.gs_type1exec_state_s, %struct.gs_type1exec_state_s* %cxs, i32 0, i32 4
  %q142 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %char_bbox141, i32 0, i32 1
  %y143 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q142, i32 0, i32 1
  store double 0.000000e+00, double* %y143, align 8, !tbaa !90
  %125 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %126 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum.addr, align 8, !tbaa !1
  %127 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %call144 = call i32 @type1exec_bbox(%struct.gs_context_state_s* %125, %struct.gs_text_enum_s* %126, %struct.gs_type1exec_state_s* %cxs, %struct.gs_font_s* %127, i32 (%struct.gs_context_state_s*)** %exec_cont131) #4
  store i32 %call144, i32* %code, align 4, !tbaa !5
  %128 = load i32, i32* %code, align 4, !tbaa !5
  %cmp145 = icmp sge i32 %128, 0
  br i1 %cmp145, label %land.lhs.true.147, label %if.end.152

land.lhs.true.147:                                ; preds = %if.then.130
  %129 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %exec_cont131, align 8, !tbaa !1
  %cmp148 = icmp ne i32 (%struct.gs_context_state_s*)* %129, null
  br i1 %cmp148, label %if.then.150, label %if.end.152

if.then.150:                                      ; preds = %land.lhs.true.147
  %130 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %exec_cont131, align 8, !tbaa !1
  %131 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call151 = call i32 %130(%struct.gs_context_state_s* %131) #4
  store i32 %call151, i32* %code, align 4, !tbaa !5
  br label %if.end.152

if.end.152:                                       ; preds = %if.then.150, %land.lhs.true.147, %if.then.130
  %132 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %132, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %133 = bitcast i32 (%struct.gs_context_state_s*)** %exec_cont131 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %133) #1
  br label %cleanup.205

if.end.154:                                       ; preds = %if.else.125
  %present155 = getelementptr inbounds %struct.gs_type1exec_state_s, %struct.gs_type1exec_state_s* %cxs, i32 0, i32 3
  %134 = load i32, i32* %present155, align 4, !tbaa !74
  switch i32 %134, label %sw.epilog [
    i32 2, label %sw.bb
    i32 1, label %sw.bb.162
  ]

sw.bb:                                            ; preds = %if.end.154
  %135 = bitcast %struct.gs_point_s* %pt to i8*
  call void @llvm.lifetime.start(i64 16, i8* %135) #1
  %sbw156 = getelementptr inbounds %struct.gs_type1exec_state_s, %struct.gs_type1exec_state_s* %cxs, i32 0, i32 2
  %arrayidx157 = getelementptr inbounds [4 x double], [4 x double]* %sbw156, i32 0, i64 0
  %136 = load double, double* %arrayidx157, align 8, !tbaa !52
  %x158 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 0
  store double %136, double* %x158, align 8, !tbaa !91
  %sbw159 = getelementptr inbounds %struct.gs_type1exec_state_s, %struct.gs_type1exec_state_s* %cxs, i32 0, i32 2
  %arrayidx160 = getelementptr inbounds [4 x double], [4 x double]* %sbw159, i32 0, i64 1
  %137 = load double, double* %arrayidx160, align 8, !tbaa !52
  %y161 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 1
  store double %137, double* %y161, align 8, !tbaa !92
  %138 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis, align 8, !tbaa !1
  call void @gs_type1_set_lsb(%struct.gs_type1_state_s* %138, %struct.gs_point_s* %pt) #4
  %139 = bitcast %struct.gs_point_s* %pt to i8*
  call void @llvm.lifetime.end(i64 16, i8* %139) #1
  br label %sw.bb.162

sw.bb.162:                                        ; preds = %if.end.154, %sw.bb
  %140 = bitcast %struct.gs_point_s* %pt163 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %140) #1
  %sbw164 = getelementptr inbounds %struct.gs_type1exec_state_s, %struct.gs_type1exec_state_s* %cxs, i32 0, i32 2
  %arrayidx165 = getelementptr inbounds [4 x double], [4 x double]* %sbw164, i32 0, i64 2
  %141 = load double, double* %arrayidx165, align 8, !tbaa !52
  %x166 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt163, i32 0, i32 0
  store double %141, double* %x166, align 8, !tbaa !91
  %sbw167 = getelementptr inbounds %struct.gs_type1exec_state_s, %struct.gs_type1exec_state_s* %cxs, i32 0, i32 2
  %arrayidx168 = getelementptr inbounds [4 x double], [4 x double]* %sbw167, i32 0, i64 3
  %142 = load double, double* %arrayidx168, align 8, !tbaa !52
  %y169 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt163, i32 0, i32 1
  store double %142, double* %y169, align 8, !tbaa !92
  %143 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis, align 8, !tbaa !1
  call void @gs_type1_set_width(%struct.gs_type1_state_s* %143, %struct.gs_point_s* %pt163) #4
  %144 = bitcast %struct.gs_point_s* %pt163 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %144) #1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.162, %if.end.154
  br label %icont

icont:                                            ; preds = %sw.epilog.204, %sw.epilog
  %145 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %146 = load %struct.ref_s*, %struct.ref_s** %opstr, align 8, !tbaa !1
  %call170 = call i32 @type1_continue_dispatch(%struct.gs_context_state_s* %145, %struct.gs_type1exec_state_s* %cxs, %struct.ref_s* %146, %struct.ref_s* %other_subr, i32 4) #4
  store i32 %call170, i32* %code, align 4, !tbaa !5
  %147 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack171 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %147, i32 0, i32 26
  %stack172 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack171, i32 0, i32 0
  %p173 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack172, i32 0, i32 0
  %148 = load %struct.ref_s*, %struct.ref_s** %p173, align 8, !tbaa !7
  store %struct.ref_s* %148, %struct.ref_s** %op, align 8, !tbaa !1
  %149 = load i32, i32* %code, align 4, !tbaa !5
  switch i32 %149, label %sw.default [
    i32 0, label %sw.bb.174
    i32 2, label %sw.bb.176
    i32 1, label %sw.bb.178
  ]

sw.bb.174:                                        ; preds = %icont
  %150 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call175 = call i32 @nobbox_finish(%struct.gs_context_state_s* %150, %struct.gs_type1exec_state_s* %cxs) #4
  store i32 %call175, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.205

sw.default:                                       ; preds = %icont
  %151 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %151, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.205

sw.bb.176:                                        ; preds = %icont
  %152 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call177 = call i32 @type1_call_OtherSubr(%struct.gs_context_state_s* %152, %struct.gs_type1exec_state_s* %cxs, i32 (%struct.gs_context_state_s*)* @nobbox_continue, %struct.ref_s* %other_subr) #4
  store i32 %call177, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.205

sw.bb.178:                                        ; preds = %icont
  %present179 = getelementptr inbounds %struct.gs_type1exec_state_s, %struct.gs_type1exec_state_s* %cxs, i32 0, i32 3
  %153 = load i32, i32* %present179, align 4, !tbaa !74
  switch i32 %153, label %sw.epilog.204 [
    i32 0, label %sw.bb.180
    i32 1, label %sw.bb.192
  ]

sw.bb.180:                                        ; preds = %sw.bb.178
  %154 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis, align 8, !tbaa !1
  %lsb = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %154, i32 0, i32 21
  %x181 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %lsb, i32 0, i32 0
  %155 = load i32, i32* %x181, align 4, !tbaa !93
  %conv182 = sitofp i32 %155 to double
  %mul183 = fmul double %conv182, 3.906250e-03
  %sbw184 = getelementptr inbounds %struct.gs_type1exec_state_s, %struct.gs_type1exec_state_s* %cxs, i32 0, i32 2
  %arrayidx185 = getelementptr inbounds [4 x double], [4 x double]* %sbw184, i32 0, i64 0
  store double %mul183, double* %arrayidx185, align 8, !tbaa !52
  %156 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis, align 8, !tbaa !1
  %lsb186 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %156, i32 0, i32 21
  %y187 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %lsb186, i32 0, i32 1
  %157 = load i32, i32* %y187, align 4, !tbaa !94
  %conv188 = sitofp i32 %157 to double
  %mul189 = fmul double %conv188, 3.906250e-03
  %sbw190 = getelementptr inbounds %struct.gs_type1exec_state_s, %struct.gs_type1exec_state_s* %cxs, i32 0, i32 2
  %arrayidx191 = getelementptr inbounds [4 x double], [4 x double]* %sbw190, i32 0, i64 1
  store double %mul189, double* %arrayidx191, align 8, !tbaa !52
  br label %sw.bb.192

sw.bb.192:                                        ; preds = %sw.bb.178, %sw.bb.180
  %158 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %158, i32 0, i32 22
  %x193 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width, i32 0, i32 0
  %159 = load i32, i32* %x193, align 4, !tbaa !95
  %conv194 = sitofp i32 %159 to double
  %mul195 = fmul double %conv194, 3.906250e-03
  %sbw196 = getelementptr inbounds %struct.gs_type1exec_state_s, %struct.gs_type1exec_state_s* %cxs, i32 0, i32 2
  %arrayidx197 = getelementptr inbounds [4 x double], [4 x double]* %sbw196, i32 0, i64 2
  store double %mul195, double* %arrayidx197, align 8, !tbaa !52
  %160 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis, align 8, !tbaa !1
  %width198 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %160, i32 0, i32 22
  %y199 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width198, i32 0, i32 1
  %161 = load i32, i32* %y199, align 4, !tbaa !96
  %conv200 = sitofp i32 %161 to double
  %mul201 = fmul double %conv200, 3.906250e-03
  %sbw202 = getelementptr inbounds %struct.gs_type1exec_state_s, %struct.gs_type1exec_state_s* %cxs, i32 0, i32 2
  %arrayidx203 = getelementptr inbounds [4 x double], [4 x double]* %sbw202, i32 0, i64 3
  store double %mul201, double* %arrayidx203, align 8, !tbaa !52
  br label %sw.epilog.204

sw.epilog.204:                                    ; preds = %sw.bb.192, %sw.bb.178
  store %struct.ref_s* null, %struct.ref_s** %opstr, align 8, !tbaa !1
  br label %icont

cleanup.205:                                      ; preds = %sw.bb.176, %sw.default, %sw.bb.174, %if.end.152
  %162 = bitcast %struct.gs_matrix_s** %pctm to i8*
  call void @llvm.lifetime.end(i64 8, i8* %162) #1
  %163 = bitcast %struct.ref_s* %other_subr to i8*
  call void @llvm.lifetime.end(i64 16, i8* %163) #1
  %164 = bitcast %struct.ref_s** %opstr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %164) #1
  br label %cleanup.208

cleanup.208:                                      ; preds = %cleanup.205, %if.end.123, %if.then.98, %if.then.92, %if.then.69, %if.then.50, %if.then.41, %if.then.33, %cleanup
  %165 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %165) #1
  %166 = bitcast %struct.gs_rect_s* %FontBBox to i8*
  call void @llvm.lifetime.end(i64 32, i8* %166) #1
  %167 = bitcast %struct.gs_type1_state_s** %pcis to i8*
  call void @llvm.lifetime.end(i64 8, i8* %167) #1
  %168 = bitcast %struct.gs_type1exec_state_s* %cxs to i8*
  call void @llvm.lifetime.end(i64 11408, i8* %168) #1
  %169 = bitcast %struct.gs_type1_data_s** %pdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %169) #1
  %170 = bitcast %struct.gs_font_type1_s** %pfont1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %170) #1
  %171 = bitcast %struct.gs_font_base_s** %pbfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %171) #1
  %172 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %172) #1
  %173 = load i32, i32* %retval
  ret i32 %173
}

declare void @gx_free_cached_char(%struct.gs_font_dir_s*, %struct.cached_char_s*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal i32 @ztype1execchar(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @charstring_execchar(%struct.gs_context_state_s* %0, i32 18) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @bbox_getsbw_continue(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %other_subr = alloca %struct.ref_s, align 8
  %pcxs = alloca %struct.gs_type1exec_state_s*, align 8
  %pcis = alloca %struct.gs_type1_state_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %sbw = alloca [4 x double], align 16
  %pbfont = alloca %struct.gs_font_base_s*, align 8
  %bbox = alloca %struct.gs_rect_s, align 8
  %cont = alloca i32 (%struct.gs_context_state_s*)*, align 8
  %exec_cont = alloca i32 (%struct.gs_context_state_s*)*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !7
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.ref_s* %other_subr to i8*
  call void @llvm.lifetime.start(i64 16, i8* %3) #1
  %4 = bitcast %struct.gs_type1exec_state_s** %pcxs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %5, i32 0, i32 25
  %stack1 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p2 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack1, i32 0, i32 0
  %6 = load %struct.ref_s*, %struct.ref_s** %p2, align 8, !tbaa !62
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 1
  %pstruct = bitcast %union.v* %value to %struct.obj_header_s**
  %7 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %8 = bitcast %struct.obj_header_s* %7 to %struct.gs_type1exec_state_s*
  store %struct.gs_type1exec_state_s* %8, %struct.gs_type1exec_state_s** %pcxs, align 8, !tbaa !1
  %9 = bitcast %struct.gs_type1_state_s** %pcis to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load %struct.gs_type1exec_state_s*, %struct.gs_type1exec_state_s** %pcxs, align 8, !tbaa !1
  %cis = getelementptr inbounds %struct.gs_type1exec_state_s, %struct.gs_type1exec_state_s* %10, i32 0, i32 0
  store %struct.gs_type1_state_s* %cis, %struct.gs_type1_state_s** %pcis, align 8, !tbaa !1
  %11 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %13 = load %struct.gs_type1exec_state_s*, %struct.gs_type1exec_state_s** %pcxs, align 8, !tbaa !1
  %call = call i32 @type1_continue_dispatch(%struct.gs_context_state_s* %12, %struct.gs_type1exec_state_s* %13, %struct.ref_s* null, %struct.ref_s* %other_subr, i32 4) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %14 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %14, i32 0, i32 26
  %stack4 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack3, i32 0, i32 0
  %p5 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack4, i32 0, i32 0
  %15 = load %struct.ref_s*, %struct.ref_s** %p5, align 8, !tbaa !7
  store %struct.ref_s* %15, %struct.ref_s** %op, align 8, !tbaa !1
  %16 = load i32, i32* %code, align 4, !tbaa !5
  switch i32 %16, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb.7
  ]

sw.default:                                       ; preds = %entry
  %17 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  call void @op_type1_free(%struct.gs_context_state_s* %17) #4
  %18 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %18, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.default
  %19 = load i32, i32* %code, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %sw.default
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %19, %cond.true ], [ -10, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %20 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %21 = load %struct.gs_type1exec_state_s*, %struct.gs_type1exec_state_s** %pcxs, align 8, !tbaa !1
  %call6 = call i32 @type1_push_OtherSubr(%struct.gs_context_state_s* %20, %struct.gs_type1exec_state_s* %21, i32 (%struct.gs_context_state_s*)* @bbox_getsbw_continue, %struct.ref_s* %other_subr) #4
  store i32 %call6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.7:                                          ; preds = %entry
  %22 = bitcast [4 x double]* %sbw to i8*
  call void @llvm.lifetime.start(i64 32, i8* %22) #1
  %23 = bitcast %struct.gs_font_base_s** %pbfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #1
  %24 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis, align 8, !tbaa !1
  %pfont = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %24, i32 0, i32 1
  %25 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont, align 8, !tbaa !97
  %26 = bitcast %struct.gs_font_type1_s* %25 to %struct.gs_font_base_s*
  store %struct.gs_font_base_s* %26, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %27 = bitcast %struct.gs_rect_s* %bbox to i8*
  call void @llvm.lifetime.start(i64 32, i8* %27) #1
  %28 = bitcast i32 (%struct.gs_context_state_s*)** %cont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %28) #1
  %29 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %PaintType = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %29, i32 0, i32 17
  %30 = load i32, i32* %PaintType, align 4, !tbaa !98
  %cmp8 = icmp eq i32 %30, 0
  %cond9 = select i1 %cmp8, i32 (%struct.gs_context_state_s*)* @bbox_finish_fill, i32 (%struct.gs_context_state_s*)* @bbox_finish_stroke
  store i32 (%struct.gs_context_state_s*)* %cond9, i32 (%struct.gs_context_state_s*)** %cont, align 8, !tbaa !1
  %31 = bitcast i32 (%struct.gs_context_state_s*)** %exec_cont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %31) #1
  store i32 (%struct.gs_context_state_s*)* null, i32 (%struct.gs_context_state_s*)** %exec_cont, align 8, !tbaa !1
  %32 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [4 x double], [4 x double]* %sbw, i32 0, i32 0
  call void @type1_cis_get_metrics(%struct.gs_type1_state_s* %32, double* %arraydecay) #4
  %33 = load %struct.gs_type1exec_state_s*, %struct.gs_type1exec_state_s** %pcxs, align 8, !tbaa !1
  %char_bbox = getelementptr inbounds %struct.gs_type1exec_state_s, %struct.gs_type1exec_state_s* %33, i32 0, i32 4
  %34 = bitcast %struct.gs_rect_s* %bbox to i8*
  %35 = bitcast %struct.gs_rect_s* %char_bbox to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* %35, i64 32, i32 8, i1 false), !tbaa.struct !51
  %36 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  call void @op_type1_free(%struct.gs_context_state_s* %36) #4
  %37 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %38 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %39 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %39, i64 -1
  %arraydecay10 = getelementptr inbounds [4 x double], [4 x double]* %sbw, i32 0, i32 0
  %arraydecay11 = getelementptr inbounds [4 x double], [4 x double]* %sbw, i32 0, i32 0
  %add.ptr12 = getelementptr inbounds double, double* %arraydecay11, i64 2
  %40 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %cont, align 8, !tbaa !1
  %call13 = call i32 @zchar_set_cache(%struct.gs_context_state_s* %37, %struct.gs_font_base_s* %38, %struct.ref_s* %add.ptr, double* %arraydecay10, double* %add.ptr12, %struct.gs_rect_s* %bbox, i32 (%struct.gs_context_state_s*)* %40, i32 (%struct.gs_context_state_s*)** %exec_cont, double* null) #4
  store i32 %call13, i32* %code, align 4, !tbaa !5
  %41 = load i32, i32* %code, align 4, !tbaa !5
  %cmp14 = icmp sge i32 %41, 0
  br i1 %cmp14, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %sw.bb.7
  %42 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %exec_cont, align 8, !tbaa !1
  %cmp15 = icmp ne i32 (%struct.gs_context_state_s*)* %42, null
  br i1 %cmp15, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %43 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %exec_cont, align 8, !tbaa !1
  %44 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call16 = call i32 %43(%struct.gs_context_state_s* %44) #4
  store i32 %call16, i32* %code, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %sw.bb.7
  %45 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %45, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %46 = bitcast i32 (%struct.gs_context_state_s*)** %exec_cont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #1
  %47 = bitcast i32 (%struct.gs_context_state_s*)** %cont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #1
  %48 = bitcast %struct.gs_rect_s* %bbox to i8*
  call void @llvm.lifetime.end(i64 32, i8* %48) #1
  %49 = bitcast %struct.gs_font_base_s** %pbfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #1
  %50 = bitcast [4 x double]* %sbw to i8*
  call void @llvm.lifetime.end(i64 32, i8* %50) #1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %sw.bb, %cond.end
  %51 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #1
  %52 = bitcast %struct.gs_type1_state_s** %pcis to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #1
  %53 = bitcast %struct.gs_type1exec_state_s** %pcxs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #1
  %54 = bitcast %struct.ref_s* %other_subr to i8*
  call void @llvm.lifetime.end(i64 16, i8* %54) #1
  %55 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #1
  %56 = load i32, i32* %retval
  ret i32 %56
}

; Function Attrs: nounwind uwtable
define internal i32 @bbox_continue(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %npop = alloca i32, align 4
  %code = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !7
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast i32* %npop to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %5 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 1
  %6 = load i8, i8* %arrayidx, align 1, !tbaa !65
  %conv = zext i8 %6 to i32
  %cmp = icmp eq i32 %conv, 18
  %cond = select i1 %cmp, i32 4, i32 6
  store i32 %cond, i32* %npop, align 4, !tbaa !5
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %9 = load i32, i32* %npop, align 4, !tbaa !5
  %call = call i32 @type1_callout_dispatch(%struct.gs_context_state_s* %8, i32 (%struct.gs_context_state_s*)* @bbox_continue, i32 %9) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %10 = load i32, i32* %code, align 4, !tbaa !5
  %cmp2 = icmp eq i32 %10, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack4 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %11, i32 0, i32 26
  %stack5 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack4, i32 0, i32 0
  %p6 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack5, i32 0, i32 0
  %12 = load %struct.ref_s*, %struct.ref_s** %p6, align 8, !tbaa !7
  store %struct.ref_s* %12, %struct.ref_s** %op, align 8, !tbaa !1
  %13 = load i32, i32* %npop, align 4, !tbaa !5
  %sub = sub nsw i32 %13, 4
  store i32 %sub, i32* %npop, align 4, !tbaa !5
  %14 = load i32, i32* %npop, align 4, !tbaa !5
  %15 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack7 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %15, i32 0, i32 26
  %stack8 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack7, i32 0, i32 0
  %p9 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack8, i32 0, i32 0
  %16 = load %struct.ref_s*, %struct.ref_s** %p9, align 8, !tbaa !7
  %idx.ext = sext i32 %14 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i64 %idx.neg
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p9, align 8, !tbaa !7
  %17 = load i32, i32* %npop, align 4, !tbaa !5
  %18 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %idx.ext10 = sext i32 %17 to i64
  %idx.neg11 = sub i64 0, %idx.ext10
  %add.ptr12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i64 %idx.neg11
  store %struct.ref_s* %add.ptr12, %struct.ref_s** %op, align 8, !tbaa !1
  %19 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  call void @op_type1_free(%struct.gs_context_state_s* %19) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %20 = load i32, i32* %code, align 4, !tbaa !5
  %21 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  %22 = bitcast i32* %npop to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #1
  %23 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal i32 @bbox_finish_fill(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %exec_cont = alloca i32 (%struct.gs_context_state_s*)*, align 8
  %code = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast i32 (%struct.gs_context_state_s*)** %exec_cont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store i32 (%struct.gs_context_state_s*)* null, i32 (%struct.gs_context_state_s*)** %exec_cont, align 8, !tbaa !1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @bbox_finish(%struct.gs_context_state_s* %2, i32 (%struct.gs_context_state_s*)* @bbox_fill, i32 (%struct.gs_context_state_s*)** %exec_cont) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %3 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp sge i32 %3, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %exec_cont, align 8, !tbaa !1
  %cmp1 = icmp ne i32 (%struct.gs_context_state_s*)* %4, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %exec_cont, align 8, !tbaa !1
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call2 = call i32 %5(%struct.gs_context_state_s* %6) #4
  store i32 %call2, i32* %code, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %7 = load i32, i32* %code, align 4, !tbaa !5
  %8 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #1
  %9 = bitcast i32 (%struct.gs_context_state_s*)** %exec_cont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #1
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal i32 @bbox_finish_stroke(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %exec_cont = alloca i32 (%struct.gs_context_state_s*)*, align 8
  %code = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast i32 (%struct.gs_context_state_s*)** %exec_cont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store i32 (%struct.gs_context_state_s*)* null, i32 (%struct.gs_context_state_s*)** %exec_cont, align 8, !tbaa !1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @bbox_finish(%struct.gs_context_state_s* %2, i32 (%struct.gs_context_state_s*)* @bbox_stroke, i32 (%struct.gs_context_state_s*)** %exec_cont) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %3 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp sge i32 %3, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %exec_cont, align 8, !tbaa !1
  %cmp1 = icmp ne i32 (%struct.gs_context_state_s*)* %4, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %exec_cont, align 8, !tbaa !1
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call2 = call i32 %5(%struct.gs_context_state_s* %6) #4
  store i32 %call2, i32* %code, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %7 = load i32, i32* %code, align 4, !tbaa !5
  %8 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #1
  %9 = bitcast i32 (%struct.gs_context_state_s*)** %exec_cont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #1
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal i32 @nobbox_continue(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %pcxs = alloca %struct.gs_type1exec_state_s*, align 8
  %cxs = alloca %struct.gs_type1exec_state_s, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @type1_callout_dispatch(%struct.gs_context_state_s* %1, i32 (%struct.gs_context_state_s*)* @nobbox_continue, i32 4) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %2 = load i32, i32* %code, align 4, !tbaa !5
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %3, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = bitcast %struct.gs_type1exec_state_s** %pcxs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %5, i32 0, i32 25
  %stack = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %6 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !62
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 1
  %pstruct = bitcast %union.v* %value to %struct.obj_header_s**
  %7 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %8 = bitcast %struct.obj_header_s* %7 to %struct.gs_type1exec_state_s*
  store %struct.gs_type1exec_state_s* %8, %struct.gs_type1exec_state_s** %pcxs, align 8, !tbaa !1
  %9 = bitcast %struct.gs_type1exec_state_s* %cxs to i8*
  call void @llvm.lifetime.start(i64 11408, i8* %9) #1
  %10 = load %struct.gs_type1exec_state_s*, %struct.gs_type1exec_state_s** %pcxs, align 8, !tbaa !1
  %11 = bitcast %struct.gs_type1exec_state_s* %cxs to i8*
  %12 = bitcast %struct.gs_type1exec_state_s* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 11408, i32 8, i1 false), !tbaa.struct !101
  %cis = getelementptr inbounds %struct.gs_type1exec_state_s, %struct.gs_type1exec_state_s* %cxs, i32 0, i32 0
  %13 = bitcast %struct.gs_type1exec_state_s* %cxs to i8*
  call void @gs_type1_set_callback_data(%struct.gs_type1_state_s* %cis, i8* %13) #4
  %14 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  call void @op_type1_free(%struct.gs_context_state_s* %14) #4
  %15 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call1 = call i32 @nobbox_finish(%struct.gs_context_state_s* %15, %struct.gs_type1exec_state_s* %cxs) #4
  store i32 %call1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %16 = bitcast %struct.gs_type1exec_state_s* %cxs to i8*
  call void @llvm.lifetime.end(i64 11408, i8* %16) #1
  %17 = bitcast %struct.gs_type1exec_state_s** %pcxs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %18 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #1
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define internal i32 @nobbox_fill(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @nobbox_draw(%struct.gs_context_state_s* %0, i32 (%struct.gs_state_s*)* @gs_fill) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @nobbox_stroke(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %code = alloca i32, align 4
  %fa = alloca %struct.gs_fixed_point_s, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.gs_fixed_point_s* %fa to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %2, i32 0, i32 0
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !27
  %fill_adjust = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %3, i32 0, i32 28
  %4 = bitcast %struct.gs_fixed_point_s* %fa to i8*
  %5 = bitcast %struct.gs_fixed_point_s* %fill_adjust to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 8, i32 4, i1 false), !tbaa.struct !104
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %6, i32 0, i32 0
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs1, align 8, !tbaa !27
  %fill_adjust2 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %7, i32 0, i32 28
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %fill_adjust2, i32 0, i32 1
  store i32 0, i32* %y, align 4, !tbaa !105
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %8, i32 0, i32 0
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs3, align 8, !tbaa !27
  %fill_adjust4 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %9, i32 0, i32 28
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %fill_adjust4, i32 0, i32 0
  store i32 0, i32* %x, align 4, !tbaa !106
  %10 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @nobbox_draw(%struct.gs_context_state_s* %10, i32 (%struct.gs_state_s*)* @gs_stroke) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs5 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %11, i32 0, i32 0
  %12 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs5, align 8, !tbaa !27
  %fill_adjust6 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %12, i32 0, i32 28
  %13 = bitcast %struct.gs_fixed_point_s* %fill_adjust6 to i8*
  %14 = bitcast %struct.gs_fixed_point_s* %fa to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 8, i32 4, i1 false), !tbaa.struct !104
  %15 = load i32, i32* %code, align 4, !tbaa !5
  %16 = bitcast %struct.gs_fixed_point_s* %fa to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  %17 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #1
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal i32 @zsetweightvector(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %pfont = alloca %struct.gs_font_s*, align 8
  %code = alloca i32, align 4
  %pfont1 = alloca %struct.gs_font_type1_s*, align 8
  %size = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !7
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.gs_font_s** %pfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i64 -1
  %call = call i32 @font_param(%struct.ref_s* %add.ptr, %struct.gs_font_s** %pfont) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %6 = bitcast %struct.gs_font_type1_s** %pfont1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %9, i32 0, i32 26
  %stack2 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1, i32 0, i32 0
  %p3 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack2, i32 0, i32 0
  %10 = load %struct.ref_s*, %struct.ref_s** %p3, align 8, !tbaa !7
  %add.ptr4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 -2
  store %struct.ref_s* %add.ptr4, %struct.ref_s** %p3, align 8, !tbaa !7
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %11, i32 0, i32 11
  %12 = load i32, i32* %FontType, align 4, !tbaa !20
  %cmp5 = icmp ne i32 %12, 1
  br i1 %cmp5, label %land.lhs.true, label %if.end.9

land.lhs.true:                                    ; preds = %if.end
  %13 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %FontType6 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %13, i32 0, i32 11
  %14 = load i32, i32* %FontType6, align 4, !tbaa !20
  %cmp7 = icmp ne i32 %14, 2
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %land.lhs.true
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %land.lhs.true, %if.end
  %15 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %16 = bitcast %struct.gs_font_s* %15 to %struct.gs_font_type1_s*
  store %struct.gs_font_type1_s* %16, %struct.gs_font_type1_s** %pfont1, align 8, !tbaa !1
  %17 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 2
  %18 = load i32, i32* %rsize, align 4, !tbaa !66
  store i32 %18, i32* %size, align 4, !tbaa !5
  %19 = load i32, i32* %size, align 4, !tbaa !5
  %20 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont1, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %20, i32 0, i32 29
  %WeightVector = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data, i32 0, i32 25
  %count = getelementptr inbounds %struct.anon.10, %struct.anon.10* %WeightVector, i32 0, i32 0
  %21 = load i32, i32* %count, align 4, !tbaa !107
  %cmp10 = icmp ne i32 %19, %21
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.9
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.end.9
  %22 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %22, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %23 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !109
  %24 = bitcast %struct.gs_ref_memory_s* %23 to %struct.gs_memory_s*
  %25 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %26 = load i32, i32* %size, align 4, !tbaa !5
  %27 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont1, align 8, !tbaa !1
  %data13 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %27, i32 0, i32 29
  %WeightVector14 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data13, i32 0, i32 25
  %values = getelementptr inbounds %struct.anon.10, %struct.anon.10* %WeightVector14, i32 0, i32 1
  %arraydecay = getelementptr inbounds [16 x float], [16 x float]* %values, i32 0, i32 0
  %call15 = call i32 @process_float_array(%struct.gs_memory_s* %24, %struct.ref_s* %25, i32 %26, float* %arraydecay) #4
  store i32 %call15, i32* %code, align 4, !tbaa !5
  %28 = load i32, i32* %code, align 4, !tbaa !5
  %cmp16 = icmp slt i32 %28, 0
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.12
  %29 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %29, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %if.end.12
  %30 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack19 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %30, i32 0, i32 26
  %stack20 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack19, i32 0, i32 0
  %p21 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack20, i32 0, i32 0
  %31 = load %struct.ref_s*, %struct.ref_s** %p21, align 8, !tbaa !7
  %add.ptr22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i64 -2
  store %struct.ref_s* %add.ptr22, %struct.ref_s** %p21, align 8, !tbaa !7
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.18, %if.then.17, %if.then.11, %if.then.8, %if.then
  %32 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #1
  %33 = bitcast %struct.gs_font_type1_s** %pfont1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  %34 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  %35 = bitcast %struct.gs_font_s** %pfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  %36 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #1
  %37 = load i32, i32* %retval
  ret i32 %37
}

; Function Attrs: nounwind uwtable
define internal i32 @z1_glyph_data(%struct.gs_font_type1_s* %pfont, i64 %glyph, %struct.gs_glyph_data_s* %pgd) #0 {
entry:
  %pfont.addr = alloca %struct.gs_font_type1_s*, align 8
  %glyph.addr = alloca i64, align 8
  %pgd.addr = alloca %struct.gs_glyph_data_s*, align 8
  %gref = alloca %struct.ref_s, align 8
  store %struct.gs_font_type1_s* %pfont, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  store i64 %glyph, i64* %glyph.addr, align 8, !tbaa !102
  store %struct.gs_glyph_data_s* %pgd, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s* %gref to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #1
  %1 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %1, i32 0, i32 2
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !110
  %3 = load i64, i64* %glyph.addr, align 8, !tbaa !102
  call void @glyph_ref(%struct.gs_memory_s* %2, i64 %3, %struct.ref_s* %gref) #4
  %4 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gs_font_type1_s* %4 to %struct.gs_font_s*
  %6 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %call = call i32 @zchar_charstring_data(%struct.gs_font_s* %5, %struct.ref_s* %gref, %struct.gs_glyph_data_s* %6) #4
  %7 = bitcast %struct.ref_s* %gref to i8*
  call void @llvm.lifetime.end(i64 16, i8* %7) #1
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @z1_subr_data(%struct.gs_font_type1_s* %pfont, i32 %index, i32 %global, %struct.gs_glyph_data_s* %pgd) #0 {
entry:
  %retval = alloca i32, align 4
  %pfont.addr = alloca %struct.gs_font_type1_s*, align 8
  %index.addr = alloca i32, align 4
  %global.addr = alloca i32, align 4
  %pgd.addr = alloca %struct.gs_glyph_data_s*, align 8
  %pfdata = alloca %struct.font_data_s*, align 8
  %subr = alloca %struct.ref_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_font_type1_s* %pfont, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  store i32 %global, i32* %global.addr, align 4, !tbaa !5
  store %struct.gs_glyph_data_s* %pgd, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %0 = bitcast %struct.font_data_s** %pfdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %client_data = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %1, i32 0, i32 8
  %2 = load i8*, i8** %client_data, align 8, !tbaa !111
  %3 = bitcast i8* %2 to %struct.font_data_s*
  store %struct.font_data_s* %3, %struct.font_data_s** %pfdata, align 8, !tbaa !1
  %4 = bitcast %struct.ref_s* %subr to i8*
  call void @llvm.lifetime.start(i64 16, i8* %4) #1
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %6, i32 0, i32 2
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !110
  %8 = load i32, i32* %global.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %9 = load %struct.font_data_s*, %struct.font_data_s** %pfdata, align 8, !tbaa !1
  %u = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %9, i32 0, i32 6
  %type1 = bitcast %union._fs* %u to %struct._f1*
  %GlobalSubrs = getelementptr inbounds %struct._f1, %struct._f1* %type1, i32 0, i32 2
  br label %cond.end

cond.false:                                       ; preds = %entry
  %10 = load %struct.font_data_s*, %struct.font_data_s** %pfdata, align 8, !tbaa !1
  %u1 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %10, i32 0, i32 6
  %type12 = bitcast %union._fs* %u1 to %struct._f1*
  %Subrs = getelementptr inbounds %struct._f1, %struct._f1* %type12, i32 0, i32 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.ref_s* [ %GlobalSubrs, %cond.true ], [ %Subrs, %cond.false ]
  %11 = load i32, i32* %index.addr, align 4, !tbaa !5
  %conv = sext i32 %11 to i64
  %call = call i32 @array_get(%struct.gs_memory_s* %7, %struct.ref_s* %cond, i64 %conv, %struct.ref_s* %subr) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %12 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %12, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %13 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end
  br label %do.body

do.body:                                          ; preds = %if.end
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %subr, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %14 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %14, i64 1
  %15 = load i8, i8* %arrayidx, align 1, !tbaa !65
  %conv4 = zext i8 %15 to i32
  %cmp5 = icmp eq i32 %conv4, 18
  br i1 %cmp5, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %do.body
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.8
  br label %do.end

do.end:                                           ; preds = %do.cond
  %16 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %subr, i32 0, i32 1
  %const_bytes = bitcast %union.v* %value to i8**
  %17 = load i8*, i8** %const_bytes, align 8, !tbaa !1
  %tas9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %subr, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas9, i32 0, i32 2
  %18 = load i32, i32* %rsize, align 4, !tbaa !66
  call void @gs_glyph_data_from_string(%struct.gs_glyph_data_s* %16, i8* %17, i32 %18, %struct.gs_font_s* null) #4
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.7, %if.then
  %19 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  %20 = bitcast %struct.ref_s* %subr to i8*
  call void @llvm.lifetime.end(i64 16, i8* %20) #1
  %21 = bitcast %struct.font_data_s** %pfdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #1
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define internal i32 @z1_seac_data(%struct.gs_font_type1_s* %pfont, i32 %ccode, i64* %pglyph, %struct.gs_const_string_s* %gstr, %struct.gs_glyph_data_s* %pgd) #0 {
entry:
  %retval = alloca i32, align 4
  %pfont.addr = alloca %struct.gs_font_type1_s*, align 8
  %ccode.addr = alloca i32, align 4
  %pglyph.addr = alloca i64*, align 8
  %gstr.addr = alloca %struct.gs_const_string_s*, align 8
  %pgd.addr = alloca %struct.gs_glyph_data_s*, align 8
  %glyph = alloca i64, align 8
  %code = alloca i32, align 4
  %rglyph = alloca %struct.ref_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_font_type1_s* %pfont, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  store i32 %ccode, i32* %ccode.addr, align 4, !tbaa !5
  store i64* %pglyph, i64** %pglyph.addr, align 8, !tbaa !1
  store %struct.gs_const_string_s* %gstr, %struct.gs_const_string_s** %gstr.addr, align 8, !tbaa !1
  store %struct.gs_glyph_data_s* %pgd, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %0 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i32, i32* %ccode.addr, align 4, !tbaa !5
  %conv = sext i32 %1 to i64
  %call = call i64 @gs_c_known_encode(i64 %conv, i32 0) #4
  store i64 %call, i64* %glyph, align 8, !tbaa !102
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast %struct.ref_s* %rglyph to i8*
  call void @llvm.lifetime.start(i64 16, i8* %3) #1
  %4 = load i64, i64* %glyph, align 8, !tbaa !102
  %cmp = icmp eq i64 %4, 2147483647
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load i64, i64* %glyph, align 8, !tbaa !102
  %6 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %gstr.addr, align 8, !tbaa !1
  %call2 = call i32 @gs_c_glyph_name(i64 %5, %struct.gs_const_string_s* %6) #4
  store i32 %call2, i32* %code, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %7 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %7, i32 0, i32 2
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !110
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %8, i32 0, i32 2
  %9 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !112
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %9, i32 0, i32 16
  %10 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !115
  %11 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %gstr.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %11, i32 0, i32 0
  %12 = load i8*, i8** %data, align 8, !tbaa !117
  %13 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %gstr.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %13, i32 0, i32 1
  %14 = load i32, i32* %size, align 4, !tbaa !119
  %call5 = call i32 @names_ref(%struct.name_table_s* %10, i8* %12, i32 %14, %struct.ref_s* %rglyph, i32 0) #4
  store i32 %call5, i32* %code, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %lor.lhs.false, %if.end
  %15 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %lor.lhs.false
  %16 = load i64*, i64** %pglyph.addr, align 8, !tbaa !1
  %tobool = icmp ne i64* %16, null
  br i1 %tobool, label %if.then.10, label %if.end.16

if.then.10:                                       ; preds = %if.end.9
  %17 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %memory11 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %17, i32 0, i32 2
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory11, align 8, !tbaa !110
  %gs_lib_ctx12 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %18, i32 0, i32 2
  %19 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx12, align 8, !tbaa !112
  %gs_name_table13 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %19, i32 0, i32 16
  %20 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table13, align 8, !tbaa !115
  %call14 = call i32 @names_index(%struct.name_table_s* %20, %struct.ref_s* %rglyph) #4
  %conv15 = zext i32 %call14 to i64
  %21 = load i64*, i64** %pglyph.addr, align 8, !tbaa !1
  store i64 %conv15, i64* %21, align 8, !tbaa !102
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.10, %if.end.9
  %22 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %tobool17 = icmp ne %struct.gs_glyph_data_s* %22, null
  br i1 %tobool17, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %if.end.16
  %23 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %24 = bitcast %struct.gs_font_type1_s* %23 to %struct.gs_font_s*
  %25 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %call19 = call i32 @zchar_charstring_data(%struct.gs_font_s* %24, %struct.ref_s* %rglyph, %struct.gs_glyph_data_s* %25) #4
  store i32 %call19, i32* %code, align 4, !tbaa !5
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %if.end.16
  %26 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %26, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.20, %if.then.8, %if.then
  %27 = bitcast %struct.ref_s* %rglyph to i8*
  call void @llvm.lifetime.end(i64 16, i8* %27) #1
  %28 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  %29 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  %30 = load i32, i32* %retval
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define internal i32 @z1_push(i8* %callback_data, i32* %pf, i32 %count) #0 {
entry:
  %retval = alloca i32, align 4
  %callback_data.addr = alloca i8*, align 8
  %pf.addr = alloca i32*, align 8
  %count.addr = alloca i32, align 4
  %pcxs = alloca %struct.gs_type1exec_state_s*, align 8
  %i_ctx_p = alloca %struct.gs_context_state_s*, align 8
  %p = alloca i32*, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %callback_data, i8** %callback_data.addr, align 8, !tbaa !1
  store i32* %pf, i32** %pf.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gs_type1exec_state_s** %pcxs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %callback_data.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_type1exec_state_s*
  store %struct.gs_type1exec_state_s* %2, %struct.gs_type1exec_state_s** %pcxs, align 8, !tbaa !1
  %3 = bitcast %struct.gs_context_state_s** %i_ctx_p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_type1exec_state_s*, %struct.gs_type1exec_state_s** %pcxs, align 8, !tbaa !1
  %i_ctx_p1 = getelementptr inbounds %struct.gs_type1exec_state_s, %struct.gs_type1exec_state_s* %4, i32 0, i32 1
  %5 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p1, align 8, !tbaa !120
  store %struct.gs_context_state_s* %5, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %6 = bitcast i32** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load i32*, i32** %pf.addr, align 8, !tbaa !1
  %8 = load i32, i32* %count.addr, align 4, !tbaa !5
  %idx.ext = sext i32 %8 to i64
  %add.ptr = getelementptr inbounds i32, i32* %7, i64 %idx.ext
  %add.ptr2 = getelementptr inbounds i32, i32* %add.ptr, i64 -1
  store i32* %add.ptr2, i32** %p, align 8, !tbaa !1
  %9 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %10, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 2
  %11 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !121
  %12 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %12, i32 0, i32 26
  %stack4 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack3, i32 0, i32 0
  %p5 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack4, i32 0, i32 0
  %13 = load %struct.ref_s*, %struct.ref_s** %p5, align 8, !tbaa !7
  %sub.ptr.lhs.cast = ptrtoint %struct.ref_s* %11 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.ref_s* %13 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 16
  %14 = load i32, i32* %count.addr, align 4, !tbaa !5
  %conv = sext i32 %14 to i64
  %cmp = icmp slt i64 %sub.ptr.div, %conv
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %15 = load i32, i32* %count.addr, align 4, !tbaa !5
  %16 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack7 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %16, i32 0, i32 26
  %stack8 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack7, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack8, i32 0, i32 7
  store i32 %15, i32* %requested, align 4, !tbaa !122
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %17 = load i32, i32* %i, align 4, !tbaa !5
  %18 = load i32, i32* %count.addr, align 4, !tbaa !5
  %cmp9 = icmp slt i32 %17, %18
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack11 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %19, i32 0, i32 26
  %stack12 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack11, i32 0, i32 0
  %p13 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack12, i32 0, i32 0
  %20 = load %struct.ref_s*, %struct.ref_s** %p13, align 8, !tbaa !7
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %p13, align 8, !tbaa !7
  %21 = load i32*, i32** %p, align 8, !tbaa !1
  %22 = load i32, i32* %21, align 4, !tbaa !5
  %conv14 = sitofp i32 %22 to double
  %mul = fmul double %conv14, 3.906250e-03
  %conv15 = fptrunc double %mul to float
  %23 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack16 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %23, i32 0, i32 26
  %stack17 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack16, i32 0, i32 0
  %p18 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack17, i32 0, i32 0
  %24 = load %struct.ref_s*, %struct.ref_s** %p18, align 8, !tbaa !7
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i32 0, i32 1
  %realval = bitcast %union.v* %value to float*
  store float %conv15, float* %realval, align 4, !tbaa !103
  %25 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack19 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %25, i32 0, i32 26
  %stack20 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack19, i32 0, i32 0
  %p21 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack20, i32 0, i32 0
  %26 = load %struct.ref_s*, %struct.ref_s** %p21, align 8, !tbaa !7
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 4096, i16* %type_attrs, align 2, !tbaa !64
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  %28 = load i32*, i32** %p, align 8, !tbaa !1
  %incdec.ptr22 = getelementptr inbounds i32, i32* %28, i32 -1
  store i32* %incdec.ptr22, i32** %p, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %29 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #1
  %30 = bitcast i32** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #1
  %31 = bitcast %struct.gs_context_state_s** %i_ctx_p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  %32 = bitcast %struct.gs_type1exec_state_s** %pcxs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  %33 = load i32, i32* %retval
  ret i32 %33
}

; Function Attrs: nounwind uwtable
define internal i32 @z1_pop(i8* %callback_data, i32* %pf) #0 {
entry:
  %retval = alloca i32, align 4
  %callback_data.addr = alloca i8*, align 8
  %pf.addr = alloca i32*, align 8
  %pcxs = alloca %struct.gs_type1exec_state_s*, align 8
  %i_ctx_p = alloca %struct.gs_context_state_s*, align 8
  %val = alloca double, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %callback_data, i8** %callback_data.addr, align 8, !tbaa !1
  store i32* %pf, i32** %pf.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_type1exec_state_s** %pcxs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %callback_data.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_type1exec_state_s*
  store %struct.gs_type1exec_state_s* %2, %struct.gs_type1exec_state_s** %pcxs, align 8, !tbaa !1
  %3 = bitcast %struct.gs_context_state_s** %i_ctx_p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_type1exec_state_s*, %struct.gs_type1exec_state_s** %pcxs, align 8, !tbaa !1
  %i_ctx_p1 = getelementptr inbounds %struct.gs_type1exec_state_s, %struct.gs_type1exec_state_s* %4, i32 0, i32 1
  %5 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p1, align 8, !tbaa !120
  store %struct.gs_context_state_s* %5, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %6 = bitcast double* %val to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %8, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %9 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !7
  %call = call i32 @real_param(%struct.ref_s* %9, double* %val) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %10 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %10, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = load double, double* %val, align 8, !tbaa !52
  %mul = fmul double %12, 2.560000e+02
  %conv = fptosi double %mul to i32
  %13 = load i32*, i32** %pf.addr, align 8, !tbaa !1
  store i32 %conv, i32* %13, align 4, !tbaa !5
  %14 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack2 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %14, i32 0, i32 26
  %stack3 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack2, i32 0, i32 0
  %p4 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack3, i32 0, i32 0
  %15 = load %struct.ref_s*, %struct.ref_s** %p4, align 8, !tbaa !7
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 -1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %p4, align 8, !tbaa !7
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %16 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #1
  %17 = bitcast double* %val to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  %18 = bitcast %struct.gs_context_state_s** %i_ctx_p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  %19 = bitcast %struct.gs_type1exec_state_s** %pcxs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #1
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define i32 @zchar1_glyph_outline(%struct.gs_font_s* %font, i32 %WMode, i64 %glyph, %struct.gs_matrix_s* %pmat, %struct.gx_path_s* %ppath, double* %sbw) #0 {
entry:
  %retval = alloca i32, align 4
  %font.addr = alloca %struct.gs_font_s*, align 8
  %WMode.addr = alloca i32, align 4
  %glyph.addr = alloca i64, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %sbw.addr = alloca double*, align 8
  %pfont1 = alloca %struct.gs_font_type1_s*, align 8
  %gref = alloca %struct.ref_s, align 8
  %gdata = alloca %struct.gs_glyph_data_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store i32 %WMode, i32* %WMode.addr, align 4, !tbaa !5
  store i64 %glyph, i64* %glyph.addr, align 8, !tbaa !102
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store double* %sbw, double** %sbw.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_font_type1_s** %pfont1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_font_s* %1 to %struct.gs_font_type1_s*
  store %struct.gs_font_type1_s* %2, %struct.gs_font_type1_s** %pfont1, align 8, !tbaa !1
  %3 = bitcast %struct.ref_s* %gref to i8*
  call void @llvm.lifetime.start(i64 16, i8* %3) #1
  %4 = bitcast %struct.gs_glyph_data_s* %gdata to i8*
  call void @llvm.lifetime.start(i64 48, i8* %4) #1
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %6, i32 0, i32 2
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !123
  %8 = load i64, i64* %glyph.addr, align 8, !tbaa !102
  call void @glyph_ref(%struct.gs_memory_s* %7, i64 %8, %struct.ref_s* %gref) #4
  %9 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %9, i32 0, i32 2
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !123
  %memory2 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %gdata, i32 0, i32 3
  store %struct.gs_memory_s* %10, %struct.gs_memory_s** %memory2, align 8, !tbaa !124
  %11 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %call = call i32 @zchar_charstring_data(%struct.gs_font_s* %11, %struct.ref_s* %gref, %struct.gs_glyph_data_s* %gdata) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %12 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %12, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %13 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont1, align 8, !tbaa !1
  %15 = load i32, i32* %WMode.addr, align 4, !tbaa !5
  %16 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %17 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %18 = load double*, double** %sbw.addr, align 8, !tbaa !1
  %call3 = call i32 @zcharstring_outline(%struct.gs_font_type1_s* %14, i32 %15, %struct.ref_s* %gref, %struct.gs_glyph_data_s* %gdata, %struct.gs_matrix_s* %16, %struct.gx_path_s* %17, double* %18) #4
  store i32 %call3, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %19 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  %20 = bitcast %struct.gs_glyph_data_s* %gdata to i8*
  call void @llvm.lifetime.end(i64 48, i8* %20) #1
  %21 = bitcast %struct.ref_s* %gref to i8*
  call void @llvm.lifetime.end(i64 16, i8* %21) #1
  %22 = bitcast %struct.gs_font_type1_s** %pfont1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  %23 = load i32, i32* %retval
  ret i32 %23
}

declare void @glyph_ref(%struct.gs_memory_s*, i64, %struct.ref_s*) #2

declare i32 @zchar_charstring_data(%struct.gs_font_s*, %struct.ref_s*, %struct.gs_glyph_data_s*) #2

; Function Attrs: nounwind uwtable
define i32 @zcharstring_outline(%struct.gs_font_type1_s* %pfont1, i32 %WMode, %struct.ref_s* %pgref, %struct.gs_glyph_data_s* %pgd_orig, %struct.gs_matrix_s* %pmat, %struct.gx_path_s* %ppath, double* %sbw) #0 {
entry:
  %retval = alloca i32, align 4
  %pfont1.addr = alloca %struct.gs_font_type1_s*, align 8
  %WMode.addr = alloca i32, align 4
  %pgref.addr = alloca %struct.ref_s*, align 8
  %pgd_orig.addr = alloca %struct.gs_glyph_data_s*, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %sbw.addr = alloca double*, align 8
  %pgd = alloca %struct.gs_glyph_data_s*, align 8
  %code = alloca i32, align 4
  %cxs = alloca %struct.gs_type1exec_state_s, align 8
  %pcis = alloca %struct.gs_type1_state_s*, align 8
  %pdata = alloca %struct.gs_type1_data_s*, align 8
  %value = alloca i32, align 4
  %gis = alloca %struct.gs_imager_state_s, align 8
  %wv = alloca [4 x double], align 16
  %mpt = alloca %struct.gs_point_s, align 8
  %cleanup.dest.slot = alloca i32
  %imat = alloca %struct.gs_matrix_s, align 4
  store %struct.gs_font_type1_s* %pfont1, %struct.gs_font_type1_s** %pfont1.addr, align 8, !tbaa !1
  store i32 %WMode, i32* %WMode.addr, align 4, !tbaa !5
  store %struct.ref_s* %pgref, %struct.ref_s** %pgref.addr, align 8, !tbaa !1
  store %struct.gs_glyph_data_s* %pgd_orig, %struct.gs_glyph_data_s** %pgd_orig.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store double* %sbw, double** %sbw.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_glyph_data_s** %pgd to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd_orig.addr, align 8, !tbaa !1
  store %struct.gs_glyph_data_s* %1, %struct.gs_glyph_data_s** %pgd, align 8, !tbaa !1
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast %struct.gs_type1exec_state_s* %cxs to i8*
  call void @llvm.lifetime.start(i64 11408, i8* %3) #1
  %4 = bitcast %struct.gs_type1_state_s** %pcis to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %cis = getelementptr inbounds %struct.gs_type1exec_state_s, %struct.gs_type1exec_state_s* %cxs, i32 0, i32 0
  store %struct.gs_type1_state_s* %cis, %struct.gs_type1_state_s** %pcis, align 8, !tbaa !1
  %5 = bitcast %struct.gs_type1_data_s** %pdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i32* %value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast %struct.gs_imager_state_s* %gis to i8*
  call void @llvm.lifetime.start(i64 1616, i8* %7) #1
  %8 = bitcast [4 x double]* %wv to i8*
  call void @llvm.lifetime.start(i64 32, i8* %8) #1
  %9 = bitcast %struct.gs_point_s* %mpt to i8*
  call void @llvm.lifetime.start(i64 16, i8* %9) #1
  %10 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont1.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %10, i32 0, i32 29
  store %struct.gs_type1_data_s* %data, %struct.gs_type1_data_s** %pdata, align 8, !tbaa !1
  %11 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd, align 8, !tbaa !1
  %bits = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %11, i32 0, i32 0
  %size = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits, i32 0, i32 1
  %12 = load i32, i32* %size, align 4, !tbaa !127
  %13 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata, align 8, !tbaa !1
  %lenIV = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %13, i32 0, i32 4
  %14 = load i32, i32* %lenIV, align 4, !tbaa !67
  %cmp = icmp sgt i32 %14, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %15 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata, align 8, !tbaa !1
  %lenIV1 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %15, i32 0, i32 4
  %16 = load i32, i32* %lenIV1, align 4, !tbaa !67
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %16, %cond.true ], [ 0, %cond.false ]
  %cmp2 = icmp ule i32 %12, %cond
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %17 = load i32, i32* %WMode.addr, align 4, !tbaa !5
  switch i32 %17, label %sw.default [
    i32 0, label %sw.bb
  ]

sw.default:                                       ; preds = %if.end
  %18 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont1.addr, align 8, !tbaa !1
  %19 = bitcast %struct.gs_font_type1_s* %18 to %struct.gs_font_base_s*
  %20 = load %struct.ref_s*, %struct.ref_s** %pgref.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [4 x double], [4 x double]* %wv, i32 0, i32 0
  %call = call i32 @zchar_get_metrics2(%struct.gs_font_base_s* %19, %struct.ref_s* %20, double* %arraydecay) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %21 = load i32, i32* %code, align 4, !tbaa !5
  %tobool = icmp ne i32 %21, 0
  br i1 %tobool, label %if.then.3, label %if.end.11

if.then.3:                                        ; preds = %sw.default
  %arrayidx = getelementptr inbounds [4 x double], [4 x double]* %wv, i32 0, i64 2
  %22 = load double, double* %arrayidx, align 8, !tbaa !52
  %23 = load double*, double** %sbw.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds double, double* %23, i64 0
  store double %22, double* %arrayidx4, align 8, !tbaa !52
  %arrayidx5 = getelementptr inbounds [4 x double], [4 x double]* %wv, i32 0, i64 3
  %24 = load double, double* %arrayidx5, align 8, !tbaa !52
  %25 = load double*, double** %sbw.addr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds double, double* %25, i64 1
  store double %24, double* %arrayidx6, align 8, !tbaa !52
  %arrayidx7 = getelementptr inbounds [4 x double], [4 x double]* %wv, i32 0, i64 0
  %26 = load double, double* %arrayidx7, align 8, !tbaa !52
  %27 = load double*, double** %sbw.addr, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds double, double* %27, i64 2
  store double %26, double* %arrayidx8, align 8, !tbaa !52
  %arrayidx9 = getelementptr inbounds [4 x double], [4 x double]* %wv, i32 0, i64 1
  %28 = load double, double* %arrayidx9, align 8, !tbaa !52
  %29 = load double*, double** %sbw.addr, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds double, double* %29, i64 3
  store double %28, double* %arrayidx10, align 8, !tbaa !52
  br label %sw.epilog

if.end.11:                                        ; preds = %sw.default
  br label %sw.bb

sw.bb:                                            ; preds = %if.end, %if.end.11
  %30 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont1.addr, align 8, !tbaa !1
  %31 = bitcast %struct.gs_font_type1_s* %30 to %struct.gs_font_base_s*
  %32 = load %struct.ref_s*, %struct.ref_s** %pgref.addr, align 8, !tbaa !1
  %33 = load double*, double** %sbw.addr, align 8, !tbaa !1
  %call12 = call i32 @zchar_get_metrics(%struct.gs_font_base_s* %31, %struct.ref_s* %32, double* %33) #4
  store i32 %call12, i32* %code, align 4, !tbaa !5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %if.then.3
  %34 = load i32, i32* %code, align 4, !tbaa !5
  %cmp13 = icmp slt i32 %34, 0
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %sw.epilog
  %35 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %35, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %sw.epilog
  %36 = load i32, i32* %code, align 4, !tbaa !5
  %present = getelementptr inbounds %struct.gs_type1exec_state_s, %struct.gs_type1exec_state_s* %cxs, i32 0, i32 3
  store i32 %36, i32* %present, align 4, !tbaa !74
  %37 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %tobool16 = icmp ne %struct.gs_matrix_s* %37, null
  br i1 %tobool16, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %if.end.15
  %ctm = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %gis, i32 0, i32 5
  %38 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %call18 = call i32 @gs_matrix_fixed_from_matrix(%struct.gs_matrix_fixed_s* %ctm, %struct.gs_matrix_s* %38) #4
  br label %if.end.21

if.else:                                          ; preds = %if.end.15
  %39 = bitcast %struct.gs_matrix_s* %imat to i8*
  call void @llvm.lifetime.start(i64 24, i8* %39) #1
  call void @gs_make_identity(%struct.gs_matrix_s* %imat) #4
  %ctm19 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %gis, i32 0, i32 5
  %call20 = call i32 @gs_matrix_fixed_from_matrix(%struct.gs_matrix_fixed_s* %ctm19, %struct.gs_matrix_s* %imat) #4
  %40 = bitcast %struct.gs_matrix_s* %imat to i8*
  call void @llvm.lifetime.end(i64 24, i8* %40) #1
  br label %if.end.21

if.end.21:                                        ; preds = %if.else, %if.then.17
  %flatness = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %gis, i32 0, i32 27
  store float 0.000000e+00, float* %flatness, align 4, !tbaa !128
  %cis22 = getelementptr inbounds %struct.gs_type1exec_state_s, %struct.gs_type1exec_state_s* %cxs, i32 0, i32 0
  %41 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %42 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont1.addr, align 8, !tbaa !1
  %call23 = call i32 @gs_type1_interp_init(%struct.gs_type1_state_s* %cis22, %struct.gs_imager_state_s* %gis, %struct.gx_path_s* %41, %struct.gs_log2_scale_point_s* null, %struct.gs_log2_scale_point_s* null, i32 1, i32 0, %struct.gs_font_type1_s* %42) #4
  store i32 %call23, i32* %code, align 4, !tbaa !5
  %43 = load i32, i32* %code, align 4, !tbaa !5
  %cmp24 = icmp slt i32 %43, 0
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.21
  %44 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %44, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.26:                                        ; preds = %if.end.21
  %cis27 = getelementptr inbounds %struct.gs_type1exec_state_s, %struct.gs_type1exec_state_s* %cxs, i32 0, i32 0
  %no_grid_fitting = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %cis27, i32 0, i32 4
  store i32 1, i32* %no_grid_fitting, align 4, !tbaa !130
  %45 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis, align 8, !tbaa !1
  %46 = bitcast %struct.gs_type1exec_state_s* %cxs to i8*
  call void @gs_type1_set_callback_data(%struct.gs_type1_state_s* %45, i8* %46) #4
  %present28 = getelementptr inbounds %struct.gs_type1exec_state_s, %struct.gs_type1exec_state_s* %cxs, i32 0, i32 3
  %47 = load i32, i32* %present28, align 4, !tbaa !74
  switch i32 %47, label %sw.epilog.38 [
    i32 2, label %sw.bb.29
    i32 1, label %sw.bb.32
    i32 0, label %sw.bb.37
  ]

sw.bb.29:                                         ; preds = %if.end.26
  %48 = load double*, double** %sbw.addr, align 8, !tbaa !1
  %arrayidx30 = getelementptr inbounds double, double* %48, i64 0
  %49 = load double, double* %arrayidx30, align 8, !tbaa !52
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %mpt, i32 0, i32 0
  store double %49, double* %x, align 8, !tbaa !91
  %50 = load double*, double** %sbw.addr, align 8, !tbaa !1
  %arrayidx31 = getelementptr inbounds double, double* %50, i64 1
  %51 = load double, double* %arrayidx31, align 8, !tbaa !52
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %mpt, i32 0, i32 1
  store double %51, double* %y, align 8, !tbaa !92
  %52 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis, align 8, !tbaa !1
  call void @gs_type1_set_lsb(%struct.gs_type1_state_s* %52, %struct.gs_point_s* %mpt) #4
  br label %sw.bb.32

sw.bb.32:                                         ; preds = %if.end.26, %sw.bb.29
  %53 = load double*, double** %sbw.addr, align 8, !tbaa !1
  %arrayidx33 = getelementptr inbounds double, double* %53, i64 2
  %54 = load double, double* %arrayidx33, align 8, !tbaa !52
  %x34 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %mpt, i32 0, i32 0
  store double %54, double* %x34, align 8, !tbaa !91
  %55 = load double*, double** %sbw.addr, align 8, !tbaa !1
  %arrayidx35 = getelementptr inbounds double, double* %55, i64 3
  %56 = load double, double* %arrayidx35, align 8, !tbaa !52
  %y36 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %mpt, i32 0, i32 1
  store double %56, double* %y36, align 8, !tbaa !92
  %57 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis, align 8, !tbaa !1
  call void @gs_type1_set_width(%struct.gs_type1_state_s* %57, %struct.gs_point_s* %mpt) #4
  br label %sw.bb.37

sw.bb.37:                                         ; preds = %if.end.26, %sw.bb.32
  br label %sw.epilog.38

sw.epilog.38:                                     ; preds = %sw.bb.37, %if.end.26
  br label %icont

icont:                                            ; preds = %sw.bb.44, %sw.epilog.38
  %58 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont1.addr, align 8, !tbaa !1
  %data39 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %58, i32 0, i32 29
  %interpret = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data39, i32 0, i32 1
  %59 = load i32 (%struct.gs_type1_state_s*, %struct.gs_glyph_data_s*, i32*)*, i32 (%struct.gs_type1_state_s*, %struct.gs_glyph_data_s*, i32*)** %interpret, align 8, !tbaa !131
  %60 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis, align 8, !tbaa !1
  %61 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd, align 8, !tbaa !1
  %call40 = call i32 %59(%struct.gs_type1_state_s* %60, %struct.gs_glyph_data_s* %61, i32* %value) #4
  store i32 %call40, i32* %code, align 4, !tbaa !5
  %62 = load i32, i32* %code, align 4, !tbaa !5
  switch i32 %62, label %sw.default.42 [
    i32 0, label %sw.bb.41
    i32 2, label %sw.bb.43
    i32 1, label %sw.bb.44
  ]

sw.bb.41:                                         ; preds = %icont
  br label %sw.default.42

sw.default.42:                                    ; preds = %icont, %sw.bb.41
  %63 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %63, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.43:                                         ; preds = %icont
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.44:                                         ; preds = %icont
  %64 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis, align 8, !tbaa !1
  %sbw45 = getelementptr inbounds %struct.gs_type1exec_state_s, %struct.gs_type1exec_state_s* %cxs, i32 0, i32 2
  %arraydecay46 = getelementptr inbounds [4 x double], [4 x double]* %sbw45, i32 0, i32 0
  call void @type1_cis_get_metrics(%struct.gs_type1_state_s* %64, double* %arraydecay46) #4
  %65 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis, align 8, !tbaa !1
  %66 = load double*, double** %sbw.addr, align 8, !tbaa !1
  call void @type1_cis_get_metrics(%struct.gs_type1_state_s* %65, double* %66) #4
  store %struct.gs_glyph_data_s* null, %struct.gs_glyph_data_s** %pgd, align 8, !tbaa !1
  br label %icont

cleanup:                                          ; preds = %sw.bb.43, %sw.default.42, %if.then.25, %if.then.14, %if.then
  %67 = bitcast %struct.gs_point_s* %mpt to i8*
  call void @llvm.lifetime.end(i64 16, i8* %67) #1
  %68 = bitcast [4 x double]* %wv to i8*
  call void @llvm.lifetime.end(i64 32, i8* %68) #1
  %69 = bitcast %struct.gs_imager_state_s* %gis to i8*
  call void @llvm.lifetime.end(i64 1616, i8* %69) #1
  %70 = bitcast i32* %value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #1
  %71 = bitcast %struct.gs_type1_data_s** %pdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #1
  %72 = bitcast %struct.gs_type1_state_s** %pcis to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #1
  %73 = bitcast %struct.gs_type1exec_state_s* %cxs to i8*
  call void @llvm.lifetime.end(i64 11408, i8* %73) #1
  %74 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #1
  %75 = bitcast %struct.gs_glyph_data_s** %pgd to i8*
  call void @llvm.lifetime.end(i64 8, i8* %75) #1
  %76 = load i32, i32* %retval
  ret i32 %76
}

declare i32 @zchar_get_metrics2(%struct.gs_font_base_s*, %struct.ref_s*, double*) #2

declare i32 @zchar_get_metrics(%struct.gs_font_base_s*, %struct.ref_s*, double*) #2

declare i32 @gs_matrix_fixed_from_matrix(%struct.gs_matrix_fixed_s*, %struct.gs_matrix_s*) #2

declare void @gs_make_identity(%struct.gs_matrix_s*) #2

declare i32 @gs_type1_interp_init(%struct.gs_type1_state_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gs_log2_scale_point_s*, %struct.gs_log2_scale_point_s*, i32, i32, %struct.gs_font_type1_s*) #2

declare void @gs_type1_set_callback_data(%struct.gs_type1_state_s*, i8*) #2

declare void @gs_type1_set_lsb(%struct.gs_type1_state_s*, %struct.gs_point_s*) #2

declare void @gs_type1_set_width(%struct.gs_type1_state_s*, %struct.gs_point_s*) #2

declare void @type1_cis_get_metrics(%struct.gs_type1_state_s*, double*) #2

; Function Attrs: nounwind uwtable
define i32 @z1_glyph_info_generic(%struct.gs_font_s* %font, i64 %glyph, %struct.gs_matrix_s* %pmat, i32 %members, %struct.gs_glyph_info_s* %info, i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)* %proc, i32 %wmode) #0 {
entry:
  %retval = alloca i32, align 4
  %font.addr = alloca %struct.gs_font_s*, align 8
  %glyph.addr = alloca i64, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %members.addr = alloca i32, align 4
  %info.addr = alloca %struct.gs_glyph_info_s*, align 8
  %proc.addr = alloca i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)*, align 8
  %wmode.addr = alloca i32, align 4
  %gref = alloca %struct.ref_s, align 8
  %pcdevproc = alloca %struct.ref_s*, align 8
  %pbfont = alloca %struct.gs_font_base_s*, align 8
  %width_members = alloca i32, align 4
  %outline_widths = alloca i32, align 4
  %modified_widths = alloca i32, align 4
  %default_members = alloca i32, align 4
  %done_members = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %wv = alloca [4 x double], align 16
  %sbw = alloca [4 x double], align 16
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store i64 %glyph, i64* %glyph.addr, align 8, !tbaa !102
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  store i32 %members, i32* %members.addr, align 4, !tbaa !5
  store %struct.gs_glyph_info_s* %info, %struct.gs_glyph_info_s** %info.addr, align 8, !tbaa !1
  store i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)* %proc, i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)** %proc.addr, align 8, !tbaa !1
  store i32 %wmode, i32* %wmode.addr, align 4, !tbaa !5
  %0 = bitcast %struct.ref_s* %gref to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #1
  %1 = bitcast %struct.ref_s** %pcdevproc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast %struct.gs_font_base_s** %pbfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %4 = bitcast %struct.gs_font_s* %3 to %struct.gs_font_base_s*
  store %struct.gs_font_base_s* %4, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %5 = bitcast i32* %width_members to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load i32, i32* %members.addr, align 4, !tbaa !5
  %7 = load i32, i32* %wmode.addr, align 4, !tbaa !5
  %shl = shl i32 1, %7
  %and = and i32 %6, %shl
  store i32 %and, i32* %width_members, align 4, !tbaa !5
  %8 = bitcast i32* %outline_widths to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load i32, i32* %members.addr, align 4, !tbaa !5
  %and1 = and i32 %9, 32
  store i32 %and1, i32* %outline_widths, align 4, !tbaa !5
  %10 = bitcast i32* %modified_widths to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  store i32 0, i32* %modified_widths, align 4, !tbaa !5
  %11 = bitcast i32* %default_members to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load i32, i32* %members.addr, align 4, !tbaa !5
  %13 = load i32, i32* %width_members, align 4, !tbaa !5
  %14 = load i32, i32* %outline_widths, align 4, !tbaa !5
  %add = add nsw i32 %13, %14
  %add2 = add nsw i32 %add, 64
  %add3 = add nsw i32 %add2, 128
  %add4 = add nsw i32 %add3, 256
  %neg = xor i32 %add4, -1
  %and5 = and i32 %12, %neg
  store i32 %and5, i32* %default_members, align 4, !tbaa !5
  %15 = bitcast i32* %done_members to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  store i32 0, i32* %done_members, align 4, !tbaa !5
  %16 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = load i32, i32* %width_members, align 4, !tbaa !5
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %18 = load i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)** %proc.addr, align 8, !tbaa !1
  %19 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %20 = load i64, i64* %glyph.addr, align 8, !tbaa !102
  %21 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %22 = load i32, i32* %members.addr, align 4, !tbaa !5
  %23 = load %struct.gs_glyph_info_s*, %struct.gs_glyph_info_s** %info.addr, align 8, !tbaa !1
  %call = call i32 %18(%struct.gs_font_s* %19, i64 %20, %struct.gs_matrix_s* %21, i32 %22, %struct.gs_glyph_info_s* %23) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %24 = load i32, i32* %outline_widths, align 4, !tbaa !5
  %tobool6 = icmp ne i32 %24, 0
  br i1 %tobool6, label %if.end.15, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %25 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %call7 = call i32 @zchar_get_CDevProc(%struct.gs_font_base_s* %25, %struct.ref_s** %pcdevproc) #4
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then.9, label %if.end.15

if.then.9:                                        ; preds = %land.lhs.true
  %26 = load i32, i32* %done_members, align 4, !tbaa !5
  %or = or i32 %26, 256
  store i32 %or, i32* %done_members, align 4, !tbaa !5
  %27 = load i32, i32* %members.addr, align 4, !tbaa !5
  %and10 = and i32 %27, 256
  %tobool11 = icmp ne i32 %and10, 0
  br i1 %tobool11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.then.9
  %28 = load i32, i32* %done_members, align 4, !tbaa !5
  %29 = load %struct.gs_glyph_info_s*, %struct.gs_glyph_info_s** %info.addr, align 8, !tbaa !1
  %members13 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %29, i32 0, i32 0
  store i32 %28, i32* %members13, align 4, !tbaa !132
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %if.then.9
  br label %if.end.14

if.end.14:                                        ; preds = %if.else
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %land.lhs.true, %if.end
  %30 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %30, i32 0, i32 2
  %31 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !134
  %32 = load i64, i64* %glyph.addr, align 8, !tbaa !102
  call void @glyph_ref(%struct.gs_memory_s* %31, i64 %32, %struct.ref_s* %gref) #4
  %33 = load i32, i32* %width_members, align 4, !tbaa !5
  %cmp = icmp eq i32 %33, 2
  br i1 %cmp, label %if.then.16, label %if.end.31

if.then.16:                                       ; preds = %if.end.15
  %34 = bitcast [4 x double]* %wv to i8*
  call void @llvm.lifetime.start(i64 32, i8* %34) #1
  %35 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [4 x double], [4 x double]* %wv, i32 0, i32 0
  %call17 = call i32 @zchar_get_metrics2(%struct.gs_font_base_s* %35, %struct.ref_s* %gref, double* %arraydecay) #4
  store i32 %call17, i32* %code, align 4, !tbaa !5
  %36 = load i32, i32* %code, align 4, !tbaa !5
  %cmp18 = icmp sgt i32 %36, 0
  br i1 %cmp18, label %if.then.19, label %if.end.30

if.then.19:                                       ; preds = %if.then.16
  store i32 1, i32* %modified_widths, align 4, !tbaa !5
  %arrayidx = getelementptr inbounds [4 x double], [4 x double]* %wv, i32 0, i64 0
  %37 = load double, double* %arrayidx, align 8, !tbaa !52
  %38 = load %struct.gs_glyph_info_s*, %struct.gs_glyph_info_s** %info.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %38, i32 0, i32 1
  %arrayidx20 = getelementptr inbounds [2 x %struct.gs_point_s], [2 x %struct.gs_point_s]* %width, i32 0, i64 1
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx20, i32 0, i32 0
  store double %37, double* %x, align 8, !tbaa !91
  %arrayidx21 = getelementptr inbounds [4 x double], [4 x double]* %wv, i32 0, i64 1
  %39 = load double, double* %arrayidx21, align 8, !tbaa !52
  %40 = load %struct.gs_glyph_info_s*, %struct.gs_glyph_info_s** %info.addr, align 8, !tbaa !1
  %width22 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %40, i32 0, i32 1
  %arrayidx23 = getelementptr inbounds [2 x %struct.gs_point_s], [2 x %struct.gs_point_s]* %width22, i32 0, i64 1
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx23, i32 0, i32 1
  store double %39, double* %y, align 8, !tbaa !92
  %arrayidx24 = getelementptr inbounds [4 x double], [4 x double]* %wv, i32 0, i64 2
  %41 = load double, double* %arrayidx24, align 8, !tbaa !52
  %42 = load %struct.gs_glyph_info_s*, %struct.gs_glyph_info_s** %info.addr, align 8, !tbaa !1
  %v = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %42, i32 0, i32 2
  %x25 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %v, i32 0, i32 0
  store double %41, double* %x25, align 8, !tbaa !135
  %arrayidx26 = getelementptr inbounds [4 x double], [4 x double]* %wv, i32 0, i64 3
  %43 = load double, double* %arrayidx26, align 8, !tbaa !52
  %44 = load %struct.gs_glyph_info_s*, %struct.gs_glyph_info_s** %info.addr, align 8, !tbaa !1
  %v27 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %44, i32 0, i32 2
  %y28 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %v27, i32 0, i32 1
  store double %43, double* %y28, align 8, !tbaa !136
  %45 = load i32, i32* %width_members, align 4, !tbaa !5
  %or29 = or i32 %45, 128
  store i32 %or29, i32* %done_members, align 4, !tbaa !5
  store i32 0, i32* %width_members, align 4, !tbaa !5
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.19, %if.then.16
  %46 = bitcast [4 x double]* %wv to i8*
  call void @llvm.lifetime.end(i64 32, i8* %46) #1
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.end.15
  %47 = load i32, i32* %width_members, align 4, !tbaa !5
  %tobool32 = icmp ne i32 %47, 0
  br i1 %tobool32, label %if.then.33, label %if.end.63

if.then.33:                                       ; preds = %if.end.31
  %48 = bitcast [4 x double]* %sbw to i8*
  call void @llvm.lifetime.start(i64 32, i8* %48) #1
  %49 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %arraydecay34 = getelementptr inbounds [4 x double], [4 x double]* %sbw, i32 0, i32 0
  %call35 = call i32 @zchar_get_metrics(%struct.gs_font_base_s* %49, %struct.ref_s* %gref, double* %arraydecay34) #4
  store i32 %call35, i32* %code, align 4, !tbaa !5
  %50 = load i32, i32* %code, align 4, !tbaa !5
  %cmp36 = icmp sgt i32 %50, 0
  br i1 %cmp36, label %if.then.37, label %if.end.62

if.then.37:                                       ; preds = %if.then.33
  store i32 1, i32* %modified_widths, align 4, !tbaa !5
  %arrayidx38 = getelementptr inbounds [4 x double], [4 x double]* %sbw, i32 0, i64 2
  %51 = load double, double* %arrayidx38, align 8, !tbaa !52
  %52 = load i32, i32* %wmode.addr, align 4, !tbaa !5
  %idxprom = sext i32 %52 to i64
  %53 = load %struct.gs_glyph_info_s*, %struct.gs_glyph_info_s** %info.addr, align 8, !tbaa !1
  %width39 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %53, i32 0, i32 1
  %arrayidx40 = getelementptr inbounds [2 x %struct.gs_point_s], [2 x %struct.gs_point_s]* %width39, i32 0, i64 %idxprom
  %x41 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx40, i32 0, i32 0
  store double %51, double* %x41, align 8, !tbaa !91
  %arrayidx42 = getelementptr inbounds [4 x double], [4 x double]* %sbw, i32 0, i64 3
  %54 = load double, double* %arrayidx42, align 8, !tbaa !52
  %55 = load i32, i32* %wmode.addr, align 4, !tbaa !5
  %idxprom43 = sext i32 %55 to i64
  %56 = load %struct.gs_glyph_info_s*, %struct.gs_glyph_info_s** %info.addr, align 8, !tbaa !1
  %width44 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %56, i32 0, i32 1
  %arrayidx45 = getelementptr inbounds [2 x %struct.gs_point_s], [2 x %struct.gs_point_s]* %width44, i32 0, i64 %idxprom43
  %y46 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx45, i32 0, i32 1
  store double %54, double* %y46, align 8, !tbaa !92
  %57 = load i32, i32* %code, align 4, !tbaa !5
  %cmp47 = icmp eq i32 %57, 2
  br i1 %cmp47, label %if.then.48, label %if.else.56

if.then.48:                                       ; preds = %if.then.37
  %arrayidx49 = getelementptr inbounds [4 x double], [4 x double]* %sbw, i32 0, i64 0
  %58 = load double, double* %arrayidx49, align 8, !tbaa !52
  %59 = load %struct.gs_glyph_info_s*, %struct.gs_glyph_info_s** %info.addr, align 8, !tbaa !1
  %v50 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %59, i32 0, i32 2
  %x51 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %v50, i32 0, i32 0
  store double %58, double* %x51, align 8, !tbaa !135
  %arrayidx52 = getelementptr inbounds [4 x double], [4 x double]* %sbw, i32 0, i64 1
  %60 = load double, double* %arrayidx52, align 8, !tbaa !52
  %61 = load %struct.gs_glyph_info_s*, %struct.gs_glyph_info_s** %info.addr, align 8, !tbaa !1
  %v53 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %61, i32 0, i32 2
  %y54 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %v53, i32 0, i32 1
  store double %60, double* %y54, align 8, !tbaa !136
  %62 = load i32, i32* %width_members, align 4, !tbaa !5
  %or55 = or i32 %62, 64
  store i32 %or55, i32* %width_members, align 4, !tbaa !5
  br label %if.end.61

if.else.56:                                       ; preds = %if.then.37
  %63 = load %struct.gs_glyph_info_s*, %struct.gs_glyph_info_s** %info.addr, align 8, !tbaa !1
  %v57 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %63, i32 0, i32 2
  %x58 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %v57, i32 0, i32 0
  store double 0.000000e+00, double* %x58, align 8, !tbaa !135
  %64 = load %struct.gs_glyph_info_s*, %struct.gs_glyph_info_s** %info.addr, align 8, !tbaa !1
  %v59 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %64, i32 0, i32 2
  %y60 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %v59, i32 0, i32 1
  store double 0.000000e+00, double* %y60, align 8, !tbaa !136
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.56, %if.then.48
  %65 = load i32, i32* %width_members, align 4, !tbaa !5
  store i32 %65, i32* %done_members, align 4, !tbaa !5
  store i32 0, i32* %width_members, align 4, !tbaa !5
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.then.33
  %66 = bitcast [4 x double]* %sbw to i8*
  call void @llvm.lifetime.end(i64 32, i8* %66) #1
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %if.end.31
  %67 = load i32, i32* %outline_widths, align 4, !tbaa !5
  %tobool64 = icmp ne i32 %67, 0
  br i1 %tobool64, label %if.then.65, label %if.end.72

if.then.65:                                       ; preds = %if.end.63
  %68 = load i32, i32* %modified_widths, align 4, !tbaa !5
  %tobool66 = icmp ne i32 %68, 0
  br i1 %tobool66, label %if.then.69, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.65
  %69 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %call67 = call i32 @zchar_get_CDevProc(%struct.gs_font_base_s* %69, %struct.ref_s** %pcdevproc) #4
  %tobool68 = icmp ne i32 %call67, 0
  br i1 %tobool68, label %if.then.69, label %if.end.71

if.then.69:                                       ; preds = %lor.lhs.false, %if.then.65
  %70 = load i32, i32* %done_members, align 4, !tbaa !5
  %71 = load i32, i32* %width_members, align 4, !tbaa !5
  %or70 = or i32 %71, %70
  store i32 %or70, i32* %width_members, align 4, !tbaa !5
  %72 = load i32, i32* %outline_widths, align 4, !tbaa !5
  store i32 %72, i32* %done_members, align 4, !tbaa !5
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.69, %lor.lhs.false
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %if.end.63
  %73 = load i32, i32* %width_members, align 4, !tbaa !5
  %74 = load i32, i32* %default_members, align 4, !tbaa !5
  %or73 = or i32 %74, %73
  store i32 %or73, i32* %default_members, align 4, !tbaa !5
  %75 = load i32, i32* %default_members, align 4, !tbaa !5
  %tobool74 = icmp ne i32 %75, 0
  br i1 %tobool74, label %if.then.75, label %if.else.80

if.then.75:                                       ; preds = %if.end.72
  %76 = load i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)** %proc.addr, align 8, !tbaa !1
  %77 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %78 = load i64, i64* %glyph.addr, align 8, !tbaa !102
  %79 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %80 = load i32, i32* %default_members, align 4, !tbaa !5
  %81 = load %struct.gs_glyph_info_s*, %struct.gs_glyph_info_s** %info.addr, align 8, !tbaa !1
  %call76 = call i32 %76(%struct.gs_font_s* %77, i64 %78, %struct.gs_matrix_s* %79, i32 %80, %struct.gs_glyph_info_s* %81) #4
  store i32 %call76, i32* %code, align 4, !tbaa !5
  %82 = load i32, i32* %code, align 4, !tbaa !5
  %cmp77 = icmp slt i32 %82, 0
  br i1 %cmp77, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %if.then.75
  %83 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %83, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.79:                                        ; preds = %if.then.75
  br label %if.end.82

if.else.80:                                       ; preds = %if.end.72
  %84 = load %struct.gs_glyph_info_s*, %struct.gs_glyph_info_s** %info.addr, align 8, !tbaa !1
  %members81 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %84, i32 0, i32 0
  store i32 0, i32* %members81, align 4, !tbaa !132
  br label %if.end.82

if.end.82:                                        ; preds = %if.else.80, %if.end.79
  %85 = load i32, i32* %done_members, align 4, !tbaa !5
  %86 = load %struct.gs_glyph_info_s*, %struct.gs_glyph_info_s** %info.addr, align 8, !tbaa !1
  %members83 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %86, i32 0, i32 0
  %87 = load i32, i32* %members83, align 4, !tbaa !132
  %or84 = or i32 %87, %85
  store i32 %or84, i32* %members83, align 4, !tbaa !132
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.82, %if.then.78, %if.then.12, %if.then
  %88 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %88) #1
  %89 = bitcast i32* %done_members to i8*
  call void @llvm.lifetime.end(i64 4, i8* %89) #1
  %90 = bitcast i32* %default_members to i8*
  call void @llvm.lifetime.end(i64 4, i8* %90) #1
  %91 = bitcast i32* %modified_widths to i8*
  call void @llvm.lifetime.end(i64 4, i8* %91) #1
  %92 = bitcast i32* %outline_widths to i8*
  call void @llvm.lifetime.end(i64 4, i8* %92) #1
  %93 = bitcast i32* %width_members to i8*
  call void @llvm.lifetime.end(i64 4, i8* %93) #1
  %94 = bitcast %struct.gs_font_base_s** %pbfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %94) #1
  %95 = bitcast %struct.ref_s** %pcdevproc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %95) #1
  %96 = bitcast %struct.ref_s* %gref to i8*
  call void @llvm.lifetime.end(i64 16, i8* %96) #1
  %97 = load i32, i32* %retval
  ret i32 %97
}

declare i32 @zchar_get_CDevProc(%struct.gs_font_base_s*, %struct.ref_s**) #2

; Function Attrs: nounwind uwtable
define i32 @z1_glyph_info(%struct.gs_font_s* %font, i64 %glyph, %struct.gs_matrix_s* %pmat, i32 %members, %struct.gs_glyph_info_s* %info) #0 {
entry:
  %font.addr = alloca %struct.gs_font_s*, align 8
  %glyph.addr = alloca i64, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %members.addr = alloca i32, align 4
  %info.addr = alloca %struct.gs_glyph_info_s*, align 8
  %wmode = alloca i32, align 4
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store i64 %glyph, i64* %glyph.addr, align 8, !tbaa !102
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  store i32 %members, i32* %members.addr, align 4, !tbaa !5
  store %struct.gs_glyph_info_s* %info, %struct.gs_glyph_info_s** %info.addr, align 8, !tbaa !1
  %0 = bitcast i32* %wmode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %WMode = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %1, i32 0, i32 16
  %2 = load i32, i32* %WMode, align 4, !tbaa !73
  store i32 %2, i32* %wmode, align 4, !tbaa !5
  %3 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %4 = load i64, i64* %glyph.addr, align 8, !tbaa !102
  %5 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %6 = load i32, i32* %members.addr, align 4, !tbaa !5
  %7 = load %struct.gs_glyph_info_s*, %struct.gs_glyph_info_s** %info.addr, align 8, !tbaa !1
  %8 = load i32, i32* %wmode, align 4, !tbaa !5
  %call = call i32 @z1_glyph_info_generic(%struct.gs_font_s* %3, i64 %4, %struct.gs_matrix_s* %5, i32 %6, %struct.gs_glyph_info_s* %7, i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)* @gs_type1_glyph_info, i32 %8) #4
  %9 = bitcast i32* %wmode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %9) #1
  ret i32 %call
}

declare i32 @gs_type1_glyph_info(%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*) #2

; Function Attrs: nounwind uwtable
define i32 @z1_set_cache(%struct.gs_context_state_s* %i_ctx_p, %struct.gs_font_base_s* %pbfont, %struct.ref_s* %cnref, i64 %glyph, i32 (%struct.gs_context_state_s*)* %cont, i32 (%struct.gs_context_state_s*)** %exec_cont) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %pbfont.addr = alloca %struct.gs_font_base_s*, align 8
  %cnref.addr = alloca %struct.ref_s*, align 8
  %glyph.addr = alloca i64, align 8
  %cont.addr = alloca i32 (%struct.gs_context_state_s*)*, align 8
  %exec_cont.addr = alloca i32 (%struct.gs_context_state_s*)**, align 8
  %sbw = alloca [4 x double], align 16
  %info = alloca %struct.gs_glyph_info_s, align 8
  %wmode = alloca i32, align 4
  %code = alloca i32, align 4
  %id_matrix = alloca %struct.gs_matrix_s, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.gs_font_base_s* %pbfont, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  store %struct.ref_s* %cnref, %struct.ref_s** %cnref.addr, align 8, !tbaa !1
  store i64 %glyph, i64* %glyph.addr, align 8, !tbaa !102
  store i32 (%struct.gs_context_state_s*)* %cont, i32 (%struct.gs_context_state_s*)** %cont.addr, align 8, !tbaa !1
  store i32 (%struct.gs_context_state_s*)** %exec_cont, i32 (%struct.gs_context_state_s*)*** %exec_cont.addr, align 8, !tbaa !1
  %0 = bitcast [4 x double]* %sbw to i8*
  call void @llvm.lifetime.start(i64 32, i8* %0) #1
  %1 = bitcast %struct.gs_glyph_info_s* %info to i8*
  call void @llvm.lifetime.start(i64 104, i8* %1) #1
  %2 = bitcast i32* %wmode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %3, i32 0, i32 0
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !27
  %call = call %struct.gs_font_s* @gs_rootfont(%struct.gs_state_s* %4) #4
  %WMode = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %call, i32 0, i32 16
  %5 = load i32, i32* %WMode, align 4, !tbaa !73
  store i32 %5, i32* %wmode, align 4, !tbaa !5
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast %struct.gs_matrix_s* %id_matrix to i8*
  call void @llvm.lifetime.start(i64 24, i8* %7) #1
  %8 = bitcast %struct.gs_matrix_s* %id_matrix to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* bitcast (%struct.gs_matrix_s* @z1_set_cache.id_matrix to i8*), i64 24, i32 4, i1 false)
  %9 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  %10 = bitcast %struct.gs_font_base_s* %9 to %struct.gs_font_s*
  %11 = load i64, i64* %glyph.addr, align 8, !tbaa !102
  %12 = load i32, i32* %wmode, align 4, !tbaa !5
  %shl = shl i32 65, %12
  %or = or i32 %shl, 4
  %call1 = call i32 @gs_default_glyph_info(%struct.gs_font_s* %10, i64 %11, %struct.gs_matrix_s* %id_matrix, i32 %or, %struct.gs_glyph_info_s* %info) #4
  store i32 %call1, i32* %code, align 4, !tbaa !5
  %13 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %13, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %14 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %v = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %info, i32 0, i32 2
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %v, i32 0, i32 0
  %15 = load double, double* %x, align 8, !tbaa !135
  %arrayidx = getelementptr inbounds [4 x double], [4 x double]* %sbw, i32 0, i64 0
  store double %15, double* %arrayidx, align 8, !tbaa !52
  %v2 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %info, i32 0, i32 2
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %v2, i32 0, i32 1
  %16 = load double, double* %y, align 8, !tbaa !136
  %arrayidx3 = getelementptr inbounds [4 x double], [4 x double]* %sbw, i32 0, i64 1
  store double %16, double* %arrayidx3, align 8, !tbaa !52
  %17 = load i32, i32* %wmode, align 4, !tbaa !5
  %idxprom = sext i32 %17 to i64
  %width = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %info, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [2 x %struct.gs_point_s], [2 x %struct.gs_point_s]* %width, i32 0, i64 %idxprom
  %x5 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx4, i32 0, i32 0
  %18 = load double, double* %x5, align 8, !tbaa !91
  %arrayidx6 = getelementptr inbounds [4 x double], [4 x double]* %sbw, i32 0, i64 2
  store double %18, double* %arrayidx6, align 8, !tbaa !52
  %19 = load i32, i32* %wmode, align 4, !tbaa !5
  %idxprom7 = sext i32 %19 to i64
  %width8 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %info, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [2 x %struct.gs_point_s], [2 x %struct.gs_point_s]* %width8, i32 0, i64 %idxprom7
  %y10 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx9, i32 0, i32 1
  %20 = load double, double* %y10, align 8, !tbaa !92
  %arrayidx11 = getelementptr inbounds [4 x double], [4 x double]* %sbw, i32 0, i64 3
  store double %20, double* %arrayidx11, align 8, !tbaa !52
  %21 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %22 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  %23 = load %struct.ref_s*, %struct.ref_s** %cnref.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [4 x double], [4 x double]* %sbw, i32 0, i32 0
  %add.ptr = getelementptr inbounds double, double* %arraydecay, i64 2
  %bbox = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %info, i32 0, i32 3
  %24 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %cont.addr, align 8, !tbaa !1
  %25 = load i32 (%struct.gs_context_state_s*)**, i32 (%struct.gs_context_state_s*)*** %exec_cont.addr, align 8, !tbaa !1
  %26 = load i32, i32* %wmode, align 4, !tbaa !5
  %tobool = icmp ne i32 %26, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %arraydecay12 = getelementptr inbounds [4 x double], [4 x double]* %sbw, i32 0, i32 0
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double* [ %arraydecay12, %cond.true ], [ null, %cond.false ]
  %call13 = call i32 @zchar_set_cache(%struct.gs_context_state_s* %21, %struct.gs_font_base_s* %22, %struct.ref_s* %23, double* null, double* %add.ptr, %struct.gs_rect_s* %bbox, i32 (%struct.gs_context_state_s*)* %24, i32 (%struct.gs_context_state_s*)** %25, double* %cond) #4
  store i32 %call13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.then
  %27 = bitcast %struct.gs_matrix_s* %id_matrix to i8*
  call void @llvm.lifetime.end(i64 24, i8* %27) #1
  %28 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  %29 = bitcast i32* %wmode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #1
  %30 = bitcast %struct.gs_glyph_info_s* %info to i8*
  call void @llvm.lifetime.end(i64 104, i8* %30) #1
  %31 = bitcast [4 x double]* %sbw to i8*
  call void @llvm.lifetime.end(i64 32, i8* %31) #1
  %32 = load i32, i32* %retval
  ret i32 %32
}

declare %struct.gs_font_s* @gs_rootfont(%struct.gs_state_s*) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @gs_default_glyph_info(%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*) #2

declare i32 @zchar_set_cache(%struct.gs_context_state_s*, %struct.gs_font_base_s*, %struct.ref_s*, double*, double*, %struct.gs_rect_s*, i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)**, double*) #2

declare i32 @gs_setlinewidth(%struct.gs_state_s*, double) #2

declare i32 @ref_stack_extend(%struct.ref_stack_s*, i32) #2

declare i32 @zchar_exec_char_proc(%struct.gs_context_state_s*) #2

declare i32 @check_type_failed(%struct.ref_s*) #2

declare i32 @gs_moveto(%struct.gs_state_s*, double, double) #2

; Function Attrs: nounwind uwtable
define internal i32 @type1_exec_init(%struct.gs_type1_state_s* %pcis, %struct.gs_text_enum_s* %penum, %struct.gs_state_s* %pgs, %struct.gs_font_type1_s* %pfont1) #0 {
entry:
  %pcis.addr = alloca %struct.gs_type1_state_s*, align 8
  %penum.addr = alloca %struct.gs_text_enum_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pfont1.addr = alloca %struct.gs_font_type1_s*, align 8
  %alpha_bits = alloca i32, align 4
  %log2_subpixels = alloca %struct.gs_log2_scale_point_s, align 4
  store %struct.gs_type1_state_s* %pcis, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  store %struct.gs_text_enum_s* %penum, %struct.gs_text_enum_s** %penum.addr, align 8, !tbaa !1
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_font_type1_s* %pfont1, %struct.gs_font_type1_s** %pfont1.addr, align 8, !tbaa !1
  %0 = bitcast i32* %alpha_bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 1, i32* %alpha_bits, align 4, !tbaa !5
  %1 = bitcast %struct.gs_log2_scale_point_s* %log2_subpixels to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %2, i32 0, i32 69
  %arrayidx = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %color, i32 0, i64 0
  %dev_color = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx, i32 0, i32 2
  %3 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color, align 8, !tbaa !137
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %3, i32 0, i32 0
  %4 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !139
  %cmp = icmp eq %struct.gx_device_color_type_s* %4, @gx_dc_type_data_pure
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %5, i32 0, i32 78
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %device, align 8, !tbaa !145
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %6, i32 0, i32 42
  %get_alpha_bits = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 20
  %7 = load i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i32)** %get_alpha_bits, align 8, !tbaa !146
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device1 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %8, i32 0, i32 78
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %device1, align 8, !tbaa !145
  %call = call i32 %7(%struct.gx_device_s* %9, i32 0) #4
  store i32 %call, i32* %alpha_bits, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load i32, i32* %alpha_bits, align 4, !tbaa !5
  %cmp2 = icmp sle i32 %10, 1
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %11 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum.addr, align 8, !tbaa !1
  %log2_scale = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %11, i32 0, i32 15
  %12 = bitcast %struct.gs_log2_scale_point_s* %log2_subpixels to i8*
  %13 = bitcast %struct.gs_log2_scale_point_s* %log2_scale to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 8, i32 4, i1 false), !tbaa.struct !104
  br label %if.end.5

if.else:                                          ; preds = %if.end
  %14 = load i32, i32* %alpha_bits, align 4, !tbaa !5
  %call4 = call i32 @ilog2(i32 %14) #4
  %y = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %log2_subpixels, i32 0, i32 1
  store i32 %call4, i32* %y, align 4, !tbaa !156
  %x = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %log2_subpixels, i32 0, i32 0
  store i32 %call4, i32* %x, align 4, !tbaa !157
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.then.3
  %15 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %16 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %17 = bitcast %struct.gs_state_s* %16 to %struct.gs_imager_state_s*
  %18 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %18, i32 0, i32 61
  %19 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8, !tbaa !158
  %20 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum.addr, align 8, !tbaa !1
  %log2_scale6 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %20, i32 0, i32 15
  %21 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum.addr, align 8, !tbaa !1
  %text = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %21, i32 0, i32 0
  %operation = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text, i32 0, i32 0
  %22 = load i32, i32* %operation, align 4, !tbaa !159
  %and = and i32 %22, 63488
  %cmp7 = icmp ne i32 %and, 0
  br i1 %cmp7, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end.5
  %23 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum.addr, align 8, !tbaa !1
  %device_disabled_grid_fitting = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %23, i32 0, i32 25
  %24 = load i32, i32* %device_disabled_grid_fitting, align 4, !tbaa !160
  %tobool = icmp ne i32 %24, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end.5
  %25 = phi i1 [ true, %if.end.5 ], [ %tobool, %lor.rhs ]
  %lor.ext = zext i1 %25 to i32
  %26 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont1.addr, align 8, !tbaa !1
  %PaintType = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %26, i32 0, i32 17
  %27 = load i32, i32* %PaintType, align 4, !tbaa !161
  %28 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont1.addr, align 8, !tbaa !1
  %call8 = call i32 @gs_type1_interp_init(%struct.gs_type1_state_s* %15, %struct.gs_imager_state_s* %17, %struct.gx_path_s* %19, %struct.gs_log2_scale_point_s* %log2_scale6, %struct.gs_log2_scale_point_s* %log2_subpixels, i32 %lor.ext, i32 %27, %struct.gs_font_type1_s* %28) #4
  %29 = bitcast %struct.gs_log2_scale_point_s* %log2_subpixels to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  %30 = bitcast i32* %alpha_bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #1
  ret i32 %call8
}

; Function Attrs: nounwind uwtable
define internal i32 @type1exec_bbox(%struct.gs_context_state_s* %i_ctx_p, %struct.gs_text_enum_s* %penum, %struct.gs_type1exec_state_s* %pcxs, %struct.gs_font_s* %pfont, i32 (%struct.gs_context_state_s*)** %exec_cont) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %penum.addr = alloca %struct.gs_text_enum_s*, align 8
  %pcxs.addr = alloca %struct.gs_type1exec_state_s*, align 8
  %pfont.addr = alloca %struct.gs_font_s*, align 8
  %exec_cont.addr = alloca i32 (%struct.gs_context_state_s*)**, align 8
  %op = alloca %struct.ref_s*, align 8
  %pcis = alloca %struct.gs_type1_state_s*, align 8
  %pbfont = alloca %struct.gs_font_base_s*, align 8
  %cont = alloca i32 (%struct.gs_context_state_s*)*, align 8
  %pcdevproc = alloca %struct.ref_s*, align 8
  %cnref = alloca %struct.ref_s, align 8
  %other_subr = alloca %struct.ref_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.gs_text_enum_s* %penum, %struct.gs_text_enum_s** %penum.addr, align 8, !tbaa !1
  store %struct.gs_type1exec_state_s* %pcxs, %struct.gs_type1exec_state_s** %pcxs.addr, align 8, !tbaa !1
  store %struct.gs_font_s* %pfont, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  store i32 (%struct.gs_context_state_s*)** %exec_cont, i32 (%struct.gs_context_state_s*)*** %exec_cont.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !7
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.gs_type1_state_s** %pcis to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_type1exec_state_s*, %struct.gs_type1exec_state_s** %pcxs.addr, align 8, !tbaa !1
  %cis = getelementptr inbounds %struct.gs_type1exec_state_s, %struct.gs_type1exec_state_s* %4, i32 0, i32 0
  store %struct.gs_type1_state_s* %cis, %struct.gs_type1_state_s** %pcis, align 8, !tbaa !1
  %5 = bitcast %struct.gs_font_base_s** %pbfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %7 = bitcast %struct.gs_font_s* %6 to %struct.gs_font_base_s*
  store %struct.gs_font_base_s* %7, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %8 = bitcast i32 (%struct.gs_context_state_s*)** %cont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %PaintType = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %9, i32 0, i32 17
  %10 = load i32, i32* %PaintType, align 4, !tbaa !98
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %11 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum.addr, align 8, !tbaa !1
  %orig_font = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %11, i32 0, i32 4
  %12 = load %struct.gs_font_s*, %struct.gs_font_s** %orig_font, align 8, !tbaa !162
  %PaintType1 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %12, i32 0, i32 17
  %13 = load i32, i32* %PaintType1, align 4, !tbaa !60
  %cmp2 = icmp eq i32 %13, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %14 = phi i1 [ false, %entry ], [ %cmp2, %land.rhs ]
  %cond = select i1 %14, i32 (%struct.gs_context_state_s*)* @bbox_finish_fill, i32 (%struct.gs_context_state_s*)* @bbox_finish_stroke
  store i32 (%struct.gs_context_state_s*)* %cond, i32 (%struct.gs_context_state_s*)** %cont, align 8, !tbaa !1
  %15 = bitcast %struct.ref_s** %pcdevproc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = load %struct.gs_type1exec_state_s*, %struct.gs_type1exec_state_s** %pcxs.addr, align 8, !tbaa !1
  %present = getelementptr inbounds %struct.gs_type1exec_state_s, %struct.gs_type1exec_state_s* %16, i32 0, i32 3
  %17 = load i32, i32* %present, align 4, !tbaa !74
  %cmp3 = icmp eq i32 %17, 0
  br i1 %cmp3, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %land.end
  %18 = load %struct.gs_type1exec_state_s*, %struct.gs_type1exec_state_s** %pcxs.addr, align 8, !tbaa !1
  %use_FontBBox_as_Metrics2 = getelementptr inbounds %struct.gs_type1exec_state_s, %struct.gs_type1exec_state_s* %18, i32 0, i32 5
  %19 = load i32, i32* %use_FontBBox_as_Metrics2, align 4, !tbaa !82
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true, %land.end
  %20 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum.addr, align 8, !tbaa !1
  %orig_font4 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %20, i32 0, i32 4
  %21 = load %struct.gs_font_s*, %struct.gs_font_s** %orig_font4, align 8, !tbaa !162
  %WMode = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %21, i32 0, i32 16
  %22 = load i32, i32* %WMode, align 4, !tbaa !73
  %tobool5 = icmp ne i32 %22, 0
  br i1 %tobool5, label %land.lhs.true.6, label %if.else

land.lhs.true.6:                                  ; preds = %lor.lhs.false
  %23 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %call = call i32 @zchar_get_CDevProc(%struct.gs_font_base_s* %23, %struct.ref_s** %pcdevproc) #4
  %tobool7 = icmp ne i32 %call, 0
  br i1 %tobool7, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.6, %land.lhs.true
  %24 = bitcast %struct.ref_s* %cnref to i8*
  call void @llvm.lifetime.start(i64 16, i8* %24) #1
  %25 = bitcast %struct.ref_s* %other_subr to i8*
  call void @llvm.lifetime.start(i64 16, i8* %25) #1
  %26 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #1
  %27 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i64 -1
  %28 = bitcast %struct.ref_s* %cnref to i8*
  %29 = bitcast %struct.ref_s* %add.ptr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %29, i64 16, i32 8, i1 false), !tbaa.struct !163
  %30 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %31 = load %struct.gs_type1exec_state_s*, %struct.gs_type1exec_state_s** %pcxs.addr, align 8, !tbaa !1
  %32 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call8 = call i32 @type1_continue_dispatch(%struct.gs_context_state_s* %30, %struct.gs_type1exec_state_s* %31, %struct.ref_s* %32, %struct.ref_s* %other_subr, i32 4) #4
  store i32 %call8, i32* %code, align 4, !tbaa !5
  %33 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack9 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %33, i32 0, i32 26
  %stack10 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack9, i32 0, i32 0
  %p11 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack10, i32 0, i32 0
  %34 = load %struct.ref_s*, %struct.ref_s** %p11, align 8, !tbaa !7
  store %struct.ref_s* %34, %struct.ref_s** %op, align 8, !tbaa !1
  %35 = load i32, i32* %code, align 4, !tbaa !5
  switch i32 %35, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.epilog
  ]

sw.default:                                       ; preds = %if.then
  %36 = load i32, i32* %code, align 4, !tbaa !5
  %cmp12 = icmp slt i32 %36, 0
  br i1 %cmp12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.default
  %37 = load i32, i32* %code, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %sw.default
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond13 = phi i32 [ %37, %cond.true ], [ -10, %cond.false ]
  store i32 %cond13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb:                                            ; preds = %if.then
  %38 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %39 = load %struct.gs_type1exec_state_s*, %struct.gs_type1exec_state_s** %pcxs.addr, align 8, !tbaa !1
  %call14 = call i32 @type1_call_OtherSubr(%struct.gs_context_state_s* %38, %struct.gs_type1exec_state_s* %39, i32 (%struct.gs_context_state_s*)* @bbox_getsbw_continue, %struct.ref_s* %other_subr) #4
  store i32 %call14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %if.then
  %40 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis, align 8, !tbaa !1
  %41 = load %struct.gs_type1exec_state_s*, %struct.gs_type1exec_state_s** %pcxs.addr, align 8, !tbaa !1
  %sbw = getelementptr inbounds %struct.gs_type1exec_state_s, %struct.gs_type1exec_state_s* %41, i32 0, i32 2
  %arraydecay = getelementptr inbounds [4 x double], [4 x double]* %sbw, i32 0, i32 0
  call void @type1_cis_get_metrics(%struct.gs_type1_state_s* %40, double* %arraydecay) #4
  %42 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %43 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %44 = load %struct.gs_type1exec_state_s*, %struct.gs_type1exec_state_s** %pcxs.addr, align 8, !tbaa !1
  %sbw15 = getelementptr inbounds %struct.gs_type1exec_state_s, %struct.gs_type1exec_state_s* %44, i32 0, i32 2
  %arraydecay16 = getelementptr inbounds [4 x double], [4 x double]* %sbw15, i32 0, i32 0
  %add.ptr17 = getelementptr inbounds double, double* %arraydecay16, i64 2
  %45 = load %struct.gs_type1exec_state_s*, %struct.gs_type1exec_state_s** %pcxs.addr, align 8, !tbaa !1
  %char_bbox = getelementptr inbounds %struct.gs_type1exec_state_s, %struct.gs_type1exec_state_s* %45, i32 0, i32 4
  %46 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %cont, align 8, !tbaa !1
  %47 = load i32 (%struct.gs_context_state_s*)**, i32 (%struct.gs_context_state_s*)*** %exec_cont.addr, align 8, !tbaa !1
  %call18 = call i32 @zchar_set_cache(%struct.gs_context_state_s* %42, %struct.gs_font_base_s* %43, %struct.ref_s* %cnref, double* null, double* %add.ptr17, %struct.gs_rect_s* %char_bbox, i32 (%struct.gs_context_state_s*)* %46, i32 (%struct.gs_context_state_s*)** %47, double* null) #4
  store i32 %call18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb, %cond.end
  %48 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #1
  %49 = bitcast %struct.ref_s* %other_subr to i8*
  call void @llvm.lifetime.end(i64 16, i8* %49) #1
  %50 = bitcast %struct.ref_s* %cnref to i8*
  call void @llvm.lifetime.end(i64 16, i8* %50) #1
  br label %cleanup.46

if.else:                                          ; preds = %land.lhs.true.6, %lor.lhs.false
  %51 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %52 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %53 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %53, i64 -1
  %54 = load %struct.gs_type1exec_state_s*, %struct.gs_type1exec_state_s** %pcxs.addr, align 8, !tbaa !1
  %present22 = getelementptr inbounds %struct.gs_type1exec_state_s, %struct.gs_type1exec_state_s* %54, i32 0, i32 3
  %55 = load i32, i32* %present22, align 4, !tbaa !74
  %cmp23 = icmp eq i32 %55, 2
  br i1 %cmp23, label %land.lhs.true.24, label %cond.false.30

land.lhs.true.24:                                 ; preds = %if.else
  %56 = load %struct.gs_type1exec_state_s*, %struct.gs_type1exec_state_s** %pcxs.addr, align 8, !tbaa !1
  %use_FontBBox_as_Metrics225 = getelementptr inbounds %struct.gs_type1exec_state_s, %struct.gs_type1exec_state_s* %56, i32 0, i32 5
  %57 = load i32, i32* %use_FontBBox_as_Metrics225, align 4, !tbaa !82
  %tobool26 = icmp ne i32 %57, 0
  br i1 %tobool26, label %cond.false.30, label %cond.true.27

cond.true.27:                                     ; preds = %land.lhs.true.24
  %58 = load %struct.gs_type1exec_state_s*, %struct.gs_type1exec_state_s** %pcxs.addr, align 8, !tbaa !1
  %sbw28 = getelementptr inbounds %struct.gs_type1exec_state_s, %struct.gs_type1exec_state_s* %58, i32 0, i32 2
  %arraydecay29 = getelementptr inbounds [4 x double], [4 x double]* %sbw28, i32 0, i32 0
  br label %cond.end.31

cond.false.30:                                    ; preds = %land.lhs.true.24, %if.else
  br label %cond.end.31

cond.end.31:                                      ; preds = %cond.false.30, %cond.true.27
  %cond32 = phi double* [ %arraydecay29, %cond.true.27 ], [ null, %cond.false.30 ]
  %59 = load %struct.gs_type1exec_state_s*, %struct.gs_type1exec_state_s** %pcxs.addr, align 8, !tbaa !1
  %sbw33 = getelementptr inbounds %struct.gs_type1exec_state_s, %struct.gs_type1exec_state_s* %59, i32 0, i32 2
  %arraydecay34 = getelementptr inbounds [4 x double], [4 x double]* %sbw33, i32 0, i32 0
  %add.ptr35 = getelementptr inbounds double, double* %arraydecay34, i64 2
  %60 = load %struct.gs_type1exec_state_s*, %struct.gs_type1exec_state_s** %pcxs.addr, align 8, !tbaa !1
  %char_bbox36 = getelementptr inbounds %struct.gs_type1exec_state_s, %struct.gs_type1exec_state_s* %60, i32 0, i32 4
  %61 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %cont, align 8, !tbaa !1
  %62 = load i32 (%struct.gs_context_state_s*)**, i32 (%struct.gs_context_state_s*)*** %exec_cont.addr, align 8, !tbaa !1
  %63 = load %struct.gs_type1exec_state_s*, %struct.gs_type1exec_state_s** %pcxs.addr, align 8, !tbaa !1
  %use_FontBBox_as_Metrics237 = getelementptr inbounds %struct.gs_type1exec_state_s, %struct.gs_type1exec_state_s* %63, i32 0, i32 5
  %64 = load i32, i32* %use_FontBBox_as_Metrics237, align 4, !tbaa !82
  %tobool38 = icmp ne i32 %64, 0
  br i1 %tobool38, label %cond.true.39, label %cond.false.42

cond.true.39:                                     ; preds = %cond.end.31
  %65 = load %struct.gs_type1exec_state_s*, %struct.gs_type1exec_state_s** %pcxs.addr, align 8, !tbaa !1
  %sbw40 = getelementptr inbounds %struct.gs_type1exec_state_s, %struct.gs_type1exec_state_s* %65, i32 0, i32 2
  %arraydecay41 = getelementptr inbounds [4 x double], [4 x double]* %sbw40, i32 0, i32 0
  br label %cond.end.43

cond.false.42:                                    ; preds = %cond.end.31
  br label %cond.end.43

cond.end.43:                                      ; preds = %cond.false.42, %cond.true.39
  %cond44 = phi double* [ %arraydecay41, %cond.true.39 ], [ null, %cond.false.42 ]
  %call45 = call i32 @zchar_set_cache(%struct.gs_context_state_s* %51, %struct.gs_font_base_s* %52, %struct.ref_s* %add.ptr21, double* %cond32, double* %add.ptr35, %struct.gs_rect_s* %char_bbox36, i32 (%struct.gs_context_state_s*)* %61, i32 (%struct.gs_context_state_s*)** %62, double* %cond44) #4
  store i32 %call45, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.46

cleanup.46:                                       ; preds = %cond.end.43, %cleanup
  %66 = bitcast %struct.ref_s** %pcdevproc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #1
  %67 = bitcast i32 (%struct.gs_context_state_s*)** %cont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #1
  %68 = bitcast %struct.gs_font_base_s** %pbfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %68) #1
  %69 = bitcast %struct.gs_type1_state_s** %pcis to i8*
  call void @llvm.lifetime.end(i64 8, i8* %69) #1
  %70 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #1
  %71 = load i32, i32* %retval
  ret i32 %71
}

; Function Attrs: nounwind uwtable
define internal i32 @type1_continue_dispatch(%struct.gs_context_state_s* %i_ctx_p, %struct.gs_type1exec_state_s* %pcxs, %struct.ref_s* %pcref, %struct.ref_s* %pos, i32 %num_args) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %pcxs.addr = alloca %struct.gs_type1exec_state_s*, align 8
  %pcref.addr = alloca %struct.ref_s*, align 8
  %pos.addr = alloca %struct.ref_s*, align 8
  %num_args.addr = alloca i32, align 4
  %value = alloca i32, align 4
  %code = alloca i32, align 4
  %cs_data = alloca %struct.gs_glyph_data_s, align 8
  %pcsd = alloca %struct.gs_glyph_data_s*, align 8
  %pfdata = alloca %struct.font_data_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.gs_type1exec_state_s* %pcxs, %struct.gs_type1exec_state_s** %pcxs.addr, align 8, !tbaa !1
  store %struct.ref_s* %pcref, %struct.ref_s** %pcref.addr, align 8, !tbaa !1
  store %struct.ref_s* %pos, %struct.ref_s** %pos.addr, align 8, !tbaa !1
  store i32 %num_args, i32* %num_args.addr, align 4, !tbaa !5
  %0 = bitcast i32* %value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast %struct.gs_glyph_data_s* %cs_data to i8*
  call void @llvm.lifetime.start(i64 48, i8* %2) #1
  %3 = bitcast %struct.gs_glyph_data_s** %pcsd to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %5 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !109
  %6 = bitcast %struct.gs_ref_memory_s* %5 to %struct.gs_memory_s*
  %memory1 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %cs_data, i32 0, i32 3
  store %struct.gs_memory_s* %6, %struct.gs_memory_s** %memory1, align 8, !tbaa !124
  %7 = load %struct.ref_s*, %struct.ref_s** %pcref.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.ref_s* %7, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store %struct.gs_glyph_data_s* null, %struct.gs_glyph_data_s** %pcsd, align 8, !tbaa !1
  br label %if.end

if.else:                                          ; preds = %entry
  %8 = load %struct.ref_s*, %struct.ref_s** %pcref.addr, align 8, !tbaa !1
  %value2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 1
  %const_bytes = bitcast %union.v* %value2 to i8**
  %9 = load i8*, i8** %const_bytes, align 8, !tbaa !1
  %10 = load %struct.ref_s*, %struct.ref_s** %pcref.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 2
  %11 = load i32, i32* %rsize, align 4, !tbaa !66
  call void @gs_glyph_data_from_string(%struct.gs_glyph_data_s* %cs_data, i8* %9, i32 %11, %struct.gs_font_s* null) #4
  store %struct.gs_glyph_data_s* %cs_data, %struct.gs_glyph_data_s** %pcsd, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %12 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %13 = load %struct.gs_type1exec_state_s*, %struct.gs_type1exec_state_s** %pcxs.addr, align 8, !tbaa !1
  %i_ctx_p3 = getelementptr inbounds %struct.gs_type1exec_state_s, %struct.gs_type1exec_state_s* %13, i32 0, i32 1
  store %struct.gs_context_state_s* %12, %struct.gs_context_state_s** %i_ctx_p3, align 8, !tbaa !120
  %14 = load i32, i32* %num_args.addr, align 4, !tbaa !5
  %15 = load %struct.gs_type1exec_state_s*, %struct.gs_type1exec_state_s** %pcxs.addr, align 8, !tbaa !1
  %num_args4 = getelementptr inbounds %struct.gs_type1exec_state_s, %struct.gs_type1exec_state_s* %15, i32 0, i32 7
  store i32 %14, i32* %num_args4, align 4, !tbaa !165
  %16 = load %struct.gs_type1exec_state_s*, %struct.gs_type1exec_state_s** %pcxs.addr, align 8, !tbaa !1
  %save_args = getelementptr inbounds %struct.gs_type1exec_state_s, %struct.gs_type1exec_state_s* %16, i32 0, i32 6
  %arraydecay = getelementptr inbounds [6 x %struct.ref_s], [6 x %struct.ref_s]* %save_args, i32 0, i32 0
  %17 = bitcast %struct.ref_s* %arraydecay to i8*
  %18 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %18, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %19 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !7
  %20 = load i32, i32* %num_args.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %20, 1
  %idx.ext = sext i32 %sub to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i64 %idx.neg
  %21 = bitcast %struct.ref_s* %add.ptr to i8*
  %22 = load i32, i32* %num_args.addr, align 4, !tbaa !5
  %conv = sext i32 %22 to i64
  %mul = mul i64 %conv, 16
  %call = call i8* @memcpy(i8* %17, i8* %21, i64 %mul) #5
  %23 = load i32, i32* %num_args.addr, align 4, !tbaa !5
  %24 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack5 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %24, i32 0, i32 26
  %stack6 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack5, i32 0, i32 0
  %p7 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack6, i32 0, i32 0
  %25 = load %struct.ref_s*, %struct.ref_s** %p7, align 8, !tbaa !7
  %idx.ext8 = sext i32 %23 to i64
  %idx.neg9 = sub i64 0, %idx.ext8
  %add.ptr10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i64 %idx.neg9
  store %struct.ref_s* %add.ptr10, %struct.ref_s** %p7, align 8, !tbaa !7
  %26 = load %struct.gs_type1exec_state_s*, %struct.gs_type1exec_state_s** %pcxs.addr, align 8, !tbaa !1
  %cis = getelementptr inbounds %struct.gs_type1exec_state_s, %struct.gs_type1exec_state_s* %26, i32 0, i32 0
  %27 = load %struct.gs_type1exec_state_s*, %struct.gs_type1exec_state_s** %pcxs.addr, align 8, !tbaa !1
  %28 = bitcast %struct.gs_type1exec_state_s* %27 to i8*
  call void @gs_type1_set_callback_data(%struct.gs_type1_state_s* %cis, i8* %28) #4
  %29 = load %struct.gs_type1exec_state_s*, %struct.gs_type1exec_state_s** %pcxs.addr, align 8, !tbaa !1
  %cis11 = getelementptr inbounds %struct.gs_type1exec_state_s, %struct.gs_type1exec_state_s* %29, i32 0, i32 0
  %pfont = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %cis11, i32 0, i32 1
  %30 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont, align 8, !tbaa !166
  %data = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %30, i32 0, i32 29
  %interpret = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data, i32 0, i32 1
  %31 = load i32 (%struct.gs_type1_state_s*, %struct.gs_glyph_data_s*, i32*)*, i32 (%struct.gs_type1_state_s*, %struct.gs_glyph_data_s*, i32*)** %interpret, align 8, !tbaa !131
  %32 = load %struct.gs_type1exec_state_s*, %struct.gs_type1exec_state_s** %pcxs.addr, align 8, !tbaa !1
  %cis12 = getelementptr inbounds %struct.gs_type1exec_state_s, %struct.gs_type1exec_state_s* %32, i32 0, i32 0
  %33 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pcsd, align 8, !tbaa !1
  %call13 = call i32 %31(%struct.gs_type1_state_s* %cis12, %struct.gs_glyph_data_s* %33, i32* %value) #4
  store i32 %call13, i32* %code, align 4, !tbaa !5
  %34 = load i32, i32* %code, align 4, !tbaa !5
  switch i32 %34, label %sw.epilog [
    i32 2, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end
  %35 = bitcast %struct.font_data_s** %pfdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %35) #1
  %36 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %36, i32 0, i32 0
  %37 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !27
  %call14 = call %struct.gs_font_s* @gs_currentfont(%struct.gs_state_s* %37) #4
  %client_data = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %call14, i32 0, i32 8
  %38 = load i8*, i8** %client_data, align 8, !tbaa !167
  %39 = bitcast i8* %38 to %struct.font_data_s*
  store %struct.font_data_s* %39, %struct.font_data_s** %pfdata, align 8, !tbaa !1
  %40 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory15 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %40, i32 0, i32 1
  %current16 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory15, i32 0, i32 0
  %41 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current16, align 8, !tbaa !109
  %42 = bitcast %struct.gs_ref_memory_s* %41 to %struct.gs_memory_s*
  %43 = load %struct.font_data_s*, %struct.font_data_s** %pfdata, align 8, !tbaa !1
  %u = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %43, i32 0, i32 6
  %type1 = bitcast %union._fs* %u to %struct._f1*
  %OtherSubrs = getelementptr inbounds %struct._f1, %struct._f1* %type1, i32 0, i32 0
  %44 = load i32, i32* %value, align 4, !tbaa !5
  %conv17 = sext i32 %44 to i64
  %45 = load %struct.ref_s*, %struct.ref_s** %pos.addr, align 8, !tbaa !1
  %call18 = call i32 @array_get(%struct.gs_memory_s* %42, %struct.ref_s* %OtherSubrs, i64 %conv17, %struct.ref_s* %45) #4
  store i32 %call18, i32* %code, align 4, !tbaa !5
  %46 = load i32, i32* %code, align 4, !tbaa !5
  %cmp19 = icmp sge i32 %46, 0
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %sw.bb
  store i32 2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.22:                                        ; preds = %sw.bb
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.22, %if.then.21
  %47 = bitcast %struct.font_data_s** %pfdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.37 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %sw.epilog

sw.epilog:                                        ; preds = %cleanup.cont, %if.end
  %48 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack23 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %48, i32 0, i32 26
  %stack24 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack23, i32 0, i32 0
  %p25 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack24, i32 0, i32 0
  %49 = load %struct.ref_s*, %struct.ref_s** %p25, align 8, !tbaa !7
  %add.ptr26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %49, i64 1
  %50 = bitcast %struct.ref_s* %add.ptr26 to i8*
  %51 = load %struct.gs_type1exec_state_s*, %struct.gs_type1exec_state_s** %pcxs.addr, align 8, !tbaa !1
  %save_args27 = getelementptr inbounds %struct.gs_type1exec_state_s, %struct.gs_type1exec_state_s* %51, i32 0, i32 6
  %arraydecay28 = getelementptr inbounds [6 x %struct.ref_s], [6 x %struct.ref_s]* %save_args27, i32 0, i32 0
  %52 = bitcast %struct.ref_s* %arraydecay28 to i8*
  %53 = load i32, i32* %num_args.addr, align 4, !tbaa !5
  %conv29 = sext i32 %53 to i64
  %mul30 = mul i64 %conv29, 16
  %call31 = call i8* @memcpy(i8* %50, i8* %52, i64 %mul30) #5
  %54 = load i32, i32* %num_args.addr, align 4, !tbaa !5
  %55 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack32 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %55, i32 0, i32 26
  %stack33 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack32, i32 0, i32 0
  %p34 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack33, i32 0, i32 0
  %56 = load %struct.ref_s*, %struct.ref_s** %p34, align 8, !tbaa !7
  %idx.ext35 = sext i32 %54 to i64
  %add.ptr36 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %56, i64 %idx.ext35
  store %struct.ref_s* %add.ptr36, %struct.ref_s** %p34, align 8, !tbaa !7
  %57 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %57, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.37

cleanup.37:                                       ; preds = %sw.epilog, %cleanup
  %58 = bitcast %struct.gs_glyph_data_s** %pcsd to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #1
  %59 = bitcast %struct.gs_glyph_data_s* %cs_data to i8*
  call void @llvm.lifetime.end(i64 48, i8* %59) #1
  %60 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #1
  %61 = bitcast i32* %value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #1
  %62 = load i32, i32* %retval
  ret i32 %62
}

; Function Attrs: nounwind uwtable
define internal i32 @nobbox_finish(%struct.gs_context_state_s* %i_ctx_p, %struct.gs_type1exec_state_s* %pcxs) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %pcxs.addr = alloca %struct.gs_type1exec_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %penum = alloca %struct.gs_text_enum_s*, align 8
  %pfont = alloca %struct.gs_font_s*, align 8
  %cleanup.dest.slot = alloca i32
  %pbfont = alloca %struct.gs_font_base_s*, align 8
  %pfont1 = alloca %struct.gs_font_type1_s*, align 8
  %cont = alloca i32 (%struct.gs_context_state_s*)*, align 8
  %exec_cont = alloca i32 (%struct.gs_context_state_s*)*, align 8
  %endpt = alloca %struct.gs_point_s, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.gs_type1exec_state_s* %pcxs, %struct.gs_type1exec_state_s** %pcxs.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !7
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast %struct.gs_text_enum_s** %penum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call %struct.gs_text_enum_s* @op_show_find(%struct.gs_context_state_s* %5) #4
  store %struct.gs_text_enum_s* %call, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %6 = bitcast %struct.gs_font_s** %pfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %7, i32 0, i32 0
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !27
  %9 = load %struct.gs_type1exec_state_s*, %struct.gs_type1exec_state_s** %pcxs.addr, align 8, !tbaa !1
  %char_bbox = getelementptr inbounds %struct.gs_type1exec_state_s, %struct.gs_type1exec_state_s* %9, i32 0, i32 4
  %call1 = call i32 @gs_upathbbox(%struct.gs_state_s* %8, %struct.gs_rect_s* %char_bbox, i32 0) #4
  store i32 %call1, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 -3
  %call2 = call i32 @font_param(%struct.ref_s* %add.ptr, %struct.gs_font_s** %pfont) #4
  store i32 %call2, i32* %code, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %11 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.58

if.end:                                           ; preds = %lor.lhs.false
  %12 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %cmp4 = icmp eq %struct.gs_text_enum_s* %12, null
  br i1 %cmp4, label %if.then.7, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %if.end
  %13 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %call6 = call i32 @font_uses_charstrings(%struct.gs_font_s* %13) #4
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %lor.lhs.false.5, %if.end
  store i32 -21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.58

if.end.8:                                         ; preds = %lor.lhs.false.5
  %14 = bitcast %struct.gs_font_base_s** %pbfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %16 = bitcast %struct.gs_font_s* %15 to %struct.gs_font_base_s*
  store %struct.gs_font_base_s* %16, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %17 = bitcast %struct.gs_font_type1_s** %pfont1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  %18 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %19 = bitcast %struct.gs_font_s* %18 to %struct.gs_font_type1_s*
  store %struct.gs_font_type1_s* %19, %struct.gs_font_type1_s** %pfont1, align 8, !tbaa !1
  %20 = bitcast i32 (%struct.gs_context_state_s*)** %cont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  %21 = bitcast i32 (%struct.gs_context_state_s*)** %exec_cont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  store i32 (%struct.gs_context_state_s*)* null, i32 (%struct.gs_context_state_s*)** %exec_cont, align 8, !tbaa !1
  %22 = load %struct.gs_type1exec_state_s*, %struct.gs_type1exec_state_s** %pcxs.addr, align 8, !tbaa !1
  %present = getelementptr inbounds %struct.gs_type1exec_state_s, %struct.gs_type1exec_state_s* %22, i32 0, i32 3
  %23 = load i32, i32* %present, align 4, !tbaa !74
  %cmp9 = icmp eq i32 %23, 0
  br i1 %cmp9, label %if.then.10, label %if.end.19

if.then.10:                                       ; preds = %if.end.8
  %24 = bitcast %struct.gs_point_s* %endpt to i8*
  call void @llvm.lifetime.start(i64 16, i8* %24) #1
  %25 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs11 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %25, i32 0, i32 0
  %26 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs11, align 8, !tbaa !27
  %call12 = call i32 @gs_currentpoint(%struct.gs_state_s* %26, %struct.gs_point_s* %endpt) #4
  store i32 %call12, i32* %code, align 4, !tbaa !5
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.then.10
  %27 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %27, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %if.then.10
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %endpt, i32 0, i32 0
  %28 = load double, double* %x, align 8, !tbaa !91
  %29 = load %struct.gs_type1exec_state_s*, %struct.gs_type1exec_state_s** %pcxs.addr, align 8, !tbaa !1
  %sbw = getelementptr inbounds %struct.gs_type1exec_state_s, %struct.gs_type1exec_state_s* %29, i32 0, i32 2
  %arrayidx = getelementptr inbounds [4 x double], [4 x double]* %sbw, i32 0, i64 2
  store double %28, double* %arrayidx, align 8, !tbaa !52
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %endpt, i32 0, i32 1
  %30 = load double, double* %y, align 8, !tbaa !92
  %31 = load %struct.gs_type1exec_state_s*, %struct.gs_type1exec_state_s** %pcxs.addr, align 8, !tbaa !1
  %sbw16 = getelementptr inbounds %struct.gs_type1exec_state_s, %struct.gs_type1exec_state_s* %31, i32 0, i32 2
  %arrayidx17 = getelementptr inbounds [4 x double], [4 x double]* %sbw16, i32 0, i64 3
  store double %30, double* %arrayidx17, align 8, !tbaa !52
  %32 = load %struct.gs_type1exec_state_s*, %struct.gs_type1exec_state_s** %pcxs.addr, align 8, !tbaa !1
  %present18 = getelementptr inbounds %struct.gs_type1exec_state_s, %struct.gs_type1exec_state_s* %32, i32 0, i32 3
  store i32 2, i32* %present18, align 4, !tbaa !74
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.15, %if.then.14
  %33 = bitcast %struct.gs_point_s* %endpt to i8*
  call void @llvm.lifetime.end(i64 16, i8* %33) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.54 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.19

if.end.19:                                        ; preds = %cleanup.cont, %if.end.8
  %34 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs20 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %34, i32 0, i32 0
  %35 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs20, align 8, !tbaa !27
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %35, i32 0, i32 78
  %36 = load %struct.gx_device_s*, %struct.gx_device_s** %device, align 8, !tbaa !145
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %36, i32 0, i32 42
  %get_alpha_bits = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 20
  %37 = load i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i32)** %get_alpha_bits, align 8, !tbaa !146
  %38 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs21 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %38, i32 0, i32 0
  %39 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs21, align 8, !tbaa !27
  %device22 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %39, i32 0, i32 78
  %40 = load %struct.gx_device_s*, %struct.gx_device_s** %device22, align 8, !tbaa !145
  %call23 = call i32 %37(%struct.gx_device_s* %40, i32 0) #4
  %cmp24 = icmp sgt i32 %call23, 1
  br i1 %cmp24, label %if.then.25, label %if.else

if.then.25:                                       ; preds = %if.end.19
  %41 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs26 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %41, i32 0, i32 0
  %42 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs26, align 8, !tbaa !27
  %call27 = call i32 @gs_newpath(%struct.gs_state_s* %42) #4
  %43 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs28 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %43, i32 0, i32 0
  %44 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs28, align 8, !tbaa !27
  %call29 = call i32 @gs_moveto(%struct.gs_state_s* %44, double 0.000000e+00, double 0.000000e+00) #4
  %45 = load %struct.gs_type1exec_state_s*, %struct.gs_type1exec_state_s** %pcxs.addr, align 8, !tbaa !1
  %cis = getelementptr inbounds %struct.gs_type1exec_state_s, %struct.gs_type1exec_state_s* %45, i32 0, i32 0
  %46 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %47 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs30 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %47, i32 0, i32 0
  %48 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs30, align 8, !tbaa !27
  %49 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont1, align 8, !tbaa !1
  %call31 = call i32 @type1_exec_init(%struct.gs_type1_state_s* %cis, %struct.gs_text_enum_s* %46, %struct.gs_state_s* %48, %struct.gs_font_type1_s* %49) #4
  store i32 %call31, i32* %code, align 4, !tbaa !5
  %50 = load i32, i32* %code, align 4, !tbaa !5
  %cmp32 = icmp slt i32 %50, 0
  br i1 %cmp32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.then.25
  %51 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %51, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.54

if.end.34:                                        ; preds = %if.then.25
  %52 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %53 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %54 = load %struct.gs_type1exec_state_s*, %struct.gs_type1exec_state_s** %pcxs.addr, align 8, !tbaa !1
  %55 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %call35 = call i32 @type1exec_bbox(%struct.gs_context_state_s* %52, %struct.gs_text_enum_s* %53, %struct.gs_type1exec_state_s* %54, %struct.gs_font_s* %55, i32 (%struct.gs_context_state_s*)** %exec_cont) #4
  store i32 %call35, i32* %code, align 4, !tbaa !5
  br label %if.end.48

if.else:                                          ; preds = %if.end.19
  %56 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %PaintType = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %56, i32 0, i32 17
  %57 = load i32, i32* %PaintType, align 4, !tbaa !98
  %cmp36 = icmp eq i32 %57, 0
  br i1 %cmp36, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.else
  %58 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %orig_font = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %58, i32 0, i32 4
  %59 = load %struct.gs_font_s*, %struct.gs_font_s** %orig_font, align 8, !tbaa !162
  %PaintType37 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %59, i32 0, i32 17
  %60 = load i32, i32* %PaintType37, align 4, !tbaa !60
  %cmp38 = icmp eq i32 %60, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.else
  %61 = phi i1 [ false, %if.else ], [ %cmp38, %land.rhs ]
  %cond = select i1 %61, i32 (%struct.gs_context_state_s*)* @nobbox_fill, i32 (%struct.gs_context_state_s*)* @nobbox_stroke
  store i32 (%struct.gs_context_state_s*)* %cond, i32 (%struct.gs_context_state_s*)** %cont, align 8, !tbaa !1
  store i32 (%struct.gs_context_state_s*)* null, i32 (%struct.gs_context_state_s*)** %exec_cont, align 8, !tbaa !1
  %62 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %63 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %64 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %64, i64 -1
  %65 = load %struct.gs_type1exec_state_s*, %struct.gs_type1exec_state_s** %pcxs.addr, align 8, !tbaa !1
  %sbw40 = getelementptr inbounds %struct.gs_type1exec_state_s, %struct.gs_type1exec_state_s* %65, i32 0, i32 2
  %arraydecay = getelementptr inbounds [4 x double], [4 x double]* %sbw40, i32 0, i32 0
  %add.ptr41 = getelementptr inbounds double, double* %arraydecay, i64 2
  %66 = load %struct.gs_type1exec_state_s*, %struct.gs_type1exec_state_s** %pcxs.addr, align 8, !tbaa !1
  %char_bbox42 = getelementptr inbounds %struct.gs_type1exec_state_s, %struct.gs_type1exec_state_s* %66, i32 0, i32 4
  %67 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %cont, align 8, !tbaa !1
  %68 = load %struct.gs_type1exec_state_s*, %struct.gs_type1exec_state_s** %pcxs.addr, align 8, !tbaa !1
  %use_FontBBox_as_Metrics2 = getelementptr inbounds %struct.gs_type1exec_state_s, %struct.gs_type1exec_state_s* %68, i32 0, i32 5
  %69 = load i32, i32* %use_FontBBox_as_Metrics2, align 4, !tbaa !82
  %tobool43 = icmp ne i32 %69, 0
  br i1 %tobool43, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.end
  %70 = load %struct.gs_type1exec_state_s*, %struct.gs_type1exec_state_s** %pcxs.addr, align 8, !tbaa !1
  %sbw44 = getelementptr inbounds %struct.gs_type1exec_state_s, %struct.gs_type1exec_state_s* %70, i32 0, i32 2
  %arraydecay45 = getelementptr inbounds [4 x double], [4 x double]* %sbw44, i32 0, i32 0
  br label %cond.end

cond.false:                                       ; preds = %land.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond46 = phi double* [ %arraydecay45, %cond.true ], [ null, %cond.false ]
  %call47 = call i32 @zchar_set_cache(%struct.gs_context_state_s* %62, %struct.gs_font_base_s* %63, %struct.ref_s* %add.ptr39, double* null, double* %add.ptr41, %struct.gs_rect_s* %char_bbox42, i32 (%struct.gs_context_state_s*)* %67, i32 (%struct.gs_context_state_s*)** %exec_cont, double* %cond46) #4
  store i32 %call47, i32* %code, align 4, !tbaa !5
  br label %if.end.48

if.end.48:                                        ; preds = %cond.end, %if.end.34
  %71 = load i32, i32* %code, align 4, !tbaa !5
  %cmp49 = icmp sge i32 %71, 0
  br i1 %cmp49, label %land.lhs.true, label %if.end.53

land.lhs.true:                                    ; preds = %if.end.48
  %72 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %exec_cont, align 8, !tbaa !1
  %cmp50 = icmp ne i32 (%struct.gs_context_state_s*)* %72, null
  br i1 %cmp50, label %if.then.51, label %if.end.53

if.then.51:                                       ; preds = %land.lhs.true
  %73 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %exec_cont, align 8, !tbaa !1
  %74 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call52 = call i32 %73(%struct.gs_context_state_s* %74) #4
  store i32 %call52, i32* %code, align 4, !tbaa !5
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.51, %land.lhs.true, %if.end.48
  %75 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %75, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.54

cleanup.54:                                       ; preds = %if.end.53, %if.then.33, %cleanup
  %76 = bitcast i32 (%struct.gs_context_state_s*)** %exec_cont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %76) #1
  %77 = bitcast i32 (%struct.gs_context_state_s*)** %cont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %77) #1
  %78 = bitcast %struct.gs_font_type1_s** %pfont1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #1
  %79 = bitcast %struct.gs_font_base_s** %pbfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %79) #1
  br label %cleanup.58

cleanup.58:                                       ; preds = %cleanup.54, %if.then.7, %if.then
  %80 = bitcast %struct.gs_font_s** %pfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %80) #1
  %81 = bitcast %struct.gs_text_enum_s** %penum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #1
  %82 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #1
  %83 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %83) #1
  %84 = load i32, i32* %retval
  ret i32 %84
}

; Function Attrs: nounwind uwtable
define internal i32 @type1_call_OtherSubr(%struct.gs_context_state_s* %i_ctx_p, %struct.gs_type1exec_state_s* %pcxs, i32 (%struct.gs_context_state_s*)* %cont, %struct.ref_s* %pos) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %pcxs.addr = alloca %struct.gs_type1exec_state_s*, align 8
  %cont.addr = alloca i32 (%struct.gs_context_state_s*)*, align 8
  %pos.addr = alloca %struct.ref_s*, align 8
  %hpcxs = alloca %struct.gs_type1exec_state_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.gs_type1exec_state_s* %pcxs, %struct.gs_type1exec_state_s** %pcxs.addr, align 8, !tbaa !1
  store i32 (%struct.gs_context_state_s*)* %cont, i32 (%struct.gs_context_state_s*)** %cont.addr, align 8, !tbaa !1
  store %struct.ref_s* %pos, %struct.ref_s** %pos.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_type1exec_state_s** %hpcxs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %2 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !109
  %3 = bitcast %struct.gs_ref_memory_s* %2 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %3, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %4 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !168
  %5 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %5, i32 0, i32 1
  %current2 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory1, i32 0, i32 0
  %6 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current2, align 8, !tbaa !109
  %7 = bitcast %struct.gs_ref_memory_s* %6 to %struct.gs_memory_s*
  %call = call i8* %4(%struct.gs_memory_s* %7, %struct.gs_memory_struct_type_s* @st_gs_type1exec_state, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i32 0, i32 0)) #4
  %8 = bitcast i8* %call to %struct.gs_type1exec_state_s*
  store %struct.gs_type1exec_state_s* %8, %struct.gs_type1exec_state_s** %hpcxs, align 8, !tbaa !1
  %9 = load %struct.gs_type1exec_state_s*, %struct.gs_type1exec_state_s** %hpcxs, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_type1exec_state_s* %9, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = load %struct.gs_type1exec_state_s*, %struct.gs_type1exec_state_s** %hpcxs, align 8, !tbaa !1
  %11 = load %struct.gs_type1exec_state_s*, %struct.gs_type1exec_state_s** %pcxs.addr, align 8, !tbaa !1
  %12 = bitcast %struct.gs_type1exec_state_s* %10 to i8*
  %13 = bitcast %struct.gs_type1exec_state_s* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 11408, i32 8, i1 false), !tbaa.struct !101
  %14 = load %struct.gs_type1exec_state_s*, %struct.gs_type1exec_state_s** %hpcxs, align 8, !tbaa !1
  %cis = getelementptr inbounds %struct.gs_type1exec_state_s, %struct.gs_type1exec_state_s* %14, i32 0, i32 0
  %15 = load %struct.gs_type1exec_state_s*, %struct.gs_type1exec_state_s** %hpcxs, align 8, !tbaa !1
  %16 = bitcast %struct.gs_type1exec_state_s* %15 to i8*
  call void @gs_type1_set_callback_data(%struct.gs_type1_state_s* %cis, i8* %16) #4
  %17 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %17, i32 0, i32 25
  %stack = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %18 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !62
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %p, align 8, !tbaa !62
  %19 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %19, i32 0, i32 25
  %stack4 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack3, i32 0, i32 0
  %p5 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack4, i32 0, i32 0
  %20 = load %struct.ref_s*, %struct.ref_s** %p5, align 8, !tbaa !62
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i32 0, i32 1
  %opproc = bitcast %union.v* %value to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @op_type1_cleanup, i32 (%struct.gs_context_state_s*)** %opproc, align 8, !tbaa !1
  %21 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack6 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %21, i32 0, i32 25
  %stack7 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack6, i32 0, i32 0
  %p8 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack7, i32 0, i32 0
  %22 = load %struct.ref_s*, %struct.ref_s** %p8, align 8, !tbaa !62
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 3712, i16* %type_attrs, align 2, !tbaa !64
  %23 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack9 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %23, i32 0, i32 25
  %stack10 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack9, i32 0, i32 0
  %p11 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack10, i32 0, i32 0
  %24 = load %struct.ref_s*, %struct.ref_s** %p11, align 8, !tbaa !62
  %tas12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas12, i32 0, i32 2
  store i32 1, i32* %rsize, align 4, !tbaa !66
  %25 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack13 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %25, i32 0, i32 25
  %stack14 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack13, i32 0, i32 0
  %p15 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack14, i32 0, i32 0
  %26 = load %struct.ref_s*, %struct.ref_s** %p15, align 8, !tbaa !62
  %incdec.ptr16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i32 1
  store %struct.ref_s* %incdec.ptr16, %struct.ref_s** %p15, align 8, !tbaa !62
  %27 = load %struct.gs_type1exec_state_s*, %struct.gs_type1exec_state_s** %hpcxs, align 8, !tbaa !1
  %28 = bitcast %struct.gs_type1exec_state_s* %27 to %struct.obj_header_s*
  %29 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack17 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %29, i32 0, i32 25
  %stack18 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack17, i32 0, i32 0
  %p19 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack18, i32 0, i32 0
  %30 = load %struct.ref_s*, %struct.ref_s** %p19, align 8, !tbaa !62
  %value20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i32 0, i32 1
  %pstruct = bitcast %union.v* %value20 to %struct.obj_header_s**
  store %struct.obj_header_s* %28, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %31 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory21 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %31, i32 0, i32 1
  %current_space = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory21, i32 0, i32 2
  %32 = load i32, i32* %current_space, align 4, !tbaa !169
  %or = or i32 0, %32
  %add = add i32 2048, %or
  %conv = trunc i32 %add to i16
  %33 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack22 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %33, i32 0, i32 25
  %stack23 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack22, i32 0, i32 0
  %p24 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack23, i32 0, i32 0
  %34 = load %struct.ref_s*, %struct.ref_s** %p24, align 8, !tbaa !62
  %tas25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i32 0, i32 0
  %type_attrs26 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas25, i32 0, i32 0
  store i16 %conv, i16* %type_attrs26, align 2, !tbaa !64
  %35 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %36 = load %struct.gs_type1exec_state_s*, %struct.gs_type1exec_state_s** %pcxs.addr, align 8, !tbaa !1
  %37 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %cont.addr, align 8, !tbaa !1
  %38 = load %struct.ref_s*, %struct.ref_s** %pos.addr, align 8, !tbaa !1
  %call27 = call i32 @type1_push_OtherSubr(%struct.gs_context_state_s* %35, %struct.gs_type1exec_state_s* %36, i32 (%struct.gs_context_state_s*)* %37, %struct.ref_s* %38) #4
  store i32 %call27, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %39 = bitcast %struct.gs_type1exec_state_s** %hpcxs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  %40 = load i32, i32* %retval
  ret i32 %40
}

declare i32 @ilog2(i32) #2

declare void @gs_glyph_data_from_string(%struct.gs_glyph_data_s*, i8*, i32, %struct.gs_font_s*) #2

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

declare %struct.gs_font_s* @gs_currentfont(%struct.gs_state_s*) #2

declare i32 @array_get(%struct.gs_memory_s*, %struct.ref_s*, i64, %struct.ref_s*) #2

declare i32 @gs_upathbbox(%struct.gs_state_s*, %struct.gs_rect_s*, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @font_uses_charstrings(%struct.gs_font_s* %pfont) #0 {
entry:
  %pfont.addr = alloca %struct.gs_font_s*, align 8
  store %struct.gs_font_s* %pfont, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %0 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %0, i32 0, i32 11
  %1 = load i32, i32* %FontType, align 4, !tbaa !20
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %FontType1 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %2, i32 0, i32 11
  %3 = load i32, i32* %FontType1, align 4, !tbaa !20
  %cmp2 = icmp eq i32 %3, 2
  br i1 %cmp2, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %4 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %FontType3 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %4, i32 0, i32 11
  %5 = load i32, i32* %FontType3, align 4, !tbaa !20
  %cmp4 = icmp eq i32 %5, 4
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %entry
  %6 = phi i1 [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp4, %lor.rhs ]
  %lor.ext = zext i1 %6 to i32
  ret i32 %lor.ext
}

declare i32 @gs_currentpoint(%struct.gs_state_s*, %struct.gs_point_s*) #2

declare i32 @gs_newpath(%struct.gs_state_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @op_type1_cleanup(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %1 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !109
  %2 = bitcast %struct.gs_ref_memory_s* %1 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %2, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %3 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !170
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 1
  %current2 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory1, i32 0, i32 0
  %5 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current2, align 8, !tbaa !109
  %6 = bitcast %struct.gs_ref_memory_s* %5 to %struct.gs_memory_s*
  %7 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %7, i32 0, i32 25
  %stack = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %8 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !62
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i64 2
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i32 0, i32 1
  %pstruct = bitcast %union.v* %value to %struct.obj_header_s**
  %9 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %10 = bitcast %struct.obj_header_s* %9 to i8*
  call void %3(%struct.gs_memory_s* %6, i8* %10, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0)) #4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @type1_push_OtherSubr(%struct.gs_context_state_s* %i_ctx_p, %struct.gs_type1exec_state_s* %pcxs, i32 (%struct.gs_context_state_s*)* %cont, %struct.ref_s* %pos) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %pcxs.addr = alloca %struct.gs_type1exec_state_s*, align 8
  %cont.addr = alloca i32 (%struct.gs_context_state_s*)*, align 8
  %pos.addr = alloca %struct.ref_s*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.gs_type1exec_state_s* %pcxs, %struct.gs_type1exec_state_s** %pcxs.addr, align 8, !tbaa !1
  store i32 (%struct.gs_context_state_s*)* %cont, i32 (%struct.gs_context_state_s*)** %cont.addr, align 8, !tbaa !1
  store %struct.ref_s* %pos, %struct.ref_s** %pos.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gs_type1exec_state_s*, %struct.gs_type1exec_state_s** %pcxs.addr, align 8, !tbaa !1
  %num_args = getelementptr inbounds %struct.gs_type1exec_state_s, %struct.gs_type1exec_state_s* %2, i32 0, i32 7
  %3 = load i32, i32* %num_args, align 4, !tbaa !165
  store i32 %3, i32* %n, align 4, !tbaa !5
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 25
  %stack = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %5 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !62
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %p, align 8, !tbaa !62
  %6 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %cont.addr, align 8, !tbaa !1
  %7 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %7, i32 0, i32 25
  %stack2 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack1, i32 0, i32 0
  %p3 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack2, i32 0, i32 0
  %8 = load %struct.ref_s*, %struct.ref_s** %p3, align 8, !tbaa !62
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 1
  %opproc = bitcast %union.v* %value to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* %6, i32 (%struct.gs_context_state_s*)** %opproc, align 8, !tbaa !1
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack4 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %9, i32 0, i32 25
  %stack5 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack4, i32 0, i32 0
  %p6 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack5, i32 0, i32 0
  %10 = load %struct.ref_s*, %struct.ref_s** %p6, align 8, !tbaa !62
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 3968, i16* %type_attrs, align 2, !tbaa !64
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack7 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %11, i32 0, i32 25
  %stack8 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack7, i32 0, i32 0
  %p9 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack8, i32 0, i32 0
  %12 = load %struct.ref_s*, %struct.ref_s** %p9, align 8, !tbaa !62
  %tas10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas10, i32 0, i32 2
  store i32 0, i32* %rsize, align 4, !tbaa !66
  %13 = load i32, i32* %n, align 4, !tbaa !5
  store i32 %13, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %14 = load i32, i32* %i, align 4, !tbaa !5
  %dec = add nsw i32 %14, -1
  store i32 %dec, i32* %i, align 4, !tbaa !5
  %cmp = icmp sge i32 %dec, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack11 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %15, i32 0, i32 25
  %stack12 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack11, i32 0, i32 0
  %p13 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack12, i32 0, i32 0
  %16 = load %struct.ref_s*, %struct.ref_s** %p13, align 8, !tbaa !62
  %incdec.ptr14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 1
  store %struct.ref_s* %incdec.ptr14, %struct.ref_s** %p13, align 8, !tbaa !62
  %17 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %17 to i64
  %18 = load %struct.gs_type1exec_state_s*, %struct.gs_type1exec_state_s** %pcxs.addr, align 8, !tbaa !1
  %save_args = getelementptr inbounds %struct.gs_type1exec_state_s, %struct.gs_type1exec_state_s* %18, i32 0, i32 6
  %arrayidx = getelementptr inbounds [6 x %struct.ref_s], [6 x %struct.ref_s]* %save_args, i32 0, i64 %idxprom
  %19 = bitcast %struct.ref_s* %incdec.ptr14 to i8*
  %20 = bitcast %struct.ref_s* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 16, i32 8, i1 false), !tbaa.struct !163
  %21 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack15 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %21, i32 0, i32 25
  %stack16 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack15, i32 0, i32 0
  %p17 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack16, i32 0, i32 0
  %22 = load %struct.ref_s*, %struct.ref_s** %p17, align 8, !tbaa !62
  %tas18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 0, i32 0
  %type_attrs19 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas18, i32 0, i32 0
  %23 = load i16, i16* %type_attrs19, align 2, !tbaa !64
  %conv = zext i16 %23 to i32
  %and = and i32 %conv, -129
  %conv20 = trunc i32 %and to i16
  store i16 %conv20, i16* %type_attrs19, align 2, !tbaa !64
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %24 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack21 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %24, i32 0, i32 25
  %stack22 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack21, i32 0, i32 0
  %p23 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack22, i32 0, i32 0
  %25 = load %struct.ref_s*, %struct.ref_s** %p23, align 8, !tbaa !62
  %incdec.ptr24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i32 1
  store %struct.ref_s* %incdec.ptr24, %struct.ref_s** %p23, align 8, !tbaa !62
  %26 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack25 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %26, i32 0, i32 25
  %stack26 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack25, i32 0, i32 0
  %p27 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack26, i32 0, i32 0
  %27 = load %struct.ref_s*, %struct.ref_s** %p27, align 8, !tbaa !62
  %28 = load %struct.ref_s*, %struct.ref_s** %pos.addr, align 8, !tbaa !1
  %29 = bitcast %struct.ref_s* %27 to i8*
  %30 = bitcast %struct.ref_s* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %30, i64 16, i32 8, i1 false), !tbaa.struct !163
  %31 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  %32 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #1
  ret i32 5
}

declare %struct.gs_ptr_procs_s* @basic_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #2

declare void @basic_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #2

; Function Attrs: nounwind uwtable
define internal void @op_type1_free(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %1 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !109
  %2 = bitcast %struct.gs_ref_memory_s* %1 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %2, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %3 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !170
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 1
  %current2 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory1, i32 0, i32 0
  %5 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current2, align 8, !tbaa !109
  %6 = bitcast %struct.gs_ref_memory_s* %5 to %struct.gs_memory_s*
  %7 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %7, i32 0, i32 25
  %stack = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %8 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !62
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 1
  %pstruct = bitcast %union.v* %value to %struct.obj_header_s**
  %9 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %10 = bitcast %struct.obj_header_s* %9 to i8*
  call void %3(%struct.gs_memory_s* %6, i8* %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0)) #4
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %11, i32 0, i32 25
  %stack4 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack3, i32 0, i32 0
  %p5 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack4, i32 0, i32 0
  %12 = load %struct.ref_s*, %struct.ref_s** %p5, align 8, !tbaa !62
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 -1
  %value6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i32 0, i32 1
  %const_refs = bitcast %union.v* %value6 to %struct.ref_s**
  store %struct.ref_s* null, %struct.ref_s** %const_refs, align 8, !tbaa !1
  %13 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack7 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %13, i32 0, i32 25
  %stack8 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack7, i32 0, i32 0
  %p9 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack8, i32 0, i32 0
  %14 = load %struct.ref_s*, %struct.ref_s** %p9, align 8, !tbaa !62
  %add.ptr10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i64 -1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr10, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 1248, i16* %type_attrs, align 2, !tbaa !64
  %15 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack11 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %15, i32 0, i32 25
  %stack12 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack11, i32 0, i32 0
  %p13 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack12, i32 0, i32 0
  %16 = load %struct.ref_s*, %struct.ref_s** %p13, align 8, !tbaa !62
  %add.ptr14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i64 -1
  %tas15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr14, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas15, i32 0, i32 2
  store i32 0, i32* %rsize, align 4, !tbaa !66
  %17 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack16 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %17, i32 0, i32 25
  %stack17 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack16, i32 0, i32 0
  %p18 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack17, i32 0, i32 0
  %18 = load %struct.ref_s*, %struct.ref_s** %p18, align 8, !tbaa !62
  %value19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i32 0, i32 1
  %const_refs20 = bitcast %union.v* %value19 to %struct.ref_s**
  store %struct.ref_s* null, %struct.ref_s** %const_refs20, align 8, !tbaa !1
  %19 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack21 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %19, i32 0, i32 25
  %stack22 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack21, i32 0, i32 0
  %p23 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack22, i32 0, i32 0
  %20 = load %struct.ref_s*, %struct.ref_s** %p23, align 8, !tbaa !62
  %tas24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i32 0, i32 0
  %type_attrs25 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas24, i32 0, i32 0
  store i16 1248, i16* %type_attrs25, align 2, !tbaa !64
  %21 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack26 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %21, i32 0, i32 25
  %stack27 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack26, i32 0, i32 0
  %p28 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack27, i32 0, i32 0
  %22 = load %struct.ref_s*, %struct.ref_s** %p28, align 8, !tbaa !62
  %tas29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 0, i32 0
  %rsize30 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas29, i32 0, i32 2
  store i32 0, i32* %rsize30, align 4, !tbaa !66
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @type1_callout_dispatch(%struct.gs_context_state_s* %i_ctx_p, i32 (%struct.gs_context_state_s*)* %cont, i32 %num_args) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %cont.addr = alloca i32 (%struct.gs_context_state_s*)*, align 8
  %num_args.addr = alloca i32, align 4
  %other_subr = alloca %struct.ref_s, align 8
  %pcxs = alloca %struct.gs_type1exec_state_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store i32 (%struct.gs_context_state_s*)* %cont, i32 (%struct.gs_context_state_s*)** %cont.addr, align 8, !tbaa !1
  store i32 %num_args, i32* %num_args.addr, align 4, !tbaa !5
  %0 = bitcast %struct.ref_s* %other_subr to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #1
  %1 = bitcast %struct.gs_type1exec_state_s** %pcxs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %2, i32 0, i32 25
  %stack = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %3 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !62
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 1
  %pstruct = bitcast %union.v* %value to %struct.obj_header_s**
  %4 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %5 = bitcast %struct.obj_header_s* %4 to %struct.gs_type1exec_state_s*
  store %struct.gs_type1exec_state_s* %5, %struct.gs_type1exec_state_s** %pcxs, align 8, !tbaa !1
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  br label %icont

icont:                                            ; preds = %sw.bb.3, %entry
  %7 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %8 = load %struct.gs_type1exec_state_s*, %struct.gs_type1exec_state_s** %pcxs, align 8, !tbaa !1
  %9 = load i32, i32* %num_args.addr, align 4, !tbaa !5
  %call = call i32 @type1_continue_dispatch(%struct.gs_context_state_s* %7, %struct.gs_type1exec_state_s* %8, %struct.ref_s* null, %struct.ref_s* %other_subr, i32 %9) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %10 = load i32, i32* %code, align 4, !tbaa !5
  switch i32 %10, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb.1
    i32 1, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %icont
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.default:                                       ; preds = %icont
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  call void @op_type1_free(%struct.gs_context_state_s* %11) #4
  %12 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %12, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.default
  %13 = load i32, i32* %code, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %sw.default
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %13, %cond.true ], [ -10, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.1:                                          ; preds = %icont
  %14 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %15 = load %struct.gs_type1exec_state_s*, %struct.gs_type1exec_state_s** %pcxs, align 8, !tbaa !1
  %16 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %cont.addr, align 8, !tbaa !1
  %call2 = call i32 @type1_push_OtherSubr(%struct.gs_context_state_s* %14, %struct.gs_type1exec_state_s* %15, i32 (%struct.gs_context_state_s*)* %16, %struct.ref_s* %other_subr) #4
  store i32 %call2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.3:                                          ; preds = %icont
  br label %icont

cleanup:                                          ; preds = %sw.bb.1, %cond.end, %sw.bb
  %17 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #1
  %18 = bitcast %struct.gs_type1exec_state_s** %pcxs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  %19 = bitcast %struct.ref_s* %other_subr to i8*
  call void @llvm.lifetime.end(i64 16, i8* %19) #1
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal i32 @bbox_finish(%struct.gs_context_state_s* %i_ctx_p, i32 (%struct.gs_context_state_s*)* %cont, i32 (%struct.gs_context_state_s*)** %exec_cont) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %cont.addr = alloca i32 (%struct.gs_context_state_s*)*, align 8
  %exec_cont.addr = alloca i32 (%struct.gs_context_state_s*)**, align 8
  %op = alloca %struct.ref_s*, align 8
  %pfont = alloca %struct.gs_font_s*, align 8
  %code = alloca i32, align 4
  %penum = alloca %struct.gs_text_enum_s*, align 8
  %cxs = alloca %struct.gs_type1exec_state_s, align 8
  %pcis = alloca %struct.gs_type1_state_s*, align 8
  %sbxy = alloca [2 x double], align 16
  %sbpt = alloca %struct.gs_point_s, align 8
  %psbpt = alloca %struct.gs_point_s*, align 8
  %opc = alloca %struct.ref_s*, align 8
  %opstr = alloca %struct.ref_s*, align 8
  %other_subr = alloca %struct.ref_s, align 8
  %cleanup.dest.slot = alloca i32
  %pfont1 = alloca %struct.gs_font_type1_s*, align 8
  %lenIV = alloca i32, align 4
  %es_code_ = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store i32 (%struct.gs_context_state_s*)* %cont, i32 (%struct.gs_context_state_s*)** %cont.addr, align 8, !tbaa !1
  store i32 (%struct.gs_context_state_s*)** %exec_cont, i32 (%struct.gs_context_state_s*)*** %exec_cont.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !7
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.gs_font_s** %pfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast %struct.gs_text_enum_s** %penum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call %struct.gs_text_enum_s* @op_show_find(%struct.gs_context_state_s* %6) #4
  store %struct.gs_text_enum_s* %call, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %7 = bitcast %struct.gs_type1exec_state_s* %cxs to i8*
  call void @llvm.lifetime.start(i64 11408, i8* %7) #1
  %8 = bitcast %struct.gs_type1_state_s** %pcis to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %cis = getelementptr inbounds %struct.gs_type1exec_state_s, %struct.gs_type1exec_state_s* %cxs, i32 0, i32 0
  store %struct.gs_type1_state_s* %cis, %struct.gs_type1_state_s** %pcis, align 8, !tbaa !1
  %9 = bitcast [2 x double]* %sbxy to i8*
  call void @llvm.lifetime.start(i64 16, i8* %9) #1
  %10 = bitcast %struct.gs_point_s* %sbpt to i8*
  call void @llvm.lifetime.start(i64 16, i8* %10) #1
  %11 = bitcast %struct.gs_point_s** %psbpt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  store %struct.gs_point_s* null, %struct.gs_point_s** %psbpt, align 8, !tbaa !1
  %12 = bitcast %struct.ref_s** %opc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  store %struct.ref_s* %13, %struct.ref_s** %opc, align 8, !tbaa !1
  %14 = bitcast %struct.ref_s** %opstr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = bitcast %struct.ref_s* %other_subr to i8*
  call void @llvm.lifetime.start(i64 16, i8* %15) #1
  %16 = load %struct.ref_s*, %struct.ref_s** %opc, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %17 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %17, i64 1
  %18 = load i8, i8* %arrayidx, align 1, !tbaa !65
  %conv = zext i8 %18 to i32
  %cmp = icmp eq i32 %conv, 18
  br i1 %cmp, label %if.end.24, label %if.then

if.then:                                          ; preds = %entry
  %19 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %20 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack2 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %20, i32 0, i32 26
  %stack3 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack2, i32 0, i32 0
  %bot = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack3, i32 0, i32 1
  %21 = load %struct.ref_s*, %struct.ref_s** %bot, align 8, !tbaa !171
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i64 2
  %cmp4 = icmp ult %struct.ref_s* %19, %add.ptr
  br i1 %cmp4, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  store i32 -17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.103

if.end:                                           ; preds = %if.then
  %22 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [2 x double], [2 x double]* %sbxy, i32 0, i32 0
  %call7 = call i32 @num_params(%struct.ref_s* %22, i32 2, double* %arraydecay) #4
  store i32 %call7, i32* %code, align 4, !tbaa !5
  %23 = load i32, i32* %code, align 4, !tbaa !5
  %cmp8 = icmp slt i32 %23, 0
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end
  %24 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %24, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.103

if.end.11:                                        ; preds = %if.end
  %arrayidx12 = getelementptr inbounds [2 x double], [2 x double]* %sbxy, i32 0, i64 0
  %25 = load double, double* %arrayidx12, align 8, !tbaa !52
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %sbpt, i32 0, i32 0
  store double %25, double* %x, align 8, !tbaa !91
  %arrayidx13 = getelementptr inbounds [2 x double], [2 x double]* %sbxy, i32 0, i64 1
  %26 = load double, double* %arrayidx13, align 8, !tbaa !52
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %sbpt, i32 0, i32 1
  store double %26, double* %y, align 8, !tbaa !92
  store %struct.gs_point_s* %sbpt, %struct.gs_point_s** %psbpt, align 8, !tbaa !1
  %27 = load %struct.ref_s*, %struct.ref_s** %opc, align 8, !tbaa !1
  %add.ptr14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i64 -2
  store %struct.ref_s* %add.ptr14, %struct.ref_s** %opc, align 8, !tbaa !1
  %28 = load %struct.ref_s*, %struct.ref_s** %opc, align 8, !tbaa !1
  %tas15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i32 0, i32 0
  %type_attrs16 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas15, i32 0, i32 0
  %29 = bitcast i16* %type_attrs16 to i8*
  %arrayidx17 = getelementptr inbounds i8, i8* %29, i64 1
  %30 = load i8, i8* %arrayidx17, align 1, !tbaa !65
  %conv18 = zext i8 %30 to i32
  %cmp19 = icmp eq i32 %conv18, 18
  br i1 %cmp19, label %if.end.23, label %if.then.21

if.then.21:                                       ; preds = %if.end.11
  %31 = load %struct.ref_s*, %struct.ref_s** %opc, align 8, !tbaa !1
  %call22 = call i32 @check_type_failed(%struct.ref_s* %31) #4
  store i32 %call22, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.103

if.end.23:                                        ; preds = %if.end.11
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %entry
  %32 = load %struct.ref_s*, %struct.ref_s** %opc, align 8, !tbaa !1
  %add.ptr25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i64 -3
  %call26 = call i32 @font_param(%struct.ref_s* %add.ptr25, %struct.gs_font_s** %pfont) #4
  store i32 %call26, i32* %code, align 4, !tbaa !5
  %33 = load i32, i32* %code, align 4, !tbaa !5
  %cmp27 = icmp slt i32 %33, 0
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end.24
  %34 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %34, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.103

if.end.30:                                        ; preds = %if.end.24
  %35 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %cmp31 = icmp eq %struct.gs_text_enum_s* %35, null
  br i1 %cmp31, label %if.then.34, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.30
  %36 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %call33 = call i32 @font_uses_charstrings(%struct.gs_font_s* %36) #4
  %tobool = icmp ne i32 %call33, 0
  br i1 %tobool, label %if.end.35, label %if.then.34

if.then.34:                                       ; preds = %lor.lhs.false, %if.end.30
  store i32 -21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.103

if.end.35:                                        ; preds = %lor.lhs.false
  %37 = bitcast %struct.gs_font_type1_s** %pfont1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %37) #1
  %38 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %39 = bitcast %struct.gs_font_s* %38 to %struct.gs_font_type1_s*
  store %struct.gs_font_type1_s* %39, %struct.gs_font_type1_s** %pfont1, align 8, !tbaa !1
  %40 = bitcast i32* %lenIV to i8*
  call void @llvm.lifetime.start(i64 4, i8* %40) #1
  %41 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont1, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %41, i32 0, i32 29
  %lenIV36 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data, i32 0, i32 4
  %42 = load i32, i32* %lenIV36, align 4, !tbaa !172
  store i32 %42, i32* %lenIV, align 4, !tbaa !5
  %43 = load i32, i32* %lenIV, align 4, !tbaa !5
  %cmp37 = icmp sgt i32 %43, 0
  br i1 %cmp37, label %land.lhs.true, label %if.end.43

land.lhs.true:                                    ; preds = %if.end.35
  %44 = load %struct.ref_s*, %struct.ref_s** %opc, align 8, !tbaa !1
  %tas39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %44, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas39, i32 0, i32 2
  %45 = load i32, i32* %rsize, align 4, !tbaa !66
  %46 = load i32, i32* %lenIV, align 4, !tbaa !5
  %cmp40 = icmp ule i32 %45, %46
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %land.lhs.true
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.68

if.end.43:                                        ; preds = %land.lhs.true, %if.end.35
  %47 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %47, i32 0, i32 25
  %stack44 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p45 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack44, i32 0, i32 0
  %48 = load %struct.ref_s*, %struct.ref_s** %p45, align 8, !tbaa !62
  %49 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack46 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %49, i32 0, i32 25
  %stack47 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack46, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack47, i32 0, i32 2
  %50 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !63
  %add.ptr48 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %50, i64 -5
  %cmp49 = icmp ugt %struct.ref_s* %48, %add.ptr48
  br i1 %cmp49, label %if.then.51, label %if.end.59

if.then.51:                                       ; preds = %if.end.43
  %51 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.start(i64 4, i8* %51) #1
  %52 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack52 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %52, i32 0, i32 25
  %stack53 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack52, i32 0, i32 0
  %call54 = call i32 @ref_stack_extend(%struct.ref_stack_s* %stack53, i32 5) #4
  store i32 %call54, i32* %es_code_, align 4, !tbaa !5
  %53 = load i32, i32* %es_code_, align 4, !tbaa !5
  %cmp55 = icmp slt i32 %53, 0
  br i1 %cmp55, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %if.then.51
  %54 = load i32, i32* %es_code_, align 4, !tbaa !5
  store i32 %54, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.58:                                        ; preds = %if.then.51
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.58, %if.then.57
  %55 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.68 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.59

if.end.59:                                        ; preds = %cleanup.cont, %if.end.43
  %56 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis, align 8, !tbaa !1
  %57 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %58 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %58, i32 0, i32 0
  %59 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !27
  %60 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont1, align 8, !tbaa !1
  %call60 = call i32 @type1_exec_init(%struct.gs_type1_state_s* %56, %struct.gs_text_enum_s* %57, %struct.gs_state_s* %59, %struct.gs_font_type1_s* %60) #4
  store i32 %call60, i32* %code, align 4, !tbaa !5
  %61 = load i32, i32* %code, align 4, !tbaa !5
  %cmp61 = icmp slt i32 %61, 0
  br i1 %cmp61, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %if.end.59
  %62 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %62, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.68

if.end.64:                                        ; preds = %if.end.59
  %63 = load %struct.gs_point_s*, %struct.gs_point_s** %psbpt, align 8, !tbaa !1
  %tobool65 = icmp ne %struct.gs_point_s* %63, null
  br i1 %tobool65, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %if.end.64
  %64 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis, align 8, !tbaa !1
  %65 = load %struct.gs_point_s*, %struct.gs_point_s** %psbpt, align 8, !tbaa !1
  call void @gs_type1_set_lsb(%struct.gs_type1_state_s* %64, %struct.gs_point_s* %65) #4
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.66, %if.end.64
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.68

cleanup.68:                                       ; preds = %if.end.67, %if.then.63, %cleanup, %if.then.42
  %66 = bitcast i32* %lenIV to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #1
  %67 = bitcast %struct.gs_font_type1_s** %pfont1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #1
  %cleanup.dest.70 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.70, label %cleanup.103 [
    i32 0, label %cleanup.cont.71
  ]

cleanup.cont.71:                                  ; preds = %cleanup.68
  %68 = load %struct.ref_s*, %struct.ref_s** %opc, align 8, !tbaa !1
  store %struct.ref_s* %68, %struct.ref_s** %opstr, align 8, !tbaa !1
  br label %icont

icont:                                            ; preds = %sw.bb.102, %cleanup.cont.71
  %69 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %70 = load %struct.ref_s*, %struct.ref_s** %opstr, align 8, !tbaa !1
  %71 = load %struct.gs_point_s*, %struct.gs_point_s** %psbpt, align 8, !tbaa !1
  %tobool72 = icmp ne %struct.gs_point_s* %71, null
  %cond = select i1 %tobool72, i32 6, i32 4
  %call73 = call i32 @type1_continue_dispatch(%struct.gs_context_state_s* %69, %struct.gs_type1exec_state_s* %cxs, %struct.ref_s* %70, %struct.ref_s* %other_subr, i32 %cond) #4
  store i32 %call73, i32* %code, align 4, !tbaa !5
  %72 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack74 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %72, i32 0, i32 26
  %stack75 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack74, i32 0, i32 0
  %p76 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack75, i32 0, i32 0
  %73 = load %struct.ref_s*, %struct.ref_s** %p76, align 8, !tbaa !7
  store %struct.ref_s* %73, %struct.ref_s** %op, align 8, !tbaa !1
  %74 = load i32, i32* %code, align 4, !tbaa !5
  switch i32 %74, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb.84
    i32 1, label %sw.bb.102
  ]

sw.bb:                                            ; preds = %icont
  %75 = load %struct.gs_point_s*, %struct.gs_point_s** %psbpt, align 8, !tbaa !1
  %tobool77 = icmp ne %struct.gs_point_s* %75, null
  br i1 %tobool77, label %if.then.78, label %if.end.83

if.then.78:                                       ; preds = %sw.bb
  %76 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack79 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %76, i32 0, i32 26
  %stack80 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack79, i32 0, i32 0
  %p81 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack80, i32 0, i32 0
  %77 = load %struct.ref_s*, %struct.ref_s** %p81, align 8, !tbaa !7
  %add.ptr82 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %77, i64 -2
  store %struct.ref_s* %add.ptr82, %struct.ref_s** %p81, align 8, !tbaa !7
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.78, %sw.bb
  %78 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %cont.addr, align 8, !tbaa !1
  %79 = load i32 (%struct.gs_context_state_s*)**, i32 (%struct.gs_context_state_s*)*** %exec_cont.addr, align 8, !tbaa !1
  store i32 (%struct.gs_context_state_s*)* %78, i32 (%struct.gs_context_state_s*)** %79, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.103

sw.bb.84:                                         ; preds = %icont
  %80 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack85 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %80, i32 0, i32 25
  %stack86 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack85, i32 0, i32 0
  %p87 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack86, i32 0, i32 0
  %81 = load %struct.ref_s*, %struct.ref_s** %p87, align 8, !tbaa !62
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %81, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %p87, align 8, !tbaa !62
  %82 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %cont.addr, align 8, !tbaa !1
  %83 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack88 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %83, i32 0, i32 25
  %stack89 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack88, i32 0, i32 0
  %p90 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack89, i32 0, i32 0
  %84 = load %struct.ref_s*, %struct.ref_s** %p90, align 8, !tbaa !62
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %84, i32 0, i32 1
  %opproc = bitcast %union.v* %value to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* %82, i32 (%struct.gs_context_state_s*)** %opproc, align 8, !tbaa !1
  %85 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack91 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %85, i32 0, i32 25
  %stack92 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack91, i32 0, i32 0
  %p93 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack92, i32 0, i32 0
  %86 = load %struct.ref_s*, %struct.ref_s** %p93, align 8, !tbaa !62
  %tas94 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %86, i32 0, i32 0
  %type_attrs95 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas94, i32 0, i32 0
  store i16 3968, i16* %type_attrs95, align 2, !tbaa !64
  %87 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack96 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %87, i32 0, i32 25
  %stack97 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack96, i32 0, i32 0
  %p98 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack97, i32 0, i32 0
  %88 = load %struct.ref_s*, %struct.ref_s** %p98, align 8, !tbaa !62
  %tas99 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %88, i32 0, i32 0
  %rsize100 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas99, i32 0, i32 2
  store i32 0, i32* %rsize100, align 4, !tbaa !66
  %89 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call101 = call i32 @type1_call_OtherSubr(%struct.gs_context_state_s* %89, %struct.gs_type1exec_state_s* %cxs, i32 (%struct.gs_context_state_s*)* @bbox_continue, %struct.ref_s* %other_subr) #4
  store i32 %call101, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.103

sw.bb.102:                                        ; preds = %icont
  store %struct.ref_s* null, %struct.ref_s** %opstr, align 8, !tbaa !1
  br label %icont

sw.default:                                       ; preds = %icont
  %90 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %90, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.103

cleanup.103:                                      ; preds = %sw.default, %sw.bb.84, %if.end.83, %cleanup.68, %if.then.34, %if.then.29, %if.then.21, %if.then.10, %if.then.6
  %91 = bitcast %struct.ref_s* %other_subr to i8*
  call void @llvm.lifetime.end(i64 16, i8* %91) #1
  %92 = bitcast %struct.ref_s** %opstr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %92) #1
  %93 = bitcast %struct.ref_s** %opc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %93) #1
  %94 = bitcast %struct.gs_point_s** %psbpt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %94) #1
  %95 = bitcast %struct.gs_point_s* %sbpt to i8*
  call void @llvm.lifetime.end(i64 16, i8* %95) #1
  %96 = bitcast [2 x double]* %sbxy to i8*
  call void @llvm.lifetime.end(i64 16, i8* %96) #1
  %97 = bitcast %struct.gs_type1_state_s** %pcis to i8*
  call void @llvm.lifetime.end(i64 8, i8* %97) #1
  %98 = bitcast %struct.gs_type1exec_state_s* %cxs to i8*
  call void @llvm.lifetime.end(i64 11408, i8* %98) #1
  %99 = bitcast %struct.gs_text_enum_s** %penum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %99) #1
  %100 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %100) #1
  %101 = bitcast %struct.gs_font_s** %pfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %101) #1
  %102 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %102) #1
  %103 = load i32, i32* %retval
  ret i32 %103
}

; Function Attrs: nounwind uwtable
define internal i32 @bbox_fill(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %exec_cont = alloca i32 (%struct.gs_context_state_s*)*, align 8
  %code = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast i32 (%struct.gs_context_state_s*)** %exec_cont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store i32 (%struct.gs_context_state_s*)* null, i32 (%struct.gs_context_state_s*)** %exec_cont, align 8, !tbaa !1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @bbox_draw(%struct.gs_context_state_s* %2, i32 (%struct.gs_state_s*)* @gs_fill, i32 (%struct.gs_context_state_s*)** %exec_cont) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %3 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp sge i32 %3, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %exec_cont, align 8, !tbaa !1
  %cmp1 = icmp ne i32 (%struct.gs_context_state_s*)* %4, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %exec_cont, align 8, !tbaa !1
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call2 = call i32 %5(%struct.gs_context_state_s* %6) #4
  store i32 %call2, i32* %code, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %7 = load i32, i32* %code, align 4, !tbaa !5
  %8 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #1
  %9 = bitcast i32 (%struct.gs_context_state_s*)** %exec_cont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #1
  ret i32 %7
}

declare i32 @num_params(%struct.ref_s*, i32, double*) #2

; Function Attrs: nounwind uwtable
define internal i32 @bbox_draw(%struct.gs_context_state_s* %i_ctx_p, i32 (%struct.gs_state_s*)* %draw, i32 (%struct.gs_context_state_s*)** %exec_cont) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %draw.addr = alloca i32 (%struct.gs_state_s*)*, align 8
  %exec_cont.addr = alloca i32 (%struct.gs_context_state_s*)**, align 8
  %op = alloca %struct.ref_s*, align 8
  %bbox = alloca %struct.gs_rect_s, align 8
  %pfont = alloca %struct.gs_font_s*, align 8
  %penum = alloca %struct.gs_text_enum_s*, align 8
  %pbfont = alloca %struct.gs_font_base_s*, align 8
  %pfont1 = alloca %struct.gs_font_type1_s*, align 8
  %cxs = alloca %struct.gs_type1exec_state_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %width = alloca float, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store i32 (%struct.gs_state_s*)* %draw, i32 (%struct.gs_state_s*)** %draw.addr, align 8, !tbaa !1
  store i32 (%struct.gs_context_state_s*)** %exec_cont, i32 (%struct.gs_context_state_s*)*** %exec_cont.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !7
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.gs_rect_s* %bbox to i8*
  call void @llvm.lifetime.start(i64 32, i8* %3) #1
  %4 = bitcast %struct.gs_font_s** %pfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast %struct.gs_text_enum_s** %penum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast %struct.gs_font_base_s** %pbfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast %struct.gs_font_type1_s** %pfont1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast %struct.gs_type1exec_state_s* %cxs to i8*
  call void @llvm.lifetime.start(i64 11408, i8* %8) #1
  %9 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %10, i32 0, i32 0
  %11 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !27
  %in_cachedevice = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %11, i32 0, i32 74
  %12 = load i32, i32* %in_cachedevice, align 4, !tbaa !28
  %cmp = icmp ult i32 %12, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %13 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %14 = load i32 (%struct.gs_state_s*)*, i32 (%struct.gs_state_s*)** %draw.addr, align 8, !tbaa !1
  %call = call i32 @nobbox_draw(%struct.gs_context_state_s* %13, i32 (%struct.gs_state_s*)* %14) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %15 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i64 -3
  %call1 = call i32 @font_param(%struct.ref_s* %add.ptr, %struct.gs_font_s** %pfont) #4
  store i32 %call1, i32* %code, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %16 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %17 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call5 = call %struct.gs_text_enum_s* @op_show_find(%struct.gs_context_state_s* %17) #4
  store %struct.gs_text_enum_s* %call5, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %18 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %cmp6 = icmp eq %struct.gs_text_enum_s* %18, null
  br i1 %cmp6, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.4
  %19 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %call7 = call i32 @font_uses_charstrings(%struct.gs_font_s* %19) #4
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %lor.lhs.false, %if.end.4
  store i32 -21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %lor.lhs.false
  %20 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs10 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %20, i32 0, i32 0
  %21 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs10, align 8, !tbaa !27
  %call11 = call i32 @gs_upathbbox(%struct.gs_state_s* %21, %struct.gs_rect_s* %bbox, i32 0) #4
  store i32 %call11, i32* %code, align 4, !tbaa !5
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.then.13, label %if.end.23

if.then.13:                                       ; preds = %if.end.9
  %22 = load i32, i32* %code, align 4, !tbaa !5
  %cmp14 = icmp eq i32 %22, -23
  br i1 %cmp14, label %if.then.15, label %if.end.22

if.then.15:                                       ; preds = %if.then.13
  %23 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack16 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %23, i32 0, i32 26
  %stack17 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack16, i32 0, i32 0
  %p18 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack17, i32 0, i32 0
  %24 = load %struct.ref_s*, %struct.ref_s** %p18, align 8, !tbaa !7
  %add.ptr19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i64 -4
  store %struct.ref_s* %add.ptr19, %struct.ref_s** %p18, align 8, !tbaa !7
  %25 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs20 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %25, i32 0, i32 0
  %26 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs20, align 8, !tbaa !27
  %call21 = call i32 @gs_newpath(%struct.gs_state_s* %26) #4
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.22:                                        ; preds = %if.then.13
  %27 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %27, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.23:                                        ; preds = %if.end.9
  %28 = load i32 (%struct.gs_state_s*)*, i32 (%struct.gs_state_s*)** %draw.addr, align 8, !tbaa !1
  %cmp24 = icmp eq i32 (%struct.gs_state_s*)* %28, @gs_stroke
  br i1 %cmp24, label %if.then.25, label %if.end.40

if.then.25:                                       ; preds = %if.end.23
  %29 = bitcast float* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #1
  %30 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs26 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %30, i32 0, i32 0
  %31 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs26, align 8, !tbaa !27
  %call27 = call float @gs_currentlinewidth(%struct.gs_state_s* %31) #4
  %conv = fpext float %call27 to double
  %mul = fmul double %conv, 1.414220e+00
  %conv28 = fptrunc double %mul to float
  store float %conv28, float* %width, align 4, !tbaa !103
  %32 = load float, float* %width, align 4, !tbaa !103
  %conv29 = fpext float %32 to double
  %p30 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p30, i32 0, i32 0
  %33 = load double, double* %x, align 8, !tbaa !57
  %sub = fsub double %33, %conv29
  store double %sub, double* %x, align 8, !tbaa !57
  %34 = load float, float* %width, align 4, !tbaa !103
  %conv31 = fpext float %34 to double
  %p32 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p32, i32 0, i32 1
  %35 = load double, double* %y, align 8, !tbaa !59
  %sub33 = fsub double %35, %conv31
  store double %sub33, double* %y, align 8, !tbaa !59
  %36 = load float, float* %width, align 4, !tbaa !103
  %conv34 = fpext float %36 to double
  %q = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 1
  %x35 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q, i32 0, i32 0
  %37 = load double, double* %x35, align 8, !tbaa !55
  %add = fadd double %37, %conv34
  store double %add, double* %x35, align 8, !tbaa !55
  %38 = load float, float* %width, align 4, !tbaa !103
  %conv36 = fpext float %38 to double
  %q37 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 1
  %y38 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q37, i32 0, i32 1
  %39 = load double, double* %y38, align 8, !tbaa !58
  %add39 = fadd double %39, %conv36
  store double %add39, double* %y38, align 8, !tbaa !58
  %40 = bitcast float* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.25, %if.end.23
  %41 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %42 = bitcast %struct.gs_font_s* %41 to %struct.gs_font_base_s*
  store %struct.gs_font_base_s* %42, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %q41 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 1
  %y42 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q41, i32 0, i32 1
  %43 = load double, double* %y42, align 8, !tbaa !58
  %44 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FontBBox = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %44, i32 0, i32 23
  %q43 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox, i32 0, i32 1
  %y44 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q43, i32 0, i32 1
  %45 = load double, double* %y44, align 8, !tbaa !173
  %cmp45 = fcmp ole double %43, %45
  br i1 %cmp45, label %land.lhs.true, label %if.end.72

land.lhs.true:                                    ; preds = %if.end.40
  %q47 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 1
  %x48 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q47, i32 0, i32 0
  %46 = load double, double* %x48, align 8, !tbaa !55
  %47 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FontBBox49 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %47, i32 0, i32 23
  %q50 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox49, i32 0, i32 1
  %x51 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q50, i32 0, i32 0
  %48 = load double, double* %x51, align 8, !tbaa !174
  %cmp52 = fcmp ole double %46, %48
  br i1 %cmp52, label %land.lhs.true.54, label %if.end.72

land.lhs.true.54:                                 ; preds = %land.lhs.true
  %p55 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 0
  %y56 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p55, i32 0, i32 1
  %49 = load double, double* %y56, align 8, !tbaa !59
  %50 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FontBBox57 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %50, i32 0, i32 23
  %p58 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox57, i32 0, i32 0
  %y59 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p58, i32 0, i32 1
  %51 = load double, double* %y59, align 8, !tbaa !175
  %cmp60 = fcmp oge double %49, %51
  br i1 %cmp60, label %land.lhs.true.62, label %if.end.72

land.lhs.true.62:                                 ; preds = %land.lhs.true.54
  %p63 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 0
  %x64 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p63, i32 0, i32 0
  %52 = load double, double* %x64, align 8, !tbaa !57
  %53 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FontBBox65 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %53, i32 0, i32 23
  %p66 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox65, i32 0, i32 0
  %x67 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p66, i32 0, i32 0
  %54 = load double, double* %x67, align 8, !tbaa !176
  %cmp68 = fcmp oge double %52, %54
  br i1 %cmp68, label %if.then.70, label %if.end.72

if.then.70:                                       ; preds = %land.lhs.true.62
  %55 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %56 = load i32 (%struct.gs_state_s*)*, i32 (%struct.gs_state_s*)** %draw.addr, align 8, !tbaa !1
  %call71 = call i32 @nobbox_draw(%struct.gs_context_state_s* %55, i32 (%struct.gs_state_s*)* %56) #4
  store i32 %call71, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.72:                                        ; preds = %land.lhs.true.62, %land.lhs.true.54, %land.lhs.true, %if.end.40
  br label %do.body

do.body:                                          ; preds = %if.end.72
  %p73 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 0
  %x74 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p73, i32 0, i32 0
  %57 = load double, double* %x74, align 8, !tbaa !57
  %58 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FontBBox75 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %58, i32 0, i32 23
  %p76 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox75, i32 0, i32 0
  %x77 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p76, i32 0, i32 0
  %59 = load double, double* %x77, align 8, !tbaa !176
  %cmp78 = fcmp olt double %57, %59
  br i1 %cmp78, label %if.then.80, label %if.end.86

if.then.80:                                       ; preds = %do.body
  %p81 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 0
  %x82 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p81, i32 0, i32 0
  %60 = load double, double* %x82, align 8, !tbaa !57
  %61 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FontBBox83 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %61, i32 0, i32 23
  %p84 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox83, i32 0, i32 0
  %x85 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p84, i32 0, i32 0
  store double %60, double* %x85, align 8, !tbaa !176
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.80, %do.body
  %q87 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 1
  %x88 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q87, i32 0, i32 0
  %62 = load double, double* %x88, align 8, !tbaa !55
  %63 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FontBBox89 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %63, i32 0, i32 23
  %q90 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox89, i32 0, i32 1
  %x91 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q90, i32 0, i32 0
  %64 = load double, double* %x91, align 8, !tbaa !174
  %cmp92 = fcmp ogt double %62, %64
  br i1 %cmp92, label %if.then.94, label %if.end.100

if.then.94:                                       ; preds = %if.end.86
  %q95 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 1
  %x96 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q95, i32 0, i32 0
  %65 = load double, double* %x96, align 8, !tbaa !55
  %66 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FontBBox97 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %66, i32 0, i32 23
  %q98 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox97, i32 0, i32 1
  %x99 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q98, i32 0, i32 0
  store double %65, double* %x99, align 8, !tbaa !174
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.94, %if.end.86
  %p101 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 0
  %y102 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p101, i32 0, i32 1
  %67 = load double, double* %y102, align 8, !tbaa !59
  %68 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FontBBox103 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %68, i32 0, i32 23
  %p104 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox103, i32 0, i32 0
  %y105 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p104, i32 0, i32 1
  %69 = load double, double* %y105, align 8, !tbaa !175
  %cmp106 = fcmp olt double %67, %69
  br i1 %cmp106, label %if.then.108, label %if.end.114

if.then.108:                                      ; preds = %if.end.100
  %p109 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 0
  %y110 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p109, i32 0, i32 1
  %70 = load double, double* %y110, align 8, !tbaa !59
  %71 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FontBBox111 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %71, i32 0, i32 23
  %p112 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox111, i32 0, i32 0
  %y113 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p112, i32 0, i32 1
  store double %70, double* %y113, align 8, !tbaa !175
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.108, %if.end.100
  %q115 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 1
  %y116 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q115, i32 0, i32 1
  %72 = load double, double* %y116, align 8, !tbaa !58
  %73 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FontBBox117 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %73, i32 0, i32 23
  %q118 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox117, i32 0, i32 1
  %y119 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q118, i32 0, i32 1
  %74 = load double, double* %y119, align 8, !tbaa !173
  %cmp120 = fcmp ogt double %72, %74
  br i1 %cmp120, label %if.then.122, label %if.end.128

if.then.122:                                      ; preds = %if.end.114
  %q123 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 1
  %y124 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q123, i32 0, i32 1
  %75 = load double, double* %y124, align 8, !tbaa !58
  %76 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FontBBox125 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %76, i32 0, i32 23
  %q126 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox125, i32 0, i32 1
  %y127 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q126, i32 0, i32 1
  store double %75, double* %y127, align 8, !tbaa !173
  br label %if.end.128

if.end.128:                                       ; preds = %if.then.122, %if.end.114
  br label %do.cond

do.cond:                                          ; preds = %if.end.128
  br label %do.end

do.end:                                           ; preds = %do.cond
  %77 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %call129 = call i32 @gs_text_retry(%struct.gs_text_enum_s* %77) #4
  %78 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %79 = bitcast %struct.gs_font_s* %78 to %struct.gs_font_type1_s*
  store %struct.gs_font_type1_s* %79, %struct.gs_font_type1_s** %pfont1, align 8, !tbaa !1
  %80 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %FontBBox_as_Metrics2 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %80, i32 0, i32 23
  %x130 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %FontBBox_as_Metrics2, i32 0, i32 0
  %81 = load double, double* %x130, align 8, !tbaa !71
  %cmp131 = fcmp oeq double %81, 0.000000e+00
  br i1 %cmp131, label %land.lhs.true.133, label %lor.lhs.false.138

land.lhs.true.133:                                ; preds = %do.end
  %82 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %FontBBox_as_Metrics2134 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %82, i32 0, i32 23
  %y135 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %FontBBox_as_Metrics2134, i32 0, i32 1
  %83 = load double, double* %y135, align 8, !tbaa !72
  %cmp136 = fcmp oeq double %83, 0.000000e+00
  br i1 %cmp136, label %if.then.143, label %lor.lhs.false.138

lor.lhs.false.138:                                ; preds = %land.lhs.true.133, %do.end
  %84 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs139 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %84, i32 0, i32 0
  %85 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs139, align 8, !tbaa !27
  %call140 = call %struct.gs_font_s* @gs_rootfont(%struct.gs_state_s* %85) #4
  %WMode = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %call140, i32 0, i32 16
  %86 = load i32, i32* %WMode, align 4, !tbaa !73
  %cmp141 = icmp eq i32 %86, 0
  br i1 %cmp141, label %if.then.143, label %if.else

if.then.143:                                      ; preds = %lor.lhs.false.138, %land.lhs.true.133
  %87 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %88 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr144 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %88, i64 -1
  %sbw = getelementptr inbounds %struct.gs_type1exec_state_s, %struct.gs_type1exec_state_s* %cxs, i32 0, i32 2
  %arraydecay = getelementptr inbounds [4 x double], [4 x double]* %sbw, i32 0, i32 0
  %call145 = call i32 @zchar_get_metrics(%struct.gs_font_base_s* %87, %struct.ref_s* %add.ptr144, double* %arraydecay) #4
  store i32 %call145, i32* %code, align 4, !tbaa !5
  %89 = load i32, i32* %code, align 4, !tbaa !5
  %cmp146 = icmp slt i32 %89, 0
  br i1 %cmp146, label %if.then.148, label %if.end.149

if.then.148:                                      ; preds = %if.then.143
  %90 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %90, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.149:                                       ; preds = %if.then.143
  %91 = load i32, i32* %code, align 4, !tbaa !5
  %present = getelementptr inbounds %struct.gs_type1exec_state_s, %struct.gs_type1exec_state_s* %cxs, i32 0, i32 3
  store i32 %91, i32* %present, align 4, !tbaa !74
  %use_FontBBox_as_Metrics2 = getelementptr inbounds %struct.gs_type1exec_state_s, %struct.gs_type1exec_state_s* %cxs, i32 0, i32 5
  store i32 0, i32* %use_FontBBox_as_Metrics2, align 4, !tbaa !82
  br label %if.end.166

if.else:                                          ; preds = %lor.lhs.false.138
  %92 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %FontBBox_as_Metrics2150 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %92, i32 0, i32 23
  %x151 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %FontBBox_as_Metrics2150, i32 0, i32 0
  %93 = load double, double* %x151, align 8, !tbaa !71
  %div = fdiv double %93, 2.000000e+00
  %sbw152 = getelementptr inbounds %struct.gs_type1exec_state_s, %struct.gs_type1exec_state_s* %cxs, i32 0, i32 2
  %arrayidx = getelementptr inbounds [4 x double], [4 x double]* %sbw152, i32 0, i64 0
  store double %div, double* %arrayidx, align 8, !tbaa !52
  %94 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %FontBBox_as_Metrics2153 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %94, i32 0, i32 23
  %y154 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %FontBBox_as_Metrics2153, i32 0, i32 1
  %95 = load double, double* %y154, align 8, !tbaa !72
  %sbw155 = getelementptr inbounds %struct.gs_type1exec_state_s, %struct.gs_type1exec_state_s* %cxs, i32 0, i32 2
  %arrayidx156 = getelementptr inbounds [4 x double], [4 x double]* %sbw155, i32 0, i64 1
  store double %95, double* %arrayidx156, align 8, !tbaa !52
  %sbw157 = getelementptr inbounds %struct.gs_type1exec_state_s, %struct.gs_type1exec_state_s* %cxs, i32 0, i32 2
  %arrayidx158 = getelementptr inbounds [4 x double], [4 x double]* %sbw157, i32 0, i64 2
  store double 0.000000e+00, double* %arrayidx158, align 8, !tbaa !52
  %96 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %FontBBox_as_Metrics2159 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %96, i32 0, i32 23
  %x160 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %FontBBox_as_Metrics2159, i32 0, i32 0
  %97 = load double, double* %x160, align 8, !tbaa !71
  %sub161 = fsub double -0.000000e+00, %97
  %sbw162 = getelementptr inbounds %struct.gs_type1exec_state_s, %struct.gs_type1exec_state_s* %cxs, i32 0, i32 2
  %arrayidx163 = getelementptr inbounds [4 x double], [4 x double]* %sbw162, i32 0, i64 3
  store double %sub161, double* %arrayidx163, align 8, !tbaa !52
  %use_FontBBox_as_Metrics2164 = getelementptr inbounds %struct.gs_type1exec_state_s, %struct.gs_type1exec_state_s* %cxs, i32 0, i32 5
  store i32 1, i32* %use_FontBBox_as_Metrics2164, align 4, !tbaa !82
  %present165 = getelementptr inbounds %struct.gs_type1exec_state_s, %struct.gs_type1exec_state_s* %cxs, i32 0, i32 3
  store i32 2, i32* %present165, align 4, !tbaa !74
  br label %if.end.166

if.end.166:                                       ; preds = %if.else, %if.end.149
  %cis = getelementptr inbounds %struct.gs_type1exec_state_s, %struct.gs_type1exec_state_s* %cxs, i32 0, i32 0
  %98 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %99 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs167 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %99, i32 0, i32 0
  %100 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs167, align 8, !tbaa !27
  %101 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont1, align 8, !tbaa !1
  %call168 = call i32 @type1_exec_init(%struct.gs_type1_state_s* %cis, %struct.gs_text_enum_s* %98, %struct.gs_state_s* %100, %struct.gs_font_type1_s* %101) #4
  store i32 %call168, i32* %code, align 4, !tbaa !5
  %102 = load i32, i32* %code, align 4, !tbaa !5
  %cmp169 = icmp slt i32 %102, 0
  br i1 %cmp169, label %if.then.171, label %if.end.172

if.then.171:                                      ; preds = %if.end.166
  %103 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %103, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.172:                                       ; preds = %if.end.166
  %char_bbox = getelementptr inbounds %struct.gs_type1exec_state_s, %struct.gs_type1exec_state_s* %cxs, i32 0, i32 4
  %104 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont1, align 8, !tbaa !1
  %FontBBox173 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %104, i32 0, i32 23
  %105 = bitcast %struct.gs_rect_s* %char_bbox to i8*
  %106 = bitcast %struct.gs_rect_s* %FontBBox173 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %105, i8* %106, i64 32, i32 8, i1 false), !tbaa.struct !51
  %107 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %108 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %109 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %110 = load i32 (%struct.gs_context_state_s*)**, i32 (%struct.gs_context_state_s*)*** %exec_cont.addr, align 8, !tbaa !1
  %call174 = call i32 @type1exec_bbox(%struct.gs_context_state_s* %107, %struct.gs_text_enum_s* %108, %struct.gs_type1exec_state_s* %cxs, %struct.gs_font_s* %109, i32 (%struct.gs_context_state_s*)** %110) #4
  store i32 %call174, i32* %code, align 4, !tbaa !5
  %111 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %111, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.172, %if.then.171, %if.then.148, %if.then.70, %if.end.22, %if.then.15, %if.then.8, %if.then.3, %if.then
  %112 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %112) #1
  %113 = bitcast %struct.gs_type1exec_state_s* %cxs to i8*
  call void @llvm.lifetime.end(i64 11408, i8* %113) #1
  %114 = bitcast %struct.gs_font_type1_s** %pfont1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %114) #1
  %115 = bitcast %struct.gs_font_base_s** %pbfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %115) #1
  %116 = bitcast %struct.gs_text_enum_s** %penum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %116) #1
  %117 = bitcast %struct.gs_font_s** %pfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %117) #1
  %118 = bitcast %struct.gs_rect_s* %bbox to i8*
  call void @llvm.lifetime.end(i64 32, i8* %118) #1
  %119 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %119) #1
  %120 = load i32, i32* %retval
  ret i32 %120
}

declare i32 @gs_fill(%struct.gs_state_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @nobbox_draw(%struct.gs_context_state_s* %i_ctx_p, i32 (%struct.gs_state_s*)* %draw) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %draw.addr = alloca i32 (%struct.gs_state_s*)*, align 8
  %code = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store i32 (%struct.gs_state_s*)* %draw, i32 (%struct.gs_state_s*)** %draw.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32 (%struct.gs_state_s*)*, i32 (%struct.gs_state_s*)** %draw.addr, align 8, !tbaa !1
  %2 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %2, i32 0, i32 0
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !27
  %call = call i32 %1(%struct.gs_state_s* %3) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %4 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp sge i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %5, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %6 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !7
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 -4
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p, align 8, !tbaa !7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32, i32* %code, align 4, !tbaa !5
  %8 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #1
  ret i32 %7
}

declare i32 @gs_stroke(%struct.gs_state_s*) #2

declare float @gs_currentlinewidth(%struct.gs_state_s*) #2

declare i32 @gs_text_retry(%struct.gs_text_enum_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @bbox_stroke(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %exec_cont = alloca i32 (%struct.gs_context_state_s*)*, align 8
  %code = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast i32 (%struct.gs_context_state_s*)** %exec_cont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store i32 (%struct.gs_context_state_s*)* null, i32 (%struct.gs_context_state_s*)** %exec_cont, align 8, !tbaa !1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @bbox_draw(%struct.gs_context_state_s* %2, i32 (%struct.gs_state_s*)* @gs_stroke, i32 (%struct.gs_context_state_s*)** %exec_cont) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %3 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp sge i32 %3, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %exec_cont, align 8, !tbaa !1
  %cmp1 = icmp ne i32 (%struct.gs_context_state_s*)* %4, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %exec_cont, align 8, !tbaa !1
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call2 = call i32 %5(%struct.gs_context_state_s* %6) #4
  store i32 %call2, i32* %code, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %7 = load i32, i32* %code, align 4, !tbaa !5
  %8 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #1
  %9 = bitcast i32 (%struct.gs_context_state_s*)** %exec_cont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #1
  ret i32 %7
}

declare i32 @process_float_array(%struct.gs_memory_s*, %struct.ref_s*, i32, float*) #2

declare i64 @gs_c_known_encode(i64, i32) #2

declare i32 @gs_c_glyph_name(i64, %struct.gs_const_string_s*) #2

declare i32 @names_ref(%struct.name_table_s*, i8*, i32, %struct.ref_s*, i32) #2

declare i32 @names_index(%struct.name_table_s*, %struct.ref_s*) #2

declare i32 @real_param(%struct.ref_s*, double*) #2

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
!7 = !{!8, !2, i64 624}
!8 = !{!"gs_context_state_s", !2, i64 0, !9, i64 8, !6, i64 80, !11, i64 88, !11, i64 104, !14, i64 120, !14, i64 128, !14, i64 136, !6, i64 144, !6, i64 148, !11, i64 152, !11, i64 168, !6, i64 184, !6, i64 188, !6, i64 192, !6, i64 196, !2, i64 200, !3, i64 208, !2, i64 256, !15, i64 264, !15, i64 304, !2, i64 344, !6, i64 352, !2, i64 360, !16, i64 368, !18, i64 520, !19, i64 624, !2, i64 720}
!9 = !{!"gs_dual_memory_s", !2, i64 0, !10, i64 8, !6, i64 48, !2, i64 56, !6, i64 64, !6, i64 68}
!10 = !{!"vm_spaces_s", !2, i64 0, !3, i64 8}
!11 = !{!"ref_s", !12, i64 0, !3, i64 8}
!12 = !{!"tas_s", !13, i64 0, !13, i64 2, !6, i64 4}
!13 = !{!"short", !3, i64 0}
!14 = !{!"long", !3, i64 0}
!15 = !{!"op_array_table_s", !11, i64 0, !2, i64 16, !6, i64 24, !6, i64 28, !6, i64 32}
!16 = !{!"dict_stack_s", !17, i64 0, !6, i64 96, !6, i64 100, !6, i64 104, !2, i64 112, !6, i64 120, !2, i64 128, !11, i64 136}
!17 = !{!"ref_stack_s", !2, i64 0, !2, i64 8, !2, i64 16, !11, i64 24, !6, i64 40, !6, i64 44, !11, i64 48, !6, i64 64, !6, i64 68, !6, i64 72, !2, i64 80, !2, i64 88}
!18 = !{!"exec_stack_s", !17, i64 0, !2, i64 96}
!19 = !{!"op_stack_s", !17, i64 0}
!20 = !{!21, !3, i64 128}
!21 = !{!"gs_font_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !6, i64 32, !22, i64 40, !14, i64 56, !2, i64 64, !2, i64 72, !23, i64 80, !23, i64 104, !3, i64 128, !6, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !6, i64 148, !6, i64 152, !24, i64 156, !6, i64 160, !25, i64 168, !26, i64 272, !26, i64 324}
!22 = !{!"gs_notify_list_s", !2, i64 0, !2, i64 8}
!23 = !{!"gs_matrix_s", !24, i64 0, !24, i64 4, !24, i64 8, !24, i64 12, !24, i64 16, !24, i64 20}
!24 = !{!"float", !3, i64 0}
!25 = !{!"gs_font_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96}
!26 = !{!"gs_font_name_s", !3, i64 0, !6, i64 48}
!27 = !{!8, !2, i64 0}
!28 = !{!29, !3, i64 1848}
!29 = !{!"gs_state_s", !6, i64 0, !2, i64 8, !2, i64 16, !30, i64 24, !6, i64 128, !32, i64 132, !6, i64 168, !33, i64 176, !33, i64 192, !6, i64 208, !6, i64 212, !13, i64 216, !3, i64 220, !35, i64 224, !35, i64 228, !36, i64 232, !14, i64 240, !6, i64 248, !6, i64 252, !6, i64 256, !2, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !24, i64 296, !37, i64 300, !6, i64 308, !6, i64 312, !6, i64 316, !24, i64 320, !6, i64 324, !6, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !6, i64 408, !2, i64 416, !2, i64 424, !38, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !39, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !39, i64 1336, !2, i64 1616, !23, i64 1624, !6, i64 1648, !23, i64 1652, !6, i64 1676, !2, i64 1680, !2, i64 1688, !2, i64 1696, !2, i64 1704, !14, i64 1712, !14, i64 1720, !2, i64 1728, !6, i64 1736, !3, i64 1744, !2, i64 1792, !2, i64 1800, !32, i64 1808, !6, i64 1844, !3, i64 1848, !3, i64 1852, !2, i64 1856, !6, i64 1864, !2, i64 1872, !2, i64 1880, !40, i64 1888}
!30 = !{!"gx_line_params_s", !24, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !6, i64 20, !24, i64 24, !24, i64 28, !24, i64 32, !6, i64 36, !23, i64 40, !31, i64 64}
!31 = !{!"gx_dash_params_s", !2, i64 0, !6, i64 8, !24, i64 12, !6, i64 16, !24, i64 20, !6, i64 24, !6, i64 28, !24, i64 32}
!32 = !{!"gs_matrix_fixed_s", !24, i64 0, !24, i64 4, !24, i64 8, !24, i64 12, !24, i64 16, !24, i64 20, !6, i64 24, !6, i64 28, !6, i64 32}
!33 = !{!"gs_point_s", !34, i64 0, !34, i64 8}
!34 = !{!"double", !3, i64 0}
!35 = !{!"gs_transparency_source_s", !24, i64 0}
!36 = !{!"gs_xstate_trans_flags", !6, i64 0, !6, i64 4}
!37 = !{!"gs_fixed_point_s", !6, i64 0, !6, i64 4}
!38 = !{!"gx_transfer_s", !6, i64 0, !2, i64 8, !6, i64 16, !2, i64 24, !6, i64 32, !2, i64 40, !6, i64 48, !2, i64 56}
!39 = !{!"gs_devicen_color_map_s", !6, i64 0, !3, i64 4, !6, i64 8, !6, i64 12, !14, i64 16, !3, i64 24}
!40 = !{!"gs_state_client_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!41 = !{!42, !2, i64 600}
!42 = !{!"gs_show_enum_s", !43, i64 0, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !44, i64 160, !2, i64 184, !2, i64 192, !14, i64 200, !6, i64 208, !45, i64 212, !2, i64 224, !6, i64 232, !6, i64 236, !46, i64 240, !6, i64 344, !6, i64 348, !6, i64 352, !33, i64 360, !14, i64 376, !6, i64 384, !45, i64 388, !33, i64 400, !47, i64 416, !6, i64 448, !2, i64 456, !6, i64 464, !3, i64 468, !2, i64 472, !6, i64 480, !48, i64 484, !48, i64 500, !6, i64 516, !6, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !37, i64 560, !33, i64 568, !6, i64 584, !37, i64 588, !2, i64 600, !3, i64 608, !2, i64 616}
!43 = !{!"gs_text_params_s", !6, i64 0, !3, i64 8, !6, i64 16, !33, i64 24, !33, i64 40, !3, i64 56, !2, i64 64, !2, i64 72, !6, i64 80}
!44 = !{!"rc_header_s", !14, i64 0, !2, i64 8, !2, i64 16}
!45 = !{!"gs_log2_scale_point_s", !6, i64 0, !6, i64 4}
!46 = !{!"gx_font_stack_s", !6, i64 0, !3, i64 8}
!47 = !{!"gs_text_returned_s", !14, i64 0, !14, i64 8, !33, i64 16}
!48 = !{!"gs_int_rect_s", !49, i64 0, !49, i64 8}
!49 = !{!"gs_int_point_s", !6, i64 0, !6, i64 4}
!50 = !{!21, !2, i64 24}
!51 = !{i64 0, i64 8, !52, i64 8, i64 8, !52, i64 16, i64 8, !52, i64 24, i64 8, !52}
!52 = !{!34, !34, i64 0}
!53 = !{!54, !2, i64 192}
!54 = !{!"gs_text_enum_s", !43, i64 0, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !44, i64 160, !2, i64 184, !2, i64 192, !14, i64 200, !6, i64 208, !45, i64 212, !2, i64 224, !6, i64 232, !6, i64 236, !46, i64 240, !6, i64 344, !6, i64 348, !6, i64 352, !33, i64 360, !14, i64 376, !6, i64 384, !45, i64 388, !33, i64 400, !47, i64 416}
!55 = !{!56, !34, i64 16}
!56 = !{!"gs_rect_s", !33, i64 0, !33, i64 16}
!57 = !{!56, !34, i64 0}
!58 = !{!56, !34, i64 24}
!59 = !{!56, !34, i64 8}
!60 = !{!21, !6, i64 152}
!61 = !{!21, !24, i64 156}
!62 = !{!8, !2, i64 520}
!63 = !{!8, !2, i64 536}
!64 = !{!11, !13, i64 0}
!65 = !{!3, !3, i64 0}
!66 = !{!11, !6, i64 4}
!67 = !{!68, !6, i64 64}
!68 = !{!"gs_type1_data_s", !69, i64 0, !2, i64 40, !2, i64 48, !2, i64 56, !6, i64 64, !6, i64 68, !6, i64 72, !14, i64 80, !6, i64 88, !6, i64 92, !6, i64 96, !24, i64 100, !24, i64 104, !70, i64 108, !24, i64 168, !6, i64 172, !70, i64 176, !70, i64 236, !6, i64 280, !70, i64 284, !6, i64 328, !70, i64 332, !70, i64 340, !70, i64 348, !70, i64 400, !70, i64 452, !3, i64 520, !6, i64 536}
!69 = !{!"gs_type1_data_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32}
!70 = !{!"", !6, i64 0, !3, i64 4}
!71 = !{!54, !34, i64 360}
!72 = !{!54, !34, i64 368}
!73 = !{!21, !6, i64 148}
!74 = !{!75, !6, i64 11256}
!75 = !{!"gs_type1exec_state_s", !76, i64 0, !2, i64 11216, !3, i64 11224, !6, i64 11256, !56, i64 11264, !6, i64 11296, !3, i64 11304, !6, i64 11400, !6, i64 11404}
!76 = !{!"gs_type1_state_s", !77, i64 0, !2, i64 9856, !2, i64 9864, !2, i64 9872, !6, i64 9880, !6, i64 9884, !2, i64 9888, !79, i64 9896, !24, i64 9944, !80, i64 9948, !45, i64 9972, !37, i64 9980, !3, i64 9988, !6, i64 10180, !3, i64 10184, !6, i64 10976, !6, i64 10980, !6, i64 10984, !6, i64 10988, !6, i64 10992, !6, i64 10996, !37, i64 11000, !37, i64 11008, !6, i64 11016, !6, i64 11020, !37, i64 11024, !37, i64 11032, !6, i64 11040, !37, i64 11044, !6, i64 11052, !6, i64 11056, !37, i64 11060, !6, i64 11068, !6, i64 11072, !37, i64 11076, !3, i64 11084}
!77 = !{!"t1_hinter_s", !78, i64 0, !78, i64 24, !6, i64 48, !14, i64 56, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !6, i64 128, !6, i64 132, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !6, i64 180, !6, i64 184, !3, i64 188, !2, i64 5472, !3, i64 5480, !2, i64 7520, !3, i64 7528, !2, i64 7648, !3, i64 7656, !2, i64 7696, !3, i64 7704, !2, i64 7744, !3, i64 7752, !3, i64 7856, !3, i64 7872, !2, i64 7928, !3, i64 7936, !2, i64 8176, !3, i64 8184, !2, i64 9624, !3, i64 9632, !3, i64 9640, !6, i64 9648, !6, i64 9652, !6, i64 9656, !6, i64 9660, !6, i64 9664, !6, i64 9668, !6, i64 9672, !6, i64 9676, !6, i64 9680, !6, i64 9684, !6, i64 9688, !6, i64 9692, !6, i64 9696, !6, i64 9700, !6, i64 9704, !6, i64 9708, !6, i64 9712, !6, i64 9716, !6, i64 9720, !6, i64 9724, !6, i64 9728, !6, i64 9732, !6, i64 9736, !34, i64 9744, !34, i64 9752, !34, i64 9760, !34, i64 9768, !34, i64 9776, !34, i64 9784, !6, i64 9792, !6, i64 9796, !6, i64 9800, !6, i64 9804, !6, i64 9808, !6, i64 9812, !6, i64 9816, !6, i64 9820, !6, i64 9824, !6, i64 9828, !6, i64 9832, !6, i64 9836, !2, i64 9840, !2, i64 9848}
!78 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20}
!79 = !{!"", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44}
!80 = !{!"point_scale_s", !81, i64 0, !81, i64 12}
!81 = !{!"pixel_scale_s", !6, i64 0, !6, i64 4, !6, i64 8}
!82 = !{!75, !6, i64 11296}
!83 = !{!23, !24, i64 0}
!84 = !{!23, !24, i64 12}
!85 = !{!23, !24, i64 4}
!86 = !{!23, !24, i64 8}
!87 = !{!75, !34, i64 11264}
!88 = !{!75, !34, i64 11272}
!89 = !{!75, !34, i64 11280}
!90 = !{!75, !34, i64 11288}
!91 = !{!33, !34, i64 0}
!92 = !{!33, !34, i64 8}
!93 = !{!76, !6, i64 11000}
!94 = !{!76, !6, i64 11004}
!95 = !{!76, !6, i64 11008}
!96 = !{!76, !6, i64 11012}
!97 = !{!76, !2, i64 9856}
!98 = !{!99, !6, i64 152}
!99 = !{!"gs_font_base_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !6, i64 32, !22, i64 40, !14, i64 56, !2, i64 64, !2, i64 72, !23, i64 80, !23, i64 104, !3, i64 128, !6, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !6, i64 148, !6, i64 152, !24, i64 156, !6, i64 160, !25, i64 168, !26, i64 272, !26, i64 324, !56, i64 376, !100, i64 408, !2, i64 424, !2, i64 432, !3, i64 440, !3, i64 444}
!100 = !{!"gs_uid_s", !14, i64 0, !2, i64 8}
!101 = !{i64 0, i64 4, !5, i64 4, i64 4, !5, i64 8, i64 4, !5, i64 12, i64 4, !5, i64 16, i64 4, !5, i64 20, i64 4, !5, i64 24, i64 4, !5, i64 28, i64 4, !5, i64 32, i64 4, !5, i64 36, i64 4, !5, i64 40, i64 4, !5, i64 44, i64 4, !5, i64 48, i64 4, !5, i64 56, i64 8, !102, i64 64, i64 4, !5, i64 68, i64 4, !5, i64 72, i64 4, !5, i64 76, i64 4, !5, i64 80, i64 4, !5, i64 84, i64 4, !5, i64 88, i64 4, !5, i64 92, i64 4, !5, i64 96, i64 4, !5, i64 100, i64 4, !5, i64 104, i64 4, !5, i64 108, i64 4, !5, i64 112, i64 4, !5, i64 116, i64 4, !5, i64 120, i64 4, !5, i64 124, i64 4, !5, i64 128, i64 4, !5, i64 132, i64 4, !5, i64 136, i64 4, !5, i64 140, i64 4, !5, i64 144, i64 4, !5, i64 148, i64 4, !5, i64 152, i64 4, !5, i64 156, i64 4, !5, i64 160, i64 4, !5, i64 164, i64 4, !5, i64 168, i64 4, !5, i64 172, i64 4, !5, i64 176, i64 4, !5, i64 180, i64 4, !5, i64 184, i64 4, !5, i64 188, i64 5280, !65, i64 5472, i64 8, !1, i64 5480, i64 2040, !65, i64 7520, i64 8, !1, i64 7528, i64 120, !65, i64 7648, i64 8, !1, i64 7656, i64 40, !65, i64 7696, i64 8, !1, i64 7704, i64 40, !65, i64 7744, i64 8, !1, i64 7752, i64 104, !65, i64 7856, i64 16, !65, i64 7872, i64 52, !65, i64 7928, i64 8, !1, i64 7936, i64 240, !65, i64 8176, i64 8, !1, i64 8184, i64 1440, !65, i64 9624, i64 8, !1, i64 9632, i64 8, !65, i64 9640, i64 8, !65, i64 9648, i64 4, !5, i64 9652, i64 4, !5, i64 9656, i64 4, !5, i64 9660, i64 4, !5, i64 9664, i64 4, !5, i64 9668, i64 4, !5, i64 9672, i64 4, !5, i64 9676, i64 4, !5, i64 9680, i64 4, !5, i64 9684, i64 4, !5, i64 9688, i64 4, !5, i64 9692, i64 4, !5, i64 9696, i64 4, !5, i64 9700, i64 4, !5, i64 9704, i64 4, !5, i64 9708, i64 4, !5, i64 9712, i64 4, !5, i64 9716, i64 4, !5, i64 9720, i64 4, !5, i64 9724, i64 4, !5, i64 9728, i64 4, !5, i64 9732, i64 4, !5, i64 9736, i64 4, !5, i64 9744, i64 8, !52, i64 9752, i64 8, !52, i64 9760, i64 8, !52, i64 9768, i64 8, !52, i64 9776, i64 8, !52, i64 9784, i64 8, !52, i64 9792, i64 4, !5, i64 9796, i64 4, !5, i64 9800, i64 4, !5, i64 9804, i64 4, !5, i64 9808, i64 4, !5, i64 9812, i64 4, !5, i64 9816, i64 4, !5, i64 9820, i64 4, !5, i64 9824, i64 4, !5, i64 9828, i64 4, !5, i64 9832, i64 4, !5, i64 9836, i64 4, !5, i64 9840, i64 8, !1, i64 9848, i64 8, !1, i64 9856, i64 8, !1, i64 9864, i64 8, !1, i64 9872, i64 8, !1, i64 9880, i64 4, !5, i64 9884, i64 4, !5, i64 9888, i64 8, !1, i64 9896, i64 8, !102, i64 9904, i64 8, !102, i64 9912, i64 8, !102, i64 9920, i64 8, !102, i64 9928, i64 4, !5, i64 9932, i64 4, !5, i64 9936, i64 4, !5, i64 9940, i64 4, !5, i64 9944, i64 4, !103, i64 9948, i64 4, !5, i64 9952, i64 4, !5, i64 9956, i64 4, !5, i64 9960, i64 4, !5, i64 9964, i64 4, !5, i64 9968, i64 4, !5, i64 9972, i64 4, !5, i64 9976, i64 4, !5, i64 9980, i64 4, !5, i64 9984, i64 4, !5, i64 9988, i64 192, !65, i64 10180, i64 4, !5, i64 10184, i64 792, !65, i64 10976, i64 4, !5, i64 10980, i64 4, !5, i64 10984, i64 4, !5, i64 10988, i64 4, !5, i64 10992, i64 4, !5, i64 10996, i64 4, !5, i64 11000, i64 4, !5, i64 11004, i64 4, !5, i64 11008, i64 4, !5, i64 11012, i64 4, !5, i64 11016, i64 4, !5, i64 11020, i64 4, !5, i64 11024, i64 4, !5, i64 11028, i64 4, !5, i64 11032, i64 4, !5, i64 11036, i64 4, !5, i64 11040, i64 4, !5, i64 11044, i64 4, !5, i64 11048, i64 4, !5, i64 11052, i64 4, !5, i64 11056, i64 4, !5, i64 11060, i64 4, !5, i64 11064, i64 4, !5, i64 11068, i64 4, !5, i64 11072, i64 4, !5, i64 11076, i64 4, !5, i64 11080, i64 4, !5, i64 11084, i64 128, !65, i64 11216, i64 8, !1, i64 11224, i64 32, !65, i64 11256, i64 4, !5, i64 11264, i64 8, !52, i64 11272, i64 8, !52, i64 11280, i64 8, !52, i64 11288, i64 8, !52, i64 11296, i64 4, !5, i64 11304, i64 96, !65, i64 11400, i64 4, !5, i64 11404, i64 4, !5}
!102 = !{!14, !14, i64 0}
!103 = !{!24, !24, i64 0}
!104 = !{i64 0, i64 4, !5, i64 4, i64 4, !5}
!105 = !{!29, !6, i64 304}
!106 = !{!29, !6, i64 300}
!107 = !{!108, !6, i64 900}
!108 = !{!"gs_font_type1_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !6, i64 32, !22, i64 40, !14, i64 56, !2, i64 64, !2, i64 72, !23, i64 80, !23, i64 104, !3, i64 128, !6, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !6, i64 148, !6, i64 152, !24, i64 156, !6, i64 160, !25, i64 168, !26, i64 272, !26, i64 324, !56, i64 376, !100, i64 408, !2, i64 424, !2, i64 432, !3, i64 440, !3, i64 444, !68, i64 448}
!109 = !{!8, !2, i64 8}
!110 = !{!108, !2, i64 16}
!111 = !{!108, !2, i64 72}
!112 = !{!113, !2, i64 192}
!113 = !{!"gs_memory_s", !2, i64 0, !114, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!114 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!115 = !{!116, !2, i64 120}
!116 = !{!"gs_lib_ctx_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !14, i64 104, !2, i64 112, !2, i64 120, !6, i64 128, !2, i64 136, !6, i64 144, !6, i64 148, !3, i64 152, !2, i64 168, !6, i64 176, !2, i64 184, !6, i64 192, !2, i64 200, !2, i64 208}
!117 = !{!118, !2, i64 0}
!118 = !{!"gs_const_string_s", !2, i64 0, !6, i64 8}
!119 = !{!118, !6, i64 8}
!120 = !{!75, !2, i64 11216}
!121 = !{!8, !2, i64 640}
!122 = !{!8, !6, i64 688}
!123 = !{!21, !2, i64 16}
!124 = !{!125, !2, i64 40}
!125 = !{!"gs_glyph_data_s", !126, i64 0, !2, i64 24, !2, i64 32, !2, i64 40}
!126 = !{!"gs_const_bytestring_s", !2, i64 0, !6, i64 8, !2, i64 16}
!127 = !{!125, !6, i64 8}
!128 = !{!129, !24, i64 296}
!129 = !{!"gs_imager_state_s", !6, i64 0, !2, i64 8, !2, i64 16, !30, i64 24, !6, i64 128, !32, i64 132, !6, i64 168, !33, i64 176, !33, i64 192, !6, i64 208, !6, i64 212, !13, i64 216, !3, i64 220, !35, i64 224, !35, i64 228, !36, i64 232, !14, i64 240, !6, i64 248, !6, i64 252, !6, i64 256, !2, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !24, i64 296, !37, i64 300, !6, i64 308, !6, i64 312, !6, i64 316, !24, i64 320, !6, i64 324, !6, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !6, i64 408, !2, i64 416, !2, i64 424, !38, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !39, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !39, i64 1336}
!130 = !{!75, !6, i64 9880}
!131 = !{!108, !2, i64 488}
!132 = !{!133, !6, i64 0}
!133 = !{!"gs_glyph_info_s", !6, i64 0, !3, i64 8, !33, i64 40, !56, i64 56, !6, i64 88, !2, i64 96}
!134 = !{!99, !2, i64 16}
!135 = !{!133, !34, i64 40}
!136 = !{!133, !34, i64 48}
!137 = !{!138, !2, i64 16}
!138 = !{!"", !2, i64 0, !2, i64 8, !2, i64 16}
!139 = !{!140, !2, i64 0}
!140 = !{!"gx_device_color_s", !2, i64 0, !3, i64 8, !49, i64 352, !6, i64 360, !141, i64 368, !143, i64 632}
!141 = !{!"gs_client_color_s", !2, i64 0, !142, i64 8}
!142 = !{!"gs_paint_color_s", !3, i64 0}
!143 = !{!"_mask", !144, i64 0, !14, i64 8, !2, i64 16}
!144 = !{!"mp_", !6, i64 0, !6, i64 4}
!145 = !{!29, !2, i64 1872}
!146 = !{!147, !2, i64 1304}
!147 = !{!"gx_device_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !44, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !148, i64 96, !150, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !14, i64 928, !14, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !14, i64 968, !14, i64 976, !151, i64 984, !6, i64 1052, !6, i64 1056, !152, i64 1064, !2, i64 1104, !3, i64 1112, !154, i64 1120, !155, i64 1144}
!148 = !{!"gx_device_color_info_s", !6, i64 0, !6, i64 4, !3, i64 8, !13, i64 12, !3, i64 14, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !149, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !14, i64 704, !6, i64 712}
!149 = !{!"gx_device_anti_alias_info_s", !6, i64 0, !6, i64 4}
!150 = !{!"gx_device_cached_colors_s", !14, i64 0, !14, i64 8}
!151 = !{!"gx_stroked_gradient_recognizer_s", !6, i64 0, !3, i64 4, !3, i64 36}
!152 = !{!"gdev_space_params_s", !14, i64 0, !14, i64 8, !153, i64 16, !6, i64 32, !3, i64 36}
!153 = !{!"gx_band_params_s", !6, i64 0, !6, i64 4, !14, i64 8}
!154 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!155 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!156 = !{!45, !6, i64 4}
!157 = !{!45, !6, i64 0}
!158 = !{!29, !2, i64 1680}
!159 = !{!54, !6, i64 0}
!160 = !{!54, !6, i64 384}
!161 = !{!108, !6, i64 152}
!162 = !{!54, !2, i64 112}
!163 = !{i64 0, i64 2, !164, i64 2, i64 2, !164, i64 4, i64 4, !5, i64 8, i64 8, !102, i64 8, i64 2, !164, i64 8, i64 4, !103, i64 8, i64 8, !102, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !102}
!164 = !{!13, !13, i64 0}
!165 = !{!75, !6, i64 11400}
!166 = !{!75, !2, i64 9856}
!167 = !{!21, !2, i64 72}
!168 = !{!113, !2, i64 72}
!169 = !{!9, !6, i64 48}
!170 = !{!113, !2, i64 24}
!171 = !{!8, !2, i64 632}
!172 = !{!108, !6, i64 512}
!173 = !{!99, !34, i64 400}
!174 = !{!99, !34, i64 392}
!175 = !{!99, !34, i64 384}
!176 = !{!99, !34, i64 376}
