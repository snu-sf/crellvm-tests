; ModuleID = './imain.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_main_instance_s = type { %struct.gs_memory_s*, i32, i64, i32, i32, i32, i32, i32, %struct.gs_file_path_s, [2 x i64], i8*, %struct.ref_s, i32 (%struct._IO_FILE*, i8**)*, %struct.display_callback_s*, %struct.gs_context_state_s*, i8*, i32 }
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
%struct.stream_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], %union.stream_cursor_s, i8*, i32, i32, i16, i8, i8, %struct.gs_string_s, i64, %struct.stream_procs, %struct.stream_s*, i32, i32, %struct.stream_state_s*, i16, i16, %struct.stream_s*, %struct.stream_s*, i32, i32, i32 (%struct.stream_s*)*, %struct._IO_FILE*, %struct.gs_const_string_s, i32, i64, i64 }
%struct.stream_template_s = type { %struct.gs_memory_struct_type_s*, i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32, i32, void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)* }
%struct.stream_cursor_read_s = type { i8*, i8*, i8* }
%struct.stream_cursor_write_s = type { i8*, i8*, i8* }
%union.stream_cursor_s = type { %struct.stream_cursor_read_s }
%struct.gs_string_s = type { i8*, i32 }
%struct.stream_procs = type { i32 (%struct.stream_s*, i64*)*, i32 (%struct.stream_s*, i64)*, void (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_s*, i32)* }
%struct.stream_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8] }
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
%struct.gs_file_path_s = type { %struct.ref_s, %struct.ref_s, i8*, i8*, i32 }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16, i32 }
%union.v = type { i64 }
%struct.display_callback_s = type opaque
%struct.gs_context_state_s = type { %struct.gs_state_s*, %struct.gs_dual_memory_s, i32, %struct.ref_s, %struct.ref_s, i64, i64, i64, i32, i32, %struct.ref_s, %struct.ref_s, i32, i32, i32, i32, %struct.gs_file_path_s*, [3 x %struct.ref_s], %struct.stream_s*, %struct.op_array_table_s, %struct.op_array_table_s, i32 (%struct.gs_context_state_s**)*, i32, i32 (%struct.gs_context_state_s**)*, %struct.dict_stack_s, %struct.exec_stack_s, %struct.op_stack_s, %struct.i_plugin_holder_s* }
%struct.gs_state_s = type { i32, %struct.gs_memory_s*, i8*, %struct.gx_line_params_s, i32, %struct.gs_matrix_fixed_s, i32, %struct.gs_point_s, %struct.gs_point_s, i32, i32, i16, i32, %struct.gs_transparency_source_s, %struct.gs_transparency_source_s, %struct.gs_xstate_trans_flags, i64, i32, i32, i32, %struct.gx_device_s*, i32, i32, i32, i32, i32, i32, float, %struct.gs_fixed_point_s, i32, i32, i32, float, i32, i32, %struct.gsicc_manager_s*, %struct.gsicc_link_cache_s*, %struct.gsicc_profile_cache_s*, %struct.gx_color_map_procs_s* (%struct.gs_imager_state_s*, %struct.gx_device_s*)*, %struct.gs_halftone_s*, [2 x %struct.gs_int_point_s], %struct.gx_device_halftone_s*, %struct.gs_cie_render_s*, i32, %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s*, %struct.gx_transfer_s, [64 x %struct.gx_transfer_map_s*], %struct.gx_cie_joint_caches_s*, %struct.gx_color_map_procs_s*, %struct.gs_devicen_color_map_s, %struct.gx_pattern_cache_s*, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_devicen_color_map_s, %struct.gs_state_s*, %struct.gs_matrix_s, i32, %struct.gs_matrix_s, i32, %struct.gx_path_s*, %struct.gx_clip_path_s*, %struct.gx_clip_stack_s*, %struct.gx_clip_path_s*, i64, i64, %struct.gx_clip_path_s*, i32, [2 x %struct.anon], %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_matrix_fixed_s, i32, i32, i32, %struct.gs_state_s*, i32, %struct.gx_device_s*, %struct.gs_device_filter_stack_s*, %struct.gs_state_client_procs_s }
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
%struct.gs_pattern_instance_s = type { %struct.rc_header_s, %struct.gs_pattern_type_s*, %struct.gs_state_s*, i64 }
%struct.gs_pattern_type_s = type opaque
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
%struct.gx_clist_state_s = type opaque
%struct.cmd_list_s = type { %struct.cmd_prefix_s*, %struct.cmd_prefix_s* }
%struct.cmd_prefix_s = type { %struct.cmd_prefix_s*, i32, i64 }
%struct.clist_color_space_s = type { i8, i64, %struct.clist_icc_color_s, %struct.gs_color_space_s* }
%struct.clist_icc_color_s = type { i64, i8, i32, i32, i32 }
%struct.gs_pattern1_instance_s = type { %struct.rc_header_s, %struct.gs_pattern_type_s*, %struct.gs_state_s*, i64, %struct.gs_pattern1_template_s, %struct.gs_matrix_s, %struct.gs_rect_s, i32, i32, i32, i32, i32, %struct.gs_int_point_s, i64 }
%struct.gs_pattern1_template_s = type { %struct.gs_pattern_type_s*, i32, %struct.gs_uid_s, i8*, i32, i32, i32, %struct.gs_rect_s, float, float, i32 (%struct.gs_client_color_s*, %struct.gs_state_s*)* }
%struct.gs_uid_s = type { i64, i64* }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.clist_writer_cropping_buffer_s = type { i32, i32, i32, i32, %struct.clist_writer_cropping_buffer_s* }
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
%struct.gs_dual_memory_s = type { %struct.gs_ref_memory_s*, %struct.vm_spaces_s, i32, i32 (%struct.gs_dual_memory_s*, i32)*, i32, i32 }
%struct.gs_ref_memory_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32, i32, i32, %struct.gs_memory_gc_status_s, i32, i64, %struct.chunk_s*, %struct.chunk_s*, %struct.chunk_s, %struct.chunk_s*, %struct.chunk_locator_s, i64, i64, %struct.lost_, i32, i32, i32, %struct.stream_s*, %struct.ref_s*, %struct.gs_gc_root_s*, i32, %struct.alloc_change_s*, %struct.alloc_change_s*, %struct.alloc_save_s*, i64, i64, %struct.alloc_save_s*, %struct.gs_memory_status_s, i32, [102 x %struct.obj_header_s*] }
%struct.gs_memory_gc_status_s = type { i64, i64, i32*, i32, i32, i64 }
%struct.chunk_s = type { %struct.chunk_head_s*, i8*, i8*, i8*, %struct.obj_header_s*, i8*, i8*, i8*, i8*, %struct.chunk_s*, %struct.chunk_s*, %struct.chunk_s*, i32, i32, i32*, i32, i8*, i8*, i32, i8*, i32*, i8*, i8*, i8* }
%struct.chunk_head_s = type { i8*, %struct.obj_header_s }
%struct.obj_header_s = type { %union._d }
%union._d = type { %struct.obj_header_data_s }
%struct.obj_header_data_s = type { %union._f, i32, %union._t, i64 }
%union._f = type { %struct._h }
%struct._h = type { i32 }
%union._t = type { %struct.gs_memory_struct_type_s* }
%struct.chunk_locator_s = type { %struct.gs_ref_memory_s*, %struct.chunk_s* }
%struct.lost_ = type { i64, i64, i64 }
%struct.alloc_change_s = type { %struct.alloc_change_s*, i16*, %struct.ref_s, i16 }
%struct.alloc_save_s = type opaque
%struct.vm_spaces_s = type { void (%struct.vm_spaces_s*, i32)*, %union.anon.2 }
%union.anon.2 = type { [4 x %struct.gs_ref_memory_s*] }
%struct.op_array_table_s = type { %struct.ref_s, i16*, i32, i32, i32 }
%struct.dict_stack_s = type { %struct.ref_stack_s, i32, i32, i32, i16*, i32, %struct.ref_s*, %struct.ref_s }
%struct.ref_stack_s = type { %struct.ref_s*, %struct.ref_s*, %struct.ref_s*, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, %struct.ref_stack_params_s*, %struct.gs_ref_memory_s* }
%struct.ref_stack_params_s = type opaque
%struct.exec_stack_s = type { %struct.ref_stack_s, %struct.ref_s* }
%struct.op_stack_s = type { %struct.ref_stack_s }
%struct.i_plugin_holder_s = type { %struct.i_plugin_holder_s*, %struct.i_plugin_instance_s* }
%struct.i_plugin_instance_s = type { %struct.i_plugin_descriptor_s* }
%struct.i_plugin_descriptor_s = type { i8*, i8*, void (%struct.i_plugin_instance_s*, %struct.i_plugin_client_memory_s*)* }
%struct.i_plugin_client_memory_s = type { i8*, i8* (%struct.i_plugin_client_memory_s*, i32, i8*)*, void (%struct.i_plugin_client_memory_s*, i8*, i8*)* }
%struct._ssn = type { %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s* }
%struct.scanner_state_s = type { %struct.ref_s, i32, i32, i32, i32, %struct.dynamic_area_s, %union.sss_, %struct.se_ }
%struct.dynamic_area_s = type { i8*, i8*, i8*, i32, [1023 x i8], %struct.gs_memory_s* }
%union.sss_ = type { %struct.stream_A85D_state_s }
%struct.stream_A85D_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], i32, i64, i32, i32 }
%struct.se_ = type { %struct.ref_s, i32, [121 x i8] }
%struct.gx_device_printer_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], %struct.gx_printer_device_procs_s, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s }
%struct.gx_printer_device_procs_s = type { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }
%struct.gdev_prn_start_render_params_s = type opaque
%struct.gx_page_queue_s = type opaque
%struct.bg_print_s = type { %struct.gx_semaphore_s*, %struct.gx_device_s*, i8*, i32, i32 }
%struct.gx_saved_pages_list_s = type { i32, i32, i32, i32, %struct.gx_saved_pages_list_element_s*, %struct.gx_saved_pages_list_element_s*, %struct.gs_memory_s* }
%struct.gx_saved_pages_list_element_s = type { i32, %struct.gx_saved_pages_list_element_s*, %struct.gx_saved_pages_list_element_s*, %struct.gx_saved_page_s* }
%struct.gx_saved_page_s = type { [32 x i8], %struct.gx_device_color_info_s, [4096 x i8], [4096 x i8], %struct.clist_io_procs_s*, i32, i64, %struct.gx_band_params_s, %struct.gs_memory_s*, i32, i8* }

@.str = private unnamed_addr constant [19 x i8] c"init_main_instance\00", align 1
@gs_main_instance_init_values = external constant %struct.gs_main_instance_s, align 8
@gs_debug = external global [128 x i8], align 16
@.str.1 = private unnamed_addr constant [15 x i8] c"lib_path array\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"the_gs_name_table\00", align 1
@empty_table = internal constant %struct.op_array_table_s zeroinitializer, align 8
@gs_init_files = external constant [0 x i8], align 1
@gs_init_files_sizeof = external constant i32, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"INITFILES\00", align 1
@gs_emulators = external constant [0 x i8], align 1
@gs_emulators_sizeof = external constant i32, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"EMULATORS\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"LIBPATH\00", align 1
@.str.6 = private unnamed_addr constant [80 x i8] c"JOBSERVER  { false 0 .startnewjob }  { NOOUTERSAVE not { save pop } if } ifelse\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"begin\00", align 1
@.str.8 = private unnamed_addr constant [52 x i8] c"   --saved-pages not supported by the '%s' device.\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"Start\00", align 1
@gp_current_directory_name = external constant [0 x i8], align 1
@gx_io_device_table_count = external constant i32, align 4
@gx_io_device_table = external constant [0 x %struct.gx_io_device_s*], align 8
@.str.10 = private unnamed_addr constant [6 x i8] c"%rom%\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"%rom%Resource/Init/\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"%rom%lib/\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"Can't find initialization file %s.\0A\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c".runstringbegin\00", align 1
@.str.15 = private unnamed_addr constant [68 x i8] c"ERROR %d reclaiming the memory while the interpreter finalization.\0A\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"gs_main_finit\00", align 1
@.str.17 = private unnamed_addr constant [95 x i8] c".uninstallpagedevice serverdict /.jobsavelevel get 0 eq {/quit} {/stop} ifelse .systemvar exec\00", align 1
@.str.18 = private unnamed_addr constant [72 x i8] c"ERROR %d closing %s device. See gs/psi/ierrors.h for code explanation.\0A\00", align 1
@.str.19 = private unnamed_addr constant [132 x i8] c"(%stdout) (w) file closefile (%stderr) (w) file closefile serverdict /.jobsavelevel get 0 eq {/quit} {/stop} ifelse .systemvar exec\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"Final\00", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"%% Exiting instance 0x%p\0A\00", align 1
@.str.22 = private unnamed_addr constant [78 x i8] c"ERROR %d while the final restore. See gs/psi/ierrors.h for code explanation.\0A\00", align 1
@.str.23 = private unnamed_addr constant [53 x i8] c"%% %s time = %g, memory allocated = %lu, used = %lu\0A\00", align 1
@.str.24 = private unnamed_addr constant [35 x i8] c"\0AUnexpected interpreter error %d.\0A\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"Error object: \00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"Operand stack\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"Execution stack\00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"Dictionary stack\00", align 1
@gp_file_name_list_separator = external constant i8, align 1
@.str.31 = private unnamed_addr constant [38 x i8] c"\0AAdding path to search paths failed.\0A\00", align 1
@.str.32 = private unnamed_addr constant [33 x i8] c"extend_path_list_container array\00", align 1
@.str.33 = private unnamed_addr constant [27 x i8] c"extend_path_list_container\00", align 1
@gs_init_file = external constant i8*, align 8
@.str.34 = private unnamed_addr constant [56 x i8] c"Initialization file %s does not begin with an integer.\0A\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"SAFETY\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"tempfiles\00", align 1

; Function Attrs: nounwind uwtable
define %struct.gs_main_instance_s* @get_minst_from_memory(%struct.gs_memory_s* %mem) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %0, i32 0, i32 2
  %1 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !5
  %top_of_system = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %1, i32 0, i32 15
  %2 = load i8*, i8** %top_of_system, align 8, !tbaa !8
  %3 = bitcast i8* %2 to %struct.gs_main_instance_s*
  ret %struct.gs_main_instance_s* %3
}

; Function Attrs: nounwind uwtable
define %struct.gs_main_instance_s* @gs_main_alloc_instance(%struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca %struct.gs_main_instance_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %minst = alloca %struct.gs_main_instance_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_main_instance_s** %minst to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_memory_s* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.gs_main_instance_s* null, %struct.gs_main_instance_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %2, i32 0, i32 1
  %alloc_bytes_immovable = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 0
  %3 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes_immovable, align 8, !tbaa !12
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i8* %3(%struct.gs_memory_s* %4, i32 184, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0)) #5
  %5 = bitcast i8* %call to %struct.gs_main_instance_s*
  store %struct.gs_main_instance_s* %5, %struct.gs_main_instance_s** %minst, align 8, !tbaa !1
  %6 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst, align 8, !tbaa !1
  %cmp1 = icmp eq %struct.gs_main_instance_s* %6, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store %struct.gs_main_instance_s* null, %struct.gs_main_instance_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %if.end
  %7 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst, align 8, !tbaa !1
  %8 = bitcast %struct.gs_main_instance_s* %7 to i8*
  %call4 = call i8* @memcpy(i8* %8, i8* bitcast (%struct.gs_main_instance_s* @gs_main_instance_init_values to i8*), i64 184) #6
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %10 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst, align 8, !tbaa !1
  %heap = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %10, i32 0, i32 0
  store %struct.gs_memory_s* %9, %struct.gs_memory_s** %heap, align 8, !tbaa !13
  %11 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst, align 8, !tbaa !1
  %12 = bitcast %struct.gs_main_instance_s* %11 to i8*
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %13, i32 0, i32 2
  %14 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !5
  %top_of_system = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %14, i32 0, i32 15
  store i8* %12, i8** %top_of_system, align 8, !tbaa !8
  %15 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst, align 8, !tbaa !1
  store %struct.gs_main_instance_s* %15, %struct.gs_main_instance_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.3, %if.then.2, %if.then
  %16 = bitcast %struct.gs_main_instance_s** %minst to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  %17 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %retval
  ret %struct.gs_main_instance_s* %17
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define %struct.op_array_table_s* @get_op_array(%struct.gs_memory_s* %mem, i32 %size) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %size.addr = alloca i32, align 4
  %minst = alloca %struct.gs_main_instance_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !19
  %0 = bitcast %struct.gs_main_instance_s** %minst to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call %struct.gs_main_instance_s* @get_minst_from_memory(%struct.gs_memory_s* %1) #5
  store %struct.gs_main_instance_s* %call, %struct.gs_main_instance_s** %minst, align 8, !tbaa !1
  %2 = load i32, i32* %size.addr, align 4, !tbaa !19
  %3 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst, align 8, !tbaa !1
  %i_ctx_p = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %3, i32 0, i32 14
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !20
  %op_array_table_local = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 20
  %base_index = getelementptr inbounds %struct.op_array_table_s, %struct.op_array_table_s* %op_array_table_local, i32 0, i32 3
  %5 = load i32, i32* %base_index, align 4, !tbaa !21
  %cmp = icmp ult i32 %2, %5
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %6 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst, align 8, !tbaa !1
  %i_ctx_p1 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %6, i32 0, i32 14
  %7 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p1, align 8, !tbaa !20
  %op_array_table_global = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %7, i32 0, i32 19
  br label %cond.end

cond.false:                                       ; preds = %entry
  %8 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst, align 8, !tbaa !1
  %i_ctx_p2 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %8, i32 0, i32 14
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p2, align 8, !tbaa !20
  %op_array_table_local3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %9, i32 0, i32 20
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.op_array_table_s* [ %op_array_table_global, %cond.true ], [ %op_array_table_local3, %cond.false ]
  %10 = bitcast %struct.gs_main_instance_s** %minst to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #1
  ret %struct.op_array_table_s* %cond
}

; Function Attrs: nounwind uwtable
define %struct.op_array_table_s* @get_global_op_array(%struct.gs_memory_s* %mem) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %minst = alloca %struct.gs_main_instance_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_main_instance_s** %minst to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call %struct.gs_main_instance_s* @get_minst_from_memory(%struct.gs_memory_s* %1) #5
  store %struct.gs_main_instance_s* %call, %struct.gs_main_instance_s** %minst, align 8, !tbaa !1
  %2 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst, align 8, !tbaa !1
  %i_ctx_p = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %2, i32 0, i32 14
  %3 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !20
  %op_array_table_global = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %3, i32 0, i32 19
  %4 = bitcast %struct.gs_main_instance_s** %minst to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4) #1
  ret %struct.op_array_table_s* %op_array_table_global
}

; Function Attrs: nounwind uwtable
define %struct.op_array_table_s* @get_local_op_array(%struct.gs_memory_s* %mem) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %minst = alloca %struct.gs_main_instance_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_main_instance_s** %minst to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call %struct.gs_main_instance_s* @get_minst_from_memory(%struct.gs_memory_s* %1) #5
  store %struct.gs_main_instance_s* %call, %struct.gs_main_instance_s** %minst, align 8, !tbaa !1
  %2 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst, align 8, !tbaa !1
  %i_ctx_p = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %2, i32 0, i32 14
  %3 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !20
  %op_array_table_local = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %3, i32 0, i32 20
  %4 = bitcast %struct.gs_main_instance_s** %minst to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4) #1
  ret %struct.op_array_table_s* %op_array_table_local
}

; Function Attrs: nounwind uwtable
define i32 @gs_main_init0(%struct.gs_main_instance_s* %minst, %struct._IO_FILE* %in, %struct._IO_FILE* %out, %struct._IO_FILE* %err, i32 %max_lib_paths) #0 {
entry:
  %retval = alloca i32, align 4
  %minst.addr = alloca %struct.gs_main_instance_s*, align 8
  %in.addr = alloca %struct._IO_FILE*, align 8
  %out.addr = alloca %struct._IO_FILE*, align 8
  %err.addr = alloca %struct._IO_FILE*, align 8
  %max_lib_paths.addr = alloca i32, align 4
  %paths = alloca %struct.ref_s*, align 8
  %array = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_main_instance_s* %minst, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %in, %struct._IO_FILE** %in.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %out, %struct._IO_FILE** %out.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %err, %struct._IO_FILE** %err.addr, align 8, !tbaa !1
  store i32 %max_lib_paths, i32* %max_lib_paths.addr, align 4, !tbaa !19
  %0 = bitcast %struct.ref_s** %paths to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.ref_s** %array to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  call void @gp_init() #5
  %call = call i8* @memset(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @gs_debug, i32 0, i32 0), i32 0, i64 128) #6
  store i8 0, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @gs_debug, i32 0, i64 35), align 1, !tbaa !30
  %2 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %base_time = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %2, i32 0, i32 9
  %arraydecay = getelementptr inbounds [2 x i64], [2 x i64]* %base_time, i32 0, i32 0
  call void @gp_get_realtime(i64* %arraydecay) #5
  %3 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %3, i32 0, i32 0
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap, align 8, !tbaa !13
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %4, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %5 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !31
  %6 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap1 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %6, i32 0, i32 0
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap1, align 8, !tbaa !13
  %8 = load i32, i32* %max_lib_paths.addr, align 4, !tbaa !19
  %call2 = call i8* %5(%struct.gs_memory_s* %7, i32 %8, i32 16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0)) #5
  %9 = bitcast i8* %call2 to %struct.ref_s*
  store %struct.ref_s* %9, %struct.ref_s** %paths, align 8, !tbaa !1
  %10 = load %struct.ref_s*, %struct.ref_s** %paths, align 8, !tbaa !1
  %cmp = icmp eq %struct.ref_s* %10, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap3 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %11, i32 0, i32 0
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap3, align 8, !tbaa !13
  call void @gs_lib_finit(i32 1, i32 -25, %struct.gs_memory_s* %12) #5
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %13 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap4 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %13, i32 0, i32 0
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap4, align 8, !tbaa !13
  %procs5 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %14, i32 0, i32 1
  %alloc_byte_array6 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs5, i32 0, i32 10
  %15 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array6, align 8, !tbaa !31
  %16 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap7 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %16, i32 0, i32 0
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap7, align 8, !tbaa !13
  %18 = load i32, i32* %max_lib_paths.addr, align 4, !tbaa !19
  %call8 = call i8* %15(%struct.gs_memory_s* %17, i32 %18, i32 16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0)) #5
  %19 = bitcast i8* %call8 to %struct.ref_s*
  store %struct.ref_s* %19, %struct.ref_s** %array, align 8, !tbaa !1
  %20 = load %struct.ref_s*, %struct.ref_s** %array, align 8, !tbaa !1
  %cmp9 = icmp eq %struct.ref_s* %20, null
  br i1 %cmp9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end
  %21 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap11 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %21, i32 0, i32 0
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap11, align 8, !tbaa !13
  call void @gs_lib_finit(i32 1, i32 -25, %struct.gs_memory_s* %22) #5
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.end
  %23 = load %struct.ref_s*, %struct.ref_s** %array, align 8, !tbaa !1
  %24 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %lib_path = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %24, i32 0, i32 8
  %container = getelementptr inbounds %struct.gs_file_path_s, %struct.gs_file_path_s* %lib_path, i32 0, i32 0
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %container, i32 0, i32 1
  %refs = bitcast %union.v* %value to %struct.ref_s**
  store %struct.ref_s* %23, %struct.ref_s** %refs, align 8, !tbaa !1
  %25 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %lib_path13 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %25, i32 0, i32 8
  %container14 = getelementptr inbounds %struct.gs_file_path_s, %struct.gs_file_path_s* %lib_path13, i32 0, i32 0
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %container14, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 1024, i16* %type_attrs, align 2, !tbaa !32
  %26 = load i32, i32* %max_lib_paths.addr, align 4, !tbaa !19
  %27 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %lib_path15 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %27, i32 0, i32 8
  %container16 = getelementptr inbounds %struct.gs_file_path_s, %struct.gs_file_path_s* %lib_path15, i32 0, i32 0
  %tas17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %container16, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas17, i32 0, i32 2
  store i32 %26, i32* %rsize, align 4, !tbaa !33
  %28 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %lib_path18 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %28, i32 0, i32 8
  %container19 = getelementptr inbounds %struct.gs_file_path_s, %struct.gs_file_path_s* %lib_path18, i32 0, i32 0
  %value20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %container19, i32 0, i32 1
  %refs21 = bitcast %union.v* %value20 to %struct.ref_s**
  %29 = load %struct.ref_s*, %struct.ref_s** %refs21, align 8, !tbaa !1
  %30 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %lib_path22 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %30, i32 0, i32 8
  %list = getelementptr inbounds %struct.gs_file_path_s, %struct.gs_file_path_s* %lib_path22, i32 0, i32 1
  %value23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %list, i32 0, i32 1
  %refs24 = bitcast %union.v* %value23 to %struct.ref_s**
  store %struct.ref_s* %29, %struct.ref_s** %refs24, align 8, !tbaa !1
  %31 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %lib_path25 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %31, i32 0, i32 8
  %list26 = getelementptr inbounds %struct.gs_file_path_s, %struct.gs_file_path_s* %lib_path25, i32 0, i32 1
  %tas27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %list26, i32 0, i32 0
  %type_attrs28 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas27, i32 0, i32 0
  store i16 1120, i16* %type_attrs28, align 2, !tbaa !32
  %32 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %lib_path29 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %32, i32 0, i32 8
  %list30 = getelementptr inbounds %struct.gs_file_path_s, %struct.gs_file_path_s* %lib_path29, i32 0, i32 1
  %tas31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %list30, i32 0, i32 0
  %rsize32 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas31, i32 0, i32 2
  store i32 0, i32* %rsize32, align 4, !tbaa !33
  %33 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %lib_path33 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %33, i32 0, i32 8
  %env = getelementptr inbounds %struct.gs_file_path_s, %struct.gs_file_path_s* %lib_path33, i32 0, i32 2
  store i8* null, i8** %env, align 8, !tbaa !34
  %34 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %lib_path34 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %34, i32 0, i32 8
  %final = getelementptr inbounds %struct.gs_file_path_s, %struct.gs_file_path_s* %lib_path34, i32 0, i32 3
  store i8* null, i8** %final, align 8, !tbaa !35
  %35 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %lib_path35 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %35, i32 0, i32 8
  %count = getelementptr inbounds %struct.gs_file_path_s, %struct.gs_file_path_s* %lib_path35, i32 0, i32 4
  store i32 0, i32* %count, align 4, !tbaa !36
  %36 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %user_errors = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %36, i32 0, i32 5
  store i32 1, i32* %user_errors, align 4, !tbaa !37
  %37 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %init_done = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %37, i32 0, i32 4
  store i32 0, i32* %init_done, align 4, !tbaa !38
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.12, %if.then.10, %if.then
  %38 = bitcast %struct.ref_s** %array to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #1
  %39 = bitcast %struct.ref_s** %paths to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  %40 = load i32, i32* %retval
  ret i32 %40
}

