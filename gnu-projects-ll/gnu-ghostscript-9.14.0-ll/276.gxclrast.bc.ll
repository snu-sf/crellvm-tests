; ModuleID = './gxclrast.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gx_clist_state_s = type { [2 x i64], %struct.gx_device_color_saved_s, i32, i64, i64, %struct.gs_int_point_s, [2 x i64], [2 x %struct.gx_device_color_s], %struct.gx_cmd_rect, i32, i16, i16, i32, i32, i32, %struct.cmd_list_s, %struct.gx_colors_usage_s }
%struct.gx_device_color_saved_s = type { %struct.gx_device_color_type_s*, %union._svc, %struct.gs_int_point_s }
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
%struct.gx_device_color_s = type { %struct.gx_device_color_type_s*, %union._c, %struct.gs_int_point_s, i32, %struct.gs_client_color_s, %struct._mask }
%union._c = type { %struct._col }
%struct._col = type { %struct.gx_device_halftone_s*, i16, [64 x i8], [64 x i32], i16, i64 }
%struct.gx_device_halftone_s = type { %struct.gx_ht_order_s, %struct.rc_header_s, i64, i32, %struct.gx_ht_order_component_s*, i32, i32, i32, i32 }
%struct.gx_ht_order_s = type { %struct.gx_ht_cell_params_s, i16, i16, i16, i16, i16, i16, i32, i32, i32, %struct.gx_ht_order_procs_s*, %struct.gs_memory_s*, i32*, i8*, %struct.gx_ht_cache_s*, %struct.gx_transfer_map_s*, %struct.gx_ht_order_screen_params_s, i8*, i32 }
%struct.gx_ht_cell_params_s = type { i16, i16, i16, i16, i16, i16, i64, i16, i16, i32, i32, i32 }
%struct.gx_ht_order_procs_s = type { i32, i32 (%struct.gx_ht_order_s*, i8*)*, i32 (%struct.gx_ht_order_s*, i32, %struct.gs_int_point_s*)*, i32 (%struct.gx_ht_tile_s*, i32, %struct.gx_ht_order_s*)*, i32 (%struct.gx_ht_order_s*, i16, i8*, i32, i32, i32, i32, i32)* }
%struct.gx_ht_tile_s = type { %struct.gx_strip_bitmap_s, i32, i32 }
%struct.gx_strip_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16, i16, i16, i32 }
%struct.gx_ht_cache_s = type { i8*, i32, %struct.gx_ht_tile_s*, i32, %struct.gx_ht_order_s, i32, i32, i32, i64, %struct.gx_ht_tile_s* (%struct.gx_ht_cache_s*, i32)* }
%struct.gx_transfer_map_s = type { %struct.rc_header_s, {}*, %struct.gs_mapping_closure_s, i64, [256 x i16] }
%struct.gs_mapping_closure_s = type { float (double, %struct.gx_transfer_map_s*, i8*)*, i8* }
%struct.gx_ht_order_screen_params_s = type { %struct.gs_matrix_s, i64 }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.rc_header_s = type { i64, %struct.gs_memory_s*, void (%struct.gs_memory_s*, i8*, i8*)* }
%struct.gx_ht_order_component_s = type { %struct.gx_ht_order_s, i32, i32 }
%struct.gs_client_color_s = type { %struct.gs_pattern_instance_s*, %struct.gs_paint_color_s }
%struct.gs_pattern_instance_s = type { %struct.rc_header_s, %struct.gs_pattern_type_s*, %struct.gs_state_s*, i64 }
%struct.gs_pattern_type_s = type { i32, %struct.pp_ }
%struct.pp_ = type { i32 (%struct.gs_pattern_template_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_pattern_template_s*, %struct.gs_matrix_s*, %struct.gs_state_s*, %struct.gs_memory_s*)*, %struct.gs_pattern_template_s* (%struct.gs_pattern_instance_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_state_s*)* }
%struct.gs_pattern_template_s = type { %struct.gs_pattern_type_s*, i32, %struct.gs_uid_s, i8* }
%struct.gs_uid_s = type { i64, i64* }
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
%struct.gs_halftone_s = type { i32, %struct.rc_header_s, %union.anon.8 }
%union.anon.8 = type { %struct.gs_colorscreen_halftone_s }
%struct.gs_colorscreen_halftone_s = type { %union._css }
%union._css = type { [4 x %struct.gs_screen_halftone_s] }
%struct.gs_screen_halftone_s = type { float, float, float (double, double)*, float, float }
%struct.gs_cie_render_s = type { i32, %struct.rc_header_s, i64, i8*, %struct.gs_cie_wb_s, %struct.gs_matrix3_s, %struct.gs_range3_s, %struct.gs_cie_transform_proc3_s, %struct.gs_matrix3_s, %struct.gs_cie_render_proc3_s, %struct.gs_range3_s, %struct.gs_matrix3_s, %struct.gs_cie_render_proc3_s, %struct.gs_range3_s, %struct.gs_cie_render_table_s, %struct.gs_range3_s, %struct.gs_range3_s, %struct.gs_matrix3_s, [3 x float], %struct.gs_matrix3_s, %struct.gs_vector3_s, %struct.gs_vector3_s, %struct.anon.11 }
%struct.gs_cie_wb_s = type { %struct.gs_vector3_s, %struct.gs_vector3_s }
%struct.gs_cie_transform_proc3_s = type { i32 (i32, double, %struct.gs_cie_wbsd_s*, %struct.gs_cie_render_s*, float*)*, i8*, %struct.gs_const_string_s, i8* }
%struct.gs_cie_wbsd_s = type { %struct.anon.10, %struct.anon.10, %struct.anon.10, %struct.anon.10 }
%struct.anon.10 = type { %struct.gs_vector3_s, %struct.gs_vector3_s }
%struct.gs_cie_render_proc3_s = type { [3 x float (double, %struct.gs_cie_render_s*)*] }
%struct.gs_cie_render_table_s = type { %struct.gx_color_lookup_table_s, %struct.gs_cie_render_table_procs_s }
%struct.gx_color_lookup_table_s = type { i32, [4 x i32], i32, %struct.gs_const_string_s* }
%struct.gs_cie_render_table_procs_s = type { [4 x i16 (i8, %struct.gs_cie_render_s*)*] }
%struct.gs_range3_s = type { [3 x %struct.gs_range_s] }
%struct.gs_matrix3_s = type { %struct.gs_vector3_s, %struct.gs_vector3_s, %struct.gs_vector3_s, i32 }
%struct.gs_vector3_s = type { float, float, float }
%struct.anon.11 = type { %struct.gx_cie_vector_cache3_s, [3 x %struct.gx_cie_float_fixed_cache_s], [4 x %union.gx_cie_scalar_cache_s], i32 }
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
%struct.gx_transfer_s = type { i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s* }
%struct.gx_color_map_procs_s = type { void (i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32, %struct.gs_color_space_s*)*, void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_imager_state_s*, %struct.gx_device_s*)* }
%struct.gx_pattern_cache_s = type { %struct.gs_memory_s*, %struct.gx_color_tile_s*, i32, i32, i32, i64, i64, void (%struct.gx_pattern_cache_s*)* }
%struct.gx_color_tile_s = type { i64, i32, %struct.gs_uid_s, i32, i32, %struct.gs_matrix_s, %struct.gs_rect_s, %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s, %struct.gx_pattern_trans_s*, %union.gx_device_clist_s*, i8, i8, i8, [2 x i8], i32, i32, i32 }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.gx_pattern_trans_s = type { %struct.gx_device_s*, i8*, %struct.gs_memory_s*, %struct.gx_pattern_trans_s*, %struct.gs_int_rect_s, i32, i32, i32, i32, i32, i32, %struct.pdf14_nonseparable_blending_procs_s*, i32, i32, %struct.gs_int_rect_s*, void (i32, i32, i32, i32, i32, i32, %struct.gx_color_tile_s*, %struct.gx_pattern_trans_s*)*, i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)* }
%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }
%struct.pdf14_nonseparable_blending_procs_s = type { void (i32, i8*, i8*, i8*)*, void (i32, i8*, i8*, i8*)* }
%struct.gx_image_enum_s = type opaque
%union.gx_device_clist_s = type { %struct.gx_device_clist_writer_s }
%struct.gx_device_clist_writer_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, %struct.gx_device_buf_procs_s, %struct.gs_memory_s*, i8*, i32, %struct.gx_band_params_s, i32, i32, %struct.gx_bits_cache_chunk_s, %struct.gx_bits_cache_s, i32, i32, %struct.tile_hash*, i32, i32, %struct.gx_band_page_info_s, i32, i64, %struct.clist_icctable_s*, %struct.gsicc_link_cache_s*, i32, %struct.gsicc_link_cache_s**, i32, %struct.gx_clist_state_s*, i8*, i8*, i8*, %struct.cmd_list_s*, %struct.cmd_list_s, i32, i32, i32, i32, %struct.gx_strip_bitmap_s, i32, i32, i32, %struct.gs_imager_state_s, i32, i32, i32, i32, [11 x float], %struct.gx_clip_path_s*, i64, %struct.clist_color_space_s, [4 x i64], i64, i64, i64, i64, i32, i32, i32, i32, i32 (%struct.gx_device_s*, i32)*, i32, %struct.gs_pattern1_instance_s*, i32, i32, i32, i32, i32, i32, %struct.clist_writer_cropping_buffer_s*, i64, i32, i32, i32, i32, %struct.gx_device_color_info_s }
%struct.gx_device_cached_colors_s = type { i64, i64 }
%struct.gx_stroked_gradient_recognizer_s = type { i32, [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s] }
%struct.gdev_space_params_s = type { i64, i64, %struct.gx_band_params_s, i32, i32 }
%struct.cmm_dev_profile_s = type { [4 x %struct.cmm_profile_s*], %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, [4 x %struct.gsicc_rendering_param_s], i32, i32, i32, i32, i32, i32, %struct.gsicc_namelist_s*, i32, %struct.gs_memory_s*, %struct.rc_header_s }
%struct.gx_page_device_procs_s = type { i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* }
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i8*, i8**)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i64 (%struct.gx_device_s*, i16*)*, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i32, i32*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)*, i32 (%struct.gx_device_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, void (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* }
%struct.gx_tile_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16 }
%struct.gx_xfont_procs_s = type opaque
%struct.gx_path_s = type { %struct.gx_path_segments_s, %struct.gs_memory_s*, i32, %struct.gx_path_segments_s*, %struct.segment_s*, %struct.gs_fixed_rect_s, %struct.segment_s*, i8, i8, i8, i8, i8, i32, i32, %struct.gs_fixed_point_s, %struct.gx_path_procs_s* }
%struct.gx_path_segments_s = type { %struct.rc_header_s, %struct.psc_ }
%struct.psc_ = type { %struct.subpath_s*, %struct.subpath_s* }
%struct.subpath_s = type { %struct.segment_s*, %struct.segment_s*, i16, i16, %struct.gs_fixed_point_s, %struct.segment_s*, i32, %struct.line_close_segment, i8 }
%struct.line_close_segment = type { %struct.segment_s*, %struct.segment_s*, i16, i16, %struct.gs_fixed_point_s, %struct.subpath_s* }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.segment_s = type { %struct.segment_s*, %struct.segment_s*, i16, i16, %struct.gs_fixed_point_s }
%struct.gx_path_procs_s = type { i32 (%struct.gx_path_s*, i32, i32)*, i32 (%struct.gx_path_s*, i32, i32, i32)*, i32 (%struct.gx_path_s*, i32, i32, i32)*, i32 (%struct.gx_path_s*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_path_s*, i32)*, i8 (%struct.gx_path_s*, i8)* }
%struct.gx_fill_params_s = type { i32, %struct.gs_fixed_point_s, float }
%struct.gx_stroke_params_s = type { float, i32 }
%struct.gs_fixed_edge_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_image1_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, i32, i32, i32, [130 x float], i32, i32, i32, %struct.gs_color_space_s*, i32, i32, i32, i32 }
%struct.gx_image_type_s = type { %struct.gs_memory_struct_type_s*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gs_imager_state_s*, %struct.gs_image_common_s*, %struct.gs_int_point_s*)*, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s**)*, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s*)*, void (%struct.gs_image_common_s*, %struct.gs_memory_s*)*, i32 }
%struct.gs_image_common_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s }
%struct.gx_image_enum_common_s = type { %struct.gx_image_type_s*, %struct.gx_image_enum_procs_s*, %struct.gx_device_s*, %struct.gs_memory_s*, i64, i32, i32, [65 x i32], [65 x i32] }
%struct.gx_image_enum_procs_s = type { i32 (%struct.gx_image_enum_common_s*, %struct.gx_image_plane_s*, i32, i32*)*, i32 (%struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_image_enum_common_s*)*, i32 (%struct.gx_image_enum_common_s*, i8*)* }
%struct.gx_image_plane_s = type { i8*, i32, i32 }
%struct.gs_get_bits_params_s = type { i64, [64 x i8*], i32, i32, i32 }
%struct.gs_composite_s = type { %struct.gs_composite_type_s*, i64, i32, %struct.gs_composite_s*, %struct.gs_composite_s* }
%struct.gs_composite_type_s = type { i8, %struct.gs_composite_type_procs_s }
%struct.gs_composite_type_procs_s = type { i32 (%struct.gs_composite_s*, %struct.gx_device_s**, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, %struct.gs_composite_s*)*, i32 (%struct.gs_composite_s*, i8*, i32*, %struct.gx_device_clist_writer_s*)*, i32 (%struct.gs_composite_s**, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, i32, i32, %struct.gs_imager_state_s*)*, i32 (%struct.gs_composite_s*, %struct.gs_composite_s**, %struct.gx_device_s*)*, i32 (%struct.gs_composite_s*, i8, i8)*, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, i32*, i32*, i32, i32)* }
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
%struct.gs_fill_attributes_s = type { %struct.gs_fixed_rect_s*, i32, %struct.gx_device_halftone_s*, i32, i32, i32, %struct.patch_fill_state_s* }
%struct.patch_fill_state_s = type { %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_color_space_s*, i32, [64 x float], %struct.gx_device_s*, %struct.gsicc_link_s*, %struct.gs_shading_mesh_s*, %struct.gs_fixed_rect_s, %struct.gs_function_s*, i32, i32, i32, i32, %struct.wedge_vertex_list_elem_s*, %struct.wedge_vertex_list_elem_s*, i32, i32, %struct.gs_client_color_s, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, %struct.gs_memory_s*, %struct.gs_color_index_cache_s* }
%struct.gs_shading_mesh_s = type { %struct.gs_shading_head_s, %struct.gs_shading_mesh_params_s }
%struct.gs_shading_head_s = type { i32, %struct.gs_shading_procs_s }
%struct.gs_shading_procs_s = type { i32 (%struct.gs_shading_s*, %struct.gs_rect_s*, %struct.gs_fixed_rect_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*)* }
%struct.gs_shading_s = type { %struct.gs_shading_head_s, %struct.gs_shading_params_s }
%struct.gs_shading_params_s = type { %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_client_color_s*, i32, %struct.gs_rect_s, i32 }
%struct.gs_shading_mesh_params_s = type { %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_client_color_s*, i32, %struct.gs_rect_s, i32, %struct.gs_data_source_s, i32, i32, float*, %struct.gs_function_s* }
%struct.gs_data_source_s = type { i32 (%struct.gs_data_source_s*, i64, i32, i8*, i8**)*, i32, %union.d_ }
%union.d_ = type { %struct.gs_const_string_s }
%struct.gs_function_s = type { %struct.gs_function_head_s, %struct.gs_function_params_s }
%struct.gs_function_head_s = type { i32, %struct.gs_function_procs_s }
%struct.gs_function_procs_s = type { i32 (%struct.gs_function_s*, float*, float*)*, i32 (%struct.gs_function_s*, float*, float*, i32*)*, void (%struct.gs_function_s*, %struct.gs_function_info_s*)*, i32 (%struct.gs_function_s*, %struct.gs_param_list_s*)*, i32 (%struct.gs_function_s*, %struct.gs_function_s**, %struct.gs_range_s*, %struct.gs_memory_s*)*, void (%struct.gs_function_params_s*, %struct.gs_memory_s*)*, void (%struct.gs_function_s*, i32, %struct.gs_memory_s*)*, i32 (%struct.gs_function_s*, %struct.stream_s*)* }
%struct.gs_function_info_s = type { %struct.gs_data_source_s*, i64, %struct.gs_function_s**, i32 }
%struct.gs_function_params_s = type { i32, float*, i32, float* }
%struct.wedge_vertex_list_elem_s = type { %struct.gs_fixed_point_s, i32, i32, %struct.wedge_vertex_list_elem_s*, %struct.wedge_vertex_list_elem_s* }
%struct.gs_color_index_cache_s = type opaque
%struct.gs_devn_params_s = type opaque
%struct.gx_process_page_options_s = type { i32 (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i32, i32, i8**)*, void (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_int_rect_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, i8*)*, i8*, i32 }
%struct.gx_device_buf_procs_s = type { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)*, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)*, void (%struct.gx_device_s*)* }
%struct.gx_render_plane_s = type { i32, i32, i32 }
%struct.gx_device_buf_space_s = type { i64, i64, i32 }
%struct.gx_band_params_s = type { i32, i32, i64 }
%struct.gx_bits_cache_chunk_s = type { %struct.gx_bits_cache_chunk_s*, i8*, i32, i32 }
%struct.gx_bits_cache_s = type { %struct.gx_bits_cache_chunk_s*, i32, i32, i32 }
%struct.tile_hash = type { i64 }
%struct.gx_band_page_info_s = type { [4096 x i8], i8*, [4096 x i8], i8*, %struct.clist_io_procs_s*, i32, i64, i64, %struct.gx_band_params_s }
%struct.clist_io_procs_s = type { i32 (i8*, i8*, i8**, %struct.gs_memory_s*, %struct.gs_memory_s*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*)*, i32 (i8*, i32, i8*)*, i32 (i8*, i32, i8*)*, i32 (i8*, i32)*, i32 (i8*)*, i64 (i8*)*, void (i8*, i32, i8*)*, i32 (i8*, i64, i32, i8*)* }
%struct.clist_icctable_s = type { i32, %struct.gs_memory_s*, %struct.clist_icctable_entry_s*, %struct.clist_icctable_entry_s* }
%struct.clist_icctable_entry_s = type { %struct.clist_icc_serial_entry_s, %struct.clist_icctable_entry_s*, %struct.cmm_profile_s*, i32 }
%struct.clist_icc_serial_entry_s = type { i64, i64, i32 }
%struct.gx_clip_path_s = type { %struct.gx_path_s, %struct.gx_clip_rect_list_s, i32, %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s, %struct.gx_clip_rect_list_s*, i32, %struct.gx_cpath_path_list_s*, i64 }
%struct.gx_clip_rect_list_s = type { %struct.rc_header_s, %struct.gx_clip_list_s }
%struct.gx_clip_list_s = type { %struct.gx_clip_rect_s, %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s*, i32, i32, i32 }
%struct.gx_clip_rect_s = type { %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s*, i32, i32, i32, i32, i8 }
%struct.gx_cpath_path_list_s = type { %struct.gx_path_s, %struct.rc_header_s, i32, %struct.gx_cpath_path_list_s* }
%struct.clist_color_space_s = type { i8, i64, %struct.clist_icc_color_s, %struct.gs_color_space_s* }
%struct.clist_icc_color_s = type { i64, i8, i32, i32, i32 }
%struct.gs_pattern1_instance_s = type { %struct.rc_header_s, %struct.gs_pattern_type_s*, %struct.gs_state_s*, i64, %struct.gs_pattern1_template_s, %struct.gs_matrix_s, %struct.gs_rect_s, i32, i32, i32, i32, i32, %struct.gs_int_point_s, i64 }
%struct.gs_pattern1_template_s = type { %struct.gs_pattern_type_s*, i32, %struct.gs_uid_s, i8*, i32, i32, i32, %struct.gs_rect_s, float, float, i32 (%struct.gs_client_color_s*, %struct.gs_state_s*)* }
%struct.clist_writer_cropping_buffer_s = type { i32, i32, i32, i32, %struct.clist_writer_cropping_buffer_s* }
%struct.gx_device_color_info_s = type { i32, i32, i32, i16, i8, i32, i32, i32, i32, %struct.gx_device_anti_alias_info_s, i32, [64 x i8], [64 x i8], [64 x i64], i8*, i32, i64, i32 }
%struct.gx_device_anti_alias_info_s = type { i32, i32 }
%struct.gx_cie_joint_caches_s = type { i64, i64, i32, i32, %struct.rc_header_s, i32 (<2 x float>, float, i16*, float*, %struct.gs_imager_state_s*, %struct.gs_color_space_s*)*, i32, i32, %struct.gx_cie_vector_cache3_s, %struct.gs_cie_wbsd_s, i32, %struct.gx_cie_vector_cache3_s, i32 }
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, {}*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
%struct.gs_state_s = type opaque
%struct.gs_paint_color_s = type { [64 x float] }
%struct._mask = type { %struct.mp_, i64, %struct.gx_color_tile_s* }
%struct.mp_ = type { i32, i32 }
%struct.gx_rop_source_s = type { i8*, i32, i32, i64, [2 x i64], i32, i32 }
%union._svc = type { %struct._svbin, [304 x i8] }
%struct._svbin = type { [2 x i64], i32, i32 }
%struct.gs_int_point_s = type { i32, i32 }
%struct.gx_cmd_rect = type { i32, i32, i32, i32 }
%struct.cmd_list_s = type { %struct.cmd_prefix_s*, %struct.cmd_prefix_s* }
%struct.cmd_prefix_s = type { %struct.cmd_prefix_s*, i32, i64 }
%struct.gx_colors_usage_s = type { i64, i32, %struct.gs_int_rect_s }
%struct.gx_device_clist_reader_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, %struct.gx_device_buf_procs_s, %struct.gs_memory_s*, i8*, i32, %struct.gx_band_params_s, i32, i32, %struct.gx_bits_cache_chunk_s, %struct.gx_bits_cache_s, i32, i32, %struct.tile_hash*, i32, i32, %struct.gx_band_page_info_s, i32, i64, %struct.clist_icctable_s*, %struct.gsicc_link_cache_s*, i32, %struct.gsicc_link_cache_s**, %struct.gx_render_plane_s, %struct.gx_placed_page_s*, %struct.gx_colors_usage_s*, i32, i8*, i32, %struct.clist_render_thread_control_s*, i8*, i32, i32, i32 }
%struct.gx_placed_page_s = type { %struct.gx_saved_page_s*, %struct.gs_int_point_s }
%struct.gx_saved_page_s = type { [32 x i8], %struct.gx_device_color_info_s, [4096 x i8], [4096 x i8], %struct.clist_io_procs_s*, i32, i64, %struct.gx_band_params_s, %struct.gs_memory_s*, i32, i8* }
%struct.clist_render_thread_control_s = type opaque
%struct.command_buf_s = type { i8*, i32, i8*, i8*, i8*, %struct.stream_s*, i32 }
%struct.tile_slot = type { %struct.gx_cached_bits_head_s, i16, i16, i16, i16, i64, i8, i8, i16, i16, i16, i8 }
%struct.gx_cached_bits_head_s = type { i32, i32 }
%struct.gx_device_cpath_accum_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gs_memory_s*, %struct.gs_int_rect_s, %struct.gs_int_rect_s, %struct.gx_clip_list_s }
%struct._cas = type { i32, %struct.gx_device_color_s }
%union.im_ = type { %struct.gs_image4_s }
%struct.gs_image4_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, i32, i32, i32, [130 x float], i32, i32, i32, %struct.gs_color_space_s*, i32, [130 x i32], i32 }
%struct.ht_buff_s = type { i32, i32, i8*, i8* }
%struct.gx_device_clip_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, %struct.gx_clip_list_s, %struct.gx_clip_rect_s*, %struct.gs_int_point_s, %struct.gs_fixed_rect_s, i32 }
%struct.stream_RLD_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], i32, i32, i32 }
%struct.stream_CFD_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.gs_data_image_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, i32, i32, i32, [130 x float], i32 }
%struct.gs_indexed_map_s = type { %struct.rc_header_s, %union.anon.7, i8*, i32, float* }
%union.anon.7 = type { i32 (%struct.gs_color_space_s*, i32, float*)* }
%struct.gs_indexed_params_s = type { i32, i32, %union.anon.6, i32 }
%union.anon.6 = type { %struct.gs_const_string_s }
%struct.gs_c_param_list_s = type { %struct.gs_param_list_procs_s*, %struct.gs_memory_s*, i32, %struct.gs_c_param_s*, %struct.gs_param_list_s*, i32, i32, i32 }
%struct.gs_c_param_s = type opaque

@.str = private unnamed_addr constant [34 x i8] c"clist_playback_band(cbuf_storage)\00", align 1
@clist_playback_band.cls_initial = internal constant %struct.gx_clist_state_s { [2 x i64] [i64 -1, i64 -1], %struct.gx_device_color_saved_s { %struct.gx_device_color_type_s* @gx_dc_type_data_none, %union._svc zeroinitializer, %struct.gs_int_point_s zeroinitializer }, i32 0, i64 0, i64 0, %struct.gs_int_point_s zeroinitializer, [2 x i64] [i64 -1, i64 -1], [2 x %struct.gx_device_color_s] zeroinitializer, %struct.gx_cmd_rect zeroinitializer, i32 252, i16 0, i16 0, i32 0, i32 0, i32 16383, %struct.cmd_list_s zeroinitializer, %struct.gx_colors_usage_s { i64 0, i32 0, %struct.gs_int_rect_s { %struct.gs_int_point_s { i32 2147483647, i32 2147483647 }, %struct.gs_int_point_s { i32 -2147483648, i32 -2147483648 } } } }, align 8
@gx_dc_type_data_none = external constant %struct.gx_device_color_type_s, align 8
@clist_imager_state_initial = external constant %struct.gs_imager_state_s, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"clist_playback_band\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"clist_playback_band(data_bits)\00", align 1
@cmd_delta_offsets = external constant [0 x i64], align 8
@s_RLD_template = external constant %struct.stream_template_s, align 8
@s_CFD_template = external constant %struct.stream_template_s, align 8
@gx_dc_type_data_pure = external constant %struct.gx_device_color_type_s, align 8
@gx_dc_type_data_devn = external constant %struct.gx_device_color_type_s, align 8
@.str.3 = private unnamed_addr constant [17 x i8] c"clist image_data\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"read_create_compositor\00", align 1
@clist_playback_band.op_num_operands = internal constant [16 x i8] c"\02\02\01\01\04\06\06\06\04\04\04\04\02\02\00\00", align 16
@.str.5 = private unnamed_addr constant [18 x i8] c"clist_render_band\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"./base/gxclrast.c\00", align 1
@.str.7 = private unnamed_addr constant [53 x i8] c"Bad op %02x band y0 = %d file pos %ld buf pos %d/%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%4d:\00", align 1
@.str.9 = private unnamed_addr constant [52 x i8] c" %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x\0A\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"clist_playback_band(ht_buff)\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"clist_render_band exit\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"gxclrast(target compositor)\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"gxclrast discard compositor\00", align 1
@.str.14 = private unnamed_addr constant [41 x i8] c"Clist I/O error: cbp past end of buffer\0A\00", align 1
@st_transfer_map = external constant %struct.gs_memory_struct_type_s, align 8
@.str.15 = private unnamed_addr constant [33 x i8] c"cmd_select_map(default_transfer)\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"cmd_select_map(red)\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"cmd_select_map(green)\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"cmd_select_map(blue)\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"cmd_select_map(transfer)\00", align 1
@.str.20 = private unnamed_addr constant [33 x i8] c"cmd_select_map(black generation)\00", align 1
@.str.21 = private unnamed_addr constant [35 x i8] c"cmd_select_map(undercolor removal)\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"free_compositor\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"read_alloc_ht_buff\00", align 1
@.str.24 = private unnamed_addr constant [48 x i8] c" *** ht segment size doesn't fit in buffer ***\0A\00", align 1
@__func__.read_set_color_space = private unnamed_addr constant [21 x i8] c"read_set_color_space\00", align 1
@.str.25 = private unnamed_addr constant [45 x i8] c"Failed to find ICC profile during clist read\00", align 1
@gs_color_space_type_Indexed = external constant %struct.gs_color_space_type_s, align 8
@.str.26 = private unnamed_addr constant [12 x i8] c"indexed map\00", align 1
@.str.27 = private unnamed_addr constant [26 x i8] c"color_space indexed table\00", align 1
@gx_image_type_table = external constant [0 x %struct.gx_image_type_s*], align 8
@.str.28 = private unnamed_addr constant [17 x i8] c"clist put_params\00", align 1
@.str.29 = private unnamed_addr constant [20 x i8] c"cmd_resize_halftone\00", align 1
@st_ht_order_component_element = external constant %struct.gs_memory_struct_type_s, align 8
@st_device_halftone = external constant %struct.gs_memory_struct_type_s, align 8
@.str.30 = private unnamed_addr constant [18 x i8] c"cmd_create_dev_ht\00", align 1

; Function Attrs: nounwind uwtable
define i32 @clist_playback_band(i32 %playback_action, %struct.gx_device_clist_reader_s* %cdev, %struct.stream_s* %s, %struct.gx_device_s* %target, i32 %x0, i32 %y0, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %playback_action.addr = alloca i32, align 4
  %cdev.addr = alloca %struct.gx_device_clist_reader_s*, align 8
  %s.addr = alloca %struct.stream_s*, align 8
  %target.addr = alloca %struct.gx_device_s*, align 8
  %x0.addr = alloca i32, align 4
  %y0.addr = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %cbuf_storage = alloca i8*, align 8
  %cbuf = alloca %struct.command_buf_s, align 8
  %data_bits = alloca i8*, align 8
  %cbp = alloca i8*, align 8
  %dev_depth = alloca i32, align 4
  %dev_depth_bytes = alloca i32, align 4
  %odd_delta_shift = alloca i32, align 4
  %num_zero_bytes = alloca i32, align 4
  %tdev = alloca %struct.gx_device_s*, align 8
  %state = alloca %struct.gx_clist_state_s, align 8
  %set_colors = alloca i64*, align 8
  %set_dev_colors = alloca %struct.gx_device_color_s*, align 8
  %state_slot = alloca %struct.tile_slot*, align 8
  %state_tile = alloca %struct.gx_strip_bitmap_s, align 8
  %tile_bits = alloca %struct.tile_slot, align 8
  %tile_phase = alloca %struct.gs_int_point_s, align 4
  %color_phase = alloca %struct.gs_int_point_s, align 4
  %path = alloca %struct.gx_path_s, align 8
  %in_path = alloca i32, align 4
  %ppos = alloca %struct.gs_fixed_point_s, align 4
  %clip_path = alloca %struct.gx_clip_path_s, align 8
  %use_clip = alloca i32, align 4
  %pcpath = alloca %struct.gx_clip_path_s*, align 8
  %clip_accum = alloca %struct.gx_device_cpath_accum_s, align 8
  %target_box = alloca %struct.gs_fixed_rect_s, align 4
  %clip_save = alloca %struct._cas, align 8
  %in_clip = alloca i32, align 4
  %imager_state = alloca %struct.gs_imager_state_s, align 8
  %dev_color = alloca %struct.gx_device_color_s, align 8
  %dash_pattern = alloca [11 x float], align 16
  %fill_params = alloca %struct.gx_fill_params_s, align 4
  %stroke_params = alloca %struct.gx_stroke_params_s, align 4
  %halftone_type = alloca i32, align 4
  %image = alloca %union.im_, align 8
  %image_rect = alloca %struct.gs_int_rect_s, align 4
  %pcs = alloca %struct.gs_color_space_s*, align 8
  %image_info = alloca %struct.gx_image_enum_common_s*, align 8
  %planes = alloca [32 x %struct.gx_image_plane_s], align 16
  %data_height = alloca i32, align 4
  %data_size = alloca i32, align 4
  %data_on_heap = alloca i8*, align 8
  %vs = alloca [6 x i32], align 16
  %notes = alloca i32, align 4
  %data_x = alloca i32, align 4
  %code = alloca i32, align 4
  %ht_buff = alloca %struct.ht_buff_s, align 8
  %orig_target = alloca %struct.gx_device_s*, align 8
  %clipper_dev = alloca %struct.gx_device_clip_s, align 8
  %clipper_dev_open = alloca i32, align 4
  %pfs = alloca %struct.patch_fill_state_s, align 8
  %op = alloca i32, align 4
  %plane_height = alloca i32, align 4
  %pcomp_first = alloca %struct.gs_composite_s*, align 8
  %pcomp_last = alloca %struct.gs_composite_s*, align 8
  %bits = alloca %struct.tile_slot, align 8
  %cleanup.dest.slot = alloca i32
  %cbox = alloca %struct.gs_fixed_rect_s, align 4
  %compress = alloca i32, align 4
  %depth = alloca i32, align 4
  %raster = alloca i32, align 4
  %source = alloca i8*, align 8
  %colors111 = alloca [2 x i64], align 16
  %pcolor = alloca i64*, align 8
  %pdcolor = alloca %struct.gx_device_color_s*, align 8
  %log_op = alloca i32, align 4
  %_cbp = alloca i8*, align 8
  %_cbp170 = alloca i8*, align 8
  %_cbp204 = alloca i8*, align 8
  %_cbp220 = alloca i8*, align 8
  %cb = alloca i32, align 4
  %_cbp259 = alloca i8*, align 8
  %_cbp291 = alloca i8*, align 8
  %num_comp = alloca i32, align 4
  %_cbp324 = alloca i8*, align 8
  %delta = alloca i64, align 8
  %data362 = alloca i32, align 4
  %color = alloca i64, align 8
  %txy = alloca i32, align 4
  %_cbp629 = alloca i8*, align 8
  %_cbp671 = alloca i8*, align 8
  %_cbp689 = alloca i8*, align 8
  %width_bits = alloca i32, align 4
  %width_bytes = alloca i32, align 4
  %bytes = alloca i32, align 4
  %planes714 = alloca i32, align 4
  %plane_depth = alloca i32, align 4
  %pln = alloca i32, align 4
  %compression = alloca i8, align 1
  %out_bytes = alloca i32, align 4
  %_cbp727 = alloca i8*, align 8
  %_cbp745 = alloca i8*, align 8
  %plane_bits = alloca i8*, align 8
  %r = alloca %struct.stream_cursor_read_s, align 8
  %w = alloca %struct.stream_cursor_write_s, align 8
  %cleft = alloca i32, align 4
  %nread = alloca i32, align 4
  %sstate = alloca %struct.stream_RLD_state_s, align 8
  %sstate859 = alloca %struct.stream_CFD_state_s, align 8
  %full_height = alloca i32, align 4
  %mat = alloca %struct.gs_matrix_s, align 4
  %nb = alloca i32, align 4
  %n = alloca i32, align 4
  %dot_length = alloca float, align 4
  %offset1081 = alloca float, align 4
  %cbox1141 = alloca %struct.gs_fixed_rect_s, align 4
  %rect_hl = alloca %struct.gs_fixed_rect_s, align 4
  %diff = alloca i32, align 4
  %_cbp1265 = alloca i8*, align 8
  %_cbp1283 = alloca i8*, align 8
  %_cbp1299 = alloca i8*, align 8
  %_cbp1316 = alloca i8*, align 8
  %_cbp1372 = alloca i8*, align 8
  %flags = alloca i32, align 4
  %plane = alloca i32, align 4
  %raster1 = alloca i32, align 4
  %_cbp1398 = alloca i8*, align 8
  %_cbp1436 = alloca i8*, align 8
  %_cbp1459 = alloca i8*, align 8
  %_cbp1492 = alloca i8*, align 8
  %bytes_per_plane = alloca i32, align 4
  %plane1510 = alloca i32, align 4
  %_cbp1519 = alloca i8*, align 8
  %plane1542 = alloca i32, align 4
  %cleft1583 = alloca i32, align 4
  %rleft = alloca i32, align 4
  %rdata = alloca i8*, align 8
  %plane1627 = alloca i32, align 4
  %data1628 = alloca i8*, align 8
  %len = alloca i32, align 4
  %pcomp = alloca %struct.gs_composite_s*, align 8
  %pcomp_opening = alloca %struct.gs_composite_s*, align 8
  %cb1845 = alloca i32, align 4
  %ht_size = alloca i32, align 4
  %tmp_w = alloca i32, align 4
  %ht_size1920 = alloca i32, align 4
  %tmp_w1929 = alloca i32, align 4
  %color_size = alloca i32, align 4
  %left = alloca i32, align 4
  %offset1994 = alloca i32, align 4
  %l = alloca i32, align 4
  %pdct = alloca %struct.gx_device_color_type_s*, align 8
  %type_and_flag = alloca i8, align 1
  %is_continuation = alloca i8, align 1
  %tmp_w2016 = alloca i32, align 4
  %tmp_w2029 = alloca i32, align 4
  %i = alloca i32, align 4
  %v = alloca i32, align 4
  %b = alloca i32, align 4
  %fpath = alloca %struct.gx_path_s, align 8
  %ppath = alloca %struct.gx_path_s*, align 8
  %left2269 = alloca %struct.gs_fixed_edge_s, align 4
  %right = alloca %struct.gs_fixed_edge_s, align 4
  %ybot = alloca i32, align 4
  %ytop = alloca i32, align 4
  %options = alloca i32, align 4
  %swap_axes = alloca i32, align 4
  %wh = alloca i32, align 4
  %x0f = alloca i32, align 4
  %y0f = alloca i32, align 4
  %ttdev = alloca %struct.gx_device_s*, align 8
  %_cbp2312 = alloca i8*, align 8
  %_cbp2330 = alloca i8*, align 8
  %_cbp2348 = alloca i8*, align 8
  %_cbp2366 = alloca i8*, align 8
  %_cbp2384 = alloca i8*, align 8
  %_cbp2402 = alloca i8*, align 8
  %_cbp2420 = alloca i8*, align 8
  %_cbp2438 = alloca i8*, align 8
  %_cbp2454 = alloca i8*, align 8
  %_cbp2471 = alloca i8*, align 8
  %_cbp2485 = alloca i8*, align 8
  %num_components2540 = alloca i32, align 4
  %c2543 = alloca [4 x [64 x i32]], align 16
  %cc = alloca [4 x i32*], align 16
  %colors_mask = alloca i8, align 1
  %i2544 = alloca i8, align 1
  %j = alloca i8, align 1
  %m = alloca i8, align 1
  %fa = alloca %struct.gs_fill_attributes_s, align 8
  %clip = alloca %struct.gs_fixed_rect_s, align 4
  %hh = alloca i32, align 4
  %_cbp2576 = alloca i8*, align 8
  %_cbp2594 = alloca i8*, align 8
  %_cbp2612 = alloca i8*, align 8
  %_cbp2630 = alloca i8*, align 8
  %_cbp2678 = alloca i8*, align 8
  %_cbp2732 = alloca i8*, align 8
  %pp = alloca i8*, align 8
  %code1 = alloca i32, align 4
  store i32 %playback_action, i32* %playback_action.addr, align 4, !tbaa !1
  store %struct.gx_device_clist_reader_s* %cdev, %struct.gx_device_clist_reader_s** %cdev.addr, align 8, !tbaa !4
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !4
  store %struct.gx_device_s* %target, %struct.gx_device_s** %target.addr, align 8, !tbaa !4
  store i32 %x0, i32* %x0.addr, align 4, !tbaa !6
  store i32 %y0, i32* %y0.addr, align 4, !tbaa !6
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %0 = bitcast i8** %cbuf_storage to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.command_buf_s* %cbuf to i8*
  call void @llvm.lifetime.start(i64 56, i8* %1) #1
  %2 = bitcast i8** %data_bits to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store i8* null, i8** %data_bits, align 8, !tbaa !4
  %3 = bitcast i8** %cbp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %dev_depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %dev_depth_bytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %odd_delta_shift to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %num_zero_bytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast %struct.gx_clist_state_s* %state to i8*
  call void @llvm.lifetime.start(i64 1808, i8* %9) #1
  %10 = bitcast i64** %set_colors to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast %struct.gx_device_color_s** %set_dev_colors to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = bitcast %struct.tile_slot** %state_slot to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = bitcast %struct.gx_strip_bitmap_s* %state_tile to i8*
  call void @llvm.lifetime.start(i64 48, i8* %13) #1
  %14 = bitcast %struct.tile_slot* %tile_bits to i8*
  call void @llvm.lifetime.start(i64 40, i8* %14) #1
  %15 = bitcast %struct.gs_int_point_s* %tile_phase to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = bitcast %struct.gs_int_point_s* %color_phase to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = bitcast %struct.gx_path_s* %path to i8*
  call void @llvm.lifetime.start(i64 128, i8* %17) #1
  %18 = bitcast i32* %in_path to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = bitcast %struct.gs_fixed_point_s* %ppos to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  %20 = bitcast %struct.gx_clip_path_s* %clip_path to i8*
  call void @llvm.lifetime.start(i64 304, i8* %20) #1
  %21 = bitcast i32* %use_clip to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = bitcast %struct.gx_clip_path_s** %pcpath to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #1
  %23 = bitcast %struct.gx_device_cpath_accum_s* %clip_accum to i8*
  call void @llvm.lifetime.start(i64 1848, i8* %23) #1
  %24 = bitcast %struct.gs_fixed_rect_s* %target_box to i8*
  call void @llvm.lifetime.start(i64 16, i8* %24) #1
  %25 = bitcast %struct._cas* %clip_save to i8*
  call void @llvm.lifetime.start(i64 664, i8* %25) #1
  %26 = bitcast i32* %in_clip to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #1
  store i32 0, i32* %in_clip, align 4, !tbaa !6
  %27 = bitcast %struct.gs_imager_state_s* %imager_state to i8*
  call void @llvm.lifetime.start(i64 1616, i8* %27) #1
  %28 = bitcast %struct.gx_device_color_s* %dev_color to i8*
  call void @llvm.lifetime.start(i64 656, i8* %28) #1
  %29 = bitcast [11 x float]* %dash_pattern to i8*
  call void @llvm.lifetime.start(i64 44, i8* %29) #1
  %30 = bitcast %struct.gx_fill_params_s* %fill_params to i8*
  call void @llvm.lifetime.start(i64 16, i8* %30) #1
  %31 = bitcast %struct.gx_stroke_params_s* %stroke_params to i8*
  call void @llvm.lifetime.start(i64 8, i8* %31) #1
  %32 = bitcast i32* %halftone_type to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #1
  %33 = bitcast %union.im_* %image to i8*
  call void @llvm.lifetime.start(i64 1112, i8* %33) #1
  %34 = bitcast %struct.gs_int_rect_s* %image_rect to i8*
  call void @llvm.lifetime.start(i64 16, i8* %34) #1
  %35 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %35) #1
  store %struct.gs_color_space_s* null, %struct.gs_color_space_s** %pcs, align 8, !tbaa !4
  %36 = bitcast %struct.gx_image_enum_common_s** %image_info to i8*
  call void @llvm.lifetime.start(i64 8, i8* %36) #1
  %37 = bitcast [32 x %struct.gx_image_plane_s]* %planes to i8*
  call void @llvm.lifetime.start(i64 512, i8* %37) #1
  %38 = bitcast i32* %data_height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %38) #1
  %39 = bitcast i32* %data_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %39) #1
  %40 = bitcast i8** %data_on_heap to i8*
  call void @llvm.lifetime.start(i64 8, i8* %40) #1
  %41 = bitcast [6 x i32]* %vs to i8*
  call void @llvm.lifetime.start(i64 24, i8* %41) #1
  %42 = bitcast i32* %notes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %42) #1
  %43 = bitcast i32* %data_x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %43) #1
  %44 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %44) #1
  store i32 0, i32* %code, align 4, !tbaa !6
  %45 = bitcast %struct.ht_buff_s* %ht_buff to i8*
  call void @llvm.lifetime.start(i64 24, i8* %45) #1
  %46 = bitcast %struct.gx_device_s** %orig_target to i8*
  call void @llvm.lifetime.start(i64 8, i8* %46) #1
  %47 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !4
  store %struct.gx_device_s* %47, %struct.gx_device_s** %orig_target, align 8, !tbaa !4
  %48 = bitcast %struct.gx_device_clip_s* %clipper_dev to i8*
  call void @llvm.lifetime.start(i64 1856, i8* %48) #1
  %49 = bitcast i32* %clipper_dev_open to i8*
  call void @llvm.lifetime.start(i64 4, i8* %49) #1
  %50 = bitcast %struct.patch_fill_state_s* %pfs to i8*
  call void @llvm.lifetime.start(i64 728, i8* %50) #1
  %51 = bitcast i32* %op to i8*
  call void @llvm.lifetime.start(i64 4, i8* %51) #1
  store i32 0, i32* %op, align 4, !tbaa !6
  %52 = bitcast i32* %plane_height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %52) #1
  store i32 0, i32* %plane_height, align 4, !tbaa !6
  %53 = bitcast %struct.gs_composite_s** %pcomp_first to i8*
  call void @llvm.lifetime.start(i64 8, i8* %53) #1
  store %struct.gs_composite_s* null, %struct.gs_composite_s** %pcomp_first, align 8, !tbaa !4
  %54 = bitcast %struct.gs_composite_s** %pcomp_last to i8*
  call void @llvm.lifetime.start(i64 8, i8* %54) #1
  store %struct.gs_composite_s* null, %struct.gs_composite_s** %pcomp_last, align 8, !tbaa !4
  %55 = bitcast %struct.tile_slot* %bits to i8*
  call void @llvm.lifetime.start(i64 40, i8* %55) #1
  %56 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %56, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %57 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !8
  %58 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %call = call i8* %57(%struct.gs_memory_s* %58, i32 4104, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i32 0, i32 0)) #6
  store i8* %call, i8** %cbuf_storage, align 8, !tbaa !4
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.3367

if.end:                                           ; preds = %entry
  %59 = load i8*, i8** %cbuf_storage, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %cbuf, i32 0, i32 0
  store i8* %59, i8** %data, align 8, !tbaa !11
  %size = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %cbuf, i32 0, i32 1
  store i32 4096, i32* %size, align 4, !tbaa !13
  %60 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !4
  %s1 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %cbuf, i32 0, i32 5
  store %struct.stream_s* %60, %struct.stream_s** %s1, align 8, !tbaa !14
  %end_status = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %cbuf, i32 0, i32 6
  store i32 0, i32* %end_status, align 4, !tbaa !15
  %data2 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %cbuf, i32 0, i32 0
  %61 = load i8*, i8** %data2, align 8, !tbaa !11
  %size3 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %cbuf, i32 0, i32 1
  %62 = load i32, i32* %size3, align 4, !tbaa !13
  %idx.ext = zext i32 %62 to i64
  %add.ptr = getelementptr inbounds i8, i8* %61, i64 %idx.ext
  call void @set_cb_end(%struct.command_buf_s* %cbuf, i8* %add.ptr) #6
  %end = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %cbuf, i32 0, i32 4
  %63 = load i8*, i8** %end, align 8, !tbaa !16
  store i8* %63, i8** %cbp, align 8, !tbaa !4
  %dev = getelementptr inbounds %struct.patch_fill_state_s, %struct.patch_fill_state_s* %pfs, i32 0, i32 0
  store %struct.gx_device_s* null, %struct.gx_device_s** %dev, align 8, !tbaa !17
  %64 = bitcast %struct.ht_buff_s* %ht_buff to i8*
  %call4 = call i8* @memset(i8* %64, i32 0, i64 24) #7
  %65 = bitcast %struct.tile_slot* %bits to i8*
  %call5 = call i8* @memset(i8* %65, i32 0, i64 40) #7
  %66 = bitcast %struct.tile_slot* %tile_bits to i8*
  %call6 = call i8* @memset(i8* %66, i32 0, i64 40) #7
  %67 = bitcast %struct._cas* %clip_save to i8*
  %call7 = call i8* @memset(i8* %67, i32 0, i64 664) #7
  %68 = bitcast %struct.tile_slot** %state_slot to i8*
  %call8 = call i8* @memset(i8* %68, i32 0, i64 8) #7
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %ppos, i32 0, i32 1
  store i32 0, i32* %y, align 4, !tbaa !24
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %ppos, i32 0, i32 0
  store i32 0, i32* %x, align 4, !tbaa !25
  br label %in

in:                                               ; preds = %if.then.3357, %if.end
  %69 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !4
  store %struct.gx_device_s* %69, %struct.gx_device_s** %tdev, align 8, !tbaa !4
  %colors = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 0
  %arraydecay = getelementptr inbounds [2 x i64], [2 x i64]* %colors, i32 0, i32 0
  store i64* %arraydecay, i64** %set_colors, align 8, !tbaa !4
  %tile_color_devn = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 7
  %arraydecay9 = getelementptr inbounds [2 x %struct.gx_device_color_s], [2 x %struct.gx_device_color_s]* %tile_color_devn, i32 0, i32 0
  store %struct.gx_device_color_s* %arraydecay9, %struct.gx_device_color_s** %set_dev_colors, align 8, !tbaa !4
  store i32 0, i32* %use_clip, align 4, !tbaa !6
  store %struct.gx_clip_path_s* null, %struct.gx_clip_path_s** %pcpath, align 8, !tbaa !4
  store i32 0, i32* %clipper_dev_open, align 4, !tbaa !6
  store i32 0, i32* %notes, align 4, !tbaa !1
  store i32 0, i32* %data_x, align 4, !tbaa !6
  %70 = bitcast %struct.gx_clist_state_s* %state to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %70, i8* bitcast (%struct.gx_clist_state_s* @clist_playback_band.cls_initial to i8*), i64 1808, i32 8, i1 false), !tbaa.struct !26
  %id = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %state_tile, i32 0, i32 3
  store i64 0, i64* %id, align 8, !tbaa !31
  %rep_shift = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %state_tile, i32 0, i32 6
  store i16 0, i16* %rep_shift, align 2, !tbaa !34
  %shift = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %state_tile, i32 0, i32 7
  store i16 0, i16* %shift, align 2, !tbaa !35
  %size10 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %state_tile, i32 0, i32 2
  %y11 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size10, i32 0, i32 1
  store i32 0, i32* %y11, align 4, !tbaa !36
  %size12 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %state_tile, i32 0, i32 2
  %x13 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size12, i32 0, i32 0
  store i32 0, i32* %x13, align 4, !tbaa !37
  %num_planes = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %state_tile, i32 0, i32 8
  store i32 1, i32* %num_planes, align 4, !tbaa !38
  %71 = load i32, i32* %x0.addr, align 4, !tbaa !6
  %x14 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %color_phase, i32 0, i32 0
  store i32 %71, i32* %x14, align 4, !tbaa !39
  %x15 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %tile_phase, i32 0, i32 0
  store i32 %71, i32* %x15, align 4, !tbaa !39
  %72 = load i32, i32* %y0.addr, align 4, !tbaa !6
  %y16 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %color_phase, i32 0, i32 1
  store i32 %72, i32* %y16, align 4, !tbaa !40
  %y17 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %tile_phase, i32 0, i32 1
  store i32 %72, i32* %y17, align 4, !tbaa !40
  %73 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %call18 = call i32 @gx_path_init_local_shared(%struct.gx_path_s* %path, %struct.gx_path_s* null, %struct.gs_memory_s* %73) #6
  store i32 0, i32* %in_path, align 4, !tbaa !6
  %74 = bitcast %struct.gs_fixed_rect_s* %cbox to i8*
  call void @llvm.lifetime.start(i64 16, i8* %74) #1
  %75 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %call19 = call i32 @gx_cpath_init_local_shared(%struct.gx_clip_path_s* %clip_path, %struct.gx_clip_path_s* null, %struct.gs_memory_s* %75) #6
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox, i32 0, i32 0
  %x20 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  store i32 0, i32* %x20, align 4, !tbaa !41
  %p21 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox, i32 0, i32 0
  %y22 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p21, i32 0, i32 1
  store i32 0, i32* %y22, align 4, !tbaa !42
  %76 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %cdev.addr, align 8, !tbaa !4
  %width = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %76, i32 0, i32 13
  %77 = load i32, i32* %width, align 4, !tbaa !43
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox, i32 0, i32 1
  %x23 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 0
  store i32 %77, i32* %x23, align 4, !tbaa !59
  %78 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %cdev.addr, align 8, !tbaa !4
  %height = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %78, i32 0, i32 14
  %79 = load i32, i32* %height, align 4, !tbaa !60
  %q24 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox, i32 0, i32 1
  %y25 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q24, i32 0, i32 1
  store i32 %79, i32* %y25, align 4, !tbaa !61
  %call26 = call i32 @gx_cpath_from_rectangle(%struct.gx_clip_path_s* %clip_path, %struct.gs_fixed_rect_s* %cbox) #6
  %80 = bitcast %struct.gs_fixed_rect_s* %cbox to i8*
  call void @llvm.lifetime.end(i64 16, i8* %80) #1
  %81 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !4
  %cmp27 = icmp ne %struct.gx_device_s* %81, null
  br i1 %cmp27, label %if.then.28, label %if.end.30

if.then.28:                                       ; preds = %in
  %82 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !4
  %procs29 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %82, i32 0, i32 42
  %get_clipping_box = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs29, i32 0, i32 36
  %83 = load void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)** %get_clipping_box, align 8, !tbaa !62
  %84 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !4
  call void %83(%struct.gx_device_s* %84, %struct.gs_fixed_rect_s* %target_box) #6
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.28, %in
  %85 = bitcast %struct.gs_imager_state_s* %imager_state to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %85, i8* bitcast (%struct.gs_imager_state_s* @clist_imager_state_initial to i8*), i64 1616, i32 8, i1 false), !tbaa.struct !64
  %86 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %call31 = call i32 @gs_imager_state_initialize(%struct.gs_imager_state_s* %imager_state, %struct.gs_memory_s* %86) #6
  store i32 %call31, i32* %code, align 4, !tbaa !6
  br label %do.body

do.body:                                          ; preds = %if.end.30
  %icc_link_cache = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state, i32 0, i32 36
  %87 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache, align 8, !tbaa !68
  %tobool = icmp ne %struct.gsicc_link_cache_s* %87, null
  br i1 %tobool, label %if.then.32, label %if.end.59

if.then.32:                                       ; preds = %do.body
  br label %do.body.33

do.body.33:                                       ; preds = %if.then.32
  br label %do.body.34

do.body.34:                                       ; preds = %do.body.33
  br label %do.cond

do.cond:                                          ; preds = %do.body.34
  br label %do.end

do.end:                                           ; preds = %do.cond
  %icc_link_cache35 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state, i32 0, i32 36
  %88 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache35, align 8, !tbaa !68
  %rc = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %88, i32 0, i32 2
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %89 = load i64, i64* %ref_count, align 8, !tbaa !79
  %add = add nsw i64 %89, -1
  store i64 %add, i64* %ref_count, align 8, !tbaa !79
  br label %do.cond.36

do.cond.36:                                       ; preds = %do.end
  br label %do.end.37

do.end.37:                                        ; preds = %do.cond.36
  %icc_link_cache38 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state, i32 0, i32 36
  %90 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache38, align 8, !tbaa !68
  %rc39 = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %90, i32 0, i32 2
  %ref_count40 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc39, i32 0, i32 0
  %91 = load i64, i64* %ref_count40, align 8, !tbaa !79
  %tobool41 = icmp ne i64 %91, 0
  br i1 %tobool41, label %if.else, label %if.then.42

if.then.42:                                       ; preds = %do.end.37
  br label %do.body.43

do.body.43:                                       ; preds = %if.then.42
  br label %do.body.44

do.body.44:                                       ; preds = %do.body.43
  br label %do.cond.45

do.cond.45:                                       ; preds = %do.body.44
  br label %do.end.46

do.end.46:                                        ; preds = %do.cond.45
  %icc_link_cache47 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state, i32 0, i32 36
  %92 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache47, align 8, !tbaa !68
  %rc48 = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %92, i32 0, i32 2
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc48, i32 0, i32 2
  %93 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !81
  %icc_link_cache49 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state, i32 0, i32 36
  %94 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache49, align 8, !tbaa !68
  %rc50 = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %94, i32 0, i32 2
  %memory = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc50, i32 0, i32 1
  %95 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !82
  %icc_link_cache51 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state, i32 0, i32 36
  %96 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache51, align 8, !tbaa !68
  %97 = bitcast %struct.gsicc_link_cache_s* %96 to i8*
  call void %93(%struct.gs_memory_s* %95, i8* %97, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0)) #6
  br label %do.cond.52

do.cond.52:                                       ; preds = %do.end.46
  br label %do.end.53

do.end.53:                                        ; preds = %do.cond.52
  %icc_link_cache54 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state, i32 0, i32 36
  store %struct.gsicc_link_cache_s* null, %struct.gsicc_link_cache_s** %icc_link_cache54, align 8, !tbaa !68
  br label %if.end.58

if.else:                                          ; preds = %do.end.37
  br label %do.body.55

do.body.55:                                       ; preds = %if.else
  br label %do.cond.56

do.cond.56:                                       ; preds = %do.body.55
  br label %do.end.57

do.end.57:                                        ; preds = %do.cond.56
  br label %if.end.58

if.end.58:                                        ; preds = %do.end.57, %do.end.53
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %do.body
  br label %do.cond.60

do.cond.60:                                       ; preds = %if.end.59
  br label %do.end.61

do.end.61:                                        ; preds = %do.cond.60
  %98 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %cdev.addr, align 8, !tbaa !4
  %icc_cache_cl = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %98, i32 0, i32 62
  %99 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_cache_cl, align 8, !tbaa !83
  %icc_link_cache62 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state, i32 0, i32 36
  store %struct.gsicc_link_cache_s* %99, %struct.gsicc_link_cache_s** %icc_link_cache62, align 8, !tbaa !68
  %100 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %cdev.addr, align 8, !tbaa !4
  %icc_cache_cl63 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %100, i32 0, i32 62
  %101 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_cache_cl63, align 8, !tbaa !83
  %lock = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %101, i32 0, i32 4
  %102 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %lock, align 8, !tbaa !84
  %native = getelementptr inbounds %struct.gx_monitor_s, %struct.gx_monitor_s* %102, i32 0, i32 1
  %call64 = call i32 @gp_monitor_enter(%union.gp_monitor* %native) #6
  br label %do.body.65

do.body.65:                                       ; preds = %do.end.61
  %103 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %cdev.addr, align 8, !tbaa !4
  %icc_cache_cl66 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %103, i32 0, i32 62
  %104 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_cache_cl66, align 8, !tbaa !83
  %tobool67 = icmp ne %struct.gsicc_link_cache_s* %104, null
  br i1 %tobool67, label %if.then.68, label %if.end.78

if.then.68:                                       ; preds = %do.body.65
  br label %do.body.69

do.body.69:                                       ; preds = %if.then.68
  %105 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %cdev.addr, align 8, !tbaa !4
  %icc_cache_cl70 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %105, i32 0, i32 62
  %106 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_cache_cl70, align 8, !tbaa !83
  %rc71 = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %106, i32 0, i32 2
  %ref_count72 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc71, i32 0, i32 0
  %107 = load i64, i64* %ref_count72, align 8, !tbaa !79
  %inc = add nsw i64 %107, 1
  store i64 %inc, i64* %ref_count72, align 8, !tbaa !79
  br label %do.body.73

do.body.73:                                       ; preds = %do.body.69
  br label %do.cond.74

do.cond.74:                                       ; preds = %do.body.73
  br label %do.end.75

do.end.75:                                        ; preds = %do.cond.74
  br label %do.cond.76

do.cond.76:                                       ; preds = %do.end.75
  br label %do.end.77

do.end.77:                                        ; preds = %do.cond.76
  br label %if.end.78

if.end.78:                                        ; preds = %do.end.77, %do.body.65
  br label %do.cond.79

do.cond.79:                                       ; preds = %if.end.78
  br label %do.end.80

do.end.80:                                        ; preds = %do.cond.79
  %108 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %cdev.addr, align 8, !tbaa !4
  %icc_cache_cl81 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %108, i32 0, i32 62
  %109 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_cache_cl81, align 8, !tbaa !83
  %lock82 = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %109, i32 0, i32 4
  %110 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %lock82, align 8, !tbaa !84
  %native83 = getelementptr inbounds %struct.gx_monitor_s, %struct.gx_monitor_s* %110, i32 0, i32 1
  %call84 = call i32 @gp_monitor_leave(%union.gp_monitor* %native83) #6
  %111 = load i32, i32* %code, align 4, !tbaa !6
  %cmp85 = icmp slt i32 %111, 0
  br i1 %cmp85, label %if.then.86, label %if.end.87

if.then.86:                                       ; preds = %do.end.80
  br label %out

if.end.87:                                        ; preds = %do.end.80
  %arraydecay88 = getelementptr inbounds [11 x float], [11 x float]* %dash_pattern, i32 0, i32 0
  %line_params = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state, i32 0, i32 3
  %dash = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params, i32 0, i32 11
  %pattern = getelementptr inbounds %struct.gx_dash_params_s, %struct.gx_dash_params_s* %dash, i32 0, i32 0
  store float* %arraydecay88, float** %pattern, align 8, !tbaa !85
  %112 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !4
  %cmp89 = icmp ne %struct.gx_device_s* %112, null
  br i1 %cmp89, label %if.then.90, label %if.end.97

if.then.90:                                       ; preds = %if.end.87
  %113 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !4
  call void @gx_set_cmap_procs(%struct.gs_imager_state_s* %imager_state, %struct.gx_device_s* %113) #6
  %114 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !4
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %114, i32 0, i32 11
  %max_gray = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 5
  %115 = load i32, i32* %max_gray, align 4, !tbaa !86
  %cmp91 = icmp ugt i32 %115, 15
  br i1 %cmp91, label %if.end.96, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.90
  %116 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !4
  %color_info92 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %116, i32 0, i32 11
  %max_color = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info92, i32 0, i32 6
  %117 = load i32, i32* %max_color, align 4, !tbaa !87
  %cmp93 = icmp ugt i32 %117, 15
  br i1 %cmp93, label %if.end.96, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false
  %118 = load i32, i32* %playback_action.addr, align 4, !tbaa !1
  %cmp94 = icmp eq i32 %118, 1
  br i1 %cmp94, label %if.then.95, label %if.end.96

if.then.95:                                       ; preds = %land.lhs.true
  store i32 0, i32* %playback_action.addr, align 4, !tbaa !1
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.95, %land.lhs.true, %lor.lhs.false, %if.then.90
  br label %if.end.97

if.end.97:                                        ; preds = %if.end.96, %if.end.87
  %119 = load i32, i32* %x0.addr, align 4, !tbaa !6
  %sub = sub nsw i32 0, %119
  %120 = load i32, i32* %y0.addr, align 4, !tbaa !6
  %sub98 = sub nsw i32 0, %120
  %call99 = call i32 @gx_imager_setscreenphase(%struct.gs_imager_state_s* %imager_state, i32 %sub, i32 %sub98, i32 -1) #6
  store i32 0, i32* %halftone_type, align 4, !tbaa !1
  %121 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %call100 = call %struct.gs_color_space_s* @gs_cspace_new_DeviceGray(%struct.gs_memory_s* %121) #6
  store %struct.gs_color_space_s* %call100, %struct.gs_color_space_s** %pcs, align 8, !tbaa !4
  %122 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !4
  %cmp101 = icmp eq %struct.gs_color_space_s* %122, null
  br i1 %cmp101, label %if.then.102, label %if.end.103

if.then.102:                                      ; preds = %if.end.97
  store i32 -25, i32* %code, align 4, !tbaa !6
  br label %out

if.end.103:                                       ; preds = %if.end.97
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %dev_color, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_none, %struct.gx_device_color_type_s** %type, align 8, !tbaa !88
  %123 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %procs104 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %123, i32 0, i32 1
  %alloc_bytes105 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs104, i32 0, i32 7
  %124 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes105, align 8, !tbaa !8
  %125 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %call106 = call i8* %124(%struct.gs_memory_s* %125, i32 4096, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0)) #6
  store i8* %call106, i8** %data_bits, align 8, !tbaa !4
  %126 = load i8*, i8** %data_bits, align 8, !tbaa !4
  %cmp107 = icmp eq i8* %126, null
  br i1 %cmp107, label %if.then.108, label %if.end.109

if.then.108:                                      ; preds = %if.end.103
  store i32 -25, i32* %code, align 4, !tbaa !6
  br label %out

if.end.109:                                       ; preds = %if.end.103
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont.3235, %cleanup.3226, %if.end.109
  %127 = load i32, i32* %code, align 4, !tbaa !6
  %cmp110 = icmp sge i32 %127, 0
  br i1 %cmp110, label %while.body, label %while.end.3236

while.body:                                       ; preds = %while.cond
  %128 = bitcast i32* %compress to i8*
  call void @llvm.lifetime.start(i64 4, i8* %128) #1
  %129 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %129) #1
  store i32 2074996749, i32* %depth, align 4, !tbaa !6
  %130 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %130) #1
  store i32 2074996749, i32* %raster, align 4, !tbaa !6
  %131 = bitcast i8** %source to i8*
  call void @llvm.lifetime.start(i64 8, i8* %131) #1
  store i8* null, i8** %source, align 8, !tbaa !4
  %132 = bitcast [2 x i64]* %colors111 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %132) #1
  %133 = bitcast i64** %pcolor to i8*
  call void @llvm.lifetime.start(i64 8, i8* %133) #1
  %134 = bitcast %struct.gx_device_color_s** %pdcolor to i8*
  call void @llvm.lifetime.start(i64 8, i8* %134) #1
  store %struct.gx_device_color_s* null, %struct.gx_device_color_s** %pdcolor, align 8, !tbaa !4
  %135 = bitcast i32* %log_op to i8*
  call void @llvm.lifetime.start(i64 4, i8* %135) #1
  %136 = load i8*, i8** %cbp, align 8, !tbaa !4
  %warn_limit = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %cbuf, i32 0, i32 3
  %137 = load i8*, i8** %warn_limit, align 8, !tbaa !92
  %cmp112 = icmp uge i8* %136, %137
  br i1 %cmp112, label %if.then.113, label %if.end.129

if.then.113:                                      ; preds = %while.body
  %end_status114 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %cbuf, i32 0, i32 6
  %138 = load i32, i32* %end_status114, align 4, !tbaa !15
  %cmp115 = icmp slt i32 %138, 0
  br i1 %cmp115, label %if.then.116, label %if.else.123

if.then.116:                                      ; preds = %if.then.113
  %139 = load i8*, i8** %cbp, align 8, !tbaa !4
  %end117 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %cbuf, i32 0, i32 4
  %140 = load i8*, i8** %end117, align 8, !tbaa !16
  %cmp118 = icmp uge i8* %139, %140
  br i1 %cmp118, label %if.then.119, label %if.end.122

if.then.119:                                      ; preds = %if.then.116
  %end_status120 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %cbuf, i32 0, i32 6
  %141 = load i32, i32* %end_status120, align 4, !tbaa !15
  %cmp121 = icmp eq i32 %141, -1
  %cond = select i1 %cmp121, i32 0, i32 -12
  store i32 %cond, i32* %code, align 4, !tbaa !6
  store i32 23, i32* %cleanup.dest.slot
  br label %cleanup.3226

if.end.122:                                       ; preds = %if.then.116
  br label %if.end.128

if.else.123:                                      ; preds = %if.then.113
  %call124 = call i32 @top_up_cbuf(%struct.command_buf_s* %cbuf, i8** %cbp) #6
  store i32 %call124, i32* %code, align 4, !tbaa !6
  %142 = load i32, i32* %code, align 4, !tbaa !6
  %cmp125 = icmp slt i32 %142, 0
  br i1 %cmp125, label %if.then.126, label %if.end.127

if.then.126:                                      ; preds = %if.else.123
  %143 = load i32, i32* %code, align 4, !tbaa !6
  store i32 %143, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.3226

if.end.127:                                       ; preds = %if.else.123
  br label %if.end.128

if.end.128:                                       ; preds = %if.end.127, %if.end.122
  br label %if.end.129

if.end.129:                                       ; preds = %if.end.128, %while.body
  %144 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, i8* %144, i32 1
  store i8* %incdec.ptr, i8** %cbp, align 8, !tbaa !4
  %145 = load i8, i8* %144, align 1, !tbaa !1
  %conv = zext i8 %145 to i32
  store i32 %conv, i32* %op, align 4, !tbaa !6
  %146 = load i32, i32* %op, align 4, !tbaa !6
  %shr = ashr i32 %146, 4
  switch i32 %shr, label %sw.default.2880 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.480
    i32 2, label %sw.bb.482
    i32 3, label %sw.bb.554
    i32 6, label %sw.bb.554
    i32 4, label %sw.bb.556
    i32 7, label %sw.bb.556
    i32 5, label %sw.bb.592
    i32 8, label %sw.bb.592
    i32 9, label %sw.bb.620
    i32 10, label %sw.bb.646
    i32 11, label %sw.bb.918
    i32 12, label %sw.bb.922
    i32 13, label %sw.bb.1049
    i32 14, label %sw.bb.2109
    i32 15, label %sw.bb.2231
  ]

sw.bb:                                            ; preds = %if.end.129
  %147 = load i32, i32* %op, align 4, !tbaa !6
  switch i32 %147, label %sw.default.479 [
    i32 0, label %sw.bb.130
    i32 1, label %sw.bb.134
    i32 2, label %sw.bb.142
    i32 3, label %sw.bb.181
    i32 4, label %sw.bb.189
    i32 5, label %sw.bb.241
    i32 6, label %sw.bb.246
    i32 7, label %sw.bb.340
    i32 8, label %sw.bb.347
    i32 11, label %sw.bb.353
    i32 12, label %sw.bb.357
    i32 13, label %sw.bb.358
    i32 14, label %sw.bb.470
    i32 15, label %sw.bb.474
  ]

sw.bb.130:                                        ; preds = %sw.bb
  br label %do.body.131

do.body.131:                                      ; preds = %sw.bb.130
  br label %do.cond.132

do.cond.132:                                      ; preds = %do.body.131
  br label %do.end.133

do.end.133:                                       ; preds = %do.cond.132
  store i32 22, i32* %cleanup.dest.slot
  br label %cleanup.3226

sw.bb.134:                                        ; preds = %sw.bb
  %148 = load i8*, i8** %cbp, align 8, !tbaa !4
  %ptr = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %cbuf, i32 0, i32 2
  store i8* %148, i8** %ptr, align 8, !tbaa !93
  %149 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %cdev.addr, align 8, !tbaa !4
  %150 = bitcast %struct.gx_device_clist_reader_s* %149 to %struct.gx_device_s*
  %call135 = call i32 @gx_device_is_pattern_clist(%struct.gx_device_s* %150) #6
  %call136 = call i32 @read_set_tile_size(%struct.command_buf_s* %cbuf, %struct.tile_slot* %tile_bits, i32 %call135) #6
  store i32 %call136, i32* %code, align 4, !tbaa !6
  %ptr137 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %cbuf, i32 0, i32 2
  %151 = load i8*, i8** %ptr137, align 8, !tbaa !93
  store i8* %151, i8** %cbp, align 8, !tbaa !4
  %152 = load i32, i32* %code, align 4, !tbaa !6
  %cmp138 = icmp slt i32 %152, 0
  br i1 %cmp138, label %if.then.140, label %if.end.141

if.then.140:                                      ; preds = %sw.bb.134
  store i32 21, i32* %cleanup.dest.slot
  br label %cleanup.3226

if.end.141:                                       ; preds = %sw.bb.134
  store i32 22, i32* %cleanup.dest.slot
  br label %cleanup.3226

sw.bb.142:                                        ; preds = %sw.bb
  br label %do.body.143

do.body.143:                                      ; preds = %sw.bb.142
  %153 = load i8*, i8** %cbp, align 8, !tbaa !4
  %154 = load i8, i8* %153, align 1, !tbaa !1
  %conv144 = zext i8 %154 to i32
  %cmp145 = icmp slt i32 %conv144, 128
  br i1 %cmp145, label %if.then.147, label %if.else.152

if.then.147:                                      ; preds = %do.body.143
  %155 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr148 = getelementptr inbounds i8, i8* %155, i32 1
  store i8* %incdec.ptr148, i8** %cbp, align 8, !tbaa !4
  %156 = load i8, i8* %155, align 1, !tbaa !1
  %conv149 = zext i8 %156 to i32
  %tile_phase150 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 5
  %x151 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %tile_phase150, i32 0, i32 0
  store i32 %conv149, i32* %x151, align 4, !tbaa !94
  br label %if.end.157

if.else.152:                                      ; preds = %do.body.143
  %157 = bitcast i8** %_cbp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %157) #1
  %158 = load i8*, i8** %cbp, align 8, !tbaa !4
  %call153 = call i64 @cmd_get_w(i8* %158, i8** %_cbp) #6
  %conv154 = trunc i64 %call153 to i32
  %tile_phase155 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 5
  %x156 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %tile_phase155, i32 0, i32 0
  store i32 %conv154, i32* %x156, align 4, !tbaa !94
  %159 = load i8*, i8** %_cbp, align 8, !tbaa !4
  store i8* %159, i8** %cbp, align 8, !tbaa !4
  %160 = bitcast i8** %_cbp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %160) #1
  br label %if.end.157

if.end.157:                                       ; preds = %if.else.152, %if.then.147
  br label %do.cond.158

do.cond.158:                                      ; preds = %if.end.157
  br label %do.end.159

do.end.159:                                       ; preds = %do.cond.158
  br label %do.body.160

do.body.160:                                      ; preds = %do.end.159
  %161 = load i8*, i8** %cbp, align 8, !tbaa !4
  %162 = load i8, i8* %161, align 1, !tbaa !1
  %conv161 = zext i8 %162 to i32
  %cmp162 = icmp slt i32 %conv161, 128
  br i1 %cmp162, label %if.then.164, label %if.else.169

if.then.164:                                      ; preds = %do.body.160
  %163 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr165 = getelementptr inbounds i8, i8* %163, i32 1
  store i8* %incdec.ptr165, i8** %cbp, align 8, !tbaa !4
  %164 = load i8, i8* %163, align 1, !tbaa !1
  %conv166 = zext i8 %164 to i32
  %tile_phase167 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 5
  %y168 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %tile_phase167, i32 0, i32 1
  store i32 %conv166, i32* %y168, align 4, !tbaa !101
  br label %if.end.175

if.else.169:                                      ; preds = %do.body.160
  %165 = bitcast i8** %_cbp170 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %165) #1
  %166 = load i8*, i8** %cbp, align 8, !tbaa !4
  %call171 = call i64 @cmd_get_w(i8* %166, i8** %_cbp170) #6
  %conv172 = trunc i64 %call171 to i32
  %tile_phase173 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 5
  %y174 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %tile_phase173, i32 0, i32 1
  store i32 %conv172, i32* %y174, align 4, !tbaa !101
  %167 = load i8*, i8** %_cbp170, align 8, !tbaa !4
  store i8* %167, i8** %cbp, align 8, !tbaa !4
  %168 = bitcast i8** %_cbp170 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %168) #1
  br label %if.end.175

if.end.175:                                       ; preds = %if.else.169, %if.then.164
  br label %do.cond.176

do.cond.176:                                      ; preds = %if.end.175
  br label %do.end.177

do.end.177:                                       ; preds = %do.cond.176
  br label %do.body.178

do.body.178:                                      ; preds = %do.end.177
  br label %do.cond.179

do.cond.179:                                      ; preds = %do.body.178
  br label %do.end.180

do.end.180:                                       ; preds = %do.cond.179
  br label %set_phase

sw.bb.181:                                        ; preds = %sw.bb
  %169 = bitcast %struct.tile_slot* %bits to i8*
  %170 = bitcast %struct.tile_slot* %tile_bits to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %169, i8* %170, i64 40, i32 8, i1 false), !tbaa.struct !102
  store i32 0, i32* %compress, align 4, !tbaa !6
  br label %stb

stb:                                              ; preds = %do.end.229, %sw.bb.181
  %171 = load i8*, i8** %cbp, align 8, !tbaa !4
  %ptr182 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %cbuf, i32 0, i32 2
  store i8* %171, i8** %ptr182, align 8, !tbaa !93
  %172 = load i32, i32* %compress, align 4, !tbaa !6
  %173 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %cdev.addr, align 8, !tbaa !4
  %174 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %call183 = call i32 @read_set_bits(%struct.command_buf_s* %cbuf, %struct.tile_slot* %bits, i32 %172, %struct.gx_clist_state_s* %state, %struct.gx_strip_bitmap_s* %state_tile, %struct.tile_slot** %state_slot, %struct.gx_device_clist_reader_s* %173, %struct.gs_memory_s* %174) #6
  store i32 %call183, i32* %code, align 4, !tbaa !6
  %ptr184 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %cbuf, i32 0, i32 2
  %175 = load i8*, i8** %ptr184, align 8, !tbaa !93
  store i8* %175, i8** %cbp, align 8, !tbaa !4
  %176 = load i32, i32* %code, align 4, !tbaa !6
  %cmp185 = icmp slt i32 %176, 0
  br i1 %cmp185, label %if.then.187, label %if.end.188

if.then.187:                                      ; preds = %stb
  store i32 21, i32* %cleanup.dest.slot
  br label %cleanup.3226

if.end.188:                                       ; preds = %stb
  br label %stp

sw.bb.189:                                        ; preds = %sw.bb
  %177 = load i8*, i8** %cbp, align 8, !tbaa !4
  %178 = load i8, i8* %177, align 1, !tbaa !1
  %conv190 = zext i8 %178 to i32
  %and = and i32 %conv190, 3
  store i32 %and, i32* %compress, align 4, !tbaa !6
  %179 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr191 = getelementptr inbounds i8, i8* %179, i32 1
  store i8* %incdec.ptr191, i8** %cbp, align 8, !tbaa !4
  %180 = load i8, i8* %179, align 1, !tbaa !1
  %conv192 = zext i8 %180 to i32
  %shr193 = ashr i32 %conv192, 2
  %head = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %bits, i32 0, i32 0
  %depth194 = getelementptr inbounds %struct.gx_cached_bits_head_s, %struct.gx_cached_bits_head_s* %head, i32 0, i32 1
  store i32 %shr193, i32* %depth194, align 4, !tbaa !103
  br label %do.body.195

do.body.195:                                      ; preds = %sw.bb.189
  %181 = load i8*, i8** %cbp, align 8, !tbaa !4
  %182 = load i8, i8* %181, align 1, !tbaa !1
  %conv196 = zext i8 %182 to i32
  %cmp197 = icmp slt i32 %conv196, 128
  br i1 %cmp197, label %if.then.199, label %if.else.203

if.then.199:                                      ; preds = %do.body.195
  %183 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr200 = getelementptr inbounds i8, i8* %183, i32 1
  store i8* %incdec.ptr200, i8** %cbp, align 8, !tbaa !4
  %184 = load i8, i8* %183, align 1, !tbaa !1
  %conv201 = zext i8 %184 to i16
  %width202 = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %bits, i32 0, i32 1
  store i16 %conv201, i16* %width202, align 2, !tbaa !106
  br label %if.end.208

if.else.203:                                      ; preds = %do.body.195
  %185 = bitcast i8** %_cbp204 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %185) #1
  %186 = load i8*, i8** %cbp, align 8, !tbaa !4
  %call205 = call i64 @cmd_get_w(i8* %186, i8** %_cbp204) #6
  %conv206 = trunc i64 %call205 to i16
  %width207 = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %bits, i32 0, i32 1
  store i16 %conv206, i16* %width207, align 2, !tbaa !106
  %187 = load i8*, i8** %_cbp204, align 8, !tbaa !4
  store i8* %187, i8** %cbp, align 8, !tbaa !4
  %188 = bitcast i8** %_cbp204 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %188) #1
  br label %if.end.208

if.end.208:                                       ; preds = %if.else.203, %if.then.199
  br label %do.cond.209

do.cond.209:                                      ; preds = %if.end.208
  br label %do.end.210

do.end.210:                                       ; preds = %do.cond.209
  br label %do.body.211

do.body.211:                                      ; preds = %do.end.210
  %189 = load i8*, i8** %cbp, align 8, !tbaa !4
  %190 = load i8, i8* %189, align 1, !tbaa !1
  %conv212 = zext i8 %190 to i32
  %cmp213 = icmp slt i32 %conv212, 128
  br i1 %cmp213, label %if.then.215, label %if.else.219

if.then.215:                                      ; preds = %do.body.211
  %191 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr216 = getelementptr inbounds i8, i8* %191, i32 1
  store i8* %incdec.ptr216, i8** %cbp, align 8, !tbaa !4
  %192 = load i8, i8* %191, align 1, !tbaa !1
  %conv217 = zext i8 %192 to i16
  %height218 = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %bits, i32 0, i32 2
  store i16 %conv217, i16* %height218, align 2, !tbaa !107
  br label %if.end.224

if.else.219:                                      ; preds = %do.body.211
  %193 = bitcast i8** %_cbp220 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %193) #1
  %194 = load i8*, i8** %cbp, align 8, !tbaa !4
  %call221 = call i64 @cmd_get_w(i8* %194, i8** %_cbp220) #6
  %conv222 = trunc i64 %call221 to i16
  %height223 = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %bits, i32 0, i32 2
  store i16 %conv222, i16* %height223, align 2, !tbaa !107
  %195 = load i8*, i8** %_cbp220, align 8, !tbaa !4
  store i8* %195, i8** %cbp, align 8, !tbaa !4
  %196 = bitcast i8** %_cbp220 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %196) #1
  br label %if.end.224

if.end.224:                                       ; preds = %if.else.219, %if.then.215
  br label %do.cond.225

do.cond.225:                                      ; preds = %if.end.224
  br label %do.end.226

do.end.226:                                       ; preds = %do.cond.225
  br label %do.body.227

do.body.227:                                      ; preds = %do.end.226
  br label %do.cond.228

do.cond.228:                                      ; preds = %do.body.227
  br label %do.end.229

do.end.229:                                       ; preds = %do.cond.228
  %width230 = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %bits, i32 0, i32 1
  %197 = load i16, i16* %width230, align 2, !tbaa !106
  %conv231 = zext i16 %197 to i32
  %head232 = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %bits, i32 0, i32 0
  %depth233 = getelementptr inbounds %struct.gx_cached_bits_head_s, %struct.gx_cached_bits_head_s* %head232, i32 0, i32 1
  %198 = load i32, i32* %depth233, align 4, !tbaa !103
  %mul = mul i32 %conv231, %198
  %add234 = add i32 %mul, 63
  %shr235 = lshr i32 %add234, 6
  %shl = shl i32 %shr235, 3
  %conv236 = trunc i32 %shl to i16
  %raster237 = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %bits, i32 0, i32 4
  store i16 %conv236, i16* %raster237, align 2, !tbaa !108
  %y_reps = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %bits, i32 0, i32 7
  store i8 1, i8* %y_reps, align 1, !tbaa !109
  %x_reps = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %bits, i32 0, i32 6
  store i8 1, i8* %x_reps, align 1, !tbaa !110
  %rep_shift238 = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %bits, i32 0, i32 8
  store i16 0, i16* %rep_shift238, align 2, !tbaa !111
  %shift239 = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %bits, i32 0, i32 3
  store i16 0, i16* %shift239, align 2, !tbaa !112
  %num_planes240 = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %bits, i32 0, i32 11
  store i8 1, i8* %num_planes240, align 1, !tbaa !113
  br label %stb

sw.bb.241:                                        ; preds = %sw.bb
  %tile_colors = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 6
  %arraydecay242 = getelementptr inbounds [2 x i64], [2 x i64]* %tile_colors, i32 0, i32 0
  store i64* %arraydecay242, i64** %set_colors, align 8, !tbaa !4
  br label %do.body.243

do.body.243:                                      ; preds = %sw.bb.241
  br label %do.cond.244

do.cond.244:                                      ; preds = %do.body.243
  br label %do.end.245

do.end.245:                                       ; preds = %do.cond.244
  store i32 22, i32* %cleanup.dest.slot
  br label %cleanup.3226

sw.bb.246:                                        ; preds = %sw.bb
  %199 = bitcast i32* %cb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %199) #1
  %200 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr247 = getelementptr inbounds i8, i8* %200, i32 1
  store i8* %incdec.ptr247, i8** %cbp, align 8, !tbaa !4
  %201 = load i8, i8* %200, align 1, !tbaa !1
  %conv248 = zext i8 %201 to i32
  store i32 %conv248, i32* %cb, align 4, !tbaa !6
  %202 = load i32, i32* %cb, align 4, !tbaa !6
  %shr249 = lshr i32 %202, 6
  switch i32 %shr249, label %sw.default [
    i32 0, label %sw.bb.250
    i32 1, label %sw.bb.279
    i32 2, label %sw.bb.305
    i32 3, label %sw.bb.314
  ]

sw.bb.250:                                        ; preds = %sw.bb.246
  br label %do.body.251

do.body.251:                                      ; preds = %sw.bb.250
  %203 = load i8*, i8** %cbp, align 8, !tbaa !4
  %204 = load i8, i8* %203, align 1, !tbaa !1
  %conv252 = zext i8 %204 to i32
  %cmp253 = icmp slt i32 %conv252, 128
  br i1 %cmp253, label %if.then.255, label %if.else.258

if.then.255:                                      ; preds = %do.body.251
  %205 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr256 = getelementptr inbounds i8, i8* %205, i32 1
  store i8* %incdec.ptr256, i8** %cbp, align 8, !tbaa !4
  %206 = load i8, i8* %205, align 1, !tbaa !1
  %conv257 = zext i8 %206 to i32
  %lop = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 9
  store i32 %conv257, i32* %lop, align 4, !tbaa !114
  br label %if.end.263

if.else.258:                                      ; preds = %do.body.251
  %207 = bitcast i8** %_cbp259 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %207) #1
  %208 = load i8*, i8** %cbp, align 8, !tbaa !4
  %call260 = call i64 @cmd_get_w(i8* %208, i8** %_cbp259) #6
  %conv261 = trunc i64 %call260 to i32
  %lop262 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 9
  store i32 %conv261, i32* %lop262, align 4, !tbaa !114
  %209 = load i8*, i8** %_cbp259, align 8, !tbaa !4
  store i8* %209, i8** %cbp, align 8, !tbaa !4
  %210 = bitcast i8** %_cbp259 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %210) #1
  br label %if.end.263

if.end.263:                                       ; preds = %if.else.258, %if.then.255
  br label %do.cond.264

do.cond.264:                                      ; preds = %if.end.263
  br label %do.end.265

do.end.265:                                       ; preds = %do.cond.264
  %lop266 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 9
  %211 = load i32, i32* %lop266, align 4, !tbaa !114
  %shl267 = shl i32 %211, 6
  %212 = load i32, i32* %cb, align 4, !tbaa !6
  %and268 = and i32 %212, 63
  %add269 = add i32 %shl267, %and268
  %lop270 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 9
  store i32 %add269, i32* %lop270, align 4, !tbaa !114
  br label %do.body.271

do.body.271:                                      ; preds = %do.end.265
  br label %do.cond.272

do.cond.272:                                      ; preds = %do.body.271
  br label %do.end.273

do.end.273:                                       ; preds = %do.cond.272
  %lop_enabled = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 10
  %213 = load i16, i16* %lop_enabled, align 2, !tbaa !115
  %tobool274 = icmp ne i16 %213, 0
  br i1 %tobool274, label %if.then.275, label %if.end.278

if.then.275:                                      ; preds = %do.end.273
  %lop276 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 9
  %214 = load i32, i32* %lop276, align 4, !tbaa !114
  %log_op277 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state, i32 0, i32 10
  store i32 %214, i32* %log_op277, align 4, !tbaa !116
  br label %if.end.278

if.end.278:                                       ; preds = %if.then.275, %do.end.273
  br label %sw.epilog

sw.bb.279:                                        ; preds = %sw.bb.246
  %215 = load i32, i32* %cb, align 4, !tbaa !6
  %and280 = and i32 %215, 32
  %tobool281 = icmp ne i32 %and280, 0
  br i1 %tobool281, label %if.then.282, label %if.else.297

if.then.282:                                      ; preds = %sw.bb.279
  br label %do.body.283

do.body.283:                                      ; preds = %if.then.282
  %216 = load i8*, i8** %cbp, align 8, !tbaa !4
  %217 = load i8, i8* %216, align 1, !tbaa !1
  %conv284 = zext i8 %217 to i32
  %cmp285 = icmp slt i32 %conv284, 128
  br i1 %cmp285, label %if.then.287, label %if.else.290

if.then.287:                                      ; preds = %do.body.283
  %218 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr288 = getelementptr inbounds i8, i8* %218, i32 1
  store i8* %incdec.ptr288, i8** %cbp, align 8, !tbaa !4
  %219 = load i8, i8* %218, align 1, !tbaa !1
  %conv289 = zext i8 %219 to i32
  store i32 %conv289, i32* %data_x, align 4, !tbaa !6
  br label %if.end.294

if.else.290:                                      ; preds = %do.body.283
  %220 = bitcast i8** %_cbp291 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %220) #1
  %221 = load i8*, i8** %cbp, align 8, !tbaa !4
  %call292 = call i64 @cmd_get_w(i8* %221, i8** %_cbp291) #6
  %conv293 = trunc i64 %call292 to i32
  store i32 %conv293, i32* %data_x, align 4, !tbaa !6
  %222 = load i8*, i8** %_cbp291, align 8, !tbaa !4
  store i8* %222, i8** %cbp, align 8, !tbaa !4
  %223 = bitcast i8** %_cbp291 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %223) #1
  br label %if.end.294

if.end.294:                                       ; preds = %if.else.290, %if.then.287
  br label %do.cond.295

do.cond.295:                                      ; preds = %if.end.294
  br label %do.end.296

do.end.296:                                       ; preds = %do.cond.295
  br label %if.end.298

if.else.297:                                      ; preds = %sw.bb.279
  store i32 0, i32* %data_x, align 4, !tbaa !6
  br label %if.end.298

if.end.298:                                       ; preds = %if.else.297, %do.end.296
  %224 = load i32, i32* %data_x, align 4, !tbaa !6
  %shl299 = shl i32 %224, 5
  %225 = load i32, i32* %cb, align 4, !tbaa !6
  %and300 = and i32 %225, 31
  %add301 = add i32 %shl299, %and300
  store i32 %add301, i32* %data_x, align 4, !tbaa !6
  br label %do.body.302

do.body.302:                                      ; preds = %if.end.298
  br label %do.cond.303

do.cond.303:                                      ; preds = %do.body.302
  br label %do.end.304

do.end.304:                                       ; preds = %do.cond.303
  br label %sw.epilog

sw.bb.305:                                        ; preds = %sw.bb.246
  %226 = load i8*, i8** %cbp, align 8, !tbaa !4
  %ptr306 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %cbuf, i32 0, i32 2
  store i8* %226, i8** %ptr306, align 8, !tbaa !93
  %227 = load i32, i32* %cb, align 4, !tbaa !6
  %conv307 = trunc i32 %227 to i8
  %228 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %call308 = call i32 @read_set_misc_map(i8 zeroext %conv307, %struct.command_buf_s* %cbuf, %struct.gs_imager_state_s* %imager_state, %struct.gs_memory_s* %228) #6
  store i32 %call308, i32* %code, align 4, !tbaa !6
  %229 = load i32, i32* %code, align 4, !tbaa !6
  %cmp309 = icmp slt i32 %229, 0
  br i1 %cmp309, label %if.then.311, label %if.end.312

if.then.311:                                      ; preds = %sw.bb.305
  store i32 21, i32* %cleanup.dest.slot
  br label %cleanup.338

if.end.312:                                       ; preds = %sw.bb.305
  %ptr313 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %cbuf, i32 0, i32 2
  %230 = load i8*, i8** %ptr313, align 8, !tbaa !93
  store i8* %230, i8** %cbp, align 8, !tbaa !4
  br label %sw.epilog

sw.bb.314:                                        ; preds = %sw.bb.246
  %231 = bitcast i32* %num_comp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %231) #1
  %232 = load i32, i32* %cb, align 4, !tbaa !6
  %and315 = and i32 %232, 63
  store i32 %and315, i32* %halftone_type, align 4, !tbaa !1
  br label %do.body.316

do.body.316:                                      ; preds = %sw.bb.314
  %233 = load i8*, i8** %cbp, align 8, !tbaa !4
  %234 = load i8, i8* %233, align 1, !tbaa !1
  %conv317 = zext i8 %234 to i32
  %cmp318 = icmp slt i32 %conv317, 128
  br i1 %cmp318, label %if.then.320, label %if.else.323

if.then.320:                                      ; preds = %do.body.316
  %235 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr321 = getelementptr inbounds i8, i8* %235, i32 1
  store i8* %incdec.ptr321, i8** %cbp, align 8, !tbaa !4
  %236 = load i8, i8* %235, align 1, !tbaa !1
  %conv322 = zext i8 %236 to i32
  store i32 %conv322, i32* %num_comp, align 4, !tbaa !6
  br label %if.end.327

if.else.323:                                      ; preds = %do.body.316
  %237 = bitcast i8** %_cbp324 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %237) #1
  %238 = load i8*, i8** %cbp, align 8, !tbaa !4
  %call325 = call i64 @cmd_get_w(i8* %238, i8** %_cbp324) #6
  %conv326 = trunc i64 %call325 to i32
  store i32 %conv326, i32* %num_comp, align 4, !tbaa !6
  %239 = load i8*, i8** %_cbp324, align 8, !tbaa !4
  store i8* %239, i8** %cbp, align 8, !tbaa !4
  %240 = bitcast i8** %_cbp324 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %240) #1
  br label %if.end.327

if.end.327:                                       ; preds = %if.else.323, %if.then.320
  br label %do.cond.328

do.cond.328:                                      ; preds = %if.end.327
  br label %do.end.329

do.end.329:                                       ; preds = %do.cond.328
  br label %do.body.330

do.body.330:                                      ; preds = %do.end.329
  br label %do.cond.331

do.cond.331:                                      ; preds = %do.body.330
  br label %do.end.332

do.end.332:                                       ; preds = %do.cond.331
  %dev_ht = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state, i32 0, i32 41
  %241 = load i32, i32* %num_comp, align 4, !tbaa !6
  %242 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %call333 = call i32 @cmd_resize_halftone(%struct.gx_device_halftone_s** %dev_ht, i32 %241, %struct.gs_memory_s* %242) #6
  store i32 %call333, i32* %code, align 4, !tbaa !6
  %243 = load i32, i32* %code, align 4, !tbaa !6
  %cmp334 = icmp slt i32 %243, 0
  br i1 %cmp334, label %if.then.336, label %if.end.337

if.then.336:                                      ; preds = %do.end.332
  store i32 21, i32* %cleanup.dest.slot
  br label %cleanup

if.end.337:                                       ; preds = %do.end.332
  store i32 45, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.336, %if.end.337
  %244 = bitcast i32* %num_comp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %244) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.338 [
    i32 45, label %sw.epilog
  ]

sw.default:                                       ; preds = %sw.bb.246
  store i32 58, i32* %cleanup.dest.slot
  br label %cleanup.338

sw.epilog:                                        ; preds = %cleanup, %if.end.312, %do.end.304, %if.end.278
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.338

cleanup.338:                                      ; preds = %sw.default, %if.then.311, %sw.epilog, %cleanup
  %245 = bitcast i32* %cb to i8*
  call void @llvm.lifetime.end(i64 4, i8* %245) #1
  %cleanup.dest.339 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.339, label %cleanup.3226 [
    i32 0, label %cleanup.cont
    i32 58, label %bad_op
  ]

cleanup.cont:                                     ; preds = %cleanup.338
  store i32 22, i32* %cleanup.dest.slot
  br label %cleanup.3226

sw.bb.340:                                        ; preds = %sw.bb
  %lop_enabled341 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 10
  store i16 1, i16* %lop_enabled341, align 2, !tbaa !115
  %lop342 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 9
  %246 = load i32, i32* %lop342, align 4, !tbaa !114
  %log_op343 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state, i32 0, i32 10
  store i32 %246, i32* %log_op343, align 4, !tbaa !116
  br label %do.body.344

do.body.344:                                      ; preds = %sw.bb.340
  br label %do.cond.345

do.cond.345:                                      ; preds = %do.body.344
  br label %do.end.346

do.end.346:                                       ; preds = %do.cond.345
  store i32 22, i32* %cleanup.dest.slot
  br label %cleanup.3226

sw.bb.347:                                        ; preds = %sw.bb
  %lop_enabled348 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 10
  store i16 0, i16* %lop_enabled348, align 2, !tbaa !115
  %log_op349 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state, i32 0, i32 10
  store i32 252, i32* %log_op349, align 4, !tbaa !116
  br label %do.body.350

do.body.350:                                      ; preds = %sw.bb.347
  br label %do.cond.351

do.cond.351:                                      ; preds = %do.body.350
  br label %do.end.352

do.end.352:                                       ; preds = %do.cond.351
  store i32 22, i32* %cleanup.dest.slot
  br label %cleanup.3226

sw.bb.353:                                        ; preds = %sw.bb
  br label %do.body.354

do.body.354:                                      ; preds = %sw.bb.353
  br label %do.cond.355

do.cond.355:                                      ; preds = %do.body.354
  br label %do.end.356

do.end.356:                                       ; preds = %do.cond.355
  store i32 21, i32* %cleanup.dest.slot
  br label %cleanup.3226

sw.bb.357:                                        ; preds = %sw.bb
  %247 = load i64*, i64** %set_colors, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds i64, i64* %247, i64 0
  store i64* %arrayidx, i64** %pcolor, align 8, !tbaa !4
  br label %delta2_c

sw.bb.358:                                        ; preds = %sw.bb
  %248 = load i64*, i64** %set_colors, align 8, !tbaa !4
  %arrayidx359 = getelementptr inbounds i64, i64* %248, i64 1
  store i64* %arrayidx359, i64** %pcolor, align 8, !tbaa !4
  br label %delta2_c

delta2_c:                                         ; preds = %sw.bb.358, %sw.bb.357
  %colors360 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 0
  %arraydecay361 = getelementptr inbounds [2 x i64], [2 x i64]* %colors360, i32 0, i32 0
  store i64* %arraydecay361, i64** %set_colors, align 8, !tbaa !4
  %249 = bitcast i64* %delta to i8*
  call void @llvm.lifetime.start(i64 8, i8* %249) #1
  store i64 0, i64* %delta, align 8, !tbaa !27
  %250 = bitcast i32* %data362 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %250) #1
  %251 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !4
  %color_info363 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %251, i32 0, i32 11
  %depth364 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info363, i32 0, i32 3
  %252 = load i16, i16* %depth364, align 2, !tbaa !117
  %conv365 = zext i16 %252 to i64
  %cmp366 = icmp ule i64 %conv365, 64
  br i1 %cmp366, label %cond.true, label %cond.false

cond.true:                                        ; preds = %delta2_c
  %253 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !4
  %color_info368 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %253, i32 0, i32 11
  %depth369 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info368, i32 0, i32 3
  %254 = load i16, i16* %depth369, align 2, !tbaa !117
  %conv370 = zext i16 %254 to i64
  br label %cond.end

cond.false:                                       ; preds = %delta2_c
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond371 = phi i64 [ %conv370, %cond.true ], [ 64, %cond.false ]
  %conv372 = trunc i64 %cond371 to i32
  store i32 %conv372, i32* %dev_depth, align 4, !tbaa !6
  %255 = load i32, i32* %dev_depth, align 4, !tbaa !6
  %add373 = add nsw i32 %255, 7
  %shr374 = ashr i32 %add373, 3
  store i32 %shr374, i32* %dev_depth_bytes, align 4, !tbaa !6
  %256 = load i32, i32* %dev_depth_bytes, align 4, !tbaa !6
  switch i32 %256, label %sw.epilog.463 [
    i32 8, label %sw.bb.375
    i32 6, label %sw.bb.386
    i32 4, label %sw.bb.397
    i32 2, label %sw.bb.408
    i32 7, label %sw.bb.418
    i32 5, label %sw.bb.428
    i32 3, label %sw.bb.438
  ]

sw.bb.375:                                        ; preds = %cond.end
  %257 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr376 = getelementptr inbounds i8, i8* %257, i32 1
  store i8* %incdec.ptr376, i8** %cbp, align 8, !tbaa !4
  %258 = load i8, i8* %257, align 1, !tbaa !1
  %conv377 = zext i8 %258 to i32
  store i32 %conv377, i32* %data362, align 4, !tbaa !6
  %259 = load i32, i32* %data362, align 4, !tbaa !6
  %and378 = and i32 %259, 240
  %shl379 = shl i32 %and378, 4
  %conv380 = zext i32 %shl379 to i64
  %260 = load i32, i32* %data362, align 4, !tbaa !6
  %and381 = and i32 %260, 15
  %conv382 = zext i32 %and381 to i64
  %add383 = add i64 %conv380, %conv382
  %shl384 = shl i64 %add383, 24
  %shl385 = shl i64 %shl384, 24
  store i64 %shl385, i64* %delta, align 8, !tbaa !27
  br label %sw.bb.386

sw.bb.386:                                        ; preds = %cond.end, %sw.bb.375
  %261 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr387 = getelementptr inbounds i8, i8* %261, i32 1
  store i8* %incdec.ptr387, i8** %cbp, align 8, !tbaa !4
  %262 = load i8, i8* %261, align 1, !tbaa !1
  %conv388 = zext i8 %262 to i32
  store i32 %conv388, i32* %data362, align 4, !tbaa !6
  %263 = load i32, i32* %data362, align 4, !tbaa !6
  %and389 = and i32 %263, 240
  %shl390 = shl i32 %and389, 4
  %conv391 = zext i32 %shl390 to i64
  %264 = load i32, i32* %data362, align 4, !tbaa !6
  %and392 = and i32 %264, 15
  %conv393 = zext i32 %and392 to i64
  %add394 = add i64 %conv391, %conv393
  %shl395 = shl i64 %add394, 16
  %shl396 = shl i64 %shl395, 16
  %265 = load i64, i64* %delta, align 8, !tbaa !27
  %or = or i64 %265, %shl396
  store i64 %or, i64* %delta, align 8, !tbaa !27
  br label %sw.bb.397

sw.bb.397:                                        ; preds = %cond.end, %sw.bb.386
  %266 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr398 = getelementptr inbounds i8, i8* %266, i32 1
  store i8* %incdec.ptr398, i8** %cbp, align 8, !tbaa !4
  %267 = load i8, i8* %266, align 1, !tbaa !1
  %conv399 = zext i8 %267 to i32
  store i32 %conv399, i32* %data362, align 4, !tbaa !6
  %268 = load i32, i32* %data362, align 4, !tbaa !6
  %and400 = and i32 %268, 240
  %shl401 = shl i32 %and400, 4
  %conv402 = zext i32 %shl401 to i64
  %269 = load i32, i32* %data362, align 4, !tbaa !6
  %and403 = and i32 %269, 15
  %conv404 = zext i32 %and403 to i64
  %add405 = add i64 %conv402, %conv404
  %shl406 = shl i64 %add405, 16
  %270 = load i64, i64* %delta, align 8, !tbaa !27
  %or407 = or i64 %270, %shl406
  store i64 %or407, i64* %delta, align 8, !tbaa !27
  br label %sw.bb.408

sw.bb.408:                                        ; preds = %cond.end, %sw.bb.397
  %271 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr409 = getelementptr inbounds i8, i8* %271, i32 1
  store i8* %incdec.ptr409, i8** %cbp, align 8, !tbaa !4
  %272 = load i8, i8* %271, align 1, !tbaa !1
  %conv410 = zext i8 %272 to i32
  store i32 %conv410, i32* %data362, align 4, !tbaa !6
  %273 = load i32, i32* %data362, align 4, !tbaa !6
  %and411 = and i32 %273, 240
  %shl412 = shl i32 %and411, 4
  %conv413 = zext i32 %shl412 to i64
  %274 = load i32, i32* %data362, align 4, !tbaa !6
  %and414 = and i32 %274, 15
  %conv415 = zext i32 %and414 to i64
  %add416 = add i64 %conv413, %conv415
  %275 = load i64, i64* %delta, align 8, !tbaa !27
  %or417 = or i64 %275, %add416
  store i64 %or417, i64* %delta, align 8, !tbaa !27
  br label %sw.epilog.463

sw.bb.418:                                        ; preds = %cond.end
  %276 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr419 = getelementptr inbounds i8, i8* %276, i32 1
  store i8* %incdec.ptr419, i8** %cbp, align 8, !tbaa !4
  %277 = load i8, i8* %276, align 1, !tbaa !1
  %conv420 = zext i8 %277 to i32
  store i32 %conv420, i32* %data362, align 4, !tbaa !6
  %278 = load i32, i32* %data362, align 4, !tbaa !6
  %and421 = and i32 %278, 240
  %shl422 = shl i32 %and421, 4
  %conv423 = zext i32 %shl422 to i64
  %279 = load i32, i32* %data362, align 4, !tbaa !6
  %and424 = and i32 %279, 15
  %conv425 = zext i32 %and424 to i64
  %add426 = add i64 %conv423, %conv425
  %shl427 = shl i64 %add426, 16
  store i64 %shl427, i64* %delta, align 8, !tbaa !27
  br label %sw.bb.428

sw.bb.428:                                        ; preds = %cond.end, %sw.bb.418
  %280 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr429 = getelementptr inbounds i8, i8* %280, i32 1
  store i8* %incdec.ptr429, i8** %cbp, align 8, !tbaa !4
  %281 = load i8, i8* %280, align 1, !tbaa !1
  %conv430 = zext i8 %281 to i32
  store i32 %conv430, i32* %data362, align 4, !tbaa !6
  %282 = load i32, i32* %data362, align 4, !tbaa !6
  %and431 = and i32 %282, 240
  %shl432 = shl i32 %and431, 4
  %conv433 = zext i32 %shl432 to i64
  %283 = load i32, i32* %data362, align 4, !tbaa !6
  %and434 = and i32 %283, 15
  %conv435 = zext i32 %and434 to i64
  %add436 = add i64 %conv433, %conv435
  %284 = load i64, i64* %delta, align 8, !tbaa !27
  %or437 = or i64 %284, %add436
  store i64 %or437, i64* %delta, align 8, !tbaa !27
  br label %sw.bb.438

sw.bb.438:                                        ; preds = %cond.end, %sw.bb.428
  %285 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr439 = getelementptr inbounds i8, i8* %285, i32 1
  store i8* %incdec.ptr439, i8** %cbp, align 8, !tbaa !4
  %286 = load i8, i8* %285, align 1, !tbaa !1
  %conv440 = zext i8 %286 to i32
  store i32 %conv440, i32* %data362, align 4, !tbaa !6
  %287 = load i32, i32* %dev_depth_bytes, align 4, !tbaa !6
  %sub441 = sub nsw i32 %287, 3
  %mul442 = mul nsw i32 %sub441, 8
  store i32 %mul442, i32* %odd_delta_shift, align 4, !tbaa !6
  %288 = load i32, i32* %data362, align 4, !tbaa !6
  %and443 = and i32 %288, 224
  %shl444 = shl i32 %and443, 3
  %conv445 = zext i32 %shl444 to i64
  %289 = load i32, i32* %data362, align 4, !tbaa !6
  %and446 = and i32 %289, 31
  %conv447 = zext i32 %and446 to i64
  %add448 = add i64 %conv445, %conv447
  %290 = load i32, i32* %odd_delta_shift, align 4, !tbaa !6
  %sh_prom = zext i32 %290 to i64
  %shl449 = shl i64 %add448, %sh_prom
  %291 = load i64, i64* %delta, align 8, !tbaa !27
  %or450 = or i64 %291, %shl449
  store i64 %or450, i64* %delta, align 8, !tbaa !27
  %292 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr451 = getelementptr inbounds i8, i8* %292, i32 1
  store i8* %incdec.ptr451, i8** %cbp, align 8, !tbaa !4
  %293 = load i8, i8* %292, align 1, !tbaa !1
  %conv452 = zext i8 %293 to i32
  store i32 %conv452, i32* %data362, align 4, !tbaa !6
  %294 = load i32, i32* %data362, align 4, !tbaa !6
  %and453 = and i32 %294, 248
  %shl454 = shl i32 %and453, 2
  %conv455 = zext i32 %shl454 to i64
  %295 = load i32, i32* %data362, align 4, !tbaa !6
  %and456 = and i32 %295, 7
  %conv457 = zext i32 %and456 to i64
  %add458 = add i64 %conv455, %conv457
  %296 = load i32, i32* %odd_delta_shift, align 4, !tbaa !6
  %add459 = add nsw i32 %296, 11
  %sh_prom460 = zext i32 %add459 to i64
  %shl461 = shl i64 %add458, %sh_prom460
  %297 = load i64, i64* %delta, align 8, !tbaa !27
  %or462 = or i64 %297, %shl461
  store i64 %or462, i64* %delta, align 8, !tbaa !27
  br label %sw.epilog.463

sw.epilog.463:                                    ; preds = %sw.bb.438, %cond.end, %sw.bb.408
  %298 = load i64, i64* %delta, align 8, !tbaa !27
  %299 = load i32, i32* %dev_depth_bytes, align 4, !tbaa !6
  %idxprom = sext i32 %299 to i64
  %arrayidx464 = getelementptr inbounds [0 x i64], [0 x i64]* @cmd_delta_offsets, i32 0, i64 %idxprom
  %300 = load i64, i64* %arrayidx464, align 8, !tbaa !27
  %sub465 = sub i64 %298, %300
  %301 = load i64*, i64** %pcolor, align 8, !tbaa !4
  %302 = load i64, i64* %301, align 8, !tbaa !27
  %add466 = add i64 %302, %sub465
  store i64 %add466, i64* %301, align 8, !tbaa !27
  %303 = bitcast i32* %data362 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %303) #1
  %304 = bitcast i64* %delta to i8*
  call void @llvm.lifetime.end(i64 8, i8* %304) #1
  br label %do.body.467

do.body.467:                                      ; preds = %sw.epilog.463
  br label %do.cond.468

do.cond.468:                                      ; preds = %do.body.467
  br label %do.end.469

do.end.469:                                       ; preds = %do.cond.468
  store i32 22, i32* %cleanup.dest.slot
  br label %cleanup.3226

sw.bb.470:                                        ; preds = %sw.bb
  %color_is_alpha = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 12
  store i32 0, i32* %color_is_alpha, align 4, !tbaa !118
  br label %do.body.471

do.body.471:                                      ; preds = %sw.bb.470
  br label %do.cond.472

do.cond.472:                                      ; preds = %do.body.471
  br label %do.end.473

do.end.473:                                       ; preds = %do.cond.472
  store i32 22, i32* %cleanup.dest.slot
  br label %cleanup.3226

sw.bb.474:                                        ; preds = %sw.bb
  %color_is_alpha475 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 12
  store i32 1, i32* %color_is_alpha475, align 4, !tbaa !118
  br label %do.body.476

do.body.476:                                      ; preds = %sw.bb.474
  br label %do.cond.477

do.cond.477:                                      ; preds = %do.body.476
  br label %do.end.478

do.end.478:                                       ; preds = %do.cond.477
  store i32 22, i32* %cleanup.dest.slot
  br label %cleanup.3226

sw.default.479:                                   ; preds = %sw.bb
  br label %bad_op

sw.bb.480:                                        ; preds = %if.end.129
  %305 = load i64*, i64** %set_colors, align 8, !tbaa !4
  %arrayidx481 = getelementptr inbounds i64, i64* %305, i64 0
  store i64* %arrayidx481, i64** %pcolor, align 8, !tbaa !4
  br label %set_color

sw.bb.482:                                        ; preds = %if.end.129
  %306 = load i64*, i64** %set_colors, align 8, !tbaa !4
  %arrayidx483 = getelementptr inbounds i64, i64* %306, i64 1
  store i64* %arrayidx483, i64** %pcolor, align 8, !tbaa !4
  br label %set_color

set_color:                                        ; preds = %sw.bb.482, %sw.bb.480
  %colors484 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 0
  %arraydecay485 = getelementptr inbounds [2 x i64], [2 x i64]* %colors484, i32 0, i32 0
  store i64* %arraydecay485, i64** %set_colors, align 8, !tbaa !4
  %307 = load i32, i32* %op, align 4, !tbaa !6
  %and486 = and i32 %307, 15
  store i32 %and486, i32* %num_zero_bytes, align 4, !tbaa !6
  %308 = load i32, i32* %num_zero_bytes, align 4, !tbaa !6
  %cmp487 = icmp eq i32 %308, 15
  br i1 %cmp487, label %if.then.489, label %if.else.490

if.then.489:                                      ; preds = %set_color
  %309 = load i64*, i64** %pcolor, align 8, !tbaa !4
  store i64 -1, i64* %309, align 8, !tbaa !27
  br label %if.end.550

if.else.490:                                      ; preds = %set_color
  %310 = bitcast i64* %color to i8*
  call void @llvm.lifetime.start(i64 8, i8* %310) #1
  store i64 0, i64* %color, align 8, !tbaa !27
  %311 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !4
  %color_info491 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %311, i32 0, i32 11
  %depth492 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info491, i32 0, i32 3
  %312 = load i16, i16* %depth492, align 2, !tbaa !117
  %conv493 = zext i16 %312 to i64
  %cmp494 = icmp ult i64 %conv493, 64
  br i1 %cmp494, label %cond.true.496, label %cond.false.500

cond.true.496:                                    ; preds = %if.else.490
  %313 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !4
  %color_info497 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %313, i32 0, i32 11
  %depth498 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info497, i32 0, i32 3
  %314 = load i16, i16* %depth498, align 2, !tbaa !117
  %conv499 = zext i16 %314 to i64
  br label %cond.end.501

cond.false.500:                                   ; preds = %if.else.490
  br label %cond.end.501

cond.end.501:                                     ; preds = %cond.false.500, %cond.true.496
  %cond502 = phi i64 [ %conv499, %cond.true.496 ], [ 64, %cond.false.500 ]
  %conv503 = trunc i64 %cond502 to i32
  store i32 %conv503, i32* %dev_depth, align 4, !tbaa !6
  %315 = load i32, i32* %dev_depth, align 4, !tbaa !6
  %add504 = add nsw i32 %315, 7
  %shr505 = ashr i32 %add504, 3
  store i32 %shr505, i32* %dev_depth_bytes, align 4, !tbaa !6
  %316 = load i32, i32* %dev_depth_bytes, align 4, !tbaa !6
  %317 = load i32, i32* %num_zero_bytes, align 4, !tbaa !6
  %sub506 = sub nsw i32 %316, %317
  switch i32 %sub506, label %sw.default.545 [
    i32 8, label %sw.bb.507
    i32 7, label %sw.bb.510
    i32 6, label %sw.bb.515
    i32 5, label %sw.bb.520
    i32 4, label %sw.bb.525
    i32 3, label %sw.bb.530
    i32 2, label %sw.bb.535
    i32 1, label %sw.bb.540
  ]

sw.bb.507:                                        ; preds = %cond.end.501
  %318 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr508 = getelementptr inbounds i8, i8* %318, i32 1
  store i8* %incdec.ptr508, i8** %cbp, align 8, !tbaa !4
  %319 = load i8, i8* %318, align 1, !tbaa !1
  %conv509 = zext i8 %319 to i64
  store i64 %conv509, i64* %color, align 8, !tbaa !27
  br label %sw.bb.510

sw.bb.510:                                        ; preds = %cond.end.501, %sw.bb.507
  %320 = load i64, i64* %color, align 8, !tbaa !27
  %shl511 = shl i64 %320, 8
  %321 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr512 = getelementptr inbounds i8, i8* %321, i32 1
  store i8* %incdec.ptr512, i8** %cbp, align 8, !tbaa !4
  %322 = load i8, i8* %321, align 1, !tbaa !1
  %conv513 = zext i8 %322 to i64
  %or514 = or i64 %shl511, %conv513
  store i64 %or514, i64* %color, align 8, !tbaa !27
  br label %sw.bb.515

sw.bb.515:                                        ; preds = %cond.end.501, %sw.bb.510
  %323 = load i64, i64* %color, align 8, !tbaa !27
  %shl516 = shl i64 %323, 8
  %324 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr517 = getelementptr inbounds i8, i8* %324, i32 1
  store i8* %incdec.ptr517, i8** %cbp, align 8, !tbaa !4
  %325 = load i8, i8* %324, align 1, !tbaa !1
  %conv518 = zext i8 %325 to i64
  %or519 = or i64 %shl516, %conv518
  store i64 %or519, i64* %color, align 8, !tbaa !27
  br label %sw.bb.520

sw.bb.520:                                        ; preds = %cond.end.501, %sw.bb.515
  %326 = load i64, i64* %color, align 8, !tbaa !27
  %shl521 = shl i64 %326, 8
  %327 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr522 = getelementptr inbounds i8, i8* %327, i32 1
  store i8* %incdec.ptr522, i8** %cbp, align 8, !tbaa !4
  %328 = load i8, i8* %327, align 1, !tbaa !1
  %conv523 = zext i8 %328 to i64
  %or524 = or i64 %shl521, %conv523
  store i64 %or524, i64* %color, align 8, !tbaa !27
  br label %sw.bb.525

sw.bb.525:                                        ; preds = %cond.end.501, %sw.bb.520
  %329 = load i64, i64* %color, align 8, !tbaa !27
  %shl526 = shl i64 %329, 8
  %330 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr527 = getelementptr inbounds i8, i8* %330, i32 1
  store i8* %incdec.ptr527, i8** %cbp, align 8, !tbaa !4
  %331 = load i8, i8* %330, align 1, !tbaa !1
  %conv528 = zext i8 %331 to i64
  %or529 = or i64 %shl526, %conv528
  store i64 %or529, i64* %color, align 8, !tbaa !27
  br label %sw.bb.530

sw.bb.530:                                        ; preds = %cond.end.501, %sw.bb.525
  %332 = load i64, i64* %color, align 8, !tbaa !27
  %shl531 = shl i64 %332, 8
  %333 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr532 = getelementptr inbounds i8, i8* %333, i32 1
  store i8* %incdec.ptr532, i8** %cbp, align 8, !tbaa !4
  %334 = load i8, i8* %333, align 1, !tbaa !1
  %conv533 = zext i8 %334 to i64
  %or534 = or i64 %shl531, %conv533
  store i64 %or534, i64* %color, align 8, !tbaa !27
  br label %sw.bb.535

sw.bb.535:                                        ; preds = %cond.end.501, %sw.bb.530
  %335 = load i64, i64* %color, align 8, !tbaa !27
  %shl536 = shl i64 %335, 8
  %336 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr537 = getelementptr inbounds i8, i8* %336, i32 1
  store i8* %incdec.ptr537, i8** %cbp, align 8, !tbaa !4
  %337 = load i8, i8* %336, align 1, !tbaa !1
  %conv538 = zext i8 %337 to i64
  %or539 = or i64 %shl536, %conv538
  store i64 %or539, i64* %color, align 8, !tbaa !27
  br label %sw.bb.540

sw.bb.540:                                        ; preds = %cond.end.501, %sw.bb.535
  %338 = load i64, i64* %color, align 8, !tbaa !27
  %shl541 = shl i64 %338, 8
  %339 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr542 = getelementptr inbounds i8, i8* %339, i32 1
  store i8* %incdec.ptr542, i8** %cbp, align 8, !tbaa !4
  %340 = load i8, i8* %339, align 1, !tbaa !1
  %conv543 = zext i8 %340 to i64
  %or544 = or i64 %shl541, %conv543
  store i64 %or544, i64* %color, align 8, !tbaa !27
  br label %sw.default.545

sw.default.545:                                   ; preds = %cond.end.501, %sw.bb.540
  br label %sw.epilog.546

sw.epilog.546:                                    ; preds = %sw.default.545
  %341 = load i32, i32* %num_zero_bytes, align 4, !tbaa !6
  %mul547 = mul nsw i32 %341, 8
  %342 = load i64, i64* %color, align 8, !tbaa !27
  %sh_prom548 = zext i32 %mul547 to i64
  %shl549 = shl i64 %342, %sh_prom548
  store i64 %shl549, i64* %color, align 8, !tbaa !27
  %343 = load i64, i64* %color, align 8, !tbaa !27
  %344 = load i64*, i64** %pcolor, align 8, !tbaa !4
  store i64 %343, i64* %344, align 8, !tbaa !27
  %345 = bitcast i64* %color to i8*
  call void @llvm.lifetime.end(i64 8, i8* %345) #1
  br label %if.end.550

if.end.550:                                       ; preds = %sw.epilog.546, %if.then.489
  br label %do.body.551

do.body.551:                                      ; preds = %if.end.550
  br label %do.cond.552

do.cond.552:                                      ; preds = %do.body.551
  br label %do.end.553

do.end.553:                                       ; preds = %do.cond.552
  store i32 22, i32* %cleanup.dest.slot
  br label %cleanup.3226

sw.bb.554:                                        ; preds = %if.end.129, %if.end.129
  %346 = load i32, i32* %op, align 4, !tbaa !6
  %rect = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 8
  %347 = load i8*, i8** %cbp, align 8, !tbaa !4
  %call555 = call i8* @cmd_read_rect(i32 %346, %struct.gx_cmd_rect* %rect, i8* %347) #6
  store i8* %call555, i8** %cbp, align 8, !tbaa !4
  br label %sw.epilog.2932

sw.bb.556:                                        ; preds = %if.end.129, %if.end.129
  %348 = load i8*, i8** %cbp, align 8, !tbaa !4
  %349 = load i8, i8* %348, align 1, !tbaa !1
  %conv557 = zext i8 %349 to i32
  %add558 = add nsw i32 %conv557, -128
  %rect559 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 8
  %x560 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect559, i32 0, i32 0
  %350 = load i32, i32* %x560, align 4, !tbaa !119
  %add561 = add nsw i32 %350, %add558
  store i32 %add561, i32* %x560, align 4, !tbaa !119
  %351 = load i8*, i8** %cbp, align 8, !tbaa !4
  %arrayidx562 = getelementptr inbounds i8, i8* %351, i64 1
  %352 = load i8, i8* %arrayidx562, align 1, !tbaa !1
  %conv563 = zext i8 %352 to i32
  %add564 = add nsw i32 %conv563, -128
  %rect565 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 8
  %width566 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect565, i32 0, i32 2
  %353 = load i32, i32* %width566, align 4, !tbaa !120
  %add567 = add nsw i32 %353, %add564
  store i32 %add567, i32* %width566, align 4, !tbaa !120
  %354 = load i32, i32* %op, align 4, !tbaa !6
  %and568 = and i32 %354, 15
  %tobool569 = icmp ne i32 %and568, 0
  br i1 %tobool569, label %if.then.570, label %if.else.577

if.then.570:                                      ; preds = %sw.bb.556
  %355 = load i32, i32* %op, align 4, !tbaa !6
  %and571 = and i32 %355, 15
  %add572 = add nsw i32 %and571, -8
  %rect573 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 8
  %height574 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect573, i32 0, i32 3
  %356 = load i32, i32* %height574, align 4, !tbaa !121
  %add575 = add nsw i32 %356, %add572
  store i32 %add575, i32* %height574, align 4, !tbaa !121
  %357 = load i8*, i8** %cbp, align 8, !tbaa !4
  %add.ptr576 = getelementptr inbounds i8, i8* %357, i64 2
  store i8* %add.ptr576, i8** %cbp, align 8, !tbaa !4
  br label %if.end.591

if.else.577:                                      ; preds = %sw.bb.556
  %358 = load i8*, i8** %cbp, align 8, !tbaa !4
  %arrayidx578 = getelementptr inbounds i8, i8* %358, i64 2
  %359 = load i8, i8* %arrayidx578, align 1, !tbaa !1
  %conv579 = zext i8 %359 to i32
  %add580 = add nsw i32 %conv579, -128
  %rect581 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 8
  %y582 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect581, i32 0, i32 1
  %360 = load i32, i32* %y582, align 4, !tbaa !122
  %add583 = add nsw i32 %360, %add580
  store i32 %add583, i32* %y582, align 4, !tbaa !122
  %361 = load i8*, i8** %cbp, align 8, !tbaa !4
  %arrayidx584 = getelementptr inbounds i8, i8* %361, i64 3
  %362 = load i8, i8* %arrayidx584, align 1, !tbaa !1
  %conv585 = zext i8 %362 to i32
  %add586 = add nsw i32 %conv585, -128
  %rect587 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 8
  %height588 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect587, i32 0, i32 3
  %363 = load i32, i32* %height588, align 4, !tbaa !121
  %add589 = add nsw i32 %363, %add586
  store i32 %add589, i32* %height588, align 4, !tbaa !121
  %364 = load i8*, i8** %cbp, align 8, !tbaa !4
  %add.ptr590 = getelementptr inbounds i8, i8* %364, i64 4
  store i8* %add.ptr590, i8** %cbp, align 8, !tbaa !4
  br label %if.end.591

if.end.591:                                       ; preds = %if.else.577, %if.then.570
  br label %sw.epilog.2932

sw.bb.592:                                        ; preds = %if.end.129, %if.end.129
  %365 = load i32, i32* %op, align 4, !tbaa !6
  %and593 = and i32 %365, 8
  %tobool594 = icmp ne i32 %and593, 0
  br i1 %tobool594, label %if.then.595, label %if.else.601

if.then.595:                                      ; preds = %sw.bb.592
  %rect596 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 8
  %width597 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect596, i32 0, i32 2
  %366 = load i32, i32* %width597, align 4, !tbaa !120
  %rect598 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 8
  %x599 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect598, i32 0, i32 0
  %367 = load i32, i32* %x599, align 4, !tbaa !119
  %add600 = add nsw i32 %367, %366
  store i32 %add600, i32* %x599, align 4, !tbaa !119
  br label %if.end.614

if.else.601:                                      ; preds = %sw.bb.592
  %368 = bitcast i32* %txy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %368) #1
  %369 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr602 = getelementptr inbounds i8, i8* %369, i32 1
  store i8* %incdec.ptr602, i8** %cbp, align 8, !tbaa !4
  %370 = load i8, i8* %369, align 1, !tbaa !1
  %conv603 = zext i8 %370 to i32
  store i32 %conv603, i32* %txy, align 4, !tbaa !6
  %371 = load i32, i32* %txy, align 4, !tbaa !6
  %shr604 = ashr i32 %371, 4
  %add605 = add nsw i32 %shr604, -8
  %rect606 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 8
  %x607 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect606, i32 0, i32 0
  %372 = load i32, i32* %x607, align 4, !tbaa !119
  %add608 = add nsw i32 %372, %add605
  store i32 %add608, i32* %x607, align 4, !tbaa !119
  %373 = load i32, i32* %txy, align 4, !tbaa !6
  %and609 = and i32 %373, 15
  %add610 = add nsw i32 %and609, -8
  %rect611 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 8
  %y612 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect611, i32 0, i32 1
  %374 = load i32, i32* %y612, align 4, !tbaa !122
  %add613 = add nsw i32 %374, %add610
  store i32 %add613, i32* %y612, align 4, !tbaa !122
  %375 = bitcast i32* %txy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %375) #1
  br label %if.end.614

if.end.614:                                       ; preds = %if.else.601, %if.then.595
  %376 = load i32, i32* %op, align 4, !tbaa !6
  %and615 = and i32 %376, 7
  %add616 = add nsw i32 %and615, -4
  %rect617 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 8
  %width618 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect617, i32 0, i32 2
  %377 = load i32, i32* %width618, align 4, !tbaa !120
  %add619 = add nsw i32 %377, %add616
  store i32 %add619, i32* %width618, align 4, !tbaa !120
  br label %sw.epilog.2932

sw.bb.620:                                        ; preds = %if.end.129
  br label %do.body.621

do.body.621:                                      ; preds = %sw.bb.620
  %378 = load i8*, i8** %cbp, align 8, !tbaa !4
  %379 = load i8, i8* %378, align 1, !tbaa !1
  %conv622 = zext i8 %379 to i32
  %cmp623 = icmp slt i32 %conv622, 128
  br i1 %cmp623, label %if.then.625, label %if.else.628

if.then.625:                                      ; preds = %do.body.621
  %380 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr626 = getelementptr inbounds i8, i8* %380, i32 1
  store i8* %incdec.ptr626, i8** %cbp, align 8, !tbaa !4
  %381 = load i8, i8* %380, align 1, !tbaa !1
  %conv627 = zext i8 %381 to i32
  store i32 %conv627, i32* %plane_height, align 4, !tbaa !6
  br label %if.end.632

if.else.628:                                      ; preds = %do.body.621
  %382 = bitcast i8** %_cbp629 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %382) #1
  %383 = load i8*, i8** %cbp, align 8, !tbaa !4
  %call630 = call i64 @cmd_get_w(i8* %383, i8** %_cbp629) #6
  %conv631 = trunc i64 %call630 to i32
  store i32 %conv631, i32* %plane_height, align 4, !tbaa !6
  %384 = load i8*, i8** %_cbp629, align 8, !tbaa !4
  store i8* %384, i8** %cbp, align 8, !tbaa !4
  %385 = bitcast i8** %_cbp629 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %385) #1
  br label %if.end.632

if.end.632:                                       ; preds = %if.else.628, %if.then.625
  br label %do.cond.633

do.cond.633:                                      ; preds = %if.end.632
  br label %do.end.634

do.end.634:                                       ; preds = %do.cond.633
  %386 = load i32, i32* %plane_height, align 4, !tbaa !6
  %cmp635 = icmp eq i32 %386, 0
  br i1 %cmp635, label %if.then.637, label %if.else.638

if.then.637:                                      ; preds = %do.end.634
  store i32 1, i32* %depth, align 4, !tbaa !6
  br label %if.end.642

if.else.638:                                      ; preds = %do.end.634
  %387 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !4
  %color_info639 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %387, i32 0, i32 11
  %depth640 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info639, i32 0, i32 3
  %388 = load i16, i16* %depth640, align 2, !tbaa !117
  %conv641 = zext i16 %388 to i32
  store i32 %conv641, i32* %depth, align 4, !tbaa !6
  br label %if.end.642

if.end.642:                                       ; preds = %if.else.638, %if.then.637
  br label %do.body.643

do.body.643:                                      ; preds = %if.end.642
  br label %do.cond.644

do.cond.644:                                      ; preds = %do.body.643
  br label %do.end.645

do.end.645:                                       ; preds = %do.cond.644
  br label %copy

sw.bb.646:                                        ; preds = %if.end.129
  %color_is_alpha647 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 12
  %389 = load i32, i32* %color_is_alpha647, align 4, !tbaa !118
  %tobool648 = icmp ne i32 %389, 0
  br i1 %tobool648, label %if.then.649, label %if.else.656

if.then.649:                                      ; preds = %sw.bb.646
  %390 = load i32, i32* %op, align 4, !tbaa !6
  %and650 = and i32 %390, 8
  %tobool651 = icmp ne i32 %and650, 0
  br i1 %tobool651, label %if.end.655, label %if.then.652

if.then.652:                                      ; preds = %if.then.649
  %391 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr653 = getelementptr inbounds i8, i8* %391, i32 1
  store i8* %incdec.ptr653, i8** %cbp, align 8, !tbaa !4
  %392 = load i8, i8* %391, align 1, !tbaa !1
  %conv654 = zext i8 %392 to i32
  store i32 %conv654, i32* %depth, align 4, !tbaa !6
  br label %if.end.655

if.end.655:                                       ; preds = %if.then.652, %if.then.649
  br label %if.end.660

if.else.656:                                      ; preds = %sw.bb.646
  %393 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !4
  %color_info657 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %393, i32 0, i32 11
  %depth658 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info657, i32 0, i32 3
  %394 = load i16, i16* %depth658, align 2, !tbaa !117
  %conv659 = zext i16 %394 to i32
  store i32 %conv659, i32* %depth, align 4, !tbaa !6
  br label %if.end.660

if.end.660:                                       ; preds = %if.else.656, %if.end.655
  store i32 0, i32* %plane_height, align 4, !tbaa !6
  br label %copy

copy:                                             ; preds = %if.end.660, %do.end.645
  br label %do.body.661

do.body.661:                                      ; preds = %copy
  %395 = load i8*, i8** %cbp, align 8, !tbaa !4
  %396 = load i8, i8* %395, align 1, !tbaa !1
  %conv662 = zext i8 %396 to i32
  %cmp663 = icmp slt i32 %conv662, 128
  br i1 %cmp663, label %if.then.665, label %if.else.670

if.then.665:                                      ; preds = %do.body.661
  %397 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr666 = getelementptr inbounds i8, i8* %397, i32 1
  store i8* %incdec.ptr666, i8** %cbp, align 8, !tbaa !4
  %398 = load i8, i8* %397, align 1, !tbaa !1
  %conv667 = zext i8 %398 to i32
  %rect668 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 8
  %x669 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect668, i32 0, i32 0
  store i32 %conv667, i32* %x669, align 4, !tbaa !119
  br label %if.end.676

if.else.670:                                      ; preds = %do.body.661
  %399 = bitcast i8** %_cbp671 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %399) #1
  %400 = load i8*, i8** %cbp, align 8, !tbaa !4
  %call672 = call i64 @cmd_get_w(i8* %400, i8** %_cbp671) #6
  %conv673 = trunc i64 %call672 to i32
  %rect674 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 8
  %x675 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect674, i32 0, i32 0
  store i32 %conv673, i32* %x675, align 4, !tbaa !119
  %401 = load i8*, i8** %_cbp671, align 8, !tbaa !4
  store i8* %401, i8** %cbp, align 8, !tbaa !4
  %402 = bitcast i8** %_cbp671 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %402) #1
  br label %if.end.676

if.end.676:                                       ; preds = %if.else.670, %if.then.665
  br label %do.cond.677

do.cond.677:                                      ; preds = %if.end.676
  br label %do.end.678

do.end.678:                                       ; preds = %do.cond.677
  br label %do.body.679

do.body.679:                                      ; preds = %do.end.678
  %403 = load i8*, i8** %cbp, align 8, !tbaa !4
  %404 = load i8, i8* %403, align 1, !tbaa !1
  %conv680 = zext i8 %404 to i32
  %cmp681 = icmp slt i32 %conv680, 128
  br i1 %cmp681, label %if.then.683, label %if.else.688

if.then.683:                                      ; preds = %do.body.679
  %405 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr684 = getelementptr inbounds i8, i8* %405, i32 1
  store i8* %incdec.ptr684, i8** %cbp, align 8, !tbaa !4
  %406 = load i8, i8* %405, align 1, !tbaa !1
  %conv685 = zext i8 %406 to i32
  %rect686 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 8
  %y687 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect686, i32 0, i32 1
  store i32 %conv685, i32* %y687, align 4, !tbaa !122
  br label %if.end.694

if.else.688:                                      ; preds = %do.body.679
  %407 = bitcast i8** %_cbp689 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %407) #1
  %408 = load i8*, i8** %cbp, align 8, !tbaa !4
  %call690 = call i64 @cmd_get_w(i8* %408, i8** %_cbp689) #6
  %conv691 = trunc i64 %call690 to i32
  %rect692 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 8
  %y693 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect692, i32 0, i32 1
  store i32 %conv691, i32* %y693, align 4, !tbaa !122
  %409 = load i8*, i8** %_cbp689, align 8, !tbaa !4
  store i8* %409, i8** %cbp, align 8, !tbaa !4
  %410 = bitcast i8** %_cbp689 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %410) #1
  br label %if.end.694

if.end.694:                                       ; preds = %if.else.688, %if.then.683
  br label %do.cond.695

do.cond.695:                                      ; preds = %if.end.694
  br label %do.end.696

do.end.696:                                       ; preds = %do.cond.695
  %411 = load i32, i32* %op, align 4, !tbaa !6
  %and697 = and i32 %411, 8
  %tobool698 = icmp ne i32 %and697, 0
  br i1 %tobool698, label %if.then.699, label %if.else.713

if.then.699:                                      ; preds = %do.end.696
  %412 = load %struct.tile_slot*, %struct.tile_slot** %state_slot, align 8, !tbaa !4
  %head700 = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %412, i32 0, i32 0
  %depth701 = getelementptr inbounds %struct.gx_cached_bits_head_s, %struct.gx_cached_bits_head_s* %head700, i32 0, i32 1
  %413 = load i32, i32* %depth701, align 4, !tbaa !103
  store i32 %413, i32* %depth, align 4, !tbaa !6
  %414 = load %struct.tile_slot*, %struct.tile_slot** %state_slot, align 8, !tbaa !4
  %width702 = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %414, i32 0, i32 1
  %415 = load i16, i16* %width702, align 2, !tbaa !106
  %conv703 = zext i16 %415 to i32
  %rect704 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 8
  %width705 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect704, i32 0, i32 2
  store i32 %conv703, i32* %width705, align 4, !tbaa !120
  %416 = load %struct.tile_slot*, %struct.tile_slot** %state_slot, align 8, !tbaa !4
  %height706 = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %416, i32 0, i32 2
  %417 = load i16, i16* %height706, align 2, !tbaa !107
  %conv707 = zext i16 %417 to i32
  %rect708 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 8
  %height709 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect708, i32 0, i32 3
  store i32 %conv707, i32* %height709, align 4, !tbaa !121
  %418 = load %struct.tile_slot*, %struct.tile_slot** %state_slot, align 8, !tbaa !4
  %raster710 = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %418, i32 0, i32 4
  %419 = load i16, i16* %raster710, align 2, !tbaa !108
  %conv711 = zext i16 %419 to i32
  store i32 %conv711, i32* %raster, align 4, !tbaa !6
  %420 = load %struct.tile_slot*, %struct.tile_slot** %state_slot, align 8, !tbaa !4
  %add.ptr712 = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %420, i64 1
  %421 = bitcast %struct.tile_slot* %add.ptr712 to i8*
  store i8* %421, i8** %source, align 8, !tbaa !4
  br label %if.end.917

if.else.713:                                      ; preds = %do.end.696
  %422 = bitcast i32* %width_bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %422) #1
  %423 = bitcast i32* %width_bytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %423) #1
  %424 = bitcast i32* %bytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %424) #1
  %425 = bitcast i32* %planes714 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %425) #1
  store i32 1, i32* %planes714, align 4, !tbaa !6
  %426 = bitcast i32* %plane_depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %426) #1
  %427 = load i32, i32* %depth, align 4, !tbaa !6
  store i32 %427, i32* %plane_depth, align 4, !tbaa !6
  %428 = bitcast i32* %pln to i8*
  call void @llvm.lifetime.start(i64 4, i8* %428) #1
  call void @llvm.lifetime.start(i64 1, i8* %compression) #1
  %429 = load i32, i32* %op, align 4, !tbaa !6
  %and715 = and i32 %429, 3
  %conv716 = trunc i32 %and715 to i8
  store i8 %conv716, i8* %compression, align 1, !tbaa !1
  %430 = bitcast i32* %out_bytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %430) #1
  br label %do.body.717

do.body.717:                                      ; preds = %if.else.713
  %431 = load i8*, i8** %cbp, align 8, !tbaa !4
  %432 = load i8, i8* %431, align 1, !tbaa !1
  %conv718 = zext i8 %432 to i32
  %cmp719 = icmp slt i32 %conv718, 128
  br i1 %cmp719, label %if.then.721, label %if.else.726

if.then.721:                                      ; preds = %do.body.717
  %433 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr722 = getelementptr inbounds i8, i8* %433, i32 1
  store i8* %incdec.ptr722, i8** %cbp, align 8, !tbaa !4
  %434 = load i8, i8* %433, align 1, !tbaa !1
  %conv723 = zext i8 %434 to i32
  %rect724 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 8
  %width725 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect724, i32 0, i32 2
  store i32 %conv723, i32* %width725, align 4, !tbaa !120
  br label %if.end.732

if.else.726:                                      ; preds = %do.body.717
  %435 = bitcast i8** %_cbp727 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %435) #1
  %436 = load i8*, i8** %cbp, align 8, !tbaa !4
  %call728 = call i64 @cmd_get_w(i8* %436, i8** %_cbp727) #6
  %conv729 = trunc i64 %call728 to i32
  %rect730 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 8
  %width731 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect730, i32 0, i32 2
  store i32 %conv729, i32* %width731, align 4, !tbaa !120
  %437 = load i8*, i8** %_cbp727, align 8, !tbaa !4
  store i8* %437, i8** %cbp, align 8, !tbaa !4
  %438 = bitcast i8** %_cbp727 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %438) #1
  br label %if.end.732

if.end.732:                                       ; preds = %if.else.726, %if.then.721
  br label %do.cond.733

do.cond.733:                                      ; preds = %if.end.732
  br label %do.end.734

do.end.734:                                       ; preds = %do.cond.733
  br label %do.body.735

do.body.735:                                      ; preds = %do.end.734
  %439 = load i8*, i8** %cbp, align 8, !tbaa !4
  %440 = load i8, i8* %439, align 1, !tbaa !1
  %conv736 = zext i8 %440 to i32
  %cmp737 = icmp slt i32 %conv736, 128
  br i1 %cmp737, label %if.then.739, label %if.else.744

if.then.739:                                      ; preds = %do.body.735
  %441 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr740 = getelementptr inbounds i8, i8* %441, i32 1
  store i8* %incdec.ptr740, i8** %cbp, align 8, !tbaa !4
  %442 = load i8, i8* %441, align 1, !tbaa !1
  %conv741 = zext i8 %442 to i32
  %rect742 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 8
  %height743 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect742, i32 0, i32 3
  store i32 %conv741, i32* %height743, align 4, !tbaa !121
  br label %if.end.750

if.else.744:                                      ; preds = %do.body.735
  %443 = bitcast i8** %_cbp745 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %443) #1
  %444 = load i8*, i8** %cbp, align 8, !tbaa !4
  %call746 = call i64 @cmd_get_w(i8* %444, i8** %_cbp745) #6
  %conv747 = trunc i64 %call746 to i32
  %rect748 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 8
  %height749 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect748, i32 0, i32 3
  store i32 %conv747, i32* %height749, align 4, !tbaa !121
  %445 = load i8*, i8** %_cbp745, align 8, !tbaa !4
  store i8* %445, i8** %cbp, align 8, !tbaa !4
  %446 = bitcast i8** %_cbp745 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %446) #1
  br label %if.end.750

if.end.750:                                       ; preds = %if.else.744, %if.then.739
  br label %do.cond.751

do.cond.751:                                      ; preds = %if.end.750
  br label %do.end.752

do.end.752:                                       ; preds = %do.cond.751
  %447 = load i32, i32* %plane_height, align 4, !tbaa !6
  %cmp753 = icmp ne i32 %447, 0
  br i1 %cmp753, label %if.then.755, label %if.end.757

if.then.755:                                      ; preds = %do.end.752
  %448 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !4
  %color_info756 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %448, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info756, i32 0, i32 1
  %449 = load i32, i32* %num_components, align 4, !tbaa !123
  store i32 %449, i32* %planes714, align 4, !tbaa !6
  %450 = load i32, i32* %planes714, align 4, !tbaa !6
  %451 = load i32, i32* %plane_depth, align 4, !tbaa !6
  %div = udiv i32 %451, %450
  store i32 %div, i32* %plane_depth, align 4, !tbaa !6
  br label %if.end.757

if.end.757:                                       ; preds = %if.then.755, %do.end.752
  %rect758 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 8
  %width759 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect758, i32 0, i32 2
  %452 = load i32, i32* %width759, align 4, !tbaa !120
  %453 = load i32, i32* %plane_depth, align 4, !tbaa !6
  %mul760 = mul i32 %452, %453
  store i32 %mul760, i32* %width_bits, align 4, !tbaa !6
  %454 = load i32, i32* %width_bits, align 4, !tbaa !6
  %rect761 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 8
  %height762 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect761, i32 0, i32 3
  %455 = load i32, i32* %height762, align 4, !tbaa !121
  %456 = load i32, i32* %op, align 4, !tbaa !6
  %and763 = and i32 %456, 3
  %call764 = call i32 @clist_bitmap_bytes(i32 %454, i32 %455, i32 %and763, i32* %width_bytes, i32* %raster) #6
  store i32 %call764, i32* %bytes, align 4, !tbaa !6
  %457 = load i32, i32* %planes714, align 4, !tbaa !6
  %cmp765 = icmp ugt i32 %457, 1
  br i1 %cmp765, label %if.then.767, label %if.else.773

if.then.767:                                      ; preds = %if.end.757
  %458 = load i32, i32* %raster, align 4, !tbaa !6
  %rect768 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 8
  %height769 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect768, i32 0, i32 3
  %459 = load i32, i32* %height769, align 4, !tbaa !121
  %mul770 = mul nsw i32 %458, %459
  store i32 %mul770, i32* %out_bytes, align 4, !tbaa !6
  %rect771 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 8
  %height772 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect771, i32 0, i32 3
  %460 = load i32, i32* %height772, align 4, !tbaa !121
  store i32 %460, i32* %plane_height, align 4, !tbaa !6
  br label %if.end.774

if.else.773:                                      ; preds = %if.end.757
  %461 = load i32, i32* %bytes, align 4, !tbaa !6
  store i32 %461, i32* %out_bytes, align 4, !tbaa !6
  br label %if.end.774

if.end.774:                                       ; preds = %if.else.773, %if.then.767
  store i32 0, i32* %pln, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.774
  %462 = load i32, i32* %pln, align 4, !tbaa !6
  %463 = load i32, i32* %planes714, align 4, !tbaa !6
  %cmp775 = icmp ult i32 %462, %463
  br i1 %cmp775, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %464 = bitcast i8** %plane_bits to i8*
  call void @llvm.lifetime.start(i64 8, i8* %464) #1
  %465 = load i8*, i8** %data_bits, align 8, !tbaa !4
  %466 = load i32, i32* %pln, align 4, !tbaa !6
  %467 = load i32, i32* %plane_height, align 4, !tbaa !6
  %mul777 = mul i32 %466, %467
  %468 = load i32, i32* %raster, align 4, !tbaa !6
  %mul778 = mul i32 %mul777, %468
  %idx.ext779 = zext i32 %mul778 to i64
  %add.ptr780 = getelementptr inbounds i8, i8* %465, i64 %idx.ext779
  store i8* %add.ptr780, i8** %plane_bits, align 8, !tbaa !4
  %469 = load i8*, i8** %cbp, align 8, !tbaa !4
  %470 = load i32, i32* %out_bytes, align 4, !tbaa !6
  %idx.ext781 = zext i32 %470 to i64
  %add.ptr782 = getelementptr inbounds i8, i8* %469, i64 %idx.ext781
  %warn_limit783 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %cbuf, i32 0, i32 3
  %471 = load i8*, i8** %warn_limit783, align 8, !tbaa !92
  %cmp784 = icmp uge i8* %add.ptr782, %471
  br i1 %cmp784, label %if.then.786, label %if.end.792

if.then.786:                                      ; preds = %for.body
  %call787 = call i32 @top_up_cbuf(%struct.command_buf_s* %cbuf, i8** %cbp) #6
  store i32 %call787, i32* %code, align 4, !tbaa !6
  %472 = load i32, i32* %code, align 4, !tbaa !6
  %cmp788 = icmp slt i32 %472, 0
  br i1 %cmp788, label %if.then.790, label %if.end.791

if.then.790:                                      ; preds = %if.then.786
  %473 = load i32, i32* %code, align 4, !tbaa !6
  store i32 %473, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.903

if.end.791:                                       ; preds = %if.then.786
  br label %if.end.792

if.end.792:                                       ; preds = %if.end.791, %for.body
  %474 = load i32, i32* %pln, align 4, !tbaa !6
  %tobool793 = icmp ne i32 %474, 0
  br i1 %tobool793, label %if.then.794, label %if.end.796

if.then.794:                                      ; preds = %if.end.792
  %475 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr795 = getelementptr inbounds i8, i8* %475, i32 1
  store i8* %incdec.ptr795, i8** %cbp, align 8, !tbaa !4
  %476 = load i8, i8* %475, align 1, !tbaa !1
  store i8 %476, i8* %compression, align 1, !tbaa !1
  br label %if.end.796

if.end.796:                                       ; preds = %if.then.794, %if.end.792
  %477 = load i8, i8* %compression, align 1, !tbaa !1
  %conv797 = zext i8 %477 to i32
  %cmp798 = icmp eq i32 %conv797, 3
  br i1 %cmp798, label %if.then.800, label %if.else.819

if.then.800:                                      ; preds = %if.end.796
  %478 = load i8*, i8** %plane_bits, align 8, !tbaa !4
  %479 = load i8*, i8** %cbp, align 8, !tbaa !4
  %call801 = call i8* @cmd_read_data(%struct.command_buf_s* %cbuf, i8* %478, i32 1, i8* %479) #6
  store i8* %call801, i8** %cbp, align 8, !tbaa !4
  %480 = load i32, i32* %width_bytes, align 4, !tbaa !6
  %cmp802 = icmp ugt i32 %480, 0
  br i1 %cmp802, label %land.lhs.true.804, label %if.end.818

land.lhs.true.804:                                ; preds = %if.then.800
  %rect805 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 8
  %height806 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect805, i32 0, i32 3
  %481 = load i32, i32* %height806, align 4, !tbaa !121
  %cmp807 = icmp sgt i32 %481, 0
  br i1 %cmp807, label %if.then.809, label %if.end.818

if.then.809:                                      ; preds = %land.lhs.true.804
  %482 = load i8*, i8** %plane_bits, align 8, !tbaa !4
  %add.ptr810 = getelementptr inbounds i8, i8* %482, i64 1
  %483 = load i8*, i8** %plane_bits, align 8, !tbaa !4
  %484 = load i8, i8* %483, align 1, !tbaa !1
  %conv811 = zext i8 %484 to i32
  %485 = load i32, i32* %width_bytes, align 4, !tbaa !6
  %rect812 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 8
  %height813 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect812, i32 0, i32 3
  %486 = load i32, i32* %height813, align 4, !tbaa !121
  %mul814 = mul i32 %485, %486
  %sub815 = sub i32 %mul814, 1
  %conv816 = zext i32 %sub815 to i64
  %call817 = call i8* @memset(i8* %add.ptr810, i32 %conv811, i64 %conv816) #7
  br label %if.end.818

if.end.818:                                       ; preds = %if.then.809, %land.lhs.true.804, %if.then.800
  br label %if.end.902

if.else.819:                                      ; preds = %if.end.796
  %487 = load i8, i8* %compression, align 1, !tbaa !1
  %tobool820 = icmp ne i8 %487, 0
  br i1 %tobool820, label %if.then.821, label %if.else.877

if.then.821:                                      ; preds = %if.else.819
  %488 = bitcast %struct.stream_cursor_read_s* %r to i8*
  call void @llvm.lifetime.start(i64 24, i8* %488) #1
  %489 = bitcast %struct.stream_cursor_write_s* %w to i8*
  call void @llvm.lifetime.start(i64 24, i8* %489) #1
  %490 = bitcast i32* %cleft to i8*
  call void @llvm.lifetime.start(i64 4, i8* %490) #1
  %end822 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %cbuf, i32 0, i32 4
  %491 = load i8*, i8** %end822, align 8, !tbaa !16
  %492 = load i8*, i8** %cbp, align 8, !tbaa !4
  %sub.ptr.lhs.cast = ptrtoint i8* %491 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %492 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv823 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv823, i32* %cleft, align 4, !tbaa !6
  %493 = load i32, i32* %cleft, align 4, !tbaa !6
  %494 = load i32, i32* %bytes, align 4, !tbaa !6
  %cmp824 = icmp ult i32 %493, %494
  br i1 %cmp824, label %land.lhs.true.826, label %if.end.845

land.lhs.true.826:                                ; preds = %if.then.821
  %end_status827 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %cbuf, i32 0, i32 6
  %495 = load i32, i32* %end_status827, align 4, !tbaa !15
  %tobool828 = icmp ne i32 %495, 0
  br i1 %tobool828, label %if.end.845, label %if.then.829

if.then.829:                                      ; preds = %land.lhs.true.826
  %496 = bitcast i32* %nread to i8*
  call void @llvm.lifetime.start(i64 4, i8* %496) #1
  %497 = load i32, i32* %cleft, align 4, !tbaa !6
  %sub830 = sub i32 4096, %497
  store i32 %sub830, i32* %nread, align 4, !tbaa !6
  %data831 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %cbuf, i32 0, i32 0
  %498 = load i8*, i8** %data831, align 8, !tbaa !11
  %499 = load i8*, i8** %cbp, align 8, !tbaa !4
  %500 = load i32, i32* %cleft, align 4, !tbaa !6
  %conv832 = zext i32 %500 to i64
  %call833 = call i8* @memmove(i8* %498, i8* %499, i64 %conv832) #7
  %501 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !4
  %data834 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %cbuf, i32 0, i32 0
  %502 = load i8*, i8** %data834, align 8, !tbaa !11
  %503 = load i32, i32* %cleft, align 4, !tbaa !6
  %idx.ext835 = zext i32 %503 to i64
  %add.ptr836 = getelementptr inbounds i8, i8* %502, i64 %idx.ext835
  %504 = load i32, i32* %nread, align 4, !tbaa !6
  %call837 = call i32 @sgets(%struct.stream_s* %501, i8* %add.ptr836, i32 %504, i32* %nread) #6
  %end_status838 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %cbuf, i32 0, i32 6
  store i32 %call837, i32* %end_status838, align 4, !tbaa !15
  %data839 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %cbuf, i32 0, i32 0
  %505 = load i8*, i8** %data839, align 8, !tbaa !11
  %506 = load i32, i32* %cleft, align 4, !tbaa !6
  %idx.ext840 = zext i32 %506 to i64
  %add.ptr841 = getelementptr inbounds i8, i8* %505, i64 %idx.ext840
  %507 = load i32, i32* %nread, align 4, !tbaa !6
  %idx.ext842 = zext i32 %507 to i64
  %add.ptr843 = getelementptr inbounds i8, i8* %add.ptr841, i64 %idx.ext842
  call void @set_cb_end(%struct.command_buf_s* %cbuf, i8* %add.ptr843) #6
  %data844 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %cbuf, i32 0, i32 0
  %508 = load i8*, i8** %data844, align 8, !tbaa !11
  store i8* %508, i8** %cbp, align 8, !tbaa !4
  %509 = bitcast i32* %nread to i8*
  call void @llvm.lifetime.end(i64 4, i8* %509) #1
  br label %if.end.845

if.end.845:                                       ; preds = %if.then.829, %land.lhs.true.826, %if.then.821
  %510 = load i8*, i8** %cbp, align 8, !tbaa !4
  %add.ptr846 = getelementptr inbounds i8, i8* %510, i64 -1
  %ptr847 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 0
  store i8* %add.ptr846, i8** %ptr847, align 8, !tbaa !124
  %end848 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %cbuf, i32 0, i32 4
  %511 = load i8*, i8** %end848, align 8, !tbaa !16
  %add.ptr849 = getelementptr inbounds i8, i8* %511, i64 -1
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 1
  store i8* %add.ptr849, i8** %limit, align 8, !tbaa !126
  %512 = load i8*, i8** %plane_bits, align 8, !tbaa !4
  %add.ptr850 = getelementptr inbounds i8, i8* %512, i64 -1
  %ptr851 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 1
  store i8* %add.ptr850, i8** %ptr851, align 8, !tbaa !127
  %ptr852 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 1
  %513 = load i8*, i8** %ptr852, align 8, !tbaa !127
  %add.ptr853 = getelementptr inbounds i8, i8* %513, i64 4096
  %limit854 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 2
  store i8* %add.ptr853, i8** %limit854, align 8, !tbaa !129
  %514 = load i8, i8* %compression, align 1, !tbaa !1
  %conv855 = zext i8 %514 to i32
  switch i32 %conv855, label %sw.default.864 [
    i32 1, label %sw.bb.856
    i32 2, label %sw.bb.858
  ]

sw.bb.856:                                        ; preds = %if.end.845
  %515 = bitcast %struct.stream_RLD_state_s* %sstate to i8*
  call void @llvm.lifetime.start(i64 120, i8* %515) #1
  call void @clist_rld_init(%struct.stream_RLD_state_s* %sstate) #6
  %516 = load i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)** getelementptr inbounds (%struct.stream_template_s, %struct.stream_template_s* @s_RLD_template, i32 0, i32 2), align 8, !tbaa !130
  %517 = bitcast %struct.stream_RLD_state_s* %sstate to %struct.stream_state_s*
  %call857 = call i32 %516(%struct.stream_state_s* %517, %struct.stream_cursor_read_s* %r, %struct.stream_cursor_write_s* %w, i32 1) #6
  %518 = bitcast %struct.stream_RLD_state_s* %sstate to i8*
  call void @llvm.lifetime.end(i64 120, i8* %518) #1
  br label %sw.epilog.865

sw.bb.858:                                        ; preds = %if.end.845
  %519 = bitcast %struct.stream_CFD_state_s* %sstate859 to i8*
  call void @llvm.lifetime.start(i64 240, i8* %519) #1
  %520 = load i32, i32* %width_bytes, align 4, !tbaa !6
  %shl860 = shl i32 %520, 3
  %rect861 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 8
  %height862 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect861, i32 0, i32 3
  %521 = load i32, i32* %height862, align 4, !tbaa !121
  %522 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  call void @clist_cfd_init(%struct.stream_CFD_state_s* %sstate859, i32 %shl860, i32 %521, %struct.gs_memory_s* %522) #6
  %523 = load i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)** getelementptr inbounds (%struct.stream_template_s, %struct.stream_template_s* @s_CFD_template, i32 0, i32 2), align 8, !tbaa !130
  %524 = bitcast %struct.stream_CFD_state_s* %sstate859 to %struct.stream_state_s*
  %call863 = call i32 %523(%struct.stream_state_s* %524, %struct.stream_cursor_read_s* %r, %struct.stream_cursor_write_s* %w, i32 1) #6
  %525 = load void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)** getelementptr inbounds (%struct.stream_template_s, %struct.stream_template_s* @s_CFD_template, i32 0, i32 5), align 8, !tbaa !132
  %526 = bitcast %struct.stream_CFD_state_s* %sstate859 to %struct.stream_state_s*
  call void %525(%struct.stream_state_s* %526) #6
  %527 = bitcast %struct.stream_CFD_state_s* %sstate859 to i8*
  call void @llvm.lifetime.end(i64 240, i8* %527) #1
  br label %sw.epilog.865

sw.default.864:                                   ; preds = %if.end.845
  store i32 58, i32* %cleanup.dest.slot
  br label %cleanup.872

sw.epilog.865:                                    ; preds = %sw.bb.858, %sw.bb.856
  %ptr866 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 0
  %528 = load i8*, i8** %ptr866, align 8, !tbaa !124
  %add.ptr867 = getelementptr inbounds i8, i8* %528, i64 1
  store i8* %add.ptr867, i8** %cbp, align 8, !tbaa !4
  %529 = load i32, i32* %pln, align 4, !tbaa !6
  %cmp868 = icmp eq i32 %529, 0
  br i1 %cmp868, label %if.then.870, label %if.end.871

if.then.870:                                      ; preds = %sw.epilog.865
  %530 = load i8*, i8** %data_bits, align 8, !tbaa !4
  store i8* %530, i8** %source, align 8, !tbaa !4
  br label %if.end.871

if.end.871:                                       ; preds = %if.then.870, %sw.epilog.865
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.872

cleanup.872:                                      ; preds = %sw.default.864, %if.end.871
  %531 = bitcast i32* %cleft to i8*
  call void @llvm.lifetime.end(i64 4, i8* %531) #1
  %532 = bitcast %struct.stream_cursor_write_s* %w to i8*
  call void @llvm.lifetime.end(i64 24, i8* %532) #1
  %533 = bitcast %struct.stream_cursor_read_s* %r to i8*
  call void @llvm.lifetime.end(i64 24, i8* %533) #1
  %cleanup.dest.875 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.875, label %cleanup.903 [
    i32 0, label %cleanup.cont.876
  ]

cleanup.cont.876:                                 ; preds = %cleanup.872
  br label %if.end.901

if.else.877:                                      ; preds = %if.else.819
  %rect878 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 8
  %height879 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect878, i32 0, i32 3
  %534 = load i32, i32* %height879, align 4, !tbaa !121
  %cmp880 = icmp sgt i32 %534, 1
  br i1 %cmp880, label %land.lhs.true.882, label %lor.lhs.false.885

land.lhs.true.882:                                ; preds = %if.else.877
  %535 = load i32, i32* %width_bytes, align 4, !tbaa !6
  %536 = load i32, i32* %raster, align 4, !tbaa !6
  %cmp883 = icmp ne i32 %535, %536
  br i1 %cmp883, label %if.then.888, label %lor.lhs.false.885

lor.lhs.false.885:                                ; preds = %land.lhs.true.882, %if.else.877
  %537 = load i32, i32* %plane_height, align 4, !tbaa !6
  %cmp886 = icmp ne i32 %537, 0
  br i1 %cmp886, label %if.then.888, label %if.else.896

if.then.888:                                      ; preds = %lor.lhs.false.885, %land.lhs.true.882
  %538 = load i8*, i8** %plane_bits, align 8, !tbaa !4
  %539 = load i32, i32* %bytes, align 4, !tbaa !6
  %540 = load i32, i32* %width_bytes, align 4, !tbaa !6
  %rect889 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 8
  %height890 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect889, i32 0, i32 3
  %541 = load i32, i32* %height890, align 4, !tbaa !121
  %542 = load i32, i32* %raster, align 4, !tbaa !6
  %543 = load i8*, i8** %cbp, align 8, !tbaa !4
  %call891 = call i8* @cmd_read_short_bits(%struct.command_buf_s* %cbuf, i8* %538, i32 %539, i32 %540, i32 %541, i32 %542, i8* %543) #6
  store i8* %call891, i8** %cbp, align 8, !tbaa !4
  %544 = load i32, i32* %pln, align 4, !tbaa !6
  %cmp892 = icmp eq i32 %544, 0
  br i1 %cmp892, label %if.then.894, label %if.end.895

if.then.894:                                      ; preds = %if.then.888
  %545 = load i8*, i8** %data_bits, align 8, !tbaa !4
  store i8* %545, i8** %source, align 8, !tbaa !4
  br label %if.end.895

if.end.895:                                       ; preds = %if.then.894, %if.then.888
  br label %if.end.900

if.else.896:                                      ; preds = %lor.lhs.false.885
  %data897 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %cbuf, i32 0, i32 0
  %546 = load i8*, i8** %data897, align 8, !tbaa !11
  %547 = load i32, i32* %bytes, align 4, !tbaa !6
  %548 = load i8*, i8** %cbp, align 8, !tbaa !4
  %call898 = call i8* @cmd_read_data(%struct.command_buf_s* %cbuf, i8* %546, i32 %547, i8* %548) #6
  store i8* %call898, i8** %cbp, align 8, !tbaa !4
  %data899 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %cbuf, i32 0, i32 0
  %549 = load i8*, i8** %data899, align 8, !tbaa !11
  store i8* %549, i8** %source, align 8, !tbaa !4
  br label %if.end.900

if.end.900:                                       ; preds = %if.else.896, %if.end.895
  br label %if.end.901

if.end.901:                                       ; preds = %if.end.900, %cleanup.cont.876
  br label %if.end.902

if.end.902:                                       ; preds = %if.end.901, %if.end.818
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.903

cleanup.903:                                      ; preds = %if.end.902, %cleanup.872, %if.then.790
  %550 = bitcast i8** %plane_bits to i8*
  call void @llvm.lifetime.end(i64 8, i8* %550) #1
  %cleanup.dest.904 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.904, label %cleanup.907 [
    i32 0, label %cleanup.cont.905
  ]

cleanup.cont.905:                                 ; preds = %cleanup.903
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont.905
  %551 = load i32, i32* %pln, align 4, !tbaa !6
  %inc906 = add i32 %551, 1
  store i32 %inc906, i32* %pln, align 4, !tbaa !6
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.907

cleanup.907:                                      ; preds = %for.end, %cleanup.903
  %552 = bitcast i32* %out_bytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %552) #1
  call void @llvm.lifetime.end(i64 1, i8* %compression) #1
  %553 = bitcast i32* %pln to i8*
  call void @llvm.lifetime.end(i64 4, i8* %553) #1
  %554 = bitcast i32* %plane_depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %554) #1
  %555 = bitcast i32* %planes714 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %555) #1
  %556 = bitcast i32* %bytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %556) #1
  %557 = bitcast i32* %width_bytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %557) #1
  %558 = bitcast i32* %width_bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %558) #1
  %cleanup.dest.915 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.915, label %cleanup.3226 [
    i32 0, label %cleanup.cont.916
    i32 58, label %bad_op
  ]

cleanup.cont.916:                                 ; preds = %cleanup.907
  br label %if.end.917

if.end.917:                                       ; preds = %cleanup.cont.916, %if.then.699
  br label %sw.epilog.2932

sw.bb.918:                                        ; preds = %if.end.129
  %559 = load i32, i32* %op, align 4, !tbaa !6
  %and919 = and i32 %559, 15
  %sub920 = sub nsw i32 %and919, 8
  %tile_index = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 2
  %560 = load i32, i32* %tile_index, align 4, !tbaa !133
  %add921 = add i32 %560, %sub920
  store i32 %add921, i32* %tile_index, align 4, !tbaa !133
  br label %sti

sw.bb.922:                                        ; preds = %if.end.129
  %561 = load i32, i32* %op, align 4, !tbaa !6
  %and923 = and i32 %561, 15
  %shl924 = shl i32 %and923, 8
  %562 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr925 = getelementptr inbounds i8, i8* %562, i32 1
  store i8* %incdec.ptr925, i8** %cbp, align 8, !tbaa !4
  %563 = load i8, i8* %562, align 1, !tbaa !1
  %conv926 = zext i8 %563 to i32
  %add927 = add nsw i32 %shl924, %conv926
  %tile_index928 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 2
  store i32 %add927, i32* %tile_index928, align 4, !tbaa !133
  br label %sti

sti:                                              ; preds = %sw.bb.922, %sw.bb.918
  %564 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %cdev.addr, align 8, !tbaa !4
  %chunk = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %564, i32 0, i32 51
  %data929 = getelementptr inbounds %struct.gx_bits_cache_chunk_s, %struct.gx_bits_cache_chunk_s* %chunk, i32 0, i32 1
  %565 = load i8*, i8** %data929, align 8, !tbaa !134
  %tile_index930 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 2
  %566 = load i32, i32* %tile_index930, align 4, !tbaa !133
  %idxprom931 = zext i32 %566 to i64
  %567 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %cdev.addr, align 8, !tbaa !4
  %tile_table = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %567, i32 0, i32 55
  %568 = load %struct.tile_hash*, %struct.tile_hash** %tile_table, align 8, !tbaa !135
  %arrayidx932 = getelementptr inbounds %struct.tile_hash, %struct.tile_hash* %568, i64 %idxprom931
  %offset = getelementptr inbounds %struct.tile_hash, %struct.tile_hash* %arrayidx932, i32 0, i32 0
  %569 = load i64, i64* %offset, align 8, !tbaa !136
  %add.ptr933 = getelementptr inbounds i8, i8* %565, i64 %569
  %570 = bitcast i8* %add.ptr933 to %struct.tile_slot*
  store %struct.tile_slot* %570, %struct.tile_slot** %state_slot, align 8, !tbaa !4
  br label %do.body.934

do.body.934:                                      ; preds = %sti
  br label %do.cond.935

do.cond.935:                                      ; preds = %do.body.934
  br label %do.end.936

do.end.936:                                       ; preds = %do.cond.935
  %571 = load %struct.tile_slot*, %struct.tile_slot** %state_slot, align 8, !tbaa !4
  %add.ptr937 = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %571, i64 1
  %572 = bitcast %struct.tile_slot* %add.ptr937 to i8*
  %data938 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %state_tile, i32 0, i32 0
  store i8* %572, i8** %data938, align 8, !tbaa !138
  br label %stp

stp:                                              ; preds = %do.end.936, %if.end.188
  %573 = load %struct.tile_slot*, %struct.tile_slot** %state_slot, align 8, !tbaa !4
  %width939 = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %573, i32 0, i32 1
  %574 = load i16, i16* %width939, align 2, !tbaa !106
  %conv940 = zext i16 %574 to i32
  %size941 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %state_tile, i32 0, i32 2
  %x942 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size941, i32 0, i32 0
  store i32 %conv940, i32* %x942, align 4, !tbaa !37
  %575 = load %struct.tile_slot*, %struct.tile_slot** %state_slot, align 8, !tbaa !4
  %height943 = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %575, i32 0, i32 2
  %576 = load i16, i16* %height943, align 2, !tbaa !107
  %conv944 = zext i16 %576 to i32
  %size945 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %state_tile, i32 0, i32 2
  %y946 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size945, i32 0, i32 1
  store i32 %conv944, i32* %y946, align 4, !tbaa !36
  %577 = load %struct.tile_slot*, %struct.tile_slot** %state_slot, align 8, !tbaa !4
  %raster947 = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %577, i32 0, i32 4
  %578 = load i16, i16* %raster947, align 2, !tbaa !108
  %conv948 = zext i16 %578 to i32
  %raster949 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %state_tile, i32 0, i32 1
  store i32 %conv948, i32* %raster949, align 4, !tbaa !139
  %size950 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %state_tile, i32 0, i32 2
  %x951 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size950, i32 0, i32 0
  %579 = load i32, i32* %x951, align 4, !tbaa !37
  %580 = load %struct.tile_slot*, %struct.tile_slot** %state_slot, align 8, !tbaa !4
  %x_reps952 = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %580, i32 0, i32 6
  %581 = load i8, i8* %x_reps952, align 1, !tbaa !110
  %conv953 = zext i8 %581 to i32
  %div954 = sdiv i32 %579, %conv953
  %conv955 = trunc i32 %div954 to i16
  %rep_width = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %state_tile, i32 0, i32 4
  store i16 %conv955, i16* %rep_width, align 2, !tbaa !140
  %size956 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %state_tile, i32 0, i32 2
  %y957 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size956, i32 0, i32 1
  %582 = load i32, i32* %y957, align 4, !tbaa !36
  %583 = load %struct.tile_slot*, %struct.tile_slot** %state_slot, align 8, !tbaa !4
  %y_reps958 = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %583, i32 0, i32 7
  %584 = load i8, i8* %y_reps958, align 1, !tbaa !109
  %conv959 = zext i8 %584 to i32
  %div960 = sdiv i32 %582, %conv959
  %conv961 = trunc i32 %div960 to i16
  %rep_height = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %state_tile, i32 0, i32 5
  store i16 %conv961, i16* %rep_height, align 2, !tbaa !141
  %585 = load %struct.tile_slot*, %struct.tile_slot** %state_slot, align 8, !tbaa !4
  %rep_shift962 = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %585, i32 0, i32 8
  %586 = load i16, i16* %rep_shift962, align 2, !tbaa !111
  %rep_shift963 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %state_tile, i32 0, i32 6
  store i16 %586, i16* %rep_shift963, align 2, !tbaa !34
  %587 = load %struct.tile_slot*, %struct.tile_slot** %state_slot, align 8, !tbaa !4
  %shift964 = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %587, i32 0, i32 3
  %588 = load i16, i16* %shift964, align 2, !tbaa !112
  %shift965 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %state_tile, i32 0, i32 7
  store i16 %588, i16* %shift965, align 2, !tbaa !35
  %589 = load %struct.tile_slot*, %struct.tile_slot** %state_slot, align 8, !tbaa !4
  %id966 = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %589, i32 0, i32 5
  %590 = load i64, i64* %id966, align 8, !tbaa !142
  %id967 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %state_tile, i32 0, i32 3
  store i64 %590, i64* %id967, align 8, !tbaa !31
  %591 = load %struct.tile_slot*, %struct.tile_slot** %state_slot, align 8, !tbaa !4
  %num_planes968 = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %591, i32 0, i32 11
  %592 = load i8, i8* %num_planes968, align 1, !tbaa !113
  %conv969 = zext i8 %592 to i32
  %num_planes970 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %state_tile, i32 0, i32 8
  store i32 %conv969, i32* %num_planes970, align 4, !tbaa !38
  br label %set_phase

set_phase:                                        ; preds = %stp, %do.end.180
  %size971 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %state_tile, i32 0, i32 2
  %x972 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size971, i32 0, i32 0
  %593 = load i32, i32* %x972, align 4, !tbaa !37
  %tobool973 = icmp ne i32 %593, 0
  br i1 %tobool973, label %if.then.974, label %if.end.981

if.then.974:                                      ; preds = %set_phase
  %tile_phase975 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 5
  %x976 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %tile_phase975, i32 0, i32 0
  %594 = load i32, i32* %x976, align 4, !tbaa !94
  %595 = load i32, i32* %x0.addr, align 4, !tbaa !6
  %add977 = add nsw i32 %594, %595
  %size978 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %state_tile, i32 0, i32 2
  %x979 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size978, i32 0, i32 0
  %596 = load i32, i32* %x979, align 4, !tbaa !37
  %rem = srem i32 %add977, %596
  %x980 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %tile_phase, i32 0, i32 0
  store i32 %rem, i32* %x980, align 4, !tbaa !39
  br label %if.end.981

if.end.981:                                       ; preds = %if.then.974, %set_phase
  %dev_ht982 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state, i32 0, i32 41
  %597 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %dev_ht982, align 8, !tbaa !143
  %tobool983 = icmp ne %struct.gx_device_halftone_s* %597, null
  br i1 %tobool983, label %land.lhs.true.984, label %if.end.995

land.lhs.true.984:                                ; preds = %if.end.981
  %dev_ht985 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state, i32 0, i32 41
  %598 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %dev_ht985, align 8, !tbaa !143
  %lcm_width = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %598, i32 0, i32 7
  %599 = load i32, i32* %lcm_width, align 4, !tbaa !144
  %tobool986 = icmp ne i32 %599, 0
  br i1 %tobool986, label %if.then.987, label %if.end.995

if.then.987:                                      ; preds = %land.lhs.true.984
  %tile_phase988 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 5
  %x989 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %tile_phase988, i32 0, i32 0
  %600 = load i32, i32* %x989, align 4, !tbaa !94
  %601 = load i32, i32* %x0.addr, align 4, !tbaa !6
  %add990 = add nsw i32 %600, %601
  %dev_ht991 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state, i32 0, i32 41
  %602 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %dev_ht991, align 8, !tbaa !143
  %lcm_width992 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %602, i32 0, i32 7
  %603 = load i32, i32* %lcm_width992, align 4, !tbaa !144
  %rem993 = srem i32 %add990, %603
  %x994 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %color_phase, i32 0, i32 0
  store i32 %rem993, i32* %x994, align 4, !tbaa !39
  br label %if.end.995

if.end.995:                                       ; preds = %if.then.987, %land.lhs.true.984, %if.end.981
  %size996 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %state_tile, i32 0, i32 2
  %y997 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size996, i32 0, i32 1
  %604 = load i32, i32* %y997, align 4, !tbaa !36
  %tobool998 = icmp ne i32 %604, 0
  br i1 %tobool998, label %if.then.999, label %if.end.1025

if.then.999:                                      ; preds = %if.end.995
  %605 = bitcast i32* %full_height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %605) #1
  %shift1000 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %state_tile, i32 0, i32 7
  %606 = load i16, i16* %shift1000, align 2, !tbaa !35
  %conv1001 = zext i16 %606 to i32
  %cmp1002 = icmp eq i32 %conv1001, 0
  br i1 %cmp1002, label %if.then.1004, label %if.else.1007

if.then.1004:                                     ; preds = %if.then.999
  %size1005 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %state_tile, i32 0, i32 2
  %y1006 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size1005, i32 0, i32 1
  %607 = load i32, i32* %y1006, align 4, !tbaa !36
  store i32 %607, i32* %full_height, align 4, !tbaa !6
  br label %if.end.1019

if.else.1007:                                     ; preds = %if.then.999
  %rep_height1008 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %state_tile, i32 0, i32 5
  %608 = load i16, i16* %rep_height1008, align 2, !tbaa !141
  %conv1009 = zext i16 %608 to i32
  %rep_width1010 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %state_tile, i32 0, i32 4
  %609 = load i16, i16* %rep_width1010, align 2, !tbaa !140
  %conv1011 = zext i16 %609 to i32
  %rep_shift1012 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %state_tile, i32 0, i32 6
  %610 = load i16, i16* %rep_shift1012, align 2, !tbaa !34
  %conv1013 = zext i16 %610 to i32
  %rep_width1014 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %state_tile, i32 0, i32 4
  %611 = load i16, i16* %rep_width1014, align 2, !tbaa !140
  %conv1015 = zext i16 %611 to i32
  %call1016 = call i32 @igcd(i32 %conv1013, i32 %conv1015) #6
  %div1017 = sdiv i32 %conv1011, %call1016
  %mul1018 = mul nsw i32 %conv1009, %div1017
  store i32 %mul1018, i32* %full_height, align 4, !tbaa !6
  br label %if.end.1019

if.end.1019:                                      ; preds = %if.else.1007, %if.then.1004
  %tile_phase1020 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 5
  %y1021 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %tile_phase1020, i32 0, i32 1
  %612 = load i32, i32* %y1021, align 4, !tbaa !101
  %613 = load i32, i32* %y0.addr, align 4, !tbaa !6
  %add1022 = add nsw i32 %612, %613
  %614 = load i32, i32* %full_height, align 4, !tbaa !6
  %rem1023 = srem i32 %add1022, %614
  %y1024 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %tile_phase, i32 0, i32 1
  store i32 %rem1023, i32* %y1024, align 4, !tbaa !40
  %615 = bitcast i32* %full_height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %615) #1
  br label %if.end.1025

if.end.1025:                                      ; preds = %if.end.1019, %if.end.995
  %dev_ht1026 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state, i32 0, i32 41
  %616 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %dev_ht1026, align 8, !tbaa !143
  %tobool1027 = icmp ne %struct.gx_device_halftone_s* %616, null
  br i1 %tobool1027, label %land.lhs.true.1028, label %if.end.1039

land.lhs.true.1028:                               ; preds = %if.end.1025
  %dev_ht1029 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state, i32 0, i32 41
  %617 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %dev_ht1029, align 8, !tbaa !143
  %lcm_height = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %617, i32 0, i32 8
  %618 = load i32, i32* %lcm_height, align 4, !tbaa !149
  %tobool1030 = icmp ne i32 %618, 0
  br i1 %tobool1030, label %if.then.1031, label %if.end.1039

if.then.1031:                                     ; preds = %land.lhs.true.1028
  %tile_phase1032 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 5
  %y1033 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %tile_phase1032, i32 0, i32 1
  %619 = load i32, i32* %y1033, align 4, !tbaa !101
  %620 = load i32, i32* %y0.addr, align 4, !tbaa !6
  %add1034 = add nsw i32 %619, %620
  %dev_ht1035 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state, i32 0, i32 41
  %621 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %dev_ht1035, align 8, !tbaa !143
  %lcm_height1036 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %621, i32 0, i32 8
  %622 = load i32, i32* %lcm_height1036, align 4, !tbaa !149
  %rem1037 = srem i32 %add1034, %622
  %y1038 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %color_phase, i32 0, i32 1
  store i32 %rem1037, i32* %y1038, align 4, !tbaa !40
  br label %if.end.1039

if.end.1039:                                      ; preds = %if.then.1031, %land.lhs.true.1028, %if.end.1025
  %tile_phase1040 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 5
  %x1041 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %tile_phase1040, i32 0, i32 0
  %623 = load i32, i32* %x1041, align 4, !tbaa !94
  %624 = load i32, i32* %x0.addr, align 4, !tbaa !6
  %add1042 = add nsw i32 %623, %624
  %sub1043 = sub nsw i32 0, %add1042
  %tile_phase1044 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 5
  %y1045 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %tile_phase1044, i32 0, i32 1
  %625 = load i32, i32* %y1045, align 4, !tbaa !101
  %626 = load i32, i32* %y0.addr, align 4, !tbaa !6
  %add1046 = add nsw i32 %625, %626
  %sub1047 = sub nsw i32 0, %add1046
  %call1048 = call i32 @gx_imager_setscreenphase(%struct.gs_imager_state_s* %imager_state, i32 %sub1043, i32 %sub1047, i32 -1) #6
  store i32 22, i32* %cleanup.dest.slot
  br label %cleanup.3226

sw.bb.1049:                                       ; preds = %if.end.129
  %627 = load i32, i32* %op, align 4, !tbaa !6
  switch i32 %627, label %sw.default.2107 [
    i32 210, label %sw.bb.1050
    i32 211, label %sw.bb.1059
    i32 213, label %sw.bb.1069
    i32 214, label %sw.bb.1077
    i32 215, label %sw.bb.1107
    i32 216, label %sw.bb.1116
    i32 217, label %sw.bb.1120
    i32 218, label %sw.bb.1136
    i32 212, label %sw.bb.1187
    i32 209, label %sw.bb.1199
    i32 219, label %sw.bb.1247
    i32 220, label %sw.bb.1329
    i32 222, label %sw.bb.1363
    i32 221, label %sw.bb.1483
    i32 223, label %sw.bb.1674
  ]

sw.bb.1050:                                       ; preds = %sw.bb.1049
  %fill_adjust = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state, i32 0, i32 28
  %x1051 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %fill_adjust, i32 0, i32 0
  %628 = bitcast i32* %x1051 to i8*
  %629 = load i8*, i8** %cbp, align 8, !tbaa !4
  %call1052 = call i8* @cmd_copy_value(i8* %628, i32 4, i8* %629) #6
  store i8* %call1052, i8** %cbp, align 8, !tbaa !4
  %fill_adjust1053 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state, i32 0, i32 28
  %y1054 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %fill_adjust1053, i32 0, i32 1
  %630 = bitcast i32* %y1054 to i8*
  %631 = load i8*, i8** %cbp, align 8, !tbaa !4
  %call1055 = call i8* @cmd_copy_value(i8* %630, i32 4, i8* %631) #6
  store i8* %call1055, i8** %cbp, align 8, !tbaa !4
  br label %do.body.1056

do.body.1056:                                     ; preds = %sw.bb.1050
  br label %do.cond.1057

do.cond.1057:                                     ; preds = %do.body.1056
  br label %do.end.1058

do.end.1058:                                      ; preds = %do.cond.1057
  store i32 22, i32* %cleanup.dest.slot
  br label %cleanup.3226

sw.bb.1059:                                       ; preds = %sw.bb.1049
  %632 = bitcast %struct.gs_matrix_s* %mat to i8*
  call void @llvm.lifetime.start(i64 24, i8* %632) #1
  %633 = load i8*, i8** %cbp, align 8, !tbaa !4
  %call1060 = call i8* @cmd_read_matrix(%struct.gs_matrix_s* %mat, i8* %633) #6
  store i8* %call1060, i8** %cbp, align 8, !tbaa !4
  br label %do.body.1061

do.body.1061:                                     ; preds = %sw.bb.1059
  br label %do.cond.1062

do.cond.1062:                                     ; preds = %do.body.1061
  br label %do.end.1063

do.end.1063:                                      ; preds = %do.cond.1062
  %634 = load i32, i32* %x0.addr, align 4, !tbaa !6
  %conv1064 = sitofp i32 %634 to float
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 4
  %635 = load float, float* %tx, align 4, !tbaa !150
  %sub1065 = fsub float %635, %conv1064
  store float %sub1065, float* %tx, align 4, !tbaa !150
  %636 = load i32, i32* %y0.addr, align 4, !tbaa !6
  %conv1066 = sitofp i32 %636 to float
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 5
  %637 = load float, float* %ty, align 4, !tbaa !151
  %sub1067 = fsub float %637, %conv1066
  store float %sub1067, float* %ty, align 4, !tbaa !151
  %call1068 = call i32 @gs_imager_setmatrix(%struct.gs_imager_state_s* %imager_state, %struct.gs_matrix_s* %mat) #6
  %638 = bitcast %struct.gs_matrix_s* %mat to i8*
  call void @llvm.lifetime.end(i64 24, i8* %638) #1
  store i32 22, i32* %cleanup.dest.slot
  br label %cleanup.3226

sw.bb.1069:                                       ; preds = %sw.bb.1049
  %639 = load i8*, i8** %cbp, align 8, !tbaa !4
  %ptr1070 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %cbuf, i32 0, i32 2
  store i8* %639, i8** %ptr1070, align 8, !tbaa !93
  %call1071 = call i32 @read_set_misc2(%struct.command_buf_s* %cbuf, %struct.gs_imager_state_s* %imager_state, i32* %notes) #6
  store i32 %call1071, i32* %code, align 4, !tbaa !6
  %ptr1072 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %cbuf, i32 0, i32 2
  %640 = load i8*, i8** %ptr1072, align 8, !tbaa !93
  store i8* %640, i8** %cbp, align 8, !tbaa !4
  %641 = load i32, i32* %code, align 4, !tbaa !6
  %cmp1073 = icmp slt i32 %641, 0
  br i1 %cmp1073, label %if.then.1075, label %if.end.1076

if.then.1075:                                     ; preds = %sw.bb.1069
  store i32 21, i32* %cleanup.dest.slot
  br label %cleanup.3226

if.end.1076:                                      ; preds = %sw.bb.1069
  store i32 22, i32* %cleanup.dest.slot
  br label %cleanup.3226

sw.bb.1077:                                       ; preds = %sw.bb.1049
  %642 = bitcast i32* %nb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %642) #1
  %643 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr1078 = getelementptr inbounds i8, i8* %643, i32 1
  store i8* %incdec.ptr1078, i8** %cbp, align 8, !tbaa !4
  %644 = load i8, i8* %643, align 1, !tbaa !1
  %conv1079 = zext i8 %644 to i32
  store i32 %conv1079, i32* %nb, align 4, !tbaa !6
  %645 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %645) #1
  %646 = load i32, i32* %nb, align 4, !tbaa !6
  %and1080 = and i32 %646, 63
  store i32 %and1080, i32* %n, align 4, !tbaa !6
  %647 = bitcast float* %dot_length to i8*
  call void @llvm.lifetime.start(i64 4, i8* %647) #1
  %648 = bitcast float* %offset1081 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %648) #1
  %649 = bitcast float* %dot_length to i8*
  %650 = load i8*, i8** %cbp, align 8, !tbaa !4
  %call1082 = call i8* @cmd_copy_value(i8* %649, i32 4, i8* %650) #6
  store i8* %call1082, i8** %cbp, align 8, !tbaa !4
  %651 = bitcast float* %offset1081 to i8*
  %652 = load i8*, i8** %cbp, align 8, !tbaa !4
  %call1083 = call i8* @cmd_copy_value(i8* %651, i32 4, i8* %652) #6
  store i8* %call1083, i8** %cbp, align 8, !tbaa !4
  %arraydecay1084 = getelementptr inbounds [11 x float], [11 x float]* %dash_pattern, i32 0, i32 0
  %653 = bitcast float* %arraydecay1084 to i8*
  %654 = load i8*, i8** %cbp, align 8, !tbaa !4
  %655 = load i32, i32* %n, align 4, !tbaa !6
  %conv1085 = sext i32 %655 to i64
  %mul1086 = mul i64 %conv1085, 4
  %call1087 = call i8* @memcpy(i8* %653, i8* %654, i64 %mul1086) #7
  %line_params1088 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state, i32 0, i32 3
  %dash1089 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params1088, i32 0, i32 11
  %arraydecay1090 = getelementptr inbounds [11 x float], [11 x float]* %dash_pattern, i32 0, i32 0
  %656 = load i32, i32* %n, align 4, !tbaa !6
  %657 = load float, float* %offset1081, align 4, !tbaa !65
  %conv1091 = fpext float %657 to double
  %call1092 = call i32 @gx_set_dash(%struct.gx_dash_params_s* %dash1089, float* %arraydecay1090, i32 %656, double %conv1091, %struct.gs_memory_s* null) #6
  %658 = load i32, i32* %nb, align 4, !tbaa !6
  %and1093 = and i32 %658, 128
  %cmp1094 = icmp ne i32 %and1093, 0
  %conv1095 = zext i1 %cmp1094 to i32
  %line_params1096 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state, i32 0, i32 3
  %dash1097 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params1096, i32 0, i32 11
  %adapt = getelementptr inbounds %struct.gx_dash_params_s, %struct.gx_dash_params_s* %dash1097, i32 0, i32 3
  store i32 %conv1095, i32* %adapt, align 4, !tbaa !152
  %line_params1098 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state, i32 0, i32 3
  %659 = load float, float* %dot_length, align 4, !tbaa !65
  %conv1099 = fpext float %659 to double
  %660 = load i32, i32* %nb, align 4, !tbaa !6
  %and1100 = and i32 %660, 64
  %cmp1101 = icmp ne i32 %and1100, 0
  %conv1102 = zext i1 %cmp1101 to i32
  %call1103 = call i32 @gx_set_dot_length(%struct.gx_line_params_s* %line_params1098, double %conv1099, i32 %conv1102) #6
  %661 = load i32, i32* %n, align 4, !tbaa !6
  %conv1104 = sext i32 %661 to i64
  %mul1105 = mul i64 %conv1104, 4
  %662 = load i8*, i8** %cbp, align 8, !tbaa !4
  %add.ptr1106 = getelementptr inbounds i8, i8* %662, i64 %mul1105
  store i8* %add.ptr1106, i8** %cbp, align 8, !tbaa !4
  %663 = bitcast float* %offset1081 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %663) #1
  %664 = bitcast float* %dot_length to i8*
  call void @llvm.lifetime.end(i64 4, i8* %664) #1
  %665 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %665) #1
  %666 = bitcast i32* %nb to i8*
  call void @llvm.lifetime.end(i64 4, i8* %666) #1
  br label %sw.epilog.2108

sw.bb.1107:                                       ; preds = %sw.bb.1049
  %667 = load i32, i32* %use_clip, align 4, !tbaa !6
  %tobool1108 = icmp ne i32 %667, 0
  br i1 %tobool1108, label %cond.true.1109, label %cond.false.1110

cond.true.1109:                                   ; preds = %sw.bb.1107
  br label %cond.end.1111

cond.false.1110:                                  ; preds = %sw.bb.1107
  br label %cond.end.1111

cond.end.1111:                                    ; preds = %cond.false.1110, %cond.true.1109
  %cond1112 = phi %struct.gx_clip_path_s* [ %clip_path, %cond.true.1109 ], [ null, %cond.false.1110 ]
  store %struct.gx_clip_path_s* %cond1112, %struct.gx_clip_path_s** %pcpath, align 8, !tbaa !4
  store i32 0, i32* %clipper_dev_open, align 4, !tbaa !6
  br label %do.body.1113

do.body.1113:                                     ; preds = %cond.end.1111
  br label %do.cond.1114

do.cond.1114:                                     ; preds = %do.body.1113
  br label %do.end.1115

do.end.1115:                                      ; preds = %do.cond.1114
  br label %sw.epilog.2108

sw.bb.1116:                                       ; preds = %sw.bb.1049
  store %struct.gx_clip_path_s* null, %struct.gx_clip_path_s** %pcpath, align 8, !tbaa !4
  store i32 0, i32* %clipper_dev_open, align 4, !tbaa !6
  br label %do.body.1117

do.body.1117:                                     ; preds = %sw.bb.1116
  br label %do.cond.1118

do.cond.1118:                                     ; preds = %do.body.1117
  br label %do.end.1119

do.end.1119:                                      ; preds = %do.cond.1118
  br label %sw.epilog.2108

sw.bb.1120:                                       ; preds = %sw.bb.1049
  store %struct.gx_clip_path_s* null, %struct.gx_clip_path_s** %pcpath, align 8, !tbaa !4
  store i32 0, i32* %clipper_dev_open, align 4, !tbaa !6
  store i32 1, i32* %in_clip, align 4, !tbaa !6
  br label %do.body.1121

do.body.1121:                                     ; preds = %sw.bb.1120
  br label %do.cond.1122

do.cond.1122:                                     ; preds = %do.body.1121
  br label %do.end.1123

do.end.1123:                                      ; preds = %do.cond.1122
  %call1124 = call i32 @gx_cpath_reset(%struct.gx_clip_path_s* %clip_path) #6
  store i32 %call1124, i32* %code, align 4, !tbaa !6
  %668 = load i32, i32* %code, align 4, !tbaa !6
  %cmp1125 = icmp slt i32 %668, 0
  br i1 %cmp1125, label %if.then.1127, label %if.end.1128

if.then.1127:                                     ; preds = %do.end.1123
  store i32 21, i32* %cleanup.dest.slot
  br label %cleanup.3226

if.end.1128:                                      ; preds = %do.end.1123
  %669 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  call void @gx_cpath_accum_begin(%struct.gx_device_cpath_accum_s* %clip_accum, %struct.gs_memory_s* %669) #6
  call void @gx_cpath_accum_set_cbox(%struct.gx_device_cpath_accum_s* %clip_accum, %struct.gs_fixed_rect_s* %target_box) #6
  %670 = bitcast %struct.gx_device_cpath_accum_s* %clip_accum to %struct.gx_device_s*
  store %struct.gx_device_s* %670, %struct.gx_device_s** %tdev, align 8, !tbaa !4
  %lop_enabled1129 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 10
  %671 = load i16, i16* %lop_enabled1129, align 2, !tbaa !115
  %conv1130 = sext i16 %671 to i32
  %lop_enabled1131 = getelementptr inbounds %struct._cas, %struct._cas* %clip_save, i32 0, i32 0
  store i32 %conv1130, i32* %lop_enabled1131, align 4, !tbaa !153
  %dcolor = getelementptr inbounds %struct._cas, %struct._cas* %clip_save, i32 0, i32 1
  %672 = bitcast %struct.gx_device_color_s* %dcolor to i8*
  %673 = bitcast %struct.gx_device_color_s* %dev_color to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %672, i8* %673, i64 656, i32 8, i1 false), !tbaa.struct !155
  %colors1132 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %dev_color, i32 0, i32 1
  %pure = bitcast %union._c* %colors1132 to i64*
  store i64 1, i64* %pure, align 8, !tbaa !27
  %type1133 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %dev_color, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_pure, %struct.gx_device_color_type_s** %type1133, align 8, !tbaa !88
  %lop_enabled1134 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 10
  store i16 0, i16* %lop_enabled1134, align 2, !tbaa !115
  %log_op1135 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state, i32 0, i32 10
  store i32 252, i32* %log_op1135, align 4, !tbaa !116
  br label %sw.epilog.2108

sw.bb.1136:                                       ; preds = %sw.bb.1049
  br label %do.body.1137

do.body.1137:                                     ; preds = %sw.bb.1136
  br label %do.cond.1138

do.cond.1138:                                     ; preds = %do.body.1137
  br label %do.end.1139

do.end.1139:                                      ; preds = %do.cond.1138
  %call1140 = call i32 @gx_cpath_accum_end(%struct.gx_device_cpath_accum_s* %clip_accum, %struct.gx_clip_path_s* %clip_path) #6
  %674 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !4
  store %struct.gx_device_s* %674, %struct.gx_device_s** %tdev, align 8, !tbaa !4
  %675 = bitcast %struct.gs_fixed_rect_s* %cbox1141 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %675) #1
  %call1142 = call i32 @gx_cpath_inner_box(%struct.gx_clip_path_s* %clip_path, %struct.gs_fixed_rect_s* %cbox1141) #6
  %p1143 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox1141, i32 0, i32 0
  %x1144 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p1143, i32 0, i32 0
  %676 = load i32, i32* %x1144, align 4, !tbaa !41
  %p1145 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %target_box, i32 0, i32 0
  %x1146 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p1145, i32 0, i32 0
  %677 = load i32, i32* %x1146, align 4, !tbaa !41
  %cmp1147 = icmp sle i32 %676, %677
  br i1 %cmp1147, label %land.lhs.true.1149, label %land.end

land.lhs.true.1149:                               ; preds = %do.end.1139
  %q1150 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox1141, i32 0, i32 1
  %x1151 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q1150, i32 0, i32 0
  %678 = load i32, i32* %x1151, align 4, !tbaa !59
  %q1152 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %target_box, i32 0, i32 1
  %x1153 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q1152, i32 0, i32 0
  %679 = load i32, i32* %x1153, align 4, !tbaa !59
  %cmp1154 = icmp sge i32 %678, %679
  br i1 %cmp1154, label %land.lhs.true.1156, label %land.end

land.lhs.true.1156:                               ; preds = %land.lhs.true.1149
  %p1157 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox1141, i32 0, i32 0
  %y1158 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p1157, i32 0, i32 1
  %680 = load i32, i32* %y1158, align 4, !tbaa !42
  %p1159 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %target_box, i32 0, i32 0
  %y1160 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p1159, i32 0, i32 1
  %681 = load i32, i32* %y1160, align 4, !tbaa !42
  %cmp1161 = icmp sle i32 %680, %681
  br i1 %cmp1161, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.1156
  %q1163 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox1141, i32 0, i32 1
  %y1164 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q1163, i32 0, i32 1
  %682 = load i32, i32* %y1164, align 4, !tbaa !61
  %q1165 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %target_box, i32 0, i32 1
  %y1166 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q1165, i32 0, i32 1
  %683 = load i32, i32* %y1166, align 4, !tbaa !61
  %cmp1167 = icmp sge i32 %682, %683
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.1156, %land.lhs.true.1149, %do.end.1139
  %684 = phi i1 [ false, %land.lhs.true.1156 ], [ false, %land.lhs.true.1149 ], [ false, %do.end.1139 ], [ %cmp1167, %land.rhs ]
  %lnot = xor i1 %684, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %use_clip, align 4, !tbaa !6
  %685 = bitcast %struct.gs_fixed_rect_s* %cbox1141 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %685) #1
  %686 = load i32, i32* %use_clip, align 4, !tbaa !6
  %tobool1169 = icmp ne i32 %686, 0
  br i1 %tobool1169, label %cond.true.1170, label %cond.false.1171

cond.true.1170:                                   ; preds = %land.end
  br label %cond.end.1172

cond.false.1171:                                  ; preds = %land.end
  br label %cond.end.1172

cond.end.1172:                                    ; preds = %cond.false.1171, %cond.true.1170
  %cond1173 = phi %struct.gx_clip_path_s* [ %clip_path, %cond.true.1170 ], [ null, %cond.false.1171 ]
  store %struct.gx_clip_path_s* %cond1173, %struct.gx_clip_path_s** %pcpath, align 8, !tbaa !4
  store i32 0, i32* %clipper_dev_open, align 4, !tbaa !6
  %lop_enabled1174 = getelementptr inbounds %struct._cas, %struct._cas* %clip_save, i32 0, i32 0
  %687 = load i32, i32* %lop_enabled1174, align 4, !tbaa !153
  %conv1175 = trunc i32 %687 to i16
  %lop_enabled1176 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 10
  store i16 %conv1175, i16* %lop_enabled1176, align 2, !tbaa !115
  %lop_enabled1177 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 10
  %688 = load i16, i16* %lop_enabled1177, align 2, !tbaa !115
  %conv1178 = sext i16 %688 to i32
  %tobool1179 = icmp ne i32 %conv1178, 0
  br i1 %tobool1179, label %cond.true.1180, label %cond.false.1182

cond.true.1180:                                   ; preds = %cond.end.1172
  %lop1181 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 9
  %689 = load i32, i32* %lop1181, align 4, !tbaa !114
  br label %cond.end.1183

cond.false.1182:                                  ; preds = %cond.end.1172
  br label %cond.end.1183

cond.end.1183:                                    ; preds = %cond.false.1182, %cond.true.1180
  %cond1184 = phi i32 [ %689, %cond.true.1180 ], [ 252, %cond.false.1182 ]
  %log_op1185 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state, i32 0, i32 10
  store i32 %cond1184, i32* %log_op1185, align 4, !tbaa !116
  %dcolor1186 = getelementptr inbounds %struct._cas, %struct._cas* %clip_save, i32 0, i32 1
  %690 = bitcast %struct.gx_device_color_s* %dev_color to i8*
  %691 = bitcast %struct.gx_device_color_s* %dcolor1186 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %690, i8* %691, i64 656, i32 8, i1 false), !tbaa.struct !155
  store i32 0, i32* %in_clip, align 4, !tbaa !6
  br label %sw.epilog.2108

sw.bb.1187:                                       ; preds = %sw.bb.1049
  %692 = load i8*, i8** %cbp, align 8, !tbaa !4
  %ptr1188 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %cbuf, i32 0, i32 2
  store i8* %692, i8** %ptr1188, align 8, !tbaa !93
  %693 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %cdev.addr, align 8, !tbaa !4
  %694 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %call1189 = call i32 @read_set_color_space(%struct.command_buf_s* %cbuf, %struct.gs_imager_state_s* %imager_state, %struct.gs_color_space_s** %pcs, %struct.gx_device_clist_reader_s* %693, %struct.gs_memory_s* %694) #6
  store i32 %call1189, i32* %code, align 4, !tbaa !6
  %ptr1190 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %cbuf, i32 0, i32 2
  %695 = load i8*, i8** %ptr1190, align 8, !tbaa !93
  store i8* %695, i8** %cbp, align 8, !tbaa !4
  %696 = load i32, i32* %code, align 4, !tbaa !6
  %cmp1191 = icmp slt i32 %696, 0
  br i1 %cmp1191, label %if.then.1193, label %if.end.1198

if.then.1193:                                     ; preds = %sw.bb.1187
  %697 = load i32, i32* %code, align 4, !tbaa !6
  %cmp1194 = icmp eq i32 %697, -15
  br i1 %cmp1194, label %if.then.1196, label %if.end.1197

if.then.1196:                                     ; preds = %if.then.1193
  br label %bad_op

if.end.1197:                                      ; preds = %if.then.1193
  store i32 21, i32* %cleanup.dest.slot
  br label %cleanup.3226

if.end.1198:                                      ; preds = %sw.bb.1187
  br label %sw.epilog.2108

sw.bb.1199:                                       ; preds = %sw.bb.1049
  %698 = bitcast %struct.gs_fixed_rect_s* %rect_hl to i8*
  call void @llvm.lifetime.start(i64 16, i8* %698) #1
  %699 = load i32, i32* %op, align 4, !tbaa !6
  %and1200 = and i32 %699, 240
  %rect1201 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 8
  %700 = load i8*, i8** %cbp, align 8, !tbaa !4
  %call1202 = call i8* @cmd_read_rect(i32 %and1200, %struct.gx_cmd_rect* %rect1201, i8* %700) #6
  store i8* %call1202, i8** %cbp, align 8, !tbaa !4
  %type1203 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %dev_color, i32 0, i32 0
  %701 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type1203, align 8, !tbaa !88
  %cmp1204 = icmp ne %struct.gx_device_color_type_s* %701, @gx_dc_type_data_devn
  br i1 %cmp1204, label %if.then.1206, label %if.end.1210

if.then.1206:                                     ; preds = %sw.bb.1199
  br label %do.body.1207

do.body.1207:                                     ; preds = %if.then.1206
  br label %do.cond.1208

do.cond.1208:                                     ; preds = %do.body.1207
  br label %do.end.1209

do.end.1209:                                      ; preds = %do.cond.1208
  store i32 -20, i32* %code, align 4, !tbaa !6
  store i32 21, i32* %cleanup.dest.slot
  br label %cleanup.1244

if.end.1210:                                      ; preds = %sw.bb.1199
  br label %do.body.1211

do.body.1211:                                     ; preds = %if.end.1210
  br label %do.cond.1212

do.cond.1212:                                     ; preds = %do.body.1211
  br label %do.end.1213

do.end.1213:                                      ; preds = %do.cond.1212
  %rect1214 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 8
  %x1215 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect1214, i32 0, i32 0
  %702 = load i32, i32* %x1215, align 4, !tbaa !119
  %703 = load i32, i32* %x0.addr, align 4, !tbaa !6
  %sub1216 = sub nsw i32 %702, %703
  %shl1217 = shl i32 %sub1216, 8
  %p1218 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %rect_hl, i32 0, i32 0
  %x1219 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p1218, i32 0, i32 0
  store i32 %shl1217, i32* %x1219, align 4, !tbaa !41
  %rect1220 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 8
  %y1221 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect1220, i32 0, i32 1
  %704 = load i32, i32* %y1221, align 4, !tbaa !122
  %705 = load i32, i32* %y0.addr, align 4, !tbaa !6
  %sub1222 = sub nsw i32 %704, %705
  %shl1223 = shl i32 %sub1222, 8
  %p1224 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %rect_hl, i32 0, i32 0
  %y1225 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p1224, i32 0, i32 1
  store i32 %shl1223, i32* %y1225, align 4, !tbaa !42
  %rect1226 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 8
  %width1227 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect1226, i32 0, i32 2
  %706 = load i32, i32* %width1227, align 4, !tbaa !120
  %shl1228 = shl i32 %706, 8
  %p1229 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %rect_hl, i32 0, i32 0
  %x1230 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p1229, i32 0, i32 0
  %707 = load i32, i32* %x1230, align 4, !tbaa !41
  %add1231 = add nsw i32 %shl1228, %707
  %q1232 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %rect_hl, i32 0, i32 1
  %x1233 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q1232, i32 0, i32 0
  store i32 %add1231, i32* %x1233, align 4, !tbaa !59
  %rect1234 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 8
  %height1235 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect1234, i32 0, i32 3
  %708 = load i32, i32* %height1235, align 4, !tbaa !121
  %shl1236 = shl i32 %708, 8
  %p1237 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %rect_hl, i32 0, i32 0
  %y1238 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p1237, i32 0, i32 1
  %709 = load i32, i32* %y1238, align 4, !tbaa !42
  %add1239 = add nsw i32 %shl1236, %709
  %q1240 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %rect_hl, i32 0, i32 1
  %y1241 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q1240, i32 0, i32 1
  store i32 %add1239, i32* %y1241, align 4, !tbaa !61
  %710 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !4
  %procs1242 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %710, i32 0, i32 42
  %fill_rectangle_hl_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs1242, i32 0, i32 54
  %711 = load i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)** %fill_rectangle_hl_color, align 8, !tbaa !156
  %712 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !4
  %call1243 = call i32 %711(%struct.gx_device_s* %712, %struct.gs_fixed_rect_s* %rect_hl, %struct.gs_imager_state_s* null, %struct.gx_device_color_s* %dev_color, %struct.gx_clip_path_s* null) #6
  store i32 %call1243, i32* %code, align 4, !tbaa !6
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.1244

cleanup.1244:                                     ; preds = %do.end.1209, %do.end.1213
  %713 = bitcast %struct.gs_fixed_rect_s* %rect_hl to i8*
  call void @llvm.lifetime.end(i64 16, i8* %713) #1
  %cleanup.dest.1245 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.1245, label %cleanup.3226 [
    i32 0, label %cleanup.cont.1246
  ]

cleanup.cont.1246:                                ; preds = %cleanup.1244
  store i32 22, i32* %cleanup.dest.slot
  br label %cleanup.3226

sw.bb.1247:                                       ; preds = %sw.bb.1049
  %714 = load i8*, i8** %cbp, align 8, !tbaa !4
  %ptr1248 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %cbuf, i32 0, i32 2
  store i8* %714, i8** %ptr1248, align 8, !tbaa !93
  %c = bitcast %union.im_* %image to %struct.gs_image_common_s*
  %715 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !4
  %call1249 = call i32 @read_begin_image(%struct.command_buf_s* %cbuf, %struct.gs_image_common_s* %c, %struct.gs_color_space_s* %715) #6
  store i32 %call1249, i32* %code, align 4, !tbaa !6
  %ptr1250 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %cbuf, i32 0, i32 2
  %716 = load i8*, i8** %ptr1250, align 8, !tbaa !93
  store i8* %716, i8** %cbp, align 8, !tbaa !4
  %717 = load i32, i32* %code, align 4, !tbaa !6
  %cmp1251 = icmp slt i32 %717, 0
  br i1 %cmp1251, label %if.then.1253, label %if.end.1254

if.then.1253:                                     ; preds = %sw.bb.1247
  store i32 21, i32* %cleanup.dest.slot
  br label %cleanup.3226

if.end.1254:                                      ; preds = %sw.bb.1247
  %718 = bitcast i32* %diff to i8*
  call void @llvm.lifetime.start(i64 4, i8* %718) #1
  br label %do.body.1255

do.body.1255:                                     ; preds = %if.end.1254
  %719 = load i8*, i8** %cbp, align 8, !tbaa !4
  %720 = load i8, i8* %719, align 1, !tbaa !1
  %conv1256 = zext i8 %720 to i32
  %cmp1257 = icmp slt i32 %conv1256, 128
  br i1 %cmp1257, label %if.then.1259, label %if.else.1264

if.then.1259:                                     ; preds = %do.body.1255
  %721 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr1260 = getelementptr inbounds i8, i8* %721, i32 1
  store i8* %incdec.ptr1260, i8** %cbp, align 8, !tbaa !4
  %722 = load i8, i8* %721, align 1, !tbaa !1
  %conv1261 = zext i8 %722 to i32
  %p1262 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %image_rect, i32 0, i32 0
  %x1263 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p1262, i32 0, i32 0
  store i32 %conv1261, i32* %x1263, align 4, !tbaa !157
  br label %if.end.1270

if.else.1264:                                     ; preds = %do.body.1255
  %723 = bitcast i8** %_cbp1265 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %723) #1
  %724 = load i8*, i8** %cbp, align 8, !tbaa !4
  %call1266 = call i64 @cmd_get_w(i8* %724, i8** %_cbp1265) #6
  %conv1267 = trunc i64 %call1266 to i32
  %p1268 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %image_rect, i32 0, i32 0
  %x1269 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p1268, i32 0, i32 0
  store i32 %conv1267, i32* %x1269, align 4, !tbaa !157
  %725 = load i8*, i8** %_cbp1265, align 8, !tbaa !4
  store i8* %725, i8** %cbp, align 8, !tbaa !4
  %726 = bitcast i8** %_cbp1265 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %726) #1
  br label %if.end.1270

if.end.1270:                                      ; preds = %if.else.1264, %if.then.1259
  br label %do.cond.1271

do.cond.1271:                                     ; preds = %if.end.1270
  br label %do.end.1272

do.end.1272:                                      ; preds = %do.cond.1271
  br label %do.body.1273

do.body.1273:                                     ; preds = %do.end.1272
  %727 = load i8*, i8** %cbp, align 8, !tbaa !4
  %728 = load i8, i8* %727, align 1, !tbaa !1
  %conv1274 = zext i8 %728 to i32
  %cmp1275 = icmp slt i32 %conv1274, 128
  br i1 %cmp1275, label %if.then.1277, label %if.else.1282

if.then.1277:                                     ; preds = %do.body.1273
  %729 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr1278 = getelementptr inbounds i8, i8* %729, i32 1
  store i8* %incdec.ptr1278, i8** %cbp, align 8, !tbaa !4
  %730 = load i8, i8* %729, align 1, !tbaa !1
  %conv1279 = zext i8 %730 to i32
  %p1280 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %image_rect, i32 0, i32 0
  %y1281 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p1280, i32 0, i32 1
  store i32 %conv1279, i32* %y1281, align 4, !tbaa !158
  br label %if.end.1288

if.else.1282:                                     ; preds = %do.body.1273
  %731 = bitcast i8** %_cbp1283 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %731) #1
  %732 = load i8*, i8** %cbp, align 8, !tbaa !4
  %call1284 = call i64 @cmd_get_w(i8* %732, i8** %_cbp1283) #6
  %conv1285 = trunc i64 %call1284 to i32
  %p1286 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %image_rect, i32 0, i32 0
  %y1287 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p1286, i32 0, i32 1
  store i32 %conv1285, i32* %y1287, align 4, !tbaa !158
  %733 = load i8*, i8** %_cbp1283, align 8, !tbaa !4
  store i8* %733, i8** %cbp, align 8, !tbaa !4
  %734 = bitcast i8** %_cbp1283 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %734) #1
  br label %if.end.1288

if.end.1288:                                      ; preds = %if.else.1282, %if.then.1277
  br label %do.cond.1289

do.cond.1289:                                     ; preds = %if.end.1288
  br label %do.end.1290

do.end.1290:                                      ; preds = %do.cond.1289
  br label %do.body.1291

do.body.1291:                                     ; preds = %do.end.1290
  %735 = load i8*, i8** %cbp, align 8, !tbaa !4
  %736 = load i8, i8* %735, align 1, !tbaa !1
  %conv1292 = zext i8 %736 to i32
  %cmp1293 = icmp slt i32 %conv1292, 128
  br i1 %cmp1293, label %if.then.1295, label %if.else.1298

if.then.1295:                                     ; preds = %do.body.1291
  %737 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr1296 = getelementptr inbounds i8, i8* %737, i32 1
  store i8* %incdec.ptr1296, i8** %cbp, align 8, !tbaa !4
  %738 = load i8, i8* %737, align 1, !tbaa !1
  %conv1297 = zext i8 %738 to i32
  store i32 %conv1297, i32* %diff, align 4, !tbaa !6
  br label %if.end.1302

if.else.1298:                                     ; preds = %do.body.1291
  %739 = bitcast i8** %_cbp1299 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %739) #1
  %740 = load i8*, i8** %cbp, align 8, !tbaa !4
  %call1300 = call i64 @cmd_get_w(i8* %740, i8** %_cbp1299) #6
  %conv1301 = trunc i64 %call1300 to i32
  store i32 %conv1301, i32* %diff, align 4, !tbaa !6
  %741 = load i8*, i8** %_cbp1299, align 8, !tbaa !4
  store i8* %741, i8** %cbp, align 8, !tbaa !4
  %742 = bitcast i8** %_cbp1299 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %742) #1
  br label %if.end.1302

if.end.1302:                                      ; preds = %if.else.1298, %if.then.1295
  br label %do.cond.1303

do.cond.1303:                                     ; preds = %if.end.1302
  br label %do.end.1304

do.end.1304:                                      ; preds = %do.cond.1303
  %d = bitcast %union.im_* %image to %struct.gs_data_image_s*
  %Width = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %d, i32 0, i32 2
  %743 = load i32, i32* %Width, align 4, !tbaa !159
  %744 = load i32, i32* %diff, align 4, !tbaa !6
  %sub1305 = sub i32 %743, %744
  %q1306 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %image_rect, i32 0, i32 1
  %x1307 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q1306, i32 0, i32 0
  store i32 %sub1305, i32* %x1307, align 4, !tbaa !161
  br label %do.body.1308

do.body.1308:                                     ; preds = %do.end.1304
  %745 = load i8*, i8** %cbp, align 8, !tbaa !4
  %746 = load i8, i8* %745, align 1, !tbaa !1
  %conv1309 = zext i8 %746 to i32
  %cmp1310 = icmp slt i32 %conv1309, 128
  br i1 %cmp1310, label %if.then.1312, label %if.else.1315

if.then.1312:                                     ; preds = %do.body.1308
  %747 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr1313 = getelementptr inbounds i8, i8* %747, i32 1
  store i8* %incdec.ptr1313, i8** %cbp, align 8, !tbaa !4
  %748 = load i8, i8* %747, align 1, !tbaa !1
  %conv1314 = zext i8 %748 to i32
  store i32 %conv1314, i32* %diff, align 4, !tbaa !6
  br label %if.end.1319

if.else.1315:                                     ; preds = %do.body.1308
  %749 = bitcast i8** %_cbp1316 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %749) #1
  %750 = load i8*, i8** %cbp, align 8, !tbaa !4
  %call1317 = call i64 @cmd_get_w(i8* %750, i8** %_cbp1316) #6
  %conv1318 = trunc i64 %call1317 to i32
  store i32 %conv1318, i32* %diff, align 4, !tbaa !6
  %751 = load i8*, i8** %_cbp1316, align 8, !tbaa !4
  store i8* %751, i8** %cbp, align 8, !tbaa !4
  %752 = bitcast i8** %_cbp1316 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %752) #1
  br label %if.end.1319

if.end.1319:                                      ; preds = %if.else.1315, %if.then.1312
  br label %do.cond.1320

do.cond.1320:                                     ; preds = %if.end.1319
  br label %do.end.1321

do.end.1321:                                      ; preds = %do.cond.1320
  %d1322 = bitcast %union.im_* %image to %struct.gs_data_image_s*
  %Height = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %d1322, i32 0, i32 3
  %753 = load i32, i32* %Height, align 4, !tbaa !162
  %754 = load i32, i32* %diff, align 4, !tbaa !6
  %sub1323 = sub i32 %753, %754
  %q1324 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %image_rect, i32 0, i32 1
  %y1325 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q1324, i32 0, i32 1
  store i32 %sub1323, i32* %y1325, align 4, !tbaa !163
  br label %do.body.1326

do.body.1326:                                     ; preds = %do.end.1321
  br label %do.cond.1327

do.cond.1327:                                     ; preds = %do.body.1326
  br label %do.end.1328

do.end.1328:                                      ; preds = %do.cond.1327
  %755 = bitcast i32* %diff to i8*
  call void @llvm.lifetime.end(i64 4, i8* %755) #1
  br label %ibegin

sw.bb.1329:                                       ; preds = %sw.bb.1049
  %756 = load i8*, i8** %cbp, align 8, !tbaa !4
  %ptr1330 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %cbuf, i32 0, i32 2
  store i8* %756, i8** %ptr1330, align 8, !tbaa !93
  %c1331 = bitcast %union.im_* %image to %struct.gs_image_common_s*
  %757 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !4
  %call1332 = call i32 @read_begin_image(%struct.command_buf_s* %cbuf, %struct.gs_image_common_s* %c1331, %struct.gs_color_space_s* %757) #6
  store i32 %call1332, i32* %code, align 4, !tbaa !6
  %ptr1333 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %cbuf, i32 0, i32 2
  %758 = load i8*, i8** %ptr1333, align 8, !tbaa !93
  store i8* %758, i8** %cbp, align 8, !tbaa !4
  %759 = load i32, i32* %code, align 4, !tbaa !6
  %cmp1334 = icmp slt i32 %759, 0
  br i1 %cmp1334, label %if.then.1336, label %if.end.1337

if.then.1336:                                     ; preds = %sw.bb.1329
  store i32 21, i32* %cleanup.dest.slot
  br label %cleanup.3226

if.end.1337:                                      ; preds = %sw.bb.1329
  %p1338 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %image_rect, i32 0, i32 0
  %x1339 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p1338, i32 0, i32 0
  store i32 0, i32* %x1339, align 4, !tbaa !157
  %p1340 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %image_rect, i32 0, i32 0
  %y1341 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p1340, i32 0, i32 1
  store i32 0, i32* %y1341, align 4, !tbaa !158
  %d1342 = bitcast %union.im_* %image to %struct.gs_data_image_s*
  %Width1343 = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %d1342, i32 0, i32 2
  %760 = load i32, i32* %Width1343, align 4, !tbaa !159
  %q1344 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %image_rect, i32 0, i32 1
  %x1345 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q1344, i32 0, i32 0
  store i32 %760, i32* %x1345, align 4, !tbaa !161
  %d1346 = bitcast %union.im_* %image to %struct.gs_data_image_s*
  %Height1347 = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %d1346, i32 0, i32 3
  %761 = load i32, i32* %Height1347, align 4, !tbaa !162
  %q1348 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %image_rect, i32 0, i32 1
  %y1349 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q1348, i32 0, i32 1
  store i32 %761, i32* %y1349, align 4, !tbaa !163
  br label %do.body.1350

do.body.1350:                                     ; preds = %if.end.1337
  br label %do.cond.1351

do.cond.1351:                                     ; preds = %do.body.1350
  br label %do.end.1352

do.end.1352:                                      ; preds = %do.cond.1351
  br label %ibegin

ibegin:                                           ; preds = %do.end.1352, %do.end.1328
  br label %do.body.1353

do.body.1353:                                     ; preds = %ibegin
  br label %do.cond.1354

do.cond.1354:                                     ; preds = %do.body.1353
  br label %do.end.1355

do.end.1355:                                      ; preds = %do.cond.1354
  %762 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !4
  %procs1356 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %762, i32 0, i32 42
  %set_graphics_type_tag = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs1356, i32 0, i32 68
  %763 = load void (%struct.gx_device_s*, i32)*, void (%struct.gx_device_s*, i32)** %set_graphics_type_tag, align 8, !tbaa !164
  %764 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !4
  call void %763(%struct.gx_device_s* %764, i32 2) #6
  %765 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !4
  %procs1357 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %765, i32 0, i32 42
  %begin_typed_image = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs1357, i32 0, i32 37
  %766 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)** %begin_typed_image, align 8, !tbaa !165
  %767 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !4
  %768 = bitcast %union.im_* %image to %struct.gs_image_common_s*
  %769 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath, align 8, !tbaa !4
  %770 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %call1358 = call i32 %766(%struct.gx_device_s* %767, %struct.gs_imager_state_s* %imager_state, %struct.gs_matrix_s* null, %struct.gs_image_common_s* %768, %struct.gs_int_rect_s* %image_rect, %struct.gx_device_color_s* %dev_color, %struct.gx_clip_path_s* %769, %struct.gs_memory_s* %770, %struct.gx_image_enum_common_s** %image_info) #6
  store i32 %call1358, i32* %code, align 4, !tbaa !6
  %771 = load i32, i32* %code, align 4, !tbaa !6
  %cmp1359 = icmp slt i32 %771, 0
  br i1 %cmp1359, label %if.then.1361, label %if.end.1362

if.then.1361:                                     ; preds = %do.end.1355
  store i32 21, i32* %cleanup.dest.slot
  br label %cleanup.3226

if.end.1362:                                      ; preds = %do.end.1355
  br label %sw.epilog.2108

sw.bb.1363:                                       ; preds = %sw.bb.1049
  br label %do.body.1364

do.body.1364:                                     ; preds = %sw.bb.1363
  %772 = load i8*, i8** %cbp, align 8, !tbaa !4
  %773 = load i8, i8* %772, align 1, !tbaa !1
  %conv1365 = zext i8 %773 to i32
  %cmp1366 = icmp slt i32 %conv1365, 128
  br i1 %cmp1366, label %if.then.1368, label %if.else.1371

if.then.1368:                                     ; preds = %do.body.1364
  %774 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr1369 = getelementptr inbounds i8, i8* %774, i32 1
  store i8* %incdec.ptr1369, i8** %cbp, align 8, !tbaa !4
  %775 = load i8, i8* %774, align 1, !tbaa !1
  %conv1370 = zext i8 %775 to i32
  store i32 %conv1370, i32* %data_height, align 4, !tbaa !6
  br label %if.end.1375

if.else.1371:                                     ; preds = %do.body.1364
  %776 = bitcast i8** %_cbp1372 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %776) #1
  %777 = load i8*, i8** %cbp, align 8, !tbaa !4
  %call1373 = call i64 @cmd_get_w(i8* %777, i8** %_cbp1372) #6
  %conv1374 = trunc i64 %call1373 to i32
  store i32 %conv1374, i32* %data_height, align 4, !tbaa !6
  %778 = load i8*, i8** %_cbp1372, align 8, !tbaa !4
  store i8* %778, i8** %cbp, align 8, !tbaa !4
  %779 = bitcast i8** %_cbp1372 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %779) #1
  br label %if.end.1375

if.end.1375:                                      ; preds = %if.else.1371, %if.then.1368
  br label %do.cond.1376

do.cond.1376:                                     ; preds = %if.end.1375
  br label %do.end.1377

do.end.1377:                                      ; preds = %do.cond.1376
  %780 = load i32, i32* %data_height, align 4, !tbaa !6
  %cmp1378 = icmp eq i32 %780, 0
  br i1 %cmp1378, label %if.then.1380, label %if.end.1389

if.then.1380:                                     ; preds = %do.end.1377
  br label %do.body.1381

do.body.1381:                                     ; preds = %if.then.1380
  br label %do.cond.1382

do.cond.1382:                                     ; preds = %do.body.1381
  br label %do.end.1383

do.end.1383:                                      ; preds = %do.cond.1382
  %781 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %image_info, align 8, !tbaa !4
  %call1384 = call i32 @gx_image_end(%struct.gx_image_enum_common_s* %781, i32 1) #6
  store i32 %call1384, i32* %code, align 4, !tbaa !6
  %782 = load i32, i32* %code, align 4, !tbaa !6
  %cmp1385 = icmp slt i32 %782, 0
  br i1 %cmp1385, label %if.then.1387, label %if.end.1388

if.then.1387:                                     ; preds = %do.end.1383
  store i32 21, i32* %cleanup.dest.slot
  br label %cleanup.3226

if.end.1388:                                      ; preds = %do.end.1383
  store i32 22, i32* %cleanup.dest.slot
  br label %cleanup.3226

if.end.1389:                                      ; preds = %do.end.1377
  %783 = bitcast i32* %flags to i8*
  call void @llvm.lifetime.start(i64 4, i8* %783) #1
  %784 = bitcast i32* %plane to i8*
  call void @llvm.lifetime.start(i64 4, i8* %784) #1
  %785 = bitcast i32* %raster1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %785) #1
  store i32 -1163005939, i32* %raster1, align 4, !tbaa !6
  br label %do.body.1390

do.body.1390:                                     ; preds = %if.end.1389
  %786 = load i8*, i8** %cbp, align 8, !tbaa !4
  %787 = load i8, i8* %786, align 1, !tbaa !1
  %conv1391 = zext i8 %787 to i32
  %cmp1392 = icmp slt i32 %conv1391, 128
  br i1 %cmp1392, label %if.then.1394, label %if.else.1397

if.then.1394:                                     ; preds = %do.body.1390
  %788 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr1395 = getelementptr inbounds i8, i8* %788, i32 1
  store i8* %incdec.ptr1395, i8** %cbp, align 8, !tbaa !4
  %789 = load i8, i8* %788, align 1, !tbaa !1
  %conv1396 = zext i8 %789 to i32
  store i32 %conv1396, i32* %flags, align 4, !tbaa !6
  br label %if.end.1401

if.else.1397:                                     ; preds = %do.body.1390
  %790 = bitcast i8** %_cbp1398 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %790) #1
  %791 = load i8*, i8** %cbp, align 8, !tbaa !4
  %call1399 = call i64 @cmd_get_w(i8* %791, i8** %_cbp1398) #6
  %conv1400 = trunc i64 %call1399 to i32
  store i32 %conv1400, i32* %flags, align 4, !tbaa !6
  %792 = load i8*, i8** %_cbp1398, align 8, !tbaa !4
  store i8* %792, i8** %cbp, align 8, !tbaa !4
  %793 = bitcast i8** %_cbp1398 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %793) #1
  br label %if.end.1401

if.end.1401:                                      ; preds = %if.else.1397, %if.then.1394
  br label %do.cond.1402

do.cond.1402:                                     ; preds = %if.end.1401
  br label %do.end.1403

do.end.1403:                                      ; preds = %do.cond.1402
  store i32 0, i32* %plane, align 4, !tbaa !6
  br label %for.cond.1404

for.cond.1404:                                    ; preds = %for.inc.1474, %do.end.1403
  %794 = load i32, i32* %plane, align 4, !tbaa !6
  %795 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %image_info, align 8, !tbaa !4
  %num_planes1405 = getelementptr inbounds %struct.gx_image_enum_common_s, %struct.gx_image_enum_common_s* %795, i32 0, i32 6
  %796 = load i32, i32* %num_planes1405, align 4, !tbaa !166
  %cmp1406 = icmp slt i32 %794, %796
  br i1 %cmp1406, label %for.body.1408, label %for.end.1477

for.body.1408:                                    ; preds = %for.cond.1404
  %797 = load i32, i32* %flags, align 4, !tbaa !6
  %and1409 = and i32 %797, 1
  %tobool1410 = icmp ne i32 %and1409, 0
  br i1 %tobool1410, label %if.then.1411, label %if.else.1466

if.then.1411:                                     ; preds = %for.body.1408
  %end1412 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %cbuf, i32 0, i32 4
  %798 = load i8*, i8** %end1412, align 8, !tbaa !16
  %799 = load i8*, i8** %cbp, align 8, !tbaa !4
  %sub.ptr.lhs.cast1413 = ptrtoint i8* %798 to i64
  %sub.ptr.rhs.cast1414 = ptrtoint i8* %799 to i64
  %sub.ptr.sub1415 = sub i64 %sub.ptr.lhs.cast1413, %sub.ptr.rhs.cast1414
  %cmp1416 = icmp ult i64 %sub.ptr.sub1415, 10
  br i1 %cmp1416, label %if.then.1418, label %if.end.1420

if.then.1418:                                     ; preds = %if.then.1411
  %call1419 = call i32 @top_up_cbuf(%struct.command_buf_s* %cbuf, i8** %cbp) #6
  store i32 %call1419, i32* %code, align 4, !tbaa !6
  br label %if.end.1420

if.end.1420:                                      ; preds = %if.then.1418, %if.then.1411
  %800 = load i32, i32* %code, align 4, !tbaa !6
  %cmp1421 = icmp slt i32 %800, 0
  br i1 %cmp1421, label %if.then.1423, label %if.end.1424

if.then.1423:                                     ; preds = %if.end.1420
  %801 = load i32, i32* %code, align 4, !tbaa !6
  store i32 %801, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1478

if.end.1424:                                      ; preds = %if.end.1420
  br label %do.body.1425

do.body.1425:                                     ; preds = %if.end.1424
  %802 = load i8*, i8** %cbp, align 8, !tbaa !4
  %803 = load i8, i8* %802, align 1, !tbaa !1
  %conv1426 = zext i8 %803 to i32
  %cmp1427 = icmp slt i32 %conv1426, 128
  br i1 %cmp1427, label %if.then.1429, label %if.else.1435

if.then.1429:                                     ; preds = %do.body.1425
  %804 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr1430 = getelementptr inbounds i8, i8* %804, i32 1
  store i8* %incdec.ptr1430, i8** %cbp, align 8, !tbaa !4
  %805 = load i8, i8* %804, align 1, !tbaa !1
  %conv1431 = zext i8 %805 to i32
  %806 = load i32, i32* %plane, align 4, !tbaa !6
  %idxprom1432 = sext i32 %806 to i64
  %arrayidx1433 = getelementptr inbounds [32 x %struct.gx_image_plane_s], [32 x %struct.gx_image_plane_s]* %planes, i32 0, i64 %idxprom1432
  %raster1434 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %arrayidx1433, i32 0, i32 2
  store i32 %conv1431, i32* %raster1434, align 4, !tbaa !168
  br label %if.end.1442

if.else.1435:                                     ; preds = %do.body.1425
  %807 = bitcast i8** %_cbp1436 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %807) #1
  %808 = load i8*, i8** %cbp, align 8, !tbaa !4
  %call1437 = call i64 @cmd_get_w(i8* %808, i8** %_cbp1436) #6
  %conv1438 = trunc i64 %call1437 to i32
  %809 = load i32, i32* %plane, align 4, !tbaa !6
  %idxprom1439 = sext i32 %809 to i64
  %arrayidx1440 = getelementptr inbounds [32 x %struct.gx_image_plane_s], [32 x %struct.gx_image_plane_s]* %planes, i32 0, i64 %idxprom1439
  %raster1441 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %arrayidx1440, i32 0, i32 2
  store i32 %conv1438, i32* %raster1441, align 4, !tbaa !168
  %810 = load i8*, i8** %_cbp1436, align 8, !tbaa !4
  store i8* %810, i8** %cbp, align 8, !tbaa !4
  %811 = bitcast i8** %_cbp1436 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %811) #1
  br label %if.end.1442

if.end.1442:                                      ; preds = %if.else.1435, %if.then.1429
  br label %do.cond.1443

do.cond.1443:                                     ; preds = %if.end.1442
  br label %do.end.1444

do.end.1444:                                      ; preds = %do.cond.1443
  %812 = load i32, i32* %plane, align 4, !tbaa !6
  %idxprom1445 = sext i32 %812 to i64
  %arrayidx1446 = getelementptr inbounds [32 x %struct.gx_image_plane_s], [32 x %struct.gx_image_plane_s]* %planes, i32 0, i64 %idxprom1445
  %raster1447 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %arrayidx1446, i32 0, i32 2
  %813 = load i32, i32* %raster1447, align 4, !tbaa !168
  store i32 %813, i32* %raster1, align 4, !tbaa !6
  %cmp1448 = icmp ne i32 %813, 0
  br i1 %cmp1448, label %if.then.1450, label %if.end.1465

if.then.1450:                                     ; preds = %do.end.1444
  br label %do.body.1451

do.body.1451:                                     ; preds = %if.then.1450
  %814 = load i8*, i8** %cbp, align 8, !tbaa !4
  %815 = load i8, i8* %814, align 1, !tbaa !1
  %conv1452 = zext i8 %815 to i32
  %cmp1453 = icmp slt i32 %conv1452, 128
  br i1 %cmp1453, label %if.then.1455, label %if.else.1458

if.then.1455:                                     ; preds = %do.body.1451
  %816 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr1456 = getelementptr inbounds i8, i8* %816, i32 1
  store i8* %incdec.ptr1456, i8** %cbp, align 8, !tbaa !4
  %817 = load i8, i8* %816, align 1, !tbaa !1
  %conv1457 = zext i8 %817 to i32
  store i32 %conv1457, i32* %data_x, align 4, !tbaa !6
  br label %if.end.1462

if.else.1458:                                     ; preds = %do.body.1451
  %818 = bitcast i8** %_cbp1459 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %818) #1
  %819 = load i8*, i8** %cbp, align 8, !tbaa !4
  %call1460 = call i64 @cmd_get_w(i8* %819, i8** %_cbp1459) #6
  %conv1461 = trunc i64 %call1460 to i32
  store i32 %conv1461, i32* %data_x, align 4, !tbaa !6
  %820 = load i8*, i8** %_cbp1459, align 8, !tbaa !4
  store i8* %820, i8** %cbp, align 8, !tbaa !4
  %821 = bitcast i8** %_cbp1459 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %821) #1
  br label %if.end.1462

if.end.1462:                                      ; preds = %if.else.1458, %if.then.1455
  br label %do.cond.1463

do.cond.1463:                                     ; preds = %if.end.1462
  br label %do.end.1464

do.end.1464:                                      ; preds = %do.cond.1463
  br label %if.end.1465

if.end.1465:                                      ; preds = %do.end.1464, %do.end.1444
  br label %if.end.1470

if.else.1466:                                     ; preds = %for.body.1408
  %822 = load i32, i32* %raster1, align 4, !tbaa !6
  %823 = load i32, i32* %plane, align 4, !tbaa !6
  %idxprom1467 = sext i32 %823 to i64
  %arrayidx1468 = getelementptr inbounds [32 x %struct.gx_image_plane_s], [32 x %struct.gx_image_plane_s]* %planes, i32 0, i64 %idxprom1467
  %raster1469 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %arrayidx1468, i32 0, i32 2
  store i32 %822, i32* %raster1469, align 4, !tbaa !168
  br label %if.end.1470

if.end.1470:                                      ; preds = %if.else.1466, %if.end.1465
  %824 = load i32, i32* %data_x, align 4, !tbaa !6
  %825 = load i32, i32* %plane, align 4, !tbaa !6
  %idxprom1471 = sext i32 %825 to i64
  %arrayidx1472 = getelementptr inbounds [32 x %struct.gx_image_plane_s], [32 x %struct.gx_image_plane_s]* %planes, i32 0, i64 %idxprom1471
  %data_x1473 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %arrayidx1472, i32 0, i32 1
  store i32 %824, i32* %data_x1473, align 4, !tbaa !170
  br label %for.inc.1474

for.inc.1474:                                     ; preds = %if.end.1470
  %826 = load i32, i32* %plane, align 4, !tbaa !6
  %inc1475 = add nsw i32 %826, 1
  store i32 %inc1475, i32* %plane, align 4, !tbaa !6
  %827 = load i32, i32* %flags, align 4, !tbaa !6
  %shr1476 = lshr i32 %827, 1
  store i32 %shr1476, i32* %flags, align 4, !tbaa !6
  br label %for.cond.1404

for.end.1477:                                     ; preds = %for.cond.1404
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.1478

cleanup.1478:                                     ; preds = %for.end.1477, %if.then.1423
  %828 = bitcast i32* %raster1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %828) #1
  %829 = bitcast i32* %plane to i8*
  call void @llvm.lifetime.end(i64 4, i8* %829) #1
  %830 = bitcast i32* %flags to i8*
  call void @llvm.lifetime.end(i64 4, i8* %830) #1
  %cleanup.dest.1481 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.1481, label %cleanup.3226 [
    i32 0, label %cleanup.cont.1482
  ]

cleanup.cont.1482:                                ; preds = %cleanup.1478
  br label %idata

sw.bb.1483:                                       ; preds = %sw.bb.1049
  br label %do.body.1484

do.body.1484:                                     ; preds = %sw.bb.1483
  %831 = load i8*, i8** %cbp, align 8, !tbaa !4
  %832 = load i8, i8* %831, align 1, !tbaa !1
  %conv1485 = zext i8 %832 to i32
  %cmp1486 = icmp slt i32 %conv1485, 128
  br i1 %cmp1486, label %if.then.1488, label %if.else.1491

if.then.1488:                                     ; preds = %do.body.1484
  %833 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr1489 = getelementptr inbounds i8, i8* %833, i32 1
  store i8* %incdec.ptr1489, i8** %cbp, align 8, !tbaa !4
  %834 = load i8, i8* %833, align 1, !tbaa !1
  %conv1490 = zext i8 %834 to i32
  store i32 %conv1490, i32* %data_height, align 4, !tbaa !6
  br label %if.end.1495

if.else.1491:                                     ; preds = %do.body.1484
  %835 = bitcast i8** %_cbp1492 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %835) #1
  %836 = load i8*, i8** %cbp, align 8, !tbaa !4
  %call1493 = call i64 @cmd_get_w(i8* %836, i8** %_cbp1492) #6
  %conv1494 = trunc i64 %call1493 to i32
  store i32 %conv1494, i32* %data_height, align 4, !tbaa !6
  %837 = load i8*, i8** %_cbp1492, align 8, !tbaa !4
  store i8* %837, i8** %cbp, align 8, !tbaa !4
  %838 = bitcast i8** %_cbp1492 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %838) #1
  br label %if.end.1495

if.end.1495:                                      ; preds = %if.else.1491, %if.then.1488
  br label %do.cond.1496

do.cond.1496:                                     ; preds = %if.end.1495
  br label %do.end.1497

do.end.1497:                                      ; preds = %do.cond.1496
  %839 = load i32, i32* %data_height, align 4, !tbaa !6
  %cmp1498 = icmp eq i32 %839, 0
  br i1 %cmp1498, label %if.then.1500, label %if.end.1509

if.then.1500:                                     ; preds = %do.end.1497
  br label %do.body.1501

do.body.1501:                                     ; preds = %if.then.1500
  br label %do.cond.1502

do.cond.1502:                                     ; preds = %do.body.1501
  br label %do.end.1503

do.end.1503:                                      ; preds = %do.cond.1502
  %840 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %image_info, align 8, !tbaa !4
  %call1504 = call i32 @gx_image_end(%struct.gx_image_enum_common_s* %840, i32 1) #6
  store i32 %call1504, i32* %code, align 4, !tbaa !6
  %841 = load i32, i32* %code, align 4, !tbaa !6
  %cmp1505 = icmp slt i32 %841, 0
  br i1 %cmp1505, label %if.then.1507, label %if.end.1508

if.then.1507:                                     ; preds = %do.end.1503
  store i32 21, i32* %cleanup.dest.slot
  br label %cleanup.3226

if.end.1508:                                      ; preds = %do.end.1503
  store i32 22, i32* %cleanup.dest.slot
  br label %cleanup.3226

if.end.1509:                                      ; preds = %do.end.1497
  %842 = bitcast i32* %bytes_per_plane to i8*
  call void @llvm.lifetime.start(i64 4, i8* %842) #1
  %843 = bitcast i32* %plane1510 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %843) #1
  br label %do.body.1511

do.body.1511:                                     ; preds = %if.end.1509
  %844 = load i8*, i8** %cbp, align 8, !tbaa !4
  %845 = load i8, i8* %844, align 1, !tbaa !1
  %conv1512 = zext i8 %845 to i32
  %cmp1513 = icmp slt i32 %conv1512, 128
  br i1 %cmp1513, label %if.then.1515, label %if.else.1518

if.then.1515:                                     ; preds = %do.body.1511
  %846 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr1516 = getelementptr inbounds i8, i8* %846, i32 1
  store i8* %incdec.ptr1516, i8** %cbp, align 8, !tbaa !4
  %847 = load i8, i8* %846, align 1, !tbaa !1
  %conv1517 = zext i8 %847 to i32
  store i32 %conv1517, i32* %bytes_per_plane, align 4, !tbaa !6
  br label %if.end.1522

if.else.1518:                                     ; preds = %do.body.1511
  %848 = bitcast i8** %_cbp1519 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %848) #1
  %849 = load i8*, i8** %cbp, align 8, !tbaa !4
  %call1520 = call i64 @cmd_get_w(i8* %849, i8** %_cbp1519) #6
  %conv1521 = trunc i64 %call1520 to i32
  store i32 %conv1521, i32* %bytes_per_plane, align 4, !tbaa !6
  %850 = load i8*, i8** %_cbp1519, align 8, !tbaa !4
  store i8* %850, i8** %cbp, align 8, !tbaa !4
  %851 = bitcast i8** %_cbp1519 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %851) #1
  br label %if.end.1522

if.end.1522:                                      ; preds = %if.else.1518, %if.then.1515
  br label %do.cond.1523

do.cond.1523:                                     ; preds = %if.end.1522
  br label %do.end.1524

do.end.1524:                                      ; preds = %do.cond.1523
  br label %do.body.1525

do.body.1525:                                     ; preds = %do.end.1524
  br label %do.cond.1526

do.cond.1526:                                     ; preds = %do.body.1525
  br label %do.end.1527

do.end.1527:                                      ; preds = %do.cond.1526
  store i32 0, i32* %plane1510, align 4, !tbaa !6
  br label %for.cond.1528

for.cond.1528:                                    ; preds = %for.inc.1539, %do.end.1527
  %852 = load i32, i32* %plane1510, align 4, !tbaa !6
  %853 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %image_info, align 8, !tbaa !4
  %num_planes1529 = getelementptr inbounds %struct.gx_image_enum_common_s, %struct.gx_image_enum_common_s* %853, i32 0, i32 6
  %854 = load i32, i32* %num_planes1529, align 4, !tbaa !166
  %cmp1530 = icmp slt i32 %852, %854
  br i1 %cmp1530, label %for.body.1532, label %for.end.1541

for.body.1532:                                    ; preds = %for.cond.1528
  %855 = load i32, i32* %data_x, align 4, !tbaa !6
  %856 = load i32, i32* %plane1510, align 4, !tbaa !6
  %idxprom1533 = sext i32 %856 to i64
  %arrayidx1534 = getelementptr inbounds [32 x %struct.gx_image_plane_s], [32 x %struct.gx_image_plane_s]* %planes, i32 0, i64 %idxprom1533
  %data_x1535 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %arrayidx1534, i32 0, i32 1
  store i32 %855, i32* %data_x1535, align 4, !tbaa !170
  %857 = load i32, i32* %bytes_per_plane, align 4, !tbaa !6
  %858 = load i32, i32* %plane1510, align 4, !tbaa !6
  %idxprom1536 = sext i32 %858 to i64
  %arrayidx1537 = getelementptr inbounds [32 x %struct.gx_image_plane_s], [32 x %struct.gx_image_plane_s]* %planes, i32 0, i64 %idxprom1536
  %raster1538 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %arrayidx1537, i32 0, i32 2
  store i32 %857, i32* %raster1538, align 4, !tbaa !168
  br label %for.inc.1539

for.inc.1539:                                     ; preds = %for.body.1532
  %859 = load i32, i32* %plane1510, align 4, !tbaa !6
  %inc1540 = add nsw i32 %859, 1
  store i32 %inc1540, i32* %plane1510, align 4, !tbaa !6
  br label %for.cond.1528

for.end.1541:                                     ; preds = %for.cond.1528
  %860 = bitcast i32* %plane1510 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %860) #1
  %861 = bitcast i32* %bytes_per_plane to i8*
  call void @llvm.lifetime.end(i64 4, i8* %861) #1
  br label %idata

idata:                                            ; preds = %for.end.1541, %cleanup.cont.1482
  store i32 0, i32* %data_size, align 4, !tbaa !6
  %862 = bitcast i32* %plane1542 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %862) #1
  store i32 0, i32* %plane1542, align 4, !tbaa !6
  br label %for.cond.1543

for.cond.1543:                                    ; preds = %for.inc.1552, %idata
  %863 = load i32, i32* %plane1542, align 4, !tbaa !6
  %864 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %image_info, align 8, !tbaa !4
  %num_planes1544 = getelementptr inbounds %struct.gx_image_enum_common_s, %struct.gx_image_enum_common_s* %864, i32 0, i32 6
  %865 = load i32, i32* %num_planes1544, align 4, !tbaa !166
  %cmp1545 = icmp slt i32 %863, %865
  br i1 %cmp1545, label %for.body.1547, label %for.end.1554

for.body.1547:                                    ; preds = %for.cond.1543
  %866 = load i32, i32* %plane1542, align 4, !tbaa !6
  %idxprom1548 = sext i32 %866 to i64
  %arrayidx1549 = getelementptr inbounds [32 x %struct.gx_image_plane_s], [32 x %struct.gx_image_plane_s]* %planes, i32 0, i64 %idxprom1548
  %raster1550 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %arrayidx1549, i32 0, i32 2
  %867 = load i32, i32* %raster1550, align 4, !tbaa !168
  %868 = load i32, i32* %data_size, align 4, !tbaa !6
  %add1551 = add i32 %868, %867
  store i32 %add1551, i32* %data_size, align 4, !tbaa !6
  br label %for.inc.1552

for.inc.1552:                                     ; preds = %for.body.1547
  %869 = load i32, i32* %plane1542, align 4, !tbaa !6
  %inc1553 = add nsw i32 %869, 1
  store i32 %inc1553, i32* %plane1542, align 4, !tbaa !6
  br label %for.cond.1543

for.end.1554:                                     ; preds = %for.cond.1543
  %870 = bitcast i32* %plane1542 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %870) #1
  %871 = load i32, i32* %data_height, align 4, !tbaa !6
  %872 = load i32, i32* %data_size, align 4, !tbaa !6
  %mul1555 = mul i32 %872, %871
  store i32 %mul1555, i32* %data_size, align 4, !tbaa !6
  store i8* null, i8** %data_on_heap, align 8, !tbaa !4
  %end1556 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %cbuf, i32 0, i32 4
  %873 = load i8*, i8** %end1556, align 8, !tbaa !16
  %874 = load i8*, i8** %cbp, align 8, !tbaa !4
  %sub.ptr.lhs.cast1557 = ptrtoint i8* %873 to i64
  %sub.ptr.rhs.cast1558 = ptrtoint i8* %874 to i64
  %sub.ptr.sub1559 = sub i64 %sub.ptr.lhs.cast1557, %sub.ptr.rhs.cast1558
  %875 = load i32, i32* %data_size, align 4, !tbaa !6
  %conv1560 = zext i32 %875 to i64
  %cmp1561 = icmp slt i64 %sub.ptr.sub1559, %conv1560
  br i1 %cmp1561, label %if.then.1563, label %if.end.1565

if.then.1563:                                     ; preds = %for.end.1554
  %call1564 = call i32 @top_up_cbuf(%struct.command_buf_s* %cbuf, i8** %cbp) #6
  store i32 %call1564, i32* %code, align 4, !tbaa !6
  br label %if.end.1565

if.end.1565:                                      ; preds = %if.then.1563, %for.end.1554
  %876 = load i32, i32* %code, align 4, !tbaa !6
  %cmp1566 = icmp slt i32 %876, 0
  br i1 %cmp1566, label %if.then.1568, label %if.end.1569

if.then.1568:                                     ; preds = %if.end.1565
  %877 = load i32, i32* %code, align 4, !tbaa !6
  store i32 %877, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.3226

if.end.1569:                                      ; preds = %if.end.1565
  %end1570 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %cbuf, i32 0, i32 4
  %878 = load i8*, i8** %end1570, align 8, !tbaa !16
  %879 = load i8*, i8** %cbp, align 8, !tbaa !4
  %sub.ptr.lhs.cast1571 = ptrtoint i8* %878 to i64
  %sub.ptr.rhs.cast1572 = ptrtoint i8* %879 to i64
  %sub.ptr.sub1573 = sub i64 %sub.ptr.lhs.cast1571, %sub.ptr.rhs.cast1572
  %880 = load i32, i32* %data_size, align 4, !tbaa !6
  %conv1574 = zext i32 %880 to i64
  %cmp1575 = icmp sge i64 %sub.ptr.sub1573, %conv1574
  br i1 %cmp1575, label %if.then.1577, label %if.else.1582

if.then.1577:                                     ; preds = %if.end.1569
  %881 = load i8*, i8** %cbp, align 8, !tbaa !4
  %arrayidx1578 = getelementptr inbounds [32 x %struct.gx_image_plane_s], [32 x %struct.gx_image_plane_s]* %planes, i32 0, i64 0
  %data1579 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %arrayidx1578, i32 0, i32 0
  store i8* %881, i8** %data1579, align 8, !tbaa !171
  %882 = load i32, i32* %data_size, align 4, !tbaa !6
  %883 = load i8*, i8** %cbp, align 8, !tbaa !4
  %idx.ext1580 = zext i32 %882 to i64
  %add.ptr1581 = getelementptr inbounds i8, i8* %883, i64 %idx.ext1580
  store i8* %add.ptr1581, i8** %cbp, align 8, !tbaa !4
  br label %if.end.1626

if.else.1582:                                     ; preds = %if.end.1569
  %884 = bitcast i32* %cleft1583 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %884) #1
  %end1584 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %cbuf, i32 0, i32 4
  %885 = load i8*, i8** %end1584, align 8, !tbaa !16
  %886 = load i8*, i8** %cbp, align 8, !tbaa !4
  %sub.ptr.lhs.cast1585 = ptrtoint i8* %885 to i64
  %sub.ptr.rhs.cast1586 = ptrtoint i8* %886 to i64
  %sub.ptr.sub1587 = sub i64 %sub.ptr.lhs.cast1585, %sub.ptr.rhs.cast1586
  %conv1588 = trunc i64 %sub.ptr.sub1587 to i32
  store i32 %conv1588, i32* %cleft1583, align 4, !tbaa !6
  %887 = bitcast i32* %rleft to i8*
  call void @llvm.lifetime.start(i64 4, i8* %887) #1
  %888 = load i32, i32* %data_size, align 4, !tbaa !6
  %889 = load i32, i32* %cleft1583, align 4, !tbaa !6
  %sub1589 = sub i32 %888, %889
  store i32 %sub1589, i32* %rleft, align 4, !tbaa !6
  %890 = bitcast i8** %rdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %890) #1
  %891 = load i32, i32* %data_size, align 4, !tbaa !6
  %conv1590 = zext i32 %891 to i64
  %end1591 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %cbuf, i32 0, i32 4
  %892 = load i8*, i8** %end1591, align 8, !tbaa !16
  %data1592 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %cbuf, i32 0, i32 0
  %893 = load i8*, i8** %data1592, align 8, !tbaa !11
  %sub.ptr.lhs.cast1593 = ptrtoint i8* %892 to i64
  %sub.ptr.rhs.cast1594 = ptrtoint i8* %893 to i64
  %sub.ptr.sub1595 = sub i64 %sub.ptr.lhs.cast1593, %sub.ptr.rhs.cast1594
  %cmp1596 = icmp sgt i64 %conv1590, %sub.ptr.sub1595
  br i1 %cmp1596, label %if.then.1598, label %if.else.1606

if.then.1598:                                     ; preds = %if.else.1582
  %894 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %procs1599 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %894, i32 0, i32 1
  %alloc_bytes1600 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs1599, i32 0, i32 7
  %895 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes1600, align 8, !tbaa !8
  %896 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %897 = load i32, i32* %data_size, align 4, !tbaa !6
  %call1601 = call i8* %895(%struct.gs_memory_s* %896, i32 %897, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0)) #6
  store i8* %call1601, i8** %data_on_heap, align 8, !tbaa !4
  store i8* %call1601, i8** %rdata, align 8, !tbaa !4
  %898 = load i8*, i8** %rdata, align 8, !tbaa !4
  %cmp1602 = icmp eq i8* %898, null
  br i1 %cmp1602, label %if.then.1604, label %if.end.1605

if.then.1604:                                     ; preds = %if.then.1598
  store i32 -25, i32* %code, align 4, !tbaa !6
  store i32 21, i32* %cleanup.dest.slot
  br label %cleanup.1621

if.end.1605:                                      ; preds = %if.then.1598
  br label %if.end.1608

if.else.1606:                                     ; preds = %if.else.1582
  %data1607 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %cbuf, i32 0, i32 0
  %899 = load i8*, i8** %data1607, align 8, !tbaa !11
  store i8* %899, i8** %rdata, align 8, !tbaa !4
  br label %if.end.1608

if.end.1608:                                      ; preds = %if.else.1606, %if.end.1605
  %900 = load i8*, i8** %rdata, align 8, !tbaa !4
  %901 = load i8*, i8** %cbp, align 8, !tbaa !4
  %902 = load i32, i32* %cleft1583, align 4, !tbaa !6
  %conv1609 = zext i32 %902 to i64
  %call1610 = call i8* @memmove(i8* %900, i8* %901, i64 %conv1609) #7
  %903 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !4
  %904 = load i8*, i8** %rdata, align 8, !tbaa !4
  %905 = load i32, i32* %cleft1583, align 4, !tbaa !6
  %idx.ext1611 = zext i32 %905 to i64
  %add.ptr1612 = getelementptr inbounds i8, i8* %904, i64 %idx.ext1611
  %906 = load i32, i32* %rleft, align 4, !tbaa !6
  %call1613 = call i32 @sgets(%struct.stream_s* %903, i8* %add.ptr1612, i32 %906, i32* %rleft) #6
  %cmp1614 = icmp slt i32 %call1613, 0
  br i1 %cmp1614, label %if.then.1616, label %if.end.1617

if.then.1616:                                     ; preds = %if.end.1608
  store i32 -28, i32* %code, align 4, !tbaa !6
  store i32 21, i32* %cleanup.dest.slot
  br label %cleanup.1621

if.end.1617:                                      ; preds = %if.end.1608
  %907 = load i8*, i8** %rdata, align 8, !tbaa !4
  %arrayidx1618 = getelementptr inbounds [32 x %struct.gx_image_plane_s], [32 x %struct.gx_image_plane_s]* %planes, i32 0, i64 0
  %data1619 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %arrayidx1618, i32 0, i32 0
  store i8* %907, i8** %data1619, align 8, !tbaa !171
  %end1620 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %cbuf, i32 0, i32 4
  %908 = load i8*, i8** %end1620, align 8, !tbaa !16
  store i8* %908, i8** %cbp, align 8, !tbaa !4
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.1621

cleanup.1621:                                     ; preds = %if.then.1616, %if.then.1604, %if.end.1617
  %909 = bitcast i8** %rdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %909) #1
  %910 = bitcast i32* %rleft to i8*
  call void @llvm.lifetime.end(i64 4, i8* %910) #1
  %911 = bitcast i32* %cleft1583 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %911) #1
  %cleanup.dest.1624 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.1624, label %cleanup.3226 [
    i32 0, label %cleanup.cont.1625
  ]

cleanup.cont.1625:                                ; preds = %cleanup.1621
  br label %if.end.1626

if.end.1626:                                      ; preds = %cleanup.cont.1625, %if.then.1577
  %912 = bitcast i32* %plane1627 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %912) #1
  %913 = bitcast i8** %data1628 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %913) #1
  %arrayidx1629 = getelementptr inbounds [32 x %struct.gx_image_plane_s], [32 x %struct.gx_image_plane_s]* %planes, i32 0, i64 0
  %data1630 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %arrayidx1629, i32 0, i32 0
  %914 = load i8*, i8** %data1630, align 8, !tbaa !171
  store i8* %914, i8** %data1628, align 8, !tbaa !4
  store i32 0, i32* %plane1627, align 4, !tbaa !6
  br label %for.cond.1631

for.cond.1631:                                    ; preds = %for.inc.1656, %if.end.1626
  %915 = load i32, i32* %plane1627, align 4, !tbaa !6
  %916 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %image_info, align 8, !tbaa !4
  %num_planes1632 = getelementptr inbounds %struct.gx_image_enum_common_s, %struct.gx_image_enum_common_s* %916, i32 0, i32 6
  %917 = load i32, i32* %num_planes1632, align 4, !tbaa !166
  %cmp1633 = icmp slt i32 %915, %917
  br i1 %cmp1633, label %for.body.1635, label %for.end.1658

for.body.1635:                                    ; preds = %for.cond.1631
  %918 = load i32, i32* %plane1627, align 4, !tbaa !6
  %idxprom1636 = sext i32 %918 to i64
  %arrayidx1637 = getelementptr inbounds [32 x %struct.gx_image_plane_s], [32 x %struct.gx_image_plane_s]* %planes, i32 0, i64 %idxprom1636
  %raster1638 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %arrayidx1637, i32 0, i32 2
  %919 = load i32, i32* %raster1638, align 4, !tbaa !168
  %cmp1639 = icmp eq i32 %919, 0
  br i1 %cmp1639, label %if.then.1641, label %if.else.1645

if.then.1641:                                     ; preds = %for.body.1635
  %920 = load i32, i32* %plane1627, align 4, !tbaa !6
  %idxprom1642 = sext i32 %920 to i64
  %arrayidx1643 = getelementptr inbounds [32 x %struct.gx_image_plane_s], [32 x %struct.gx_image_plane_s]* %planes, i32 0, i64 %idxprom1642
  %data1644 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %arrayidx1643, i32 0, i32 0
  store i8* null, i8** %data1644, align 8, !tbaa !171
  br label %if.end.1655

if.else.1645:                                     ; preds = %for.body.1635
  %921 = load i8*, i8** %data1628, align 8, !tbaa !4
  %922 = load i32, i32* %plane1627, align 4, !tbaa !6
  %idxprom1646 = sext i32 %922 to i64
  %arrayidx1647 = getelementptr inbounds [32 x %struct.gx_image_plane_s], [32 x %struct.gx_image_plane_s]* %planes, i32 0, i64 %idxprom1646
  %data1648 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %arrayidx1647, i32 0, i32 0
  store i8* %921, i8** %data1648, align 8, !tbaa !171
  %923 = load i32, i32* %plane1627, align 4, !tbaa !6
  %idxprom1649 = sext i32 %923 to i64
  %arrayidx1650 = getelementptr inbounds [32 x %struct.gx_image_plane_s], [32 x %struct.gx_image_plane_s]* %planes, i32 0, i64 %idxprom1649
  %raster1651 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %arrayidx1650, i32 0, i32 2
  %924 = load i32, i32* %raster1651, align 4, !tbaa !168
  %925 = load i32, i32* %data_height, align 4, !tbaa !6
  %mul1652 = mul i32 %924, %925
  %926 = load i8*, i8** %data1628, align 8, !tbaa !4
  %idx.ext1653 = zext i32 %mul1652 to i64
  %add.ptr1654 = getelementptr inbounds i8, i8* %926, i64 %idx.ext1653
  store i8* %add.ptr1654, i8** %data1628, align 8, !tbaa !4
  br label %if.end.1655

if.end.1655:                                      ; preds = %if.else.1645, %if.then.1641
  br label %for.inc.1656

for.inc.1656:                                     ; preds = %if.end.1655
  %927 = load i32, i32* %plane1627, align 4, !tbaa !6
  %inc1657 = add nsw i32 %927, 1
  store i32 %inc1657, i32* %plane1627, align 4, !tbaa !6
  br label %for.cond.1631

for.end.1658:                                     ; preds = %for.cond.1631
  %928 = bitcast i8** %data1628 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %928) #1
  %929 = bitcast i32* %plane1627 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %929) #1
  %930 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %image_info, align 8, !tbaa !4
  %arraydecay1659 = getelementptr inbounds [32 x %struct.gx_image_plane_s], [32 x %struct.gx_image_plane_s]* %planes, i32 0, i32 0
  %931 = load i32, i32* %data_height, align 4, !tbaa !6
  %call1660 = call i32 @gx_image_plane_data(%struct.gx_image_enum_common_s* %930, %struct.gx_image_plane_s* %arraydecay1659, i32 %931) #6
  store i32 %call1660, i32* %code, align 4, !tbaa !6
  %932 = load i32, i32* %code, align 4, !tbaa !6
  %cmp1661 = icmp slt i32 %932, 0
  br i1 %cmp1661, label %if.then.1663, label %if.end.1665

if.then.1663:                                     ; preds = %for.end.1658
  %933 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %image_info, align 8, !tbaa !4
  %call1664 = call i32 @gx_image_end(%struct.gx_image_enum_common_s* %933, i32 0) #6
  br label %if.end.1665

if.end.1665:                                      ; preds = %if.then.1663, %for.end.1658
  %934 = load i8*, i8** %data_on_heap, align 8, !tbaa !4
  %tobool1666 = icmp ne i8* %934, null
  br i1 %tobool1666, label %if.then.1667, label %if.end.1669

if.then.1667:                                     ; preds = %if.end.1665
  %935 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %procs1668 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %935, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs1668, i32 0, i32 2
  %936 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !172
  %937 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %938 = load i8*, i8** %data_on_heap, align 8, !tbaa !4
  call void %936(%struct.gs_memory_s* %937, i8* %938, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0)) #6
  br label %if.end.1669

if.end.1669:                                      ; preds = %if.then.1667, %if.end.1665
  store i32 0, i32* %data_x, align 4, !tbaa !6
  %939 = load i32, i32* %code, align 4, !tbaa !6
  %cmp1670 = icmp slt i32 %939, 0
  br i1 %cmp1670, label %if.then.1672, label %if.end.1673

if.then.1672:                                     ; preds = %if.end.1669
  store i32 21, i32* %cleanup.dest.slot
  br label %cleanup.3226

if.end.1673:                                      ; preds = %if.end.1669
  store i32 22, i32* %cleanup.dest.slot
  br label %cleanup.3226

sw.bb.1674:                                       ; preds = %sw.bb.1049
  %940 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr1675 = getelementptr inbounds i8, i8* %940, i32 1
  store i8* %incdec.ptr1675, i8** %cbp, align 8, !tbaa !4
  %941 = load i8, i8* %940, align 1, !tbaa !1
  %conv1676 = zext i8 %941 to i32
  switch i32 %conv1676, label %sw.default.2105 [
    i32 0, label %sw.bb.1677
    i32 1, label %sw.bb.1693
    i32 2, label %sw.bb.1919
    i32 3, label %sw.bb.1944
    i32 8, label %sw.bb.1955
    i32 9, label %sw.bb.1959
    i32 5, label %sw.bb.1964
    i32 6, label %sw.bb.1989
    i32 7, label %sw.bb.1991
    i32 4, label %sw.bb.1993
  ]

sw.bb.1677:                                       ; preds = %sw.bb.1674
  %942 = load i8*, i8** %cbp, align 8, !tbaa !4
  %ptr1678 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %cbuf, i32 0, i32 2
  store i8* %942, i8** %ptr1678, align 8, !tbaa !93
  %943 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %cdev.addr, align 8, !tbaa !4
  %944 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %call1679 = call i32 @read_put_params(%struct.command_buf_s* %cbuf, %struct.gs_imager_state_s* %imager_state, %struct.gx_device_clist_reader_s* %943, %struct.gs_memory_s* %944) #6
  store i32 %call1679, i32* %code, align 4, !tbaa !6
  %ptr1680 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %cbuf, i32 0, i32 2
  %945 = load i8*, i8** %ptr1680, align 8, !tbaa !93
  store i8* %945, i8** %cbp, align 8, !tbaa !4
  %946 = load i32, i32* %code, align 4, !tbaa !6
  %cmp1681 = icmp sgt i32 %946, 0
  br i1 %cmp1681, label %if.then.1683, label %if.end.1684

if.then.1683:                                     ; preds = %sw.bb.1677
  br label %sw.epilog.2106

if.end.1684:                                      ; preds = %sw.bb.1677
  %947 = load i32, i32* %code, align 4, !tbaa !6
  %cmp1685 = icmp slt i32 %947, 0
  br i1 %cmp1685, label %if.then.1687, label %if.end.1688

if.then.1687:                                     ; preds = %if.end.1684
  store i32 21, i32* %cleanup.dest.slot
  br label %cleanup.3226

if.end.1688:                                      ; preds = %if.end.1684
  %948 = load i32, i32* %playback_action.addr, align 4, !tbaa !1
  %cmp1689 = icmp eq i32 %948, 2
  br i1 %cmp1689, label %if.then.1691, label %if.end.1692

if.then.1691:                                     ; preds = %if.end.1688
  store i32 21, i32* %cleanup.dest.slot
  br label %cleanup.3226

if.end.1692:                                      ; preds = %if.end.1688
  br label %sw.epilog.2106

sw.bb.1693:                                       ; preds = %sw.bb.1674
  br label %do.body.1694

do.body.1694:                                     ; preds = %sw.bb.1693
  br label %do.cond.1695

do.cond.1695:                                     ; preds = %do.body.1694
  br label %do.end.1696

do.end.1696:                                      ; preds = %do.cond.1695
  %949 = load i8*, i8** %cbp, align 8, !tbaa !4
  %ptr1697 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %cbuf, i32 0, i32 2
  store i8* %949, i8** %ptr1697, align 8, !tbaa !93
  %950 = load i32, i32* %x0.addr, align 4, !tbaa !6
  %sub1698 = sub nsw i32 0, %950
  %951 = load i32, i32* %y0.addr, align 4, !tbaa !6
  %sub1699 = sub nsw i32 0, %951
  %call1700 = call i32 @gx_imager_setscreenphase(%struct.gs_imager_state_s* %imager_state, i32 %sub1698, i32 %sub1699, i32 -1) #6
  %952 = load i8*, i8** %cbp, align 8, !tbaa !4
  %add.ptr1701 = getelementptr inbounds i8, i8* %952, i64 -2
  store i8* %add.ptr1701, i8** %cbp, align 8, !tbaa !4
  br label %for.cond.1702

for.cond.1702:                                    ; preds = %cleanup.cont.1913, %cleanup.1911, %do.end.1696
  %953 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %953) #1
  %954 = load i8*, i8** %cbp, align 8, !tbaa !4
  %warn_limit1703 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %cbuf, i32 0, i32 3
  %955 = load i8*, i8** %warn_limit1703, align 8, !tbaa !92
  %cmp1704 = icmp uge i8* %954, %955
  br i1 %cmp1704, label %if.then.1706, label %if.end.1712

if.then.1706:                                     ; preds = %for.cond.1702
  %call1707 = call i32 @top_up_cbuf(%struct.command_buf_s* %cbuf, i8** %cbp) #6
  store i32 %call1707, i32* %code, align 4, !tbaa !6
  %956 = load i32, i32* %code, align 4, !tbaa !6
  %cmp1708 = icmp slt i32 %956, 0
  br i1 %cmp1708, label %if.then.1710, label %if.end.1711

if.then.1710:                                     ; preds = %if.then.1706
  store i32 21, i32* %cleanup.dest.slot
  br label %cleanup.1911

if.end.1711:                                      ; preds = %if.then.1706
  br label %if.end.1712

if.end.1712:                                      ; preds = %if.end.1711, %for.cond.1702
  %957 = load i8*, i8** %cbp, align 8, !tbaa !4
  %arrayidx1713 = getelementptr inbounds i8, i8* %957, i64 0
  %958 = load i8, i8* %arrayidx1713, align 1, !tbaa !1
  %conv1714 = zext i8 %958 to i32
  %cmp1715 = icmp eq i32 %conv1714, 223
  br i1 %cmp1715, label %land.lhs.true.1717, label %if.else.1816

land.lhs.true.1717:                               ; preds = %if.end.1712
  %959 = load i8*, i8** %cbp, align 8, !tbaa !4
  %arrayidx1718 = getelementptr inbounds i8, i8* %959, i64 1
  %960 = load i8, i8* %arrayidx1718, align 1, !tbaa !1
  %conv1719 = zext i8 %960 to i32
  %cmp1720 = icmp eq i32 %conv1719, 1
  br i1 %cmp1720, label %if.then.1722, label %if.else.1816

if.then.1722:                                     ; preds = %land.lhs.true.1717
  %961 = bitcast %struct.gs_composite_s** %pcomp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %961) #1
  %962 = bitcast %struct.gs_composite_s** %pcomp_opening to i8*
  call void @llvm.lifetime.start(i64 8, i8* %962) #1
  %963 = load i8*, i8** %cbp, align 8, !tbaa !4
  %add.ptr1723 = getelementptr inbounds i8, i8* %963, i64 2
  store i8* %add.ptr1723, i8** %cbp, align 8, !tbaa !4
  %ptr1724 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %cbuf, i32 0, i32 2
  store i8* %add.ptr1723, i8** %ptr1724, align 8, !tbaa !93
  %964 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %call1725 = call i32 @read_create_compositor(%struct.command_buf_s* %cbuf, %struct.gs_memory_s* %964, %struct.gs_composite_s** %pcomp) #6
  store i32 %call1725, i32* %code, align 4, !tbaa !6
  %965 = load i32, i32* %code, align 4, !tbaa !6
  %cmp1726 = icmp slt i32 %965, 0
  br i1 %cmp1726, label %if.then.1728, label %if.end.1729

if.then.1728:                                     ; preds = %if.then.1722
  store i32 21, i32* %cleanup.dest.slot
  br label %cleanup.1812

if.end.1729:                                      ; preds = %if.then.1722
  %ptr1730 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %cbuf, i32 0, i32 2
  %966 = load i8*, i8** %ptr1730, align 8, !tbaa !93
  store i8* %966, i8** %cbp, align 8, !tbaa !4
  %967 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcomp, align 8, !tbaa !4
  %cmp1731 = icmp eq %struct.gs_composite_s* %967, null
  br i1 %cmp1731, label %if.then.1733, label %if.end.1734

if.then.1733:                                     ; preds = %if.end.1729
  store i32 164, i32* %cleanup.dest.slot
  br label %cleanup.1812

if.end.1734:                                      ; preds = %if.end.1729
  %968 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcomp, align 8, !tbaa !4
  %call1735 = call i32 @gs_is_pdf14trans_compositor(%struct.gs_composite_s* %968) #6
  %tobool1736 = icmp ne i32 %call1735, 0
  br i1 %tobool1736, label %land.lhs.true.1737, label %if.end.1743

land.lhs.true.1737:                               ; preds = %if.end.1734
  %969 = load i32, i32* %playback_action.addr, align 4, !tbaa !1
  %cmp1738 = icmp eq i32 %969, 1
  br i1 %cmp1738, label %if.then.1740, label %if.end.1743

if.then.1740:                                     ; preds = %land.lhs.true.1737
  %970 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %procs1741 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %970, i32 0, i32 1
  %free_object1742 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs1741, i32 0, i32 2
  %971 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object1742, align 8, !tbaa !172
  %972 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %973 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcomp, align 8, !tbaa !4
  %974 = bitcast %struct.gs_composite_s* %973 to i8*
  call void %971(%struct.gs_memory_s* %972, i8* %974, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0)) #6
  store %struct.gs_composite_s* null, %struct.gs_composite_s** %pcomp, align 8, !tbaa !4
  store i32 164, i32* %cleanup.dest.slot
  br label %cleanup.1812

if.end.1743:                                      ; preds = %land.lhs.true.1737, %if.end.1734
  %975 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcomp_last, align 8, !tbaa !4
  store %struct.gs_composite_s* %975, %struct.gs_composite_s** %pcomp_opening, align 8, !tbaa !4
  %976 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcomp, align 8, !tbaa !4
  %type1744 = getelementptr inbounds %struct.gs_composite_s, %struct.gs_composite_s* %976, i32 0, i32 0
  %977 = load %struct.gs_composite_type_s*, %struct.gs_composite_type_s** %type1744, align 8, !tbaa !173
  %procs1745 = getelementptr inbounds %struct.gs_composite_type_s, %struct.gs_composite_type_s* %977, i32 0, i32 1
  %is_closing = getelementptr inbounds %struct.gs_composite_type_procs_s, %struct.gs_composite_type_procs_s* %procs1745, i32 0, i32 5
  %978 = load i32 (%struct.gs_composite_s*, %struct.gs_composite_s**, %struct.gx_device_s*)*, i32 (%struct.gs_composite_s*, %struct.gs_composite_s**, %struct.gx_device_s*)** %is_closing, align 8, !tbaa !175
  %979 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcomp, align 8, !tbaa !4
  %980 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !4
  %call1746 = call i32 %978(%struct.gs_composite_s* %979, %struct.gs_composite_s** %pcomp_opening, %struct.gx_device_s* %980) #6
  store i32 %call1746, i32* %code, align 4, !tbaa !6
  %981 = load i32, i32* %code, align 4, !tbaa !6
  %cmp1747 = icmp slt i32 %981, 0
  br i1 %cmp1747, label %if.then.1749, label %if.else.1750

if.then.1749:                                     ; preds = %if.end.1743
  store i32 21, i32* %cleanup.dest.slot
  br label %cleanup.1812

if.else.1750:                                     ; preds = %if.end.1743
  %982 = load i32, i32* %code, align 4, !tbaa !6
  %cmp1751 = icmp eq i32 %982, 0
  br i1 %cmp1751, label %if.then.1753, label %if.else.1754

if.then.1753:                                     ; preds = %if.else.1750
  %983 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcomp, align 8, !tbaa !4
  call void @enqueue_compositor(%struct.gs_composite_s** %pcomp_first, %struct.gs_composite_s** %pcomp_last, %struct.gs_composite_s* %983) #6
  br label %if.end.1810

if.else.1754:                                     ; preds = %if.else.1750
  %984 = load i32, i32* %code, align 4, !tbaa !6
  %cmp1755 = icmp eq i32 %984, 1
  br i1 %cmp1755, label %if.then.1757, label %if.else.1763

if.then.1757:                                     ; preds = %if.else.1754
  %985 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcomp, align 8, !tbaa !4
  call void @enqueue_compositor(%struct.gs_composite_s** %pcomp_first, %struct.gs_composite_s** %pcomp_last, %struct.gs_composite_s* %985) #6
  %986 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %cdev.addr, align 8, !tbaa !4
  %987 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcomp_opening, align 8, !tbaa !4
  %988 = load i32, i32* %x0.addr, align 4, !tbaa !6
  %989 = load i32, i32* %y0.addr, align 4, !tbaa !6
  %990 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %call1758 = call i32 @execute_compositor_queue(%struct.gx_device_clist_reader_s* %986, %struct.gx_device_s** %target.addr, %struct.gx_device_s** %tdev, %struct.gs_imager_state_s* %imager_state, %struct.gs_composite_s** %pcomp_first, %struct.gs_composite_s** %pcomp_last, %struct.gs_composite_s* %987, i32 %988, i32 %989, %struct.gs_memory_s* %990, i32 1) #6
  store i32 %call1758, i32* %code, align 4, !tbaa !6
  %991 = load i32, i32* %code, align 4, !tbaa !6
  %cmp1759 = icmp slt i32 %991, 0
  br i1 %cmp1759, label %if.then.1761, label %if.end.1762

if.then.1761:                                     ; preds = %if.then.1757
  store i32 21, i32* %cleanup.dest.slot
  br label %cleanup.1812

if.end.1762:                                      ; preds = %if.then.1757
  br label %if.end.1809

if.else.1763:                                     ; preds = %if.else.1754
  %992 = load i32, i32* %code, align 4, !tbaa !6
  %cmp1764 = icmp eq i32 %992, 2
  br i1 %cmp1764, label %if.then.1766, label %if.else.1772

if.then.1766:                                     ; preds = %if.else.1763
  %993 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcomp, align 8, !tbaa !4
  call void @enqueue_compositor(%struct.gs_composite_s** %pcomp_first, %struct.gs_composite_s** %pcomp_last, %struct.gs_composite_s* %993) #6
  %994 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %cdev.addr, align 8, !tbaa !4
  %995 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcomp_first, align 8, !tbaa !4
  %996 = load i32, i32* %x0.addr, align 4, !tbaa !6
  %997 = load i32, i32* %y0.addr, align 4, !tbaa !6
  %998 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %call1767 = call i32 @execute_compositor_queue(%struct.gx_device_clist_reader_s* %994, %struct.gx_device_s** %target.addr, %struct.gx_device_s** %tdev, %struct.gs_imager_state_s* %imager_state, %struct.gs_composite_s** %pcomp_first, %struct.gs_composite_s** %pcomp_last, %struct.gs_composite_s* %995, i32 %996, i32 %997, %struct.gs_memory_s* %998, i32 0) #6
  store i32 %call1767, i32* %code, align 4, !tbaa !6
  %999 = load i32, i32* %code, align 4, !tbaa !6
  %cmp1768 = icmp slt i32 %999, 0
  br i1 %cmp1768, label %if.then.1770, label %if.end.1771

if.then.1770:                                     ; preds = %if.then.1766
  store i32 21, i32* %cleanup.dest.slot
  br label %cleanup.1812

if.end.1771:                                      ; preds = %if.then.1766
  br label %if.end.1808

if.else.1772:                                     ; preds = %if.else.1763
  %1000 = load i32, i32* %code, align 4, !tbaa !6
  %cmp1773 = icmp eq i32 %1000, 3
  br i1 %cmp1773, label %if.then.1775, label %if.else.1781

if.then.1775:                                     ; preds = %if.else.1772
  %1001 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %cdev.addr, align 8, !tbaa !4
  %1002 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcomp_opening, align 8, !tbaa !4
  %1003 = load i32, i32* %x0.addr, align 4, !tbaa !6
  %1004 = load i32, i32* %y0.addr, align 4, !tbaa !6
  %1005 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %call1776 = call i32 @execute_compositor_queue(%struct.gx_device_clist_reader_s* %1001, %struct.gx_device_s** %target.addr, %struct.gx_device_s** %tdev, %struct.gs_imager_state_s* %imager_state, %struct.gs_composite_s** %pcomp_first, %struct.gs_composite_s** %pcomp_last, %struct.gs_composite_s* %1002, i32 %1003, i32 %1004, %struct.gs_memory_s* %1005, i32 1) #6
  store i32 %call1776, i32* %code, align 4, !tbaa !6
  %1006 = load i32, i32* %code, align 4, !tbaa !6
  %cmp1777 = icmp slt i32 %1006, 0
  br i1 %cmp1777, label %if.then.1779, label %if.end.1780

if.then.1779:                                     ; preds = %if.then.1775
  store i32 21, i32* %cleanup.dest.slot
  br label %cleanup.1812

if.end.1780:                                      ; preds = %if.then.1775
  %1007 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcomp, align 8, !tbaa !4
  call void @enqueue_compositor(%struct.gs_composite_s** %pcomp_first, %struct.gs_composite_s** %pcomp_last, %struct.gs_composite_s* %1007) #6
  br label %if.end.1807

if.else.1781:                                     ; preds = %if.else.1772
  %1008 = load i32, i32* %code, align 4, !tbaa !6
  %cmp1782 = icmp eq i32 %1008, 4
  br i1 %cmp1782, label %if.then.1784, label %if.else.1790

if.then.1784:                                     ; preds = %if.else.1781
  %1009 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcomp_opening, align 8, !tbaa !4
  %call1785 = call i32 @dequeue_compositor(%struct.gs_composite_s** %pcomp_first, %struct.gs_composite_s** %pcomp_last, %struct.gs_composite_s* %1009) #6
  store i32 %call1785, i32* %code, align 4, !tbaa !6
  %1010 = load i32, i32* %code, align 4, !tbaa !6
  %cmp1786 = icmp slt i32 %1010, 0
  br i1 %cmp1786, label %if.then.1788, label %if.end.1789

if.then.1788:                                     ; preds = %if.then.1784
  store i32 21, i32* %cleanup.dest.slot
  br label %cleanup.1812

if.end.1789:                                      ; preds = %if.then.1784
  %1011 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcomp, align 8, !tbaa !4
  call void @enqueue_compositor(%struct.gs_composite_s** %pcomp_first, %struct.gs_composite_s** %pcomp_last, %struct.gs_composite_s* %1011) #6
  %1012 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcomp_opening, align 8, !tbaa !4
  %1013 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  call void @free_compositor(%struct.gs_composite_s* %1012, %struct.gs_memory_s* %1013) #6
  br label %if.end.1806

if.else.1790:                                     ; preds = %if.else.1781
  %1014 = load i32, i32* %code, align 4, !tbaa !6
  %cmp1791 = icmp eq i32 %1014, 5
  br i1 %cmp1791, label %if.then.1793, label %if.else.1799

if.then.1793:                                     ; preds = %if.else.1790
  %1015 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcomp, align 8, !tbaa !4
  call void @enqueue_compositor(%struct.gs_composite_s** %pcomp_first, %struct.gs_composite_s** %pcomp_last, %struct.gs_composite_s* %1015) #6
  %1016 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcomp_opening, align 8, !tbaa !4
  %1017 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %1018 = load i32, i32* %x0.addr, align 4, !tbaa !6
  %1019 = load i32, i32* %y0.addr, align 4, !tbaa !6
  %call1794 = call i32 @drop_compositor_queue(%struct.gs_composite_s** %pcomp_first, %struct.gs_composite_s** %pcomp_last, %struct.gs_composite_s* %1016, %struct.gs_memory_s* %1017, i32 %1018, i32 %1019, %struct.gs_imager_state_s* %imager_state) #6
  store i32 %call1794, i32* %code, align 4, !tbaa !6
  %1020 = load i32, i32* %code, align 4, !tbaa !6
  %cmp1795 = icmp slt i32 %1020, 0
  br i1 %cmp1795, label %if.then.1797, label %if.end.1798

if.then.1797:                                     ; preds = %if.then.1793
  store i32 21, i32* %cleanup.dest.slot
  br label %cleanup.1812

if.end.1798:                                      ; preds = %if.then.1793
  br label %if.end.1805

if.else.1799:                                     ; preds = %if.else.1790
  %1021 = load i32, i32* %code, align 4, !tbaa !6
  %cmp1800 = icmp eq i32 %1021, 6
  br i1 %cmp1800, label %if.then.1802, label %if.else.1803

if.then.1802:                                     ; preds = %if.else.1799
  %1022 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcomp, align 8, !tbaa !4
  call void @enqueue_compositor(%struct.gs_composite_s** %pcomp_first, %struct.gs_composite_s** %pcomp_last, %struct.gs_composite_s* %1022) #6
  %1023 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcomp_opening, align 8, !tbaa !4
  %1024 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcomp, align 8, !tbaa !4
  call void @mark_as_idle(%struct.gs_composite_s* %1023, %struct.gs_composite_s* %1024) #6
  br label %if.end.1804

if.else.1803:                                     ; preds = %if.else.1799
  store i32 -28, i32* %code, align 4, !tbaa !6
  store i32 21, i32* %cleanup.dest.slot
  br label %cleanup.1812

if.end.1804:                                      ; preds = %if.then.1802
  br label %if.end.1805

if.end.1805:                                      ; preds = %if.end.1804, %if.end.1798
  br label %if.end.1806

if.end.1806:                                      ; preds = %if.end.1805, %if.end.1789
  br label %if.end.1807

if.end.1807:                                      ; preds = %if.end.1806, %if.end.1780
  br label %if.end.1808

if.end.1808:                                      ; preds = %if.end.1807, %if.end.1771
  br label %if.end.1809

if.end.1809:                                      ; preds = %if.end.1808, %if.end.1762
  br label %if.end.1810

if.end.1810:                                      ; preds = %if.end.1809, %if.then.1753
  br label %if.end.1811

if.end.1811:                                      ; preds = %if.end.1810
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.1812

cleanup.1812:                                     ; preds = %if.else.1803, %if.then.1797, %if.then.1788, %if.then.1779, %if.then.1770, %if.then.1761, %if.then.1749, %if.then.1728, %if.end.1811, %if.then.1740, %if.then.1733
  %1025 = bitcast %struct.gs_composite_s** %pcomp_opening to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1025) #1
  %1026 = bitcast %struct.gs_composite_s** %pcomp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1026) #1
  %cleanup.dest.1814 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.1814, label %cleanup.1911 [
    i32 0, label %cleanup.cont.1815
  ]

cleanup.cont.1815:                                ; preds = %cleanup.1812
  br label %if.end.1910

if.else.1816:                                     ; preds = %land.lhs.true.1717, %if.end.1712
  %1027 = load i8*, i8** %cbp, align 8, !tbaa !4
  %call1817 = call i32 @is_null_compositor_op(i8* %1027, i32* %len) #6
  %tobool1818 = icmp ne i32 %call1817, 0
  br i1 %tobool1818, label %if.then.1819, label %if.else.1823

if.then.1819:                                     ; preds = %if.else.1816
  %1028 = load i32, i32* %len, align 4, !tbaa !6
  %1029 = load i8*, i8** %cbp, align 8, !tbaa !4
  %idx.ext1820 = sext i32 %1028 to i64
  %add.ptr1821 = getelementptr inbounds i8, i8* %1029, i64 %idx.ext1820
  store i8* %add.ptr1821, i8** %cbp, align 8, !tbaa !4
  %ptr1822 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %cbuf, i32 0, i32 2
  store i8* %add.ptr1821, i8** %ptr1822, align 8, !tbaa !93
  br label %if.end.1909

if.else.1823:                                     ; preds = %if.else.1816
  %1030 = load i8*, i8** %cbp, align 8, !tbaa !4
  %arrayidx1824 = getelementptr inbounds i8, i8* %1030, i64 0
  %1031 = load i8, i8* %arrayidx1824, align 1, !tbaa !1
  %conv1825 = zext i8 %1031 to i32
  %cmp1826 = icmp eq i32 %conv1825, 11
  br i1 %cmp1826, label %if.then.1828, label %if.else.1834

if.then.1828:                                     ; preds = %if.else.1823
  %1032 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %cdev.addr, align 8, !tbaa !4
  %1033 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcomp_first, align 8, !tbaa !4
  %1034 = load i32, i32* %x0.addr, align 4, !tbaa !6
  %1035 = load i32, i32* %y0.addr, align 4, !tbaa !6
  %1036 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %call1829 = call i32 @execute_compositor_queue(%struct.gx_device_clist_reader_s* %1032, %struct.gx_device_s** %target.addr, %struct.gx_device_s** %tdev, %struct.gs_imager_state_s* %imager_state, %struct.gs_composite_s** %pcomp_first, %struct.gs_composite_s** %pcomp_last, %struct.gs_composite_s* %1033, i32 %1034, i32 %1035, %struct.gs_memory_s* %1036, i32 1) #6
  store i32 %call1829, i32* %code, align 4, !tbaa !6
  %1037 = load i32, i32* %code, align 4, !tbaa !6
  %cmp1830 = icmp slt i32 %1037, 0
  br i1 %cmp1830, label %if.then.1832, label %if.end.1833

if.then.1832:                                     ; preds = %if.then.1828
  store i32 21, i32* %cleanup.dest.slot
  br label %cleanup.1911

if.end.1833:                                      ; preds = %if.then.1828
  store i32 163, i32* %cleanup.dest.slot
  br label %cleanup.1911

if.else.1834:                                     ; preds = %if.else.1823
  %1038 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcomp_last, align 8, !tbaa !4
  %cmp1835 = icmp ne %struct.gs_composite_s* %1038, null
  br i1 %cmp1835, label %land.lhs.true.1837, label %if.else.1901

land.lhs.true.1837:                               ; preds = %if.else.1834
  %1039 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcomp_last, align 8, !tbaa !4
  %type1838 = getelementptr inbounds %struct.gs_composite_s, %struct.gs_composite_s* %1039, i32 0, i32 0
  %1040 = load %struct.gs_composite_type_s*, %struct.gs_composite_type_s** %type1838, align 8, !tbaa !173
  %procs1839 = getelementptr inbounds %struct.gs_composite_type_s, %struct.gs_composite_type_s* %1040, i32 0, i32 1
  %is_friendly = getelementptr inbounds %struct.gs_composite_type_procs_s, %struct.gs_composite_type_procs_s* %procs1839, i32 0, i32 6
  %1041 = load i32 (%struct.gs_composite_s*, i8, i8)*, i32 (%struct.gs_composite_s*, i8, i8)** %is_friendly, align 8, !tbaa !178
  %1042 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcomp_last, align 8, !tbaa !4
  %1043 = load i8*, i8** %cbp, align 8, !tbaa !4
  %arrayidx1840 = getelementptr inbounds i8, i8* %1043, i64 0
  %1044 = load i8, i8* %arrayidx1840, align 1, !tbaa !1
  %1045 = load i8*, i8** %cbp, align 8, !tbaa !4
  %arrayidx1841 = getelementptr inbounds i8, i8* %1045, i64 1
  %1046 = load i8, i8* %arrayidx1841, align 1, !tbaa !1
  %call1842 = call i32 %1041(%struct.gs_composite_s* %1042, i8 zeroext %1044, i8 zeroext %1046) #6
  %tobool1843 = icmp ne i32 %call1842, 0
  br i1 %tobool1843, label %if.then.1844, label %if.else.1901

if.then.1844:                                     ; preds = %land.lhs.true.1837
  %1047 = bitcast i32* %cb1845 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1047) #1
  %1048 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr1846 = getelementptr inbounds i8, i8* %1048, i32 1
  store i8* %incdec.ptr1846, i8** %cbp, align 8, !tbaa !4
  %1049 = load i8, i8* %1048, align 1, !tbaa !1
  %conv1847 = zext i8 %1049 to i32
  switch i32 %conv1847, label %sw.default.1896 [
    i32 223, label %sw.bb.1848
    i32 6, label %sw.bb.1881
  ]

sw.bb.1848:                                       ; preds = %if.then.1844
  %1050 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr1849 = getelementptr inbounds i8, i8* %1050, i32 1
  store i8* %incdec.ptr1849, i8** %cbp, align 8, !tbaa !4
  %1051 = load i8, i8* %1050, align 1, !tbaa !1
  %conv1850 = zext i8 %1051 to i32
  switch i32 %conv1850, label %sw.default.1879 [
    i32 2, label %sw.bb.1851
    i32 3, label %sw.bb.1871
  ]

sw.bb.1851:                                       ; preds = %sw.bb.1848
  %1052 = bitcast i32* %ht_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1052) #1
  br label %do.body.1852

do.body.1852:                                     ; preds = %sw.bb.1851
  %1053 = load i8*, i8** %cbp, align 8, !tbaa !4
  %1054 = load i8, i8* %1053, align 1, !tbaa !1
  %conv1853 = zext i8 %1054 to i32
  store i32 %conv1853, i32* %ht_size, align 4, !tbaa !6
  %cmp1854 = icmp uge i32 %conv1853, 128
  br i1 %cmp1854, label %if.then.1856, label %if.else.1858

if.then.1856:                                     ; preds = %do.body.1852
  %1055 = bitcast i32* %tmp_w to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1055) #1
  %1056 = load i8*, i8** %cbp, align 8, !tbaa !4
  %call1857 = call i8* @enc_u_get_uint(i32* %tmp_w, i8* %1056) #6
  store i8* %call1857, i8** %cbp, align 8, !tbaa !4
  %1057 = load i32, i32* %tmp_w, align 4, !tbaa !6
  store i32 %1057, i32* %ht_size, align 4, !tbaa !6
  %1058 = bitcast i32* %tmp_w to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1058) #1
  br label %if.end.1860

if.else.1858:                                     ; preds = %do.body.1852
  %1059 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr1859 = getelementptr inbounds i8, i8* %1059, i32 1
  store i8* %incdec.ptr1859, i8** %cbp, align 8, !tbaa !4
  br label %if.end.1860

if.end.1860:                                      ; preds = %if.else.1858, %if.then.1856
  br label %do.cond.1861

do.cond.1861:                                     ; preds = %if.end.1860
  br label %do.end.1862

do.end.1862:                                      ; preds = %do.cond.1861
  %1060 = load i32, i32* %ht_size, align 4, !tbaa !6
  %1061 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %call1863 = call i32 @read_alloc_ht_buff(%struct.ht_buff_s* %ht_buff, i32 %1060, %struct.gs_memory_s* %1061) #6
  store i32 %call1863, i32* %code, align 4, !tbaa !6
  %1062 = load i32, i32* %code, align 4, !tbaa !6
  %cmp1864 = icmp slt i32 %1062, 0
  br i1 %cmp1864, label %if.then.1866, label %if.end.1867

if.then.1866:                                     ; preds = %do.end.1862
  store i32 21, i32* %cleanup.dest.slot
  br label %cleanup.1868

if.end.1867:                                      ; preds = %do.end.1862
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.1868

cleanup.1868:                                     ; preds = %if.then.1866, %if.end.1867
  %1063 = bitcast i32* %ht_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1063) #1
  %cleanup.dest.1869 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.1869, label %cleanup.1898 [
    i32 0, label %cleanup.cont.1870
  ]

cleanup.cont.1870:                                ; preds = %cleanup.1868
  br label %sw.epilog.1880

sw.bb.1871:                                       ; preds = %sw.bb.1848
  %1064 = load i8*, i8** %cbp, align 8, !tbaa !4
  %ptr1872 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %cbuf, i32 0, i32 2
  store i8* %1064, i8** %ptr1872, align 8, !tbaa !93
  %1065 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !4
  %1066 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %call1873 = call i32 @read_ht_segment(%struct.ht_buff_s* %ht_buff, %struct.command_buf_s* %cbuf, %struct.gs_imager_state_s* %imager_state, %struct.gx_device_s* %1065, %struct.gs_memory_s* %1066) #6
  store i32 %call1873, i32* %code, align 4, !tbaa !6
  %ptr1874 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %cbuf, i32 0, i32 2
  %1067 = load i8*, i8** %ptr1874, align 8, !tbaa !93
  store i8* %1067, i8** %cbp, align 8, !tbaa !4
  %1068 = load i32, i32* %code, align 4, !tbaa !6
  %cmp1875 = icmp slt i32 %1068, 0
  br i1 %cmp1875, label %if.then.1877, label %if.end.1878

if.then.1877:                                     ; preds = %sw.bb.1871
  store i32 21, i32* %cleanup.dest.slot
  br label %cleanup.1898

if.end.1878:                                      ; preds = %sw.bb.1871
  br label %sw.epilog.1880

sw.default.1879:                                  ; preds = %sw.bb.1848
  store i32 -28, i32* %code, align 4, !tbaa !6
  store i32 21, i32* %cleanup.dest.slot
  br label %cleanup.1898

sw.epilog.1880:                                   ; preds = %if.end.1878, %cleanup.cont.1870
  br label %sw.epilog.1897

sw.bb.1881:                                       ; preds = %if.then.1844
  %1069 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr1882 = getelementptr inbounds i8, i8* %1069, i32 1
  store i8* %incdec.ptr1882, i8** %cbp, align 8, !tbaa !4
  %1070 = load i8, i8* %1069, align 1, !tbaa !1
  %conv1883 = zext i8 %1070 to i32
  store i32 %conv1883, i32* %cb1845, align 4, !tbaa !6
  %1071 = load i32, i32* %cb1845, align 4, !tbaa !6
  %shr1884 = lshr i32 %1071, 6
  switch i32 %shr1884, label %sw.default.1894 [
    i32 2, label %sw.bb.1885
  ]

sw.bb.1885:                                       ; preds = %sw.bb.1881
  %1072 = load i8*, i8** %cbp, align 8, !tbaa !4
  %ptr1886 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %cbuf, i32 0, i32 2
  store i8* %1072, i8** %ptr1886, align 8, !tbaa !93
  %1073 = load i32, i32* %cb1845, align 4, !tbaa !6
  %conv1887 = trunc i32 %1073 to i8
  %1074 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %call1888 = call i32 @read_set_misc_map(i8 zeroext %conv1887, %struct.command_buf_s* %cbuf, %struct.gs_imager_state_s* %imager_state, %struct.gs_memory_s* %1074) #6
  store i32 %call1888, i32* %code, align 4, !tbaa !6
  %1075 = load i32, i32* %code, align 4, !tbaa !6
  %cmp1889 = icmp slt i32 %1075, 0
  br i1 %cmp1889, label %if.then.1891, label %if.end.1892

if.then.1891:                                     ; preds = %sw.bb.1885
  store i32 21, i32* %cleanup.dest.slot
  br label %cleanup.1898

if.end.1892:                                      ; preds = %sw.bb.1885
  %ptr1893 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %cbuf, i32 0, i32 2
  %1076 = load i8*, i8** %ptr1893, align 8, !tbaa !93
  store i8* %1076, i8** %cbp, align 8, !tbaa !4
  br label %sw.epilog.1895

sw.default.1894:                                  ; preds = %sw.bb.1881
  store i32 -28, i32* %code, align 4, !tbaa !6
  store i32 21, i32* %cleanup.dest.slot
  br label %cleanup.1898

sw.epilog.1895:                                   ; preds = %if.end.1892
  br label %sw.epilog.1897

sw.default.1896:                                  ; preds = %if.then.1844
  store i32 -28, i32* %code, align 4, !tbaa !6
  store i32 21, i32* %cleanup.dest.slot
  br label %cleanup.1898

sw.epilog.1897:                                   ; preds = %sw.epilog.1895, %sw.epilog.1880
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.1898

cleanup.1898:                                     ; preds = %sw.default.1896, %sw.default.1894, %if.then.1891, %sw.default.1879, %if.then.1877, %sw.epilog.1897, %cleanup.1868
  %1077 = bitcast i32* %cb1845 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1077) #1
  %cleanup.dest.1899 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.1899, label %cleanup.1911 [
    i32 0, label %cleanup.cont.1900
  ]

cleanup.cont.1900:                                ; preds = %cleanup.1898
  br label %if.end.1907

if.else.1901:                                     ; preds = %land.lhs.true.1837, %if.else.1834
  %1078 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %cdev.addr, align 8, !tbaa !4
  %1079 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcomp_first, align 8, !tbaa !4
  %1080 = load i32, i32* %x0.addr, align 4, !tbaa !6
  %1081 = load i32, i32* %y0.addr, align 4, !tbaa !6
  %1082 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %call1902 = call i32 @execute_compositor_queue(%struct.gx_device_clist_reader_s* %1078, %struct.gx_device_s** %target.addr, %struct.gx_device_s** %tdev, %struct.gs_imager_state_s* %imager_state, %struct.gs_composite_s** %pcomp_first, %struct.gs_composite_s** %pcomp_last, %struct.gs_composite_s* %1079, i32 %1080, i32 %1081, %struct.gs_memory_s* %1082, i32 0) #6
  store i32 %call1902, i32* %code, align 4, !tbaa !6
  %1083 = load i32, i32* %code, align 4, !tbaa !6
  %cmp1903 = icmp slt i32 %1083, 0
  br i1 %cmp1903, label %if.then.1905, label %if.end.1906

if.then.1905:                                     ; preds = %if.else.1901
  store i32 21, i32* %cleanup.dest.slot
  br label %cleanup.1911

if.end.1906:                                      ; preds = %if.else.1901
  store i32 163, i32* %cleanup.dest.slot
  br label %cleanup.1911

if.end.1907:                                      ; preds = %cleanup.cont.1900
  br label %if.end.1908

if.end.1908:                                      ; preds = %if.end.1907
  br label %if.end.1909

if.end.1909:                                      ; preds = %if.end.1908, %if.then.1819
  br label %if.end.1910

if.end.1910:                                      ; preds = %if.end.1909, %cleanup.cont.1815
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.1911

cleanup.1911:                                     ; preds = %if.then.1905, %if.then.1832, %if.then.1710, %if.end.1910, %if.end.1906, %cleanup.1898, %if.end.1833, %cleanup.1812
  %1084 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1084) #1
  %cleanup.dest.1912 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.1912, label %cleanup.3226 [
    i32 0, label %cleanup.cont.1913
    i32 164, label %for.cond.1702
    i32 163, label %for.end.1914
  ]

cleanup.cont.1913:                                ; preds = %cleanup.1911
  br label %for.cond.1702

for.end.1914:                                     ; preds = %cleanup.1911
  %1085 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcomp_last, align 8, !tbaa !4
  %cmp1915 = icmp ne %struct.gs_composite_s* %1085, null
  br i1 %cmp1915, label %if.then.1917, label %if.end.1918

if.then.1917:                                     ; preds = %for.end.1914
  store i32 -28, i32* %code, align 4, !tbaa !6
  store i32 21, i32* %cleanup.dest.slot
  br label %cleanup.3226

if.end.1918:                                      ; preds = %for.end.1914
  br label %sw.epilog.2106

sw.bb.1919:                                       ; preds = %sw.bb.1674
  %1086 = bitcast i32* %ht_size1920 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1086) #1
  br label %do.body.1921

do.body.1921:                                     ; preds = %sw.bb.1919
  br label %do.cond.1922

do.cond.1922:                                     ; preds = %do.body.1921
  br label %do.end.1923

do.end.1923:                                      ; preds = %do.cond.1922
  br label %do.body.1924

do.body.1924:                                     ; preds = %do.end.1923
  %1087 = load i8*, i8** %cbp, align 8, !tbaa !4
  %1088 = load i8, i8* %1087, align 1, !tbaa !1
  %conv1925 = zext i8 %1088 to i32
  store i32 %conv1925, i32* %ht_size1920, align 4, !tbaa !6
  %cmp1926 = icmp uge i32 %conv1925, 128
  br i1 %cmp1926, label %if.then.1928, label %if.else.1931

if.then.1928:                                     ; preds = %do.body.1924
  %1089 = bitcast i32* %tmp_w1929 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1089) #1
  %1090 = load i8*, i8** %cbp, align 8, !tbaa !4
  %call1930 = call i8* @enc_u_get_uint(i32* %tmp_w1929, i8* %1090) #6
  store i8* %call1930, i8** %cbp, align 8, !tbaa !4
  %1091 = load i32, i32* %tmp_w1929, align 4, !tbaa !6
  store i32 %1091, i32* %ht_size1920, align 4, !tbaa !6
  %1092 = bitcast i32* %tmp_w1929 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1092) #1
  br label %if.end.1933

if.else.1931:                                     ; preds = %do.body.1924
  %1093 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr1932 = getelementptr inbounds i8, i8* %1093, i32 1
  store i8* %incdec.ptr1932, i8** %cbp, align 8, !tbaa !4
  br label %if.end.1933

if.end.1933:                                      ; preds = %if.else.1931, %if.then.1928
  br label %do.cond.1934

do.cond.1934:                                     ; preds = %if.end.1933
  br label %do.end.1935

do.end.1935:                                      ; preds = %do.cond.1934
  %1094 = load i32, i32* %ht_size1920, align 4, !tbaa !6
  %1095 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %call1936 = call i32 @read_alloc_ht_buff(%struct.ht_buff_s* %ht_buff, i32 %1094, %struct.gs_memory_s* %1095) #6
  store i32 %call1936, i32* %code, align 4, !tbaa !6
  %1096 = load i32, i32* %code, align 4, !tbaa !6
  %cmp1937 = icmp slt i32 %1096, 0
  br i1 %cmp1937, label %if.then.1939, label %if.end.1940

if.then.1939:                                     ; preds = %do.end.1935
  store i32 21, i32* %cleanup.dest.slot
  br label %cleanup.1941

if.end.1940:                                      ; preds = %do.end.1935
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.1941

cleanup.1941:                                     ; preds = %if.then.1939, %if.end.1940
  %1097 = bitcast i32* %ht_size1920 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1097) #1
  %cleanup.dest.1942 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.1942, label %cleanup.3226 [
    i32 0, label %cleanup.cont.1943
  ]

cleanup.cont.1943:                                ; preds = %cleanup.1941
  br label %sw.epilog.2106

sw.bb.1944:                                       ; preds = %sw.bb.1674
  br label %do.body.1945

do.body.1945:                                     ; preds = %sw.bb.1944
  br label %do.cond.1946

do.cond.1946:                                     ; preds = %do.body.1945
  br label %do.end.1947

do.end.1947:                                      ; preds = %do.cond.1946
  %1098 = load i8*, i8** %cbp, align 8, !tbaa !4
  %ptr1948 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %cbuf, i32 0, i32 2
  store i8* %1098, i8** %ptr1948, align 8, !tbaa !93
  %1099 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !4
  %1100 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %call1949 = call i32 @read_ht_segment(%struct.ht_buff_s* %ht_buff, %struct.command_buf_s* %cbuf, %struct.gs_imager_state_s* %imager_state, %struct.gx_device_s* %1099, %struct.gs_memory_s* %1100) #6
  store i32 %call1949, i32* %code, align 4, !tbaa !6
  %ptr1950 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %cbuf, i32 0, i32 2
  %1101 = load i8*, i8** %ptr1950, align 8, !tbaa !93
  store i8* %1101, i8** %cbp, align 8, !tbaa !4
  %1102 = load i32, i32* %code, align 4, !tbaa !6
  %cmp1951 = icmp slt i32 %1102, 0
  br i1 %cmp1951, label %if.then.1953, label %if.end.1954

if.then.1953:                                     ; preds = %do.end.1947
  store i32 21, i32* %cleanup.dest.slot
  br label %cleanup.3226

if.end.1954:                                      ; preds = %do.end.1947
  br label %sw.epilog.2106

sw.bb.1955:                                       ; preds = %sw.bb.1674
  %color_is_devn = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 13
  store i32 1, i32* %color_is_devn, align 4, !tbaa !179
  br label %do.body.1956

do.body.1956:                                     ; preds = %sw.bb.1955
  br label %do.cond.1957

do.cond.1957:                                     ; preds = %do.body.1956
  br label %do.end.1958

do.end.1958:                                      ; preds = %do.cond.1957
  br label %sw.epilog.2106

sw.bb.1959:                                       ; preds = %sw.bb.1674
  %color_is_devn1960 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 13
  store i32 0, i32* %color_is_devn1960, align 4, !tbaa !179
  br label %do.body.1961

do.body.1961:                                     ; preds = %sw.bb.1959
  br label %do.cond.1962

do.cond.1962:                                     ; preds = %do.body.1961
  br label %do.end.1963

do.end.1963:                                      ; preds = %do.cond.1962
  br label %sw.epilog.2106

sw.bb.1964:                                       ; preds = %sw.bb.1674
  %1103 = load i32, i32* %op, align 4, !tbaa !6
  %and1965 = and i32 %1103, 240
  %rect1966 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 8
  %1104 = load i8*, i8** %cbp, align 8, !tbaa !4
  %call1967 = call i8* @cmd_read_rect(i32 %and1965, %struct.gx_cmd_rect* %rect1966, i8* %1104) #6
  store i8* %call1967, i8** %cbp, align 8, !tbaa !4
  br label %do.body.1968

do.body.1968:                                     ; preds = %sw.bb.1964
  br label %do.cond.1969

do.cond.1969:                                     ; preds = %do.body.1968
  br label %do.end.1970

do.end.1970:                                      ; preds = %do.cond.1969
  %1105 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !4
  %procs1971 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1105, i32 0, i32 42
  %strip_tile_rect_devn = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs1971, i32 0, i32 70
  %1106 = load i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)** %strip_tile_rect_devn, align 8, !tbaa !180
  %1107 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !4
  %rect1972 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 8
  %x1973 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect1972, i32 0, i32 0
  %1108 = load i32, i32* %x1973, align 4, !tbaa !119
  %1109 = load i32, i32* %x0.addr, align 4, !tbaa !6
  %sub1974 = sub nsw i32 %1108, %1109
  %rect1975 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 8
  %y1976 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect1975, i32 0, i32 1
  %1110 = load i32, i32* %y1976, align 4, !tbaa !122
  %1111 = load i32, i32* %y0.addr, align 4, !tbaa !6
  %sub1977 = sub nsw i32 %1110, %1111
  %rect1978 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 8
  %width1979 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect1978, i32 0, i32 2
  %1112 = load i32, i32* %width1979, align 4, !tbaa !120
  %rect1980 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 8
  %height1981 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect1980, i32 0, i32 3
  %1113 = load i32, i32* %height1981, align 4, !tbaa !121
  %tile_color_devn1982 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 7
  %arrayidx1983 = getelementptr inbounds [2 x %struct.gx_device_color_s], [2 x %struct.gx_device_color_s]* %tile_color_devn1982, i32 0, i64 0
  %tile_color_devn1984 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 7
  %arrayidx1985 = getelementptr inbounds [2 x %struct.gx_device_color_s], [2 x %struct.gx_device_color_s]* %tile_color_devn1984, i32 0, i64 1
  %x1986 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %tile_phase, i32 0, i32 0
  %1114 = load i32, i32* %x1986, align 4, !tbaa !39
  %y1987 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %tile_phase, i32 0, i32 1
  %1115 = load i32, i32* %y1987, align 4, !tbaa !40
  %call1988 = call i32 %1106(%struct.gx_device_s* %1107, %struct.gx_strip_bitmap_s* %state_tile, i32 %sub1974, i32 %sub1977, i32 %1112, i32 %1113, %struct.gx_device_color_s* %arrayidx1983, %struct.gx_device_color_s* %arrayidx1985, i32 %1114, i32 %1115) #6
  store i32 %call1988, i32* %code, align 4, !tbaa !6
  br label %sw.epilog.2106

sw.bb.1989:                                       ; preds = %sw.bb.1674
  %1116 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %set_dev_colors, align 8, !tbaa !4
  %arrayidx1990 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %1116, i64 0
  store %struct.gx_device_color_s* %arrayidx1990, %struct.gx_device_color_s** %pdcolor, align 8, !tbaa !4
  br label %load_dcolor

sw.bb.1991:                                       ; preds = %sw.bb.1674
  %1117 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %set_dev_colors, align 8, !tbaa !4
  %arrayidx1992 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %1117, i64 1
  store %struct.gx_device_color_s* %arrayidx1992, %struct.gx_device_color_s** %pdcolor, align 8, !tbaa !4
  br label %load_dcolor

sw.bb.1993:                                       ; preds = %sw.bb.1674
  store %struct.gx_device_color_s* %dev_color, %struct.gx_device_color_s** %pdcolor, align 8, !tbaa !4
  br label %load_dcolor

load_dcolor:                                      ; preds = %sw.bb.1993, %sw.bb.1991, %sw.bb.1989
  %1118 = bitcast i32* %color_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1118) #1
  %1119 = bitcast i32* %left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1119) #1
  %1120 = bitcast i32* %offset1994 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1120) #1
  %1121 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1121) #1
  %1122 = bitcast %struct.gx_device_color_type_s** %pdct to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1122) #1
  call void @llvm.lifetime.start(i64 1, i8* %type_and_flag) #1
  %1123 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr1995 = getelementptr inbounds i8, i8* %1123, i32 1
  store i8* %incdec.ptr1995, i8** %cbp, align 8, !tbaa !4
  %1124 = load i8, i8* %1123, align 1, !tbaa !1
  store i8 %1124, i8* %type_and_flag, align 1, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %is_continuation) #1
  %1125 = load i8, i8* %type_and_flag, align 1, !tbaa !1
  %conv1996 = zext i8 %1125 to i32
  %and1997 = and i32 %conv1996, 128
  %conv1998 = trunc i32 %and1997 to i8
  store i8 %conv1998, i8* %is_continuation, align 1, !tbaa !1
  br label %do.body.1999

do.body.1999:                                     ; preds = %load_dcolor
  br label %do.cond.2000

do.cond.2000:                                     ; preds = %do.body.1999
  br label %do.end.2001

do.end.2001:                                      ; preds = %do.cond.2000
  %1126 = load i8, i8* %type_and_flag, align 1, !tbaa !1
  %conv2002 = zext i8 %1126 to i32
  %and2003 = and i32 %conv2002, 127
  %call2004 = call %struct.gx_device_color_type_s* @gx_get_dc_type_from_index(i32 %and2003) #6
  store %struct.gx_device_color_type_s* %call2004, %struct.gx_device_color_type_s** %pdct, align 8, !tbaa !4
  %1127 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %pdct, align 8, !tbaa !4
  %cmp2005 = icmp eq %struct.gx_device_color_type_s* %1127, null
  br i1 %cmp2005, label %if.then.2007, label %if.end.2008

if.then.2007:                                     ; preds = %do.end.2001
  store i32 -15, i32* %code, align 4, !tbaa !6
  store i32 21, i32* %cleanup.dest.slot
  br label %cleanup.2096

if.end.2008:                                      ; preds = %do.end.2001
  store i32 0, i32* %offset1994, align 4, !tbaa !6
  %1128 = load i8, i8* %is_continuation, align 1, !tbaa !1
  %tobool2009 = icmp ne i8 %1128, 0
  br i1 %tobool2009, label %if.then.2010, label %if.end.2023

if.then.2010:                                     ; preds = %if.end.2008
  br label %do.body.2011

do.body.2011:                                     ; preds = %if.then.2010
  %1129 = load i8*, i8** %cbp, align 8, !tbaa !4
  %1130 = load i8, i8* %1129, align 1, !tbaa !1
  %conv2012 = zext i8 %1130 to i32
  store i32 %conv2012, i32* %offset1994, align 4, !tbaa !6
  %cmp2013 = icmp uge i32 %conv2012, 128
  br i1 %cmp2013, label %if.then.2015, label %if.else.2018

if.then.2015:                                     ; preds = %do.body.2011
  %1131 = bitcast i32* %tmp_w2016 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1131) #1
  %1132 = load i8*, i8** %cbp, align 8, !tbaa !4
  %call2017 = call i8* @enc_u_get_uint(i32* %tmp_w2016, i8* %1132) #6
  store i8* %call2017, i8** %cbp, align 8, !tbaa !4
  %1133 = load i32, i32* %tmp_w2016, align 4, !tbaa !6
  store i32 %1133, i32* %offset1994, align 4, !tbaa !6
  %1134 = bitcast i32* %tmp_w2016 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1134) #1
  br label %if.end.2020

if.else.2018:                                     ; preds = %do.body.2011
  %1135 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr2019 = getelementptr inbounds i8, i8* %1135, i32 1
  store i8* %incdec.ptr2019, i8** %cbp, align 8, !tbaa !4
  br label %if.end.2020

if.end.2020:                                      ; preds = %if.else.2018, %if.then.2015
  br label %do.cond.2021

do.cond.2021:                                     ; preds = %if.end.2020
  br label %do.end.2022

do.end.2022:                                      ; preds = %do.cond.2021
  br label %if.end.2023

if.end.2023:                                      ; preds = %do.end.2022, %if.end.2008
  br label %do.body.2024

do.body.2024:                                     ; preds = %if.end.2023
  %1136 = load i8*, i8** %cbp, align 8, !tbaa !4
  %1137 = load i8, i8* %1136, align 1, !tbaa !1
  %conv2025 = zext i8 %1137 to i32
  store i32 %conv2025, i32* %color_size, align 4, !tbaa !6
  %cmp2026 = icmp uge i32 %conv2025, 128
  br i1 %cmp2026, label %if.then.2028, label %if.else.2031

if.then.2028:                                     ; preds = %do.body.2024
  %1138 = bitcast i32* %tmp_w2029 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1138) #1
  %1139 = load i8*, i8** %cbp, align 8, !tbaa !4
  %call2030 = call i8* @enc_u_get_uint(i32* %tmp_w2029, i8* %1139) #6
  store i8* %call2030, i8** %cbp, align 8, !tbaa !4
  %1140 = load i32, i32* %tmp_w2029, align 4, !tbaa !6
  store i32 %1140, i32* %color_size, align 4, !tbaa !6
  %1141 = bitcast i32* %tmp_w2029 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1141) #1
  br label %if.end.2033

if.else.2031:                                     ; preds = %do.body.2024
  %1142 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr2032 = getelementptr inbounds i8, i8* %1142, i32 1
  store i8* %incdec.ptr2032, i8** %cbp, align 8, !tbaa !4
  br label %if.end.2033

if.end.2033:                                      ; preds = %if.else.2031, %if.then.2028
  br label %do.cond.2034

do.cond.2034:                                     ; preds = %if.end.2033
  br label %do.end.2035

do.end.2035:                                      ; preds = %do.cond.2034
  %1143 = load i32, i32* %color_size, align 4, !tbaa !6
  store i32 %1143, i32* %left, align 4, !tbaa !6
  %1144 = load i32, i32* %left, align 4, !tbaa !6
  %tobool2036 = icmp ne i32 %1144, 0
  br i1 %tobool2036, label %if.end.2044, label %if.then.2037

if.then.2037:                                     ; preds = %do.end.2035
  %1145 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %pdct, align 8, !tbaa !4
  %read = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %1145, i32 0, i32 9
  %1146 = load i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_device_s*, i64, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_device_s*, i64, i8*, i32, %struct.gs_memory_s*)** %read, align 8, !tbaa !181
  %1147 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor, align 8, !tbaa !4
  %1148 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor, align 8, !tbaa !4
  %1149 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !4
  %1150 = load i32, i32* %offset1994, align 4, !tbaa !6
  %conv2038 = sext i32 %1150 to i64
  %1151 = load i8*, i8** %cbp, align 8, !tbaa !4
  %1152 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %call2039 = call i32 %1146(%struct.gx_device_color_s* %1147, %struct.gs_imager_state_s* %imager_state, %struct.gx_device_color_s* %1148, %struct.gx_device_s* %1149, i64 %conv2038, i8* %1151, i32 0, %struct.gs_memory_s* %1152) #6
  store i32 %call2039, i32* %code, align 4, !tbaa !6
  %1153 = load i32, i32* %code, align 4, !tbaa !6
  %cmp2040 = icmp slt i32 %1153, 0
  br i1 %cmp2040, label %if.then.2042, label %if.end.2043

if.then.2042:                                     ; preds = %if.then.2037
  store i32 21, i32* %cleanup.dest.slot
  br label %cleanup.2096

if.end.2043:                                      ; preds = %if.then.2037
  br label %if.end.2044

if.end.2044:                                      ; preds = %if.end.2043, %do.end.2035
  br label %while.cond.2045

while.cond.2045:                                  ; preds = %if.end.2085, %if.end.2044
  %1154 = load i32, i32* %left, align 4, !tbaa !6
  %tobool2046 = icmp ne i32 %1154, 0
  br i1 %tobool2046, label %while.body.2047, label %while.end

while.body.2047:                                  ; preds = %while.cond.2045
  %warn_limit2048 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %cbuf, i32 0, i32 3
  %1155 = load i8*, i8** %warn_limit2048, align 8, !tbaa !92
  %1156 = load i8*, i8** %cbp, align 8, !tbaa !4
  %sub.ptr.lhs.cast2049 = ptrtoint i8* %1155 to i64
  %sub.ptr.rhs.cast2050 = ptrtoint i8* %1156 to i64
  %sub.ptr.sub2051 = sub i64 %sub.ptr.lhs.cast2049, %sub.ptr.rhs.cast2050
  %1157 = load i32, i32* %left, align 4, !tbaa !6
  %conv2052 = sext i32 %1157 to i64
  %cmp2053 = icmp slt i64 %sub.ptr.sub2051, %conv2052
  br i1 %cmp2053, label %if.then.2055, label %if.end.2061

if.then.2055:                                     ; preds = %while.body.2047
  %call2056 = call i32 @top_up_cbuf(%struct.command_buf_s* %cbuf, i8** %cbp) #6
  store i32 %call2056, i32* %code, align 4, !tbaa !6
  %1158 = load i32, i32* %code, align 4, !tbaa !6
  %cmp2057 = icmp slt i32 %1158, 0
  br i1 %cmp2057, label %if.then.2059, label %if.end.2060

if.then.2059:                                     ; preds = %if.then.2055
  %1159 = load i32, i32* %code, align 4, !tbaa !6
  store i32 %1159, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.2096

if.end.2060:                                      ; preds = %if.then.2055
  br label %if.end.2061

if.end.2061:                                      ; preds = %if.end.2060, %while.body.2047
  %1160 = load i32, i32* %left, align 4, !tbaa !6
  %conv2062 = sext i32 %1160 to i64
  %end2063 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %cbuf, i32 0, i32 4
  %1161 = load i8*, i8** %end2063, align 8, !tbaa !16
  %1162 = load i8*, i8** %cbp, align 8, !tbaa !4
  %sub.ptr.lhs.cast2064 = ptrtoint i8* %1161 to i64
  %sub.ptr.rhs.cast2065 = ptrtoint i8* %1162 to i64
  %sub.ptr.sub2066 = sub i64 %sub.ptr.lhs.cast2064, %sub.ptr.rhs.cast2065
  %cmp2067 = icmp slt i64 %conv2062, %sub.ptr.sub2066
  br i1 %cmp2067, label %cond.true.2069, label %cond.false.2071

cond.true.2069:                                   ; preds = %if.end.2061
  %1163 = load i32, i32* %left, align 4, !tbaa !6
  %conv2070 = sext i32 %1163 to i64
  br label %cond.end.2076

cond.false.2071:                                  ; preds = %if.end.2061
  %end2072 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %cbuf, i32 0, i32 4
  %1164 = load i8*, i8** %end2072, align 8, !tbaa !16
  %1165 = load i8*, i8** %cbp, align 8, !tbaa !4
  %sub.ptr.lhs.cast2073 = ptrtoint i8* %1164 to i64
  %sub.ptr.rhs.cast2074 = ptrtoint i8* %1165 to i64
  %sub.ptr.sub2075 = sub i64 %sub.ptr.lhs.cast2073, %sub.ptr.rhs.cast2074
  br label %cond.end.2076

cond.end.2076:                                    ; preds = %cond.false.2071, %cond.true.2069
  %cond2077 = phi i64 [ %conv2070, %cond.true.2069 ], [ %sub.ptr.sub2075, %cond.false.2071 ]
  %conv2078 = trunc i64 %cond2077 to i32
  store i32 %conv2078, i32* %l, align 4, !tbaa !6
  %1166 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %pdct, align 8, !tbaa !4
  %read2079 = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %1166, i32 0, i32 9
  %1167 = load i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_device_s*, i64, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_device_s*, i64, i8*, i32, %struct.gs_memory_s*)** %read2079, align 8, !tbaa !181
  %1168 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor, align 8, !tbaa !4
  %1169 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor, align 8, !tbaa !4
  %1170 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !4
  %1171 = load i32, i32* %offset1994, align 4, !tbaa !6
  %conv2080 = sext i32 %1171 to i64
  %1172 = load i8*, i8** %cbp, align 8, !tbaa !4
  %1173 = load i32, i32* %l, align 4, !tbaa !6
  %1174 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %call2081 = call i32 %1167(%struct.gx_device_color_s* %1168, %struct.gs_imager_state_s* %imager_state, %struct.gx_device_color_s* %1169, %struct.gx_device_s* %1170, i64 %conv2080, i8* %1172, i32 %1173, %struct.gs_memory_s* %1174) #6
  store i32 %call2081, i32* %code, align 4, !tbaa !6
  %1175 = load i32, i32* %code, align 4, !tbaa !6
  %cmp2082 = icmp slt i32 %1175, 0
  br i1 %cmp2082, label %if.then.2084, label %if.end.2085

if.then.2084:                                     ; preds = %cond.end.2076
  store i32 21, i32* %cleanup.dest.slot
  br label %cleanup.2096

if.end.2085:                                      ; preds = %cond.end.2076
  %1176 = load i32, i32* %code, align 4, !tbaa !6
  store i32 %1176, i32* %l, align 4, !tbaa !6
  %1177 = load i32, i32* %l, align 4, !tbaa !6
  %1178 = load i8*, i8** %cbp, align 8, !tbaa !4
  %idx.ext2086 = sext i32 %1177 to i64
  %add.ptr2087 = getelementptr inbounds i8, i8* %1178, i64 %idx.ext2086
  store i8* %add.ptr2087, i8** %cbp, align 8, !tbaa !4
  %1179 = load i32, i32* %l, align 4, !tbaa !6
  %1180 = load i32, i32* %offset1994, align 4, !tbaa !6
  %add2088 = add nsw i32 %1180, %1179
  store i32 %add2088, i32* %offset1994, align 4, !tbaa !6
  %1181 = load i32, i32* %l, align 4, !tbaa !6
  %1182 = load i32, i32* %left, align 4, !tbaa !6
  %sub2089 = sub nsw i32 %1182, %1181
  store i32 %sub2089, i32* %left, align 4, !tbaa !6
  br label %while.cond.2045

while.end:                                        ; preds = %while.cond.2045
  %1183 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor, align 8, !tbaa !4
  %type2090 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %1183, i32 0, i32 0
  %1184 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type2090, align 8, !tbaa !88
  %load = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %1184, i32 0, i32 4
  %1185 = load i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %load, align 8, !tbaa !183
  %1186 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor, align 8, !tbaa !4
  %1187 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !4
  %call2091 = call i32 %1185(%struct.gx_device_color_s* %1186, %struct.gs_imager_state_s* %imager_state, %struct.gx_device_s* %1187, i32 0) #6
  store i32 %call2091, i32* %code, align 4, !tbaa !6
  %1188 = load i32, i32* %code, align 4, !tbaa !6
  %cmp2092 = icmp slt i32 %1188, 0
  br i1 %cmp2092, label %if.then.2094, label %if.end.2095

if.then.2094:                                     ; preds = %while.end
  store i32 21, i32* %cleanup.dest.slot
  br label %cleanup.2096

if.end.2095:                                      ; preds = %while.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.2096

cleanup.2096:                                     ; preds = %if.then.2094, %if.then.2084, %if.then.2042, %if.then.2007, %if.end.2095, %if.then.2059
  call void @llvm.lifetime.end(i64 1, i8* %is_continuation) #1
  call void @llvm.lifetime.end(i64 1, i8* %type_and_flag) #1
  %1189 = bitcast %struct.gx_device_color_type_s** %pdct to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1189) #1
  %1190 = bitcast i32* %l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1190) #1
  %1191 = bitcast i32* %offset1994 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1191) #1
  %1192 = bitcast i32* %left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1192) #1
  %1193 = bitcast i32* %color_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1193) #1
  %cleanup.dest.2103 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.2103, label %cleanup.3226 [
    i32 0, label %cleanup.cont.2104
  ]

cleanup.cont.2104:                                ; preds = %cleanup.2096
  br label %sw.epilog.2106

sw.default.2105:                                  ; preds = %sw.bb.1674
  br label %bad_op

sw.epilog.2106:                                   ; preds = %cleanup.cont.2104, %do.end.1970, %do.end.1963, %do.end.1958, %if.end.1954, %cleanup.cont.1943, %if.end.1918, %if.end.1692, %if.then.1683
  br label %sw.epilog.2108

sw.default.2107:                                  ; preds = %sw.bb.1049
  br label %bad_op

sw.epilog.2108:                                   ; preds = %sw.epilog.2106, %if.end.1362, %if.end.1198, %cond.end.1183, %if.end.1128, %do.end.1119, %do.end.1115, %sw.bb.1077
  store i32 22, i32* %cleanup.dest.slot
  br label %cleanup.3226

sw.bb.2109:                                       ; preds = %if.end.129
  %1194 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1194) #1
  br label %rgapto

rgapto:                                           ; preds = %cleanup.2860, %sw.bb.2109
  %1195 = load i32, i32* %in_path, align 4, !tbaa !6
  %tobool2110 = icmp ne i32 %1195, 0
  br i1 %tobool2110, label %if.end.2123, label %if.then.2111

if.then.2111:                                     ; preds = %rgapto
  %rect2112 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 8
  %x2113 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect2112, i32 0, i32 0
  %1196 = load i32, i32* %x2113, align 4, !tbaa !119
  %shl2114 = shl i32 %1196, 8
  %x2115 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %ppos, i32 0, i32 0
  store i32 %shl2114, i32* %x2115, align 4, !tbaa !25
  %rect2116 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 8
  %y2117 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect2116, i32 0, i32 1
  %1197 = load i32, i32* %y2117, align 4, !tbaa !122
  %shl2118 = shl i32 %1197, 8
  %y2119 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %ppos, i32 0, i32 1
  store i32 %shl2118, i32* %y2119, align 4, !tbaa !24
  br label %do.body.2120

do.body.2120:                                     ; preds = %if.then.2111
  br label %do.cond.2121

do.cond.2121:                                     ; preds = %do.body.2120
  br label %do.end.2122

do.end.2122:                                      ; preds = %do.cond.2121
  store i32 0, i32* %notes, align 4, !tbaa !1
  store i32 1, i32* %in_path, align 4, !tbaa !6
  br label %if.end.2123

if.end.2123:                                      ; preds = %do.end.2122, %rgapto
  store i32 0, i32* %i, align 4, !tbaa !6
  br label %for.cond.2124

for.cond.2124:                                    ; preds = %for.inc.2216, %if.end.2123
  %1198 = load i32, i32* %i, align 4, !tbaa !6
  %1199 = load i32, i32* %op, align 4, !tbaa !6
  %and2125 = and i32 %1199, 15
  %idxprom2126 = sext i32 %and2125 to i64
  %arrayidx2127 = getelementptr inbounds [16 x i8], [16 x i8]* @clist_playback_band.op_num_operands, i32 0, i64 %idxprom2126
  %1200 = load i8, i8* %arrayidx2127, align 1, !tbaa !1
  %conv2128 = zext i8 %1200 to i32
  %cmp2129 = icmp slt i32 %1198, %conv2128
  br i1 %cmp2129, label %for.body.2131, label %for.end.2218

for.body.2131:                                    ; preds = %for.cond.2124
  %1201 = bitcast i32* %v to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1201) #1
  %1202 = bitcast i32* %b to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1202) #1
  %1203 = load i8*, i8** %cbp, align 8, !tbaa !4
  %1204 = load i8, i8* %1203, align 1, !tbaa !1
  %conv2132 = zext i8 %1204 to i32
  store i32 %conv2132, i32* %b, align 4, !tbaa !6
  %1205 = load i32, i32* %b, align 4, !tbaa !6
  %shr2133 = ashr i32 %1205, 5
  switch i32 %shr2133, label %sw.default.2180 [
    i32 0, label %sw.bb.2134
    i32 1, label %sw.bb.2134
    i32 2, label %sw.bb.2156
    i32 3, label %sw.bb.2156
    i32 4, label %sw.bb.2159
    i32 5, label %sw.bb.2159
    i32 6, label %sw.bb.2166
  ]

sw.bb.2134:                                       ; preds = %for.body.2131, %for.body.2131
  %1206 = load i32, i32* %b, align 4, !tbaa !6
  %xor = xor i32 %1206, 32
  %sub2135 = sub nsw i32 %xor, 32
  %shl2136 = shl i32 %sub2135, 13
  %1207 = load i8*, i8** %cbp, align 8, !tbaa !4
  %arrayidx2137 = getelementptr inbounds i8, i8* %1207, i64 1
  %1208 = load i8, i8* %arrayidx2137, align 1, !tbaa !1
  %conv2138 = zext i8 %1208 to i32
  %shl2139 = shl i32 %conv2138, 5
  %add2140 = add nsw i32 %shl2136, %shl2139
  %1209 = load i8*, i8** %cbp, align 8, !tbaa !4
  %arrayidx2141 = getelementptr inbounds i8, i8* %1209, i64 2
  %1210 = load i8, i8* %arrayidx2141, align 1, !tbaa !1
  %conv2142 = zext i8 %1210 to i32
  %shr2143 = ashr i32 %conv2142, 3
  %add2144 = add nsw i32 %add2140, %shr2143
  %1211 = load i32, i32* %i, align 4, !tbaa !6
  %inc2145 = add nsw i32 %1211, 1
  store i32 %inc2145, i32* %i, align 4, !tbaa !6
  %idxprom2146 = sext i32 %1211 to i64
  %arrayidx2147 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 %idxprom2146
  store i32 %add2144, i32* %arrayidx2147, align 4, !tbaa !6
  br label %do.body.2148

do.body.2148:                                     ; preds = %sw.bb.2134
  br label %do.cond.2149

do.cond.2149:                                     ; preds = %do.body.2148
  br label %do.end.2150

do.end.2150:                                      ; preds = %do.cond.2149
  %1212 = load i8*, i8** %cbp, align 8, !tbaa !4
  %add.ptr2151 = getelementptr inbounds i8, i8* %1212, i64 2
  store i8* %add.ptr2151, i8** %cbp, align 8, !tbaa !4
  %1213 = load i8*, i8** %cbp, align 8, !tbaa !4
  %1214 = load i8, i8* %1213, align 1, !tbaa !1
  %conv2152 = zext i8 %1214 to i32
  %and2153 = and i32 %conv2152, 7
  %xor2154 = xor i32 %and2153, 4
  %sub2155 = sub nsw i32 %xor2154, 4
  store i32 %sub2155, i32* %v, align 4, !tbaa !6
  br label %sw.epilog.2197

sw.bb.2156:                                       ; preds = %for.body.2131, %for.body.2131
  %1215 = load i32, i32* %b, align 4, !tbaa !6
  %xor2157 = xor i32 %1215, 96
  %sub2158 = sub nsw i32 %xor2157, 32
  store i32 %sub2158, i32* %v, align 4, !tbaa !6
  br label %sw.epilog.2197

sw.bb.2159:                                       ; preds = %for.body.2131, %for.body.2131
  %1216 = load i32, i32* %b, align 4, !tbaa !6
  %xor2160 = xor i32 %1216, 160
  %sub2161 = sub nsw i32 %xor2160, 32
  %shl2162 = shl i32 %sub2161, 8
  %1217 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr2163 = getelementptr inbounds i8, i8* %1217, i32 1
  store i8* %incdec.ptr2163, i8** %cbp, align 8, !tbaa !4
  %1218 = load i8, i8* %incdec.ptr2163, align 1, !tbaa !1
  %conv2164 = zext i8 %1218 to i32
  %add2165 = add nsw i32 %shl2162, %conv2164
  store i32 %add2165, i32* %v, align 4, !tbaa !6
  br label %sw.epilog.2197

sw.bb.2166:                                       ; preds = %for.body.2131
  %1219 = load i32, i32* %b, align 4, !tbaa !6
  %xor2167 = xor i32 %1219, 208
  %sub2168 = sub nsw i32 %xor2167, 16
  store i32 %sub2168, i32* %v, align 4, !tbaa !6
  %1220 = load i32, i32* %v, align 4, !tbaa !6
  %shl2169 = shl i32 %1220, 8
  %1221 = load i8*, i8** %cbp, align 8, !tbaa !4
  %arrayidx2170 = getelementptr inbounds i8, i8* %1221, i64 1
  %1222 = load i8, i8* %arrayidx2170, align 1, !tbaa !1
  %conv2171 = zext i8 %1222 to i32
  %add2172 = add nsw i32 %shl2169, %conv2171
  %shl2173 = shl i32 %add2172, 6
  %1223 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom2174 = sext i32 %1223 to i64
  %arrayidx2175 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 %idxprom2174
  store i32 %shl2173, i32* %arrayidx2175, align 4, !tbaa !6
  br label %do.body.2176

do.body.2176:                                     ; preds = %sw.bb.2166
  br label %do.cond.2177

do.cond.2177:                                     ; preds = %do.body.2176
  br label %do.end.2178

do.end.2178:                                      ; preds = %do.cond.2177
  %1224 = load i8*, i8** %cbp, align 8, !tbaa !4
  %add.ptr2179 = getelementptr inbounds i8, i8* %1224, i64 2
  store i8* %add.ptr2179, i8** %cbp, align 8, !tbaa !4
  store i32 196, i32* %cleanup.dest.slot
  br label %cleanup.2212

sw.default.2180:                                  ; preds = %for.body.2131
  %1225 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr2181 = getelementptr inbounds i8, i8* %1225, i32 1
  store i8* %incdec.ptr2181, i8** %cbp, align 8, !tbaa !4
  %1226 = load i8, i8* %incdec.ptr2181, align 1, !tbaa !1
  %conv2182 = zext i8 %1226 to i32
  %xor2183 = xor i32 %conv2182, 128
  %sub2184 = sub nsw i32 %xor2183, 128
  store i32 %sub2184, i32* %v, align 4, !tbaa !6
  store i32 0, i32* %b, align 4, !tbaa !6
  br label %for.cond.2185

for.cond.2185:                                    ; preds = %for.inc.2194, %sw.default.2180
  %1227 = load i32, i32* %b, align 4, !tbaa !6
  %conv2186 = sext i32 %1227 to i64
  %cmp2187 = icmp ult i64 %conv2186, 1
  br i1 %cmp2187, label %for.body.2189, label %for.end.2196

for.body.2189:                                    ; preds = %for.cond.2185
  %1228 = load i32, i32* %v, align 4, !tbaa !6
  %shl2190 = shl i32 %1228, 8
  %1229 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr2191 = getelementptr inbounds i8, i8* %1229, i32 1
  store i8* %incdec.ptr2191, i8** %cbp, align 8, !tbaa !4
  %1230 = load i8, i8* %incdec.ptr2191, align 1, !tbaa !1
  %conv2192 = zext i8 %1230 to i32
  %add2193 = add nsw i32 %shl2190, %conv2192
  store i32 %add2193, i32* %v, align 4, !tbaa !6
  br label %for.inc.2194

for.inc.2194:                                     ; preds = %for.body.2189
  %1231 = load i32, i32* %b, align 4, !tbaa !6
  %inc2195 = add nsw i32 %1231, 1
  store i32 %inc2195, i32* %b, align 4, !tbaa !6
  br label %for.cond.2185

for.end.2196:                                     ; preds = %for.cond.2185
  br label %sw.epilog.2197

sw.epilog.2197:                                   ; preds = %for.end.2196, %sw.bb.2159, %sw.bb.2156, %do.end.2150
  %1232 = load i8*, i8** %cbp, align 8, !tbaa !4
  %add.ptr2198 = getelementptr inbounds i8, i8* %1232, i64 3
  store i8* %add.ptr2198, i8** %cbp, align 8, !tbaa !4
  %1233 = load i32, i32* %v, align 4, !tbaa !6
  %shl2199 = shl i32 %1233, 16
  %1234 = load i8*, i8** %cbp, align 8, !tbaa !4
  %arrayidx2200 = getelementptr inbounds i8, i8* %1234, i64 -2
  %1235 = load i8, i8* %arrayidx2200, align 1, !tbaa !1
  %conv2201 = zext i8 %1235 to i32
  %shl2202 = shl i32 %conv2201, 8
  %add2203 = add i32 %shl2199, %shl2202
  %1236 = load i8*, i8** %cbp, align 8, !tbaa !4
  %arrayidx2204 = getelementptr inbounds i8, i8* %1236, i64 -1
  %1237 = load i8, i8* %arrayidx2204, align 1, !tbaa !1
  %conv2205 = zext i8 %1237 to i32
  %add2206 = add i32 %add2203, %conv2205
  %1238 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom2207 = sext i32 %1238 to i64
  %arrayidx2208 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 %idxprom2207
  store i32 %add2206, i32* %arrayidx2208, align 4, !tbaa !6
  br label %do.body.2209

do.body.2209:                                     ; preds = %sw.epilog.2197
  br label %do.cond.2210

do.cond.2210:                                     ; preds = %do.body.2209
  br label %do.end.2211

do.end.2211:                                      ; preds = %do.cond.2210
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.2212

cleanup.2212:                                     ; preds = %do.end.2211, %do.end.2178
  %1239 = bitcast i32* %b to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1239) #1
  %1240 = bitcast i32* %v to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1240) #1
  %cleanup.dest.2214 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.2214, label %unreachable [
    i32 0, label %cleanup.cont.2215
    i32 196, label %for.inc.2216
  ]

cleanup.cont.2215:                                ; preds = %cleanup.2212
  br label %for.inc.2216

for.inc.2216:                                     ; preds = %cleanup.cont.2215, %cleanup.2212
  %1241 = load i32, i32* %i, align 4, !tbaa !6
  %inc2217 = add nsw i32 %1241, 1
  store i32 %inc2217, i32* %i, align 4, !tbaa !6
  br label %for.cond.2124

for.end.2218:                                     ; preds = %for.cond.2124
  br label %do.body.2219

do.body.2219:                                     ; preds = %for.end.2218
  br label %do.cond.2220

do.cond.2220:                                     ; preds = %do.body.2219
  br label %do.end.2221

do.end.2221:                                      ; preds = %do.cond.2220
  %1242 = load i32, i32* %op, align 4, !tbaa !6
  %arraydecay2222 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i32 0
  %1243 = load i32, i32* %x0.addr, align 4, !tbaa !6
  %1244 = load i32, i32* %y0.addr, align 4, !tbaa !6
  %1245 = load i32, i32* %notes, align 4, !tbaa !1
  %call2223 = call i32 @clist_decode_segment(%struct.gx_path_s* %path, i32 %1242, i32* %arraydecay2222, %struct.gs_fixed_point_s* %ppos, i32 %1243, i32 %1244, i32 %1245) #6
  store i32 %call2223, i32* %code, align 4, !tbaa !6
  %1246 = load i32, i32* %code, align 4, !tbaa !6
  %cmp2224 = icmp slt i32 %1246, 0
  br i1 %cmp2224, label %if.then.2226, label %if.end.2227

if.then.2226:                                     ; preds = %do.end.2221
  store i32 21, i32* %cleanup.dest.slot
  br label %cleanup.2228

if.end.2227:                                      ; preds = %do.end.2221
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.2228

cleanup.2228:                                     ; preds = %if.then.2226, %if.end.2227
  %1247 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1247) #1
  %cleanup.dest.2229 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.2229, label %cleanup.3226 [
    i32 0, label %cleanup.cont.2230
  ]

cleanup.cont.2230:                                ; preds = %cleanup.2228
  store i32 22, i32* %cleanup.dest.slot
  br label %cleanup.3226

sw.bb.2231:                                       ; preds = %if.end.129
  %1248 = bitcast %struct.gx_path_s* %fpath to i8*
  call void @llvm.lifetime.start(i64 128, i8* %1248) #1
  %1249 = bitcast %struct.gx_path_s** %ppath to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1249) #1
  %1250 = load i32, i32* %op, align 4, !tbaa !6
  %cmp2232 = icmp eq i32 %1250, 241
  br i1 %cmp2232, label %if.then.2234, label %if.end.2235

if.then.2234:                                     ; preds = %sw.bb.2231
  store i32 191, i32* %cleanup.dest.slot
  br label %cleanup.2860

if.end.2235:                                      ; preds = %sw.bb.2231
  store %struct.gx_path_s* %path, %struct.gx_path_s** %ppath, align 8, !tbaa !4
  br label %do.body.2236

do.body.2236:                                     ; preds = %if.end.2235
  br label %do.cond.2237

do.cond.2237:                                     ; preds = %do.body.2236
  br label %do.end.2238

do.end.2238:                                      ; preds = %do.cond.2237
  %1251 = load i32, i32* %in_clip, align 4, !tbaa !6
  %tobool2239 = icmp ne i32 %1251, 0
  br i1 %tobool2239, label %if.then.2240, label %if.end.2251

if.then.2240:                                     ; preds = %do.end.2238
  %1252 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %call2241 = call i32 @gx_path_init_local_shared(%struct.gx_path_s* %fpath, %struct.gx_path_s* null, %struct.gs_memory_s* %1252) #6
  %flatness = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state, i32 0, i32 27
  %1253 = load float, float* %flatness, align 4, !tbaa !184
  %mul2242 = fmul float %1253, 2.560000e+02
  %conv2243 = fptosi float %mul2242 to i32
  %accurate_curves = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state, i32 0, i32 30
  %1254 = load i32, i32* %accurate_curves, align 4, !tbaa !185
  %tobool2244 = icmp ne i32 %1254, 0
  %cond2245 = select i1 %tobool2244, i32 2, i32 0
  %call2246 = call i32 @gx_path_copy_reducing(%struct.gx_path_s* %path, %struct.gx_path_s* %fpath, i32 %conv2243, %struct.gs_imager_state_s* null, i32 %cond2245) #6
  store i32 %call2246, i32* %code, align 4, !tbaa !6
  %1255 = load i32, i32* %code, align 4, !tbaa !6
  %cmp2247 = icmp slt i32 %1255, 0
  br i1 %cmp2247, label %if.then.2249, label %if.end.2250

if.then.2249:                                     ; preds = %if.then.2240
  store i32 21, i32* %cleanup.dest.slot
  br label %cleanup.2860

if.end.2250:                                      ; preds = %if.then.2240
  store %struct.gx_path_s* %fpath, %struct.gx_path_s** %ppath, align 8, !tbaa !4
  br label %if.end.2251

if.end.2251:                                      ; preds = %if.end.2250, %do.end.2238
  %1256 = load i32, i32* %op, align 4, !tbaa !6
  switch i32 %1256, label %sw.default.2854 [
    i32 240, label %sw.bb.2252
    i32 243, label %sw.bb.2253
    i32 246, label %sw.bb.2260
    i32 249, label %sw.bb.2265
    i32 252, label %sw.bb.2268
  ]

sw.bb.2252:                                       ; preds = %if.end.2251
  %rule = getelementptr inbounds %struct.gx_fill_params_s, %struct.gx_fill_params_s* %fill_params, i32 0, i32 0
  store i32 -1, i32* %rule, align 4, !tbaa !186
  br label %fill

sw.bb.2253:                                       ; preds = %if.end.2251
  %rule2254 = getelementptr inbounds %struct.gx_fill_params_s, %struct.gx_fill_params_s* %fill_params, i32 0, i32 0
  store i32 1, i32* %rule2254, align 4, !tbaa !186
  br label %fill

fill:                                             ; preds = %sw.bb.2253, %sw.bb.2252
  %adjust = getelementptr inbounds %struct.gx_fill_params_s, %struct.gx_fill_params_s* %fill_params, i32 0, i32 1
  %fill_adjust2255 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state, i32 0, i32 28
  %1257 = bitcast %struct.gs_fixed_point_s* %adjust to i8*
  %1258 = bitcast %struct.gs_fixed_point_s* %fill_adjust2255 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1257, i8* %1258, i64 8, i32 4, i1 false), !tbaa.struct !188
  %flatness2256 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state, i32 0, i32 27
  %1259 = load float, float* %flatness2256, align 4, !tbaa !184
  %flatness2257 = getelementptr inbounds %struct.gx_fill_params_s, %struct.gx_fill_params_s* %fill_params, i32 0, i32 2
  store float %1259, float* %flatness2257, align 4, !tbaa !189
  %1260 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !4
  %procs2258 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1260, i32 0, i32 42
  %fill_path = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs2258, i32 0, i32 24
  %1261 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)** %fill_path, align 8, !tbaa !190
  %1262 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !4
  %1263 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8, !tbaa !4
  %1264 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath, align 8, !tbaa !4
  %call2259 = call i32 %1261(%struct.gx_device_s* %1262, %struct.gs_imager_state_s* %imager_state, %struct.gx_path_s* %1263, %struct.gx_fill_params_s* %fill_params, %struct.gx_device_color_s* %dev_color, %struct.gx_clip_path_s* %1264) #6
  store i32 %call2259, i32* %code, align 4, !tbaa !6
  br label %sw.epilog.2855

sw.bb.2260:                                       ; preds = %if.end.2251
  %flatness2261 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state, i32 0, i32 27
  %1265 = load float, float* %flatness2261, align 4, !tbaa !184
  %flatness2262 = getelementptr inbounds %struct.gx_stroke_params_s, %struct.gx_stroke_params_s* %stroke_params, i32 0, i32 0
  store float %1265, float* %flatness2262, align 4, !tbaa !191
  %traditional = getelementptr inbounds %struct.gx_stroke_params_s, %struct.gx_stroke_params_s* %stroke_params, i32 0, i32 1
  store i32 0, i32* %traditional, align 4, !tbaa !193
  %1266 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !4
  %procs2263 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1266, i32 0, i32 42
  %stroke_path = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs2263, i32 0, i32 25
  %1267 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)** %stroke_path, align 8, !tbaa !194
  %1268 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !4
  %1269 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8, !tbaa !4
  %1270 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath, align 8, !tbaa !4
  %call2264 = call i32 %1267(%struct.gx_device_s* %1268, %struct.gs_imager_state_s* %imager_state, %struct.gx_path_s* %1269, %struct.gx_stroke_params_s* %stroke_params, %struct.gx_device_color_s* %dev_color, %struct.gx_clip_path_s* %1270) #6
  store i32 %call2264, i32* %code, align 4, !tbaa !6
  br label %sw.epilog.2855

sw.bb.2265:                                       ; preds = %if.end.2251
  %1271 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !4
  %1272 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8, !tbaa !4
  %log_op2266 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state, i32 0, i32 10
  %1273 = load i32, i32* %log_op2266, align 4, !tbaa !116
  %call2267 = call i32 @clist_do_polyfill(%struct.gx_device_s* %1271, %struct.gx_path_s* %1272, %struct.gx_device_color_s* %dev_color, i32 %1273) #6
  store i32 %call2267, i32* %code, align 4, !tbaa !6
  br label %sw.epilog.2855

sw.bb.2268:                                       ; preds = %if.end.2251
  %1274 = bitcast %struct.gs_fixed_edge_s* %left2269 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %1274) #1
  %1275 = bitcast %struct.gs_fixed_edge_s* %right to i8*
  call void @llvm.lifetime.start(i64 16, i8* %1275) #1
  %1276 = bitcast i32* %ybot to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1276) #1
  %1277 = bitcast i32* %ytop to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1277) #1
  %1278 = bitcast i32* %options to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1278) #1
  %1279 = bitcast i32* %swap_axes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1279) #1
  %1280 = bitcast i32* %wh to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1280) #1
  %1281 = bitcast i32* %x0f to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1281) #1
  %1282 = bitcast i32* %y0f to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1282) #1
  %1283 = bitcast %struct.gx_device_s** %ttdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1283) #1
  %1284 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !4
  store %struct.gx_device_s* %1284, %struct.gx_device_s** %ttdev, align 8, !tbaa !4
  %1285 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath, align 8, !tbaa !4
  %cmp2270 = icmp ne %struct.gx_clip_path_s* %1285, null
  br i1 %cmp2270, label %land.lhs.true.2272, label %if.end.2275

land.lhs.true.2272:                               ; preds = %sw.bb.2268
  %1286 = load i32, i32* %clipper_dev_open, align 4, !tbaa !6
  %tobool2273 = icmp ne i32 %1286, 0
  br i1 %tobool2273, label %if.end.2275, label %if.then.2274

if.then.2274:                                     ; preds = %land.lhs.true.2272
  %1287 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath, align 8, !tbaa !4
  %1288 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !4
  call void @gx_make_clip_device_on_stack(%struct.gx_device_clip_s* %clipper_dev, %struct.gx_clip_path_s* %1287, %struct.gx_device_s* %1288) #6
  store i32 1, i32* %clipper_dev_open, align 4, !tbaa !6
  br label %if.end.2275

if.end.2275:                                      ; preds = %if.then.2274, %land.lhs.true.2272, %sw.bb.2268
  %1289 = load i32, i32* %clipper_dev_open, align 4, !tbaa !6
  %tobool2276 = icmp ne i32 %1289, 0
  br i1 %tobool2276, label %if.then.2277, label %if.end.2278

if.then.2277:                                     ; preds = %if.end.2275
  %1290 = bitcast %struct.gx_device_clip_s* %clipper_dev to %struct.gx_device_s*
  store %struct.gx_device_s* %1290, %struct.gx_device_s** %ttdev, align 8, !tbaa !4
  br label %if.end.2278

if.end.2278:                                      ; preds = %if.then.2277, %if.end.2275
  %1291 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !4
  %color_info2279 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1291, i32 0, i32 11
  %num_components2280 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info2279, i32 0, i32 1
  %1292 = load i32, i32* %num_components2280, align 4, !tbaa !123
  %1293 = load %struct.gx_device_s*, %struct.gx_device_s** %ttdev, align 8, !tbaa !4
  %color_info2281 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1293, i32 0, i32 11
  %num_components2282 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info2281, i32 0, i32 1
  %1294 = load i32, i32* %num_components2282, align 4, !tbaa !123
  %cmp2283 = icmp ne i32 %1292, %1294
  br i1 %cmp2283, label %if.then.2285, label %if.end.2302

if.then.2285:                                     ; preds = %if.end.2278
  %1295 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !4
  %color_info2286 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1295, i32 0, i32 11
  %num_components2287 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info2286, i32 0, i32 1
  %1296 = load i32, i32* %num_components2287, align 4, !tbaa !123
  %1297 = load %struct.gx_device_s*, %struct.gx_device_s** %ttdev, align 8, !tbaa !4
  %color_info2288 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1297, i32 0, i32 11
  %num_components2289 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info2288, i32 0, i32 1
  store i32 %1296, i32* %num_components2289, align 4, !tbaa !123
  %1298 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !4
  %color_info2290 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1298, i32 0, i32 11
  %depth2291 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info2290, i32 0, i32 3
  %1299 = load i16, i16* %depth2291, align 2, !tbaa !117
  %1300 = load %struct.gx_device_s*, %struct.gx_device_s** %ttdev, align 8, !tbaa !4
  %color_info2292 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1300, i32 0, i32 11
  %depth2293 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info2292, i32 0, i32 3
  store i16 %1299, i16* %depth2293, align 2, !tbaa !117
  %1301 = load %struct.gx_device_s*, %struct.gx_device_s** %ttdev, align 8, !tbaa !4
  %color_info2294 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1301, i32 0, i32 11
  %comp_bits = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info2294, i32 0, i32 12
  %1302 = bitcast [64 x i8]* %comp_bits to i8*
  %1303 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !4
  %color_info2295 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1303, i32 0, i32 11
  %comp_bits2296 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info2295, i32 0, i32 12
  %1304 = bitcast [64 x i8]* %comp_bits2296 to i8*
  %call2297 = call i8* @memcpy(i8* %1302, i8* %1304, i64 64) #7
  %1305 = load %struct.gx_device_s*, %struct.gx_device_s** %ttdev, align 8, !tbaa !4
  %color_info2298 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1305, i32 0, i32 11
  %comp_shift = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info2298, i32 0, i32 11
  %1306 = bitcast [64 x i8]* %comp_shift to i8*
  %1307 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !4
  %color_info2299 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1307, i32 0, i32 11
  %comp_shift2300 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info2299, i32 0, i32 11
  %1308 = bitcast [64 x i8]* %comp_shift2300 to i8*
  %call2301 = call i8* @memcpy(i8* %1306, i8* %1308, i64 64) #7
  br label %if.end.2302

if.end.2302:                                      ; preds = %if.then.2285, %if.end.2278
  br label %do.body.2303

do.body.2303:                                     ; preds = %if.end.2302
  %1309 = load i8*, i8** %cbp, align 8, !tbaa !4
  %1310 = load i8, i8* %1309, align 1, !tbaa !1
  %conv2304 = zext i8 %1310 to i32
  %cmp2305 = icmp slt i32 %conv2304, 128
  br i1 %cmp2305, label %if.then.2307, label %if.else.2311

if.then.2307:                                     ; preds = %do.body.2303
  %1311 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr2308 = getelementptr inbounds i8, i8* %1311, i32 1
  store i8* %incdec.ptr2308, i8** %cbp, align 8, !tbaa !4
  %1312 = load i8, i8* %1311, align 1, !tbaa !1
  %conv2309 = zext i8 %1312 to i32
  %start = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %left2269, i32 0, i32 0
  %x2310 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start, i32 0, i32 0
  store i32 %conv2309, i32* %x2310, align 4, !tbaa !195
  br label %if.end.2317

if.else.2311:                                     ; preds = %do.body.2303
  %1313 = bitcast i8** %_cbp2312 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1313) #1
  %1314 = load i8*, i8** %cbp, align 8, !tbaa !4
  %call2313 = call i64 @cmd_get_w(i8* %1314, i8** %_cbp2312) #6
  %conv2314 = trunc i64 %call2313 to i32
  %start2315 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %left2269, i32 0, i32 0
  %x2316 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start2315, i32 0, i32 0
  store i32 %conv2314, i32* %x2316, align 4, !tbaa !195
  %1315 = load i8*, i8** %_cbp2312, align 8, !tbaa !4
  store i8* %1315, i8** %cbp, align 8, !tbaa !4
  %1316 = bitcast i8** %_cbp2312 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1316) #1
  br label %if.end.2317

if.end.2317:                                      ; preds = %if.else.2311, %if.then.2307
  br label %do.cond.2318

do.cond.2318:                                     ; preds = %if.end.2317
  br label %do.end.2319

do.end.2319:                                      ; preds = %do.cond.2318
  br label %do.body.2320

do.body.2320:                                     ; preds = %do.end.2319
  %1317 = load i8*, i8** %cbp, align 8, !tbaa !4
  %1318 = load i8, i8* %1317, align 1, !tbaa !1
  %conv2321 = zext i8 %1318 to i32
  %cmp2322 = icmp slt i32 %conv2321, 128
  br i1 %cmp2322, label %if.then.2324, label %if.else.2329

if.then.2324:                                     ; preds = %do.body.2320
  %1319 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr2325 = getelementptr inbounds i8, i8* %1319, i32 1
  store i8* %incdec.ptr2325, i8** %cbp, align 8, !tbaa !4
  %1320 = load i8, i8* %1319, align 1, !tbaa !1
  %conv2326 = zext i8 %1320 to i32
  %start2327 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %left2269, i32 0, i32 0
  %y2328 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start2327, i32 0, i32 1
  store i32 %conv2326, i32* %y2328, align 4, !tbaa !197
  br label %if.end.2335

if.else.2329:                                     ; preds = %do.body.2320
  %1321 = bitcast i8** %_cbp2330 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1321) #1
  %1322 = load i8*, i8** %cbp, align 8, !tbaa !4
  %call2331 = call i64 @cmd_get_w(i8* %1322, i8** %_cbp2330) #6
  %conv2332 = trunc i64 %call2331 to i32
  %start2333 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %left2269, i32 0, i32 0
  %y2334 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start2333, i32 0, i32 1
  store i32 %conv2332, i32* %y2334, align 4, !tbaa !197
  %1323 = load i8*, i8** %_cbp2330, align 8, !tbaa !4
  store i8* %1323, i8** %cbp, align 8, !tbaa !4
  %1324 = bitcast i8** %_cbp2330 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1324) #1
  br label %if.end.2335

if.end.2335:                                      ; preds = %if.else.2329, %if.then.2324
  br label %do.cond.2336

do.cond.2336:                                     ; preds = %if.end.2335
  br label %do.end.2337

do.end.2337:                                      ; preds = %do.cond.2336
  br label %do.body.2338

do.body.2338:                                     ; preds = %do.end.2337
  %1325 = load i8*, i8** %cbp, align 8, !tbaa !4
  %1326 = load i8, i8* %1325, align 1, !tbaa !1
  %conv2339 = zext i8 %1326 to i32
  %cmp2340 = icmp slt i32 %conv2339, 128
  br i1 %cmp2340, label %if.then.2342, label %if.else.2347

if.then.2342:                                     ; preds = %do.body.2338
  %1327 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr2343 = getelementptr inbounds i8, i8* %1327, i32 1
  store i8* %incdec.ptr2343, i8** %cbp, align 8, !tbaa !4
  %1328 = load i8, i8* %1327, align 1, !tbaa !1
  %conv2344 = zext i8 %1328 to i32
  %end2345 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %left2269, i32 0, i32 1
  %x2346 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end2345, i32 0, i32 0
  store i32 %conv2344, i32* %x2346, align 4, !tbaa !198
  br label %if.end.2353

if.else.2347:                                     ; preds = %do.body.2338
  %1329 = bitcast i8** %_cbp2348 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1329) #1
  %1330 = load i8*, i8** %cbp, align 8, !tbaa !4
  %call2349 = call i64 @cmd_get_w(i8* %1330, i8** %_cbp2348) #6
  %conv2350 = trunc i64 %call2349 to i32
  %end2351 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %left2269, i32 0, i32 1
  %x2352 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end2351, i32 0, i32 0
  store i32 %conv2350, i32* %x2352, align 4, !tbaa !198
  %1331 = load i8*, i8** %_cbp2348, align 8, !tbaa !4
  store i8* %1331, i8** %cbp, align 8, !tbaa !4
  %1332 = bitcast i8** %_cbp2348 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1332) #1
  br label %if.end.2353

if.end.2353:                                      ; preds = %if.else.2347, %if.then.2342
  br label %do.cond.2354

do.cond.2354:                                     ; preds = %if.end.2353
  br label %do.end.2355

do.end.2355:                                      ; preds = %do.cond.2354
  br label %do.body.2356

do.body.2356:                                     ; preds = %do.end.2355
  %1333 = load i8*, i8** %cbp, align 8, !tbaa !4
  %1334 = load i8, i8* %1333, align 1, !tbaa !1
  %conv2357 = zext i8 %1334 to i32
  %cmp2358 = icmp slt i32 %conv2357, 128
  br i1 %cmp2358, label %if.then.2360, label %if.else.2365

if.then.2360:                                     ; preds = %do.body.2356
  %1335 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr2361 = getelementptr inbounds i8, i8* %1335, i32 1
  store i8* %incdec.ptr2361, i8** %cbp, align 8, !tbaa !4
  %1336 = load i8, i8* %1335, align 1, !tbaa !1
  %conv2362 = zext i8 %1336 to i32
  %end2363 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %left2269, i32 0, i32 1
  %y2364 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end2363, i32 0, i32 1
  store i32 %conv2362, i32* %y2364, align 4, !tbaa !199
  br label %if.end.2371

if.else.2365:                                     ; preds = %do.body.2356
  %1337 = bitcast i8** %_cbp2366 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1337) #1
  %1338 = load i8*, i8** %cbp, align 8, !tbaa !4
  %call2367 = call i64 @cmd_get_w(i8* %1338, i8** %_cbp2366) #6
  %conv2368 = trunc i64 %call2367 to i32
  %end2369 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %left2269, i32 0, i32 1
  %y2370 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end2369, i32 0, i32 1
  store i32 %conv2368, i32* %y2370, align 4, !tbaa !199
  %1339 = load i8*, i8** %_cbp2366, align 8, !tbaa !4
  store i8* %1339, i8** %cbp, align 8, !tbaa !4
  %1340 = bitcast i8** %_cbp2366 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1340) #1
  br label %if.end.2371

if.end.2371:                                      ; preds = %if.else.2365, %if.then.2360
  br label %do.cond.2372

do.cond.2372:                                     ; preds = %if.end.2371
  br label %do.end.2373

do.end.2373:                                      ; preds = %do.cond.2372
  br label %do.body.2374

do.body.2374:                                     ; preds = %do.end.2373
  %1341 = load i8*, i8** %cbp, align 8, !tbaa !4
  %1342 = load i8, i8* %1341, align 1, !tbaa !1
  %conv2375 = zext i8 %1342 to i32
  %cmp2376 = icmp slt i32 %conv2375, 128
  br i1 %cmp2376, label %if.then.2378, label %if.else.2383

if.then.2378:                                     ; preds = %do.body.2374
  %1343 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr2379 = getelementptr inbounds i8, i8* %1343, i32 1
  store i8* %incdec.ptr2379, i8** %cbp, align 8, !tbaa !4
  %1344 = load i8, i8* %1343, align 1, !tbaa !1
  %conv2380 = zext i8 %1344 to i32
  %start2381 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %right, i32 0, i32 0
  %x2382 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start2381, i32 0, i32 0
  store i32 %conv2380, i32* %x2382, align 4, !tbaa !195
  br label %if.end.2389

if.else.2383:                                     ; preds = %do.body.2374
  %1345 = bitcast i8** %_cbp2384 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1345) #1
  %1346 = load i8*, i8** %cbp, align 8, !tbaa !4
  %call2385 = call i64 @cmd_get_w(i8* %1346, i8** %_cbp2384) #6
  %conv2386 = trunc i64 %call2385 to i32
  %start2387 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %right, i32 0, i32 0
  %x2388 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start2387, i32 0, i32 0
  store i32 %conv2386, i32* %x2388, align 4, !tbaa !195
  %1347 = load i8*, i8** %_cbp2384, align 8, !tbaa !4
  store i8* %1347, i8** %cbp, align 8, !tbaa !4
  %1348 = bitcast i8** %_cbp2384 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1348) #1
  br label %if.end.2389

if.end.2389:                                      ; preds = %if.else.2383, %if.then.2378
  br label %do.cond.2390

do.cond.2390:                                     ; preds = %if.end.2389
  br label %do.end.2391

do.end.2391:                                      ; preds = %do.cond.2390
  br label %do.body.2392

do.body.2392:                                     ; preds = %do.end.2391
  %1349 = load i8*, i8** %cbp, align 8, !tbaa !4
  %1350 = load i8, i8* %1349, align 1, !tbaa !1
  %conv2393 = zext i8 %1350 to i32
  %cmp2394 = icmp slt i32 %conv2393, 128
  br i1 %cmp2394, label %if.then.2396, label %if.else.2401

if.then.2396:                                     ; preds = %do.body.2392
  %1351 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr2397 = getelementptr inbounds i8, i8* %1351, i32 1
  store i8* %incdec.ptr2397, i8** %cbp, align 8, !tbaa !4
  %1352 = load i8, i8* %1351, align 1, !tbaa !1
  %conv2398 = zext i8 %1352 to i32
  %start2399 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %right, i32 0, i32 0
  %y2400 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start2399, i32 0, i32 1
  store i32 %conv2398, i32* %y2400, align 4, !tbaa !197
  br label %if.end.2407

if.else.2401:                                     ; preds = %do.body.2392
  %1353 = bitcast i8** %_cbp2402 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1353) #1
  %1354 = load i8*, i8** %cbp, align 8, !tbaa !4
  %call2403 = call i64 @cmd_get_w(i8* %1354, i8** %_cbp2402) #6
  %conv2404 = trunc i64 %call2403 to i32
  %start2405 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %right, i32 0, i32 0
  %y2406 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start2405, i32 0, i32 1
  store i32 %conv2404, i32* %y2406, align 4, !tbaa !197
  %1355 = load i8*, i8** %_cbp2402, align 8, !tbaa !4
  store i8* %1355, i8** %cbp, align 8, !tbaa !4
  %1356 = bitcast i8** %_cbp2402 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1356) #1
  br label %if.end.2407

if.end.2407:                                      ; preds = %if.else.2401, %if.then.2396
  br label %do.cond.2408

do.cond.2408:                                     ; preds = %if.end.2407
  br label %do.end.2409

do.end.2409:                                      ; preds = %do.cond.2408
  br label %do.body.2410

do.body.2410:                                     ; preds = %do.end.2409
  %1357 = load i8*, i8** %cbp, align 8, !tbaa !4
  %1358 = load i8, i8* %1357, align 1, !tbaa !1
  %conv2411 = zext i8 %1358 to i32
  %cmp2412 = icmp slt i32 %conv2411, 128
  br i1 %cmp2412, label %if.then.2414, label %if.else.2419

if.then.2414:                                     ; preds = %do.body.2410
  %1359 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr2415 = getelementptr inbounds i8, i8* %1359, i32 1
  store i8* %incdec.ptr2415, i8** %cbp, align 8, !tbaa !4
  %1360 = load i8, i8* %1359, align 1, !tbaa !1
  %conv2416 = zext i8 %1360 to i32
  %end2417 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %right, i32 0, i32 1
  %x2418 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end2417, i32 0, i32 0
  store i32 %conv2416, i32* %x2418, align 4, !tbaa !198
  br label %if.end.2425

if.else.2419:                                     ; preds = %do.body.2410
  %1361 = bitcast i8** %_cbp2420 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1361) #1
  %1362 = load i8*, i8** %cbp, align 8, !tbaa !4
  %call2421 = call i64 @cmd_get_w(i8* %1362, i8** %_cbp2420) #6
  %conv2422 = trunc i64 %call2421 to i32
  %end2423 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %right, i32 0, i32 1
  %x2424 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end2423, i32 0, i32 0
  store i32 %conv2422, i32* %x2424, align 4, !tbaa !198
  %1363 = load i8*, i8** %_cbp2420, align 8, !tbaa !4
  store i8* %1363, i8** %cbp, align 8, !tbaa !4
  %1364 = bitcast i8** %_cbp2420 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1364) #1
  br label %if.end.2425

if.end.2425:                                      ; preds = %if.else.2419, %if.then.2414
  br label %do.cond.2426

do.cond.2426:                                     ; preds = %if.end.2425
  br label %do.end.2427

do.end.2427:                                      ; preds = %do.cond.2426
  br label %do.body.2428

do.body.2428:                                     ; preds = %do.end.2427
  %1365 = load i8*, i8** %cbp, align 8, !tbaa !4
  %1366 = load i8, i8* %1365, align 1, !tbaa !1
  %conv2429 = zext i8 %1366 to i32
  %cmp2430 = icmp slt i32 %conv2429, 128
  br i1 %cmp2430, label %if.then.2432, label %if.else.2437

if.then.2432:                                     ; preds = %do.body.2428
  %1367 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr2433 = getelementptr inbounds i8, i8* %1367, i32 1
  store i8* %incdec.ptr2433, i8** %cbp, align 8, !tbaa !4
  %1368 = load i8, i8* %1367, align 1, !tbaa !1
  %conv2434 = zext i8 %1368 to i32
  %end2435 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %right, i32 0, i32 1
  %y2436 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end2435, i32 0, i32 1
  store i32 %conv2434, i32* %y2436, align 4, !tbaa !199
  br label %if.end.2443

if.else.2437:                                     ; preds = %do.body.2428
  %1369 = bitcast i8** %_cbp2438 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1369) #1
  %1370 = load i8*, i8** %cbp, align 8, !tbaa !4
  %call2439 = call i64 @cmd_get_w(i8* %1370, i8** %_cbp2438) #6
  %conv2440 = trunc i64 %call2439 to i32
  %end2441 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %right, i32 0, i32 1
  %y2442 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end2441, i32 0, i32 1
  store i32 %conv2440, i32* %y2442, align 4, !tbaa !199
  %1371 = load i8*, i8** %_cbp2438, align 8, !tbaa !4
  store i8* %1371, i8** %cbp, align 8, !tbaa !4
  %1372 = bitcast i8** %_cbp2438 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1372) #1
  br label %if.end.2443

if.end.2443:                                      ; preds = %if.else.2437, %if.then.2432
  br label %do.cond.2444

do.cond.2444:                                     ; preds = %if.end.2443
  br label %do.end.2445

do.end.2445:                                      ; preds = %do.cond.2444
  br label %do.body.2446

do.body.2446:                                     ; preds = %do.end.2445
  %1373 = load i8*, i8** %cbp, align 8, !tbaa !4
  %1374 = load i8, i8* %1373, align 1, !tbaa !1
  %conv2447 = zext i8 %1374 to i32
  %cmp2448 = icmp slt i32 %conv2447, 128
  br i1 %cmp2448, label %if.then.2450, label %if.else.2453

if.then.2450:                                     ; preds = %do.body.2446
  %1375 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr2451 = getelementptr inbounds i8, i8* %1375, i32 1
  store i8* %incdec.ptr2451, i8** %cbp, align 8, !tbaa !4
  %1376 = load i8, i8* %1375, align 1, !tbaa !1
  %conv2452 = zext i8 %1376 to i32
  store i32 %conv2452, i32* %options, align 4, !tbaa !6
  br label %if.end.2457

if.else.2453:                                     ; preds = %do.body.2446
  %1377 = bitcast i8** %_cbp2454 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1377) #1
  %1378 = load i8*, i8** %cbp, align 8, !tbaa !4
  %call2455 = call i64 @cmd_get_w(i8* %1378, i8** %_cbp2454) #6
  %conv2456 = trunc i64 %call2455 to i32
  store i32 %conv2456, i32* %options, align 4, !tbaa !6
  %1379 = load i8*, i8** %_cbp2454, align 8, !tbaa !4
  store i8* %1379, i8** %cbp, align 8, !tbaa !4
  %1380 = bitcast i8** %_cbp2454 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1380) #1
  br label %if.end.2457

if.end.2457:                                      ; preds = %if.else.2453, %if.then.2450
  br label %do.cond.2458

do.cond.2458:                                     ; preds = %if.end.2457
  br label %do.end.2459

do.end.2459:                                      ; preds = %do.cond.2458
  %1381 = load i32, i32* %options, align 4, !tbaa !6
  %and2460 = and i32 %1381, 4
  %tobool2461 = icmp ne i32 %and2460, 0
  br i1 %tobool2461, label %if.else.2491, label %if.then.2462

if.then.2462:                                     ; preds = %do.end.2459
  br label %do.body.2463

do.body.2463:                                     ; preds = %if.then.2462
  %1382 = load i8*, i8** %cbp, align 8, !tbaa !4
  %1383 = load i8, i8* %1382, align 1, !tbaa !1
  %conv2464 = zext i8 %1383 to i32
  %cmp2465 = icmp slt i32 %conv2464, 128
  br i1 %cmp2465, label %if.then.2467, label %if.else.2470

if.then.2467:                                     ; preds = %do.body.2463
  %1384 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr2468 = getelementptr inbounds i8, i8* %1384, i32 1
  store i8* %incdec.ptr2468, i8** %cbp, align 8, !tbaa !4
  %1385 = load i8, i8* %1384, align 1, !tbaa !1
  %conv2469 = zext i8 %1385 to i32
  store i32 %conv2469, i32* %ybot, align 4, !tbaa !6
  br label %if.end.2474

if.else.2470:                                     ; preds = %do.body.2463
  %1386 = bitcast i8** %_cbp2471 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1386) #1
  %1387 = load i8*, i8** %cbp, align 8, !tbaa !4
  %call2472 = call i64 @cmd_get_w(i8* %1387, i8** %_cbp2471) #6
  %conv2473 = trunc i64 %call2472 to i32
  store i32 %conv2473, i32* %ybot, align 4, !tbaa !6
  %1388 = load i8*, i8** %_cbp2471, align 8, !tbaa !4
  store i8* %1388, i8** %cbp, align 8, !tbaa !4
  %1389 = bitcast i8** %_cbp2471 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1389) #1
  br label %if.end.2474

if.end.2474:                                      ; preds = %if.else.2470, %if.then.2467
  br label %do.cond.2475

do.cond.2475:                                     ; preds = %if.end.2474
  br label %do.end.2476

do.end.2476:                                      ; preds = %do.cond.2475
  br label %do.body.2477

do.body.2477:                                     ; preds = %do.end.2476
  %1390 = load i8*, i8** %cbp, align 8, !tbaa !4
  %1391 = load i8, i8* %1390, align 1, !tbaa !1
  %conv2478 = zext i8 %1391 to i32
  %cmp2479 = icmp slt i32 %conv2478, 128
  br i1 %cmp2479, label %if.then.2481, label %if.else.2484

if.then.2481:                                     ; preds = %do.body.2477
  %1392 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr2482 = getelementptr inbounds i8, i8* %1392, i32 1
  store i8* %incdec.ptr2482, i8** %cbp, align 8, !tbaa !4
  %1393 = load i8, i8* %1392, align 1, !tbaa !1
  %conv2483 = zext i8 %1393 to i32
  store i32 %conv2483, i32* %ytop, align 4, !tbaa !6
  br label %if.end.2488

if.else.2484:                                     ; preds = %do.body.2477
  %1394 = bitcast i8** %_cbp2485 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1394) #1
  %1395 = load i8*, i8** %cbp, align 8, !tbaa !4
  %call2486 = call i64 @cmd_get_w(i8* %1395, i8** %_cbp2485) #6
  %conv2487 = trunc i64 %call2486 to i32
  store i32 %conv2487, i32* %ytop, align 4, !tbaa !6
  %1396 = load i8*, i8** %_cbp2485, align 8, !tbaa !4
  store i8* %1396, i8** %cbp, align 8, !tbaa !4
  %1397 = bitcast i8** %_cbp2485 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1397) #1
  br label %if.end.2488

if.end.2488:                                      ; preds = %if.else.2484, %if.then.2481
  br label %do.cond.2489

do.cond.2489:                                     ; preds = %if.end.2488
  br label %do.end.2490

do.end.2490:                                      ; preds = %do.cond.2489
  br label %if.end.2492

if.else.2491:                                     ; preds = %do.end.2459
  store i32 0, i32* %ybot, align 4, !tbaa !6
  store i32 0, i32* %ytop, align 4, !tbaa !6
  br label %if.end.2492

if.end.2492:                                      ; preds = %if.else.2491, %do.end.2490
  %1398 = load i32, i32* %options, align 4, !tbaa !6
  %and2493 = and i32 %1398, 1
  store i32 %and2493, i32* %swap_axes, align 4, !tbaa !6
  %1399 = load i32, i32* %swap_axes, align 4, !tbaa !6
  %tobool2494 = icmp ne i32 %1399, 0
  br i1 %tobool2494, label %cond.true.2495, label %cond.false.2497

cond.true.2495:                                   ; preds = %if.end.2492
  %1400 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !4
  %width2496 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1400, i32 0, i32 13
  %1401 = load i32, i32* %width2496, align 4, !tbaa !200
  br label %cond.end.2499

cond.false.2497:                                  ; preds = %if.end.2492
  %1402 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !4
  %height2498 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1402, i32 0, i32 14
  %1403 = load i32, i32* %height2498, align 4, !tbaa !201
  br label %cond.end.2499

cond.end.2499:                                    ; preds = %cond.false.2497, %cond.true.2495
  %cond2500 = phi i32 [ %1401, %cond.true.2495 ], [ %1403, %cond.false.2497 ]
  store i32 %cond2500, i32* %wh, align 4, !tbaa !6
  %1404 = load i32, i32* %swap_axes, align 4, !tbaa !6
  %tobool2501 = icmp ne i32 %1404, 0
  br i1 %tobool2501, label %cond.true.2502, label %cond.false.2503

cond.true.2502:                                   ; preds = %cond.end.2499
  %1405 = load i32, i32* %y0.addr, align 4, !tbaa !6
  br label %cond.end.2504

cond.false.2503:                                  ; preds = %cond.end.2499
  %1406 = load i32, i32* %x0.addr, align 4, !tbaa !6
  br label %cond.end.2504

cond.end.2504:                                    ; preds = %cond.false.2503, %cond.true.2502
  %cond2505 = phi i32 [ %1405, %cond.true.2502 ], [ %1406, %cond.false.2503 ]
  %shl2506 = shl i32 %cond2505, 8
  store i32 %shl2506, i32* %x0f, align 4, !tbaa !6
  %1407 = load i32, i32* %swap_axes, align 4, !tbaa !6
  %tobool2507 = icmp ne i32 %1407, 0
  br i1 %tobool2507, label %cond.true.2508, label %cond.false.2509

cond.true.2508:                                   ; preds = %cond.end.2504
  %1408 = load i32, i32* %x0.addr, align 4, !tbaa !6
  br label %cond.end.2510

cond.false.2509:                                  ; preds = %cond.end.2504
  %1409 = load i32, i32* %y0.addr, align 4, !tbaa !6
  br label %cond.end.2510

cond.end.2510:                                    ; preds = %cond.false.2509, %cond.true.2508
  %cond2511 = phi i32 [ %1408, %cond.true.2508 ], [ %1409, %cond.false.2509 ]
  %shl2512 = shl i32 %cond2511, 8
  store i32 %shl2512, i32* %y0f, align 4, !tbaa !6
  %1410 = load i32, i32* %x0f, align 4, !tbaa !6
  %start2513 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %left2269, i32 0, i32 0
  %x2514 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start2513, i32 0, i32 0
  %1411 = load i32, i32* %x2514, align 4, !tbaa !195
  %sub2515 = sub nsw i32 %1411, %1410
  store i32 %sub2515, i32* %x2514, align 4, !tbaa !195
  %1412 = load i32, i32* %y0f, align 4, !tbaa !6
  %start2516 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %left2269, i32 0, i32 0
  %y2517 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start2516, i32 0, i32 1
  %1413 = load i32, i32* %y2517, align 4, !tbaa !197
  %sub2518 = sub nsw i32 %1413, %1412
  store i32 %sub2518, i32* %y2517, align 4, !tbaa !197
  %1414 = load i32, i32* %x0f, align 4, !tbaa !6
  %end2519 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %left2269, i32 0, i32 1
  %x2520 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end2519, i32 0, i32 0
  %1415 = load i32, i32* %x2520, align 4, !tbaa !198
  %sub2521 = sub nsw i32 %1415, %1414
  store i32 %sub2521, i32* %x2520, align 4, !tbaa !198
  %1416 = load i32, i32* %y0f, align 4, !tbaa !6
  %end2522 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %left2269, i32 0, i32 1
  %y2523 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end2522, i32 0, i32 1
  %1417 = load i32, i32* %y2523, align 4, !tbaa !199
  %sub2524 = sub nsw i32 %1417, %1416
  store i32 %sub2524, i32* %y2523, align 4, !tbaa !199
  %1418 = load i32, i32* %x0f, align 4, !tbaa !6
  %start2525 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %right, i32 0, i32 0
  %x2526 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start2525, i32 0, i32 0
  %1419 = load i32, i32* %x2526, align 4, !tbaa !195
  %sub2527 = sub nsw i32 %1419, %1418
  store i32 %sub2527, i32* %x2526, align 4, !tbaa !195
  %1420 = load i32, i32* %y0f, align 4, !tbaa !6
  %start2528 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %right, i32 0, i32 0
  %y2529 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start2528, i32 0, i32 1
  %1421 = load i32, i32* %y2529, align 4, !tbaa !197
  %sub2530 = sub nsw i32 %1421, %1420
  store i32 %sub2530, i32* %y2529, align 4, !tbaa !197
  %1422 = load i32, i32* %x0f, align 4, !tbaa !6
  %end2531 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %right, i32 0, i32 1
  %x2532 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end2531, i32 0, i32 0
  %1423 = load i32, i32* %x2532, align 4, !tbaa !198
  %sub2533 = sub nsw i32 %1423, %1422
  store i32 %sub2533, i32* %x2532, align 4, !tbaa !198
  %1424 = load i32, i32* %y0f, align 4, !tbaa !6
  %end2534 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %right, i32 0, i32 1
  %y2535 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end2534, i32 0, i32 1
  %1425 = load i32, i32* %y2535, align 4, !tbaa !199
  %sub2536 = sub nsw i32 %1425, %1424
  store i32 %sub2536, i32* %y2535, align 4, !tbaa !199
  %1426 = load i32, i32* %options, align 4, !tbaa !6
  %and2537 = and i32 %1426, 2
  %tobool2538 = icmp ne i32 %and2537, 0
  br i1 %tobool2538, label %if.then.2539, label %if.else.2817

if.then.2539:                                     ; preds = %cond.end.2510
  %1427 = bitcast i32* %num_components2540 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1427) #1
  %1428 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !4
  %color_info2541 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1428, i32 0, i32 11
  %num_components2542 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info2541, i32 0, i32 1
  %1429 = load i32, i32* %num_components2542, align 4, !tbaa !123
  store i32 %1429, i32* %num_components2540, align 4, !tbaa !6
  %1430 = bitcast [4 x [64 x i32]]* %c2543 to i8*
  call void @llvm.lifetime.start(i64 1024, i8* %1430) #1
  %1431 = bitcast [4 x i32*]* %cc to i8*
  call void @llvm.lifetime.start(i64 32, i8* %1431) #1
  call void @llvm.lifetime.start(i64 1, i8* %colors_mask) #1
  call void @llvm.lifetime.start(i64 1, i8* %i2544) #1
  call void @llvm.lifetime.start(i64 1, i8* %j) #1
  call void @llvm.lifetime.start(i64 1, i8* %m) #1
  store i8 1, i8* %m, align 1, !tbaa !1
  %1432 = bitcast %struct.gs_fill_attributes_s* %fa to i8*
  call void @llvm.lifetime.start(i64 48, i8* %1432) #1
  %1433 = bitcast %struct.gs_fixed_rect_s* %clip to i8*
  call void @llvm.lifetime.start(i64 16, i8* %1433) #1
  %1434 = bitcast i32* %hh to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1434) #1
  %1435 = load i32, i32* %swap_axes, align 4, !tbaa !6
  %tobool2545 = icmp ne i32 %1435, 0
  br i1 %tobool2545, label %cond.true.2546, label %cond.false.2548

cond.true.2546:                                   ; preds = %if.then.2539
  %1436 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !4
  %width2547 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1436, i32 0, i32 13
  %1437 = load i32, i32* %width2547, align 4, !tbaa !200
  br label %cond.end.2550

cond.false.2548:                                  ; preds = %if.then.2539
  %1438 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !4
  %height2549 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1438, i32 0, i32 14
  %1439 = load i32, i32* %height2549, align 4, !tbaa !201
  br label %cond.end.2550

cond.end.2550:                                    ; preds = %cond.false.2548, %cond.true.2546
  %cond2551 = phi i32 [ %1437, %cond.true.2546 ], [ %1439, %cond.false.2548 ]
  %shl2552 = shl i32 %cond2551, 8
  store i32 %shl2552, i32* %hh, align 4, !tbaa !6
  %end2553 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %cbuf, i32 0, i32 4
  %1440 = load i8*, i8** %end2553, align 8, !tbaa !16
  %1441 = load i8*, i8** %cbp, align 8, !tbaa !4
  %sub.ptr.lhs.cast2554 = ptrtoint i8* %1440 to i64
  %sub.ptr.rhs.cast2555 = ptrtoint i8* %1441 to i64
  %sub.ptr.sub2556 = sub i64 %sub.ptr.lhs.cast2554, %sub.ptr.rhs.cast2555
  %cmp2557 = icmp ult i64 %sub.ptr.sub2556, 25
  br i1 %cmp2557, label %if.then.2559, label %if.end.2565

if.then.2559:                                     ; preds = %cond.end.2550
  %call2560 = call i32 @top_up_cbuf(%struct.command_buf_s* %cbuf, i8** %cbp) #6
  store i32 %call2560, i32* %code, align 4, !tbaa !6
  %1442 = load i32, i32* %code, align 4, !tbaa !6
  %cmp2561 = icmp slt i32 %1442, 0
  br i1 %cmp2561, label %if.then.2563, label %if.end.2564

if.then.2563:                                     ; preds = %if.then.2559
  %1443 = load i32, i32* %code, align 4, !tbaa !6
  store i32 %1443, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.2805

if.end.2564:                                      ; preds = %if.then.2559
  br label %if.end.2565

if.end.2565:                                      ; preds = %if.end.2564, %cond.end.2550
  br label %do.body.2566

do.body.2566:                                     ; preds = %if.end.2565
  %1444 = load i8*, i8** %cbp, align 8, !tbaa !4
  %1445 = load i8, i8* %1444, align 1, !tbaa !1
  %conv2567 = zext i8 %1445 to i32
  %cmp2568 = icmp slt i32 %conv2567, 128
  br i1 %cmp2568, label %if.then.2570, label %if.else.2575

if.then.2570:                                     ; preds = %do.body.2566
  %1446 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr2571 = getelementptr inbounds i8, i8* %1446, i32 1
  store i8* %incdec.ptr2571, i8** %cbp, align 8, !tbaa !4
  %1447 = load i8, i8* %1446, align 1, !tbaa !1
  %conv2572 = zext i8 %1447 to i32
  %p2573 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %clip, i32 0, i32 0
  %x2574 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p2573, i32 0, i32 0
  store i32 %conv2572, i32* %x2574, align 4, !tbaa !41
  br label %if.end.2581

if.else.2575:                                     ; preds = %do.body.2566
  %1448 = bitcast i8** %_cbp2576 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1448) #1
  %1449 = load i8*, i8** %cbp, align 8, !tbaa !4
  %call2577 = call i64 @cmd_get_w(i8* %1449, i8** %_cbp2576) #6
  %conv2578 = trunc i64 %call2577 to i32
  %p2579 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %clip, i32 0, i32 0
  %x2580 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p2579, i32 0, i32 0
  store i32 %conv2578, i32* %x2580, align 4, !tbaa !41
  %1450 = load i8*, i8** %_cbp2576, align 8, !tbaa !4
  store i8* %1450, i8** %cbp, align 8, !tbaa !4
  %1451 = bitcast i8** %_cbp2576 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1451) #1
  br label %if.end.2581

if.end.2581:                                      ; preds = %if.else.2575, %if.then.2570
  br label %do.cond.2582

do.cond.2582:                                     ; preds = %if.end.2581
  br label %do.end.2583

do.end.2583:                                      ; preds = %do.cond.2582
  br label %do.body.2584

do.body.2584:                                     ; preds = %do.end.2583
  %1452 = load i8*, i8** %cbp, align 8, !tbaa !4
  %1453 = load i8, i8* %1452, align 1, !tbaa !1
  %conv2585 = zext i8 %1453 to i32
  %cmp2586 = icmp slt i32 %conv2585, 128
  br i1 %cmp2586, label %if.then.2588, label %if.else.2593

if.then.2588:                                     ; preds = %do.body.2584
  %1454 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr2589 = getelementptr inbounds i8, i8* %1454, i32 1
  store i8* %incdec.ptr2589, i8** %cbp, align 8, !tbaa !4
  %1455 = load i8, i8* %1454, align 1, !tbaa !1
  %conv2590 = zext i8 %1455 to i32
  %p2591 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %clip, i32 0, i32 0
  %y2592 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p2591, i32 0, i32 1
  store i32 %conv2590, i32* %y2592, align 4, !tbaa !42
  br label %if.end.2599

if.else.2593:                                     ; preds = %do.body.2584
  %1456 = bitcast i8** %_cbp2594 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1456) #1
  %1457 = load i8*, i8** %cbp, align 8, !tbaa !4
  %call2595 = call i64 @cmd_get_w(i8* %1457, i8** %_cbp2594) #6
  %conv2596 = trunc i64 %call2595 to i32
  %p2597 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %clip, i32 0, i32 0
  %y2598 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p2597, i32 0, i32 1
  store i32 %conv2596, i32* %y2598, align 4, !tbaa !42
  %1458 = load i8*, i8** %_cbp2594, align 8, !tbaa !4
  store i8* %1458, i8** %cbp, align 8, !tbaa !4
  %1459 = bitcast i8** %_cbp2594 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1459) #1
  br label %if.end.2599

if.end.2599:                                      ; preds = %if.else.2593, %if.then.2588
  br label %do.cond.2600

do.cond.2600:                                     ; preds = %if.end.2599
  br label %do.end.2601

do.end.2601:                                      ; preds = %do.cond.2600
  br label %do.body.2602

do.body.2602:                                     ; preds = %do.end.2601
  %1460 = load i8*, i8** %cbp, align 8, !tbaa !4
  %1461 = load i8, i8* %1460, align 1, !tbaa !1
  %conv2603 = zext i8 %1461 to i32
  %cmp2604 = icmp slt i32 %conv2603, 128
  br i1 %cmp2604, label %if.then.2606, label %if.else.2611

if.then.2606:                                     ; preds = %do.body.2602
  %1462 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr2607 = getelementptr inbounds i8, i8* %1462, i32 1
  store i8* %incdec.ptr2607, i8** %cbp, align 8, !tbaa !4
  %1463 = load i8, i8* %1462, align 1, !tbaa !1
  %conv2608 = zext i8 %1463 to i32
  %q2609 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %clip, i32 0, i32 1
  %x2610 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q2609, i32 0, i32 0
  store i32 %conv2608, i32* %x2610, align 4, !tbaa !59
  br label %if.end.2617

if.else.2611:                                     ; preds = %do.body.2602
  %1464 = bitcast i8** %_cbp2612 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1464) #1
  %1465 = load i8*, i8** %cbp, align 8, !tbaa !4
  %call2613 = call i64 @cmd_get_w(i8* %1465, i8** %_cbp2612) #6
  %conv2614 = trunc i64 %call2613 to i32
  %q2615 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %clip, i32 0, i32 1
  %x2616 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q2615, i32 0, i32 0
  store i32 %conv2614, i32* %x2616, align 4, !tbaa !59
  %1466 = load i8*, i8** %_cbp2612, align 8, !tbaa !4
  store i8* %1466, i8** %cbp, align 8, !tbaa !4
  %1467 = bitcast i8** %_cbp2612 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1467) #1
  br label %if.end.2617

if.end.2617:                                      ; preds = %if.else.2611, %if.then.2606
  br label %do.cond.2618

do.cond.2618:                                     ; preds = %if.end.2617
  br label %do.end.2619

do.end.2619:                                      ; preds = %do.cond.2618
  br label %do.body.2620

do.body.2620:                                     ; preds = %do.end.2619
  %1468 = load i8*, i8** %cbp, align 8, !tbaa !4
  %1469 = load i8, i8* %1468, align 1, !tbaa !1
  %conv2621 = zext i8 %1469 to i32
  %cmp2622 = icmp slt i32 %conv2621, 128
  br i1 %cmp2622, label %if.then.2624, label %if.else.2629

if.then.2624:                                     ; preds = %do.body.2620
  %1470 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr2625 = getelementptr inbounds i8, i8* %1470, i32 1
  store i8* %incdec.ptr2625, i8** %cbp, align 8, !tbaa !4
  %1471 = load i8, i8* %1470, align 1, !tbaa !1
  %conv2626 = zext i8 %1471 to i32
  %q2627 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %clip, i32 0, i32 1
  %y2628 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q2627, i32 0, i32 1
  store i32 %conv2626, i32* %y2628, align 4, !tbaa !61
  br label %if.end.2635

if.else.2629:                                     ; preds = %do.body.2620
  %1472 = bitcast i8** %_cbp2630 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1472) #1
  %1473 = load i8*, i8** %cbp, align 8, !tbaa !4
  %call2631 = call i64 @cmd_get_w(i8* %1473, i8** %_cbp2630) #6
  %conv2632 = trunc i64 %call2631 to i32
  %q2633 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %clip, i32 0, i32 1
  %y2634 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q2633, i32 0, i32 1
  store i32 %conv2632, i32* %y2634, align 4, !tbaa !61
  %1474 = load i8*, i8** %_cbp2630, align 8, !tbaa !4
  store i8* %1474, i8** %cbp, align 8, !tbaa !4
  %1475 = bitcast i8** %_cbp2630 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1475) #1
  br label %if.end.2635

if.end.2635:                                      ; preds = %if.else.2629, %if.then.2624
  br label %do.cond.2636

do.cond.2636:                                     ; preds = %if.end.2635
  br label %do.end.2637

do.end.2637:                                      ; preds = %do.cond.2636
  %1476 = load i32, i32* %x0f, align 4, !tbaa !6
  %p2638 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %clip, i32 0, i32 0
  %x2639 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p2638, i32 0, i32 0
  %1477 = load i32, i32* %x2639, align 4, !tbaa !41
  %sub2640 = sub nsw i32 %1477, %1476
  store i32 %sub2640, i32* %x2639, align 4, !tbaa !41
  %1478 = load i32, i32* %y0f, align 4, !tbaa !6
  %p2641 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %clip, i32 0, i32 0
  %y2642 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p2641, i32 0, i32 1
  %1479 = load i32, i32* %y2642, align 4, !tbaa !42
  %sub2643 = sub nsw i32 %1479, %1478
  store i32 %sub2643, i32* %y2642, align 4, !tbaa !42
  %1480 = load i32, i32* %x0f, align 4, !tbaa !6
  %q2644 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %clip, i32 0, i32 1
  %x2645 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q2644, i32 0, i32 0
  %1481 = load i32, i32* %x2645, align 4, !tbaa !59
  %sub2646 = sub nsw i32 %1481, %1480
  store i32 %sub2646, i32* %x2645, align 4, !tbaa !59
  %1482 = load i32, i32* %y0f, align 4, !tbaa !6
  %q2647 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %clip, i32 0, i32 1
  %y2648 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q2647, i32 0, i32 1
  %1483 = load i32, i32* %y2648, align 4, !tbaa !61
  %sub2649 = sub nsw i32 %1483, %1482
  store i32 %sub2649, i32* %y2648, align 4, !tbaa !61
  %p2650 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %clip, i32 0, i32 0
  %y2651 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p2650, i32 0, i32 1
  %1484 = load i32, i32* %y2651, align 4, !tbaa !42
  %cmp2652 = icmp slt i32 %1484, 0
  br i1 %cmp2652, label %if.then.2654, label %if.end.2657

if.then.2654:                                     ; preds = %do.end.2637
  %p2655 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %clip, i32 0, i32 0
  %y2656 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p2655, i32 0, i32 1
  store i32 0, i32* %y2656, align 4, !tbaa !42
  br label %if.end.2657

if.end.2657:                                      ; preds = %if.then.2654, %do.end.2637
  %q2658 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %clip, i32 0, i32 1
  %y2659 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q2658, i32 0, i32 1
  %1485 = load i32, i32* %y2659, align 4, !tbaa !61
  %1486 = load i32, i32* %hh, align 4, !tbaa !6
  %cmp2660 = icmp sgt i32 %1485, %1486
  br i1 %cmp2660, label %if.then.2662, label %if.end.2665

if.then.2662:                                     ; preds = %if.end.2657
  %1487 = load i32, i32* %hh, align 4, !tbaa !6
  %q2663 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %clip, i32 0, i32 1
  %y2664 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q2663, i32 0, i32 1
  store i32 %1487, i32* %y2664, align 4, !tbaa !61
  br label %if.end.2665

if.end.2665:                                      ; preds = %if.then.2662, %if.end.2657
  %clip2666 = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %fa, i32 0, i32 0
  store %struct.gs_fixed_rect_s* %clip, %struct.gs_fixed_rect_s** %clip2666, align 8, !tbaa !202
  %1488 = load i32, i32* %swap_axes, align 4, !tbaa !6
  %swap_axes2667 = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %fa, i32 0, i32 1
  store i32 %1488, i32* %swap_axes2667, align 4, !tbaa !204
  %ht = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %fa, i32 0, i32 2
  store %struct.gx_device_halftone_s* null, %struct.gx_device_halftone_s** %ht, align 8, !tbaa !205
  %lop2668 = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %fa, i32 0, i32 3
  store i32 252, i32* %lop2668, align 4, !tbaa !206
  %1489 = load i32, i32* %ybot, align 4, !tbaa !6
  %1490 = load i32, i32* %y0f, align 4, !tbaa !6
  %sub2669 = sub nsw i32 %1489, %1490
  %ystart = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %fa, i32 0, i32 4
  store i32 %sub2669, i32* %ystart, align 4, !tbaa !207
  %1491 = load i32, i32* %ytop, align 4, !tbaa !6
  %1492 = load i32, i32* %y0f, align 4, !tbaa !6
  %sub2670 = sub nsw i32 %1491, %1492
  %yend = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %fa, i32 0, i32 5
  store i32 %sub2670, i32* %yend, align 4, !tbaa !208
  br label %do.body.2671

do.body.2671:                                     ; preds = %if.end.2665
  %1493 = load i8*, i8** %cbp, align 8, !tbaa !4
  %1494 = load i8, i8* %1493, align 1, !tbaa !1
  %conv2672 = zext i8 %1494 to i32
  %cmp2673 = icmp slt i32 %conv2672, 128
  br i1 %cmp2673, label %if.then.2675, label %if.else.2677

if.then.2675:                                     ; preds = %do.body.2671
  %1495 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr2676 = getelementptr inbounds i8, i8* %1495, i32 1
  store i8* %incdec.ptr2676, i8** %cbp, align 8, !tbaa !4
  %1496 = load i8, i8* %1495, align 1, !tbaa !1
  store i8 %1496, i8* %colors_mask, align 1, !tbaa !1
  br label %if.end.2681

if.else.2677:                                     ; preds = %do.body.2671
  %1497 = bitcast i8** %_cbp2678 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1497) #1
  %1498 = load i8*, i8** %cbp, align 8, !tbaa !4
  %call2679 = call i64 @cmd_get_w(i8* %1498, i8** %_cbp2678) #6
  %conv2680 = trunc i64 %call2679 to i8
  store i8 %conv2680, i8* %colors_mask, align 1, !tbaa !1
  %1499 = load i8*, i8** %_cbp2678, align 8, !tbaa !4
  store i8* %1499, i8** %cbp, align 8, !tbaa !4
  %1500 = bitcast i8** %_cbp2678 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1500) #1
  br label %if.end.2681

if.end.2681:                                      ; preds = %if.else.2677, %if.then.2675
  br label %do.cond.2682

do.cond.2682:                                     ; preds = %if.end.2681
  br label %do.end.2683

do.end.2683:                                      ; preds = %do.cond.2682
  store i8 0, i8* %i2544, align 1, !tbaa !1
  br label %for.cond.2684

for.cond.2684:                                    ; preds = %for.inc.2748, %do.end.2683
  %1501 = load i8, i8* %i2544, align 1, !tbaa !1
  %conv2685 = zext i8 %1501 to i32
  %cmp2686 = icmp slt i32 %conv2685, 4
  br i1 %cmp2686, label %for.body.2688, label %for.end.2753

for.body.2688:                                    ; preds = %for.cond.2684
  %1502 = load i8, i8* %colors_mask, align 1, !tbaa !1
  %conv2689 = zext i8 %1502 to i32
  %1503 = load i8, i8* %m, align 1, !tbaa !1
  %conv2690 = zext i8 %1503 to i32
  %and2691 = and i32 %conv2689, %conv2690
  %tobool2692 = icmp ne i32 %and2691, 0
  br i1 %tobool2692, label %if.then.2693, label %if.else.2744

if.then.2693:                                     ; preds = %for.body.2688
  %end2694 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %cbuf, i32 0, i32 4
  %1504 = load i8*, i8** %end2694, align 8, !tbaa !16
  %1505 = load i8*, i8** %cbp, align 8, !tbaa !4
  %sub.ptr.lhs.cast2695 = ptrtoint i8* %1504 to i64
  %sub.ptr.rhs.cast2696 = ptrtoint i8* %1505 to i64
  %sub.ptr.sub2697 = sub i64 %sub.ptr.lhs.cast2695, %sub.ptr.rhs.cast2696
  %1506 = load i32, i32* %num_components2540, align 4, !tbaa !6
  %conv2698 = sext i32 %1506 to i64
  %mul2699 = mul i64 %conv2698, 5
  %cmp2700 = icmp ult i64 %sub.ptr.sub2697, %mul2699
  br i1 %cmp2700, label %if.then.2702, label %if.end.2708

if.then.2702:                                     ; preds = %if.then.2693
  %call2703 = call i32 @top_up_cbuf(%struct.command_buf_s* %cbuf, i8** %cbp) #6
  store i32 %call2703, i32* %code, align 4, !tbaa !6
  %1507 = load i32, i32* %code, align 4, !tbaa !6
  %cmp2704 = icmp slt i32 %1507, 0
  br i1 %cmp2704, label %if.then.2706, label %if.end.2707

if.then.2706:                                     ; preds = %if.then.2702
  %1508 = load i32, i32* %code, align 4, !tbaa !6
  store i32 %1508, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.2805

if.end.2707:                                      ; preds = %if.then.2702
  br label %if.end.2708

if.end.2708:                                      ; preds = %if.end.2707, %if.then.2693
  %1509 = load i8, i8* %i2544, align 1, !tbaa !1
  %idxprom2709 = zext i8 %1509 to i64
  %arrayidx2710 = getelementptr inbounds [4 x [64 x i32]], [4 x [64 x i32]]* %c2543, i32 0, i64 %idxprom2709
  %arraydecay2711 = getelementptr inbounds [64 x i32], [64 x i32]* %arrayidx2710, i32 0, i32 0
  %1510 = load i8, i8* %i2544, align 1, !tbaa !1
  %idxprom2712 = zext i8 %1510 to i64
  %arrayidx2713 = getelementptr inbounds [4 x i32*], [4 x i32*]* %cc, i32 0, i64 %idxprom2712
  store i32* %arraydecay2711, i32** %arrayidx2713, align 8, !tbaa !4
  store i8 0, i8* %j, align 1, !tbaa !1
  br label %for.cond.2714

for.cond.2714:                                    ; preds = %for.inc.2741, %if.end.2708
  %1511 = load i8, i8* %j, align 1, !tbaa !1
  %conv2715 = zext i8 %1511 to i32
  %1512 = load i32, i32* %num_components2540, align 4, !tbaa !6
  %cmp2716 = icmp slt i32 %conv2715, %1512
  br i1 %cmp2716, label %for.body.2718, label %for.end.2743

for.body.2718:                                    ; preds = %for.cond.2714
  br label %do.body.2719

do.body.2719:                                     ; preds = %for.body.2718
  %1513 = load i8*, i8** %cbp, align 8, !tbaa !4
  %1514 = load i8, i8* %1513, align 1, !tbaa !1
  %conv2720 = zext i8 %1514 to i32
  %and2721 = and i32 %conv2720, 1
  %tobool2722 = icmp ne i32 %and2721, 0
  br i1 %tobool2722, label %if.else.2731, label %if.then.2723

if.then.2723:                                     ; preds = %do.body.2719
  %1515 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr2724 = getelementptr inbounds i8, i8* %1515, i32 1
  store i8* %incdec.ptr2724, i8** %cbp, align 8, !tbaa !4
  %1516 = load i8, i8* %1515, align 1, !tbaa !1
  %conv2725 = zext i8 %1516 to i32
  %shl2726 = shl i32 %conv2725, 24
  %1517 = load i8, i8* %j, align 1, !tbaa !1
  %idxprom2727 = zext i8 %1517 to i64
  %1518 = load i8, i8* %i2544, align 1, !tbaa !1
  %idxprom2728 = zext i8 %1518 to i64
  %arrayidx2729 = getelementptr inbounds [4 x [64 x i32]], [4 x [64 x i32]]* %c2543, i32 0, i64 %idxprom2728
  %arrayidx2730 = getelementptr inbounds [64 x i32], [64 x i32]* %arrayidx2729, i32 0, i64 %idxprom2727
  store i32 %shl2726, i32* %arrayidx2730, align 4, !tbaa !6
  br label %if.end.2738

if.else.2731:                                     ; preds = %do.body.2719
  %1519 = bitcast i8** %_cbp2732 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1519) #1
  %1520 = load i8*, i8** %cbp, align 8, !tbaa !4
  %call2733 = call i32 @cmd_get_frac31(i8* %1520, i8** %_cbp2732) #6
  %1521 = load i8, i8* %j, align 1, !tbaa !1
  %idxprom2734 = zext i8 %1521 to i64
  %1522 = load i8, i8* %i2544, align 1, !tbaa !1
  %idxprom2735 = zext i8 %1522 to i64
  %arrayidx2736 = getelementptr inbounds [4 x [64 x i32]], [4 x [64 x i32]]* %c2543, i32 0, i64 %idxprom2735
  %arrayidx2737 = getelementptr inbounds [64 x i32], [64 x i32]* %arrayidx2736, i32 0, i64 %idxprom2734
  store i32 %call2733, i32* %arrayidx2737, align 4, !tbaa !6
  %1523 = load i8*, i8** %_cbp2732, align 8, !tbaa !4
  store i8* %1523, i8** %cbp, align 8, !tbaa !4
  %1524 = bitcast i8** %_cbp2732 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1524) #1
  br label %if.end.2738

if.end.2738:                                      ; preds = %if.else.2731, %if.then.2723
  br label %do.cond.2739

do.cond.2739:                                     ; preds = %if.end.2738
  br label %do.end.2740

do.end.2740:                                      ; preds = %do.cond.2739
  br label %for.inc.2741

for.inc.2741:                                     ; preds = %do.end.2740
  %1525 = load i8, i8* %j, align 1, !tbaa !1
  %inc2742 = add i8 %1525, 1
  store i8 %inc2742, i8* %j, align 1, !tbaa !1
  br label %for.cond.2714

for.end.2743:                                     ; preds = %for.cond.2714
  br label %if.end.2747

if.else.2744:                                     ; preds = %for.body.2688
  %1526 = load i8, i8* %i2544, align 1, !tbaa !1
  %idxprom2745 = zext i8 %1526 to i64
  %arrayidx2746 = getelementptr inbounds [4 x i32*], [4 x i32*]* %cc, i32 0, i64 %idxprom2745
  store i32* null, i32** %arrayidx2746, align 8, !tbaa !4
  br label %if.end.2747

if.end.2747:                                      ; preds = %if.else.2744, %for.end.2743
  br label %for.inc.2748

for.inc.2748:                                     ; preds = %if.end.2747
  %1527 = load i8, i8* %i2544, align 1, !tbaa !1
  %inc2749 = add i8 %1527, 1
  store i8 %inc2749, i8* %i2544, align 1, !tbaa !1
  %1528 = load i8, i8* %m, align 1, !tbaa !1
  %conv2750 = zext i8 %1528 to i32
  %shl2751 = shl i32 %conv2750, 1
  %conv2752 = trunc i32 %shl2751 to i8
  store i8 %conv2752, i8* %m, align 1, !tbaa !1
  br label %for.cond.2684

for.end.2753:                                     ; preds = %for.cond.2684
  %1529 = load i32, i32* %options, align 4, !tbaa !6
  %and2754 = and i32 %1529, 4
  %tobool2755 = icmp ne i32 %and2754, 0
  br i1 %tobool2755, label %if.then.2756, label %if.else.2789

if.then.2756:                                     ; preds = %for.end.2753
  %1530 = load %struct.gx_device_s*, %struct.gx_device_s** %ttdev, align 8, !tbaa !4
  %procs2757 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1530, i32 0, i32 42
  %fill_linear_color_triangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs2757, i32 0, i32 58
  %1531 = load i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)** %fill_linear_color_triangle, align 8, !tbaa !209
  %1532 = load %struct.gx_device_s*, %struct.gx_device_s** %ttdev, align 8, !tbaa !4
  %start2758 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %left2269, i32 0, i32 0
  %end2759 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %left2269, i32 0, i32 1
  %start2760 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %right, i32 0, i32 0
  %arrayidx2761 = getelementptr inbounds [4 x i32*], [4 x i32*]* %cc, i32 0, i64 0
  %1533 = load i32*, i32** %arrayidx2761, align 8, !tbaa !4
  %arrayidx2762 = getelementptr inbounds [4 x i32*], [4 x i32*]* %cc, i32 0, i64 1
  %1534 = load i32*, i32** %arrayidx2762, align 8, !tbaa !4
  %arrayidx2763 = getelementptr inbounds [4 x i32*], [4 x i32*]* %cc, i32 0, i64 2
  %1535 = load i32*, i32** %arrayidx2763, align 8, !tbaa !4
  %call2764 = call i32 %1531(%struct.gx_device_s* %1532, %struct.gs_fill_attributes_s* %fa, %struct.gs_fixed_point_s* %start2758, %struct.gs_fixed_point_s* %end2759, %struct.gs_fixed_point_s* %start2760, i32* %1533, i32* %1534, i32* %1535) #6
  store i32 %call2764, i32* %code, align 4, !tbaa !6
  %1536 = load i32, i32* %code, align 4, !tbaa !6
  %cmp2765 = icmp eq i32 %1536, 0
  br i1 %cmp2765, label %if.then.2767, label %if.end.2788

if.then.2767:                                     ; preds = %if.then.2756
  %dev2768 = getelementptr inbounds %struct.patch_fill_state_s, %struct.patch_fill_state_s* %pfs, i32 0, i32 0
  %1537 = load %struct.gx_device_s*, %struct.gx_device_s** %dev2768, align 8, !tbaa !17
  %cmp2769 = icmp eq %struct.gx_device_s* %1537, null
  br i1 %cmp2769, label %if.then.2771, label %if.end.2773

if.then.2771:                                     ; preds = %if.then.2767
  %1538 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !4
  %1539 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %call2772 = call i32 @gx_init_patch_fill_state_for_clist(%struct.gx_device_s* %1538, %struct.patch_fill_state_s* %pfs, %struct.gs_memory_s* %1539) #6
  store i32 %call2772, i32* %code, align 4, !tbaa !6
  br label %if.end.2773

if.end.2773:                                      ; preds = %if.then.2771, %if.then.2767
  %1540 = load i32, i32* %code, align 4, !tbaa !6
  %cmp2774 = icmp sge i32 %1540, 0
  br i1 %cmp2774, label %if.then.2776, label %if.end.2787

if.then.2776:                                     ; preds = %if.end.2773
  %1541 = load %struct.gx_device_s*, %struct.gx_device_s** %ttdev, align 8, !tbaa !4
  %dev2777 = getelementptr inbounds %struct.patch_fill_state_s, %struct.patch_fill_state_s* %pfs, i32 0, i32 0
  store %struct.gx_device_s* %1541, %struct.gx_device_s** %dev2777, align 8, !tbaa !17
  %rect2778 = getelementptr inbounds %struct.patch_fill_state_s, %struct.patch_fill_state_s* %pfs, i32 0, i32 8
  %1542 = bitcast %struct.gs_fixed_rect_s* %rect2778 to i8*
  %1543 = bitcast %struct.gs_fixed_rect_s* %clip to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1542, i8* %1543, i64 16, i32 4, i1 false), !tbaa.struct !210
  %pfs2779 = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %fa, i32 0, i32 6
  store %struct.patch_fill_state_s* %pfs, %struct.patch_fill_state_s** %pfs2779, align 8, !tbaa !211
  %1544 = load %struct.gx_device_s*, %struct.gx_device_s** %ttdev, align 8, !tbaa !4
  %start2780 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %left2269, i32 0, i32 0
  %end2781 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %left2269, i32 0, i32 1
  %start2782 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %right, i32 0, i32 0
  %arrayidx2783 = getelementptr inbounds [4 x i32*], [4 x i32*]* %cc, i32 0, i64 0
  %1545 = load i32*, i32** %arrayidx2783, align 8, !tbaa !4
  %arrayidx2784 = getelementptr inbounds [4 x i32*], [4 x i32*]* %cc, i32 0, i64 1
  %1546 = load i32*, i32** %arrayidx2784, align 8, !tbaa !4
  %arrayidx2785 = getelementptr inbounds [4 x i32*], [4 x i32*]* %cc, i32 0, i64 2
  %1547 = load i32*, i32** %arrayidx2785, align 8, !tbaa !4
  %call2786 = call i32 @gx_fill_triangle_small(%struct.gx_device_s* %1544, %struct.gs_fill_attributes_s* %fa, %struct.gs_fixed_point_s* %start2780, %struct.gs_fixed_point_s* %end2781, %struct.gs_fixed_point_s* %start2782, i32* %1545, i32* %1546, i32* %1547) #6
  store i32 %call2786, i32* %code, align 4, !tbaa !6
  br label %if.end.2787

if.end.2787:                                      ; preds = %if.then.2776, %if.end.2773
  br label %if.end.2788

if.end.2788:                                      ; preds = %if.end.2787, %if.then.2756
  br label %if.end.2804

if.else.2789:                                     ; preds = %for.end.2753
  %1548 = load %struct.gx_device_s*, %struct.gx_device_s** %ttdev, align 8, !tbaa !4
  %procs2790 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1548, i32 0, i32 42
  %fill_linear_color_trapezoid = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs2790, i32 0, i32 57
  %1549 = load i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)** %fill_linear_color_trapezoid, align 8, !tbaa !212
  %1550 = load %struct.gx_device_s*, %struct.gx_device_s** %ttdev, align 8, !tbaa !4
  %start2791 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %left2269, i32 0, i32 0
  %end2792 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %left2269, i32 0, i32 1
  %start2793 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %right, i32 0, i32 0
  %end2794 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %right, i32 0, i32 1
  %arrayidx2795 = getelementptr inbounds [4 x i32*], [4 x i32*]* %cc, i32 0, i64 0
  %1551 = load i32*, i32** %arrayidx2795, align 8, !tbaa !4
  %arrayidx2796 = getelementptr inbounds [4 x i32*], [4 x i32*]* %cc, i32 0, i64 1
  %1552 = load i32*, i32** %arrayidx2796, align 8, !tbaa !4
  %arrayidx2797 = getelementptr inbounds [4 x i32*], [4 x i32*]* %cc, i32 0, i64 2
  %1553 = load i32*, i32** %arrayidx2797, align 8, !tbaa !4
  %arrayidx2798 = getelementptr inbounds [4 x i32*], [4 x i32*]* %cc, i32 0, i64 3
  %1554 = load i32*, i32** %arrayidx2798, align 8, !tbaa !4
  %call2799 = call i32 %1549(%struct.gx_device_s* %1550, %struct.gs_fill_attributes_s* %fa, %struct.gs_fixed_point_s* %start2791, %struct.gs_fixed_point_s* %end2792, %struct.gs_fixed_point_s* %start2793, %struct.gs_fixed_point_s* %end2794, i32* %1551, i32* %1552, i32* %1553, i32* %1554) #6
  store i32 %call2799, i32* %code, align 4, !tbaa !6
  %1555 = load i32, i32* %code, align 4, !tbaa !6
  %cmp2800 = icmp eq i32 %1555, 0
  br i1 %cmp2800, label %if.then.2802, label %if.end.2803

if.then.2802:                                     ; preds = %if.else.2789
  store i32 -28, i32* %code, align 4, !tbaa !6
  br label %if.end.2803

if.end.2803:                                      ; preds = %if.then.2802, %if.else.2789
  br label %if.end.2804

if.end.2804:                                      ; preds = %if.end.2803, %if.end.2788
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.2805

cleanup.2805:                                     ; preds = %if.end.2804, %if.then.2706, %if.then.2563
  %1556 = bitcast i32* %hh to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1556) #1
  %1557 = bitcast %struct.gs_fixed_rect_s* %clip to i8*
  call void @llvm.lifetime.end(i64 16, i8* %1557) #1
  %1558 = bitcast %struct.gs_fill_attributes_s* %fa to i8*
  call void @llvm.lifetime.end(i64 48, i8* %1558) #1
  call void @llvm.lifetime.end(i64 1, i8* %m) #1
  call void @llvm.lifetime.end(i64 1, i8* %j) #1
  call void @llvm.lifetime.end(i64 1, i8* %i2544) #1
  call void @llvm.lifetime.end(i64 1, i8* %colors_mask) #1
  %1559 = bitcast [4 x i32*]* %cc to i8*
  call void @llvm.lifetime.end(i64 32, i8* %1559) #1
  %1560 = bitcast [4 x [64 x i32]]* %c2543 to i8*
  call void @llvm.lifetime.end(i64 1024, i8* %1560) #1
  %1561 = bitcast i32* %num_components2540 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1561) #1
  %cleanup.dest.2815 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.2815, label %cleanup.2842 [
    i32 0, label %cleanup.cont.2816
  ]

cleanup.cont.2816:                                ; preds = %cleanup.2805
  br label %if.end.2841

if.else.2817:                                     ; preds = %cond.end.2510
  %1562 = load %struct.gx_device_s*, %struct.gx_device_s** %ttdev, align 8, !tbaa !4
  %1563 = load i32, i32* %ybot, align 4, !tbaa !6
  %1564 = load i32, i32* %y0f, align 4, !tbaa !6
  %sub2818 = sub nsw i32 %1563, %1564
  %conv2819 = sext i32 %sub2818 to i64
  %cmp2820 = icmp sgt i64 %conv2819, 128
  br i1 %cmp2820, label %cond.true.2822, label %cond.false.2825

cond.true.2822:                                   ; preds = %if.else.2817
  %1565 = load i32, i32* %ybot, align 4, !tbaa !6
  %1566 = load i32, i32* %y0f, align 4, !tbaa !6
  %sub2823 = sub nsw i32 %1565, %1566
  %conv2824 = sext i32 %sub2823 to i64
  br label %cond.end.2826

cond.false.2825:                                  ; preds = %if.else.2817
  br label %cond.end.2826

cond.end.2826:                                    ; preds = %cond.false.2825, %cond.true.2822
  %cond2827 = phi i64 [ %conv2824, %cond.true.2822 ], [ 128, %cond.false.2825 ]
  %conv2828 = trunc i64 %cond2827 to i32
  %1567 = load i32, i32* %ytop, align 4, !tbaa !6
  %1568 = load i32, i32* %y0f, align 4, !tbaa !6
  %sub2829 = sub nsw i32 %1567, %1568
  %1569 = load i32, i32* %wh, align 4, !tbaa !6
  %shl2830 = shl i32 %1569, 8
  %cmp2831 = icmp slt i32 %sub2829, %shl2830
  br i1 %cmp2831, label %cond.true.2833, label %cond.false.2835

cond.true.2833:                                   ; preds = %cond.end.2826
  %1570 = load i32, i32* %ytop, align 4, !tbaa !6
  %1571 = load i32, i32* %y0f, align 4, !tbaa !6
  %sub2834 = sub nsw i32 %1570, %1571
  br label %cond.end.2837

cond.false.2835:                                  ; preds = %cond.end.2826
  %1572 = load i32, i32* %wh, align 4, !tbaa !6
  %shl2836 = shl i32 %1572, 8
  br label %cond.end.2837

cond.end.2837:                                    ; preds = %cond.false.2835, %cond.true.2833
  %cond2838 = phi i32 [ %sub2834, %cond.true.2833 ], [ %shl2836, %cond.false.2835 ]
  %1573 = load i32, i32* %swap_axes, align 4, !tbaa !6
  %log_op2839 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state, i32 0, i32 10
  %1574 = load i32, i32* %log_op2839, align 4, !tbaa !116
  %call2840 = call i32 @gx_default_fill_trapezoid(%struct.gx_device_s* %1562, %struct.gs_fixed_edge_s* %left2269, %struct.gs_fixed_edge_s* %right, i32 %conv2828, i32 %cond2838, i32 %1573, %struct.gx_device_color_s* %dev_color, i32 %1574) #6
  store i32 %call2840, i32* %code, align 4, !tbaa !6
  br label %if.end.2841

if.end.2841:                                      ; preds = %cond.end.2837, %cleanup.cont.2816
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.2842

cleanup.2842:                                     ; preds = %if.end.2841, %cleanup.2805
  %1575 = bitcast %struct.gx_device_s** %ttdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1575) #1
  %1576 = bitcast i32* %y0f to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1576) #1
  %1577 = bitcast i32* %x0f to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1577) #1
  %1578 = bitcast i32* %wh to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1578) #1
  %1579 = bitcast i32* %swap_axes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1579) #1
  %1580 = bitcast i32* %options to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1580) #1
  %1581 = bitcast i32* %ytop to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1581) #1
  %1582 = bitcast i32* %ybot to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1582) #1
  %1583 = bitcast %struct.gs_fixed_edge_s* %right to i8*
  call void @llvm.lifetime.end(i64 16, i8* %1583) #1
  %1584 = bitcast %struct.gs_fixed_edge_s* %left2269 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %1584) #1
  %cleanup.dest.2852 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.2852, label %cleanup.2860 [
    i32 0, label %cleanup.cont.2853
  ]

cleanup.cont.2853:                                ; preds = %cleanup.2842
  br label %sw.epilog.2855

sw.default.2854:                                  ; preds = %if.end.2251
  store i32 58, i32* %cleanup.dest.slot
  br label %cleanup.2860

sw.epilog.2855:                                   ; preds = %cleanup.cont.2853, %sw.bb.2265, %sw.bb.2260, %fill
  %1585 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8, !tbaa !4
  %cmp2856 = icmp ne %struct.gx_path_s* %1585, %path
  br i1 %cmp2856, label %if.then.2858, label %if.end.2859

if.then.2858:                                     ; preds = %sw.epilog.2855
  %1586 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8, !tbaa !4
  call void @gx_path_free(%struct.gx_path_s* %1586, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0)) #6
  br label %if.end.2859

if.end.2859:                                      ; preds = %if.then.2858, %sw.epilog.2855
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.2860

cleanup.2860:                                     ; preds = %sw.default.2854, %if.then.2249, %if.end.2859, %cleanup.2842, %if.then.2234
  %1587 = bitcast %struct.gx_path_s** %ppath to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1587) #1
  %1588 = bitcast %struct.gx_path_s* %fpath to i8*
  call void @llvm.lifetime.end(i64 128, i8* %1588) #1
  %cleanup.dest.2862 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.2862, label %cleanup.3226 [
    i32 0, label %cleanup.cont.2863
    i32 191, label %rgapto
    i32 58, label %bad_op
  ]

cleanup.cont.2863:                                ; preds = %cleanup.2860
  %1589 = load i32, i32* %in_path, align 4, !tbaa !6
  %tobool2864 = icmp ne i32 %1589, 0
  br i1 %tobool2864, label %if.then.2865, label %if.end.2874

if.then.2865:                                     ; preds = %cleanup.cont.2863
  %x2866 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %ppos, i32 0, i32 0
  %1590 = load i32, i32* %x2866, align 4, !tbaa !25
  %shr2867 = ashr i32 %1590, 8
  %rect2868 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 8
  %x2869 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect2868, i32 0, i32 0
  store i32 %shr2867, i32* %x2869, align 4, !tbaa !119
  %y2870 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %ppos, i32 0, i32 1
  %1591 = load i32, i32* %y2870, align 4, !tbaa !24
  %shr2871 = ashr i32 %1591, 8
  %rect2872 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 8
  %y2873 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect2872, i32 0, i32 1
  store i32 %shr2871, i32* %y2873, align 4, !tbaa !122
  store i32 0, i32* %in_path, align 4, !tbaa !6
  br label %if.end.2874

if.end.2874:                                      ; preds = %if.then.2865, %cleanup.cont.2863
  call void @gx_path_free(%struct.gx_path_s* %path, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0)) #6
  %1592 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %call2875 = call i32 @gx_path_init_local_shared(%struct.gx_path_s* %path, %struct.gx_path_s* null, %struct.gs_memory_s* %1592) #6
  %1593 = load i32, i32* %code, align 4, !tbaa !6
  %cmp2876 = icmp slt i32 %1593, 0
  br i1 %cmp2876, label %if.then.2878, label %if.end.2879

if.then.2878:                                     ; preds = %if.end.2874
  store i32 21, i32* %cleanup.dest.slot
  br label %cleanup.3226

if.end.2879:                                      ; preds = %if.end.2874
  store i32 22, i32* %cleanup.dest.slot
  br label %cleanup.3226

sw.default.2880:                                  ; preds = %if.end.129
  br label %bad_op

bad_op:                                           ; preds = %sw.default.3224, %sw.default.2880, %cleanup.2860, %cleanup.907, %cleanup.338, %sw.default.2107, %sw.default.2105, %if.then.1196, %sw.default.479
  %1594 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %call2881 = call i8* @gs_program_name() #6
  %call2882 = call i64 @gs_revision_number() #6
  call void @emprintf_program_ident(%struct.gs_memory_s* %1594, i8* %call2881, i64 %call2882) #6
  %1595 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  call void @mlprintf_file_and_line(%struct.gs_memory_s* %1595, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0), i32 2099) #6
  %1596 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %1597 = load i32, i32* %op, align 4, !tbaa !6
  %1598 = load i32, i32* %y0.addr, align 4, !tbaa !6
  %1599 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !4
  %call2883 = call i64 @stell(%struct.stream_s* %1599) #6
  %1600 = load i8*, i8** %cbp, align 8, !tbaa !4
  %data2884 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %cbuf, i32 0, i32 0
  %1601 = load i8*, i8** %data2884, align 8, !tbaa !11
  %sub.ptr.lhs.cast2885 = ptrtoint i8* %1600 to i64
  %sub.ptr.rhs.cast2886 = ptrtoint i8* %1601 to i64
  %sub.ptr.sub2887 = sub i64 %sub.ptr.lhs.cast2885, %sub.ptr.rhs.cast2886
  %conv2888 = trunc i64 %sub.ptr.sub2887 to i32
  %end2889 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %cbuf, i32 0, i32 4
  %1602 = load i8*, i8** %end2889, align 8, !tbaa !16
  %data2890 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %cbuf, i32 0, i32 0
  %1603 = load i8*, i8** %data2890, align 8, !tbaa !11
  %sub.ptr.lhs.cast2891 = ptrtoint i8* %1602 to i64
  %sub.ptr.rhs.cast2892 = ptrtoint i8* %1603 to i64
  %sub.ptr.sub2893 = sub i64 %sub.ptr.lhs.cast2891, %sub.ptr.rhs.cast2892
  %conv2894 = trunc i64 %sub.ptr.sub2893 to i32
  %call2895 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %1596, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i32 0, i32 0), i32 %1597, i32 %1598, i64 %call2883, i32 %conv2888, i32 %conv2894) #6
  %1604 = bitcast i8** %pp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1604) #1
  %data2896 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %cbuf, i32 0, i32 0
  %1605 = load i8*, i8** %data2896, align 8, !tbaa !11
  store i8* %1605, i8** %pp, align 8, !tbaa !4
  br label %for.cond.2897

for.cond.2897:                                    ; preds = %for.inc.2929, %bad_op
  %1606 = load i8*, i8** %pp, align 8, !tbaa !4
  %end2898 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %cbuf, i32 0, i32 4
  %1607 = load i8*, i8** %end2898, align 8, !tbaa !16
  %cmp2899 = icmp ult i8* %1606, %1607
  br i1 %cmp2899, label %for.body.2901, label %for.end.2931

for.body.2901:                                    ; preds = %for.cond.2897
  %1608 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  call void @dmprintf_file_and_line(%struct.gs_memory_s* %1608, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0), i32 2104) #6
  %1609 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %1610 = load i8*, i8** %pp, align 8, !tbaa !4
  %data2902 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %cbuf, i32 0, i32 0
  %1611 = load i8*, i8** %data2902, align 8, !tbaa !11
  %sub.ptr.lhs.cast2903 = ptrtoint i8* %1610 to i64
  %sub.ptr.rhs.cast2904 = ptrtoint i8* %1611 to i64
  %sub.ptr.sub2905 = sub i64 %sub.ptr.lhs.cast2903, %sub.ptr.rhs.cast2904
  %conv2906 = trunc i64 %sub.ptr.sub2905 to i32
  %call2907 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %1609, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 %conv2906) #6
  %1612 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %1613 = load i8*, i8** %pp, align 8, !tbaa !4
  %arrayidx2908 = getelementptr inbounds i8, i8* %1613, i64 0
  %1614 = load i8, i8* %arrayidx2908, align 1, !tbaa !1
  %conv2909 = zext i8 %1614 to i32
  %1615 = load i8*, i8** %pp, align 8, !tbaa !4
  %arrayidx2910 = getelementptr inbounds i8, i8* %1615, i64 1
  %1616 = load i8, i8* %arrayidx2910, align 1, !tbaa !1
  %conv2911 = zext i8 %1616 to i32
  %1617 = load i8*, i8** %pp, align 8, !tbaa !4
  %arrayidx2912 = getelementptr inbounds i8, i8* %1617, i64 2
  %1618 = load i8, i8* %arrayidx2912, align 1, !tbaa !1
  %conv2913 = zext i8 %1618 to i32
  %1619 = load i8*, i8** %pp, align 8, !tbaa !4
  %arrayidx2914 = getelementptr inbounds i8, i8* %1619, i64 3
  %1620 = load i8, i8* %arrayidx2914, align 1, !tbaa !1
  %conv2915 = zext i8 %1620 to i32
  %1621 = load i8*, i8** %pp, align 8, !tbaa !4
  %arrayidx2916 = getelementptr inbounds i8, i8* %1621, i64 4
  %1622 = load i8, i8* %arrayidx2916, align 1, !tbaa !1
  %conv2917 = zext i8 %1622 to i32
  %1623 = load i8*, i8** %pp, align 8, !tbaa !4
  %arrayidx2918 = getelementptr inbounds i8, i8* %1623, i64 5
  %1624 = load i8, i8* %arrayidx2918, align 1, !tbaa !1
  %conv2919 = zext i8 %1624 to i32
  %1625 = load i8*, i8** %pp, align 8, !tbaa !4
  %arrayidx2920 = getelementptr inbounds i8, i8* %1625, i64 6
  %1626 = load i8, i8* %arrayidx2920, align 1, !tbaa !1
  %conv2921 = zext i8 %1626 to i32
  %1627 = load i8*, i8** %pp, align 8, !tbaa !4
  %arrayidx2922 = getelementptr inbounds i8, i8* %1627, i64 7
  %1628 = load i8, i8* %arrayidx2922, align 1, !tbaa !1
  %conv2923 = zext i8 %1628 to i32
  %1629 = load i8*, i8** %pp, align 8, !tbaa !4
  %arrayidx2924 = getelementptr inbounds i8, i8* %1629, i64 8
  %1630 = load i8, i8* %arrayidx2924, align 1, !tbaa !1
  %conv2925 = zext i8 %1630 to i32
  %1631 = load i8*, i8** %pp, align 8, !tbaa !4
  %arrayidx2926 = getelementptr inbounds i8, i8* %1631, i64 9
  %1632 = load i8, i8* %arrayidx2926, align 1, !tbaa !1
  %conv2927 = zext i8 %1632 to i32
  %call2928 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %1612, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.9, i32 0, i32 0), i32 %conv2909, i32 %conv2911, i32 %conv2913, i32 %conv2915, i32 %conv2917, i32 %conv2919, i32 %conv2921, i32 %conv2923, i32 %conv2925, i32 %conv2927) #6
  br label %for.inc.2929

for.inc.2929:                                     ; preds = %for.body.2901
  %1633 = load i8*, i8** %pp, align 8, !tbaa !4
  %add.ptr2930 = getelementptr inbounds i8, i8* %1633, i64 10
  store i8* %add.ptr2930, i8** %pp, align 8, !tbaa !4
  br label %for.cond.2897

for.end.2931:                                     ; preds = %for.cond.2897
  %1634 = bitcast i8** %pp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1634) #1
  store i32 -100, i32* %code, align 4, !tbaa !6
  store i32 21, i32* %cleanup.dest.slot
  br label %cleanup.3226

sw.epilog.2932:                                   ; preds = %if.end.917, %if.end.614, %if.end.591, %sw.bb.554
  br label %do.body.2933

do.body.2933:                                     ; preds = %sw.epilog.2932
  br label %do.cond.2934

do.cond.2934:                                     ; preds = %do.body.2933
  br label %do.end.2935

do.end.2935:                                      ; preds = %do.cond.2934
  %1635 = load i32, i32* %op, align 4, !tbaa !6
  %shr2936 = ashr i32 %1635, 4
  switch i32 %shr2936, label %sw.default.3224 [
    i32 3, label %sw.bb.2937
    i32 4, label %sw.bb.2969
    i32 5, label %sw.bb.2969
    i32 6, label %sw.bb.3059
    i32 7, label %sw.bb.3084
    i32 8, label %sw.bb.3084
    i32 9, label %sw.bb.3103
    i32 10, label %sw.bb.3167
  ]

sw.bb.2937:                                       ; preds = %do.end.2935
  %rect2938 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 8
  %width2939 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect2938, i32 0, i32 2
  %1636 = load i32, i32* %width2939, align 4, !tbaa !120
  %cmp2940 = icmp eq i32 %1636, 0
  br i1 %cmp2940, label %land.lhs.true.2942, label %if.end.2968

land.lhs.true.2942:                               ; preds = %sw.bb.2937
  %rect2943 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 8
  %height2944 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect2943, i32 0, i32 3
  %1637 = load i32, i32* %height2944, align 4, !tbaa !121
  %cmp2945 = icmp eq i32 %1637, 0
  br i1 %cmp2945, label %land.lhs.true.2947, label %if.end.2968

land.lhs.true.2947:                               ; preds = %land.lhs.true.2942
  %rect2948 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 8
  %x2949 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect2948, i32 0, i32 0
  %1638 = load i32, i32* %x2949, align 4, !tbaa !119
  %cmp2950 = icmp eq i32 %1638, 0
  br i1 %cmp2950, label %land.lhs.true.2952, label %if.end.2968

land.lhs.true.2952:                               ; preds = %land.lhs.true.2947
  %rect2953 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 8
  %y2954 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect2953, i32 0, i32 1
  %1639 = load i32, i32* %y2954, align 4, !tbaa !122
  %cmp2955 = icmp eq i32 %1639, 0
  br i1 %cmp2955, label %if.then.2957, label %if.end.2968

if.then.2957:                                     ; preds = %land.lhs.true.2952
  %1640 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !4
  %procs2958 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1640, i32 0, i32 42
  %fillpage = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs2958, i32 0, i32 61
  %1641 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)** %fillpage, align 8, !tbaa !213
  %cmp2959 = icmp eq i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* %1641, null
  br i1 %cmp2959, label %cond.true.2961, label %cond.false.2962

cond.true.2961:                                   ; preds = %if.then.2957
  br label %cond.end.2966

cond.false.2962:                                  ; preds = %if.then.2957
  %1642 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !4
  %procs2963 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1642, i32 0, i32 42
  %fillpage2964 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs2963, i32 0, i32 61
  %1643 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)** %fillpage2964, align 8, !tbaa !213
  %1644 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !4
  %call2965 = call i32 %1643(%struct.gx_device_s* %1644, %struct.gs_imager_state_s* %imager_state, %struct.gx_device_color_s* %dev_color) #6
  br label %cond.end.2966

cond.end.2966:                                    ; preds = %cond.false.2962, %cond.true.2961
  %cond2967 = phi i32 [ 0, %cond.true.2961 ], [ %call2965, %cond.false.2962 ]
  store i32 %cond2967, i32* %code, align 4, !tbaa !6
  br label %sw.epilog.3225

if.end.2968:                                      ; preds = %land.lhs.true.2952, %land.lhs.true.2947, %land.lhs.true.2942, %sw.bb.2937
  br label %sw.bb.2969

sw.bb.2969:                                       ; preds = %do.end.2935, %do.end.2935, %if.end.2968
  %lop_enabled2970 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 10
  %1645 = load i16, i16* %lop_enabled2970, align 2, !tbaa !115
  %tobool2971 = icmp ne i16 %1645, 0
  br i1 %tobool2971, label %if.end.2987, label %if.then.2972

if.then.2972:                                     ; preds = %sw.bb.2969
  %1646 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !4
  %procs2973 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1646, i32 0, i32 42
  %fill_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs2973, i32 0, i32 7
  %1647 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rectangle, align 8, !tbaa !214
  %1648 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !4
  %rect2974 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 8
  %x2975 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect2974, i32 0, i32 0
  %1649 = load i32, i32* %x2975, align 4, !tbaa !119
  %1650 = load i32, i32* %x0.addr, align 4, !tbaa !6
  %sub2976 = sub nsw i32 %1649, %1650
  %rect2977 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 8
  %y2978 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect2977, i32 0, i32 1
  %1651 = load i32, i32* %y2978, align 4, !tbaa !122
  %1652 = load i32, i32* %y0.addr, align 4, !tbaa !6
  %sub2979 = sub nsw i32 %1651, %1652
  %rect2980 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 8
  %width2981 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect2980, i32 0, i32 2
  %1653 = load i32, i32* %width2981, align 4, !tbaa !120
  %rect2982 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 8
  %height2983 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect2982, i32 0, i32 3
  %1654 = load i32, i32* %height2983, align 4, !tbaa !121
  %colors2984 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 0
  %arrayidx2985 = getelementptr inbounds [2 x i64], [2 x i64]* %colors2984, i32 0, i64 1
  %1655 = load i64, i64* %arrayidx2985, align 8, !tbaa !27
  %call2986 = call i32 %1647(%struct.gx_device_s* %1648, i32 %sub2976, i32 %sub2979, i32 %1653, i32 %1654, i64 %1655) #6
  store i32 %call2986, i32* %code, align 4, !tbaa !6
  br label %sw.epilog.3225

if.end.2987:                                      ; preds = %sw.bb.2969
  store i8* null, i8** %source, align 8, !tbaa !4
  store i32 0, i32* %data_x, align 4, !tbaa !6
  store i32 0, i32* %raster, align 4, !tbaa !6
  %colors2988 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 0
  %arrayidx2989 = getelementptr inbounds [2 x i64], [2 x i64]* %colors2988, i32 0, i64 1
  %1656 = load i64, i64* %arrayidx2989, align 8, !tbaa !27
  %arrayidx2990 = getelementptr inbounds [2 x i64], [2 x i64]* %colors111, i32 0, i64 1
  store i64 %1656, i64* %arrayidx2990, align 8, !tbaa !27
  %arrayidx2991 = getelementptr inbounds [2 x i64], [2 x i64]* %colors111, i32 0, i64 0
  store i64 %1656, i64* %arrayidx2991, align 8, !tbaa !27
  %lop2992 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 9
  %1657 = load i32, i32* %lop2992, align 4, !tbaa !114
  store i32 %1657, i32* %log_op, align 4, !tbaa !6
  %arraydecay2993 = getelementptr inbounds [2 x i64], [2 x i64]* %colors111, i32 0, i32 0
  store i64* %arraydecay2993, i64** %pcolor, align 8, !tbaa !4
  br label %do_rop

do_rop:                                           ; preds = %if.then.3207, %if.then.3106, %if.end.2987
  %1658 = load i32, i32* %plane_height, align 4, !tbaa !6
  %cmp2994 = icmp eq i32 %1658, 0
  br i1 %cmp2994, label %if.then.2996, label %if.else.3027

if.then.2996:                                     ; preds = %do_rop
  %1659 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !4
  %procs2997 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1659, i32 0, i32 42
  %strip_copy_rop = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs2997, i32 0, i32 35
  %1660 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)** %strip_copy_rop, align 8, !tbaa !215
  %1661 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !4
  %1662 = load i8*, i8** %source, align 8, !tbaa !4
  %1663 = load i32, i32* %data_x, align 4, !tbaa !6
  %1664 = load i32, i32* %raster, align 4, !tbaa !6
  %1665 = load i64*, i64** %pcolor, align 8, !tbaa !4
  %tile_colors2998 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 6
  %arrayidx2999 = getelementptr inbounds [2 x i64], [2 x i64]* %tile_colors2998, i32 0, i64 0
  %1666 = load i64, i64* %arrayidx2999, align 8, !tbaa !27
  %cmp3000 = icmp eq i64 %1666, -1
  br i1 %cmp3000, label %land.lhs.true.3002, label %cond.false.3008

land.lhs.true.3002:                               ; preds = %if.then.2996
  %tile_colors3003 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 6
  %arrayidx3004 = getelementptr inbounds [2 x i64], [2 x i64]* %tile_colors3003, i32 0, i64 1
  %1667 = load i64, i64* %arrayidx3004, align 8, !tbaa !27
  %cmp3005 = icmp eq i64 %1667, -1
  br i1 %cmp3005, label %cond.true.3007, label %cond.false.3008

cond.true.3007:                                   ; preds = %land.lhs.true.3002
  br label %cond.end.3011

cond.false.3008:                                  ; preds = %land.lhs.true.3002, %if.then.2996
  %tile_colors3009 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 6
  %arraydecay3010 = getelementptr inbounds [2 x i64], [2 x i64]* %tile_colors3009, i32 0, i32 0
  br label %cond.end.3011

cond.end.3011:                                    ; preds = %cond.false.3008, %cond.true.3007
  %cond3012 = phi i64* [ null, %cond.true.3007 ], [ %arraydecay3010, %cond.false.3008 ]
  %rect3013 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 8
  %x3014 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect3013, i32 0, i32 0
  %1668 = load i32, i32* %x3014, align 4, !tbaa !119
  %1669 = load i32, i32* %x0.addr, align 4, !tbaa !6
  %sub3015 = sub nsw i32 %1668, %1669
  %rect3016 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 8
  %y3017 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect3016, i32 0, i32 1
  %1670 = load i32, i32* %y3017, align 4, !tbaa !122
  %1671 = load i32, i32* %y0.addr, align 4, !tbaa !6
  %sub3018 = sub nsw i32 %1670, %1671
  %rect3019 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 8
  %width3020 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect3019, i32 0, i32 2
  %1672 = load i32, i32* %width3020, align 4, !tbaa !120
  %1673 = load i32, i32* %data_x, align 4, !tbaa !6
  %sub3021 = sub nsw i32 %1672, %1673
  %rect3022 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 8
  %height3023 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect3022, i32 0, i32 3
  %1674 = load i32, i32* %height3023, align 4, !tbaa !121
  %x3024 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %tile_phase, i32 0, i32 0
  %1675 = load i32, i32* %x3024, align 4, !tbaa !39
  %y3025 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %tile_phase, i32 0, i32 1
  %1676 = load i32, i32* %y3025, align 4, !tbaa !40
  %1677 = load i32, i32* %log_op, align 4, !tbaa !6
  %call3026 = call i32 %1660(%struct.gx_device_s* %1661, i8* %1662, i32 %1663, i32 %1664, i64 0, i64* %1665, %struct.gx_strip_bitmap_s* %state_tile, i64* %cond3012, i32 %sub3015, i32 %sub3018, i32 %sub3021, i32 %1674, i32 %1675, i32 %1676, i32 %1677) #6
  store i32 %call3026, i32* %code, align 4, !tbaa !6
  br label %if.end.3058

if.else.3027:                                     ; preds = %do_rop
  %1678 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !4
  %procs3028 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1678, i32 0, i32 42
  %strip_copy_rop2 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs3028, i32 0, i32 69
  %1679 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)** %strip_copy_rop2, align 8, !tbaa !216
  %1680 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !4
  %1681 = load i8*, i8** %source, align 8, !tbaa !4
  %1682 = load i32, i32* %data_x, align 4, !tbaa !6
  %1683 = load i32, i32* %raster, align 4, !tbaa !6
  %1684 = load i64*, i64** %pcolor, align 8, !tbaa !4
  %tile_colors3029 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 6
  %arrayidx3030 = getelementptr inbounds [2 x i64], [2 x i64]* %tile_colors3029, i32 0, i64 0
  %1685 = load i64, i64* %arrayidx3030, align 8, !tbaa !27
  %cmp3031 = icmp eq i64 %1685, -1
  br i1 %cmp3031, label %land.lhs.true.3033, label %cond.false.3039

land.lhs.true.3033:                               ; preds = %if.else.3027
  %tile_colors3034 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 6
  %arrayidx3035 = getelementptr inbounds [2 x i64], [2 x i64]* %tile_colors3034, i32 0, i64 1
  %1686 = load i64, i64* %arrayidx3035, align 8, !tbaa !27
  %cmp3036 = icmp eq i64 %1686, -1
  br i1 %cmp3036, label %cond.true.3038, label %cond.false.3039

cond.true.3038:                                   ; preds = %land.lhs.true.3033
  br label %cond.end.3042

cond.false.3039:                                  ; preds = %land.lhs.true.3033, %if.else.3027
  %tile_colors3040 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 6
  %arraydecay3041 = getelementptr inbounds [2 x i64], [2 x i64]* %tile_colors3040, i32 0, i32 0
  br label %cond.end.3042

cond.end.3042:                                    ; preds = %cond.false.3039, %cond.true.3038
  %cond3043 = phi i64* [ null, %cond.true.3038 ], [ %arraydecay3041, %cond.false.3039 ]
  %rect3044 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 8
  %x3045 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect3044, i32 0, i32 0
  %1687 = load i32, i32* %x3045, align 4, !tbaa !119
  %1688 = load i32, i32* %x0.addr, align 4, !tbaa !6
  %sub3046 = sub nsw i32 %1687, %1688
  %rect3047 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 8
  %y3048 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect3047, i32 0, i32 1
  %1689 = load i32, i32* %y3048, align 4, !tbaa !122
  %1690 = load i32, i32* %y0.addr, align 4, !tbaa !6
  %sub3049 = sub nsw i32 %1689, %1690
  %rect3050 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 8
  %width3051 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect3050, i32 0, i32 2
  %1691 = load i32, i32* %width3051, align 4, !tbaa !120
  %1692 = load i32, i32* %data_x, align 4, !tbaa !6
  %sub3052 = sub nsw i32 %1691, %1692
  %rect3053 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 8
  %height3054 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect3053, i32 0, i32 3
  %1693 = load i32, i32* %height3054, align 4, !tbaa !121
  %x3055 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %tile_phase, i32 0, i32 0
  %1694 = load i32, i32* %x3055, align 4, !tbaa !39
  %y3056 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %tile_phase, i32 0, i32 1
  %1695 = load i32, i32* %y3056, align 4, !tbaa !40
  %1696 = load i32, i32* %log_op, align 4, !tbaa !6
  %1697 = load i32, i32* %plane_height, align 4, !tbaa !6
  %call3057 = call i32 %1679(%struct.gx_device_s* %1680, i8* %1681, i32 %1682, i32 %1683, i64 0, i64* %1684, %struct.gx_strip_bitmap_s* %state_tile, i64* %cond3043, i32 %sub3046, i32 %sub3049, i32 %sub3052, i32 %1693, i32 %1694, i32 %1695, i32 %1696, i32 %1697) #6
  store i32 %call3057, i32* %code, align 4, !tbaa !6
  store i32 0, i32* %plane_height, align 4, !tbaa !6
  br label %if.end.3058

if.end.3058:                                      ; preds = %cond.end.3042, %cond.end.3011
  store i32 0, i32* %data_x, align 4, !tbaa !6
  br label %sw.epilog.3225

sw.bb.3059:                                       ; preds = %do.end.2935
  %rect3060 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 8
  %width3061 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect3060, i32 0, i32 2
  %1698 = load i32, i32* %width3061, align 4, !tbaa !120
  %cmp3062 = icmp eq i32 %1698, 0
  br i1 %cmp3062, label %land.lhs.true.3064, label %if.end.3083

land.lhs.true.3064:                               ; preds = %sw.bb.3059
  %rect3065 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 8
  %height3066 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect3065, i32 0, i32 3
  %1699 = load i32, i32* %height3066, align 4, !tbaa !121
  %cmp3067 = icmp eq i32 %1699, 0
  br i1 %cmp3067, label %land.lhs.true.3069, label %if.end.3083

land.lhs.true.3069:                               ; preds = %land.lhs.true.3064
  %rect3070 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 8
  %x3071 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect3070, i32 0, i32 0
  %1700 = load i32, i32* %x3071, align 4, !tbaa !119
  %cmp3072 = icmp eq i32 %1700, 0
  br i1 %cmp3072, label %land.lhs.true.3074, label %if.end.3083

land.lhs.true.3074:                               ; preds = %land.lhs.true.3069
  %rect3075 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 8
  %y3076 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect3075, i32 0, i32 1
  %1701 = load i32, i32* %y3076, align 4, !tbaa !122
  %cmp3077 = icmp eq i32 %1701, 0
  br i1 %cmp3077, label %if.then.3079, label %if.end.3083

if.then.3079:                                     ; preds = %land.lhs.true.3074
  %1702 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !4
  %procs3080 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1702, i32 0, i32 42
  %fillpage3081 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs3080, i32 0, i32 61
  %1703 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)** %fillpage3081, align 8, !tbaa !213
  %1704 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !4
  %call3082 = call i32 %1703(%struct.gx_device_s* %1704, %struct.gs_imager_state_s* %imager_state, %struct.gx_device_color_s* %dev_color) #6
  store i32 %call3082, i32* %code, align 4, !tbaa !6
  br label %sw.epilog.3225

if.end.3083:                                      ; preds = %land.lhs.true.3074, %land.lhs.true.3069, %land.lhs.true.3064, %sw.bb.3059
  br label %sw.bb.3084

sw.bb.3084:                                       ; preds = %do.end.2935, %do.end.2935, %if.end.3083
  %1705 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !4
  %procs3085 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1705, i32 0, i32 42
  %strip_tile_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs3085, i32 0, i32 34
  %1706 = load i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)** %strip_tile_rectangle, align 8, !tbaa !217
  %1707 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !4
  %rect3086 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 8
  %x3087 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect3086, i32 0, i32 0
  %1708 = load i32, i32* %x3087, align 4, !tbaa !119
  %1709 = load i32, i32* %x0.addr, align 4, !tbaa !6
  %sub3088 = sub nsw i32 %1708, %1709
  %rect3089 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 8
  %y3090 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect3089, i32 0, i32 1
  %1710 = load i32, i32* %y3090, align 4, !tbaa !122
  %1711 = load i32, i32* %y0.addr, align 4, !tbaa !6
  %sub3091 = sub nsw i32 %1710, %1711
  %rect3092 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 8
  %width3093 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect3092, i32 0, i32 2
  %1712 = load i32, i32* %width3093, align 4, !tbaa !120
  %rect3094 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 8
  %height3095 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect3094, i32 0, i32 3
  %1713 = load i32, i32* %height3095, align 4, !tbaa !121
  %tile_colors3096 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 6
  %arrayidx3097 = getelementptr inbounds [2 x i64], [2 x i64]* %tile_colors3096, i32 0, i64 0
  %1714 = load i64, i64* %arrayidx3097, align 8, !tbaa !27
  %tile_colors3098 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 6
  %arrayidx3099 = getelementptr inbounds [2 x i64], [2 x i64]* %tile_colors3098, i32 0, i64 1
  %1715 = load i64, i64* %arrayidx3099, align 8, !tbaa !27
  %x3100 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %tile_phase, i32 0, i32 0
  %1716 = load i32, i32* %x3100, align 4, !tbaa !39
  %y3101 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %tile_phase, i32 0, i32 1
  %1717 = load i32, i32* %y3101, align 4, !tbaa !40
  %call3102 = call i32 %1706(%struct.gx_device_s* %1707, %struct.gx_strip_bitmap_s* %state_tile, i32 %sub3088, i32 %sub3091, i32 %1712, i32 %1713, i64 %1714, i64 %1715, i32 %1716, i32 %1717) #6
  store i32 %call3102, i32* %code, align 4, !tbaa !6
  br label %sw.epilog.3225

sw.bb.3103:                                       ; preds = %do.end.2935
  %lop_enabled3104 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 10
  %1718 = load i16, i16* %lop_enabled3104, align 2, !tbaa !115
  %tobool3105 = icmp ne i16 %1718, 0
  br i1 %tobool3105, label %if.then.3106, label %if.end.3110

if.then.3106:                                     ; preds = %sw.bb.3103
  %colors3107 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 0
  %arraydecay3108 = getelementptr inbounds [2 x i64], [2 x i64]* %colors3107, i32 0, i32 0
  store i64* %arraydecay3108, i64** %pcolor, align 8, !tbaa !4
  %lop3109 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 9
  %1719 = load i32, i32* %lop3109, align 4, !tbaa !114
  store i32 %1719, i32* %log_op, align 4, !tbaa !6
  br label %do_rop

if.end.3110:                                      ; preds = %sw.bb.3103
  %1720 = load i32, i32* %op, align 4, !tbaa !6
  %and3111 = and i32 %1720, 8
  %tobool3112 = icmp ne i32 %and3111, 0
  br i1 %tobool3112, label %if.then.3116, label %lor.lhs.false.3113

lor.lhs.false.3113:                               ; preds = %if.end.3110
  %1721 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath, align 8, !tbaa !4
  %cmp3114 = icmp ne %struct.gx_clip_path_s* %1721, null
  br i1 %cmp3114, label %if.then.3116, label %if.else.3130

if.then.3116:                                     ; preds = %lor.lhs.false.3113, %if.end.3110
  %1722 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !4
  %1723 = load i8*, i8** %source, align 8, !tbaa !4
  %1724 = load i32, i32* %data_x, align 4, !tbaa !6
  %1725 = load i32, i32* %raster, align 4, !tbaa !6
  %rect3117 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 8
  %x3118 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect3117, i32 0, i32 0
  %1726 = load i32, i32* %x3118, align 4, !tbaa !119
  %1727 = load i32, i32* %x0.addr, align 4, !tbaa !6
  %sub3119 = sub nsw i32 %1726, %1727
  %rect3120 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 8
  %y3121 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect3120, i32 0, i32 1
  %1728 = load i32, i32* %y3121, align 4, !tbaa !122
  %1729 = load i32, i32* %y0.addr, align 4, !tbaa !6
  %sub3122 = sub nsw i32 %1728, %1729
  %rect3123 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 8
  %width3124 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect3123, i32 0, i32 2
  %1730 = load i32, i32* %width3124, align 4, !tbaa !120
  %1731 = load i32, i32* %data_x, align 4, !tbaa !6
  %sub3125 = sub nsw i32 %1730, %1731
  %rect3126 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 8
  %height3127 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect3126, i32 0, i32 3
  %1732 = load i32, i32* %height3127, align 4, !tbaa !121
  %log_op3128 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state, i32 0, i32 10
  %1733 = load i32, i32* %log_op3128, align 4, !tbaa !116
  %1734 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath, align 8, !tbaa !4
  %call3129 = call i32 @gx_image_fill_masked(%struct.gx_device_s* %1722, i8* %1723, i32 %1724, i32 %1725, i64 0, i32 %sub3119, i32 %sub3122, i32 %sub3125, i32 %1732, %struct.gx_device_color_s* %dev_color, i32 1, i32 %1733, %struct.gx_clip_path_s* %1734) #6
  store i32 %call3129, i32* %code, align 4, !tbaa !6
  br label %if.end.3166

if.else.3130:                                     ; preds = %lor.lhs.false.3113
  %1735 = load i32, i32* %plane_height, align 4, !tbaa !6
  %cmp3131 = icmp eq i32 %1735, 0
  br i1 %cmp3131, label %if.then.3133, label %if.else.3151

if.then.3133:                                     ; preds = %if.else.3130
  %1736 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !4
  %procs3134 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1736, i32 0, i32 42
  %copy_mono = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs3134, i32 0, i32 9
  %1737 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** %copy_mono, align 8, !tbaa !218
  %1738 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !4
  %1739 = load i8*, i8** %source, align 8, !tbaa !4
  %1740 = load i32, i32* %data_x, align 4, !tbaa !6
  %1741 = load i32, i32* %raster, align 4, !tbaa !6
  %rect3135 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 8
  %x3136 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect3135, i32 0, i32 0
  %1742 = load i32, i32* %x3136, align 4, !tbaa !119
  %1743 = load i32, i32* %x0.addr, align 4, !tbaa !6
  %sub3137 = sub nsw i32 %1742, %1743
  %rect3138 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 8
  %y3139 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect3138, i32 0, i32 1
  %1744 = load i32, i32* %y3139, align 4, !tbaa !122
  %1745 = load i32, i32* %y0.addr, align 4, !tbaa !6
  %sub3140 = sub nsw i32 %1744, %1745
  %rect3141 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 8
  %width3142 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect3141, i32 0, i32 2
  %1746 = load i32, i32* %width3142, align 4, !tbaa !120
  %1747 = load i32, i32* %data_x, align 4, !tbaa !6
  %sub3143 = sub nsw i32 %1746, %1747
  %rect3144 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 8
  %height3145 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect3144, i32 0, i32 3
  %1748 = load i32, i32* %height3145, align 4, !tbaa !121
  %colors3146 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 0
  %arrayidx3147 = getelementptr inbounds [2 x i64], [2 x i64]* %colors3146, i32 0, i64 0
  %1749 = load i64, i64* %arrayidx3147, align 8, !tbaa !27
  %colors3148 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 0
  %arrayidx3149 = getelementptr inbounds [2 x i64], [2 x i64]* %colors3148, i32 0, i64 1
  %1750 = load i64, i64* %arrayidx3149, align 8, !tbaa !27
  %call3150 = call i32 %1737(%struct.gx_device_s* %1738, i8* %1739, i32 %1740, i32 %1741, i64 0, i32 %sub3137, i32 %sub3140, i32 %sub3143, i32 %1748, i64 %1749, i64 %1750) #6
  store i32 %call3150, i32* %code, align 4, !tbaa !6
  br label %if.end.3165

if.else.3151:                                     ; preds = %if.else.3130
  %1751 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !4
  %procs3152 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1751, i32 0, i32 42
  %copy_planes = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs3152, i32 0, i32 66
  %1752 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)** %copy_planes, align 8, !tbaa !219
  %1753 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !4
  %1754 = load i8*, i8** %source, align 8, !tbaa !4
  %1755 = load i32, i32* %data_x, align 4, !tbaa !6
  %1756 = load i32, i32* %raster, align 4, !tbaa !6
  %rect3153 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 8
  %x3154 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect3153, i32 0, i32 0
  %1757 = load i32, i32* %x3154, align 4, !tbaa !119
  %1758 = load i32, i32* %x0.addr, align 4, !tbaa !6
  %sub3155 = sub nsw i32 %1757, %1758
  %rect3156 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 8
  %y3157 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect3156, i32 0, i32 1
  %1759 = load i32, i32* %y3157, align 4, !tbaa !122
  %1760 = load i32, i32* %y0.addr, align 4, !tbaa !6
  %sub3158 = sub nsw i32 %1759, %1760
  %rect3159 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 8
  %width3160 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect3159, i32 0, i32 2
  %1761 = load i32, i32* %width3160, align 4, !tbaa !120
  %1762 = load i32, i32* %data_x, align 4, !tbaa !6
  %sub3161 = sub nsw i32 %1761, %1762
  %rect3162 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 8
  %height3163 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect3162, i32 0, i32 3
  %1763 = load i32, i32* %height3163, align 4, !tbaa !121
  %1764 = load i32, i32* %plane_height, align 4, !tbaa !6
  %call3164 = call i32 %1752(%struct.gx_device_s* %1753, i8* %1754, i32 %1755, i32 %1756, i64 0, i32 %sub3155, i32 %sub3158, i32 %sub3161, i32 %1763, i32 %1764) #6
  store i32 %call3164, i32* %code, align 4, !tbaa !6
  br label %if.end.3165

if.end.3165:                                      ; preds = %if.else.3151, %if.then.3133
  br label %if.end.3166

if.end.3166:                                      ; preds = %if.end.3165, %if.then.3116
  store i32 0, i32* %plane_height, align 4, !tbaa !6
  store i32 0, i32* %data_x, align 4, !tbaa !6
  br label %sw.epilog.3225

sw.bb.3167:                                       ; preds = %do.end.2935
  %color_is_alpha3168 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 12
  %1765 = load i32, i32* %color_is_alpha3168, align 4, !tbaa !118
  %tobool3169 = icmp ne i32 %1765, 0
  br i1 %tobool3169, label %if.then.3170, label %if.else.3204

if.then.3170:                                     ; preds = %sw.bb.3167
  %color_is_devn3171 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 13
  %1766 = load i32, i32* %color_is_devn3171, align 4, !tbaa !179
  %tobool3172 = icmp ne i32 %1766, 0
  br i1 %tobool3172, label %if.then.3173, label %if.else.3187

if.then.3173:                                     ; preds = %if.then.3170
  %1767 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !4
  %procs3174 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1767, i32 0, i32 42
  %copy_alpha_hl_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs3174, i32 0, i32 71
  %1768 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)** %copy_alpha_hl_color, align 8, !tbaa !220
  %1769 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !4
  %1770 = load i8*, i8** %source, align 8, !tbaa !4
  %1771 = load i32, i32* %data_x, align 4, !tbaa !6
  %1772 = load i32, i32* %raster, align 4, !tbaa !6
  %rect3175 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 8
  %x3176 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect3175, i32 0, i32 0
  %1773 = load i32, i32* %x3176, align 4, !tbaa !119
  %1774 = load i32, i32* %x0.addr, align 4, !tbaa !6
  %sub3177 = sub nsw i32 %1773, %1774
  %rect3178 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 8
  %y3179 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect3178, i32 0, i32 1
  %1775 = load i32, i32* %y3179, align 4, !tbaa !122
  %1776 = load i32, i32* %y0.addr, align 4, !tbaa !6
  %sub3180 = sub nsw i32 %1775, %1776
  %rect3181 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 8
  %width3182 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect3181, i32 0, i32 2
  %1777 = load i32, i32* %width3182, align 4, !tbaa !120
  %1778 = load i32, i32* %data_x, align 4, !tbaa !6
  %sub3183 = sub nsw i32 %1777, %1778
  %rect3184 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 8
  %height3185 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect3184, i32 0, i32 3
  %1779 = load i32, i32* %height3185, align 4, !tbaa !121
  %1780 = load i32, i32* %depth, align 4, !tbaa !6
  %call3186 = call i32 %1768(%struct.gx_device_s* %1769, i8* %1770, i32 %1771, i32 %1772, i64 0, i32 %sub3177, i32 %sub3180, i32 %sub3183, i32 %1779, %struct.gx_device_color_s* %dev_color, i32 %1780) #6
  store i32 %call3186, i32* %code, align 4, !tbaa !6
  br label %if.end.3203

if.else.3187:                                     ; preds = %if.then.3170
  %1781 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !4
  %procs3188 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1781, i32 0, i32 42
  %copy_alpha = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs3188, i32 0, i32 21
  %1782 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)** %copy_alpha, align 8, !tbaa !221
  %1783 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !4
  %1784 = load i8*, i8** %source, align 8, !tbaa !4
  %1785 = load i32, i32* %data_x, align 4, !tbaa !6
  %1786 = load i32, i32* %raster, align 4, !tbaa !6
  %rect3189 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 8
  %x3190 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect3189, i32 0, i32 0
  %1787 = load i32, i32* %x3190, align 4, !tbaa !119
  %1788 = load i32, i32* %x0.addr, align 4, !tbaa !6
  %sub3191 = sub nsw i32 %1787, %1788
  %rect3192 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 8
  %y3193 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect3192, i32 0, i32 1
  %1789 = load i32, i32* %y3193, align 4, !tbaa !122
  %1790 = load i32, i32* %y0.addr, align 4, !tbaa !6
  %sub3194 = sub nsw i32 %1789, %1790
  %rect3195 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 8
  %width3196 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect3195, i32 0, i32 2
  %1791 = load i32, i32* %width3196, align 4, !tbaa !120
  %1792 = load i32, i32* %data_x, align 4, !tbaa !6
  %sub3197 = sub nsw i32 %1791, %1792
  %rect3198 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 8
  %height3199 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect3198, i32 0, i32 3
  %1793 = load i32, i32* %height3199, align 4, !tbaa !121
  %colors3200 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 0
  %arrayidx3201 = getelementptr inbounds [2 x i64], [2 x i64]* %colors3200, i32 0, i64 1
  %1794 = load i64, i64* %arrayidx3201, align 8, !tbaa !27
  %1795 = load i32, i32* %depth, align 4, !tbaa !6
  %call3202 = call i32 %1782(%struct.gx_device_s* %1783, i8* %1784, i32 %1785, i32 %1786, i64 0, i32 %sub3191, i32 %sub3194, i32 %sub3197, i32 %1793, i64 %1794, i32 %1795) #6
  store i32 %call3202, i32* %code, align 4, !tbaa !6
  br label %if.end.3203

if.end.3203:                                      ; preds = %if.else.3187, %if.then.3173
  br label %if.end.3223

if.else.3204:                                     ; preds = %sw.bb.3167
  %lop_enabled3205 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 10
  %1796 = load i16, i16* %lop_enabled3205, align 2, !tbaa !115
  %tobool3206 = icmp ne i16 %1796, 0
  br i1 %tobool3206, label %if.then.3207, label %if.end.3209

if.then.3207:                                     ; preds = %if.else.3204
  store i64* null, i64** %pcolor, align 8, !tbaa !4
  %lop3208 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 9
  %1797 = load i32, i32* %lop3208, align 4, !tbaa !114
  store i32 %1797, i32* %log_op, align 4, !tbaa !6
  br label %do_rop

if.end.3209:                                      ; preds = %if.else.3204
  %1798 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !4
  %procs3210 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1798, i32 0, i32 42
  %copy_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs3210, i32 0, i32 10
  %1799 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)** %copy_color, align 8, !tbaa !222
  %1800 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !4
  %1801 = load i8*, i8** %source, align 8, !tbaa !4
  %1802 = load i32, i32* %data_x, align 4, !tbaa !6
  %1803 = load i32, i32* %raster, align 4, !tbaa !6
  %rect3211 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 8
  %x3212 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect3211, i32 0, i32 0
  %1804 = load i32, i32* %x3212, align 4, !tbaa !119
  %1805 = load i32, i32* %x0.addr, align 4, !tbaa !6
  %sub3213 = sub nsw i32 %1804, %1805
  %rect3214 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 8
  %y3215 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect3214, i32 0, i32 1
  %1806 = load i32, i32* %y3215, align 4, !tbaa !122
  %1807 = load i32, i32* %y0.addr, align 4, !tbaa !6
  %sub3216 = sub nsw i32 %1806, %1807
  %rect3217 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 8
  %width3218 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect3217, i32 0, i32 2
  %1808 = load i32, i32* %width3218, align 4, !tbaa !120
  %1809 = load i32, i32* %data_x, align 4, !tbaa !6
  %sub3219 = sub nsw i32 %1808, %1809
  %rect3220 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %state, i32 0, i32 8
  %height3221 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect3220, i32 0, i32 3
  %1810 = load i32, i32* %height3221, align 4, !tbaa !121
  %call3222 = call i32 %1799(%struct.gx_device_s* %1800, i8* %1801, i32 %1802, i32 %1803, i64 0, i32 %sub3213, i32 %sub3216, i32 %sub3219, i32 %1810) #6
  store i32 %call3222, i32* %code, align 4, !tbaa !6
  br label %if.end.3223

if.end.3223:                                      ; preds = %if.end.3209, %if.end.3203
  store i32 0, i32* %data_x, align 4, !tbaa !6
  br label %sw.epilog.3225

sw.default.3224:                                  ; preds = %do.end.2935
  br label %bad_op

sw.epilog.3225:                                   ; preds = %if.end.3223, %if.end.3166, %sw.bb.3084, %if.then.3079, %if.end.3058, %if.then.2972, %cond.end.2966
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.3226

cleanup.3226:                                     ; preds = %for.end.2931, %if.then.2878, %if.then.1953, %if.then.1917, %if.then.1691, %if.then.1687, %if.then.1672, %if.then.1507, %if.then.1387, %if.then.1361, %if.then.1336, %if.then.1253, %if.end.1197, %if.then.1127, %if.then.1075, %do.end.356, %if.then.187, %if.then.140, %sw.epilog.3225, %if.end.2879, %cleanup.2860, %cleanup.cont.2230, %cleanup.2228, %sw.epilog.2108, %cleanup.2096, %cleanup.1941, %cleanup.1911, %if.end.1673, %cleanup.1621, %if.then.1568, %if.end.1508, %cleanup.1478, %if.end.1388, %cleanup.cont.1246, %cleanup.1244, %if.end.1076, %do.end.1063, %do.end.1058, %if.end.1039, %cleanup.907, %do.end.553, %do.end.478, %do.end.473, %do.end.469, %do.end.352, %do.end.346, %cleanup.cont, %cleanup.338, %do.end.245, %if.end.141, %do.end.133, %if.then.126, %if.then.119
  %1811 = bitcast i32* %log_op to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1811) #1
  %1812 = bitcast %struct.gx_device_color_s** %pdcolor to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1812) #1
  %1813 = bitcast i64** %pcolor to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1813) #1
  %1814 = bitcast [2 x i64]* %colors111 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %1814) #1
  %1815 = bitcast i8** %source to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1815) #1
  %1816 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1816) #1
  %1817 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1817) #1
  %1818 = bitcast i32* %compress to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1818) #1
  %cleanup.dest.3234 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.3234, label %cleanup.3367 [
    i32 0, label %cleanup.cont.3235
    i32 23, label %while.end.3236
    i32 22, label %while.cond
    i32 21, label %out
  ]

cleanup.cont.3235:                                ; preds = %cleanup.3226
  br label %while.cond

while.end.3236:                                   ; preds = %cleanup.3226, %while.cond
  br label %out

out:                                              ; preds = %while.end.3236, %cleanup.3226, %if.then.108, %if.then.102, %if.then.86
  %pbuff = getelementptr inbounds %struct.ht_buff_s, %struct.ht_buff_s* %ht_buff, i32 0, i32 3
  %1819 = load i8*, i8** %pbuff, align 8, !tbaa !223
  %cmp3237 = icmp ne i8* %1819, null
  br i1 %cmp3237, label %if.then.3239, label %if.end.3244

if.then.3239:                                     ; preds = %out
  %1820 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %procs3240 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %1820, i32 0, i32 1
  %free_object3241 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs3240, i32 0, i32 2
  %1821 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object3241, align 8, !tbaa !172
  %1822 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %pbuff3242 = getelementptr inbounds %struct.ht_buff_s, %struct.ht_buff_s* %ht_buff, i32 0, i32 3
  %1823 = load i8*, i8** %pbuff3242, align 8, !tbaa !223
  call void %1821(%struct.gs_memory_s* %1822, i8* %1823, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i32 0, i32 0)) #6
  %pbuff3243 = getelementptr inbounds %struct.ht_buff_s, %struct.ht_buff_s* %ht_buff, i32 0, i32 3
  store i8* null, i8** %pbuff3243, align 8, !tbaa !223
  %pcurr = getelementptr inbounds %struct.ht_buff_s, %struct.ht_buff_s* %ht_buff, i32 0, i32 2
  store i8* null, i8** %pcurr, align 8, !tbaa !225
  br label %if.end.3244

if.end.3244:                                      ; preds = %if.then.3239, %out
  %ht_size3245 = getelementptr inbounds %struct.ht_buff_s, %struct.ht_buff_s* %ht_buff, i32 0, i32 0
  store i32 0, i32* %ht_size3245, align 4, !tbaa !226
  %read_size = getelementptr inbounds %struct.ht_buff_s, %struct.ht_buff_s* %ht_buff, i32 0, i32 1
  store i32 0, i32* %read_size, align 4, !tbaa !227
  %1824 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcomp_last, align 8, !tbaa !4
  %cmp3246 = icmp ne %struct.gs_composite_s* %1824, null
  br i1 %cmp3246, label %if.then.3248, label %if.end.3254

if.then.3248:                                     ; preds = %if.end.3244
  %1825 = bitcast i32* %code1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1825) #1
  %1826 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %1827 = load i32, i32* %x0.addr, align 4, !tbaa !6
  %1828 = load i32, i32* %y0.addr, align 4, !tbaa !6
  %call3249 = call i32 @drop_compositor_queue(%struct.gs_composite_s** %pcomp_first, %struct.gs_composite_s** %pcomp_last, %struct.gs_composite_s* null, %struct.gs_memory_s* %1826, i32 %1827, i32 %1828, %struct.gs_imager_state_s* %imager_state) #6
  store i32 %call3249, i32* %code1, align 4, !tbaa !6
  %1829 = load i32, i32* %code, align 4, !tbaa !6
  %cmp3250 = icmp eq i32 %1829, 0
  br i1 %cmp3250, label %if.then.3252, label %if.end.3253

if.then.3252:                                     ; preds = %if.then.3248
  %1830 = load i32, i32* %code1, align 4, !tbaa !6
  store i32 %1830, i32* %code, align 4, !tbaa !6
  br label %if.end.3253

if.end.3253:                                      ; preds = %if.then.3252, %if.then.3248
  %1831 = bitcast i32* %code1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1831) #1
  br label %if.end.3254

if.end.3254:                                      ; preds = %if.end.3253, %if.end.3244
  %1832 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !4
  call void @rc_decrement_cs(%struct.gs_color_space_s* %1832, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0)) #6
  call void @gx_cpath_free(%struct.gx_clip_path_s* %clip_path, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i32 0, i32 0)) #6
  call void @gx_path_free(%struct.gx_path_s* %path, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i32 0, i32 0)) #6
  %pattern_cache = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state, i32 0, i32 51
  %1833 = load %struct.gx_pattern_cache_s*, %struct.gx_pattern_cache_s** %pattern_cache, align 8, !tbaa !228
  %cmp3255 = icmp ne %struct.gx_pattern_cache_s* %1833, null
  br i1 %cmp3255, label %if.then.3257, label %if.end.3260

if.then.3257:                                     ; preds = %if.end.3254
  %pattern_cache3258 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state, i32 0, i32 51
  %1834 = load %struct.gx_pattern_cache_s*, %struct.gx_pattern_cache_s** %pattern_cache3258, align 8, !tbaa !228
  call void @gx_pattern_cache_free(%struct.gx_pattern_cache_s* %1834) #6
  %pattern_cache3259 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state, i32 0, i32 51
  store %struct.gx_pattern_cache_s* null, %struct.gx_pattern_cache_s** %pattern_cache3259, align 8, !tbaa !228
  br label %if.end.3260

if.end.3260:                                      ; preds = %if.then.3257, %if.end.3254
  %1835 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %cdev.addr, align 8, !tbaa !4
  %icc_cache_cl3261 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %1835, i32 0, i32 62
  %1836 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_cache_cl3261, align 8, !tbaa !83
  %lock3262 = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %1836, i32 0, i32 4
  %1837 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %lock3262, align 8, !tbaa !84
  %native3263 = getelementptr inbounds %struct.gx_monitor_s, %struct.gx_monitor_s* %1837, i32 0, i32 1
  %call3264 = call i32 @gp_monitor_enter(%union.gp_monitor* %native3263) #6
  call void @gs_imager_state_release(%struct.gs_imager_state_s* %imager_state) #6
  %1838 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %cdev.addr, align 8, !tbaa !4
  %icc_cache_cl3265 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %1838, i32 0, i32 62
  %1839 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_cache_cl3265, align 8, !tbaa !83
  %lock3266 = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %1839, i32 0, i32 4
  %1840 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %lock3266, align 8, !tbaa !84
  %native3267 = getelementptr inbounds %struct.gx_monitor_s, %struct.gx_monitor_s* %1840, i32 0, i32 1
  %call3268 = call i32 @gp_monitor_leave(%union.gp_monitor* %native3267) #6
  %1841 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %procs3269 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %1841, i32 0, i32 1
  %free_object3270 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs3269, i32 0, i32 2
  %1842 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object3270, align 8, !tbaa !172
  %1843 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %1844 = load i8*, i8** %data_bits, align 8, !tbaa !4
  call void %1842(%struct.gs_memory_s* %1843, i8* %1844, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0)) #6
  %1845 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !4
  %1846 = load %struct.gx_device_s*, %struct.gx_device_s** %orig_target, align 8, !tbaa !4
  %cmp3271 = icmp ne %struct.gx_device_s* %1845, %1846
  br i1 %cmp3271, label %if.then.3273, label %if.end.3324

if.then.3273:                                     ; preds = %if.end.3260
  %1847 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !4
  %rc3274 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1847, i32 0, i32 7
  %ref_count3275 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc3274, i32 0, i32 0
  %1848 = load i64, i64* %ref_count3275, align 8, !tbaa !229
  %cmp3276 = icmp ne i64 %1848, 1
  br i1 %cmp3276, label %if.then.3278, label %if.else.3313

if.then.3278:                                     ; preds = %if.then.3273
  br label %do.body.3279

do.body.3279:                                     ; preds = %if.then.3278
  %1849 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !4
  %tobool3280 = icmp ne %struct.gx_device_s* %1849, null
  br i1 %tobool3280, label %if.then.3281, label %if.end.3310

if.then.3281:                                     ; preds = %do.body.3279
  br label %do.body.3282

do.body.3282:                                     ; preds = %if.then.3281
  br label %do.body.3283

do.body.3283:                                     ; preds = %do.body.3282
  br label %do.cond.3284

do.cond.3284:                                     ; preds = %do.body.3283
  br label %do.end.3285

do.end.3285:                                      ; preds = %do.cond.3284
  %1850 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !4
  %rc3286 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1850, i32 0, i32 7
  %ref_count3287 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc3286, i32 0, i32 0
  %1851 = load i64, i64* %ref_count3287, align 8, !tbaa !229
  %add3288 = add nsw i64 %1851, -1
  store i64 %add3288, i64* %ref_count3287, align 8, !tbaa !229
  br label %do.cond.3289

do.cond.3289:                                     ; preds = %do.end.3285
  br label %do.end.3290

do.end.3290:                                      ; preds = %do.cond.3289
  %1852 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !4
  %rc3291 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1852, i32 0, i32 7
  %ref_count3292 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc3291, i32 0, i32 0
  %1853 = load i64, i64* %ref_count3292, align 8, !tbaa !229
  %tobool3293 = icmp ne i64 %1853, 0
  br i1 %tobool3293, label %if.else.3305, label %if.then.3294

if.then.3294:                                     ; preds = %do.end.3290
  br label %do.body.3295

do.body.3295:                                     ; preds = %if.then.3294
  br label %do.body.3296

do.body.3296:                                     ; preds = %do.body.3295
  br label %do.cond.3297

do.cond.3297:                                     ; preds = %do.body.3296
  br label %do.end.3298

do.end.3298:                                      ; preds = %do.cond.3297
  %1854 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !4
  %rc3299 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1854, i32 0, i32 7
  %free3300 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc3299, i32 0, i32 2
  %1855 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free3300, align 8, !tbaa !230
  %1856 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !4
  %rc3301 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1856, i32 0, i32 7
  %memory3302 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc3301, i32 0, i32 1
  %1857 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory3302, align 8, !tbaa !231
  %1858 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !4
  %1859 = bitcast %struct.gx_device_s* %1858 to i8*
  call void %1855(%struct.gs_memory_s* %1857, i8* %1859, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i32 0, i32 0)) #6
  br label %do.cond.3303

do.cond.3303:                                     ; preds = %do.end.3298
  br label %do.end.3304

do.end.3304:                                      ; preds = %do.cond.3303
  store %struct.gx_device_s* null, %struct.gx_device_s** %target.addr, align 8, !tbaa !4
  br label %if.end.3309

if.else.3305:                                     ; preds = %do.end.3290
  br label %do.body.3306

do.body.3306:                                     ; preds = %if.else.3305
  br label %do.cond.3307

do.cond.3307:                                     ; preds = %do.body.3306
  br label %do.end.3308

do.end.3308:                                      ; preds = %do.cond.3307
  br label %if.end.3309

if.end.3309:                                      ; preds = %do.end.3308, %do.end.3304
  br label %if.end.3310

if.end.3310:                                      ; preds = %if.end.3309, %do.body.3279
  br label %do.cond.3311

do.cond.3311:                                     ; preds = %if.end.3310
  br label %do.end.3312

do.end.3312:                                      ; preds = %do.cond.3311
  br label %if.end.3323

if.else.3313:                                     ; preds = %if.then.3273
  %1860 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !4
  %is_open = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1860, i32 0, i32 9
  %1861 = load i32, i32* %is_open, align 4, !tbaa !232
  %tobool3314 = icmp ne i32 %1861, 0
  br i1 %tobool3314, label %if.then.3315, label %if.end.3318

if.then.3315:                                     ; preds = %if.else.3313
  %1862 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !4
  %procs3316 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1862, i32 0, i32 42
  %close_device = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs3316, i32 0, i32 4
  %1863 = load i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)** %close_device, align 8, !tbaa !233
  %1864 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !4
  %call3317 = call i32 %1863(%struct.gx_device_s* %1864) #6
  br label %if.end.3318

if.end.3318:                                      ; preds = %if.then.3315, %if.else.3313
  %1865 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !4
  %memory3319 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1865, i32 0, i32 3
  %1866 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory3319, align 8, !tbaa !234
  %procs3320 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %1866, i32 0, i32 1
  %free_object3321 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs3320, i32 0, i32 2
  %1867 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object3321, align 8, !tbaa !172
  %1868 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !4
  %memory3322 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1868, i32 0, i32 3
  %1869 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory3322, align 8, !tbaa !234
  %1870 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !4
  %1871 = bitcast %struct.gx_device_s* %1870 to i8*
  call void %1867(%struct.gs_memory_s* %1869, i8* %1871, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i32 0, i32 0)) #6
  br label %if.end.3323

if.end.3323:                                      ; preds = %if.end.3318, %do.end.3312
  %1872 = load %struct.gx_device_s*, %struct.gx_device_s** %orig_target, align 8, !tbaa !4
  store %struct.gx_device_s* %1872, %struct.gx_device_s** %target.addr, align 8, !tbaa !4
  br label %if.end.3324

if.end.3324:                                      ; preds = %if.end.3323, %if.end.3260
  %1873 = load i32, i32* %code, align 4, !tbaa !6
  %cmp3325 = icmp slt i32 %1873, 0
  br i1 %cmp3325, label %if.then.3327, label %if.end.3334

if.then.3327:                                     ; preds = %if.end.3324
  %dev3328 = getelementptr inbounds %struct.patch_fill_state_s, %struct.patch_fill_state_s* %pfs, i32 0, i32 0
  %1874 = load %struct.gx_device_s*, %struct.gx_device_s** %dev3328, align 8, !tbaa !17
  %cmp3329 = icmp ne %struct.gx_device_s* %1874, null
  br i1 %cmp3329, label %if.then.3331, label %if.end.3333

if.then.3331:                                     ; preds = %if.then.3327
  %call3332 = call i32 @term_patch_fill_state(%struct.patch_fill_state_s* %pfs) #6
  br label %if.end.3333

if.end.3333:                                      ; preds = %if.then.3331, %if.then.3327
  %1875 = load i32, i32* %code, align 4, !tbaa !6
  store i32 %1875, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.3367

if.end.3334:                                      ; preds = %if.end.3324
  %1876 = load i32, i32* %playback_action.addr, align 4, !tbaa !1
  %cmp3335 = icmp ne i32 %1876, 2
  br i1 %cmp3335, label %land.lhs.true.3337, label %if.end.3358

land.lhs.true.3337:                               ; preds = %if.end.3334
  %1877 = load i8*, i8** %cbp, align 8, !tbaa !4
  %end3338 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %cbuf, i32 0, i32 4
  %1878 = load i8*, i8** %end3338, align 8, !tbaa !16
  %cmp3339 = icmp ult i8* %1877, %1878
  br i1 %cmp3339, label %land.lhs.true.3354, label %lor.lhs.false.3341

lor.lhs.false.3341:                               ; preds = %land.lhs.true.3337
  %1879 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !4
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %1879, i32 0, i32 5
  %r3342 = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_read_s*
  %ptr3343 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r3342, i32 0, i32 0
  %1880 = load i8*, i8** %ptr3343, align 8, !tbaa !124
  %1881 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !4
  %cursor3344 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %1881, i32 0, i32 5
  %r3345 = bitcast %union.stream_cursor_s* %cursor3344 to %struct.stream_cursor_read_s*
  %limit3346 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r3345, i32 0, i32 1
  %1882 = load i8*, i8** %limit3346, align 8, !tbaa !126
  %cmp3347 = icmp uge i8* %1880, %1882
  br i1 %cmp3347, label %land.lhs.true.3349, label %land.lhs.true.3354

land.lhs.true.3349:                               ; preds = %lor.lhs.false.3341
  %1883 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !4
  %end_status3350 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %1883, i32 0, i32 9
  %1884 = load i16, i16* %end_status3350, align 2, !tbaa !235
  %conv3351 = sext i16 %1884 to i32
  %cmp3352 = icmp eq i32 %conv3351, -1
  br i1 %cmp3352, label %if.end.3358, label %land.lhs.true.3354

land.lhs.true.3354:                               ; preds = %land.lhs.true.3349, %lor.lhs.false.3341, %land.lhs.true.3337
  %1885 = load i32, i32* %op, align 4, !tbaa !6
  %cmp3355 = icmp ne i32 %1885, 11
  br i1 %cmp3355, label %if.then.3357, label %if.end.3358

if.then.3357:                                     ; preds = %land.lhs.true.3354
  br label %in

if.end.3358:                                      ; preds = %land.lhs.true.3354, %land.lhs.true.3349, %if.end.3334
  %dev3359 = getelementptr inbounds %struct.patch_fill_state_s, %struct.patch_fill_state_s* %pfs, i32 0, i32 0
  %1886 = load %struct.gx_device_s*, %struct.gx_device_s** %dev3359, align 8, !tbaa !17
  %cmp3360 = icmp ne %struct.gx_device_s* %1886, null
  br i1 %cmp3360, label %if.then.3362, label %if.end.3364

if.then.3362:                                     ; preds = %if.end.3358
  %call3363 = call i32 @term_patch_fill_state(%struct.patch_fill_state_s* %pfs) #6
  br label %if.end.3364

if.end.3364:                                      ; preds = %if.then.3362, %if.end.3358
  %1887 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %procs3365 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %1887, i32 0, i32 1
  %free_object3366 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs3365, i32 0, i32 2
  %1888 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object3366, align 8, !tbaa !172
  %1889 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %1890 = load i8*, i8** %cbuf_storage, align 8, !tbaa !4
  call void %1888(%struct.gs_memory_s* %1889, i8* %1890, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i32 0, i32 0)) #6
  %1891 = load i32, i32* %code, align 4, !tbaa !6
  store i32 %1891, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.3367

cleanup.3367:                                     ; preds = %if.end.3364, %if.end.3333, %cleanup.3226, %if.then
  %1892 = bitcast %struct.tile_slot* %bits to i8*
  call void @llvm.lifetime.end(i64 40, i8* %1892) #1
  %1893 = bitcast %struct.gs_composite_s** %pcomp_last to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1893) #1
  %1894 = bitcast %struct.gs_composite_s** %pcomp_first to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1894) #1
  %1895 = bitcast i32* %plane_height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1895) #1
  %1896 = bitcast i32* %op to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1896) #1
  %1897 = bitcast %struct.patch_fill_state_s* %pfs to i8*
  call void @llvm.lifetime.end(i64 728, i8* %1897) #1
  %1898 = bitcast i32* %clipper_dev_open to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1898) #1
  %1899 = bitcast %struct.gx_device_clip_s* %clipper_dev to i8*
  call void @llvm.lifetime.end(i64 1856, i8* %1899) #1
  %1900 = bitcast %struct.gx_device_s** %orig_target to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1900) #1
  %1901 = bitcast %struct.ht_buff_s* %ht_buff to i8*
  call void @llvm.lifetime.end(i64 24, i8* %1901) #1
  %1902 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1902) #1
  %1903 = bitcast i32* %data_x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1903) #1
  %1904 = bitcast i32* %notes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1904) #1
  %1905 = bitcast [6 x i32]* %vs to i8*
  call void @llvm.lifetime.end(i64 24, i8* %1905) #1
  %1906 = bitcast i8** %data_on_heap to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1906) #1
  %1907 = bitcast i32* %data_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1907) #1
  %1908 = bitcast i32* %data_height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1908) #1
  %1909 = bitcast [32 x %struct.gx_image_plane_s]* %planes to i8*
  call void @llvm.lifetime.end(i64 512, i8* %1909) #1
  %1910 = bitcast %struct.gx_image_enum_common_s** %image_info to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1910) #1
  %1911 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1911) #1
  %1912 = bitcast %struct.gs_int_rect_s* %image_rect to i8*
  call void @llvm.lifetime.end(i64 16, i8* %1912) #1
  %1913 = bitcast %union.im_* %image to i8*
  call void @llvm.lifetime.end(i64 1112, i8* %1913) #1
  %1914 = bitcast i32* %halftone_type to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1914) #1
  %1915 = bitcast %struct.gx_stroke_params_s* %stroke_params to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1915) #1
  %1916 = bitcast %struct.gx_fill_params_s* %fill_params to i8*
  call void @llvm.lifetime.end(i64 16, i8* %1916) #1
  %1917 = bitcast [11 x float]* %dash_pattern to i8*
  call void @llvm.lifetime.end(i64 44, i8* %1917) #1
  %1918 = bitcast %struct.gx_device_color_s* %dev_color to i8*
  call void @llvm.lifetime.end(i64 656, i8* %1918) #1
  %1919 = bitcast %struct.gs_imager_state_s* %imager_state to i8*
  call void @llvm.lifetime.end(i64 1616, i8* %1919) #1
  %1920 = bitcast i32* %in_clip to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1920) #1
  %1921 = bitcast %struct._cas* %clip_save to i8*
  call void @llvm.lifetime.end(i64 664, i8* %1921) #1
  %1922 = bitcast %struct.gs_fixed_rect_s* %target_box to i8*
  call void @llvm.lifetime.end(i64 16, i8* %1922) #1
  %1923 = bitcast %struct.gx_device_cpath_accum_s* %clip_accum to i8*
  call void @llvm.lifetime.end(i64 1848, i8* %1923) #1
  %1924 = bitcast %struct.gx_clip_path_s** %pcpath to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1924) #1
  %1925 = bitcast i32* %use_clip to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1925) #1
  %1926 = bitcast %struct.gx_clip_path_s* %clip_path to i8*
  call void @llvm.lifetime.end(i64 304, i8* %1926) #1
  %1927 = bitcast %struct.gs_fixed_point_s* %ppos to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1927) #1
  %1928 = bitcast i32* %in_path to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1928) #1
  %1929 = bitcast %struct.gx_path_s* %path to i8*
  call void @llvm.lifetime.end(i64 128, i8* %1929) #1
  %1930 = bitcast %struct.gs_int_point_s* %color_phase to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1930) #1
  %1931 = bitcast %struct.gs_int_point_s* %tile_phase to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1931) #1
  %1932 = bitcast %struct.tile_slot* %tile_bits to i8*
  call void @llvm.lifetime.end(i64 40, i8* %1932) #1
  %1933 = bitcast %struct.gx_strip_bitmap_s* %state_tile to i8*
  call void @llvm.lifetime.end(i64 48, i8* %1933) #1
  %1934 = bitcast %struct.tile_slot** %state_slot to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1934) #1
  %1935 = bitcast %struct.gx_device_color_s** %set_dev_colors to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1935) #1
  %1936 = bitcast i64** %set_colors to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1936) #1
  %1937 = bitcast %struct.gx_clist_state_s* %state to i8*
  call void @llvm.lifetime.end(i64 1808, i8* %1937) #1
  %1938 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1938) #1
  %1939 = bitcast i32* %num_zero_bytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1939) #1
  %1940 = bitcast i32* %odd_delta_shift to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1940) #1
  %1941 = bitcast i32* %dev_depth_bytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1941) #1
  %1942 = bitcast i32* %dev_depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1942) #1
  %1943 = bitcast i8** %cbp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1943) #1
  %1944 = bitcast i8** %data_bits to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1944) #1
  %1945 = bitcast %struct.command_buf_s* %cbuf to i8*
  call void @llvm.lifetime.end(i64 56, i8* %1945) #1
  %1946 = bitcast i8** %cbuf_storage to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1946) #1
  %1947 = load i32, i32* %retval
  ret i32 %1947

unreachable:                                      ; preds = %cleanup.2212
  unreachable
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @set_cb_end(%struct.command_buf_s* %pcb, i8* %end) #0 {
entry:
  %pcb.addr = alloca %struct.command_buf_s*, align 8
  %end.addr = alloca i8*, align 8
  store %struct.command_buf_s* %pcb, %struct.command_buf_s** %pcb.addr, align 8, !tbaa !4
  store i8* %end, i8** %end.addr, align 8, !tbaa !4
  %0 = load i8*, i8** %end.addr, align 8, !tbaa !4
  %1 = load %struct.command_buf_s*, %struct.command_buf_s** %pcb.addr, align 8, !tbaa !4
  %end1 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %1, i32 0, i32 4
  store i8* %0, i8** %end1, align 8, !tbaa !16
  %2 = load %struct.command_buf_s*, %struct.command_buf_s** %pcb.addr, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %2, i32 0, i32 0
  %3 = load i8*, i8** %data, align 8, !tbaa !11
  %4 = load %struct.command_buf_s*, %struct.command_buf_s** %pcb.addr, align 8, !tbaa !4
  %size = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %4, i32 0, i32 1
  %5 = load i32, i32* %size, align 4, !tbaa !13
  %conv = zext i32 %5 to i64
  %sub = sub i64 %conv, 54
  %add = add i64 %sub, 1
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %add
  %6 = load %struct.command_buf_s*, %struct.command_buf_s** %pcb.addr, align 8, !tbaa !4
  %warn_limit = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %6, i32 0, i32 3
  store i8* %add.ptr, i8** %warn_limit, align 8, !tbaa !92
  %7 = load %struct.command_buf_s*, %struct.command_buf_s** %pcb.addr, align 8, !tbaa !4
  %warn_limit2 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %7, i32 0, i32 3
  %8 = load i8*, i8** %warn_limit2, align 8, !tbaa !92
  %9 = load %struct.command_buf_s*, %struct.command_buf_s** %pcb.addr, align 8, !tbaa !4
  %end3 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %9, i32 0, i32 4
  %10 = load i8*, i8** %end3, align 8, !tbaa !16
  %cmp = icmp ugt i8* %8, %10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load %struct.command_buf_s*, %struct.command_buf_s** %pcb.addr, align 8, !tbaa !4
  %end5 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %11, i32 0, i32 4
  %12 = load i8*, i8** %end5, align 8, !tbaa !16
  %13 = load %struct.command_buf_s*, %struct.command_buf_s** %pcb.addr, align 8, !tbaa !4
  %warn_limit6 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %13, i32 0, i32 3
  store i8* %12, i8** %warn_limit6, align 8, !tbaa !92
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @gx_path_init_local_shared(%struct.gx_path_s*, %struct.gx_path_s*, %struct.gs_memory_s*) #3

declare i32 @gx_cpath_init_local_shared(%struct.gx_clip_path_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*) #3

declare i32 @gx_cpath_from_rectangle(%struct.gx_clip_path_s*, %struct.gs_fixed_rect_s*) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare i32 @gs_imager_state_initialize(%struct.gs_imager_state_s*, %struct.gs_memory_s*) #3

declare i32 @gp_monitor_enter(%union.gp_monitor*) #3

declare i32 @gp_monitor_leave(%union.gp_monitor*) #3

declare void @gx_set_cmap_procs(%struct.gs_imager_state_s*, %struct.gx_device_s*) #3

declare i32 @gx_imager_setscreenphase(%struct.gs_imager_state_s*, i32, i32, i32) #3

declare %struct.gs_color_space_s* @gs_cspace_new_DeviceGray(%struct.gs_memory_s*) #3

; Function Attrs: nounwind uwtable
define internal i32 @top_up_cbuf(%struct.command_buf_s* %pcb, i8** %pcbp) #0 {
entry:
  %retval = alloca i32, align 4
  %pcb.addr = alloca %struct.command_buf_s*, align 8
  %pcbp.addr = alloca i8**, align 8
  %nread = alloca i32, align 4
  %cbp = alloca i8*, align 8
  %cb_top = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.command_buf_s* %pcb, %struct.command_buf_s** %pcb.addr, align 8, !tbaa !4
  store i8** %pcbp, i8*** %pcbp.addr, align 8, !tbaa !4
  %0 = bitcast i32* %nread to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i8** %cbp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load i8**, i8*** %pcbp.addr, align 8, !tbaa !4
  %3 = load i8*, i8** %2, align 8, !tbaa !4
  store i8* %3, i8** %cbp, align 8, !tbaa !4
  %4 = bitcast i8** %cb_top to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.command_buf_s*, %struct.command_buf_s** %pcb.addr, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %5, i32 0, i32 0
  %6 = load i8*, i8** %data, align 8, !tbaa !11
  %7 = load %struct.command_buf_s*, %struct.command_buf_s** %pcb.addr, align 8, !tbaa !4
  %end = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %7, i32 0, i32 4
  %8 = load i8*, i8** %end, align 8, !tbaa !16
  %9 = load i8*, i8** %cbp, align 8, !tbaa !4
  %sub.ptr.lhs.cast = ptrtoint i8* %8 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %9 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %sub.ptr.sub
  store i8* %add.ptr, i8** %cb_top, align 8, !tbaa !4
  %10 = load %struct.command_buf_s*, %struct.command_buf_s** %pcb.addr, align 8, !tbaa !4
  %end1 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %10, i32 0, i32 4
  %11 = load i8*, i8** %end1, align 8, !tbaa !16
  %12 = load i8*, i8** %cbp, align 8, !tbaa !4
  %sub.ptr.lhs.cast2 = ptrtoint i8* %11 to i64
  %sub.ptr.rhs.cast3 = ptrtoint i8* %12 to i64
  %sub.ptr.sub4 = sub i64 %sub.ptr.lhs.cast2, %sub.ptr.rhs.cast3
  %13 = load %struct.command_buf_s*, %struct.command_buf_s** %pcb.addr, align 8, !tbaa !4
  %size = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %13, i32 0, i32 1
  %14 = load i32, i32* %size, align 4, !tbaa !13
  %conv = zext i32 %14 to i64
  %cmp = icmp sge i64 %sub.ptr.sub4, %conv
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %15 = load %struct.command_buf_s*, %struct.command_buf_s** %pcb.addr, align 8, !tbaa !4
  %s = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %15, i32 0, i32 5
  %16 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !14
  %memory = getelementptr inbounds %struct.stream_s, %struct.stream_s* %16, i32 0, i32 1
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !240
  %call = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %17, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.14, i32 0, i32 0)) #6
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %18 = load %struct.command_buf_s*, %struct.command_buf_s** %pcb.addr, align 8, !tbaa !4
  %s6 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %18, i32 0, i32 5
  %19 = load %struct.stream_s*, %struct.stream_s** %s6, align 8, !tbaa !14
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %19, i32 0, i32 5
  %r = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_read_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 0
  %20 = load i8*, i8** %ptr, align 8, !tbaa !124
  %21 = load %struct.command_buf_s*, %struct.command_buf_s** %pcb.addr, align 8, !tbaa !4
  %s7 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %21, i32 0, i32 5
  %22 = load %struct.stream_s*, %struct.stream_s** %s7, align 8, !tbaa !14
  %cursor8 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %22, i32 0, i32 5
  %r9 = bitcast %union.stream_cursor_s* %cursor8 to %struct.stream_cursor_read_s*
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r9, i32 0, i32 1
  %23 = load i8*, i8** %limit, align 8, !tbaa !126
  %cmp10 = icmp uge i8* %20, %23
  br i1 %cmp10, label %land.lhs.true, label %if.end.21

land.lhs.true:                                    ; preds = %if.end
  %24 = load %struct.command_buf_s*, %struct.command_buf_s** %pcb.addr, align 8, !tbaa !4
  %s12 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %24, i32 0, i32 5
  %25 = load %struct.stream_s*, %struct.stream_s** %s12, align 8, !tbaa !14
  %end_status = getelementptr inbounds %struct.stream_s, %struct.stream_s* %25, i32 0, i32 9
  %26 = load i16, i16* %end_status, align 2, !tbaa !235
  %conv13 = sext i16 %26 to i32
  %cmp14 = icmp eq i32 %conv13, -1
  br i1 %cmp14, label %if.then.16, label %if.end.21

if.then.16:                                       ; preds = %land.lhs.true
  %27 = load %struct.command_buf_s*, %struct.command_buf_s** %pcb.addr, align 8, !tbaa !4
  %s17 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %27, i32 0, i32 5
  %28 = load %struct.stream_s*, %struct.stream_s** %s17, align 8, !tbaa !14
  %end_status18 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %28, i32 0, i32 9
  %29 = load i16, i16* %end_status18, align 2, !tbaa !235
  %conv19 = sext i16 %29 to i32
  %30 = load %struct.command_buf_s*, %struct.command_buf_s** %pcb.addr, align 8, !tbaa !4
  %end_status20 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %30, i32 0, i32 6
  store i32 %conv19, i32* %end_status20, align 4, !tbaa !15
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %land.lhs.true, %if.end
  %31 = load %struct.command_buf_s*, %struct.command_buf_s** %pcb.addr, align 8, !tbaa !4
  %data22 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %31, i32 0, i32 0
  %32 = load i8*, i8** %data22, align 8, !tbaa !11
  %33 = load i8*, i8** %cbp, align 8, !tbaa !4
  %34 = load %struct.command_buf_s*, %struct.command_buf_s** %pcb.addr, align 8, !tbaa !4
  %end23 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %34, i32 0, i32 4
  %35 = load i8*, i8** %end23, align 8, !tbaa !16
  %36 = load i8*, i8** %cbp, align 8, !tbaa !4
  %sub.ptr.lhs.cast24 = ptrtoint i8* %35 to i64
  %sub.ptr.rhs.cast25 = ptrtoint i8* %36 to i64
  %sub.ptr.sub26 = sub i64 %sub.ptr.lhs.cast24, %sub.ptr.rhs.cast25
  %call27 = call i8* @memmove(i8* %32, i8* %33, i64 %sub.ptr.sub26) #7
  %37 = load %struct.command_buf_s*, %struct.command_buf_s** %pcb.addr, align 8, !tbaa !4
  %end28 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %37, i32 0, i32 4
  %38 = load i8*, i8** %end28, align 8, !tbaa !16
  %39 = load i8*, i8** %cb_top, align 8, !tbaa !4
  %sub.ptr.lhs.cast29 = ptrtoint i8* %38 to i64
  %sub.ptr.rhs.cast30 = ptrtoint i8* %39 to i64
  %sub.ptr.sub31 = sub i64 %sub.ptr.lhs.cast29, %sub.ptr.rhs.cast30
  %conv32 = trunc i64 %sub.ptr.sub31 to i32
  store i32 %conv32, i32* %nread, align 4, !tbaa !6
  %40 = load %struct.command_buf_s*, %struct.command_buf_s** %pcb.addr, align 8, !tbaa !4
  %s33 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %40, i32 0, i32 5
  %41 = load %struct.stream_s*, %struct.stream_s** %s33, align 8, !tbaa !14
  %42 = load i8*, i8** %cb_top, align 8, !tbaa !4
  %43 = load i32, i32* %nread, align 4, !tbaa !6
  %call34 = call i32 @sgets(%struct.stream_s* %41, i8* %42, i32 %43, i32* %nread) #6
  %44 = load %struct.command_buf_s*, %struct.command_buf_s** %pcb.addr, align 8, !tbaa !4
  %end_status35 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %44, i32 0, i32 6
  store i32 %call34, i32* %end_status35, align 4, !tbaa !15
  %45 = load i32, i32* %nread, align 4, !tbaa !6
  %cmp36 = icmp eq i32 %45, 0
  br i1 %cmp36, label %if.then.38, label %if.end.46

if.then.38:                                       ; preds = %if.end.21
  %46 = load i8*, i8** %cb_top, align 8, !tbaa !4
  %47 = load %struct.command_buf_s*, %struct.command_buf_s** %pcb.addr, align 8, !tbaa !4
  %end39 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %47, i32 0, i32 4
  %48 = load i8*, i8** %end39, align 8, !tbaa !16
  %cmp40 = icmp uge i8* %46, %48
  br i1 %cmp40, label %if.then.42, label %if.end.45

if.then.42:                                       ; preds = %if.then.38
  %49 = load %struct.command_buf_s*, %struct.command_buf_s** %pcb.addr, align 8, !tbaa !4
  %data43 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %49, i32 0, i32 0
  %50 = load i8*, i8** %data43, align 8, !tbaa !11
  %51 = load i8**, i8*** %pcbp.addr, align 8, !tbaa !4
  store i8* %50, i8** %51, align 8, !tbaa !4
  %52 = load %struct.command_buf_s*, %struct.command_buf_s** %pcb.addr, align 8, !tbaa !4
  %data44 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %52, i32 0, i32 0
  %53 = load i8*, i8** %data44, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds i8, i8* %53, i64 0
  store i8 0, i8* %arrayidx, align 1, !tbaa !1
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.45:                                        ; preds = %if.then.38
  %54 = load i8*, i8** %cb_top, align 8, !tbaa !4
  store i8 0, i8* %54, align 1, !tbaa !1
  store i32 1, i32* %nread, align 4, !tbaa !6
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.end.21
  %55 = load %struct.command_buf_s*, %struct.command_buf_s** %pcb.addr, align 8, !tbaa !4
  %56 = load i8*, i8** %cb_top, align 8, !tbaa !4
  %57 = load i32, i32* %nread, align 4, !tbaa !6
  %idx.ext = zext i32 %57 to i64
  %add.ptr47 = getelementptr inbounds i8, i8* %56, i64 %idx.ext
  call void @set_cb_end(%struct.command_buf_s* %55, i8* %add.ptr47) #6
  br label %do.body

do.body:                                          ; preds = %if.end.46
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %58 = load %struct.command_buf_s*, %struct.command_buf_s** %pcb.addr, align 8, !tbaa !4
  %data48 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %58, i32 0, i32 0
  %59 = load i8*, i8** %data48, align 8, !tbaa !11
  %60 = load i8**, i8*** %pcbp.addr, align 8, !tbaa !4
  store i8* %59, i8** %60, align 8, !tbaa !4
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.42, %if.then.16, %if.then
  %61 = bitcast i8** %cb_top to i8*
  call void @llvm.lifetime.end(i64 8, i8* %61) #1
  %62 = bitcast i8** %cbp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #1
  %63 = bitcast i32* %nread to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #1
  %64 = load i32, i32* %retval
  ret i32 %64
}

; Function Attrs: nounwind uwtable
define internal i32 @read_set_tile_size(%struct.command_buf_s* %pcb, %struct.tile_slot* %bits, i32 %for_pattern) #0 {
entry:
  %pcb.addr = alloca %struct.command_buf_s*, align 8
  %bits.addr = alloca %struct.tile_slot*, align 8
  %for_pattern.addr = alloca i32, align 4
  %cbp = alloca i8*, align 8
  %rep_width = alloca i32, align 4
  %rep_height = alloca i32, align 4
  %pdepth = alloca i32, align 4
  %bd = alloca i8, align 1
  %_cbp = alloca i8*, align 8
  %_cbp30 = alloca i8*, align 8
  %_cbp44 = alloca i8*, align 8
  %_cbp61 = alloca i8*, align 8
  %_cbp87 = alloca i8*, align 8
  %_cbp115 = alloca i8*, align 8
  store %struct.command_buf_s* %pcb, %struct.command_buf_s** %pcb.addr, align 8, !tbaa !4
  store %struct.tile_slot* %bits, %struct.tile_slot** %bits.addr, align 8, !tbaa !4
  store i32 %for_pattern, i32* %for_pattern.addr, align 4, !tbaa !6
  %0 = bitcast i8** %cbp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.command_buf_s*, %struct.command_buf_s** %pcb.addr, align 8, !tbaa !4
  %ptr = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %1, i32 0, i32 2
  %2 = load i8*, i8** %ptr, align 8, !tbaa !93
  store i8* %2, i8** %cbp, align 8, !tbaa !4
  %3 = bitcast i32* %rep_width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %rep_height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %pdepth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  call void @llvm.lifetime.start(i64 1, i8* %bd) #1
  %6 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %cbp, align 8, !tbaa !4
  %7 = load i8, i8* %6, align 1, !tbaa !1
  store i8 %7, i8* %bd, align 1, !tbaa !1
  %8 = load i8, i8* %bd, align 1, !tbaa !1
  %conv = zext i8 %8 to i32
  %and = and i32 %conv, 8
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %9 = load i8, i8* %bd, align 1, !tbaa !1
  %conv2 = zext i8 %9 to i32
  %and3 = and i32 %conv2, 7
  %add = add nsw i32 %and3, 1
  br label %cond.end.11

cond.false:                                       ; preds = %entry
  %10 = load i8, i8* %bd, align 1, !tbaa !1
  %conv4 = zext i8 %10 to i32
  %and5 = and i32 %conv4, 7
  %tobool = icmp ne i32 %and5, 0
  br i1 %tobool, label %cond.true.6, label %cond.false.10

cond.true.6:                                      ; preds = %cond.false
  %11 = load i8, i8* %bd, align 1, !tbaa !1
  %conv7 = zext i8 %11 to i32
  %and8 = and i32 %conv7, 7
  %shl = shl i32 %and8, 3
  %add9 = add nsw i32 %shl, 8
  br label %cond.end

cond.false.10:                                    ; preds = %cond.false
  br label %cond.end

cond.end:                                         ; preds = %cond.false.10, %cond.true.6
  %cond = phi i32 [ %add9, %cond.true.6 ], [ 12, %cond.false.10 ]
  br label %cond.end.11

cond.end.11:                                      ; preds = %cond.end, %cond.true
  %cond12 = phi i32 [ %add, %cond.true ], [ %cond, %cond.end ]
  %12 = load %struct.tile_slot*, %struct.tile_slot** %bits.addr, align 8, !tbaa !4
  %head = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %12, i32 0, i32 0
  %depth = getelementptr inbounds %struct.gx_cached_bits_head_s, %struct.gx_cached_bits_head_s* %head, i32 0, i32 1
  store i32 %cond12, i32* %depth, align 4, !tbaa !103
  %13 = load i32, i32* %for_pattern.addr, align 4, !tbaa !6
  %tobool13 = icmp ne i32 %13, 0
  br i1 %tobool13, label %if.then, label %if.end.21

if.then:                                          ; preds = %cond.end.11
  br label %do.body

do.body:                                          ; preds = %if.then
  %14 = load i8*, i8** %cbp, align 8, !tbaa !4
  %15 = load i8, i8* %14, align 1, !tbaa !1
  %conv14 = zext i8 %15 to i32
  %cmp15 = icmp slt i32 %conv14, 128
  br i1 %cmp15, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %do.body
  %16 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr18 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr18, i8** %cbp, align 8, !tbaa !4
  %17 = load i8, i8* %16, align 1, !tbaa !1
  %conv19 = zext i8 %17 to i64
  %18 = load %struct.tile_slot*, %struct.tile_slot** %bits.addr, align 8, !tbaa !4
  %id = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %18, i32 0, i32 5
  store i64 %conv19, i64* %id, align 8, !tbaa !142
  br label %if.end

if.else:                                          ; preds = %do.body
  %19 = bitcast i8** %_cbp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  %20 = load i8*, i8** %cbp, align 8, !tbaa !4
  %call = call i64 @cmd_get_w(i8* %20, i8** %_cbp) #6
  %21 = load %struct.tile_slot*, %struct.tile_slot** %bits.addr, align 8, !tbaa !4
  %id20 = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %21, i32 0, i32 5
  store i64 %call, i64* %id20, align 8, !tbaa !142
  %22 = load i8*, i8** %_cbp, align 8, !tbaa !4
  store i8* %22, i8** %cbp, align 8, !tbaa !4
  %23 = bitcast i8** %_cbp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.17
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.21

if.end.21:                                        ; preds = %do.end, %cond.end.11
  br label %do.body.22

do.body.22:                                       ; preds = %if.end.21
  %24 = load i8*, i8** %cbp, align 8, !tbaa !4
  %25 = load i8, i8* %24, align 1, !tbaa !1
  %conv23 = zext i8 %25 to i32
  %cmp24 = icmp slt i32 %conv23, 128
  br i1 %cmp24, label %if.then.26, label %if.else.29

if.then.26:                                       ; preds = %do.body.22
  %26 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr27, i8** %cbp, align 8, !tbaa !4
  %27 = load i8, i8* %26, align 1, !tbaa !1
  %conv28 = zext i8 %27 to i32
  store i32 %conv28, i32* %rep_width, align 4, !tbaa !6
  br label %if.end.33

if.else.29:                                       ; preds = %do.body.22
  %28 = bitcast i8** %_cbp30 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %28) #1
  %29 = load i8*, i8** %cbp, align 8, !tbaa !4
  %call31 = call i64 @cmd_get_w(i8* %29, i8** %_cbp30) #6
  %conv32 = trunc i64 %call31 to i32
  store i32 %conv32, i32* %rep_width, align 4, !tbaa !6
  %30 = load i8*, i8** %_cbp30, align 8, !tbaa !4
  store i8* %30, i8** %cbp, align 8, !tbaa !4
  %31 = bitcast i8** %_cbp30 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.29, %if.then.26
  br label %do.cond.34

do.cond.34:                                       ; preds = %if.end.33
  br label %do.end.35

do.end.35:                                        ; preds = %do.cond.34
  br label %do.body.36

do.body.36:                                       ; preds = %do.end.35
  %32 = load i8*, i8** %cbp, align 8, !tbaa !4
  %33 = load i8, i8* %32, align 1, !tbaa !1
  %conv37 = zext i8 %33 to i32
  %cmp38 = icmp slt i32 %conv37, 128
  br i1 %cmp38, label %if.then.40, label %if.else.43

if.then.40:                                       ; preds = %do.body.36
  %34 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr41 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %incdec.ptr41, i8** %cbp, align 8, !tbaa !4
  %35 = load i8, i8* %34, align 1, !tbaa !1
  %conv42 = zext i8 %35 to i32
  store i32 %conv42, i32* %rep_height, align 4, !tbaa !6
  br label %if.end.47

if.else.43:                                       ; preds = %do.body.36
  %36 = bitcast i8** %_cbp44 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %36) #1
  %37 = load i8*, i8** %cbp, align 8, !tbaa !4
  %call45 = call i64 @cmd_get_w(i8* %37, i8** %_cbp44) #6
  %conv46 = trunc i64 %call45 to i32
  store i32 %conv46, i32* %rep_height, align 4, !tbaa !6
  %38 = load i8*, i8** %_cbp44, align 8, !tbaa !4
  store i8* %38, i8** %cbp, align 8, !tbaa !4
  %39 = bitcast i8** %_cbp44 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  br label %if.end.47

if.end.47:                                        ; preds = %if.else.43, %if.then.40
  br label %do.cond.48

do.cond.48:                                       ; preds = %if.end.47
  br label %do.end.49

do.end.49:                                        ; preds = %do.cond.48
  %40 = load i8, i8* %bd, align 1, !tbaa !1
  %conv50 = zext i8 %40 to i32
  %and51 = and i32 %conv50, 32
  %tobool52 = icmp ne i32 %and51, 0
  br i1 %tobool52, label %if.then.53, label %if.else.71

if.then.53:                                       ; preds = %do.end.49
  br label %do.body.54

do.body.54:                                       ; preds = %if.then.53
  %41 = load i8*, i8** %cbp, align 8, !tbaa !4
  %42 = load i8, i8* %41, align 1, !tbaa !1
  %conv55 = zext i8 %42 to i32
  %cmp56 = icmp slt i32 %conv55, 128
  br i1 %cmp56, label %if.then.58, label %if.else.60

if.then.58:                                       ; preds = %do.body.54
  %43 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr59 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %incdec.ptr59, i8** %cbp, align 8, !tbaa !4
  %44 = load i8, i8* %43, align 1, !tbaa !1
  %45 = load %struct.tile_slot*, %struct.tile_slot** %bits.addr, align 8, !tbaa !4
  %x_reps = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %45, i32 0, i32 6
  store i8 %44, i8* %x_reps, align 1, !tbaa !110
  br label %if.end.65

if.else.60:                                       ; preds = %do.body.54
  %46 = bitcast i8** %_cbp61 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %46) #1
  %47 = load i8*, i8** %cbp, align 8, !tbaa !4
  %call62 = call i64 @cmd_get_w(i8* %47, i8** %_cbp61) #6
  %conv63 = trunc i64 %call62 to i8
  %48 = load %struct.tile_slot*, %struct.tile_slot** %bits.addr, align 8, !tbaa !4
  %x_reps64 = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %48, i32 0, i32 6
  store i8 %conv63, i8* %x_reps64, align 1, !tbaa !110
  %49 = load i8*, i8** %_cbp61, align 8, !tbaa !4
  store i8* %49, i8** %cbp, align 8, !tbaa !4
  %50 = bitcast i8** %_cbp61 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #1
  br label %if.end.65

if.end.65:                                        ; preds = %if.else.60, %if.then.58
  br label %do.cond.66

do.cond.66:                                       ; preds = %if.end.65
  br label %do.end.67

do.end.67:                                        ; preds = %do.cond.66
  %51 = load i32, i32* %rep_width, align 4, !tbaa !6
  %52 = load %struct.tile_slot*, %struct.tile_slot** %bits.addr, align 8, !tbaa !4
  %x_reps68 = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %52, i32 0, i32 6
  %53 = load i8, i8* %x_reps68, align 1, !tbaa !110
  %conv69 = zext i8 %53 to i32
  %mul = mul i32 %51, %conv69
  %conv70 = trunc i32 %mul to i16
  %54 = load %struct.tile_slot*, %struct.tile_slot** %bits.addr, align 8, !tbaa !4
  %width = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %54, i32 0, i32 1
  store i16 %conv70, i16* %width, align 2, !tbaa !106
  br label %if.end.75

if.else.71:                                       ; preds = %do.end.49
  %55 = load %struct.tile_slot*, %struct.tile_slot** %bits.addr, align 8, !tbaa !4
  %x_reps72 = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %55, i32 0, i32 6
  store i8 1, i8* %x_reps72, align 1, !tbaa !110
  %56 = load i32, i32* %rep_width, align 4, !tbaa !6
  %conv73 = trunc i32 %56 to i16
  %57 = load %struct.tile_slot*, %struct.tile_slot** %bits.addr, align 8, !tbaa !4
  %width74 = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %57, i32 0, i32 1
  store i16 %conv73, i16* %width74, align 2, !tbaa !106
  br label %if.end.75

if.end.75:                                        ; preds = %if.else.71, %do.end.67
  %58 = load i8, i8* %bd, align 1, !tbaa !1
  %conv76 = zext i8 %58 to i32
  %and77 = and i32 %conv76, 64
  %tobool78 = icmp ne i32 %and77, 0
  br i1 %tobool78, label %if.then.79, label %if.else.98

if.then.79:                                       ; preds = %if.end.75
  br label %do.body.80

do.body.80:                                       ; preds = %if.then.79
  %59 = load i8*, i8** %cbp, align 8, !tbaa !4
  %60 = load i8, i8* %59, align 1, !tbaa !1
  %conv81 = zext i8 %60 to i32
  %cmp82 = icmp slt i32 %conv81, 128
  br i1 %cmp82, label %if.then.84, label %if.else.86

if.then.84:                                       ; preds = %do.body.80
  %61 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr85 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %incdec.ptr85, i8** %cbp, align 8, !tbaa !4
  %62 = load i8, i8* %61, align 1, !tbaa !1
  %63 = load %struct.tile_slot*, %struct.tile_slot** %bits.addr, align 8, !tbaa !4
  %y_reps = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %63, i32 0, i32 7
  store i8 %62, i8* %y_reps, align 1, !tbaa !109
  br label %if.end.91

if.else.86:                                       ; preds = %do.body.80
  %64 = bitcast i8** %_cbp87 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %64) #1
  %65 = load i8*, i8** %cbp, align 8, !tbaa !4
  %call88 = call i64 @cmd_get_w(i8* %65, i8** %_cbp87) #6
  %conv89 = trunc i64 %call88 to i8
  %66 = load %struct.tile_slot*, %struct.tile_slot** %bits.addr, align 8, !tbaa !4
  %y_reps90 = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %66, i32 0, i32 7
  store i8 %conv89, i8* %y_reps90, align 1, !tbaa !109
  %67 = load i8*, i8** %_cbp87, align 8, !tbaa !4
  store i8* %67, i8** %cbp, align 8, !tbaa !4
  %68 = bitcast i8** %_cbp87 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %68) #1
  br label %if.end.91

if.end.91:                                        ; preds = %if.else.86, %if.then.84
  br label %do.cond.92

do.cond.92:                                       ; preds = %if.end.91
  br label %do.end.93

do.end.93:                                        ; preds = %do.cond.92
  %69 = load i32, i32* %rep_height, align 4, !tbaa !6
  %70 = load %struct.tile_slot*, %struct.tile_slot** %bits.addr, align 8, !tbaa !4
  %y_reps94 = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %70, i32 0, i32 7
  %71 = load i8, i8* %y_reps94, align 1, !tbaa !109
  %conv95 = zext i8 %71 to i32
  %mul96 = mul i32 %69, %conv95
  %conv97 = trunc i32 %mul96 to i16
  %72 = load %struct.tile_slot*, %struct.tile_slot** %bits.addr, align 8, !tbaa !4
  %height = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %72, i32 0, i32 2
  store i16 %conv97, i16* %height, align 2, !tbaa !107
  br label %if.end.102

if.else.98:                                       ; preds = %if.end.75
  %73 = load %struct.tile_slot*, %struct.tile_slot** %bits.addr, align 8, !tbaa !4
  %y_reps99 = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %73, i32 0, i32 7
  store i8 1, i8* %y_reps99, align 1, !tbaa !109
  %74 = load i32, i32* %rep_height, align 4, !tbaa !6
  %conv100 = trunc i32 %74 to i16
  %75 = load %struct.tile_slot*, %struct.tile_slot** %bits.addr, align 8, !tbaa !4
  %height101 = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %75, i32 0, i32 2
  store i16 %conv100, i16* %height101, align 2, !tbaa !107
  br label %if.end.102

if.end.102:                                       ; preds = %if.else.98, %do.end.93
  %76 = load i8, i8* %bd, align 1, !tbaa !1
  %conv103 = zext i8 %76 to i32
  %and104 = and i32 %conv103, 128
  %tobool105 = icmp ne i32 %and104, 0
  br i1 %tobool105, label %if.then.106, label %if.else.122

if.then.106:                                      ; preds = %if.end.102
  br label %do.body.107

do.body.107:                                      ; preds = %if.then.106
  %77 = load i8*, i8** %cbp, align 8, !tbaa !4
  %78 = load i8, i8* %77, align 1, !tbaa !1
  %conv108 = zext i8 %78 to i32
  %cmp109 = icmp slt i32 %conv108, 128
  br i1 %cmp109, label %if.then.111, label %if.else.114

if.then.111:                                      ; preds = %do.body.107
  %79 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr112 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %incdec.ptr112, i8** %cbp, align 8, !tbaa !4
  %80 = load i8, i8* %79, align 1, !tbaa !1
  %conv113 = zext i8 %80 to i16
  %81 = load %struct.tile_slot*, %struct.tile_slot** %bits.addr, align 8, !tbaa !4
  %rep_shift = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %81, i32 0, i32 8
  store i16 %conv113, i16* %rep_shift, align 2, !tbaa !111
  br label %if.end.119

if.else.114:                                      ; preds = %do.body.107
  %82 = bitcast i8** %_cbp115 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %82) #1
  %83 = load i8*, i8** %cbp, align 8, !tbaa !4
  %call116 = call i64 @cmd_get_w(i8* %83, i8** %_cbp115) #6
  %conv117 = trunc i64 %call116 to i16
  %84 = load %struct.tile_slot*, %struct.tile_slot** %bits.addr, align 8, !tbaa !4
  %rep_shift118 = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %84, i32 0, i32 8
  store i16 %conv117, i16* %rep_shift118, align 2, !tbaa !111
  %85 = load i8*, i8** %_cbp115, align 8, !tbaa !4
  store i8* %85, i8** %cbp, align 8, !tbaa !4
  %86 = bitcast i8** %_cbp115 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %86) #1
  br label %if.end.119

if.end.119:                                       ; preds = %if.else.114, %if.then.111
  br label %do.cond.120

do.cond.120:                                      ; preds = %if.end.119
  br label %do.end.121

do.end.121:                                       ; preds = %do.cond.120
  br label %if.end.124

if.else.122:                                      ; preds = %if.end.102
  %87 = load %struct.tile_slot*, %struct.tile_slot** %bits.addr, align 8, !tbaa !4
  %rep_shift123 = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %87, i32 0, i32 8
  store i16 0, i16* %rep_shift123, align 2, !tbaa !111
  br label %if.end.124

if.end.124:                                       ; preds = %if.else.122, %do.end.121
  %88 = load i8, i8* %bd, align 1, !tbaa !1
  %conv125 = zext i8 %88 to i32
  %and126 = and i32 %conv125, 16
  %tobool127 = icmp ne i32 %and126, 0
  br i1 %tobool127, label %if.then.128, label %if.else.130

if.then.128:                                      ; preds = %if.end.124
  %89 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr129 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %incdec.ptr129, i8** %cbp, align 8, !tbaa !4
  %90 = load i8, i8* %89, align 1, !tbaa !1
  %91 = load %struct.tile_slot*, %struct.tile_slot** %bits.addr, align 8, !tbaa !4
  %num_planes = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %91, i32 0, i32 11
  store i8 %90, i8* %num_planes, align 1, !tbaa !113
  br label %if.end.132

if.else.130:                                      ; preds = %if.end.124
  %92 = load %struct.tile_slot*, %struct.tile_slot** %bits.addr, align 8, !tbaa !4
  %num_planes131 = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %92, i32 0, i32 11
  store i8 1, i8* %num_planes131, align 1, !tbaa !113
  br label %if.end.132

if.end.132:                                       ; preds = %if.else.130, %if.then.128
  br label %do.body.133

do.body.133:                                      ; preds = %if.end.132
  br label %do.cond.134

do.cond.134:                                      ; preds = %do.body.133
  br label %do.end.135

do.end.135:                                       ; preds = %do.cond.134
  %93 = load %struct.tile_slot*, %struct.tile_slot** %bits.addr, align 8, !tbaa !4
  %rep_shift136 = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %93, i32 0, i32 8
  %94 = load i16, i16* %rep_shift136, align 2, !tbaa !111
  %conv137 = zext i16 %94 to i32
  %cmp138 = icmp eq i32 %conv137, 0
  br i1 %cmp138, label %cond.true.140, label %cond.false.141

cond.true.140:                                    ; preds = %do.end.135
  br label %cond.end.147

cond.false.141:                                   ; preds = %do.end.135
  %95 = load %struct.tile_slot*, %struct.tile_slot** %bits.addr, align 8, !tbaa !4
  %rep_shift142 = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %95, i32 0, i32 8
  %96 = load i16, i16* %rep_shift142, align 2, !tbaa !111
  %conv143 = zext i16 %96 to i32
  %97 = load %struct.tile_slot*, %struct.tile_slot** %bits.addr, align 8, !tbaa !4
  %height144 = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %97, i32 0, i32 2
  %98 = load i16, i16* %height144, align 2, !tbaa !107
  %conv145 = zext i16 %98 to i32
  %99 = load i32, i32* %rep_height, align 4, !tbaa !6
  %div = udiv i32 %conv145, %99
  %mul146 = mul i32 %conv143, %div
  %100 = load i32, i32* %rep_width, align 4, !tbaa !6
  %rem = urem i32 %mul146, %100
  br label %cond.end.147

cond.end.147:                                     ; preds = %cond.false.141, %cond.true.140
  %cond148 = phi i32 [ 0, %cond.true.140 ], [ %rem, %cond.false.141 ]
  %conv149 = trunc i32 %cond148 to i16
  %101 = load %struct.tile_slot*, %struct.tile_slot** %bits.addr, align 8, !tbaa !4
  %shift = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %101, i32 0, i32 3
  store i16 %conv149, i16* %shift, align 2, !tbaa !112
  %102 = load %struct.tile_slot*, %struct.tile_slot** %bits.addr, align 8, !tbaa !4
  %head150 = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %102, i32 0, i32 0
  %depth151 = getelementptr inbounds %struct.gx_cached_bits_head_s, %struct.gx_cached_bits_head_s* %head150, i32 0, i32 1
  %103 = load i32, i32* %depth151, align 4, !tbaa !103
  store i32 %103, i32* %pdepth, align 4, !tbaa !6
  %104 = load %struct.tile_slot*, %struct.tile_slot** %bits.addr, align 8, !tbaa !4
  %num_planes152 = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %104, i32 0, i32 11
  %105 = load i8, i8* %num_planes152, align 1, !tbaa !113
  %conv153 = zext i8 %105 to i32
  %cmp154 = icmp ne i32 %conv153, 1
  br i1 %cmp154, label %if.then.156, label %if.end.160

if.then.156:                                      ; preds = %cond.end.147
  %106 = load %struct.tile_slot*, %struct.tile_slot** %bits.addr, align 8, !tbaa !4
  %num_planes157 = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %106, i32 0, i32 11
  %107 = load i8, i8* %num_planes157, align 1, !tbaa !113
  %conv158 = zext i8 %107 to i32
  %108 = load i32, i32* %pdepth, align 4, !tbaa !6
  %div159 = udiv i32 %108, %conv158
  store i32 %div159, i32* %pdepth, align 4, !tbaa !6
  br label %if.end.160

if.end.160:                                       ; preds = %if.then.156, %cond.end.147
  %109 = load %struct.tile_slot*, %struct.tile_slot** %bits.addr, align 8, !tbaa !4
  %width161 = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %109, i32 0, i32 1
  %110 = load i16, i16* %width161, align 2, !tbaa !106
  %conv162 = zext i16 %110 to i32
  %111 = load i32, i32* %pdepth, align 4, !tbaa !6
  %mul163 = mul i32 %conv162, %111
  %add164 = add i32 %mul163, 63
  %shr = lshr i32 %add164, 6
  %shl165 = shl i32 %shr, 3
  %conv166 = trunc i32 %shl165 to i16
  %112 = load %struct.tile_slot*, %struct.tile_slot** %bits.addr, align 8, !tbaa !4
  %raster = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %112, i32 0, i32 4
  store i16 %conv166, i16* %raster, align 2, !tbaa !108
  %113 = load i8*, i8** %cbp, align 8, !tbaa !4
  %114 = load %struct.command_buf_s*, %struct.command_buf_s** %pcb.addr, align 8, !tbaa !4
  %ptr167 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %114, i32 0, i32 2
  store i8* %113, i8** %ptr167, align 8, !tbaa !93
  call void @llvm.lifetime.end(i64 1, i8* %bd) #1
  %115 = bitcast i32* %pdepth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %115) #1
  %116 = bitcast i32* %rep_height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %116) #1
  %117 = bitcast i32* %rep_width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %117) #1
  %118 = bitcast i8** %cbp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %118) #1
  ret i32 0
}

declare i32 @gx_device_is_pattern_clist(%struct.gx_device_s*) #3

; Function Attrs: nounwind uwtable
define internal i64 @cmd_get_w(i8* %p, i8** %rp) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %rp.addr = alloca i8**, align 8
  %val = alloca i32, align 4
  %shift = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8, !tbaa !4
  store i8** %rp, i8*** %rp.addr, align 8, !tbaa !4
  %0 = bitcast i32* %val to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i8*, i8** %p.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i32 1
  store i8* %incdec.ptr, i8** %p.addr, align 8, !tbaa !4
  %2 = load i8, i8* %1, align 1, !tbaa !1
  %conv = zext i8 %2 to i32
  %and = and i32 %conv, 127
  store i32 %and, i32* %val, align 4, !tbaa !6
  %3 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 7, i32* %shift, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i8*, i8** %p.addr, align 8, !tbaa !4
  %5 = load i8, i8* %4, align 1, !tbaa !1
  %conv1 = zext i8 %5 to i32
  %and2 = and i32 %conv1, 127
  %6 = load i32, i32* %shift, align 4, !tbaa !6
  %shl = shl i32 %and2, %6
  %7 = load i32, i32* %val, align 4, !tbaa !6
  %or = or i32 %7, %shl
  store i32 %or, i32* %val, align 4, !tbaa !6
  %8 = load i8*, i8** %p.addr, align 8, !tbaa !4
  %incdec.ptr3 = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr3, i8** %p.addr, align 8, !tbaa !4
  %9 = load i8, i8* %8, align 1, !tbaa !1
  %conv4 = zext i8 %9 to i32
  %cmp = icmp sgt i32 %conv4, 127
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %shift, align 4, !tbaa !6
  %add = add nsw i32 %10, 7
  store i32 %add, i32* %shift, align 4, !tbaa !6
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i8*, i8** %p.addr, align 8, !tbaa !4
  %12 = load i8**, i8*** %rp.addr, align 8, !tbaa !4
  store i8* %11, i8** %12, align 8, !tbaa !4
  %13 = load i32, i32* %val, align 4, !tbaa !6
  %conv6 = sext i32 %13 to i64
  %14 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #1
  %15 = bitcast i32* %val to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #1
  ret i64 %conv6
}

; Function Attrs: nounwind uwtable
define internal i32 @read_set_bits(%struct.command_buf_s* %pcb, %struct.tile_slot* %bits, i32 %compress, %struct.gx_clist_state_s* %pcls, %struct.gx_strip_bitmap_s* %tile, %struct.tile_slot** %pslot, %struct.gx_device_clist_reader_s* %cdev, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %pcb.addr = alloca %struct.command_buf_s*, align 8
  %bits.addr = alloca %struct.tile_slot*, align 8
  %compress.addr = alloca i32, align 4
  %pcls.addr = alloca %struct.gx_clist_state_s*, align 8
  %tile.addr = alloca %struct.gx_strip_bitmap_s*, align 8
  %pslot.addr = alloca %struct.tile_slot**, align 8
  %cdev.addr = alloca %struct.gx_device_clist_reader_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %cbp = alloca i8*, align 8
  %rep_width = alloca i32, align 4
  %rep_height = alloca i32, align 4
  %index = alloca i32, align 4
  %offset = alloca i64, align 8
  %width_bits = alloca i32, align 4
  %width_bytes = alloca i32, align 4
  %raster = alloca i32, align 4
  %bytes = alloca i32, align 4
  %data = alloca i8*, align 8
  %slot = alloca %struct.tile_slot*, align 8
  %depth = alloca i32, align 4
  %_cbp = alloca i8*, align 8
  %_cbp35 = alloca i8*, align 8
  %r = alloca %struct.stream_cursor_read_s, align 8
  %w = alloca %struct.stream_cursor_write_s, align 8
  %cleft = alloca i32, align 4
  %nread = alloca i32, align 4
  %sstate = alloca %struct.stream_RLD_state_s, align 8
  %sstate98 = alloca %struct.stream_CFD_state_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.command_buf_s* %pcb, %struct.command_buf_s** %pcb.addr, align 8, !tbaa !4
  store %struct.tile_slot* %bits, %struct.tile_slot** %bits.addr, align 8, !tbaa !4
  store i32 %compress, i32* %compress.addr, align 4, !tbaa !6
  store %struct.gx_clist_state_s* %pcls, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !4
  store %struct.gx_strip_bitmap_s* %tile, %struct.gx_strip_bitmap_s** %tile.addr, align 8, !tbaa !4
  store %struct.tile_slot** %pslot, %struct.tile_slot*** %pslot.addr, align 8, !tbaa !4
  store %struct.gx_device_clist_reader_s* %cdev, %struct.gx_device_clist_reader_s** %cdev.addr, align 8, !tbaa !4
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %0 = bitcast i8** %cbp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.command_buf_s*, %struct.command_buf_s** %pcb.addr, align 8, !tbaa !4
  %ptr = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %1, i32 0, i32 2
  %2 = load i8*, i8** %ptr, align 8, !tbaa !93
  store i8* %2, i8** %cbp, align 8, !tbaa !4
  %3 = bitcast i32* %rep_width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.tile_slot*, %struct.tile_slot** %bits.addr, align 8, !tbaa !4
  %width = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %4, i32 0, i32 1
  %5 = load i16, i16* %width, align 2, !tbaa !106
  %conv = zext i16 %5 to i32
  %6 = load %struct.tile_slot*, %struct.tile_slot** %bits.addr, align 8, !tbaa !4
  %x_reps = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %6, i32 0, i32 6
  %7 = load i8, i8* %x_reps, align 1, !tbaa !110
  %conv1 = zext i8 %7 to i32
  %div = sdiv i32 %conv, %conv1
  store i32 %div, i32* %rep_width, align 4, !tbaa !6
  %8 = bitcast i32* %rep_height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load %struct.tile_slot*, %struct.tile_slot** %bits.addr, align 8, !tbaa !4
  %height = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %9, i32 0, i32 2
  %10 = load i16, i16* %height, align 2, !tbaa !107
  %conv2 = zext i16 %10 to i32
  %11 = load %struct.tile_slot*, %struct.tile_slot** %bits.addr, align 8, !tbaa !4
  %y_reps = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %11, i32 0, i32 7
  %12 = load i8, i8* %y_reps, align 1, !tbaa !109
  %conv3 = zext i8 %12 to i32
  %div4 = sdiv i32 %conv2, %conv3
  store i32 %div4, i32* %rep_height, align 4, !tbaa !6
  %13 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast i64* %offset to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = bitcast i32* %width_bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = bitcast i32* %width_bytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = bitcast i32* %bytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  %20 = bitcast %struct.tile_slot** %slot to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  %21 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = load %struct.tile_slot*, %struct.tile_slot** %bits.addr, align 8, !tbaa !4
  %head = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %22, i32 0, i32 0
  %depth5 = getelementptr inbounds %struct.gx_cached_bits_head_s, %struct.gx_cached_bits_head_s* %head, i32 0, i32 1
  %23 = load i32, i32* %depth5, align 4, !tbaa !103
  store i32 %23, i32* %depth, align 4, !tbaa !6
  %24 = load %struct.tile_slot*, %struct.tile_slot** %bits.addr, align 8, !tbaa !4
  %num_planes = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %24, i32 0, i32 11
  %25 = load i8, i8* %num_planes, align 1, !tbaa !113
  %conv6 = zext i8 %25 to i32
  %cmp = icmp ne i32 %conv6, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %26 = load %struct.tile_slot*, %struct.tile_slot** %bits.addr, align 8, !tbaa !4
  %num_planes8 = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %26, i32 0, i32 11
  %27 = load i8, i8* %num_planes8, align 1, !tbaa !113
  %conv9 = zext i8 %27 to i32
  %28 = load i32, i32* %depth, align 4, !tbaa !6
  %div10 = udiv i32 %28, %conv9
  store i32 %div10, i32* %depth, align 4, !tbaa !6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %29 = load i32, i32* %rep_width, align 4, !tbaa !6
  %30 = load i32, i32* %depth, align 4, !tbaa !6
  %mul = mul i32 %29, %30
  store i32 %mul, i32* %width_bits, align 4, !tbaa !6
  %31 = load i32, i32* %width_bits, align 4, !tbaa !6
  %32 = load i32, i32* %rep_height, align 4, !tbaa !6
  %33 = load %struct.tile_slot*, %struct.tile_slot** %bits.addr, align 8, !tbaa !4
  %num_planes11 = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %33, i32 0, i32 11
  %34 = load i8, i8* %num_planes11, align 1, !tbaa !113
  %conv12 = zext i8 %34 to i32
  %mul13 = mul i32 %32, %conv12
  %35 = load i32, i32* %compress.addr, align 4, !tbaa !6
  %36 = load i32, i32* %rep_width, align 4, !tbaa !6
  %37 = load %struct.tile_slot*, %struct.tile_slot** %bits.addr, align 8, !tbaa !4
  %width14 = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %37, i32 0, i32 1
  %38 = load i16, i16* %width14, align 2, !tbaa !106
  %conv15 = zext i16 %38 to i32
  %cmp16 = icmp ult i32 %36, %conv15
  %cond = select i1 %cmp16, i32 512, i32 0
  %or = or i32 %35, %cond
  %or18 = or i32 %or, 256
  %call = call i32 @clist_bitmap_bytes(i32 %31, i32 %mul13, i32 %or18, i32* %width_bytes, i32* %raster) #6
  store i32 %call, i32* %bytes, align 4, !tbaa !6
  br label %do.body

do.body:                                          ; preds = %if.end
  %39 = load i8*, i8** %cbp, align 8, !tbaa !4
  %40 = load i8, i8* %39, align 1, !tbaa !1
  %conv19 = zext i8 %40 to i32
  %cmp20 = icmp slt i32 %conv19, 128
  br i1 %cmp20, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %do.body
  %41 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %incdec.ptr, i8** %cbp, align 8, !tbaa !4
  %42 = load i8, i8* %41, align 1, !tbaa !1
  %conv23 = zext i8 %42 to i32
  store i32 %conv23, i32* %index, align 4, !tbaa !6
  br label %if.end.26

if.else:                                          ; preds = %do.body
  %43 = bitcast i8** %_cbp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %43) #1
  %44 = load i8*, i8** %cbp, align 8, !tbaa !4
  %call24 = call i64 @cmd_get_w(i8* %44, i8** %_cbp) #6
  %conv25 = trunc i64 %call24 to i32
  store i32 %conv25, i32* %index, align 4, !tbaa !6
  %45 = load i8*, i8** %_cbp, align 8, !tbaa !4
  store i8* %45, i8** %cbp, align 8, !tbaa !4
  %46 = bitcast i8** %_cbp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #1
  br label %if.end.26

if.end.26:                                        ; preds = %if.else, %if.then.22
  br label %do.cond

do.cond:                                          ; preds = %if.end.26
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.27

do.body.27:                                       ; preds = %do.end
  %47 = load i8*, i8** %cbp, align 8, !tbaa !4
  %48 = load i8, i8* %47, align 1, !tbaa !1
  %conv28 = zext i8 %48 to i32
  %cmp29 = icmp slt i32 %conv28, 128
  br i1 %cmp29, label %if.then.31, label %if.else.34

if.then.31:                                       ; preds = %do.body.27
  %49 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr32 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %incdec.ptr32, i8** %cbp, align 8, !tbaa !4
  %50 = load i8, i8* %49, align 1, !tbaa !1
  %conv33 = zext i8 %50 to i64
  store i64 %conv33, i64* %offset, align 8, !tbaa !27
  br label %if.end.37

if.else.34:                                       ; preds = %do.body.27
  %51 = bitcast i8** %_cbp35 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %51) #1
  %52 = load i8*, i8** %cbp, align 8, !tbaa !4
  %call36 = call i64 @cmd_get_w(i8* %52, i8** %_cbp35) #6
  store i64 %call36, i64* %offset, align 8, !tbaa !27
  %53 = load i8*, i8** %_cbp35, align 8, !tbaa !4
  store i8* %53, i8** %cbp, align 8, !tbaa !4
  %54 = bitcast i8** %_cbp35 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #1
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.34, %if.then.31
  br label %do.cond.38

do.cond.38:                                       ; preds = %if.end.37
  br label %do.end.39

do.end.39:                                        ; preds = %do.cond.38
  br label %do.body.40

do.body.40:                                       ; preds = %do.end.39
  br label %do.cond.41

do.cond.41:                                       ; preds = %do.body.40
  br label %do.end.42

do.end.42:                                        ; preds = %do.cond.41
  %55 = load i32, i32* %index, align 4, !tbaa !6
  %56 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !4
  %tile_index = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %56, i32 0, i32 2
  store i32 %55, i32* %tile_index, align 4, !tbaa !133
  %57 = load i64, i64* %offset, align 8, !tbaa !27
  %58 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !4
  %tile_index43 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %58, i32 0, i32 2
  %59 = load i32, i32* %tile_index43, align 4, !tbaa !133
  %idxprom = zext i32 %59 to i64
  %60 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %cdev.addr, align 8, !tbaa !4
  %tile_table = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %60, i32 0, i32 55
  %61 = load %struct.tile_hash*, %struct.tile_hash** %tile_table, align 8, !tbaa !135
  %arrayidx = getelementptr inbounds %struct.tile_hash, %struct.tile_hash* %61, i64 %idxprom
  %offset44 = getelementptr inbounds %struct.tile_hash, %struct.tile_hash* %arrayidx, i32 0, i32 0
  store i64 %57, i64* %offset44, align 8, !tbaa !136
  %62 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %cdev.addr, align 8, !tbaa !4
  %chunk = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %62, i32 0, i32 51
  %data45 = getelementptr inbounds %struct.gx_bits_cache_chunk_s, %struct.gx_bits_cache_chunk_s* %chunk, i32 0, i32 1
  %63 = load i8*, i8** %data45, align 8, !tbaa !134
  %64 = load i64, i64* %offset, align 8, !tbaa !27
  %add.ptr = getelementptr inbounds i8, i8* %63, i64 %64
  %65 = bitcast i8* %add.ptr to %struct.tile_slot*
  store %struct.tile_slot* %65, %struct.tile_slot** %slot, align 8, !tbaa !4
  %66 = load %struct.tile_slot*, %struct.tile_slot** %slot, align 8, !tbaa !4
  %67 = load %struct.tile_slot**, %struct.tile_slot*** %pslot.addr, align 8, !tbaa !4
  store %struct.tile_slot* %66, %struct.tile_slot** %67, align 8, !tbaa !4
  %68 = load %struct.tile_slot*, %struct.tile_slot** %slot, align 8, !tbaa !4
  %69 = load %struct.tile_slot*, %struct.tile_slot** %bits.addr, align 8, !tbaa !4
  %70 = bitcast %struct.tile_slot* %68 to i8*
  %71 = bitcast %struct.tile_slot* %69 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %70, i8* %71, i64 40, i32 8, i1 false), !tbaa.struct !102
  %72 = load %struct.tile_slot*, %struct.tile_slot** %slot, align 8, !tbaa !4
  %add.ptr46 = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %72, i64 1
  %73 = bitcast %struct.tile_slot* %add.ptr46 to i8*
  store i8* %73, i8** %data, align 8, !tbaa !4
  %74 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tile.addr, align 8, !tbaa !4
  %data47 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %74, i32 0, i32 0
  store i8* %73, i8** %data47, align 8, !tbaa !138
  %75 = load i32, i32* %compress.addr, align 4, !tbaa !6
  %cmp48 = icmp eq i32 %75, 3
  br i1 %cmp48, label %if.then.50, label %if.else.63

if.then.50:                                       ; preds = %do.end.42
  %76 = load %struct.command_buf_s*, %struct.command_buf_s** %pcb.addr, align 8, !tbaa !4
  %77 = load i8*, i8** %data, align 8, !tbaa !4
  %78 = load i8*, i8** %cbp, align 8, !tbaa !4
  %call51 = call i8* @cmd_read_data(%struct.command_buf_s* %76, i8* %77, i32 1, i8* %78) #6
  store i8* %call51, i8** %cbp, align 8, !tbaa !4
  %79 = load i32, i32* %width_bytes, align 4, !tbaa !6
  %cmp52 = icmp ugt i32 %79, 0
  br i1 %cmp52, label %land.lhs.true, label %if.end.62

land.lhs.true:                                    ; preds = %if.then.50
  %80 = load i32, i32* %rep_height, align 4, !tbaa !6
  %cmp54 = icmp ugt i32 %80, 0
  br i1 %cmp54, label %if.then.56, label %if.end.62

if.then.56:                                       ; preds = %land.lhs.true
  %81 = load i8*, i8** %data, align 8, !tbaa !4
  %add.ptr57 = getelementptr inbounds i8, i8* %81, i64 1
  %82 = load i8*, i8** %data, align 8, !tbaa !4
  %83 = load i8, i8* %82, align 1, !tbaa !1
  %conv58 = zext i8 %83 to i32
  %84 = load i32, i32* %width_bytes, align 4, !tbaa !6
  %85 = load i32, i32* %rep_height, align 4, !tbaa !6
  %mul59 = mul i32 %84, %85
  %sub = sub i32 %mul59, 1
  %conv60 = zext i32 %sub to i64
  %call61 = call i8* @memset(i8* %add.ptr57, i32 %conv58, i64 %conv60) #7
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.56, %land.lhs.true, %if.then.50
  br label %if.end.126

if.else.63:                                       ; preds = %do.end.42
  %86 = load i32, i32* %compress.addr, align 4, !tbaa !6
  %tobool = icmp ne i32 %86, 0
  br i1 %tobool, label %if.then.64, label %if.else.104

if.then.64:                                       ; preds = %if.else.63
  %87 = bitcast %struct.stream_cursor_read_s* %r to i8*
  call void @llvm.lifetime.start(i64 24, i8* %87) #1
  %88 = bitcast %struct.stream_cursor_write_s* %w to i8*
  call void @llvm.lifetime.start(i64 24, i8* %88) #1
  %89 = bitcast i32* %cleft to i8*
  call void @llvm.lifetime.start(i64 4, i8* %89) #1
  %90 = load %struct.command_buf_s*, %struct.command_buf_s** %pcb.addr, align 8, !tbaa !4
  %end = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %90, i32 0, i32 4
  %91 = load i8*, i8** %end, align 8, !tbaa !16
  %92 = load i8*, i8** %cbp, align 8, !tbaa !4
  %sub.ptr.lhs.cast = ptrtoint i8* %91 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %92 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv65 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv65, i32* %cleft, align 4, !tbaa !6
  %93 = load i32, i32* %cleft, align 4, !tbaa !6
  %94 = load i32, i32* %bytes, align 4, !tbaa !6
  %cmp66 = icmp ult i32 %93, %94
  br i1 %cmp66, label %land.lhs.true.68, label %if.end.85

land.lhs.true.68:                                 ; preds = %if.then.64
  %95 = load %struct.command_buf_s*, %struct.command_buf_s** %pcb.addr, align 8, !tbaa !4
  %end_status = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %95, i32 0, i32 6
  %96 = load i32, i32* %end_status, align 4, !tbaa !15
  %tobool69 = icmp ne i32 %96, 0
  br i1 %tobool69, label %if.end.85, label %if.then.70

if.then.70:                                       ; preds = %land.lhs.true.68
  %97 = bitcast i32* %nread to i8*
  call void @llvm.lifetime.start(i64 4, i8* %97) #1
  %98 = load i32, i32* %cleft, align 4, !tbaa !6
  %sub71 = sub i32 4096, %98
  store i32 %sub71, i32* %nread, align 4, !tbaa !6
  %99 = load %struct.command_buf_s*, %struct.command_buf_s** %pcb.addr, align 8, !tbaa !4
  %data72 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %99, i32 0, i32 0
  %100 = load i8*, i8** %data72, align 8, !tbaa !11
  %101 = load i8*, i8** %cbp, align 8, !tbaa !4
  %102 = load i32, i32* %cleft, align 4, !tbaa !6
  %conv73 = zext i32 %102 to i64
  %call74 = call i8* @memmove(i8* %100, i8* %101, i64 %conv73) #7
  %103 = load %struct.command_buf_s*, %struct.command_buf_s** %pcb.addr, align 8, !tbaa !4
  %s = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %103, i32 0, i32 5
  %104 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !14
  %105 = load %struct.command_buf_s*, %struct.command_buf_s** %pcb.addr, align 8, !tbaa !4
  %data75 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %105, i32 0, i32 0
  %106 = load i8*, i8** %data75, align 8, !tbaa !11
  %107 = load i32, i32* %cleft, align 4, !tbaa !6
  %idx.ext = zext i32 %107 to i64
  %add.ptr76 = getelementptr inbounds i8, i8* %106, i64 %idx.ext
  %108 = load i32, i32* %nread, align 4, !tbaa !6
  %call77 = call i32 @sgets(%struct.stream_s* %104, i8* %add.ptr76, i32 %108, i32* %nread) #6
  %109 = load %struct.command_buf_s*, %struct.command_buf_s** %pcb.addr, align 8, !tbaa !4
  %end_status78 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %109, i32 0, i32 6
  store i32 %call77, i32* %end_status78, align 4, !tbaa !15
  %110 = load %struct.command_buf_s*, %struct.command_buf_s** %pcb.addr, align 8, !tbaa !4
  %111 = load %struct.command_buf_s*, %struct.command_buf_s** %pcb.addr, align 8, !tbaa !4
  %data79 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %111, i32 0, i32 0
  %112 = load i8*, i8** %data79, align 8, !tbaa !11
  %113 = load i32, i32* %cleft, align 4, !tbaa !6
  %idx.ext80 = zext i32 %113 to i64
  %add.ptr81 = getelementptr inbounds i8, i8* %112, i64 %idx.ext80
  %114 = load i32, i32* %nread, align 4, !tbaa !6
  %idx.ext82 = zext i32 %114 to i64
  %add.ptr83 = getelementptr inbounds i8, i8* %add.ptr81, i64 %idx.ext82
  call void @set_cb_end(%struct.command_buf_s* %110, i8* %add.ptr83) #6
  %115 = load %struct.command_buf_s*, %struct.command_buf_s** %pcb.addr, align 8, !tbaa !4
  %data84 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %115, i32 0, i32 0
  %116 = load i8*, i8** %data84, align 8, !tbaa !11
  store i8* %116, i8** %cbp, align 8, !tbaa !4
  %117 = bitcast i32* %nread to i8*
  call void @llvm.lifetime.end(i64 4, i8* %117) #1
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.70, %land.lhs.true.68, %if.then.64
  %118 = load i8*, i8** %cbp, align 8, !tbaa !4
  %add.ptr86 = getelementptr inbounds i8, i8* %118, i64 -1
  %ptr87 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 0
  store i8* %add.ptr86, i8** %ptr87, align 8, !tbaa !124
  %119 = load %struct.command_buf_s*, %struct.command_buf_s** %pcb.addr, align 8, !tbaa !4
  %end88 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %119, i32 0, i32 4
  %120 = load i8*, i8** %end88, align 8, !tbaa !16
  %add.ptr89 = getelementptr inbounds i8, i8* %120, i64 -1
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 1
  store i8* %add.ptr89, i8** %limit, align 8, !tbaa !126
  %121 = load i8*, i8** %data, align 8, !tbaa !4
  %add.ptr90 = getelementptr inbounds i8, i8* %121, i64 -1
  %ptr91 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 1
  store i8* %add.ptr90, i8** %ptr91, align 8, !tbaa !127
  %ptr92 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 1
  %122 = load i8*, i8** %ptr92, align 8, !tbaa !127
  %123 = load i32, i32* %bytes, align 4, !tbaa !6
  %idx.ext93 = zext i32 %123 to i64
  %add.ptr94 = getelementptr inbounds i8, i8* %122, i64 %idx.ext93
  %limit95 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 2
  store i8* %add.ptr94, i8** %limit95, align 8, !tbaa !129
  %124 = load i32, i32* %compress.addr, align 4, !tbaa !6
  switch i32 %124, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.97
  ]

sw.bb:                                            ; preds = %if.end.85
  %125 = bitcast %struct.stream_RLD_state_s* %sstate to i8*
  call void @llvm.lifetime.start(i64 120, i8* %125) #1
  call void @clist_rld_init(%struct.stream_RLD_state_s* %sstate) #6
  %126 = load i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)** getelementptr inbounds (%struct.stream_template_s, %struct.stream_template_s* @s_RLD_template, i32 0, i32 2), align 8, !tbaa !130
  %127 = bitcast %struct.stream_RLD_state_s* %sstate to %struct.stream_state_s*
  %call96 = call i32 %126(%struct.stream_state_s* %127, %struct.stream_cursor_read_s* %r, %struct.stream_cursor_write_s* %w, i32 1) #6
  %128 = bitcast %struct.stream_RLD_state_s* %sstate to i8*
  call void @llvm.lifetime.end(i64 120, i8* %128) #1
  br label %sw.epilog

sw.bb.97:                                         ; preds = %if.end.85
  %129 = bitcast %struct.stream_CFD_state_s* %sstate98 to i8*
  call void @llvm.lifetime.start(i64 240, i8* %129) #1
  %130 = load i32, i32* %width_bytes, align 4, !tbaa !6
  %shl = shl i32 %130, 3
  %131 = load i32, i32* %rep_height, align 4, !tbaa !6
  %132 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  call void @clist_cfd_init(%struct.stream_CFD_state_s* %sstate98, i32 %shl, i32 %131, %struct.gs_memory_s* %132) #6
  %133 = load i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)** getelementptr inbounds (%struct.stream_template_s, %struct.stream_template_s* @s_CFD_template, i32 0, i32 2), align 8, !tbaa !130
  %134 = bitcast %struct.stream_CFD_state_s* %sstate98 to %struct.stream_state_s*
  %call99 = call i32 %133(%struct.stream_state_s* %134, %struct.stream_cursor_read_s* %r, %struct.stream_cursor_write_s* %w, i32 1) #6
  %135 = load void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)** getelementptr inbounds (%struct.stream_template_s, %struct.stream_template_s* @s_CFD_template, i32 0, i32 5), align 8, !tbaa !132
  %136 = bitcast %struct.stream_CFD_state_s* %sstate98 to %struct.stream_state_s*
  call void %135(%struct.stream_state_s* %136) #6
  %137 = bitcast %struct.stream_CFD_state_s* %sstate98 to i8*
  call void @llvm.lifetime.end(i64 240, i8* %137) #1
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.85
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb.97, %sw.bb
  %ptr100 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 0
  %138 = load i8*, i8** %ptr100, align 8, !tbaa !124
  %add.ptr101 = getelementptr inbounds i8, i8* %138, i64 1
  store i8* %add.ptr101, i8** %cbp, align 8, !tbaa !4
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default
  %139 = bitcast i32* %cleft to i8*
  call void @llvm.lifetime.end(i64 4, i8* %139) #1
  %140 = bitcast %struct.stream_cursor_write_s* %w to i8*
  call void @llvm.lifetime.end(i64 24, i8* %140) #1
  %141 = bitcast %struct.stream_cursor_read_s* %r to i8*
  call void @llvm.lifetime.end(i64 24, i8* %141) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.155 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.125

if.else.104:                                      ; preds = %if.else.63
  %142 = load i32, i32* %rep_height, align 4, !tbaa !6
  %143 = load %struct.tile_slot*, %struct.tile_slot** %bits.addr, align 8, !tbaa !4
  %num_planes105 = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %143, i32 0, i32 11
  %144 = load i8, i8* %num_planes105, align 1, !tbaa !113
  %conv106 = zext i8 %144 to i32
  %mul107 = mul i32 %142, %conv106
  %cmp108 = icmp ugt i32 %mul107, 1
  br i1 %cmp108, label %land.lhs.true.110, label %if.else.122

land.lhs.true.110:                                ; preds = %if.else.104
  %145 = load i32, i32* %width_bytes, align 4, !tbaa !6
  %146 = load %struct.tile_slot*, %struct.tile_slot** %bits.addr, align 8, !tbaa !4
  %raster111 = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %146, i32 0, i32 4
  %147 = load i16, i16* %raster111, align 2, !tbaa !108
  %conv112 = zext i16 %147 to i32
  %cmp113 = icmp ne i32 %145, %conv112
  br i1 %cmp113, label %if.then.115, label %if.else.122

if.then.115:                                      ; preds = %land.lhs.true.110
  %148 = load %struct.command_buf_s*, %struct.command_buf_s** %pcb.addr, align 8, !tbaa !4
  %149 = load i8*, i8** %data, align 8, !tbaa !4
  %150 = load i32, i32* %bytes, align 4, !tbaa !6
  %151 = load i32, i32* %width_bytes, align 4, !tbaa !6
  %152 = load i32, i32* %rep_height, align 4, !tbaa !6
  %153 = load %struct.tile_slot*, %struct.tile_slot** %bits.addr, align 8, !tbaa !4
  %num_planes116 = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %153, i32 0, i32 11
  %154 = load i8, i8* %num_planes116, align 1, !tbaa !113
  %conv117 = zext i8 %154 to i32
  %mul118 = mul i32 %152, %conv117
  %155 = load %struct.tile_slot*, %struct.tile_slot** %bits.addr, align 8, !tbaa !4
  %raster119 = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %155, i32 0, i32 4
  %156 = load i16, i16* %raster119, align 2, !tbaa !108
  %conv120 = zext i16 %156 to i32
  %157 = load i8*, i8** %cbp, align 8, !tbaa !4
  %call121 = call i8* @cmd_read_short_bits(%struct.command_buf_s* %148, i8* %149, i32 %150, i32 %151, i32 %mul118, i32 %conv120, i8* %157) #6
  store i8* %call121, i8** %cbp, align 8, !tbaa !4
  br label %if.end.124

if.else.122:                                      ; preds = %land.lhs.true.110, %if.else.104
  %158 = load %struct.command_buf_s*, %struct.command_buf_s** %pcb.addr, align 8, !tbaa !4
  %159 = load i8*, i8** %data, align 8, !tbaa !4
  %160 = load i32, i32* %bytes, align 4, !tbaa !6
  %161 = load i8*, i8** %cbp, align 8, !tbaa !4
  %call123 = call i8* @cmd_read_data(%struct.command_buf_s* %158, i8* %159, i32 %160, i8* %161) #6
  store i8* %call123, i8** %cbp, align 8, !tbaa !4
  br label %if.end.124

if.end.124:                                       ; preds = %if.else.122, %if.then.115
  br label %if.end.125

if.end.125:                                       ; preds = %if.end.124, %cleanup.cont
  br label %if.end.126

if.end.126:                                       ; preds = %if.end.125, %if.end.62
  %162 = load %struct.tile_slot*, %struct.tile_slot** %bits.addr, align 8, !tbaa !4
  %width127 = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %162, i32 0, i32 1
  %163 = load i16, i16* %width127, align 2, !tbaa !106
  %conv128 = zext i16 %163 to i32
  %164 = load i32, i32* %rep_width, align 4, !tbaa !6
  %cmp129 = icmp ugt i32 %conv128, %164
  br i1 %cmp129, label %if.then.131, label %if.end.143

if.then.131:                                      ; preds = %if.end.126
  %165 = load i8*, i8** %data, align 8, !tbaa !4
  %166 = load i32, i32* %rep_width, align 4, !tbaa !6
  %167 = load i32, i32* %depth, align 4, !tbaa !6
  %mul132 = mul i32 %166, %167
  %168 = load i32, i32* %rep_height, align 4, !tbaa !6
  %169 = load %struct.tile_slot*, %struct.tile_slot** %bits.addr, align 8, !tbaa !4
  %num_planes133 = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %169, i32 0, i32 11
  %170 = load i8, i8* %num_planes133, align 1, !tbaa !113
  %conv134 = zext i8 %170 to i32
  %mul135 = mul i32 %168, %conv134
  %171 = load %struct.tile_slot*, %struct.tile_slot** %bits.addr, align 8, !tbaa !4
  %raster136 = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %171, i32 0, i32 4
  %172 = load i16, i16* %raster136, align 2, !tbaa !108
  %conv137 = zext i16 %172 to i32
  %173 = load %struct.tile_slot*, %struct.tile_slot** %bits.addr, align 8, !tbaa !4
  %width138 = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %173, i32 0, i32 1
  %174 = load i16, i16* %width138, align 2, !tbaa !106
  %conv139 = zext i16 %174 to i32
  %175 = load i32, i32* %depth, align 4, !tbaa !6
  %mul140 = mul i32 %conv139, %175
  %176 = load %struct.tile_slot*, %struct.tile_slot** %bits.addr, align 8, !tbaa !4
  %raster141 = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %176, i32 0, i32 4
  %177 = load i16, i16* %raster141, align 2, !tbaa !108
  %conv142 = zext i16 %177 to i32
  call void @bits_replicate_horizontally(i8* %165, i32 %mul132, i32 %mul135, i32 %conv137, i32 %mul140, i32 %conv142) #6
  br label %if.end.143

if.end.143:                                       ; preds = %if.then.131, %if.end.126
  %178 = load %struct.tile_slot*, %struct.tile_slot** %bits.addr, align 8, !tbaa !4
  %height144 = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %178, i32 0, i32 2
  %179 = load i16, i16* %height144, align 2, !tbaa !107
  %conv145 = zext i16 %179 to i32
  %180 = load i32, i32* %rep_height, align 4, !tbaa !6
  %cmp146 = icmp ugt i32 %conv145, %180
  br i1 %cmp146, label %if.then.148, label %if.end.153

if.then.148:                                      ; preds = %if.end.143
  %181 = load i8*, i8** %data, align 8, !tbaa !4
  %182 = load i32, i32* %rep_height, align 4, !tbaa !6
  %183 = load %struct.tile_slot*, %struct.tile_slot** %bits.addr, align 8, !tbaa !4
  %raster149 = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %183, i32 0, i32 4
  %184 = load i16, i16* %raster149, align 2, !tbaa !108
  %conv150 = zext i16 %184 to i32
  %185 = load %struct.tile_slot*, %struct.tile_slot** %bits.addr, align 8, !tbaa !4
  %height151 = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %185, i32 0, i32 2
  %186 = load i16, i16* %height151, align 2, !tbaa !107
  %conv152 = zext i16 %186 to i32
  call void @bits_replicate_vertically(i8* %181, i32 %182, i32 %conv150, i32 %conv152) #6
  br label %if.end.153

if.end.153:                                       ; preds = %if.then.148, %if.end.143
  %187 = load i8*, i8** %cbp, align 8, !tbaa !4
  %188 = load %struct.command_buf_s*, %struct.command_buf_s** %pcb.addr, align 8, !tbaa !4
  %ptr154 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %188, i32 0, i32 2
  store i8* %187, i8** %ptr154, align 8, !tbaa !93
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.155

cleanup.155:                                      ; preds = %if.end.153, %cleanup
  %189 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %189) #1
  %190 = bitcast %struct.tile_slot** %slot to i8*
  call void @llvm.lifetime.end(i64 8, i8* %190) #1
  %191 = bitcast i8** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %191) #1
  %192 = bitcast i32* %bytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %192) #1
  %193 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %193) #1
  %194 = bitcast i32* %width_bytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %194) #1
  %195 = bitcast i32* %width_bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %195) #1
  %196 = bitcast i64* %offset to i8*
  call void @llvm.lifetime.end(i64 8, i8* %196) #1
  %197 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %197) #1
  %198 = bitcast i32* %rep_height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %198) #1
  %199 = bitcast i32* %rep_width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %199) #1
  %200 = bitcast i8** %cbp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %200) #1
  %201 = load i32, i32* %retval
  ret i32 %201
}

; Function Attrs: nounwind uwtable
define internal i32 @read_set_misc_map(i8 zeroext %cb, %struct.command_buf_s* %pcb, %struct.gs_imager_state_s* %pis, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %cb.addr = alloca i8, align 1
  %pcb.addr = alloca %struct.command_buf_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %cbp = alloca i8*, align 8
  %mdata = alloca i16*, align 8
  %pcomp_num = alloca i32*, align 8
  %count = alloca i32, align 4
  %cont = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8 %cb, i8* %cb.addr, align 1, !tbaa !1
  store %struct.command_buf_s* %pcb, %struct.command_buf_s** %pcb.addr, align 8, !tbaa !4
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !4
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %0 = bitcast i8** %cbp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.command_buf_s*, %struct.command_buf_s** %pcb.addr, align 8, !tbaa !4
  %ptr = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %1, i32 0, i32 2
  %2 = load i8*, i8** %ptr, align 8, !tbaa !93
  store i8* %2, i8** %cbp, align 8, !tbaa !4
  %3 = bitcast i16** %mdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32** %pcomp_num to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %cont to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load i8, i8* %cb.addr, align 1, !tbaa !1
  %conv = zext i8 %7 to i32
  %and = and i32 %conv, 48
  %shr = lshr i32 %and, 4
  store i32 %shr, i32* %cont, align 4, !tbaa !1
  %8 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load i8, i8* %cb.addr, align 1, !tbaa !1
  %conv1 = zext i8 %9 to i32
  %and2 = and i32 %conv1, 15
  %10 = load i32, i32* %cont, align 4, !tbaa !1
  %11 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !4
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %call = call i32 @cmd_select_map(i32 %and2, i32 %10, %struct.gs_imager_state_s* %11, i32** %pcomp_num, i16** %mdata, i32* %count, %struct.gs_memory_s* %12) #6
  store i32 %call, i32* %code, align 4, !tbaa !6
  %13 = load i32, i32* %code, align 4, !tbaa !6
  %cmp = icmp slt i32 %13, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %14 = load i32, i32* %code, align 4, !tbaa !6
  store i32 %14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %15 = load i32*, i32** %pcomp_num, align 8, !tbaa !4
  %cmp4 = icmp eq i32* %15, null
  br i1 %cmp4, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end
  %16 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr, i8** %cbp, align 8, !tbaa !4
  br label %if.end.9

if.else:                                          ; preds = %if.end
  %17 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr7 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr7, i8** %cbp, align 8, !tbaa !4
  %18 = load i8, i8* %17, align 1, !tbaa !1
  %conv8 = zext i8 %18 to i32
  %19 = load i32*, i32** %pcomp_num, align 8, !tbaa !4
  store i32 %conv8, i32* %19, align 4, !tbaa !6
  br label %do.body

do.body:                                          ; preds = %if.else
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.9

if.end.9:                                         ; preds = %do.end, %if.then.6
  %20 = load i32, i32* %cont, align 4, !tbaa !1
  %cmp10 = icmp eq i32 %20, 2
  br i1 %cmp10, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.end.9
  %21 = load %struct.command_buf_s*, %struct.command_buf_s** %pcb.addr, align 8, !tbaa !4
  %22 = load i16*, i16** %mdata, align 8, !tbaa !4
  %23 = bitcast i16* %22 to i8*
  %24 = load i32, i32* %count, align 4, !tbaa !6
  %25 = load i8*, i8** %cbp, align 8, !tbaa !4
  %call13 = call i8* @cmd_read_data(%struct.command_buf_s* %21, i8* %23, i32 %24, i8* %25) #6
  store i8* %call13, i8** %cbp, align 8, !tbaa !4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %if.end.9
  %26 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !4
  call void @gx_imager_set_effective_xfer(%struct.gs_imager_state_s* %26) #6
  %27 = load i8*, i8** %cbp, align 8, !tbaa !4
  %28 = load %struct.command_buf_s*, %struct.command_buf_s** %pcb.addr, align 8, !tbaa !4
  %ptr15 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %28, i32 0, i32 2
  store i8* %27, i8** %ptr15, align 8, !tbaa !93
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.14, %if.then
  %29 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #1
  %30 = bitcast i32* %cont to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #1
  %31 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  %32 = bitcast i32** %pcomp_num to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  %33 = bitcast i16** %mdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  %34 = bitcast i8** %cbp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  %35 = load i32, i32* %retval
  ret i32 %35
}

; Function Attrs: nounwind uwtable
define internal i32 @cmd_resize_halftone(%struct.gx_device_halftone_s** %ppdht, i32 %num_comp, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %ppdht.addr = alloca %struct.gx_device_halftone_s**, align 8
  %num_comp.addr = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %code = alloca i32, align 4
  %pdht = alloca %struct.gx_device_halftone_s*, align 8
  %cleanup.dest.slot = alloca i32
  %pcomp = alloca %struct.gx_ht_order_component_s*, align 8
  %i = alloca i32, align 4
  store %struct.gx_device_halftone_s** %ppdht, %struct.gx_device_halftone_s*** %ppdht.addr, align 8, !tbaa !4
  store i32 %num_comp, i32* %num_comp.addr, align 4, !tbaa !6
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gx_device_halftone_s**, %struct.gx_device_halftone_s*** %ppdht.addr, align 8, !tbaa !4
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %call = call i32 @cmd_create_dev_ht(%struct.gx_device_halftone_s** %1, %struct.gs_memory_s* %2) #6
  store i32 %call, i32* %code, align 4, !tbaa !6
  %3 = bitcast %struct.gx_device_halftone_s** %pdht to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gx_device_halftone_s**, %struct.gx_device_halftone_s*** %ppdht.addr, align 8, !tbaa !4
  %5 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %4, align 8, !tbaa !4
  store %struct.gx_device_halftone_s* %5, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !4
  %6 = load i32, i32* %code, align 4, !tbaa !6
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %code, align 4, !tbaa !6
  store i32 %7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.55

if.end:                                           ; preds = %entry
  %8 = load i32, i32* %num_comp.addr, align 4, !tbaa !6
  %9 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !4
  %num_comp1 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %9, i32 0, i32 5
  %10 = load i32, i32* %num_comp1, align 4, !tbaa !241
  %cmp2 = icmp ne i32 %8, %10
  br i1 %cmp2, label %if.then.3, label %if.end.54

if.then.3:                                        ; preds = %if.end
  %11 = bitcast %struct.gx_ht_order_component_s** %pcomp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = load i32, i32* %num_comp.addr, align 4, !tbaa !6
  %13 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !4
  %num_comp4 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %13, i32 0, i32 5
  %14 = load i32, i32* %num_comp4, align 4, !tbaa !241
  %cmp5 = icmp ult i32 %12, %14
  br i1 %cmp5, label %if.then.6, label %if.else.28

if.then.6:                                        ; preds = %if.then.3
  %15 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !4
  %num_comp7 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %16, i32 0, i32 5
  %17 = load i32, i32* %num_comp7, align 4, !tbaa !241
  store i32 %17, i32* %i, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %if.end.16, %if.then.6
  %18 = load i32, i32* %i, align 4, !tbaa !6
  %dec = add i32 %18, -1
  store i32 %dec, i32* %i, align 4, !tbaa !6
  %19 = load i32, i32* %num_comp.addr, align 4, !tbaa !6
  %cmp8 = icmp ugt i32 %18, %19
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom = zext i32 %20 to i64
  %21 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !4
  %components = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %21, i32 0, i32 4
  %22 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %components, align 8, !tbaa !242
  %arrayidx = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %22, i64 %idxprom
  %corder = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %arrayidx, i32 0, i32 0
  %bit_data = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %corder, i32 0, i32 13
  %23 = load i8*, i8** %bit_data, align 8, !tbaa !243
  %24 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !4
  %order = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %24, i32 0, i32 0
  %bit_data9 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %order, i32 0, i32 13
  %25 = load i8*, i8** %bit_data9, align 8, !tbaa !245
  %cmp10 = icmp ne i8* %23, %25
  br i1 %cmp10, label %if.then.11, label %if.end.16

if.then.11:                                       ; preds = %for.body
  %26 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom12 = zext i32 %26 to i64
  %27 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !4
  %components13 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %27, i32 0, i32 4
  %28 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %components13, align 8, !tbaa !242
  %arrayidx14 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %28, i64 %idxprom12
  %corder15 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %arrayidx14, i32 0, i32 0
  %29 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  call void @gx_ht_order_release(%struct.gx_ht_order_s* %corder15, %struct.gs_memory_s* %29, i32 1) #6
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.11, %for.body
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %30 = load i32, i32* %num_comp.addr, align 4, !tbaa !6
  %cmp17 = icmp eq i32 %30, 0
  br i1 %cmp17, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %for.end
  %31 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %31, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %32 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !172
  %33 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %34 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !4
  %components19 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %34, i32 0, i32 4
  %35 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %components19, align 8, !tbaa !242
  %36 = bitcast %struct.gx_ht_order_component_s* %35 to i8*
  call void %32(%struct.gs_memory_s* %33, i8* %36, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.29, i32 0, i32 0)) #6
  store %struct.gx_ht_order_component_s* null, %struct.gx_ht_order_component_s** %pcomp, align 8, !tbaa !4
  br label %if.end.27

if.else:                                          ; preds = %for.end
  %37 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %procs20 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %37, i32 0, i32 1
  %resize_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs20, i32 0, i32 1
  %38 = load i8* (%struct.gs_memory_s*, i8*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i8*)** %resize_object, align 8, !tbaa !246
  %39 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %40 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !4
  %components21 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %40, i32 0, i32 4
  %41 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %components21, align 8, !tbaa !242
  %42 = bitcast %struct.gx_ht_order_component_s* %41 to i8*
  %43 = load i32, i32* %num_comp.addr, align 4, !tbaa !6
  %call22 = call i8* %38(%struct.gs_memory_s* %39, i8* %42, i32 %43, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.29, i32 0, i32 0)) #6
  %44 = bitcast i8* %call22 to %struct.gx_ht_order_component_s*
  store %struct.gx_ht_order_component_s* %44, %struct.gx_ht_order_component_s** %pcomp, align 8, !tbaa !4
  %45 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %pcomp, align 8, !tbaa !4
  %cmp23 = icmp eq %struct.gx_ht_order_component_s* %45, null
  br i1 %cmp23, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %if.else
  %46 = load i32, i32* %num_comp.addr, align 4, !tbaa !6
  %47 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !4
  %num_comp25 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %47, i32 0, i32 5
  store i32 %46, i32* %num_comp25, align 4, !tbaa !241
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.26:                                        ; preds = %if.else
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.then.18
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.27, %if.then.24
  %48 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.51 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.48

if.else.28:                                       ; preds = %if.then.3
  %49 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !4
  %num_comp29 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %49, i32 0, i32 5
  %50 = load i32, i32* %num_comp29, align 4, !tbaa !241
  %cmp30 = icmp eq i32 %50, 0
  br i1 %cmp30, label %if.then.31, label %if.else.34

if.then.31:                                       ; preds = %if.else.28
  %51 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %procs32 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %51, i32 0, i32 1
  %alloc_struct_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs32, i32 0, i32 12
  %52 = load i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct_array, align 8, !tbaa !247
  %53 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %54 = load i32, i32* %num_comp.addr, align 4, !tbaa !6
  %call33 = call i8* %52(%struct.gs_memory_s* %53, i32 %54, %struct.gs_memory_struct_type_s* @st_ht_order_component_element, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.29, i32 0, i32 0)) #6
  %55 = bitcast i8* %call33 to %struct.gx_ht_order_component_s*
  store %struct.gx_ht_order_component_s* %55, %struct.gx_ht_order_component_s** %pcomp, align 8, !tbaa !4
  br label %if.end.39

if.else.34:                                       ; preds = %if.else.28
  %56 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %procs35 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %56, i32 0, i32 1
  %resize_object36 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs35, i32 0, i32 1
  %57 = load i8* (%struct.gs_memory_s*, i8*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i8*)** %resize_object36, align 8, !tbaa !246
  %58 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %59 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !4
  %components37 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %59, i32 0, i32 4
  %60 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %components37, align 8, !tbaa !242
  %61 = bitcast %struct.gx_ht_order_component_s* %60 to i8*
  %62 = load i32, i32* %num_comp.addr, align 4, !tbaa !6
  %call38 = call i8* %57(%struct.gs_memory_s* %58, i8* %61, i32 %62, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.29, i32 0, i32 0)) #6
  %63 = bitcast i8* %call38 to %struct.gx_ht_order_component_s*
  store %struct.gx_ht_order_component_s* %63, %struct.gx_ht_order_component_s** %pcomp, align 8, !tbaa !4
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.34, %if.then.31
  %64 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %pcomp, align 8, !tbaa !4
  %cmp40 = icmp eq %struct.gx_ht_order_component_s* %64, null
  br i1 %cmp40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.end.39
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.51

if.end.42:                                        ; preds = %if.end.39
  %65 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !4
  %num_comp43 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %65, i32 0, i32 5
  %66 = load i32, i32* %num_comp43, align 4, !tbaa !241
  %idxprom44 = zext i32 %66 to i64
  %67 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %pcomp, align 8, !tbaa !4
  %arrayidx45 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %67, i64 %idxprom44
  %68 = bitcast %struct.gx_ht_order_component_s* %arrayidx45 to i8*
  %69 = load i32, i32* %num_comp.addr, align 4, !tbaa !6
  %70 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !4
  %num_comp46 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %70, i32 0, i32 5
  %71 = load i32, i32* %num_comp46, align 4, !tbaa !241
  %sub = sub i32 %69, %71
  %conv = zext i32 %sub to i64
  %mul = mul i64 168, %conv
  %call47 = call i8* @memset(i8* %68, i32 0, i64 %mul) #7
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.42, %cleanup.cont
  %72 = load i32, i32* %num_comp.addr, align 4, !tbaa !6
  %73 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !4
  %num_comp49 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %73, i32 0, i32 5
  store i32 %72, i32* %num_comp49, align 4, !tbaa !241
  %74 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %pcomp, align 8, !tbaa !4
  %75 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !4
  %components50 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %75, i32 0, i32 4
  store %struct.gx_ht_order_component_s* %74, %struct.gx_ht_order_component_s** %components50, align 8, !tbaa !242
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.51

cleanup.51:                                       ; preds = %if.end.48, %if.then.41, %cleanup
  %76 = bitcast %struct.gx_ht_order_component_s** %pcomp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %76) #1
  %cleanup.dest.52 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.52, label %cleanup.55 [
    i32 0, label %cleanup.cont.53
  ]

cleanup.cont.53:                                  ; preds = %cleanup.51
  br label %if.end.54

if.end.54:                                        ; preds = %cleanup.cont.53, %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.55

cleanup.55:                                       ; preds = %if.end.54, %cleanup.51, %if.then
  %77 = bitcast %struct.gx_device_halftone_s** %pdht to i8*
  call void @llvm.lifetime.end(i64 8, i8* %77) #1
  %78 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #1
  %79 = load i32, i32* %retval
  ret i32 %79
}

; Function Attrs: nounwind uwtable
define internal i8* @cmd_read_rect(i32 %op, %struct.gx_cmd_rect* %prect, i8* %cbp) #0 {
entry:
  %op.addr = alloca i32, align 4
  %prect.addr = alloca %struct.gx_cmd_rect*, align 8
  %cbp.addr = alloca i8*, align 8
  %_cbp = alloca i8*, align 8
  %_cbp17 = alloca i8*, align 8
  %_cbp32 = alloca i8*, align 8
  %_cbp54 = alloca i8*, align 8
  store i32 %op, i32* %op.addr, align 4, !tbaa !6
  store %struct.gx_cmd_rect* %prect, %struct.gx_cmd_rect** %prect.addr, align 8, !tbaa !4
  store i8* %cbp, i8** %cbp.addr, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %cbp.addr, align 8, !tbaa !4
  %1 = load i8, i8* %0, align 1, !tbaa !1
  %conv = zext i8 %1 to i32
  %cmp = icmp slt i32 %conv, 128
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %2 = load i8*, i8** %cbp.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %cbp.addr, align 8, !tbaa !4
  %3 = load i8, i8* %2, align 1, !tbaa !1
  %conv2 = zext i8 %3 to i32
  %4 = load %struct.gx_cmd_rect*, %struct.gx_cmd_rect** %prect.addr, align 8, !tbaa !4
  %x = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %4, i32 0, i32 0
  store i32 %conv2, i32* %x, align 4, !tbaa !248
  br label %if.end

if.else:                                          ; preds = %do.body
  %5 = bitcast i8** %_cbp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load i8*, i8** %cbp.addr, align 8, !tbaa !4
  %call = call i64 @cmd_get_w(i8* %6, i8** %_cbp) #6
  %conv3 = trunc i64 %call to i32
  %7 = load %struct.gx_cmd_rect*, %struct.gx_cmd_rect** %prect.addr, align 8, !tbaa !4
  %x4 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %7, i32 0, i32 0
  store i32 %conv3, i32* %x4, align 4, !tbaa !248
  %8 = load i8*, i8** %_cbp, align 8, !tbaa !4
  store i8* %8, i8** %cbp.addr, align 8, !tbaa !4
  %9 = bitcast i8** %_cbp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %10 = load i32, i32* %op.addr, align 4, !tbaa !6
  %and = and i32 %10, 15
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.5, label %if.else.7

if.then.5:                                        ; preds = %do.end
  %11 = load i32, i32* %op.addr, align 4, !tbaa !6
  %shr = ashr i32 %11, 2
  %and6 = and i32 %shr, 3
  %sub = sub nsw i32 %and6, 2
  %12 = load %struct.gx_cmd_rect*, %struct.gx_cmd_rect** %prect.addr, align 8, !tbaa !4
  %y = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %12, i32 0, i32 1
  %13 = load i32, i32* %y, align 4, !tbaa !249
  %add = add nsw i32 %13, %sub
  store i32 %add, i32* %y, align 4, !tbaa !249
  br label %if.end.23

if.else.7:                                        ; preds = %do.end
  br label %do.body.8

do.body.8:                                        ; preds = %if.else.7
  %14 = load i8*, i8** %cbp.addr, align 8, !tbaa !4
  %15 = load i8, i8* %14, align 1, !tbaa !1
  %conv9 = zext i8 %15 to i32
  %cmp10 = icmp slt i32 %conv9, 128
  br i1 %cmp10, label %if.then.12, label %if.else.16

if.then.12:                                       ; preds = %do.body.8
  %16 = load i8*, i8** %cbp.addr, align 8, !tbaa !4
  %incdec.ptr13 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr13, i8** %cbp.addr, align 8, !tbaa !4
  %17 = load i8, i8* %16, align 1, !tbaa !1
  %conv14 = zext i8 %17 to i32
  %18 = load %struct.gx_cmd_rect*, %struct.gx_cmd_rect** %prect.addr, align 8, !tbaa !4
  %y15 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %18, i32 0, i32 1
  store i32 %conv14, i32* %y15, align 4, !tbaa !249
  br label %if.end.21

if.else.16:                                       ; preds = %do.body.8
  %19 = bitcast i8** %_cbp17 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  %20 = load i8*, i8** %cbp.addr, align 8, !tbaa !4
  %call18 = call i64 @cmd_get_w(i8* %20, i8** %_cbp17) #6
  %conv19 = trunc i64 %call18 to i32
  %21 = load %struct.gx_cmd_rect*, %struct.gx_cmd_rect** %prect.addr, align 8, !tbaa !4
  %y20 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %21, i32 0, i32 1
  store i32 %conv19, i32* %y20, align 4, !tbaa !249
  %22 = load i8*, i8** %_cbp17, align 8, !tbaa !4
  store i8* %22, i8** %cbp.addr, align 8, !tbaa !4
  %23 = bitcast i8** %_cbp17 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.16, %if.then.12
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  br label %if.end.23

if.end.23:                                        ; preds = %do.end.22, %if.then.5
  br label %do.body.24

do.body.24:                                       ; preds = %if.end.23
  %24 = load i8*, i8** %cbp.addr, align 8, !tbaa !4
  %25 = load i8, i8* %24, align 1, !tbaa !1
  %conv25 = zext i8 %25 to i32
  %cmp26 = icmp slt i32 %conv25, 128
  br i1 %cmp26, label %if.then.28, label %if.else.31

if.then.28:                                       ; preds = %do.body.24
  %26 = load i8*, i8** %cbp.addr, align 8, !tbaa !4
  %incdec.ptr29 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr29, i8** %cbp.addr, align 8, !tbaa !4
  %27 = load i8, i8* %26, align 1, !tbaa !1
  %conv30 = zext i8 %27 to i32
  %28 = load %struct.gx_cmd_rect*, %struct.gx_cmd_rect** %prect.addr, align 8, !tbaa !4
  %width = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %28, i32 0, i32 2
  store i32 %conv30, i32* %width, align 4, !tbaa !250
  br label %if.end.36

if.else.31:                                       ; preds = %do.body.24
  %29 = bitcast i8** %_cbp32 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %29) #1
  %30 = load i8*, i8** %cbp.addr, align 8, !tbaa !4
  %call33 = call i64 @cmd_get_w(i8* %30, i8** %_cbp32) #6
  %conv34 = trunc i64 %call33 to i32
  %31 = load %struct.gx_cmd_rect*, %struct.gx_cmd_rect** %prect.addr, align 8, !tbaa !4
  %width35 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %31, i32 0, i32 2
  store i32 %conv34, i32* %width35, align 4, !tbaa !250
  %32 = load i8*, i8** %_cbp32, align 8, !tbaa !4
  store i8* %32, i8** %cbp.addr, align 8, !tbaa !4
  %33 = bitcast i8** %_cbp32 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.31, %if.then.28
  br label %do.end.37

do.end.37:                                        ; preds = %if.end.36
  %34 = load i32, i32* %op.addr, align 4, !tbaa !6
  %and38 = and i32 %34, 15
  %tobool39 = icmp ne i32 %and38, 0
  br i1 %tobool39, label %if.then.40, label %if.else.44

if.then.40:                                       ; preds = %do.end.37
  %35 = load i32, i32* %op.addr, align 4, !tbaa !6
  %and41 = and i32 %35, 3
  %sub42 = sub nsw i32 %and41, 2
  %36 = load %struct.gx_cmd_rect*, %struct.gx_cmd_rect** %prect.addr, align 8, !tbaa !4
  %height = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %36, i32 0, i32 3
  %37 = load i32, i32* %height, align 4, !tbaa !251
  %add43 = add nsw i32 %37, %sub42
  store i32 %add43, i32* %height, align 4, !tbaa !251
  br label %if.end.60

if.else.44:                                       ; preds = %do.end.37
  br label %do.body.45

do.body.45:                                       ; preds = %if.else.44
  %38 = load i8*, i8** %cbp.addr, align 8, !tbaa !4
  %39 = load i8, i8* %38, align 1, !tbaa !1
  %conv46 = zext i8 %39 to i32
  %cmp47 = icmp slt i32 %conv46, 128
  br i1 %cmp47, label %if.then.49, label %if.else.53

if.then.49:                                       ; preds = %do.body.45
  %40 = load i8*, i8** %cbp.addr, align 8, !tbaa !4
  %incdec.ptr50 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %incdec.ptr50, i8** %cbp.addr, align 8, !tbaa !4
  %41 = load i8, i8* %40, align 1, !tbaa !1
  %conv51 = zext i8 %41 to i32
  %42 = load %struct.gx_cmd_rect*, %struct.gx_cmd_rect** %prect.addr, align 8, !tbaa !4
  %height52 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %42, i32 0, i32 3
  store i32 %conv51, i32* %height52, align 4, !tbaa !251
  br label %if.end.58

if.else.53:                                       ; preds = %do.body.45
  %43 = bitcast i8** %_cbp54 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %43) #1
  %44 = load i8*, i8** %cbp.addr, align 8, !tbaa !4
  %call55 = call i64 @cmd_get_w(i8* %44, i8** %_cbp54) #6
  %conv56 = trunc i64 %call55 to i32
  %45 = load %struct.gx_cmd_rect*, %struct.gx_cmd_rect** %prect.addr, align 8, !tbaa !4
  %height57 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %45, i32 0, i32 3
  store i32 %conv56, i32* %height57, align 4, !tbaa !251
  %46 = load i8*, i8** %_cbp54, align 8, !tbaa !4
  store i8* %46, i8** %cbp.addr, align 8, !tbaa !4
  %47 = bitcast i8** %_cbp54 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #1
  br label %if.end.58

if.end.58:                                        ; preds = %if.else.53, %if.then.49
  br label %do.end.59

do.end.59:                                        ; preds = %if.end.58
  br label %if.end.60

if.end.60:                                        ; preds = %do.end.59, %if.then.40
  %48 = load i8*, i8** %cbp.addr, align 8, !tbaa !4
  ret i8* %48
}

declare i32 @clist_bitmap_bytes(i32, i32, i32, i32*, i32*) #3

; Function Attrs: nounwind uwtable
define internal i8* @cmd_read_data(%struct.command_buf_s* %pcb, i8* %ptr, i32 %rsize, i8* %cbp) #0 {
entry:
  %retval = alloca i8*, align 8
  %pcb.addr = alloca %struct.command_buf_s*, align 8
  %ptr.addr = alloca i8*, align 8
  %rsize.addr = alloca i32, align 4
  %cbp.addr = alloca i8*, align 8
  %cleft = alloca i32, align 4
  %rleft = alloca i32, align 4
  store %struct.command_buf_s* %pcb, %struct.command_buf_s** %pcb.addr, align 8, !tbaa !4
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !4
  store i32 %rsize, i32* %rsize.addr, align 4, !tbaa !6
  store i8* %cbp, i8** %cbp.addr, align 8, !tbaa !4
  %0 = load %struct.command_buf_s*, %struct.command_buf_s** %pcb.addr, align 8, !tbaa !4
  %end = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %0, i32 0, i32 4
  %1 = load i8*, i8** %end, align 8, !tbaa !16
  %2 = load i8*, i8** %cbp.addr, align 8, !tbaa !4
  %sub.ptr.lhs.cast = ptrtoint i8* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %3 = load i32, i32* %rsize.addr, align 4, !tbaa !6
  %conv = zext i32 %3 to i64
  %cmp = icmp sge i64 %sub.ptr.sub, %conv
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** %ptr.addr, align 8, !tbaa !4
  %5 = load i8*, i8** %cbp.addr, align 8, !tbaa !4
  %6 = load i32, i32* %rsize.addr, align 4, !tbaa !6
  %conv2 = zext i32 %6 to i64
  %call = call i8* @memmove(i8* %4, i8* %5, i64 %conv2) #7
  %7 = load i8*, i8** %cbp.addr, align 8, !tbaa !4
  %8 = load i32, i32* %rsize.addr, align 4, !tbaa !6
  %idx.ext = zext i32 %8 to i64
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %idx.ext
  store i8* %add.ptr, i8** %retval
  br label %return

if.else:                                          ; preds = %entry
  %9 = bitcast i32* %cleft to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load %struct.command_buf_s*, %struct.command_buf_s** %pcb.addr, align 8, !tbaa !4
  %end3 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %10, i32 0, i32 4
  %11 = load i8*, i8** %end3, align 8, !tbaa !16
  %12 = load i8*, i8** %cbp.addr, align 8, !tbaa !4
  %sub.ptr.lhs.cast4 = ptrtoint i8* %11 to i64
  %sub.ptr.rhs.cast5 = ptrtoint i8* %12 to i64
  %sub.ptr.sub6 = sub i64 %sub.ptr.lhs.cast4, %sub.ptr.rhs.cast5
  %conv7 = trunc i64 %sub.ptr.sub6 to i32
  store i32 %conv7, i32* %cleft, align 4, !tbaa !6
  %13 = bitcast i32* %rleft to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = load i32, i32* %rsize.addr, align 4, !tbaa !6
  %15 = load i32, i32* %cleft, align 4, !tbaa !6
  %sub = sub i32 %14, %15
  store i32 %sub, i32* %rleft, align 4, !tbaa !6
  %16 = load i8*, i8** %ptr.addr, align 8, !tbaa !4
  %17 = load i8*, i8** %cbp.addr, align 8, !tbaa !4
  %18 = load i32, i32* %cleft, align 4, !tbaa !6
  %conv8 = zext i32 %18 to i64
  %call9 = call i8* @memmove(i8* %16, i8* %17, i64 %conv8) #7
  %19 = load %struct.command_buf_s*, %struct.command_buf_s** %pcb.addr, align 8, !tbaa !4
  %s = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %19, i32 0, i32 5
  %20 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !14
  %21 = load i8*, i8** %ptr.addr, align 8, !tbaa !4
  %22 = load i32, i32* %cleft, align 4, !tbaa !6
  %idx.ext10 = zext i32 %22 to i64
  %add.ptr11 = getelementptr inbounds i8, i8* %21, i64 %idx.ext10
  %23 = load i32, i32* %rleft, align 4, !tbaa !6
  %call12 = call i32 @sgets(%struct.stream_s* %20, i8* %add.ptr11, i32 %23, i32* %rleft) #6
  %24 = load %struct.command_buf_s*, %struct.command_buf_s** %pcb.addr, align 8, !tbaa !4
  %end13 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %24, i32 0, i32 4
  %25 = load i8*, i8** %end13, align 8, !tbaa !16
  store i8* %25, i8** %retval
  %26 = bitcast i32* %rleft to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  %27 = bitcast i32* %cleft to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  br label %return

return:                                           ; preds = %if.else, %if.then
  %28 = load i8*, i8** %retval
  ret i8* %28
}

; Function Attrs: nounwind
declare i8* @memmove(i8*, i8*, i64) #2

declare i32 @sgets(%struct.stream_s*, i8*, i32, i32*) #3

declare void @clist_rld_init(%struct.stream_RLD_state_s*) #3

declare void @clist_cfd_init(%struct.stream_CFD_state_s*, i32, i32, %struct.gs_memory_s*) #3

; Function Attrs: nounwind uwtable
define internal i8* @cmd_read_short_bits(%struct.command_buf_s* %pcb, i8* %data, i32 %tot_bytes, i32 %width_bytes, i32 %height, i32 %raster, i8* %cbp) #0 {
entry:
  %pcb.addr = alloca %struct.command_buf_s*, align 8
  %data.addr = alloca i8*, align 8
  %tot_bytes.addr = alloca i32, align 4
  %width_bytes.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %cbp.addr = alloca i8*, align 8
  %pdata = alloca i8*, align 8
  %udata = alloca i8*, align 8
  store %struct.command_buf_s* %pcb, %struct.command_buf_s** %pcb.addr, align 8, !tbaa !4
  store i8* %data, i8** %data.addr, align 8, !tbaa !4
  store i32 %tot_bytes, i32* %tot_bytes.addr, align 4, !tbaa !6
  store i32 %width_bytes, i32* %width_bytes.addr, align 4, !tbaa !6
  store i32 %height, i32* %height.addr, align 4, !tbaa !6
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !6
  store i8* %cbp, i8** %cbp.addr, align 8, !tbaa !4
  %0 = load %struct.command_buf_s*, %struct.command_buf_s** %pcb.addr, align 8, !tbaa !4
  %1 = load i8*, i8** %data.addr, align 8, !tbaa !4
  %2 = load i32, i32* %tot_bytes.addr, align 4, !tbaa !6
  %3 = load i8*, i8** %cbp.addr, align 8, !tbaa !4
  %call = call i8* @cmd_read_data(%struct.command_buf_s* %0, i8* %1, i32 %2, i8* %3) #6
  store i8* %call, i8** %cbp.addr, align 8, !tbaa !4
  %4 = load i32, i32* %width_bytes.addr, align 4, !tbaa !6
  %5 = load i32, i32* %raster.addr, align 4, !tbaa !6
  %cmp = icmp ult i32 %4, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = bitcast i8** %pdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load i8*, i8** %data.addr, align 8, !tbaa !4
  %8 = load i32, i32* %width_bytes.addr, align 4, !tbaa !6
  %9 = load i32, i32* %height.addr, align 4, !tbaa !6
  %mul = mul nsw i32 %8, %9
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %idx.ext
  store i8* %add.ptr, i8** %pdata, align 8, !tbaa !4
  %10 = bitcast i8** %udata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load i8*, i8** %data.addr, align 8, !tbaa !4
  %12 = load i32, i32* %height.addr, align 4, !tbaa !6
  %13 = load i32, i32* %raster.addr, align 4, !tbaa !6
  %mul1 = mul i32 %12, %13
  %idx.ext2 = zext i32 %mul1 to i64
  %add.ptr3 = getelementptr inbounds i8, i8* %11, i64 %idx.ext2
  store i8* %add.ptr3, i8** %udata, align 8, !tbaa !4
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.then
  %14 = load i32, i32* %height.addr, align 4, !tbaa !6
  %dec = add nsw i32 %14, -1
  store i32 %dec, i32* %height.addr, align 4, !tbaa !6
  %cmp4 = icmp sgt i32 %dec, 0
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %15 = load i32, i32* %raster.addr, align 4, !tbaa !6
  %16 = load i8*, i8** %udata, align 8, !tbaa !4
  %idx.ext5 = zext i32 %15 to i64
  %idx.neg = sub i64 0, %idx.ext5
  %add.ptr6 = getelementptr inbounds i8, i8* %16, i64 %idx.neg
  store i8* %add.ptr6, i8** %udata, align 8, !tbaa !4
  %17 = load i32, i32* %width_bytes.addr, align 4, !tbaa !6
  %18 = load i8*, i8** %pdata, align 8, !tbaa !4
  %idx.ext7 = sext i32 %17 to i64
  %idx.neg8 = sub i64 0, %idx.ext7
  %add.ptr9 = getelementptr inbounds i8, i8* %18, i64 %idx.neg8
  store i8* %add.ptr9, i8** %pdata, align 8, !tbaa !4
  %19 = load i32, i32* %width_bytes.addr, align 4, !tbaa !6
  switch i32 %19, label %sw.default [
    i32 6, label %sw.bb
    i32 5, label %sw.bb.12
    i32 4, label %sw.bb.15
    i32 3, label %sw.bb.18
    i32 2, label %sw.bb.21
    i32 1, label %sw.bb.24
    i32 0, label %sw.bb.27
  ]

sw.default:                                       ; preds = %while.body
  %20 = load i8*, i8** %udata, align 8, !tbaa !4
  %21 = load i8*, i8** %pdata, align 8, !tbaa !4
  %22 = load i32, i32* %width_bytes.addr, align 4, !tbaa !6
  %conv = sext i32 %22 to i64
  %call10 = call i8* @memmove(i8* %20, i8* %21, i64 %conv) #7
  br label %sw.epilog

sw.bb:                                            ; preds = %while.body
  %23 = load i8*, i8** %pdata, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds i8, i8* %23, i64 5
  %24 = load i8, i8* %arrayidx, align 1, !tbaa !1
  %25 = load i8*, i8** %udata, align 8, !tbaa !4
  %arrayidx11 = getelementptr inbounds i8, i8* %25, i64 5
  store i8 %24, i8* %arrayidx11, align 1, !tbaa !1
  br label %sw.bb.12

sw.bb.12:                                         ; preds = %while.body, %sw.bb
  %26 = load i8*, i8** %pdata, align 8, !tbaa !4
  %arrayidx13 = getelementptr inbounds i8, i8* %26, i64 4
  %27 = load i8, i8* %arrayidx13, align 1, !tbaa !1
  %28 = load i8*, i8** %udata, align 8, !tbaa !4
  %arrayidx14 = getelementptr inbounds i8, i8* %28, i64 4
  store i8 %27, i8* %arrayidx14, align 1, !tbaa !1
  br label %sw.bb.15

sw.bb.15:                                         ; preds = %while.body, %sw.bb.12
  %29 = load i8*, i8** %pdata, align 8, !tbaa !4
  %arrayidx16 = getelementptr inbounds i8, i8* %29, i64 3
  %30 = load i8, i8* %arrayidx16, align 1, !tbaa !1
  %31 = load i8*, i8** %udata, align 8, !tbaa !4
  %arrayidx17 = getelementptr inbounds i8, i8* %31, i64 3
  store i8 %30, i8* %arrayidx17, align 1, !tbaa !1
  br label %sw.bb.18

sw.bb.18:                                         ; preds = %while.body, %sw.bb.15
  %32 = load i8*, i8** %pdata, align 8, !tbaa !4
  %arrayidx19 = getelementptr inbounds i8, i8* %32, i64 2
  %33 = load i8, i8* %arrayidx19, align 1, !tbaa !1
  %34 = load i8*, i8** %udata, align 8, !tbaa !4
  %arrayidx20 = getelementptr inbounds i8, i8* %34, i64 2
  store i8 %33, i8* %arrayidx20, align 1, !tbaa !1
  br label %sw.bb.21

sw.bb.21:                                         ; preds = %while.body, %sw.bb.18
  %35 = load i8*, i8** %pdata, align 8, !tbaa !4
  %arrayidx22 = getelementptr inbounds i8, i8* %35, i64 1
  %36 = load i8, i8* %arrayidx22, align 1, !tbaa !1
  %37 = load i8*, i8** %udata, align 8, !tbaa !4
  %arrayidx23 = getelementptr inbounds i8, i8* %37, i64 1
  store i8 %36, i8* %arrayidx23, align 1, !tbaa !1
  br label %sw.bb.24

sw.bb.24:                                         ; preds = %while.body, %sw.bb.21
  %38 = load i8*, i8** %pdata, align 8, !tbaa !4
  %arrayidx25 = getelementptr inbounds i8, i8* %38, i64 0
  %39 = load i8, i8* %arrayidx25, align 1, !tbaa !1
  %40 = load i8*, i8** %udata, align 8, !tbaa !4
  %arrayidx26 = getelementptr inbounds i8, i8* %40, i64 0
  store i8 %39, i8* %arrayidx26, align 1, !tbaa !1
  br label %sw.bb.27

sw.bb.27:                                         ; preds = %while.body, %sw.bb.24
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.27, %sw.default
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %41 = bitcast i8** %udata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  %42 = bitcast i8** %pdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  br label %if.end

if.end:                                           ; preds = %while.end, %entry
  %43 = load i8*, i8** %cbp.addr, align 8, !tbaa !4
  ret i8* %43
}

declare i32 @igcd(i32, i32) #3

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @cmd_copy_value(i8* %pvar, i32 %var_size, i8* %cbp) #4 {
entry:
  %pvar.addr = alloca i8*, align 8
  %var_size.addr = alloca i32, align 4
  %cbp.addr = alloca i8*, align 8
  store i8* %pvar, i8** %pvar.addr, align 8, !tbaa !4
  store i32 %var_size, i32* %var_size.addr, align 4, !tbaa !6
  store i8* %cbp, i8** %cbp.addr, align 8, !tbaa !4
  %0 = load i8*, i8** %pvar.addr, align 8, !tbaa !4
  %1 = load i8*, i8** %cbp.addr, align 8, !tbaa !4
  %2 = load i32, i32* %var_size.addr, align 4, !tbaa !6
  %conv = sext i32 %2 to i64
  %call = call i8* @memcpy(i8* %0, i8* %1, i64 %conv) #7
  %3 = load i8*, i8** %cbp.addr, align 8, !tbaa !4
  %4 = load i32, i32* %var_size.addr, align 4, !tbaa !6
  %idx.ext = sext i32 %4 to i64
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %idx.ext
  ret i8* %add.ptr
}

declare i8* @cmd_read_matrix(%struct.gs_matrix_s*, i8*) #3

declare i32 @gs_imager_setmatrix(%struct.gs_imager_state_s*, %struct.gs_matrix_s*) #3

; Function Attrs: nounwind uwtable
define internal i32 @read_set_misc2(%struct.command_buf_s* %pcb, %struct.gs_imager_state_s* %pis, i32* %pnotes) #0 {
entry:
  %pcb.addr = alloca %struct.command_buf_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pnotes.addr = alloca i32*, align 8
  %cbp = alloca i8*, align 8
  %mask = alloca i32, align 4
  %cb = alloca i32, align 4
  %_cbp = alloca i8*, align 8
  %width = alloca float, align 4
  %limit = alloca float, align 4
  store %struct.command_buf_s* %pcb, %struct.command_buf_s** %pcb.addr, align 8, !tbaa !4
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !4
  store i32* %pnotes, i32** %pnotes.addr, align 8, !tbaa !4
  %0 = bitcast i8** %cbp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.command_buf_s*, %struct.command_buf_s** %pcb.addr, align 8, !tbaa !4
  %ptr = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %1, i32 0, i32 2
  %2 = load i8*, i8** %ptr, align 8, !tbaa !93
  store i8* %2, i8** %cbp, align 8, !tbaa !4
  %3 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %cb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  br label %do.body

do.body:                                          ; preds = %entry
  %5 = load i8*, i8** %cbp, align 8, !tbaa !4
  %6 = load i8, i8* %5, align 1, !tbaa !1
  %conv = zext i8 %6 to i32
  %cmp = icmp slt i32 %conv, 128
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %7 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %cbp, align 8, !tbaa !4
  %8 = load i8, i8* %7, align 1, !tbaa !1
  %conv2 = zext i8 %8 to i32
  store i32 %conv2, i32* %mask, align 4, !tbaa !6
  br label %if.end

if.else:                                          ; preds = %do.body
  %9 = bitcast i8** %_cbp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load i8*, i8** %cbp, align 8, !tbaa !4
  %call = call i64 @cmd_get_w(i8* %10, i8** %_cbp) #6
  %conv3 = trunc i64 %call to i32
  store i32 %conv3, i32* %mask, align 4, !tbaa !6
  %11 = load i8*, i8** %_cbp, align 8, !tbaa !4
  store i8* %11, i8** %cbp, align 8, !tbaa !4
  %12 = bitcast i8** %_cbp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %13 = load i32, i32* %mask, align 4, !tbaa !6
  %and = and i32 %13, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.4, label %if.end.23

if.then.4:                                        ; preds = %do.end
  %14 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr5 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr5, i8** %cbp, align 8, !tbaa !4
  %15 = load i8, i8* %14, align 1, !tbaa !1
  %conv6 = zext i8 %15 to i32
  store i32 %conv6, i32* %cb, align 4, !tbaa !6
  %16 = load i32, i32* %cb, align 4, !tbaa !6
  %shr = lshr i32 %16, 3
  %and7 = and i32 %shr, 7
  %17 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !4
  %line_params = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %17, i32 0, i32 3
  %start_cap = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params, i32 0, i32 1
  store i32 %and7, i32* %start_cap, align 4, !tbaa !252
  %18 = load i32, i32* %cb, align 4, !tbaa !6
  %and8 = and i32 %18, 7
  %19 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !4
  %line_params9 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %19, i32 0, i32 3
  %join = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params9, i32 0, i32 4
  store i32 %and8, i32* %join, align 4, !tbaa !253
  br label %do.body.10

do.body.10:                                       ; preds = %if.then.4
  br label %do.cond.11

do.cond.11:                                       ; preds = %do.body.10
  br label %do.end.12

do.end.12:                                        ; preds = %do.cond.11
  %20 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr13 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr13, i8** %cbp, align 8, !tbaa !4
  %21 = load i8, i8* %20, align 1, !tbaa !1
  %conv14 = zext i8 %21 to i32
  store i32 %conv14, i32* %cb, align 4, !tbaa !6
  %22 = load i32, i32* %cb, align 4, !tbaa !6
  %shr15 = lshr i32 %22, 3
  %and16 = and i32 %shr15, 7
  %23 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !4
  %line_params17 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %23, i32 0, i32 3
  %end_cap = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params17, i32 0, i32 2
  store i32 %and16, i32* %end_cap, align 4, !tbaa !254
  %24 = load i32, i32* %cb, align 4, !tbaa !6
  %and18 = and i32 %24, 7
  %25 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !4
  %line_params19 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %25, i32 0, i32 3
  %dash_cap = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params19, i32 0, i32 3
  store i32 %and18, i32* %dash_cap, align 4, !tbaa !255
  br label %do.body.20

do.body.20:                                       ; preds = %do.end.12
  br label %do.cond.21

do.cond.21:                                       ; preds = %do.body.20
  br label %do.end.22

do.end.22:                                        ; preds = %do.cond.21
  br label %if.end.23

if.end.23:                                        ; preds = %do.end.22, %do.end
  %26 = load i32, i32* %mask, align 4, !tbaa !6
  %and24 = and i32 %26, 2
  %tobool25 = icmp ne i32 %and24, 0
  br i1 %tobool25, label %if.then.26, label %if.end.39

if.then.26:                                       ; preds = %if.end.23
  %27 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr27 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr27, i8** %cbp, align 8, !tbaa !4
  %28 = load i8, i8* %27, align 1, !tbaa !1
  %conv28 = zext i8 %28 to i32
  store i32 %conv28, i32* %cb, align 4, !tbaa !6
  %29 = load i32, i32* %cb, align 4, !tbaa !6
  %shr29 = lshr i32 %29, 2
  %and30 = and i32 %shr29, 7
  %sub = sub i32 %and30, 1
  %30 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !4
  %line_params31 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %30, i32 0, i32 3
  %curve_join = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params31, i32 0, i32 5
  store i32 %sub, i32* %curve_join, align 4, !tbaa !256
  %31 = load i32, i32* %cb, align 4, !tbaa !6
  %and32 = and i32 %31, 2
  %cmp33 = icmp ne i32 %and32, 0
  %conv34 = zext i1 %cmp33 to i32
  %32 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !4
  %accurate_curves = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %32, i32 0, i32 30
  store i32 %conv34, i32* %accurate_curves, align 4, !tbaa !185
  %33 = load i32, i32* %cb, align 4, !tbaa !6
  %and35 = and i32 %33, 1
  %34 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !4
  %stroke_adjust = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %34, i32 0, i32 29
  store i32 %and35, i32* %stroke_adjust, align 4, !tbaa !257
  br label %do.body.36

do.body.36:                                       ; preds = %if.then.26
  br label %do.cond.37

do.cond.37:                                       ; preds = %do.body.36
  br label %do.end.38

do.end.38:                                        ; preds = %do.cond.37
  br label %if.end.39

if.end.39:                                        ; preds = %do.end.38, %if.end.23
  %35 = load i32, i32* %mask, align 4, !tbaa !6
  %and40 = and i32 %35, 4
  %tobool41 = icmp ne i32 %and40, 0
  br i1 %tobool41, label %if.then.42, label %if.end.47

if.then.42:                                       ; preds = %if.end.39
  %36 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !4
  %flatness = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %36, i32 0, i32 27
  %37 = bitcast float* %flatness to i8*
  %38 = load i8*, i8** %cbp, align 8, !tbaa !4
  %call43 = call i8* @cmd_copy_value(i8* %37, i32 4, i8* %38) #6
  store i8* %call43, i8** %cbp, align 8, !tbaa !4
  br label %do.body.44

do.body.44:                                       ; preds = %if.then.42
  br label %do.cond.45

do.cond.45:                                       ; preds = %do.body.44
  br label %do.end.46

do.end.46:                                        ; preds = %do.cond.45
  br label %if.end.47

if.end.47:                                        ; preds = %do.end.46, %if.end.39
  %39 = load i32, i32* %mask, align 4, !tbaa !6
  %and48 = and i32 %39, 8
  %tobool49 = icmp ne i32 %and48, 0
  br i1 %tobool49, label %if.then.50, label %if.end.59

if.then.50:                                       ; preds = %if.end.47
  %40 = bitcast float* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %40) #1
  %41 = bitcast float* %width to i8*
  %42 = load i8*, i8** %cbp, align 8, !tbaa !4
  %call51 = call i8* @cmd_copy_value(i8* %41, i32 4, i8* %42) #6
  store i8* %call51, i8** %cbp, align 8, !tbaa !4
  br label %do.body.52

do.body.52:                                       ; preds = %if.then.50
  br label %do.cond.53

do.cond.53:                                       ; preds = %do.body.52
  br label %do.end.54

do.end.54:                                        ; preds = %do.cond.53
  %43 = load float, float* %width, align 4, !tbaa !65
  %conv55 = fpext float %43 to double
  %call56 = call double @fabs(double %conv55) #8
  %div = fdiv double %call56, 2.000000e+00
  %conv57 = fptrunc double %div to float
  %44 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !4
  %line_params58 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %44, i32 0, i32 3
  %half_width = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params58, i32 0, i32 0
  store float %conv57, float* %half_width, align 4, !tbaa !258
  %45 = bitcast float* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #1
  br label %if.end.59

if.end.59:                                        ; preds = %do.end.54, %if.end.47
  %46 = load i32, i32* %mask, align 4, !tbaa !6
  %and60 = and i32 %46, 16
  %tobool61 = icmp ne i32 %and60, 0
  br i1 %tobool61, label %if.then.62, label %if.end.70

if.then.62:                                       ; preds = %if.end.59
  %47 = bitcast float* %limit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %47) #1
  %48 = bitcast float* %limit to i8*
  %49 = load i8*, i8** %cbp, align 8, !tbaa !4
  %call63 = call i8* @cmd_copy_value(i8* %48, i32 4, i8* %49) #6
  store i8* %call63, i8** %cbp, align 8, !tbaa !4
  br label %do.body.64

do.body.64:                                       ; preds = %if.then.62
  br label %do.cond.65

do.cond.65:                                       ; preds = %do.body.64
  br label %do.end.66

do.end.66:                                        ; preds = %do.cond.65
  %50 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !4
  %line_params67 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %50, i32 0, i32 3
  %51 = load float, float* %limit, align 4, !tbaa !65
  %conv68 = fpext float %51 to double
  %call69 = call i32 @gx_set_miter_limit(%struct.gx_line_params_s* %line_params67, double %conv68) #6
  %52 = bitcast float* %limit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #1
  br label %if.end.70

if.end.70:                                        ; preds = %do.end.66, %if.end.59
  %53 = load i32, i32* %mask, align 4, !tbaa !6
  %and71 = and i32 %53, 32
  %tobool72 = icmp ne i32 %and71, 0
  br i1 %tobool72, label %if.then.73, label %if.end.89

if.then.73:                                       ; preds = %if.end.70
  %54 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr74 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %incdec.ptr74, i8** %cbp, align 8, !tbaa !4
  %55 = load i8, i8* %54, align 1, !tbaa !1
  %conv75 = zext i8 %55 to i32
  store i32 %conv75, i32* %cb, align 4, !tbaa !6
  %56 = load i32, i32* %cb, align 4, !tbaa !6
  %shr76 = lshr i32 %56, 3
  %57 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !4
  %blend_mode = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %57, i32 0, i32 12
  store i32 %shr76, i32* %blend_mode, align 4, !tbaa !259
  %58 = load i32, i32* %cb, align 4, !tbaa !6
  %and77 = and i32 %58, 4
  %cmp78 = icmp ne i32 %and77, 0
  %conv79 = zext i1 %cmp78 to i32
  %59 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !4
  %text_knockout = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %59, i32 0, i32 17
  store i32 %conv79, i32* %text_knockout, align 4, !tbaa !260
  %60 = load i32, i32* %cb, align 4, !tbaa !6
  %shr80 = lshr i32 %60, 1
  %and81 = and i32 %shr80, 1
  %61 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !4
  %overprint_mode = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %61, i32 0, i32 22
  store i32 %and81, i32* %overprint_mode, align 4, !tbaa !261
  %62 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !4
  %overprint_mode82 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %62, i32 0, i32 22
  %63 = load i32, i32* %overprint_mode82, align 4, !tbaa !261
  %64 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !4
  %effective_overprint_mode = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %64, i32 0, i32 23
  store i32 %63, i32* %effective_overprint_mode, align 4, !tbaa !262
  %65 = load i32, i32* %cb, align 4, !tbaa !6
  %and83 = and i32 %65, 1
  %66 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !4
  %overprint = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %66, i32 0, i32 21
  store i32 %and83, i32* %overprint, align 4, !tbaa !263
  %67 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr84 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %incdec.ptr84, i8** %cbp, align 8, !tbaa !4
  %68 = load i8, i8* %67, align 1, !tbaa !1
  %conv85 = zext i8 %68 to i32
  store i32 %conv85, i32* %cb, align 4, !tbaa !6
  %69 = load i32, i32* %cb, align 4, !tbaa !6
  %70 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !4
  %renderingintent = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %70, i32 0, i32 33
  store i32 %69, i32* %renderingintent, align 4, !tbaa !264
  br label %do.body.86

do.body.86:                                       ; preds = %if.then.73
  br label %do.cond.87

do.cond.87:                                       ; preds = %do.body.86
  br label %do.end.88

do.end.88:                                        ; preds = %do.cond.87
  br label %if.end.89

if.end.89:                                        ; preds = %do.end.88, %if.end.70
  %71 = load i32, i32* %mask, align 4, !tbaa !6
  %and90 = and i32 %71, 64
  %tobool91 = icmp ne i32 %and90, 0
  br i1 %tobool91, label %if.then.92, label %if.end.99

if.then.92:                                       ; preds = %if.end.89
  %72 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr93 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %incdec.ptr93, i8** %cbp, align 8, !tbaa !4
  %73 = load i8, i8* %72, align 1, !tbaa !1
  %conv94 = zext i8 %73 to i32
  store i32 %conv94, i32* %cb, align 4, !tbaa !6
  %74 = load i32, i32* %cb, align 4, !tbaa !6
  %and95 = and i32 %74, 63
  %75 = load i32*, i32** %pnotes.addr, align 8, !tbaa !4
  store i32 %and95, i32* %75, align 4, !tbaa !1
  br label %do.body.96

do.body.96:                                       ; preds = %if.then.92
  br label %do.cond.97

do.cond.97:                                       ; preds = %do.body.96
  br label %do.end.98

do.end.98:                                        ; preds = %do.cond.97
  br label %if.end.99

if.end.99:                                        ; preds = %do.end.98, %if.end.89
  %76 = load i32, i32* %mask, align 4, !tbaa !6
  %and100 = and i32 %76, 128
  %tobool101 = icmp ne i32 %and100, 0
  br i1 %tobool101, label %if.then.102, label %if.end.107

if.then.102:                                      ; preds = %if.end.99
  %77 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !4
  %opacity = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %77, i32 0, i32 13
  %alpha = getelementptr inbounds %struct.gs_transparency_source_s, %struct.gs_transparency_source_s* %opacity, i32 0, i32 0
  %78 = bitcast float* %alpha to i8*
  %79 = load i8*, i8** %cbp, align 8, !tbaa !4
  %call103 = call i8* @cmd_copy_value(i8* %78, i32 4, i8* %79) #6
  store i8* %call103, i8** %cbp, align 8, !tbaa !4
  br label %do.body.104

do.body.104:                                      ; preds = %if.then.102
  br label %do.cond.105

do.cond.105:                                      ; preds = %do.body.104
  br label %do.end.106

do.end.106:                                       ; preds = %do.cond.105
  br label %if.end.107

if.end.107:                                       ; preds = %do.end.106, %if.end.99
  %80 = load i32, i32* %mask, align 4, !tbaa !6
  %and108 = and i32 %80, 256
  %tobool109 = icmp ne i32 %and108, 0
  br i1 %tobool109, label %if.then.110, label %if.end.116

if.then.110:                                      ; preds = %if.end.107
  %81 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !4
  %shape = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %81, i32 0, i32 14
  %alpha111 = getelementptr inbounds %struct.gs_transparency_source_s, %struct.gs_transparency_source_s* %shape, i32 0, i32 0
  %82 = bitcast float* %alpha111 to i8*
  %83 = load i8*, i8** %cbp, align 8, !tbaa !4
  %call112 = call i8* @cmd_copy_value(i8* %82, i32 4, i8* %83) #6
  store i8* %call112, i8** %cbp, align 8, !tbaa !4
  br label %do.body.113

do.body.113:                                      ; preds = %if.then.110
  br label %do.cond.114

do.cond.114:                                      ; preds = %do.body.113
  br label %do.end.115

do.end.115:                                       ; preds = %do.cond.114
  br label %if.end.116

if.end.116:                                       ; preds = %do.end.115, %if.end.107
  %84 = load i32, i32* %mask, align 4, !tbaa !6
  %and117 = and i32 %84, 512
  %tobool118 = icmp ne i32 %and117, 0
  br i1 %tobool118, label %if.then.119, label %if.end.125

if.then.119:                                      ; preds = %if.end.116
  %85 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !4
  %alpha120 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %85, i32 0, i32 11
  %86 = bitcast i16* %alpha120 to i8*
  %87 = load i8*, i8** %cbp, align 8, !tbaa !4
  %call121 = call i8* @cmd_copy_value(i8* %86, i32 2, i8* %87) #6
  store i8* %call121, i8** %cbp, align 8, !tbaa !4
  br label %do.body.122

do.body.122:                                      ; preds = %if.then.119
  br label %do.cond.123

do.cond.123:                                      ; preds = %do.body.122
  br label %do.end.124

do.end.124:                                       ; preds = %do.cond.123
  br label %if.end.125

if.end.125:                                       ; preds = %do.end.124, %if.end.116
  %88 = load i8*, i8** %cbp, align 8, !tbaa !4
  %89 = load %struct.command_buf_s*, %struct.command_buf_s** %pcb.addr, align 8, !tbaa !4
  %ptr126 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %89, i32 0, i32 2
  store i8* %88, i8** %ptr126, align 8, !tbaa !93
  %90 = bitcast i32* %cb to i8*
  call void @llvm.lifetime.end(i64 4, i8* %90) #1
  %91 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %91) #1
  %92 = bitcast i8** %cbp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %92) #1
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #2

declare i32 @gx_set_dash(%struct.gx_dash_params_s*, float*, i32, double, %struct.gs_memory_s*) #3

declare i32 @gx_set_dot_length(%struct.gx_line_params_s*, double, i32) #3

declare i32 @gx_cpath_reset(%struct.gx_clip_path_s*) #3

declare void @gx_cpath_accum_begin(%struct.gx_device_cpath_accum_s*, %struct.gs_memory_s*) #3

declare void @gx_cpath_accum_set_cbox(%struct.gx_device_cpath_accum_s*, %struct.gs_fixed_rect_s*) #3

declare i32 @gx_cpath_accum_end(%struct.gx_device_cpath_accum_s*, %struct.gx_clip_path_s*) #3

declare i32 @gx_cpath_inner_box(%struct.gx_clip_path_s*, %struct.gs_fixed_rect_s*) #3

; Function Attrs: nounwind uwtable
define internal i32 @read_set_color_space(%struct.command_buf_s* %pcb, %struct.gs_imager_state_s* %pis, %struct.gs_color_space_s** %ppcs, %struct.gx_device_clist_reader_s* %cdev, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %pcb.addr = alloca %struct.command_buf_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %ppcs.addr = alloca %struct.gs_color_space_s**, align 8
  %cdev.addr = alloca %struct.gx_device_clist_reader_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %cbp = alloca i8*, align 8
  %b = alloca i8, align 1
  %index = alloca i32, align 4
  %pcs = alloca %struct.gs_color_space_s*, align 8
  %code = alloca i32, align 4
  %picc_profile = alloca %struct.cmm_profile_s*, align 8
  %icc_information = alloca %struct.clist_icc_color_s, align 8
  %cleanup.dest.slot = alloca i32
  %use_proc = alloca i32, align 4
  %hival = alloca i32, align 4
  %num_values = alloca i32, align 4
  %data = alloca i8*, align 8
  %data_size = alloca i32, align 4
  %pcs_indexed = alloca %struct.gs_color_space_s*, align 8
  %_cbp = alloca i8*, align 8
  %map = alloca %struct.gs_indexed_map_s*, align 8
  %table98 = alloca i8*, align 8
  store %struct.command_buf_s* %pcb, %struct.command_buf_s** %pcb.addr, align 8, !tbaa !4
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !4
  store %struct.gs_color_space_s** %ppcs, %struct.gs_color_space_s*** %ppcs.addr, align 8, !tbaa !4
  store %struct.gx_device_clist_reader_s* %cdev, %struct.gx_device_clist_reader_s** %cdev.addr, align 8, !tbaa !4
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %0 = bitcast i8** %cbp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.command_buf_s*, %struct.command_buf_s** %pcb.addr, align 8, !tbaa !4
  %ptr = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %1, i32 0, i32 2
  %2 = load i8*, i8** %ptr, align 8, !tbaa !93
  store i8* %2, i8** %cbp, align 8, !tbaa !4
  call void @llvm.lifetime.start(i64 1, i8* %b) #1
  %3 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %cbp, align 8, !tbaa !4
  %4 = load i8, i8* %3, align 1, !tbaa !1
  store i8 %4, i8* %b, align 1, !tbaa !1
  %5 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load i8, i8* %b, align 1, !tbaa !1
  %conv = zext i8 %6 to i32
  %shr = ashr i32 %conv, 4
  store i32 %shr, i32* %index, align 4, !tbaa !6
  %7 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  store i32 0, i32* %code, align 4, !tbaa !6
  %9 = bitcast %struct.cmm_profile_s** %picc_profile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast %struct.clist_icc_color_s* %icc_information to i8*
  call void @llvm.lifetime.start(i64 24, i8* %10) #1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %11 = bitcast %struct.clist_icc_color_s* %icc_information to i8*
  %12 = load i8*, i8** %cbp, align 8, !tbaa !4
  %call = call i8* @memcpy(i8* %11, i8* %12, i64 24) #7
  %13 = load i8*, i8** %cbp, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 24
  store i8* %add.ptr, i8** %cbp, align 8, !tbaa !4
  %14 = load i32, i32* %index, align 4, !tbaa !6
  switch i32 %14, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.2
    i32 2, label %sw.bb.4
    i32 12, label %sw.bb.6
  ]

sw.bb:                                            ; preds = %do.end
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %call1 = call %struct.gs_color_space_s* @gs_cspace_new_DeviceGray(%struct.gs_memory_s* %15) #6
  store %struct.gs_color_space_s* %call1, %struct.gs_color_space_s** %pcs, align 8, !tbaa !4
  br label %sw.epilog

sw.bb.2:                                          ; preds = %do.end
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %call3 = call %struct.gs_color_space_s* @gs_cspace_new_DeviceRGB(%struct.gs_memory_s* %16) #6
  store %struct.gs_color_space_s* %call3, %struct.gs_color_space_s** %pcs, align 8, !tbaa !4
  br label %sw.epilog

sw.bb.4:                                          ; preds = %do.end
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %call5 = call %struct.gs_color_space_s* @gs_cspace_new_DeviceCMYK(%struct.gs_memory_s* %17) #6
  store %struct.gs_color_space_s* %call5, %struct.gs_color_space_s** %pcs, align 8, !tbaa !4
  br label %sw.epilog

sw.bb.6:                                          ; preds = %do.end
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %call7 = call i32 @gs_cspace_build_ICC(%struct.gs_color_space_s** %pcs, i8* null, %struct.gs_memory_s* %18) #6
  store i32 %call7, i32* %code, align 4, !tbaa !6
  %19 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %cdev.addr, align 8, !tbaa !4
  %memory = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %19, i32 0, i32 3
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !265
  %call8 = call %struct.cmm_profile_s* @gsicc_profile_new(%struct.stream_s* null, %struct.gs_memory_s* %20, i8* null, i32 0) #6
  store %struct.cmm_profile_s* %call8, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !4
  %21 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !4
  %cmp = icmp eq %struct.cmm_profile_s* %21, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.6
  %call10 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.read_set_color_space, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0), i32 2709, i32 1, i32 -1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.25, i32 0, i32 0)) #6
  store i32 %call10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.135

if.end:                                           ; preds = %sw.bb.6
  %icc_num_components = getelementptr inbounds %struct.clist_icc_color_s, %struct.clist_icc_color_s* %icc_information, i32 0, i32 1
  %22 = load i8, i8* %icc_num_components, align 1, !tbaa !266
  %23 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !4
  %num_comps = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %23, i32 0, i32 0
  store i8 %22, i8* %num_comps, align 1, !tbaa !268
  %icc_hash = getelementptr inbounds %struct.clist_icc_color_s, %struct.clist_icc_color_s* %icc_information, i32 0, i32 0
  %24 = load i64, i64* %icc_hash, align 8, !tbaa !272
  %25 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !4
  %hashcode = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %25, i32 0, i32 7
  store i64 %24, i64* %hashcode, align 8, !tbaa !273
  %26 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !4
  %hash_is_valid = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %26, i32 0, i32 8
  store i32 1, i32* %hash_is_valid, align 4, !tbaa !274
  %is_lab = getelementptr inbounds %struct.clist_icc_color_s, %struct.clist_icc_color_s* %icc_information, i32 0, i32 2
  %27 = load i32, i32* %is_lab, align 4, !tbaa !275
  %28 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !4
  %islab = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %28, i32 0, i32 2
  store i32 %27, i32* %islab, align 4, !tbaa !276
  %default_match = getelementptr inbounds %struct.clist_icc_color_s, %struct.clist_icc_color_s* %icc_information, i32 0, i32 3
  %29 = load i32, i32* %default_match, align 4, !tbaa !277
  %30 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !4
  %default_match11 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %30, i32 0, i32 4
  store i32 %29, i32* %default_match11, align 4, !tbaa !278
  %data_cs = getelementptr inbounds %struct.clist_icc_color_s, %struct.clist_icc_color_s* %icc_information, i32 0, i32 4
  %31 = load i32, i32* %data_cs, align 4, !tbaa !279
  %32 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !4
  %data_cs12 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %32, i32 0, i32 5
  store i32 %31, i32* %data_cs12, align 4, !tbaa !280
  %33 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %cdev.addr, align 8, !tbaa !4
  %34 = bitcast %struct.gx_device_clist_reader_s* %33 to %struct.gx_device_s*
  %35 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !4
  %dev = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %35, i32 0, i32 15
  store %struct.gx_device_s* %34, %struct.gx_device_s** %dev, align 8, !tbaa !281
  %36 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !4
  %37 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !4
  %38 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %call13 = call i32 @gsicc_set_gscs_profile(%struct.gs_color_space_s* %36, %struct.cmm_profile_s* %37, %struct.gs_memory_s* %38) #6
  store i32 %call13, i32* %code, align 4, !tbaa !6
  br label %do.body.14

do.body.14:                                       ; preds = %if.end
  %39 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !4
  %tobool = icmp ne %struct.cmm_profile_s* %39, null
  br i1 %tobool, label %if.then.15, label %if.end.39

if.then.15:                                       ; preds = %do.body.14
  br label %do.body.16

do.body.16:                                       ; preds = %if.then.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.body.16
  br label %do.cond.18

do.cond.18:                                       ; preds = %do.body.17
  br label %do.end.19

do.end.19:                                        ; preds = %do.cond.18
  %40 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !4
  %rc = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %40, i32 0, i32 18
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %41 = load i64, i64* %ref_count, align 8, !tbaa !282
  %add = add nsw i64 %41, -1
  store i64 %add, i64* %ref_count, align 8, !tbaa !282
  br label %do.cond.20

do.cond.20:                                       ; preds = %do.end.19
  br label %do.end.21

do.end.21:                                        ; preds = %do.cond.20
  %42 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !4
  %rc22 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %42, i32 0, i32 18
  %ref_count23 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc22, i32 0, i32 0
  %43 = load i64, i64* %ref_count23, align 8, !tbaa !282
  %tobool24 = icmp ne i64 %43, 0
  br i1 %tobool24, label %if.else, label %if.then.25

if.then.25:                                       ; preds = %do.end.21
  br label %do.body.26

do.body.26:                                       ; preds = %if.then.25
  br label %do.body.27

do.body.27:                                       ; preds = %do.body.26
  br label %do.cond.28

do.cond.28:                                       ; preds = %do.body.27
  br label %do.end.29

do.end.29:                                        ; preds = %do.cond.28
  %44 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !4
  %rc30 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %44, i32 0, i32 18
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc30, i32 0, i32 2
  %45 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !283
  %46 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !4
  %rc31 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %46, i32 0, i32 18
  %memory32 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc31, i32 0, i32 1
  %47 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory32, align 8, !tbaa !284
  %48 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !4
  %49 = bitcast %struct.cmm_profile_s* %48 to i8*
  call void %45(%struct.gs_memory_s* %47, i8* %49, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.read_set_color_space, i32 0, i32 0)) #6
  br label %do.cond.33

do.cond.33:                                       ; preds = %do.end.29
  br label %do.end.34

do.end.34:                                        ; preds = %do.cond.33
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !4
  br label %if.end.38

if.else:                                          ; preds = %do.end.21
  br label %do.body.35

do.body.35:                                       ; preds = %if.else
  br label %do.cond.36

do.cond.36:                                       ; preds = %do.body.35
  br label %do.end.37

do.end.37:                                        ; preds = %do.cond.36
  br label %if.end.38

if.end.38:                                        ; preds = %do.end.37, %do.end.34
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %do.body.14
  br label %do.cond.40

do.cond.40:                                       ; preds = %if.end.39
  br label %do.end.41

do.end.41:                                        ; preds = %do.cond.40
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  store i32 -15, i32* %code, align 4, !tbaa !6
  br label %out

sw.epilog:                                        ; preds = %do.end.41, %sw.bb.4, %sw.bb.2, %sw.bb
  %50 = load i8, i8* %b, align 1, !tbaa !1
  %conv42 = zext i8 %50 to i32
  %and = and i32 %conv42, 8
  %tobool43 = icmp ne i32 %and, 0
  br i1 %tobool43, label %if.then.44, label %if.end.133

if.then.44:                                       ; preds = %sw.epilog
  %51 = bitcast i32* %use_proc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %51) #1
  %52 = load i8, i8* %b, align 1, !tbaa !1
  %conv45 = zext i8 %52 to i32
  %and46 = and i32 %conv45, 4
  %cmp47 = icmp ne i32 %and46, 0
  %conv48 = zext i1 %cmp47 to i32
  store i32 %conv48, i32* %use_proc, align 4, !tbaa !6
  %53 = bitcast i32* %hival to i8*
  call void @llvm.lifetime.start(i64 4, i8* %53) #1
  %54 = bitcast i32* %num_values to i8*
  call void @llvm.lifetime.start(i64 4, i8* %54) #1
  %55 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %55) #1
  %56 = bitcast i32* %data_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %56) #1
  %57 = bitcast %struct.gs_color_space_s** %pcs_indexed to i8*
  call void @llvm.lifetime.start(i64 8, i8* %57) #1
  %58 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %call49 = call %struct.gs_color_space_s* @gs_cspace_alloc(%struct.gs_memory_s* %58, %struct.gs_color_space_type_s* @gs_color_space_type_Indexed) #6
  store %struct.gs_color_space_s* %call49, %struct.gs_color_space_s** %pcs_indexed, align 8, !tbaa !4
  %59 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_indexed, align 8, !tbaa !4
  %cmp50 = icmp eq %struct.gs_color_space_s* %59, null
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.then.44
  %60 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !4
  call void @rc_decrement_cs(%struct.gs_color_space_s* %60, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.read_set_color_space, i32 0, i32 0)) #6
  store i32 -25, i32* %code, align 4, !tbaa !6
  store i32 17, i32* %cleanup.dest.slot
  br label %cleanup.125

if.end.53:                                        ; preds = %if.then.44
  %61 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !4
  %62 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_indexed, align 8, !tbaa !4
  %base_space = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %62, i32 0, i32 3
  store %struct.gs_color_space_s* %61, %struct.gs_color_space_s** %base_space, align 8, !tbaa !285
  %63 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_indexed, align 8, !tbaa !4
  store %struct.gs_color_space_s* %63, %struct.gs_color_space_s** %pcs, align 8, !tbaa !4
  %64 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !4
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %64, i32 0, i32 7
  %indexed = bitcast %union.anon* %params to %struct.gs_indexed_params_s*
  %use_proc54 = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %indexed, i32 0, i32 3
  store i32 0, i32* %use_proc54, align 4, !tbaa !287
  %65 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !4
  %params55 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %65, i32 0, i32 7
  %indexed56 = bitcast %union.anon* %params55 to %struct.gs_indexed_params_s*
  %lookup = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %indexed56, i32 0, i32 2
  %table = bitcast %union.anon.6* %lookup to %struct.gs_const_string_s*
  %data57 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %table, i32 0, i32 0
  store i8* null, i8** %data57, align 8, !tbaa !289
  %66 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !4
  %params58 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %66, i32 0, i32 7
  %indexed59 = bitcast %union.anon* %params58 to %struct.gs_indexed_params_s*
  %lookup60 = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %indexed59, i32 0, i32 2
  %table61 = bitcast %union.anon.6* %lookup60 to %struct.gs_const_string_s*
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %table61, i32 0, i32 1
  store i32 0, i32* %size, align 4, !tbaa !290
  br label %do.body.62

do.body.62:                                       ; preds = %if.end.53
  %67 = load i8*, i8** %cbp, align 8, !tbaa !4
  %68 = load i8, i8* %67, align 1, !tbaa !1
  %conv63 = zext i8 %68 to i32
  %cmp64 = icmp slt i32 %conv63, 128
  br i1 %cmp64, label %if.then.66, label %if.else.69

if.then.66:                                       ; preds = %do.body.62
  %69 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr67 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %incdec.ptr67, i8** %cbp, align 8, !tbaa !4
  %70 = load i8, i8* %69, align 1, !tbaa !1
  %conv68 = zext i8 %70 to i32
  store i32 %conv68, i32* %hival, align 4, !tbaa !6
  br label %if.end.72

if.else.69:                                       ; preds = %do.body.62
  %71 = bitcast i8** %_cbp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %71) #1
  %72 = load i8*, i8** %cbp, align 8, !tbaa !4
  %call70 = call i64 @cmd_get_w(i8* %72, i8** %_cbp) #6
  %conv71 = trunc i64 %call70 to i32
  store i32 %conv71, i32* %hival, align 4, !tbaa !6
  %73 = load i8*, i8** %_cbp, align 8, !tbaa !4
  store i8* %73, i8** %cbp, align 8, !tbaa !4
  %74 = bitcast i8** %_cbp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #1
  br label %if.end.72

if.end.72:                                        ; preds = %if.else.69, %if.then.66
  br label %do.cond.73

do.cond.73:                                       ; preds = %if.end.72
  br label %do.end.74

do.end.74:                                        ; preds = %do.cond.73
  %75 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !4
  %base_space75 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %75, i32 0, i32 3
  %76 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space75, align 8, !tbaa !285
  %call76 = call i32 @gs_color_space_num_components(%struct.gs_color_space_s* %76) #6
  %77 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !4
  %params77 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %77, i32 0, i32 7
  %indexed78 = bitcast %union.anon* %params77 to %struct.gs_indexed_params_s*
  %n_comps = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %indexed78, i32 0, i32 1
  store i32 %call76, i32* %n_comps, align 4, !tbaa !291
  %78 = load i32, i32* %hival, align 4, !tbaa !6
  %add79 = add nsw i32 %78, 1
  %79 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !4
  %params80 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %79, i32 0, i32 7
  %indexed81 = bitcast %union.anon* %params80 to %struct.gs_indexed_params_s*
  %n_comps82 = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %indexed81, i32 0, i32 1
  %80 = load i32, i32* %n_comps82, align 4, !tbaa !291
  %mul = mul nsw i32 %add79, %80
  store i32 %mul, i32* %num_values, align 4, !tbaa !6
  %81 = load i32, i32* %use_proc, align 4, !tbaa !6
  %tobool83 = icmp ne i32 %81, 0
  br i1 %tobool83, label %if.then.84, label %if.else.97

if.then.84:                                       ; preds = %do.end.74
  %82 = bitcast %struct.gs_indexed_map_s** %map to i8*
  call void @llvm.lifetime.start(i64 8, i8* %82) #1
  %83 = load i32, i32* %num_values, align 4, !tbaa !6
  %84 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %call85 = call i32 @alloc_indexed_map(%struct.gs_indexed_map_s** %map, i32 %83, %struct.gs_memory_s* %84, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i32 0, i32 0)) #6
  store i32 %call85, i32* %code, align 4, !tbaa !6
  %85 = load i32, i32* %code, align 4, !tbaa !6
  %cmp86 = icmp slt i32 %85, 0
  br i1 %cmp86, label %if.then.88, label %if.end.89

if.then.88:                                       ; preds = %if.then.84
  %86 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !4
  call void @rc_decrement_cs(%struct.gs_color_space_s* %86, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.read_set_color_space, i32 0, i32 0)) #6
  store i32 17, i32* %cleanup.dest.slot
  br label %cleanup

if.end.89:                                        ; preds = %if.then.84
  %87 = load %struct.gs_indexed_map_s*, %struct.gs_indexed_map_s** %map, align 8, !tbaa !4
  %proc = getelementptr inbounds %struct.gs_indexed_map_s, %struct.gs_indexed_map_s* %87, i32 0, i32 1
  %lookup_index = bitcast %union.anon.7* %proc to i32 (%struct.gs_color_space_s*, i32, float*)**
  store i32 (%struct.gs_color_space_s*, i32, float*)* @lookup_indexed_map, i32 (%struct.gs_color_space_s*, i32, float*)** %lookup_index, align 8, !tbaa !4
  %88 = load %struct.gs_indexed_map_s*, %struct.gs_indexed_map_s** %map, align 8, !tbaa !4
  %89 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !4
  %params90 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %89, i32 0, i32 7
  %indexed91 = bitcast %union.anon* %params90 to %struct.gs_indexed_params_s*
  %lookup92 = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %indexed91, i32 0, i32 2
  %map93 = bitcast %union.anon.6* %lookup92 to %struct.gs_indexed_map_s**
  store %struct.gs_indexed_map_s* %88, %struct.gs_indexed_map_s** %map93, align 8, !tbaa !4
  %90 = load %struct.gs_indexed_map_s*, %struct.gs_indexed_map_s** %map, align 8, !tbaa !4
  %values = getelementptr inbounds %struct.gs_indexed_map_s, %struct.gs_indexed_map_s* %90, i32 0, i32 4
  %91 = load float*, float** %values, align 8, !tbaa !292
  %92 = bitcast float* %91 to i8*
  store i8* %92, i8** %data, align 8, !tbaa !4
  %93 = load i32, i32* %num_values, align 4, !tbaa !6
  %conv94 = sext i32 %93 to i64
  %mul95 = mul i64 %conv94, 4
  %conv96 = trunc i64 %mul95 to i32
  store i32 %conv96, i32* %data_size, align 4, !tbaa !6
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.88, %if.end.89
  %94 = bitcast %struct.gs_indexed_map_s** %map to i8*
  call void @llvm.lifetime.end(i64 8, i8* %94) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.125 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.117

if.else.97:                                       ; preds = %do.end.74
  %95 = bitcast i8** %table98 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %95) #1
  %96 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %96, i32 0, i32 1
  %alloc_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 16
  %97 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_string, align 8, !tbaa !294
  %98 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %99 = load i32, i32* %num_values, align 4, !tbaa !6
  %call99 = call i8* %97(%struct.gs_memory_s* %98, i32 %99, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.27, i32 0, i32 0)) #6
  store i8* %call99, i8** %table98, align 8, !tbaa !4
  %100 = load i8*, i8** %table98, align 8, !tbaa !4
  %cmp100 = icmp eq i8* %100, null
  br i1 %cmp100, label %if.then.102, label %if.end.103

if.then.102:                                      ; preds = %if.else.97
  store i32 -25, i32* %code, align 4, !tbaa !6
  %101 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !4
  call void @rc_decrement_cs(%struct.gs_color_space_s* %101, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.read_set_color_space, i32 0, i32 0)) #6
  store i32 17, i32* %cleanup.dest.slot
  br label %cleanup.114

if.end.103:                                       ; preds = %if.else.97
  %102 = load i8*, i8** %table98, align 8, !tbaa !4
  %103 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !4
  %params104 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %103, i32 0, i32 7
  %indexed105 = bitcast %union.anon* %params104 to %struct.gs_indexed_params_s*
  %lookup106 = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %indexed105, i32 0, i32 2
  %table107 = bitcast %union.anon.6* %lookup106 to %struct.gs_const_string_s*
  %data108 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %table107, i32 0, i32 0
  store i8* %102, i8** %data108, align 8, !tbaa !289
  %104 = load i32, i32* %num_values, align 4, !tbaa !6
  %105 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !4
  %params109 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %105, i32 0, i32 7
  %indexed110 = bitcast %union.anon* %params109 to %struct.gs_indexed_params_s*
  %lookup111 = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %indexed110, i32 0, i32 2
  %table112 = bitcast %union.anon.6* %lookup111 to %struct.gs_const_string_s*
  %size113 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %table112, i32 0, i32 1
  store i32 %104, i32* %size113, align 4, !tbaa !290
  %106 = load i8*, i8** %table98, align 8, !tbaa !4
  store i8* %106, i8** %data, align 8, !tbaa !4
  %107 = load i32, i32* %num_values, align 4, !tbaa !6
  store i32 %107, i32* %data_size, align 4, !tbaa !6
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.114

cleanup.114:                                      ; preds = %if.then.102, %if.end.103
  %108 = bitcast i8** %table98 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %108) #1
  %cleanup.dest.115 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.115, label %cleanup.125 [
    i32 0, label %cleanup.cont.116
  ]

cleanup.cont.116:                                 ; preds = %cleanup.114
  br label %if.end.117

if.end.117:                                       ; preds = %cleanup.cont.116, %cleanup.cont
  %109 = load %struct.command_buf_s*, %struct.command_buf_s** %pcb.addr, align 8, !tbaa !4
  %110 = load i8*, i8** %data, align 8, !tbaa !4
  %111 = load i32, i32* %data_size, align 4, !tbaa !6
  %112 = load i8*, i8** %cbp, align 8, !tbaa !4
  %call118 = call i8* @cmd_read_data(%struct.command_buf_s* %109, i8* %110, i32 %111, i8* %112) #6
  store i8* %call118, i8** %cbp, align 8, !tbaa !4
  %113 = load i32, i32* %hival, align 4, !tbaa !6
  %114 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !4
  %params119 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %114, i32 0, i32 7
  %indexed120 = bitcast %union.anon* %params119 to %struct.gs_indexed_params_s*
  %hival121 = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %indexed120, i32 0, i32 0
  store i32 %113, i32* %hival121, align 4, !tbaa !295
  %115 = load i32, i32* %use_proc, align 4, !tbaa !6
  %116 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !4
  %params122 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %116, i32 0, i32 7
  %indexed123 = bitcast %union.anon* %params122 to %struct.gs_indexed_params_s*
  %use_proc124 = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %indexed123, i32 0, i32 3
  store i32 %115, i32* %use_proc124, align 4, !tbaa !287
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.125

cleanup.125:                                      ; preds = %if.then.52, %if.end.117, %cleanup.114, %cleanup
  %117 = bitcast %struct.gs_color_space_s** %pcs_indexed to i8*
  call void @llvm.lifetime.end(i64 8, i8* %117) #1
  %118 = bitcast i32* %data_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %118) #1
  %119 = bitcast i8** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %119) #1
  %120 = bitcast i32* %num_values to i8*
  call void @llvm.lifetime.end(i64 4, i8* %120) #1
  %121 = bitcast i32* %hival to i8*
  call void @llvm.lifetime.end(i64 4, i8* %121) #1
  %122 = bitcast i32* %use_proc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %122) #1
  %cleanup.dest.131 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.131, label %cleanup.135 [
    i32 0, label %cleanup.cont.132
    i32 17, label %out
  ]

cleanup.cont.132:                                 ; preds = %cleanup.125
  br label %if.end.133

if.end.133:                                       ; preds = %cleanup.cont.132, %sw.epilog
  %123 = load %struct.gs_color_space_s**, %struct.gs_color_space_s*** %ppcs.addr, align 8, !tbaa !4
  %124 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %123, align 8, !tbaa !4
  call void @rc_decrement_only_cs(%struct.gs_color_space_s* %124, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.read_set_color_space, i32 0, i32 0)) #6
  %125 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !4
  %126 = load %struct.gs_color_space_s**, %struct.gs_color_space_s*** %ppcs.addr, align 8, !tbaa !4
  store %struct.gs_color_space_s* %125, %struct.gs_color_space_s** %126, align 8, !tbaa !4
  br label %out

out:                                              ; preds = %if.end.133, %cleanup.125, %sw.default
  %127 = load i8*, i8** %cbp, align 8, !tbaa !4
  %128 = load %struct.command_buf_s*, %struct.command_buf_s** %pcb.addr, align 8, !tbaa !4
  %ptr134 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %128, i32 0, i32 2
  store i8* %127, i8** %ptr134, align 8, !tbaa !93
  %129 = load i32, i32* %code, align 4, !tbaa !6
  store i32 %129, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.135

cleanup.135:                                      ; preds = %out, %cleanup.125, %if.then
  %130 = bitcast %struct.clist_icc_color_s* %icc_information to i8*
  call void @llvm.lifetime.end(i64 24, i8* %130) #1
  %131 = bitcast %struct.cmm_profile_s** %picc_profile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %131) #1
  %132 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %132) #1
  %133 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %133) #1
  %134 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %134) #1
  call void @llvm.lifetime.end(i64 1, i8* %b) #1
  %135 = bitcast i8** %cbp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %135) #1
  %136 = load i32, i32* %retval
  ret i32 %136
}

; Function Attrs: nounwind uwtable
define internal i32 @read_begin_image(%struct.command_buf_s* %pcb, %struct.gs_image_common_s* %pic, %struct.gs_color_space_s* %pcs) #0 {
entry:
  %retval = alloca i32, align 4
  %pcb.addr = alloca %struct.command_buf_s*, align 8
  %pic.addr = alloca %struct.gs_image_common_s*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %index = alloca i32, align 4
  %image_type = alloca %struct.gx_image_type_s*, align 8
  %s = alloca %struct.stream_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.command_buf_s* %pcb, %struct.command_buf_s** %pcb.addr, align 8, !tbaa !4
  store %struct.gs_image_common_s* %pic, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !4
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !4
  %0 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.command_buf_s*, %struct.command_buf_s** %pcb.addr, align 8, !tbaa !4
  %ptr = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %1, i32 0, i32 2
  %2 = load i8*, i8** %ptr, align 8, !tbaa !93
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %ptr, align 8, !tbaa !93
  %3 = load i8, i8* %2, align 1, !tbaa !1
  %conv = zext i8 %3 to i32
  store i32 %conv, i32* %index, align 4, !tbaa !6
  %4 = bitcast %struct.gx_image_type_s** %image_type to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load i32, i32* %index, align 4, !tbaa !6
  %idxprom = zext i32 %5 to i64
  %arrayidx = getelementptr inbounds [0 x %struct.gx_image_type_s*], [0 x %struct.gx_image_type_s*]* @gx_image_type_table, i32 0, i64 %idxprom
  %6 = load %struct.gx_image_type_s*, %struct.gx_image_type_s** %arrayidx, align 8, !tbaa !4
  store %struct.gx_image_type_s* %6, %struct.gx_image_type_s** %image_type, align 8, !tbaa !4
  %7 = bitcast %struct.stream_s* %s to i8*
  call void @llvm.lifetime.start(i64 352, i8* %7) #1
  %8 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load %struct.command_buf_s*, %struct.command_buf_s** %pcb.addr, align 8, !tbaa !4
  %10 = load %struct.command_buf_s*, %struct.command_buf_s** %pcb.addr, align 8, !tbaa !4
  %ptr1 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %10, i32 0, i32 2
  %call = call i32 @top_up_cbuf(%struct.command_buf_s* %9, i8** %ptr1) #6
  store i32 %call, i32* %code, align 4, !tbaa !6
  %11 = load i32, i32* %code, align 4, !tbaa !6
  %cmp = icmp slt i32 %11, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load i32, i32* %code, align 4, !tbaa !6
  store i32 %12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @s_init(%struct.stream_s* %s, %struct.gs_memory_s* null) #6
  %13 = load %struct.command_buf_s*, %struct.command_buf_s** %pcb.addr, align 8, !tbaa !4
  %ptr3 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %13, i32 0, i32 2
  %14 = load i8*, i8** %ptr3, align 8, !tbaa !93
  %15 = load %struct.command_buf_s*, %struct.command_buf_s** %pcb.addr, align 8, !tbaa !4
  %end = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %15, i32 0, i32 4
  %16 = load i8*, i8** %end, align 8, !tbaa !16
  %17 = load %struct.command_buf_s*, %struct.command_buf_s** %pcb.addr, align 8, !tbaa !4
  %ptr4 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %17, i32 0, i32 2
  %18 = load i8*, i8** %ptr4, align 8, !tbaa !93
  %sub.ptr.lhs.cast = ptrtoint i8* %16 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %18 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv5 = trunc i64 %sub.ptr.sub to i32
  call void @sread_string(%struct.stream_s* %s, i8* %14, i32 %conv5) #6
  %19 = load %struct.gx_image_type_s*, %struct.gx_image_type_s** %image_type, align 8, !tbaa !4
  %sget = getelementptr inbounds %struct.gx_image_type_s, %struct.gx_image_type_s* %19, i32 0, i32 4
  %20 = load i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s*)*, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s*)** %sget, align 8, !tbaa !296
  %21 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !4
  %22 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !4
  %call6 = call i32 %20(%struct.gs_image_common_s* %21, %struct.stream_s* %s, %struct.gs_color_space_s* %22) #6
  store i32 %call6, i32* %code, align 4, !tbaa !6
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %s, i32 0, i32 5
  %r = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_read_s*
  %ptr7 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 0
  %23 = load i8*, i8** %ptr7, align 8, !tbaa !124
  %add.ptr = getelementptr inbounds i8, i8* %23, i64 1
  %24 = load %struct.command_buf_s*, %struct.command_buf_s** %pcb.addr, align 8, !tbaa !4
  %ptr8 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %24, i32 0, i32 2
  store i8* %add.ptr, i8** %ptr8, align 8, !tbaa !93
  %25 = load i32, i32* %code, align 4, !tbaa !6
  store i32 %25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %26 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  %27 = bitcast %struct.stream_s* %s to i8*
  call void @llvm.lifetime.end(i64 352, i8* %27) #1
  %28 = bitcast %struct.gx_image_type_s** %image_type to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #1
  %29 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #1
  %30 = load i32, i32* %retval
  ret i32 %30
}

declare i32 @gx_image_end(%struct.gx_image_enum_common_s*, i32) #3

declare i32 @gx_image_plane_data(%struct.gx_image_enum_common_s*, %struct.gx_image_plane_s*, i32) #3

; Function Attrs: nounwind uwtable
define internal i32 @read_put_params(%struct.command_buf_s* %pcb, %struct.gs_imager_state_s* %pis, %struct.gx_device_clist_reader_s* %cdev, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %pcb.addr = alloca %struct.command_buf_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %cdev.addr = alloca %struct.gx_device_clist_reader_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %cbp = alloca i8*, align 8
  %param_list = alloca %struct.gs_c_param_list_s, align 8
  %cleft = alloca i32, align 4
  %rleft = alloca i32, align 4
  %alloc_data_on_heap = alloca i32, align 4
  %param_buf = alloca i8*, align 8
  %param_length = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.command_buf_s* %pcb, %struct.command_buf_s** %pcb.addr, align 8, !tbaa !4
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !4
  store %struct.gx_device_clist_reader_s* %cdev, %struct.gx_device_clist_reader_s** %cdev.addr, align 8, !tbaa !4
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %0 = bitcast i8** %cbp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.command_buf_s*, %struct.command_buf_s** %pcb.addr, align 8, !tbaa !4
  %ptr = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %1, i32 0, i32 2
  %2 = load i8*, i8** %ptr, align 8, !tbaa !93
  store i8* %2, i8** %cbp, align 8, !tbaa !4
  %3 = bitcast %struct.gs_c_param_list_s* %param_list to i8*
  call void @llvm.lifetime.start(i64 56, i8* %3) #1
  %4 = bitcast i32* %cleft to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %rleft to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %alloc_data_on_heap to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i32 0, i32* %alloc_data_on_heap, align 4, !tbaa !6
  %7 = bitcast i8** %param_buf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast i32* %param_length to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %param_length to i8*
  %11 = load i8*, i8** %cbp, align 8, !tbaa !4
  %call = call i8* @cmd_copy_value(i8* %10, i32 4, i8* %11) #6
  store i8* %call, i8** %cbp, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %12 = load i32, i32* %param_length, align 4, !tbaa !6
  %cmp = icmp eq i32 %12, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  store i32 1, i32* %code, align 4, !tbaa !6
  br label %out

if.end:                                           ; preds = %do.end
  %13 = load %struct.command_buf_s*, %struct.command_buf_s** %pcb.addr, align 8, !tbaa !4
  %call1 = call i32 @top_up_cbuf(%struct.command_buf_s* %13, i8** %cbp) #6
  store i32 %call1, i32* %code, align 4, !tbaa !6
  %14 = load i32, i32* %code, align 4, !tbaa !6
  %cmp2 = icmp slt i32 %14, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %15 = load i32, i32* %code, align 4, !tbaa !6
  store i32 %15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %16 = load %struct.command_buf_s*, %struct.command_buf_s** %pcb.addr, align 8, !tbaa !4
  %end = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %16, i32 0, i32 4
  %17 = load i8*, i8** %end, align 8, !tbaa !16
  %18 = load i8*, i8** %cbp, align 8, !tbaa !4
  %sub.ptr.lhs.cast = ptrtoint i8* %17 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %18 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %19 = load i32, i32* %param_length, align 4, !tbaa !6
  %conv = zext i32 %19 to i64
  %cmp5 = icmp sge i64 %sub.ptr.sub, %conv
  br i1 %cmp5, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.end.4
  %20 = load i8*, i8** %cbp, align 8, !tbaa !4
  store i8* %20, i8** %param_buf, align 8, !tbaa !4
  %21 = load i32, i32* %param_length, align 4, !tbaa !6
  %22 = load i8*, i8** %cbp, align 8, !tbaa !4
  %idx.ext = zext i32 %21 to i64
  %add.ptr = getelementptr inbounds i8, i8* %22, i64 %idx.ext
  store i8* %add.ptr, i8** %cbp, align 8, !tbaa !4
  br label %if.end.24

if.else:                                          ; preds = %if.end.4
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %23, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %24 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !8
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %26 = load i32, i32* %param_length, align 4, !tbaa !6
  %call8 = call i8* %24(%struct.gs_memory_s* %25, i32 %26, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i32 0, i32 0)) #6
  store i8* %call8, i8** %param_buf, align 8, !tbaa !4
  %27 = load i8*, i8** %param_buf, align 8, !tbaa !4
  %cmp9 = icmp eq i8* %27, null
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.else
  store i32 -25, i32* %code, align 4, !tbaa !6
  br label %out

if.end.12:                                        ; preds = %if.else
  store i32 1, i32* %alloc_data_on_heap, align 4, !tbaa !6
  %28 = load %struct.command_buf_s*, %struct.command_buf_s** %pcb.addr, align 8, !tbaa !4
  %end13 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %28, i32 0, i32 4
  %29 = load i8*, i8** %end13, align 8, !tbaa !16
  %30 = load i8*, i8** %cbp, align 8, !tbaa !4
  %sub.ptr.lhs.cast14 = ptrtoint i8* %29 to i64
  %sub.ptr.rhs.cast15 = ptrtoint i8* %30 to i64
  %sub.ptr.sub16 = sub i64 %sub.ptr.lhs.cast14, %sub.ptr.rhs.cast15
  %conv17 = trunc i64 %sub.ptr.sub16 to i32
  store i32 %conv17, i32* %cleft, align 4, !tbaa !6
  %31 = load i32, i32* %param_length, align 4, !tbaa !6
  %32 = load i32, i32* %cleft, align 4, !tbaa !6
  %sub = sub i32 %31, %32
  store i32 %sub, i32* %rleft, align 4, !tbaa !6
  %33 = load i8*, i8** %param_buf, align 8, !tbaa !4
  %34 = load i8*, i8** %cbp, align 8, !tbaa !4
  %35 = load i32, i32* %cleft, align 4, !tbaa !6
  %conv18 = zext i32 %35 to i64
  %call19 = call i8* @memmove(i8* %33, i8* %34, i64 %conv18) #7
  %36 = load %struct.command_buf_s*, %struct.command_buf_s** %pcb.addr, align 8, !tbaa !4
  %s = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %36, i32 0, i32 5
  %37 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !14
  %38 = load i8*, i8** %param_buf, align 8, !tbaa !4
  %39 = load i32, i32* %cleft, align 4, !tbaa !6
  %idx.ext20 = zext i32 %39 to i64
  %add.ptr21 = getelementptr inbounds i8, i8* %38, i64 %idx.ext20
  %40 = load i32, i32* %rleft, align 4, !tbaa !6
  %call22 = call i32 @sgets(%struct.stream_s* %37, i8* %add.ptr21, i32 %40, i32* %rleft) #6
  %41 = load %struct.command_buf_s*, %struct.command_buf_s** %pcb.addr, align 8, !tbaa !4
  %end_status = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %41, i32 0, i32 6
  store i32 %call22, i32* %end_status, align 4, !tbaa !15
  %42 = load %struct.command_buf_s*, %struct.command_buf_s** %pcb.addr, align 8, !tbaa !4
  %end23 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %42, i32 0, i32 4
  %43 = load i8*, i8** %end23, align 8, !tbaa !16
  store i8* %43, i8** %cbp, align 8, !tbaa !4
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.12, %if.then.7
  %44 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  call void @gs_c_param_list_write(%struct.gs_c_param_list_s* %param_list, %struct.gs_memory_s* %44) #6
  %45 = bitcast %struct.gs_c_param_list_s* %param_list to %struct.gs_param_list_s*
  %46 = load i8*, i8** %param_buf, align 8, !tbaa !4
  %call25 = call i32 @gs_param_list_unserialize(%struct.gs_param_list_s* %45, i8* %46) #6
  store i32 %call25, i32* %code, align 4, !tbaa !6
  %47 = load i32, i32* %code, align 4, !tbaa !6
  %cmp26 = icmp sge i32 %47, 0
  br i1 %cmp26, label %land.lhs.true, label %if.end.31

land.lhs.true:                                    ; preds = %if.end.24
  %48 = load i32, i32* %code, align 4, !tbaa !6
  %49 = load i32, i32* %param_length, align 4, !tbaa !6
  %cmp28 = icmp ne i32 %48, %49
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %land.lhs.true
  store i32 -1, i32* %code, align 4, !tbaa !6
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %land.lhs.true, %if.end.24
  %50 = load i32, i32* %code, align 4, !tbaa !6
  %cmp32 = icmp sge i32 %50, 0
  br i1 %cmp32, label %if.then.34, label %if.end.36

if.then.34:                                       ; preds = %if.end.31
  call void @gs_c_param_list_read(%struct.gs_c_param_list_s* %param_list) #6
  %51 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !4
  %52 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %cdev.addr, align 8, !tbaa !4
  %53 = bitcast %struct.gx_device_clist_reader_s* %52 to %struct.gx_device_s*
  %54 = bitcast %struct.gs_c_param_list_s* %param_list to %struct.gs_param_list_s*
  %call35 = call i32 @gs_imager_putdeviceparams(%struct.gs_imager_state_s* %51, %struct.gx_device_s* %53, %struct.gs_param_list_s* %54) #6
  store i32 %call35, i32* %code, align 4, !tbaa !6
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.34, %if.end.31
  call void @gs_c_param_list_release(%struct.gs_c_param_list_s* %param_list) #6
  %55 = load i32, i32* %alloc_data_on_heap, align 4, !tbaa !6
  %tobool = icmp ne i32 %55, 0
  br i1 %tobool, label %if.then.37, label %if.end.39

if.then.37:                                       ; preds = %if.end.36
  %56 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %procs38 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %56, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs38, i32 0, i32 2
  %57 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !172
  %58 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %59 = load i8*, i8** %param_buf, align 8, !tbaa !4
  call void %57(%struct.gs_memory_s* %58, i8* %59, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i32 0, i32 0)) #6
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.37, %if.end.36
  br label %out

out:                                              ; preds = %if.end.39, %if.then.11, %if.then
  %60 = load i8*, i8** %cbp, align 8, !tbaa !4
  %61 = load %struct.command_buf_s*, %struct.command_buf_s** %pcb.addr, align 8, !tbaa !4
  %ptr40 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %61, i32 0, i32 2
  store i8* %60, i8** %ptr40, align 8, !tbaa !93
  %62 = load i32, i32* %code, align 4, !tbaa !6
  store i32 %62, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then.3
  %63 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #1
  %64 = bitcast i32* %param_length to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #1
  %65 = bitcast i8** %param_buf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #1
  %66 = bitcast i32* %alloc_data_on_heap to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #1
  %67 = bitcast i32* %rleft to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #1
  %68 = bitcast i32* %cleft to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #1
  %69 = bitcast %struct.gs_c_param_list_s* %param_list to i8*
  call void @llvm.lifetime.end(i64 56, i8* %69) #1
  %70 = bitcast i8** %cbp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #1
  %71 = load i32, i32* %retval
  ret i32 %71
}

; Function Attrs: nounwind uwtable
define internal i32 @read_create_compositor(%struct.command_buf_s* %pcb, %struct.gs_memory_s* %mem, %struct.gs_composite_s** %ppcomp) #0 {
entry:
  %retval = alloca i32, align 4
  %pcb.addr = alloca %struct.command_buf_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %ppcomp.addr = alloca %struct.gs_composite_s**, align 8
  %cbp = alloca i8*, align 8
  %comp_id = alloca i32, align 4
  %code = alloca i32, align 4
  %pcomp_type = alloca %struct.gs_composite_type_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.command_buf_s* %pcb, %struct.command_buf_s** %pcb.addr, align 8, !tbaa !4
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  store %struct.gs_composite_s** %ppcomp, %struct.gs_composite_s*** %ppcomp.addr, align 8, !tbaa !4
  %0 = bitcast i8** %cbp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.command_buf_s*, %struct.command_buf_s** %pcb.addr, align 8, !tbaa !4
  %ptr = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %1, i32 0, i32 2
  %2 = load i8*, i8** %ptr, align 8, !tbaa !93
  store i8* %2, i8** %cbp, align 8, !tbaa !4
  %3 = bitcast i32* %comp_id to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %comp_id, align 4, !tbaa !6
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 0, i32* %code, align 4, !tbaa !6
  %5 = bitcast %struct.gs_composite_type_s** %pcomp_type to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store %struct.gs_composite_type_s* null, %struct.gs_composite_type_s** %pcomp_type, align 8, !tbaa !4
  %6 = load %struct.command_buf_s*, %struct.command_buf_s** %pcb.addr, align 8, !tbaa !4
  %end = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %6, i32 0, i32 4
  %7 = load i8*, i8** %end, align 8, !tbaa !16
  %8 = load i8*, i8** %cbp, align 8, !tbaa !4
  %sub.ptr.lhs.cast = ptrtoint i8* %7 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %8 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp = icmp ult i64 %sub.ptr.sub, 621
  br i1 %cmp, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %9 = load %struct.command_buf_s*, %struct.command_buf_s** %pcb.addr, align 8, !tbaa !4
  %call = call i32 @top_up_cbuf(%struct.command_buf_s* %9, i8** %cbp) #6
  store i32 %call, i32* %code, align 4, !tbaa !6
  %10 = load i32, i32* %code, align 4, !tbaa !6
  %cmp1 = icmp slt i32 %10, 0
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %11 = load i32, i32* %code, align 4, !tbaa !6
  store i32 %11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %entry
  %12 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr, i8** %cbp, align 8, !tbaa !4
  %13 = load i8, i8* %12, align 1, !tbaa !1
  %conv = zext i8 %13 to i32
  store i32 %conv, i32* %comp_id, align 4, !tbaa !6
  %14 = load i32, i32* %comp_id, align 4, !tbaa !6
  %call4 = call %struct.gs_composite_type_s* @gs_find_compositor(i32 %14) #6
  store %struct.gs_composite_type_s* %call4, %struct.gs_composite_type_s** %pcomp_type, align 8, !tbaa !4
  %cmp5 = icmp eq %struct.gs_composite_type_s* %call4, null
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.3
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.end.3
  %15 = load %struct.gs_composite_type_s*, %struct.gs_composite_type_s** %pcomp_type, align 8, !tbaa !4
  %procs = getelementptr inbounds %struct.gs_composite_type_s, %struct.gs_composite_type_s* %15, i32 0, i32 1
  %read = getelementptr inbounds %struct.gs_composite_type_procs_s, %struct.gs_composite_type_procs_s* %procs, i32 0, i32 3
  %16 = load i32 (%struct.gs_composite_s**, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s**, i8*, i32, %struct.gs_memory_s*)** %read, align 8, !tbaa !298
  %17 = load %struct.gs_composite_s**, %struct.gs_composite_s*** %ppcomp.addr, align 8, !tbaa !4
  %18 = load i8*, i8** %cbp, align 8, !tbaa !4
  %19 = load %struct.command_buf_s*, %struct.command_buf_s** %pcb.addr, align 8, !tbaa !4
  %end9 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %19, i32 0, i32 4
  %20 = load i8*, i8** %end9, align 8, !tbaa !16
  %21 = load i8*, i8** %cbp, align 8, !tbaa !4
  %sub.ptr.lhs.cast10 = ptrtoint i8* %20 to i64
  %sub.ptr.rhs.cast11 = ptrtoint i8* %21 to i64
  %sub.ptr.sub12 = sub i64 %sub.ptr.lhs.cast10, %sub.ptr.rhs.cast11
  %conv13 = trunc i64 %sub.ptr.sub12 to i32
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %call14 = call i32 %16(%struct.gs_composite_s** %17, i8* %18, i32 %conv13, %struct.gs_memory_s* %22) #6
  store i32 %call14, i32* %code, align 4, !tbaa !6
  %23 = load i32, i32* %code, align 4, !tbaa !6
  %conv15 = sext i32 %23 to i64
  %cmp16 = icmp ugt i64 %conv15, 617
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.8
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.19:                                        ; preds = %if.end.8
  %24 = load i32, i32* %code, align 4, !tbaa !6
  %cmp20 = icmp sgt i32 %24, 0
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.19
  %25 = load i32, i32* %code, align 4, !tbaa !6
  %26 = load i8*, i8** %cbp, align 8, !tbaa !4
  %idx.ext = sext i32 %25 to i64
  %add.ptr = getelementptr inbounds i8, i8* %26, i64 %idx.ext
  store i8* %add.ptr, i8** %cbp, align 8, !tbaa !4
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %if.end.19
  %27 = load i8*, i8** %cbp, align 8, !tbaa !4
  %28 = load %struct.command_buf_s*, %struct.command_buf_s** %pcb.addr, align 8, !tbaa !4
  %ptr24 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %28, i32 0, i32 2
  store i8* %27, i8** %ptr24, align 8, !tbaa !93
  %29 = load i32, i32* %code, align 4, !tbaa !6
  store i32 %29, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.23, %if.then.18, %if.then.7, %if.then.2
  %30 = bitcast %struct.gs_composite_type_s** %pcomp_type to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #1
  %31 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  %32 = bitcast i32* %comp_id to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #1
  %33 = bitcast i8** %cbp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  %34 = load i32, i32* %retval
  ret i32 %34
}

declare i32 @gs_is_pdf14trans_compositor(%struct.gs_composite_s*) #3

; Function Attrs: inlinehint nounwind uwtable
define internal void @enqueue_compositor(%struct.gs_composite_s** %ppcomp_first, %struct.gs_composite_s** %ppcomp_last, %struct.gs_composite_s* %pcomp) #4 {
entry:
  %ppcomp_first.addr = alloca %struct.gs_composite_s**, align 8
  %ppcomp_last.addr = alloca %struct.gs_composite_s**, align 8
  %pcomp.addr = alloca %struct.gs_composite_s*, align 8
  store %struct.gs_composite_s** %ppcomp_first, %struct.gs_composite_s*** %ppcomp_first.addr, align 8, !tbaa !4
  store %struct.gs_composite_s** %ppcomp_last, %struct.gs_composite_s*** %ppcomp_last.addr, align 8, !tbaa !4
  store %struct.gs_composite_s* %pcomp, %struct.gs_composite_s** %pcomp.addr, align 8, !tbaa !4
  %0 = load %struct.gs_composite_s**, %struct.gs_composite_s*** %ppcomp_last.addr, align 8, !tbaa !4
  %1 = load %struct.gs_composite_s*, %struct.gs_composite_s** %0, align 8, !tbaa !4
  %cmp = icmp eq %struct.gs_composite_s* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcomp.addr, align 8, !tbaa !4
  %next = getelementptr inbounds %struct.gs_composite_s, %struct.gs_composite_s* %2, i32 0, i32 4
  store %struct.gs_composite_s* null, %struct.gs_composite_s** %next, align 8, !tbaa !299
  %3 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcomp.addr, align 8, !tbaa !4
  %prev = getelementptr inbounds %struct.gs_composite_s, %struct.gs_composite_s* %3, i32 0, i32 3
  store %struct.gs_composite_s* null, %struct.gs_composite_s** %prev, align 8, !tbaa !300
  %4 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcomp.addr, align 8, !tbaa !4
  %5 = load %struct.gs_composite_s**, %struct.gs_composite_s*** %ppcomp_first.addr, align 8, !tbaa !4
  store %struct.gs_composite_s* %4, %struct.gs_composite_s** %5, align 8, !tbaa !4
  %6 = load %struct.gs_composite_s**, %struct.gs_composite_s*** %ppcomp_last.addr, align 8, !tbaa !4
  store %struct.gs_composite_s* %4, %struct.gs_composite_s** %6, align 8, !tbaa !4
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcomp.addr, align 8, !tbaa !4
  %8 = load %struct.gs_composite_s**, %struct.gs_composite_s*** %ppcomp_last.addr, align 8, !tbaa !4
  %9 = load %struct.gs_composite_s*, %struct.gs_composite_s** %8, align 8, !tbaa !4
  %next1 = getelementptr inbounds %struct.gs_composite_s, %struct.gs_composite_s* %9, i32 0, i32 4
  store %struct.gs_composite_s* %7, %struct.gs_composite_s** %next1, align 8, !tbaa !299
  %10 = load %struct.gs_composite_s**, %struct.gs_composite_s*** %ppcomp_last.addr, align 8, !tbaa !4
  %11 = load %struct.gs_composite_s*, %struct.gs_composite_s** %10, align 8, !tbaa !4
  %12 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcomp.addr, align 8, !tbaa !4
  %prev2 = getelementptr inbounds %struct.gs_composite_s, %struct.gs_composite_s* %12, i32 0, i32 3
  store %struct.gs_composite_s* %11, %struct.gs_composite_s** %prev2, align 8, !tbaa !300
  %13 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcomp.addr, align 8, !tbaa !4
  %next3 = getelementptr inbounds %struct.gs_composite_s, %struct.gs_composite_s* %13, i32 0, i32 4
  store %struct.gs_composite_s* null, %struct.gs_composite_s** %next3, align 8, !tbaa !299
  %14 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcomp.addr, align 8, !tbaa !4
  %15 = load %struct.gs_composite_s**, %struct.gs_composite_s*** %ppcomp_last.addr, align 8, !tbaa !4
  store %struct.gs_composite_s* %14, %struct.gs_composite_s** %15, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @execute_compositor_queue(%struct.gx_device_clist_reader_s* %cdev, %struct.gx_device_s** %target, %struct.gx_device_s** %tdev, %struct.gs_imager_state_s* %pis, %struct.gs_composite_s** %ppcomp_first, %struct.gs_composite_s** %ppcomp_last, %struct.gs_composite_s* %pcomp_from, i32 %x0, i32 %y0, %struct.gs_memory_s* %mem, i32 %idle) #0 {
entry:
  %retval = alloca i32, align 4
  %cdev.addr = alloca %struct.gx_device_clist_reader_s*, align 8
  %target.addr = alloca %struct.gx_device_s**, align 8
  %tdev.addr = alloca %struct.gx_device_s**, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %ppcomp_first.addr = alloca %struct.gs_composite_s**, align 8
  %ppcomp_last.addr = alloca %struct.gs_composite_s**, align 8
  %pcomp_from.addr = alloca %struct.gs_composite_s*, align 8
  %x0.addr = alloca i32, align 4
  %y0.addr = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %idle.addr = alloca i32, align 4
  %pcomp = alloca %struct.gs_composite_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_clist_reader_s* %cdev, %struct.gx_device_clist_reader_s** %cdev.addr, align 8, !tbaa !4
  store %struct.gx_device_s** %target, %struct.gx_device_s*** %target.addr, align 8, !tbaa !4
  store %struct.gx_device_s** %tdev, %struct.gx_device_s*** %tdev.addr, align 8, !tbaa !4
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !4
  store %struct.gs_composite_s** %ppcomp_first, %struct.gs_composite_s*** %ppcomp_first.addr, align 8, !tbaa !4
  store %struct.gs_composite_s** %ppcomp_last, %struct.gs_composite_s*** %ppcomp_last.addr, align 8, !tbaa !4
  store %struct.gs_composite_s* %pcomp_from, %struct.gs_composite_s** %pcomp_from.addr, align 8, !tbaa !4
  store i32 %x0, i32* %x0.addr, align 4, !tbaa !6
  store i32 %y0, i32* %y0.addr, align 4, !tbaa !6
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  store i32 %idle, i32* %idle.addr, align 4, !tbaa !6
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %entry
  %0 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcomp_from.addr, align 8, !tbaa !4
  %cmp = icmp ne %struct.gs_composite_s* %0, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = bitcast %struct.gs_composite_s** %pcomp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcomp_from.addr, align 8, !tbaa !4
  store %struct.gs_composite_s* %2, %struct.gs_composite_s** %pcomp, align 8, !tbaa !4
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcomp, align 8, !tbaa !4
  %next = getelementptr inbounds %struct.gs_composite_s, %struct.gs_composite_s* %4, i32 0, i32 4
  %5 = load %struct.gs_composite_s*, %struct.gs_composite_s** %next, align 8, !tbaa !299
  store %struct.gs_composite_s* %5, %struct.gs_composite_s** %pcomp_from.addr, align 8, !tbaa !4
  %6 = load %struct.gs_composite_s**, %struct.gs_composite_s*** %ppcomp_first.addr, align 8, !tbaa !4
  %7 = load %struct.gs_composite_s**, %struct.gs_composite_s*** %ppcomp_last.addr, align 8, !tbaa !4
  %8 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcomp, align 8, !tbaa !4
  %call = call i32 @dequeue_compositor(%struct.gs_composite_s** %6, %struct.gs_composite_s** %7, %struct.gs_composite_s* %8) #6
  store i32 %call, i32* %code, align 4, !tbaa !6
  %9 = load i32, i32* %code, align 4, !tbaa !6
  %cmp1 = icmp slt i32 %9, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %10 = load i32, i32* %code, align 4, !tbaa !6
  store i32 %10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %while.body
  %11 = load i32, i32* %idle.addr, align 4, !tbaa !6
  %12 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcomp, align 8, !tbaa !4
  %idle2 = getelementptr inbounds %struct.gs_composite_s, %struct.gs_composite_s* %12, i32 0, i32 2
  %13 = load i32, i32* %idle2, align 4, !tbaa !301
  %or = or i32 %13, %11
  store i32 %or, i32* %idle2, align 4, !tbaa !301
  %14 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %cdev.addr, align 8, !tbaa !4
  %15 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !4
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %17 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcomp, align 8, !tbaa !4
  %18 = load i32, i32* %x0.addr, align 4, !tbaa !6
  %19 = load i32, i32* %y0.addr, align 4, !tbaa !6
  %20 = load %struct.gx_device_s**, %struct.gx_device_s*** %target.addr, align 8, !tbaa !4
  %call3 = call i32 @apply_create_compositor(%struct.gx_device_clist_reader_s* %14, %struct.gs_imager_state_s* %15, %struct.gs_memory_s* %16, %struct.gs_composite_s* %17, i32 %18, i32 %19, %struct.gx_device_s** %20) #6
  store i32 %call3, i32* %code, align 4, !tbaa !6
  %21 = load i32, i32* %code, align 4, !tbaa !6
  %cmp4 = icmp slt i32 %21, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %22 = load i32, i32* %code, align 4, !tbaa !6
  store i32 %22, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.end
  %23 = load %struct.gx_device_s**, %struct.gx_device_s*** %target.addr, align 8, !tbaa !4
  %24 = load %struct.gx_device_s*, %struct.gx_device_s** %23, align 8, !tbaa !4
  %25 = load %struct.gx_device_s**, %struct.gx_device_s*** %tdev.addr, align 8, !tbaa !4
  store %struct.gx_device_s* %24, %struct.gx_device_s** %25, align 8, !tbaa !4
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.6, %if.then.5, %if.then
  %26 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  %27 = bitcast %struct.gs_composite_s** %pcomp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %cleanup
  %28 = load i32, i32* %retval
  ret i32 %28

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @dequeue_compositor(%struct.gs_composite_s** %ppcomp_first, %struct.gs_composite_s** %ppcomp_last, %struct.gs_composite_s* %pcomp) #4 {
entry:
  %retval = alloca i32, align 4
  %ppcomp_first.addr = alloca %struct.gs_composite_s**, align 8
  %ppcomp_last.addr = alloca %struct.gs_composite_s**, align 8
  %pcomp.addr = alloca %struct.gs_composite_s*, align 8
  %pcomp_next = alloca %struct.gs_composite_s*, align 8
  %pcomp_prev = alloca %struct.gs_composite_s*, align 8
  store %struct.gs_composite_s** %ppcomp_first, %struct.gs_composite_s*** %ppcomp_first.addr, align 8, !tbaa !4
  store %struct.gs_composite_s** %ppcomp_last, %struct.gs_composite_s*** %ppcomp_last.addr, align 8, !tbaa !4
  store %struct.gs_composite_s* %pcomp, %struct.gs_composite_s** %pcomp.addr, align 8, !tbaa !4
  %0 = load %struct.gs_composite_s**, %struct.gs_composite_s*** %ppcomp_last.addr, align 8, !tbaa !4
  %1 = load %struct.gs_composite_s*, %struct.gs_composite_s** %0, align 8, !tbaa !4
  %2 = load %struct.gs_composite_s**, %struct.gs_composite_s*** %ppcomp_first.addr, align 8, !tbaa !4
  %3 = load %struct.gs_composite_s*, %struct.gs_composite_s** %2, align 8, !tbaa !4
  %cmp = icmp eq %struct.gs_composite_s* %1, %3
  br i1 %cmp, label %if.then, label %if.else.3

if.then:                                          ; preds = %entry
  %4 = load %struct.gs_composite_s**, %struct.gs_composite_s*** %ppcomp_last.addr, align 8, !tbaa !4
  %5 = load %struct.gs_composite_s*, %struct.gs_composite_s** %4, align 8, !tbaa !4
  %6 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcomp.addr, align 8, !tbaa !4
  %cmp1 = icmp eq %struct.gs_composite_s* %5, %6
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %7 = load %struct.gs_composite_s**, %struct.gs_composite_s*** %ppcomp_first.addr, align 8, !tbaa !4
  store %struct.gs_composite_s* null, %struct.gs_composite_s** %7, align 8, !tbaa !4
  %8 = load %struct.gs_composite_s**, %struct.gs_composite_s*** %ppcomp_last.addr, align 8, !tbaa !4
  store %struct.gs_composite_s* null, %struct.gs_composite_s** %8, align 8, !tbaa !4
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then
  store i32 -28, i32* %retval
  br label %return

if.else.3:                                        ; preds = %entry
  %9 = bitcast %struct.gs_composite_s** %pcomp_next to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcomp.addr, align 8, !tbaa !4
  %next = getelementptr inbounds %struct.gs_composite_s, %struct.gs_composite_s* %10, i32 0, i32 4
  %11 = load %struct.gs_composite_s*, %struct.gs_composite_s** %next, align 8, !tbaa !299
  store %struct.gs_composite_s* %11, %struct.gs_composite_s** %pcomp_next, align 8, !tbaa !4
  %12 = bitcast %struct.gs_composite_s** %pcomp_prev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcomp.addr, align 8, !tbaa !4
  %prev = getelementptr inbounds %struct.gs_composite_s, %struct.gs_composite_s* %13, i32 0, i32 3
  %14 = load %struct.gs_composite_s*, %struct.gs_composite_s** %prev, align 8, !tbaa !300
  store %struct.gs_composite_s* %14, %struct.gs_composite_s** %pcomp_prev, align 8, !tbaa !4
  %15 = load %struct.gs_composite_s**, %struct.gs_composite_s*** %ppcomp_last.addr, align 8, !tbaa !4
  %16 = load %struct.gs_composite_s*, %struct.gs_composite_s** %15, align 8, !tbaa !4
  %17 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcomp.addr, align 8, !tbaa !4
  %cmp4 = icmp eq %struct.gs_composite_s* %16, %17
  br i1 %cmp4, label %if.then.5, label %if.else.7

if.then.5:                                        ; preds = %if.else.3
  %18 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcomp.addr, align 8, !tbaa !4
  %prev6 = getelementptr inbounds %struct.gs_composite_s, %struct.gs_composite_s* %18, i32 0, i32 3
  %19 = load %struct.gs_composite_s*, %struct.gs_composite_s** %prev6, align 8, !tbaa !300
  %20 = load %struct.gs_composite_s**, %struct.gs_composite_s*** %ppcomp_last.addr, align 8, !tbaa !4
  store %struct.gs_composite_s* %19, %struct.gs_composite_s** %20, align 8, !tbaa !4
  br label %if.end

if.else.7:                                        ; preds = %if.else.3
  %21 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcomp_prev, align 8, !tbaa !4
  %22 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcomp_next, align 8, !tbaa !4
  %prev8 = getelementptr inbounds %struct.gs_composite_s, %struct.gs_composite_s* %22, i32 0, i32 3
  store %struct.gs_composite_s* %21, %struct.gs_composite_s** %prev8, align 8, !tbaa !300
  br label %if.end

if.end:                                           ; preds = %if.else.7, %if.then.5
  %23 = load %struct.gs_composite_s**, %struct.gs_composite_s*** %ppcomp_first.addr, align 8, !tbaa !4
  %24 = load %struct.gs_composite_s*, %struct.gs_composite_s** %23, align 8, !tbaa !4
  %25 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcomp.addr, align 8, !tbaa !4
  %cmp9 = icmp eq %struct.gs_composite_s* %24, %25
  br i1 %cmp9, label %if.then.10, label %if.else.12

if.then.10:                                       ; preds = %if.end
  %26 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcomp.addr, align 8, !tbaa !4
  %next11 = getelementptr inbounds %struct.gs_composite_s, %struct.gs_composite_s* %26, i32 0, i32 4
  %27 = load %struct.gs_composite_s*, %struct.gs_composite_s** %next11, align 8, !tbaa !299
  %28 = load %struct.gs_composite_s**, %struct.gs_composite_s*** %ppcomp_first.addr, align 8, !tbaa !4
  store %struct.gs_composite_s* %27, %struct.gs_composite_s** %28, align 8, !tbaa !4
  br label %if.end.14

if.else.12:                                       ; preds = %if.end
  %29 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcomp_next, align 8, !tbaa !4
  %30 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcomp_prev, align 8, !tbaa !4
  %next13 = getelementptr inbounds %struct.gs_composite_s, %struct.gs_composite_s* %30, i32 0, i32 4
  store %struct.gs_composite_s* %29, %struct.gs_composite_s** %next13, align 8, !tbaa !299
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.12, %if.then.10
  %31 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcomp.addr, align 8, !tbaa !4
  %prev15 = getelementptr inbounds %struct.gs_composite_s, %struct.gs_composite_s* %31, i32 0, i32 3
  store %struct.gs_composite_s* null, %struct.gs_composite_s** %prev15, align 8, !tbaa !300
  %32 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcomp.addr, align 8, !tbaa !4
  %next16 = getelementptr inbounds %struct.gs_composite_s, %struct.gs_composite_s* %32, i32 0, i32 4
  store %struct.gs_composite_s* null, %struct.gs_composite_s** %next16, align 8, !tbaa !299
  store i32 0, i32* %retval
  %33 = bitcast %struct.gs_composite_s** %pcomp_prev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  %34 = bitcast %struct.gs_composite_s** %pcomp_next to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  br label %return

return:                                           ; preds = %if.end.14, %if.else, %if.then.2
  %35 = load i32, i32* %retval
  ret i32 %35
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @free_compositor(%struct.gs_composite_s* %pcomp, %struct.gs_memory_s* %mem) #4 {
entry:
  %pcomp.addr = alloca %struct.gs_composite_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  store %struct.gs_composite_s* %pcomp, %struct.gs_composite_s** %pcomp.addr, align 8, !tbaa !4
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %0, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %1 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !172
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %3 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcomp.addr, align 8, !tbaa !4
  %4 = bitcast %struct.gs_composite_s* %3 to i8*
  call void %1(%struct.gs_memory_s* %2, i8* %4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i32 0, i32 0)) #6
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @drop_compositor_queue(%struct.gs_composite_s** %ppcomp_first, %struct.gs_composite_s** %ppcomp_last, %struct.gs_composite_s* %pcomp_from, %struct.gs_memory_s* %mem, i32 %x0, i32 %y0, %struct.gs_imager_state_s* %pis) #4 {
entry:
  %retval = alloca i32, align 4
  %ppcomp_first.addr = alloca %struct.gs_composite_s**, align 8
  %ppcomp_last.addr = alloca %struct.gs_composite_s**, align 8
  %pcomp_from.addr = alloca %struct.gs_composite_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %x0.addr = alloca i32, align 4
  %y0.addr = alloca i32, align 4
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pcomp = alloca %struct.gs_composite_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_composite_s** %ppcomp_first, %struct.gs_composite_s*** %ppcomp_first.addr, align 8, !tbaa !4
  store %struct.gs_composite_s** %ppcomp_last, %struct.gs_composite_s*** %ppcomp_last.addr, align 8, !tbaa !4
  store %struct.gs_composite_s* %pcomp_from, %struct.gs_composite_s** %pcomp_from.addr, align 8, !tbaa !4
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  store i32 %x0, i32* %x0.addr, align 4, !tbaa !6
  store i32 %y0, i32* %y0.addr, align 4, !tbaa !6
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !4
  %0 = bitcast %struct.gs_composite_s** %pcomp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gs_composite_s**, %struct.gs_composite_s*** %ppcomp_last.addr, align 8, !tbaa !4
  %3 = load %struct.gs_composite_s*, %struct.gs_composite_s** %2, align 8, !tbaa !4
  store %struct.gs_composite_s* %3, %struct.gs_composite_s** %pcomp, align 8, !tbaa !4
  %4 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcomp, align 8, !tbaa !4
  %cmp = icmp eq %struct.gs_composite_s* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %do.body
  %5 = load %struct.gs_composite_s**, %struct.gs_composite_s*** %ppcomp_first.addr, align 8, !tbaa !4
  %6 = load %struct.gs_composite_s**, %struct.gs_composite_s*** %ppcomp_last.addr, align 8, !tbaa !4
  %7 = load %struct.gs_composite_s**, %struct.gs_composite_s*** %ppcomp_last.addr, align 8, !tbaa !4
  %8 = load %struct.gs_composite_s*, %struct.gs_composite_s** %7, align 8, !tbaa !4
  %call = call i32 @dequeue_compositor(%struct.gs_composite_s** %5, %struct.gs_composite_s** %6, %struct.gs_composite_s* %8) #6
  %9 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcomp, align 8, !tbaa !4
  %type = getelementptr inbounds %struct.gs_composite_s, %struct.gs_composite_s* %9, i32 0, i32 0
  %10 = load %struct.gs_composite_type_s*, %struct.gs_composite_type_s** %type, align 8, !tbaa !173
  %procs = getelementptr inbounds %struct.gs_composite_type_s, %struct.gs_composite_type_s* %10, i32 0, i32 1
  %adjust_ctm = getelementptr inbounds %struct.gs_composite_type_procs_s, %struct.gs_composite_type_procs_s* %procs, i32 0, i32 4
  %11 = load i32 (%struct.gs_composite_s*, i32, i32, %struct.gs_imager_state_s*)*, i32 (%struct.gs_composite_s*, i32, i32, %struct.gs_imager_state_s*)** %adjust_ctm, align 8, !tbaa !302
  %12 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcomp, align 8, !tbaa !4
  %13 = load i32, i32* %x0.addr, align 4, !tbaa !6
  %14 = load i32, i32* %y0.addr, align 4, !tbaa !6
  %15 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !4
  %call1 = call i32 %11(%struct.gs_composite_s* %12, i32 %13, i32 %14, %struct.gs_imager_state_s* %15) #6
  store i32 %call1, i32* %code, align 4, !tbaa !6
  %16 = load i32, i32* %code, align 4, !tbaa !6
  %cmp2 = icmp slt i32 %16, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %17 = load i32, i32* %code, align 4, !tbaa !6
  store i32 %17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %18 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcomp, align 8, !tbaa !4
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  call void @free_compositor(%struct.gs_composite_s* %18, %struct.gs_memory_s* %19) #6
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.4, %if.then.3, %if.then
  %20 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.6 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.cond

do.cond:                                          ; preds = %cleanup.cont
  %21 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcomp, align 8, !tbaa !4
  %22 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcomp_from.addr, align 8, !tbaa !4
  %cmp5 = icmp ne %struct.gs_composite_s* %21, %22
  br i1 %cmp5, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.6

cleanup.6:                                        ; preds = %do.end, %cleanup
  %23 = bitcast %struct.gs_composite_s** %pcomp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  %24 = load i32, i32* %retval
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define internal void @mark_as_idle(%struct.gs_composite_s* %pcomp_start, %struct.gs_composite_s* %pcomp_end) #0 {
entry:
  %pcomp_start.addr = alloca %struct.gs_composite_s*, align 8
  %pcomp_end.addr = alloca %struct.gs_composite_s*, align 8
  %pcomp = alloca %struct.gs_composite_s*, align 8
  store %struct.gs_composite_s* %pcomp_start, %struct.gs_composite_s** %pcomp_start.addr, align 8, !tbaa !4
  store %struct.gs_composite_s* %pcomp_end, %struct.gs_composite_s** %pcomp_end.addr, align 8, !tbaa !4
  %0 = bitcast %struct.gs_composite_s** %pcomp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcomp_start.addr, align 8, !tbaa !4
  store %struct.gs_composite_s* %1, %struct.gs_composite_s** %pcomp, align 8, !tbaa !4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %2 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcomp, align 8, !tbaa !4
  %cmp = icmp ne %struct.gs_composite_s* %2, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcomp, align 8, !tbaa !4
  %idle = getelementptr inbounds %struct.gs_composite_s, %struct.gs_composite_s* %3, i32 0, i32 2
  store i32 1, i32* %idle, align 4, !tbaa !301
  %4 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcomp, align 8, !tbaa !4
  %5 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcomp_end.addr, align 8, !tbaa !4
  %cmp1 = icmp eq %struct.gs_composite_s* %4, %5
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  %6 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcomp, align 8, !tbaa !4
  %next = getelementptr inbounds %struct.gs_composite_s, %struct.gs_composite_s* %6, i32 0, i32 4
  %7 = load %struct.gs_composite_s*, %struct.gs_composite_s** %next, align 8, !tbaa !299
  store %struct.gs_composite_s* %7, %struct.gs_composite_s** %pcomp, align 8, !tbaa !4
  br label %while.cond

while.end:                                        ; preds = %if.then, %while.cond
  %8 = bitcast %struct.gs_composite_s** %pcomp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %8) #1
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @is_null_compositor_op(i8* %cbp, i32* %length) #4 {
entry:
  %retval = alloca i32, align 4
  %cbp.addr = alloca i8*, align 8
  %length.addr = alloca i32*, align 8
  store i8* %cbp, i8** %cbp.addr, align 8, !tbaa !4
  store i32* %length, i32** %length.addr, align 8, !tbaa !4
  %0 = load i8*, i8** %cbp.addr, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1, !tbaa !1
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32*, i32** %length.addr, align 8, !tbaa !4
  store i32 1, i32* %2, align 4, !tbaa !6
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval
  ret i32 %3
}

declare i8* @enc_u_get_uint(i32*, i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @read_alloc_ht_buff(%struct.ht_buff_s* %pht_buff, i32 %ht_size, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %pht_buff.addr = alloca %struct.ht_buff_s*, align 8
  %ht_size.addr = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  store %struct.ht_buff_s* %pht_buff, %struct.ht_buff_s** %pht_buff.addr, align 8, !tbaa !4
  store i32 %ht_size, i32* %ht_size.addr, align 4, !tbaa !6
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %0 = load %struct.ht_buff_s*, %struct.ht_buff_s** %pht_buff.addr, align 8, !tbaa !4
  %pbuff = getelementptr inbounds %struct.ht_buff_s, %struct.ht_buff_s* %0, i32 0, i32 3
  %1 = load i8*, i8** %pbuff, align 8, !tbaa !223
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %2, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %3 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !172
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %5 = load %struct.ht_buff_s*, %struct.ht_buff_s** %pht_buff.addr, align 8, !tbaa !4
  %pbuff1 = getelementptr inbounds %struct.ht_buff_s, %struct.ht_buff_s* %5, i32 0, i32 3
  %6 = load i8*, i8** %pbuff1, align 8, !tbaa !223
  call void %3(%struct.gs_memory_s* %4, i8* %6, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i32 0, i32 0)) #6
  %7 = load %struct.ht_buff_s*, %struct.ht_buff_s** %pht_buff.addr, align 8, !tbaa !4
  %pbuff2 = getelementptr inbounds %struct.ht_buff_s, %struct.ht_buff_s* %7, i32 0, i32 3
  store i8* null, i8** %pbuff2, align 8, !tbaa !223
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i32, i32* %ht_size.addr, align 4, !tbaa !6
  %cmp3 = icmp ugt i32 %8, 4064
  br i1 %cmp3, label %if.then.4, label %if.end.11

if.then.4:                                        ; preds = %if.end
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %procs5 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %9, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs5, i32 0, i32 7
  %10 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !8
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %12 = load i32, i32* %ht_size.addr, align 4, !tbaa !6
  %call = call i8* %10(%struct.gs_memory_s* %11, i32 %12, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i32 0, i32 0)) #6
  %13 = load %struct.ht_buff_s*, %struct.ht_buff_s** %pht_buff.addr, align 8, !tbaa !4
  %pbuff6 = getelementptr inbounds %struct.ht_buff_s, %struct.ht_buff_s* %13, i32 0, i32 3
  store i8* %call, i8** %pbuff6, align 8, !tbaa !223
  %14 = load %struct.ht_buff_s*, %struct.ht_buff_s** %pht_buff.addr, align 8, !tbaa !4
  %pbuff7 = getelementptr inbounds %struct.ht_buff_s, %struct.ht_buff_s* %14, i32 0, i32 3
  %15 = load i8*, i8** %pbuff7, align 8, !tbaa !223
  %cmp8 = icmp eq i8* %15, null
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.then.4
  store i32 -25, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.4
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.end
  %16 = load i32, i32* %ht_size.addr, align 4, !tbaa !6
  %17 = load %struct.ht_buff_s*, %struct.ht_buff_s** %pht_buff.addr, align 8, !tbaa !4
  %ht_size12 = getelementptr inbounds %struct.ht_buff_s, %struct.ht_buff_s* %17, i32 0, i32 0
  store i32 %16, i32* %ht_size12, align 4, !tbaa !226
  %18 = load %struct.ht_buff_s*, %struct.ht_buff_s** %pht_buff.addr, align 8, !tbaa !4
  %read_size = getelementptr inbounds %struct.ht_buff_s, %struct.ht_buff_s* %18, i32 0, i32 1
  store i32 0, i32* %read_size, align 4, !tbaa !227
  %19 = load %struct.ht_buff_s*, %struct.ht_buff_s** %pht_buff.addr, align 8, !tbaa !4
  %pbuff13 = getelementptr inbounds %struct.ht_buff_s, %struct.ht_buff_s* %19, i32 0, i32 3
  %20 = load i8*, i8** %pbuff13, align 8, !tbaa !223
  %21 = load %struct.ht_buff_s*, %struct.ht_buff_s** %pht_buff.addr, align 8, !tbaa !4
  %pcurr = getelementptr inbounds %struct.ht_buff_s, %struct.ht_buff_s* %21, i32 0, i32 2
  store i8* %20, i8** %pcurr, align 8, !tbaa !225
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.then.9
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define internal i32 @read_ht_segment(%struct.ht_buff_s* %pht_buff, %struct.command_buf_s* %pcb, %struct.gs_imager_state_s* %pis, %struct.gx_device_s* %dev, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %pht_buff.addr = alloca %struct.ht_buff_s*, align 8
  %pcb.addr = alloca %struct.command_buf_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %cbp = alloca i8*, align 8
  %pbuff = alloca i8*, align 8
  %ht_size = alloca i32, align 4
  %seg_size = alloca i32, align 4
  %code = alloca i32, align 4
  %tmp_w = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.ht_buff_s* %pht_buff, %struct.ht_buff_s** %pht_buff.addr, align 8, !tbaa !4
  store %struct.command_buf_s* %pcb, %struct.command_buf_s** %pcb.addr, align 8, !tbaa !4
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !4
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %0 = bitcast i8** %cbp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.command_buf_s*, %struct.command_buf_s** %pcb.addr, align 8, !tbaa !4
  %ptr = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %1, i32 0, i32 2
  %2 = load i8*, i8** %ptr, align 8, !tbaa !93
  store i8* %2, i8** %cbp, align 8, !tbaa !4
  %3 = bitcast i8** %pbuff to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store i8* null, i8** %pbuff, align 8, !tbaa !4
  %4 = bitcast i32* %ht_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.ht_buff_s*, %struct.ht_buff_s** %pht_buff.addr, align 8, !tbaa !4
  %ht_size1 = getelementptr inbounds %struct.ht_buff_s, %struct.ht_buff_s* %5, i32 0, i32 0
  %6 = load i32, i32* %ht_size1, align 4, !tbaa !226
  store i32 %6, i32* %ht_size, align 4, !tbaa !6
  %7 = bitcast i32* %seg_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  store i32 0, i32* %code, align 4, !tbaa !6
  br label %do.body

do.body:                                          ; preds = %entry
  %9 = load i8*, i8** %cbp, align 8, !tbaa !4
  %10 = load i8, i8* %9, align 1, !tbaa !1
  %conv = zext i8 %10 to i32
  store i32 %conv, i32* %seg_size, align 4, !tbaa !6
  %cmp = icmp uge i32 %conv, 128
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %11 = bitcast i32* %tmp_w to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load i8*, i8** %cbp, align 8, !tbaa !4
  %call = call i8* @enc_u_get_uint(i32* %tmp_w, i8* %12) #6
  store i8* %call, i8** %cbp, align 8, !tbaa !4
  %13 = load i32, i32* %tmp_w, align 4, !tbaa !6
  store i32 %13, i32* %seg_size, align 4, !tbaa !6
  %14 = bitcast i32* %tmp_w to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #1
  br label %if.end

if.else:                                          ; preds = %do.body
  %15 = load i8*, i8** %cbp, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr, i8** %cbp, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %16 = load %struct.command_buf_s*, %struct.command_buf_s** %pcb.addr, align 8, !tbaa !4
  %warn_limit = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %16, i32 0, i32 3
  %17 = load i8*, i8** %warn_limit, align 8, !tbaa !92
  %18 = load i8*, i8** %cbp, align 8, !tbaa !4
  %sub.ptr.lhs.cast = ptrtoint i8* %17 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %18 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %19 = load i32, i32* %seg_size, align 4, !tbaa !6
  %conv3 = sext i32 %19 to i64
  %cmp4 = icmp slt i64 %sub.ptr.sub, %conv3
  br i1 %cmp4, label %if.then.6, label %if.end.23

if.then.6:                                        ; preds = %do.end
  %20 = load %struct.command_buf_s*, %struct.command_buf_s** %pcb.addr, align 8, !tbaa !4
  %call7 = call i32 @top_up_cbuf(%struct.command_buf_s* %20, i8** %cbp) #6
  store i32 %call7, i32* %code, align 4, !tbaa !6
  %21 = load i32, i32* %code, align 4, !tbaa !6
  %cmp8 = icmp slt i32 %21, 0
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.then.6
  %22 = load i32, i32* %code, align 4, !tbaa !6
  store i32 %22, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %if.then.6
  %23 = load %struct.command_buf_s*, %struct.command_buf_s** %pcb.addr, align 8, !tbaa !4
  %end = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %23, i32 0, i32 4
  %24 = load i8*, i8** %end, align 8, !tbaa !16
  %25 = load i8*, i8** %cbp, align 8, !tbaa !4
  %sub.ptr.lhs.cast12 = ptrtoint i8* %24 to i64
  %sub.ptr.rhs.cast13 = ptrtoint i8* %25 to i64
  %sub.ptr.sub14 = sub i64 %sub.ptr.lhs.cast12, %sub.ptr.rhs.cast13
  %26 = load i32, i32* %seg_size, align 4, !tbaa !6
  %conv15 = sext i32 %26 to i64
  %cmp16 = icmp slt i64 %sub.ptr.sub14, %conv15
  br i1 %cmp16, label %if.then.18, label %if.end.22

if.then.18:                                       ; preds = %if.end.11
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %call19 = call i8* @gs_program_name() #6
  %call20 = call i64 @gs_revision_number() #6
  call void @emprintf_program_ident(%struct.gs_memory_s* %27, i8* %call19, i64 %call20) #6
  %28 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %call21 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %28, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.24, i32 0, i32 0)) #6
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.22:                                        ; preds = %if.end.11
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %do.end
  %29 = load %struct.ht_buff_s*, %struct.ht_buff_s** %pht_buff.addr, align 8, !tbaa !4
  %pbuff24 = getelementptr inbounds %struct.ht_buff_s, %struct.ht_buff_s* %29, i32 0, i32 3
  %30 = load i8*, i8** %pbuff24, align 8, !tbaa !223
  %cmp25 = icmp eq i8* %30, null
  br i1 %cmp25, label %if.then.27, label %if.else.32

if.then.27:                                       ; preds = %if.end.23
  %31 = load i32, i32* %seg_size, align 4, !tbaa !6
  %32 = load i32, i32* %ht_size, align 4, !tbaa !6
  %cmp28 = icmp ne i32 %31, %32
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.then.27
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.31:                                        ; preds = %if.then.27
  %33 = load i8*, i8** %cbp, align 8, !tbaa !4
  store i8* %33, i8** %pbuff, align 8, !tbaa !4
  br label %if.end.48

if.else.32:                                       ; preds = %if.end.23
  %34 = load i32, i32* %seg_size, align 4, !tbaa !6
  %35 = load %struct.ht_buff_s*, %struct.ht_buff_s** %pht_buff.addr, align 8, !tbaa !4
  %read_size = getelementptr inbounds %struct.ht_buff_s, %struct.ht_buff_s* %35, i32 0, i32 1
  %36 = load i32, i32* %read_size, align 4, !tbaa !227
  %add = add i32 %34, %36
  %37 = load %struct.ht_buff_s*, %struct.ht_buff_s** %pht_buff.addr, align 8, !tbaa !4
  %ht_size33 = getelementptr inbounds %struct.ht_buff_s, %struct.ht_buff_s* %37, i32 0, i32 0
  %38 = load i32, i32* %ht_size33, align 4, !tbaa !226
  %cmp34 = icmp ugt i32 %add, %38
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.else.32
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.37:                                        ; preds = %if.else.32
  %39 = load %struct.ht_buff_s*, %struct.ht_buff_s** %pht_buff.addr, align 8, !tbaa !4
  %pcurr = getelementptr inbounds %struct.ht_buff_s, %struct.ht_buff_s* %39, i32 0, i32 2
  %40 = load i8*, i8** %pcurr, align 8, !tbaa !225
  %41 = load i8*, i8** %cbp, align 8, !tbaa !4
  %42 = load i32, i32* %seg_size, align 4, !tbaa !6
  %conv38 = zext i32 %42 to i64
  %call39 = call i8* @memcpy(i8* %40, i8* %41, i64 %conv38) #7
  %43 = load i32, i32* %seg_size, align 4, !tbaa !6
  %44 = load %struct.ht_buff_s*, %struct.ht_buff_s** %pht_buff.addr, align 8, !tbaa !4
  %pcurr40 = getelementptr inbounds %struct.ht_buff_s, %struct.ht_buff_s* %44, i32 0, i32 2
  %45 = load i8*, i8** %pcurr40, align 8, !tbaa !225
  %idx.ext = zext i32 %43 to i64
  %add.ptr = getelementptr inbounds i8, i8* %45, i64 %idx.ext
  store i8* %add.ptr, i8** %pcurr40, align 8, !tbaa !225
  %46 = load i32, i32* %seg_size, align 4, !tbaa !6
  %47 = load %struct.ht_buff_s*, %struct.ht_buff_s** %pht_buff.addr, align 8, !tbaa !4
  %read_size41 = getelementptr inbounds %struct.ht_buff_s, %struct.ht_buff_s* %47, i32 0, i32 1
  %48 = load i32, i32* %read_size41, align 4, !tbaa !227
  %add42 = add i32 %48, %46
  store i32 %add42, i32* %read_size41, align 4, !tbaa !227
  %49 = load i32, i32* %ht_size, align 4, !tbaa !6
  %cmp43 = icmp eq i32 %add42, %49
  br i1 %cmp43, label %if.then.45, label %if.end.47

if.then.45:                                       ; preds = %if.end.37
  %50 = load %struct.ht_buff_s*, %struct.ht_buff_s** %pht_buff.addr, align 8, !tbaa !4
  %pbuff46 = getelementptr inbounds %struct.ht_buff_s, %struct.ht_buff_s* %50, i32 0, i32 3
  %51 = load i8*, i8** %pbuff46, align 8, !tbaa !223
  store i8* %51, i8** %pbuff, align 8, !tbaa !4
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.45, %if.end.37
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.end.31
  %52 = load i8*, i8** %pbuff, align 8, !tbaa !4
  %cmp49 = icmp ne i8* %52, null
  br i1 %cmp49, label %if.then.51, label %if.end.63

if.then.51:                                       ; preds = %if.end.48
  %53 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !4
  %54 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !4
  %55 = load i8*, i8** %pbuff, align 8, !tbaa !4
  %56 = load i32, i32* %ht_size, align 4, !tbaa !6
  %57 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %call52 = call i32 @gx_ht_read_and_install(%struct.gs_imager_state_s* %53, %struct.gx_device_s* %54, i8* %55, i32 %56, %struct.gs_memory_s* %57) #6
  store i32 %call52, i32* %code, align 4, !tbaa !6
  %58 = load %struct.ht_buff_s*, %struct.ht_buff_s** %pht_buff.addr, align 8, !tbaa !4
  %pbuff53 = getelementptr inbounds %struct.ht_buff_s, %struct.ht_buff_s* %58, i32 0, i32 3
  %59 = load i8*, i8** %pbuff53, align 8, !tbaa !223
  %cmp54 = icmp ne i8* %59, null
  br i1 %cmp54, label %if.then.56, label %if.end.60

if.then.56:                                       ; preds = %if.then.51
  %60 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %60, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %61 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !172
  %62 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %63 = load %struct.ht_buff_s*, %struct.ht_buff_s** %pht_buff.addr, align 8, !tbaa !4
  %pbuff57 = getelementptr inbounds %struct.ht_buff_s, %struct.ht_buff_s* %63, i32 0, i32 3
  %64 = load i8*, i8** %pbuff57, align 8, !tbaa !223
  call void %61(%struct.gs_memory_s* %62, i8* %64, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i32 0, i32 0)) #6
  %65 = load %struct.ht_buff_s*, %struct.ht_buff_s** %pht_buff.addr, align 8, !tbaa !4
  %pbuff58 = getelementptr inbounds %struct.ht_buff_s, %struct.ht_buff_s* %65, i32 0, i32 3
  store i8* null, i8** %pbuff58, align 8, !tbaa !223
  %66 = load %struct.ht_buff_s*, %struct.ht_buff_s** %pht_buff.addr, align 8, !tbaa !4
  %pcurr59 = getelementptr inbounds %struct.ht_buff_s, %struct.ht_buff_s* %66, i32 0, i32 2
  store i8* null, i8** %pcurr59, align 8, !tbaa !225
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.56, %if.then.51
  %67 = load %struct.ht_buff_s*, %struct.ht_buff_s** %pht_buff.addr, align 8, !tbaa !4
  %ht_size61 = getelementptr inbounds %struct.ht_buff_s, %struct.ht_buff_s* %67, i32 0, i32 0
  store i32 0, i32* %ht_size61, align 4, !tbaa !226
  %68 = load %struct.ht_buff_s*, %struct.ht_buff_s** %pht_buff.addr, align 8, !tbaa !4
  %read_size62 = getelementptr inbounds %struct.ht_buff_s, %struct.ht_buff_s* %68, i32 0, i32 1
  store i32 0, i32* %read_size62, align 4, !tbaa !227
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.60, %if.end.48
  %69 = load i8*, i8** %cbp, align 8, !tbaa !4
  %70 = load i32, i32* %seg_size, align 4, !tbaa !6
  %idx.ext64 = zext i32 %70 to i64
  %add.ptr65 = getelementptr inbounds i8, i8* %69, i64 %idx.ext64
  %71 = load %struct.command_buf_s*, %struct.command_buf_s** %pcb.addr, align 8, !tbaa !4
  %ptr66 = getelementptr inbounds %struct.command_buf_s, %struct.command_buf_s* %71, i32 0, i32 2
  store i8* %add.ptr65, i8** %ptr66, align 8, !tbaa !93
  %72 = load i32, i32* %code, align 4, !tbaa !6
  store i32 %72, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.63, %if.then.36, %if.then.30, %if.then.18, %if.then.10
  %73 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #1
  %74 = bitcast i32* %seg_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #1
  %75 = bitcast i32* %ht_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #1
  %76 = bitcast i8** %pbuff to i8*
  call void @llvm.lifetime.end(i64 8, i8* %76) #1
  %77 = bitcast i8** %cbp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %77) #1
  %78 = load i32, i32* %retval
  ret i32 %78
}

declare %struct.gx_device_color_type_s* @gx_get_dc_type_from_index(i32) #3

; Function Attrs: nounwind uwtable
define internal i32 @clist_decode_segment(%struct.gx_path_s* %ppath, i32 %op, i32* %vs, %struct.gs_fixed_point_s* %ppos, i32 %x0, i32 %y0, i32 %notes) #0 {
entry:
  %retval = alloca i32, align 4
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %op.addr = alloca i32, align 4
  %vs.addr = alloca i32*, align 8
  %ppos.addr = alloca %struct.gs_fixed_point_s*, align 8
  %x0.addr = alloca i32, align 4
  %y0.addr = alloca i32, align 4
  %notes.addr = alloca i32, align 4
  %px = alloca i32, align 4
  %py = alloca i32, align 4
  %code = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !4
  store i32 %op, i32* %op.addr, align 4, !tbaa !6
  store i32* %vs, i32** %vs.addr, align 8, !tbaa !4
  store %struct.gs_fixed_point_s* %ppos, %struct.gs_fixed_point_s** %ppos.addr, align 8, !tbaa !4
  store i32 %x0, i32* %x0.addr, align 4, !tbaa !6
  store i32 %y0, i32* %y0.addr, align 4, !tbaa !6
  store i32 %notes, i32* %notes.addr, align 4, !tbaa !1
  %0 = bitcast i32* %px to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %ppos.addr, align 8, !tbaa !4
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %1, i32 0, i32 0
  %2 = load i32, i32* %x, align 4, !tbaa !25
  %3 = load i32, i32* %x0.addr, align 4, !tbaa !6
  %shl = shl i32 %3, 8
  %sub = sub nsw i32 %2, %shl
  store i32 %sub, i32* %px, align 4, !tbaa !6
  %4 = bitcast i32* %py to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %ppos.addr, align 8, !tbaa !4
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %5, i32 0, i32 1
  %6 = load i32, i32* %y, align 4, !tbaa !24
  %7 = load i32, i32* %y0.addr, align 4, !tbaa !6
  %shl1 = shl i32 %7, 8
  %sub2 = sub nsw i32 %6, %shl1
  store i32 %sub2, i32* %py, align 4, !tbaa !6
  %8 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load i32, i32* %op.addr, align 4, !tbaa !6
  switch i32 %9, label %sw.default [
    i32 224, label %sw.bb
    i32 225, label %sw.bb.5
    i32 241, label %sw.bb.11
    i32 226, label %sw.bb.17
    i32 227, label %sw.bb.21
    i32 228, label %sw.bb.25
    i32 229, label %sw.bb.36
    i32 230, label %sw.bb.56
    i32 231, label %sw.bb.84
    i32 232, label %sw.bb.112
    i32 233, label %sw.bb.125
    i32 234, label %sw.bb.140
    i32 235, label %sw.bb.155
    i32 236, label %sw.bb.164
    i32 237, label %sw.bb.180
    i32 238, label %sw.bb.200
    i32 239, label %sw.bb.242
  ]

sw.bb:                                            ; preds = %entry
  %10 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !4
  %11 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds i32, i32* %11, i64 0
  %12 = load i32, i32* %arrayidx, align 4, !tbaa !6
  %13 = load i32, i32* %px, align 4, !tbaa !6
  %add = add nsw i32 %13, %12
  store i32 %add, i32* %px, align 4, !tbaa !6
  %14 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx3 = getelementptr inbounds i32, i32* %14, i64 1
  %15 = load i32, i32* %arrayidx3, align 4, !tbaa !6
  %16 = load i32, i32* %py, align 4, !tbaa !6
  %add4 = add nsw i32 %16, %15
  store i32 %add4, i32* %py, align 4, !tbaa !6
  %call = call i32 @gx_path_add_point(%struct.gx_path_s* %10, i32 %add, i32 %add4) #6
  store i32 %call, i32* %code, align 4, !tbaa !6
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %17 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !4
  %18 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx6 = getelementptr inbounds i32, i32* %18, i64 0
  %19 = load i32, i32* %arrayidx6, align 4, !tbaa !6
  %20 = load i32, i32* %px, align 4, !tbaa !6
  %add7 = add nsw i32 %20, %19
  store i32 %add7, i32* %px, align 4, !tbaa !6
  %21 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx8 = getelementptr inbounds i32, i32* %21, i64 1
  %22 = load i32, i32* %arrayidx8, align 4, !tbaa !6
  %23 = load i32, i32* %py, align 4, !tbaa !6
  %add9 = add nsw i32 %23, %22
  store i32 %add9, i32* %py, align 4, !tbaa !6
  %24 = load i32, i32* %notes.addr, align 4, !tbaa !1
  %call10 = call i32 @gx_path_add_line_notes(%struct.gx_path_s* %17, i32 %add7, i32 %add9, i32 %24) #6
  store i32 %call10, i32* %code, align 4, !tbaa !6
  br label %sw.epilog

sw.bb.11:                                         ; preds = %entry
  %25 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !4
  %26 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx12 = getelementptr inbounds i32, i32* %26, i64 0
  %27 = load i32, i32* %arrayidx12, align 4, !tbaa !6
  %28 = load i32, i32* %px, align 4, !tbaa !6
  %add13 = add nsw i32 %28, %27
  store i32 %add13, i32* %px, align 4, !tbaa !6
  %29 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx14 = getelementptr inbounds i32, i32* %29, i64 1
  %30 = load i32, i32* %arrayidx14, align 4, !tbaa !6
  %31 = load i32, i32* %py, align 4, !tbaa !6
  %add15 = add nsw i32 %31, %30
  store i32 %add15, i32* %py, align 4, !tbaa !6
  %32 = load i32, i32* %notes.addr, align 4, !tbaa !1
  %call16 = call i32 @gx_path_add_gap_notes(%struct.gx_path_s* %25, i32 %add13, i32 %add15, i32 %32) #6
  store i32 %call16, i32* %code, align 4, !tbaa !6
  br label %sw.epilog

sw.bb.17:                                         ; preds = %entry
  %33 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !4
  %34 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx18 = getelementptr inbounds i32, i32* %34, i64 0
  %35 = load i32, i32* %arrayidx18, align 4, !tbaa !6
  %36 = load i32, i32* %px, align 4, !tbaa !6
  %add19 = add nsw i32 %36, %35
  store i32 %add19, i32* %px, align 4, !tbaa !6
  %37 = load i32, i32* %py, align 4, !tbaa !6
  %38 = load i32, i32* %notes.addr, align 4, !tbaa !1
  %call20 = call i32 @gx_path_add_line_notes(%struct.gx_path_s* %33, i32 %add19, i32 %37, i32 %38) #6
  store i32 %call20, i32* %code, align 4, !tbaa !6
  br label %sw.epilog

sw.bb.21:                                         ; preds = %entry
  %39 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !4
  %40 = load i32, i32* %px, align 4, !tbaa !6
  %41 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx22 = getelementptr inbounds i32, i32* %41, i64 0
  %42 = load i32, i32* %arrayidx22, align 4, !tbaa !6
  %43 = load i32, i32* %py, align 4, !tbaa !6
  %add23 = add nsw i32 %43, %42
  store i32 %add23, i32* %py, align 4, !tbaa !6
  %44 = load i32, i32* %notes.addr, align 4, !tbaa !1
  %call24 = call i32 @gx_path_add_line_notes(%struct.gx_path_s* %39, i32 %40, i32 %add23, i32 %44) #6
  store i32 %call24, i32* %code, align 4, !tbaa !6
  br label %sw.epilog

sw.bb.25:                                         ; preds = %entry
  %45 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !4
  %46 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx26 = getelementptr inbounds i32, i32* %46, i64 0
  %47 = load i32, i32* %arrayidx26, align 4, !tbaa !6
  %48 = load i32, i32* %px, align 4, !tbaa !6
  %add27 = add nsw i32 %48, %47
  store i32 %add27, i32* %px, align 4, !tbaa !6
  %49 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx28 = getelementptr inbounds i32, i32* %49, i64 1
  %50 = load i32, i32* %arrayidx28, align 4, !tbaa !6
  %51 = load i32, i32* %py, align 4, !tbaa !6
  %add29 = add nsw i32 %51, %50
  store i32 %add29, i32* %py, align 4, !tbaa !6
  %call30 = call i32 @gx_path_add_point(%struct.gx_path_s* %45, i32 %add27, i32 %add29) #6
  store i32 %call30, i32* %code, align 4, !tbaa !6
  %cmp = icmp slt i32 %call30, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.25
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb.25
  %52 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !4
  %53 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx31 = getelementptr inbounds i32, i32* %53, i64 2
  %54 = load i32, i32* %arrayidx31, align 4, !tbaa !6
  %55 = load i32, i32* %px, align 4, !tbaa !6
  %add32 = add nsw i32 %55, %54
  store i32 %add32, i32* %px, align 4, !tbaa !6
  %56 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx33 = getelementptr inbounds i32, i32* %56, i64 3
  %57 = load i32, i32* %arrayidx33, align 4, !tbaa !6
  %58 = load i32, i32* %py, align 4, !tbaa !6
  %add34 = add nsw i32 %58, %57
  store i32 %add34, i32* %py, align 4, !tbaa !6
  %59 = load i32, i32* %notes.addr, align 4, !tbaa !1
  %call35 = call i32 @gx_path_add_line_notes(%struct.gx_path_s* %52, i32 %add32, i32 %add34, i32 %59) #6
  store i32 %call35, i32* %code, align 4, !tbaa !6
  br label %sw.epilog

sw.bb.36:                                         ; preds = %entry
  %60 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !4
  %61 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx37 = getelementptr inbounds i32, i32* %61, i64 0
  %62 = load i32, i32* %arrayidx37, align 4, !tbaa !6
  %63 = load i32, i32* %px, align 4, !tbaa !6
  %add38 = add nsw i32 %63, %62
  store i32 %add38, i32* %px, align 4, !tbaa !6
  %64 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx39 = getelementptr inbounds i32, i32* %64, i64 1
  %65 = load i32, i32* %arrayidx39, align 4, !tbaa !6
  %66 = load i32, i32* %py, align 4, !tbaa !6
  %add40 = add nsw i32 %66, %65
  store i32 %add40, i32* %py, align 4, !tbaa !6
  %call41 = call i32 @gx_path_add_point(%struct.gx_path_s* %60, i32 %add38, i32 %add40) #6
  store i32 %call41, i32* %code, align 4, !tbaa !6
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %if.then.49, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.36
  %67 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !4
  %68 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx43 = getelementptr inbounds i32, i32* %68, i64 2
  %69 = load i32, i32* %arrayidx43, align 4, !tbaa !6
  %70 = load i32, i32* %px, align 4, !tbaa !6
  %add44 = add nsw i32 %70, %69
  store i32 %add44, i32* %px, align 4, !tbaa !6
  %71 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx45 = getelementptr inbounds i32, i32* %71, i64 3
  %72 = load i32, i32* %arrayidx45, align 4, !tbaa !6
  %73 = load i32, i32* %py, align 4, !tbaa !6
  %add46 = add nsw i32 %73, %72
  store i32 %add46, i32* %py, align 4, !tbaa !6
  %74 = load i32, i32* %notes.addr, align 4, !tbaa !1
  %call47 = call i32 @gx_path_add_line_notes(%struct.gx_path_s* %67, i32 %add44, i32 %add46, i32 %74) #6
  store i32 %call47, i32* %code, align 4, !tbaa !6
  %cmp48 = icmp slt i32 %call47, 0
  br i1 %cmp48, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %lor.lhs.false, %sw.bb.36
  br label %sw.epilog

if.end.50:                                        ; preds = %lor.lhs.false
  %75 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !4
  %76 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx51 = getelementptr inbounds i32, i32* %76, i64 4
  %77 = load i32, i32* %arrayidx51, align 4, !tbaa !6
  %78 = load i32, i32* %px, align 4, !tbaa !6
  %add52 = add nsw i32 %78, %77
  store i32 %add52, i32* %px, align 4, !tbaa !6
  %79 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx53 = getelementptr inbounds i32, i32* %79, i64 5
  %80 = load i32, i32* %arrayidx53, align 4, !tbaa !6
  %81 = load i32, i32* %py, align 4, !tbaa !6
  %add54 = add nsw i32 %81, %80
  store i32 %add54, i32* %py, align 4, !tbaa !6
  %82 = load i32, i32* %notes.addr, align 4, !tbaa !1
  %call55 = call i32 @gx_path_add_line_notes(%struct.gx_path_s* %75, i32 %add52, i32 %add54, i32 %82) #6
  store i32 %call55, i32* %code, align 4, !tbaa !6
  br label %sw.epilog

sw.bb.56:                                         ; preds = %entry
  %83 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !4
  %84 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx57 = getelementptr inbounds i32, i32* %84, i64 0
  %85 = load i32, i32* %arrayidx57, align 4, !tbaa !6
  %86 = load i32, i32* %px, align 4, !tbaa !6
  %add58 = add nsw i32 %86, %85
  store i32 %add58, i32* %px, align 4, !tbaa !6
  %87 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx59 = getelementptr inbounds i32, i32* %87, i64 1
  %88 = load i32, i32* %arrayidx59, align 4, !tbaa !6
  %89 = load i32, i32* %py, align 4, !tbaa !6
  %add60 = add nsw i32 %89, %88
  store i32 %add60, i32* %py, align 4, !tbaa !6
  %call61 = call i32 @gx_path_add_point(%struct.gx_path_s* %83, i32 %add58, i32 %add60) #6
  store i32 %call61, i32* %code, align 4, !tbaa !6
  %cmp62 = icmp slt i32 %call61, 0
  br i1 %cmp62, label %if.then.77, label %lor.lhs.false.63

lor.lhs.false.63:                                 ; preds = %sw.bb.56
  %90 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !4
  %91 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx64 = getelementptr inbounds i32, i32* %91, i64 2
  %92 = load i32, i32* %arrayidx64, align 4, !tbaa !6
  %93 = load i32, i32* %px, align 4, !tbaa !6
  %add65 = add nsw i32 %93, %92
  store i32 %add65, i32* %px, align 4, !tbaa !6
  %94 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx66 = getelementptr inbounds i32, i32* %94, i64 3
  %95 = load i32, i32* %arrayidx66, align 4, !tbaa !6
  %96 = load i32, i32* %py, align 4, !tbaa !6
  %add67 = add nsw i32 %96, %95
  store i32 %add67, i32* %py, align 4, !tbaa !6
  %97 = load i32, i32* %notes.addr, align 4, !tbaa !1
  %call68 = call i32 @gx_path_add_line_notes(%struct.gx_path_s* %90, i32 %add65, i32 %add67, i32 %97) #6
  store i32 %call68, i32* %code, align 4, !tbaa !6
  %cmp69 = icmp slt i32 %call68, 0
  br i1 %cmp69, label %if.then.77, label %lor.lhs.false.70

lor.lhs.false.70:                                 ; preds = %lor.lhs.false.63
  %98 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !4
  %99 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx71 = getelementptr inbounds i32, i32* %99, i64 4
  %100 = load i32, i32* %arrayidx71, align 4, !tbaa !6
  %101 = load i32, i32* %px, align 4, !tbaa !6
  %add72 = add nsw i32 %101, %100
  store i32 %add72, i32* %px, align 4, !tbaa !6
  %102 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx73 = getelementptr inbounds i32, i32* %102, i64 5
  %103 = load i32, i32* %arrayidx73, align 4, !tbaa !6
  %104 = load i32, i32* %py, align 4, !tbaa !6
  %add74 = add nsw i32 %104, %103
  store i32 %add74, i32* %py, align 4, !tbaa !6
  %105 = load i32, i32* %notes.addr, align 4, !tbaa !1
  %call75 = call i32 @gx_path_add_line_notes(%struct.gx_path_s* %98, i32 %add72, i32 %add74, i32 %105) #6
  store i32 %call75, i32* %code, align 4, !tbaa !6
  %cmp76 = icmp slt i32 %call75, 0
  br i1 %cmp76, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %lor.lhs.false.70, %lor.lhs.false.63, %sw.bb.56
  br label %sw.epilog

if.end.78:                                        ; preds = %lor.lhs.false.70
  %106 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !4
  %107 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx79 = getelementptr inbounds i32, i32* %107, i64 2
  %108 = load i32, i32* %arrayidx79, align 4, !tbaa !6
  %109 = load i32, i32* %px, align 4, !tbaa !6
  %sub80 = sub nsw i32 %109, %108
  store i32 %sub80, i32* %px, align 4, !tbaa !6
  %110 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx81 = getelementptr inbounds i32, i32* %110, i64 3
  %111 = load i32, i32* %arrayidx81, align 4, !tbaa !6
  %112 = load i32, i32* %py, align 4, !tbaa !6
  %sub82 = sub nsw i32 %112, %111
  store i32 %sub82, i32* %py, align 4, !tbaa !6
  %113 = load i32, i32* %notes.addr, align 4, !tbaa !1
  %call83 = call i32 @gx_path_add_line_notes(%struct.gx_path_s* %106, i32 %sub80, i32 %sub82, i32 %113) #6
  store i32 %call83, i32* %code, align 4, !tbaa !6
  br label %sw.epilog

sw.bb.84:                                         ; preds = %entry
  br label %rrc

rrc:                                              ; preds = %if.end.241, %sw.bb.84
  %114 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx85 = getelementptr inbounds i32, i32* %114, i64 0
  %115 = load i32, i32* %arrayidx85, align 4, !tbaa !6
  %116 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx86 = getelementptr inbounds i32, i32* %116, i64 2
  %117 = load i32, i32* %arrayidx86, align 4, !tbaa !6
  %add87 = add nsw i32 %117, %115
  store i32 %add87, i32* %arrayidx86, align 4, !tbaa !6
  %118 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx88 = getelementptr inbounds i32, i32* %118, i64 4
  %119 = load i32, i32* %arrayidx88, align 4, !tbaa !6
  %add89 = add nsw i32 %119, %add87
  store i32 %add89, i32* %arrayidx88, align 4, !tbaa !6
  %120 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx90 = getelementptr inbounds i32, i32* %120, i64 1
  %121 = load i32, i32* %arrayidx90, align 4, !tbaa !6
  %122 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx91 = getelementptr inbounds i32, i32* %122, i64 3
  %123 = load i32, i32* %arrayidx91, align 4, !tbaa !6
  %add92 = add nsw i32 %123, %121
  store i32 %add92, i32* %arrayidx91, align 4, !tbaa !6
  %124 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx93 = getelementptr inbounds i32, i32* %124, i64 5
  %125 = load i32, i32* %arrayidx93, align 4, !tbaa !6
  %add94 = add nsw i32 %125, %add92
  store i32 %add94, i32* %arrayidx93, align 4, !tbaa !6
  br label %curve

curve:                                            ; preds = %sw.bb.155, %sw.bb.140, %vhc, %hvc, %rrc
  %126 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !4
  %127 = load i32, i32* %px, align 4, !tbaa !6
  %128 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx95 = getelementptr inbounds i32, i32* %128, i64 0
  %129 = load i32, i32* %arrayidx95, align 4, !tbaa !6
  %add96 = add nsw i32 %127, %129
  %130 = load i32, i32* %py, align 4, !tbaa !6
  %131 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx97 = getelementptr inbounds i32, i32* %131, i64 1
  %132 = load i32, i32* %arrayidx97, align 4, !tbaa !6
  %add98 = add nsw i32 %130, %132
  %133 = load i32, i32* %px, align 4, !tbaa !6
  %134 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx99 = getelementptr inbounds i32, i32* %134, i64 2
  %135 = load i32, i32* %arrayidx99, align 4, !tbaa !6
  %add100 = add nsw i32 %133, %135
  %136 = load i32, i32* %py, align 4, !tbaa !6
  %137 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx101 = getelementptr inbounds i32, i32* %137, i64 3
  %138 = load i32, i32* %arrayidx101, align 4, !tbaa !6
  %add102 = add nsw i32 %136, %138
  %139 = load i32, i32* %px, align 4, !tbaa !6
  %140 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx103 = getelementptr inbounds i32, i32* %140, i64 4
  %141 = load i32, i32* %arrayidx103, align 4, !tbaa !6
  %add104 = add nsw i32 %139, %141
  %142 = load i32, i32* %py, align 4, !tbaa !6
  %143 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx105 = getelementptr inbounds i32, i32* %143, i64 5
  %144 = load i32, i32* %arrayidx105, align 4, !tbaa !6
  %add106 = add nsw i32 %142, %144
  %145 = load i32, i32* %notes.addr, align 4, !tbaa !1
  %call107 = call i32 @gx_path_add_curve_notes(%struct.gx_path_s* %126, i32 %add96, i32 %add98, i32 %add100, i32 %add102, i32 %add104, i32 %add106, i32 %145) #6
  store i32 %call107, i32* %code, align 4, !tbaa !6
  %146 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx108 = getelementptr inbounds i32, i32* %146, i64 4
  %147 = load i32, i32* %arrayidx108, align 4, !tbaa !6
  %148 = load i32, i32* %px, align 4, !tbaa !6
  %add109 = add nsw i32 %148, %147
  store i32 %add109, i32* %px, align 4, !tbaa !6
  %149 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx110 = getelementptr inbounds i32, i32* %149, i64 5
  %150 = load i32, i32* %arrayidx110, align 4, !tbaa !6
  %151 = load i32, i32* %py, align 4, !tbaa !6
  %add111 = add nsw i32 %151, %150
  store i32 %add111, i32* %py, align 4, !tbaa !6
  br label %sw.epilog

sw.bb.112:                                        ; preds = %entry
  br label %hvc

hvc:                                              ; preds = %if.end.199, %sw.bb.112
  %152 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx113 = getelementptr inbounds i32, i32* %152, i64 2
  %153 = load i32, i32* %arrayidx113, align 4, !tbaa !6
  %154 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx114 = getelementptr inbounds i32, i32* %154, i64 3
  %155 = load i32, i32* %arrayidx114, align 4, !tbaa !6
  %add115 = add nsw i32 %153, %155
  %156 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx116 = getelementptr inbounds i32, i32* %156, i64 5
  store i32 %add115, i32* %arrayidx116, align 4, !tbaa !6
  %157 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx117 = getelementptr inbounds i32, i32* %157, i64 2
  %158 = load i32, i32* %arrayidx117, align 4, !tbaa !6
  %159 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx118 = getelementptr inbounds i32, i32* %159, i64 3
  store i32 %158, i32* %arrayidx118, align 4, !tbaa !6
  %160 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx119 = getelementptr inbounds i32, i32* %160, i64 0
  %161 = load i32, i32* %arrayidx119, align 4, !tbaa !6
  %162 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx120 = getelementptr inbounds i32, i32* %162, i64 1
  %163 = load i32, i32* %arrayidx120, align 4, !tbaa !6
  %add121 = add nsw i32 %161, %163
  %164 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx122 = getelementptr inbounds i32, i32* %164, i64 2
  store i32 %add121, i32* %arrayidx122, align 4, !tbaa !6
  %165 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx123 = getelementptr inbounds i32, i32* %165, i64 4
  store i32 %add121, i32* %arrayidx123, align 4, !tbaa !6
  %166 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx124 = getelementptr inbounds i32, i32* %166, i64 1
  store i32 0, i32* %arrayidx124, align 4, !tbaa !6
  br label %curve

sw.bb.125:                                        ; preds = %entry
  br label %vhc

vhc:                                              ; preds = %if.end.179, %sw.bb.125
  %167 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx126 = getelementptr inbounds i32, i32* %167, i64 1
  %168 = load i32, i32* %arrayidx126, align 4, !tbaa !6
  %169 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx127 = getelementptr inbounds i32, i32* %169, i64 3
  %170 = load i32, i32* %arrayidx127, align 4, !tbaa !6
  %add128 = add nsw i32 %168, %170
  %171 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx129 = getelementptr inbounds i32, i32* %171, i64 4
  store i32 %add128, i32* %arrayidx129, align 4, !tbaa !6
  %172 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx130 = getelementptr inbounds i32, i32* %172, i64 0
  %173 = load i32, i32* %arrayidx130, align 4, !tbaa !6
  %174 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx131 = getelementptr inbounds i32, i32* %174, i64 2
  %175 = load i32, i32* %arrayidx131, align 4, !tbaa !6
  %add132 = add nsw i32 %173, %175
  %176 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx133 = getelementptr inbounds i32, i32* %176, i64 3
  store i32 %add132, i32* %arrayidx133, align 4, !tbaa !6
  %177 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx134 = getelementptr inbounds i32, i32* %177, i64 5
  store i32 %add132, i32* %arrayidx134, align 4, !tbaa !6
  %178 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx135 = getelementptr inbounds i32, i32* %178, i64 1
  %179 = load i32, i32* %arrayidx135, align 4, !tbaa !6
  %180 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx136 = getelementptr inbounds i32, i32* %180, i64 2
  store i32 %179, i32* %arrayidx136, align 4, !tbaa !6
  %181 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx137 = getelementptr inbounds i32, i32* %181, i64 0
  %182 = load i32, i32* %arrayidx137, align 4, !tbaa !6
  %183 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx138 = getelementptr inbounds i32, i32* %183, i64 1
  store i32 %182, i32* %arrayidx138, align 4, !tbaa !6
  %184 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx139 = getelementptr inbounds i32, i32* %184, i64 0
  store i32 0, i32* %arrayidx139, align 4, !tbaa !6
  br label %curve

sw.bb.140:                                        ; preds = %entry
  %185 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx141 = getelementptr inbounds i32, i32* %185, i64 1
  %186 = load i32, i32* %arrayidx141, align 4, !tbaa !6
  %187 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx142 = getelementptr inbounds i32, i32* %187, i64 3
  %188 = load i32, i32* %arrayidx142, align 4, !tbaa !6
  %add143 = add nsw i32 %186, %188
  %189 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx144 = getelementptr inbounds i32, i32* %189, i64 5
  store i32 %add143, i32* %arrayidx144, align 4, !tbaa !6
  %190 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx145 = getelementptr inbounds i32, i32* %190, i64 0
  %191 = load i32, i32* %arrayidx145, align 4, !tbaa !6
  %192 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx146 = getelementptr inbounds i32, i32* %192, i64 2
  %193 = load i32, i32* %arrayidx146, align 4, !tbaa !6
  %add147 = add nsw i32 %191, %193
  %194 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx148 = getelementptr inbounds i32, i32* %194, i64 4
  store i32 %add147, i32* %arrayidx148, align 4, !tbaa !6
  %195 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx149 = getelementptr inbounds i32, i32* %195, i64 1
  %196 = load i32, i32* %arrayidx149, align 4, !tbaa !6
  %197 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx150 = getelementptr inbounds i32, i32* %197, i64 3
  store i32 %196, i32* %arrayidx150, align 4, !tbaa !6
  %198 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx151 = getelementptr inbounds i32, i32* %198, i64 0
  %199 = load i32, i32* %arrayidx151, align 4, !tbaa !6
  %200 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx152 = getelementptr inbounds i32, i32* %200, i64 2
  store i32 %199, i32* %arrayidx152, align 4, !tbaa !6
  %201 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx153 = getelementptr inbounds i32, i32* %201, i64 0
  store i32 0, i32* %arrayidx153, align 4, !tbaa !6
  %202 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx154 = getelementptr inbounds i32, i32* %202, i64 1
  store i32 0, i32* %arrayidx154, align 4, !tbaa !6
  br label %curve

sw.bb.155:                                        ; preds = %entry
  %203 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx156 = getelementptr inbounds i32, i32* %203, i64 1
  %204 = load i32, i32* %arrayidx156, align 4, !tbaa !6
  %205 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx157 = getelementptr inbounds i32, i32* %205, i64 3
  %206 = load i32, i32* %arrayidx157, align 4, !tbaa !6
  %add158 = add nsw i32 %206, %204
  store i32 %add158, i32* %arrayidx157, align 4, !tbaa !6
  %207 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx159 = getelementptr inbounds i32, i32* %207, i64 5
  store i32 %add158, i32* %arrayidx159, align 4, !tbaa !6
  %208 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx160 = getelementptr inbounds i32, i32* %208, i64 0
  %209 = load i32, i32* %arrayidx160, align 4, !tbaa !6
  %210 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx161 = getelementptr inbounds i32, i32* %210, i64 2
  %211 = load i32, i32* %arrayidx161, align 4, !tbaa !6
  %add162 = add nsw i32 %211, %209
  store i32 %add162, i32* %arrayidx161, align 4, !tbaa !6
  %212 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx163 = getelementptr inbounds i32, i32* %212, i64 4
  store i32 %add162, i32* %arrayidx163, align 4, !tbaa !6
  br label %curve

sw.bb.164:                                        ; preds = %entry
  %213 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx165 = getelementptr inbounds i32, i32* %213, i64 0
  %214 = load i32, i32* %arrayidx165, align 4, !tbaa !6
  %215 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx166 = getelementptr inbounds i32, i32* %215, i64 1
  %216 = load i32, i32* %arrayidx166, align 4, !tbaa !6
  %xor = xor i32 %214, %216
  %cmp167 = icmp slt i32 %xor, 0
  br i1 %cmp167, label %if.then.168, label %if.else

if.then.168:                                      ; preds = %sw.bb.164
  %217 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx169 = getelementptr inbounds i32, i32* %217, i64 1
  %218 = load i32, i32* %arrayidx169, align 4, !tbaa !6
  %sub170 = sub nsw i32 0, %218
  %219 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx171 = getelementptr inbounds i32, i32* %219, i64 2
  store i32 %sub170, i32* %arrayidx171, align 4, !tbaa !6
  %220 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx172 = getelementptr inbounds i32, i32* %220, i64 0
  %221 = load i32, i32* %arrayidx172, align 4, !tbaa !6
  %sub173 = sub nsw i32 0, %221
  %222 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx174 = getelementptr inbounds i32, i32* %222, i64 3
  store i32 %sub173, i32* %arrayidx174, align 4, !tbaa !6
  br label %if.end.179

if.else:                                          ; preds = %sw.bb.164
  %223 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx175 = getelementptr inbounds i32, i32* %223, i64 1
  %224 = load i32, i32* %arrayidx175, align 4, !tbaa !6
  %225 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx176 = getelementptr inbounds i32, i32* %225, i64 2
  store i32 %224, i32* %arrayidx176, align 4, !tbaa !6
  %226 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx177 = getelementptr inbounds i32, i32* %226, i64 0
  %227 = load i32, i32* %arrayidx177, align 4, !tbaa !6
  %228 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx178 = getelementptr inbounds i32, i32* %228, i64 3
  store i32 %227, i32* %arrayidx178, align 4, !tbaa !6
  br label %if.end.179

if.end.179:                                       ; preds = %if.else, %if.then.168
  br label %vhc

sw.bb.180:                                        ; preds = %entry
  %229 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx181 = getelementptr inbounds i32, i32* %229, i64 0
  %230 = load i32, i32* %arrayidx181, align 4, !tbaa !6
  %231 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx182 = getelementptr inbounds i32, i32* %231, i64 1
  %232 = load i32, i32* %arrayidx182, align 4, !tbaa !6
  %xor183 = xor i32 %230, %232
  %cmp184 = icmp slt i32 %xor183, 0
  br i1 %cmp184, label %if.then.185, label %if.else.194

if.then.185:                                      ; preds = %sw.bb.180
  %233 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx186 = getelementptr inbounds i32, i32* %233, i64 0
  %234 = load i32, i32* %arrayidx186, align 4, !tbaa !6
  %sub187 = sub nsw i32 0, %234
  %235 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx188 = getelementptr inbounds i32, i32* %235, i64 3
  store i32 %sub187, i32* %arrayidx188, align 4, !tbaa !6
  %236 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx189 = getelementptr inbounds i32, i32* %236, i64 1
  %237 = load i32, i32* %arrayidx189, align 4, !tbaa !6
  %238 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx190 = getelementptr inbounds i32, i32* %238, i64 2
  store i32 %237, i32* %arrayidx190, align 4, !tbaa !6
  %239 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx191 = getelementptr inbounds i32, i32* %239, i64 1
  %240 = load i32, i32* %arrayidx191, align 4, !tbaa !6
  %sub192 = sub nsw i32 0, %240
  %241 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx193 = getelementptr inbounds i32, i32* %241, i64 1
  store i32 %sub192, i32* %arrayidx193, align 4, !tbaa !6
  br label %if.end.199

if.else.194:                                      ; preds = %sw.bb.180
  %242 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx195 = getelementptr inbounds i32, i32* %242, i64 0
  %243 = load i32, i32* %arrayidx195, align 4, !tbaa !6
  %244 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx196 = getelementptr inbounds i32, i32* %244, i64 3
  store i32 %243, i32* %arrayidx196, align 4, !tbaa !6
  %245 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx197 = getelementptr inbounds i32, i32* %245, i64 1
  %246 = load i32, i32* %arrayidx197, align 4, !tbaa !6
  %247 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx198 = getelementptr inbounds i32, i32* %247, i64 2
  store i32 %246, i32* %arrayidx198, align 4, !tbaa !6
  br label %if.end.199

if.end.199:                                       ; preds = %if.else.194, %if.then.185
  br label %hvc

sw.bb.200:                                        ; preds = %entry
  %248 = bitcast i32* %a to i8*
  call void @llvm.lifetime.start(i64 4, i8* %248) #1
  %249 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx201 = getelementptr inbounds i32, i32* %249, i64 0
  %250 = load i32, i32* %arrayidx201, align 4, !tbaa !6
  store i32 %250, i32* %a, align 4, !tbaa !6
  %251 = bitcast i32* %b to i8*
  call void @llvm.lifetime.start(i64 4, i8* %251) #1
  %252 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx202 = getelementptr inbounds i32, i32* %252, i64 1
  %253 = load i32, i32* %arrayidx202, align 4, !tbaa !6
  store i32 %253, i32* %b, align 4, !tbaa !6
  %254 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx203 = getelementptr inbounds i32, i32* %254, i64 0
  %255 = load i32, i32* %arrayidx203, align 4, !tbaa !6
  %cmp204 = icmp eq i32 %255, 0
  br i1 %cmp204, label %if.then.205, label %if.else.223

if.then.205:                                      ; preds = %sw.bb.200
  %256 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx206 = getelementptr inbounds i32, i32* %256, i64 4
  %257 = load i32, i32* %arrayidx206, align 4, !tbaa !6
  %258 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx207 = getelementptr inbounds i32, i32* %258, i64 2
  %259 = load i32, i32* %arrayidx207, align 4, !tbaa !6
  %sub208 = sub nsw i32 %257, %259
  %260 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx209 = getelementptr inbounds i32, i32* %260, i64 0
  store i32 %sub208, i32* %arrayidx209, align 4, !tbaa !6
  %261 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx210 = getelementptr inbounds i32, i32* %261, i64 3
  %262 = load i32, i32* %arrayidx210, align 4, !tbaa !6
  %263 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx211 = getelementptr inbounds i32, i32* %263, i64 5
  %264 = load i32, i32* %arrayidx211, align 4, !tbaa !6
  %sub212 = sub nsw i32 %262, %264
  %265 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx213 = getelementptr inbounds i32, i32* %265, i64 1
  store i32 %sub212, i32* %arrayidx213, align 4, !tbaa !6
  %266 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx214 = getelementptr inbounds i32, i32* %266, i64 2
  %267 = load i32, i32* %arrayidx214, align 4, !tbaa !6
  %268 = load i32, i32* %a, align 4, !tbaa !6
  %sub215 = sub nsw i32 %267, %268
  %269 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx216 = getelementptr inbounds i32, i32* %269, i64 2
  store i32 %sub215, i32* %arrayidx216, align 4, !tbaa !6
  %270 = load i32, i32* %b, align 4, !tbaa !6
  %271 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx217 = getelementptr inbounds i32, i32* %271, i64 3
  %272 = load i32, i32* %arrayidx217, align 4, !tbaa !6
  %sub218 = sub nsw i32 %270, %272
  %273 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx219 = getelementptr inbounds i32, i32* %273, i64 3
  store i32 %sub218, i32* %arrayidx219, align 4, !tbaa !6
  %274 = load i32, i32* %a, align 4, !tbaa !6
  %275 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx220 = getelementptr inbounds i32, i32* %275, i64 4
  store i32 %274, i32* %arrayidx220, align 4, !tbaa !6
  %276 = load i32, i32* %b, align 4, !tbaa !6
  %sub221 = sub nsw i32 0, %276
  %277 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx222 = getelementptr inbounds i32, i32* %277, i64 5
  store i32 %sub221, i32* %arrayidx222, align 4, !tbaa !6
  br label %if.end.241

if.else.223:                                      ; preds = %sw.bb.200
  %278 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx224 = getelementptr inbounds i32, i32* %278, i64 2
  %279 = load i32, i32* %arrayidx224, align 4, !tbaa !6
  %280 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx225 = getelementptr inbounds i32, i32* %280, i64 4
  %281 = load i32, i32* %arrayidx225, align 4, !tbaa !6
  %sub226 = sub nsw i32 %279, %281
  %282 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx227 = getelementptr inbounds i32, i32* %282, i64 0
  store i32 %sub226, i32* %arrayidx227, align 4, !tbaa !6
  %283 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx228 = getelementptr inbounds i32, i32* %283, i64 5
  %284 = load i32, i32* %arrayidx228, align 4, !tbaa !6
  %285 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx229 = getelementptr inbounds i32, i32* %285, i64 3
  %286 = load i32, i32* %arrayidx229, align 4, !tbaa !6
  %sub230 = sub nsw i32 %284, %286
  %287 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx231 = getelementptr inbounds i32, i32* %287, i64 1
  store i32 %sub230, i32* %arrayidx231, align 4, !tbaa !6
  %288 = load i32, i32* %a, align 4, !tbaa !6
  %289 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx232 = getelementptr inbounds i32, i32* %289, i64 2
  %290 = load i32, i32* %arrayidx232, align 4, !tbaa !6
  %sub233 = sub nsw i32 %288, %290
  %291 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx234 = getelementptr inbounds i32, i32* %291, i64 2
  store i32 %sub233, i32* %arrayidx234, align 4, !tbaa !6
  %292 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx235 = getelementptr inbounds i32, i32* %292, i64 3
  %293 = load i32, i32* %arrayidx235, align 4, !tbaa !6
  %294 = load i32, i32* %b, align 4, !tbaa !6
  %sub236 = sub nsw i32 %293, %294
  %295 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx237 = getelementptr inbounds i32, i32* %295, i64 3
  store i32 %sub236, i32* %arrayidx237, align 4, !tbaa !6
  %296 = load i32, i32* %a, align 4, !tbaa !6
  %sub238 = sub nsw i32 0, %296
  %297 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx239 = getelementptr inbounds i32, i32* %297, i64 4
  store i32 %sub238, i32* %arrayidx239, align 4, !tbaa !6
  %298 = load i32, i32* %b, align 4, !tbaa !6
  %299 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx240 = getelementptr inbounds i32, i32* %299, i64 5
  store i32 %298, i32* %arrayidx240, align 4, !tbaa !6
  br label %if.end.241

if.end.241:                                       ; preds = %if.else.223, %if.then.205
  %300 = bitcast i32* %b to i8*
  call void @llvm.lifetime.end(i64 4, i8* %300) #1
  %301 = bitcast i32* %a to i8*
  call void @llvm.lifetime.end(i64 4, i8* %301) #1
  br label %rrc

sw.bb.242:                                        ; preds = %entry
  %302 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !4
  %call243 = call i32 @gx_path_close_subpath_notes(%struct.gx_path_s* %302, i32 0) #6
  store i32 %call243, i32* %code, align 4, !tbaa !6
  %303 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !4
  %304 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %305 = bitcast i32* %304 to %struct.gs_fixed_point_s*
  %call244 = call i32 @gx_path_current_point(%struct.gx_path_s* %303, %struct.gs_fixed_point_s* %305) #6
  %306 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx245 = getelementptr inbounds i32, i32* %306, i64 0
  %307 = load i32, i32* %arrayidx245, align 4, !tbaa !6
  store i32 %307, i32* %px, align 4, !tbaa !6
  %308 = load i32*, i32** %vs.addr, align 8, !tbaa !4
  %arrayidx246 = getelementptr inbounds i32, i32* %308, i64 1
  %309 = load i32, i32* %arrayidx246, align 4, !tbaa !6
  store i32 %309, i32* %py, align 4, !tbaa !6
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb.242, %curve, %if.end.78, %if.then.77, %if.end.50, %if.then.49, %if.end, %if.then, %sw.bb.21, %sw.bb.17, %sw.bb.11, %sw.bb.5, %sw.bb
  %310 = load i32, i32* %px, align 4, !tbaa !6
  %311 = load i32, i32* %x0.addr, align 4, !tbaa !6
  %shl247 = shl i32 %311, 8
  %add248 = add nsw i32 %310, %shl247
  %312 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %ppos.addr, align 8, !tbaa !4
  %x249 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %312, i32 0, i32 0
  store i32 %add248, i32* %x249, align 4, !tbaa !25
  %313 = load i32, i32* %py, align 4, !tbaa !6
  %314 = load i32, i32* %y0.addr, align 4, !tbaa !6
  %shl250 = shl i32 %314, 8
  %add251 = add nsw i32 %313, %shl250
  %315 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %ppos.addr, align 8, !tbaa !4
  %y252 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %315, i32 0, i32 1
  store i32 %add251, i32* %y252, align 4, !tbaa !24
  %316 = load i32, i32* %code, align 4, !tbaa !6
  store i32 %316, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default
  %317 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %317) #1
  %318 = bitcast i32* %py to i8*
  call void @llvm.lifetime.end(i64 4, i8* %318) #1
  %319 = bitcast i32* %px to i8*
  call void @llvm.lifetime.end(i64 4, i8* %319) #1
  %320 = load i32, i32* %retval
  ret i32 %320
}

declare i32 @gx_path_copy_reducing(%struct.gx_path_s*, %struct.gx_path_s*, i32, %struct.gs_imager_state_s*, i32) #3

; Function Attrs: nounwind uwtable
define internal i32 @clist_do_polyfill(%struct.gx_device_s* %dev, %struct.gx_path_s* %ppath, %struct.gx_device_color_s* %pdcolor, i32 %lop) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %lop.addr = alloca i32, align 4
  %psub = alloca %struct.subpath_s*, align 8
  %pseg1 = alloca %struct.segment_s*, align 8
  %pseg2 = alloca %struct.segment_s*, align 8
  %code = alloca i32, align 4
  %px = alloca i32, align 4
  %py = alloca i32, align 4
  %ax = alloca i32, align 4
  %ay = alloca i32, align 4
  %bx = alloca i32, align 4
  %by = alloca i32, align 4
  %fill = alloca i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !4
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !4
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !4
  store i32 %lop, i32* %lop.addr, align 4, !tbaa !6
  %0 = bitcast %struct.subpath_s** %psub to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !4
  %segments = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %1, i32 0, i32 3
  %2 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments, align 8, !tbaa !303
  %contents = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %2, i32 0, i32 1
  %subpath_first = getelementptr inbounds %struct.psc_, %struct.psc_* %contents, i32 0, i32 0
  %3 = load %struct.subpath_s*, %struct.subpath_s** %subpath_first, align 8, !tbaa !307
  store %struct.subpath_s* %3, %struct.subpath_s** %psub, align 8, !tbaa !4
  %4 = bitcast %struct.segment_s** %pseg1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast %struct.segment_s** %pseg2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.subpath_s*, %struct.subpath_s** %psub, align 8, !tbaa !4
  %tobool = icmp ne %struct.subpath_s* %7, null
  br i1 %tobool, label %land.lhs.true, label %if.else.40

land.lhs.true:                                    ; preds = %entry
  %8 = load %struct.subpath_s*, %struct.subpath_s** %psub, align 8, !tbaa !4
  %next = getelementptr inbounds %struct.subpath_s, %struct.subpath_s* %8, i32 0, i32 1
  %9 = load %struct.segment_s*, %struct.segment_s** %next, align 8, !tbaa !308
  store %struct.segment_s* %9, %struct.segment_s** %pseg1, align 8, !tbaa !4
  %cmp = icmp ne %struct.segment_s* %9, null
  br i1 %cmp, label %land.lhs.true.1, label %if.else.40

land.lhs.true.1:                                  ; preds = %land.lhs.true
  %10 = load %struct.segment_s*, %struct.segment_s** %pseg1, align 8, !tbaa !4
  %next2 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %10, i32 0, i32 1
  %11 = load %struct.segment_s*, %struct.segment_s** %next2, align 8, !tbaa !311
  store %struct.segment_s* %11, %struct.segment_s** %pseg2, align 8, !tbaa !4
  %cmp3 = icmp ne %struct.segment_s* %11, null
  br i1 %cmp3, label %if.then, label %if.else.40

if.then:                                          ; preds = %land.lhs.true.1
  %12 = bitcast i32* %px to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load %struct.subpath_s*, %struct.subpath_s** %psub, align 8, !tbaa !4
  %pt = getelementptr inbounds %struct.subpath_s, %struct.subpath_s* %13, i32 0, i32 4
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 0
  %14 = load i32, i32* %x, align 4, !tbaa !313
  store i32 %14, i32* %px, align 4, !tbaa !6
  %15 = bitcast i32* %py to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load %struct.subpath_s*, %struct.subpath_s** %psub, align 8, !tbaa !4
  %pt4 = getelementptr inbounds %struct.subpath_s, %struct.subpath_s* %16, i32 0, i32 4
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt4, i32 0, i32 1
  %17 = load i32, i32* %y, align 4, !tbaa !314
  store i32 %17, i32* %py, align 4, !tbaa !6
  %18 = bitcast i32* %ax to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = load %struct.segment_s*, %struct.segment_s** %pseg1, align 8, !tbaa !4
  %pt5 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %19, i32 0, i32 4
  %x6 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt5, i32 0, i32 0
  %20 = load i32, i32* %x6, align 4, !tbaa !315
  %21 = load i32, i32* %px, align 4, !tbaa !6
  %sub = sub nsw i32 %20, %21
  store i32 %sub, i32* %ax, align 4, !tbaa !6
  %22 = bitcast i32* %ay to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  %23 = load %struct.segment_s*, %struct.segment_s** %pseg1, align 8, !tbaa !4
  %pt7 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %23, i32 0, i32 4
  %y8 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt7, i32 0, i32 1
  %24 = load i32, i32* %y8, align 4, !tbaa !316
  %25 = load i32, i32* %py, align 4, !tbaa !6
  %sub9 = sub nsw i32 %24, %25
  store i32 %sub9, i32* %ay, align 4, !tbaa !6
  %26 = bitcast i32* %bx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #1
  %27 = bitcast i32* %by to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  %28 = bitcast i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)** %fill to i8*
  call void @llvm.lifetime.start(i64 8, i8* %28) #1
  %29 = load %struct.segment_s*, %struct.segment_s** %pseg2, align 8, !tbaa !4
  %next10 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %29, i32 0, i32 1
  %30 = load %struct.segment_s*, %struct.segment_s** %next10, align 8, !tbaa !311
  %tobool11 = icmp ne %struct.segment_s* %30, null
  br i1 %tobool11, label %land.lhs.true.12, label %if.else

land.lhs.true.12:                                 ; preds = %if.then
  %31 = load i32, i32* %px, align 4, !tbaa !6
  %32 = load %struct.segment_s*, %struct.segment_s** %pseg2, align 8, !tbaa !4
  %next13 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %32, i32 0, i32 1
  %33 = load %struct.segment_s*, %struct.segment_s** %next13, align 8, !tbaa !311
  %pt14 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %33, i32 0, i32 4
  %x15 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt14, i32 0, i32 0
  %34 = load i32, i32* %x15, align 4, !tbaa !315
  %cmp16 = icmp eq i32 %31, %34
  br i1 %cmp16, label %land.lhs.true.17, label %if.then.22

land.lhs.true.17:                                 ; preds = %land.lhs.true.12
  %35 = load i32, i32* %py, align 4, !tbaa !6
  %36 = load %struct.segment_s*, %struct.segment_s** %pseg2, align 8, !tbaa !4
  %next18 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %36, i32 0, i32 1
  %37 = load %struct.segment_s*, %struct.segment_s** %next18, align 8, !tbaa !311
  %pt19 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %37, i32 0, i32 4
  %y20 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt19, i32 0, i32 1
  %38 = load i32, i32* %y20, align 4, !tbaa !316
  %cmp21 = icmp eq i32 %35, %38
  br i1 %cmp21, label %if.else, label %if.then.22

if.then.22:                                       ; preds = %land.lhs.true.17, %land.lhs.true.12
  %39 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !4
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %39, i32 0, i32 42
  %fill_parallelogram = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 28
  %40 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)** %fill_parallelogram, align 8, !tbaa !317
  store i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* %40, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)** %fill, align 8, !tbaa !4
  %41 = load %struct.segment_s*, %struct.segment_s** %pseg2, align 8, !tbaa !4
  %pt23 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %41, i32 0, i32 4
  %x24 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt23, i32 0, i32 0
  %42 = load i32, i32* %x24, align 4, !tbaa !315
  %43 = load %struct.segment_s*, %struct.segment_s** %pseg1, align 8, !tbaa !4
  %pt25 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %43, i32 0, i32 4
  %x26 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt25, i32 0, i32 0
  %44 = load i32, i32* %x26, align 4, !tbaa !315
  %sub27 = sub nsw i32 %42, %44
  store i32 %sub27, i32* %bx, align 4, !tbaa !6
  %45 = load %struct.segment_s*, %struct.segment_s** %pseg2, align 8, !tbaa !4
  %pt28 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %45, i32 0, i32 4
  %y29 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt28, i32 0, i32 1
  %46 = load i32, i32* %y29, align 4, !tbaa !316
  %47 = load %struct.segment_s*, %struct.segment_s** %pseg1, align 8, !tbaa !4
  %pt30 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %47, i32 0, i32 4
  %y31 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt30, i32 0, i32 1
  %48 = load i32, i32* %y31, align 4, !tbaa !316
  %sub32 = sub nsw i32 %46, %48
  store i32 %sub32, i32* %by, align 4, !tbaa !6
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.17, %if.then
  %49 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !4
  %procs33 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %49, i32 0, i32 42
  %fill_triangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs33, i32 0, i32 29
  %50 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)** %fill_triangle, align 8, !tbaa !318
  store i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* %50, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)** %fill, align 8, !tbaa !4
  %51 = load %struct.segment_s*, %struct.segment_s** %pseg2, align 8, !tbaa !4
  %pt34 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %51, i32 0, i32 4
  %x35 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt34, i32 0, i32 0
  %52 = load i32, i32* %x35, align 4, !tbaa !315
  %53 = load i32, i32* %px, align 4, !tbaa !6
  %sub36 = sub nsw i32 %52, %53
  store i32 %sub36, i32* %bx, align 4, !tbaa !6
  %54 = load %struct.segment_s*, %struct.segment_s** %pseg2, align 8, !tbaa !4
  %pt37 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %54, i32 0, i32 4
  %y38 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt37, i32 0, i32 1
  %55 = load i32, i32* %y38, align 4, !tbaa !316
  %56 = load i32, i32* %py, align 4, !tbaa !6
  %sub39 = sub nsw i32 %55, %56
  store i32 %sub39, i32* %by, align 4, !tbaa !6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.22
  %57 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)** %fill, align 8, !tbaa !4
  %58 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !4
  %59 = load i32, i32* %px, align 4, !tbaa !6
  %60 = load i32, i32* %py, align 4, !tbaa !6
  %61 = load i32, i32* %ax, align 4, !tbaa !6
  %62 = load i32, i32* %ay, align 4, !tbaa !6
  %63 = load i32, i32* %bx, align 4, !tbaa !6
  %64 = load i32, i32* %by, align 4, !tbaa !6
  %65 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !4
  %66 = load i32, i32* %lop.addr, align 4, !tbaa !6
  %call = call i32 %57(%struct.gx_device_s* %58, i32 %59, i32 %60, i32 %61, i32 %62, i32 %63, i32 %64, %struct.gx_device_color_s* %65, i32 %66) #6
  store i32 %call, i32* %code, align 4, !tbaa !6
  %67 = bitcast i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)** %fill to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #1
  %68 = bitcast i32* %by to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #1
  %69 = bitcast i32* %bx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #1
  %70 = bitcast i32* %ay to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #1
  %71 = bitcast i32* %ax to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #1
  %72 = bitcast i32* %py to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #1
  %73 = bitcast i32* %px to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #1
  br label %if.end.41

if.else.40:                                       ; preds = %land.lhs.true.1, %land.lhs.true, %entry
  store i32 0, i32* %code, align 4, !tbaa !6
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.40, %if.end
  %74 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !4
  %call42 = call i32 @gx_path_new(%struct.gx_path_s* %74) #6
  %75 = load i32, i32* %code, align 4, !tbaa !6
  %76 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #1
  %77 = bitcast %struct.segment_s** %pseg2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %77) #1
  %78 = bitcast %struct.segment_s** %pseg1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #1
  %79 = bitcast %struct.subpath_s** %psub to i8*
  call void @llvm.lifetime.end(i64 8, i8* %79) #1
  ret i32 %75
}

declare void @gx_make_clip_device_on_stack(%struct.gx_device_clip_s*, %struct.gx_clip_path_s*, %struct.gx_device_s*) #3

; Function Attrs: nounwind uwtable
define internal i32 @cmd_get_frac31(i8* %p, i8** %rp) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %rp.addr = alloca i8**, align 8
  %val = alloca i32, align 4
  %shift = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8, !tbaa !4
  store i8** %rp, i8*** %rp.addr, align 8, !tbaa !4
  %0 = bitcast i32* %val to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i8*, i8** %p.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i32 1
  store i8* %incdec.ptr, i8** %p.addr, align 8, !tbaa !4
  %2 = load i8, i8* %1, align 1, !tbaa !1
  %conv = zext i8 %2 to i32
  %and = and i32 %conv, 254
  %shl = shl i32 %and, 24
  store i32 %shl, i32* %val, align 4, !tbaa !6
  %3 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 17, i32* %shift, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i8*, i8** %p.addr, align 8, !tbaa !4
  %5 = load i8, i8* %4, align 1, !tbaa !1
  %conv1 = zext i8 %5 to i32
  %and2 = and i32 %conv1, 254
  %6 = load i32, i32* %shift, align 4, !tbaa !6
  %shl3 = shl i32 %and2, %6
  %7 = load i32, i32* %val, align 4, !tbaa !6
  %or = or i32 %7, %shl3
  store i32 %or, i32* %val, align 4, !tbaa !6
  %8 = load i8*, i8** %p.addr, align 8, !tbaa !4
  %incdec.ptr4 = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr4, i8** %p.addr, align 8, !tbaa !4
  %9 = load i8, i8* %8, align 1, !tbaa !1
  %conv5 = zext i8 %9 to i32
  %and6 = and i32 %conv5, 1
  %tobool = icmp ne i32 %and6, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %shift, align 4, !tbaa !6
  %sub = sub nsw i32 %10, 7
  store i32 %sub, i32* %shift, align 4, !tbaa !6
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i8*, i8** %p.addr, align 8, !tbaa !4
  %12 = load i8**, i8*** %rp.addr, align 8, !tbaa !4
  store i8* %11, i8** %12, align 8, !tbaa !4
  %13 = load i32, i32* %val, align 4, !tbaa !6
  %14 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #1
  %15 = bitcast i32* %val to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #1
  ret i32 %13
}

declare i32 @gx_init_patch_fill_state_for_clist(%struct.gx_device_s*, %struct.patch_fill_state_s*, %struct.gs_memory_s*) #3

declare i32 @gx_fill_triangle_small(%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*) #3

declare i32 @gx_default_fill_trapezoid(%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32) #3

declare void @gx_path_free(%struct.gx_path_s*, i8*) #3

declare void @emprintf_program_ident(%struct.gs_memory_s*, i8*, i64) #3

declare i8* @gs_program_name() #3

declare i64 @gs_revision_number() #3

declare void @mlprintf_file_and_line(%struct.gs_memory_s*, i8*, i32) #3

declare i32 @errprintf(%struct.gs_memory_s*, i8*, ...) #3

declare i64 @stell(%struct.stream_s*) #3

declare void @dmprintf_file_and_line(%struct.gs_memory_s*, i8*, i32) #3

declare i32 @gx_image_fill_masked(%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*) #3

declare void @rc_decrement_cs(%struct.gs_color_space_s*, i8*) #3

declare void @gx_cpath_free(%struct.gx_clip_path_s*, i8*) #3

declare void @gx_pattern_cache_free(%struct.gx_pattern_cache_s*) #3

declare void @gs_imager_state_release(%struct.gs_imager_state_s*) #3

declare i32 @term_patch_fill_state(%struct.patch_fill_state_s*) #3

; Function Attrs: nounwind uwtable
define internal i32 @cmd_select_map(i32 %map_index, i32 %cont, %struct.gs_imager_state_s* %pis, i32** %pcomp_num, i16** %pmdata, i32* %pcount, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %map_index.addr = alloca i32, align 4
  %cont.addr = alloca i32, align 4
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pcomp_num.addr = alloca i32**, align 8
  %pmdata.addr = alloca i16**, align 8
  %pcount.addr = alloca i32*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %map = alloca %struct.gx_transfer_map_s*, align 8
  %pmap = alloca %struct.gx_transfer_map_s**, align 8
  %cname = alloca i8*, align 8
  %new = alloca %struct.gx_transfer_map_s*, align 8
  %cleanup.dest.slot = alloca i32
  %new230 = alloca %struct.gx_transfer_map_s*, align 8
  %new330 = alloca %struct.gx_transfer_map_s*, align 8
  store i32 %map_index, i32* %map_index.addr, align 4, !tbaa !1
  store i32 %cont, i32* %cont.addr, align 4, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !4
  store i32** %pcomp_num, i32*** %pcomp_num.addr, align 8, !tbaa !4
  store i16** %pmdata, i16*** %pmdata.addr, align 8, !tbaa !4
  store i32* %pcount, i32** %pcount.addr, align 8, !tbaa !4
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %0 = bitcast %struct.gx_transfer_map_s** %map to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.gx_transfer_map_s*** %pmap to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i8** %cname to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i32**, i32*** %pcomp_num.addr, align 8, !tbaa !4
  store i32* null, i32** %3, align 8, !tbaa !4
  %4 = load i32, i32* %map_index.addr, align 4, !tbaa !1
  switch i32 %4, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.197
    i32 2, label %sw.bb.202
    i32 3, label %sw.bb.207
    i32 4, label %sw.bb.212
    i32 5, label %sw.bb.274
    i32 6, label %sw.bb.278
  ]

sw.bb:                                            ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.bb
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %5 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !4
  %set_transfer = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %5, i32 0, i32 46
  %gray = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer, i32 0, i32 7
  %6 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %gray, align 8, !tbaa !319
  %cmp = icmp eq %struct.gx_transfer_map_s* %6, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.1
  %7 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !4
  %set_transfer2 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %7, i32 0, i32 46
  %gray3 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer2, i32 0, i32 7
  %8 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %gray3, align 8, !tbaa !319
  %rc = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %8, i32 0, i32 0
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %9 = load i64, i64* %ref_count, align 8, !tbaa !320
  %cmp4 = icmp sgt i64 %9, 1
  br i1 %cmp4, label %if.then, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %lor.lhs.false
  %10 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !4
  %set_transfer6 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %10, i32 0, i32 46
  %gray7 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer6, i32 0, i32 7
  %11 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %gray7, align 8, !tbaa !319
  %rc8 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %11, i32 0, i32 0
  %memory = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc8, i32 0, i32 1
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !323
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %cmp9 = icmp ne %struct.gs_memory_s* %12, %13
  br i1 %cmp9, label %if.then, label %if.end.42

if.then:                                          ; preds = %lor.lhs.false.5, %lor.lhs.false, %do.body.1
  %14 = bitcast %struct.gx_transfer_map_s** %new to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  br label %do.body.10

do.body.10:                                       ; preds = %if.then
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %15, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %16 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !324
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %call = call i8* %16(%struct.gs_memory_s* %17, %struct.gs_memory_struct_type_s* @st_transfer_map, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i32 0, i32 0)) #6
  %18 = bitcast i8* %call to %struct.gx_transfer_map_s*
  store %struct.gx_transfer_map_s* %18, %struct.gx_transfer_map_s** %new, align 8, !tbaa !4
  %cmp11 = icmp eq %struct.gx_transfer_map_s* %18, null
  br i1 %cmp11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %do.body.10
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body.10
  br label %do.body.13

do.body.13:                                       ; preds = %if.else
  %19 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %new, align 8, !tbaa !4
  %rc14 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %19, i32 0, i32 0
  %ref_count15 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc14, i32 0, i32 0
  store i64 1, i64* %ref_count15, align 8, !tbaa !320
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %21 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %new, align 8, !tbaa !4
  %rc16 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %21, i32 0, i32 0
  %memory17 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc16, i32 0, i32 1
  store %struct.gs_memory_s* %20, %struct.gs_memory_s** %memory17, align 8, !tbaa !323
  %22 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %new, align 8, !tbaa !4
  %rc18 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %22, i32 0, i32 0
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc18, i32 0, i32 2
  store void (%struct.gs_memory_s*, i8*, i8*)* @rc_free_struct_only, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !325
  br label %do.body.19

do.body.19:                                       ; preds = %do.body.13
  br label %do.cond.20

do.cond.20:                                       ; preds = %do.body.19
  br label %do.end.21

do.end.21:                                        ; preds = %do.cond.20
  br label %do.cond.22

do.cond.22:                                       ; preds = %do.end.21
  br label %do.end.23

do.end.23:                                        ; preds = %do.cond.22
  br label %if.end

if.end:                                           ; preds = %do.end.23
  br label %do.cond.24

do.cond.24:                                       ; preds = %if.end
  br label %do.end.25

do.end.25:                                        ; preds = %do.cond.24
  %23 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !4
  %set_transfer26 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %23, i32 0, i32 46
  %gray27 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer26, i32 0, i32 7
  %24 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %gray27, align 8, !tbaa !319
  %tobool = icmp ne %struct.gx_transfer_map_s* %24, null
  br i1 %tobool, label %if.then.28, label %if.end.39

if.then.28:                                       ; preds = %do.end.25
  br label %do.body.29

do.body.29:                                       ; preds = %if.then.28
  br label %do.body.30

do.body.30:                                       ; preds = %do.body.29
  br label %do.cond.31

do.cond.31:                                       ; preds = %do.body.30
  br label %do.end.32

do.end.32:                                        ; preds = %do.cond.31
  %25 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !4
  %set_transfer33 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %25, i32 0, i32 46
  %gray34 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer33, i32 0, i32 7
  %26 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %gray34, align 8, !tbaa !319
  %rc35 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %26, i32 0, i32 0
  %ref_count36 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc35, i32 0, i32 0
  %27 = load i64, i64* %ref_count36, align 8, !tbaa !320
  %add = add nsw i64 %27, -1
  store i64 %add, i64* %ref_count36, align 8, !tbaa !320
  br label %do.cond.37

do.cond.37:                                       ; preds = %do.end.32
  br label %do.end.38

do.end.38:                                        ; preds = %do.cond.37
  br label %if.end.39

if.end.39:                                        ; preds = %do.end.38, %do.end.25
  %28 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %new, align 8, !tbaa !4
  %29 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !4
  %set_transfer40 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %29, i32 0, i32 46
  %gray41 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer40, i32 0, i32 7
  store %struct.gx_transfer_map_s* %28, %struct.gx_transfer_map_s** %gray41, align 8, !tbaa !319
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.39, %if.then.12
  %30 = bitcast %struct.gx_transfer_map_s** %new to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.375 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.42

if.end.42:                                        ; preds = %cleanup.cont, %lor.lhs.false.5
  br label %do.cond.43

do.cond.43:                                       ; preds = %if.end.42
  br label %do.end.44

do.end.44:                                        ; preds = %do.cond.43
  %31 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !4
  %set_transfer45 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %31, i32 0, i32 46
  %gray46 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer45, i32 0, i32 7
  %32 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %gray46, align 8, !tbaa !319
  store %struct.gx_transfer_map_s* %32, %struct.gx_transfer_map_s** %map, align 8, !tbaa !4
  br label %do.body.47

do.body.47:                                       ; preds = %do.end.44
  %33 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !4
  %set_transfer48 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %33, i32 0, i32 46
  %red = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer48, i32 0, i32 1
  %34 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %red, align 8, !tbaa !326
  %tobool49 = icmp ne %struct.gx_transfer_map_s* %34, null
  br i1 %tobool49, label %if.then.50, label %if.end.91

if.then.50:                                       ; preds = %do.body.47
  br label %do.body.51

do.body.51:                                       ; preds = %if.then.50
  br label %do.body.52

do.body.52:                                       ; preds = %do.body.51
  br label %do.cond.53

do.cond.53:                                       ; preds = %do.body.52
  br label %do.end.54

do.end.54:                                        ; preds = %do.cond.53
  %35 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !4
  %set_transfer55 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %35, i32 0, i32 46
  %red56 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer55, i32 0, i32 1
  %36 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %red56, align 8, !tbaa !326
  %rc57 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %36, i32 0, i32 0
  %ref_count58 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc57, i32 0, i32 0
  %37 = load i64, i64* %ref_count58, align 8, !tbaa !320
  %add59 = add nsw i64 %37, -1
  store i64 %add59, i64* %ref_count58, align 8, !tbaa !320
  br label %do.cond.60

do.cond.60:                                       ; preds = %do.end.54
  br label %do.end.61

do.end.61:                                        ; preds = %do.cond.60
  %38 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !4
  %set_transfer62 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %38, i32 0, i32 46
  %red63 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer62, i32 0, i32 1
  %39 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %red63, align 8, !tbaa !326
  %rc64 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %39, i32 0, i32 0
  %ref_count65 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc64, i32 0, i32 0
  %40 = load i64, i64* %ref_count65, align 8, !tbaa !320
  %tobool66 = icmp ne i64 %40, 0
  br i1 %tobool66, label %if.else.86, label %if.then.67

if.then.67:                                       ; preds = %do.end.61
  br label %do.body.68

do.body.68:                                       ; preds = %if.then.67
  br label %do.body.69

do.body.69:                                       ; preds = %do.body.68
  br label %do.cond.70

do.cond.70:                                       ; preds = %do.body.69
  br label %do.end.71

do.end.71:                                        ; preds = %do.cond.70
  %41 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !4
  %set_transfer72 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %41, i32 0, i32 46
  %red73 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer72, i32 0, i32 1
  %42 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %red73, align 8, !tbaa !326
  %rc74 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %42, i32 0, i32 0
  %free75 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc74, i32 0, i32 2
  %43 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free75, align 8, !tbaa !325
  %44 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !4
  %set_transfer76 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %44, i32 0, i32 46
  %red77 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer76, i32 0, i32 1
  %45 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %red77, align 8, !tbaa !326
  %rc78 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %45, i32 0, i32 0
  %memory79 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc78, i32 0, i32 1
  %46 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory79, align 8, !tbaa !323
  %47 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !4
  %set_transfer80 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %47, i32 0, i32 46
  %red81 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer80, i32 0, i32 1
  %48 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %red81, align 8, !tbaa !326
  %49 = bitcast %struct.gx_transfer_map_s* %48 to i8*
  call void %43(%struct.gs_memory_s* %46, i8* %49, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i32 0, i32 0)) #6
  br label %do.cond.82

do.cond.82:                                       ; preds = %do.end.71
  br label %do.end.83

do.end.83:                                        ; preds = %do.cond.82
  %50 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !4
  %set_transfer84 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %50, i32 0, i32 46
  %red85 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer84, i32 0, i32 1
  store %struct.gx_transfer_map_s* null, %struct.gx_transfer_map_s** %red85, align 8, !tbaa !326
  br label %if.end.90

if.else.86:                                       ; preds = %do.end.61
  br label %do.body.87

do.body.87:                                       ; preds = %if.else.86
  br label %do.cond.88

do.cond.88:                                       ; preds = %do.body.87
  br label %do.end.89

do.end.89:                                        ; preds = %do.cond.88
  br label %if.end.90

if.end.90:                                        ; preds = %do.end.89, %do.end.83
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.90, %do.body.47
  br label %do.cond.92

do.cond.92:                                       ; preds = %if.end.91
  br label %do.end.93

do.end.93:                                        ; preds = %do.cond.92
  %51 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !4
  %set_transfer94 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %51, i32 0, i32 46
  %red95 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer94, i32 0, i32 1
  store %struct.gx_transfer_map_s* null, %struct.gx_transfer_map_s** %red95, align 8, !tbaa !326
  %52 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !4
  %set_transfer96 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %52, i32 0, i32 46
  %red_component_num = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer96, i32 0, i32 0
  store i32 -1, i32* %red_component_num, align 4, !tbaa !327
  br label %do.body.97

do.body.97:                                       ; preds = %do.end.93
  %53 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !4
  %set_transfer98 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %53, i32 0, i32 46
  %green = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer98, i32 0, i32 3
  %54 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %green, align 8, !tbaa !328
  %tobool99 = icmp ne %struct.gx_transfer_map_s* %54, null
  br i1 %tobool99, label %if.then.100, label %if.end.141

if.then.100:                                      ; preds = %do.body.97
  br label %do.body.101

do.body.101:                                      ; preds = %if.then.100
  br label %do.body.102

do.body.102:                                      ; preds = %do.body.101
  br label %do.cond.103

do.cond.103:                                      ; preds = %do.body.102
  br label %do.end.104

do.end.104:                                       ; preds = %do.cond.103
  %55 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !4
  %set_transfer105 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %55, i32 0, i32 46
  %green106 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer105, i32 0, i32 3
  %56 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %green106, align 8, !tbaa !328
  %rc107 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %56, i32 0, i32 0
  %ref_count108 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc107, i32 0, i32 0
  %57 = load i64, i64* %ref_count108, align 8, !tbaa !320
  %add109 = add nsw i64 %57, -1
  store i64 %add109, i64* %ref_count108, align 8, !tbaa !320
  br label %do.cond.110

do.cond.110:                                      ; preds = %do.end.104
  br label %do.end.111

do.end.111:                                       ; preds = %do.cond.110
  %58 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !4
  %set_transfer112 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %58, i32 0, i32 46
  %green113 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer112, i32 0, i32 3
  %59 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %green113, align 8, !tbaa !328
  %rc114 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %59, i32 0, i32 0
  %ref_count115 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc114, i32 0, i32 0
  %60 = load i64, i64* %ref_count115, align 8, !tbaa !320
  %tobool116 = icmp ne i64 %60, 0
  br i1 %tobool116, label %if.else.136, label %if.then.117

if.then.117:                                      ; preds = %do.end.111
  br label %do.body.118

do.body.118:                                      ; preds = %if.then.117
  br label %do.body.119

do.body.119:                                      ; preds = %do.body.118
  br label %do.cond.120

do.cond.120:                                      ; preds = %do.body.119
  br label %do.end.121

do.end.121:                                       ; preds = %do.cond.120
  %61 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !4
  %set_transfer122 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %61, i32 0, i32 46
  %green123 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer122, i32 0, i32 3
  %62 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %green123, align 8, !tbaa !328
  %rc124 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %62, i32 0, i32 0
  %free125 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc124, i32 0, i32 2
  %63 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free125, align 8, !tbaa !325
  %64 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !4
  %set_transfer126 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %64, i32 0, i32 46
  %green127 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer126, i32 0, i32 3
  %65 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %green127, align 8, !tbaa !328
  %rc128 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %65, i32 0, i32 0
  %memory129 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc128, i32 0, i32 1
  %66 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory129, align 8, !tbaa !323
  %67 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !4
  %set_transfer130 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %67, i32 0, i32 46
  %green131 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer130, i32 0, i32 3
  %68 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %green131, align 8, !tbaa !328
  %69 = bitcast %struct.gx_transfer_map_s* %68 to i8*
  call void %63(%struct.gs_memory_s* %66, i8* %69, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i32 0, i32 0)) #6
  br label %do.cond.132

do.cond.132:                                      ; preds = %do.end.121
  br label %do.end.133

do.end.133:                                       ; preds = %do.cond.132
  %70 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !4
  %set_transfer134 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %70, i32 0, i32 46
  %green135 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer134, i32 0, i32 3
  store %struct.gx_transfer_map_s* null, %struct.gx_transfer_map_s** %green135, align 8, !tbaa !328
  br label %if.end.140

if.else.136:                                      ; preds = %do.end.111
  br label %do.body.137

do.body.137:                                      ; preds = %if.else.136
  br label %do.cond.138

do.cond.138:                                      ; preds = %do.body.137
  br label %do.end.139

do.end.139:                                       ; preds = %do.cond.138
  br label %if.end.140

if.end.140:                                       ; preds = %do.end.139, %do.end.133
  br label %if.end.141

if.end.141:                                       ; preds = %if.end.140, %do.body.97
  br label %do.cond.142

do.cond.142:                                      ; preds = %if.end.141
  br label %do.end.143

do.end.143:                                       ; preds = %do.cond.142
  %71 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !4
  %set_transfer144 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %71, i32 0, i32 46
  %green145 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer144, i32 0, i32 3
  store %struct.gx_transfer_map_s* null, %struct.gx_transfer_map_s** %green145, align 8, !tbaa !328
  %72 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !4
  %set_transfer146 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %72, i32 0, i32 46
  %green_component_num = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer146, i32 0, i32 2
  store i32 -1, i32* %green_component_num, align 4, !tbaa !329
  br label %do.body.147

do.body.147:                                      ; preds = %do.end.143
  %73 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !4
  %set_transfer148 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %73, i32 0, i32 46
  %blue = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer148, i32 0, i32 5
  %74 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %blue, align 8, !tbaa !330
  %tobool149 = icmp ne %struct.gx_transfer_map_s* %74, null
  br i1 %tobool149, label %if.then.150, label %if.end.191

if.then.150:                                      ; preds = %do.body.147
  br label %do.body.151

do.body.151:                                      ; preds = %if.then.150
  br label %do.body.152

do.body.152:                                      ; preds = %do.body.151
  br label %do.cond.153

do.cond.153:                                      ; preds = %do.body.152
  br label %do.end.154

do.end.154:                                       ; preds = %do.cond.153
  %75 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !4
  %set_transfer155 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %75, i32 0, i32 46
  %blue156 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer155, i32 0, i32 5
  %76 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %blue156, align 8, !tbaa !330
  %rc157 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %76, i32 0, i32 0
  %ref_count158 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc157, i32 0, i32 0
  %77 = load i64, i64* %ref_count158, align 8, !tbaa !320
  %add159 = add nsw i64 %77, -1
  store i64 %add159, i64* %ref_count158, align 8, !tbaa !320
  br label %do.cond.160

do.cond.160:                                      ; preds = %do.end.154
  br label %do.end.161

do.end.161:                                       ; preds = %do.cond.160
  %78 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !4
  %set_transfer162 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %78, i32 0, i32 46
  %blue163 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer162, i32 0, i32 5
  %79 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %blue163, align 8, !tbaa !330
  %rc164 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %79, i32 0, i32 0
  %ref_count165 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc164, i32 0, i32 0
  %80 = load i64, i64* %ref_count165, align 8, !tbaa !320
  %tobool166 = icmp ne i64 %80, 0
  br i1 %tobool166, label %if.else.186, label %if.then.167

if.then.167:                                      ; preds = %do.end.161
  br label %do.body.168

do.body.168:                                      ; preds = %if.then.167
  br label %do.body.169

do.body.169:                                      ; preds = %do.body.168
  br label %do.cond.170

do.cond.170:                                      ; preds = %do.body.169
  br label %do.end.171

do.end.171:                                       ; preds = %do.cond.170
  %81 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !4
  %set_transfer172 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %81, i32 0, i32 46
  %blue173 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer172, i32 0, i32 5
  %82 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %blue173, align 8, !tbaa !330
  %rc174 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %82, i32 0, i32 0
  %free175 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc174, i32 0, i32 2
  %83 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free175, align 8, !tbaa !325
  %84 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !4
  %set_transfer176 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %84, i32 0, i32 46
  %blue177 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer176, i32 0, i32 5
  %85 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %blue177, align 8, !tbaa !330
  %rc178 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %85, i32 0, i32 0
  %memory179 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc178, i32 0, i32 1
  %86 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory179, align 8, !tbaa !323
  %87 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !4
  %set_transfer180 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %87, i32 0, i32 46
  %blue181 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer180, i32 0, i32 5
  %88 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %blue181, align 8, !tbaa !330
  %89 = bitcast %struct.gx_transfer_map_s* %88 to i8*
  call void %83(%struct.gs_memory_s* %86, i8* %89, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i32 0, i32 0)) #6
  br label %do.cond.182

do.cond.182:                                      ; preds = %do.end.171
  br label %do.end.183

do.end.183:                                       ; preds = %do.cond.182
  %90 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !4
  %set_transfer184 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %90, i32 0, i32 46
  %blue185 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer184, i32 0, i32 5
  store %struct.gx_transfer_map_s* null, %struct.gx_transfer_map_s** %blue185, align 8, !tbaa !330
  br label %if.end.190

if.else.186:                                      ; preds = %do.end.161
  br label %do.body.187

do.body.187:                                      ; preds = %if.else.186
  br label %do.cond.188

do.cond.188:                                      ; preds = %do.body.187
  br label %do.end.189

do.end.189:                                       ; preds = %do.cond.188
  br label %if.end.190

if.end.190:                                       ; preds = %do.end.189, %do.end.183
  br label %if.end.191

if.end.191:                                       ; preds = %if.end.190, %do.body.147
  br label %do.cond.192

do.cond.192:                                      ; preds = %if.end.191
  br label %do.end.193

do.end.193:                                       ; preds = %do.cond.192
  %91 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !4
  %set_transfer194 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %91, i32 0, i32 46
  %blue195 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer194, i32 0, i32 5
  store %struct.gx_transfer_map_s* null, %struct.gx_transfer_map_s** %blue195, align 8, !tbaa !330
  %92 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !4
  %set_transfer196 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %92, i32 0, i32 46
  %blue_component_num = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer196, i32 0, i32 4
  store i32 -1, i32* %blue_component_num, align 4, !tbaa !331
  br label %transfer2

sw.bb.197:                                        ; preds = %entry
  %93 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !4
  %set_transfer198 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %93, i32 0, i32 46
  %red199 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer198, i32 0, i32 1
  store %struct.gx_transfer_map_s** %red199, %struct.gx_transfer_map_s*** %pmap, align 8, !tbaa !4
  %94 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !4
  %set_transfer200 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %94, i32 0, i32 46
  %red_component_num201 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer200, i32 0, i32 0
  %95 = load i32**, i32*** %pcomp_num.addr, align 8, !tbaa !4
  store i32* %red_component_num201, i32** %95, align 8, !tbaa !4
  br label %transfer1

sw.bb.202:                                        ; preds = %entry
  %96 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !4
  %set_transfer203 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %96, i32 0, i32 46
  %green204 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer203, i32 0, i32 3
  store %struct.gx_transfer_map_s** %green204, %struct.gx_transfer_map_s*** %pmap, align 8, !tbaa !4
  %97 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !4
  %set_transfer205 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %97, i32 0, i32 46
  %green_component_num206 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer205, i32 0, i32 2
  %98 = load i32**, i32*** %pcomp_num.addr, align 8, !tbaa !4
  store i32* %green_component_num206, i32** %98, align 8, !tbaa !4
  br label %transfer1

sw.bb.207:                                        ; preds = %entry
  %99 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !4
  %set_transfer208 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %99, i32 0, i32 46
  %blue209 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer208, i32 0, i32 5
  store %struct.gx_transfer_map_s** %blue209, %struct.gx_transfer_map_s*** %pmap, align 8, !tbaa !4
  %100 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !4
  %set_transfer210 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %100, i32 0, i32 46
  %blue_component_num211 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer210, i32 0, i32 4
  %101 = load i32**, i32*** %pcomp_num.addr, align 8, !tbaa !4
  store i32* %blue_component_num211, i32** %101, align 8, !tbaa !4
  br label %transfer1

sw.bb.212:                                        ; preds = %entry
  %102 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !4
  %set_transfer213 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %102, i32 0, i32 46
  %gray214 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer213, i32 0, i32 7
  store %struct.gx_transfer_map_s** %gray214, %struct.gx_transfer_map_s*** %pmap, align 8, !tbaa !4
  %103 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !4
  %set_transfer215 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %103, i32 0, i32 46
  %gray_component_num = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer215, i32 0, i32 6
  %104 = load i32**, i32*** %pcomp_num.addr, align 8, !tbaa !4
  store i32* %gray_component_num, i32** %104, align 8, !tbaa !4
  br label %transfer1

transfer1:                                        ; preds = %sw.bb.212, %sw.bb.207, %sw.bb.202, %sw.bb.197
  br label %do.body.216

do.body.216:                                      ; preds = %transfer1
  br label %do.cond.217

do.cond.217:                                      ; preds = %do.body.216
  br label %do.end.218

do.end.218:                                       ; preds = %do.cond.217
  br label %do.body.219

do.body.219:                                      ; preds = %do.end.218
  %105 = load %struct.gx_transfer_map_s**, %struct.gx_transfer_map_s*** %pmap, align 8, !tbaa !4
  %106 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %105, align 8, !tbaa !4
  %cmp220 = icmp eq %struct.gx_transfer_map_s* %106, null
  br i1 %cmp220, label %if.then.229, label %lor.lhs.false.221

lor.lhs.false.221:                                ; preds = %do.body.219
  %107 = load %struct.gx_transfer_map_s**, %struct.gx_transfer_map_s*** %pmap, align 8, !tbaa !4
  %108 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %107, align 8, !tbaa !4
  %rc222 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %108, i32 0, i32 0
  %ref_count223 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc222, i32 0, i32 0
  %109 = load i64, i64* %ref_count223, align 8, !tbaa !320
  %cmp224 = icmp sgt i64 %109, 1
  br i1 %cmp224, label %if.then.229, label %lor.lhs.false.225

lor.lhs.false.225:                                ; preds = %lor.lhs.false.221
  %110 = load %struct.gx_transfer_map_s**, %struct.gx_transfer_map_s*** %pmap, align 8, !tbaa !4
  %111 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %110, align 8, !tbaa !4
  %rc226 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %111, i32 0, i32 0
  %memory227 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc226, i32 0, i32 1
  %112 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory227, align 8, !tbaa !323
  %113 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %cmp228 = icmp ne %struct.gs_memory_s* %112, %113
  br i1 %cmp228, label %if.then.229, label %if.end.268

if.then.229:                                      ; preds = %lor.lhs.false.225, %lor.lhs.false.221, %do.body.219
  %114 = bitcast %struct.gx_transfer_map_s** %new230 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %114) #1
  br label %do.body.231

do.body.231:                                      ; preds = %if.then.229
  %115 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %procs232 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %115, i32 0, i32 1
  %alloc_struct233 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs232, i32 0, i32 8
  %116 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct233, align 8, !tbaa !324
  %117 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %call234 = call i8* %116(%struct.gs_memory_s* %117, %struct.gs_memory_struct_type_s* @st_transfer_map, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i32 0, i32 0)) #6
  %118 = bitcast i8* %call234 to %struct.gx_transfer_map_s*
  store %struct.gx_transfer_map_s* %118, %struct.gx_transfer_map_s** %new230, align 8, !tbaa !4
  %cmp235 = icmp eq %struct.gx_transfer_map_s* %118, null
  br i1 %cmp235, label %if.then.236, label %if.else.237

if.then.236:                                      ; preds = %do.body.231
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.265

if.else.237:                                      ; preds = %do.body.231
  br label %do.body.238

do.body.238:                                      ; preds = %if.else.237
  %119 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %new230, align 8, !tbaa !4
  %rc239 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %119, i32 0, i32 0
  %ref_count240 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc239, i32 0, i32 0
  store i64 1, i64* %ref_count240, align 8, !tbaa !320
  %120 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %121 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %new230, align 8, !tbaa !4
  %rc241 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %121, i32 0, i32 0
  %memory242 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc241, i32 0, i32 1
  store %struct.gs_memory_s* %120, %struct.gs_memory_s** %memory242, align 8, !tbaa !323
  %122 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %new230, align 8, !tbaa !4
  %rc243 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %122, i32 0, i32 0
  %free244 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc243, i32 0, i32 2
  store void (%struct.gs_memory_s*, i8*, i8*)* @rc_free_struct_only, void (%struct.gs_memory_s*, i8*, i8*)** %free244, align 8, !tbaa !325
  br label %do.body.245

do.body.245:                                      ; preds = %do.body.238
  br label %do.cond.246

do.cond.246:                                      ; preds = %do.body.245
  br label %do.end.247

do.end.247:                                       ; preds = %do.cond.246
  br label %do.cond.248

do.cond.248:                                      ; preds = %do.end.247
  br label %do.end.249

do.end.249:                                       ; preds = %do.cond.248
  br label %if.end.250

if.end.250:                                       ; preds = %do.end.249
  br label %do.cond.251

do.cond.251:                                      ; preds = %if.end.250
  br label %do.end.252

do.end.252:                                       ; preds = %do.cond.251
  %123 = load %struct.gx_transfer_map_s**, %struct.gx_transfer_map_s*** %pmap, align 8, !tbaa !4
  %124 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %123, align 8, !tbaa !4
  %tobool253 = icmp ne %struct.gx_transfer_map_s* %124, null
  br i1 %tobool253, label %if.then.254, label %if.end.264

if.then.254:                                      ; preds = %do.end.252
  br label %do.body.255

do.body.255:                                      ; preds = %if.then.254
  br label %do.body.256

do.body.256:                                      ; preds = %do.body.255
  br label %do.cond.257

do.cond.257:                                      ; preds = %do.body.256
  br label %do.end.258

do.end.258:                                       ; preds = %do.cond.257
  %125 = load %struct.gx_transfer_map_s**, %struct.gx_transfer_map_s*** %pmap, align 8, !tbaa !4
  %126 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %125, align 8, !tbaa !4
  %rc259 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %126, i32 0, i32 0
  %ref_count260 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc259, i32 0, i32 0
  %127 = load i64, i64* %ref_count260, align 8, !tbaa !320
  %add261 = add nsw i64 %127, -1
  store i64 %add261, i64* %ref_count260, align 8, !tbaa !320
  br label %do.cond.262

do.cond.262:                                      ; preds = %do.end.258
  br label %do.end.263

do.end.263:                                       ; preds = %do.cond.262
  br label %if.end.264

if.end.264:                                       ; preds = %do.end.263, %do.end.252
  %128 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %new230, align 8, !tbaa !4
  %129 = load %struct.gx_transfer_map_s**, %struct.gx_transfer_map_s*** %pmap, align 8, !tbaa !4
  store %struct.gx_transfer_map_s* %128, %struct.gx_transfer_map_s** %129, align 8, !tbaa !4
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.265

cleanup.265:                                      ; preds = %if.end.264, %if.then.236
  %130 = bitcast %struct.gx_transfer_map_s** %new230 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %130) #1
  %cleanup.dest.266 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.266, label %cleanup.375 [
    i32 0, label %cleanup.cont.267
  ]

cleanup.cont.267:                                 ; preds = %cleanup.265
  br label %if.end.268

if.end.268:                                       ; preds = %cleanup.cont.267, %lor.lhs.false.225
  br label %do.cond.269

do.cond.269:                                      ; preds = %if.end.268
  br label %do.end.270

do.end.270:                                       ; preds = %do.cond.269
  %131 = load %struct.gx_transfer_map_s**, %struct.gx_transfer_map_s*** %pmap, align 8, !tbaa !4
  %132 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %131, align 8, !tbaa !4
  store %struct.gx_transfer_map_s* %132, %struct.gx_transfer_map_s** %map, align 8, !tbaa !4
  br label %transfer2

transfer2:                                        ; preds = %do.end.270, %do.end.193
  %133 = load i32, i32* %cont.addr, align 4, !tbaa !1
  %cmp271 = icmp ne i32 %133, 2
  br i1 %cmp271, label %if.then.272, label %if.end.273

if.then.272:                                      ; preds = %transfer2
  %134 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %map, align 8, !tbaa !4
  call void @gx_set_identity_transfer(%struct.gx_transfer_map_s* %134) #6
  %135 = load i16**, i16*** %pmdata.addr, align 8, !tbaa !4
  store i16* null, i16** %135, align 8, !tbaa !4
  %136 = load i32*, i32** %pcount.addr, align 8, !tbaa !4
  store i32 0, i32* %136, align 4, !tbaa !6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.375

if.end.273:                                       ; preds = %transfer2
  br label %sw.epilog

sw.bb.274:                                        ; preds = %entry
  br label %do.body.275

do.body.275:                                      ; preds = %sw.bb.274
  br label %do.cond.276

do.cond.276:                                      ; preds = %do.body.275
  br label %do.end.277

do.end.277:                                       ; preds = %do.cond.276
  %137 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !4
  %black_generation = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %137, i32 0, i32 44
  store %struct.gx_transfer_map_s** %black_generation, %struct.gx_transfer_map_s*** %pmap, align 8, !tbaa !4
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i32 0, i32 0), i8** %cname, align 8, !tbaa !4
  br label %alloc

sw.bb.278:                                        ; preds = %entry
  br label %do.body.279

do.body.279:                                      ; preds = %sw.bb.278
  br label %do.cond.280

do.cond.280:                                      ; preds = %do.body.279
  br label %do.end.281

do.end.281:                                       ; preds = %do.cond.280
  %138 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !4
  %undercolor_removal = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %138, i32 0, i32 45
  store %struct.gx_transfer_map_s** %undercolor_removal, %struct.gx_transfer_map_s*** %pmap, align 8, !tbaa !4
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.21, i32 0, i32 0), i8** %cname, align 8, !tbaa !4
  br label %alloc

alloc:                                            ; preds = %do.end.281, %do.end.277
  %139 = load i32, i32* %cont.addr, align 4, !tbaa !1
  %cmp282 = icmp eq i32 %139, 0
  br i1 %cmp282, label %if.then.283, label %if.end.318

if.then.283:                                      ; preds = %alloc
  br label %do.body.284

do.body.284:                                      ; preds = %if.then.283
  %140 = load %struct.gx_transfer_map_s**, %struct.gx_transfer_map_s*** %pmap, align 8, !tbaa !4
  %141 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %140, align 8, !tbaa !4
  %tobool285 = icmp ne %struct.gx_transfer_map_s* %141, null
  br i1 %tobool285, label %if.then.286, label %if.end.315

if.then.286:                                      ; preds = %do.body.284
  br label %do.body.287

do.body.287:                                      ; preds = %if.then.286
  br label %do.body.288

do.body.288:                                      ; preds = %do.body.287
  br label %do.cond.289

do.cond.289:                                      ; preds = %do.body.288
  br label %do.end.290

do.end.290:                                       ; preds = %do.cond.289
  %142 = load %struct.gx_transfer_map_s**, %struct.gx_transfer_map_s*** %pmap, align 8, !tbaa !4
  %143 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %142, align 8, !tbaa !4
  %rc291 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %143, i32 0, i32 0
  %ref_count292 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc291, i32 0, i32 0
  %144 = load i64, i64* %ref_count292, align 8, !tbaa !320
  %add293 = add nsw i64 %144, -1
  store i64 %add293, i64* %ref_count292, align 8, !tbaa !320
  br label %do.cond.294

do.cond.294:                                      ; preds = %do.end.290
  br label %do.end.295

do.end.295:                                       ; preds = %do.cond.294
  %145 = load %struct.gx_transfer_map_s**, %struct.gx_transfer_map_s*** %pmap, align 8, !tbaa !4
  %146 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %145, align 8, !tbaa !4
  %rc296 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %146, i32 0, i32 0
  %ref_count297 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc296, i32 0, i32 0
  %147 = load i64, i64* %ref_count297, align 8, !tbaa !320
  %tobool298 = icmp ne i64 %147, 0
  br i1 %tobool298, label %if.else.310, label %if.then.299

if.then.299:                                      ; preds = %do.end.295
  br label %do.body.300

do.body.300:                                      ; preds = %if.then.299
  br label %do.body.301

do.body.301:                                      ; preds = %do.body.300
  br label %do.cond.302

do.cond.302:                                      ; preds = %do.body.301
  br label %do.end.303

do.end.303:                                       ; preds = %do.cond.302
  %148 = load %struct.gx_transfer_map_s**, %struct.gx_transfer_map_s*** %pmap, align 8, !tbaa !4
  %149 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %148, align 8, !tbaa !4
  %rc304 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %149, i32 0, i32 0
  %free305 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc304, i32 0, i32 2
  %150 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free305, align 8, !tbaa !325
  %151 = load %struct.gx_transfer_map_s**, %struct.gx_transfer_map_s*** %pmap, align 8, !tbaa !4
  %152 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %151, align 8, !tbaa !4
  %rc306 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %152, i32 0, i32 0
  %memory307 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc306, i32 0, i32 1
  %153 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory307, align 8, !tbaa !323
  %154 = load %struct.gx_transfer_map_s**, %struct.gx_transfer_map_s*** %pmap, align 8, !tbaa !4
  %155 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %154, align 8, !tbaa !4
  %156 = bitcast %struct.gx_transfer_map_s* %155 to i8*
  %157 = load i8*, i8** %cname, align 8, !tbaa !4
  call void %150(%struct.gs_memory_s* %153, i8* %156, i8* %157) #6
  br label %do.cond.308

do.cond.308:                                      ; preds = %do.end.303
  br label %do.end.309

do.end.309:                                       ; preds = %do.cond.308
  %158 = load %struct.gx_transfer_map_s**, %struct.gx_transfer_map_s*** %pmap, align 8, !tbaa !4
  store %struct.gx_transfer_map_s* null, %struct.gx_transfer_map_s** %158, align 8, !tbaa !4
  br label %if.end.314

if.else.310:                                      ; preds = %do.end.295
  br label %do.body.311

do.body.311:                                      ; preds = %if.else.310
  br label %do.cond.312

do.cond.312:                                      ; preds = %do.body.311
  br label %do.end.313

do.end.313:                                       ; preds = %do.cond.312
  br label %if.end.314

if.end.314:                                       ; preds = %do.end.313, %do.end.309
  br label %if.end.315

if.end.315:                                       ; preds = %if.end.314, %do.body.284
  br label %do.cond.316

do.cond.316:                                      ; preds = %if.end.315
  br label %do.end.317

do.end.317:                                       ; preds = %do.cond.316
  %159 = load %struct.gx_transfer_map_s**, %struct.gx_transfer_map_s*** %pmap, align 8, !tbaa !4
  store %struct.gx_transfer_map_s* null, %struct.gx_transfer_map_s** %159, align 8, !tbaa !4
  %160 = load i16**, i16*** %pmdata.addr, align 8, !tbaa !4
  store i16* null, i16** %160, align 8, !tbaa !4
  %161 = load i32*, i32** %pcount.addr, align 8, !tbaa !4
  store i32 0, i32* %161, align 4, !tbaa !6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.375

if.end.318:                                       ; preds = %alloc
  br label %do.body.319

do.body.319:                                      ; preds = %if.end.318
  %162 = load %struct.gx_transfer_map_s**, %struct.gx_transfer_map_s*** %pmap, align 8, !tbaa !4
  %163 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %162, align 8, !tbaa !4
  %cmp320 = icmp eq %struct.gx_transfer_map_s* %163, null
  br i1 %cmp320, label %if.then.329, label %lor.lhs.false.321

lor.lhs.false.321:                                ; preds = %do.body.319
  %164 = load %struct.gx_transfer_map_s**, %struct.gx_transfer_map_s*** %pmap, align 8, !tbaa !4
  %165 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %164, align 8, !tbaa !4
  %rc322 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %165, i32 0, i32 0
  %ref_count323 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc322, i32 0, i32 0
  %166 = load i64, i64* %ref_count323, align 8, !tbaa !320
  %cmp324 = icmp sgt i64 %166, 1
  br i1 %cmp324, label %if.then.329, label %lor.lhs.false.325

lor.lhs.false.325:                                ; preds = %lor.lhs.false.321
  %167 = load %struct.gx_transfer_map_s**, %struct.gx_transfer_map_s*** %pmap, align 8, !tbaa !4
  %168 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %167, align 8, !tbaa !4
  %rc326 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %168, i32 0, i32 0
  %memory327 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc326, i32 0, i32 1
  %169 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory327, align 8, !tbaa !323
  %170 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %cmp328 = icmp ne %struct.gs_memory_s* %169, %170
  br i1 %cmp328, label %if.then.329, label %if.end.368

if.then.329:                                      ; preds = %lor.lhs.false.325, %lor.lhs.false.321, %do.body.319
  %171 = bitcast %struct.gx_transfer_map_s** %new330 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %171) #1
  br label %do.body.331

do.body.331:                                      ; preds = %if.then.329
  %172 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %procs332 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %172, i32 0, i32 1
  %alloc_struct333 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs332, i32 0, i32 8
  %173 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct333, align 8, !tbaa !324
  %174 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %175 = load i8*, i8** %cname, align 8, !tbaa !4
  %call334 = call i8* %173(%struct.gs_memory_s* %174, %struct.gs_memory_struct_type_s* @st_transfer_map, i8* %175) #6
  %176 = bitcast i8* %call334 to %struct.gx_transfer_map_s*
  store %struct.gx_transfer_map_s* %176, %struct.gx_transfer_map_s** %new330, align 8, !tbaa !4
  %cmp335 = icmp eq %struct.gx_transfer_map_s* %176, null
  br i1 %cmp335, label %if.then.336, label %if.else.337

if.then.336:                                      ; preds = %do.body.331
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.365

if.else.337:                                      ; preds = %do.body.331
  br label %do.body.338

do.body.338:                                      ; preds = %if.else.337
  %177 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %new330, align 8, !tbaa !4
  %rc339 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %177, i32 0, i32 0
  %ref_count340 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc339, i32 0, i32 0
  store i64 1, i64* %ref_count340, align 8, !tbaa !320
  %178 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %179 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %new330, align 8, !tbaa !4
  %rc341 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %179, i32 0, i32 0
  %memory342 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc341, i32 0, i32 1
  store %struct.gs_memory_s* %178, %struct.gs_memory_s** %memory342, align 8, !tbaa !323
  %180 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %new330, align 8, !tbaa !4
  %rc343 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %180, i32 0, i32 0
  %free344 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc343, i32 0, i32 2
  store void (%struct.gs_memory_s*, i8*, i8*)* @rc_free_struct_only, void (%struct.gs_memory_s*, i8*, i8*)** %free344, align 8, !tbaa !325
  br label %do.body.345

do.body.345:                                      ; preds = %do.body.338
  br label %do.cond.346

do.cond.346:                                      ; preds = %do.body.345
  br label %do.end.347

do.end.347:                                       ; preds = %do.cond.346
  br label %do.cond.348

do.cond.348:                                      ; preds = %do.end.347
  br label %do.end.349

do.end.349:                                       ; preds = %do.cond.348
  br label %if.end.350

if.end.350:                                       ; preds = %do.end.349
  br label %do.cond.351

do.cond.351:                                      ; preds = %if.end.350
  br label %do.end.352

do.end.352:                                       ; preds = %do.cond.351
  %181 = load %struct.gx_transfer_map_s**, %struct.gx_transfer_map_s*** %pmap, align 8, !tbaa !4
  %182 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %181, align 8, !tbaa !4
  %tobool353 = icmp ne %struct.gx_transfer_map_s* %182, null
  br i1 %tobool353, label %if.then.354, label %if.end.364

if.then.354:                                      ; preds = %do.end.352
  br label %do.body.355

do.body.355:                                      ; preds = %if.then.354
  br label %do.body.356

do.body.356:                                      ; preds = %do.body.355
  br label %do.cond.357

do.cond.357:                                      ; preds = %do.body.356
  br label %do.end.358

do.end.358:                                       ; preds = %do.cond.357
  %183 = load %struct.gx_transfer_map_s**, %struct.gx_transfer_map_s*** %pmap, align 8, !tbaa !4
  %184 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %183, align 8, !tbaa !4
  %rc359 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %184, i32 0, i32 0
  %ref_count360 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc359, i32 0, i32 0
  %185 = load i64, i64* %ref_count360, align 8, !tbaa !320
  %add361 = add nsw i64 %185, -1
  store i64 %add361, i64* %ref_count360, align 8, !tbaa !320
  br label %do.cond.362

do.cond.362:                                      ; preds = %do.end.358
  br label %do.end.363

do.end.363:                                       ; preds = %do.cond.362
  br label %if.end.364

if.end.364:                                       ; preds = %do.end.363, %do.end.352
  %186 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %new330, align 8, !tbaa !4
  %187 = load %struct.gx_transfer_map_s**, %struct.gx_transfer_map_s*** %pmap, align 8, !tbaa !4
  store %struct.gx_transfer_map_s* %186, %struct.gx_transfer_map_s** %187, align 8, !tbaa !4
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.365

cleanup.365:                                      ; preds = %if.end.364, %if.then.336
  %188 = bitcast %struct.gx_transfer_map_s** %new330 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %188) #1
  %cleanup.dest.366 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.366, label %cleanup.375 [
    i32 0, label %cleanup.cont.367
  ]

cleanup.cont.367:                                 ; preds = %cleanup.365
  br label %if.end.368

if.end.368:                                       ; preds = %cleanup.cont.367, %lor.lhs.false.325
  br label %do.cond.369

do.cond.369:                                      ; preds = %if.end.368
  br label %do.end.370

do.end.370:                                       ; preds = %do.cond.369
  %189 = load %struct.gx_transfer_map_s**, %struct.gx_transfer_map_s*** %pmap, align 8, !tbaa !4
  %190 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %189, align 8, !tbaa !4
  store %struct.gx_transfer_map_s* %190, %struct.gx_transfer_map_s** %map, align 8, !tbaa !4
  %191 = load i32, i32* %cont.addr, align 4, !tbaa !1
  %cmp371 = icmp eq i32 %191, 1
  br i1 %cmp371, label %if.then.372, label %if.end.373

if.then.372:                                      ; preds = %do.end.370
  %192 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %map, align 8, !tbaa !4
  call void @gx_set_identity_transfer(%struct.gx_transfer_map_s* %192) #6
  %193 = load i16**, i16*** %pmdata.addr, align 8, !tbaa !4
  store i16* null, i16** %193, align 8, !tbaa !4
  %194 = load i32*, i32** %pcount.addr, align 8, !tbaa !4
  store i32 0, i32* %194, align 4, !tbaa !6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.375

if.end.373:                                       ; preds = %do.end.370
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %195 = load i16**, i16*** %pmdata.addr, align 8, !tbaa !4
  store i16* null, i16** %195, align 8, !tbaa !4
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.375

sw.epilog:                                        ; preds = %if.end.373, %if.end.273
  %196 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %map, align 8, !tbaa !4
  %proc = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %196, i32 0, i32 1
  %proc374 = bitcast {}** %proc to float (double, %struct.gx_transfer_map_s*)**
  store float (double, %struct.gx_transfer_map_s*)* @gs_mapped_transfer, float (double, %struct.gx_transfer_map_s*)** %proc374, align 8, !tbaa !332
  %197 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %map, align 8, !tbaa !4
  %values = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %197, i32 0, i32 4
  %arraydecay = getelementptr inbounds [256 x i16], [256 x i16]* %values, i32 0, i32 0
  %198 = load i16**, i16*** %pmdata.addr, align 8, !tbaa !4
  store i16* %arraydecay, i16** %198, align 8, !tbaa !4
  %199 = load i32*, i32** %pcount.addr, align 8, !tbaa !4
  store i32 512, i32* %199, align 4, !tbaa !6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.375

cleanup.375:                                      ; preds = %sw.epilog, %sw.default, %if.then.372, %cleanup.365, %do.end.317, %if.then.272, %cleanup.265, %cleanup
  %200 = bitcast i8** %cname to i8*
  call void @llvm.lifetime.end(i64 8, i8* %200) #1
  %201 = bitcast %struct.gx_transfer_map_s*** %pmap to i8*
  call void @llvm.lifetime.end(i64 8, i8* %201) #1
  %202 = bitcast %struct.gx_transfer_map_s** %map to i8*
  call void @llvm.lifetime.end(i64 8, i8* %202) #1
  %203 = load i32, i32* %retval
  ret i32 %203
}

declare void @gx_imager_set_effective_xfer(%struct.gs_imager_state_s*) #3

declare void @rc_free_struct_only(%struct.gs_memory_s*, i8*, i8*) #3

declare void @gx_set_identity_transfer(%struct.gx_transfer_map_s*) #3

declare float @gs_mapped_transfer(double, %struct.gx_transfer_map_s*) #3

; Function Attrs: nounwind uwtable
define internal i32 @apply_create_compositor(%struct.gx_device_clist_reader_s* %cdev, %struct.gs_imager_state_s* %pis, %struct.gs_memory_s* %mem, %struct.gs_composite_s* %pcomp, i32 %x0, i32 %y0, %struct.gx_device_s** %ptarget) #0 {
entry:
  %retval = alloca i32, align 4
  %cdev.addr = alloca %struct.gx_device_clist_reader_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pcomp.addr = alloca %struct.gs_composite_s*, align 8
  %x0.addr = alloca i32, align 4
  %y0.addr = alloca i32, align 4
  %ptarget.addr = alloca %struct.gx_device_s**, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_clist_reader_s* %cdev, %struct.gx_device_clist_reader_s** %cdev.addr, align 8, !tbaa !4
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !4
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  store %struct.gs_composite_s* %pcomp, %struct.gs_composite_s** %pcomp.addr, align 8, !tbaa !4
  store i32 %x0, i32* %x0.addr, align 4, !tbaa !6
  store i32 %y0, i32* %y0.addr, align 4, !tbaa !6
  store %struct.gx_device_s** %ptarget, %struct.gx_device_s*** %ptarget.addr, align 8, !tbaa !4
  %0 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s**, %struct.gx_device_s*** %ptarget.addr, align 8, !tbaa !4
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %1, align 8, !tbaa !4
  store %struct.gx_device_s* %2, %struct.gx_device_s** %tdev, align 8, !tbaa !4
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcomp.addr, align 8, !tbaa !4
  %type = getelementptr inbounds %struct.gs_composite_s, %struct.gs_composite_s* %4, i32 0, i32 0
  %5 = load %struct.gs_composite_type_s*, %struct.gs_composite_type_s** %type, align 8, !tbaa !173
  %procs = getelementptr inbounds %struct.gs_composite_type_s, %struct.gs_composite_type_s* %5, i32 0, i32 1
  %adjust_ctm = getelementptr inbounds %struct.gs_composite_type_procs_s, %struct.gs_composite_type_procs_s* %procs, i32 0, i32 4
  %6 = load i32 (%struct.gs_composite_s*, i32, i32, %struct.gs_imager_state_s*)*, i32 (%struct.gs_composite_s*, i32, i32, %struct.gs_imager_state_s*)** %adjust_ctm, align 8, !tbaa !302
  %7 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcomp.addr, align 8, !tbaa !4
  %8 = load i32, i32* %x0.addr, align 4, !tbaa !6
  %9 = load i32, i32* %y0.addr, align 4, !tbaa !6
  %10 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !4
  %call = call i32 %6(%struct.gs_composite_s* %7, i32 %8, i32 %9, %struct.gs_imager_state_s* %10) #6
  store i32 %call, i32* %code, align 4, !tbaa !6
  %11 = load i32, i32* %code, align 4, !tbaa !6
  %cmp = icmp slt i32 %11, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load i32, i32* %code, align 4, !tbaa !6
  store i32 %12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !4
  %procs1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %13, i32 0, i32 42
  %create_compositor = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs1, i32 0, i32 40
  %14 = load i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)** %create_compositor, align 8, !tbaa !333
  %15 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !4
  %16 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcomp.addr, align 8, !tbaa !4
  %17 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !4
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %19 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %cdev.addr, align 8, !tbaa !4
  %20 = bitcast %struct.gx_device_clist_reader_s* %19 to %struct.gx_device_s*
  %call2 = call i32 %14(%struct.gx_device_s* %15, %struct.gx_device_s** %tdev, %struct.gs_composite_s* %16, %struct.gs_imager_state_s* %17, %struct.gs_memory_s* %18, %struct.gx_device_s* %20) #6
  store i32 %call2, i32* %code, align 4, !tbaa !6
  %21 = load i32, i32* %code, align 4, !tbaa !6
  %cmp3 = icmp sge i32 %21, 0
  br i1 %cmp3, label %land.lhs.true, label %if.end.9

land.lhs.true:                                    ; preds = %if.end
  %22 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !4
  %23 = load %struct.gx_device_s**, %struct.gx_device_s*** %ptarget.addr, align 8, !tbaa !4
  %24 = load %struct.gx_device_s*, %struct.gx_device_s** %23, align 8, !tbaa !4
  %cmp4 = icmp ne %struct.gx_device_s* %22, %24
  br i1 %cmp4, label %if.then.5, label %if.end.9

if.then.5:                                        ; preds = %land.lhs.true
  %25 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !4
  %rc = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %25, i32 0, i32 7
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %26 = load i64, i64* %ref_count, align 8, !tbaa !229
  %cmp6 = icmp eq i64 %26, 1
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.then.5
  %27 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !4
  %28 = load %struct.gx_device_s**, %struct.gx_device_s*** %ptarget.addr, align 8, !tbaa !4
  store %struct.gx_device_s* %27, %struct.gx_device_s** %28, align 8, !tbaa !4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.then.5
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %land.lhs.true, %if.end
  %29 = load i32, i32* %code, align 4, !tbaa !6
  %cmp10 = icmp slt i32 %29, 0
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.9
  %30 = load i32, i32* %code, align 4, !tbaa !6
  store i32 %30, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.end.9
  %31 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcomp.addr, align 8, !tbaa !4
  %type13 = getelementptr inbounds %struct.gs_composite_s, %struct.gs_composite_s* %31, i32 0, i32 0
  %32 = load %struct.gs_composite_type_s*, %struct.gs_composite_type_s** %type13, align 8, !tbaa !173
  %procs14 = getelementptr inbounds %struct.gs_composite_type_s, %struct.gs_composite_type_s* %32, i32 0, i32 1
  %clist_compositor_read_update = getelementptr inbounds %struct.gs_composite_type_procs_s, %struct.gs_composite_type_procs_s* %procs14, i32 0, i32 8
  %33 = load i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)** %clist_compositor_read_update, align 8, !tbaa !334
  %34 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcomp.addr, align 8, !tbaa !4
  %35 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %cdev.addr, align 8, !tbaa !4
  %36 = bitcast %struct.gx_device_clist_reader_s* %35 to %struct.gx_device_s*
  %37 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !4
  %38 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !4
  %39 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %call15 = call i32 %33(%struct.gs_composite_s* %34, %struct.gx_device_s* %36, %struct.gx_device_s* %37, %struct.gs_imager_state_s* %38, %struct.gs_memory_s* %39) #6
  store i32 %call15, i32* %code, align 4, !tbaa !6
  %40 = load i32, i32* %code, align 4, !tbaa !6
  %cmp16 = icmp slt i32 %40, 0
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.12
  %41 = load i32, i32* %code, align 4, !tbaa !6
  store i32 %41, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %if.end.12
  %42 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %procs19 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %42, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs19, i32 0, i32 2
  %43 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !172
  %44 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %45 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcomp.addr, align 8, !tbaa !4
  %46 = bitcast %struct.gs_composite_s* %45 to i8*
  call void %43(%struct.gs_memory_s* %44, i8* %46, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0)) #6
  %47 = load i32, i32* %code, align 4, !tbaa !6
  store i32 %47, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.18, %if.then.17, %if.then.11, %if.then
  %48 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #1
  %49 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #1
  %50 = load i32, i32* %retval
  ret i32 %50
}

declare void @bits_replicate_horizontally(i8*, i32, i32, i32, i32, i32) #3

declare void @bits_replicate_vertically(i8*, i32, i32, i32) #3

declare i32 @gx_ht_read_and_install(%struct.gs_imager_state_s*, %struct.gx_device_s*, i8*, i32, %struct.gs_memory_s*) #3

; Function Attrs: nounwind readnone
declare double @fabs(double) #5

declare i32 @gx_set_miter_limit(%struct.gx_line_params_s*, double) #3

declare %struct.gs_color_space_s* @gs_cspace_new_DeviceRGB(%struct.gs_memory_s*) #3

declare %struct.gs_color_space_s* @gs_cspace_new_DeviceCMYK(%struct.gs_memory_s*) #3

declare i32 @gs_cspace_build_ICC(%struct.gs_color_space_s**, i8*, %struct.gs_memory_s*) #3

declare %struct.cmm_profile_s* @gsicc_profile_new(%struct.stream_s*, %struct.gs_memory_s*, i8*, i32) #3

declare i32 @gs_throw_imp(i8*, i8*, i32, i32, i32, i8*, ...) #3

declare i32 @gsicc_set_gscs_profile(%struct.gs_color_space_s*, %struct.cmm_profile_s*, %struct.gs_memory_s*) #3

declare %struct.gs_color_space_s* @gs_cspace_alloc(%struct.gs_memory_s*, %struct.gs_color_space_type_s*) #3

declare i32 @gs_color_space_num_components(%struct.gs_color_space_s*) #3

declare i32 @alloc_indexed_map(%struct.gs_indexed_map_s**, i32, %struct.gs_memory_s*, i8*) #3

declare i32 @lookup_indexed_map(%struct.gs_color_space_s*, i32, float*) #3

declare void @rc_decrement_only_cs(%struct.gs_color_space_s*, i8*) #3

declare void @s_init(%struct.stream_s*, %struct.gs_memory_s*) #3

declare void @sread_string(%struct.stream_s*, i8*, i32) #3

declare void @gs_c_param_list_write(%struct.gs_c_param_list_s*, %struct.gs_memory_s*) #3

declare i32 @gs_param_list_unserialize(%struct.gs_param_list_s*, i8*) #3

declare void @gs_c_param_list_read(%struct.gs_c_param_list_s*) #3

declare i32 @gs_imager_putdeviceparams(%struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_param_list_s*) #3

declare void @gs_c_param_list_release(%struct.gs_c_param_list_s*) #3

declare %struct.gs_composite_type_s* @gs_find_compositor(i32) #3

; Function Attrs: nounwind uwtable
define internal i32 @cmd_create_dev_ht(%struct.gx_device_halftone_s** %ppdht, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %ppdht.addr = alloca %struct.gx_device_halftone_s**, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pdht = alloca %struct.gx_device_halftone_s*, align 8
  %rc = alloca %struct.rc_header_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_halftone_s** %ppdht, %struct.gx_device_halftone_s*** %ppdht.addr, align 8, !tbaa !4
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %0 = bitcast %struct.gx_device_halftone_s** %pdht to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_halftone_s**, %struct.gx_device_halftone_s*** %ppdht.addr, align 8, !tbaa !4
  %2 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %1, align 8, !tbaa !4
  store %struct.gx_device_halftone_s* %2, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !4
  %3 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !4
  %cmp = icmp eq %struct.gx_device_halftone_s* %3, null
  br i1 %cmp, label %if.then, label %if.end.15

if.then:                                          ; preds = %entry
  %4 = bitcast %struct.rc_header_s* %rc to i8*
  call void @llvm.lifetime.start(i64 24, i8* %4) #1
  br label %do.body

do.body:                                          ; preds = %if.then
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %5, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %6 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !324
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %call = call i8* %6(%struct.gs_memory_s* %7, %struct.gs_memory_struct_type_s* @st_device_halftone, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.30, i32 0, i32 0)) #6
  %8 = bitcast i8* %call to %struct.gx_device_halftone_s*
  store %struct.gx_device_halftone_s* %8, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !4
  %cmp1 = icmp eq %struct.gx_device_halftone_s* %8, null
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %do.body
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body
  br label %do.body.3

do.body.3:                                        ; preds = %if.else
  %9 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !4
  %rc4 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %9, i32 0, i32 1
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc4, i32 0, i32 0
  store i64 1, i64* %ref_count, align 8, !tbaa !335
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !4
  %11 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !4
  %rc5 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %11, i32 0, i32 1
  %memory = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc5, i32 0, i32 1
  store %struct.gs_memory_s* %10, %struct.gs_memory_s** %memory, align 8, !tbaa !336
  %12 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !4
  %rc6 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %12, i32 0, i32 1
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc6, i32 0, i32 2
  store void (%struct.gs_memory_s*, i8*, i8*)* @rc_free_struct_only, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !337
  br label %do.body.7

do.body.7:                                        ; preds = %do.body.3
  br label %do.cond

do.cond:                                          ; preds = %do.body.7
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.cond.8

do.cond.8:                                        ; preds = %do.end
  br label %do.end.9

do.end.9:                                         ; preds = %do.cond.8
  br label %if.end

if.end:                                           ; preds = %do.end.9
  br label %do.cond.10

do.cond.10:                                       ; preds = %if.end
  br label %do.end.11

do.end.11:                                        ; preds = %do.cond.10
  %13 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !4
  %rc12 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %13, i32 0, i32 1
  %14 = bitcast %struct.rc_header_s* %rc to i8*
  %15 = bitcast %struct.rc_header_s* %rc12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 24, i32 8, i1 false), !tbaa.struct !338
  %16 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !4
  %17 = bitcast %struct.gx_device_halftone_s* %16 to i8*
  %call13 = call i8* @memset(i8* %17, i32 0, i64 224) #7
  %18 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !4
  %rc14 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %18, i32 0, i32 1
  %19 = bitcast %struct.rc_header_s* %rc14 to i8*
  %20 = bitcast %struct.rc_header_s* %rc to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 24, i32 8, i1 false), !tbaa.struct !338
  %21 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !4
  %22 = load %struct.gx_device_halftone_s**, %struct.gx_device_halftone_s*** %ppdht.addr, align 8, !tbaa !4
  store %struct.gx_device_halftone_s* %21, %struct.gx_device_halftone_s** %22, align 8, !tbaa !4
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.11, %if.then.2
  %23 = bitcast %struct.rc_header_s* %rc to i8*
  call void @llvm.lifetime.end(i64 24, i8* %23) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.16 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.15

if.end.15:                                        ; preds = %cleanup.cont, %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.16

cleanup.16:                                       ; preds = %if.end.15, %cleanup
  %24 = bitcast %struct.gx_device_halftone_s** %pdht to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = load i32, i32* %retval
  ret i32 %25
}

declare void @gx_ht_order_release(%struct.gx_ht_order_s*, %struct.gs_memory_s*, i32) #3

declare i32 @gx_path_add_point(%struct.gx_path_s*, i32, i32) #3

declare i32 @gx_path_add_line_notes(%struct.gx_path_s*, i32, i32, i32) #3

declare i32 @gx_path_add_gap_notes(%struct.gx_path_s*, i32, i32, i32) #3

declare i32 @gx_path_add_curve_notes(%struct.gx_path_s*, i32, i32, i32, i32, i32, i32, i32) #3

declare i32 @gx_path_close_subpath_notes(%struct.gx_path_s*, i32) #3

declare i32 @gx_path_current_point(%struct.gx_path_s*, %struct.gs_fixed_point_s*) #3

declare i32 @gx_path_new(%struct.gx_path_s*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin }
attributes #7 = { nobuiltin nounwind }
attributes #8 = { nobuiltin nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"omnipotent char", !3, i64 0}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!5, !5, i64 0}
!5 = !{!"any pointer", !2, i64 0}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !2, i64 0}
!8 = !{!9, !5, i64 64}
!9 = !{!"gs_memory_s", !5, i64 0, !10, i64 8, !5, i64 192, !5, i64 200, !5, i64 208}
!10 = !{!"gs_memory_procs_s", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !5, i64 96, !5, i64 104, !5, i64 112, !5, i64 120, !5, i64 128, !5, i64 136, !5, i64 144, !5, i64 152, !5, i64 160, !5, i64 168, !5, i64 176}
!11 = !{!12, !5, i64 0}
!12 = !{!"command_buf_s", !5, i64 0, !7, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !7, i64 48}
!13 = !{!12, !7, i64 8}
!14 = !{!12, !5, i64 40}
!15 = !{!12, !7, i64 48}
!16 = !{!12, !5, i64 32}
!17 = !{!18, !5, i64 0}
!18 = !{!"patch_fill_state_s", !5, i64 0, !5, i64 8, !5, i64 16, !7, i64 24, !2, i64 28, !5, i64 288, !5, i64 296, !5, i64 304, !19, i64 312, !5, i64 328, !7, i64 336, !7, i64 340, !7, i64 344, !7, i64 348, !5, i64 352, !5, i64 360, !7, i64 368, !7, i64 372, !21, i64 376, !7, i64 640, !7, i64 644, !23, i64 648, !7, i64 656, !7, i64 660, !7, i64 664, !7, i64 668, !7, i64 672, !7, i64 676, !7, i64 680, !5, i64 688, !5, i64 696, !5, i64 704, !5, i64 712, !5, i64 720}
!19 = !{!"gs_fixed_rect_s", !20, i64 0, !20, i64 8}
!20 = !{!"gs_fixed_point_s", !7, i64 0, !7, i64 4}
!21 = !{!"gs_client_color_s", !5, i64 0, !22, i64 8}
!22 = !{!"gs_paint_color_s", !2, i64 0}
!23 = !{!"double", !2, i64 0}
!24 = !{!20, !7, i64 4}
!25 = !{!20, !7, i64 0}
!26 = !{i64 0, i64 16, !1, i64 16, i64 8, !4, i64 24, i64 8, !27, i64 24, i64 16, !1, i64 40, i64 4, !6, i64 44, i64 4, !6, i64 24, i64 64, !1, i64 88, i64 256, !1, i64 344, i64 2, !29, i64 24, i64 128, !1, i64 24, i64 8, !27, i64 32, i64 4, !6, i64 36, i64 4, !6, i64 24, i64 8, !27, i64 32, i64 4, !6, i64 352, i64 4, !6, i64 356, i64 4, !6, i64 360, i64 4, !6, i64 368, i64 8, !27, i64 376, i64 8, !27, i64 384, i64 4, !6, i64 388, i64 4, !6, i64 392, i64 16, !1, i64 408, i64 1312, !1, i64 1720, i64 4, !6, i64 1724, i64 4, !6, i64 1728, i64 4, !6, i64 1732, i64 4, !6, i64 1736, i64 4, !6, i64 1740, i64 2, !29, i64 1742, i64 2, !29, i64 1744, i64 4, !6, i64 1748, i64 4, !6, i64 1752, i64 4, !6, i64 1760, i64 8, !4, i64 1768, i64 8, !4, i64 1776, i64 8, !27, i64 1784, i64 4, !6, i64 1788, i64 4, !6, i64 1792, i64 4, !6, i64 1796, i64 4, !6, i64 1800, i64 4, !6}
!27 = !{!28, !28, i64 0}
!28 = !{!"long", !2, i64 0}
!29 = !{!30, !30, i64 0}
!30 = !{!"short", !2, i64 0}
!31 = !{!32, !28, i64 24}
!32 = !{!"gx_strip_bitmap_s", !5, i64 0, !7, i64 8, !33, i64 12, !28, i64 24, !30, i64 32, !30, i64 34, !30, i64 36, !30, i64 38, !7, i64 40}
!33 = !{!"gs_int_point_s", !7, i64 0, !7, i64 4}
!34 = !{!32, !30, i64 36}
!35 = !{!32, !30, i64 38}
!36 = !{!32, !7, i64 16}
!37 = !{!32, !7, i64 12}
!38 = !{!32, !7, i64 40}
!39 = !{!33, !7, i64 0}
!40 = !{!33, !7, i64 4}
!41 = !{!19, !7, i64 0}
!42 = !{!19, !7, i64 4}
!43 = !{!44, !7, i64 832}
!44 = !{!"gx_device_clist_reader_s", !7, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !7, i64 40, !5, i64 48, !45, i64 56, !7, i64 80, !7, i64 84, !7, i64 88, !46, i64 96, !48, i64 816, !7, i64 832, !7, i64 836, !7, i64 840, !7, i64 844, !7, i64 848, !7, i64 852, !2, i64 856, !2, i64 864, !7, i64 880, !2, i64 884, !2, i64 892, !2, i64 900, !2, i64 908, !28, i64 928, !28, i64 936, !7, i64 944, !7, i64 948, !7, i64 952, !7, i64 956, !7, i64 960, !28, i64 968, !28, i64 976, !49, i64 984, !7, i64 1052, !7, i64 1056, !50, i64 1064, !5, i64 1104, !2, i64 1112, !52, i64 1120, !53, i64 1144, !5, i64 1728, !54, i64 1736, !5, i64 1768, !5, i64 1776, !7, i64 1784, !51, i64 1792, !7, i64 1808, !7, i64 1812, !55, i64 1816, !56, i64 1840, !7, i64 1864, !7, i64 1868, !5, i64 1872, !7, i64 1880, !7, i64 1884, !57, i64 1888, !7, i64 10144, !28, i64 10152, !5, i64 10160, !5, i64 10168, !7, i64 10176, !5, i64 10184, !58, i64 10192, !5, i64 10208, !5, i64 10216, !7, i64 10224, !5, i64 10232, !7, i64 10240, !5, i64 10248, !5, i64 10256, !7, i64 10264, !7, i64 10268, !7, i64 10272}
!45 = !{!"rc_header_s", !28, i64 0, !5, i64 8, !5, i64 16}
!46 = !{!"gx_device_color_info_s", !7, i64 0, !7, i64 4, !2, i64 8, !30, i64 12, !2, i64 14, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !47, i64 32, !2, i64 40, !2, i64 44, !2, i64 108, !2, i64 176, !5, i64 688, !2, i64 696, !28, i64 704, !7, i64 712}
!47 = !{!"gx_device_anti_alias_info_s", !7, i64 0, !7, i64 4}
!48 = !{!"gx_device_cached_colors_s", !28, i64 0, !28, i64 8}
!49 = !{!"gx_stroked_gradient_recognizer_s", !7, i64 0, !2, i64 4, !2, i64 36}
!50 = !{!"gdev_space_params_s", !28, i64 0, !28, i64 8, !51, i64 16, !7, i64 32, !2, i64 36}
!51 = !{!"gx_band_params_s", !7, i64 0, !7, i64 4, !28, i64 8}
!52 = !{!"gx_page_device_procs_s", !5, i64 0, !5, i64 8, !5, i64 16}
!53 = !{!"gx_device_procs_s", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !5, i64 96, !5, i64 104, !5, i64 112, !5, i64 120, !5, i64 128, !5, i64 136, !5, i64 144, !5, i64 152, !5, i64 160, !5, i64 168, !5, i64 176, !5, i64 184, !5, i64 192, !5, i64 200, !5, i64 208, !5, i64 216, !5, i64 224, !5, i64 232, !5, i64 240, !5, i64 248, !5, i64 256, !5, i64 264, !5, i64 272, !5, i64 280, !5, i64 288, !5, i64 296, !5, i64 304, !5, i64 312, !5, i64 320, !5, i64 328, !5, i64 336, !5, i64 344, !5, i64 352, !5, i64 360, !5, i64 368, !5, i64 376, !5, i64 384, !5, i64 392, !5, i64 400, !5, i64 408, !5, i64 416, !5, i64 424, !5, i64 432, !5, i64 440, !5, i64 448, !5, i64 456, !5, i64 464, !5, i64 472, !5, i64 480, !5, i64 488, !5, i64 496, !5, i64 504, !5, i64 512, !5, i64 520, !5, i64 528, !5, i64 536, !5, i64 544, !5, i64 552, !5, i64 560, !5, i64 568, !5, i64 576}
!54 = !{!"gx_device_buf_procs_s", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24}
!55 = !{!"gx_bits_cache_chunk_s", !5, i64 0, !5, i64 8, !7, i64 16, !7, i64 20}
!56 = !{!"gx_bits_cache_s", !5, i64 0, !7, i64 8, !7, i64 12, !7, i64 16}
!57 = !{!"gx_band_page_info_s", !2, i64 0, !5, i64 4096, !2, i64 4104, !5, i64 8200, !5, i64 8208, !7, i64 8216, !28, i64 8224, !28, i64 8232, !51, i64 8240}
!58 = !{!"gx_render_plane_s", !7, i64 0, !7, i64 4, !7, i64 8}
!59 = !{!19, !7, i64 8}
!60 = !{!44, !7, i64 836}
!61 = !{!19, !7, i64 12}
!62 = !{!63, !5, i64 1432}
!63 = !{!"gx_device_s", !7, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !7, i64 40, !5, i64 48, !45, i64 56, !7, i64 80, !7, i64 84, !7, i64 88, !46, i64 96, !48, i64 816, !7, i64 832, !7, i64 836, !7, i64 840, !7, i64 844, !7, i64 848, !7, i64 852, !2, i64 856, !2, i64 864, !7, i64 880, !2, i64 884, !2, i64 892, !2, i64 900, !2, i64 908, !28, i64 928, !28, i64 936, !7, i64 944, !7, i64 948, !7, i64 952, !7, i64 956, !7, i64 960, !28, i64 968, !28, i64 976, !49, i64 984, !7, i64 1052, !7, i64 1056, !50, i64 1064, !5, i64 1104, !2, i64 1112, !52, i64 1120, !53, i64 1144}
!64 = !{i64 0, i64 4, !6, i64 8, i64 8, !4, i64 16, i64 8, !4, i64 24, i64 4, !65, i64 28, i64 4, !1, i64 32, i64 4, !1, i64 36, i64 4, !1, i64 40, i64 4, !1, i64 44, i64 4, !6, i64 48, i64 4, !65, i64 52, i64 4, !65, i64 56, i64 4, !65, i64 60, i64 4, !6, i64 64, i64 4, !65, i64 68, i64 4, !65, i64 72, i64 4, !65, i64 76, i64 4, !65, i64 80, i64 4, !65, i64 84, i64 4, !65, i64 88, i64 8, !4, i64 96, i64 4, !6, i64 100, i64 4, !65, i64 104, i64 4, !6, i64 108, i64 4, !65, i64 112, i64 4, !6, i64 116, i64 4, !6, i64 120, i64 4, !65, i64 128, i64 4, !6, i64 132, i64 4, !65, i64 136, i64 4, !65, i64 140, i64 4, !65, i64 144, i64 4, !65, i64 148, i64 4, !65, i64 152, i64 4, !65, i64 156, i64 4, !6, i64 160, i64 4, !6, i64 164, i64 4, !6, i64 168, i64 4, !6, i64 176, i64 8, !67, i64 184, i64 8, !67, i64 192, i64 8, !67, i64 200, i64 8, !67, i64 208, i64 4, !6, i64 212, i64 4, !6, i64 216, i64 2, !29, i64 220, i64 4, !1, i64 224, i64 4, !65, i64 228, i64 4, !65, i64 232, i64 4, !6, i64 236, i64 4, !6, i64 240, i64 8, !27, i64 248, i64 4, !6, i64 252, i64 4, !6, i64 256, i64 4, !6, i64 264, i64 8, !4, i64 272, i64 4, !6, i64 276, i64 4, !6, i64 280, i64 4, !6, i64 284, i64 4, !6, i64 288, i64 4, !6, i64 292, i64 4, !6, i64 296, i64 4, !65, i64 300, i64 4, !6, i64 304, i64 4, !6, i64 308, i64 4, !6, i64 312, i64 4, !6, i64 316, i64 4, !6, i64 320, i64 4, !65, i64 324, i64 4, !6, i64 328, i64 4, !6, i64 336, i64 8, !4, i64 344, i64 8, !4, i64 352, i64 8, !4, i64 360, i64 8, !4, i64 368, i64 8, !4, i64 376, i64 16, !1, i64 392, i64 8, !4, i64 400, i64 8, !4, i64 408, i64 4, !6, i64 416, i64 8, !4, i64 424, i64 8, !4, i64 432, i64 4, !6, i64 440, i64 8, !4, i64 448, i64 4, !6, i64 456, i64 8, !4, i64 464, i64 4, !6, i64 472, i64 8, !4, i64 480, i64 4, !6, i64 488, i64 8, !4, i64 496, i64 512, !1, i64 1008, i64 8, !4, i64 1016, i64 8, !4, i64 1024, i64 4, !6, i64 1028, i64 4, !1, i64 1032, i64 4, !6, i64 1036, i64 4, !6, i64 1040, i64 8, !27, i64 1048, i64 256, !1, i64 1304, i64 8, !4, i64 1312, i64 8, !4, i64 1320, i64 8, !4, i64 1328, i64 8, !4, i64 1336, i64 4, !6, i64 1340, i64 4, !1, i64 1344, i64 4, !6, i64 1348, i64 4, !6, i64 1352, i64 8, !27, i64 1360, i64 256, !1}
!65 = !{!66, !66, i64 0}
!66 = !{!"float", !2, i64 0}
!67 = !{!23, !23, i64 0}
!68 = !{!69, !5, i64 344}
!69 = !{!"gs_imager_state_s", !7, i64 0, !5, i64 8, !5, i64 16, !70, i64 24, !7, i64 128, !73, i64 132, !7, i64 168, !74, i64 176, !74, i64 192, !7, i64 208, !7, i64 212, !30, i64 216, !2, i64 220, !75, i64 224, !75, i64 228, !76, i64 232, !28, i64 240, !7, i64 248, !7, i64 252, !7, i64 256, !5, i64 264, !7, i64 272, !7, i64 276, !7, i64 280, !7, i64 284, !7, i64 288, !7, i64 292, !66, i64 296, !20, i64 300, !7, i64 308, !7, i64 312, !7, i64 316, !66, i64 320, !7, i64 324, !7, i64 328, !5, i64 336, !5, i64 344, !5, i64 352, !5, i64 360, !5, i64 368, !2, i64 376, !5, i64 392, !5, i64 400, !7, i64 408, !5, i64 416, !5, i64 424, !77, i64 432, !2, i64 496, !5, i64 1008, !5, i64 1016, !78, i64 1024, !5, i64 1304, !5, i64 1312, !5, i64 1320, !5, i64 1328, !78, i64 1336}
!70 = !{!"gx_line_params_s", !66, i64 0, !2, i64 4, !2, i64 8, !2, i64 12, !2, i64 16, !7, i64 20, !66, i64 24, !66, i64 28, !66, i64 32, !7, i64 36, !71, i64 40, !72, i64 64}
!71 = !{!"gs_matrix_s", !66, i64 0, !66, i64 4, !66, i64 8, !66, i64 12, !66, i64 16, !66, i64 20}
!72 = !{!"gx_dash_params_s", !5, i64 0, !7, i64 8, !66, i64 12, !7, i64 16, !66, i64 20, !7, i64 24, !7, i64 28, !66, i64 32}
!73 = !{!"gs_matrix_fixed_s", !66, i64 0, !66, i64 4, !66, i64 8, !66, i64 12, !66, i64 16, !66, i64 20, !7, i64 24, !7, i64 28, !7, i64 32}
!74 = !{!"gs_point_s", !23, i64 0, !23, i64 8}
!75 = !{!"gs_transparency_source_s", !66, i64 0}
!76 = !{!"gs_xstate_trans_flags", !7, i64 0, !7, i64 4}
!77 = !{!"gx_transfer_s", !7, i64 0, !5, i64 8, !7, i64 16, !5, i64 24, !7, i64 32, !5, i64 40, !7, i64 48, !5, i64 56}
!78 = !{!"gs_devicen_color_map_s", !7, i64 0, !2, i64 4, !7, i64 8, !7, i64 12, !28, i64 16, !2, i64 24}
!79 = !{!80, !28, i64 16}
!80 = !{!"gsicc_link_cache_s", !5, i64 0, !7, i64 8, !45, i64 16, !5, i64 40, !5, i64 48, !5, i64 56, !7, i64 64}
!81 = !{!80, !5, i64 32}
!82 = !{!80, !5, i64 24}
!83 = !{!44, !5, i64 10168}
!84 = !{!80, !5, i64 48}
!85 = !{!69, !5, i64 88}
!86 = !{!63, !7, i64 112}
!87 = !{!63, !7, i64 116}
!88 = !{!89, !5, i64 0}
!89 = !{!"gx_device_color_s", !5, i64 0, !2, i64 8, !33, i64 352, !7, i64 360, !21, i64 368, !90, i64 632}
!90 = !{!"_mask", !91, i64 0, !28, i64 8, !5, i64 16}
!91 = !{!"mp_", !7, i64 0, !7, i64 4}
!92 = !{!12, !5, i64 24}
!93 = !{!12, !5, i64 16}
!94 = !{!95, !7, i64 384}
!95 = !{!"gx_clist_state_s", !2, i64 0, !96, i64 16, !7, i64 360, !28, i64 368, !28, i64 376, !33, i64 384, !2, i64 392, !2, i64 408, !97, i64 1720, !7, i64 1736, !30, i64 1740, !30, i64 1742, !7, i64 1744, !7, i64 1748, !7, i64 1752, !98, i64 1760, !99, i64 1776}
!96 = !{!"gx_device_color_saved_s", !5, i64 0, !2, i64 8, !33, i64 336}
!97 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12}
!98 = !{!"cmd_list_s", !5, i64 0, !5, i64 8}
!99 = !{!"gx_colors_usage_s", !28, i64 0, !7, i64 8, !100, i64 12}
!100 = !{!"gs_int_rect_s", !33, i64 0, !33, i64 8}
!101 = !{!95, !7, i64 388}
!102 = !{i64 0, i64 4, !6, i64 4, i64 4, !6, i64 8, i64 2, !29, i64 10, i64 2, !29, i64 12, i64 2, !29, i64 14, i64 2, !29, i64 16, i64 8, !27, i64 24, i64 1, !1, i64 25, i64 1, !1, i64 26, i64 2, !29, i64 28, i64 2, !29, i64 30, i64 2, !29, i64 32, i64 1, !1}
!103 = !{!104, !7, i64 4}
!104 = !{!"", !105, i64 0, !30, i64 8, !30, i64 10, !30, i64 12, !30, i64 14, !28, i64 16, !2, i64 24, !2, i64 25, !30, i64 26, !30, i64 28, !30, i64 30, !2, i64 32}
!105 = !{!"gx_cached_bits_head_s", !7, i64 0, !7, i64 4}
!106 = !{!104, !30, i64 8}
!107 = !{!104, !30, i64 10}
!108 = !{!104, !30, i64 14}
!109 = !{!104, !2, i64 25}
!110 = !{!104, !2, i64 24}
!111 = !{!104, !30, i64 26}
!112 = !{!104, !30, i64 12}
!113 = !{!104, !2, i64 32}
!114 = !{!95, !7, i64 1736}
!115 = !{!95, !30, i64 1740}
!116 = !{!69, !7, i64 212}
!117 = !{!63, !30, i64 108}
!118 = !{!95, !7, i64 1744}
!119 = !{!95, !7, i64 1720}
!120 = !{!95, !7, i64 1728}
!121 = !{!95, !7, i64 1732}
!122 = !{!95, !7, i64 1724}
!123 = !{!63, !7, i64 100}
!124 = !{!125, !5, i64 0}
!125 = !{!"stream_cursor_read_s", !5, i64 0, !5, i64 8, !5, i64 16}
!126 = !{!125, !5, i64 8}
!127 = !{!128, !5, i64 8}
!128 = !{!"stream_cursor_write_s", !5, i64 0, !5, i64 8, !5, i64 16}
!129 = !{!128, !5, i64 16}
!130 = !{!131, !5, i64 16}
!131 = !{!"stream_template_s", !5, i64 0, !5, i64 8, !5, i64 16, !7, i64 24, !7, i64 28, !5, i64 32, !5, i64 40, !5, i64 48}
!132 = !{!131, !5, i64 32}
!133 = !{!95, !7, i64 360}
!134 = !{!44, !5, i64 1824}
!135 = !{!44, !5, i64 1872}
!136 = !{!137, !28, i64 0}
!137 = !{!"", !28, i64 0}
!138 = !{!32, !5, i64 0}
!139 = !{!32, !7, i64 8}
!140 = !{!32, !30, i64 32}
!141 = !{!32, !30, i64 34}
!142 = !{!104, !28, i64 16}
!143 = !{!69, !5, i64 392}
!144 = !{!145, !7, i64 216}
!145 = !{!"gx_device_halftone_s", !146, i64 0, !45, i64 160, !28, i64 184, !2, i64 192, !5, i64 200, !7, i64 208, !7, i64 212, !7, i64 216, !7, i64 220}
!146 = !{!"gx_ht_order_s", !147, i64 0, !30, i64 40, !30, i64 42, !30, i64 44, !30, i64 46, !30, i64 48, !30, i64 50, !7, i64 52, !7, i64 56, !7, i64 60, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !5, i64 96, !5, i64 104, !148, i64 112, !5, i64 144, !7, i64 152}
!147 = !{!"gx_ht_cell_params_s", !30, i64 0, !30, i64 2, !30, i64 4, !30, i64 6, !30, i64 8, !30, i64 10, !28, i64 16, !30, i64 24, !30, i64 26, !7, i64 28, !7, i64 32, !7, i64 36}
!148 = !{!"gx_ht_order_screen_params_s", !71, i64 0, !28, i64 24}
!149 = !{!145, !7, i64 220}
!150 = !{!71, !66, i64 16}
!151 = !{!71, !66, i64 20}
!152 = !{!72, !7, i64 16}
!153 = !{!154, !7, i64 0}
!154 = !{!"_cas", !7, i64 0, !89, i64 8}
!155 = !{i64 0, i64 8, !4, i64 8, i64 8, !27, i64 8, i64 8, !4, i64 16, i64 16, !1, i64 32, i64 4, !6, i64 36, i64 4, !6, i64 40, i64 8, !4, i64 8, i64 8, !4, i64 16, i64 2, !29, i64 18, i64 64, !1, i64 84, i64 256, !1, i64 340, i64 2, !29, i64 344, i64 8, !27, i64 8, i64 8, !4, i64 8, i64 128, !1, i64 352, i64 4, !6, i64 356, i64 4, !6, i64 360, i64 4, !6, i64 368, i64 8, !4, i64 376, i64 256, !1, i64 632, i64 4, !6, i64 636, i64 4, !6, i64 640, i64 8, !27, i64 648, i64 8, !4}
!156 = !{!63, !5, i64 1576}
!157 = !{!100, !7, i64 0}
!158 = !{!100, !7, i64 4}
!159 = !{!160, !7, i64 32}
!160 = !{!"gs_data_image_s", !5, i64 0, !71, i64 8, !7, i64 32, !7, i64 36, !7, i64 40, !2, i64 44, !7, i64 564}
!161 = !{!100, !7, i64 8}
!162 = !{!160, !7, i64 36}
!163 = !{!100, !7, i64 12}
!164 = !{!63, !5, i64 1688}
!165 = !{!63, !5, i64 1440}
!166 = !{!167, !7, i64 44}
!167 = !{!"gx_image_enum_common_s", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !28, i64 32, !7, i64 40, !7, i64 44, !2, i64 48, !2, i64 308}
!168 = !{!169, !7, i64 12}
!169 = !{!"gx_image_plane_s", !5, i64 0, !7, i64 8, !7, i64 12}
!170 = !{!169, !7, i64 8}
!171 = !{!169, !5, i64 0}
!172 = !{!9, !5, i64 24}
!173 = !{!174, !5, i64 0}
!174 = !{!"gs_composite_s", !5, i64 0, !28, i64 8, !7, i64 16, !5, i64 24, !5, i64 32}
!175 = !{!176, !5, i64 48}
!176 = !{!"gs_composite_type_s", !2, i64 0, !177, i64 8}
!177 = !{!"gs_composite_type_procs_s", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72}
!178 = !{!176, !5, i64 56}
!179 = !{!95, !7, i64 1748}
!180 = !{!63, !5, i64 1704}
!181 = !{!182, !5, i64 72}
!182 = !{!"gx_device_color_type_s", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80}
!183 = !{!182, !5, i64 32}
!184 = !{!69, !66, i64 296}
!185 = !{!69, !7, i64 312}
!186 = !{!187, !7, i64 0}
!187 = !{!"gx_fill_params_s", !7, i64 0, !20, i64 4, !66, i64 12}
!188 = !{i64 0, i64 4, !6, i64 4, i64 4, !6}
!189 = !{!187, !66, i64 12}
!190 = !{!63, !5, i64 1336}
!191 = !{!192, !66, i64 0}
!192 = !{!"gx_stroke_params_s", !66, i64 0, !7, i64 4}
!193 = !{!192, !7, i64 4}
!194 = !{!63, !5, i64 1344}
!195 = !{!196, !7, i64 0}
!196 = !{!"gs_fixed_edge_s", !20, i64 0, !20, i64 8}
!197 = !{!196, !7, i64 4}
!198 = !{!196, !7, i64 8}
!199 = !{!196, !7, i64 12}
!200 = !{!63, !7, i64 832}
!201 = !{!63, !7, i64 836}
!202 = !{!203, !5, i64 0}
!203 = !{!"gs_fill_attributes_s", !5, i64 0, !7, i64 8, !5, i64 16, !7, i64 24, !7, i64 28, !7, i64 32, !5, i64 40}
!204 = !{!203, !7, i64 8}
!205 = !{!203, !5, i64 16}
!206 = !{!203, !7, i64 24}
!207 = !{!203, !7, i64 28}
!208 = !{!203, !7, i64 32}
!209 = !{!63, !5, i64 1608}
!210 = !{i64 0, i64 4, !6, i64 4, i64 4, !6, i64 8, i64 4, !6, i64 12, i64 4, !6}
!211 = !{!203, !5, i64 40}
!212 = !{!63, !5, i64 1600}
!213 = !{!63, !5, i64 1632}
!214 = !{!63, !5, i64 1200}
!215 = !{!63, !5, i64 1424}
!216 = !{!63, !5, i64 1696}
!217 = !{!63, !5, i64 1416}
!218 = !{!63, !5, i64 1216}
!219 = !{!63, !5, i64 1672}
!220 = !{!63, !5, i64 1712}
!221 = !{!63, !5, i64 1312}
!222 = !{!63, !5, i64 1224}
!223 = !{!224, !5, i64 16}
!224 = !{!"ht_buff_s", !7, i64 0, !7, i64 4, !5, i64 8, !5, i64 16}
!225 = !{!224, !5, i64 8}
!226 = !{!224, !7, i64 0}
!227 = !{!224, !7, i64 4}
!228 = !{!69, !5, i64 1304}
!229 = !{!63, !28, i64 56}
!230 = !{!63, !5, i64 72}
!231 = !{!63, !5, i64 64}
!232 = !{!63, !7, i64 84}
!233 = !{!63, !5, i64 1176}
!234 = !{!63, !5, i64 24}
!235 = !{!236, !30, i64 152}
!236 = !{!"stream_s", !5, i64 0, !5, i64 8, !5, i64 16, !7, i64 24, !2, i64 28, !2, i64 112, !5, i64 136, !7, i64 144, !7, i64 148, !30, i64 152, !2, i64 154, !2, i64 155, !237, i64 160, !28, i64 176, !238, i64 184, !5, i64 240, !7, i64 248, !7, i64 252, !5, i64 256, !30, i64 264, !30, i64 266, !5, i64 272, !5, i64 280, !7, i64 288, !7, i64 292, !5, i64 296, !5, i64 304, !239, i64 312, !7, i64 328, !28, i64 336, !28, i64 344}
!237 = !{!"gs_string_s", !5, i64 0, !7, i64 8}
!238 = !{!"", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48}
!239 = !{!"gs_const_string_s", !5, i64 0, !7, i64 8}
!240 = !{!236, !5, i64 8}
!241 = !{!145, !7, i64 208}
!242 = !{!145, !5, i64 200}
!243 = !{!244, !5, i64 88}
!244 = !{!"gx_ht_order_component_s", !146, i64 0, !7, i64 160, !7, i64 164}
!245 = !{!145, !5, i64 88}
!246 = !{!9, !5, i64 16}
!247 = !{!9, !5, i64 104}
!248 = !{!97, !7, i64 0}
!249 = !{!97, !7, i64 4}
!250 = !{!97, !7, i64 8}
!251 = !{!97, !7, i64 12}
!252 = !{!69, !2, i64 28}
!253 = !{!69, !2, i64 40}
!254 = !{!69, !2, i64 32}
!255 = !{!69, !2, i64 36}
!256 = !{!69, !7, i64 44}
!257 = !{!69, !7, i64 308}
!258 = !{!70, !66, i64 0}
!259 = !{!69, !2, i64 220}
!260 = !{!69, !7, i64 248}
!261 = !{!69, !7, i64 276}
!262 = !{!69, !7, i64 280}
!263 = !{!69, !7, i64 272}
!264 = !{!69, !7, i64 324}
!265 = !{!44, !5, i64 24}
!266 = !{!267, !2, i64 8}
!267 = !{!"clist_icc_color_s", !28, i64 0, !2, i64 8, !7, i64 12, !2, i64 16, !2, i64 20}
!268 = !{!269, !2, i64 0}
!269 = !{!"cmm_profile_s", !2, i64 0, !2, i64 1, !7, i64 4, !7, i64 8, !2, i64 12, !2, i64 16, !270, i64 20, !28, i64 144, !7, i64 152, !2, i64 156, !7, i64 216, !7, i64 220, !7, i64 224, !271, i64 228, !5, i64 256, !5, i64 264, !5, i64 272, !5, i64 280, !45, i64 288, !7, i64 312, !5, i64 320, !5, i64 328, !5, i64 336}
!270 = !{!"gs_range_icc_s", !2, i64 0}
!271 = !{!"gsicc_rendering_param_s", !2, i64 0, !2, i64 4, !2, i64 8, !2, i64 12, !2, i64 16, !7, i64 20}
!272 = !{!267, !28, i64 0}
!273 = !{!269, !28, i64 144}
!274 = !{!269, !7, i64 152}
!275 = !{!267, !7, i64 12}
!276 = !{!269, !7, i64 4}
!277 = !{!267, !2, i64 16}
!278 = !{!269, !2, i64 12}
!279 = !{!267, !2, i64 20}
!280 = !{!269, !2, i64 16}
!281 = !{!269, !5, i64 264}
!282 = !{!269, !28, i64 288}
!283 = !{!269, !5, i64 304}
!284 = !{!269, !5, i64 296}
!285 = !{!286, !5, i64 40}
!286 = !{!"gs_color_space_s", !5, i64 0, !45, i64 8, !28, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !2, i64 72}
!287 = !{!288, !7, i64 24}
!288 = !{!"gs_indexed_params_s", !7, i64 0, !7, i64 4, !2, i64 8, !7, i64 24}
!289 = !{!239, !5, i64 0}
!290 = !{!239, !7, i64 8}
!291 = !{!288, !7, i64 4}
!292 = !{!293, !5, i64 48}
!293 = !{!"gs_indexed_map_s", !45, i64 0, !2, i64 24, !5, i64 32, !7, i64 40, !5, i64 48}
!294 = !{!9, !5, i64 136}
!295 = !{!288, !7, i64 0}
!296 = !{!297, !5, i64 32}
!297 = !{!"gx_image_type_s", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !7, i64 48}
!298 = !{!176, !5, i64 32}
!299 = !{!174, !5, i64 32}
!300 = !{!174, !5, i64 24}
!301 = !{!174, !7, i64 16}
!302 = !{!176, !5, i64 40}
!303 = !{!304, !5, i64 56}
!304 = !{!"gx_path_s", !305, i64 0, !5, i64 40, !2, i64 48, !5, i64 56, !5, i64 64, !19, i64 72, !5, i64 88, !2, i64 96, !2, i64 97, !2, i64 98, !2, i64 99, !2, i64 100, !7, i64 104, !7, i64 108, !20, i64 112, !5, i64 120}
!305 = !{!"gx_path_segments_s", !45, i64 0, !306, i64 24}
!306 = !{!"psc_", !5, i64 0, !5, i64 8}
!307 = !{!305, !5, i64 24}
!308 = !{!309, !5, i64 8}
!309 = !{!"subpath_s", !5, i64 0, !5, i64 8, !30, i64 16, !30, i64 18, !20, i64 20, !5, i64 32, !7, i64 40, !310, i64 48, !2, i64 88}
!310 = !{!"", !5, i64 0, !5, i64 8, !30, i64 16, !30, i64 18, !20, i64 20, !5, i64 32}
!311 = !{!312, !5, i64 8}
!312 = !{!"segment_s", !5, i64 0, !5, i64 8, !30, i64 16, !30, i64 18, !20, i64 20}
!313 = !{!309, !7, i64 20}
!314 = !{!309, !7, i64 24}
!315 = !{!312, !7, i64 20}
!316 = !{!312, !7, i64 24}
!317 = !{!63, !5, i64 1368}
!318 = !{!63, !5, i64 1376}
!319 = !{!69, !5, i64 488}
!320 = !{!321, !28, i64 0}
!321 = !{!"gx_transfer_map_s", !45, i64 0, !5, i64 24, !322, i64 32, !28, i64 48, !2, i64 56}
!322 = !{!"gs_mapping_closure_s", !5, i64 0, !5, i64 8}
!323 = !{!321, !5, i64 8}
!324 = !{!9, !5, i64 72}
!325 = !{!321, !5, i64 16}
!326 = !{!69, !5, i64 440}
!327 = !{!69, !7, i64 432}
!328 = !{!69, !5, i64 456}
!329 = !{!69, !7, i64 448}
!330 = !{!69, !5, i64 472}
!331 = !{!69, !7, i64 464}
!332 = !{!321, !5, i64 24}
!333 = !{!63, !5, i64 1464}
!334 = !{!176, !5, i64 72}
!335 = !{!145, !28, i64 160}
!336 = !{!145, !5, i64 168}
!337 = !{!145, !5, i64 176}
!338 = !{i64 0, i64 8, !27, i64 8, i64 8, !4, i64 16, i64 8, !4}
