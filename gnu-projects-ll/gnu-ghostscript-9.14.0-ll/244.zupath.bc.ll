; ModuleID = './zupath.bc'
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
%struct.gx_path_s = type { %struct.gx_path_segments_s, %struct.gs_memory_s*, i32, %struct.gx_path_segments_s*, %struct.segment_s*, %struct.gs_fixed_rect_s, %struct.segment_s*, i8, i8, i8, i8, i8, i32, i32, %struct.gs_fixed_point_s, %struct.gx_path_procs_s* }
%struct.gx_path_segments_s = type { %struct.rc_header_s, %struct.psc_ }
%struct.psc_ = type { %struct.subpath_s*, %struct.subpath_s* }
%struct.subpath_s = type { %struct.segment_s*, %struct.segment_s*, i16, i16, %struct.gs_fixed_point_s, %struct.segment_s*, i32, %struct.line_close_segment, i8 }
%struct.line_close_segment = type { %struct.segment_s*, %struct.segment_s*, i16, i16, %struct.gs_fixed_point_s, %struct.subpath_s* }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.segment_s = type { %struct.segment_s*, %struct.segment_s*, i16, i16, %struct.gs_fixed_point_s }
%struct.gx_path_procs_s = type { i32 (%struct.gx_path_s*, i32, i32)*, i32 (%struct.gx_path_s*, i32, i32, i32)*, i32 (%struct.gx_path_s*, i32, i32, i32)*, i32 (%struct.gx_path_s*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_path_s*, i32)*, i8 (%struct.gx_path_s*, i8)* }
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
%struct.up_data_s = type { i8, i8, i8 }
%struct.gs_path_enum_s = type { %struct.gs_memory_s*, %struct.gs_matrix_s, %struct.segment_s*, %struct.gx_path_s*, %struct.gx_path_s*, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"make_upath\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"ucache\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"setbbox\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"moveto\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"lineto\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"curveto\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"closepath\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"level2dict\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"1ineofill\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"1infill\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"1instroke\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"2inueofill\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"2inufill\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"2inustroke\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"1uappend\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"0ucache\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"1ueofill\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"1ufill\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"1upath\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"1ustroke\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"1ustrokepath\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"0.getpath\00", align 1
@zupath_l2_op_defs = constant [16 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* null }, %struct.op_def { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zineofill }, %struct.op_def { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zinfill }, %struct.op_def { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zinstroke }, %struct.op_def { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zinueofill }, %struct.op_def { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zinufill }, %struct.op_def { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zinustroke }, %struct.op_def { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zuappend }, %struct.op_def { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zucache }, %struct.op_def { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zueofill }, %struct.op_def { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zufill }, %struct.op_def { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zupath }, %struct.op_def { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zustroke }, %struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zustrokepath }, %struct.op_def { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zgetpath }, %struct.op_def zeroinitializer], align 16
@gs_hit_device = external constant %struct.gx_device_s, align 8
@up_data = internal constant [12 x %struct.up_data_s] [%struct.up_data_s { i8 4, i8 3, i8 4 }, %struct.up_data_s { i8 2, i8 12, i8 8 }, %struct.up_data_s { i8 2, i8 12, i8 8 }, %struct.up_data_s { i8 2, i8 12, i8 8 }, %struct.up_data_s { i8 2, i8 12, i8 8 }, %struct.up_data_s { i8 6, i8 12, i8 8 }, %struct.up_data_s { i8 6, i8 12, i8 8 }, %struct.up_data_s { i8 5, i8 12, i8 8 }, %struct.up_data_s { i8 5, i8 12, i8 8 }, %struct.up_data_s { i8 5, i8 12, i8 8 }, %struct.up_data_s { i8 0, i8 12, i8 8 }, %struct.up_data_s { i8 0, i8 1, i8 2 }], align 16
@up_ops = internal constant [12 x i32 (%struct.gs_context_state_s*)*] [i32 (%struct.gs_context_state_s*)* @zsetbbox, i32 (%struct.gs_context_state_s*)* @zmoveto, i32 (%struct.gs_context_state_s*)* @zrmoveto, i32 (%struct.gs_context_state_s*)* @zlineto, i32 (%struct.gs_context_state_s*)* @zrlineto, i32 (%struct.gs_context_state_s*)* @zcurveto, i32 (%struct.gs_context_state_s*)* @zrcurveto, i32 (%struct.gs_context_state_s*)* @zarc, i32 (%struct.gs_context_state_s*)* @zarcn, i32 (%struct.gs_context_state_s*)* @zarct, i32 (%struct.gs_context_state_s*)* @zclosepath, i32 (%struct.gs_context_state_s*)* @zucache], align 16
@gs_hit_detected = external constant i32, align 4
@.str.22 = private unnamed_addr constant [12 x i8] c"ustrokepath\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"zgetpath_master\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"zgetpath_leaf\00", align 1
@zgetpath.oper_count = internal constant [5 x i32] [i32 0, i32 2, i32 2, i32 6, i32 0], align 16

; Function Attrs: nounwind uwtable
define i32 @make_upath(%struct.gs_context_state_s* %i_ctx_p, %struct.ref_s* %rupath, %struct.gs_state_s* %pgs, %struct.gx_path_s* %ppath, i32 %with_ucache) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %rupath.addr = alloca %struct.ref_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %with_ucache.addr = alloca i32, align 4
  %size = alloca i32, align 4
  %penum = alloca %struct.gs_path_enum_s, align 8
  %bbox = alloca %struct.gs_rect_s, align 8
  %op = alloca i32, align 4
  %next = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %pts = alloca [3 x %struct.gs_point_s], align 16
  %save_path = alloca %struct.gx_path_s*, align 8
  %opstr = alloca i8*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_s* %rupath, %struct.ref_s** %rupath.addr, align 8, !tbaa !1
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store i32 %with_ucache, i32* %with_ucache.addr, align 4, !tbaa !5
  %0 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %with_ucache.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %1, 0
  %cond = select i1 %tobool, i32 6, i32 5
  store i32 %cond, i32* %size, align 4, !tbaa !5
  %2 = bitcast %struct.gs_path_enum_s* %penum to i8*
  call void @llvm.lifetime.start(i64 64, i8* %2) #1
  %3 = bitcast %struct.gs_rect_s* %bbox to i8*
  call void @llvm.lifetime.start(i64 32, i8* %3) #1
  %4 = bitcast i32* %op to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast %struct.ref_s** %next to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call = call i32 @gs_upathbbox(%struct.gs_state_s* %7, %struct.gs_rect_s* %bbox, i32 1) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %code, align 4, !tbaa !5
  %cmp1 = icmp ne i32 %8, -14
  br i1 %cmp1, label %if.then.4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %9, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %10 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !7
  %11 = bitcast %struct.gs_ref_memory_s* %10 to %struct.gs_memory_s*
  %call2 = call i32 @gs_currentcpsimode(%struct.gs_memory_s* %11) #4
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %lor.lhs.false, %if.then
  %12 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.235

if.end:                                           ; preds = %lor.lhs.false
  %q = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 1
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q, i32 0, i32 1
  store double 0.000000e+00, double* %y, align 8, !tbaa !20
  %q5 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 1
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q5, i32 0, i32 0
  store double 0.000000e+00, double* %x, align 8, !tbaa !24
  %p = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 0
  %y6 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p, i32 0, i32 1
  store double 0.000000e+00, double* %y6, align 8, !tbaa !25
  %p7 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 0
  %x8 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p7, i32 0, i32 0
  store double 0.000000e+00, double* %x8, align 8, !tbaa !26
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %entry
  %13 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %call10 = call i32 @path_length_for_upath(%struct.gx_path_s* %13) #4
  store i32 %call10, i32* %code, align 4, !tbaa !5
  %14 = load i32, i32* %code, align 4, !tbaa !5
  %cmp11 = icmp slt i32 %14, 0
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.9
  %15 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.235

if.end.13:                                        ; preds = %if.end.9
  %16 = load i32, i32* %code, align 4, !tbaa !5
  %17 = load i32, i32* %size, align 4, !tbaa !5
  %add = add nsw i32 %17, %16
  store i32 %add, i32* %size, align 4, !tbaa !5
  %18 = load i32, i32* %size, align 4, !tbaa !5
  %cmp14 = icmp sge i32 %18, 65536
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.13
  store i32 -13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.235

if.end.16:                                        ; preds = %if.end.13
  %19 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory17 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %19, i32 0, i32 1
  %current18 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory17, i32 0, i32 0
  %20 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current18, align 8, !tbaa !7
  %21 = load %struct.ref_s*, %struct.ref_s** %rupath.addr, align 8, !tbaa !1
  %22 = load i32, i32* %size, align 4, !tbaa !5
  %call19 = call i32 @gs_alloc_ref_array(%struct.gs_ref_memory_s* %20, %struct.ref_s* %21, i32 240, i32 %22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0)) #4
  store i32 %call19, i32* %code, align 4, !tbaa !5
  %23 = load i32, i32* %code, align 4, !tbaa !5
  %cmp20 = icmp slt i32 %23, 0
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.16
  %24 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %24, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.235

if.end.22:                                        ; preds = %if.end.16
  %25 = load %struct.ref_s*, %struct.ref_s** %rupath.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i32 0, i32 1
  %refs = bitcast %union.v* %value to %struct.ref_s**
  %26 = load %struct.ref_s*, %struct.ref_s** %refs, align 8, !tbaa !1
  store %struct.ref_s* %26, %struct.ref_s** %next, align 8, !tbaa !1
  %27 = load i32, i32* %with_ucache.addr, align 4, !tbaa !5
  %tobool23 = icmp ne i32 %27, 0
  br i1 %tobool23, label %if.then.24, label %if.end.31

if.then.24:                                       ; preds = %if.end.22
  %28 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory25 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %28, i32 0, i32 1
  %29 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory25, align 8, !tbaa !27
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %29, i32 0, i32 2
  %30 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !40
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %30, i32 0, i32 16
  %31 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !43
  %32 = load %struct.ref_s*, %struct.ref_s** %next, align 8, !tbaa !1
  %call26 = call i32 @names_enter_string(%struct.name_table_s* %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), %struct.ref_s* %32) #4
  store i32 %call26, i32* %code, align 4, !tbaa !5
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.then.24
  %33 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %33, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.235

if.end.29:                                        ; preds = %if.then.24
  %34 = load %struct.ref_s*, %struct.ref_s** %next, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %35 = load i16, i16* %type_attrs, align 2, !tbaa !45
  %conv = zext i16 %35 to i32
  %or = or i32 %conv, 130
  %conv30 = trunc i32 %or to i16
  store i16 %conv30, i16* %type_attrs, align 2, !tbaa !45
  %36 = load %struct.ref_s*, %struct.ref_s** %next, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %36, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %next, align 8, !tbaa !1
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.29, %if.end.22
  %p32 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 0
  %x33 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p32, i32 0, i32 0
  %37 = load double, double* %x33, align 8, !tbaa !26
  %conv34 = fptrunc double %37 to float
  %38 = load %struct.ref_s*, %struct.ref_s** %next, align 8, !tbaa !1
  %value35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %38, i32 0, i32 1
  %realval = bitcast %union.v* %value35 to float*
  store float %conv34, float* %realval, align 4, !tbaa !46
  %39 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory36 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %39, i32 0, i32 1
  %new_mask = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory36, i32 0, i32 5
  %40 = load i32, i32* %new_mask, align 4, !tbaa !47
  %or37 = or i32 0, %40
  %add38 = add i32 4096, %or37
  %conv39 = trunc i32 %add38 to i16
  %41 = load %struct.ref_s*, %struct.ref_s** %next, align 8, !tbaa !1
  %tas40 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %41, i32 0, i32 0
  %type_attrs41 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas40, i32 0, i32 0
  store i16 %conv39, i16* %type_attrs41, align 2, !tbaa !45
  %p42 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 0
  %y43 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p42, i32 0, i32 1
  %42 = load double, double* %y43, align 8, !tbaa !25
  %conv44 = fptrunc double %42 to float
  %43 = load %struct.ref_s*, %struct.ref_s** %next, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %43, i64 1
  %value45 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i32 0, i32 1
  %realval46 = bitcast %union.v* %value45 to float*
  store float %conv44, float* %realval46, align 4, !tbaa !46
  %44 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory47 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %44, i32 0, i32 1
  %new_mask48 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory47, i32 0, i32 5
  %45 = load i32, i32* %new_mask48, align 4, !tbaa !47
  %or49 = or i32 0, %45
  %add50 = add i32 4096, %or49
  %conv51 = trunc i32 %add50 to i16
  %46 = load %struct.ref_s*, %struct.ref_s** %next, align 8, !tbaa !1
  %add.ptr52 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %46, i64 1
  %tas53 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr52, i32 0, i32 0
  %type_attrs54 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas53, i32 0, i32 0
  store i16 %conv51, i16* %type_attrs54, align 2, !tbaa !45
  %q55 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 1
  %x56 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q55, i32 0, i32 0
  %47 = load double, double* %x56, align 8, !tbaa !24
  %conv57 = fptrunc double %47 to float
  %48 = load %struct.ref_s*, %struct.ref_s** %next, align 8, !tbaa !1
  %add.ptr58 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %48, i64 2
  %value59 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr58, i32 0, i32 1
  %realval60 = bitcast %union.v* %value59 to float*
  store float %conv57, float* %realval60, align 4, !tbaa !46
  %49 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory61 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %49, i32 0, i32 1
  %new_mask62 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory61, i32 0, i32 5
  %50 = load i32, i32* %new_mask62, align 4, !tbaa !47
  %or63 = or i32 0, %50
  %add64 = add i32 4096, %or63
  %conv65 = trunc i32 %add64 to i16
  %51 = load %struct.ref_s*, %struct.ref_s** %next, align 8, !tbaa !1
  %add.ptr66 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %51, i64 2
  %tas67 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr66, i32 0, i32 0
  %type_attrs68 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas67, i32 0, i32 0
  store i16 %conv65, i16* %type_attrs68, align 2, !tbaa !45
  %q69 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 1
  %y70 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q69, i32 0, i32 1
  %52 = load double, double* %y70, align 8, !tbaa !20
  %conv71 = fptrunc double %52 to float
  %53 = load %struct.ref_s*, %struct.ref_s** %next, align 8, !tbaa !1
  %add.ptr72 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %53, i64 3
  %value73 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr72, i32 0, i32 1
  %realval74 = bitcast %union.v* %value73 to float*
  store float %conv71, float* %realval74, align 4, !tbaa !46
  %54 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory75 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %54, i32 0, i32 1
  %new_mask76 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory75, i32 0, i32 5
  %55 = load i32, i32* %new_mask76, align 4, !tbaa !47
  %or77 = or i32 0, %55
  %add78 = add i32 4096, %or77
  %conv79 = trunc i32 %add78 to i16
  %56 = load %struct.ref_s*, %struct.ref_s** %next, align 8, !tbaa !1
  %add.ptr80 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %56, i64 3
  %tas81 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr80, i32 0, i32 0
  %type_attrs82 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas81, i32 0, i32 0
  store i16 %conv79, i16* %type_attrs82, align 2, !tbaa !45
  %57 = load %struct.ref_s*, %struct.ref_s** %next, align 8, !tbaa !1
  %add.ptr83 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %57, i64 4
  store %struct.ref_s* %add.ptr83, %struct.ref_s** %next, align 8, !tbaa !1
  %58 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory84 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %58, i32 0, i32 1
  %59 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory84, align 8, !tbaa !27
  %gs_lib_ctx85 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %59, i32 0, i32 2
  %60 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx85, align 8, !tbaa !40
  %gs_name_table86 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %60, i32 0, i32 16
  %61 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table86, align 8, !tbaa !43
  %62 = load %struct.ref_s*, %struct.ref_s** %next, align 8, !tbaa !1
  %call87 = call i32 @names_enter_string(%struct.name_table_s* %61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), %struct.ref_s* %62) #4
  store i32 %call87, i32* %code, align 4, !tbaa !5
  %cmp88 = icmp slt i32 %call87, 0
  br i1 %cmp88, label %if.then.90, label %if.end.91

if.then.90:                                       ; preds = %if.end.31
  %63 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %63, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.235

if.end.91:                                        ; preds = %if.end.31
  %64 = load %struct.ref_s*, %struct.ref_s** %next, align 8, !tbaa !1
  %tas92 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %64, i32 0, i32 0
  %type_attrs93 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas92, i32 0, i32 0
  %65 = load i16, i16* %type_attrs93, align 2, !tbaa !45
  %conv94 = zext i16 %65 to i32
  %or95 = or i32 %conv94, 130
  %conv96 = trunc i32 %or95 to i16
  store i16 %conv96, i16* %type_attrs93, align 2, !tbaa !45
  %66 = load %struct.ref_s*, %struct.ref_s** %next, align 8, !tbaa !1
  %incdec.ptr97 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %66, i32 1
  store %struct.ref_s* %incdec.ptr97, %struct.ref_s** %next, align 8, !tbaa !1
  %67 = bitcast [3 x %struct.gs_point_s]* %pts to i8*
  call void @llvm.lifetime.start(i64 48, i8* %67) #1
  %68 = bitcast %struct.gx_path_s** %save_path to i8*
  call void @llvm.lifetime.start(i64 8, i8* %68) #1
  %69 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %69, i32 0, i32 61
  %70 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8, !tbaa !48
  store %struct.gx_path_s* %70, %struct.gx_path_s** %save_path, align 8, !tbaa !1
  %71 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %72 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %path98 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %72, i32 0, i32 61
  store %struct.gx_path_s* %71, %struct.gx_path_s** %path98, align 8, !tbaa !48
  %73 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory99 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %73, i32 0, i32 1
  %74 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory99, align 8, !tbaa !27
  %75 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call100 = call i32 @gs_path_enum_copy_init(%struct.gs_memory_s* %74, %struct.gs_path_enum_s* %penum, %struct.gs_state_s* %75, i32 0) #4
  %76 = load %struct.gx_path_s*, %struct.gx_path_s** %save_path, align 8, !tbaa !1
  %77 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %path101 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %77, i32 0, i32 61
  store %struct.gx_path_s* %76, %struct.gx_path_s** %path101, align 8, !tbaa !48
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %if.end.91
  %arraydecay = getelementptr inbounds [3 x %struct.gs_point_s], [3 x %struct.gs_point_s]* %pts, i32 0, i32 0
  %call102 = call i32 @gs_path_enum_next(%struct.gs_path_enum_s* %penum, %struct.gs_point_s* %arraydecay) #4
  store i32 %call102, i32* %op, align 4, !tbaa !5
  %cmp103 = icmp ne i32 %call102, 0
  br i1 %cmp103, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %78 = bitcast i8** %opstr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %78) #1
  %79 = load i32, i32* %op, align 4, !tbaa !5
  switch i32 %79, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.105
    i32 3, label %sw.bb.132
    i32 4, label %sw.bb.216
  ]

