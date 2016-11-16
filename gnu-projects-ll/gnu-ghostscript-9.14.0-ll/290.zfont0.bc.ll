; ModuleID = './zfont0.bc'
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
%struct.gs_type0_data_s = type { i32, i8, i8, i8, %struct.gs_const_string_s, i32, i32, i32*, i32, %struct.gs_font_s**, i32, %struct.gs_cmap_s* }
%struct.gs_cmap_s = type { i32, i64, %struct.gs_const_string_s, %struct.gs_cid_system_info_s*, i32, float, %struct.gs_uid_s, i64, i32, i32, i32, i32 (%struct.gs_memory_s*, i64, %struct.gs_const_string_s*, i8*)*, i8*, %struct.gs_cmap_procs_s* }
%struct.gs_cid_system_info_s = type { %struct.gs_const_string_s, %struct.gs_const_string_s, i32 }
%struct.gs_uid_s = type { i64, i64* }
%struct.gs_cmap_procs_s = type { i32 (%struct.gs_cmap_s*, %struct.gs_const_string_s*, i32*, i32*, i64*, i64*)*, void (%struct.gs_cmap_s*, %struct.gs_cmap_ranges_enum_s*)*, void (%struct.gs_cmap_s*, i32, %struct.gs_cmap_lookups_enum_s*)*, i32 (%struct.gs_cmap_s*, i32)* }
%struct.gs_cmap_ranges_enum_s = type { %struct.gx_code_space_range_s, %struct.gs_cmap_s*, %struct.gs_cmap_ranges_enum_procs_s*, i32 }
%struct.gx_code_space_range_s = type { [4 x i8], [4 x i8], i32 }
%struct.gs_cmap_ranges_enum_procs_s = type { i32 (%struct.gs_cmap_ranges_enum_s*)* }
%struct.gs_cmap_lookups_enum_s = type { %struct.gx_cmap_lookup_entry_s, %struct.gs_cmap_s*, %struct.gs_cmap_lookups_enum_procs_s*, [2 x i32], [8 x i8] }
%struct.gx_cmap_lookup_entry_s = type { [2 x [4 x i8]], i32, i32, i32, %struct.gs_const_string_s, i32 }
%struct.gs_cmap_lookups_enum_procs_s = type { i32 (%struct.gs_cmap_lookups_enum_s*)*, i32 (%struct.gs_cmap_lookups_enum_s*)* }
%struct.gs_font_type0_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_type0_data_s }
%struct.font_data_s = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %union._fs }
%union._fs = type { %struct._f42 }
%struct._f42 = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, i32, i64 }
%struct.build_proc_refs_s = type { %struct.ref_s, %struct.ref_s }
%struct.obj_header_s = type opaque

@.str = private unnamed_addr constant [13 x i8] c"2.buildfont0\00", align 1
@zfont0_op_defs = constant [2 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zbuildfont0 }, %struct.op_def zeroinitializer], align 16
@.str.1 = private unnamed_addr constant [9 x i8] c"FMapType\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"FDepVector\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"EscChar\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"ShiftIn\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"ShiftOut\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"SubsVector\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"FID\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"%Type0BuildChar\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"%Type0BuildGlyph\00", align 1
@st_gs_font_type0 = external constant %struct.gs_memory_struct_type_s, align 8
@.str.10 = private unnamed_addr constant [8 x i8] c"PrefEnc\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"buildfont0(Encoding)\00", align 1
@st_gs_font_ptr_element = external constant %struct.gs_memory_struct_type_s, align 8
@.str.12 = private unnamed_addr constant [23 x i8] c"buildfont0(FDepVector)\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"buildfont0(font)\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"ztype0_adjust_matrix\00", align 1

; Function Attrs: nounwind uwtable
define internal i32 @zbuildfont0(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %data = alloca %struct.gs_type0_data_s, align 8
  %fdepvector = alloca %struct.ref_s, align 8
  %pprefenc = alloca %struct.ref_s*, align 8
  %pfont = alloca %struct.gs_font_type0_s*, align 8
  %pdata = alloca %struct.font_data_s*, align 8
  %save_FID = alloca %struct.ref_s, align 8
  %i = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %pfmaptype = alloca %struct.ref_s*, align 8
  %pfdepvector = alloca %struct.ref_s*, align 8
  %fdep = alloca %struct.ref_s, align 8
  %psub = alloca %struct.gs_font_s*, align 8
  %psub0 = alloca %struct.gs_font_type0_s*, align 8
  %fmt = alloca i32, align 4
  %psubsvector = alloca %struct.ref_s*, align 8
  %svsize = alloca i32, align 4
  %pfid = alloca %struct.ref_s*, align 8
  %build = alloca %struct.build_proc_refs_s, align 8
  %nul = alloca %struct.ref_s, align 8
  %enc = alloca %struct.ref_s, align 8
  %fdep258 = alloca %struct.ref_s, align 8
  %pfid259 = alloca %struct.ref_s*, align 8
  %rnfid = alloca %struct.ref_s, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.gs_type0_data_s* %data to i8*
  call void @llvm.lifetime.start(i64 72, i8* %3) #1
  %4 = bitcast %struct.ref_s* %fdepvector to i8*
  call void @llvm.lifetime.start(i64 16, i8* %4) #1
  %5 = bitcast %struct.ref_s** %pprefenc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast %struct.gs_font_type0_s** %pfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast %struct.font_data_s** %pdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast %struct.ref_s* %save_FID to i8*
  call void @llvm.lifetime.start(i64 16, i8* %8) #1
  %9 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  store i32 0, i32* %code, align 4, !tbaa !19
  %11 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %12 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 1
  %13 = load i8, i8* %arrayidx, align 1, !tbaa !20
  %conv = zext i8 %13 to i32
  %cmp = icmp eq i32 %conv, 2
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %14 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %14) #3
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.295

if.end:                                           ; preds = %entry
  %15 = bitcast %struct.ref_s** %pfmaptype to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = bitcast %struct.ref_s** %pfdepvector to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call2 = call i32 @dict_find_string(%struct.ref_s* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), %struct.ref_s** %pfmaptype) #3
  %cmp3 = icmp sle i32 %call2, 0
  br i1 %cmp3, label %if.then.29, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %18 = load %struct.ref_s*, %struct.ref_s** %pfmaptype, align 8, !tbaa !1
  %tas5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i32 0, i32 0
  %type_attrs6 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas5, i32 0, i32 0
  %19 = bitcast i16* %type_attrs6 to i8*
  %arrayidx7 = getelementptr inbounds i8, i8* %19, i64 1
  %20 = load i8, i8* %arrayidx7, align 1, !tbaa !20
  %conv8 = zext i8 %20 to i32
  %cmp9 = icmp eq i32 %conv8, 11
  br i1 %cmp9, label %lor.lhs.false.11, label %if.then.29

lor.lhs.false.11:                                 ; preds = %lor.lhs.false
  %21 = load %struct.ref_s*, %struct.ref_s** %pfmaptype, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %22 = load i64, i64* %intval, align 8, !tbaa !21
  %cmp12 = icmp slt i64 %22, 2
  br i1 %cmp12, label %if.then.29, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %lor.lhs.false.11
  %23 = load %struct.ref_s*, %struct.ref_s** %pfmaptype, align 8, !tbaa !1
  %value15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i32 0, i32 1
  %intval16 = bitcast %union.v* %value15 to i64*
  %24 = load i64, i64* %intval16, align 8, !tbaa !21
  %cmp17 = icmp sgt i64 %24, 9
  br i1 %cmp17, label %if.then.29, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %lor.lhs.false.14
  %25 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call20 = call i32 @dict_find_string(%struct.ref_s* %25, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), %struct.ref_s** %pfdepvector) #3
  %cmp21 = icmp sle i32 %call20, 0
  br i1 %cmp21, label %if.then.29, label %lor.lhs.false.23

lor.lhs.false.23:                                 ; preds = %lor.lhs.false.19
  %26 = load %struct.ref_s*, %struct.ref_s** %pfdepvector, align 8, !tbaa !1
  %tas24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i32 0, i32 0
  %type_attrs25 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas24, i32 0, i32 0
  %27 = load i16, i16* %type_attrs25, align 2, !tbaa !22
  %conv26 = zext i16 %27 to i32
  %and = and i32 %conv26, 15360
  %cmp27 = icmp eq i32 %and, 1024
  br i1 %cmp27, label %if.end.30, label %if.then.29

