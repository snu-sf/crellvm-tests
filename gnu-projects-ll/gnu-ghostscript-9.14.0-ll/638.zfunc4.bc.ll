; ModuleID = './zfunc4.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.calc_op_s = type { i32 (%struct.gs_context_state_s*)*, i32 }
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
%struct.gs_const_string_s = type { i8*, i32 }
%struct.op_array_table_s = type { %struct.ref_s, i16*, i32, i32, i32 }
%struct.dict_stack_s = type { %struct.ref_stack_s, i32, i32, i32, i16*, i32, %struct.ref_s*, %struct.ref_s }
%struct.ref_stack_s = type { %struct.ref_s*, %struct.ref_s*, %struct.ref_s*, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, %struct.ref_stack_params_s*, %struct.gs_ref_memory_s* }
%struct.ref_stack_params_s = type opaque
%struct.exec_stack_s = type { %struct.ref_stack_s, %struct.ref_s* }
%struct.op_stack_s = type { %struct.ref_stack_s }
%struct.i_plugin_holder_s = type opaque
%struct.gs_function_params_s = type { i32, float*, i32, float* }
%struct.gs_function_s = type { %struct.gs_function_head_s, %struct.gs_function_params_s }
%struct.gs_function_head_s = type { i32, %struct.gs_function_procs_s }
%struct.gs_function_procs_s = type { i32 (%struct.gs_function_s*, float*, float*)*, i32 (%struct.gs_function_s*, float*, float*, i32*)*, void (%struct.gs_function_s*, %struct.gs_function_info_s*)*, i32 (%struct.gs_function_s*, %struct.gs_param_list_s*)*, i32 (%struct.gs_function_s*, %struct.gs_function_s**, %struct.gs_range_s*, %struct.gs_memory_s*)*, void (%struct.gs_function_params_s*, %struct.gs_memory_s*)*, void (%struct.gs_function_s*, i32, %struct.gs_memory_s*)*, i32 (%struct.gs_function_s*, %struct.stream_s*)* }
%struct.gs_function_info_s = type { %struct.gs_data_source_s*, i64, %struct.gs_function_s**, i32 }
%struct.gs_data_source_s = type opaque
%struct.gs_function_PtCr_params_s = type { i32, float*, i32, float*, %struct.gs_const_string_s }
%struct.gs_c_param_list_s = type { %struct.gs_param_list_procs_s*, %struct.gs_memory_s*, i32, %struct.gs_c_param_s*, %struct.gs_param_list_s*, i32, i32, i32 }
%struct.gs_c_param_s = type opaque
%struct.name_s = type opaque
%struct.PS_colour_space_s = type { i8*, i32 (%struct.gs_context_state_s*, %struct.ref_s*, i32*, i32*, i32)*, i32 (%struct.gs_context_state_s*, %struct.ref_s**)*, i32 (%struct.gs_context_state_s*, %struct.ref_s*, %struct.ref_s**, i32*)*, i32 (%struct.gs_context_state_s*, %struct.ref_s*, i32*)*, i32 (%struct.gs_context_state_s*, %struct.ref_s*, float*)*, i32 (%struct.gs_context_state_s*, %struct.ref_s*, float*)*, i32 (%struct.gs_context_state_s*, %struct.ref_s*, i32, i32*, i32*, i32*)*, i32 (%struct.gs_context_state_s*, %struct.ref_s*, i32*, i32*, i32*)*, i32 (%struct.gs_context_state_s*, %struct.ref_s*, float*, i32)*, i32 (%struct.gs_context_state_s*, %struct.ref_s*, %struct.ref_s*)*, i32 (%struct.gs_context_state_s*, %struct.ref_s*)* }

@.str = private unnamed_addr constant [9 x i8] c"Function\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"gs_build_function_4(ops)\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"make_type4_function(Domain)\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"make_type4_function(Range)\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"make_type4_function(ops)\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"tint_params\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"CorelTintTransformFunction\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@calc_ops = internal constant [39 x %struct.calc_op_s] [%struct.calc_op_s { i32 (%struct.gs_context_state_s*)* @zabs, i32 0 }, %struct.calc_op_s { i32 (%struct.gs_context_state_s*)* @zadd, i32 1 }, %struct.calc_op_s { i32 (%struct.gs_context_state_s*)* @zand, i32 2 }, %struct.calc_op_s { i32 (%struct.gs_context_state_s*)* @zatan, i32 3 }, %struct.calc_op_s { i32 (%struct.gs_context_state_s*)* @zbitshift, i32 4 }, %struct.calc_op_s { i32 (%struct.gs_context_state_s*)* @zceiling, i32 5 }, %struct.calc_op_s { i32 (%struct.gs_context_state_s*)* @zcos, i32 6 }, %struct.calc_op_s { i32 (%struct.gs_context_state_s*)* @zcvi, i32 7 }, %struct.calc_op_s { i32 (%struct.gs_context_state_s*)* @zcvr, i32 8 }, %struct.calc_op_s { i32 (%struct.gs_context_state_s*)* @zdiv, i32 9 }, %struct.calc_op_s { i32 (%struct.gs_context_state_s*)* @zexp, i32 10 }, %struct.calc_op_s { i32 (%struct.gs_context_state_s*)* @zfloor, i32 11 }, %struct.calc_op_s { i32 (%struct.gs_context_state_s*)* @zidiv, i32 12 }, %struct.calc_op_s { i32 (%struct.gs_context_state_s*)* @zln, i32 13 }, %struct.calc_op_s { i32 (%struct.gs_context_state_s*)* @zlog, i32 14 }, %struct.calc_op_s { i32 (%struct.gs_context_state_s*)* @zmod, i32 15 }, %struct.calc_op_s { i32 (%struct.gs_context_state_s*)* @zmul, i32 16 }, %struct.calc_op_s { i32 (%struct.gs_context_state_s*)* @zneg, i32 17 }, %struct.calc_op_s { i32 (%struct.gs_context_state_s*)* @znot, i32 18 }, %struct.calc_op_s { i32 (%struct.gs_context_state_s*)* @zor, i32 19 }, %struct.calc_op_s { i32 (%struct.gs_context_state_s*)* @zround, i32 20 }, %struct.calc_op_s { i32 (%struct.gs_context_state_s*)* @zsin, i32 21 }, %struct.calc_op_s { i32 (%struct.gs_context_state_s*)* @zsqrt, i32 22 }, %struct.calc_op_s { i32 (%struct.gs_context_state_s*)* @zsub, i32 23 }, %struct.calc_op_s { i32 (%struct.gs_context_state_s*)* @ztruncate, i32 24 }, %struct.calc_op_s { i32 (%struct.gs_context_state_s*)* @zxor, i32 25 }, %struct.calc_op_s { i32 (%struct.gs_context_state_s*)* @zeq, i32 26 }, %struct.calc_op_s { i32 (%struct.gs_context_state_s*)* @zge, i32 27 }, %struct.calc_op_s { i32 (%struct.gs_context_state_s*)* @zgt, i32 28 }, %struct.calc_op_s { i32 (%struct.gs_context_state_s*)* @zle, i32 29 }, %struct.calc_op_s { i32 (%struct.gs_context_state_s*)* @zlt, i32 30 }, %struct.calc_op_s { i32 (%struct.gs_context_state_s*)* @zne, i32 31 }, %struct.calc_op_s { i32 (%struct.gs_context_state_s*)* @zcopy, i32 32 }, %struct.calc_op_s { i32 (%struct.gs_context_state_s*)* @z2copy, i32 32 }, %struct.calc_op_s { i32 (%struct.gs_context_state_s*)* @zdup, i32 33 }, %struct.calc_op_s { i32 (%struct.gs_context_state_s*)* @zexch, i32 34 }, %struct.calc_op_s { i32 (%struct.gs_context_state_s*)* @zindex, i32 35 }, %struct.calc_op_s { i32 (%struct.gs_context_state_s*)* @zpop, i32 36 }, %struct.calc_op_s { i32 (%struct.gs_context_state_s*)* @zroll, i32 37 }], align 16
@.str.9 = private unnamed_addr constant [23 x i8] c"AllowPSRepeatFunctions\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gs_build_function_4(%struct.gs_context_state_s* %i_ctx_p, %struct.ref_s* %op, %struct.gs_function_params_s* %mnDR, i32 %depth, %struct.gs_function_s** %ppfn, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op.addr = alloca %struct.ref_s*, align 8
  %mnDR.addr = alloca %struct.gs_function_params_s*, align 8
  %depth.addr = alloca i32, align 4
  %ppfn.addr = alloca %struct.gs_function_s**, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %params = alloca %struct.gs_function_PtCr_params_s, align 8
  %proc = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %ops = alloca i8*, align 8
  %size = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  store %struct.gs_function_params_s* %mnDR, %struct.gs_function_params_s** %mnDR.addr, align 8, !tbaa !1
  store i32 %depth, i32* %depth.addr, align 4, !tbaa !5
  store %struct.gs_function_s** %ppfn, %struct.gs_function_s*** %ppfn.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_function_PtCr_params_s* %params to i8*
  call void @llvm.lifetime.start(i64 48, i8* %0) #1
  %1 = bitcast %struct.ref_s** %proc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i8** %ops to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast %struct.gs_function_PtCr_params_s* %params to %struct.gs_function_params_s*
  %6 = load %struct.gs_function_params_s*, %struct.gs_function_params_s** %mnDR.addr, align 8, !tbaa !1
  %7 = bitcast %struct.gs_function_params_s* %5 to i8*
  %8 = bitcast %struct.gs_function_params_s* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 32, i32 8, i1 false), !tbaa.struct !7
  %ops1 = getelementptr inbounds %struct.gs_function_PtCr_params_s, %struct.gs_function_PtCr_params_s* %params, i32 0, i32 4
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %ops1, i32 0, i32 0
  store i8* null, i8** %data, align 8, !tbaa !8
  %ops2 = getelementptr inbounds %struct.gs_function_PtCr_params_s, %struct.gs_function_PtCr_params_s* %params, i32 0, i32 4
  %size3 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %ops2, i32 0, i32 1
  store i32 0, i32* %size3, align 4, !tbaa !11
  %9 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %call = call i32 @dict_find_string(%struct.ref_s* %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), %struct.ref_s** %proc) #4
  %cmp = icmp sle i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -15, i32* %code, align 4, !tbaa !5
  br label %fail

if.end:                                           ; preds = %entry
  %10 = load %struct.ref_s*, %struct.ref_s** %proc, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %11 = load i16, i16* %type_attrs, align 2, !tbaa !12
  %conv = zext i16 %11 to i32
  %and = and i32 %conv, 15552
  %cmp4 = icmp eq i32 %and, 1216
  br i1 %cmp4, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %if.end
  store i32 -20, i32* %code, align 4, !tbaa !5
  br label %fail

if.end.7:                                         ; preds = %if.end
  store i32 0, i32* %size, align 4, !tbaa !5
  %12 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %13 = load %struct.ref_s*, %struct.ref_s** %proc, align 8, !tbaa !1
  %call8 = call i32 @check_psc_function(%struct.gs_context_state_s* %12, %struct.ref_s* %13, i32 0, i8* null, i32* %size) #4
  store i32 %call8, i32* %code, align 4, !tbaa !5
  %14 = load i32, i32* %code, align 4, !tbaa !5
  %cmp9 = icmp slt i32 %14, 0
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.7
  br label %fail

if.end.12:                                        ; preds = %if.end.7
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %15, i32 0, i32 1
  %alloc_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 16
  %16 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_string, align 8, !tbaa !16
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %18 = load i32, i32* %size, align 4, !tbaa !5
  %add = add nsw i32 %18, 1
  %call13 = call i8* %16(%struct.gs_memory_s* %17, i32 %add, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i32 0, i32 0)) #4
  store i8* %call13, i8** %ops, align 8, !tbaa !1
  %19 = load i8*, i8** %ops, align 8, !tbaa !1
  %cmp14 = icmp eq i8* %19, null
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.12
  store i32 -25, i32* %code, align 4, !tbaa !5
  br label %fail

if.end.17:                                        ; preds = %if.end.12
  store i32 0, i32* %size, align 4, !tbaa !5
  %20 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %21 = load %struct.ref_s*, %struct.ref_s** %proc, align 8, !tbaa !1
  %22 = load i8*, i8** %ops, align 8, !tbaa !1
  %call18 = call i32 @check_psc_function(%struct.gs_context_state_s* %20, %struct.ref_s* %21, i32 0, i8* %22, i32* %size) #4
  %23 = load i32, i32* %size, align 4, !tbaa !5
  %idxprom = sext i32 %23 to i64
  %24 = load i8*, i8** %ops, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %24, i64 %idxprom
  store i8 45, i8* %arrayidx, align 1, !tbaa !19
  %25 = load i8*, i8** %ops, align 8, !tbaa !1
  %ops19 = getelementptr inbounds %struct.gs_function_PtCr_params_s, %struct.gs_function_PtCr_params_s* %params, i32 0, i32 4
  %data20 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %ops19, i32 0, i32 0
  store i8* %25, i8** %data20, align 8, !tbaa !8
  %26 = load i32, i32* %size, align 4, !tbaa !5
  %add21 = add nsw i32 %26, 1
  %ops22 = getelementptr inbounds %struct.gs_function_PtCr_params_s, %struct.gs_function_PtCr_params_s* %params, i32 0, i32 4
  %size23 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %ops22, i32 0, i32 1
  store i32 %add21, i32* %size23, align 4, !tbaa !11
  %27 = load %struct.gs_function_s**, %struct.gs_function_s*** %ppfn.addr, align 8, !tbaa !1
  %28 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call24 = call i32 @gs_function_PtCr_init(%struct.gs_function_s** %27, %struct.gs_function_PtCr_params_s* %params, %struct.gs_memory_s* %28) #4
  store i32 %call24, i32* %code, align 4, !tbaa !5
  %29 = load i32, i32* %code, align 4, !tbaa !5
  %cmp25 = icmp sge i32 %29, 0
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.17
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.28:                                        ; preds = %if.end.17
  br label %fail

fail:                                             ; preds = %if.end.28, %if.then.16, %if.then.11, %if.then.6, %if.then
  %30 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  call void @gs_function_PtCr_free_params(%struct.gs_function_PtCr_params_s* %params, %struct.gs_memory_s* %30) #4
  %31 = load i32, i32* %code, align 4, !tbaa !5
  %cmp29 = icmp slt i32 %31, 0
  br i1 %cmp29, label %cond.true, label %cond.false