declare void @gp_init() #3

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #2

declare void @gp_get_realtime(i64*) #3

declare void @gs_lib_finit(i32, i32, %struct.gs_memory_s*) #3

; Function Attrs: nounwind uwtable
define i32 @gs_main_init1(%struct.gs_main_instance_s* %minst) #0 {
entry:
  %retval = alloca i32, align 4
  %minst.addr = alloca %struct.gs_main_instance_s*, align 8
  %i_ctx_p = alloca %struct.gs_context_state_s*, align 8
  %idmem = alloca %struct.gs_dual_memory_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %mem = alloca %struct.gs_memory_s*, align 8
  %nt = alloca %struct.name_table_s*, align 8
  store %struct.gs_main_instance_s* %minst, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_context_state_s** %i_ctx_p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %init_done = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %1, i32 0, i32 4
  %2 = load i32, i32* %init_done, align 4, !tbaa !38
  %cmp = icmp slt i32 %2, 1
  br i1 %cmp, label %if.then, label %if.end.47

if.then:                                          ; preds = %entry
  %3 = bitcast %struct.gs_dual_memory_s* %idmem to i8*
  call void @llvm.lifetime.start(i64 72, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %5, i32 0, i32 0
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap, align 8, !tbaa !13
  %7 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %memory_chunk_size = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %7, i32 0, i32 1
  %8 = load i32, i32* %memory_chunk_size, align 4, !tbaa !39
  %call = call i32 @gs_have_level2() #5
  %call1 = call i32 @ialloc_init(%struct.gs_dual_memory_s* %idmem, %struct.gs_memory_s* %6, i32 %8, i32 %call) #5
  store i32 %call1, i32* %code, align 4, !tbaa !19
  %9 = load i32, i32* %code, align 4, !tbaa !19
  %cmp2 = icmp slt i32 %9, 0
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %10 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.43

if.end:                                           ; preds = %if.then
  %spaces = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %idmem, i32 0, i32 1
  %memories = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces, i32 0, i32 1
  %named = bitcast %union.anon.2* %memories to %struct._ssn*
  %system = getelementptr inbounds %struct._ssn, %struct._ssn* %named, i32 0, i32 1
  %11 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %system, align 8, !tbaa !40
  %12 = bitcast %struct.gs_ref_memory_s* %11 to %struct.gs_memory_s*
  %call4 = call i32 @gs_lib_init1(%struct.gs_memory_s* %12) #5
  store i32 %call4, i32* %code, align 4, !tbaa !19
  %13 = load i32, i32* %code, align 4, !tbaa !19
  %cmp5 = icmp slt i32 %13, 0
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  %14 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.43

if.end.7:                                         ; preds = %if.end
  call void @alloc_save_init(%struct.gs_dual_memory_s* %idmem) #5
  %15 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %spaces8 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %idmem, i32 0, i32 1
  %memories9 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces8, i32 0, i32 1
  %named10 = bitcast %union.anon.2* %memories9 to %struct._ssn*
  %system11 = getelementptr inbounds %struct._ssn, %struct._ssn* %named10, i32 0, i32 1
  %16 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %system11, align 8, !tbaa !40
  %17 = bitcast %struct.gs_ref_memory_s* %16 to %struct.gs_memory_s*
  store %struct.gs_memory_s* %17, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %18 = bitcast %struct.name_table_s** %nt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  %19 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %name_table_size = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %19, i32 0, i32 2
  %20 = load i64, i64* %name_table_size, align 8, !tbaa !42
  %spaces12 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %idmem, i32 0, i32 1
  %memories13 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces12, i32 0, i32 1
  %named14 = bitcast %union.anon.2* %memories13 to %struct._ssn*
  %system15 = getelementptr inbounds %struct._ssn, %struct._ssn* %named14, i32 0, i32 1
  %21 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %system15, align 8, !tbaa !40
  %call16 = call %struct.name_table_s* @names_init(i64 %20, %struct.gs_ref_memory_s* %21) #5
  store %struct.name_table_s* %call16, %struct.name_table_s** %nt, align 8, !tbaa !1
  %22 = load %struct.name_table_s*, %struct.name_table_s** %nt, align 8, !tbaa !1
  %cmp17 = icmp eq %struct.name_table_s* %22, null
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.7
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.19:                                        ; preds = %if.end.7
  %23 = load %struct.name_table_s*, %struct.name_table_s** %nt, align 8, !tbaa !1
  %24 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %24, i32 0, i32 2
  %25 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !5
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %25, i32 0, i32 16
  store %struct.name_table_s* %23, %struct.name_table_s** %gs_name_table, align 8, !tbaa !43
  %26 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %gs_lib_ctx20 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %27, i32 0, i32 2
  %28 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx20, align 8, !tbaa !5
  %gs_name_table21 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %28, i32 0, i32 16
  %29 = bitcast %struct.name_table_s** %gs_name_table21 to i8**
  %call22 = call i32 @gs_register_struct_root(%struct.gs_memory_s* %26, %struct.gs_gc_root_s* null, i8** %29, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0)) #5
  store i32 %call22, i32* %code, align 4, !tbaa !19
  %30 = load i32, i32* %code, align 4, !tbaa !19
  %cmp23 = icmp slt i32 %30, 0
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.19
  %31 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %31, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.25:                                        ; preds = %if.end.19
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.25, %if.then.24, %if.then.18
  %32 = bitcast %struct.name_table_s** %nt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  %33 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.43 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  %34 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %i_ctx_p27 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %34, i32 0, i32 14
  %call28 = call i32 @obj_init(%struct.gs_context_state_s** %i_ctx_p27, %struct.gs_dual_memory_s* %idmem) #5
  store i32 %call28, i32* %code, align 4, !tbaa !19
  %35 = load i32, i32* %code, align 4, !tbaa !19
  %cmp29 = icmp slt i32 %35, 0
  br i1 %cmp29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %cleanup.cont
  %36 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %36, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.43

if.end.31:                                        ; preds = %cleanup.cont
  %37 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %i_ctx_p32 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %37, i32 0, i32 14
  %38 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p32, align 8, !tbaa !20
  %call33 = call i32 @i_plugin_init(%struct.gs_context_state_s* %38) #5
  store i32 %call33, i32* %code, align 4, !tbaa !19
  %39 = load i32, i32* %code, align 4, !tbaa !19
  %cmp34 = icmp slt i32 %39, 0
  br i1 %cmp34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.end.31
  %40 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %40, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.43

if.end.36:                                        ; preds = %if.end.31
  %41 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %i_ctx_p37 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %41, i32 0, i32 14
  %42 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p37, align 8, !tbaa !20
  store %struct.gs_context_state_s* %42, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %43 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %43, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %44 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !44
  %45 = bitcast %struct.gs_ref_memory_s* %44 to %struct.gs_memory_s*
  %call38 = call i32 @gs_iodev_init(%struct.gs_memory_s* %45) #5
  store i32 %call38, i32* %code, align 4, !tbaa !19
  %46 = load i32, i32* %code, align 4, !tbaa !19
  %cmp39 = icmp slt i32 %46, 0
  br i1 %cmp39, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %if.end.36
  %47 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %47, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.43

if.end.41:                                        ; preds = %if.end.36
  %48 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %init_done42 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %48, i32 0, i32 4
  store i32 1, i32* %init_done42, align 4, !tbaa !38
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.43

cleanup.43:                                       ; preds = %if.end.41, %if.then.40, %if.then.35, %if.then.30, %cleanup, %if.then.6, %if.then.3
  %49 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #1
  %50 = bitcast %struct.gs_dual_memory_s* %idmem to i8*
  call void @llvm.lifetime.end(i64 72, i8* %50) #1
  %cleanup.dest.45 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.45, label %cleanup.48 [
    i32 0, label %cleanup.cont.46
  ]

cleanup.cont.46:                                  ; preds = %cleanup.43
  br label %if.end.47

if.end.47:                                        ; preds = %cleanup.cont.46, %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.48

cleanup.48:                                       ; preds = %if.end.47, %cleanup.43
  %51 = bitcast %struct.gs_context_state_s** %i_ctx_p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #1
  %52 = load i32, i32* %retval
  ret i32 %52
}

declare i32 @ialloc_init(%struct.gs_dual_memory_s*, %struct.gs_memory_s*, i32, i32) #3

declare i32 @gs_have_level2() #3

declare i32 @gs_lib_init1(%struct.gs_memory_s*) #3

declare void @alloc_save_init(%struct.gs_dual_memory_s*) #3

declare %struct.name_table_s* @names_init(i64, %struct.gs_ref_memory_s*) #3

declare i32 @gs_register_struct_root(%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8**, i8*) #3

declare i32 @obj_init(%struct.gs_context_state_s**, %struct.gs_dual_memory_s*) #3

declare i32 @i_plugin_init(%struct.gs_context_state_s*) #3

declare i32 @gs_iodev_init(%struct.gs_memory_s*) #3

; Function Attrs: nounwind uwtable
define i32 @gs_main_init2aux(%struct.gs_main_instance_s* %minst) #0 {
entry:
  %retval = alloca i32, align 4
  %minst.addr = alloca %struct.gs_main_instance_s*, align 8
  %i_ctx_p = alloca %struct.gs_context_state_s*, align 8
  %code = alloca i32, align 4
  %exit_code = alloca i32, align 4
  %error_object = alloca %struct.ref_s, align 8
  %ifa = alloca %struct.ref_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_main_instance_s* %minst, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_context_state_s** %i_ctx_p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %i_ctx_p1 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %1, i32 0, i32 14
  %2 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p1, align 8, !tbaa !20
  store %struct.gs_context_state_s* %2, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %3 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %init_done = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %3, i32 0, i32 4
  %4 = load i32, i32* %init_done, align 4, !tbaa !38
  %cmp = icmp slt i32 %4, 2
  br i1 %cmp, label %if.then, label %if.end.47

if.then:                                          ; preds = %entry
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %exit_code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast %struct.ref_s* %error_object to i8*
  call void @llvm.lifetime.start(i64 16, i8* %7) #1
  %8 = bitcast %struct.ref_s* %ifa to i8*
  call void @llvm.lifetime.start(i64 16, i8* %8) #1
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_array_table_global = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %9, i32 0, i32 19
  %10 = bitcast %struct.op_array_table_s* %op_array_table_global to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* bitcast (%struct.op_array_table_s* @empty_table to i8*), i64 40, i32 8, i1 false), !tbaa.struct !45
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_array_table_local = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %11, i32 0, i32 20
  %12 = bitcast %struct.op_array_table_s* %op_array_table_local to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* bitcast (%struct.op_array_table_s* @empty_table to i8*), i64 40, i32 8, i1 false), !tbaa.struct !45
  %13 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %call = call i32 @zop_init(%struct.gs_context_state_s* %13) #5
  store i32 %call, i32* %code, align 4, !tbaa !19
  %14 = load i32, i32* %code, align 4, !tbaa !19
  %cmp2 = icmp slt i32 %14, 0
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %15 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %16 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %call4 = call i32 @op_init(%struct.gs_context_state_s* %16) #5
  store i32 %call4, i32* %code, align 4, !tbaa !19
  %17 = load i32, i32* %code, align 4, !tbaa !19
  %cmp5 = icmp slt i32 %17, 0
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  %18 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %if.end
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %ifa, i32 0, i32 1
  %const_bytes = bitcast %union.v* %value to i8**
  store i8* getelementptr inbounds ([0 x i8], [0 x i8]* @gs_init_files, i32 0, i32 0), i8** %const_bytes, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %ifa, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 4704, i16* %type_attrs, align 2, !tbaa !32
  %19 = load i32, i32* @gs_init_files_sizeof, align 4, !tbaa !19
  %sub = sub i32 %19, 2
  %tas8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %ifa, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas8, i32 0, i32 2
  store i32 %sub, i32* %rsize, align 4, !tbaa !33
  %20 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %call9 = call i32 @i_initial_enter_name(%struct.gs_context_state_s* %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), %struct.ref_s* %ifa) #5
  store i32 %call9, i32* %code, align 4, !tbaa !19
  %21 = load i32, i32* %code, align 4, !tbaa !19
  %cmp10 = icmp slt i32 %21, 0
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.7
  %22 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %22, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.end.7
  %value13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %ifa, i32 0, i32 1
  %const_bytes14 = bitcast %union.v* %value13 to i8**
  store i8* getelementptr inbounds ([0 x i8], [0 x i8]* @gs_emulators, i32 0, i32 0), i8** %const_bytes14, align 8, !tbaa !1
  %tas15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %ifa, i32 0, i32 0
  %type_attrs16 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas15, i32 0, i32 0
  store i16 4704, i16* %type_attrs16, align 2, !tbaa !32
  %23 = load i32, i32* @gs_emulators_sizeof, align 4, !tbaa !19
  %sub17 = sub i32 %23, 2
  %tas18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %ifa, i32 0, i32 0
  %rsize19 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas18, i32 0, i32 2
  store i32 %sub17, i32* %rsize19, align 4, !tbaa !33
  %24 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %call20 = call i32 @i_initial_enter_name(%struct.gs_context_state_s* %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), %struct.ref_s* %ifa) #5
  store i32 %call20, i32* %code, align 4, !tbaa !19
  %25 = load i32, i32* %code, align 4, !tbaa !19
  %cmp21 = icmp slt i32 %25, 0
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.12
  %26 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %26, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.23:                                        ; preds = %if.end.12
  %27 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %28 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %lib_path = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %28, i32 0, i32 8
  %list = getelementptr inbounds %struct.gs_file_path_s, %struct.gs_file_path_s* %lib_path, i32 0, i32 1
  %call24 = call i32 @i_initial_enter_name(%struct.gs_context_state_s* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), %struct.ref_s* %list) #5
  store i32 %call24, i32* %code, align 4, !tbaa !19
  %29 = load i32, i32* %code, align 4, !tbaa !19
  %cmp25 = icmp slt i32 %29, 0
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.23
  %30 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %30, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.27:                                        ; preds = %if.end.23
  %31 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %call28 = call i32 @gs_run_init_file(%struct.gs_main_instance_s* %31, i32* %exit_code, %struct.ref_s* %error_object) #5
  store i32 %call28, i32* %code, align 4, !tbaa !19
  %32 = load i32, i32* %code, align 4, !tbaa !19
  %cmp29 = icmp slt i32 %32, 0
  br i1 %cmp29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end.27
  %33 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %33, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.31:                                        ; preds = %if.end.27
  %34 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %init_done32 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %34, i32 0, i32 4
  store i32 2, i32* %init_done32, align 4, !tbaa !38
  %35 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %display = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %35, i32 0, i32 13
  %36 = load %struct.display_callback_s*, %struct.display_callback_s** %display, align 8, !tbaa !50
  %tobool = icmp ne %struct.display_callback_s* %36, null
  br i1 %tobool, label %if.then.33, label %if.end.39

if.then.33:                                       ; preds = %if.end.31
  %37 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %38 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %display34 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %38, i32 0, i32 13
  %39 = load %struct.display_callback_s*, %struct.display_callback_s** %display34, align 8, !tbaa !50
  %call35 = call i32 @display_set_callback(%struct.gs_main_instance_s* %37, %struct.display_callback_s* %39) #5
  store i32 %call35, i32* %code, align 4, !tbaa !19
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.then.33
  %40 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %40, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.38:                                        ; preds = %if.then.33
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.end.31
  %41 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %call40 = call i32 @gs_main_run_string(%struct.gs_main_instance_s* %41, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.6, i32 0, i32 0), i32 0, i32* %exit_code, %struct.ref_s* %error_object) #5
  store i32 %call40, i32* %code, align 4, !tbaa !19
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.end.39
  %42 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %42, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.43:                                        ; preds = %if.end.39
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.43, %if.then.42, %if.then.37, %if.then.30, %if.then.26, %if.then.22, %if.then.11, %if.then.6, %if.then.3
  %43 = bitcast %struct.ref_s* %ifa to i8*
  call void @llvm.lifetime.end(i64 16, i8* %43) #1
  %44 = bitcast %struct.ref_s* %error_object to i8*
  call void @llvm.lifetime.end(i64 16, i8* %44) #1
  %45 = bitcast i32* %exit_code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #1
  %46 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.48 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.47

if.end.47:                                        ; preds = %cleanup.cont, %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.48

cleanup.48:                                       ; preds = %if.end.47, %cleanup
  %47 = bitcast %struct.gs_context_state_s** %i_ctx_p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #1
  %48 = load i32, i32* %retval
  ret i32 %48
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @zop_init(%struct.gs_context_state_s*) #3

declare i32 @op_init(%struct.gs_context_state_s*) #3

declare i32 @i_initial_enter_name(%struct.gs_context_state_s*, i8*, %struct.ref_s*) #3

; Function Attrs: nounwind uwtable
define internal i32 @gs_run_init_file(%struct.gs_main_instance_s* %minst, i32* %pexit_code, %struct.ref_s* %perror_object) #0 {
entry:
  %retval = alloca i32, align 4
  %minst.addr = alloca %struct.gs_main_instance_s*, align 8
  %pexit_code.addr = alloca i32*, align 8
  %perror_object.addr = alloca %struct.ref_s*, align 8
  %i_ctx_p = alloca %struct.gs_context_state_s*, align 8
  %ifile = alloca %struct.ref_s, align 8
  %first_token = alloca %struct.ref_s, align 8
  %code = alloca i32, align 4
  %state = alloca %struct.scanner_state_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_main_instance_s* %minst, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  store i32* %pexit_code, i32** %pexit_code.addr, align 8, !tbaa !1
  store %struct.ref_s* %perror_object, %struct.ref_s** %perror_object.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_context_state_s** %i_ctx_p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %i_ctx_p1 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %1, i32 0, i32 14
  %2 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p1, align 8, !tbaa !20
  store %struct.gs_context_state_s* %2, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %3 = bitcast %struct.ref_s* %ifile to i8*
  call void @llvm.lifetime.start(i64 16, i8* %3) #1
  %4 = bitcast %struct.ref_s* %first_token to i8*
  call void @llvm.lifetime.start(i64 16, i8* %4) #1
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast %struct.scanner_state_s* %state to i8*
  call void @llvm.lifetime.start(i64 1368, i8* %6) #1
  %7 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %call = call i32 @gs_main_set_lib_paths(%struct.gs_main_instance_s* %7) #5
  %8 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %9 = load i8*, i8** @gs_init_file, align 8, !tbaa !1
  %call2 = call i32 @gs_main_run_file_open(%struct.gs_main_instance_s* %8, i8* %9, %struct.ref_s* %ifile) #5
  store i32 %call2, i32* %code, align 4, !tbaa !19
  %10 = load i32, i32* %code, align 4, !tbaa !19
  %cmp = icmp slt i32 %10, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load i32*, i32** %pexit_code.addr, align 8, !tbaa !1
  store i32 255, i32* %11, align 4, !tbaa !19
  %12 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @gs_scanner_init_options(%struct.scanner_state_s* %state, %struct.ref_s* %ifile, i32 0) #5
  %13 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %call3 = call i32 @gs_scan_token(%struct.gs_context_state_s* %13, %struct.ref_s* %first_token, %struct.scanner_state_s* %state) #5
  store i32 %call3, i32* %code, align 4, !tbaa !19
  %14 = load i32, i32* %code, align 4, !tbaa !19
  %cmp4 = icmp ne i32 %14, 0
  br i1 %cmp4, label %if.then.7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %first_token, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %15 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 1
  %16 = load i8, i8* %arrayidx, align 1, !tbaa !30
  %conv = zext i8 %16 to i32
  %cmp5 = icmp eq i32 %conv, 11
  br i1 %cmp5, label %if.end.12, label %if.then.7

if.then.7:                                        ; preds = %lor.lhs.false, %if.end
  %17 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %17, i32 0, i32 0
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap, align 8, !tbaa !13
  %call8 = call i8* @gs_program_name() #5
  %call9 = call i64 @gs_revision_number() #5
  call void @emprintf_program_ident(%struct.gs_memory_s* %18, i8* %call8, i64 %call9) #5
  %19 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap10 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %19, i32 0, i32 0
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap10, align 8, !tbaa !13
  %21 = load i8*, i8** @gs_init_file, align 8, !tbaa !1
  %call11 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %20, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.34, i32 0, i32 0), i8* %21) #5
  %22 = load i32*, i32** %pexit_code.addr, align 8, !tbaa !1
  store i32 255, i32* %22, align 4, !tbaa !19
  store i32 -100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %lor.lhs.false
  %23 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %23, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %24 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !51
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %p, align 8, !tbaa !51
  %25 = bitcast %struct.ref_s* %incdec.ptr to i8*
  %26 = bitcast %struct.ref_s* %first_token to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 16, i32 8, i1 false), !tbaa.struct !52
  %tas13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %ifile, i32 0, i32 0
  %type_attrs14 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas13, i32 0, i32 0
  %27 = load i16, i16* %type_attrs14, align 2, !tbaa !32
  %conv15 = zext i16 %27 to i32
  %or = or i32 %conv15, 128
  %conv16 = trunc i32 %or to i16
  store i16 %conv16, i16* %type_attrs14, align 2, !tbaa !32
  %28 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %29 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %user_errors = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %29, i32 0, i32 5
  %30 = load i32, i32* %user_errors, align 4, !tbaa !37
  %31 = load i32*, i32** %pexit_code.addr, align 8, !tbaa !1
  %32 = load %struct.ref_s*, %struct.ref_s** %perror_object.addr, align 8, !tbaa !1
  %call17 = call i32 @gs_main_interpret(%struct.gs_main_instance_s* %28, %struct.ref_s* %ifile, i32 %30, i32* %31, %struct.ref_s* %32) #5
  store i32 %call17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.12, %if.then.7, %if.then
  %33 = bitcast %struct.scanner_state_s* %state to i8*
  call void @llvm.lifetime.end(i64 1368, i8* %33) #1
  %34 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  %35 = bitcast %struct.ref_s* %first_token to i8*
  call void @llvm.lifetime.end(i64 16, i8* %35) #1
  %36 = bitcast %struct.ref_s* %ifile to i8*
  call void @llvm.lifetime.end(i64 16, i8* %36) #1
  %37 = bitcast %struct.gs_context_state_s** %i_ctx_p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  %38 = load i32, i32* %retval
  ret i32 %38
}