sw.bb:                                            ; preds = %while.body
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8** %opstr, align 8, !tbaa !1
  br label %ml

sw.bb.105:                                        ; preds = %while.body
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8** %opstr, align 8, !tbaa !1
  br label %ml

ml:                                               ; preds = %sw.bb.105, %sw.bb
  %arrayidx = getelementptr inbounds [3 x %struct.gs_point_s], [3 x %struct.gs_point_s]* %pts, i32 0, i64 0
  %x106 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx, i32 0, i32 0
  %80 = load double, double* %x106, align 8, !tbaa !49
  %conv107 = fptrunc double %80 to float
  %81 = load %struct.ref_s*, %struct.ref_s** %next, align 8, !tbaa !1
  %value108 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %81, i32 0, i32 1
  %realval109 = bitcast %union.v* %value108 to float*
  store float %conv107, float* %realval109, align 4, !tbaa !46
  %82 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory110 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %82, i32 0, i32 1
  %new_mask111 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory110, i32 0, i32 5
  %83 = load i32, i32* %new_mask111, align 4, !tbaa !47
  %or112 = or i32 0, %83
  %add113 = add i32 4096, %or112
  %conv114 = trunc i32 %add113 to i16
  %84 = load %struct.ref_s*, %struct.ref_s** %next, align 8, !tbaa !1
  %tas115 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %84, i32 0, i32 0
  %type_attrs116 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas115, i32 0, i32 0
  store i16 %conv114, i16* %type_attrs116, align 2, !tbaa !45
  %arrayidx117 = getelementptr inbounds [3 x %struct.gs_point_s], [3 x %struct.gs_point_s]* %pts, i32 0, i64 0
  %y118 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx117, i32 0, i32 1
  %85 = load double, double* %y118, align 8, !tbaa !50
  %conv119 = fptrunc double %85 to float
  %86 = load %struct.ref_s*, %struct.ref_s** %next, align 8, !tbaa !1
  %add.ptr120 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %86, i64 1
  %value121 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr120, i32 0, i32 1
  %realval122 = bitcast %union.v* %value121 to float*
  store float %conv119, float* %realval122, align 4, !tbaa !46
  %87 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory123 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %87, i32 0, i32 1
  %new_mask124 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory123, i32 0, i32 5
  %88 = load i32, i32* %new_mask124, align 4, !tbaa !47
  %or125 = or i32 0, %88
  %add126 = add i32 4096, %or125
  %conv127 = trunc i32 %add126 to i16
  %89 = load %struct.ref_s*, %struct.ref_s** %next, align 8, !tbaa !1
  %add.ptr128 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %89, i64 1
  %tas129 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr128, i32 0, i32 0
  %type_attrs130 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas129, i32 0, i32 0
  store i16 %conv127, i16* %type_attrs130, align 2, !tbaa !45
  %90 = load %struct.ref_s*, %struct.ref_s** %next, align 8, !tbaa !1
  %add.ptr131 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %90, i64 2
  store %struct.ref_s* %add.ptr131, %struct.ref_s** %next, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.132:                                        ; preds = %while.body
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i8** %opstr, align 8, !tbaa !1
  %arrayidx133 = getelementptr inbounds [3 x %struct.gs_point_s], [3 x %struct.gs_point_s]* %pts, i32 0, i64 0
  %x134 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx133, i32 0, i32 0
  %91 = load double, double* %x134, align 8, !tbaa !49
  %conv135 = fptrunc double %91 to float
  %92 = load %struct.ref_s*, %struct.ref_s** %next, align 8, !tbaa !1
  %value136 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %92, i32 0, i32 1
  %realval137 = bitcast %union.v* %value136 to float*
  store float %conv135, float* %realval137, align 4, !tbaa !46
  %93 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory138 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %93, i32 0, i32 1
  %new_mask139 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory138, i32 0, i32 5
  %94 = load i32, i32* %new_mask139, align 4, !tbaa !47
  %or140 = or i32 0, %94
  %add141 = add i32 4096, %or140
  %conv142 = trunc i32 %add141 to i16
  %95 = load %struct.ref_s*, %struct.ref_s** %next, align 8, !tbaa !1
  %tas143 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %95, i32 0, i32 0
  %type_attrs144 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas143, i32 0, i32 0
  store i16 %conv142, i16* %type_attrs144, align 2, !tbaa !45
  %arrayidx145 = getelementptr inbounds [3 x %struct.gs_point_s], [3 x %struct.gs_point_s]* %pts, i32 0, i64 0
  %y146 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx145, i32 0, i32 1
  %96 = load double, double* %y146, align 8, !tbaa !50
  %conv147 = fptrunc double %96 to float
  %97 = load %struct.ref_s*, %struct.ref_s** %next, align 8, !tbaa !1
  %add.ptr148 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %97, i64 1
  %value149 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr148, i32 0, i32 1
  %realval150 = bitcast %union.v* %value149 to float*
  store float %conv147, float* %realval150, align 4, !tbaa !46
  %98 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory151 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %98, i32 0, i32 1
  %new_mask152 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory151, i32 0, i32 5
  %99 = load i32, i32* %new_mask152, align 4, !tbaa !47
  %or153 = or i32 0, %99
  %add154 = add i32 4096, %or153
  %conv155 = trunc i32 %add154 to i16
  %100 = load %struct.ref_s*, %struct.ref_s** %next, align 8, !tbaa !1
  %add.ptr156 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %100, i64 1
  %tas157 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr156, i32 0, i32 0
  %type_attrs158 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas157, i32 0, i32 0
  store i16 %conv155, i16* %type_attrs158, align 2, !tbaa !45
  %arrayidx159 = getelementptr inbounds [3 x %struct.gs_point_s], [3 x %struct.gs_point_s]* %pts, i32 0, i64 1
  %x160 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx159, i32 0, i32 0
  %101 = load double, double* %x160, align 8, !tbaa !49
  %conv161 = fptrunc double %101 to float
  %102 = load %struct.ref_s*, %struct.ref_s** %next, align 8, !tbaa !1
  %add.ptr162 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %102, i64 2
  %value163 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr162, i32 0, i32 1
  %realval164 = bitcast %union.v* %value163 to float*
  store float %conv161, float* %realval164, align 4, !tbaa !46
  %103 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory165 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %103, i32 0, i32 1
  %new_mask166 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory165, i32 0, i32 5
  %104 = load i32, i32* %new_mask166, align 4, !tbaa !47
  %or167 = or i32 0, %104
  %add168 = add i32 4096, %or167
  %conv169 = trunc i32 %add168 to i16
  %105 = load %struct.ref_s*, %struct.ref_s** %next, align 8, !tbaa !1
  %add.ptr170 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %105, i64 2
  %tas171 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr170, i32 0, i32 0
  %type_attrs172 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas171, i32 0, i32 0
  store i16 %conv169, i16* %type_attrs172, align 2, !tbaa !45
  %arrayidx173 = getelementptr inbounds [3 x %struct.gs_point_s], [3 x %struct.gs_point_s]* %pts, i32 0, i64 1
  %y174 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx173, i32 0, i32 1
  %106 = load double, double* %y174, align 8, !tbaa !50
  %conv175 = fptrunc double %106 to float
  %107 = load %struct.ref_s*, %struct.ref_s** %next, align 8, !tbaa !1
  %add.ptr176 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %107, i64 3
  %value177 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr176, i32 0, i32 1
  %realval178 = bitcast %union.v* %value177 to float*
  store float %conv175, float* %realval178, align 4, !tbaa !46
  %108 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory179 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %108, i32 0, i32 1
  %new_mask180 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory179, i32 0, i32 5
  %109 = load i32, i32* %new_mask180, align 4, !tbaa !47
  %or181 = or i32 0, %109
  %add182 = add i32 4096, %or181
  %conv183 = trunc i32 %add182 to i16
  %110 = load %struct.ref_s*, %struct.ref_s** %next, align 8, !tbaa !1
  %add.ptr184 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %110, i64 3
  %tas185 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr184, i32 0, i32 0
  %type_attrs186 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas185, i32 0, i32 0
  store i16 %conv183, i16* %type_attrs186, align 2, !tbaa !45
  %arrayidx187 = getelementptr inbounds [3 x %struct.gs_point_s], [3 x %struct.gs_point_s]* %pts, i32 0, i64 2
  %x188 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx187, i32 0, i32 0
  %111 = load double, double* %x188, align 8, !tbaa !49
  %conv189 = fptrunc double %111 to float
  %112 = load %struct.ref_s*, %struct.ref_s** %next, align 8, !tbaa !1
  %add.ptr190 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %112, i64 4
  %value191 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr190, i32 0, i32 1
  %realval192 = bitcast %union.v* %value191 to float*
  store float %conv189, float* %realval192, align 4, !tbaa !46
  %113 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory193 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %113, i32 0, i32 1
  %new_mask194 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory193, i32 0, i32 5
  %114 = load i32, i32* %new_mask194, align 4, !tbaa !47
  %or195 = or i32 0, %114
  %add196 = add i32 4096, %or195
  %conv197 = trunc i32 %add196 to i16
  %115 = load %struct.ref_s*, %struct.ref_s** %next, align 8, !tbaa !1
  %add.ptr198 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %115, i64 4
  %tas199 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr198, i32 0, i32 0
  %type_attrs200 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas199, i32 0, i32 0
  store i16 %conv197, i16* %type_attrs200, align 2, !tbaa !45
  %arrayidx201 = getelementptr inbounds [3 x %struct.gs_point_s], [3 x %struct.gs_point_s]* %pts, i32 0, i64 2
  %y202 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx201, i32 0, i32 1
  %116 = load double, double* %y202, align 8, !tbaa !50
  %conv203 = fptrunc double %116 to float
  %117 = load %struct.ref_s*, %struct.ref_s** %next, align 8, !tbaa !1
  %add.ptr204 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %117, i64 5
  %value205 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr204, i32 0, i32 1
  %realval206 = bitcast %union.v* %value205 to float*
  store float %conv203, float* %realval206, align 4, !tbaa !46
  %118 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory207 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %118, i32 0, i32 1
  %new_mask208 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory207, i32 0, i32 5
  %119 = load i32, i32* %new_mask208, align 4, !tbaa !47
  %or209 = or i32 0, %119
  %add210 = add i32 4096, %or209
  %conv211 = trunc i32 %add210 to i16
  %120 = load %struct.ref_s*, %struct.ref_s** %next, align 8, !tbaa !1
  %add.ptr212 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %120, i64 5
  %tas213 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr212, i32 0, i32 0
  %type_attrs214 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas213, i32 0, i32 0
  store i16 %conv211, i16* %type_attrs214, align 2, !tbaa !45
  %121 = load %struct.ref_s*, %struct.ref_s** %next, align 8, !tbaa !1
  %add.ptr215 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %121, i64 6
  store %struct.ref_s* %add.ptr215, %struct.ref_s** %next, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.216:                                        ; preds = %while.body
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i8** %opstr, align 8, !tbaa !1
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb.216, %sw.bb.132, %ml
  %122 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory217 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %122, i32 0, i32 1
  %123 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory217, align 8, !tbaa !27
  %gs_lib_ctx218 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %123, i32 0, i32 2
  %124 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx218, align 8, !tbaa !40
  %gs_name_table219 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %124, i32 0, i32 16
  %125 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table219, align 8, !tbaa !43
  %126 = load i8*, i8** %opstr, align 8, !tbaa !1
  %127 = load %struct.ref_s*, %struct.ref_s** %next, align 8, !tbaa !1
  %call220 = call i32 @names_enter_string(%struct.name_table_s* %125, i8* %126, %struct.ref_s* %127) #4
  store i32 %call220, i32* %code, align 4, !tbaa !5
  %cmp221 = icmp slt i32 %call220, 0
  br i1 %cmp221, label %if.then.223, label %if.end.224

if.then.223:                                      ; preds = %sw.epilog
  %128 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %128, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.224:                                       ; preds = %sw.epilog
  %129 = load %struct.ref_s*, %struct.ref_s** %next, align 8, !tbaa !1
  %tas225 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %129, i32 0, i32 0
  %type_attrs226 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas225, i32 0, i32 0
  %130 = load i16, i16* %type_attrs226, align 2, !tbaa !45
  %conv227 = zext i16 %130 to i32
  %or228 = or i32 %conv227, 128
  %conv229 = trunc i32 %or228 to i16
  store i16 %conv229, i16* %type_attrs226, align 2, !tbaa !45
  %131 = load %struct.ref_s*, %struct.ref_s** %next, align 8, !tbaa !1
  %incdec.ptr230 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %131, i32 1
  store %struct.ref_s* %incdec.ptr230, %struct.ref_s** %next, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.224, %if.then.223, %sw.default
  %132 = bitcast i8** %opstr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %132) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.231 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.231

cleanup.231:                                      ; preds = %while.end, %cleanup
  %133 = bitcast %struct.gx_path_s** %save_path to i8*
  call void @llvm.lifetime.end(i64 8, i8* %133) #1
  %134 = bitcast [3 x %struct.gs_point_s]* %pts to i8*
  call void @llvm.lifetime.end(i64 48, i8* %134) #1
  %cleanup.dest.233 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.233, label %cleanup.235 [
    i32 0, label %cleanup.cont.234
  ]

cleanup.cont.234:                                 ; preds = %cleanup.231
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.235

cleanup.235:                                      ; preds = %cleanup.cont.234, %cleanup.231, %if.then.90, %if.then.28, %if.then.21, %if.then.15, %if.then.12, %if.then.4
  %135 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %135) #1
  %136 = bitcast %struct.ref_s** %next to i8*
  call void @llvm.lifetime.end(i64 8, i8* %136) #1
  %137 = bitcast i32* %op to i8*
  call void @llvm.lifetime.end(i64 4, i8* %137) #1
  %138 = bitcast %struct.gs_rect_s* %bbox to i8*
  call void @llvm.lifetime.end(i64 32, i8* %138) #1
  %139 = bitcast %struct.gs_path_enum_s* %penum to i8*
  call void @llvm.lifetime.end(i64 64, i8* %139) #1
  %140 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %140) #1
  %141 = load i32, i32* %retval
  ret i32 %141
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @gs_upathbbox(%struct.gs_state_s*, %struct.gs_rect_s*, i32) #2

declare i32 @gs_currentcpsimode(%struct.gs_memory_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @path_length_for_upath(%struct.gx_path_s* %ppath) #0 {
entry:
  %retval = alloca i32, align 4
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %penum = alloca %struct.gs_path_enum_s, align 8
  %op = alloca i32, align 4
  %size = alloca i32, align 4
  %pts = alloca [3 x %struct.gs_fixed_point_s], align 16
  %cleanup.dest.slot = alloca i32
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_path_enum_s* %penum to i8*
  call void @llvm.lifetime.start(i64 64, i8* %0) #1
  %1 = bitcast i32* %op to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 0, i32* %size, align 4, !tbaa !5
  %3 = bitcast [3 x %struct.gs_fixed_point_s]* %pts to i8*
  call void @llvm.lifetime.start(i64 24, i8* %3) #1
  %4 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %call = call i32 @gx_path_enum_init(%struct.gs_path_enum_s* %penum, %struct.gx_path_s* %4) #4
  br label %while.cond

while.cond:                                       ; preds = %sw.bb.4, %sw.bb.2, %sw.bb, %entry
  %arraydecay = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %pts, i32 0, i32 0
  %call1 = call i32 @gx_path_enum_next(%struct.gs_path_enum_s* %penum, %struct.gs_fixed_point_s* %arraydecay) #4
  store i32 %call1, i32* %op, align 4, !tbaa !5
  %cmp = icmp ne i32 %call1, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i32, i32* %op, align 4, !tbaa !5
  switch i32 %5, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 3, label %sw.bb.2
    i32 4, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %while.body, %while.body
  %6 = load i32, i32* %size, align 4, !tbaa !5
  %add = add nsw i32 %6, 3
  store i32 %add, i32* %size, align 4, !tbaa !5
  br label %while.cond

sw.bb.2:                                          ; preds = %while.body
  %7 = load i32, i32* %size, align 4, !tbaa !5
  %add3 = add nsw i32 %7, 7
  store i32 %add3, i32* %size, align 4, !tbaa !5
  br label %while.cond

sw.bb.4:                                          ; preds = %while.body
  %8 = load i32, i32* %size, align 4, !tbaa !5
  %add5 = add nsw i32 %8, 1
  store i32 %add5, i32* %size, align 4, !tbaa !5
  br label %while.cond

sw.default:                                       ; preds = %while.body
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

while.end:                                        ; preds = %while.cond
  %9 = load i32, i32* %size, align 4, !tbaa !5
  store i32 %9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %sw.default
  %10 = bitcast [3 x %struct.gs_fixed_point_s]* %pts to i8*
  call void @llvm.lifetime.end(i64 24, i8* %10) #1
  %11 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %11) #1
  %12 = bitcast i32* %op to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #1
  %13 = bitcast %struct.gs_path_enum_s* %penum to i8*
  call void @llvm.lifetime.end(i64 64, i8* %13) #1
  %14 = load i32, i32* %retval
  ret i32 %14
}

declare i32 @gs_alloc_ref_array(%struct.gs_ref_memory_s*, %struct.ref_s*, i32, i32, i8*) #2

declare i32 @names_enter_string(%struct.name_table_s*, i8*, %struct.ref_s*) #2

declare i32 @gs_path_enum_copy_init(%struct.gs_memory_s*, %struct.gs_path_enum_s*, %struct.gs_state_s*, i32) #2

