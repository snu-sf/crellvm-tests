; ModuleID = './zcolor1.bc'
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

@.str = private unnamed_addr constant [24 x i8] c"0currentblackgeneration\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"0currentcolortransfer\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"0currentundercolorremoval\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"1setblackgeneration\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"4setcolortransfer\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"1setundercolorremoval\00", align 1
@zcolor1_op_defs = constant [7 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zcurrentblackgeneration }, %struct.op_def { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zcurrentcolortransfer }, %struct.op_def { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zcurrentundercolorremoval }, %struct.op_def { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zsetblackgeneration }, %struct.op_def { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zsetcolortransfer }, %struct.op_def { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zsetundercolorremoval }, %struct.op_def zeroinitializer], align 16
@zcolor_remap_one_ostack = external constant i32, align 4
@zcolor_remap_one_estack = external constant i32, align 4

; Function Attrs: nounwind uwtable
define internal i32 @zcurrentblackgeneration(%struct.gs_context_state_s* %i_ctx_p) #0 {
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
  %5 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !19
  %cmp = icmp ugt %struct.ref_s* %add.ptr, %5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %6, i32 0, i32 26
  %stack4 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack3, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack4, i32 0, i32 7
  store i32 1, i32* %requested, align 4, !tbaa !20
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
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %10 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %10, i32 0, i32 0
  %11 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !21
  %client_data = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %11, i32 0, i32 2
  %12 = load i8*, i8** %client_data, align 8, !tbaa !22
  %13 = bitcast i8* %12 to %struct.int_gstate_s*
  %black_generation = getelementptr inbounds %struct.int_gstate_s, %struct.int_gstate_s* %13, i32 0, i32 3
  %14 = bitcast %struct.ref_s* %9 to i8*
  %15 = bitcast %struct.ref_s* %black_generation to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 16, i32 8, i1 false), !tbaa.struct !37
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  %16 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal i32 @zcurrentcolortransfer(%struct.gs_context_state_s* %i_ctx_p) #0 {
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
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i64 4
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op, align 8, !tbaa !1
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 26
  %stack2 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack2, i32 0, i32 2
  %5 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !19
  %cmp = icmp ugt %struct.ref_s* %add.ptr, %5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %6, i32 0, i32 26
  %stack4 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack3, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack4, i32 0, i32 7
  store i32 4, i32* %requested, align 4, !tbaa !20
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
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i64 -3
  %10 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %10, i32 0, i32 0
  %11 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !21
  %client_data = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %11, i32 0, i32 2
  %12 = load i8*, i8** %client_data, align 8, !tbaa !22
  %13 = bitcast i8* %12 to %struct.int_gstate_s*
  %transfer_procs = getelementptr inbounds %struct.int_gstate_s, %struct.int_gstate_s* %13, i32 0, i32 2
  %red = getelementptr inbounds %struct.anon.2, %struct.anon.2* %transfer_procs, i32 0, i32 0
  %14 = bitcast %struct.ref_s* %arrayidx to i8*
  %15 = bitcast %struct.ref_s* %red to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 16, i32 8, i1 false), !tbaa.struct !37
  %16 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i64 -2
  %17 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs9 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %17, i32 0, i32 0
  %18 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs9, align 8, !tbaa !21
  %client_data10 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %18, i32 0, i32 2
  %19 = load i8*, i8** %client_data10, align 8, !tbaa !22
  %20 = bitcast i8* %19 to %struct.int_gstate_s*
  %transfer_procs11 = getelementptr inbounds %struct.int_gstate_s, %struct.int_gstate_s* %20, i32 0, i32 2
  %green = getelementptr inbounds %struct.anon.2, %struct.anon.2* %transfer_procs11, i32 0, i32 1
  %21 = bitcast %struct.ref_s* %arrayidx8 to i8*
  %22 = bitcast %struct.ref_s* %green to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %22, i64 16, i32 8, i1 false), !tbaa.struct !37
  %23 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i64 -1
  %24 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs13 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %24, i32 0, i32 0
  %25 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs13, align 8, !tbaa !21
  %client_data14 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %25, i32 0, i32 2
  %26 = load i8*, i8** %client_data14, align 8, !tbaa !22
  %27 = bitcast i8* %26 to %struct.int_gstate_s*
  %transfer_procs15 = getelementptr inbounds %struct.int_gstate_s, %struct.int_gstate_s* %27, i32 0, i32 2
  %blue = getelementptr inbounds %struct.anon.2, %struct.anon.2* %transfer_procs15, i32 0, i32 2
  %28 = bitcast %struct.ref_s* %arrayidx12 to i8*
  %29 = bitcast %struct.ref_s* %blue to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %29, i64 16, i32 8, i1 false), !tbaa.struct !37
  %30 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %31 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs16 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %31, i32 0, i32 0
  %32 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs16, align 8, !tbaa !21
  %client_data17 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %32, i32 0, i32 2
  %33 = load i8*, i8** %client_data17, align 8, !tbaa !22
  %34 = bitcast i8* %33 to %struct.int_gstate_s*
  %transfer_procs18 = getelementptr inbounds %struct.int_gstate_s, %struct.int_gstate_s* %34, i32 0, i32 2
  %gray = getelementptr inbounds %struct.anon.2, %struct.anon.2* %transfer_procs18, i32 0, i32 3
  %35 = bitcast %struct.ref_s* %30 to i8*
  %36 = bitcast %struct.ref_s* %gray to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %35, i8* %36, i64 16, i32 8, i1 false), !tbaa.struct !37
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  %37 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  %38 = load i32, i32* %retval
  ret i32 %38
}