cond.true:                                        ; preds = %fail
  %32 = load i32, i32* %code, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %fail
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %32, %cond.true ], [ -15, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.then.27
  %33 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  %34 = bitcast i8** %ops to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  %35 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %36 = bitcast %struct.ref_s** %proc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #1
  %37 = bitcast %struct.gs_function_PtCr_params_s* %params to i8*
  call void @llvm.lifetime.end(i64 48, i8* %37) #1
  %38 = load i32, i32* %retval
  ret i32 %38
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @dict_find_string(%struct.ref_s*, i8*, %struct.ref_s**) #2

; Function Attrs: nounwind uwtable
define internal i32 @check_psc_function(%struct.gs_context_state_s* %i_ctx_p, %struct.ref_s* %pref, i32 %depth, i8* %ops, i32* %psize) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %pref.addr = alloca %struct.ref_s*, align 8
  %depth.addr = alloca i32, align 4
  %ops.addr = alloca i8*, align 8
  %psize.addr = alloca i32*, align 8
  %code = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %size = alloca i32, align 4
  %p = alloca i8*, align 8
  %r_tp = alloca %struct.ref_s, align 8
  %r_cttf = alloca %struct.ref_s, align 8
  %n_tp = alloca %struct.ref_s, align 8
  %n_cttf = alloca %struct.ref_s, align 8
  %v_tp = alloca %struct.ref_s*, align 8
  %v_cttf = alloca %struct.ref_s*, align 8
  %sz = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %n_elem = alloca i32, align 4
  %n_col = alloca i32, align 4
  %v = alloca %struct.ref_s, align 8
  %fv = alloca float, align 4
  %first = alloca i32, align 4
  %no_ops = alloca [5 x i8], align 1
  %elt = alloca %struct.ref_s, align 8
  %elt2 = alloca %struct.ref_s, align 8
  %elt3 = alloca %struct.ref_s, align 8
  %delp = alloca %struct.ref_s*, align 8
  %j307 = alloca i32, align 4
  %list = alloca %struct.gs_c_param_list_s, align 8
  %AllowRepeat = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_s* %pref, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  store i32 %depth, i32* %depth.addr, align 4, !tbaa !5
  store i8* %ops, i8** %ops.addr, align 8, !tbaa !1
  store i32* %psize, i32** %psize.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 2
  %5 = load i32, i32* %rsize, align 4, !tbaa !20
  store i32 %5, i32* %size, align 4, !tbaa !5
  %6 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load i32, i32* %size, align 4, !tbaa !5
  %cmp = icmp eq i32 %7, 2
  br i1 %cmp, label %land.lhs.true, label %if.end.207

land.lhs.true:                                    ; preds = %entry
  %8 = load i32, i32* %depth.addr, align 4, !tbaa !5
  %cmp1 = icmp eq i32 %8, 0
  br i1 %cmp1, label %if.then, label %if.end.207

if.then:                                          ; preds = %land.lhs.true
  %9 = bitcast %struct.ref_s* %r_tp to i8*
  call void @llvm.lifetime.start(i64 16, i8* %9) #1
  %10 = bitcast %struct.ref_s* %r_cttf to i8*
  call void @llvm.lifetime.start(i64 16, i8* %10) #1
  %11 = bitcast %struct.ref_s* %n_tp to i8*
  call void @llvm.lifetime.start(i64 16, i8* %11) #1
  %12 = bitcast %struct.ref_s* %n_cttf to i8*
  call void @llvm.lifetime.start(i64 16, i8* %12) #1
  %13 = bitcast %struct.ref_s** %v_tp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = bitcast %struct.ref_s** %v_cttf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = bitcast i32* %sz to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load i8*, i8** %ops.addr, align 8, !tbaa !1
  store i8* %16, i8** %p, align 8, !tbaa !1
  %17 = load i32*, i32** %psize.addr, align 8, !tbaa !1
  %18 = load i32, i32* %17, align 4, !tbaa !5
  store i32 %18, i32* %sz, align 4, !tbaa !5
  %19 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %19, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %20 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !21
  %21 = bitcast %struct.gs_ref_memory_s* %20 to %struct.gs_memory_s*
  %22 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %call = call i32 @array_get(%struct.gs_memory_s* %21, %struct.ref_s* %22, i64 0, %struct.ref_s* %r_tp) #4
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.198

if.end:                                           ; preds = %if.then
  %23 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory4 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %23, i32 0, i32 1
  %current5 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory4, i32 0, i32 0
  %24 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current5, align 8, !tbaa !21
  %25 = bitcast %struct.gs_ref_memory_s* %24 to %struct.gs_memory_s*
  %26 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %call6 = call i32 @array_get(%struct.gs_memory_s* %25, %struct.ref_s* %26, i64 1, %struct.ref_s* %r_cttf) #4
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.198

if.end.9:                                         ; preds = %if.end
  %tas10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %r_tp, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas10, i32 0, i32 0
  %27 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %27, i64 1
  %28 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv = zext i8 %28 to i32
  %cmp11 = icmp eq i32 %conv, 13
  br i1 %cmp11, label %land.lhs.true.13, label %if.end.197

land.lhs.true.13:                                 ; preds = %if.end.9
  %tas14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %r_cttf, i32 0, i32 0
  %type_attrs15 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas14, i32 0, i32 0
  %29 = bitcast i16* %type_attrs15 to i8*
  %arrayidx16 = getelementptr inbounds i8, i8* %29, i64 1
  %30 = load i8, i8* %arrayidx16, align 1, !tbaa !19
  %conv17 = zext i8 %30 to i32
  %cmp18 = icmp eq i32 %conv17, 13
  br i1 %cmp18, label %if.then.20, label %if.end.197

if.then.20:                                       ; preds = %land.lhs.true.13
  %31 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory21 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %31, i32 0, i32 1
  %current22 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory21, i32 0, i32 0
  %32 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current22, align 8, !tbaa !21
  %33 = bitcast %struct.gs_ref_memory_s* %32 to %struct.gs_memory_s*
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %33, i32 0, i32 2
  %34 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !31
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %34, i32 0, i32 16
  %35 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !32
  %call23 = call i32 @names_enter_string(%struct.name_table_s* %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), %struct.ref_s* %n_tp) #4
  store i32 %call23, i32* %code, align 4, !tbaa !5
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.then.20
  %36 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %36, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.198

if.end.27:                                        ; preds = %if.then.20
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %r_tp, i32 0, i32 1
  %pname = bitcast %union.v* %value to %struct.name_s**
  %37 = load %struct.name_s*, %struct.name_s** %pname, align 8, !tbaa !1
  %value28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %n_tp, i32 0, i32 1
  %pname29 = bitcast %union.v* %value28 to %struct.name_s**
  %38 = load %struct.name_s*, %struct.name_s** %pname29, align 8, !tbaa !1
  %cmp30 = icmp eq %struct.name_s* %37, %38
  br i1 %cmp30, label %if.then.32, label %if.end.196

if.then.32:                                       ; preds = %if.end.27
  %39 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory33 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %39, i32 0, i32 1
  %current34 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory33, i32 0, i32 0
  %40 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current34, align 8, !tbaa !21
  %41 = bitcast %struct.gs_ref_memory_s* %40 to %struct.gs_memory_s*
  %gs_lib_ctx35 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %41, i32 0, i32 2
  %42 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx35, align 8, !tbaa !31
  %gs_name_table36 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %42, i32 0, i32 16
  %43 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table36, align 8, !tbaa !32
  %call37 = call i32 @names_enter_string(%struct.name_table_s* %43, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i32 0, i32 0), %struct.ref_s* %n_cttf) #4
  store i32 %call37, i32* %code, align 4, !tbaa !5
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %if.then.32
  %44 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %44, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.198

if.end.41:                                        ; preds = %if.then.32
  %value42 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %r_cttf, i32 0, i32 1
  %pname43 = bitcast %union.v* %value42 to %struct.name_s**
  %45 = load %struct.name_s*, %struct.name_s** %pname43, align 8, !tbaa !1
  %value44 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %n_cttf, i32 0, i32 1
  %pname45 = bitcast %union.v* %value44 to %struct.name_s**
  %46 = load %struct.name_s*, %struct.name_s** %pname45, align 8, !tbaa !1
  %cmp46 = icmp eq %struct.name_s* %45, %46
  br i1 %cmp46, label %if.then.48, label %if.end.195

if.then.48:                                       ; preds = %if.end.41
  %47 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %47, i32 0, i32 24
  %48 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory49 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %48, i32 0, i32 1
  %current50 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory49, i32 0, i32 0
  %49 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current50, align 8, !tbaa !21
  %50 = bitcast %struct.gs_ref_memory_s* %49 to %struct.gs_memory_s*
  %gs_lib_ctx51 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %50, i32 0, i32 2
  %51 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx51, align 8, !tbaa !31
  %gs_name_table52 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %51, i32 0, i32 16
  %52 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table52, align 8, !tbaa !32
  %call53 = call i32 @names_index(%struct.name_table_s* %52, %struct.ref_s* %n_tp) #4
  %call54 = call %struct.ref_s* @dstack_find_name_by_index(%struct.dict_stack_s* %dict_stack, i32 %call53) #4
  store %struct.ref_s* %call54, %struct.ref_s** %v_tp, align 8, !tbaa !1
  %53 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack55 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %53, i32 0, i32 24
  %54 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory56 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %54, i32 0, i32 1
  %current57 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory56, i32 0, i32 0
  %55 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current57, align 8, !tbaa !21
  %56 = bitcast %struct.gs_ref_memory_s* %55 to %struct.gs_memory_s*
  %gs_lib_ctx58 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %56, i32 0, i32 2
  %57 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx58, align 8, !tbaa !31
  %gs_name_table59 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %57, i32 0, i32 16
  %58 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table59, align 8, !tbaa !32
  %call60 = call i32 @names_index(%struct.name_table_s* %58, %struct.ref_s* %n_cttf) #4
  %call61 = call %struct.ref_s* @dstack_find_name_by_index(%struct.dict_stack_s* %dict_stack55, i32 %call60) #4
  store %struct.ref_s* %call61, %struct.ref_s** %v_cttf, align 8, !tbaa !1
  %59 = load %struct.ref_s*, %struct.ref_s** %v_tp, align 8, !tbaa !1
  %tobool = icmp ne %struct.ref_s* %59, null
  br i1 %tobool, label %land.lhs.true.62, label %if.end.194

land.lhs.true.62:                                 ; preds = %if.then.48
  %60 = load %struct.ref_s*, %struct.ref_s** %v_cttf, align 8, !tbaa !1
  %tobool63 = icmp ne %struct.ref_s* %60, null
  br i1 %tobool63, label %land.lhs.true.64, label %if.end.194

land.lhs.true.64:                                 ; preds = %land.lhs.true.62
  %61 = load %struct.ref_s*, %struct.ref_s** %v_tp, align 8, !tbaa !1
  %tas65 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %61, i32 0, i32 0
  %type_attrs66 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas65, i32 0, i32 0
  %62 = load i16, i16* %type_attrs66, align 2, !tbaa !12
  %conv67 = zext i16 %62 to i32
  %and = and i32 %conv67, 15360
  %cmp68 = icmp eq i32 %and, 1024
  br i1 %cmp68, label %land.lhs.true.70, label %if.end.194

land.lhs.true.70:                                 ; preds = %land.lhs.true.64
  %63 = load %struct.ref_s*, %struct.ref_s** %v_cttf, align 8, !tbaa !1
  %tas71 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %63, i32 0, i32 0
  %type_attrs72 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas71, i32 0, i32 0
  %64 = load i16, i16* %type_attrs72, align 2, !tbaa !12
  %conv73 = zext i16 %64 to i32
  %and74 = and i32 %conv73, 15360
  %cmp75 = icmp eq i32 %and74, 1024
  br i1 %cmp75, label %if.then.77, label %if.end.194

if.then.77:                                       ; preds = %land.lhs.true.70
  %65 = bitcast i32* %n_elem to i8*
  call void @llvm.lifetime.start(i64 4, i8* %65) #1
  %66 = load %struct.ref_s*, %struct.ref_s** %v_tp, align 8, !tbaa !1
  %tas78 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %66, i32 0, i32 0
  %rsize79 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas78, i32 0, i32 2
  %67 = load i32, i32* %rsize79, align 4, !tbaa !20
  store i32 %67, i32* %n_elem, align 4, !tbaa !5
  %68 = load i32, i32* %n_elem, align 4, !tbaa !5
  %and80 = and i32 %68, 3
  %cmp81 = icmp eq i32 %and80, 0
  br i1 %cmp81, label %land.lhs.true.83, label %if.end.190

land.lhs.true.83:                                 ; preds = %if.then.77
  %69 = load %struct.ref_s*, %struct.ref_s** %v_cttf, align 8, !tbaa !1
  %tas84 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %69, i32 0, i32 0
  %rsize85 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas84, i32 0, i32 2
  %70 = load i32, i32* %rsize85, align 4, !tbaa !20
  %cmp86 = icmp eq i32 %70, 31
  br i1 %cmp86, label %if.then.88, label %if.end.190

if.then.88:                                       ; preds = %land.lhs.true.83
  %71 = bitcast i32* %n_col to i8*
  call void @llvm.lifetime.start(i64 4, i8* %71) #1
  %72 = load i32, i32* %n_elem, align 4, !tbaa !5
  %div = udiv i32 %72, 4
  store i32 %div, i32* %n_col, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.170, %if.then.88
  %73 = load i32, i32* %i, align 4, !tbaa !5
  %cmp89 = icmp ult i32 %73, 4
  br i1 %cmp89, label %for.body, label %for.end.172

for.body:                                         ; preds = %for.cond
  %74 = bitcast %struct.ref_s* %v to i8*
  call void @llvm.lifetime.start(i64 16, i8* %74) #1
  %75 = bitcast float* %fv to i8*
  call void @llvm.lifetime.start(i64 4, i8* %75) #1
  %76 = bitcast i32* %first to i8*
  call void @llvm.lifetime.start(i64 4, i8* %76) #1
  store i32 1, i32* %first, align 4, !tbaa !5
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.91

for.cond.91:                                      ; preds = %for.inc, %for.body
  %77 = load i32, i32* %j, align 4, !tbaa !5
  %78 = load i32, i32* %n_col, align 4, !tbaa !5
  %cmp92 = icmp ult i32 %77, %78
  br i1 %cmp92, label %for.body.94, label %for.end

for.body.94:                                      ; preds = %for.cond.91
  %79 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory95 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %79, i32 0, i32 1
  %current96 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory95, i32 0, i32 0
  %80 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current96, align 8, !tbaa !21
  %81 = bitcast %struct.gs_ref_memory_s* %80 to %struct.gs_memory_s*
  %82 = load %struct.ref_s*, %struct.ref_s** %v_tp, align 8, !tbaa !1
  %83 = load i32, i32* %j, align 4, !tbaa !5
  %mul = mul i32 %83, 4
  %84 = load i32, i32* %i, align 4, !tbaa !5
  %add = add i32 %mul, %84
  %conv97 = zext i32 %add to i64
  %call98 = call i32 @array_get(%struct.gs_memory_s* %81, %struct.ref_s* %82, i64 %conv97, %struct.ref_s* %v) #4
  %cmp99 = icmp slt i32 %call98, 0
  br i1 %cmp99, label %if.then.101, label %if.end.102

if.then.101:                                      ; preds = %for.body.94
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.102:                                       ; preds = %for.body.94
  %tas103 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %v, i32 0, i32 0
  %type_attrs104 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas103, i32 0, i32 0
  %85 = bitcast i16* %type_attrs104 to i8*
  %arrayidx105 = getelementptr inbounds i8, i8* %85, i64 1
  %86 = load i8, i8* %arrayidx105, align 1, !tbaa !19
  %conv106 = zext i8 %86 to i32
  %cmp107 = icmp eq i32 %conv106, 11
  br i1 %cmp107, label %if.then.109, label %if.else