declare i32 @gs_path_enum_next(%struct.gs_path_enum_s*, %struct.gs_point_s*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal i32 @zineofill(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @in_test(%struct.gs_context_state_s* %0, i32 (%struct.gs_state_s*)* @gs_eofill) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @zinfill(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @in_test(%struct.gs_context_state_s* %0, i32 (%struct.gs_state_s*)* @gs_fill) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @zinstroke(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @in_test(%struct.gs_context_state_s* %0, i32 (%struct.gs_state_s*)* @gs_stroke) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @zinueofill(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @in_utest(%struct.gs_context_state_s* %0, i32 (%struct.gs_state_s*)* @gs_eofill) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @zinufill(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @in_utest(%struct.gs_context_state_s* %0, i32 (%struct.gs_state_s*)* @gs_fill) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @zinustroke(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %spop = alloca i32, align 4
  %npop = alloca i32, align 4
  %mat = alloca %struct.gs_matrix_s, align 4
  %hdev = alloca %struct.gx_device_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !51
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 0
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !52
  %call = call i32 @gs_gsave(%struct.gs_state_s* %5) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %6 = bitcast i32* %spop to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %npop to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast %struct.gs_matrix_s* %mat to i8*
  call void @llvm.lifetime.start(i64 24, i8* %8) #1
  %9 = bitcast %struct.gx_device_s* %hdev to i8*
  call void @llvm.lifetime.start(i64 1728, i8* %9) #1
  %10 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %10, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call1 = call i32 @upath_stroke(%struct.gs_context_state_s* %12, %struct.gs_matrix_s* %mat, i32 0) #4
  store i32 %call1, i32* %spop, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.end.6

if.then.3:                                        ; preds = %if.end
  %13 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs4 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %13, i32 0, i32 0
  %14 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs4, align 8, !tbaa !52
  %call5 = call i32 @gs_grestore(%struct.gs_state_s* %14) #4
  %15 = load i32, i32* %spop, align 4, !tbaa !5
  store i32 %15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.end
  %16 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %17 = load i32, i32* %spop, align 4, !tbaa !5
  %idx.ext = sext i32 %17 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i64 %idx.neg
  %18 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call7 = call i32 @in_path(%struct.ref_s* %add.ptr, %struct.gs_context_state_s* %18, %struct.gx_device_s* %hdev) #4
  store i32 %call7, i32* %npop, align 4, !tbaa !5
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %if.end.6
  %19 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs10 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %19, i32 0, i32 0
  %20 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs10, align 8, !tbaa !52
  %call11 = call i32 @gs_grestore(%struct.gs_state_s* %20) #4
  %21 = load i32, i32* %npop, align 4, !tbaa !5
  store i32 %21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.end.6
  %22 = load i32, i32* %npop, align 4, !tbaa !5
  %cmp13 = icmp sgt i32 %22, 1
  br i1 %cmp13, label %if.then.14, label %if.end.17

if.then.14:                                       ; preds = %if.end.12
  %23 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs15 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %23, i32 0, i32 0
  %24 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs15, align 8, !tbaa !52
  %call16 = call i32 @gs_concat(%struct.gs_state_s* %24, %struct.gs_matrix_s* %mat) #4
  store i32 %call16, i32* %code, align 4, !tbaa !5
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.14, %if.end.12
  %25 = load i32, i32* %code, align 4, !tbaa !5
  %cmp18 = icmp sge i32 %25, 0
  br i1 %cmp18, label %if.then.19, label %if.end.22

if.then.19:                                       ; preds = %if.end.17
  %26 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs20 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %26, i32 0, i32 0
  %27 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs20, align 8, !tbaa !52
  %call21 = call i32 @gs_stroke(%struct.gs_state_s* %27) #4
  store i32 %call21, i32* %code, align 4, !tbaa !5
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.19, %if.end.17
  %28 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %29 = load i32, i32* %npop, align 4, !tbaa !5
  %30 = load i32, i32* %spop, align 4, !tbaa !5
  %add = add nsw i32 %29, %30
  %31 = load i32, i32* %code, align 4, !tbaa !5
  %call23 = call i32 @in_upath_result(%struct.gs_context_state_s* %28, i32 %add, i32 %31) #4
  store i32 %call23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.22, %if.then.9, %if.then.3, %if.then
  %32 = bitcast %struct.gx_device_s* %hdev to i8*
  call void @llvm.lifetime.end(i64 1728, i8* %32) #1
  %33 = bitcast %struct.gs_matrix_s* %mat to i8*
  call void @llvm.lifetime.end(i64 24, i8* %33) #1
  %34 = bitcast i32* %npop to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  %35 = bitcast i32* %spop to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %36 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  %37 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  %38 = load i32, i32* %retval
  ret i32 %38
}

; Function Attrs: nounwind uwtable
define internal i32 @zuappend(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !51
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 0
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !52
  %call = call i32 @gs_gsave(%struct.gs_state_s* %5) #4
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
  %8 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call1 = call i32 @upath_append(%struct.ref_s* %8, %struct.gs_context_state_s* %9, i32 0) #4
  store i32 %call1, i32* %code, align 4, !tbaa !5
  %cmp2 = icmp sge i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.end.6

if.then.3:                                        ; preds = %if.end
  %10 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs4 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %10, i32 0, i32 0
  %11 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs4, align 8, !tbaa !52
  %call5 = call i32 @gs_upmergepath(%struct.gs_state_s* %11) #4
  store i32 %call5, i32* %code, align 4, !tbaa !5
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.3, %if.end
  %12 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs7 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %12, i32 0, i32 0
  %13 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs7, align 8, !tbaa !52
  %call8 = call i32 @gs_grestore(%struct.gs_state_s* %13) #4
  %14 = load i32, i32* %code, align 4, !tbaa !5
  %cmp9 = icmp slt i32 %14, 0
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.6
  %15 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %if.end.6
  %16 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack12 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %16, i32 0, i32 26
  %stack13 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack12, i32 0, i32 0
  %p14 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack13, i32 0, i32 0
  %17 = load %struct.ref_s*, %struct.ref_s** %p14, align 8, !tbaa !51
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p14, align 8, !tbaa !51
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.11, %if.then.10, %if.then
  %18 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #1
  %19 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #1
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal i32 @zucache(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @zueofill(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !51
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 0
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !52
  %call = call i32 @gs_gsave(%struct.gs_state_s* %5) #4
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
  %8 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %10 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %10, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %11 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !7
  %12 = bitcast %struct.gs_ref_memory_s* %11 to %struct.gs_memory_s*
  %call1 = call i32 @gs_currentcpsimode(%struct.gs_memory_s* %12) #4
  %call2 = call i32 @upath_append(%struct.ref_s* %8, %struct.gs_context_state_s* %9, i32 %call1) #4
  store i32 %call2, i32* %code, align 4, !tbaa !5
  %cmp3 = icmp sge i32 %call2, 0
  br i1 %cmp3, label %if.then.4, label %if.end.7

if.then.4:                                        ; preds = %if.end
  %13 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs5 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %13, i32 0, i32 0
  %14 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs5, align 8, !tbaa !52
  %call6 = call i32 @gs_eofill(%struct.gs_state_s* %14) #4
  store i32 %call6, i32* %code, align 4, !tbaa !5
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.4, %if.end
  %15 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs8 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %15, i32 0, i32 0
  %16 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs8, align 8, !tbaa !52
  %call9 = call i32 @gs_grestore(%struct.gs_state_s* %16) #4
  %17 = load i32, i32* %code, align 4, !tbaa !5
  %cmp10 = icmp slt i32 %17, 0
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.7
  %18 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.end.7
  %19 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack13 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %19, i32 0, i32 26
  %stack14 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack13, i32 0, i32 0
  %p15 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack14, i32 0, i32 0
  %20 = load %struct.ref_s*, %struct.ref_s** %p15, align 8, !tbaa !51
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p15, align 8, !tbaa !51
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.12, %if.then.11, %if.then
  %21 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  %22 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  %23 = load i32, i32* %retval
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define internal i32 @zufill(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !51
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 0
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !52
  %call = call i32 @gs_gsave(%struct.gs_state_s* %5) #4
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
  %8 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %10 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %10, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %11 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !7
  %12 = bitcast %struct.gs_ref_memory_s* %11 to %struct.gs_memory_s*
  %call1 = call i32 @gs_currentcpsimode(%struct.gs_memory_s* %12) #4
  %call2 = call i32 @upath_append(%struct.ref_s* %8, %struct.gs_context_state_s* %9, i32 %call1) #4
  store i32 %call2, i32* %code, align 4, !tbaa !5
  %cmp3 = icmp sge i32 %call2, 0
  br i1 %cmp3, label %if.then.4, label %if.end.7

if.then.4:                                        ; preds = %if.end
  %13 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs5 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %13, i32 0, i32 0
  %14 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs5, align 8, !tbaa !52
  %call6 = call i32 @gs_fill(%struct.gs_state_s* %14) #4
  store i32 %call6, i32* %code, align 4, !tbaa !5
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.4, %if.end
  %15 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs8 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %15, i32 0, i32 0
  %16 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs8, align 8, !tbaa !52
  %call9 = call i32 @gs_grestore(%struct.gs_state_s* %16) #4
  %17 = load i32, i32* %code, align 4, !tbaa !5
  %cmp10 = icmp slt i32 %17, 0
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.7
  %18 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.end.7
  %19 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack13 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %19, i32 0, i32 26
  %stack14 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack13, i32 0, i32 0
  %p15 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack14, i32 0, i32 0
  %20 = load %struct.ref_s*, %struct.ref_s** %p15, align 8, !tbaa !51
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p15, align 8, !tbaa !51
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.12, %if.then.11, %if.then
  %21 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  %22 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  %23 = load i32, i32* %retval
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define internal i32 @zupath(%struct.gs_context_state_s* %i_ctx_p) #0 {
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
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !51
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %4 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 1
  %5 = load i8, i8* %arrayidx, align 1, !tbaa !53
  %conv = zext i8 %5 to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %6) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %8 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %9, i32 0, i32 0
  %10 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !52
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs2 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %11, i32 0, i32 0
  %12 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs2, align 8, !tbaa !52
  %path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %12, i32 0, i32 61
  %13 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8, !tbaa !48
  %14 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 1
  %boolval = bitcast %union.v* %value to i16*
  %15 = load i16, i16* %boolval, align 2, !tbaa !54
  %conv3 = zext i16 %15 to i32
  %call4 = call i32 @make_upath(%struct.gs_context_state_s* %7, %struct.ref_s* %8, %struct.gs_state_s* %10, %struct.gx_path_s* %13, i32 %conv3) #4
  store i32 %call4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %16 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal i32 @zustroke(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %code = alloca i32, align 4
  %npop = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 0
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !52
  %call = call i32 @gs_gsave(%struct.gs_state_s* %2) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %3 = bitcast i32* %npop to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %7 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %7, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %8 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !7
  %9 = bitcast %struct.gs_ref_memory_s* %8 to %struct.gs_memory_s*
  %call1 = call i32 @gs_currentcpsimode(%struct.gs_memory_s* %9) #4
  %call2 = call i32 @upath_stroke(%struct.gs_context_state_s* %6, %struct.gs_matrix_s* null, i32 %call1) #4
  store i32 %call2, i32* %npop, align 4, !tbaa !5
  store i32 %call2, i32* %code, align 4, !tbaa !5
  %cmp3 = icmp sge i32 %call2, 0
  br i1 %cmp3, label %if.then.4, label %if.end.7

if.then.4:                                        ; preds = %if.end
  %10 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs5 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %10, i32 0, i32 0
  %11 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs5, align 8, !tbaa !52
  %call6 = call i32 @gs_stroke(%struct.gs_state_s* %11) #4
  store i32 %call6, i32* %code, align 4, !tbaa !5
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.4, %if.end
  %12 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs8 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %12, i32 0, i32 0
  %13 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs8, align 8, !tbaa !52
  %call9 = call i32 @gs_grestore(%struct.gs_state_s* %13) #4
  %14 = load i32, i32* %code, align 4, !tbaa !5
  %cmp10 = icmp slt i32 %14, 0
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.7
  %15 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.end.7
  %16 = load i32, i32* %npop, align 4, !tbaa !5
  %17 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %17, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %18 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !51
  %idx.ext = sext i32 %16 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i64 %idx.neg
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p, align 8, !tbaa !51
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.12, %if.then.11, %if.then
  %19 = bitcast i32* %npop to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  %20 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal i32 @zustrokepath(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %save = alloca %struct.gx_path_s, align 8
  %saved_matrix = alloca %struct.gs_matrix_s, align 4
  %npop = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_path_s* %save to i8*
  call void @llvm.lifetime.start(i64 128, i8* %0) #1
  %1 = bitcast %struct.gs_matrix_s* %saved_matrix to i8*
  call void @llvm.lifetime.start(i64 24, i8* %1) #1
  %2 = bitcast i32* %npop to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 0
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !52
  %call = call i32 @gs_currentmatrix(%struct.gs_state_s* %5, %struct.gs_matrix_s* %saved_matrix) #4
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
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %8, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %9 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !7
  %10 = bitcast %struct.gs_ref_memory_s* %9 to %struct.gs_memory_s*
  %call1 = call i32 @gx_path_init_local_shared(%struct.gx_path_s* %save, %struct.gx_path_s* null, %struct.gs_memory_s* %10) #4
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs2 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %11, i32 0, i32 0
  %12 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs2, align 8, !tbaa !52
  %path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %12, i32 0, i32 61
  %13 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8, !tbaa !48
  %call3 = call i32 @gx_path_assign_preserve(%struct.gx_path_s* %save, %struct.gx_path_s* %13) #4
  %14 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call4 = call i32 @upath_stroke(%struct.gs_context_state_s* %14, %struct.gs_matrix_s* null, i32 0) #4
  store i32 %call4, i32* %npop, align 4, !tbaa !5
  store i32 %call4, i32* %code, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %15 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs6 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %15, i32 0, i32 0
  %16 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs6, align 8, !tbaa !52
  %call7 = call i32 @gs_strokepath(%struct.gs_state_s* %16) #4
  store i32 %call7, i32* %code, align 4, !tbaa !5
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then.9, label %if.end.13

if.then.9:                                        ; preds = %lor.lhs.false, %if.end
  %17 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs10 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %17, i32 0, i32 0
  %18 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs10, align 8, !tbaa !52
  %path11 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %18, i32 0, i32 61
  %19 = load %struct.gx_path_s*, %struct.gx_path_s** %path11, align 8, !tbaa !48
  %call12 = call i32 @gx_path_assign_free(%struct.gx_path_s* %19, %struct.gx_path_s* %save) #4
  %20 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.13:                                        ; preds = %lor.lhs.false
  %21 = load i32, i32* %npop, align 4, !tbaa !5
  %cmp14 = icmp sgt i32 %21, 1
  br i1 %cmp14, label %if.then.15, label %if.end.24

if.then.15:                                       ; preds = %if.end.13
  %22 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs16 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %22, i32 0, i32 0
  %23 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs16, align 8, !tbaa !52
  %call17 = call i32 @gs_setmatrix(%struct.gs_state_s* %23, %struct.gs_matrix_s* %saved_matrix) #4
  store i32 %call17, i32* %code, align 4, !tbaa !5
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.then.19, label %if.end.23

if.then.19:                                       ; preds = %if.then.15
  %24 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs20 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %24, i32 0, i32 0
  %25 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs20, align 8, !tbaa !52
  %path21 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %25, i32 0, i32 61
  %26 = load %struct.gx_path_s*, %struct.gx_path_s** %path21, align 8, !tbaa !48
  %call22 = call i32 @gx_path_assign_free(%struct.gx_path_s* %26, %struct.gx_path_s* %save) #4
  %27 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %27, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.23:                                        ; preds = %if.then.15
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.end.13
  call void @gx_path_free(%struct.gx_path_s* %save, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0)) #4
  %28 = load i32, i32* %npop, align 4, !tbaa !5
  %29 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %29, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %30 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !51
  %idx.ext = sext i32 %28 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i64 %idx.neg
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p, align 8, !tbaa !51
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.24, %if.then.19, %if.then.9, %if.then
  %31 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  %32 = bitcast i32* %npop to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #1
  %33 = bitcast %struct.gs_matrix_s* %saved_matrix to i8*
  call void @llvm.lifetime.end(i64 24, i8* %33) #1
  %34 = bitcast %struct.gx_path_s* %save to i8*
  call void @llvm.lifetime.end(i64 128, i8* %34) #1
  %35 = load i32, i32* %retval
  ret i32 %35
}

; Function Attrs: nounwind uwtable
define internal i32 @zgetpath(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %i = alloca i32, align 4
  %code = alloca i32, align 4
  %path_size = alloca i32, align 4
  %leaf_count = alloca i32, align 4
  %main_ref = alloca %struct.ref_s*, align 8
  %operators = alloca [5 x %struct.ref_s*], align 16
  %cleanup.dest.slot = alloca i32
  %leaf_size = alloca i32, align 4
  %pe = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %penum = alloca %struct.gs_path_enum_s, align 8
  %pts = alloca [3 x %struct.gs_point_s], align 16
  %fts = alloca [6 x double*], align 16
  %leaf_size79 = alloca i32, align 4
  %leaf_ref = alloca %struct.ref_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !51
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %path_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %leaf_count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast %struct.ref_s** %main_ref to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast [5 x %struct.ref_s*]* %operators to i8*
  call void @llvm.lifetime.start(i64 40, i8* %8) #1
  br label %do.body

do.body:                                          ; preds = %entry
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i64 1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op, align 8, !tbaa !1
  %10 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %10, i32 0, i32 26
  %stack2 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack2, i32 0, i32 2
  %11 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !55
  %cmp = icmp ugt %struct.ref_s* %add.ptr, %11
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %12 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %12, i32 0, i32 26
  %stack4 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack3, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack4, i32 0, i32 7
  store i32 1, i32* %requested, align 4, !tbaa !56
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.144

if.else:                                          ; preds = %do.body
  %13 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %14 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack5 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %14, i32 0, i32 26
  %stack6 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack5, i32 0, i32 0
  %p7 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack6, i32 0, i32 0
  store %struct.ref_s* %13, %struct.ref_s** %p7, align 8, !tbaa !51
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %15 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %15, i32 0, i32 0
  %16 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !52
  %path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %16, i32 0, i32 61
  %17 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8, !tbaa !48
  %call = call i32 @path_length_for_upath(%struct.gx_path_s* %17) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  store i32 %call, i32* %path_size, align 4, !tbaa !5
  %18 = load i32, i32* %code, align 4, !tbaa !5
  %cmp8 = icmp slt i32 %18, 0
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %do.end
  %19 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %19, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.144

if.end.10:                                        ; preds = %do.end
  %20 = load i32, i32* %path_size, align 4, !tbaa !5
  %add = add nsw i32 %20, 16777216
  %sub = sub nsw i32 %add, 1
  %div = sdiv i32 %sub, 16777216
  store i32 %div, i32* %leaf_count, align 4, !tbaa !5
  %21 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %21, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %22 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !7
  %23 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %24 = load i32, i32* %leaf_count, align 4, !tbaa !5
  %call11 = call i32 @gs_alloc_ref_array(%struct.gs_ref_memory_s* %22, %struct.ref_s* %23, i32 112, i32 %24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i32 0, i32 0)) #4
  store i32 %call11, i32* %code, align 4, !tbaa !5
  %25 = load i32, i32* %code, align 4, !tbaa !5
  %cmp12 = icmp slt i32 %25, 0
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.10
  %26 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %26, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.144

if.end.14:                                        ; preds = %if.end.10
  %27 = load i32, i32* %path_size, align 4, !tbaa !5
  %cmp15 = icmp eq i32 %27, 0
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.14
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.144

if.end.17:                                        ; preds = %if.end.14
  %28 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %28, i32 0, i32 24
  %system_dict = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack, i32 0, i32 7
  %arrayidx = getelementptr inbounds [5 x %struct.ref_s*], [5 x %struct.ref_s*]* %operators, i32 0, i64 1
  %call18 = call i32 @dict_find_string(%struct.ref_s* %system_dict, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), %struct.ref_s** %arrayidx) #4
  %cmp19 = icmp sle i32 %call18, 0
  br i1 %cmp19, label %if.then.37, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.17
  %29 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack20 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %29, i32 0, i32 24
  %system_dict21 = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack20, i32 0, i32 7
  %arrayidx22 = getelementptr inbounds [5 x %struct.ref_s*], [5 x %struct.ref_s*]* %operators, i32 0, i64 2
  %call23 = call i32 @dict_find_string(%struct.ref_s* %system_dict21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), %struct.ref_s** %arrayidx22) #4
  %cmp24 = icmp sle i32 %call23, 0
  br i1 %cmp24, label %if.then.37, label %lor.lhs.false.25

lor.lhs.false.25:                                 ; preds = %lor.lhs.false
  %30 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack26 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %30, i32 0, i32 24
  %system_dict27 = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack26, i32 0, i32 7
  %arrayidx28 = getelementptr inbounds [5 x %struct.ref_s*], [5 x %struct.ref_s*]* %operators, i32 0, i64 3
  %call29 = call i32 @dict_find_string(%struct.ref_s* %system_dict27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), %struct.ref_s** %arrayidx28) #4
  %cmp30 = icmp sle i32 %call29, 0
  br i1 %cmp30, label %if.then.37, label %lor.lhs.false.31

lor.lhs.false.31:                                 ; preds = %lor.lhs.false.25
  %31 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack32 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %31, i32 0, i32 24
  %system_dict33 = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack32, i32 0, i32 7
  %arrayidx34 = getelementptr inbounds [5 x %struct.ref_s*], [5 x %struct.ref_s*]* %operators, i32 0, i64 4
  %call35 = call i32 @dict_find_string(%struct.ref_s* %system_dict33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), %struct.ref_s** %arrayidx34) #4
  %cmp36 = icmp sle i32 %call35, 0
  br i1 %cmp36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %lor.lhs.false.31, %lor.lhs.false.25, %lor.lhs.false, %if.end.17
  store i32 -21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.144

if.end.38:                                        ; preds = %lor.lhs.false.31
  %32 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i32 0, i32 1
  %refs = bitcast %union.v* %value to %struct.ref_s**
  %33 = load %struct.ref_s*, %struct.ref_s** %refs, align 8, !tbaa !1
  store %struct.ref_s* %33, %struct.ref_s** %main_ref, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.38
  %34 = load i32, i32* %i, align 4, !tbaa !5
  %35 = load i32, i32* %leaf_count, align 4, !tbaa !5
  %cmp39 = icmp slt i32 %34, %35
  br i1 %cmp39, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %36 = bitcast i32* %leaf_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %36) #1
  %37 = load i32, i32* %i, align 4, !tbaa !5
  %38 = load i32, i32* %leaf_count, align 4, !tbaa !5
  %sub40 = sub nsw i32 %38, 1
  %cmp41 = icmp eq i32 %37, %sub40
  br i1 %cmp41, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %39 = load i32, i32* %path_size, align 4, !tbaa !5
  %40 = load i32, i32* %i, align 4, !tbaa !5
  %mul = mul nsw i32 %40, 16777216
  %sub42 = sub nsw i32 %39, %mul
  br label %cond.end

cond.false:                                       ; preds = %for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub42, %cond.true ], [ 16777216, %cond.false ]
  store i32 %cond, i32* %leaf_size, align 4, !tbaa !5
  %41 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory43 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %41, i32 0, i32 1
  %current44 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory43, i32 0, i32 0
  %42 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current44, align 8, !tbaa !7
  %43 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %43 to i64
  %44 = load %struct.ref_s*, %struct.ref_s** %main_ref, align 8, !tbaa !1
  %arrayidx45 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %44, i64 %idxprom
  %45 = load i32, i32* %leaf_size, align 4, !tbaa !5
  %call46 = call i32 @gs_alloc_ref_array(%struct.gs_ref_memory_s* %42, %struct.ref_s* %arrayidx45, i32 240, i32 %45, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0)) #4
  store i32 %call46, i32* %code, align 4, !tbaa !5
  %46 = load i32, i32* %code, align 4, !tbaa !5
  %cmp47 = icmp slt i32 %46, 0
  br i1 %cmp47, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %cond.end
  %47 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %47, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.49:                                        ; preds = %cond.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.49, %if.then.48
  %48 = bitcast i32* %leaf_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.144 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %49 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %49, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %50 = bitcast i32* %pe to i8*
  call void @llvm.lifetime.start(i64 4, i8* %50) #1
  %51 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %51) #1
  %52 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %52) #1
  %53 = bitcast %struct.gs_path_enum_s* %penum to i8*
  call void @llvm.lifetime.start(i64 64, i8* %53) #1
  %54 = bitcast [3 x %struct.gs_point_s]* %pts to i8*
  call void @llvm.lifetime.start(i64 48, i8* %54) #1
  %55 = bitcast [6 x double*]* %fts to i8*
  call void @llvm.lifetime.start(i64 48, i8* %55) #1
  %arrayidx50 = getelementptr inbounds [3 x %struct.gs_point_s], [3 x %struct.gs_point_s]* %pts, i32 0, i64 0
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx50, i32 0, i32 0
  %arrayidx51 = getelementptr inbounds [6 x double*], [6 x double*]* %fts, i32 0, i64 0
  store double* %x, double** %arrayidx51, align 8, !tbaa !1
  %arrayidx52 = getelementptr inbounds [3 x %struct.gs_point_s], [3 x %struct.gs_point_s]* %pts, i32 0, i64 0
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx52, i32 0, i32 1
  %arrayidx53 = getelementptr inbounds [6 x double*], [6 x double*]* %fts, i32 0, i64 1
  store double* %y, double** %arrayidx53, align 8, !tbaa !1
  %arrayidx54 = getelementptr inbounds [3 x %struct.gs_point_s], [3 x %struct.gs_point_s]* %pts, i32 0, i64 1
  %x55 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx54, i32 0, i32 0
  %arrayidx56 = getelementptr inbounds [6 x double*], [6 x double*]* %fts, i32 0, i64 2
  store double* %x55, double** %arrayidx56, align 8, !tbaa !1
  %arrayidx57 = getelementptr inbounds [3 x %struct.gs_point_s], [3 x %struct.gs_point_s]* %pts, i32 0, i64 1
  %y58 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx57, i32 0, i32 1
  %arrayidx59 = getelementptr inbounds [6 x double*], [6 x double*]* %fts, i32 0, i64 3
  store double* %y58, double** %arrayidx59, align 8, !tbaa !1
  %arrayidx60 = getelementptr inbounds [3 x %struct.gs_point_s], [3 x %struct.gs_point_s]* %pts, i32 0, i64 2
  %x61 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx60, i32 0, i32 0
  %arrayidx62 = getelementptr inbounds [6 x double*], [6 x double*]* %fts, i32 0, i64 4
  store double* %x61, double** %arrayidx62, align 8, !tbaa !1
  %arrayidx63 = getelementptr inbounds [3 x %struct.gs_point_s], [3 x %struct.gs_point_s]* %pts, i32 0, i64 2
  %y64 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx63, i32 0, i32 1
  %arrayidx65 = getelementptr inbounds [6 x double*], [6 x double*]* %fts, i32 0, i64 5
  store double* %y64, double** %arrayidx65, align 8, !tbaa !1
  %56 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value66 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %56, i32 0, i32 1
  %refs67 = bitcast %union.v* %value66 to %struct.ref_s**
  %57 = load %struct.ref_s*, %struct.ref_s** %refs67, align 8, !tbaa !1
  store %struct.ref_s* %57, %struct.ref_s** %main_ref, align 8, !tbaa !1
  %58 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs68 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %58, i32 0, i32 0
  %59 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs68, align 8, !tbaa !52
  %memory69 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %59, i32 0, i32 1
  %60 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory69, align 8, !tbaa !27
  %61 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs70 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %61, i32 0, i32 0
  %62 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs70, align 8, !tbaa !52
  %call71 = call i32 @gs_path_enum_copy_init(%struct.gs_memory_s* %60, %struct.gs_path_enum_s* %penum, %struct.gs_state_s* %62, i32 0) #4
  %arraydecay = getelementptr inbounds [3 x %struct.gs_point_s], [3 x %struct.gs_point_s]* %pts, i32 0, i32 0
  %call72 = call i32 @gs_path_enum_next(%struct.gs_path_enum_s* %penum, %struct.gs_point_s* %arraydecay) #4
  store i32 %call72, i32* %pe, align 4, !tbaa !5
  %63 = load i32, i32* %pe, align 4, !tbaa !5
  %cmp73 = icmp slt i32 %63, 0
  br i1 %cmp73, label %if.then.74, label %if.end.75

