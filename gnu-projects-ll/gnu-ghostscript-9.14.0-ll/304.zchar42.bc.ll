; ModuleID = './zchar42.bc'
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
%struct.gs_param_list_s = type opaque
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
%struct.gs_font_base_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, %struct.gs_fapi_server_s*, i8*, i32, i32 }
%struct.gs_uid_s = type { i64, i64* }
%struct.gs_font_type42_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, %struct.gs_fapi_server_s*, i8*, i32, i32, %struct.gs_type42_data_s }
%struct.gs_type42_data_s = type { i32 (%struct.gs_font_type42_s*, i64, i32, i8**)*, i8*, i32 (%struct.gs_font_type42_s*, i64)*, i32 (%struct.gs_font_type42_s*, i32, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type42_s*, i32, i32, float*)*, i32 (%struct.gs_font_type42_s*, i32, i32, i64)*, i64, i64, i32, i32, [2 x %struct.gs_type42_mtx_s], i64, i64, i64, i32, i32, i32, i32, i32, i32, i32*, %struct.gs_glyph_cache_s*, i32, i32, i8*, i64 }
%struct.gs_glyph_data_s = type { %struct.gs_const_bytestring_s, %struct.gs_glyph_data_procs_s*, i8*, %struct.gs_memory_s* }
%struct.gs_const_bytestring_s = type { i8*, i32, i8* }
%struct.gs_glyph_data_procs_s = type { void (%struct.gs_glyph_data_s*, i8*)*, i32 (%struct.gs_glyph_data_s*, i32, i32)* }
%struct.gs_type42_mtx_s = type { i32, i64, i32 }
%struct.gs_glyph_cache_s = type opaque

@.str = private unnamed_addr constant [5 x i8] c"Path\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"4.type42execchar\00", align 1
@zchar42_op_defs = constant [2 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @ztype42execchar }, %struct.op_def zeroinitializer], align 16
@.str.2 = private unnamed_addr constant [8 x i8] c".notdef\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c".notdef~GS\00", align 1

; Function Attrs: nounwind uwtable
define i32 @zchar42_set_cache(%struct.gs_context_state_s* %i_ctx_p, %struct.gs_font_base_s* %pbfont, %struct.ref_s* %cnref, i32 %glyph_index, i32 (%struct.gs_context_state_s*)* %cont, i32 (%struct.gs_context_state_s*)** %exec_cont) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %pbfont.addr = alloca %struct.gs_font_base_s*, align 8
  %cnref.addr = alloca %struct.ref_s*, align 8
  %glyph_index.addr = alloca i32, align 4
  %cont.addr = alloca i32 (%struct.gs_context_state_s*)*, align 8
  %exec_cont.addr = alloca i32 (%struct.gs_context_state_s*)**, align 8
  %sbw = alloca [4 x double], align 16
  %w = alloca [2 x double], align 16
  %present = alloca i32, align 4
  %pfont42 = alloca %struct.gs_font_type42_s*, align 8
  %code = alloca i32, align 4
  %bbox = alloca %struct.gs_rect_s, align 8
  %vertical = alloca i32, align 4
  %sbw_bbox = alloca [8 x float], align 16
  %sbw_bbox_h = alloca [8 x float], align 16
  %fdict = alloca %struct.ref_s*, align 8
  %rpath = alloca %struct.ref_s*, align 8
  %embedded = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.gs_font_base_s* %pbfont, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  store %struct.ref_s* %cnref, %struct.ref_s** %cnref.addr, align 8, !tbaa !1
  store i32 %glyph_index, i32* %glyph_index.addr, align 4, !tbaa !5
  store i32 (%struct.gs_context_state_s*)* %cont, i32 (%struct.gs_context_state_s*)** %cont.addr, align 8, !tbaa !1
  store i32 (%struct.gs_context_state_s*)** %exec_cont, i32 (%struct.gs_context_state_s*)*** %exec_cont.addr, align 8, !tbaa !1
  %0 = bitcast [4 x double]* %sbw to i8*
  call void @llvm.lifetime.start(i64 32, i8* %0) #1
  %1 = bitcast [2 x double]* %w to i8*
  call void @llvm.lifetime.start(i64 16, i8* %1) #1
  %2 = bitcast i32* %present to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast %struct.gs_font_type42_s** %pfont42 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gs_font_base_s* %4 to %struct.gs_font_type42_s*
  store %struct.gs_font_type42_s* %5, %struct.gs_font_type42_s** %pfont42, align 8, !tbaa !1
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  %8 = load %struct.ref_s*, %struct.ref_s** %cnref.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [4 x double], [4 x double]* %sbw, i32 0, i32 0
  %call = call i32 @zchar_get_metrics(%struct.gs_font_base_s* %7, %struct.ref_s* %8, double* %arraydecay) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %9 = bitcast %struct.gs_rect_s* %bbox to i8*
  call void @llvm.lifetime.start(i64 32, i8* %9) #1
  %10 = bitcast i32* %vertical to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %11, i32 0, i32 0
  %12 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !7
  %call1 = call %struct.gs_font_s* @gs_rootfont(%struct.gs_state_s* %12) #5
  %WMode = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %call1, i32 0, i32 16
  %13 = load i32, i32* %WMode, align 4, !tbaa !20
  store i32 %13, i32* %vertical, align 4, !tbaa !5
  %14 = bitcast [8 x float]* %sbw_bbox to i8*
  call void @llvm.lifetime.start(i64 32, i8* %14) #1
  %15 = bitcast [8 x float]* %sbw_bbox_h to i8*
  call void @llvm.lifetime.start(i64 32, i8* %15) #1
  %16 = bitcast %struct.ref_s** %fdict to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  %client_data = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %17, i32 0, i32 8
  %18 = load i8*, i8** %client_data, align 8, !tbaa !27
  %19 = bitcast i8* %18 to %struct.ref_s*
  store %struct.ref_s* %19, %struct.ref_s** %fdict, align 8, !tbaa !1
  %20 = bitcast %struct.ref_s** %rpath to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  store %struct.ref_s* null, %struct.ref_s** %rpath, align 8, !tbaa !1
  %21 = bitcast i32* %embedded to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  store i32 1, i32* %embedded, align 4, !tbaa !5
  %22 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %22, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %23 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %24 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %24, i32* %present, align 4, !tbaa !5
  %25 = load %struct.ref_s*, %struct.ref_s** %fdict, align 8, !tbaa !1
  %call2 = call i32 @dict_find_string(%struct.ref_s* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), %struct.ref_s** %rpath) #5
  %cmp3 = icmp sgt i32 %call2, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i32 0, i32* %embedded, align 4, !tbaa !5
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  %26 = load i32, i32* %vertical, align 4, !tbaa !5
  %tobool = icmp ne i32 %26, 0
  br i1 %tobool, label %if.then.6, label %if.end.23

if.then.6:                                        ; preds = %if.end.5
  %27 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont42, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %27, i32 0, i32 29
  %get_metrics = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data, i32 0, i32 4
  %28 = load i32 (%struct.gs_font_type42_s*, i32, i32, float*)*, i32 (%struct.gs_font_type42_s*, i32, i32, float*)** %get_metrics, align 8, !tbaa !33
  %29 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont42, align 8, !tbaa !1
  %30 = load i32, i32* %glyph_index.addr, align 4, !tbaa !5
  %arraydecay7 = getelementptr inbounds [8 x float], [8 x float]* %sbw_bbox_h, i32 0, i32 0
  %call8 = call i32 %28(%struct.gs_font_type42_s* %29, i32 %30, i32 4, float* %arraydecay7) #5
  store i32 %call8, i32* %code, align 4, !tbaa !5
  %31 = load i32, i32* %code, align 4, !tbaa !5
  %cmp9 = icmp slt i32 %31, 0
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.then.6
  %32 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %32, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %if.then.6
  %33 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont42, align 8, !tbaa !1
  %data12 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %33, i32 0, i32 29
  %get_metrics13 = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data12, i32 0, i32 4
  %34 = load i32 (%struct.gs_font_type42_s*, i32, i32, float*)*, i32 (%struct.gs_font_type42_s*, i32, i32, float*)** %get_metrics13, align 8, !tbaa !33
  %35 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont42, align 8, !tbaa !1
  %36 = load i32, i32* %glyph_index.addr, align 4, !tbaa !5
  %arraydecay14 = getelementptr inbounds [8 x float], [8 x float]* %sbw_bbox, i32 0, i32 0
  %call15 = call i32 %34(%struct.gs_font_type42_s* %35, i32 %36, i32 5, float* %arraydecay14) #5
  store i32 %call15, i32* %code, align 4, !tbaa !5
  %37 = load i32, i32* %code, align 4, !tbaa !5
  %cmp16 = icmp slt i32 %37, 0
  br i1 %cmp16, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end.11
  %38 = load i32, i32* %embedded, align 4, !tbaa !5
  %tobool17 = icmp ne i32 %38, 0
  br i1 %tobool17, label %if.else, label %if.then.18

if.then.18:                                       ; preds = %land.lhs.true
  %arrayidx = getelementptr inbounds [8 x float], [8 x float]* %sbw_bbox, i32 0, i64 0
  store float 0.000000e+00, float* %arrayidx, align 4, !tbaa !36
  %39 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  %FontBBox = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %39, i32 0, i32 23
  %q = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox, i32 0, i32 1
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q, i32 0, i32 1
  %40 = load double, double* %y, align 8, !tbaa !37
  %sub = fsub double %40, 1.000000e+00
  %conv = fptrunc double %sub to float
  %arrayidx19 = getelementptr inbounds [8 x float], [8 x float]* %sbw_bbox, i32 0, i64 1
  store float %conv, float* %arrayidx19, align 4, !tbaa !36
  %arrayidx20 = getelementptr inbounds [8 x float], [8 x float]* %sbw_bbox, i32 0, i64 2
  store float 0.000000e+00, float* %arrayidx20, align 4, !tbaa !36
  %arrayidx21 = getelementptr inbounds [8 x float], [8 x float]* %sbw_bbox, i32 0, i64 3
  store float -1.000000e+00, float* %arrayidx21, align 4, !tbaa !36
  br label %if.end.22