if.then.109:                                      ; preds = %if.end.102
  %value110 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %v, i32 0, i32 1
  %intval = bitcast %union.v* %value110 to i64*
  %87 = load i64, i64* %intval, align 8, !tbaa !34
  %conv111 = sitofp i64 %87 to float
  store float %conv111, float* %fv, align 4, !tbaa !35
  br label %if.end.122

if.else:                                          ; preds = %if.end.102
  %tas112 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %v, i32 0, i32 0
  %type_attrs113 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas112, i32 0, i32 0
  %88 = bitcast i16* %type_attrs113 to i8*
  %arrayidx114 = getelementptr inbounds i8, i8* %88, i64 1
  %89 = load i8, i8* %arrayidx114, align 1, !tbaa !19
  %conv115 = zext i8 %89 to i32
  %cmp116 = icmp eq i32 %conv115, 16
  br i1 %cmp116, label %if.then.118, label %if.else.120

if.then.118:                                      ; preds = %if.else
  %value119 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %v, i32 0, i32 1
  %realval = bitcast %union.v* %value119 to float*
  %90 = load float, float* %realval, align 4, !tbaa !35
  store float %90, float* %fv, align 4, !tbaa !35
  br label %if.end.121

if.else.120:                                      ; preds = %if.else
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.121:                                       ; preds = %if.then.118
  br label %if.end.122

if.end.122:                                       ; preds = %if.end.121, %if.then.109
  %91 = load float, float* %fv, align 4, !tbaa !35
  %conv123 = fpext float %91 to double
  %cmp124 = fcmp une double %conv123, 0.000000e+00
  br i1 %cmp124, label %if.then.126, label %if.end.159

if.then.126:                                      ; preds = %if.end.122
  %92 = load i32, i32* %first, align 4, !tbaa !5
  %tobool127 = icmp ne i32 %92, 0
  br i1 %tobool127, label %if.then.128, label %if.end.131

if.then.128:                                      ; preds = %if.then.126
  %call129 = call i32 @put_int(i8** %p, i32 1) #4
  %93 = load i32, i32* %sz, align 4, !tbaa !5
  %add130 = add nsw i32 %93, %call129
  store i32 %add130, i32* %sz, align 4, !tbaa !5
  br label %if.end.131

if.end.131:                                       ; preds = %if.then.128, %if.then.126
  %call132 = call i32 @put_int(i8** %p, i32 1) #4
  %94 = load i32, i32* %sz, align 4, !tbaa !5
  %add133 = add nsw i32 %94, %call132
  store i32 %add133, i32* %sz, align 4, !tbaa !5
  %95 = load i32, i32* %n_col, align 4, !tbaa !5
  %add134 = add i32 %95, 1
  %96 = load i32, i32* %j, align 4, !tbaa !5
  %sub = sub i32 %add134, %96
  %97 = load i32, i32* %i, align 4, !tbaa !5
  %add135 = add i32 %sub, %97
  %98 = load i32, i32* %first, align 4, !tbaa !5
  %tobool136 = icmp ne i32 %98, 0
  %lnot = xor i1 %tobool136, true
  %lnot.ext = zext i1 %lnot to i32
  %add137 = add i32 %add135, %lnot.ext
  %call138 = call i32 @put_int(i8** %p, i32 %add137) #4
  %99 = load i32, i32* %sz, align 4, !tbaa !5
  %add139 = add nsw i32 %99, %call138
  store i32 %add139, i32* %sz, align 4, !tbaa !5
  %call140 = call i32 @put_op(i8** %p, i8 zeroext 35) #4
  %100 = load i32, i32* %sz, align 4, !tbaa !5
  %add141 = add nsw i32 %100, %call140
  store i32 %add141, i32* %sz, align 4, !tbaa !5
  %101 = load float, float* %fv, align 4, !tbaa !35
  %conv142 = fpext float %101 to double
  %cmp143 = fcmp une double %conv142, 1.000000e+00
  br i1 %cmp143, label %if.then.145, label %if.end.150

if.then.145:                                      ; preds = %if.end.131
  %102 = load float, float* %fv, align 4, !tbaa !35
  %call146 = call i32 @put_float(i8** %p, float %102) #4
  %103 = load i32, i32* %sz, align 4, !tbaa !5
  %add147 = add nsw i32 %103, %call146
  store i32 %add147, i32* %sz, align 4, !tbaa !5
  %call148 = call i32 @put_op(i8** %p, i8 zeroext 16) #4
  %104 = load i32, i32* %sz, align 4, !tbaa !5
  %add149 = add nsw i32 %104, %call148
  store i32 %add149, i32* %sz, align 4, !tbaa !5
  br label %if.end.150

if.end.150:                                       ; preds = %if.then.145, %if.end.131
  %call151 = call i32 @put_op(i8** %p, i8 zeroext 23) #4
  %105 = load i32, i32* %sz, align 4, !tbaa !5
  %add152 = add nsw i32 %105, %call151
  store i32 %add152, i32* %sz, align 4, !tbaa !5
  %106 = load i32, i32* %first, align 4, !tbaa !5
  %tobool153 = icmp ne i32 %106, 0
  br i1 %tobool153, label %if.then.154, label %if.else.155

if.then.154:                                      ; preds = %if.end.150
  store i32 0, i32* %first, align 4, !tbaa !5
  br label %if.end.158

if.else.155:                                      ; preds = %if.end.150
  %call156 = call i32 @put_op(i8** %p, i8 zeroext 16) #4
  %107 = load i32, i32* %sz, align 4, !tbaa !5
  %add157 = add nsw i32 %107, %call156
  store i32 %add157, i32* %sz, align 4, !tbaa !5
  br label %if.end.158

if.end.158:                                       ; preds = %if.else.155, %if.then.154
  br label %if.end.159

if.end.159:                                       ; preds = %if.end.158, %if.end.122
  br label %for.inc

for.inc:                                          ; preds = %if.end.159
  %108 = load i32, i32* %j, align 4, !tbaa !5
  %inc = add i32 %108, 1
  store i32 %inc, i32* %j, align 4, !tbaa !5
  br label %for.cond.91

for.end:                                          ; preds = %for.cond.91
  %109 = load i32, i32* %first, align 4, !tbaa !5
  %tobool160 = icmp ne i32 %109, 0
  br i1 %tobool160, label %if.then.161, label %if.else.164

if.then.161:                                      ; preds = %for.end
  %call162 = call i32 @put_int(i8** %p, i32 0) #4
  %110 = load i32, i32* %sz, align 4, !tbaa !5
  %add163 = add nsw i32 %110, %call162
  store i32 %add163, i32* %sz, align 4, !tbaa !5
  br label %if.end.167

if.else.164:                                      ; preds = %for.end
  %call165 = call i32 @put_op(i8** %p, i8 zeroext 23) #4
  %111 = load i32, i32* %sz, align 4, !tbaa !5
  %add166 = add nsw i32 %111, %call165
  store i32 %add166, i32* %sz, align 4, !tbaa !5
  br label %if.end.167

if.end.167:                                       ; preds = %if.else.164, %if.then.161
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else.120, %if.then.101, %if.end.167
  %112 = bitcast i32* %first to i8*
  call void @llvm.lifetime.end(i64 4, i8* %112) #1
  %113 = bitcast float* %fv to i8*
  call void @llvm.lifetime.end(i64 4, i8* %113) #1
  %114 = bitcast %struct.ref_s* %v to i8*
  call void @llvm.lifetime.end(i64 16, i8* %114) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.189 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc.170

for.inc.170:                                      ; preds = %cleanup.cont
  %115 = load i32, i32* %i, align 4, !tbaa !5
  %inc171 = add i32 %115, 1
  store i32 %inc171, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end.172:                                      ; preds = %for.cond
  %116 = load i32, i32* %n_col, align 4, !tbaa !5
  %add173 = add i32 %116, 4
  %call174 = call i32 @put_int(i8** %p, i32 %add173) #4
  %117 = load i32, i32* %sz, align 4, !tbaa !5
  %add175 = add nsw i32 %117, %call174
  store i32 %add175, i32* %sz, align 4, !tbaa !5
  %call176 = call i32 @put_int(i8** %p, i32 4) #4
  %118 = load i32, i32* %sz, align 4, !tbaa !5
  %add177 = add nsw i32 %118, %call176
  store i32 %add177, i32* %sz, align 4, !tbaa !5
  %call178 = call i32 @put_op(i8** %p, i8 zeroext 37) #4
  %119 = load i32, i32* %sz, align 4, !tbaa !5
  %add179 = add nsw i32 %119, %call178
  store i32 %add179, i32* %sz, align 4, !tbaa !5
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.180

for.cond.180:                                     ; preds = %for.inc.186, %for.end.172
  %120 = load i32, i32* %j, align 4, !tbaa !5
  %121 = load i32, i32* %n_col, align 4, !tbaa !5
  %cmp181 = icmp ult i32 %120, %121
  br i1 %cmp181, label %for.body.183, label %for.end.188

for.body.183:                                     ; preds = %for.cond.180
  %call184 = call i32 @put_op(i8** %p, i8 zeroext 36) #4
  %122 = load i32, i32* %sz, align 4, !tbaa !5
  %add185 = add nsw i32 %122, %call184
  store i32 %add185, i32* %sz, align 4, !tbaa !5
  br label %for.inc.186

for.inc.186:                                      ; preds = %for.body.183
  %123 = load i32, i32* %j, align 4, !tbaa !5
  %inc187 = add i32 %123, 1
  store i32 %inc187, i32* %j, align 4, !tbaa !5
  br label %for.cond.180

for.end.188:                                      ; preds = %for.cond.180
  %124 = load i32, i32* %sz, align 4, !tbaa !5
  %125 = load i32*, i32** %psize.addr, align 8, !tbaa !1
  store i32 %124, i32* %125, align 4, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.189

cleanup.189:                                      ; preds = %for.end.188, %cleanup
  %126 = bitcast i32* %n_col to i8*
  call void @llvm.lifetime.end(i64 4, i8* %126) #1
  br label %cleanup.191

if.end.190:                                       ; preds = %land.lhs.true.83, %if.then.77
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.191

cleanup.191:                                      ; preds = %if.end.190, %cleanup.189
  %127 = bitcast i32* %n_elem to i8*
  call void @llvm.lifetime.end(i64 4, i8* %127) #1
  %cleanup.dest.192 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.192, label %cleanup.198 [
    i32 0, label %cleanup.cont.193
  ]

cleanup.cont.193:                                 ; preds = %cleanup.191
  br label %if.end.194

if.end.194:                                       ; preds = %cleanup.cont.193, %land.lhs.true.70, %land.lhs.true.64, %land.lhs.true.62, %if.then.48
  br label %if.end.195

if.end.195:                                       ; preds = %if.end.194, %if.end.41
  br label %if.end.196

if.end.196:                                       ; preds = %if.end.195, %if.end.27
  br label %if.end.197

if.end.197:                                       ; preds = %if.end.196, %land.lhs.true.13, %if.end.9
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.198

cleanup.198:                                      ; preds = %if.then.8, %if.then.3, %if.end.197, %cleanup.191, %if.then.40, %if.then.26
  %128 = bitcast i32* %sz to i8*
  call void @llvm.lifetime.end(i64 4, i8* %128) #1
  %129 = bitcast %struct.ref_s** %v_cttf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %129) #1
  %130 = bitcast %struct.ref_s** %v_tp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %130) #1
  %131 = bitcast %struct.ref_s* %n_cttf to i8*
  call void @llvm.lifetime.end(i64 16, i8* %131) #1
  %132 = bitcast %struct.ref_s* %n_tp to i8*
  call void @llvm.lifetime.end(i64 16, i8* %132) #1
  %133 = bitcast %struct.ref_s* %r_cttf to i8*
  call void @llvm.lifetime.end(i64 16, i8* %133) #1
  %134 = bitcast %struct.ref_s* %r_tp to i8*
  call void @llvm.lifetime.end(i64 16, i8* %134) #1
  %cleanup.dest.205 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.205, label %cleanup.453 [
    i32 0, label %cleanup.cont.206
    i32 2, label %idiom_failed
  ]

cleanup.cont.206:                                 ; preds = %cleanup.198
  br label %if.end.207

if.end.207:                                       ; preds = %cleanup.cont.206, %land.lhs.true, %entry
  br label %idiom_failed

idiom_failed:                                     ; preds = %if.end.207, %cleanup.198
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.208

for.cond.208:                                     ; preds = %for.inc.450, %idiom_failed
  %135 = load i32, i32* %i, align 4, !tbaa !5
  %136 = load i32, i32* %size, align 4, !tbaa !5
  %cmp209 = icmp ult i32 %135, %136
  br i1 %cmp209, label %for.body.211, label %for.end.452

for.body.211:                                     ; preds = %for.cond.208
  %137 = bitcast [5 x i8]* %no_ops to i8*
  call void @llvm.lifetime.start(i64 5, i8* %137) #1
  %138 = bitcast %struct.ref_s* %elt to i8*
  call void @llvm.lifetime.start(i64 16, i8* %138) #1
  %139 = bitcast %struct.ref_s* %elt2 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %139) #1
  %140 = bitcast %struct.ref_s* %elt3 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %140) #1
  %141 = bitcast %struct.ref_s** %delp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %141) #1
  %142 = load i8*, i8** %ops.addr, align 8, !tbaa !1
  %tobool212 = icmp ne i8* %142, null
  br i1 %tobool212, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.211
  %143 = load i8*, i8** %ops.addr, align 8, !tbaa !1
  %144 = load i32*, i32** %psize.addr, align 8, !tbaa !1
  %145 = load i32, i32* %144, align 4, !tbaa !5
  %idx.ext = sext i32 %145 to i64
  %add.ptr = getelementptr inbounds i8, i8* %143, i64 %idx.ext
  br label %cond.end

cond.false:                                       ; preds = %for.body.211
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %no_ops, i32 0, i32 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %add.ptr, %cond.true ], [ %arraydecay, %cond.false ]
  store i8* %cond, i8** %p, align 8, !tbaa !1
  %146 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory213 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %146, i32 0, i32 1
  %current214 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory213, i32 0, i32 0
  %147 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current214, align 8, !tbaa !21
  %148 = bitcast %struct.gs_ref_memory_s* %147 to %struct.gs_memory_s*
  %149 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %150 = load i32, i32* %i, align 4, !tbaa !5
  %conv215 = zext i32 %150 to i64
  %call216 = call i32 @array_get(%struct.gs_memory_s* %148, %struct.ref_s* %149, i64 %conv215, %struct.ref_s* %elt) #4
  %tas217 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %elt, i32 0, i32 0
  %type_attrs218 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas217, i32 0, i32 0
  %151 = load i16, i16* %type_attrs218, align 2, !tbaa !12
  %conv219 = zext i16 %151 to i32
  %cmp220 = icmp sge i32 %conv219, 5376
  br i1 %cmp220, label %cond.true.222, label %cond.false.223

cond.true.222:                                    ; preds = %cond.end
  br label %cond.end.228