; Function Attrs: nounwind uwtable
define internal i32 @zcurrentundercolorremoval(%struct.gs_context_state_s* %i_ctx_p) #0 {
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
  %5 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !19
  %cmp = icmp ugt %struct.ref_s* %add.ptr, %5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %6, i32 0, i32 26
  %stack4 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack3, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack4, i32 0, i32 7
  store i32 1, i32* %requested, align 4, !tbaa !20
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
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %10 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %10, i32 0, i32 0
  %11 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !21
  %client_data = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %11, i32 0, i32 2
  %12 = load i8*, i8** %client_data, align 8, !tbaa !22
  %13 = bitcast i8* %12 to %struct.int_gstate_s*
  %undercolor_removal = getelementptr inbounds %struct.int_gstate_s, %struct.int_gstate_s* %13, i32 0, i32 4
  %14 = bitcast %struct.ref_s* %9 to i8*
  %15 = bitcast %struct.ref_s* %undercolor_removal to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 16, i32 8, i1 false), !tbaa.struct !37
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  %16 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal i32 @zsetblackgeneration(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %es_code_ = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  br label %do.body

do.body:                                          ; preds = %entry
  %4 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %5 = load i16, i16* %type_attrs, align 2, !tbaa !42
  %conv = zext i16 %5 to i32
  %and = and i32 %conv, 15552
  %cmp = icmp eq i32 %and, 1216
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_proc_failed(%struct.ref_s* %6) #3
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.64

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %7 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack2 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %7, i32 0, i32 26
  %stack3 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack2, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack3, i32 0, i32 2
  %8 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !19
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack4 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %9, i32 0, i32 26
  %stack5 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack4, i32 0, i32 0
  %p6 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack5, i32 0, i32 0
  %10 = load %struct.ref_s*, %struct.ref_s** %p6, align 8, !tbaa !5
  %sub.ptr.lhs.cast = ptrtoint %struct.ref_s* %8 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.ref_s* %10 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 16
  %11 = load i32, i32* @zcolor_remap_one_ostack, align 4, !tbaa !39
  %sub = sub nsw i32 %11, 1
  %conv7 = sext i32 %sub to i64
  %cmp8 = icmp slt i64 %sub.ptr.div, %conv7
  br i1 %cmp8, label %if.then.10, label %if.end.14

if.then.10:                                       ; preds = %do.end
  %12 = load i32, i32* @zcolor_remap_one_ostack, align 4, !tbaa !39
  %sub11 = sub nsw i32 %12, 1
  %13 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack12 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %13, i32 0, i32 26
  %stack13 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack12, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack13, i32 0, i32 7
  store i32 %sub11, i32* %requested, align 4, !tbaa !20
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.64

if.end.14:                                        ; preds = %do.end
  %14 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %14, i32 0, i32 25
  %stack15 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p16 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack15, i32 0, i32 0
  %15 = load %struct.ref_s*, %struct.ref_s** %p16, align 8, !tbaa !43
  %16 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack17 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %16, i32 0, i32 25
  %stack18 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack17, i32 0, i32 0
  %top19 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack18, i32 0, i32 2
  %17 = load %struct.ref_s*, %struct.ref_s** %top19, align 8, !tbaa !44
  %18 = load i32, i32* @zcolor_remap_one_estack, align 4, !tbaa !39
  %add = add nsw i32 1, %18
  %idx.ext = sext i32 %add to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i64 %idx.neg
  %cmp20 = icmp ugt %struct.ref_s* %15, %add.ptr
  br i1 %cmp20, label %if.then.22, label %if.end.31

if.then.22:                                       ; preds = %if.end.14
  %19 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  %20 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack23 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %20, i32 0, i32 25
  %stack24 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack23, i32 0, i32 0
  %21 = load i32, i32* @zcolor_remap_one_estack, align 4, !tbaa !39
  %add25 = add nsw i32 1, %21
  %call26 = call i32 @ref_stack_extend(%struct.ref_stack_s* %stack24, i32 %add25) #3
  store i32 %call26, i32* %es_code_, align 4, !tbaa !39
  %22 = load i32, i32* %es_code_, align 4, !tbaa !39
  %cmp27 = icmp slt i32 %22, 0
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.then.22
  %23 = load i32, i32* %es_code_, align 4, !tbaa !39
  store i32 %23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.30:                                        ; preds = %if.then.22
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.30, %if.then.29
  %24 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.64 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.31

if.end.31:                                        ; preds = %cleanup.cont, %if.end.14
  %25 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %25, i32 0, i32 0
  %26 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !21
  %call32 = call i32 @gs_setblackgeneration_remap(%struct.gs_state_s* %26, float (double, %struct.gx_transfer_map_s*)* @gs_mapped_transfer, i32 0) #3
  store i32 %call32, i32* %code, align 4, !tbaa !39
  %27 = load i32, i32* %code, align 4, !tbaa !39
  %cmp33 = icmp slt i32 %27, 0
  br i1 %cmp33, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.end.31
  %28 = load i32, i32* %code, align 4, !tbaa !39
  store i32 %28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.64

if.end.36:                                        ; preds = %if.end.31
  %29 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs37 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %29, i32 0, i32 0
  %30 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs37, align 8, !tbaa !21
  %client_data = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %30, i32 0, i32 2
  %31 = load i8*, i8** %client_data, align 8, !tbaa !22
  %32 = bitcast i8* %31 to %struct.int_gstate_s*
  %black_generation = getelementptr inbounds %struct.int_gstate_s, %struct.int_gstate_s* %32, i32 0, i32 3
  %33 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %34 = bitcast %struct.ref_s* %black_generation to i8*
  %35 = bitcast %struct.ref_s* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* %35, i64 16, i32 8, i1 false), !tbaa.struct !37
  %36 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack38 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %36, i32 0, i32 26
  %stack39 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack38, i32 0, i32 0
  %p40 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack39, i32 0, i32 0
  %37 = load %struct.ref_s*, %struct.ref_s** %p40, align 8, !tbaa !5
  %add.ptr41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %37, i64 -1
  store %struct.ref_s* %add.ptr41, %struct.ref_s** %p40, align 8, !tbaa !5
  %38 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack42 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %38, i32 0, i32 25
  %stack43 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack42, i32 0, i32 0
  %p44 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack43, i32 0, i32 0
  %39 = load %struct.ref_s*, %struct.ref_s** %p44, align 8, !tbaa !43
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %39, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %p44, align 8, !tbaa !43
  %40 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack45 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %40, i32 0, i32 25
  %stack46 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack45, i32 0, i32 0
  %p47 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack46, i32 0, i32 0
  %41 = load %struct.ref_s*, %struct.ref_s** %p47, align 8, !tbaa !43
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %41, i32 0, i32 1
  %opproc = bitcast %union.v* %value to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @zcolor_remap_color, i32 (%struct.gs_context_state_s*)** %opproc, align 8, !tbaa !1
  %42 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack48 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %42, i32 0, i32 25
  %stack49 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack48, i32 0, i32 0
  %p50 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack49, i32 0, i32 0
  %43 = load %struct.ref_s*, %struct.ref_s** %p50, align 8, !tbaa !43
  %tas51 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %43, i32 0, i32 0
  %type_attrs52 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas51, i32 0, i32 0
  store i16 3968, i16* %type_attrs52, align 2, !tbaa !42
  %44 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack53 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %44, i32 0, i32 25
  %stack54 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack53, i32 0, i32 0
  %p55 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack54, i32 0, i32 0
  %45 = load %struct.ref_s*, %struct.ref_s** %p55, align 8, !tbaa !43
  %tas56 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %45, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas56, i32 0, i32 2
  store i32 0, i32* %rsize, align 4, !tbaa !45
  %46 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %47 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs57 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %47, i32 0, i32 0
  %48 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs57, align 8, !tbaa !21
  %client_data58 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %48, i32 0, i32 2
  %49 = load i8*, i8** %client_data58, align 8, !tbaa !22
  %50 = bitcast i8* %49 to %struct.int_gstate_s*
  %black_generation59 = getelementptr inbounds %struct.int_gstate_s, %struct.int_gstate_s* %50, i32 0, i32 3
  %51 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs60 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %51, i32 0, i32 0
  %52 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs60, align 8, !tbaa !21
  %black_generation61 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %52, i32 0, i32 44
  %53 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %black_generation61, align 8, !tbaa !46
  %54 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs62 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %54, i32 0, i32 0
  %55 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs62, align 8, !tbaa !21
  %call63 = call i32 @zcolor_remap_one(%struct.gs_context_state_s* %46, %struct.ref_s* %black_generation59, %struct.gx_transfer_map_s* %53, %struct.gs_state_s* %55, i32 (%struct.gs_context_state_s*)* @zcolor_remap_one_finish) #3
  store i32 %call63, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.64