declare i32 @display_set_callback(%struct.gs_main_instance_s*, %struct.display_callback_s*) #3

; Function Attrs: nounwind uwtable
define i32 @gs_main_run_string(%struct.gs_main_instance_s* %minst, i8* %str, i32 %user_errors, i32* %pexit_code, %struct.ref_s* %perror_object) #0 {
entry:
  %minst.addr = alloca %struct.gs_main_instance_s*, align 8
  %str.addr = alloca i8*, align 8
  %user_errors.addr = alloca i32, align 4
  %pexit_code.addr = alloca i32*, align 8
  %perror_object.addr = alloca %struct.ref_s*, align 8
  store %struct.gs_main_instance_s* %minst, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  store i8* %str, i8** %str.addr, align 8, !tbaa !1
  store i32 %user_errors, i32* %user_errors.addr, align 4, !tbaa !19
  store i32* %pexit_code, i32** %pexit_code.addr, align 8, !tbaa !1
  store %struct.ref_s* %perror_object, %struct.ref_s** %perror_object.addr, align 8, !tbaa !1
  %0 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %1 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %2) #7
  %conv = trunc i64 %call to i32
  %3 = load i32, i32* %user_errors.addr, align 4, !tbaa !19
  %4 = load i32*, i32** %pexit_code.addr, align 8, !tbaa !1
  %5 = load %struct.ref_s*, %struct.ref_s** %perror_object.addr, align 8, !tbaa !1
  %call1 = call i32 @gs_main_run_string_with_length(%struct.gs_main_instance_s* %0, i8* %1, i32 %conv, i32 %3, i32* %4, %struct.ref_s* %5) #5
  ret i32 %call1
}

; Function Attrs: nounwind uwtable
define i32 @gs_main_init2(%struct.gs_main_instance_s* %minst) #0 {
entry:
  %retval = alloca i32, align 4
  %minst.addr = alloca %struct.gs_main_instance_s*, align 8
  %i_ctx_p = alloca %struct.gs_context_state_s*, align 8
  %code = alloca i32, align 4
  %initial_init_level = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %pdev = alloca %struct.gx_device_s*, align 8
  %ppdev = alloca %struct.gx_device_printer_s*, align 8
  store %struct.gs_main_instance_s* %minst, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_context_state_s** %i_ctx_p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %call = call i32 @gs_main_init1(%struct.gs_main_instance_s* %2) #5
  store i32 %call, i32* %code, align 4, !tbaa !19
  %3 = bitcast i32* %initial_init_level to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %init_done = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %4, i32 0, i32 4
  %5 = load i32, i32* %init_done, align 4, !tbaa !38
  store i32 %5, i32* %initial_init_level, align 4, !tbaa !19
  %6 = load i32, i32* %code, align 4, !tbaa !19
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.65

if.end:                                           ; preds = %entry
  %8 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %i_ctx_p1 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %8, i32 0, i32 14
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p1, align 8, !tbaa !20
  store %struct.gs_context_state_s* %9, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %10 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %call2 = call i32 @gs_main_init2aux(%struct.gs_main_instance_s* %10) #5
  store i32 %call2, i32* %code, align 4, !tbaa !19
  %11 = load i32, i32* %code, align 4, !tbaa !19
  %cmp3 = icmp slt i32 %11, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %12 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.65

if.end.5:                                         ; preds = %if.end
  %13 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %i_ctx_p6 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %13, i32 0, i32 14
  %14 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p6, align 8, !tbaa !20
  store %struct.gs_context_state_s* %14, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %15 = load i32, i32* %initial_init_level, align 4, !tbaa !19
  %cmp7 = icmp slt i32 %15, 2
  br i1 %cmp7, label %if.then.8, label %if.end.58

if.then.8:                                        ; preds = %if.end.5
  %16 = bitcast %struct.gx_device_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %i_ctx_p9 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %17, i32 0, i32 14
  %18 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p9, align 8, !tbaa !20
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %18, i32 0, i32 0
  %19 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !53
  %call10 = call %struct.gx_device_s* @gs_currentdevice(%struct.gs_state_s* %19) #5
  store %struct.gx_device_s* %call10, %struct.gx_device_s** %pdev, align 8, !tbaa !1
  %20 = bitcast %struct.gx_device_printer_s** %ppdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  %21 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev, align 8, !tbaa !1
  %22 = bitcast %struct.gx_device_s* %21 to %struct.gx_device_printer_s*
  store %struct.gx_device_printer_s* %22, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %23 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %saved_pages_test_mode = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %23, i32 0, i32 16
  %24 = load i32, i32* %saved_pages_test_mode, align 4, !tbaa !54
  %tobool = icmp ne i32 %24, 0
  br i1 %tobool, label %if.then.11, label %if.else.30

if.then.11:                                       ; preds = %if.then.8
  %25 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %25, i32 0, i32 42
  %dev_spec_op = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 65
  %26 = load i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)** %dev_spec_op, align 8, !tbaa !55
  %27 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev, align 8, !tbaa !1
  %call12 = call i32 %26(%struct.gx_device_s* %27, i32 16, i8* null, i32 0) #5
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.then.11
  %28 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %saved_pages_test_mode15 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %28, i32 0, i32 16
  store i32 0, i32* %saved_pages_test_mode15, align 4, !tbaa !54
  br label %if.end.29

if.else:                                          ; preds = %if.then.11
  %29 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %call16 = call i32 @gx_saved_pages_param_process(%struct.gx_device_printer_s* %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i32 5) #5
  store i32 %call16, i32* %code, align 4, !tbaa !19
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.else
  %30 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %30, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.19:                                        ; preds = %if.else
  %31 = load i32, i32* %code, align 4, !tbaa !19
  %cmp20 = icmp sgt i32 %31, 0
  br i1 %cmp20, label %if.then.21, label %if.end.28

if.then.21:                                       ; preds = %if.end.19
  %32 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %i_ctx_p22 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %32, i32 0, i32 14
  %33 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p22, align 8, !tbaa !20
  %pgs23 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %33, i32 0, i32 0
  %34 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs23, align 8, !tbaa !53
  %call24 = call i32 @gs_erasepage(%struct.gs_state_s* %34) #5
  store i32 %call24, i32* %code, align 4, !tbaa !19
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.then.21
  %35 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %35, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.27:                                        ; preds = %if.then.21
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.end.19
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.then.14
  br label %if.end.56

if.else.30:                                       ; preds = %if.then.8
  %36 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %saved_pages_initial_arg = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %36, i32 0, i32 15
  %37 = load i8*, i8** %saved_pages_initial_arg, align 8, !tbaa !66
  %cmp31 = icmp ne i8* %37, null
  br i1 %cmp31, label %if.then.32, label %if.end.55

if.then.32:                                       ; preds = %if.else.30
  %38 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev, align 8, !tbaa !1
  %procs33 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %38, i32 0, i32 42
  %dev_spec_op34 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs33, i32 0, i32 65
  %39 = load i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)** %dev_spec_op34, align 8, !tbaa !55
  %40 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev, align 8, !tbaa !1
  %call35 = call i32 %39(%struct.gx_device_s* %40, i32 16, i8* null, i32 0) #5
  %cmp36 = icmp eq i32 %call35, 0
  br i1 %cmp36, label %if.then.37, label %if.end.39

if.then.37:                                       ; preds = %if.then.32
  %41 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %41, i32 0, i32 0
  %42 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap, align 8, !tbaa !13
  %43 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev, align 8, !tbaa !1
  %dname = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %43, i32 0, i32 2
  %44 = load i8*, i8** %dname, align 8, !tbaa !67
  %call38 = call i32 (%struct.gs_memory_s*, i8*, ...) @outprintf(%struct.gs_memory_s* %42, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.8, i32 0, i32 0), i8* %44) #5
  store i32 -100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.39:                                        ; preds = %if.then.32
  %45 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %46 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %saved_pages_initial_arg40 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %46, i32 0, i32 15
  %47 = load i8*, i8** %saved_pages_initial_arg40, align 8, !tbaa !66
  %48 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %saved_pages_initial_arg41 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %48, i32 0, i32 15
  %49 = load i8*, i8** %saved_pages_initial_arg41, align 8, !tbaa !66
  %call42 = call i64 @strlen(i8* %49) #7
  %conv = trunc i64 %call42 to i32
  %call43 = call i32 @gx_saved_pages_param_process(%struct.gx_device_printer_s* %45, i8* %47, i32 %conv) #5
  store i32 %call43, i32* %code, align 4, !tbaa !19
  %50 = load i32, i32* %code, align 4, !tbaa !19
  %cmp44 = icmp sgt i32 %50, 0
  br i1 %cmp44, label %if.then.46, label %if.end.54

if.then.46:                                       ; preds = %if.end.39
  %51 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %i_ctx_p47 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %51, i32 0, i32 14
  %52 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p47, align 8, !tbaa !20
  %pgs48 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %52, i32 0, i32 0
  %53 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs48, align 8, !tbaa !53
  %call49 = call i32 @gs_erasepage(%struct.gs_state_s* %53) #5
  store i32 %call49, i32* %code, align 4, !tbaa !19
  %cmp50 = icmp slt i32 %call49, 0
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.then.46
  %54 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %54, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.53:                                        ; preds = %if.then.46
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %if.end.39
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %if.else.30
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %if.end.29
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.56, %if.then.52, %if.then.37, %if.then.26, %if.then.18
  %55 = bitcast %struct.gx_device_printer_s** %ppdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #1
  %56 = bitcast %struct.gx_device_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.65 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.58

if.end.58:                                        ; preds = %cleanup.cont, %if.end.5
  %call59 = call i32 @gs_debug_c(i32 58) #5
  %tobool60 = icmp ne i32 %call59, 0
  br i1 %tobool60, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %if.end.58
  %57 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %58 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %58, i32 0, i32 1
  call void @print_resource_usage(%struct.gs_main_instance_s* %57, %struct.gs_dual_memory_s* %memory, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0)) #5
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.61, %if.end.58
  %59 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %readline_data = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %59, i32 0, i32 10
  %60 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %memory63 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %60, i32 0, i32 1
  %spaces = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory63, i32 0, i32 1
  %memories = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces, i32 0, i32 1
  %named = bitcast %union.anon.2* %memories to %struct._ssn*
  %system = getelementptr inbounds %struct._ssn, %struct._ssn* %named, i32 0, i32 1
  %61 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %system, align 8, !tbaa !40
  %62 = bitcast %struct.gs_ref_memory_s* %61 to %struct.gs_memory_s*
  %call64 = call i32 @gp_readline_init(i8** %readline_data, %struct.gs_memory_s* %62) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.65

cleanup.65:                                       ; preds = %if.end.62, %cleanup, %if.then.4, %if.then
  %63 = bitcast i32* %initial_init_level to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #1
  %64 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #1
  %65 = bitcast %struct.gs_context_state_s** %i_ctx_p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #1
  %66 = load i32, i32* %retval
  ret i32 %66
}

declare %struct.gx_device_s* @gs_currentdevice(%struct.gs_state_s*) #3

declare i32 @gx_saved_pages_param_process(%struct.gx_device_printer_s*, i8*, i32) #3

declare i32 @gs_erasepage(%struct.gs_state_s*) #3

declare i32 @outprintf(%struct.gs_memory_s*, i8*, ...) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare i32 @gs_debug_c(i32) #3

; Function Attrs: nounwind uwtable
define void @print_resource_usage(%struct.gs_main_instance_s* %minst, %struct.gs_dual_memory_s* %dmem, i8* %msg) #0 {
entry:
  %minst.addr = alloca %struct.gs_main_instance_s*, align 8
  %dmem.addr = alloca %struct.gs_dual_memory_s*, align 8
  %msg.addr = alloca i8*, align 8
  %allocated = alloca i64, align 8
  %used = alloca i64, align 8
  %utime = alloca [2 x i64], align 16
  %i = alloca i32, align 4
  %mem = alloca %struct.gs_ref_memory_s*, align 8
  %status = alloca %struct.gs_memory_status_s, align 8
  %mem_stable = alloca %struct.gs_ref_memory_s*, align 8
  store %struct.gs_main_instance_s* %minst, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  store %struct.gs_dual_memory_s* %dmem, %struct.gs_dual_memory_s** %dmem.addr, align 8, !tbaa !1
  store i8* %msg, i8** %msg.addr, align 8, !tbaa !1
  %0 = bitcast i64* %allocated to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store i64 0, i64* %allocated, align 8, !tbaa !47
  %1 = bitcast i64* %used to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store i64 0, i64* %used, align 8, !tbaa !47
  %2 = bitcast [2 x i64]* %utime to i8*
  call void @llvm.lifetime.start(i64 16, i8* %2) #1
  %arraydecay = getelementptr inbounds [2 x i64], [2 x i64]* %utime, i32 0, i32 0
  call void @gp_get_realtime(i64* %arraydecay) #5
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4, !tbaa !19
  %conv = sext i32 %4 to i64
  %cmp = icmp ult i64 %conv, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = bitcast %struct.gs_ref_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.gs_dual_memory_s*, %struct.gs_dual_memory_s** %dmem.addr, align 8, !tbaa !1
  %spaces = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %7, i32 0, i32 1
  %memories = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces, i32 0, i32 1
  %indexed = bitcast %union.anon.2* %memories to [4 x %struct.gs_ref_memory_s*]*
  %arrayidx = getelementptr inbounds [4 x %struct.gs_ref_memory_s*], [4 x %struct.gs_ref_memory_s*]* %indexed, i32 0, i64 %idxprom
  %8 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %arrayidx, align 8, !tbaa !1
  store %struct.gs_ref_memory_s* %8, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %9 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %cmp2 = icmp ne %struct.gs_ref_memory_s* %9, null
  br i1 %cmp2, label %land.lhs.true, label %if.end.27

land.lhs.true:                                    ; preds = %for.body
  %10 = load i32, i32* %i, align 4, !tbaa !19
  %cmp4 = icmp eq i32 %10, 0
  br i1 %cmp4, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %11 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %12 = load i32, i32* %i, align 4, !tbaa !19
  %sub = sub nsw i32 %12, 1
  %idxprom6 = sext i32 %sub to i64
  %13 = load %struct.gs_dual_memory_s*, %struct.gs_dual_memory_s** %dmem.addr, align 8, !tbaa !1
  %spaces7 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %13, i32 0, i32 1
  %memories8 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces7, i32 0, i32 1
  %indexed9 = bitcast %union.anon.2* %memories8 to [4 x %struct.gs_ref_memory_s*]*
  %arrayidx10 = getelementptr inbounds [4 x %struct.gs_ref_memory_s*], [4 x %struct.gs_ref_memory_s*]* %indexed9, i32 0, i64 %idxprom6
  %14 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %arrayidx10, align 8, !tbaa !1
  %cmp11 = icmp ne %struct.gs_ref_memory_s* %11, %14
  br i1 %cmp11, label %if.then, label %if.end.27

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %15 = bitcast %struct.gs_memory_status_s* %status to i8*
  call void @llvm.lifetime.start(i64 24, i8* %15) #1
  %16 = bitcast %struct.gs_ref_memory_s** %mem_stable to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %18 = bitcast %struct.gs_ref_memory_s* %17 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %18, i32 0, i32 1
  %stable = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 3
  %19 = load %struct.gs_memory_s* (%struct.gs_memory_s*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)** %stable, align 8, !tbaa !68
  %20 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %21 = bitcast %struct.gs_ref_memory_s* %20 to %struct.gs_memory_s*
  %call = call %struct.gs_memory_s* %19(%struct.gs_memory_s* %21) #5
  %22 = bitcast %struct.gs_memory_s* %call to %struct.gs_ref_memory_s*
  store %struct.gs_ref_memory_s* %22, %struct.gs_ref_memory_s** %mem_stable, align 8, !tbaa !1
  %23 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %24 = bitcast %struct.gs_ref_memory_s* %23 to %struct.gs_memory_s*
  %procs13 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %24, i32 0, i32 1
  %status14 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs13, i32 0, i32 4
  %25 = load void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)*, void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)** %status14, align 8, !tbaa !69
  %26 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %27 = bitcast %struct.gs_ref_memory_s* %26 to %struct.gs_memory_s*
  call void %25(%struct.gs_memory_s* %27, %struct.gs_memory_status_s* %status) #5
  %allocated15 = getelementptr inbounds %struct.gs_memory_status_s, %struct.gs_memory_status_s* %status, i32 0, i32 0
  %28 = load i64, i64* %allocated15, align 8, !tbaa !70
  %29 = load i64, i64* %allocated, align 8, !tbaa !47
  %add = add i64 %29, %28
  store i64 %add, i64* %allocated, align 8, !tbaa !47
  %used16 = getelementptr inbounds %struct.gs_memory_status_s, %struct.gs_memory_status_s* %status, i32 0, i32 1
  %30 = load i64, i64* %used16, align 8, !tbaa !72
  %31 = load i64, i64* %used, align 8, !tbaa !47
  %add17 = add i64 %31, %30
  store i64 %add17, i64* %used, align 8, !tbaa !47
  %32 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem_stable, align 8, !tbaa !1
  %33 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %cmp18 = icmp ne %struct.gs_ref_memory_s* %32, %33
  br i1 %cmp18, label %if.then.20, label %if.end

if.then.20:                                       ; preds = %if.then
  %34 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem_stable, align 8, !tbaa !1
  %35 = bitcast %struct.gs_ref_memory_s* %34 to %struct.gs_memory_s*
  %procs21 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %35, i32 0, i32 1
  %status22 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs21, i32 0, i32 4
  %36 = load void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)*, void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)** %status22, align 8, !tbaa !69
  %37 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem_stable, align 8, !tbaa !1
  %38 = bitcast %struct.gs_ref_memory_s* %37 to %struct.gs_memory_s*
  call void %36(%struct.gs_memory_s* %38, %struct.gs_memory_status_s* %status) #5
  %allocated23 = getelementptr inbounds %struct.gs_memory_status_s, %struct.gs_memory_status_s* %status, i32 0, i32 0
  %39 = load i64, i64* %allocated23, align 8, !tbaa !70
  %40 = load i64, i64* %allocated, align 8, !tbaa !47
  %add24 = add i64 %40, %39
  store i64 %add24, i64* %allocated, align 8, !tbaa !47
  %used25 = getelementptr inbounds %struct.gs_memory_status_s, %struct.gs_memory_status_s* %status, i32 0, i32 1
  %41 = load i64, i64* %used25, align 8, !tbaa !72
  %42 = load i64, i64* %used, align 8, !tbaa !47
  %add26 = add i64 %42, %41
  store i64 %add26, i64* %used, align 8, !tbaa !47
  br label %if.end

if.end:                                           ; preds = %if.then.20, %if.then
  %43 = bitcast %struct.gs_ref_memory_s** %mem_stable to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #1
  %44 = bitcast %struct.gs_memory_status_s* %status to i8*
  call void @llvm.lifetime.end(i64 24, i8* %44) #1
  br label %if.end.27

if.end.27:                                        ; preds = %if.end, %lor.lhs.false, %for.body
  %45 = bitcast %struct.gs_ref_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #1
  br label %for.inc

for.inc:                                          ; preds = %if.end.27
  %46 = load i32, i32* %i, align 4, !tbaa !19
  %inc = add nsw i32 %46, 1
  store i32 %inc, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %47 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #1
  %48 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %48, i32 0, i32 0
  %49 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap, align 8, !tbaa !13
  %50 = load i8*, i8** %msg.addr, align 8, !tbaa !1
  %arrayidx28 = getelementptr inbounds [2 x i64], [2 x i64]* %utime, i32 0, i64 0
  %51 = load i64, i64* %arrayidx28, align 8, !tbaa !47
  %52 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %base_time = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %52, i32 0, i32 9
  %arrayidx29 = getelementptr inbounds [2 x i64], [2 x i64]* %base_time, i32 0, i64 0
  %53 = load i64, i64* %arrayidx29, align 8, !tbaa !47
  %sub30 = sub nsw i64 %51, %53
  %conv31 = sitofp i64 %sub30 to double
  %arrayidx32 = getelementptr inbounds [2 x i64], [2 x i64]* %utime, i32 0, i64 1
  %54 = load i64, i64* %arrayidx32, align 8, !tbaa !47
  %55 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %base_time33 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %55, i32 0, i32 9
  %arrayidx34 = getelementptr inbounds [2 x i64], [2 x i64]* %base_time33, i32 0, i64 1
  %56 = load i64, i64* %arrayidx34, align 8, !tbaa !47
  %sub35 = sub nsw i64 %54, %56
  %conv36 = sitofp i64 %sub35 to double
  %div = fdiv double %conv36, 1.000000e+09
  %add37 = fadd double %conv31, %div
  %57 = load i64, i64* %allocated, align 8, !tbaa !47
  %58 = load i64, i64* %used, align 8, !tbaa !47
  %call38 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %49, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.23, i32 0, i32 0), i8* %50, double %add37, i64 %57, i64 %58) #5
  %59 = bitcast [2 x i64]* %utime to i8*
  call void @llvm.lifetime.end(i64 16, i8* %59) #1
  %60 = bitcast i64* %used to i8*
  call void @llvm.lifetime.end(i64 8, i8* %60) #1
  %61 = bitcast i64* %allocated to i8*
  call void @llvm.lifetime.end(i64 8, i8* %61) #1
  ret void
}

declare i32 @gp_readline_init(i8**, %struct.gs_memory_s*) #3