cond.false.223:                                   ; preds = %cond.end
  %tas224 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %elt, i32 0, i32 0
  %type_attrs225 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas224, i32 0, i32 0
  %152 = bitcast i16* %type_attrs225 to i8*
  %arrayidx226 = getelementptr inbounds i8, i8* %152, i64 1
  %153 = load i8, i8* %arrayidx226, align 1, !tbaa !19
  %conv227 = zext i8 %153 to i32
  br label %cond.end.228

cond.end.228:                                     ; preds = %cond.false.223, %cond.true.222
  %cond229 = phi i32 [ 15, %cond.true.222 ], [ %conv227, %cond.false.223 ]
  switch i32 %cond229, label %sw.default [
    i32 11, label %sw.bb
    i32 16, label %sw.bb.235
    i32 1, label %sw.bb.240
    i32 13, label %sw.bb.247
    i32 15, label %sw.bb.306
  ]

sw.bb:                                            ; preds = %cond.end.228
  %value230 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %elt, i32 0, i32 1
  %intval231 = bitcast %union.v* %value230 to i64*
  %154 = load i64, i64* %intval231, align 8, !tbaa !34
  %conv232 = trunc i64 %154 to i32
  %call233 = call i32 @put_int(i8** %p, i32 %conv232) #4
  %155 = load i32*, i32** %psize.addr, align 8, !tbaa !1
  %156 = load i32, i32* %155, align 4, !tbaa !5
  %add234 = add nsw i32 %156, %call233
  store i32 %add234, i32* %155, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.235:                                        ; preds = %cond.end.228
  %value236 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %elt, i32 0, i32 1
  %realval237 = bitcast %union.v* %value236 to float*
  %157 = load float, float* %realval237, align 4, !tbaa !35
  %call238 = call i32 @put_float(i8** %p, float %157) #4
  %158 = load i32*, i32** %psize.addr, align 8, !tbaa !1
  %159 = load i32, i32* %158, align 4, !tbaa !5
  %add239 = add nsw i32 %159, %call238
  store i32 %add239, i32* %158, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.240:                                        ; preds = %cond.end.228
  %value241 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %elt, i32 0, i32 1
  %boolval = bitcast %union.v* %value241 to i16*
  %160 = load i16, i16* %boolval, align 2, !tbaa !37
  %conv242 = zext i16 %160 to i32
  %tobool243 = icmp ne i32 %conv242, 0
  %cond244 = select i1 %tobool243, i32 41, i32 42
  %conv245 = trunc i32 %cond244 to i8
  %161 = load i8*, i8** %p, align 8, !tbaa !1
  store i8 %conv245, i8* %161, align 1, !tbaa !19
  %162 = load i32*, i32** %psize.addr, align 8, !tbaa !1
  %163 = load i32, i32* %162, align 4, !tbaa !5
  %inc246 = add nsw i32 %163, 1
  store i32 %inc246, i32* %162, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.247:                                        ; preds = %cond.end.228
  %tas248 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %elt, i32 0, i32 0
  %type_attrs249 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas248, i32 0, i32 0
  %164 = load i16, i16* %type_attrs249, align 2, !tbaa !12
  %conv250 = zext i16 %164 to i32
  %and251 = and i32 %conv250, 128
  %tobool252 = icmp ne i32 %and251, 0
  br i1 %tobool252, label %if.end.254, label %if.then.253

if.then.253:                                      ; preds = %sw.bb.247
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.443

if.end.254:                                       ; preds = %sw.bb.247
  %165 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory255 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %165, i32 0, i32 1
  %current256 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory255, i32 0, i32 0
  %166 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current256, align 8, !tbaa !21
  %167 = bitcast %struct.gs_ref_memory_s* %166 to %struct.gs_memory_s*
  %gs_lib_ctx257 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %167, i32 0, i32 2
  %168 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx257, align 8, !tbaa !31
  %gs_name_table258 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %168, i32 0, i32 16
  %169 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table258, align 8, !tbaa !32
  call void @names_string_ref(%struct.name_table_s* %169, %struct.ref_s* %elt, %struct.ref_s* %elt) #4
  %value259 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %elt, i32 0, i32 1
  %bytes = bitcast %union.v* %value259 to i8**
  %170 = load i8*, i8** %bytes, align 8, !tbaa !1
  %tas260 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %elt, i32 0, i32 0
  %rsize261 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas260, i32 0, i32 2
  %171 = load i32, i32* %rsize261, align 4, !tbaa !20
  %call262 = call i32 @bytes_compare(i8* %170, i32 %171, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 4) #4
  %tobool263 = icmp ne i32 %call262, 0
  br i1 %tobool263, label %if.end.266, label %if.then.264

if.then.264:                                      ; preds = %if.end.254
  %172 = load i8*, i8** %p, align 8, !tbaa !1
  store i8 41, i8* %172, align 1, !tbaa !19
  %173 = load i32*, i32** %psize.addr, align 8, !tbaa !1
  %174 = load i32, i32* %173, align 4, !tbaa !5
  %inc265 = add nsw i32 %174, 1
  store i32 %inc265, i32* %173, align 4, !tbaa !5
  br label %sw.epilog

if.end.266:                                       ; preds = %if.end.254
  %value267 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %elt, i32 0, i32 1
  %bytes268 = bitcast %union.v* %value267 to i8**
  %175 = load i8*, i8** %bytes268, align 8, !tbaa !1
  %tas269 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %elt, i32 0, i32 0
  %rsize270 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas269, i32 0, i32 2
  %176 = load i32, i32* %rsize270, align 4, !tbaa !20
  %call271 = call i32 @bytes_compare(i8* %175, i32 %176, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i32 5) #4
  %tobool272 = icmp ne i32 %call271, 0
  br i1 %tobool272, label %if.end.275, label %if.then.273

if.then.273:                                      ; preds = %if.end.266
  %177 = load i8*, i8** %p, align 8, !tbaa !1
  store i8 42, i8* %177, align 1, !tbaa !19
  %178 = load i32*, i32** %psize.addr, align 8, !tbaa !1
  %179 = load i32, i32* %178, align 4, !tbaa !5
  %inc274 = add nsw i32 %179, 1
  store i32 %inc274, i32* %178, align 4, !tbaa !5
  br label %sw.epilog

if.end.275:                                       ; preds = %if.end.266
  %180 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack276 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %180, i32 0, i32 24
  %system_dict = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack276, i32 0, i32 7
  %call277 = call i32 @dict_find(%struct.ref_s* %system_dict, %struct.ref_s* %elt, %struct.ref_s** %delp) #4
  %cmp278 = icmp sle i32 %call277, 0
  br i1 %cmp278, label %if.then.280, label %if.end.281

if.then.280:                                      ; preds = %if.end.275
  store i32 -21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.443

if.end.281:                                       ; preds = %if.end.275
  %181 = load %struct.ref_s*, %struct.ref_s** %delp, align 8, !tbaa !1
  %tas282 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %181, i32 0, i32 0
  %type_attrs283 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas282, i32 0, i32 0
  %182 = load i16, i16* %type_attrs283, align 2, !tbaa !12
  %conv284 = zext i16 %182 to i32
  %cmp285 = icmp sge i32 %conv284, 5376
  br i1 %cmp285, label %cond.true.287, label %cond.false.288

cond.true.287:                                    ; preds = %if.end.281
  br label %cond.end.293

cond.false.288:                                   ; preds = %if.end.281
  %183 = load %struct.ref_s*, %struct.ref_s** %delp, align 8, !tbaa !1
  %tas289 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %183, i32 0, i32 0
  %type_attrs290 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas289, i32 0, i32 0
  %184 = bitcast i16* %type_attrs290 to i8*
  %arrayidx291 = getelementptr inbounds i8, i8* %184, i64 1
  %185 = load i8, i8* %arrayidx291, align 1, !tbaa !19
  %conv292 = zext i8 %185 to i32
  br label %cond.end.293

cond.end.293:                                     ; preds = %cond.false.288, %cond.true.287
  %cond294 = phi i32 [ 15, %cond.true.287 ], [ %conv292, %cond.false.288 ]
  %cmp295 = icmp ne i32 %cond294, 15
  br i1 %cmp295, label %if.then.297, label %if.end.298

if.then.297:                                      ; preds = %cond.end.293
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.443

if.end.298:                                       ; preds = %cond.end.293
  %186 = load %struct.ref_s*, %struct.ref_s** %delp, align 8, !tbaa !1
  %tas299 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %186, i32 0, i32 0
  %type_attrs300 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas299, i32 0, i32 0
  %187 = load i16, i16* %type_attrs300, align 2, !tbaa !12
  %conv301 = zext i16 %187 to i32
  %and302 = and i32 %conv301, 128
  %tobool303 = icmp ne i32 %and302, 0
  br i1 %tobool303, label %if.end.305, label %if.then.304

if.then.304:                                      ; preds = %if.end.298
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.443

if.end.305:                                       ; preds = %if.end.298
  %188 = load %struct.ref_s*, %struct.ref_s** %delp, align 8, !tbaa !1
  %189 = bitcast %struct.ref_s* %elt to i8*
  %190 = bitcast %struct.ref_s* %188 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %189, i8* %190, i64 16, i32 8, i1 false), !tbaa.struct !38
  br label %sw.bb.306

sw.bb.306:                                        ; preds = %cond.end.228, %if.end.305
  %191 = bitcast i32* %j307 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %191) #1
  store i32 0, i32* %j307, align 4, !tbaa !5
  br label %for.cond.308

for.cond.308:                                     ; preds = %for.inc.323, %sw.bb.306
  %192 = load i32, i32* %j307, align 4, !tbaa !5
  %conv309 = sext i32 %192 to i64
  %cmp310 = icmp ult i64 %conv309, 39
  br i1 %cmp310, label %for.body.312, label %for.end.325

for.body.312:                                     ; preds = %for.cond.308
  %value313 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %elt, i32 0, i32 1
  %opproc = bitcast %union.v* %value313 to i32 (%struct.gs_context_state_s*)**
  %193 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %opproc, align 8, !tbaa !1
  %194 = load i32, i32* %j307, align 4, !tbaa !5
  %idxprom = sext i32 %194 to i64
  %arrayidx314 = getelementptr inbounds [39 x %struct.calc_op_s], [39 x %struct.calc_op_s]* @calc_ops, i32 0, i64 %idxprom
  %proc = getelementptr inbounds %struct.calc_op_s, %struct.calc_op_s* %arrayidx314, i32 0, i32 0
  %195 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %proc, align 8, !tbaa !39
  %cmp315 = icmp eq i32 (%struct.gs_context_state_s*)* %193, %195
  br i1 %cmp315, label %if.then.317, label %if.end.322

if.then.317:                                      ; preds = %for.body.312
  %196 = load i32, i32* %j307, align 4, !tbaa !5
  %idxprom318 = sext i32 %196 to i64
  %arrayidx319 = getelementptr inbounds [39 x %struct.calc_op_s], [39 x %struct.calc_op_s]* @calc_ops, i32 0, i64 %idxprom318
  %opcode = getelementptr inbounds %struct.calc_op_s, %struct.calc_op_s* %arrayidx319, i32 0, i32 1
  %197 = load i32, i32* %opcode, align 4, !tbaa !41
  %conv320 = trunc i32 %197 to i8
  %198 = load i8*, i8** %p, align 8, !tbaa !1
  store i8 %conv320, i8* %198, align 1, !tbaa !19
  %199 = load i32*, i32** %psize.addr, align 8, !tbaa !1
  %200 = load i32, i32* %199, align 4, !tbaa !5
  %inc321 = add nsw i32 %200, 1
  store i32 %inc321, i32* %199, align 4, !tbaa !5
  store i32 19, i32* %cleanup.dest.slot
  br label %cleanup.326

if.end.322:                                       ; preds = %for.body.312
  br label %for.inc.323

for.inc.323:                                      ; preds = %if.end.322
  %201 = load i32, i32* %j307, align 4, !tbaa !5
  %inc324 = add nsw i32 %201, 1
  store i32 %inc324, i32* %j307, align 4, !tbaa !5
  br label %for.cond.308

for.end.325:                                      ; preds = %for.cond.308
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.326

cleanup.326:                                      ; preds = %if.then.317, %for.end.325
  %202 = bitcast i32* %j307 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %202) #1
  %cleanup.dest442 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest442, label %cleanup.443 [
    i32 19, label %next
  ]

sw.default:                                       ; preds = %cond.end.228
  %tas327 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %elt, i32 0, i32 0
  %type_attrs328 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas327, i32 0, i32 0
  %203 = load i16, i16* %type_attrs328, align 2, !tbaa !12
  %conv329 = zext i16 %203 to i32
  %and330 = and i32 %conv329, 15552
  %cmp331 = icmp eq i32 %and330, 1216
  br i1 %cmp331, label %if.end.334, label %if.then.333

if.then.333:                                      ; preds = %sw.default
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.443

if.end.334:                                       ; preds = %sw.default
  %204 = load i32, i32* %depth.addr, align 4, !tbaa !5
  %cmp335 = icmp eq i32 %204, 10
  br i1 %cmp335, label %if.then.337, label %if.end.338

if.then.337:                                      ; preds = %if.end.334
  store i32 -13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.443

if.end.338:                                       ; preds = %if.end.334
  %205 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory339 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %205, i32 0, i32 1
  %current340 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory339, i32 0, i32 0
  %206 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current340, align 8, !tbaa !21
  %207 = bitcast %struct.gs_ref_memory_s* %206 to %struct.gs_memory_s*
  %208 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %209 = load i32, i32* %i, align 4, !tbaa !5
  %inc341 = add i32 %209, 1
  store i32 %inc341, i32* %i, align 4, !tbaa !5
  %conv342 = zext i32 %inc341 to i64
  %call343 = call i32 @array_get(%struct.gs_memory_s* %207, %struct.ref_s* %208, i64 %conv342, %struct.ref_s* %elt2) #4
  store i32 %call343, i32* %code, align 4, !tbaa !5
  %cmp344 = icmp slt i32 %call343, 0
  br i1 %cmp344, label %if.then.346, label %if.end.347

if.then.346:                                      ; preds = %if.end.338
  %210 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %210, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.443

if.end.347:                                       ; preds = %if.end.338
  %211 = load i32*, i32** %psize.addr, align 8, !tbaa !1
  %212 = load i32, i32* %211, align 4, !tbaa !5
  %add348 = add nsw i32 %212, 3
  store i32 %add348, i32* %211, align 4, !tbaa !5
  %213 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %214 = load i32, i32* %depth.addr, align 4, !tbaa !5
  %add349 = add nsw i32 %214, 1
  %215 = load i8*, i8** %ops.addr, align 8, !tbaa !1
  %216 = load i32*, i32** %psize.addr, align 8, !tbaa !1
  %call350 = call i32 @check_psc_function(%struct.gs_context_state_s* %213, %struct.ref_s* %elt, i32 %add349, i8* %215, i32* %216) #4
  store i32 %call350, i32* %code, align 4, !tbaa !5
  %217 = load i32, i32* %code, align 4, !tbaa !5
  %cmp351 = icmp slt i32 %217, 0
  br i1 %cmp351, label %if.then.353, label %if.end.354

if.then.353:                                      ; preds = %if.end.347
  %218 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %218, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.443