if.else:                                          ; preds = %land.lhs.true, %if.end.11
  store i32 0, i32* %vertical, align 4, !tbaa !5
  br label %if.end.22

if.end.22:                                        ; preds = %if.else, %if.then.18
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.end.5
  %41 = load i32, i32* %vertical, align 4, !tbaa !5
  %tobool24 = icmp ne i32 %41, 0
  br i1 %tobool24, label %if.then.25, label %if.else.46

if.then.25:                                       ; preds = %if.end.23
  %42 = load i32, i32* %present, align 4, !tbaa !5
  %cmp26 = icmp ne i32 %42, 2
  br i1 %cmp26, label %if.then.28, label %if.end.37

if.then.28:                                       ; preds = %if.then.25
  %arrayidx29 = getelementptr inbounds [8 x float], [8 x float]* %sbw_bbox_h, i32 0, i64 2
  %43 = load float, float* %arrayidx29, align 4, !tbaa !36
  %div = fdiv float %43, 2.000000e+00
  %conv30 = fpext float %div to double
  %arrayidx31 = getelementptr inbounds [4 x double], [4 x double]* %sbw, i32 0, i64 0
  store double %conv30, double* %arrayidx31, align 8, !tbaa !38
  %arrayidx32 = getelementptr inbounds [8 x float], [8 x float]* %sbw_bbox, i32 0, i64 1
  %44 = load float, float* %arrayidx32, align 4, !tbaa !36
  %arrayidx33 = getelementptr inbounds [8 x float], [8 x float]* %sbw_bbox, i32 0, i64 3
  %45 = load float, float* %arrayidx33, align 4, !tbaa !36
  %sub34 = fsub float %44, %45
  %conv35 = fpext float %sub34 to double
  %arrayidx36 = getelementptr inbounds [4 x double], [4 x double]* %sbw, i32 0, i64 1
  store double %conv35, double* %arrayidx36, align 8, !tbaa !38
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.28, %if.then.25
  %46 = load i32, i32* %present, align 4, !tbaa !5
  %cmp38 = icmp eq i32 %46, 0
  br i1 %cmp38, label %if.then.40, label %if.end.45

if.then.40:                                       ; preds = %if.end.37
  %arrayidx41 = getelementptr inbounds [4 x double], [4 x double]* %sbw, i32 0, i64 2
  store double 0.000000e+00, double* %arrayidx41, align 8, !tbaa !38
  %arrayidx42 = getelementptr inbounds [8 x float], [8 x float]* %sbw_bbox, i32 0, i64 3
  %47 = load float, float* %arrayidx42, align 4, !tbaa !36
  %conv43 = fpext float %47 to double
  %arrayidx44 = getelementptr inbounds [4 x double], [4 x double]* %sbw, i32 0, i64 3
  store double %conv43, double* %arrayidx44, align 8, !tbaa !38
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.40, %if.end.37
  br label %if.end.75

if.else.46:                                       ; preds = %if.end.23
  %48 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont42, align 8, !tbaa !1
  %data47 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %48, i32 0, i32 29
  %get_metrics48 = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data47, i32 0, i32 4
  %49 = load i32 (%struct.gs_font_type42_s*, i32, i32, float*)*, i32 (%struct.gs_font_type42_s*, i32, i32, float*)** %get_metrics48, align 8, !tbaa !33
  %50 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont42, align 8, !tbaa !1
  %51 = load i32, i32* %glyph_index.addr, align 4, !tbaa !5
  %arraydecay49 = getelementptr inbounds [8 x float], [8 x float]* %sbw_bbox, i32 0, i32 0
  %call50 = call i32 %49(%struct.gs_font_type42_s* %50, i32 %51, i32 4, float* %arraydecay49) #5
  store i32 %call50, i32* %code, align 4, !tbaa !5
  %52 = load i32, i32* %code, align 4, !tbaa !5
  %cmp51 = icmp slt i32 %52, 0
  br i1 %cmp51, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %if.else.46
  %53 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %53, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.54:                                        ; preds = %if.else.46
  %54 = load i32, i32* %present, align 4, !tbaa !5
  %cmp55 = icmp ne i32 %54, 2
  br i1 %cmp55, label %if.then.57, label %if.end.64

if.then.57:                                       ; preds = %if.end.54
  %arrayidx58 = getelementptr inbounds [8 x float], [8 x float]* %sbw_bbox, i32 0, i64 0
  %55 = load float, float* %arrayidx58, align 4, !tbaa !36
  %conv59 = fpext float %55 to double
  %arrayidx60 = getelementptr inbounds [4 x double], [4 x double]* %sbw, i32 0, i64 0
  store double %conv59, double* %arrayidx60, align 8, !tbaa !38
  %arrayidx61 = getelementptr inbounds [8 x float], [8 x float]* %sbw_bbox, i32 0, i64 1
  %56 = load float, float* %arrayidx61, align 4, !tbaa !36
  %conv62 = fpext float %56 to double
  %arrayidx63 = getelementptr inbounds [4 x double], [4 x double]* %sbw, i32 0, i64 1
  store double %conv62, double* %arrayidx63, align 8, !tbaa !38
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.57, %if.end.54
  %57 = load i32, i32* %present, align 4, !tbaa !5
  %cmp65 = icmp eq i32 %57, 0
  br i1 %cmp65, label %if.then.67, label %if.end.74

if.then.67:                                       ; preds = %if.end.64
  %arrayidx68 = getelementptr inbounds [8 x float], [8 x float]* %sbw_bbox, i32 0, i64 2
  %58 = load float, float* %arrayidx68, align 4, !tbaa !36
  %conv69 = fpext float %58 to double
  %arrayidx70 = getelementptr inbounds [4 x double], [4 x double]* %sbw, i32 0, i64 2
  store double %conv69, double* %arrayidx70, align 8, !tbaa !38
  %arrayidx71 = getelementptr inbounds [8 x float], [8 x float]* %sbw_bbox, i32 0, i64 3
  %59 = load float, float* %arrayidx71, align 4, !tbaa !36
  %conv72 = fpext float %59 to double
  %arrayidx73 = getelementptr inbounds [4 x double], [4 x double]* %sbw, i32 0, i64 3
  store double %conv72, double* %arrayidx73, align 8, !tbaa !38
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.67, %if.end.64
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %if.end.45
  %arrayidx76 = getelementptr inbounds [4 x double], [4 x double]* %sbw, i32 0, i64 2
  %60 = load double, double* %arrayidx76, align 8, !tbaa !38
  %arrayidx77 = getelementptr inbounds [2 x double], [2 x double]* %w, i32 0, i64 0
  store double %60, double* %arrayidx77, align 8, !tbaa !38
  %arrayidx78 = getelementptr inbounds [4 x double], [4 x double]* %sbw, i32 0, i64 3
  %61 = load double, double* %arrayidx78, align 8, !tbaa !38
  %arrayidx79 = getelementptr inbounds [2 x double], [2 x double]* %w, i32 0, i64 1
  store double %61, double* %arrayidx79, align 8, !tbaa !38
  %62 = load i32, i32* %vertical, align 4, !tbaa !5
  %tobool80 = icmp ne i32 %62, 0
  br i1 %tobool80, label %if.end.89, label %if.then.81

if.then.81:                                       ; preds = %if.end.75
  %arrayidx82 = getelementptr inbounds [8 x float], [8 x float]* %sbw_bbox, i32 0, i64 6
  %63 = load float, float* %arrayidx82, align 4, !tbaa !36
  %arrayidx83 = getelementptr inbounds [8 x float], [8 x float]* %sbw_bbox, i32 0, i64 4
  %64 = load float, float* %arrayidx83, align 4, !tbaa !36
  %sub84 = fsub float %63, %64
  %arrayidx85 = getelementptr inbounds [8 x float], [8 x float]* %sbw_bbox, i32 0, i64 0
  %65 = load float, float* %arrayidx85, align 4, !tbaa !36
  %add = fadd float %sub84, %65
  %arrayidx86 = getelementptr inbounds [8 x float], [8 x float]* %sbw_bbox, i32 0, i64 6
  store float %add, float* %arrayidx86, align 4, !tbaa !36
  %arrayidx87 = getelementptr inbounds [8 x float], [8 x float]* %sbw_bbox, i32 0, i64 0
  %66 = load float, float* %arrayidx87, align 4, !tbaa !36
  %arrayidx88 = getelementptr inbounds [8 x float], [8 x float]* %sbw_bbox, i32 0, i64 4
  store float %66, float* %arrayidx88, align 4, !tbaa !36
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.81, %if.end.75
  %arrayidx90 = getelementptr inbounds [8 x float], [8 x float]* %sbw_bbox, i32 0, i64 4
  %67 = load float, float* %arrayidx90, align 4, !tbaa !36
  %conv91 = fpext float %67 to double
  %68 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  %FontBBox92 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %68, i32 0, i32 23
  %p = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox92, i32 0, i32 0
  %y93 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p, i32 0, i32 1
  %69 = load double, double* %y93, align 8, !tbaa !39
  %cmp94 = fcmp olt double %conv91, %69
  br i1 %cmp94, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.89
  %arrayidx96 = getelementptr inbounds [8 x float], [8 x float]* %sbw_bbox, i32 0, i64 4
  %70 = load float, float* %arrayidx96, align 4, !tbaa !36
  %conv97 = fpext float %70 to double
  br label %cond.end