if.then.74:                                       ; preds = %for.end
  %64 = load i32, i32* %pe, align 4, !tbaa !5
  store i32 %64, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.136

if.end.75:                                        ; preds = %for.end
  store i32 0, i32* %k, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.76

for.cond.76:                                      ; preds = %for.inc.133, %if.end.75
  %65 = load i32, i32* %i, align 4, !tbaa !5
  %66 = load i32, i32* %leaf_count, align 4, !tbaa !5
  %cmp77 = icmp slt i32 %65, %66
  br i1 %cmp77, label %for.body.78, label %for.end.135

for.body.78:                                      ; preds = %for.cond.76
  %67 = bitcast i32* %leaf_size79 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %67) #1
  %68 = load i32, i32* %i, align 4, !tbaa !5
  %69 = load i32, i32* %leaf_count, align 4, !tbaa !5
  %sub80 = sub nsw i32 %69, 1
  %cmp81 = icmp eq i32 %68, %sub80
  br i1 %cmp81, label %cond.true.82, label %cond.false.85

cond.true.82:                                     ; preds = %for.body.78
  %70 = load i32, i32* %path_size, align 4, !tbaa !5
  %71 = load i32, i32* %i, align 4, !tbaa !5
  %mul83 = mul nsw i32 %71, 16777216
  %sub84 = sub nsw i32 %70, %mul83
  br label %cond.end.86

cond.false.85:                                    ; preds = %for.body.78
  br label %cond.end.86

cond.end.86:                                      ; preds = %cond.false.85, %cond.true.82
  %cond87 = phi i32 [ %sub84, %cond.true.82 ], [ 16777216, %cond.false.85 ]
  store i32 %cond87, i32* %leaf_size79, align 4, !tbaa !5
  %72 = bitcast %struct.ref_s** %leaf_ref to i8*
  call void @llvm.lifetime.start(i64 8, i8* %72) #1
  %73 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom88 = sext i32 %73 to i64
  %74 = load %struct.ref_s*, %struct.ref_s** %main_ref, align 8, !tbaa !1
  %arrayidx89 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %74, i64 %idxprom88
  %value90 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx89, i32 0, i32 1
  %refs91 = bitcast %union.v* %value90 to %struct.ref_s**
  %75 = load %struct.ref_s*, %struct.ref_s** %refs91, align 8, !tbaa !1
  store %struct.ref_s* %75, %struct.ref_s** %leaf_ref, align 8, !tbaa !1
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.92

for.cond.92:                                      ; preds = %for.inc.126, %cond.end.86
  %76 = load i32, i32* %j, align 4, !tbaa !5
  %77 = load i32, i32* %leaf_size79, align 4, !tbaa !5
  %cmp93 = icmp slt i32 %76, %77
  br i1 %cmp93, label %for.body.94, label %for.end.128

for.body.94:                                      ; preds = %for.cond.92
  %78 = load i32, i32* %k, align 4, !tbaa !5
  %79 = load i32, i32* %pe, align 4, !tbaa !5
  %idxprom95 = sext i32 %79 to i64
  %arrayidx96 = getelementptr inbounds [5 x i32], [5 x i32]* @zgetpath.oper_count, i32 0, i64 %idxprom95
  %80 = load i32, i32* %arrayidx96, align 4, !tbaa !5
  %cmp97 = icmp slt i32 %78, %80
  br i1 %cmp97, label %if.then.98, label %if.else.110

if.then.98:                                       ; preds = %for.body.94
  %81 = load i32, i32* %k, align 4, !tbaa !5
  %inc99 = add nsw i32 %81, 1
  store i32 %inc99, i32* %k, align 4, !tbaa !5
  %idxprom100 = sext i32 %81 to i64
  %arrayidx101 = getelementptr inbounds [6 x double*], [6 x double*]* %fts, i32 0, i64 %idxprom100
  %82 = load double*, double** %arrayidx101, align 8, !tbaa !1
  %83 = load double, double* %82, align 8, !tbaa !57
  %conv = fptrunc double %83 to float
  %84 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom102 = sext i32 %84 to i64
  %85 = load %struct.ref_s*, %struct.ref_s** %leaf_ref, align 8, !tbaa !1
  %arrayidx103 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %85, i64 %idxprom102
  %value104 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx103, i32 0, i32 1
  %realval = bitcast %union.v* %value104 to float*
  store float %conv, float* %realval, align 4, !tbaa !46
  %86 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory105 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %86, i32 0, i32 1
  %new_mask = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory105, i32 0, i32 5
  %87 = load i32, i32* %new_mask, align 4, !tbaa !47
  %or = or i32 0, %87
  %add106 = add i32 4096, %or
  %conv107 = trunc i32 %add106 to i16
  %88 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom108 = sext i32 %88 to i64
  %89 = load %struct.ref_s*, %struct.ref_s** %leaf_ref, align 8, !tbaa !1
  %arrayidx109 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %89, i64 %idxprom108
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx109, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 %conv107, i16* %type_attrs, align 2, !tbaa !45
  br label %if.end.125

if.else.110:                                      ; preds = %for.body.94
  store i32 0, i32* %k, align 4, !tbaa !5
  %90 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom111 = sext i32 %90 to i64
  %91 = load %struct.ref_s*, %struct.ref_s** %leaf_ref, align 8, !tbaa !1
  %arrayidx112 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %91, i64 %idxprom111
  %92 = load i32, i32* %pe, align 4, !tbaa !5
  %idxprom113 = sext i32 %92 to i64
  %arrayidx114 = getelementptr inbounds [5 x %struct.ref_s*], [5 x %struct.ref_s*]* %operators, i32 0, i64 %idxprom113
  %93 = load %struct.ref_s*, %struct.ref_s** %arrayidx114, align 8, !tbaa !1
  %94 = bitcast %struct.ref_s* %arrayidx112 to i8*
  %95 = bitcast %struct.ref_s* %93 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %94, i8* %95, i64 16, i32 8, i1 false), !tbaa.struct !58
  %arraydecay115 = getelementptr inbounds [3 x %struct.gs_point_s], [3 x %struct.gs_point_s]* %pts, i32 0, i32 0
  %call116 = call i32 @gs_path_enum_next(%struct.gs_path_enum_s* %penum, %struct.gs_point_s* %arraydecay115) #4
  store i32 %call116, i32* %pe, align 4, !tbaa !5
  %96 = load i32, i32* %pe, align 4, !tbaa !5
  %cmp117 = icmp sle i32 %96, 0
  br i1 %cmp117, label %if.then.119, label %if.end.120

if.then.119:                                      ; preds = %if.else.110
  %97 = load i32, i32* %pe, align 4, !tbaa !5
  store i32 %97, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.129

if.end.120:                                       ; preds = %if.else.110
  %98 = load i32, i32* %pe, align 4, !tbaa !5
  %cmp121 = icmp sge i32 %98, 5
  br i1 %cmp121, label %if.then.123, label %if.end.124

if.then.123:                                      ; preds = %if.end.120
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.129

if.end.124:                                       ; preds = %if.end.120
  br label %if.end.125

if.end.125:                                       ; preds = %if.end.124, %if.then.98
  br label %for.inc.126

for.inc.126:                                      ; preds = %if.end.125
  %99 = load i32, i32* %j, align 4, !tbaa !5
  %inc127 = add nsw i32 %99, 1
  store i32 %inc127, i32* %j, align 4, !tbaa !5
  br label %for.cond.92

for.end.128:                                      ; preds = %for.cond.92
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.129

cleanup.129:                                      ; preds = %for.end.128, %if.then.123, %if.then.119
  %100 = bitcast %struct.ref_s** %leaf_ref to i8*
  call void @llvm.lifetime.end(i64 8, i8* %100) #1
  %101 = bitcast i32* %leaf_size79 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %101) #1
  %cleanup.dest.131 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.131, label %cleanup.136 [
    i32 0, label %cleanup.cont.132
  ]

cleanup.cont.132:                                 ; preds = %cleanup.129
  br label %for.inc.133

for.inc.133:                                      ; preds = %cleanup.cont.132
  %102 = load i32, i32* %i, align 4, !tbaa !5
  %inc134 = add nsw i32 %102, 1
  store i32 %inc134, i32* %i, align 4, !tbaa !5
  br label %for.cond.76

for.end.135:                                      ; preds = %for.cond.76
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.136

cleanup.136:                                      ; preds = %for.end.135, %cleanup.129, %if.then.74
  %103 = bitcast [6 x double*]* %fts to i8*
  call void @llvm.lifetime.end(i64 48, i8* %103) #1
  %104 = bitcast [3 x %struct.gs_point_s]* %pts to i8*
  call void @llvm.lifetime.end(i64 48, i8* %104) #1
  %105 = bitcast %struct.gs_path_enum_s* %penum to i8*
  call void @llvm.lifetime.end(i64 64, i8* %105) #1
  %106 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %106) #1
  %107 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %107) #1
  %108 = bitcast i32* %pe to i8*
  call void @llvm.lifetime.end(i64 4, i8* %108) #1
  %cleanup.dest.142 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.142, label %cleanup.144 [
    i32 0, label %cleanup.cont.143
  ]

cleanup.cont.143:                                 ; preds = %cleanup.136
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.144

cleanup.144:                                      ; preds = %cleanup.cont.143, %cleanup.136, %cleanup, %if.then.37, %if.then.16, %if.then.13, %if.then.9, %if.then
  %109 = bitcast [5 x %struct.ref_s*]* %operators to i8*
  call void @llvm.lifetime.end(i64 40, i8* %109) #1
  %110 = bitcast %struct.ref_s** %main_ref to i8*
  call void @llvm.lifetime.end(i64 8, i8* %110) #1
  %111 = bitcast i32* %leaf_count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %111) #1
  %112 = bitcast i32* %path_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %112) #1
  %113 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %113) #1
  %114 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %114) #1
  %115 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %115) #1
  %116 = load i32, i32* %retval
  ret i32 %116
}

declare i32 @gx_path_enum_init(%struct.gs_path_enum_s*, %struct.gx_path_s*) #2