if.end.354:                                       ; preds = %if.end.347
  %219 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call355 = call i32 @resolves_to_oper(%struct.gs_context_state_s* %219, %struct.ref_s* %elt2, i32 (%struct.gs_context_state_s*)* @zrepeat) #4
  %tobool356 = icmp ne i32 %call355, 0
  br i1 %tobool356, label %if.then.357, label %if.else.386

if.then.357:                                      ; preds = %if.end.354
  %220 = bitcast %struct.gs_c_param_list_s* %list to i8*
  call void @llvm.lifetime.start(i64 56, i8* %220) #1
  %221 = bitcast i32* %AllowRepeat to i8*
  call void @llvm.lifetime.start(i64 4, i8* %221) #1
  store i32 1, i32* %AllowRepeat, align 4, !tbaa !5
  %222 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %222, i32 0, i32 0
  %223 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !42
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %223, i32 0, i32 78
  %224 = load %struct.gx_device_s*, %struct.gx_device_s** %device, align 8, !tbaa !43
  %memory358 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %224, i32 0, i32 3
  %225 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory358, align 8, !tbaa !57
  call void @gs_c_param_list_write(%struct.gs_c_param_list_s* %list, %struct.gs_memory_s* %225) #4
  %226 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs359 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %226, i32 0, i32 0
  %227 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs359, align 8, !tbaa !42
  %device360 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %227, i32 0, i32 78
  %228 = load %struct.gx_device_s*, %struct.gx_device_s** %device360, align 8, !tbaa !43
  %229 = bitcast %struct.gs_c_param_list_s* %list to %struct.gs_param_list_s*
  %call361 = call i32 @gs_get_device_or_hw_params(%struct.gx_device_s* %228, %struct.gs_param_list_s* %229, i32 0) #4
  store i32 %call361, i32* %code, align 4, !tbaa !5
  %230 = load i32, i32* %code, align 4, !tbaa !5
  %cmp362 = icmp slt i32 %230, 0
  br i1 %cmp362, label %if.then.364, label %if.end.365

if.then.364:                                      ; preds = %if.then.357
  %231 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %231, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.382

if.end.365:                                       ; preds = %if.then.357
  call void @gs_c_param_list_read(%struct.gs_c_param_list_s* %list) #4
  %232 = bitcast %struct.gs_c_param_list_s* %list to %struct.gs_param_list_s*
  %call366 = call i32 @param_read_bool(%struct.gs_param_list_s* %232, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i32 0, i32 0), i32* %AllowRepeat) #4
  store i32 %call366, i32* %code, align 4, !tbaa !5
  %233 = load i32, i32* %code, align 4, !tbaa !5
  %cmp367 = icmp slt i32 %233, 0
  br i1 %cmp367, label %if.then.369, label %if.end.370

if.then.369:                                      ; preds = %if.end.365
  %234 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %234, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.382

if.end.370:                                       ; preds = %if.end.365
  call void @gs_c_param_list_release(%struct.gs_c_param_list_s* %list) #4
  %235 = load i32, i32* %AllowRepeat, align 4, !tbaa !5
  %tobool371 = icmp ne i32 %235, 0
  br i1 %tobool371, label %if.end.373, label %if.then.372

if.then.372:                                      ; preds = %if.end.370
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.382

if.end.373:                                       ; preds = %if.end.370
  %236 = load i8*, i8** %ops.addr, align 8, !tbaa !1
  %tobool374 = icmp ne i8* %236, null
  br i1 %tobool374, label %if.then.375, label %if.end.380

if.then.375:                                      ; preds = %if.end.373
  %237 = load i8*, i8** %p, align 8, !tbaa !1
  store i8 46, i8* %237, align 1, !tbaa !19
  %238 = load i8*, i8** %p, align 8, !tbaa !1
  %239 = load i8*, i8** %ops.addr, align 8, !tbaa !1
  %240 = load i32*, i32** %psize.addr, align 8, !tbaa !1
  %241 = load i32, i32* %240, align 4, !tbaa !5
  %idx.ext376 = sext i32 %241 to i64
  %add.ptr377 = getelementptr inbounds i8, i8* %239, i64 %idx.ext376
  call void @psc_fixup(i8* %238, i8* %add.ptr377) #4
  %242 = load i8*, i8** %ops.addr, align 8, !tbaa !1
  %243 = load i32*, i32** %psize.addr, align 8, !tbaa !1
  %244 = load i32, i32* %243, align 4, !tbaa !5
  %idx.ext378 = sext i32 %244 to i64
  %add.ptr379 = getelementptr inbounds i8, i8* %242, i64 %idx.ext378
  store i8* %add.ptr379, i8** %p, align 8, !tbaa !1
  %245 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %245, i32 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !1
  store i8 47, i8* %245, align 1, !tbaa !19
  br label %if.end.380

if.end.380:                                       ; preds = %if.then.375, %if.end.373
  %246 = load i32*, i32** %psize.addr, align 8, !tbaa !1
  %247 = load i32, i32* %246, align 4, !tbaa !5
  %add381 = add nsw i32 %247, 1
  store i32 %add381, i32* %246, align 4, !tbaa !5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.382

cleanup.382:                                      ; preds = %if.end.380, %if.then.372, %if.then.369, %if.then.364
  %248 = bitcast i32* %AllowRepeat to i8*
  call void @llvm.lifetime.end(i64 4, i8* %248) #1
  %249 = bitcast %struct.gs_c_param_list_s* %list to i8*
  call void @llvm.lifetime.end(i64 56, i8* %249) #1
  %cleanup.dest.384 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.384, label %cleanup.443 [
    i32 0, label %cleanup.cont.385
  ]

cleanup.cont.385:                                 ; preds = %cleanup.382
  br label %if.end.441

if.else.386:                                      ; preds = %if.end.354
  %250 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call387 = call i32 @resolves_to_oper(%struct.gs_context_state_s* %250, %struct.ref_s* %elt2, i32 (%struct.gs_context_state_s*)* @zif) #4
  %tobool388 = icmp ne i32 %call387, 0
  br i1 %tobool388, label %if.then.389, label %if.else.395

if.then.389:                                      ; preds = %if.else.386
  %251 = load i8*, i8** %ops.addr, align 8, !tbaa !1
  %tobool390 = icmp ne i8* %251, null
  br i1 %tobool390, label %if.then.391, label %if.end.394

if.then.391:                                      ; preds = %if.then.389
  %252 = load i8*, i8** %p, align 8, !tbaa !1
  store i8 43, i8* %252, align 1, !tbaa !19
  %253 = load i8*, i8** %p, align 8, !tbaa !1
  %254 = load i8*, i8** %ops.addr, align 8, !tbaa !1
  %255 = load i32*, i32** %psize.addr, align 8, !tbaa !1
  %256 = load i32, i32* %255, align 4, !tbaa !5
  %idx.ext392 = sext i32 %256 to i64
  %add.ptr393 = getelementptr inbounds i8, i8* %254, i64 %idx.ext392
  call void @psc_fixup(i8* %253, i8* %add.ptr393) #4
  br label %if.end.394

if.end.394:                                       ; preds = %if.then.391, %if.then.389
  br label %if.end.440

if.else.395:                                      ; preds = %if.else.386
  %tas396 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %elt2, i32 0, i32 0
  %type_attrs397 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas396, i32 0, i32 0
  %257 = load i16, i16* %type_attrs397, align 2, !tbaa !12
  %conv398 = zext i16 %257 to i32
  %and399 = and i32 %conv398, 15552
  %cmp400 = icmp eq i32 %and399, 1216
  br i1 %cmp400, label %if.else.403, label %if.then.402

if.then.402:                                      ; preds = %if.else.395
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.443

if.else.403:                                      ; preds = %if.else.395
  %258 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory404 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %258, i32 0, i32 1
  %current405 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory404, i32 0, i32 0
  %259 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current405, align 8, !tbaa !21
  %260 = bitcast %struct.gs_ref_memory_s* %259 to %struct.gs_memory_s*
  %261 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %262 = load i32, i32* %i, align 4, !tbaa !5
  %inc406 = add i32 %262, 1
  store i32 %inc406, i32* %i, align 4, !tbaa !5
  %conv407 = zext i32 %inc406 to i64
  %call408 = call i32 @array_get(%struct.gs_memory_s* %260, %struct.ref_s* %261, i64 %conv407, %struct.ref_s* %elt3) #4
  store i32 %call408, i32* %code, align 4, !tbaa !5
  %cmp409 = icmp slt i32 %call408, 0
  br i1 %cmp409, label %if.then.411, label %if.else.412

if.then.411:                                      ; preds = %if.else.403
  %263 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %263, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.443

if.else.412:                                      ; preds = %if.else.403
  %264 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call413 = call i32 @resolves_to_oper(%struct.gs_context_state_s* %264, %struct.ref_s* %elt3, i32 (%struct.gs_context_state_s*)* @zifelse) #4
  %tobool414 = icmp ne i32 %call413, 0
  br i1 %tobool414, label %if.then.415, label %if.else.436

if.then.415:                                      ; preds = %if.else.412
  %265 = load i8*, i8** %ops.addr, align 8, !tbaa !1
  %tobool416 = icmp ne i8* %265, null
  br i1 %tobool416, label %if.then.417, label %if.end.423

if.then.417:                                      ; preds = %if.then.415
  %266 = load i8*, i8** %p, align 8, !tbaa !1
  store i8 43, i8* %266, align 1, !tbaa !19
  %267 = load i8*, i8** %p, align 8, !tbaa !1
  %268 = load i8*, i8** %ops.addr, align 8, !tbaa !1
  %269 = load i32*, i32** %psize.addr, align 8, !tbaa !1
  %270 = load i32, i32* %269, align 4, !tbaa !5
  %idx.ext418 = sext i32 %270 to i64
  %add.ptr419 = getelementptr inbounds i8, i8* %268, i64 %idx.ext418
  %add.ptr420 = getelementptr inbounds i8, i8* %add.ptr419, i64 3
  call void @psc_fixup(i8* %267, i8* %add.ptr420) #4
  %271 = load i8*, i8** %ops.addr, align 8, !tbaa !1
  %272 = load i32*, i32** %psize.addr, align 8, !tbaa !1
  %273 = load i32, i32* %272, align 4, !tbaa !5
  %idx.ext421 = sext i32 %273 to i64
  %add.ptr422 = getelementptr inbounds i8, i8* %271, i64 %idx.ext421
  store i8* %add.ptr422, i8** %p, align 8, !tbaa !1
  %274 = load i8*, i8** %p, align 8, !tbaa !1
  store i8 44, i8* %274, align 1, !tbaa !19
  br label %if.end.423

if.end.423:                                       ; preds = %if.then.417, %if.then.415
  %275 = load i32*, i32** %psize.addr, align 8, !tbaa !1
  %276 = load i32, i32* %275, align 4, !tbaa !5
  %add424 = add nsw i32 %276, 3
  store i32 %add424, i32* %275, align 4, !tbaa !5
  %277 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %278 = load i32, i32* %depth.addr, align 4, !tbaa !5
  %add425 = add nsw i32 %278, 1
  %279 = load i8*, i8** %ops.addr, align 8, !tbaa !1
  %280 = load i32*, i32** %psize.addr, align 8, !tbaa !1
  %call426 = call i32 @check_psc_function(%struct.gs_context_state_s* %277, %struct.ref_s* %elt2, i32 %add425, i8* %279, i32* %280) #4
  store i32 %call426, i32* %code, align 4, !tbaa !5
  %281 = load i32, i32* %code, align 4, !tbaa !5
  %cmp427 = icmp slt i32 %281, 0
  br i1 %cmp427, label %if.then.429, label %if.end.430

if.then.429:                                      ; preds = %if.end.423
  %282 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %282, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.443

if.end.430:                                       ; preds = %if.end.423
  %283 = load i8*, i8** %ops.addr, align 8, !tbaa !1
  %tobool431 = icmp ne i8* %283, null
  br i1 %tobool431, label %if.then.432, label %if.end.435

if.then.432:                                      ; preds = %if.end.430
  %284 = load i8*, i8** %p, align 8, !tbaa !1
  %285 = load i8*, i8** %ops.addr, align 8, !tbaa !1
  %286 = load i32*, i32** %psize.addr, align 8, !tbaa !1
  %287 = load i32, i32* %286, align 4, !tbaa !5
  %idx.ext433 = sext i32 %287 to i64
  %add.ptr434 = getelementptr inbounds i8, i8* %285, i64 %idx.ext433
  call void @psc_fixup(i8* %284, i8* %add.ptr434) #4
  br label %if.end.435

if.end.435:                                       ; preds = %if.then.432, %if.end.430
  br label %if.end.437

if.else.436:                                      ; preds = %if.else.412
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.443

if.end.437:                                       ; preds = %if.end.435
  br label %if.end.438

if.end.438:                                       ; preds = %if.end.437
  br label %if.end.439

if.end.439:                                       ; preds = %if.end.438
  br label %if.end.440

if.end.440:                                       ; preds = %if.end.439, %if.end.394
  br label %if.end.441

if.end.441:                                       ; preds = %if.end.440, %cleanup.cont.385
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.441, %if.then.273, %if.then.264, %sw.bb.240, %sw.bb.235, %sw.bb
  br label %next

next:                                             ; preds = %sw.epilog, %cleanup.326
  br label %do.body

do.body:                                          ; preds = %next
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.443

cleanup.443:                                      ; preds = %do.end, %cleanup.326, %if.else.436, %if.then.429, %if.then.411, %if.then.402, %cleanup.382, %if.then.353, %if.then.346, %if.then.337, %if.then.333, %if.then.304, %if.then.297, %if.then.280, %if.then.253
  %288 = bitcast %struct.ref_s** %delp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %288) #1
  %289 = bitcast %struct.ref_s* %elt3 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %289) #1
  %290 = bitcast %struct.ref_s* %elt2 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %290) #1
  %291 = bitcast %struct.ref_s* %elt to i8*
  call void @llvm.lifetime.end(i64 16, i8* %291) #1
  %292 = bitcast [5 x i8]* %no_ops to i8*
  call void @llvm.lifetime.end(i64 5, i8* %292) #1
  %cleanup.dest.448 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.448, label %cleanup.453 [
    i32 0, label %cleanup.cont.449
  ]

cleanup.cont.449:                                 ; preds = %cleanup.443
  br label %for.inc.450

for.inc.450:                                      ; preds = %cleanup.cont.449
  %293 = load i32, i32* %i, align 4, !tbaa !5
  %inc451 = add i32 %293, 1
  store i32 %inc451, i32* %i, align 4, !tbaa !5
  br label %for.cond.208

for.end.452:                                      ; preds = %for.cond.208
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.453

cleanup.453:                                      ; preds = %for.end.452, %cleanup.443, %cleanup.198
  %294 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %294) #1
  %295 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %295) #1
  %296 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %296) #1
  %297 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %297) #1
  %298 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %298) #1
  %299 = load i32, i32* %retval
  ret i32 %299
}

declare i32 @gs_function_PtCr_init(%struct.gs_function_s**, %struct.gs_function_PtCr_params_s*, %struct.gs_memory_s*) #2