cond.false:                                       ; preds = %if.end.89
  %71 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  %FontBBox98 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %71, i32 0, i32 23
  %p99 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox98, i32 0, i32 0
  %y100 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p99, i32 0, i32 1
  %72 = load double, double* %y100, align 8, !tbaa !39
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %conv97, %cond.true ], [ %72, %cond.false ]
  %p101 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p101, i32 0, i32 0
  store double %cond, double* %x, align 8, !tbaa !40
  %arrayidx102 = getelementptr inbounds [8 x float], [8 x float]* %sbw_bbox, i32 0, i64 5
  %73 = load float, float* %arrayidx102, align 4, !tbaa !36
  %conv103 = fpext float %73 to double
  %74 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  %FontBBox104 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %74, i32 0, i32 23
  %p105 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox104, i32 0, i32 0
  %y106 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p105, i32 0, i32 1
  %75 = load double, double* %y106, align 8, !tbaa !39
  %cmp107 = fcmp olt double %conv103, %75
  br i1 %cmp107, label %cond.true.109, label %cond.false.112

cond.true.109:                                    ; preds = %cond.end
  %arrayidx110 = getelementptr inbounds [8 x float], [8 x float]* %sbw_bbox, i32 0, i64 5
  %76 = load float, float* %arrayidx110, align 4, !tbaa !36
  %conv111 = fpext float %76 to double
  br label %cond.end.116

cond.false.112:                                   ; preds = %cond.end
  %77 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  %FontBBox113 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %77, i32 0, i32 23
  %p114 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox113, i32 0, i32 0
  %y115 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p114, i32 0, i32 1
  %78 = load double, double* %y115, align 8, !tbaa !39
  br label %cond.end.116

cond.end.116:                                     ; preds = %cond.false.112, %cond.true.109
  %cond117 = phi double [ %conv111, %cond.true.109 ], [ %78, %cond.false.112 ]
  %p118 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 0
  %y119 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p118, i32 0, i32 1
  store double %cond117, double* %y119, align 8, !tbaa !41
  %arrayidx120 = getelementptr inbounds [8 x float], [8 x float]* %sbw_bbox, i32 0, i64 6
  %79 = load float, float* %arrayidx120, align 4, !tbaa !36
  %conv121 = fpext float %79 to double
  %80 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  %FontBBox122 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %80, i32 0, i32 23
  %q123 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox122, i32 0, i32 1
  %x124 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q123, i32 0, i32 0
  %81 = load double, double* %x124, align 8, !tbaa !42
  %cmp125 = fcmp ogt double %conv121, %81
  br i1 %cmp125, label %cond.true.127, label %cond.false.130

cond.true.127:                                    ; preds = %cond.end.116
  %arrayidx128 = getelementptr inbounds [8 x float], [8 x float]* %sbw_bbox, i32 0, i64 6
  %82 = load float, float* %arrayidx128, align 4, !tbaa !36
  %conv129 = fpext float %82 to double
  br label %cond.end.134

cond.false.130:                                   ; preds = %cond.end.116
  %83 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  %FontBBox131 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %83, i32 0, i32 23
  %q132 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox131, i32 0, i32 1
  %x133 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q132, i32 0, i32 0
  %84 = load double, double* %x133, align 8, !tbaa !42
  br label %cond.end.134

cond.end.134:                                     ; preds = %cond.false.130, %cond.true.127
  %cond135 = phi double [ %conv129, %cond.true.127 ], [ %84, %cond.false.130 ]
  %q136 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 1
  %x137 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q136, i32 0, i32 0
  store double %cond135, double* %x137, align 8, !tbaa !43
  %arrayidx138 = getelementptr inbounds [8 x float], [8 x float]* %sbw_bbox, i32 0, i64 7
  %85 = load float, float* %arrayidx138, align 4, !tbaa !36
  %conv139 = fpext float %85 to double
  %86 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  %FontBBox140 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %86, i32 0, i32 23
  %q141 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox140, i32 0, i32 1
  %y142 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q141, i32 0, i32 1
  %87 = load double, double* %y142, align 8, !tbaa !37
  %cmp143 = fcmp ogt double %conv139, %87
  br i1 %cmp143, label %cond.true.145, label %cond.false.148

cond.true.145:                                    ; preds = %cond.end.134
  %arrayidx146 = getelementptr inbounds [8 x float], [8 x float]* %sbw_bbox, i32 0, i64 7
  %88 = load float, float* %arrayidx146, align 4, !tbaa !36
  %conv147 = fpext float %88 to double
  br label %cond.end.152

cond.false.148:                                   ; preds = %cond.end.134
  %89 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  %FontBBox149 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %89, i32 0, i32 23
  %q150 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox149, i32 0, i32 1
  %y151 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q150, i32 0, i32 1
  %90 = load double, double* %y151, align 8, !tbaa !37
  br label %cond.end.152

cond.end.152:                                     ; preds = %cond.false.148, %cond.true.145
  %cond153 = phi double [ %conv147, %cond.true.145 ], [ %90, %cond.false.148 ]
  %q154 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 1
  %y155 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q154, i32 0, i32 1
  store double %cond153, double* %y155, align 8, !tbaa !44
  %91 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %92 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  %93 = load %struct.ref_s*, %struct.ref_s** %cnref.addr, align 8, !tbaa !1
  %arraydecay156 = getelementptr inbounds [2 x double], [2 x double]* %w, i32 0, i32 0
  %94 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %cont.addr, align 8, !tbaa !1
  %95 = load i32 (%struct.gs_context_state_s*)**, i32 (%struct.gs_context_state_s*)*** %exec_cont.addr, align 8, !tbaa !1
  %96 = load i32, i32* %vertical, align 4, !tbaa !5
  %tobool157 = icmp ne i32 %96, 0
  br i1 %tobool157, label %cond.true.158, label %cond.false.160

cond.true.158:                                    ; preds = %cond.end.152
  %arraydecay159 = getelementptr inbounds [4 x double], [4 x double]* %sbw, i32 0, i32 0
  br label %cond.end.161

cond.false.160:                                   ; preds = %cond.end.152
  br label %cond.end.161

cond.end.161:                                     ; preds = %cond.false.160, %cond.true.158
  %cond162 = phi double* [ %arraydecay159, %cond.true.158 ], [ null, %cond.false.160 ]
  %call163 = call i32 @zchar_set_cache(%struct.gs_context_state_s* %91, %struct.gs_font_base_s* %92, %struct.ref_s* %93, double* null, double* %arraydecay156, %struct.gs_rect_s* %bbox, i32 (%struct.gs_context_state_s*)* %94, i32 (%struct.gs_context_state_s*)** %95, double* %cond162) #5
  store i32 %call163, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end.161, %if.then.53, %if.then.10, %if.then
  %97 = bitcast i32* %embedded to i8*
  call void @llvm.lifetime.end(i64 4, i8* %97) #1
  %98 = bitcast %struct.ref_s** %rpath to i8*
  call void @llvm.lifetime.end(i64 8, i8* %98) #1
  %99 = bitcast %struct.ref_s** %fdict to i8*
  call void @llvm.lifetime.end(i64 8, i8* %99) #1
  %100 = bitcast [8 x float]* %sbw_bbox_h to i8*
  call void @llvm.lifetime.end(i64 32, i8* %100) #1
  %101 = bitcast [8 x float]* %sbw_bbox to i8*
  call void @llvm.lifetime.end(i64 32, i8* %101) #1
  %102 = bitcast i32* %vertical to i8*
  call void @llvm.lifetime.end(i64 4, i8* %102) #1
  %103 = bitcast %struct.gs_rect_s* %bbox to i8*
  call void @llvm.lifetime.end(i64 32, i8* %103) #1
  %104 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %104) #1
  %105 = bitcast %struct.gs_font_type42_s** %pfont42 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %105) #1
  %106 = bitcast i32* %present to i8*
  call void @llvm.lifetime.end(i64 4, i8* %106) #1
  %107 = bitcast [2 x double]* %w to i8*
  call void @llvm.lifetime.end(i64 16, i8* %107) #1
  %108 = bitcast [4 x double]* %sbw to i8*
  call void @llvm.lifetime.end(i64 32, i8* %108) #1
  %109 = load i32, i32* %retval
  ret i32 %109
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @zchar_get_metrics(%struct.gs_font_base_s*, %struct.ref_s*, double*) #2

declare %struct.gs_font_s* @gs_rootfont(%struct.gs_state_s*) #2

declare i32 @dict_find_string(%struct.ref_s*, i8*, %struct.ref_s**) #2