cleanup.64:                                       ; preds = %if.end.36, %if.then.35, %cleanup, %if.then.10, %if.then
  %56 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #1
  %57 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %57) #1
  %58 = load i32, i32* %retval
  ret i32 %58
}

; Function Attrs: nounwind uwtable
define internal i32 @zsetcolortransfer(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %es_code_ = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  br label %do.body

do.body:                                          ; preds = %entry
  %4 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i64 -3
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %5 = load i16, i16* %type_attrs, align 2, !tbaa !42
  %conv = zext i16 %5 to i32
  %and = and i32 %conv, 15552
  %cmp = icmp eq i32 %and, 1216
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 -3
  %call = call i32 @check_proc_failed(%struct.ref_s* %arrayidx2) #3
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.160

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.3

do.body.3:                                        ; preds = %do.end
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i64 -2
  %tas5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx4, i32 0, i32 0
  %type_attrs6 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas5, i32 0, i32 0
  %8 = load i16, i16* %type_attrs6, align 2, !tbaa !42
  %conv7 = zext i16 %8 to i32
  %and8 = and i32 %conv7, 15552
  %cmp9 = icmp eq i32 %and8, 1216
  br i1 %cmp9, label %if.end.14, label %if.then.11

if.then.11:                                       ; preds = %do.body.3
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i64 -2
  %call13 = call i32 @check_proc_failed(%struct.ref_s* %arrayidx12) #3
  store i32 %call13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.160

if.end.14:                                        ; preds = %do.body.3
  br label %do.cond.15

do.cond.15:                                       ; preds = %if.end.14
  br label %do.end.16

do.end.16:                                        ; preds = %do.cond.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 -1
  %tas19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx18, i32 0, i32 0
  %type_attrs20 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas19, i32 0, i32 0
  %11 = load i16, i16* %type_attrs20, align 2, !tbaa !42
  %conv21 = zext i16 %11 to i32
  %and22 = and i32 %conv21, 15552
  %cmp23 = icmp eq i32 %and22, 1216
  br i1 %cmp23, label %if.end.28, label %if.then.25

if.then.25:                                       ; preds = %do.body.17
  %12 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 -1
  %call27 = call i32 @check_proc_failed(%struct.ref_s* %arrayidx26) #3
  store i32 %call27, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.160

if.end.28:                                        ; preds = %do.body.17
  br label %do.cond.29

do.cond.29:                                       ; preds = %if.end.28
  br label %do.end.30

do.end.30:                                        ; preds = %do.cond.29
  br label %do.body.31

do.body.31:                                       ; preds = %do.end.30
  %13 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 0
  %type_attrs33 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas32, i32 0, i32 0
  %14 = load i16, i16* %type_attrs33, align 2, !tbaa !42
  %conv34 = zext i16 %14 to i32
  %and35 = and i32 %conv34, 15552
  %cmp36 = icmp eq i32 %and35, 1216
  br i1 %cmp36, label %if.end.40, label %if.then.38

if.then.38:                                       ; preds = %do.body.31
  %15 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call39 = call i32 @check_proc_failed(%struct.ref_s* %15) #3
  store i32 %call39, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.160

if.end.40:                                        ; preds = %do.body.31
  br label %do.cond.41

do.cond.41:                                       ; preds = %if.end.40
  br label %do.end.42

do.end.42:                                        ; preds = %do.cond.41
  %16 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack43 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %16, i32 0, i32 26
  %stack44 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack43, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack44, i32 0, i32 2
  %17 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !19
  %18 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack45 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %18, i32 0, i32 26
  %stack46 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack45, i32 0, i32 0
  %p47 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack46, i32 0, i32 0
  %19 = load %struct.ref_s*, %struct.ref_s** %p47, align 8, !tbaa !5
  %sub.ptr.lhs.cast = ptrtoint %struct.ref_s* %17 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.ref_s* %19 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 16
  %20 = load i32, i32* @zcolor_remap_one_ostack, align 4, !tbaa !39
  %mul = mul nsw i32 %20, 4
  %sub = sub nsw i32 %mul, 4
  %conv48 = sext i32 %sub to i64
  %cmp49 = icmp slt i64 %sub.ptr.div, %conv48
  br i1 %cmp49, label %if.then.51, label %if.end.56

if.then.51:                                       ; preds = %do.end.42
  %21 = load i32, i32* @zcolor_remap_one_ostack, align 4, !tbaa !39
  %mul52 = mul nsw i32 %21, 4
  %sub53 = sub nsw i32 %mul52, 4
  %22 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack54 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %22, i32 0, i32 26
  %stack55 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack54, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack55, i32 0, i32 7
  store i32 %sub53, i32* %requested, align 4, !tbaa !20
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.160

if.end.56:                                        ; preds = %do.end.42
  %23 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %23, i32 0, i32 25
  %stack57 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p58 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack57, i32 0, i32 0
  %24 = load %struct.ref_s*, %struct.ref_s** %p58, align 8, !tbaa !43
  %25 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack59 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %25, i32 0, i32 25
  %stack60 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack59, i32 0, i32 0
  %top61 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack60, i32 0, i32 2
  %26 = load %struct.ref_s*, %struct.ref_s** %top61, align 8, !tbaa !44
  %27 = load i32, i32* @zcolor_remap_one_estack, align 4, !tbaa !39
  %mul62 = mul nsw i32 %27, 4
  %add = add nsw i32 1, %mul62
  %idx.ext = sext i32 %add to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i64 %idx.neg
  %cmp63 = icmp ugt %struct.ref_s* %24, %add.ptr
  br i1 %cmp63, label %if.then.65, label %if.end.75

if.then.65:                                       ; preds = %if.end.56
  %28 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #1
  %29 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack66 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %29, i32 0, i32 25
  %stack67 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack66, i32 0, i32 0
  %30 = load i32, i32* @zcolor_remap_one_estack, align 4, !tbaa !39
  %mul68 = mul nsw i32 %30, 4
  %add69 = add nsw i32 1, %mul68
  %call70 = call i32 @ref_stack_extend(%struct.ref_stack_s* %stack67, i32 %add69) #3
  store i32 %call70, i32* %es_code_, align 4, !tbaa !39
  %31 = load i32, i32* %es_code_, align 4, !tbaa !39
  %cmp71 = icmp slt i32 %31, 0
  br i1 %cmp71, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %if.then.65
  %32 = load i32, i32* %es_code_, align 4, !tbaa !39
  store i32 %32, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.74:                                        ; preds = %if.then.65
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.74, %if.then.73
  %33 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.160 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.75

if.end.75:                                        ; preds = %cleanup.cont, %if.end.56
  %34 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %34, i32 0, i32 0
  %35 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !21
  %client_data = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %35, i32 0, i32 2
  %36 = load i8*, i8** %client_data, align 8, !tbaa !22
  %37 = bitcast i8* %36 to %struct.int_gstate_s*
  %transfer_procs = getelementptr inbounds %struct.int_gstate_s, %struct.int_gstate_s* %37, i32 0, i32 2
  %red = getelementptr inbounds %struct.anon.2, %struct.anon.2* %transfer_procs, i32 0, i32 0
  %38 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx76 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %38, i64 -3
  %39 = bitcast %struct.ref_s* %red to i8*
  %40 = bitcast %struct.ref_s* %arrayidx76 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* %40, i64 16, i32 8, i1 false), !tbaa.struct !37
  %41 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs77 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %41, i32 0, i32 0
  %42 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs77, align 8, !tbaa !21
  %client_data78 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %42, i32 0, i32 2
  %43 = load i8*, i8** %client_data78, align 8, !tbaa !22
  %44 = bitcast i8* %43 to %struct.int_gstate_s*
  %transfer_procs79 = getelementptr inbounds %struct.int_gstate_s, %struct.int_gstate_s* %44, i32 0, i32 2
  %green = getelementptr inbounds %struct.anon.2, %struct.anon.2* %transfer_procs79, i32 0, i32 1
  %45 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx80 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %45, i64 -2
  %46 = bitcast %struct.ref_s* %green to i8*
  %47 = bitcast %struct.ref_s* %arrayidx80 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %46, i8* %47, i64 16, i32 8, i1 false), !tbaa.struct !37
  %48 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs81 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %48, i32 0, i32 0
  %49 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs81, align 8, !tbaa !21
  %client_data82 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %49, i32 0, i32 2
  %50 = load i8*, i8** %client_data82, align 8, !tbaa !22
  %51 = bitcast i8* %50 to %struct.int_gstate_s*
  %transfer_procs83 = getelementptr inbounds %struct.int_gstate_s, %struct.int_gstate_s* %51, i32 0, i32 2
  %blue = getelementptr inbounds %struct.anon.2, %struct.anon.2* %transfer_procs83, i32 0, i32 2
  %52 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx84 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %52, i64 -1
  %53 = bitcast %struct.ref_s* %blue to i8*
  %54 = bitcast %struct.ref_s* %arrayidx84 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %53, i8* %54, i64 16, i32 8, i1 false), !tbaa.struct !37
  %55 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs85 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %55, i32 0, i32 0
  %56 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs85, align 8, !tbaa !21
  %client_data86 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %56, i32 0, i32 2
  %57 = load i8*, i8** %client_data86, align 8, !tbaa !22
  %58 = bitcast i8* %57 to %struct.int_gstate_s*
  %transfer_procs87 = getelementptr inbounds %struct.int_gstate_s, %struct.int_gstate_s* %58, i32 0, i32 2
  %gray = getelementptr inbounds %struct.anon.2, %struct.anon.2* %transfer_procs87, i32 0, i32 3
  %59 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %60 = bitcast %struct.ref_s* %gray to i8*
  %61 = bitcast %struct.ref_s* %59 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %60, i8* %61, i64 16, i32 8, i1 false), !tbaa.struct !37
  %62 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs88 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %62, i32 0, i32 0
  %63 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs88, align 8, !tbaa !21
  %call89 = call i32 @gs_setcolortransfer_remap(%struct.gs_state_s* %63, float (double, %struct.gx_transfer_map_s*)* @gs_mapped_transfer, float (double, %struct.gx_transfer_map_s*)* @gs_mapped_transfer, float (double, %struct.gx_transfer_map_s*)* @gs_mapped_transfer, float (double, %struct.gx_transfer_map_s*)* @gs_mapped_transfer, i32 0) #3
  store i32 %call89, i32* %code, align 4, !tbaa !39
  %cmp90 = icmp slt i32 %call89, 0
  br i1 %cmp90, label %if.then.92, label %if.end.93