declare i32 @gx_path_enum_next(%struct.gs_path_enum_s*, %struct.gs_fixed_point_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @in_test(%struct.gs_context_state_s* %i_ctx_p, i32 (%struct.gs_state_s*)* %paintproc) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %paintproc.addr = alloca i32 (%struct.gs_state_s*)*, align 8
  %op = alloca %struct.ref_s*, align 8
  %hdev = alloca %struct.gx_device_s, align 8
  %npop = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store i32 (%struct.gs_state_s*)* %paintproc, i32 (%struct.gs_state_s*)** %paintproc.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !51
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s* %hdev to i8*
  call void @llvm.lifetime.start(i64 1728, i8* %3) #1
  %4 = bitcast i32* %npop to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @in_path(%struct.ref_s* %5, %struct.gs_context_state_s* %6, %struct.gx_device_s* %hdev) #4
  store i32 %call, i32* %npop, align 4, !tbaa !5
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load i32, i32* %npop, align 4, !tbaa !5
  %cmp = icmp slt i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %npop, align 4, !tbaa !5
  store i32 %9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = load i32 (%struct.gs_state_s*)*, i32 (%struct.gs_state_s*)** %paintproc.addr, align 8, !tbaa !1
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %11, i32 0, i32 0
  %12 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !52
  %call1 = call i32 %10(%struct.gs_state_s* %12) #4
  store i32 %call1, i32* %code, align 4, !tbaa !5
  %13 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %14 = load i32, i32* %npop, align 4, !tbaa !5
  %15 = load i32, i32* %code, align 4, !tbaa !5
  %call2 = call i32 @in_path_result(%struct.gs_context_state_s* %13, i32 %14, i32 %15) #4
  store i32 %call2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %16 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #1
  %17 = bitcast i32* %npop to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #1
  %18 = bitcast %struct.gx_device_s* %hdev to i8*
  call void @llvm.lifetime.end(i64 1728, i8* %18) #1
  %19 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #1
  %20 = load i32, i32* %retval
  ret i32 %20
}

declare i32 @gs_eofill(%struct.gs_state_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @in_path(%struct.ref_s* %oppath, %struct.gs_context_state_s* %i_ctx_p, %struct.gx_device_s* %phdev) #0 {
entry:
  %retval = alloca i32, align 4
  %oppath.addr = alloca %struct.ref_s*, align 8
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %phdev.addr = alloca %struct.gx_device_s*, align 8
  %code = alloca i32, align 4
  %npop = alloca i32, align 4
  %uxy = alloca [2 x double], align 16
  %cleanup.dest.slot = alloca i32
  %dxy = alloca %struct.gs_point_s, align 8
  %fr = alloca %struct.gs_fixed_rect_s, align 4
  %ipath = alloca %struct.gx_path_s*, align 8
  %save = alloca %struct.gx_path_s, align 8
  store %struct.ref_s* %oppath, %struct.ref_s** %oppath.addr, align 8, !tbaa !1
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %phdev, %struct.gx_device_s** %phdev.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 0
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !52
  %call = call i32 @gs_gsave(%struct.gs_state_s* %2) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %3 = bitcast i32* %npop to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast [2 x double]* %uxy to i8*
  call void @llvm.lifetime.start(i64 16, i8* %4) #1
  %5 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.ref_s*, %struct.ref_s** %oppath.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [2 x double], [2 x double]* %uxy, i32 0, i32 0
  %call1 = call i32 @num_params(%struct.ref_s* %7, i32 2, double* %arraydecay) #4
  store i32 %call1, i32* %code, align 4, !tbaa !5
  %8 = load i32, i32* %code, align 4, !tbaa !5
  %cmp2 = icmp sge i32 %8, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %9 = bitcast %struct.gs_point_s* %dxy to i8*
  call void @llvm.lifetime.start(i64 16, i8* %9) #1
  %10 = bitcast %struct.gs_fixed_rect_s* %fr to i8*
  call void @llvm.lifetime.start(i64 16, i8* %10) #1
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs4 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %11, i32 0, i32 0
  %12 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs4, align 8, !tbaa !52
  %arrayidx = getelementptr inbounds [2 x double], [2 x double]* %uxy, i32 0, i64 0
  %13 = load double, double* %arrayidx, align 8, !tbaa !57
  %arrayidx5 = getelementptr inbounds [2 x double], [2 x double]* %uxy, i32 0, i64 1
  %14 = load double, double* %arrayidx5, align 8, !tbaa !57
  %call6 = call i32 @gs_transform(%struct.gs_state_s* %12, double %13, double %14, %struct.gs_point_s* %dxy) #4
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %dxy, i32 0, i32 0
  %15 = load double, double* %x, align 8, !tbaa !49
  %mul = fmul double %15, 2.560000e+02
  %conv = fptosi double %mul to i32
  %conv7 = sext i32 %conv to i64
  %and = and i64 %conv7, -256
  %conv8 = trunc i64 %and to i32
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %fr, i32 0, i32 0
  %x9 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  store i32 %conv8, i32* %x9, align 4, !tbaa !60
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %dxy, i32 0, i32 1
  %16 = load double, double* %y, align 8, !tbaa !50
  %mul10 = fmul double %16, 2.560000e+02
  %conv11 = fptosi double %mul10 to i32
  %conv12 = sext i32 %conv11 to i64
  %and13 = and i64 %conv12, -256
  %conv14 = trunc i64 %and13 to i32
  %p15 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %fr, i32 0, i32 0
  %y16 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p15, i32 0, i32 1
  store i32 %conv14, i32* %y16, align 4, !tbaa !62
  %p17 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %fr, i32 0, i32 0
  %x18 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p17, i32 0, i32 0
  %17 = load i32, i32* %x18, align 4, !tbaa !60
  %conv19 = sext i32 %17 to i64
  %add = add nsw i64 %conv19, 256
  %conv20 = trunc i64 %add to i32
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %fr, i32 0, i32 1
  %x21 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 0
  store i32 %conv20, i32* %x21, align 4, !tbaa !63
  %p22 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %fr, i32 0, i32 0
  %y23 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p22, i32 0, i32 1
  %18 = load i32, i32* %y23, align 4, !tbaa !62
  %conv24 = sext i32 %18 to i64
  %add25 = add nsw i64 %conv24, 256
  %conv26 = trunc i64 %add25 to i32
  %q27 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %fr, i32 0, i32 1
  %y28 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q27, i32 0, i32 1
  store i32 %conv26, i32* %y28, align 4, !tbaa !64
  %19 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs29 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %19, i32 0, i32 0
  %20 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs29, align 8, !tbaa !52
  %call30 = call i32 @gx_clip_to_rectangle(%struct.gs_state_s* %20, %struct.gs_fixed_rect_s* %fr) #4
  store i32 %call30, i32* %code, align 4, !tbaa !5
  store i32 2, i32* %npop, align 4, !tbaa !5
  %21 = bitcast %struct.gs_fixed_rect_s* %fr to i8*
  call void @llvm.lifetime.end(i64 16, i8* %21) #1
  %22 = bitcast %struct.gs_point_s* %dxy to i8*
  call void @llvm.lifetime.end(i64 16, i8* %22) #1
  br label %if.end.51

if.else:                                          ; preds = %if.end
  %23 = load i32, i32* %code, align 4, !tbaa !5
  %cmp31 = icmp eq i32 %23, -17
  br i1 %cmp31, label %if.then.33, label %if.else.34

if.then.33:                                       ; preds = %if.else
  %24 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %24, i32* %npop, align 4, !tbaa !5
  br label %if.end.50

if.else.34:                                       ; preds = %if.else
  %25 = bitcast %struct.gx_path_s** %ipath to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #1
  %26 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs35 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %26, i32 0, i32 0
  %27 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs35, align 8, !tbaa !52
  %path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %27, i32 0, i32 61
  %28 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8, !tbaa !48
  store %struct.gx_path_s* %28, %struct.gx_path_s** %ipath, align 8, !tbaa !1
  %29 = bitcast %struct.gx_path_s* %save to i8*
  call void @llvm.lifetime.start(i64 128, i8* %29) #1
  %30 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %30, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %31 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !7
  %32 = bitcast %struct.gs_ref_memory_s* %31 to %struct.gs_memory_s*
  %call36 = call i32 @gx_path_init_local_shared(%struct.gx_path_s* %save, %struct.gx_path_s* null, %struct.gs_memory_s* %32) #4
  %33 = load %struct.gx_path_s*, %struct.gx_path_s** %ipath, align 8, !tbaa !1
  %call37 = call i32 @gx_path_assign_preserve(%struct.gx_path_s* %save, %struct.gx_path_s* %33) #4
  %34 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs38 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %34, i32 0, i32 0
  %35 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs38, align 8, !tbaa !52
  %call39 = call i32 @gs_newpath(%struct.gs_state_s* %35) #4
  %36 = load %struct.ref_s*, %struct.ref_s** %oppath.addr, align 8, !tbaa !1
  %37 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call40 = call i32 @upath_append(%struct.ref_s* %36, %struct.gs_context_state_s* %37, i32 0) #4
  store i32 %call40, i32* %code, align 4, !tbaa !5
  %38 = load i32, i32* %code, align 4, !tbaa !5
  %cmp41 = icmp sge i32 %38, 0
  br i1 %cmp41, label %if.then.43, label %if.end.46

if.then.43:                                       ; preds = %if.else.34
  %39 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs44 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %39, i32 0, i32 0
  %40 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs44, align 8, !tbaa !52
  %call45 = call i32 @gx_clip_to_path(%struct.gs_state_s* %40) #4
  store i32 %call45, i32* %code, align 4, !tbaa !5
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.43, %if.else.34
  %41 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs47 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %41, i32 0, i32 0
  %42 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs47, align 8, !tbaa !52
  %path48 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %42, i32 0, i32 61
  %43 = load %struct.gx_path_s*, %struct.gx_path_s** %path48, align 8, !tbaa !48
  %call49 = call i32 @gx_path_assign_free(%struct.gx_path_s* %43, %struct.gx_path_s* %save) #4
  store i32 1, i32* %npop, align 4, !tbaa !5
  %44 = bitcast %struct.gx_path_s* %save to i8*
  call void @llvm.lifetime.end(i64 128, i8* %44) #1
  %45 = bitcast %struct.gx_path_s** %ipath to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #1
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.46, %if.then.33
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %if.then.3
  %46 = load i32, i32* %code, align 4, !tbaa !5
  %cmp52 = icmp slt i32 %46, 0
  br i1 %cmp52, label %if.then.54, label %if.end.57

if.then.54:                                       ; preds = %if.end.51
  %47 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs55 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %47, i32 0, i32 0
  %48 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs55, align 8, !tbaa !52
  %call56 = call i32 @gs_grestore(%struct.gs_state_s* %48) #4
  %49 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %49, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.57:                                        ; preds = %if.end.51
  %50 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs58 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %50, i32 0, i32 0
  %51 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs58, align 8, !tbaa !52
  %call59 = call i32 @gx_set_device_color_1(%struct.gs_state_s* %51) #4
  %52 = load %struct.gx_device_s*, %struct.gx_device_s** %phdev.addr, align 8, !tbaa !1
  %53 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory60 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %53, i32 0, i32 1
  %current61 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory60, i32 0, i32 0
  %54 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current61, align 8, !tbaa !7
  %55 = bitcast %struct.gs_ref_memory_s* %54 to %struct.gs_memory_s*
  call void @gx_device_init_on_stack(%struct.gx_device_s* %52, %struct.gx_device_s* @gs_hit_device, %struct.gs_memory_s* %55) #4
  %56 = load %struct.gx_device_s*, %struct.gx_device_s** %phdev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %56, i32 0, i32 14
  store i32 2147483647, i32* %height, align 4, !tbaa !65
  %57 = load %struct.gx_device_s*, %struct.gx_device_s** %phdev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %57, i32 0, i32 13
  store i32 2147483647, i32* %width, align 4, !tbaa !76
  %58 = load %struct.gx_device_s*, %struct.gx_device_s** %phdev.addr, align 8, !tbaa !1
  call void @gx_device_fill_in_procs(%struct.gx_device_s* %58) #4
  %59 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs62 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %59, i32 0, i32 0
  %60 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs62, align 8, !tbaa !52
  %61 = load %struct.gx_device_s*, %struct.gx_device_s** %phdev.addr, align 8, !tbaa !1
  call void @gx_set_device_only(%struct.gs_state_s* %60, %struct.gx_device_s* %61) #4
  %62 = load i32, i32* %npop, align 4, !tbaa !5
  store i32 %62, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.57, %if.then.54, %if.then
  %63 = bitcast [2 x double]* %uxy to i8*
  call void @llvm.lifetime.end(i64 16, i8* %63) #1
  %64 = bitcast i32* %npop to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #1
  %65 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #1
  %66 = load i32, i32* %retval
  ret i32 %66
}

; Function Attrs: nounwind uwtable
define internal i32 @in_path_result(%struct.gs_context_state_s* %i_ctx_p, i32 %npop, i32 %code) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %npop.addr = alloca i32, align 4
  %code.addr = alloca i32, align 4
  %op = alloca %struct.ref_s*, align 8
  %result = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store i32 %npop, i32* %npop.addr, align 4, !tbaa !5
  store i32 %code, i32* %code.addr, align 4, !tbaa !5
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !51
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast i32* %result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 0
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !52
  %call = call i32 @gs_grestore(%struct.gs_state_s* %5) #4
  %6 = load i32, i32* %code.addr, align 4, !tbaa !5
  %7 = load i32, i32* @gs_hit_detected, align 4, !tbaa !5
  %cmp = icmp eq i32 %6, %7
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* %result, align 4, !tbaa !5
  br label %if.end.4

if.else:                                          ; preds = %entry
  %8 = load i32, i32* %code.addr, align 4, !tbaa !5
  %cmp1 = icmp eq i32 %8, 0
  br i1 %cmp1, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %if.else
  store i32 0, i32* %result, align 4, !tbaa !5
  br label %if.end

if.else.3:                                        ; preds = %if.else
  %9 = load i32, i32* %code.addr, align 4, !tbaa !5
  store i32 %9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then.2
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  %10 = load i32, i32* %npop.addr, align 4, !tbaa !5
  %dec = add nsw i32 %10, -1
  store i32 %dec, i32* %npop.addr, align 4, !tbaa !5
  %11 = load i32, i32* %npop.addr, align 4, !tbaa !5
  %12 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack5 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %12, i32 0, i32 26
  %stack6 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack5, i32 0, i32 0
  %p7 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack6, i32 0, i32 0
  %13 = load %struct.ref_s*, %struct.ref_s** %p7, align 8, !tbaa !51
  %idx.ext = sext i32 %11 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i64 %idx.neg
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p7, align 8, !tbaa !51
  %14 = load i32, i32* %npop.addr, align 4, !tbaa !5
  %15 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %idx.ext8 = sext i32 %14 to i64
  %idx.neg9 = sub i64 0, %idx.ext8
  %add.ptr10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i64 %idx.neg9
  store %struct.ref_s* %add.ptr10, %struct.ref_s** %op, align 8, !tbaa !1
  %16 = load i32, i32* %result, align 4, !tbaa !5
  %conv = trunc i32 %16 to i16
  %17 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 1
  %boolval = bitcast %union.v* %value to i16*
  store i16 %conv, i16* %boolval, align 2, !tbaa !54
  %18 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 256, i16* %type_attrs, align 2, !tbaa !45
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.4, %if.else.3
  %19 = bitcast i32* %result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  %20 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #1
  %21 = load i32, i32* %retval
  ret i32 %21
}

declare i32 @gs_gsave(%struct.gs_state_s*) #2

declare i32 @num_params(%struct.ref_s*, i32, double*) #2

declare i32 @gs_transform(%struct.gs_state_s*, double, double, %struct.gs_point_s*) #2

declare i32 @gx_clip_to_rectangle(%struct.gs_state_s*, %struct.gs_fixed_rect_s*) #2

declare i32 @gx_path_init_local_shared(%struct.gx_path_s*, %struct.gx_path_s*, %struct.gs_memory_s*) #2

declare i32 @gx_path_assign_preserve(%struct.gx_path_s*, %struct.gx_path_s*) #2

declare i32 @gs_newpath(%struct.gs_state_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @upath_append(%struct.ref_s* %oppath, %struct.gs_context_state_s* %i_ctx_p, i32 %upath_compat) #0 {
entry:
  %retval = alloca i32, align 4
  %oppath.addr = alloca %struct.ref_s*, align 8
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %upath_compat.addr = alloca i32, align 4
  %nargs = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.ref_s* %oppath, %struct.ref_s** %oppath.addr, align 8, !tbaa !1
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store i32 %upath_compat, i32* %upath_compat.addr, align 4, !tbaa !5
  %0 = bitcast i32* %nargs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %nargs, align 4, !tbaa !5
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.ref_s*, %struct.ref_s** %oppath.addr, align 8, !tbaa !1
  %3 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %4 = load i32, i32* %upath_compat.addr, align 4, !tbaa !5
  %call = call i32 @upath_append_aux(%struct.ref_s* %2, %struct.gs_context_state_s* %3, i32* %nargs, i32 %4) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %5 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %nargs, align 4, !tbaa !5
  %7 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %7, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %8 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !51
  %idx.ext = sext i32 %6 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i64 %idx.neg
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p, align 8, !tbaa !51
  %9 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %10 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #1
  %11 = bitcast i32* %nargs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %11) #1
  %12 = load i32, i32* %retval
  ret i32 %12
}

declare i32 @gx_clip_to_path(%struct.gs_state_s*) #2

declare i32 @gx_path_assign_free(%struct.gx_path_s*, %struct.gx_path_s*) #2

declare i32 @gs_grestore(%struct.gs_state_s*) #2

declare i32 @gx_set_device_color_1(%struct.gs_state_s*) #2

declare void @gx_device_init_on_stack(%struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_memory_s*) #2

declare void @gx_device_fill_in_procs(%struct.gx_device_s*) #2