declare void @gs_function_PtCr_free_params(%struct.gs_function_PtCr_params_s*, %struct.gs_memory_s*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @make_type4_function(%struct.gs_context_state_s* %i_ctx_p, %struct.ref_s* %arr, %struct.ref_s* %pproc, %struct.gs_function_s** %func) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %arr.addr = alloca %struct.ref_s*, align 8
  %pproc.addr = alloca %struct.ref_s*, align 8
  %func.addr = alloca %struct.gs_function_s**, align 8
  %code = alloca i32, align 4
  %size = alloca i32, align 4
  %num_components = alloca i32, align 4
  %CIESubst = alloca i32, align 4
  %ops = alloca i8*, align 8
  %params = alloca %struct.gs_function_PtCr_params_s, align 8
  %ptr = alloca float*, align 8
  %alternatespace = alloca %struct.ref_s, align 8
  %palternatespace = alloca %struct.ref_s*, align 8
  %space = alloca %struct.PS_colour_space_s*, align 8
  %altspace = alloca %struct.PS_colour_space_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_s* %arr, %struct.ref_s** %arr.addr, align 8, !tbaa !1
  store %struct.ref_s* %pproc, %struct.ref_s** %pproc.addr, align 8, !tbaa !1
  store %struct.gs_function_s** %func, %struct.gs_function_s*** %func.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %num_components to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %CIESubst to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i8** %ops to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast %struct.gs_function_PtCr_params_s* %params to i8*
  call void @llvm.lifetime.start(i64 48, i8* %5) #1
  %6 = bitcast float** %ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast %struct.ref_s* %alternatespace to i8*
  call void @llvm.lifetime.start(i64 16, i8* %7) #1
  %8 = bitcast %struct.ref_s** %palternatespace to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store %struct.ref_s* %alternatespace, %struct.ref_s** %palternatespace, align 8, !tbaa !1
  %9 = bitcast %struct.PS_colour_space_s** %space to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast %struct.PS_colour_space_s** %altspace to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %12 = load %struct.ref_s*, %struct.ref_s** %arr.addr, align 8, !tbaa !1
  %call = call i32 @get_space_object(%struct.gs_context_state_s* %11, %struct.ref_s* %12, %struct.PS_colour_space_s** %space) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %13 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %13, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %14 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %15 = load %struct.PS_colour_space_s*, %struct.PS_colour_space_s** %space, align 8, !tbaa !1
  %alternateproc = getelementptr inbounds %struct.PS_colour_space_s, %struct.PS_colour_space_s* %15, i32 0, i32 3
  %16 = load i32 (%struct.gs_context_state_s*, %struct.ref_s*, %struct.ref_s**, i32*)*, i32 (%struct.gs_context_state_s*, %struct.ref_s*, %struct.ref_s**, i32*)** %alternateproc, align 8, !tbaa !68
  %tobool = icmp ne i32 (%struct.gs_context_state_s*, %struct.ref_s*, %struct.ref_s**, i32*)* %16, null
  br i1 %tobool, label %if.end.2, label %if.then.1

if.then.1:                                        ; preds = %if.end
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.2:                                         ; preds = %if.end
  %17 = load %struct.PS_colour_space_s*, %struct.PS_colour_space_s** %space, align 8, !tbaa !1
  %alternateproc3 = getelementptr inbounds %struct.PS_colour_space_s, %struct.PS_colour_space_s* %17, i32 0, i32 3
  %18 = load i32 (%struct.gs_context_state_s*, %struct.ref_s*, %struct.ref_s**, i32*)*, i32 (%struct.gs_context_state_s*, %struct.ref_s*, %struct.ref_s**, i32*)** %alternateproc3, align 8, !tbaa !68
  %19 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %20 = load %struct.ref_s*, %struct.ref_s** %arr.addr, align 8, !tbaa !1
  %call4 = call i32 %18(%struct.gs_context_state_s* %19, %struct.ref_s* %20, %struct.ref_s** %palternatespace, i32* %CIESubst) #4
  store i32 %call4, i32* %code, align 4, !tbaa !5
  %21 = load i32, i32* %code, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %21, 0
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.2
  %22 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %22, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %if.end.2
  %23 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %24 = load %struct.ref_s*, %struct.ref_s** %palternatespace, align 8, !tbaa !1
  %call8 = call i32 @get_space_object(%struct.gs_context_state_s* %23, %struct.ref_s* %24, %struct.PS_colour_space_s** %altspace) #4
  store i32 %call8, i32* %code, align 4, !tbaa !5
  %25 = load i32, i32* %code, align 4, !tbaa !5
  %cmp9 = icmp slt i32 %25, 0
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.7
  %26 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %26, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %if.end.7
  %27 = load %struct.PS_colour_space_s*, %struct.PS_colour_space_s** %space, align 8, !tbaa !1
  %numcomponents = getelementptr inbounds %struct.PS_colour_space_s, %struct.PS_colour_space_s* %27, i32 0, i32 4
  %28 = load i32 (%struct.gs_context_state_s*, %struct.ref_s*, i32*)*, i32 (%struct.gs_context_state_s*, %struct.ref_s*, i32*)** %numcomponents, align 8, !tbaa !70
  %29 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %30 = load %struct.ref_s*, %struct.ref_s** %arr.addr, align 8, !tbaa !1
  %call12 = call i32 %28(%struct.gs_context_state_s* %29, %struct.ref_s* %30, i32* %num_components) #4
  store i32 %call12, i32* %code, align 4, !tbaa !5
  %31 = load i32, i32* %code, align 4, !tbaa !5
  %cmp13 = icmp slt i32 %31, 0
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.11
  %32 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %32, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %if.end.11
  %33 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %33, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %34 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !21
  %35 = bitcast %struct.gs_ref_memory_s* %34 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %35, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %36 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !71
  %37 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory16 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %37, i32 0, i32 1
  %current17 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory16, i32 0, i32 0
  %38 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current17, align 8, !tbaa !21
  %39 = bitcast %struct.gs_ref_memory_s* %38 to %struct.gs_memory_s*
  %40 = load i32, i32* %num_components, align 4, !tbaa !5
  %mul = mul nsw i32 %40, 2
  %call18 = call i8* %36(%struct.gs_memory_s* %39, i32 %mul, i32 4, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0)) #4
  %41 = bitcast i8* %call18 to float*
  store float* %41, float** %ptr, align 8, !tbaa !1
  %42 = load float*, float** %ptr, align 8, !tbaa !1
  %tobool19 = icmp ne float* %42, null
  br i1 %tobool19, label %if.end.21, label %if.then.20

if.then.20:                                       ; preds = %if.end.15
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %if.end.15
  %43 = load %struct.PS_colour_space_s*, %struct.PS_colour_space_s** %space, align 8, !tbaa !1
  %domain = getelementptr inbounds %struct.PS_colour_space_s, %struct.PS_colour_space_s* %43, i32 0, i32 6
  %44 = load i32 (%struct.gs_context_state_s*, %struct.ref_s*, float*)*, i32 (%struct.gs_context_state_s*, %struct.ref_s*, float*)** %domain, align 8, !tbaa !72
  %45 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %46 = load %struct.ref_s*, %struct.ref_s** %arr.addr, align 8, !tbaa !1
  %47 = load float*, float** %ptr, align 8, !tbaa !1
  %call22 = call i32 %44(%struct.gs_context_state_s* %45, %struct.ref_s* %46, float* %47) #4
  store i32 %call22, i32* %code, align 4, !tbaa !5
  %48 = load i32, i32* %code, align 4, !tbaa !5
  %cmp23 = icmp slt i32 %48, 0
  br i1 %cmp23, label %if.then.24, label %if.end.27

if.then.24:                                       ; preds = %if.end.21
  %49 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory25 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %49, i32 0, i32 1
  %current26 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory25, i32 0, i32 0
  %50 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current26, align 8, !tbaa !21
  %51 = bitcast %struct.gs_ref_memory_s* %50 to %struct.gs_memory_s*
  %52 = load float*, float** %ptr, align 8, !tbaa !1
  %53 = bitcast float* %52 to i8*
  call void @gs_free_const_object(%struct.gs_memory_s* %51, i8* %53, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0)) #4
  %54 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %54, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.27:                                        ; preds = %if.end.21
  %55 = load float*, float** %ptr, align 8, !tbaa !1
  %Domain = getelementptr inbounds %struct.gs_function_PtCr_params_s, %struct.gs_function_PtCr_params_s* %params, i32 0, i32 1
  store float* %55, float** %Domain, align 8, !tbaa !73
  %56 = load i32, i32* %num_components, align 4, !tbaa !5
  %m = getelementptr inbounds %struct.gs_function_PtCr_params_s, %struct.gs_function_PtCr_params_s* %params, i32 0, i32 0
  store i32 %56, i32* %m, align 4, !tbaa !74
  %57 = load %struct.PS_colour_space_s*, %struct.PS_colour_space_s** %altspace, align 8, !tbaa !1
  %numcomponents28 = getelementptr inbounds %struct.PS_colour_space_s, %struct.PS_colour_space_s* %57, i32 0, i32 4
  %58 = load i32 (%struct.gs_context_state_s*, %struct.ref_s*, i32*)*, i32 (%struct.gs_context_state_s*, %struct.ref_s*, i32*)** %numcomponents28, align 8, !tbaa !70
  %59 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call29 = call i32 %58(%struct.gs_context_state_s* %59, %struct.ref_s* %alternatespace, i32* %num_components) #4
  store i32 %call29, i32* %code, align 4, !tbaa !5
  %60 = load i32, i32* %code, align 4, !tbaa !5
  %cmp30 = icmp slt i32 %60, 0
  br i1 %cmp30, label %if.then.31, label %if.end.35

if.then.31:                                       ; preds = %if.end.27
  %61 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory32 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %61, i32 0, i32 1
  %current33 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory32, i32 0, i32 0
  %62 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current33, align 8, !tbaa !21
  %63 = bitcast %struct.gs_ref_memory_s* %62 to %struct.gs_memory_s*
  %Domain34 = getelementptr inbounds %struct.gs_function_PtCr_params_s, %struct.gs_function_PtCr_params_s* %params, i32 0, i32 1
  %64 = load float*, float** %Domain34, align 8, !tbaa !73
  %65 = bitcast float* %64 to i8*
  call void @gs_free_const_object(%struct.gs_memory_s* %63, i8* %65, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0)) #4
  %66 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %66, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.35:                                        ; preds = %if.end.27
  %67 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory36 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %67, i32 0, i32 1
  %current37 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory36, i32 0, i32 0
  %68 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current37, align 8, !tbaa !21
  %69 = bitcast %struct.gs_ref_memory_s* %68 to %struct.gs_memory_s*
  %procs38 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %69, i32 0, i32 1
  %alloc_byte_array39 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs38, i32 0, i32 10
  %70 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array39, align 8, !tbaa !71
  %71 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory40 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %71, i32 0, i32 1
  %current41 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory40, i32 0, i32 0
  %72 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current41, align 8, !tbaa !21
  %73 = bitcast %struct.gs_ref_memory_s* %72 to %struct.gs_memory_s*
  %74 = load i32, i32* %num_components, align 4, !tbaa !5
  %mul42 = mul nsw i32 %74, 2
  %call43 = call i8* %70(%struct.gs_memory_s* %73, i32 %mul42, i32 4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0)) #4
  %75 = bitcast i8* %call43 to float*
  store float* %75, float** %ptr, align 8, !tbaa !1
  %76 = load float*, float** %ptr, align 8, !tbaa !1
  %tobool44 = icmp ne float* %76, null
  br i1 %tobool44, label %if.end.49, label %if.then.45

if.then.45:                                       ; preds = %if.end.35
  %77 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory46 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %77, i32 0, i32 1
  %current47 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory46, i32 0, i32 0
  %78 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current47, align 8, !tbaa !21
  %79 = bitcast %struct.gs_ref_memory_s* %78 to %struct.gs_memory_s*
  %Domain48 = getelementptr inbounds %struct.gs_function_PtCr_params_s, %struct.gs_function_PtCr_params_s* %params, i32 0, i32 1
  %80 = load float*, float** %Domain48, align 8, !tbaa !73
  %81 = bitcast float* %80 to i8*
  call void @gs_free_const_object(%struct.gs_memory_s* %79, i8* %81, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0)) #4
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.49:                                        ; preds = %if.end.35
  %82 = load %struct.PS_colour_space_s*, %struct.PS_colour_space_s** %altspace, align 8, !tbaa !1
  %range = getelementptr inbounds %struct.PS_colour_space_s, %struct.PS_colour_space_s* %82, i32 0, i32 5
  %83 = load i32 (%struct.gs_context_state_s*, %struct.ref_s*, float*)*, i32 (%struct.gs_context_state_s*, %struct.ref_s*, float*)** %range, align 8, !tbaa !75
  %84 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %85 = load float*, float** %ptr, align 8, !tbaa !1
  %call50 = call i32 %83(%struct.gs_context_state_s* %84, %struct.ref_s* %alternatespace, float* %85) #4
  store i32 %call50, i32* %code, align 4, !tbaa !5
  %86 = load i32, i32* %code, align 4, !tbaa !5
  %cmp51 = icmp slt i32 %86, 0
  br i1 %cmp51, label %if.then.52, label %if.end.58

if.then.52:                                       ; preds = %if.end.49
  %87 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory53 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %87, i32 0, i32 1
  %current54 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory53, i32 0, i32 0
  %88 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current54, align 8, !tbaa !21
  %89 = bitcast %struct.gs_ref_memory_s* %88 to %struct.gs_memory_s*
  %90 = load float*, float** %ptr, align 8, !tbaa !1
  %91 = bitcast float* %90 to i8*
  call void @gs_free_const_object(%struct.gs_memory_s* %89, i8* %91, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0)) #4
  %92 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory55 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %92, i32 0, i32 1
  %current56 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory55, i32 0, i32 0
  %93 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current56, align 8, !tbaa !21
  %94 = bitcast %struct.gs_ref_memory_s* %93 to %struct.gs_memory_s*
  %Domain57 = getelementptr inbounds %struct.gs_function_PtCr_params_s, %struct.gs_function_PtCr_params_s* %params, i32 0, i32 1
  %95 = load float*, float** %Domain57, align 8, !tbaa !73
  %96 = bitcast float* %95 to i8*
  call void @gs_free_const_object(%struct.gs_memory_s* %94, i8* %96, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0)) #4
  %97 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %97, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.58:                                        ; preds = %if.end.49
  %98 = load float*, float** %ptr, align 8, !tbaa !1
  %Range = getelementptr inbounds %struct.gs_function_PtCr_params_s, %struct.gs_function_PtCr_params_s* %params, i32 0, i32 3
  store float* %98, float** %Range, align 8, !tbaa !76
  %99 = load i32, i32* %num_components, align 4, !tbaa !5
  %n = getelementptr inbounds %struct.gs_function_PtCr_params_s, %struct.gs_function_PtCr_params_s* %params, i32 0, i32 2
  store i32 %99, i32* %n, align 4, !tbaa !77
  %ops59 = getelementptr inbounds %struct.gs_function_PtCr_params_s, %struct.gs_function_PtCr_params_s* %params, i32 0, i32 4
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %ops59, i32 0, i32 0
  store i8* null, i8** %data, align 8, !tbaa !8
  %ops60 = getelementptr inbounds %struct.gs_function_PtCr_params_s, %struct.gs_function_PtCr_params_s* %params, i32 0, i32 4
  %size61 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %ops60, i32 0, i32 1
  store i32 0, i32* %size61, align 4, !tbaa !11
  store i32 0, i32* %size, align 4, !tbaa !5
  %100 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %101 = load %struct.ref_s*, %struct.ref_s** %pproc.addr, align 8, !tbaa !1
  %call62 = call i32 @check_psc_function(%struct.gs_context_state_s* %100, %struct.ref_s* %101, i32 0, i8* null, i32* %size) #4
  store i32 %call62, i32* %code, align 4, !tbaa !5
  %102 = load i32, i32* %code, align 4, !tbaa !5
  %cmp63 = icmp slt i32 %102, 0
  br i1 %cmp63, label %if.then.64, label %if.end.67