if.then.29:                                       ; preds = %lor.lhs.false.23, %lor.lhs.false.19, %lor.lhs.false.14, %lor.lhs.false.11, %lor.lhs.false, %if.end
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.30:                                        ; preds = %lor.lhs.false.23
  %28 = load %struct.ref_s*, %struct.ref_s** %pfmaptype, align 8, !tbaa !1
  %value31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i32 0, i32 1
  %intval32 = bitcast %union.v* %value31 to i64*
  %29 = load i64, i64* %intval32, align 8, !tbaa !21
  %conv33 = trunc i64 %29 to i32
  %FMapType = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %data, i32 0, i32 0
  store i32 %conv33, i32* %FMapType, align 4, !tbaa !23
  %30 = load %struct.ref_s*, %struct.ref_s** %pfdepvector, align 8, !tbaa !1
  %31 = bitcast %struct.ref_s* %fdepvector to i8*
  %32 = bitcast %struct.ref_s* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* %32, i64 16, i32 8, i1 false), !tbaa.struct !26
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.30, %if.then.29
  %33 = bitcast %struct.ref_s** %pfdepvector to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  %34 = bitcast %struct.ref_s** %pfmaptype to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.295 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  %tas35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %fdepvector, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas35, i32 0, i32 2
  %35 = load i32, i32* %rsize, align 4, !tbaa !30
  %fdep_size = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %data, i32 0, i32 10
  store i32 %35, i32* %fdep_size, align 4, !tbaa !31
  store i32 0, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cleanup.cont
  %36 = load i32, i32* %i, align 4, !tbaa !19
  %fdep_size36 = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %data, i32 0, i32 10
  %37 = load i32, i32* %fdep_size36, align 4, !tbaa !31
  %cmp37 = icmp ult i32 %36, %37
  br i1 %cmp37, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %38 = bitcast %struct.ref_s* %fdep to i8*
  call void @llvm.lifetime.start(i64 16, i8* %38) #1
  %39 = bitcast %struct.gs_font_s** %psub to i8*
  call void @llvm.lifetime.start(i64 8, i8* %39) #1
  %40 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %40, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %41 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !32
  %42 = bitcast %struct.gs_ref_memory_s* %41 to %struct.gs_memory_s*
  %43 = load i32, i32* %i, align 4, !tbaa !19
  %conv39 = sext i32 %43 to i64
  %call40 = call i32 @array_get(%struct.gs_memory_s* %42, %struct.ref_s* %fdepvector, i64 %conv39, %struct.ref_s* %fdep) #3
  %call41 = call i32 @font_param(%struct.ref_s* %fdep, %struct.gs_font_s** %psub) #3
  store i32 %call41, i32* %code, align 4, !tbaa !19
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %for.body
  %44 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %44, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.73

if.end.45:                                        ; preds = %for.body
  %45 = load %struct.gs_font_s*, %struct.gs_font_s** %psub, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %45, i32 0, i32 11
  %46 = load i32, i32* %FontType, align 4, !tbaa !33
  %cmp46 = icmp eq i32 %46, 0
  br i1 %cmp46, label %if.then.48, label %if.end.72

if.then.48:                                       ; preds = %if.end.45
  %47 = bitcast %struct.gs_font_type0_s** %psub0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %47) #1
  %48 = load %struct.gs_font_s*, %struct.gs_font_s** %psub, align 8, !tbaa !1
  %49 = bitcast %struct.gs_font_s* %48 to %struct.gs_font_type0_s*
  store %struct.gs_font_type0_s* %49, %struct.gs_font_type0_s** %psub0, align 8, !tbaa !1
  %50 = bitcast i32* %fmt to i8*
  call void @llvm.lifetime.start(i64 4, i8* %50) #1
  %51 = load %struct.gs_font_type0_s*, %struct.gs_font_type0_s** %psub0, align 8, !tbaa !1
  %data49 = getelementptr inbounds %struct.gs_font_type0_s, %struct.gs_font_type0_s* %51, i32 0, i32 23
  %FMapType50 = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %data49, i32 0, i32 0
  %52 = load i32, i32* %FMapType50, align 4, !tbaa !39
  store i32 %52, i32* %fmt, align 4, !tbaa !20
  %53 = load i32, i32* %fmt, align 4, !tbaa !20
  %cmp51 = icmp eq i32 %53, 7
  br i1 %cmp51, label %if.then.66, label %lor.lhs.false.53

lor.lhs.false.53:                                 ; preds = %if.then.48
  %54 = load i32, i32* %fmt, align 4, !tbaa !20
  %cmp54 = icmp eq i32 %54, 8
  br i1 %cmp54, label %if.then.66, label %lor.lhs.false.56

lor.lhs.false.56:                                 ; preds = %lor.lhs.false.53
  %55 = load i32, i32* %fmt, align 4, !tbaa !20
  %cmp57 = icmp eq i32 %55, 3
  br i1 %cmp57, label %land.lhs.true, label %if.end.67

land.lhs.true:                                    ; preds = %lor.lhs.false.56
  %FMapType59 = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %data, i32 0, i32 0
  %56 = load i32, i32* %FMapType59, align 4, !tbaa !23
  %cmp60 = icmp eq i32 %56, 3
  br i1 %cmp60, label %if.end.67, label %lor.lhs.false.62

lor.lhs.false.62:                                 ; preds = %land.lhs.true
  %FMapType63 = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %data, i32 0, i32 0
  %57 = load i32, i32* %FMapType63, align 4, !tbaa !23
  %cmp64 = icmp eq i32 %57, 7
  br i1 %cmp64, label %if.end.67, label %if.then.66

if.then.66:                                       ; preds = %lor.lhs.false.62, %lor.lhs.false.53, %if.then.48
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.68

if.end.67:                                        ; preds = %lor.lhs.false.62, %land.lhs.true, %lor.lhs.false.56
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.68

cleanup.68:                                       ; preds = %if.end.67, %if.then.66
  %58 = bitcast i32* %fmt to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #1
  %59 = bitcast %struct.gs_font_type0_s** %psub0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #1
  %cleanup.dest.70 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.70, label %cleanup.73 [
    i32 0, label %cleanup.cont.71
  ]

cleanup.cont.71:                                  ; preds = %cleanup.68
  br label %if.end.72

if.end.72:                                        ; preds = %cleanup.cont.71, %if.end.45
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.73

cleanup.73:                                       ; preds = %if.end.72, %cleanup.68, %if.then.44
  %60 = bitcast %struct.gs_font_s** %psub to i8*
  call void @llvm.lifetime.end(i64 8, i8* %60) #1
  %61 = bitcast %struct.ref_s* %fdep to i8*
  call void @llvm.lifetime.end(i64 16, i8* %61) #1
  %cleanup.dest.75 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.75, label %cleanup.295 [
    i32 0, label %cleanup.cont.76
  ]

cleanup.cont.76:                                  ; preds = %cleanup.73
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont.76
  %62 = load i32, i32* %i, align 4, !tbaa !19
  %inc = add nsw i32 %62, 1
  store i32 %inc, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %FMapType77 = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %data, i32 0, i32 0
  %63 = load i32, i32* %FMapType77, align 4, !tbaa !23
  switch i32 %63, label %sw.default [
    i32 3, label %sw.bb
    i32 7, label %sw.bb
    i32 8, label %sw.bb.79
    i32 6, label %sw.bb.86
    i32 9, label %sw.bb.124
  ]

sw.bb:                                            ; preds = %for.end, %for.end
  %64 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %65 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %EscChar = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %data, i32 0, i32 1
  %call78 = call i32 @ensure_char_entry(%struct.gs_context_state_s* %64, %struct.ref_s* %65, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i8* %EscChar, i32 255) #3
  store i32 %call78, i32* %code, align 4, !tbaa !19
  br label %sw.epilog

sw.bb.79:                                         ; preds = %for.end
  %66 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %67 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %ShiftIn = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %data, i32 0, i32 2
  %call80 = call i32 @ensure_char_entry(%struct.gs_context_state_s* %66, %struct.ref_s* %67, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i8* %ShiftIn, i32 15) #3
  store i32 %call80, i32* %code, align 4, !tbaa !19
  %68 = load i32, i32* %code, align 4, !tbaa !19
  %cmp81 = icmp sge i32 %68, 0
  br i1 %cmp81, label %if.then.83, label %if.end.85

if.then.83:                                       ; preds = %sw.bb.79
  %69 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %70 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %ShiftOut = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %data, i32 0, i32 3
  %call84 = call i32 @ensure_char_entry(%struct.gs_context_state_s* %69, %struct.ref_s* %70, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* %ShiftOut, i32 14) #3
  store i32 %call84, i32* %code, align 4, !tbaa !19
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.83, %sw.bb.79
  br label %sw.epilog

sw.bb.86:                                         ; preds = %for.end
  %71 = bitcast %struct.ref_s** %psubsvector to i8*
  call void @llvm.lifetime.start(i64 8, i8* %71) #1
  %72 = bitcast i32* %svsize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %72) #1
  %73 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call87 = call i32 @dict_find_string(%struct.ref_s* %73, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), %struct.ref_s** %psubsvector) #3
  %cmp88 = icmp sle i32 %call87, 0
  br i1 %cmp88, label %if.then.111, label %lor.lhs.false.90

lor.lhs.false.90:                                 ; preds = %sw.bb.86
  %74 = load %struct.ref_s*, %struct.ref_s** %psubsvector, align 8, !tbaa !1
  %tas91 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %74, i32 0, i32 0
  %type_attrs92 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas91, i32 0, i32 0
  %75 = bitcast i16* %type_attrs92 to i8*
  %arrayidx93 = getelementptr inbounds i8, i8* %75, i64 1
  %76 = load i8, i8* %arrayidx93, align 1, !tbaa !20
  %conv94 = zext i8 %76 to i32
  %cmp95 = icmp eq i32 %conv94, 18
  br i1 %cmp95, label %lor.lhs.false.97, label %if.then.111