declare i32 @zchar_set_cache(%struct.gs_context_state_s*, %struct.gs_font_base_s*, %struct.ref_s*, double*, double*, %struct.gs_rect_s*, i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)**, double*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal i32 @ztype42execchar(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %pfont = alloca %struct.gs_font_s*, align 8
  %code = alloca i32, align 4
  %pbfont = alloca %struct.gs_font_base_s*, align 8
  %pfont42 = alloca %struct.gs_font_type42_s*, align 8
  %penum = alloca %struct.gs_text_enum_s*, align 8
  %cont = alloca i32 (%struct.gs_context_state_s*)*, align 8
  %exec_cont = alloca i32 (%struct.gs_context_state_s*)*, align 8
  %cnref = alloca %struct.ref_s*, align 8
  %glyph_index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %es_code_ = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !45
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.gs_font_s** %pfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i64 -3
  %call = call i32 @font_param(%struct.ref_s* %add.ptr, %struct.gs_font_s** %pfont) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %6 = bitcast %struct.gs_font_base_s** %pbfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %8 = bitcast %struct.gs_font_s* %7 to %struct.gs_font_base_s*
  store %struct.gs_font_base_s* %8, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %9 = bitcast %struct.gs_font_type42_s** %pfont42 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %11 = bitcast %struct.gs_font_s* %10 to %struct.gs_font_type42_s*
  store %struct.gs_font_type42_s* %11, %struct.gs_font_type42_s** %pfont42, align 8, !tbaa !1
  %12 = bitcast %struct.gs_text_enum_s** %penum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call1 = call %struct.gs_text_enum_s* @op_show_find(%struct.gs_context_state_s* %13) #5
  store %struct.gs_text_enum_s* %call1, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %14 = bitcast i32 (%struct.gs_context_state_s*)** %cont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %PaintType = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %15, i32 0, i32 17
  %16 = load i32, i32* %PaintType, align 4, !tbaa !46
  %cmp = icmp eq i32 %16, 0
  %cond = select i1 %cmp, i32 (%struct.gs_context_state_s*)* @type42_fill, i32 (%struct.gs_context_state_s*)* @type42_stroke
  store i32 (%struct.gs_context_state_s*)* %cond, i32 (%struct.gs_context_state_s*)** %cont, align 8, !tbaa !1
  %17 = bitcast i32 (%struct.gs_context_state_s*)** %exec_cont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  store i32 (%struct.gs_context_state_s*)* null, i32 (%struct.gs_context_state_s*)** %exec_cont, align 8, !tbaa !1
  %18 = bitcast %struct.ref_s** %cnref to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  %19 = bitcast i32* %glyph_index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  %20 = load i32, i32* %code, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %20, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %21 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.84

if.end:                                           ; preds = %entry
  %22 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %cmp3 = icmp eq %struct.gs_text_enum_s* %22, null
  br i1 %cmp3, label %if.then.7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %23 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %23, i32 0, i32 11
  %24 = load i32, i32* %FontType, align 4, !tbaa !47
  %cmp4 = icmp ne i32 %24, 42
  br i1 %cmp4, label %land.lhs.true, label %if.end.8

land.lhs.true:                                    ; preds = %lor.lhs.false
  %25 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %FontType5 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %25, i32 0, i32 11
  %26 = load i32, i32* %FontType5, align 4, !tbaa !47
  %cmp6 = icmp ne i32 %26, 11
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %land.lhs.true, %if.end
  store i32 -21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.84

if.end.8:                                         ; preds = %land.lhs.true, %lor.lhs.false
  %27 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %PaintType9 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %27, i32 0, i32 17
  %28 = load i32, i32* %PaintType9, align 4, !tbaa !48
  %tobool = icmp ne i32 %28, 0
  br i1 %tobool, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end.8
  %29 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %29, i32 0, i32 0
  %30 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !7
  %31 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %StrokeWidth = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %31, i32 0, i32 18
  %32 = load float, float* %StrokeWidth, align 4, !tbaa !49
  %conv = fpext float %32 to double
  %call11 = call i32 @gs_setlinewidth(%struct.gs_state_s* %30, double %conv) #5
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %if.end.8
  %33 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %33, i32 0, i32 25
  %stack13 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p14 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack13, i32 0, i32 0
  %34 = load %struct.ref_s*, %struct.ref_s** %p14, align 8, !tbaa !50
  %35 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack15 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %35, i32 0, i32 25
  %stack16 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack15, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack16, i32 0, i32 2
  %36 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !51
  %add.ptr17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %36, i64 -3
  %cmp18 = icmp ugt %struct.ref_s* %34, %add.ptr17
  br i1 %cmp18, label %if.then.20, label %if.end.28

if.then.20:                                       ; preds = %if.end.12
  %37 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.start(i64 4, i8* %37) #1
  %38 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack21 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %38, i32 0, i32 25
  %stack22 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack21, i32 0, i32 0
  %call23 = call i32 @ref_stack_extend(%struct.ref_stack_s* %stack22, i32 3) #5
  store i32 %call23, i32* %es_code_, align 4, !tbaa !5
  %39 = load i32, i32* %es_code_, align 4, !tbaa !5
  %cmp24 = icmp slt i32 %39, 0
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.then.20
  %40 = load i32, i32* %es_code_, align 4, !tbaa !5
  store i32 %40, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.27:                                        ; preds = %if.then.20
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.27, %if.then.26
  %41 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.84 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.28

if.end.28:                                        ; preds = %cleanup.cont, %if.end.12
  %42 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %42, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %43 = load i16, i16* %type_attrs, align 2, !tbaa !52
  %conv29 = zext i16 %43 to i32
  %and = and i32 %conv29, 15552
  %cmp30 = icmp eq i32 %and, 1216
  br i1 %cmp30, label %if.then.32, label %if.end.34

if.then.32:                                       ; preds = %if.end.28
  %44 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call33 = call i32 @zchar_exec_char_proc(%struct.gs_context_state_s* %44) #5
  store i32 %call33, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.84

if.end.34:                                        ; preds = %if.end.28
  %45 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %45, i32 0, i32 0
  %type_attrs36 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas35, i32 0, i32 0
  %46 = bitcast i16* %type_attrs36 to i8*
  %arrayidx = getelementptr inbounds i8, i8* %46, i64 1
  %47 = load i8, i8* %arrayidx, align 1, !tbaa !53
  %conv37 = zext i8 %47 to i32
  %cmp38 = icmp eq i32 %conv37, 11
  br i1 %cmp38, label %if.end.42, label %if.then.40

if.then.40:                                       ; preds = %if.end.34
  %48 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call41 = call i32 @check_type_failed(%struct.ref_s* %48) #5
  store i32 %call41, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.84

if.end.42:                                        ; preds = %if.end.34
  %49 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack43 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %49, i32 0, i32 26
  %stack44 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack43, i32 0, i32 0
  %top45 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack44, i32 0, i32 2
  %50 = load %struct.ref_s*, %struct.ref_s** %top45, align 8, !tbaa !54
  %51 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack46 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %51, i32 0, i32 26
  %stack47 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack46, i32 0, i32 0
  %p48 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack47, i32 0, i32 0
  %52 = load %struct.ref_s*, %struct.ref_s** %p48, align 8, !tbaa !45
  %sub.ptr.lhs.cast = ptrtoint %struct.ref_s* %50 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.ref_s* %52 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 16
  %cmp49 = icmp slt i64 %sub.ptr.div, 3
  br i1 %cmp49, label %if.then.51, label %if.end.54

if.then.51:                                       ; preds = %if.end.42
  %53 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack52 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %53, i32 0, i32 26
  %stack53 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack52, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack53, i32 0, i32 7
  store i32 3, i32* %requested, align 4, !tbaa !55
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.84

if.end.54:                                        ; preds = %if.end.42
  %54 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs55 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %54, i32 0, i32 0
  %55 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs55, align 8, !tbaa !7
  %call56 = call i32 @gs_moveto(%struct.gs_state_s* %55, double 0.000000e+00, double 0.000000e+00) #5
  store i32 %call56, i32* %code, align 4, !tbaa !5
  %56 = load i32, i32* %code, align 4, !tbaa !5
  %cmp57 = icmp slt i32 %56, 0
  br i1 %cmp57, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %if.end.54
  %57 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %57, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.84

if.end.60:                                        ; preds = %if.end.54
  %58 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr61 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %58, i64 -1
  store %struct.ref_s* %add.ptr61, %struct.ref_s** %cnref, align 8, !tbaa !1
  %59 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %59, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %60 = load i64, i64* %intval, align 8, !tbaa !56
  %conv62 = trunc i64 %60 to i32
  store i32 %conv62, i32* %glyph_index, align 4, !tbaa !5
  %61 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont42, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %61, i32 0, i32 29
  %gsub_size = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data, i32 0, i32 25
  %62 = load i64, i64* %gsub_size, align 8, !tbaa !57
  %tobool63 = icmp ne i64 %62, 0
  br i1 %tobool63, label %if.then.64, label %if.end.74

if.then.64:                                       ; preds = %if.end.60
  %63 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont42, align 8, !tbaa !1
  %data65 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %63, i32 0, i32 29
  %substitute_glyph_index_vertical = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data65, i32 0, i32 5
  %64 = load i32 (%struct.gs_font_type42_s*, i32, i32, i64)*, i32 (%struct.gs_font_type42_s*, i32, i32, i64)** %substitute_glyph_index_vertical, align 8, !tbaa !58
  %65 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont42, align 8, !tbaa !1
  %66 = load i32, i32* %glyph_index, align 4, !tbaa !5
  %67 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs66 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %67, i32 0, i32 0
  %68 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs66, align 8, !tbaa !7
  %call67 = call %struct.gs_font_s* @gs_rootfont(%struct.gs_state_s* %68) #5
  %WMode = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %call67, i32 0, i32 16
  %69 = load i32, i32* %WMode, align 4, !tbaa !20
  %70 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %returned = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %70, i32 0, i32 28
  %current_glyph = getelementptr inbounds %struct.gs_text_returned_s, %struct.gs_text_returned_s* %returned, i32 0, i32 1
  %71 = load i64, i64* %current_glyph, align 8, !tbaa !59
  %call68 = call i32 %64(%struct.gs_font_type42_s* %65, i32 %66, i32 %69, i64 %71) #5
  store i32 %call68, i32* %glyph_index, align 4, !tbaa !5
  %72 = load i32, i32* %glyph_index, align 4, !tbaa !5
  %conv69 = zext i32 %72 to i64
  %73 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value70 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %73, i32 0, i32 1
  %intval71 = bitcast %union.v* %value70 to i64*
  store i64 %conv69, i64* %intval71, align 8, !tbaa !56
  %74 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas72 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %74, i32 0, i32 0
  %type_attrs73 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas72, i32 0, i32 0
  store i16 2816, i16* %type_attrs73, align 2, !tbaa !52
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.64, %if.end.60
  %75 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %76 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %77 = load %struct.ref_s*, %struct.ref_s** %cnref, align 8, !tbaa !1
  %78 = load i32, i32* %glyph_index, align 4, !tbaa !5
  %79 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %cont, align 8, !tbaa !1
  %call75 = call i32 @zchar42_set_cache(%struct.gs_context_state_s* %75, %struct.gs_font_base_s* %76, %struct.ref_s* %77, i32 %78, i32 (%struct.gs_context_state_s*)* %79, i32 (%struct.gs_context_state_s*)** %exec_cont) #5
  store i32 %call75, i32* %code, align 4, !tbaa !5
  %80 = load i32, i32* %code, align 4, !tbaa !5
  %cmp76 = icmp sge i32 %80, 0
  br i1 %cmp76, label %land.lhs.true.78, label %if.end.83

land.lhs.true.78:                                 ; preds = %if.end.74
  %81 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %exec_cont, align 8, !tbaa !1
  %cmp79 = icmp ne i32 (%struct.gs_context_state_s*)* %81, null
  br i1 %cmp79, label %if.then.81, label %if.end.83

if.then.81:                                       ; preds = %land.lhs.true.78
  %82 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %exec_cont, align 8, !tbaa !1
  %83 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call82 = call i32 %82(%struct.gs_context_state_s* %83) #5
  store i32 %call82, i32* %code, align 4, !tbaa !5
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.81, %land.lhs.true.78, %if.end.74
  %84 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %84, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.84

cleanup.84:                                       ; preds = %if.end.83, %if.then.59, %if.then.51, %if.then.40, %if.then.32, %cleanup, %if.then.7, %if.then
  %85 = bitcast i32* %glyph_index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %85) #1
  %86 = bitcast %struct.ref_s** %cnref to i8*
  call void @llvm.lifetime.end(i64 8, i8* %86) #1
  %87 = bitcast i32 (%struct.gs_context_state_s*)** %exec_cont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %87) #1
  %88 = bitcast i32 (%struct.gs_context_state_s*)** %cont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %88) #1
  %89 = bitcast %struct.gs_text_enum_s** %penum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %89) #1
  %90 = bitcast %struct.gs_font_type42_s** %pfont42 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %90) #1
  %91 = bitcast %struct.gs_font_base_s** %pbfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %91) #1
  %92 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %92) #1
  %93 = bitcast %struct.gs_font_s** %pfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %93) #1
  %94 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %94) #1
  %95 = load i32, i32* %retval
  ret i32 %95
}