declare void @gx_set_device_only(%struct.gs_state_s*, %struct.gx_device_s*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @upath_append_aux(%struct.ref_s* %oppath, %struct.gs_context_state_s* %i_ctx_p, i32* %pnargs, i32 %upath_compat) #3 {
entry:
  %retval = alloca i32, align 4
  %oppath.addr = alloca %struct.ref_s*, align 8
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %pnargs.addr = alloca i32*, align 8
  %upath_compat.addr = alloca i32, align 4
  %ups = alloca i32, align 4
  %opcodes = alloca %struct.ref_s, align 8
  %cleanup.dest.slot = alloca i32
  %operands = alloca %struct.ref_s, align 8
  %code = alloca i32, align 4
  %format = alloca i32, align 4
  %repcount = alloca i32, align 4
  %opp = alloca i8*, align 8
  %ocount = alloca i32, align 4
  %i = alloca i32, align 4
  %opx = alloca i8, align 1
  %data = alloca %struct.up_data_s, align 1
  %op = alloca %struct.ref_s*, align 8
  %opargs = alloca i8, align 1
  %arp = alloca %struct.ref_s*, align 8
  %ocount139 = alloca i32, align 4
  %index = alloca i64, align 8
  %argcount = alloca i32, align 4
  %oproc = alloca i32 (%struct.gs_context_state_s*)*, align 8
  %opx142 = alloca i32, align 4
  %code143 = alloca i32, align 4
  %rup = alloca %struct.ref_s, align 8
  %defp = alloca %struct.ref_s*, align 8
  %op147 = alloca %struct.ref_s*, align 8
  %data151 = alloca %struct.up_data_s, align 1
  store %struct.ref_s* %oppath, %struct.ref_s** %oppath.addr, align 8, !tbaa !1
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store i32* %pnargs, i32** %pnargs.addr, align 8, !tbaa !1
  store i32 %upath_compat, i32* %upath_compat.addr, align 4, !tbaa !5
  %0 = bitcast i32* %ups to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 1, i32* %ups, align 4, !tbaa !53
  %1 = bitcast %struct.ref_s* %opcodes to i8*
  call void @llvm.lifetime.start(i64 16, i8* %1) #1
  %2 = load %struct.ref_s*, %struct.ref_s** %oppath.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %3 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 1
  %4 = load i8, i8* %arrayidx, align 1, !tbaa !53
  %conv = zext i8 %4 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.311

if.end:                                           ; preds = %entry
  %5 = load %struct.ref_s*, %struct.ref_s** %oppath.addr, align 8, !tbaa !1
  %tas2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 0
  %type_attrs3 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas2, i32 0, i32 0
  %6 = load i16, i16* %type_attrs3, align 2, !tbaa !45
  %conv4 = zext i16 %6 to i32
  %and = and i32 %conv4, 15360
  %cmp5 = icmp eq i32 %and, 1024
  br i1 %cmp5, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.end
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.311

if.end.8:                                         ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.end.8
  %7 = load %struct.ref_s*, %struct.ref_s** %oppath.addr, align 8, !tbaa !1
  %tas9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 0
  %type_attrs10 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas9, i32 0, i32 0
  %8 = load i16, i16* %type_attrs10, align 2, !tbaa !45
  %conv11 = zext i16 %8 to i32
  %and12 = and i32 %conv11, 32
  %tobool = icmp ne i32 %and12, 0
  br i1 %tobool, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %do.body
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.311

if.end.14:                                        ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.14
  br label %do.end

do.end:                                           ; preds = %do.cond
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %9, i32 0, i32 0
  %10 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !52
  %call = call i32 @gs_newpath(%struct.gs_state_s* %10) #4
  %11 = load %struct.ref_s*, %struct.ref_s** %oppath.addr, align 8, !tbaa !1
  %tas15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas15, i32 0, i32 2
  %12 = load i32, i32* %rsize, align 4, !tbaa !77
  %cmp16 = icmp eq i32 %12, 2
  br i1 %cmp16, label %land.lhs.true, label %if.else.138

land.lhs.true:                                    ; preds = %do.end
  %13 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %13, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %14 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !7
  %15 = bitcast %struct.gs_ref_memory_s* %14 to %struct.gs_memory_s*
  %16 = load %struct.ref_s*, %struct.ref_s** %oppath.addr, align 8, !tbaa !1
  %call18 = call i32 @array_get(%struct.gs_memory_s* %15, %struct.ref_s* %16, i64 1, %struct.ref_s* %opcodes) #4
  %cmp19 = icmp sge i32 %call18, 0
  br i1 %cmp19, label %land.lhs.true.21, label %if.else.138

land.lhs.true.21:                                 ; preds = %land.lhs.true
  %tas22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %opcodes, i32 0, i32 0
  %type_attrs23 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas22, i32 0, i32 0
  %17 = bitcast i16* %type_attrs23 to i8*
  %arrayidx24 = getelementptr inbounds i8, i8* %17, i64 1
  %18 = load i8, i8* %arrayidx24, align 1, !tbaa !53
  %conv25 = zext i8 %18 to i32
  %cmp26 = icmp eq i32 %conv25, 18
  br i1 %cmp26, label %if.then.28, label %if.else.138

if.then.28:                                       ; preds = %land.lhs.true.21
  %19 = bitcast %struct.ref_s* %operands to i8*
  call void @llvm.lifetime.start(i64 16, i8* %19) #1
  %20 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = bitcast i32* %format to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = bitcast i32* %repcount to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  store i32 1, i32* %repcount, align 4, !tbaa !5
  %23 = bitcast i8** %opp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #1
  %24 = bitcast i32* %ocount to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  %25 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #1
  store i32 0, i32* %i, align 4, !tbaa !5
  %26 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory29 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %26, i32 0, i32 1
  %current30 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory29, i32 0, i32 0
  %27 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current30, align 8, !tbaa !7
  %28 = bitcast %struct.gs_ref_memory_s* %27 to %struct.gs_memory_s*
  %29 = load %struct.ref_s*, %struct.ref_s** %oppath.addr, align 8, !tbaa !1
  %call31 = call i32 @array_get(%struct.gs_memory_s* %28, %struct.ref_s* %29, i64 0, %struct.ref_s* %operands) #4
  %call32 = call i32 @num_array_format(%struct.ref_s* %operands) #4
  store i32 %call32, i32* %code, align 4, !tbaa !5
  %30 = load i32, i32* %code, align 4, !tbaa !5
  %cmp33 = icmp slt i32 %30, 0
  br i1 %cmp33, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.then.28
  %31 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %31, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.129

if.end.36:                                        ; preds = %if.then.28
  %32 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %32, i32* %format, align 4, !tbaa !5
  br label %do.body.37

do.body.37:                                       ; preds = %if.end.36
  %tas38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %opcodes, i32 0, i32 0
  %type_attrs39 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas38, i32 0, i32 0
  %33 = load i16, i16* %type_attrs39, align 2, !tbaa !45
  %conv40 = zext i16 %33 to i32
  %and41 = and i32 %conv40, 32
  %tobool42 = icmp ne i32 %and41, 0
  br i1 %tobool42, label %if.end.44, label %if.then.43

if.then.43:                                       ; preds = %do.body.37
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.129

if.end.44:                                        ; preds = %do.body.37
  br label %do.cond.45

do.cond.45:                                       ; preds = %if.end.44
  br label %do.end.46

do.end.46:                                        ; preds = %do.cond.45
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %opcodes, i32 0, i32 1
  %bytes = bitcast %union.v* %value to i8**
  %34 = load i8*, i8** %bytes, align 8, !tbaa !1
  store i8* %34, i8** %opp, align 8, !tbaa !1
  %tas47 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %opcodes, i32 0, i32 0
  %rsize48 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas47, i32 0, i32 2
  %35 = load i32, i32* %rsize48, align 4, !tbaa !77
  store i32 %35, i32* %ocount, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont.127, %do.end.46
  %36 = load i32, i32* %ocount, align 4, !tbaa !5
  %dec = add i32 %36, -1
  store i32 %dec, i32* %ocount, align 4, !tbaa !5
  %tobool49 = icmp ne i32 %36, 0
  br i1 %tobool49, label %while.body, label %while.end.128

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start(i64 1, i8* %opx) #1
  %37 = load i8*, i8** %opp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr, i8** %opp, align 8, !tbaa !1
  %38 = load i8, i8* %37, align 1, !tbaa !53
  store i8 %38, i8* %opx, align 1, !tbaa !53
  %39 = load i8, i8* %opx, align 1, !tbaa !53
  %conv50 = zext i8 %39 to i32
  %cmp51 = icmp sgt i32 %conv50, 32
  br i1 %cmp51, label %if.then.53, label %if.else

if.then.53:                                       ; preds = %while.body
  %40 = load i8, i8* %opx, align 1, !tbaa !53
  %conv54 = zext i8 %40 to i32
  %sub = sub nsw i32 %conv54, 32
  store i32 %sub, i32* %repcount, align 4, !tbaa !5
  br label %if.end.124

if.else:                                          ; preds = %while.body
  %41 = load i8, i8* %opx, align 1, !tbaa !53
  %conv55 = zext i8 %41 to i32
  %cmp56 = icmp sgt i32 %conv55, 11
  br i1 %cmp56, label %if.then.58, label %if.else.59

if.then.58:                                       ; preds = %if.else
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.125

if.else.59:                                       ; preds = %if.else
  %42 = bitcast %struct.up_data_s* %data to i8*
  call void @llvm.lifetime.start(i64 3, i8* %42) #1
  %43 = load i8, i8* %opx, align 1, !tbaa !53
  %idxprom = zext i8 %43 to i64
  %arrayidx60 = getelementptr inbounds [12 x %struct.up_data_s], [12 x %struct.up_data_s]* @up_data, i32 0, i64 %idxprom
  %44 = bitcast %struct.up_data_s* %data to i8*
  %45 = bitcast %struct.up_data_s* %arrayidx60 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %44, i8* %45, i64 3, i32 1, i1 false), !tbaa.struct !78
  %46 = load i32*, i32** %pnargs.addr, align 8, !tbaa !1
  store i32 0, i32* %46, align 4, !tbaa !5
  %47 = load i32, i32* %upath_compat.addr, align 4, !tbaa !5
  %tobool61 = icmp ne i32 %47, 0
  br i1 %tobool61, label %land.lhs.true.62, label %if.else.70

land.lhs.true.62:                                 ; preds = %if.else.59
  %48 = load i8, i8* %opx, align 1, !tbaa !53
  %conv63 = zext i8 %48 to i32
  %cmp64 = icmp eq i32 %conv63, 11
  br i1 %cmp64, label %if.then.66, label %if.else.70

if.then.66:                                       ; preds = %land.lhs.true.62
  %49 = load i32, i32* %ups, align 4, !tbaa !53
  %cmp67 = icmp ugt i32 %49, 2
  br i1 %cmp67, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.66
  %50 = load i32, i32* %ups, align 4, !tbaa !53
  br label %cond.end

cond.false:                                       ; preds = %if.then.66
  %state_after = getelementptr inbounds %struct.up_data_s, %struct.up_data_s* %data, i32 0, i32 2
  %51 = load i8, i8* %state_after, align 1, !tbaa !79
  %conv69 = zext i8 %51 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %50, %cond.true ], [ %conv69, %cond.false ]
  store i32 %cond, i32* %ups, align 4, !tbaa !53
  br label %if.end.78

if.else.70:                                       ; preds = %land.lhs.true.62, %if.else.59
  %52 = load i32, i32* %ups, align 4, !tbaa !53
  %states_before = getelementptr inbounds %struct.up_data_s, %struct.up_data_s* %data, i32 0, i32 1
  %53 = load i8, i8* %states_before, align 1, !tbaa !81
  %conv71 = zext i8 %53 to i32
  %and72 = and i32 %52, %conv71
  %tobool73 = icmp ne i32 %and72, 0
  br i1 %tobool73, label %if.end.75, label %if.then.74

if.then.74:                                       ; preds = %if.else.70
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.120

if.end.75:                                        ; preds = %if.else.70
  %state_after76 = getelementptr inbounds %struct.up_data_s, %struct.up_data_s* %data, i32 0, i32 2
  %54 = load i8, i8* %state_after76, align 1, !tbaa !79
  %conv77 = zext i8 %54 to i32
  store i32 %conv77, i32* %ups, align 4, !tbaa !53
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.75, %cond.end
  br label %do.body.79

do.body.79:                                       ; preds = %do.cond.116, %if.end.78
  %55 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %55) #1
  %56 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %56, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %57 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !51
  store %struct.ref_s* %57, %struct.ref_s** %op, align 8, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %opargs) #1
  %num_args = getelementptr inbounds %struct.up_data_s, %struct.up_data_s* %data, i32 0, i32 0
  %58 = load i8, i8* %num_args, align 1, !tbaa !82
  store i8 %58, i8* %opargs, align 1, !tbaa !53
  br label %while.cond.80

while.cond.80:                                    ; preds = %sw.epilog, %do.body.79
  %59 = load i8, i8* %opargs, align 1, !tbaa !53
  %dec81 = add i8 %59, -1
  store i8 %dec81, i8* %opargs, align 1, !tbaa !53
  %tobool82 = icmp ne i8 %59, 0
  br i1 %tobool82, label %while.body.83, label %while.end

while.body.83:                                    ; preds = %while.cond.80
  br label %do.body.84

do.body.84:                                       ; preds = %while.body.83
  %60 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %60, i64 1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op, align 8, !tbaa !1
  %61 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack85 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %61, i32 0, i32 26
  %stack86 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack85, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack86, i32 0, i32 2
  %62 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !55
  %cmp87 = icmp ugt %struct.ref_s* %add.ptr, %62
  br i1 %cmp87, label %if.then.89, label %if.else.92

if.then.89:                                       ; preds = %do.body.84
  %63 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack90 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %63, i32 0, i32 26
  %stack91 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack90, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack91, i32 0, i32 7
  store i32 1, i32* %requested, align 4, !tbaa !56
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.92:                                       ; preds = %do.body.84
  %64 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %65 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack93 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %65, i32 0, i32 26
  %stack94 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack93, i32 0, i32 0
  %p95 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack94, i32 0, i32 0
  store %struct.ref_s* %64, %struct.ref_s** %p95, align 8, !tbaa !51
  br label %if.end.96

if.end.96:                                        ; preds = %if.else.92
  br label %do.cond.97

do.cond.97:                                       ; preds = %if.end.96
  br label %do.end.98

do.end.98:                                        ; preds = %do.cond.97
  %66 = load i32*, i32** %pnargs.addr, align 8, !tbaa !1
  %67 = load i32, i32* %66, align 4, !tbaa !5
  %inc = add nsw i32 %67, 1
  store i32 %inc, i32* %66, align 4, !tbaa !5
  %68 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory99 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %68, i32 0, i32 1
  %current100 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory99, i32 0, i32 0
  %69 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current100, align 8, !tbaa !7
  %70 = bitcast %struct.gs_ref_memory_s* %69 to %struct.gs_memory_s*
  %71 = load i32, i32* %format, align 4, !tbaa !5
  %72 = load i32, i32* %i, align 4, !tbaa !5
  %inc101 = add i32 %72, 1
  store i32 %inc101, i32* %i, align 4, !tbaa !5
  %73 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call102 = call i32 @num_array_get(%struct.gs_memory_s* %70, %struct.ref_s* %operands, i32 %71, i32 %72, %struct.ref_s* %73) #4
  store i32 %call102, i32* %code, align 4, !tbaa !5
  %74 = load i32, i32* %code, align 4, !tbaa !5
  switch i32 %74, label %sw.default [
    i32 11, label %sw.bb
    i32 16, label %sw.bb.105
  ]

sw.bb:                                            ; preds = %do.end.98
  %75 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas103 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %75, i32 0, i32 0
  %type_attrs104 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas103, i32 0, i32 0
  store i16 2816, i16* %type_attrs104, align 2, !tbaa !45
  br label %sw.epilog

sw.bb.105:                                        ; preds = %do.end.98
  %76 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas106 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %76, i32 0, i32 0
  %type_attrs107 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas106, i32 0, i32 0
  store i16 4096, i16* %type_attrs107, align 2, !tbaa !45
  br label %sw.epilog

sw.default:                                       ; preds = %do.end.98
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb.105, %sw.bb
  br label %while.cond.80

while.end:                                        ; preds = %while.cond.80
  %77 = load i8, i8* %opx, align 1, !tbaa !53
  %idxprom108 = zext i8 %77 to i64
  %arrayidx109 = getelementptr inbounds [12 x i32 (%struct.gs_context_state_s*)*], [12 x i32 (%struct.gs_context_state_s*)*]* @up_ops, i32 0, i64 %idxprom108
  %78 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %arrayidx109, align 8, !tbaa !1
  %79 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call110 = call i32 %78(%struct.gs_context_state_s* %79) #4
  store i32 %call110, i32* %code, align 4, !tbaa !5
  %80 = load i32, i32* %code, align 4, !tbaa !5
  %cmp111 = icmp slt i32 %80, 0
  br i1 %cmp111, label %if.then.113, label %if.end.114

if.then.113:                                      ; preds = %while.end
  %81 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %81, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.114:                                       ; preds = %while.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.114, %if.then.113, %sw.default, %if.then.89
  call void @llvm.lifetime.end(i64 1, i8* %opargs) #1
  %82 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %82) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.120 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.cond.116

do.cond.116:                                      ; preds = %cleanup.cont
  %83 = load i32, i32* %repcount, align 4, !tbaa !5
  %dec117 = add nsw i32 %83, -1
  store i32 %dec117, i32* %repcount, align 4, !tbaa !5
  %tobool118 = icmp ne i32 %dec117, 0
  br i1 %tobool118, label %do.body.79, label %do.end.119

do.end.119:                                       ; preds = %do.cond.116
  store i32 1, i32* %repcount, align 4, !tbaa !5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.120

cleanup.120:                                      ; preds = %do.end.119, %cleanup, %if.then.74
  %84 = bitcast %struct.up_data_s* %data to i8*
  call void @llvm.lifetime.end(i64 3, i8* %84) #1
  %cleanup.dest.121 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.121, label %cleanup.125 [
    i32 0, label %cleanup.cont.122
  ]

cleanup.cont.122:                                 ; preds = %cleanup.120
  br label %if.end.123

if.end.123:                                       ; preds = %cleanup.cont.122
  br label %if.end.124

if.end.124:                                       ; preds = %if.end.123, %if.then.53
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.125

cleanup.125:                                      ; preds = %if.end.124, %cleanup.120, %if.then.58
  call void @llvm.lifetime.end(i64 1, i8* %opx) #1
  %cleanup.dest.126 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.126, label %cleanup.129 [
    i32 0, label %cleanup.cont.127
  ]

cleanup.cont.127:                                 ; preds = %cleanup.125
  br label %while.cond

while.end.128:                                    ; preds = %while.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.129

cleanup.129:                                      ; preds = %while.end.128, %cleanup.125, %if.then.43, %if.then.35
  %85 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %85) #1
  %86 = bitcast i32* %ocount to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #1
  %87 = bitcast i8** %opp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %87) #1
  %88 = bitcast i32* %repcount to i8*
  call void @llvm.lifetime.end(i64 4, i8* %88) #1
  %89 = bitcast i32* %format to i8*
  call void @llvm.lifetime.end(i64 4, i8* %89) #1
  %90 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %90) #1
  %91 = bitcast %struct.ref_s* %operands to i8*
  call void @llvm.lifetime.end(i64 16, i8* %91) #1
  %cleanup.dest.136 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.136, label %cleanup.311 [
    i32 0, label %cleanup.cont.137
  ]

cleanup.cont.137:                                 ; preds = %cleanup.129
  br label %if.end.295