lor.lhs.false.97:                                 ; preds = %lor.lhs.false.90
  %77 = load %struct.ref_s*, %struct.ref_s** %psubsvector, align 8, !tbaa !1
  %tas98 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %77, i32 0, i32 0
  %rsize99 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas98, i32 0, i32 2
  %78 = load i32, i32* %rsize99, align 4, !tbaa !30
  store i32 %78, i32* %svsize, align 4, !tbaa !19
  %cmp100 = icmp eq i32 %78, 0
  br i1 %cmp100, label %if.then.111, label %lor.lhs.false.102

lor.lhs.false.102:                                ; preds = %lor.lhs.false.97
  %79 = load %struct.ref_s*, %struct.ref_s** %psubsvector, align 8, !tbaa !1
  %value103 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %79, i32 0, i32 1
  %bytes = bitcast %union.v* %value103 to i8**
  %80 = load i8*, i8** %bytes, align 8, !tbaa !1
  %81 = load i8, i8* %80, align 1, !tbaa !20
  %conv104 = zext i8 %81 to i32
  %add = add nsw i32 %conv104, 1
  %subs_width = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %data, i32 0, i32 6
  store i32 %add, i32* %subs_width, align 4, !tbaa !41
  %cmp105 = icmp ugt i32 %add, 4
  br i1 %cmp105, label %if.then.111, label %lor.lhs.false.107

lor.lhs.false.107:                                ; preds = %lor.lhs.false.102
  %82 = load i32, i32* %svsize, align 4, !tbaa !19
  %sub = sub i32 %82, 1
  %subs_width108 = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %data, i32 0, i32 6
  %83 = load i32, i32* %subs_width108, align 4, !tbaa !41
  %rem = urem i32 %sub, %83
  %cmp109 = icmp ne i32 %rem, 0
  br i1 %cmp109, label %if.then.111, label %if.end.112

if.then.111:                                      ; preds = %lor.lhs.false.107, %lor.lhs.false.102, %lor.lhs.false.97, %lor.lhs.false.90, %sw.bb.86
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.120

if.end.112:                                       ; preds = %lor.lhs.false.107
  %84 = load i32, i32* %svsize, align 4, !tbaa !19
  %sub113 = sub i32 %84, 1
  %subs_width114 = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %data, i32 0, i32 6
  %85 = load i32, i32* %subs_width114, align 4, !tbaa !41
  %div = udiv i32 %sub113, %85
  %subs_size = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %data, i32 0, i32 5
  store i32 %div, i32* %subs_size, align 4, !tbaa !42
  %86 = load %struct.ref_s*, %struct.ref_s** %psubsvector, align 8, !tbaa !1
  %value115 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %86, i32 0, i32 1
  %bytes116 = bitcast %union.v* %value115 to i8**
  %87 = load i8*, i8** %bytes116, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %87, i64 1
  %SubsVector = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %data, i32 0, i32 4
  %data117 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %SubsVector, i32 0, i32 0
  store i8* %add.ptr, i8** %data117, align 8, !tbaa !43
  %88 = load i32, i32* %svsize, align 4, !tbaa !19
  %sub118 = sub i32 %88, 1
  %SubsVector119 = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %data, i32 0, i32 4
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %SubsVector119, i32 0, i32 1
  store i32 %sub118, i32* %size, align 4, !tbaa !44
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.120

cleanup.120:                                      ; preds = %if.end.112, %if.then.111
  %89 = bitcast i32* %svsize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %89) #1
  %90 = bitcast %struct.ref_s** %psubsvector to i8*
  call void @llvm.lifetime.end(i64 8, i8* %90) #1
  %cleanup.dest.122 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.122, label %cleanup.295 [
    i32 0, label %cleanup.cont.123
  ]

cleanup.cont.123:                                 ; preds = %cleanup.120
  br label %sw.epilog

sw.bb.124:                                        ; preds = %for.end
  %CMap = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %data, i32 0, i32 11
  %91 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %92 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory125 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %92, i32 0, i32 1
  %current126 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory125, i32 0, i32 0
  %93 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current126, align 8, !tbaa !32
  %94 = bitcast %struct.gs_ref_memory_s* %93 to %struct.gs_memory_s*
  %call127 = call i32 @ztype0_get_cmap(%struct.gs_cmap_s** %CMap, %struct.ref_s* %fdepvector, %struct.ref_s* %91, %struct.gs_memory_s* %94) #3
  store i32 %call127, i32* %code, align 4, !tbaa !19
  br label %sw.epilog

sw.default:                                       ; preds = %for.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.124, %cleanup.cont.123, %if.end.85, %sw.bb
  %95 = load i32, i32* %code, align 4, !tbaa !19
  %cmp128 = icmp slt i32 %95, 0
  br i1 %cmp128, label %if.then.130, label %if.end.131

if.then.130:                                      ; preds = %sw.epilog
  %96 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %96, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.295

if.end.131:                                       ; preds = %sw.epilog
  %97 = bitcast %struct.ref_s** %pfid to i8*
  call void @llvm.lifetime.start(i64 8, i8* %97) #1
  %98 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call132 = call i32 @dict_find_string(%struct.ref_s* %98, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), %struct.ref_s** %pfid) #3
  %cmp133 = icmp sle i32 %call132, 0
  br i1 %cmp133, label %if.then.135, label %if.else

if.then.135:                                      ; preds = %if.end.131
  %tas136 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %save_FID, i32 0, i32 0
  %type_attrs137 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas136, i32 0, i32 0
  store i16 3584, i16* %type_attrs137, align 2, !tbaa !22
  br label %if.end.138

if.else:                                          ; preds = %if.end.131
  %99 = load %struct.ref_s*, %struct.ref_s** %pfid, align 8, !tbaa !1
  %100 = bitcast %struct.ref_s* %save_FID to i8*
  %101 = bitcast %struct.ref_s* %99 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %100, i8* %101, i64 16, i32 8, i1 false), !tbaa.struct !26
  br label %if.end.138

if.end.138:                                       ; preds = %if.else, %if.then.135
  %102 = bitcast %struct.ref_s** %pfid to i8*
  call void @llvm.lifetime.end(i64 8, i8* %102) #1
  %103 = bitcast %struct.build_proc_refs_s* %build to i8*
  call void @llvm.lifetime.start(i64 32, i8* %103) #1
  %104 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory139 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %104, i32 0, i32 1
  %current140 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory139, i32 0, i32 0
  %105 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current140, align 8, !tbaa !32
  %106 = bitcast %struct.gs_ref_memory_s* %105 to %struct.gs_memory_s*
  %call141 = call i32 @build_proc_name_refs(%struct.gs_memory_s* %106, %struct.build_proc_refs_s* %build, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0)) #3
  store i32 %call141, i32* %code, align 4, !tbaa !19
  %107 = load i32, i32* %code, align 4, !tbaa !19
  %cmp142 = icmp slt i32 %107, 0
  br i1 %cmp142, label %if.then.144, label %if.end.145

if.then.144:                                      ; preds = %if.end.138
  %108 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %108, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.147

if.end.145:                                       ; preds = %if.end.138
  %109 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %110 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %111 = bitcast %struct.gs_font_type0_s** %pfont to %struct.gs_font_s**
  %call146 = call i32 @build_gs_font(%struct.gs_context_state_s* %109, %struct.ref_s* %110, %struct.gs_font_s** %111, i32 0, %struct.gs_memory_struct_type_s* @st_gs_font_type0, %struct.build_proc_refs_s* %build, i32 0) #3
  store i32 %call146, i32* %code, align 4, !tbaa !19
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.147

cleanup.147:                                      ; preds = %if.end.145, %if.then.144
  %112 = bitcast %struct.build_proc_refs_s* %build to i8*
  call void @llvm.lifetime.end(i64 32, i8* %112) #1
  %cleanup.dest.148 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.148, label %cleanup.295 [
    i32 0, label %cleanup.cont.149
  ]

cleanup.cont.149:                                 ; preds = %cleanup.147
  %113 = load i32, i32* %code, align 4, !tbaa !19
  %cmp150 = icmp ne i32 %113, 0
  br i1 %cmp150, label %if.then.152, label %if.end.153

if.then.152:                                      ; preds = %cleanup.cont.149
  %114 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %114, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.295