declare i32 @font_param(%struct.ref_s*, %struct.gs_font_s**) #2

declare %struct.gs_text_enum_s* @op_show_find(%struct.gs_context_state_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @type42_fill(%struct.gs_context_state_s* %i_ctx_p) #0 {
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
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !7
  %fill_adjust = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %3, i32 0, i32 28
  %4 = bitcast %struct.gs_fixed_point_s* %fa to i8*
  %5 = bitcast %struct.gs_fixed_point_s* %fill_adjust to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 8, i32 4, i1 false), !tbaa.struct !66
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %6, i32 0, i32 0
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs1, align 8, !tbaa !7
  %fill_adjust2 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %7, i32 0, i32 28
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %fill_adjust2, i32 0, i32 1
  store i32 -1, i32* %y, align 4, !tbaa !67
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %8, i32 0, i32 0
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs3, align 8, !tbaa !7
  %fill_adjust4 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %9, i32 0, i32 28
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %fill_adjust4, i32 0, i32 0
  store i32 -1, i32* %x, align 4, !tbaa !78
  %10 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @type42_finish(%struct.gs_context_state_s* %10, i32 (%struct.gs_state_s*)* @gs_fill) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs5 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %11, i32 0, i32 0
  %12 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs5, align 8, !tbaa !7
  %fill_adjust6 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %12, i32 0, i32 28
  %13 = bitcast %struct.gs_fixed_point_s* %fill_adjust6 to i8*
  %14 = bitcast %struct.gs_fixed_point_s* %fa to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 8, i32 4, i1 false), !tbaa.struct !66
  %15 = load i32, i32* %code, align 4, !tbaa !5
  %16 = bitcast %struct.gs_fixed_point_s* %fa to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  %17 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #1
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal i32 @type42_stroke(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @type42_finish(%struct.gs_context_state_s* %0, i32 (%struct.gs_state_s*)* @gs_stroke) #5
  ret i32 %call
}

declare i32 @gs_setlinewidth(%struct.gs_state_s*, double) #2

declare i32 @ref_stack_extend(%struct.ref_stack_s*, i32) #2

declare i32 @zchar_exec_char_proc(%struct.gs_context_state_s*) #2

declare i32 @check_type_failed(%struct.ref_s*) #2

declare i32 @gs_moveto(%struct.gs_state_s*, double, double) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal i32 @type42_finish(%struct.gs_context_state_s* %i_ctx_p, i32 (%struct.gs_state_s*)* %cont) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %cont.addr = alloca i32 (%struct.gs_state_s*)*, align 8
  %op = alloca %struct.ref_s*, align 8
  %pfont = alloca %struct.gs_font_s*, align 8
  %pfont42 = alloca %struct.gs_font_type42_s*, align 8
  %code = alloca i32, align 4
  %penum = alloca %struct.gs_text_enum_s*, align 8
  %opc = alloca %struct.ref_s*, align 8
  %glyph_index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %gref = alloca %struct.ref_s, align 8
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__s1 = alloca i8*, align 8
  %__result = alloca i32, align 4
  %tmp77 = alloca i32, align 4
  %__s1_len100 = alloca i64, align 8
  %__s2_len102 = alloca i64, align 8
  %tmp103 = alloca i32, align 4
  %__s1110 = alloca i8*, align 8
  %__result114 = alloca i32, align 4
  %tmp152 = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store i32 (%struct.gs_state_s*)* %cont, i32 (%struct.gs_state_s*)** %cont.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !45
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.gs_font_s** %pfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast %struct.gs_font_type42_s** %pfont42 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast %struct.gs_text_enum_s** %penum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call %struct.gs_text_enum_s* @op_show_find(%struct.gs_context_state_s* %7) #5
  store %struct.gs_text_enum_s* %call, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %8 = bitcast %struct.ref_s** %opc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  store %struct.ref_s* %9, %struct.ref_s** %opc, align 8, !tbaa !1
  %10 = bitcast i32* %glyph_index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load %struct.ref_s*, %struct.ref_s** %opc, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %12 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 1
  %13 = load i8, i8* %arrayidx, align 1, !tbaa !53
  %conv = zext i8 %13 to i32
  %cmp = icmp eq i32 %conv, 11
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %14 = load %struct.ref_s*, %struct.ref_s** %opc, align 8, !tbaa !1
  %call2 = call i32 @check_type_failed(%struct.ref_s* %14) #5
  store i32 %call2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.200

if.end:                                           ; preds = %entry
  %15 = load %struct.ref_s*, %struct.ref_s** %opc, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i64 -3
  %call3 = call i32 @font_param(%struct.ref_s* %add.ptr, %struct.gs_font_s** %pfont) #5
  store i32 %call3, i32* %code, align 4, !tbaa !5
  %16 = load i32, i32* %code, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %16, 0
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  %17 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.200

if.end.7:                                         ; preds = %if.end
  %18 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %cmp8 = icmp eq %struct.gs_text_enum_s* %18, null
  br i1 %cmp8, label %if.then.15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.7
  %19 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %19, i32 0, i32 11
  %20 = load i32, i32* %FontType, align 4, !tbaa !47
  %cmp10 = icmp ne i32 %20, 42
  br i1 %cmp10, label %land.lhs.true, label %if.end.16

land.lhs.true:                                    ; preds = %lor.lhs.false
  %21 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %FontType12 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %21, i32 0, i32 11
  %22 = load i32, i32* %FontType12, align 4, !tbaa !47
  %cmp13 = icmp ne i32 %22, 11
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %land.lhs.true, %if.end.7
  store i32 -21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.200

if.end.16:                                        ; preds = %land.lhs.true, %lor.lhs.false
  %23 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %24 = bitcast %struct.gs_font_s* %23 to %struct.gs_font_type42_s*
  store %struct.gs_font_type42_s* %24, %struct.gs_font_type42_s** %pfont42, align 8, !tbaa !1
  %25 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %RenderTTNotdef = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %25, i32 0, i32 15
  %26 = load i32, i32* %RenderTTNotdef, align 4, !tbaa !79
  %tobool = icmp ne i32 %26, 0
  br i1 %tobool, label %if.end.175, label %if.then.17

if.then.17:                                       ; preds = %if.end.16
  %27 = load %struct.ref_s*, %struct.ref_s** %opc, align 8, !tbaa !1
  %add.ptr18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i64 -1
  %tas19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr18, i32 0, i32 0
  %type_attrs20 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas19, i32 0, i32 0
  %28 = bitcast i16* %type_attrs20 to i8*
  %arrayidx21 = getelementptr inbounds i8, i8* %28, i64 1
  %29 = load i8, i8* %arrayidx21, align 1, !tbaa !53
  %conv22 = zext i8 %29 to i32
  %cmp23 = icmp eq i32 %conv22, 13
  br i1 %cmp23, label %if.then.25, label %if.end.174