; Function Attrs: nounwind uwtable
define i32 @gs_main_add_lib_path(%struct.gs_main_instance_s* %minst, i8* %lpath) #0 {
entry:
  %retval = alloca i32, align 4
  %minst.addr = alloca %struct.gs_main_instance_s*, align 8
  %lpath.addr = alloca i8*, align 8
  %first_is_here = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_main_instance_s* %minst, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  store i8* %lpath, i8** %lpath.addr, align 8, !tbaa !1
  %0 = bitcast i32* %first_is_here to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %lib_path = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %1, i32 0, i32 8
  %list = getelementptr inbounds %struct.gs_file_path_s, %struct.gs_file_path_s* %lib_path, i32 0, i32 1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %list, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 2
  %2 = load i32, i32* %rsize, align 4, !tbaa !33
  %cmp = icmp ne i32 %2, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %3 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %lib_path1 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %3, i32 0, i32 8
  %container = getelementptr inbounds %struct.gs_file_path_s, %struct.gs_file_path_s* %lib_path1, i32 0, i32 0
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %container, i32 0, i32 1
  %refs = bitcast %union.v* %value to %struct.ref_s**
  %4 = load %struct.ref_s*, %struct.ref_s** %refs, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i64 0
  %value2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 1
  %bytes = bitcast %union.v* %value2 to i8**
  %5 = load i8*, i8** %bytes, align 8, !tbaa !1
  %cmp3 = icmp eq i8* %5, getelementptr inbounds ([0 x i8], [0 x i8]* @gp_current_directory_name, i32 0, i32 0)
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %6 = phi i1 [ false, %entry ], [ %cmp3, %land.rhs ]
  %cond = select i1 %6, i32 1, i32 0
  store i32 %cond, i32* %first_is_here, align 4, !tbaa !19
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %lib_path4 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %8, i32 0, i32 8
  %count = getelementptr inbounds %struct.gs_file_path_s, %struct.gs_file_path_s* %lib_path4, i32 0, i32 4
  %9 = load i32, i32* %count, align 4, !tbaa !36
  %10 = load i32, i32* %first_is_here, align 4, !tbaa !19
  %add = add i32 %9, %10
  %11 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %lib_path5 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %11, i32 0, i32 8
  %list6 = getelementptr inbounds %struct.gs_file_path_s, %struct.gs_file_path_s* %lib_path5, i32 0, i32 1
  %tas7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %list6, i32 0, i32 0
  %rsize8 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas7, i32 0, i32 2
  store i32 %add, i32* %rsize8, align 4, !tbaa !33
  %12 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %13 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %lib_path9 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %13, i32 0, i32 8
  %14 = load i8*, i8** %lpath.addr, align 8, !tbaa !1
  %call = call i32 @file_path_add(%struct.gs_main_instance_s* %12, %struct.gs_file_path_s* %lib_path9, i8* %14) #5
  store i32 %call, i32* %code, align 4, !tbaa !19
  %15 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %lib_path10 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %15, i32 0, i32 8
  %list11 = getelementptr inbounds %struct.gs_file_path_s, %struct.gs_file_path_s* %lib_path10, i32 0, i32 1
  %tas12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %list11, i32 0, i32 0
  %rsize13 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas12, i32 0, i32 2
  %16 = load i32, i32* %rsize13, align 4, !tbaa !33
  %17 = load i32, i32* %first_is_here, align 4, !tbaa !19
  %sub = sub i32 %16, %17
  %18 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %lib_path14 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %18, i32 0, i32 8
  %count15 = getelementptr inbounds %struct.gs_file_path_s, %struct.gs_file_path_s* %lib_path14, i32 0, i32 4
  store i32 %sub, i32* %count15, align 4, !tbaa !36
  %19 = load i32, i32* %code, align 4, !tbaa !19
  %cmp16 = icmp slt i32 %19, 0
  br i1 %cmp16, label %if.then, label %if.end

if.then:                                          ; preds = %land.end
  %20 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.end
  %21 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %call17 = call i32 @gs_main_set_lib_paths(%struct.gs_main_instance_s* %21) #5
  store i32 %call17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %22 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #1
  %23 = bitcast i32* %first_is_here to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #1
  %24 = load i32, i32* %retval
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define internal i32 @file_path_add(%struct.gs_main_instance_s* %minst, %struct.gs_file_path_s* %pfp, i8* %dirs) #0 {
entry:
  %retval = alloca i32, align 4
  %minst.addr = alloca %struct.gs_main_instance_s*, align 8
  %pfp.addr = alloca %struct.gs_file_path_s*, align 8
  %dirs.addr = alloca i8*, align 8
  %len = alloca i32, align 4
  %dpath = alloca i8*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %npath = alloca i8*, align 8
  store %struct.gs_main_instance_s* %minst, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  store %struct.gs_file_path_s* %pfp, %struct.gs_file_path_s** %pfp.addr, align 8, !tbaa !1
  store i8* %dirs, i8** %dirs.addr, align 8, !tbaa !1
  %0 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_file_path_s*, %struct.gs_file_path_s** %pfp.addr, align 8, !tbaa !1
  %list = getelementptr inbounds %struct.gs_file_path_s, %struct.gs_file_path_s* %1, i32 0, i32 1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %list, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 2
  %2 = load i32, i32* %rsize, align 4, !tbaa !33
  store i32 %2, i32* %len, align 4, !tbaa !19
  %3 = bitcast i8** %dpath to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load i8*, i8** %dirs.addr, align 8, !tbaa !1
  store i8* %4, i8** %dpath, align 8, !tbaa !1
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load i8*, i8** %dirs.addr, align 8, !tbaa !1
  %cmp = icmp eq i8* %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.46

if.end:                                           ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %cleanup.cont, %if.end
  %7 = bitcast i8** %npath to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load i8*, i8** %dpath, align 8, !tbaa !1
  store i8* %8, i8** %npath, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.cond
  %9 = load i8*, i8** %npath, align 8, !tbaa !1
  %10 = load i8, i8* %9, align 1, !tbaa !30
  %conv = sext i8 %10 to i32
  %cmp1 = icmp ne i32 %conv, 0
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %11 = load i8*, i8** %npath, align 8, !tbaa !1
  %12 = load i8, i8* %11, align 1, !tbaa !30
  %conv3 = sext i8 %12 to i32
  %13 = load i8, i8* @gp_file_name_list_separator, align 1, !tbaa !30
  %conv4 = sext i8 %13 to i32
  %cmp5 = icmp ne i32 %conv3, %conv4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %14 = phi i1 [ false, %while.cond ], [ %cmp5, %land.rhs ]
  br i1 %14, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %15 = load i8*, i8** %npath, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr, i8** %npath, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %land.end
  %16 = load i8*, i8** %npath, align 8, !tbaa !1
  %17 = load i8*, i8** %dpath, align 8, !tbaa !1
  %cmp7 = icmp ugt i8* %16, %17
  br i1 %cmp7, label %if.then.9, label %if.end.40

if.then.9:                                        ; preds = %while.end
  %18 = load i32, i32* %len, align 4, !tbaa !19
  %19 = load %struct.gs_file_path_s*, %struct.gs_file_path_s** %pfp.addr, align 8, !tbaa !1
  %container = getelementptr inbounds %struct.gs_file_path_s, %struct.gs_file_path_s* %19, i32 0, i32 0
  %tas10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %container, i32 0, i32 0
  %rsize11 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas10, i32 0, i32 2
  %20 = load i32, i32* %rsize11, align 4, !tbaa !33
  %cmp12 = icmp eq i32 %18, %20
  br i1 %cmp12, label %if.then.14, label %if.end.23

if.then.14:                                       ; preds = %if.then.9
  %21 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %22 = load %struct.gs_file_path_s*, %struct.gs_file_path_s** %pfp.addr, align 8, !tbaa !1
  %call = call i32 @extend_path_list_container(%struct.gs_main_instance_s* %21, %struct.gs_file_path_s* %22) #5
  store i32 %call, i32* %code, align 4, !tbaa !19
  %23 = load i32, i32* %code, align 4, !tbaa !19
  %cmp15 = icmp slt i32 %23, 0
  br i1 %cmp15, label %if.then.17, label %if.end.22

if.then.17:                                       ; preds = %if.then.14
  %24 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %24, i32 0, i32 0
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap, align 8, !tbaa !13
  %call18 = call i8* @gs_program_name() #5
  %call19 = call i64 @gs_revision_number() #5
  call void @emprintf_program_ident(%struct.gs_memory_s* %25, i8* %call18, i64 %call19) #5
  %26 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap20 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %26, i32 0, i32 0
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap20, align 8, !tbaa !13
  %call21 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %27, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.31, i32 0, i32 0)) #5
  %28 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.22:                                        ; preds = %if.then.14
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.then.9
  %29 = load i8*, i8** %dpath, align 8, !tbaa !1
  %30 = load i32, i32* %len, align 4, !tbaa !19
  %idxprom = zext i32 %30 to i64
  %31 = load %struct.gs_file_path_s*, %struct.gs_file_path_s** %pfp.addr, align 8, !tbaa !1
  %container24 = getelementptr inbounds %struct.gs_file_path_s, %struct.gs_file_path_s* %31, i32 0, i32 0
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %container24, i32 0, i32 1
  %refs = bitcast %union.v* %value to %struct.ref_s**
  %32 = load %struct.ref_s*, %struct.ref_s** %refs, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i64 %idxprom
  %value25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 1
  %const_bytes = bitcast %union.v* %value25 to i8**
  store i8* %29, i8** %const_bytes, align 8, !tbaa !1
  %33 = load i32, i32* %len, align 4, !tbaa !19
  %idxprom26 = zext i32 %33 to i64
  %34 = load %struct.gs_file_path_s*, %struct.gs_file_path_s** %pfp.addr, align 8, !tbaa !1
  %container27 = getelementptr inbounds %struct.gs_file_path_s, %struct.gs_file_path_s* %34, i32 0, i32 0
  %value28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %container27, i32 0, i32 1
  %refs29 = bitcast %union.v* %value28 to %struct.ref_s**
  %35 = load %struct.ref_s*, %struct.ref_s** %refs29, align 8, !tbaa !1
  %arrayidx30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %35, i64 %idxprom26
  %tas31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx30, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas31, i32 0, i32 0
  store i16 4704, i16* %type_attrs, align 2, !tbaa !32
  %36 = load i8*, i8** %npath, align 8, !tbaa !1
  %37 = load i8*, i8** %dpath, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %36 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %37 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv32 = trunc i64 %sub.ptr.sub to i32
  %38 = load i32, i32* %len, align 4, !tbaa !19
  %idxprom33 = zext i32 %38 to i64
  %39 = load %struct.gs_file_path_s*, %struct.gs_file_path_s** %pfp.addr, align 8, !tbaa !1
  %container34 = getelementptr inbounds %struct.gs_file_path_s, %struct.gs_file_path_s* %39, i32 0, i32 0
  %value35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %container34, i32 0, i32 1
  %refs36 = bitcast %union.v* %value35 to %struct.ref_s**
  %40 = load %struct.ref_s*, %struct.ref_s** %refs36, align 8, !tbaa !1
  %arrayidx37 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %40, i64 %idxprom33
  %tas38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx37, i32 0, i32 0
  %rsize39 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas38, i32 0, i32 2
  store i32 %conv32, i32* %rsize39, align 4, !tbaa !33
  %41 = load i32, i32* %len, align 4, !tbaa !19
  %inc = add i32 %41, 1
  store i32 %inc, i32* %len, align 4, !tbaa !19
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.23, %while.end
  %42 = load i8*, i8** %npath, align 8, !tbaa !1
  %43 = load i8, i8* %42, align 1, !tbaa !30
  %tobool = icmp ne i8 %43, 0
  br i1 %tobool, label %if.end.42, label %if.then.41

if.then.41:                                       ; preds = %if.end.40
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.42:                                        ; preds = %if.end.40
  %44 = load i8*, i8** %npath, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %44, i64 1
  store i8* %add.ptr, i8** %dpath, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.42, %if.then.41, %if.then.17
  %45 = bitcast i8** %npath to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.46 [
    i32 0, label %cleanup.cont
    i32 2, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond

for.end:                                          ; preds = %cleanup
  %46 = load i32, i32* %len, align 4, !tbaa !19
  %47 = load %struct.gs_file_path_s*, %struct.gs_file_path_s** %pfp.addr, align 8, !tbaa !1
  %list43 = getelementptr inbounds %struct.gs_file_path_s, %struct.gs_file_path_s* %47, i32 0, i32 1
  %tas44 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %list43, i32 0, i32 0
  %rsize45 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas44, i32 0, i32 2
  store i32 %46, i32* %rsize45, align 4, !tbaa !33
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.46

cleanup.46:                                       ; preds = %for.end, %cleanup, %if.then
  %48 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #1
  %49 = bitcast i8** %dpath to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #1
  %50 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #1
  %51 = load i32, i32* %retval
  ret i32 %51
}

; Function Attrs: nounwind uwtable
define i32 @gs_main_set_lib_paths(%struct.gs_main_instance_s* %minst) #0 {
entry:
  %retval = alloca i32, align 4
  %minst.addr = alloca %struct.gs_main_instance_s*, align 8
  %paths = alloca %struct.ref_s*, align 8
  %first_is_here = alloca i32, align 4
  %code = alloca i32, align 4
  %count = alloca i32, align 4
  %i = alloca i32, align 4
  %have_rom_device = alloca i32, align 4
  %iodev = alloca %struct.gx_io_device_s*, align 8
  %dname = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_main_instance_s* %minst, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %paths to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %lib_path = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %1, i32 0, i32 8
  %container = getelementptr inbounds %struct.gs_file_path_s, %struct.gs_file_path_s* %lib_path, i32 0, i32 0
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %container, i32 0, i32 1
  %refs = bitcast %union.v* %value to %struct.ref_s**
  %2 = load %struct.ref_s*, %struct.ref_s** %refs, align 8, !tbaa !1
  store %struct.ref_s* %2, %struct.ref_s** %paths, align 8, !tbaa !1
  %3 = bitcast i32* %first_is_here to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %lib_path1 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %4, i32 0, i32 8
  %list = getelementptr inbounds %struct.gs_file_path_s, %struct.gs_file_path_s* %lib_path1, i32 0, i32 1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %list, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 2
  %5 = load i32, i32* %rsize, align 4, !tbaa !33
  %cmp = icmp ne i32 %5, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %6 = load %struct.ref_s*, %struct.ref_s** %paths, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 0
  %value2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 1
  %bytes = bitcast %union.v* %value2 to i8**
  %7 = load i8*, i8** %bytes, align 8, !tbaa !1
  %cmp3 = icmp eq i8* %7, getelementptr inbounds ([0 x i8], [0 x i8]* @gp_current_directory_name, i32 0, i32 0)
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %8 = phi i1 [ false, %entry ], [ %cmp3, %land.rhs ]
  %cond = select i1 %8, i32 1, i32 0
  store i32 %cond, i32* %first_is_here, align 4, !tbaa !19
  %9 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  store i32 0, i32* %code, align 4, !tbaa !19
  %10 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %lib_path4 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %11, i32 0, i32 8
  %count5 = getelementptr inbounds %struct.gs_file_path_s, %struct.gs_file_path_s* %lib_path4, i32 0, i32 4
  %12 = load i32, i32* %count5, align 4, !tbaa !36
  store i32 %12, i32* %count, align 4, !tbaa !19
  %13 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast i32* %have_rom_device to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  store i32 0, i32* %have_rom_device, align 4, !tbaa !19
  %15 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %search_here_first = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %15, i32 0, i32 6
  %16 = load i32, i32* %search_here_first, align 4, !tbaa !73
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %land.end
  %17 = load i32, i32* %first_is_here, align 4, !tbaa !19
  %tobool6 = icmp ne i32 %17, 0
  br i1 %tobool6, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %18 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %lib_path7 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %18, i32 0, i32 8
  %list8 = getelementptr inbounds %struct.gs_file_path_s, %struct.gs_file_path_s* %lib_path7, i32 0, i32 1
  %tas9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %list8, i32 0, i32 0
  %rsize10 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas9, i32 0, i32 2
  %19 = load i32, i32* %rsize10, align 4, !tbaa !33
  %cmp11 = icmp ne i32 %19, 0
  br i1 %cmp11, label %land.lhs.true, label %if.then.20

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call = call i64 @strlen(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @gp_current_directory_name, i32 0, i32 0)) #7
  %conv = trunc i64 %call to i32
  %20 = load %struct.ref_s*, %struct.ref_s** %paths, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i64 0
  %value13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx12, i32 0, i32 1
  %bytes14 = bitcast %union.v* %value13 to i8**
  %21 = load i8*, i8** %bytes14, align 8, !tbaa !1
  %22 = load %struct.ref_s*, %struct.ref_s** %paths, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i64 0
  %tas16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx15, i32 0, i32 0
  %rsize17 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas16, i32 0, i32 2
  %23 = load i32, i32* %rsize17, align 4, !tbaa !33
  %call18 = call i32 @bytes_compare(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @gp_current_directory_name, i32 0, i32 0), i32 %conv, i8* %21, i32 %23) #5
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.end

if.then.20:                                       ; preds = %land.lhs.true, %lor.lhs.false
  %24 = load %struct.ref_s*, %struct.ref_s** %paths, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i64 1
  %25 = bitcast %struct.ref_s* %add.ptr to i8*
  %26 = load %struct.ref_s*, %struct.ref_s** %paths, align 8, !tbaa !1
  %27 = bitcast %struct.ref_s* %26 to i8*
  %28 = load i32, i32* %count, align 4, !tbaa !19
  %conv21 = sext i32 %28 to i64
  %mul = mul i64 %conv21, 16
  %call22 = call i8* @memmove(i8* %25, i8* %27, i64 %mul) #6
  %29 = load %struct.ref_s*, %struct.ref_s** %paths, align 8, !tbaa !1
  %value23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i32 0, i32 1
  %const_bytes = bitcast %union.v* %value23 to i8**
  store i8* getelementptr inbounds ([0 x i8], [0 x i8]* @gp_current_directory_name, i32 0, i32 0), i8** %const_bytes, align 8, !tbaa !1
  %30 = load %struct.ref_s*, %struct.ref_s** %paths, align 8, !tbaa !1
  %tas24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas24, i32 0, i32 0
  store i16 4704, i16* %type_attrs, align 2, !tbaa !32
  %call25 = call i64 @strlen(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @gp_current_directory_name, i32 0, i32 0)) #7
  %conv26 = trunc i64 %call25 to i32
  %31 = load %struct.ref_s*, %struct.ref_s** %paths, align 8, !tbaa !1
  %tas27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i32 0, i32 0
  %rsize28 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas27, i32 0, i32 2
  store i32 %conv26, i32* %rsize28, align 4, !tbaa !33
  br label %if.end

if.end:                                           ; preds = %if.then.20, %land.lhs.true, %if.then
  br label %if.end.36

if.else:                                          ; preds = %land.end
  %32 = load i32, i32* %first_is_here, align 4, !tbaa !19
  %tobool29 = icmp ne i32 %32, 0
  br i1 %tobool29, label %if.then.30, label %if.end.35

if.then.30:                                       ; preds = %if.else
  %33 = load %struct.ref_s*, %struct.ref_s** %paths, align 8, !tbaa !1
  %34 = bitcast %struct.ref_s* %33 to i8*
  %35 = load %struct.ref_s*, %struct.ref_s** %paths, align 8, !tbaa !1
  %add.ptr31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %35, i64 1
  %36 = bitcast %struct.ref_s* %add.ptr31 to i8*
  %37 = load i32, i32* %count, align 4, !tbaa !19
  %conv32 = sext i32 %37 to i64
  %mul33 = mul i64 %conv32, 16
  %call34 = call i8* @memmove(i8* %34, i8* %36, i64 %mul33) #6
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.30, %if.else
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.end
  %38 = load i32, i32* %count, align 4, !tbaa !19
  %39 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %search_here_first37 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %39, i32 0, i32 6
  %40 = load i32, i32* %search_here_first37, align 4, !tbaa !73
  %tobool38 = icmp ne i32 %40, 0
  %cond39 = select i1 %tobool38, i32 1, i32 0
  %add = add nsw i32 %38, %cond39
  %41 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %lib_path40 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %41, i32 0, i32 8
  %list41 = getelementptr inbounds %struct.gs_file_path_s, %struct.gs_file_path_s* %lib_path40, i32 0, i32 1
  %tas42 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %list41, i32 0, i32 0
  %rsize43 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas42, i32 0, i32 2
  store i32 %add, i32* %rsize43, align 4, !tbaa !33
  %42 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %lib_path44 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %42, i32 0, i32 8
  %env = getelementptr inbounds %struct.gs_file_path_s, %struct.gs_file_path_s* %lib_path44, i32 0, i32 2
  %43 = load i8*, i8** %env, align 8, !tbaa !34
  %cmp45 = icmp ne i8* %43, null
  br i1 %cmp45, label %if.then.47, label %if.end.52

if.then.47:                                       ; preds = %if.end.36
  %44 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %45 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %lib_path48 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %45, i32 0, i32 8
  %46 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %lib_path49 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %46, i32 0, i32 8
  %env50 = getelementptr inbounds %struct.gs_file_path_s, %struct.gs_file_path_s* %lib_path49, i32 0, i32 2
  %47 = load i8*, i8** %env50, align 8, !tbaa !34
  %call51 = call i32 @file_path_add(%struct.gs_main_instance_s* %44, %struct.gs_file_path_s* %lib_path48, i8* %47) #5
  store i32 %call51, i32* %code, align 4, !tbaa !19
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.47, %if.end.36
  store i32 0, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.52
  %48 = load i32, i32* %i, align 4, !tbaa !19
  %49 = load i32, i32* @gx_io_device_table_count, align 4, !tbaa !19
  %cmp53 = icmp ult i32 %48, %49
  br i1 %cmp53, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %50 = bitcast %struct.gx_io_device_s** %iodev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %50) #1
  %51 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom = sext i32 %51 to i64
  %arrayidx55 = getelementptr inbounds [0 x %struct.gx_io_device_s*], [0 x %struct.gx_io_device_s*]* @gx_io_device_table, i32 0, i64 %idxprom
  %52 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %arrayidx55, align 8, !tbaa !1
  store %struct.gx_io_device_s* %52, %struct.gx_io_device_s** %iodev, align 8, !tbaa !1
  %53 = bitcast i8** %dname to i8*
  call void @llvm.lifetime.start(i64 8, i8* %53) #1
  %54 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev, align 8, !tbaa !1
  %dname56 = getelementptr inbounds %struct.gx_io_device_s, %struct.gx_io_device_s* %54, i32 0, i32 0
  %55 = load i8*, i8** %dname56, align 8, !tbaa !74
  store i8* %55, i8** %dname, align 8, !tbaa !1
  %56 = load i8*, i8** %dname, align 8, !tbaa !1
  %tobool57 = icmp ne i8* %56, null
  br i1 %tobool57, label %land.lhs.true.58, label %if.end.66

land.lhs.true.58:                                 ; preds = %for.body
  %57 = load i8*, i8** %dname, align 8, !tbaa !1
  %call59 = call i64 @strlen(i8* %57) #7
  %cmp60 = icmp eq i64 %call59, 5
  br i1 %cmp60, label %land.lhs.true.62, label %if.end.66

land.lhs.true.62:                                 ; preds = %land.lhs.true.58
  %58 = load i8*, i8** %dname, align 8, !tbaa !1
  %call63 = call i32 @memcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i8* %58, i64 5) #7
  %tobool64 = icmp ne i32 %call63, 0
  br i1 %tobool64, label %if.end.66, label %if.then.65

if.then.65:                                       ; preds = %land.lhs.true.62
  store i32 1, i32* %have_rom_device, align 4, !tbaa !19
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.66:                                        ; preds = %land.lhs.true.62, %land.lhs.true.58, %for.body
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.66, %if.then.65
  %59 = bitcast i8** %dname to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #1
  %60 = bitcast %struct.gx_io_device_s** %iodev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %60) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %61 = load i32, i32* %i, align 4, !tbaa !19
  %inc = add nsw i32 %61, 1
  store i32 %inc, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.end:                                          ; preds = %cleanup, %for.cond
  %62 = load i32, i32* %have_rom_device, align 4, !tbaa !19
  %tobool68 = icmp ne i32 %62, 0
  br i1 %tobool68, label %land.lhs.true.69, label %if.end.81

land.lhs.true.69:                                 ; preds = %for.end
  %63 = load i32, i32* %code, align 4, !tbaa !19
  %cmp70 = icmp sge i32 %63, 0
  br i1 %cmp70, label %if.then.72, label %if.end.81

if.then.72:                                       ; preds = %land.lhs.true.69
  %64 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %65 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %lib_path73 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %65, i32 0, i32 8
  %call74 = call i32 @file_path_add(%struct.gs_main_instance_s* %64, %struct.gs_file_path_s* %lib_path73, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i32 0, i32 0)) #5
  store i32 %call74, i32* %code, align 4, !tbaa !19
  %66 = load i32, i32* %code, align 4, !tbaa !19
  %cmp75 = icmp slt i32 %66, 0
  br i1 %cmp75, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %if.then.72
  %67 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %67, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.94

if.end.78:                                        ; preds = %if.then.72
  %68 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %69 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %lib_path79 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %69, i32 0, i32 8
  %call80 = call i32 @file_path_add(%struct.gs_main_instance_s* %68, %struct.gs_file_path_s* %lib_path79, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0)) #5
  store i32 %call80, i32* %code, align 4, !tbaa !19
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.78, %land.lhs.true.69, %for.end
  %70 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %lib_path82 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %70, i32 0, i32 8
  %final = getelementptr inbounds %struct.gs_file_path_s, %struct.gs_file_path_s* %lib_path82, i32 0, i32 3
  %71 = load i8*, i8** %final, align 8, !tbaa !35
  %cmp83 = icmp ne i8* %71, null
  br i1 %cmp83, label %land.lhs.true.85, label %if.end.93