if.then.92:                                       ; preds = %if.end.75
  %64 = load i32, i32* %code, align 4, !tbaa !39
  store i32 %64, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.160

if.end.93:                                        ; preds = %if.end.75
  %65 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack94 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %65, i32 0, i32 26
  %stack95 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack94, i32 0, i32 0
  %p96 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack95, i32 0, i32 0
  %66 = load %struct.ref_s*, %struct.ref_s** %p96, align 8, !tbaa !5
  %add.ptr97 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %66, i64 -4
  store %struct.ref_s* %add.ptr97, %struct.ref_s** %p96, align 8, !tbaa !5
  %67 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack98 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %67, i32 0, i32 25
  %stack99 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack98, i32 0, i32 0
  %p100 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack99, i32 0, i32 0
  %68 = load %struct.ref_s*, %struct.ref_s** %p100, align 8, !tbaa !43
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %68, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %p100, align 8, !tbaa !43
  %69 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack101 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %69, i32 0, i32 25
  %stack102 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack101, i32 0, i32 0
  %p103 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack102, i32 0, i32 0
  %70 = load %struct.ref_s*, %struct.ref_s** %p103, align 8, !tbaa !43
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %70, i32 0, i32 1
  %opproc = bitcast %union.v* %value to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @zcolor_reset_transfer, i32 (%struct.gs_context_state_s*)** %opproc, align 8, !tbaa !1
  %71 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack104 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %71, i32 0, i32 25
  %stack105 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack104, i32 0, i32 0
  %p106 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack105, i32 0, i32 0
  %72 = load %struct.ref_s*, %struct.ref_s** %p106, align 8, !tbaa !43
  %tas107 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %72, i32 0, i32 0
  %type_attrs108 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas107, i32 0, i32 0
  store i16 3968, i16* %type_attrs108, align 2, !tbaa !42
  %73 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack109 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %73, i32 0, i32 25
  %stack110 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack109, i32 0, i32 0
  %p111 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack110, i32 0, i32 0
  %74 = load %struct.ref_s*, %struct.ref_s** %p111, align 8, !tbaa !43
  %tas112 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %74, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas112, i32 0, i32 2
  store i32 0, i32* %rsize, align 4, !tbaa !45
  %75 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %76 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs113 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %76, i32 0, i32 0
  %77 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs113, align 8, !tbaa !21
  %client_data114 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %77, i32 0, i32 2
  %78 = load i8*, i8** %client_data114, align 8, !tbaa !22
  %79 = bitcast i8* %78 to %struct.int_gstate_s*
  %transfer_procs115 = getelementptr inbounds %struct.int_gstate_s, %struct.int_gstate_s* %79, i32 0, i32 2
  %red116 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %transfer_procs115, i32 0, i32 0
  %80 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs117 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %80, i32 0, i32 0
  %81 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs117, align 8, !tbaa !21
  %set_transfer = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %81, i32 0, i32 46
  %red118 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer, i32 0, i32 1
  %82 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %red118, align 8, !tbaa !47
  %83 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs119 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %83, i32 0, i32 0
  %84 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs119, align 8, !tbaa !21
  %call120 = call i32 @zcolor_remap_one(%struct.gs_context_state_s* %75, %struct.ref_s* %red116, %struct.gx_transfer_map_s* %82, %struct.gs_state_s* %84, i32 (%struct.gs_context_state_s*)* @zcolor_remap_one_finish) #3
  store i32 %call120, i32* %code, align 4, !tbaa !39
  %cmp121 = icmp slt i32 %call120, 0
  br i1 %cmp121, label %if.then.158, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.93
  %85 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %86 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs123 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %86, i32 0, i32 0
  %87 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs123, align 8, !tbaa !21
  %client_data124 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %87, i32 0, i32 2
  %88 = load i8*, i8** %client_data124, align 8, !tbaa !22
  %89 = bitcast i8* %88 to %struct.int_gstate_s*
  %transfer_procs125 = getelementptr inbounds %struct.int_gstate_s, %struct.int_gstate_s* %89, i32 0, i32 2
  %green126 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %transfer_procs125, i32 0, i32 1
  %90 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs127 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %90, i32 0, i32 0
  %91 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs127, align 8, !tbaa !21
  %set_transfer128 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %91, i32 0, i32 46
  %green129 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer128, i32 0, i32 3
  %92 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %green129, align 8, !tbaa !48
  %93 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs130 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %93, i32 0, i32 0
  %94 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs130, align 8, !tbaa !21
  %call131 = call i32 @zcolor_remap_one(%struct.gs_context_state_s* %85, %struct.ref_s* %green126, %struct.gx_transfer_map_s* %92, %struct.gs_state_s* %94, i32 (%struct.gs_context_state_s*)* @zcolor_remap_one_finish) #3
  store i32 %call131, i32* %code, align 4, !tbaa !39
  %cmp132 = icmp slt i32 %call131, 0
  br i1 %cmp132, label %if.then.158, label %lor.lhs.false.134