if.end.153:                                       ; preds = %cleanup.cont.149
  %115 = load %struct.gs_font_type0_s*, %struct.gs_font_type0_s** %pfont, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_font_type0_s, %struct.gs_font_type0_s* %115, i32 0, i32 20
  %init_fstack = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs, i32 0, i32 10
  store i32 (%struct.gs_text_enum_s*, %struct.gs_font_s*)* @gs_type0_init_fstack, i32 (%struct.gs_text_enum_s*, %struct.gs_font_s*)** %init_fstack, align 8, !tbaa !45
  %116 = load %struct.gs_font_type0_s*, %struct.gs_font_type0_s** %pfont, align 8, !tbaa !1
  %procs154 = getelementptr inbounds %struct.gs_font_type0_s, %struct.gs_font_type0_s* %116, i32 0, i32 20
  %define_font = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs154, i32 0, i32 0
  store i32 (%struct.gs_font_dir_s*, %struct.gs_font_s*)* @ztype0_define_font, i32 (%struct.gs_font_dir_s*, %struct.gs_font_s*)** %define_font, align 8, !tbaa !46
  %117 = load %struct.gs_font_type0_s*, %struct.gs_font_type0_s** %pfont, align 8, !tbaa !1
  %procs155 = getelementptr inbounds %struct.gs_font_type0_s, %struct.gs_font_type0_s* %117, i32 0, i32 20
  %make_font = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs155, i32 0, i32 1
  store i32 (%struct.gs_font_dir_s*, %struct.gs_font_s*, %struct.gs_matrix_s*, %struct.gs_font_s**)* @ztype0_make_font, i32 (%struct.gs_font_dir_s*, %struct.gs_font_s*, %struct.gs_matrix_s*, %struct.gs_font_s**)** %make_font, align 8, !tbaa !47
  %118 = load %struct.gs_font_type0_s*, %struct.gs_font_type0_s** %pfont, align 8, !tbaa !1
  %procs156 = getelementptr inbounds %struct.gs_font_type0_s, %struct.gs_font_type0_s* %118, i32 0, i32 20
  %next_char_glyph = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs156, i32 0, i32 11
  store i32 (%struct.gs_text_enum_s*, i64*, i64*)* @gs_type0_next_char_glyph, i32 (%struct.gs_text_enum_s*, i64*, i64*)** %next_char_glyph, align 8, !tbaa !48
  %119 = load %struct.gs_font_type0_s*, %struct.gs_font_type0_s** %pfont, align 8, !tbaa !1
  %procs157 = getelementptr inbounds %struct.gs_font_type0_s, %struct.gs_font_type0_s* %119, i32 0, i32 20
  %decode_glyph = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs157, i32 0, i32 5
  store i64 (%struct.gs_font_s*, i64, i32)* @gs_font_map_glyph_to_unicode, i64 (%struct.gs_font_s*, i64, i32)** %decode_glyph, align 8, !tbaa !49
  %120 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call158 = call i32 @dict_find_string(%struct.ref_s* %120, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), %struct.ref_s** %pprefenc) #3
  %cmp159 = icmp sle i32 %call158, 0
  br i1 %cmp159, label %if.then.161, label %if.end.175

if.then.161:                                      ; preds = %if.end.153
  %121 = bitcast %struct.ref_s* %nul to i8*
  call void @llvm.lifetime.start(i64 16, i8* %121) #1
  %122 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory162 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %122, i32 0, i32 1
  %new_mask = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory162, i32 0, i32 5
  %123 = load i32, i32* %new_mask, align 4, !tbaa !50
  %add163 = add i32 3584, %123
  %conv164 = trunc i32 %add163 to i16
  %tas165 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %nul, i32 0, i32 0
  %type_attrs166 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas165, i32 0, i32 0
  store i16 %conv164, i16* %type_attrs166, align 2, !tbaa !22
  %124 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %125 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %125, i32 0, i32 24
  %call167 = call i32 @dict_put_string(%struct.ref_s* %124, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), %struct.ref_s* %nul, %struct.dict_stack_s* %dict_stack) #3
  store i32 %call167, i32* %code, align 4, !tbaa !19
  %cmp168 = icmp slt i32 %call167, 0
  br i1 %cmp168, label %if.then.170, label %if.end.171

if.then.170:                                      ; preds = %if.then.161
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.172

if.end.171:                                       ; preds = %if.then.161
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.172

cleanup.172:                                      ; preds = %if.then.170, %if.end.171
  %126 = bitcast %struct.ref_s* %nul to i8*
  call void @llvm.lifetime.end(i64 16, i8* %126) #1
  %cleanup.dest.173 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.173, label %cleanup.295 [
    i32 0, label %cleanup.cont.174
    i32 6, label %fail
  ]

cleanup.cont.174:                                 ; preds = %cleanup.172
  br label %if.end.175

if.end.175:                                       ; preds = %cleanup.cont.174, %if.end.153
  %127 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %128 = load %struct.gs_font_type0_s*, %struct.gs_font_type0_s** %pfont, align 8, !tbaa !1
  %129 = bitcast %struct.gs_font_type0_s* %128 to %struct.gs_font_s*
  %130 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  call void @get_GlyphNames2Unicode(%struct.gs_context_state_s* %127, %struct.gs_font_s* %129, %struct.ref_s* %130) #3
  %131 = load %struct.gs_font_type0_s*, %struct.gs_font_type0_s** %pfont, align 8, !tbaa !1
  %client_data = getelementptr inbounds %struct.gs_font_type0_s, %struct.gs_font_type0_s* %131, i32 0, i32 8
  %132 = load i8*, i8** %client_data, align 8, !tbaa !51
  %133 = bitcast i8* %132 to %struct.font_data_s*
  store %struct.font_data_s* %133, %struct.font_data_s** %pdata, align 8, !tbaa !1
  %134 = load %struct.font_data_s*, %struct.font_data_s** %pdata, align 8, !tbaa !1
  %Encoding = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %134, i32 0, i32 3
  %tas176 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %Encoding, i32 0, i32 0
  %rsize177 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas176, i32 0, i32 2
  %135 = load i32, i32* %rsize177, align 4, !tbaa !30
  %encoding_size = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %data, i32 0, i32 8
  store i32 %135, i32* %encoding_size, align 4, !tbaa !52
  %FMapType178 = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %data, i32 0, i32 0
  %136 = load i32, i32* %FMapType178, align 4, !tbaa !23
  %cmp179 = icmp eq i32 %136, 6
  br i1 %cmp179, label %if.then.181, label %if.end.190

if.then.181:                                      ; preds = %if.end.175
  %subs_size182 = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %data, i32 0, i32 5
  %137 = load i32, i32* %subs_size182, align 4, !tbaa !42
  %138 = load %struct.font_data_s*, %struct.font_data_s** %pdata, align 8, !tbaa !1
  %Encoding183 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %138, i32 0, i32 3
  %tas184 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %Encoding183, i32 0, i32 0
  %rsize185 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas184, i32 0, i32 2
  %139 = load i32, i32* %rsize185, align 4, !tbaa !30
  %cmp186 = icmp uge i32 %137, %139
  br i1 %cmp186, label %if.then.188, label %if.end.189

if.then.188:                                      ; preds = %if.then.181
  store i32 -15, i32* %code, align 4, !tbaa !19
  br label %fail

if.end.189:                                       ; preds = %if.then.181
  br label %if.end.190

if.end.190:                                       ; preds = %if.end.189, %if.end.175
  %140 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory191 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %140, i32 0, i32 1
  %current192 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory191, i32 0, i32 0
  %141 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current192, align 8, !tbaa !32
  %142 = bitcast %struct.gs_ref_memory_s* %141 to %struct.gs_memory_s*
  %procs193 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %142, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs193, i32 0, i32 10
  %143 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !53
  %144 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory194 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %144, i32 0, i32 1
  %current195 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory194, i32 0, i32 0
  %145 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current195, align 8, !tbaa !32
  %146 = bitcast %struct.gs_ref_memory_s* %145 to %struct.gs_memory_s*
  %encoding_size196 = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %data, i32 0, i32 8
  %147 = load i32, i32* %encoding_size196, align 4, !tbaa !52
  %call197 = call i8* %143(%struct.gs_memory_s* %146, i32 %147, i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i32 0, i32 0)) #3
  %148 = bitcast i8* %call197 to i32*
  %Encoding198 = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %data, i32 0, i32 7
  store i32* %148, i32** %Encoding198, align 8, !tbaa !56
  %Encoding199 = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %data, i32 0, i32 7
  %149 = load i32*, i32** %Encoding199, align 8, !tbaa !56
  %cmp200 = icmp eq i32* %149, null
  br i1 %cmp200, label %if.then.202, label %if.end.203

if.then.202:                                      ; preds = %if.end.190
  store i32 -25, i32* %code, align 4, !tbaa !19
  br label %fail

if.end.203:                                       ; preds = %if.end.190
  store i32 0, i32* %i, align 4, !tbaa !19
  br label %for.cond.204

for.cond.204:                                     ; preds = %for.inc.238, %if.end.203
  %150 = load i32, i32* %i, align 4, !tbaa !19
  %encoding_size205 = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %data, i32 0, i32 8
  %151 = load i32, i32* %encoding_size205, align 4, !tbaa !52
  %cmp206 = icmp ult i32 %150, %151
  br i1 %cmp206, label %for.body.208, label %for.end.240

for.body.208:                                     ; preds = %for.cond.204
  %152 = bitcast %struct.ref_s* %enc to i8*
  call void @llvm.lifetime.start(i64 16, i8* %152) #1
  %153 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory209 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %153, i32 0, i32 1
  %current210 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory209, i32 0, i32 0
  %154 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current210, align 8, !tbaa !32
  %155 = bitcast %struct.gs_ref_memory_s* %154 to %struct.gs_memory_s*
  %156 = load %struct.font_data_s*, %struct.font_data_s** %pdata, align 8, !tbaa !1
  %Encoding211 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %156, i32 0, i32 3
  %157 = load i32, i32* %i, align 4, !tbaa !19
  %conv212 = sext i32 %157 to i64
  %call213 = call i32 @array_get(%struct.gs_memory_s* %155, %struct.ref_s* %Encoding211, i64 %conv212, %struct.ref_s* %enc) #3
  %tas214 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %enc, i32 0, i32 0
  %type_attrs215 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas214, i32 0, i32 0
  %158 = bitcast i16* %type_attrs215 to i8*
  %arrayidx216 = getelementptr inbounds i8, i8* %158, i64 1
  %159 = load i8, i8* %arrayidx216, align 1, !tbaa !20
  %conv217 = zext i8 %159 to i32
  %cmp218 = icmp eq i32 %conv217, 11
  br i1 %cmp218, label %if.end.221, label %if.then.220