land.lhs.true.85:                                 ; preds = %if.end.81
  %72 = load i32, i32* %code, align 4, !tbaa !19
  %cmp86 = icmp sge i32 %72, 0
  br i1 %cmp86, label %if.then.88, label %if.end.93

if.then.88:                                       ; preds = %land.lhs.true.85
  %73 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %74 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %lib_path89 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %74, i32 0, i32 8
  %75 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %lib_path90 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %75, i32 0, i32 8
  %final91 = getelementptr inbounds %struct.gs_file_path_s, %struct.gs_file_path_s* %lib_path90, i32 0, i32 3
  %76 = load i8*, i8** %final91, align 8, !tbaa !35
  %call92 = call i32 @file_path_add(%struct.gs_main_instance_s* %73, %struct.gs_file_path_s* %lib_path89, i8* %76) #5
  store i32 %call92, i32* %code, align 4, !tbaa !19
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.88, %land.lhs.true.85, %if.end.81
  %77 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %77, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.94

cleanup.94:                                       ; preds = %if.end.93, %if.then.77
  %78 = bitcast i32* %have_rom_device to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #1
  %79 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %79) #1
  %80 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %80) #1
  %81 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %81) #1
  %82 = bitcast i32* %first_is_here to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #1
  %83 = bitcast %struct.ref_s** %paths to i8*
  call void @llvm.lifetime.end(i64 8, i8* %83) #1
  %84 = load i32, i32* %retval
  ret i32 %84

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare i32 @bytes_compare(i8*, i32, i8*, i32) #3

; Function Attrs: nounwind
declare i8* @memmove(i8*, i8*, i64) #2

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #4

; Function Attrs: nounwind uwtable
define i32 @gs_main_lib_open(%struct.gs_main_instance_s* %minst, i8* %file_name, %struct.ref_s* %pfile) #0 {
entry:
  %minst.addr = alloca %struct.gs_main_instance_s*, align 8
  %file_name.addr = alloca i8*, align 8
  %pfile.addr = alloca %struct.ref_s*, align 8
  %i_ctx_p = alloca %struct.gs_context_state_s*, align 8
  %fn = alloca [2048 x i8], align 16
  %len = alloca i32, align 4
  store %struct.gs_main_instance_s* %minst, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  store i8* %file_name, i8** %file_name.addr, align 8, !tbaa !1
  store %struct.ref_s* %pfile, %struct.ref_s** %pfile.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_context_state_s** %i_ctx_p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %i_ctx_p1 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %1, i32 0, i32 14
  %2 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p1, align 8, !tbaa !20
  store %struct.gs_context_state_s* %2, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %3 = bitcast [2048 x i8]* %fn to i8*
  call void @llvm.lifetime.start(i64 2048, i8* %3) #1
  %4 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %lib_path = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %5, i32 0, i32 8
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %6, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %7 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !44
  %8 = bitcast %struct.gs_ref_memory_s* %7 to %struct.gs_memory_s*
  %9 = load i8*, i8** %file_name.addr, align 8, !tbaa !1
  %10 = load i8*, i8** %file_name.addr, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %10) #7
  %conv = trunc i64 %call to i32
  %arraydecay = getelementptr inbounds [2048 x i8], [2048 x i8]* %fn, i32 0, i32 0
  %11 = load %struct.ref_s*, %struct.ref_s** %pfile.addr, align 8, !tbaa !1
  %call2 = call i32 @lib_file_open(%struct.gs_file_path_s* %lib_path, %struct.gs_memory_s* %8, %struct.gs_context_state_s* null, i8* %9, i32 %conv, i8* %arraydecay, i32 2048, i32* %len, %struct.ref_s* %11) #5
  %12 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #1
  %13 = bitcast [2048 x i8]* %fn to i8*
  call void @llvm.lifetime.end(i64 2048, i8* %13) #1
  %14 = bitcast %struct.gs_context_state_s** %i_ctx_p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  ret i32 %call2
}

declare i32 @lib_file_open(%struct.gs_file_path_s*, %struct.gs_memory_s*, %struct.gs_context_state_s*, i8*, i32, i8*, i32, i32*, %struct.ref_s*) #3

; Function Attrs: nounwind uwtable
define i32 @gs_main_run_file(%struct.gs_main_instance_s* %minst, i8* %file_name, i32 %user_errors, i32* %pexit_code, %struct.ref_s* %perror_object) #0 {
entry:
  %retval = alloca i32, align 4
  %minst.addr = alloca %struct.gs_main_instance_s*, align 8
  %file_name.addr = alloca i8*, align 8
  %user_errors.addr = alloca i32, align 4
  %pexit_code.addr = alloca i32*, align 8
  %perror_object.addr = alloca %struct.ref_s*, align 8
  %initial_file = alloca %struct.ref_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_main_instance_s* %minst, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  store i8* %file_name, i8** %file_name.addr, align 8, !tbaa !1
  store i32 %user_errors, i32* %user_errors.addr, align 4, !tbaa !19
  store i32* %pexit_code, i32** %pexit_code.addr, align 8, !tbaa !1
  store %struct.ref_s* %perror_object, %struct.ref_s** %perror_object.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s* %initial_file to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %file_name.addr, align 8, !tbaa !1
  %call = call i32 @gs_main_run_file_open(%struct.gs_main_instance_s* %2, i8* %3, %struct.ref_s* %initial_file) #5
  store i32 %call, i32* %code, align 4, !tbaa !19
  %4 = load i32, i32* %code, align 4, !tbaa !19
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %7 = load i32, i32* %user_errors.addr, align 4, !tbaa !19
  %8 = load i32*, i32** %pexit_code.addr, align 8, !tbaa !1
  %9 = load %struct.ref_s*, %struct.ref_s** %perror_object.addr, align 8, !tbaa !1
  %call1 = call i32 @gs_main_interpret(%struct.gs_main_instance_s* %6, %struct.ref_s* %initial_file, i32 %7, i32* %8, %struct.ref_s* %9) #5
  store i32 %call1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %10 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #1
  %11 = bitcast %struct.ref_s* %initial_file to i8*
  call void @llvm.lifetime.end(i64 16, i8* %11) #1
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define i32 @gs_main_run_file_open(%struct.gs_main_instance_s* %minst, i8* %file_name, %struct.ref_s* %pfref) #0 {
entry:
  %retval = alloca i32, align 4
  %minst.addr = alloca %struct.gs_main_instance_s*, align 8
  %file_name.addr = alloca i8*, align 8
  %pfref.addr = alloca %struct.ref_s*, align 8
  store %struct.gs_main_instance_s* %minst, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  store i8* %file_name, i8** %file_name.addr, align 8, !tbaa !1
  store %struct.ref_s* %pfref, %struct.ref_s** %pfref.addr, align 8, !tbaa !1
  %0 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %call = call i32 @gs_main_set_lib_paths(%struct.gs_main_instance_s* %0) #5
  %1 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %file_name.addr, align 8, !tbaa !1
  %3 = load %struct.ref_s*, %struct.ref_s** %pfref.addr, align 8, !tbaa !1
  %call1 = call i32 @gs_main_lib_open(%struct.gs_main_instance_s* %1, i8* %2, %struct.ref_s* %3) #5
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %4, i32 0, i32 0
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap, align 8, !tbaa !13
  %call2 = call i8* @gs_program_name() #5
  %call3 = call i64 @gs_revision_number() #5
  call void @emprintf_program_ident(%struct.gs_memory_s* %5, i8* %call2, i64 %call3) #5
  %6 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap4 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %6, i32 0, i32 0
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap4, align 8, !tbaa !13
  %8 = load i8*, i8** %file_name.addr, align 8, !tbaa !1
  %call5 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %7, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.13, i32 0, i32 0), i8* %8) #5
  store i32 -100, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %9 = load %struct.ref_s*, %struct.ref_s** %pfref.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %10 = load i16, i16* %type_attrs, align 2, !tbaa !32
  %conv = zext i16 %10 to i32
  %or = or i32 %conv, 192
  %conv6 = trunc i32 %or to i16
  store i16 %conv6, i16* %type_attrs, align 2, !tbaa !32
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal i32 @gs_main_interpret(%struct.gs_main_instance_s* %minst, %struct.ref_s* %pref, i32 %user_errors, i32* %pexit_code, %struct.ref_s* %perror_object) #0 {
entry:
  %minst.addr = alloca %struct.gs_main_instance_s*, align 8
  %pref.addr = alloca %struct.ref_s*, align 8
  %user_errors.addr = alloca i32, align 4
  %pexit_code.addr = alloca i32*, align 8
  %perror_object.addr = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  store %struct.gs_main_instance_s* %minst, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  store %struct.ref_s* %pref, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  store i32 %user_errors, i32* %user_errors.addr, align 4, !tbaa !19
  store i32* %pexit_code, i32** %pexit_code.addr, align 8, !tbaa !1
  store %struct.ref_s* %perror_object, %struct.ref_s** %perror_object.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %lib_path = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %1, i32 0, i32 8
  %2 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %i_ctx_p = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %2, i32 0, i32 14
  %3 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !20
  %lib_path1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %3, i32 0, i32 16
  store %struct.gs_file_path_s* %lib_path, %struct.gs_file_path_s** %lib_path1, align 8, !tbaa !77
  %4 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %i_ctx_p2 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %4, i32 0, i32 14
  %5 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %6 = load i32, i32* %user_errors.addr, align 4, !tbaa !19
  %7 = load i32*, i32** %pexit_code.addr, align 8, !tbaa !1
  %8 = load %struct.ref_s*, %struct.ref_s** %perror_object.addr, align 8, !tbaa !1
  %call = call i32 @gs_interpret(%struct.gs_context_state_s** %i_ctx_p2, %struct.ref_s* %5, i32 %6, i32* %7, %struct.ref_s* %8) #5
  store i32 %call, i32* %code, align 4, !tbaa !19
  %9 = load i32, i32* %code, align 4, !tbaa !19
  %10 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #1
  ret i32 %9
}

declare void @emprintf_program_ident(%struct.gs_memory_s*, i8*, i64) #3

declare i8* @gs_program_name() #3

declare i64 @gs_revision_number() #3

declare i32 @errprintf(%struct.gs_memory_s*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define i32 @gs_main_run_string_with_length(%struct.gs_main_instance_s* %minst, i8* %str, i32 %length, i32 %user_errors, i32* %pexit_code, %struct.ref_s* %perror_object) #0 {
entry:
  %retval = alloca i32, align 4
  %minst.addr = alloca %struct.gs_main_instance_s*, align 8
  %str.addr = alloca i8*, align 8
  %length.addr = alloca i32, align 4
  %user_errors.addr = alloca i32, align 4
  %pexit_code.addr = alloca i32*, align 8
  %perror_object.addr = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_main_instance_s* %minst, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  store i8* %str, i8** %str.addr, align 8, !tbaa !1
  store i32 %length, i32* %length.addr, align 4, !tbaa !19
  store i32 %user_errors, i32* %user_errors.addr, align 4, !tbaa !19
  store i32* %pexit_code, i32** %pexit_code.addr, align 8, !tbaa !1
  store %struct.ref_s* %perror_object, %struct.ref_s** %perror_object.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %2 = load i32, i32* %user_errors.addr, align 4, !tbaa !19
  %3 = load i32*, i32** %pexit_code.addr, align 8, !tbaa !1
  %4 = load %struct.ref_s*, %struct.ref_s** %perror_object.addr, align 8, !tbaa !1
  %call = call i32 @gs_main_run_string_begin(%struct.gs_main_instance_s* %1, i32 %2, i32* %3, %struct.ref_s* %4) #5
  store i32 %call, i32* %code, align 4, !tbaa !19
  %5 = load i32, i32* %code, align 4, !tbaa !19
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %8 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %9 = load i32, i32* %length.addr, align 4, !tbaa !19
  %10 = load i32, i32* %user_errors.addr, align 4, !tbaa !19
  %11 = load i32*, i32** %pexit_code.addr, align 8, !tbaa !1
  %12 = load %struct.ref_s*, %struct.ref_s** %perror_object.addr, align 8, !tbaa !1
  %call1 = call i32 @gs_main_run_string_continue(%struct.gs_main_instance_s* %7, i8* %8, i32 %9, i32 %10, i32* %11, %struct.ref_s* %12) #5
  store i32 %call1, i32* %code, align 4, !tbaa !19
  %13 = load i32, i32* %code, align 4, !tbaa !19
  %cmp2 = icmp ne i32 %13, -106
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %14 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %15 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %16 = load i32, i32* %user_errors.addr, align 4, !tbaa !19
  %17 = load i32*, i32** %pexit_code.addr, align 8, !tbaa !1
  %18 = load %struct.ref_s*, %struct.ref_s** %perror_object.addr, align 8, !tbaa !1
  %call5 = call i32 @gs_main_run_string_end(%struct.gs_main_instance_s* %15, i32 %16, i32* %17, %struct.ref_s* %18) #5
  store i32 %call5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.4, %if.then.3, %if.then
  %19 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define i32 @gs_main_run_string_begin(%struct.gs_main_instance_s* %minst, i32 %user_errors, i32* %pexit_code, %struct.ref_s* %perror_object) #0 {
entry:
  %minst.addr = alloca %struct.gs_main_instance_s*, align 8
  %user_errors.addr = alloca i32, align 4
  %pexit_code.addr = alloca i32*, align 8
  %perror_object.addr = alloca %struct.ref_s*, align 8
  %setup = alloca i8*, align 8
  %rstr = alloca %struct.ref_s, align 8
  %code = alloca i32, align 4
  store %struct.gs_main_instance_s* %minst, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  store i32 %user_errors, i32* %user_errors.addr, align 4, !tbaa !19
  store i32* %pexit_code, i32** %pexit_code.addr, align 8, !tbaa !1
  store %struct.ref_s* %perror_object, %struct.ref_s** %perror_object.addr, align 8, !tbaa !1
  %0 = bitcast i8** %setup to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i32 0, i32 0), i8** %setup, align 8, !tbaa !1
  %1 = bitcast %struct.ref_s* %rstr to i8*
  call void @llvm.lifetime.start(i64 16, i8* %1) #1
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %call = call i32 @gs_main_set_lib_paths(%struct.gs_main_instance_s* %3) #5
  %4 = load i8*, i8** %setup, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rstr, i32 0, i32 1
  %const_bytes = bitcast %union.v* %value to i8**
  store i8* %4, i8** %const_bytes, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rstr, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 4832, i16* %type_attrs, align 2, !tbaa !32
  %5 = load i8*, i8** %setup, align 8, !tbaa !1
  %call1 = call i64 @strlen(i8* %5) #7
  %conv = trunc i64 %call1 to i32
  %tas2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rstr, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas2, i32 0, i32 2
  store i32 %conv, i32* %rsize, align 4, !tbaa !33
  %6 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %7 = load i32, i32* %user_errors.addr, align 4, !tbaa !19
  %8 = load i32*, i32** %pexit_code.addr, align 8, !tbaa !1
  %9 = load %struct.ref_s*, %struct.ref_s** %perror_object.addr, align 8, !tbaa !1
  %call3 = call i32 @gs_main_interpret(%struct.gs_main_instance_s* %6, %struct.ref_s* %rstr, i32 %7, i32* %8, %struct.ref_s* %9) #5
  store i32 %call3, i32* %code, align 4, !tbaa !19
  %10 = load i32, i32* %code, align 4, !tbaa !19
  %cmp = icmp eq i32 %10, -106
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end.9

cond.false:                                       ; preds = %entry
  %11 = load i32, i32* %code, align 4, !tbaa !19
  %cmp5 = icmp eq i32 %11, 0
  br i1 %cmp5, label %cond.true.7, label %cond.false.8

cond.true.7:                                      ; preds = %cond.false
  br label %cond.end

cond.false.8:                                     ; preds = %cond.false
  %12 = load i32, i32* %code, align 4, !tbaa !19
  br label %cond.end

cond.end:                                         ; preds = %cond.false.8, %cond.true.7
  %cond = phi i32 [ -100, %cond.true.7 ], [ %12, %cond.false.8 ]
  br label %cond.end.9

cond.end.9:                                       ; preds = %cond.end, %cond.true
  %cond10 = phi i32 [ 0, %cond.true ], [ %cond, %cond.end ]
  %13 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #1
  %14 = bitcast %struct.ref_s* %rstr to i8*
  call void @llvm.lifetime.end(i64 16, i8* %14) #1
  %15 = bitcast i8** %setup to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  ret i32 %cond10
}

; Function Attrs: nounwind uwtable
define i32 @gs_main_run_string_continue(%struct.gs_main_instance_s* %minst, i8* %str, i32 %length, i32 %user_errors, i32* %pexit_code, %struct.ref_s* %perror_object) #0 {
entry:
  %retval = alloca i32, align 4
  %minst.addr = alloca %struct.gs_main_instance_s*, align 8
  %str.addr = alloca i8*, align 8
  %length.addr = alloca i32, align 4
  %user_errors.addr = alloca i32, align 4
  %pexit_code.addr = alloca i32*, align 8
  %perror_object.addr = alloca %struct.ref_s*, align 8
  %rstr = alloca %struct.ref_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_main_instance_s* %minst, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  store i8* %str, i8** %str.addr, align 8, !tbaa !1
  store i32 %length, i32* %length.addr, align 4, !tbaa !19
  store i32 %user_errors, i32* %user_errors.addr, align 4, !tbaa !19
  store i32* %pexit_code, i32** %pexit_code.addr, align 8, !tbaa !1
  store %struct.ref_s* %perror_object, %struct.ref_s** %perror_object.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s* %rstr to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #1
  %1 = load i32, i32* %length.addr, align 4, !tbaa !19
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rstr, i32 0, i32 1
  %const_bytes = bitcast %union.v* %value to i8**
  store i8* %2, i8** %const_bytes, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rstr, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 4704, i16* %type_attrs, align 2, !tbaa !32
  %3 = load i32, i32* %length.addr, align 4, !tbaa !19
  %tas1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rstr, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas1, i32 0, i32 2
  store i32 %3, i32* %rsize, align 4, !tbaa !33
  %4 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %5 = load i32, i32* %user_errors.addr, align 4, !tbaa !19
  %6 = load i32*, i32** %pexit_code.addr, align 8, !tbaa !1
  %7 = load %struct.ref_s*, %struct.ref_s** %perror_object.addr, align 8, !tbaa !1
  %call = call i32 @gs_main_interpret(%struct.gs_main_instance_s* %4, %struct.ref_s* %rstr, i32 %5, i32* %6, %struct.ref_s* %7) #5
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %8 = bitcast %struct.ref_s* %rstr to i8*
  call void @llvm.lifetime.end(i64 16, i8* %8) #1
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define i32 @gs_main_run_string_end(%struct.gs_main_instance_s* %minst, i32 %user_errors, i32* %pexit_code, %struct.ref_s* %perror_object) #0 {
entry:
  %minst.addr = alloca %struct.gs_main_instance_s*, align 8
  %user_errors.addr = alloca i32, align 4
  %pexit_code.addr = alloca i32*, align 8
  %perror_object.addr = alloca %struct.ref_s*, align 8
  %rstr = alloca %struct.ref_s, align 8
  store %struct.gs_main_instance_s* %minst, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  store i32 %user_errors, i32* %user_errors.addr, align 4, !tbaa !19
  store i32* %pexit_code, i32** %pexit_code.addr, align 8, !tbaa !1
  store %struct.ref_s* %perror_object, %struct.ref_s** %perror_object.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s* %rstr to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rstr, i32 0, i32 1
  %const_bytes = bitcast %union.v* %value to i8**
  store i8* null, i8** %const_bytes, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rstr, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 4704, i16* %type_attrs, align 2, !tbaa !32
  %tas1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rstr, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas1, i32 0, i32 2
  store i32 0, i32* %rsize, align 4, !tbaa !33
  %1 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %2 = load i32, i32* %user_errors.addr, align 4, !tbaa !19
  %3 = load i32*, i32** %pexit_code.addr, align 8, !tbaa !1
  %4 = load %struct.ref_s*, %struct.ref_s** %perror_object.addr, align 8, !tbaa !1
  %call = call i32 @gs_main_interpret(%struct.gs_main_instance_s* %1, %struct.ref_s* %rstr, i32 %2, i32* %3, %struct.ref_s* %4) #5
  %5 = bitcast %struct.ref_s* %rstr to i8*
  call void @llvm.lifetime.end(i64 16, i8* %5) #1
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gs_push_boolean(%struct.gs_main_instance_s* %minst, i32 %value) #0 {
entry:
  %minst.addr = alloca %struct.gs_main_instance_s*, align 8
  %value.addr = alloca i32, align 4
  %vref = alloca %struct.ref_s, align 8
  store %struct.gs_main_instance_s* %minst, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  store i32 %value, i32* %value.addr, align 4, !tbaa !19
  %0 = bitcast %struct.ref_s* %vref to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #1
  %1 = load i32, i32* %value.addr, align 4, !tbaa !19
  %conv = trunc i32 %1 to i16
  %value1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %vref, i32 0, i32 1
  %boolval = bitcast %union.v* %value1 to i16*
  store i16 %conv, i16* %boolval, align 2, !tbaa !46
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %vref, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 256, i16* %type_attrs, align 2, !tbaa !32
  %2 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %call = call i32 @push_value(%struct.gs_main_instance_s* %2, %struct.ref_s* %vref) #5
  %3 = bitcast %struct.ref_s* %vref to i8*
  call void @llvm.lifetime.end(i64 16, i8* %3) #1
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @push_value(%struct.gs_main_instance_s* %minst, %struct.ref_s* %pvalue) #0 {
entry:
  %retval = alloca i32, align 4
  %minst.addr = alloca %struct.gs_main_instance_s*, align 8
  %pvalue.addr = alloca %struct.ref_s*, align 8
  %i_ctx_p = alloca %struct.gs_context_state_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_main_instance_s* %minst, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  store %struct.ref_s* %pvalue, %struct.ref_s** %pvalue.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_context_state_s** %i_ctx_p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %i_ctx_p1 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %1, i32 0, i32 14
  %2 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p1, align 8, !tbaa !20
  store %struct.gs_context_state_s* %2, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %call = call i32 @ref_stack_push(%struct.ref_stack_s* %stack, i32 1) #5
  store i32 %call, i32* %code, align 4, !tbaa !19
  %5 = load i32, i32* %code, align 4, !tbaa !19
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack2 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %7, i32 0, i32 26
  %stack3 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack2, i32 0, i32 0
  %call4 = call %struct.ref_s* @ref_stack_index(%struct.ref_stack_s* %stack3, i64 0) #5
  %8 = load %struct.ref_s*, %struct.ref_s** %pvalue.addr, align 8, !tbaa !1
  %9 = bitcast %struct.ref_s* %call4 to i8*
  %10 = bitcast %struct.ref_s* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 16, i32 8, i1 false), !tbaa.struct !52
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %11 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %11) #1
  %12 = bitcast %struct.gs_context_state_s** %i_ctx_p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #1
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define i32 @gs_push_integer(%struct.gs_main_instance_s* %minst, i64 %value) #0 {
entry:
  %minst.addr = alloca %struct.gs_main_instance_s*, align 8
  %value.addr = alloca i64, align 8
  %vref = alloca %struct.ref_s, align 8
  store %struct.gs_main_instance_s* %minst, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  store i64 %value, i64* %value.addr, align 8, !tbaa !47
  %0 = bitcast %struct.ref_s* %vref to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #1
  %1 = load i64, i64* %value.addr, align 8, !tbaa !47
  %value1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %vref, i32 0, i32 1
  %intval = bitcast %union.v* %value1 to i64*
  store i64 %1, i64* %intval, align 8, !tbaa !47
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %vref, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 2816, i16* %type_attrs, align 2, !tbaa !32
  %2 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %call = call i32 @push_value(%struct.gs_main_instance_s* %2, %struct.ref_s* %vref) #5
  %3 = bitcast %struct.ref_s* %vref to i8*
  call void @llvm.lifetime.end(i64 16, i8* %3) #1
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gs_push_real(%struct.gs_main_instance_s* %minst, double %value) #0 {
entry:
  %minst.addr = alloca %struct.gs_main_instance_s*, align 8
  %value.addr = alloca double, align 8
  %vref = alloca %struct.ref_s, align 8
  store %struct.gs_main_instance_s* %minst, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  store double %value, double* %value.addr, align 8, !tbaa !78
  %0 = bitcast %struct.ref_s* %vref to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #1
  %1 = load double, double* %value.addr, align 8, !tbaa !78
  %conv = fptrunc double %1 to float
  %value1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %vref, i32 0, i32 1
  %realval = bitcast %union.v* %value1 to float*
  store float %conv, float* %realval, align 4, !tbaa !48
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %vref, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 4096, i16* %type_attrs, align 2, !tbaa !32
  %2 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %call = call i32 @push_value(%struct.gs_main_instance_s* %2, %struct.ref_s* %vref) #5
  %3 = bitcast %struct.ref_s* %vref to i8*
  call void @llvm.lifetime.end(i64 16, i8* %3) #1
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gs_push_string(%struct.gs_main_instance_s* %minst, i8* %chars, i32 %length, i32 %read_only) #0 {
entry:
  %minst.addr = alloca %struct.gs_main_instance_s*, align 8
  %chars.addr = alloca i8*, align 8
  %length.addr = alloca i32, align 4
  %read_only.addr = alloca i32, align 4
  %vref = alloca %struct.ref_s, align 8
  store %struct.gs_main_instance_s* %minst, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  store i8* %chars, i8** %chars.addr, align 8, !tbaa !1
  store i32 %length, i32* %length.addr, align 4, !tbaa !19
  store i32 %read_only, i32* %read_only.addr, align 4, !tbaa !19
  %0 = bitcast %struct.ref_s* %vref to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #1
  %1 = load i8*, i8** %chars.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %vref, i32 0, i32 1
  %bytes = bitcast %union.v* %value to i8**
  store i8* %1, i8** %bytes, align 8, !tbaa !1
  %2 = load i32, i32* %read_only.addr, align 4, !tbaa !19
  %tobool = icmp ne i32 %2, 0
  %cond = select i1 %tobool, i32 96, i32 112
  %or = or i32 0, %cond
  %add = add nsw i32 4608, %or
  %conv = trunc i32 %add to i16
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %vref, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 %conv, i16* %type_attrs, align 2, !tbaa !32
  %3 = load i32, i32* %length.addr, align 4, !tbaa !19
  %tas1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %vref, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas1, i32 0, i32 2
  store i32 %3, i32* %rsize, align 4, !tbaa !33
  %4 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %call = call i32 @push_value(%struct.gs_main_instance_s* %4, %struct.ref_s* %vref) #5
  %5 = bitcast %struct.ref_s* %vref to i8*
  call void @llvm.lifetime.end(i64 16, i8* %5) #1
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gs_pop_boolean(%struct.gs_main_instance_s* %minst, i32* %result) #0 {
entry:
  %retval = alloca i32, align 4
  %minst.addr = alloca %struct.gs_main_instance_s*, align 8
  %result.addr = alloca i32*, align 8
  %i_ctx_p = alloca %struct.gs_context_state_s*, align 8
  %vref = alloca %struct.ref_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_main_instance_s* %minst, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  store i32* %result, i32** %result.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_context_state_s** %i_ctx_p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %i_ctx_p1 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %1, i32 0, i32 14
  %2 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p1, align 8, !tbaa !20
  store %struct.gs_context_state_s* %2, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %3 = bitcast %struct.ref_s* %vref to i8*
  call void @llvm.lifetime.start(i64 16, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %call = call i32 @pop_value(%struct.gs_context_state_s* %5, %struct.ref_s* %vref) #5
  store i32 %call, i32* %code, align 4, !tbaa !19
  %6 = load i32, i32* %code, align 4, !tbaa !19
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %vref, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %8 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 1
  %9 = load i8, i8* %arrayidx, align 1, !tbaa !30
  %conv = zext i8 %9 to i32
  %cmp2 = icmp eq i32 %conv, 1
  br i1 %cmp2, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %do.body
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.5
  br label %do.end

do.end:                                           ; preds = %do.cond
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %vref, i32 0, i32 1
  %boolval = bitcast %union.v* %value to i16*
  %10 = load i16, i16* %boolval, align 2, !tbaa !46
  %conv6 = zext i16 %10 to i32
  %11 = load i32*, i32** %result.addr, align 8, !tbaa !1
  store i32 %conv6, i32* %11, align 4, !tbaa !19
  %12 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %12, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  call void @ref_stack_pop(%struct.ref_stack_s* %stack, i32 1) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.4, %if.then
  %13 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #1
  %14 = bitcast %struct.ref_s* %vref to i8*
  call void @llvm.lifetime.end(i64 16, i8* %14) #1
  %15 = bitcast %struct.gs_context_state_s** %i_ctx_p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal i32 @pop_value(%struct.gs_context_state_s* %i_ctx_p, %struct.ref_s* %pvalue) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %pvalue.addr = alloca %struct.ref_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_s* %pvalue, %struct.ref_s** %pvalue.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %call = call i32 @ref_stack_count(%struct.ref_stack_s* %stack) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -17, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.ref_s*, %struct.ref_s** %pvalue.addr, align 8, !tbaa !1
  %2 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %2, i32 0, i32 26
  %stack2 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1, i32 0, i32 0
  %call3 = call %struct.ref_s* @ref_stack_index(%struct.ref_stack_s* %stack2, i64 0) #5
  %3 = bitcast %struct.ref_s* %1 to i8*
  %4 = bitcast %struct.ref_s* %call3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 16, i32 8, i1 false), !tbaa.struct !52
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