lor.lhs.false.134:                                ; preds = %lor.lhs.false
  %95 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %96 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs135 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %96, i32 0, i32 0
  %97 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs135, align 8, !tbaa !21
  %client_data136 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %97, i32 0, i32 2
  %98 = load i8*, i8** %client_data136, align 8, !tbaa !22
  %99 = bitcast i8* %98 to %struct.int_gstate_s*
  %transfer_procs137 = getelementptr inbounds %struct.int_gstate_s, %struct.int_gstate_s* %99, i32 0, i32 2
  %blue138 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %transfer_procs137, i32 0, i32 2
  %100 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs139 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %100, i32 0, i32 0
  %101 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs139, align 8, !tbaa !21
  %set_transfer140 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %101, i32 0, i32 46
  %blue141 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer140, i32 0, i32 5
  %102 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %blue141, align 8, !tbaa !49
  %103 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs142 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %103, i32 0, i32 0
  %104 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs142, align 8, !tbaa !21
  %call143 = call i32 @zcolor_remap_one(%struct.gs_context_state_s* %95, %struct.ref_s* %blue138, %struct.gx_transfer_map_s* %102, %struct.gs_state_s* %104, i32 (%struct.gs_context_state_s*)* @zcolor_remap_one_finish) #3
  store i32 %call143, i32* %code, align 4, !tbaa !39
  %cmp144 = icmp slt i32 %call143, 0
  br i1 %cmp144, label %if.then.158, label %lor.lhs.false.146