if.then.220:                                      ; preds = %for.body.208
  store i32 -20, i32* %code, align 4, !tbaa !19
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.235

if.end.221:                                       ; preds = %for.body.208
  %value222 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %enc, i32 0, i32 1
  %intval223 = bitcast %union.v* %value222 to i64*
  %160 = load i64, i64* %intval223, align 8, !tbaa !21
  %fdep_size224 = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %data, i32 0, i32 10
  %161 = load i32, i32* %fdep_size224, align 4, !tbaa !31
  %conv225 = zext i32 %161 to i64
  %cmp226 = icmp uge i64 %160, %conv225
  br i1 %cmp226, label %if.then.228, label %if.end.229

if.then.228:                                      ; preds = %if.end.221
  store i32 -15, i32* %code, align 4, !tbaa !19
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.235

if.end.229:                                       ; preds = %if.end.221
  %value230 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %enc, i32 0, i32 1
  %intval231 = bitcast %union.v* %value230 to i64*
  %162 = load i64, i64* %intval231, align 8, !tbaa !21
  %conv232 = trunc i64 %162 to i32
  %163 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom = sext i32 %163 to i64
  %Encoding233 = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %data, i32 0, i32 7
  %164 = load i32*, i32** %Encoding233, align 8, !tbaa !56
  %arrayidx234 = getelementptr inbounds i32, i32* %164, i64 %idxprom
  store i32 %conv232, i32* %arrayidx234, align 4, !tbaa !19
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.235

cleanup.235:                                      ; preds = %if.then.228, %if.then.220, %if.end.229
  %165 = bitcast %struct.ref_s* %enc to i8*
  call void @llvm.lifetime.end(i64 16, i8* %165) #1
  %cleanup.dest.236 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.236, label %cleanup.295 [
    i32 0, label %cleanup.cont.237
    i32 6, label %fail
  ]

cleanup.cont.237:                                 ; preds = %cleanup.235
  br label %for.inc.238

for.inc.238:                                      ; preds = %cleanup.cont.237
  %166 = load i32, i32* %i, align 4, !tbaa !19
  %inc239 = add nsw i32 %166, 1
  store i32 %inc239, i32* %i, align 4, !tbaa !19
  br label %for.cond.204

for.end.240:                                      ; preds = %for.cond.204
  %167 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory241 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %167, i32 0, i32 1
  %current242 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory241, i32 0, i32 0
  %168 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current242, align 8, !tbaa !32
  %169 = bitcast %struct.gs_ref_memory_s* %168 to %struct.gs_memory_s*
  %procs243 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %169, i32 0, i32 1
  %alloc_struct_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs243, i32 0, i32 12
  %170 = load i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct_array, align 8, !tbaa !57
  %171 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory244 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %171, i32 0, i32 1
  %current245 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory244, i32 0, i32 0
  %172 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current245, align 8, !tbaa !32
  %173 = bitcast %struct.gs_ref_memory_s* %172 to %struct.gs_memory_s*
  %fdep_size246 = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %data, i32 0, i32 10
  %174 = load i32, i32* %fdep_size246, align 4, !tbaa !31
  %call247 = call i8* %170(%struct.gs_memory_s* %173, i32 %174, %struct.gs_memory_struct_type_s* @st_gs_font_ptr_element, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i32 0, i32 0)) #3
  %175 = bitcast i8* %call247 to %struct.gs_font_s**
  %FDepVector = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %data, i32 0, i32 9
  store %struct.gs_font_s** %175, %struct.gs_font_s*** %FDepVector, align 8, !tbaa !58
  %FDepVector248 = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %data, i32 0, i32 9
  %176 = load %struct.gs_font_s**, %struct.gs_font_s*** %FDepVector248, align 8, !tbaa !58
  %cmp249 = icmp eq %struct.gs_font_s** %176, null
  br i1 %cmp249, label %if.then.251, label %if.end.252

if.then.251:                                      ; preds = %for.end.240
  store i32 -25, i32* %code, align 4, !tbaa !19
  br label %fail

if.end.252:                                       ; preds = %for.end.240
  store i32 0, i32* %i, align 4, !tbaa !19
  br label %for.cond.253

for.cond.253:                                     ; preds = %for.inc.268, %if.end.252
  %177 = load i32, i32* %i, align 4, !tbaa !19
  %fdep_size254 = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %data, i32 0, i32 10
  %178 = load i32, i32* %fdep_size254, align 4, !tbaa !31
  %cmp255 = icmp ult i32 %177, %178
  br i1 %cmp255, label %for.body.257, label %for.end.270

for.body.257:                                     ; preds = %for.cond.253
  %179 = bitcast %struct.ref_s* %fdep258 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %179) #1
  %180 = bitcast %struct.ref_s** %pfid259 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %180) #1
  %181 = load %struct.gs_font_type0_s*, %struct.gs_font_type0_s** %pfont, align 8, !tbaa !1
  %memory260 = getelementptr inbounds %struct.gs_font_type0_s, %struct.gs_font_type0_s* %181, i32 0, i32 2
  %182 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory260, align 8, !tbaa !59
  %183 = load i32, i32* %i, align 4, !tbaa !19
  %conv261 = sext i32 %183 to i64
  %call262 = call i32 @array_get(%struct.gs_memory_s* %182, %struct.ref_s* %fdepvector, i64 %conv261, %struct.ref_s* %fdep258) #3
  %call263 = call i32 @dict_find_string(%struct.ref_s* %fdep258, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), %struct.ref_s** %pfid259) #3
  %184 = load %struct.ref_s*, %struct.ref_s** %pfid259, align 8, !tbaa !1
  %value264 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %184, i32 0, i32 1
  %pstruct = bitcast %union.v* %value264 to %struct.obj_header_s**
  %185 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %186 = bitcast %struct.obj_header_s* %185 to %struct.gs_font_s*
  %187 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom265 = sext i32 %187 to i64
  %FDepVector266 = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %data, i32 0, i32 9
  %188 = load %struct.gs_font_s**, %struct.gs_font_s*** %FDepVector266, align 8, !tbaa !58
  %arrayidx267 = getelementptr inbounds %struct.gs_font_s*, %struct.gs_font_s** %188, i64 %idxprom265
  store %struct.gs_font_s* %186, %struct.gs_font_s** %arrayidx267, align 8, !tbaa !1
  %189 = bitcast %struct.ref_s** %pfid259 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %189) #1
  %190 = bitcast %struct.ref_s* %fdep258 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %190) #1
  br label %for.inc.268

for.inc.268:                                      ; preds = %for.body.257
  %191 = load i32, i32* %i, align 4, !tbaa !19
  %inc269 = add nsw i32 %191, 1
  store i32 %inc269, i32* %i, align 4, !tbaa !19
  br label %for.cond.253

for.end.270:                                      ; preds = %for.cond.253
  %192 = load %struct.gs_font_type0_s*, %struct.gs_font_type0_s** %pfont, align 8, !tbaa !1
  %data271 = getelementptr inbounds %struct.gs_font_type0_s, %struct.gs_font_type0_s* %192, i32 0, i32 23
  %193 = bitcast %struct.gs_type0_data_s* %data271 to i8*
  %194 = bitcast %struct.gs_type0_data_s* %data to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %193, i8* %194, i64 72, i32 8, i1 false), !tbaa.struct !60
  %195 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %196 = load %struct.gs_font_type0_s*, %struct.gs_font_type0_s** %pfont, align 8, !tbaa !1
  %197 = bitcast %struct.gs_font_type0_s* %196 to %struct.gs_font_s*
  %call272 = call i32 @define_gs_font(%struct.gs_context_state_s* %195, %struct.gs_font_s* %197) #3
  store i32 %call272, i32* %code, align 4, !tbaa !19
  %198 = load i32, i32* %code, align 4, !tbaa !19
  %cmp273 = icmp sge i32 %198, 0
  br i1 %cmp273, label %if.then.275, label %if.end.276

if.then.275:                                      ; preds = %for.end.270
  %199 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %199, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.295

if.end.276:                                       ; preds = %for.end.270
  br label %fail

fail:                                             ; preds = %if.end.276, %cleanup.235, %cleanup.172, %if.then.251, %if.then.202, %if.then.188
  %tas277 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %save_FID, i32 0, i32 0
  %type_attrs278 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas277, i32 0, i32 0
  %200 = bitcast i16* %type_attrs278 to i8*
  %arrayidx279 = getelementptr inbounds i8, i8* %200, i64 1
  %201 = load i8, i8* %arrayidx279, align 1, !tbaa !20
  %conv280 = zext i8 %201 to i32
  %cmp281 = icmp eq i32 %conv280, 14
  br i1 %cmp281, label %if.then.283, label %if.else.288