declare void @ref_stack_pop(%struct.ref_stack_s*, i32) #3

; Function Attrs: nounwind uwtable
define i32 @gs_pop_integer(%struct.gs_main_instance_s* %minst, i64* %result) #0 {
entry:
  %retval = alloca i32, align 4
  %minst.addr = alloca %struct.gs_main_instance_s*, align 8
  %result.addr = alloca i64*, align 8
  %i_ctx_p = alloca %struct.gs_context_state_s*, align 8
  %vref = alloca %struct.ref_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_main_instance_s* %minst, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  store i64* %result, i64** %result.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_context_state_s** %i_ctx_p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %i_ctx_p1 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %1, i32 0, i32 14
  %2 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p1, align 8, !tbaa !20
  store %struct.gs_context_state_s* %2, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %3 = bitcast %struct.ref_s* %vref to i8*
  call void @llvm.lifetime.start(i64 16, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %call = call i32 @pop_value(%struct.gs_context_state_s* %5, %struct.ref_s* %vref) #5
  store i32 %call, i32* %code, align 4, !tbaa !19
  %6 = load i32, i32* %code, align 4, !tbaa !19
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %vref, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %8 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 1
  %9 = load i8, i8* %arrayidx, align 1, !tbaa !30
  %conv = zext i8 %9 to i32
  %cmp2 = icmp eq i32 %conv, 11
  br i1 %cmp2, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %do.body
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.5
  br label %do.end

do.end:                                           ; preds = %do.cond
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %vref, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %10 = load i64, i64* %intval, align 8, !tbaa !47
  %11 = load i64*, i64** %result.addr, align 8, !tbaa !1
  store i64 %10, i64* %11, align 8, !tbaa !47
  %12 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %12, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  call void @ref_stack_pop(%struct.ref_stack_s* %stack, i32 1) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.4, %if.then
  %13 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #1
  %14 = bitcast %struct.ref_s* %vref to i8*
  call void @llvm.lifetime.end(i64 16, i8* %14) #1
  %15 = bitcast %struct.gs_context_state_s** %i_ctx_p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define i32 @gs_pop_real(%struct.gs_main_instance_s* %minst, float* %result) #0 {
entry:
  %retval = alloca i32, align 4
  %minst.addr = alloca %struct.gs_main_instance_s*, align 8
  %result.addr = alloca float*, align 8
  %i_ctx_p = alloca %struct.gs_context_state_s*, align 8
  %vref = alloca %struct.ref_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_main_instance_s* %minst, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  store float* %result, float** %result.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_context_state_s** %i_ctx_p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %i_ctx_p1 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %1, i32 0, i32 14
  %2 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p1, align 8, !tbaa !20
  store %struct.gs_context_state_s* %2, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %3 = bitcast %struct.ref_s* %vref to i8*
  call void @llvm.lifetime.start(i64 16, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %call = call i32 @pop_value(%struct.gs_context_state_s* %5, %struct.ref_s* %vref) #5
  store i32 %call, i32* %code, align 4, !tbaa !19
  %6 = load i32, i32* %code, align 4, !tbaa !19
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %vref, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %8 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 1
  %9 = load i8, i8* %arrayidx, align 1, !tbaa !30
  %conv = zext i8 %9 to i32
  switch i32 %conv, label %sw.default [
    i32 16, label %sw.bb
    i32 11, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %if.end
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %vref, i32 0, i32 1
  %realval = bitcast %union.v* %value to float*
  %10 = load float, float* %realval, align 4, !tbaa !48
  %11 = load float*, float** %result.addr, align 8, !tbaa !1
  store float %10, float* %11, align 4, !tbaa !48
  br label %sw.epilog

sw.bb.2:                                          ; preds = %if.end
  %value3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %vref, i32 0, i32 1
  %intval = bitcast %union.v* %value3 to i64*
  %12 = load i64, i64* %intval, align 8, !tbaa !47
  %conv4 = sitofp i64 %12 to float
  %13 = load float*, float** %result.addr, align 8, !tbaa !1
  store float %conv4, float* %13, align 4, !tbaa !48
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb.2, %sw.bb
  %14 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %14, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  call void @ref_stack_pop(%struct.ref_stack_s* %stack, i32 1) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default, %if.then
  %15 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #1
  %16 = bitcast %struct.ref_s* %vref to i8*
  call void @llvm.lifetime.end(i64 16, i8* %16) #1
  %17 = bitcast %struct.gs_context_state_s** %i_ctx_p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define i32 @gs_pop_string(%struct.gs_main_instance_s* %minst, %struct.gs_string_s* %result) #0 {
entry:
  %retval = alloca i32, align 4
  %minst.addr = alloca %struct.gs_main_instance_s*, align 8
  %result.addr = alloca %struct.gs_string_s*, align 8
  %i_ctx_p = alloca %struct.gs_context_state_s*, align 8
  %vref = alloca %struct.ref_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_main_instance_s* %minst, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  store %struct.gs_string_s* %result, %struct.gs_string_s** %result.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_context_state_s** %i_ctx_p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %i_ctx_p1 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %1, i32 0, i32 14
  %2 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p1, align 8, !tbaa !20
  store %struct.gs_context_state_s* %2, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %3 = bitcast %struct.ref_s* %vref to i8*
  call void @llvm.lifetime.start(i64 16, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %call = call i32 @pop_value(%struct.gs_context_state_s* %5, %struct.ref_s* %vref) #5
  store i32 %call, i32* %code, align 4, !tbaa !19
  %6 = load i32, i32* %code, align 4, !tbaa !19
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %vref, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %8 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 1
  %9 = load i8, i8* %arrayidx, align 1, !tbaa !30
  %conv = zext i8 %9 to i32
  switch i32 %conv, label %sw.default [
    i32 13, label %sw.bb
    i32 18, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %if.end
  %10 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %10, i32 0, i32 0
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap, align 8, !tbaa !13
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %11, i32 0, i32 2
  %12 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !5
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %12, i32 0, i32 16
  %13 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !43
  call void @names_string_ref(%struct.name_table_s* %13, %struct.ref_s* %vref, %struct.ref_s* %vref) #5
  store i32 1, i32* %code, align 4, !tbaa !19
  br label %rstr

sw.bb.2:                                          ; preds = %if.end
  %tas3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %vref, i32 0, i32 0
  %type_attrs4 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas3, i32 0, i32 0
  %14 = load i16, i16* %type_attrs4, align 2, !tbaa !32
  %conv5 = zext i16 %14 to i32
  %and = and i32 %conv5, 16
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 0, i32 1
  store i32 %cond, i32* %code, align 4, !tbaa !19
  br label %rstr

rstr:                                             ; preds = %sw.bb.2, %sw.bb
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %vref, i32 0, i32 1
  %bytes = bitcast %union.v* %value to i8**
  %15 = load i8*, i8** %bytes, align 8, !tbaa !1
  %16 = load %struct.gs_string_s*, %struct.gs_string_s** %result.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %16, i32 0, i32 0
  store i8* %15, i8** %data, align 8, !tbaa !80
  %tas6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %vref, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas6, i32 0, i32 2
  %17 = load i32, i32* %rsize, align 4, !tbaa !33
  %18 = load %struct.gs_string_s*, %struct.gs_string_s** %result.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %18, i32 0, i32 1
  store i32 %17, i32* %size, align 4, !tbaa !82
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %rstr
  %19 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %19, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  call void @ref_stack_pop(%struct.ref_stack_s* %stack, i32 1) #5
  %20 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default, %if.then
  %21 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  %22 = bitcast %struct.ref_s* %vref to i8*
  call void @llvm.lifetime.end(i64 16, i8* %22) #1
  %23 = bitcast %struct.gs_context_state_s** %i_ctx_p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  %24 = load i32, i32* %retval
  ret i32 %24
}

declare void @names_string_ref(%struct.name_table_s*, %struct.ref_s*, %struct.ref_s*) #3

; Function Attrs: nounwind uwtable
define i32 @gs_main_finit(%struct.gs_main_instance_s* %minst, i32 %exit_status, i32 %code) #0 {
entry:
  %retval = alloca i32, align 4
  %minst.addr = alloca %struct.gs_main_instance_s*, align 8
  %exit_status.addr = alloca i32, align 4
  %code.addr = alloca i32, align 4
  %i_ctx_p = alloca %struct.gs_context_state_s*, align 8
  %exit_code = alloca i32, align 4
  %error_object = alloca %struct.ref_s, align 8
  %tempnames = alloca i8*, align 8
  %code2 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %pdev = alloca %struct.gx_device_s*, align 8
  %dname = alloca i8*, align 8
  %mem_raw = alloca %struct.gs_memory_s*, align 8
  %h = alloca %struct.i_plugin_holder_s*, align 8
  %p = alloca i8*, align 8
  store %struct.gs_main_instance_s* %minst, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  store i32 %exit_status, i32* %exit_status.addr, align 4, !tbaa !19
  store i32 %code, i32* %code.addr, align 4, !tbaa !19
  %0 = bitcast %struct.gs_context_state_s** %i_ctx_p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %i_ctx_p1 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %1, i32 0, i32 14
  %2 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p1, align 8, !tbaa !20
  store %struct.gs_context_state_s* %2, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %3 = bitcast i32* %exit_code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast %struct.ref_s* %error_object to i8*
  call void @llvm.lifetime.start(i64 16, i8* %4) #1
  %5 = bitcast i8** %tempnames to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %call = call i8* @gs_main_tempnames(%struct.gs_main_instance_s* %6) #5
  store i8* %call, i8** %tempnames, align 8, !tbaa !1
  %7 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %init_done = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %7, i32 0, i32 4
  %8 = load i32, i32* %init_done, align 4, !tbaa !38
  %cmp = icmp sge i32 %8, 1
  br i1 %cmp, label %if.then, label %if.end.96

if.then:                                          ; preds = %entry
  %9 = bitcast i32* %code2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  store i32 0, i32* %code2, align 4, !tbaa !19
  %10 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %10, i32 0, i32 1
  %reclaim = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 3
  %11 = load i32 (%struct.gs_dual_memory_s*, i32)*, i32 (%struct.gs_dual_memory_s*, i32)** %reclaim, align 8, !tbaa !83
  %cmp3 = icmp ne i32 (%struct.gs_dual_memory_s*, i32)* %11, null
  br i1 %cmp3, label %if.then.4, label %if.end.14

if.then.4:                                        ; preds = %if.then
  %12 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %i_ctx_p5 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %12, i32 0, i32 14
  %call6 = call i32 @interp_reclaim(%struct.gs_context_state_s** %i_ctx_p5, i32 8) #5
  store i32 %call6, i32* %code2, align 4, !tbaa !19
  %13 = load i32, i32* %code2, align 4, !tbaa !19
  %cmp7 = icmp slt i32 %13, 0
  br i1 %cmp7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then.4
  %14 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %14, i32 0, i32 0
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap, align 8, !tbaa !13
  %call9 = call i8* @gs_program_name() #5
  %call10 = call i64 @gs_revision_number() #5
  call void @emprintf_program_ident(%struct.gs_memory_s* %15, i8* %call9, i64 %call10) #5
  %16 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap11 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %16, i32 0, i32 0
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap11, align 8, !tbaa !13
  %18 = load i32, i32* %code2, align 4, !tbaa !19
  %call12 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %17, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.15, i32 0, i32 0), i32 %18) #5
  store i32 -100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then.4
  %19 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %i_ctx_p13 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %19, i32 0, i32 14
  %20 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p13, align 8, !tbaa !20
  store %struct.gs_context_state_s* %20, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %if.then
  %21 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %21, i32 0, i32 0
  %22 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !53
  %cmp15 = icmp ne %struct.gs_state_s* %22, null
  br i1 %cmp15, label %land.lhs.true, label %if.end.95

land.lhs.true:                                    ; preds = %if.end.14
  %23 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %pgs16 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %23, i32 0, i32 0
  %24 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs16, align 8, !tbaa !53
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %24, i32 0, i32 78
  %25 = load %struct.gx_device_s*, %struct.gx_device_s** %device, align 8, !tbaa !84
  %cmp17 = icmp ne %struct.gx_device_s* %25, null
  br i1 %cmp17, label %if.then.18, label %if.end.95

if.then.18:                                       ; preds = %land.lhs.true
  %26 = bitcast %struct.gx_device_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %26) #1
  %27 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %pgs19 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %27, i32 0, i32 0
  %28 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs19, align 8, !tbaa !53
  %device20 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %28, i32 0, i32 78
  %29 = load %struct.gx_device_s*, %struct.gx_device_s** %device20, align 8, !tbaa !84
  store %struct.gx_device_s* %29, %struct.gx_device_s** %pdev, align 8, !tbaa !1
  %30 = bitcast i8** %dname to i8*
  call void @llvm.lifetime.start(i64 8, i8* %30) #1
  %31 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev, align 8, !tbaa !1
  %dname21 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %31, i32 0, i32 2
  %32 = load i8*, i8** %dname21, align 8, !tbaa !67
  store i8* %32, i8** %dname, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %if.then.18
  %33 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev, align 8, !tbaa !1
  %tobool = icmp ne %struct.gx_device_s* %33, null
  br i1 %tobool, label %if.then.22, label %if.end.44

if.then.22:                                       ; preds = %do.body
  br label %do.body.23

do.body.23:                                       ; preds = %if.then.22
  br label %do.body.24

do.body.24:                                       ; preds = %do.body.23
  br label %do.cond

do.cond:                                          ; preds = %do.body.24
  br label %do.end

do.end:                                           ; preds = %do.cond
  %34 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev, align 8, !tbaa !1
  %rc = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %34, i32 0, i32 7
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %35 = load i64, i64* %ref_count, align 8, !tbaa !97
  %add = add nsw i64 %35, 1
  store i64 %add, i64* %ref_count, align 8, !tbaa !97
  br label %do.cond.25

do.cond.25:                                       ; preds = %do.end
  br label %do.end.26

do.end.26:                                        ; preds = %do.cond.25
  %36 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev, align 8, !tbaa !1
  %rc27 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %36, i32 0, i32 7
  %ref_count28 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc27, i32 0, i32 0
  %37 = load i64, i64* %ref_count28, align 8, !tbaa !97
  %tobool29 = icmp ne i64 %37, 0
  br i1 %tobool29, label %if.else, label %if.then.30

if.then.30:                                       ; preds = %do.end.26
  br label %do.body.31

do.body.31:                                       ; preds = %if.then.30
  br label %do.body.32

do.body.32:                                       ; preds = %do.body.31
  br label %do.cond.33

do.cond.33:                                       ; preds = %do.body.32
  br label %do.end.34

do.end.34:                                        ; preds = %do.cond.33
  %38 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev, align 8, !tbaa !1
  %rc35 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %38, i32 0, i32 7
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc35, i32 0, i32 2
  %39 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !98
  %40 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev, align 8, !tbaa !1
  %rc36 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %40, i32 0, i32 7
  %memory37 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc36, i32 0, i32 1
  %41 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory37, align 8, !tbaa !99
  %42 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev, align 8, !tbaa !1
  %43 = bitcast %struct.gx_device_s* %42 to i8*
  call void %39(%struct.gs_memory_s* %41, i8* %43, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0)) #5
  br label %do.cond.38

do.cond.38:                                       ; preds = %do.end.34
  br label %do.end.39

do.end.39:                                        ; preds = %do.cond.38
  store %struct.gx_device_s* null, %struct.gx_device_s** %pdev, align 8, !tbaa !1
  br label %if.end.43

if.else:                                          ; preds = %do.end.26
  br label %do.body.40

do.body.40:                                       ; preds = %if.else
  br label %do.cond.41

do.cond.41:                                       ; preds = %do.body.40
  br label %do.end.42

do.end.42:                                        ; preds = %do.cond.41
  br label %if.end.43

if.end.43:                                        ; preds = %do.end.42, %do.end.39
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %do.body
  br label %do.cond.45

do.cond.45:                                       ; preds = %if.end.44
  br label %do.end.46

do.end.46:                                        ; preds = %do.cond.45
  %44 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %call47 = call i32 @gs_main_run_string(%struct.gs_main_instance_s* %44, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.17, i32 0, i32 0), i32 0, i32* %exit_code, %struct.ref_s* %error_object) #5
  %45 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev, align 8, !tbaa !1
  %call48 = call i32 @gs_closedevice(%struct.gx_device_s* %45) #5
  store i32 %call48, i32* %code2, align 4, !tbaa !19
  %46 = load i32, i32* %code2, align 4, !tbaa !19
  %cmp49 = icmp slt i32 %46, 0
  br i1 %cmp49, label %if.then.50, label %if.end.56

if.then.50:                                       ; preds = %do.end.46
  %47 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev, align 8, !tbaa !1
  %memory51 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %47, i32 0, i32 3
  %48 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory51, align 8, !tbaa !100
  %call52 = call i8* @gs_program_name() #5
  %call53 = call i64 @gs_revision_number() #5
  call void @emprintf_program_ident(%struct.gs_memory_s* %48, i8* %call52, i64 %call53) #5
  %49 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev, align 8, !tbaa !1
  %memory54 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %49, i32 0, i32 3
  %50 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory54, align 8, !tbaa !100
  %51 = load i32, i32* %code2, align 4, !tbaa !19
  %52 = load i8*, i8** %dname, align 8, !tbaa !1
  %call55 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %50, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.18, i32 0, i32 0), i32 %51, i8* %52) #5
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.50, %do.end.46
  br label %do.body.57

do.body.57:                                       ; preds = %if.end.56
  %53 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev, align 8, !tbaa !1
  %tobool58 = icmp ne %struct.gx_device_s* %53, null
  br i1 %tobool58, label %if.then.59, label %if.end.88

if.then.59:                                       ; preds = %do.body.57
  br label %do.body.60

do.body.60:                                       ; preds = %if.then.59
  br label %do.body.61

do.body.61:                                       ; preds = %do.body.60
  br label %do.cond.62

do.cond.62:                                       ; preds = %do.body.61
  br label %do.end.63

do.end.63:                                        ; preds = %do.cond.62
  %54 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev, align 8, !tbaa !1
  %rc64 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %54, i32 0, i32 7
  %ref_count65 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc64, i32 0, i32 0
  %55 = load i64, i64* %ref_count65, align 8, !tbaa !97
  %add66 = add nsw i64 %55, -1
  store i64 %add66, i64* %ref_count65, align 8, !tbaa !97
  br label %do.cond.67

do.cond.67:                                       ; preds = %do.end.63
  br label %do.end.68