lor.lhs.false.146:                                ; preds = %lor.lhs.false.134
  %105 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %106 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs147 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %106, i32 0, i32 0
  %107 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs147, align 8, !tbaa !21
  %client_data148 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %107, i32 0, i32 2
  %108 = load i8*, i8** %client_data148, align 8, !tbaa !22
  %109 = bitcast i8* %108 to %struct.int_gstate_s*
  %transfer_procs149 = getelementptr inbounds %struct.int_gstate_s, %struct.int_gstate_s* %109, i32 0, i32 2
  %gray150 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %transfer_procs149, i32 0, i32 3
  %110 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs151 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %110, i32 0, i32 0
  %111 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs151, align 8, !tbaa !21
  %set_transfer152 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %111, i32 0, i32 46
  %gray153 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer152, i32 0, i32 7
  %112 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %gray153, align 8, !tbaa !50
  %113 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs154 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %113, i32 0, i32 0
  %114 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs154, align 8, !tbaa !21
  %call155 = call i32 @zcolor_remap_one(%struct.gs_context_state_s* %105, %struct.ref_s* %gray150, %struct.gx_transfer_map_s* %112, %struct.gs_state_s* %114, i32 (%struct.gs_context_state_s*)* @zcolor_remap_one_finish) #3
  store i32 %call155, i32* %code, align 4, !tbaa !39
  %cmp156 = icmp slt i32 %call155, 0
  br i1 %cmp156, label %if.then.158, label %if.end.159

if.then.158:                                      ; preds = %lor.lhs.false.146, %lor.lhs.false.134, %lor.lhs.false, %if.end.93
  %115 = load i32, i32* %code, align 4, !tbaa !39
  store i32 %115, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.160

if.end.159:                                       ; preds = %lor.lhs.false.146
  store i32 5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.160

cleanup.160:                                      ; preds = %if.end.159, %if.then.158, %if.then.92, %cleanup, %if.then.51, %if.then.38, %if.then.25, %if.then.11, %if.then
  %116 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %116) #1
  %117 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %117) #1
  %118 = load i32, i32* %retval
  ret i32 %118
}