if.then.25:                                       ; preds = %if.then.17
  %30 = bitcast %struct.ref_s* %gref to i8*
  call void @llvm.lifetime.start(i64 16, i8* %30) #1
  %31 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %31, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %32 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !80
  %33 = bitcast %struct.gs_ref_memory_s* %32 to %struct.gs_memory_s*
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %33, i32 0, i32 2
  %34 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !81
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %34, i32 0, i32 16
  %35 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !84
  %36 = load %struct.ref_s*, %struct.ref_s** %opc, align 8, !tbaa !1
  %add.ptr26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %36, i64 -1
  call void @names_string_ref(%struct.name_table_s* %35, %struct.ref_s* %add.ptr26, %struct.ref_s* %gref) #5
  %tas27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %gref, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas27, i32 0, i32 2
  %37 = load i32, i32* %rsize, align 4, !tbaa !86
  %cmp28 = icmp eq i32 %37, 7
  br i1 %cmp28, label %land.lhs.true.30, label %lor.lhs.false.89

land.lhs.true.30:                                 ; preds = %if.then.25
  %call31 = call i64 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0)) #6
  %cmp32 = icmp ult i64 %call31, 7
  br i1 %cmp32, label %cond.true, label %cond.false.81

cond.true:                                        ; preds = %land.lhs.true.30
  %38 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %38) #1
  %39 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %39) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i64 1) to i64), i64 ptrtoint ([8 x i8]* @.str.2 to i64)), i64 1), label %land.lhs.true.34, label %cond.false

land.lhs.true.34:                                 ; preds = %cond.true
  %call35 = call i64 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0)) #6
  store i64 %call35, i64* %__s2_len, align 8, !tbaa !56
  %40 = load i64, i64* %__s2_len, align 8, !tbaa !56
  %cmp36 = icmp ult i64 %40, 4
  br i1 %cmp36, label %cond.true.38, label %cond.false

cond.true.38:                                     ; preds = %land.lhs.true.34
  %41 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %41) #1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %gref, i32 0, i32 1
  %const_bytes = bitcast %union.v* %value to i8**
  %42 = load i8*, i8** %const_bytes, align 8, !tbaa !1
  store i8* %42, i8** %__s1, align 8, !tbaa !1
  %43 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %43) #1
  %44 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx41 = getelementptr inbounds i8, i8* %44, i64 0
  %45 = load i8, i8* %arrayidx41, align 1, !tbaa !53
  %conv42 = zext i8 %45 to i32
  %46 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), align 1, !tbaa !53
  %conv43 = zext i8 %46 to i32
  %sub = sub nsw i32 %conv42, %conv43
  store i32 %sub, i32* %__result, align 4, !tbaa !5
  %47 = load i64, i64* %__s2_len, align 8, !tbaa !56
  %cmp44 = icmp ugt i64 %47, 0
  br i1 %cmp44, label %land.lhs.true.46, label %if.end.76

land.lhs.true.46:                                 ; preds = %cond.true.38
  %48 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp47 = icmp eq i32 %48, 0
  br i1 %cmp47, label %if.then.49, label %if.end.76

if.then.49:                                       ; preds = %land.lhs.true.46
  %49 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx50 = getelementptr inbounds i8, i8* %49, i64 1
  %50 = load i8, i8* %arrayidx50, align 1, !tbaa !53
  %conv51 = zext i8 %50 to i32
  %51 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i64 1), align 1, !tbaa !53
  %conv52 = zext i8 %51 to i32
  %sub53 = sub nsw i32 %conv51, %conv52
  store i32 %sub53, i32* %__result, align 4, !tbaa !5
  %52 = load i64, i64* %__s2_len, align 8, !tbaa !56
  %cmp54 = icmp ugt i64 %52, 1
  br i1 %cmp54, label %land.lhs.true.56, label %if.end.75

land.lhs.true.56:                                 ; preds = %if.then.49
  %53 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp57 = icmp eq i32 %53, 0
  br i1 %cmp57, label %if.then.59, label %if.end.75

if.then.59:                                       ; preds = %land.lhs.true.56
  %54 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx60 = getelementptr inbounds i8, i8* %54, i64 2
  %55 = load i8, i8* %arrayidx60, align 1, !tbaa !53
  %conv61 = zext i8 %55 to i32
  %56 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i64 2), align 1, !tbaa !53
  %conv62 = zext i8 %56 to i32
  %sub63 = sub nsw i32 %conv61, %conv62
  store i32 %sub63, i32* %__result, align 4, !tbaa !5
  %57 = load i64, i64* %__s2_len, align 8, !tbaa !56
  %cmp64 = icmp ugt i64 %57, 2
  br i1 %cmp64, label %land.lhs.true.66, label %if.end.74

land.lhs.true.66:                                 ; preds = %if.then.59
  %58 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp67 = icmp eq i32 %58, 0
  br i1 %cmp67, label %if.then.69, label %if.end.74

if.then.69:                                       ; preds = %land.lhs.true.66
  %59 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx70 = getelementptr inbounds i8, i8* %59, i64 3
  %60 = load i8, i8* %arrayidx70, align 1, !tbaa !53
  %conv71 = zext i8 %60 to i32
  %61 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i64 3), align 1, !tbaa !53
  %conv72 = zext i8 %61 to i32
  %sub73 = sub nsw i32 %conv71, %conv72
  store i32 %sub73, i32* %__result, align 4, !tbaa !5
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.69, %land.lhs.true.66, %if.then.59
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %land.lhs.true.56, %if.then.49
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %land.lhs.true.46, %cond.true.38
  %62 = load i32, i32* %__result, align 4, !tbaa !5
  store i32 %62, i32* %tmp77, !tbaa !5
  %63 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #1
  %64 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #1
  %65 = load i32, i32* %tmp77, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.34, %cond.true
  %value78 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %gref, i32 0, i32 1
  %const_bytes79 = bitcast %union.v* %value78 to i8**
  %66 = load i8*, i8** %const_bytes79, align 8, !tbaa !1
  %call80 = call i32 @strcmp(i8* %66, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0)) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.76
  %cond = phi i32 [ %65, %if.end.76 ], [ %call80, %cond.false ]
  store i32 %cond, i32* %tmp, !tbaa !5
  %67 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #1
  %68 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %68) #1
  %69 = load i32, i32* %tmp, !tbaa !5
  br label %cond.end.85

cond.false.81:                                    ; preds = %land.lhs.true.30
  %value82 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %gref, i32 0, i32 1
  %const_bytes83 = bitcast %union.v* %value82 to i8**
  %70 = load i8*, i8** %const_bytes83, align 8, !tbaa !1
  %call84 = call i32 @strncmp(i8* %70, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i64 7) #6
  br label %cond.end.85

cond.end.85:                                      ; preds = %cond.false.81, %cond.end
  %cond86 = phi i32 [ %69, %cond.end ], [ %call84, %cond.false.81 ]
  %cmp87 = icmp eq i32 %cond86, 0
  br i1 %cmp87, label %if.then.167, label %lor.lhs.false.89

lor.lhs.false.89:                                 ; preds = %cond.end.85, %if.then.25
  %tas90 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %gref, i32 0, i32 0
  %rsize91 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas90, i32 0, i32 2
  %71 = load i32, i32* %rsize91, align 4, !tbaa !86
  %cmp92 = icmp ugt i32 %71, 9
  br i1 %cmp92, label %land.lhs.true.94, label %if.end.173

land.lhs.true.94:                                 ; preds = %lor.lhs.false.89
  %call95 = call i64 @strlen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0)) #6
  %cmp96 = icmp ult i64 %call95, 10
  br i1 %cmp96, label %cond.true.98, label %cond.false.159

cond.true.98:                                     ; preds = %land.lhs.true.94
  %72 = bitcast i64* %__s1_len100 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %72) #1
  %73 = bitcast i64* %__s2_len102 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %73) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i64 1) to i64), i64 ptrtoint ([11 x i8]* @.str.3 to i64)), i64 1), label %land.lhs.true.104, label %cond.false.153

land.lhs.true.104:                                ; preds = %cond.true.98
  %call105 = call i64 @strlen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0)) #6
  store i64 %call105, i64* %__s2_len102, align 8, !tbaa !56
  %74 = load i64, i64* %__s2_len102, align 8, !tbaa !56
  %cmp106 = icmp ult i64 %74, 4
  br i1 %cmp106, label %cond.true.108, label %cond.false.153

cond.true.108:                                    ; preds = %land.lhs.true.104
  %75 = bitcast i8** %__s1110 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %75) #1
  %value111 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %gref, i32 0, i32 1
  %const_bytes112 = bitcast %union.v* %value111 to i8**
  %76 = load i8*, i8** %const_bytes112, align 8, !tbaa !1
  store i8* %76, i8** %__s1110, align 8, !tbaa !1
  %77 = bitcast i32* %__result114 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %77) #1
  %78 = load i8*, i8** %__s1110, align 8, !tbaa !1
  %arrayidx115 = getelementptr inbounds i8, i8* %78, i64 0
  %79 = load i8, i8* %arrayidx115, align 1, !tbaa !53
  %conv116 = zext i8 %79 to i32
  %80 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), align 1, !tbaa !53
  %conv117 = zext i8 %80 to i32
  %sub118 = sub nsw i32 %conv116, %conv117
  store i32 %sub118, i32* %__result114, align 4, !tbaa !5
  %81 = load i64, i64* %__s2_len102, align 8, !tbaa !56
  %cmp119 = icmp ugt i64 %81, 0
  br i1 %cmp119, label %land.lhs.true.121, label %if.end.151

land.lhs.true.121:                                ; preds = %cond.true.108
  %82 = load i32, i32* %__result114, align 4, !tbaa !5
  %cmp122 = icmp eq i32 %82, 0
  br i1 %cmp122, label %if.then.124, label %if.end.151

