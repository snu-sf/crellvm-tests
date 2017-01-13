; ModuleID = './gdevl4v.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, {}*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.gx_device_lips4v_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gs_memory_s*, %struct.gx_device_vector_procs_s*, [4096 x i8], %struct._IO_FILE*, %struct.stream_s*, i8*, i32, i32, %struct.gs_imager_state_s, float*, i32, i32, i32, %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s, i64, i64, i32, i32, %struct.gs_point_s, i32, %struct.gx_device_bbox_s*, i64, i64, i32, [12 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, [257 x i64], [257 x i64] }
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
%struct.rc_header_s = type { i64, %struct.gs_memory_s*, void (%struct.gs_memory_s*, i8*, i8*)* }
%struct.gx_device_color_info_s = type { i32, i32, i32, i16, i8, i32, i32, i32, i32, %struct.gx_device_anti_alias_info_s, i32, [64 x i8], [64 x i8], [64 x i64], i8*, i32, i64, i32 }
%struct.gx_device_anti_alias_info_s = type { i32, i32 }
%struct.gx_device_cached_colors_s = type { i64, i64 }
%struct.gx_stroked_gradient_recognizer_s = type { i32, [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s] }
%struct.gs_fixed_point_s = type { i32, i32 }
%struct.gdev_space_params_s = type { i64, i64, %struct.gx_band_params_s, i32, i32 }
%struct.gx_band_params_s = type { i32, i32, i64 }
%struct.cmm_dev_profile_s = type { [4 x %struct.cmm_profile_s*], %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, [4 x %struct.gsicc_rendering_param_s], i32, i32, i32, i32, i32, i32, %struct.gsicc_namelist_s*, i32, %struct.gs_memory_s*, %struct.rc_header_s }
%struct.cmm_profile_s = type { i8, i8, i32, i32, i32, i32, %struct.gs_range_icc_s, i64, i32, [15 x i32], i32, i32, i32, %struct.gsicc_rendering_param_s, i8*, %struct.gx_device_s*, %struct.gsicc_namelist_s*, i8*, %struct.rc_header_s, i32, i8*, %struct.gs_memory_s*, %struct.gx_monitor_s* }
%struct.gs_range_icc_s = type { [15 x %struct.gs_range_s] }
%struct.gs_range_s = type { float, float }
%struct.gsicc_rendering_param_s = type { i32, i32, i32, i32, i32, i32 }
%struct.gx_monitor_s = type { %struct.gs_memory_s*, %union.gp_monitor }
%union.gp_monitor = type { i8* }
%struct.gsicc_namelist_s = type { i32, %struct.gsicc_colorname_s*, i8*, %struct.gs_devicen_color_map_s*, i32 }
%struct.gsicc_colorname_s = type { i8*, i32, %struct.gsicc_colorname_s* }
%struct.gs_devicen_color_map_s = type { i32, i32, i32, i32, i64, [64 x i32] }
%struct.gx_page_device_procs_s = type { i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* }
%struct.gs_state_s = type { i32, %struct.gs_memory_s*, i8*, %struct.gx_line_params_s, i32, %struct.gs_matrix_fixed_s, i32, %struct.gs_point_s, %struct.gs_point_s, i32, i32, i16, i32, %struct.gs_transparency_source_s, %struct.gs_transparency_source_s, %struct.gs_xstate_trans_flags, i64, i32, i32, i32, %struct.gx_device_s*, i32, i32, i32, i32, i32, i32, float, %struct.gs_fixed_point_s, i32, i32, i32, float, i32, i32, %struct.gsicc_manager_s*, %struct.gsicc_link_cache_s*, %struct.gsicc_profile_cache_s*, %struct.gx_color_map_procs_s* (%struct.gs_imager_state_s*, %struct.gx_device_s*)*, %struct.gs_halftone_s*, [2 x %struct.gs_int_point_s], %struct.gx_device_halftone_s*, %struct.gs_cie_render_s*, i32, %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s*, %struct.gx_transfer_s, [64 x %struct.gx_transfer_map_s*], %struct.gx_cie_joint_caches_s*, %struct.gx_color_map_procs_s*, %struct.gs_devicen_color_map_s, %struct.gx_pattern_cache_s*, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_devicen_color_map_s, %struct.gs_state_s*, %struct.gs_matrix_s, i32, %struct.gs_matrix_s, i32, %struct.gx_path_s*, %struct.gx_clip_path_s*, %struct.gx_clip_stack_s*, %struct.gx_clip_path_s*, i64, i64, %struct.gx_clip_path_s*, i32, [2 x %struct.anon], %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_matrix_fixed_s, i32, i32, i32, %struct.gs_state_s*, i32, %struct.gx_device_s*, %struct.gs_device_filter_stack_s*, %struct.gs_state_client_procs_s }
%struct.gx_line_params_s = type { float, i32, i32, i32, i32, i32, float, float, float, i32, %struct.gs_matrix_s, %struct.gx_dash_params_s }
%struct.gx_dash_params_s = type { float*, i32, float, i32, float, i32, i32, float }
%struct.gs_transparency_source_s = type { float }
%struct.gs_xstate_trans_flags = type { i32, i32 }
%struct.gsicc_manager_s = type { %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.gsicc_devicen_s*, %struct.gsicc_smask_s*, i32, %struct.cmm_srcgtag_profile_s*, %struct.gs_memory_s*, %struct.rc_header_s }
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
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gx_path_s = type opaque
%struct.gx_clip_stack_s = type opaque
%struct.gx_clip_path_s = type opaque
%struct.anon = type { %struct.gs_color_space_s*, %struct.gs_client_color_s*, %struct.gx_device_color_s* }
%struct.gs_font_s = type opaque
%struct.gs_matrix_fixed_s = type { float, float, float, float, float, float, i32, i32, i32 }
%struct.gs_device_filter_stack_s = type { %struct.gs_device_filter_stack_s*, %struct.gs_device_filter_s*, %struct.gx_device_s*, %struct.rc_header_s }
%struct.gs_device_filter_s = type opaque
%struct.gs_state_client_procs_s = type { i8* (%struct.gs_memory_s*)*, i32 (i8*, i8*)*, void (i8*, %struct.gs_memory_s*)*, i32 (i8*, i8*, i32)* }
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i8*, i8**)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i64 (%struct.gx_device_s*, i16*)*, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i32, i32*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)*, i32 (%struct.gx_device_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, void (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* }
%struct.gx_tile_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16 }
%struct.gx_xfont_procs_s = type opaque
%struct.gx_fill_params_s = type opaque
%struct.gx_stroke_params_s = type opaque
%struct.gs_fixed_edge_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_image1_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, i32, i32, i32, [130 x float], i32, i32, i32, %struct.gs_color_space_s*, i32, i32, i32, i32 }
%struct.gx_image_type_s = type { %struct.gs_memory_struct_type_s*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gs_imager_state_s*, %struct.gs_image_common_s*, %struct.gs_int_point_s*)*, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s**)*, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s*)*, void (%struct.gs_image_common_s*, %struct.gs_memory_s*)*, i32 }
%struct.gs_image_common_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s }
%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }
%struct.gx_image_enum_common_s = type { %struct.gx_image_type_s*, %struct.gx_image_enum_procs_s*, %struct.gx_device_s*, %struct.gs_memory_s*, i64, i32, i32, [65 x i32], [65 x i32] }
%struct.gx_image_enum_procs_s = type { i32 (%struct.gx_image_enum_common_s*, %struct.gx_image_plane_s*, i32, i32*)*, i32 (%struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_image_enum_common_s*)*, i32 (%struct.gx_image_enum_common_s*, i8*)* }
%struct.gx_image_plane_s = type { i8*, i32, i32 }
%struct.gx_strip_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16, i16, i16, i32 }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
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
%struct.gx_device_vector_procs_s = type { i32 (%struct.gx_device_vector_s*)*, i32 (%struct.gx_device_vector_s*, double)*, i32 (%struct.gx_device_vector_s*, i32)*, i32 (%struct.gx_device_vector_s*, i32)*, i32 (%struct.gx_device_vector_s*, double)*, i32 (%struct.gx_device_vector_s*, float*, i32, double)*, i32 (%struct.gx_device_vector_s*, double)*, i32 (%struct.gx_device_vector_s*, i32, i32)*, i32 (%struct.gx_device_vector_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_vector_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_vector_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_vector_s*, %struct.gx_path_s*, i32, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_vector_s*, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_vector_s*, i32)*, i32 (%struct.gx_device_vector_s*, double, double, double, double, i32)*, i32 (%struct.gx_device_vector_s*, double, double, double, double, i32)*, i32 (%struct.gx_device_vector_s*, double, double, double, double, double, double, double, double, i32)*, i32 (%struct.gx_device_vector_s*, double, double, double, double, i32)*, i32 (%struct.gx_device_vector_s*, i32)* }
%struct.gx_device_vector_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gs_memory_s*, %struct.gx_device_vector_procs_s*, [4096 x i8], %struct._IO_FILE*, %struct.stream_s*, i8*, i32, i32, %struct.gs_imager_state_s, float*, i32, i32, i32, %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s, i64, i64, i32, i32, %struct.gs_point_s, i32, %struct.gx_device_bbox_s*, i64, i64 }
%struct.gs_imager_state_s = type { i32, %struct.gs_memory_s*, i8*, %struct.gx_line_params_s, i32, %struct.gs_matrix_fixed_s, i32, %struct.gs_point_s, %struct.gs_point_s, i32, i32, i16, i32, %struct.gs_transparency_source_s, %struct.gs_transparency_source_s, %struct.gs_xstate_trans_flags, i64, i32, i32, i32, %struct.gx_device_s*, i32, i32, i32, i32, i32, i32, float, %struct.gs_fixed_point_s, i32, i32, i32, float, i32, i32, %struct.gsicc_manager_s*, %struct.gsicc_link_cache_s*, %struct.gsicc_profile_cache_s*, %struct.gx_color_map_procs_s* (%struct.gs_imager_state_s*, %struct.gx_device_s*)*, %struct.gs_halftone_s*, [2 x %struct.gs_int_point_s], %struct.gx_device_halftone_s*, %struct.gs_cie_render_s*, i32, %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s*, %struct.gx_transfer_s, [64 x %struct.gx_transfer_map_s*], %struct.gx_cie_joint_caches_s*, %struct.gx_color_map_procs_s*, %struct.gs_devicen_color_map_s, %struct.gx_pattern_cache_s*, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_devicen_color_map_s }
%struct.gx_hl_saved_color_s = type { i64, i64, i32, %struct.gs_client_color_s, %struct.gx_device_color_saved_s }
%struct.gs_point_s = type { double, double }
%struct.gx_device_bbox_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, i32, i32, %struct.gx_device_bbox_procs_s, i8*, i32, %struct.gs_fixed_rect_s, i64, i64, i64 }
%struct.gx_device_bbox_procs_s = type { i32 (i8*)*, void (i8*, %struct.gs_fixed_rect_s*)*, void (i8*, i32, i32, i32, i32)*, i32 (i8*, %struct.gs_fixed_rect_s*)* }
%struct.gdev_vector_image_enum_s = type { %struct.gx_image_type_s*, %struct.gx_image_enum_procs_s*, %struct.gx_device_s*, %struct.gs_memory_s*, i64, i32, i32, [65 x i32], [65 x i32], %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s*, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"gx_device_lips4v\00", align 1
@st_device_lips4v = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 13136, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @device_lips4v_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @device_lips4v_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* @gx_device_finalize, i8* null }, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"lips4v\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"DeviceGray\00", align 1
@gs_lips4v_device = global %struct.gx_device_lips4v_s { i32 13136, %struct.gx_device_procs_s* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_device_lips4v to %struct.gs_memory_struct_type_s*), i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 8, i8 0, i32 1000, i32 1000, i32 5, i32 2, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 4958, i32 7016, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 0x4082980020000000, float 0x408A4FFF60000000], [4 x float] zeroinitializer, i32 0, [2 x float] [float 6.000000e+02, float 6.000000e+02], [2 x float] [float 6.000000e+02, float 6.000000e+02], [2 x float] [float 0xC05D870E20000000, float 0xC05D870E20000000], [4 x float] [float 0x402C58B160000000, float 0x402C58B160000000, float 0x402C58B160000000, float 0x402C58B160000000], i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @lips4v_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* @gx_upright_get_initial_matrix, i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32, i32)* @lips4v_output_page, i32 (%struct.gx_device_s*)* @lips4v_close, i64 (%struct.gx_device_s*, i16*)* @gx_default_gray_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_gray_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @gdev_vector_fill_rectangle, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* @lips4v_copy_mono, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* @lips4v_copy_color, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @lips4v_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @lips4v_put_params, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_page_device_get_page_device, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @gdev_vector_fill_path, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @gdev_vector_stroke_path, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* @lips4v_fill_mask, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gdev_vector_fill_trapezoid, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gdev_vector_fill_parallelogram, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gdev_vector_fill_triangle, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* @lips4v_begin_image, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, %struct.gs_memory_s* null, %struct.gx_device_vector_procs_s* null, [4096 x i8] zeroinitializer, %struct._IO_FILE* null, %struct.stream_s* null, i8* null, i32 0, i32 0, %struct.gs_imager_state_s zeroinitializer, float* null, i32 0, i32 1, i32 1, %struct.gx_hl_saved_color_s zeroinitializer, %struct.gx_hl_saved_color_s zeroinitializer, i64 0, i64 0, i32 0, i32 0, %struct.gs_point_s { double 0x4020AAAAAAAAAAAB, double 0x4020AAAAAAAAAAAB }, i32 0, %struct.gx_device_bbox_s* null, i64 -1, i64 -1, i32 0, [12 x i8] c"Ghostscript\00", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, i32 1, i32 0, [32 x i8] c"Default\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, i32 0, i32 0, i32 -1, i32 0, [257 x i64] zeroinitializer, [257 x i64] zeroinitializer }, align 8
@st_device_vector = external constant %struct.gs_memory_struct_type_s, align 8
@lips4v_vector_procs = internal constant %struct.gx_device_vector_procs_s { i32 (%struct.gx_device_vector_s*)* @lips4v_beginpage, i32 (%struct.gx_device_vector_s*, double)* @lips4v_setlinewidth, i32 (%struct.gx_device_vector_s*, i32)* @lips4v_setlinecap, i32 (%struct.gx_device_vector_s*, i32)* @lips4v_setlinejoin, i32 (%struct.gx_device_vector_s*, double)* @lips4v_setmiterlimit, i32 (%struct.gx_device_vector_s*, float*, i32, double)* @lips4v_setdash, i32 (%struct.gx_device_vector_s*, double)* @lips4v_setflat, i32 (%struct.gx_device_vector_s*, i32, i32)* @lips4v_setlogop, i32 (%struct.gx_device_vector_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* @lips4v_can_handle_hl_color, i32 (%struct.gx_device_vector_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* @lips4v_setfillcolor, i32 (%struct.gx_device_vector_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* @lips4v_setstrokecolor, i32 (%struct.gx_device_vector_s*, %struct.gx_path_s*, i32, %struct.gs_matrix_s*)* @gdev_vector_dopath, i32 (%struct.gx_device_vector_s*, i32, i32, i32, i32, i32)* @gdev_vector_dorect, i32 (%struct.gx_device_vector_s*, i32)* @lips4v_beginpath, i32 (%struct.gx_device_vector_s*, double, double, double, double, i32)* @lips4v_moveto, i32 (%struct.gx_device_vector_s*, double, double, double, double, i32)* @lips4v_lineto, i32 (%struct.gx_device_vector_s*, double, double, double, double, double, double, double, double, i32)* @lips4v_curveto, i32 (%struct.gx_device_vector_s*, double, double, double, double, i32)* @lips4v_closepath, i32 (%struct.gx_device_vector_s*, i32)* @lips4v_endpath }, align 8
@l4v_file_header1 = internal global i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.49, i32 0, i32 0), align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"@PJL SET RESOLUTION = SUPERFINE\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"@PJL SET RESOLUTION = FINE\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"@PJL SET RESOLUTION = QUICK\0A\00", align 1
@l4v_file_header2 = internal global i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.50, i32 0, i32 0), align 8
@.str.6 = private unnamed_addr constant [27 x i8] c"@PJL SET TONER-DENSITY=%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"@PJL SET TONER-SAVING=\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"ON\0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"OFF\0A\00", align 1
@l4v_file_header3 = internal global i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.51, i32 0, i32 0), align 8
@l4v_file_header4 = internal global i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.52, i32 0, i32 0), align 8
@.str.10 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@l4vmono_file_header = internal global i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.53, i32 0, i32 0), align 8
@l4vcolor_file_header = internal global i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.54, i32 0, i32 0), align 8
@.str.11 = private unnamed_addr constant [9 x i8] c"%c2y%s%c\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"PlainPaper\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"20't\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"OHP\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"TransparencyFilm\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"40't\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"CardBoard\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"30't\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"GlossyFilm\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"41't\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"Default\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"%c10q\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"%c%dq\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"%c80;%d;%dp\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"%c%dp\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"%c11;12;12~\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"%c%d1;;%do\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"%c2;#x\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"%c0;#w\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"%c2;#w\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"%c0;#x\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"?1;4;5;6;14l\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"?2;3;h\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"11h\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"%c?7;%d I\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"%c[0&}#%c\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"!0\00", align 1
@.str.38 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"!13%c$%c\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"!11%c$%c\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"(00\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"}\22\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"I00\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"}F2\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"}H1\00", align 1
@.str.46 = private unnamed_addr constant [3 x i8] c"*0\00", align 1
@.str.47 = private unnamed_addr constant [3 x i8] c"}M\00", align 1
@.str.48 = private unnamed_addr constant [4 x i8] c"}I1\00", align 1
@.str.49 = private unnamed_addr constant [54 x i8] c"\1B%-12345X@PJL CJLMODE\0A@PJL JOB\0A\1B%-12345X@PJL CJLMODE\0A\00", align 1
@.str.50 = private unnamed_addr constant [32 x i8] c"@PJL SET LPARM : LIPS SW2 = ON\0A\00", align 1
@.str.51 = private unnamed_addr constant [28 x i8] c"@PJL ENTER LANGUAGE = LIPS\0A\00", align 1
@.str.52 = private unnamed_addr constant [9 x i8] c"\1B%@\1BP41;\00", align 1
@.str.53 = private unnamed_addr constant [25 x i8] c";1Jlips4v:2.3.6\1B\5C\1B[0\22p\1B<\00", align 1
@.str.54 = private unnamed_addr constant [26 x i8] c";1Jlips4vc:2.3.6\1B\5C\1B[1\22p\1B<\00", align 1
@.str.55 = private unnamed_addr constant [3 x i8] c"&}\00", align 1
@.str.56 = private unnamed_addr constant [3 x i8] c"F1\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"}E%d%c\00", align 1
@.str.58 = private unnamed_addr constant [7 x i8] c"}F%d%c\00", align 1
@.str.59 = private unnamed_addr constant [4 x i8] c"E10\00", align 1
@.str.60 = private unnamed_addr constant [3 x i8] c"}d\00", align 1
@.str.61 = private unnamed_addr constant [3 x i8] c"E1\00", align 1
@.str.62 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.63 = private unnamed_addr constant [3 x i8] c"Pf\00", align 1
@gx_dc_type_data_pure = external constant %struct.gx_device_color_type_s, align 8
@.str.64 = private unnamed_addr constant [3 x i8] c"I0\00", align 1
@.str.65 = private unnamed_addr constant [3 x i8] c"I1\00", align 1
@.str.66 = private unnamed_addr constant [2 x i8] c"J\00", align 1
@.str.67 = private unnamed_addr constant [3 x i8] c"}T\00", align 1
@.str.68 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c"P(10\00", align 1
@.str.70 = private unnamed_addr constant [5 x i8] c"P(00\00", align 1
@.str.71 = private unnamed_addr constant [4 x i8] c"p10\00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c"p402\00", align 1
@.str.73 = private unnamed_addr constant [5 x i8] c"p404\00", align 1
@.str.74 = private unnamed_addr constant [3 x i8] c"p0\00", align 1
@.str.75 = private unnamed_addr constant [3 x i8] c"P)\00", align 1
@.str.76 = private unnamed_addr constant [4 x i8] c"}I0\00", align 1
@.str.77 = private unnamed_addr constant [5 x i8] c"P&00\00", align 1
@.str.78 = private unnamed_addr constant [5 x i8] c"PF00\00", align 1
@.str.79 = private unnamed_addr constant [5 x i8] c"PS00\00", align 1
@.str.80 = private unnamed_addr constant [5 x i8] c"PC10\00", align 1
@.str.81 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.82 = private unnamed_addr constant [3 x i8] c"}p\00", align 1
@.str.83 = private unnamed_addr constant [6 x i8] c"%c%dv\00", align 1
@.str.84 = private unnamed_addr constant [7 x i8] c"%c0J%c\00", align 1
@.str.85 = private unnamed_addr constant [44 x i8] c"%c%%-12345X@PJL SET LPARM : LIPS SW2 = OFF\0A\00", align 1
@.str.86 = private unnamed_addr constant [43 x i8] c"%c%%-12345X%c%%-12345X@PJL EOJ\0A%c%%-12345X\00", align 1
@.str.87 = private unnamed_addr constant [11 x i8] c"ManualFeed\00", align 1
@.str.88 = private unnamed_addr constant [7 x i8] c"Casset\00", align 1
@.str.89 = private unnamed_addr constant [7 x i8] c"Tumble\00", align 1
@.str.90 = private unnamed_addr constant [4 x i8] c"Nup\00", align 1
@.str.91 = private unnamed_addr constant [4 x i8] c"PJL\00", align 1
@.str.92 = private unnamed_addr constant [13 x i8] c"TonerDensity\00", align 1
@.str.93 = private unnamed_addr constant [12 x i8] c"TonerSaving\00", align 1
@.str.94 = private unnamed_addr constant [7 x i8] c"Duplex\00", align 1
@.str.95 = private unnamed_addr constant [7 x i8] c"FontDL\00", align 1
@.str.96 = private unnamed_addr constant [13 x i8] c"OutputFaceUp\00", align 1
@.str.97 = private unnamed_addr constant [10 x i8] c"MediaType\00", align 1
@.str.98 = private unnamed_addr constant [9 x i8] c"UserName\00", align 1
@.str.99 = private unnamed_addr constant [13 x i8] c"BitsPerPixel\00", align 1
@.str.100 = private unnamed_addr constant [4 x i8] c"}H0\00", align 1
@.str.101 = private unnamed_addr constant [3 x i8] c"}P\00", align 1
@.str.102 = private unnamed_addr constant [7 x i8] c"100110\00", align 1
@.str.103 = private unnamed_addr constant [5 x i8] c"}Q11\00", align 1
@.str.104 = private unnamed_addr constant [22 x i8] c"lips4v_copy_mono(buf)\00", align 1
@.str.105 = private unnamed_addr constant [8 x i8] c"%c%dx%c\00", align 1
@.str.106 = private unnamed_addr constant [53 x i8] c"%c%d;1;0;0;3840;8;400;100;0;0;200;%d;%d;0;0;;;;;%d.p\00", align 1
@.str.107 = private unnamed_addr constant [15 x i8] c"%c%d;%d;8;%d.q\00", align 1
@.str.108 = private unnamed_addr constant [8 x i8] c"%c%d%%v\00", align 1
@.str.109 = private unnamed_addr constant [7 x i8] c"?10;2;\00", align 1
@.str.110 = private unnamed_addr constant [6 x i8] c"?10;;\00", align 1
@.str.111 = private unnamed_addr constant [9 x i8] c"%d;%d;%d\00", align 1
@.str.112 = private unnamed_addr constant [3 x i8] c"%p\00", align 1
@.str.113 = private unnamed_addr constant [4 x i8] c"1.v\00", align 1
@.str.114 = private unnamed_addr constant [6 x i8] c"%c%da\00", align 1
@.str.115 = private unnamed_addr constant [6 x i8] c"%c%dj\00", align 1
@.str.116 = private unnamed_addr constant [6 x i8] c"%c%dk\00", align 1
@.str.117 = private unnamed_addr constant [6 x i8] c"%c%de\00", align 1
@.str.118 = private unnamed_addr constant [30 x i8] c"lips4v_write_image_data(cbuf)\00", align 1
@.str.119 = private unnamed_addr constant [34 x i8] c"lips4v_write_image_data(cbuf_rle)\00", align 1
@.str.120 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.121 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.122 = private unnamed_addr constant [5 x i8] c"0110\00", align 1
@.str.123 = private unnamed_addr constant [23 x i8] c"lips4v_copy_color(buf)\00", align 1
@.str.124 = private unnamed_addr constant [22 x i8] c"lips4v_fill_mask(buf)\00", align 1
@st_vector_image_enum = external constant %struct.gs_memory_struct_type_s, align 8
@.str.125 = private unnamed_addr constant [19 x i8] c"lips4v_begin_image\00", align 1
@lips4v_image_enum_procs = internal constant %struct.gx_image_enum_procs_s { i32 (%struct.gx_image_enum_common_s*, %struct.gx_image_plane_s*, i32, i32*)* @lips4v_image_plane_data, i32 (%struct.gx_image_enum_common_s*, i32)* @lips4v_image_end_image, i32 (%struct.gx_image_enum_common_s*)* null, i32 (%struct.gx_image_enum_common_s*, i8*)* null }, align 8
@.str.126 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.127 = private unnamed_addr constant [3 x i8] c"}U\00", align 1
@.str.128 = private unnamed_addr constant [23 x i8] c"lips4v_image_data(buf)\00", align 1
@.str.129 = private unnamed_addr constant [5 x i8] c"}Q10\00", align 1
@.str.130 = private unnamed_addr constant [7 x i8] c"}Q1100\00", align 1

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @device_lips4v_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = load %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_device_vector, i32 0, i32 4), align 8, !tbaa !7
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %3 = load i32, i32* %size.addr, align 4, !tbaa !5
  %4 = load i32, i32* %index.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %4, 0
  %5 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %6 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call %struct.gs_ptr_procs_s* %0(%struct.gs_memory_s* %1, i8* %2, i32 %3, i32 %sub, %struct.enum_ptr_s* %5, %struct.gs_memory_struct_type_s* @st_device_vector, %struct.gc_state_s* %6) #5
  ret %struct.gs_ptr_procs_s* %call
}

; Function Attrs: nounwind uwtable
define internal void @device_lips4v_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = load void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_device_vector, i32 0, i32 5), align 8, !tbaa !9
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = load i32, i32* %size.addr, align 4, !tbaa !5
  %3 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %0(i8* %1, i32 %2, %struct.gs_memory_struct_type_s* @st_device_vector, %struct.gc_state_s* %3) #5
  ret void
}

declare void @gx_device_finalize(%struct.gs_memory_s*, i8*) #1

declare i32 @gx_default_install(%struct.gx_device_s*, %struct.gs_state_s*) #1

declare i32 @gx_default_begin_page(%struct.gx_device_s*, %struct.gs_state_s*) #1

declare i32 @gx_default_end_page(%struct.gx_device_s*, i32, %struct.gs_state_s*) #1

; Function Attrs: nounwind uwtable
define internal i32 @lips4v_open(%struct.gx_device_s* %dev) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %vdev = alloca %struct.gx_device_vector_s*, align 8
  %pdev = alloca %struct.gx_device_lips4v_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_vector_s** %vdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_vector_s*
  store %struct.gx_device_vector_s* %2, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_lips4v_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gx_device_s* %4 to %struct.gx_device_lips4v_s*
  store %struct.gx_device_lips4v_s* %5, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call i32 @lips4v_range_check(%struct.gx_device_s* %7) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %8 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %10, i32 0, i32 3
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !10
  %12 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %v_memory = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %12, i32 0, i32 43
  store %struct.gs_memory_s* %11, %struct.gs_memory_s** %v_memory, align 8, !tbaa !23
  %13 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %vec_procs = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %13, i32 0, i32 44
  store %struct.gx_device_vector_procs_s* @lips4v_vector_procs, %struct.gx_device_vector_procs_s** %vec_procs, align 8, !tbaa !43
  %14 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %call1 = call i32 @gdev_vector_open_file_options(%struct.gx_device_vector_s* %14, i32 512, i32 10) #5
  store i32 %call1, i32* %code, align 4, !tbaa !5
  %15 = load i32, i32* %code, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %15, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %16 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %17 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %bbox_device = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %17, i32 0, i32 64
  %18 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bbox_device, align 8, !tbaa !44
  %cmp5 = icmp ne %struct.gx_device_bbox_s* %18, null
  br i1 %cmp5, label %if.then.6, label %if.end.17

if.then.6:                                        ; preds = %if.end.4
  %19 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %bbox_device7 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %19, i32 0, i32 64
  %20 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bbox_device7, align 8, !tbaa !44
  %memory8 = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %20, i32 0, i32 3
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory8, align 8, !tbaa !46
  %cmp9 = icmp eq %struct.gs_memory_s* %21, null
  br i1 %cmp9, label %if.then.10, label %if.end.16

if.then.10:                                       ; preds = %if.then.6
  %22 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory11 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %22, i32 0, i32 3
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory11, align 8, !tbaa !10
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %23, i32 0, i32 1
  %stable = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 3
  %24 = load %struct.gs_memory_s* (%struct.gs_memory_s*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)** %stable, align 8, !tbaa !50
  %25 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory12 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %25, i32 0, i32 3
  %26 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory12, align 8, !tbaa !10
  %call13 = call %struct.gs_memory_s* %24(%struct.gs_memory_s* %26) #5
  %27 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %bbox_device14 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %27, i32 0, i32 64
  %28 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bbox_device14, align 8, !tbaa !44
  %memory15 = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %28, i32 0, i32 3
  store %struct.gs_memory_s* %call13, %struct.gs_memory_s** %memory15, align 8, !tbaa !46
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.10, %if.then.6
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.end.4
  %29 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  call void @gdev_vector_init(%struct.gx_device_vector_s* %29) #5
  %30 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %first_page = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %30, i32 0, i32 82
  store i32 1, i32* %first_page, align 4, !tbaa !53
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.17, %if.then.3, %if.then
  %31 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #2
  %32 = bitcast %struct.gx_device_lips4v_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #2
  %33 = bitcast %struct.gx_device_vector_s** %vdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #2
  %34 = load i32, i32* %retval
  ret i32 %34
}

declare void @gx_upright_get_initial_matrix(%struct.gx_device_s*, %struct.gs_matrix_s*) #1

; Function Attrs: nounwind uwtable
define internal i32 @lips4v_output_page(%struct.gx_device_s* %dev, i32 %num_copies, i32 %flush) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %num_copies.addr = alloca i32, align 4
  %flush.addr = alloca i32, align 4
  %vdev = alloca %struct.gx_device_vector_s*, align 8
  %pdev = alloca %struct.gx_device_lips4v_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %str = alloca [6 x i8], align 1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %num_copies, i32* %num_copies.addr, align 4, !tbaa !5
  store i32 %flush, i32* %flush.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_device_vector_s** %vdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_vector_s*
  store %struct.gx_device_vector_s* %2, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_lips4v_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gx_device_s* %4 to %struct.gx_device_lips4v_s*
  store %struct.gx_device_lips4v_s* %5, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %6 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %call = call %struct.stream_s* @gdev_vector_stream(%struct.gx_device_vector_s* %7) #5
  store %struct.stream_s* %call, %struct.stream_s** %s, align 8, !tbaa !1
  %8 = bitcast [6 x i8]* %str to i8*
  call void @llvm.lifetime.start(i64 6, i8* %8) #2
  %9 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %TextMode = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %9, i32 0, i32 91
  %10 = load i32, i32* %TextMode, align 4, !tbaa !54
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %11, i32 0, i32 5
  %w = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_write_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 1
  %12 = load i8*, i8** %ptr, align 8, !tbaa !55
  %13 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor1 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %13, i32 0, i32 5
  %w2 = bitcast %union.stream_cursor_s* %cursor1 to %struct.stream_cursor_write_s*
  %limit = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w2, i32 0, i32 2
  %14 = load i8*, i8** %limit, align 8, !tbaa !57
  %cmp = icmp uge i8* %12, %14
  br i1 %cmp, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then
  %15 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor3 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %15, i32 0, i32 5
  %w4 = bitcast %union.stream_cursor_s* %cursor3 to %struct.stream_cursor_write_s*
  %ptr5 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w4, i32 0, i32 1
  %16 = load i8*, i8** %ptr5, align 8, !tbaa !55
  %incdec.ptr = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr, i8** %ptr5, align 8, !tbaa !55
  %17 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor6 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %17, i32 0, i32 5
  %w7 = bitcast %union.stream_cursor_s* %cursor6 to %struct.stream_cursor_write_s*
  %ptr8 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w7, i32 0, i32 1
  %18 = load i8*, i8** %ptr8, align 8, !tbaa !55
  store i8 -101, i8* %18, align 1, !tbaa !58
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %19 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call9 = call i32 @spputc(%struct.stream_s* %19, i8 zeroext -101) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call9, %cond.false ]
  %20 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call10 = call i32 @lputs(%struct.stream_s* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i32 0, i32 0)) #5
  %21 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %TextMode11 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %21, i32 0, i32 91
  store i32 0, i32* %TextMode11, align 4, !tbaa !54
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  %22 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call12 = call i32 @lputs(%struct.stream_s* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.81, i32 0, i32 0)) #5
  %23 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor13 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %23, i32 0, i32 5
  %w14 = bitcast %union.stream_cursor_s* %cursor13 to %struct.stream_cursor_write_s*
  %ptr15 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w14, i32 0, i32 1
  %24 = load i8*, i8** %ptr15, align 8, !tbaa !55
  %25 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor16 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %25, i32 0, i32 5
  %w17 = bitcast %union.stream_cursor_s* %cursor16 to %struct.stream_cursor_write_s*
  %limit18 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w17, i32 0, i32 2
  %26 = load i8*, i8** %limit18, align 8, !tbaa !57
  %cmp19 = icmp uge i8* %24, %26
  br i1 %cmp19, label %cond.false.28, label %cond.true.20

cond.true.20:                                     ; preds = %if.end
  %27 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor21 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %27, i32 0, i32 5
  %w22 = bitcast %union.stream_cursor_s* %cursor21 to %struct.stream_cursor_write_s*
  %ptr23 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w22, i32 0, i32 1
  %28 = load i8*, i8** %ptr23, align 8, !tbaa !55
  %incdec.ptr24 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr24, i8** %ptr23, align 8, !tbaa !55
  %29 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor25 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %29, i32 0, i32 5
  %w26 = bitcast %union.stream_cursor_s* %cursor25 to %struct.stream_cursor_write_s*
  %ptr27 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w26, i32 0, i32 1
  %30 = load i8*, i8** %ptr27, align 8, !tbaa !55
  store i8 30, i8* %30, align 1, !tbaa !58
  br label %cond.end.30

cond.false.28:                                    ; preds = %if.end
  %31 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call29 = call i32 @spputc(%struct.stream_s* %31, i8 zeroext 30) #5
  br label %cond.end.30

cond.end.30:                                      ; preds = %cond.false.28, %cond.true.20
  %cond31 = phi i32 [ 0, %cond.true.20 ], [ %call29, %cond.false.28 ]
  %32 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call32 = call i32 @lputs(%struct.stream_s* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.82, i32 0, i32 0)) #5
  %33 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor33 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %33, i32 0, i32 5
  %w34 = bitcast %union.stream_cursor_s* %cursor33 to %struct.stream_cursor_write_s*
  %ptr35 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w34, i32 0, i32 1
  %34 = load i8*, i8** %ptr35, align 8, !tbaa !55
  %35 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor36 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %35, i32 0, i32 5
  %w37 = bitcast %union.stream_cursor_s* %cursor36 to %struct.stream_cursor_write_s*
  %limit38 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w37, i32 0, i32 2
  %36 = load i8*, i8** %limit38, align 8, !tbaa !57
  %cmp39 = icmp uge i8* %34, %36
  br i1 %cmp39, label %cond.false.48, label %cond.true.40

cond.true.40:                                     ; preds = %cond.end.30
  %37 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor41 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %37, i32 0, i32 5
  %w42 = bitcast %union.stream_cursor_s* %cursor41 to %struct.stream_cursor_write_s*
  %ptr43 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w42, i32 0, i32 1
  %38 = load i8*, i8** %ptr43, align 8, !tbaa !55
  %incdec.ptr44 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %incdec.ptr44, i8** %ptr43, align 8, !tbaa !55
  %39 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor45 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %39, i32 0, i32 5
  %w46 = bitcast %union.stream_cursor_s* %cursor45 to %struct.stream_cursor_write_s*
  %ptr47 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w46, i32 0, i32 1
  %40 = load i8*, i8** %ptr47, align 8, !tbaa !55
  store i8 30, i8* %40, align 1, !tbaa !58
  br label %cond.end.50

cond.false.48:                                    ; preds = %cond.end.30
  %41 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call49 = call i32 @spputc(%struct.stream_s* %41, i8 zeroext 30) #5
  br label %cond.end.50

cond.end.50:                                      ; preds = %cond.false.48, %cond.true.40
  %cond51 = phi i32 [ 0, %cond.true.40 ], [ %call49, %cond.false.48 ]
  %42 = load i32, i32* %num_copies.addr, align 4, !tbaa !5
  %cmp52 = icmp sgt i32 %42, 255
  br i1 %cmp52, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %cond.end.50
  store i32 255, i32* %num_copies.addr, align 4, !tbaa !5
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.53, %cond.end.50
  %43 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %prev_num_copies = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %43, i32 0, i32 76
  %44 = load i32, i32* %prev_num_copies, align 4, !tbaa !59
  %45 = load i32, i32* %num_copies.addr, align 4, !tbaa !5
  %cmp55 = icmp ne i32 %44, %45
  br i1 %cmp55, label %if.then.56, label %if.end.61

if.then.56:                                       ; preds = %if.end.54
  %arraydecay = getelementptr inbounds [6 x i8], [6 x i8]* %str, i32 0, i32 0
  %46 = load i32, i32* %num_copies.addr, align 4, !tbaa !5
  %call57 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.83, i32 0, i32 0), i32 155, i32 %46) #5
  %47 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %arraydecay58 = getelementptr inbounds [6 x i8], [6 x i8]* %str, i32 0, i32 0
  %call59 = call i32 @lputs(%struct.stream_s* %47, i8* %arraydecay58) #5
  %48 = load i32, i32* %num_copies.addr, align 4, !tbaa !5
  %49 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %prev_num_copies60 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %49, i32 0, i32 76
  store i32 %48, i32* %prev_num_copies60, align 4, !tbaa !59
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.56, %if.end.54
  %50 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor62 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %50, i32 0, i32 5
  %w63 = bitcast %union.stream_cursor_s* %cursor62 to %struct.stream_cursor_write_s*
  %ptr64 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w63, i32 0, i32 1
  %51 = load i8*, i8** %ptr64, align 8, !tbaa !55
  %52 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor65 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %52, i32 0, i32 5
  %w66 = bitcast %union.stream_cursor_s* %cursor65 to %struct.stream_cursor_write_s*
  %limit67 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w66, i32 0, i32 2
  %53 = load i8*, i8** %limit67, align 8, !tbaa !57
  %cmp68 = icmp uge i8* %51, %53
  br i1 %cmp68, label %cond.false.77, label %cond.true.69

cond.true.69:                                     ; preds = %if.end.61
  %54 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor70 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %54, i32 0, i32 5
  %w71 = bitcast %union.stream_cursor_s* %cursor70 to %struct.stream_cursor_write_s*
  %ptr72 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w71, i32 0, i32 1
  %55 = load i8*, i8** %ptr72, align 8, !tbaa !55
  %incdec.ptr73 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %incdec.ptr73, i8** %ptr72, align 8, !tbaa !55
  %56 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor74 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %56, i32 0, i32 5
  %w75 = bitcast %union.stream_cursor_s* %cursor74 to %struct.stream_cursor_write_s*
  %ptr76 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w75, i32 0, i32 1
  %57 = load i8*, i8** %ptr76, align 8, !tbaa !55
  store i8 12, i8* %57, align 1, !tbaa !58
  br label %cond.end.79

cond.false.77:                                    ; preds = %if.end.61
  %58 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call78 = call i32 @spputc(%struct.stream_s* %58, i8 zeroext 12) #5
  br label %cond.end.79

cond.end.79:                                      ; preds = %cond.false.77, %cond.true.69
  %cond80 = phi i32 [ 0, %cond.true.69 ], [ %call78, %cond.false.77 ]
  %59 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.stream_s, %struct.stream_s* %59, i32 0, i32 14
  %flush81 = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs, i32 0, i32 3
  %60 = load i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)** %flush81, align 8, !tbaa !60
  %61 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call82 = call i32 %60(%struct.stream_s* %61) #5
  %62 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %in_page = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %62, i32 0, i32 63
  store i32 0, i32* %in_page, align 4, !tbaa !65
  %63 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %first_page = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %63, i32 0, i32 82
  store i32 0, i32* %first_page, align 4, !tbaa !53
  %64 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  call void @gdev_vector_reset(%struct.gx_device_vector_s* %64) #5
  %65 = bitcast [6 x i8]* %str to i8*
  call void @llvm.lifetime.end(i64 6, i8* %65) #2
  %66 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #2
  %67 = bitcast %struct.gx_device_lips4v_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #2
  %68 = bitcast %struct.gx_device_vector_s** %vdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %68) #2
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @lips4v_close(%struct.gx_device_s* %dev) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %vdev = alloca %struct.gx_device_vector_s*, align 8
  %pdev = alloca %struct.gx_device_lips4v_s*, align 8
  %f = alloca %struct._IO_FILE*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_vector_s** %vdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_vector_s*
  store %struct.gx_device_vector_s* %2, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_lips4v_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gx_device_s* %4 to %struct.gx_device_lips4v_s*
  store %struct.gx_device_lips4v_s* %5, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %6 = bitcast %struct._IO_FILE** %f to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %file = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %7, i32 0, i32 46
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !tbaa !66
  store %struct._IO_FILE* %8, %struct._IO_FILE** %f, align 8, !tbaa !1
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !1
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.84, i32 0, i32 0), i32 144, i32 156) #5
  %10 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %pjl = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %10, i32 0, i32 69
  %11 = load i32, i32* %pjl, align 4, !tbaa !67
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !1
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.85, i32 0, i32 0), i32 27) #5
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !1
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.86, i32 0, i32 0), i32 27, i32 27, i32 27) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %14 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %call3 = call i32 @gdev_vector_close_file(%struct.gx_device_vector_s* %14) #5
  %15 = bitcast %struct._IO_FILE** %f to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #2
  %16 = bitcast %struct.gx_device_lips4v_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #2
  %17 = bitcast %struct.gx_device_vector_s** %vdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #2
  ret i32 0
}

declare i64 @gx_default_gray_map_rgb_color(%struct.gx_device_s*, i16*) #1

declare i32 @gx_default_gray_map_color_rgb(%struct.gx_device_s*, i64, i16*) #1

declare i32 @gdev_vector_fill_rectangle(%struct.gx_device_s*, i32, i32, i32, i32, i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @lips4v_copy_mono(%struct.gx_device_s* %dev, i8* %data, i32 %data_x, i32 %raster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h, i64 %zero, i64 %one) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %data.addr = alloca i8*, align 8
  %data_x.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %zero.addr = alloca i64, align 8
  %one.addr = alloca i64, align 8
  %pdev = alloca %struct.gx_device_lips4v_s*, align 8
  %vdev = alloca %struct.gx_device_vector_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %dpi = alloca i32, align 4
  %color = alloca %struct.gx_device_color_s, align 8
  %code = alloca i32, align 4
  %r = alloca double, align 8
  %g = alloca double, align 8
  %b = alloca double, align 8
  %dcolor = alloca %struct.gx_device_color_s, align 8
  %cleanup.dest.slot = alloca i32
  %one_color = alloca i64, align 8
  %zero_color = alloca i64, align 8
  %zero_color233 = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %width_bytes = alloca i32, align 4
  %num_bytes = alloca i32, align 4
  %buf = alloca i8*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %data_x, i32* %data_x.addr, align 4, !tbaa !5
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !5
  store i64 %id, i64* %id.addr, align 8, !tbaa !68
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  store i64 %zero, i64* %zero.addr, align 8, !tbaa !68
  store i64 %one, i64* %one.addr, align 8, !tbaa !68
  %0 = bitcast %struct.gx_device_lips4v_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_lips4v_s*
  store %struct.gx_device_lips4v_s* %2, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_vector_s** %vdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gx_device_s* %4 to %struct.gx_device_vector_s*
  store %struct.gx_device_vector_s* %5, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %6 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %call = call %struct.stream_s* @gdev_vector_stream(%struct.gx_device_vector_s* %7) #5
  store %struct.stream_s* %call, %struct.stream_s** %s, align 8, !tbaa !1
  %8 = bitcast i32* %dpi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %10 = load float, float* %arrayidx, align 4, !tbaa !69
  %conv = fptosi float %10 to i32
  store i32 %conv, i32* %dpi, align 4, !tbaa !5
  %11 = bitcast %struct.gx_device_color_s* %color to i8*
  call void @llvm.lifetime.start(i64 656, i8* %11) #2
  %12 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  store i32 0, i32* %code, align 4, !tbaa !5
  %13 = bitcast double* %r to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #2
  %14 = bitcast double* %g to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #2
  %15 = bitcast double* %b to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #2
  %16 = load i64, i64* %id.addr, align 8, !tbaa !68
  %cmp = icmp ne i64 %16, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.15

land.lhs.true:                                    ; preds = %entry
  %17 = load i64, i64* %zero.addr, align 8, !tbaa !68
  %cmp2 = icmp eq i64 %17, -1
  br i1 %cmp2, label %land.lhs.true.4, label %if.end.15

land.lhs.true.4:                                  ; preds = %land.lhs.true
  %18 = load i64, i64* %one.addr, align 8, !tbaa !68
  %cmp5 = icmp ne i64 %18, -1
  br i1 %cmp5, label %land.lhs.true.7, label %if.end.15

land.lhs.true.7:                                  ; preds = %land.lhs.true.4
  %19 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %cmp8 = icmp eq i32 %19, 0
  br i1 %cmp8, label %if.then, label %if.end.15

if.then:                                          ; preds = %land.lhs.true.7
  %20 = bitcast %struct.gx_device_color_s* %dcolor to i8*
  call void @llvm.lifetime.start(i64 656, i8* %20) #2
  %21 = load i64, i64* %one.addr, align 8, !tbaa !68
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %dcolor, i32 0, i32 1
  %pure = bitcast %union._c* %colors to i64*
  store i64 %21, i64* %pure, align 8, !tbaa !68
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %dcolor, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_pure, %struct.gx_device_color_type_s** %type, align 8, !tbaa !70
  %22 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %call10 = call i32 @lips4v_setfillcolor(%struct.gx_device_vector_s* %22, %struct.gs_imager_state_s* null, %struct.gx_device_color_s* %dcolor) #5
  %23 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %24 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %25 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %26 = load i64, i64* %id.addr, align 8, !tbaa !68
  %27 = load i32, i32* %x.addr, align 4, !tbaa !5
  %28 = load i32, i32* %y.addr, align 4, !tbaa !5
  %29 = load i32, i32* %w.addr, align 4, !tbaa !5
  %30 = load i32, i32* %h.addr, align 4, !tbaa !5
  %call11 = call i32 @lips4v_copy_text_char(%struct.gx_device_s* %23, i8* %24, i32 %25, i64 %26, i32 %27, i32 %28, i32 %29, i32 %30) #5
  %cmp12 = icmp sge i32 %call11, 0
  br i1 %cmp12, label %if.then.14, label %if.end

if.then.14:                                       ; preds = %if.then
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.14
  %31 = bitcast %struct.gx_device_color_s* %dcolor to i8*
  call void @llvm.lifetime.end(i64 656, i8* %31) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.485 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.15

if.end.15:                                        ; preds = %cleanup.cont, %land.lhs.true.7, %land.lhs.true.4, %land.lhs.true, %entry
  %32 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %TextMode = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %32, i32 0, i32 91
  %33 = load i32, i32* %TextMode, align 4, !tbaa !54
  %tobool = icmp ne i32 %33, 0
  br i1 %tobool, label %if.then.16, label %if.end.31

if.then.16:                                       ; preds = %if.end.15
  %34 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %34, i32 0, i32 5
  %w17 = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_write_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w17, i32 0, i32 1
  %35 = load i8*, i8** %ptr, align 8, !tbaa !55
  %36 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor18 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %36, i32 0, i32 5
  %w19 = bitcast %union.stream_cursor_s* %cursor18 to %struct.stream_cursor_write_s*
  %limit = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w19, i32 0, i32 2
  %37 = load i8*, i8** %limit, align 8, !tbaa !57
  %cmp20 = icmp uge i8* %35, %37
  br i1 %cmp20, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then.16
  %38 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor22 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %38, i32 0, i32 5
  %w23 = bitcast %union.stream_cursor_s* %cursor22 to %struct.stream_cursor_write_s*
  %ptr24 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w23, i32 0, i32 1
  %39 = load i8*, i8** %ptr24, align 8, !tbaa !55
  %incdec.ptr = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr, i8** %ptr24, align 8, !tbaa !55
  %40 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor25 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %40, i32 0, i32 5
  %w26 = bitcast %union.stream_cursor_s* %cursor25 to %struct.stream_cursor_write_s*
  %ptr27 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w26, i32 0, i32 1
  %41 = load i8*, i8** %ptr27, align 8, !tbaa !55
  store i8 -101, i8* %41, align 1, !tbaa !58
  br label %cond.end

cond.false:                                       ; preds = %if.then.16
  %42 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call28 = call i32 @spputc(%struct.stream_s* %42, i8 zeroext -101) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call28, %cond.false ]
  %43 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call29 = call i32 @lputs(%struct.stream_s* %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i32 0, i32 0)) #5
  %44 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %TextMode30 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %44, i32 0, i32 91
  store i32 0, i32* %TextMode30, align 4, !tbaa !54
  br label %if.end.31

if.end.31:                                        ; preds = %cond.end, %if.end.15
  %45 = load i64, i64* %zero.addr, align 8, !tbaa !68
  %cmp32 = icmp eq i64 %45, -1
  br i1 %cmp32, label %if.then.34, label %if.else.127

if.then.34:                                       ; preds = %if.end.31
  %46 = load i64, i64* %one.addr, align 8, !tbaa !68
  %cmp35 = icmp eq i64 %46, -1
  br i1 %cmp35, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.then.34
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.485

if.end.38:                                        ; preds = %if.then.34
  %47 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %MaskState = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %47, i32 0, i32 90
  %48 = load i32, i32* %MaskState, align 4, !tbaa !74
  %cmp39 = icmp ne i32 %48, 1
  br i1 %cmp39, label %if.then.41, label %if.end.64

if.then.41:                                       ; preds = %if.end.38
  %49 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call42 = call i32 @lputs(%struct.stream_s* %49, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i32 0, i32 0)) #5
  %50 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor43 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %50, i32 0, i32 5
  %w44 = bitcast %union.stream_cursor_s* %cursor43 to %struct.stream_cursor_write_s*
  %ptr45 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w44, i32 0, i32 1
  %51 = load i8*, i8** %ptr45, align 8, !tbaa !55
  %52 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor46 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %52, i32 0, i32 5
  %w47 = bitcast %union.stream_cursor_s* %cursor46 to %struct.stream_cursor_write_s*
  %limit48 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w47, i32 0, i32 2
  %53 = load i8*, i8** %limit48, align 8, !tbaa !57
  %cmp49 = icmp uge i8* %51, %53
  br i1 %cmp49, label %cond.false.59, label %cond.true.51

cond.true.51:                                     ; preds = %if.then.41
  %54 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor52 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %54, i32 0, i32 5
  %w53 = bitcast %union.stream_cursor_s* %cursor52 to %struct.stream_cursor_write_s*
  %ptr54 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w53, i32 0, i32 1
  %55 = load i8*, i8** %ptr54, align 8, !tbaa !55
  %incdec.ptr55 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %incdec.ptr55, i8** %ptr54, align 8, !tbaa !55
  %56 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor56 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %56, i32 0, i32 5
  %w57 = bitcast %union.stream_cursor_s* %cursor56 to %struct.stream_cursor_write_s*
  %ptr58 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w57, i32 0, i32 1
  %57 = load i8*, i8** %ptr58, align 8, !tbaa !55
  store i8 30, i8* %57, align 1, !tbaa !58
  br label %cond.end.61

cond.false.59:                                    ; preds = %if.then.41
  %58 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call60 = call i32 @spputc(%struct.stream_s* %58, i8 zeroext 30) #5
  br label %cond.end.61

cond.end.61:                                      ; preds = %cond.false.59, %cond.true.51
  %cond62 = phi i32 [ 0, %cond.true.51 ], [ %call60, %cond.false.59 ]
  %59 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %MaskState63 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %59, i32 0, i32 90
  store i32 1, i32* %MaskState63, align 4, !tbaa !74
  br label %if.end.64

if.end.64:                                        ; preds = %cond.end.61, %if.end.38
  %60 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %60, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %61 = load i16, i16* %depth, align 2, !tbaa !75
  %conv65 = zext i16 %61 to i32
  %cmp66 = icmp eq i32 %conv65, 8
  br i1 %cmp66, label %if.then.68, label %if.else

if.then.68:                                       ; preds = %if.end.64
  %62 = bitcast i64* %one_color to i8*
  call void @llvm.lifetime.start(i64 8, i8* %62) #2
  %63 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %color_info69 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %63, i32 0, i32 11
  %max_gray = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info69, i32 0, i32 5
  %64 = load i32, i32* %max_gray, align 4, !tbaa !76
  %conv70 = zext i32 %64 to i64
  %65 = load i64, i64* %one.addr, align 8, !tbaa !68
  %sub = sub i64 %conv70, %65
  store i64 %sub, i64* %one_color, align 8, !tbaa !68
  %66 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call71 = call i32 @lputs(%struct.stream_s* %66, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.67, i32 0, i32 0)) #5
  %67 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %68 = load i64, i64* %one_color, align 8, !tbaa !68
  %conv72 = trunc i64 %68 to i32
  call void @sput_lips_int(%struct.stream_s* %67, i32 %conv72) #5
  %69 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor73 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %69, i32 0, i32 5
  %w74 = bitcast %union.stream_cursor_s* %cursor73 to %struct.stream_cursor_write_s*
  %ptr75 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w74, i32 0, i32 1
  %70 = load i8*, i8** %ptr75, align 8, !tbaa !55
  %71 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor76 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %71, i32 0, i32 5
  %w77 = bitcast %union.stream_cursor_s* %cursor76 to %struct.stream_cursor_write_s*
  %limit78 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w77, i32 0, i32 2
  %72 = load i8*, i8** %limit78, align 8, !tbaa !57
  %cmp79 = icmp uge i8* %70, %72
  br i1 %cmp79, label %cond.false.89, label %cond.true.81

cond.true.81:                                     ; preds = %if.then.68
  %73 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor82 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %73, i32 0, i32 5
  %w83 = bitcast %union.stream_cursor_s* %cursor82 to %struct.stream_cursor_write_s*
  %ptr84 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w83, i32 0, i32 1
  %74 = load i8*, i8** %ptr84, align 8, !tbaa !55
  %incdec.ptr85 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %incdec.ptr85, i8** %ptr84, align 8, !tbaa !55
  %75 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor86 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %75, i32 0, i32 5
  %w87 = bitcast %union.stream_cursor_s* %cursor86 to %struct.stream_cursor_write_s*
  %ptr88 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w87, i32 0, i32 1
  %76 = load i8*, i8** %ptr88, align 8, !tbaa !55
  store i8 30, i8* %76, align 1, !tbaa !58
  br label %cond.end.91

cond.false.89:                                    ; preds = %if.then.68
  %77 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call90 = call i32 @spputc(%struct.stream_s* %77, i8 zeroext 30) #5
  br label %cond.end.91

cond.end.91:                                      ; preds = %cond.false.89, %cond.true.81
  %cond92 = phi i32 [ 0, %cond.true.81 ], [ %call90, %cond.false.89 ]
  %78 = bitcast i64* %one_color to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #2
  br label %if.end.126

if.else:                                          ; preds = %if.end.64
  %79 = load i64, i64* %one.addr, align 8, !tbaa !68
  %shr = lshr i64 %79, 16
  %conv93 = uitofp i64 %shr to double
  %mul = fmul double %conv93, 1.000000e+03
  %div = fdiv double %mul, 2.550000e+02
  store double %div, double* %r, align 8, !tbaa !77
  %80 = load i64, i64* %one.addr, align 8, !tbaa !68
  %shr94 = lshr i64 %80, 8
  %and = and i64 %shr94, 255
  %conv95 = uitofp i64 %and to double
  %mul96 = fmul double %conv95, 1.000000e+03
  %div97 = fdiv double %mul96, 2.550000e+02
  store double %div97, double* %g, align 8, !tbaa !77
  %81 = load i64, i64* %one.addr, align 8, !tbaa !68
  %and98 = and i64 %81, 255
  %conv99 = uitofp i64 %and98 to double
  %mul100 = fmul double %conv99, 1.000000e+03
  %div101 = fdiv double %mul100, 2.550000e+02
  store double %div101, double* %b, align 8, !tbaa !77
  %82 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call102 = call i32 @lputs(%struct.stream_s* %82, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.67, i32 0, i32 0)) #5
  %83 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %84 = load double, double* %r, align 8, !tbaa !77
  %conv103 = fptosi double %84 to i32
  call void @sput_lips_int(%struct.stream_s* %83, i32 %conv103) #5
  %85 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %86 = load double, double* %g, align 8, !tbaa !77
  %conv104 = fptosi double %86 to i32
  call void @sput_lips_int(%struct.stream_s* %85, i32 %conv104) #5
  %87 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %88 = load double, double* %b, align 8, !tbaa !77
  %conv105 = fptosi double %88 to i32
  call void @sput_lips_int(%struct.stream_s* %87, i32 %conv105) #5
  %89 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor106 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %89, i32 0, i32 5
  %w107 = bitcast %union.stream_cursor_s* %cursor106 to %struct.stream_cursor_write_s*
  %ptr108 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w107, i32 0, i32 1
  %90 = load i8*, i8** %ptr108, align 8, !tbaa !55
  %91 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor109 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %91, i32 0, i32 5
  %w110 = bitcast %union.stream_cursor_s* %cursor109 to %struct.stream_cursor_write_s*
  %limit111 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w110, i32 0, i32 2
  %92 = load i8*, i8** %limit111, align 8, !tbaa !57
  %cmp112 = icmp uge i8* %90, %92
  br i1 %cmp112, label %cond.false.122, label %cond.true.114

cond.true.114:                                    ; preds = %if.else
  %93 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor115 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %93, i32 0, i32 5
  %w116 = bitcast %union.stream_cursor_s* %cursor115 to %struct.stream_cursor_write_s*
  %ptr117 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w116, i32 0, i32 1
  %94 = load i8*, i8** %ptr117, align 8, !tbaa !55
  %incdec.ptr118 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %incdec.ptr118, i8** %ptr117, align 8, !tbaa !55
  %95 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor119 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %95, i32 0, i32 5
  %w120 = bitcast %union.stream_cursor_s* %cursor119 to %struct.stream_cursor_write_s*
  %ptr121 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w120, i32 0, i32 1
  %96 = load i8*, i8** %ptr121, align 8, !tbaa !55
  store i8 30, i8* %96, align 1, !tbaa !58
  br label %cond.end.124

cond.false.122:                                   ; preds = %if.else
  %97 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call123 = call i32 @spputc(%struct.stream_s* %97, i8 zeroext 30) #5
  br label %cond.end.124

cond.end.124:                                     ; preds = %cond.false.122, %cond.true.114
  %cond125 = phi i32 [ 0, %cond.true.114 ], [ %call123, %cond.false.122 ]
  br label %if.end.126

if.end.126:                                       ; preds = %cond.end.124, %cond.end.91
  br label %if.end.375

if.else.127:                                      ; preds = %if.end.31
  %98 = load i64, i64* %one.addr, align 8, !tbaa !68
  %cmp128 = icmp eq i64 %98, -1
  br i1 %cmp128, label %if.then.130, label %if.else.229

if.then.130:                                      ; preds = %if.else.127
  %99 = bitcast i64* %zero_color to i8*
  call void @llvm.lifetime.start(i64 8, i8* %99) #2
  %100 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %color_info131 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %100, i32 0, i32 11
  %max_gray132 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info131, i32 0, i32 5
  %101 = load i32, i32* %max_gray132, align 4, !tbaa !76
  %conv133 = zext i32 %101 to i64
  %102 = load i64, i64* %zero.addr, align 8, !tbaa !68
  %sub134 = sub i64 %conv133, %102
  store i64 %sub134, i64* %zero_color, align 8, !tbaa !68
  %103 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %MaskState135 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %103, i32 0, i32 90
  %104 = load i32, i32* %MaskState135, align 4, !tbaa !74
  %cmp136 = icmp ne i32 %104, 1
  br i1 %cmp136, label %if.then.138, label %if.end.161

if.then.138:                                      ; preds = %if.then.130
  %105 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call139 = call i32 @lputs(%struct.stream_s* %105, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i32 0, i32 0)) #5
  %106 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor140 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %106, i32 0, i32 5
  %w141 = bitcast %union.stream_cursor_s* %cursor140 to %struct.stream_cursor_write_s*
  %ptr142 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w141, i32 0, i32 1
  %107 = load i8*, i8** %ptr142, align 8, !tbaa !55
  %108 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor143 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %108, i32 0, i32 5
  %w144 = bitcast %union.stream_cursor_s* %cursor143 to %struct.stream_cursor_write_s*
  %limit145 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w144, i32 0, i32 2
  %109 = load i8*, i8** %limit145, align 8, !tbaa !57
  %cmp146 = icmp uge i8* %107, %109
  br i1 %cmp146, label %cond.false.156, label %cond.true.148

cond.true.148:                                    ; preds = %if.then.138
  %110 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor149 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %110, i32 0, i32 5
  %w150 = bitcast %union.stream_cursor_s* %cursor149 to %struct.stream_cursor_write_s*
  %ptr151 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w150, i32 0, i32 1
  %111 = load i8*, i8** %ptr151, align 8, !tbaa !55
  %incdec.ptr152 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %incdec.ptr152, i8** %ptr151, align 8, !tbaa !55
  %112 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor153 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %112, i32 0, i32 5
  %w154 = bitcast %union.stream_cursor_s* %cursor153 to %struct.stream_cursor_write_s*
  %ptr155 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w154, i32 0, i32 1
  %113 = load i8*, i8** %ptr155, align 8, !tbaa !55
  store i8 30, i8* %113, align 1, !tbaa !58
  br label %cond.end.158

cond.false.156:                                   ; preds = %if.then.138
  %114 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call157 = call i32 @spputc(%struct.stream_s* %114, i8 zeroext 30) #5
  br label %cond.end.158

cond.end.158:                                     ; preds = %cond.false.156, %cond.true.148
  %cond159 = phi i32 [ 0, %cond.true.148 ], [ %call157, %cond.false.156 ]
  %115 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %MaskState160 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %115, i32 0, i32 90
  store i32 1, i32* %MaskState160, align 4, !tbaa !74
  br label %if.end.161

if.end.161:                                       ; preds = %cond.end.158, %if.then.130
  %116 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %color_info162 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %116, i32 0, i32 11
  %depth163 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info162, i32 0, i32 3
  %117 = load i16, i16* %depth163, align 2, !tbaa !75
  %conv164 = zext i16 %117 to i32
  %cmp165 = icmp eq i32 %conv164, 8
  br i1 %cmp165, label %if.then.167, label %if.else.190

if.then.167:                                      ; preds = %if.end.161
  %118 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call168 = call i32 @lputs(%struct.stream_s* %118, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.67, i32 0, i32 0)) #5
  %119 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %120 = load i64, i64* %zero_color, align 8, !tbaa !68
  %conv169 = trunc i64 %120 to i32
  call void @sput_lips_int(%struct.stream_s* %119, i32 %conv169) #5
  %121 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor170 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %121, i32 0, i32 5
  %w171 = bitcast %union.stream_cursor_s* %cursor170 to %struct.stream_cursor_write_s*
  %ptr172 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w171, i32 0, i32 1
  %122 = load i8*, i8** %ptr172, align 8, !tbaa !55
  %123 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor173 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %123, i32 0, i32 5
  %w174 = bitcast %union.stream_cursor_s* %cursor173 to %struct.stream_cursor_write_s*
  %limit175 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w174, i32 0, i32 2
  %124 = load i8*, i8** %limit175, align 8, !tbaa !57
  %cmp176 = icmp uge i8* %122, %124
  br i1 %cmp176, label %cond.false.186, label %cond.true.178

cond.true.178:                                    ; preds = %if.then.167
  %125 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor179 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %125, i32 0, i32 5
  %w180 = bitcast %union.stream_cursor_s* %cursor179 to %struct.stream_cursor_write_s*
  %ptr181 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w180, i32 0, i32 1
  %126 = load i8*, i8** %ptr181, align 8, !tbaa !55
  %incdec.ptr182 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %incdec.ptr182, i8** %ptr181, align 8, !tbaa !55
  %127 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor183 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %127, i32 0, i32 5
  %w184 = bitcast %union.stream_cursor_s* %cursor183 to %struct.stream_cursor_write_s*
  %ptr185 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w184, i32 0, i32 1
  %128 = load i8*, i8** %ptr185, align 8, !tbaa !55
  store i8 30, i8* %128, align 1, !tbaa !58
  br label %cond.end.188

cond.false.186:                                   ; preds = %if.then.167
  %129 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call187 = call i32 @spputc(%struct.stream_s* %129, i8 zeroext 30) #5
  br label %cond.end.188

cond.end.188:                                     ; preds = %cond.false.186, %cond.true.178
  %cond189 = phi i32 [ 0, %cond.true.178 ], [ %call187, %cond.false.186 ]
  br label %if.end.228

if.else.190:                                      ; preds = %if.end.161
  %130 = load i64, i64* %zero.addr, align 8, !tbaa !68
  %shr191 = lshr i64 %130, 16
  %conv192 = uitofp i64 %shr191 to double
  %mul193 = fmul double %conv192, 1.000000e+03
  %div194 = fdiv double %mul193, 2.550000e+02
  store double %div194, double* %r, align 8, !tbaa !77
  %131 = load i64, i64* %zero.addr, align 8, !tbaa !68
  %shr195 = lshr i64 %131, 8
  %and196 = and i64 %shr195, 255
  %conv197 = uitofp i64 %and196 to double
  %mul198 = fmul double %conv197, 1.000000e+03
  %div199 = fdiv double %mul198, 2.550000e+02
  store double %div199, double* %g, align 8, !tbaa !77
  %132 = load i64, i64* %zero.addr, align 8, !tbaa !68
  %and200 = and i64 %132, 255
  %conv201 = uitofp i64 %and200 to double
  %mul202 = fmul double %conv201, 1.000000e+03
  %div203 = fdiv double %mul202, 2.550000e+02
  store double %div203, double* %b, align 8, !tbaa !77
  %133 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call204 = call i32 @lputs(%struct.stream_s* %133, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.67, i32 0, i32 0)) #5
  %134 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %135 = load double, double* %r, align 8, !tbaa !77
  %conv205 = fptosi double %135 to i32
  call void @sput_lips_int(%struct.stream_s* %134, i32 %conv205) #5
  %136 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %137 = load double, double* %g, align 8, !tbaa !77
  %conv206 = fptosi double %137 to i32
  call void @sput_lips_int(%struct.stream_s* %136, i32 %conv206) #5
  %138 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %139 = load double, double* %b, align 8, !tbaa !77
  %conv207 = fptosi double %139 to i32
  call void @sput_lips_int(%struct.stream_s* %138, i32 %conv207) #5
  %140 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor208 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %140, i32 0, i32 5
  %w209 = bitcast %union.stream_cursor_s* %cursor208 to %struct.stream_cursor_write_s*
  %ptr210 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w209, i32 0, i32 1
  %141 = load i8*, i8** %ptr210, align 8, !tbaa !55
  %142 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor211 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %142, i32 0, i32 5
  %w212 = bitcast %union.stream_cursor_s* %cursor211 to %struct.stream_cursor_write_s*
  %limit213 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w212, i32 0, i32 2
  %143 = load i8*, i8** %limit213, align 8, !tbaa !57
  %cmp214 = icmp uge i8* %141, %143
  br i1 %cmp214, label %cond.false.224, label %cond.true.216

cond.true.216:                                    ; preds = %if.else.190
  %144 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor217 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %144, i32 0, i32 5
  %w218 = bitcast %union.stream_cursor_s* %cursor217 to %struct.stream_cursor_write_s*
  %ptr219 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w218, i32 0, i32 1
  %145 = load i8*, i8** %ptr219, align 8, !tbaa !55
  %incdec.ptr220 = getelementptr inbounds i8, i8* %145, i32 1
  store i8* %incdec.ptr220, i8** %ptr219, align 8, !tbaa !55
  %146 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor221 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %146, i32 0, i32 5
  %w222 = bitcast %union.stream_cursor_s* %cursor221 to %struct.stream_cursor_write_s*
  %ptr223 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w222, i32 0, i32 1
  %147 = load i8*, i8** %ptr223, align 8, !tbaa !55
  store i8 30, i8* %147, align 1, !tbaa !58
  br label %cond.end.226

cond.false.224:                                   ; preds = %if.else.190
  %148 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call225 = call i32 @spputc(%struct.stream_s* %148, i8 zeroext 30) #5
  br label %cond.end.226

cond.end.226:                                     ; preds = %cond.false.224, %cond.true.216
  %cond227 = phi i32 [ 0, %cond.true.216 ], [ %call225, %cond.false.224 ]
  br label %if.end.228

if.end.228:                                       ; preds = %cond.end.226, %cond.end.188
  %149 = bitcast i64* %zero_color to i8*
  call void @llvm.lifetime.end(i64 8, i8* %149) #2
  br label %if.end.374

if.else.229:                                      ; preds = %if.else.127
  %150 = load i64, i64* %one.addr, align 8, !tbaa !68
  %151 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %white = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %151, i32 0, i32 66
  %152 = load i64, i64* %white, align 8, !tbaa !78
  %cmp230 = icmp eq i64 %150, %152
  br i1 %cmp230, label %if.then.232, label %if.else.332

if.then.232:                                      ; preds = %if.else.229
  %153 = bitcast i64* %zero_color233 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %153) #2
  %154 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %color_info234 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %154, i32 0, i32 11
  %max_gray235 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info234, i32 0, i32 5
  %155 = load i32, i32* %max_gray235, align 4, !tbaa !76
  %conv236 = zext i32 %155 to i64
  %156 = load i64, i64* %zero.addr, align 8, !tbaa !68
  %sub237 = sub i64 %conv236, %156
  store i64 %sub237, i64* %zero_color233, align 8, !tbaa !68
  %157 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %MaskState238 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %157, i32 0, i32 90
  %158 = load i32, i32* %MaskState238, align 4, !tbaa !74
  %cmp239 = icmp ne i32 %158, 0
  br i1 %cmp239, label %if.then.241, label %if.end.264

if.then.241:                                      ; preds = %if.then.232
  %159 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call242 = call i32 @lputs(%struct.stream_s* %159, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.100, i32 0, i32 0)) #5
  %160 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor243 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %160, i32 0, i32 5
  %w244 = bitcast %union.stream_cursor_s* %cursor243 to %struct.stream_cursor_write_s*
  %ptr245 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w244, i32 0, i32 1
  %161 = load i8*, i8** %ptr245, align 8, !tbaa !55
  %162 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor246 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %162, i32 0, i32 5
  %w247 = bitcast %union.stream_cursor_s* %cursor246 to %struct.stream_cursor_write_s*
  %limit248 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w247, i32 0, i32 2
  %163 = load i8*, i8** %limit248, align 8, !tbaa !57
  %cmp249 = icmp uge i8* %161, %163
  br i1 %cmp249, label %cond.false.259, label %cond.true.251

cond.true.251:                                    ; preds = %if.then.241
  %164 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor252 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %164, i32 0, i32 5
  %w253 = bitcast %union.stream_cursor_s* %cursor252 to %struct.stream_cursor_write_s*
  %ptr254 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w253, i32 0, i32 1
  %165 = load i8*, i8** %ptr254, align 8, !tbaa !55
  %incdec.ptr255 = getelementptr inbounds i8, i8* %165, i32 1
  store i8* %incdec.ptr255, i8** %ptr254, align 8, !tbaa !55
  %166 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor256 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %166, i32 0, i32 5
  %w257 = bitcast %union.stream_cursor_s* %cursor256 to %struct.stream_cursor_write_s*
  %ptr258 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w257, i32 0, i32 1
  %167 = load i8*, i8** %ptr258, align 8, !tbaa !55
  store i8 30, i8* %167, align 1, !tbaa !58
  br label %cond.end.261

cond.false.259:                                   ; preds = %if.then.241
  %168 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call260 = call i32 @spputc(%struct.stream_s* %168, i8 zeroext 30) #5
  br label %cond.end.261

cond.end.261:                                     ; preds = %cond.false.259, %cond.true.251
  %cond262 = phi i32 [ 0, %cond.true.251 ], [ %call260, %cond.false.259 ]
  %169 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %MaskState263 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %169, i32 0, i32 90
  store i32 0, i32* %MaskState263, align 4, !tbaa !74
  br label %if.end.264

if.end.264:                                       ; preds = %cond.end.261, %if.then.232
  %170 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %color_info265 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %170, i32 0, i32 11
  %depth266 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info265, i32 0, i32 3
  %171 = load i16, i16* %depth266, align 2, !tbaa !75
  %conv267 = zext i16 %171 to i32
  %cmp268 = icmp eq i32 %conv267, 8
  br i1 %cmp268, label %if.then.270, label %if.else.293

if.then.270:                                      ; preds = %if.end.264
  %172 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call271 = call i32 @lputs(%struct.stream_s* %172, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.67, i32 0, i32 0)) #5
  %173 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %174 = load i64, i64* %zero_color233, align 8, !tbaa !68
  %conv272 = trunc i64 %174 to i32
  call void @sput_lips_int(%struct.stream_s* %173, i32 %conv272) #5
  %175 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor273 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %175, i32 0, i32 5
  %w274 = bitcast %union.stream_cursor_s* %cursor273 to %struct.stream_cursor_write_s*
  %ptr275 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w274, i32 0, i32 1
  %176 = load i8*, i8** %ptr275, align 8, !tbaa !55
  %177 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor276 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %177, i32 0, i32 5
  %w277 = bitcast %union.stream_cursor_s* %cursor276 to %struct.stream_cursor_write_s*
  %limit278 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w277, i32 0, i32 2
  %178 = load i8*, i8** %limit278, align 8, !tbaa !57
  %cmp279 = icmp uge i8* %176, %178
  br i1 %cmp279, label %cond.false.289, label %cond.true.281

cond.true.281:                                    ; preds = %if.then.270
  %179 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor282 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %179, i32 0, i32 5
  %w283 = bitcast %union.stream_cursor_s* %cursor282 to %struct.stream_cursor_write_s*
  %ptr284 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w283, i32 0, i32 1
  %180 = load i8*, i8** %ptr284, align 8, !tbaa !55
  %incdec.ptr285 = getelementptr inbounds i8, i8* %180, i32 1
  store i8* %incdec.ptr285, i8** %ptr284, align 8, !tbaa !55
  %181 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor286 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %181, i32 0, i32 5
  %w287 = bitcast %union.stream_cursor_s* %cursor286 to %struct.stream_cursor_write_s*
  %ptr288 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w287, i32 0, i32 1
  %182 = load i8*, i8** %ptr288, align 8, !tbaa !55
  store i8 30, i8* %182, align 1, !tbaa !58
  br label %cond.end.291

cond.false.289:                                   ; preds = %if.then.270
  %183 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call290 = call i32 @spputc(%struct.stream_s* %183, i8 zeroext 30) #5
  br label %cond.end.291

cond.end.291:                                     ; preds = %cond.false.289, %cond.true.281
  %cond292 = phi i32 [ 0, %cond.true.281 ], [ %call290, %cond.false.289 ]
  br label %if.end.331

if.else.293:                                      ; preds = %if.end.264
  %184 = load i64, i64* %zero.addr, align 8, !tbaa !68
  %shr294 = lshr i64 %184, 16
  %conv295 = uitofp i64 %shr294 to double
  %mul296 = fmul double %conv295, 1.000000e+03
  %div297 = fdiv double %mul296, 2.550000e+02
  store double %div297, double* %r, align 8, !tbaa !77
  %185 = load i64, i64* %zero.addr, align 8, !tbaa !68
  %shr298 = lshr i64 %185, 8
  %and299 = and i64 %shr298, 255
  %conv300 = uitofp i64 %and299 to double
  %mul301 = fmul double %conv300, 1.000000e+03
  %div302 = fdiv double %mul301, 2.550000e+02
  store double %div302, double* %g, align 8, !tbaa !77
  %186 = load i64, i64* %zero.addr, align 8, !tbaa !68
  %and303 = and i64 %186, 255
  %conv304 = uitofp i64 %and303 to double
  %mul305 = fmul double %conv304, 1.000000e+03
  %div306 = fdiv double %mul305, 2.550000e+02
  store double %div306, double* %b, align 8, !tbaa !77
  %187 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call307 = call i32 @lputs(%struct.stream_s* %187, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.67, i32 0, i32 0)) #5
  %188 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %189 = load double, double* %r, align 8, !tbaa !77
  %conv308 = fptosi double %189 to i32
  call void @sput_lips_int(%struct.stream_s* %188, i32 %conv308) #5
  %190 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %191 = load double, double* %g, align 8, !tbaa !77
  %conv309 = fptosi double %191 to i32
  call void @sput_lips_int(%struct.stream_s* %190, i32 %conv309) #5
  %192 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %193 = load double, double* %b, align 8, !tbaa !77
  %conv310 = fptosi double %193 to i32
  call void @sput_lips_int(%struct.stream_s* %192, i32 %conv310) #5
  %194 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor311 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %194, i32 0, i32 5
  %w312 = bitcast %union.stream_cursor_s* %cursor311 to %struct.stream_cursor_write_s*
  %ptr313 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w312, i32 0, i32 1
  %195 = load i8*, i8** %ptr313, align 8, !tbaa !55
  %196 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor314 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %196, i32 0, i32 5
  %w315 = bitcast %union.stream_cursor_s* %cursor314 to %struct.stream_cursor_write_s*
  %limit316 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w315, i32 0, i32 2
  %197 = load i8*, i8** %limit316, align 8, !tbaa !57
  %cmp317 = icmp uge i8* %195, %197
  br i1 %cmp317, label %cond.false.327, label %cond.true.319

cond.true.319:                                    ; preds = %if.else.293
  %198 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor320 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %198, i32 0, i32 5
  %w321 = bitcast %union.stream_cursor_s* %cursor320 to %struct.stream_cursor_write_s*
  %ptr322 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w321, i32 0, i32 1
  %199 = load i8*, i8** %ptr322, align 8, !tbaa !55
  %incdec.ptr323 = getelementptr inbounds i8, i8* %199, i32 1
  store i8* %incdec.ptr323, i8** %ptr322, align 8, !tbaa !55
  %200 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor324 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %200, i32 0, i32 5
  %w325 = bitcast %union.stream_cursor_s* %cursor324 to %struct.stream_cursor_write_s*
  %ptr326 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w325, i32 0, i32 1
  %201 = load i8*, i8** %ptr326, align 8, !tbaa !55
  store i8 30, i8* %201, align 1, !tbaa !58
  br label %cond.end.329

cond.false.327:                                   ; preds = %if.else.293
  %202 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call328 = call i32 @spputc(%struct.stream_s* %202, i8 zeroext 30) #5
  br label %cond.end.329

cond.end.329:                                     ; preds = %cond.false.327, %cond.true.319
  %cond330 = phi i32 [ 0, %cond.true.319 ], [ %call328, %cond.false.327 ]
  br label %if.end.331

if.end.331:                                       ; preds = %cond.end.329, %cond.end.291
  %203 = bitcast i64* %zero_color233 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %203) #2
  br label %if.end.373

if.else.332:                                      ; preds = %if.else.229
  %204 = load i64, i64* %zero.addr, align 8, !tbaa !68
  %cmp333 = icmp ne i64 %204, -1
  br i1 %cmp333, label %if.then.335, label %if.end.341

if.then.335:                                      ; preds = %if.else.332
  %205 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %205, i32 0, i32 42
  %fill_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 7
  %206 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rectangle, align 8, !tbaa !79
  %207 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %208 = load i32, i32* %x.addr, align 4, !tbaa !5
  %209 = load i32, i32* %y.addr, align 4, !tbaa !5
  %210 = load i32, i32* %w.addr, align 4, !tbaa !5
  %211 = load i32, i32* %h.addr, align 4, !tbaa !5
  %212 = load i64, i64* %zero.addr, align 8, !tbaa !68
  %call336 = call i32 %206(%struct.gx_device_s* %207, i32 %208, i32 %209, i32 %210, i32 %211, i64 %212) #5
  store i32 %call336, i32* %code, align 4, !tbaa !5
  %213 = load i32, i32* %code, align 4, !tbaa !5
  %cmp337 = icmp slt i32 %213, 0
  br i1 %cmp337, label %if.then.339, label %if.end.340

if.then.339:                                      ; preds = %if.then.335
  %214 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %214, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.485

if.end.340:                                       ; preds = %if.then.335
  br label %if.end.341

if.end.341:                                       ; preds = %if.end.340, %if.else.332
  %215 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %MaskState342 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %215, i32 0, i32 90
  %216 = load i32, i32* %MaskState342, align 4, !tbaa !74
  %cmp343 = icmp ne i32 %216, 1
  br i1 %cmp343, label %if.then.345, label %if.end.368

if.then.345:                                      ; preds = %if.end.341
  %217 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call346 = call i32 @lputs(%struct.stream_s* %217, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i32 0, i32 0)) #5
  %218 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor347 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %218, i32 0, i32 5
  %w348 = bitcast %union.stream_cursor_s* %cursor347 to %struct.stream_cursor_write_s*
  %ptr349 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w348, i32 0, i32 1
  %219 = load i8*, i8** %ptr349, align 8, !tbaa !55
  %220 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor350 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %220, i32 0, i32 5
  %w351 = bitcast %union.stream_cursor_s* %cursor350 to %struct.stream_cursor_write_s*
  %limit352 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w351, i32 0, i32 2
  %221 = load i8*, i8** %limit352, align 8, !tbaa !57
  %cmp353 = icmp uge i8* %219, %221
  br i1 %cmp353, label %cond.false.363, label %cond.true.355

cond.true.355:                                    ; preds = %if.then.345
  %222 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor356 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %222, i32 0, i32 5
  %w357 = bitcast %union.stream_cursor_s* %cursor356 to %struct.stream_cursor_write_s*
  %ptr358 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w357, i32 0, i32 1
  %223 = load i8*, i8** %ptr358, align 8, !tbaa !55
  %incdec.ptr359 = getelementptr inbounds i8, i8* %223, i32 1
  store i8* %incdec.ptr359, i8** %ptr358, align 8, !tbaa !55
  %224 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor360 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %224, i32 0, i32 5
  %w361 = bitcast %union.stream_cursor_s* %cursor360 to %struct.stream_cursor_write_s*
  %ptr362 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w361, i32 0, i32 1
  %225 = load i8*, i8** %ptr362, align 8, !tbaa !55
  store i8 30, i8* %225, align 1, !tbaa !58
  br label %cond.end.365

cond.false.363:                                   ; preds = %if.then.345
  %226 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call364 = call i32 @spputc(%struct.stream_s* %226, i8 zeroext 30) #5
  br label %cond.end.365

cond.end.365:                                     ; preds = %cond.false.363, %cond.true.355
  %cond366 = phi i32 [ 0, %cond.true.355 ], [ %call364, %cond.false.363 ]
  %227 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %MaskState367 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %227, i32 0, i32 90
  store i32 1, i32* %MaskState367, align 4, !tbaa !74
  br label %if.end.368

if.end.368:                                       ; preds = %cond.end.365, %if.end.341
  %228 = load i64, i64* %one.addr, align 8, !tbaa !68
  %colors369 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %color, i32 0, i32 1
  %pure370 = bitcast %union._c* %colors369 to i64*
  store i64 %228, i64* %pure370, align 8, !tbaa !68
  %type371 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %color, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_pure, %struct.gx_device_color_type_s** %type371, align 8, !tbaa !70
  %229 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %230 = bitcast %struct.gx_device_lips4v_s* %229 to %struct.gx_device_vector_s*
  %call372 = call i32 @gdev_vector_update_fill_color(%struct.gx_device_vector_s* %230, %struct.gs_imager_state_s* null, %struct.gx_device_color_s* %color) #5
  store i32 %call372, i32* %code, align 4, !tbaa !5
  br label %if.end.373

if.end.373:                                       ; preds = %if.end.368, %if.end.331
  br label %if.end.374

if.end.374:                                       ; preds = %if.end.373, %if.end.228
  br label %if.end.375

if.end.375:                                       ; preds = %if.end.374, %if.end.126
  %231 = load i32, i32* %code, align 4, !tbaa !5
  %cmp376 = icmp slt i32 %231, 0
  br i1 %cmp376, label %if.then.378, label %if.end.379

if.then.378:                                      ; preds = %if.end.375
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.485

if.end.379:                                       ; preds = %if.end.375
  %232 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call380 = call i32 @lputs(%struct.stream_s* %232, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.101, i32 0, i32 0)) #5
  %233 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %234 = load i32, i32* %x.addr, align 4, !tbaa !5
  call void @sput_lips_int(%struct.stream_s* %233, i32 %234) #5
  %235 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %236 = load i32, i32* %y.addr, align 4, !tbaa !5
  call void @sput_lips_int(%struct.stream_s* %235, i32 %236) #5
  %237 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %238 = load i32, i32* %dpi, align 4, !tbaa !5
  %mul381 = mul nsw i32 %238, 100
  call void @sput_lips_int(%struct.stream_s* %237, i32 %mul381) #5
  %239 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %240 = load i32, i32* %dpi, align 4, !tbaa !5
  %mul382 = mul nsw i32 %240, 100
  call void @sput_lips_int(%struct.stream_s* %239, i32 %mul382) #5
  %241 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %242 = load i32, i32* %h.addr, align 4, !tbaa !5
  call void @sput_lips_int(%struct.stream_s* %241, i32 %242) #5
  %243 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %244 = load i32, i32* %w.addr, align 4, !tbaa !5
  call void @sput_lips_int(%struct.stream_s* %243, i32 %244) #5
  %245 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call383 = call i32 @lputs(%struct.stream_s* %245, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.102, i32 0, i32 0)) #5
  %246 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor384 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %246, i32 0, i32 5
  %w385 = bitcast %union.stream_cursor_s* %cursor384 to %struct.stream_cursor_write_s*
  %ptr386 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w385, i32 0, i32 1
  %247 = load i8*, i8** %ptr386, align 8, !tbaa !55
  %248 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor387 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %248, i32 0, i32 5
  %w388 = bitcast %union.stream_cursor_s* %cursor387 to %struct.stream_cursor_write_s*
  %limit389 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w388, i32 0, i32 2
  %249 = load i8*, i8** %limit389, align 8, !tbaa !57
  %cmp390 = icmp uge i8* %247, %249
  br i1 %cmp390, label %cond.false.400, label %cond.true.392

cond.true.392:                                    ; preds = %if.end.379
  %250 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor393 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %250, i32 0, i32 5
  %w394 = bitcast %union.stream_cursor_s* %cursor393 to %struct.stream_cursor_write_s*
  %ptr395 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w394, i32 0, i32 1
  %251 = load i8*, i8** %ptr395, align 8, !tbaa !55
  %incdec.ptr396 = getelementptr inbounds i8, i8* %251, i32 1
  store i8* %incdec.ptr396, i8** %ptr395, align 8, !tbaa !55
  %252 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor397 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %252, i32 0, i32 5
  %w398 = bitcast %union.stream_cursor_s* %cursor397 to %struct.stream_cursor_write_s*
  %ptr399 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w398, i32 0, i32 1
  %253 = load i8*, i8** %ptr399, align 8, !tbaa !55
  store i8 30, i8* %253, align 1, !tbaa !58
  br label %cond.end.402

cond.false.400:                                   ; preds = %if.end.379
  %254 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call401 = call i32 @spputc(%struct.stream_s* %254, i8 zeroext 30) #5
  br label %cond.end.402

cond.end.402:                                     ; preds = %cond.false.400, %cond.true.392
  %cond403 = phi i32 [ 0, %cond.true.392 ], [ %call401, %cond.false.400 ]
  %255 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call404 = call i32 @lputs(%struct.stream_s* %255, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.103, i32 0, i32 0)) #5
  %256 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %256) #2
  %257 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %257) #2
  %258 = bitcast i32* %width_bytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %258) #2
  %259 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add = add nsw i32 %259, 7
  %shr405 = ashr i32 %add, 3
  store i32 %shr405, i32* %width_bytes, align 4, !tbaa !5
  %260 = bitcast i32* %num_bytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %260) #2
  %261 = load i32, i32* %width_bytes, align 4, !tbaa !5
  %add406 = add i32 %261, 3
  %and407 = and i32 %add406, -4
  %262 = load i32, i32* %h.addr, align 4, !tbaa !5
  %mul408 = mul i32 %and407, %262
  store i32 %mul408, i32* %num_bytes, align 4, !tbaa !5
  %263 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %263) #2
  %264 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %264, i32 0, i32 3
  %265 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !80
  %procs409 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %265, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs409, i32 0, i32 7
  %266 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !81
  %267 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %memory410 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %267, i32 0, i32 3
  %268 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory410, align 8, !tbaa !80
  %269 = load i32, i32* %num_bytes, align 4, !tbaa !5
  %call411 = call i8* %266(%struct.gs_memory_s* %268, i32 %269, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.104, i32 0, i32 0)) #5
  store i8* %call411, i8** %buf, align 8, !tbaa !1
  %270 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %rem = srem i32 %270, 8
  %cmp412 = icmp eq i32 %rem, 0
  br i1 %cmp412, label %if.then.414, label %if.else.426

if.then.414:                                      ; preds = %cond.end.402
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.414
  %271 = load i32, i32* %i, align 4, !tbaa !5
  %272 = load i32, i32* %h.addr, align 4, !tbaa !5
  %cmp415 = icmp slt i32 %271, %272
  br i1 %cmp415, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %273 = load i8*, i8** %buf, align 8, !tbaa !1
  %274 = load i32, i32* %i, align 4, !tbaa !5
  %275 = load i32, i32* %width_bytes, align 4, !tbaa !5
  %mul417 = mul i32 %274, %275
  %idx.ext = zext i32 %mul417 to i64
  %add.ptr = getelementptr inbounds i8, i8* %273, i64 %idx.ext
  %276 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %277 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %shr418 = ashr i32 %277, 3
  %idx.ext419 = sext i32 %shr418 to i64
  %add.ptr420 = getelementptr inbounds i8, i8* %276, i64 %idx.ext419
  %278 = load i32, i32* %i, align 4, !tbaa !5
  %279 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %mul421 = mul nsw i32 %278, %279
  %idx.ext422 = sext i32 %mul421 to i64
  %add.ptr423 = getelementptr inbounds i8, i8* %add.ptr420, i64 %idx.ext422
  %280 = load i32, i32* %width_bytes, align 4, !tbaa !5
  %conv424 = zext i32 %280 to i64
  %call425 = call i8* @memcpy(i8* %add.ptr, i8* %add.ptr423, i64 %conv424) #6
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %281 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %281, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.470

if.else.426:                                      ; preds = %cond.end.402
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.427

for.cond.427:                                     ; preds = %for.inc.467, %if.else.426
  %282 = load i32, i32* %i, align 4, !tbaa !5
  %283 = load i32, i32* %h.addr, align 4, !tbaa !5
  %cmp428 = icmp slt i32 %282, %283
  br i1 %cmp428, label %for.body.430, label %for.end.469

for.body.430:                                     ; preds = %for.cond.427
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.431

for.cond.431:                                     ; preds = %for.inc.464, %for.body.430
  %284 = load i32, i32* %j, align 4, !tbaa !5
  %285 = load i32, i32* %width_bytes, align 4, !tbaa !5
  %cmp432 = icmp ult i32 %284, %285
  br i1 %cmp432, label %for.body.434, label %for.end.466

for.body.434:                                     ; preds = %for.cond.431
  %286 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %287 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %shr435 = ashr i32 %287, 3
  %idx.ext436 = sext i32 %shr435 to i64
  %add.ptr437 = getelementptr inbounds i8, i8* %286, i64 %idx.ext436
  %288 = load i32, i32* %i, align 4, !tbaa !5
  %289 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %mul438 = mul nsw i32 %288, %289
  %idx.ext439 = sext i32 %mul438 to i64
  %add.ptr440 = getelementptr inbounds i8, i8* %add.ptr437, i64 %idx.ext439
  %290 = load i32, i32* %j, align 4, !tbaa !5
  %idx.ext441 = sext i32 %290 to i64
  %add.ptr442 = getelementptr inbounds i8, i8* %add.ptr440, i64 %idx.ext441
  %291 = load i8, i8* %add.ptr442, align 1, !tbaa !58
  %conv443 = zext i8 %291 to i32
  %292 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %rem444 = srem i32 %292, 8
  %shl = shl i32 %conv443, %rem444
  %293 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %294 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %shr445 = ashr i32 %294, 3
  %idx.ext446 = sext i32 %shr445 to i64
  %add.ptr447 = getelementptr inbounds i8, i8* %293, i64 %idx.ext446
  %295 = load i32, i32* %i, align 4, !tbaa !5
  %296 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %mul448 = mul nsw i32 %295, %296
  %idx.ext449 = sext i32 %mul448 to i64
  %add.ptr450 = getelementptr inbounds i8, i8* %add.ptr447, i64 %idx.ext449
  %297 = load i32, i32* %j, align 4, !tbaa !5
  %idx.ext451 = sext i32 %297 to i64
  %add.ptr452 = getelementptr inbounds i8, i8* %add.ptr450, i64 %idx.ext451
  %add.ptr453 = getelementptr inbounds i8, i8* %add.ptr452, i64 1
  %298 = load i8, i8* %add.ptr453, align 1, !tbaa !58
  %conv454 = zext i8 %298 to i32
  %299 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %rem455 = srem i32 %299, 8
  %sub456 = sub nsw i32 8, %rem455
  %shr457 = ashr i32 %conv454, %sub456
  %or = or i32 %shl, %shr457
  %conv458 = trunc i32 %or to i8
  %300 = load i8*, i8** %buf, align 8, !tbaa !1
  %301 = load i32, i32* %i, align 4, !tbaa !5
  %302 = load i32, i32* %width_bytes, align 4, !tbaa !5
  %mul459 = mul i32 %301, %302
  %idx.ext460 = zext i32 %mul459 to i64
  %add.ptr461 = getelementptr inbounds i8, i8* %300, i64 %idx.ext460
  %303 = load i32, i32* %j, align 4, !tbaa !5
  %idx.ext462 = sext i32 %303 to i64
  %add.ptr463 = getelementptr inbounds i8, i8* %add.ptr461, i64 %idx.ext462
  store i8 %conv458, i8* %add.ptr463, align 1, !tbaa !58
  br label %for.inc.464

for.inc.464:                                      ; preds = %for.body.434
  %304 = load i32, i32* %j, align 4, !tbaa !5
  %inc465 = add nsw i32 %304, 1
  store i32 %inc465, i32* %j, align 4, !tbaa !5
  br label %for.cond.431

for.end.466:                                      ; preds = %for.cond.431
  br label %for.inc.467

for.inc.467:                                      ; preds = %for.end.466
  %305 = load i32, i32* %i, align 4, !tbaa !5
  %inc468 = add nsw i32 %305, 1
  store i32 %inc468, i32* %i, align 4, !tbaa !5
  br label %for.cond.427

for.end.469:                                      ; preds = %for.cond.427
  br label %if.end.470

if.end.470:                                       ; preds = %for.end.469, %for.end
  %306 = load i64, i64* %one.addr, align 8, !tbaa !68
  %cmp471 = icmp eq i64 %306, -1
  br i1 %cmp471, label %if.then.479, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.470
  %307 = load i64, i64* %one.addr, align 8, !tbaa !68
  %308 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %white473 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %308, i32 0, i32 66
  %309 = load i64, i64* %white473, align 8, !tbaa !78
  %cmp474 = icmp eq i64 %307, %309
  br i1 %cmp474, label %land.lhs.true.476, label %if.else.480

land.lhs.true.476:                                ; preds = %lor.lhs.false
  %310 = load i64, i64* %zero.addr, align 8, !tbaa !68
  %cmp477 = icmp ne i64 %310, -1
  br i1 %cmp477, label %if.then.479, label %if.else.480

if.then.479:                                      ; preds = %land.lhs.true.476, %if.end.470
  %311 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %312 = load i8*, i8** %buf, align 8, !tbaa !1
  %313 = load i32, i32* %num_bytes, align 4, !tbaa !5
  call void @lips4v_write_image_data(%struct.gx_device_vector_s* %311, i8* %312, i32 %313, i32 1) #5
  br label %if.end.481

if.else.480:                                      ; preds = %land.lhs.true.476, %lor.lhs.false
  %314 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %315 = load i8*, i8** %buf, align 8, !tbaa !1
  %316 = load i32, i32* %num_bytes, align 4, !tbaa !5
  call void @lips4v_write_image_data(%struct.gx_device_vector_s* %314, i8* %315, i32 %316, i32 0) #5
  br label %if.end.481

if.end.481:                                       ; preds = %if.else.480, %if.then.479
  %317 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %memory482 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %317, i32 0, i32 3
  %318 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory482, align 8, !tbaa !80
  %procs483 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %318, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs483, i32 0, i32 2
  %319 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !82
  %320 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %memory484 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %320, i32 0, i32 3
  %321 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory484, align 8, !tbaa !80
  %322 = load i8*, i8** %buf, align 8, !tbaa !1
  call void %319(%struct.gs_memory_s* %321, i8* %322, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.104, i32 0, i32 0)) #5
  %323 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %323) #2
  %324 = bitcast i32* %num_bytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %324) #2
  %325 = bitcast i32* %width_bytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %325) #2
  %326 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %326) #2
  %327 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %327) #2
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.485

cleanup.485:                                      ; preds = %if.end.481, %if.then.378, %if.then.339, %if.then.37, %cleanup
  %328 = bitcast double* %b to i8*
  call void @llvm.lifetime.end(i64 8, i8* %328) #2
  %329 = bitcast double* %g to i8*
  call void @llvm.lifetime.end(i64 8, i8* %329) #2
  %330 = bitcast double* %r to i8*
  call void @llvm.lifetime.end(i64 8, i8* %330) #2
  %331 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %331) #2
  %332 = bitcast %struct.gx_device_color_s* %color to i8*
  call void @llvm.lifetime.end(i64 656, i8* %332) #2
  %333 = bitcast i32* %dpi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %333) #2
  %334 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %334) #2
  %335 = bitcast %struct.gx_device_vector_s** %vdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %335) #2
  %336 = bitcast %struct.gx_device_lips4v_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %336) #2
  %337 = load i32, i32* %retval
  ret i32 %337
}

; Function Attrs: nounwind uwtable
define internal i32 @lips4v_copy_color(%struct.gx_device_s* %dev, i8* %data, i32 %data_x, i32 %raster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %data.addr = alloca i8*, align 8
  %data_x.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %pdev = alloca %struct.gx_device_lips4v_s*, align 8
  %vdev = alloca %struct.gx_device_vector_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %depth = alloca i32, align 4
  %dpi = alloca i32, align 4
  %num_components = alloca i32, align 4
  %width_bytes = alloca i32, align 4
  %dcolor = alloca %struct.gx_device_color_s, align 8
  %i = alloca i32, align 4
  %num_bytes = alloca i32, align 4
  %buf = alloca i8*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %data_x, i32* %data_x.addr, align 4, !tbaa !5
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !5
  store i64 %id, i64* %id.addr, align 8, !tbaa !68
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_device_lips4v_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_lips4v_s*
  store %struct.gx_device_lips4v_s* %2, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_vector_s** %vdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gx_device_s* %4 to %struct.gx_device_vector_s*
  store %struct.gx_device_vector_s* %5, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %6 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %call = call %struct.stream_s* @gdev_vector_stream(%struct.gx_device_vector_s* %7) #5
  store %struct.stream_s* %call, %struct.stream_s** %s, align 8, !tbaa !1
  %8 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 11
  %depth1 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %10 = load i16, i16* %depth1, align 2, !tbaa !83
  %conv = zext i16 %10 to i32
  store i32 %conv, i32* %depth, align 4, !tbaa !5
  %11 = bitcast i32* %dpi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %12, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %13 = load float, float* %arrayidx, align 4, !tbaa !69
  %conv2 = fptosi float %13 to i32
  store i32 %conv2, i32* %dpi, align 4, !tbaa !5
  %14 = bitcast i32* %num_components to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  %15 = load i32, i32* %depth, align 4, !tbaa !5
  %cmp = icmp slt i32 %15, 24
  %cond = select i1 %cmp, i32 1, i32 3
  store i32 %cond, i32* %num_components, align 4, !tbaa !5
  %16 = bitcast i32* %width_bytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #2
  %17 = load i32, i32* %w.addr, align 4, !tbaa !5
  %18 = load i32, i32* %num_components, align 4, !tbaa !5
  %mul = mul nsw i32 %17, %18
  store i32 %mul, i32* %width_bytes, align 4, !tbaa !5
  %19 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info4 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %19, i32 0, i32 11
  %depth5 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info4, i32 0, i32 3
  %20 = load i16, i16* %depth5, align 2, !tbaa !83
  %conv6 = zext i16 %20 to i32
  %cmp7 = icmp eq i32 %conv6, 8
  br i1 %cmp7, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %21 = bitcast %struct.gx_device_color_s* %dcolor to i8*
  call void @llvm.lifetime.start(i64 656, i8* %21) #2
  %22 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %black = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %22, i32 0, i32 65
  %23 = load i64, i64* %black, align 8, !tbaa !84
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %dcolor, i32 0, i32 1
  %pure = bitcast %union._c* %colors to i64*
  store i64 %23, i64* %pure, align 8, !tbaa !68
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %dcolor, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_pure, %struct.gx_device_color_type_s** %type, align 8, !tbaa !70
  %24 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %call9 = call i32 @lips4v_setfillcolor(%struct.gx_device_vector_s* %24, %struct.gs_imager_state_s* null, %struct.gx_device_color_s* %dcolor) #5
  %25 = bitcast %struct.gx_device_color_s* %dcolor to i8*
  call void @llvm.lifetime.end(i64 656, i8* %25) #2
  br label %if.end.26

if.else:                                          ; preds = %entry
  %26 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %TextMode = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %26, i32 0, i32 91
  %27 = load i32, i32* %TextMode, align 4, !tbaa !54
  %tobool = icmp ne i32 %27, 0
  br i1 %tobool, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.else
  %28 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %28, i32 0, i32 5
  %w11 = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_write_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w11, i32 0, i32 1
  %29 = load i8*, i8** %ptr, align 8, !tbaa !55
  %30 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor12 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %30, i32 0, i32 5
  %w13 = bitcast %union.stream_cursor_s* %cursor12 to %struct.stream_cursor_write_s*
  %limit = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w13, i32 0, i32 2
  %31 = load i8*, i8** %limit, align 8, !tbaa !57
  %cmp14 = icmp uge i8* %29, %31
  br i1 %cmp14, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then.10
  %32 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor16 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %32, i32 0, i32 5
  %w17 = bitcast %union.stream_cursor_s* %cursor16 to %struct.stream_cursor_write_s*
  %ptr18 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w17, i32 0, i32 1
  %33 = load i8*, i8** %ptr18, align 8, !tbaa !55
  %incdec.ptr = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr, i8** %ptr18, align 8, !tbaa !55
  %34 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor19 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %34, i32 0, i32 5
  %w20 = bitcast %union.stream_cursor_s* %cursor19 to %struct.stream_cursor_write_s*
  %ptr21 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w20, i32 0, i32 1
  %35 = load i8*, i8** %ptr21, align 8, !tbaa !55
  store i8 -101, i8* %35, align 1, !tbaa !58
  br label %cond.end

cond.false:                                       ; preds = %if.then.10
  %36 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call22 = call i32 @spputc(%struct.stream_s* %36, i8 zeroext -101) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond23 = phi i32 [ 0, %cond.true ], [ %call22, %cond.false ]
  %37 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call24 = call i32 @lputs(%struct.stream_s* %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i32 0, i32 0)) #5
  %38 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %TextMode25 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %38, i32 0, i32 91
  store i32 0, i32* %TextMode25, align 4, !tbaa !54
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.else
  br label %if.end.26

if.end.26:                                        ; preds = %if.end, %if.then
  %39 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %MaskState = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %39, i32 0, i32 90
  %40 = load i32, i32* %MaskState, align 4, !tbaa !74
  %cmp27 = icmp ne i32 %40, 0
  br i1 %cmp27, label %if.then.29, label %if.end.52

if.then.29:                                       ; preds = %if.end.26
  %41 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call30 = call i32 @lputs(%struct.stream_s* %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.100, i32 0, i32 0)) #5
  %42 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor31 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %42, i32 0, i32 5
  %w32 = bitcast %union.stream_cursor_s* %cursor31 to %struct.stream_cursor_write_s*
  %ptr33 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w32, i32 0, i32 1
  %43 = load i8*, i8** %ptr33, align 8, !tbaa !55
  %44 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor34 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %44, i32 0, i32 5
  %w35 = bitcast %union.stream_cursor_s* %cursor34 to %struct.stream_cursor_write_s*
  %limit36 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w35, i32 0, i32 2
  %45 = load i8*, i8** %limit36, align 8, !tbaa !57
  %cmp37 = icmp uge i8* %43, %45
  br i1 %cmp37, label %cond.false.47, label %cond.true.39

cond.true.39:                                     ; preds = %if.then.29
  %46 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor40 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %46, i32 0, i32 5
  %w41 = bitcast %union.stream_cursor_s* %cursor40 to %struct.stream_cursor_write_s*
  %ptr42 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w41, i32 0, i32 1
  %47 = load i8*, i8** %ptr42, align 8, !tbaa !55
  %incdec.ptr43 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %incdec.ptr43, i8** %ptr42, align 8, !tbaa !55
  %48 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor44 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %48, i32 0, i32 5
  %w45 = bitcast %union.stream_cursor_s* %cursor44 to %struct.stream_cursor_write_s*
  %ptr46 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w45, i32 0, i32 1
  %49 = load i8*, i8** %ptr46, align 8, !tbaa !55
  store i8 30, i8* %49, align 1, !tbaa !58
  br label %cond.end.49

cond.false.47:                                    ; preds = %if.then.29
  %50 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call48 = call i32 @spputc(%struct.stream_s* %50, i8 zeroext 30) #5
  br label %cond.end.49

cond.end.49:                                      ; preds = %cond.false.47, %cond.true.39
  %cond50 = phi i32 [ 0, %cond.true.39 ], [ %call48, %cond.false.47 ]
  %51 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %MaskState51 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %51, i32 0, i32 90
  store i32 0, i32* %MaskState51, align 4, !tbaa !74
  br label %if.end.52

if.end.52:                                        ; preds = %cond.end.49, %if.end.26
  %52 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call53 = call i32 @lputs(%struct.stream_s* %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.101, i32 0, i32 0)) #5
  %53 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %54 = load i32, i32* %x.addr, align 4, !tbaa !5
  call void @sput_lips_int(%struct.stream_s* %53, i32 %54) #5
  %55 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %56 = load i32, i32* %y.addr, align 4, !tbaa !5
  call void @sput_lips_int(%struct.stream_s* %55, i32 %56) #5
  %57 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %58 = load i32, i32* %dpi, align 4, !tbaa !5
  %mul54 = mul nsw i32 %58, 100
  call void @sput_lips_int(%struct.stream_s* %57, i32 %mul54) #5
  %59 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %60 = load i32, i32* %dpi, align 4, !tbaa !5
  %mul55 = mul nsw i32 %60, 100
  call void @sput_lips_int(%struct.stream_s* %59, i32 %mul55) #5
  %61 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %62 = load i32, i32* %h.addr, align 4, !tbaa !5
  call void @sput_lips_int(%struct.stream_s* %61, i32 %62) #5
  %63 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %64 = load i32, i32* %w.addr, align 4, !tbaa !5
  call void @sput_lips_int(%struct.stream_s* %63, i32 %64) #5
  %65 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %66 = load i32, i32* %depth, align 4, !tbaa !5
  %67 = load i32, i32* %num_components, align 4, !tbaa !5
  %div = sdiv i32 %66, %67
  call void @sput_lips_int(%struct.stream_s* %65, i32 %div) #5
  %68 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor56 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %68, i32 0, i32 5
  %w57 = bitcast %union.stream_cursor_s* %cursor56 to %struct.stream_cursor_write_s*
  %ptr58 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w57, i32 0, i32 1
  %69 = load i8*, i8** %ptr58, align 8, !tbaa !55
  %70 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor59 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %70, i32 0, i32 5
  %w60 = bitcast %union.stream_cursor_s* %cursor59 to %struct.stream_cursor_write_s*
  %limit61 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w60, i32 0, i32 2
  %71 = load i8*, i8** %limit61, align 8, !tbaa !57
  %cmp62 = icmp uge i8* %69, %71
  br i1 %cmp62, label %cond.false.76, label %cond.true.64

cond.true.64:                                     ; preds = %if.end.52
  %72 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor65 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %72, i32 0, i32 5
  %w66 = bitcast %union.stream_cursor_s* %cursor65 to %struct.stream_cursor_write_s*
  %ptr67 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w66, i32 0, i32 1
  %73 = load i8*, i8** %ptr67, align 8, !tbaa !55
  %incdec.ptr68 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %incdec.ptr68, i8** %ptr67, align 8, !tbaa !55
  %74 = load i32, i32* %depth, align 4, !tbaa !5
  %cmp69 = icmp slt i32 %74, 24
  %cond71 = select i1 %cmp69, i32 48, i32 58
  %conv72 = trunc i32 %cond71 to i8
  %75 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor73 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %75, i32 0, i32 5
  %w74 = bitcast %union.stream_cursor_s* %cursor73 to %struct.stream_cursor_write_s*
  %ptr75 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w74, i32 0, i32 1
  %76 = load i8*, i8** %ptr75, align 8, !tbaa !55
  store i8 %conv72, i8* %76, align 1, !tbaa !58
  br label %cond.end.82

cond.false.76:                                    ; preds = %if.end.52
  %77 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %78 = load i32, i32* %depth, align 4, !tbaa !5
  %cmp77 = icmp slt i32 %78, 24
  %cond79 = select i1 %cmp77, i32 48, i32 58
  %conv80 = trunc i32 %cond79 to i8
  %call81 = call i32 @spputc(%struct.stream_s* %77, i8 zeroext %conv80) #5
  br label %cond.end.82

cond.end.82:                                      ; preds = %cond.false.76, %cond.true.64
  %cond83 = phi i32 [ 0, %cond.true.64 ], [ %call81, %cond.false.76 ]
  %79 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call84 = call i32 @lputs(%struct.stream_s* %79, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.122, i32 0, i32 0)) #5
  %80 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor85 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %80, i32 0, i32 5
  %w86 = bitcast %union.stream_cursor_s* %cursor85 to %struct.stream_cursor_write_s*
  %ptr87 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w86, i32 0, i32 1
  %81 = load i8*, i8** %ptr87, align 8, !tbaa !55
  %82 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor88 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %82, i32 0, i32 5
  %w89 = bitcast %union.stream_cursor_s* %cursor88 to %struct.stream_cursor_write_s*
  %limit90 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w89, i32 0, i32 2
  %83 = load i8*, i8** %limit90, align 8, !tbaa !57
  %cmp91 = icmp uge i8* %81, %83
  br i1 %cmp91, label %cond.false.101, label %cond.true.93

cond.true.93:                                     ; preds = %cond.end.82
  %84 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor94 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %84, i32 0, i32 5
  %w95 = bitcast %union.stream_cursor_s* %cursor94 to %struct.stream_cursor_write_s*
  %ptr96 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w95, i32 0, i32 1
  %85 = load i8*, i8** %ptr96, align 8, !tbaa !55
  %incdec.ptr97 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %incdec.ptr97, i8** %ptr96, align 8, !tbaa !55
  %86 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor98 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %86, i32 0, i32 5
  %w99 = bitcast %union.stream_cursor_s* %cursor98 to %struct.stream_cursor_write_s*
  %ptr100 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w99, i32 0, i32 1
  %87 = load i8*, i8** %ptr100, align 8, !tbaa !55
  store i8 30, i8* %87, align 1, !tbaa !58
  br label %cond.end.103

cond.false.101:                                   ; preds = %cond.end.82
  %88 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call102 = call i32 @spputc(%struct.stream_s* %88, i8 zeroext 30) #5
  br label %cond.end.103

cond.end.103:                                     ; preds = %cond.false.101, %cond.true.93
  %cond104 = phi i32 [ 0, %cond.true.93 ], [ %call102, %cond.false.101 ]
  %89 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %89) #2
  %90 = bitcast i32* %num_bytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %90) #2
  %91 = load i32, i32* %width_bytes, align 4, !tbaa !5
  %92 = load i32, i32* %h.addr, align 4, !tbaa !5
  %mul105 = mul i32 %91, %92
  store i32 %mul105, i32* %num_bytes, align 4, !tbaa !5
  %93 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %93) #2
  %94 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %94, i32 0, i32 3
  %95 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !80
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %95, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %96 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !81
  %97 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %memory106 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %97, i32 0, i32 3
  %98 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory106, align 8, !tbaa !80
  %99 = load i32, i32* %num_bytes, align 4, !tbaa !5
  %call107 = call i8* %96(%struct.gs_memory_s* %98, i32 %99, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.123, i32 0, i32 0)) #5
  store i8* %call107, i8** %buf, align 8, !tbaa !1
  %100 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call108 = call i32 @lputs(%struct.stream_s* %100, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.103, i32 0, i32 0)) #5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.103
  %101 = load i32, i32* %i, align 4, !tbaa !5
  %102 = load i32, i32* %h.addr, align 4, !tbaa !5
  %cmp109 = icmp slt i32 %101, %102
  br i1 %cmp109, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %103 = load i8*, i8** %buf, align 8, !tbaa !1
  %104 = load i32, i32* %i, align 4, !tbaa !5
  %105 = load i32, i32* %width_bytes, align 4, !tbaa !5
  %mul111 = mul i32 %104, %105
  %idx.ext = zext i32 %mul111 to i64
  %add.ptr = getelementptr inbounds i8, i8* %103, i64 %idx.ext
  %106 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %107 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %108 = load i32, i32* %depth, align 4, !tbaa !5
  %mul112 = mul nsw i32 %107, %108
  %shr = ashr i32 %mul112, 3
  %idx.ext113 = sext i32 %shr to i64
  %add.ptr114 = getelementptr inbounds i8, i8* %106, i64 %idx.ext113
  %109 = load i32, i32* %i, align 4, !tbaa !5
  %110 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %mul115 = mul nsw i32 %109, %110
  %idx.ext116 = sext i32 %mul115 to i64
  %add.ptr117 = getelementptr inbounds i8, i8* %add.ptr114, i64 %idx.ext116
  %111 = load i32, i32* %width_bytes, align 4, !tbaa !5
  %conv118 = zext i32 %111 to i64
  %call119 = call i8* @memcpy(i8* %add.ptr, i8* %add.ptr117, i64 %conv118) #6
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %112 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %112, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %113 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info120 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %113, i32 0, i32 11
  %depth121 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info120, i32 0, i32 3
  %114 = load i16, i16* %depth121, align 2, !tbaa !83
  %conv122 = zext i16 %114 to i32
  %cmp123 = icmp eq i32 %conv122, 8
  br i1 %cmp123, label %if.then.125, label %if.else.126

if.then.125:                                      ; preds = %for.end
  %115 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %116 = load i8*, i8** %buf, align 8, !tbaa !1
  %117 = load i32, i32* %num_bytes, align 4, !tbaa !5
  call void @lips4v_write_image_data(%struct.gx_device_vector_s* %115, i8* %116, i32 %117, i32 1) #5
  br label %if.end.127

if.else.126:                                      ; preds = %for.end
  %118 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %119 = load i8*, i8** %buf, align 8, !tbaa !1
  %120 = load i32, i32* %num_bytes, align 4, !tbaa !5
  call void @lips4v_write_image_data(%struct.gx_device_vector_s* %118, i8* %119, i32 %120, i32 0) #5
  br label %if.end.127

if.end.127:                                       ; preds = %if.else.126, %if.then.125
  %121 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %memory128 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %121, i32 0, i32 3
  %122 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory128, align 8, !tbaa !80
  %procs129 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %122, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs129, i32 0, i32 2
  %123 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !82
  %124 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %memory130 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %124, i32 0, i32 3
  %125 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory130, align 8, !tbaa !80
  %126 = load i8*, i8** %buf, align 8, !tbaa !1
  call void %123(%struct.gs_memory_s* %125, i8* %126, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.123, i32 0, i32 0)) #5
  %127 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %127) #2
  %128 = bitcast i32* %num_bytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %128) #2
  %129 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %129) #2
  %130 = bitcast i32* %width_bytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %130) #2
  %131 = bitcast i32* %num_components to i8*
  call void @llvm.lifetime.end(i64 4, i8* %131) #2
  %132 = bitcast i32* %dpi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %132) #2
  %133 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %133) #2
  %134 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %134) #2
  %135 = bitcast %struct.gx_device_vector_s** %vdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %135) #2
  %136 = bitcast %struct.gx_device_lips4v_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %136) #2
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @lips4v_get_params(%struct.gx_device_s* %dev, %struct.gs_param_list_s* %plist) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pdev = alloca %struct.gx_device_lips4v_s*, align 8
  %code = alloca i32, align 4
  %ncode = alloca i32, align 4
  %usern = alloca %struct.gs_param_string_s, align 8
  %pmedia = alloca %struct.gs_param_string_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_lips4v_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_lips4v_s*
  store %struct.gx_device_lips4v_s* %2, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %5 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call = call i32 @gdev_vector_get_params(%struct.gx_device_s* %4, %struct.gs_param_list_s* %5) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %6 = bitcast i32* %ncode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast %struct.gs_param_string_s* %usern to i8*
  call void @llvm.lifetime.start(i64 16, i8* %7) #2
  %8 = bitcast %struct.gs_param_string_s* %pmedia to i8*
  call void @llvm.lifetime.start(i64 16, i8* %8) #2
  %9 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %9, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %12 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %ManualFeed = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %12, i32 0, i32 83
  %call1 = call i32 @param_write_bool(%struct.gs_param_list_s* %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.87, i32 0, i32 0), i32* %ManualFeed) #5
  store i32 %call1, i32* %ncode, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %13 = load i32, i32* %ncode, align 4, !tbaa !5
  store i32 %13, i32* %code, align 4, !tbaa !5
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %14 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %15 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %cassetFeed = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %15, i32 0, i32 67
  %call5 = call i32 @param_write_int(%struct.gs_param_list_s* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.88, i32 0, i32 0), i32* %cassetFeed) #5
  store i32 %call5, i32* %ncode, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  %16 = load i32, i32* %ncode, align 4, !tbaa !5
  store i32 %16, i32* %code, align 4, !tbaa !5
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end.4
  %17 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %18 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %Tumble = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %18, i32 0, i32 86
  %call9 = call i32 @param_write_bool(%struct.gs_param_list_s* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.89, i32 0, i32 0), i32* %Tumble) #5
  store i32 %call9, i32* %ncode, align 4, !tbaa !5
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.8
  %19 = load i32, i32* %ncode, align 4, !tbaa !5
  store i32 %19, i32* %code, align 4, !tbaa !5
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.end.8
  %20 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %21 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %nup = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %21, i32 0, i32 79
  %call13 = call i32 @param_write_int(%struct.gs_param_list_s* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90, i32 0, i32 0), i32* %nup) #5
  store i32 %call13, i32* %ncode, align 4, !tbaa !5
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.12
  %22 = load i32, i32* %ncode, align 4, !tbaa !5
  store i32 %22, i32* %code, align 4, !tbaa !5
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.end.12
  %23 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %24 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %pjl = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %24, i32 0, i32 69
  %call17 = call i32 @param_write_bool(%struct.gs_param_list_s* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.91, i32 0, i32 0), i32* %pjl) #5
  store i32 %call17, i32* %ncode, align 4, !tbaa !5
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.16
  %25 = load i32, i32* %ncode, align 4, !tbaa !5
  store i32 %25, i32* %code, align 4, !tbaa !5
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %if.end.16
  %26 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %27 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %toner_density = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %27, i32 0, i32 70
  %call21 = call i32 @param_write_int(%struct.gs_param_list_s* %26, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.92, i32 0, i32 0), i32* %toner_density) #5
  store i32 %call21, i32* %ncode, align 4, !tbaa !5
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.20
  %28 = load i32, i32* %ncode, align 4, !tbaa !5
  store i32 %28, i32* %code, align 4, !tbaa !5
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %if.end.20
  %29 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %toner_saving_set = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %29, i32 0, i32 72
  %30 = load i32, i32* %toner_saving_set, align 4, !tbaa !85
  %cmp25 = icmp sge i32 %30, 0
  br i1 %cmp25, label %land.lhs.true, label %if.end.31

land.lhs.true:                                    ; preds = %if.end.24
  %31 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %toner_saving_set26 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %31, i32 0, i32 72
  %32 = load i32, i32* %toner_saving_set26, align 4, !tbaa !85
  %tobool = icmp ne i32 %32, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %33 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %34 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %toner_saving = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %34, i32 0, i32 71
  %call27 = call i32 @param_write_bool(%struct.gs_param_list_s* %33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.93, i32 0, i32 0), i32* %toner_saving) #5
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true
  %35 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call28 = call i32 @param_write_null(%struct.gs_param_list_s* %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.93, i32 0, i32 0)) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call27, %cond.true ], [ %call28, %cond.false ]
  store i32 %cond, i32* %code, align 4, !tbaa !5
  %cmp29 = icmp slt i32 %cond, 0
  br i1 %cmp29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %cond.end
  %36 = load i32, i32* %ncode, align 4, !tbaa !5
  store i32 %36, i32* %code, align 4, !tbaa !5
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %cond.end, %if.end.24
  %37 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %Duplex_set = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %37, i32 0, i32 85
  %38 = load i32, i32* %Duplex_set, align 4, !tbaa !86
  %cmp32 = icmp sge i32 %38, 0
  br i1 %cmp32, label %land.lhs.true.33, label %if.end.44

land.lhs.true.33:                                 ; preds = %if.end.31
  %39 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %Duplex_set34 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %39, i32 0, i32 85
  %40 = load i32, i32* %Duplex_set34, align 4, !tbaa !86
  %tobool35 = icmp ne i32 %40, 0
  br i1 %tobool35, label %cond.true.36, label %cond.false.38

cond.true.36:                                     ; preds = %land.lhs.true.33
  %41 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %42 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %Duplex = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %42, i32 0, i32 84
  %call37 = call i32 @param_write_bool(%struct.gs_param_list_s* %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.94, i32 0, i32 0), i32* %Duplex) #5
  br label %cond.end.40

cond.false.38:                                    ; preds = %land.lhs.true.33
  %43 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call39 = call i32 @param_write_null(%struct.gs_param_list_s* %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.94, i32 0, i32 0)) #5
  br label %cond.end.40

cond.end.40:                                      ; preds = %cond.false.38, %cond.true.36
  %cond41 = phi i32 [ %call37, %cond.true.36 ], [ %call39, %cond.false.38 ]
  store i32 %cond41, i32* %ncode, align 4, !tbaa !5
  %cmp42 = icmp slt i32 %cond41, 0
  br i1 %cmp42, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %cond.end.40
  %44 = load i32, i32* %ncode, align 4, !tbaa !5
  store i32 %44, i32* %code, align 4, !tbaa !5
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.43, %cond.end.40, %if.end.31
  %45 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %46 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %FontDL = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %46, i32 0, i32 97
  %call45 = call i32 @param_write_bool(%struct.gs_param_list_s* %45, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.95, i32 0, i32 0), i32* %FontDL) #5
  store i32 %call45, i32* %ncode, align 4, !tbaa !5
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %if.end.44
  %47 = load i32, i32* %ncode, align 4, !tbaa !5
  store i32 %47, i32* %code, align 4, !tbaa !5
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.47, %if.end.44
  %48 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %49 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %faceup = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %49, i32 0, i32 80
  %call49 = call i32 @param_write_bool(%struct.gs_param_list_s* %48, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.96, i32 0, i32 0), i32* %faceup) #5
  store i32 %call49, i32* %ncode, align 4, !tbaa !5
  %cmp50 = icmp slt i32 %call49, 0
  br i1 %cmp50, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %if.end.48
  %50 = load i32, i32* %ncode, align 4, !tbaa !5
  store i32 %50, i32* %code, align 4, !tbaa !5
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.51, %if.end.48
  %51 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %mediaType = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %51, i32 0, i32 81
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %mediaType, i32 0, i32 0
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %pmedia, i32 0, i32 0
  store i8* %arraydecay, i8** %data, align 8, !tbaa !87
  %52 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %mediaType53 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %52, i32 0, i32 81
  %arraydecay54 = getelementptr inbounds [32 x i8], [32 x i8]* %mediaType53, i32 0, i32 0
  %call55 = call i64 @strlen(i8* %arraydecay54) #7
  %conv = trunc i64 %call55 to i32
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %pmedia, i32 0, i32 1
  store i32 %conv, i32* %size, align 4, !tbaa !89
  %persistent = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %pmedia, i32 0, i32 2
  store i32 0, i32* %persistent, align 4, !tbaa !90
  %53 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call56 = call i32 @param_write_string(%struct.gs_param_list_s* %53, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), %struct.gs_param_string_s* %pmedia) #5
  store i32 %call56, i32* %ncode, align 4, !tbaa !5
  %cmp57 = icmp slt i32 %call56, 0
  br i1 %cmp57, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %if.end.52
  %54 = load i32, i32* %ncode, align 4, !tbaa !5
  store i32 %54, i32* %code, align 4, !tbaa !5
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.59, %if.end.52
  %55 = load i32, i32* %code, align 4, !tbaa !5
  %cmp61 = icmp slt i32 %55, 0
  br i1 %cmp61, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %if.end.60
  %56 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %56, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.64:                                        ; preds = %if.end.60
  %57 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %Username = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %57, i32 0, i32 68
  %arraydecay65 = getelementptr inbounds [12 x i8], [12 x i8]* %Username, i32 0, i32 0
  %data66 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %usern, i32 0, i32 0
  store i8* %arraydecay65, i8** %data66, align 8, !tbaa !87
  %58 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %Username67 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %58, i32 0, i32 68
  %arraydecay68 = getelementptr inbounds [12 x i8], [12 x i8]* %Username67, i32 0, i32 0
  %call69 = call i64 @strlen(i8* %arraydecay68) #7
  %conv70 = trunc i64 %call69 to i32
  %size71 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %usern, i32 0, i32 1
  store i32 %conv70, i32* %size71, align 4, !tbaa !89
  %persistent72 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %usern, i32 0, i32 2
  store i32 0, i32* %persistent72, align 4, !tbaa !90
  %59 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call73 = call i32 @param_write_string(%struct.gs_param_list_s* %59, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.98, i32 0, i32 0), %struct.gs_param_string_s* %usern) #5
  store i32 %call73, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.64, %if.then.63, %if.then
  %60 = bitcast %struct.gs_param_string_s* %pmedia to i8*
  call void @llvm.lifetime.end(i64 16, i8* %60) #2
  %61 = bitcast %struct.gs_param_string_s* %usern to i8*
  call void @llvm.lifetime.end(i64 16, i8* %61) #2
  %62 = bitcast i32* %ncode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #2
  %63 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #2
  %64 = bitcast %struct.gx_device_lips4v_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #2
  %65 = load i32, i32* %retval
  ret i32 %65
}

; Function Attrs: nounwind uwtable
define internal i32 @lips4v_put_params(%struct.gx_device_s* %dev, %struct.gs_param_list_s* %plist) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pdev = alloca %struct.gx_device_lips4v_s*, align 8
  %ecode = alloca i32, align 4
  %code = alloca i32, align 4
  %param_name = alloca i8*, align 8
  %pmedia = alloca %struct.gs_param_string_s, align 8
  %mf = alloca i32, align 4
  %cass = alloca i32, align 4
  %usern = alloca %struct.gs_param_string_s, align 8
  %tum = alloca i32, align 4
  %nup = alloca i32, align 4
  %pjl = alloca i32, align 4
  %toner_density = alloca i32, align 4
  %toner_saving = alloca i32, align 4
  %toner_saving_set = alloca i32, align 4
  %fontdl = alloca i32, align 4
  %faceup = alloca i32, align 4
  %duplex = alloca i32, align 4
  %duplex_set = alloca i32, align 4
  %old_bpp = alloca i32, align 4
  %bpp = alloca i32, align 4
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__s1 = alloca i8*, align 8
  %__result = alloca i32, align 4
  %tmp71 = alloca i32, align 4
  %__s1_len78 = alloca i64, align 8
  %__s2_len80 = alloca i64, align 8
  %tmp81 = alloca i32, align 4
  %__s188 = alloca i8*, align 8
  %__result91 = alloca i32, align 4
  %tmp129 = alloca i32, align 4
  %__s1_len139 = alloca i64, align 8
  %__s2_len141 = alloca i64, align 8
  %tmp142 = alloca i32, align 4
  %__s1149 = alloca i8*, align 8
  %__result152 = alloca i32, align 4
  %tmp190 = alloca i32, align 4
  %__s1_len200 = alloca i64, align 8
  %__s2_len202 = alloca i64, align 8
  %tmp203 = alloca i32, align 4
  %__s1210 = alloca i8*, align 8
  %__result213 = alloca i32, align 4
  %tmp251 = alloca i32, align 4
  %__s1_len261 = alloca i64, align 8
  %__s2_len263 = alloca i64, align 8
  %tmp264 = alloca i32, align 4
  %__s1271 = alloca i8*, align 8
  %__result274 = alloca i32, align 4
  %tmp312 = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_lips4v_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_lips4v_s*
  store %struct.gx_device_lips4v_s* %2, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %3 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  store i32 0, i32* %ecode, align 4, !tbaa !5
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i8** %param_name to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = bitcast %struct.gs_param_string_s* %pmedia to i8*
  call void @llvm.lifetime.start(i64 16, i8* %6) #2
  %7 = bitcast i32* %mf to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %ManualFeed = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %8, i32 0, i32 83
  %9 = load i32, i32* %ManualFeed, align 4, !tbaa !91
  store i32 %9, i32* %mf, align 4, !tbaa !5
  %10 = bitcast i32* %cass to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %cassetFeed = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %11, i32 0, i32 67
  %12 = load i32, i32* %cassetFeed, align 4, !tbaa !92
  store i32 %12, i32* %cass, align 4, !tbaa !5
  %13 = bitcast %struct.gs_param_string_s* %usern to i8*
  call void @llvm.lifetime.start(i64 16, i8* %13) #2
  %14 = bitcast i32* %tum to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  %15 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %Tumble = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %15, i32 0, i32 86
  %16 = load i32, i32* %Tumble, align 4, !tbaa !93
  store i32 %16, i32* %tum, align 4, !tbaa !5
  %17 = bitcast i32* %nup to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #2
  %18 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %nup1 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %18, i32 0, i32 79
  %19 = load i32, i32* %nup1, align 4, !tbaa !94
  store i32 %19, i32* %nup, align 4, !tbaa !5
  %20 = bitcast i32* %pjl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #2
  %21 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %pjl2 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %21, i32 0, i32 69
  %22 = load i32, i32* %pjl2, align 4, !tbaa !67
  store i32 %22, i32* %pjl, align 4, !tbaa !5
  %23 = bitcast i32* %toner_density to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #2
  %24 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %toner_density3 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %24, i32 0, i32 70
  %25 = load i32, i32* %toner_density3, align 4, !tbaa !95
  store i32 %25, i32* %toner_density, align 4, !tbaa !5
  %26 = bitcast i32* %toner_saving to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #2
  %27 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %toner_saving4 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %27, i32 0, i32 71
  %28 = load i32, i32* %toner_saving4, align 4, !tbaa !96
  store i32 %28, i32* %toner_saving, align 4, !tbaa !5
  %29 = bitcast i32* %toner_saving_set to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #2
  %30 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %toner_saving_set5 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %30, i32 0, i32 72
  %31 = load i32, i32* %toner_saving_set5, align 4, !tbaa !85
  store i32 %31, i32* %toner_saving_set, align 4, !tbaa !5
  %32 = bitcast i32* %fontdl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #2
  %33 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %FontDL = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %33, i32 0, i32 97
  %34 = load i32, i32* %FontDL, align 4, !tbaa !97
  store i32 %34, i32* %fontdl, align 4, !tbaa !5
  %35 = bitcast i32* %faceup to i8*
  call void @llvm.lifetime.start(i64 4, i8* %35) #2
  %36 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %faceup6 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %36, i32 0, i32 80
  %37 = load i32, i32* %faceup6, align 4, !tbaa !98
  store i32 %37, i32* %faceup, align 4, !tbaa !5
  %38 = bitcast i32* %duplex to i8*
  call void @llvm.lifetime.start(i64 4, i8* %38) #2
  %39 = bitcast i32* %duplex_set to i8*
  call void @llvm.lifetime.start(i64 4, i8* %39) #2
  store i32 -1, i32* %duplex_set, align 4, !tbaa !5
  %40 = bitcast i32* %old_bpp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %40) #2
  %41 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %41, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %42 = load i16, i16* %depth, align 2, !tbaa !83
  %conv = zext i16 %42 to i32
  store i32 %conv, i32* %old_bpp, align 4, !tbaa !5
  %43 = bitcast i32* %bpp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %43) #2
  store i32 0, i32* %bpp, align 4, !tbaa !5
  %44 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.87, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %call = call i32 @param_read_bool(%struct.gs_param_list_s* %44, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.87, i32 0, i32 0), i32* %mf) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %45 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %45, i32 0, i32 0
  %46 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !99
  %signal_error = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %46, i32 0, i32 7
  %47 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error, align 8, !tbaa !101
  %48 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %49 = load i8*, i8** %param_name, align 8, !tbaa !1
  %50 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %50, i32* %ecode, align 4, !tbaa !5
  %call8 = call i32 %47(%struct.gs_param_list_s* %48, i8* %49, i32 %50) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %51 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.88, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %call9 = call i32 @param_read_int(%struct.gs_param_list_s* %51, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.88, i32 0, i32 0), i32* %cass) #5
  store i32 %call9, i32* %code, align 4, !tbaa !5
  switch i32 %call9, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.epilog
  ]

sw.bb:                                            ; preds = %if.end
  %52 = load i32, i32* %cass, align 4, !tbaa !5
  %cmp10 = icmp slt i32 %52, -1
  br i1 %cmp10, label %if.then.19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb
  %53 = load i32, i32* %cass, align 4, !tbaa !5
  %cmp12 = icmp sgt i32 %53, 17
  br i1 %cmp12, label %if.then.19, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %lor.lhs.false
  %54 = load i32, i32* %cass, align 4, !tbaa !5
  %cmp15 = icmp sgt i32 %54, 3
  br i1 %cmp15, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false.14
  %55 = load i32, i32* %cass, align 4, !tbaa !5
  %cmp17 = icmp slt i32 %55, 10
  br i1 %cmp17, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %land.lhs.true, %lor.lhs.false, %sw.bb
  store i32 -13, i32* %ecode, align 4, !tbaa !5
  br label %if.end.20

if.else:                                          ; preds = %land.lhs.true, %lor.lhs.false.14
  br label %sw.epilog

if.end.20:                                        ; preds = %if.then.19
  br label %casse

sw.default:                                       ; preds = %if.end
  %56 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %56, i32* %ecode, align 4, !tbaa !5
  br label %casse

casse:                                            ; preds = %sw.default, %if.end.20
  %57 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs21 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %57, i32 0, i32 0
  %58 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs21, align 8, !tbaa !99
  %signal_error22 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %58, i32 0, i32 7
  %59 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error22, align 8, !tbaa !101
  %60 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %61 = load i8*, i8** %param_name, align 8, !tbaa !1
  %62 = load i32, i32* %ecode, align 4, !tbaa !5
  %call23 = call i32 %59(%struct.gs_param_list_s* %60, i8* %61, i32 %62) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %casse, %if.end, %if.else
  %63 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %call24 = call i32 @param_read_string(%struct.gs_param_list_s* %63, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), %struct.gs_param_string_s* %pmedia) #5
  store i32 %call24, i32* %code, align 4, !tbaa !5
  switch i32 %call24, label %sw.default.323 [
    i32 0, label %sw.bb.25
    i32 1, label %sw.bb.327
  ]

sw.bb.25:                                         ; preds = %sw.epilog
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %pmedia, i32 0, i32 1
  %64 = load i32, i32* %size, align 4, !tbaa !89
  %cmp26 = icmp ugt i32 %64, 32
  br i1 %cmp26, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %sw.bb.25
  store i32 -13, i32* %ecode, align 4, !tbaa !5
  br label %pmediae

if.else.29:                                       ; preds = %sw.bb.25
  %65 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %65) #2
  %66 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %66) #2
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i64 1) to i64), i64 ptrtoint ([11 x i8]* @.str.12 to i64)), i64 1), label %land.lhs.true.30, label %cond.false

land.lhs.true.30:                                 ; preds = %if.else.29
  %call31 = call i64 @strlen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0)) #7
  store i64 %call31, i64* %__s2_len, align 8, !tbaa !68
  %67 = load i64, i64* %__s2_len, align 8, !tbaa !68
  %cmp32 = icmp ult i64 %67, 4
  br i1 %cmp32, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.30
  %68 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %68) #2
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %pmedia, i32 0, i32 0
  %69 = load i8*, i8** %data, align 8, !tbaa !87
  store i8* %69, i8** %__s1, align 8, !tbaa !1
  %70 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %70) #2
  %71 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %71, i64 0
  %72 = load i8, i8* %arrayidx, align 1, !tbaa !58
  %conv36 = zext i8 %72 to i32
  %73 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), align 1, !tbaa !58
  %conv37 = zext i8 %73 to i32
  %sub = sub nsw i32 %conv36, %conv37
  store i32 %sub, i32* %__result, align 4, !tbaa !5
  %74 = load i64, i64* %__s2_len, align 8, !tbaa !68
  %cmp38 = icmp ugt i64 %74, 0
  br i1 %cmp38, label %land.lhs.true.40, label %if.end.70

land.lhs.true.40:                                 ; preds = %cond.true
  %75 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp41 = icmp eq i32 %75, 0
  br i1 %cmp41, label %if.then.43, label %if.end.70

if.then.43:                                       ; preds = %land.lhs.true.40
  %76 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx44 = getelementptr inbounds i8, i8* %76, i64 1
  %77 = load i8, i8* %arrayidx44, align 1, !tbaa !58
  %conv45 = zext i8 %77 to i32
  %78 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i64 1), align 1, !tbaa !58
  %conv46 = zext i8 %78 to i32
  %sub47 = sub nsw i32 %conv45, %conv46
  store i32 %sub47, i32* %__result, align 4, !tbaa !5
  %79 = load i64, i64* %__s2_len, align 8, !tbaa !68
  %cmp48 = icmp ugt i64 %79, 1
  br i1 %cmp48, label %land.lhs.true.50, label %if.end.69

land.lhs.true.50:                                 ; preds = %if.then.43
  %80 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp51 = icmp eq i32 %80, 0
  br i1 %cmp51, label %if.then.53, label %if.end.69

if.then.53:                                       ; preds = %land.lhs.true.50
  %81 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx54 = getelementptr inbounds i8, i8* %81, i64 2
  %82 = load i8, i8* %arrayidx54, align 1, !tbaa !58
  %conv55 = zext i8 %82 to i32
  %83 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i64 2), align 1, !tbaa !58
  %conv56 = zext i8 %83 to i32
  %sub57 = sub nsw i32 %conv55, %conv56
  store i32 %sub57, i32* %__result, align 4, !tbaa !5
  %84 = load i64, i64* %__s2_len, align 8, !tbaa !68
  %cmp58 = icmp ugt i64 %84, 2
  br i1 %cmp58, label %land.lhs.true.60, label %if.end.68

land.lhs.true.60:                                 ; preds = %if.then.53
  %85 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp61 = icmp eq i32 %85, 0
  br i1 %cmp61, label %if.then.63, label %if.end.68

if.then.63:                                       ; preds = %land.lhs.true.60
  %86 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx64 = getelementptr inbounds i8, i8* %86, i64 3
  %87 = load i8, i8* %arrayidx64, align 1, !tbaa !58
  %conv65 = zext i8 %87 to i32
  %88 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i64 3), align 1, !tbaa !58
  %conv66 = zext i8 %88 to i32
  %sub67 = sub nsw i32 %conv65, %conv66
  store i32 %sub67, i32* %__result, align 4, !tbaa !5
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.63, %land.lhs.true.60, %if.then.53
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %land.lhs.true.50, %if.then.43
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %land.lhs.true.40, %cond.true
  %89 = load i32, i32* %__result, align 4, !tbaa !5
  store i32 %89, i32* %tmp71, !tbaa !5
  %90 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %90) #2
  %91 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %91) #2
  %92 = load i32, i32* %tmp71, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.30, %if.else.29
  %data72 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %pmedia, i32 0, i32 0
  %93 = load i8*, i8** %data72, align 8, !tbaa !87
  %call73 = call i32 @strcmp(i8* %93, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0)) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.70
  %cond = phi i32 [ %92, %if.end.70 ], [ %call73, %cond.false ]
  store i32 %cond, i32* %tmp, !tbaa !5
  %94 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %94) #2
  %95 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %95) #2
  %96 = load i32, i32* %tmp, !tbaa !5
  %cmp74 = icmp ne i32 %96, 0
  br i1 %cmp74, label %land.lhs.true.76, label %if.end.321

land.lhs.true.76:                                 ; preds = %cond.end
  %97 = bitcast i64* %__s1_len78 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %97) #2
  %98 = bitcast i64* %__s2_len80 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %98) #2
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i64 1) to i64), i64 ptrtoint ([4 x i8]* @.str.14 to i64)), i64 1), label %land.lhs.true.82, label %cond.false.130

land.lhs.true.82:                                 ; preds = %land.lhs.true.76
  %call83 = call i64 @strlen(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0)) #7
  store i64 %call83, i64* %__s2_len80, align 8, !tbaa !68
  %99 = load i64, i64* %__s2_len80, align 8, !tbaa !68
  %cmp84 = icmp ult i64 %99, 4
  br i1 %cmp84, label %cond.true.86, label %cond.false.130

cond.true.86:                                     ; preds = %land.lhs.true.82
  %100 = bitcast i8** %__s188 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %100) #2
  %data89 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %pmedia, i32 0, i32 0
  %101 = load i8*, i8** %data89, align 8, !tbaa !87
  store i8* %101, i8** %__s188, align 8, !tbaa !1
  %102 = bitcast i32* %__result91 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %102) #2
  %103 = load i8*, i8** %__s188, align 8, !tbaa !1
  %arrayidx92 = getelementptr inbounds i8, i8* %103, i64 0
  %104 = load i8, i8* %arrayidx92, align 1, !tbaa !58
  %conv93 = zext i8 %104 to i32
  %105 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), align 1, !tbaa !58
  %conv94 = zext i8 %105 to i32
  %sub95 = sub nsw i32 %conv93, %conv94
  store i32 %sub95, i32* %__result91, align 4, !tbaa !5
  %106 = load i64, i64* %__s2_len80, align 8, !tbaa !68
  %cmp96 = icmp ugt i64 %106, 0
  br i1 %cmp96, label %land.lhs.true.98, label %if.end.128

land.lhs.true.98:                                 ; preds = %cond.true.86
  %107 = load i32, i32* %__result91, align 4, !tbaa !5
  %cmp99 = icmp eq i32 %107, 0
  br i1 %cmp99, label %if.then.101, label %if.end.128

if.then.101:                                      ; preds = %land.lhs.true.98
  %108 = load i8*, i8** %__s188, align 8, !tbaa !1
  %arrayidx102 = getelementptr inbounds i8, i8* %108, i64 1
  %109 = load i8, i8* %arrayidx102, align 1, !tbaa !58
  %conv103 = zext i8 %109 to i32
  %110 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i64 1), align 1, !tbaa !58
  %conv104 = zext i8 %110 to i32
  %sub105 = sub nsw i32 %conv103, %conv104
  store i32 %sub105, i32* %__result91, align 4, !tbaa !5
  %111 = load i64, i64* %__s2_len80, align 8, !tbaa !68
  %cmp106 = icmp ugt i64 %111, 1
  br i1 %cmp106, label %land.lhs.true.108, label %if.end.127

land.lhs.true.108:                                ; preds = %if.then.101
  %112 = load i32, i32* %__result91, align 4, !tbaa !5
  %cmp109 = icmp eq i32 %112, 0
  br i1 %cmp109, label %if.then.111, label %if.end.127

if.then.111:                                      ; preds = %land.lhs.true.108
  %113 = load i8*, i8** %__s188, align 8, !tbaa !1
  %arrayidx112 = getelementptr inbounds i8, i8* %113, i64 2
  %114 = load i8, i8* %arrayidx112, align 1, !tbaa !58
  %conv113 = zext i8 %114 to i32
  %115 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i64 2), align 1, !tbaa !58
  %conv114 = zext i8 %115 to i32
  %sub115 = sub nsw i32 %conv113, %conv114
  store i32 %sub115, i32* %__result91, align 4, !tbaa !5
  %116 = load i64, i64* %__s2_len80, align 8, !tbaa !68
  %cmp116 = icmp ugt i64 %116, 2
  br i1 %cmp116, label %land.lhs.true.118, label %if.end.126

land.lhs.true.118:                                ; preds = %if.then.111
  %117 = load i32, i32* %__result91, align 4, !tbaa !5
  %cmp119 = icmp eq i32 %117, 0
  br i1 %cmp119, label %if.then.121, label %if.end.126

if.then.121:                                      ; preds = %land.lhs.true.118
  %118 = load i8*, i8** %__s188, align 8, !tbaa !1
  %arrayidx122 = getelementptr inbounds i8, i8* %118, i64 3
  %119 = load i8, i8* %arrayidx122, align 1, !tbaa !58
  %conv123 = zext i8 %119 to i32
  %120 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i64 3), align 1, !tbaa !58
  %conv124 = zext i8 %120 to i32
  %sub125 = sub nsw i32 %conv123, %conv124
  store i32 %sub125, i32* %__result91, align 4, !tbaa !5
  br label %if.end.126

if.end.126:                                       ; preds = %if.then.121, %land.lhs.true.118, %if.then.111
  br label %if.end.127

if.end.127:                                       ; preds = %if.end.126, %land.lhs.true.108, %if.then.101
  br label %if.end.128

if.end.128:                                       ; preds = %if.end.127, %land.lhs.true.98, %cond.true.86
  %121 = load i32, i32* %__result91, align 4, !tbaa !5
  store i32 %121, i32* %tmp129, !tbaa !5
  %122 = bitcast i32* %__result91 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %122) #2
  %123 = bitcast i8** %__s188 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %123) #2
  %124 = load i32, i32* %tmp129, !tbaa !5
  br label %cond.end.133

cond.false.130:                                   ; preds = %land.lhs.true.82, %land.lhs.true.76
  %data131 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %pmedia, i32 0, i32 0
  %125 = load i8*, i8** %data131, align 8, !tbaa !87
  %call132 = call i32 @strcmp(i8* %125, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0)) #6
  br label %cond.end.133

cond.end.133:                                     ; preds = %cond.false.130, %if.end.128
  %cond134 = phi i32 [ %124, %if.end.128 ], [ %call132, %cond.false.130 ]
  store i32 %cond134, i32* %tmp81, !tbaa !5
  %126 = bitcast i64* %__s2_len80 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %126) #2
  %127 = bitcast i64* %__s1_len78 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %127) #2
  %128 = load i32, i32* %tmp81, !tbaa !5
  %cmp135 = icmp ne i32 %128, 0
  br i1 %cmp135, label %land.lhs.true.137, label %if.end.321

land.lhs.true.137:                                ; preds = %cond.end.133
  %129 = bitcast i64* %__s1_len139 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %129) #2
  %130 = bitcast i64* %__s2_len141 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %130) #2
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i64 1) to i64), i64 ptrtoint ([17 x i8]* @.str.15 to i64)), i64 1), label %land.lhs.true.143, label %cond.false.191

land.lhs.true.143:                                ; preds = %land.lhs.true.137
  %call144 = call i64 @strlen(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0)) #7
  store i64 %call144, i64* %__s2_len141, align 8, !tbaa !68
  %131 = load i64, i64* %__s2_len141, align 8, !tbaa !68
  %cmp145 = icmp ult i64 %131, 4
  br i1 %cmp145, label %cond.true.147, label %cond.false.191

cond.true.147:                                    ; preds = %land.lhs.true.143
  %132 = bitcast i8** %__s1149 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %132) #2
  %data150 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %pmedia, i32 0, i32 0
  %133 = load i8*, i8** %data150, align 8, !tbaa !87
  store i8* %133, i8** %__s1149, align 8, !tbaa !1
  %134 = bitcast i32* %__result152 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %134) #2
  %135 = load i8*, i8** %__s1149, align 8, !tbaa !1
  %arrayidx153 = getelementptr inbounds i8, i8* %135, i64 0
  %136 = load i8, i8* %arrayidx153, align 1, !tbaa !58
  %conv154 = zext i8 %136 to i32
  %137 = load i8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), align 1, !tbaa !58
  %conv155 = zext i8 %137 to i32
  %sub156 = sub nsw i32 %conv154, %conv155
  store i32 %sub156, i32* %__result152, align 4, !tbaa !5
  %138 = load i64, i64* %__s2_len141, align 8, !tbaa !68
  %cmp157 = icmp ugt i64 %138, 0
  br i1 %cmp157, label %land.lhs.true.159, label %if.end.189

land.lhs.true.159:                                ; preds = %cond.true.147
  %139 = load i32, i32* %__result152, align 4, !tbaa !5
  %cmp160 = icmp eq i32 %139, 0
  br i1 %cmp160, label %if.then.162, label %if.end.189

if.then.162:                                      ; preds = %land.lhs.true.159
  %140 = load i8*, i8** %__s1149, align 8, !tbaa !1
  %arrayidx163 = getelementptr inbounds i8, i8* %140, i64 1
  %141 = load i8, i8* %arrayidx163, align 1, !tbaa !58
  %conv164 = zext i8 %141 to i32
  %142 = load i8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i64 1), align 1, !tbaa !58
  %conv165 = zext i8 %142 to i32
  %sub166 = sub nsw i32 %conv164, %conv165
  store i32 %sub166, i32* %__result152, align 4, !tbaa !5
  %143 = load i64, i64* %__s2_len141, align 8, !tbaa !68
  %cmp167 = icmp ugt i64 %143, 1
  br i1 %cmp167, label %land.lhs.true.169, label %if.end.188

land.lhs.true.169:                                ; preds = %if.then.162
  %144 = load i32, i32* %__result152, align 4, !tbaa !5
  %cmp170 = icmp eq i32 %144, 0
  br i1 %cmp170, label %if.then.172, label %if.end.188

if.then.172:                                      ; preds = %land.lhs.true.169
  %145 = load i8*, i8** %__s1149, align 8, !tbaa !1
  %arrayidx173 = getelementptr inbounds i8, i8* %145, i64 2
  %146 = load i8, i8* %arrayidx173, align 1, !tbaa !58
  %conv174 = zext i8 %146 to i32
  %147 = load i8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i64 2), align 1, !tbaa !58
  %conv175 = zext i8 %147 to i32
  %sub176 = sub nsw i32 %conv174, %conv175
  store i32 %sub176, i32* %__result152, align 4, !tbaa !5
  %148 = load i64, i64* %__s2_len141, align 8, !tbaa !68
  %cmp177 = icmp ugt i64 %148, 2
  br i1 %cmp177, label %land.lhs.true.179, label %if.end.187

land.lhs.true.179:                                ; preds = %if.then.172
  %149 = load i32, i32* %__result152, align 4, !tbaa !5
  %cmp180 = icmp eq i32 %149, 0
  br i1 %cmp180, label %if.then.182, label %if.end.187

if.then.182:                                      ; preds = %land.lhs.true.179
  %150 = load i8*, i8** %__s1149, align 8, !tbaa !1
  %arrayidx183 = getelementptr inbounds i8, i8* %150, i64 3
  %151 = load i8, i8* %arrayidx183, align 1, !tbaa !58
  %conv184 = zext i8 %151 to i32
  %152 = load i8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i64 3), align 1, !tbaa !58
  %conv185 = zext i8 %152 to i32
  %sub186 = sub nsw i32 %conv184, %conv185
  store i32 %sub186, i32* %__result152, align 4, !tbaa !5
  br label %if.end.187

if.end.187:                                       ; preds = %if.then.182, %land.lhs.true.179, %if.then.172
  br label %if.end.188

if.end.188:                                       ; preds = %if.end.187, %land.lhs.true.169, %if.then.162
  br label %if.end.189

if.end.189:                                       ; preds = %if.end.188, %land.lhs.true.159, %cond.true.147
  %153 = load i32, i32* %__result152, align 4, !tbaa !5
  store i32 %153, i32* %tmp190, !tbaa !5
  %154 = bitcast i32* %__result152 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %154) #2
  %155 = bitcast i8** %__s1149 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %155) #2
  %156 = load i32, i32* %tmp190, !tbaa !5
  br label %cond.end.194

cond.false.191:                                   ; preds = %land.lhs.true.143, %land.lhs.true.137
  %data192 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %pmedia, i32 0, i32 0
  %157 = load i8*, i8** %data192, align 8, !tbaa !87
  %call193 = call i32 @strcmp(i8* %157, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0)) #6
  br label %cond.end.194

cond.end.194:                                     ; preds = %cond.false.191, %if.end.189
  %cond195 = phi i32 [ %156, %if.end.189 ], [ %call193, %cond.false.191 ]
  store i32 %cond195, i32* %tmp142, !tbaa !5
  %158 = bitcast i64* %__s2_len141 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %158) #2
  %159 = bitcast i64* %__s1_len139 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %159) #2
  %160 = load i32, i32* %tmp142, !tbaa !5
  %cmp196 = icmp ne i32 %160, 0
  br i1 %cmp196, label %land.lhs.true.198, label %if.end.321

land.lhs.true.198:                                ; preds = %cond.end.194
  %161 = bitcast i64* %__s1_len200 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %161) #2
  %162 = bitcast i64* %__s2_len202 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %162) #2
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i64 1) to i64), i64 ptrtoint ([11 x i8]* @.str.19 to i64)), i64 1), label %land.lhs.true.204, label %cond.false.252

land.lhs.true.204:                                ; preds = %land.lhs.true.198
  %call205 = call i64 @strlen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0)) #7
  store i64 %call205, i64* %__s2_len202, align 8, !tbaa !68
  %163 = load i64, i64* %__s2_len202, align 8, !tbaa !68
  %cmp206 = icmp ult i64 %163, 4
  br i1 %cmp206, label %cond.true.208, label %cond.false.252

cond.true.208:                                    ; preds = %land.lhs.true.204
  %164 = bitcast i8** %__s1210 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %164) #2
  %data211 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %pmedia, i32 0, i32 0
  %165 = load i8*, i8** %data211, align 8, !tbaa !87
  store i8* %165, i8** %__s1210, align 8, !tbaa !1
  %166 = bitcast i32* %__result213 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %166) #2
  %167 = load i8*, i8** %__s1210, align 8, !tbaa !1
  %arrayidx214 = getelementptr inbounds i8, i8* %167, i64 0
  %168 = load i8, i8* %arrayidx214, align 1, !tbaa !58
  %conv215 = zext i8 %168 to i32
  %169 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), align 1, !tbaa !58
  %conv216 = zext i8 %169 to i32
  %sub217 = sub nsw i32 %conv215, %conv216
  store i32 %sub217, i32* %__result213, align 4, !tbaa !5
  %170 = load i64, i64* %__s2_len202, align 8, !tbaa !68
  %cmp218 = icmp ugt i64 %170, 0
  br i1 %cmp218, label %land.lhs.true.220, label %if.end.250

land.lhs.true.220:                                ; preds = %cond.true.208
  %171 = load i32, i32* %__result213, align 4, !tbaa !5
  %cmp221 = icmp eq i32 %171, 0
  br i1 %cmp221, label %if.then.223, label %if.end.250

if.then.223:                                      ; preds = %land.lhs.true.220
  %172 = load i8*, i8** %__s1210, align 8, !tbaa !1
  %arrayidx224 = getelementptr inbounds i8, i8* %172, i64 1
  %173 = load i8, i8* %arrayidx224, align 1, !tbaa !58
  %conv225 = zext i8 %173 to i32
  %174 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i64 1), align 1, !tbaa !58
  %conv226 = zext i8 %174 to i32
  %sub227 = sub nsw i32 %conv225, %conv226
  store i32 %sub227, i32* %__result213, align 4, !tbaa !5
  %175 = load i64, i64* %__s2_len202, align 8, !tbaa !68
  %cmp228 = icmp ugt i64 %175, 1
  br i1 %cmp228, label %land.lhs.true.230, label %if.end.249

land.lhs.true.230:                                ; preds = %if.then.223
  %176 = load i32, i32* %__result213, align 4, !tbaa !5
  %cmp231 = icmp eq i32 %176, 0
  br i1 %cmp231, label %if.then.233, label %if.end.249

if.then.233:                                      ; preds = %land.lhs.true.230
  %177 = load i8*, i8** %__s1210, align 8, !tbaa !1
  %arrayidx234 = getelementptr inbounds i8, i8* %177, i64 2
  %178 = load i8, i8* %arrayidx234, align 1, !tbaa !58
  %conv235 = zext i8 %178 to i32
  %179 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i64 2), align 1, !tbaa !58
  %conv236 = zext i8 %179 to i32
  %sub237 = sub nsw i32 %conv235, %conv236
  store i32 %sub237, i32* %__result213, align 4, !tbaa !5
  %180 = load i64, i64* %__s2_len202, align 8, !tbaa !68
  %cmp238 = icmp ugt i64 %180, 2
  br i1 %cmp238, label %land.lhs.true.240, label %if.end.248

land.lhs.true.240:                                ; preds = %if.then.233
  %181 = load i32, i32* %__result213, align 4, !tbaa !5
  %cmp241 = icmp eq i32 %181, 0
  br i1 %cmp241, label %if.then.243, label %if.end.248

if.then.243:                                      ; preds = %land.lhs.true.240
  %182 = load i8*, i8** %__s1210, align 8, !tbaa !1
  %arrayidx244 = getelementptr inbounds i8, i8* %182, i64 3
  %183 = load i8, i8* %arrayidx244, align 1, !tbaa !58
  %conv245 = zext i8 %183 to i32
  %184 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i64 3), align 1, !tbaa !58
  %conv246 = zext i8 %184 to i32
  %sub247 = sub nsw i32 %conv245, %conv246
  store i32 %sub247, i32* %__result213, align 4, !tbaa !5
  br label %if.end.248

if.end.248:                                       ; preds = %if.then.243, %land.lhs.true.240, %if.then.233
  br label %if.end.249

if.end.249:                                       ; preds = %if.end.248, %land.lhs.true.230, %if.then.223
  br label %if.end.250

if.end.250:                                       ; preds = %if.end.249, %land.lhs.true.220, %cond.true.208
  %185 = load i32, i32* %__result213, align 4, !tbaa !5
  store i32 %185, i32* %tmp251, !tbaa !5
  %186 = bitcast i32* %__result213 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %186) #2
  %187 = bitcast i8** %__s1210 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %187) #2
  %188 = load i32, i32* %tmp251, !tbaa !5
  br label %cond.end.255

cond.false.252:                                   ; preds = %land.lhs.true.204, %land.lhs.true.198
  %data253 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %pmedia, i32 0, i32 0
  %189 = load i8*, i8** %data253, align 8, !tbaa !87
  %call254 = call i32 @strcmp(i8* %189, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0)) #6
  br label %cond.end.255

cond.end.255:                                     ; preds = %cond.false.252, %if.end.250
  %cond256 = phi i32 [ %188, %if.end.250 ], [ %call254, %cond.false.252 ]
  store i32 %cond256, i32* %tmp203, !tbaa !5
  %190 = bitcast i64* %__s2_len202 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %190) #2
  %191 = bitcast i64* %__s1_len200 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %191) #2
  %192 = load i32, i32* %tmp203, !tbaa !5
  %cmp257 = icmp ne i32 %192, 0
  br i1 %cmp257, label %land.lhs.true.259, label %if.end.321

land.lhs.true.259:                                ; preds = %cond.end.255
  %193 = bitcast i64* %__s1_len261 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %193) #2
  %194 = bitcast i64* %__s2_len263 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %194) #2
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i64 1) to i64), i64 ptrtoint ([10 x i8]* @.str.17 to i64)), i64 1), label %land.lhs.true.265, label %cond.false.313

land.lhs.true.265:                                ; preds = %land.lhs.true.259
  %call266 = call i64 @strlen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0)) #7
  store i64 %call266, i64* %__s2_len263, align 8, !tbaa !68
  %195 = load i64, i64* %__s2_len263, align 8, !tbaa !68
  %cmp267 = icmp ult i64 %195, 4
  br i1 %cmp267, label %cond.true.269, label %cond.false.313

cond.true.269:                                    ; preds = %land.lhs.true.265
  %196 = bitcast i8** %__s1271 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %196) #2
  %data272 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %pmedia, i32 0, i32 0
  %197 = load i8*, i8** %data272, align 8, !tbaa !87
  store i8* %197, i8** %__s1271, align 8, !tbaa !1
  %198 = bitcast i32* %__result274 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %198) #2
  %199 = load i8*, i8** %__s1271, align 8, !tbaa !1
  %arrayidx275 = getelementptr inbounds i8, i8* %199, i64 0
  %200 = load i8, i8* %arrayidx275, align 1, !tbaa !58
  %conv276 = zext i8 %200 to i32
  %201 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), align 1, !tbaa !58
  %conv277 = zext i8 %201 to i32
  %sub278 = sub nsw i32 %conv276, %conv277
  store i32 %sub278, i32* %__result274, align 4, !tbaa !5
  %202 = load i64, i64* %__s2_len263, align 8, !tbaa !68
  %cmp279 = icmp ugt i64 %202, 0
  br i1 %cmp279, label %land.lhs.true.281, label %if.end.311

land.lhs.true.281:                                ; preds = %cond.true.269
  %203 = load i32, i32* %__result274, align 4, !tbaa !5
  %cmp282 = icmp eq i32 %203, 0
  br i1 %cmp282, label %if.then.284, label %if.end.311

if.then.284:                                      ; preds = %land.lhs.true.281
  %204 = load i8*, i8** %__s1271, align 8, !tbaa !1
  %arrayidx285 = getelementptr inbounds i8, i8* %204, i64 1
  %205 = load i8, i8* %arrayidx285, align 1, !tbaa !58
  %conv286 = zext i8 %205 to i32
  %206 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i64 1), align 1, !tbaa !58
  %conv287 = zext i8 %206 to i32
  %sub288 = sub nsw i32 %conv286, %conv287
  store i32 %sub288, i32* %__result274, align 4, !tbaa !5
  %207 = load i64, i64* %__s2_len263, align 8, !tbaa !68
  %cmp289 = icmp ugt i64 %207, 1
  br i1 %cmp289, label %land.lhs.true.291, label %if.end.310

land.lhs.true.291:                                ; preds = %if.then.284
  %208 = load i32, i32* %__result274, align 4, !tbaa !5
  %cmp292 = icmp eq i32 %208, 0
  br i1 %cmp292, label %if.then.294, label %if.end.310

if.then.294:                                      ; preds = %land.lhs.true.291
  %209 = load i8*, i8** %__s1271, align 8, !tbaa !1
  %arrayidx295 = getelementptr inbounds i8, i8* %209, i64 2
  %210 = load i8, i8* %arrayidx295, align 1, !tbaa !58
  %conv296 = zext i8 %210 to i32
  %211 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i64 2), align 1, !tbaa !58
  %conv297 = zext i8 %211 to i32
  %sub298 = sub nsw i32 %conv296, %conv297
  store i32 %sub298, i32* %__result274, align 4, !tbaa !5
  %212 = load i64, i64* %__s2_len263, align 8, !tbaa !68
  %cmp299 = icmp ugt i64 %212, 2
  br i1 %cmp299, label %land.lhs.true.301, label %if.end.309

land.lhs.true.301:                                ; preds = %if.then.294
  %213 = load i32, i32* %__result274, align 4, !tbaa !5
  %cmp302 = icmp eq i32 %213, 0
  br i1 %cmp302, label %if.then.304, label %if.end.309

if.then.304:                                      ; preds = %land.lhs.true.301
  %214 = load i8*, i8** %__s1271, align 8, !tbaa !1
  %arrayidx305 = getelementptr inbounds i8, i8* %214, i64 3
  %215 = load i8, i8* %arrayidx305, align 1, !tbaa !58
  %conv306 = zext i8 %215 to i32
  %216 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i64 3), align 1, !tbaa !58
  %conv307 = zext i8 %216 to i32
  %sub308 = sub nsw i32 %conv306, %conv307
  store i32 %sub308, i32* %__result274, align 4, !tbaa !5
  br label %if.end.309

if.end.309:                                       ; preds = %if.then.304, %land.lhs.true.301, %if.then.294
  br label %if.end.310

if.end.310:                                       ; preds = %if.end.309, %land.lhs.true.291, %if.then.284
  br label %if.end.311

if.end.311:                                       ; preds = %if.end.310, %land.lhs.true.281, %cond.true.269
  %217 = load i32, i32* %__result274, align 4, !tbaa !5
  store i32 %217, i32* %tmp312, !tbaa !5
  %218 = bitcast i32* %__result274 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %218) #2
  %219 = bitcast i8** %__s1271 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %219) #2
  %220 = load i32, i32* %tmp312, !tbaa !5
  br label %cond.end.316

cond.false.313:                                   ; preds = %land.lhs.true.265, %land.lhs.true.259
  %data314 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %pmedia, i32 0, i32 0
  %221 = load i8*, i8** %data314, align 8, !tbaa !87
  %call315 = call i32 @strcmp(i8* %221, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0)) #6
  br label %cond.end.316

cond.end.316:                                     ; preds = %cond.false.313, %if.end.311
  %cond317 = phi i32 [ %220, %if.end.311 ], [ %call315, %cond.false.313 ]
  store i32 %cond317, i32* %tmp264, !tbaa !5
  %222 = bitcast i64* %__s2_len263 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %222) #2
  %223 = bitcast i64* %__s1_len261 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %223) #2
  %224 = load i32, i32* %tmp264, !tbaa !5
  %cmp318 = icmp ne i32 %224, 0
  br i1 %cmp318, label %if.then.320, label %if.end.321

if.then.320:                                      ; preds = %cond.end.316
  store i32 -15, i32* %ecode, align 4, !tbaa !5
  br label %pmediae

if.end.321:                                       ; preds = %cond.end.316, %cond.end.255, %cond.end.194, %cond.end.133, %cond.end
  br label %if.end.322

if.end.322:                                       ; preds = %if.end.321
  br label %sw.epilog.329

sw.default.323:                                   ; preds = %sw.epilog
  %225 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %225, i32* %ecode, align 4, !tbaa !5
  br label %pmediae

pmediae:                                          ; preds = %sw.default.323, %if.then.320, %if.then.28
  %226 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs324 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %226, i32 0, i32 0
  %227 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs324, align 8, !tbaa !99
  %signal_error325 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %227, i32 0, i32 7
  %228 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error325, align 8, !tbaa !101
  %229 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %230 = load i8*, i8** %param_name, align 8, !tbaa !1
  %231 = load i32, i32* %ecode, align 4, !tbaa !5
  %call326 = call i32 %228(%struct.gs_param_list_s* %229, i8* %230, i32 %231) #5
  br label %sw.bb.327

sw.bb.327:                                        ; preds = %sw.epilog, %pmediae
  %data328 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %pmedia, i32 0, i32 0
  store i8* null, i8** %data328, align 8, !tbaa !87
  br label %sw.epilog.329

sw.epilog.329:                                    ; preds = %sw.bb.327, %if.end.322
  %232 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.98, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %call330 = call i32 @param_read_string(%struct.gs_param_list_s* %232, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.98, i32 0, i32 0), %struct.gs_param_string_s* %usern) #5
  store i32 %call330, i32* %code, align 4, !tbaa !5
  switch i32 %call330, label %sw.default.356 [
    i32 0, label %sw.bb.331
    i32 1, label %sw.bb.360
  ]

sw.bb.331:                                        ; preds = %sw.epilog.329
  %size332 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %usern, i32 0, i32 1
  %233 = load i32, i32* %size332, align 4, !tbaa !89
  %cmp333 = icmp ugt i32 %233, 12
  br i1 %cmp333, label %if.then.335, label %if.else.336

if.then.335:                                      ; preds = %sw.bb.331
  store i32 -13, i32* %ecode, align 4, !tbaa !5
  br label %userne

if.else.336:                                      ; preds = %sw.bb.331
  %234 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %234) #2
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else.336
  %235 = load i32, i32* %i, align 4, !tbaa !5
  %size338 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %usern, i32 0, i32 1
  %236 = load i32, i32* %size338, align 4, !tbaa !89
  %cmp339 = icmp ult i32 %235, %236
  br i1 %cmp339, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %237 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %237 to i64
  %data341 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %usern, i32 0, i32 0
  %238 = load i8*, i8** %data341, align 8, !tbaa !87
  %arrayidx342 = getelementptr inbounds i8, i8* %238, i64 %idxprom
  %239 = load i8, i8* %arrayidx342, align 1, !tbaa !58
  %conv343 = zext i8 %239 to i32
  %cmp344 = icmp slt i32 %conv343, 32
  br i1 %cmp344, label %if.then.353, label %lor.lhs.false.346

lor.lhs.false.346:                                ; preds = %for.body
  %240 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom347 = sext i32 %240 to i64
  %data348 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %usern, i32 0, i32 0
  %241 = load i8*, i8** %data348, align 8, !tbaa !87
  %arrayidx349 = getelementptr inbounds i8, i8* %241, i64 %idxprom347
  %242 = load i8, i8* %arrayidx349, align 1, !tbaa !58
  %conv350 = zext i8 %242 to i32
  %cmp351 = icmp sgt i32 %conv350, 126
  br i1 %cmp351, label %if.then.353, label %if.end.354

if.then.353:                                      ; preds = %lor.lhs.false.346, %for.body
  store i32 -15, i32* %ecode, align 4, !tbaa !5
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup

if.end.354:                                       ; preds = %lor.lhs.false.346
  br label %for.inc

for.inc:                                          ; preds = %if.end.354
  %243 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %243, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.353, %for.end
  %244 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %244) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.593 [
    i32 0, label %cleanup.cont
    i32 7, label %userne
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.355

if.end.355:                                       ; preds = %cleanup.cont
  br label %sw.epilog.362

sw.default.356:                                   ; preds = %sw.epilog.329
  %245 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %245, i32* %ecode, align 4, !tbaa !5
  br label %userne

userne:                                           ; preds = %sw.default.356, %cleanup, %if.then.335
  %246 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs357 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %246, i32 0, i32 0
  %247 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs357, align 8, !tbaa !99
  %signal_error358 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %247, i32 0, i32 7
  %248 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error358, align 8, !tbaa !101
  %249 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %250 = load i8*, i8** %param_name, align 8, !tbaa !1
  %251 = load i32, i32* %ecode, align 4, !tbaa !5
  %call359 = call i32 %248(%struct.gs_param_list_s* %249, i8* %250, i32 %251) #5
  br label %sw.bb.360

sw.bb.360:                                        ; preds = %sw.epilog.329, %userne
  %data361 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %usern, i32 0, i32 0
  store i8* null, i8** %data361, align 8, !tbaa !87
  br label %sw.epilog.362

sw.epilog.362:                                    ; preds = %sw.bb.360, %if.end.355
  %252 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.89, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %call363 = call i32 @param_read_bool(%struct.gs_param_list_s* %252, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.89, i32 0, i32 0), i32* %tum) #5
  store i32 %call363, i32* %code, align 4, !tbaa !5
  %cmp364 = icmp slt i32 %call363, 0
  br i1 %cmp364, label %if.then.366, label %if.end.370

if.then.366:                                      ; preds = %sw.epilog.362
  %253 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs367 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %253, i32 0, i32 0
  %254 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs367, align 8, !tbaa !99
  %signal_error368 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %254, i32 0, i32 7
  %255 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error368, align 8, !tbaa !101
  %256 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %257 = load i8*, i8** %param_name, align 8, !tbaa !1
  %258 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %258, i32* %ecode, align 4, !tbaa !5
  %call369 = call i32 %255(%struct.gs_param_list_s* %256, i8* %257, i32 %258) #5
  br label %if.end.370

if.end.370:                                       ; preds = %if.then.366, %sw.epilog.362
  %259 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %call371 = call i32 @param_read_int(%struct.gs_param_list_s* %259, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90, i32 0, i32 0), i32* %nup) #5
  store i32 %call371, i32* %code, align 4, !tbaa !5
  switch i32 %call371, label %sw.default.384 [
    i32 0, label %sw.bb.372
    i32 1, label %sw.epilog.388
  ]

sw.bb.372:                                        ; preds = %if.end.370
  %260 = load i32, i32* %nup, align 4, !tbaa !5
  %cmp373 = icmp ne i32 %260, 1
  br i1 %cmp373, label %land.lhs.true.375, label %if.else.382

land.lhs.true.375:                                ; preds = %sw.bb.372
  %261 = load i32, i32* %nup, align 4, !tbaa !5
  %cmp376 = icmp ne i32 %261, 2
  br i1 %cmp376, label %land.lhs.true.378, label %if.else.382

land.lhs.true.378:                                ; preds = %land.lhs.true.375
  %262 = load i32, i32* %nup, align 4, !tbaa !5
  %cmp379 = icmp ne i32 %262, 4
  br i1 %cmp379, label %if.then.381, label %if.else.382

if.then.381:                                      ; preds = %land.lhs.true.378
  store i32 -15, i32* %ecode, align 4, !tbaa !5
  br label %if.end.383

if.else.382:                                      ; preds = %land.lhs.true.378, %land.lhs.true.375, %sw.bb.372
  br label %sw.epilog.388

if.end.383:                                       ; preds = %if.then.381
  br label %nupe

sw.default.384:                                   ; preds = %if.end.370
  %263 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %263, i32* %ecode, align 4, !tbaa !5
  br label %nupe

nupe:                                             ; preds = %sw.default.384, %if.end.383
  %264 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs385 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %264, i32 0, i32 0
  %265 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs385, align 8, !tbaa !99
  %signal_error386 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %265, i32 0, i32 7
  %266 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error386, align 8, !tbaa !101
  %267 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %268 = load i8*, i8** %param_name, align 8, !tbaa !1
  %269 = load i32, i32* %ecode, align 4, !tbaa !5
  %call387 = call i32 %266(%struct.gs_param_list_s* %267, i8* %268, i32 %269) #5
  br label %sw.epilog.388

sw.epilog.388:                                    ; preds = %nupe, %if.end.370, %if.else.382
  %270 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.91, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %call389 = call i32 @param_read_bool(%struct.gs_param_list_s* %270, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.91, i32 0, i32 0), i32* %pjl) #5
  store i32 %call389, i32* %code, align 4, !tbaa !5
  %cmp390 = icmp slt i32 %call389, 0
  br i1 %cmp390, label %if.then.392, label %if.end.396

if.then.392:                                      ; preds = %sw.epilog.388
  %271 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs393 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %271, i32 0, i32 0
  %272 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs393, align 8, !tbaa !99
  %signal_error394 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %272, i32 0, i32 7
  %273 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error394, align 8, !tbaa !101
  %274 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %275 = load i8*, i8** %param_name, align 8, !tbaa !1
  %276 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %276, i32* %ecode, align 4, !tbaa !5
  %call395 = call i32 %273(%struct.gs_param_list_s* %274, i8* %275, i32 %276) #5
  br label %if.end.396

if.end.396:                                       ; preds = %if.then.392, %sw.epilog.388
  %277 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.92, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %call397 = call i32 @param_read_int(%struct.gs_param_list_s* %277, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.92, i32 0, i32 0), i32* %toner_density) #5
  store i32 %call397, i32* %code, align 4, !tbaa !5
  switch i32 %call397, label %sw.default.407 [
    i32 0, label %sw.bb.398
    i32 1, label %sw.epilog.411
  ]

sw.bb.398:                                        ; preds = %if.end.396
  %278 = load i32, i32* %toner_density, align 4, !tbaa !5
  %cmp399 = icmp slt i32 %278, 0
  br i1 %cmp399, label %if.then.404, label %lor.lhs.false.401

lor.lhs.false.401:                                ; preds = %sw.bb.398
  %279 = load i32, i32* %toner_density, align 4, !tbaa !5
  %cmp402 = icmp sgt i32 %279, 8
  br i1 %cmp402, label %if.then.404, label %if.else.405

if.then.404:                                      ; preds = %lor.lhs.false.401, %sw.bb.398
  store i32 -15, i32* %ecode, align 4, !tbaa !5
  br label %if.end.406

if.else.405:                                      ; preds = %lor.lhs.false.401
  br label %sw.epilog.411

if.end.406:                                       ; preds = %if.then.404
  br label %tden

sw.default.407:                                   ; preds = %if.end.396
  %280 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %280, i32* %ecode, align 4, !tbaa !5
  br label %tden

tden:                                             ; preds = %sw.default.407, %if.end.406
  %281 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs408 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %281, i32 0, i32 0
  %282 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs408, align 8, !tbaa !99
  %signal_error409 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %282, i32 0, i32 7
  %283 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error409, align 8, !tbaa !101
  %284 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %285 = load i8*, i8** %param_name, align 8, !tbaa !1
  %286 = load i32, i32* %ecode, align 4, !tbaa !5
  %call410 = call i32 %283(%struct.gs_param_list_s* %284, i8* %285, i32 %286) #5
  br label %sw.epilog.411

sw.epilog.411:                                    ; preds = %tden, %if.end.396, %if.else.405
  %287 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %toner_saving_set412 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %287, i32 0, i32 72
  %288 = load i32, i32* %toner_saving_set412, align 4, !tbaa !85
  %cmp413 = icmp sge i32 %288, 0
  br i1 %cmp413, label %if.then.415, label %if.end.428

if.then.415:                                      ; preds = %sw.epilog.411
  %289 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.93, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %call416 = call i32 @param_read_bool(%struct.gs_param_list_s* %289, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.93, i32 0, i32 0), i32* %toner_saving) #5
  store i32 %call416, i32* %code, align 4, !tbaa !5
  switch i32 %call416, label %sw.default.418 [
    i32 0, label %sw.bb.417
    i32 1, label %sw.epilog.427
  ]

sw.bb.417:                                        ; preds = %if.then.415
  store i32 1, i32* %toner_saving_set, align 4, !tbaa !5
  br label %sw.epilog.427

sw.default.418:                                   ; preds = %if.then.415
  %290 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %291 = load i8*, i8** %param_name, align 8, !tbaa !1
  %call419 = call i32 @param_read_null(%struct.gs_param_list_s* %290, i8* %291) #5
  store i32 %call419, i32* %code, align 4, !tbaa !5
  %cmp420 = icmp eq i32 %call419, 0
  br i1 %cmp420, label %if.then.422, label %if.end.423

if.then.422:                                      ; preds = %sw.default.418
  store i32 0, i32* %toner_saving_set, align 4, !tbaa !5
  br label %sw.epilog.427

if.end.423:                                       ; preds = %sw.default.418
  %292 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %292, i32* %ecode, align 4, !tbaa !5
  %293 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs424 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %293, i32 0, i32 0
  %294 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs424, align 8, !tbaa !99
  %signal_error425 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %294, i32 0, i32 7
  %295 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error425, align 8, !tbaa !101
  %296 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %297 = load i8*, i8** %param_name, align 8, !tbaa !1
  %298 = load i32, i32* %ecode, align 4, !tbaa !5
  %call426 = call i32 %295(%struct.gs_param_list_s* %296, i8* %297, i32 %298) #5
  br label %sw.epilog.427

sw.epilog.427:                                    ; preds = %if.end.423, %if.then.415, %if.then.422, %sw.bb.417
  br label %if.end.428

if.end.428:                                       ; preds = %sw.epilog.427, %sw.epilog.411
  %299 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %Duplex_set = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %299, i32 0, i32 85
  %300 = load i32, i32* %Duplex_set, align 4, !tbaa !86
  %cmp429 = icmp sge i32 %300, 0
  br i1 %cmp429, label %if.then.431, label %if.end.444

if.then.431:                                      ; preds = %if.end.428
  %301 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.94, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %call432 = call i32 @param_read_bool(%struct.gs_param_list_s* %301, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.94, i32 0, i32 0), i32* %duplex) #5
  store i32 %call432, i32* %code, align 4, !tbaa !5
  switch i32 %call432, label %sw.default.434 [
    i32 0, label %sw.bb.433
    i32 1, label %sw.epilog.443
  ]

sw.bb.433:                                        ; preds = %if.then.431
  store i32 1, i32* %duplex_set, align 4, !tbaa !5
  br label %sw.epilog.443

sw.default.434:                                   ; preds = %if.then.431
  %302 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %303 = load i8*, i8** %param_name, align 8, !tbaa !1
  %call435 = call i32 @param_read_null(%struct.gs_param_list_s* %302, i8* %303) #5
  store i32 %call435, i32* %code, align 4, !tbaa !5
  %cmp436 = icmp eq i32 %call435, 0
  br i1 %cmp436, label %if.then.438, label %if.end.439

if.then.438:                                      ; preds = %sw.default.434
  store i32 0, i32* %duplex_set, align 4, !tbaa !5
  br label %sw.epilog.443

if.end.439:                                       ; preds = %sw.default.434
  %304 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %304, i32* %ecode, align 4, !tbaa !5
  %305 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs440 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %305, i32 0, i32 0
  %306 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs440, align 8, !tbaa !99
  %signal_error441 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %306, i32 0, i32 7
  %307 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error441, align 8, !tbaa !101
  %308 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %309 = load i8*, i8** %param_name, align 8, !tbaa !1
  %310 = load i32, i32* %ecode, align 4, !tbaa !5
  %call442 = call i32 %307(%struct.gs_param_list_s* %308, i8* %309, i32 %310) #5
  br label %sw.epilog.443

sw.epilog.443:                                    ; preds = %if.end.439, %if.then.431, %if.then.438, %sw.bb.433
  br label %if.end.444

if.end.444:                                       ; preds = %sw.epilog.443, %if.end.428
  %311 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.95, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %call445 = call i32 @param_read_bool(%struct.gs_param_list_s* %311, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.95, i32 0, i32 0), i32* %fontdl) #5
  store i32 %call445, i32* %code, align 4, !tbaa !5
  %cmp446 = icmp slt i32 %call445, 0
  br i1 %cmp446, label %if.then.448, label %if.end.452

if.then.448:                                      ; preds = %if.end.444
  %312 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs449 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %312, i32 0, i32 0
  %313 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs449, align 8, !tbaa !99
  %signal_error450 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %313, i32 0, i32 7
  %314 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error450, align 8, !tbaa !101
  %315 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %316 = load i8*, i8** %param_name, align 8, !tbaa !1
  %317 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %317, i32* %ecode, align 4, !tbaa !5
  %call451 = call i32 %314(%struct.gs_param_list_s* %315, i8* %316, i32 %317) #5
  br label %if.end.452

if.end.452:                                       ; preds = %if.then.448, %if.end.444
  %318 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.96, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %call453 = call i32 @param_read_bool(%struct.gs_param_list_s* %318, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.96, i32 0, i32 0), i32* %faceup) #5
  store i32 %call453, i32* %code, align 4, !tbaa !5
  %cmp454 = icmp slt i32 %call453, 0
  br i1 %cmp454, label %if.then.456, label %if.end.460

if.then.456:                                      ; preds = %if.end.452
  %319 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs457 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %319, i32 0, i32 0
  %320 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs457, align 8, !tbaa !99
  %signal_error458 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %320, i32 0, i32 7
  %321 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error458, align 8, !tbaa !101
  %322 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %323 = load i8*, i8** %param_name, align 8, !tbaa !1
  %324 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %324, i32* %ecode, align 4, !tbaa !5
  %call459 = call i32 %321(%struct.gs_param_list_s* %322, i8* %323, i32 %324) #5
  br label %if.end.460

if.end.460:                                       ; preds = %if.then.456, %if.end.452
  %325 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.99, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %call461 = call i32 @param_read_int(%struct.gs_param_list_s* %325, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.99, i32 0, i32 0), i32* %bpp) #5
  store i32 %call461, i32* %code, align 4, !tbaa !5
  switch i32 %call461, label %sw.default.471 [
    i32 0, label %sw.bb.462
    i32 1, label %sw.epilog.475
  ]

sw.bb.462:                                        ; preds = %if.end.460
  %326 = load i32, i32* %bpp, align 4, !tbaa !5
  %cmp463 = icmp ne i32 %326, 8
  br i1 %cmp463, label %land.lhs.true.465, label %if.else.469

land.lhs.true.465:                                ; preds = %sw.bb.462
  %327 = load i32, i32* %bpp, align 4, !tbaa !5
  %cmp466 = icmp ne i32 %327, 24
  br i1 %cmp466, label %if.then.468, label %if.else.469

if.then.468:                                      ; preds = %land.lhs.true.465
  store i32 -15, i32* %ecode, align 4, !tbaa !5
  br label %if.end.470

if.else.469:                                      ; preds = %land.lhs.true.465, %sw.bb.462
  br label %sw.epilog.475

if.end.470:                                       ; preds = %if.then.468
  br label %bppe

sw.default.471:                                   ; preds = %if.end.460
  %328 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %328, i32* %ecode, align 4, !tbaa !5
  br label %bppe

bppe:                                             ; preds = %sw.default.471, %if.end.470
  %329 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs472 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %329, i32 0, i32 0
  %330 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs472, align 8, !tbaa !99
  %signal_error473 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %330, i32 0, i32 7
  %331 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error473, align 8, !tbaa !101
  %332 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %333 = load i8*, i8** %param_name, align 8, !tbaa !1
  %334 = load i32, i32* %ecode, align 4, !tbaa !5
  %call474 = call i32 %331(%struct.gs_param_list_s* %332, i8* %333, i32 %334) #5
  br label %sw.epilog.475

sw.epilog.475:                                    ; preds = %bppe, %if.end.460, %if.else.469
  %335 = load i32, i32* %bpp, align 4, !tbaa !5
  %cmp476 = icmp ne i32 %335, 0
  br i1 %cmp476, label %if.then.478, label %if.end.510

if.then.478:                                      ; preds = %sw.epilog.475
  %336 = load i32, i32* %bpp, align 4, !tbaa !5
  %conv479 = trunc i32 %336 to i16
  %337 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info480 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %337, i32 0, i32 11
  %depth481 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info480, i32 0, i32 3
  store i16 %conv479, i16* %depth481, align 2, !tbaa !83
  %338 = load i32, i32* %bpp, align 4, !tbaa !5
  %cmp482 = icmp eq i32 %338, 8
  %cond484 = select i1 %cmp482, i32 1, i32 3
  %339 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info485 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %339, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info485, i32 0, i32 1
  store i32 %cond484, i32* %num_components, align 4, !tbaa !103
  %340 = load i32, i32* %bpp, align 4, !tbaa !5
  %cmp486 = icmp sgt i32 %340, 8
  %cond488 = select i1 %cmp486, i32 255, i32 1000
  %341 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info489 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %341, i32 0, i32 11
  %max_gray = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info489, i32 0, i32 5
  store i32 %cond488, i32* %max_gray, align 4, !tbaa !104
  %342 = load i32, i32* %bpp, align 4, !tbaa !5
  %cmp490 = icmp sgt i32 %342, 8
  %cond492 = select i1 %cmp490, i32 255, i32 1000
  %343 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info493 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %343, i32 0, i32 11
  %max_color = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info493, i32 0, i32 6
  store i32 %cond492, i32* %max_color, align 4, !tbaa !105
  %344 = load i32, i32* %bpp, align 4, !tbaa !5
  %cmp494 = icmp sgt i32 %344, 8
  %cond496 = select i1 %cmp494, i32 256, i32 5
  %345 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info497 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %345, i32 0, i32 11
  %dither_grays = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info497, i32 0, i32 7
  store i32 %cond496, i32* %dither_grays, align 4, !tbaa !106
  %346 = load i32, i32* %bpp, align 4, !tbaa !5
  %cmp498 = icmp sgt i32 %346, 8
  %cond500 = select i1 %cmp498, i32 256, i32 2
  %347 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info501 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %347, i32 0, i32 11
  %dither_colors = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info501, i32 0, i32 8
  store i32 %cond500, i32* %dither_colors, align 4, !tbaa !107
  %348 = load i32, i32* %bpp, align 4, !tbaa !5
  %cmp502 = icmp eq i32 %348, 8
  %cond504 = select i1 %cmp502, i64 (%struct.gx_device_s*, i16*)* @gx_default_gray_map_rgb_color, i64 (%struct.gx_device_s*, i16*)* @gx_default_rgb_map_rgb_color
  %349 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %procs505 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %349, i32 0, i32 42
  %map_rgb_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs505, i32 0, i32 5
  store i64 (%struct.gx_device_s*, i16*)* %cond504, i64 (%struct.gx_device_s*, i16*)** %map_rgb_color, align 8, !tbaa !108
  %350 = load i32, i32* %bpp, align 4, !tbaa !5
  %cmp506 = icmp eq i32 %350, 8
  %cond508 = select i1 %cmp506, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_gray_map_color_rgb, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_rgb_map_color_rgb
  %351 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %procs509 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %351, i32 0, i32 42
  %map_color_rgb = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs509, i32 0, i32 6
  store i32 (%struct.gx_device_s*, i64, i16*)* %cond508, i32 (%struct.gx_device_s*, i64, i16*)** %map_color_rgb, align 8, !tbaa !109
  br label %if.end.510

if.end.510:                                       ; preds = %if.then.478, %sw.epilog.475
  %352 = load i32, i32* %ecode, align 4, !tbaa !5
  %cmp511 = icmp slt i32 %352, 0
  br i1 %cmp511, label %if.then.513, label %if.end.514

if.then.513:                                      ; preds = %if.end.510
  %353 = load i32, i32* %ecode, align 4, !tbaa !5
  store i32 %353, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.593

if.end.514:                                       ; preds = %if.end.510
  %354 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %355 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call515 = call i32 @gdev_vector_put_params(%struct.gx_device_s* %354, %struct.gs_param_list_s* %355) #5
  store i32 %call515, i32* %code, align 4, !tbaa !5
  %356 = load i32, i32* %code, align 4, !tbaa !5
  %cmp516 = icmp slt i32 %356, 0
  br i1 %cmp516, label %if.then.518, label %if.end.519

if.then.518:                                      ; preds = %if.end.514
  %357 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %357, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.593

if.end.519:                                       ; preds = %if.end.514
  %358 = load i32, i32* %mf, align 4, !tbaa !5
  %359 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %ManualFeed520 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %359, i32 0, i32 83
  store i32 %358, i32* %ManualFeed520, align 4, !tbaa !91
  %360 = load i32, i32* %cass, align 4, !tbaa !5
  %361 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %cassetFeed521 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %361, i32 0, i32 67
  store i32 %360, i32* %cassetFeed521, align 4, !tbaa !92
  %362 = load i32, i32* %tum, align 4, !tbaa !5
  %363 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %Tumble522 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %363, i32 0, i32 86
  store i32 %362, i32* %Tumble522, align 4, !tbaa !93
  %364 = load i32, i32* %nup, align 4, !tbaa !5
  %365 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %nup523 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %365, i32 0, i32 79
  store i32 %364, i32* %nup523, align 4, !tbaa !94
  %366 = load i32, i32* %pjl, align 4, !tbaa !5
  %367 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %pjl524 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %367, i32 0, i32 69
  store i32 %366, i32* %pjl524, align 4, !tbaa !67
  %368 = load i32, i32* %toner_density, align 4, !tbaa !5
  %369 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %toner_density525 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %369, i32 0, i32 70
  store i32 %368, i32* %toner_density525, align 4, !tbaa !95
  %370 = load i32, i32* %toner_saving, align 4, !tbaa !5
  %371 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %toner_saving526 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %371, i32 0, i32 71
  store i32 %370, i32* %toner_saving526, align 4, !tbaa !96
  %372 = load i32, i32* %toner_saving_set, align 4, !tbaa !5
  %373 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %toner_saving_set527 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %373, i32 0, i32 72
  store i32 %372, i32* %toner_saving_set527, align 4, !tbaa !85
  %374 = load i32, i32* %fontdl, align 4, !tbaa !5
  %375 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %FontDL528 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %375, i32 0, i32 97
  store i32 %374, i32* %FontDL528, align 4, !tbaa !97
  %376 = load i32, i32* %faceup, align 4, !tbaa !5
  %377 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %faceup529 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %377, i32 0, i32 80
  store i32 %376, i32* %faceup529, align 4, !tbaa !98
  %378 = load i32, i32* %duplex_set, align 4, !tbaa !5
  %cmp530 = icmp sge i32 %378, 0
  br i1 %cmp530, label %if.then.532, label %if.end.534

if.then.532:                                      ; preds = %if.end.519
  %379 = load i32, i32* %duplex, align 4, !tbaa !5
  %380 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %Duplex = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %380, i32 0, i32 84
  store i32 %379, i32* %Duplex, align 4, !tbaa !110
  %381 = load i32, i32* %duplex_set, align 4, !tbaa !5
  %382 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %Duplex_set533 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %382, i32 0, i32 85
  store i32 %381, i32* %Duplex_set533, align 4, !tbaa !86
  br label %if.end.534

if.end.534:                                       ; preds = %if.then.532, %if.end.519
  %data535 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %pmedia, i32 0, i32 0
  %383 = load i8*, i8** %data535, align 8, !tbaa !87
  %cmp536 = icmp ne i8* %383, null
  br i1 %cmp536, label %land.lhs.true.538, label %if.end.557

land.lhs.true.538:                                ; preds = %if.end.534
  %data539 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %pmedia, i32 0, i32 0
  %384 = load i8*, i8** %data539, align 8, !tbaa !87
  %size540 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %pmedia, i32 0, i32 1
  %385 = load i32, i32* %size540, align 4, !tbaa !89
  %386 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %mediaType = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %386, i32 0, i32 81
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %mediaType, i32 0, i32 0
  %387 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %mediaType541 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %387, i32 0, i32 81
  %arraydecay542 = getelementptr inbounds [32 x i8], [32 x i8]* %mediaType541, i32 0, i32 0
  %call543 = call i64 @strlen(i8* %arraydecay542) #7
  %conv544 = trunc i64 %call543 to i32
  %call545 = call i32 @bytes_compare(i8* %384, i32 %385, i8* %arraydecay, i32 %conv544) #5
  %tobool = icmp ne i32 %call545, 0
  br i1 %tobool, label %if.then.546, label %if.end.557

if.then.546:                                      ; preds = %land.lhs.true.538
  %388 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %mediaType547 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %388, i32 0, i32 81
  %arraydecay548 = getelementptr inbounds [32 x i8], [32 x i8]* %mediaType547, i32 0, i32 0
  %data549 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %pmedia, i32 0, i32 0
  %389 = load i8*, i8** %data549, align 8, !tbaa !87
  %size550 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %pmedia, i32 0, i32 1
  %390 = load i32, i32* %size550, align 4, !tbaa !89
  %conv551 = zext i32 %390 to i64
  %call552 = call i8* @memcpy(i8* %arraydecay548, i8* %389, i64 %conv551) #6
  %size553 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %pmedia, i32 0, i32 1
  %391 = load i32, i32* %size553, align 4, !tbaa !89
  %idxprom554 = zext i32 %391 to i64
  %392 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %mediaType555 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %392, i32 0, i32 81
  %arrayidx556 = getelementptr inbounds [32 x i8], [32 x i8]* %mediaType555, i32 0, i64 %idxprom554
  store i8 0, i8* %arrayidx556, align 1, !tbaa !58
  br label %if.end.557

if.end.557:                                       ; preds = %if.then.546, %land.lhs.true.538, %if.end.534
  %data558 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %usern, i32 0, i32 0
  %393 = load i8*, i8** %data558, align 8, !tbaa !87
  %cmp559 = icmp ne i8* %393, null
  br i1 %cmp559, label %land.lhs.true.561, label %if.end.582

land.lhs.true.561:                                ; preds = %if.end.557
  %data562 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %usern, i32 0, i32 0
  %394 = load i8*, i8** %data562, align 8, !tbaa !87
  %size563 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %usern, i32 0, i32 1
  %395 = load i32, i32* %size563, align 4, !tbaa !89
  %396 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %Username = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %396, i32 0, i32 68
  %arraydecay564 = getelementptr inbounds [12 x i8], [12 x i8]* %Username, i32 0, i32 0
  %397 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %Username565 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %397, i32 0, i32 68
  %arraydecay566 = getelementptr inbounds [12 x i8], [12 x i8]* %Username565, i32 0, i32 0
  %call567 = call i64 @strlen(i8* %arraydecay566) #7
  %conv568 = trunc i64 %call567 to i32
  %call569 = call i32 @bytes_compare(i8* %394, i32 %395, i8* %arraydecay564, i32 %conv568) #5
  %tobool570 = icmp ne i32 %call569, 0
  br i1 %tobool570, label %if.then.571, label %if.end.582

if.then.571:                                      ; preds = %land.lhs.true.561
  %398 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %Username572 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %398, i32 0, i32 68
  %arraydecay573 = getelementptr inbounds [12 x i8], [12 x i8]* %Username572, i32 0, i32 0
  %data574 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %usern, i32 0, i32 0
  %399 = load i8*, i8** %data574, align 8, !tbaa !87
  %size575 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %usern, i32 0, i32 1
  %400 = load i32, i32* %size575, align 4, !tbaa !89
  %conv576 = zext i32 %400 to i64
  %call577 = call i8* @memcpy(i8* %arraydecay573, i8* %399, i64 %conv576) #6
  %size578 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %usern, i32 0, i32 1
  %401 = load i32, i32* %size578, align 4, !tbaa !89
  %idxprom579 = zext i32 %401 to i64
  %402 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %Username580 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %402, i32 0, i32 68
  %arrayidx581 = getelementptr inbounds [12 x i8], [12 x i8]* %Username580, i32 0, i64 %idxprom579
  store i8 0, i8* %arrayidx581, align 1, !tbaa !58
  br label %if.end.582

if.end.582:                                       ; preds = %if.then.571, %land.lhs.true.561, %if.end.557
  %403 = load i32, i32* %bpp, align 4, !tbaa !5
  %cmp583 = icmp ne i32 %403, 0
  br i1 %cmp583, label %land.lhs.true.585, label %if.end.592

land.lhs.true.585:                                ; preds = %if.end.582
  %404 = load i32, i32* %bpp, align 4, !tbaa !5
  %405 = load i32, i32* %old_bpp, align 4, !tbaa !5
  %cmp586 = icmp ne i32 %404, %405
  br i1 %cmp586, label %land.lhs.true.588, label %if.end.592

land.lhs.true.588:                                ; preds = %land.lhs.true.585
  %406 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %is_open = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %406, i32 0, i32 9
  %407 = load i32, i32* %is_open, align 4, !tbaa !111
  %tobool589 = icmp ne i32 %407, 0
  br i1 %tobool589, label %if.then.590, label %if.end.592

if.then.590:                                      ; preds = %land.lhs.true.588
  %408 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call591 = call i32 @gs_closedevice(%struct.gx_device_s* %408) #5
  store i32 %call591, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.593

if.end.592:                                       ; preds = %land.lhs.true.588, %land.lhs.true.585, %if.end.582
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.593

cleanup.593:                                      ; preds = %if.end.592, %if.then.590, %if.then.518, %if.then.513, %cleanup
  %409 = bitcast i32* %bpp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %409) #2
  %410 = bitcast i32* %old_bpp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %410) #2
  %411 = bitcast i32* %duplex_set to i8*
  call void @llvm.lifetime.end(i64 4, i8* %411) #2
  %412 = bitcast i32* %duplex to i8*
  call void @llvm.lifetime.end(i64 4, i8* %412) #2
  %413 = bitcast i32* %faceup to i8*
  call void @llvm.lifetime.end(i64 4, i8* %413) #2
  %414 = bitcast i32* %fontdl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %414) #2
  %415 = bitcast i32* %toner_saving_set to i8*
  call void @llvm.lifetime.end(i64 4, i8* %415) #2
  %416 = bitcast i32* %toner_saving to i8*
  call void @llvm.lifetime.end(i64 4, i8* %416) #2
  %417 = bitcast i32* %toner_density to i8*
  call void @llvm.lifetime.end(i64 4, i8* %417) #2
  %418 = bitcast i32* %pjl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %418) #2
  %419 = bitcast i32* %nup to i8*
  call void @llvm.lifetime.end(i64 4, i8* %419) #2
  %420 = bitcast i32* %tum to i8*
  call void @llvm.lifetime.end(i64 4, i8* %420) #2
  %421 = bitcast %struct.gs_param_string_s* %usern to i8*
  call void @llvm.lifetime.end(i64 16, i8* %421) #2
  %422 = bitcast i32* %cass to i8*
  call void @llvm.lifetime.end(i64 4, i8* %422) #2
  %423 = bitcast i32* %mf to i8*
  call void @llvm.lifetime.end(i64 4, i8* %423) #2
  %424 = bitcast %struct.gs_param_string_s* %pmedia to i8*
  call void @llvm.lifetime.end(i64 16, i8* %424) #2
  %425 = bitcast i8** %param_name to i8*
  call void @llvm.lifetime.end(i64 8, i8* %425) #2
  %426 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %426) #2
  %427 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %427) #2
  %428 = bitcast %struct.gx_device_lips4v_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %428) #2
  %429 = load i32, i32* %retval
  ret i32 %429
}

declare %struct.gx_device_s* @gx_page_device_get_page_device(%struct.gx_device_s*) #1

declare i32 @gdev_vector_fill_path(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*) #1

declare i32 @gdev_vector_stroke_path(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*) #1

; Function Attrs: nounwind uwtable
define internal i32 @lips4v_fill_mask(%struct.gx_device_s* %dev, i8* %data, i32 %data_x, i32 %raster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h, %struct.gx_device_color_s* %pdcolor, i32 %depth, i32 %lop, %struct.gx_clip_path_s* %pcpath) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %data.addr = alloca i8*, align 8
  %data_x.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %depth.addr = alloca i32, align 4
  %lop.addr = alloca i32, align 4
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %vdev = alloca %struct.gx_device_vector_s*, align 8
  %pdev = alloca %struct.gx_device_lips4v_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %dpi = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %i = alloca i32, align 4
  %width_bytes = alloca i32, align 4
  %num_bytes = alloca i32, align 4
  %buf = alloca i8*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %data_x, i32* %data_x.addr, align 4, !tbaa !5
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !5
  store i64 %id, i64* %id.addr, align 8, !tbaa !68
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store i32 %depth, i32* %depth.addr, align 4, !tbaa !5
  store i32 %lop, i32* %lop.addr, align 4, !tbaa !5
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_vector_s** %vdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_vector_s*
  store %struct.gx_device_vector_s* %2, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_lips4v_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gx_device_s* %4 to %struct.gx_device_lips4v_s*
  store %struct.gx_device_lips4v_s* %5, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %6 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %call = call %struct.stream_s* @gdev_vector_stream(%struct.gx_device_vector_s* %7) #5
  store %struct.stream_s* %call, %struct.stream_s** %s, align 8, !tbaa !1
  %8 = bitcast i32* %dpi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %10 = load float, float* %arrayidx, align 4, !tbaa !69
  %conv = fptosi float %10 to i32
  store i32 %conv, i32* %dpi, align 4, !tbaa !5
  %11 = load i32, i32* %w.addr, align 4, !tbaa !5
  %cmp = icmp sle i32 %11, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %12 = load i32, i32* %h.addr, align 4, !tbaa !5
  %cmp2 = icmp sle i32 %12, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %13 = load i32, i32* %depth.addr, align 4, !tbaa !5
  %cmp4 = icmp sgt i32 %13, 1
  br i1 %cmp4, label %if.then.18, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %if.end
  %14 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %15 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %call7 = call i32 @gdev_vector_update_fill_color(%struct.gx_device_vector_s* %14, %struct.gs_imager_state_s* null, %struct.gx_device_color_s* %15) #5
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then.18, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %lor.lhs.false.6
  %16 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %17 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call11 = call i32 @gdev_vector_update_clip_path(%struct.gx_device_vector_s* %16, %struct.gx_clip_path_s* %17) #5
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.then.18, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %lor.lhs.false.10
  %18 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %19 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %call15 = call i32 @gdev_vector_update_log_op(%struct.gx_device_vector_s* %18, i32 %19) #5
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %lor.lhs.false.14, %lor.lhs.false.10, %lor.lhs.false.6, %if.end
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %21 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %22 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %23 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %24 = load i64, i64* %id.addr, align 8, !tbaa !68
  %25 = load i32, i32* %x.addr, align 4, !tbaa !5
  %26 = load i32, i32* %y.addr, align 4, !tbaa !5
  %27 = load i32, i32* %w.addr, align 4, !tbaa !5
  %28 = load i32, i32* %h.addr, align 4, !tbaa !5
  %29 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %30 = load i32, i32* %depth.addr, align 4, !tbaa !5
  %31 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %32 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call19 = call i32 @gx_default_fill_mask(%struct.gx_device_s* %20, i8* %21, i32 %22, i32 %23, i64 %24, i32 %25, i32 %26, i32 %27, i32 %28, %struct.gx_device_color_s* %29, i32 %30, i32 %31, %struct.gx_clip_path_s* %32) #5
  store i32 %call19, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.20:                                        ; preds = %lor.lhs.false.14
  %33 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %bbox_device = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %33, i32 0, i32 64
  %34 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bbox_device, align 8, !tbaa !112
  %procs = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %34, i32 0, i32 42
  %fill_mask = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 26
  %35 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)** %fill_mask, align 8, !tbaa !113
  %36 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %bbox_device21 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %36, i32 0, i32 64
  %37 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bbox_device21, align 8, !tbaa !112
  %38 = bitcast %struct.gx_device_bbox_s* %37 to %struct.gx_device_s*
  %39 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %40 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %41 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %42 = load i64, i64* %id.addr, align 8, !tbaa !68
  %43 = load i32, i32* %x.addr, align 4, !tbaa !5
  %44 = load i32, i32* %y.addr, align 4, !tbaa !5
  %45 = load i32, i32* %w.addr, align 4, !tbaa !5
  %46 = load i32, i32* %h.addr, align 4, !tbaa !5
  %47 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %48 = load i32, i32* %depth.addr, align 4, !tbaa !5
  %49 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %50 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call22 = call i32 %35(%struct.gx_device_s* %38, i8* %39, i32 %40, i32 %41, i64 %42, i32 %43, i32 %44, i32 %45, i32 %46, %struct.gx_device_color_s* %47, i32 %48, i32 %49, %struct.gx_clip_path_s* %50) #5
  %51 = load i64, i64* %id.addr, align 8, !tbaa !68
  %cmp23 = icmp ne i64 %51, 0
  br i1 %cmp23, label %land.lhs.true, label %if.end.33

land.lhs.true:                                    ; preds = %if.end.20
  %52 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %cmp25 = icmp eq i32 %52, 0
  br i1 %cmp25, label %if.then.27, label %if.end.33

if.then.27:                                       ; preds = %land.lhs.true
  %53 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %54 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %55 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %56 = load i64, i64* %id.addr, align 8, !tbaa !68
  %57 = load i32, i32* %x.addr, align 4, !tbaa !5
  %58 = load i32, i32* %y.addr, align 4, !tbaa !5
  %59 = load i32, i32* %w.addr, align 4, !tbaa !5
  %60 = load i32, i32* %h.addr, align 4, !tbaa !5
  %call28 = call i32 @lips4v_copy_text_char(%struct.gx_device_s* %53, i8* %54, i32 %55, i64 %56, i32 %57, i32 %58, i32 %59, i32 %60) #5
  %cmp29 = icmp sge i32 %call28, 0
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.then.27
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.32:                                        ; preds = %if.then.27
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %land.lhs.true, %if.end.20
  %61 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %TextMode = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %61, i32 0, i32 91
  %62 = load i32, i32* %TextMode, align 4, !tbaa !54
  %tobool = icmp ne i32 %62, 0
  br i1 %tobool, label %if.then.34, label %if.end.49

if.then.34:                                       ; preds = %if.end.33
  %63 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %63, i32 0, i32 5
  %w35 = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_write_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w35, i32 0, i32 1
  %64 = load i8*, i8** %ptr, align 8, !tbaa !55
  %65 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor36 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %65, i32 0, i32 5
  %w37 = bitcast %union.stream_cursor_s* %cursor36 to %struct.stream_cursor_write_s*
  %limit = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w37, i32 0, i32 2
  %66 = load i8*, i8** %limit, align 8, !tbaa !57
  %cmp38 = icmp uge i8* %64, %66
  br i1 %cmp38, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then.34
  %67 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor40 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %67, i32 0, i32 5
  %w41 = bitcast %union.stream_cursor_s* %cursor40 to %struct.stream_cursor_write_s*
  %ptr42 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w41, i32 0, i32 1
  %68 = load i8*, i8** %ptr42, align 8, !tbaa !55
  %incdec.ptr = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %incdec.ptr, i8** %ptr42, align 8, !tbaa !55
  %69 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor43 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %69, i32 0, i32 5
  %w44 = bitcast %union.stream_cursor_s* %cursor43 to %struct.stream_cursor_write_s*
  %ptr45 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w44, i32 0, i32 1
  %70 = load i8*, i8** %ptr45, align 8, !tbaa !55
  store i8 -101, i8* %70, align 1, !tbaa !58
  br label %cond.end

cond.false:                                       ; preds = %if.then.34
  %71 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call46 = call i32 @spputc(%struct.stream_s* %71, i8 zeroext -101) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call46, %cond.false ]
  %72 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call47 = call i32 @lputs(%struct.stream_s* %72, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i32 0, i32 0)) #5
  %73 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %TextMode48 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %73, i32 0, i32 91
  store i32 0, i32* %TextMode48, align 4, !tbaa !54
  br label %if.end.49

if.end.49:                                        ; preds = %cond.end, %if.end.33
  %74 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %MaskState = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %74, i32 0, i32 90
  %75 = load i32, i32* %MaskState, align 4, !tbaa !74
  %cmp50 = icmp ne i32 %75, 1
  br i1 %cmp50, label %if.then.52, label %if.end.75

if.then.52:                                       ; preds = %if.end.49
  %76 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call53 = call i32 @lputs(%struct.stream_s* %76, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i32 0, i32 0)) #5
  %77 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor54 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %77, i32 0, i32 5
  %w55 = bitcast %union.stream_cursor_s* %cursor54 to %struct.stream_cursor_write_s*
  %ptr56 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w55, i32 0, i32 1
  %78 = load i8*, i8** %ptr56, align 8, !tbaa !55
  %79 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor57 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %79, i32 0, i32 5
  %w58 = bitcast %union.stream_cursor_s* %cursor57 to %struct.stream_cursor_write_s*
  %limit59 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w58, i32 0, i32 2
  %80 = load i8*, i8** %limit59, align 8, !tbaa !57
  %cmp60 = icmp uge i8* %78, %80
  br i1 %cmp60, label %cond.false.70, label %cond.true.62

cond.true.62:                                     ; preds = %if.then.52
  %81 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor63 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %81, i32 0, i32 5
  %w64 = bitcast %union.stream_cursor_s* %cursor63 to %struct.stream_cursor_write_s*
  %ptr65 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w64, i32 0, i32 1
  %82 = load i8*, i8** %ptr65, align 8, !tbaa !55
  %incdec.ptr66 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %incdec.ptr66, i8** %ptr65, align 8, !tbaa !55
  %83 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor67 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %83, i32 0, i32 5
  %w68 = bitcast %union.stream_cursor_s* %cursor67 to %struct.stream_cursor_write_s*
  %ptr69 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w68, i32 0, i32 1
  %84 = load i8*, i8** %ptr69, align 8, !tbaa !55
  store i8 30, i8* %84, align 1, !tbaa !58
  br label %cond.end.72

cond.false.70:                                    ; preds = %if.then.52
  %85 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call71 = call i32 @spputc(%struct.stream_s* %85, i8 zeroext 30) #5
  br label %cond.end.72

cond.end.72:                                      ; preds = %cond.false.70, %cond.true.62
  %cond73 = phi i32 [ 0, %cond.true.62 ], [ %call71, %cond.false.70 ]
  %86 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %MaskState74 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %86, i32 0, i32 90
  store i32 1, i32* %MaskState74, align 4, !tbaa !74
  br label %if.end.75

if.end.75:                                        ; preds = %cond.end.72, %if.end.49
  %87 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call76 = call i32 @lputs(%struct.stream_s* %87, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.101, i32 0, i32 0)) #5
  %88 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %89 = load i32, i32* %x.addr, align 4, !tbaa !5
  call void @sput_lips_int(%struct.stream_s* %88, i32 %89) #5
  %90 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %91 = load i32, i32* %y.addr, align 4, !tbaa !5
  call void @sput_lips_int(%struct.stream_s* %90, i32 %91) #5
  %92 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %93 = load i32, i32* %dpi, align 4, !tbaa !5
  %mul = mul nsw i32 %93, 100
  call void @sput_lips_int(%struct.stream_s* %92, i32 %mul) #5
  %94 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %95 = load i32, i32* %dpi, align 4, !tbaa !5
  %mul77 = mul nsw i32 %95, 100
  call void @sput_lips_int(%struct.stream_s* %94, i32 %mul77) #5
  %96 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %97 = load i32, i32* %h.addr, align 4, !tbaa !5
  call void @sput_lips_int(%struct.stream_s* %96, i32 %97) #5
  %98 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %99 = load i32, i32* %w.addr, align 4, !tbaa !5
  call void @sput_lips_int(%struct.stream_s* %98, i32 %99) #5
  %100 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call78 = call i32 @lputs(%struct.stream_s* %100, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.102, i32 0, i32 0)) #5
  %101 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor79 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %101, i32 0, i32 5
  %w80 = bitcast %union.stream_cursor_s* %cursor79 to %struct.stream_cursor_write_s*
  %ptr81 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w80, i32 0, i32 1
  %102 = load i8*, i8** %ptr81, align 8, !tbaa !55
  %103 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor82 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %103, i32 0, i32 5
  %w83 = bitcast %union.stream_cursor_s* %cursor82 to %struct.stream_cursor_write_s*
  %limit84 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w83, i32 0, i32 2
  %104 = load i8*, i8** %limit84, align 8, !tbaa !57
  %cmp85 = icmp uge i8* %102, %104
  br i1 %cmp85, label %cond.false.95, label %cond.true.87

cond.true.87:                                     ; preds = %if.end.75
  %105 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor88 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %105, i32 0, i32 5
  %w89 = bitcast %union.stream_cursor_s* %cursor88 to %struct.stream_cursor_write_s*
  %ptr90 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w89, i32 0, i32 1
  %106 = load i8*, i8** %ptr90, align 8, !tbaa !55
  %incdec.ptr91 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %incdec.ptr91, i8** %ptr90, align 8, !tbaa !55
  %107 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor92 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %107, i32 0, i32 5
  %w93 = bitcast %union.stream_cursor_s* %cursor92 to %struct.stream_cursor_write_s*
  %ptr94 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w93, i32 0, i32 1
  %108 = load i8*, i8** %ptr94, align 8, !tbaa !55
  store i8 30, i8* %108, align 1, !tbaa !58
  br label %cond.end.97

cond.false.95:                                    ; preds = %if.end.75
  %109 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call96 = call i32 @spputc(%struct.stream_s* %109, i8 zeroext 30) #5
  br label %cond.end.97

cond.end.97:                                      ; preds = %cond.false.95, %cond.true.87
  %cond98 = phi i32 [ 0, %cond.true.87 ], [ %call96, %cond.false.95 ]
  %110 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call99 = call i32 @lputs(%struct.stream_s* %110, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.103, i32 0, i32 0)) #5
  %111 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %111) #2
  %112 = bitcast i32* %width_bytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %112) #2
  %113 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add = add nsw i32 %113, 7
  %shr = ashr i32 %add, 3
  store i32 %shr, i32* %width_bytes, align 4, !tbaa !5
  %114 = bitcast i32* %num_bytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %114) #2
  %115 = load i32, i32* %width_bytes, align 4, !tbaa !5
  %add100 = add i32 %115, 3
  %and = and i32 %add100, -4
  %116 = load i32, i32* %h.addr, align 4, !tbaa !5
  %mul101 = mul i32 %and, %116
  store i32 %mul101, i32* %num_bytes, align 4, !tbaa !5
  %117 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %117) #2
  %118 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %118, i32 0, i32 3
  %119 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !80
  %procs102 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %119, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs102, i32 0, i32 7
  %120 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !81
  %121 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %memory103 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %121, i32 0, i32 3
  %122 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory103, align 8, !tbaa !80
  %123 = load i32, i32* %num_bytes, align 4, !tbaa !5
  %call104 = call i8* %120(%struct.gs_memory_s* %122, i32 %123, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.124, i32 0, i32 0)) #5
  store i8* %call104, i8** %buf, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.97
  %124 = load i32, i32* %i, align 4, !tbaa !5
  %125 = load i32, i32* %h.addr, align 4, !tbaa !5
  %cmp105 = icmp slt i32 %124, %125
  br i1 %cmp105, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %126 = load i8*, i8** %buf, align 8, !tbaa !1
  %127 = load i32, i32* %i, align 4, !tbaa !5
  %128 = load i32, i32* %width_bytes, align 4, !tbaa !5
  %mul107 = mul i32 %127, %128
  %idx.ext = zext i32 %mul107 to i64
  %add.ptr = getelementptr inbounds i8, i8* %126, i64 %idx.ext
  %129 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %130 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %shr108 = ashr i32 %130, 3
  %idx.ext109 = sext i32 %shr108 to i64
  %add.ptr110 = getelementptr inbounds i8, i8* %129, i64 %idx.ext109
  %131 = load i32, i32* %i, align 4, !tbaa !5
  %132 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %mul111 = mul nsw i32 %131, %132
  %idx.ext112 = sext i32 %mul111 to i64
  %add.ptr113 = getelementptr inbounds i8, i8* %add.ptr110, i64 %idx.ext112
  %133 = load i32, i32* %width_bytes, align 4, !tbaa !5
  %conv114 = zext i32 %133 to i64
  %call115 = call i8* @memcpy(i8* %add.ptr, i8* %add.ptr113, i64 %conv114) #6
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %134 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %134, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %135 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %136 = load i8*, i8** %buf, align 8, !tbaa !1
  %137 = load i32, i32* %num_bytes, align 4, !tbaa !5
  call void @lips4v_write_image_data(%struct.gx_device_vector_s* %135, i8* %136, i32 %137, i32 0) #5
  %138 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %memory116 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %138, i32 0, i32 3
  %139 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory116, align 8, !tbaa !80
  %procs117 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %139, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs117, i32 0, i32 2
  %140 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !82
  %141 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %memory118 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %141, i32 0, i32 3
  %142 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory118, align 8, !tbaa !80
  %143 = load i8*, i8** %buf, align 8, !tbaa !1
  call void %140(%struct.gs_memory_s* %142, i8* %143, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.124, i32 0, i32 0)) #5
  %144 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %144) #2
  %145 = bitcast i32* %num_bytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %145) #2
  %146 = bitcast i32* %width_bytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %146) #2
  %147 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %147) #2
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.31, %if.then.18, %if.then
  %148 = bitcast i32* %dpi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %148) #2
  %149 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %149) #2
  %150 = bitcast %struct.gx_device_lips4v_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %150) #2
  %151 = bitcast %struct.gx_device_vector_s** %vdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %151) #2
  %152 = load i32, i32* %retval
  ret i32 %152
}

declare i32 @gdev_vector_fill_trapezoid(%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32) #1

declare i32 @gdev_vector_fill_parallelogram(%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32) #1

declare i32 @gdev_vector_fill_triangle(%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @lips4v_begin_image(%struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis, %struct.gs_image1_s* %pim, i32 %format, %struct.gs_int_rect_s* %prect, %struct.gx_device_color_s* %pdcolor, %struct.gx_clip_path_s* %pcpath, %struct.gs_memory_s* %mem, %struct.gx_image_enum_common_s** %pinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pim.addr = alloca %struct.gs_image1_s*, align 8
  %format.addr = alloca i32, align 4
  %prect.addr = alloca %struct.gs_int_rect_s*, align 8
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pinfo.addr = alloca %struct.gx_image_enum_common_s**, align 8
  %vdev = alloca %struct.gx_device_vector_s*, align 8
  %pdev = alloca %struct.gx_device_lips4v_s*, align 8
  %pie = alloca %struct.gdev_vector_image_enum_s*, align 8
  %pcs = alloca %struct.gs_color_space_s*, align 8
  %index = alloca i32, align 4
  %num_components = alloca i32, align 4
  %can_do = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %dcolor = alloca %struct.gx_device_color_s, align 8
  %s = alloca %struct.stream_s*, align 8
  %ax = alloca i32, align 4
  %ay = alloca i32, align 4
  %bx = alloca i32, align 4
  %by = alloca i32, align 4
  %cx = alloca i32, align 4
  %cy = alloca i32, align 4
  %dx = alloca i32, align 4
  %dy = alloca i32, align 4
  %tbyte = alloca i32, align 4
  %imat = alloca %struct.gs_matrix_s, align 4
  %interpolate = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gs_image1_s* %pim, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  store i32 %format, i32* %format.addr, align 4, !tbaa !58
  store %struct.gs_int_rect_s* %prect, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gx_image_enum_common_s** %pinfo, %struct.gx_image_enum_common_s*** %pinfo.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_vector_s** %vdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_vector_s*
  store %struct.gx_device_vector_s* %2, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_lips4v_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gx_device_s* %4 to %struct.gx_device_lips4v_s*
  store %struct.gx_device_lips4v_s* %5, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %6 = bitcast %struct.gdev_vector_image_enum_s** %pie to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %7, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %8 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !114
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i8* %8(%struct.gs_memory_s* %9, %struct.gs_memory_struct_type_s* @st_vector_image_enum, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.125, i32 0, i32 0)) #5
  %10 = bitcast i8* %call to %struct.gdev_vector_image_enum_s*
  store %struct.gdev_vector_image_enum_s* %10, %struct.gdev_vector_image_enum_s** %pie, align 8, !tbaa !1
  %11 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #2
  %12 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %ColorSpace = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %12, i32 0, i32 9
  %13 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace, align 8, !tbaa !115
  store %struct.gs_color_space_s* %13, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %14 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  %15 = bitcast i32* %num_components to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #2
  store i32 1, i32* %num_components, align 4, !tbaa !5
  %16 = bitcast i32* %can_do to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #2
  %17 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_int_rect_s* %17, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %18 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %format1 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %18, i32 0, i32 7
  %19 = load i32, i32* %format1, align 4, !tbaa !117
  %cmp2 = icmp eq i32 %19, 0
  br i1 %cmp2, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %20 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %format3 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %20, i32 0, i32 7
  %21 = load i32, i32* %format3, align 4, !tbaa !117
  %cmp4 = icmp eq i32 %21, 1
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %22 = phi i1 [ true, %land.rhs ], [ %cmp4, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %entry
  %23 = phi i1 [ false, %entry ], [ %22, %lor.end ]
  %land.ext = zext i1 %23 to i32
  store i32 %land.ext, i32* %can_do, align 4, !tbaa !5
  %24 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #2
  %25 = load %struct.gdev_vector_image_enum_s*, %struct.gdev_vector_image_enum_s** %pie, align 8, !tbaa !1
  %cmp5 = icmp eq %struct.gdev_vector_image_enum_s* %25, null
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %land.end
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.342

if.end:                                           ; preds = %land.end
  %26 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %27 = load %struct.gdev_vector_image_enum_s*, %struct.gdev_vector_image_enum_s** %pie, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gdev_vector_image_enum_s, %struct.gdev_vector_image_enum_s* %27, i32 0, i32 3
  store %struct.gs_memory_s* %26, %struct.gs_memory_s** %memory, align 8, !tbaa !118
  %28 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %29 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %30 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %31 = load i32, i32* %format.addr, align 4, !tbaa !58
  %32 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %33 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %34 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %35 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %36 = load %struct.gdev_vector_image_enum_s*, %struct.gdev_vector_image_enum_s** %pie, align 8, !tbaa !1
  %call6 = call i32 @gdev_vector_begin_image(%struct.gx_device_vector_s* %28, %struct.gs_imager_state_s* %29, %struct.gs_image1_s* %30, i32 %31, %struct.gs_int_rect_s* %32, %struct.gx_device_color_s* %33, %struct.gx_clip_path_s* %34, %struct.gs_memory_s* %35, %struct.gx_image_enum_procs_s* @lips4v_image_enum_procs, %struct.gdev_vector_image_enum_s* %36) #5
  store i32 %call6, i32* %code, align 4, !tbaa !5
  %37 = load i32, i32* %code, align 4, !tbaa !5
  %cmp7 = icmp slt i32 %37, 0
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  %38 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %38, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.342

if.end.9:                                         ; preds = %if.end
  %39 = load %struct.gdev_vector_image_enum_s*, %struct.gdev_vector_image_enum_s** %pie, align 8, !tbaa !1
  %40 = bitcast %struct.gdev_vector_image_enum_s* %39 to %struct.gx_image_enum_common_s*
  %41 = load %struct.gx_image_enum_common_s**, %struct.gx_image_enum_common_s*** %pinfo.addr, align 8, !tbaa !1
  store %struct.gx_image_enum_common_s* %40, %struct.gx_image_enum_common_s** %41, align 8, !tbaa !1
  %42 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %ImageMask = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %42, i32 0, i32 10
  %43 = load i32, i32* %ImageMask, align 4, !tbaa !120
  %tobool = icmp ne i32 %43, 0
  br i1 %tobool, label %if.end.51, label %if.then.10

if.then.10:                                       ; preds = %if.end.9
  %44 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %call11 = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %44) #5
  store i32 %call11, i32* %index, align 4, !tbaa !58
  %45 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %call12 = call i32 @gs_color_space_num_components(%struct.gs_color_space_s* %45) #5
  store i32 %call12, i32* %num_components, align 4, !tbaa !5
  %46 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %CombineWithColor = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %46, i32 0, i32 8
  %47 = load i32, i32* %CombineWithColor, align 4, !tbaa !121
  %tobool13 = icmp ne i32 %47, 0
  br i1 %tobool13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.then.10
  store i32 0, i32* %can_do, align 4, !tbaa !5
  br label %if.end.50

if.else:                                          ; preds = %if.then.10
  %48 = load i32, i32* %index, align 4, !tbaa !58
  switch i32 %48, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.28
  ]

sw.bb:                                            ; preds = %if.else
  %49 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %Decode = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %49, i32 0, i32 5
  %arrayidx = getelementptr inbounds [130 x float], [130 x float]* %Decode, i32 0, i64 0
  %50 = load float, float* %arrayidx, align 4, !tbaa !69
  %cmp15 = fcmp une float %50, 0.000000e+00
  br i1 %cmp15, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb
  %51 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %Decode16 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %51, i32 0, i32 5
  %arrayidx17 = getelementptr inbounds [130 x float], [130 x float]* %Decode16, i32 0, i64 1
  %52 = load float, float* %arrayidx17, align 4, !tbaa !69
  %cmp18 = fcmp une float %52, 1.000000e+00
  br i1 %cmp18, label %land.lhs.true, label %if.end.27

land.lhs.true:                                    ; preds = %lor.lhs.false, %sw.bb
  %53 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %Decode19 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %53, i32 0, i32 5
  %arrayidx20 = getelementptr inbounds [130 x float], [130 x float]* %Decode19, i32 0, i64 0
  %54 = load float, float* %arrayidx20, align 4, !tbaa !69
  %cmp21 = fcmp une float %54, 1.000000e+00
  br i1 %cmp21, label %if.then.26, label %lor.lhs.false.22

lor.lhs.false.22:                                 ; preds = %land.lhs.true
  %55 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %Decode23 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %55, i32 0, i32 5
  %arrayidx24 = getelementptr inbounds [130 x float], [130 x float]* %Decode23, i32 0, i64 1
  %56 = load float, float* %arrayidx24, align 4, !tbaa !69
  %cmp25 = fcmp une float %56, 0.000000e+00
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %lor.lhs.false.22, %land.lhs.true
  store i32 0, i32* %can_do, align 4, !tbaa !5
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %lor.lhs.false.22, %lor.lhs.false
  br label %sw.epilog

sw.bb.28:                                         ; preds = %if.else
  %57 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %Decode29 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %57, i32 0, i32 5
  %arrayidx30 = getelementptr inbounds [130 x float], [130 x float]* %Decode29, i32 0, i64 0
  %58 = load float, float* %arrayidx30, align 4, !tbaa !69
  %cmp31 = fcmp une float %58, 0.000000e+00
  br i1 %cmp31, label %if.then.48, label %lor.lhs.false.32

lor.lhs.false.32:                                 ; preds = %sw.bb.28
  %59 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %Decode33 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %59, i32 0, i32 5
  %arrayidx34 = getelementptr inbounds [130 x float], [130 x float]* %Decode33, i32 0, i64 1
  %60 = load float, float* %arrayidx34, align 4, !tbaa !69
  %cmp35 = fcmp une float %60, 1.000000e+00
  br i1 %cmp35, label %if.then.48, label %lor.lhs.false.36

lor.lhs.false.36:                                 ; preds = %lor.lhs.false.32
  %61 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %Decode37 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %61, i32 0, i32 5
  %arrayidx38 = getelementptr inbounds [130 x float], [130 x float]* %Decode37, i32 0, i64 2
  %62 = load float, float* %arrayidx38, align 4, !tbaa !69
  %cmp39 = fcmp une float %62, 0.000000e+00
  br i1 %cmp39, label %if.then.48, label %lor.lhs.false.40

lor.lhs.false.40:                                 ; preds = %lor.lhs.false.36
  %63 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %Decode41 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %63, i32 0, i32 5
  %arrayidx42 = getelementptr inbounds [130 x float], [130 x float]* %Decode41, i32 0, i64 3
  %64 = load float, float* %arrayidx42, align 4, !tbaa !69
  %cmp43 = fcmp une float %64, 1.000000e+00
  br i1 %cmp43, label %if.then.48, label %lor.lhs.false.44

lor.lhs.false.44:                                 ; preds = %lor.lhs.false.40
  %65 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %Decode45 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %65, i32 0, i32 5
  %arrayidx46 = getelementptr inbounds [130 x float], [130 x float]* %Decode45, i32 0, i64 4
  %66 = load float, float* %arrayidx46, align 4, !tbaa !69
  %cmp47 = fcmp une float %66, 0.000000e+00
  br i1 %cmp47, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %lor.lhs.false.44, %lor.lhs.false.40, %lor.lhs.false.36, %lor.lhs.false.32, %sw.bb.28
  store i32 0, i32* %can_do, align 4, !tbaa !5
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.48, %lor.lhs.false.44
  br label %sw.epilog

sw.default:                                       ; preds = %if.else
  store i32 0, i32* %can_do, align 4, !tbaa !5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.49, %if.end.27
  br label %if.end.50

if.end.50:                                        ; preds = %sw.epilog, %if.then.14
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %if.end.9
  %67 = load i32, i32* %can_do, align 4, !tbaa !5
  %tobool52 = icmp ne i32 %67, 0
  br i1 %tobool52, label %if.else.55, label %if.then.53

if.then.53:                                       ; preds = %if.end.51
  %68 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %69 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %70 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %71 = load i32, i32* %format.addr, align 4, !tbaa !58
  %72 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %73 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %74 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %75 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %76 = load %struct.gdev_vector_image_enum_s*, %struct.gdev_vector_image_enum_s** %pie, align 8, !tbaa !1
  %default_info = getelementptr inbounds %struct.gdev_vector_image_enum_s, %struct.gdev_vector_image_enum_s* %76, i32 0, i32 9
  %call54 = call i32 @gx_default_begin_image(%struct.gx_device_s* %68, %struct.gs_imager_state_s* %69, %struct.gs_image1_s* %70, i32 %71, %struct.gs_int_rect_s* %72, %struct.gx_device_color_s* %73, %struct.gx_clip_path_s* %74, %struct.gs_memory_s* %75, %struct.gx_image_enum_common_s** %default_info) #5
  store i32 %call54, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.342

if.else.55:                                       ; preds = %if.end.51
  %77 = load i32, i32* %index, align 4, !tbaa !58
  %cmp56 = icmp eq i32 %77, 0
  br i1 %cmp56, label %if.then.57, label %if.end.59

if.then.57:                                       ; preds = %if.else.55
  %78 = bitcast %struct.gx_device_color_s* %dcolor to i8*
  call void @llvm.lifetime.start(i64 656, i8* %78) #2
  %79 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %black = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %79, i32 0, i32 65
  %80 = load i64, i64* %black, align 8, !tbaa !84
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %dcolor, i32 0, i32 1
  %pure = bitcast %union._c* %colors to i64*
  store i64 %80, i64* %pure, align 8, !tbaa !68
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %dcolor, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_pure, %struct.gx_device_color_type_s** %type, align 8, !tbaa !70
  %81 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %call58 = call i32 @lips4v_setfillcolor(%struct.gx_device_vector_s* %81, %struct.gs_imager_state_s* null, %struct.gx_device_color_s* %dcolor) #5
  %82 = bitcast %struct.gx_device_color_s* %dcolor to i8*
  call void @llvm.lifetime.end(i64 656, i8* %82) #2
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.57, %if.else.55
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59
  %83 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %ImageMask61 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %83, i32 0, i32 10
  %84 = load i32, i32* %ImageMask61, align 4, !tbaa !120
  %tobool62 = icmp ne i32 %84, 0
  br i1 %tobool62, label %if.then.67, label %lor.lhs.false.63

lor.lhs.false.63:                                 ; preds = %if.end.60
  %85 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %BitsPerComponent = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %85, i32 0, i32 4
  %86 = load i32, i32* %BitsPerComponent, align 4, !tbaa !122
  %cmp64 = icmp eq i32 %86, 1
  br i1 %cmp64, label %land.lhs.true.65, label %if.end.77

land.lhs.true.65:                                 ; preds = %lor.lhs.false.63
  %87 = load i32, i32* %num_components, align 4, !tbaa !5
  %cmp66 = icmp eq i32 %87, 1
  br i1 %cmp66, label %if.then.67, label %if.end.77

if.then.67:                                       ; preds = %land.lhs.true.65, %if.end.60
  %88 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %Decode68 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %88, i32 0, i32 5
  %arrayidx69 = getelementptr inbounds [130 x float], [130 x float]* %Decode68, i32 0, i64 0
  %89 = load float, float* %arrayidx69, align 4, !tbaa !69
  %90 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %Decode70 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %90, i32 0, i32 5
  %arrayidx71 = getelementptr inbounds [130 x float], [130 x float]* %Decode70, i32 0, i64 1
  %91 = load float, float* %arrayidx71, align 4, !tbaa !69
  %cmp72 = fcmp ogt float %89, %91
  br i1 %cmp72, label %if.then.73, label %if.else.74

if.then.73:                                       ; preds = %if.then.67
  %92 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %MaskReverse = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %92, i32 0, i32 89
  store i32 1, i32* %MaskReverse, align 4, !tbaa !123
  br label %if.end.76

if.else.74:                                       ; preds = %if.then.67
  %93 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %MaskReverse75 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %93, i32 0, i32 89
  store i32 0, i32* %MaskReverse75, align 4, !tbaa !123
  br label %if.end.76

if.end.76:                                        ; preds = %if.else.74, %if.then.73
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %land.lhs.true.65, %lor.lhs.false.63
  %94 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %94) #2
  %95 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %96 = bitcast %struct.gx_device_lips4v_s* %95 to %struct.gx_device_vector_s*
  %call78 = call %struct.stream_s* @gdev_vector_stream(%struct.gx_device_vector_s* %96) #5
  store %struct.stream_s* %call78, %struct.stream_s** %s, align 8, !tbaa !1
  %97 = bitcast i32* %ax to i8*
  call void @llvm.lifetime.start(i64 4, i8* %97) #2
  %98 = bitcast i32* %ay to i8*
  call void @llvm.lifetime.start(i64 4, i8* %98) #2
  %99 = bitcast i32* %bx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %99) #2
  %100 = bitcast i32* %by to i8*
  call void @llvm.lifetime.start(i64 4, i8* %100) #2
  %101 = bitcast i32* %cx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %101) #2
  %102 = bitcast i32* %cy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %102) #2
  %103 = bitcast i32* %dx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %103) #2
  %104 = bitcast i32* %dy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %104) #2
  %105 = bitcast i32* %tbyte to i8*
  call void @llvm.lifetime.start(i64 4, i8* %105) #2
  %106 = bitcast %struct.gs_matrix_s* %imat to i8*
  call void @llvm.lifetime.start(i64 24, i8* %106) #2
  %107 = bitcast i32* %interpolate to i8*
  call void @llvm.lifetime.start(i64 4, i8* %107) #2
  store i32 0, i32* %interpolate, align 4, !tbaa !5
  %108 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %TextMode = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %108, i32 0, i32 91
  %109 = load i32, i32* %TextMode, align 4, !tbaa !54
  %tobool79 = icmp ne i32 %109, 0
  br i1 %tobool79, label %if.then.80, label %if.end.93

if.then.80:                                       ; preds = %if.end.77
  %110 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %110, i32 0, i32 5
  %w = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_write_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 1
  %111 = load i8*, i8** %ptr, align 8, !tbaa !55
  %112 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor81 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %112, i32 0, i32 5
  %w82 = bitcast %union.stream_cursor_s* %cursor81 to %struct.stream_cursor_write_s*
  %limit = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w82, i32 0, i32 2
  %113 = load i8*, i8** %limit, align 8, !tbaa !57
  %cmp83 = icmp uge i8* %111, %113
  br i1 %cmp83, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then.80
  %114 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor84 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %114, i32 0, i32 5
  %w85 = bitcast %union.stream_cursor_s* %cursor84 to %struct.stream_cursor_write_s*
  %ptr86 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w85, i32 0, i32 1
  %115 = load i8*, i8** %ptr86, align 8, !tbaa !55
  %incdec.ptr = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %incdec.ptr, i8** %ptr86, align 8, !tbaa !55
  %116 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor87 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %116, i32 0, i32 5
  %w88 = bitcast %union.stream_cursor_s* %cursor87 to %struct.stream_cursor_write_s*
  %ptr89 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w88, i32 0, i32 1
  %117 = load i8*, i8** %ptr89, align 8, !tbaa !55
  store i8 -101, i8* %117, align 1, !tbaa !58
  br label %cond.end

cond.false:                                       ; preds = %if.then.80
  %118 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call90 = call i32 @spputc(%struct.stream_s* %118, i8 zeroext -101) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call90, %cond.false ]
  %119 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call91 = call i32 @lputs(%struct.stream_s* %119, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i32 0, i32 0)) #5
  %120 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %TextMode92 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %120, i32 0, i32 91
  store i32 0, i32* %TextMode92, align 4, !tbaa !54
  br label %if.end.93

if.end.93:                                        ; preds = %cond.end, %if.end.77
  %121 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %ImageMatrix = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %121, i32 0, i32 1
  %call94 = call i32 @gs_matrix_invert(%struct.gs_matrix_s* %ImageMatrix, %struct.gs_matrix_s* %imat) #5
  %122 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %122, i32 0, i32 5
  %123 = bitcast %struct.gs_matrix_fixed_s* %ctm to %struct.gs_matrix_s*
  %call95 = call i32 @gs_matrix_multiply(%struct.gs_matrix_s* %imat, %struct.gs_matrix_s* %123, %struct.gs_matrix_s* %imat) #5
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %imat, i32 0, i32 4
  %124 = load float, float* %tx, align 4, !tbaa !124
  %conv = fptosi float %124 to i32
  store i32 %conv, i32* %ax, align 4, !tbaa !5
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %imat, i32 0, i32 5
  %125 = load float, float* %ty, align 4, !tbaa !125
  %conv96 = fptosi float %125 to i32
  store i32 %conv96, i32* %ay, align 4, !tbaa !5
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %imat, i32 0, i32 0
  %126 = load float, float* %xx, align 4, !tbaa !126
  %127 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %Width = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %127, i32 0, i32 2
  %128 = load i32, i32* %Width, align 4, !tbaa !127
  %conv97 = sitofp i32 %128 to float
  %mul = fmul float %126, %conv97
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %imat, i32 0, i32 2
  %129 = load float, float* %yx, align 4, !tbaa !128
  %130 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %Height = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %130, i32 0, i32 3
  %131 = load i32, i32* %Height, align 4, !tbaa !129
  %conv98 = sitofp i32 %131 to float
  %mul99 = fmul float %129, %conv98
  %add = fadd float %mul, %mul99
  %tx100 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %imat, i32 0, i32 4
  %132 = load float, float* %tx100, align 4, !tbaa !124
  %add101 = fadd float %add, %132
  %conv102 = fptosi float %add101 to i32
  store i32 %conv102, i32* %bx, align 4, !tbaa !5
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %imat, i32 0, i32 1
  %133 = load float, float* %xy, align 4, !tbaa !130
  %134 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %Width103 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %134, i32 0, i32 2
  %135 = load i32, i32* %Width103, align 4, !tbaa !127
  %conv104 = sitofp i32 %135 to float
  %mul105 = fmul float %133, %conv104
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %imat, i32 0, i32 3
  %136 = load float, float* %yy, align 4, !tbaa !131
  %137 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %Height106 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %137, i32 0, i32 3
  %138 = load i32, i32* %Height106, align 4, !tbaa !129
  %conv107 = sitofp i32 %138 to float
  %mul108 = fmul float %136, %conv107
  %add109 = fadd float %mul105, %mul108
  %ty110 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %imat, i32 0, i32 5
  %139 = load float, float* %ty110, align 4, !tbaa !125
  %add111 = fadd float %add109, %139
  %conv112 = fptosi float %add111 to i32
  store i32 %conv112, i32* %by, align 4, !tbaa !5
  %yx113 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %imat, i32 0, i32 2
  %140 = load float, float* %yx113, align 4, !tbaa !128
  %141 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %Height114 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %141, i32 0, i32 3
  %142 = load i32, i32* %Height114, align 4, !tbaa !129
  %conv115 = sitofp i32 %142 to float
  %mul116 = fmul float %140, %conv115
  %tx117 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %imat, i32 0, i32 4
  %143 = load float, float* %tx117, align 4, !tbaa !124
  %add118 = fadd float %mul116, %143
  %conv119 = fptosi float %add118 to i32
  store i32 %conv119, i32* %cx, align 4, !tbaa !5
  %yy120 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %imat, i32 0, i32 3
  %144 = load float, float* %yy120, align 4, !tbaa !131
  %145 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %Height121 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %145, i32 0, i32 3
  %146 = load i32, i32* %Height121, align 4, !tbaa !129
  %conv122 = sitofp i32 %146 to float
  %mul123 = fmul float %144, %conv122
  %ty124 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %imat, i32 0, i32 5
  %147 = load float, float* %ty124, align 4, !tbaa !125
  %add125 = fadd float %mul123, %147
  %conv126 = fptosi float %add125 to i32
  store i32 %conv126, i32* %cy, align 4, !tbaa !5
  %xx127 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %imat, i32 0, i32 0
  %148 = load float, float* %xx127, align 4, !tbaa !126
  %149 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %Width128 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %149, i32 0, i32 2
  %150 = load i32, i32* %Width128, align 4, !tbaa !127
  %conv129 = sitofp i32 %150 to float
  %mul130 = fmul float %148, %conv129
  %tx131 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %imat, i32 0, i32 4
  %151 = load float, float* %tx131, align 4, !tbaa !124
  %add132 = fadd float %mul130, %151
  %conv133 = fptosi float %add132 to i32
  store i32 %conv133, i32* %dx, align 4, !tbaa !5
  %xy134 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %imat, i32 0, i32 1
  %152 = load float, float* %xy134, align 4, !tbaa !130
  %153 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %Width135 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %153, i32 0, i32 2
  %154 = load i32, i32* %Width135, align 4, !tbaa !127
  %conv136 = sitofp i32 %154 to float
  %mul137 = fmul float %152, %conv136
  %ty138 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %imat, i32 0, i32 5
  %155 = load float, float* %ty138, align 4, !tbaa !125
  %add139 = fadd float %mul137, %155
  %conv140 = fptosi float %add139 to i32
  store i32 %conv140, i32* %dy, align 4, !tbaa !5
  %156 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %ImageMask141 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %156, i32 0, i32 10
  %157 = load i32, i32* %ImageMask141, align 4, !tbaa !120
  %tobool142 = icmp ne i32 %157, 0
  br i1 %tobool142, label %if.then.143, label %if.else.206

if.then.143:                                      ; preds = %if.end.93
  %158 = load %struct.gdev_vector_image_enum_s*, %struct.gdev_vector_image_enum_s** %pie, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gdev_vector_image_enum_s, %struct.gdev_vector_image_enum_s* %158, i32 0, i32 11
  %159 = load i32, i32* %width, align 4, !tbaa !132
  %160 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %BitsPerComponent144 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %160, i32 0, i32 4
  %161 = load i32, i32* %BitsPerComponent144, align 4, !tbaa !122
  %mul145 = mul nsw i32 %159, %161
  %add146 = add nsw i32 %mul145, 7
  %div = sdiv i32 %add146, 8
  %162 = load i32, i32* %num_components, align 4, !tbaa !5
  %mul147 = mul nsw i32 %div, %162
  %163 = load %struct.gdev_vector_image_enum_s*, %struct.gdev_vector_image_enum_s** %pie, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gdev_vector_image_enum_s, %struct.gdev_vector_image_enum_s* %163, i32 0, i32 12
  %164 = load i32, i32* %height, align 4, !tbaa !133
  %mul148 = mul nsw i32 %mul147, %164
  store i32 %mul148, i32* %tbyte, align 4, !tbaa !5
  %165 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %ncomp = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %165, i32 0, i32 88
  store i32 1, i32* %ncomp, align 4, !tbaa !134
  %166 = load i32, i32* %tbyte, align 4, !tbaa !5
  %cmp149 = icmp eq i32 %166, 1
  br i1 %cmp149, label %if.then.151, label %if.else.178

if.then.151:                                      ; preds = %if.then.143
  %167 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %OneBitMask = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %167, i32 0, i32 87
  store i32 1, i32* %OneBitMask, align 4, !tbaa !135
  %168 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call152 = call i32 @lputs(%struct.stream_s* %168, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.126, i32 0, i32 0)) #5
  %169 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %170 = load i32, i32* %ax, align 4, !tbaa !5
  call void @sput_lips_int(%struct.stream_s* %169, i32 %170) #5
  %171 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %172 = load i32, i32* %ay, align 4, !tbaa !5
  call void @sput_lips_int(%struct.stream_s* %171, i32 %172) #5
  %173 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %174 = load i32, i32* %cx, align 4, !tbaa !5
  %175 = load i32, i32* %ax, align 4, !tbaa !5
  %sub = sub nsw i32 %174, %175
  call void @sput_lips_int(%struct.stream_s* %173, i32 %sub) #5
  %176 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %177 = load i32, i32* %cy, align 4, !tbaa !5
  %178 = load i32, i32* %ay, align 4, !tbaa !5
  %sub153 = sub nsw i32 %177, %178
  call void @sput_lips_int(%struct.stream_s* %176, i32 %sub153) #5
  %179 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %180 = load i32, i32* %bx, align 4, !tbaa !5
  %181 = load i32, i32* %cx, align 4, !tbaa !5
  %sub154 = sub nsw i32 %180, %181
  call void @sput_lips_int(%struct.stream_s* %179, i32 %sub154) #5
  %182 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %183 = load i32, i32* %by, align 4, !tbaa !5
  %184 = load i32, i32* %cy, align 4, !tbaa !5
  %sub155 = sub nsw i32 %183, %184
  call void @sput_lips_int(%struct.stream_s* %182, i32 %sub155) #5
  %185 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %186 = load i32, i32* %dx, align 4, !tbaa !5
  %187 = load i32, i32* %bx, align 4, !tbaa !5
  %sub156 = sub nsw i32 %186, %187
  call void @sput_lips_int(%struct.stream_s* %185, i32 %sub156) #5
  %188 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %189 = load i32, i32* %dy, align 4, !tbaa !5
  %190 = load i32, i32* %by, align 4, !tbaa !5
  %sub157 = sub nsw i32 %189, %190
  call void @sput_lips_int(%struct.stream_s* %188, i32 %sub157) #5
  %191 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor158 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %191, i32 0, i32 5
  %w159 = bitcast %union.stream_cursor_s* %cursor158 to %struct.stream_cursor_write_s*
  %ptr160 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w159, i32 0, i32 1
  %192 = load i8*, i8** %ptr160, align 8, !tbaa !55
  %193 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor161 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %193, i32 0, i32 5
  %w162 = bitcast %union.stream_cursor_s* %cursor161 to %struct.stream_cursor_write_s*
  %limit163 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w162, i32 0, i32 2
  %194 = load i8*, i8** %limit163, align 8, !tbaa !57
  %cmp164 = icmp uge i8* %192, %194
  br i1 %cmp164, label %cond.false.174, label %cond.true.166

cond.true.166:                                    ; preds = %if.then.151
  %195 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor167 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %195, i32 0, i32 5
  %w168 = bitcast %union.stream_cursor_s* %cursor167 to %struct.stream_cursor_write_s*
  %ptr169 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w168, i32 0, i32 1
  %196 = load i8*, i8** %ptr169, align 8, !tbaa !55
  %incdec.ptr170 = getelementptr inbounds i8, i8* %196, i32 1
  store i8* %incdec.ptr170, i8** %ptr169, align 8, !tbaa !55
  %197 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor171 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %197, i32 0, i32 5
  %w172 = bitcast %union.stream_cursor_s* %cursor171 to %struct.stream_cursor_write_s*
  %ptr173 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w172, i32 0, i32 1
  %198 = load i8*, i8** %ptr173, align 8, !tbaa !55
  store i8 30, i8* %198, align 1, !tbaa !58
  br label %cond.end.176

cond.false.174:                                   ; preds = %if.then.151
  %199 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call175 = call i32 @spputc(%struct.stream_s* %199, i8 zeroext 30) #5
  br label %cond.end.176

cond.end.176:                                     ; preds = %cond.false.174, %cond.true.166
  %cond177 = phi i32 [ 0, %cond.true.166 ], [ %call175, %cond.false.174 ]
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.178:                                      ; preds = %if.then.143
  %200 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %MaskState = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %200, i32 0, i32 90
  %201 = load i32, i32* %MaskState, align 4, !tbaa !74
  %cmp179 = icmp ne i32 %201, 1
  br i1 %cmp179, label %if.then.181, label %if.end.204

if.then.181:                                      ; preds = %if.else.178
  %202 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call182 = call i32 @lputs(%struct.stream_s* %202, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i32 0, i32 0)) #5
  %203 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor183 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %203, i32 0, i32 5
  %w184 = bitcast %union.stream_cursor_s* %cursor183 to %struct.stream_cursor_write_s*
  %ptr185 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w184, i32 0, i32 1
  %204 = load i8*, i8** %ptr185, align 8, !tbaa !55
  %205 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor186 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %205, i32 0, i32 5
  %w187 = bitcast %union.stream_cursor_s* %cursor186 to %struct.stream_cursor_write_s*
  %limit188 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w187, i32 0, i32 2
  %206 = load i8*, i8** %limit188, align 8, !tbaa !57
  %cmp189 = icmp uge i8* %204, %206
  br i1 %cmp189, label %cond.false.199, label %cond.true.191

cond.true.191:                                    ; preds = %if.then.181
  %207 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor192 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %207, i32 0, i32 5
  %w193 = bitcast %union.stream_cursor_s* %cursor192 to %struct.stream_cursor_write_s*
  %ptr194 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w193, i32 0, i32 1
  %208 = load i8*, i8** %ptr194, align 8, !tbaa !55
  %incdec.ptr195 = getelementptr inbounds i8, i8* %208, i32 1
  store i8* %incdec.ptr195, i8** %ptr194, align 8, !tbaa !55
  %209 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor196 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %209, i32 0, i32 5
  %w197 = bitcast %union.stream_cursor_s* %cursor196 to %struct.stream_cursor_write_s*
  %ptr198 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w197, i32 0, i32 1
  %210 = load i8*, i8** %ptr198, align 8, !tbaa !55
  store i8 30, i8* %210, align 1, !tbaa !58
  br label %cond.end.201

cond.false.199:                                   ; preds = %if.then.181
  %211 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call200 = call i32 @spputc(%struct.stream_s* %211, i8 zeroext 30) #5
  br label %cond.end.201

cond.end.201:                                     ; preds = %cond.false.199, %cond.true.191
  %cond202 = phi i32 [ 0, %cond.true.191 ], [ %call200, %cond.false.199 ]
  %212 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %MaskState203 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %212, i32 0, i32 90
  store i32 1, i32* %MaskState203, align 4, !tbaa !74
  br label %if.end.204

if.end.204:                                       ; preds = %cond.end.201, %if.else.178
  br label %if.end.205

if.end.205:                                       ; preds = %if.end.204
  br label %if.end.235

if.else.206:                                      ; preds = %if.end.93
  %213 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %MaskState207 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %213, i32 0, i32 90
  %214 = load i32, i32* %MaskState207, align 4, !tbaa !74
  %cmp208 = icmp ne i32 %214, 0
  br i1 %cmp208, label %if.then.210, label %if.end.233

if.then.210:                                      ; preds = %if.else.206
  %215 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call211 = call i32 @lputs(%struct.stream_s* %215, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.100, i32 0, i32 0)) #5
  %216 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor212 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %216, i32 0, i32 5
  %w213 = bitcast %union.stream_cursor_s* %cursor212 to %struct.stream_cursor_write_s*
  %ptr214 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w213, i32 0, i32 1
  %217 = load i8*, i8** %ptr214, align 8, !tbaa !55
  %218 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor215 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %218, i32 0, i32 5
  %w216 = bitcast %union.stream_cursor_s* %cursor215 to %struct.stream_cursor_write_s*
  %limit217 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w216, i32 0, i32 2
  %219 = load i8*, i8** %limit217, align 8, !tbaa !57
  %cmp218 = icmp uge i8* %217, %219
  br i1 %cmp218, label %cond.false.228, label %cond.true.220

cond.true.220:                                    ; preds = %if.then.210
  %220 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor221 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %220, i32 0, i32 5
  %w222 = bitcast %union.stream_cursor_s* %cursor221 to %struct.stream_cursor_write_s*
  %ptr223 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w222, i32 0, i32 1
  %221 = load i8*, i8** %ptr223, align 8, !tbaa !55
  %incdec.ptr224 = getelementptr inbounds i8, i8* %221, i32 1
  store i8* %incdec.ptr224, i8** %ptr223, align 8, !tbaa !55
  %222 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor225 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %222, i32 0, i32 5
  %w226 = bitcast %union.stream_cursor_s* %cursor225 to %struct.stream_cursor_write_s*
  %ptr227 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w226, i32 0, i32 1
  %223 = load i8*, i8** %ptr227, align 8, !tbaa !55
  store i8 30, i8* %223, align 1, !tbaa !58
  br label %cond.end.230

cond.false.228:                                   ; preds = %if.then.210
  %224 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call229 = call i32 @spputc(%struct.stream_s* %224, i8 zeroext 30) #5
  br label %cond.end.230

cond.end.230:                                     ; preds = %cond.false.228, %cond.true.220
  %cond231 = phi i32 [ 0, %cond.true.220 ], [ %call229, %cond.false.228 ]
  %225 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %MaskState232 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %225, i32 0, i32 90
  store i32 0, i32* %MaskState232, align 4, !tbaa !74
  br label %if.end.233

if.end.233:                                       ; preds = %cond.end.230, %if.else.206
  %226 = load i32, i32* %num_components, align 4, !tbaa !5
  %227 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %ncomp234 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %227, i32 0, i32 88
  store i32 %226, i32* %ncomp234, align 4, !tbaa !134
  br label %if.end.235

if.end.235:                                       ; preds = %if.end.233, %if.end.205
  %228 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call236 = call i32 @lputs(%struct.stream_s* %228, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.127, i32 0, i32 0)) #5
  %229 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %230 = load i32, i32* %ax, align 4, !tbaa !5
  call void @sput_lips_int(%struct.stream_s* %229, i32 %230) #5
  %231 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %232 = load i32, i32* %ay, align 4, !tbaa !5
  call void @sput_lips_int(%struct.stream_s* %231, i32 %232) #5
  %233 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %234 = load i32, i32* %bx, align 4, !tbaa !5
  call void @sput_lips_int(%struct.stream_s* %233, i32 %234) #5
  %235 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %236 = load i32, i32* %by, align 4, !tbaa !5
  call void @sput_lips_int(%struct.stream_s* %235, i32 %236) #5
  %237 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %238 = load i32, i32* %cx, align 4, !tbaa !5
  call void @sput_lips_int(%struct.stream_s* %237, i32 %238) #5
  %239 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %240 = load i32, i32* %cy, align 4, !tbaa !5
  call void @sput_lips_int(%struct.stream_s* %239, i32 %240) #5
  %241 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %242 = load %struct.gdev_vector_image_enum_s*, %struct.gdev_vector_image_enum_s** %pie, align 8, !tbaa !1
  %height237 = getelementptr inbounds %struct.gdev_vector_image_enum_s, %struct.gdev_vector_image_enum_s* %242, i32 0, i32 12
  %243 = load i32, i32* %height237, align 4, !tbaa !133
  call void @sput_lips_int(%struct.stream_s* %241, i32 %243) #5
  %244 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %245 = load %struct.gdev_vector_image_enum_s*, %struct.gdev_vector_image_enum_s** %pie, align 8, !tbaa !1
  %width238 = getelementptr inbounds %struct.gdev_vector_image_enum_s, %struct.gdev_vector_image_enum_s* %245, i32 0, i32 11
  %246 = load i32, i32* %width238, align 4, !tbaa !132
  call void @sput_lips_int(%struct.stream_s* %244, i32 %246) #5
  %247 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %248 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %BitsPerComponent239 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %248, i32 0, i32 4
  %249 = load i32, i32* %BitsPerComponent239, align 4, !tbaa !122
  call void @sput_lips_int(%struct.stream_s* %247, i32 %249) #5
  %250 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %Interpolate = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %250, i32 0, i32 6
  %251 = load i32, i32* %Interpolate, align 4, !tbaa !136
  %tobool240 = icmp ne i32 %251, 0
  br i1 %tobool240, label %if.then.241, label %if.end.249

if.then.241:                                      ; preds = %if.end.235
  %252 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %BitsPerComponent242 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %252, i32 0, i32 4
  %253 = load i32, i32* %BitsPerComponent242, align 4, !tbaa !122
  %254 = load %struct.gdev_vector_image_enum_s*, %struct.gdev_vector_image_enum_s** %pie, align 8, !tbaa !1
  %num_planes = getelementptr inbounds %struct.gdev_vector_image_enum_s, %struct.gdev_vector_image_enum_s* %254, i32 0, i32 6
  %255 = load i32, i32* %num_planes, align 4, !tbaa !137
  %mul243 = mul nsw i32 %253, %255
  %cmp244 = icmp eq i32 %mul243, 1
  br i1 %cmp244, label %if.then.246, label %if.else.247

if.then.246:                                      ; preds = %if.then.241
  store i32 1, i32* %interpolate, align 4, !tbaa !5
  br label %if.end.248

if.else.247:                                      ; preds = %if.then.241
  store i32 3, i32* %interpolate, align 4, !tbaa !5
  br label %if.end.248

if.end.248:                                       ; preds = %if.else.247, %if.then.246
  br label %if.end.249

if.end.249:                                       ; preds = %if.end.248, %if.end.235
  %256 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %ImageMask250 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %256, i32 0, i32 10
  %257 = load i32, i32* %ImageMask250, align 4, !tbaa !120
  %tobool251 = icmp ne i32 %257, 0
  br i1 %tobool251, label %if.then.252, label %if.else.254

if.then.252:                                      ; preds = %if.end.249
  %258 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call253 = call i32 @lputs(%struct.stream_s* %258, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.62, i32 0, i32 0)) #5
  br label %if.end.306

if.else.254:                                      ; preds = %if.end.249
  %259 = load i32, i32* %index, align 4, !tbaa !58
  %cmp255 = icmp eq i32 %259, 0
  br i1 %cmp255, label %if.then.257, label %if.else.259

if.then.257:                                      ; preds = %if.else.254
  %260 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call258 = call i32 @lputs(%struct.stream_s* %260, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.62, i32 0, i32 0)) #5
  br label %if.end.305

if.else.259:                                      ; preds = %if.else.254
  %261 = load i32, i32* %format.addr, align 4, !tbaa !58
  %cmp260 = icmp eq i32 %261, 0
  br i1 %cmp260, label %if.then.262, label %if.else.283

if.then.262:                                      ; preds = %if.else.259
  %262 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor263 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %262, i32 0, i32 5
  %w264 = bitcast %union.stream_cursor_s* %cursor263 to %struct.stream_cursor_write_s*
  %ptr265 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w264, i32 0, i32 1
  %263 = load i8*, i8** %ptr265, align 8, !tbaa !55
  %264 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor266 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %264, i32 0, i32 5
  %w267 = bitcast %union.stream_cursor_s* %cursor266 to %struct.stream_cursor_write_s*
  %limit268 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w267, i32 0, i32 2
  %265 = load i8*, i8** %limit268, align 8, !tbaa !57
  %cmp269 = icmp uge i8* %263, %265
  br i1 %cmp269, label %cond.false.279, label %cond.true.271

cond.true.271:                                    ; preds = %if.then.262
  %266 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor272 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %266, i32 0, i32 5
  %w273 = bitcast %union.stream_cursor_s* %cursor272 to %struct.stream_cursor_write_s*
  %ptr274 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w273, i32 0, i32 1
  %267 = load i8*, i8** %ptr274, align 8, !tbaa !55
  %incdec.ptr275 = getelementptr inbounds i8, i8* %267, i32 1
  store i8* %incdec.ptr275, i8** %ptr274, align 8, !tbaa !55
  %268 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor276 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %268, i32 0, i32 5
  %w277 = bitcast %union.stream_cursor_s* %cursor276 to %struct.stream_cursor_write_s*
  %ptr278 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w277, i32 0, i32 1
  %269 = load i8*, i8** %ptr278, align 8, !tbaa !55
  store i8 58, i8* %269, align 1, !tbaa !58
  br label %cond.end.281

cond.false.279:                                   ; preds = %if.then.262
  %270 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call280 = call i32 @spputc(%struct.stream_s* %270, i8 zeroext 58) #5
  br label %cond.end.281

cond.end.281:                                     ; preds = %cond.false.279, %cond.true.271
  %cond282 = phi i32 [ 0, %cond.true.271 ], [ %call280, %cond.false.279 ]
  br label %if.end.304

if.else.283:                                      ; preds = %if.else.259
  %271 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor284 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %271, i32 0, i32 5
  %w285 = bitcast %union.stream_cursor_s* %cursor284 to %struct.stream_cursor_write_s*
  %ptr286 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w285, i32 0, i32 1
  %272 = load i8*, i8** %ptr286, align 8, !tbaa !55
  %273 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor287 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %273, i32 0, i32 5
  %w288 = bitcast %union.stream_cursor_s* %cursor287 to %struct.stream_cursor_write_s*
  %limit289 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w288, i32 0, i32 2
  %274 = load i8*, i8** %limit289, align 8, !tbaa !57
  %cmp290 = icmp uge i8* %272, %274
  br i1 %cmp290, label %cond.false.300, label %cond.true.292

cond.true.292:                                    ; preds = %if.else.283
  %275 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor293 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %275, i32 0, i32 5
  %w294 = bitcast %union.stream_cursor_s* %cursor293 to %struct.stream_cursor_write_s*
  %ptr295 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w294, i32 0, i32 1
  %276 = load i8*, i8** %ptr295, align 8, !tbaa !55
  %incdec.ptr296 = getelementptr inbounds i8, i8* %276, i32 1
  store i8* %incdec.ptr296, i8** %ptr295, align 8, !tbaa !55
  %277 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor297 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %277, i32 0, i32 5
  %w298 = bitcast %union.stream_cursor_s* %cursor297 to %struct.stream_cursor_write_s*
  %ptr299 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w298, i32 0, i32 1
  %278 = load i8*, i8** %ptr299, align 8, !tbaa !55
  store i8 59, i8* %278, align 1, !tbaa !58
  br label %cond.end.302

cond.false.300:                                   ; preds = %if.else.283
  %279 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call301 = call i32 @spputc(%struct.stream_s* %279, i8 zeroext 59) #5
  br label %cond.end.302

cond.end.302:                                     ; preds = %cond.false.300, %cond.true.292
  %cond303 = phi i32 [ 0, %cond.true.292 ], [ %call301, %cond.false.300 ]
  br label %if.end.304

if.end.304:                                       ; preds = %cond.end.302, %cond.end.281
  br label %if.end.305

if.end.305:                                       ; preds = %if.end.304, %if.then.257
  br label %if.end.306

if.end.306:                                       ; preds = %if.end.305, %if.then.252
  %280 = load i32, i32* %interpolate, align 4, !tbaa !5
  %cmp307 = icmp sgt i32 %280, 0
  br i1 %cmp307, label %if.then.309, label %if.end.310

if.then.309:                                      ; preds = %if.end.306
  %281 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %282 = load i32, i32* %interpolate, align 4, !tbaa !5
  call void @sput_lips_int(%struct.stream_s* %281, i32 %282) #5
  br label %if.end.310

if.end.310:                                       ; preds = %if.then.309, %if.end.306
  %283 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor311 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %283, i32 0, i32 5
  %w312 = bitcast %union.stream_cursor_s* %cursor311 to %struct.stream_cursor_write_s*
  %ptr313 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w312, i32 0, i32 1
  %284 = load i8*, i8** %ptr313, align 8, !tbaa !55
  %285 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor314 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %285, i32 0, i32 5
  %w315 = bitcast %union.stream_cursor_s* %cursor314 to %struct.stream_cursor_write_s*
  %limit316 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w315, i32 0, i32 2
  %286 = load i8*, i8** %limit316, align 8, !tbaa !57
  %cmp317 = icmp uge i8* %284, %286
  br i1 %cmp317, label %cond.false.327, label %cond.true.319

cond.true.319:                                    ; preds = %if.end.310
  %287 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor320 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %287, i32 0, i32 5
  %w321 = bitcast %union.stream_cursor_s* %cursor320 to %struct.stream_cursor_write_s*
  %ptr322 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w321, i32 0, i32 1
  %288 = load i8*, i8** %ptr322, align 8, !tbaa !55
  %incdec.ptr323 = getelementptr inbounds i8, i8* %288, i32 1
  store i8* %incdec.ptr323, i8** %ptr322, align 8, !tbaa !55
  %289 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor324 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %289, i32 0, i32 5
  %w325 = bitcast %union.stream_cursor_s* %cursor324 to %struct.stream_cursor_write_s*
  %ptr326 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w325, i32 0, i32 1
  %290 = load i8*, i8** %ptr326, align 8, !tbaa !55
  store i8 30, i8* %290, align 1, !tbaa !58
  br label %cond.end.329

cond.false.327:                                   ; preds = %if.end.310
  %291 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call328 = call i32 @spputc(%struct.stream_s* %291, i8 zeroext 30) #5
  br label %cond.end.329

cond.end.329:                                     ; preds = %cond.false.327, %cond.true.319
  %cond330 = phi i32 [ 0, %cond.true.319 ], [ %call328, %cond.false.327 ]
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end.329, %cond.end.176
  %292 = bitcast i32* %interpolate to i8*
  call void @llvm.lifetime.end(i64 4, i8* %292) #2
  %293 = bitcast %struct.gs_matrix_s* %imat to i8*
  call void @llvm.lifetime.end(i64 24, i8* %293) #2
  %294 = bitcast i32* %tbyte to i8*
  call void @llvm.lifetime.end(i64 4, i8* %294) #2
  %295 = bitcast i32* %dy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %295) #2
  %296 = bitcast i32* %dx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %296) #2
  %297 = bitcast i32* %cy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %297) #2
  %298 = bitcast i32* %cx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %298) #2
  %299 = bitcast i32* %by to i8*
  call void @llvm.lifetime.end(i64 4, i8* %299) #2
  %300 = bitcast i32* %bx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %300) #2
  %301 = bitcast i32* %ay to i8*
  call void @llvm.lifetime.end(i64 4, i8* %301) #2
  %302 = bitcast i32* %ax to i8*
  call void @llvm.lifetime.end(i64 4, i8* %302) #2
  %303 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %303) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.342 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.342

cleanup.342:                                      ; preds = %cleanup.cont, %cleanup, %if.then.53, %if.then.8, %if.then
  %304 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %304) #2
  %305 = bitcast i32* %can_do to i8*
  call void @llvm.lifetime.end(i64 4, i8* %305) #2
  %306 = bitcast i32* %num_components to i8*
  call void @llvm.lifetime.end(i64 4, i8* %306) #2
  %307 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %307) #2
  %308 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %308) #2
  %309 = bitcast %struct.gdev_vector_image_enum_s** %pie to i8*
  call void @llvm.lifetime.end(i64 8, i8* %309) #2
  %310 = bitcast %struct.gx_device_lips4v_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %310) #2
  %311 = bitcast %struct.gx_device_vector_s** %vdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %311) #2
  %312 = load i32, i32* %retval
  ret i32 %312
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define internal i32 @lips4v_range_check(%struct.gx_device_s* %dev) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %xdpi = alloca i32, align 4
  %ydpi = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %MediaSize = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 19
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %MediaSize, i32 0, i64 0
  %2 = load float, float* %arrayidx, align 4, !tbaa !69
  %conv = fptosi float %2 to i32
  store i32 %conv, i32* %width, align 4, !tbaa !5
  %3 = bitcast i32* %height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %MediaSize1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %4, i32 0, i32 19
  %arrayidx2 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize1, i32 0, i64 1
  %5 = load float, float* %arrayidx2, align 4, !tbaa !69
  %conv3 = fptosi float %5 to i32
  store i32 %conv3, i32* %height, align 4, !tbaa !5
  %6 = bitcast i32* %xdpi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %7, i32 0, i32 22
  %arrayidx4 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %8 = load float, float* %arrayidx4, align 4, !tbaa !69
  %conv5 = fptosi float %8 to i32
  store i32 %conv5, i32* %xdpi, align 4, !tbaa !5
  %9 = bitcast i32* %ydpi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %HWResolution6 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %10, i32 0, i32 22
  %arrayidx7 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution6, i32 0, i64 1
  %11 = load float, float* %arrayidx7, align 4, !tbaa !69
  %conv8 = fptosi float %11 to i32
  store i32 %conv8, i32* %ydpi, align 4, !tbaa !5
  %12 = load i32, i32* %width, align 4, !tbaa !5
  %13 = load i32, i32* %height, align 4, !tbaa !5
  %cmp = icmp sle i32 %12, %13
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %14 = load i32, i32* %width, align 4, !tbaa !5
  %cmp10 = icmp slt i32 %14, 284
  br i1 %cmp10, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %15 = load i32, i32* %width, align 4, !tbaa !5
  %cmp12 = icmp sgt i32 %15, 842
  br i1 %cmp12, label %land.lhs.true, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %lor.lhs.false
  %16 = load i32, i32* %height, align 4, !tbaa !5
  %cmp15 = icmp slt i32 %16, 419
  br i1 %cmp15, label %land.lhs.true, label %lor.lhs.false.17

lor.lhs.false.17:                                 ; preds = %lor.lhs.false.14
  %17 = load i32, i32* %height, align 4, !tbaa !5
  %cmp18 = icmp sgt i32 %17, 1190
  br i1 %cmp18, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false.17, %lor.lhs.false.14, %lor.lhs.false, %if.then
  %18 = load i32, i32* %width, align 4, !tbaa !5
  %cmp20 = icmp eq i32 %18, 792
  br i1 %cmp20, label %land.lhs.true.22, label %if.then.25

land.lhs.true.22:                                 ; preds = %land.lhs.true
  %19 = load i32, i32* %height, align 4, !tbaa !5
  %cmp23 = icmp eq i32 %19, 1224
  br i1 %cmp23, label %if.end, label %if.then.25

if.then.25:                                       ; preds = %land.lhs.true.22, %land.lhs.true
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.22, %lor.lhs.false.17
  br label %if.end.45

if.else:                                          ; preds = %entry
  %20 = load i32, i32* %width, align 4, !tbaa !5
  %cmp26 = icmp slt i32 %20, 419
  br i1 %cmp26, label %land.lhs.true.37, label %lor.lhs.false.28

lor.lhs.false.28:                                 ; preds = %if.else
  %21 = load i32, i32* %width, align 4, !tbaa !5
  %cmp29 = icmp sgt i32 %21, 1190
  br i1 %cmp29, label %land.lhs.true.37, label %lor.lhs.false.31

lor.lhs.false.31:                                 ; preds = %lor.lhs.false.28
  %22 = load i32, i32* %height, align 4, !tbaa !5
  %cmp32 = icmp slt i32 %22, 284
  br i1 %cmp32, label %land.lhs.true.37, label %lor.lhs.false.34

lor.lhs.false.34:                                 ; preds = %lor.lhs.false.31
  %23 = load i32, i32* %height, align 4, !tbaa !5
  %cmp35 = icmp sgt i32 %23, 842
  br i1 %cmp35, label %land.lhs.true.37, label %if.end.44

land.lhs.true.37:                                 ; preds = %lor.lhs.false.34, %lor.lhs.false.31, %lor.lhs.false.28, %if.else
  %24 = load i32, i32* %width, align 4, !tbaa !5
  %cmp38 = icmp eq i32 %24, 1224
  br i1 %cmp38, label %land.lhs.true.40, label %if.then.43

land.lhs.true.40:                                 ; preds = %land.lhs.true.37
  %25 = load i32, i32* %height, align 4, !tbaa !5
  %cmp41 = icmp eq i32 %25, 792
  br i1 %cmp41, label %if.end.44, label %if.then.43

if.then.43:                                       ; preds = %land.lhs.true.40, %land.lhs.true.37
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.44:                                        ; preds = %land.lhs.true.40, %lor.lhs.false.34
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.end
  %26 = load i32, i32* %xdpi, align 4, !tbaa !5
  %27 = load i32, i32* %ydpi, align 4, !tbaa !5
  %cmp46 = icmp ne i32 %26, %27
  br i1 %cmp46, label %if.then.48, label %if.else.49

if.then.48:                                       ; preds = %if.end.45
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.49:                                       ; preds = %if.end.45
  %28 = load i32, i32* %xdpi, align 4, !tbaa !5
  %cmp50 = icmp slt i32 %28, 60
  br i1 %cmp50, label %land.lhs.true.55, label %lor.lhs.false.52

lor.lhs.false.52:                                 ; preds = %if.else.49
  %29 = load i32, i32* %xdpi, align 4, !tbaa !5
  %cmp53 = icmp sgt i32 %29, 600
  br i1 %cmp53, label %land.lhs.true.55, label %if.end.59

land.lhs.true.55:                                 ; preds = %lor.lhs.false.52, %if.else.49
  %30 = load i32, i32* %xdpi, align 4, !tbaa !5
  %cmp56 = icmp ne i32 %30, 1200
  br i1 %cmp56, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %land.lhs.true.55
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.59:                                        ; preds = %land.lhs.true.55, %lor.lhs.false.52
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.60, %if.then.58, %if.then.48, %if.then.43, %if.then.25
  %31 = bitcast i32* %ydpi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #2
  %32 = bitcast i32* %xdpi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #2
  %33 = bitcast i32* %height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #2
  %34 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #2
  %35 = load i32, i32* %retval
  ret i32 %35
}

declare i32 @gdev_vector_open_file_options(%struct.gx_device_vector_s*, i32, i32) #1

declare void @gdev_vector_init(%struct.gx_device_vector_s*) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define internal i32 @lips4v_beginpage(%struct.gx_device_vector_s* %vdev) #0 {
entry:
  %retval = alloca i32, align 4
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %pdev = alloca %struct.gx_device_lips4v_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %dpi = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %paper_size = alloca i32, align 4
  %x0 = alloca i32, align 4
  %y0 = alloca i32, align 4
  %dpi_char = alloca [6 x i8], align 1
  %unit = alloca [14 x i8], align 1
  %page_header = alloca [8 x i8], align 1
  %l4vmono_page_header = alloca [7 x i8], align 1
  %l4vcolor_page_header = alloca [7 x i8], align 1
  %duplex_char = alloca [6 x i8], align 1
  %tumble_char = alloca [6 x i8], align 1
  %toner_d = alloca [26 x i8], align 16
  %toner_s = alloca [5 x i8], align 1
  %nup_char = alloca [10 x i8], align 1
  %username = alloca [18 x i8], align 16
  %feedmode = alloca [5 x i8], align 1
  %paper = alloca [16 x i8], align 16
  %faceup_char = alloca [256 x i8], align 16
  %dup = alloca i32, align 4
  %dupset = alloca i32, align 4
  %tum = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__s1 = alloca i8*, align 8
  %__result = alloca i32, align 4
  %tmp120 = alloca i32, align 4
  %__s1_len145 = alloca i64, align 8
  %__s2_len147 = alloca i64, align 8
  %tmp148 = alloca i32, align 4
  %__s1155 = alloca i8*, align 8
  %__result159 = alloca i32, align 4
  %tmp197 = alloca i32, align 4
  %__s1_len207 = alloca i64, align 8
  %__s2_len209 = alloca i64, align 8
  %tmp210 = alloca i32, align 4
  %__s1217 = alloca i8*, align 8
  %__result221 = alloca i32, align 4
  %tmp259 = alloca i32, align 4
  %__s1_len292 = alloca i64, align 8
  %__s2_len294 = alloca i64, align 8
  %tmp295 = alloca i32, align 4
  %__s1302 = alloca i8*, align 8
  %__result306 = alloca i32, align 4
  %tmp344 = alloca i32, align 4
  %__s1_len377 = alloca i64, align 8
  %__s2_len379 = alloca i64, align 8
  %tmp380 = alloca i32, align 4
  %__s1387 = alloca i8*, align 8
  %__result391 = alloca i32, align 4
  %tmp429 = alloca i32, align 4
  %__s1_len467 = alloca i64, align 8
  %__s2_len469 = alloca i64, align 8
  %tmp470 = alloca i32, align 4
  %__s1477 = alloca i8*, align 8
  %__result481 = alloca i32, align 4
  %tmp519 = alloca i32, align 4
  %__s1_len530 = alloca i64, align 8
  %__s2_len532 = alloca i64, align 8
  %tmp533 = alloca i32, align 4
  %__s1540 = alloca i8*, align 8
  %__result544 = alloca i32, align 4
  %tmp582 = alloca i32, align 4
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_lips4v_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_vector_s* %1 to %struct.gx_device_lips4v_s*
  store %struct.gx_device_lips4v_s* %2, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %3 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %4, i32 0, i32 47
  %5 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !138
  store %struct.stream_s* %5, %struct.stream_s** %s, align 8, !tbaa !1
  %6 = bitcast i32* %dpi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %7, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %8 = load float, float* %arrayidx, align 4, !tbaa !69
  %conv = fptosi float %8 to i32
  store i32 %conv, i32* %dpi, align 4, !tbaa !5
  %9 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %MediaSize = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %10, i32 0, i32 19
  %arrayidx1 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize, i32 0, i64 0
  %11 = load float, float* %arrayidx1, align 4, !tbaa !69
  %conv2 = fptosi float %11 to i32
  store i32 %conv2, i32* %width, align 4, !tbaa !5
  %12 = bitcast i32* %height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  %13 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %MediaSize3 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %13, i32 0, i32 19
  %arrayidx4 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize3, i32 0, i64 1
  %14 = load float, float* %arrayidx4, align 4, !tbaa !69
  %conv5 = fptosi float %14 to i32
  store i32 %conv5, i32* %height, align 4, !tbaa !5
  %15 = bitcast i32* %paper_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #2
  %16 = bitcast i32* %x0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #2
  %17 = bitcast i32* %y0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #2
  %18 = bitcast [6 x i8]* %dpi_char to i8*
  call void @llvm.lifetime.start(i64 6, i8* %18) #2
  %19 = bitcast [14 x i8]* %unit to i8*
  call void @llvm.lifetime.start(i64 14, i8* %19) #2
  %20 = bitcast [8 x i8]* %page_header to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #2
  %21 = bitcast [7 x i8]* %l4vmono_page_header to i8*
  call void @llvm.lifetime.start(i64 7, i8* %21) #2
  %22 = bitcast [7 x i8]* %l4vcolor_page_header to i8*
  call void @llvm.lifetime.start(i64 7, i8* %22) #2
  %23 = bitcast [6 x i8]* %duplex_char to i8*
  call void @llvm.lifetime.start(i64 6, i8* %23) #2
  %24 = bitcast [6 x i8]* %tumble_char to i8*
  call void @llvm.lifetime.start(i64 6, i8* %24) #2
  %25 = bitcast [26 x i8]* %toner_d to i8*
  call void @llvm.lifetime.start(i64 26, i8* %25) #2
  %26 = bitcast [5 x i8]* %toner_s to i8*
  call void @llvm.lifetime.start(i64 5, i8* %26) #2
  %27 = bitcast [10 x i8]* %nup_char to i8*
  call void @llvm.lifetime.start(i64 10, i8* %27) #2
  %28 = bitcast [18 x i8]* %username to i8*
  call void @llvm.lifetime.start(i64 18, i8* %28) #2
  %29 = bitcast [5 x i8]* %feedmode to i8*
  call void @llvm.lifetime.start(i64 5, i8* %29) #2
  %30 = bitcast [16 x i8]* %paper to i8*
  call void @llvm.lifetime.start(i64 16, i8* %30) #2
  %31 = bitcast [256 x i8]* %faceup_char to i8*
  call void @llvm.lifetime.start(i64 256, i8* %31) #2
  %32 = bitcast i32* %dup to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #2
  %33 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %Duplex = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %33, i32 0, i32 84
  %34 = load i32, i32* %Duplex, align 4, !tbaa !110
  store i32 %34, i32* %dup, align 4, !tbaa !5
  %35 = bitcast i32* %dupset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %35) #2
  %36 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %Duplex_set = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %36, i32 0, i32 85
  %37 = load i32, i32* %Duplex_set, align 4, !tbaa !86
  store i32 %37, i32* %dupset, align 4, !tbaa !5
  %38 = bitcast i32* %tum to i8*
  call void @llvm.lifetime.start(i64 4, i8* %38) #2
  %39 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %Tumble = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %39, i32 0, i32 86
  %40 = load i32, i32* %Tumble, align 4, !tbaa !93
  store i32 %40, i32* %tum, align 4, !tbaa !5
  %41 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %first_page = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %41, i32 0, i32 82
  %42 = load i32, i32* %first_page, align 4, !tbaa !53
  %tobool = icmp ne i32 %42, 0
  br i1 %tobool, label %if.then, label %if.end.77

if.then:                                          ; preds = %entry
  %43 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %pjl = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %43, i32 0, i32 69
  %44 = load i32, i32* %pjl, align 4, !tbaa !67
  %tobool6 = icmp ne i32 %44, 0
  br i1 %tobool6, label %if.then.7, label %if.end.54

if.then.7:                                        ; preds = %if.then
  %45 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %46 = load i8*, i8** @l4v_file_header1, align 8, !tbaa !1
  %call = call i32 @lputs(%struct.stream_s* %45, i8* %46) #5
  %47 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %HWResolution8 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %47, i32 0, i32 22
  %arrayidx9 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution8, i32 0, i64 0
  %48 = load float, float* %arrayidx9, align 4, !tbaa !69
  %conv10 = fptosi float %48 to i32
  %cmp = icmp eq i32 %conv10, 1200
  br i1 %cmp, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.then.7
  %49 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call13 = call i32 @lputs(%struct.stream_s* %49, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i32 0, i32 0)) #5
  br label %if.end.30

if.else:                                          ; preds = %if.then.7
  %50 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %HWResolution14 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %50, i32 0, i32 22
  %arrayidx15 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution14, i32 0, i64 0
  %51 = load float, float* %arrayidx15, align 4, !tbaa !69
  %conv16 = fptosi float %51 to i32
  %cmp17 = icmp eq i32 %conv16, 600
  br i1 %cmp17, label %if.then.19, label %if.else.21

if.then.19:                                       ; preds = %if.else
  %52 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call20 = call i32 @lputs(%struct.stream_s* %52, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0)) #5
  br label %if.end.29

if.else.21:                                       ; preds = %if.else
  %53 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %HWResolution22 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %53, i32 0, i32 22
  %arrayidx23 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution22, i32 0, i64 0
  %54 = load float, float* %arrayidx23, align 4, !tbaa !69
  %conv24 = fptosi float %54 to i32
  %cmp25 = icmp eq i32 %conv24, 300
  br i1 %cmp25, label %if.then.27, label %if.end

if.then.27:                                       ; preds = %if.else.21
  %55 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call28 = call i32 @lputs(%struct.stream_s* %55, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i32 0, i32 0)) #5
  br label %if.end

if.end:                                           ; preds = %if.then.27, %if.else.21
  br label %if.end.29

if.end.29:                                        ; preds = %if.end, %if.then.19
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.then.12
  %56 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %57 = load i8*, i8** @l4v_file_header2, align 8, !tbaa !1
  %call31 = call i32 @lputs(%struct.stream_s* %56, i8* %57) #5
  %58 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %toner_density = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %58, i32 0, i32 70
  %59 = load i32, i32* %toner_density, align 4, !tbaa !95
  %tobool32 = icmp ne i32 %59, 0
  br i1 %tobool32, label %if.then.33, label %if.end.38

if.then.33:                                       ; preds = %if.end.30
  %arraydecay = getelementptr inbounds [26 x i8], [26 x i8]* %toner_d, i32 0, i32 0
  %60 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %toner_density34 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %60, i32 0, i32 70
  %61 = load i32, i32* %toner_density34, align 4, !tbaa !95
  %call35 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i32 0, i32 0), i32 %61) #5
  %62 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %arraydecay36 = getelementptr inbounds [26 x i8], [26 x i8]* %toner_d, i32 0, i32 0
  %call37 = call i32 @lputs(%struct.stream_s* %62, i8* %arraydecay36) #5
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.33, %if.end.30
  %63 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %toner_saving_set = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %63, i32 0, i32 72
  %64 = load i32, i32* %toner_saving_set, align 4, !tbaa !85
  %tobool39 = icmp ne i32 %64, 0
  br i1 %tobool39, label %if.then.40, label %if.end.52

if.then.40:                                       ; preds = %if.end.38
  %65 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call41 = call i32 @lputs(%struct.stream_s* %65, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0)) #5
  %66 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %toner_saving = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %66, i32 0, i32 71
  %67 = load i32, i32* %toner_saving, align 4, !tbaa !96
  %tobool42 = icmp ne i32 %67, 0
  br i1 %tobool42, label %if.then.43, label %if.else.46

if.then.43:                                       ; preds = %if.then.40
  %arraydecay44 = getelementptr inbounds [5 x i8], [5 x i8]* %toner_s, i32 0, i32 0
  %call45 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0)) #5
  br label %if.end.49

if.else.46:                                       ; preds = %if.then.40
  %arraydecay47 = getelementptr inbounds [5 x i8], [5 x i8]* %toner_s, i32 0, i32 0
  %call48 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0)) #5
  br label %if.end.49

if.end.49:                                        ; preds = %if.else.46, %if.then.43
  %68 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %arraydecay50 = getelementptr inbounds [5 x i8], [5 x i8]* %toner_s, i32 0, i32 0
  %call51 = call i32 @lputs(%struct.stream_s* %68, i8* %arraydecay50) #5
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.49, %if.end.38
  %69 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %70 = load i8*, i8** @l4v_file_header3, align 8, !tbaa !1
  %call53 = call i32 @lputs(%struct.stream_s* %69, i8* %70) #5
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.52, %if.then
  %71 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %72 = load i8*, i8** @l4v_file_header4, align 8, !tbaa !1
  %call55 = call i32 @lputs(%struct.stream_s* %71, i8* %72) #5
  %73 = load i32, i32* %dpi, align 4, !tbaa !5
  %cmp56 = icmp sgt i32 %73, 9999
  br i1 %cmp56, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %if.end.54
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.59:                                        ; preds = %if.end.54
  %arraydecay60 = getelementptr inbounds [6 x i8], [6 x i8]* %dpi_char, i32 0, i32 0
  %74 = load i32, i32* %dpi, align 4, !tbaa !5
  %call61 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i32 %74) #5
  %75 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %arraydecay62 = getelementptr inbounds [6 x i8], [6 x i8]* %dpi_char, i32 0, i32 0
  %call63 = call i32 @lputs(%struct.stream_s* %75, i8* %arraydecay62) #5
  %76 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %76, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %77 = load i16, i16* %depth, align 2, !tbaa !75
  %conv64 = zext i16 %77 to i32
  %cmp65 = icmp eq i32 %conv64, 8
  br i1 %cmp65, label %if.then.67, label %if.else.69

if.then.67:                                       ; preds = %if.end.59
  %78 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %79 = load i8*, i8** @l4vmono_file_header, align 8, !tbaa !1
  %call68 = call i32 @lputs(%struct.stream_s* %78, i8* %79) #5
  br label %if.end.71

if.else.69:                                       ; preds = %if.end.59
  %80 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %81 = load i8*, i8** @l4vcolor_file_header, align 8, !tbaa !1
  %call70 = call i32 @lputs(%struct.stream_s* %80, i8* %81) #5
  br label %if.end.71

if.end.71:                                        ; preds = %if.else.69, %if.then.67
  %arraydecay72 = getelementptr inbounds [18 x i8], [18 x i8]* %username, i32 0, i32 0
  %82 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %Username = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %82, i32 0, i32 68
  %arraydecay73 = getelementptr inbounds [12 x i8], [12 x i8]* %Username, i32 0, i32 0
  %call74 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay72, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i32 144, i8* %arraydecay73, i32 156) #5
  %83 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %arraydecay75 = getelementptr inbounds [18 x i8], [18 x i8]* %username, i32 0, i32 0
  %call76 = call i32 @lputs(%struct.stream_s* %83, i8* %arraydecay75) #5
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.71, %entry
  %84 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %84) #2
  %85 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %85) #2
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i64 1) to i64), i64 ptrtoint ([11 x i8]* @.str.12 to i64)), i64 1), label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %if.end.77
  %call78 = call i64 @strlen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0)) #7
  store i64 %call78, i64* %__s2_len, align 8, !tbaa !68
  %86 = load i64, i64* %__s2_len, align 8, !tbaa !68
  %cmp79 = icmp ult i64 %86, 4
  br i1 %cmp79, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %87 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %87) #2
  %88 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %mediaType = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %88, i32 0, i32 81
  %arraydecay82 = getelementptr inbounds [32 x i8], [32 x i8]* %mediaType, i32 0, i32 0
  store i8* %arraydecay82, i8** %__s1, align 8, !tbaa !1
  %89 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %89) #2
  %90 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx84 = getelementptr inbounds i8, i8* %90, i64 0
  %91 = load i8, i8* %arrayidx84, align 1, !tbaa !58
  %conv85 = zext i8 %91 to i32
  %92 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), align 1, !tbaa !58
  %conv86 = zext i8 %92 to i32
  %sub = sub nsw i32 %conv85, %conv86
  store i32 %sub, i32* %__result, align 4, !tbaa !5
  %93 = load i64, i64* %__s2_len, align 8, !tbaa !68
  %cmp87 = icmp ugt i64 %93, 0
  br i1 %cmp87, label %land.lhs.true.89, label %if.end.119

land.lhs.true.89:                                 ; preds = %cond.true
  %94 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp90 = icmp eq i32 %94, 0
  br i1 %cmp90, label %if.then.92, label %if.end.119

if.then.92:                                       ; preds = %land.lhs.true.89
  %95 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx93 = getelementptr inbounds i8, i8* %95, i64 1
  %96 = load i8, i8* %arrayidx93, align 1, !tbaa !58
  %conv94 = zext i8 %96 to i32
  %97 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i64 1), align 1, !tbaa !58
  %conv95 = zext i8 %97 to i32
  %sub96 = sub nsw i32 %conv94, %conv95
  store i32 %sub96, i32* %__result, align 4, !tbaa !5
  %98 = load i64, i64* %__s2_len, align 8, !tbaa !68
  %cmp97 = icmp ugt i64 %98, 1
  br i1 %cmp97, label %land.lhs.true.99, label %if.end.118

land.lhs.true.99:                                 ; preds = %if.then.92
  %99 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp100 = icmp eq i32 %99, 0
  br i1 %cmp100, label %if.then.102, label %if.end.118

if.then.102:                                      ; preds = %land.lhs.true.99
  %100 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx103 = getelementptr inbounds i8, i8* %100, i64 2
  %101 = load i8, i8* %arrayidx103, align 1, !tbaa !58
  %conv104 = zext i8 %101 to i32
  %102 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i64 2), align 1, !tbaa !58
  %conv105 = zext i8 %102 to i32
  %sub106 = sub nsw i32 %conv104, %conv105
  store i32 %sub106, i32* %__result, align 4, !tbaa !5
  %103 = load i64, i64* %__s2_len, align 8, !tbaa !68
  %cmp107 = icmp ugt i64 %103, 2
  br i1 %cmp107, label %land.lhs.true.109, label %if.end.117

land.lhs.true.109:                                ; preds = %if.then.102
  %104 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp110 = icmp eq i32 %104, 0
  br i1 %cmp110, label %if.then.112, label %if.end.117

if.then.112:                                      ; preds = %land.lhs.true.109
  %105 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx113 = getelementptr inbounds i8, i8* %105, i64 3
  %106 = load i8, i8* %arrayidx113, align 1, !tbaa !58
  %conv114 = zext i8 %106 to i32
  %107 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i64 3), align 1, !tbaa !58
  %conv115 = zext i8 %107 to i32
  %sub116 = sub nsw i32 %conv114, %conv115
  store i32 %sub116, i32* %__result, align 4, !tbaa !5
  br label %if.end.117

if.end.117:                                       ; preds = %if.then.112, %land.lhs.true.109, %if.then.102
  br label %if.end.118

if.end.118:                                       ; preds = %if.end.117, %land.lhs.true.99, %if.then.92
  br label %if.end.119

if.end.119:                                       ; preds = %if.end.118, %land.lhs.true.89, %cond.true
  %108 = load i32, i32* %__result, align 4, !tbaa !5
  store i32 %108, i32* %tmp120, !tbaa !5
  %109 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %109) #2
  %110 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %110) #2
  %111 = load i32, i32* %tmp120, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %if.end.77
  %112 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %mediaType121 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %112, i32 0, i32 81
  %arraydecay122 = getelementptr inbounds [32 x i8], [32 x i8]* %mediaType121, i32 0, i32 0
  %call123 = call i32 @strcmp(i8* %arraydecay122, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0)) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.119
  %cond = phi i32 [ %111, %if.end.119 ], [ %call123, %cond.false ]
  store i32 %cond, i32* %tmp, !tbaa !5
  %113 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %113) #2
  %114 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %114) #2
  %115 = load i32, i32* %tmp, !tbaa !5
  %cmp124 = icmp eq i32 %115, 0
  br i1 %cmp124, label %if.then.126, label %if.else.143

if.then.126:                                      ; preds = %cond.end
  %116 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %116, i32 0, i32 5
  %w = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_write_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 1
  %117 = load i8*, i8** %ptr, align 8, !tbaa !55
  %118 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor127 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %118, i32 0, i32 5
  %w128 = bitcast %union.stream_cursor_s* %cursor127 to %struct.stream_cursor_write_s*
  %limit = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w128, i32 0, i32 2
  %119 = load i8*, i8** %limit, align 8, !tbaa !57
  %cmp129 = icmp uge i8* %117, %119
  br i1 %cmp129, label %cond.false.138, label %cond.true.131

cond.true.131:                                    ; preds = %if.then.126
  %120 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor132 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %120, i32 0, i32 5
  %w133 = bitcast %union.stream_cursor_s* %cursor132 to %struct.stream_cursor_write_s*
  %ptr134 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w133, i32 0, i32 1
  %121 = load i8*, i8** %ptr134, align 8, !tbaa !55
  %incdec.ptr = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %incdec.ptr, i8** %ptr134, align 8, !tbaa !55
  %122 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor135 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %122, i32 0, i32 5
  %w136 = bitcast %union.stream_cursor_s* %cursor135 to %struct.stream_cursor_write_s*
  %ptr137 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w136, i32 0, i32 1
  %123 = load i8*, i8** %ptr137, align 8, !tbaa !55
  store i8 -101, i8* %123, align 1, !tbaa !58
  br label %cond.end.140

cond.false.138:                                   ; preds = %if.then.126
  %124 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call139 = call i32 @spputc(%struct.stream_s* %124, i8 zeroext -101) #5
  br label %cond.end.140

cond.end.140:                                     ; preds = %cond.false.138, %cond.true.131
  %cond141 = phi i32 [ 0, %cond.true.131 ], [ %call139, %cond.false.138 ]
  %125 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call142 = call i32 @lputs(%struct.stream_s* %125, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0)) #5
  br label %if.end.463

if.else.143:                                      ; preds = %cond.end
  %126 = bitcast i64* %__s1_len145 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %126) #2
  %127 = bitcast i64* %__s2_len147 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %127) #2
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i64 1) to i64), i64 ptrtoint ([4 x i8]* @.str.14 to i64)), i64 1), label %land.lhs.true.149, label %cond.false.198

land.lhs.true.149:                                ; preds = %if.else.143
  %call150 = call i64 @strlen(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0)) #7
  store i64 %call150, i64* %__s2_len147, align 8, !tbaa !68
  %128 = load i64, i64* %__s2_len147, align 8, !tbaa !68
  %cmp151 = icmp ult i64 %128, 4
  br i1 %cmp151, label %cond.true.153, label %cond.false.198

cond.true.153:                                    ; preds = %land.lhs.true.149
  %129 = bitcast i8** %__s1155 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %129) #2
  %130 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %mediaType156 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %130, i32 0, i32 81
  %arraydecay157 = getelementptr inbounds [32 x i8], [32 x i8]* %mediaType156, i32 0, i32 0
  store i8* %arraydecay157, i8** %__s1155, align 8, !tbaa !1
  %131 = bitcast i32* %__result159 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %131) #2
  %132 = load i8*, i8** %__s1155, align 8, !tbaa !1
  %arrayidx160 = getelementptr inbounds i8, i8* %132, i64 0
  %133 = load i8, i8* %arrayidx160, align 1, !tbaa !58
  %conv161 = zext i8 %133 to i32
  %134 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), align 1, !tbaa !58
  %conv162 = zext i8 %134 to i32
  %sub163 = sub nsw i32 %conv161, %conv162
  store i32 %sub163, i32* %__result159, align 4, !tbaa !5
  %135 = load i64, i64* %__s2_len147, align 8, !tbaa !68
  %cmp164 = icmp ugt i64 %135, 0
  br i1 %cmp164, label %land.lhs.true.166, label %if.end.196

land.lhs.true.166:                                ; preds = %cond.true.153
  %136 = load i32, i32* %__result159, align 4, !tbaa !5
  %cmp167 = icmp eq i32 %136, 0
  br i1 %cmp167, label %if.then.169, label %if.end.196

if.then.169:                                      ; preds = %land.lhs.true.166
  %137 = load i8*, i8** %__s1155, align 8, !tbaa !1
  %arrayidx170 = getelementptr inbounds i8, i8* %137, i64 1
  %138 = load i8, i8* %arrayidx170, align 1, !tbaa !58
  %conv171 = zext i8 %138 to i32
  %139 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i64 1), align 1, !tbaa !58
  %conv172 = zext i8 %139 to i32
  %sub173 = sub nsw i32 %conv171, %conv172
  store i32 %sub173, i32* %__result159, align 4, !tbaa !5
  %140 = load i64, i64* %__s2_len147, align 8, !tbaa !68
  %cmp174 = icmp ugt i64 %140, 1
  br i1 %cmp174, label %land.lhs.true.176, label %if.end.195

land.lhs.true.176:                                ; preds = %if.then.169
  %141 = load i32, i32* %__result159, align 4, !tbaa !5
  %cmp177 = icmp eq i32 %141, 0
  br i1 %cmp177, label %if.then.179, label %if.end.195

if.then.179:                                      ; preds = %land.lhs.true.176
  %142 = load i8*, i8** %__s1155, align 8, !tbaa !1
  %arrayidx180 = getelementptr inbounds i8, i8* %142, i64 2
  %143 = load i8, i8* %arrayidx180, align 1, !tbaa !58
  %conv181 = zext i8 %143 to i32
  %144 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i64 2), align 1, !tbaa !58
  %conv182 = zext i8 %144 to i32
  %sub183 = sub nsw i32 %conv181, %conv182
  store i32 %sub183, i32* %__result159, align 4, !tbaa !5
  %145 = load i64, i64* %__s2_len147, align 8, !tbaa !68
  %cmp184 = icmp ugt i64 %145, 2
  br i1 %cmp184, label %land.lhs.true.186, label %if.end.194

land.lhs.true.186:                                ; preds = %if.then.179
  %146 = load i32, i32* %__result159, align 4, !tbaa !5
  %cmp187 = icmp eq i32 %146, 0
  br i1 %cmp187, label %if.then.189, label %if.end.194

if.then.189:                                      ; preds = %land.lhs.true.186
  %147 = load i8*, i8** %__s1155, align 8, !tbaa !1
  %arrayidx190 = getelementptr inbounds i8, i8* %147, i64 3
  %148 = load i8, i8* %arrayidx190, align 1, !tbaa !58
  %conv191 = zext i8 %148 to i32
  %149 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i64 3), align 1, !tbaa !58
  %conv192 = zext i8 %149 to i32
  %sub193 = sub nsw i32 %conv191, %conv192
  store i32 %sub193, i32* %__result159, align 4, !tbaa !5
  br label %if.end.194

if.end.194:                                       ; preds = %if.then.189, %land.lhs.true.186, %if.then.179
  br label %if.end.195

if.end.195:                                       ; preds = %if.end.194, %land.lhs.true.176, %if.then.169
  br label %if.end.196

if.end.196:                                       ; preds = %if.end.195, %land.lhs.true.166, %cond.true.153
  %150 = load i32, i32* %__result159, align 4, !tbaa !5
  store i32 %150, i32* %tmp197, !tbaa !5
  %151 = bitcast i32* %__result159 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %151) #2
  %152 = bitcast i8** %__s1155 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %152) #2
  %153 = load i32, i32* %tmp197, !tbaa !5
  br label %cond.end.202

cond.false.198:                                   ; preds = %land.lhs.true.149, %if.else.143
  %154 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %mediaType199 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %154, i32 0, i32 81
  %arraydecay200 = getelementptr inbounds [32 x i8], [32 x i8]* %mediaType199, i32 0, i32 0
  %call201 = call i32 @strcmp(i8* %arraydecay200, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0)) #6
  br label %cond.end.202

cond.end.202:                                     ; preds = %cond.false.198, %if.end.196
  %cond203 = phi i32 [ %153, %if.end.196 ], [ %call201, %cond.false.198 ]
  store i32 %cond203, i32* %tmp148, !tbaa !5
  %155 = bitcast i64* %__s2_len147 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %155) #2
  %156 = bitcast i64* %__s1_len145 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %156) #2
  %157 = load i32, i32* %tmp148, !tbaa !5
  %cmp204 = icmp eq i32 %157, 0
  br i1 %cmp204, label %if.then.268, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.202
  %158 = bitcast i64* %__s1_len207 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %158) #2
  %159 = bitcast i64* %__s2_len209 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %159) #2
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i64 1) to i64), i64 ptrtoint ([17 x i8]* @.str.15 to i64)), i64 1), label %land.lhs.true.211, label %cond.false.260

land.lhs.true.211:                                ; preds = %lor.lhs.false
  %call212 = call i64 @strlen(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0)) #7
  store i64 %call212, i64* %__s2_len209, align 8, !tbaa !68
  %160 = load i64, i64* %__s2_len209, align 8, !tbaa !68
  %cmp213 = icmp ult i64 %160, 4
  br i1 %cmp213, label %cond.true.215, label %cond.false.260

cond.true.215:                                    ; preds = %land.lhs.true.211
  %161 = bitcast i8** %__s1217 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %161) #2
  %162 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %mediaType218 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %162, i32 0, i32 81
  %arraydecay219 = getelementptr inbounds [32 x i8], [32 x i8]* %mediaType218, i32 0, i32 0
  store i8* %arraydecay219, i8** %__s1217, align 8, !tbaa !1
  %163 = bitcast i32* %__result221 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %163) #2
  %164 = load i8*, i8** %__s1217, align 8, !tbaa !1
  %arrayidx222 = getelementptr inbounds i8, i8* %164, i64 0
  %165 = load i8, i8* %arrayidx222, align 1, !tbaa !58
  %conv223 = zext i8 %165 to i32
  %166 = load i8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), align 1, !tbaa !58
  %conv224 = zext i8 %166 to i32
  %sub225 = sub nsw i32 %conv223, %conv224
  store i32 %sub225, i32* %__result221, align 4, !tbaa !5
  %167 = load i64, i64* %__s2_len209, align 8, !tbaa !68
  %cmp226 = icmp ugt i64 %167, 0
  br i1 %cmp226, label %land.lhs.true.228, label %if.end.258

land.lhs.true.228:                                ; preds = %cond.true.215
  %168 = load i32, i32* %__result221, align 4, !tbaa !5
  %cmp229 = icmp eq i32 %168, 0
  br i1 %cmp229, label %if.then.231, label %if.end.258

if.then.231:                                      ; preds = %land.lhs.true.228
  %169 = load i8*, i8** %__s1217, align 8, !tbaa !1
  %arrayidx232 = getelementptr inbounds i8, i8* %169, i64 1
  %170 = load i8, i8* %arrayidx232, align 1, !tbaa !58
  %conv233 = zext i8 %170 to i32
  %171 = load i8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i64 1), align 1, !tbaa !58
  %conv234 = zext i8 %171 to i32
  %sub235 = sub nsw i32 %conv233, %conv234
  store i32 %sub235, i32* %__result221, align 4, !tbaa !5
  %172 = load i64, i64* %__s2_len209, align 8, !tbaa !68
  %cmp236 = icmp ugt i64 %172, 1
  br i1 %cmp236, label %land.lhs.true.238, label %if.end.257

land.lhs.true.238:                                ; preds = %if.then.231
  %173 = load i32, i32* %__result221, align 4, !tbaa !5
  %cmp239 = icmp eq i32 %173, 0
  br i1 %cmp239, label %if.then.241, label %if.end.257

if.then.241:                                      ; preds = %land.lhs.true.238
  %174 = load i8*, i8** %__s1217, align 8, !tbaa !1
  %arrayidx242 = getelementptr inbounds i8, i8* %174, i64 2
  %175 = load i8, i8* %arrayidx242, align 1, !tbaa !58
  %conv243 = zext i8 %175 to i32
  %176 = load i8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i64 2), align 1, !tbaa !58
  %conv244 = zext i8 %176 to i32
  %sub245 = sub nsw i32 %conv243, %conv244
  store i32 %sub245, i32* %__result221, align 4, !tbaa !5
  %177 = load i64, i64* %__s2_len209, align 8, !tbaa !68
  %cmp246 = icmp ugt i64 %177, 2
  br i1 %cmp246, label %land.lhs.true.248, label %if.end.256

land.lhs.true.248:                                ; preds = %if.then.241
  %178 = load i32, i32* %__result221, align 4, !tbaa !5
  %cmp249 = icmp eq i32 %178, 0
  br i1 %cmp249, label %if.then.251, label %if.end.256

if.then.251:                                      ; preds = %land.lhs.true.248
  %179 = load i8*, i8** %__s1217, align 8, !tbaa !1
  %arrayidx252 = getelementptr inbounds i8, i8* %179, i64 3
  %180 = load i8, i8* %arrayidx252, align 1, !tbaa !58
  %conv253 = zext i8 %180 to i32
  %181 = load i8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i64 3), align 1, !tbaa !58
  %conv254 = zext i8 %181 to i32
  %sub255 = sub nsw i32 %conv253, %conv254
  store i32 %sub255, i32* %__result221, align 4, !tbaa !5
  br label %if.end.256

if.end.256:                                       ; preds = %if.then.251, %land.lhs.true.248, %if.then.241
  br label %if.end.257

if.end.257:                                       ; preds = %if.end.256, %land.lhs.true.238, %if.then.231
  br label %if.end.258

if.end.258:                                       ; preds = %if.end.257, %land.lhs.true.228, %cond.true.215
  %182 = load i32, i32* %__result221, align 4, !tbaa !5
  store i32 %182, i32* %tmp259, !tbaa !5
  %183 = bitcast i32* %__result221 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %183) #2
  %184 = bitcast i8** %__s1217 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %184) #2
  %185 = load i32, i32* %tmp259, !tbaa !5
  br label %cond.end.264

cond.false.260:                                   ; preds = %land.lhs.true.211, %lor.lhs.false
  %186 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %mediaType261 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %186, i32 0, i32 81
  %arraydecay262 = getelementptr inbounds [32 x i8], [32 x i8]* %mediaType261, i32 0, i32 0
  %call263 = call i32 @strcmp(i8* %arraydecay262, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0)) #6
  br label %cond.end.264

cond.end.264:                                     ; preds = %cond.false.260, %if.end.258
  %cond265 = phi i32 [ %185, %if.end.258 ], [ %call263, %cond.false.260 ]
  store i32 %cond265, i32* %tmp210, !tbaa !5
  %187 = bitcast i64* %__s2_len209 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %187) #2
  %188 = bitcast i64* %__s1_len207 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %188) #2
  %189 = load i32, i32* %tmp210, !tbaa !5
  %cmp266 = icmp eq i32 %189, 0
  br i1 %cmp266, label %if.then.268, label %if.else.290

if.then.268:                                      ; preds = %cond.end.264, %cond.end.202
  %190 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor269 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %190, i32 0, i32 5
  %w270 = bitcast %union.stream_cursor_s* %cursor269 to %struct.stream_cursor_write_s*
  %ptr271 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w270, i32 0, i32 1
  %191 = load i8*, i8** %ptr271, align 8, !tbaa !55
  %192 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor272 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %192, i32 0, i32 5
  %w273 = bitcast %union.stream_cursor_s* %cursor272 to %struct.stream_cursor_write_s*
  %limit274 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w273, i32 0, i32 2
  %193 = load i8*, i8** %limit274, align 8, !tbaa !57
  %cmp275 = icmp uge i8* %191, %193
  br i1 %cmp275, label %cond.false.285, label %cond.true.277

cond.true.277:                                    ; preds = %if.then.268
  %194 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor278 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %194, i32 0, i32 5
  %w279 = bitcast %union.stream_cursor_s* %cursor278 to %struct.stream_cursor_write_s*
  %ptr280 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w279, i32 0, i32 1
  %195 = load i8*, i8** %ptr280, align 8, !tbaa !55
  %incdec.ptr281 = getelementptr inbounds i8, i8* %195, i32 1
  store i8* %incdec.ptr281, i8** %ptr280, align 8, !tbaa !55
  %196 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor282 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %196, i32 0, i32 5
  %w283 = bitcast %union.stream_cursor_s* %cursor282 to %struct.stream_cursor_write_s*
  %ptr284 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w283, i32 0, i32 1
  %197 = load i8*, i8** %ptr284, align 8, !tbaa !55
  store i8 -101, i8* %197, align 1, !tbaa !58
  br label %cond.end.287

cond.false.285:                                   ; preds = %if.then.268
  %198 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call286 = call i32 @spputc(%struct.stream_s* %198, i8 zeroext -101) #5
  br label %cond.end.287

cond.end.287:                                     ; preds = %cond.false.285, %cond.true.277
  %cond288 = phi i32 [ 0, %cond.true.277 ], [ %call286, %cond.false.285 ]
  %199 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call289 = call i32 @lputs(%struct.stream_s* %199, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0)) #5
  br label %if.end.462

if.else.290:                                      ; preds = %cond.end.264
  %200 = bitcast i64* %__s1_len292 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %200) #2
  %201 = bitcast i64* %__s2_len294 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %201) #2
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i64 1) to i64), i64 ptrtoint ([10 x i8]* @.str.17 to i64)), i64 1), label %land.lhs.true.296, label %cond.false.345

land.lhs.true.296:                                ; preds = %if.else.290
  %call297 = call i64 @strlen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0)) #7
  store i64 %call297, i64* %__s2_len294, align 8, !tbaa !68
  %202 = load i64, i64* %__s2_len294, align 8, !tbaa !68
  %cmp298 = icmp ult i64 %202, 4
  br i1 %cmp298, label %cond.true.300, label %cond.false.345

cond.true.300:                                    ; preds = %land.lhs.true.296
  %203 = bitcast i8** %__s1302 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %203) #2
  %204 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %mediaType303 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %204, i32 0, i32 81
  %arraydecay304 = getelementptr inbounds [32 x i8], [32 x i8]* %mediaType303, i32 0, i32 0
  store i8* %arraydecay304, i8** %__s1302, align 8, !tbaa !1
  %205 = bitcast i32* %__result306 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %205) #2
  %206 = load i8*, i8** %__s1302, align 8, !tbaa !1
  %arrayidx307 = getelementptr inbounds i8, i8* %206, i64 0
  %207 = load i8, i8* %arrayidx307, align 1, !tbaa !58
  %conv308 = zext i8 %207 to i32
  %208 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), align 1, !tbaa !58
  %conv309 = zext i8 %208 to i32
  %sub310 = sub nsw i32 %conv308, %conv309
  store i32 %sub310, i32* %__result306, align 4, !tbaa !5
  %209 = load i64, i64* %__s2_len294, align 8, !tbaa !68
  %cmp311 = icmp ugt i64 %209, 0
  br i1 %cmp311, label %land.lhs.true.313, label %if.end.343

land.lhs.true.313:                                ; preds = %cond.true.300
  %210 = load i32, i32* %__result306, align 4, !tbaa !5
  %cmp314 = icmp eq i32 %210, 0
  br i1 %cmp314, label %if.then.316, label %if.end.343

if.then.316:                                      ; preds = %land.lhs.true.313
  %211 = load i8*, i8** %__s1302, align 8, !tbaa !1
  %arrayidx317 = getelementptr inbounds i8, i8* %211, i64 1
  %212 = load i8, i8* %arrayidx317, align 1, !tbaa !58
  %conv318 = zext i8 %212 to i32
  %213 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i64 1), align 1, !tbaa !58
  %conv319 = zext i8 %213 to i32
  %sub320 = sub nsw i32 %conv318, %conv319
  store i32 %sub320, i32* %__result306, align 4, !tbaa !5
  %214 = load i64, i64* %__s2_len294, align 8, !tbaa !68
  %cmp321 = icmp ugt i64 %214, 1
  br i1 %cmp321, label %land.lhs.true.323, label %if.end.342

land.lhs.true.323:                                ; preds = %if.then.316
  %215 = load i32, i32* %__result306, align 4, !tbaa !5
  %cmp324 = icmp eq i32 %215, 0
  br i1 %cmp324, label %if.then.326, label %if.end.342

if.then.326:                                      ; preds = %land.lhs.true.323
  %216 = load i8*, i8** %__s1302, align 8, !tbaa !1
  %arrayidx327 = getelementptr inbounds i8, i8* %216, i64 2
  %217 = load i8, i8* %arrayidx327, align 1, !tbaa !58
  %conv328 = zext i8 %217 to i32
  %218 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i64 2), align 1, !tbaa !58
  %conv329 = zext i8 %218 to i32
  %sub330 = sub nsw i32 %conv328, %conv329
  store i32 %sub330, i32* %__result306, align 4, !tbaa !5
  %219 = load i64, i64* %__s2_len294, align 8, !tbaa !68
  %cmp331 = icmp ugt i64 %219, 2
  br i1 %cmp331, label %land.lhs.true.333, label %if.end.341

land.lhs.true.333:                                ; preds = %if.then.326
  %220 = load i32, i32* %__result306, align 4, !tbaa !5
  %cmp334 = icmp eq i32 %220, 0
  br i1 %cmp334, label %if.then.336, label %if.end.341

if.then.336:                                      ; preds = %land.lhs.true.333
  %221 = load i8*, i8** %__s1302, align 8, !tbaa !1
  %arrayidx337 = getelementptr inbounds i8, i8* %221, i64 3
  %222 = load i8, i8* %arrayidx337, align 1, !tbaa !58
  %conv338 = zext i8 %222 to i32
  %223 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i64 3), align 1, !tbaa !58
  %conv339 = zext i8 %223 to i32
  %sub340 = sub nsw i32 %conv338, %conv339
  store i32 %sub340, i32* %__result306, align 4, !tbaa !5
  br label %if.end.341

if.end.341:                                       ; preds = %if.then.336, %land.lhs.true.333, %if.then.326
  br label %if.end.342

if.end.342:                                       ; preds = %if.end.341, %land.lhs.true.323, %if.then.316
  br label %if.end.343

if.end.343:                                       ; preds = %if.end.342, %land.lhs.true.313, %cond.true.300
  %224 = load i32, i32* %__result306, align 4, !tbaa !5
  store i32 %224, i32* %tmp344, !tbaa !5
  %225 = bitcast i32* %__result306 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %225) #2
  %226 = bitcast i8** %__s1302 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %226) #2
  %227 = load i32, i32* %tmp344, !tbaa !5
  br label %cond.end.349

cond.false.345:                                   ; preds = %land.lhs.true.296, %if.else.290
  %228 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %mediaType346 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %228, i32 0, i32 81
  %arraydecay347 = getelementptr inbounds [32 x i8], [32 x i8]* %mediaType346, i32 0, i32 0
  %call348 = call i32 @strcmp(i8* %arraydecay347, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0)) #6
  br label %cond.end.349

cond.end.349:                                     ; preds = %cond.false.345, %if.end.343
  %cond350 = phi i32 [ %227, %if.end.343 ], [ %call348, %cond.false.345 ]
  store i32 %cond350, i32* %tmp295, !tbaa !5
  %229 = bitcast i64* %__s2_len294 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %229) #2
  %230 = bitcast i64* %__s1_len292 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %230) #2
  %231 = load i32, i32* %tmp295, !tbaa !5
  %cmp351 = icmp eq i32 %231, 0
  br i1 %cmp351, label %if.then.353, label %if.else.375

if.then.353:                                      ; preds = %cond.end.349
  %232 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor354 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %232, i32 0, i32 5
  %w355 = bitcast %union.stream_cursor_s* %cursor354 to %struct.stream_cursor_write_s*
  %ptr356 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w355, i32 0, i32 1
  %233 = load i8*, i8** %ptr356, align 8, !tbaa !55
  %234 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor357 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %234, i32 0, i32 5
  %w358 = bitcast %union.stream_cursor_s* %cursor357 to %struct.stream_cursor_write_s*
  %limit359 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w358, i32 0, i32 2
  %235 = load i8*, i8** %limit359, align 8, !tbaa !57
  %cmp360 = icmp uge i8* %233, %235
  br i1 %cmp360, label %cond.false.370, label %cond.true.362

cond.true.362:                                    ; preds = %if.then.353
  %236 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor363 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %236, i32 0, i32 5
  %w364 = bitcast %union.stream_cursor_s* %cursor363 to %struct.stream_cursor_write_s*
  %ptr365 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w364, i32 0, i32 1
  %237 = load i8*, i8** %ptr365, align 8, !tbaa !55
  %incdec.ptr366 = getelementptr inbounds i8, i8* %237, i32 1
  store i8* %incdec.ptr366, i8** %ptr365, align 8, !tbaa !55
  %238 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor367 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %238, i32 0, i32 5
  %w368 = bitcast %union.stream_cursor_s* %cursor367 to %struct.stream_cursor_write_s*
  %ptr369 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w368, i32 0, i32 1
  %239 = load i8*, i8** %ptr369, align 8, !tbaa !55
  store i8 -101, i8* %239, align 1, !tbaa !58
  br label %cond.end.372

cond.false.370:                                   ; preds = %if.then.353
  %240 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call371 = call i32 @spputc(%struct.stream_s* %240, i8 zeroext -101) #5
  br label %cond.end.372

cond.end.372:                                     ; preds = %cond.false.370, %cond.true.362
  %cond373 = phi i32 [ 0, %cond.true.362 ], [ %call371, %cond.false.370 ]
  %241 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call374 = call i32 @lputs(%struct.stream_s* %241, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0)) #5
  br label %if.end.461

if.else.375:                                      ; preds = %cond.end.349
  %242 = bitcast i64* %__s1_len377 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %242) #2
  %243 = bitcast i64* %__s2_len379 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %243) #2
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i64 1) to i64), i64 ptrtoint ([11 x i8]* @.str.19 to i64)), i64 1), label %land.lhs.true.381, label %cond.false.430

land.lhs.true.381:                                ; preds = %if.else.375
  %call382 = call i64 @strlen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0)) #7
  store i64 %call382, i64* %__s2_len379, align 8, !tbaa !68
  %244 = load i64, i64* %__s2_len379, align 8, !tbaa !68
  %cmp383 = icmp ult i64 %244, 4
  br i1 %cmp383, label %cond.true.385, label %cond.false.430

cond.true.385:                                    ; preds = %land.lhs.true.381
  %245 = bitcast i8** %__s1387 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %245) #2
  %246 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %mediaType388 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %246, i32 0, i32 81
  %arraydecay389 = getelementptr inbounds [32 x i8], [32 x i8]* %mediaType388, i32 0, i32 0
  store i8* %arraydecay389, i8** %__s1387, align 8, !tbaa !1
  %247 = bitcast i32* %__result391 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %247) #2
  %248 = load i8*, i8** %__s1387, align 8, !tbaa !1
  %arrayidx392 = getelementptr inbounds i8, i8* %248, i64 0
  %249 = load i8, i8* %arrayidx392, align 1, !tbaa !58
  %conv393 = zext i8 %249 to i32
  %250 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), align 1, !tbaa !58
  %conv394 = zext i8 %250 to i32
  %sub395 = sub nsw i32 %conv393, %conv394
  store i32 %sub395, i32* %__result391, align 4, !tbaa !5
  %251 = load i64, i64* %__s2_len379, align 8, !tbaa !68
  %cmp396 = icmp ugt i64 %251, 0
  br i1 %cmp396, label %land.lhs.true.398, label %if.end.428

land.lhs.true.398:                                ; preds = %cond.true.385
  %252 = load i32, i32* %__result391, align 4, !tbaa !5
  %cmp399 = icmp eq i32 %252, 0
  br i1 %cmp399, label %if.then.401, label %if.end.428

if.then.401:                                      ; preds = %land.lhs.true.398
  %253 = load i8*, i8** %__s1387, align 8, !tbaa !1
  %arrayidx402 = getelementptr inbounds i8, i8* %253, i64 1
  %254 = load i8, i8* %arrayidx402, align 1, !tbaa !58
  %conv403 = zext i8 %254 to i32
  %255 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i64 1), align 1, !tbaa !58
  %conv404 = zext i8 %255 to i32
  %sub405 = sub nsw i32 %conv403, %conv404
  store i32 %sub405, i32* %__result391, align 4, !tbaa !5
  %256 = load i64, i64* %__s2_len379, align 8, !tbaa !68
  %cmp406 = icmp ugt i64 %256, 1
  br i1 %cmp406, label %land.lhs.true.408, label %if.end.427

land.lhs.true.408:                                ; preds = %if.then.401
  %257 = load i32, i32* %__result391, align 4, !tbaa !5
  %cmp409 = icmp eq i32 %257, 0
  br i1 %cmp409, label %if.then.411, label %if.end.427

if.then.411:                                      ; preds = %land.lhs.true.408
  %258 = load i8*, i8** %__s1387, align 8, !tbaa !1
  %arrayidx412 = getelementptr inbounds i8, i8* %258, i64 2
  %259 = load i8, i8* %arrayidx412, align 1, !tbaa !58
  %conv413 = zext i8 %259 to i32
  %260 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i64 2), align 1, !tbaa !58
  %conv414 = zext i8 %260 to i32
  %sub415 = sub nsw i32 %conv413, %conv414
  store i32 %sub415, i32* %__result391, align 4, !tbaa !5
  %261 = load i64, i64* %__s2_len379, align 8, !tbaa !68
  %cmp416 = icmp ugt i64 %261, 2
  br i1 %cmp416, label %land.lhs.true.418, label %if.end.426

land.lhs.true.418:                                ; preds = %if.then.411
  %262 = load i32, i32* %__result391, align 4, !tbaa !5
  %cmp419 = icmp eq i32 %262, 0
  br i1 %cmp419, label %if.then.421, label %if.end.426

if.then.421:                                      ; preds = %land.lhs.true.418
  %263 = load i8*, i8** %__s1387, align 8, !tbaa !1
  %arrayidx422 = getelementptr inbounds i8, i8* %263, i64 3
  %264 = load i8, i8* %arrayidx422, align 1, !tbaa !58
  %conv423 = zext i8 %264 to i32
  %265 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i64 3), align 1, !tbaa !58
  %conv424 = zext i8 %265 to i32
  %sub425 = sub nsw i32 %conv423, %conv424
  store i32 %sub425, i32* %__result391, align 4, !tbaa !5
  br label %if.end.426

if.end.426:                                       ; preds = %if.then.421, %land.lhs.true.418, %if.then.411
  br label %if.end.427

if.end.427:                                       ; preds = %if.end.426, %land.lhs.true.408, %if.then.401
  br label %if.end.428

if.end.428:                                       ; preds = %if.end.427, %land.lhs.true.398, %cond.true.385
  %266 = load i32, i32* %__result391, align 4, !tbaa !5
  store i32 %266, i32* %tmp429, !tbaa !5
  %267 = bitcast i32* %__result391 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %267) #2
  %268 = bitcast i8** %__s1387 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %268) #2
  %269 = load i32, i32* %tmp429, !tbaa !5
  br label %cond.end.434

cond.false.430:                                   ; preds = %land.lhs.true.381, %if.else.375
  %270 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %mediaType431 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %270, i32 0, i32 81
  %arraydecay432 = getelementptr inbounds [32 x i8], [32 x i8]* %mediaType431, i32 0, i32 0
  %call433 = call i32 @strcmp(i8* %arraydecay432, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0)) #6
  br label %cond.end.434

cond.end.434:                                     ; preds = %cond.false.430, %if.end.428
  %cond435 = phi i32 [ %269, %if.end.428 ], [ %call433, %cond.false.430 ]
  store i32 %cond435, i32* %tmp380, !tbaa !5
  %271 = bitcast i64* %__s2_len379 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %271) #2
  %272 = bitcast i64* %__s1_len377 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %272) #2
  %273 = load i32, i32* %tmp380, !tbaa !5
  %cmp436 = icmp eq i32 %273, 0
  br i1 %cmp436, label %if.then.438, label %if.end.460

if.then.438:                                      ; preds = %cond.end.434
  %274 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor439 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %274, i32 0, i32 5
  %w440 = bitcast %union.stream_cursor_s* %cursor439 to %struct.stream_cursor_write_s*
  %ptr441 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w440, i32 0, i32 1
  %275 = load i8*, i8** %ptr441, align 8, !tbaa !55
  %276 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor442 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %276, i32 0, i32 5
  %w443 = bitcast %union.stream_cursor_s* %cursor442 to %struct.stream_cursor_write_s*
  %limit444 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w443, i32 0, i32 2
  %277 = load i8*, i8** %limit444, align 8, !tbaa !57
  %cmp445 = icmp uge i8* %275, %277
  br i1 %cmp445, label %cond.false.455, label %cond.true.447

cond.true.447:                                    ; preds = %if.then.438
  %278 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor448 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %278, i32 0, i32 5
  %w449 = bitcast %union.stream_cursor_s* %cursor448 to %struct.stream_cursor_write_s*
  %ptr450 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w449, i32 0, i32 1
  %279 = load i8*, i8** %ptr450, align 8, !tbaa !55
  %incdec.ptr451 = getelementptr inbounds i8, i8* %279, i32 1
  store i8* %incdec.ptr451, i8** %ptr450, align 8, !tbaa !55
  %280 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor452 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %280, i32 0, i32 5
  %w453 = bitcast %union.stream_cursor_s* %cursor452 to %struct.stream_cursor_write_s*
  %ptr454 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w453, i32 0, i32 1
  %281 = load i8*, i8** %ptr454, align 8, !tbaa !55
  store i8 -101, i8* %281, align 1, !tbaa !58
  br label %cond.end.457

cond.false.455:                                   ; preds = %if.then.438
  %282 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call456 = call i32 @spputc(%struct.stream_s* %282, i8 zeroext -101) #5
  br label %cond.end.457

cond.end.457:                                     ; preds = %cond.false.455, %cond.true.447
  %cond458 = phi i32 [ 0, %cond.true.447 ], [ %call456, %cond.false.455 ]
  %283 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call459 = call i32 @lputs(%struct.stream_s* %283, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0)) #5
  br label %if.end.460

if.end.460:                                       ; preds = %cond.end.457, %cond.end.434
  br label %if.end.461

if.end.461:                                       ; preds = %if.end.460, %cond.end.372
  br label %if.end.462

if.end.462:                                       ; preds = %if.end.461, %cond.end.287
  br label %if.end.463

if.end.463:                                       ; preds = %if.end.462, %cond.end.140
  %284 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %ManualFeed = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %284, i32 0, i32 83
  %285 = load i32, i32* %ManualFeed, align 4, !tbaa !91
  %tobool464 = icmp ne i32 %285, 0
  br i1 %tobool464, label %if.then.591, label %lor.lhs.false.465

lor.lhs.false.465:                                ; preds = %if.end.463
  %286 = bitcast i64* %__s1_len467 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %286) #2
  %287 = bitcast i64* %__s2_len469 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %287) #2
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i64 1) to i64), i64 ptrtoint ([11 x i8]* @.str.12 to i64)), i64 1), label %land.lhs.true.471, label %cond.false.520

land.lhs.true.471:                                ; preds = %lor.lhs.false.465
  %call472 = call i64 @strlen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0)) #7
  store i64 %call472, i64* %__s2_len469, align 8, !tbaa !68
  %288 = load i64, i64* %__s2_len469, align 8, !tbaa !68
  %cmp473 = icmp ult i64 %288, 4
  br i1 %cmp473, label %cond.true.475, label %cond.false.520

cond.true.475:                                    ; preds = %land.lhs.true.471
  %289 = bitcast i8** %__s1477 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %289) #2
  %290 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %mediaType478 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %290, i32 0, i32 81
  %arraydecay479 = getelementptr inbounds [32 x i8], [32 x i8]* %mediaType478, i32 0, i32 0
  store i8* %arraydecay479, i8** %__s1477, align 8, !tbaa !1
  %291 = bitcast i32* %__result481 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %291) #2
  %292 = load i8*, i8** %__s1477, align 8, !tbaa !1
  %arrayidx482 = getelementptr inbounds i8, i8* %292, i64 0
  %293 = load i8, i8* %arrayidx482, align 1, !tbaa !58
  %conv483 = zext i8 %293 to i32
  %294 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), align 1, !tbaa !58
  %conv484 = zext i8 %294 to i32
  %sub485 = sub nsw i32 %conv483, %conv484
  store i32 %sub485, i32* %__result481, align 4, !tbaa !5
  %295 = load i64, i64* %__s2_len469, align 8, !tbaa !68
  %cmp486 = icmp ugt i64 %295, 0
  br i1 %cmp486, label %land.lhs.true.488, label %if.end.518

land.lhs.true.488:                                ; preds = %cond.true.475
  %296 = load i32, i32* %__result481, align 4, !tbaa !5
  %cmp489 = icmp eq i32 %296, 0
  br i1 %cmp489, label %if.then.491, label %if.end.518

if.then.491:                                      ; preds = %land.lhs.true.488
  %297 = load i8*, i8** %__s1477, align 8, !tbaa !1
  %arrayidx492 = getelementptr inbounds i8, i8* %297, i64 1
  %298 = load i8, i8* %arrayidx492, align 1, !tbaa !58
  %conv493 = zext i8 %298 to i32
  %299 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i64 1), align 1, !tbaa !58
  %conv494 = zext i8 %299 to i32
  %sub495 = sub nsw i32 %conv493, %conv494
  store i32 %sub495, i32* %__result481, align 4, !tbaa !5
  %300 = load i64, i64* %__s2_len469, align 8, !tbaa !68
  %cmp496 = icmp ugt i64 %300, 1
  br i1 %cmp496, label %land.lhs.true.498, label %if.end.517

land.lhs.true.498:                                ; preds = %if.then.491
  %301 = load i32, i32* %__result481, align 4, !tbaa !5
  %cmp499 = icmp eq i32 %301, 0
  br i1 %cmp499, label %if.then.501, label %if.end.517

if.then.501:                                      ; preds = %land.lhs.true.498
  %302 = load i8*, i8** %__s1477, align 8, !tbaa !1
  %arrayidx502 = getelementptr inbounds i8, i8* %302, i64 2
  %303 = load i8, i8* %arrayidx502, align 1, !tbaa !58
  %conv503 = zext i8 %303 to i32
  %304 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i64 2), align 1, !tbaa !58
  %conv504 = zext i8 %304 to i32
  %sub505 = sub nsw i32 %conv503, %conv504
  store i32 %sub505, i32* %__result481, align 4, !tbaa !5
  %305 = load i64, i64* %__s2_len469, align 8, !tbaa !68
  %cmp506 = icmp ugt i64 %305, 2
  br i1 %cmp506, label %land.lhs.true.508, label %if.end.516

land.lhs.true.508:                                ; preds = %if.then.501
  %306 = load i32, i32* %__result481, align 4, !tbaa !5
  %cmp509 = icmp eq i32 %306, 0
  br i1 %cmp509, label %if.then.511, label %if.end.516

if.then.511:                                      ; preds = %land.lhs.true.508
  %307 = load i8*, i8** %__s1477, align 8, !tbaa !1
  %arrayidx512 = getelementptr inbounds i8, i8* %307, i64 3
  %308 = load i8, i8* %arrayidx512, align 1, !tbaa !58
  %conv513 = zext i8 %308 to i32
  %309 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i64 3), align 1, !tbaa !58
  %conv514 = zext i8 %309 to i32
  %sub515 = sub nsw i32 %conv513, %conv514
  store i32 %sub515, i32* %__result481, align 4, !tbaa !5
  br label %if.end.516

if.end.516:                                       ; preds = %if.then.511, %land.lhs.true.508, %if.then.501
  br label %if.end.517

if.end.517:                                       ; preds = %if.end.516, %land.lhs.true.498, %if.then.491
  br label %if.end.518

if.end.518:                                       ; preds = %if.end.517, %land.lhs.true.488, %cond.true.475
  %310 = load i32, i32* %__result481, align 4, !tbaa !5
  store i32 %310, i32* %tmp519, !tbaa !5
  %311 = bitcast i32* %__result481 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %311) #2
  %312 = bitcast i8** %__s1477 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %312) #2
  %313 = load i32, i32* %tmp519, !tbaa !5
  br label %cond.end.524

cond.false.520:                                   ; preds = %land.lhs.true.471, %lor.lhs.false.465
  %314 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %mediaType521 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %314, i32 0, i32 81
  %arraydecay522 = getelementptr inbounds [32 x i8], [32 x i8]* %mediaType521, i32 0, i32 0
  %call523 = call i32 @strcmp(i8* %arraydecay522, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0)) #6
  br label %cond.end.524

cond.end.524:                                     ; preds = %cond.false.520, %if.end.518
  %cond525 = phi i32 [ %313, %if.end.518 ], [ %call523, %cond.false.520 ]
  store i32 %cond525, i32* %tmp470, !tbaa !5
  %315 = bitcast i64* %__s2_len469 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %315) #2
  %316 = bitcast i64* %__s1_len467 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %316) #2
  %317 = load i32, i32* %tmp470, !tbaa !5
  %cmp526 = icmp ne i32 %317, 0
  br i1 %cmp526, label %land.lhs.true.528, label %if.else.601

land.lhs.true.528:                                ; preds = %cond.end.524
  %318 = bitcast i64* %__s1_len530 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %318) #2
  %319 = bitcast i64* %__s2_len532 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %319) #2
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i64 1) to i64), i64 ptrtoint ([8 x i8]* @.str.21 to i64)), i64 1), label %land.lhs.true.534, label %cond.false.583

land.lhs.true.534:                                ; preds = %land.lhs.true.528
  %call535 = call i64 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0)) #7
  store i64 %call535, i64* %__s2_len532, align 8, !tbaa !68
  %320 = load i64, i64* %__s2_len532, align 8, !tbaa !68
  %cmp536 = icmp ult i64 %320, 4
  br i1 %cmp536, label %cond.true.538, label %cond.false.583

cond.true.538:                                    ; preds = %land.lhs.true.534
  %321 = bitcast i8** %__s1540 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %321) #2
  %322 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %mediaType541 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %322, i32 0, i32 81
  %arraydecay542 = getelementptr inbounds [32 x i8], [32 x i8]* %mediaType541, i32 0, i32 0
  store i8* %arraydecay542, i8** %__s1540, align 8, !tbaa !1
  %323 = bitcast i32* %__result544 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %323) #2
  %324 = load i8*, i8** %__s1540, align 8, !tbaa !1
  %arrayidx545 = getelementptr inbounds i8, i8* %324, i64 0
  %325 = load i8, i8* %arrayidx545, align 1, !tbaa !58
  %conv546 = zext i8 %325 to i32
  %326 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0), align 1, !tbaa !58
  %conv547 = zext i8 %326 to i32
  %sub548 = sub nsw i32 %conv546, %conv547
  store i32 %sub548, i32* %__result544, align 4, !tbaa !5
  %327 = load i64, i64* %__s2_len532, align 8, !tbaa !68
  %cmp549 = icmp ugt i64 %327, 0
  br i1 %cmp549, label %land.lhs.true.551, label %if.end.581

land.lhs.true.551:                                ; preds = %cond.true.538
  %328 = load i32, i32* %__result544, align 4, !tbaa !5
  %cmp552 = icmp eq i32 %328, 0
  br i1 %cmp552, label %if.then.554, label %if.end.581

if.then.554:                                      ; preds = %land.lhs.true.551
  %329 = load i8*, i8** %__s1540, align 8, !tbaa !1
  %arrayidx555 = getelementptr inbounds i8, i8* %329, i64 1
  %330 = load i8, i8* %arrayidx555, align 1, !tbaa !58
  %conv556 = zext i8 %330 to i32
  %331 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i64 1), align 1, !tbaa !58
  %conv557 = zext i8 %331 to i32
  %sub558 = sub nsw i32 %conv556, %conv557
  store i32 %sub558, i32* %__result544, align 4, !tbaa !5
  %332 = load i64, i64* %__s2_len532, align 8, !tbaa !68
  %cmp559 = icmp ugt i64 %332, 1
  br i1 %cmp559, label %land.lhs.true.561, label %if.end.580

land.lhs.true.561:                                ; preds = %if.then.554
  %333 = load i32, i32* %__result544, align 4, !tbaa !5
  %cmp562 = icmp eq i32 %333, 0
  br i1 %cmp562, label %if.then.564, label %if.end.580

if.then.564:                                      ; preds = %land.lhs.true.561
  %334 = load i8*, i8** %__s1540, align 8, !tbaa !1
  %arrayidx565 = getelementptr inbounds i8, i8* %334, i64 2
  %335 = load i8, i8* %arrayidx565, align 1, !tbaa !58
  %conv566 = zext i8 %335 to i32
  %336 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i64 2), align 1, !tbaa !58
  %conv567 = zext i8 %336 to i32
  %sub568 = sub nsw i32 %conv566, %conv567
  store i32 %sub568, i32* %__result544, align 4, !tbaa !5
  %337 = load i64, i64* %__s2_len532, align 8, !tbaa !68
  %cmp569 = icmp ugt i64 %337, 2
  br i1 %cmp569, label %land.lhs.true.571, label %if.end.579

land.lhs.true.571:                                ; preds = %if.then.564
  %338 = load i32, i32* %__result544, align 4, !tbaa !5
  %cmp572 = icmp eq i32 %338, 0
  br i1 %cmp572, label %if.then.574, label %if.end.579

if.then.574:                                      ; preds = %land.lhs.true.571
  %339 = load i8*, i8** %__s1540, align 8, !tbaa !1
  %arrayidx575 = getelementptr inbounds i8, i8* %339, i64 3
  %340 = load i8, i8* %arrayidx575, align 1, !tbaa !58
  %conv576 = zext i8 %340 to i32
  %341 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i64 3), align 1, !tbaa !58
  %conv577 = zext i8 %341 to i32
  %sub578 = sub nsw i32 %conv576, %conv577
  store i32 %sub578, i32* %__result544, align 4, !tbaa !5
  br label %if.end.579

if.end.579:                                       ; preds = %if.then.574, %land.lhs.true.571, %if.then.564
  br label %if.end.580

if.end.580:                                       ; preds = %if.end.579, %land.lhs.true.561, %if.then.554
  br label %if.end.581

if.end.581:                                       ; preds = %if.end.580, %land.lhs.true.551, %cond.true.538
  %342 = load i32, i32* %__result544, align 4, !tbaa !5
  store i32 %342, i32* %tmp582, !tbaa !5
  %343 = bitcast i32* %__result544 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %343) #2
  %344 = bitcast i8** %__s1540 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %344) #2
  %345 = load i32, i32* %tmp582, !tbaa !5
  br label %cond.end.587

cond.false.583:                                   ; preds = %land.lhs.true.534, %land.lhs.true.528
  %346 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %mediaType584 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %346, i32 0, i32 81
  %arraydecay585 = getelementptr inbounds [32 x i8], [32 x i8]* %mediaType584, i32 0, i32 0
  %call586 = call i32 @strcmp(i8* %arraydecay585, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0)) #6
  br label %cond.end.587

cond.end.587:                                     ; preds = %cond.false.583, %if.end.581
  %cond588 = phi i32 [ %345, %if.end.581 ], [ %call586, %cond.false.583 ]
  store i32 %cond588, i32* %tmp533, !tbaa !5
  %347 = bitcast i64* %__s2_len532 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %347) #2
  %348 = bitcast i64* %__s1_len530 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %348) #2
  %349 = load i32, i32* %tmp533, !tbaa !5
  %cmp589 = icmp ne i32 %349, 0
  br i1 %cmp589, label %if.then.591, label %if.else.601

if.then.591:                                      ; preds = %cond.end.587, %if.end.463
  %350 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %prev_feed_mode = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %350, i32 0, i32 77
  %351 = load i32, i32* %prev_feed_mode, align 4, !tbaa !139
  %cmp592 = icmp ne i32 %351, 10
  br i1 %cmp592, label %if.then.594, label %if.end.600

if.then.594:                                      ; preds = %if.then.591
  %arraydecay595 = getelementptr inbounds [5 x i8], [5 x i8]* %feedmode, i32 0, i32 0
  %call596 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay595, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i32 155) #5
  %352 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %arraydecay597 = getelementptr inbounds [5 x i8], [5 x i8]* %feedmode, i32 0, i32 0
  %call598 = call i32 @lputs(%struct.stream_s* %352, i8* %arraydecay597) #5
  %353 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %prev_feed_mode599 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %353, i32 0, i32 77
  store i32 10, i32* %prev_feed_mode599, align 4, !tbaa !139
  br label %if.end.600

if.end.600:                                       ; preds = %if.then.594, %if.then.591
  br label %if.end.614

if.else.601:                                      ; preds = %cond.end.587, %cond.end.524
  %354 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %prev_feed_mode602 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %354, i32 0, i32 77
  %355 = load i32, i32* %prev_feed_mode602, align 4, !tbaa !139
  %356 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %cassetFeed = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %356, i32 0, i32 67
  %357 = load i32, i32* %cassetFeed, align 4, !tbaa !92
  %cmp603 = icmp ne i32 %355, %357
  br i1 %cmp603, label %if.then.605, label %if.end.613

if.then.605:                                      ; preds = %if.else.601
  %arraydecay606 = getelementptr inbounds [5 x i8], [5 x i8]* %feedmode, i32 0, i32 0
  %358 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %cassetFeed607 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %358, i32 0, i32 67
  %359 = load i32, i32* %cassetFeed607, align 4, !tbaa !92
  %call608 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay606, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i32 155, i32 %359) #5
  %360 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %arraydecay609 = getelementptr inbounds [5 x i8], [5 x i8]* %feedmode, i32 0, i32 0
  %call610 = call i32 @lputs(%struct.stream_s* %360, i8* %arraydecay609) #5
  %361 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %cassetFeed611 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %361, i32 0, i32 67
  %362 = load i32, i32* %cassetFeed611, align 4, !tbaa !92
  %363 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %prev_feed_mode612 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %363, i32 0, i32 77
  store i32 %362, i32* %prev_feed_mode612, align 4, !tbaa !139
  br label %if.end.613

if.end.613:                                       ; preds = %if.then.605, %if.else.601
  br label %if.end.614

if.end.614:                                       ; preds = %if.end.613, %if.end.600
  %364 = load i32, i32* %width, align 4, !tbaa !5
  %365 = load i32, i32* %height, align 4, !tbaa !5
  %call615 = call i32 @lips_media_selection(i32 %364, i32 %365) #5
  store i32 %call615, i32* %paper_size, align 4, !tbaa !5
  %366 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %prev_paper_size = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %366, i32 0, i32 73
  %367 = load i32, i32* %prev_paper_size, align 4, !tbaa !140
  %368 = load i32, i32* %paper_size, align 4, !tbaa !5
  %cmp616 = icmp ne i32 %367, %368
  br i1 %cmp616, label %if.then.618, label %if.else.672

if.then.618:                                      ; preds = %if.end.614
  %369 = load i32, i32* %paper_size, align 4, !tbaa !5
  %cmp619 = icmp eq i32 %369, 80
  br i1 %cmp619, label %if.then.621, label %if.else.641

if.then.621:                                      ; preds = %if.then.618
  %arraydecay622 = getelementptr inbounds [16 x i8], [16 x i8]* %paper, i32 0, i32 0
  %370 = load i32, i32* %height, align 4, !tbaa !5
  %mul = mul nsw i32 %370, 10
  %cmp623 = icmp sgt i32 %mul, 11905
  br i1 %cmp623, label %cond.true.625, label %cond.false.626

cond.true.625:                                    ; preds = %if.then.621
  br label %cond.end.628

cond.false.626:                                   ; preds = %if.then.621
  %371 = load i32, i32* %height, align 4, !tbaa !5
  %mul627 = mul nsw i32 %371, 10
  br label %cond.end.628

cond.end.628:                                     ; preds = %cond.false.626, %cond.true.625
  %cond629 = phi i32 [ 11905, %cond.true.625 ], [ %mul627, %cond.false.626 ]
  %372 = load i32, i32* %width, align 4, !tbaa !5
  %mul630 = mul nsw i32 %372, 10
  %cmp631 = icmp sgt i32 %mul630, 8418
  br i1 %cmp631, label %cond.true.633, label %cond.false.634

cond.true.633:                                    ; preds = %cond.end.628
  br label %cond.end.636

cond.false.634:                                   ; preds = %cond.end.628
  %373 = load i32, i32* %width, align 4, !tbaa !5
  %mul635 = mul nsw i32 %373, 10
  br label %cond.end.636

cond.end.636:                                     ; preds = %cond.false.634, %cond.true.633
  %cond637 = phi i32 [ 8418, %cond.true.633 ], [ %mul635, %cond.false.634 ]
  %call638 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay622, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i32 0, i32 0), i32 155, i32 %cond629, i32 %cond637) #5
  %374 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %arraydecay639 = getelementptr inbounds [16 x i8], [16 x i8]* %paper, i32 0, i32 0
  %call640 = call i32 @lputs(%struct.stream_s* %374, i8* %arraydecay639) #5
  br label %if.end.671

if.else.641:                                      ; preds = %if.then.618
  %375 = load i32, i32* %paper_size, align 4, !tbaa !5
  %cmp642 = icmp eq i32 %375, 81
  br i1 %cmp642, label %if.then.644, label %if.else.665

if.then.644:                                      ; preds = %if.else.641
  %arraydecay645 = getelementptr inbounds [16 x i8], [16 x i8]* %paper, i32 0, i32 0
  %376 = load i32, i32* %width, align 4, !tbaa !5
  %mul646 = mul nsw i32 %376, 10
  %cmp647 = icmp sgt i32 %mul646, 11905
  br i1 %cmp647, label %cond.true.649, label %cond.false.650

cond.true.649:                                    ; preds = %if.then.644
  br label %cond.end.652

cond.false.650:                                   ; preds = %if.then.644
  %377 = load i32, i32* %width, align 4, !tbaa !5
  %mul651 = mul nsw i32 %377, 10
  br label %cond.end.652

cond.end.652:                                     ; preds = %cond.false.650, %cond.true.649
  %cond653 = phi i32 [ 11905, %cond.true.649 ], [ %mul651, %cond.false.650 ]
  %378 = load i32, i32* %height, align 4, !tbaa !5
  %mul654 = mul nsw i32 %378, 10
  %cmp655 = icmp sgt i32 %mul654, 8418
  br i1 %cmp655, label %cond.true.657, label %cond.false.658

cond.true.657:                                    ; preds = %cond.end.652
  br label %cond.end.660

cond.false.658:                                   ; preds = %cond.end.652
  %379 = load i32, i32* %height, align 4, !tbaa !5
  %mul659 = mul nsw i32 %379, 10
  br label %cond.end.660

cond.end.660:                                     ; preds = %cond.false.658, %cond.true.657
  %cond661 = phi i32 [ 8418, %cond.true.657 ], [ %mul659, %cond.false.658 ]
  %call662 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay645, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i32 0, i32 0), i32 155, i32 %cond653, i32 %cond661) #5
  %380 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %arraydecay663 = getelementptr inbounds [16 x i8], [16 x i8]* %paper, i32 0, i32 0
  %call664 = call i32 @lputs(%struct.stream_s* %380, i8* %arraydecay663) #5
  br label %if.end.670

if.else.665:                                      ; preds = %if.else.641
  %arraydecay666 = getelementptr inbounds [16 x i8], [16 x i8]* %paper, i32 0, i32 0
  %381 = load i32, i32* %paper_size, align 4, !tbaa !5
  %call667 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay666, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i32 155, i32 %381) #5
  %382 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %arraydecay668 = getelementptr inbounds [16 x i8], [16 x i8]* %paper, i32 0, i32 0
  %call669 = call i32 @lputs(%struct.stream_s* %382, i8* %arraydecay668) #5
  br label %if.end.670

if.end.670:                                       ; preds = %if.else.665, %cond.end.660
  br label %if.end.671

if.end.671:                                       ; preds = %if.end.670, %cond.end.636
  br label %if.end.738

if.else.672:                                      ; preds = %if.end.614
  %383 = load i32, i32* %paper_size, align 4, !tbaa !5
  %cmp673 = icmp eq i32 %383, 80
  br i1 %cmp673, label %if.then.675, label %if.else.703

if.then.675:                                      ; preds = %if.else.672
  %384 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %prev_paper_width = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %384, i32 0, i32 74
  %385 = load i32, i32* %prev_paper_width, align 4, !tbaa !141
  %386 = load i32, i32* %width, align 4, !tbaa !5
  %cmp676 = icmp ne i32 %385, %386
  br i1 %cmp676, label %if.then.681, label %lor.lhs.false.678

lor.lhs.false.678:                                ; preds = %if.then.675
  %387 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %prev_paper_height = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %387, i32 0, i32 75
  %388 = load i32, i32* %prev_paper_height, align 4, !tbaa !142
  %389 = load i32, i32* %height, align 4, !tbaa !5
  %cmp679 = icmp ne i32 %388, %389
  br i1 %cmp679, label %if.then.681, label %if.end.700

if.then.681:                                      ; preds = %lor.lhs.false.678, %if.then.675
  %arraydecay682 = getelementptr inbounds [16 x i8], [16 x i8]* %paper, i32 0, i32 0
  %390 = load i32, i32* %height, align 4, !tbaa !5
  %mul683 = mul nsw i32 %390, 10
  %cmp684 = icmp sgt i32 %mul683, 11905
  br i1 %cmp684, label %cond.true.686, label %cond.false.687

cond.true.686:                                    ; preds = %if.then.681
  br label %cond.end.689

cond.false.687:                                   ; preds = %if.then.681
  %391 = load i32, i32* %height, align 4, !tbaa !5
  %mul688 = mul nsw i32 %391, 10
  br label %cond.end.689

cond.end.689:                                     ; preds = %cond.false.687, %cond.true.686
  %cond690 = phi i32 [ 11905, %cond.true.686 ], [ %mul688, %cond.false.687 ]
  %392 = load i32, i32* %width, align 4, !tbaa !5
  %mul691 = mul nsw i32 %392, 10
  %cmp692 = icmp sgt i32 %mul691, 8418
  br i1 %cmp692, label %cond.true.694, label %cond.false.695

cond.true.694:                                    ; preds = %cond.end.689
  br label %cond.end.697

cond.false.695:                                   ; preds = %cond.end.689
  %393 = load i32, i32* %width, align 4, !tbaa !5
  %mul696 = mul nsw i32 %393, 10
  br label %cond.end.697

cond.end.697:                                     ; preds = %cond.false.695, %cond.true.694
  %cond698 = phi i32 [ 8418, %cond.true.694 ], [ %mul696, %cond.false.695 ]
  %call699 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay682, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i32 0, i32 0), i32 155, i32 %cond690, i32 %cond698) #5
  br label %if.end.700

if.end.700:                                       ; preds = %cond.end.697, %lor.lhs.false.678
  %394 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %arraydecay701 = getelementptr inbounds [16 x i8], [16 x i8]* %paper, i32 0, i32 0
  %call702 = call i32 @lputs(%struct.stream_s* %394, i8* %arraydecay701) #5
  br label %if.end.737

if.else.703:                                      ; preds = %if.else.672
  %395 = load i32, i32* %paper_size, align 4, !tbaa !5
  %cmp704 = icmp eq i32 %395, 81
  br i1 %cmp704, label %if.then.706, label %if.end.736

if.then.706:                                      ; preds = %if.else.703
  %396 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %prev_paper_width707 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %396, i32 0, i32 74
  %397 = load i32, i32* %prev_paper_width707, align 4, !tbaa !141
  %398 = load i32, i32* %width, align 4, !tbaa !5
  %cmp708 = icmp ne i32 %397, %398
  br i1 %cmp708, label %if.then.714, label %lor.lhs.false.710

lor.lhs.false.710:                                ; preds = %if.then.706
  %399 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %prev_paper_height711 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %399, i32 0, i32 75
  %400 = load i32, i32* %prev_paper_height711, align 4, !tbaa !142
  %401 = load i32, i32* %height, align 4, !tbaa !5
  %cmp712 = icmp ne i32 %400, %401
  br i1 %cmp712, label %if.then.714, label %if.end.733

if.then.714:                                      ; preds = %lor.lhs.false.710, %if.then.706
  %arraydecay715 = getelementptr inbounds [16 x i8], [16 x i8]* %paper, i32 0, i32 0
  %402 = load i32, i32* %width, align 4, !tbaa !5
  %mul716 = mul nsw i32 %402, 10
  %cmp717 = icmp sgt i32 %mul716, 11905
  br i1 %cmp717, label %cond.true.719, label %cond.false.720

cond.true.719:                                    ; preds = %if.then.714
  br label %cond.end.722

cond.false.720:                                   ; preds = %if.then.714
  %403 = load i32, i32* %width, align 4, !tbaa !5
  %mul721 = mul nsw i32 %403, 10
  br label %cond.end.722

cond.end.722:                                     ; preds = %cond.false.720, %cond.true.719
  %cond723 = phi i32 [ 11905, %cond.true.719 ], [ %mul721, %cond.false.720 ]
  %404 = load i32, i32* %height, align 4, !tbaa !5
  %mul724 = mul nsw i32 %404, 10
  %cmp725 = icmp sgt i32 %mul724, 8418
  br i1 %cmp725, label %cond.true.727, label %cond.false.728

cond.true.727:                                    ; preds = %cond.end.722
  br label %cond.end.730

cond.false.728:                                   ; preds = %cond.end.722
  %405 = load i32, i32* %height, align 4, !tbaa !5
  %mul729 = mul nsw i32 %405, 10
  br label %cond.end.730

cond.end.730:                                     ; preds = %cond.false.728, %cond.true.727
  %cond731 = phi i32 [ 8418, %cond.true.727 ], [ %mul729, %cond.false.728 ]
  %call732 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay715, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i32 0, i32 0), i32 155, i32 %cond723, i32 %cond731) #5
  br label %if.end.733

if.end.733:                                       ; preds = %cond.end.730, %lor.lhs.false.710
  %406 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %arraydecay734 = getelementptr inbounds [16 x i8], [16 x i8]* %paper, i32 0, i32 0
  %call735 = call i32 @lputs(%struct.stream_s* %406, i8* %arraydecay734) #5
  br label %if.end.736

if.end.736:                                       ; preds = %if.end.733, %if.else.703
  br label %if.end.737

if.end.737:                                       ; preds = %if.end.736, %if.end.700
  br label %if.end.738

if.end.738:                                       ; preds = %if.end.737, %if.end.671
  %407 = load i32, i32* %paper_size, align 4, !tbaa !5
  %408 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %prev_paper_size739 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %408, i32 0, i32 73
  store i32 %407, i32* %prev_paper_size739, align 4, !tbaa !140
  %409 = load i32, i32* %width, align 4, !tbaa !5
  %410 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %prev_paper_width740 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %410, i32 0, i32 74
  store i32 %409, i32* %prev_paper_width740, align 4, !tbaa !141
  %411 = load i32, i32* %height, align 4, !tbaa !5
  %412 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %prev_paper_height741 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %412, i32 0, i32 75
  store i32 %411, i32* %prev_paper_height741, align 4, !tbaa !142
  %413 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %faceup = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %413, i32 0, i32 80
  %414 = load i32, i32* %faceup, align 4, !tbaa !98
  %tobool742 = icmp ne i32 %414, 0
  br i1 %tobool742, label %if.then.743, label %if.end.748

if.then.743:                                      ; preds = %if.end.738
  %arraydecay744 = getelementptr inbounds [256 x i8], [256 x i8]* %faceup_char, i32 0, i32 0
  %call745 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay744, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i32 0, i32 0), i32 155) #5
  %415 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %arraydecay746 = getelementptr inbounds [256 x i8], [256 x i8]* %faceup_char, i32 0, i32 0
  %call747 = call i32 @lputs(%struct.stream_s* %415, i8* %arraydecay746) #5
  br label %if.end.748

if.end.748:                                       ; preds = %if.then.743, %if.end.738
  %416 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %first_page749 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %416, i32 0, i32 82
  %417 = load i32, i32* %first_page749, align 4, !tbaa !53
  %tobool750 = icmp ne i32 %417, 0
  br i1 %tobool750, label %if.then.751, label %if.end.761

if.then.751:                                      ; preds = %if.end.748
  %418 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %nup = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %418, i32 0, i32 79
  %419 = load i32, i32* %nup, align 4, !tbaa !94
  %cmp752 = icmp ne i32 %419, 1
  br i1 %cmp752, label %if.then.754, label %if.end.760

if.then.754:                                      ; preds = %if.then.751
  %arraydecay755 = getelementptr inbounds [10 x i8], [10 x i8]* %nup_char, i32 0, i32 0
  %420 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %nup756 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %420, i32 0, i32 79
  %421 = load i32, i32* %nup756, align 4, !tbaa !94
  %422 = load i32, i32* %paper_size, align 4, !tbaa !5
  %call757 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay755, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i32 0, i32 0), i32 155, i32 %421, i32 %422) #5
  %423 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %arraydecay758 = getelementptr inbounds [10 x i8], [10 x i8]* %nup_char, i32 0, i32 0
  %call759 = call i32 @lputs(%struct.stream_s* %423, i8* %arraydecay758) #5
  br label %if.end.760

if.end.760:                                       ; preds = %if.then.754, %if.then.751
  br label %if.end.761

if.end.761:                                       ; preds = %if.end.760, %if.end.748
  %424 = load i32, i32* %dupset, align 4, !tbaa !5
  %tobool762 = icmp ne i32 %424, 0
  br i1 %tobool762, label %land.lhs.true.763, label %if.else.802

land.lhs.true.763:                                ; preds = %if.end.761
  %425 = load i32, i32* %dup, align 4, !tbaa !5
  %tobool764 = icmp ne i32 %425, 0
  br i1 %tobool764, label %if.then.765, label %if.else.802

if.then.765:                                      ; preds = %land.lhs.true.763
  %426 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %prev_duplex_mode = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %426, i32 0, i32 78
  %427 = load i32, i32* %prev_duplex_mode, align 4, !tbaa !143
  %cmp766 = icmp eq i32 %427, 0
  br i1 %cmp766, label %if.then.772, label %lor.lhs.false.768

lor.lhs.false.768:                                ; preds = %if.then.765
  %428 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %prev_duplex_mode769 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %428, i32 0, i32 78
  %429 = load i32, i32* %prev_duplex_mode769, align 4, !tbaa !143
  %cmp770 = icmp eq i32 %429, 1
  br i1 %cmp770, label %if.then.772, label %if.end.801

if.then.772:                                      ; preds = %lor.lhs.false.768, %if.then.765
  %arraydecay773 = getelementptr inbounds [6 x i8], [6 x i8]* %duplex_char, i32 0, i32 0
  %call774 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay773, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0), i32 155) #5
  %430 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %arraydecay775 = getelementptr inbounds [6 x i8], [6 x i8]* %duplex_char, i32 0, i32 0
  %call776 = call i32 @lputs(%struct.stream_s* %430, i8* %arraydecay775) #5
  %431 = load i32, i32* %tum, align 4, !tbaa !5
  %tobool777 = icmp ne i32 %431, 0
  br i1 %tobool777, label %if.else.789, label %if.then.778

if.then.778:                                      ; preds = %if.then.772
  %432 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %prev_duplex_mode779 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %432, i32 0, i32 78
  %433 = load i32, i32* %prev_duplex_mode779, align 4, !tbaa !143
  %cmp780 = icmp ne i32 %433, 2
  br i1 %cmp780, label %if.then.782, label %if.end.787

if.then.782:                                      ; preds = %if.then.778
  %arraydecay783 = getelementptr inbounds [6 x i8], [6 x i8]* %tumble_char, i32 0, i32 0
  %call784 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay783, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0), i32 155) #5
  %434 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %arraydecay785 = getelementptr inbounds [6 x i8], [6 x i8]* %tumble_char, i32 0, i32 0
  %call786 = call i32 @lputs(%struct.stream_s* %434, i8* %arraydecay785) #5
  br label %if.end.787

if.end.787:                                       ; preds = %if.then.782, %if.then.778
  %435 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %prev_duplex_mode788 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %435, i32 0, i32 78
  store i32 2, i32* %prev_duplex_mode788, align 4, !tbaa !143
  br label %if.end.800

if.else.789:                                      ; preds = %if.then.772
  %436 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %prev_duplex_mode790 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %436, i32 0, i32 78
  %437 = load i32, i32* %prev_duplex_mode790, align 4, !tbaa !143
  %cmp791 = icmp ne i32 %437, 3
  br i1 %cmp791, label %if.then.793, label %if.end.798

if.then.793:                                      ; preds = %if.else.789
  %arraydecay794 = getelementptr inbounds [6 x i8], [6 x i8]* %tumble_char, i32 0, i32 0
  %call795 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay794, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i32 0, i32 0), i32 155) #5
  %438 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %arraydecay796 = getelementptr inbounds [6 x i8], [6 x i8]* %tumble_char, i32 0, i32 0
  %call797 = call i32 @lputs(%struct.stream_s* %438, i8* %arraydecay796) #5
  br label %if.end.798

if.end.798:                                       ; preds = %if.then.793, %if.else.789
  %439 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %prev_duplex_mode799 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %439, i32 0, i32 78
  store i32 3, i32* %prev_duplex_mode799, align 4, !tbaa !143
  br label %if.end.800

if.end.800:                                       ; preds = %if.end.798, %if.end.787
  br label %if.end.801

if.end.801:                                       ; preds = %if.end.800, %lor.lhs.false.768
  br label %if.end.818

if.else.802:                                      ; preds = %land.lhs.true.763, %if.end.761
  %440 = load i32, i32* %dupset, align 4, !tbaa !5
  %tobool803 = icmp ne i32 %440, 0
  br i1 %tobool803, label %land.lhs.true.804, label %if.end.817

land.lhs.true.804:                                ; preds = %if.else.802
  %441 = load i32, i32* %dup, align 4, !tbaa !5
  %tobool805 = icmp ne i32 %441, 0
  br i1 %tobool805, label %if.end.817, label %if.then.806

if.then.806:                                      ; preds = %land.lhs.true.804
  %442 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %prev_duplex_mode807 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %442, i32 0, i32 78
  %443 = load i32, i32* %prev_duplex_mode807, align 4, !tbaa !143
  %cmp808 = icmp ne i32 %443, 1
  br i1 %cmp808, label %if.then.810, label %if.end.815

if.then.810:                                      ; preds = %if.then.806
  %arraydecay811 = getelementptr inbounds [6 x i8], [6 x i8]* %duplex_char, i32 0, i32 0
  %call812 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay811, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0), i32 155) #5
  %444 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %arraydecay813 = getelementptr inbounds [6 x i8], [6 x i8]* %duplex_char, i32 0, i32 0
  %call814 = call i32 @lputs(%struct.stream_s* %444, i8* %arraydecay813) #5
  br label %if.end.815

if.end.815:                                       ; preds = %if.then.810, %if.then.806
  %445 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %prev_duplex_mode816 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %445, i32 0, i32 78
  store i32 1, i32* %prev_duplex_mode816, align 4, !tbaa !143
  br label %if.end.817

if.end.817:                                       ; preds = %if.end.815, %land.lhs.true.804, %if.else.802
  br label %if.end.818

if.end.818:                                       ; preds = %if.end.817, %if.end.801
  %446 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor819 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %446, i32 0, i32 5
  %w820 = bitcast %union.stream_cursor_s* %cursor819 to %struct.stream_cursor_write_s*
  %ptr821 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w820, i32 0, i32 1
  %447 = load i8*, i8** %ptr821, align 8, !tbaa !55
  %448 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor822 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %448, i32 0, i32 5
  %w823 = bitcast %union.stream_cursor_s* %cursor822 to %struct.stream_cursor_write_s*
  %limit824 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w823, i32 0, i32 2
  %449 = load i8*, i8** %limit824, align 8, !tbaa !57
  %cmp825 = icmp uge i8* %447, %449
  br i1 %cmp825, label %cond.false.835, label %cond.true.827

cond.true.827:                                    ; preds = %if.end.818
  %450 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor828 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %450, i32 0, i32 5
  %w829 = bitcast %union.stream_cursor_s* %cursor828 to %struct.stream_cursor_write_s*
  %ptr830 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w829, i32 0, i32 1
  %451 = load i8*, i8** %ptr830, align 8, !tbaa !55
  %incdec.ptr831 = getelementptr inbounds i8, i8* %451, i32 1
  store i8* %incdec.ptr831, i8** %ptr830, align 8, !tbaa !55
  %452 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor832 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %452, i32 0, i32 5
  %w833 = bitcast %union.stream_cursor_s* %cursor832 to %struct.stream_cursor_write_s*
  %ptr834 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w833, i32 0, i32 1
  %453 = load i8*, i8** %ptr834, align 8, !tbaa !55
  store i8 -101, i8* %453, align 1, !tbaa !58
  br label %cond.end.837

cond.false.835:                                   ; preds = %if.end.818
  %454 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call836 = call i32 @spputc(%struct.stream_s* %454, i8 zeroext -101) #5
  br label %cond.end.837

cond.end.837:                                     ; preds = %cond.false.835, %cond.true.827
  %cond838 = phi i32 [ 0, %cond.true.827 ], [ %call836, %cond.false.835 ]
  %455 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call839 = call i32 @lputs(%struct.stream_s* %455, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.32, i32 0, i32 0)) #5
  %456 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor840 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %456, i32 0, i32 5
  %w841 = bitcast %union.stream_cursor_s* %cursor840 to %struct.stream_cursor_write_s*
  %ptr842 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w841, i32 0, i32 1
  %457 = load i8*, i8** %ptr842, align 8, !tbaa !55
  %458 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor843 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %458, i32 0, i32 5
  %w844 = bitcast %union.stream_cursor_s* %cursor843 to %struct.stream_cursor_write_s*
  %limit845 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w844, i32 0, i32 2
  %459 = load i8*, i8** %limit845, align 8, !tbaa !57
  %cmp846 = icmp uge i8* %457, %459
  br i1 %cmp846, label %cond.false.856, label %cond.true.848

cond.true.848:                                    ; preds = %cond.end.837
  %460 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor849 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %460, i32 0, i32 5
  %w850 = bitcast %union.stream_cursor_s* %cursor849 to %struct.stream_cursor_write_s*
  %ptr851 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w850, i32 0, i32 1
  %461 = load i8*, i8** %ptr851, align 8, !tbaa !55
  %incdec.ptr852 = getelementptr inbounds i8, i8* %461, i32 1
  store i8* %incdec.ptr852, i8** %ptr851, align 8, !tbaa !55
  %462 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor853 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %462, i32 0, i32 5
  %w854 = bitcast %union.stream_cursor_s* %cursor853 to %struct.stream_cursor_write_s*
  %ptr855 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w854, i32 0, i32 1
  %463 = load i8*, i8** %ptr855, align 8, !tbaa !55
  store i8 -101, i8* %463, align 1, !tbaa !58
  br label %cond.end.858

cond.false.856:                                   ; preds = %cond.end.837
  %464 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call857 = call i32 @spputc(%struct.stream_s* %464, i8 zeroext -101) #5
  br label %cond.end.858

cond.end.858:                                     ; preds = %cond.false.856, %cond.true.848
  %cond859 = phi i32 [ 0, %cond.true.848 ], [ %call857, %cond.false.856 ]
  %465 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call860 = call i32 @lputs(%struct.stream_s* %465, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0)) #5
  %466 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor861 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %466, i32 0, i32 5
  %w862 = bitcast %union.stream_cursor_s* %cursor861 to %struct.stream_cursor_write_s*
  %ptr863 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w862, i32 0, i32 1
  %467 = load i8*, i8** %ptr863, align 8, !tbaa !55
  %468 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor864 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %468, i32 0, i32 5
  %w865 = bitcast %union.stream_cursor_s* %cursor864 to %struct.stream_cursor_write_s*
  %limit866 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w865, i32 0, i32 2
  %469 = load i8*, i8** %limit866, align 8, !tbaa !57
  %cmp867 = icmp uge i8* %467, %469
  br i1 %cmp867, label %cond.false.877, label %cond.true.869

cond.true.869:                                    ; preds = %cond.end.858
  %470 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor870 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %470, i32 0, i32 5
  %w871 = bitcast %union.stream_cursor_s* %cursor870 to %struct.stream_cursor_write_s*
  %ptr872 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w871, i32 0, i32 1
  %471 = load i8*, i8** %ptr872, align 8, !tbaa !55
  %incdec.ptr873 = getelementptr inbounds i8, i8* %471, i32 1
  store i8* %incdec.ptr873, i8** %ptr872, align 8, !tbaa !55
  %472 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor874 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %472, i32 0, i32 5
  %w875 = bitcast %union.stream_cursor_s* %cursor874 to %struct.stream_cursor_write_s*
  %ptr876 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w875, i32 0, i32 1
  %473 = load i8*, i8** %ptr876, align 8, !tbaa !55
  store i8 -101, i8* %473, align 1, !tbaa !58
  br label %cond.end.879

cond.false.877:                                   ; preds = %cond.end.858
  %474 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call878 = call i32 @spputc(%struct.stream_s* %474, i8 zeroext -101) #5
  br label %cond.end.879

cond.end.879:                                     ; preds = %cond.false.877, %cond.true.869
  %cond880 = phi i32 [ 0, %cond.true.869 ], [ %call878, %cond.false.877 ]
  %475 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call881 = call i32 @lputs(%struct.stream_s* %475, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i32 0, i32 0)) #5
  %arraydecay882 = getelementptr inbounds [14 x i8], [14 x i8]* %unit, i32 0, i32 0
  %476 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %HWResolution883 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %476, i32 0, i32 22
  %arrayidx884 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution883, i32 0, i64 0
  %477 = load float, float* %arrayidx884, align 4, !tbaa !69
  %conv885 = fptosi float %477 to i32
  %call886 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay882, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), i32 155, i32 %conv885) #5
  %478 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %arraydecay887 = getelementptr inbounds [14 x i8], [14 x i8]* %unit, i32 0, i32 0
  %call888 = call i32 @lputs(%struct.stream_s* %478, i8* %arraydecay887) #5
  %arraydecay889 = getelementptr inbounds [8 x i8], [8 x i8]* %page_header, i32 0, i32 0
  %call890 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay889, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i32 0, i32 0), i32 27, i32 30) #5
  %479 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %arraydecay891 = getelementptr inbounds [8 x i8], [8 x i8]* %page_header, i32 0, i32 0
  %call892 = call i32 @lputs(%struct.stream_s* %479, i8* %arraydecay891) #5
  %480 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call893 = call i32 @lputs(%struct.stream_s* %480, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i32 0, i32 0)) #5
  %481 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %482 = load i32, i32* %dpi, align 4, !tbaa !5
  call void @sput_lips_int(%struct.stream_s* %481, i32 %482) #5
  %483 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call894 = call i32 @lputs(%struct.stream_s* %483, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i32 0, i32 0)) #5
  %484 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor895 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %484, i32 0, i32 5
  %w896 = bitcast %union.stream_cursor_s* %cursor895 to %struct.stream_cursor_write_s*
  %ptr897 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w896, i32 0, i32 1
  %485 = load i8*, i8** %ptr897, align 8, !tbaa !55
  %486 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor898 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %486, i32 0, i32 5
  %w899 = bitcast %union.stream_cursor_s* %cursor898 to %struct.stream_cursor_write_s*
  %limit900 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w899, i32 0, i32 2
  %487 = load i8*, i8** %limit900, align 8, !tbaa !57
  %cmp901 = icmp uge i8* %485, %487
  br i1 %cmp901, label %cond.false.911, label %cond.true.903

cond.true.903:                                    ; preds = %cond.end.879
  %488 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor904 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %488, i32 0, i32 5
  %w905 = bitcast %union.stream_cursor_s* %cursor904 to %struct.stream_cursor_write_s*
  %ptr906 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w905, i32 0, i32 1
  %489 = load i8*, i8** %ptr906, align 8, !tbaa !55
  %incdec.ptr907 = getelementptr inbounds i8, i8* %489, i32 1
  store i8* %incdec.ptr907, i8** %ptr906, align 8, !tbaa !55
  %490 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor908 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %490, i32 0, i32 5
  %w909 = bitcast %union.stream_cursor_s* %cursor908 to %struct.stream_cursor_write_s*
  %ptr910 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w909, i32 0, i32 1
  %491 = load i8*, i8** %ptr910, align 8, !tbaa !55
  store i8 30, i8* %491, align 1, !tbaa !58
  br label %cond.end.913

cond.false.911:                                   ; preds = %cond.end.879
  %492 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call912 = call i32 @spputc(%struct.stream_s* %492, i8 zeroext 30) #5
  br label %cond.end.913

cond.end.913:                                     ; preds = %cond.false.911, %cond.true.903
  %cond914 = phi i32 [ 0, %cond.true.903 ], [ %call912, %cond.false.911 ]
  %493 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %color_info915 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %493, i32 0, i32 11
  %depth916 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info915, i32 0, i32 3
  %494 = load i16, i16* %depth916, align 2, !tbaa !75
  %conv917 = zext i16 %494 to i32
  %cmp918 = icmp eq i32 %conv917, 8
  br i1 %cmp918, label %if.then.920, label %if.else.925

if.then.920:                                      ; preds = %cond.end.913
  %arraydecay921 = getelementptr inbounds [7 x i8], [7 x i8]* %l4vmono_page_header, i32 0, i32 0
  %call922 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay921, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i32 0, i32 0), i32 30, i32 30) #5
  %495 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %arraydecay923 = getelementptr inbounds [7 x i8], [7 x i8]* %l4vmono_page_header, i32 0, i32 0
  %call924 = call i32 @lputs(%struct.stream_s* %495, i8* %arraydecay923) #5
  br label %if.end.930

if.else.925:                                      ; preds = %cond.end.913
  %arraydecay926 = getelementptr inbounds [7 x i8], [7 x i8]* %l4vcolor_page_header, i32 0, i32 0
  %call927 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay926, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i32 0, i32 0), i32 30, i32 30) #5
  %496 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %arraydecay928 = getelementptr inbounds [7 x i8], [7 x i8]* %l4vcolor_page_header, i32 0, i32 0
  %call929 = call i32 @lputs(%struct.stream_s* %496, i8* %arraydecay928) #5
  br label %if.end.930

if.end.930:                                       ; preds = %if.else.925, %if.then.920
  %497 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call931 = call i32 @lputs(%struct.stream_s* %497, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i32 0, i32 0)) #5
  %498 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %499 = load i32, i32* %width, align 4, !tbaa !5
  %conv932 = sitofp i32 %499 to double
  %500 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %HWMargins = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %500, i32 0, i32 25
  %arrayidx933 = getelementptr inbounds [4 x float], [4 x float]* %HWMargins, i32 0, i64 0
  %501 = load float, float* %arrayidx933, align 4, !tbaa !69
  %conv934 = fpext float %501 to double
  %div = fdiv double %conv934, 7.200000e+01
  %sub935 = fsub double %conv932, %div
  %502 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %HWMargins936 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %502, i32 0, i32 25
  %arrayidx937 = getelementptr inbounds [4 x float], [4 x float]* %HWMargins936, i32 0, i64 2
  %503 = load float, float* %arrayidx937, align 4, !tbaa !69
  %conv938 = fpext float %503 to double
  %div939 = fdiv double %conv938, 7.200000e+01
  %sub940 = fsub double %sub935, %div939
  %504 = load i32, i32* %dpi, align 4, !tbaa !5
  %conv941 = sitofp i32 %504 to double
  %mul942 = fmul double %sub940, %conv941
  %div943 = fdiv double %mul942, 7.200000e+01
  %conv944 = fptosi double %div943 to i32
  call void @sput_lips_int(%struct.stream_s* %498, i32 %conv944) #5
  %505 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %506 = load i32, i32* %height, align 4, !tbaa !5
  %conv945 = sitofp i32 %506 to double
  %507 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %HWMargins946 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %507, i32 0, i32 25
  %arrayidx947 = getelementptr inbounds [4 x float], [4 x float]* %HWMargins946, i32 0, i64 1
  %508 = load float, float* %arrayidx947, align 4, !tbaa !69
  %conv948 = fpext float %508 to double
  %div949 = fdiv double %conv948, 7.200000e+01
  %sub950 = fsub double %conv945, %div949
  %509 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %HWMargins951 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %509, i32 0, i32 25
  %arrayidx952 = getelementptr inbounds [4 x float], [4 x float]* %HWMargins951, i32 0, i64 3
  %510 = load float, float* %arrayidx952, align 4, !tbaa !69
  %conv953 = fpext float %510 to double
  %div954 = fdiv double %conv953, 7.200000e+01
  %sub955 = fsub double %sub950, %div954
  %511 = load i32, i32* %dpi, align 4, !tbaa !5
  %conv956 = sitofp i32 %511 to double
  %mul957 = fmul double %sub955, %conv956
  %div958 = fdiv double %mul957, 7.200000e+01
  %conv959 = fptosi double %div958 to i32
  call void @sput_lips_int(%struct.stream_s* %505, i32 %conv959) #5
  %512 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor960 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %512, i32 0, i32 5
  %w961 = bitcast %union.stream_cursor_s* %cursor960 to %struct.stream_cursor_write_s*
  %ptr962 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w961, i32 0, i32 1
  %513 = load i8*, i8** %ptr962, align 8, !tbaa !55
  %514 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor963 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %514, i32 0, i32 5
  %w964 = bitcast %union.stream_cursor_s* %cursor963 to %struct.stream_cursor_write_s*
  %limit965 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w964, i32 0, i32 2
  %515 = load i8*, i8** %limit965, align 8, !tbaa !57
  %cmp966 = icmp uge i8* %513, %515
  br i1 %cmp966, label %cond.false.976, label %cond.true.968

cond.true.968:                                    ; preds = %if.end.930
  %516 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor969 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %516, i32 0, i32 5
  %w970 = bitcast %union.stream_cursor_s* %cursor969 to %struct.stream_cursor_write_s*
  %ptr971 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w970, i32 0, i32 1
  %517 = load i8*, i8** %ptr971, align 8, !tbaa !55
  %incdec.ptr972 = getelementptr inbounds i8, i8* %517, i32 1
  store i8* %incdec.ptr972, i8** %ptr971, align 8, !tbaa !55
  %518 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor973 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %518, i32 0, i32 5
  %w974 = bitcast %union.stream_cursor_s* %cursor973 to %struct.stream_cursor_write_s*
  %ptr975 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w974, i32 0, i32 1
  %519 = load i8*, i8** %ptr975, align 8, !tbaa !55
  store i8 30, i8* %519, align 1, !tbaa !58
  br label %cond.end.978

cond.false.976:                                   ; preds = %if.end.930
  %520 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call977 = call i32 @spputc(%struct.stream_s* %520, i8 zeroext 30) #5
  br label %cond.end.978

cond.end.978:                                     ; preds = %cond.false.976, %cond.true.968
  %cond979 = phi i32 [ 0, %cond.true.968 ], [ %call977, %cond.false.976 ]
  %521 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %HWMargins980 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %521, i32 0, i32 25
  %arrayidx981 = getelementptr inbounds [4 x float], [4 x float]* %HWMargins980, i32 0, i64 0
  %522 = load float, float* %arrayidx981, align 4, !tbaa !69
  %conv982 = fpext float %522 to double
  %div983 = fdiv double %conv982, 7.200000e+01
  %sub984 = fsub double %div983, 0x3FC93264C993264D
  %523 = load i32, i32* %dpi, align 4, !tbaa !5
  %conv985 = sitofp i32 %523 to double
  %mul986 = fmul double %sub984, %conv985
  %conv987 = fptosi double %mul986 to i32
  store i32 %conv987, i32* %x0, align 4, !tbaa !5
  %524 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %HWMargins988 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %524, i32 0, i32 25
  %arrayidx989 = getelementptr inbounds [4 x float], [4 x float]* %HWMargins988, i32 0, i64 1
  %525 = load float, float* %arrayidx989, align 4, !tbaa !69
  %conv990 = fpext float %525 to double
  %div991 = fdiv double %conv990, 7.200000e+01
  %sub992 = fsub double %div991, 0x3FC93264C993264D
  %526 = load i32, i32* %dpi, align 4, !tbaa !5
  %conv993 = sitofp i32 %526 to double
  %mul994 = fmul double %sub992, %conv993
  %conv995 = fptosi double %mul994 to i32
  store i32 %conv995, i32* %y0, align 4, !tbaa !5
  %527 = load i32, i32* %x0, align 4, !tbaa !5
  %cmp996 = icmp ne i32 %527, 0
  br i1 %cmp996, label %land.lhs.true.998, label %if.end.1023

land.lhs.true.998:                                ; preds = %cond.end.978
  %528 = load i32, i32* %y0, align 4, !tbaa !5
  %cmp999 = icmp ne i32 %528, 0
  br i1 %cmp999, label %if.then.1001, label %if.end.1023

if.then.1001:                                     ; preds = %land.lhs.true.998
  %529 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call1002 = call i32 @lputs(%struct.stream_s* %529, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i32 0, i32 0)) #5
  %530 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %531 = load i32, i32* %x0, align 4, !tbaa !5
  call void @sput_lips_int(%struct.stream_s* %530, i32 %531) #5
  %532 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %533 = load i32, i32* %y0, align 4, !tbaa !5
  call void @sput_lips_int(%struct.stream_s* %532, i32 %533) #5
  %534 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor1003 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %534, i32 0, i32 5
  %w1004 = bitcast %union.stream_cursor_s* %cursor1003 to %struct.stream_cursor_write_s*
  %ptr1005 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w1004, i32 0, i32 1
  %535 = load i8*, i8** %ptr1005, align 8, !tbaa !55
  %536 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor1006 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %536, i32 0, i32 5
  %w1007 = bitcast %union.stream_cursor_s* %cursor1006 to %struct.stream_cursor_write_s*
  %limit1008 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w1007, i32 0, i32 2
  %537 = load i8*, i8** %limit1008, align 8, !tbaa !57
  %cmp1009 = icmp uge i8* %535, %537
  br i1 %cmp1009, label %cond.false.1019, label %cond.true.1011

cond.true.1011:                                   ; preds = %if.then.1001
  %538 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor1012 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %538, i32 0, i32 5
  %w1013 = bitcast %union.stream_cursor_s* %cursor1012 to %struct.stream_cursor_write_s*
  %ptr1014 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w1013, i32 0, i32 1
  %539 = load i8*, i8** %ptr1014, align 8, !tbaa !55
  %incdec.ptr1015 = getelementptr inbounds i8, i8* %539, i32 1
  store i8* %incdec.ptr1015, i8** %ptr1014, align 8, !tbaa !55
  %540 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor1016 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %540, i32 0, i32 5
  %w1017 = bitcast %union.stream_cursor_s* %cursor1016 to %struct.stream_cursor_write_s*
  %ptr1018 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w1017, i32 0, i32 1
  %541 = load i8*, i8** %ptr1018, align 8, !tbaa !55
  store i8 30, i8* %541, align 1, !tbaa !58
  br label %cond.end.1021

cond.false.1019:                                  ; preds = %if.then.1001
  %542 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call1020 = call i32 @spputc(%struct.stream_s* %542, i8 zeroext 30) #5
  br label %cond.end.1021

cond.end.1021:                                    ; preds = %cond.false.1019, %cond.true.1011
  %cond1022 = phi i32 [ 0, %cond.true.1011 ], [ %call1020, %cond.false.1019 ]
  br label %if.end.1023

if.end.1023:                                      ; preds = %cond.end.1021, %land.lhs.true.998, %cond.end.978
  %543 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call1024 = call i32 @lputs(%struct.stream_s* %543, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.43, i32 0, i32 0)) #5
  %544 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor1025 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %544, i32 0, i32 5
  %w1026 = bitcast %union.stream_cursor_s* %cursor1025 to %struct.stream_cursor_write_s*
  %ptr1027 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w1026, i32 0, i32 1
  %545 = load i8*, i8** %ptr1027, align 8, !tbaa !55
  %546 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor1028 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %546, i32 0, i32 5
  %w1029 = bitcast %union.stream_cursor_s* %cursor1028 to %struct.stream_cursor_write_s*
  %limit1030 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w1029, i32 0, i32 2
  %547 = load i8*, i8** %limit1030, align 8, !tbaa !57
  %cmp1031 = icmp uge i8* %545, %547
  br i1 %cmp1031, label %cond.false.1041, label %cond.true.1033

cond.true.1033:                                   ; preds = %if.end.1023
  %548 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor1034 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %548, i32 0, i32 5
  %w1035 = bitcast %union.stream_cursor_s* %cursor1034 to %struct.stream_cursor_write_s*
  %ptr1036 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w1035, i32 0, i32 1
  %549 = load i8*, i8** %ptr1036, align 8, !tbaa !55
  %incdec.ptr1037 = getelementptr inbounds i8, i8* %549, i32 1
  store i8* %incdec.ptr1037, i8** %ptr1036, align 8, !tbaa !55
  %550 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor1038 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %550, i32 0, i32 5
  %w1039 = bitcast %union.stream_cursor_s* %cursor1038 to %struct.stream_cursor_write_s*
  %ptr1040 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w1039, i32 0, i32 1
  %551 = load i8*, i8** %ptr1040, align 8, !tbaa !55
  store i8 30, i8* %551, align 1, !tbaa !58
  br label %cond.end.1043

cond.false.1041:                                  ; preds = %if.end.1023
  %552 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call1042 = call i32 @spputc(%struct.stream_s* %552, i8 zeroext 30) #5
  br label %cond.end.1043

cond.end.1043:                                    ; preds = %cond.false.1041, %cond.true.1033
  %cond1044 = phi i32 [ 0, %cond.true.1033 ], [ %call1042, %cond.false.1041 ]
  %553 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call1045 = call i32 @lputs(%struct.stream_s* %553, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i32 0, i32 0)) #5
  %554 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor1046 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %554, i32 0, i32 5
  %w1047 = bitcast %union.stream_cursor_s* %cursor1046 to %struct.stream_cursor_write_s*
  %ptr1048 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w1047, i32 0, i32 1
  %555 = load i8*, i8** %ptr1048, align 8, !tbaa !55
  %556 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor1049 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %556, i32 0, i32 5
  %w1050 = bitcast %union.stream_cursor_s* %cursor1049 to %struct.stream_cursor_write_s*
  %limit1051 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w1050, i32 0, i32 2
  %557 = load i8*, i8** %limit1051, align 8, !tbaa !57
  %cmp1052 = icmp uge i8* %555, %557
  br i1 %cmp1052, label %cond.false.1062, label %cond.true.1054

cond.true.1054:                                   ; preds = %cond.end.1043
  %558 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor1055 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %558, i32 0, i32 5
  %w1056 = bitcast %union.stream_cursor_s* %cursor1055 to %struct.stream_cursor_write_s*
  %ptr1057 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w1056, i32 0, i32 1
  %559 = load i8*, i8** %ptr1057, align 8, !tbaa !55
  %incdec.ptr1058 = getelementptr inbounds i8, i8* %559, i32 1
  store i8* %incdec.ptr1058, i8** %ptr1057, align 8, !tbaa !55
  %560 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor1059 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %560, i32 0, i32 5
  %w1060 = bitcast %union.stream_cursor_s* %cursor1059 to %struct.stream_cursor_write_s*
  %ptr1061 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w1060, i32 0, i32 1
  %561 = load i8*, i8** %ptr1061, align 8, !tbaa !55
  store i8 30, i8* %561, align 1, !tbaa !58
  br label %cond.end.1064

cond.false.1062:                                  ; preds = %cond.end.1043
  %562 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call1063 = call i32 @spputc(%struct.stream_s* %562, i8 zeroext 30) #5
  br label %cond.end.1064

cond.end.1064:                                    ; preds = %cond.false.1062, %cond.true.1054
  %cond1065 = phi i32 [ 0, %cond.true.1054 ], [ %call1063, %cond.false.1062 ]
  %563 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call1066 = call i32 @lputs(%struct.stream_s* %563, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i32 0, i32 0)) #5
  %564 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor1067 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %564, i32 0, i32 5
  %w1068 = bitcast %union.stream_cursor_s* %cursor1067 to %struct.stream_cursor_write_s*
  %ptr1069 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w1068, i32 0, i32 1
  %565 = load i8*, i8** %ptr1069, align 8, !tbaa !55
  %566 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor1070 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %566, i32 0, i32 5
  %w1071 = bitcast %union.stream_cursor_s* %cursor1070 to %struct.stream_cursor_write_s*
  %limit1072 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w1071, i32 0, i32 2
  %567 = load i8*, i8** %limit1072, align 8, !tbaa !57
  %cmp1073 = icmp uge i8* %565, %567
  br i1 %cmp1073, label %cond.false.1083, label %cond.true.1075

cond.true.1075:                                   ; preds = %cond.end.1064
  %568 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor1076 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %568, i32 0, i32 5
  %w1077 = bitcast %union.stream_cursor_s* %cursor1076 to %struct.stream_cursor_write_s*
  %ptr1078 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w1077, i32 0, i32 1
  %569 = load i8*, i8** %ptr1078, align 8, !tbaa !55
  %incdec.ptr1079 = getelementptr inbounds i8, i8* %569, i32 1
  store i8* %incdec.ptr1079, i8** %ptr1078, align 8, !tbaa !55
  %570 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor1080 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %570, i32 0, i32 5
  %w1081 = bitcast %union.stream_cursor_s* %cursor1080 to %struct.stream_cursor_write_s*
  %ptr1082 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w1081, i32 0, i32 1
  %571 = load i8*, i8** %ptr1082, align 8, !tbaa !55
  store i8 30, i8* %571, align 1, !tbaa !58
  br label %cond.end.1085

cond.false.1083:                                  ; preds = %cond.end.1064
  %572 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call1084 = call i32 @spputc(%struct.stream_s* %572, i8 zeroext 30) #5
  br label %cond.end.1085

cond.end.1085:                                    ; preds = %cond.false.1083, %cond.true.1075
  %cond1086 = phi i32 [ 0, %cond.true.1075 ], [ %call1084, %cond.false.1083 ]
  %573 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call1087 = call i32 @lputs(%struct.stream_s* %573, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i32 0, i32 0)) #5
  %574 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor1088 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %574, i32 0, i32 5
  %w1089 = bitcast %union.stream_cursor_s* %cursor1088 to %struct.stream_cursor_write_s*
  %ptr1090 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w1089, i32 0, i32 1
  %575 = load i8*, i8** %ptr1090, align 8, !tbaa !55
  %576 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor1091 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %576, i32 0, i32 5
  %w1092 = bitcast %union.stream_cursor_s* %cursor1091 to %struct.stream_cursor_write_s*
  %limit1093 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w1092, i32 0, i32 2
  %577 = load i8*, i8** %limit1093, align 8, !tbaa !57
  %cmp1094 = icmp uge i8* %575, %577
  br i1 %cmp1094, label %cond.false.1104, label %cond.true.1096

cond.true.1096:                                   ; preds = %cond.end.1085
  %578 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor1097 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %578, i32 0, i32 5
  %w1098 = bitcast %union.stream_cursor_s* %cursor1097 to %struct.stream_cursor_write_s*
  %ptr1099 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w1098, i32 0, i32 1
  %579 = load i8*, i8** %ptr1099, align 8, !tbaa !55
  %incdec.ptr1100 = getelementptr inbounds i8, i8* %579, i32 1
  store i8* %incdec.ptr1100, i8** %ptr1099, align 8, !tbaa !55
  %580 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor1101 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %580, i32 0, i32 5
  %w1102 = bitcast %union.stream_cursor_s* %cursor1101 to %struct.stream_cursor_write_s*
  %ptr1103 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w1102, i32 0, i32 1
  %581 = load i8*, i8** %ptr1103, align 8, !tbaa !55
  store i8 30, i8* %581, align 1, !tbaa !58
  br label %cond.end.1106

cond.false.1104:                                  ; preds = %cond.end.1085
  %582 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call1105 = call i32 @spputc(%struct.stream_s* %582, i8 zeroext 30) #5
  br label %cond.end.1106

cond.end.1106:                                    ; preds = %cond.false.1104, %cond.true.1096
  %cond1107 = phi i32 [ 0, %cond.true.1096 ], [ %call1105, %cond.false.1104 ]
  %583 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %MaskState = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %583, i32 0, i32 90
  store i32 1, i32* %MaskState, align 4, !tbaa !74
  %584 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %linecap = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %584, i32 0, i32 96
  store i32 0, i32* %linecap, align 4, !tbaa !144
  %585 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call1108 = call i32 @lputs(%struct.stream_s* %585, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i32 0, i32 0)) #5
  %586 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @sput_lips_int(%struct.stream_s* %586, i32 3277) #5
  %587 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor1109 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %587, i32 0, i32 5
  %w1110 = bitcast %union.stream_cursor_s* %cursor1109 to %struct.stream_cursor_write_s*
  %ptr1111 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w1110, i32 0, i32 1
  %588 = load i8*, i8** %ptr1111, align 8, !tbaa !55
  %589 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor1112 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %589, i32 0, i32 5
  %w1113 = bitcast %union.stream_cursor_s* %cursor1112 to %struct.stream_cursor_write_s*
  %limit1114 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w1113, i32 0, i32 2
  %590 = load i8*, i8** %limit1114, align 8, !tbaa !57
  %cmp1115 = icmp uge i8* %588, %590
  br i1 %cmp1115, label %cond.false.1125, label %cond.true.1117

cond.true.1117:                                   ; preds = %cond.end.1106
  %591 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor1118 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %591, i32 0, i32 5
  %w1119 = bitcast %union.stream_cursor_s* %cursor1118 to %struct.stream_cursor_write_s*
  %ptr1120 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w1119, i32 0, i32 1
  %592 = load i8*, i8** %ptr1120, align 8, !tbaa !55
  %incdec.ptr1121 = getelementptr inbounds i8, i8* %592, i32 1
  store i8* %incdec.ptr1121, i8** %ptr1120, align 8, !tbaa !55
  %593 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor1122 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %593, i32 0, i32 5
  %w1123 = bitcast %union.stream_cursor_s* %cursor1122 to %struct.stream_cursor_write_s*
  %ptr1124 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w1123, i32 0, i32 1
  %594 = load i8*, i8** %ptr1124, align 8, !tbaa !55
  store i8 30, i8* %594, align 1, !tbaa !58
  br label %cond.end.1127

cond.false.1125:                                  ; preds = %cond.end.1106
  %595 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call1126 = call i32 @spputc(%struct.stream_s* %595, i8 zeroext 30) #5
  br label %cond.end.1127

cond.end.1127:                                    ; preds = %cond.false.1125, %cond.true.1117
  %cond1128 = phi i32 [ 0, %cond.true.1117 ], [ %call1126, %cond.false.1125 ]
  %596 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call1129 = call i32 @lputs(%struct.stream_s* %596, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i32 0, i32 0)) #5
  %597 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor1130 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %597, i32 0, i32 5
  %w1131 = bitcast %union.stream_cursor_s* %cursor1130 to %struct.stream_cursor_write_s*
  %ptr1132 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w1131, i32 0, i32 1
  %598 = load i8*, i8** %ptr1132, align 8, !tbaa !55
  %599 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor1133 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %599, i32 0, i32 5
  %w1134 = bitcast %union.stream_cursor_s* %cursor1133 to %struct.stream_cursor_write_s*
  %limit1135 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w1134, i32 0, i32 2
  %600 = load i8*, i8** %limit1135, align 8, !tbaa !57
  %cmp1136 = icmp uge i8* %598, %600
  br i1 %cmp1136, label %cond.false.1146, label %cond.true.1138

cond.true.1138:                                   ; preds = %cond.end.1127
  %601 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor1139 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %601, i32 0, i32 5
  %w1140 = bitcast %union.stream_cursor_s* %cursor1139 to %struct.stream_cursor_write_s*
  %ptr1141 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w1140, i32 0, i32 1
  %602 = load i8*, i8** %ptr1141, align 8, !tbaa !55
  %incdec.ptr1142 = getelementptr inbounds i8, i8* %602, i32 1
  store i8* %incdec.ptr1142, i8** %ptr1141, align 8, !tbaa !55
  %603 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor1143 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %603, i32 0, i32 5
  %w1144 = bitcast %union.stream_cursor_s* %cursor1143 to %struct.stream_cursor_write_s*
  %ptr1145 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w1144, i32 0, i32 1
  %604 = load i8*, i8** %ptr1145, align 8, !tbaa !55
  store i8 30, i8* %604, align 1, !tbaa !58
  br label %cond.end.1148

cond.false.1146:                                  ; preds = %cond.end.1127
  %605 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call1147 = call i32 @spputc(%struct.stream_s* %605, i8 zeroext 30) #5
  br label %cond.end.1148

cond.end.1148:                                    ; preds = %cond.false.1146, %cond.true.1138
  %cond1149 = phi i32 [ 0, %cond.true.1138 ], [ %call1147, %cond.false.1146 ]
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end.1148, %if.then.58
  %606 = bitcast i32* %tum to i8*
  call void @llvm.lifetime.end(i64 4, i8* %606) #2
  %607 = bitcast i32* %dupset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %607) #2
  %608 = bitcast i32* %dup to i8*
  call void @llvm.lifetime.end(i64 4, i8* %608) #2
  %609 = bitcast [256 x i8]* %faceup_char to i8*
  call void @llvm.lifetime.end(i64 256, i8* %609) #2
  %610 = bitcast [16 x i8]* %paper to i8*
  call void @llvm.lifetime.end(i64 16, i8* %610) #2
  %611 = bitcast [5 x i8]* %feedmode to i8*
  call void @llvm.lifetime.end(i64 5, i8* %611) #2
  %612 = bitcast [18 x i8]* %username to i8*
  call void @llvm.lifetime.end(i64 18, i8* %612) #2
  %613 = bitcast [10 x i8]* %nup_char to i8*
  call void @llvm.lifetime.end(i64 10, i8* %613) #2
  %614 = bitcast [5 x i8]* %toner_s to i8*
  call void @llvm.lifetime.end(i64 5, i8* %614) #2
  %615 = bitcast [26 x i8]* %toner_d to i8*
  call void @llvm.lifetime.end(i64 26, i8* %615) #2
  %616 = bitcast [6 x i8]* %tumble_char to i8*
  call void @llvm.lifetime.end(i64 6, i8* %616) #2
  %617 = bitcast [6 x i8]* %duplex_char to i8*
  call void @llvm.lifetime.end(i64 6, i8* %617) #2
  %618 = bitcast [7 x i8]* %l4vcolor_page_header to i8*
  call void @llvm.lifetime.end(i64 7, i8* %618) #2
  %619 = bitcast [7 x i8]* %l4vmono_page_header to i8*
  call void @llvm.lifetime.end(i64 7, i8* %619) #2
  %620 = bitcast [8 x i8]* %page_header to i8*
  call void @llvm.lifetime.end(i64 8, i8* %620) #2
  %621 = bitcast [14 x i8]* %unit to i8*
  call void @llvm.lifetime.end(i64 14, i8* %621) #2
  %622 = bitcast [6 x i8]* %dpi_char to i8*
  call void @llvm.lifetime.end(i64 6, i8* %622) #2
  %623 = bitcast i32* %y0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %623) #2
  %624 = bitcast i32* %x0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %624) #2
  %625 = bitcast i32* %paper_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %625) #2
  %626 = bitcast i32* %height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %626) #2
  %627 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %627) #2
  %628 = bitcast i32* %dpi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %628) #2
  %629 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %629) #2
  %630 = bitcast %struct.gx_device_lips4v_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %630) #2
  %631 = load i32, i32* %retval
  ret i32 %631
}

; Function Attrs: nounwind uwtable
define internal i32 @lips4v_setlinewidth(%struct.gx_device_vector_s* %vdev, double %width) #0 {
entry:
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %width.addr = alloca double, align 8
  %s = alloca %struct.stream_s*, align 8
  %pdev = alloca %struct.gx_device_lips4v_s*, align 8
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store double %width, double* %width.addr, align 8, !tbaa !77
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %call = call %struct.stream_s* @gdev_vector_stream(%struct.gx_device_vector_s* %1) #5
  store %struct.stream_s* %call, %struct.stream_s** %s, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_lips4v_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %4 = bitcast %struct.gx_device_vector_s* %3 to %struct.gx_device_lips4v_s*
  store %struct.gx_device_lips4v_s* %4, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %5 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %TextMode = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %5, i32 0, i32 91
  %6 = load i32, i32* %TextMode, align 4, !tbaa !54
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %7, i32 0, i32 5
  %w = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_write_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 1
  %8 = load i8*, i8** %ptr, align 8, !tbaa !55
  %9 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor1 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %9, i32 0, i32 5
  %w2 = bitcast %union.stream_cursor_s* %cursor1 to %struct.stream_cursor_write_s*
  %limit = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w2, i32 0, i32 2
  %10 = load i8*, i8** %limit, align 8, !tbaa !57
  %cmp = icmp uge i8* %8, %10
  br i1 %cmp, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then
  %11 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor3 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %11, i32 0, i32 5
  %w4 = bitcast %union.stream_cursor_s* %cursor3 to %struct.stream_cursor_write_s*
  %ptr5 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w4, i32 0, i32 1
  %12 = load i8*, i8** %ptr5, align 8, !tbaa !55
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr, i8** %ptr5, align 8, !tbaa !55
  %13 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor6 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %13, i32 0, i32 5
  %w7 = bitcast %union.stream_cursor_s* %cursor6 to %struct.stream_cursor_write_s*
  %ptr8 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w7, i32 0, i32 1
  %14 = load i8*, i8** %ptr8, align 8, !tbaa !55
  store i8 -101, i8* %14, align 1, !tbaa !58
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %15 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call9 = call i32 @spputc(%struct.stream_s* %15, i8 zeroext -101) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call9, %cond.false ]
  %16 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call10 = call i32 @lputs(%struct.stream_s* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i32 0, i32 0)) #5
  %17 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %TextMode11 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %17, i32 0, i32 91
  store i32 0, i32* %TextMode11, align 4, !tbaa !54
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  %18 = load double, double* %width.addr, align 8, !tbaa !77
  %cmp12 = fcmp olt double %18, 1.000000e+00
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end
  store double 1.000000e+00, double* %width.addr, align 8, !tbaa !77
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.end
  %19 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call15 = call i32 @lputs(%struct.stream_s* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.56, i32 0, i32 0)) #5
  %20 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %21 = load double, double* %width.addr, align 8, !tbaa !77
  %conv = fptosi double %21 to i32
  call void @sput_lips_int(%struct.stream_s* %20, i32 %conv) #5
  %22 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor16 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %22, i32 0, i32 5
  %w17 = bitcast %union.stream_cursor_s* %cursor16 to %struct.stream_cursor_write_s*
  %ptr18 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w17, i32 0, i32 1
  %23 = load i8*, i8** %ptr18, align 8, !tbaa !55
  %24 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor19 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %24, i32 0, i32 5
  %w20 = bitcast %union.stream_cursor_s* %cursor19 to %struct.stream_cursor_write_s*
  %limit21 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w20, i32 0, i32 2
  %25 = load i8*, i8** %limit21, align 8, !tbaa !57
  %cmp22 = icmp uge i8* %23, %25
  br i1 %cmp22, label %cond.false.32, label %cond.true.24

cond.true.24:                                     ; preds = %if.end.14
  %26 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor25 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %26, i32 0, i32 5
  %w26 = bitcast %union.stream_cursor_s* %cursor25 to %struct.stream_cursor_write_s*
  %ptr27 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w26, i32 0, i32 1
  %27 = load i8*, i8** %ptr27, align 8, !tbaa !55
  %incdec.ptr28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr28, i8** %ptr27, align 8, !tbaa !55
  %28 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor29 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %28, i32 0, i32 5
  %w30 = bitcast %union.stream_cursor_s* %cursor29 to %struct.stream_cursor_write_s*
  %ptr31 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w30, i32 0, i32 1
  %29 = load i8*, i8** %ptr31, align 8, !tbaa !55
  store i8 30, i8* %29, align 1, !tbaa !58
  br label %cond.end.34

cond.false.32:                                    ; preds = %if.end.14
  %30 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call33 = call i32 @spputc(%struct.stream_s* %30, i8 zeroext 30) #5
  br label %cond.end.34

cond.end.34:                                      ; preds = %cond.false.32, %cond.true.24
  %cond35 = phi i32 [ 0, %cond.true.24 ], [ %call33, %cond.false.32 ]
  %31 = bitcast %struct.gx_device_lips4v_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #2
  %32 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #2
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @lips4v_setlinecap(%struct.gx_device_vector_s* %vdev, i32 %cap) #0 {
entry:
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %cap.addr = alloca i32, align 4
  %s = alloca %struct.stream_s*, align 8
  %pdev = alloca %struct.gx_device_lips4v_s*, align 8
  %c = alloca [6 x i8], align 1
  %line_cap = alloca i32, align 4
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store i32 %cap, i32* %cap.addr, align 4, !tbaa !58
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %call = call %struct.stream_s* @gdev_vector_stream(%struct.gx_device_vector_s* %1) #5
  store %struct.stream_s* %call, %struct.stream_s** %s, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_lips4v_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %4 = bitcast %struct.gx_device_vector_s* %3 to %struct.gx_device_lips4v_s*
  store %struct.gx_device_lips4v_s* %4, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %5 = bitcast [6 x i8]* %c to i8*
  call void @llvm.lifetime.start(i64 6, i8* %5) #2
  %6 = bitcast i32* %line_cap to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  store i32 0, i32* %line_cap, align 4, !tbaa !5
  %7 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %TextMode = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %7, i32 0, i32 91
  %8 = load i32, i32* %TextMode, align 4, !tbaa !54
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %9, i32 0, i32 5
  %w = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_write_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 1
  %10 = load i8*, i8** %ptr, align 8, !tbaa !55
  %11 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor1 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %11, i32 0, i32 5
  %w2 = bitcast %union.stream_cursor_s* %cursor1 to %struct.stream_cursor_write_s*
  %limit = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w2, i32 0, i32 2
  %12 = load i8*, i8** %limit, align 8, !tbaa !57
  %cmp = icmp uge i8* %10, %12
  br i1 %cmp, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then
  %13 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor3 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %13, i32 0, i32 5
  %w4 = bitcast %union.stream_cursor_s* %cursor3 to %struct.stream_cursor_write_s*
  %ptr5 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w4, i32 0, i32 1
  %14 = load i8*, i8** %ptr5, align 8, !tbaa !55
  %incdec.ptr = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr, i8** %ptr5, align 8, !tbaa !55
  %15 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor6 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %15, i32 0, i32 5
  %w7 = bitcast %union.stream_cursor_s* %cursor6 to %struct.stream_cursor_write_s*
  %ptr8 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w7, i32 0, i32 1
  %16 = load i8*, i8** %ptr8, align 8, !tbaa !55
  store i8 -101, i8* %16, align 1, !tbaa !58
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %17 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call9 = call i32 @spputc(%struct.stream_s* %17, i8 zeroext -101) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call9, %cond.false ]
  %18 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call10 = call i32 @lputs(%struct.stream_s* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i32 0, i32 0)) #5
  %19 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %TextMode11 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %19, i32 0, i32 91
  store i32 0, i32* %TextMode11, align 4, !tbaa !54
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  %20 = load i32, i32* %cap.addr, align 4, !tbaa !58
  switch i32 %20, label %sw.epilog [
    i32 0, label %sw.bb
    i32 3, label %sw.bb
    i32 1, label %sw.bb.12
    i32 2, label %sw.bb.13
  ]

sw.bb:                                            ; preds = %if.end, %if.end
  store i32 0, i32* %line_cap, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.12:                                         ; preds = %if.end
  store i32 1, i32* %line_cap, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.13:                                         ; preds = %if.end
  store i32 2, i32* %line_cap, align 4, !tbaa !5
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb.13, %sw.bb.12, %sw.bb
  %arraydecay = getelementptr inbounds [6 x i8], [6 x i8]* %c, i32 0, i32 0
  %21 = load i32, i32* %line_cap, align 4, !tbaa !5
  %call14 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i32 0, i32 0), i32 %21, i32 30) #5
  %22 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %arraydecay15 = getelementptr inbounds [6 x i8], [6 x i8]* %c, i32 0, i32 0
  %call16 = call i32 @lputs(%struct.stream_s* %22, i8* %arraydecay15) #5
  %23 = load i32, i32* %cap.addr, align 4, !tbaa !58
  %24 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %linecap = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %24, i32 0, i32 96
  store i32 %23, i32* %linecap, align 4, !tbaa !144
  %25 = bitcast i32* %line_cap to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #2
  %26 = bitcast [6 x i8]* %c to i8*
  call void @llvm.lifetime.end(i64 6, i8* %26) #2
  %27 = bitcast %struct.gx_device_lips4v_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #2
  %28 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #2
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @lips4v_setlinejoin(%struct.gx_device_vector_s* %vdev, i32 %join) #0 {
entry:
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %join.addr = alloca i32, align 4
  %s = alloca %struct.stream_s*, align 8
  %pdev = alloca %struct.gx_device_lips4v_s*, align 8
  %c = alloca [5 x i8], align 1
  %lips_join = alloca i32, align 4
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store i32 %join, i32* %join.addr, align 4, !tbaa !58
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %call = call %struct.stream_s* @gdev_vector_stream(%struct.gx_device_vector_s* %1) #5
  store %struct.stream_s* %call, %struct.stream_s** %s, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_lips4v_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %4 = bitcast %struct.gx_device_vector_s* %3 to %struct.gx_device_lips4v_s*
  store %struct.gx_device_lips4v_s* %4, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %5 = bitcast [5 x i8]* %c to i8*
  call void @llvm.lifetime.start(i64 5, i8* %5) #2
  %6 = bitcast i32* %lips_join to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  store i32 0, i32* %lips_join, align 4, !tbaa !5
  %7 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %TextMode = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %7, i32 0, i32 91
  %8 = load i32, i32* %TextMode, align 4, !tbaa !54
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %9, i32 0, i32 5
  %w = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_write_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 1
  %10 = load i8*, i8** %ptr, align 8, !tbaa !55
  %11 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor1 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %11, i32 0, i32 5
  %w2 = bitcast %union.stream_cursor_s* %cursor1 to %struct.stream_cursor_write_s*
  %limit = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w2, i32 0, i32 2
  %12 = load i8*, i8** %limit, align 8, !tbaa !57
  %cmp = icmp uge i8* %10, %12
  br i1 %cmp, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then
  %13 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor3 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %13, i32 0, i32 5
  %w4 = bitcast %union.stream_cursor_s* %cursor3 to %struct.stream_cursor_write_s*
  %ptr5 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w4, i32 0, i32 1
  %14 = load i8*, i8** %ptr5, align 8, !tbaa !55
  %incdec.ptr = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr, i8** %ptr5, align 8, !tbaa !55
  %15 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor6 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %15, i32 0, i32 5
  %w7 = bitcast %union.stream_cursor_s* %cursor6 to %struct.stream_cursor_write_s*
  %ptr8 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w7, i32 0, i32 1
  %16 = load i8*, i8** %ptr8, align 8, !tbaa !55
  store i8 -101, i8* %16, align 1, !tbaa !58
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %17 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call9 = call i32 @spputc(%struct.stream_s* %17, i8 zeroext -101) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call9, %cond.false ]
  %18 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call10 = call i32 @lputs(%struct.stream_s* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i32 0, i32 0)) #5
  %19 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %TextMode11 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %19, i32 0, i32 91
  store i32 0, i32* %TextMode11, align 4, !tbaa !54
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  %20 = load i32, i32* %join.addr, align 4, !tbaa !58
  switch i32 %20, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.12
    i32 2, label %sw.bb.13
    i32 3, label %sw.bb.14
    i32 4, label %sw.bb.14
  ]

sw.bb:                                            ; preds = %if.end
  store i32 2, i32* %lips_join, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.12:                                         ; preds = %if.end
  store i32 1, i32* %lips_join, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.13:                                         ; preds = %if.end
  store i32 3, i32* %lips_join, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.14:                                         ; preds = %if.end, %if.end
  store i32 0, i32* %lips_join, align 4, !tbaa !5
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb.14, %sw.bb.13, %sw.bb.12, %sw.bb
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %c, i32 0, i32 0
  %21 = load i32, i32* %lips_join, align 4, !tbaa !5
  %call15 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i32 0, i32 0), i32 %21, i32 30) #5
  %22 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %arraydecay16 = getelementptr inbounds [5 x i8], [5 x i8]* %c, i32 0, i32 0
  %call17 = call i32 @lputs(%struct.stream_s* %22, i8* %arraydecay16) #5
  %23 = bitcast i32* %lips_join to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #2
  %24 = bitcast [5 x i8]* %c to i8*
  call void @llvm.lifetime.end(i64 5, i8* %24) #2
  %25 = bitcast %struct.gx_device_lips4v_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #2
  %26 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #2
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @lips4v_setmiterlimit(%struct.gx_device_vector_s* %vdev, double %limit) #0 {
entry:
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %limit.addr = alloca double, align 8
  %s = alloca %struct.stream_s*, align 8
  %pdev = alloca %struct.gx_device_lips4v_s*, align 8
  %lips_miterlimit = alloca double, align 8
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store double %limit, double* %limit.addr, align 8, !tbaa !77
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %call = call %struct.stream_s* @gdev_vector_stream(%struct.gx_device_vector_s* %1) #5
  store %struct.stream_s* %call, %struct.stream_s** %s, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_lips4v_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %4 = bitcast %struct.gx_device_vector_s* %3 to %struct.gx_device_lips4v_s*
  store %struct.gx_device_lips4v_s* %4, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %5 = bitcast double* %lips_miterlimit to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %TextMode = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %6, i32 0, i32 91
  %7 = load i32, i32* %TextMode, align 4, !tbaa !54
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %8, i32 0, i32 5
  %w = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_write_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 1
  %9 = load i8*, i8** %ptr, align 8, !tbaa !55
  %10 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor1 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %10, i32 0, i32 5
  %w2 = bitcast %union.stream_cursor_s* %cursor1 to %struct.stream_cursor_write_s*
  %limit3 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w2, i32 0, i32 2
  %11 = load i8*, i8** %limit3, align 8, !tbaa !57
  %cmp = icmp uge i8* %9, %11
  br i1 %cmp, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then
  %12 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor4 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %12, i32 0, i32 5
  %w5 = bitcast %union.stream_cursor_s* %cursor4 to %struct.stream_cursor_write_s*
  %ptr6 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w5, i32 0, i32 1
  %13 = load i8*, i8** %ptr6, align 8, !tbaa !55
  %incdec.ptr = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr, i8** %ptr6, align 8, !tbaa !55
  %14 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor7 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %14, i32 0, i32 5
  %w8 = bitcast %union.stream_cursor_s* %cursor7 to %struct.stream_cursor_write_s*
  %ptr9 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w8, i32 0, i32 1
  %15 = load i8*, i8** %ptr9, align 8, !tbaa !55
  store i8 -101, i8* %15, align 1, !tbaa !58
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %16 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call10 = call i32 @spputc(%struct.stream_s* %16, i8 zeroext -101) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call10, %cond.false ]
  %17 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call11 = call i32 @lputs(%struct.stream_s* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i32 0, i32 0)) #5
  %18 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %TextMode12 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %18, i32 0, i32 91
  store i32 0, i32* %TextMode12, align 4, !tbaa !54
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  %19 = load double, double* %limit.addr, align 8, !tbaa !77
  %div = fdiv double 3.276600e+04, %19
  store double %div, double* %lips_miterlimit, align 8, !tbaa !77
  %20 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call13 = call i32 @lputs(%struct.stream_s* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i32 0, i32 0)) #5
  %21 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %22 = load double, double* %lips_miterlimit, align 8, !tbaa !77
  %conv = fptosi double %22 to i32
  call void @sput_lips_int(%struct.stream_s* %21, i32 %conv) #5
  %23 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor14 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %23, i32 0, i32 5
  %w15 = bitcast %union.stream_cursor_s* %cursor14 to %struct.stream_cursor_write_s*
  %ptr16 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w15, i32 0, i32 1
  %24 = load i8*, i8** %ptr16, align 8, !tbaa !55
  %25 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor17 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %25, i32 0, i32 5
  %w18 = bitcast %union.stream_cursor_s* %cursor17 to %struct.stream_cursor_write_s*
  %limit19 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w18, i32 0, i32 2
  %26 = load i8*, i8** %limit19, align 8, !tbaa !57
  %cmp20 = icmp uge i8* %24, %26
  br i1 %cmp20, label %cond.false.30, label %cond.true.22

cond.true.22:                                     ; preds = %if.end
  %27 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor23 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %27, i32 0, i32 5
  %w24 = bitcast %union.stream_cursor_s* %cursor23 to %struct.stream_cursor_write_s*
  %ptr25 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w24, i32 0, i32 1
  %28 = load i8*, i8** %ptr25, align 8, !tbaa !55
  %incdec.ptr26 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr26, i8** %ptr25, align 8, !tbaa !55
  %29 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor27 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %29, i32 0, i32 5
  %w28 = bitcast %union.stream_cursor_s* %cursor27 to %struct.stream_cursor_write_s*
  %ptr29 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w28, i32 0, i32 1
  %30 = load i8*, i8** %ptr29, align 8, !tbaa !55
  store i8 30, i8* %30, align 1, !tbaa !58
  br label %cond.end.32

cond.false.30:                                    ; preds = %if.end
  %31 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call31 = call i32 @spputc(%struct.stream_s* %31, i8 zeroext 30) #5
  br label %cond.end.32

cond.end.32:                                      ; preds = %cond.false.30, %cond.true.22
  %cond33 = phi i32 [ 0, %cond.true.22 ], [ %call31, %cond.false.30 ]
  %32 = bitcast double* %lips_miterlimit to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #2
  %33 = bitcast %struct.gx_device_lips4v_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #2
  %34 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #2
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @lips4v_setdash(%struct.gx_device_vector_s* %vdev, float* %pattern, i32 %count, double %offset) #0 {
entry:
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %pattern.addr = alloca float*, align 8
  %count.addr = alloca i32, align 4
  %offset.addr = alloca double, align 8
  %s = alloca %struct.stream_s*, align 8
  %pdev = alloca %struct.gx_device_lips4v_s*, align 8
  %i = alloca i32, align 4
  %scale = alloca float, align 4
  %xscale = alloca float, align 4
  %yscale = alloca float, align 4
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store float* %pattern, float** %pattern.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !5
  store double %offset, double* %offset.addr, align 8, !tbaa !77
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %call = call %struct.stream_s* @gdev_vector_stream(%struct.gx_device_vector_s* %1) #5
  store %struct.stream_s* %call, %struct.stream_s** %s, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_lips4v_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %4 = bitcast %struct.gx_device_vector_s* %3 to %struct.gx_device_lips4v_s*
  store %struct.gx_device_lips4v_s* %4, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %5 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast float* %scale to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast float* %xscale to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = bitcast float* %yscale to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %TextMode = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %9, i32 0, i32 91
  %10 = load i32, i32* %TextMode, align 4, !tbaa !54
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %11, i32 0, i32 5
  %w = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_write_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 1
  %12 = load i8*, i8** %ptr, align 8, !tbaa !55
  %13 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor1 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %13, i32 0, i32 5
  %w2 = bitcast %union.stream_cursor_s* %cursor1 to %struct.stream_cursor_write_s*
  %limit = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w2, i32 0, i32 2
  %14 = load i8*, i8** %limit, align 8, !tbaa !57
  %cmp = icmp uge i8* %12, %14
  br i1 %cmp, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then
  %15 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor3 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %15, i32 0, i32 5
  %w4 = bitcast %union.stream_cursor_s* %cursor3 to %struct.stream_cursor_write_s*
  %ptr5 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w4, i32 0, i32 1
  %16 = load i8*, i8** %ptr5, align 8, !tbaa !55
  %incdec.ptr = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr, i8** %ptr5, align 8, !tbaa !55
  %17 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor6 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %17, i32 0, i32 5
  %w7 = bitcast %union.stream_cursor_s* %cursor6 to %struct.stream_cursor_write_s*
  %ptr8 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w7, i32 0, i32 1
  %18 = load i8*, i8** %ptr8, align 8, !tbaa !55
  store i8 -101, i8* %18, align 1, !tbaa !58
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %19 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call9 = call i32 @spputc(%struct.stream_s* %19, i8 zeroext -101) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call9, %cond.false ]
  %20 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call10 = call i32 @lputs(%struct.stream_s* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i32 0, i32 0)) #5
  %21 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %TextMode11 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %21, i32 0, i32 91
  store i32 0, i32* %TextMode11, align 4, !tbaa !54
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  %22 = load i32, i32* %count.addr, align 4, !tbaa !5
  %cmp12 = icmp eq i32 %22, 0
  br i1 %cmp12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.end
  %23 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call14 = call i32 @lputs(%struct.stream_s* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.59, i32 0, i32 0)) #5
  %24 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor15 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %24, i32 0, i32 5
  %w16 = bitcast %union.stream_cursor_s* %cursor15 to %struct.stream_cursor_write_s*
  %ptr17 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w16, i32 0, i32 1
  %25 = load i8*, i8** %ptr17, align 8, !tbaa !55
  %26 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor18 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %26, i32 0, i32 5
  %w19 = bitcast %union.stream_cursor_s* %cursor18 to %struct.stream_cursor_write_s*
  %limit20 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w19, i32 0, i32 2
  %27 = load i8*, i8** %limit20, align 8, !tbaa !57
  %cmp21 = icmp uge i8* %25, %27
  br i1 %cmp21, label %cond.false.30, label %cond.true.22

cond.true.22:                                     ; preds = %if.then.13
  %28 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor23 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %28, i32 0, i32 5
  %w24 = bitcast %union.stream_cursor_s* %cursor23 to %struct.stream_cursor_write_s*
  %ptr25 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w24, i32 0, i32 1
  %29 = load i8*, i8** %ptr25, align 8, !tbaa !55
  %incdec.ptr26 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr26, i8** %ptr25, align 8, !tbaa !55
  %30 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor27 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %30, i32 0, i32 5
  %w28 = bitcast %union.stream_cursor_s* %cursor27 to %struct.stream_cursor_write_s*
  %ptr29 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w28, i32 0, i32 1
  %31 = load i8*, i8** %ptr29, align 8, !tbaa !55
  store i8 30, i8* %31, align 1, !tbaa !58
  br label %cond.end.32

cond.false.30:                                    ; preds = %if.then.13
  %32 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call31 = call i32 @spputc(%struct.stream_s* %32, i8 zeroext 30) #5
  br label %cond.end.32

cond.end.32:                                      ; preds = %cond.false.30, %cond.true.22
  %cond33 = phi i32 [ 0, %cond.true.22 ], [ %call31, %cond.false.30 ]
  br label %if.end.139

if.else:                                          ; preds = %if.end
  %33 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call34 = call i32 @lputs(%struct.stream_s* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.60, i32 0, i32 0)) #5
  %34 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor35 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %34, i32 0, i32 5
  %w36 = bitcast %union.stream_cursor_s* %cursor35 to %struct.stream_cursor_write_s*
  %ptr37 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w36, i32 0, i32 1
  %35 = load i8*, i8** %ptr37, align 8, !tbaa !55
  %36 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor38 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %36, i32 0, i32 5
  %w39 = bitcast %union.stream_cursor_s* %cursor38 to %struct.stream_cursor_write_s*
  %limit40 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w39, i32 0, i32 2
  %37 = load i8*, i8** %limit40, align 8, !tbaa !57
  %cmp41 = icmp uge i8* %35, %37
  br i1 %cmp41, label %cond.false.50, label %cond.true.42

cond.true.42:                                     ; preds = %if.else
  %38 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor43 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %38, i32 0, i32 5
  %w44 = bitcast %union.stream_cursor_s* %cursor43 to %struct.stream_cursor_write_s*
  %ptr45 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w44, i32 0, i32 1
  %39 = load i8*, i8** %ptr45, align 8, !tbaa !55
  %incdec.ptr46 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr46, i8** %ptr45, align 8, !tbaa !55
  %40 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor47 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %40, i32 0, i32 5
  %w48 = bitcast %union.stream_cursor_s* %cursor47 to %struct.stream_cursor_write_s*
  %ptr49 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w48, i32 0, i32 1
  %41 = load i8*, i8** %ptr49, align 8, !tbaa !55
  store i8 44, i8* %41, align 1, !tbaa !58
  br label %cond.end.52

cond.false.50:                                    ; preds = %if.else
  %42 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call51 = call i32 @spputc(%struct.stream_s* %42, i8 zeroext 44) #5
  br label %cond.end.52

cond.end.52:                                      ; preds = %cond.false.50, %cond.true.42
  %cond53 = phi i32 [ 0, %cond.true.42 ], [ %call51, %cond.false.50 ]
  %43 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call54 = call i32 @lputs(%struct.stream_s* %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i32 0, i32 0)) #5
  %44 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %45 = load double, double* %offset.addr, align 8, !tbaa !77
  %conv = fptosi double %45 to i32
  call void @sput_lips_int(%struct.stream_s* %44, i32 %conv) #5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.52
  %46 = load i32, i32* %i, align 4, !tbaa !5
  %47 = load i32, i32* %count.addr, align 4, !tbaa !5
  %cmp55 = icmp ult i32 %46, %47
  br i1 %cmp55, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %48 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %linecap = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %48, i32 0, i32 96
  %49 = load i32, i32* %linecap, align 4, !tbaa !144
  %cmp57 = icmp eq i32 %49, 1
  br i1 %cmp57, label %land.lhs.true, label %if.else.72

land.lhs.true:                                    ; preds = %for.body
  %50 = load i32, i32* %count.addr, align 4, !tbaa !5
  %cmp59 = icmp eq i32 %50, 2
  br i1 %cmp59, label %land.lhs.true.61, label %if.else.72

land.lhs.true.61:                                 ; preds = %land.lhs.true
  %51 = load float*, float** %pattern.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds float, float* %51, i64 0
  %52 = load float, float* %arrayidx, align 4, !tbaa !69
  %cmp62 = fcmp oeq float %52, 0.000000e+00
  br i1 %cmp62, label %if.then.64, label %if.else.72

if.then.64:                                       ; preds = %land.lhs.true.61
  %53 = load i32, i32* %i, align 4, !tbaa !5
  %cmp65 = icmp eq i32 %53, 0
  br i1 %cmp65, label %if.then.67, label %if.else.68

if.then.67:                                       ; preds = %if.then.64
  %54 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @sput_lips_int(%struct.stream_s* %54, i32 1) #5
  br label %if.end.71

if.else.68:                                       ; preds = %if.then.64
  %55 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %56 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %56 to i64
  %57 = load float*, float** %pattern.addr, align 8, !tbaa !1
  %arrayidx69 = getelementptr inbounds float, float* %57, i64 %idxprom
  %58 = load float, float* %arrayidx69, align 4, !tbaa !69
  %sub = fsub float %58, 1.000000e+00
  %conv70 = fptosi float %sub to i32
  call void @sput_lips_int(%struct.stream_s* %55, i32 %conv70) #5
  br label %if.end.71

if.end.71:                                        ; preds = %if.else.68, %if.then.67
  br label %if.end.76

if.else.72:                                       ; preds = %land.lhs.true.61, %land.lhs.true, %for.body
  %59 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %60 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom73 = sext i32 %60 to i64
  %61 = load float*, float** %pattern.addr, align 8, !tbaa !1
  %arrayidx74 = getelementptr inbounds float, float* %61, i64 %idxprom73
  %62 = load float, float* %arrayidx74, align 4, !tbaa !69
  %conv75 = fptosi float %62 to i32
  call void @sput_lips_int(%struct.stream_s* %59, i32 %conv75) #5
  br label %if.end.76

if.end.76:                                        ; preds = %if.else.72, %if.end.71
  br label %for.inc

for.inc:                                          ; preds = %if.end.76
  %63 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %63, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %64 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor77 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %64, i32 0, i32 5
  %w78 = bitcast %union.stream_cursor_s* %cursor77 to %struct.stream_cursor_write_s*
  %ptr79 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w78, i32 0, i32 1
  %65 = load i8*, i8** %ptr79, align 8, !tbaa !55
  %66 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor80 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %66, i32 0, i32 5
  %w81 = bitcast %union.stream_cursor_s* %cursor80 to %struct.stream_cursor_write_s*
  %limit82 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w81, i32 0, i32 2
  %67 = load i8*, i8** %limit82, align 8, !tbaa !57
  %cmp83 = icmp uge i8* %65, %67
  br i1 %cmp83, label %cond.false.93, label %cond.true.85

cond.true.85:                                     ; preds = %for.end
  %68 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor86 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %68, i32 0, i32 5
  %w87 = bitcast %union.stream_cursor_s* %cursor86 to %struct.stream_cursor_write_s*
  %ptr88 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w87, i32 0, i32 1
  %69 = load i8*, i8** %ptr88, align 8, !tbaa !55
  %incdec.ptr89 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %incdec.ptr89, i8** %ptr88, align 8, !tbaa !55
  %70 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor90 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %70, i32 0, i32 5
  %w91 = bitcast %union.stream_cursor_s* %cursor90 to %struct.stream_cursor_write_s*
  %ptr92 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w91, i32 0, i32 1
  %71 = load i8*, i8** %ptr92, align 8, !tbaa !55
  store i8 30, i8* %71, align 1, !tbaa !58
  br label %cond.end.95

cond.false.93:                                    ; preds = %for.end
  %72 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call94 = call i32 @spputc(%struct.stream_s* %72, i8 zeroext 30) #5
  br label %cond.end.95

cond.end.95:                                      ; preds = %cond.false.93, %cond.true.85
  %cond96 = phi i32 [ 0, %cond.true.85 ], [ %call94, %cond.false.93 ]
  %73 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call97 = call i32 @lputs(%struct.stream_s* %73, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i32 0, i32 0)) #5
  %74 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor98 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %74, i32 0, i32 5
  %w99 = bitcast %union.stream_cursor_s* %cursor98 to %struct.stream_cursor_write_s*
  %ptr100 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w99, i32 0, i32 1
  %75 = load i8*, i8** %ptr100, align 8, !tbaa !55
  %76 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor101 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %76, i32 0, i32 5
  %w102 = bitcast %union.stream_cursor_s* %cursor101 to %struct.stream_cursor_write_s*
  %limit103 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w102, i32 0, i32 2
  %77 = load i8*, i8** %limit103, align 8, !tbaa !57
  %cmp104 = icmp uge i8* %75, %77
  br i1 %cmp104, label %cond.false.114, label %cond.true.106

cond.true.106:                                    ; preds = %cond.end.95
  %78 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor107 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %78, i32 0, i32 5
  %w108 = bitcast %union.stream_cursor_s* %cursor107 to %struct.stream_cursor_write_s*
  %ptr109 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w108, i32 0, i32 1
  %79 = load i8*, i8** %ptr109, align 8, !tbaa !55
  %incdec.ptr110 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %incdec.ptr110, i8** %ptr109, align 8, !tbaa !55
  %80 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor111 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %80, i32 0, i32 5
  %w112 = bitcast %union.stream_cursor_s* %cursor111 to %struct.stream_cursor_write_s*
  %ptr113 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w112, i32 0, i32 1
  %81 = load i8*, i8** %ptr113, align 8, !tbaa !55
  store i8 44, i8* %81, align 1, !tbaa !58
  br label %cond.end.116

cond.false.114:                                   ; preds = %cond.end.95
  %82 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call115 = call i32 @spputc(%struct.stream_s* %82, i8 zeroext 44) #5
  br label %cond.end.116

cond.end.116:                                     ; preds = %cond.false.114, %cond.true.106
  %cond117 = phi i32 [ 0, %cond.true.106 ], [ %call115, %cond.false.114 ]
  %83 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call118 = call i32 @lputs(%struct.stream_s* %83, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.62, i32 0, i32 0)) #5
  %84 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor119 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %84, i32 0, i32 5
  %w120 = bitcast %union.stream_cursor_s* %cursor119 to %struct.stream_cursor_write_s*
  %ptr121 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w120, i32 0, i32 1
  %85 = load i8*, i8** %ptr121, align 8, !tbaa !55
  %86 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor122 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %86, i32 0, i32 5
  %w123 = bitcast %union.stream_cursor_s* %cursor122 to %struct.stream_cursor_write_s*
  %limit124 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w123, i32 0, i32 2
  %87 = load i8*, i8** %limit124, align 8, !tbaa !57
  %cmp125 = icmp uge i8* %85, %87
  br i1 %cmp125, label %cond.false.135, label %cond.true.127

cond.true.127:                                    ; preds = %cond.end.116
  %88 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor128 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %88, i32 0, i32 5
  %w129 = bitcast %union.stream_cursor_s* %cursor128 to %struct.stream_cursor_write_s*
  %ptr130 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w129, i32 0, i32 1
  %89 = load i8*, i8** %ptr130, align 8, !tbaa !55
  %incdec.ptr131 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %incdec.ptr131, i8** %ptr130, align 8, !tbaa !55
  %90 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor132 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %90, i32 0, i32 5
  %w133 = bitcast %union.stream_cursor_s* %cursor132 to %struct.stream_cursor_write_s*
  %ptr134 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w133, i32 0, i32 1
  %91 = load i8*, i8** %ptr134, align 8, !tbaa !55
  store i8 30, i8* %91, align 1, !tbaa !58
  br label %cond.end.137

cond.false.135:                                   ; preds = %cond.end.116
  %92 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call136 = call i32 @spputc(%struct.stream_s* %92, i8 zeroext 30) #5
  br label %cond.end.137

cond.end.137:                                     ; preds = %cond.false.135, %cond.true.127
  %cond138 = phi i32 [ 0, %cond.true.127 ], [ %call136, %cond.false.135 ]
  br label %if.end.139

if.end.139:                                       ; preds = %cond.end.137, %cond.end.32
  %93 = bitcast float* %yscale to i8*
  call void @llvm.lifetime.end(i64 4, i8* %93) #2
  %94 = bitcast float* %xscale to i8*
  call void @llvm.lifetime.end(i64 4, i8* %94) #2
  %95 = bitcast float* %scale to i8*
  call void @llvm.lifetime.end(i64 4, i8* %95) #2
  %96 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %96) #2
  %97 = bitcast %struct.gx_device_lips4v_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %97) #2
  %98 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %98) #2
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @lips4v_setflat(%struct.gx_device_vector_s* %vdev, double %flatness) #0 {
entry:
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %flatness.addr = alloca double, align 8
  %s = alloca %struct.stream_s*, align 8
  %pdev = alloca %struct.gx_device_lips4v_s*, align 8
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store double %flatness, double* %flatness.addr, align 8, !tbaa !77
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %call = call %struct.stream_s* @gdev_vector_stream(%struct.gx_device_vector_s* %1) #5
  store %struct.stream_s* %call, %struct.stream_s** %s, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_lips4v_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %4 = bitcast %struct.gx_device_vector_s* %3 to %struct.gx_device_lips4v_s*
  store %struct.gx_device_lips4v_s* %4, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %5 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %TextMode = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %5, i32 0, i32 91
  %6 = load i32, i32* %TextMode, align 4, !tbaa !54
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %7, i32 0, i32 5
  %w = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_write_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 1
  %8 = load i8*, i8** %ptr, align 8, !tbaa !55
  %9 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor1 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %9, i32 0, i32 5
  %w2 = bitcast %union.stream_cursor_s* %cursor1 to %struct.stream_cursor_write_s*
  %limit = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w2, i32 0, i32 2
  %10 = load i8*, i8** %limit, align 8, !tbaa !57
  %cmp = icmp uge i8* %8, %10
  br i1 %cmp, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then
  %11 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor3 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %11, i32 0, i32 5
  %w4 = bitcast %union.stream_cursor_s* %cursor3 to %struct.stream_cursor_write_s*
  %ptr5 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w4, i32 0, i32 1
  %12 = load i8*, i8** %ptr5, align 8, !tbaa !55
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr, i8** %ptr5, align 8, !tbaa !55
  %13 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor6 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %13, i32 0, i32 5
  %w7 = bitcast %union.stream_cursor_s* %cursor6 to %struct.stream_cursor_write_s*
  %ptr8 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w7, i32 0, i32 1
  %14 = load i8*, i8** %ptr8, align 8, !tbaa !55
  store i8 -101, i8* %14, align 1, !tbaa !58
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %15 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call9 = call i32 @spputc(%struct.stream_s* %15, i8 zeroext -101) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call9, %cond.false ]
  %16 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call10 = call i32 @lputs(%struct.stream_s* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i32 0, i32 0)) #5
  %17 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %TextMode11 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %17, i32 0, i32 91
  store i32 0, i32* %TextMode11, align 4, !tbaa !54
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  %18 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call12 = call i32 @lputs(%struct.stream_s* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.63, i32 0, i32 0)) #5
  %19 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %20 = load double, double* %flatness.addr, align 8, !tbaa !77
  %conv = fptosi double %20 to i32
  call void @sput_lips_int(%struct.stream_s* %19, i32 %conv) #5
  %21 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor13 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %21, i32 0, i32 5
  %w14 = bitcast %union.stream_cursor_s* %cursor13 to %struct.stream_cursor_write_s*
  %ptr15 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w14, i32 0, i32 1
  %22 = load i8*, i8** %ptr15, align 8, !tbaa !55
  %23 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor16 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %23, i32 0, i32 5
  %w17 = bitcast %union.stream_cursor_s* %cursor16 to %struct.stream_cursor_write_s*
  %limit18 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w17, i32 0, i32 2
  %24 = load i8*, i8** %limit18, align 8, !tbaa !57
  %cmp19 = icmp uge i8* %22, %24
  br i1 %cmp19, label %cond.false.29, label %cond.true.21

cond.true.21:                                     ; preds = %if.end
  %25 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor22 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %25, i32 0, i32 5
  %w23 = bitcast %union.stream_cursor_s* %cursor22 to %struct.stream_cursor_write_s*
  %ptr24 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w23, i32 0, i32 1
  %26 = load i8*, i8** %ptr24, align 8, !tbaa !55
  %incdec.ptr25 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr25, i8** %ptr24, align 8, !tbaa !55
  %27 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor26 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %27, i32 0, i32 5
  %w27 = bitcast %union.stream_cursor_s* %cursor26 to %struct.stream_cursor_write_s*
  %ptr28 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w27, i32 0, i32 1
  %28 = load i8*, i8** %ptr28, align 8, !tbaa !55
  store i8 30, i8* %28, align 1, !tbaa !58
  br label %cond.end.31

cond.false.29:                                    ; preds = %if.end
  %29 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call30 = call i32 @spputc(%struct.stream_s* %29, i8 zeroext 30) #5
  br label %cond.end.31

cond.end.31:                                      ; preds = %cond.false.29, %cond.true.21
  %cond32 = phi i32 [ 0, %cond.true.21 ], [ %call30, %cond.false.29 ]
  %30 = bitcast %struct.gx_device_lips4v_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #2
  %31 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #2
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @lips4v_setlogop(%struct.gx_device_vector_s* %vdev, i32 %lop, i32 %diff) #0 {
entry:
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %lop.addr = alloca i32, align 4
  %diff.addr = alloca i32, align 4
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store i32 %lop, i32* %lop.addr, align 4, !tbaa !5
  store i32 %diff, i32* %diff.addr, align 4, !tbaa !5
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @lips4v_can_handle_hl_color(%struct.gx_device_vector_s* %vdev, %struct.gs_imager_state_s* %pis1, %struct.gx_device_color_s* %pdc) #0 {
entry:
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %pis1.addr = alloca %struct.gs_imager_state_s*, align 8
  %pdc.addr = alloca %struct.gx_device_color_s*, align 8
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis1, %struct.gs_imager_state_s** %pis1.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdc, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @lips4v_setfillcolor(%struct.gx_device_vector_s* %vdev, %struct.gs_imager_state_s* %pis, %struct.gx_device_color_s* %pdc) #0 {
entry:
  %retval = alloca i32, align 4
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pdc.addr = alloca %struct.gx_device_color_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %pdev = alloca %struct.gx_device_lips4v_s*, align 8
  %color = alloca i64, align 8
  %drawing_color = alloca i32, align 4
  %r = alloca float, align 4
  %g = alloca float, align 4
  %b = alloca float, align 4
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdc, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %0, i32 0, i32 0
  %1 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !70
  %cmp = icmp eq %struct.gx_device_color_type_s* %1, @gx_dc_type_data_pure
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -15, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %call = call %struct.stream_s* @gdev_vector_stream(%struct.gx_device_vector_s* %3) #5
  store %struct.stream_s* %call, %struct.stream_s** %s, align 8, !tbaa !1
  %4 = bitcast %struct.gx_device_lips4v_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %6 = bitcast %struct.gx_device_vector_s* %5 to %struct.gx_device_lips4v_s*
  store %struct.gx_device_lips4v_s* %6, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %7 = bitcast i64* %color to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %8, i32 0, i32 1
  %pure = bitcast %union._c* %colors to i64*
  %9 = load i64, i64* %pure, align 8, !tbaa !68
  store i64 %9, i64* %color, align 8, !tbaa !68
  %10 = bitcast i32* %drawing_color to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = bitcast float* %r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = bitcast float* %g to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  %13 = bitcast float* %b to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  %14 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %14, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %15 = load i16, i16* %depth, align 2, !tbaa !145
  %conv = zext i16 %15 to i32
  %cmp1 = icmp eq i32 %conv, 8
  br i1 %cmp1, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %16 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %color_info4 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %16, i32 0, i32 11
  %max_gray = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info4, i32 0, i32 5
  %17 = load i32, i32* %max_gray, align 4, !tbaa !76
  %conv5 = zext i32 %17 to i64
  %18 = load i64, i64* %color, align 8, !tbaa !68
  %sub = sub i64 %conv5, %18
  %conv6 = trunc i64 %sub to i32
  store i32 %conv6, i32* %drawing_color, align 4, !tbaa !5
  br label %if.end.19

if.else:                                          ; preds = %if.end
  %19 = load i64, i64* %color, align 8, !tbaa !68
  %shr = lshr i64 %19, 16
  %conv7 = uitofp i64 %shr to double
  %mul = fmul double %conv7, 1.000000e+03
  %div = fdiv double %mul, 2.550000e+02
  %conv8 = fptrunc double %div to float
  store float %conv8, float* %r, align 4, !tbaa !69
  %20 = load i64, i64* %color, align 8, !tbaa !68
  %shr9 = lshr i64 %20, 8
  %and = and i64 %shr9, 255
  %conv10 = uitofp i64 %and to double
  %mul11 = fmul double %conv10, 1.000000e+03
  %div12 = fdiv double %mul11, 2.550000e+02
  %conv13 = fptrunc double %div12 to float
  store float %conv13, float* %g, align 4, !tbaa !69
  %21 = load i64, i64* %color, align 8, !tbaa !68
  %and14 = and i64 %21, 255
  %conv15 = uitofp i64 %and14 to double
  %mul16 = fmul double %conv15, 1.000000e+03
  %div17 = fdiv double %mul16, 2.550000e+02
  %conv18 = fptrunc double %div17 to float
  store float %conv18, float* %b, align 4, !tbaa !69
  br label %if.end.19

if.end.19:                                        ; preds = %if.else, %if.then.3
  %22 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %TextMode = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %22, i32 0, i32 91
  %23 = load i32, i32* %TextMode, align 4, !tbaa !54
  %tobool = icmp ne i32 %23, 0
  br i1 %tobool, label %if.then.20, label %if.end.34

if.then.20:                                       ; preds = %if.end.19
  %24 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %24, i32 0, i32 5
  %w = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_write_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 1
  %25 = load i8*, i8** %ptr, align 8, !tbaa !55
  %26 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor21 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %26, i32 0, i32 5
  %w22 = bitcast %union.stream_cursor_s* %cursor21 to %struct.stream_cursor_write_s*
  %limit = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w22, i32 0, i32 2
  %27 = load i8*, i8** %limit, align 8, !tbaa !57
  %cmp23 = icmp uge i8* %25, %27
  br i1 %cmp23, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then.20
  %28 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor25 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %28, i32 0, i32 5
  %w26 = bitcast %union.stream_cursor_s* %cursor25 to %struct.stream_cursor_write_s*
  %ptr27 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w26, i32 0, i32 1
  %29 = load i8*, i8** %ptr27, align 8, !tbaa !55
  %incdec.ptr = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr, i8** %ptr27, align 8, !tbaa !55
  %30 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor28 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %30, i32 0, i32 5
  %w29 = bitcast %union.stream_cursor_s* %cursor28 to %struct.stream_cursor_write_s*
  %ptr30 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w29, i32 0, i32 1
  %31 = load i8*, i8** %ptr30, align 8, !tbaa !55
  store i8 -101, i8* %31, align 1, !tbaa !58
  br label %cond.end

cond.false:                                       ; preds = %if.then.20
  %32 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call31 = call i32 @spputc(%struct.stream_s* %32, i8 zeroext -101) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call31, %cond.false ]
  %33 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call32 = call i32 @lputs(%struct.stream_s* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i32 0, i32 0)) #5
  %34 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %TextMode33 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %34, i32 0, i32 91
  store i32 0, i32* %TextMode33, align 4, !tbaa !54
  br label %if.end.34

if.end.34:                                        ; preds = %cond.end, %if.end.19
  %35 = load i64, i64* %color, align 8, !tbaa !68
  %36 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %current_color = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %36, i32 0, i32 95
  store i64 %35, i64* %current_color, align 8, !tbaa !146
  %37 = load i64, i64* %color, align 8, !tbaa !68
  %cmp35 = icmp eq i64 %37, -1
  br i1 %cmp35, label %if.then.37, label %if.else.59

if.then.37:                                       ; preds = %if.end.34
  %38 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call38 = call i32 @lputs(%struct.stream_s* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.64, i32 0, i32 0)) #5
  %39 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor39 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %39, i32 0, i32 5
  %w40 = bitcast %union.stream_cursor_s* %cursor39 to %struct.stream_cursor_write_s*
  %ptr41 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w40, i32 0, i32 1
  %40 = load i8*, i8** %ptr41, align 8, !tbaa !55
  %41 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor42 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %41, i32 0, i32 5
  %w43 = bitcast %union.stream_cursor_s* %cursor42 to %struct.stream_cursor_write_s*
  %limit44 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w43, i32 0, i32 2
  %42 = load i8*, i8** %limit44, align 8, !tbaa !57
  %cmp45 = icmp uge i8* %40, %42
  br i1 %cmp45, label %cond.false.55, label %cond.true.47

cond.true.47:                                     ; preds = %if.then.37
  %43 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor48 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %43, i32 0, i32 5
  %w49 = bitcast %union.stream_cursor_s* %cursor48 to %struct.stream_cursor_write_s*
  %ptr50 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w49, i32 0, i32 1
  %44 = load i8*, i8** %ptr50, align 8, !tbaa !55
  %incdec.ptr51 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %incdec.ptr51, i8** %ptr50, align 8, !tbaa !55
  %45 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor52 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %45, i32 0, i32 5
  %w53 = bitcast %union.stream_cursor_s* %cursor52 to %struct.stream_cursor_write_s*
  %ptr54 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w53, i32 0, i32 1
  %46 = load i8*, i8** %ptr54, align 8, !tbaa !55
  store i8 30, i8* %46, align 1, !tbaa !58
  br label %cond.end.57

cond.false.55:                                    ; preds = %if.then.37
  %47 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call56 = call i32 @spputc(%struct.stream_s* %47, i8 zeroext 30) #5
  br label %cond.end.57

cond.end.57:                                      ; preds = %cond.false.55, %cond.true.47
  %cond58 = phi i32 [ 0, %cond.true.47 ], [ %call56, %cond.false.55 ]
  br label %if.end.81

if.else.59:                                       ; preds = %if.end.34
  %48 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call60 = call i32 @lputs(%struct.stream_s* %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.65, i32 0, i32 0)) #5
  %49 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor61 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %49, i32 0, i32 5
  %w62 = bitcast %union.stream_cursor_s* %cursor61 to %struct.stream_cursor_write_s*
  %ptr63 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w62, i32 0, i32 1
  %50 = load i8*, i8** %ptr63, align 8, !tbaa !55
  %51 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor64 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %51, i32 0, i32 5
  %w65 = bitcast %union.stream_cursor_s* %cursor64 to %struct.stream_cursor_write_s*
  %limit66 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w65, i32 0, i32 2
  %52 = load i8*, i8** %limit66, align 8, !tbaa !57
  %cmp67 = icmp uge i8* %50, %52
  br i1 %cmp67, label %cond.false.77, label %cond.true.69

cond.true.69:                                     ; preds = %if.else.59
  %53 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor70 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %53, i32 0, i32 5
  %w71 = bitcast %union.stream_cursor_s* %cursor70 to %struct.stream_cursor_write_s*
  %ptr72 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w71, i32 0, i32 1
  %54 = load i8*, i8** %ptr72, align 8, !tbaa !55
  %incdec.ptr73 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %incdec.ptr73, i8** %ptr72, align 8, !tbaa !55
  %55 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor74 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %55, i32 0, i32 5
  %w75 = bitcast %union.stream_cursor_s* %cursor74 to %struct.stream_cursor_write_s*
  %ptr76 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w75, i32 0, i32 1
  %56 = load i8*, i8** %ptr76, align 8, !tbaa !55
  store i8 30, i8* %56, align 1, !tbaa !58
  br label %cond.end.79

cond.false.77:                                    ; preds = %if.else.59
  %57 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call78 = call i32 @spputc(%struct.stream_s* %57, i8 zeroext 30) #5
  br label %cond.end.79

cond.end.79:                                      ; preds = %cond.false.77, %cond.true.69
  %cond80 = phi i32 [ 0, %cond.true.69 ], [ %call78, %cond.false.77 ]
  br label %if.end.81

if.end.81:                                        ; preds = %cond.end.79, %cond.end.57
  %58 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call82 = call i32 @lputs(%struct.stream_s* %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.66, i32 0, i32 0)) #5
  %59 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %color_info83 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %59, i32 0, i32 11
  %depth84 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info83, i32 0, i32 3
  %60 = load i16, i16* %depth84, align 2, !tbaa !145
  %conv85 = zext i16 %60 to i32
  %cmp86 = icmp eq i32 %conv85, 8
  br i1 %cmp86, label %if.then.88, label %if.else.89

if.then.88:                                       ; preds = %if.end.81
  %61 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %62 = load i32, i32* %drawing_color, align 4, !tbaa !5
  call void @sput_lips_int(%struct.stream_s* %61, i32 %62) #5
  br label %if.end.93

if.else.89:                                       ; preds = %if.end.81
  %63 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %64 = load float, float* %r, align 4, !tbaa !69
  %conv90 = fptosi float %64 to i32
  call void @sput_lips_int(%struct.stream_s* %63, i32 %conv90) #5
  %65 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %66 = load float, float* %g, align 4, !tbaa !69
  %conv91 = fptosi float %66 to i32
  call void @sput_lips_int(%struct.stream_s* %65, i32 %conv91) #5
  %67 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %68 = load float, float* %b, align 4, !tbaa !69
  %conv92 = fptosi float %68 to i32
  call void @sput_lips_int(%struct.stream_s* %67, i32 %conv92) #5
  br label %if.end.93

if.end.93:                                        ; preds = %if.else.89, %if.then.88
  %69 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor94 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %69, i32 0, i32 5
  %w95 = bitcast %union.stream_cursor_s* %cursor94 to %struct.stream_cursor_write_s*
  %ptr96 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w95, i32 0, i32 1
  %70 = load i8*, i8** %ptr96, align 8, !tbaa !55
  %71 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor97 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %71, i32 0, i32 5
  %w98 = bitcast %union.stream_cursor_s* %cursor97 to %struct.stream_cursor_write_s*
  %limit99 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w98, i32 0, i32 2
  %72 = load i8*, i8** %limit99, align 8, !tbaa !57
  %cmp100 = icmp uge i8* %70, %72
  br i1 %cmp100, label %cond.false.110, label %cond.true.102

cond.true.102:                                    ; preds = %if.end.93
  %73 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor103 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %73, i32 0, i32 5
  %w104 = bitcast %union.stream_cursor_s* %cursor103 to %struct.stream_cursor_write_s*
  %ptr105 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w104, i32 0, i32 1
  %74 = load i8*, i8** %ptr105, align 8, !tbaa !55
  %incdec.ptr106 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %incdec.ptr106, i8** %ptr105, align 8, !tbaa !55
  %75 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor107 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %75, i32 0, i32 5
  %w108 = bitcast %union.stream_cursor_s* %cursor107 to %struct.stream_cursor_write_s*
  %ptr109 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w108, i32 0, i32 1
  %76 = load i8*, i8** %ptr109, align 8, !tbaa !55
  store i8 30, i8* %76, align 1, !tbaa !58
  br label %cond.end.112

cond.false.110:                                   ; preds = %if.end.93
  %77 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call111 = call i32 @spputc(%struct.stream_s* %77, i8 zeroext 30) #5
  br label %cond.end.112

cond.end.112:                                     ; preds = %cond.false.110, %cond.true.102
  %cond113 = phi i32 [ 0, %cond.true.102 ], [ %call111, %cond.false.110 ]
  %78 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call114 = call i32 @lputs(%struct.stream_s* %78, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.67, i32 0, i32 0)) #5
  %79 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %color_info115 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %79, i32 0, i32 11
  %depth116 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info115, i32 0, i32 3
  %80 = load i16, i16* %depth116, align 2, !tbaa !145
  %conv117 = zext i16 %80 to i32
  %cmp118 = icmp eq i32 %conv117, 8
  br i1 %cmp118, label %if.then.120, label %if.else.121

if.then.120:                                      ; preds = %cond.end.112
  %81 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %82 = load i32, i32* %drawing_color, align 4, !tbaa !5
  call void @sput_lips_int(%struct.stream_s* %81, i32 %82) #5
  br label %if.end.125

if.else.121:                                      ; preds = %cond.end.112
  %83 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %84 = load float, float* %r, align 4, !tbaa !69
  %conv122 = fptosi float %84 to i32
  call void @sput_lips_int(%struct.stream_s* %83, i32 %conv122) #5
  %85 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %86 = load float, float* %g, align 4, !tbaa !69
  %conv123 = fptosi float %86 to i32
  call void @sput_lips_int(%struct.stream_s* %85, i32 %conv123) #5
  %87 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %88 = load float, float* %b, align 4, !tbaa !69
  %conv124 = fptosi float %88 to i32
  call void @sput_lips_int(%struct.stream_s* %87, i32 %conv124) #5
  br label %if.end.125

if.end.125:                                       ; preds = %if.else.121, %if.then.120
  %89 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor126 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %89, i32 0, i32 5
  %w127 = bitcast %union.stream_cursor_s* %cursor126 to %struct.stream_cursor_write_s*
  %ptr128 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w127, i32 0, i32 1
  %90 = load i8*, i8** %ptr128, align 8, !tbaa !55
  %91 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor129 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %91, i32 0, i32 5
  %w130 = bitcast %union.stream_cursor_s* %cursor129 to %struct.stream_cursor_write_s*
  %limit131 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w130, i32 0, i32 2
  %92 = load i8*, i8** %limit131, align 8, !tbaa !57
  %cmp132 = icmp uge i8* %90, %92
  br i1 %cmp132, label %cond.false.142, label %cond.true.134

cond.true.134:                                    ; preds = %if.end.125
  %93 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor135 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %93, i32 0, i32 5
  %w136 = bitcast %union.stream_cursor_s* %cursor135 to %struct.stream_cursor_write_s*
  %ptr137 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w136, i32 0, i32 1
  %94 = load i8*, i8** %ptr137, align 8, !tbaa !55
  %incdec.ptr138 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %incdec.ptr138, i8** %ptr137, align 8, !tbaa !55
  %95 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor139 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %95, i32 0, i32 5
  %w140 = bitcast %union.stream_cursor_s* %cursor139 to %struct.stream_cursor_write_s*
  %ptr141 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w140, i32 0, i32 1
  %96 = load i8*, i8** %ptr141, align 8, !tbaa !55
  store i8 30, i8* %96, align 1, !tbaa !58
  br label %cond.end.144

cond.false.142:                                   ; preds = %if.end.125
  %97 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call143 = call i32 @spputc(%struct.stream_s* %97, i8 zeroext 30) #5
  br label %cond.end.144

cond.end.144:                                     ; preds = %cond.false.142, %cond.true.134
  %cond145 = phi i32 [ 0, %cond.true.134 ], [ %call143, %cond.false.142 ]
  %98 = bitcast float* %b to i8*
  call void @llvm.lifetime.end(i64 4, i8* %98) #2
  %99 = bitcast float* %g to i8*
  call void @llvm.lifetime.end(i64 4, i8* %99) #2
  %100 = bitcast float* %r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %100) #2
  %101 = bitcast i32* %drawing_color to i8*
  call void @llvm.lifetime.end(i64 4, i8* %101) #2
  %102 = bitcast i64* %color to i8*
  call void @llvm.lifetime.end(i64 8, i8* %102) #2
  %103 = bitcast %struct.gx_device_lips4v_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %103) #2
  %104 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %104) #2
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %cond.end.144, %if.then
  %105 = load i32, i32* %retval
  ret i32 %105
}

; Function Attrs: nounwind uwtable
define internal i32 @lips4v_setstrokecolor(%struct.gx_device_vector_s* %vdev, %struct.gs_imager_state_s* %pis, %struct.gx_device_color_s* %pdc) #0 {
entry:
  %retval = alloca i32, align 4
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pdc.addr = alloca %struct.gx_device_color_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %pdev = alloca %struct.gx_device_lips4v_s*, align 8
  %color = alloca i64, align 8
  %r = alloca float, align 4
  %g = alloca float, align 4
  %b = alloca float, align 4
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdc, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %0, i32 0, i32 0
  %1 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !70
  %cmp = icmp eq %struct.gx_device_color_type_s* %1, @gx_dc_type_data_pure
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -15, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %call = call %struct.stream_s* @gdev_vector_stream(%struct.gx_device_vector_s* %3) #5
  store %struct.stream_s* %call, %struct.stream_s** %s, align 8, !tbaa !1
  %4 = bitcast %struct.gx_device_lips4v_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %6 = bitcast %struct.gx_device_vector_s* %5 to %struct.gx_device_lips4v_s*
  store %struct.gx_device_lips4v_s* %6, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %7 = bitcast i64* %color to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %8, i32 0, i32 1
  %pure = bitcast %union._c* %colors to i64*
  %9 = load i64, i64* %pure, align 8, !tbaa !68
  store i64 %9, i64* %color, align 8, !tbaa !68
  %10 = bitcast float* %r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = bitcast float* %g to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = bitcast float* %b to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  %13 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %13, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %14 = load i16, i16* %depth, align 2, !tbaa !145
  %conv = zext i16 %14 to i32
  %cmp1 = icmp eq i32 %conv, 24
  br i1 %cmp1, label %if.then.3, label %if.end.16

if.then.3:                                        ; preds = %if.end
  %15 = load i64, i64* %color, align 8, !tbaa !68
  %shr = lshr i64 %15, 16
  %mul = mul i64 %shr, 1000
  %conv4 = uitofp i64 %mul to double
  %div = fdiv double %conv4, 2.550000e+02
  %conv5 = fptrunc double %div to float
  store float %conv5, float* %r, align 4, !tbaa !69
  %16 = load i64, i64* %color, align 8, !tbaa !68
  %shr6 = lshr i64 %16, 8
  %and = and i64 %shr6, 255
  %mul7 = mul i64 %and, 1000
  %conv8 = uitofp i64 %mul7 to double
  %div9 = fdiv double %conv8, 2.550000e+02
  %conv10 = fptrunc double %div9 to float
  store float %conv10, float* %g, align 4, !tbaa !69
  %17 = load i64, i64* %color, align 8, !tbaa !68
  %and11 = and i64 %17, 255
  %mul12 = mul i64 %and11, 1000
  %conv13 = uitofp i64 %mul12 to double
  %div14 = fdiv double %conv13, 2.550000e+02
  %conv15 = fptrunc double %div14 to float
  store float %conv15, float* %b, align 4, !tbaa !69
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.3, %if.end
  %18 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %TextMode = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %18, i32 0, i32 91
  %19 = load i32, i32* %TextMode, align 4, !tbaa !54
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %if.then.17, label %if.end.31

if.then.17:                                       ; preds = %if.end.16
  %20 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %20, i32 0, i32 5
  %w = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_write_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 1
  %21 = load i8*, i8** %ptr, align 8, !tbaa !55
  %22 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor18 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %22, i32 0, i32 5
  %w19 = bitcast %union.stream_cursor_s* %cursor18 to %struct.stream_cursor_write_s*
  %limit = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w19, i32 0, i32 2
  %23 = load i8*, i8** %limit, align 8, !tbaa !57
  %cmp20 = icmp uge i8* %21, %23
  br i1 %cmp20, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then.17
  %24 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor22 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %24, i32 0, i32 5
  %w23 = bitcast %union.stream_cursor_s* %cursor22 to %struct.stream_cursor_write_s*
  %ptr24 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w23, i32 0, i32 1
  %25 = load i8*, i8** %ptr24, align 8, !tbaa !55
  %incdec.ptr = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr, i8** %ptr24, align 8, !tbaa !55
  %26 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor25 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %26, i32 0, i32 5
  %w26 = bitcast %union.stream_cursor_s* %cursor25 to %struct.stream_cursor_write_s*
  %ptr27 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w26, i32 0, i32 1
  %27 = load i8*, i8** %ptr27, align 8, !tbaa !55
  store i8 -101, i8* %27, align 1, !tbaa !58
  br label %cond.end

cond.false:                                       ; preds = %if.then.17
  %28 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call28 = call i32 @spputc(%struct.stream_s* %28, i8 zeroext -101) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call28, %cond.false ]
  %29 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call29 = call i32 @lputs(%struct.stream_s* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i32 0, i32 0)) #5
  %30 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %TextMode30 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %30, i32 0, i32 91
  store i32 0, i32* %TextMode30, align 4, !tbaa !54
  br label %if.end.31

if.end.31:                                        ; preds = %cond.end, %if.end.16
  %31 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call32 = call i32 @lputs(%struct.stream_s* %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i32 0, i32 0)) #5
  %32 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %color_info33 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %32, i32 0, i32 11
  %depth34 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info33, i32 0, i32 3
  %33 = load i16, i16* %depth34, align 2, !tbaa !145
  %conv35 = zext i16 %33 to i32
  %cmp36 = icmp eq i32 %conv35, 8
  br i1 %cmp36, label %if.then.38, label %if.else

if.then.38:                                       ; preds = %if.end.31
  %34 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %35 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %color_info39 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %35, i32 0, i32 11
  %max_gray = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info39, i32 0, i32 5
  %36 = load i32, i32* %max_gray, align 4, !tbaa !76
  %conv40 = zext i32 %36 to i64
  %37 = load i64, i64* %color, align 8, !tbaa !68
  %sub = sub i64 %conv40, %37
  %conv41 = trunc i64 %sub to i32
  call void @sput_lips_int(%struct.stream_s* %34, i32 %conv41) #5
  br label %if.end.45

if.else:                                          ; preds = %if.end.31
  %38 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %39 = load float, float* %r, align 4, !tbaa !69
  %conv42 = fptosi float %39 to i32
  call void @sput_lips_int(%struct.stream_s* %38, i32 %conv42) #5
  %40 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %41 = load float, float* %g, align 4, !tbaa !69
  %conv43 = fptosi float %41 to i32
  call void @sput_lips_int(%struct.stream_s* %40, i32 %conv43) #5
  %42 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %43 = load float, float* %b, align 4, !tbaa !69
  %conv44 = fptosi float %43 to i32
  call void @sput_lips_int(%struct.stream_s* %42, i32 %conv44) #5
  br label %if.end.45

if.end.45:                                        ; preds = %if.else, %if.then.38
  %44 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor46 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %44, i32 0, i32 5
  %w47 = bitcast %union.stream_cursor_s* %cursor46 to %struct.stream_cursor_write_s*
  %ptr48 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w47, i32 0, i32 1
  %45 = load i8*, i8** %ptr48, align 8, !tbaa !55
  %46 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor49 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %46, i32 0, i32 5
  %w50 = bitcast %union.stream_cursor_s* %cursor49 to %struct.stream_cursor_write_s*
  %limit51 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w50, i32 0, i32 2
  %47 = load i8*, i8** %limit51, align 8, !tbaa !57
  %cmp52 = icmp uge i8* %45, %47
  br i1 %cmp52, label %cond.false.62, label %cond.true.54

cond.true.54:                                     ; preds = %if.end.45
  %48 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor55 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %48, i32 0, i32 5
  %w56 = bitcast %union.stream_cursor_s* %cursor55 to %struct.stream_cursor_write_s*
  %ptr57 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w56, i32 0, i32 1
  %49 = load i8*, i8** %ptr57, align 8, !tbaa !55
  %incdec.ptr58 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %incdec.ptr58, i8** %ptr57, align 8, !tbaa !55
  %50 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor59 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %50, i32 0, i32 5
  %w60 = bitcast %union.stream_cursor_s* %cursor59 to %struct.stream_cursor_write_s*
  %ptr61 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w60, i32 0, i32 1
  %51 = load i8*, i8** %ptr61, align 8, !tbaa !55
  store i8 30, i8* %51, align 1, !tbaa !58
  br label %cond.end.64

cond.false.62:                                    ; preds = %if.end.45
  %52 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call63 = call i32 @spputc(%struct.stream_s* %52, i8 zeroext 30) #5
  br label %cond.end.64

cond.end.64:                                      ; preds = %cond.false.62, %cond.true.54
  %cond65 = phi i32 [ 0, %cond.true.54 ], [ %call63, %cond.false.62 ]
  %53 = bitcast float* %b to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #2
  %54 = bitcast float* %g to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #2
  %55 = bitcast float* %r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #2
  %56 = bitcast i64* %color to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #2
  %57 = bitcast %struct.gx_device_lips4v_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %57) #2
  %58 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #2
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %cond.end.64, %if.then
  %59 = load i32, i32* %retval
  ret i32 %59
}

declare i32 @gdev_vector_dopath(%struct.gx_device_vector_s*, %struct.gx_path_s*, i32, %struct.gs_matrix_s*) #1

declare i32 @gdev_vector_dorect(%struct.gx_device_vector_s*, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @lips4v_beginpath(%struct.gx_device_vector_s* %vdev, i32 %type) #0 {
entry:
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %type.addr = alloca i32, align 4
  %s = alloca %struct.stream_s*, align 8
  %pdev = alloca %struct.gx_device_lips4v_s*, align 8
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store i32 %type, i32* %type.addr, align 4, !tbaa !58
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %call = call %struct.stream_s* @gdev_vector_stream(%struct.gx_device_vector_s* %1) #5
  store %struct.stream_s* %call, %struct.stream_s** %s, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_lips4v_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %4 = bitcast %struct.gx_device_vector_s* %3 to %struct.gx_device_lips4v_s*
  store %struct.gx_device_lips4v_s* %4, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %5 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %TextMode = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %5, i32 0, i32 91
  %6 = load i32, i32* %TextMode, align 4, !tbaa !54
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %7, i32 0, i32 5
  %w = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_write_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 1
  %8 = load i8*, i8** %ptr, align 8, !tbaa !55
  %9 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor1 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %9, i32 0, i32 5
  %w2 = bitcast %union.stream_cursor_s* %cursor1 to %struct.stream_cursor_write_s*
  %limit = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w2, i32 0, i32 2
  %10 = load i8*, i8** %limit, align 8, !tbaa !57
  %cmp = icmp uge i8* %8, %10
  br i1 %cmp, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then
  %11 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor3 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %11, i32 0, i32 5
  %w4 = bitcast %union.stream_cursor_s* %cursor3 to %struct.stream_cursor_write_s*
  %ptr5 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w4, i32 0, i32 1
  %12 = load i8*, i8** %ptr5, align 8, !tbaa !55
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr, i8** %ptr5, align 8, !tbaa !55
  %13 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor6 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %13, i32 0, i32 5
  %w7 = bitcast %union.stream_cursor_s* %cursor6 to %struct.stream_cursor_write_s*
  %ptr8 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w7, i32 0, i32 1
  %14 = load i8*, i8** %ptr8, align 8, !tbaa !55
  store i8 -101, i8* %14, align 1, !tbaa !58
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %15 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call9 = call i32 @spputc(%struct.stream_s* %15, i8 zeroext -101) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call9, %cond.false ]
  %16 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call10 = call i32 @lputs(%struct.stream_s* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i32 0, i32 0)) #5
  %17 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %TextMode11 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %17, i32 0, i32 91
  store i32 0, i32* %TextMode11, align 4, !tbaa !54
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  %18 = load i32, i32* %type.addr, align 4, !tbaa !58
  %and = and i32 %18, 4
  %tobool12 = icmp ne i32 %and, 0
  br i1 %tobool12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.end
  %19 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call14 = call i32 @lputs(%struct.stream_s* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.69, i32 0, i32 0)) #5
  %20 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor15 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %20, i32 0, i32 5
  %w16 = bitcast %union.stream_cursor_s* %cursor15 to %struct.stream_cursor_write_s*
  %ptr17 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w16, i32 0, i32 1
  %21 = load i8*, i8** %ptr17, align 8, !tbaa !55
  %22 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor18 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %22, i32 0, i32 5
  %w19 = bitcast %union.stream_cursor_s* %cursor18 to %struct.stream_cursor_write_s*
  %limit20 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w19, i32 0, i32 2
  %23 = load i8*, i8** %limit20, align 8, !tbaa !57
  %cmp21 = icmp uge i8* %21, %23
  br i1 %cmp21, label %cond.false.30, label %cond.true.22

cond.true.22:                                     ; preds = %if.then.13
  %24 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor23 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %24, i32 0, i32 5
  %w24 = bitcast %union.stream_cursor_s* %cursor23 to %struct.stream_cursor_write_s*
  %ptr25 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w24, i32 0, i32 1
  %25 = load i8*, i8** %ptr25, align 8, !tbaa !55
  %incdec.ptr26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr26, i8** %ptr25, align 8, !tbaa !55
  %26 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor27 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %26, i32 0, i32 5
  %w28 = bitcast %union.stream_cursor_s* %cursor27 to %struct.stream_cursor_write_s*
  %ptr29 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w28, i32 0, i32 1
  %27 = load i8*, i8** %ptr29, align 8, !tbaa !55
  store i8 30, i8* %27, align 1, !tbaa !58
  br label %cond.end.32

cond.false.30:                                    ; preds = %if.then.13
  %28 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call31 = call i32 @spputc(%struct.stream_s* %28, i8 zeroext 30) #5
  br label %cond.end.32

cond.end.32:                                      ; preds = %cond.false.30, %cond.true.22
  %cond33 = phi i32 [ 0, %cond.true.22 ], [ %call31, %cond.false.30 ]
  br label %if.end.35

if.else:                                          ; preds = %if.end
  %29 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call34 = call i32 @lputs(%struct.stream_s* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.70, i32 0, i32 0)) #5
  br label %if.end.35

if.end.35:                                        ; preds = %if.else, %cond.end.32
  %30 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor36 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %30, i32 0, i32 5
  %w37 = bitcast %union.stream_cursor_s* %cursor36 to %struct.stream_cursor_write_s*
  %ptr38 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w37, i32 0, i32 1
  %31 = load i8*, i8** %ptr38, align 8, !tbaa !55
  %32 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor39 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %32, i32 0, i32 5
  %w40 = bitcast %union.stream_cursor_s* %cursor39 to %struct.stream_cursor_write_s*
  %limit41 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w40, i32 0, i32 2
  %33 = load i8*, i8** %limit41, align 8, !tbaa !57
  %cmp42 = icmp uge i8* %31, %33
  br i1 %cmp42, label %cond.false.51, label %cond.true.43

cond.true.43:                                     ; preds = %if.end.35
  %34 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor44 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %34, i32 0, i32 5
  %w45 = bitcast %union.stream_cursor_s* %cursor44 to %struct.stream_cursor_write_s*
  %ptr46 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w45, i32 0, i32 1
  %35 = load i8*, i8** %ptr46, align 8, !tbaa !55
  %incdec.ptr47 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr47, i8** %ptr46, align 8, !tbaa !55
  %36 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor48 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %36, i32 0, i32 5
  %w49 = bitcast %union.stream_cursor_s* %cursor48 to %struct.stream_cursor_write_s*
  %ptr50 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w49, i32 0, i32 1
  %37 = load i8*, i8** %ptr50, align 8, !tbaa !55
  store i8 30, i8* %37, align 1, !tbaa !58
  br label %cond.end.53

cond.false.51:                                    ; preds = %if.end.35
  %38 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call52 = call i32 @spputc(%struct.stream_s* %38, i8 zeroext 30) #5
  br label %cond.end.53

cond.end.53:                                      ; preds = %cond.false.51, %cond.true.43
  %cond54 = phi i32 [ 0, %cond.true.43 ], [ %call52, %cond.false.51 ]
  %39 = bitcast %struct.gx_device_lips4v_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #2
  %40 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #2
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @lips4v_moveto(%struct.gx_device_vector_s* %vdev, double %x0, double %y0, double %x, double %y, i32 %type) #0 {
entry:
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %x0.addr = alloca double, align 8
  %y0.addr = alloca double, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %type.addr = alloca i32, align 4
  %s = alloca %struct.stream_s*, align 8
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store double %x0, double* %x0.addr, align 8, !tbaa !77
  store double %y0, double* %y0.addr, align 8, !tbaa !77
  store double %x, double* %x.addr, align 8, !tbaa !77
  store double %y, double* %y.addr, align 8, !tbaa !77
  store i32 %type, i32* %type.addr, align 4, !tbaa !58
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %call = call %struct.stream_s* @gdev_vector_stream(%struct.gx_device_vector_s* %1) #5
  store %struct.stream_s* %call, %struct.stream_s** %s, align 8, !tbaa !1
  %2 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call1 = call i32 @lputs(%struct.stream_s* %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.71, i32 0, i32 0)) #5
  %3 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %4 = load double, double* %x.addr, align 8, !tbaa !77
  %conv = fptosi double %4 to i32
  call void @sput_lips_int(%struct.stream_s* %3, i32 %conv) #5
  %5 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %6 = load double, double* %y.addr, align 8, !tbaa !77
  %conv2 = fptosi double %6 to i32
  call void @sput_lips_int(%struct.stream_s* %5, i32 %conv2) #5
  %7 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %7, i32 0, i32 5
  %w = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_write_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 1
  %8 = load i8*, i8** %ptr, align 8, !tbaa !55
  %9 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor3 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %9, i32 0, i32 5
  %w4 = bitcast %union.stream_cursor_s* %cursor3 to %struct.stream_cursor_write_s*
  %limit = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w4, i32 0, i32 2
  %10 = load i8*, i8** %limit, align 8, !tbaa !57
  %cmp = icmp uge i8* %8, %10
  br i1 %cmp, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %11 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor6 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %11, i32 0, i32 5
  %w7 = bitcast %union.stream_cursor_s* %cursor6 to %struct.stream_cursor_write_s*
  %ptr8 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w7, i32 0, i32 1
  %12 = load i8*, i8** %ptr8, align 8, !tbaa !55
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr, i8** %ptr8, align 8, !tbaa !55
  %13 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor9 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %13, i32 0, i32 5
  %w10 = bitcast %union.stream_cursor_s* %cursor9 to %struct.stream_cursor_write_s*
  %ptr11 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w10, i32 0, i32 1
  %14 = load i8*, i8** %ptr11, align 8, !tbaa !55
  store i8 30, i8* %14, align 1, !tbaa !58
  br label %cond.end

cond.false:                                       ; preds = %entry
  %15 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call12 = call i32 @spputc(%struct.stream_s* %15, i8 zeroext 30) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call12, %cond.false ]
  %16 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #2
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @lips4v_lineto(%struct.gx_device_vector_s* %vdev, double %x0, double %y0, double %x, double %y, i32 %type) #0 {
entry:
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %x0.addr = alloca double, align 8
  %y0.addr = alloca double, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %type.addr = alloca i32, align 4
  %s = alloca %struct.stream_s*, align 8
  %pdev = alloca %struct.gx_device_lips4v_s*, align 8
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store double %x0, double* %x0.addr, align 8, !tbaa !77
  store double %y0, double* %y0.addr, align 8, !tbaa !77
  store double %x, double* %x.addr, align 8, !tbaa !77
  store double %y, double* %y.addr, align 8, !tbaa !77
  store i32 %type, i32* %type.addr, align 4, !tbaa !58
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %call = call %struct.stream_s* @gdev_vector_stream(%struct.gx_device_vector_s* %1) #5
  store %struct.stream_s* %call, %struct.stream_s** %s, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_lips4v_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %4 = bitcast %struct.gx_device_vector_s* %3 to %struct.gx_device_lips4v_s*
  store %struct.gx_device_lips4v_s* %4, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %5 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %linecap = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %5, i32 0, i32 96
  %6 = load i32, i32* %linecap, align 4, !tbaa !144
  %cmp = icmp eq i32 %6, 1
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %7 = load double, double* %x0.addr, align 8, !tbaa !77
  %8 = load double, double* %x.addr, align 8, !tbaa !77
  %cmp1 = fcmp oeq double %7, %8
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %9 = load double, double* %y0.addr, align 8, !tbaa !77
  %10 = load double, double* %y.addr, align 8, !tbaa !77
  %cmp2 = fcmp oeq double %9, %10
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %land.lhs.true
  %11 = load double, double* %x.addr, align 8, !tbaa !77
  %add = fadd double %11, 1.000000e+00
  store double %add, double* %x.addr, align 8, !tbaa !77
  br label %if.end

if.end:                                           ; preds = %if.then.3, %land.lhs.true, %if.then
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  %12 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call5 = call i32 @lputs(%struct.stream_s* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.72, i32 0, i32 0)) #5
  %13 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %14 = load double, double* %x.addr, align 8, !tbaa !77
  %conv = fptosi double %14 to i32
  call void @sput_lips_int(%struct.stream_s* %13, i32 %conv) #5
  %15 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %16 = load double, double* %y.addr, align 8, !tbaa !77
  %conv6 = fptosi double %16 to i32
  call void @sput_lips_int(%struct.stream_s* %15, i32 %conv6) #5
  %17 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %17, i32 0, i32 5
  %w = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_write_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 1
  %18 = load i8*, i8** %ptr, align 8, !tbaa !55
  %19 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor7 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %19, i32 0, i32 5
  %w8 = bitcast %union.stream_cursor_s* %cursor7 to %struct.stream_cursor_write_s*
  %limit = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w8, i32 0, i32 2
  %20 = load i8*, i8** %limit, align 8, !tbaa !57
  %cmp9 = icmp uge i8* %18, %20
  br i1 %cmp9, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end.4
  %21 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor11 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %21, i32 0, i32 5
  %w12 = bitcast %union.stream_cursor_s* %cursor11 to %struct.stream_cursor_write_s*
  %ptr13 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w12, i32 0, i32 1
  %22 = load i8*, i8** %ptr13, align 8, !tbaa !55
  %incdec.ptr = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr, i8** %ptr13, align 8, !tbaa !55
  %23 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor14 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %23, i32 0, i32 5
  %w15 = bitcast %union.stream_cursor_s* %cursor14 to %struct.stream_cursor_write_s*
  %ptr16 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w15, i32 0, i32 1
  %24 = load i8*, i8** %ptr16, align 8, !tbaa !55
  store i8 30, i8* %24, align 1, !tbaa !58
  br label %cond.end

cond.false:                                       ; preds = %if.end.4
  %25 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call17 = call i32 @spputc(%struct.stream_s* %25, i8 zeroext 30) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call17, %cond.false ]
  %26 = bitcast %struct.gx_device_lips4v_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #2
  %27 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #2
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @lips4v_curveto(%struct.gx_device_vector_s* %vdev, double %x0, double %y0, double %x1, double %y1, double %x2, double %y2, double %x3, double %y3, i32 %type) #0 {
entry:
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %x0.addr = alloca double, align 8
  %y0.addr = alloca double, align 8
  %x1.addr = alloca double, align 8
  %y1.addr = alloca double, align 8
  %x2.addr = alloca double, align 8
  %y2.addr = alloca double, align 8
  %x3.addr = alloca double, align 8
  %y3.addr = alloca double, align 8
  %type.addr = alloca i32, align 4
  %s = alloca %struct.stream_s*, align 8
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store double %x0, double* %x0.addr, align 8, !tbaa !77
  store double %y0, double* %y0.addr, align 8, !tbaa !77
  store double %x1, double* %x1.addr, align 8, !tbaa !77
  store double %y1, double* %y1.addr, align 8, !tbaa !77
  store double %x2, double* %x2.addr, align 8, !tbaa !77
  store double %y2, double* %y2.addr, align 8, !tbaa !77
  store double %x3, double* %x3.addr, align 8, !tbaa !77
  store double %y3, double* %y3.addr, align 8, !tbaa !77
  store i32 %type, i32* %type.addr, align 4, !tbaa !58
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %call = call %struct.stream_s* @gdev_vector_stream(%struct.gx_device_vector_s* %1) #5
  store %struct.stream_s* %call, %struct.stream_s** %s, align 8, !tbaa !1
  %2 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call1 = call i32 @lputs(%struct.stream_s* %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i32 0, i32 0)) #5
  %3 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %4 = load double, double* %x1.addr, align 8, !tbaa !77
  %conv = fptosi double %4 to i32
  call void @sput_lips_int(%struct.stream_s* %3, i32 %conv) #5
  %5 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %6 = load double, double* %y1.addr, align 8, !tbaa !77
  %conv2 = fptosi double %6 to i32
  call void @sput_lips_int(%struct.stream_s* %5, i32 %conv2) #5
  %7 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %8 = load double, double* %x2.addr, align 8, !tbaa !77
  %conv3 = fptosi double %8 to i32
  call void @sput_lips_int(%struct.stream_s* %7, i32 %conv3) #5
  %9 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %10 = load double, double* %y2.addr, align 8, !tbaa !77
  %conv4 = fptosi double %10 to i32
  call void @sput_lips_int(%struct.stream_s* %9, i32 %conv4) #5
  %11 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %12 = load double, double* %x3.addr, align 8, !tbaa !77
  %conv5 = fptosi double %12 to i32
  call void @sput_lips_int(%struct.stream_s* %11, i32 %conv5) #5
  %13 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %14 = load double, double* %y3.addr, align 8, !tbaa !77
  %conv6 = fptosi double %14 to i32
  call void @sput_lips_int(%struct.stream_s* %13, i32 %conv6) #5
  %15 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %15, i32 0, i32 5
  %w = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_write_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 1
  %16 = load i8*, i8** %ptr, align 8, !tbaa !55
  %17 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor7 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %17, i32 0, i32 5
  %w8 = bitcast %union.stream_cursor_s* %cursor7 to %struct.stream_cursor_write_s*
  %limit = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w8, i32 0, i32 2
  %18 = load i8*, i8** %limit, align 8, !tbaa !57
  %cmp = icmp uge i8* %16, %18
  br i1 %cmp, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %19 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor10 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %19, i32 0, i32 5
  %w11 = bitcast %union.stream_cursor_s* %cursor10 to %struct.stream_cursor_write_s*
  %ptr12 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w11, i32 0, i32 1
  %20 = load i8*, i8** %ptr12, align 8, !tbaa !55
  %incdec.ptr = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr, i8** %ptr12, align 8, !tbaa !55
  %21 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor13 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %21, i32 0, i32 5
  %w14 = bitcast %union.stream_cursor_s* %cursor13 to %struct.stream_cursor_write_s*
  %ptr15 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w14, i32 0, i32 1
  %22 = load i8*, i8** %ptr15, align 8, !tbaa !55
  store i8 30, i8* %22, align 1, !tbaa !58
  br label %cond.end

cond.false:                                       ; preds = %entry
  %23 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call16 = call i32 @spputc(%struct.stream_s* %23, i8 zeroext 30) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call16, %cond.false ]
  %24 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #2
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @lips4v_closepath(%struct.gx_device_vector_s* %vdev, double %x, double %y, double %x_start, double %y_start, i32 %type) #0 {
entry:
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %x_start.addr = alloca double, align 8
  %y_start.addr = alloca double, align 8
  %type.addr = alloca i32, align 4
  %s = alloca %struct.stream_s*, align 8
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store double %x, double* %x.addr, align 8, !tbaa !77
  store double %y, double* %y.addr, align 8, !tbaa !77
  store double %x_start, double* %x_start.addr, align 8, !tbaa !77
  store double %y_start, double* %y_start.addr, align 8, !tbaa !77
  store i32 %type, i32* %type.addr, align 4, !tbaa !58
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %call = call %struct.stream_s* @gdev_vector_stream(%struct.gx_device_vector_s* %1) #5
  store %struct.stream_s* %call, %struct.stream_s** %s, align 8, !tbaa !1
  %2 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call1 = call i32 @lputs(%struct.stream_s* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.74, i32 0, i32 0)) #5
  %3 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %3, i32 0, i32 5
  %w = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_write_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 1
  %4 = load i8*, i8** %ptr, align 8, !tbaa !55
  %5 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor2 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %5, i32 0, i32 5
  %w3 = bitcast %union.stream_cursor_s* %cursor2 to %struct.stream_cursor_write_s*
  %limit = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w3, i32 0, i32 2
  %6 = load i8*, i8** %limit, align 8, !tbaa !57
  %cmp = icmp uge i8* %4, %6
  br i1 %cmp, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %7 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor4 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %7, i32 0, i32 5
  %w5 = bitcast %union.stream_cursor_s* %cursor4 to %struct.stream_cursor_write_s*
  %ptr6 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w5, i32 0, i32 1
  %8 = load i8*, i8** %ptr6, align 8, !tbaa !55
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr, i8** %ptr6, align 8, !tbaa !55
  %9 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor7 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %9, i32 0, i32 5
  %w8 = bitcast %union.stream_cursor_s* %cursor7 to %struct.stream_cursor_write_s*
  %ptr9 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w8, i32 0, i32 1
  %10 = load i8*, i8** %ptr9, align 8, !tbaa !55
  store i8 30, i8* %10, align 1, !tbaa !58
  br label %cond.end

cond.false:                                       ; preds = %entry
  %11 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call10 = call i32 @spputc(%struct.stream_s* %11, i8 zeroext 30) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call10, %cond.false ]
  %12 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #2
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @lips4v_endpath(%struct.gx_device_vector_s* %vdev, i32 %type) #0 {
entry:
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %type.addr = alloca i32, align 4
  %s = alloca %struct.stream_s*, align 8
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store i32 %type, i32* %type.addr, align 4, !tbaa !58
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %call = call %struct.stream_s* @gdev_vector_stream(%struct.gx_device_vector_s* %1) #5
  store %struct.stream_s* %call, %struct.stream_s** %s, align 8, !tbaa !1
  %2 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call1 = call i32 @lputs(%struct.stream_s* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.75, i32 0, i32 0)) #5
  %3 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %3, i32 0, i32 5
  %w = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_write_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 1
  %4 = load i8*, i8** %ptr, align 8, !tbaa !55
  %5 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor2 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %5, i32 0, i32 5
  %w3 = bitcast %union.stream_cursor_s* %cursor2 to %struct.stream_cursor_write_s*
  %limit = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w3, i32 0, i32 2
  %6 = load i8*, i8** %limit, align 8, !tbaa !57
  %cmp = icmp uge i8* %4, %6
  br i1 %cmp, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %7 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor4 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %7, i32 0, i32 5
  %w5 = bitcast %union.stream_cursor_s* %cursor4 to %struct.stream_cursor_write_s*
  %ptr6 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w5, i32 0, i32 1
  %8 = load i8*, i8** %ptr6, align 8, !tbaa !55
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr, i8** %ptr6, align 8, !tbaa !55
  %9 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor7 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %9, i32 0, i32 5
  %w8 = bitcast %union.stream_cursor_s* %cursor7 to %struct.stream_cursor_write_s*
  %ptr9 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w8, i32 0, i32 1
  %10 = load i8*, i8** %ptr9, align 8, !tbaa !55
  store i8 30, i8* %10, align 1, !tbaa !58
  br label %cond.end

cond.false:                                       ; preds = %entry
  %11 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call10 = call i32 @spputc(%struct.stream_s* %11, i8 zeroext 30) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call10, %cond.false ]
  %12 = load i32, i32* %type.addr, align 4, !tbaa !58
  %and = and i32 %12, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end.54

if.then:                                          ; preds = %cond.end
  %13 = load i32, i32* %type.addr, align 4, !tbaa !58
  %and11 = and i32 %13, 0
  %tobool12 = icmp ne i32 %and11, 0
  br i1 %tobool12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.then
  %14 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call14 = call i32 @lputs(%struct.stream_s* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i32 0, i32 0)) #5
  %15 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor15 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %15, i32 0, i32 5
  %w16 = bitcast %union.stream_cursor_s* %cursor15 to %struct.stream_cursor_write_s*
  %ptr17 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w16, i32 0, i32 1
  %16 = load i8*, i8** %ptr17, align 8, !tbaa !55
  %17 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor18 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %17, i32 0, i32 5
  %w19 = bitcast %union.stream_cursor_s* %cursor18 to %struct.stream_cursor_write_s*
  %limit20 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w19, i32 0, i32 2
  %18 = load i8*, i8** %limit20, align 8, !tbaa !57
  %cmp21 = icmp uge i8* %16, %18
  br i1 %cmp21, label %cond.false.30, label %cond.true.22

cond.true.22:                                     ; preds = %if.then.13
  %19 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor23 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %19, i32 0, i32 5
  %w24 = bitcast %union.stream_cursor_s* %cursor23 to %struct.stream_cursor_write_s*
  %ptr25 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w24, i32 0, i32 1
  %20 = load i8*, i8** %ptr25, align 8, !tbaa !55
  %incdec.ptr26 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr26, i8** %ptr25, align 8, !tbaa !55
  %21 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor27 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %21, i32 0, i32 5
  %w28 = bitcast %union.stream_cursor_s* %cursor27 to %struct.stream_cursor_write_s*
  %ptr29 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w28, i32 0, i32 1
  %22 = load i8*, i8** %ptr29, align 8, !tbaa !55
  store i8 30, i8* %22, align 1, !tbaa !58
  br label %cond.end.32

cond.false.30:                                    ; preds = %if.then.13
  %23 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call31 = call i32 @spputc(%struct.stream_s* %23, i8 zeroext 30) #5
  br label %cond.end.32

cond.end.32:                                      ; preds = %cond.false.30, %cond.true.22
  %cond33 = phi i32 [ 0, %cond.true.22 ], [ %call31, %cond.false.30 ]
  br label %if.end

if.else:                                          ; preds = %if.then
  %24 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call34 = call i32 @lputs(%struct.stream_s* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.76, i32 0, i32 0)) #5
  %25 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor35 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %25, i32 0, i32 5
  %w36 = bitcast %union.stream_cursor_s* %cursor35 to %struct.stream_cursor_write_s*
  %ptr37 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w36, i32 0, i32 1
  %26 = load i8*, i8** %ptr37, align 8, !tbaa !55
  %27 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor38 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %27, i32 0, i32 5
  %w39 = bitcast %union.stream_cursor_s* %cursor38 to %struct.stream_cursor_write_s*
  %limit40 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w39, i32 0, i32 2
  %28 = load i8*, i8** %limit40, align 8, !tbaa !57
  %cmp41 = icmp uge i8* %26, %28
  br i1 %cmp41, label %cond.false.50, label %cond.true.42

cond.true.42:                                     ; preds = %if.else
  %29 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor43 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %29, i32 0, i32 5
  %w44 = bitcast %union.stream_cursor_s* %cursor43 to %struct.stream_cursor_write_s*
  %ptr45 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w44, i32 0, i32 1
  %30 = load i8*, i8** %ptr45, align 8, !tbaa !55
  %incdec.ptr46 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr46, i8** %ptr45, align 8, !tbaa !55
  %31 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor47 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %31, i32 0, i32 5
  %w48 = bitcast %union.stream_cursor_s* %cursor47 to %struct.stream_cursor_write_s*
  %ptr49 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w48, i32 0, i32 1
  %32 = load i8*, i8** %ptr49, align 8, !tbaa !55
  store i8 30, i8* %32, align 1, !tbaa !58
  br label %cond.end.52

cond.false.50:                                    ; preds = %if.else
  %33 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call51 = call i32 @spputc(%struct.stream_s* %33, i8 zeroext 30) #5
  br label %cond.end.52

cond.end.52:                                      ; preds = %cond.false.50, %cond.true.42
  %cond53 = phi i32 [ 0, %cond.true.42 ], [ %call51, %cond.false.50 ]
  br label %if.end

if.end:                                           ; preds = %cond.end.52, %cond.end.32
  br label %if.end.54

if.end.54:                                        ; preds = %if.end, %cond.end
  %34 = load i32, i32* %type.addr, align 4, !tbaa !58
  %and55 = and i32 %34, 1
  %tobool56 = icmp ne i32 %and55, 0
  br i1 %tobool56, label %if.then.57, label %if.end.103

if.then.57:                                       ; preds = %if.end.54
  %35 = load i32, i32* %type.addr, align 4, !tbaa !58
  %and58 = and i32 %35, 2
  %tobool59 = icmp ne i32 %and58, 0
  br i1 %tobool59, label %if.then.60, label %if.else.81

if.then.60:                                       ; preds = %if.then.57
  %36 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call61 = call i32 @lputs(%struct.stream_s* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.77, i32 0, i32 0)) #5
  %37 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor62 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %37, i32 0, i32 5
  %w63 = bitcast %union.stream_cursor_s* %cursor62 to %struct.stream_cursor_write_s*
  %ptr64 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w63, i32 0, i32 1
  %38 = load i8*, i8** %ptr64, align 8, !tbaa !55
  %39 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor65 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %39, i32 0, i32 5
  %w66 = bitcast %union.stream_cursor_s* %cursor65 to %struct.stream_cursor_write_s*
  %limit67 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w66, i32 0, i32 2
  %40 = load i8*, i8** %limit67, align 8, !tbaa !57
  %cmp68 = icmp uge i8* %38, %40
  br i1 %cmp68, label %cond.false.77, label %cond.true.69

cond.true.69:                                     ; preds = %if.then.60
  %41 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor70 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %41, i32 0, i32 5
  %w71 = bitcast %union.stream_cursor_s* %cursor70 to %struct.stream_cursor_write_s*
  %ptr72 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w71, i32 0, i32 1
  %42 = load i8*, i8** %ptr72, align 8, !tbaa !55
  %incdec.ptr73 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr73, i8** %ptr72, align 8, !tbaa !55
  %43 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor74 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %43, i32 0, i32 5
  %w75 = bitcast %union.stream_cursor_s* %cursor74 to %struct.stream_cursor_write_s*
  %ptr76 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w75, i32 0, i32 1
  %44 = load i8*, i8** %ptr76, align 8, !tbaa !55
  store i8 30, i8* %44, align 1, !tbaa !58
  br label %cond.end.79

cond.false.77:                                    ; preds = %if.then.60
  %45 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call78 = call i32 @spputc(%struct.stream_s* %45, i8 zeroext 30) #5
  br label %cond.end.79

cond.end.79:                                      ; preds = %cond.false.77, %cond.true.69
  %cond80 = phi i32 [ 0, %cond.true.69 ], [ %call78, %cond.false.77 ]
  br label %if.end.102

if.else.81:                                       ; preds = %if.then.57
  %46 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call82 = call i32 @lputs(%struct.stream_s* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.78, i32 0, i32 0)) #5
  %47 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor83 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %47, i32 0, i32 5
  %w84 = bitcast %union.stream_cursor_s* %cursor83 to %struct.stream_cursor_write_s*
  %ptr85 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w84, i32 0, i32 1
  %48 = load i8*, i8** %ptr85, align 8, !tbaa !55
  %49 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor86 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %49, i32 0, i32 5
  %w87 = bitcast %union.stream_cursor_s* %cursor86 to %struct.stream_cursor_write_s*
  %limit88 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w87, i32 0, i32 2
  %50 = load i8*, i8** %limit88, align 8, !tbaa !57
  %cmp89 = icmp uge i8* %48, %50
  br i1 %cmp89, label %cond.false.98, label %cond.true.90

cond.true.90:                                     ; preds = %if.else.81
  %51 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor91 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %51, i32 0, i32 5
  %w92 = bitcast %union.stream_cursor_s* %cursor91 to %struct.stream_cursor_write_s*
  %ptr93 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w92, i32 0, i32 1
  %52 = load i8*, i8** %ptr93, align 8, !tbaa !55
  %incdec.ptr94 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %incdec.ptr94, i8** %ptr93, align 8, !tbaa !55
  %53 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor95 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %53, i32 0, i32 5
  %w96 = bitcast %union.stream_cursor_s* %cursor95 to %struct.stream_cursor_write_s*
  %ptr97 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w96, i32 0, i32 1
  %54 = load i8*, i8** %ptr97, align 8, !tbaa !55
  store i8 30, i8* %54, align 1, !tbaa !58
  br label %cond.end.100

cond.false.98:                                    ; preds = %if.else.81
  %55 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call99 = call i32 @spputc(%struct.stream_s* %55, i8 zeroext 30) #5
  br label %cond.end.100

cond.end.100:                                     ; preds = %cond.false.98, %cond.true.90
  %cond101 = phi i32 [ 0, %cond.true.90 ], [ %call99, %cond.false.98 ]
  br label %if.end.102

if.end.102:                                       ; preds = %cond.end.100, %cond.end.79
  br label %if.end.103

if.end.103:                                       ; preds = %if.end.102, %if.end.54
  %56 = load i32, i32* %type.addr, align 4, !tbaa !58
  %and104 = and i32 %56, 2
  %tobool105 = icmp ne i32 %and104, 0
  br i1 %tobool105, label %if.then.106, label %if.end.127

if.then.106:                                      ; preds = %if.end.103
  %57 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call107 = call i32 @lputs(%struct.stream_s* %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.79, i32 0, i32 0)) #5
  %58 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor108 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %58, i32 0, i32 5
  %w109 = bitcast %union.stream_cursor_s* %cursor108 to %struct.stream_cursor_write_s*
  %ptr110 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w109, i32 0, i32 1
  %59 = load i8*, i8** %ptr110, align 8, !tbaa !55
  %60 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor111 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %60, i32 0, i32 5
  %w112 = bitcast %union.stream_cursor_s* %cursor111 to %struct.stream_cursor_write_s*
  %limit113 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w112, i32 0, i32 2
  %61 = load i8*, i8** %limit113, align 8, !tbaa !57
  %cmp114 = icmp uge i8* %59, %61
  br i1 %cmp114, label %cond.false.123, label %cond.true.115

cond.true.115:                                    ; preds = %if.then.106
  %62 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor116 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %62, i32 0, i32 5
  %w117 = bitcast %union.stream_cursor_s* %cursor116 to %struct.stream_cursor_write_s*
  %ptr118 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w117, i32 0, i32 1
  %63 = load i8*, i8** %ptr118, align 8, !tbaa !55
  %incdec.ptr119 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %incdec.ptr119, i8** %ptr118, align 8, !tbaa !55
  %64 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor120 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %64, i32 0, i32 5
  %w121 = bitcast %union.stream_cursor_s* %cursor120 to %struct.stream_cursor_write_s*
  %ptr122 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w121, i32 0, i32 1
  %65 = load i8*, i8** %ptr122, align 8, !tbaa !55
  store i8 30, i8* %65, align 1, !tbaa !58
  br label %cond.end.125

cond.false.123:                                   ; preds = %if.then.106
  %66 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call124 = call i32 @spputc(%struct.stream_s* %66, i8 zeroext 30) #5
  br label %cond.end.125

cond.end.125:                                     ; preds = %cond.false.123, %cond.true.115
  %cond126 = phi i32 [ 0, %cond.true.115 ], [ %call124, %cond.false.123 ]
  br label %if.end.127

if.end.127:                                       ; preds = %cond.end.125, %if.end.103
  %67 = load i32, i32* %type.addr, align 4, !tbaa !58
  %and128 = and i32 %67, 4
  %tobool129 = icmp ne i32 %and128, 0
  br i1 %tobool129, label %if.then.130, label %if.end.151

if.then.130:                                      ; preds = %if.end.127
  %68 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call131 = call i32 @lputs(%struct.stream_s* %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.80, i32 0, i32 0)) #5
  %69 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor132 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %69, i32 0, i32 5
  %w133 = bitcast %union.stream_cursor_s* %cursor132 to %struct.stream_cursor_write_s*
  %ptr134 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w133, i32 0, i32 1
  %70 = load i8*, i8** %ptr134, align 8, !tbaa !55
  %71 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor135 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %71, i32 0, i32 5
  %w136 = bitcast %union.stream_cursor_s* %cursor135 to %struct.stream_cursor_write_s*
  %limit137 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w136, i32 0, i32 2
  %72 = load i8*, i8** %limit137, align 8, !tbaa !57
  %cmp138 = icmp uge i8* %70, %72
  br i1 %cmp138, label %cond.false.147, label %cond.true.139

cond.true.139:                                    ; preds = %if.then.130
  %73 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor140 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %73, i32 0, i32 5
  %w141 = bitcast %union.stream_cursor_s* %cursor140 to %struct.stream_cursor_write_s*
  %ptr142 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w141, i32 0, i32 1
  %74 = load i8*, i8** %ptr142, align 8, !tbaa !55
  %incdec.ptr143 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %incdec.ptr143, i8** %ptr142, align 8, !tbaa !55
  %75 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor144 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %75, i32 0, i32 5
  %w145 = bitcast %union.stream_cursor_s* %cursor144 to %struct.stream_cursor_write_s*
  %ptr146 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w145, i32 0, i32 1
  %76 = load i8*, i8** %ptr146, align 8, !tbaa !55
  store i8 30, i8* %76, align 1, !tbaa !58
  br label %cond.end.149

cond.false.147:                                   ; preds = %if.then.130
  %77 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call148 = call i32 @spputc(%struct.stream_s* %77, i8 zeroext 30) #5
  br label %cond.end.149

cond.end.149:                                     ; preds = %cond.false.147, %cond.true.139
  %cond150 = phi i32 [ 0, %cond.true.139 ], [ %call148, %cond.false.147 ]
  br label %if.end.151

if.end.151:                                       ; preds = %cond.end.149, %if.end.127
  %78 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #2
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @lputs(%struct.stream_s* %s, i8* %str) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %str.addr = alloca i8*, align 8
  %len = alloca i32, align 4
  %used = alloca i32, align 4
  %status = alloca i32, align 4
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i8* %str, i8** %str.addr, align 8, !tbaa !1
  %0 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %1) #7
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %len, align 4, !tbaa !5
  %2 = bitcast i32* %used to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %5 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %6 = load i32, i32* %len, align 4, !tbaa !5
  %call1 = call i32 @sputs(%struct.stream_s* %4, i8* %5, i32 %6, i32* %used) #5
  store i32 %call1, i32* %status, align 4, !tbaa !5
  %7 = load i32, i32* %status, align 4, !tbaa !5
  %cmp = icmp sge i32 %7, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %8 = load i32, i32* %used, align 4, !tbaa !5
  %9 = load i32, i32* %len, align 4, !tbaa !5
  %cmp3 = icmp eq i32 %8, %9
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %10 = phi i1 [ false, %entry ], [ %cmp3, %land.rhs ]
  %cond = select i1 %10, i32 0, i32 -1
  %11 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %11) #2
  %12 = bitcast i32* %used to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #2
  %13 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #2
  ret i32 %cond
}

declare i32 @gs_sprintf(i8*, i8*, ...) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare i32 @strcmp(i8*, i8*) #4

declare i32 @spputc(%struct.stream_s*, i8 zeroext) #1

declare i32 @lips_media_selection(i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @sput_lips_int(%struct.stream_s* %s, i32 %param) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %param.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %c = alloca [5 x i8], align 1
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i32 %param, i32* %param.addr, align 4, !tbaa !5
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast [5 x i8]* %c to i8*
  call void @llvm.lifetime.start(i64 5, i8* %1) #2
  %2 = load i32, i32* %param.addr, align 4, !tbaa !5
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %c, i32 0, i32 0
  call void @lips_param(i32 %2, i8* %arraydecay) #5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4, !tbaa !5
  %conv = sext i32 %3 to i64
  %arraydecay1 = getelementptr inbounds [5 x i8], [5 x i8]* %c, i32 0, i32 0
  %call = call i64 @strlen(i8* %arraydecay1) #7
  %cmp = icmp ult i64 %conv, %call
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %4, i32 0, i32 5
  %w = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_write_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 1
  %5 = load i8*, i8** %ptr, align 8, !tbaa !55
  %6 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor3 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %6, i32 0, i32 5
  %w4 = bitcast %union.stream_cursor_s* %cursor3 to %struct.stream_cursor_write_s*
  %limit = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w4, i32 0, i32 2
  %7 = load i8*, i8** %limit, align 8, !tbaa !57
  %cmp5 = icmp uge i8* %5, %7
  br i1 %cmp5, label %cond.false, label %cond.true

cond.true:                                        ; preds = %for.body
  %8 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor7 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %8, i32 0, i32 5
  %w8 = bitcast %union.stream_cursor_s* %cursor7 to %struct.stream_cursor_write_s*
  %ptr9 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w8, i32 0, i32 1
  %9 = load i8*, i8** %ptr9, align 8, !tbaa !55
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %ptr9, align 8, !tbaa !55
  %10 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [5 x i8], [5 x i8]* %c, i32 0, i64 %idxprom
  %11 = load i8, i8* %arrayidx, align 1, !tbaa !58
  %12 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor10 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %12, i32 0, i32 5
  %w11 = bitcast %union.stream_cursor_s* %cursor10 to %struct.stream_cursor_write_s*
  %ptr12 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w11, i32 0, i32 1
  %13 = load i8*, i8** %ptr12, align 8, !tbaa !55
  store i8 %11, i8* %13, align 1, !tbaa !58
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %14 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %15 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom13 = sext i32 %15 to i64
  %arrayidx14 = getelementptr inbounds [5 x i8], [5 x i8]* %c, i32 0, i64 %idxprom13
  %16 = load i8, i8* %arrayidx14, align 1, !tbaa !58
  %call15 = call i32 @spputc(%struct.stream_s* %14, i8 zeroext %16) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call15, %cond.false ]
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %17 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = bitcast [5 x i8]* %c to i8*
  call void @llvm.lifetime.end(i64 5, i8* %18) #2
  %19 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #2
  ret void
}

declare i32 @sputs(%struct.stream_s*, i8*, i32, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @lips_param(i32 %param, i8* %c) #0 {
entry:
  %param.addr = alloca i32, align 4
  %c.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %bSign = alloca i32, align 4
  store i32 %param, i32* %param.addr, align 4, !tbaa !5
  store i8* %c, i8** %c.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %bSign to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  store i32 1, i32* %bSign, align 4, !tbaa !5
  %3 = load i32, i32* %param.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %bSign, align 4, !tbaa !5
  %4 = load i32, i32* %param.addr, align 4, !tbaa !5
  %sub = sub nsw i32 0, %4
  store i32 %sub, i32* %param.addr, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* %param.addr, align 4, !tbaa !5
  %cmp1 = icmp slt i32 %5, 16
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  store i32 1, i32* %i, align 4, !tbaa !5
  br label %if.end.11

if.else:                                          ; preds = %if.end
  %6 = load i32, i32* %param.addr, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %6, 1024
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %if.else
  store i32 2, i32* %i, align 4, !tbaa !5
  br label %if.end.10

if.else.5:                                        ; preds = %if.else
  %7 = load i32, i32* %param.addr, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %7, 65536
  br i1 %cmp6, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %if.else.5
  store i32 3, i32* %i, align 4, !tbaa !5
  br label %if.end.9

if.else.8:                                        ; preds = %if.else.5
  store i32 4, i32* %i, align 4, !tbaa !5
  br label %if.end.9

if.end.9:                                         ; preds = %if.else.8, %if.then.7
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %if.then.4
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.then.2
  %8 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %8 to i64
  %9 = load i8*, i8** %c.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1, !tbaa !58
  %10 = load i32, i32* %param.addr, align 4, !tbaa !5
  %and = and i32 %10, 15
  %or = or i32 %and, 32
  %11 = load i32, i32* %bSign, align 4, !tbaa !5
  %tobool = icmp ne i32 %11, 0
  %cond = select i1 %tobool, i32 16, i32 0
  %or12 = or i32 %or, %cond
  %conv = trunc i32 %or12 to i8
  %12 = load i32, i32* %i, align 4, !tbaa !5
  %sub13 = sub nsw i32 %12, 1
  %idxprom14 = sext i32 %sub13 to i64
  %13 = load i8*, i8** %c.addr, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds i8, i8* %13, i64 %idxprom14
  store i8 %conv, i8* %arrayidx15, align 1, !tbaa !58
  %14 = load i32, i32* %param.addr, align 4, !tbaa !5
  %shr = ashr i32 %14, 4
  store i32 %shr, i32* %param.addr, align 4, !tbaa !5
  %15 = load i32, i32* %i, align 4, !tbaa !5
  %sub16 = sub nsw i32 %15, 2
  store i32 %sub16, i32* %j, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.11
  %16 = load i32, i32* %j, align 4, !tbaa !5
  %cmp17 = icmp sge i32 %16, 0
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %param.addr, align 4, !tbaa !5
  %and19 = and i32 %17, 63
  %or20 = or i32 %and19, 64
  %conv21 = trunc i32 %or20 to i8
  %18 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom22 = sext i32 %18 to i64
  %19 = load i8*, i8** %c.addr, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds i8, i8* %19, i64 %idxprom22
  store i8 %conv21, i8* %arrayidx23, align 1, !tbaa !58
  %20 = load i32, i32* %param.addr, align 4, !tbaa !5
  %shr24 = ashr i32 %20, 6
  store i32 %shr24, i32* %param.addr, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %j, align 4, !tbaa !5
  %dec = add nsw i32 %21, -1
  store i32 %dec, i32* %j, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = bitcast i32* %bSign to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #2
  %23 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #2
  %24 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #2
  ret void
}

declare %struct.stream_s* @gdev_vector_stream(%struct.gx_device_vector_s*) #1

declare void @gdev_vector_reset(%struct.gx_device_vector_s*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @gdev_vector_close_file(%struct.gx_device_vector_s*) #1

declare i32 @gdev_vector_get_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #1

declare i32 @param_write_bool(%struct.gs_param_list_s*, i8*, i32*) #1

declare i32 @param_write_int(%struct.gs_param_list_s*, i8*, i32*) #1

declare i32 @param_write_null(%struct.gs_param_list_s*, i8*) #1

declare i32 @param_write_string(%struct.gs_param_list_s*, i8*, %struct.gs_param_string_s*) #1

declare i32 @param_read_bool(%struct.gs_param_list_s*, i8*, i32*) #1

declare i32 @param_read_int(%struct.gs_param_list_s*, i8*, i32*) #1

declare i32 @param_read_string(%struct.gs_param_list_s*, i8*, %struct.gs_param_string_s*) #1

declare i32 @param_read_null(%struct.gs_param_list_s*, i8*) #1

declare i64 @gx_default_rgb_map_rgb_color(%struct.gx_device_s*, i16*) #1

declare i32 @gx_default_rgb_map_color_rgb(%struct.gx_device_s*, i64, i16*) #1

declare i32 @gdev_vector_put_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #1

declare i32 @bytes_compare(i8*, i32, i8*, i32) #1

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #4

declare i32 @gs_closedevice(%struct.gx_device_s*) #1

; Function Attrs: nounwind uwtable
define internal i32 @lips4v_copy_text_char(%struct.gx_device_s* %dev, i8* %data, i32 %raster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %data.addr = alloca i8*, align 8
  %raster.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %pdev = alloca %struct.gx_device_lips4v_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %width_bytes = alloca i32, align 4
  %size = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %ccode = alloca i32, align 4
  %cset_sub = alloca [9 x i8], align 1
  %cset = alloca [64 x i8], align 16
  %cset_number = alloca [8 x i8], align 1
  %text_color = alloca [15 x i8], align 1
  %cell_length = alloca i32, align 4
  %download = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %tmpid = alloca i64, align 8
  %r = alloca i32, align 4
  %g = alloca i32, align 4
  %b = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !5
  store i64 %id, i64* %id.addr, align 8, !tbaa !68
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_device_lips4v_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_lips4v_s*
  store %struct.gx_device_lips4v_s* %2, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %3 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gx_device_s* %4 to %struct.gx_device_vector_s*
  %call = call %struct.stream_s* @gdev_vector_stream(%struct.gx_device_vector_s* %5) #5
  store %struct.stream_s* %call, %struct.stream_s** %s, align 8, !tbaa !1
  %6 = bitcast i32* %width_bytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add = add nsw i32 %7, 7
  %shr = ashr i32 %add, 3
  store i32 %shr, i32* %width_bytes, align 4, !tbaa !5
  %8 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = load i32, i32* %width_bytes, align 4, !tbaa !5
  %10 = load i32, i32* %h.addr, align 4, !tbaa !5
  %mul = mul i32 %9, %10
  store i32 %mul, i32* %size, align 4, !tbaa !5
  %11 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  %13 = bitcast i32* %ccode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  %14 = bitcast [9 x i8]* %cset_sub to i8*
  call void @llvm.lifetime.start(i64 9, i8* %14) #2
  %15 = bitcast [64 x i8]* %cset to i8*
  call void @llvm.lifetime.start(i64 64, i8* %15) #2
  %16 = bitcast [8 x i8]* %cset_number to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #2
  %17 = bitcast [15 x i8]* %text_color to i8*
  call void @llvm.lifetime.start(i64 15, i8* %17) #2
  %18 = bitcast i32* %cell_length to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #2
  %19 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %19, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %20 = load float, float* %arrayidx, align 4, !tbaa !69
  %conv = fptosi float %20 to i32
  %mul1 = mul nsw i32 18, %conv
  %div = sdiv i32 %mul1, 72
  store i32 %div, i32* %cell_length, align 4, !tbaa !5
  %21 = bitcast i32* %download to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #2
  store i32 1, i32* %download, align 4, !tbaa !5
  %22 = load i32, i32* %w.addr, align 4, !tbaa !5
  %23 = load i32, i32* %cell_length, align 4, !tbaa !5
  %cmp = icmp sgt i32 %22, %23
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %24 = load i32, i32* %h.addr, align 4, !tbaa !5
  %25 = load i32, i32* %cell_length, align 4, !tbaa !5
  %cmp3 = icmp sgt i32 %24, %25
  br i1 %cmp3, label %if.then, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %lor.lhs.false
  %26 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %FontDL = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %26, i32 0, i32 97
  %27 = load i32, i32* %FontDL, align 4, !tbaa !97
  %tobool = icmp ne i32 %27, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false.5, %lor.lhs.false, %entry
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.5
  %28 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %count = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %28, i32 0, i32 99
  %29 = load i32, i32* %count, align 4, !tbaa !147
  %sub = sub nsw i32 %29, 1
  store i32 %sub, i32* %j, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.30, %if.end
  %30 = load i32, i32* %j, align 4, !tbaa !5
  %cmp6 = icmp sge i32 %30, 0
  br i1 %cmp6, label %for.body, label %for.end.31

for.body:                                         ; preds = %for.cond
  %31 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom = sext i32 %31 to i64
  %32 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %id_table = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %32, i32 0, i32 100
  %arrayidx8 = getelementptr inbounds [257 x i64], [257 x i64]* %id_table, i32 0, i64 %idxprom
  %33 = load i64, i64* %arrayidx8, align 8, !tbaa !68
  %34 = load i64, i64* %id.addr, align 8, !tbaa !68
  %cmp9 = icmp eq i64 %33, %34
  br i1 %cmp9, label %if.then.11, label %if.end.29

if.then.11:                                       ; preds = %for.body
  store i32 0, i32* %download, align 4, !tbaa !5
  %35 = load i32, i32* %j, align 4, !tbaa !5
  store i32 %35, i32* %ccode, align 4, !tbaa !5
  %36 = load i32, i32* %j, align 4, !tbaa !5
  store i32 %36, i32* %i, align 4, !tbaa !5
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc, %if.then.11
  %37 = load i32, i32* %i, align 4, !tbaa !5
  %38 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %count13 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %38, i32 0, i32 99
  %39 = load i32, i32* %count13, align 4, !tbaa !147
  %sub14 = sub nsw i32 %39, 1
  %cmp15 = icmp slt i32 %37, %sub14
  br i1 %cmp15, label %for.body.17, label %for.end

for.body.17:                                      ; preds = %for.cond.12
  %40 = load i32, i32* %i, align 4, !tbaa !5
  %add18 = add nsw i32 %40, 1
  %idxprom19 = sext i32 %add18 to i64
  %41 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %id_cache = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %41, i32 0, i32 101
  %arrayidx20 = getelementptr inbounds [257 x i64], [257 x i64]* %id_cache, i32 0, i64 %idxprom19
  %42 = load i64, i64* %arrayidx20, align 8, !tbaa !68
  %43 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom21 = sext i32 %43 to i64
  %44 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %id_cache22 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %44, i32 0, i32 101
  %arrayidx23 = getelementptr inbounds [257 x i64], [257 x i64]* %id_cache22, i32 0, i64 %idxprom21
  store i64 %42, i64* %arrayidx23, align 8, !tbaa !68
  br label %for.inc

for.inc:                                          ; preds = %for.body.17
  %45 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %45, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond.12

for.end:                                          ; preds = %for.cond.12
  %46 = load i64, i64* %id.addr, align 8, !tbaa !68
  %47 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %count24 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %47, i32 0, i32 99
  %48 = load i32, i32* %count24, align 4, !tbaa !147
  %sub25 = sub nsw i32 %48, 1
  %idxprom26 = sext i32 %sub25 to i64
  %49 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %id_cache27 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %49, i32 0, i32 101
  %arrayidx28 = getelementptr inbounds [257 x i64], [257 x i64]* %id_cache27, i32 0, i64 %idxprom26
  store i64 %46, i64* %arrayidx28, align 8, !tbaa !68
  br label %for.end.31

if.end.29:                                        ; preds = %for.body
  br label %for.inc.30

for.inc.30:                                       ; preds = %if.end.29
  %50 = load i32, i32* %j, align 4, !tbaa !5
  %dec = add nsw i32 %50, -1
  store i32 %dec, i32* %j, align 4, !tbaa !5
  br label %for.cond

for.end.31:                                       ; preds = %for.end, %for.cond
  %51 = load i32, i32* %download, align 4, !tbaa !5
  %tobool32 = icmp ne i32 %51, 0
  br i1 %tobool32, label %if.then.33, label %if.end.83

if.then.33:                                       ; preds = %for.end.31
  %52 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %count34 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %52, i32 0, i32 99
  %53 = load i32, i32* %count34, align 4, !tbaa !147
  %cmp35 = icmp sgt i32 %53, 255
  br i1 %cmp35, label %if.then.37, label %if.else

if.then.37:                                       ; preds = %if.then.33
  %54 = bitcast i64* %tmpid to i8*
  call void @llvm.lifetime.start(i64 8, i8* %54) #2
  %55 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %id_cache38 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %55, i32 0, i32 101
  %arrayidx39 = getelementptr inbounds [257 x i64], [257 x i64]* %id_cache38, i32 0, i64 0
  %56 = load i64, i64* %arrayidx39, align 8, !tbaa !68
  store i64 %56, i64* %tmpid, align 8, !tbaa !68
  %57 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %count40 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %57, i32 0, i32 99
  %58 = load i32, i32* %count40, align 4, !tbaa !147
  %sub41 = sub nsw i32 %58, 1
  store i32 %sub41, i32* %j, align 4, !tbaa !5
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc.53, %if.then.37
  %59 = load i32, i32* %j, align 4, !tbaa !5
  %cmp43 = icmp sge i32 %59, 0
  br i1 %cmp43, label %for.body.45, label %for.end.55

for.body.45:                                      ; preds = %for.cond.42
  %60 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom46 = sext i32 %60 to i64
  %61 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %id_table47 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %61, i32 0, i32 100
  %arrayidx48 = getelementptr inbounds [257 x i64], [257 x i64]* %id_table47, i32 0, i64 %idxprom46
  %62 = load i64, i64* %arrayidx48, align 8, !tbaa !68
  %63 = load i64, i64* %tmpid, align 8, !tbaa !68
  %cmp49 = icmp eq i64 %62, %63
  br i1 %cmp49, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %for.body.45
  %64 = load i32, i32* %j, align 4, !tbaa !5
  store i32 %64, i32* %ccode, align 4, !tbaa !5
  br label %for.end.55

if.end.52:                                        ; preds = %for.body.45
  br label %for.inc.53

for.inc.53:                                       ; preds = %if.end.52
  %65 = load i32, i32* %j, align 4, !tbaa !5
  %dec54 = add nsw i32 %65, -1
  store i32 %dec54, i32* %j, align 4, !tbaa !5
  br label %for.cond.42

for.end.55:                                       ; preds = %if.then.51, %for.cond.42
  %66 = load i32, i32* %j, align 4, !tbaa !5
  store i32 %66, i32* %i, align 4, !tbaa !5
  br label %for.cond.56

for.cond.56:                                      ; preds = %for.inc.69, %for.end.55
  %67 = load i32, i32* %i, align 4, !tbaa !5
  %68 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %count57 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %68, i32 0, i32 99
  %69 = load i32, i32* %count57, align 4, !tbaa !147
  %sub58 = sub nsw i32 %69, 1
  %cmp59 = icmp slt i32 %67, %sub58
  br i1 %cmp59, label %for.body.61, label %for.end.71

for.body.61:                                      ; preds = %for.cond.56
  %70 = load i32, i32* %i, align 4, !tbaa !5
  %add62 = add nsw i32 %70, 1
  %idxprom63 = sext i32 %add62 to i64
  %71 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %id_cache64 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %71, i32 0, i32 101
  %arrayidx65 = getelementptr inbounds [257 x i64], [257 x i64]* %id_cache64, i32 0, i64 %idxprom63
  %72 = load i64, i64* %arrayidx65, align 8, !tbaa !68
  %73 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom66 = sext i32 %73 to i64
  %74 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %id_cache67 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %74, i32 0, i32 101
  %arrayidx68 = getelementptr inbounds [257 x i64], [257 x i64]* %id_cache67, i32 0, i64 %idxprom66
  store i64 %72, i64* %arrayidx68, align 8, !tbaa !68
  br label %for.inc.69

for.inc.69:                                       ; preds = %for.body.61
  %75 = load i32, i32* %i, align 4, !tbaa !5
  %inc70 = add nsw i32 %75, 1
  store i32 %inc70, i32* %i, align 4, !tbaa !5
  br label %for.cond.56

for.end.71:                                       ; preds = %for.cond.56
  %76 = load i64, i64* %tmpid, align 8, !tbaa !68
  %77 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %count72 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %77, i32 0, i32 99
  %78 = load i32, i32* %count72, align 4, !tbaa !147
  %sub73 = sub nsw i32 %78, 1
  %idxprom74 = sext i32 %sub73 to i64
  %79 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %id_cache75 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %79, i32 0, i32 101
  %arrayidx76 = getelementptr inbounds [257 x i64], [257 x i64]* %id_cache75, i32 0, i64 %idxprom74
  store i64 %76, i64* %arrayidx76, align 8, !tbaa !68
  %80 = bitcast i64* %tmpid to i8*
  call void @llvm.lifetime.end(i64 8, i8* %80) #2
  br label %if.end.82

if.else:                                          ; preds = %if.then.33
  %81 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %count77 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %81, i32 0, i32 99
  %82 = load i32, i32* %count77, align 4, !tbaa !147
  store i32 %82, i32* %ccode, align 4, !tbaa !5
  %83 = load i64, i64* %id.addr, align 8, !tbaa !68
  %84 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %count78 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %84, i32 0, i32 99
  %85 = load i32, i32* %count78, align 4, !tbaa !147
  %idxprom79 = sext i32 %85 to i64
  %86 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %id_cache80 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %86, i32 0, i32 101
  %arrayidx81 = getelementptr inbounds [257 x i64], [257 x i64]* %id_cache80, i32 0, i64 %idxprom79
  store i64 %83, i64* %arrayidx81, align 8, !tbaa !68
  br label %if.end.82

if.end.82:                                        ; preds = %if.else, %for.end.71
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %for.end.31
  %87 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %TextMode = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %87, i32 0, i32 91
  %88 = load i32, i32* %TextMode, align 4, !tbaa !54
  %cmp84 = icmp eq i32 %88, 0
  br i1 %cmp84, label %if.then.86, label %if.else.101

if.then.86:                                       ; preds = %if.end.83
  %89 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call87 = call i32 @lputs(%struct.stream_s* %89, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.82, i32 0, i32 0)) #5
  %90 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %91 = load i32, i32* %x.addr, align 4, !tbaa !5
  call void @sput_lips_int(%struct.stream_s* %90, i32 %91) #5
  %92 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %93 = load i32, i32* %y.addr, align 4, !tbaa !5
  call void @sput_lips_int(%struct.stream_s* %92, i32 %93) #5
  %94 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %94, i32 0, i32 5
  %w88 = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_write_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w88, i32 0, i32 1
  %95 = load i8*, i8** %ptr, align 8, !tbaa !55
  %96 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor89 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %96, i32 0, i32 5
  %w90 = bitcast %union.stream_cursor_s* %cursor89 to %struct.stream_cursor_write_s*
  %limit = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w90, i32 0, i32 2
  %97 = load i8*, i8** %limit, align 8, !tbaa !57
  %cmp91 = icmp uge i8* %95, %97
  br i1 %cmp91, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then.86
  %98 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor93 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %98, i32 0, i32 5
  %w94 = bitcast %union.stream_cursor_s* %cursor93 to %struct.stream_cursor_write_s*
  %ptr95 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w94, i32 0, i32 1
  %99 = load i8*, i8** %ptr95, align 8, !tbaa !55
  %incdec.ptr = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %incdec.ptr, i8** %ptr95, align 8, !tbaa !55
  %100 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor96 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %100, i32 0, i32 5
  %w97 = bitcast %union.stream_cursor_s* %cursor96 to %struct.stream_cursor_write_s*
  %ptr98 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w97, i32 0, i32 1
  %101 = load i8*, i8** %ptr98, align 8, !tbaa !55
  store i8 30, i8* %101, align 1, !tbaa !58
  br label %cond.end

cond.false:                                       ; preds = %if.then.86
  %102 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call99 = call i32 @spputc(%struct.stream_s* %102, i8 zeroext 30) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call99, %cond.false ]
  %103 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %TextMode100 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %103, i32 0, i32 91
  store i32 1, i32* %TextMode100, align 4, !tbaa !54
  %104 = load i32, i32* %x.addr, align 4, !tbaa !5
  %105 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %prev_x = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %105, i32 0, i32 92
  store i32 %104, i32* %prev_x, align 4, !tbaa !148
  %106 = load i32, i32* %y.addr, align 4, !tbaa !5
  %107 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %prev_y = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %107, i32 0, i32 93
  store i32 %106, i32* %prev_y, align 4, !tbaa !149
  br label %if.end.102

if.else.101:                                      ; preds = %if.end.83
  %108 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %109 = load i32, i32* %x.addr, align 4, !tbaa !5
  %110 = load i32, i32* %y.addr, align 4, !tbaa !5
  call void @lips4v_set_cap(%struct.gx_device_s* %108, i32 %109, i32 %110) #5
  br label %if.end.102

if.end.102:                                       ; preds = %if.else.101, %cond.end
  %111 = load i32, i32* %download, align 4, !tbaa !5
  %tobool103 = icmp ne i32 %111, 0
  br i1 %tobool103, label %if.then.104, label %if.end.167

if.then.104:                                      ; preds = %if.end.102
  %112 = load i32, i32* %ccode, align 4, !tbaa !5
  %rem = urem i32 %112, 128
  %cmp105 = icmp eq i32 %rem, 0
  br i1 %cmp105, label %land.lhs.true, label %if.else.123

land.lhs.true:                                    ; preds = %if.then.104
  %113 = load i32, i32* %ccode, align 4, !tbaa !5
  %114 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %count107 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %114, i32 0, i32 99
  %115 = load i32, i32* %count107, align 4, !tbaa !147
  %cmp108 = icmp eq i32 %113, %115
  br i1 %cmp108, label %if.then.110, label %if.else.123

if.then.110:                                      ; preds = %land.lhs.true
  %arraydecay = getelementptr inbounds [9 x i8], [9 x i8]* %cset_sub, i32 0, i32 0
  %116 = load i32, i32* %ccode, align 4, !tbaa !5
  %div111 = udiv i32 %116, 128
  %call112 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.105, i32 0, i32 0), i32 144, i32 %div111, i32 156) #5
  %117 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %arraydecay113 = getelementptr inbounds [9 x i8], [9 x i8]* %cset_sub, i32 0, i32 0
  %call114 = call i32 @lputs(%struct.stream_s* %117, i8* %arraydecay113) #5
  %arraydecay115 = getelementptr inbounds [64 x i8], [64 x i8]* %cset, i32 0, i32 0
  %118 = load i32, i32* %size, align 4, !tbaa !5
  %add116 = add i32 %118, 9
  %119 = load i32, i32* %cell_length, align 4, !tbaa !5
  %120 = load i32, i32* %cell_length, align 4, !tbaa !5
  %121 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %HWResolution117 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %121, i32 0, i32 22
  %arrayidx118 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution117, i32 0, i64 0
  %122 = load float, float* %arrayidx118, align 4, !tbaa !69
  %conv119 = fptosi float %122 to i32
  %call120 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay115, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.106, i32 0, i32 0), i32 155, i32 %add116, i32 %119, i32 %120, i32 %conv119) #5
  %123 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %arraydecay121 = getelementptr inbounds [64 x i8], [64 x i8]* %cset, i32 0, i32 0
  %call122 = call i32 @lputs(%struct.stream_s* %123, i8* %arraydecay121) #5
  br label %if.end.133

if.else.123:                                      ; preds = %land.lhs.true, %if.then.104
  %arraydecay124 = getelementptr inbounds [64 x i8], [64 x i8]* %cset, i32 0, i32 0
  %124 = load i32, i32* %size, align 4, !tbaa !5
  %add125 = add i32 %124, 9
  %125 = load i32, i32* %ccode, align 4, !tbaa !5
  %div126 = udiv i32 %125, 128
  %126 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %HWResolution127 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %126, i32 0, i32 22
  %arrayidx128 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution127, i32 0, i64 0
  %127 = load float, float* %arrayidx128, align 4, !tbaa !69
  %conv129 = fptosi float %127 to i32
  %call130 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay124, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.107, i32 0, i32 0), i32 155, i32 %add125, i32 %div126, i32 %conv129) #5
  %128 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %arraydecay131 = getelementptr inbounds [64 x i8], [64 x i8]* %cset, i32 0, i32 0
  %call132 = call i32 @lputs(%struct.stream_s* %128, i8* %arraydecay131) #5
  br label %if.end.133

if.end.133:                                       ; preds = %if.else.123, %if.then.110
  %129 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor134 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %129, i32 0, i32 5
  %w135 = bitcast %union.stream_cursor_s* %cursor134 to %struct.stream_cursor_write_s*
  %ptr136 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w135, i32 0, i32 1
  %130 = load i8*, i8** %ptr136, align 8, !tbaa !55
  %131 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor137 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %131, i32 0, i32 5
  %w138 = bitcast %union.stream_cursor_s* %cursor137 to %struct.stream_cursor_write_s*
  %limit139 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w138, i32 0, i32 2
  %132 = load i8*, i8** %limit139, align 8, !tbaa !57
  %cmp140 = icmp uge i8* %130, %132
  br i1 %cmp140, label %cond.false.152, label %cond.true.142

cond.true.142:                                    ; preds = %if.end.133
  %133 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor143 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %133, i32 0, i32 5
  %w144 = bitcast %union.stream_cursor_s* %cursor143 to %struct.stream_cursor_write_s*
  %ptr145 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w144, i32 0, i32 1
  %134 = load i8*, i8** %ptr145, align 8, !tbaa !55
  %incdec.ptr146 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %incdec.ptr146, i8** %ptr145, align 8, !tbaa !55
  %135 = load i32, i32* %ccode, align 4, !tbaa !5
  %rem147 = urem i32 %135, 128
  %conv148 = trunc i32 %rem147 to i8
  %136 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor149 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %136, i32 0, i32 5
  %w150 = bitcast %union.stream_cursor_s* %cursor149 to %struct.stream_cursor_write_s*
  %ptr151 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w150, i32 0, i32 1
  %137 = load i8*, i8** %ptr151, align 8, !tbaa !55
  store i8 %conv148, i8* %137, align 1, !tbaa !58
  br label %cond.end.156

cond.false.152:                                   ; preds = %if.end.133
  %138 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %139 = load i32, i32* %ccode, align 4, !tbaa !5
  %rem153 = urem i32 %139, 128
  %conv154 = trunc i32 %rem153 to i8
  %call155 = call i32 @spputc(%struct.stream_s* %138, i8 zeroext %conv154) #5
  br label %cond.end.156

cond.end.156:                                     ; preds = %cond.false.152, %cond.true.142
  %cond157 = phi i32 [ 0, %cond.true.142 ], [ %call155, %cond.false.152 ]
  %140 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %141 = load i32, i32* %w.addr, align 4, !tbaa !5
  call void @put_int(%struct.stream_s* %140, i32 %141) #5
  %142 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @put_int(%struct.stream_s* %142, i32 0) #5
  %143 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %144 = load i32, i32* %h.addr, align 4, !tbaa !5
  call void @put_int(%struct.stream_s* %143, i32 %144) #5
  %145 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @put_int(%struct.stream_s* %145, i32 0) #5
  %146 = load i32, i32* %h.addr, align 4, !tbaa !5
  %sub158 = sub nsw i32 %146, 1
  store i32 %sub158, i32* %i, align 4, !tbaa !5
  br label %for.cond.159

for.cond.159:                                     ; preds = %for.inc.164, %cond.end.156
  %147 = load i32, i32* %i, align 4, !tbaa !5
  %cmp160 = icmp sge i32 %147, 0
  br i1 %cmp160, label %for.body.162, label %for.end.166

for.body.162:                                     ; preds = %for.cond.159
  %148 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %149 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %150 = load i32, i32* %i, align 4, !tbaa !5
  %151 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %mul163 = mul nsw i32 %150, %151
  %idx.ext = sext i32 %mul163 to i64
  %add.ptr = getelementptr inbounds i8, i8* %149, i64 %idx.ext
  %152 = load i32, i32* %width_bytes, align 4, !tbaa !5
  call void @put_bytes(%struct.stream_s* %148, i8* %add.ptr, i32 %152) #5
  br label %for.inc.164

for.inc.164:                                      ; preds = %for.body.162
  %153 = load i32, i32* %i, align 4, !tbaa !5
  %dec165 = add nsw i32 %153, -1
  store i32 %dec165, i32* %i, align 4, !tbaa !5
  br label %for.cond.159

for.end.166:                                      ; preds = %for.cond.159
  br label %if.end.167

if.end.167:                                       ; preds = %for.end.166, %if.end.102
  %154 = load i32, i32* %download, align 4, !tbaa !5
  %tobool168 = icmp ne i32 %154, 0
  br i1 %tobool168, label %if.then.169, label %if.else.182

if.then.169:                                      ; preds = %if.end.167
  %155 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %current_font = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %155, i32 0, i32 98
  %156 = load i32, i32* %current_font, align 4, !tbaa !150
  %157 = load i32, i32* %ccode, align 4, !tbaa !5
  %div170 = udiv i32 %157, 128
  %cmp171 = icmp ne i32 %156, %div170
  br i1 %cmp171, label %if.then.173, label %if.end.181

if.then.173:                                      ; preds = %if.then.169
  %arraydecay174 = getelementptr inbounds [8 x i8], [8 x i8]* %cset_number, i32 0, i32 0
  %158 = load i32, i32* %ccode, align 4, !tbaa !5
  %div175 = udiv i32 %158, 128
  %call176 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay174, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.108, i32 0, i32 0), i32 155, i32 %div175) #5
  %159 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %arraydecay177 = getelementptr inbounds [8 x i8], [8 x i8]* %cset_number, i32 0, i32 0
  %call178 = call i32 @lputs(%struct.stream_s* %159, i8* %arraydecay177) #5
  %160 = load i32, i32* %ccode, align 4, !tbaa !5
  %div179 = udiv i32 %160, 128
  %161 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %current_font180 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %161, i32 0, i32 98
  store i32 %div179, i32* %current_font180, align 4, !tbaa !150
  br label %if.end.181

if.end.181:                                       ; preds = %if.then.173, %if.then.169
  br label %if.end.196

if.else.182:                                      ; preds = %if.end.167
  %162 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %current_font183 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %162, i32 0, i32 98
  %163 = load i32, i32* %current_font183, align 4, !tbaa !150
  %164 = load i32, i32* %ccode, align 4, !tbaa !5
  %div184 = udiv i32 %164, 128
  %cmp185 = icmp ne i32 %163, %div184
  br i1 %cmp185, label %if.then.187, label %if.end.195

if.then.187:                                      ; preds = %if.else.182
  %arraydecay188 = getelementptr inbounds [8 x i8], [8 x i8]* %cset_number, i32 0, i32 0
  %165 = load i32, i32* %ccode, align 4, !tbaa !5
  %div189 = udiv i32 %165, 128
  %call190 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay188, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.108, i32 0, i32 0), i32 155, i32 %div189) #5
  %166 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %arraydecay191 = getelementptr inbounds [8 x i8], [8 x i8]* %cset_number, i32 0, i32 0
  %call192 = call i32 @lputs(%struct.stream_s* %166, i8* %arraydecay191) #5
  %167 = load i32, i32* %ccode, align 4, !tbaa !5
  %div193 = udiv i32 %167, 128
  %168 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %current_font194 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %168, i32 0, i32 98
  store i32 %div193, i32* %current_font194, align 4, !tbaa !150
  br label %if.end.195

if.end.195:                                       ; preds = %if.then.187, %if.else.182
  br label %if.end.196

if.end.196:                                       ; preds = %if.end.195, %if.end.181
  %169 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %current_color = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %169, i32 0, i32 95
  %170 = load i64, i64* %current_color, align 8, !tbaa !146
  %171 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %prev_color = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %171, i32 0, i32 94
  %172 = load i64, i64* %prev_color, align 8, !tbaa !151
  %cmp197 = icmp ne i64 %170, %172
  br i1 %cmp197, label %if.then.199, label %if.end.280

if.then.199:                                      ; preds = %if.end.196
  %173 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %173, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %174 = load i16, i16* %depth, align 2, !tbaa !75
  %conv200 = zext i16 %174 to i32
  %cmp201 = icmp eq i32 %conv200, 8
  br i1 %cmp201, label %if.then.203, label %if.else.232

if.then.203:                                      ; preds = %if.then.199
  %175 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor204 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %175, i32 0, i32 5
  %w205 = bitcast %union.stream_cursor_s* %cursor204 to %struct.stream_cursor_write_s*
  %ptr206 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w205, i32 0, i32 1
  %176 = load i8*, i8** %ptr206, align 8, !tbaa !55
  %177 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor207 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %177, i32 0, i32 5
  %w208 = bitcast %union.stream_cursor_s* %cursor207 to %struct.stream_cursor_write_s*
  %limit209 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w208, i32 0, i32 2
  %178 = load i8*, i8** %limit209, align 8, !tbaa !57
  %cmp210 = icmp uge i8* %176, %178
  br i1 %cmp210, label %cond.false.220, label %cond.true.212

cond.true.212:                                    ; preds = %if.then.203
  %179 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor213 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %179, i32 0, i32 5
  %w214 = bitcast %union.stream_cursor_s* %cursor213 to %struct.stream_cursor_write_s*
  %ptr215 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w214, i32 0, i32 1
  %180 = load i8*, i8** %ptr215, align 8, !tbaa !55
  %incdec.ptr216 = getelementptr inbounds i8, i8* %180, i32 1
  store i8* %incdec.ptr216, i8** %ptr215, align 8, !tbaa !55
  %181 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor217 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %181, i32 0, i32 5
  %w218 = bitcast %union.stream_cursor_s* %cursor217 to %struct.stream_cursor_write_s*
  %ptr219 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w218, i32 0, i32 1
  %182 = load i8*, i8** %ptr219, align 8, !tbaa !55
  store i8 -101, i8* %182, align 1, !tbaa !58
  br label %cond.end.222

cond.false.220:                                   ; preds = %if.then.203
  %183 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call221 = call i32 @spputc(%struct.stream_s* %183, i8 zeroext -101) #5
  br label %cond.end.222

cond.end.222:                                     ; preds = %cond.false.220, %cond.true.212
  %cond223 = phi i32 [ 0, %cond.true.212 ], [ %call221, %cond.false.220 ]
  %184 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call224 = call i32 @lputs(%struct.stream_s* %184, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.109, i32 0, i32 0)) #5
  %arraydecay225 = getelementptr inbounds [15 x i8], [15 x i8]* %text_color, i32 0, i32 0
  %185 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %color_info226 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %185, i32 0, i32 11
  %max_gray = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info226, i32 0, i32 5
  %186 = load i32, i32* %max_gray, align 4, !tbaa !152
  %conv227 = zext i32 %186 to i64
  %187 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %current_color228 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %187, i32 0, i32 95
  %188 = load i64, i64* %current_color228, align 8, !tbaa !146
  %sub229 = sub i64 %conv227, %188
  %conv230 = trunc i64 %sub229 to i32
  %call231 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay225, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i32 %conv230) #5
  br label %if.end.274

if.else.232:                                      ; preds = %if.then.199
  %189 = bitcast i32* %r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %189) #2
  %190 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %current_color233 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %190, i32 0, i32 95
  %191 = load i64, i64* %current_color233, align 8, !tbaa !146
  %shr234 = lshr i64 %191, 16
  %conv235 = uitofp i64 %shr234 to double
  %mul236 = fmul double %conv235, 1.000000e+03
  %div237 = fdiv double %mul236, 2.550000e+02
  %conv238 = fptosi double %div237 to i32
  store i32 %conv238, i32* %r, align 4, !tbaa !5
  %192 = bitcast i32* %g to i8*
  call void @llvm.lifetime.start(i64 4, i8* %192) #2
  %193 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %current_color239 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %193, i32 0, i32 95
  %194 = load i64, i64* %current_color239, align 8, !tbaa !146
  %shr240 = lshr i64 %194, 8
  %and = and i64 %shr240, 255
  %conv241 = uitofp i64 %and to double
  %mul242 = fmul double %conv241, 1.000000e+03
  %div243 = fdiv double %mul242, 2.550000e+02
  %conv244 = fptosi double %div243 to i32
  store i32 %conv244, i32* %g, align 4, !tbaa !5
  %195 = bitcast i32* %b to i8*
  call void @llvm.lifetime.start(i64 4, i8* %195) #2
  %196 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %current_color245 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %196, i32 0, i32 95
  %197 = load i64, i64* %current_color245, align 8, !tbaa !146
  %and246 = and i64 %197, 255
  %conv247 = uitofp i64 %and246 to double
  %mul248 = fmul double %conv247, 1.000000e+03
  %div249 = fdiv double %mul248, 2.550000e+02
  %conv250 = fptosi double %div249 to i32
  store i32 %conv250, i32* %b, align 4, !tbaa !5
  %198 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor251 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %198, i32 0, i32 5
  %w252 = bitcast %union.stream_cursor_s* %cursor251 to %struct.stream_cursor_write_s*
  %ptr253 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w252, i32 0, i32 1
  %199 = load i8*, i8** %ptr253, align 8, !tbaa !55
  %200 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor254 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %200, i32 0, i32 5
  %w255 = bitcast %union.stream_cursor_s* %cursor254 to %struct.stream_cursor_write_s*
  %limit256 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w255, i32 0, i32 2
  %201 = load i8*, i8** %limit256, align 8, !tbaa !57
  %cmp257 = icmp uge i8* %199, %201
  br i1 %cmp257, label %cond.false.267, label %cond.true.259

cond.true.259:                                    ; preds = %if.else.232
  %202 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor260 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %202, i32 0, i32 5
  %w261 = bitcast %union.stream_cursor_s* %cursor260 to %struct.stream_cursor_write_s*
  %ptr262 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w261, i32 0, i32 1
  %203 = load i8*, i8** %ptr262, align 8, !tbaa !55
  %incdec.ptr263 = getelementptr inbounds i8, i8* %203, i32 1
  store i8* %incdec.ptr263, i8** %ptr262, align 8, !tbaa !55
  %204 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor264 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %204, i32 0, i32 5
  %w265 = bitcast %union.stream_cursor_s* %cursor264 to %struct.stream_cursor_write_s*
  %ptr266 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w265, i32 0, i32 1
  %205 = load i8*, i8** %ptr266, align 8, !tbaa !55
  store i8 -101, i8* %205, align 1, !tbaa !58
  br label %cond.end.269

cond.false.267:                                   ; preds = %if.else.232
  %206 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call268 = call i32 @spputc(%struct.stream_s* %206, i8 zeroext -101) #5
  br label %cond.end.269

cond.end.269:                                     ; preds = %cond.false.267, %cond.true.259
  %cond270 = phi i32 [ 0, %cond.true.259 ], [ %call268, %cond.false.267 ]
  %207 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call271 = call i32 @lputs(%struct.stream_s* %207, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.110, i32 0, i32 0)) #5
  %arraydecay272 = getelementptr inbounds [15 x i8], [15 x i8]* %text_color, i32 0, i32 0
  %208 = load i32, i32* %r, align 4, !tbaa !5
  %209 = load i32, i32* %g, align 4, !tbaa !5
  %210 = load i32, i32* %b, align 4, !tbaa !5
  %call273 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay272, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.111, i32 0, i32 0), i32 %208, i32 %209, i32 %210) #5
  %211 = bitcast i32* %b to i8*
  call void @llvm.lifetime.end(i64 4, i8* %211) #2
  %212 = bitcast i32* %g to i8*
  call void @llvm.lifetime.end(i64 4, i8* %212) #2
  %213 = bitcast i32* %r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %213) #2
  br label %if.end.274

if.end.274:                                       ; preds = %cond.end.269, %cond.end.222
  %214 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %arraydecay275 = getelementptr inbounds [15 x i8], [15 x i8]* %text_color, i32 0, i32 0
  %call276 = call i32 @lputs(%struct.stream_s* %214, i8* %arraydecay275) #5
  %215 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call277 = call i32 @lputs(%struct.stream_s* %215, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.112, i32 0, i32 0)) #5
  %216 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %current_color278 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %216, i32 0, i32 95
  %217 = load i64, i64* %current_color278, align 8, !tbaa !146
  %218 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %prev_color279 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %218, i32 0, i32 94
  store i64 %217, i64* %prev_color279, align 8, !tbaa !151
  br label %if.end.280

if.end.280:                                       ; preds = %if.end.274, %if.end.196
  %219 = load i32, i32* %ccode, align 4, !tbaa !5
  %rem281 = urem i32 %219, 128
  %cmp282 = icmp eq i32 %rem281, 0
  br i1 %cmp282, label %if.then.296, label %lor.lhs.false.284

lor.lhs.false.284:                                ; preds = %if.end.280
  %220 = load i32, i32* %ccode, align 4, !tbaa !5
  %rem285 = urem i32 %220, 128
  %cmp286 = icmp uge i32 %rem285, 7
  br i1 %cmp286, label %land.lhs.true.288, label %lor.lhs.false.292

land.lhs.true.288:                                ; preds = %lor.lhs.false.284
  %221 = load i32, i32* %ccode, align 4, !tbaa !5
  %rem289 = urem i32 %221, 128
  %cmp290 = icmp ule i32 %rem289, 15
  br i1 %cmp290, label %if.then.296, label %lor.lhs.false.292

lor.lhs.false.292:                                ; preds = %land.lhs.true.288, %lor.lhs.false.284
  %222 = load i32, i32* %ccode, align 4, !tbaa !5
  %rem293 = urem i32 %222, 128
  %cmp294 = icmp eq i32 %rem293, 27
  br i1 %cmp294, label %if.then.296, label %if.end.318

if.then.296:                                      ; preds = %lor.lhs.false.292, %land.lhs.true.288, %if.end.280
  %223 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor297 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %223, i32 0, i32 5
  %w298 = bitcast %union.stream_cursor_s* %cursor297 to %struct.stream_cursor_write_s*
  %ptr299 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w298, i32 0, i32 1
  %224 = load i8*, i8** %ptr299, align 8, !tbaa !55
  %225 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor300 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %225, i32 0, i32 5
  %w301 = bitcast %union.stream_cursor_s* %cursor300 to %struct.stream_cursor_write_s*
  %limit302 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w301, i32 0, i32 2
  %226 = load i8*, i8** %limit302, align 8, !tbaa !57
  %cmp303 = icmp uge i8* %224, %226
  br i1 %cmp303, label %cond.false.313, label %cond.true.305

cond.true.305:                                    ; preds = %if.then.296
  %227 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor306 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %227, i32 0, i32 5
  %w307 = bitcast %union.stream_cursor_s* %cursor306 to %struct.stream_cursor_write_s*
  %ptr308 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w307, i32 0, i32 1
  %228 = load i8*, i8** %ptr308, align 8, !tbaa !55
  %incdec.ptr309 = getelementptr inbounds i8, i8* %228, i32 1
  store i8* %incdec.ptr309, i8** %ptr308, align 8, !tbaa !55
  %229 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor310 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %229, i32 0, i32 5
  %w311 = bitcast %union.stream_cursor_s* %cursor310 to %struct.stream_cursor_write_s*
  %ptr312 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w311, i32 0, i32 1
  %230 = load i8*, i8** %ptr312, align 8, !tbaa !55
  store i8 -101, i8* %230, align 1, !tbaa !58
  br label %cond.end.315

cond.false.313:                                   ; preds = %if.then.296
  %231 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call314 = call i32 @spputc(%struct.stream_s* %231, i8 zeroext -101) #5
  br label %cond.end.315

cond.end.315:                                     ; preds = %cond.false.313, %cond.true.305
  %cond316 = phi i32 [ 0, %cond.true.305 ], [ %call314, %cond.false.313 ]
  %232 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call317 = call i32 @lputs(%struct.stream_s* %232, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.113, i32 0, i32 0)) #5
  br label %if.end.318

if.end.318:                                       ; preds = %cond.end.315, %lor.lhs.false.292
  %233 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor319 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %233, i32 0, i32 5
  %w320 = bitcast %union.stream_cursor_s* %cursor319 to %struct.stream_cursor_write_s*
  %ptr321 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w320, i32 0, i32 1
  %234 = load i8*, i8** %ptr321, align 8, !tbaa !55
  %235 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor322 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %235, i32 0, i32 5
  %w323 = bitcast %union.stream_cursor_s* %cursor322 to %struct.stream_cursor_write_s*
  %limit324 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w323, i32 0, i32 2
  %236 = load i8*, i8** %limit324, align 8, !tbaa !57
  %cmp325 = icmp uge i8* %234, %236
  br i1 %cmp325, label %cond.false.337, label %cond.true.327

cond.true.327:                                    ; preds = %if.end.318
  %237 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor328 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %237, i32 0, i32 5
  %w329 = bitcast %union.stream_cursor_s* %cursor328 to %struct.stream_cursor_write_s*
  %ptr330 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w329, i32 0, i32 1
  %238 = load i8*, i8** %ptr330, align 8, !tbaa !55
  %incdec.ptr331 = getelementptr inbounds i8, i8* %238, i32 1
  store i8* %incdec.ptr331, i8** %ptr330, align 8, !tbaa !55
  %239 = load i32, i32* %ccode, align 4, !tbaa !5
  %rem332 = urem i32 %239, 128
  %conv333 = trunc i32 %rem332 to i8
  %240 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor334 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %240, i32 0, i32 5
  %w335 = bitcast %union.stream_cursor_s* %cursor334 to %struct.stream_cursor_write_s*
  %ptr336 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w335, i32 0, i32 1
  %241 = load i8*, i8** %ptr336, align 8, !tbaa !55
  store i8 %conv333, i8* %241, align 1, !tbaa !58
  br label %cond.end.341

cond.false.337:                                   ; preds = %if.end.318
  %242 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %243 = load i32, i32* %ccode, align 4, !tbaa !5
  %rem338 = urem i32 %243, 128
  %conv339 = trunc i32 %rem338 to i8
  %call340 = call i32 @spputc(%struct.stream_s* %242, i8 zeroext %conv339) #5
  br label %cond.end.341

cond.end.341:                                     ; preds = %cond.false.337, %cond.true.327
  %cond342 = phi i32 [ 0, %cond.true.327 ], [ %call340, %cond.false.337 ]
  %244 = load i32, i32* %download, align 4, !tbaa !5
  %tobool343 = icmp ne i32 %244, 0
  br i1 %tobool343, label %if.then.344, label %if.end.355

if.then.344:                                      ; preds = %cond.end.341
  %245 = load i64, i64* %id.addr, align 8, !tbaa !68
  %246 = load i32, i32* %ccode, align 4, !tbaa !5
  %idxprom345 = zext i32 %246 to i64
  %247 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %id_table346 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %247, i32 0, i32 100
  %arrayidx347 = getelementptr inbounds [257 x i64], [257 x i64]* %id_table346, i32 0, i64 %idxprom345
  store i64 %245, i64* %arrayidx347, align 8, !tbaa !68
  %248 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %count348 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %248, i32 0, i32 99
  %249 = load i32, i32* %count348, align 4, !tbaa !147
  %cmp349 = icmp slt i32 %249, 255
  br i1 %cmp349, label %if.then.351, label %if.end.354

if.then.351:                                      ; preds = %if.then.344
  %250 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %count352 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %250, i32 0, i32 99
  %251 = load i32, i32* %count352, align 4, !tbaa !147
  %inc353 = add nsw i32 %251, 1
  store i32 %inc353, i32* %count352, align 4, !tbaa !147
  br label %if.end.354

if.end.354:                                       ; preds = %if.then.351, %if.then.344
  br label %if.end.355

if.end.355:                                       ; preds = %if.end.354, %cond.end.341
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.355, %if.then
  %252 = bitcast i32* %download to i8*
  call void @llvm.lifetime.end(i64 4, i8* %252) #2
  %253 = bitcast i32* %cell_length to i8*
  call void @llvm.lifetime.end(i64 4, i8* %253) #2
  %254 = bitcast [15 x i8]* %text_color to i8*
  call void @llvm.lifetime.end(i64 15, i8* %254) #2
  %255 = bitcast [8 x i8]* %cset_number to i8*
  call void @llvm.lifetime.end(i64 8, i8* %255) #2
  %256 = bitcast [64 x i8]* %cset to i8*
  call void @llvm.lifetime.end(i64 64, i8* %256) #2
  %257 = bitcast [9 x i8]* %cset_sub to i8*
  call void @llvm.lifetime.end(i64 9, i8* %257) #2
  %258 = bitcast i32* %ccode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %258) #2
  %259 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %259) #2
  %260 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %260) #2
  %261 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %261) #2
  %262 = bitcast i32* %width_bytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %262) #2
  %263 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %263) #2
  %264 = bitcast %struct.gx_device_lips4v_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %264) #2
  %265 = load i32, i32* %retval
  ret i32 %265
}

declare i32 @gdev_vector_update_fill_color(%struct.gx_device_vector_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*) #1

; Function Attrs: nounwind uwtable
define internal void @lips4v_write_image_data(%struct.gx_device_vector_s* %vdev, i8* %buf, i32 %tbyte, i32 %reverse) #0 {
entry:
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %buf.addr = alloca i8*, align 8
  %tbyte.addr = alloca i32, align 4
  %reverse.addr = alloca i32, align 4
  %s = alloca %struct.stream_s*, align 8
  %cbuf = alloca i8*, align 8
  %cbuf_rle = alloca i8*, align 8
  %Len = alloca i32, align 4
  %Len_rle = alloca i32, align 4
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !1
  store i32 %tbyte, i32* %tbyte.addr, align 4, !tbaa !5
  store i32 %reverse, i32* %reverse.addr, align 4, !tbaa !5
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %call = call %struct.stream_s* @gdev_vector_stream(%struct.gx_device_vector_s* %1) #5
  store %struct.stream_s* %call, %struct.stream_s** %s, align 8, !tbaa !1
  %2 = bitcast i8** %cbuf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %3, i32 0, i32 3
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !80
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %4, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %5 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !81
  %6 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %6, i32 0, i32 3
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !80
  %8 = load i32, i32* %tbyte.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %8, 3
  %div = sdiv i32 %mul, 2
  %call2 = call i8* %5(%struct.gs_memory_s* %7, i32 %div, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.118, i32 0, i32 0)) #5
  store i8* %call2, i8** %cbuf, align 8, !tbaa !1
  %9 = bitcast i8** %cbuf_rle to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %memory3 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %10, i32 0, i32 3
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory3, align 8, !tbaa !80
  %procs4 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %11, i32 0, i32 1
  %alloc_bytes5 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs4, i32 0, i32 7
  %12 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes5, align 8, !tbaa !81
  %13 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %memory6 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %13, i32 0, i32 3
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory6, align 8, !tbaa !80
  %15 = load i32, i32* %tbyte.addr, align 4, !tbaa !5
  %mul7 = mul nsw i32 %15, 3
  %call8 = call i8* %12(%struct.gs_memory_s* %14, i32 %mul7, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.119, i32 0, i32 0)) #5
  store i8* %call8, i8** %cbuf_rle, align 8, !tbaa !1
  %16 = bitcast i32* %Len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #2
  %17 = bitcast i32* %Len_rle to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #2
  %18 = load i32, i32* %reverse.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %18, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %19 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %20 = load i32, i32* %tbyte.addr, align 4, !tbaa !5
  call void @reverse_buffer(i8* %19, i32 %20) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %21 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %22 = load i8*, i8** %cbuf, align 8, !tbaa !1
  %23 = load i32, i32* %tbyte.addr, align 4, !tbaa !5
  %call9 = call i32 @lips_packbits_encode(i8* %21, i8* %22, i32 %23) #5
  store i32 %call9, i32* %Len, align 4, !tbaa !5
  %24 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %25 = load i8*, i8** %cbuf_rle, align 8, !tbaa !1
  %26 = load i32, i32* %tbyte.addr, align 4, !tbaa !5
  %call10 = call i32 @lips_rle_encode(i8* %24, i8* %25, i32 %26) #5
  store i32 %call10, i32* %Len_rle, align 4, !tbaa !5
  %27 = load i32, i32* %Len, align 4, !tbaa !5
  %28 = load i32, i32* %tbyte.addr, align 4, !tbaa !5
  %cmp = icmp sgt i32 %27, %28
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %29 = load i32, i32* %Len_rle, align 4, !tbaa !5
  %30 = load i32, i32* %tbyte.addr, align 4, !tbaa !5
  %cmp11 = icmp sgt i32 %29, %30
  br i1 %cmp11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %land.lhs.true
  %31 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call13 = call i32 @lputs(%struct.stream_s* %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.62, i32 0, i32 0)) #5
  %32 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %33 = load i32, i32* %tbyte.addr, align 4, !tbaa !5
  call void @sput_lips_int(%struct.stream_s* %32, i32 %33) #5
  %34 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %34, i32 0, i32 5
  %w = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_write_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 1
  %35 = load i8*, i8** %ptr, align 8, !tbaa !55
  %36 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor14 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %36, i32 0, i32 5
  %w15 = bitcast %union.stream_cursor_s* %cursor14 to %struct.stream_cursor_write_s*
  %limit = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w15, i32 0, i32 2
  %37 = load i8*, i8** %limit, align 8, !tbaa !57
  %cmp16 = icmp uge i8* %35, %37
  br i1 %cmp16, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then.12
  %38 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor17 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %38, i32 0, i32 5
  %w18 = bitcast %union.stream_cursor_s* %cursor17 to %struct.stream_cursor_write_s*
  %ptr19 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w18, i32 0, i32 1
  %39 = load i8*, i8** %ptr19, align 8, !tbaa !55
  %incdec.ptr = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr, i8** %ptr19, align 8, !tbaa !55
  %40 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor20 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %40, i32 0, i32 5
  %w21 = bitcast %union.stream_cursor_s* %cursor20 to %struct.stream_cursor_write_s*
  %ptr22 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w21, i32 0, i32 1
  %41 = load i8*, i8** %ptr22, align 8, !tbaa !55
  store i8 30, i8* %41, align 1, !tbaa !58
  br label %cond.end

cond.false:                                       ; preds = %if.then.12
  %42 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call23 = call i32 @spputc(%struct.stream_s* %42, i8 zeroext 30) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call23, %cond.false ]
  %43 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %44 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %45 = load i32, i32* %tbyte.addr, align 4, !tbaa !5
  call void @put_bytes(%struct.stream_s* %43, i8* %44, i32 %45) #5
  br label %if.end.68

if.else:                                          ; preds = %land.lhs.true, %if.end
  %46 = load i32, i32* %Len, align 4, !tbaa !5
  %47 = load i32, i32* %Len_rle, align 4, !tbaa !5
  %cmp24 = icmp sgt i32 %46, %47
  br i1 %cmp24, label %if.then.25, label %if.else.46

if.then.25:                                       ; preds = %if.else
  %48 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call26 = call i32 @lputs(%struct.stream_s* %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.120, i32 0, i32 0)) #5
  %49 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %50 = load i32, i32* %Len_rle, align 4, !tbaa !5
  call void @sput_lips_int(%struct.stream_s* %49, i32 %50) #5
  %51 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor27 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %51, i32 0, i32 5
  %w28 = bitcast %union.stream_cursor_s* %cursor27 to %struct.stream_cursor_write_s*
  %ptr29 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w28, i32 0, i32 1
  %52 = load i8*, i8** %ptr29, align 8, !tbaa !55
  %53 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor30 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %53, i32 0, i32 5
  %w31 = bitcast %union.stream_cursor_s* %cursor30 to %struct.stream_cursor_write_s*
  %limit32 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w31, i32 0, i32 2
  %54 = load i8*, i8** %limit32, align 8, !tbaa !57
  %cmp33 = icmp uge i8* %52, %54
  br i1 %cmp33, label %cond.false.42, label %cond.true.34

cond.true.34:                                     ; preds = %if.then.25
  %55 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor35 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %55, i32 0, i32 5
  %w36 = bitcast %union.stream_cursor_s* %cursor35 to %struct.stream_cursor_write_s*
  %ptr37 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w36, i32 0, i32 1
  %56 = load i8*, i8** %ptr37, align 8, !tbaa !55
  %incdec.ptr38 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %incdec.ptr38, i8** %ptr37, align 8, !tbaa !55
  %57 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor39 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %57, i32 0, i32 5
  %w40 = bitcast %union.stream_cursor_s* %cursor39 to %struct.stream_cursor_write_s*
  %ptr41 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w40, i32 0, i32 1
  %58 = load i8*, i8** %ptr41, align 8, !tbaa !55
  store i8 30, i8* %58, align 1, !tbaa !58
  br label %cond.end.44

cond.false.42:                                    ; preds = %if.then.25
  %59 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call43 = call i32 @spputc(%struct.stream_s* %59, i8 zeroext 30) #5
  br label %cond.end.44

cond.end.44:                                      ; preds = %cond.false.42, %cond.true.34
  %cond45 = phi i32 [ 0, %cond.true.34 ], [ %call43, %cond.false.42 ]
  %60 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %61 = load i8*, i8** %cbuf_rle, align 8, !tbaa !1
  %62 = load i32, i32* %Len_rle, align 4, !tbaa !5
  call void @put_bytes(%struct.stream_s* %60, i8* %61, i32 %62) #5
  br label %if.end.67

if.else.46:                                       ; preds = %if.else
  %63 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call47 = call i32 @lputs(%struct.stream_s* %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.121, i32 0, i32 0)) #5
  %64 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %65 = load i32, i32* %Len, align 4, !tbaa !5
  call void @sput_lips_int(%struct.stream_s* %64, i32 %65) #5
  %66 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor48 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %66, i32 0, i32 5
  %w49 = bitcast %union.stream_cursor_s* %cursor48 to %struct.stream_cursor_write_s*
  %ptr50 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w49, i32 0, i32 1
  %67 = load i8*, i8** %ptr50, align 8, !tbaa !55
  %68 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor51 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %68, i32 0, i32 5
  %w52 = bitcast %union.stream_cursor_s* %cursor51 to %struct.stream_cursor_write_s*
  %limit53 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w52, i32 0, i32 2
  %69 = load i8*, i8** %limit53, align 8, !tbaa !57
  %cmp54 = icmp uge i8* %67, %69
  br i1 %cmp54, label %cond.false.63, label %cond.true.55

cond.true.55:                                     ; preds = %if.else.46
  %70 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor56 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %70, i32 0, i32 5
  %w57 = bitcast %union.stream_cursor_s* %cursor56 to %struct.stream_cursor_write_s*
  %ptr58 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w57, i32 0, i32 1
  %71 = load i8*, i8** %ptr58, align 8, !tbaa !55
  %incdec.ptr59 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %incdec.ptr59, i8** %ptr58, align 8, !tbaa !55
  %72 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor60 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %72, i32 0, i32 5
  %w61 = bitcast %union.stream_cursor_s* %cursor60 to %struct.stream_cursor_write_s*
  %ptr62 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w61, i32 0, i32 1
  %73 = load i8*, i8** %ptr62, align 8, !tbaa !55
  store i8 30, i8* %73, align 1, !tbaa !58
  br label %cond.end.65

cond.false.63:                                    ; preds = %if.else.46
  %74 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call64 = call i32 @spputc(%struct.stream_s* %74, i8 zeroext 30) #5
  br label %cond.end.65

cond.end.65:                                      ; preds = %cond.false.63, %cond.true.55
  %cond66 = phi i32 [ 0, %cond.true.55 ], [ %call64, %cond.false.63 ]
  %75 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %76 = load i8*, i8** %cbuf, align 8, !tbaa !1
  %77 = load i32, i32* %Len, align 4, !tbaa !5
  call void @put_bytes(%struct.stream_s* %75, i8* %76, i32 %77) #5
  br label %if.end.67

if.end.67:                                        ; preds = %cond.end.65, %cond.end.44
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %cond.end
  %78 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %memory69 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %78, i32 0, i32 3
  %79 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory69, align 8, !tbaa !80
  %procs70 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %79, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs70, i32 0, i32 2
  %80 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !82
  %81 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %memory71 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %81, i32 0, i32 3
  %82 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory71, align 8, !tbaa !80
  %83 = load i8*, i8** %cbuf, align 8, !tbaa !1
  call void %80(%struct.gs_memory_s* %82, i8* %83, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.118, i32 0, i32 0)) #5
  %84 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %memory72 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %84, i32 0, i32 3
  %85 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory72, align 8, !tbaa !80
  %procs73 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %85, i32 0, i32 1
  %free_object74 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs73, i32 0, i32 2
  %86 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object74, align 8, !tbaa !82
  %87 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %memory75 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %87, i32 0, i32 3
  %88 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory75, align 8, !tbaa !80
  %89 = load i8*, i8** %cbuf_rle, align 8, !tbaa !1
  call void %86(%struct.gs_memory_s* %88, i8* %89, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.119, i32 0, i32 0)) #5
  %90 = bitcast i32* %Len_rle to i8*
  call void @llvm.lifetime.end(i64 4, i8* %90) #2
  %91 = bitcast i32* %Len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %91) #2
  %92 = bitcast i8** %cbuf_rle to i8*
  call void @llvm.lifetime.end(i64 8, i8* %92) #2
  %93 = bitcast i8** %cbuf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %93) #2
  %94 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %94) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @lips4v_set_cap(%struct.gx_device_s* %dev, i32 %x, i32 %y) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %cap = alloca [15 x i8], align 1
  %s = alloca %struct.stream_s*, align 8
  %pdev = alloca %struct.gx_device_lips4v_s*, align 8
  %dx = alloca i32, align 4
  %dy = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  %0 = bitcast [15 x i8]* %cap to i8*
  call void @llvm.lifetime.start(i64 15, i8* %0) #2
  %1 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s* %2 to %struct.gx_device_vector_s*
  %call = call %struct.stream_s* @gdev_vector_stream(%struct.gx_device_vector_s* %3) #5
  store %struct.stream_s* %call, %struct.stream_s** %s, align 8, !tbaa !1
  %4 = bitcast %struct.gx_device_lips4v_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %6 = bitcast %struct.gx_device_s* %5 to %struct.gx_device_lips4v_s*
  store %struct.gx_device_lips4v_s* %6, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %7 = bitcast i32* %dx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = load i32, i32* %x.addr, align 4, !tbaa !5
  %9 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %prev_x = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %9, i32 0, i32 92
  %10 = load i32, i32* %prev_x, align 4, !tbaa !148
  %sub = sub nsw i32 %8, %10
  store i32 %sub, i32* %dx, align 4, !tbaa !5
  %11 = bitcast i32* %dy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = load i32, i32* %y.addr, align 4, !tbaa !5
  %13 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %prev_y = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %13, i32 0, i32 93
  %14 = load i32, i32* %prev_y, align 4, !tbaa !149
  %sub1 = sub nsw i32 %12, %14
  store i32 %sub1, i32* %dy, align 4, !tbaa !5
  %15 = load i32, i32* %dx, align 4, !tbaa !5
  %cmp = icmp sgt i32 %15, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [15 x i8], [15 x i8]* %cap, i32 0, i32 0
  %16 = load i32, i32* %dx, align 4, !tbaa !5
  %call2 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.114, i32 0, i32 0), i32 155, i32 %16) #5
  %17 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %arraydecay3 = getelementptr inbounds [15 x i8], [15 x i8]* %cap, i32 0, i32 0
  %call4 = call i32 @lputs(%struct.stream_s* %17, i8* %arraydecay3) #5
  br label %if.end.12

if.else:                                          ; preds = %entry
  %18 = load i32, i32* %dx, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %18, 0
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.else
  %arraydecay7 = getelementptr inbounds [15 x i8], [15 x i8]* %cap, i32 0, i32 0
  %19 = load i32, i32* %dx, align 4, !tbaa !5
  %sub8 = sub nsw i32 0, %19
  %call9 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.115, i32 0, i32 0), i32 155, i32 %sub8) #5
  %20 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %arraydecay10 = getelementptr inbounds [15 x i8], [15 x i8]* %cap, i32 0, i32 0
  %call11 = call i32 @lputs(%struct.stream_s* %20, i8* %arraydecay10) #5
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.else
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %if.then
  %21 = load i32, i32* %dy, align 4, !tbaa !5
  %cmp13 = icmp sgt i32 %21, 0
  br i1 %cmp13, label %if.then.14, label %if.else.19

if.then.14:                                       ; preds = %if.end.12
  %arraydecay15 = getelementptr inbounds [15 x i8], [15 x i8]* %cap, i32 0, i32 0
  %22 = load i32, i32* %dy, align 4, !tbaa !5
  %call16 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.116, i32 0, i32 0), i32 155, i32 %22) #5
  %23 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %arraydecay17 = getelementptr inbounds [15 x i8], [15 x i8]* %cap, i32 0, i32 0
  %call18 = call i32 @lputs(%struct.stream_s* %23, i8* %arraydecay17) #5
  br label %if.end.28

if.else.19:                                       ; preds = %if.end.12
  %24 = load i32, i32* %dy, align 4, !tbaa !5
  %cmp20 = icmp slt i32 %24, 0
  br i1 %cmp20, label %if.then.21, label %if.end.27

if.then.21:                                       ; preds = %if.else.19
  %arraydecay22 = getelementptr inbounds [15 x i8], [15 x i8]* %cap, i32 0, i32 0
  %25 = load i32, i32* %dy, align 4, !tbaa !5
  %sub23 = sub nsw i32 0, %25
  %call24 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.117, i32 0, i32 0), i32 155, i32 %sub23) #5
  %26 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %arraydecay25 = getelementptr inbounds [15 x i8], [15 x i8]* %cap, i32 0, i32 0
  %call26 = call i32 @lputs(%struct.stream_s* %26, i8* %arraydecay25) #5
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.21, %if.else.19
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.then.14
  %27 = load i32, i32* %x.addr, align 4, !tbaa !5
  %28 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %prev_x29 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %28, i32 0, i32 92
  store i32 %27, i32* %prev_x29, align 4, !tbaa !148
  %29 = load i32, i32* %y.addr, align 4, !tbaa !5
  %30 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %prev_y30 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %30, i32 0, i32 93
  store i32 %29, i32* %prev_y30, align 4, !tbaa !149
  %31 = bitcast i32* %dy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #2
  %32 = bitcast i32* %dx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #2
  %33 = bitcast %struct.gx_device_lips4v_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #2
  %34 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #2
  %35 = bitcast [15 x i8]* %cap to i8*
  call void @llvm.lifetime.end(i64 15, i8* %35) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @put_int(%struct.stream_s* %s, i32 %number) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %number.addr = alloca i32, align 4
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i32 %number, i32* %number.addr, align 4, !tbaa !5
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i32 0, i32 5
  %w = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_write_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 1
  %1 = load i8*, i8** %ptr, align 8, !tbaa !55
  %2 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor1 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %2, i32 0, i32 5
  %w2 = bitcast %union.stream_cursor_s* %cursor1 to %struct.stream_cursor_write_s*
  %limit = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w2, i32 0, i32 2
  %3 = load i8*, i8** %limit, align 8, !tbaa !57
  %cmp = icmp uge i8* %1, %3
  br i1 %cmp, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %4 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor3 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %4, i32 0, i32 5
  %w4 = bitcast %union.stream_cursor_s* %cursor3 to %struct.stream_cursor_write_s*
  %ptr5 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w4, i32 0, i32 1
  %5 = load i8*, i8** %ptr5, align 8, !tbaa !55
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %ptr5, align 8, !tbaa !55
  %6 = load i32, i32* %number.addr, align 4, !tbaa !5
  %shr = lshr i32 %6, 8
  %conv = trunc i32 %shr to i8
  %7 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor6 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %7, i32 0, i32 5
  %w7 = bitcast %union.stream_cursor_s* %cursor6 to %struct.stream_cursor_write_s*
  %ptr8 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w7, i32 0, i32 1
  %8 = load i8*, i8** %ptr8, align 8, !tbaa !55
  store i8 %conv, i8* %8, align 1, !tbaa !58
  br label %cond.end

cond.false:                                       ; preds = %entry
  %9 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %10 = load i32, i32* %number.addr, align 4, !tbaa !5
  %shr9 = lshr i32 %10, 8
  %conv10 = trunc i32 %shr9 to i8
  %call = call i32 @spputc(%struct.stream_s* %9, i8 zeroext %conv10) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call, %cond.false ]
  %11 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor11 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %11, i32 0, i32 5
  %w12 = bitcast %union.stream_cursor_s* %cursor11 to %struct.stream_cursor_write_s*
  %ptr13 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w12, i32 0, i32 1
  %12 = load i8*, i8** %ptr13, align 8, !tbaa !55
  %13 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor14 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %13, i32 0, i32 5
  %w15 = bitcast %union.stream_cursor_s* %cursor14 to %struct.stream_cursor_write_s*
  %limit16 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w15, i32 0, i32 2
  %14 = load i8*, i8** %limit16, align 8, !tbaa !57
  %cmp17 = icmp uge i8* %12, %14
  br i1 %cmp17, label %cond.false.28, label %cond.true.19

cond.true.19:                                     ; preds = %cond.end
  %15 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor20 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %15, i32 0, i32 5
  %w21 = bitcast %union.stream_cursor_s* %cursor20 to %struct.stream_cursor_write_s*
  %ptr22 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w21, i32 0, i32 1
  %16 = load i8*, i8** %ptr22, align 8, !tbaa !55
  %incdec.ptr23 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr23, i8** %ptr22, align 8, !tbaa !55
  %17 = load i32, i32* %number.addr, align 4, !tbaa !5
  %and = and i32 %17, 255
  %conv24 = trunc i32 %and to i8
  %18 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor25 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %18, i32 0, i32 5
  %w26 = bitcast %union.stream_cursor_s* %cursor25 to %struct.stream_cursor_write_s*
  %ptr27 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w26, i32 0, i32 1
  %19 = load i8*, i8** %ptr27, align 8, !tbaa !55
  store i8 %conv24, i8* %19, align 1, !tbaa !58
  br label %cond.end.32

cond.false.28:                                    ; preds = %cond.end
  %20 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %21 = load i32, i32* %number.addr, align 4, !tbaa !5
  %and29 = and i32 %21, 255
  %conv30 = trunc i32 %and29 to i8
  %call31 = call i32 @spputc(%struct.stream_s* %20, i8 zeroext %conv30) #5
  br label %cond.end.32

cond.end.32:                                      ; preds = %cond.false.28, %cond.true.19
  %cond33 = phi i32 [ 0, %cond.true.19 ], [ %call31, %cond.false.28 ]
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @put_bytes(%struct.stream_s* %s, i8* %data, i32 %count) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %data.addr = alloca i8*, align 8
  %count.addr = alloca i32, align 4
  %used = alloca i32, align 4
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !5
  %0 = bitcast i32* %used to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %3 = load i32, i32* %count.addr, align 4, !tbaa !5
  %call = call i32 @sputs(%struct.stream_s* %1, i8* %2, i32 %3, i32* %used) #5
  %4 = bitcast i32* %used to i8*
  call void @llvm.lifetime.end(i64 4, i8* %4) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @reverse_buffer(i8* %buf, i32 %Len) #0 {
entry:
  %buf.addr = alloca i8*, align 8
  %Len.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !1
  store i32 %Len, i32* %Len.addr, align 4, !tbaa !5
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !5
  %2 = load i32, i32* %Len.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %4 = load i32, i32* %i, align 4, !tbaa !5
  %idx.ext = sext i32 %4 to i64
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %idx.ext
  %5 = load i8, i8* %add.ptr, align 1, !tbaa !58
  %conv = zext i8 %5 to i32
  %neg = xor i32 %conv, -1
  %conv1 = trunc i32 %neg to i8
  %6 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %7 = load i32, i32* %i, align 4, !tbaa !5
  %idx.ext2 = sext i32 %7 to i64
  %add.ptr3 = getelementptr inbounds i8, i8* %6, i64 %idx.ext2
  store i8 %conv1, i8* %add.ptr3, align 1, !tbaa !58
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %9) #2
  ret void
}

declare i32 @lips_packbits_encode(i8*, i8*, i32) #1

declare i32 @lips_rle_encode(i8*, i8*, i32) #1

declare i32 @gdev_vector_update_clip_path(%struct.gx_device_vector_s*, %struct.gx_clip_path_s*) #1

declare i32 @gdev_vector_update_log_op(%struct.gx_device_vector_s*, i32) #1

declare i32 @gx_default_fill_mask(%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*) #1

declare i32 @gdev_vector_begin_image(%struct.gx_device_vector_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_procs_s*, %struct.gdev_vector_image_enum_s*) #1

declare i32 @gs_color_space_get_index(%struct.gs_color_space_s*) #1

declare i32 @gs_color_space_num_components(%struct.gs_color_space_s*) #1

declare i32 @gx_default_begin_image(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**) #1

declare i32 @gs_matrix_invert(%struct.gs_matrix_s*, %struct.gs_matrix_s*) #1

declare i32 @gs_matrix_multiply(%struct.gs_matrix_s*, %struct.gs_matrix_s*, %struct.gs_matrix_s*) #1

; Function Attrs: nounwind uwtable
define internal i32 @lips4v_image_plane_data(%struct.gx_image_enum_common_s* %info, %struct.gx_image_plane_s* %planes, i32 %height, i32* %rows_used) #0 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct.gx_image_enum_common_s*, align 8
  %planes.addr = alloca %struct.gx_image_plane_s*, align 8
  %height.addr = alloca i32, align 4
  %rows_used.addr = alloca i32*, align 8
  %dev = alloca %struct.gx_device_s*, align 8
  %vdev = alloca %struct.gx_device_vector_s*, align 8
  %pdev = alloca %struct.gx_device_lips4v_s*, align 8
  %pie = alloca %struct.gdev_vector_image_enum_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %y = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %plane = alloca i32, align 4
  %width_bytes = alloca i32, align 4
  %tbyte = alloca i32, align 4
  %buf = alloca i8*, align 8
  store %struct.gx_image_enum_common_s* %info, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  store %struct.gx_image_plane_s* %planes, %struct.gx_image_plane_s** %planes.addr, align 8, !tbaa !1
  store i32 %height, i32* %height.addr, align 4, !tbaa !5
  store i32* %rows_used, i32** %rows_used.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  %dev1 = getelementptr inbounds %struct.gx_image_enum_common_s, %struct.gx_image_enum_common_s* %1, i32 0, i32 2
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev1, align 8, !tbaa !153
  store %struct.gx_device_s* %2, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_vector_s** %vdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %5 = bitcast %struct.gx_device_s* %4 to %struct.gx_device_vector_s*
  store %struct.gx_device_vector_s* %5, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %6 = bitcast %struct.gx_device_lips4v_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %8 = bitcast %struct.gx_device_s* %7 to %struct.gx_device_lips4v_s*
  store %struct.gx_device_lips4v_s* %8, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %9 = bitcast %struct.gdev_vector_image_enum_s** %pie to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  %11 = bitcast %struct.gx_image_enum_common_s* %10 to %struct.gdev_vector_image_enum_s*
  store %struct.gdev_vector_image_enum_s* %11, %struct.gdev_vector_image_enum_s** %pie, align 8, !tbaa !1
  %12 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #2
  %13 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %14 = bitcast %struct.gx_device_lips4v_s* %13 to %struct.gx_device_vector_s*
  %call = call %struct.stream_s* @gdev_vector_stream(%struct.gx_device_vector_s* %14) #5
  store %struct.stream_s* %call, %struct.stream_s** %s, align 8, !tbaa !1
  %15 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #2
  %16 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %OneBitMask = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %16, i32 0, i32 87
  %17 = load i32, i32* %OneBitMask, align 4, !tbaa !135
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %18 = load i32, i32* %height.addr, align 4, !tbaa !5
  %19 = load %struct.gdev_vector_image_enum_s*, %struct.gdev_vector_image_enum_s** %pie, align 8, !tbaa !1
  %y2 = getelementptr inbounds %struct.gdev_vector_image_enum_s, %struct.gdev_vector_image_enum_s* %19, i32 0, i32 15
  %20 = load i32, i32* %y2, align 4, !tbaa !155
  %add = add nsw i32 %20, %18
  store i32 %add, i32* %y2, align 4, !tbaa !155
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %21 = load %struct.gdev_vector_image_enum_s*, %struct.gdev_vector_image_enum_s** %pie, align 8, !tbaa !1
  %default_info = getelementptr inbounds %struct.gdev_vector_image_enum_s, %struct.gdev_vector_image_enum_s* %21, i32 0, i32 9
  %22 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %default_info, align 8, !tbaa !156
  %tobool3 = icmp ne %struct.gx_image_enum_common_s* %22, null
  br i1 %tobool3, label %if.then.4, label %if.end.7

if.then.4:                                        ; preds = %if.end
  %23 = load %struct.gdev_vector_image_enum_s*, %struct.gdev_vector_image_enum_s** %pie, align 8, !tbaa !1
  %default_info5 = getelementptr inbounds %struct.gdev_vector_image_enum_s, %struct.gdev_vector_image_enum_s* %23, i32 0, i32 9
  %24 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %default_info5, align 8, !tbaa !156
  %25 = load %struct.gx_image_plane_s*, %struct.gx_image_plane_s** %planes.addr, align 8, !tbaa !1
  %26 = load i32, i32* %height.addr, align 4, !tbaa !5
  %call6 = call i32 @gx_image_plane_data(%struct.gx_image_enum_common_s* %24, %struct.gx_image_plane_s* %25, i32 %26) #5
  store i32 %call6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %if.end
  %27 = load %struct.gdev_vector_image_enum_s*, %struct.gdev_vector_image_enum_s** %pie, align 8, !tbaa !1
  %bbox_info = getelementptr inbounds %struct.gdev_vector_image_enum_s, %struct.gdev_vector_image_enum_s* %27, i32 0, i32 10
  %28 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %bbox_info, align 8, !tbaa !157
  %29 = load %struct.gx_image_plane_s*, %struct.gx_image_plane_s** %planes.addr, align 8, !tbaa !1
  %30 = load i32, i32* %height.addr, align 4, !tbaa !5
  %call8 = call i32 @gx_image_plane_data(%struct.gx_image_enum_common_s* %28, %struct.gx_image_plane_s* %29, i32 %30) #5
  %31 = bitcast i32* %plane to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #2
  %32 = bitcast i32* %width_bytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #2
  %33 = bitcast i32* %tbyte to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #2
  %34 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %34) #2
  %35 = load %struct.gdev_vector_image_enum_s*, %struct.gdev_vector_image_enum_s** %pie, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gdev_vector_image_enum_s, %struct.gdev_vector_image_enum_s* %35, i32 0, i32 11
  %36 = load i32, i32* %width, align 4, !tbaa !132
  %37 = load %struct.gdev_vector_image_enum_s*, %struct.gdev_vector_image_enum_s** %pie, align 8, !tbaa !1
  %bits_per_pixel = getelementptr inbounds %struct.gdev_vector_image_enum_s, %struct.gdev_vector_image_enum_s* %37, i32 0, i32 13
  %38 = load i32, i32* %bits_per_pixel, align 4, !tbaa !158
  %mul = mul nsw i32 %36, %38
  %39 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %ncomp = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %39, i32 0, i32 88
  %40 = load i32, i32* %ncomp, align 4, !tbaa !134
  %div = sdiv i32 %mul, %40
  %add9 = add nsw i32 %div, 7
  %div10 = sdiv i32 %add9, 8
  %41 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %ncomp11 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %41, i32 0, i32 88
  %42 = load i32, i32* %ncomp11, align 4, !tbaa !134
  %mul12 = mul nsw i32 %div10, %42
  store i32 %mul12, i32* %width_bytes, align 4, !tbaa !5
  %43 = load i32, i32* %width_bytes, align 4, !tbaa !5
  %44 = load i32, i32* %height.addr, align 4, !tbaa !5
  %mul13 = mul nsw i32 %43, %44
  store i32 %mul13, i32* %tbyte, align 4, !tbaa !5
  %45 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %45, i32 0, i32 3
  %46 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !80
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %46, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %47 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !81
  %48 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %memory14 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %48, i32 0, i32 3
  %49 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory14, align 8, !tbaa !80
  %50 = load i32, i32* %tbyte, align 4, !tbaa !5
  %call15 = call i8* %47(%struct.gs_memory_s* %49, i32 %50, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.128, i32 0, i32 0)) #5
  store i8* %call15, i8** %buf, align 8, !tbaa !1
  store i32 0, i32* %plane, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.32, %if.end.7
  %51 = load i32, i32* %plane, align 4, !tbaa !5
  %52 = load %struct.gdev_vector_image_enum_s*, %struct.gdev_vector_image_enum_s** %pie, align 8, !tbaa !1
  %num_planes = getelementptr inbounds %struct.gdev_vector_image_enum_s, %struct.gdev_vector_image_enum_s* %52, i32 0, i32 6
  %53 = load i32, i32* %num_planes, align 4, !tbaa !137
  %cmp = icmp slt i32 %51, %53
  br i1 %cmp, label %for.body, label %for.end.34

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %y, align 4, !tbaa !5
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc, %for.body
  %54 = load i32, i32* %y, align 4, !tbaa !5
  %55 = load i32, i32* %height.addr, align 4, !tbaa !5
  %cmp17 = icmp slt i32 %54, %55
  br i1 %cmp17, label %for.body.18, label %for.end

for.body.18:                                      ; preds = %for.cond.16
  %56 = load i8*, i8** %buf, align 8, !tbaa !1
  %57 = load i32, i32* %y, align 4, !tbaa !5
  %58 = load i32, i32* %width_bytes, align 4, !tbaa !5
  %mul19 = mul nsw i32 %57, %58
  %idx.ext = sext i32 %mul19 to i64
  %add.ptr = getelementptr inbounds i8, i8* %56, i64 %idx.ext
  %59 = load i32, i32* %plane, align 4, !tbaa !5
  %idxprom = sext i32 %59 to i64
  %60 = load %struct.gx_image_plane_s*, %struct.gx_image_plane_s** %planes.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %60, i64 %idxprom
  %data = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %arrayidx, i32 0, i32 0
  %61 = load i8*, i8** %data, align 8, !tbaa !159
  %62 = load i32, i32* %plane, align 4, !tbaa !5
  %idxprom20 = sext i32 %62 to i64
  %63 = load %struct.gx_image_plane_s*, %struct.gx_image_plane_s** %planes.addr, align 8, !tbaa !1
  %arrayidx21 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %63, i64 %idxprom20
  %data_x = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %arrayidx21, i32 0, i32 1
  %64 = load i32, i32* %data_x, align 4, !tbaa !161
  %65 = load %struct.gdev_vector_image_enum_s*, %struct.gdev_vector_image_enum_s** %pie, align 8, !tbaa !1
  %bits_per_pixel22 = getelementptr inbounds %struct.gdev_vector_image_enum_s, %struct.gdev_vector_image_enum_s* %65, i32 0, i32 13
  %66 = load i32, i32* %bits_per_pixel22, align 4, !tbaa !158
  %mul23 = mul nsw i32 %64, %66
  %shr = ashr i32 %mul23, 3
  %idx.ext24 = sext i32 %shr to i64
  %add.ptr25 = getelementptr inbounds i8, i8* %61, i64 %idx.ext24
  %67 = load i32, i32* %y, align 4, !tbaa !5
  %68 = load i32, i32* %plane, align 4, !tbaa !5
  %idxprom26 = sext i32 %68 to i64
  %69 = load %struct.gx_image_plane_s*, %struct.gx_image_plane_s** %planes.addr, align 8, !tbaa !1
  %arrayidx27 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %69, i64 %idxprom26
  %raster = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %arrayidx27, i32 0, i32 2
  %70 = load i32, i32* %raster, align 4, !tbaa !162
  %mul28 = mul i32 %67, %70
  %idx.ext29 = zext i32 %mul28 to i64
  %add.ptr30 = getelementptr inbounds i8, i8* %add.ptr25, i64 %idx.ext29
  %71 = load i32, i32* %width_bytes, align 4, !tbaa !5
  %conv = sext i32 %71 to i64
  %call31 = call i8* @memcpy(i8* %add.ptr, i8* %add.ptr30, i64 %conv) #6
  br label %for.inc

for.inc:                                          ; preds = %for.body.18
  %72 = load i32, i32* %y, align 4, !tbaa !5
  %inc = add nsw i32 %72, 1
  store i32 %inc, i32* %y, align 4, !tbaa !5
  br label %for.cond.16

for.end:                                          ; preds = %for.cond.16
  br label %for.inc.32

for.inc.32:                                       ; preds = %for.end
  %73 = load i32, i32* %plane, align 4, !tbaa !5
  %inc33 = add nsw i32 %73, 1
  store i32 %inc33, i32* %plane, align 4, !tbaa !5
  br label %for.cond

for.end.34:                                       ; preds = %for.cond
  %74 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call35 = call i32 @lputs(%struct.stream_s* %74, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.129, i32 0, i32 0)) #5
  %75 = load %struct.gdev_vector_image_enum_s*, %struct.gdev_vector_image_enum_s** %pie, align 8, !tbaa !1
  %bits_per_pixel36 = getelementptr inbounds %struct.gdev_vector_image_enum_s, %struct.gdev_vector_image_enum_s* %75, i32 0, i32 13
  %76 = load i32, i32* %bits_per_pixel36, align 4, !tbaa !158
  %cmp37 = icmp sgt i32 %76, 1
  br i1 %cmp37, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %for.end.34
  %77 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %ncomp39 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %77, i32 0, i32 88
  %78 = load i32, i32* %ncomp39, align 4, !tbaa !134
  %cmp40 = icmp eq i32 %78, 1
  br i1 %cmp40, label %if.then.44, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %for.end.34
  %79 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %MaskReverse = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %79, i32 0, i32 89
  %80 = load i32, i32* %MaskReverse, align 4, !tbaa !123
  %cmp42 = icmp eq i32 %80, 0
  br i1 %cmp42, label %if.then.44, label %if.else

if.then.44:                                       ; preds = %lor.lhs.false, %land.lhs.true
  %81 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %82 = load i8*, i8** %buf, align 8, !tbaa !1
  %83 = load i32, i32* %tbyte, align 4, !tbaa !5
  call void @lips4v_write_image_data(%struct.gx_device_vector_s* %81, i8* %82, i32 %83, i32 1) #5
  br label %if.end.45

if.else:                                          ; preds = %lor.lhs.false
  %84 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %85 = load i8*, i8** %buf, align 8, !tbaa !1
  %86 = load i32, i32* %tbyte, align 4, !tbaa !5
  call void @lips4v_write_image_data(%struct.gx_device_vector_s* %84, i8* %85, i32 %86, i32 0) #5
  br label %if.end.45

if.end.45:                                        ; preds = %if.else, %if.then.44
  %87 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %memory46 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %87, i32 0, i32 3
  %88 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory46, align 8, !tbaa !80
  %procs47 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %88, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs47, i32 0, i32 2
  %89 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !82
  %90 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %memory48 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %90, i32 0, i32 3
  %91 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory48, align 8, !tbaa !80
  %92 = load i8*, i8** %buf, align 8, !tbaa !1
  call void %89(%struct.gs_memory_s* %91, i8* %92, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.128, i32 0, i32 0)) #5
  %93 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %93) #2
  %94 = bitcast i32* %tbyte to i8*
  call void @llvm.lifetime.end(i64 4, i8* %94) #2
  %95 = bitcast i32* %width_bytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %95) #2
  %96 = bitcast i32* %plane to i8*
  call void @llvm.lifetime.end(i64 4, i8* %96) #2
  %97 = load i32, i32* %height.addr, align 4, !tbaa !5
  %98 = load %struct.gdev_vector_image_enum_s*, %struct.gdev_vector_image_enum_s** %pie, align 8, !tbaa !1
  %y49 = getelementptr inbounds %struct.gdev_vector_image_enum_s, %struct.gdev_vector_image_enum_s* %98, i32 0, i32 15
  %99 = load i32, i32* %y49, align 4, !tbaa !155
  %add50 = add nsw i32 %99, %97
  store i32 %add50, i32* %y49, align 4, !tbaa !155
  %100 = load %struct.gdev_vector_image_enum_s*, %struct.gdev_vector_image_enum_s** %pie, align 8, !tbaa !1
  %height51 = getelementptr inbounds %struct.gdev_vector_image_enum_s, %struct.gdev_vector_image_enum_s* %100, i32 0, i32 12
  %101 = load i32, i32* %height51, align 4, !tbaa !133
  %cmp52 = icmp sge i32 %add50, %101
  %conv53 = zext i1 %cmp52 to i32
  store i32 %conv53, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.45, %if.then.4, %if.then
  %102 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %102) #2
  %103 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %103) #2
  %104 = bitcast %struct.gdev_vector_image_enum_s** %pie to i8*
  call void @llvm.lifetime.end(i64 8, i8* %104) #2
  %105 = bitcast %struct.gx_device_lips4v_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %105) #2
  %106 = bitcast %struct.gx_device_vector_s** %vdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %106) #2
  %107 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %107) #2
  %108 = load i32, i32* %retval
  ret i32 %108
}

; Function Attrs: nounwind uwtable
define internal i32 @lips4v_image_end_image(%struct.gx_image_enum_common_s* %info, i32 %draw_last) #0 {
entry:
  %info.addr = alloca %struct.gx_image_enum_common_s*, align 8
  %draw_last.addr = alloca i32, align 4
  %dev = alloca %struct.gx_device_s*, align 8
  %vdev = alloca %struct.gx_device_vector_s*, align 8
  %pdev = alloca %struct.gx_device_lips4v_s*, align 8
  %pie = alloca %struct.gdev_vector_image_enum_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %code = alloca i32, align 4
  store %struct.gx_image_enum_common_s* %info, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  store i32 %draw_last, i32* %draw_last.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  %dev1 = getelementptr inbounds %struct.gx_image_enum_common_s, %struct.gx_image_enum_common_s* %1, i32 0, i32 2
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev1, align 8, !tbaa !153
  store %struct.gx_device_s* %2, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_vector_s** %vdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %5 = bitcast %struct.gx_device_s* %4 to %struct.gx_device_vector_s*
  store %struct.gx_device_vector_s* %5, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %6 = bitcast %struct.gx_device_lips4v_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %8 = bitcast %struct.gx_device_s* %7 to %struct.gx_device_lips4v_s*
  store %struct.gx_device_lips4v_s* %8, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %9 = bitcast %struct.gdev_vector_image_enum_s** %pie to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  %11 = bitcast %struct.gx_image_enum_common_s* %10 to %struct.gdev_vector_image_enum_s*
  store %struct.gdev_vector_image_enum_s* %11, %struct.gdev_vector_image_enum_s** %pie, align 8, !tbaa !1
  %12 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #2
  %13 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %14 = bitcast %struct.gx_device_lips4v_s* %13 to %struct.gx_device_vector_s*
  %call = call %struct.stream_s* @gdev_vector_stream(%struct.gx_device_vector_s* %14) #5
  store %struct.stream_s* %call, %struct.stream_s** %s, align 8, !tbaa !1
  %15 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #2
  %16 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %OneBitMask = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %16, i32 0, i32 87
  %17 = load i32, i32* %OneBitMask, align 4, !tbaa !135
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %18 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %OneBitMask2 = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %18, i32 0, i32 87
  store i32 0, i32* %OneBitMask2, align 4, !tbaa !135
  br label %if.end

if.else:                                          ; preds = %entry
  %19 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call3 = call i32 @lputs(%struct.stream_s* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.130, i32 0, i32 0)) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %20 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %20, i32 0, i32 5
  %w = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_write_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 1
  %21 = load i8*, i8** %ptr, align 8, !tbaa !55
  %22 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor4 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %22, i32 0, i32 5
  %w5 = bitcast %union.stream_cursor_s* %cursor4 to %struct.stream_cursor_write_s*
  %limit = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w5, i32 0, i32 2
  %23 = load i8*, i8** %limit, align 8, !tbaa !57
  %cmp = icmp uge i8* %21, %23
  br i1 %cmp, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end
  %24 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor6 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %24, i32 0, i32 5
  %w7 = bitcast %union.stream_cursor_s* %cursor6 to %struct.stream_cursor_write_s*
  %ptr8 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w7, i32 0, i32 1
  %25 = load i8*, i8** %ptr8, align 8, !tbaa !55
  %incdec.ptr = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr, i8** %ptr8, align 8, !tbaa !55
  %26 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor9 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %26, i32 0, i32 5
  %w10 = bitcast %union.stream_cursor_s* %cursor9 to %struct.stream_cursor_write_s*
  %ptr11 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w10, i32 0, i32 1
  %27 = load i8*, i8** %ptr11, align 8, !tbaa !55
  store i8 30, i8* %27, align 1, !tbaa !58
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %28 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call12 = call i32 @spputc(%struct.stream_s* %28, i8 zeroext 30) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call12, %cond.false ]
  %29 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %MaskReverse = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %29, i32 0, i32 89
  store i32 -1, i32* %MaskReverse, align 4, !tbaa !123
  %30 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %31 = load %struct.gdev_vector_image_enum_s*, %struct.gdev_vector_image_enum_s** %pie, align 8, !tbaa !1
  %32 = load i32, i32* %draw_last.addr, align 4, !tbaa !5
  %33 = load %struct.gx_device_lips4v_s*, %struct.gx_device_lips4v_s** %pdev, align 8, !tbaa !1
  %white = getelementptr inbounds %struct.gx_device_lips4v_s, %struct.gx_device_lips4v_s* %33, i32 0, i32 66
  %34 = load i64, i64* %white, align 8, !tbaa !163
  %call13 = call i32 @gdev_vector_end_image(%struct.gx_device_vector_s* %30, %struct.gdev_vector_image_enum_s* %31, i32 %32, i64 %34) #5
  store i32 %call13, i32* %code, align 4, !tbaa !5
  %35 = load i32, i32* %code, align 4, !tbaa !5
  %36 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #2
  %37 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #2
  %38 = bitcast %struct.gdev_vector_image_enum_s** %pie to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #2
  %39 = bitcast %struct.gx_device_lips4v_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #2
  %40 = bitcast %struct.gx_device_vector_s** %vdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #2
  %41 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #2
  ret i32 %35
}

declare i32 @gx_image_plane_data(%struct.gx_image_enum_common_s*, %struct.gx_image_plane_s*, i32) #1

declare i32 @gdev_vector_end_image(%struct.gx_device_vector_s*, %struct.gdev_vector_image_enum_s*, i32, i64) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin }
attributes #6 = { nobuiltin nounwind }
attributes #7 = { nobuiltin nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !2, i64 32}
!8 = !{!"gs_memory_struct_type_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56}
!9 = !{!8, !2, i64 40}
!10 = !{!11, !2, i64 24}
!11 = !{!"gx_device_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !12, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !14, i64 96, !17, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !13, i64 928, !13, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !13, i64 968, !13, i64 976, !18, i64 984, !6, i64 1052, !6, i64 1056, !19, i64 1064, !2, i64 1104, !3, i64 1112, !21, i64 1120, !22, i64 1144}
!12 = !{!"rc_header_s", !13, i64 0, !2, i64 8, !2, i64 16}
!13 = !{!"long", !3, i64 0}
!14 = !{!"gx_device_color_info_s", !6, i64 0, !6, i64 4, !3, i64 8, !15, i64 12, !3, i64 14, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !16, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !13, i64 704, !6, i64 712}
!15 = !{!"short", !3, i64 0}
!16 = !{!"gx_device_anti_alias_info_s", !6, i64 0, !6, i64 4}
!17 = !{!"gx_device_cached_colors_s", !13, i64 0, !13, i64 8}
!18 = !{!"gx_stroked_gradient_recognizer_s", !6, i64 0, !3, i64 4, !3, i64 36}
!19 = !{!"gdev_space_params_s", !13, i64 0, !13, i64 8, !20, i64 16, !6, i64 32, !3, i64 36}
!20 = !{!"gx_band_params_s", !6, i64 0, !6, i64 4, !13, i64 8}
!21 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!22 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!23 = !{!24, !2, i64 1728}
!24 = !{!"gx_device_vector_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !12, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !14, i64 96, !17, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !13, i64 928, !13, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !13, i64 968, !13, i64 976, !18, i64 984, !6, i64 1052, !6, i64 1056, !19, i64 1064, !2, i64 1104, !3, i64 1112, !21, i64 1120, !22, i64 1144, !2, i64 1728, !2, i64 1736, !3, i64 1744, !2, i64 5840, !2, i64 5848, !2, i64 5856, !6, i64 5864, !6, i64 5868, !25, i64 5872, !2, i64 7488, !6, i64 7496, !6, i64 7500, !6, i64 7504, !38, i64 7512, !38, i64 8144, !13, i64 8776, !13, i64 8784, !3, i64 8792, !3, i64 8796, !31, i64 8800, !6, i64 8816, !2, i64 8824, !13, i64 8832, !13, i64 8840}
!25 = !{!"gs_imager_state_s", !6, i64 0, !2, i64 8, !2, i64 16, !26, i64 24, !6, i64 128, !30, i64 132, !6, i64 168, !31, i64 176, !31, i64 192, !6, i64 208, !6, i64 212, !15, i64 216, !3, i64 220, !33, i64 224, !33, i64 228, !34, i64 232, !13, i64 240, !6, i64 248, !6, i64 252, !6, i64 256, !2, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !27, i64 296, !35, i64 300, !6, i64 308, !6, i64 312, !6, i64 316, !27, i64 320, !6, i64 324, !6, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !6, i64 408, !2, i64 416, !2, i64 424, !36, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !37, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !37, i64 1336}
!26 = !{!"gx_line_params_s", !27, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !6, i64 20, !27, i64 24, !27, i64 28, !27, i64 32, !6, i64 36, !28, i64 40, !29, i64 64}
!27 = !{!"float", !3, i64 0}
!28 = !{!"gs_matrix_s", !27, i64 0, !27, i64 4, !27, i64 8, !27, i64 12, !27, i64 16, !27, i64 20}
!29 = !{!"gx_dash_params_s", !2, i64 0, !6, i64 8, !27, i64 12, !6, i64 16, !27, i64 20, !6, i64 24, !6, i64 28, !27, i64 32}
!30 = !{!"gs_matrix_fixed_s", !27, i64 0, !27, i64 4, !27, i64 8, !27, i64 12, !27, i64 16, !27, i64 20, !6, i64 24, !6, i64 28, !6, i64 32}
!31 = !{!"gs_point_s", !32, i64 0, !32, i64 8}
!32 = !{!"double", !3, i64 0}
!33 = !{!"gs_transparency_source_s", !27, i64 0}
!34 = !{!"gs_xstate_trans_flags", !6, i64 0, !6, i64 4}
!35 = !{!"gs_fixed_point_s", !6, i64 0, !6, i64 4}
!36 = !{!"gx_transfer_s", !6, i64 0, !2, i64 8, !6, i64 16, !2, i64 24, !6, i64 32, !2, i64 40, !6, i64 48, !2, i64 56}
!37 = !{!"gs_devicen_color_map_s", !6, i64 0, !3, i64 4, !6, i64 8, !6, i64 12, !13, i64 16, !3, i64 24}
!38 = !{!"gx_hl_saved_color_s", !13, i64 0, !13, i64 8, !6, i64 16, !39, i64 24, !41, i64 288}
!39 = !{!"gs_client_color_s", !2, i64 0, !40, i64 8}
!40 = !{!"gs_paint_color_s", !3, i64 0}
!41 = !{!"gx_device_color_saved_s", !2, i64 0, !3, i64 8, !42, i64 336}
!42 = !{!"gs_int_point_s", !6, i64 0, !6, i64 4}
!43 = !{!24, !2, i64 1736}
!44 = !{!45, !2, i64 8824}
!45 = !{!"gx_device_lips4v_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !12, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !14, i64 96, !17, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !13, i64 928, !13, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !13, i64 968, !13, i64 976, !18, i64 984, !6, i64 1052, !6, i64 1056, !19, i64 1064, !2, i64 1104, !3, i64 1112, !21, i64 1120, !22, i64 1144, !2, i64 1728, !2, i64 1736, !3, i64 1744, !2, i64 5840, !2, i64 5848, !2, i64 5856, !6, i64 5864, !6, i64 5868, !25, i64 5872, !2, i64 7488, !6, i64 7496, !6, i64 7500, !6, i64 7504, !38, i64 7512, !38, i64 8144, !13, i64 8776, !13, i64 8784, !3, i64 8792, !3, i64 8796, !31, i64 8800, !6, i64 8816, !2, i64 8824, !13, i64 8832, !13, i64 8840, !6, i64 8848, !3, i64 8852, !6, i64 8864, !6, i64 8868, !6, i64 8872, !6, i64 8876, !6, i64 8880, !6, i64 8884, !6, i64 8888, !6, i64 8892, !6, i64 8896, !6, i64 8900, !6, i64 8904, !6, i64 8908, !3, i64 8912, !6, i64 8944, !6, i64 8948, !6, i64 8952, !6, i64 8956, !6, i64 8960, !6, i64 8964, !6, i64 8968, !6, i64 8972, !6, i64 8976, !6, i64 8980, !6, i64 8984, !6, i64 8988, !13, i64 8992, !13, i64 9000, !6, i64 9008, !6, i64 9012, !6, i64 9016, !6, i64 9020, !3, i64 9024, !3, i64 11080}
!46 = !{!47, !2, i64 24}
!47 = !{!"gx_device_bbox_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !12, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !14, i64 96, !17, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !13, i64 928, !13, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !13, i64 968, !13, i64 976, !18, i64 984, !6, i64 1052, !6, i64 1056, !19, i64 1064, !2, i64 1104, !3, i64 1112, !21, i64 1120, !22, i64 1144, !2, i64 1728, !6, i64 1736, !6, i64 1740, !48, i64 1744, !2, i64 1776, !6, i64 1784, !49, i64 1788, !13, i64 1808, !13, i64 1816, !13, i64 1824}
!48 = !{!"gx_device_bbox_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!49 = !{!"gs_fixed_rect_s", !35, i64 0, !35, i64 8}
!50 = !{!51, !2, i64 32}
!51 = !{!"gs_memory_s", !2, i64 0, !52, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!52 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!53 = !{!45, !6, i64 8944}
!54 = !{!45, !6, i64 8980}
!55 = !{!56, !2, i64 8}
!56 = !{!"stream_cursor_write_s", !2, i64 0, !2, i64 8, !2, i64 16}
!57 = !{!56, !2, i64 16}
!58 = !{!3, !3, i64 0}
!59 = !{!45, !6, i64 8892}
!60 = !{!61, !2, i64 208}
!61 = !{!"stream_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !3, i64 28, !3, i64 112, !2, i64 136, !6, i64 144, !6, i64 148, !15, i64 152, !3, i64 154, !3, i64 155, !62, i64 160, !13, i64 176, !63, i64 184, !2, i64 240, !6, i64 248, !6, i64 252, !2, i64 256, !15, i64 264, !15, i64 266, !2, i64 272, !2, i64 280, !6, i64 288, !6, i64 292, !2, i64 296, !2, i64 304, !64, i64 312, !6, i64 328, !13, i64 336, !13, i64 344}
!62 = !{!"gs_string_s", !2, i64 0, !6, i64 8}
!63 = !{!"", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48}
!64 = !{!"gs_const_string_s", !2, i64 0, !6, i64 8}
!65 = !{!24, !6, i64 8816}
!66 = !{!24, !2, i64 5840}
!67 = !{!45, !6, i64 8864}
!68 = !{!13, !13, i64 0}
!69 = !{!27, !27, i64 0}
!70 = !{!71, !2, i64 0}
!71 = !{!"gx_device_color_s", !2, i64 0, !3, i64 8, !42, i64 352, !6, i64 360, !39, i64 368, !72, i64 632}
!72 = !{!"_mask", !73, i64 0, !13, i64 8, !2, i64 16}
!73 = !{!"mp_", !6, i64 0, !6, i64 4}
!74 = !{!45, !6, i64 8976}
!75 = !{!45, !15, i64 108}
!76 = !{!24, !6, i64 112}
!77 = !{!32, !32, i64 0}
!78 = !{!24, !13, i64 8840}
!79 = !{!11, !2, i64 1200}
!80 = !{!24, !2, i64 24}
!81 = !{!51, !2, i64 64}
!82 = !{!51, !2, i64 24}
!83 = !{!11, !15, i64 108}
!84 = !{!24, !13, i64 8832}
!85 = !{!45, !6, i64 8876}
!86 = !{!45, !6, i64 8956}
!87 = !{!88, !2, i64 0}
!88 = !{!"gs_param_string_s", !2, i64 0, !6, i64 8, !6, i64 12}
!89 = !{!88, !6, i64 8}
!90 = !{!88, !6, i64 12}
!91 = !{!45, !6, i64 8948}
!92 = !{!45, !6, i64 8848}
!93 = !{!45, !6, i64 8960}
!94 = !{!45, !6, i64 8904}
!95 = !{!45, !6, i64 8868}
!96 = !{!45, !6, i64 8872}
!97 = !{!45, !6, i64 9012}
!98 = !{!45, !6, i64 8908}
!99 = !{!100, !2, i64 0}
!100 = !{!"gs_param_list_s", !2, i64 0, !2, i64 8, !6, i64 16}
!101 = !{!102, !2, i64 56}
!102 = !{!"gs_param_list_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64}
!103 = !{!11, !6, i64 100}
!104 = !{!11, !6, i64 112}
!105 = !{!11, !6, i64 116}
!106 = !{!11, !6, i64 120}
!107 = !{!11, !6, i64 124}
!108 = !{!45, !2, i64 1184}
!109 = !{!45, !2, i64 1192}
!110 = !{!45, !6, i64 8952}
!111 = !{!45, !6, i64 84}
!112 = !{!24, !2, i64 8824}
!113 = !{!47, !2, i64 1352}
!114 = !{!51, !2, i64 72}
!115 = !{!116, !2, i64 576}
!116 = !{!"gs_image1_s", !2, i64 0, !28, i64 8, !6, i64 32, !6, i64 36, !6, i64 40, !3, i64 44, !6, i64 564, !3, i64 568, !6, i64 572, !2, i64 576, !6, i64 584, !6, i64 588, !3, i64 592, !3, i64 596}
!117 = !{!116, !3, i64 568}
!118 = !{!119, !2, i64 24}
!119 = !{!"gdev_vector_image_enum_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !13, i64 32, !6, i64 40, !6, i64 44, !3, i64 48, !3, i64 308, !2, i64 568, !2, i64 576, !6, i64 584, !6, i64 588, !6, i64 592, !6, i64 596, !6, i64 600}
!120 = !{!116, !6, i64 584}
!121 = !{!116, !6, i64 572}
!122 = !{!116, !6, i64 40}
!123 = !{!45, !6, i64 8972}
!124 = !{!28, !27, i64 16}
!125 = !{!28, !27, i64 20}
!126 = !{!28, !27, i64 0}
!127 = !{!116, !6, i64 32}
!128 = !{!28, !27, i64 8}
!129 = !{!116, !6, i64 36}
!130 = !{!28, !27, i64 4}
!131 = !{!28, !27, i64 12}
!132 = !{!119, !6, i64 584}
!133 = !{!119, !6, i64 588}
!134 = !{!45, !6, i64 8968}
!135 = !{!45, !6, i64 8964}
!136 = !{!116, !6, i64 564}
!137 = !{!119, !6, i64 44}
!138 = !{!24, !2, i64 5848}
!139 = !{!45, !6, i64 8896}
!140 = !{!45, !6, i64 8880}
!141 = !{!45, !6, i64 8884}
!142 = !{!45, !6, i64 8888}
!143 = !{!45, !6, i64 8900}
!144 = !{!45, !6, i64 9008}
!145 = !{!24, !15, i64 108}
!146 = !{!45, !13, i64 9000}
!147 = !{!45, !6, i64 9020}
!148 = !{!45, !6, i64 8984}
!149 = !{!45, !6, i64 8988}
!150 = !{!45, !6, i64 9016}
!151 = !{!45, !13, i64 8992}
!152 = !{!45, !6, i64 112}
!153 = !{!154, !2, i64 16}
!154 = !{!"gx_image_enum_common_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !13, i64 32, !6, i64 40, !6, i64 44, !3, i64 48, !3, i64 308}
!155 = !{!119, !6, i64 600}
!156 = !{!119, !2, i64 568}
!157 = !{!119, !2, i64 576}
!158 = !{!119, !6, i64 592}
!159 = !{!160, !2, i64 0}
!160 = !{!"gx_image_plane_s", !2, i64 0, !6, i64 8, !6, i64 12}
!161 = !{!160, !6, i64 8}
!162 = !{!160, !6, i64 12}
!163 = !{!45, !13, i64 8840}