; Function Attrs: nounwind uwtable
define internal i32 @zsetundercolorremoval(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %es_code_ = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  br label %do.body

do.body:                                          ; preds = %entry
  %4 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %5 = load i16, i16* %type_attrs, align 2, !tbaa !42
  %conv = zext i16 %5 to i32
  %and = and i32 %conv, 15552
  %cmp = icmp eq i32 %and, 1216
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_proc_failed(%struct.ref_s* %6) #3
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.64

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %7 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack2 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %7, i32 0, i32 26
  %stack3 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack2, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack3, i32 0, i32 2
  %8 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !19
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack4 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %9, i32 0, i32 26
  %stack5 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack4, i32 0, i32 0
  %p6 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack5, i32 0, i32 0
  %10 = load %struct.ref_s*, %struct.ref_s** %p6, align 8, !tbaa !5
  %sub.ptr.lhs.cast = ptrtoint %struct.ref_s* %8 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.ref_s* %10 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 16
  %11 = load i32, i32* @zcolor_remap_one_ostack, align 4, !tbaa !39
  %sub = sub nsw i32 %11, 1
  %conv7 = sext i32 %sub to i64
  %cmp8 = icmp slt i64 %sub.ptr.div, %conv7
  br i1 %cmp8, label %if.then.10, label %if.end.14

if.then.10:                                       ; preds = %do.end
  %12 = load i32, i32* @zcolor_remap_one_ostack, align 4, !tbaa !39
  %sub11 = sub nsw i32 %12, 1
  %13 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack12 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %13, i32 0, i32 26
  %stack13 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack12, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack13, i32 0, i32 7
  store i32 %sub11, i32* %requested, align 4, !tbaa !20
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.64

if.end.14:                                        ; preds = %do.end
  %14 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %14, i32 0, i32 25
  %stack15 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p16 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack15, i32 0, i32 0
  %15 = load %struct.ref_s*, %struct.ref_s** %p16, align 8, !tbaa !43
  %16 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack17 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %16, i32 0, i32 25
  %stack18 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack17, i32 0, i32 0
  %top19 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack18, i32 0, i32 2
  %17 = load %struct.ref_s*, %struct.ref_s** %top19, align 8, !tbaa !44
  %18 = load i32, i32* @zcolor_remap_one_estack, align 4, !tbaa !39
  %add = add nsw i32 1, %18
  %idx.ext = sext i32 %add to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i64 %idx.neg
  %cmp20 = icmp ugt %struct.ref_s* %15, %add.ptr
  br i1 %cmp20, label %if.then.22, label %if.end.31

if.then.22:                                       ; preds = %if.end.14
  %19 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  %20 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack23 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %20, i32 0, i32 25
  %stack24 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack23, i32 0, i32 0
  %21 = load i32, i32* @zcolor_remap_one_estack, align 4, !tbaa !39
  %add25 = add nsw i32 1, %21
  %call26 = call i32 @ref_stack_extend(%struct.ref_stack_s* %stack24, i32 %add25) #3
  store i32 %call26, i32* %es_code_, align 4, !tbaa !39
  %22 = load i32, i32* %es_code_, align 4, !tbaa !39
  %cmp27 = icmp slt i32 %22, 0
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.then.22
  %23 = load i32, i32* %es_code_, align 4, !tbaa !39
  store i32 %23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.30:                                        ; preds = %if.then.22
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.30, %if.then.29
  %24 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.64 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.31

if.end.31:                                        ; preds = %cleanup.cont, %if.end.14
  %25 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %25, i32 0, i32 0
  %26 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !21
  %call32 = call i32 @gs_setundercolorremoval_remap(%struct.gs_state_s* %26, float (double, %struct.gx_transfer_map_s*)* @gs_mapped_transfer, i32 0) #3
  store i32 %call32, i32* %code, align 4, !tbaa !39
  %27 = load i32, i32* %code, align 4, !tbaa !39
  %cmp33 = icmp slt i32 %27, 0
  br i1 %cmp33, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.end.31
  %28 = load i32, i32* %code, align 4, !tbaa !39
  store i32 %28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.64

if.end.36:                                        ; preds = %if.end.31
  %29 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs37 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %29, i32 0, i32 0
  %30 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs37, align 8, !tbaa !21
  %client_data = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %30, i32 0, i32 2
  %31 = load i8*, i8** %client_data, align 8, !tbaa !22
  %32 = bitcast i8* %31 to %struct.int_gstate_s*
  %undercolor_removal = getelementptr inbounds %struct.int_gstate_s, %struct.int_gstate_s* %32, i32 0, i32 4
  %33 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %34 = bitcast %struct.ref_s* %undercolor_removal to i8*
  %35 = bitcast %struct.ref_s* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* %35, i64 16, i32 8, i1 false), !tbaa.struct !37
  %36 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack38 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %36, i32 0, i32 26
  %stack39 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack38, i32 0, i32 0
  %p40 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack39, i32 0, i32 0
  %37 = load %struct.ref_s*, %struct.ref_s** %p40, align 8, !tbaa !5
  %add.ptr41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %37, i64 -1
  store %struct.ref_s* %add.ptr41, %struct.ref_s** %p40, align 8, !tbaa !5
  %38 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack42 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %38, i32 0, i32 25
  %stack43 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack42, i32 0, i32 0
  %p44 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack43, i32 0, i32 0
  %39 = load %struct.ref_s*, %struct.ref_s** %p44, align 8, !tbaa !43
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %39, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %p44, align 8, !tbaa !43
  %40 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack45 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %40, i32 0, i32 25
  %stack46 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack45, i32 0, i32 0
  %p47 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack46, i32 0, i32 0
  %41 = load %struct.ref_s*, %struct.ref_s** %p47, align 8, !tbaa !43
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %41, i32 0, i32 1
  %opproc = bitcast %union.v* %value to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @zcolor_remap_color, i32 (%struct.gs_context_state_s*)** %opproc, align 8, !tbaa !1
  %42 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack48 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %42, i32 0, i32 25
  %stack49 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack48, i32 0, i32 0
  %p50 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack49, i32 0, i32 0
  %43 = load %struct.ref_s*, %struct.ref_s** %p50, align 8, !tbaa !43
  %tas51 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %43, i32 0, i32 0
  %type_attrs52 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas51, i32 0, i32 0
  store i16 3968, i16* %type_attrs52, align 2, !tbaa !42
  %44 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack53 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %44, i32 0, i32 25
  %stack54 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack53, i32 0, i32 0
  %p55 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack54, i32 0, i32 0
  %45 = load %struct.ref_s*, %struct.ref_s** %p55, align 8, !tbaa !43
  %tas56 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %45, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas56, i32 0, i32 2
  store i32 0, i32* %rsize, align 4, !tbaa !45
  %46 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %47 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs57 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %47, i32 0, i32 0
  %48 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs57, align 8, !tbaa !21
  %client_data58 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %48, i32 0, i32 2
  %49 = load i8*, i8** %client_data58, align 8, !tbaa !22
  %50 = bitcast i8* %49 to %struct.int_gstate_s*
  %undercolor_removal59 = getelementptr inbounds %struct.int_gstate_s, %struct.int_gstate_s* %50, i32 0, i32 4
  %51 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs60 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %51, i32 0, i32 0
  %52 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs60, align 8, !tbaa !21
  %undercolor_removal61 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %52, i32 0, i32 45
  %53 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %undercolor_removal61, align 8, !tbaa !51
  %54 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs62 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %54, i32 0, i32 0
  %55 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs62, align 8, !tbaa !21
  %call63 = call i32 @zcolor_remap_one(%struct.gs_context_state_s* %46, %struct.ref_s* %undercolor_removal59, %struct.gx_transfer_map_s* %53, %struct.gs_state_s* %55, i32 (%struct.gs_context_state_s*)* @zcolor_remap_one_signed_finish) #3
  store i32 %call63, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.64