do.end.68:                                        ; preds = %do.cond.67
  %56 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev, align 8, !tbaa !1
  %rc69 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %56, i32 0, i32 7
  %ref_count70 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc69, i32 0, i32 0
  %57 = load i64, i64* %ref_count70, align 8, !tbaa !97
  %tobool71 = icmp ne i64 %57, 0
  br i1 %tobool71, label %if.else.83, label %if.then.72

if.then.72:                                       ; preds = %do.end.68
  br label %do.body.73

do.body.73:                                       ; preds = %if.then.72
  br label %do.body.74

do.body.74:                                       ; preds = %do.body.73
  br label %do.cond.75

do.cond.75:                                       ; preds = %do.body.74
  br label %do.end.76

do.end.76:                                        ; preds = %do.cond.75
  %58 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev, align 8, !tbaa !1
  %rc77 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %58, i32 0, i32 7
  %free78 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc77, i32 0, i32 2
  %59 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free78, align 8, !tbaa !98
  %60 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev, align 8, !tbaa !1
  %rc79 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %60, i32 0, i32 7
  %memory80 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc79, i32 0, i32 1
  %61 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory80, align 8, !tbaa !99
  %62 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev, align 8, !tbaa !1
  %63 = bitcast %struct.gx_device_s* %62 to i8*
  call void %59(%struct.gs_memory_s* %61, i8* %63, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0)) #5
  br label %do.cond.81

do.cond.81:                                       ; preds = %do.end.76
  br label %do.end.82

do.end.82:                                        ; preds = %do.cond.81
  store %struct.gx_device_s* null, %struct.gx_device_s** %pdev, align 8, !tbaa !1
  br label %if.end.87

if.else.83:                                       ; preds = %do.end.68
  br label %do.body.84

do.body.84:                                       ; preds = %if.else.83
  br label %do.cond.85

do.cond.85:                                       ; preds = %do.body.84
  br label %do.end.86

do.end.86:                                        ; preds = %do.cond.85
  br label %if.end.87

if.end.87:                                        ; preds = %do.end.86, %do.end.82
  br label %if.end.88

if.end.88:                                        ; preds = %if.end.87, %do.body.57
  br label %do.cond.89

do.cond.89:                                       ; preds = %if.end.88
  br label %do.end.90

do.end.90:                                        ; preds = %do.cond.89
  %64 = load i32, i32* %exit_status.addr, align 4, !tbaa !19
  %cmp91 = icmp eq i32 %64, 0
  br i1 %cmp91, label %if.then.93, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.90
  %65 = load i32, i32* %exit_status.addr, align 4, !tbaa !19
  %cmp92 = icmp eq i32 %65, -101
  br i1 %cmp92, label %if.then.93, label %if.end.94

if.then.93:                                       ; preds = %lor.lhs.false, %do.end.90
  %66 = load i32, i32* %code2, align 4, !tbaa !19
  store i32 %66, i32* %exit_status.addr, align 4, !tbaa !19
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.93, %lor.lhs.false
  %67 = bitcast i8** %dname to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #1
  %68 = bitcast %struct.gx_device_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %68) #1
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.94, %land.lhs.true, %if.end.14
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.95, %if.then.8
  %69 = bitcast i32* %code2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.160 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.96

if.end.96:                                        ; preds = %cleanup.cont, %entry
  %70 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %init_done97 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %70, i32 0, i32 4
  %71 = load i32, i32* %init_done97, align 4, !tbaa !38
  %cmp98 = icmp sge i32 %71, 2
  br i1 %cmp98, label %if.then.99, label %if.end.101

if.then.99:                                       ; preds = %if.end.96
  %72 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %call100 = call i32 @gs_main_run_string(%struct.gs_main_instance_s* %72, i8* getelementptr inbounds ([132 x i8], [132 x i8]* @.str.19, i32 0, i32 0), i32 0, i32* %exit_code, %struct.ref_s* %error_object) #5
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.99, %if.end.96
  %73 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %readline_data = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %73, i32 0, i32 10
  %74 = load i8*, i8** %readline_data, align 8, !tbaa !101
  call void @gp_readline_finit(i8* %74) #5
  %75 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %i_ctx_p102 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %75, i32 0, i32 14
  %76 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p102, align 8, !tbaa !20
  store %struct.gs_context_state_s* %76, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %call103 = call i32 @gs_debug_c(i32 58) #5
  %tobool104 = icmp ne i32 %call103, 0
  br i1 %tobool104, label %if.then.105, label %if.end.109

if.then.105:                                      ; preds = %if.end.101
  %77 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %78 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %memory106 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %78, i32 0, i32 1
  call void @print_resource_usage(%struct.gs_main_instance_s* %77, %struct.gs_dual_memory_s* %memory106, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0)) #5
  %79 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap107 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %79, i32 0, i32 0
  %80 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap107, align 8, !tbaa !13
  %81 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %call108 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %80, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.21, i32 0, i32 0), %struct.gs_main_instance_s* %81) #5
  br label %if.end.109

if.end.109:                                       ; preds = %if.then.105, %if.end.101
  %82 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %init_done110 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %82, i32 0, i32 4
  %83 = load i32, i32* %init_done110, align 4, !tbaa !38
  %cmp111 = icmp sge i32 %83, 1
  br i1 %cmp111, label %if.then.112, label %if.end.122

if.then.112:                                      ; preds = %if.end.109
  %84 = bitcast %struct.gs_memory_s** %mem_raw to i8*
  call void @llvm.lifetime.start(i64 8, i8* %84) #1
  %85 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %memory113 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %85, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory113, i32 0, i32 0
  %86 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !44
  %non_gc_memory = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %86, i32 0, i32 3
  %87 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !102
  store %struct.gs_memory_s* %87, %struct.gs_memory_s** %mem_raw, align 8, !tbaa !1
  %88 = bitcast %struct.i_plugin_holder_s** %h to i8*
  call void @llvm.lifetime.start(i64 8, i8* %88) #1
  %89 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %plugin_list = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %89, i32 0, i32 27
  %90 = load %struct.i_plugin_holder_s*, %struct.i_plugin_holder_s** %plugin_list, align 8, !tbaa !108
  store %struct.i_plugin_holder_s* %90, %struct.i_plugin_holder_s** %h, align 8, !tbaa !1
  %91 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %memory114 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %91, i32 0, i32 1
  %call115 = call i32 @alloc_restore_all(%struct.gs_dual_memory_s* %memory114) #5
  store i32 %call115, i32* %code.addr, align 4, !tbaa !19
  %92 = load i32, i32* %code.addr, align 4, !tbaa !19
  %cmp116 = icmp slt i32 %92, 0
  br i1 %cmp116, label %if.then.117, label %if.end.121

if.then.117:                                      ; preds = %if.then.112
  %93 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem_raw, align 8, !tbaa !1
  %call118 = call i8* @gs_program_name() #5
  %call119 = call i64 @gs_revision_number() #5
  call void @emprintf_program_ident(%struct.gs_memory_s* %93, i8* %call118, i64 %call119) #5
  %94 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem_raw, align 8, !tbaa !1
  %95 = load i32, i32* %code.addr, align 4, !tbaa !19
  %call120 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %94, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.22, i32 0, i32 0), i32 %95) #5
  br label %if.end.121

if.end.121:                                       ; preds = %if.then.117, %if.then.112
  %96 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem_raw, align 8, !tbaa !1
  %97 = load %struct.i_plugin_holder_s*, %struct.i_plugin_holder_s** %h, align 8, !tbaa !1
  call void @i_plugin_finit(%struct.gs_memory_s* %96, %struct.i_plugin_holder_s* %97) #5
  %98 = bitcast %struct.i_plugin_holder_s** %h to i8*
  call void @llvm.lifetime.end(i64 8, i8* %98) #1
  %99 = bitcast %struct.gs_memory_s** %mem_raw to i8*
  call void @llvm.lifetime.end(i64 8, i8* %99) #1
  br label %if.end.122

if.end.122:                                       ; preds = %if.end.121, %if.end.109
  %100 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap123 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %100, i32 0, i32 0
  %101 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap123, align 8, !tbaa !13
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %101, i32 0, i32 2
  %102 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !5
  %fstdout2 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %102, i32 0, i32 4
  %103 = load %struct._IO_FILE*, %struct._IO_FILE** %fstdout2, align 8, !tbaa !109
  %tobool124 = icmp ne %struct._IO_FILE* %103, null
  br i1 %tobool124, label %land.lhs.true.125, label %if.end.147

land.lhs.true.125:                                ; preds = %if.end.122
  %104 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap126 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %104, i32 0, i32 0
  %105 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap126, align 8, !tbaa !13
  %gs_lib_ctx127 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %105, i32 0, i32 2
  %106 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx127, align 8, !tbaa !5
  %fstdout2128 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %106, i32 0, i32 4
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** %fstdout2128, align 8, !tbaa !109
  %108 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap129 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %108, i32 0, i32 0
  %109 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap129, align 8, !tbaa !13
  %gs_lib_ctx130 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %109, i32 0, i32 2
  %110 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx130, align 8, !tbaa !5
  %fstdout = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %110, i32 0, i32 2
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** %fstdout, align 8, !tbaa !110
  %cmp131 = icmp ne %struct._IO_FILE* %107, %111
  br i1 %cmp131, label %land.lhs.true.132, label %if.end.147

land.lhs.true.132:                                ; preds = %land.lhs.true.125
  %112 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap133 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %112, i32 0, i32 0
  %113 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap133, align 8, !tbaa !13
  %gs_lib_ctx134 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %113, i32 0, i32 2
  %114 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx134, align 8, !tbaa !5
  %fstdout2135 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %114, i32 0, i32 4
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** %fstdout2135, align 8, !tbaa !109
  %116 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap136 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %116, i32 0, i32 0
  %117 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap136, align 8, !tbaa !13
  %gs_lib_ctx137 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %117, i32 0, i32 2
  %118 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx137, align 8, !tbaa !5
  %fstderr = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %118, i32 0, i32 3
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** %fstderr, align 8, !tbaa !111
  %cmp138 = icmp ne %struct._IO_FILE* %115, %119
  br i1 %cmp138, label %if.then.139, label %if.end.147

if.then.139:                                      ; preds = %land.lhs.true.132
  %120 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap140 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %120, i32 0, i32 0
  %121 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap140, align 8, !tbaa !13
  %gs_lib_ctx141 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %121, i32 0, i32 2
  %122 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx141, align 8, !tbaa !5
  %fstdout2142 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %122, i32 0, i32 4
  %123 = load %struct._IO_FILE*, %struct._IO_FILE** %fstdout2142, align 8, !tbaa !109
  %call143 = call i32 @fclose(%struct._IO_FILE* %123) #5
  %124 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap144 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %124, i32 0, i32 0
  %125 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap144, align 8, !tbaa !13
  %gs_lib_ctx145 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %125, i32 0, i32 2
  %126 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx145, align 8, !tbaa !5
  %fstdout2146 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %126, i32 0, i32 4
  store %struct._IO_FILE* null, %struct._IO_FILE** %fstdout2146, align 8, !tbaa !109
  br label %if.end.147

if.end.147:                                       ; preds = %if.then.139, %land.lhs.true.132, %land.lhs.true.125, %if.end.122
  %127 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap148 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %127, i32 0, i32 0
  %128 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap148, align 8, !tbaa !13
  %gs_lib_ctx149 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %128, i32 0, i32 2
  %129 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx149, align 8, !tbaa !5
  %stdout_is_redirected = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %129, i32 0, i32 5
  store i32 0, i32* %stdout_is_redirected, align 4, !tbaa !112
  %130 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap150 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %130, i32 0, i32 0
  %131 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap150, align 8, !tbaa !13
  %gs_lib_ctx151 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %131, i32 0, i32 2
  %132 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx151, align 8, !tbaa !5
  %stdout_to_stderr = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %132, i32 0, i32 6
  store i32 0, i32* %stdout_to_stderr, align 4, !tbaa !113
  %133 = load i8*, i8** %tempnames, align 8, !tbaa !1
  %tobool152 = icmp ne i8* %133, null
  br i1 %tobool152, label %if.then.153, label %if.end.158

if.then.153:                                      ; preds = %if.end.147
  %134 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %134) #1
  %135 = load i8*, i8** %tempnames, align 8, !tbaa !1
  store i8* %135, i8** %p, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.153
  %136 = load i8*, i8** %p, align 8, !tbaa !1
  %137 = load i8, i8* %136, align 1, !tbaa !30
  %tobool154 = icmp ne i8 %137, 0
  br i1 %tobool154, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %138 = load i8*, i8** %p, align 8, !tbaa !1
  %call155 = call i32 @unlink(i8* %138) #5
  %139 = load i8*, i8** %p, align 8, !tbaa !1
  %call156 = call i64 @strlen(i8* %139) #7
  %add157 = add i64 %call156, 1
  %140 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %140, i64 %add157
  store i8* %add.ptr, i8** %p, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %141 = load i8*, i8** %tempnames, align 8, !tbaa !1
  call void @free(i8* %141) #6
  %142 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %142) #1
  br label %if.end.158

if.end.158:                                       ; preds = %while.end, %if.end.147
  %143 = load i32, i32* %exit_status.addr, align 4, !tbaa !19
  %144 = load i32, i32* %code.addr, align 4, !tbaa !19
  %145 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap159 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %145, i32 0, i32 0
  %146 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap159, align 8, !tbaa !13
  call void @gs_lib_finit(i32 %143, i32 %144, %struct.gs_memory_s* %146) #5
  %147 = load i32, i32* %exit_status.addr, align 4, !tbaa !19
  store i32 %147, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.160

cleanup.160:                                      ; preds = %if.end.158, %cleanup
  %148 = bitcast i8** %tempnames to i8*
  call void @llvm.lifetime.end(i64 8, i8* %148) #1
  %149 = bitcast %struct.ref_s* %error_object to i8*
  call void @llvm.lifetime.end(i64 16, i8* %149) #1
  %150 = bitcast i32* %exit_code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %150) #1
  %151 = bitcast %struct.gs_context_state_s** %i_ctx_p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %151) #1
  %152 = load i32, i32* %retval
  ret i32 %152
}

; Function Attrs: nounwind uwtable
define internal i8* @gs_main_tempnames(%struct.gs_main_instance_s* %minst) #0 {
entry:
  %retval = alloca i8*, align 8
  %minst.addr = alloca %struct.gs_main_instance_s*, align 8
  %i_ctx_p = alloca %struct.gs_context_state_s*, align 8
  %SAFETY = alloca %struct.ref_s*, align 8
  %tempfiles = alloca %struct.ref_s*, align 8
  %keyval = alloca [2 x %struct.ref_s], align 16
  %tempnames = alloca i8*, align 8
  %i = alloca i32, align 4
  %idict = alloca i32, align 4
  %len = alloca i32, align 4
  %data = alloca i8*, align 8
  %size = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_main_instance_s* %minst, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_context_state_s** %i_ctx_p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %i_ctx_p1 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %1, i32 0, i32 14
  %2 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p1, align 8, !tbaa !20
  store %struct.gs_context_state_s* %2, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %3 = bitcast %struct.ref_s** %SAFETY to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast %struct.ref_s** %tempfiles to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast [2 x %struct.ref_s]* %keyval to i8*
  call void @llvm.lifetime.start(i64 32, i8* %5) #1
  %6 = bitcast i8** %tempnames to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i8* null, i8** %tempnames, align 8, !tbaa !1
  %7 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %idict to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  store i32 0, i32* %len, align 4, !tbaa !19
  %10 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store i8* null, i8** %data, align 8, !tbaa !1
  %11 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %init_done = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %12, i32 0, i32 4
  %13 = load i32, i32* %init_done, align 4, !tbaa !38
  %cmp = icmp sge i32 %13, 2
  br i1 %cmp, label %if.then, label %if.end.44

if.then:                                          ; preds = %entry
  %14 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %dict_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %14, i32 0, i32 24
  %system_dict = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack, i32 0, i32 7
  %call = call i32 @dict_find_string(%struct.ref_s* %system_dict, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0), %struct.ref_s** %SAFETY) #5
  %cmp2 = icmp sle i32 %call, 0
  br i1 %cmp2, label %if.then.5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %15 = load %struct.ref_s*, %struct.ref_s** %SAFETY, align 8, !tbaa !1
  %call3 = call i32 @dict_find_string(%struct.ref_s* %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i32 0, i32 0), %struct.ref_s** %tempfiles) #5
  %cmp4 = icmp sle i32 %call3, 0
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %lor.lhs.false, %if.then
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %16 = load %struct.ref_s*, %struct.ref_s** %tempfiles, align 8, !tbaa !1
  %call6 = call i32 @dict_first(%struct.ref_s* %16) #5
  store i32 %call6, i32* %idict, align 4, !tbaa !19
  br label %while.cond

while.cond:                                       ; preds = %if.end.14, %if.end
  %17 = load %struct.ref_s*, %struct.ref_s** %tempfiles, align 8, !tbaa !1
  %18 = load i32, i32* %idict, align 4, !tbaa !19
  %arrayidx = getelementptr inbounds [2 x %struct.ref_s], [2 x %struct.ref_s]* %keyval, i32 0, i64 0
  %call7 = call i32 @dict_next(%struct.ref_s* %17, i32 %18, %struct.ref_s* %arrayidx) #5
  store i32 %call7, i32* %idict, align 4, !tbaa !19
  %cmp8 = icmp sge i32 %call7, 0
  br i1 %cmp8, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %19 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %19, i32 0, i32 0
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap, align 8, !tbaa !13
  %arrayidx9 = getelementptr inbounds [2 x %struct.ref_s], [2 x %struct.ref_s]* %keyval, i32 0, i64 0
  %call10 = call i32 @obj_string_data(%struct.gs_memory_s* %20, %struct.ref_s* %arrayidx9, i8** %data, i32* %size) #5
  %cmp11 = icmp sge i32 %call10, 0
  br i1 %cmp11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %while.body
  %21 = load i32, i32* %size, align 4, !tbaa !19
  %add = add i32 %21, 1
  %22 = load i32, i32* %len, align 4, !tbaa !19
  %add13 = add i32 %22, %add
  store i32 %add13, i32* %len, align 4, !tbaa !19
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %23 = load i32, i32* %len, align 4, !tbaa !19
  %cmp15 = icmp ne i32 %23, 0
  br i1 %cmp15, label %if.then.16, label %if.end.19

if.then.16:                                       ; preds = %while.end
  %24 = load i32, i32* %len, align 4, !tbaa !19
  %add17 = add nsw i32 %24, 1
  %conv = sext i32 %add17 to i64
  %call18 = call noalias i8* @malloc(i64 %conv) #6
  store i8* %call18, i8** %tempnames, align 8, !tbaa !1
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.16, %while.end
  %25 = load i8*, i8** %tempnames, align 8, !tbaa !1
  %tobool = icmp ne i8* %25, null
  br i1 %tobool, label %if.then.20, label %if.end.43

if.then.20:                                       ; preds = %if.end.19
  %26 = load i8*, i8** %tempnames, align 8, !tbaa !1
  %27 = load i32, i32* %len, align 4, !tbaa !19
  %add21 = add nsw i32 %27, 1
  %conv22 = sext i32 %add21 to i64
  %call23 = call i8* @memset(i8* %26, i32 0, i64 %conv22) #6
  %28 = load %struct.ref_s*, %struct.ref_s** %tempfiles, align 8, !tbaa !1
  %call24 = call i32 @dict_first(%struct.ref_s* %28) #5
  store i32 %call24, i32* %idict, align 4, !tbaa !19
  store i32 0, i32* %i, align 4, !tbaa !19
  br label %while.cond.25

while.cond.25:                                    ; preds = %if.end.41, %if.then.20
  %29 = load %struct.ref_s*, %struct.ref_s** %tempfiles, align 8, !tbaa !1
  %30 = load i32, i32* %idict, align 4, !tbaa !19
  %arrayidx26 = getelementptr inbounds [2 x %struct.ref_s], [2 x %struct.ref_s]* %keyval, i32 0, i64 0
  %call27 = call i32 @dict_next(%struct.ref_s* %29, i32 %30, %struct.ref_s* %arrayidx26) #5
  store i32 %call27, i32* %idict, align 4, !tbaa !19
  %cmp28 = icmp sge i32 %call27, 0
  br i1 %cmp28, label %while.body.30, label %while.end.42

while.body.30:                                    ; preds = %while.cond.25
  %31 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap31 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %31, i32 0, i32 0
  %32 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap31, align 8, !tbaa !13
  %arrayidx32 = getelementptr inbounds [2 x %struct.ref_s], [2 x %struct.ref_s]* %keyval, i32 0, i64 0
  %call33 = call i32 @obj_string_data(%struct.gs_memory_s* %32, %struct.ref_s* %arrayidx32, i8** %data, i32* %size) #5
  %cmp34 = icmp sge i32 %call33, 0
  br i1 %cmp34, label %if.then.36, label %if.end.41

if.then.36:                                       ; preds = %while.body.30
  %33 = load i8*, i8** %tempnames, align 8, !tbaa !1
  %34 = load i32, i32* %i, align 4, !tbaa !19
  %idx.ext = sext i32 %34 to i64
  %add.ptr = getelementptr inbounds i8, i8* %33, i64 %idx.ext
  %35 = load i8*, i8** %data, align 8, !tbaa !1
  %36 = load i32, i32* %size, align 4, !tbaa !19
  %conv37 = zext i32 %36 to i64
  %call38 = call i8* @memcpy(i8* %add.ptr, i8* %35, i64 %conv37) #6
  %37 = load i32, i32* %size, align 4, !tbaa !19
  %38 = load i32, i32* %i, align 4, !tbaa !19
  %add39 = add i32 %38, %37
  store i32 %add39, i32* %i, align 4, !tbaa !19
  %39 = load i32, i32* %i, align 4, !tbaa !19
  %inc = add nsw i32 %39, 1
  store i32 %inc, i32* %i, align 4, !tbaa !19
  %idxprom = sext i32 %39 to i64
  %40 = load i8*, i8** %tempnames, align 8, !tbaa !1
  %arrayidx40 = getelementptr inbounds i8, i8* %40, i64 %idxprom
  store i8 0, i8* %arrayidx40, align 1, !tbaa !30
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.36, %while.body.30
  br label %while.cond.25

while.end.42:                                     ; preds = %while.cond.25
  br label %if.end.43

if.end.43:                                        ; preds = %while.end.42, %if.end.19
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %entry
  %41 = load i8*, i8** %tempnames, align 8, !tbaa !1
  store i8* %41, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.44, %if.then.5
  %42 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #1
  %43 = bitcast i8** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #1
  %44 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #1
  %45 = bitcast i32* %idict to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #1
  %46 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #1
  %47 = bitcast i8** %tempnames to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #1
  %48 = bitcast [2 x %struct.ref_s]* %keyval to i8*
  call void @llvm.lifetime.end(i64 32, i8* %48) #1
  %49 = bitcast %struct.ref_s** %tempfiles to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #1
  %50 = bitcast %struct.ref_s** %SAFETY to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #1
  %51 = bitcast %struct.gs_context_state_s** %i_ctx_p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #1
  %52 = load i8*, i8** %retval
  ret i8* %52
}

declare i32 @interp_reclaim(%struct.gs_context_state_s**, i32) #3

declare i32 @gs_closedevice(%struct.gx_device_s*) #3

declare void @gp_readline_finit(i8*) #3

declare i32 @alloc_restore_all(%struct.gs_dual_memory_s*) #3

declare void @i_plugin_finit(%struct.gs_memory_s*, %struct.i_plugin_holder_s*) #3

declare i32 @fclose(%struct._IO_FILE*) #3