if.then.64:                                       ; preds = %if.end.58
  %103 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory65 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %103, i32 0, i32 1
  %current66 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory65, i32 0, i32 0
  %104 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current66, align 8, !tbaa !21
  %105 = bitcast %struct.gs_ref_memory_s* %104 to %struct.gs_memory_s*
  call void @gs_function_PtCr_free_params(%struct.gs_function_PtCr_params_s* %params, %struct.gs_memory_s* %105) #4
  %106 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %106, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.67:                                        ; preds = %if.end.58
  %107 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory68 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %107, i32 0, i32 1
  %current69 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory68, i32 0, i32 0
  %108 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current69, align 8, !tbaa !21
  %109 = bitcast %struct.gs_ref_memory_s* %108 to %struct.gs_memory_s*
  %procs70 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %109, i32 0, i32 1
  %alloc_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs70, i32 0, i32 16
  %110 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_string, align 8, !tbaa !16
  %111 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory71 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %111, i32 0, i32 1
  %current72 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory71, i32 0, i32 0
  %112 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current72, align 8, !tbaa !21
  %113 = bitcast %struct.gs_ref_memory_s* %112 to %struct.gs_memory_s*
  %114 = load i32, i32* %size, align 4, !tbaa !5
  %add = add nsw i32 %114, 1
  %call73 = call i8* %110(%struct.gs_memory_s* %113, i32 %add, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i32 0, i32 0)) #4
  store i8* %call73, i8** %ops, align 8, !tbaa !1
  store i32 0, i32* %size, align 4, !tbaa !5
  %115 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %116 = load %struct.ref_s*, %struct.ref_s** %pproc.addr, align 8, !tbaa !1
  %117 = load i8*, i8** %ops, align 8, !tbaa !1
  %call74 = call i32 @check_psc_function(%struct.gs_context_state_s* %115, %struct.ref_s* %116, i32 0, i8* %117, i32* %size) #4
  %118 = load i32, i32* %size, align 4, !tbaa !5
  %idxprom = sext i32 %118 to i64
  %119 = load i8*, i8** %ops, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %119, i64 %idxprom
  store i8 45, i8* %arrayidx, align 1, !tbaa !19
  %120 = load i8*, i8** %ops, align 8, !tbaa !1
  %ops75 = getelementptr inbounds %struct.gs_function_PtCr_params_s, %struct.gs_function_PtCr_params_s* %params, i32 0, i32 4
  %data76 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %ops75, i32 0, i32 0
  store i8* %120, i8** %data76, align 8, !tbaa !8
  %121 = load i32, i32* %size, align 4, !tbaa !5
  %add77 = add nsw i32 %121, 1
  %ops78 = getelementptr inbounds %struct.gs_function_PtCr_params_s, %struct.gs_function_PtCr_params_s* %params, i32 0, i32 4
  %size79 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %ops78, i32 0, i32 1
  store i32 %add77, i32* %size79, align 4, !tbaa !11
  %122 = load %struct.gs_function_s**, %struct.gs_function_s*** %func.addr, align 8, !tbaa !1
  %123 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory80 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %123, i32 0, i32 1
  %current81 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory80, i32 0, i32 0
  %124 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current81, align 8, !tbaa !21
  %125 = bitcast %struct.gs_ref_memory_s* %124 to %struct.gs_memory_s*
  %call82 = call i32 @gs_function_PtCr_init(%struct.gs_function_s** %122, %struct.gs_function_PtCr_params_s* %params, %struct.gs_memory_s* %125) #4
  store i32 %call82, i32* %code, align 4, !tbaa !5
  %126 = load i32, i32* %code, align 4, !tbaa !5
  %cmp83 = icmp slt i32 %126, 0
  br i1 %cmp83, label %if.then.84, label %if.end.87

if.then.84:                                       ; preds = %if.end.67
  %127 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory85 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %127, i32 0, i32 1
  %current86 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory85, i32 0, i32 0
  %128 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current86, align 8, !tbaa !21
  %129 = bitcast %struct.gs_ref_memory_s* %128 to %struct.gs_memory_s*
  call void @gs_function_PtCr_free_params(%struct.gs_function_PtCr_params_s* %params, %struct.gs_memory_s* %129) #4
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.84, %if.end.67
  %130 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %130, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.87, %if.then.64, %if.then.52, %if.then.45, %if.then.31, %if.then.24, %if.then.20, %if.then.14, %if.then.10, %if.then.6, %if.then.1, %if.then
  %131 = bitcast %struct.PS_colour_space_s** %altspace to i8*
  call void @llvm.lifetime.end(i64 8, i8* %131) #1
  %132 = bitcast %struct.PS_colour_space_s** %space to i8*
  call void @llvm.lifetime.end(i64 8, i8* %132) #1
  %133 = bitcast %struct.ref_s** %palternatespace to i8*
  call void @llvm.lifetime.end(i64 8, i8* %133) #1
  %134 = bitcast %struct.ref_s* %alternatespace to i8*
  call void @llvm.lifetime.end(i64 16, i8* %134) #1
  %135 = bitcast float** %ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %135) #1
  %136 = bitcast %struct.gs_function_PtCr_params_s* %params to i8*
  call void @llvm.lifetime.end(i64 48, i8* %136) #1
  %137 = bitcast i8** %ops to i8*
  call void @llvm.lifetime.end(i64 8, i8* %137) #1
  %138 = bitcast i32* %CIESubst to i8*
  call void @llvm.lifetime.end(i64 4, i8* %138) #1
  %139 = bitcast i32* %num_components to i8*
  call void @llvm.lifetime.end(i64 4, i8* %139) #1
  %140 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %140) #1
  %141 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %141) #1
  %142 = load i32, i32* %retval
  ret i32 %142
}

declare i32 @get_space_object(%struct.gs_context_state_s*, %struct.ref_s*, %struct.PS_colour_space_s**) #2

declare void @gs_free_const_object(%struct.gs_memory_s*, i8*, i8*) #2

declare i32 @array_get(%struct.gs_memory_s*, %struct.ref_s*, i64, %struct.ref_s*) #2

declare i32 @names_enter_string(%struct.name_table_s*, i8*, %struct.ref_s*) #2

declare %struct.ref_s* @dstack_find_name_by_index(%struct.dict_stack_s*, i32) #2

declare i32 @names_index(%struct.name_table_s*, %struct.ref_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @put_int(i8** %p, i32 %n) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8**, align 8
  %n.addr = alloca i32, align 4
  store i8** %p, i8*** %p.addr, align 8, !tbaa !1
  store i32 %n, i32* %n.addr, align 4, !tbaa !5
  %0 = load i32, i32* %n.addr, align 4, !tbaa !5
  %1 = load i32, i32* %n.addr, align 4, !tbaa !5
  %conv = trunc i32 %1 to i8
  %conv1 = zext i8 %conv to i32
  %cmp = icmp eq i32 %0, %conv1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i8**, i8*** %p.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %2, align 8, !tbaa !1
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %4 = load i8**, i8*** %p.addr, align 8, !tbaa !1
  %5 = load i8*, i8** %4, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 0
  store i8 38, i8* %arrayidx, align 1, !tbaa !19
  %6 = load i32, i32* %n.addr, align 4, !tbaa !5
  %conv4 = trunc i32 %6 to i8
  %7 = load i8**, i8*** %p.addr, align 8, !tbaa !1
  %8 = load i8*, i8** %7, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 1
  store i8 %conv4, i8* %arrayidx5, align 1, !tbaa !19
  %9 = load i8**, i8*** %p.addr, align 8, !tbaa !1
  %10 = load i8*, i8** %9, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 2
  store i8* %add.ptr, i8** %9, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  store i32 2, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %11 = load i8**, i8*** %p.addr, align 8, !tbaa !1
  %12 = load i8*, i8** %11, align 8, !tbaa !1
  %tobool6 = icmp ne i8* %12, null
  br i1 %tobool6, label %if.then.7, label %if.end.10

if.then.7:                                        ; preds = %if.else
  %13 = load i8**, i8*** %p.addr, align 8, !tbaa !1
  %14 = load i8*, i8** %13, align 8, !tbaa !1
  store i8 39, i8* %14, align 1, !tbaa !19
  %15 = load i8**, i8*** %p.addr, align 8, !tbaa !1
  %16 = load i8*, i8** %15, align 8, !tbaa !1
  %add.ptr8 = getelementptr inbounds i8, i8* %16, i64 1
  %17 = bitcast i32* %n.addr to i8*
  %call = call i8* @memcpy(i8* %add.ptr8, i8* %17, i64 4) #5
  %18 = load i8**, i8*** %p.addr, align 8, !tbaa !1
  %19 = load i8*, i8** %18, align 8, !tbaa !1
  %add.ptr9 = getelementptr inbounds i8, i8* %19, i64 5
  store i8* %add.ptr9, i8** %18, align 8, !tbaa !1
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.7, %if.else
  store i32 5, i32* %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.end
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal i32 @put_op(i8** %p, i8 zeroext %op) #0 {
entry:
  %p.addr = alloca i8**, align 8
  %op.addr = alloca i8, align 1
  store i8** %p, i8*** %p.addr, align 8, !tbaa !1
  store i8 %op, i8* %op.addr, align 1, !tbaa !19
  %0 = load i8**, i8*** %p.addr, align 8, !tbaa !1
  %1 = load i8*, i8** %0, align 8, !tbaa !1
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8, i8* %op.addr, align 1, !tbaa !19
  %3 = load i8**, i8*** %p.addr, align 8, !tbaa !1
  %4 = load i8*, i8** %3, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %3, align 8, !tbaa !1
  store i8 %2, i8* %4, align 1, !tbaa !19
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @put_float(i8** %p, float %n) #0 {
entry:
  %p.addr = alloca i8**, align 8
  %n.addr = alloca float, align 4
  store i8** %p, i8*** %p.addr, align 8, !tbaa !1
  store float %n, float* %n.addr, align 4, !tbaa !35
  %0 = load i8**, i8*** %p.addr, align 8, !tbaa !1
  %1 = load i8*, i8** %0, align 8, !tbaa !1
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8**, i8*** %p.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %2, align 8, !tbaa !1
  store i8 40, i8* %3, align 1, !tbaa !19
  %4 = load i8**, i8*** %p.addr, align 8, !tbaa !1
  %5 = load i8*, i8** %4, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 1
  %6 = bitcast float* %n.addr to i8*
  %call = call i8* @memcpy(i8* %add.ptr, i8* %6, i64 4) #5
  %7 = load i8**, i8*** %p.addr, align 8, !tbaa !1
  %8 = load i8*, i8** %7, align 8, !tbaa !1
  %add.ptr1 = getelementptr inbounds i8, i8* %8, i64 5
  store i8* %add.ptr1, i8** %7, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 5
}

declare void @names_string_ref(%struct.name_table_s*, %struct.ref_s*, %struct.ref_s*) #2

declare i32 @bytes_compare(i8*, i32, i8*, i32) #2

declare i32 @dict_find(%struct.ref_s*, %struct.ref_s*, %struct.ref_s**) #2

; Function Attrs: nounwind uwtable
define internal i32 @resolves_to_oper(%struct.gs_context_state_s* %i_ctx_p, %struct.ref_s* %pref, i32 (%struct.gs_context_state_s*)* %proc) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %pref.addr = alloca %struct.ref_s*, align 8
  %proc.addr = alloca i32 (%struct.gs_context_state_s*)*, align 8
  %val = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_s* %pref, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  store i32 (%struct.gs_context_state_s*)* %proc, i32 (%struct.gs_context_state_s*)** %proc.addr, align 8, !tbaa !1
  %0 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %1 = load i16, i16* %type_attrs, align 2, !tbaa !12
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %tas1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i32 0, i32 0
  %type_attrs2 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas1, i32 0, i32 0
  %3 = load i16, i16* %type_attrs2, align 2, !tbaa !12
  %conv3 = zext i16 %3 to i32
  %cmp = icmp sge i32 %conv3, 5376
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %4 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %tas5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %type_attrs6 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas5, i32 0, i32 0
  %5 = bitcast i16* %type_attrs6 to i8*
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 1
  %6 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv7 = zext i8 %6 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 15, %cond.true ], [ %conv7, %cond.false ]
  %cmp8 = icmp eq i32 %cond, 15
  br i1 %cmp8, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %cond.end
  %7 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 1
  %opproc = bitcast %union.v* %value to i32 (%struct.gs_context_state_s*)**
  %8 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %opproc, align 8, !tbaa !1
  %9 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %proc.addr, align 8, !tbaa !1
  %cmp11 = icmp eq i32 (%struct.gs_context_state_s*)* %8, %9
  %conv12 = zext i1 %cmp11 to i32
  store i32 %conv12, i32* %retval
  br label %return

if.else:                                          ; preds = %cond.end
  %10 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %tas13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 0
  %type_attrs14 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas13, i32 0, i32 0
  %11 = load i16, i16* %type_attrs14, align 2, !tbaa !12
  %conv15 = zext i16 %11 to i32
  %cmp16 = icmp sge i32 %conv15, 5376
  br i1 %cmp16, label %cond.true.18, label %cond.false.19

cond.true.18:                                     ; preds = %if.else
  br label %cond.end.24

cond.false.19:                                    ; preds = %if.else
  %12 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %tas20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 0
  %type_attrs21 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas20, i32 0, i32 0
  %13 = bitcast i16* %type_attrs21 to i8*
  %arrayidx22 = getelementptr inbounds i8, i8* %13, i64 1
  %14 = load i8, i8* %arrayidx22, align 1, !tbaa !19
  %conv23 = zext i8 %14 to i32
  br label %cond.end.24

cond.end.24:                                      ; preds = %cond.false.19, %cond.true.18
  %cond25 = phi i32 [ 15, %cond.true.18 ], [ %conv23, %cond.false.19 ]
  %cmp26 = icmp eq i32 %cond25, 13
  br i1 %cmp26, label %if.then.28, label %if.else.61