if.else.138:                                      ; preds = %land.lhs.true.21, %land.lhs.true, %do.end
  %92 = bitcast %struct.ref_s** %arp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %92) #1
  %93 = load %struct.ref_s*, %struct.ref_s** %oppath.addr, align 8, !tbaa !1
  store %struct.ref_s* %93, %struct.ref_s** %arp, align 8, !tbaa !1
  %94 = bitcast i32* %ocount139 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %94) #1
  %95 = load %struct.ref_s*, %struct.ref_s** %oppath.addr, align 8, !tbaa !1
  %tas140 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %95, i32 0, i32 0
  %rsize141 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas140, i32 0, i32 2
  %96 = load i32, i32* %rsize141, align 4, !tbaa !77
  store i32 %96, i32* %ocount139, align 4, !tbaa !5
  %97 = bitcast i64* %index to i8*
  call void @llvm.lifetime.start(i64 8, i8* %97) #1
  store i64 0, i64* %index, align 8, !tbaa !59
  %98 = bitcast i32* %argcount to i8*
  call void @llvm.lifetime.start(i64 4, i8* %98) #1
  store i32 0, i32* %argcount, align 4, !tbaa !5
  %99 = bitcast i32 (%struct.gs_context_state_s*)** %oproc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %99) #1
  %100 = bitcast i32* %opx142 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %100) #1
  %101 = bitcast i32* %code143 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %101) #1
  br label %for.cond

for.cond:                                         ; preds = %for.inc.280, %if.else.138
  %102 = load i64, i64* %index, align 8, !tbaa !59
  %103 = load i32, i32* %ocount139, align 4, !tbaa !5
  %conv144 = zext i32 %103 to i64
  %cmp145 = icmp slt i64 %102, %conv144
  br i1 %cmp145, label %for.body, label %for.end.282

for.body:                                         ; preds = %for.cond
  %104 = bitcast %struct.ref_s* %rup to i8*
  call void @llvm.lifetime.start(i64 16, i8* %104) #1
  %105 = bitcast %struct.ref_s** %defp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %105) #1
  %106 = bitcast %struct.ref_s** %op147 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %106) #1
  %107 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack148 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %107, i32 0, i32 26
  %stack149 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack148, i32 0, i32 0
  %p150 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack149, i32 0, i32 0
  %108 = load %struct.ref_s*, %struct.ref_s** %p150, align 8, !tbaa !51
  store %struct.ref_s* %108, %struct.ref_s** %op147, align 8, !tbaa !1
  %109 = bitcast %struct.up_data_s* %data151 to i8*
  call void @llvm.lifetime.start(i64 3, i8* %109) #1
  %110 = load i32, i32* %argcount, align 4, !tbaa !5
  %111 = load i32*, i32** %pnargs.addr, align 8, !tbaa !1
  store i32 %110, i32* %111, align 4, !tbaa !5
  %112 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory152 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %112, i32 0, i32 1
  %current153 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory152, i32 0, i32 0
  %113 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current153, align 8, !tbaa !7
  %114 = bitcast %struct.gs_ref_memory_s* %113 to %struct.gs_memory_s*
  %115 = load %struct.ref_s*, %struct.ref_s** %arp, align 8, !tbaa !1
  %116 = load i64, i64* %index, align 8, !tbaa !59
  %call154 = call i32 @array_get(%struct.gs_memory_s* %114, %struct.ref_s* %115, i64 %116, %struct.ref_s* %rup) #4
  %tas155 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rup, i32 0, i32 0
  %type_attrs156 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas155, i32 0, i32 0
  %117 = bitcast i16* %type_attrs156 to i8*
  %arrayidx157 = getelementptr inbounds i8, i8* %117, i64 1
  %118 = load i8, i8* %arrayidx157, align 1, !tbaa !53
  %conv158 = zext i8 %118 to i32
  switch i32 %conv158, label %sw.default.272 [
    i32 11, label %sw.bb.159
    i32 16, label %sw.bb.159
    i32 13, label %sw.bb.179
    i32 15, label %sw.bb.206
  ]

sw.bb.159:                                        ; preds = %for.body, %for.body
  %119 = load i32, i32* %argcount, align 4, !tbaa !5
  %inc160 = add nsw i32 %119, 1
  store i32 %inc160, i32* %argcount, align 4, !tbaa !5
  br label %do.body.161

do.body.161:                                      ; preds = %sw.bb.159
  %120 = load %struct.ref_s*, %struct.ref_s** %op147, align 8, !tbaa !1
  %add.ptr162 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %120, i64 1
  store %struct.ref_s* %add.ptr162, %struct.ref_s** %op147, align 8, !tbaa !1
  %121 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack163 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %121, i32 0, i32 26
  %stack164 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack163, i32 0, i32 0
  %top165 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack164, i32 0, i32 2
  %122 = load %struct.ref_s*, %struct.ref_s** %top165, align 8, !tbaa !55
  %cmp166 = icmp ugt %struct.ref_s* %add.ptr162, %122
  br i1 %cmp166, label %if.then.168, label %if.else.172

if.then.168:                                      ; preds = %do.body.161
  %123 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack169 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %123, i32 0, i32 26
  %stack170 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack169, i32 0, i32 0
  %requested171 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack170, i32 0, i32 7
  store i32 1, i32* %requested171, align 4, !tbaa !56
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.274

if.else.172:                                      ; preds = %do.body.161
  %124 = load %struct.ref_s*, %struct.ref_s** %op147, align 8, !tbaa !1
  %125 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack173 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %125, i32 0, i32 26
  %stack174 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack173, i32 0, i32 0
  %p175 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack174, i32 0, i32 0
  store %struct.ref_s* %124, %struct.ref_s** %p175, align 8, !tbaa !51
  br label %if.end.176

if.end.176:                                       ; preds = %if.else.172
  br label %do.cond.177

do.cond.177:                                      ; preds = %if.end.176
  br label %do.end.178

do.end.178:                                       ; preds = %do.cond.177
  %126 = load %struct.ref_s*, %struct.ref_s** %op147, align 8, !tbaa !1
  %127 = bitcast %struct.ref_s* %126 to i8*
  %128 = bitcast %struct.ref_s* %rup to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %127, i8* %128, i64 16, i32 8, i1 false), !tbaa.struct !58
  br label %sw.epilog.273

sw.bb.179:                                        ; preds = %for.body
  %tas180 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rup, i32 0, i32 0
  %type_attrs181 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas180, i32 0, i32 0
  %129 = load i16, i16* %type_attrs181, align 2, !tbaa !45
  %conv182 = zext i16 %129 to i32
  %and183 = and i32 %conv182, 128
  %tobool184 = icmp ne i32 %and183, 0
  br i1 %tobool184, label %lor.lhs.false, label %if.then.204

lor.lhs.false:                                    ; preds = %sw.bb.179
  %130 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %130, i32 0, i32 24
  %system_dict = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack, i32 0, i32 7
  %call185 = call i32 @dict_find(%struct.ref_s* %system_dict, %struct.ref_s* %rup, %struct.ref_s** %defp) #4
  %cmp186 = icmp sle i32 %call185, 0
  br i1 %cmp186, label %if.then.204, label %lor.lhs.false.188

lor.lhs.false.188:                                ; preds = %lor.lhs.false
  %131 = load %struct.ref_s*, %struct.ref_s** %defp, align 8, !tbaa !1
  %tas189 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %131, i32 0, i32 0
  %type_attrs190 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas189, i32 0, i32 0
  %132 = load i16, i16* %type_attrs190, align 2, !tbaa !45
  %conv191 = zext i16 %132 to i32
  %cmp192 = icmp sge i32 %conv191, 5376
  br i1 %cmp192, label %cond.true.194, label %cond.false.195

cond.true.194:                                    ; preds = %lor.lhs.false.188
  br label %cond.end.200

cond.false.195:                                   ; preds = %lor.lhs.false.188
  %133 = load %struct.ref_s*, %struct.ref_s** %defp, align 8, !tbaa !1
  %tas196 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %133, i32 0, i32 0
  %type_attrs197 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas196, i32 0, i32 0
  %134 = bitcast i16* %type_attrs197 to i8*
  %arrayidx198 = getelementptr inbounds i8, i8* %134, i64 1
  %135 = load i8, i8* %arrayidx198, align 1, !tbaa !53
  %conv199 = zext i8 %135 to i32
  br label %cond.end.200

cond.end.200:                                     ; preds = %cond.false.195, %cond.true.194
  %cond201 = phi i32 [ 15, %cond.true.194 ], [ %conv199, %cond.false.195 ]
  %cmp202 = icmp ne i32 %cond201, 15
  br i1 %cmp202, label %if.then.204, label %if.end.205

if.then.204:                                      ; preds = %cond.end.200, %lor.lhs.false, %sw.bb.179
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.274

if.end.205:                                       ; preds = %cond.end.200
  br label %xop

sw.bb.206:                                        ; preds = %for.body
  store %struct.ref_s* %rup, %struct.ref_s** %defp, align 8, !tbaa !1
  br label %xop

xop:                                              ; preds = %sw.bb.206, %if.end.205
  %136 = load %struct.ref_s*, %struct.ref_s** %defp, align 8, !tbaa !1
  %tas207 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %136, i32 0, i32 0
  %type_attrs208 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas207, i32 0, i32 0
  %137 = load i16, i16* %type_attrs208, align 2, !tbaa !45
  %conv209 = zext i16 %137 to i32
  %and210 = and i32 %conv209, 128
  %tobool211 = icmp ne i32 %and210, 0
  br i1 %tobool211, label %if.end.213, label %if.then.212

if.then.212:                                      ; preds = %xop
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.274

if.end.213:                                       ; preds = %xop
  %138 = load %struct.ref_s*, %struct.ref_s** %defp, align 8, !tbaa !1
  %value214 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %138, i32 0, i32 1
  %opproc = bitcast %union.v* %value214 to i32 (%struct.gs_context_state_s*)**
  %139 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %opproc, align 8, !tbaa !1
  store i32 (%struct.gs_context_state_s*)* %139, i32 (%struct.gs_context_state_s*)** %oproc, align 8, !tbaa !1
  store i32 0, i32* %opx142, align 4, !tbaa !5
  br label %for.cond.215

for.cond.215:                                     ; preds = %for.inc, %if.end.213
  %140 = load i32, i32* %opx142, align 4, !tbaa !5
  %cmp216 = icmp sle i32 %140, 11
  br i1 %cmp216, label %for.body.218, label %for.end

for.body.218:                                     ; preds = %for.cond.215
  %141 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %oproc, align 8, !tbaa !1
  %142 = load i32, i32* %opx142, align 4, !tbaa !5
  %idxprom219 = sext i32 %142 to i64
  %arrayidx220 = getelementptr inbounds [12 x i32 (%struct.gs_context_state_s*)*], [12 x i32 (%struct.gs_context_state_s*)*]* @up_ops, i32 0, i64 %idxprom219
  %143 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %arrayidx220, align 8, !tbaa !1
  %cmp221 = icmp eq i32 (%struct.gs_context_state_s*)* %141, %143
  br i1 %cmp221, label %if.then.223, label %if.end.224

if.then.223:                                      ; preds = %for.body.218
  br label %for.end

if.end.224:                                       ; preds = %for.body.218
  br label %for.inc

for.inc:                                          ; preds = %if.end.224
  %144 = load i32, i32* %opx142, align 4, !tbaa !5
  %inc225 = add nsw i32 %144, 1
  store i32 %inc225, i32* %opx142, align 4, !tbaa !5
  br label %for.cond.215

for.end:                                          ; preds = %if.then.223, %for.cond.215
  %145 = load i32, i32* %opx142, align 4, !tbaa !5
  %cmp226 = icmp sgt i32 %145, 11
  br i1 %cmp226, label %if.then.228, label %if.end.229

if.then.228:                                      ; preds = %for.end
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.274

if.end.229:                                       ; preds = %for.end
  %146 = load i32, i32* %opx142, align 4, !tbaa !5
  %idxprom230 = sext i32 %146 to i64
  %arrayidx231 = getelementptr inbounds [12 x %struct.up_data_s], [12 x %struct.up_data_s]* @up_data, i32 0, i64 %idxprom230
  %147 = bitcast %struct.up_data_s* %data151 to i8*
  %148 = bitcast %struct.up_data_s* %arrayidx231 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %147, i8* %148, i64 3, i32 1, i1 false), !tbaa.struct !78
  %149 = load i32, i32* %argcount, align 4, !tbaa !5
  %num_args232 = getelementptr inbounds %struct.up_data_s, %struct.up_data_s* %data151, i32 0, i32 0
  %150 = load i8, i8* %num_args232, align 1, !tbaa !82
  %conv233 = zext i8 %150 to i32
  %cmp234 = icmp ne i32 %149, %conv233
  br i1 %cmp234, label %if.then.236, label %if.end.237

if.then.236:                                      ; preds = %if.end.229
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.274

if.end.237:                                       ; preds = %if.end.229
  %151 = load i32, i32* %upath_compat.addr, align 4, !tbaa !5
  %tobool238 = icmp ne i32 %151, 0
  br i1 %tobool238, label %land.lhs.true.239, label %if.else.251

land.lhs.true.239:                                ; preds = %if.end.237
  %152 = load i32, i32* %opx142, align 4, !tbaa !5
  %cmp240 = icmp eq i32 %152, 11
  br i1 %cmp240, label %if.then.242, label %if.else.251

if.then.242:                                      ; preds = %land.lhs.true.239
  %153 = load i32, i32* %ups, align 4, !tbaa !53
  %cmp243 = icmp ugt i32 %153, 2
  br i1 %cmp243, label %cond.true.245, label %cond.false.246

cond.true.245:                                    ; preds = %if.then.242
  %154 = load i32, i32* %ups, align 4, !tbaa !53
  br label %cond.end.249

cond.false.246:                                   ; preds = %if.then.242
  %state_after247 = getelementptr inbounds %struct.up_data_s, %struct.up_data_s* %data151, i32 0, i32 2
  %155 = load i8, i8* %state_after247, align 1, !tbaa !79
  %conv248 = zext i8 %155 to i32
  br label %cond.end.249

cond.end.249:                                     ; preds = %cond.false.246, %cond.true.245
  %cond250 = phi i32 [ %154, %cond.true.245 ], [ %conv248, %cond.false.246 ]
  store i32 %cond250, i32* %ups, align 4, !tbaa !53
  br label %if.end.260

if.else.251:                                      ; preds = %land.lhs.true.239, %if.end.237
  %156 = load i32, i32* %ups, align 4, !tbaa !53
  %states_before252 = getelementptr inbounds %struct.up_data_s, %struct.up_data_s* %data151, i32 0, i32 1
  %157 = load i8, i8* %states_before252, align 1, !tbaa !81
  %conv253 = zext i8 %157 to i32
  %and254 = and i32 %156, %conv253
  %tobool255 = icmp ne i32 %and254, 0
  br i1 %tobool255, label %if.end.257, label %if.then.256

if.then.256:                                      ; preds = %if.else.251
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.274

if.end.257:                                       ; preds = %if.else.251
  %state_after258 = getelementptr inbounds %struct.up_data_s, %struct.up_data_s* %data151, i32 0, i32 2
  %158 = load i8, i8* %state_after258, align 1, !tbaa !79
  %conv259 = zext i8 %158 to i32
  store i32 %conv259, i32* %ups, align 4, !tbaa !53
  br label %if.end.260

if.end.260:                                       ; preds = %if.end.257, %cond.end.249
  %159 = load i32, i32* %opx142, align 4, !tbaa !5
  %idxprom261 = sext i32 %159 to i64
  %arrayidx262 = getelementptr inbounds [12 x i32 (%struct.gs_context_state_s*)*], [12 x i32 (%struct.gs_context_state_s*)*]* @up_ops, i32 0, i64 %idxprom261
  %160 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %arrayidx262, align 8, !tbaa !1
  %161 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call263 = call i32 %160(%struct.gs_context_state_s* %161) #4
  store i32 %call263, i32* %code143, align 4, !tbaa !5
  %162 = load i32, i32* %code143, align 4, !tbaa !5
  %cmp264 = icmp slt i32 %162, 0
  br i1 %cmp264, label %if.then.266, label %if.end.271

if.then.266:                                      ; preds = %if.end.260
  %163 = load i32, i32* %code143, align 4, !tbaa !5
  %cmp267 = icmp eq i32 %163, -14
  br i1 %cmp267, label %if.then.269, label %if.end.270

if.then.269:                                      ; preds = %if.then.266
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.274

if.end.270:                                       ; preds = %if.then.266
  %164 = load i32, i32* %code143, align 4, !tbaa !5
  store i32 %164, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.274

if.end.271:                                       ; preds = %if.end.260
  store i32 0, i32* %argcount, align 4, !tbaa !5
  br label %sw.epilog.273

sw.default.272:                                   ; preds = %for.body
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.274

sw.epilog.273:                                    ; preds = %if.end.271, %do.end.178
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.274

cleanup.274:                                      ; preds = %sw.epilog.273, %sw.default.272, %if.end.270, %if.then.269, %if.then.256, %if.then.236, %if.then.228, %if.then.212, %if.then.204, %if.then.168
  %165 = bitcast %struct.up_data_s* %data151 to i8*
  call void @llvm.lifetime.end(i64 3, i8* %165) #1
  %166 = bitcast %struct.ref_s** %op147 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %166) #1
  %167 = bitcast %struct.ref_s** %defp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %167) #1
  %168 = bitcast %struct.ref_s* %rup to i8*
  call void @llvm.lifetime.end(i64 16, i8* %168) #1
  %cleanup.dest.278 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.278, label %cleanup.286 [
    i32 0, label %cleanup.cont.279
  ]

cleanup.cont.279:                                 ; preds = %cleanup.274
  br label %for.inc.280

for.inc.280:                                      ; preds = %cleanup.cont.279
  %169 = load i64, i64* %index, align 8, !tbaa !59
  %inc281 = add nsw i64 %169, 1
  store i64 %inc281, i64* %index, align 8, !tbaa !59
  br label %for.cond

for.end.282:                                      ; preds = %for.cond
  %170 = load i32, i32* %argcount, align 4, !tbaa !5
  %tobool283 = icmp ne i32 %170, 0
  br i1 %tobool283, label %if.then.284, label %if.end.285

if.then.284:                                      ; preds = %for.end.282
  %171 = load i32, i32* %argcount, align 4, !tbaa !5
  %172 = load i32*, i32** %pnargs.addr, align 8, !tbaa !1
  store i32 %171, i32* %172, align 4, !tbaa !5
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.286

if.end.285:                                       ; preds = %for.end.282
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.286