declare i32 @unlink(i8*) #3

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define i32 @gs_to_exit_with_code(%struct.gs_memory_s* %mem, i32 %exit_status, i32 %code) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %exit_status.addr = alloca i32, align 4
  %code.addr = alloca i32, align 4
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i32 %exit_status, i32* %exit_status.addr, align 4, !tbaa !19
  store i32 %code, i32* %code.addr, align 4, !tbaa !19
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call %struct.gs_main_instance_s* @get_minst_from_memory(%struct.gs_memory_s* %0) #5
  %1 = load i32, i32* %exit_status.addr, align 4, !tbaa !19
  %2 = load i32, i32* %code.addr, align 4, !tbaa !19
  %call1 = call i32 @gs_main_finit(%struct.gs_main_instance_s* %call, i32 %1, i32 %2) #5
  ret i32 %call1
}

; Function Attrs: nounwind uwtable
define i32 @gs_to_exit(%struct.gs_memory_s* %mem, i32 %exit_status) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %exit_status.addr = alloca i32, align 4
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i32 %exit_status, i32* %exit_status.addr, align 4, !tbaa !19
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %1 = load i32, i32* %exit_status.addr, align 4, !tbaa !19
  %call = call i32 @gs_to_exit_with_code(%struct.gs_memory_s* %0, i32 %1, i32 0) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define void @gs_abort(%struct.gs_memory_s* %mem) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  call void @gp_do_exit(i32 1) #5
  ret void
}

declare void @gp_do_exit(i32) #3

; Function Attrs: nounwind uwtable
define void @gs_main_dump_stack(%struct.gs_main_instance_s* %minst, i32 %code, %struct.ref_s* %perror_object) #0 {
entry:
  %minst.addr = alloca %struct.gs_main_instance_s*, align 8
  %code.addr = alloca i32, align 4
  %perror_object.addr = alloca %struct.ref_s*, align 8
  %i_ctx_p = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_main_instance_s* %minst, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  store i32 %code, i32* %code.addr, align 4, !tbaa !19
  store %struct.ref_s* %perror_object, %struct.ref_s** %perror_object.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_context_state_s** %i_ctx_p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %i_ctx_p1 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %1, i32 0, i32 14
  %2 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p1, align 8, !tbaa !20
  store %struct.gs_context_state_s* %2, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %3 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %call = call i32 @zflush(%struct.gs_context_state_s* %3) #5
  %4 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %4, i32 0, i32 0
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap, align 8, !tbaa !13
  %6 = load i32, i32* %code.addr, align 4, !tbaa !19
  %call2 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %5, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.24, i32 0, i32 0), i32 %6) #5
  %7 = load %struct.ref_s*, %struct.ref_s** %perror_object.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.ref_s* %7, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap3 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %8, i32 0, i32 0
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap3, align 8, !tbaa !13
  %call4 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0)) #5
  %10 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap5 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %10, i32 0, i32 0
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap5, align 8, !tbaa !13
  %12 = load %struct.ref_s*, %struct.ref_s** %perror_object.addr, align 8, !tbaa !1
  call void @debug_print_ref(%struct.gs_memory_s* %11, %struct.ref_s* %12) #5
  %13 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap6 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %13, i32 0, i32 0
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap6, align 8, !tbaa !13
  %call7 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i32 0, i32 0), i32 10) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap8 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %15, i32 0, i32 0
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap8, align 8, !tbaa !13
  %17 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %17, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  call void @debug_dump_stack(%struct.gs_memory_s* %16, %struct.ref_stack_s* %stack, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i32 0, i32 0)) #5
  %18 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap9 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %18, i32 0, i32 0
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap9, align 8, !tbaa !13
  %20 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %20, i32 0, i32 25
  %stack10 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  call void @debug_dump_stack(%struct.gs_memory_s* %19, %struct.ref_stack_s* %stack10, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i32 0, i32 0)) #5
  %21 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap11 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %21, i32 0, i32 0
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap11, align 8, !tbaa !13
  %23 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %dict_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %23, i32 0, i32 24
  %stack12 = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack, i32 0, i32 0
  call void @debug_dump_stack(%struct.gs_memory_s* %22, %struct.ref_stack_s* %stack12, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0)) #5
  %24 = bitcast %struct.gs_context_state_s** %i_ctx_p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  ret void
}

declare i32 @zflush(%struct.gs_context_state_s*) #3

declare void @debug_print_ref(%struct.gs_memory_s*, %struct.ref_s*) #3

declare void @debug_dump_stack(%struct.gs_memory_s*, %struct.ref_stack_s*, i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @extend_path_list_container(%struct.gs_main_instance_s* %minst, %struct.gs_file_path_s* %pfp) #0 {
entry:
  %retval = alloca i32, align 4
  %minst.addr = alloca %struct.gs_main_instance_s*, align 8
  %pfp.addr = alloca %struct.gs_file_path_s*, align 8
  %len = alloca i32, align 4
  %paths = alloca %struct.ref_s*, align 8
  %opaths = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_main_instance_s* %minst, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  store %struct.gs_file_path_s* %pfp, %struct.gs_file_path_s** %pfp.addr, align 8, !tbaa !1
  %0 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %lib_path = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %1, i32 0, i32 8
  %container = getelementptr inbounds %struct.gs_file_path_s, %struct.gs_file_path_s* %lib_path, i32 0, i32 0
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %container, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 2
  %2 = load i32, i32* %rsize, align 4, !tbaa !33
  store i32 %2, i32* %len, align 4, !tbaa !19
  %3 = bitcast %struct.ref_s** %paths to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast %struct.ref_s** %opaths to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %lib_path1 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %5, i32 0, i32 8
  %container2 = getelementptr inbounds %struct.gs_file_path_s, %struct.gs_file_path_s* %lib_path1, i32 0, i32 0
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %container2, i32 0, i32 1
  %refs = bitcast %union.v* %value to %struct.ref_s**
  %6 = load %struct.ref_s*, %struct.ref_s** %refs, align 8, !tbaa !1
  store %struct.ref_s* %6, %struct.ref_s** %opaths, align 8, !tbaa !1
  %7 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %7, i32 0, i32 0
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap, align 8, !tbaa !13
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %8, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %9 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !31
  %10 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap3 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %10, i32 0, i32 0
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap3, align 8, !tbaa !13
  %12 = load i32, i32* %len, align 4, !tbaa !19
  %add = add i32 %12, 5
  %call = call i8* %9(%struct.gs_memory_s* %11, i32 %add, i32 16, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.32, i32 0, i32 0)) #5
  %13 = bitcast i8* %call to %struct.ref_s*
  store %struct.ref_s* %13, %struct.ref_s** %paths, align 8, !tbaa !1
  %14 = load %struct.ref_s*, %struct.ref_s** %paths, align 8, !tbaa !1
  %cmp = icmp eq %struct.ref_s* %14, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %15 = load %struct.ref_s*, %struct.ref_s** %paths, align 8, !tbaa !1
  %16 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %lib_path4 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %16, i32 0, i32 8
  %container5 = getelementptr inbounds %struct.gs_file_path_s, %struct.gs_file_path_s* %lib_path4, i32 0, i32 0
  %value6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %container5, i32 0, i32 1
  %refs7 = bitcast %union.v* %value6 to %struct.ref_s**
  store %struct.ref_s* %15, %struct.ref_s** %refs7, align 8, !tbaa !1
  %17 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %lib_path8 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %17, i32 0, i32 8
  %container9 = getelementptr inbounds %struct.gs_file_path_s, %struct.gs_file_path_s* %lib_path8, i32 0, i32 0
  %tas10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %container9, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas10, i32 0, i32 0
  store i16 1024, i16* %type_attrs, align 2, !tbaa !32
  %18 = load i32, i32* %len, align 4, !tbaa !19
  %add11 = add i32 %18, 5
  %19 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %lib_path12 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %19, i32 0, i32 8
  %container13 = getelementptr inbounds %struct.gs_file_path_s, %struct.gs_file_path_s* %lib_path12, i32 0, i32 0
  %tas14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %container13, i32 0, i32 0
  %rsize15 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas14, i32 0, i32 2
  store i32 %add11, i32* %rsize15, align 4, !tbaa !33
  %20 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %lib_path16 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %20, i32 0, i32 8
  %container17 = getelementptr inbounds %struct.gs_file_path_s, %struct.gs_file_path_s* %lib_path16, i32 0, i32 0
  %value18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %container17, i32 0, i32 1
  %refs19 = bitcast %union.v* %value18 to %struct.ref_s**
  %21 = load %struct.ref_s*, %struct.ref_s** %refs19, align 8, !tbaa !1
  %22 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %lib_path20 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %22, i32 0, i32 8
  %list = getelementptr inbounds %struct.gs_file_path_s, %struct.gs_file_path_s* %lib_path20, i32 0, i32 1
  %value21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %list, i32 0, i32 1
  %refs22 = bitcast %union.v* %value21 to %struct.ref_s**
  store %struct.ref_s* %21, %struct.ref_s** %refs22, align 8, !tbaa !1
  %23 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %lib_path23 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %23, i32 0, i32 8
  %list24 = getelementptr inbounds %struct.gs_file_path_s, %struct.gs_file_path_s* %lib_path23, i32 0, i32 1
  %tas25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %list24, i32 0, i32 0
  %type_attrs26 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas25, i32 0, i32 0
  store i16 1120, i16* %type_attrs26, align 2, !tbaa !32
  %24 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %lib_path27 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %24, i32 0, i32 8
  %list28 = getelementptr inbounds %struct.gs_file_path_s, %struct.gs_file_path_s* %lib_path27, i32 0, i32 1
  %tas29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %list28, i32 0, i32 0
  %rsize30 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas29, i32 0, i32 2
  store i32 0, i32* %rsize30, align 4, !tbaa !33
  %25 = load %struct.ref_s*, %struct.ref_s** %paths, align 8, !tbaa !1
  %26 = bitcast %struct.ref_s* %25 to i8*
  %27 = load %struct.ref_s*, %struct.ref_s** %opaths, align 8, !tbaa !1
  %28 = bitcast %struct.ref_s* %27 to i8*
  %29 = load i32, i32* %len, align 4, !tbaa !19
  %conv = zext i32 %29 to i64
  %mul = mul i64 %conv, 16
  %call31 = call i8* @memcpy(i8* %26, i8* %28, i64 %mul) #6
  %30 = load i32, i32* %len, align 4, !tbaa !19
  %31 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %lib_path32 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %31, i32 0, i32 8
  %list33 = getelementptr inbounds %struct.gs_file_path_s, %struct.gs_file_path_s* %lib_path32, i32 0, i32 1
  %tas34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %list33, i32 0, i32 0
  %rsize35 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas34, i32 0, i32 2
  store i32 %30, i32* %rsize35, align 4, !tbaa !33
  %32 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap36 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %32, i32 0, i32 0
  %33 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap36, align 8, !tbaa !13
  %procs37 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %33, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs37, i32 0, i32 2
  %34 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !114
  %35 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst.addr, align 8, !tbaa !1
  %heap38 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %35, i32 0, i32 0
  %36 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap38, align 8, !tbaa !13
  %37 = load %struct.ref_s*, %struct.ref_s** %opaths, align 8, !tbaa !1
  %38 = bitcast %struct.ref_s* %37 to i8*
  call void %34(%struct.gs_memory_s* %36, i8* %38, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.33, i32 0, i32 0)) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %39 = bitcast %struct.ref_s** %opaths to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  %40 = bitcast %struct.ref_s** %paths to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  %41 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #1
  %42 = load i32, i32* %retval
  ret i32 %42
}

declare i32 @gs_interpret(%struct.gs_context_state_s**, %struct.ref_s*, i32, i32*, %struct.ref_s*) #3

declare void @gs_scanner_init_options(%struct.scanner_state_s*, %struct.ref_s*, i32) #3

declare i32 @gs_scan_token(%struct.gs_context_state_s*, %struct.ref_s*, %struct.scanner_state_s*) #3

declare i32 @ref_stack_push(%struct.ref_stack_s*, i32) #3

declare %struct.ref_s* @ref_stack_index(%struct.ref_stack_s*, i64) #3

declare i32 @ref_stack_count(%struct.ref_stack_s*) #3

declare i32 @dict_find_string(%struct.ref_s*, i8*, %struct.ref_s**) #3

declare i32 @dict_first(%struct.ref_s*) #3

declare i32 @dict_next(%struct.ref_s*, i32, %struct.ref_s*) #3

declare i32 @obj_string_data(%struct.gs_memory_s*, %struct.ref_s*, i8**, i32*) #3

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin }
attributes #6 = { nobuiltin nounwind }
attributes #7 = { nobuiltin nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !2, i64 192}
!6 = !{!"gs_memory_s", !2, i64 0, !7, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!7 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!8 = !{!9, !2, i64 112}
!9 = !{!"gs_lib_ctx_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !10, i64 40, !10, i64 44, !10, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !11, i64 104, !2, i64 112, !2, i64 120, !10, i64 128, !2, i64 136, !10, i64 144, !10, i64 148, !3, i64 152, !2, i64 168, !10, i64 176, !2, i64 184, !10, i64 192, !2, i64 200, !2, i64 208}
!10 = !{!"int", !3, i64 0}
!11 = !{!"long", !3, i64 0}
!12 = !{!6, !2, i64 8}
!13 = !{!14, !2, i64 0}
!14 = !{!"gs_main_instance_s", !2, i64 0, !10, i64 8, !11, i64 16, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !15, i64 48, !3, i64 104, !2, i64 120, !16, i64 128, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !10, i64 176}
!15 = !{!"gs_file_path_s", !16, i64 0, !16, i64 16, !2, i64 32, !2, i64 40, !10, i64 48}
!16 = !{!"ref_s", !17, i64 0, !3, i64 8}
!17 = !{!"tas_s", !18, i64 0, !18, i64 2, !10, i64 4}
!18 = !{!"short", !3, i64 0}
!19 = !{!10, !10, i64 0}
!20 = !{!14, !2, i64 160}
!21 = !{!22, !10, i64 332}
!22 = !{!"gs_context_state_s", !2, i64 0, !23, i64 8, !10, i64 80, !16, i64 88, !16, i64 104, !11, i64 120, !11, i64 128, !11, i64 136, !10, i64 144, !10, i64 148, !16, i64 152, !16, i64 168, !10, i64 184, !10, i64 188, !10, i64 192, !10, i64 196, !2, i64 200, !3, i64 208, !2, i64 256, !25, i64 264, !25, i64 304, !2, i64 344, !10, i64 352, !2, i64 360, !26, i64 368, !28, i64 520, !29, i64 624, !2, i64 720}
!23 = !{!"gs_dual_memory_s", !2, i64 0, !24, i64 8, !10, i64 48, !2, i64 56, !10, i64 64, !10, i64 68}
!24 = !{!"vm_spaces_s", !2, i64 0, !3, i64 8}
!25 = !{!"op_array_table_s", !16, i64 0, !2, i64 16, !10, i64 24, !10, i64 28, !10, i64 32}
!26 = !{!"dict_stack_s", !27, i64 0, !10, i64 96, !10, i64 100, !10, i64 104, !2, i64 112, !10, i64 120, !2, i64 128, !16, i64 136}
!27 = !{!"ref_stack_s", !2, i64 0, !2, i64 8, !2, i64 16, !16, i64 24, !10, i64 40, !10, i64 44, !16, i64 48, !10, i64 64, !10, i64 68, !10, i64 72, !2, i64 80, !2, i64 88}
!28 = !{!"exec_stack_s", !27, i64 0, !2, i64 96}
!29 = !{!"op_stack_s", !27, i64 0}
!30 = !{!3, !3, i64 0}
!31 = !{!6, !2, i64 88}
!32 = !{!16, !18, i64 0}
!33 = !{!16, !10, i64 4}
!34 = !{!14, !2, i64 80}
!35 = !{!14, !2, i64 88}
!36 = !{!14, !10, i64 96}
!37 = !{!14, !10, i64 32}
!38 = !{!14, !10, i64 28}
!39 = !{!14, !10, i64 8}
!40 = !{!41, !2, i64 8}
!41 = !{!"_ssn", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!42 = !{!14, !11, i64 16}
!43 = !{!9, !2, i64 120}
!44 = !{!22, !2, i64 8}
!45 = !{i64 0, i64 2, !46, i64 2, i64 2, !46, i64 4, i64 4, !19, i64 8, i64 8, !47, i64 8, i64 2, !46, i64 8, i64 4, !48, i64 8, i64 8, !47, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !47, i64 16, i64 8, !1, i64 24, i64 4, !19, i64 28, i64 4, !19, i64 32, i64 4, !19}
!46 = !{!18, !18, i64 0}
!47 = !{!11, !11, i64 0}
!48 = !{!49, !49, i64 0}
!49 = !{!"float", !3, i64 0}
!50 = !{!14, !2, i64 152}
!51 = !{!22, !2, i64 624}
!52 = !{i64 0, i64 2, !46, i64 2, i64 2, !46, i64 4, i64 4, !19, i64 8, i64 8, !47, i64 8, i64 2, !46, i64 8, i64 4, !48, i64 8, i64 8, !47, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !47}
!53 = !{!22, !2, i64 0}
!54 = !{!14, !10, i64 176}
!55 = !{!56, !2, i64 1664}
!56 = !{!"gx_device_s", !10, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !10, i64 40, !2, i64 48, !57, i64 56, !10, i64 80, !10, i64 84, !10, i64 88, !58, i64 96, !60, i64 816, !10, i64 832, !10, i64 836, !10, i64 840, !10, i64 844, !10, i64 848, !10, i64 852, !3, i64 856, !3, i64 864, !10, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !11, i64 928, !11, i64 936, !10, i64 944, !10, i64 948, !10, i64 952, !10, i64 956, !10, i64 960, !11, i64 968, !11, i64 976, !61, i64 984, !10, i64 1052, !10, i64 1056, !62, i64 1064, !2, i64 1104, !3, i64 1112, !64, i64 1120, !65, i64 1144}
!57 = !{!"rc_header_s", !11, i64 0, !2, i64 8, !2, i64 16}
!58 = !{!"gx_device_color_info_s", !10, i64 0, !10, i64 4, !3, i64 8, !18, i64 12, !3, i64 14, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !59, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !11, i64 704, !10, i64 712}
!59 = !{!"gx_device_anti_alias_info_s", !10, i64 0, !10, i64 4}
!60 = !{!"gx_device_cached_colors_s", !11, i64 0, !11, i64 8}
!61 = !{!"gx_stroked_gradient_recognizer_s", !10, i64 0, !3, i64 4, !3, i64 36}
!62 = !{!"gdev_space_params_s", !11, i64 0, !11, i64 8, !63, i64 16, !10, i64 32, !3, i64 36}
!63 = !{!"gx_band_params_s", !10, i64 0, !10, i64 4, !11, i64 8}
!64 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!65 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!66 = !{!14, !2, i64 168}
!67 = !{!56, !2, i64 16}
!68 = !{!6, !2, i64 32}
!69 = !{!6, !2, i64 40}
!70 = !{!71, !11, i64 0}
!71 = !{!"gs_memory_status_s", !11, i64 0, !11, i64 8, !10, i64 16}
!72 = !{!71, !11, i64 8}
!73 = !{!14, !10, i64 36}
!74 = !{!75, !2, i64 0}
!75 = !{!"gx_io_device_s", !2, i64 0, !2, i64 8, !76, i64 16, !2, i64 120}
!76 = !{!"gx_io_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96}
!77 = !{!22, !2, i64 200}
!78 = !{!79, !79, i64 0}
!79 = !{!"double", !3, i64 0}
!80 = !{!81, !2, i64 0}
!81 = !{!"gs_string_s", !2, i64 0, !10, i64 8}
!82 = !{!81, !10, i64 8}
!83 = !{!23, !2, i64 56}
!84 = !{!85, !2, i64 1872}
!85 = !{!"gs_state_s", !10, i64 0, !2, i64 8, !2, i64 16, !86, i64 24, !10, i64 128, !89, i64 132, !10, i64 168, !90, i64 176, !90, i64 192, !10, i64 208, !10, i64 212, !18, i64 216, !3, i64 220, !91, i64 224, !91, i64 228, !92, i64 232, !11, i64 240, !10, i64 248, !10, i64 252, !10, i64 256, !2, i64 264, !10, i64 272, !10, i64 276, !10, i64 280, !10, i64 284, !10, i64 288, !10, i64 292, !49, i64 296, !93, i64 300, !10, i64 308, !10, i64 312, !10, i64 316, !49, i64 320, !10, i64 324, !10, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !10, i64 408, !2, i64 416, !2, i64 424, !94, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !95, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !95, i64 1336, !2, i64 1616, !87, i64 1624, !10, i64 1648, !87, i64 1652, !10, i64 1676, !2, i64 1680, !2, i64 1688, !2, i64 1696, !2, i64 1704, !11, i64 1712, !11, i64 1720, !2, i64 1728, !10, i64 1736, !3, i64 1744, !2, i64 1792, !2, i64 1800, !89, i64 1808, !10, i64 1844, !3, i64 1848, !3, i64 1852, !2, i64 1856, !10, i64 1864, !2, i64 1872, !2, i64 1880, !96, i64 1888}
!86 = !{!"gx_line_params_s", !49, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !10, i64 20, !49, i64 24, !49, i64 28, !49, i64 32, !10, i64 36, !87, i64 40, !88, i64 64}
!87 = !{!"gs_matrix_s", !49, i64 0, !49, i64 4, !49, i64 8, !49, i64 12, !49, i64 16, !49, i64 20}
!88 = !{!"gx_dash_params_s", !2, i64 0, !10, i64 8, !49, i64 12, !10, i64 16, !49, i64 20, !10, i64 24, !10, i64 28, !49, i64 32}
!89 = !{!"gs_matrix_fixed_s", !49, i64 0, !49, i64 4, !49, i64 8, !49, i64 12, !49, i64 16, !49, i64 20, !10, i64 24, !10, i64 28, !10, i64 32}
!90 = !{!"gs_point_s", !79, i64 0, !79, i64 8}
!91 = !{!"gs_transparency_source_s", !49, i64 0}
!92 = !{!"gs_xstate_trans_flags", !10, i64 0, !10, i64 4}
!93 = !{!"gs_fixed_point_s", !10, i64 0, !10, i64 4}
!94 = !{!"gx_transfer_s", !10, i64 0, !2, i64 8, !10, i64 16, !2, i64 24, !10, i64 32, !2, i64 40, !10, i64 48, !2, i64 56}
!95 = !{!"gs_devicen_color_map_s", !10, i64 0, !3, i64 4, !10, i64 8, !10, i64 12, !11, i64 16, !3, i64 24}
!96 = !{!"gs_state_client_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!97 = !{!56, !11, i64 56}
!98 = !{!56, !2, i64 72}
!99 = !{!56, !2, i64 64}
!100 = !{!56, !2, i64 24}
!101 = !{!14, !2, i64 120}
!102 = !{!103, !2, i64 200}
!103 = !{!"gs_ref_memory_s", !2, i64 0, !7, i64 8, !2, i64 192, !2, i64 200, !2, i64 208, !10, i64 216, !10, i64 220, !10, i64 224, !104, i64 232, !10, i64 272, !11, i64 280, !2, i64 288, !2, i64 296, !105, i64 304, !2, i64 488, !106, i64 496, !11, i64 512, !11, i64 520, !107, i64 528, !10, i64 552, !10, i64 556, !10, i64 560, !2, i64 568, !2, i64 576, !2, i64 584, !10, i64 592, !2, i64 600, !2, i64 608, !2, i64 616, !11, i64 624, !11, i64 632, !2, i64 640, !71, i64 648, !10, i64 672, !3, i64 680}
!104 = !{!"gs_memory_gc_status_s", !11, i64 0, !11, i64 8, !2, i64 16, !10, i64 24, !10, i64 28, !11, i64 32}
!105 = !{!"chunk_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !10, i64 96, !10, i64 100, !2, i64 104, !10, i64 112, !2, i64 120, !2, i64 128, !10, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!106 = !{!"chunk_locator_s", !2, i64 0, !2, i64 8}
!107 = !{!"lost_", !11, i64 0, !11, i64 8, !11, i64 16}
!108 = !{!22, !2, i64 720}
!109 = !{!9, !2, i64 32}
!110 = !{!9, !2, i64 16}
!111 = !{!9, !2, i64 24}
!112 = !{!9, !10, i64 40}
!113 = !{!9, !10, i64 44}
!114 = !{!6, !2, i64 24}