if.then.28:                                       ; preds = %cond.end.24
  %15 = bitcast %struct.ref_s** %val to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %16, i32 0, i32 24
  %system_dict = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack, i32 0, i32 7
  %17 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %call = call i32 @dict_find(%struct.ref_s* %system_dict, %struct.ref_s* %17, %struct.ref_s** %val) #4
  %cmp29 = icmp sle i32 %call, 0
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.then.28
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.32:                                        ; preds = %if.then.28
  %18 = load %struct.ref_s*, %struct.ref_s** %val, align 8, !tbaa !1
  %tas33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i32 0, i32 0
  %type_attrs34 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas33, i32 0, i32 0
  %19 = load i16, i16* %type_attrs34, align 2, !tbaa !12
  %conv35 = zext i16 %19 to i32
  %cmp36 = icmp sge i32 %conv35, 5376
  br i1 %cmp36, label %cond.true.38, label %cond.false.39

cond.true.38:                                     ; preds = %if.end.32
  br label %cond.end.44

cond.false.39:                                    ; preds = %if.end.32
  %20 = load %struct.ref_s*, %struct.ref_s** %val, align 8, !tbaa !1
  %tas40 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i32 0, i32 0
  %type_attrs41 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas40, i32 0, i32 0
  %21 = bitcast i16* %type_attrs41 to i8*
  %arrayidx42 = getelementptr inbounds i8, i8* %21, i64 1
  %22 = load i8, i8* %arrayidx42, align 1, !tbaa !19
  %conv43 = zext i8 %22 to i32
  br label %cond.end.44

cond.end.44:                                      ; preds = %cond.false.39, %cond.true.38
  %cond45 = phi i32 [ 15, %cond.true.38 ], [ %conv43, %cond.false.39 ]
  %cmp46 = icmp ne i32 %cond45, 15
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %cond.end.44
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.49:                                        ; preds = %cond.end.44
  %23 = load %struct.ref_s*, %struct.ref_s** %val, align 8, !tbaa !1
  %tas50 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i32 0, i32 0
  %type_attrs51 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas50, i32 0, i32 0
  %24 = load i16, i16* %type_attrs51, align 2, !tbaa !12
  %conv52 = zext i16 %24 to i32
  %and53 = and i32 %conv52, 128
  %tobool54 = icmp ne i32 %and53, 0
  br i1 %tobool54, label %if.end.56, label %if.then.55

if.then.55:                                       ; preds = %if.end.49
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.56:                                        ; preds = %if.end.49
  %25 = load %struct.ref_s*, %struct.ref_s** %val, align 8, !tbaa !1
  %value57 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i32 0, i32 1
  %opproc58 = bitcast %union.v* %value57 to i32 (%struct.gs_context_state_s*)**
  %26 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %opproc58, align 8, !tbaa !1
  %27 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %proc.addr, align 8, !tbaa !1
  %cmp59 = icmp eq i32 (%struct.gs_context_state_s*)* %26, %27
  %conv60 = zext i1 %cmp59 to i32
  store i32 %conv60, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.56, %if.then.55, %if.then.48, %if.then.31
  %28 = bitcast %struct.ref_s** %val to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #1
  br label %return

if.else.61:                                       ; preds = %cond.end.24
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else.61, %cleanup, %if.then.10, %if.then
  %29 = load i32, i32* %retval
  ret i32 %29
}

declare i32 @zrepeat(%struct.gs_context_state_s*) #2

declare void @gs_c_param_list_write(%struct.gs_c_param_list_s*, %struct.gs_memory_s*) #2

declare i32 @gs_get_device_or_hw_params(%struct.gx_device_s*, %struct.gs_param_list_s*, i32) #2

declare void @gs_c_param_list_read(%struct.gs_c_param_list_s*) #2

declare i32 @param_read_bool(%struct.gs_param_list_s*, i8*, i32*) #2

declare void @gs_c_param_list_release(%struct.gs_c_param_list_s*) #2

; Function Attrs: nounwind uwtable
define internal void @psc_fixup(i8* %p, i8* %to) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %to.addr = alloca i8*, align 8
  %skip = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8, !tbaa !1
  store i8* %to, i8** %to.addr, align 8, !tbaa !1
  %0 = bitcast i32* %skip to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i8*, i8** %to.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 3
  %sub.ptr.lhs.cast = ptrtoint i8* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %add.ptr to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, i32* %skip, align 4, !tbaa !5
  %3 = load i32, i32* %skip, align 4, !tbaa !5
  %shr = ashr i32 %3, 8
  %conv1 = trunc i32 %shr to i8
  %4 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 1
  store i8 %conv1, i8* %arrayidx, align 1, !tbaa !19
  %5 = load i32, i32* %skip, align 4, !tbaa !5
  %conv2 = trunc i32 %5 to i8
  %6 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i8, i8* %6, i64 2
  store i8 %conv2, i8* %arrayidx3, align 1, !tbaa !19
  %7 = bitcast i32* %skip to i8*
  call void @llvm.lifetime.end(i64 4, i8* %7) #1
  ret void
}

declare i32 @zif(%struct.gs_context_state_s*) #2

declare i32 @zifelse(%struct.gs_context_state_s*) #2

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

declare i32 @zabs(%struct.gs_context_state_s*) #2

declare i32 @zadd(%struct.gs_context_state_s*) #2

declare i32 @zand(%struct.gs_context_state_s*) #2

declare i32 @zatan(%struct.gs_context_state_s*) #2

declare i32 @zbitshift(%struct.gs_context_state_s*) #2

declare i32 @zceiling(%struct.gs_context_state_s*) #2

declare i32 @zcos(%struct.gs_context_state_s*) #2

declare i32 @zcvi(%struct.gs_context_state_s*) #2

declare i32 @zcvr(%struct.gs_context_state_s*) #2

declare i32 @zdiv(%struct.gs_context_state_s*) #2

declare i32 @zexp(%struct.gs_context_state_s*) #2

declare i32 @zfloor(%struct.gs_context_state_s*) #2

declare i32 @zidiv(%struct.gs_context_state_s*) #2

declare i32 @zln(%struct.gs_context_state_s*) #2

declare i32 @zlog(%struct.gs_context_state_s*) #2

declare i32 @zmod(%struct.gs_context_state_s*) #2

declare i32 @zmul(%struct.gs_context_state_s*) #2

declare i32 @zneg(%struct.gs_context_state_s*) #2

declare i32 @znot(%struct.gs_context_state_s*) #2

declare i32 @zor(%struct.gs_context_state_s*) #2

declare i32 @zround(%struct.gs_context_state_s*) #2

declare i32 @zsin(%struct.gs_context_state_s*) #2

declare i32 @zsqrt(%struct.gs_context_state_s*) #2

declare i32 @zsub(%struct.gs_context_state_s*) #2

declare i32 @ztruncate(%struct.gs_context_state_s*) #2

declare i32 @zxor(%struct.gs_context_state_s*) #2

declare i32 @zeq(%struct.gs_context_state_s*) #2

declare i32 @zge(%struct.gs_context_state_s*) #2

declare i32 @zgt(%struct.gs_context_state_s*) #2

declare i32 @zle(%struct.gs_context_state_s*) #2

declare i32 @zlt(%struct.gs_context_state_s*) #2

declare i32 @zne(%struct.gs_context_state_s*) #2

declare i32 @zcopy(%struct.gs_context_state_s*) #2

declare i32 @z2copy(%struct.gs_context_state_s*) #2

declare i32 @zdup(%struct.gs_context_state_s*) #2

declare i32 @zexch(%struct.gs_context_state_s*) #2

declare i32 @zindex(%struct.gs_context_state_s*) #2

declare i32 @zpop(%struct.gs_context_state_s*) #2

declare i32 @zroll(%struct.gs_context_state_s*) #2

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
!7 = !{i64 0, i64 4, !5, i64 8, i64 8, !1, i64 16, i64 4, !5, i64 24, i64 8, !1}
!8 = !{!9, !2, i64 32}
!9 = !{!"gs_function_PtCr_params_s", !6, i64 0, !2, i64 8, !6, i64 16, !2, i64 24, !10, i64 32}
!10 = !{!"gs_const_string_s", !2, i64 0, !6, i64 8}
!11 = !{!9, !6, i64 40}
!12 = !{!13, !15, i64 0}
!13 = !{!"ref_s", !14, i64 0, !3, i64 8}
!14 = !{!"tas_s", !15, i64 0, !15, i64 2, !6, i64 4}
!15 = !{!"short", !3, i64 0}
!16 = !{!17, !2, i64 136}
!17 = !{!"gs_memory_s", !2, i64 0, !18, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!18 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!19 = !{!3, !3, i64 0}
!20 = !{!13, !6, i64 4}
!21 = !{!22, !2, i64 8}
!22 = !{!"gs_context_state_s", !2, i64 0, !23, i64 8, !6, i64 80, !13, i64 88, !13, i64 104, !25, i64 120, !25, i64 128, !25, i64 136, !6, i64 144, !6, i64 148, !13, i64 152, !13, i64 168, !6, i64 184, !6, i64 188, !6, i64 192, !6, i64 196, !2, i64 200, !3, i64 208, !2, i64 256, !26, i64 264, !26, i64 304, !2, i64 344, !6, i64 352, !2, i64 360, !27, i64 368, !29, i64 520, !30, i64 624, !2, i64 720}
!23 = !{!"gs_dual_memory_s", !2, i64 0, !24, i64 8, !6, i64 48, !2, i64 56, !6, i64 64, !6, i64 68}
!24 = !{!"vm_spaces_s", !2, i64 0, !3, i64 8}
!25 = !{!"long", !3, i64 0}
!26 = !{!"op_array_table_s", !13, i64 0, !2, i64 16, !6, i64 24, !6, i64 28, !6, i64 32}
!27 = !{!"dict_stack_s", !28, i64 0, !6, i64 96, !6, i64 100, !6, i64 104, !2, i64 112, !6, i64 120, !2, i64 128, !13, i64 136}
!28 = !{!"ref_stack_s", !2, i64 0, !2, i64 8, !2, i64 16, !13, i64 24, !6, i64 40, !6, i64 44, !13, i64 48, !6, i64 64, !6, i64 68, !6, i64 72, !2, i64 80, !2, i64 88}
!29 = !{!"exec_stack_s", !28, i64 0, !2, i64 96}
!30 = !{!"op_stack_s", !28, i64 0}
!31 = !{!17, !2, i64 192}
!32 = !{!33, !2, i64 120}
!33 = !{!"gs_lib_ctx_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !25, i64 104, !2, i64 112, !2, i64 120, !6, i64 128, !2, i64 136, !6, i64 144, !6, i64 148, !3, i64 152, !2, i64 168, !6, i64 176, !2, i64 184, !6, i64 192, !2, i64 200, !2, i64 208}
!34 = !{!25, !25, i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"float", !3, i64 0}
!37 = !{!15, !15, i64 0}
!38 = !{i64 0, i64 2, !37, i64 2, i64 2, !37, i64 4, i64 4, !5, i64 8, i64 8, !34, i64 8, i64 2, !37, i64 8, i64 4, !35, i64 8, i64 8, !34, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !34}
!39 = !{!40, !2, i64 0}
!40 = !{!"calc_op_s", !2, i64 0, !3, i64 8}
!41 = !{!40, !3, i64 8}
!42 = !{!22, !2, i64 0}
!43 = !{!44, !2, i64 1872}
!44 = !{!"gs_state_s", !6, i64 0, !2, i64 8, !2, i64 16, !45, i64 24, !6, i64 128, !48, i64 132, !6, i64 168, !49, i64 176, !49, i64 192, !6, i64 208, !6, i64 212, !15, i64 216, !3, i64 220, !51, i64 224, !51, i64 228, !52, i64 232, !25, i64 240, !6, i64 248, !6, i64 252, !6, i64 256, !2, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !36, i64 296, !53, i64 300, !6, i64 308, !6, i64 312, !6, i64 316, !36, i64 320, !6, i64 324, !6, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !6, i64 408, !2, i64 416, !2, i64 424, !54, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !55, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !55, i64 1336, !2, i64 1616, !46, i64 1624, !6, i64 1648, !46, i64 1652, !6, i64 1676, !2, i64 1680, !2, i64 1688, !2, i64 1696, !2, i64 1704, !25, i64 1712, !25, i64 1720, !2, i64 1728, !6, i64 1736, !3, i64 1744, !2, i64 1792, !2, i64 1800, !48, i64 1808, !6, i64 1844, !3, i64 1848, !3, i64 1852, !2, i64 1856, !6, i64 1864, !2, i64 1872, !2, i64 1880, !56, i64 1888}
!45 = !{!"gx_line_params_s", !36, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !6, i64 20, !36, i64 24, !36, i64 28, !36, i64 32, !6, i64 36, !46, i64 40, !47, i64 64}
!46 = !{!"gs_matrix_s", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20}
!47 = !{!"gx_dash_params_s", !2, i64 0, !6, i64 8, !36, i64 12, !6, i64 16, !36, i64 20, !6, i64 24, !6, i64 28, !36, i64 32}
!48 = !{!"gs_matrix_fixed_s", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !6, i64 24, !6, i64 28, !6, i64 32}
!49 = !{!"gs_point_s", !50, i64 0, !50, i64 8}
!50 = !{!"double", !3, i64 0}
!51 = !{!"gs_transparency_source_s", !36, i64 0}
!52 = !{!"gs_xstate_trans_flags", !6, i64 0, !6, i64 4}
!53 = !{!"gs_fixed_point_s", !6, i64 0, !6, i64 4}
!54 = !{!"gx_transfer_s", !6, i64 0, !2, i64 8, !6, i64 16, !2, i64 24, !6, i64 32, !2, i64 40, !6, i64 48, !2, i64 56}
!55 = !{!"gs_devicen_color_map_s", !6, i64 0, !3, i64 4, !6, i64 8, !6, i64 12, !25, i64 16, !3, i64 24}
!56 = !{!"gs_state_client_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!57 = !{!58, !2, i64 24}
!58 = !{!"gx_device_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !59, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !60, i64 96, !62, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !25, i64 928, !25, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !25, i64 968, !25, i64 976, !63, i64 984, !6, i64 1052, !6, i64 1056, !64, i64 1064, !2, i64 1104, !3, i64 1112, !66, i64 1120, !67, i64 1144}
!59 = !{!"rc_header_s", !25, i64 0, !2, i64 8, !2, i64 16}
!60 = !{!"gx_device_color_info_s", !6, i64 0, !6, i64 4, !3, i64 8, !15, i64 12, !3, i64 14, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !61, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !25, i64 704, !6, i64 712}
!61 = !{!"gx_device_anti_alias_info_s", !6, i64 0, !6, i64 4}
!62 = !{!"gx_device_cached_colors_s", !25, i64 0, !25, i64 8}
!63 = !{!"gx_stroked_gradient_recognizer_s", !6, i64 0, !3, i64 4, !3, i64 36}
!64 = !{!"gdev_space_params_s", !25, i64 0, !25, i64 8, !65, i64 16, !6, i64 32, !3, i64 36}
!65 = !{!"gx_band_params_s", !6, i64 0, !6, i64 4, !25, i64 8}
!66 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!67 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!68 = !{!69, !2, i64 24}
!69 = !{!"PS_colour_space_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88}
!70 = !{!69, !2, i64 32}
!71 = !{!17, !2, i64 88}
!72 = !{!69, !2, i64 48}
!73 = !{!9, !2, i64 8}
!74 = !{!9, !6, i64 0}
!75 = !{!69, !2, i64 40}
!76 = !{!9, !2, i64 24}
!77 = !{!9, !6, i64 16}