cleanup.286:                                      ; preds = %if.end.285, %if.then.284, %cleanup.274
  %173 = bitcast i32* %code143 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %173) #1
  %174 = bitcast i32* %opx142 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %174) #1
  %175 = bitcast i32 (%struct.gs_context_state_s*)** %oproc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %175) #1
  %176 = bitcast i32* %argcount to i8*
  call void @llvm.lifetime.end(i64 4, i8* %176) #1
  %177 = bitcast i64* %index to i8*
  call void @llvm.lifetime.end(i64 8, i8* %177) #1
  %178 = bitcast i32* %ocount139 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %178) #1
  %179 = bitcast %struct.ref_s** %arp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %179) #1
  %cleanup.dest.293 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.293, label %cleanup.311 [
    i32 0, label %cleanup.cont.294
  ]

cleanup.cont.294:                                 ; preds = %cleanup.286
  br label %if.end.295

if.end.295:                                       ; preds = %cleanup.cont.294, %cleanup.cont.137
  %180 = load i32, i32* %ups, align 4, !tbaa !53
  %cmp296 = icmp ult i32 %180, 4
  br i1 %cmp296, label %if.then.298, label %if.end.299

if.then.298:                                      ; preds = %if.end.295
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.311

if.end.299:                                       ; preds = %if.end.295
  %181 = load i32, i32* %ups, align 4, !tbaa !53
  %cmp300 = icmp eq i32 %181, 4
  br i1 %cmp300, label %land.lhs.true.302, label %if.end.310

land.lhs.true.302:                                ; preds = %if.end.299
  %182 = load i32, i32* %upath_compat.addr, align 4, !tbaa !5
  %tobool303 = icmp ne i32 %182, 0
  br i1 %tobool303, label %if.then.304, label %if.end.310

if.then.304:                                      ; preds = %land.lhs.true.302
  %183 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack305 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %183, i32 0, i32 26
  %stack306 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack305, i32 0, i32 0
  %p307 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack306, i32 0, i32 0
  %184 = load %struct.ref_s*, %struct.ref_s** %p307, align 8, !tbaa !51
  %add.ptr308 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %184, i64 2
  store %struct.ref_s* %add.ptr308, %struct.ref_s** %p307, align 8, !tbaa !51
  %185 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call309 = call i32 @zmoveto(%struct.gs_context_state_s* %185) #4
  store i32 %call309, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.311

if.end.310:                                       ; preds = %land.lhs.true.302, %if.end.299
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.311

cleanup.311:                                      ; preds = %if.end.310, %if.then.304, %if.then.298, %cleanup.286, %cleanup.129, %if.then.13, %if.then.7, %if.then
  %186 = bitcast %struct.ref_s* %opcodes to i8*
  call void @llvm.lifetime.end(i64 16, i8* %186) #1
  %187 = bitcast i32* %ups to i8*
  call void @llvm.lifetime.end(i64 4, i8* %187) #1
  %188 = load i32, i32* %retval
  ret i32 %188
}

declare i32 @array_get(%struct.gs_memory_s*, %struct.ref_s*, i64, %struct.ref_s*) #2

declare i32 @num_array_format(%struct.ref_s*) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @num_array_get(%struct.gs_memory_s*, %struct.ref_s*, i32, i32, %struct.ref_s*) #2

declare i32 @dict_find(%struct.ref_s*, %struct.ref_s*, %struct.ref_s**) #2

declare i32 @zmoveto(%struct.gs_context_state_s*) #2

declare i32 @zsetbbox(%struct.gs_context_state_s*) #2

declare i32 @zrmoveto(%struct.gs_context_state_s*) #2

declare i32 @zlineto(%struct.gs_context_state_s*) #2

declare i32 @zrlineto(%struct.gs_context_state_s*) #2

declare i32 @zcurveto(%struct.gs_context_state_s*) #2

declare i32 @zrcurveto(%struct.gs_context_state_s*) #2

declare i32 @zarc(%struct.gs_context_state_s*) #2

declare i32 @zarcn(%struct.gs_context_state_s*) #2

declare i32 @zarct(%struct.gs_context_state_s*) #2

declare i32 @zclosepath(%struct.gs_context_state_s*) #2

declare i32 @gs_fill(%struct.gs_state_s*) #2

declare i32 @gs_stroke(%struct.gs_state_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @in_utest(%struct.gs_context_state_s* %i_ctx_p, i32 (%struct.gs_state_s*)* %paintproc) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %paintproc.addr = alloca i32 (%struct.gs_state_s*)*, align 8
  %hdev = alloca %struct.gx_device_s, align 8
  %npop = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store i32 (%struct.gs_state_s*)* %paintproc, i32 (%struct.gs_state_s*)** %paintproc.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_s* %hdev to i8*
  call void @llvm.lifetime.start(i64 1728, i8* %0) #1
  %1 = bitcast i32* %npop to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @in_upath(%struct.gs_context_state_s* %2, %struct.gx_device_s* %hdev) #4
  store i32 %call, i32* %npop, align 4, !tbaa !5
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i32, i32* %npop, align 4, !tbaa !5
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %npop, align 4, !tbaa !5
  store i32 %5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load i32 (%struct.gs_state_s*)*, i32 (%struct.gs_state_s*)** %paintproc.addr, align 8, !tbaa !1
  %7 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %7, i32 0, i32 0
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !52
  %call1 = call i32 %6(%struct.gs_state_s* %8) #4
  store i32 %call1, i32* %code, align 4, !tbaa !5
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %10 = load i32, i32* %npop, align 4, !tbaa !5
  %11 = load i32, i32* %code, align 4, !tbaa !5
  %call2 = call i32 @in_upath_result(%struct.gs_context_state_s* %9, i32 %10, i32 %11) #4
  store i32 %call2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %12 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #1
  %13 = bitcast i32* %npop to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #1
  %14 = bitcast %struct.gx_device_s* %hdev to i8*
  call void @llvm.lifetime.end(i64 1728, i8* %14) #1
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal i32 @in_upath(%struct.gs_context_state_s* %i_ctx_p, %struct.gx_device_s* %phdev) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %phdev.addr = alloca %struct.gx_device_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %npop = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %phdev, %struct.gx_device_s** %phdev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !51
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 0
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !52
  %call = call i32 @gs_gsave(%struct.gs_state_s* %5) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %6 = bitcast i32* %npop to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %10 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call1 = call i32 @upath_append(%struct.ref_s* %9, %struct.gs_context_state_s* %10, i32 0) #4
  store i32 %call1, i32* %code, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then.5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %11 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i64 -1
  %12 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %phdev.addr, align 8, !tbaa !1
  %call3 = call i32 @in_path(%struct.ref_s* %add.ptr, %struct.gs_context_state_s* %12, %struct.gx_device_s* %13) #4
  store i32 %call3, i32* %npop, align 4, !tbaa !5
  store i32 %call3, i32* %code, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %lor.lhs.false, %if.end
  %14 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs6 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %14, i32 0, i32 0
  %15 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs6, align 8, !tbaa !52
  %call7 = call i32 @gs_grestore(%struct.gs_state_s* %15) #4
  %16 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %lor.lhs.false
  %17 = load i32, i32* %npop, align 4, !tbaa !5
  %add = add nsw i32 %17, 1
  store i32 %add, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.8, %if.then.5, %if.then
  %18 = bitcast i32* %npop to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #1
  %19 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  %20 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #1
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal i32 @in_upath_result(%struct.gs_context_state_s* %i_ctx_p, i32 %npop, i32 %code) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %npop.addr = alloca i32, align 4
  %code.addr = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store i32 %npop, i32* %npop.addr, align 4, !tbaa !5
  store i32 %code, i32* %code.addr, align 4, !tbaa !5
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 0
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !52
  %call = call i32 @gs_grestore(%struct.gs_state_s* %1) #4
  %2 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %3 = load i32, i32* %npop.addr, align 4, !tbaa !5
  %4 = load i32, i32* %code.addr, align 4, !tbaa !5
  %call1 = call i32 @in_path_result(%struct.gs_context_state_s* %2, i32 %3, i32 %4) #4
  ret i32 %call1
}

; Function Attrs: nounwind uwtable
define internal i32 @upath_stroke(%struct.gs_context_state_s* %i_ctx_p, %struct.gs_matrix_s* %pmat, i32 %upath_compat) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %upath_compat.addr = alloca i32, align 4
  %op = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %npop = alloca i32, align 4
  %mat = alloca %struct.gs_matrix_s, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  store i32 %upath_compat, i32* %upath_compat.addr, align 4, !tbaa !5
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !51
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %npop to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast %struct.gs_matrix_s* %mat to i8*
  call void @llvm.lifetime.start(i64 24, i8* %5) #1
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %6, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %7 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !7
  %8 = bitcast %struct.gs_ref_memory_s* %7 to %struct.gs_memory_s*
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @read_matrix(%struct.gs_memory_s* %8, %struct.ref_s* %9, %struct.gs_matrix_s* %mat) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %cmp = icmp sge i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else.7

if.then:                                          ; preds = %entry
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 -1
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %12 = load i32, i32* %upath_compat.addr, align 4, !tbaa !5
  %call1 = call i32 @upath_append(%struct.ref_s* %add.ptr, %struct.gs_context_state_s* %11, i32 %12) #4
  store i32 %call1, i32* %code, align 4, !tbaa !5
  %cmp2 = icmp sge i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.end.6

if.then.3:                                        ; preds = %if.then
  %13 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.gs_matrix_s* %13, null
  br i1 %tobool, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then.3
  %14 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %15 = bitcast %struct.gs_matrix_s* %14 to i8*
  %16 = bitcast %struct.gs_matrix_s* %mat to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 24, i32 4, i1 false), !tbaa.struct !83
  br label %if.end

if.else:                                          ; preds = %if.then.3
  %17 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %17, i32 0, i32 0
  %18 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !52
  %call5 = call i32 @gs_concat(%struct.gs_state_s* %18, %struct.gs_matrix_s* %mat) #4
  store i32 %call5, i32* %code, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  store i32 2, i32* %npop, align 4, !tbaa !5
  br label %if.end.15

if.else.7:                                        ; preds = %entry
  %19 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %20 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %21 = load i32, i32* %upath_compat.addr, align 4, !tbaa !5
  %call8 = call i32 @upath_append(%struct.ref_s* %19, %struct.gs_context_state_s* %20, i32 %21) #4
  store i32 %call8, i32* %code, align 4, !tbaa !5
  %cmp9 = icmp sge i32 %call8, 0
  br i1 %cmp9, label %if.then.10, label %if.end.14

if.then.10:                                       ; preds = %if.else.7
  %22 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %tobool11 = icmp ne %struct.gs_matrix_s* %22, null
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.then.10
  %23 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  call void @gs_make_identity(%struct.gs_matrix_s* %23) #4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.then.10
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.else.7
  store i32 1, i32* %npop, align 4, !tbaa !5
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.end.6
  %24 = load i32, i32* %code, align 4, !tbaa !5
  %cmp16 = icmp slt i32 %24, 0
  br i1 %cmp16, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.15
  %25 = load i32, i32* %code, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %if.end.15
  %26 = load i32, i32* %npop, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %25, %cond.true ], [ %26, %cond.false ]
  %27 = bitcast %struct.gs_matrix_s* %mat to i8*
  call void @llvm.lifetime.end(i64 24, i8* %27) #1
  %28 = bitcast i32* %npop to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  %29 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #1
  %30 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #1
  ret i32 %cond
}

declare i32 @gs_concat(%struct.gs_state_s*, %struct.gs_matrix_s*) #2

declare i32 @read_matrix(%struct.gs_memory_s*, %struct.ref_s*, %struct.gs_matrix_s*) #2

declare void @gs_make_identity(%struct.gs_matrix_s*) #2

declare i32 @gs_upmergepath(%struct.gs_state_s*) #2

declare i32 @check_type_failed(%struct.ref_s*) #2

declare i32 @gs_currentmatrix(%struct.gs_state_s*, %struct.gs_matrix_s*) #2

declare i32 @gs_strokepath(%struct.gs_state_s*) #2

declare i32 @gs_setmatrix(%struct.gs_state_s*, %struct.gs_matrix_s*) #2

declare void @gx_path_free(%struct.gx_path_s*, i8*) #2

declare i32 @dict_find_string(%struct.ref_s*, i8*, %struct.ref_s**) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !2, i64 8}
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
!20 = !{!21, !23, i64 24}
!21 = !{!"gs_rect_s", !22, i64 0, !22, i64 16}
!22 = !{!"gs_point_s", !23, i64 0, !23, i64 8}
!23 = !{!"double", !3, i64 0}
!24 = !{!21, !23, i64 16}
!25 = !{!21, !23, i64 8}
!26 = !{!21, !23, i64 0}
!27 = !{!28, !2, i64 8}
!28 = !{!"gs_state_s", !6, i64 0, !2, i64 8, !2, i64 16, !29, i64 24, !6, i64 128, !33, i64 132, !6, i64 168, !22, i64 176, !22, i64 192, !6, i64 208, !6, i64 212, !13, i64 216, !3, i64 220, !34, i64 224, !34, i64 228, !35, i64 232, !14, i64 240, !6, i64 248, !6, i64 252, !6, i64 256, !2, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !30, i64 296, !36, i64 300, !6, i64 308, !6, i64 312, !6, i64 316, !30, i64 320, !6, i64 324, !6, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !6, i64 408, !2, i64 416, !2, i64 424, !37, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !38, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !38, i64 1336, !2, i64 1616, !31, i64 1624, !6, i64 1648, !31, i64 1652, !6, i64 1676, !2, i64 1680, !2, i64 1688, !2, i64 1696, !2, i64 1704, !14, i64 1712, !14, i64 1720, !2, i64 1728, !6, i64 1736, !3, i64 1744, !2, i64 1792, !2, i64 1800, !33, i64 1808, !6, i64 1844, !3, i64 1848, !3, i64 1852, !2, i64 1856, !6, i64 1864, !2, i64 1872, !2, i64 1880, !39, i64 1888}
!29 = !{!"gx_line_params_s", !30, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !6, i64 20, !30, i64 24, !30, i64 28, !30, i64 32, !6, i64 36, !31, i64 40, !32, i64 64}
!30 = !{!"float", !3, i64 0}
!31 = !{!"gs_matrix_s", !30, i64 0, !30, i64 4, !30, i64 8, !30, i64 12, !30, i64 16, !30, i64 20}
!32 = !{!"gx_dash_params_s", !2, i64 0, !6, i64 8, !30, i64 12, !6, i64 16, !30, i64 20, !6, i64 24, !6, i64 28, !30, i64 32}
!33 = !{!"gs_matrix_fixed_s", !30, i64 0, !30, i64 4, !30, i64 8, !30, i64 12, !30, i64 16, !30, i64 20, !6, i64 24, !6, i64 28, !6, i64 32}
!34 = !{!"gs_transparency_source_s", !30, i64 0}
!35 = !{!"gs_xstate_trans_flags", !6, i64 0, !6, i64 4}
!36 = !{!"gs_fixed_point_s", !6, i64 0, !6, i64 4}
!37 = !{!"gx_transfer_s", !6, i64 0, !2, i64 8, !6, i64 16, !2, i64 24, !6, i64 32, !2, i64 40, !6, i64 48, !2, i64 56}
!38 = !{!"gs_devicen_color_map_s", !6, i64 0, !3, i64 4, !6, i64 8, !6, i64 12, !14, i64 16, !3, i64 24}
!39 = !{!"gs_state_client_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!40 = !{!41, !2, i64 192}
!41 = !{!"gs_memory_s", !2, i64 0, !42, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!42 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!43 = !{!44, !2, i64 120}
!44 = !{!"gs_lib_ctx_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !14, i64 104, !2, i64 112, !2, i64 120, !6, i64 128, !2, i64 136, !6, i64 144, !6, i64 148, !3, i64 152, !2, i64 168, !6, i64 176, !2, i64 184, !6, i64 192, !2, i64 200, !2, i64 208}
!45 = !{!11, !13, i64 0}
!46 = !{!30, !30, i64 0}
!47 = !{!9, !6, i64 68}
!48 = !{!28, !2, i64 1680}
!49 = !{!22, !23, i64 0}
!50 = !{!22, !23, i64 8}
!51 = !{!8, !2, i64 624}
!52 = !{!8, !2, i64 0}
!53 = !{!3, !3, i64 0}
!54 = !{!13, !13, i64 0}
!55 = !{!8, !2, i64 640}
!56 = !{!8, !6, i64 688}
!57 = !{!23, !23, i64 0}
!58 = !{i64 0, i64 2, !54, i64 2, i64 2, !54, i64 4, i64 4, !5, i64 8, i64 8, !59, i64 8, i64 2, !54, i64 8, i64 4, !46, i64 8, i64 8, !59, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !59}
!59 = !{!14, !14, i64 0}
!60 = !{!61, !6, i64 0}
!61 = !{!"gs_fixed_rect_s", !36, i64 0, !36, i64 8}
!62 = !{!61, !6, i64 4}
!63 = !{!61, !6, i64 8}
!64 = !{!61, !6, i64 12}
!65 = !{!66, !6, i64 836}
!66 = !{!"gx_device_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !67, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !68, i64 96, !70, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !14, i64 928, !14, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !14, i64 968, !14, i64 976, !71, i64 984, !6, i64 1052, !6, i64 1056, !72, i64 1064, !2, i64 1104, !3, i64 1112, !74, i64 1120, !75, i64 1144}
!67 = !{!"rc_header_s", !14, i64 0, !2, i64 8, !2, i64 16}
!68 = !{!"gx_device_color_info_s", !6, i64 0, !6, i64 4, !3, i64 8, !13, i64 12, !3, i64 14, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !69, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !14, i64 704, !6, i64 712}
!69 = !{!"gx_device_anti_alias_info_s", !6, i64 0, !6, i64 4}
!70 = !{!"gx_device_cached_colors_s", !14, i64 0, !14, i64 8}
!71 = !{!"gx_stroked_gradient_recognizer_s", !6, i64 0, !3, i64 4, !3, i64 36}
!72 = !{!"gdev_space_params_s", !14, i64 0, !14, i64 8, !73, i64 16, !6, i64 32, !3, i64 36}
!73 = !{!"gx_band_params_s", !6, i64 0, !6, i64 4, !14, i64 8}
!74 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!75 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!76 = !{!66, !6, i64 832}
!77 = !{!11, !6, i64 4}
!78 = !{i64 0, i64 1, !53, i64 1, i64 1, !53, i64 2, i64 1, !53}
!79 = !{!80, !3, i64 2}
!80 = !{!"up_data_s", !3, i64 0, !3, i64 1, !3, i64 2}
!81 = !{!80, !3, i64 1}
!82 = !{!80, !3, i64 0}
!83 = !{i64 0, i64 4, !46, i64 4, i64 4, !46, i64 8, i64 4, !46, i64 12, i64 4, !46, i64 16, i64 4, !46, i64 20, i64 4, !46}