if.then.283:                                      ; preds = %fail
  %202 = bitcast %struct.ref_s* %rnfid to i8*
  call void @llvm.lifetime.start(i64 16, i8* %202) #1
  %203 = load %struct.gs_font_type0_s*, %struct.gs_font_type0_s** %pfont, align 8, !tbaa !1
  %memory284 = getelementptr inbounds %struct.gs_font_type0_s, %struct.gs_font_type0_s* %203, i32 0, i32 2
  %204 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory284, align 8, !tbaa !59
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %204, i32 0, i32 2
  %205 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !61
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %205, i32 0, i32 16
  %206 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !62
  %call285 = call i32 @names_enter_string(%struct.name_table_s* %206, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), %struct.ref_s* %rnfid) #3
  %207 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %208 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack286 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %208, i32 0, i32 24
  %call287 = call i32 @dict_undef(%struct.ref_s* %207, %struct.ref_s* %rnfid, %struct.dict_stack_s* %dict_stack286) #3
  %209 = bitcast %struct.ref_s* %rnfid to i8*
  call void @llvm.lifetime.end(i64 16, i8* %209) #1
  br label %if.end.291

if.else.288:                                      ; preds = %fail
  %210 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %211 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack289 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %211, i32 0, i32 24
  %call290 = call i32 @dict_put_string(%struct.ref_s* %210, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), %struct.ref_s* %save_FID, %struct.dict_stack_s* %dict_stack289) #3
  br label %if.end.291

if.end.291:                                       ; preds = %if.else.288, %if.then.283
  %212 = load %struct.gs_font_type0_s*, %struct.gs_font_type0_s** %pfont, align 8, !tbaa !1
  %memory292 = getelementptr inbounds %struct.gs_font_type0_s, %struct.gs_font_type0_s* %212, i32 0, i32 2
  %213 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory292, align 8, !tbaa !59
  %procs293 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %213, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs293, i32 0, i32 2
  %214 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !64
  %215 = load %struct.gs_font_type0_s*, %struct.gs_font_type0_s** %pfont, align 8, !tbaa !1
  %memory294 = getelementptr inbounds %struct.gs_font_type0_s, %struct.gs_font_type0_s* %215, i32 0, i32 2
  %216 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory294, align 8, !tbaa !59
  %217 = load %struct.gs_font_type0_s*, %struct.gs_font_type0_s** %pfont, align 8, !tbaa !1
  %218 = bitcast %struct.gs_font_type0_s* %217 to i8*
  call void %214(%struct.gs_memory_s* %216, i8* %218, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i32 0, i32 0)) #3
  %219 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %219, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.295

cleanup.295:                                      ; preds = %if.end.291, %if.then.275, %cleanup.235, %cleanup.172, %if.then.152, %cleanup.147, %if.then.130, %cleanup.120, %cleanup.73, %cleanup, %if.then
  %220 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %220) #1
  %221 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %221) #1
  %222 = bitcast %struct.ref_s* %save_FID to i8*
  call void @llvm.lifetime.end(i64 16, i8* %222) #1
  %223 = bitcast %struct.font_data_s** %pdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %223) #1
  %224 = bitcast %struct.gs_font_type0_s** %pfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %224) #1
  %225 = bitcast %struct.ref_s** %pprefenc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %225) #1
  %226 = bitcast %struct.ref_s* %fdepvector to i8*
  call void @llvm.lifetime.end(i64 16, i8* %226) #1
  %227 = bitcast %struct.gs_type0_data_s* %data to i8*
  call void @llvm.lifetime.end(i64 72, i8* %227) #1
  %228 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %228) #1
  %229 = load i32, i32* %retval
  ret i32 %229
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @check_type_failed(%struct.ref_s*) #2

declare i32 @dict_find_string(%struct.ref_s*, i8*, %struct.ref_s**) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare i32 @array_get(%struct.gs_memory_s*, %struct.ref_s*, i64, %struct.ref_s*) #2

declare i32 @font_param(%struct.ref_s*, %struct.gs_font_s**) #2

; Function Attrs: nounwind uwtable
define internal i32 @ensure_char_entry(%struct.gs_context_state_s* %i_ctx_p, %struct.ref_s* %op, i8* %kstr, i8* %pvalue, i32 %default_value) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op.addr = alloca %struct.ref_s*, align 8
  %kstr.addr = alloca i8*, align 8
  %pvalue.addr = alloca i8*, align 8
  %default_value.addr = alloca i32, align 4
  %pentry = alloca %struct.ref_s*, align 8
  %ent = alloca %struct.ref_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  store i8* %kstr, i8** %kstr.addr, align 8, !tbaa !1
  store i8* %pvalue, i8** %pvalue.addr, align 8, !tbaa !1
  store i32 %default_value, i32* %default_value.addr, align 4, !tbaa !19
  %0 = bitcast %struct.ref_s** %pentry to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %kstr.addr, align 8, !tbaa !1
  %call = call i32 @dict_find_string(%struct.ref_s* %1, i8* %2, %struct.ref_s** %pentry) #3
  %cmp = icmp sle i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = bitcast %struct.ref_s* %ent to i8*
  call void @llvm.lifetime.start(i64 16, i8* %3) #1
  %4 = load i32, i32* %default_value.addr, align 4, !tbaa !19
  %conv = sext i32 %4 to i64
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %ent, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  store i64 %conv, i64* %intval, align 8, !tbaa !21
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %ent, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 2816, i16* %type_attrs, align 2, !tbaa !22
  %5 = load i32, i32* %default_value.addr, align 4, !tbaa !19
  %conv1 = trunc i32 %5 to i8
  %6 = load i8*, i8** %pvalue.addr, align 8, !tbaa !1
  store i8 %conv1, i8* %6, align 1, !tbaa !20
  %7 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %8 = load i8*, i8** %kstr.addr, align 8, !tbaa !1
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %9, i32 0, i32 24
  %call2 = call i32 @dict_put_string(%struct.ref_s* %7, i8* %8, %struct.ref_s* %ent, %struct.dict_stack_s* %dict_stack) #3
  store i32 %call2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %10 = bitcast %struct.ref_s* %ent to i8*
  call void @llvm.lifetime.end(i64 16, i8* %10) #1
  br label %cleanup

if.else:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.else
  br label %do.body.3

do.body.3:                                        ; preds = %do.body
  %11 = load %struct.ref_s*, %struct.ref_s** %pentry, align 8, !tbaa !1
  %tas4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 0
  %type_attrs5 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas4, i32 0, i32 0
  %12 = bitcast i16* %type_attrs5 to i8*
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 1
  %13 = load i8, i8* %arrayidx, align 1, !tbaa !20
  %conv6 = zext i8 %13 to i32
  %cmp7 = icmp eq i32 %conv6, 11
  br i1 %cmp7, label %if.end, label %if.then.9

if.then.9:                                        ; preds = %do.body.3
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %do.body.3
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %14 = load %struct.ref_s*, %struct.ref_s** %pentry, align 8, !tbaa !1
  %value10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 1
  %intval11 = bitcast %union.v* %value10 to i64*
  %15 = load i64, i64* %intval11, align 8, !tbaa !21
  %cmp12 = icmp ugt i64 %15, 255
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %do.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %do.end
  br label %do.cond.16

do.cond.16:                                       ; preds = %if.end.15
  br label %do.end.17

do.end.17:                                        ; preds = %do.cond.16
  %16 = load %struct.ref_s*, %struct.ref_s** %pentry, align 8, !tbaa !1
  %value18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 0, i32 1
  %intval19 = bitcast %union.v* %value18 to i64*
  %17 = load i64, i64* %intval19, align 8, !tbaa !21
  %conv20 = trunc i64 %17 to i8
  %18 = load i8*, i8** %pvalue.addr, align 8, !tbaa !1
  store i8 %conv20, i8* %18, align 1, !tbaa !20
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.17, %if.then.14, %if.then.9, %if.then
  %19 = bitcast %struct.ref_s** %pentry to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #1
  %20 = load i32, i32* %retval
  ret i32 %20
}

declare i32 @ztype0_get_cmap(%struct.gs_cmap_s**, %struct.ref_s*, %struct.ref_s*, %struct.gs_memory_s*) #2

declare i32 @build_proc_name_refs(%struct.gs_memory_s*, %struct.build_proc_refs_s*, i8*, i8*) #2

declare i32 @build_gs_font(%struct.gs_context_state_s*, %struct.ref_s*, %struct.gs_font_s**, i32, %struct.gs_memory_struct_type_s*, %struct.build_proc_refs_s*, i32) #2