if.then.124:                                      ; preds = %land.lhs.true.121
  %83 = load i8*, i8** %__s1110, align 8, !tbaa !1
  %arrayidx125 = getelementptr inbounds i8, i8* %83, i64 1
  %84 = load i8, i8* %arrayidx125, align 1, !tbaa !53
  %conv126 = zext i8 %84 to i32
  %85 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i64 1), align 1, !tbaa !53
  %conv127 = zext i8 %85 to i32
  %sub128 = sub nsw i32 %conv126, %conv127
  store i32 %sub128, i32* %__result114, align 4, !tbaa !5
  %86 = load i64, i64* %__s2_len102, align 8, !tbaa !56
  %cmp129 = icmp ugt i64 %86, 1
  br i1 %cmp129, label %land.lhs.true.131, label %if.end.150

land.lhs.true.131:                                ; preds = %if.then.124
  %87 = load i32, i32* %__result114, align 4, !tbaa !5
  %cmp132 = icmp eq i32 %87, 0
  br i1 %cmp132, label %if.then.134, label %if.end.150

if.then.134:                                      ; preds = %land.lhs.true.131
  %88 = load i8*, i8** %__s1110, align 8, !tbaa !1
  %arrayidx135 = getelementptr inbounds i8, i8* %88, i64 2
  %89 = load i8, i8* %arrayidx135, align 1, !tbaa !53
  %conv136 = zext i8 %89 to i32
  %90 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i64 2), align 1, !tbaa !53
  %conv137 = zext i8 %90 to i32
  %sub138 = sub nsw i32 %conv136, %conv137
  store i32 %sub138, i32* %__result114, align 4, !tbaa !5
  %91 = load i64, i64* %__s2_len102, align 8, !tbaa !56
  %cmp139 = icmp ugt i64 %91, 2
  br i1 %cmp139, label %land.lhs.true.141, label %if.end.149

land.lhs.true.141:                                ; preds = %if.then.134
  %92 = load i32, i32* %__result114, align 4, !tbaa !5
  %cmp142 = icmp eq i32 %92, 0
  br i1 %cmp142, label %if.then.144, label %if.end.149

if.then.144:                                      ; preds = %land.lhs.true.141
  %93 = load i8*, i8** %__s1110, align 8, !tbaa !1
  %arrayidx145 = getelementptr inbounds i8, i8* %93, i64 3
  %94 = load i8, i8* %arrayidx145, align 1, !tbaa !53
  %conv146 = zext i8 %94 to i32
  %95 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i64 3), align 1, !tbaa !53
  %conv147 = zext i8 %95 to i32
  %sub148 = sub nsw i32 %conv146, %conv147
  store i32 %sub148, i32* %__result114, align 4, !tbaa !5
  br label %if.end.149

if.end.149:                                       ; preds = %if.then.144, %land.lhs.true.141, %if.then.134
  br label %if.end.150

if.end.150:                                       ; preds = %if.end.149, %land.lhs.true.131, %if.then.124
  br label %if.end.151

if.end.151:                                       ; preds = %if.end.150, %land.lhs.true.121, %cond.true.108
  %96 = load i32, i32* %__result114, align 4, !tbaa !5
  store i32 %96, i32* %tmp152, !tbaa !5
  %97 = bitcast i32* %__result114 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %97) #1
  %98 = bitcast i8** %__s1110 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %98) #1
  %99 = load i32, i32* %tmp152, !tbaa !5
  br label %cond.end.157

cond.false.153:                                   ; preds = %land.lhs.true.104, %cond.true.98
  %value154 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %gref, i32 0, i32 1
  %const_bytes155 = bitcast %union.v* %value154 to i8**
  %100 = load i8*, i8** %const_bytes155, align 8, !tbaa !1
  %call156 = call i32 @strcmp(i8* %100, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0)) #7
  br label %cond.end.157

cond.end.157:                                     ; preds = %cond.false.153, %if.end.151
  %cond158 = phi i32 [ %99, %if.end.151 ], [ %call156, %cond.false.153 ]
  store i32 %cond158, i32* %tmp103, !tbaa !5
  %101 = bitcast i64* %__s2_len102 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %101) #1
  %102 = bitcast i64* %__s1_len100 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %102) #1
  %103 = load i32, i32* %tmp103, !tbaa !5
  br label %cond.end.163

cond.false.159:                                   ; preds = %land.lhs.true.94
  %value160 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %gref, i32 0, i32 1
  %const_bytes161 = bitcast %union.v* %value160 to i8**
  %104 = load i8*, i8** %const_bytes161, align 8, !tbaa !1
  %call162 = call i32 @strncmp(i8* %104, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i64 10) #6
  br label %cond.end.163

cond.end.163:                                     ; preds = %cond.false.159, %cond.end.157
  %cond164 = phi i32 [ %103, %cond.end.157 ], [ %call162, %cond.false.159 ]
  %cmp165 = icmp eq i32 %cond164, 0
  br i1 %cmp165, label %if.then.167, label %if.end.173

if.then.167:                                      ; preds = %cond.end.163, %cond.end.85
  %105 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack168 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %105, i32 0, i32 26
  %stack169 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack168, i32 0, i32 0
  %p170 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack169, i32 0, i32 0
  %106 = load %struct.ref_s*, %struct.ref_s** %p170, align 8, !tbaa !45
  %add.ptr171 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %106, i64 -4
  store %struct.ref_s* %add.ptr171, %struct.ref_s** %p170, align 8, !tbaa !45
  %107 = load i32 (%struct.gs_state_s*)*, i32 (%struct.gs_state_s*)** %cont.addr, align 8, !tbaa !1
  %108 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %108, i32 0, i32 0
  %109 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !7
  %call172 = call i32 %107(%struct.gs_state_s* %109) #5
  store i32 %call172, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.173:                                       ; preds = %cond.end.163, %lor.lhs.false.89
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.173, %if.then.167
  %110 = bitcast %struct.ref_s* %gref to i8*
  call void @llvm.lifetime.end(i64 16, i8* %110) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.200 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.174

if.end.174:                                       ; preds = %cleanup.cont, %if.then.17
  br label %if.end.175

if.end.175:                                       ; preds = %if.end.174, %if.end.16
  %111 = load %struct.ref_s*, %struct.ref_s** %opc, align 8, !tbaa !1
  %value176 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %111, i32 0, i32 1
  %intval = bitcast %union.v* %value176 to i64*
  %112 = load i64, i64* %intval, align 8, !tbaa !56
  %conv177 = trunc i64 %112 to i32
  store i32 %conv177, i32* %glyph_index, align 4, !tbaa !5
  %113 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont42, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %113, i32 0, i32 29
  %gsub_size = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data, i32 0, i32 25
  %114 = load i64, i64* %gsub_size, align 8, !tbaa !57
  %tobool178 = icmp ne i64 %114, 0
  br i1 %tobool178, label %if.then.179, label %if.end.184

if.then.179:                                      ; preds = %if.end.175
  %115 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont42, align 8, !tbaa !1
  %data180 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %115, i32 0, i32 29
  %substitute_glyph_index_vertical = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data180, i32 0, i32 5
  %116 = load i32 (%struct.gs_font_type42_s*, i32, i32, i64)*, i32 (%struct.gs_font_type42_s*, i32, i32, i64)** %substitute_glyph_index_vertical, align 8, !tbaa !58
  %117 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont42, align 8, !tbaa !1
  %118 = load i32, i32* %glyph_index, align 4, !tbaa !5
  %119 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs181 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %119, i32 0, i32 0
  %120 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs181, align 8, !tbaa !7
  %call182 = call %struct.gs_font_s* @gs_rootfont(%struct.gs_state_s* %120) #5
  %WMode = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %call182, i32 0, i32 16
  %121 = load i32, i32* %WMode, align 4, !tbaa !20
  %122 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %returned = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %122, i32 0, i32 28
  %current_glyph = getelementptr inbounds %struct.gs_text_returned_s, %struct.gs_text_returned_s* %returned, i32 0, i32 1
  %123 = load i64, i64* %current_glyph, align 8, !tbaa !59
  %call183 = call i32 %116(%struct.gs_font_type42_s* %117, i32 %118, i32 %121, i64 %123) #5
  store i32 %call183, i32* %glyph_index, align 4, !tbaa !5
  br label %if.end.184

if.end.184:                                       ; preds = %if.then.179, %if.end.175
  %124 = load i32, i32* %glyph_index, align 4, !tbaa !5
  %125 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs185 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %125, i32 0, i32 0
  %126 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs185, align 8, !tbaa !7
  %127 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs186 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %127, i32 0, i32 0
  %128 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs186, align 8, !tbaa !7
  %path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %128, i32 0, i32 61
  %129 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8, !tbaa !87
  %130 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %131 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %132 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %text = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %132, i32 0, i32 0
  %operation = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text, i32 0, i32 0
  %133 = load i32, i32* %operation, align 4, !tbaa !88
  %and = and i32 %133, 63488
  %cmp187 = icmp ne i32 %and, 0
  %conv188 = zext i1 %cmp187 to i32
  %call189 = call i32 @gs_type42_append(i32 %124, %struct.gs_state_s* %126, %struct.gx_path_s* %129, %struct.gs_text_enum_s* %130, %struct.gs_font_s* %131, i32 %conv188) #5
  store i32 %call189, i32* %code, align 4, !tbaa !5
  %134 = load i32, i32* %code, align 4, !tbaa !5
  %cmp190 = icmp slt i32 %134, 0
  br i1 %cmp190, label %if.then.192, label %if.end.193

if.then.192:                                      ; preds = %if.end.184
  %135 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %135, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.200