cleanup.64:                                       ; preds = %if.end.36, %if.then.35, %cleanup, %if.then.10, %if.then
  %56 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #1
  %57 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %57) #1
  %58 = load i32, i32* %retval
  ret i32 %58
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare i32 @check_proc_failed(%struct.ref_s*) #2

declare i32 @ref_stack_extend(%struct.ref_stack_s*, i32) #2

declare i32 @gs_setblackgeneration_remap(%struct.gs_state_s*, float (double, %struct.gx_transfer_map_s*)*, i32) #2

declare float @gs_mapped_transfer(double, %struct.gx_transfer_map_s*) #2

declare i32 @zcolor_remap_color(%struct.gs_context_state_s*) #2

declare i32 @zcolor_remap_one(%struct.gs_context_state_s*, %struct.ref_s*, %struct.gx_transfer_map_s*, %struct.gs_state_s*, i32 (%struct.gs_context_state_s*)*) #2

declare i32 @zcolor_remap_one_finish(%struct.gs_context_state_s*) #2

declare i32 @gs_setcolortransfer_remap(%struct.gs_state_s*, float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)*, i32) #2

declare i32 @zcolor_reset_transfer(%struct.gs_context_state_s*) #2

declare i32 @gs_setundercolorremoval_remap(%struct.gs_state_s*, float (double, %struct.gx_transfer_map_s*)*, i32) #2

declare i32 @zcolor_remap_one_signed_finish(%struct.gs_context_state_s*) #2

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
!19 = !{!6, !2, i64 640}
!20 = !{!6, !9, i64 688}
!21 = !{!6, !2, i64 0}
!22 = !{!23, !2, i64 16}
!23 = !{!"gs_state_s", !9, i64 0, !2, i64 8, !2, i64 16, !24, i64 24, !9, i64 128, !28, i64 132, !9, i64 168, !29, i64 176, !29, i64 192, !9, i64 208, !9, i64 212, !12, i64 216, !3, i64 220, !31, i64 224, !31, i64 228, !32, i64 232, !13, i64 240, !9, i64 248, !9, i64 252, !9, i64 256, !2, i64 264, !9, i64 272, !9, i64 276, !9, i64 280, !9, i64 284, !9, i64 288, !9, i64 292, !25, i64 296, !33, i64 300, !9, i64 308, !9, i64 312, !9, i64 316, !25, i64 320, !9, i64 324, !9, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !9, i64 408, !2, i64 416, !2, i64 424, !34, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !35, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !35, i64 1336, !2, i64 1616, !26, i64 1624, !9, i64 1648, !26, i64 1652, !9, i64 1676, !2, i64 1680, !2, i64 1688, !2, i64 1696, !2, i64 1704, !13, i64 1712, !13, i64 1720, !2, i64 1728, !9, i64 1736, !3, i64 1744, !2, i64 1792, !2, i64 1800, !28, i64 1808, !9, i64 1844, !3, i64 1848, !3, i64 1852, !2, i64 1856, !9, i64 1864, !2, i64 1872, !2, i64 1880, !36, i64 1888}
!24 = !{!"gx_line_params_s", !25, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !9, i64 20, !25, i64 24, !25, i64 28, !25, i64 32, !9, i64 36, !26, i64 40, !27, i64 64}
!25 = !{!"float", !3, i64 0}
!26 = !{!"gs_matrix_s", !25, i64 0, !25, i64 4, !25, i64 8, !25, i64 12, !25, i64 16, !25, i64 20}
!27 = !{!"gx_dash_params_s", !2, i64 0, !9, i64 8, !25, i64 12, !9, i64 16, !25, i64 20, !9, i64 24, !9, i64 28, !25, i64 32}
!28 = !{!"gs_matrix_fixed_s", !25, i64 0, !25, i64 4, !25, i64 8, !25, i64 12, !25, i64 16, !25, i64 20, !9, i64 24, !9, i64 28, !9, i64 32}
!29 = !{!"gs_point_s", !30, i64 0, !30, i64 8}
!30 = !{!"double", !3, i64 0}
!31 = !{!"gs_transparency_source_s", !25, i64 0}
!32 = !{!"gs_xstate_trans_flags", !9, i64 0, !9, i64 4}
!33 = !{!"gs_fixed_point_s", !9, i64 0, !9, i64 4}
!34 = !{!"gx_transfer_s", !9, i64 0, !2, i64 8, !9, i64 16, !2, i64 24, !9, i64 32, !2, i64 40, !9, i64 48, !2, i64 56}
!35 = !{!"gs_devicen_color_map_s", !9, i64 0, !3, i64 4, !9, i64 8, !9, i64 12, !13, i64 16, !3, i64 24}
!36 = !{!"gs_state_client_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!37 = !{i64 0, i64 2, !38, i64 2, i64 2, !38, i64 4, i64 4, !39, i64 8, i64 8, !40, i64 8, i64 2, !38, i64 8, i64 4, !41, i64 8, i64 8, !40, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !40}
!38 = !{!12, !12, i64 0}
!39 = !{!9, !9, i64 0}
!40 = !{!13, !13, i64 0}
!41 = !{!25, !25, i64 0}
!42 = !{!10, !12, i64 0}
!43 = !{!6, !2, i64 520}
!44 = !{!6, !2, i64 536}
!45 = !{!10, !9, i64 4}
!46 = !{!23, !2, i64 416}
!47 = !{!23, !2, i64 440}
!48 = !{!23, !2, i64 456}
!49 = !{!23, !2, i64 472}
!50 = !{!23, !2, i64 488}
!51 = !{!23, !2, i64 424}