declare i32 @gs_type0_init_fstack(%struct.gs_text_enum_s*, %struct.gs_font_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @ztype0_define_font(%struct.gs_font_dir_s* %pdir, %struct.gs_font_s* %pfont) #0 {
entry:
  %retval = alloca i32, align 4
  %pdir.addr = alloca %struct.gs_font_dir_s*, align 8
  %pfont.addr = alloca %struct.gs_font_s*, align 8
  %pfont0 = alloca %struct.gs_font_type0_s*, align 8
  %pdep = alloca %struct.gs_font_s**, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_font_dir_s* %pdir, %struct.gs_font_dir_s** %pdir.addr, align 8, !tbaa !1
  store %struct.gs_font_s* %pfont, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_font_type0_s** %pfont0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_font_s* %1 to %struct.gs_font_type0_s*
  store %struct.gs_font_type0_s* %2, %struct.gs_font_type0_s** %pfont0, align 8, !tbaa !1
  %3 = bitcast %struct.gs_font_s*** %pdep to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_font_type0_s*, %struct.gs_font_type0_s** %pfont0, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_font_type0_s, %struct.gs_font_type0_s* %4, i32 0, i32 23
  %FDepVector = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %data, i32 0, i32 9
  %5 = load %struct.gs_font_s**, %struct.gs_font_s*** %FDepVector, align 8, !tbaa !65
  store %struct.gs_font_s** %5, %struct.gs_font_s*** %pdep, align 8, !tbaa !1
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir.addr, align 8, !tbaa !1
  %8 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %call = call i32 @gs_type0_define_font(%struct.gs_font_dir_s* %7, %struct.gs_font_s* %8) #3
  store i32 %call, i32* %code, align 4, !tbaa !19
  %9 = load i32, i32* %code, align 4, !tbaa !19
  %cmp = icmp slt i32 %9, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %10 = load %struct.gs_font_type0_s*, %struct.gs_font_type0_s** %pfont0, align 8, !tbaa !1
  %data1 = getelementptr inbounds %struct.gs_font_type0_s, %struct.gs_font_type0_s* %10, i32 0, i32 23
  %FDepVector2 = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %data1, i32 0, i32 9
  %11 = load %struct.gs_font_s**, %struct.gs_font_s*** %FDepVector2, align 8, !tbaa !65
  %12 = load %struct.gs_font_s**, %struct.gs_font_s*** %pdep, align 8, !tbaa !1
  %cmp3 = icmp eq %struct.gs_font_s** %11, %12
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %13 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %14 = load %struct.gs_font_type0_s*, %struct.gs_font_type0_s** %pfont0, align 8, !tbaa !1
  %call4 = call i32 @ztype0_adjust_FDepVector(%struct.gs_font_type0_s* %14) #3
  store i32 %call4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %15 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #1
  %16 = bitcast %struct.gs_font_s*** %pdep to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  %17 = bitcast %struct.gs_font_type0_s** %pfont0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define internal i32 @ztype0_make_font(%struct.gs_font_dir_s* %pdir, %struct.gs_font_s* %pfont, %struct.gs_matrix_s* %pmat, %struct.gs_font_s** %ppfont) #0 {
entry:
  %retval = alloca i32, align 4
  %pdir.addr = alloca %struct.gs_font_dir_s*, align 8
  %pfont.addr = alloca %struct.gs_font_s*, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %ppfont.addr = alloca %struct.gs_font_s**, align 8
  %ppfont0 = alloca %struct.gs_font_type0_s**, align 8
  %pdep = alloca %struct.gs_font_s**, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_font_dir_s* %pdir, %struct.gs_font_dir_s** %pdir.addr, align 8, !tbaa !1
  store %struct.gs_font_s* %pfont, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  store %struct.gs_font_s** %ppfont, %struct.gs_font_s*** %ppfont.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_font_type0_s*** %ppfont0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_font_s**, %struct.gs_font_s*** %ppfont.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_font_s** %1 to %struct.gs_font_type0_s**
  store %struct.gs_font_type0_s** %2, %struct.gs_font_type0_s*** %ppfont0, align 8, !tbaa !1
  %3 = bitcast %struct.gs_font_s*** %pdep to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_font_type0_s**, %struct.gs_font_type0_s*** %ppfont0, align 8, !tbaa !1
  %5 = load %struct.gs_font_type0_s*, %struct.gs_font_type0_s** %4, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_font_type0_s, %struct.gs_font_type0_s* %5, i32 0, i32 23
  %FDepVector = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %data, i32 0, i32 9
  %6 = load %struct.gs_font_s**, %struct.gs_font_s*** %FDepVector, align 8, !tbaa !65
  store %struct.gs_font_s** %6, %struct.gs_font_s*** %pdep, align 8, !tbaa !1
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir.addr, align 8, !tbaa !1
  %9 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %10 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %11 = load %struct.gs_font_s**, %struct.gs_font_s*** %ppfont.addr, align 8, !tbaa !1
  %call = call i32 @zdefault_make_font(%struct.gs_font_dir_s* %8, %struct.gs_font_s* %9, %struct.gs_matrix_s* %10, %struct.gs_font_s** %11) #3
  store i32 %call, i32* %code, align 4, !tbaa !19
  %12 = load i32, i32* %code, align 4, !tbaa !19
  %cmp = icmp slt i32 %12, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %13 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir.addr, align 8, !tbaa !1
  %15 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %16 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %17 = load %struct.gs_font_s**, %struct.gs_font_s*** %ppfont.addr, align 8, !tbaa !1
  %call1 = call i32 @gs_type0_make_font(%struct.gs_font_dir_s* %14, %struct.gs_font_s* %15, %struct.gs_matrix_s* %16, %struct.gs_font_s** %17) #3
  store i32 %call1, i32* %code, align 4, !tbaa !19
  %18 = load i32, i32* %code, align 4, !tbaa !19
  %cmp2 = icmp slt i32 %18, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %19 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %19, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %20 = load %struct.gs_font_type0_s**, %struct.gs_font_type0_s*** %ppfont0, align 8, !tbaa !1
  %21 = load %struct.gs_font_type0_s*, %struct.gs_font_type0_s** %20, align 8, !tbaa !1
  %data5 = getelementptr inbounds %struct.gs_font_type0_s, %struct.gs_font_type0_s* %21, i32 0, i32 23
  %FDepVector6 = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %data5, i32 0, i32 9
  %22 = load %struct.gs_font_s**, %struct.gs_font_s*** %FDepVector6, align 8, !tbaa !65
  %23 = load %struct.gs_font_s**, %struct.gs_font_s*** %pdep, align 8, !tbaa !1
  %cmp7 = icmp eq %struct.gs_font_s** %22, %23
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.4
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.end.4
  %24 = load %struct.gs_font_type0_s**, %struct.gs_font_type0_s*** %ppfont0, align 8, !tbaa !1
  %25 = load %struct.gs_font_type0_s*, %struct.gs_font_type0_s** %24, align 8, !tbaa !1
  %call10 = call i32 @ztype0_adjust_FDepVector(%struct.gs_font_type0_s* %25) #3
  store i32 %call10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.9, %if.then.8, %if.then.3, %if.then
  %26 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  %27 = bitcast %struct.gs_font_s*** %pdep to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  %28 = bitcast %struct.gs_font_type0_s*** %ppfont0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #1
  %29 = load i32, i32* %retval
  ret i32 %29
}

declare i32 @gs_type0_next_char_glyph(%struct.gs_text_enum_s*, i64*, i64*) #2

declare i64 @gs_font_map_glyph_to_unicode(%struct.gs_font_s*, i64, i32) #2

declare i32 @dict_put_string(%struct.ref_s*, i8*, %struct.ref_s*, %struct.dict_stack_s*) #2

declare void @get_GlyphNames2Unicode(%struct.gs_context_state_s*, %struct.gs_font_s*, %struct.ref_s*) #2

declare i32 @define_gs_font(%struct.gs_context_state_s*, %struct.gs_font_s*) #2

declare i32 @names_enter_string(%struct.name_table_s*, i8*, %struct.ref_s*) #2

declare i32 @dict_undef(%struct.ref_s*, %struct.ref_s*, %struct.dict_stack_s*) #2