if.end.193:                                       ; preds = %if.end.184
  %136 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack194 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %136, i32 0, i32 26
  %stack195 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack194, i32 0, i32 0
  %p196 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack195, i32 0, i32 0
  %137 = load %struct.ref_s*, %struct.ref_s** %p196, align 8, !tbaa !45
  %add.ptr197 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %137, i64 -4
  store %struct.ref_s* %add.ptr197, %struct.ref_s** %p196, align 8, !tbaa !45
  %138 = load i32 (%struct.gs_state_s*)*, i32 (%struct.gs_state_s*)** %cont.addr, align 8, !tbaa !1
  %139 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs198 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %139, i32 0, i32 0
  %140 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs198, align 8, !tbaa !7
  %call199 = call i32 %138(%struct.gs_state_s* %140) #5
  store i32 %call199, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.200

cleanup.200:                                      ; preds = %if.end.193, %if.then.192, %cleanup, %if.then.15, %if.then.6, %if.then
  %141 = bitcast i32* %glyph_index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %141) #1
  %142 = bitcast %struct.ref_s** %opc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %142) #1
  %143 = bitcast %struct.gs_text_enum_s** %penum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %143) #1
  %144 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %144) #1
  %145 = bitcast %struct.gs_font_type42_s** %pfont42 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %145) #1
  %146 = bitcast %struct.gs_font_s** %pfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %146) #1
  %147 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %147) #1
  %148 = load i32, i32* %retval
  ret i32 %148
}

declare i32 @gs_fill(%struct.gs_state_s*) #2

declare void @names_string_ref(%struct.name_table_s*, %struct.ref_s*, %struct.ref_s*) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare i32 @strcmp(i8*, i8*) #4

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #3

declare i32 @gs_type42_append(i32, %struct.gs_state_s*, %struct.gx_path_s*, %struct.gs_text_enum_s*, %struct.gs_font_s*, i32) #2

declare i32 @gs_stroke(%struct.gs_state_s*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin }
attributes #6 = { nobuiltin nounwind readonly }
attributes #7 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !2, i64 0}
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
!20 = !{!21, !6, i64 148}
!21 = !{!"gs_font_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !6, i64 32, !22, i64 40, !14, i64 56, !2, i64 64, !2, i64 72, !23, i64 80, !23, i64 104, !3, i64 128, !6, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !6, i64 148, !6, i64 152, !24, i64 156, !6, i64 160, !25, i64 168, !26, i64 272, !26, i64 324}
!22 = !{!"gs_notify_list_s", !2, i64 0, !2, i64 8}
!23 = !{!"gs_matrix_s", !24, i64 0, !24, i64 4, !24, i64 8, !24, i64 12, !24, i64 16, !24, i64 20}
!24 = !{!"float", !3, i64 0}
!25 = !{!"gs_font_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96}
!26 = !{!"gs_font_name_s", !3, i64 0, !6, i64 48}
!27 = !{!28, !2, i64 72}
!28 = !{!"gs_font_base_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !6, i64 32, !22, i64 40, !14, i64 56, !2, i64 64, !2, i64 72, !23, i64 80, !23, i64 104, !3, i64 128, !6, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !6, i64 148, !6, i64 152, !24, i64 156, !6, i64 160, !25, i64 168, !26, i64 272, !26, i64 324, !29, i64 376, !32, i64 408, !2, i64 424, !2, i64 432, !3, i64 440, !3, i64 444}
!29 = !{!"gs_rect_s", !30, i64 0, !30, i64 16}
!30 = !{!"gs_point_s", !31, i64 0, !31, i64 8}
!31 = !{!"double", !3, i64 0}
!32 = !{!"gs_uid_s", !14, i64 0, !2, i64 8}
!33 = !{!34, !2, i64 480}
!34 = !{!"gs_font_type42_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !6, i64 32, !22, i64 40, !14, i64 56, !2, i64 64, !2, i64 72, !23, i64 80, !23, i64 104, !3, i64 128, !6, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !6, i64 148, !6, i64 152, !24, i64 156, !6, i64 160, !25, i64 168, !26, i64 272, !26, i64 324, !29, i64 376, !32, i64 408, !2, i64 424, !2, i64 432, !3, i64 440, !3, i64 444, !35, i64 448}
!35 = !{!"gs_type42_data_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !14, i64 48, !14, i64 56, !6, i64 64, !6, i64 68, !3, i64 72, !14, i64 120, !14, i64 128, !14, i64 136, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !2, i64 168, !2, i64 176, !6, i64 184, !6, i64 188, !2, i64 192, !14, i64 200}
!36 = !{!24, !24, i64 0}
!37 = !{!28, !31, i64 400}
!38 = !{!31, !31, i64 0}
!39 = !{!28, !31, i64 384}
!40 = !{!29, !31, i64 0}
!41 = !{!29, !31, i64 8}
!42 = !{!28, !31, i64 392}
!43 = !{!29, !31, i64 16}
!44 = !{!29, !31, i64 24}
!45 = !{!8, !2, i64 624}
!46 = !{!28, !6, i64 152}
!47 = !{!21, !3, i64 128}
!48 = !{!21, !6, i64 152}
!49 = !{!21, !24, i64 156}
!50 = !{!8, !2, i64 520}
!51 = !{!8, !2, i64 536}
!52 = !{!11, !13, i64 0}
!53 = !{!3, !3, i64 0}
!54 = !{!8, !2, i64 640}
!55 = !{!8, !6, i64 688}
!56 = !{!14, !14, i64 0}
!57 = !{!34, !14, i64 648}
!58 = !{!34, !2, i64 488}
!59 = !{!60, !14, i64 424}
!60 = !{!"gs_text_enum_s", !61, i64 0, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !62, i64 160, !2, i64 184, !2, i64 192, !14, i64 200, !6, i64 208, !63, i64 212, !2, i64 224, !6, i64 232, !6, i64 236, !64, i64 240, !6, i64 344, !6, i64 348, !6, i64 352, !30, i64 360, !14, i64 376, !6, i64 384, !63, i64 388, !30, i64 400, !65, i64 416}
!61 = !{!"gs_text_params_s", !6, i64 0, !3, i64 8, !6, i64 16, !30, i64 24, !30, i64 40, !3, i64 56, !2, i64 64, !2, i64 72, !6, i64 80}
!62 = !{!"rc_header_s", !14, i64 0, !2, i64 8, !2, i64 16}
!63 = !{!"gs_log2_scale_point_s", !6, i64 0, !6, i64 4}
!64 = !{!"gx_font_stack_s", !6, i64 0, !3, i64 8}
!65 = !{!"gs_text_returned_s", !14, i64 0, !14, i64 8, !30, i64 16}
!66 = !{i64 0, i64 4, !5, i64 4, i64 4, !5}
!67 = !{!68, !6, i64 304}
!68 = !{!"gs_state_s", !6, i64 0, !2, i64 8, !2, i64 16, !69, i64 24, !6, i64 128, !71, i64 132, !6, i64 168, !30, i64 176, !30, i64 192, !6, i64 208, !6, i64 212, !13, i64 216, !3, i64 220, !72, i64 224, !72, i64 228, !73, i64 232, !14, i64 240, !6, i64 248, !6, i64 252, !6, i64 256, !2, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !24, i64 296, !74, i64 300, !6, i64 308, !6, i64 312, !6, i64 316, !24, i64 320, !6, i64 324, !6, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !6, i64 408, !2, i64 416, !2, i64 424, !75, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !76, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !76, i64 1336, !2, i64 1616, !23, i64 1624, !6, i64 1648, !23, i64 1652, !6, i64 1676, !2, i64 1680, !2, i64 1688, !2, i64 1696, !2, i64 1704, !14, i64 1712, !14, i64 1720, !2, i64 1728, !6, i64 1736, !3, i64 1744, !2, i64 1792, !2, i64 1800, !71, i64 1808, !6, i64 1844, !3, i64 1848, !3, i64 1852, !2, i64 1856, !6, i64 1864, !2, i64 1872, !2, i64 1880, !77, i64 1888}
!69 = !{!"gx_line_params_s", !24, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !6, i64 20, !24, i64 24, !24, i64 28, !24, i64 32, !6, i64 36, !23, i64 40, !70, i64 64}
!70 = !{!"gx_dash_params_s", !2, i64 0, !6, i64 8, !24, i64 12, !6, i64 16, !24, i64 20, !6, i64 24, !6, i64 28, !24, i64 32}
!71 = !{!"gs_matrix_fixed_s", !24, i64 0, !24, i64 4, !24, i64 8, !24, i64 12, !24, i64 16, !24, i64 20, !6, i64 24, !6, i64 28, !6, i64 32}
!72 = !{!"gs_transparency_source_s", !24, i64 0}
!73 = !{!"gs_xstate_trans_flags", !6, i64 0, !6, i64 4}
!74 = !{!"gs_fixed_point_s", !6, i64 0, !6, i64 4}
!75 = !{!"gx_transfer_s", !6, i64 0, !2, i64 8, !6, i64 16, !2, i64 24, !6, i64 32, !2, i64 40, !6, i64 48, !2, i64 56}
!76 = !{!"gs_devicen_color_map_s", !6, i64 0, !3, i64 4, !6, i64 8, !6, i64 12, !14, i64 16, !3, i64 24}
!77 = !{!"gs_state_client_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!78 = !{!68, !6, i64 300}
!79 = !{!8, !6, i64 196}
!80 = !{!8, !2, i64 8}
!81 = !{!82, !2, i64 192}
!82 = !{!"gs_memory_s", !2, i64 0, !83, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!83 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!84 = !{!85, !2, i64 120}
!85 = !{!"gs_lib_ctx_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !14, i64 104, !2, i64 112, !2, i64 120, !6, i64 128, !2, i64 136, !6, i64 144, !6, i64 148, !3, i64 152, !2, i64 168, !6, i64 176, !2, i64 184, !6, i64 192, !2, i64 200, !2, i64 208}
!86 = !{!11, !6, i64 4}
!87 = !{!68, !2, i64 1680}
!88 = !{!60, !6, i64 0}