declare i32 @gs_type0_define_font(%struct.gs_font_dir_s*, %struct.gs_font_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @ztype0_adjust_FDepVector(%struct.gs_font_type0_s* %pfont) #0 {
entry:
  %retval = alloca i32, align 4
  %pfont.addr = alloca %struct.gs_font_type0_s*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %imem = alloca %struct.gs_ref_memory_s*, align 8
  %pdep = alloca %struct.gs_font_s**, align 8
  %newdep = alloca %struct.ref_s, align 8
  %fdep_size = alloca i32, align 4
  %prdep = alloca %struct.ref_s*, align 8
  %i = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %pdict = alloca %struct.ref_s*, align 8
  store %struct.gs_font_type0_s* %pfont, %struct.gs_font_type0_s** %pfont.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_font_type0_s*, %struct.gs_font_type0_s** %pfont.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_font_type0_s, %struct.gs_font_type0_s* %1, i32 0, i32 2
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !59
  store %struct.gs_memory_s* %2, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %3 = bitcast %struct.gs_ref_memory_s** %imem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %5 = bitcast %struct.gs_memory_s* %4 to %struct.gs_ref_memory_s*
  store %struct.gs_ref_memory_s* %5, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %6 = bitcast %struct.gs_font_s*** %pdep to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.gs_font_type0_s*, %struct.gs_font_type0_s** %pfont.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_font_type0_s, %struct.gs_font_type0_s* %7, i32 0, i32 23
  %FDepVector = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %data, i32 0, i32 9
  %8 = load %struct.gs_font_s**, %struct.gs_font_s*** %FDepVector, align 8, !tbaa !65
  store %struct.gs_font_s** %8, %struct.gs_font_s*** %pdep, align 8, !tbaa !1
  %9 = bitcast %struct.ref_s* %newdep to i8*
  call void @llvm.lifetime.start(i64 16, i8* %9) #1
  %10 = bitcast i32* %fdep_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load %struct.gs_font_type0_s*, %struct.gs_font_type0_s** %pfont.addr, align 8, !tbaa !1
  %data1 = getelementptr inbounds %struct.gs_font_type0_s, %struct.gs_font_type0_s* %11, i32 0, i32 23
  %fdep_size2 = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %data1, i32 0, i32 10
  %12 = load i32, i32* %fdep_size2, align 4, !tbaa !66
  store i32 %12, i32* %fdep_size, align 4, !tbaa !19
  %13 = bitcast %struct.ref_s** %prdep to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %17 = load i32, i32* %fdep_size, align 4, !tbaa !19
  %call = call i32 @gs_alloc_ref_array(%struct.gs_ref_memory_s* %16, %struct.ref_s* %newdep, i32 96, i32 %17, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i32 0, i32 0)) #3
  store i32 %call, i32* %code, align 4, !tbaa !19
  %18 = load i32, i32* %code, align 4, !tbaa !19
  %cmp = icmp slt i32 %18, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %19 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %19, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %newdep, i32 0, i32 1
  %refs = bitcast %union.v* %value to %struct.ref_s**
  %20 = load %struct.ref_s*, %struct.ref_s** %refs, align 8, !tbaa !1
  store %struct.ref_s* %20, %struct.ref_s** %prdep, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %21 = load i32, i32* %i, align 4, !tbaa !19
  %22 = load i32, i32* %fdep_size, align 4, !tbaa !19
  %cmp3 = icmp ult i32 %21, %22
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = bitcast %struct.ref_s** %pdict to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #1
  %24 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom = zext i32 %24 to i64
  %25 = load %struct.gs_font_s**, %struct.gs_font_s*** %pdep, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.gs_font_s*, %struct.gs_font_s** %25, i64 %idxprom
  %26 = load %struct.gs_font_s*, %struct.gs_font_s** %arrayidx, align 8, !tbaa !1
  %client_data = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %26, i32 0, i32 8
  %27 = load i8*, i8** %client_data, align 8, !tbaa !67
  %28 = bitcast i8* %27 to %struct.font_data_s*
  %dict = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %28, i32 0, i32 0
  store %struct.ref_s* %dict, %struct.ref_s** %pdict, align 8, !tbaa !1
  %29 = load %struct.ref_s*, %struct.ref_s** %prdep, align 8, !tbaa !1
  %30 = load %struct.ref_s*, %struct.ref_s** %pdict, align 8, !tbaa !1
  %31 = bitcast %struct.ref_s* %29 to i8*
  %32 = bitcast %struct.ref_s* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* %32, i64 16, i32 8, i1 false), !tbaa.struct !26
  %33 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %call4 = call i32 @imemory_new_mask(%struct.gs_ref_memory_s* %33) #3
  %34 = load %struct.ref_s*, %struct.ref_s** %prdep, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %35 = load i16, i16* %type_attrs, align 2, !tbaa !22
  %conv = zext i16 %35 to i32
  %or = or i32 %conv, %call4
  %conv5 = trunc i32 %or to i16
  store i16 %conv5, i16* %type_attrs, align 2, !tbaa !22
  %36 = bitcast %struct.ref_s** %pdict to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %37 = load i32, i32* %i, align 4, !tbaa !19
  %inc = add i32 %37, 1
  store i32 %inc, i32* %i, align 4, !tbaa !19
  %38 = load %struct.ref_s*, %struct.ref_s** %prdep, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %38, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %prdep, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %39 = load %struct.gs_font_type0_s*, %struct.gs_font_type0_s** %pfont.addr, align 8, !tbaa !1
  %client_data6 = getelementptr inbounds %struct.gs_font_type0_s, %struct.gs_font_type0_s* %39, i32 0, i32 8
  %40 = load i8*, i8** %client_data6, align 8, !tbaa !51
  %41 = bitcast i8* %40 to %struct.font_data_s*
  %dict7 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %41, i32 0, i32 0
  %call8 = call i32 @dict_put_string(%struct.ref_s* %dict7, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), %struct.ref_s* %newdep, %struct.dict_stack_s* null) #3
  store i32 %call8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %42 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #1
  %43 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #1
  %44 = bitcast %struct.ref_s** %prdep to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #1
  %45 = bitcast i32* %fdep_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #1
  %46 = bitcast %struct.ref_s* %newdep to i8*
  call void @llvm.lifetime.end(i64 16, i8* %46) #1
  %47 = bitcast %struct.gs_font_s*** %pdep to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #1
  %48 = bitcast %struct.gs_ref_memory_s** %imem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
  %49 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #1
  %50 = load i32, i32* %retval
  ret i32 %50
}

declare i32 @gs_alloc_ref_array(%struct.gs_ref_memory_s*, %struct.ref_s*, i32, i32, i8*) #2

declare i32 @imemory_new_mask(%struct.gs_ref_memory_s*) #2

declare i32 @zdefault_make_font(%struct.gs_font_dir_s*, %struct.gs_font_s*, %struct.gs_matrix_s*, %struct.gs_font_s**) #2

declare i32 @gs_type0_make_font(%struct.gs_font_dir_s*, %struct.gs_font_s*, %struct.gs_matrix_s*, %struct.gs_font_s**) #2

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
!19 = !{!9, !9, i64 0}
!20 = !{!3, !3, i64 0}
!21 = !{!13, !13, i64 0}
!22 = !{!10, !12, i64 0}
!23 = !{!24, !3, i64 0}
!24 = !{!"gs_type0_data_s", !3, i64 0, !3, i64 4, !3, i64 5, !3, i64 6, !25, i64 8, !9, i64 24, !9, i64 28, !2, i64 32, !9, i64 40, !2, i64 48, !9, i64 56, !2, i64 64}
!25 = !{!"gs_const_string_s", !2, i64 0, !9, i64 8}
!26 = !{i64 0, i64 2, !27, i64 2, i64 2, !27, i64 4, i64 4, !19, i64 8, i64 8, !21, i64 8, i64 2, !27, i64 8, i64 4, !28, i64 8, i64 8, !21, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !21}
!27 = !{!12, !12, i64 0}
!28 = !{!29, !29, i64 0}
!29 = !{!"float", !3, i64 0}
!30 = !{!10, !9, i64 4}
!31 = !{!24, !9, i64 56}
!32 = !{!6, !2, i64 8}
!33 = !{!34, !3, i64 128}
!34 = !{!"gs_font_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !9, i64 32, !35, i64 40, !13, i64 56, !2, i64 64, !2, i64 72, !36, i64 80, !36, i64 104, !3, i64 128, !9, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !9, i64 148, !9, i64 152, !29, i64 156, !9, i64 160, !37, i64 168, !38, i64 272, !38, i64 324}
!35 = !{!"gs_notify_list_s", !2, i64 0, !2, i64 8}
!36 = !{!"gs_matrix_s", !29, i64 0, !29, i64 4, !29, i64 8, !29, i64 12, !29, i64 16, !29, i64 20}
!37 = !{!"gs_font_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96}
!38 = !{!"gs_font_name_s", !3, i64 0, !9, i64 48}
!39 = !{!40, !3, i64 376}
!40 = !{!"gs_font_type0_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !9, i64 32, !35, i64 40, !13, i64 56, !2, i64 64, !2, i64 72, !36, i64 80, !36, i64 104, !3, i64 128, !9, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !9, i64 148, !9, i64 152, !29, i64 156, !9, i64 160, !37, i64 168, !38, i64 272, !38, i64 324, !24, i64 376}
!41 = !{!24, !9, i64 28}
!42 = !{!24, !9, i64 24}
!43 = !{!24, !2, i64 8}
!44 = !{!24, !9, i64 16}
!45 = !{!40, !2, i64 248}
!46 = !{!40, !2, i64 168}
!47 = !{!40, !2, i64 176}
!48 = !{!40, !2, i64 256}
!49 = !{!40, !2, i64 208}
!50 = !{!7, !9, i64 68}
!51 = !{!40, !2, i64 72}
!52 = !{!24, !9, i64 40}
!53 = !{!54, !2, i64 88}
!54 = !{!"gs_memory_s", !2, i64 0, !55, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!55 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!56 = !{!24, !2, i64 32}
!57 = !{!54, !2, i64 104}
!58 = !{!24, !2, i64 48}
!59 = !{!40, !2, i64 16}
!60 = !{i64 0, i64 4, !20, i64 4, i64 1, !20, i64 5, i64 1, !20, i64 6, i64 1, !20, i64 8, i64 8, !1, i64 16, i64 4, !19, i64 24, i64 4, !19, i64 28, i64 4, !19, i64 32, i64 8, !1, i64 40, i64 4, !19, i64 48, i64 8, !1, i64 56, i64 4, !19, i64 64, i64 8, !1}
!61 = !{!54, !2, i64 192}
!62 = !{!63, !2, i64 120}
!63 = !{!"gs_lib_ctx_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !9, i64 40, !9, i64 44, !9, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !13, i64 104, !2, i64 112, !2, i64 120, !9, i64 128, !2, i64 136, !9, i64 144, !9, i64 148, !3, i64 152, !2, i64 168, !9, i64 176, !2, i64 184, !9, i64 192, !2, i64 200, !2, i64 208}
!64 = !{!54, !2, i64 24}
!65 = !{!40, !2, i64 424}
!66 = !{!40, !9, i64 432}
!67 = !{!34, !2, i64 72}
