; ModuleID = './gdevpdfg.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct.gs_int_point_s = type { i32, i32 }
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
%struct.gs_device_n_map_s = type { %struct.rc_header_s, i32 (float*, float*, %struct.gs_imager_state_s*, i8*)*, i8*, i32, [64 x float], [64 x i16] }
%struct.gs_device_n_attributes_s = type { %struct.rc_header_s, i64, %struct.gs_color_space_s*, %struct.gs_device_n_attributes_s* }
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
%struct.gs_halftone_s = type { i32, %struct.rc_header_s, %union.anon.7 }
%union.anon.7 = type { %struct.gs_colorscreen_halftone_s }
%struct.gs_colorscreen_halftone_s = type { %union._css }
%union._css = type { [4 x %struct.gs_screen_halftone_s] }
%struct.gs_screen_halftone_s = type { float, float, float (double, double)*, float, float }
%struct.gs_cie_render_s = type { i32, %struct.rc_header_s, i64, i8*, %struct.gs_cie_wb_s, %struct.gs_matrix3_s, %struct.gs_range3_s, %struct.gs_cie_transform_proc3_s, %struct.gs_matrix3_s, %struct.gs_cie_render_proc3_s, %struct.gs_range3_s, %struct.gs_matrix3_s, %struct.gs_cie_render_proc3_s, %struct.gs_range3_s, %struct.gs_cie_render_table_s, %struct.gs_range3_s, %struct.gs_range3_s, %struct.gs_matrix3_s, [3 x float], %struct.gs_matrix3_s, %struct.gs_vector3_s, %struct.gs_vector3_s, %struct.anon.10 }
%struct.gs_cie_wb_s = type { %struct.gs_vector3_s, %struct.gs_vector3_s }
%struct.gs_cie_transform_proc3_s = type { i32 (i32, double, %struct.gs_cie_wbsd_s*, %struct.gs_cie_render_s*, float*)*, i8*, %struct.gs_const_string_s, i8* }
%struct.gs_cie_wbsd_s = type { %struct.anon.9, %struct.anon.9, %struct.anon.9, %struct.anon.9 }
%struct.anon.9 = type { %struct.gs_vector3_s, %struct.gs_vector3_s }
%struct.gs_cie_render_proc3_s = type { [3 x float (double, %struct.gs_cie_render_s*)*] }
%struct.gs_cie_render_table_s = type { %struct.gx_color_lookup_table_s, %struct.gs_cie_render_table_procs_s }
%struct.gx_color_lookup_table_s = type { i32, [4 x i32], i32, %struct.gs_const_string_s* }
%struct.gs_cie_render_table_procs_s = type { [4 x i16 (i8, %struct.gs_cie_render_s*)*] }
%struct.gs_range3_s = type { [3 x %struct.gs_range_s] }
%struct.gs_matrix3_s = type { %struct.gs_vector3_s, %struct.gs_vector3_s, %struct.gs_vector3_s, i32 }
%struct.gs_vector3_s = type { float, float, float }
%struct.anon.10 = type { %struct.gx_cie_vector_cache3_s, [3 x %struct.gx_cie_float_fixed_cache_s], [4 x %union.gx_cie_scalar_cache_s], i32 }
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
%union.gx_device_clist_s = type opaque
%struct.gx_cie_joint_caches_s = type { i64, i64, i32, i32, %struct.rc_header_s, i32 (<2 x float>, float, i16*, float*, %struct.gs_imager_state_s*, %struct.gs_color_space_s*)*, i32, i32, %struct.gx_cie_vector_cache3_s, %struct.gs_cie_wbsd_s, i32, %struct.gx_cie_vector_cache3_s, i32 }
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, {}*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
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
%struct.gx_path_s = type opaque
%struct.gx_fill_params_s = type opaque
%struct.gx_clip_path_s = type opaque
%struct.gx_stroke_params_s = type opaque
%struct.gs_fixed_edge_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_image1_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, i32, i32, i32, [130 x float], i32, i32, i32, %struct.gs_color_space_s*, i32, i32, i32, i32 }
%struct.gx_image_type_s = type { %struct.gs_memory_struct_type_s*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gs_imager_state_s*, %struct.gs_image_common_s*, %struct.gs_int_point_s*)*, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s**)*, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s*)*, void (%struct.gs_image_common_s*, %struct.gs_memory_s*)*, i32 }
%struct.gs_image_common_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s }
%struct.gx_image_enum_common_s = type { %struct.gx_image_type_s*, %struct.gx_image_enum_procs_s*, %struct.gx_device_s*, %struct.gs_memory_s*, i64, i32, i32, [65 x i32], [65 x i32] }
%struct.gx_image_enum_procs_s = type { i32 (%struct.gx_image_enum_common_s*, %struct.gx_image_plane_s*, i32, i32*)*, i32 (%struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_image_enum_common_s*)*, i32 (%struct.gx_image_enum_common_s*, i8*)* }
%struct.gx_image_plane_s = type { i8*, i32, i32 }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_get_bits_params_s = type opaque
%struct.gs_composite_s = type { %struct.gs_composite_type_s*, i64, i32, %struct.gs_composite_s*, %struct.gs_composite_s* }
%struct.gs_composite_type_s = type { i8, %struct.gs_composite_type_procs_s }
%struct.gs_composite_type_procs_s = type { i32 (%struct.gs_composite_s*, %struct.gx_device_s**, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, %struct.gs_composite_s*)*, i32 (%struct.gs_composite_s*, i8*, i32*, %struct.gx_device_clist_writer_s*)*, i32 (%struct.gs_composite_s**, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, i32, i32, %struct.gs_imager_state_s*)*, i32 (%struct.gs_composite_s*, %struct.gs_composite_s**, %struct.gx_device_s*)*, i32 (%struct.gs_composite_s*, i8, i8)*, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, i32*, i32*, i32, i32)* }
%struct.gx_device_clist_writer_s = type opaque
%struct.gs_text_params_s = type { i32, %union.sd_, i32, %struct.gs_point_s, %struct.gs_point_s, %union.s_, float*, float*, i32 }
%union.sd_ = type { i8* }
%union.s_ = type { i64 }
%struct.gs_font_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s }
%struct.gs_notify_list_s = type { %struct.gs_memory_s*, %struct.gs_notify_registration_s* }
%struct.gs_notify_registration_s = type { i32 (i8*, i8*)*, i8*, %struct.gs_notify_registration_s* }
%struct.gs_font_procs_s = type { i32 (%struct.gs_font_dir_s*, %struct.gs_font_s*)*, i32 (%struct.gs_font_dir_s*, %struct.gs_font_s*, %struct.gs_matrix_s*, %struct.gs_font_s**)*, i32 (%struct.gs_font_s*, %struct.gs_point_s*, i32, %struct.gs_font_info_s*)*, i32 (%struct.gs_font_s*, %struct.gs_font_s*, i32)*, i64 (%struct.gs_font_s*, i64, i32)*, i64 (%struct.gs_font_s*, i64, i32)*, i32 (%struct.gs_font_s*, i32*, i32, i64*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)*, i32 (%struct.gs_font_s*, i32, i64, %struct.gs_matrix_s*, %struct.gx_path_s*, double*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_const_string_s*)*, i32 (%struct.gs_text_enum_s*, %struct.gs_font_s*)*, i32 (%struct.gs_text_enum_s*, i64*, i64*)*, i32 (%struct.gs_show_enum_s*, %struct.gs_state_s*, %struct.gs_font_s*, i64, i64)* }
%struct.gs_font_info_s = type { i32, i32, i32, %struct.gs_int_rect_s, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, %struct.gs_const_string_s, %struct.gs_const_string_s, %struct.gs_const_string_s, %struct.gs_const_string_s, i32 }
%struct.gs_glyph_info_s = type { i32, [2 x %struct.gs_point_s], %struct.gs_point_s, %struct.gs_rect_s, i32, i64* }
%struct.gs_text_enum_s = type { %struct.gs_text_params_s, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_procs_s*, %struct.rc_header_s, i8*, %struct.gs_font_s*, i64, i32, %struct.gs_log2_scale_point_s, %struct.cached_fm_pair_s*, i32, i32, %struct.gx_font_stack_s, i32, i32, i32, %struct.gs_point_s, i64, i32, %struct.gs_log2_scale_point_s, %struct.gs_point_s, %struct.gs_text_returned_s }
%struct.gs_text_enum_procs_s = type { i32 (%struct.gs_text_enum_s*, %struct.gs_text_enum_s*)*, i32 (%struct.gs_text_enum_s*)*, i32 (%struct.gs_text_enum_s*)*, i32 (%struct.gs_text_enum_s*, %struct.gs_point_s*)*, i32 (%struct.gs_text_enum_s*, double*, i32)*, i32 (%struct.gs_text_enum_s*)*, void (%struct.gs_text_enum_s*, i8*)* }
%struct.cached_fm_pair_s = type opaque
%struct.gx_font_stack_s = type { i32, [6 x %struct.gx_font_stack_item_s] }
%struct.gx_font_stack_item_s = type { %struct.gs_font_s*, i32 }
%struct.gs_log2_scale_point_s = type { i32, i32 }
%struct.gs_text_returned_s = type { i64, i64, %struct.gs_point_s }
%struct.gs_show_enum_s = type opaque
%struct.gs_font_name_s = type { [48 x i8], i32 }
%struct.gs_transparency_group_params_s = type { %struct.gs_color_space_s*, i32, i32, i32, i32, i32, i32, i32, i64, %struct.cmm_profile_s* }
%struct.gx_transparency_mask_params_s = type { i32, i32, i32, i32, [64 x float], float, i32, i32, i32, i32, [256 x i8], i64, %struct.cmm_profile_s* }
%struct.gx_cm_color_map_procs_s = type { void (%struct.gx_device_s*, i16, i16*)*, void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)*, void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)* }
%struct.gs_pattern1_instance_s = type opaque
%struct.gs_fill_attributes_s = type { %struct.gs_fixed_rect_s*, i32, %struct.gx_device_halftone_s*, i32, i32, i32, %struct.patch_fill_state_s* }
%struct.patch_fill_state_s = type opaque
%struct.gs_devn_params_s = type opaque
%struct.gx_process_page_options_s = type { i32 (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i32, i32, i8**)*, void (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_int_rect_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, i8*)*, i8*, i32 }
%struct.gs_state_s = type opaque
%struct.gs_paint_color_s = type { [64 x float] }
%struct._mask = type { %struct.mp_, i64, %struct.gx_color_tile_s* }
%struct.mp_ = type { i32, i32 }
%struct.gx_device_color_saved_s = type { %struct.gx_device_color_type_s*, %union._svc, %struct.gs_int_point_s }
%union._svc = type { %struct._svbin, [304 x i8] }
%struct._svbin = type { [2 x i64], i32, i32 }
%struct.gx_rop_source_s = type { i8*, i32, i32, i64, [2 x i64], i32, i32 }
%struct.cos_object_procs_s = type { void (%struct.cos_object_s*, i8*)*, i32 (%struct.cos_object_s*, %struct.gx_device_pdf_s*, i64)*, i32 (%struct.cos_object_s*, %struct.cos_object_s*, %struct.gx_device_pdf_s*)*, i32 (%struct.cos_object_s*, %struct.gs_md5_state_s*, i8*, %struct.gx_device_pdf_s*)* }
%struct.cos_object_s = type { %struct.cos_object_procs_s*, i64, %struct.cos_element_s*, %struct.cos_stream_piece_s*, %struct.gx_device_pdf_s*, %struct.pdf_resource_s*, i8, i8, i8, i64, %struct.stream_s*, %struct.gs_md5_state_s, i32, [16 x i8], i32, [16 x i8] }
%struct.cos_element_s = type opaque
%struct.cos_stream_piece_s = type opaque
%struct.gx_device_pdf_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gs_memory_s*, %struct.gx_device_vector_procs_s*, [4096 x i8], %struct._IO_FILE*, %struct.stream_s*, i8*, i32, i32, %struct.gs_imager_state_s, float*, i32, i32, i32, %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s, i64, i64, i32, i32, %struct.gs_point_s, i32, %struct.gx_device_bbox_s*, i64, i64, i32, i32, i32, i32, i32, double, %struct.psdf_distiller_params_s, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.gs_param_float_array_s, %struct.gs_param_float_array_s, i32, i32, i32, i64, i32, i32, %struct.gs_param_string_s, %struct.gs_param_string_s, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, %struct.gs_param_int_array_s, %struct.gs_param_string_s, %struct.gs_param_string_s, i32, i32, i32, %struct.gs_param_string_s, i32, i32, [32 x i8], [32 x i8], [16 x i8], i32, i32, i32, %struct.gs_rect_s, %struct.pdf_page_dsc_info_s, %struct.pdf_page_dsc_info_s, i32, i32, i32, i32, i32, i64, [4 x i64], i32, i64, i64, i32, i32, %struct.pdf_temp_file_s, %struct.pdf_temp_file_s, %struct.pdf_temp_file_s, %struct.pdf_temp_file_s, i64, %struct.cos_dict_s*, %struct.cos_dict_s*, %struct.cos_dict_s*, i64, i32, i32, i64, i32, i64, i64, i32, %struct.pdf_text_data_s*, %struct.pdf_text_rotation_s, %struct.pdf_page_s*, i32, i64, [15 x %struct.pdf_resource_list_s], [5 x %struct.pdf_resource_s*], [2 x %struct.pdf_resource_s*], %struct.pdf_resource_s*, %struct.pdf_resource_s*, i64, %struct.pdf_outline_level_s*, i32, i32, i32, i32, %struct.pdf_article_s*, %struct.cos_dict_s*, %struct.cos_dict_s*, [16 x i8], [2 x i64], %struct.cos_dict_s*, %struct.cos_dict_s*, %struct.cos_array_s*, %struct.cos_array_s*, %struct.pdf_font_cache_elem_s*, %struct.gs_point_s, %struct.gx_path_s*, %struct.cos_array_s*, i32, %struct.cos_dict_s*, %struct.gs_text_enum_s*, %struct.pdf_viewer_state_s*, i32, i32, i32, %struct.pdf_viewer_state_s, i32, i32, i32, %struct.pdf_substream_save_s*, i32, i32, i32, %struct.gs_matrix_s, %struct.cos_dict_s*, i32, i32, i32, %struct.pdf_resource_s*, %struct.pdf_resource_s*, %struct.gs_matrix_fixed_s, i32, %struct.gs_rect_s, i32, i32, i32, %struct.pdf_char_glyph_pairs_s*, i32, i32, i64, i32, i32, i32, %struct.gs_matrix_s, double, %struct.pdf_resource_s*, %struct.gs_const_string_s, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.linearisation_record_s*, i32, i32 }
%struct.gx_device_vector_procs_s = type { i32 (%struct.gx_device_vector_s*)*, i32 (%struct.gx_device_vector_s*, double)*, i32 (%struct.gx_device_vector_s*, i32)*, i32 (%struct.gx_device_vector_s*, i32)*, i32 (%struct.gx_device_vector_s*, double)*, i32 (%struct.gx_device_vector_s*, float*, i32, double)*, i32 (%struct.gx_device_vector_s*, double)*, i32 (%struct.gx_device_vector_s*, i32, i32)*, i32 (%struct.gx_device_vector_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_vector_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_vector_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_vector_s*, %struct.gx_path_s*, i32, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_vector_s*, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_vector_s*, i32)*, i32 (%struct.gx_device_vector_s*, double, double, double, double, i32)*, i32 (%struct.gx_device_vector_s*, double, double, double, double, i32)*, i32 (%struct.gx_device_vector_s*, double, double, double, double, double, double, double, double, i32)*, i32 (%struct.gx_device_vector_s*, double, double, double, double, i32)*, i32 (%struct.gx_device_vector_s*, i32)* }
%struct.gx_device_vector_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gs_memory_s*, %struct.gx_device_vector_procs_s*, [4096 x i8], %struct._IO_FILE*, %struct.stream_s*, i8*, i32, i32, %struct.gs_imager_state_s, float*, i32, i32, i32, %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s, i64, i64, i32, i32, %struct.gs_point_s, i32, %struct.gx_device_bbox_s*, i64, i64 }
%struct.gx_hl_saved_color_s = type { i64, i64, i32, %struct.gs_client_color_s, %struct.gx_device_color_saved_s }
%struct.gx_device_bbox_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, i32, i32, %struct.gx_device_bbox_procs_s, i8*, i32, %struct.gs_fixed_rect_s, i64, i64, i64 }
%struct.gx_device_bbox_procs_s = type { i32 (i8*)*, void (i8*, %struct.gs_fixed_rect_s*)*, void (i8*, i32, i32, i32, i32)*, i32 (i8*, %struct.gs_fixed_rect_s*)* }
%struct.psdf_distiller_params_s = type { i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, %struct.gs_const_string_s, %struct.gs_const_string_s, %struct.gs_const_string_s, %struct.gs_const_string_s, i32, i32, i32, i32, i32, %struct.psdf_image_params_s, i32, i32, %struct.psdf_image_params_s, %struct.psdf_image_params_s, %struct.gs_param_string_array_s, %struct.gs_param_string_array_s, i32, i32, i32, i32, %struct.gs_param_string_s, %struct.gs_param_string_array_s }
%struct.psdf_image_params_s = type { %struct.gs_c_param_list_s*, i32, i32, i32, %struct.gs_c_param_list_s*, i32, float, i32, i32, i8*, i32, i8*, %struct.stream_template_s* }
%struct.gs_c_param_list_s = type { %struct.gs_param_list_procs_s*, %struct.gs_memory_s*, i32, %struct.gs_c_param_s*, %struct.gs_param_list_s*, i32, i32, i32 }
%struct.gs_c_param_s = type opaque
%struct.gs_param_string_array_s = type { %struct.gs_param_string_s*, i32, i32 }
%struct.gs_param_float_array_s = type { float*, i32, i32 }
%struct.gs_param_int_array_s = type { i32*, i32, i32 }
%struct.pdf_page_dsc_info_s = type { i32, i32, %struct.gs_rect_s }
%struct.pdf_temp_file_s = type { [4096 x i8], %struct._IO_FILE*, %struct.stream_s*, i8*, %struct.stream_s* }
%struct.pdf_text_data_s = type opaque
%struct.pdf_text_rotation_s = type { [5 x i64], i32 }
%struct.pdf_page_s = type { %struct.cos_dict_s*, %struct.gs_point_s, i32, i64, [7 x i64], i64, %struct.cos_array_s*, %struct.pdf_text_rotation_s, %struct.pdf_page_dsc_info_s, i32, i32 }
%struct.pdf_resource_list_s = type { [16 x %struct.pdf_resource_s*] }
%struct.pdf_outline_level_s = type { %struct.pdf_outline_node_s, %struct.pdf_outline_node_s, i32 }
%struct.pdf_outline_node_s = type { i64, i64, i64, i64, i64, i32, %struct.cos_dict_s* }
%struct.pdf_article_s = type { %struct.pdf_article_s*, %struct.cos_dict_s*, %struct.pdf_bead_s, %struct.pdf_bead_s }
%struct.pdf_bead_s = type { i64, i64, i64, i64, i64, %struct.gs_rect_s }
%struct.pdf_font_cache_elem_s = type { %struct.pdf_font_cache_elem_s*, i64, i32, i32, %struct.pdf_font_resource_s*, i8*, double*, %struct.gx_device_pdf_s* }
%struct.pdf_font_resource_s = type opaque
%struct.cos_array_s = type { %struct.cos_object_procs_s*, i64, %struct.cos_array_element_s*, %struct.cos_stream_piece_s*, %struct.gx_device_pdf_s*, %struct.pdf_resource_s*, i8, i8, i8, i64, %struct.stream_s*, %struct.gs_md5_state_s, i32, [16 x i8], i32, [16 x i8] }
%struct.cos_array_element_s = type opaque
%struct.pdf_viewer_state_s = type { i32, [4 x i64], float, float, i32, i64, i64, i64, i32, float, float, i32, i32, i32, i32, i32, i32, %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s, %struct.gx_line_params_s, float*, i32, i64 }
%struct.pdf_substream_save_s = type { i32, %struct.pdf_text_state_s*, %struct.gx_path_s*, i64, i32, %struct.stream_s*, %struct.cos_dict_s*, i32, i32, %struct.pdf_resource_s*, %struct.pdf_resource_s*, i32, i32, %struct.pdf_resource_s*, %struct.gs_const_string_s, i32 }
%struct.pdf_text_state_s = type opaque
%struct.cos_dict_s = type { %struct.cos_object_procs_s*, i64, %struct.cos_dict_element_s*, %struct.cos_stream_piece_s*, %struct.gx_device_pdf_s*, %struct.pdf_resource_s*, i8, i8, i8, i64, %struct.stream_s*, %struct.gs_md5_state_s, i32, [16 x i8], i32, [16 x i8] }
%struct.cos_dict_element_s = type opaque
%struct.pdf_char_glyph_pairs_s = type opaque
%struct.linearisation_record_s = type { i32, i32, i32*, i32, i64, i64, i64 }
%struct.pdf_resource_s = type { %struct.pdf_resource_s*, %struct.pdf_resource_s*, i64, i32, i32, [24 x i8], i64, %struct.cos_object_s* }
%struct.gs_md5_state_s = type { [2 x i32], [4 x i32], [64 x i8] }
%struct.pdf_color_space_names_s = type { i8*, i8*, i8*, i8* }
%struct.psdf_set_color_commands_s = type { i8*, i8*, i8*, i8*, i8*, i8* }
%struct.ht_function_s = type { i8*, double (double, double)* }
%struct.cos_value_s = type { i32, %union.vc_ }
%union.vc_ = type { %struct.gs_string_s }
%struct.gs_function_s = type { %struct.gs_function_head_s, %struct.gs_function_params_s }
%struct.gs_function_head_s = type { i32, %struct.gs_function_procs_s }
%struct.gs_function_procs_s = type { i32 (%struct.gs_function_s*, float*, float*)*, i32 (%struct.gs_function_s*, float*, float*, i32*)*, void (%struct.gs_function_s*, %struct.gs_function_info_s*)*, i32 (%struct.gs_function_s*, %struct.gs_param_list_s*)*, i32 (%struct.gs_function_s*, %struct.gs_function_s**, %struct.gs_range_s*, %struct.gs_memory_s*)*, void (%struct.gs_function_params_s*, %struct.gs_memory_s*)*, void (%struct.gs_function_s*, i32, %struct.gs_memory_s*)*, i32 (%struct.gs_function_s*, %struct.stream_s*)* }
%struct.gs_function_info_s = type { %struct.gs_data_source_s*, i64, %struct.gs_function_s**, i32 }
%struct.gs_data_source_s = type { i32 (%struct.gs_data_source_s*, i64, i32, i8*, i8**)*, i32, %union.d_ }
%union.d_ = type { %struct.gs_const_string_s }
%struct.gs_function_params_s = type { i32, float*, i32, float* }
%struct.pdf_color_space_s = type { %struct.pdf_color_space_s*, %struct.pdf_resource_s*, i64, i32, i32, [24 x i8], i64, %struct.cos_object_s*, %struct.gs_range_s*, i32, i8* }
%struct.gs_separation_params_s = type { i64, %struct.gs_device_n_map_s*, i32, i32, i32 (%struct.gs_memory_s*, i64, i8**, i32*)* }
%struct.gs_spot_halftone_s = type { %struct.gs_screen_halftone_s, i32, float (double, %struct.gx_transfer_map_s*)*, %struct.gs_mapping_closure_s }
%struct.gs_threshold_halftone_s = type { i32, i32, %struct.gs_mapping_closure_s, %struct.gs_const_string_s, float (double, %struct.gx_transfer_map_s*)* }
%struct.gs_threshold2_halftone_s = type { i32, i32, %struct.gs_mapping_closure_s, i32, i32, i32, %struct.gs_const_bytestring_s }
%struct.gs_const_bytestring_s = type { i8*, i32, i8* }
%struct.gs_multiple_halftone_s = type { %struct.gs_halftone_component_s*, i32, i32 (%struct.gs_memory_s*, i64, i8**, i32*)* }
%struct.gs_halftone_component_s = type { i32, i32, i32, %union.anon.8 }
%union.anon.8 = type { %struct.gs_threshold2_halftone_s }
%struct.gs_function_Sd_params_s = type { i32, float*, i32, float*, i32, %struct.gs_data_source_s, i32, float*, float*, i32*, double*, i32*, i32*, i32 }
%struct.gs_screen_enum_s = type { %struct.gs_halftone_s, %struct.gx_ht_order_s, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, %struct.gs_state_s* }
%struct.pdf_data_writer_s = type { %struct.psdf_binary_writer_s, i64, i64, %struct.pdf_resource_s*, %struct.gx_device_pdf_s*, i64, i32 }
%struct.psdf_binary_writer_s = type { %struct.gs_memory_s*, %struct.stream_s*, %struct.stream_s*, %struct.gx_device_psdf_s* }
%struct.gx_device_psdf_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gs_memory_s*, %struct.gx_device_vector_procs_s*, [4096 x i8], %struct._IO_FILE*, %struct.stream_s*, i8*, i32, i32, %struct.gs_imager_state_s, float*, i32, i32, i32, %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s, i64, i64, i32, i32, %struct.gs_point_s, i32, %struct.gx_device_bbox_s*, i64, i64, i32, i32, i32, i32, i32, double, %struct.psdf_distiller_params_s }

@.str = private unnamed_addr constant [35 x i8] c"increase graphics state stack size\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"resize graphics state stack, free old stack)\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"free gstate copy dash\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"gstate copy dash\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"q\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"Q\0A\00", align 1
@gx_dc_type_data_pure = external constant %struct.gx_device_color_type_s, align 8
@.str.6 = private unnamed_addr constant [16 x i8] c"pdf_color_space\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"Convert DeviceN\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"convert DeviceN\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"/DeviceN\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"pdf_color_space(DeviceN)\00", align 1
@cos_dict_procs = external constant %struct.cos_object_procs_s, align 8
@.str.11 = private unnamed_addr constant [11 x i8] c"/Colorants\00", align 1
@pdf_color_space_names = external constant %struct.pdf_color_space_names_s, align 8
@.str.12 = private unnamed_addr constant [4 x i8] c"/%s\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"/ColorSpace\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c" %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"%g \00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"/Separation\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"%g\00", align 1
@gx_dc_pattern = external constant %struct.gx_device_color_type_s, align 8
@gx_dc_pure_masked = external constant %struct.gx_device_color_type_s, align 8
@gx_dc_pattern2 = external constant %struct.gx_device_color_type_s, align 8
@.str.19 = private unnamed_addr constant [9 x i8] c"/Pattern\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"pdf_string_to_cos_name\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"/ExtGState\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"/R%ld gs\0A\00", align 1
@pdf_prepare_drawing.bm_names = internal constant [17 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.39, i32 0, i32 0)], align 16
@.str.23 = private unnamed_addr constant [7 x i8] c"Normal\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"Multiply\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"Screen\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"Difference\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"Darken\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"Lighten\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"ColorDodge\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"ColorBurn\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"Exclusion\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"HardLight\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"Overlay\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"SoftLight\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"Luminosity\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"Hue\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"Saturation\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"Color\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"Compatible\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"/BM\00", align 1
@.str.41 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"/HT\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"/TR\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"/BG\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"/UCR\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"[%d %d]\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"/HTP\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"/OPM\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"/SM\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"/TK\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"/OP\00", align 1
@.str.52 = private unnamed_addr constant [4 x i8] c"/op\00", align 1
@psdf_set_fill_color_commands = external constant %struct.psdf_set_color_commands_s, align 8
@.str.53 = private unnamed_addr constant [25 x i8] c"vector free dash pattern\00", align 1
@.str.54 = private unnamed_addr constant [29 x i8] c"vector allocate dash pattern\00", align 1
@pdf_reset_graphics_old.lp_initial = internal constant %struct.gx_line_params_s { float 0.000000e+00, i32 0, i32 0, i32 0, i32 0, i32 -1, float 1.000000e+01, float 0x3FC9FDD380000000, float 0.000000e+00, i32 0, %struct.gs_matrix_s { float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00 }, %struct.gx_dash_params_s { float* null, i32 0, float 0.000000e+00, i32 0, float 0.000000e+00, i32 1, i32 0, float 0.000000e+00 } }, align 8
@.str.55 = private unnamed_addr constant [4 x i8] c" %g\00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"/Type\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"/None\00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c"%ld 0 R\00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"/SMask\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"/AIS\00", align 1
@.str.61 = private unnamed_addr constant [4 x i8] c"/CA\00", align 1
@.str.62 = private unnamed_addr constant [4 x i8] c"/ca\00", align 1
@.str.63 = private unnamed_addr constant [49 x i8] c"<</Type/Halftone/HalftoneType 5/Default %ld 0 R\0A\00", align 1
@.str.64 = private unnamed_addr constant [26 x i8] c"/Red %ld 0 R/Cyan %ld 0 R\00", align 1
@.str.65 = private unnamed_addr constant [31 x i8] c"/Green %ld 0 R/Magenta %ld 0 R\00", align 1
@.str.66 = private unnamed_addr constant [29 x i8] c"/Blue %ld 0 R/Yellow %ld 0 R\00", align 1
@.str.67 = private unnamed_addr constant [28 x i8] c"/Gray %ld 0 R/Black %ld 0 R\00", align 1
@.str.68 = private unnamed_addr constant [4 x i8] c">>\0A\00", align 1
@.str.69 = private unnamed_addr constant [18 x i8] c"/TransferFunction\00", align 1
@ht_functions = internal constant [21 x %struct.ht_function_s] [%struct.ht_function_s { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.74, i32 0, i32 0), double (double, double)* @ht_Round }, %struct.ht_function_s { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.75, i32 0, i32 0), double (double, double)* @ht_Diamond }, %struct.ht_function_s { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.76, i32 0, i32 0), double (double, double)* @ht_Ellipse }, %struct.ht_function_s { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.77, i32 0, i32 0), double (double, double)* @ht_EllipseA }, %struct.ht_function_s { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.78, i32 0, i32 0), double (double, double)* @ht_InvertedEllipseA }, %struct.ht_function_s { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.79, i32 0, i32 0), double (double, double)* @ht_EllipseB }, %struct.ht_function_s { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.80, i32 0, i32 0), double (double, double)* @ht_EllipseC }, %struct.ht_function_s { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.81, i32 0, i32 0), double (double, double)* @ht_InvertedEllipseC }, %struct.ht_function_s { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.82, i32 0, i32 0), double (double, double)* @ht_Line }, %struct.ht_function_s { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.83, i32 0, i32 0), double (double, double)* @ht_LineX }, %struct.ht_function_s { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.84, i32 0, i32 0), double (double, double)* @ht_LineY }, %struct.ht_function_s { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.85, i32 0, i32 0), double (double, double)* @ht_Square }, %struct.ht_function_s { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.86, i32 0, i32 0), double (double, double)* @ht_Cross }, %struct.ht_function_s { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.87, i32 0, i32 0), double (double, double)* @ht_Rhomboid }, %struct.ht_function_s { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.88, i32 0, i32 0), double (double, double)* @ht_DoubleDot }, %struct.ht_function_s { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.89, i32 0, i32 0), double (double, double)* @ht_InvertedDoubleDot }, %struct.ht_function_s { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.90, i32 0, i32 0), double (double, double)* @ht_SimpleDot }, %struct.ht_function_s { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.91, i32 0, i32 0), double (double, double)* @ht_InvertedSimpleDot }, %struct.ht_function_s { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.92, i32 0, i32 0), double (double, double)* @ht_CosineDot }, %struct.ht_function_s { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.93, i32 0, i32 0), double (double, double)* @ht_Double }, %struct.ht_function_s { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.94, i32 0, i32 0), double (double, double)* @ht_InvertedDouble }], align 16
@.str.70 = private unnamed_addr constant [54 x i8] c"<</Type/Halftone/HalftoneType 1/Frequency %g/Angle %g\00", align 1
@.str.71 = private unnamed_addr constant [17 x i8] c"/SpotFunction/%s\00", align 1
@.str.72 = private unnamed_addr constant [22 x i8] c"/SpotFunction %ld 0 R\00", align 1
@.str.73 = private unnamed_addr constant [22 x i8] c"/AccurateScreens true\00", align 1
@.str.74 = private unnamed_addr constant [6 x i8] c"Round\00", align 1
@.str.75 = private unnamed_addr constant [8 x i8] c"Diamond\00", align 1
@.str.76 = private unnamed_addr constant [8 x i8] c"Ellipse\00", align 1
@.str.77 = private unnamed_addr constant [9 x i8] c"EllipseA\00", align 1
@.str.78 = private unnamed_addr constant [17 x i8] c"InvertedEllipseA\00", align 1
@.str.79 = private unnamed_addr constant [9 x i8] c"EllipseB\00", align 1
@.str.80 = private unnamed_addr constant [9 x i8] c"EllipseC\00", align 1
@.str.81 = private unnamed_addr constant [17 x i8] c"InvertedEllipseC\00", align 1
@.str.82 = private unnamed_addr constant [5 x i8] c"Line\00", align 1
@.str.83 = private unnamed_addr constant [6 x i8] c"LineX\00", align 1
@.str.84 = private unnamed_addr constant [6 x i8] c"LineY\00", align 1
@.str.85 = private unnamed_addr constant [7 x i8] c"Square\00", align 1
@.str.86 = private unnamed_addr constant [6 x i8] c"Cross\00", align 1
@.str.87 = private unnamed_addr constant [9 x i8] c"Rhomboid\00", align 1
@.str.88 = private unnamed_addr constant [10 x i8] c"DoubleDot\00", align 1
@.str.89 = private unnamed_addr constant [18 x i8] c"InvertedDoubleDot\00", align 1
@.str.90 = private unnamed_addr constant [10 x i8] c"SimpleDot\00", align 1
@.str.91 = private unnamed_addr constant [18 x i8] c"InvertedSimpleDot\00", align 1
@.str.92 = private unnamed_addr constant [10 x i8] c"CosineDot\00", align 1
@.str.93 = private unnamed_addr constant [7 x i8] c"Double\00", align 1
@.str.94 = private unnamed_addr constant [15 x i8] c"InvertedDouble\00", align 1
@pdf_write_spot_function.domain_spot = internal constant [4 x float] [float -1.000000e+00, float 1.000000e+00, float -1.000000e+00, float 1.000000e+00], align 16
@pdf_write_spot_function.range_spot = internal constant [4 x float] [float -1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00], align 16
@.str.95 = private unnamed_addr constant [24 x i8] c"pdf_write_spot_function\00", align 1
@.str.96 = private unnamed_addr constant [10 x i8] c"/Halftone\00", align 1
@.str.97 = private unnamed_addr constant [14 x i8] c"/HalftoneType\00", align 1
@.str.98 = private unnamed_addr constant [2 x i8] c"6\00", align 1
@.str.99 = private unnamed_addr constant [7 x i8] c"/Width\00", align 1
@.str.100 = private unnamed_addr constant [8 x i8] c"/Height\00", align 1
@.str.101 = private unnamed_addr constant [3 x i8] c"16\00", align 1
@.str.102 = private unnamed_addr constant [8 x i8] c"/Width2\00", align 1
@.str.103 = private unnamed_addr constant [9 x i8] c"/Height2\00", align 1
@.str.104 = private unnamed_addr constant [28 x i8] c"pdf_write_multiple_halftone\00", align 1
@.str.105 = private unnamed_addr constant [33 x i8] c"<</Type/Halftone/HalftoneType 5\0A\00", align 1
@.str.106 = private unnamed_addr constant [10 x i8] c" %ld 0 R\0A\00", align 1
@.str.107 = private unnamed_addr constant [19 x i8] c" /Default %ld 0 R\0A\00", align 1
@.str.108 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.109 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.110 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@pdf_write_transfer_map.domain01 = internal constant [2 x float] [float 0.000000e+00, float 1.000000e+00], align 4
@pdf_write_transfer_map.size = internal constant i32 256, align 4
@.str.111 = private unnamed_addr constant [10 x i8] c"/Identity\00", align 1
@.str.112 = private unnamed_addr constant [12 x i8] c"%s%s%ld 0 R\00", align 1
@.str.113 = private unnamed_addr constant [4 x i8] c"/SA\00", align 1

; Function Attrs: nounwind uwtable
define i32 @pdf_save_viewer_state(%struct.gx_device_pdf_s* %pdev, %struct.stream_s* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %s.addr = alloca %struct.stream_s*, align 8
  %i = alloca i32, align 4
  %new_vgstack = alloca %struct.pdf_viewer_state_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %vgstack_depth = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %1, i32 0, i32 194
  %2 = load i32, i32* %vgstack_depth, align 4, !tbaa !5
  store i32 %2, i32* %i, align 4, !tbaa !49
  %3 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %vgstack_depth1 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %3, i32 0, i32 194
  %4 = load i32, i32* %vgstack_depth1, align 4, !tbaa !5
  %5 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %vgstack_size = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %5, i32 0, i32 193
  %6 = load i32, i32* %vgstack_size, align 4, !tbaa !50
  %cmp = icmp sge i32 %4, %6
  br i1 %cmp, label %if.then, label %if.end.24

if.then:                                          ; preds = %entry
  %7 = bitcast %struct.pdf_viewer_state_s** %new_vgstack to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %8, i32 0, i32 43
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory, align 8, !tbaa !51
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %9, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %10 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !52
  %11 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory2 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %11, i32 0, i32 43
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory2, align 8, !tbaa !51
  %13 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %vgstack_size3 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %13, i32 0, i32 193
  %14 = load i32, i32* %vgstack_size3, align 4, !tbaa !50
  %add = add nsw i32 %14, 5
  %conv = sext i32 %add to i64
  %mul = mul i64 %conv, 1512
  %conv4 = trunc i64 %mul to i32
  %call = call i8* %10(%struct.gs_memory_s* %12, i32 %conv4, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i32 0, i32 0)) #7
  %15 = bitcast i8* %call to %struct.pdf_viewer_state_s*
  store %struct.pdf_viewer_state_s* %15, %struct.pdf_viewer_state_s** %new_vgstack, align 8, !tbaa !1
  %16 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %new_vgstack, align 8, !tbaa !1
  %cmp5 = icmp eq %struct.pdf_viewer_state_s* %16, null
  br i1 %cmp5, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %17 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %new_vgstack, align 8, !tbaa !1
  %18 = bitcast %struct.pdf_viewer_state_s* %17 to i8*
  %19 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %vgstack_size8 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %19, i32 0, i32 193
  %20 = load i32, i32* %vgstack_size8, align 4, !tbaa !50
  %add9 = add nsw i32 %20, 5
  %conv10 = sext i32 %add9 to i64
  %mul11 = mul i64 %conv10, 1512
  %call12 = call i8* @memset(i8* %18, i32 0, i64 %mul11) #8
  %21 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %new_vgstack, align 8, !tbaa !1
  %22 = bitcast %struct.pdf_viewer_state_s* %21 to i8*
  %23 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %vgstack = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %23, i32 0, i32 192
  %24 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %vgstack, align 8, !tbaa !55
  %25 = bitcast %struct.pdf_viewer_state_s* %24 to i8*
  %26 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %vgstack_size13 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %26, i32 0, i32 193
  %27 = load i32, i32* %vgstack_size13, align 4, !tbaa !50
  %conv14 = sext i32 %27 to i64
  %mul15 = mul i64 %conv14, 1512
  %call16 = call i8* @memcpy(i8* %22, i8* %25, i64 %mul15) #8
  %28 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory17 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %28, i32 0, i32 43
  %29 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory17, align 8, !tbaa !51
  %procs18 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %29, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs18, i32 0, i32 2
  %30 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !56
  %31 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory19 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %31, i32 0, i32 43
  %32 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory19, align 8, !tbaa !51
  %33 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %vgstack20 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %33, i32 0, i32 192
  %34 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %vgstack20, align 8, !tbaa !55
  %35 = bitcast %struct.pdf_viewer_state_s* %34 to i8*
  call void %30(%struct.gs_memory_s* %32, i8* %35, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i32 0, i32 0)) #7
  %36 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %new_vgstack, align 8, !tbaa !1
  %37 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %vgstack21 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %37, i32 0, i32 192
  store %struct.pdf_viewer_state_s* %36, %struct.pdf_viewer_state_s** %vgstack21, align 8, !tbaa !55
  %38 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %vgstack_size22 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %38, i32 0, i32 193
  %39 = load i32, i32* %vgstack_size22, align 4, !tbaa !50
  %add23 = add nsw i32 %39, 5
  store i32 %add23, i32* %vgstack_size22, align 4, !tbaa !50
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.7
  %40 = bitcast %struct.pdf_viewer_state_s** %new_vgstack to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.211 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.24

if.end.24:                                        ; preds = %cleanup.cont, %entry
  %41 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %transfer_ids = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %41, i32 0, i32 138
  %arrayidx = getelementptr inbounds [4 x i64], [4 x i64]* %transfer_ids, i32 0, i64 0
  %42 = load i64, i64* %arrayidx, align 8, !tbaa !57
  %43 = load i32, i32* %i, align 4, !tbaa !49
  %idxprom = sext i32 %43 to i64
  %44 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %vgstack25 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %44, i32 0, i32 192
  %45 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %vgstack25, align 8, !tbaa !55
  %arrayidx26 = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %45, i64 %idxprom
  %transfer_ids27 = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %arrayidx26, i32 0, i32 1
  %arrayidx28 = getelementptr inbounds [4 x i64], [4 x i64]* %transfer_ids27, i32 0, i64 0
  store i64 %42, i64* %arrayidx28, align 8, !tbaa !57
  %46 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %transfer_ids29 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %46, i32 0, i32 138
  %arrayidx30 = getelementptr inbounds [4 x i64], [4 x i64]* %transfer_ids29, i32 0, i64 1
  %47 = load i64, i64* %arrayidx30, align 8, !tbaa !57
  %48 = load i32, i32* %i, align 4, !tbaa !49
  %idxprom31 = sext i32 %48 to i64
  %49 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %vgstack32 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %49, i32 0, i32 192
  %50 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %vgstack32, align 8, !tbaa !55
  %arrayidx33 = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %50, i64 %idxprom31
  %transfer_ids34 = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %arrayidx33, i32 0, i32 1
  %arrayidx35 = getelementptr inbounds [4 x i64], [4 x i64]* %transfer_ids34, i32 0, i64 1
  store i64 %47, i64* %arrayidx35, align 8, !tbaa !57
  %51 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %transfer_ids36 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %51, i32 0, i32 138
  %arrayidx37 = getelementptr inbounds [4 x i64], [4 x i64]* %transfer_ids36, i32 0, i64 2
  %52 = load i64, i64* %arrayidx37, align 8, !tbaa !57
  %53 = load i32, i32* %i, align 4, !tbaa !49
  %idxprom38 = sext i32 %53 to i64
  %54 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %vgstack39 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %54, i32 0, i32 192
  %55 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %vgstack39, align 8, !tbaa !55
  %arrayidx40 = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %55, i64 %idxprom38
  %transfer_ids41 = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %arrayidx40, i32 0, i32 1
  %arrayidx42 = getelementptr inbounds [4 x i64], [4 x i64]* %transfer_ids41, i32 0, i64 2
  store i64 %52, i64* %arrayidx42, align 8, !tbaa !57
  %56 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %transfer_ids43 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %56, i32 0, i32 138
  %arrayidx44 = getelementptr inbounds [4 x i64], [4 x i64]* %transfer_ids43, i32 0, i64 3
  %57 = load i64, i64* %arrayidx44, align 8, !tbaa !57
  %58 = load i32, i32* %i, align 4, !tbaa !49
  %idxprom45 = sext i32 %58 to i64
  %59 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %vgstack46 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %59, i32 0, i32 192
  %60 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %vgstack46, align 8, !tbaa !55
  %arrayidx47 = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %60, i64 %idxprom45
  %transfer_ids48 = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %arrayidx47, i32 0, i32 1
  %arrayidx49 = getelementptr inbounds [4 x i64], [4 x i64]* %transfer_ids48, i32 0, i64 3
  store i64 %57, i64* %arrayidx49, align 8, !tbaa !57
  %61 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %transfer_not_identity = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %61, i32 0, i32 139
  %62 = load i32, i32* %transfer_not_identity, align 4, !tbaa !58
  %63 = load i32, i32* %i, align 4, !tbaa !49
  %idxprom50 = sext i32 %63 to i64
  %64 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %vgstack51 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %64, i32 0, i32 192
  %65 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %vgstack51, align 8, !tbaa !55
  %arrayidx52 = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %65, i64 %idxprom50
  %transfer_not_identity53 = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %arrayidx52, i32 0, i32 0
  store i32 %62, i32* %transfer_not_identity53, align 4, !tbaa !59
  %66 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %state = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %66, i32 0, i32 51
  %opacity = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %state, i32 0, i32 13
  %alpha = getelementptr inbounds %struct.gs_transparency_source_s, %struct.gs_transparency_source_s* %opacity, i32 0, i32 0
  %67 = load float, float* %alpha, align 4, !tbaa !60
  %68 = load i32, i32* %i, align 4, !tbaa !49
  %idxprom54 = sext i32 %68 to i64
  %69 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %vgstack55 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %69, i32 0, i32 192
  %70 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %vgstack55, align 8, !tbaa !55
  %arrayidx56 = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %70, i64 %idxprom54
  %opacity_alpha = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %arrayidx56, i32 0, i32 2
  store float %67, float* %opacity_alpha, align 4, !tbaa !61
  %71 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %state57 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %71, i32 0, i32 51
  %shape = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %state57, i32 0, i32 14
  %alpha58 = getelementptr inbounds %struct.gs_transparency_source_s, %struct.gs_transparency_source_s* %shape, i32 0, i32 0
  %72 = load float, float* %alpha58, align 4, !tbaa !62
  %73 = load i32, i32* %i, align 4, !tbaa !49
  %idxprom59 = sext i32 %73 to i64
  %74 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %vgstack60 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %74, i32 0, i32 192
  %75 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %vgstack60, align 8, !tbaa !55
  %arrayidx61 = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %75, i64 %idxprom59
  %shape_alpha = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %arrayidx61, i32 0, i32 3
  store float %72, float* %shape_alpha, align 4, !tbaa !63
  %76 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %state62 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %76, i32 0, i32 51
  %blend_mode = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %state62, i32 0, i32 12
  %77 = load i32, i32* %blend_mode, align 4, !tbaa !64
  %78 = load i32, i32* %i, align 4, !tbaa !49
  %idxprom63 = sext i32 %78 to i64
  %79 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %vgstack64 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %79, i32 0, i32 192
  %80 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %vgstack64, align 8, !tbaa !55
  %arrayidx65 = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %80, i64 %idxprom63
  %blend_mode66 = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %arrayidx65, i32 0, i32 4
  store i32 %77, i32* %blend_mode66, align 4, !tbaa !65
  %81 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %halftone_id = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %81, i32 0, i32 137
  %82 = load i64, i64* %halftone_id, align 8, !tbaa !66
  %83 = load i32, i32* %i, align 4, !tbaa !49
  %idxprom67 = sext i32 %83 to i64
  %84 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %vgstack68 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %84, i32 0, i32 192
  %85 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %vgstack68, align 8, !tbaa !55
  %arrayidx69 = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %85, i64 %idxprom67
  %halftone_id70 = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %arrayidx69, i32 0, i32 5
  store i64 %82, i64* %halftone_id70, align 8, !tbaa !67
  %86 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %black_generation_id = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %86, i32 0, i32 140
  %87 = load i64, i64* %black_generation_id, align 8, !tbaa !68
  %88 = load i32, i32* %i, align 4, !tbaa !49
  %idxprom71 = sext i32 %88 to i64
  %89 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %vgstack72 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %89, i32 0, i32 192
  %90 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %vgstack72, align 8, !tbaa !55
  %arrayidx73 = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %90, i64 %idxprom71
  %black_generation_id74 = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %arrayidx73, i32 0, i32 6
  store i64 %87, i64* %black_generation_id74, align 8, !tbaa !69
  %91 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %undercolor_removal_id = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %91, i32 0, i32 141
  %92 = load i64, i64* %undercolor_removal_id, align 8, !tbaa !70
  %93 = load i32, i32* %i, align 4, !tbaa !49
  %idxprom75 = sext i32 %93 to i64
  %94 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %vgstack76 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %94, i32 0, i32 192
  %95 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %vgstack76, align 8, !tbaa !55
  %arrayidx77 = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %95, i64 %idxprom75
  %undercolor_removal_id78 = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %arrayidx77, i32 0, i32 7
  store i64 %92, i64* %undercolor_removal_id78, align 8, !tbaa !71
  %96 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %overprint_mode = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %96, i32 0, i32 136
  %97 = load i32, i32* %overprint_mode, align 4, !tbaa !72
  %98 = load i32, i32* %i, align 4, !tbaa !49
  %idxprom79 = sext i32 %98 to i64
  %99 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %vgstack80 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %99, i32 0, i32 192
  %100 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %vgstack80, align 8, !tbaa !55
  %arrayidx81 = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %100, i64 %idxprom79
  %overprint_mode82 = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %arrayidx81, i32 0, i32 8
  store i32 %97, i32* %overprint_mode82, align 4, !tbaa !73
  %101 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %state83 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %101, i32 0, i32 51
  %smoothness = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %state83, i32 0, i32 32
  %102 = load float, float* %smoothness, align 4, !tbaa !74
  %103 = load i32, i32* %i, align 4, !tbaa !49
  %idxprom84 = sext i32 %103 to i64
  %104 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %vgstack85 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %104, i32 0, i32 192
  %105 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %vgstack85, align 8, !tbaa !55
  %arrayidx86 = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %105, i64 %idxprom84
  %smoothness87 = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %arrayidx86, i32 0, i32 9
  store float %102, float* %smoothness87, align 4, !tbaa !75
  %106 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %state88 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %106, i32 0, i32 51
  %flatness = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %state88, i32 0, i32 27
  %107 = load float, float* %flatness, align 4, !tbaa !76
  %108 = load i32, i32* %i, align 4, !tbaa !49
  %idxprom89 = sext i32 %108 to i64
  %109 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %vgstack90 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %109, i32 0, i32 192
  %110 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %vgstack90, align 8, !tbaa !55
  %arrayidx91 = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %110, i64 %idxprom89
  %flatness92 = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %arrayidx91, i32 0, i32 10
  store float %107, float* %flatness92, align 4, !tbaa !77
  %111 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %state93 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %111, i32 0, i32 51
  %text_knockout = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %state93, i32 0, i32 17
  %112 = load i32, i32* %text_knockout, align 4, !tbaa !78
  %113 = load i32, i32* %i, align 4, !tbaa !49
  %idxprom94 = sext i32 %113 to i64
  %114 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %vgstack95 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %114, i32 0, i32 192
  %115 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %vgstack95, align 8, !tbaa !55
  %arrayidx96 = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %115, i64 %idxprom94
  %text_knockout97 = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %arrayidx96, i32 0, i32 11
  store i32 %112, i32* %text_knockout97, align 4, !tbaa !79
  %116 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %fill_overprint = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %116, i32 0, i32 132
  %117 = load i32, i32* %fill_overprint, align 4, !tbaa !80
  %118 = load i32, i32* %i, align 4, !tbaa !49
  %idxprom98 = sext i32 %118 to i64
  %119 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %vgstack99 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %119, i32 0, i32 192
  %120 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %vgstack99, align 8, !tbaa !55
  %arrayidx100 = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %120, i64 %idxprom98
  %fill_overprint101 = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %arrayidx100, i32 0, i32 12
  store i32 %117, i32* %fill_overprint101, align 4, !tbaa !81
  %121 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %stroke_overprint = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %121, i32 0, i32 133
  %122 = load i32, i32* %stroke_overprint, align 4, !tbaa !82
  %123 = load i32, i32* %i, align 4, !tbaa !49
  %idxprom102 = sext i32 %123 to i64
  %124 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %vgstack103 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %124, i32 0, i32 192
  %125 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %vgstack103, align 8, !tbaa !55
  %arrayidx104 = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %125, i64 %idxprom102
  %stroke_overprint105 = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %arrayidx104, i32 0, i32 13
  store i32 %122, i32* %stroke_overprint105, align 4, !tbaa !83
  %126 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %state106 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %126, i32 0, i32 51
  %stroke_adjust = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %state106, i32 0, i32 29
  %127 = load i32, i32* %stroke_adjust, align 4, !tbaa !84
  %128 = load i32, i32* %i, align 4, !tbaa !49
  %idxprom107 = sext i32 %128 to i64
  %129 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %vgstack108 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %129, i32 0, i32 192
  %130 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %vgstack108, align 8, !tbaa !55
  %arrayidx109 = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %130, i64 %idxprom107
  %stroke_adjust110 = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %arrayidx109, i32 0, i32 14
  store i32 %127, i32* %stroke_adjust110, align 4, !tbaa !85
  %131 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %fill_used_process_color = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %131, i32 0, i32 54
  %132 = load i32, i32* %fill_used_process_color, align 4, !tbaa !86
  %133 = load i32, i32* %i, align 4, !tbaa !49
  %idxprom111 = sext i32 %133 to i64
  %134 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %vgstack112 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %134, i32 0, i32 192
  %135 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %vgstack112, align 8, !tbaa !55
  %arrayidx113 = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %135, i64 %idxprom111
  %fill_used_process_color114 = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %arrayidx113, i32 0, i32 15
  store i32 %132, i32* %fill_used_process_color114, align 4, !tbaa !87
  %136 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %stroke_used_process_color = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %136, i32 0, i32 55
  %137 = load i32, i32* %stroke_used_process_color, align 4, !tbaa !88
  %138 = load i32, i32* %i, align 4, !tbaa !49
  %idxprom115 = sext i32 %138 to i64
  %139 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %vgstack116 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %139, i32 0, i32 192
  %140 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %vgstack116, align 8, !tbaa !55
  %arrayidx117 = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %140, i64 %idxprom115
  %stroke_used_process_color118 = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %arrayidx117, i32 0, i32 16
  store i32 %137, i32* %stroke_used_process_color118, align 4, !tbaa !89
  %141 = load i32, i32* %i, align 4, !tbaa !49
  %idxprom119 = sext i32 %141 to i64
  %142 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %vgstack120 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %142, i32 0, i32 192
  %143 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %vgstack120, align 8, !tbaa !55
  %arrayidx121 = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %143, i64 %idxprom119
  %saved_fill_color = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %arrayidx121, i32 0, i32 17
  %144 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %saved_fill_color122 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %144, i32 0, i32 56
  %145 = bitcast %struct.gx_hl_saved_color_s* %saved_fill_color to i8*
  %146 = bitcast %struct.gx_hl_saved_color_s* %saved_fill_color122 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %145, i8* %146, i64 632, i32 8, i1 false), !tbaa.struct !90
  %147 = load i32, i32* %i, align 4, !tbaa !49
  %idxprom123 = sext i32 %147 to i64
  %148 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %vgstack124 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %148, i32 0, i32 192
  %149 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %vgstack124, align 8, !tbaa !55
  %arrayidx125 = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %149, i64 %idxprom123
  %saved_stroke_color = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %arrayidx125, i32 0, i32 18
  %150 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %saved_stroke_color126 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %150, i32 0, i32 57
  %151 = bitcast %struct.gx_hl_saved_color_s* %saved_stroke_color to i8*
  %152 = bitcast %struct.gx_hl_saved_color_s* %saved_stroke_color126 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %151, i8* %152, i64 632, i32 8, i1 false), !tbaa.struct !90
  %153 = load i32, i32* %i, align 4, !tbaa !49
  %idxprom127 = sext i32 %153 to i64
  %154 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %vgstack128 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %154, i32 0, i32 192
  %155 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %vgstack128, align 8, !tbaa !55
  %arrayidx129 = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %155, i64 %idxprom127
  %line_params = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %arrayidx129, i32 0, i32 19
  %156 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %state130 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %156, i32 0, i32 51
  %line_params131 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %state130, i32 0, i32 3
  %157 = bitcast %struct.gx_line_params_s* %line_params to i8*
  %158 = bitcast %struct.gx_line_params_s* %line_params131 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %157, i8* %158, i64 104, i32 8, i1 false), !tbaa.struct !93
  %159 = load i32, i32* %i, align 4, !tbaa !49
  %idxprom132 = sext i32 %159 to i64
  %160 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %vgstack133 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %160, i32 0, i32 192
  %161 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %vgstack133, align 8, !tbaa !55
  %arrayidx134 = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %161, i64 %idxprom132
  %line_params135 = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %arrayidx134, i32 0, i32 19
  %dash = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params135, i32 0, i32 11
  %pattern = getelementptr inbounds %struct.gx_dash_params_s, %struct.gx_dash_params_s* %dash, i32 0, i32 0
  store float* null, float** %pattern, align 8, !tbaa !95
  %162 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %dash_pattern = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %162, i32 0, i32 52
  %163 = load float*, float** %dash_pattern, align 8, !tbaa !96
  %tobool = icmp ne float* %163, null
  br i1 %tobool, label %if.then.136, label %if.else

if.then.136:                                      ; preds = %if.end.24
  %164 = load i32, i32* %i, align 4, !tbaa !49
  %idxprom137 = sext i32 %164 to i64
  %165 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %vgstack138 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %165, i32 0, i32 192
  %166 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %vgstack138, align 8, !tbaa !55
  %arrayidx139 = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %166, i64 %idxprom137
  %dash_pattern140 = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %arrayidx139, i32 0, i32 20
  %167 = load float*, float** %dash_pattern140, align 8, !tbaa !97
  %tobool141 = icmp ne float* %167, null
  br i1 %tobool141, label %if.then.142, label %if.end.151

if.then.142:                                      ; preds = %if.then.136
  %168 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %168, i32 0, i32 3
  %169 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !98
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %169, i32 0, i32 3
  %170 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !99
  %procs143 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %170, i32 0, i32 1
  %free_object144 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs143, i32 0, i32 2
  %171 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object144, align 8, !tbaa !56
  %172 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory145 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %172, i32 0, i32 3
  %173 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory145, align 8, !tbaa !98
  %non_gc_memory146 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %173, i32 0, i32 3
  %174 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory146, align 8, !tbaa !99
  %175 = load i32, i32* %i, align 4, !tbaa !49
  %idxprom147 = sext i32 %175 to i64
  %176 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %vgstack148 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %176, i32 0, i32 192
  %177 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %vgstack148, align 8, !tbaa !55
  %arrayidx149 = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %177, i64 %idxprom147
  %dash_pattern150 = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %arrayidx149, i32 0, i32 20
  %178 = load float*, float** %dash_pattern150, align 8, !tbaa !97
  %179 = bitcast float* %178 to i8*
  call void %171(%struct.gs_memory_s* %174, i8* %179, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0)) #7
  br label %if.end.151

if.end.151:                                       ; preds = %if.then.142, %if.then.136
  %180 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory152 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %180, i32 0, i32 3
  %181 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory152, align 8, !tbaa !98
  %non_gc_memory153 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %181, i32 0, i32 3
  %182 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory153, align 8, !tbaa !99
  %procs154 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %182, i32 0, i32 1
  %alloc_bytes155 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs154, i32 0, i32 7
  %183 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes155, align 8, !tbaa !52
  %184 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory156 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %184, i32 0, i32 3
  %185 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory156, align 8, !tbaa !98
  %non_gc_memory157 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %185, i32 0, i32 3
  %186 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory157, align 8, !tbaa !99
  %187 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %dash_pattern_size = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %187, i32 0, i32 53
  %188 = load i32, i32* %dash_pattern_size, align 4, !tbaa !100
  %conv158 = zext i32 %188 to i64
  %mul159 = mul i64 %conv158, 4
  %conv160 = trunc i64 %mul159 to i32
  %call161 = call i8* %183(%struct.gs_memory_s* %186, i32 %conv160, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0)) #7
  %189 = bitcast i8* %call161 to float*
  %190 = load i32, i32* %i, align 4, !tbaa !49
  %idxprom162 = sext i32 %190 to i64
  %191 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %vgstack163 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %191, i32 0, i32 192
  %192 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %vgstack163, align 8, !tbaa !55
  %arrayidx164 = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %192, i64 %idxprom162
  %dash_pattern165 = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %arrayidx164, i32 0, i32 20
  store float* %189, float** %dash_pattern165, align 8, !tbaa !97
  %193 = load i32, i32* %i, align 4, !tbaa !49
  %idxprom166 = sext i32 %193 to i64
  %194 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %vgstack167 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %194, i32 0, i32 192
  %195 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %vgstack167, align 8, !tbaa !55
  %arrayidx168 = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %195, i64 %idxprom166
  %dash_pattern169 = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %arrayidx168, i32 0, i32 20
  %196 = load float*, float** %dash_pattern169, align 8, !tbaa !97
  %197 = bitcast float* %196 to i8*
  %198 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %dash_pattern170 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %198, i32 0, i32 52
  %199 = load float*, float** %dash_pattern170, align 8, !tbaa !96
  %200 = bitcast float* %199 to i8*
  %201 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %dash_pattern_size171 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %201, i32 0, i32 53
  %202 = load i32, i32* %dash_pattern_size171, align 4, !tbaa !100
  %conv172 = zext i32 %202 to i64
  %mul173 = mul i64 %conv172, 4
  %call174 = call i8* @memcpy(i8* %197, i8* %200, i64 %mul173) #8
  %203 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %dash_pattern_size175 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %203, i32 0, i32 53
  %204 = load i32, i32* %dash_pattern_size175, align 4, !tbaa !100
  %205 = load i32, i32* %i, align 4, !tbaa !49
  %idxprom176 = sext i32 %205 to i64
  %206 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %vgstack177 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %206, i32 0, i32 192
  %207 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %vgstack177, align 8, !tbaa !55
  %arrayidx178 = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %207, i64 %idxprom176
  %dash_pattern_size179 = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %arrayidx178, i32 0, i32 21
  store i32 %204, i32* %dash_pattern_size179, align 4, !tbaa !101
  br label %if.end.205

if.else:                                          ; preds = %if.end.24
  %208 = load i32, i32* %i, align 4, !tbaa !49
  %idxprom180 = sext i32 %208 to i64
  %209 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %vgstack181 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %209, i32 0, i32 192
  %210 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %vgstack181, align 8, !tbaa !55
  %arrayidx182 = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %210, i64 %idxprom180
  %dash_pattern183 = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %arrayidx182, i32 0, i32 20
  %211 = load float*, float** %dash_pattern183, align 8, !tbaa !97
  %tobool184 = icmp ne float* %211, null
  br i1 %tobool184, label %if.then.185, label %if.end.204

if.then.185:                                      ; preds = %if.else
  %212 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory186 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %212, i32 0, i32 3
  %213 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory186, align 8, !tbaa !98
  %non_gc_memory187 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %213, i32 0, i32 3
  %214 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory187, align 8, !tbaa !99
  %procs188 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %214, i32 0, i32 1
  %free_object189 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs188, i32 0, i32 2
  %215 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object189, align 8, !tbaa !56
  %216 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory190 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %216, i32 0, i32 3
  %217 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory190, align 8, !tbaa !98
  %non_gc_memory191 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %217, i32 0, i32 3
  %218 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory191, align 8, !tbaa !99
  %219 = load i32, i32* %i, align 4, !tbaa !49
  %idxprom192 = sext i32 %219 to i64
  %220 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %vgstack193 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %220, i32 0, i32 192
  %221 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %vgstack193, align 8, !tbaa !55
  %arrayidx194 = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %221, i64 %idxprom192
  %dash_pattern195 = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %arrayidx194, i32 0, i32 20
  %222 = load float*, float** %dash_pattern195, align 8, !tbaa !97
  %223 = bitcast float* %222 to i8*
  call void %215(%struct.gs_memory_s* %218, i8* %223, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0)) #7
  %224 = load i32, i32* %i, align 4, !tbaa !49
  %idxprom196 = sext i32 %224 to i64
  %225 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %vgstack197 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %225, i32 0, i32 192
  %226 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %vgstack197, align 8, !tbaa !55
  %arrayidx198 = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %226, i64 %idxprom196
  %dash_pattern199 = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %arrayidx198, i32 0, i32 20
  store float* null, float** %dash_pattern199, align 8, !tbaa !97
  %227 = load i32, i32* %i, align 4, !tbaa !49
  %idxprom200 = sext i32 %227 to i64
  %228 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %vgstack201 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %228, i32 0, i32 192
  %229 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %vgstack201, align 8, !tbaa !55
  %arrayidx202 = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %229, i64 %idxprom200
  %dash_pattern_size203 = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %arrayidx202, i32 0, i32 21
  store i32 0, i32* %dash_pattern_size203, align 4, !tbaa !101
  br label %if.end.204

if.end.204:                                       ; preds = %if.then.185, %if.else
  br label %if.end.205

if.end.205:                                       ; preds = %if.end.204, %if.end.151
  %230 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %vgstack_depth206 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %230, i32 0, i32 194
  %231 = load i32, i32* %vgstack_depth206, align 4, !tbaa !5
  %inc = add nsw i32 %231, 1
  store i32 %inc, i32* %vgstack_depth206, align 4, !tbaa !5
  %232 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %tobool207 = icmp ne %struct.stream_s* %232, null
  br i1 %tobool207, label %if.then.208, label %if.end.210

if.then.208:                                      ; preds = %if.end.205
  %233 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call209 = call i32 @stream_puts(%struct.stream_s* %233, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0)) #7
  br label %if.end.210

if.end.210:                                       ; preds = %if.then.208, %if.end.205
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.211

cleanup.211:                                      ; preds = %if.end.210, %cleanup
  %234 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %234) #1
  %235 = load i32, i32* %retval
  ret i32 %235
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #2

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @stream_puts(%struct.stream_s*, i8*) #3

; Function Attrs: nounwind uwtable
define i32 @pdf_restore_viewer_state(%struct.gx_device_pdf_s* %pdev, %struct.stream_s* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %s.addr = alloca %struct.stream_s*, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %vgstack_depth = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %1, i32 0, i32 194
  %2 = load i32, i32* %vgstack_depth, align 4, !tbaa !5
  %dec = add nsw i32 %2, -1
  store i32 %dec, i32* %vgstack_depth, align 4, !tbaa !5
  store i32 %dec, i32* %i, align 4, !tbaa !49
  %3 = load i32, i32* %i, align 4, !tbaa !49
  %4 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %vgstack_bottom = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %4, i32 0, i32 195
  %5 = load i32, i32* %vgstack_bottom, align 4, !tbaa !102
  %cmp = icmp slt i32 %3, %5
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %6 = load i32, i32* %i, align 4, !tbaa !49
  %cmp1 = icmp slt i32 %6, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %7 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.stream_s* %7, null
  br i1 %tobool, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %8 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call = call i32 @stream_puts(%struct.stream_s* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0)) #7
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %9 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %10 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %vgstack = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %10, i32 0, i32 192
  %11 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %vgstack, align 8, !tbaa !55
  %12 = load i32, i32* %i, align 4, !tbaa !49
  %idx.ext = sext i32 %12 to i64
  %add.ptr = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %11, i64 %idx.ext
  call void @pdf_load_viewer_state(%struct.gx_device_pdf_s* %9, %struct.pdf_viewer_state_s* %add.ptr) #7
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.3, %if.then
  %13 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #1
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define internal void @pdf_load_viewer_state(%struct.gx_device_pdf_s* %pdev, %struct.pdf_viewer_state_s* %s) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %s.addr = alloca %struct.pdf_viewer_state_s*, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.pdf_viewer_state_s* %s, %struct.pdf_viewer_state_s** %s.addr, align 8, !tbaa !1
  %0 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %s.addr, align 8, !tbaa !1
  %transfer_ids = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [4 x i64], [4 x i64]* %transfer_ids, i32 0, i64 0
  %1 = load i64, i64* %arrayidx, align 8, !tbaa !57
  %2 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %transfer_ids1 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %2, i32 0, i32 138
  %arrayidx2 = getelementptr inbounds [4 x i64], [4 x i64]* %transfer_ids1, i32 0, i64 0
  store i64 %1, i64* %arrayidx2, align 8, !tbaa !57
  %3 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %s.addr, align 8, !tbaa !1
  %transfer_ids3 = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %3, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [4 x i64], [4 x i64]* %transfer_ids3, i32 0, i64 1
  %4 = load i64, i64* %arrayidx4, align 8, !tbaa !57
  %5 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %transfer_ids5 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %5, i32 0, i32 138
  %arrayidx6 = getelementptr inbounds [4 x i64], [4 x i64]* %transfer_ids5, i32 0, i64 1
  store i64 %4, i64* %arrayidx6, align 8, !tbaa !57
  %6 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %s.addr, align 8, !tbaa !1
  %transfer_ids7 = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %6, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [4 x i64], [4 x i64]* %transfer_ids7, i32 0, i64 2
  %7 = load i64, i64* %arrayidx8, align 8, !tbaa !57
  %8 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %transfer_ids9 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %8, i32 0, i32 138
  %arrayidx10 = getelementptr inbounds [4 x i64], [4 x i64]* %transfer_ids9, i32 0, i64 2
  store i64 %7, i64* %arrayidx10, align 8, !tbaa !57
  %9 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %s.addr, align 8, !tbaa !1
  %transfer_ids11 = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %9, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [4 x i64], [4 x i64]* %transfer_ids11, i32 0, i64 3
  %10 = load i64, i64* %arrayidx12, align 8, !tbaa !57
  %11 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %transfer_ids13 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %11, i32 0, i32 138
  %arrayidx14 = getelementptr inbounds [4 x i64], [4 x i64]* %transfer_ids13, i32 0, i64 3
  store i64 %10, i64* %arrayidx14, align 8, !tbaa !57
  %12 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %s.addr, align 8, !tbaa !1
  %transfer_not_identity = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %12, i32 0, i32 0
  %13 = load i32, i32* %transfer_not_identity, align 4, !tbaa !59
  %14 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %transfer_not_identity15 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %14, i32 0, i32 139
  store i32 %13, i32* %transfer_not_identity15, align 4, !tbaa !58
  %15 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %s.addr, align 8, !tbaa !1
  %opacity_alpha = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %15, i32 0, i32 2
  %16 = load float, float* %opacity_alpha, align 4, !tbaa !61
  %17 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %state = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %17, i32 0, i32 51
  %opacity = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %state, i32 0, i32 13
  %alpha = getelementptr inbounds %struct.gs_transparency_source_s, %struct.gs_transparency_source_s* %opacity, i32 0, i32 0
  store float %16, float* %alpha, align 4, !tbaa !60
  %18 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %s.addr, align 8, !tbaa !1
  %shape_alpha = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %18, i32 0, i32 3
  %19 = load float, float* %shape_alpha, align 4, !tbaa !63
  %20 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %state16 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %20, i32 0, i32 51
  %shape = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %state16, i32 0, i32 14
  %alpha17 = getelementptr inbounds %struct.gs_transparency_source_s, %struct.gs_transparency_source_s* %shape, i32 0, i32 0
  store float %19, float* %alpha17, align 4, !tbaa !62
  %21 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %s.addr, align 8, !tbaa !1
  %blend_mode = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %21, i32 0, i32 4
  %22 = load i32, i32* %blend_mode, align 4, !tbaa !65
  %23 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %state18 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %23, i32 0, i32 51
  %blend_mode19 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %state18, i32 0, i32 12
  store i32 %22, i32* %blend_mode19, align 4, !tbaa !64
  %24 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %s.addr, align 8, !tbaa !1
  %halftone_id = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %24, i32 0, i32 5
  %25 = load i64, i64* %halftone_id, align 8, !tbaa !67
  %26 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %halftone_id20 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %26, i32 0, i32 137
  store i64 %25, i64* %halftone_id20, align 8, !tbaa !66
  %27 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %s.addr, align 8, !tbaa !1
  %black_generation_id = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %27, i32 0, i32 6
  %28 = load i64, i64* %black_generation_id, align 8, !tbaa !69
  %29 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %black_generation_id21 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %29, i32 0, i32 140
  store i64 %28, i64* %black_generation_id21, align 8, !tbaa !68
  %30 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %s.addr, align 8, !tbaa !1
  %undercolor_removal_id = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %30, i32 0, i32 7
  %31 = load i64, i64* %undercolor_removal_id, align 8, !tbaa !71
  %32 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %undercolor_removal_id22 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %32, i32 0, i32 141
  store i64 %31, i64* %undercolor_removal_id22, align 8, !tbaa !70
  %33 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %s.addr, align 8, !tbaa !1
  %overprint_mode = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %33, i32 0, i32 8
  %34 = load i32, i32* %overprint_mode, align 4, !tbaa !73
  %35 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %overprint_mode23 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %35, i32 0, i32 136
  store i32 %34, i32* %overprint_mode23, align 4, !tbaa !72
  %36 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %s.addr, align 8, !tbaa !1
  %smoothness = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %36, i32 0, i32 9
  %37 = load float, float* %smoothness, align 4, !tbaa !75
  %38 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %state24 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %38, i32 0, i32 51
  %smoothness25 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %state24, i32 0, i32 32
  store float %37, float* %smoothness25, align 4, !tbaa !74
  %39 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %s.addr, align 8, !tbaa !1
  %flatness = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %39, i32 0, i32 10
  %40 = load float, float* %flatness, align 4, !tbaa !77
  %41 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %state26 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %41, i32 0, i32 51
  %flatness27 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %state26, i32 0, i32 27
  store float %40, float* %flatness27, align 4, !tbaa !76
  %42 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %s.addr, align 8, !tbaa !1
  %text_knockout = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %42, i32 0, i32 11
  %43 = load i32, i32* %text_knockout, align 4, !tbaa !79
  %44 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %state28 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %44, i32 0, i32 51
  %text_knockout29 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %state28, i32 0, i32 17
  store i32 %43, i32* %text_knockout29, align 4, !tbaa !78
  %45 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %s.addr, align 8, !tbaa !1
  %fill_overprint = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %45, i32 0, i32 12
  %46 = load i32, i32* %fill_overprint, align 4, !tbaa !81
  %47 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %fill_overprint30 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %47, i32 0, i32 132
  store i32 %46, i32* %fill_overprint30, align 4, !tbaa !80
  %48 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %s.addr, align 8, !tbaa !1
  %stroke_overprint = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %48, i32 0, i32 13
  %49 = load i32, i32* %stroke_overprint, align 4, !tbaa !83
  %50 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %stroke_overprint31 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %50, i32 0, i32 133
  store i32 %49, i32* %stroke_overprint31, align 4, !tbaa !82
  %51 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %s.addr, align 8, !tbaa !1
  %stroke_adjust = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %51, i32 0, i32 14
  %52 = load i32, i32* %stroke_adjust, align 4, !tbaa !85
  %53 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %state32 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %53, i32 0, i32 51
  %stroke_adjust33 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %state32, i32 0, i32 29
  store i32 %52, i32* %stroke_adjust33, align 4, !tbaa !84
  %54 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %s.addr, align 8, !tbaa !1
  %fill_used_process_color = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %54, i32 0, i32 15
  %55 = load i32, i32* %fill_used_process_color, align 4, !tbaa !87
  %56 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %fill_used_process_color34 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %56, i32 0, i32 54
  store i32 %55, i32* %fill_used_process_color34, align 4, !tbaa !86
  %57 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %s.addr, align 8, !tbaa !1
  %stroke_used_process_color = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %57, i32 0, i32 16
  %58 = load i32, i32* %stroke_used_process_color, align 4, !tbaa !89
  %59 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %stroke_used_process_color35 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %59, i32 0, i32 55
  store i32 %58, i32* %stroke_used_process_color35, align 4, !tbaa !88
  %60 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %saved_fill_color = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %60, i32 0, i32 56
  %61 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %s.addr, align 8, !tbaa !1
  %saved_fill_color36 = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %61, i32 0, i32 17
  %62 = bitcast %struct.gx_hl_saved_color_s* %saved_fill_color to i8*
  %63 = bitcast %struct.gx_hl_saved_color_s* %saved_fill_color36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %62, i8* %63, i64 632, i32 8, i1 false), !tbaa.struct !90
  %64 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %saved_stroke_color = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %64, i32 0, i32 57
  %65 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %s.addr, align 8, !tbaa !1
  %saved_stroke_color37 = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %65, i32 0, i32 18
  %66 = bitcast %struct.gx_hl_saved_color_s* %saved_stroke_color to i8*
  %67 = bitcast %struct.gx_hl_saved_color_s* %saved_stroke_color37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %66, i8* %67, i64 632, i32 8, i1 false), !tbaa.struct !90
  %68 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %state38 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %68, i32 0, i32 51
  %line_params = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %state38, i32 0, i32 3
  %69 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %s.addr, align 8, !tbaa !1
  %line_params39 = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %69, i32 0, i32 19
  %70 = bitcast %struct.gx_line_params_s* %line_params to i8*
  %71 = bitcast %struct.gx_line_params_s* %line_params39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %70, i8* %71, i64 104, i32 8, i1 false), !tbaa.struct !93
  %72 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %s.addr, align 8, !tbaa !1
  %dash_pattern = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %72, i32 0, i32 20
  %73 = load float*, float** %dash_pattern, align 8, !tbaa !97
  %tobool = icmp ne float* %73, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %74 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %dash_pattern40 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %74, i32 0, i32 52
  %75 = load float*, float** %dash_pattern40, align 8, !tbaa !96
  %tobool41 = icmp ne float* %75, null
  br i1 %tobool41, label %if.then.42, label %if.end

if.then.42:                                       ; preds = %if.then
  %76 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %76, i32 0, i32 3
  %77 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !98
  %stable_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %77, i32 0, i32 0
  %78 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory, align 8, !tbaa !103
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %78, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %79 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !56
  %80 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory43 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %80, i32 0, i32 3
  %81 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory43, align 8, !tbaa !98
  %stable_memory44 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %81, i32 0, i32 0
  %82 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory44, align 8, !tbaa !103
  %83 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %dash_pattern45 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %83, i32 0, i32 52
  %84 = load float*, float** %dash_pattern45, align 8, !tbaa !96
  %85 = bitcast float* %84 to i8*
  call void %79(%struct.gs_memory_s* %82, i8* %85, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.53, i32 0, i32 0)) #7
  br label %if.end

if.end:                                           ; preds = %if.then.42, %if.then
  %86 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory46 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %86, i32 0, i32 3
  %87 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory46, align 8, !tbaa !98
  %stable_memory47 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %87, i32 0, i32 0
  %88 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory47, align 8, !tbaa !103
  %procs48 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %88, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs48, i32 0, i32 7
  %89 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !52
  %90 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory49 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %90, i32 0, i32 3
  %91 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory49, align 8, !tbaa !98
  %stable_memory50 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %91, i32 0, i32 0
  %92 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory50, align 8, !tbaa !103
  %93 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %s.addr, align 8, !tbaa !1
  %dash_pattern_size = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %93, i32 0, i32 21
  %94 = load i32, i32* %dash_pattern_size, align 4, !tbaa !101
  %conv = zext i32 %94 to i64
  %mul = mul i64 %conv, 4
  %conv51 = trunc i64 %mul to i32
  %call = call i8* %89(%struct.gs_memory_s* %92, i32 %conv51, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.54, i32 0, i32 0)) #7
  %95 = bitcast i8* %call to float*
  %96 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %dash_pattern52 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %96, i32 0, i32 52
  store float* %95, float** %dash_pattern52, align 8, !tbaa !96
  %97 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %s.addr, align 8, !tbaa !1
  %dash_pattern_size53 = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %97, i32 0, i32 21
  %98 = load i32, i32* %dash_pattern_size53, align 4, !tbaa !101
  %99 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %dash_pattern_size54 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %99, i32 0, i32 53
  store i32 %98, i32* %dash_pattern_size54, align 4, !tbaa !100
  br label %if.end.68

if.else:                                          ; preds = %entry
  %100 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %dash_pattern55 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %100, i32 0, i32 52
  %101 = load float*, float** %dash_pattern55, align 8, !tbaa !96
  %tobool56 = icmp ne float* %101, null
  br i1 %tobool56, label %if.then.57, label %if.end.67

if.then.57:                                       ; preds = %if.else
  %102 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory58 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %102, i32 0, i32 3
  %103 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory58, align 8, !tbaa !98
  %stable_memory59 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %103, i32 0, i32 0
  %104 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory59, align 8, !tbaa !103
  %procs60 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %104, i32 0, i32 1
  %free_object61 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs60, i32 0, i32 2
  %105 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object61, align 8, !tbaa !56
  %106 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory62 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %106, i32 0, i32 3
  %107 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory62, align 8, !tbaa !98
  %stable_memory63 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %107, i32 0, i32 0
  %108 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory63, align 8, !tbaa !103
  %109 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %dash_pattern64 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %109, i32 0, i32 52
  %110 = load float*, float** %dash_pattern64, align 8, !tbaa !96
  %111 = bitcast float* %110 to i8*
  call void %105(%struct.gs_memory_s* %108, i8* %111, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.53, i32 0, i32 0)) #7
  %112 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %dash_pattern65 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %112, i32 0, i32 52
  store float* null, float** %dash_pattern65, align 8, !tbaa !96
  %113 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %dash_pattern_size66 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %113, i32 0, i32 53
  store i32 0, i32* %dash_pattern_size66, align 4, !tbaa !100
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.57, %if.else
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @pdf_set_initial_color(%struct.gx_device_pdf_s* %pdev, %struct.gx_hl_saved_color_s* %saved_fill_color, %struct.gx_hl_saved_color_s* %saved_stroke_color, i32* %fill_used_process_color, i32* %stroke_used_process_color) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %saved_fill_color.addr = alloca %struct.gx_hl_saved_color_s*, align 8
  %saved_stroke_color.addr = alloca %struct.gx_hl_saved_color_s*, align 8
  %fill_used_process_color.addr = alloca i32*, align 8
  %stroke_used_process_color.addr = alloca i32*, align 8
  %black = alloca %struct.gx_device_color_s, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gx_hl_saved_color_s* %saved_fill_color, %struct.gx_hl_saved_color_s** %saved_fill_color.addr, align 8, !tbaa !1
  store %struct.gx_hl_saved_color_s* %saved_stroke_color, %struct.gx_hl_saved_color_s** %saved_stroke_color.addr, align 8, !tbaa !1
  store i32* %fill_used_process_color, i32** %fill_used_process_color.addr, align 8, !tbaa !1
  store i32* %stroke_used_process_color, i32** %stroke_used_process_color.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_color_s* %black to i8*
  call void @llvm.lifetime.start(i64 656, i8* %0) #1
  %1 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_pdf_s* %1 to %struct.gx_device_s*
  %call = call i64 @gx_device_black(%struct.gx_device_s* %2) #7
  %3 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %black1 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %3, i32 0, i32 65
  store i64 %call, i64* %black1, align 8, !tbaa !104
  %4 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gx_device_pdf_s* %4 to %struct.gx_device_s*
  %call2 = call i64 @gx_device_white(%struct.gx_device_s* %5) #7
  %6 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %white = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %6, i32 0, i32 66
  store i64 %call2, i64* %white, align 8, !tbaa !105
  %7 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %black3 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %7, i32 0, i32 65
  %8 = load i64, i64* %black3, align 8, !tbaa !104
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %black, i32 0, i32 1
  %pure = bitcast %union._c* %colors to i64*
  store i64 %8, i64* %pure, align 8, !tbaa !57
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %black, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_pure, %struct.gx_device_color_type_s** %type, align 8, !tbaa !106
  %ccolor_valid = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %black, i32 0, i32 3
  store i32 0, i32* %ccolor_valid, align 4, !tbaa !110
  %9 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %saved_fill_color.addr, align 8, !tbaa !1
  %call4 = call i32 @gx_hld_save_color(%struct.gs_imager_state_s* null, %struct.gx_device_color_s* %black, %struct.gx_hl_saved_color_s* %9) #7
  %10 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %saved_stroke_color.addr, align 8, !tbaa !1
  %call5 = call i32 @gx_hld_save_color(%struct.gs_imager_state_s* null, %struct.gx_device_color_s* %black, %struct.gx_hl_saved_color_s* %10) #7
  %11 = load i32*, i32** %fill_used_process_color.addr, align 8, !tbaa !1
  store i32 1, i32* %11, align 4, !tbaa !49
  %12 = load i32*, i32** %stroke_used_process_color.addr, align 8, !tbaa !1
  store i32 1, i32* %12, align 4, !tbaa !49
  %13 = bitcast %struct.gx_device_color_s* %black to i8*
  call void @llvm.lifetime.end(i64 656, i8* %13) #1
  ret void
}

declare i64 @gx_device_black(%struct.gx_device_s*) #3

declare i64 @gx_device_white(%struct.gx_device_s*) #3

declare i32 @gx_hld_save_color(%struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_hl_saved_color_s*) #3

; Function Attrs: nounwind uwtable
define void @pdf_viewer_state_from_imager_state(%struct.gx_device_pdf_s* %pdev, %struct.gs_imager_state_s* %pis, %struct.gx_device_color_s* %pdevc) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %vs = alloca %struct.pdf_viewer_state_s, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %0 = bitcast %struct.pdf_viewer_state_s* %vs to i8*
  call void @llvm.lifetime.start(i64 1512, i8* %0) #1
  %1 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  call void @pdf_viewer_state_from_imager_state_aux(%struct.pdf_viewer_state_s* %vs, %struct.gs_imager_state_s* %1) #7
  %2 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %3 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %saved_fill_color = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %vs, i32 0, i32 17
  %call = call i32 @gx_hld_save_color(%struct.gs_imager_state_s* %2, %struct.gx_device_color_s* %3, %struct.gx_hl_saved_color_s* %saved_fill_color) #7
  %4 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %5 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %saved_stroke_color = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %vs, i32 0, i32 18
  %call1 = call i32 @gx_hld_save_color(%struct.gs_imager_state_s* %4, %struct.gx_device_color_s* %5, %struct.gx_hl_saved_color_s* %saved_stroke_color) #7
  %fill_used_process_color = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %vs, i32 0, i32 15
  store i32 0, i32* %fill_used_process_color, align 4, !tbaa !87
  %stroke_used_process_color = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %vs, i32 0, i32 16
  store i32 0, i32* %stroke_used_process_color, align 4, !tbaa !89
  %6 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  call void @pdf_load_viewer_state(%struct.gx_device_pdf_s* %6, %struct.pdf_viewer_state_s* %vs) #7
  %7 = bitcast %struct.pdf_viewer_state_s* %vs to i8*
  call void @llvm.lifetime.end(i64 1512, i8* %7) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @pdf_viewer_state_from_imager_state_aux(%struct.pdf_viewer_state_s* %pvs, %struct.gs_imager_state_s* %pis) #0 {
entry:
  %pvs.addr = alloca %struct.pdf_viewer_state_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  store %struct.pdf_viewer_state_s* %pvs, %struct.pdf_viewer_state_s** %pvs.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %0 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %0, i32 0, i32 46
  %red = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer, i32 0, i32 1
  %1 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %red, align 8, !tbaa !111
  %cmp = icmp ne %struct.gx_transfer_map_s* %1, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer1 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %2, i32 0, i32 46
  %red2 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer1, i32 0, i32 1
  %3 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %red2, align 8, !tbaa !111
  %proc = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %3, i32 0, i32 1
  %proc3 = bitcast {}** %proc to float (double, %struct.gx_transfer_map_s*)**
  %4 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %proc3, align 8, !tbaa !112
  %cmp4 = icmp ne float (double, %struct.gx_transfer_map_s*)* %4, @gs_identity_transfer
  %conv = zext i1 %cmp4 to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ 0, %cond.false ]
  %mul = mul nsw i32 %cond, 1
  %5 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer5 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %5, i32 0, i32 46
  %green = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer5, i32 0, i32 3
  %6 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %green, align 8, !tbaa !115
  %cmp6 = icmp ne %struct.gx_transfer_map_s* %6, null
  br i1 %cmp6, label %cond.true.8, label %cond.false.15

cond.true.8:                                      ; preds = %cond.end
  %7 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer9 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %7, i32 0, i32 46
  %green10 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer9, i32 0, i32 3
  %8 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %green10, align 8, !tbaa !115
  %proc11 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %8, i32 0, i32 1
  %proc12 = bitcast {}** %proc11 to float (double, %struct.gx_transfer_map_s*)**
  %9 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %proc12, align 8, !tbaa !112
  %cmp13 = icmp ne float (double, %struct.gx_transfer_map_s*)* %9, @gs_identity_transfer
  %conv14 = zext i1 %cmp13 to i32
  br label %cond.end.16

cond.false.15:                                    ; preds = %cond.end
  br label %cond.end.16

cond.end.16:                                      ; preds = %cond.false.15, %cond.true.8
  %cond17 = phi i32 [ %conv14, %cond.true.8 ], [ 0, %cond.false.15 ]
  %mul18 = mul nsw i32 %cond17, 2
  %add = add nsw i32 %mul, %mul18
  %10 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer19 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %10, i32 0, i32 46
  %blue = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer19, i32 0, i32 5
  %11 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %blue, align 8, !tbaa !116
  %cmp20 = icmp ne %struct.gx_transfer_map_s* %11, null
  br i1 %cmp20, label %cond.true.22, label %cond.false.29

cond.true.22:                                     ; preds = %cond.end.16
  %12 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer23 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %12, i32 0, i32 46
  %blue24 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer23, i32 0, i32 5
  %13 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %blue24, align 8, !tbaa !116
  %proc25 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %13, i32 0, i32 1
  %proc26 = bitcast {}** %proc25 to float (double, %struct.gx_transfer_map_s*)**
  %14 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %proc26, align 8, !tbaa !112
  %cmp27 = icmp ne float (double, %struct.gx_transfer_map_s*)* %14, @gs_identity_transfer
  %conv28 = zext i1 %cmp27 to i32
  br label %cond.end.30

cond.false.29:                                    ; preds = %cond.end.16
  br label %cond.end.30

cond.end.30:                                      ; preds = %cond.false.29, %cond.true.22
  %cond31 = phi i32 [ %conv28, %cond.true.22 ], [ 0, %cond.false.29 ]
  %mul32 = mul nsw i32 %cond31, 4
  %add33 = add nsw i32 %add, %mul32
  %15 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer34 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %15, i32 0, i32 46
  %gray = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer34, i32 0, i32 7
  %16 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %gray, align 8, !tbaa !117
  %cmp35 = icmp ne %struct.gx_transfer_map_s* %16, null
  br i1 %cmp35, label %cond.true.37, label %cond.false.44

cond.true.37:                                     ; preds = %cond.end.30
  %17 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer38 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %17, i32 0, i32 46
  %gray39 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer38, i32 0, i32 7
  %18 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %gray39, align 8, !tbaa !117
  %proc40 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %18, i32 0, i32 1
  %proc41 = bitcast {}** %proc40 to float (double, %struct.gx_transfer_map_s*)**
  %19 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %proc41, align 8, !tbaa !112
  %cmp42 = icmp ne float (double, %struct.gx_transfer_map_s*)* %19, @gs_identity_transfer
  %conv43 = zext i1 %cmp42 to i32
  br label %cond.end.45

cond.false.44:                                    ; preds = %cond.end.30
  br label %cond.end.45

cond.end.45:                                      ; preds = %cond.false.44, %cond.true.37
  %cond46 = phi i32 [ %conv43, %cond.true.37 ], [ 0, %cond.false.44 ]
  %mul47 = mul nsw i32 %cond46, 8
  %add48 = add nsw i32 %add33, %mul47
  %20 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %pvs.addr, align 8, !tbaa !1
  %transfer_not_identity = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %20, i32 0, i32 0
  store i32 %add48, i32* %transfer_not_identity, align 4, !tbaa !59
  %21 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer49 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %21, i32 0, i32 46
  %red50 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer49, i32 0, i32 1
  %22 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %red50, align 8, !tbaa !111
  %cmp51 = icmp ne %struct.gx_transfer_map_s* %22, null
  br i1 %cmp51, label %cond.true.53, label %cond.false.56

cond.true.53:                                     ; preds = %cond.end.45
  %23 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer54 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %23, i32 0, i32 46
  %red55 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer54, i32 0, i32 1
  %24 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %red55, align 8, !tbaa !111
  %id = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %24, i32 0, i32 3
  %25 = load i64, i64* %id, align 8, !tbaa !118
  br label %cond.end.57

cond.false.56:                                    ; preds = %cond.end.45
  br label %cond.end.57

cond.end.57:                                      ; preds = %cond.false.56, %cond.true.53
  %cond58 = phi i64 [ %25, %cond.true.53 ], [ 0, %cond.false.56 ]
  %26 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %pvs.addr, align 8, !tbaa !1
  %transfer_ids = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %26, i32 0, i32 1
  %arrayidx = getelementptr inbounds [4 x i64], [4 x i64]* %transfer_ids, i32 0, i64 0
  store i64 %cond58, i64* %arrayidx, align 8, !tbaa !57
  %27 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer59 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %27, i32 0, i32 46
  %green60 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer59, i32 0, i32 3
  %28 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %green60, align 8, !tbaa !115
  %cmp61 = icmp ne %struct.gx_transfer_map_s* %28, null
  br i1 %cmp61, label %cond.true.63, label %cond.false.67

cond.true.63:                                     ; preds = %cond.end.57
  %29 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer64 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %29, i32 0, i32 46
  %green65 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer64, i32 0, i32 3
  %30 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %green65, align 8, !tbaa !115
  %id66 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %30, i32 0, i32 3
  %31 = load i64, i64* %id66, align 8, !tbaa !118
  br label %cond.end.68

cond.false.67:                                    ; preds = %cond.end.57
  br label %cond.end.68

cond.end.68:                                      ; preds = %cond.false.67, %cond.true.63
  %cond69 = phi i64 [ %31, %cond.true.63 ], [ 0, %cond.false.67 ]
  %32 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %pvs.addr, align 8, !tbaa !1
  %transfer_ids70 = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %32, i32 0, i32 1
  %arrayidx71 = getelementptr inbounds [4 x i64], [4 x i64]* %transfer_ids70, i32 0, i64 1
  store i64 %cond69, i64* %arrayidx71, align 8, !tbaa !57
  %33 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer72 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %33, i32 0, i32 46
  %blue73 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer72, i32 0, i32 5
  %34 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %blue73, align 8, !tbaa !116
  %cmp74 = icmp ne %struct.gx_transfer_map_s* %34, null
  br i1 %cmp74, label %cond.true.76, label %cond.false.80

cond.true.76:                                     ; preds = %cond.end.68
  %35 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer77 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %35, i32 0, i32 46
  %blue78 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer77, i32 0, i32 5
  %36 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %blue78, align 8, !tbaa !116
  %id79 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %36, i32 0, i32 3
  %37 = load i64, i64* %id79, align 8, !tbaa !118
  br label %cond.end.81

cond.false.80:                                    ; preds = %cond.end.68
  br label %cond.end.81

cond.end.81:                                      ; preds = %cond.false.80, %cond.true.76
  %cond82 = phi i64 [ %37, %cond.true.76 ], [ 0, %cond.false.80 ]
  %38 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %pvs.addr, align 8, !tbaa !1
  %transfer_ids83 = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %38, i32 0, i32 1
  %arrayidx84 = getelementptr inbounds [4 x i64], [4 x i64]* %transfer_ids83, i32 0, i64 2
  store i64 %cond82, i64* %arrayidx84, align 8, !tbaa !57
  %39 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer85 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %39, i32 0, i32 46
  %gray86 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer85, i32 0, i32 7
  %40 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %gray86, align 8, !tbaa !117
  %cmp87 = icmp ne %struct.gx_transfer_map_s* %40, null
  br i1 %cmp87, label %cond.true.89, label %cond.false.93

cond.true.89:                                     ; preds = %cond.end.81
  %41 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer90 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %41, i32 0, i32 46
  %gray91 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer90, i32 0, i32 7
  %42 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %gray91, align 8, !tbaa !117
  %id92 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %42, i32 0, i32 3
  %43 = load i64, i64* %id92, align 8, !tbaa !118
  br label %cond.end.94

cond.false.93:                                    ; preds = %cond.end.81
  br label %cond.end.94

cond.end.94:                                      ; preds = %cond.false.93, %cond.true.89
  %cond95 = phi i64 [ %43, %cond.true.89 ], [ 0, %cond.false.93 ]
  %44 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %pvs.addr, align 8, !tbaa !1
  %transfer_ids96 = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %44, i32 0, i32 1
  %arrayidx97 = getelementptr inbounds [4 x i64], [4 x i64]* %transfer_ids96, i32 0, i64 3
  store i64 %cond95, i64* %arrayidx97, align 8, !tbaa !57
  %45 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %opacity = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %45, i32 0, i32 13
  %alpha = getelementptr inbounds %struct.gs_transparency_source_s, %struct.gs_transparency_source_s* %opacity, i32 0, i32 0
  %46 = load float, float* %alpha, align 4, !tbaa !119
  %47 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %pvs.addr, align 8, !tbaa !1
  %opacity_alpha = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %47, i32 0, i32 2
  store float %46, float* %opacity_alpha, align 4, !tbaa !61
  %48 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %shape = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %48, i32 0, i32 14
  %alpha98 = getelementptr inbounds %struct.gs_transparency_source_s, %struct.gs_transparency_source_s* %shape, i32 0, i32 0
  %49 = load float, float* %alpha98, align 4, !tbaa !120
  %50 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %pvs.addr, align 8, !tbaa !1
  %shape_alpha = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %50, i32 0, i32 3
  store float %49, float* %shape_alpha, align 4, !tbaa !63
  %51 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %blend_mode = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %51, i32 0, i32 12
  %52 = load i32, i32* %blend_mode, align 4, !tbaa !121
  %53 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %pvs.addr, align 8, !tbaa !1
  %blend_mode99 = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %53, i32 0, i32 4
  store i32 %52, i32* %blend_mode99, align 4, !tbaa !65
  %54 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %dev_ht = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %54, i32 0, i32 41
  %55 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %dev_ht, align 8, !tbaa !122
  %cmp100 = icmp ne %struct.gx_device_halftone_s* %55, null
  br i1 %cmp100, label %cond.true.102, label %cond.false.105

cond.true.102:                                    ; preds = %cond.end.94
  %56 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %dev_ht103 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %56, i32 0, i32 41
  %57 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %dev_ht103, align 8, !tbaa !122
  %id104 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %57, i32 0, i32 2
  %58 = load i64, i64* %id104, align 8, !tbaa !123
  br label %cond.end.106

cond.false.105:                                   ; preds = %cond.end.94
  br label %cond.end.106

cond.end.106:                                     ; preds = %cond.false.105, %cond.true.102
  %cond107 = phi i64 [ %58, %cond.true.102 ], [ 0, %cond.false.105 ]
  %59 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %pvs.addr, align 8, !tbaa !1
  %halftone_id = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %59, i32 0, i32 5
  store i64 %cond107, i64* %halftone_id, align 8, !tbaa !67
  %60 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %black_generation = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %60, i32 0, i32 44
  %61 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %black_generation, align 8, !tbaa !128
  %cmp108 = icmp ne %struct.gx_transfer_map_s* %61, null
  br i1 %cmp108, label %cond.true.110, label %cond.false.113

cond.true.110:                                    ; preds = %cond.end.106
  %62 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %black_generation111 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %62, i32 0, i32 44
  %63 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %black_generation111, align 8, !tbaa !128
  %id112 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %63, i32 0, i32 3
  %64 = load i64, i64* %id112, align 8, !tbaa !118
  br label %cond.end.114

cond.false.113:                                   ; preds = %cond.end.106
  br label %cond.end.114

cond.end.114:                                     ; preds = %cond.false.113, %cond.true.110
  %cond115 = phi i64 [ %64, %cond.true.110 ], [ 0, %cond.false.113 ]
  %65 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %pvs.addr, align 8, !tbaa !1
  %black_generation_id = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %65, i32 0, i32 6
  store i64 %cond115, i64* %black_generation_id, align 8, !tbaa !69
  %66 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %undercolor_removal = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %66, i32 0, i32 45
  %67 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %undercolor_removal, align 8, !tbaa !129
  %cmp116 = icmp ne %struct.gx_transfer_map_s* %67, null
  br i1 %cmp116, label %cond.true.118, label %cond.false.121

cond.true.118:                                    ; preds = %cond.end.114
  %68 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %undercolor_removal119 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %68, i32 0, i32 45
  %69 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %undercolor_removal119, align 8, !tbaa !129
  %id120 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %69, i32 0, i32 3
  %70 = load i64, i64* %id120, align 8, !tbaa !118
  br label %cond.end.122

cond.false.121:                                   ; preds = %cond.end.114
  br label %cond.end.122

cond.end.122:                                     ; preds = %cond.false.121, %cond.true.118
  %cond123 = phi i64 [ %70, %cond.true.118 ], [ 0, %cond.false.121 ]
  %71 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %pvs.addr, align 8, !tbaa !1
  %undercolor_removal_id = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %71, i32 0, i32 7
  store i64 %cond123, i64* %undercolor_removal_id, align 8, !tbaa !71
  %72 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %pvs.addr, align 8, !tbaa !1
  %overprint_mode = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %72, i32 0, i32 8
  store i32 0, i32* %overprint_mode, align 4, !tbaa !73
  %73 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %flatness = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %73, i32 0, i32 27
  %74 = load float, float* %flatness, align 4, !tbaa !130
  %75 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %pvs.addr, align 8, !tbaa !1
  %flatness124 = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %75, i32 0, i32 10
  store float %74, float* %flatness124, align 4, !tbaa !77
  %76 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %smoothness = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %76, i32 0, i32 32
  %77 = load float, float* %smoothness, align 4, !tbaa !131
  %78 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %pvs.addr, align 8, !tbaa !1
  %smoothness125 = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %78, i32 0, i32 9
  store float %77, float* %smoothness125, align 4, !tbaa !75
  %79 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %text_knockout = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %79, i32 0, i32 17
  %80 = load i32, i32* %text_knockout, align 4, !tbaa !132
  %81 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %pvs.addr, align 8, !tbaa !1
  %text_knockout126 = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %81, i32 0, i32 11
  store i32 %80, i32* %text_knockout126, align 4, !tbaa !79
  %82 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %pvs.addr, align 8, !tbaa !1
  %fill_overprint = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %82, i32 0, i32 12
  store i32 0, i32* %fill_overprint, align 4, !tbaa !81
  %83 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %pvs.addr, align 8, !tbaa !1
  %stroke_overprint = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %83, i32 0, i32 13
  store i32 0, i32* %stroke_overprint, align 4, !tbaa !83
  %84 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %pvs.addr, align 8, !tbaa !1
  %stroke_adjust = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %84, i32 0, i32 14
  store i32 0, i32* %stroke_adjust, align 4, !tbaa !85
  %85 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %pvs.addr, align 8, !tbaa !1
  %line_params = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %85, i32 0, i32 19
  %half_width = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params, i32 0, i32 0
  store float 5.000000e-01, float* %half_width, align 4, !tbaa !133
  %86 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %pvs.addr, align 8, !tbaa !1
  %line_params127 = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %86, i32 0, i32 19
  %start_cap = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params127, i32 0, i32 1
  store i32 0, i32* %start_cap, align 4, !tbaa !134
  %87 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %pvs.addr, align 8, !tbaa !1
  %line_params128 = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %87, i32 0, i32 19
  %end_cap = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params128, i32 0, i32 2
  store i32 0, i32* %end_cap, align 4, !tbaa !135
  %88 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %pvs.addr, align 8, !tbaa !1
  %line_params129 = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %88, i32 0, i32 19
  %dash_cap = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params129, i32 0, i32 3
  store i32 0, i32* %dash_cap, align 4, !tbaa !136
  %89 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %pvs.addr, align 8, !tbaa !1
  %line_params130 = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %89, i32 0, i32 19
  %join = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params130, i32 0, i32 4
  store i32 0, i32* %join, align 4, !tbaa !137
  %90 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %pvs.addr, align 8, !tbaa !1
  %line_params131 = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %90, i32 0, i32 19
  %curve_join = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params131, i32 0, i32 5
  store i32 0, i32* %curve_join, align 4, !tbaa !138
  %91 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %pvs.addr, align 8, !tbaa !1
  %line_params132 = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %91, i32 0, i32 19
  %miter_limit = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params132, i32 0, i32 6
  store float 1.000000e+01, float* %miter_limit, align 4, !tbaa !139
  %92 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %pvs.addr, align 8, !tbaa !1
  %line_params133 = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %92, i32 0, i32 19
  %miter_check = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params133, i32 0, i32 7
  store float 0.000000e+00, float* %miter_check, align 4, !tbaa !140
  %93 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %line_params134 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %93, i32 0, i32 3
  %dot_length = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params134, i32 0, i32 8
  %94 = load float, float* %dot_length, align 4, !tbaa !141
  %95 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %pvs.addr, align 8, !tbaa !1
  %line_params135 = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %95, i32 0, i32 19
  %dot_length136 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params135, i32 0, i32 8
  store float %94, float* %dot_length136, align 4, !tbaa !142
  %96 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %line_params137 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %96, i32 0, i32 3
  %dot_length_absolute = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params137, i32 0, i32 9
  %97 = load i32, i32* %dot_length_absolute, align 4, !tbaa !143
  %98 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %pvs.addr, align 8, !tbaa !1
  %line_params138 = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %98, i32 0, i32 19
  %dot_length_absolute139 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params138, i32 0, i32 9
  store i32 %97, i32* %dot_length_absolute139, align 4, !tbaa !144
  %99 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %pvs.addr, align 8, !tbaa !1
  %line_params140 = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %99, i32 0, i32 19
  %dot_orientation = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params140, i32 0, i32 10
  %100 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %line_params141 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %100, i32 0, i32 3
  %dot_orientation142 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params141, i32 0, i32 10
  %101 = bitcast %struct.gs_matrix_s* %dot_orientation to i8*
  %102 = bitcast %struct.gs_matrix_s* %dot_orientation142 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %101, i8* %102, i64 24, i32 4, i1 false), !tbaa.struct !145
  %103 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %pvs.addr, align 8, !tbaa !1
  %line_params143 = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %103, i32 0, i32 19
  %dash = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params143, i32 0, i32 11
  %104 = bitcast %struct.gx_dash_params_s* %dash to i8*
  %call = call i8* @memset(i8* %104, i32 0, i64 40) #8
  %105 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %pvs.addr, align 8, !tbaa !1
  %dash_pattern = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %105, i32 0, i32 20
  store float* null, float** %dash_pattern, align 8, !tbaa !97
  %106 = load %struct.pdf_viewer_state_s*, %struct.pdf_viewer_state_s** %pvs.addr, align 8, !tbaa !1
  %dash_pattern_size = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %106, i32 0, i32 21
  store i32 0, i32* %dash_pattern_size, align 4, !tbaa !101
  ret void
}

; Function Attrs: nounwind uwtable
define void @pdf_prepare_initial_viewer_state(%struct.gx_device_pdf_s* %pdev, %struct.gs_imager_state_s* %pis) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %1 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %vg_initial = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %1, i32 0, i32 196
  %saved_fill_color = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %vg_initial, i32 0, i32 17
  %2 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %vg_initial1 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %2, i32 0, i32 196
  %saved_stroke_color = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %vg_initial1, i32 0, i32 18
  %3 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %vg_initial2 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %3, i32 0, i32 196
  %fill_used_process_color = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %vg_initial2, i32 0, i32 15
  %4 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %vg_initial3 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %4, i32 0, i32 196
  %stroke_used_process_color = getelementptr inbounds %struct.pdf_viewer_state_s, %struct.pdf_viewer_state_s* %vg_initial3, i32 0, i32 16
  call void @pdf_set_initial_color(%struct.gx_device_pdf_s* %0, %struct.gx_hl_saved_color_s* %saved_fill_color, %struct.gx_hl_saved_color_s* %saved_stroke_color, i32* %fill_used_process_color, i32* %stroke_used_process_color) #7
  %5 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %vg_initial4 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %5, i32 0, i32 196
  %6 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  call void @pdf_viewer_state_from_imager_state_aux(%struct.pdf_viewer_state_s* %vg_initial4, %struct.gs_imager_state_s* %6) #7
  %7 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %vg_initial_set = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %7, i32 0, i32 197
  store i32 1, i32* %vg_initial_set, align 4, !tbaa !146
  ret void
}

; Function Attrs: nounwind uwtable
define void @pdf_reset_graphics(%struct.gx_device_pdf_s* %pdev) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %vg_initial_set = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %0, i32 0, i32 197
  %1 = load i32, i32* %vg_initial_set, align 4, !tbaa !146
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %3 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %vg_initial = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %3, i32 0, i32 196
  call void @pdf_load_viewer_state(%struct.gx_device_pdf_s* %2, %struct.pdf_viewer_state_s* %vg_initial) #7
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  call void @pdf_reset_graphics_old(%struct.gx_device_pdf_s* %4) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  call void @pdf_reset_text(%struct.gx_device_pdf_s* %5) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @pdf_reset_graphics_old(%struct.gx_device_pdf_s* %pdev) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %1 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %saved_fill_color = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %1, i32 0, i32 56
  %2 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %saved_stroke_color = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %2, i32 0, i32 57
  %3 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %fill_used_process_color = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %3, i32 0, i32 54
  %4 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %stroke_used_process_color = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %4, i32 0, i32 55
  call void @pdf_set_initial_color(%struct.gx_device_pdf_s* %0, %struct.gx_hl_saved_color_s* %saved_fill_color, %struct.gx_hl_saved_color_s* %saved_stroke_color, i32* %fill_used_process_color, i32* %stroke_used_process_color) #7
  %5 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %state = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %5, i32 0, i32 51
  %flatness = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %state, i32 0, i32 27
  store float -1.000000e+00, float* %flatness, align 4, !tbaa !76
  %6 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %state1 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %6, i32 0, i32 51
  %line_params = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %state1, i32 0, i32 3
  %7 = bitcast %struct.gx_line_params_s* %line_params to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* bitcast (%struct.gx_line_params_s* @pdf_reset_graphics_old.lp_initial to i8*), i64 104, i32 8, i1 false), !tbaa.struct !93
  %8 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %fill_overprint = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %8, i32 0, i32 132
  store i32 0, i32* %fill_overprint, align 4, !tbaa !80
  %9 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %stroke_overprint = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %9, i32 0, i32 133
  store i32 0, i32* %stroke_overprint, align 4, !tbaa !82
  %10 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %remap_fill_color = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %10, i32 0, i32 134
  store i32 0, i32* %remap_fill_color, align 4, !tbaa !147
  %11 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %remap_stroke_color = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %11, i32 0, i32 135
  store i32 0, i32* %remap_stroke_color, align 4, !tbaa !148
  %12 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  call void @pdf_reset_text(%struct.gx_device_pdf_s* %12) #7
  ret void
}

declare void @pdf_reset_text(%struct.gx_device_pdf_s*) #3

; Function Attrs: nounwind uwtable
define i32 @convert_DeviceN_alternate(%struct.gx_device_pdf_s* %pdev, %struct.gs_imager_state_s* %pis, %struct.gs_color_space_s* %pcs, %struct.gx_device_color_s* %pdc, i32* %used_process_color, %struct.psdf_set_color_commands_s* %ppscc, %struct.gs_client_color_s* %pcc, %struct.cos_value_s* %pvalue, i32 %by_name) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pdc.addr = alloca %struct.gx_device_color_s*, align 8
  %used_process_color.addr = alloca i32*, align 8
  %ppscc.addr = alloca %struct.psdf_set_color_commands_s*, align 8
  %pcc.addr = alloca %struct.gs_client_color_s*, align 8
  %pvalue.addr = alloca %struct.cos_value_s*, align 8
  %by_name.addr = alloca i32, align 4
  %csi = alloca i32, align 4
  %new_pfn = alloca %struct.gs_function_s*, align 8
  %code = alloca i32, align 4
  %i = alloca i32, align 4
  %samples = alloca i32, align 4
  %loop = alloca i32, align 4
  %pca = alloca %struct.cos_array_s*, align 8
  %pca1 = alloca %struct.cos_array_s*, align 8
  %v = alloca %struct.cos_value_s, align 8
  %data_buff = alloca i8*, align 8
  %pres = alloca %struct.pdf_resource_s*, align 8
  %pcs_save = alloca %struct.gs_color_space_s*, align 8
  %cleanup.dest.slot = alloca i32
  %conc = alloca [64 x i16], align 16
  %cc = alloca %struct.gs_client_color_s, align 8
  %i15 = alloca i32, align 4
  %icc_space = alloca %struct.gs_color_space_s*, align 8
  %sep_space = alloca %struct.gs_color_space_s*, align 8
  %csi2 = alloca i32, align 4
  %cascade = alloca i32, align 4
  %name_string = alloca i8*, align 8
  %name_string_length = alloca i32, align 4
  %v_attriburtes = alloca %struct.cos_value_s, align 8
  %va = alloca %struct.cos_value_s*, align 8
  %psna = alloca %struct.cos_array_s*, align 8
  %colorants176 = alloca %struct.cos_dict_s*, align 8
  %v_colorants = alloca %struct.cos_value_s, align 8
  %v_separation = alloca %struct.cos_value_s, align 8
  %v_colorant_name = alloca %struct.cos_value_s, align 8
  %csa = alloca %struct.gs_device_n_attributes_s*, align 8
  %pres_attributes = alloca %struct.pdf_resource_s*, align 8
  %ppcs = alloca %struct.pdf_color_space_s*, align 8
  %value = alloca %struct.cos_value_s, align 8
  %ppcs337 = alloca %struct.pdf_color_space_s*, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdc, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  store i32* %used_process_color, i32** %used_process_color.addr, align 8, !tbaa !1
  store %struct.psdf_set_color_commands_s* %ppscc, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  store %struct.gs_client_color_s* %pcc, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  store %struct.cos_value_s* %pvalue, %struct.cos_value_s** %pvalue.addr, align 8, !tbaa !1
  store i32 %by_name, i32* %by_name.addr, align 4, !tbaa !49
  %0 = bitcast i32* %csi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.gs_function_s** %new_pfn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store %struct.gs_function_s* null, %struct.gs_function_s** %new_pfn, align 8, !tbaa !1
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %samples to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 0, i32* %samples, align 4, !tbaa !49
  %5 = bitcast i32* %loop to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast %struct.cos_array_s** %pca to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast %struct.cos_array_s** %pca1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast %struct.cos_value_s* %v to i8*
  call void @llvm.lifetime.start(i64 24, i8* %8) #1
  %9 = bitcast i8** %data_buff to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast %struct.pdf_resource_s** %pres to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store %struct.pdf_resource_s* null, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %11 = bitcast %struct.gs_color_space_s** %pcs_save to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  store %struct.gs_color_space_s* null, %struct.gs_color_space_s** %pcs_save, align 8, !tbaa !1
  %12 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call = call %struct.cos_array_s* @cos_array_alloc(%struct.gx_device_pdf_s* %12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0)) #7
  store %struct.cos_array_s* %call, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %13 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %cmp = icmp eq %struct.cos_array_s* %13, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.437

if.end:                                           ; preds = %entry
  %14 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %14, i32 0, i32 7
  %device_n = bitcast %union.anon* %params to %struct.gs_device_n_params_s*
  %num_components = getelementptr inbounds %struct.gs_device_n_params_s, %struct.gs_device_n_params_s* %device_n, i32 0, i32 1
  %15 = load i32, i32* %num_components, align 4, !tbaa !149
  %conv = uitofp i32 %15 to double
  %call1 = call double @pow(double 2.000000e+00, double %conv) #8
  %conv2 = fptoui double %call1 to i32
  store i32 %conv2, i32* %samples, align 4, !tbaa !49
  %16 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %16, i32 0, i32 3
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !98
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %17, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %18 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !52
  %19 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory3 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %19, i32 0, i32 3
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory3, align 8, !tbaa !98
  %21 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %21, i32 0, i32 11
  %num_components4 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %22 = load i32, i32* %num_components4, align 4, !tbaa !151
  %23 = load i32, i32* %samples, align 4, !tbaa !49
  %mul = mul nsw i32 %22, %23
  %call5 = call i8* %18(%struct.gs_memory_s* %20, i32 %mul, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0)) #7
  store i8* %call5, i8** %data_buff, align 8, !tbaa !1
  %24 = load i8*, i8** %data_buff, align 8, !tbaa !1
  %cmp6 = icmp eq i8* %24, null
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  %25 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %cos_procs = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %25, i32 0, i32 0
  %26 = bitcast %struct.cos_object_procs_s** %cos_procs to %struct.cos_object_s*
  call void @cos_free(%struct.cos_object_s* %26, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0)) #7
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.437

if.end.9:                                         ; preds = %if.end
  %27 = load i8*, i8** %data_buff, align 8, !tbaa !1
  %28 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %color_info10 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %28, i32 0, i32 11
  %num_components11 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info10, i32 0, i32 1
  %29 = load i32, i32* %num_components11, align 4, !tbaa !151
  %30 = load i32, i32* %samples, align 4, !tbaa !49
  %mul12 = mul nsw i32 %29, %30
  %conv13 = sext i32 %mul12 to i64
  %call14 = call i8* @memset(i8* %27, i32 0, i64 %conv13) #8
  %31 = bitcast [64 x i16]* %conc to i8*
  call void @llvm.lifetime.start(i64 128, i8* %31) #1
  %32 = bitcast %struct.gs_client_color_s* %cc to i8*
  call void @llvm.lifetime.start(i64 264, i8* %32) #1
  %33 = bitcast i32* %i15 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #1
  %34 = bitcast %struct.gs_color_space_s** %icc_space to i8*
  call void @llvm.lifetime.start(i64 8, i8* %34) #1
  %35 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %35, %struct.gs_color_space_s** %icc_space, align 8, !tbaa !1
  %36 = bitcast %struct.gs_color_space_s** %sep_space to i8*
  call void @llvm.lifetime.start(i64 8, i8* %36) #1
  %37 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %37, %struct.gs_color_space_s** %sep_space, align 8, !tbaa !1
  %38 = bitcast i32* %csi2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %38) #1
  %39 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %call16 = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %39) #7
  store i32 %call16, i32* %csi, align 4, !tbaa !91
  %40 = load i32, i32* %csi, align 4, !tbaa !91
  %cmp17 = icmp eq i32 %40, 10
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.9
  %41 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %base_space = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %41, i32 0, i32 3
  %42 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space, align 8, !tbaa !152
  store %struct.gs_color_space_s* %42, %struct.gs_color_space_s** %sep_space, align 8, !tbaa !1
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %if.end.9
  br label %do.body

do.body:                                          ; preds = %land.end, %if.end.20
  %43 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_space, align 8, !tbaa !1
  %base_space21 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %43, i32 0, i32 3
  %44 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space21, align 8, !tbaa !152
  store %struct.gs_color_space_s* %44, %struct.gs_color_space_s** %icc_space, align 8, !tbaa !1
  %45 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_space, align 8, !tbaa !1
  %call22 = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %45) #7
  store i32 %call22, i32* %csi2, align 4, !tbaa !91
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %46 = load i32, i32* %csi2, align 4, !tbaa !91
  %cmp23 = icmp ne i32 %46, 12
  br i1 %cmp23, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %47 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_space, align 8, !tbaa !1
  %base_space25 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %47, i32 0, i32 3
  %48 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space25, align 8, !tbaa !152
  %tobool = icmp ne %struct.gs_color_space_s* %48, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %49 = phi i1 [ false, %do.cond ], [ %tobool, %land.rhs ]
  br i1 %49, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  %paint = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint, i32 0, i32 0
  %50 = bitcast [64 x float]* %values to i8*
  %call26 = call i8* @memset(i8* %50, i32 0, i64 64) #8
  store i32 0, i32* %loop, align 4, !tbaa !49
  br label %for.cond

for.cond:                                         ; preds = %for.inc.80, %do.end
  %51 = load i32, i32* %loop, align 4, !tbaa !49
  %52 = load i32, i32* %samples, align 4, !tbaa !49
  %cmp27 = icmp slt i32 %51, %52
  br i1 %cmp27, label %for.body, label %for.end.82

for.body:                                         ; preds = %for.cond
  %53 = load i32, i32* %loop, align 4, !tbaa !49
  %cmp29 = icmp sgt i32 %53, 0
  br i1 %cmp29, label %if.then.31, label %if.end.58

if.then.31:                                       ; preds = %for.body
  %paint32 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values33 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint32, i32 0, i32 0
  %arrayidx = getelementptr inbounds [64 x float], [64 x float]* %values33, i32 0, i64 0
  %54 = load float, float* %arrayidx, align 4, !tbaa !94
  %cmp34 = fcmp oeq float %54, 0.000000e+00
  br i1 %cmp34, label %if.then.36, label %if.else

if.then.36:                                       ; preds = %if.then.31
  %paint37 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values38 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint37, i32 0, i32 0
  %arrayidx39 = getelementptr inbounds [64 x float], [64 x float]* %values38, i32 0, i64 0
  store float 1.000000e+00, float* %arrayidx39, align 4, !tbaa !94
  br label %if.end.57

if.else:                                          ; preds = %if.then.31
  %55 = bitcast i32* %cascade to i8*
  call void @llvm.lifetime.start(i64 4, i8* %55) #1
  store i32 0, i32* %cascade, align 4, !tbaa !49
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else
  %56 = load i32, i32* %cascade, align 4, !tbaa !49
  %idxprom = sext i32 %56 to i64
  %paint40 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values41 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint40, i32 0, i32 0
  %arrayidx42 = getelementptr inbounds [64 x float], [64 x float]* %values41, i32 0, i64 %idxprom
  %57 = load float, float* %arrayidx42, align 4, !tbaa !94
  %cmp43 = fcmp oeq float %57, 1.000000e+00
  br i1 %cmp43, label %land.rhs.45, label %land.end.48

land.rhs.45:                                      ; preds = %while.cond
  %58 = load i32, i32* %cascade, align 4, !tbaa !49
  %59 = load i32, i32* %samples, align 4, !tbaa !49
  %cmp46 = icmp slt i32 %58, %59
  br label %land.end.48

land.end.48:                                      ; preds = %land.rhs.45, %while.cond
  %60 = phi i1 [ false, %while.cond ], [ %cmp46, %land.rhs.45 ]
  br i1 %60, label %while.body, label %while.end

while.body:                                       ; preds = %land.end.48
  %61 = load i32, i32* %cascade, align 4, !tbaa !49
  %inc = add nsw i32 %61, 1
  store i32 %inc, i32* %cascade, align 4, !tbaa !49
  %idxprom49 = sext i32 %61 to i64
  %paint50 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values51 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint50, i32 0, i32 0
  %arrayidx52 = getelementptr inbounds [64 x float], [64 x float]* %values51, i32 0, i64 %idxprom49
  store float 0.000000e+00, float* %arrayidx52, align 4, !tbaa !94
  br label %while.cond

while.end:                                        ; preds = %land.end.48
  %62 = load i32, i32* %cascade, align 4, !tbaa !49
  %idxprom53 = sext i32 %62 to i64
  %paint54 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values55 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint54, i32 0, i32 0
  %arrayidx56 = getelementptr inbounds [64 x float], [64 x float]* %values55, i32 0, i64 %idxprom53
  store float 1.000000e+00, float* %arrayidx56, align 4, !tbaa !94
  %63 = bitcast i32* %cascade to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #1
  br label %if.end.57

if.end.57:                                        ; preds = %while.end, %if.then.36
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %for.body
  %64 = bitcast [64 x i16]* %conc to i8*
  %call59 = call i8* @memset(i8* %64, i32 0, i64 128) #8
  %65 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %sep_space, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %65, i32 0, i32 0
  %66 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !154
  %concretize_color = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %66, i32 0, i32 8
  %67 = load i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)** %concretize_color, align 8, !tbaa !155
  %68 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %sep_space, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [64 x i16], [64 x i16]* %conc, i32 0, i32 0
  %69 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %70 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %71 = bitcast %struct.gx_device_pdf_s* %70 to %struct.gx_device_s*
  %call60 = call i32 %67(%struct.gs_client_color_s* %cc, %struct.gs_color_space_s* %68, i16* %arraydecay, %struct.gs_imager_state_s* %69, %struct.gx_device_s* %71) #7
  store i32 0, i32* %i15, align 4, !tbaa !49
  br label %for.cond.61

for.cond.61:                                      ; preds = %for.inc, %if.end.58
  %72 = load i32, i32* %i15, align 4, !tbaa !49
  %73 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %color_info62 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %73, i32 0, i32 11
  %num_components63 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info62, i32 0, i32 1
  %74 = load i32, i32* %num_components63, align 4, !tbaa !151
  %cmp64 = icmp slt i32 %72, %74
  br i1 %cmp64, label %for.body.66, label %for.end

for.body.66:                                      ; preds = %for.cond.61
  %75 = load i32, i32* %i15, align 4, !tbaa !49
  %idxprom67 = sext i32 %75 to i64
  %arrayidx68 = getelementptr inbounds [64 x i16], [64 x i16]* %conc, i32 0, i64 %idxprom67
  %76 = load i16, i16* %arrayidx68, align 2, !tbaa !92
  %conv69 = sext i16 %76 to i32
  %conv70 = sitofp i32 %conv69 to float
  %div = fdiv float %conv70, 3.276000e+04
  %mul71 = fmul float %div, 2.550000e+02
  %conv72 = fptosi float %mul71 to i32
  %conv73 = trunc i32 %conv72 to i8
  %77 = load i32, i32* %loop, align 4, !tbaa !49
  %78 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %color_info74 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %78, i32 0, i32 11
  %num_components75 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info74, i32 0, i32 1
  %79 = load i32, i32* %num_components75, align 4, !tbaa !151
  %mul76 = mul nsw i32 %77, %79
  %80 = load i32, i32* %i15, align 4, !tbaa !49
  %add = add nsw i32 %mul76, %80
  %idxprom77 = sext i32 %add to i64
  %81 = load i8*, i8** %data_buff, align 8, !tbaa !1
  %arrayidx78 = getelementptr inbounds i8, i8* %81, i64 %idxprom77
  store i8 %conv73, i8* %arrayidx78, align 1, !tbaa !91
  br label %for.inc

for.inc:                                          ; preds = %for.body.66
  %82 = load i32, i32* %i15, align 4, !tbaa !49
  %inc79 = add nsw i32 %82, 1
  store i32 %inc79, i32* %i15, align 4, !tbaa !49
  br label %for.cond.61

for.end:                                          ; preds = %for.cond.61
  br label %for.inc.80

for.inc.80:                                       ; preds = %for.end
  %83 = load i32, i32* %loop, align 4, !tbaa !49
  %inc81 = add nsw i32 %83, 1
  store i32 %inc81, i32* %loop, align 4, !tbaa !49
  br label %for.cond

for.end.82:                                       ; preds = %for.cond
  %84 = bitcast i32* %csi2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #1
  %85 = bitcast %struct.gs_color_space_s** %sep_space to i8*
  call void @llvm.lifetime.end(i64 8, i8* %85) #1
  %86 = bitcast %struct.gs_color_space_s** %icc_space to i8*
  call void @llvm.lifetime.end(i64 8, i8* %86) #1
  %87 = bitcast i32* %i15 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #1
  %88 = bitcast %struct.gs_client_color_s* %cc to i8*
  call void @llvm.lifetime.end(i64 264, i8* %88) #1
  %89 = bitcast [64 x i16]* %conc to i8*
  call void @llvm.lifetime.end(i64 128, i8* %89) #1
  %90 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %params83 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %90, i32 0, i32 73
  %ColorConversionStrategy = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params83, i32 0, i32 17
  %91 = load i32, i32* %ColorConversionStrategy, align 4, !tbaa !157
  switch i32 %91, label %sw.default [
    i32 6, label %sw.bb
    i32 7, label %sw.bb.88
    i32 5, label %sw.bb.93
  ]

sw.bb:                                            ; preds = %for.end.82
  %92 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %93 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params84 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %93, i32 0, i32 7
  %device_n85 = bitcast %union.anon* %params84 to %struct.gs_device_n_params_s*
  %num_components86 = getelementptr inbounds %struct.gs_device_n_params_s, %struct.gs_device_n_params_s* %device_n85, i32 0, i32 1
  %94 = load i32, i32* %num_components86, align 4, !tbaa !149
  %95 = load i8*, i8** %data_buff, align 8, !tbaa !1
  %call87 = call i32 @pdf_make_sampled_base_space_function(%struct.gx_device_pdf_s* %92, %struct.gs_function_s** %new_pfn, i32 %94, i32 1, i8* %95) #7
  store i32 %call87, i32* %code, align 4, !tbaa !49
  br label %sw.epilog

sw.bb.88:                                         ; preds = %for.end.82
  %96 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %97 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params89 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %97, i32 0, i32 7
  %device_n90 = bitcast %union.anon* %params89 to %struct.gs_device_n_params_s*
  %num_components91 = getelementptr inbounds %struct.gs_device_n_params_s, %struct.gs_device_n_params_s* %device_n90, i32 0, i32 1
  %98 = load i32, i32* %num_components91, align 4, !tbaa !149
  %99 = load i8*, i8** %data_buff, align 8, !tbaa !1
  %call92 = call i32 @pdf_make_sampled_base_space_function(%struct.gx_device_pdf_s* %96, %struct.gs_function_s** %new_pfn, i32 %98, i32 3, i8* %99) #7
  store i32 %call92, i32* %code, align 4, !tbaa !49
  br label %sw.epilog

sw.bb.93:                                         ; preds = %for.end.82
  %100 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %101 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params94 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %101, i32 0, i32 7
  %device_n95 = bitcast %union.anon* %params94 to %struct.gs_device_n_params_s*
  %num_components96 = getelementptr inbounds %struct.gs_device_n_params_s, %struct.gs_device_n_params_s* %device_n95, i32 0, i32 1
  %102 = load i32, i32* %num_components96, align 4, !tbaa !149
  %103 = load i8*, i8** %data_buff, align 8, !tbaa !1
  %call97 = call i32 @pdf_make_sampled_base_space_function(%struct.gx_device_pdf_s* %100, %struct.gs_function_s** %new_pfn, i32 %102, i32 4, i8* %103) #7
  store i32 %call97, i32* %code, align 4, !tbaa !49
  br label %sw.epilog

sw.default:                                       ; preds = %for.end.82
  store i32 -15, i32* %code, align 4, !tbaa !49
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.93, %sw.bb.88, %sw.bb
  %104 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory98 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %104, i32 0, i32 3
  %105 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory98, align 8, !tbaa !98
  %procs99 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %105, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs99, i32 0, i32 2
  %106 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !56
  %107 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory100 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %107, i32 0, i32 3
  %108 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory100, align 8, !tbaa !98
  %109 = load i8*, i8** %data_buff, align 8, !tbaa !1
  call void %106(%struct.gs_memory_s* %108, i8* %109, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0)) #7
  %110 = load i32, i32* %code, align 4, !tbaa !49
  %cmp101 = icmp slt i32 %110, 0
  br i1 %cmp101, label %if.then.103, label %if.end.105

if.then.103:                                      ; preds = %sw.epilog
  %111 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %cos_procs104 = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %111, i32 0, i32 0
  %112 = bitcast %struct.cos_object_procs_s** %cos_procs104 to %struct.cos_object_s*
  call void @cos_free(%struct.cos_object_s* %112, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0)) #7
  %113 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %113, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.437

if.end.105:                                       ; preds = %sw.epilog
  %114 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %call106 = call %struct.cos_value_s* @cos_c_string_value(%struct.cos_value_s* %v, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0)) #7
  %call107 = call i32 @cos_array_add(%struct.cos_array_s* %114, %struct.cos_value_s* %call106) #7
  store i32 %call107, i32* %code, align 4, !tbaa !49
  %115 = load i32, i32* %code, align 4, !tbaa !49
  %cmp108 = icmp slt i32 %115, 0
  br i1 %cmp108, label %if.then.110, label %if.end.112

if.then.110:                                      ; preds = %if.end.105
  %116 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %cos_procs111 = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %116, i32 0, i32 0
  %117 = bitcast %struct.cos_object_procs_s** %cos_procs111 to %struct.cos_object_s*
  call void @cos_free(%struct.cos_object_s* %117, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0)) #7
  %118 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %118, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.437

if.end.112:                                       ; preds = %if.end.105
  %119 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %call113 = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %119) #7
  store i32 %call113, i32* %csi, align 4, !tbaa !91
  %120 = load i32, i32* %csi, align 4, !tbaa !91
  %cmp114 = icmp eq i32 %120, 10
  br i1 %cmp114, label %if.then.116, label %if.end.118

if.then.116:                                      ; preds = %if.end.112
  %121 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %121, %struct.gs_color_space_s** %pcs_save, align 8, !tbaa !1
  %122 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %base_space117 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %122, i32 0, i32 3
  %123 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space117, align 8, !tbaa !152
  store %struct.gs_color_space_s* %123, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  br label %if.end.118

if.end.118:                                       ; preds = %if.then.116, %if.end.112
  %124 = load i32, i32* %code, align 4, !tbaa !49
  %cmp119 = icmp sge i32 %124, 0
  br i1 %cmp119, label %if.then.121, label %if.end.288

if.then.121:                                      ; preds = %if.end.118
  %125 = bitcast i8** %name_string to i8*
  call void @llvm.lifetime.start(i64 8, i8* %125) #1
  %126 = bitcast i32* %name_string_length to i8*
  call void @llvm.lifetime.start(i64 4, i8* %126) #1
  %127 = bitcast %struct.cos_value_s* %v_attriburtes to i8*
  call void @llvm.lifetime.start(i64 24, i8* %127) #1
  %128 = bitcast %struct.cos_value_s** %va to i8*
  call void @llvm.lifetime.start(i64 8, i8* %128) #1
  store %struct.cos_value_s* null, %struct.cos_value_s** %va, align 8, !tbaa !1
  %129 = bitcast %struct.cos_array_s** %psna to i8*
  call void @llvm.lifetime.start(i64 8, i8* %129) #1
  %130 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call122 = call %struct.cos_array_s* @cos_array_alloc(%struct.gx_device_pdf_s* %130, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i32 0, i32 0)) #7
  store %struct.cos_array_s* %call122, %struct.cos_array_s** %psna, align 8, !tbaa !1
  %131 = load %struct.cos_array_s*, %struct.cos_array_s** %psna, align 8, !tbaa !1
  %cmp123 = icmp eq %struct.cos_array_s* %131, null
  br i1 %cmp123, label %if.then.125, label %if.end.127

if.then.125:                                      ; preds = %if.then.121
  %132 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %cos_procs126 = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %132, i32 0, i32 0
  %133 = bitcast %struct.cos_object_procs_s** %cos_procs126 to %struct.cos_object_s*
  call void @cos_free(%struct.cos_object_s* %133, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0)) #7
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.281

if.end.127:                                       ; preds = %if.then.121
  store i32 0, i32* %i, align 4, !tbaa !49
  br label %for.cond.128

for.cond.128:                                     ; preds = %for.inc.160, %if.end.127
  %134 = load i32, i32* %i, align 4, !tbaa !49
  %135 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params129 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %135, i32 0, i32 7
  %device_n130 = bitcast %union.anon* %params129 to %struct.gs_device_n_params_s*
  %num_components131 = getelementptr inbounds %struct.gs_device_n_params_s, %struct.gs_device_n_params_s* %device_n130, i32 0, i32 1
  %136 = load i32, i32* %num_components131, align 4, !tbaa !149
  %cmp132 = icmp ult i32 %134, %136
  br i1 %cmp132, label %for.body.134, label %for.end.162

for.body.134:                                     ; preds = %for.cond.128
  %137 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params135 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %137, i32 0, i32 7
  %device_n136 = bitcast %union.anon* %params135 to %struct.gs_device_n_params_s*
  %get_colorname_string = getelementptr inbounds %struct.gs_device_n_params_s, %struct.gs_device_n_params_s* %device_n136, i32 0, i32 5
  %138 = load i32 (%struct.gs_memory_s*, i64, i8**, i32*)*, i32 (%struct.gs_memory_s*, i64, i8**, i32*)** %get_colorname_string, align 8, !tbaa !158
  %139 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory137 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %139, i32 0, i32 3
  %140 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory137, align 8, !tbaa !98
  %141 = load i32, i32* %i, align 4, !tbaa !49
  %idxprom138 = sext i32 %141 to i64
  %142 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params139 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %142, i32 0, i32 7
  %device_n140 = bitcast %union.anon* %params139 to %struct.gs_device_n_params_s*
  %names = getelementptr inbounds %struct.gs_device_n_params_s, %struct.gs_device_n_params_s* %device_n140, i32 0, i32 0
  %143 = load i64*, i64** %names, align 8, !tbaa !159
  %arrayidx141 = getelementptr inbounds i64, i64* %143, i64 %idxprom138
  %144 = load i64, i64* %arrayidx141, align 8, !tbaa !57
  %call142 = call i32 %138(%struct.gs_memory_s* %140, i64 %144, i8** %name_string, i32* %name_string_length) #7
  store i32 %call142, i32* %code, align 4, !tbaa !49
  %145 = load i32, i32* %code, align 4, !tbaa !49
  %cmp143 = icmp slt i32 %145, 0
  br i1 %cmp143, label %if.then.145, label %if.end.147

if.then.145:                                      ; preds = %for.body.134
  %146 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %cos_procs146 = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %146, i32 0, i32 0
  %147 = bitcast %struct.cos_object_procs_s** %cos_procs146 to %struct.cos_object_s*
  call void @cos_free(%struct.cos_object_s* %147, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0)) #7
  %148 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %148, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.281

if.end.147:                                       ; preds = %for.body.134
  %149 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %150 = load i8*, i8** %name_string, align 8, !tbaa !1
  %151 = load i32, i32* %name_string_length, align 4, !tbaa !49
  %call148 = call i32 @pdf_string_to_cos_name(%struct.gx_device_pdf_s* %149, i8* %150, i32 %151, %struct.cos_value_s* %v) #7
  store i32 %call148, i32* %code, align 4, !tbaa !49
  %152 = load i32, i32* %code, align 4, !tbaa !49
  %cmp149 = icmp slt i32 %152, 0
  br i1 %cmp149, label %if.then.151, label %if.end.153

if.then.151:                                      ; preds = %if.end.147
  %153 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %cos_procs152 = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %153, i32 0, i32 0
  %154 = bitcast %struct.cos_object_procs_s** %cos_procs152 to %struct.cos_object_s*
  call void @cos_free(%struct.cos_object_s* %154, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0)) #7
  %155 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %155, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.281

if.end.153:                                       ; preds = %if.end.147
  %156 = load %struct.cos_array_s*, %struct.cos_array_s** %psna, align 8, !tbaa !1
  %call154 = call i32 @cos_array_add_no_copy(%struct.cos_array_s* %156, %struct.cos_value_s* %v) #7
  store i32 %call154, i32* %code, align 4, !tbaa !49
  %157 = load i32, i32* %code, align 4, !tbaa !49
  %cmp155 = icmp slt i32 %157, 0
  br i1 %cmp155, label %if.then.157, label %if.end.159

if.then.157:                                      ; preds = %if.end.153
  %158 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %cos_procs158 = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %158, i32 0, i32 0
  %159 = bitcast %struct.cos_object_procs_s** %cos_procs158 to %struct.cos_object_s*
  call void @cos_free(%struct.cos_object_s* %159, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0)) #7
  %160 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %160, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.281

if.end.159:                                       ; preds = %if.end.153
  br label %for.inc.160

for.inc.160:                                      ; preds = %if.end.159
  %161 = load i32, i32* %i, align 4, !tbaa !49
  %inc161 = add nsw i32 %161, 1
  store i32 %inc161, i32* %i, align 4, !tbaa !49
  br label %for.cond.128

for.end.162:                                      ; preds = %for.cond.128
  %162 = load %struct.cos_array_s*, %struct.cos_array_s** %psna, align 8, !tbaa !1
  %cos_procs163 = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %162, i32 0, i32 0
  %163 = bitcast %struct.cos_object_procs_s** %cos_procs163 to %struct.cos_object_s*
  %call164 = call %struct.cos_value_s* @cos_object_value(%struct.cos_value_s* %v, %struct.cos_object_s* %163) #7
  %164 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %call165 = call i32 @cos_array_add(%struct.cos_array_s* %164, %struct.cos_value_s* %v) #7
  store i32 %call165, i32* %code, align 4, !tbaa !49
  %165 = load i32, i32* %code, align 4, !tbaa !49
  %cmp166 = icmp slt i32 %165, 0
  br i1 %cmp166, label %if.then.168, label %if.end.170

if.then.168:                                      ; preds = %for.end.162
  %166 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %cos_procs169 = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %166, i32 0, i32 0
  %167 = bitcast %struct.cos_object_procs_s** %cos_procs169 to %struct.cos_object_s*
  call void @cos_free(%struct.cos_object_s* %167, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0)) #7
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.281

if.end.170:                                       ; preds = %for.end.162
  %168 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params171 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %168, i32 0, i32 7
  %device_n172 = bitcast %union.anon* %params171 to %struct.gs_device_n_params_s*
  %colorants = getelementptr inbounds %struct.gs_device_n_params_s, %struct.gs_device_n_params_s* %device_n172, i32 0, i32 3
  %169 = load %struct.gs_device_n_attributes_s*, %struct.gs_device_n_attributes_s** %colorants, align 8, !tbaa !160
  %cmp173 = icmp ne %struct.gs_device_n_attributes_s* %169, null
  br i1 %cmp173, label %if.then.175, label %if.end.257

if.then.175:                                      ; preds = %if.end.170
  %170 = bitcast %struct.cos_dict_s** %colorants176 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %170) #1
  %171 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call177 = call %struct.cos_dict_s* @cos_dict_alloc(%struct.gx_device_pdf_s* %171, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i32 0, i32 0)) #7
  store %struct.cos_dict_s* %call177, %struct.cos_dict_s** %colorants176, align 8, !tbaa !1
  %172 = bitcast %struct.cos_value_s* %v_colorants to i8*
  call void @llvm.lifetime.start(i64 24, i8* %172) #1
  %173 = bitcast %struct.cos_value_s* %v_separation to i8*
  call void @llvm.lifetime.start(i64 24, i8* %173) #1
  %174 = bitcast %struct.cos_value_s* %v_colorant_name to i8*
  call void @llvm.lifetime.start(i64 24, i8* %174) #1
  %175 = bitcast %struct.gs_device_n_attributes_s** %csa to i8*
  call void @llvm.lifetime.start(i64 8, i8* %175) #1
  %176 = bitcast %struct.pdf_resource_s** %pres_attributes to i8*
  call void @llvm.lifetime.start(i64 8, i8* %176) #1
  %177 = load %struct.cos_dict_s*, %struct.cos_dict_s** %colorants176, align 8, !tbaa !1
  %cmp178 = icmp eq %struct.cos_dict_s* %177, null
  br i1 %cmp178, label %if.then.180, label %if.end.181

if.then.180:                                      ; preds = %if.then.175
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.181:                                       ; preds = %if.then.175
  %178 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call182 = call i32 @pdf_alloc_resource(%struct.gx_device_pdf_s* %178, i32 5, i64 0, %struct.pdf_resource_s** %pres_attributes, i64 -1) #7
  store i32 %call182, i32* %code, align 4, !tbaa !49
  %179 = load i32, i32* %code, align 4, !tbaa !49
  %cmp183 = icmp slt i32 %179, 0
  br i1 %cmp183, label %if.then.185, label %if.end.187

if.then.185:                                      ; preds = %if.end.181
  %180 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %cos_procs186 = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %180, i32 0, i32 0
  %181 = bitcast %struct.cos_object_procs_s** %cos_procs186 to %struct.cos_object_s*
  call void @cos_free(%struct.cos_object_s* %181, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0)) #7
  %182 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %182, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.187:                                       ; preds = %if.end.181
  %183 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres_attributes, align 8, !tbaa !1
  %object = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %183, i32 0, i32 7
  %184 = load %struct.cos_object_s*, %struct.cos_object_s** %object, align 8, !tbaa !161
  %call188 = call i32 @cos_become(%struct.cos_object_s* %184, %struct.cos_object_procs_s* @cos_dict_procs) #7
  %185 = load %struct.cos_dict_s*, %struct.cos_dict_s** %colorants176, align 8, !tbaa !1
  %cos_procs189 = getelementptr inbounds %struct.cos_dict_s, %struct.cos_dict_s* %185, i32 0, i32 0
  %186 = bitcast %struct.cos_object_procs_s** %cos_procs189 to %struct.cos_object_s*
  %call190 = call %struct.cos_value_s* @cos_object_value(%struct.cos_value_s* %v_colorants, %struct.cos_object_s* %186) #7
  %187 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres_attributes, align 8, !tbaa !1
  %object191 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %187, i32 0, i32 7
  %188 = load %struct.cos_object_s*, %struct.cos_object_s** %object191, align 8, !tbaa !161
  %189 = bitcast %struct.cos_object_s* %188 to %struct.cos_dict_s*
  %call192 = call i32 @cos_dict_put(%struct.cos_dict_s* %189, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i32 10, %struct.cos_value_s* %v_colorants) #7
  store i32 %call192, i32* %code, align 4, !tbaa !49
  %190 = load i32, i32* %code, align 4, !tbaa !49
  %cmp193 = icmp slt i32 %190, 0
  br i1 %cmp193, label %if.then.195, label %if.end.197

if.then.195:                                      ; preds = %if.end.187
  %191 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %cos_procs196 = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %191, i32 0, i32 0
  %192 = bitcast %struct.cos_object_procs_s** %cos_procs196 to %struct.cos_object_s*
  call void @cos_free(%struct.cos_object_s* %192, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0)) #7
  %193 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %193, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.197:                                       ; preds = %if.end.187
  %194 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params198 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %194, i32 0, i32 7
  %device_n199 = bitcast %union.anon* %params198 to %struct.gs_device_n_params_s*
  %colorants200 = getelementptr inbounds %struct.gs_device_n_params_s, %struct.gs_device_n_params_s* %device_n199, i32 0, i32 3
  %195 = load %struct.gs_device_n_attributes_s*, %struct.gs_device_n_attributes_s** %colorants200, align 8, !tbaa !160
  store %struct.gs_device_n_attributes_s* %195, %struct.gs_device_n_attributes_s** %csa, align 8, !tbaa !1
  br label %for.cond.201

for.cond.201:                                     ; preds = %for.inc.235, %if.end.197
  %196 = load %struct.gs_device_n_attributes_s*, %struct.gs_device_n_attributes_s** %csa, align 8, !tbaa !1
  %cmp202 = icmp ne %struct.gs_device_n_attributes_s* %196, null
  br i1 %cmp202, label %for.body.204, label %for.end.236

for.body.204:                                     ; preds = %for.cond.201
  %197 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params205 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %197, i32 0, i32 7
  %device_n206 = bitcast %union.anon* %params205 to %struct.gs_device_n_params_s*
  %get_colorname_string207 = getelementptr inbounds %struct.gs_device_n_params_s, %struct.gs_device_n_params_s* %device_n206, i32 0, i32 5
  %198 = load i32 (%struct.gs_memory_s*, i64, i8**, i32*)*, i32 (%struct.gs_memory_s*, i64, i8**, i32*)** %get_colorname_string207, align 8, !tbaa !158
  %199 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory208 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %199, i32 0, i32 3
  %200 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory208, align 8, !tbaa !98
  %201 = load %struct.gs_device_n_attributes_s*, %struct.gs_device_n_attributes_s** %csa, align 8, !tbaa !1
  %colorant_name = getelementptr inbounds %struct.gs_device_n_attributes_s, %struct.gs_device_n_attributes_s* %201, i32 0, i32 1
  %202 = load i64, i64* %colorant_name, align 8, !tbaa !163
  %call209 = call i32 %198(%struct.gs_memory_s* %200, i64 %202, i8** %name_string, i32* %name_string_length) #7
  store i32 %call209, i32* %code, align 4, !tbaa !49
  %203 = load i32, i32* %code, align 4, !tbaa !49
  %cmp210 = icmp slt i32 %203, 0
  br i1 %cmp210, label %if.then.212, label %if.end.214

if.then.212:                                      ; preds = %for.body.204
  %204 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %cos_procs213 = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %204, i32 0, i32 0
  %205 = bitcast %struct.cos_object_procs_s** %cos_procs213 to %struct.cos_object_s*
  call void @cos_free(%struct.cos_object_s* %205, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0)) #7
  %206 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %206, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.214:                                       ; preds = %for.body.204
  %207 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %208 = load %struct.gs_device_n_attributes_s*, %struct.gs_device_n_attributes_s** %csa, align 8, !tbaa !1
  %cspace = getelementptr inbounds %struct.gs_device_n_attributes_s, %struct.gs_device_n_attributes_s* %208, i32 0, i32 2
  %209 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %cspace, align 8, !tbaa !165
  %call215 = call i32 @pdf_color_space_named(%struct.gx_device_pdf_s* %207, %struct.cos_value_s* %v_separation, %struct.gs_range_s** null, %struct.gs_color_space_s* %209, %struct.pdf_color_space_names_s* @pdf_color_space_names, i32 0, i8* null, i32 0, i32 0) #7
  store i32 %call215, i32* %code, align 4, !tbaa !49
  %210 = load i32, i32* %code, align 4, !tbaa !49
  %cmp216 = icmp slt i32 %210, 0
  br i1 %cmp216, label %if.then.218, label %if.end.220

if.then.218:                                      ; preds = %if.end.214
  %211 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %cos_procs219 = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %211, i32 0, i32 0
  %212 = bitcast %struct.cos_object_procs_s** %cos_procs219 to %struct.cos_object_s*
  call void @cos_free(%struct.cos_object_s* %212, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0)) #7
  %213 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %213, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.220:                                       ; preds = %if.end.214
  %214 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %215 = load i8*, i8** %name_string, align 8, !tbaa !1
  %216 = load i32, i32* %name_string_length, align 4, !tbaa !49
  %call221 = call i32 @pdf_string_to_cos_name(%struct.gx_device_pdf_s* %214, i8* %215, i32 %216, %struct.cos_value_s* %v_colorant_name) #7
  store i32 %call221, i32* %code, align 4, !tbaa !49
  %217 = load i32, i32* %code, align 4, !tbaa !49
  %cmp222 = icmp slt i32 %217, 0
  br i1 %cmp222, label %if.then.224, label %if.end.226

if.then.224:                                      ; preds = %if.end.220
  %218 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %cos_procs225 = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %218, i32 0, i32 0
  %219 = bitcast %struct.cos_object_procs_s** %cos_procs225 to %struct.cos_object_s*
  call void @cos_free(%struct.cos_object_s* %219, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0)) #7
  %220 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %220, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.226:                                       ; preds = %if.end.220
  %221 = load %struct.cos_dict_s*, %struct.cos_dict_s** %colorants176, align 8, !tbaa !1
  %contents = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %v_colorant_name, i32 0, i32 1
  %chars = bitcast %union.vc_* %contents to %struct.gs_string_s*
  %data = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %chars, i32 0, i32 0
  %222 = load i8*, i8** %data, align 8, !tbaa !166
  %contents227 = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %v_colorant_name, i32 0, i32 1
  %chars228 = bitcast %union.vc_* %contents227 to %struct.gs_string_s*
  %size = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %chars228, i32 0, i32 1
  %223 = load i32, i32* %size, align 4, !tbaa !168
  %call229 = call i32 @cos_dict_put(%struct.cos_dict_s* %221, i8* %222, i32 %223, %struct.cos_value_s* %v_separation) #7
  store i32 %call229, i32* %code, align 4, !tbaa !49
  %224 = load i32, i32* %code, align 4, !tbaa !49
  %cmp230 = icmp slt i32 %224, 0
  br i1 %cmp230, label %if.then.232, label %if.end.234

if.then.232:                                      ; preds = %if.end.226
  %225 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %cos_procs233 = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %225, i32 0, i32 0
  %226 = bitcast %struct.cos_object_procs_s** %cos_procs233 to %struct.cos_object_s*
  call void @cos_free(%struct.cos_object_s* %226, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0)) #7
  %227 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %227, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.234:                                       ; preds = %if.end.226
  br label %for.inc.235

for.inc.235:                                      ; preds = %if.end.234
  %228 = load %struct.gs_device_n_attributes_s*, %struct.gs_device_n_attributes_s** %csa, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.gs_device_n_attributes_s, %struct.gs_device_n_attributes_s* %228, i32 0, i32 3
  %229 = load %struct.gs_device_n_attributes_s*, %struct.gs_device_n_attributes_s** %next, align 8, !tbaa !169
  store %struct.gs_device_n_attributes_s* %229, %struct.gs_device_n_attributes_s** %csa, align 8, !tbaa !1
  br label %for.cond.201

for.end.236:                                      ; preds = %for.cond.201
  %230 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call237 = call i32 @pdf_substitute_resource(%struct.gx_device_pdf_s* %230, %struct.pdf_resource_s** %pres_attributes, i32 5, i32 (%struct.gx_device_pdf_s*, %struct.pdf_resource_s*, %struct.pdf_resource_s*)* null, i32 1) #7
  store i32 %call237, i32* %code, align 4, !tbaa !49
  %231 = load i32, i32* %code, align 4, !tbaa !49
  %cmp238 = icmp slt i32 %231, 0
  br i1 %cmp238, label %if.then.240, label %if.end.242

if.then.240:                                      ; preds = %for.end.236
  %232 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %cos_procs241 = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %232, i32 0, i32 0
  %233 = bitcast %struct.cos_object_procs_s** %cos_procs241 to %struct.cos_object_s*
  call void @cos_free(%struct.cos_object_s* %233, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0)) #7
  %234 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %234, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.242:                                       ; preds = %for.end.236
  %235 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %used_mask = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %235, i32 0, i32 164
  %236 = load i64, i64* %used_mask, align 8, !tbaa !170
  %237 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres_attributes, align 8, !tbaa !1
  %where_used = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %237, i32 0, i32 6
  %238 = load i64, i64* %where_used, align 8, !tbaa !171
  %or = or i64 %238, %236
  store i64 %or, i64* %where_used, align 8, !tbaa !171
  store %struct.cos_value_s* %v_attriburtes, %struct.cos_value_s** %va, align 8, !tbaa !1
  %239 = load %struct.cos_value_s*, %struct.cos_value_s** %va, align 8, !tbaa !1
  %240 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres_attributes, align 8, !tbaa !1
  %object243 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %240, i32 0, i32 7
  %241 = load %struct.cos_object_s*, %struct.cos_object_s** %object243, align 8, !tbaa !161
  %cos_procs244 = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %241, i32 0, i32 0
  %242 = bitcast %struct.cos_object_procs_s** %cos_procs244 to %struct.cos_object_s*
  %call245 = call %struct.cos_value_s* @cos_object_value(%struct.cos_value_s* %239, %struct.cos_object_s* %242) #7
  %243 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %244 = load %struct.cos_value_s*, %struct.cos_value_s** %va, align 8, !tbaa !1
  %call246 = call i32 @cos_array_add(%struct.cos_array_s* %243, %struct.cos_value_s* %244) #7
  store i32 %call246, i32* %code, align 4, !tbaa !49
  %245 = load i32, i32* %code, align 4, !tbaa !49
  %cmp247 = icmp slt i32 %245, 0
  br i1 %cmp247, label %if.then.249, label %if.end.251

if.then.249:                                      ; preds = %if.end.242
  %246 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %cos_procs250 = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %246, i32 0, i32 0
  %247 = bitcast %struct.cos_object_procs_s** %cos_procs250 to %struct.cos_object_s*
  call void @cos_free(%struct.cos_object_s* %247, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0)) #7
  %248 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %248, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.251:                                       ; preds = %if.end.242
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.251, %if.then.249, %if.then.240, %if.then.232, %if.then.224, %if.then.218, %if.then.212, %if.then.195, %if.then.185, %if.then.180
  %249 = bitcast %struct.pdf_resource_s** %pres_attributes to i8*
  call void @llvm.lifetime.end(i64 8, i8* %249) #1
  %250 = bitcast %struct.gs_device_n_attributes_s** %csa to i8*
  call void @llvm.lifetime.end(i64 8, i8* %250) #1
  %251 = bitcast %struct.cos_value_s* %v_colorant_name to i8*
  call void @llvm.lifetime.end(i64 24, i8* %251) #1
  %252 = bitcast %struct.cos_value_s* %v_separation to i8*
  call void @llvm.lifetime.end(i64 24, i8* %252) #1
  %253 = bitcast %struct.cos_value_s* %v_colorants to i8*
  call void @llvm.lifetime.end(i64 24, i8* %253) #1
  %254 = bitcast %struct.cos_dict_s** %colorants176 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %254) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.281 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.257

if.end.257:                                       ; preds = %cleanup.cont, %if.end.170
  %255 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %params258 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %255, i32 0, i32 73
  %ColorConversionStrategy259 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params258, i32 0, i32 17
  %256 = load i32, i32* %ColorConversionStrategy259, align 4, !tbaa !157
  switch i32 %256, label %sw.default.266 [
    i32 6, label %sw.bb.260
    i32 7, label %sw.bb.262
    i32 5, label %sw.bb.264
  ]

sw.bb.260:                                        ; preds = %if.end.257
  %257 = load i8*, i8** getelementptr inbounds (%struct.pdf_color_space_names_s, %struct.pdf_color_space_names_s* @pdf_color_space_names, i32 0, i32 1), align 8, !tbaa !172
  %call261 = call %struct.cos_value_s* @cos_c_string_value(%struct.cos_value_s* %v, i8* %257) #7
  br label %sw.epilog.267

sw.bb.262:                                        ; preds = %if.end.257
  %258 = load i8*, i8** getelementptr inbounds (%struct.pdf_color_space_names_s, %struct.pdf_color_space_names_s* @pdf_color_space_names, i32 0, i32 2), align 8, !tbaa !174
  %call263 = call %struct.cos_value_s* @cos_c_string_value(%struct.cos_value_s* %v, i8* %258) #7
  br label %sw.epilog.267

sw.bb.264:                                        ; preds = %if.end.257
  %259 = load i8*, i8** getelementptr inbounds (%struct.pdf_color_space_names_s, %struct.pdf_color_space_names_s* @pdf_color_space_names, i32 0, i32 0), align 8, !tbaa !175
  %call265 = call %struct.cos_value_s* @cos_c_string_value(%struct.cos_value_s* %v, i8* %259) #7
  br label %sw.epilog.267

sw.default.266:                                   ; preds = %if.end.257
  br label %sw.epilog.267

sw.epilog.267:                                    ; preds = %sw.default.266, %sw.bb.264, %sw.bb.262, %sw.bb.260
  %260 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %call268 = call i32 @cos_array_add(%struct.cos_array_s* %260, %struct.cos_value_s* %v) #7
  store i32 %call268, i32* %code, align 4, !tbaa !49
  %261 = load i32, i32* %code, align 4, !tbaa !49
  %cmp269 = icmp sge i32 %261, 0
  br i1 %cmp269, label %if.then.271, label %if.end.280

if.then.271:                                      ; preds = %sw.epilog.267
  %262 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %263 = load %struct.gs_function_s*, %struct.gs_function_s** %new_pfn, align 8, !tbaa !1
  %call272 = call i32 @pdf_function_scaled(%struct.gx_device_pdf_s* %262, %struct.gs_function_s* %263, %struct.gs_range_s* null, %struct.cos_value_s* %v) #7
  store i32 %call272, i32* %code, align 4, !tbaa !49
  %264 = load i32, i32* %code, align 4, !tbaa !49
  %cmp273 = icmp sge i32 %264, 0
  br i1 %cmp273, label %if.then.275, label %if.else.277

if.then.275:                                      ; preds = %if.then.271
  %265 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %call276 = call i32 @cos_array_add(%struct.cos_array_s* %265, %struct.cos_value_s* %v) #7
  store i32 %call276, i32* %code, align 4, !tbaa !49
  br label %if.end.279

if.else.277:                                      ; preds = %if.then.271
  %266 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %cos_procs278 = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %266, i32 0, i32 0
  %267 = bitcast %struct.cos_object_procs_s** %cos_procs278 to %struct.cos_object_s*
  call void @cos_free(%struct.cos_object_s* %267, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0)) #7
  %268 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %268, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.281

if.end.279:                                       ; preds = %if.then.275
  br label %if.end.280

if.end.280:                                       ; preds = %if.end.279, %sw.epilog.267
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.281

cleanup.281:                                      ; preds = %if.end.280, %if.else.277, %cleanup, %if.then.168, %if.then.157, %if.then.151, %if.then.145, %if.then.125
  %269 = bitcast %struct.cos_array_s** %psna to i8*
  call void @llvm.lifetime.end(i64 8, i8* %269) #1
  %270 = bitcast %struct.cos_value_s** %va to i8*
  call void @llvm.lifetime.end(i64 8, i8* %270) #1
  %271 = bitcast %struct.cos_value_s* %v_attriburtes to i8*
  call void @llvm.lifetime.end(i64 24, i8* %271) #1
  %272 = bitcast i32* %name_string_length to i8*
  call void @llvm.lifetime.end(i64 4, i8* %272) #1
  %273 = bitcast i8** %name_string to i8*
  call void @llvm.lifetime.end(i64 8, i8* %273) #1
  %cleanup.dest.286 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.286, label %cleanup.437 [
    i32 0, label %cleanup.cont.287
  ]

cleanup.cont.287:                                 ; preds = %cleanup.281
  br label %if.end.288

if.end.288:                                       ; preds = %cleanup.cont.287, %if.end.118
  %274 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %275 = load %struct.gs_function_s*, %struct.gs_function_s** %new_pfn, align 8, !tbaa !1
  %call289 = call i32 @pdf_delete_sampled_base_space_function(%struct.gx_device_pdf_s* %274, %struct.gs_function_s* %275) #7
  %276 = bitcast %struct.pdf_color_space_s** %ppcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %276) #1
  %277 = load i32, i32* %code, align 4, !tbaa !49
  %cmp290 = icmp slt i32 %277, 0
  br i1 %cmp290, label %if.then.295, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.288
  %278 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %279 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %id = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %279, i32 0, i32 2
  %280 = load i64, i64* %id, align 8, !tbaa !176
  %call292 = call i32 @pdf_alloc_resource(%struct.gx_device_pdf_s* %278, i32 0, i64 %280, %struct.pdf_resource_s** %pres, i64 -1) #7
  store i32 %call292, i32* %code, align 4, !tbaa !49
  %cmp293 = icmp slt i32 %call292, 0
  br i1 %cmp293, label %if.then.295, label %if.end.297

if.then.295:                                      ; preds = %lor.lhs.false, %if.end.288
  %281 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %cos_procs296 = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %281, i32 0, i32 0
  %282 = bitcast %struct.cos_object_procs_s** %cos_procs296 to %struct.cos_object_s*
  call void @cos_free(%struct.cos_object_s* %282, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0)) #7
  %283 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %283, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.315

if.end.297:                                       ; preds = %lor.lhs.false
  %284 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %285 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  call void @pdf_reserve_object_id(%struct.gx_device_pdf_s* %284, %struct.pdf_resource_s* %285, i64 0) #7
  %286 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %287 = bitcast %struct.pdf_resource_s* %286 to %struct.pdf_color_space_s*
  store %struct.pdf_color_space_s* %287, %struct.pdf_color_space_s** %ppcs, align 8, !tbaa !1
  %288 = load %struct.pdf_color_space_s*, %struct.pdf_color_space_s** %ppcs, align 8, !tbaa !1
  %serialized = getelementptr inbounds %struct.pdf_color_space_s, %struct.pdf_color_space_s* %288, i32 0, i32 10
  store i8* null, i8** %serialized, align 8, !tbaa !177
  %289 = load %struct.pdf_color_space_s*, %struct.pdf_color_space_s** %ppcs, align 8, !tbaa !1
  %serialized_size = getelementptr inbounds %struct.pdf_color_space_s, %struct.pdf_color_space_s* %289, i32 0, i32 9
  store i32 0, i32* %serialized_size, align 4, !tbaa !179
  %290 = load %struct.pdf_color_space_s*, %struct.pdf_color_space_s** %ppcs, align 8, !tbaa !1
  %ranges = getelementptr inbounds %struct.pdf_color_space_s, %struct.pdf_color_space_s* %290, i32 0, i32 8
  store %struct.gs_range_s* null, %struct.gs_range_s** %ranges, align 8, !tbaa !180
  %291 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %object298 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %291, i32 0, i32 7
  %292 = load %struct.cos_object_s*, %struct.cos_object_s** %object298, align 8, !tbaa !161
  %id299 = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %292, i32 0, i32 1
  %293 = load i64, i64* %id299, align 8, !tbaa !181
  %294 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %id300 = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %294, i32 0, i32 1
  store i64 %293, i64* %id300, align 8, !tbaa !184
  %295 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %object301 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %295, i32 0, i32 7
  %296 = load %struct.cos_object_s*, %struct.cos_object_s** %object301, align 8, !tbaa !161
  %cos_procs302 = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %296, i32 0, i32 0
  %297 = bitcast %struct.cos_object_procs_s** %cos_procs302 to %struct.cos_object_s*
  call void @cos_free(%struct.cos_object_s* %297, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0)) #7
  %298 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %299 = bitcast %struct.cos_array_s* %298 to %struct.cos_object_s*
  %300 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %object303 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %300, i32 0, i32 7
  store %struct.cos_object_s* %299, %struct.cos_object_s** %object303, align 8, !tbaa !161
  %301 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %cos_procs304 = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %301, i32 0, i32 0
  %302 = bitcast %struct.cos_object_procs_s** %cos_procs304 to %struct.cos_object_s*
  %303 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call305 = call i32 @cos_write_object(%struct.cos_object_s* %302, %struct.gx_device_pdf_s* %303, i32 0) #7
  %304 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %call306 = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %304) #7
  store i32 %call306, i32* %csi, align 4, !tbaa !91
  %305 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_save, align 8, !tbaa !1
  %cmp307 = icmp eq %struct.gs_color_space_s* %305, null
  br i1 %cmp307, label %land.lhs.true, label %if.end.314

land.lhs.true:                                    ; preds = %if.end.297
  %306 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %cmp309 = icmp ne %struct.psdf_set_color_commands_s* %306, null
  br i1 %cmp309, label %if.then.311, label %if.end.314

if.then.311:                                      ; preds = %land.lhs.true
  %307 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %307, i32 0, i32 47
  %308 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !186
  %309 = load %struct.pdf_color_space_s*, %struct.pdf_color_space_s** %ppcs, align 8, !tbaa !1
  %rname = getelementptr inbounds %struct.pdf_color_space_s, %struct.pdf_color_space_s* %309, i32 0, i32 5
  %arraydecay312 = getelementptr inbounds [24 x i8], [24 x i8]* %rname, i32 0, i32 0
  %call313 = call i8* @pprints1(%struct.stream_s* %308, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* %arraydecay312) #7
  br label %if.end.314

if.end.314:                                       ; preds = %if.then.311, %land.lhs.true, %if.end.297
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.315

cleanup.315:                                      ; preds = %if.end.314, %if.then.295
  %310 = bitcast %struct.pdf_color_space_s** %ppcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %310) #1
  %cleanup.dest.316 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.316, label %cleanup.437 [
    i32 0, label %cleanup.cont.317
  ]

cleanup.cont.317:                                 ; preds = %cleanup.315
  %311 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %cmp318 = icmp ne %struct.pdf_resource_s* %311, null
  br i1 %cmp318, label %if.then.320, label %if.end.329

if.then.320:                                      ; preds = %cleanup.cont.317
  %312 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %used_mask321 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %312, i32 0, i32 164
  %313 = load i64, i64* %used_mask321, align 8, !tbaa !170
  %314 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %where_used322 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %314, i32 0, i32 6
  %315 = load i64, i64* %where_used322, align 8, !tbaa !171
  %or323 = or i64 %315, %313
  store i64 %or323, i64* %where_used322, align 8, !tbaa !171
  %316 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %317 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %substream_Resources = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %317, i32 0, i32 205
  %318 = load %struct.cos_dict_s*, %struct.cos_dict_s** %substream_Resources, align 8, !tbaa !187
  %319 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %call324 = call i32 @pdf_add_resource(%struct.gx_device_pdf_s* %316, %struct.cos_dict_s* %318, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), %struct.pdf_resource_s* %319) #7
  store i32 %call324, i32* %code, align 4, !tbaa !49
  %320 = load i32, i32* %code, align 4, !tbaa !49
  %cmp325 = icmp slt i32 %320, 0
  br i1 %cmp325, label %if.then.327, label %if.end.328

if.then.327:                                      ; preds = %if.then.320
  %321 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %321, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.437

if.end.328:                                       ; preds = %if.then.320
  br label %if.end.329

if.end.329:                                       ; preds = %if.end.328, %cleanup.cont.317
  %322 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_save, align 8, !tbaa !1
  %cmp330 = icmp ne %struct.gs_color_space_s* %322, null
  br i1 %cmp330, label %if.then.332, label %if.end.386

if.then.332:                                      ; preds = %if.end.329
  %323 = bitcast %struct.cos_value_s* %value to i8*
  call void @llvm.lifetime.start(i64 24, i8* %323) #1
  %324 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_save, align 8, !tbaa !1
  store %struct.gs_color_space_s* %324, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %325 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %cos_procs333 = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %325, i32 0, i32 0
  %326 = bitcast %struct.cos_object_procs_s** %cos_procs333 to %struct.cos_object_s*
  %call334 = call %struct.cos_value_s* @cos_object_value(%struct.cos_value_s* %value, %struct.cos_object_s* %326) #7
  %327 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call335 = call %struct.cos_array_s* @cos_array_alloc(%struct.gx_device_pdf_s* %327, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0)) #7
  store %struct.cos_array_s* %call335, %struct.cos_array_s** %pca1, align 8, !tbaa !1
  %328 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %329 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %330 = load %struct.cos_array_s*, %struct.cos_array_s** %pca1, align 8, !tbaa !1
  %call336 = call i32 @pdf_indexed_color_space(%struct.gx_device_pdf_s* %328, %struct.cos_value_s* %value, %struct.gs_color_space_s* %329, %struct.cos_array_s* %330, %struct.cos_value_s* %value) #7
  store i32 %call336, i32* %code, align 4, !tbaa !49
  %331 = load %struct.cos_array_s*, %struct.cos_array_s** %pca1, align 8, !tbaa !1
  store %struct.cos_array_s* %331, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %332 = bitcast %struct.pdf_color_space_s** %ppcs337 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %332) #1
  %333 = load i32, i32* %code, align 4, !tbaa !49
  %cmp338 = icmp slt i32 %333, 0
  br i1 %cmp338, label %if.then.345, label %lor.lhs.false.340

lor.lhs.false.340:                                ; preds = %if.then.332
  %334 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %335 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %id341 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %335, i32 0, i32 2
  %336 = load i64, i64* %id341, align 8, !tbaa !176
  %call342 = call i32 @pdf_alloc_resource(%struct.gx_device_pdf_s* %334, i32 0, i64 %336, %struct.pdf_resource_s** %pres, i64 -1) #7
  store i32 %call342, i32* %code, align 4, !tbaa !49
  %cmp343 = icmp slt i32 %call342, 0
  br i1 %cmp343, label %if.then.345, label %if.end.347

if.then.345:                                      ; preds = %lor.lhs.false.340, %if.then.332
  %337 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %cos_procs346 = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %337, i32 0, i32 0
  %338 = bitcast %struct.cos_object_procs_s** %cos_procs346 to %struct.cos_object_s*
  call void @cos_free(%struct.cos_object_s* %338, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0)) #7
  %339 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %339, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.367

if.end.347:                                       ; preds = %lor.lhs.false.340
  %340 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %341 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  call void @pdf_reserve_object_id(%struct.gx_device_pdf_s* %340, %struct.pdf_resource_s* %341, i64 0) #7
  %342 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %343 = bitcast %struct.pdf_resource_s* %342 to %struct.pdf_color_space_s*
  store %struct.pdf_color_space_s* %343, %struct.pdf_color_space_s** %ppcs337, align 8, !tbaa !1
  %344 = load %struct.pdf_color_space_s*, %struct.pdf_color_space_s** %ppcs337, align 8, !tbaa !1
  %serialized348 = getelementptr inbounds %struct.pdf_color_space_s, %struct.pdf_color_space_s* %344, i32 0, i32 10
  store i8* null, i8** %serialized348, align 8, !tbaa !177
  %345 = load %struct.pdf_color_space_s*, %struct.pdf_color_space_s** %ppcs337, align 8, !tbaa !1
  %serialized_size349 = getelementptr inbounds %struct.pdf_color_space_s, %struct.pdf_color_space_s* %345, i32 0, i32 9
  store i32 0, i32* %serialized_size349, align 4, !tbaa !179
  %346 = load %struct.pdf_color_space_s*, %struct.pdf_color_space_s** %ppcs337, align 8, !tbaa !1
  %ranges350 = getelementptr inbounds %struct.pdf_color_space_s, %struct.pdf_color_space_s* %346, i32 0, i32 8
  store %struct.gs_range_s* null, %struct.gs_range_s** %ranges350, align 8, !tbaa !180
  %347 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %object351 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %347, i32 0, i32 7
  %348 = load %struct.cos_object_s*, %struct.cos_object_s** %object351, align 8, !tbaa !161
  %id352 = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %348, i32 0, i32 1
  %349 = load i64, i64* %id352, align 8, !tbaa !181
  %350 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %id353 = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %350, i32 0, i32 1
  store i64 %349, i64* %id353, align 8, !tbaa !184
  %351 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %object354 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %351, i32 0, i32 7
  %352 = load %struct.cos_object_s*, %struct.cos_object_s** %object354, align 8, !tbaa !161
  %cos_procs355 = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %352, i32 0, i32 0
  %353 = bitcast %struct.cos_object_procs_s** %cos_procs355 to %struct.cos_object_s*
  call void @cos_free(%struct.cos_object_s* %353, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0)) #7
  %354 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %355 = bitcast %struct.cos_array_s* %354 to %struct.cos_object_s*
  %356 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %object356 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %356, i32 0, i32 7
  store %struct.cos_object_s* %355, %struct.cos_object_s** %object356, align 8, !tbaa !161
  %357 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %cos_procs357 = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %357, i32 0, i32 0
  %358 = bitcast %struct.cos_object_procs_s** %cos_procs357 to %struct.cos_object_s*
  %359 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call358 = call i32 @cos_write_object(%struct.cos_object_s* %358, %struct.gx_device_pdf_s* %359, i32 0) #7
  %360 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %cmp359 = icmp ne %struct.psdf_set_color_commands_s* %360, null
  br i1 %cmp359, label %if.then.361, label %if.end.366

if.then.361:                                      ; preds = %if.end.347
  %361 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm362 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %361, i32 0, i32 47
  %362 = load %struct.stream_s*, %struct.stream_s** %strm362, align 8, !tbaa !186
  %363 = load %struct.pdf_color_space_s*, %struct.pdf_color_space_s** %ppcs337, align 8, !tbaa !1
  %rname363 = getelementptr inbounds %struct.pdf_color_space_s, %struct.pdf_color_space_s* %363, i32 0, i32 5
  %arraydecay364 = getelementptr inbounds [24 x i8], [24 x i8]* %rname363, i32 0, i32 0
  %call365 = call i8* @pprints1(%struct.stream_s* %362, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* %arraydecay364) #7
  br label %if.end.366

if.end.366:                                       ; preds = %if.then.361, %if.end.347
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.367

cleanup.367:                                      ; preds = %if.end.366, %if.then.345
  %364 = bitcast %struct.pdf_color_space_s** %ppcs337 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %364) #1
  %cleanup.dest.368 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.368, label %cleanup.383 [
    i32 0, label %cleanup.cont.369
  ]

cleanup.cont.369:                                 ; preds = %cleanup.367
  %365 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %cmp370 = icmp ne %struct.pdf_resource_s* %365, null
  br i1 %cmp370, label %if.then.372, label %if.end.382

if.then.372:                                      ; preds = %cleanup.cont.369
  %366 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %used_mask373 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %366, i32 0, i32 164
  %367 = load i64, i64* %used_mask373, align 8, !tbaa !170
  %368 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %where_used374 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %368, i32 0, i32 6
  %369 = load i64, i64* %where_used374, align 8, !tbaa !171
  %or375 = or i64 %369, %367
  store i64 %or375, i64* %where_used374, align 8, !tbaa !171
  %370 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %371 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %substream_Resources376 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %371, i32 0, i32 205
  %372 = load %struct.cos_dict_s*, %struct.cos_dict_s** %substream_Resources376, align 8, !tbaa !187
  %373 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %call377 = call i32 @pdf_add_resource(%struct.gx_device_pdf_s* %370, %struct.cos_dict_s* %372, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), %struct.pdf_resource_s* %373) #7
  store i32 %call377, i32* %code, align 4, !tbaa !49
  %374 = load i32, i32* %code, align 4, !tbaa !49
  %cmp378 = icmp slt i32 %374, 0
  br i1 %cmp378, label %if.then.380, label %if.end.381

if.then.380:                                      ; preds = %if.then.372
  %375 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %375, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.383

if.end.381:                                       ; preds = %if.then.372
  br label %if.end.382

if.end.382:                                       ; preds = %if.end.381, %cleanup.cont.369
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.383

cleanup.383:                                      ; preds = %if.end.382, %if.then.380, %cleanup.367
  %376 = bitcast %struct.cos_value_s* %value to i8*
  call void @llvm.lifetime.end(i64 24, i8* %376) #1
  %cleanup.dest.384 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.384, label %cleanup.437 [
    i32 0, label %cleanup.cont.385
  ]

cleanup.cont.385:                                 ; preds = %cleanup.383
  br label %if.end.386

if.end.386:                                       ; preds = %cleanup.cont.385, %if.end.329
  %377 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %cmp387 = icmp ne %struct.psdf_set_color_commands_s* %377, null
  br i1 %cmp387, label %if.then.389, label %if.end.424

if.then.389:                                      ; preds = %if.end.386
  %378 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm390 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %378, i32 0, i32 47
  %379 = load %struct.stream_s*, %struct.stream_s** %strm390, align 8, !tbaa !186
  %380 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %setcolorspace = getelementptr inbounds %struct.psdf_set_color_commands_s, %struct.psdf_set_color_commands_s* %380, i32 0, i32 3
  %381 = load i8*, i8** %setcolorspace, align 8, !tbaa !188
  %call391 = call i8* @pprints1(%struct.stream_s* %379, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* %381) #7
  %382 = load i32*, i32** %used_process_color.addr, align 8, !tbaa !1
  store i32 0, i32* %382, align 4, !tbaa !49
  %383 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_save, align 8, !tbaa !1
  %cmp392 = icmp eq %struct.gs_color_space_s* %383, null
  br i1 %cmp392, label %if.then.394, label %if.else.413

if.then.394:                                      ; preds = %if.then.389
  store i32 0, i32* %i, align 4, !tbaa !49
  br label %for.cond.395

for.cond.395:                                     ; preds = %for.inc.410, %if.then.394
  %384 = load i32, i32* %i, align 4, !tbaa !49
  %385 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params396 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %385, i32 0, i32 7
  %device_n397 = bitcast %union.anon* %params396 to %struct.gs_device_n_params_s*
  %num_components398 = getelementptr inbounds %struct.gs_device_n_params_s, %struct.gs_device_n_params_s* %device_n397, i32 0, i32 1
  %386 = load i32, i32* %num_components398, align 4, !tbaa !149
  %cmp399 = icmp ult i32 %384, %386
  br i1 %cmp399, label %for.body.401, label %for.end.412

for.body.401:                                     ; preds = %for.cond.395
  %387 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm402 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %387, i32 0, i32 47
  %388 = load %struct.stream_s*, %struct.stream_s** %strm402, align 8, !tbaa !186
  %389 = load i32, i32* %i, align 4, !tbaa !49
  %idxprom403 = sext i32 %389 to i64
  %390 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %paint404 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %390, i32 0, i32 1
  %values405 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint404, i32 0, i32 0
  %arrayidx406 = getelementptr inbounds [64 x float], [64 x float]* %values405, i32 0, i64 %idxprom403
  %391 = load float, float* %arrayidx406, align 4, !tbaa !94
  %conv407 = fpext float %391 to double
  %call408 = call double @psdf_round(double %conv407, i32 255, i32 8) #7
  %call409 = call i8* @pprintg1(%struct.stream_s* %388, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), double %call408) #7
  br label %for.inc.410

for.inc.410:                                      ; preds = %for.body.401
  %392 = load i32, i32* %i, align 4, !tbaa !49
  %inc411 = add nsw i32 %392, 1
  store i32 %inc411, i32* %i, align 4, !tbaa !49
  br label %for.cond.395

for.end.412:                                      ; preds = %for.cond.395
  br label %if.end.421

if.else.413:                                      ; preds = %if.then.389
  %393 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm414 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %393, i32 0, i32 47
  %394 = load %struct.stream_s*, %struct.stream_s** %strm414, align 8, !tbaa !186
  %395 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %paint415 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %395, i32 0, i32 1
  %values416 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint415, i32 0, i32 0
  %arrayidx417 = getelementptr inbounds [64 x float], [64 x float]* %values416, i32 0, i64 0
  %396 = load float, float* %arrayidx417, align 4, !tbaa !94
  %conv418 = fpext float %396 to double
  %call419 = call double @psdf_round(double %conv418, i32 255, i32 8) #7
  %call420 = call i8* @pprintg1(%struct.stream_s* %394, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), double %call419) #7
  br label %if.end.421

if.end.421:                                       ; preds = %if.else.413, %for.end.412
  %397 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm422 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %397, i32 0, i32 47
  %398 = load %struct.stream_s*, %struct.stream_s** %strm422, align 8, !tbaa !186
  %399 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %setcolorn = getelementptr inbounds %struct.psdf_set_color_commands_s, %struct.psdf_set_color_commands_s* %399, i32 0, i32 5
  %400 = load i8*, i8** %setcolorn, align 8, !tbaa !190
  %call423 = call i8* @pprints1(%struct.stream_s* %398, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0), i8* %400) #7
  br label %if.end.424

if.end.424:                                       ; preds = %if.end.421, %if.end.386
  %401 = load %struct.cos_value_s*, %struct.cos_value_s** %pvalue.addr, align 8, !tbaa !1
  %cmp425 = icmp ne %struct.cos_value_s* %401, null
  br i1 %cmp425, label %if.then.427, label %if.end.436

if.then.427:                                      ; preds = %if.end.424
  %402 = load i32, i32* %by_name.addr, align 4, !tbaa !49
  %tobool428 = icmp ne i32 %402, 0
  br i1 %tobool428, label %if.then.429, label %if.else.432

if.then.429:                                      ; preds = %if.then.427
  %403 = load %struct.cos_value_s*, %struct.cos_value_s** %pvalue.addr, align 8, !tbaa !1
  %404 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %cos_procs430 = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %404, i32 0, i32 0
  %405 = bitcast %struct.cos_object_procs_s** %cos_procs430 to %struct.cos_object_s*
  %call431 = call %struct.cos_value_s* @cos_resource_value(%struct.cos_value_s* %403, %struct.cos_object_s* %405) #7
  br label %if.end.435

if.else.432:                                      ; preds = %if.then.427
  %406 = load %struct.cos_value_s*, %struct.cos_value_s** %pvalue.addr, align 8, !tbaa !1
  %407 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %cos_procs433 = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %407, i32 0, i32 0
  %408 = bitcast %struct.cos_object_procs_s** %cos_procs433 to %struct.cos_object_s*
  %call434 = call %struct.cos_value_s* @cos_object_value(%struct.cos_value_s* %406, %struct.cos_object_s* %408) #7
  br label %if.end.435

if.end.435:                                       ; preds = %if.else.432, %if.then.429
  br label %if.end.436

if.end.436:                                       ; preds = %if.end.435, %if.end.424
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.437

cleanup.437:                                      ; preds = %if.end.436, %cleanup.383, %if.then.327, %cleanup.315, %cleanup.281, %if.then.110, %if.then.103, %if.then.8, %if.then
  %409 = bitcast %struct.gs_color_space_s** %pcs_save to i8*
  call void @llvm.lifetime.end(i64 8, i8* %409) #1
  %410 = bitcast %struct.pdf_resource_s** %pres to i8*
  call void @llvm.lifetime.end(i64 8, i8* %410) #1
  %411 = bitcast i8** %data_buff to i8*
  call void @llvm.lifetime.end(i64 8, i8* %411) #1
  %412 = bitcast %struct.cos_value_s* %v to i8*
  call void @llvm.lifetime.end(i64 24, i8* %412) #1
  %413 = bitcast %struct.cos_array_s** %pca1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %413) #1
  %414 = bitcast %struct.cos_array_s** %pca to i8*
  call void @llvm.lifetime.end(i64 8, i8* %414) #1
  %415 = bitcast i32* %loop to i8*
  call void @llvm.lifetime.end(i64 4, i8* %415) #1
  %416 = bitcast i32* %samples to i8*
  call void @llvm.lifetime.end(i64 4, i8* %416) #1
  %417 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %417) #1
  %418 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %418) #1
  %419 = bitcast %struct.gs_function_s** %new_pfn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %419) #1
  %420 = bitcast i32* %csi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %420) #1
  %421 = load i32, i32* %retval
  ret i32 %421
}

declare %struct.cos_array_s* @cos_array_alloc(%struct.gx_device_pdf_s*, i8*) #3

; Function Attrs: nounwind
declare double @pow(double, double) #2

declare void @cos_free(%struct.cos_object_s*, i8*) #3

declare i32 @gs_color_space_get_index(%struct.gs_color_space_s*) #3

declare i32 @pdf_make_sampled_base_space_function(%struct.gx_device_pdf_s*, %struct.gs_function_s**, i32, i32, i8*) #3

declare i32 @cos_array_add(%struct.cos_array_s*, %struct.cos_value_s*) #3

declare %struct.cos_value_s* @cos_c_string_value(%struct.cos_value_s*, i8*) #3

; Function Attrs: nounwind uwtable
define i32 @pdf_string_to_cos_name(%struct.gx_device_pdf_s* %pdev, i8* %str, i32 %len, %struct.cos_value_s* %pvalue) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %str.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %pvalue.addr = alloca %struct.cos_value_s*, align 8
  %chars = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store i8* %str, i8** %str.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !49
  store %struct.cos_value_s* %pvalue, %struct.cos_value_s** %pvalue.addr, align 8, !tbaa !1
  %0 = bitcast i8** %chars to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %1, i32 0, i32 43
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory, align 8, !tbaa !51
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %2, i32 0, i32 1
  %alloc_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 16
  %3 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_string, align 8, !tbaa !191
  %4 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory1 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %4, i32 0, i32 43
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory1, align 8, !tbaa !51
  %6 = load i32, i32* %len.addr, align 4, !tbaa !49
  %add = add i32 %6, 1
  %call = call i8* %3(%struct.gs_memory_s* %5, i32 %add, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i32 0, i32 0)) #7
  store i8* %call, i8** %chars, align 8, !tbaa !1
  %7 = load i8*, i8** %chars, align 8, !tbaa !1
  %cmp = icmp eq i8* %7, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load i8*, i8** %chars, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 0
  store i8 47, i8* %arrayidx, align 1, !tbaa !91
  %9 = load i8*, i8** %chars, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 1
  %10 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %11 = load i32, i32* %len.addr, align 4, !tbaa !49
  %conv = zext i32 %11 to i64
  %call2 = call i8* @memcpy(i8* %add.ptr, i8* %10, i64 %conv) #8
  %12 = load %struct.cos_value_s*, %struct.cos_value_s** %pvalue.addr, align 8, !tbaa !1
  %13 = load i8*, i8** %chars, align 8, !tbaa !1
  %14 = load i32, i32* %len.addr, align 4, !tbaa !49
  %add3 = add i32 %14, 1
  %call4 = call %struct.cos_value_s* @cos_string_value(%struct.cos_value_s* %12, i8* %13, i32 %add3) #7
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %15 = bitcast i8** %chars to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  %16 = load i32, i32* %retval
  ret i32 %16
}

declare i32 @cos_array_add_no_copy(%struct.cos_array_s*, %struct.cos_value_s*) #3

declare %struct.cos_value_s* @cos_object_value(%struct.cos_value_s*, %struct.cos_object_s*) #3

declare %struct.cos_dict_s* @cos_dict_alloc(%struct.gx_device_pdf_s*, i8*) #3

declare i32 @pdf_alloc_resource(%struct.gx_device_pdf_s*, i32, i64, %struct.pdf_resource_s**, i64) #3

declare i32 @cos_become(%struct.cos_object_s*, %struct.cos_object_procs_s*) #3

declare i32 @cos_dict_put(%struct.cos_dict_s*, i8*, i32, %struct.cos_value_s*) #3

declare i32 @pdf_color_space_named(%struct.gx_device_pdf_s*, %struct.cos_value_s*, %struct.gs_range_s**, %struct.gs_color_space_s*, %struct.pdf_color_space_names_s*, i32, i8*, i32, i32) #3

declare i32 @pdf_substitute_resource(%struct.gx_device_pdf_s*, %struct.pdf_resource_s**, i32, i32 (%struct.gx_device_pdf_s*, %struct.pdf_resource_s*, %struct.pdf_resource_s*)*, i32) #3

declare i32 @pdf_function_scaled(%struct.gx_device_pdf_s*, %struct.gs_function_s*, %struct.gs_range_s*, %struct.cos_value_s*) #3

declare i32 @pdf_delete_sampled_base_space_function(%struct.gx_device_pdf_s*, %struct.gs_function_s*) #3

declare void @pdf_reserve_object_id(%struct.gx_device_pdf_s*, %struct.pdf_resource_s*, i64) #3

declare i32 @cos_write_object(%struct.cos_object_s*, %struct.gx_device_pdf_s*, i32) #3

declare i8* @pprints1(%struct.stream_s*, i8*, i8*) #3

declare i32 @pdf_add_resource(%struct.gx_device_pdf_s*, %struct.cos_dict_s*, i8*, %struct.pdf_resource_s*) #3

declare i32 @pdf_indexed_color_space(%struct.gx_device_pdf_s*, %struct.cos_value_s*, %struct.gs_color_space_s*, %struct.cos_array_s*, %struct.cos_value_s*) #3

declare i8* @pprintg1(%struct.stream_s*, i8*, double) #3

declare double @psdf_round(double, i32, i32) #3

declare %struct.cos_value_s* @cos_resource_value(%struct.cos_value_s*, %struct.cos_object_s*) #3

; Function Attrs: nounwind uwtable
define i32 @convert_separation_alternate(%struct.gx_device_pdf_s* %pdev, %struct.gs_imager_state_s* %pis, %struct.gs_color_space_s* %pcs, %struct.gx_device_color_s* %pdc, i32* %used_process_color, %struct.psdf_set_color_commands_s* %ppscc, %struct.gs_client_color_s* %pcc, %struct.cos_value_s* %pvalue, i32 %by_name) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pdc.addr = alloca %struct.gx_device_color_s*, align 8
  %used_process_color.addr = alloca i32*, align 8
  %ppscc.addr = alloca %struct.psdf_set_color_commands_s*, align 8
  %pcc.addr = alloca %struct.gs_client_color_s*, align 8
  %pvalue.addr = alloca %struct.cos_value_s*, align 8
  %by_name.addr = alloca i32, align 4
  %csi = alloca i32, align 4
  %new_pfn = alloca %struct.gs_function_s*, align 8
  %out_low = alloca [4 x float], align 16
  %out_high = alloca [4 x float], align 16
  %code = alloca i32, align 4
  %pca = alloca %struct.cos_array_s*, align 8
  %pca1 = alloca %struct.cos_array_s*, align 8
  %v = alloca %struct.cos_value_s, align 8
  %name_string = alloca i8*, align 8
  %name_string_length = alloca i32, align 4
  %pres = alloca %struct.pdf_resource_s*, align 8
  %cleanup.dest.slot = alloca i32
  %conc = alloca [64 x i16], align 16
  %cc = alloca %struct.gs_client_color_s, align 8
  %i = alloca i32, align 4
  %icc_space = alloca %struct.gs_color_space_s*, align 8
  %sep_space = alloca %struct.gs_color_space_s*, align 8
  %csi2 = alloca i32, align 4
  %ppcs = alloca %struct.pdf_color_space_s*, align 8
  %value = alloca %struct.cos_value_s, align 8
  %ppcs172 = alloca %struct.pdf_color_space_s*, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdc, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  store i32* %used_process_color, i32** %used_process_color.addr, align 8, !tbaa !1
  store %struct.psdf_set_color_commands_s* %ppscc, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  store %struct.gs_client_color_s* %pcc, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  store %struct.cos_value_s* %pvalue, %struct.cos_value_s** %pvalue.addr, align 8, !tbaa !1
  store i32 %by_name, i32* %by_name.addr, align 4, !tbaa !49
  %0 = bitcast i32* %csi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.gs_function_s** %new_pfn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store %struct.gs_function_s* null, %struct.gs_function_s** %new_pfn, align 8, !tbaa !1
  %2 = bitcast [4 x float]* %out_low to i8*
  call void @llvm.lifetime.start(i64 16, i8* %2) #1
  %3 = bitcast [4 x float]* %out_high to i8*
  call void @llvm.lifetime.start(i64 16, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast %struct.cos_array_s** %pca to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast %struct.cos_array_s** %pca1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast %struct.cos_value_s* %v to i8*
  call void @llvm.lifetime.start(i64 24, i8* %7) #1
  %8 = bitcast i8** %name_string to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast i32* %name_string_length to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast %struct.pdf_resource_s** %pres to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store %struct.pdf_resource_s* null, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %11 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call = call %struct.cos_array_s* @cos_array_alloc(%struct.gx_device_pdf_s* %11, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0)) #7
  store %struct.cos_array_s* %call, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %12 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %cmp = icmp eq %struct.cos_array_s* %12, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.249

if.end:                                           ; preds = %entry
  %13 = bitcast [64 x i16]* %conc to i8*
  call void @llvm.lifetime.start(i64 128, i8* %13) #1
  %14 = bitcast %struct.gs_client_color_s* %cc to i8*
  call void @llvm.lifetime.start(i64 264, i8* %14) #1
  %15 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = bitcast %struct.gs_color_space_s** %icc_space to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %17, %struct.gs_color_space_s** %icc_space, align 8, !tbaa !1
  %18 = bitcast %struct.gs_color_space_s** %sep_space to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  %19 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %19, %struct.gs_color_space_s** %sep_space, align 8, !tbaa !1
  %20 = bitcast i32* %csi2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %call1 = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %21) #7
  store i32 %call1, i32* %csi, align 4, !tbaa !91
  %22 = load i32, i32* %csi, align 4, !tbaa !91
  %cmp2 = icmp eq i32 %22, 10
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %23 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %base_space = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %23, i32 0, i32 3
  %24 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space, align 8, !tbaa !152
  store %struct.gs_color_space_s* %24, %struct.gs_color_space_s** %sep_space, align 8, !tbaa !1
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  br label %do.body

do.body:                                          ; preds = %land.end, %if.end.4
  %25 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_space, align 8, !tbaa !1
  %base_space5 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %25, i32 0, i32 3
  %26 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space5, align 8, !tbaa !152
  store %struct.gs_color_space_s* %26, %struct.gs_color_space_s** %icc_space, align 8, !tbaa !1
  %27 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_space, align 8, !tbaa !1
  %call6 = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %27) #7
  store i32 %call6, i32* %csi2, align 4, !tbaa !91
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %28 = load i32, i32* %csi2, align 4, !tbaa !91
  %cmp7 = icmp ne i32 %28, 12
  br i1 %cmp7, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %29 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_space, align 8, !tbaa !1
  %base_space8 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %29, i32 0, i32 3
  %30 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space8, align 8, !tbaa !152
  %tobool = icmp ne %struct.gs_color_space_s* %30, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %31 = phi i1 [ false, %do.cond ], [ %tobool, %land.rhs ]
  br i1 %31, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  %paint = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint, i32 0, i32 0
  %32 = bitcast [64 x float]* %values to i8*
  %call9 = call i8* @memset(i8* %32, i32 0, i64 64) #8
  %paint10 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values11 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint10, i32 0, i32 0
  %arrayidx = getelementptr inbounds [64 x float], [64 x float]* %values11, i32 0, i64 0
  store float 0.000000e+00, float* %arrayidx, align 4, !tbaa !94
  %33 = bitcast [64 x i16]* %conc to i8*
  %call12 = call i8* @memset(i8* %33, i32 0, i64 128) #8
  %34 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %sep_space, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %34, i32 0, i32 0
  %35 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !154
  %concretize_color = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %35, i32 0, i32 8
  %36 = load i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)** %concretize_color, align 8, !tbaa !155
  %37 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %sep_space, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [64 x i16], [64 x i16]* %conc, i32 0, i32 0
  %38 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %39 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %40 = bitcast %struct.gx_device_pdf_s* %39 to %struct.gx_device_s*
  %call13 = call i32 %36(%struct.gs_client_color_s* %cc, %struct.gs_color_space_s* %37, i16* %arraydecay, %struct.gs_imager_state_s* %38, %struct.gx_device_s* %40) #7
  store i32 0, i32* %i, align 4, !tbaa !49
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %41 = load i32, i32* %i, align 4, !tbaa !49
  %42 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %42, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %43 = load i32, i32* %num_components, align 4, !tbaa !151
  %cmp14 = icmp slt i32 %41, %43
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %44 = load i32, i32* %i, align 4, !tbaa !49
  %idxprom = sext i32 %44 to i64
  %arrayidx15 = getelementptr inbounds [64 x i16], [64 x i16]* %conc, i32 0, i64 %idxprom
  %45 = load i16, i16* %arrayidx15, align 2, !tbaa !92
  %conv = sext i16 %45 to i32
  %conv16 = sitofp i32 %conv to float
  %div = fdiv float %conv16, 3.276000e+04
  %46 = load i32, i32* %i, align 4, !tbaa !49
  %idxprom17 = sext i32 %46 to i64
  %arrayidx18 = getelementptr inbounds [4 x float], [4 x float]* %out_low, i32 0, i64 %idxprom17
  store float %div, float* %arrayidx18, align 4, !tbaa !94
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %47 = load i32, i32* %i, align 4, !tbaa !49
  %inc = add nsw i32 %47, 1
  store i32 %inc, i32* %i, align 4, !tbaa !49
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %paint19 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values20 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint19, i32 0, i32 0
  %arrayidx21 = getelementptr inbounds [64 x float], [64 x float]* %values20, i32 0, i64 0
  store float 1.000000e+00, float* %arrayidx21, align 4, !tbaa !94
  %48 = bitcast [64 x i16]* %conc to i8*
  %call22 = call i8* @memset(i8* %48, i32 0, i64 128) #8
  %49 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %sep_space, align 8, !tbaa !1
  %type23 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %49, i32 0, i32 0
  %50 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type23, align 8, !tbaa !154
  %concretize_color24 = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %50, i32 0, i32 8
  %51 = load i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)** %concretize_color24, align 8, !tbaa !155
  %52 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %sep_space, align 8, !tbaa !1
  %arraydecay25 = getelementptr inbounds [64 x i16], [64 x i16]* %conc, i32 0, i32 0
  %53 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %54 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %55 = bitcast %struct.gx_device_pdf_s* %54 to %struct.gx_device_s*
  %call26 = call i32 %51(%struct.gs_client_color_s* %cc, %struct.gs_color_space_s* %52, i16* %arraydecay25, %struct.gs_imager_state_s* %53, %struct.gx_device_s* %55) #7
  store i32 0, i32* %i, align 4, !tbaa !49
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc.40, %for.end
  %56 = load i32, i32* %i, align 4, !tbaa !49
  %57 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %color_info28 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %57, i32 0, i32 11
  %num_components29 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info28, i32 0, i32 1
  %58 = load i32, i32* %num_components29, align 4, !tbaa !151
  %cmp30 = icmp slt i32 %56, %58
  br i1 %cmp30, label %for.body.32, label %for.end.42

for.body.32:                                      ; preds = %for.cond.27
  %59 = load i32, i32* %i, align 4, !tbaa !49
  %idxprom33 = sext i32 %59 to i64
  %arrayidx34 = getelementptr inbounds [64 x i16], [64 x i16]* %conc, i32 0, i64 %idxprom33
  %60 = load i16, i16* %arrayidx34, align 2, !tbaa !92
  %conv35 = sext i16 %60 to i32
  %conv36 = sitofp i32 %conv35 to float
  %div37 = fdiv float %conv36, 3.276000e+04
  %61 = load i32, i32* %i, align 4, !tbaa !49
  %idxprom38 = sext i32 %61 to i64
  %arrayidx39 = getelementptr inbounds [4 x float], [4 x float]* %out_high, i32 0, i64 %idxprom38
  store float %div37, float* %arrayidx39, align 4, !tbaa !94
  br label %for.inc.40

for.inc.40:                                       ; preds = %for.body.32
  %62 = load i32, i32* %i, align 4, !tbaa !49
  %inc41 = add nsw i32 %62, 1
  store i32 %inc41, i32* %i, align 4, !tbaa !49
  br label %for.cond.27

for.end.42:                                       ; preds = %for.cond.27
  %63 = bitcast i32* %csi2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #1
  %64 = bitcast %struct.gs_color_space_s** %sep_space to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #1
  %65 = bitcast %struct.gs_color_space_s** %icc_space to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #1
  %66 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #1
  %67 = bitcast %struct.gs_client_color_s* %cc to i8*
  call void @llvm.lifetime.end(i64 264, i8* %67) #1
  %68 = bitcast [64 x i16]* %conc to i8*
  call void @llvm.lifetime.end(i64 128, i8* %68) #1
  %69 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %69, i32 0, i32 73
  %ColorConversionStrategy = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params, i32 0, i32 17
  %70 = load i32, i32* %ColorConversionStrategy, align 4, !tbaa !157
  switch i32 %70, label %sw.default [
    i32 6, label %sw.bb
    i32 7, label %sw.bb.46
    i32 5, label %sw.bb.50
  ]

sw.bb:                                            ; preds = %for.end.42
  %71 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %arraydecay43 = getelementptr inbounds [4 x float], [4 x float]* %out_low, i32 0, i32 0
  %arraydecay44 = getelementptr inbounds [4 x float], [4 x float]* %out_high, i32 0, i32 0
  %call45 = call i32 @pdf_make_base_space_function(%struct.gx_device_pdf_s* %71, %struct.gs_function_s** %new_pfn, i32 1, float* %arraydecay43, float* %arraydecay44) #7
  store i32 %call45, i32* %code, align 4, !tbaa !49
  br label %sw.epilog

sw.bb.46:                                         ; preds = %for.end.42
  %72 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %arraydecay47 = getelementptr inbounds [4 x float], [4 x float]* %out_low, i32 0, i32 0
  %arraydecay48 = getelementptr inbounds [4 x float], [4 x float]* %out_high, i32 0, i32 0
  %call49 = call i32 @pdf_make_base_space_function(%struct.gx_device_pdf_s* %72, %struct.gs_function_s** %new_pfn, i32 3, float* %arraydecay47, float* %arraydecay48) #7
  store i32 %call49, i32* %code, align 4, !tbaa !49
  br label %sw.epilog

sw.bb.50:                                         ; preds = %for.end.42
  %73 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %arraydecay51 = getelementptr inbounds [4 x float], [4 x float]* %out_low, i32 0, i32 0
  %arraydecay52 = getelementptr inbounds [4 x float], [4 x float]* %out_high, i32 0, i32 0
  %call53 = call i32 @pdf_make_base_space_function(%struct.gx_device_pdf_s* %73, %struct.gs_function_s** %new_pfn, i32 4, float* %arraydecay51, float* %arraydecay52) #7
  store i32 %call53, i32* %code, align 4, !tbaa !49
  br label %sw.epilog

sw.default:                                       ; preds = %for.end.42
  store i32 -15, i32* %code, align 4, !tbaa !49
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.50, %sw.bb.46, %sw.bb
  %74 = load i32, i32* %code, align 4, !tbaa !49
  %cmp54 = icmp slt i32 %74, 0
  br i1 %cmp54, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %sw.epilog
  %75 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %cos_procs = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %75, i32 0, i32 0
  %76 = bitcast %struct.cos_object_procs_s** %cos_procs to %struct.cos_object_s*
  call void @cos_free(%struct.cos_object_s* %76, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0)) #7
  %77 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %77, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.249

if.end.57:                                        ; preds = %sw.epilog
  %78 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %call58 = call %struct.cos_value_s* @cos_c_string_value(%struct.cos_value_s* %v, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0)) #7
  %call59 = call i32 @cos_array_add(%struct.cos_array_s* %78, %struct.cos_value_s* %call58) #7
  store i32 %call59, i32* %code, align 4, !tbaa !49
  %79 = load i32, i32* %code, align 4, !tbaa !49
  %cmp60 = icmp slt i32 %79, 0
  br i1 %cmp60, label %if.then.62, label %if.end.64

if.then.62:                                       ; preds = %if.end.57
  %80 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %cos_procs63 = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %80, i32 0, i32 0
  %81 = bitcast %struct.cos_object_procs_s** %cos_procs63 to %struct.cos_object_s*
  call void @cos_free(%struct.cos_object_s* %81, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0)) #7
  %82 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %82, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.249

if.end.64:                                        ; preds = %if.end.57
  %83 = load i32, i32* %code, align 4, !tbaa !49
  %cmp65 = icmp sge i32 %83, 0
  br i1 %cmp65, label %if.then.67, label %if.end.129

if.then.67:                                       ; preds = %if.end.64
  %84 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %call68 = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %84) #7
  store i32 %call68, i32* %csi, align 4, !tbaa !91
  %85 = load i32, i32* %csi, align 4, !tbaa !91
  %cmp69 = icmp eq i32 %85, 10
  br i1 %cmp69, label %if.then.71, label %if.else

if.then.71:                                       ; preds = %if.then.67
  %86 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %base_space72 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %86, i32 0, i32 3
  %87 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space72, align 8, !tbaa !152
  %params73 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %87, i32 0, i32 7
  %separation = bitcast %union.anon* %params73 to %struct.gs_separation_params_s*
  %get_colorname_string = getelementptr inbounds %struct.gs_separation_params_s, %struct.gs_separation_params_s* %separation, i32 0, i32 4
  %88 = load i32 (%struct.gs_memory_s*, i64, i8**, i32*)*, i32 (%struct.gs_memory_s*, i64, i8**, i32*)** %get_colorname_string, align 8, !tbaa !192
  %89 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %89, i32 0, i32 3
  %90 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !98
  %91 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %base_space74 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %91, i32 0, i32 3
  %92 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space74, align 8, !tbaa !152
  %params75 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %92, i32 0, i32 7
  %separation76 = bitcast %union.anon* %params75 to %struct.gs_separation_params_s*
  %sep_name = getelementptr inbounds %struct.gs_separation_params_s, %struct.gs_separation_params_s* %separation76, i32 0, i32 0
  %93 = load i64, i64* %sep_name, align 8, !tbaa !194
  %call77 = call i32 %88(%struct.gs_memory_s* %90, i64 %93, i8** %name_string, i32* %name_string_length) #7
  store i32 %call77, i32* %code, align 4, !tbaa !49
  br label %if.end.86

if.else:                                          ; preds = %if.then.67
  %94 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params78 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %94, i32 0, i32 7
  %separation79 = bitcast %union.anon* %params78 to %struct.gs_separation_params_s*
  %get_colorname_string80 = getelementptr inbounds %struct.gs_separation_params_s, %struct.gs_separation_params_s* %separation79, i32 0, i32 4
  %95 = load i32 (%struct.gs_memory_s*, i64, i8**, i32*)*, i32 (%struct.gs_memory_s*, i64, i8**, i32*)** %get_colorname_string80, align 8, !tbaa !192
  %96 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory81 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %96, i32 0, i32 3
  %97 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory81, align 8, !tbaa !98
  %98 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params82 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %98, i32 0, i32 7
  %separation83 = bitcast %union.anon* %params82 to %struct.gs_separation_params_s*
  %sep_name84 = getelementptr inbounds %struct.gs_separation_params_s, %struct.gs_separation_params_s* %separation83, i32 0, i32 0
  %99 = load i64, i64* %sep_name84, align 8, !tbaa !194
  %call85 = call i32 %95(%struct.gs_memory_s* %97, i64 %99, i8** %name_string, i32* %name_string_length) #7
  store i32 %call85, i32* %code, align 4, !tbaa !49
  br label %if.end.86

if.end.86:                                        ; preds = %if.else, %if.then.71
  %100 = load i32, i32* %code, align 4, !tbaa !49
  %cmp87 = icmp slt i32 %100, 0
  br i1 %cmp87, label %if.then.89, label %if.end.91

if.then.89:                                       ; preds = %if.end.86
  %101 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %cos_procs90 = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %101, i32 0, i32 0
  %102 = bitcast %struct.cos_object_procs_s** %cos_procs90 to %struct.cos_object_s*
  call void @cos_free(%struct.cos_object_s* %102, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0)) #7
  %103 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %103, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.249

if.end.91:                                        ; preds = %if.end.86
  %104 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %105 = load i8*, i8** %name_string, align 8, !tbaa !1
  %106 = load i32, i32* %name_string_length, align 4, !tbaa !49
  %call92 = call i32 @pdf_string_to_cos_name(%struct.gx_device_pdf_s* %104, i8* %105, i32 %106, %struct.cos_value_s* %v) #7
  store i32 %call92, i32* %code, align 4, !tbaa !49
  %107 = load i32, i32* %code, align 4, !tbaa !49
  %cmp93 = icmp slt i32 %107, 0
  br i1 %cmp93, label %if.then.95, label %if.end.97

if.then.95:                                       ; preds = %if.end.91
  %108 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %cos_procs96 = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %108, i32 0, i32 0
  %109 = bitcast %struct.cos_object_procs_s** %cos_procs96 to %struct.cos_object_s*
  call void @cos_free(%struct.cos_object_s* %109, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0)) #7
  %110 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %110, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.249

if.end.97:                                        ; preds = %if.end.91
  %111 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %call98 = call i32 @cos_array_add_no_copy(%struct.cos_array_s* %111, %struct.cos_value_s* %v) #7
  store i32 %call98, i32* %code, align 4, !tbaa !49
  %112 = load i32, i32* %code, align 4, !tbaa !49
  %cmp99 = icmp slt i32 %112, 0
  br i1 %cmp99, label %if.then.101, label %if.end.103

if.then.101:                                      ; preds = %if.end.97
  %113 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %cos_procs102 = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %113, i32 0, i32 0
  %114 = bitcast %struct.cos_object_procs_s** %cos_procs102 to %struct.cos_object_s*
  call void @cos_free(%struct.cos_object_s* %114, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0)) #7
  %115 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %115, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.249

if.end.103:                                       ; preds = %if.end.97
  %116 = load i32, i32* %code, align 4, !tbaa !49
  %cmp104 = icmp sge i32 %116, 0
  br i1 %cmp104, label %if.then.106, label %if.end.128

if.then.106:                                      ; preds = %if.end.103
  %117 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %params107 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %117, i32 0, i32 73
  %ColorConversionStrategy108 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params107, i32 0, i32 17
  %118 = load i32, i32* %ColorConversionStrategy108, align 4, !tbaa !157
  switch i32 %118, label %sw.default.115 [
    i32 6, label %sw.bb.109
    i32 7, label %sw.bb.111
    i32 5, label %sw.bb.113
  ]

sw.bb.109:                                        ; preds = %if.then.106
  %119 = load i8*, i8** getelementptr inbounds (%struct.pdf_color_space_names_s, %struct.pdf_color_space_names_s* @pdf_color_space_names, i32 0, i32 1), align 8, !tbaa !172
  %call110 = call %struct.cos_value_s* @cos_c_string_value(%struct.cos_value_s* %v, i8* %119) #7
  br label %sw.epilog.116

sw.bb.111:                                        ; preds = %if.then.106
  %120 = load i8*, i8** getelementptr inbounds (%struct.pdf_color_space_names_s, %struct.pdf_color_space_names_s* @pdf_color_space_names, i32 0, i32 2), align 8, !tbaa !174
  %call112 = call %struct.cos_value_s* @cos_c_string_value(%struct.cos_value_s* %v, i8* %120) #7
  br label %sw.epilog.116

sw.bb.113:                                        ; preds = %if.then.106
  %121 = load i8*, i8** getelementptr inbounds (%struct.pdf_color_space_names_s, %struct.pdf_color_space_names_s* @pdf_color_space_names, i32 0, i32 0), align 8, !tbaa !175
  %call114 = call %struct.cos_value_s* @cos_c_string_value(%struct.cos_value_s* %v, i8* %121) #7
  br label %sw.epilog.116

sw.default.115:                                   ; preds = %if.then.106
  br label %sw.epilog.116

sw.epilog.116:                                    ; preds = %sw.default.115, %sw.bb.113, %sw.bb.111, %sw.bb.109
  %122 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %call117 = call i32 @cos_array_add(%struct.cos_array_s* %122, %struct.cos_value_s* %v) #7
  store i32 %call117, i32* %code, align 4, !tbaa !49
  %123 = load i32, i32* %code, align 4, !tbaa !49
  %cmp118 = icmp sge i32 %123, 0
  br i1 %cmp118, label %if.then.120, label %if.end.127

if.then.120:                                      ; preds = %sw.epilog.116
  %124 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %125 = load %struct.gs_function_s*, %struct.gs_function_s** %new_pfn, align 8, !tbaa !1
  %call121 = call i32 @pdf_function_scaled(%struct.gx_device_pdf_s* %124, %struct.gs_function_s* %125, %struct.gs_range_s* null, %struct.cos_value_s* %v) #7
  store i32 %call121, i32* %code, align 4, !tbaa !49
  %126 = load i32, i32* %code, align 4, !tbaa !49
  %cmp122 = icmp sge i32 %126, 0
  br i1 %cmp122, label %if.then.124, label %if.end.126

if.then.124:                                      ; preds = %if.then.120
  %127 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %call125 = call i32 @cos_array_add(%struct.cos_array_s* %127, %struct.cos_value_s* %v) #7
  store i32 %call125, i32* %code, align 4, !tbaa !49
  br label %if.end.126

if.end.126:                                       ; preds = %if.then.124, %if.then.120
  br label %if.end.127

if.end.127:                                       ; preds = %if.end.126, %sw.epilog.116
  br label %if.end.128

if.end.128:                                       ; preds = %if.end.127, %if.end.103
  br label %if.end.129

if.end.129:                                       ; preds = %if.end.128, %if.end.64
  %128 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %129 = load %struct.gs_function_s*, %struct.gs_function_s** %new_pfn, align 8, !tbaa !1
  %call130 = call i32 @pdf_delete_base_space_function(%struct.gx_device_pdf_s* %128, %struct.gs_function_s* %129) #7
  %130 = bitcast %struct.pdf_color_space_s** %ppcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %130) #1
  %131 = load i32, i32* %code, align 4, !tbaa !49
  %cmp131 = icmp slt i32 %131, 0
  br i1 %cmp131, label %if.then.136, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.129
  %132 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %133 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %id = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %133, i32 0, i32 2
  %134 = load i64, i64* %id, align 8, !tbaa !176
  %call133 = call i32 @pdf_alloc_resource(%struct.gx_device_pdf_s* %132, i32 0, i64 %134, %struct.pdf_resource_s** %pres, i64 -1) #7
  store i32 %call133, i32* %code, align 4, !tbaa !49
  %cmp134 = icmp slt i32 %call133, 0
  br i1 %cmp134, label %if.then.136, label %if.end.138

if.then.136:                                      ; preds = %lor.lhs.false, %if.end.129
  %135 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %cos_procs137 = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %135, i32 0, i32 0
  %136 = bitcast %struct.cos_object_procs_s** %cos_procs137 to %struct.cos_object_s*
  call void @cos_free(%struct.cos_object_s* %136, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0)) #7
  %137 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %137, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.138:                                       ; preds = %lor.lhs.false
  %138 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %139 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  call void @pdf_reserve_object_id(%struct.gx_device_pdf_s* %138, %struct.pdf_resource_s* %139, i64 0) #7
  %140 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %141 = bitcast %struct.pdf_resource_s* %140 to %struct.pdf_color_space_s*
  store %struct.pdf_color_space_s* %141, %struct.pdf_color_space_s** %ppcs, align 8, !tbaa !1
  %142 = load %struct.pdf_color_space_s*, %struct.pdf_color_space_s** %ppcs, align 8, !tbaa !1
  %serialized = getelementptr inbounds %struct.pdf_color_space_s, %struct.pdf_color_space_s* %142, i32 0, i32 10
  store i8* null, i8** %serialized, align 8, !tbaa !177
  %143 = load %struct.pdf_color_space_s*, %struct.pdf_color_space_s** %ppcs, align 8, !tbaa !1
  %serialized_size = getelementptr inbounds %struct.pdf_color_space_s, %struct.pdf_color_space_s* %143, i32 0, i32 9
  store i32 0, i32* %serialized_size, align 4, !tbaa !179
  %144 = load %struct.pdf_color_space_s*, %struct.pdf_color_space_s** %ppcs, align 8, !tbaa !1
  %ranges = getelementptr inbounds %struct.pdf_color_space_s, %struct.pdf_color_space_s* %144, i32 0, i32 8
  store %struct.gs_range_s* null, %struct.gs_range_s** %ranges, align 8, !tbaa !180
  %145 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %object = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %145, i32 0, i32 7
  %146 = load %struct.cos_object_s*, %struct.cos_object_s** %object, align 8, !tbaa !161
  %id139 = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %146, i32 0, i32 1
  %147 = load i64, i64* %id139, align 8, !tbaa !181
  %148 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %id140 = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %148, i32 0, i32 1
  store i64 %147, i64* %id140, align 8, !tbaa !184
  %149 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %object141 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %149, i32 0, i32 7
  %150 = load %struct.cos_object_s*, %struct.cos_object_s** %object141, align 8, !tbaa !161
  %cos_procs142 = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %150, i32 0, i32 0
  %151 = bitcast %struct.cos_object_procs_s** %cos_procs142 to %struct.cos_object_s*
  call void @cos_free(%struct.cos_object_s* %151, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0)) #7
  %152 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %153 = bitcast %struct.cos_array_s* %152 to %struct.cos_object_s*
  %154 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %object143 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %154, i32 0, i32 7
  store %struct.cos_object_s* %153, %struct.cos_object_s** %object143, align 8, !tbaa !161
  %155 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %cos_procs144 = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %155, i32 0, i32 0
  %156 = bitcast %struct.cos_object_procs_s** %cos_procs144 to %struct.cos_object_s*
  %157 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call145 = call i32 @cos_write_object(%struct.cos_object_s* %156, %struct.gx_device_pdf_s* %157, i32 0) #7
  %158 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %call146 = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %158) #7
  store i32 %call146, i32* %csi, align 4, !tbaa !91
  %159 = load i32, i32* %csi, align 4, !tbaa !91
  %cmp147 = icmp ne i32 %159, 10
  br i1 %cmp147, label %land.lhs.true, label %if.end.154

land.lhs.true:                                    ; preds = %if.end.138
  %160 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %cmp149 = icmp ne %struct.psdf_set_color_commands_s* %160, null
  br i1 %cmp149, label %if.then.151, label %if.end.154

if.then.151:                                      ; preds = %land.lhs.true
  %161 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %161, i32 0, i32 47
  %162 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !186
  %163 = load %struct.pdf_color_space_s*, %struct.pdf_color_space_s** %ppcs, align 8, !tbaa !1
  %rname = getelementptr inbounds %struct.pdf_color_space_s, %struct.pdf_color_space_s* %163, i32 0, i32 5
  %arraydecay152 = getelementptr inbounds [24 x i8], [24 x i8]* %rname, i32 0, i32 0
  %call153 = call i8* @pprints1(%struct.stream_s* %162, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* %arraydecay152) #7
  br label %if.end.154

if.end.154:                                       ; preds = %if.then.151, %land.lhs.true, %if.end.138
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.154, %if.then.136
  %164 = bitcast %struct.pdf_color_space_s** %ppcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %164) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.249 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  %165 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %cmp155 = icmp ne %struct.pdf_resource_s* %165, null
  br i1 %cmp155, label %if.then.157, label %if.end.163

if.then.157:                                      ; preds = %cleanup.cont
  %166 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %used_mask = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %166, i32 0, i32 164
  %167 = load i64, i64* %used_mask, align 8, !tbaa !170
  %168 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %where_used = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %168, i32 0, i32 6
  %169 = load i64, i64* %where_used, align 8, !tbaa !171
  %or = or i64 %169, %167
  store i64 %or, i64* %where_used, align 8, !tbaa !171
  %170 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %171 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %substream_Resources = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %171, i32 0, i32 205
  %172 = load %struct.cos_dict_s*, %struct.cos_dict_s** %substream_Resources, align 8, !tbaa !187
  %173 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %call158 = call i32 @pdf_add_resource(%struct.gx_device_pdf_s* %170, %struct.cos_dict_s* %172, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), %struct.pdf_resource_s* %173) #7
  store i32 %call158, i32* %code, align 4, !tbaa !49
  %174 = load i32, i32* %code, align 4, !tbaa !49
  %cmp159 = icmp slt i32 %174, 0
  br i1 %cmp159, label %if.then.161, label %if.end.162

if.then.161:                                      ; preds = %if.then.157
  %175 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %175, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.249

if.end.162:                                       ; preds = %if.then.157
  br label %if.end.163

if.end.163:                                       ; preds = %if.end.162, %cleanup.cont
  %176 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %call164 = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %176) #7
  store i32 %call164, i32* %csi, align 4, !tbaa !91
  %177 = load i32, i32* %csi, align 4, !tbaa !91
  %cmp165 = icmp eq i32 %177, 10
  br i1 %cmp165, label %if.then.167, label %if.end.221

if.then.167:                                      ; preds = %if.end.163
  %178 = bitcast %struct.cos_value_s* %value to i8*
  call void @llvm.lifetime.start(i64 24, i8* %178) #1
  %179 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %cos_procs168 = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %179, i32 0, i32 0
  %180 = bitcast %struct.cos_object_procs_s** %cos_procs168 to %struct.cos_object_s*
  %call169 = call %struct.cos_value_s* @cos_object_value(%struct.cos_value_s* %value, %struct.cos_object_s* %180) #7
  %181 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call170 = call %struct.cos_array_s* @cos_array_alloc(%struct.gx_device_pdf_s* %181, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0)) #7
  store %struct.cos_array_s* %call170, %struct.cos_array_s** %pca1, align 8, !tbaa !1
  %182 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %183 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %184 = load %struct.cos_array_s*, %struct.cos_array_s** %pca1, align 8, !tbaa !1
  %call171 = call i32 @pdf_indexed_color_space(%struct.gx_device_pdf_s* %182, %struct.cos_value_s* %value, %struct.gs_color_space_s* %183, %struct.cos_array_s* %184, %struct.cos_value_s* %value) #7
  store i32 %call171, i32* %code, align 4, !tbaa !49
  %185 = load %struct.cos_array_s*, %struct.cos_array_s** %pca1, align 8, !tbaa !1
  store %struct.cos_array_s* %185, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %186 = bitcast %struct.pdf_color_space_s** %ppcs172 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %186) #1
  %187 = load i32, i32* %code, align 4, !tbaa !49
  %cmp173 = icmp slt i32 %187, 0
  br i1 %cmp173, label %if.then.180, label %lor.lhs.false.175

lor.lhs.false.175:                                ; preds = %if.then.167
  %188 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %189 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %id176 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %189, i32 0, i32 2
  %190 = load i64, i64* %id176, align 8, !tbaa !176
  %call177 = call i32 @pdf_alloc_resource(%struct.gx_device_pdf_s* %188, i32 0, i64 %190, %struct.pdf_resource_s** %pres, i64 -1) #7
  store i32 %call177, i32* %code, align 4, !tbaa !49
  %cmp178 = icmp slt i32 %call177, 0
  br i1 %cmp178, label %if.then.180, label %if.end.182

if.then.180:                                      ; preds = %lor.lhs.false.175, %if.then.167
  %191 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %cos_procs181 = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %191, i32 0, i32 0
  %192 = bitcast %struct.cos_object_procs_s** %cos_procs181 to %struct.cos_object_s*
  call void @cos_free(%struct.cos_object_s* %192, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0)) #7
  %193 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %193, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.202

if.end.182:                                       ; preds = %lor.lhs.false.175
  %194 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %195 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  call void @pdf_reserve_object_id(%struct.gx_device_pdf_s* %194, %struct.pdf_resource_s* %195, i64 0) #7
  %196 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %197 = bitcast %struct.pdf_resource_s* %196 to %struct.pdf_color_space_s*
  store %struct.pdf_color_space_s* %197, %struct.pdf_color_space_s** %ppcs172, align 8, !tbaa !1
  %198 = load %struct.pdf_color_space_s*, %struct.pdf_color_space_s** %ppcs172, align 8, !tbaa !1
  %serialized183 = getelementptr inbounds %struct.pdf_color_space_s, %struct.pdf_color_space_s* %198, i32 0, i32 10
  store i8* null, i8** %serialized183, align 8, !tbaa !177
  %199 = load %struct.pdf_color_space_s*, %struct.pdf_color_space_s** %ppcs172, align 8, !tbaa !1
  %serialized_size184 = getelementptr inbounds %struct.pdf_color_space_s, %struct.pdf_color_space_s* %199, i32 0, i32 9
  store i32 0, i32* %serialized_size184, align 4, !tbaa !179
  %200 = load %struct.pdf_color_space_s*, %struct.pdf_color_space_s** %ppcs172, align 8, !tbaa !1
  %ranges185 = getelementptr inbounds %struct.pdf_color_space_s, %struct.pdf_color_space_s* %200, i32 0, i32 8
  store %struct.gs_range_s* null, %struct.gs_range_s** %ranges185, align 8, !tbaa !180
  %201 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %object186 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %201, i32 0, i32 7
  %202 = load %struct.cos_object_s*, %struct.cos_object_s** %object186, align 8, !tbaa !161
  %id187 = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %202, i32 0, i32 1
  %203 = load i64, i64* %id187, align 8, !tbaa !181
  %204 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %id188 = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %204, i32 0, i32 1
  store i64 %203, i64* %id188, align 8, !tbaa !184
  %205 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %object189 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %205, i32 0, i32 7
  %206 = load %struct.cos_object_s*, %struct.cos_object_s** %object189, align 8, !tbaa !161
  %cos_procs190 = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %206, i32 0, i32 0
  %207 = bitcast %struct.cos_object_procs_s** %cos_procs190 to %struct.cos_object_s*
  call void @cos_free(%struct.cos_object_s* %207, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0)) #7
  %208 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %209 = bitcast %struct.cos_array_s* %208 to %struct.cos_object_s*
  %210 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %object191 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %210, i32 0, i32 7
  store %struct.cos_object_s* %209, %struct.cos_object_s** %object191, align 8, !tbaa !161
  %211 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %cos_procs192 = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %211, i32 0, i32 0
  %212 = bitcast %struct.cos_object_procs_s** %cos_procs192 to %struct.cos_object_s*
  %213 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call193 = call i32 @cos_write_object(%struct.cos_object_s* %212, %struct.gx_device_pdf_s* %213, i32 0) #7
  %214 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %cmp194 = icmp ne %struct.psdf_set_color_commands_s* %214, null
  br i1 %cmp194, label %if.then.196, label %if.end.201

if.then.196:                                      ; preds = %if.end.182
  %215 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm197 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %215, i32 0, i32 47
  %216 = load %struct.stream_s*, %struct.stream_s** %strm197, align 8, !tbaa !186
  %217 = load %struct.pdf_color_space_s*, %struct.pdf_color_space_s** %ppcs172, align 8, !tbaa !1
  %rname198 = getelementptr inbounds %struct.pdf_color_space_s, %struct.pdf_color_space_s* %217, i32 0, i32 5
  %arraydecay199 = getelementptr inbounds [24 x i8], [24 x i8]* %rname198, i32 0, i32 0
  %call200 = call i8* @pprints1(%struct.stream_s* %216, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* %arraydecay199) #7
  br label %if.end.201

if.end.201:                                       ; preds = %if.then.196, %if.end.182
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.202

cleanup.202:                                      ; preds = %if.end.201, %if.then.180
  %218 = bitcast %struct.pdf_color_space_s** %ppcs172 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %218) #1
  %cleanup.dest.203 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.203, label %cleanup.218 [
    i32 0, label %cleanup.cont.204
  ]

cleanup.cont.204:                                 ; preds = %cleanup.202
  %219 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %cmp205 = icmp ne %struct.pdf_resource_s* %219, null
  br i1 %cmp205, label %if.then.207, label %if.end.217

if.then.207:                                      ; preds = %cleanup.cont.204
  %220 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %used_mask208 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %220, i32 0, i32 164
  %221 = load i64, i64* %used_mask208, align 8, !tbaa !170
  %222 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %where_used209 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %222, i32 0, i32 6
  %223 = load i64, i64* %where_used209, align 8, !tbaa !171
  %or210 = or i64 %223, %221
  store i64 %or210, i64* %where_used209, align 8, !tbaa !171
  %224 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %225 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %substream_Resources211 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %225, i32 0, i32 205
  %226 = load %struct.cos_dict_s*, %struct.cos_dict_s** %substream_Resources211, align 8, !tbaa !187
  %227 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %call212 = call i32 @pdf_add_resource(%struct.gx_device_pdf_s* %224, %struct.cos_dict_s* %226, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), %struct.pdf_resource_s* %227) #7
  store i32 %call212, i32* %code, align 4, !tbaa !49
  %228 = load i32, i32* %code, align 4, !tbaa !49
  %cmp213 = icmp slt i32 %228, 0
  br i1 %cmp213, label %if.then.215, label %if.end.216

if.then.215:                                      ; preds = %if.then.207
  %229 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %229, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.218

if.end.216:                                       ; preds = %if.then.207
  br label %if.end.217

if.end.217:                                       ; preds = %if.end.216, %cleanup.cont.204
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.218

cleanup.218:                                      ; preds = %if.end.217, %if.then.215, %cleanup.202
  %230 = bitcast %struct.cos_value_s* %value to i8*
  call void @llvm.lifetime.end(i64 24, i8* %230) #1
  %cleanup.dest.219 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.219, label %cleanup.249 [
    i32 0, label %cleanup.cont.220
  ]

cleanup.cont.220:                                 ; preds = %cleanup.218
  br label %if.end.221

if.end.221:                                       ; preds = %cleanup.cont.220, %if.end.163
  %231 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %cmp222 = icmp ne %struct.psdf_set_color_commands_s* %231, null
  br i1 %cmp222, label %if.then.224, label %if.end.236

if.then.224:                                      ; preds = %if.end.221
  %232 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm225 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %232, i32 0, i32 47
  %233 = load %struct.stream_s*, %struct.stream_s** %strm225, align 8, !tbaa !186
  %234 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %setcolorspace = getelementptr inbounds %struct.psdf_set_color_commands_s, %struct.psdf_set_color_commands_s* %234, i32 0, i32 3
  %235 = load i8*, i8** %setcolorspace, align 8, !tbaa !188
  %call226 = call i8* @pprints1(%struct.stream_s* %233, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* %235) #7
  %236 = load i32*, i32** %used_process_color.addr, align 8, !tbaa !1
  store i32 0, i32* %236, align 4, !tbaa !49
  %237 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm227 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %237, i32 0, i32 47
  %238 = load %struct.stream_s*, %struct.stream_s** %strm227, align 8, !tbaa !186
  %239 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %paint228 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %239, i32 0, i32 1
  %values229 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint228, i32 0, i32 0
  %arrayidx230 = getelementptr inbounds [64 x float], [64 x float]* %values229, i32 0, i64 0
  %240 = load float, float* %arrayidx230, align 4, !tbaa !94
  %conv231 = fpext float %240 to double
  %call232 = call double @psdf_round(double %conv231, i32 255, i32 8) #7
  %call233 = call i8* @pprintg1(%struct.stream_s* %238, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), double %call232) #7
  %241 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm234 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %241, i32 0, i32 47
  %242 = load %struct.stream_s*, %struct.stream_s** %strm234, align 8, !tbaa !186
  %243 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %setcolorn = getelementptr inbounds %struct.psdf_set_color_commands_s, %struct.psdf_set_color_commands_s* %243, i32 0, i32 5
  %244 = load i8*, i8** %setcolorn, align 8, !tbaa !190
  %call235 = call i8* @pprints1(%struct.stream_s* %242, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* %244) #7
  br label %if.end.236

if.end.236:                                       ; preds = %if.then.224, %if.end.221
  %245 = load %struct.cos_value_s*, %struct.cos_value_s** %pvalue.addr, align 8, !tbaa !1
  %cmp237 = icmp ne %struct.cos_value_s* %245, null
  br i1 %cmp237, label %if.then.239, label %if.end.248

if.then.239:                                      ; preds = %if.end.236
  %246 = load i32, i32* %by_name.addr, align 4, !tbaa !49
  %tobool240 = icmp ne i32 %246, 0
  br i1 %tobool240, label %if.then.241, label %if.else.244

if.then.241:                                      ; preds = %if.then.239
  %247 = load %struct.cos_value_s*, %struct.cos_value_s** %pvalue.addr, align 8, !tbaa !1
  %248 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %cos_procs242 = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %248, i32 0, i32 0
  %249 = bitcast %struct.cos_object_procs_s** %cos_procs242 to %struct.cos_object_s*
  %call243 = call %struct.cos_value_s* @cos_resource_value(%struct.cos_value_s* %247, %struct.cos_object_s* %249) #7
  br label %if.end.247

if.else.244:                                      ; preds = %if.then.239
  %250 = load %struct.cos_value_s*, %struct.cos_value_s** %pvalue.addr, align 8, !tbaa !1
  %251 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %cos_procs245 = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %251, i32 0, i32 0
  %252 = bitcast %struct.cos_object_procs_s** %cos_procs245 to %struct.cos_object_s*
  %call246 = call %struct.cos_value_s* @cos_object_value(%struct.cos_value_s* %250, %struct.cos_object_s* %252) #7
  br label %if.end.247

if.end.247:                                       ; preds = %if.else.244, %if.then.241
  br label %if.end.248

if.end.248:                                       ; preds = %if.end.247, %if.end.236
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.249

cleanup.249:                                      ; preds = %if.end.248, %cleanup.218, %if.then.161, %cleanup, %if.then.101, %if.then.95, %if.then.89, %if.then.62, %if.then.56, %if.then
  %253 = bitcast %struct.pdf_resource_s** %pres to i8*
  call void @llvm.lifetime.end(i64 8, i8* %253) #1
  %254 = bitcast i32* %name_string_length to i8*
  call void @llvm.lifetime.end(i64 4, i8* %254) #1
  %255 = bitcast i8** %name_string to i8*
  call void @llvm.lifetime.end(i64 8, i8* %255) #1
  %256 = bitcast %struct.cos_value_s* %v to i8*
  call void @llvm.lifetime.end(i64 24, i8* %256) #1
  %257 = bitcast %struct.cos_array_s** %pca1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %257) #1
  %258 = bitcast %struct.cos_array_s** %pca to i8*
  call void @llvm.lifetime.end(i64 8, i8* %258) #1
  %259 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %259) #1
  %260 = bitcast [4 x float]* %out_high to i8*
  call void @llvm.lifetime.end(i64 16, i8* %260) #1
  %261 = bitcast [4 x float]* %out_low to i8*
  call void @llvm.lifetime.end(i64 16, i8* %261) #1
  %262 = bitcast %struct.gs_function_s** %new_pfn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %262) #1
  %263 = bitcast i32* %csi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %263) #1
  %264 = load i32, i32* %retval
  ret i32 %264
}

declare i32 @pdf_make_base_space_function(%struct.gx_device_pdf_s*, %struct.gs_function_s**, i32, float*, float*) #3

declare i32 @pdf_delete_base_space_function(%struct.gx_device_pdf_s*, %struct.gs_function_s*) #3

; Function Attrs: nounwind uwtable
define void @rescale_cie_color(%struct.gs_range_s* %ranges, i32 %num_colorants, %struct.gs_client_color_s* %src, %struct.gs_client_color_s* %des) #0 {
entry:
  %ranges.addr = alloca %struct.gs_range_s*, align 8
  %num_colorants.addr = alloca i32, align 4
  %src.addr = alloca %struct.gs_client_color_s*, align 8
  %des.addr = alloca %struct.gs_client_color_s*, align 8
  %k = alloca i32, align 4
  store %struct.gs_range_s* %ranges, %struct.gs_range_s** %ranges.addr, align 8, !tbaa !1
  store i32 %num_colorants, i32* %num_colorants.addr, align 4, !tbaa !49
  store %struct.gs_client_color_s* %src, %struct.gs_client_color_s** %src.addr, align 8, !tbaa !1
  store %struct.gs_client_color_s* %des, %struct.gs_client_color_s** %des.addr, align 8, !tbaa !1
  %0 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %k, align 4, !tbaa !49
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %k, align 4, !tbaa !49
  %2 = load i32, i32* %num_colorants.addr, align 4, !tbaa !49
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %k, align 4, !tbaa !49
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %src.addr, align 8, !tbaa !1
  %paint = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %4, i32 0, i32 1
  %values = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint, i32 0, i32 0
  %arrayidx = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 %idxprom
  %5 = load float, float* %arrayidx, align 4, !tbaa !94
  %6 = load i32, i32* %k, align 4, !tbaa !49
  %idxprom1 = sext i32 %6 to i64
  %7 = load %struct.gs_range_s*, %struct.gs_range_s** %ranges.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %7, i64 %idxprom1
  %rmin = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx2, i32 0, i32 0
  %8 = load float, float* %rmin, align 4, !tbaa !195
  %sub = fsub float %5, %8
  %9 = load i32, i32* %k, align 4, !tbaa !49
  %idxprom3 = sext i32 %9 to i64
  %10 = load %struct.gs_range_s*, %struct.gs_range_s** %ranges.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %10, i64 %idxprom3
  %rmax = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx4, i32 0, i32 1
  %11 = load float, float* %rmax, align 4, !tbaa !197
  %12 = load i32, i32* %k, align 4, !tbaa !49
  %idxprom5 = sext i32 %12 to i64
  %13 = load %struct.gs_range_s*, %struct.gs_range_s** %ranges.addr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %13, i64 %idxprom5
  %rmin7 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx6, i32 0, i32 0
  %14 = load float, float* %rmin7, align 4, !tbaa !195
  %sub8 = fsub float %11, %14
  %div = fdiv float %sub, %sub8
  %15 = load i32, i32* %k, align 4, !tbaa !49
  %idxprom9 = sext i32 %15 to i64
  %16 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %des.addr, align 8, !tbaa !1
  %paint10 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %16, i32 0, i32 1
  %values11 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint10, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [64 x float], [64 x float]* %values11, i32 0, i64 %idxprom9
  store float %div, float* %arrayidx12, align 4, !tbaa !94
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %k, align 4, !tbaa !49
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %k, align 4, !tbaa !49
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @pdf_reset_color(%struct.gx_device_pdf_s* %pdev, %struct.gs_imager_state_s* %pis, %struct.gx_device_color_s* %pdc, %struct.gx_hl_saved_color_s* %psc, i32* %used_process_color, %struct.psdf_set_color_commands_s* %ppscc) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pdc.addr = alloca %struct.gx_device_color_s*, align 8
  %psc.addr = alloca %struct.gx_hl_saved_color_s*, align 8
  %used_process_color.addr = alloca i32*, align 8
  %ppscc.addr = alloca %struct.psdf_set_color_commands_s*, align 8
  %code = alloca i32, align 4
  %temp = alloca %struct.gx_hl_saved_color_s, align 8
  %pcs = alloca %struct.gs_color_space_s*, align 8
  %pcs2 = alloca %struct.gs_color_space_s*, align 8
  %pcc = alloca %struct.gs_client_color_s*, align 8
  %cs_value = alloca %struct.cos_value_s, align 8
  %command = alloca i8*, align 8
  %code1 = alloca i32, align 4
  %csi = alloca i32, align 4
  %csi2 = alloca i32, align 4
  %ranges = alloca %struct.gs_range_s*, align 8
  %cleanup.dest.slot = alloca i32
  %dcc = alloca %struct.gs_client_color_s*, align 8
  %pres = alloca %struct.pdf_resource_s*, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdc, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  store %struct.gx_hl_saved_color_s* %psc, %struct.gx_hl_saved_color_s** %psc.addr, align 8, !tbaa !1
  store i32* %used_process_color, i32** %used_process_color.addr, align 8, !tbaa !1
  store %struct.psdf_set_color_commands_s* %ppscc, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %code, align 4, !tbaa !49
  %1 = bitcast %struct.gx_hl_saved_color_s* %temp to i8*
  call void @llvm.lifetime.start(i64 632, i8* %1) #1
  %2 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast %struct.gs_color_space_s** %pcs2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast %struct.gs_client_color_s** %pcc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast %struct.cos_value_s* %cs_value to i8*
  call void @llvm.lifetime.start(i64 24, i8* %5) #1
  %6 = bitcast i8** %command to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i32* %code1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 0, i32* %code1, align 4, !tbaa !49
  %8 = bitcast i32* %csi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %csi2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast %struct.gs_range_s** %ranges to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store %struct.gs_range_s* null, %struct.gs_range_s** %ranges, align 8, !tbaa !1
  %11 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %UseOldColor = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %11, i32 0, i32 248
  %12 = load i32, i32* %UseOldColor, align 4, !tbaa !198
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %13 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %14 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %15 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %16 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc.addr, align 8, !tbaa !1
  %17 = load i32*, i32** %used_process_color.addr, align 8, !tbaa !1
  %18 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %call = call i32 @new_pdf_reset_color(%struct.gx_device_pdf_s* %13, %struct.gs_imager_state_s* %14, %struct.gx_device_color_s* %15, %struct.gx_hl_saved_color_s* %16, i32* %17, %struct.psdf_set_color_commands_s* %18) #7
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.180

if.end:                                           ; preds = %entry
  %19 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %skip_colors = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %19, i32 0, i32 207
  %20 = load i32, i32* %skip_colors, align 4, !tbaa !199
  %tobool1 = icmp ne i32 %20, 0
  br i1 %tobool1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.180

if.end.3:                                         ; preds = %if.end
  %21 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %22 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %call4 = call i32 @gx_hld_save_color(%struct.gs_imager_state_s* %21, %struct.gx_device_color_s* %22, %struct.gx_hl_saved_color_s* %temp) #7
  %23 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc.addr, align 8, !tbaa !1
  %call5 = call i32 @gx_hld_saved_color_equal(%struct.gx_hl_saved_color_s* %temp, %struct.gx_hl_saved_color_s* %23) #7
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.3
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.180

if.end.8:                                         ; preds = %if.end.3
  %24 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %25 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %call9 = call i32 @gx_hld_get_color_space_and_ccolor(%struct.gs_imager_state_s* %24, %struct.gx_device_color_s* %25, %struct.gs_color_space_s** %pcs, %struct.gs_client_color_s** %pcc) #7
  switch i32 %call9, label %sw.default.172 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.120
    i32 2, label %sw.bb.173
  ]

sw.bb:                                            ; preds = %if.end.8
  %26 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %call10 = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %26) #7
  store i32 %call10, i32* %csi2, align 4, !tbaa !91
  %27 = load i32, i32* %csi2, align 4, !tbaa !91
  %cmp = icmp eq i32 %27, 12
  br i1 %cmp, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %sw.bb
  %28 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %cmm_icc_profile_data = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %28, i32 0, i32 6
  %29 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data, align 8, !tbaa !200
  %call12 = call i32 @gsicc_get_default_type(%struct.cmm_profile_s* %29) #7
  store i32 %call12, i32* %csi2, align 4, !tbaa !91
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %sw.bb
  %30 = load i32, i32* %csi2, align 4, !tbaa !91
  switch i32 %30, label %sw.default.66 [
    i32 0, label %sw.bb.14
    i32 1, label %sw.bb.15
    i32 2, label %sw.bb.24
    i32 10, label %sw.bb.35
    i32 9, label %sw.bb.48
    i32 12, label %sw.bb.61
    i32 3, label %sw.bb.61
    i32 4, label %sw.bb.61
  ]

sw.bb.14:                                         ; preds = %if.end.13
  %31 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %setgray = getelementptr inbounds %struct.psdf_set_color_commands_s, %struct.psdf_set_color_commands_s* %31, i32 0, i32 0
  %32 = load i8*, i8** %setgray, align 8, !tbaa !201
  store i8* %32, i8** %command, align 8, !tbaa !1
  br label %sw.epilog.113

sw.bb.15:                                         ; preds = %if.end.13
  %33 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %33, i32 0, i32 73
  %ColorConversionStrategy = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params, i32 0, i32 17
  %34 = load i32, i32* %ColorConversionStrategy, align 4, !tbaa !157
  %cmp16 = icmp eq i32 %34, 5
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %sw.bb.15
  br label %write_process_color

if.end.18:                                        ; preds = %sw.bb.15
  %35 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %params19 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %35, i32 0, i32 73
  %ColorConversionStrategy20 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params19, i32 0, i32 17
  %36 = load i32, i32* %ColorConversionStrategy20, align 4, !tbaa !157
  %cmp21 = icmp eq i32 %36, 6
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.18
  br label %write_process_color

if.end.23:                                        ; preds = %if.end.18
  %37 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %setrgbcolor = getelementptr inbounds %struct.psdf_set_color_commands_s, %struct.psdf_set_color_commands_s* %37, i32 0, i32 1
  %38 = load i8*, i8** %setrgbcolor, align 8, !tbaa !202
  store i8* %38, i8** %command, align 8, !tbaa !1
  br label %sw.epilog.113

sw.bb.24:                                         ; preds = %if.end.13
  %39 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %params25 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %39, i32 0, i32 73
  %ColorConversionStrategy26 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params25, i32 0, i32 17
  %40 = load i32, i32* %ColorConversionStrategy26, align 4, !tbaa !157
  %cmp27 = icmp eq i32 %40, 4
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %sw.bb.24
  br label %write_process_color

if.end.29:                                        ; preds = %sw.bb.24
  %41 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %params30 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %41, i32 0, i32 73
  %ColorConversionStrategy31 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params30, i32 0, i32 17
  %42 = load i32, i32* %ColorConversionStrategy31, align 4, !tbaa !157
  %cmp32 = icmp eq i32 %42, 6
  br i1 %cmp32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.end.29
  br label %write_process_color

if.end.34:                                        ; preds = %if.end.29
  %43 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %setcmykcolor = getelementptr inbounds %struct.psdf_set_color_commands_s, %struct.psdf_set_color_commands_s* %43, i32 0, i32 2
  %44 = load i8*, i8** %setcmykcolor, align 8, !tbaa !203
  store i8* %44, i8** %command, align 8, !tbaa !1
  br label %sw.epilog.113

sw.bb.35:                                         ; preds = %if.end.13
  %45 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %CompatibilityLevel = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %45, i32 0, i32 75
  %46 = load double, double* %CompatibilityLevel, align 8, !tbaa !204
  %cmp36 = fcmp ole double %46, 1.200000e+00
  br i1 %cmp36, label %if.then.37, label %if.end.47

if.then.37:                                       ; preds = %sw.bb.35
  %47 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %base_space = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %47, i32 0, i32 3
  %48 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space, align 8, !tbaa !152
  store %struct.gs_color_space_s* %48, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %49 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %call38 = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %49) #7
  store i32 %call38, i32* %csi, align 4, !tbaa !91
  %50 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %51 = load i32, i32* %csi, align 4, !tbaa !91
  %call39 = call i32 @is_cspace_allowed_in_strategy(%struct.gx_device_pdf_s* %50, i32 %51) #7
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %if.end.42, label %if.then.41

if.then.41:                                       ; preds = %if.then.37
  br label %write_process_color

if.end.42:                                        ; preds = %if.then.37
  %52 = load i32, i32* %csi, align 4, !tbaa !91
  %cmp43 = icmp eq i32 %52, 9
  br i1 %cmp43, label %if.then.44, label %if.end.46

if.then.44:                                       ; preds = %if.end.42
  %53 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %base_space45 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %53, i32 0, i32 3
  %54 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space45, align 8, !tbaa !152
  store %struct.gs_color_space_s* %54, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  br label %check_pcs2

if.end.46:                                        ; preds = %if.end.42
  br label %check_pcs2

if.end.47:                                        ; preds = %sw.bb.35
  br label %scn

sw.bb.48:                                         ; preds = %if.end.13
  %55 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %CompatibilityLevel49 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %55, i32 0, i32 75
  %56 = load double, double* %CompatibilityLevel49, align 8, !tbaa !204
  %cmp50 = fcmp ole double %56, 1.200000e+00
  br i1 %cmp50, label %if.then.51, label %if.end.60

if.then.51:                                       ; preds = %sw.bb.48
  %57 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %base_space52 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %57, i32 0, i32 3
  %58 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space52, align 8, !tbaa !152
  store %struct.gs_color_space_s* %58, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  br label %check_pcs2

check_pcs2:                                       ; preds = %if.then.51, %if.end.46, %if.then.44
  %59 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %call53 = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %59) #7
  store i32 %call53, i32* %csi, align 4, !tbaa !91
  %60 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %61 = load i32, i32* %csi, align 4, !tbaa !91
  %call54 = call i32 @is_cspace_allowed_in_strategy(%struct.gx_device_pdf_s* %60, i32 %61) #7
  %tobool55 = icmp ne i32 %call54, 0
  br i1 %tobool55, label %if.end.57, label %if.then.56

if.then.56:                                       ; preds = %check_pcs2
  br label %write_process_color

if.end.57:                                        ; preds = %check_pcs2
  %62 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %call58 = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %62) #7
  switch i32 %call58, label %sw.default [
    i32 3, label %sw.bb.59
    i32 4, label %sw.bb.59
    i32 12, label %sw.bb.59
  ]

sw.bb.59:                                         ; preds = %if.end.57, %if.end.57, %if.end.57
  br label %write_process_color

sw.default:                                       ; preds = %if.end.57
  br label %do.body

do.body:                                          ; preds = %sw.default
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end
  br label %if.end.60

if.end.60:                                        ; preds = %sw.epilog, %sw.bb.48
  br label %scn

sw.bb.61:                                         ; preds = %if.end.13, %if.end.13, %if.end.13
  %63 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %CompatibilityLevel62 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %63, i32 0, i32 75
  %64 = load double, double* %CompatibilityLevel62, align 8, !tbaa !204
  %cmp63 = fcmp ole double %64, 1.200000e+00
  br i1 %cmp63, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %sw.bb.61
  br label %write_process_color

if.end.65:                                        ; preds = %sw.bb.61
  br label %scn

sw.default.66:                                    ; preds = %if.end.13
  %65 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %params67 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %65, i32 0, i32 73
  %ColorConversionStrategy68 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params67, i32 0, i32 17
  %66 = load i32, i32* %ColorConversionStrategy68, align 4, !tbaa !157
  %cmp69 = icmp eq i32 %66, 5
  br i1 %cmp69, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %sw.default.66
  br label %write_process_color

if.end.71:                                        ; preds = %sw.default.66
  %67 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %params72 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %67, i32 0, i32 73
  %ColorConversionStrategy73 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params72, i32 0, i32 17
  %68 = load i32, i32* %ColorConversionStrategy73, align 4, !tbaa !157
  %cmp74 = icmp eq i32 %68, 4
  br i1 %cmp74, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %if.end.71
  br label %write_process_color

if.end.76:                                        ; preds = %if.end.71
  %69 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %params77 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %69, i32 0, i32 73
  %ColorConversionStrategy78 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params77, i32 0, i32 17
  %70 = load i32, i32* %ColorConversionStrategy78, align 4, !tbaa !157
  %cmp79 = icmp eq i32 %70, 6
  br i1 %cmp79, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %if.end.76
  br label %write_process_color

if.end.81:                                        ; preds = %if.end.76
  br label %scn

scn:                                              ; preds = %if.end.81, %if.end.65, %if.end.60, %if.end.47
  %71 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %setcolorn = getelementptr inbounds %struct.psdf_set_color_commands_s, %struct.psdf_set_color_commands_s* %71, i32 0, i32 5
  %72 = load i8*, i8** %setcolorn, align 8, !tbaa !190
  store i8* %72, i8** %command, align 8, !tbaa !1
  %73 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc.addr, align 8, !tbaa !1
  %call82 = call i32 @gx_hld_saved_color_same_cspace(%struct.gx_hl_saved_color_s* %temp, %struct.gx_hl_saved_color_s* %73) #7
  %tobool83 = icmp ne i32 %call82, 0
  br i1 %tobool83, label %if.else, label %if.then.84

if.then.84:                                       ; preds = %scn
  %74 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %75 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %call85 = call i32 @pdf_color_space_named(%struct.gx_device_pdf_s* %74, %struct.cos_value_s* %cs_value, %struct.gs_range_s** %ranges, %struct.gs_color_space_s* %75, %struct.pdf_color_space_names_s* @pdf_color_space_names, i32 1, i8* null, i32 0, i32 0) #7
  store i32 %call85, i32* %code, align 4, !tbaa !49
  %76 = load i32, i32* %code, align 4, !tbaa !49
  %cmp86 = icmp eq i32 %76, -15
  br i1 %cmp86, label %if.then.87, label %if.end.88

if.then.87:                                       ; preds = %if.then.84
  br label %write_process_color

if.end.88:                                        ; preds = %if.then.84
  %77 = load i32, i32* %code, align 4, !tbaa !49
  %cmp89 = icmp slt i32 %77, 0
  br i1 %cmp89, label %if.then.90, label %if.end.91

if.then.90:                                       ; preds = %if.end.88
  %78 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %78, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.180

if.end.91:                                        ; preds = %if.end.88
  %79 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call92 = call i32 @cos_value_write(%struct.cos_value_s* %cs_value, %struct.gx_device_pdf_s* %79) #7
  store i32 %call92, i32* %code, align 4, !tbaa !49
  %80 = load i32, i32* %code, align 4, !tbaa !49
  %cmp93 = icmp slt i32 %80, 0
  br i1 %cmp93, label %if.then.94, label %if.end.95

if.then.94:                                       ; preds = %if.end.91
  %81 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %81, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.180

if.end.95:                                        ; preds = %if.end.91
  %82 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %82, i32 0, i32 47
  %83 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !186
  %84 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %setcolorspace = getelementptr inbounds %struct.psdf_set_color_commands_s, %struct.psdf_set_color_commands_s* %84, i32 0, i32 3
  %85 = load i8*, i8** %setcolorspace, align 8, !tbaa !188
  %call96 = call i8* @pprints1(%struct.stream_s* %83, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* %85) #7
  %86 = load %struct.gs_range_s*, %struct.gs_range_s** %ranges, align 8, !tbaa !1
  %tobool97 = icmp ne %struct.gs_range_s* %86, null
  br i1 %tobool97, label %land.lhs.true, label %if.end.108

land.lhs.true:                                    ; preds = %if.end.95
  %87 = load i32, i32* %csi2, align 4, !tbaa !91
  %cmp98 = icmp uge i32 %87, 5
  br i1 %cmp98, label %land.lhs.true.99, label %if.end.108

land.lhs.true.99:                                 ; preds = %land.lhs.true
  %88 = load i32, i32* %csi2, align 4, !tbaa !91
  %cmp100 = icmp ule i32 %88, 8
  br i1 %cmp100, label %if.then.101, label %if.end.108

if.then.101:                                      ; preds = %land.lhs.true.99
  %89 = bitcast %struct.gs_client_color_s** %dcc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %89) #1
  %90 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc, align 8, !tbaa !1
  store %struct.gs_client_color_s* %90, %struct.gs_client_color_s** %dcc, align 8, !tbaa !1
  %91 = load i32, i32* %csi2, align 4, !tbaa !91
  switch i32 %91, label %sw.default.106 [
    i32 5, label %sw.bb.102
    i32 6, label %sw.bb.103
    i32 7, label %sw.bb.104
    i32 8, label %sw.bb.105
  ]

sw.bb.102:                                        ; preds = %if.then.101
  %92 = load %struct.gs_range_s*, %struct.gs_range_s** %ranges, align 8, !tbaa !1
  %93 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc, align 8, !tbaa !1
  %94 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %dcc, align 8, !tbaa !1
  call void @rescale_cie_color(%struct.gs_range_s* %92, i32 4, %struct.gs_client_color_s* %93, %struct.gs_client_color_s* %94) #7
  br label %sw.epilog.107

sw.bb.103:                                        ; preds = %if.then.101
  %95 = load %struct.gs_range_s*, %struct.gs_range_s** %ranges, align 8, !tbaa !1
  %96 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc, align 8, !tbaa !1
  %97 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %dcc, align 8, !tbaa !1
  call void @rescale_cie_color(%struct.gs_range_s* %95, i32 3, %struct.gs_client_color_s* %96, %struct.gs_client_color_s* %97) #7
  br label %sw.epilog.107

sw.bb.104:                                        ; preds = %if.then.101
  %98 = load %struct.gs_range_s*, %struct.gs_range_s** %ranges, align 8, !tbaa !1
  %99 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc, align 8, !tbaa !1
  %100 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %dcc, align 8, !tbaa !1
  call void @rescale_cie_color(%struct.gs_range_s* %98, i32 3, %struct.gs_client_color_s* %99, %struct.gs_client_color_s* %100) #7
  br label %sw.epilog.107

sw.bb.105:                                        ; preds = %if.then.101
  %101 = load %struct.gs_range_s*, %struct.gs_range_s** %ranges, align 8, !tbaa !1
  %102 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc, align 8, !tbaa !1
  %103 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %dcc, align 8, !tbaa !1
  call void @rescale_cie_color(%struct.gs_range_s* %101, i32 1, %struct.gs_client_color_s* %102, %struct.gs_client_color_s* %103) #7
  br label %sw.epilog.107

sw.default.106:                                   ; preds = %if.then.101
  br label %sw.epilog.107

sw.epilog.107:                                    ; preds = %sw.default.106, %sw.bb.105, %sw.bb.104, %sw.bb.103, %sw.bb.102
  %104 = bitcast %struct.gs_client_color_s** %dcc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %104) #1
  br label %if.end.108

if.end.108:                                       ; preds = %sw.epilog.107, %land.lhs.true.99, %land.lhs.true, %if.end.95
  br label %if.end.112

if.else:                                          ; preds = %scn
  %105 = load i32*, i32** %used_process_color.addr, align 8, !tbaa !1
  %106 = load i32, i32* %105, align 4, !tbaa !49
  %tobool109 = icmp ne i32 %106, 0
  br i1 %tobool109, label %if.then.110, label %if.end.111

if.then.110:                                      ; preds = %if.else
  br label %write_process_color

if.end.111:                                       ; preds = %if.else
  br label %if.end.112

if.end.112:                                       ; preds = %if.end.111, %if.end.108
  br label %sw.epilog.113

sw.epilog.113:                                    ; preds = %if.end.112, %if.end.34, %if.end.23, %sw.bb.14
  %107 = load i32*, i32** %used_process_color.addr, align 8, !tbaa !1
  store i32 0, i32* %107, align 4, !tbaa !49
  %108 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %109 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %110 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc, align 8, !tbaa !1
  %call114 = call i32 @pdf_write_ccolor(%struct.gx_device_pdf_s* %108, %struct.gs_imager_state_s* %109, %struct.gs_client_color_s* %110) #7
  store i32 %call114, i32* %code, align 4, !tbaa !49
  %111 = load i32, i32* %code, align 4, !tbaa !49
  %cmp115 = icmp slt i32 %111, 0
  br i1 %cmp115, label %if.then.116, label %if.end.117

if.then.116:                                      ; preds = %sw.epilog.113
  %112 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %112, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.180

if.end.117:                                       ; preds = %sw.epilog.113
  %113 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm118 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %113, i32 0, i32 47
  %114 = load %struct.stream_s*, %struct.stream_s** %strm118, align 8, !tbaa !186
  %115 = load i8*, i8** %command, align 8, !tbaa !1
  %call119 = call i8* @pprints1(%struct.stream_s* %114, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* %115) #7
  br label %sw.epilog.179

sw.bb.120:                                        ; preds = %if.end.8
  %116 = bitcast %struct.pdf_resource_s** %pres to i8*
  call void @llvm.lifetime.start(i64 8, i8* %116) #1
  %117 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %117, i32 0, i32 0
  %118 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !106
  %cmp121 = icmp eq %struct.gx_device_color_type_s* %118, @gx_dc_pattern
  br i1 %cmp121, label %if.then.122, label %if.else.124

if.then.122:                                      ; preds = %sw.bb.120
  %119 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %120 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %121 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %122 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %123 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %have_pattern_streams = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %123, i32 0, i32 31
  %124 = load i32, i32* %have_pattern_streams, align 4, !tbaa !205
  %call123 = call i32 @pdf_put_colored_pattern(%struct.gx_device_pdf_s* %119, %struct.gx_device_color_s* %120, %struct.gs_color_space_s* %121, %struct.psdf_set_color_commands_s* %122, i32 %124, %struct.pdf_resource_s** %pres) #7
  store i32 %call123, i32* %code, align 4, !tbaa !49
  br label %if.end.155

if.else.124:                                      ; preds = %sw.bb.120
  %125 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %type125 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %125, i32 0, i32 0
  %126 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type125, align 8, !tbaa !106
  %cmp126 = icmp eq %struct.gx_device_color_type_s* %126, @gx_dc_pure_masked
  br i1 %cmp126, label %if.then.127, label %if.else.139

if.then.127:                                      ; preds = %if.else.124
  %127 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %128 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %129 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %130 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %131 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %have_pattern_streams128 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %131, i32 0, i32 31
  %132 = load i32, i32* %have_pattern_streams128, align 4, !tbaa !205
  %call129 = call i32 @pdf_put_uncolored_pattern(%struct.gx_device_pdf_s* %127, %struct.gx_device_color_s* %128, %struct.gs_color_space_s* %129, %struct.psdf_set_color_commands_s* %130, i32 %132, %struct.pdf_resource_s** %pres) #7
  store i32 %call129, i32* %code, align 4, !tbaa !49
  %133 = load i32, i32* %code, align 4, !tbaa !49
  %cmp130 = icmp slt i32 %133, 0
  br i1 %cmp130, label %if.then.132, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.127
  %134 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %cmp131 = icmp eq %struct.pdf_resource_s* %134, null
  br i1 %cmp131, label %if.then.132, label %if.end.133

if.then.132:                                      ; preds = %lor.lhs.false, %if.then.127
  %135 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc.addr, align 8, !tbaa !1
  %136 = bitcast %struct.gx_hl_saved_color_s* %135 to i8*
  %137 = bitcast %struct.gx_hl_saved_color_s* %temp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %136, i8* %137, i64 632, i32 8, i1 false), !tbaa.struct !90
  %138 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %138, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.133:                                       ; preds = %lor.lhs.false
  %139 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %have_pattern_streams134 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %139, i32 0, i32 31
  %140 = load i32, i32* %have_pattern_streams134, align 4, !tbaa !205
  %tobool135 = icmp ne i32 %140, 0
  br i1 %tobool135, label %if.then.136, label %if.end.138

if.then.136:                                      ; preds = %if.end.133
  %141 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %142 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %143 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc, align 8, !tbaa !1
  %call137 = call i32 @pdf_write_ccolor(%struct.gx_device_pdf_s* %141, %struct.gs_imager_state_s* %142, %struct.gs_client_color_s* %143) #7
  store i32 %call137, i32* %code, align 4, !tbaa !49
  br label %if.end.138

if.end.138:                                       ; preds = %if.then.136, %if.end.133
  br label %if.end.154

if.else.139:                                      ; preds = %if.else.124
  %144 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %type140 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %144, i32 0, i32 0
  %145 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type140, align 8, !tbaa !106
  %cmp141 = icmp eq %struct.gx_device_color_type_s* %145, @gx_dc_pattern2
  br i1 %cmp141, label %if.then.142, label %if.else.152

if.then.142:                                      ; preds = %if.else.139
  %146 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %CompatibilityLevel143 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %146, i32 0, i32 75
  %147 = load double, double* %CompatibilityLevel143, align 8, !tbaa !204
  %cmp144 = fcmp ole double %147, 1.200000e+00
  br i1 %cmp144, label %if.then.145, label %if.end.146

if.then.145:                                      ; preds = %if.then.142
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.146:                                       ; preds = %if.then.142
  %148 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %149 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %call147 = call i32 @is_pattern2_allowed_in_strategy(%struct.gx_device_pdf_s* %148, %struct.gx_device_color_s* %149) #7
  %tobool148 = icmp ne i32 %call147, 0
  br i1 %tobool148, label %if.end.150, label %if.then.149

if.then.149:                                      ; preds = %if.end.146
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.150:                                       ; preds = %if.end.146
  %150 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %151 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %152 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %call151 = call i32 @pdf_put_pattern2(%struct.gx_device_pdf_s* %150, %struct.gx_device_color_s* %151, %struct.psdf_set_color_commands_s* %152, %struct.pdf_resource_s** %pres) #7
  store i32 %call151, i32* %code1, align 4, !tbaa !49
  br label %if.end.153

if.else.152:                                      ; preds = %if.else.139
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.153:                                       ; preds = %if.end.150
  br label %if.end.154

if.end.154:                                       ; preds = %if.end.153, %if.end.138
  br label %if.end.155

if.end.155:                                       ; preds = %if.end.154, %if.then.122
  %153 = load i32, i32* %code, align 4, !tbaa !49
  %cmp156 = icmp slt i32 %153, 0
  br i1 %cmp156, label %if.then.157, label %if.end.158

if.then.157:                                      ; preds = %if.end.155
  %154 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %154, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.158:                                       ; preds = %if.end.155
  %155 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %156 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %substream_Resources = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %156, i32 0, i32 205
  %157 = load %struct.cos_dict_s*, %struct.cos_dict_s** %substream_Resources, align 8, !tbaa !187
  %158 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %call159 = call i32 @pdf_add_resource(%struct.gx_device_pdf_s* %155, %struct.cos_dict_s* %157, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), %struct.pdf_resource_s* %158) #7
  store i32 %call159, i32* %code, align 4, !tbaa !49
  %159 = load i32, i32* %code1, align 4, !tbaa !49
  %cmp160 = icmp ne i32 %159, -15
  br i1 %cmp160, label %if.then.161, label %if.else.167

if.then.161:                                      ; preds = %if.end.158
  %160 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %object = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %160, i32 0, i32 7
  %161 = load %struct.cos_object_s*, %struct.cos_object_s** %object, align 8, !tbaa !161
  %call162 = call %struct.cos_value_s* @cos_resource_value(%struct.cos_value_s* %cs_value, %struct.cos_object_s* %161) #7
  %162 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call163 = call i32 @cos_value_write(%struct.cos_value_s* %call162, %struct.gx_device_pdf_s* %162) #7
  %163 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm164 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %163, i32 0, i32 47
  %164 = load %struct.stream_s*, %struct.stream_s** %strm164, align 8, !tbaa !186
  %165 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %setcolorn165 = getelementptr inbounds %struct.psdf_set_color_commands_s, %struct.psdf_set_color_commands_s* %165, i32 0, i32 5
  %166 = load i8*, i8** %setcolorn165, align 8, !tbaa !190
  %call166 = call i8* @pprints1(%struct.stream_s* %164, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* %166) #7
  br label %if.end.168

if.else.167:                                      ; preds = %if.end.158
  %167 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %where_used = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %167, i32 0, i32 6
  store i64 0, i64* %where_used, align 8, !tbaa !171
  br label %if.end.168

if.end.168:                                       ; preds = %if.else.167, %if.then.161
  %168 = load i32, i32* %code, align 4, !tbaa !49
  %cmp169 = icmp slt i32 %168, 0
  br i1 %cmp169, label %if.then.170, label %if.end.171

if.then.170:                                      ; preds = %if.end.168
  %169 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %169, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.171:                                       ; preds = %if.end.168
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.171, %if.then.170, %if.then.157, %if.else.152, %if.then.149, %if.then.145, %if.then.132
  %170 = bitcast %struct.pdf_resource_s** %pres to i8*
  call void @llvm.lifetime.end(i64 8, i8* %170) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.180 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  %171 = load i32*, i32** %used_process_color.addr, align 8, !tbaa !1
  store i32 0, i32* %171, align 4, !tbaa !49
  br label %sw.epilog.179

sw.default.172:                                   ; preds = %if.end.8
  br label %sw.bb.173

sw.bb.173:                                        ; preds = %if.end.8, %sw.default.172
  br label %write_process_color

write_process_color:                              ; preds = %sw.bb.173, %if.then.110, %if.then.87, %if.then.80, %if.then.75, %if.then.70, %if.then.64, %sw.bb.59, %if.then.56, %if.then.41, %if.then.33, %if.then.28, %if.then.22, %if.then.17
  %172 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %173 = bitcast %struct.gx_device_pdf_s* %172 to %struct.gx_device_vector_s*
  %174 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %175 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %176 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %UseOldColor174 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %176, i32 0, i32 248
  %177 = load i32, i32* %UseOldColor174, align 4, !tbaa !198
  %call175 = call i32 @psdf_set_color(%struct.gx_device_vector_s* %173, %struct.gx_device_color_s* %174, %struct.psdf_set_color_commands_s* %175, i32 %177) #7
  store i32 %call175, i32* %code, align 4, !tbaa !49
  %178 = load i32, i32* %code, align 4, !tbaa !49
  %cmp176 = icmp slt i32 %178, 0
  br i1 %cmp176, label %if.then.177, label %if.end.178

if.then.177:                                      ; preds = %write_process_color
  %179 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %179, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.180

if.end.178:                                       ; preds = %write_process_color
  %180 = load i32*, i32** %used_process_color.addr, align 8, !tbaa !1
  store i32 1, i32* %180, align 4, !tbaa !49
  br label %sw.epilog.179

sw.epilog.179:                                    ; preds = %if.end.178, %cleanup.cont, %if.end.117
  %181 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc.addr, align 8, !tbaa !1
  %182 = bitcast %struct.gx_hl_saved_color_s* %181 to i8*
  %183 = bitcast %struct.gx_hl_saved_color_s* %temp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %182, i8* %183, i64 632, i32 8, i1 false), !tbaa.struct !90
  %184 = load i32, i32* %code1, align 4, !tbaa !49
  store i32 %184, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.180

cleanup.180:                                      ; preds = %sw.epilog.179, %if.then.177, %cleanup, %if.then.116, %if.then.94, %if.then.90, %if.then.7, %if.then.2, %if.then
  %185 = bitcast %struct.gs_range_s** %ranges to i8*
  call void @llvm.lifetime.end(i64 8, i8* %185) #1
  %186 = bitcast i32* %csi2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %186) #1
  %187 = bitcast i32* %csi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %187) #1
  %188 = bitcast i32* %code1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %188) #1
  %189 = bitcast i8** %command to i8*
  call void @llvm.lifetime.end(i64 8, i8* %189) #1
  %190 = bitcast %struct.cos_value_s* %cs_value to i8*
  call void @llvm.lifetime.end(i64 24, i8* %190) #1
  %191 = bitcast %struct.gs_client_color_s** %pcc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %191) #1
  %192 = bitcast %struct.gs_color_space_s** %pcs2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %192) #1
  %193 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %193) #1
  %194 = bitcast %struct.gx_hl_saved_color_s* %temp to i8*
  call void @llvm.lifetime.end(i64 632, i8* %194) #1
  %195 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %195) #1
  %196 = load i32, i32* %retval
  ret i32 %196
}

; Function Attrs: nounwind uwtable
define internal i32 @new_pdf_reset_color(%struct.gx_device_pdf_s* %pdev, %struct.gs_imager_state_s* %pis, %struct.gx_device_color_s* %pdc, %struct.gx_hl_saved_color_s* %psc, i32* %used_process_color, %struct.psdf_set_color_commands_s* %ppscc) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pdc.addr = alloca %struct.gx_device_color_s*, align 8
  %psc.addr = alloca %struct.gx_hl_saved_color_s*, align 8
  %used_process_color.addr = alloca i32*, align 8
  %ppscc.addr = alloca %struct.psdf_set_color_commands_s*, align 8
  %code = alloca i32, align 4
  %code1 = alloca i32, align 4
  %temp = alloca %struct.gx_hl_saved_color_s, align 8
  %pcc = alloca %struct.gs_client_color_s*, align 8
  %cs_value = alloca %struct.cos_value_s, align 8
  %csi = alloca i32, align 4
  %csi2 = alloca i32, align 4
  %pcs = alloca %struct.gs_color_space_s*, align 8
  %pcs2 = alloca %struct.gs_color_space_s*, align 8
  %cleanup.dest.slot = alloca i32
  %pres = alloca %struct.pdf_resource_s*, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdc, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  store %struct.gx_hl_saved_color_s* %psc, %struct.gx_hl_saved_color_s** %psc.addr, align 8, !tbaa !1
  store i32* %used_process_color, i32** %used_process_color.addr, align 8, !tbaa !1
  store %struct.psdf_set_color_commands_s* %ppscc, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %code, align 4, !tbaa !49
  %1 = bitcast i32* %code1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %code1, align 4, !tbaa !49
  %2 = bitcast %struct.gx_hl_saved_color_s* %temp to i8*
  call void @llvm.lifetime.start(i64 632, i8* %2) #1
  %3 = bitcast %struct.gs_client_color_s** %pcc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast %struct.cos_value_s* %cs_value to i8*
  call void @llvm.lifetime.start(i64 24, i8* %4) #1
  %5 = bitcast i32* %csi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %csi2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast %struct.gs_color_space_s** %pcs2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %skip_colors = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %9, i32 0, i32 207
  %10 = load i32, i32* %skip_colors, align 4, !tbaa !199
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.426

if.end:                                           ; preds = %entry
  %11 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %12 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %call = call i32 @gx_hld_save_color(%struct.gs_imager_state_s* %11, %struct.gx_device_color_s* %12, %struct.gx_hl_saved_color_s* %temp) #7
  %13 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc.addr, align 8, !tbaa !1
  %call1 = call i32 @gx_hld_saved_color_equal(%struct.gx_hl_saved_color_s* %temp, %struct.gx_hl_saved_color_s* %13) #7
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.426

if.end.4:                                         ; preds = %if.end
  %14 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %15 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %call5 = call i32 @gx_hld_get_color_space_and_ccolor(%struct.gs_imager_state_s* %14, %struct.gx_device_color_s* %15, %struct.gs_color_space_s** %pcs, %struct.gs_client_color_s** %pcc) #7
  switch i32 %call5, label %sw.default.419 [
    i32 1, label %sw.bb
    i32 0, label %sw.bb.59
    i32 2, label %sw.bb.420
  ]

sw.bb:                                            ; preds = %if.end.4
  %16 = bitcast %struct.pdf_resource_s** %pres to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %17, i32 0, i32 0
  %18 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !106
  %cmp = icmp eq %struct.gx_device_color_type_s* %18, @gx_dc_pattern
  br i1 %cmp, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %sw.bb
  %19 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %CompatibilityLevel = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %19, i32 0, i32 75
  %20 = load double, double* %CompatibilityLevel, align 8, !tbaa !204
  %cmp7 = fcmp olt double %20, 1.200000e+00
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.then.6
  store i32 -21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.then.6
  %21 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %22 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %23 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %24 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %25 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %have_pattern_streams = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %25, i32 0, i32 31
  %26 = load i32, i32* %have_pattern_streams, align 4, !tbaa !205
  %call10 = call i32 @pdf_put_colored_pattern(%struct.gx_device_pdf_s* %21, %struct.gx_device_color_s* %22, %struct.gs_color_space_s* %23, %struct.psdf_set_color_commands_s* %24, i32 %26, %struct.pdf_resource_s** %pres) #7
  store i32 %call10, i32* %code, align 4, !tbaa !49
  br label %if.end.44

if.else:                                          ; preds = %sw.bb
  %27 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %type11 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %27, i32 0, i32 0
  %28 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type11, align 8, !tbaa !106
  %cmp12 = icmp eq %struct.gx_device_color_type_s* %28, @gx_dc_pure_masked
  br i1 %cmp12, label %if.then.13, label %if.else.25

if.then.13:                                       ; preds = %if.else
  %29 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %30 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %31 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %32 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %33 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %have_pattern_streams14 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %33, i32 0, i32 31
  %34 = load i32, i32* %have_pattern_streams14, align 4, !tbaa !205
  %call15 = call i32 @pdf_put_uncolored_pattern(%struct.gx_device_pdf_s* %29, %struct.gx_device_color_s* %30, %struct.gs_color_space_s* %31, %struct.psdf_set_color_commands_s* %32, i32 %34, %struct.pdf_resource_s** %pres) #7
  store i32 %call15, i32* %code, align 4, !tbaa !49
  %35 = load i32, i32* %code, align 4, !tbaa !49
  %cmp16 = icmp slt i32 %35, 0
  br i1 %cmp16, label %if.then.18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.13
  %36 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %cmp17 = icmp eq %struct.pdf_resource_s* %36, null
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %lor.lhs.false, %if.then.13
  %37 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc.addr, align 8, !tbaa !1
  %38 = bitcast %struct.gx_hl_saved_color_s* %37 to i8*
  %39 = bitcast %struct.gx_hl_saved_color_s* %temp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %38, i8* %39, i64 632, i32 8, i1 false), !tbaa.struct !90
  %40 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %40, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.19:                                        ; preds = %lor.lhs.false
  %41 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %have_pattern_streams20 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %41, i32 0, i32 31
  %42 = load i32, i32* %have_pattern_streams20, align 4, !tbaa !205
  %tobool21 = icmp ne i32 %42, 0
  br i1 %tobool21, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %if.end.19
  %43 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %44 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %45 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc, align 8, !tbaa !1
  %call23 = call i32 @pdf_write_ccolor(%struct.gx_device_pdf_s* %43, %struct.gs_imager_state_s* %44, %struct.gs_client_color_s* %45) #7
  store i32 %call23, i32* %code, align 4, !tbaa !49
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %if.end.19
  br label %if.end.43

if.else.25:                                       ; preds = %if.else
  %46 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %type26 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %46, i32 0, i32 0
  %47 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type26, align 8, !tbaa !106
  %cmp27 = icmp eq %struct.gx_device_color_type_s* %47, @gx_dc_pattern2
  br i1 %cmp27, label %if.then.28, label %if.else.41

if.then.28:                                       ; preds = %if.else.25
  %48 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %CompatibilityLevel29 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %48, i32 0, i32 75
  %49 = load double, double* %CompatibilityLevel29, align 8, !tbaa !204
  %cmp30 = fcmp ole double %49, 1.200000e+00
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.then.28
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.32:                                        ; preds = %if.then.28
  %50 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %51 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %call33 = call i32 @is_pattern2_allowed_in_strategy(%struct.gx_device_pdf_s* %50, %struct.gx_device_color_s* %51) #7
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.end.36, label %if.then.35

if.then.35:                                       ; preds = %if.end.32
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.36:                                        ; preds = %if.end.32
  %52 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %53 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %54 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %call37 = call i32 @pdf_put_pattern2(%struct.gx_device_pdf_s* %52, %struct.gx_device_color_s* %53, %struct.psdf_set_color_commands_s* %54, %struct.pdf_resource_s** %pres) #7
  store i32 %call37, i32* %code1, align 4, !tbaa !49
  %55 = load i32, i32* %code1, align 4, !tbaa !49
  %cmp38 = icmp slt i32 %55, 0
  br i1 %cmp38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.end.36
  %56 = load i32, i32* %code1, align 4, !tbaa !49
  store i32 %56, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.40:                                        ; preds = %if.end.36
  br label %if.end.42

if.else.41:                                       ; preds = %if.else.25
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.42:                                        ; preds = %if.end.40
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.end.24
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.end.9
  %57 = load i32, i32* %code, align 4, !tbaa !49
  %cmp45 = icmp slt i32 %57, 0
  br i1 %cmp45, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.end.44
  %58 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %58, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.47:                                        ; preds = %if.end.44
  %59 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %60 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %substream_Resources = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %60, i32 0, i32 205
  %61 = load %struct.cos_dict_s*, %struct.cos_dict_s** %substream_Resources, align 8, !tbaa !187
  %62 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %call48 = call i32 @pdf_add_resource(%struct.gx_device_pdf_s* %59, %struct.cos_dict_s* %61, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), %struct.pdf_resource_s* %62) #7
  store i32 %call48, i32* %code, align 4, !tbaa !49
  %63 = load i32, i32* %code1, align 4, !tbaa !49
  %cmp49 = icmp ne i32 %63, -15
  br i1 %cmp49, label %if.then.50, label %if.else.54

if.then.50:                                       ; preds = %if.end.47
  %64 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %object = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %64, i32 0, i32 7
  %65 = load %struct.cos_object_s*, %struct.cos_object_s** %object, align 8, !tbaa !161
  %call51 = call %struct.cos_value_s* @cos_resource_value(%struct.cos_value_s* %cs_value, %struct.cos_object_s* %65) #7
  %66 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call52 = call i32 @cos_value_write(%struct.cos_value_s* %call51, %struct.gx_device_pdf_s* %66) #7
  %67 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %67, i32 0, i32 47
  %68 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !186
  %69 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %setcolorn = getelementptr inbounds %struct.psdf_set_color_commands_s, %struct.psdf_set_color_commands_s* %69, i32 0, i32 5
  %70 = load i8*, i8** %setcolorn, align 8, !tbaa !190
  %call53 = call i8* @pprints1(%struct.stream_s* %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* %70) #7
  br label %if.end.55

if.else.54:                                       ; preds = %if.end.47
  %71 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %where_used = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %71, i32 0, i32 6
  store i64 0, i64* %where_used, align 8, !tbaa !171
  br label %if.end.55

if.end.55:                                        ; preds = %if.else.54, %if.then.50
  %72 = load i32, i32* %code, align 4, !tbaa !49
  %cmp56 = icmp slt i32 %72, 0
  br i1 %cmp56, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %if.end.55
  %73 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %73, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.58:                                        ; preds = %if.end.55
  %74 = load i32*, i32** %used_process_color.addr, align 8, !tbaa !1
  store i32 0, i32* %74, align 4, !tbaa !49
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.58, %if.then.57, %if.then.46, %if.else.41, %if.then.39, %if.then.35, %if.then.31, %if.then.18, %if.then.8
  %75 = bitcast %struct.pdf_resource_s** %pres to i8*
  call void @llvm.lifetime.end(i64 8, i8* %75) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.426 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %sw.epilog.425

sw.bb.59:                                         ; preds = %if.end.4
  %76 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  store %struct.gs_color_space_s* %76, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %77 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %call60 = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %77) #7
  store i32 %call60, i32* %csi2, align 4, !tbaa !91
  store i32 %call60, i32* %csi, align 4, !tbaa !91
  %78 = load i32, i32* %csi, align 4, !tbaa !91
  %cmp61 = icmp eq i32 %78, 12
  br i1 %cmp61, label %if.then.62, label %if.end.64

if.then.62:                                       ; preds = %sw.bb.59
  %79 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %cmm_icc_profile_data = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %79, i32 0, i32 6
  %80 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data, align 8, !tbaa !200
  %call63 = call i32 @gsicc_get_default_type(%struct.cmm_profile_s* %80) #7
  store i32 %call63, i32* %csi2, align 4, !tbaa !91
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.62, %sw.bb.59
  %81 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %CompatibilityLevel65 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %81, i32 0, i32 75
  %82 = load double, double* %CompatibilityLevel65, align 8, !tbaa !204
  %cmp66 = fcmp ole double %82, 1.200000e+00
  br i1 %cmp66, label %if.then.67, label %if.else.184

if.then.67:                                       ; preds = %if.end.64
  %83 = load i32, i32* %csi2, align 4, !tbaa !91
  %cmp68 = icmp eq i32 %83, 10
  br i1 %cmp68, label %if.then.69, label %if.end.71

if.then.69:                                       ; preds = %if.then.67
  %84 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %base_space = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %84, i32 0, i32 3
  %85 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space, align 8, !tbaa !152
  store %struct.gs_color_space_s* %85, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %86 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %call70 = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %86) #7
  store i32 %call70, i32* %csi2, align 4, !tbaa !91
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.69, %if.then.67
  %87 = load i32, i32* %csi2, align 4, !tbaa !91
  switch i32 %87, label %sw.default.182 [
    i32 0, label %sw.bb.72
    i32 1, label %sw.bb.83
    i32 2, label %sw.bb.96
    i32 8, label %sw.bb.109
    i32 7, label %sw.bb.109
    i32 6, label %sw.bb.109
    i32 5, label %sw.bb.109
    i32 9, label %sw.bb.120
    i32 4, label %sw.bb.131
    i32 12, label %sw.bb.142
    i32 3, label %sw.bb.180
    i32 10, label %sw.bb.180
  ]

sw.bb.72:                                         ; preds = %if.end.71
  %88 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %88, i32 0, i32 73
  %ColorConversionStrategy = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params, i32 0, i32 17
  %89 = load i32, i32* %ColorConversionStrategy, align 4, !tbaa !157
  %cmp73 = icmp eq i32 %89, 0
  br i1 %cmp73, label %if.then.78, label %lor.lhs.false.74

lor.lhs.false.74:                                 ; preds = %sw.bb.72
  %90 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %params75 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %90, i32 0, i32 73
  %ColorConversionStrategy76 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params75, i32 0, i32 17
  %91 = load i32, i32* %ColorConversionStrategy76, align 4, !tbaa !157
  %cmp77 = icmp eq i32 %91, 6
  br i1 %cmp77, label %if.then.78, label %if.else.80

if.then.78:                                       ; preds = %lor.lhs.false.74, %sw.bb.72
  %92 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %93 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %94 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc, align 8, !tbaa !1
  %95 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc.addr, align 8, !tbaa !1
  %96 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %97 = load i32*, i32** %used_process_color.addr, align 8, !tbaa !1
  %98 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %99 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %call79 = call i32 @write_color_unchanged(%struct.gx_device_pdf_s* %92, %struct.gs_imager_state_s* %93, %struct.gs_client_color_s* %94, %struct.gx_hl_saved_color_s* %temp, %struct.gx_hl_saved_color_s* %95, %struct.psdf_set_color_commands_s* %96, i32* %97, %struct.gs_color_space_s* %98, %struct.gx_device_color_s* %99) #7
  store i32 %call79, i32* %code, align 4, !tbaa !49
  br label %if.end.82

if.else.80:                                       ; preds = %lor.lhs.false.74
  %100 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %101 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %102 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %103 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %104 = load i32*, i32** %used_process_color.addr, align 8, !tbaa !1
  %105 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %106 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc, align 8, !tbaa !1
  %call81 = call i32 @write_color_as_process(%struct.gx_device_pdf_s* %100, %struct.gs_imager_state_s* %101, %struct.gs_color_space_s* %102, %struct.gx_device_color_s* %103, i32* %104, %struct.psdf_set_color_commands_s* %105, %struct.gs_client_color_s* %106) #7
  store i32 %call81, i32* %code, align 4, !tbaa !49
  br label %if.end.82

if.end.82:                                        ; preds = %if.else.80, %if.then.78
  br label %sw.epilog.183

sw.bb.83:                                         ; preds = %if.end.71
  %107 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %params84 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %107, i32 0, i32 73
  %ColorConversionStrategy85 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params84, i32 0, i32 17
  %108 = load i32, i32* %ColorConversionStrategy85, align 4, !tbaa !157
  %cmp86 = icmp eq i32 %108, 0
  br i1 %cmp86, label %if.then.91, label %lor.lhs.false.87

lor.lhs.false.87:                                 ; preds = %sw.bb.83
  %109 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %params88 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %109, i32 0, i32 73
  %ColorConversionStrategy89 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params88, i32 0, i32 17
  %110 = load i32, i32* %ColorConversionStrategy89, align 4, !tbaa !157
  %cmp90 = icmp eq i32 %110, 7
  br i1 %cmp90, label %if.then.91, label %if.else.93

if.then.91:                                       ; preds = %lor.lhs.false.87, %sw.bb.83
  %111 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %112 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %113 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc, align 8, !tbaa !1
  %114 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc.addr, align 8, !tbaa !1
  %115 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %116 = load i32*, i32** %used_process_color.addr, align 8, !tbaa !1
  %117 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %118 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %call92 = call i32 @write_color_unchanged(%struct.gx_device_pdf_s* %111, %struct.gs_imager_state_s* %112, %struct.gs_client_color_s* %113, %struct.gx_hl_saved_color_s* %temp, %struct.gx_hl_saved_color_s* %114, %struct.psdf_set_color_commands_s* %115, i32* %116, %struct.gs_color_space_s* %117, %struct.gx_device_color_s* %118) #7
  store i32 %call92, i32* %code, align 4, !tbaa !49
  br label %if.end.95

if.else.93:                                       ; preds = %lor.lhs.false.87
  %119 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %120 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %121 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %122 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %123 = load i32*, i32** %used_process_color.addr, align 8, !tbaa !1
  %124 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %125 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc, align 8, !tbaa !1
  %call94 = call i32 @write_color_as_process(%struct.gx_device_pdf_s* %119, %struct.gs_imager_state_s* %120, %struct.gs_color_space_s* %121, %struct.gx_device_color_s* %122, i32* %123, %struct.psdf_set_color_commands_s* %124, %struct.gs_client_color_s* %125) #7
  store i32 %call94, i32* %code, align 4, !tbaa !49
  br label %if.end.95

if.end.95:                                        ; preds = %if.else.93, %if.then.91
  br label %sw.epilog.183

sw.bb.96:                                         ; preds = %if.end.71
  %126 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %params97 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %126, i32 0, i32 73
  %ColorConversionStrategy98 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params97, i32 0, i32 17
  %127 = load i32, i32* %ColorConversionStrategy98, align 4, !tbaa !157
  %cmp99 = icmp eq i32 %127, 0
  br i1 %cmp99, label %if.then.104, label %lor.lhs.false.100

lor.lhs.false.100:                                ; preds = %sw.bb.96
  %128 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %params101 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %128, i32 0, i32 73
  %ColorConversionStrategy102 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params101, i32 0, i32 17
  %129 = load i32, i32* %ColorConversionStrategy102, align 4, !tbaa !157
  %cmp103 = icmp eq i32 %129, 5
  br i1 %cmp103, label %if.then.104, label %if.else.106

if.then.104:                                      ; preds = %lor.lhs.false.100, %sw.bb.96
  %130 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %131 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %132 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc, align 8, !tbaa !1
  %133 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc.addr, align 8, !tbaa !1
  %134 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %135 = load i32*, i32** %used_process_color.addr, align 8, !tbaa !1
  %136 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %137 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %call105 = call i32 @write_color_unchanged(%struct.gx_device_pdf_s* %130, %struct.gs_imager_state_s* %131, %struct.gs_client_color_s* %132, %struct.gx_hl_saved_color_s* %temp, %struct.gx_hl_saved_color_s* %133, %struct.psdf_set_color_commands_s* %134, i32* %135, %struct.gs_color_space_s* %136, %struct.gx_device_color_s* %137) #7
  store i32 %call105, i32* %code, align 4, !tbaa !49
  br label %if.end.108

if.else.106:                                      ; preds = %lor.lhs.false.100
  %138 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %139 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %140 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %141 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %142 = load i32*, i32** %used_process_color.addr, align 8, !tbaa !1
  %143 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %144 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc, align 8, !tbaa !1
  %call107 = call i32 @write_color_as_process(%struct.gx_device_pdf_s* %138, %struct.gs_imager_state_s* %139, %struct.gs_color_space_s* %140, %struct.gx_device_color_s* %141, i32* %142, %struct.psdf_set_color_commands_s* %143, %struct.gs_client_color_s* %144) #7
  store i32 %call107, i32* %code, align 4, !tbaa !49
  br label %if.end.108

if.end.108:                                       ; preds = %if.else.106, %if.then.104
  br label %sw.epilog.183

sw.bb.109:                                        ; preds = %if.end.71, %if.end.71, %if.end.71, %if.end.71
  %145 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %ForOPDFRead = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %145, i32 0, i32 99
  %146 = load i32, i32* %ForOPDFRead, align 4, !tbaa !206
  %tobool110 = icmp ne i32 %146, 0
  br i1 %tobool110, label %if.then.111, label %if.else.117

if.then.111:                                      ; preds = %sw.bb.109
  %147 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %params112 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %147, i32 0, i32 73
  %ColorConversionStrategy113 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params112, i32 0, i32 17
  %148 = load i32, i32* %ColorConversionStrategy113, align 4, !tbaa !157
  switch i32 %148, label %sw.default [
    i32 8, label %sw.bb.114
    i32 1, label %sw.bb.114
    i32 3, label %sw.bb.114
    i32 0, label %sw.bb.114
  ]

sw.bb.114:                                        ; preds = %if.then.111, %if.then.111, %if.then.111, %if.then.111
  %149 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %150 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %151 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc, align 8, !tbaa !1
  %152 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc.addr, align 8, !tbaa !1
  %153 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %154 = load i32*, i32** %used_process_color.addr, align 8, !tbaa !1
  %155 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %156 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %call115 = call i32 @write_color_unchanged(%struct.gx_device_pdf_s* %149, %struct.gs_imager_state_s* %150, %struct.gs_client_color_s* %151, %struct.gx_hl_saved_color_s* %temp, %struct.gx_hl_saved_color_s* %152, %struct.psdf_set_color_commands_s* %153, i32* %154, %struct.gs_color_space_s* %155, %struct.gx_device_color_s* %156) #7
  store i32 %call115, i32* %code, align 4, !tbaa !49
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.111
  %157 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %158 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %159 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %160 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %161 = load i32*, i32** %used_process_color.addr, align 8, !tbaa !1
  %162 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %163 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc, align 8, !tbaa !1
  %call116 = call i32 @write_color_as_process(%struct.gx_device_pdf_s* %157, %struct.gs_imager_state_s* %158, %struct.gs_color_space_s* %159, %struct.gx_device_color_s* %160, i32* %161, %struct.psdf_set_color_commands_s* %162, %struct.gs_client_color_s* %163) #7
  store i32 %call116, i32* %code, align 4, !tbaa !49
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.114
  br label %if.end.119

if.else.117:                                      ; preds = %sw.bb.109
  %164 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %165 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %166 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %167 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %168 = load i32*, i32** %used_process_color.addr, align 8, !tbaa !1
  %169 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %170 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc, align 8, !tbaa !1
  %call118 = call i32 @write_color_as_process(%struct.gx_device_pdf_s* %164, %struct.gs_imager_state_s* %165, %struct.gs_color_space_s* %166, %struct.gx_device_color_s* %167, i32* %168, %struct.psdf_set_color_commands_s* %169, %struct.gs_client_color_s* %170) #7
  store i32 %call118, i32* %code, align 4, !tbaa !49
  br label %if.end.119

if.end.119:                                       ; preds = %if.else.117, %sw.epilog
  br label %sw.epilog.183

sw.bb.120:                                        ; preds = %if.end.71
  %171 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %params121 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %171, i32 0, i32 73
  %ColorConversionStrategy122 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params121, i32 0, i32 17
  %172 = load i32, i32* %ColorConversionStrategy122, align 4, !tbaa !157
  switch i32 %172, label %sw.default.128 [
    i32 8, label %sw.bb.123
    i32 1, label %sw.bb.123
    i32 3, label %sw.bb.123
    i32 0, label %sw.bb.123
    i32 2, label %sw.bb.125
    i32 4, label %sw.bb.127
  ]

sw.bb.123:                                        ; preds = %sw.bb.120, %sw.bb.120, %sw.bb.120, %sw.bb.120
  %173 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %174 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %175 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc, align 8, !tbaa !1
  %176 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc.addr, align 8, !tbaa !1
  %177 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %178 = load i32*, i32** %used_process_color.addr, align 8, !tbaa !1
  %179 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %180 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %call124 = call i32 @write_color_unchanged(%struct.gx_device_pdf_s* %173, %struct.gs_imager_state_s* %174, %struct.gs_client_color_s* %175, %struct.gx_hl_saved_color_s* %temp, %struct.gx_hl_saved_color_s* %176, %struct.psdf_set_color_commands_s* %177, i32* %178, %struct.gs_color_space_s* %179, %struct.gx_device_color_s* %180) #7
  store i32 %call124, i32* %code, align 4, !tbaa !49
  br label %sw.epilog.130

sw.bb.125:                                        ; preds = %sw.bb.120
  %181 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %182 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %183 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %184 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %185 = load i32*, i32** %used_process_color.addr, align 8, !tbaa !1
  %186 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %187 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc, align 8, !tbaa !1
  %call126 = call i32 @write_color_as_process(%struct.gx_device_pdf_s* %181, %struct.gs_imager_state_s* %182, %struct.gs_color_space_s* %183, %struct.gx_device_color_s* %184, i32* %185, %struct.psdf_set_color_commands_s* %186, %struct.gs_client_color_s* %187) #7
  store i32 %call126, i32* %code, align 4, !tbaa !49
  br label %sw.epilog.130

sw.bb.127:                                        ; preds = %sw.bb.120
  br label %sw.default.128

sw.default.128:                                   ; preds = %sw.bb.120, %sw.bb.127
  %188 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %189 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %190 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %191 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %192 = load i32*, i32** %used_process_color.addr, align 8, !tbaa !1
  %193 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %194 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc, align 8, !tbaa !1
  %call129 = call i32 @convert_separation_alternate(%struct.gx_device_pdf_s* %188, %struct.gs_imager_state_s* %189, %struct.gs_color_space_s* %190, %struct.gx_device_color_s* %191, i32* %192, %struct.psdf_set_color_commands_s* %193, %struct.gs_client_color_s* %194, %struct.cos_value_s* null, i32 0) #7
  store i32 %call129, i32* %code, align 4, !tbaa !49
  br label %sw.epilog.130

sw.epilog.130:                                    ; preds = %sw.default.128, %sw.bb.125, %sw.bb.123
  br label %sw.epilog.183

sw.bb.131:                                        ; preds = %if.end.71
  %195 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %params132 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %195, i32 0, i32 73
  %ColorConversionStrategy133 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params132, i32 0, i32 17
  %196 = load i32, i32* %ColorConversionStrategy133, align 4, !tbaa !157
  switch i32 %196, label %sw.default.139 [
    i32 8, label %sw.bb.134
    i32 1, label %sw.bb.134
    i32 3, label %sw.bb.134
    i32 0, label %sw.bb.134
    i32 2, label %sw.bb.136
    i32 4, label %sw.bb.138
  ]

sw.bb.134:                                        ; preds = %sw.bb.131, %sw.bb.131, %sw.bb.131, %sw.bb.131
  %197 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %198 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %199 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc, align 8, !tbaa !1
  %200 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc.addr, align 8, !tbaa !1
  %201 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %202 = load i32*, i32** %used_process_color.addr, align 8, !tbaa !1
  %203 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %204 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %call135 = call i32 @write_color_unchanged(%struct.gx_device_pdf_s* %197, %struct.gs_imager_state_s* %198, %struct.gs_client_color_s* %199, %struct.gx_hl_saved_color_s* %temp, %struct.gx_hl_saved_color_s* %200, %struct.psdf_set_color_commands_s* %201, i32* %202, %struct.gs_color_space_s* %203, %struct.gx_device_color_s* %204) #7
  store i32 %call135, i32* %code, align 4, !tbaa !49
  br label %sw.epilog.141

sw.bb.136:                                        ; preds = %sw.bb.131
  %205 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %206 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %207 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %208 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %209 = load i32*, i32** %used_process_color.addr, align 8, !tbaa !1
  %210 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %211 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc, align 8, !tbaa !1
  %call137 = call i32 @write_color_as_process(%struct.gx_device_pdf_s* %205, %struct.gs_imager_state_s* %206, %struct.gs_color_space_s* %207, %struct.gx_device_color_s* %208, i32* %209, %struct.psdf_set_color_commands_s* %210, %struct.gs_client_color_s* %211) #7
  store i32 %call137, i32* %code, align 4, !tbaa !49
  br label %sw.epilog.141

sw.bb.138:                                        ; preds = %sw.bb.131
  br label %sw.default.139

sw.default.139:                                   ; preds = %sw.bb.131, %sw.bb.138
  %212 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %213 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %214 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %215 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %216 = load i32*, i32** %used_process_color.addr, align 8, !tbaa !1
  %217 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %218 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc, align 8, !tbaa !1
  %call140 = call i32 @convert_DeviceN_alternate(%struct.gx_device_pdf_s* %212, %struct.gs_imager_state_s* %213, %struct.gs_color_space_s* %214, %struct.gx_device_color_s* %215, i32* %216, %struct.psdf_set_color_commands_s* %217, %struct.gs_client_color_s* %218, %struct.cos_value_s* null, i32 0) #7
  store i32 %call140, i32* %code, align 4, !tbaa !49
  br label %sw.epilog.141

sw.epilog.141:                                    ; preds = %sw.default.139, %sw.bb.136, %sw.bb.134
  br label %sw.epilog.183

sw.bb.142:                                        ; preds = %if.end.71
  %219 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %cmm_icc_profile_data143 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %219, i32 0, i32 6
  %220 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data143, align 8, !tbaa !200
  %call144 = call i32 @gsicc_get_default_type(%struct.cmm_profile_s* %220) #7
  store i32 %call144, i32* %csi2, align 4, !tbaa !91
  %221 = load i32, i32* %csi2, align 4, !tbaa !91
  switch i32 %221, label %sw.default.178 [
    i32 0, label %sw.bb.145
    i32 1, label %sw.bb.156
    i32 2, label %sw.bb.167
  ]

sw.bb.145:                                        ; preds = %sw.bb.142
  %222 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %params146 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %222, i32 0, i32 73
  %ColorConversionStrategy147 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params146, i32 0, i32 17
  %223 = load i32, i32* %ColorConversionStrategy147, align 4, !tbaa !157
  %cmp148 = icmp eq i32 %223, 6
  br i1 %cmp148, label %if.then.153, label %lor.lhs.false.149

lor.lhs.false.149:                                ; preds = %sw.bb.145
  %224 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %params150 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %224, i32 0, i32 73
  %ColorConversionStrategy151 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params150, i32 0, i32 17
  %225 = load i32, i32* %ColorConversionStrategy151, align 4, !tbaa !157
  %cmp152 = icmp eq i32 %225, 0
  br i1 %cmp152, label %if.then.153, label %if.end.155

if.then.153:                                      ; preds = %lor.lhs.false.149, %sw.bb.145
  %226 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %227 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %228 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc, align 8, !tbaa !1
  %229 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc.addr, align 8, !tbaa !1
  %230 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %231 = load i32*, i32** %used_process_color.addr, align 8, !tbaa !1
  %232 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %233 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %call154 = call i32 @write_color_unchanged(%struct.gx_device_pdf_s* %226, %struct.gs_imager_state_s* %227, %struct.gs_client_color_s* %228, %struct.gx_hl_saved_color_s* %temp, %struct.gx_hl_saved_color_s* %229, %struct.psdf_set_color_commands_s* %230, i32* %231, %struct.gs_color_space_s* %232, %struct.gx_device_color_s* %233) #7
  store i32 %call154, i32* %code, align 4, !tbaa !49
  %234 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc.addr, align 8, !tbaa !1
  %235 = bitcast %struct.gx_hl_saved_color_s* %234 to i8*
  %236 = bitcast %struct.gx_hl_saved_color_s* %temp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %235, i8* %236, i64 632, i32 8, i1 false), !tbaa.struct !90
  %237 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %237, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.426

if.end.155:                                       ; preds = %lor.lhs.false.149
  br label %sw.epilog.179

sw.bb.156:                                        ; preds = %sw.bb.142
  %238 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %params157 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %238, i32 0, i32 73
  %ColorConversionStrategy158 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params157, i32 0, i32 17
  %239 = load i32, i32* %ColorConversionStrategy158, align 4, !tbaa !157
  %cmp159 = icmp eq i32 %239, 7
  br i1 %cmp159, label %if.then.164, label %lor.lhs.false.160

lor.lhs.false.160:                                ; preds = %sw.bb.156
  %240 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %params161 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %240, i32 0, i32 73
  %ColorConversionStrategy162 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params161, i32 0, i32 17
  %241 = load i32, i32* %ColorConversionStrategy162, align 4, !tbaa !157
  %cmp163 = icmp eq i32 %241, 0
  br i1 %cmp163, label %if.then.164, label %if.end.166

if.then.164:                                      ; preds = %lor.lhs.false.160, %sw.bb.156
  %242 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %243 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %244 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc, align 8, !tbaa !1
  %245 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc.addr, align 8, !tbaa !1
  %246 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %247 = load i32*, i32** %used_process_color.addr, align 8, !tbaa !1
  %248 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %249 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %call165 = call i32 @write_color_unchanged(%struct.gx_device_pdf_s* %242, %struct.gs_imager_state_s* %243, %struct.gs_client_color_s* %244, %struct.gx_hl_saved_color_s* %temp, %struct.gx_hl_saved_color_s* %245, %struct.psdf_set_color_commands_s* %246, i32* %247, %struct.gs_color_space_s* %248, %struct.gx_device_color_s* %249) #7
  store i32 %call165, i32* %code, align 4, !tbaa !49
  %250 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc.addr, align 8, !tbaa !1
  %251 = bitcast %struct.gx_hl_saved_color_s* %250 to i8*
  %252 = bitcast %struct.gx_hl_saved_color_s* %temp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %251, i8* %252, i64 632, i32 8, i1 false), !tbaa.struct !90
  %253 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %253, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.426

if.end.166:                                       ; preds = %lor.lhs.false.160
  br label %sw.epilog.179

sw.bb.167:                                        ; preds = %sw.bb.142
  %254 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %params168 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %254, i32 0, i32 73
  %ColorConversionStrategy169 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params168, i32 0, i32 17
  %255 = load i32, i32* %ColorConversionStrategy169, align 4, !tbaa !157
  %cmp170 = icmp eq i32 %255, 5
  br i1 %cmp170, label %if.then.175, label %lor.lhs.false.171

lor.lhs.false.171:                                ; preds = %sw.bb.167
  %256 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %params172 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %256, i32 0, i32 73
  %ColorConversionStrategy173 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params172, i32 0, i32 17
  %257 = load i32, i32* %ColorConversionStrategy173, align 4, !tbaa !157
  %cmp174 = icmp eq i32 %257, 0
  br i1 %cmp174, label %if.then.175, label %if.end.177

if.then.175:                                      ; preds = %lor.lhs.false.171, %sw.bb.167
  %258 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %259 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %260 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc, align 8, !tbaa !1
  %261 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc.addr, align 8, !tbaa !1
  %262 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %263 = load i32*, i32** %used_process_color.addr, align 8, !tbaa !1
  %264 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %265 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %call176 = call i32 @write_color_unchanged(%struct.gx_device_pdf_s* %258, %struct.gs_imager_state_s* %259, %struct.gs_client_color_s* %260, %struct.gx_hl_saved_color_s* %temp, %struct.gx_hl_saved_color_s* %261, %struct.psdf_set_color_commands_s* %262, i32* %263, %struct.gs_color_space_s* %264, %struct.gx_device_color_s* %265) #7
  store i32 %call176, i32* %code, align 4, !tbaa !49
  %266 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc.addr, align 8, !tbaa !1
  %267 = bitcast %struct.gx_hl_saved_color_s* %266 to i8*
  %268 = bitcast %struct.gx_hl_saved_color_s* %temp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %267, i8* %268, i64 632, i32 8, i1 false), !tbaa.struct !90
  %269 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %269, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.426

if.end.177:                                       ; preds = %lor.lhs.false.171
  br label %sw.epilog.179

sw.default.178:                                   ; preds = %sw.bb.142
  br label %sw.epilog.179

sw.epilog.179:                                    ; preds = %sw.default.178, %if.end.177, %if.end.166, %if.end.155
  br label %sw.bb.180

sw.bb.180:                                        ; preds = %if.end.71, %if.end.71, %sw.epilog.179
  %270 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %271 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %272 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %273 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %274 = load i32*, i32** %used_process_color.addr, align 8, !tbaa !1
  %275 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %276 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc, align 8, !tbaa !1
  %call181 = call i32 @write_color_as_process(%struct.gx_device_pdf_s* %270, %struct.gs_imager_state_s* %271, %struct.gs_color_space_s* %272, %struct.gx_device_color_s* %273, i32* %274, %struct.psdf_set_color_commands_s* %275, %struct.gs_client_color_s* %276) #7
  store i32 %call181, i32* %code, align 4, !tbaa !49
  br label %sw.epilog.183

sw.default.182:                                   ; preds = %if.end.71
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.426

sw.epilog.183:                                    ; preds = %sw.bb.180, %sw.epilog.141, %sw.epilog.130, %if.end.119, %if.end.108, %if.end.95, %if.end.82
  br label %if.end.418

if.else.184:                                      ; preds = %if.end.64
  %277 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %params185 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %277, i32 0, i32 73
  %ColorConversionStrategy186 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params185, i32 0, i32 17
  %278 = load i32, i32* %ColorConversionStrategy186, align 4, !tbaa !157
  switch i32 %278, label %sw.default.416 [
    i32 8, label %sw.bb.187
    i32 1, label %sw.bb.187
    i32 3, label %sw.bb.187
    i32 0, label %sw.bb.187
    i32 2, label %sw.bb.189
    i32 5, label %sw.bb.191
    i32 6, label %sw.bb.266
    i32 4, label %sw.bb.341
    i32 7, label %sw.bb.341
  ]

sw.bb.187:                                        ; preds = %if.else.184, %if.else.184, %if.else.184, %if.else.184
  %279 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %280 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %281 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc, align 8, !tbaa !1
  %282 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc.addr, align 8, !tbaa !1
  %283 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %284 = load i32*, i32** %used_process_color.addr, align 8, !tbaa !1
  %285 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %286 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %call188 = call i32 @write_color_unchanged(%struct.gx_device_pdf_s* %279, %struct.gs_imager_state_s* %280, %struct.gs_client_color_s* %281, %struct.gx_hl_saved_color_s* %temp, %struct.gx_hl_saved_color_s* %282, %struct.psdf_set_color_commands_s* %283, i32* %284, %struct.gs_color_space_s* %285, %struct.gx_device_color_s* %286) #7
  store i32 %call188, i32* %code, align 4, !tbaa !49
  br label %sw.epilog.417

sw.bb.189:                                        ; preds = %if.else.184
  %287 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %288 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %289 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %290 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %291 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc.addr, align 8, !tbaa !1
  %292 = load i32*, i32** %used_process_color.addr, align 8, !tbaa !1
  %293 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %294 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc, align 8, !tbaa !1
  %call190 = call i32 @write_color_as_process_ICC(%struct.gx_device_pdf_s* %287, %struct.gs_imager_state_s* %288, %struct.gs_color_space_s* %289, %struct.gx_device_color_s* %290, %struct.gx_hl_saved_color_s* %291, i32* %292, %struct.psdf_set_color_commands_s* %293, %struct.gs_client_color_s* %294, %struct.gx_hl_saved_color_s* %temp) #7
  store i32 %call190, i32* %code, align 4, !tbaa !49
  br label %sw.epilog.417

sw.bb.191:                                        ; preds = %if.else.184
  %295 = load i32, i32* %csi2, align 4, !tbaa !91
  switch i32 %295, label %sw.default.263 [
    i32 0, label %sw.bb.192
    i32 2, label %sw.bb.192
    i32 9, label %sw.bb.194
    i32 4, label %sw.bb.208
    i32 10, label %sw.bb.222
  ]

sw.bb.192:                                        ; preds = %sw.bb.191, %sw.bb.191
  %296 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %297 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %298 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc, align 8, !tbaa !1
  %299 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc.addr, align 8, !tbaa !1
  %300 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %301 = load i32*, i32** %used_process_color.addr, align 8, !tbaa !1
  %302 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %303 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %call193 = call i32 @write_color_unchanged(%struct.gx_device_pdf_s* %296, %struct.gs_imager_state_s* %297, %struct.gs_client_color_s* %298, %struct.gx_hl_saved_color_s* %temp, %struct.gx_hl_saved_color_s* %299, %struct.psdf_set_color_commands_s* %300, i32* %301, %struct.gs_color_space_s* %302, %struct.gx_device_color_s* %303) #7
  store i32 %call193, i32* %code, align 4, !tbaa !49
  br label %sw.epilog.265

sw.bb.194:                                        ; preds = %sw.bb.191
  %304 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %base_space195 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %304, i32 0, i32 3
  %305 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space195, align 8, !tbaa !152
  store %struct.gs_color_space_s* %305, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %306 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %call196 = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %306) #7
  store i32 %call196, i32* %csi, align 4, !tbaa !91
  %307 = load i32, i32* %csi, align 4, !tbaa !91
  %cmp197 = icmp eq i32 %307, 12
  br i1 %cmp197, label %if.then.198, label %if.end.201

if.then.198:                                      ; preds = %sw.bb.194
  %308 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %cmm_icc_profile_data199 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %308, i32 0, i32 6
  %309 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data199, align 8, !tbaa !200
  %call200 = call i32 @gsicc_get_default_type(%struct.cmm_profile_s* %309) #7
  store i32 %call200, i32* %csi, align 4, !tbaa !91
  br label %if.end.201

if.end.201:                                       ; preds = %if.then.198, %sw.bb.194
  %310 = load i32, i32* %csi, align 4, !tbaa !91
  %cmp202 = icmp ne i32 %310, 2
  br i1 %cmp202, label %if.then.203, label %if.else.205

if.then.203:                                      ; preds = %if.end.201
  %311 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %312 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %313 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %314 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %315 = load i32*, i32** %used_process_color.addr, align 8, !tbaa !1
  %316 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %317 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc, align 8, !tbaa !1
  %call204 = call i32 @convert_separation_alternate(%struct.gx_device_pdf_s* %311, %struct.gs_imager_state_s* %312, %struct.gs_color_space_s* %313, %struct.gx_device_color_s* %314, i32* %315, %struct.psdf_set_color_commands_s* %316, %struct.gs_client_color_s* %317, %struct.cos_value_s* null, i32 0) #7
  store i32 %call204, i32* %code, align 4, !tbaa !49
  br label %if.end.207

if.else.205:                                      ; preds = %if.end.201
  %318 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %319 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %320 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc, align 8, !tbaa !1
  %321 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc.addr, align 8, !tbaa !1
  %322 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %323 = load i32*, i32** %used_process_color.addr, align 8, !tbaa !1
  %324 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %325 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %call206 = call i32 @write_color_unchanged(%struct.gx_device_pdf_s* %318, %struct.gs_imager_state_s* %319, %struct.gs_client_color_s* %320, %struct.gx_hl_saved_color_s* %temp, %struct.gx_hl_saved_color_s* %321, %struct.psdf_set_color_commands_s* %322, i32* %323, %struct.gs_color_space_s* %324, %struct.gx_device_color_s* %325) #7
  store i32 %call206, i32* %code, align 4, !tbaa !49
  br label %if.end.207

if.end.207:                                       ; preds = %if.else.205, %if.then.203
  br label %sw.epilog.265

sw.bb.208:                                        ; preds = %sw.bb.191
  %326 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %base_space209 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %326, i32 0, i32 3
  %327 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space209, align 8, !tbaa !152
  store %struct.gs_color_space_s* %327, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %328 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %call210 = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %328) #7
  store i32 %call210, i32* %csi, align 4, !tbaa !91
  %329 = load i32, i32* %csi, align 4, !tbaa !91
  %cmp211 = icmp eq i32 %329, 12
  br i1 %cmp211, label %if.then.212, label %if.end.215

if.then.212:                                      ; preds = %sw.bb.208
  %330 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %cmm_icc_profile_data213 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %330, i32 0, i32 6
  %331 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data213, align 8, !tbaa !200
  %call214 = call i32 @gsicc_get_default_type(%struct.cmm_profile_s* %331) #7
  store i32 %call214, i32* %csi, align 4, !tbaa !91
  br label %if.end.215

if.end.215:                                       ; preds = %if.then.212, %sw.bb.208
  %332 = load i32, i32* %csi, align 4, !tbaa !91
  %cmp216 = icmp ne i32 %332, 2
  br i1 %cmp216, label %if.then.217, label %if.else.219

if.then.217:                                      ; preds = %if.end.215
  %333 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %334 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %335 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %336 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %337 = load i32*, i32** %used_process_color.addr, align 8, !tbaa !1
  %338 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %339 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc, align 8, !tbaa !1
  %call218 = call i32 @convert_DeviceN_alternate(%struct.gx_device_pdf_s* %333, %struct.gs_imager_state_s* %334, %struct.gs_color_space_s* %335, %struct.gx_device_color_s* %336, i32* %337, %struct.psdf_set_color_commands_s* %338, %struct.gs_client_color_s* %339, %struct.cos_value_s* null, i32 0) #7
  store i32 %call218, i32* %code, align 4, !tbaa !49
  br label %if.end.221

if.else.219:                                      ; preds = %if.end.215
  %340 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %341 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %342 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc, align 8, !tbaa !1
  %343 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc.addr, align 8, !tbaa !1
  %344 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %345 = load i32*, i32** %used_process_color.addr, align 8, !tbaa !1
  %346 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %347 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %call220 = call i32 @write_color_unchanged(%struct.gx_device_pdf_s* %340, %struct.gs_imager_state_s* %341, %struct.gs_client_color_s* %342, %struct.gx_hl_saved_color_s* %temp, %struct.gx_hl_saved_color_s* %343, %struct.psdf_set_color_commands_s* %344, i32* %345, %struct.gs_color_space_s* %346, %struct.gx_device_color_s* %347) #7
  store i32 %call220, i32* %code, align 4, !tbaa !49
  br label %if.end.221

if.end.221:                                       ; preds = %if.else.219, %if.then.217
  br label %sw.epilog.265

sw.bb.222:                                        ; preds = %sw.bb.191
  %348 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %base_space223 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %348, i32 0, i32 3
  %349 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space223, align 8, !tbaa !152
  store %struct.gs_color_space_s* %349, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %350 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %call224 = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %350) #7
  store i32 %call224, i32* %csi, align 4, !tbaa !91
  %351 = load i32, i32* %csi, align 4, !tbaa !91
  %cmp225 = icmp eq i32 %351, 12
  br i1 %cmp225, label %if.then.226, label %if.end.229

if.then.226:                                      ; preds = %sw.bb.222
  %352 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %cmm_icc_profile_data227 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %352, i32 0, i32 6
  %353 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data227, align 8, !tbaa !200
  %call228 = call i32 @gsicc_get_default_type(%struct.cmm_profile_s* %353) #7
  store i32 %call228, i32* %csi, align 4, !tbaa !91
  br label %if.end.229

if.end.229:                                       ; preds = %if.then.226, %sw.bb.222
  %354 = load i32, i32* %csi, align 4, !tbaa !91
  switch i32 %354, label %sw.default.260 [
    i32 0, label %sw.bb.230
    i32 2, label %sw.bb.230
    i32 9, label %sw.bb.232
    i32 4, label %sw.bb.246
  ]

sw.bb.230:                                        ; preds = %if.end.229, %if.end.229
  %355 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %356 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %357 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc, align 8, !tbaa !1
  %358 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc.addr, align 8, !tbaa !1
  %359 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %360 = load i32*, i32** %used_process_color.addr, align 8, !tbaa !1
  %361 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %362 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %call231 = call i32 @write_color_unchanged(%struct.gx_device_pdf_s* %355, %struct.gs_imager_state_s* %356, %struct.gs_client_color_s* %357, %struct.gx_hl_saved_color_s* %temp, %struct.gx_hl_saved_color_s* %358, %struct.psdf_set_color_commands_s* %359, i32* %360, %struct.gs_color_space_s* %361, %struct.gx_device_color_s* %362) #7
  store i32 %call231, i32* %code, align 4, !tbaa !49
  br label %sw.epilog.262

sw.bb.232:                                        ; preds = %if.end.229
  %363 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %base_space233 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %363, i32 0, i32 3
  %364 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space233, align 8, !tbaa !152
  store %struct.gs_color_space_s* %364, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %365 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %call234 = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %365) #7
  store i32 %call234, i32* %csi, align 4, !tbaa !91
  %366 = load i32, i32* %csi, align 4, !tbaa !91
  %cmp235 = icmp eq i32 %366, 12
  br i1 %cmp235, label %if.then.236, label %if.end.239

if.then.236:                                      ; preds = %sw.bb.232
  %367 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %cmm_icc_profile_data237 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %367, i32 0, i32 6
  %368 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data237, align 8, !tbaa !200
  %call238 = call i32 @gsicc_get_default_type(%struct.cmm_profile_s* %368) #7
  store i32 %call238, i32* %csi, align 4, !tbaa !91
  br label %if.end.239

if.end.239:                                       ; preds = %if.then.236, %sw.bb.232
  %369 = load i32, i32* %csi, align 4, !tbaa !91
  %cmp240 = icmp ne i32 %369, 2
  br i1 %cmp240, label %if.then.241, label %if.else.243

if.then.241:                                      ; preds = %if.end.239
  %370 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %371 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %372 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %373 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %374 = load i32*, i32** %used_process_color.addr, align 8, !tbaa !1
  %375 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %376 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc, align 8, !tbaa !1
  %call242 = call i32 @convert_separation_alternate(%struct.gx_device_pdf_s* %370, %struct.gs_imager_state_s* %371, %struct.gs_color_space_s* %372, %struct.gx_device_color_s* %373, i32* %374, %struct.psdf_set_color_commands_s* %375, %struct.gs_client_color_s* %376, %struct.cos_value_s* null, i32 0) #7
  store i32 %call242, i32* %code, align 4, !tbaa !49
  br label %if.end.245

if.else.243:                                      ; preds = %if.end.239
  %377 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %378 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %379 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc, align 8, !tbaa !1
  %380 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc.addr, align 8, !tbaa !1
  %381 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %382 = load i32*, i32** %used_process_color.addr, align 8, !tbaa !1
  %383 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %384 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %call244 = call i32 @write_color_unchanged(%struct.gx_device_pdf_s* %377, %struct.gs_imager_state_s* %378, %struct.gs_client_color_s* %379, %struct.gx_hl_saved_color_s* %temp, %struct.gx_hl_saved_color_s* %380, %struct.psdf_set_color_commands_s* %381, i32* %382, %struct.gs_color_space_s* %383, %struct.gx_device_color_s* %384) #7
  store i32 %call244, i32* %code, align 4, !tbaa !49
  br label %if.end.245

if.end.245:                                       ; preds = %if.else.243, %if.then.241
  br label %sw.epilog.262

sw.bb.246:                                        ; preds = %if.end.229
  %385 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %base_space247 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %385, i32 0, i32 3
  %386 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space247, align 8, !tbaa !152
  store %struct.gs_color_space_s* %386, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %387 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %call248 = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %387) #7
  store i32 %call248, i32* %csi, align 4, !tbaa !91
  %388 = load i32, i32* %csi, align 4, !tbaa !91
  %cmp249 = icmp eq i32 %388, 12
  br i1 %cmp249, label %if.then.250, label %if.end.253

if.then.250:                                      ; preds = %sw.bb.246
  %389 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %cmm_icc_profile_data251 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %389, i32 0, i32 6
  %390 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data251, align 8, !tbaa !200
  %call252 = call i32 @gsicc_get_default_type(%struct.cmm_profile_s* %390) #7
  store i32 %call252, i32* %csi, align 4, !tbaa !91
  br label %if.end.253

if.end.253:                                       ; preds = %if.then.250, %sw.bb.246
  %391 = load i32, i32* %csi, align 4, !tbaa !91
  %cmp254 = icmp ne i32 %391, 2
  br i1 %cmp254, label %if.then.255, label %if.else.257

if.then.255:                                      ; preds = %if.end.253
  %392 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %393 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %394 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %395 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %396 = load i32*, i32** %used_process_color.addr, align 8, !tbaa !1
  %397 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %398 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc, align 8, !tbaa !1
  %call256 = call i32 @convert_DeviceN_alternate(%struct.gx_device_pdf_s* %392, %struct.gs_imager_state_s* %393, %struct.gs_color_space_s* %394, %struct.gx_device_color_s* %395, i32* %396, %struct.psdf_set_color_commands_s* %397, %struct.gs_client_color_s* %398, %struct.cos_value_s* null, i32 0) #7
  store i32 %call256, i32* %code, align 4, !tbaa !49
  br label %if.end.259

if.else.257:                                      ; preds = %if.end.253
  %399 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %400 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %401 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc, align 8, !tbaa !1
  %402 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc.addr, align 8, !tbaa !1
  %403 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %404 = load i32*, i32** %used_process_color.addr, align 8, !tbaa !1
  %405 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %406 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %call258 = call i32 @write_color_unchanged(%struct.gx_device_pdf_s* %399, %struct.gs_imager_state_s* %400, %struct.gs_client_color_s* %401, %struct.gx_hl_saved_color_s* %temp, %struct.gx_hl_saved_color_s* %402, %struct.psdf_set_color_commands_s* %403, i32* %404, %struct.gs_color_space_s* %405, %struct.gx_device_color_s* %406) #7
  store i32 %call258, i32* %code, align 4, !tbaa !49
  br label %if.end.259

if.end.259:                                       ; preds = %if.else.257, %if.then.255
  br label %sw.epilog.262

sw.default.260:                                   ; preds = %if.end.229
  %407 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %408 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %409 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %410 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %411 = load i32*, i32** %used_process_color.addr, align 8, !tbaa !1
  %412 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %413 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc, align 8, !tbaa !1
  %call261 = call i32 @write_color_as_process(%struct.gx_device_pdf_s* %407, %struct.gs_imager_state_s* %408, %struct.gs_color_space_s* %409, %struct.gx_device_color_s* %410, i32* %411, %struct.psdf_set_color_commands_s* %412, %struct.gs_client_color_s* %413) #7
  store i32 %call261, i32* %code, align 4, !tbaa !49
  br label %sw.epilog.262

sw.epilog.262:                                    ; preds = %sw.default.260, %if.end.259, %if.end.245, %sw.bb.230
  br label %sw.epilog.265

sw.default.263:                                   ; preds = %sw.bb.191
  %414 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %415 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %416 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %417 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %418 = load i32*, i32** %used_process_color.addr, align 8, !tbaa !1
  %419 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %420 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc, align 8, !tbaa !1
  %call264 = call i32 @write_color_as_process(%struct.gx_device_pdf_s* %414, %struct.gs_imager_state_s* %415, %struct.gs_color_space_s* %416, %struct.gx_device_color_s* %417, i32* %418, %struct.psdf_set_color_commands_s* %419, %struct.gs_client_color_s* %420) #7
  store i32 %call264, i32* %code, align 4, !tbaa !49
  br label %sw.epilog.265

sw.epilog.265:                                    ; preds = %sw.default.263, %sw.epilog.262, %if.end.221, %if.end.207, %sw.bb.192
  br label %sw.epilog.417

sw.bb.266:                                        ; preds = %if.else.184
  %421 = load i32, i32* %csi2, align 4, !tbaa !91
  switch i32 %421, label %sw.default.338 [
    i32 0, label %sw.bb.267
    i32 9, label %sw.bb.269
    i32 4, label %sw.bb.283
    i32 10, label %sw.bb.297
  ]

sw.bb.267:                                        ; preds = %sw.bb.266
  %422 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %423 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %424 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc, align 8, !tbaa !1
  %425 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc.addr, align 8, !tbaa !1
  %426 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %427 = load i32*, i32** %used_process_color.addr, align 8, !tbaa !1
  %428 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %429 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %call268 = call i32 @write_color_unchanged(%struct.gx_device_pdf_s* %422, %struct.gs_imager_state_s* %423, %struct.gs_client_color_s* %424, %struct.gx_hl_saved_color_s* %temp, %struct.gx_hl_saved_color_s* %425, %struct.psdf_set_color_commands_s* %426, i32* %427, %struct.gs_color_space_s* %428, %struct.gx_device_color_s* %429) #7
  store i32 %call268, i32* %code, align 4, !tbaa !49
  br label %sw.epilog.340

sw.bb.269:                                        ; preds = %sw.bb.266
  %430 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %base_space270 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %430, i32 0, i32 3
  %431 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space270, align 8, !tbaa !152
  store %struct.gs_color_space_s* %431, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %432 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %call271 = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %432) #7
  store i32 %call271, i32* %csi, align 4, !tbaa !91
  %433 = load i32, i32* %csi, align 4, !tbaa !91
  %cmp272 = icmp eq i32 %433, 12
  br i1 %cmp272, label %if.then.273, label %if.end.276

if.then.273:                                      ; preds = %sw.bb.269
  %434 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %cmm_icc_profile_data274 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %434, i32 0, i32 6
  %435 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data274, align 8, !tbaa !200
  %call275 = call i32 @gsicc_get_default_type(%struct.cmm_profile_s* %435) #7
  store i32 %call275, i32* %csi, align 4, !tbaa !91
  br label %if.end.276

if.end.276:                                       ; preds = %if.then.273, %sw.bb.269
  %436 = load i32, i32* %csi, align 4, !tbaa !91
  %cmp277 = icmp ne i32 %436, 0
  br i1 %cmp277, label %if.then.278, label %if.else.280

if.then.278:                                      ; preds = %if.end.276
  %437 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %438 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %439 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %440 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %441 = load i32*, i32** %used_process_color.addr, align 8, !tbaa !1
  %442 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %443 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc, align 8, !tbaa !1
  %call279 = call i32 @convert_separation_alternate(%struct.gx_device_pdf_s* %437, %struct.gs_imager_state_s* %438, %struct.gs_color_space_s* %439, %struct.gx_device_color_s* %440, i32* %441, %struct.psdf_set_color_commands_s* %442, %struct.gs_client_color_s* %443, %struct.cos_value_s* null, i32 0) #7
  store i32 %call279, i32* %code, align 4, !tbaa !49
  br label %if.end.282

if.else.280:                                      ; preds = %if.end.276
  %444 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %445 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %446 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc, align 8, !tbaa !1
  %447 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc.addr, align 8, !tbaa !1
  %448 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %449 = load i32*, i32** %used_process_color.addr, align 8, !tbaa !1
  %450 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %451 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %call281 = call i32 @write_color_unchanged(%struct.gx_device_pdf_s* %444, %struct.gs_imager_state_s* %445, %struct.gs_client_color_s* %446, %struct.gx_hl_saved_color_s* %temp, %struct.gx_hl_saved_color_s* %447, %struct.psdf_set_color_commands_s* %448, i32* %449, %struct.gs_color_space_s* %450, %struct.gx_device_color_s* %451) #7
  store i32 %call281, i32* %code, align 4, !tbaa !49
  br label %if.end.282

if.end.282:                                       ; preds = %if.else.280, %if.then.278
  br label %sw.epilog.340

sw.bb.283:                                        ; preds = %sw.bb.266
  %452 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %base_space284 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %452, i32 0, i32 3
  %453 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space284, align 8, !tbaa !152
  store %struct.gs_color_space_s* %453, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %454 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %call285 = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %454) #7
  store i32 %call285, i32* %csi, align 4, !tbaa !91
  %455 = load i32, i32* %csi, align 4, !tbaa !91
  %cmp286 = icmp eq i32 %455, 12
  br i1 %cmp286, label %if.then.287, label %if.end.290

if.then.287:                                      ; preds = %sw.bb.283
  %456 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %cmm_icc_profile_data288 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %456, i32 0, i32 6
  %457 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data288, align 8, !tbaa !200
  %call289 = call i32 @gsicc_get_default_type(%struct.cmm_profile_s* %457) #7
  store i32 %call289, i32* %csi, align 4, !tbaa !91
  br label %if.end.290

if.end.290:                                       ; preds = %if.then.287, %sw.bb.283
  %458 = load i32, i32* %csi, align 4, !tbaa !91
  %cmp291 = icmp ne i32 %458, 0
  br i1 %cmp291, label %if.then.292, label %if.else.294

if.then.292:                                      ; preds = %if.end.290
  %459 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %460 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %461 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %462 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %463 = load i32*, i32** %used_process_color.addr, align 8, !tbaa !1
  %464 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %465 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc, align 8, !tbaa !1
  %call293 = call i32 @convert_DeviceN_alternate(%struct.gx_device_pdf_s* %459, %struct.gs_imager_state_s* %460, %struct.gs_color_space_s* %461, %struct.gx_device_color_s* %462, i32* %463, %struct.psdf_set_color_commands_s* %464, %struct.gs_client_color_s* %465, %struct.cos_value_s* null, i32 0) #7
  store i32 %call293, i32* %code, align 4, !tbaa !49
  br label %if.end.296

if.else.294:                                      ; preds = %if.end.290
  %466 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %467 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %468 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc, align 8, !tbaa !1
  %469 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc.addr, align 8, !tbaa !1
  %470 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %471 = load i32*, i32** %used_process_color.addr, align 8, !tbaa !1
  %472 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %473 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %call295 = call i32 @write_color_unchanged(%struct.gx_device_pdf_s* %466, %struct.gs_imager_state_s* %467, %struct.gs_client_color_s* %468, %struct.gx_hl_saved_color_s* %temp, %struct.gx_hl_saved_color_s* %469, %struct.psdf_set_color_commands_s* %470, i32* %471, %struct.gs_color_space_s* %472, %struct.gx_device_color_s* %473) #7
  store i32 %call295, i32* %code, align 4, !tbaa !49
  br label %if.end.296

if.end.296:                                       ; preds = %if.else.294, %if.then.292
  br label %sw.epilog.340

sw.bb.297:                                        ; preds = %sw.bb.266
  %474 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %base_space298 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %474, i32 0, i32 3
  %475 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space298, align 8, !tbaa !152
  store %struct.gs_color_space_s* %475, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %476 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %call299 = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %476) #7
  store i32 %call299, i32* %csi, align 4, !tbaa !91
  %477 = load i32, i32* %csi, align 4, !tbaa !91
  %cmp300 = icmp eq i32 %477, 12
  br i1 %cmp300, label %if.then.301, label %if.end.304

if.then.301:                                      ; preds = %sw.bb.297
  %478 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %cmm_icc_profile_data302 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %478, i32 0, i32 6
  %479 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data302, align 8, !tbaa !200
  %call303 = call i32 @gsicc_get_default_type(%struct.cmm_profile_s* %479) #7
  store i32 %call303, i32* %csi, align 4, !tbaa !91
  br label %if.end.304

if.end.304:                                       ; preds = %if.then.301, %sw.bb.297
  %480 = load i32, i32* %csi, align 4, !tbaa !91
  switch i32 %480, label %sw.default.335 [
    i32 0, label %sw.bb.305
    i32 9, label %sw.bb.307
    i32 4, label %sw.bb.321
  ]

sw.bb.305:                                        ; preds = %if.end.304
  %481 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %482 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %483 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc, align 8, !tbaa !1
  %484 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc.addr, align 8, !tbaa !1
  %485 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %486 = load i32*, i32** %used_process_color.addr, align 8, !tbaa !1
  %487 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %488 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %call306 = call i32 @write_color_unchanged(%struct.gx_device_pdf_s* %481, %struct.gs_imager_state_s* %482, %struct.gs_client_color_s* %483, %struct.gx_hl_saved_color_s* %temp, %struct.gx_hl_saved_color_s* %484, %struct.psdf_set_color_commands_s* %485, i32* %486, %struct.gs_color_space_s* %487, %struct.gx_device_color_s* %488) #7
  store i32 %call306, i32* %code, align 4, !tbaa !49
  br label %sw.epilog.337

sw.bb.307:                                        ; preds = %if.end.304
  %489 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %base_space308 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %489, i32 0, i32 3
  %490 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space308, align 8, !tbaa !152
  store %struct.gs_color_space_s* %490, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %491 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %call309 = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %491) #7
  store i32 %call309, i32* %csi, align 4, !tbaa !91
  %492 = load i32, i32* %csi, align 4, !tbaa !91
  %cmp310 = icmp eq i32 %492, 12
  br i1 %cmp310, label %if.then.311, label %if.end.314

if.then.311:                                      ; preds = %sw.bb.307
  %493 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %cmm_icc_profile_data312 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %493, i32 0, i32 6
  %494 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data312, align 8, !tbaa !200
  %call313 = call i32 @gsicc_get_default_type(%struct.cmm_profile_s* %494) #7
  store i32 %call313, i32* %csi, align 4, !tbaa !91
  br label %if.end.314

if.end.314:                                       ; preds = %if.then.311, %sw.bb.307
  %495 = load i32, i32* %csi, align 4, !tbaa !91
  %cmp315 = icmp ne i32 %495, 0
  br i1 %cmp315, label %if.then.316, label %if.else.318

if.then.316:                                      ; preds = %if.end.314
  %496 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %497 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %498 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %499 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %500 = load i32*, i32** %used_process_color.addr, align 8, !tbaa !1
  %501 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %502 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc, align 8, !tbaa !1
  %call317 = call i32 @convert_separation_alternate(%struct.gx_device_pdf_s* %496, %struct.gs_imager_state_s* %497, %struct.gs_color_space_s* %498, %struct.gx_device_color_s* %499, i32* %500, %struct.psdf_set_color_commands_s* %501, %struct.gs_client_color_s* %502, %struct.cos_value_s* null, i32 0) #7
  store i32 %call317, i32* %code, align 4, !tbaa !49
  br label %if.end.320

if.else.318:                                      ; preds = %if.end.314
  %503 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %504 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %505 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc, align 8, !tbaa !1
  %506 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc.addr, align 8, !tbaa !1
  %507 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %508 = load i32*, i32** %used_process_color.addr, align 8, !tbaa !1
  %509 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %510 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %call319 = call i32 @write_color_unchanged(%struct.gx_device_pdf_s* %503, %struct.gs_imager_state_s* %504, %struct.gs_client_color_s* %505, %struct.gx_hl_saved_color_s* %temp, %struct.gx_hl_saved_color_s* %506, %struct.psdf_set_color_commands_s* %507, i32* %508, %struct.gs_color_space_s* %509, %struct.gx_device_color_s* %510) #7
  store i32 %call319, i32* %code, align 4, !tbaa !49
  br label %if.end.320

if.end.320:                                       ; preds = %if.else.318, %if.then.316
  br label %sw.epilog.337

sw.bb.321:                                        ; preds = %if.end.304
  %511 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %base_space322 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %511, i32 0, i32 3
  %512 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space322, align 8, !tbaa !152
  store %struct.gs_color_space_s* %512, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %513 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %call323 = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %513) #7
  store i32 %call323, i32* %csi, align 4, !tbaa !91
  %514 = load i32, i32* %csi, align 4, !tbaa !91
  %cmp324 = icmp eq i32 %514, 12
  br i1 %cmp324, label %if.then.325, label %if.end.328

if.then.325:                                      ; preds = %sw.bb.321
  %515 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %cmm_icc_profile_data326 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %515, i32 0, i32 6
  %516 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data326, align 8, !tbaa !200
  %call327 = call i32 @gsicc_get_default_type(%struct.cmm_profile_s* %516) #7
  store i32 %call327, i32* %csi, align 4, !tbaa !91
  br label %if.end.328

if.end.328:                                       ; preds = %if.then.325, %sw.bb.321
  %517 = load i32, i32* %csi, align 4, !tbaa !91
  %cmp329 = icmp ne i32 %517, 0
  br i1 %cmp329, label %if.then.330, label %if.else.332

if.then.330:                                      ; preds = %if.end.328
  %518 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %519 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %520 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %521 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %522 = load i32*, i32** %used_process_color.addr, align 8, !tbaa !1
  %523 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %524 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc, align 8, !tbaa !1
  %call331 = call i32 @convert_DeviceN_alternate(%struct.gx_device_pdf_s* %518, %struct.gs_imager_state_s* %519, %struct.gs_color_space_s* %520, %struct.gx_device_color_s* %521, i32* %522, %struct.psdf_set_color_commands_s* %523, %struct.gs_client_color_s* %524, %struct.cos_value_s* null, i32 0) #7
  store i32 %call331, i32* %code, align 4, !tbaa !49
  br label %if.end.334

if.else.332:                                      ; preds = %if.end.328
  %525 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %526 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %527 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc, align 8, !tbaa !1
  %528 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc.addr, align 8, !tbaa !1
  %529 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %530 = load i32*, i32** %used_process_color.addr, align 8, !tbaa !1
  %531 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %532 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %call333 = call i32 @write_color_unchanged(%struct.gx_device_pdf_s* %525, %struct.gs_imager_state_s* %526, %struct.gs_client_color_s* %527, %struct.gx_hl_saved_color_s* %temp, %struct.gx_hl_saved_color_s* %528, %struct.psdf_set_color_commands_s* %529, i32* %530, %struct.gs_color_space_s* %531, %struct.gx_device_color_s* %532) #7
  store i32 %call333, i32* %code, align 4, !tbaa !49
  br label %if.end.334

if.end.334:                                       ; preds = %if.else.332, %if.then.330
  br label %sw.epilog.337

sw.default.335:                                   ; preds = %if.end.304
  %533 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %534 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %535 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %536 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %537 = load i32*, i32** %used_process_color.addr, align 8, !tbaa !1
  %538 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %539 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc, align 8, !tbaa !1
  %call336 = call i32 @write_color_as_process(%struct.gx_device_pdf_s* %533, %struct.gs_imager_state_s* %534, %struct.gs_color_space_s* %535, %struct.gx_device_color_s* %536, i32* %537, %struct.psdf_set_color_commands_s* %538, %struct.gs_client_color_s* %539) #7
  store i32 %call336, i32* %code, align 4, !tbaa !49
  br label %sw.epilog.337

sw.epilog.337:                                    ; preds = %sw.default.335, %if.end.334, %if.end.320, %sw.bb.305
  br label %sw.epilog.340

sw.default.338:                                   ; preds = %sw.bb.266
  %540 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %541 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %542 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %543 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %544 = load i32*, i32** %used_process_color.addr, align 8, !tbaa !1
  %545 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %546 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc, align 8, !tbaa !1
  %call339 = call i32 @write_color_as_process(%struct.gx_device_pdf_s* %540, %struct.gs_imager_state_s* %541, %struct.gs_color_space_s* %542, %struct.gx_device_color_s* %543, i32* %544, %struct.psdf_set_color_commands_s* %545, %struct.gs_client_color_s* %546) #7
  store i32 %call339, i32* %code, align 4, !tbaa !49
  br label %sw.epilog.340

sw.epilog.340:                                    ; preds = %sw.default.338, %sw.epilog.337, %if.end.296, %if.end.282, %sw.bb.267
  br label %sw.epilog.417

sw.bb.341:                                        ; preds = %if.else.184, %if.else.184
  %547 = load i32, i32* %csi2, align 4, !tbaa !91
  switch i32 %547, label %sw.default.413 [
    i32 0, label %sw.bb.342
    i32 1, label %sw.bb.342
    i32 9, label %sw.bb.344
    i32 4, label %sw.bb.358
    i32 10, label %sw.bb.372
  ]

sw.bb.342:                                        ; preds = %sw.bb.341, %sw.bb.341
  %548 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %549 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %550 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc, align 8, !tbaa !1
  %551 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc.addr, align 8, !tbaa !1
  %552 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %553 = load i32*, i32** %used_process_color.addr, align 8, !tbaa !1
  %554 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %555 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %call343 = call i32 @write_color_unchanged(%struct.gx_device_pdf_s* %548, %struct.gs_imager_state_s* %549, %struct.gs_client_color_s* %550, %struct.gx_hl_saved_color_s* %temp, %struct.gx_hl_saved_color_s* %551, %struct.psdf_set_color_commands_s* %552, i32* %553, %struct.gs_color_space_s* %554, %struct.gx_device_color_s* %555) #7
  store i32 %call343, i32* %code, align 4, !tbaa !49
  br label %sw.epilog.415

sw.bb.344:                                        ; preds = %sw.bb.341
  %556 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %base_space345 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %556, i32 0, i32 3
  %557 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space345, align 8, !tbaa !152
  store %struct.gs_color_space_s* %557, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %558 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %call346 = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %558) #7
  store i32 %call346, i32* %csi, align 4, !tbaa !91
  %559 = load i32, i32* %csi, align 4, !tbaa !91
  %cmp347 = icmp eq i32 %559, 12
  br i1 %cmp347, label %if.then.348, label %if.end.351

if.then.348:                                      ; preds = %sw.bb.344
  %560 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %cmm_icc_profile_data349 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %560, i32 0, i32 6
  %561 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data349, align 8, !tbaa !200
  %call350 = call i32 @gsicc_get_default_type(%struct.cmm_profile_s* %561) #7
  store i32 %call350, i32* %csi, align 4, !tbaa !91
  br label %if.end.351

if.end.351:                                       ; preds = %if.then.348, %sw.bb.344
  %562 = load i32, i32* %csi, align 4, !tbaa !91
  %cmp352 = icmp ne i32 %562, 1
  br i1 %cmp352, label %if.then.353, label %if.else.355

if.then.353:                                      ; preds = %if.end.351
  %563 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %564 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %565 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %566 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %567 = load i32*, i32** %used_process_color.addr, align 8, !tbaa !1
  %568 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %569 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc, align 8, !tbaa !1
  %call354 = call i32 @convert_separation_alternate(%struct.gx_device_pdf_s* %563, %struct.gs_imager_state_s* %564, %struct.gs_color_space_s* %565, %struct.gx_device_color_s* %566, i32* %567, %struct.psdf_set_color_commands_s* %568, %struct.gs_client_color_s* %569, %struct.cos_value_s* null, i32 0) #7
  store i32 %call354, i32* %code, align 4, !tbaa !49
  br label %if.end.357

if.else.355:                                      ; preds = %if.end.351
  %570 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %571 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %572 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc, align 8, !tbaa !1
  %573 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc.addr, align 8, !tbaa !1
  %574 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %575 = load i32*, i32** %used_process_color.addr, align 8, !tbaa !1
  %576 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %577 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %call356 = call i32 @write_color_unchanged(%struct.gx_device_pdf_s* %570, %struct.gs_imager_state_s* %571, %struct.gs_client_color_s* %572, %struct.gx_hl_saved_color_s* %temp, %struct.gx_hl_saved_color_s* %573, %struct.psdf_set_color_commands_s* %574, i32* %575, %struct.gs_color_space_s* %576, %struct.gx_device_color_s* %577) #7
  store i32 %call356, i32* %code, align 4, !tbaa !49
  br label %if.end.357

if.end.357:                                       ; preds = %if.else.355, %if.then.353
  br label %sw.epilog.415

sw.bb.358:                                        ; preds = %sw.bb.341
  %578 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %base_space359 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %578, i32 0, i32 3
  %579 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space359, align 8, !tbaa !152
  store %struct.gs_color_space_s* %579, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %580 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %call360 = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %580) #7
  store i32 %call360, i32* %csi, align 4, !tbaa !91
  %581 = load i32, i32* %csi, align 4, !tbaa !91
  %cmp361 = icmp eq i32 %581, 12
  br i1 %cmp361, label %if.then.362, label %if.end.365

if.then.362:                                      ; preds = %sw.bb.358
  %582 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %cmm_icc_profile_data363 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %582, i32 0, i32 6
  %583 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data363, align 8, !tbaa !200
  %call364 = call i32 @gsicc_get_default_type(%struct.cmm_profile_s* %583) #7
  store i32 %call364, i32* %csi, align 4, !tbaa !91
  br label %if.end.365

if.end.365:                                       ; preds = %if.then.362, %sw.bb.358
  %584 = load i32, i32* %csi, align 4, !tbaa !91
  %cmp366 = icmp ne i32 %584, 1
  br i1 %cmp366, label %if.then.367, label %if.else.369

if.then.367:                                      ; preds = %if.end.365
  %585 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %586 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %587 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %588 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %589 = load i32*, i32** %used_process_color.addr, align 8, !tbaa !1
  %590 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %591 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc, align 8, !tbaa !1
  %call368 = call i32 @convert_DeviceN_alternate(%struct.gx_device_pdf_s* %585, %struct.gs_imager_state_s* %586, %struct.gs_color_space_s* %587, %struct.gx_device_color_s* %588, i32* %589, %struct.psdf_set_color_commands_s* %590, %struct.gs_client_color_s* %591, %struct.cos_value_s* null, i32 0) #7
  store i32 %call368, i32* %code, align 4, !tbaa !49
  br label %if.end.371

if.else.369:                                      ; preds = %if.end.365
  %592 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %593 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %594 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc, align 8, !tbaa !1
  %595 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc.addr, align 8, !tbaa !1
  %596 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %597 = load i32*, i32** %used_process_color.addr, align 8, !tbaa !1
  %598 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %599 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %call370 = call i32 @write_color_unchanged(%struct.gx_device_pdf_s* %592, %struct.gs_imager_state_s* %593, %struct.gs_client_color_s* %594, %struct.gx_hl_saved_color_s* %temp, %struct.gx_hl_saved_color_s* %595, %struct.psdf_set_color_commands_s* %596, i32* %597, %struct.gs_color_space_s* %598, %struct.gx_device_color_s* %599) #7
  store i32 %call370, i32* %code, align 4, !tbaa !49
  br label %if.end.371

if.end.371:                                       ; preds = %if.else.369, %if.then.367
  br label %sw.epilog.415

sw.bb.372:                                        ; preds = %sw.bb.341
  %600 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %base_space373 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %600, i32 0, i32 3
  %601 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space373, align 8, !tbaa !152
  store %struct.gs_color_space_s* %601, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %602 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %call374 = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %602) #7
  store i32 %call374, i32* %csi, align 4, !tbaa !91
  %603 = load i32, i32* %csi, align 4, !tbaa !91
  %cmp375 = icmp eq i32 %603, 12
  br i1 %cmp375, label %if.then.376, label %if.end.379

if.then.376:                                      ; preds = %sw.bb.372
  %604 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %cmm_icc_profile_data377 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %604, i32 0, i32 6
  %605 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data377, align 8, !tbaa !200
  %call378 = call i32 @gsicc_get_default_type(%struct.cmm_profile_s* %605) #7
  store i32 %call378, i32* %csi, align 4, !tbaa !91
  br label %if.end.379

if.end.379:                                       ; preds = %if.then.376, %sw.bb.372
  %606 = load i32, i32* %csi, align 4, !tbaa !91
  switch i32 %606, label %sw.default.410 [
    i32 0, label %sw.bb.380
    i32 1, label %sw.bb.380
    i32 9, label %sw.bb.382
    i32 4, label %sw.bb.396
  ]

sw.bb.380:                                        ; preds = %if.end.379, %if.end.379
  %607 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %608 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %609 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc, align 8, !tbaa !1
  %610 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc.addr, align 8, !tbaa !1
  %611 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %612 = load i32*, i32** %used_process_color.addr, align 8, !tbaa !1
  %613 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %614 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %call381 = call i32 @write_color_unchanged(%struct.gx_device_pdf_s* %607, %struct.gs_imager_state_s* %608, %struct.gs_client_color_s* %609, %struct.gx_hl_saved_color_s* %temp, %struct.gx_hl_saved_color_s* %610, %struct.psdf_set_color_commands_s* %611, i32* %612, %struct.gs_color_space_s* %613, %struct.gx_device_color_s* %614) #7
  store i32 %call381, i32* %code, align 4, !tbaa !49
  br label %sw.epilog.412

sw.bb.382:                                        ; preds = %if.end.379
  %615 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %base_space383 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %615, i32 0, i32 3
  %616 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space383, align 8, !tbaa !152
  store %struct.gs_color_space_s* %616, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %617 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %call384 = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %617) #7
  store i32 %call384, i32* %csi, align 4, !tbaa !91
  %618 = load i32, i32* %csi, align 4, !tbaa !91
  %cmp385 = icmp eq i32 %618, 12
  br i1 %cmp385, label %if.then.386, label %if.end.389

if.then.386:                                      ; preds = %sw.bb.382
  %619 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %cmm_icc_profile_data387 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %619, i32 0, i32 6
  %620 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data387, align 8, !tbaa !200
  %call388 = call i32 @gsicc_get_default_type(%struct.cmm_profile_s* %620) #7
  store i32 %call388, i32* %csi, align 4, !tbaa !91
  br label %if.end.389

if.end.389:                                       ; preds = %if.then.386, %sw.bb.382
  %621 = load i32, i32* %csi, align 4, !tbaa !91
  %cmp390 = icmp ne i32 %621, 1
  br i1 %cmp390, label %if.then.391, label %if.else.393

if.then.391:                                      ; preds = %if.end.389
  %622 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %623 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %624 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %625 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %626 = load i32*, i32** %used_process_color.addr, align 8, !tbaa !1
  %627 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %628 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc, align 8, !tbaa !1
  %call392 = call i32 @convert_separation_alternate(%struct.gx_device_pdf_s* %622, %struct.gs_imager_state_s* %623, %struct.gs_color_space_s* %624, %struct.gx_device_color_s* %625, i32* %626, %struct.psdf_set_color_commands_s* %627, %struct.gs_client_color_s* %628, %struct.cos_value_s* null, i32 0) #7
  store i32 %call392, i32* %code, align 4, !tbaa !49
  br label %if.end.395

if.else.393:                                      ; preds = %if.end.389
  %629 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %630 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %631 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc, align 8, !tbaa !1
  %632 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc.addr, align 8, !tbaa !1
  %633 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %634 = load i32*, i32** %used_process_color.addr, align 8, !tbaa !1
  %635 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %636 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %call394 = call i32 @write_color_unchanged(%struct.gx_device_pdf_s* %629, %struct.gs_imager_state_s* %630, %struct.gs_client_color_s* %631, %struct.gx_hl_saved_color_s* %temp, %struct.gx_hl_saved_color_s* %632, %struct.psdf_set_color_commands_s* %633, i32* %634, %struct.gs_color_space_s* %635, %struct.gx_device_color_s* %636) #7
  store i32 %call394, i32* %code, align 4, !tbaa !49
  br label %if.end.395

if.end.395:                                       ; preds = %if.else.393, %if.then.391
  br label %sw.epilog.412

sw.bb.396:                                        ; preds = %if.end.379
  %637 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %base_space397 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %637, i32 0, i32 3
  %638 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space397, align 8, !tbaa !152
  store %struct.gs_color_space_s* %638, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %639 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %call398 = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %639) #7
  store i32 %call398, i32* %csi, align 4, !tbaa !91
  %640 = load i32, i32* %csi, align 4, !tbaa !91
  %cmp399 = icmp eq i32 %640, 12
  br i1 %cmp399, label %if.then.400, label %if.end.403

if.then.400:                                      ; preds = %sw.bb.396
  %641 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %cmm_icc_profile_data401 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %641, i32 0, i32 6
  %642 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data401, align 8, !tbaa !200
  %call402 = call i32 @gsicc_get_default_type(%struct.cmm_profile_s* %642) #7
  store i32 %call402, i32* %csi, align 4, !tbaa !91
  br label %if.end.403

if.end.403:                                       ; preds = %if.then.400, %sw.bb.396
  %643 = load i32, i32* %csi, align 4, !tbaa !91
  %cmp404 = icmp ne i32 %643, 1
  br i1 %cmp404, label %if.then.405, label %if.else.407

if.then.405:                                      ; preds = %if.end.403
  %644 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %645 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %646 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %647 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %648 = load i32*, i32** %used_process_color.addr, align 8, !tbaa !1
  %649 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %650 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc, align 8, !tbaa !1
  %call406 = call i32 @convert_DeviceN_alternate(%struct.gx_device_pdf_s* %644, %struct.gs_imager_state_s* %645, %struct.gs_color_space_s* %646, %struct.gx_device_color_s* %647, i32* %648, %struct.psdf_set_color_commands_s* %649, %struct.gs_client_color_s* %650, %struct.cos_value_s* null, i32 0) #7
  store i32 %call406, i32* %code, align 4, !tbaa !49
  br label %if.end.409

if.else.407:                                      ; preds = %if.end.403
  %651 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %652 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %653 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc, align 8, !tbaa !1
  %654 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc.addr, align 8, !tbaa !1
  %655 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %656 = load i32*, i32** %used_process_color.addr, align 8, !tbaa !1
  %657 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %658 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %call408 = call i32 @write_color_unchanged(%struct.gx_device_pdf_s* %651, %struct.gs_imager_state_s* %652, %struct.gs_client_color_s* %653, %struct.gx_hl_saved_color_s* %temp, %struct.gx_hl_saved_color_s* %654, %struct.psdf_set_color_commands_s* %655, i32* %656, %struct.gs_color_space_s* %657, %struct.gx_device_color_s* %658) #7
  store i32 %call408, i32* %code, align 4, !tbaa !49
  br label %if.end.409

if.end.409:                                       ; preds = %if.else.407, %if.then.405
  br label %sw.epilog.412

sw.default.410:                                   ; preds = %if.end.379
  %659 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %660 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %661 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %662 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %663 = load i32*, i32** %used_process_color.addr, align 8, !tbaa !1
  %664 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %665 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc, align 8, !tbaa !1
  %call411 = call i32 @write_color_as_process(%struct.gx_device_pdf_s* %659, %struct.gs_imager_state_s* %660, %struct.gs_color_space_s* %661, %struct.gx_device_color_s* %662, i32* %663, %struct.psdf_set_color_commands_s* %664, %struct.gs_client_color_s* %665) #7
  store i32 %call411, i32* %code, align 4, !tbaa !49
  br label %sw.epilog.412

sw.epilog.412:                                    ; preds = %sw.default.410, %if.end.409, %if.end.395, %sw.bb.380
  br label %sw.epilog.415

sw.default.413:                                   ; preds = %sw.bb.341
  %666 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %667 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %668 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %669 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %670 = load i32*, i32** %used_process_color.addr, align 8, !tbaa !1
  %671 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %672 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc, align 8, !tbaa !1
  %call414 = call i32 @write_color_as_process(%struct.gx_device_pdf_s* %666, %struct.gs_imager_state_s* %667, %struct.gs_color_space_s* %668, %struct.gx_device_color_s* %669, i32* %670, %struct.psdf_set_color_commands_s* %671, %struct.gs_client_color_s* %672) #7
  store i32 %call414, i32* %code, align 4, !tbaa !49
  br label %sw.epilog.415

sw.epilog.415:                                    ; preds = %sw.default.413, %sw.epilog.412, %if.end.371, %if.end.357, %sw.bb.342
  br label %sw.epilog.417

sw.default.416:                                   ; preds = %if.else.184
  br label %sw.epilog.417

sw.epilog.417:                                    ; preds = %sw.default.416, %sw.epilog.415, %sw.epilog.340, %sw.epilog.265, %sw.bb.189, %sw.bb.187
  br label %if.end.418

if.end.418:                                       ; preds = %sw.epilog.417, %sw.epilog.183
  br label %sw.epilog.425

sw.default.419:                                   ; preds = %if.end.4
  br label %sw.bb.420

sw.bb.420:                                        ; preds = %if.end.4, %sw.default.419
  %673 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %674 = bitcast %struct.gx_device_pdf_s* %673 to %struct.gx_device_vector_s*
  %675 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %676 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %677 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %UseOldColor = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %677, i32 0, i32 248
  %678 = load i32, i32* %UseOldColor, align 4, !tbaa !198
  %call421 = call i32 @psdf_set_color(%struct.gx_device_vector_s* %674, %struct.gx_device_color_s* %675, %struct.psdf_set_color_commands_s* %676, i32 %678) #7
  store i32 %call421, i32* %code, align 4, !tbaa !49
  %679 = load i32, i32* %code, align 4, !tbaa !49
  %cmp422 = icmp slt i32 %679, 0
  br i1 %cmp422, label %if.then.423, label %if.end.424

if.then.423:                                      ; preds = %sw.bb.420
  %680 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %680, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.426

if.end.424:                                       ; preds = %sw.bb.420
  %681 = load i32*, i32** %used_process_color.addr, align 8, !tbaa !1
  store i32 1, i32* %681, align 4, !tbaa !49
  br label %sw.epilog.425

sw.epilog.425:                                    ; preds = %if.end.424, %if.end.418, %cleanup.cont
  %682 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc.addr, align 8, !tbaa !1
  %683 = bitcast %struct.gx_hl_saved_color_s* %682 to i8*
  %684 = bitcast %struct.gx_hl_saved_color_s* %temp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %683, i8* %684, i64 632, i32 8, i1 false), !tbaa.struct !90
  %685 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %685, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.426

cleanup.426:                                      ; preds = %sw.epilog.425, %if.then.423, %sw.default.182, %if.then.175, %if.then.164, %if.then.153, %cleanup, %if.then.3, %if.then
  %686 = bitcast %struct.gs_color_space_s** %pcs2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %686) #1
  %687 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %687) #1
  %688 = bitcast i32* %csi2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %688) #1
  %689 = bitcast i32* %csi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %689) #1
  %690 = bitcast %struct.cos_value_s* %cs_value to i8*
  call void @llvm.lifetime.end(i64 24, i8* %690) #1
  %691 = bitcast %struct.gs_client_color_s** %pcc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %691) #1
  %692 = bitcast %struct.gx_hl_saved_color_s* %temp to i8*
  call void @llvm.lifetime.end(i64 632, i8* %692) #1
  %693 = bitcast i32* %code1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %693) #1
  %694 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %694) #1
  %695 = load i32, i32* %retval
  ret i32 %695
}

declare i32 @gx_hld_saved_color_equal(%struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s*) #3

declare i32 @gx_hld_get_color_space_and_ccolor(%struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gs_color_space_s**, %struct.gs_client_color_s**) #3

declare i32 @gsicc_get_default_type(%struct.cmm_profile_s*) #3

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @is_cspace_allowed_in_strategy(%struct.gx_device_pdf_s* %pdev, i32 %csi) #4 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %csi.addr = alloca i32, align 4
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store i32 %csi, i32* %csi.addr, align 4, !tbaa !91
  %0 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %0, i32 0, i32 73
  %ColorConversionStrategy = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params, i32 0, i32 17
  %1 = load i32, i32* %ColorConversionStrategy, align 4, !tbaa !157
  %cmp = icmp eq i32 %1, 5
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* %csi.addr, align 4, !tbaa !91
  %cmp1 = icmp ne i32 %2, 2
  br i1 %cmp1, label %land.lhs.true.2, label %if.end

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %3 = load i32, i32* %csi.addr, align 4, !tbaa !91
  %cmp3 = icmp ne i32 %3, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.2
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.2, %land.lhs.true, %entry
  %4 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %params4 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %4, i32 0, i32 73
  %ColorConversionStrategy5 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params4, i32 0, i32 17
  %5 = load i32, i32* %ColorConversionStrategy5, align 4, !tbaa !157
  %cmp6 = icmp eq i32 %5, 4
  br i1 %cmp6, label %land.lhs.true.7, label %if.end.12

land.lhs.true.7:                                  ; preds = %if.end
  %6 = load i32, i32* %csi.addr, align 4, !tbaa !91
  %cmp8 = icmp ne i32 %6, 1
  br i1 %cmp8, label %land.lhs.true.9, label %if.end.12

land.lhs.true.9:                                  ; preds = %land.lhs.true.7
  %7 = load i32, i32* %csi.addr, align 4, !tbaa !91
  %cmp10 = icmp ne i32 %7, 0
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %land.lhs.true.9
  store i32 0, i32* %retval
  br label %return

if.end.12:                                        ; preds = %land.lhs.true.9, %land.lhs.true.7, %if.end
  %8 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %params13 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %8, i32 0, i32 73
  %ColorConversionStrategy14 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params13, i32 0, i32 17
  %9 = load i32, i32* %ColorConversionStrategy14, align 4, !tbaa !157
  %cmp15 = icmp eq i32 %9, 7
  br i1 %cmp15, label %land.lhs.true.16, label %if.end.21

land.lhs.true.16:                                 ; preds = %if.end.12
  %10 = load i32, i32* %csi.addr, align 4, !tbaa !91
  %cmp17 = icmp ne i32 %10, 1
  br i1 %cmp17, label %land.lhs.true.18, label %if.end.21

land.lhs.true.18:                                 ; preds = %land.lhs.true.16
  %11 = load i32, i32* %csi.addr, align 4, !tbaa !91
  %cmp19 = icmp ne i32 %11, 0
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %land.lhs.true.18
  store i32 0, i32* %retval
  br label %return

if.end.21:                                        ; preds = %land.lhs.true.18, %land.lhs.true.16, %if.end.12
  %12 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %params22 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %12, i32 0, i32 73
  %ColorConversionStrategy23 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params22, i32 0, i32 17
  %13 = load i32, i32* %ColorConversionStrategy23, align 4, !tbaa !157
  %cmp24 = icmp eq i32 %13, 6
  br i1 %cmp24, label %land.lhs.true.25, label %if.end.28

land.lhs.true.25:                                 ; preds = %if.end.21
  %14 = load i32, i32* %csi.addr, align 4, !tbaa !91
  %cmp26 = icmp ne i32 %14, 0
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %land.lhs.true.25
  store i32 0, i32* %retval
  br label %return

if.end.28:                                        ; preds = %land.lhs.true.25, %if.end.21
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.28, %if.then.27, %if.then.20, %if.then.11, %if.then
  %15 = load i32, i32* %retval
  ret i32 %15
}

declare i32 @gx_hld_saved_color_same_cspace(%struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s*) #3

declare i32 @cos_value_write(%struct.cos_value_s*, %struct.gx_device_pdf_s*) #3

; Function Attrs: nounwind uwtable
define internal i32 @pdf_write_ccolor(%struct.gx_device_pdf_s* %pdev, %struct.gs_imager_state_s* %pis, %struct.gs_client_color_s* %pcc) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pcc.addr = alloca %struct.gs_client_color_s*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gs_client_color_s* %pcc, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %call = call i32 @gx_hld_get_number_color_components(%struct.gs_imager_state_s* %2) #7
  store i32 %call, i32* %n, align 4, !tbaa !49
  %3 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %3, i32 0, i32 47
  %4 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !186
  %5 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %paint = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %5, i32 0, i32 1
  %values = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint, i32 0, i32 0
  %arrayidx = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 0
  %6 = load float, float* %arrayidx, align 4, !tbaa !94
  %conv = fpext float %6 to double
  %call1 = call double @psdf_round(double %conv, i32 255, i32 8) #7
  %call2 = call i8* @pprintg1(%struct.stream_s* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), double %call1) #7
  store i32 1, i32* %i, align 4, !tbaa !49
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %i, align 4, !tbaa !49
  %8 = load i32, i32* %n, align 4, !tbaa !49
  %cmp = icmp slt i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm4 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %9, i32 0, i32 47
  %10 = load %struct.stream_s*, %struct.stream_s** %strm4, align 8, !tbaa !186
  %11 = load i32, i32* %i, align 4, !tbaa !49
  %idxprom = sext i32 %11 to i64
  %12 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %paint5 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %12, i32 0, i32 1
  %values6 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint5, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [64 x float], [64 x float]* %values6, i32 0, i64 %idxprom
  %13 = load float, float* %arrayidx7, align 4, !tbaa !94
  %conv8 = fpext float %13 to double
  %call9 = call double @psdf_round(double %conv8, i32 255, i32 8) #7
  %call10 = call i8* @pprintg1(%struct.stream_s* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.55, i32 0, i32 0), double %call9) #7
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4, !tbaa !49
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4, !tbaa !49
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #1
  %16 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #1
  ret i32 0
}

declare i32 @pdf_put_colored_pattern(%struct.gx_device_pdf_s*, %struct.gx_device_color_s*, %struct.gs_color_space_s*, %struct.psdf_set_color_commands_s*, i32, %struct.pdf_resource_s**) #3

declare i32 @pdf_put_uncolored_pattern(%struct.gx_device_pdf_s*, %struct.gx_device_color_s*, %struct.gs_color_space_s*, %struct.psdf_set_color_commands_s*, i32, %struct.pdf_resource_s**) #3

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @is_pattern2_allowed_in_strategy(%struct.gx_device_pdf_s* %pdev, %struct.gx_device_color_s* %pdc) #4 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pdc.addr = alloca %struct.gx_device_color_s*, align 8
  %pcs2 = alloca %struct.gs_color_space_s*, align 8
  %csi = alloca i32, align 4
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdc, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_color_space_s** %pcs2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %call = call %struct.gs_color_space_s* @gx_dc_pattern2_get_color_space(%struct.gx_device_color_s* %1) #7
  store %struct.gs_color_space_s* %call, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %2 = bitcast i32* %csi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %call1 = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %3) #7
  store i32 %call1, i32* %csi, align 4, !tbaa !91
  %4 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %5 = load i32, i32* %csi, align 4, !tbaa !91
  %call2 = call i32 @is_cspace_allowed_in_strategy(%struct.gx_device_pdf_s* %4, i32 %5) #7
  %6 = bitcast i32* %csi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %6) #1
  %7 = bitcast %struct.gs_color_space_s** %pcs2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %7) #1
  ret i32 %call2
}

declare i32 @pdf_put_pattern2(%struct.gx_device_pdf_s*, %struct.gx_device_color_s*, %struct.psdf_set_color_commands_s*, %struct.pdf_resource_s**) #3

declare i32 @psdf_set_color(%struct.gx_device_vector_s*, %struct.gx_device_color_s*, %struct.psdf_set_color_commands_s*, i32) #3

; Function Attrs: nounwind uwtable
define i32 @pdf_set_drawing_color(%struct.gx_device_pdf_s* %pdev, %struct.gs_imager_state_s* %pis, %struct.gx_device_color_s* %pdc, %struct.gx_hl_saved_color_s* %psc, i32* %used_process_color, %struct.psdf_set_color_commands_s* %ppscc) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pdc.addr = alloca %struct.gx_device_color_s*, align 8
  %psc.addr = alloca %struct.gx_hl_saved_color_s*, align 8
  %used_process_color.addr = alloca i32*, align 8
  %ppscc.addr = alloca %struct.psdf_set_color_commands_s*, align 8
  %temp = alloca %struct.gx_hl_saved_color_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdc, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  store %struct.gx_hl_saved_color_s* %psc, %struct.gx_hl_saved_color_s** %psc.addr, align 8, !tbaa !1
  store i32* %used_process_color, i32** %used_process_color.addr, align 8, !tbaa !1
  store %struct.psdf_set_color_commands_s* %ppscc, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_hl_saved_color_s* %temp to i8*
  call void @llvm.lifetime.start(i64 632, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %skip_colors = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %2, i32 0, i32 207
  %3 = load i32, i32* %skip_colors, align 4, !tbaa !199
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %5 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %call = call i32 @gx_hld_save_color(%struct.gs_imager_state_s* %4, %struct.gx_device_color_s* %5, %struct.gx_hl_saved_color_s* %temp) #7
  %6 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc.addr, align 8, !tbaa !1
  %call1 = call i32 @gx_hld_saved_color_equal(%struct.gx_hl_saved_color_s* %temp, %struct.gx_hl_saved_color_s* %6) #7
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %7 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call5 = call i32 @pdf_open_page(%struct.gx_device_pdf_s* %7, i32 1) #7
  store i32 %call5, i32* %code, align 4, !tbaa !49
  %8 = load i32, i32* %code, align 4, !tbaa !49
  %cmp = icmp slt i32 %8, 0
  br i1 %cmp, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.4
  %9 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %if.end.4
  %10 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %11 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %12 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %13 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc.addr, align 8, !tbaa !1
  %14 = load i32*, i32** %used_process_color.addr, align 8, !tbaa !1
  %15 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %call8 = call i32 @pdf_reset_color(%struct.gx_device_pdf_s* %10, %struct.gs_imager_state_s* %11, %struct.gx_device_color_s* %12, %struct.gx_hl_saved_color_s* %13, i32* %14, %struct.psdf_set_color_commands_s* %15) #7
  store i32 %call8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.7, %if.then.6, %if.then.3, %if.then
  %16 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #1
  %17 = bitcast %struct.gx_hl_saved_color_s* %temp to i8*
  call void @llvm.lifetime.end(i64 632, i8* %17) #1
  %18 = load i32, i32* %retval
  ret i32 %18
}

declare i32 @pdf_open_page(%struct.gx_device_pdf_s*, i32) #3

; Function Attrs: nounwind uwtable
define i32 @pdf_set_pure_color(%struct.gx_device_pdf_s* %pdev, i64 %color, %struct.gx_hl_saved_color_s* %psc, i32* %used_process_color, %struct.psdf_set_color_commands_s* %ppscc) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %color.addr = alloca i64, align 8
  %psc.addr = alloca %struct.gx_hl_saved_color_s*, align 8
  %used_process_color.addr = alloca i32*, align 8
  %ppscc.addr = alloca %struct.psdf_set_color_commands_s*, align 8
  %dcolor = alloca %struct.gx_device_color_s, align 8
  %temp = alloca %struct.gx_hl_saved_color_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store i64 %color, i64* %color.addr, align 8, !tbaa !57
  store %struct.gx_hl_saved_color_s* %psc, %struct.gx_hl_saved_color_s** %psc.addr, align 8, !tbaa !1
  store i32* %used_process_color, i32** %used_process_color.addr, align 8, !tbaa !1
  store %struct.psdf_set_color_commands_s* %ppscc, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_color_s* %dcolor to i8*
  call void @llvm.lifetime.start(i64 656, i8* %0) #1
  %1 = bitcast %struct.gx_hl_saved_color_s* %temp to i8*
  call void @llvm.lifetime.start(i64 632, i8* %1) #1
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load i64, i64* %color.addr, align 8, !tbaa !57
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %dcolor, i32 0, i32 1
  %pure = bitcast %union._c* %colors to i64*
  store i64 %3, i64* %pure, align 8, !tbaa !57
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %dcolor, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_pure, %struct.gx_device_color_type_s** %type, align 8, !tbaa !106
  %ccolor_valid = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %dcolor, i32 0, i32 3
  store i32 0, i32* %ccolor_valid, align 4, !tbaa !110
  %4 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %skip_colors = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %4, i32 0, i32 207
  %5 = load i32, i32* %skip_colors, align 4, !tbaa !199
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 @gx_hld_save_color(%struct.gs_imager_state_s* null, %struct.gx_device_color_s* %dcolor, %struct.gx_hl_saved_color_s* %temp) #7
  %6 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc.addr, align 8, !tbaa !1
  %call1 = call i32 @gx_hld_saved_color_equal(%struct.gx_hl_saved_color_s* %temp, %struct.gx_hl_saved_color_s* %6) #7
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %7 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call5 = call i32 @pdf_open_page(%struct.gx_device_pdf_s* %7, i32 1) #7
  store i32 %call5, i32* %code, align 4, !tbaa !49
  %8 = load i32, i32* %code, align 4, !tbaa !49
  %cmp = icmp slt i32 %8, 0
  br i1 %cmp, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.4
  %9 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %if.end.4
  %10 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %11 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc.addr, align 8, !tbaa !1
  %12 = load i32*, i32** %used_process_color.addr, align 8, !tbaa !1
  %13 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %call8 = call i32 @pdf_reset_color(%struct.gx_device_pdf_s* %10, %struct.gs_imager_state_s* null, %struct.gx_device_color_s* %dcolor, %struct.gx_hl_saved_color_s* %11, i32* %12, %struct.psdf_set_color_commands_s* %13) #7
  store i32 %call8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.7, %if.then.6, %if.then.3, %if.then
  %14 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #1
  %15 = bitcast %struct.gx_hl_saved_color_s* %temp to i8*
  call void @llvm.lifetime.end(i64 632, i8* %15) #1
  %16 = bitcast %struct.gx_device_color_s* %dcolor to i8*
  call void @llvm.lifetime.end(i64 656, i8* %16) #1
  %17 = load i32, i32* %retval
  ret i32 %17
}

declare %struct.cos_value_s* @cos_string_value(%struct.cos_value_s*, i8*, i32) #3

; Function Attrs: nounwind uwtable
define i32 @pdf_end_gstate(%struct.gx_device_pdf_s* %pdev, %struct.pdf_resource_s* %pres) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pres.addr = alloca %struct.pdf_resource_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.pdf_resource_s* %pres, %struct.pdf_resource_s** %pres.addr, align 8, !tbaa !1
  %0 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.pdf_resource_s* %0, null
  br i1 %tobool, label %if.then, label %if.end.15

if.then:                                          ; preds = %entry
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call = call i32 @pdf_substitute_resource(%struct.gx_device_pdf_s* %2, %struct.pdf_resource_s** %pres.addr, i32 1, i32 (%struct.gx_device_pdf_s*, %struct.pdf_resource_s*, %struct.pdf_resource_s*)* null, i32 1) #7
  store i32 %call, i32* %code, align 4, !tbaa !49
  %3 = load i32, i32* %code, align 4, !tbaa !49
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  %4 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %5 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %used_mask = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %5, i32 0, i32 164
  %6 = load i64, i64* %used_mask, align 8, !tbaa !170
  %7 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres.addr, align 8, !tbaa !1
  %where_used = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %7, i32 0, i32 6
  %8 = load i64, i64* %where_used, align 8, !tbaa !171
  %or = or i64 %8, %6
  store i64 %or, i64* %where_used, align 8, !tbaa !171
  %9 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call2 = call i32 @pdf_open_page(%struct.gx_device_pdf_s* %9, i32 1) #7
  store i32 %call2, i32* %code, align 4, !tbaa !49
  %10 = load i32, i32* %code, align 4, !tbaa !49
  %cmp3 = icmp slt i32 %10, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %11 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  %12 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %13 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %substream_Resources = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %13, i32 0, i32 205
  %14 = load %struct.cos_dict_s*, %struct.cos_dict_s** %substream_Resources, align 8, !tbaa !187
  %15 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres.addr, align 8, !tbaa !1
  %call6 = call i32 @pdf_add_resource(%struct.gx_device_pdf_s* %12, %struct.cos_dict_s* %14, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i32 0, i32 0), %struct.pdf_resource_s* %15) #7
  store i32 %call6, i32* %code, align 4, !tbaa !49
  %16 = load i32, i32* %code, align 4, !tbaa !49
  %cmp7 = icmp slt i32 %16, 0
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.5
  %17 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.end.5
  %18 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %18, i32 0, i32 47
  %19 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !186
  %20 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres.addr, align 8, !tbaa !1
  %call10 = call i64 @pdf_resource_id(%struct.pdf_resource_s* %20) #7
  %call11 = call i8* @pprintld1(%struct.stream_s* %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i64 %call10) #7
  %21 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %used_mask12 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %21, i32 0, i32 164
  %22 = load i64, i64* %used_mask12, align 8, !tbaa !170
  %23 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres.addr, align 8, !tbaa !1
  %where_used13 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %23, i32 0, i32 6
  %24 = load i64, i64* %where_used13, align 8, !tbaa !171
  %or14 = or i64 %24, %22
  store i64 %or14, i64* %where_used13, align 8, !tbaa !171
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.9, %if.then.8, %if.then.4, %if.then.1
  %25 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.15

if.end.15:                                        ; preds = %cleanup.cont, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.15, %cleanup
  %26 = load i32, i32* %retval
  ret i32 %26

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare i8* @pprintld1(%struct.stream_s*, i8*, i64) #3

declare i64 @pdf_resource_id(%struct.pdf_resource_s*) #3

; Function Attrs: nounwind uwtable
define i32 @pdf_prepare_drawing(%struct.gx_device_pdf_s* %pdev, %struct.gs_imager_state_s* %pis, %struct.pdf_resource_s** %ppres) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %ppres.addr = alloca %struct.pdf_resource_s**, align 8
  %code = alloca i32, align 4
  %bottom = alloca i32, align 4
  %buf = alloca [20 x i8], align 16
  %cleanup.dest.slot = alloca i32
  %phase = alloca %struct.gs_int_point_s, align 4
  %dev_phase = alloca %struct.gs_int_point_s, align 4
  %hts = alloca [32 x i8], align 16
  %trs = alloca [116 x i8], align 16
  %bgs = alloca [32 x i8], align 16
  %ucrs = alloca [33 x i8], align 16
  %buf175 = alloca [17 x i8], align 16
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.pdf_resource_s** %ppres, %struct.pdf_resource_s*** %ppres.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %code, align 4, !tbaa !49
  %1 = bitcast i32* %bottom to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %CompatibilityLevel = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %2, i32 0, i32 75
  %3 = load double, double* %CompatibilityLevel, align 8, !tbaa !204
  %cmp = fcmp oge double %3, 1.400000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %state = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %4, i32 0, i32 51
  %blend_mode = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %state, i32 0, i32 12
  %5 = load i32, i32* %blend_mode, align 4, !tbaa !64
  %6 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %blend_mode1 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %6, i32 0, i32 12
  %7 = load i32, i32* %blend_mode1, align 4, !tbaa !121
  %cmp2 = icmp ne i32 %5, %7
  br i1 %cmp2, label %if.then.3, label %if.end.18

if.then.3:                                        ; preds = %if.then
  %8 = bitcast [20 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 20, i8* %8) #1
  %9 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %10 = load %struct.pdf_resource_s**, %struct.pdf_resource_s*** %ppres.addr, align 8, !tbaa !1
  %call = call i32 @pdf_open_gstate(%struct.gx_device_pdf_s* %9, %struct.pdf_resource_s** %10) #7
  store i32 %call, i32* %code, align 4, !tbaa !49
  %11 = load i32, i32* %code, align 4, !tbaa !49
  %cmp4 = icmp slt i32 %11, 0
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then.3
  %12 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then.3
  %arrayidx = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i32 0, i64 0
  store i8 47, i8* %arrayidx, align 1, !tbaa !91
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 1
  %13 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %blend_mode6 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %13, i32 0, i32 12
  %14 = load i32, i32* %blend_mode6, align 4, !tbaa !121
  %idxprom = zext i32 %14 to i64
  %arrayidx7 = getelementptr inbounds [17 x i8*], [17 x i8*]* @pdf_prepare_drawing.bm_names, i32 0, i64 %idxprom
  %15 = load i8*, i8** %arrayidx7, align 8, !tbaa !1
  %call8 = call i8* @strncpy(i8* %add.ptr, i8* %15, i64 18) #8
  %16 = load %struct.pdf_resource_s**, %struct.pdf_resource_s*** %ppres.addr, align 8, !tbaa !1
  %17 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %16, align 8, !tbaa !1
  %call9 = call %struct.cos_dict_s* @resource_dict(%struct.pdf_resource_s* %17) #7
  %arraydecay10 = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i32 0, i32 0
  %call11 = call i32 @cos_dict_put_string_copy(%struct.cos_dict_s* %call9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i32 0, i32 0), i8* %arraydecay10) #7
  store i32 %call11, i32* %code, align 4, !tbaa !49
  %18 = load i32, i32* %code, align 4, !tbaa !49
  %cmp12 = icmp slt i32 %18, 0
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end
  %19 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %19, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %if.end
  %20 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %blend_mode15 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %20, i32 0, i32 12
  %21 = load i32, i32* %blend_mode15, align 4, !tbaa !121
  %22 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %state16 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %22, i32 0, i32 51
  %blend_mode17 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %state16, i32 0, i32 12
  store i32 %21, i32* %blend_mode17, align 4, !tbaa !64
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.14, %if.then.13, %if.then.5
  %23 = bitcast [20 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 20, i8* %23) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.288 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.18

if.end.18:                                        ; preds = %cleanup.cont, %if.then
  %24 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %25 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %26 = load %struct.pdf_resource_s**, %struct.pdf_resource_s*** %ppres.addr, align 8, !tbaa !1
  %call19 = call i32 @pdf_update_alpha(%struct.gx_device_pdf_s* %24, %struct.gs_imager_state_s* %25, %struct.pdf_resource_s** %26) #7
  store i32 %call19, i32* %code, align 4, !tbaa !49
  %27 = load i32, i32* %code, align 4, !tbaa !49
  %cmp20 = icmp slt i32 %27, 0
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.18
  %28 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.288

if.end.22:                                        ; preds = %if.end.18
  br label %if.end.28

if.else:                                          ; preds = %entry
  %29 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %opacity = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %29, i32 0, i32 13
  %alpha = getelementptr inbounds %struct.gs_transparency_source_s, %struct.gs_transparency_source_s* %opacity, i32 0, i32 0
  %30 = load float, float* %alpha, align 4, !tbaa !119
  %cmp23 = fcmp une float %30, 1.000000e+00
  br i1 %cmp23, label %if.then.26, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %31 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %shape = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %31, i32 0, i32 14
  %alpha24 = getelementptr inbounds %struct.gs_transparency_source_s, %struct.gs_transparency_source_s* %shape, i32 0, i32 0
  %32 = load float, float* %alpha24, align 4, !tbaa !120
  %cmp25 = fcmp une float %32, 1.000000e+00
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %lor.lhs.false, %if.else
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.288

if.end.27:                                        ; preds = %lor.lhs.false
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.end.22
  %33 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %ResourcesBeforeUsage = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %33, i32 0, i32 102
  %34 = load i32, i32* %ResourcesBeforeUsage, align 4, !tbaa !207
  %tobool = icmp ne i32 %34, 0
  %cond = select i1 %tobool, i32 1, i32 0
  store i32 %cond, i32* %bottom, align 4, !tbaa !49
  %35 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %sbstack_depth = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %35, i32 0, i32 199
  %36 = load i32, i32* %sbstack_depth, align 4, !tbaa !208
  %37 = load i32, i32* %bottom, align 4, !tbaa !49
  %cmp29 = icmp eq i32 %36, %37
  br i1 %cmp29, label %if.then.30, label %if.end.209

if.then.30:                                       ; preds = %if.end.28
  %38 = bitcast %struct.gs_int_point_s* %phase to i8*
  call void @llvm.lifetime.start(i64 8, i8* %38) #1
  %39 = bitcast %struct.gs_int_point_s* %dev_phase to i8*
  call void @llvm.lifetime.start(i64 8, i8* %39) #1
  %40 = bitcast [32 x i8]* %hts to i8*
  call void @llvm.lifetime.start(i64 32, i8* %40) #1
  %41 = bitcast [116 x i8]* %trs to i8*
  call void @llvm.lifetime.start(i64 116, i8* %41) #1
  %42 = bitcast [32 x i8]* %bgs to i8*
  call void @llvm.lifetime.start(i64 32, i8* %42) #1
  %43 = bitcast [33 x i8]* %ucrs to i8*
  call void @llvm.lifetime.start(i64 33, i8* %43) #1
  %arrayidx31 = getelementptr inbounds [33 x i8], [33 x i8]* %ucrs, i32 0, i64 0
  store i8 0, i8* %arrayidx31, align 1, !tbaa !91
  %arrayidx32 = getelementptr inbounds [32 x i8], [32 x i8]* %bgs, i32 0, i64 0
  store i8 0, i8* %arrayidx32, align 1, !tbaa !91
  %arrayidx33 = getelementptr inbounds [116 x i8], [116 x i8]* %trs, i32 0, i64 0
  store i8 0, i8* %arrayidx33, align 1, !tbaa !91
  %arrayidx34 = getelementptr inbounds [32 x i8], [32 x i8]* %hts, i32 0, i64 0
  store i8 0, i8* %arrayidx34, align 1, !tbaa !91
  %44 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %44, i32 0, i32 73
  %PreserveHalftoneInfo = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params, i32 0, i32 18
  %45 = load i32, i32* %PreserveHalftoneInfo, align 4, !tbaa !209
  %tobool35 = icmp ne i32 %45, 0
  br i1 %tobool35, label %land.lhs.true, label %if.end.45

land.lhs.true:                                    ; preds = %if.then.30
  %46 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %halftone_id = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %46, i32 0, i32 137
  %47 = load i64, i64* %halftone_id, align 8, !tbaa !66
  %48 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %dev_ht = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %48, i32 0, i32 41
  %49 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %dev_ht, align 8, !tbaa !122
  %id = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %49, i32 0, i32 2
  %50 = load i64, i64* %id, align 8, !tbaa !123
  %cmp36 = icmp ne i64 %47, %50
  br i1 %cmp36, label %land.lhs.true.37, label %if.end.45

land.lhs.true.37:                                 ; preds = %land.lhs.true
  %51 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PDFX = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %51, i32 0, i32 108
  %52 = load i32, i32* %PDFX, align 4, !tbaa !210
  %tobool38 = icmp ne i32 %52, 0
  br i1 %tobool38, label %if.end.45, label %if.then.39

if.then.39:                                       ; preds = %land.lhs.true.37
  %53 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %54 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %arraydecay40 = getelementptr inbounds [32 x i8], [32 x i8]* %hts, i32 0, i32 0
  %call41 = call i32 @pdf_update_halftone(%struct.gx_device_pdf_s* %53, %struct.gs_imager_state_s* %54, i8* %arraydecay40) #7
  store i32 %call41, i32* %code, align 4, !tbaa !49
  %55 = load i32, i32* %code, align 4, !tbaa !49
  %cmp42 = icmp slt i32 %55, 0
  br i1 %cmp42, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.then.39
  %56 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %56, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.201

if.end.44:                                        ; preds = %if.then.39
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %land.lhs.true.37, %land.lhs.true, %if.then.30
  %57 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %params46 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %57, i32 0, i32 73
  %TransferFunctionInfo = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params46, i32 0, i32 20
  %58 = load i32, i32* %TransferFunctionInfo, align 4, !tbaa !211
  %cmp47 = icmp eq i32 %58, 0
  br i1 %cmp47, label %land.lhs.true.48, label %if.end.59

land.lhs.true.48:                                 ; preds = %if.end.45
  %59 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PDFX49 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %59, i32 0, i32 108
  %60 = load i32, i32* %PDFX49, align 4, !tbaa !210
  %tobool50 = icmp ne i32 %60, 0
  br i1 %tobool50, label %if.end.59, label %land.lhs.true.51

land.lhs.true.51:                                 ; preds = %land.lhs.true.48
  %61 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PDFA = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %61, i32 0, i32 109
  %62 = load i32, i32* %PDFA, align 4, !tbaa !212
  %cmp52 = icmp eq i32 %62, 0
  br i1 %cmp52, label %if.then.53, label %if.end.59

if.then.53:                                       ; preds = %land.lhs.true.51
  %63 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %64 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %arraydecay54 = getelementptr inbounds [116 x i8], [116 x i8]* %trs, i32 0, i32 0
  %call55 = call i32 @pdf_update_transfer(%struct.gx_device_pdf_s* %63, %struct.gs_imager_state_s* %64, i8* %arraydecay54) #7
  store i32 %call55, i32* %code, align 4, !tbaa !49
  %65 = load i32, i32* %code, align 4, !tbaa !49
  %cmp56 = icmp slt i32 %65, 0
  br i1 %cmp56, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %if.then.53
  %66 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %66, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.201

if.end.58:                                        ; preds = %if.then.53
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %land.lhs.true.51, %land.lhs.true.48, %if.end.45
  %67 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %params60 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %67, i32 0, i32 73
  %UCRandBGInfo = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params60, i32 0, i32 21
  %68 = load i32, i32* %UCRandBGInfo, align 4, !tbaa !213
  %cmp61 = icmp eq i32 %68, 0
  br i1 %cmp61, label %if.then.62, label %if.end.95

if.then.62:                                       ; preds = %if.end.59
  %69 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %black_generation = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %69, i32 0, i32 44
  %70 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %black_generation, align 8, !tbaa !128
  %tobool63 = icmp ne %struct.gx_transfer_map_s* %70, null
  br i1 %tobool63, label %land.lhs.true.64, label %if.end.78

land.lhs.true.64:                                 ; preds = %if.then.62
  %71 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %black_generation_id = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %71, i32 0, i32 140
  %72 = load i64, i64* %black_generation_id, align 8, !tbaa !68
  %73 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %black_generation65 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %73, i32 0, i32 44
  %74 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %black_generation65, align 8, !tbaa !128
  %id66 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %74, i32 0, i32 3
  %75 = load i64, i64* %id66, align 8, !tbaa !118
  %cmp67 = icmp ne i64 %72, %75
  br i1 %cmp67, label %if.then.68, label %if.end.78

if.then.68:                                       ; preds = %land.lhs.true.64
  %76 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %77 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %black_generation69 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %77, i32 0, i32 44
  %78 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %black_generation69, align 8, !tbaa !128
  %arraydecay70 = getelementptr inbounds [32 x i8], [32 x i8]* %bgs, i32 0, i32 0
  %call71 = call i32 @pdf_write_transfer_map(%struct.gx_device_pdf_s* %76, %struct.gx_transfer_map_s* %78, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.41, i32 0, i32 0), i8* %arraydecay70) #7
  store i32 %call71, i32* %code, align 4, !tbaa !49
  %79 = load i32, i32* %code, align 4, !tbaa !49
  %cmp72 = icmp slt i32 %79, 0
  br i1 %cmp72, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %if.then.68
  %80 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %80, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.201

if.end.74:                                        ; preds = %if.then.68
  %81 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %black_generation75 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %81, i32 0, i32 44
  %82 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %black_generation75, align 8, !tbaa !128
  %id76 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %82, i32 0, i32 3
  %83 = load i64, i64* %id76, align 8, !tbaa !118
  %84 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %black_generation_id77 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %84, i32 0, i32 140
  store i64 %83, i64* %black_generation_id77, align 8, !tbaa !68
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.74, %land.lhs.true.64, %if.then.62
  %85 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %undercolor_removal = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %85, i32 0, i32 45
  %86 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %undercolor_removal, align 8, !tbaa !129
  %tobool79 = icmp ne %struct.gx_transfer_map_s* %86, null
  br i1 %tobool79, label %land.lhs.true.80, label %if.end.94

land.lhs.true.80:                                 ; preds = %if.end.78
  %87 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %undercolor_removal_id = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %87, i32 0, i32 141
  %88 = load i64, i64* %undercolor_removal_id, align 8, !tbaa !70
  %89 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %undercolor_removal81 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %89, i32 0, i32 45
  %90 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %undercolor_removal81, align 8, !tbaa !129
  %id82 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %90, i32 0, i32 3
  %91 = load i64, i64* %id82, align 8, !tbaa !118
  %cmp83 = icmp ne i64 %88, %91
  br i1 %cmp83, label %if.then.84, label %if.end.94

if.then.84:                                       ; preds = %land.lhs.true.80
  %92 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %93 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %undercolor_removal85 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %93, i32 0, i32 45
  %94 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %undercolor_removal85, align 8, !tbaa !129
  %arraydecay86 = getelementptr inbounds [33 x i8], [33 x i8]* %ucrs, i32 0, i32 0
  %call87 = call i32 @pdf_write_transfer_map(%struct.gx_device_pdf_s* %92, %struct.gx_transfer_map_s* %94, i32 -1, i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.41, i32 0, i32 0), i8* %arraydecay86) #7
  store i32 %call87, i32* %code, align 4, !tbaa !49
  %95 = load i32, i32* %code, align 4, !tbaa !49
  %cmp88 = icmp slt i32 %95, 0
  br i1 %cmp88, label %if.then.89, label %if.end.90

if.then.89:                                       ; preds = %if.then.84
  %96 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %96, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.201

if.end.90:                                        ; preds = %if.then.84
  %97 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %undercolor_removal91 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %97, i32 0, i32 45
  %98 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %undercolor_removal91, align 8, !tbaa !129
  %id92 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %98, i32 0, i32 3
  %99 = load i64, i64* %id92, align 8, !tbaa !118
  %100 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %undercolor_removal_id93 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %100, i32 0, i32 141
  store i64 %99, i64* %undercolor_removal_id93, align 8, !tbaa !70
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.90, %land.lhs.true.80, %if.end.78
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.94, %if.end.59
  %arrayidx96 = getelementptr inbounds [32 x i8], [32 x i8]* %hts, i32 0, i64 0
  %101 = load i8, i8* %arrayidx96, align 1, !tbaa !91
  %conv = sext i8 %101 to i32
  %tobool97 = icmp ne i32 %conv, 0
  br i1 %tobool97, label %if.then.110, label %lor.lhs.false.98

lor.lhs.false.98:                                 ; preds = %if.end.95
  %arrayidx99 = getelementptr inbounds [116 x i8], [116 x i8]* %trs, i32 0, i64 0
  %102 = load i8, i8* %arrayidx99, align 1, !tbaa !91
  %conv100 = sext i8 %102 to i32
  %tobool101 = icmp ne i32 %conv100, 0
  br i1 %tobool101, label %if.then.110, label %lor.lhs.false.102

lor.lhs.false.102:                                ; preds = %lor.lhs.false.98
  %arrayidx103 = getelementptr inbounds [32 x i8], [32 x i8]* %bgs, i32 0, i64 0
  %103 = load i8, i8* %arrayidx103, align 1, !tbaa !91
  %conv104 = sext i8 %103 to i32
  %tobool105 = icmp ne i32 %conv104, 0
  br i1 %tobool105, label %if.then.110, label %lor.lhs.false.106

lor.lhs.false.106:                                ; preds = %lor.lhs.false.102
  %arrayidx107 = getelementptr inbounds [33 x i8], [33 x i8]* %ucrs, i32 0, i64 0
  %104 = load i8, i8* %arrayidx107, align 1, !tbaa !91
  %conv108 = sext i8 %104 to i32
  %tobool109 = icmp ne i32 %conv108, 0
  br i1 %tobool109, label %if.then.110, label %if.end.116

if.then.110:                                      ; preds = %lor.lhs.false.106, %lor.lhs.false.102, %lor.lhs.false.98, %if.end.95
  %105 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %106 = load %struct.pdf_resource_s**, %struct.pdf_resource_s*** %ppres.addr, align 8, !tbaa !1
  %call111 = call i32 @pdf_open_gstate(%struct.gx_device_pdf_s* %105, %struct.pdf_resource_s** %106) #7
  store i32 %call111, i32* %code, align 4, !tbaa !49
  %107 = load i32, i32* %code, align 4, !tbaa !49
  %cmp112 = icmp slt i32 %107, 0
  br i1 %cmp112, label %if.then.114, label %if.end.115

if.then.114:                                      ; preds = %if.then.110
  %108 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %108, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.201

if.end.115:                                       ; preds = %if.then.110
  br label %if.end.116

if.end.116:                                       ; preds = %if.end.115, %lor.lhs.false.106
  %arrayidx117 = getelementptr inbounds [32 x i8], [32 x i8]* %hts, i32 0, i64 0
  %109 = load i8, i8* %arrayidx117, align 1, !tbaa !91
  %tobool118 = icmp ne i8 %109, 0
  br i1 %tobool118, label %if.then.119, label %if.end.127

if.then.119:                                      ; preds = %if.end.116
  %110 = load %struct.pdf_resource_s**, %struct.pdf_resource_s*** %ppres.addr, align 8, !tbaa !1
  %111 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %110, align 8, !tbaa !1
  %call120 = call %struct.cos_dict_s* @resource_dict(%struct.pdf_resource_s* %111) #7
  %arraydecay121 = getelementptr inbounds [32 x i8], [32 x i8]* %hts, i32 0, i32 0
  %call122 = call i32 @cos_dict_put_string_copy(%struct.cos_dict_s* %call120, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i32 0, i32 0), i8* %arraydecay121) #7
  store i32 %call122, i32* %code, align 4, !tbaa !49
  %112 = load i32, i32* %code, align 4, !tbaa !49
  %cmp123 = icmp slt i32 %112, 0
  br i1 %cmp123, label %if.then.125, label %if.end.126

if.then.125:                                      ; preds = %if.then.119
  %113 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %113, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.201

if.end.126:                                       ; preds = %if.then.119
  br label %if.end.127

if.end.127:                                       ; preds = %if.end.126, %if.end.116
  %arrayidx128 = getelementptr inbounds [116 x i8], [116 x i8]* %trs, i32 0, i64 0
  %114 = load i8, i8* %arrayidx128, align 1, !tbaa !91
  %tobool129 = icmp ne i8 %114, 0
  br i1 %tobool129, label %if.then.130, label %if.end.138

if.then.130:                                      ; preds = %if.end.127
  %115 = load %struct.pdf_resource_s**, %struct.pdf_resource_s*** %ppres.addr, align 8, !tbaa !1
  %116 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %115, align 8, !tbaa !1
  %call131 = call %struct.cos_dict_s* @resource_dict(%struct.pdf_resource_s* %116) #7
  %arraydecay132 = getelementptr inbounds [116 x i8], [116 x i8]* %trs, i32 0, i32 0
  %call133 = call i32 @cos_dict_put_string_copy(%struct.cos_dict_s* %call131, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.43, i32 0, i32 0), i8* %arraydecay132) #7
  store i32 %call133, i32* %code, align 4, !tbaa !49
  %117 = load i32, i32* %code, align 4, !tbaa !49
  %cmp134 = icmp slt i32 %117, 0
  br i1 %cmp134, label %if.then.136, label %if.end.137

if.then.136:                                      ; preds = %if.then.130
  %118 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %118, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.201

if.end.137:                                       ; preds = %if.then.130
  br label %if.end.138

if.end.138:                                       ; preds = %if.end.137, %if.end.127
  %arrayidx139 = getelementptr inbounds [32 x i8], [32 x i8]* %bgs, i32 0, i64 0
  %119 = load i8, i8* %arrayidx139, align 1, !tbaa !91
  %tobool140 = icmp ne i8 %119, 0
  br i1 %tobool140, label %if.then.141, label %if.end.149

if.then.141:                                      ; preds = %if.end.138
  %120 = load %struct.pdf_resource_s**, %struct.pdf_resource_s*** %ppres.addr, align 8, !tbaa !1
  %121 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %120, align 8, !tbaa !1
  %call142 = call %struct.cos_dict_s* @resource_dict(%struct.pdf_resource_s* %121) #7
  %arraydecay143 = getelementptr inbounds [32 x i8], [32 x i8]* %bgs, i32 0, i32 0
  %call144 = call i32 @cos_dict_put_string_copy(%struct.cos_dict_s* %call142, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i32 0, i32 0), i8* %arraydecay143) #7
  store i32 %call144, i32* %code, align 4, !tbaa !49
  %122 = load i32, i32* %code, align 4, !tbaa !49
  %cmp145 = icmp slt i32 %122, 0
  br i1 %cmp145, label %if.then.147, label %if.end.148

if.then.147:                                      ; preds = %if.then.141
  %123 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %123, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.201

if.end.148:                                       ; preds = %if.then.141
  br label %if.end.149

if.end.149:                                       ; preds = %if.end.148, %if.end.138
  %arrayidx150 = getelementptr inbounds [33 x i8], [33 x i8]* %ucrs, i32 0, i64 0
  %124 = load i8, i8* %arrayidx150, align 1, !tbaa !91
  %tobool151 = icmp ne i8 %124, 0
  br i1 %tobool151, label %if.then.152, label %if.end.160

if.then.152:                                      ; preds = %if.end.149
  %125 = load %struct.pdf_resource_s**, %struct.pdf_resource_s*** %ppres.addr, align 8, !tbaa !1
  %126 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %125, align 8, !tbaa !1
  %call153 = call %struct.cos_dict_s* @resource_dict(%struct.pdf_resource_s* %126) #7
  %arraydecay154 = getelementptr inbounds [33 x i8], [33 x i8]* %ucrs, i32 0, i32 0
  %call155 = call i32 @cos_dict_put_string_copy(%struct.cos_dict_s* %call153, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0), i8* %arraydecay154) #7
  store i32 %call155, i32* %code, align 4, !tbaa !49
  %127 = load i32, i32* %code, align 4, !tbaa !49
  %cmp156 = icmp slt i32 %127, 0
  br i1 %cmp156, label %if.then.158, label %if.end.159

if.then.158:                                      ; preds = %if.then.152
  %128 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %128, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.201

if.end.159:                                       ; preds = %if.then.152
  br label %if.end.160

if.end.160:                                       ; preds = %if.end.159, %if.end.149
  %129 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PDFX161 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %129, i32 0, i32 108
  %130 = load i32, i32* %PDFX161, align 4, !tbaa !210
  %tobool162 = icmp ne i32 %130, 0
  br i1 %tobool162, label %if.end.200, label %if.then.163

if.then.163:                                      ; preds = %if.end.160
  %131 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %call164 = call i32 @gs_currentscreenphase_pis(%struct.gs_imager_state_s* %131, %struct.gs_int_point_s* %phase, i32 0) #7
  %132 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %state165 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %132, i32 0, i32 51
  %call166 = call i32 @gs_currentscreenphase_pis(%struct.gs_imager_state_s* %state165, %struct.gs_int_point_s* %dev_phase, i32 0) #7
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %dev_phase, i32 0, i32 0
  %133 = load i32, i32* %x, align 4, !tbaa !214
  %x167 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase, i32 0, i32 0
  %134 = load i32, i32* %x167, align 4, !tbaa !214
  %cmp168 = icmp ne i32 %133, %134
  br i1 %cmp168, label %if.then.174, label %lor.lhs.false.170

lor.lhs.false.170:                                ; preds = %if.then.163
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %dev_phase, i32 0, i32 1
  %135 = load i32, i32* %y, align 4, !tbaa !215
  %y171 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase, i32 0, i32 1
  %136 = load i32, i32* %y171, align 4, !tbaa !215
  %cmp172 = icmp ne i32 %135, %136
  br i1 %cmp172, label %if.then.174, label %if.end.199

if.then.174:                                      ; preds = %lor.lhs.false.170, %if.then.163
  %137 = bitcast [17 x i8]* %buf175 to i8*
  call void @llvm.lifetime.start(i64 17, i8* %137) #1
  %138 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %139 = load %struct.pdf_resource_s**, %struct.pdf_resource_s*** %ppres.addr, align 8, !tbaa !1
  %call176 = call i32 @pdf_open_gstate(%struct.gx_device_pdf_s* %138, %struct.pdf_resource_s** %139) #7
  store i32 %call176, i32* %code, align 4, !tbaa !49
  %140 = load i32, i32* %code, align 4, !tbaa !49
  %cmp177 = icmp slt i32 %140, 0
  br i1 %cmp177, label %if.then.179, label %if.end.180

if.then.179:                                      ; preds = %if.then.174
  %141 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %141, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.196

if.end.180:                                       ; preds = %if.then.174
  %arraydecay181 = getelementptr inbounds [17 x i8], [17 x i8]* %buf175, i32 0, i32 0
  %x182 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase, i32 0, i32 0
  %142 = load i32, i32* %x182, align 4, !tbaa !214
  %y183 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase, i32 0, i32 1
  %143 = load i32, i32* %y183, align 4, !tbaa !215
  %call184 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay181, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i32 0, i32 0), i32 %142, i32 %143) #7
  %144 = load %struct.pdf_resource_s**, %struct.pdf_resource_s*** %ppres.addr, align 8, !tbaa !1
  %145 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %144, align 8, !tbaa !1
  %call185 = call %struct.cos_dict_s* @resource_dict(%struct.pdf_resource_s* %145) #7
  %arraydecay186 = getelementptr inbounds [17 x i8], [17 x i8]* %buf175, i32 0, i32 0
  %call187 = call i32 @cos_dict_put_string_copy(%struct.cos_dict_s* %call185, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0), i8* %arraydecay186) #7
  store i32 %call187, i32* %code, align 4, !tbaa !49
  %146 = load i32, i32* %code, align 4, !tbaa !49
  %cmp188 = icmp slt i32 %146, 0
  br i1 %cmp188, label %if.then.190, label %if.end.191

if.then.190:                                      ; preds = %if.end.180
  %147 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %147, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.196

if.end.191:                                       ; preds = %if.end.180
  %148 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %state192 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %148, i32 0, i32 51
  %x193 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase, i32 0, i32 0
  %149 = load i32, i32* %x193, align 4, !tbaa !214
  %y194 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase, i32 0, i32 1
  %150 = load i32, i32* %y194, align 4, !tbaa !215
  %call195 = call i32 @gx_imager_setscreenphase(%struct.gs_imager_state_s* %state192, i32 %149, i32 %150, i32 -1) #7
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.196

cleanup.196:                                      ; preds = %if.end.191, %if.then.190, %if.then.179
  %151 = bitcast [17 x i8]* %buf175 to i8*
  call void @llvm.lifetime.end(i64 17, i8* %151) #1
  %cleanup.dest.197 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.197, label %cleanup.201 [
    i32 0, label %cleanup.cont.198
  ]

cleanup.cont.198:                                 ; preds = %cleanup.196
  br label %if.end.199

if.end.199:                                       ; preds = %cleanup.cont.198, %lor.lhs.false.170
  br label %if.end.200

if.end.200:                                       ; preds = %if.end.199, %if.end.160
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.201

cleanup.201:                                      ; preds = %if.end.200, %cleanup.196, %if.then.158, %if.then.147, %if.then.136, %if.then.125, %if.then.114, %if.then.89, %if.then.73, %if.then.57, %if.then.43
  %152 = bitcast [33 x i8]* %ucrs to i8*
  call void @llvm.lifetime.end(i64 33, i8* %152) #1
  %153 = bitcast [32 x i8]* %bgs to i8*
  call void @llvm.lifetime.end(i64 32, i8* %153) #1
  %154 = bitcast [116 x i8]* %trs to i8*
  call void @llvm.lifetime.end(i64 116, i8* %154) #1
  %155 = bitcast [32 x i8]* %hts to i8*
  call void @llvm.lifetime.end(i64 32, i8* %155) #1
  %156 = bitcast %struct.gs_int_point_s* %dev_phase to i8*
  call void @llvm.lifetime.end(i64 8, i8* %156) #1
  %157 = bitcast %struct.gs_int_point_s* %phase to i8*
  call void @llvm.lifetime.end(i64 8, i8* %157) #1
  %cleanup.dest.207 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.207, label %cleanup.288 [
    i32 0, label %cleanup.cont.208
  ]

cleanup.cont.208:                                 ; preds = %cleanup.201
  br label %if.end.209

if.end.209:                                       ; preds = %cleanup.cont.208, %if.end.28
  %158 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %CompatibilityLevel210 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %158, i32 0, i32 75
  %159 = load double, double* %CompatibilityLevel210, align 8, !tbaa !204
  %cmp211 = fcmp oge double %159, 1.300000e+00
  br i1 %cmp211, label %land.lhs.true.213, label %if.end.287

land.lhs.true.213:                                ; preds = %if.end.209
  %160 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %sbstack_depth214 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %160, i32 0, i32 199
  %161 = load i32, i32* %sbstack_depth214, align 4, !tbaa !208
  %162 = load i32, i32* %bottom, align 4, !tbaa !49
  %cmp215 = icmp eq i32 %161, %162
  br i1 %cmp215, label %if.then.217, label %if.end.287

if.then.217:                                      ; preds = %land.lhs.true.213
  %163 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %overprint_mode = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %163, i32 0, i32 136
  %164 = load i32, i32* %overprint_mode, align 4, !tbaa !72
  %165 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %params218 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %165, i32 0, i32 73
  %OPM = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params218, i32 0, i32 10
  %166 = load i32, i32* %OPM, align 4, !tbaa !216
  %cmp219 = icmp ne i32 %164, %166
  br i1 %cmp219, label %if.then.221, label %if.end.238

if.then.221:                                      ; preds = %if.then.217
  %167 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %168 = load %struct.pdf_resource_s**, %struct.pdf_resource_s*** %ppres.addr, align 8, !tbaa !1
  %call222 = call i32 @pdf_open_gstate(%struct.gx_device_pdf_s* %167, %struct.pdf_resource_s** %168) #7
  store i32 %call222, i32* %code, align 4, !tbaa !49
  %169 = load i32, i32* %code, align 4, !tbaa !49
  %cmp223 = icmp slt i32 %169, 0
  br i1 %cmp223, label %if.then.225, label %if.end.226

if.then.225:                                      ; preds = %if.then.221
  %170 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %170, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.288

if.end.226:                                       ; preds = %if.then.221
  %171 = load %struct.pdf_resource_s**, %struct.pdf_resource_s*** %ppres.addr, align 8, !tbaa !1
  %172 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %171, align 8, !tbaa !1
  %call227 = call %struct.cos_dict_s* @resource_dict(%struct.pdf_resource_s* %172) #7
  %173 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %params228 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %173, i32 0, i32 73
  %OPM229 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params228, i32 0, i32 10
  %174 = load i32, i32* %OPM229, align 4, !tbaa !216
  %call230 = call i32 @cos_dict_put_c_key_int(%struct.cos_dict_s* %call227, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i32 0, i32 0), i32 %174) #7
  store i32 %call230, i32* %code, align 4, !tbaa !49
  %175 = load i32, i32* %code, align 4, !tbaa !49
  %cmp231 = icmp slt i32 %175, 0
  br i1 %cmp231, label %if.then.233, label %if.end.234

if.then.233:                                      ; preds = %if.end.226
  %176 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %176, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.288

if.end.234:                                       ; preds = %if.end.226
  %177 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %params235 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %177, i32 0, i32 73
  %OPM236 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params235, i32 0, i32 10
  %178 = load i32, i32* %OPM236, align 4, !tbaa !216
  %179 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %overprint_mode237 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %179, i32 0, i32 136
  store i32 %178, i32* %overprint_mode237, align 4, !tbaa !72
  br label %if.end.238

if.end.238:                                       ; preds = %if.end.234, %if.then.217
  %180 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %state239 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %180, i32 0, i32 51
  %smoothness = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %state239, i32 0, i32 32
  %181 = load float, float* %smoothness, align 4, !tbaa !74
  %182 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %smoothness240 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %182, i32 0, i32 32
  %183 = load float, float* %smoothness240, align 4, !tbaa !131
  %cmp241 = fcmp une float %181, %183
  br i1 %cmp241, label %if.then.243, label %if.end.260

if.then.243:                                      ; preds = %if.end.238
  %184 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %185 = load %struct.pdf_resource_s**, %struct.pdf_resource_s*** %ppres.addr, align 8, !tbaa !1
  %call244 = call i32 @pdf_open_gstate(%struct.gx_device_pdf_s* %184, %struct.pdf_resource_s** %185) #7
  store i32 %call244, i32* %code, align 4, !tbaa !49
  %186 = load i32, i32* %code, align 4, !tbaa !49
  %cmp245 = icmp slt i32 %186, 0
  br i1 %cmp245, label %if.then.247, label %if.end.248

if.then.247:                                      ; preds = %if.then.243
  %187 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %187, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.288

if.end.248:                                       ; preds = %if.then.243
  %188 = load %struct.pdf_resource_s**, %struct.pdf_resource_s*** %ppres.addr, align 8, !tbaa !1
  %189 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %188, align 8, !tbaa !1
  %call249 = call %struct.cos_dict_s* @resource_dict(%struct.pdf_resource_s* %189) #7
  %190 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %smoothness250 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %190, i32 0, i32 32
  %191 = load float, float* %smoothness250, align 4, !tbaa !131
  %conv251 = fpext float %191 to double
  %call252 = call i32 @cos_dict_put_c_key_real(%struct.cos_dict_s* %call249, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.49, i32 0, i32 0), double %conv251) #7
  store i32 %call252, i32* %code, align 4, !tbaa !49
  %192 = load i32, i32* %code, align 4, !tbaa !49
  %cmp253 = icmp slt i32 %192, 0
  br i1 %cmp253, label %if.then.255, label %if.end.256

if.then.255:                                      ; preds = %if.end.248
  %193 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %193, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.288

if.end.256:                                       ; preds = %if.end.248
  %194 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %smoothness257 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %194, i32 0, i32 32
  %195 = load float, float* %smoothness257, align 4, !tbaa !131
  %196 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %state258 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %196, i32 0, i32 51
  %smoothness259 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %state258, i32 0, i32 32
  store float %195, float* %smoothness259, align 4, !tbaa !74
  br label %if.end.260

if.end.260:                                       ; preds = %if.end.256, %if.end.238
  %197 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %CompatibilityLevel261 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %197, i32 0, i32 75
  %198 = load double, double* %CompatibilityLevel261, align 8, !tbaa !204
  %cmp262 = fcmp oge double %198, 1.400000e+00
  br i1 %cmp262, label %if.then.264, label %if.end.286

if.then.264:                                      ; preds = %if.end.260
  %199 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %state265 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %199, i32 0, i32 51
  %text_knockout = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %state265, i32 0, i32 17
  %200 = load i32, i32* %text_knockout, align 4, !tbaa !78
  %201 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %text_knockout266 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %201, i32 0, i32 17
  %202 = load i32, i32* %text_knockout266, align 4, !tbaa !132
  %cmp267 = icmp ne i32 %200, %202
  br i1 %cmp267, label %if.then.269, label %if.end.285

if.then.269:                                      ; preds = %if.then.264
  %203 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %204 = load %struct.pdf_resource_s**, %struct.pdf_resource_s*** %ppres.addr, align 8, !tbaa !1
  %call270 = call i32 @pdf_open_gstate(%struct.gx_device_pdf_s* %203, %struct.pdf_resource_s** %204) #7
  store i32 %call270, i32* %code, align 4, !tbaa !49
  %205 = load i32, i32* %code, align 4, !tbaa !49
  %cmp271 = icmp slt i32 %205, 0
  br i1 %cmp271, label %if.then.273, label %if.end.274

if.then.273:                                      ; preds = %if.then.269
  %206 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %206, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.288

if.end.274:                                       ; preds = %if.then.269
  %207 = load %struct.pdf_resource_s**, %struct.pdf_resource_s*** %ppres.addr, align 8, !tbaa !1
  %208 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %207, align 8, !tbaa !1
  %call275 = call %struct.cos_dict_s* @resource_dict(%struct.pdf_resource_s* %208) #7
  %209 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %text_knockout276 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %209, i32 0, i32 17
  %210 = load i32, i32* %text_knockout276, align 4, !tbaa !132
  %call277 = call i32 @cos_dict_put_c_key_bool(%struct.cos_dict_s* %call275, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i32 0, i32 0), i32 %210) #7
  store i32 %call277, i32* %code, align 4, !tbaa !49
  %211 = load i32, i32* %code, align 4, !tbaa !49
  %cmp278 = icmp slt i32 %211, 0
  br i1 %cmp278, label %if.then.280, label %if.end.281

if.then.280:                                      ; preds = %if.end.274
  %212 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %212, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.288

if.end.281:                                       ; preds = %if.end.274
  %213 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %text_knockout282 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %213, i32 0, i32 17
  %214 = load i32, i32* %text_knockout282, align 4, !tbaa !132
  %215 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %state283 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %215, i32 0, i32 51
  %text_knockout284 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %state283, i32 0, i32 17
  store i32 %214, i32* %text_knockout284, align 4, !tbaa !78
  br label %if.end.285

if.end.285:                                       ; preds = %if.end.281, %if.then.264
  br label %if.end.286

if.end.286:                                       ; preds = %if.end.285, %if.end.260
  br label %if.end.287

if.end.287:                                       ; preds = %if.end.286, %land.lhs.true.213, %if.end.209
  %216 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %216, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.288

cleanup.288:                                      ; preds = %if.end.287, %if.then.280, %if.then.273, %if.then.255, %if.then.247, %if.then.233, %if.then.225, %cleanup.201, %if.then.26, %if.then.21, %cleanup
  %217 = bitcast i32* %bottom to i8*
  call void @llvm.lifetime.end(i64 4, i8* %217) #1
  %218 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %218) #1
  %219 = load i32, i32* %retval
  ret i32 %219
}

; Function Attrs: nounwind uwtable
define internal i32 @pdf_open_gstate(%struct.gx_device_pdf_s* %pdev, %struct.pdf_resource_s** %ppres) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %ppres.addr = alloca %struct.pdf_resource_s**, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.pdf_resource_s** %ppres, %struct.pdf_resource_s*** %ppres.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.pdf_resource_s**, %struct.pdf_resource_s*** %ppres.addr, align 8, !tbaa !1
  %2 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %1, align 8, !tbaa !1
  %tobool = icmp ne %struct.pdf_resource_s* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %context = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %3, i32 0, i32 156
  %4 = load i32, i32* %context, align 4, !tbaa !217
  %cmp = icmp ne i32 %4, 1
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  store i32 -6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.2:                                         ; preds = %if.end
  %5 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %6 = load %struct.pdf_resource_s**, %struct.pdf_resource_s*** %ppres.addr, align 8, !tbaa !1
  %call = call i32 @pdf_alloc_resource(%struct.gx_device_pdf_s* %5, i32 1, i64 0, %struct.pdf_resource_s** %6, i64 -1) #7
  store i32 %call, i32* %code, align 4, !tbaa !49
  %7 = load i32, i32* %code, align 4, !tbaa !49
  %cmp3 = icmp slt i32 %7, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end.2
  %8 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end.2
  %9 = load %struct.pdf_resource_s**, %struct.pdf_resource_s*** %ppres.addr, align 8, !tbaa !1
  %10 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %9, align 8, !tbaa !1
  %object = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %10, i32 0, i32 7
  %11 = load %struct.cos_object_s*, %struct.cos_object_s** %object, align 8, !tbaa !161
  %call6 = call i32 @cos_become(%struct.cos_object_s* %11, %struct.cos_object_procs_s* @cos_dict_procs) #7
  %12 = load %struct.pdf_resource_s**, %struct.pdf_resource_s*** %ppres.addr, align 8, !tbaa !1
  %13 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %12, align 8, !tbaa !1
  %call7 = call %struct.cos_dict_s* @resource_dict(%struct.pdf_resource_s* %13) #7
  %call8 = call i32 @cos_dict_put_c_key_string(%struct.cos_dict_s* %call7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i32 0, i32 0), i32 10) #7
  store i32 %call8, i32* %code, align 4, !tbaa !49
  %14 = load i32, i32* %code, align 4, !tbaa !49
  %cmp9 = icmp slt i32 %14, 0
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.5
  %15 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %if.end.5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.11, %if.then.10, %if.then.4, %if.then.1, %if.then
  %16 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #1
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #2

declare i32 @cos_dict_put_string_copy(%struct.cos_dict_s*, i8*, i8*) #3

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.cos_dict_s* @resource_dict(%struct.pdf_resource_s* %pres) #4 {
entry:
  %pres.addr = alloca %struct.pdf_resource_s*, align 8
  store %struct.pdf_resource_s* %pres, %struct.pdf_resource_s** %pres.addr, align 8, !tbaa !1
  %0 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres.addr, align 8, !tbaa !1
  %object = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %0, i32 0, i32 7
  %1 = load %struct.cos_object_s*, %struct.cos_object_s** %object, align 8, !tbaa !161
  %2 = bitcast %struct.cos_object_s* %1 to %struct.cos_dict_s*
  ret %struct.cos_dict_s* %2
}

; Function Attrs: nounwind uwtable
define internal i32 @pdf_update_alpha(%struct.gx_device_pdf_s* %pdev, %struct.gs_imager_state_s* %pis, %struct.pdf_resource_s** %ppres) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %ppres.addr = alloca %struct.pdf_resource_s**, align 8
  %ais = alloca i32, align 4
  %alpha = alloca double, align 8
  %code = alloca i32, align 4
  %buf = alloca [20 x i8], align 16
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.pdf_resource_s** %ppres, %struct.pdf_resource_s*** %ppres.addr, align 8, !tbaa !1
  %0 = bitcast i32* %ais to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast double* %alpha to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %state = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %3, i32 0, i32 51
  %soft_mask_id = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %state, i32 0, i32 16
  %4 = load i64, i64* %soft_mask_id, align 8, !tbaa !218
  %5 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %soft_mask_id1 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %5, i32 0, i32 16
  %6 = load i64, i64* %soft_mask_id1, align 8, !tbaa !219
  %cmp = icmp ne i64 %4, %6
  br i1 %cmp, label %if.then, label %if.end.24

if.then:                                          ; preds = %entry
  %7 = bitcast [20 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 20, i8* %7) #1
  %8 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %soft_mask_id2 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %8, i32 0, i32 16
  %9 = load i64, i64* %soft_mask_id2, align 8, !tbaa !219
  %cmp3 = icmp eq i64 %9, 0
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i32 0, i32 0
  %call = call i8* @strcpy(i8* %arraydecay, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.57, i32 0, i32 0)) #8
  br label %if.end

if.else:                                          ; preds = %if.then
  %arraydecay5 = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i32 0, i32 0
  %10 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %soft_mask_id6 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %10, i32 0, i32 16
  %11 = load i64, i64* %soft_mask_id6, align 8, !tbaa !219
  %call7 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.58, i32 0, i32 0), i64 %11) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  %12 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %13 = load %struct.pdf_resource_s**, %struct.pdf_resource_s*** %ppres.addr, align 8, !tbaa !1
  %call8 = call i32 @pdf_open_gstate(%struct.gx_device_pdf_s* %12, %struct.pdf_resource_s** %13) #7
  store i32 %call8, i32* %code, align 4, !tbaa !49
  %14 = load i32, i32* %code, align 4, !tbaa !49
  %cmp9 = icmp slt i32 %14, 0
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end
  %15 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %if.end
  %16 = load %struct.pdf_resource_s**, %struct.pdf_resource_s*** %ppres.addr, align 8, !tbaa !1
  %17 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %16, align 8, !tbaa !1
  %call12 = call %struct.cos_dict_s* @resource_dict(%struct.pdf_resource_s* %17) #7
  %arraydecay13 = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i32 0, i32 0
  %arraydecay14 = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i32 0, i32 0
  %call15 = call i64 @strlen(i8* %arraydecay14) #9
  %conv = trunc i64 %call15 to i32
  %call16 = call i32 @cos_dict_put_c_key_string(%struct.cos_dict_s* %call12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i32 0, i32 0), i8* %arraydecay13, i32 %conv) #7
  store i32 %call16, i32* %code, align 4, !tbaa !49
  %18 = load i32, i32* %code, align 4, !tbaa !49
  %cmp17 = icmp slt i32 %18, 0
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.11
  %19 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %19, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.20:                                        ; preds = %if.end.11
  %20 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %soft_mask_id21 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %20, i32 0, i32 16
  %21 = load i64, i64* %soft_mask_id21, align 8, !tbaa !219
  %22 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %state22 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %22, i32 0, i32 51
  %soft_mask_id23 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %state22, i32 0, i32 16
  store i64 %21, i64* %soft_mask_id23, align 8, !tbaa !218
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.20, %if.then.19, %if.then.10
  %23 = bitcast [20 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 20, i8* %23) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.83 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.24

if.end.24:                                        ; preds = %cleanup.cont, %entry
  %24 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %state25 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %24, i32 0, i32 51
  %opacity = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %state25, i32 0, i32 13
  %alpha26 = getelementptr inbounds %struct.gs_transparency_source_s, %struct.gs_transparency_source_s* %opacity, i32 0, i32 0
  %25 = load float, float* %alpha26, align 4, !tbaa !60
  %26 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %opacity27 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %26, i32 0, i32 13
  %alpha28 = getelementptr inbounds %struct.gs_transparency_source_s, %struct.gs_transparency_source_s* %opacity27, i32 0, i32 0
  %27 = load float, float* %alpha28, align 4, !tbaa !119
  %cmp29 = fcmp une float %25, %27
  br i1 %cmp29, label %if.then.31, label %if.else.46

if.then.31:                                       ; preds = %if.end.24
  %28 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %state32 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %28, i32 0, i32 51
  %shape = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %state32, i32 0, i32 14
  %alpha33 = getelementptr inbounds %struct.gs_transparency_source_s, %struct.gs_transparency_source_s* %shape, i32 0, i32 0
  %29 = load float, float* %alpha33, align 4, !tbaa !62
  %30 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %shape34 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %30, i32 0, i32 14
  %alpha35 = getelementptr inbounds %struct.gs_transparency_source_s, %struct.gs_transparency_source_s* %shape34, i32 0, i32 0
  %31 = load float, float* %alpha35, align 4, !tbaa !120
  %cmp36 = fcmp une float %29, %31
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.then.31
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.83

if.end.39:                                        ; preds = %if.then.31
  store i32 0, i32* %ais, align 4, !tbaa !49
  %32 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %opacity40 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %32, i32 0, i32 13
  %alpha41 = getelementptr inbounds %struct.gs_transparency_source_s, %struct.gs_transparency_source_s* %opacity40, i32 0, i32 0
  %33 = load float, float* %alpha41, align 4, !tbaa !119
  %34 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %state42 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %34, i32 0, i32 51
  %opacity43 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %state42, i32 0, i32 13
  %alpha44 = getelementptr inbounds %struct.gs_transparency_source_s, %struct.gs_transparency_source_s* %opacity43, i32 0, i32 0
  store float %33, float* %alpha44, align 4, !tbaa !60
  %conv45 = fpext float %33 to double
  store double %conv45, double* %alpha, align 8, !tbaa !220
  br label %if.end.63

if.else.46:                                       ; preds = %if.end.24
  %35 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %state47 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %35, i32 0, i32 51
  %shape48 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %state47, i32 0, i32 14
  %alpha49 = getelementptr inbounds %struct.gs_transparency_source_s, %struct.gs_transparency_source_s* %shape48, i32 0, i32 0
  %36 = load float, float* %alpha49, align 4, !tbaa !62
  %37 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %shape50 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %37, i32 0, i32 14
  %alpha51 = getelementptr inbounds %struct.gs_transparency_source_s, %struct.gs_transparency_source_s* %shape50, i32 0, i32 0
  %38 = load float, float* %alpha51, align 4, !tbaa !120
  %cmp52 = fcmp une float %36, %38
  br i1 %cmp52, label %if.then.54, label %if.else.61

if.then.54:                                       ; preds = %if.else.46
  store i32 1, i32* %ais, align 4, !tbaa !49
  %39 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %shape55 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %39, i32 0, i32 14
  %alpha56 = getelementptr inbounds %struct.gs_transparency_source_s, %struct.gs_transparency_source_s* %shape55, i32 0, i32 0
  %40 = load float, float* %alpha56, align 4, !tbaa !120
  %41 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %state57 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %41, i32 0, i32 51
  %shape58 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %state57, i32 0, i32 14
  %alpha59 = getelementptr inbounds %struct.gs_transparency_source_s, %struct.gs_transparency_source_s* %shape58, i32 0, i32 0
  store float %40, float* %alpha59, align 4, !tbaa !62
  %conv60 = fpext float %40 to double
  store double %conv60, double* %alpha, align 8, !tbaa !220
  br label %if.end.62

if.else.61:                                       ; preds = %if.else.46
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.83

if.end.62:                                        ; preds = %if.then.54
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %if.end.39
  %42 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %43 = load %struct.pdf_resource_s**, %struct.pdf_resource_s*** %ppres.addr, align 8, !tbaa !1
  %call64 = call i32 @pdf_open_gstate(%struct.gx_device_pdf_s* %42, %struct.pdf_resource_s** %43) #7
  store i32 %call64, i32* %code, align 4, !tbaa !49
  %44 = load i32, i32* %code, align 4, !tbaa !49
  %cmp65 = icmp slt i32 %44, 0
  br i1 %cmp65, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %if.end.63
  %45 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %45, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.83

if.end.68:                                        ; preds = %if.end.63
  %46 = load %struct.pdf_resource_s**, %struct.pdf_resource_s*** %ppres.addr, align 8, !tbaa !1
  %47 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %46, align 8, !tbaa !1
  %call69 = call %struct.cos_dict_s* @resource_dict(%struct.pdf_resource_s* %47) #7
  %48 = load i32, i32* %ais, align 4, !tbaa !49
  %call70 = call i32 @cos_dict_put_c_key_bool(%struct.cos_dict_s* %call69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i32 0, i32 0), i32 %48) #7
  store i32 %call70, i32* %code, align 4, !tbaa !49
  %49 = load i32, i32* %code, align 4, !tbaa !49
  %cmp71 = icmp slt i32 %49, 0
  br i1 %cmp71, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %if.end.68
  %50 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %50, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.83

if.end.74:                                        ; preds = %if.end.68
  %51 = load %struct.pdf_resource_s**, %struct.pdf_resource_s*** %ppres.addr, align 8, !tbaa !1
  %52 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %51, align 8, !tbaa !1
  %call75 = call %struct.cos_dict_s* @resource_dict(%struct.pdf_resource_s* %52) #7
  %53 = load double, double* %alpha, align 8, !tbaa !220
  %call76 = call i32 @cos_dict_put_c_key_real(%struct.cos_dict_s* %call75, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.61, i32 0, i32 0), double %53) #7
  store i32 %call76, i32* %code, align 4, !tbaa !49
  %54 = load i32, i32* %code, align 4, !tbaa !49
  %cmp77 = icmp slt i32 %54, 0
  br i1 %cmp77, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %if.end.74
  %55 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %55, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.83

if.end.80:                                        ; preds = %if.end.74
  %56 = load %struct.pdf_resource_s**, %struct.pdf_resource_s*** %ppres.addr, align 8, !tbaa !1
  %57 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %56, align 8, !tbaa !1
  %call81 = call %struct.cos_dict_s* @resource_dict(%struct.pdf_resource_s* %57) #7
  %58 = load double, double* %alpha, align 8, !tbaa !220
  %call82 = call i32 @cos_dict_put_c_key_real(%struct.cos_dict_s* %call81, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.62, i32 0, i32 0), double %58) #7
  store i32 %call82, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.83

cleanup.83:                                       ; preds = %if.end.80, %if.then.79, %if.then.73, %if.then.67, %if.else.61, %if.then.38, %cleanup
  %59 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #1
  %60 = bitcast double* %alpha to i8*
  call void @llvm.lifetime.end(i64 8, i8* %60) #1
  %61 = bitcast i32* %ais to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #1
  %62 = load i32, i32* %retval
  ret i32 %62
}

; Function Attrs: nounwind uwtable
define internal i32 @pdf_update_halftone(%struct.gx_device_pdf_s* %pdev, %struct.gs_imager_state_s* %pis, i8* %hts) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %hts.addr = alloca i8*, align 8
  %pht = alloca %struct.gs_halftone_s*, align 8
  %pdht = alloca %struct.gx_device_halftone_s*, align 8
  %code = alloca i32, align 4
  %id = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store i8* %hts, i8** %hts.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_halftone_s** %pht to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %halftone = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %1, i32 0, i32 39
  %2 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %halftone, align 8, !tbaa !221
  store %struct.gs_halftone_s* %2, %struct.gs_halftone_s** %pht, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_halftone_s** %pdht to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %dev_ht = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %4, i32 0, i32 41
  %5 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %dev_ht, align 8, !tbaa !122
  store %struct.gx_device_halftone_s* %5, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i64* %id to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %pht, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %8, i32 0, i32 0
  %9 = load i32, i32* %type, align 4, !tbaa !222
  switch i32 %9, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.1
    i32 3, label %sw.bb.4
    i32 4, label %sw.bb.10
    i32 5, label %sw.bb.16
    i32 6, label %sw.bb.22
    i32 7, label %sw.bb.22
  ]

sw.bb:                                            ; preds = %entry
  %10 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %11 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %pht, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %11, i32 0, i32 2
  %screen = bitcast %union.anon.7* %params to %struct.gs_screen_halftone_s*
  %12 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  %components = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %12, i32 0, i32 4
  %13 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %components, align 8, !tbaa !224
  %arrayidx = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %13, i64 0
  %corder = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %arrayidx, i32 0, i32 0
  %call = call i32 @pdf_write_screen_halftone(%struct.gx_device_pdf_s* %10, %struct.gs_screen_halftone_s* %screen, %struct.gx_ht_order_s* %corder, i64* %id) #7
  store i32 %call, i32* %code, align 4, !tbaa !49
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %14 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %15 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %pht, align 8, !tbaa !1
  %params2 = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %15, i32 0, i32 2
  %colorscreen = bitcast %union.anon.7* %params2 to %struct.gs_colorscreen_halftone_s*
  %16 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  %call3 = call i32 @pdf_write_colorscreen_halftone(%struct.gx_device_pdf_s* %14, %struct.gs_colorscreen_halftone_s* %colorscreen, %struct.gx_device_halftone_s* %16, i64* %id) #7
  store i32 %call3, i32* %code, align 4, !tbaa !49
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %17 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %18 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %pht, align 8, !tbaa !1
  %params5 = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %18, i32 0, i32 2
  %spot = bitcast %union.anon.7* %params5 to %struct.gs_spot_halftone_s*
  %19 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  %components6 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %19, i32 0, i32 4
  %20 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %components6, align 8, !tbaa !224
  %arrayidx7 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %20, i64 0
  %corder8 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %arrayidx7, i32 0, i32 0
  %call9 = call i32 @pdf_write_spot_halftone(%struct.gx_device_pdf_s* %17, %struct.gs_spot_halftone_s* %spot, %struct.gx_ht_order_s* %corder8, i64* %id) #7
  store i32 %call9, i32* %code, align 4, !tbaa !49
  br label %sw.epilog

sw.bb.10:                                         ; preds = %entry
  %21 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %22 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %pht, align 8, !tbaa !1
  %params11 = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %22, i32 0, i32 2
  %threshold = bitcast %union.anon.7* %params11 to %struct.gs_threshold_halftone_s*
  %23 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  %components12 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %23, i32 0, i32 4
  %24 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %components12, align 8, !tbaa !224
  %arrayidx13 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %24, i64 0
  %corder14 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %arrayidx13, i32 0, i32 0
  %call15 = call i32 @pdf_write_threshold_halftone(%struct.gx_device_pdf_s* %21, %struct.gs_threshold_halftone_s* %threshold, %struct.gx_ht_order_s* %corder14, i64* %id) #7
  store i32 %call15, i32* %code, align 4, !tbaa !49
  br label %sw.epilog

sw.bb.16:                                         ; preds = %entry
  %25 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %26 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %pht, align 8, !tbaa !1
  %params17 = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %26, i32 0, i32 2
  %threshold2 = bitcast %union.anon.7* %params17 to %struct.gs_threshold2_halftone_s*
  %27 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  %components18 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %27, i32 0, i32 4
  %28 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %components18, align 8, !tbaa !224
  %arrayidx19 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %28, i64 0
  %corder20 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %arrayidx19, i32 0, i32 0
  %call21 = call i32 @pdf_write_threshold2_halftone(%struct.gx_device_pdf_s* %25, %struct.gs_threshold2_halftone_s* %threshold2, %struct.gx_ht_order_s* %corder20, i64* %id) #7
  store i32 %call21, i32* %code, align 4, !tbaa !49
  br label %sw.epilog

sw.bb.22:                                         ; preds = %entry, %entry
  %29 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %30 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %pht, align 8, !tbaa !1
  %params23 = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %30, i32 0, i32 2
  %multiple = bitcast %union.anon.7* %params23 to %struct.gs_multiple_halftone_s*
  %31 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  %call24 = call i32 @pdf_write_multiple_halftone(%struct.gx_device_pdf_s* %29, %struct.gs_multiple_halftone_s* %multiple, %struct.gx_device_halftone_s* %31, i64* %id) #7
  store i32 %call24, i32* %code, align 4, !tbaa !49
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb.22, %sw.bb.16, %sw.bb.10, %sw.bb.4, %sw.bb.1, %sw.bb
  %32 = load i32, i32* %code, align 4, !tbaa !49
  %cmp = icmp slt i32 %32, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog
  %33 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %33, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  %34 = load i8*, i8** %hts.addr, align 8, !tbaa !1
  %35 = load i64, i64* %id, align 8, !tbaa !57
  %call25 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.58, i32 0, i32 0), i64 %35) #7
  %36 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %dev_ht26 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %36, i32 0, i32 41
  %37 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %dev_ht26, align 8, !tbaa !122
  %id27 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %37, i32 0, i32 2
  %38 = load i64, i64* %id27, align 8, !tbaa !123
  %39 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %halftone_id = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %39, i32 0, i32 137
  store i64 %38, i64* %halftone_id, align 8, !tbaa !66
  %40 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %40, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then, %sw.default
  %41 = bitcast i64* %id to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  %42 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #1
  %43 = bitcast %struct.gx_device_halftone_s** %pdht to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #1
  %44 = bitcast %struct.gs_halftone_s** %pht to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #1
  %45 = load i32, i32* %retval
  ret i32 %45
}

; Function Attrs: nounwind uwtable
define internal i32 @pdf_update_transfer(%struct.gx_device_pdf_s* %pdev, %struct.gs_imager_state_s* %pis, i8* %trs) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %trs.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %pi = alloca i32, align 4
  %multiple = alloca i32, align 4
  %update = alloca i32, align 4
  %transfer_ids = alloca [4 x i64], align 16
  %code = alloca i32, align 4
  %tm = alloca [4 x %struct.gx_transfer_map_s*], align 16
  %mask = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store i8* %trs, i8** %trs.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %pi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 -1, i32* %pi, align 4, !tbaa !49
  %2 = bitcast i32* %multiple to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 0, i32* %multiple, align 4, !tbaa !49
  %3 = bitcast i32* %update to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %update, align 4, !tbaa !49
  %4 = bitcast [4 x i64]* %transfer_ids to i8*
  call void @llvm.lifetime.start(i64 32, i8* %4) #1
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 0, i32* %code, align 4, !tbaa !49
  %6 = bitcast [4 x %struct.gx_transfer_map_s*]* %tm to i8*
  call void @llvm.lifetime.start(i64 32, i8* %6) #1
  %7 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %7, i32 0, i32 46
  %red = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer, i32 0, i32 1
  %8 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %red, align 8, !tbaa !111
  %arrayidx = getelementptr inbounds [4 x %struct.gx_transfer_map_s*], [4 x %struct.gx_transfer_map_s*]* %tm, i32 0, i64 0
  store %struct.gx_transfer_map_s* %8, %struct.gx_transfer_map_s** %arrayidx, align 8, !tbaa !1
  %9 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer1 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %9, i32 0, i32 46
  %green = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer1, i32 0, i32 3
  %10 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %green, align 8, !tbaa !115
  %arrayidx2 = getelementptr inbounds [4 x %struct.gx_transfer_map_s*], [4 x %struct.gx_transfer_map_s*]* %tm, i32 0, i64 1
  store %struct.gx_transfer_map_s* %10, %struct.gx_transfer_map_s** %arrayidx2, align 8, !tbaa !1
  %11 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer3 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %11, i32 0, i32 46
  %blue = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer3, i32 0, i32 5
  %12 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %blue, align 8, !tbaa !116
  %arrayidx4 = getelementptr inbounds [4 x %struct.gx_transfer_map_s*], [4 x %struct.gx_transfer_map_s*]* %tm, i32 0, i64 2
  store %struct.gx_transfer_map_s* %12, %struct.gx_transfer_map_s** %arrayidx4, align 8, !tbaa !1
  %13 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer5 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %13, i32 0, i32 46
  %gray = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer5, i32 0, i32 7
  %14 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %gray, align 8, !tbaa !117
  %arrayidx6 = getelementptr inbounds [4 x %struct.gx_transfer_map_s*], [4 x %struct.gx_transfer_map_s*]* %tm, i32 0, i64 3
  store %struct.gx_transfer_map_s* %14, %struct.gx_transfer_map_s** %arrayidx6, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !49
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %15 = load i32, i32* %i, align 4, !tbaa !49
  %cmp = icmp slt i32 %15, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %i, align 4, !tbaa !49
  %idxprom = sext i32 %16 to i64
  %arrayidx7 = getelementptr inbounds [4 x %struct.gx_transfer_map_s*], [4 x %struct.gx_transfer_map_s*]* %tm, i32 0, i64 %idxprom
  %17 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx7, align 8, !tbaa !1
  %cmp8 = icmp ne %struct.gx_transfer_map_s* %17, null
  br i1 %cmp8, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4, !tbaa !49
  %idxprom9 = sext i32 %18 to i64
  %arrayidx10 = getelementptr inbounds [4 x %struct.gx_transfer_map_s*], [4 x %struct.gx_transfer_map_s*]* %tm, i32 0, i64 %idxprom9
  %19 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx10, align 8, !tbaa !1
  %id = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %19, i32 0, i32 3
  %20 = load i64, i64* %id, align 8, !tbaa !118
  %21 = load i32, i32* %i, align 4, !tbaa !49
  %idxprom11 = sext i32 %21 to i64
  %arrayidx12 = getelementptr inbounds [4 x i64], [4 x i64]* %transfer_ids, i32 0, i64 %idxprom11
  store i64 %20, i64* %arrayidx12, align 8, !tbaa !57
  %22 = load i32, i32* %i, align 4, !tbaa !49
  %idxprom13 = sext i32 %22 to i64
  %23 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %transfer_ids14 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %23, i32 0, i32 138
  %arrayidx15 = getelementptr inbounds [4 x i64], [4 x i64]* %transfer_ids14, i32 0, i64 %idxprom13
  %24 = load i64, i64* %arrayidx15, align 8, !tbaa !57
  %25 = load i32, i32* %i, align 4, !tbaa !49
  %idxprom16 = sext i32 %25 to i64
  %arrayidx17 = getelementptr inbounds [4 x %struct.gx_transfer_map_s*], [4 x %struct.gx_transfer_map_s*]* %tm, i32 0, i64 %idxprom16
  %26 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx17, align 8, !tbaa !1
  %id18 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %26, i32 0, i32 3
  %27 = load i64, i64* %id18, align 8, !tbaa !118
  %cmp19 = icmp ne i64 %24, %27
  br i1 %cmp19, label %if.then.20, label %if.end

if.then.20:                                       ; preds = %if.then
  store i32 1, i32* %update, align 4, !tbaa !49
  br label %if.end

if.end:                                           ; preds = %if.then.20, %if.then
  %28 = load i32, i32* %pi, align 4, !tbaa !49
  %cmp21 = icmp ne i32 %28, -1
  br i1 %cmp21, label %land.lhs.true, label %if.end.28

land.lhs.true:                                    ; preds = %if.end
  %29 = load i32, i32* %i, align 4, !tbaa !49
  %idxprom22 = sext i32 %29 to i64
  %arrayidx23 = getelementptr inbounds [4 x i64], [4 x i64]* %transfer_ids, i32 0, i64 %idxprom22
  %30 = load i64, i64* %arrayidx23, align 8, !tbaa !57
  %31 = load i32, i32* %pi, align 4, !tbaa !49
  %idxprom24 = sext i32 %31 to i64
  %arrayidx25 = getelementptr inbounds [4 x i64], [4 x i64]* %transfer_ids, i32 0, i64 %idxprom24
  %32 = load i64, i64* %arrayidx25, align 8, !tbaa !57
  %cmp26 = icmp ne i64 %30, %32
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %land.lhs.true
  store i32 1, i32* %multiple, align 4, !tbaa !49
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %land.lhs.true, %if.end
  %33 = load i32, i32* %i, align 4, !tbaa !49
  store i32 %33, i32* %pi, align 4, !tbaa !49
  br label %if.end.31

if.else:                                          ; preds = %for.body
  %34 = load i32, i32* %i, align 4, !tbaa !49
  %idxprom29 = sext i32 %34 to i64
  %arrayidx30 = getelementptr inbounds [4 x i64], [4 x i64]* %transfer_ids, i32 0, i64 %idxprom29
  store i64 -1, i64* %arrayidx30, align 8, !tbaa !57
  br label %if.end.31

if.end.31:                                        ; preds = %if.else, %if.end.28
  br label %for.inc

for.inc:                                          ; preds = %if.end.31
  %35 = load i32, i32* %i, align 4, !tbaa !49
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* %i, align 4, !tbaa !49
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %36 = load i32, i32* %update, align 4, !tbaa !49
  %tobool = icmp ne i32 %36, 0
  br i1 %tobool, label %if.then.32, label %if.end.71

if.then.32:                                       ; preds = %for.end
  %37 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %37) #1
  %38 = load i32, i32* %multiple, align 4, !tbaa !49
  %tobool33 = icmp ne i32 %38, 0
  br i1 %tobool33, label %if.else.41, label %if.then.34

if.then.34:                                       ; preds = %if.then.32
  %39 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %40 = load i32, i32* %pi, align 4, !tbaa !49
  %idxprom35 = sext i32 %40 to i64
  %arrayidx36 = getelementptr inbounds [4 x %struct.gx_transfer_map_s*], [4 x %struct.gx_transfer_map_s*]* %tm, i32 0, i64 %idxprom35
  %41 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx36, align 8, !tbaa !1
  %42 = load i8*, i8** %trs.addr, align 8, !tbaa !1
  %call = call i32 @pdf_write_transfer(%struct.gx_device_pdf_s* %39, %struct.gx_transfer_map_s* %41, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.41, i32 0, i32 0), i8* %42) #7
  store i32 %call, i32* %code, align 4, !tbaa !49
  %43 = load i32, i32* %code, align 4, !tbaa !49
  %cmp37 = icmp slt i32 %43, 0
  br i1 %cmp37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.then.34
  %44 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %44, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.39:                                        ; preds = %if.then.34
  %45 = load i32, i32* %code, align 4, !tbaa !49
  %cmp40 = icmp eq i32 %45, 0
  %conv = zext i1 %cmp40 to i32
  store i32 %conv, i32* %mask, align 4, !tbaa !49
  br label %if.end.67

if.else.41:                                       ; preds = %if.then.32
  %46 = load i8*, i8** %trs.addr, align 8, !tbaa !1
  %call42 = call i8* @strcpy(i8* %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.108, i32 0, i32 0)) #8
  store i32 0, i32* %mask, align 4, !tbaa !49
  store i32 0, i32* %i, align 4, !tbaa !49
  br label %for.cond.43

for.cond.43:                                      ; preds = %for.inc.63, %if.else.41
  %47 = load i32, i32* %i, align 4, !tbaa !49
  %cmp44 = icmp slt i32 %47, 4
  br i1 %cmp44, label %for.body.46, label %for.end.65

for.body.46:                                      ; preds = %for.cond.43
  %48 = load i32, i32* %i, align 4, !tbaa !49
  %idxprom47 = sext i32 %48 to i64
  %arrayidx48 = getelementptr inbounds [4 x %struct.gx_transfer_map_s*], [4 x %struct.gx_transfer_map_s*]* %tm, i32 0, i64 %idxprom47
  %49 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx48, align 8, !tbaa !1
  %cmp49 = icmp ne %struct.gx_transfer_map_s* %49, null
  br i1 %cmp49, label %if.then.51, label %if.end.62

if.then.51:                                       ; preds = %for.body.46
  %50 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %51 = load i32, i32* %i, align 4, !tbaa !49
  %idxprom52 = sext i32 %51 to i64
  %arrayidx53 = getelementptr inbounds [4 x %struct.gx_transfer_map_s*], [4 x %struct.gx_transfer_map_s*]* %tm, i32 0, i64 %idxprom52
  %52 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %arrayidx53, align 8, !tbaa !1
  %53 = load i8*, i8** %trs.addr, align 8, !tbaa !1
  %54 = load i8*, i8** %trs.addr, align 8, !tbaa !1
  %call54 = call i64 @strlen(i8* %54) #9
  %add.ptr = getelementptr inbounds i8, i8* %53, i64 %call54
  %call55 = call i32 @pdf_write_transfer_map(%struct.gx_device_pdf_s* %50, %struct.gx_transfer_map_s* %52, i32 0, i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.109, i32 0, i32 0), i8* %add.ptr) #7
  store i32 %call55, i32* %code, align 4, !tbaa !49
  %55 = load i32, i32* %code, align 4, !tbaa !49
  %cmp56 = icmp slt i32 %55, 0
  br i1 %cmp56, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %if.then.51
  %56 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %56, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.59:                                        ; preds = %if.then.51
  %57 = load i32, i32* %code, align 4, !tbaa !49
  %cmp60 = icmp eq i32 %57, 0
  %conv61 = zext i1 %cmp60 to i32
  %58 = load i32, i32* %i, align 4, !tbaa !49
  %shl = shl i32 %conv61, %58
  %59 = load i32, i32* %mask, align 4, !tbaa !49
  %or = or i32 %59, %shl
  store i32 %or, i32* %mask, align 4, !tbaa !49
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.59, %for.body.46
  br label %for.inc.63

for.inc.63:                                       ; preds = %if.end.62
  %60 = load i32, i32* %i, align 4, !tbaa !49
  %inc64 = add nsw i32 %60, 1
  store i32 %inc64, i32* %i, align 4, !tbaa !49
  br label %for.cond.43

for.end.65:                                       ; preds = %for.cond.43
  %61 = load i8*, i8** %trs.addr, align 8, !tbaa !1
  %call66 = call i8* @strcat(i8* %61, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.110, i32 0, i32 0)) #8
  br label %if.end.67

if.end.67:                                        ; preds = %for.end.65, %if.end.39
  %62 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %transfer_ids68 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %62, i32 0, i32 138
  %arraydecay = getelementptr inbounds [4 x i64], [4 x i64]* %transfer_ids68, i32 0, i32 0
  %63 = bitcast i64* %arraydecay to i8*
  %arraydecay69 = getelementptr inbounds [4 x i64], [4 x i64]* %transfer_ids, i32 0, i32 0
  %64 = bitcast i64* %arraydecay69 to i8*
  %call70 = call i8* @memcpy(i8* %63, i8* %64, i64 32) #8
  %65 = load i32, i32* %mask, align 4, !tbaa !49
  %66 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %transfer_not_identity = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %66, i32 0, i32 139
  store i32 %65, i32* %transfer_not_identity, align 4, !tbaa !58
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.67, %if.then.58, %if.then.38
  %67 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.72 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.71

if.end.71:                                        ; preds = %cleanup.cont, %for.end
  %68 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %68, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.72

cleanup.72:                                       ; preds = %if.end.71, %cleanup
  %69 = bitcast [4 x %struct.gx_transfer_map_s*]* %tm to i8*
  call void @llvm.lifetime.end(i64 32, i8* %69) #1
  %70 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #1
  %71 = bitcast [4 x i64]* %transfer_ids to i8*
  call void @llvm.lifetime.end(i64 32, i8* %71) #1
  %72 = bitcast i32* %update to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #1
  %73 = bitcast i32* %multiple to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #1
  %74 = bitcast i32* %pi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #1
  %75 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #1
  %76 = load i32, i32* %retval
  ret i32 %76
}

; Function Attrs: nounwind uwtable
define internal i32 @pdf_write_transfer_map(%struct.gx_device_pdf_s* %pdev, %struct.gx_transfer_map_s* %map, i32 %range0, i32 %check_identity, i8* %key, i8* %ids) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %map.addr = alloca %struct.gx_transfer_map_s*, align 8
  %range0.addr = alloca i32, align 4
  %check_identity.addr = alloca i32, align 4
  %key.addr = alloca i8*, align 8
  %ids.addr = alloca i8*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %params = alloca %struct.gs_function_Sd_params_s, align 8
  %range01 = alloca [2 x float], align 4
  %decode = alloca [2 x float], align 4
  %pfn = alloca %struct.gs_function_s*, align 8
  %id = alloca i64, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %i = alloca i32, align 4
  %d = alloca i32, align 4
  %r0 = alloca i32, align 4
  %r1 = alloca float, align 4
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gx_transfer_map_s* %map, %struct.gx_transfer_map_s** %map.addr, align 8, !tbaa !1
  store i32 %range0, i32* %range0.addr, align 4, !tbaa !49
  store i32 %check_identity, i32* %check_identity.addr, align 4, !tbaa !49
  store i8* %key, i8** %key.addr, align 8, !tbaa !1
  store i8* %ids, i8** %ids.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %1, i32 0, i32 43
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory, align 8, !tbaa !51
  store %struct.gs_memory_s* %2, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %3 = bitcast %struct.gs_function_Sd_params_s* %params to i8*
  call void @llvm.lifetime.start(i64 136, i8* %3) #1
  %4 = bitcast [2 x float]* %range01 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast [2 x float]* %decode to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast %struct.gs_function_s** %pfn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i64* %id to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %map.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_transfer_map_s* %9, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load i8*, i8** %ids.addr, align 8, !tbaa !1
  store i8 0, i8* %10, align 1, !tbaa !91
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.100

if.end:                                           ; preds = %entry
  %11 = load i32, i32* %check_identity.addr, align 4, !tbaa !49
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then.1, label %if.end.29

if.then.1:                                        ; preds = %if.end
  %12 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %map.addr, align 8, !tbaa !1
  %proc = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %13, i32 0, i32 1
  %proc2 = bitcast {}** %proc to float (double, %struct.gx_transfer_map_s*)**
  %14 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %proc2, align 8, !tbaa !112
  %cmp3 = icmp eq float (double, %struct.gx_transfer_map_s*)* %14, @gs_identity_transfer
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then.1
  store i32 256, i32* %i, align 4, !tbaa !49
  br label %if.end.20

if.else:                                          ; preds = %if.then.1
  store i32 0, i32* %i, align 4, !tbaa !49
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %15 = load i32, i32* %i, align 4, !tbaa !49
  %cmp5 = icmp slt i32 %15, 256
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = bitcast i32* %d to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = load i32, i32* %i, align 4, !tbaa !49
  %idxprom = sext i32 %17 to i64
  %18 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %map.addr, align 8, !tbaa !1
  %values = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %18, i32 0, i32 4
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* %values, i32 0, i64 %idxprom
  %19 = load i16, i16* %arrayidx, align 2, !tbaa !92
  %conv = sext i16 %19 to i32
  %20 = load i32, i32* %i, align 4, !tbaa !49
  %conv6 = trunc i32 %20 to i16
  %conv7 = sext i16 %conv6 to i32
  %shl = shl i32 %conv7, 7
  %21 = load i32, i32* %i, align 4, !tbaa !49
  %shr = ashr i32 %21, 1
  %add = add nsw i32 %shl, %shr
  %22 = load i32, i32* %i, align 4, !tbaa !49
  %shr8 = ashr i32 %22, 5
  %sub = sub nsw i32 %add, %shr8
  %conv9 = trunc i32 %sub to i16
  %conv10 = sext i16 %conv9 to i32
  %sub11 = sub nsw i32 %conv, %conv10
  store i32 %sub11, i32* %d, align 4, !tbaa !49
  %23 = load i32, i32* %d, align 4, !tbaa !49
  %cmp12 = icmp slt i32 %23, 0
  br i1 %cmp12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %24 = load i32, i32* %d, align 4, !tbaa !49
  %sub14 = sub nsw i32 0, %24
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %25 = load i32, i32* %d, align 4, !tbaa !49
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub14, %cond.true ], [ %25, %cond.false ]
  %conv15 = sext i32 %cond to i64
  %cmp16 = icmp sgt i64 %conv15, 1
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %cond.end
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.19:                                        ; preds = %cond.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.19, %if.then.18
  %26 = bitcast i32* %d to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %27 = load i32, i32* %i, align 4, !tbaa !49
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %i, align 4, !tbaa !49
  br label %for.cond

for.end:                                          ; preds = %cleanup, %for.cond
  br label %if.end.20

if.end.20:                                        ; preds = %for.end, %if.then.4
  %28 = load i32, i32* %i, align 4, !tbaa !49
  %cmp21 = icmp eq i32 %28, 256
  br i1 %cmp21, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %if.end.20
  %29 = load i8*, i8** %ids.addr, align 8, !tbaa !1
  %30 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %call = call i8* @strcpy(i8* %29, i8* %30) #8
  %31 = load i8*, i8** %ids.addr, align 8, !tbaa !1
  %call24 = call i8* @strcat(i8* %31, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.111, i32 0, i32 0)) #8
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.26

if.end.25:                                        ; preds = %if.end.20
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.26

cleanup.26:                                       ; preds = %if.end.25, %if.then.23
  %32 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #1
  %cleanup.dest.27 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.27, label %cleanup.100 [
    i32 0, label %cleanup.cont.28
  ]

cleanup.cont.28:                                  ; preds = %cleanup.26
  br label %if.end.29

if.end.29:                                        ; preds = %cleanup.cont.28, %if.end
  %m = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 0
  store i32 1, i32* %m, align 4, !tbaa !225
  %Domain = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 1
  store float* getelementptr inbounds ([2 x float], [2 x float]* @pdf_write_transfer_map.domain01, i32 0, i32 0), float** %Domain, align 8, !tbaa !228
  %n = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 2
  store i32 1, i32* %n, align 4, !tbaa !229
  %33 = load i32, i32* %range0.addr, align 4, !tbaa !49
  %conv30 = sitofp i32 %33 to float
  %arrayidx31 = getelementptr inbounds [2 x float], [2 x float]* %range01, i32 0, i64 0
  store float %conv30, float* %arrayidx31, align 4, !tbaa !94
  %arrayidx32 = getelementptr inbounds [2 x float], [2 x float]* %range01, i32 0, i64 1
  store float 1.000000e+00, float* %arrayidx32, align 4, !tbaa !94
  %arraydecay = getelementptr inbounds [2 x float], [2 x float]* %range01, i32 0, i32 0
  %Range = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 3
  store float* %arraydecay, float** %Range, align 8, !tbaa !230
  %Order = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 4
  store i32 1, i32* %Order, align 4, !tbaa !231
  %34 = load i32, i32* %range0.addr, align 4, !tbaa !49
  %cmp33 = icmp slt i32 %34, 0
  %cond35 = select i1 %cmp33, i32 (%struct.gs_data_source_s*, i64, i32, i8*, i8**)* @transfer_map_access_signed, i32 (%struct.gs_data_source_s*, i64, i32, i8*, i8**)* @transfer_map_access
  %DataSource = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 5
  %access = getelementptr inbounds %struct.gs_data_source_s, %struct.gs_data_source_s* %DataSource, i32 0, i32 0
  store i32 (%struct.gs_data_source_s*, i64, i32, i8*, i8**)* %cond35, i32 (%struct.gs_data_source_s*, i64, i32, i8*, i8**)** %access, align 8, !tbaa !232
  %35 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %map.addr, align 8, !tbaa !1
  %36 = bitcast %struct.gx_transfer_map_s* %35 to i8*
  %DataSource36 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 5
  %data = getelementptr inbounds %struct.gs_data_source_s, %struct.gs_data_source_s* %DataSource36, i32 0, i32 2
  %str = bitcast %union.d_* %data to %struct.gs_const_string_s*
  %data37 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str, i32 0, i32 0
  store i8* %36, i8** %data37, align 8, !tbaa !233
  %BitsPerSample = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 6
  store i32 8, i32* %BitsPerSample, align 4, !tbaa !234
  %Encode = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 7
  store float* null, float** %Encode, align 8, !tbaa !235
  %arrayidx38 = getelementptr inbounds [2 x float], [2 x float]* %range01, i32 0, i64 0
  %37 = load float, float* %arrayidx38, align 4, !tbaa !94
  %cmp39 = fcmp olt float %37, 0.000000e+00
  br i1 %cmp39, label %land.lhs.true, label %if.else.78

land.lhs.true:                                    ; preds = %if.end.29
  %arrayidx41 = getelementptr inbounds [2 x float], [2 x float]* %range01, i32 0, i64 1
  %38 = load float, float* %arrayidx41, align 4, !tbaa !94
  %cmp42 = fcmp ogt float %38, 0.000000e+00
  br i1 %cmp42, label %if.then.44, label %if.else.78

if.then.44:                                       ; preds = %land.lhs.true
  %39 = bitcast i32* %r0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %39) #1
  %arrayidx45 = getelementptr inbounds [2 x float], [2 x float]* %range01, i32 0, i64 0
  %40 = load float, float* %arrayidx45, align 4, !tbaa !94
  %sub46 = fsub float -0.000000e+00, %40
  %BitsPerSample47 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 6
  %41 = load i32, i32* %BitsPerSample47, align 4, !tbaa !234
  %shl48 = shl i32 1, %41
  %sub49 = sub nsw i32 %shl48, 1
  %conv50 = sitofp i32 %sub49 to float
  %mul = fmul float %sub46, %conv50
  %arrayidx51 = getelementptr inbounds [2 x float], [2 x float]* %range01, i32 0, i64 1
  %42 = load float, float* %arrayidx51, align 4, !tbaa !94
  %arrayidx52 = getelementptr inbounds [2 x float], [2 x float]* %range01, i32 0, i64 0
  %43 = load float, float* %arrayidx52, align 4, !tbaa !94
  %sub53 = fsub float %42, %43
  %div = fdiv float %mul, %sub53
  %conv54 = fptosi float %div to i32
  store i32 %conv54, i32* %r0, align 4, !tbaa !49
  %44 = bitcast float* %r1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %44) #1
  %45 = load i32, i32* %r0, align 4, !tbaa !49
  %conv55 = sitofp i32 %45 to float
  %arrayidx56 = getelementptr inbounds [2 x float], [2 x float]* %range01, i32 0, i64 1
  %46 = load float, float* %arrayidx56, align 4, !tbaa !94
  %mul57 = fmul float %conv55, %46
  %arrayidx58 = getelementptr inbounds [2 x float], [2 x float]* %range01, i32 0, i64 0
  %47 = load float, float* %arrayidx58, align 4, !tbaa !94
  %sub59 = fsub float -0.000000e+00, %47
  %div60 = fdiv float %mul57, %sub59
  store float %div60, float* %r1, align 4, !tbaa !94
  %arrayidx61 = getelementptr inbounds [2 x float], [2 x float]* %range01, i32 0, i64 0
  %48 = load float, float* %arrayidx61, align 4, !tbaa !94
  %arrayidx62 = getelementptr inbounds [2 x float], [2 x float]* %decode, i32 0, i64 0
  store float %48, float* %arrayidx62, align 4, !tbaa !94
  %arrayidx63 = getelementptr inbounds [2 x float], [2 x float]* %range01, i32 0, i64 0
  %49 = load float, float* %arrayidx63, align 4, !tbaa !94
  %arrayidx64 = getelementptr inbounds [2 x float], [2 x float]* %range01, i32 0, i64 1
  %50 = load float, float* %arrayidx64, align 4, !tbaa !94
  %arrayidx65 = getelementptr inbounds [2 x float], [2 x float]* %range01, i32 0, i64 0
  %51 = load float, float* %arrayidx65, align 4, !tbaa !94
  %sub66 = fsub float %50, %51
  %BitsPerSample67 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 6
  %52 = load i32, i32* %BitsPerSample67, align 4, !tbaa !234
  %shl68 = shl i32 1, %52
  %sub69 = sub nsw i32 %shl68, 1
  %conv70 = sitofp i32 %sub69 to float
  %mul71 = fmul float %sub66, %conv70
  %53 = load i32, i32* %r0, align 4, !tbaa !49
  %conv72 = sitofp i32 %53 to float
  %54 = load float, float* %r1, align 4, !tbaa !94
  %add73 = fadd float %conv72, %54
  %div74 = fdiv float %mul71, %add73
  %add75 = fadd float %49, %div74
  %arrayidx76 = getelementptr inbounds [2 x float], [2 x float]* %decode, i32 0, i64 1
  store float %add75, float* %arrayidx76, align 4, !tbaa !94
  %arraydecay77 = getelementptr inbounds [2 x float], [2 x float]* %decode, i32 0, i32 0
  %Decode = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 8
  store float* %arraydecay77, float** %Decode, align 8, !tbaa !236
  %55 = bitcast float* %r1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #1
  %56 = bitcast i32* %r0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #1
  br label %if.end.80

if.else.78:                                       ; preds = %land.lhs.true, %if.end.29
  %Decode79 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 8
  store float* null, float** %Decode79, align 8, !tbaa !236
  br label %if.end.80

if.end.80:                                        ; preds = %if.else.78, %if.then.44
  %Size = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 9
  store i32* @pdf_write_transfer_map.size, i32** %Size, align 8, !tbaa !237
  %57 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call81 = call i32 @gs_function_Sd_init(%struct.gs_function_s** %pfn, %struct.gs_function_Sd_params_s* %params, %struct.gs_memory_s* %57) #7
  store i32 %call81, i32* %code, align 4, !tbaa !49
  %58 = load i32, i32* %code, align 4, !tbaa !49
  %cmp82 = icmp slt i32 %58, 0
  br i1 %cmp82, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %if.end.80
  %59 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %59, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.100

if.end.85:                                        ; preds = %if.end.80
  %60 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %61 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn, align 8, !tbaa !1
  %call86 = call i32 @pdf_write_function(%struct.gx_device_pdf_s* %60, %struct.gs_function_s* %61, i64* %id) #7
  store i32 %call86, i32* %code, align 4, !tbaa !49
  %62 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn, align 8, !tbaa !1
  %head = getelementptr inbounds %struct.gs_function_s, %struct.gs_function_s* %62, i32 0, i32 0
  %procs = getelementptr inbounds %struct.gs_function_head_s, %struct.gs_function_head_s* %head, i32 0, i32 1
  %free = getelementptr inbounds %struct.gs_function_procs_s, %struct.gs_function_procs_s* %procs, i32 0, i32 6
  %63 = load void (%struct.gs_function_s*, i32, %struct.gs_memory_s*)*, void (%struct.gs_function_s*, i32, %struct.gs_memory_s*)** %free, align 8, !tbaa !238
  %64 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn, align 8, !tbaa !1
  %65 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  call void %63(%struct.gs_function_s* %64, i32 0, %struct.gs_memory_s* %65) #7
  %66 = load i32, i32* %code, align 4, !tbaa !49
  %cmp87 = icmp slt i32 %66, 0
  br i1 %cmp87, label %if.then.89, label %if.end.90

if.then.89:                                       ; preds = %if.end.85
  %67 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %67, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.100

if.end.90:                                        ; preds = %if.end.85
  %68 = load i8*, i8** %ids.addr, align 8, !tbaa !1
  %69 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %70 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %arrayidx91 = getelementptr inbounds i8, i8* %70, i64 0
  %71 = load i8, i8* %arrayidx91, align 1, !tbaa !91
  %conv92 = sext i8 %71 to i32
  %tobool93 = icmp ne i32 %conv92, 0
  br i1 %tobool93, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end.90
  %72 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %arrayidx94 = getelementptr inbounds i8, i8* %72, i64 0
  %73 = load i8, i8* %arrayidx94, align 1, !tbaa !91
  %conv95 = sext i8 %73 to i32
  %cmp96 = icmp ne i32 %conv95, 32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.90
  %74 = phi i1 [ false, %if.end.90 ], [ %cmp96, %land.rhs ]
  %cond98 = select i1 %74, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.109, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.41, i32 0, i32 0)
  %75 = load i64, i64* %id, align 8, !tbaa !57
  %call99 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %68, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.112, i32 0, i32 0), i8* %69, i8* %cond98, i64 %75) #7
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.100

cleanup.100:                                      ; preds = %land.end, %if.then.89, %if.then.84, %cleanup.26, %if.then
  %76 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #1
  %77 = bitcast i64* %id to i8*
  call void @llvm.lifetime.end(i64 8, i8* %77) #1
  %78 = bitcast %struct.gs_function_s** %pfn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #1
  %79 = bitcast [2 x float]* %decode to i8*
  call void @llvm.lifetime.end(i64 8, i8* %79) #1
  %80 = bitcast [2 x float]* %range01 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %80) #1
  %81 = bitcast %struct.gs_function_Sd_params_s* %params to i8*
  call void @llvm.lifetime.end(i64 136, i8* %81) #1
  %82 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %82) #1
  %83 = load i32, i32* %retval
  ret i32 %83

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare i32 @gs_currentscreenphase_pis(%struct.gs_imager_state_s*, %struct.gs_int_point_s*, i32) #3

declare i32 @gs_sprintf(i8*, i8*, ...) #3

declare i32 @gx_imager_setscreenphase(%struct.gs_imager_state_s*, i32, i32, i32) #3

declare i32 @cos_dict_put_c_key_int(%struct.cos_dict_s*, i8*, i32) #3

declare i32 @cos_dict_put_c_key_real(%struct.cos_dict_s*, i8*, double) #3

declare i32 @cos_dict_put_c_key_bool(%struct.cos_dict_s*, i8*, i32) #3

; Function Attrs: nounwind uwtable
define i32 @pdf_try_prepare_fill(%struct.gx_device_pdf_s* %pdev, %struct.gs_imager_state_s* %pis) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pres = alloca %struct.pdf_resource_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %0 = bitcast %struct.pdf_resource_s** %pres to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store %struct.pdf_resource_s* null, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %3 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %call = call i32 @pdf_prepare_drawing(%struct.gx_device_pdf_s* %2, %struct.gs_imager_state_s* %3, %struct.pdf_resource_s** %pres) #7
  store i32 %call, i32* %code, align 4, !tbaa !49
  %4 = load i32, i32* %code, align 4, !tbaa !49
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %6, i32 0, i32 73
  %PreserveOverprintSettings = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params, i32 0, i32 19
  %7 = load i32, i32* %PreserveOverprintSettings, align 4, !tbaa !243
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.28

land.lhs.true:                                    ; preds = %if.end
  %8 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %fill_overprint = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %8, i32 0, i32 132
  %9 = load i32, i32* %fill_overprint, align 4, !tbaa !80
  %10 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %overprint = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %10, i32 0, i32 21
  %11 = load i32, i32* %overprint, align 4, !tbaa !244
  %cmp1 = icmp ne i32 %9, %11
  br i1 %cmp1, label %land.lhs.true.3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %12 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %font3 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %12, i32 0, i32 209
  %13 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %font3, align 8, !tbaa !245
  %tobool2 = icmp ne %struct.pdf_resource_s* %13, null
  br i1 %tobool2, label %land.lhs.true.3, label %if.end.28

land.lhs.true.3:                                  ; preds = %lor.lhs.false, %land.lhs.true
  %14 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %skip_colors = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %14, i32 0, i32 207
  %15 = load i32, i32* %skip_colors, align 4, !tbaa !199
  %tobool4 = icmp ne i32 %15, 0
  br i1 %tobool4, label %if.end.28, label %if.then.5

if.then.5:                                        ; preds = %land.lhs.true.3
  %16 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call6 = call i32 @pdf_open_gstate(%struct.gx_device_pdf_s* %16, %struct.pdf_resource_s** %pres) #7
  store i32 %call6, i32* %code, align 4, !tbaa !49
  %17 = load i32, i32* %code, align 4, !tbaa !49
  %cmp7 = icmp slt i32 %17, 0
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.then.5
  %18 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.then.5
  %19 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %CompatibilityLevel = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %19, i32 0, i32 75
  %20 = load double, double* %CompatibilityLevel, align 8, !tbaa !204
  %cmp10 = fcmp olt double %20, 1.300000e+00
  br i1 %cmp10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.end.9
  %21 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %call12 = call %struct.cos_dict_s* @resource_dict(%struct.pdf_resource_s* %21) #7
  %22 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %overprint13 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %22, i32 0, i32 21
  %23 = load i32, i32* %overprint13, align 4, !tbaa !244
  %call14 = call i32 @cos_dict_put_c_key_bool(%struct.cos_dict_s* %call12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.51, i32 0, i32 0), i32 %23) #7
  store i32 %call14, i32* %code, align 4, !tbaa !49
  %24 = load i32, i32* %code, align 4, !tbaa !49
  %cmp15 = icmp slt i32 %24, 0
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.then.11
  %25 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.17:                                        ; preds = %if.then.11
  %26 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %overprint18 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %26, i32 0, i32 21
  %27 = load i32, i32* %overprint18, align 4, !tbaa !244
  %28 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %stroke_overprint = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %28, i32 0, i32 133
  store i32 %27, i32* %stroke_overprint, align 4, !tbaa !82
  br label %if.end.25

if.else:                                          ; preds = %if.end.9
  %29 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %call19 = call %struct.cos_dict_s* @resource_dict(%struct.pdf_resource_s* %29) #7
  %30 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %overprint20 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %30, i32 0, i32 21
  %31 = load i32, i32* %overprint20, align 4, !tbaa !244
  %call21 = call i32 @cos_dict_put_c_key_bool(%struct.cos_dict_s* %call19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.52, i32 0, i32 0), i32 %31) #7
  store i32 %call21, i32* %code, align 4, !tbaa !49
  %32 = load i32, i32* %code, align 4, !tbaa !49
  %cmp22 = icmp slt i32 %32, 0
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.else
  %33 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %33, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.24:                                        ; preds = %if.else
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.end.17
  %34 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %overprint26 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %34, i32 0, i32 21
  %35 = load i32, i32* %overprint26, align 4, !tbaa !244
  %36 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %fill_overprint27 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %36, i32 0, i32 132
  store i32 %35, i32* %fill_overprint27, align 4, !tbaa !80
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.25, %land.lhs.true.3, %lor.lhs.false, %if.end
  %37 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %38 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %call29 = call i32 @pdf_end_gstate(%struct.gx_device_pdf_s* %37, %struct.pdf_resource_s* %38) #7
  store i32 %call29, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.28, %if.then.23, %if.then.16, %if.then.8, %if.then
  %39 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  %40 = bitcast %struct.pdf_resource_s** %pres to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  %41 = load i32, i32* %retval
  ret i32 %41
}

; Function Attrs: nounwind uwtable
define i32 @pdf_prepare_fill(%struct.gx_device_pdf_s* %pdev, %struct.gs_imager_state_s* %pis) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %context = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %1, i32 0, i32 156
  %2 = load i32, i32* %context, align 4, !tbaa !217
  %cmp = icmp ne i32 %2, 1
  br i1 %cmp, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %3 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %4 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %call = call i32 @pdf_try_prepare_fill(%struct.gx_device_pdf_s* %3, %struct.gs_imager_state_s* %4) #7
  store i32 %call, i32* %code, align 4, !tbaa !49
  %5 = load i32, i32* %code, align 4, !tbaa !49
  %cmp1 = icmp ne i32 %5, -6
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %6 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %7 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call3 = call i32 @pdf_open_contents(%struct.gx_device_pdf_s* %7, i32 1) #7
  store i32 %call3, i32* %code, align 4, !tbaa !49
  %8 = load i32, i32* %code, align 4, !tbaa !49
  %cmp4 = icmp slt i32 %8, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %9 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.end
  br label %if.end.7

if.end.7:                                         ; preds = %if.end.6, %entry
  %10 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %11 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %call8 = call i32 @pdf_try_prepare_fill(%struct.gx_device_pdf_s* %10, %struct.gs_imager_state_s* %11) #7
  store i32 %call8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.7, %if.then.5, %if.then.2
  %12 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #1
  %13 = load i32, i32* %retval
  ret i32 %13
}

declare i32 @pdf_open_contents(%struct.gx_device_pdf_s*, i32) #3

; Function Attrs: nounwind uwtable
define i32 @pdf_prepare_stroke(%struct.gx_device_pdf_s* %pdev, %struct.gs_imager_state_s* %pis) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %context = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %1, i32 0, i32 156
  %2 = load i32, i32* %context, align 4, !tbaa !217
  %cmp = icmp ne i32 %2, 1
  br i1 %cmp, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %3 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %4 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %call = call i32 @pdf_try_prepare_stroke(%struct.gx_device_pdf_s* %3, %struct.gs_imager_state_s* %4) #7
  store i32 %call, i32* %code, align 4, !tbaa !49
  %5 = load i32, i32* %code, align 4, !tbaa !49
  %cmp1 = icmp ne i32 %5, -6
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %6 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %7 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call3 = call i32 @pdf_open_contents(%struct.gx_device_pdf_s* %7, i32 1) #7
  store i32 %call3, i32* %code, align 4, !tbaa !49
  %8 = load i32, i32* %code, align 4, !tbaa !49
  %cmp4 = icmp slt i32 %8, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %9 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.end
  br label %if.end.7

if.end.7:                                         ; preds = %if.end.6, %entry
  %10 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %11 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %call8 = call i32 @pdf_try_prepare_stroke(%struct.gx_device_pdf_s* %10, %struct.gs_imager_state_s* %11) #7
  store i32 %call8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.7, %if.then.5, %if.then.2
  %12 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #1
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal i32 @pdf_try_prepare_stroke(%struct.gx_device_pdf_s* %pdev, %struct.gs_imager_state_s* %pis) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pres = alloca %struct.pdf_resource_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %0 = bitcast %struct.pdf_resource_s** %pres to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store %struct.pdf_resource_s* null, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %3 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %call = call i32 @pdf_prepare_drawing(%struct.gx_device_pdf_s* %2, %struct.gs_imager_state_s* %3, %struct.pdf_resource_s** %pres) #7
  store i32 %call, i32* %code, align 4, !tbaa !49
  %4 = load i32, i32* %code, align 4, !tbaa !49
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %6, i32 0, i32 73
  %PreserveOverprintSettings = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params, i32 0, i32 19
  %7 = load i32, i32* %PreserveOverprintSettings, align 4, !tbaa !243
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.23

land.lhs.true:                                    ; preds = %if.end
  %8 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %stroke_overprint = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %8, i32 0, i32 133
  %9 = load i32, i32* %stroke_overprint, align 4, !tbaa !82
  %10 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %overprint = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %10, i32 0, i32 21
  %11 = load i32, i32* %overprint, align 4, !tbaa !244
  %cmp1 = icmp ne i32 %9, %11
  br i1 %cmp1, label %land.lhs.true.2, label %if.end.23

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %12 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %skip_colors = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %12, i32 0, i32 207
  %13 = load i32, i32* %skip_colors, align 4, !tbaa !199
  %tobool3 = icmp ne i32 %13, 0
  br i1 %tobool3, label %if.end.23, label %if.then.4

if.then.4:                                        ; preds = %land.lhs.true.2
  %14 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call5 = call i32 @pdf_open_gstate(%struct.gx_device_pdf_s* %14, %struct.pdf_resource_s** %pres) #7
  store i32 %call5, i32* %code, align 4, !tbaa !49
  %15 = load i32, i32* %code, align 4, !tbaa !49
  %cmp6 = icmp slt i32 %15, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.then.4
  %16 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.then.4
  %17 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %call9 = call %struct.cos_dict_s* @resource_dict(%struct.pdf_resource_s* %17) #7
  %18 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %overprint10 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %18, i32 0, i32 21
  %19 = load i32, i32* %overprint10, align 4, !tbaa !244
  %call11 = call i32 @cos_dict_put_c_key_bool(%struct.cos_dict_s* %call9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.51, i32 0, i32 0), i32 %19) #7
  store i32 %call11, i32* %code, align 4, !tbaa !49
  %20 = load i32, i32* %code, align 4, !tbaa !49
  %cmp12 = icmp slt i32 %20, 0
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.8
  %21 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %if.end.8
  %22 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %overprint15 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %22, i32 0, i32 21
  %23 = load i32, i32* %overprint15, align 4, !tbaa !244
  %24 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %stroke_overprint16 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %24, i32 0, i32 133
  store i32 %23, i32* %stroke_overprint16, align 4, !tbaa !82
  %25 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %CompatibilityLevel = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %25, i32 0, i32 75
  %26 = load double, double* %CompatibilityLevel, align 8, !tbaa !204
  %cmp17 = fcmp olt double %26, 1.300000e+00
  br i1 %cmp17, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %if.end.14
  %27 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %overprint19 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %27, i32 0, i32 21
  %28 = load i32, i32* %overprint19, align 4, !tbaa !244
  %29 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %fill_overprint = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %29, i32 0, i32 132
  store i32 %28, i32* %fill_overprint, align 4, !tbaa !80
  br label %if.end.22

if.else:                                          ; preds = %if.end.14
  %30 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %overprint20 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %30, i32 0, i32 21
  %31 = load i32, i32* %overprint20, align 4, !tbaa !244
  %32 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %fill_overprint21 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %32, i32 0, i32 132
  store i32 %31, i32* %fill_overprint21, align 4, !tbaa !80
  br label %if.end.22

if.end.22:                                        ; preds = %if.else, %if.then.18
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %land.lhs.true.2, %land.lhs.true, %if.end
  %33 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %state = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %33, i32 0, i32 51
  %stroke_adjust = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %state, i32 0, i32 29
  %34 = load i32, i32* %stroke_adjust, align 4, !tbaa !84
  %35 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %stroke_adjust24 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %35, i32 0, i32 29
  %36 = load i32, i32* %stroke_adjust24, align 4, !tbaa !246
  %cmp25 = icmp ne i32 %34, %36
  br i1 %cmp25, label %if.then.26, label %if.end.40

if.then.26:                                       ; preds = %if.end.23
  %37 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call27 = call i32 @pdf_open_gstate(%struct.gx_device_pdf_s* %37, %struct.pdf_resource_s** %pres) #7
  store i32 %call27, i32* %code, align 4, !tbaa !49
  %38 = load i32, i32* %code, align 4, !tbaa !49
  %cmp28 = icmp slt i32 %38, 0
  br i1 %cmp28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.then.26
  %39 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %39, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.30:                                        ; preds = %if.then.26
  %40 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %call31 = call %struct.cos_dict_s* @resource_dict(%struct.pdf_resource_s* %40) #7
  %41 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %stroke_adjust32 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %41, i32 0, i32 29
  %42 = load i32, i32* %stroke_adjust32, align 4, !tbaa !246
  %call33 = call i32 @cos_dict_put_c_key_bool(%struct.cos_dict_s* %call31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.113, i32 0, i32 0), i32 %42) #7
  store i32 %call33, i32* %code, align 4, !tbaa !49
  %43 = load i32, i32* %code, align 4, !tbaa !49
  %cmp34 = icmp slt i32 %43, 0
  br i1 %cmp34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.end.30
  %44 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %44, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.36:                                        ; preds = %if.end.30
  %45 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %stroke_adjust37 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %45, i32 0, i32 29
  %46 = load i32, i32* %stroke_adjust37, align 4, !tbaa !246
  %47 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %state38 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %47, i32 0, i32 51
  %stroke_adjust39 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %state38, i32 0, i32 29
  store i32 %46, i32* %stroke_adjust39, align 4, !tbaa !84
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.36, %if.end.23
  %48 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %49 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %call41 = call i32 @pdf_end_gstate(%struct.gx_device_pdf_s* %48, %struct.pdf_resource_s* %49) #7
  store i32 %call41, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.40, %if.then.35, %if.then.29, %if.then.13, %if.then.7, %if.then
  %50 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #1
  %51 = bitcast %struct.pdf_resource_s** %pres to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #1
  %52 = load i32, i32* %retval
  ret i32 %52
}

; Function Attrs: nounwind uwtable
define i32 @pdf_prepare_image(%struct.gx_device_pdf_s* %pdev, %struct.gs_imager_state_s* %pis) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %1 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %call = call i32 @pdf_prepare_fill(%struct.gx_device_pdf_s* %0, %struct.gs_imager_state_s* %1) #7
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @pdf_prepare_imagemask(%struct.gx_device_pdf_s* %pdev, %struct.gs_imager_state_s* %pis, %struct.gx_device_color_s* %pdcolor) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %2 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %call = call i32 @pdf_prepare_image(%struct.gx_device_pdf_s* %1, %struct.gs_imager_state_s* %2) #7
  store i32 %call, i32* %code, align 4, !tbaa !49
  %3 = load i32, i32* %code, align 4, !tbaa !49
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %6 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %7 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %8 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %saved_fill_color = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %8, i32 0, i32 56
  %9 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %fill_used_process_color = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %9, i32 0, i32 54
  %call1 = call i32 @pdf_set_drawing_color(%struct.gx_device_pdf_s* %5, %struct.gs_imager_state_s* %6, %struct.gx_device_color_s* %7, %struct.gx_hl_saved_color_s* %saved_fill_color, i32* %fill_used_process_color, %struct.psdf_set_color_commands_s* @psdf_set_fill_color_commands) #7
  store i32 %call1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %10 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #1
  %11 = load i32, i32* %retval
  ret i32 %11
}

declare float @gs_identity_transfer(double, %struct.gx_transfer_map_s*) #3

; Function Attrs: nounwind uwtable
define internal i32 @write_color_unchanged(%struct.gx_device_pdf_s* %pdev, %struct.gs_imager_state_s* %pis, %struct.gs_client_color_s* %pcc, %struct.gx_hl_saved_color_s* %current, %struct.gx_hl_saved_color_s* %psc, %struct.psdf_set_color_commands_s* %ppscc, i32* %used_process_color, %struct.gs_color_space_s* %pcs, %struct.gx_device_color_s* %pdc) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pcc.addr = alloca %struct.gs_client_color_s*, align 8
  %current.addr = alloca %struct.gx_hl_saved_color_s*, align 8
  %psc.addr = alloca %struct.gx_hl_saved_color_s*, align 8
  %ppscc.addr = alloca %struct.psdf_set_color_commands_s*, align 8
  %used_process_color.addr = alloca i32*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pdc.addr = alloca %struct.gx_device_color_s*, align 8
  %csi = alloca i32, align 4
  %csi2 = alloca i32, align 4
  %code = alloca i32, align 4
  %command = alloca i8*, align 8
  %ranges = alloca %struct.gs_range_s*, align 8
  %cleanup.dest.slot = alloca i32
  %cs_value = alloca %struct.cos_value_s, align 8
  %save = alloca i32, align 4
  %dcc = alloca %struct.gs_client_color_s*, align 8
  %save67 = alloca i32, align 4
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gs_client_color_s* %pcc, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  store %struct.gx_hl_saved_color_s* %current, %struct.gx_hl_saved_color_s** %current.addr, align 8, !tbaa !1
  store %struct.gx_hl_saved_color_s* %psc, %struct.gx_hl_saved_color_s** %psc.addr, align 8, !tbaa !1
  store %struct.psdf_set_color_commands_s* %ppscc, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  store i32* %used_process_color, i32** %used_process_color.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdc, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %0 = bitcast i32* %csi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %csi2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i8** %command to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store i8* null, i8** %command, align 8, !tbaa !1
  %4 = bitcast %struct.gs_range_s** %ranges to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store %struct.gs_range_s* null, %struct.gs_range_s** %ranges, align 8, !tbaa !1
  %5 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %call = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %5) #7
  store i32 %call, i32* %csi2, align 4, !tbaa !91
  store i32 %call, i32* %csi, align 4, !tbaa !91
  %6 = load i32, i32* %csi, align 4, !tbaa !91
  %cmp = icmp eq i32 %6, 12
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %cmm_icc_profile_data = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %7, i32 0, i32 6
  %8 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data, align 8, !tbaa !200
  %call1 = call i32 @gsicc_get_default_type(%struct.cmm_profile_s* %8) #7
  store i32 %call1, i32* %csi2, align 4, !tbaa !91
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, i32* %csi2, align 4, !tbaa !91
  switch i32 %9, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.7
    i32 2, label %sw.bb.14
  ]

sw.bb:                                            ; preds = %if.end
  %10 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %setgray = getelementptr inbounds %struct.psdf_set_color_commands_s, %struct.psdf_set_color_commands_s* %10, i32 0, i32 0
  %11 = load i8*, i8** %setgray, align 8, !tbaa !201
  store i8* %11, i8** %command, align 8, !tbaa !1
  %12 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %13 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %14 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %call2 = call i32 @pdf_write_ccolor(%struct.gx_device_pdf_s* %12, %struct.gs_imager_state_s* %13, %struct.gs_client_color_s* %14) #7
  store i32 %call2, i32* %code, align 4, !tbaa !49
  %15 = load i32, i32* %code, align 4, !tbaa !49
  %cmp3 = icmp slt i32 %15, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %sw.bb
  %16 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.87

if.end.5:                                         ; preds = %sw.bb
  %17 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %17, i32 0, i32 47
  %18 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !186
  %19 = load i8*, i8** %command, align 8, !tbaa !1
  %call6 = call i8* @pprints1(%struct.stream_s* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* %19) #7
  br label %sw.epilog.86

sw.bb.7:                                          ; preds = %if.end
  %20 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %setrgbcolor = getelementptr inbounds %struct.psdf_set_color_commands_s, %struct.psdf_set_color_commands_s* %20, i32 0, i32 1
  %21 = load i8*, i8** %setrgbcolor, align 8, !tbaa !202
  store i8* %21, i8** %command, align 8, !tbaa !1
  %22 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %23 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %24 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %call8 = call i32 @pdf_write_ccolor(%struct.gx_device_pdf_s* %22, %struct.gs_imager_state_s* %23, %struct.gs_client_color_s* %24) #7
  store i32 %call8, i32* %code, align 4, !tbaa !49
  %25 = load i32, i32* %code, align 4, !tbaa !49
  %cmp9 = icmp slt i32 %25, 0
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %sw.bb.7
  %26 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %26, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.87

if.end.11:                                        ; preds = %sw.bb.7
  %27 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm12 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %27, i32 0, i32 47
  %28 = load %struct.stream_s*, %struct.stream_s** %strm12, align 8, !tbaa !186
  %29 = load i8*, i8** %command, align 8, !tbaa !1
  %call13 = call i8* @pprints1(%struct.stream_s* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* %29) #7
  br label %sw.epilog.86

sw.bb.14:                                         ; preds = %if.end
  %30 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %setcmykcolor = getelementptr inbounds %struct.psdf_set_color_commands_s, %struct.psdf_set_color_commands_s* %30, i32 0, i32 2
  %31 = load i8*, i8** %setcmykcolor, align 8, !tbaa !203
  store i8* %31, i8** %command, align 8, !tbaa !1
  %32 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %33 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %34 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %call15 = call i32 @pdf_write_ccolor(%struct.gx_device_pdf_s* %32, %struct.gs_imager_state_s* %33, %struct.gs_client_color_s* %34) #7
  store i32 %call15, i32* %code, align 4, !tbaa !49
  %35 = load i32, i32* %code, align 4, !tbaa !49
  %cmp16 = icmp slt i32 %35, 0
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %sw.bb.14
  %36 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %36, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.87

if.end.18:                                        ; preds = %sw.bb.14
  %37 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm19 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %37, i32 0, i32 47
  %38 = load %struct.stream_s*, %struct.stream_s** %strm19, align 8, !tbaa !186
  %39 = load i8*, i8** %command, align 8, !tbaa !1
  %call20 = call i8* @pprints1(%struct.stream_s* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* %39) #7
  br label %sw.epilog.86

sw.default:                                       ; preds = %if.end
  %40 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %current.addr, align 8, !tbaa !1
  %41 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc.addr, align 8, !tbaa !1
  %call21 = call i32 @gx_hld_saved_color_same_cspace(%struct.gx_hl_saved_color_s* %40, %struct.gx_hl_saved_color_s* %41) #7
  %tobool = icmp ne i32 %call21, 0
  br i1 %tobool, label %if.else.61, label %if.then.22

if.then.22:                                       ; preds = %sw.default
  %42 = bitcast %struct.cos_value_s* %cs_value to i8*
  call void @llvm.lifetime.start(i64 24, i8* %42) #1
  %43 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %44 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %call23 = call i32 @pdf_color_space_named(%struct.gx_device_pdf_s* %43, %struct.cos_value_s* %cs_value, %struct.gs_range_s** %ranges, %struct.gs_color_space_s* %44, %struct.pdf_color_space_names_s* @pdf_color_space_names, i32 1, i8* null, i32 0, i32 0) #7
  store i32 %call23, i32* %code, align 4, !tbaa !49
  %45 = load i32, i32* %code, align 4, !tbaa !49
  %cmp24 = icmp eq i32 %45, -15
  br i1 %cmp24, label %if.then.25, label %if.end.34

if.then.25:                                       ; preds = %if.then.22
  %46 = load i32*, i32** %used_process_color.addr, align 8, !tbaa !1
  store i32 1, i32* %46, align 4, !tbaa !49
  %47 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %ForOPDFRead = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %47, i32 0, i32 99
  %48 = load i32, i32* %ForOPDFRead, align 4, !tbaa !206
  %tobool26 = icmp ne i32 %48, 0
  br i1 %tobool26, label %if.then.27, label %if.else

if.then.27:                                       ; preds = %if.then.25
  %49 = bitcast i32* %save to i8*
  call void @llvm.lifetime.start(i64 4, i8* %49) #1
  store i32 0, i32* %save, align 4, !tbaa !49
  %50 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %UseOldColor = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %50, i32 0, i32 248
  %51 = load i32, i32* %UseOldColor, align 4, !tbaa !198
  store i32 %51, i32* %save, align 4, !tbaa !49
  %52 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %UseOldColor28 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %52, i32 0, i32 248
  store i32 1, i32* %UseOldColor28, align 4, !tbaa !198
  %53 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %54 = bitcast %struct.gx_device_pdf_s* %53 to %struct.gx_device_vector_s*
  %55 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %56 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %57 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %UseOldColor29 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %57, i32 0, i32 248
  %58 = load i32, i32* %UseOldColor29, align 4, !tbaa !198
  %call30 = call i32 @psdf_set_color(%struct.gx_device_vector_s* %54, %struct.gx_device_color_s* %55, %struct.psdf_set_color_commands_s* %56, i32 %58) #7
  store i32 %call30, i32* %code, align 4, !tbaa !49
  %59 = load i32, i32* %save, align 4, !tbaa !49
  %60 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %UseOldColor31 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %60, i32 0, i32 248
  store i32 %59, i32* %UseOldColor31, align 4, !tbaa !198
  %61 = bitcast i32* %save to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #1
  br label %if.end.33

if.else:                                          ; preds = %if.then.25
  %62 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %63 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %64 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %65 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %66 = load i32*, i32** %used_process_color.addr, align 8, !tbaa !1
  %67 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %68 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %call32 = call i32 @write_color_as_process(%struct.gx_device_pdf_s* %62, %struct.gs_imager_state_s* %63, %struct.gs_color_space_s* %64, %struct.gx_device_color_s* %65, i32* %66, %struct.psdf_set_color_commands_s* %67, %struct.gs_client_color_s* %68) #7
  store i32 %call32, i32* %code, align 4, !tbaa !49
  br label %if.end.33

if.end.33:                                        ; preds = %if.else, %if.then.27
  %69 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %69, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.34:                                        ; preds = %if.then.22
  %70 = load i32, i32* %code, align 4, !tbaa !49
  %cmp35 = icmp slt i32 %70, 0
  br i1 %cmp35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end.34
  %71 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %71, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.37:                                        ; preds = %if.end.34
  %72 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call38 = call i32 @cos_value_write(%struct.cos_value_s* %cs_value, %struct.gx_device_pdf_s* %72) #7
  store i32 %call38, i32* %code, align 4, !tbaa !49
  %73 = load i32, i32* %code, align 4, !tbaa !49
  %cmp39 = icmp slt i32 %73, 0
  br i1 %cmp39, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %if.end.37
  %74 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %74, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.41:                                        ; preds = %if.end.37
  %75 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm42 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %75, i32 0, i32 47
  %76 = load %struct.stream_s*, %struct.stream_s** %strm42, align 8, !tbaa !186
  %77 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %setcolorspace = getelementptr inbounds %struct.psdf_set_color_commands_s, %struct.psdf_set_color_commands_s* %77, i32 0, i32 3
  %78 = load i8*, i8** %setcolorspace, align 8, !tbaa !188
  %call43 = call i8* @pprints1(%struct.stream_s* %76, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* %78) #7
  %79 = load %struct.gs_range_s*, %struct.gs_range_s** %ranges, align 8, !tbaa !1
  %tobool44 = icmp ne %struct.gs_range_s* %79, null
  br i1 %tobool44, label %land.lhs.true, label %if.end.54

land.lhs.true:                                    ; preds = %if.end.41
  %80 = load i32, i32* %csi2, align 4, !tbaa !91
  %cmp45 = icmp uge i32 %80, 5
  br i1 %cmp45, label %land.lhs.true.46, label %if.end.54

land.lhs.true.46:                                 ; preds = %land.lhs.true
  %81 = load i32, i32* %csi2, align 4, !tbaa !91
  %cmp47 = icmp ule i32 %81, 8
  br i1 %cmp47, label %if.then.48, label %if.end.54

if.then.48:                                       ; preds = %land.lhs.true.46
  %82 = bitcast %struct.gs_client_color_s** %dcc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %82) #1
  %83 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  store %struct.gs_client_color_s* %83, %struct.gs_client_color_s** %dcc, align 8, !tbaa !1
  %84 = load i32, i32* %csi2, align 4, !tbaa !91
  switch i32 %84, label %sw.default.53 [
    i32 5, label %sw.bb.49
    i32 6, label %sw.bb.50
    i32 7, label %sw.bb.51
    i32 8, label %sw.bb.52
  ]

sw.bb.49:                                         ; preds = %if.then.48
  %85 = load %struct.gs_range_s*, %struct.gs_range_s** %ranges, align 8, !tbaa !1
  %86 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %87 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %dcc, align 8, !tbaa !1
  call void @rescale_cie_color(%struct.gs_range_s* %85, i32 4, %struct.gs_client_color_s* %86, %struct.gs_client_color_s* %87) #7
  br label %sw.epilog

sw.bb.50:                                         ; preds = %if.then.48
  %88 = load %struct.gs_range_s*, %struct.gs_range_s** %ranges, align 8, !tbaa !1
  %89 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %90 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %dcc, align 8, !tbaa !1
  call void @rescale_cie_color(%struct.gs_range_s* %88, i32 3, %struct.gs_client_color_s* %89, %struct.gs_client_color_s* %90) #7
  br label %sw.epilog

sw.bb.51:                                         ; preds = %if.then.48
  %91 = load %struct.gs_range_s*, %struct.gs_range_s** %ranges, align 8, !tbaa !1
  %92 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %93 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %dcc, align 8, !tbaa !1
  call void @rescale_cie_color(%struct.gs_range_s* %91, i32 3, %struct.gs_client_color_s* %92, %struct.gs_client_color_s* %93) #7
  br label %sw.epilog

sw.bb.52:                                         ; preds = %if.then.48
  %94 = load %struct.gs_range_s*, %struct.gs_range_s** %ranges, align 8, !tbaa !1
  %95 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %96 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %dcc, align 8, !tbaa !1
  call void @rescale_cie_color(%struct.gs_range_s* %94, i32 1, %struct.gs_client_color_s* %95, %struct.gs_client_color_s* %96) #7
  br label %sw.epilog

sw.default.53:                                    ; preds = %if.then.48
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default.53, %sw.bb.52, %sw.bb.51, %sw.bb.50, %sw.bb.49
  %97 = bitcast %struct.gs_client_color_s** %dcc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %97) #1
  br label %if.end.54

if.end.54:                                        ; preds = %sw.epilog, %land.lhs.true.46, %land.lhs.true, %if.end.41
  %98 = load i32*, i32** %used_process_color.addr, align 8, !tbaa !1
  store i32 0, i32* %98, align 4, !tbaa !49
  %99 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %100 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %101 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %call55 = call i32 @pdf_write_ccolor(%struct.gx_device_pdf_s* %99, %struct.gs_imager_state_s* %100, %struct.gs_client_color_s* %101) #7
  store i32 %call55, i32* %code, align 4, !tbaa !49
  %102 = load i32, i32* %code, align 4, !tbaa !49
  %cmp56 = icmp slt i32 %102, 0
  br i1 %cmp56, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %if.end.54
  %103 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %103, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.58:                                        ; preds = %if.end.54
  %104 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm59 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %104, i32 0, i32 47
  %105 = load %struct.stream_s*, %struct.stream_s** %strm59, align 8, !tbaa !186
  %106 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %setcolorn = getelementptr inbounds %struct.psdf_set_color_commands_s, %struct.psdf_set_color_commands_s* %106, i32 0, i32 5
  %107 = load i8*, i8** %setcolorn, align 8, !tbaa !190
  %call60 = call i8* @pprints1(%struct.stream_s* %105, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* %107) #7
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.58, %if.then.57, %if.then.40, %if.then.36, %if.end.33
  %108 = bitcast %struct.cos_value_s* %cs_value to i8*
  call void @llvm.lifetime.end(i64 24, i8* %108) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.87 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.85

if.else.61:                                       ; preds = %sw.default
  %109 = load i32*, i32** %used_process_color.addr, align 8, !tbaa !1
  %110 = load i32, i32* %109, align 4, !tbaa !49
  %tobool62 = icmp ne i32 %110, 0
  br i1 %tobool62, label %if.then.63, label %if.else.76

if.then.63:                                       ; preds = %if.else.61
  %111 = load i32*, i32** %used_process_color.addr, align 8, !tbaa !1
  store i32 1, i32* %111, align 4, !tbaa !49
  %112 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %ForOPDFRead64 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %112, i32 0, i32 99
  %113 = load i32, i32* %ForOPDFRead64, align 4, !tbaa !206
  %tobool65 = icmp ne i32 %113, 0
  br i1 %tobool65, label %if.then.66, label %if.else.73

if.then.66:                                       ; preds = %if.then.63
  %114 = bitcast i32* %save67 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %114) #1
  store i32 0, i32* %save67, align 4, !tbaa !49
  %115 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %UseOldColor68 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %115, i32 0, i32 248
  %116 = load i32, i32* %UseOldColor68, align 4, !tbaa !198
  store i32 %116, i32* %save67, align 4, !tbaa !49
  %117 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %UseOldColor69 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %117, i32 0, i32 248
  store i32 1, i32* %UseOldColor69, align 4, !tbaa !198
  %118 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %119 = bitcast %struct.gx_device_pdf_s* %118 to %struct.gx_device_vector_s*
  %120 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %121 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %122 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %UseOldColor70 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %122, i32 0, i32 248
  %123 = load i32, i32* %UseOldColor70, align 4, !tbaa !198
  %call71 = call i32 @psdf_set_color(%struct.gx_device_vector_s* %119, %struct.gx_device_color_s* %120, %struct.psdf_set_color_commands_s* %121, i32 %123) #7
  store i32 %call71, i32* %code, align 4, !tbaa !49
  %124 = load i32, i32* %save67, align 4, !tbaa !49
  %125 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %UseOldColor72 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %125, i32 0, i32 248
  store i32 %124, i32* %UseOldColor72, align 4, !tbaa !198
  %126 = bitcast i32* %save67 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %126) #1
  br label %if.end.75

if.else.73:                                       ; preds = %if.then.63
  %127 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %128 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %129 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %130 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %131 = load i32*, i32** %used_process_color.addr, align 8, !tbaa !1
  %132 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %133 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %call74 = call i32 @write_color_as_process(%struct.gx_device_pdf_s* %127, %struct.gs_imager_state_s* %128, %struct.gs_color_space_s* %129, %struct.gx_device_color_s* %130, i32* %131, %struct.psdf_set_color_commands_s* %132, %struct.gs_client_color_s* %133) #7
  store i32 %call74, i32* %code, align 4, !tbaa !49
  br label %if.end.75

if.end.75:                                        ; preds = %if.else.73, %if.then.66
  %134 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %134, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.87

if.else.76:                                       ; preds = %if.else.61
  %135 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %136 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %137 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %call77 = call i32 @pdf_write_ccolor(%struct.gx_device_pdf_s* %135, %struct.gs_imager_state_s* %136, %struct.gs_client_color_s* %137) #7
  store i32 %call77, i32* %code, align 4, !tbaa !49
  %138 = load i32, i32* %code, align 4, !tbaa !49
  %cmp78 = icmp slt i32 %138, 0
  br i1 %cmp78, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %if.else.76
  %139 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %139, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.87

if.end.80:                                        ; preds = %if.else.76
  %140 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm81 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %140, i32 0, i32 47
  %141 = load %struct.stream_s*, %struct.stream_s** %strm81, align 8, !tbaa !186
  %142 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %setcolorn82 = getelementptr inbounds %struct.psdf_set_color_commands_s, %struct.psdf_set_color_commands_s* %142, i32 0, i32 5
  %143 = load i8*, i8** %setcolorn82, align 8, !tbaa !190
  %call83 = call i8* @pprints1(%struct.stream_s* %141, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* %143) #7
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.80
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.84, %cleanup.cont
  br label %sw.epilog.86

sw.epilog.86:                                     ; preds = %if.end.85, %if.end.18, %if.end.11, %if.end.5
  %144 = load i32*, i32** %used_process_color.addr, align 8, !tbaa !1
  store i32 0, i32* %144, align 4, !tbaa !49
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.87

cleanup.87:                                       ; preds = %sw.epilog.86, %if.then.79, %if.end.75, %cleanup, %if.then.17, %if.then.10, %if.then.4
  %145 = bitcast %struct.gs_range_s** %ranges to i8*
  call void @llvm.lifetime.end(i64 8, i8* %145) #1
  %146 = bitcast i8** %command to i8*
  call void @llvm.lifetime.end(i64 8, i8* %146) #1
  %147 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %147) #1
  %148 = bitcast i32* %csi2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %148) #1
  %149 = bitcast i32* %csi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %149) #1
  %150 = load i32, i32* %retval
  ret i32 %150
}

; Function Attrs: nounwind uwtable
define internal i32 @write_color_as_process(%struct.gx_device_pdf_s* %pdev, %struct.gs_imager_state_s* %pis, %struct.gs_color_space_s* %pcs, %struct.gx_device_color_s* %pdc, i32* %used_process_color, %struct.psdf_set_color_commands_s* %ppscc, %struct.gs_client_color_s* %pcc) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pdc.addr = alloca %struct.gx_device_color_s*, align 8
  %used_process_color.addr = alloca i32*, align 8
  %ppscc.addr = alloca %struct.psdf_set_color_commands_s*, align 8
  %pcc.addr = alloca %struct.gs_client_color_s*, align 8
  %code = alloca i32, align 4
  %i = alloca i32, align 4
  %conc = alloca [64 x i16], align 16
  %csi = alloca i32, align 4
  %csi2 = alloca i32, align 4
  %pcs2 = alloca %struct.gs_color_space_s*, align 8
  %dc = alloca %struct.gx_device_color_s, align 8
  %num_des_comps = alloca i32, align 4
  %dev_profile = alloca %struct.cmm_dev_profile_s*, align 8
  %command = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %cc = alloca %struct.gs_client_color_s, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdc, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  store i32* %used_process_color, i32** %used_process_color.addr, align 8, !tbaa !1
  store %struct.psdf_set_color_commands_s* %ppscc, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  store %struct.gs_client_color_s* %pcc, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast [64 x i16]* %conc to i8*
  call void @llvm.lifetime.start(i64 128, i8* %2) #1
  %3 = bitcast i32* %csi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %csi2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast %struct.gs_color_space_s** %pcs2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %6, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %7 = bitcast %struct.gx_device_color_s* %dc to i8*
  call void @llvm.lifetime.start(i64 656, i8* %7) #1
  %8 = bitcast i32* %num_des_comps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %dc, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_pure, %struct.gx_device_color_type_s** %type, align 8, !tbaa !106
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %dc, i32 0, i32 1
  %pure = bitcast %union._c* %colors to i64*
  store i64 0, i64* %pure, align 8, !tbaa !57
  %10 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %call = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %10) #7
  store i32 %call, i32* %csi, align 4, !tbaa !91
  %11 = load i32, i32* %csi, align 4, !tbaa !91
  %cmp = icmp eq i32 %11, 10
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %12 = load i32, i32* %csi, align 4, !tbaa !91
  %cmp1 = icmp eq i32 %12, 4
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %13 = load i32, i32* %csi, align 4, !tbaa !91
  %cmp3 = icmp eq i32 %13, 9
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false.2, %lor.lhs.false, %entry
  %14 = bitcast i8** %command to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  store i8* null, i8** %command, align 8, !tbaa !1
  %15 = load i32*, i32** %used_process_color.addr, align 8, !tbaa !1
  store i32 1, i32* %15, align 4, !tbaa !49
  %16 = bitcast [64 x i16]* %conc to i8*
  %call4 = call i8* @memset(i8* %16, i32 0, i64 128) #8
  %17 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %type5 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %17, i32 0, i32 0
  %18 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type5, align 8, !tbaa !154
  %concretize_color = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %18, i32 0, i32 8
  %19 = load i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)** %concretize_color, align 8, !tbaa !155
  %20 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %21 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [64 x i16], [64 x i16]* %conc, i32 0, i32 0
  %22 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %23 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %24 = bitcast %struct.gx_device_pdf_s* %23 to %struct.gx_device_s*
  %call6 = call i32 %19(%struct.gs_client_color_s* %20, %struct.gs_color_space_s* %21, i16* %arraydecay, %struct.gs_imager_state_s* %22, %struct.gx_device_s* %24) #7
  br label %do.body

do.body:                                          ; preds = %land.end, %if.then
  %25 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %base_space = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %25, i32 0, i32 3
  %26 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space, align 8, !tbaa !152
  store %struct.gs_color_space_s* %26, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %27 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %call7 = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %27) #7
  store i32 %call7, i32* %csi2, align 4, !tbaa !91
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %28 = load i32, i32* %csi2, align 4, !tbaa !91
  %cmp8 = icmp ne i32 %28, 12
  br i1 %cmp8, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %29 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %base_space9 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %29, i32 0, i32 3
  %30 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space9, align 8, !tbaa !152
  %tobool = icmp ne %struct.gs_color_space_s* %30, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %31 = phi i1 [ false, %do.cond ], [ %tobool, %land.rhs ]
  br i1 %31, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  %32 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %call10 = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %32) #7
  store i32 %call10, i32* %csi2, align 4, !tbaa !91
  %33 = load i32, i32* %csi2, align 4, !tbaa !91
  switch i32 %33, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 5, label %sw.bb.32
    i32 6, label %sw.bb.32
    i32 7, label %sw.bb.32
    i32 8, label %sw.bb.32
    i32 12, label %sw.bb.32
  ]

sw.bb:                                            ; preds = %do.end, %do.end, %do.end
  %34 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %34, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %35 = load i32, i32* %num_components, align 4, !tbaa !151
  switch i32 %35, label %sw.epilog [
    i32 1, label %sw.bb.11
    i32 3, label %sw.bb.12
    i32 4, label %sw.bb.13
  ]

sw.bb.11:                                         ; preds = %sw.bb
  %36 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %setgray = getelementptr inbounds %struct.psdf_set_color_commands_s, %struct.psdf_set_color_commands_s* %36, i32 0, i32 0
  %37 = load i8*, i8** %setgray, align 8, !tbaa !201
  store i8* %37, i8** %command, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.12:                                         ; preds = %sw.bb
  %38 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %setrgbcolor = getelementptr inbounds %struct.psdf_set_color_commands_s, %struct.psdf_set_color_commands_s* %38, i32 0, i32 1
  %39 = load i8*, i8** %setrgbcolor, align 8, !tbaa !202
  store i8* %39, i8** %command, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.13:                                         ; preds = %sw.bb
  %40 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %setcmykcolor = getelementptr inbounds %struct.psdf_set_color_commands_s, %struct.psdf_set_color_commands_s* %40, i32 0, i32 2
  %41 = load i8*, i8** %setcmykcolor, align 8, !tbaa !203
  store i8* %41, i8** %command, align 8, !tbaa !1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %sw.bb.13, %sw.bb.12, %sw.bb.11
  %42 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %42, i32 0, i32 47
  %43 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !186
  %arrayidx = getelementptr inbounds [64 x i16], [64 x i16]* %conc, i32 0, i64 0
  %44 = load i16, i16* %arrayidx, align 2, !tbaa !92
  %conv = sext i16 %44 to i32
  %conv14 = sitofp i32 %conv to float
  %div = fdiv float %conv14, 3.276000e+04
  %conv15 = fpext float %div to double
  %call16 = call double @psdf_round(double %conv15, i32 255, i32 8) #7
  %call17 = call i8* @pprintg1(%struct.stream_s* %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), double %call16) #7
  store i32 1, i32* %i, align 4, !tbaa !49
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.epilog
  %45 = load i32, i32* %i, align 4, !tbaa !49
  %46 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %color_info18 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %46, i32 0, i32 11
  %num_components19 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info18, i32 0, i32 1
  %47 = load i32, i32* %num_components19, align 4, !tbaa !151
  %cmp20 = icmp slt i32 %45, %47
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %48 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm22 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %48, i32 0, i32 47
  %49 = load %struct.stream_s*, %struct.stream_s** %strm22, align 8, !tbaa !186
  %50 = load i32, i32* %i, align 4, !tbaa !49
  %idxprom = sext i32 %50 to i64
  %arrayidx23 = getelementptr inbounds [64 x i16], [64 x i16]* %conc, i32 0, i64 %idxprom
  %51 = load i16, i16* %arrayidx23, align 2, !tbaa !92
  %conv24 = sext i16 %51 to i32
  %conv25 = sitofp i32 %conv24 to float
  %div26 = fdiv float %conv25, 3.276000e+04
  %conv27 = fpext float %div26 to double
  %call28 = call double @psdf_round(double %conv27, i32 255, i32 8) #7
  %call29 = call i8* @pprintg1(%struct.stream_s* %49, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.55, i32 0, i32 0), double %call28) #7
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %52 = load i32, i32* %i, align 4, !tbaa !49
  %inc = add nsw i32 %52, 1
  store i32 %inc, i32* %i, align 4, !tbaa !49
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %53 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm30 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %53, i32 0, i32 47
  %54 = load %struct.stream_s*, %struct.stream_s** %strm30, align 8, !tbaa !186
  %55 = load i8*, i8** %command, align 8, !tbaa !1
  %call31 = call i8* @pprints1(%struct.stream_s* %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* %55) #7
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.32:                                         ; preds = %do.end, %do.end, %do.end, %do.end, %do.end
  %56 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %57 = bitcast %struct.gx_device_pdf_s* %56 to %struct.gx_device_s*
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %57, i32 0, i32 42
  %get_profile = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 67
  %58 = load i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile, align 8, !tbaa !247
  %59 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %60 = bitcast %struct.gx_device_pdf_s* %59 to %struct.gx_device_s*
  %call33 = call i32 %58(%struct.gx_device_s* %60, %struct.cmm_dev_profile_s** %dev_profile) #7
  store i32 %call33, i32* %code, align 4, !tbaa !49
  %61 = load i32, i32* %code, align 4, !tbaa !49
  %cmp34 = icmp slt i32 %61, 0
  br i1 %cmp34, label %if.then.36, label %if.end

if.then.36:                                       ; preds = %sw.bb.32
  %62 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %62, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %sw.bb.32
  %63 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %call37 = call i32 @gsicc_get_device_profile_comps(%struct.cmm_dev_profile_s* %63) #7
  store i32 %call37, i32* %num_des_comps, align 4, !tbaa !49
  store i32 0, i32* %i, align 4, !tbaa !49
  br label %for.cond.38

for.cond.38:                                      ; preds = %for.inc.53, %if.end
  %64 = load i32, i32* %i, align 4, !tbaa !49
  %65 = load i32, i32* %num_des_comps, align 4, !tbaa !49
  %cmp39 = icmp slt i32 %64, %65
  br i1 %cmp39, label %for.body.41, label %for.end.55

for.body.41:                                      ; preds = %for.cond.38
  %colors42 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %dc, i32 0, i32 1
  %pure43 = bitcast %union._c* %colors42 to i64*
  %66 = load i64, i64* %pure43, align 8, !tbaa !57
  %shl = shl i64 %66, 8
  %67 = load i32, i32* %i, align 4, !tbaa !49
  %idxprom44 = sext i32 %67 to i64
  %arrayidx45 = getelementptr inbounds [64 x i16], [64 x i16]* %conc, i32 0, i64 %idxprom44
  %68 = load i16, i16* %arrayidx45, align 2, !tbaa !92
  %conv46 = sext i16 %68 to i32
  %conv47 = sitofp i32 %conv46 to float
  %div48 = fdiv float %conv47, 3.276000e+04
  %mul = fmul float %div48, 2.550000e+02
  %conv49 = fptosi float %mul to i32
  %conv50 = sext i32 %conv49 to i64
  %add = add i64 %shl, %conv50
  %colors51 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %dc, i32 0, i32 1
  %pure52 = bitcast %union._c* %colors51 to i64*
  store i64 %add, i64* %pure52, align 8, !tbaa !57
  br label %for.inc.53

for.inc.53:                                       ; preds = %for.body.41
  %69 = load i32, i32* %i, align 4, !tbaa !49
  %inc54 = add nsw i32 %69, 1
  store i32 %inc54, i32* %i, align 4, !tbaa !49
  br label %for.cond.38

for.end.55:                                       ; preds = %for.cond.38
  %70 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %71 = bitcast %struct.gx_device_pdf_s* %70 to %struct.gx_device_vector_s*
  %72 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %73 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %UseOldColor = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %73, i32 0, i32 248
  %74 = load i32, i32* %UseOldColor, align 4, !tbaa !198
  %call56 = call i32 @psdf_set_color(%struct.gx_device_vector_s* %71, %struct.gx_device_color_s* %dc, %struct.psdf_set_color_commands_s* %72, i32 %74) #7
  store i32 %call56, i32* %code, align 4, !tbaa !49
  %75 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %75, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.default:                                       ; preds = %do.end
  br label %sw.epilog.57

sw.epilog.57:                                     ; preds = %sw.default
  %76 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  store %struct.gs_color_space_s* %76, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog.57, %for.end.55, %if.then.36, %for.end
  %77 = bitcast i8** %command to i8*
  call void @llvm.lifetime.end(i64 8, i8* %77) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.176 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.175

if.else:                                          ; preds = %lor.lhs.false.2
  %78 = load i32, i32* %csi, align 4, !tbaa !91
  %cmp58 = icmp uge i32 %78, 5
  br i1 %cmp58, label %land.lhs.true, label %if.else.99

land.lhs.true:                                    ; preds = %if.else
  %79 = load i32, i32* %csi, align 4, !tbaa !91
  %cmp60 = icmp ule i32 %79, 8
  br i1 %cmp60, label %if.then.62, label %if.else.99

if.then.62:                                       ; preds = %land.lhs.true
  %80 = bitcast [64 x i16]* %conc to i8*
  %call63 = call i8* @memset(i8* %80, i32 0, i64 128) #8
  %81 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %type64 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %81, i32 0, i32 0
  %82 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type64, align 8, !tbaa !154
  %concretize_color65 = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %82, i32 0, i32 8
  %83 = load i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)** %concretize_color65, align 8, !tbaa !155
  %84 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %85 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %arraydecay66 = getelementptr inbounds [64 x i16], [64 x i16]* %conc, i32 0, i32 0
  %86 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %87 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %88 = bitcast %struct.gx_device_pdf_s* %87 to %struct.gx_device_s*
  %call67 = call i32 %83(%struct.gs_client_color_s* %84, %struct.gs_color_space_s* %85, i16* %arraydecay66, %struct.gs_imager_state_s* %86, %struct.gx_device_s* %88) #7
  %89 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %90 = bitcast %struct.gx_device_pdf_s* %89 to %struct.gx_device_s*
  %procs68 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %90, i32 0, i32 42
  %get_profile69 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs68, i32 0, i32 67
  %91 = load i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile69, align 8, !tbaa !247
  %92 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %93 = bitcast %struct.gx_device_pdf_s* %92 to %struct.gx_device_s*
  %call70 = call i32 %91(%struct.gx_device_s* %93, %struct.cmm_dev_profile_s** %dev_profile) #7
  store i32 %call70, i32* %code, align 4, !tbaa !49
  %94 = load i32, i32* %code, align 4, !tbaa !49
  %cmp71 = icmp slt i32 %94, 0
  br i1 %cmp71, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %if.then.62
  %95 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %95, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.176

if.end.74:                                        ; preds = %if.then.62
  %96 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %call75 = call i32 @gsicc_get_device_profile_comps(%struct.cmm_dev_profile_s* %96) #7
  store i32 %call75, i32* %num_des_comps, align 4, !tbaa !49
  store i32 0, i32* %i, align 4, !tbaa !49
  br label %for.cond.76

for.cond.76:                                      ; preds = %for.inc.94, %if.end.74
  %97 = load i32, i32* %i, align 4, !tbaa !49
  %98 = load i32, i32* %num_des_comps, align 4, !tbaa !49
  %cmp77 = icmp slt i32 %97, %98
  br i1 %cmp77, label %for.body.79, label %for.end.96

for.body.79:                                      ; preds = %for.cond.76
  %colors80 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %dc, i32 0, i32 1
  %pure81 = bitcast %union._c* %colors80 to i64*
  %99 = load i64, i64* %pure81, align 8, !tbaa !57
  %shl82 = shl i64 %99, 8
  %100 = load i32, i32* %i, align 4, !tbaa !49
  %idxprom83 = sext i32 %100 to i64
  %arrayidx84 = getelementptr inbounds [64 x i16], [64 x i16]* %conc, i32 0, i64 %idxprom83
  %101 = load i16, i16* %arrayidx84, align 2, !tbaa !92
  %conv85 = sext i16 %101 to i32
  %conv86 = sitofp i32 %conv85 to float
  %div87 = fdiv float %conv86, 3.276000e+04
  %mul88 = fmul float %div87, 2.550000e+02
  %conv89 = fptosi float %mul88 to i32
  %conv90 = sext i32 %conv89 to i64
  %add91 = add i64 %shl82, %conv90
  %colors92 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %dc, i32 0, i32 1
  %pure93 = bitcast %union._c* %colors92 to i64*
  store i64 %add91, i64* %pure93, align 8, !tbaa !57
  br label %for.inc.94

for.inc.94:                                       ; preds = %for.body.79
  %102 = load i32, i32* %i, align 4, !tbaa !49
  %inc95 = add nsw i32 %102, 1
  store i32 %inc95, i32* %i, align 4, !tbaa !49
  br label %for.cond.76

for.end.96:                                       ; preds = %for.cond.76
  %103 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %104 = bitcast %struct.gx_device_pdf_s* %103 to %struct.gx_device_vector_s*
  %105 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %106 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %UseOldColor97 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %106, i32 0, i32 248
  %107 = load i32, i32* %UseOldColor97, align 4, !tbaa !198
  %call98 = call i32 @psdf_set_color(%struct.gx_device_vector_s* %104, %struct.gx_device_color_s* %dc, %struct.psdf_set_color_commands_s* %105, i32 %107) #7
  store i32 %call98, i32* %code, align 4, !tbaa !49
  %108 = load i32*, i32** %used_process_color.addr, align 8, !tbaa !1
  store i32 1, i32* %108, align 4, !tbaa !49
  %109 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %109, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.176

if.else.99:                                       ; preds = %land.lhs.true, %if.else
  %110 = bitcast [64 x i16]* %conc to i8*
  %call100 = call i8* @memset(i8* %110, i32 0, i64 128) #8
  %111 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %cmm_icc_profile_data = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %111, i32 0, i32 6
  %112 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data, align 8, !tbaa !200
  %data_cs = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %112, i32 0, i32 5
  %113 = load i32, i32* %data_cs, align 4, !tbaa !249
  %cmp101 = icmp eq i32 %113, 6
  br i1 %cmp101, label %if.then.106, label %lor.lhs.false.103

lor.lhs.false.103:                                ; preds = %if.else.99
  %114 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %cmm_icc_profile_data104 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %114, i32 0, i32 6
  %115 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data104, align 8, !tbaa !200
  %islab = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %115, i32 0, i32 2
  %116 = load i32, i32* %islab, align 4, !tbaa !253
  %tobool105 = icmp ne i32 %116, 0
  br i1 %tobool105, label %if.then.106, label %if.else.138

if.then.106:                                      ; preds = %lor.lhs.false.103, %if.else.99
  %117 = bitcast %struct.gs_client_color_s* %cc to i8*
  call void @llvm.lifetime.start(i64 264, i8* %117) #1
  %118 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %paint = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %118, i32 0, i32 1
  %values = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint, i32 0, i32 0
  %arrayidx107 = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 0
  %119 = load float, float* %arrayidx107, align 4, !tbaa !94
  %conv108 = fpext float %119 to double
  %div109 = fdiv double %conv108, 1.000000e+02
  %conv110 = fptrunc double %div109 to float
  %paint111 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values112 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint111, i32 0, i32 0
  %arrayidx113 = getelementptr inbounds [64 x float], [64 x float]* %values112, i32 0, i64 0
  store float %conv110, float* %arrayidx113, align 4, !tbaa !94
  %120 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %paint114 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %120, i32 0, i32 1
  %values115 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint114, i32 0, i32 0
  %arrayidx116 = getelementptr inbounds [64 x float], [64 x float]* %values115, i32 0, i64 1
  %121 = load float, float* %arrayidx116, align 4, !tbaa !94
  %add117 = fadd float %121, 1.280000e+02
  %conv118 = fpext float %add117 to double
  %div119 = fdiv double %conv118, 2.550000e+02
  %conv120 = fptrunc double %div119 to float
  %paint121 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values122 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint121, i32 0, i32 0
  %arrayidx123 = getelementptr inbounds [64 x float], [64 x float]* %values122, i32 0, i64 1
  store float %conv120, float* %arrayidx123, align 4, !tbaa !94
  %122 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %paint124 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %122, i32 0, i32 1
  %values125 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint124, i32 0, i32 0
  %arrayidx126 = getelementptr inbounds [64 x float], [64 x float]* %values125, i32 0, i64 2
  %123 = load float, float* %arrayidx126, align 4, !tbaa !94
  %add127 = fadd float %123, 1.280000e+02
  %conv128 = fpext float %add127 to double
  %div129 = fdiv double %conv128, 2.550000e+02
  %conv130 = fptrunc double %div129 to float
  %paint131 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values132 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint131, i32 0, i32 0
  %arrayidx133 = getelementptr inbounds [64 x float], [64 x float]* %values132, i32 0, i64 2
  store float %conv130, float* %arrayidx133, align 4, !tbaa !94
  %124 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %type134 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %124, i32 0, i32 0
  %125 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type134, align 8, !tbaa !154
  %concretize_color135 = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %125, i32 0, i32 8
  %126 = load i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)** %concretize_color135, align 8, !tbaa !155
  %127 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %arraydecay136 = getelementptr inbounds [64 x i16], [64 x i16]* %conc, i32 0, i32 0
  %128 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %129 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %130 = bitcast %struct.gx_device_pdf_s* %129 to %struct.gx_device_s*
  %call137 = call i32 %126(%struct.gs_client_color_s* %cc, %struct.gs_color_space_s* %127, i16* %arraydecay136, %struct.gs_imager_state_s* %128, %struct.gx_device_s* %130) #7
  %131 = bitcast %struct.gs_client_color_s* %cc to i8*
  call void @llvm.lifetime.end(i64 264, i8* %131) #1
  br label %if.end.143

if.else.138:                                      ; preds = %lor.lhs.false.103
  %132 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %type139 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %132, i32 0, i32 0
  %133 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type139, align 8, !tbaa !154
  %concretize_color140 = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %133, i32 0, i32 8
  %134 = load i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)** %concretize_color140, align 8, !tbaa !155
  %135 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %136 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %arraydecay141 = getelementptr inbounds [64 x i16], [64 x i16]* %conc, i32 0, i32 0
  %137 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %138 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %139 = bitcast %struct.gx_device_pdf_s* %138 to %struct.gx_device_s*
  %call142 = call i32 %134(%struct.gs_client_color_s* %135, %struct.gs_color_space_s* %136, i16* %arraydecay141, %struct.gs_imager_state_s* %137, %struct.gx_device_s* %139) #7
  br label %if.end.143

if.end.143:                                       ; preds = %if.else.138, %if.then.106
  %140 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %141 = bitcast %struct.gx_device_pdf_s* %140 to %struct.gx_device_s*
  %procs144 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %141, i32 0, i32 42
  %get_profile145 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs144, i32 0, i32 67
  %142 = load i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile145, align 8, !tbaa !247
  %143 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %144 = bitcast %struct.gx_device_pdf_s* %143 to %struct.gx_device_s*
  %call146 = call i32 %142(%struct.gx_device_s* %144, %struct.cmm_dev_profile_s** %dev_profile) #7
  store i32 %call146, i32* %code, align 4, !tbaa !49
  %145 = load i32, i32* %code, align 4, !tbaa !49
  %cmp147 = icmp slt i32 %145, 0
  br i1 %cmp147, label %if.then.149, label %if.end.150

if.then.149:                                      ; preds = %if.end.143
  %146 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %146, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.176

if.end.150:                                       ; preds = %if.end.143
  %147 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %call151 = call i32 @gsicc_get_device_profile_comps(%struct.cmm_dev_profile_s* %147) #7
  store i32 %call151, i32* %num_des_comps, align 4, !tbaa !49
  store i32 0, i32* %i, align 4, !tbaa !49
  br label %for.cond.152

for.cond.152:                                     ; preds = %for.inc.170, %if.end.150
  %148 = load i32, i32* %i, align 4, !tbaa !49
  %149 = load i32, i32* %num_des_comps, align 4, !tbaa !49
  %cmp153 = icmp slt i32 %148, %149
  br i1 %cmp153, label %for.body.155, label %for.end.172

for.body.155:                                     ; preds = %for.cond.152
  %colors156 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %dc, i32 0, i32 1
  %pure157 = bitcast %union._c* %colors156 to i64*
  %150 = load i64, i64* %pure157, align 8, !tbaa !57
  %shl158 = shl i64 %150, 8
  %151 = load i32, i32* %i, align 4, !tbaa !49
  %idxprom159 = sext i32 %151 to i64
  %arrayidx160 = getelementptr inbounds [64 x i16], [64 x i16]* %conc, i32 0, i64 %idxprom159
  %152 = load i16, i16* %arrayidx160, align 2, !tbaa !92
  %conv161 = sext i16 %152 to i32
  %conv162 = sitofp i32 %conv161 to float
  %div163 = fdiv float %conv162, 3.276000e+04
  %mul164 = fmul float %div163, 2.550000e+02
  %conv165 = fptosi float %mul164 to i32
  %conv166 = sext i32 %conv165 to i64
  %add167 = add i64 %shl158, %conv166
  %colors168 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %dc, i32 0, i32 1
  %pure169 = bitcast %union._c* %colors168 to i64*
  store i64 %add167, i64* %pure169, align 8, !tbaa !57
  br label %for.inc.170

for.inc.170:                                      ; preds = %for.body.155
  %153 = load i32, i32* %i, align 4, !tbaa !49
  %inc171 = add nsw i32 %153, 1
  store i32 %inc171, i32* %i, align 4, !tbaa !49
  br label %for.cond.152

for.end.172:                                      ; preds = %for.cond.152
  %154 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %155 = bitcast %struct.gx_device_pdf_s* %154 to %struct.gx_device_vector_s*
  %156 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %157 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %UseOldColor173 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %157, i32 0, i32 248
  %158 = load i32, i32* %UseOldColor173, align 4, !tbaa !198
  %call174 = call i32 @psdf_set_color(%struct.gx_device_vector_s* %155, %struct.gx_device_color_s* %dc, %struct.psdf_set_color_commands_s* %156, i32 %158) #7
  store i32 %call174, i32* %code, align 4, !tbaa !49
  %159 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %159, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.176

if.end.175:                                       ; preds = %cleanup.cont
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.176

cleanup.176:                                      ; preds = %if.end.175, %for.end.172, %if.then.149, %for.end.96, %if.then.73, %cleanup
  %160 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %160) #1
  %161 = bitcast i32* %num_des_comps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %161) #1
  %162 = bitcast %struct.gx_device_color_s* %dc to i8*
  call void @llvm.lifetime.end(i64 656, i8* %162) #1
  %163 = bitcast %struct.gs_color_space_s** %pcs2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %163) #1
  %164 = bitcast i32* %csi2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %164) #1
  %165 = bitcast i32* %csi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %165) #1
  %166 = bitcast [64 x i16]* %conc to i8*
  call void @llvm.lifetime.end(i64 128, i8* %166) #1
  %167 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %167) #1
  %168 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %168) #1
  %169 = load i32, i32* %retval
  ret i32 %169
}

; Function Attrs: nounwind uwtable
define internal i32 @write_color_as_process_ICC(%struct.gx_device_pdf_s* %pdev, %struct.gs_imager_state_s* %pis, %struct.gs_color_space_s* %pcs, %struct.gx_device_color_s* %pdc, %struct.gx_hl_saved_color_s* %psc, i32* %used_process_color, %struct.psdf_set_color_commands_s* %ppscc, %struct.gs_client_color_s* %pcc, %struct.gx_hl_saved_color_s* %current) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pdc.addr = alloca %struct.gx_device_color_s*, align 8
  %psc.addr = alloca %struct.gx_hl_saved_color_s*, align 8
  %used_process_color.addr = alloca i32*, align 8
  %ppscc.addr = alloca %struct.psdf_set_color_commands_s*, align 8
  %pcc.addr = alloca %struct.gs_client_color_s*, align 8
  %current.addr = alloca %struct.gx_hl_saved_color_s*, align 8
  %i = alloca i32, align 4
  %code = alloca i32, align 4
  %cs_value = alloca %struct.cos_value_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdc, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  store %struct.gx_hl_saved_color_s* %psc, %struct.gx_hl_saved_color_s** %psc.addr, align 8, !tbaa !1
  store i32* %used_process_color, i32** %used_process_color.addr, align 8, !tbaa !1
  store %struct.psdf_set_color_commands_s* %ppscc, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  store %struct.gs_client_color_s* %pcc, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  store %struct.gx_hl_saved_color_s* %current, %struct.gx_hl_saved_color_s** %current.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast %struct.cos_value_s* %cs_value to i8*
  call void @llvm.lifetime.start(i64 24, i8* %2) #1
  %3 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %current.addr, align 8, !tbaa !1
  %4 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %psc.addr, align 8, !tbaa !1
  %call = call i32 @gx_hld_saved_color_same_cspace(%struct.gx_hl_saved_color_s* %3, %struct.gx_hl_saved_color_s* %4) #7
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %5 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %6 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %call1 = call i32 @pdf_color_space_named(%struct.gx_device_pdf_s* %5, %struct.cos_value_s* %cs_value, %struct.gs_range_s** null, %struct.gs_color_space_s* %6, %struct.pdf_color_space_names_s* @pdf_color_space_names, i32 1, i8* null, i32 0, i32 1) #7
  store i32 %call1, i32* %code, align 4, !tbaa !49
  %7 = load i32, i32* %code, align 4, !tbaa !49
  %cmp = icmp eq i32 %7, -15
  br i1 %cmp, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %8 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %9 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %10 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %11 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %12 = load i32*, i32** %used_process_color.addr, align 8, !tbaa !1
  %13 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %14 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %call3 = call i32 @write_color_as_process(%struct.gx_device_pdf_s* %8, %struct.gs_imager_state_s* %9, %struct.gs_color_space_s* %10, %struct.gx_device_color_s* %11, i32* %12, %struct.psdf_set_color_commands_s* %13, %struct.gs_client_color_s* %14) #7
  store i32 %call3, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %15 = load i32, i32* %code, align 4, !tbaa !49
  %cmp4 = icmp slt i32 %15, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %16 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.end
  %17 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call7 = call i32 @cos_value_write(%struct.cos_value_s* %cs_value, %struct.gx_device_pdf_s* %17) #7
  store i32 %call7, i32* %code, align 4, !tbaa !49
  %18 = load i32, i32* %code, align 4, !tbaa !49
  %cmp8 = icmp slt i32 %18, 0
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.6
  %19 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %19, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %if.end.6
  %20 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %20, i32 0, i32 47
  %21 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !186
  %22 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %setcolorspace = getelementptr inbounds %struct.psdf_set_color_commands_s, %struct.psdf_set_color_commands_s* %22, i32 0, i32 3
  %23 = load i8*, i8** %setcolorspace, align 8, !tbaa !188
  %call11 = call i8* @pprints1(%struct.stream_s* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* %23) #7
  %24 = load i32*, i32** %used_process_color.addr, align 8, !tbaa !1
  store i32 0, i32* %24, align 4, !tbaa !49
  %25 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm12 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %25, i32 0, i32 47
  %26 = load %struct.stream_s*, %struct.stream_s** %strm12, align 8, !tbaa !186
  %27 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %paint = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %27, i32 0, i32 1
  %values = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint, i32 0, i32 0
  %arrayidx = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 0
  %28 = load float, float* %arrayidx, align 4, !tbaa !94
  %conv = fpext float %28 to double
  %call13 = call double @psdf_round(double %conv, i32 255, i32 8) #7
  %call14 = call i8* @pprintg1(%struct.stream_s* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), double %call13) #7
  store i32 1, i32* %i, align 4, !tbaa !49
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.10
  %29 = load i32, i32* %i, align 4, !tbaa !49
  %30 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %30, i32 0, i32 0
  %31 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !154
  %num_components = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %31, i32 0, i32 4
  %32 = load i32 (%struct.gs_color_space_s*)*, i32 (%struct.gs_color_space_s*)** %num_components, align 8, !tbaa !254
  %33 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %call15 = call i32 %32(%struct.gs_color_space_s* %33) #7
  %cmp16 = icmp slt i32 %29, %call15
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %34 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm18 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %34, i32 0, i32 47
  %35 = load %struct.stream_s*, %struct.stream_s** %strm18, align 8, !tbaa !186
  %36 = load i32, i32* %i, align 4, !tbaa !49
  %idxprom = sext i32 %36 to i64
  %37 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %paint19 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %37, i32 0, i32 1
  %values20 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint19, i32 0, i32 0
  %arrayidx21 = getelementptr inbounds [64 x float], [64 x float]* %values20, i32 0, i64 %idxprom
  %38 = load float, float* %arrayidx21, align 4, !tbaa !94
  %conv22 = fpext float %38 to double
  %call23 = call double @psdf_round(double %conv22, i32 255, i32 8) #7
  %call24 = call i8* @pprintg1(%struct.stream_s* %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.55, i32 0, i32 0), double %call23) #7
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %39 = load i32, i32* %i, align 4, !tbaa !49
  %inc = add nsw i32 %39, 1
  store i32 %inc, i32* %i, align 4, !tbaa !49
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %40 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm25 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %40, i32 0, i32 47
  %41 = load %struct.stream_s*, %struct.stream_s** %strm25, align 8, !tbaa !186
  %42 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %setcolorn = getelementptr inbounds %struct.psdf_set_color_commands_s, %struct.psdf_set_color_commands_s* %42, i32 0, i32 5
  %43 = load i8*, i8** %setcolorn, align 8, !tbaa !190
  %call26 = call i8* @pprints1(%struct.stream_s* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* %43) #7
  br label %if.end.55

if.else:                                          ; preds = %entry
  %44 = load i32*, i32** %used_process_color.addr, align 8, !tbaa !1
  store i32 0, i32* %44, align 4, !tbaa !49
  %45 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm27 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %45, i32 0, i32 47
  %46 = load %struct.stream_s*, %struct.stream_s** %strm27, align 8, !tbaa !186
  %47 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %paint28 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %47, i32 0, i32 1
  %values29 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint28, i32 0, i32 0
  %arrayidx30 = getelementptr inbounds [64 x float], [64 x float]* %values29, i32 0, i64 0
  %48 = load float, float* %arrayidx30, align 4, !tbaa !94
  %conv31 = fpext float %48 to double
  %call32 = call double @psdf_round(double %conv31, i32 255, i32 8) #7
  %call33 = call i8* @pprintg1(%struct.stream_s* %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), double %call32) #7
  store i32 1, i32* %i, align 4, !tbaa !49
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc.49, %if.else
  %49 = load i32, i32* %i, align 4, !tbaa !49
  %50 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %type35 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %50, i32 0, i32 0
  %51 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type35, align 8, !tbaa !154
  %num_components36 = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %51, i32 0, i32 4
  %52 = load i32 (%struct.gs_color_space_s*)*, i32 (%struct.gs_color_space_s*)** %num_components36, align 8, !tbaa !254
  %53 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %call37 = call i32 %52(%struct.gs_color_space_s* %53) #7
  %cmp38 = icmp slt i32 %49, %call37
  br i1 %cmp38, label %for.body.40, label %for.end.51

for.body.40:                                      ; preds = %for.cond.34
  %54 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm41 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %54, i32 0, i32 47
  %55 = load %struct.stream_s*, %struct.stream_s** %strm41, align 8, !tbaa !186
  %56 = load i32, i32* %i, align 4, !tbaa !49
  %idxprom42 = sext i32 %56 to i64
  %57 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %paint43 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %57, i32 0, i32 1
  %values44 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint43, i32 0, i32 0
  %arrayidx45 = getelementptr inbounds [64 x float], [64 x float]* %values44, i32 0, i64 %idxprom42
  %58 = load float, float* %arrayidx45, align 4, !tbaa !94
  %conv46 = fpext float %58 to double
  %call47 = call double @psdf_round(double %conv46, i32 255, i32 8) #7
  %call48 = call i8* @pprintg1(%struct.stream_s* %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.55, i32 0, i32 0), double %call47) #7
  br label %for.inc.49

for.inc.49:                                       ; preds = %for.body.40
  %59 = load i32, i32* %i, align 4, !tbaa !49
  %inc50 = add nsw i32 %59, 1
  store i32 %inc50, i32* %i, align 4, !tbaa !49
  br label %for.cond.34

for.end.51:                                       ; preds = %for.cond.34
  %60 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm52 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %60, i32 0, i32 47
  %61 = load %struct.stream_s*, %struct.stream_s** %strm52, align 8, !tbaa !186
  %62 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %setcolorn53 = getelementptr inbounds %struct.psdf_set_color_commands_s, %struct.psdf_set_color_commands_s* %62, i32 0, i32 5
  %63 = load i8*, i8** %setcolorn53, align 8, !tbaa !190
  %call54 = call i8* @pprints1(%struct.stream_s* %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* %63) #7
  br label %if.end.55

if.end.55:                                        ; preds = %for.end.51, %for.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.55, %if.then.9, %if.then.5, %if.then.2
  %64 = bitcast %struct.cos_value_s* %cs_value to i8*
  call void @llvm.lifetime.end(i64 24, i8* %64) #1
  %65 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #1
  %66 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #1
  %67 = load i32, i32* %retval
  ret i32 %67
}

declare i32 @gsicc_get_device_profile_comps(%struct.cmm_dev_profile_s*) #3

declare i32 @gx_hld_get_number_color_components(%struct.gs_imager_state_s*) #3

declare %struct.gs_color_space_s* @gx_dc_pattern2_get_color_space(%struct.gx_device_color_s*) #3

declare i32 @cos_dict_put_c_key_string(%struct.cos_dict_s*, i8*, i8*, i32) #3

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

; Function Attrs: nounwind uwtable
define internal i32 @pdf_write_screen_halftone(%struct.gx_device_pdf_s* %pdev, %struct.gs_screen_halftone_s* %psht, %struct.gx_ht_order_s* %porder, i64* %pid) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %psht.addr = alloca %struct.gs_screen_halftone_s*, align 8
  %porder.addr = alloca %struct.gx_ht_order_s*, align 8
  %pid.addr = alloca i64*, align 8
  %spot = alloca %struct.gs_spot_halftone_s, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_screen_halftone_s* %psht, %struct.gs_screen_halftone_s** %psht.addr, align 8, !tbaa !1
  store %struct.gx_ht_order_s* %porder, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  store i64* %pid, i64** %pid.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_spot_halftone_s* %spot to i8*
  call void @llvm.lifetime.start(i64 56, i8* %0) #1
  %screen = getelementptr inbounds %struct.gs_spot_halftone_s, %struct.gs_spot_halftone_s* %spot, i32 0, i32 0
  %1 = load %struct.gs_screen_halftone_s*, %struct.gs_screen_halftone_s** %psht.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_screen_halftone_s* %screen to i8*
  %3 = bitcast %struct.gs_screen_halftone_s* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 24, i32 8, i1 false), !tbaa.struct !255
  %accurate_screens = getelementptr inbounds %struct.gs_spot_halftone_s, %struct.gs_spot_halftone_s* %spot, i32 0, i32 1
  store i32 0, i32* %accurate_screens, align 4, !tbaa !256
  %transfer = getelementptr inbounds %struct.gs_spot_halftone_s, %struct.gs_spot_halftone_s* %spot, i32 0, i32 2
  store float (double, %struct.gx_transfer_map_s*)* null, float (double, %struct.gx_transfer_map_s*)** %transfer, align 8, !tbaa !259
  %transfer_closure = getelementptr inbounds %struct.gs_spot_halftone_s, %struct.gs_spot_halftone_s* %spot, i32 0, i32 3
  %proc = getelementptr inbounds %struct.gs_mapping_closure_s, %struct.gs_mapping_closure_s* %transfer_closure, i32 0, i32 0
  store float (double, %struct.gx_transfer_map_s*, i8*)* null, float (double, %struct.gx_transfer_map_s*, i8*)** %proc, align 8, !tbaa !260
  %4 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %5 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %6 = load i64*, i64** %pid.addr, align 8, !tbaa !1
  %call = call i32 @pdf_write_spot_halftone(%struct.gx_device_pdf_s* %4, %struct.gs_spot_halftone_s* %spot, %struct.gx_ht_order_s* %5, i64* %6) #7
  %7 = bitcast %struct.gs_spot_halftone_s* %spot to i8*
  call void @llvm.lifetime.end(i64 56, i8* %7) #1
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @pdf_write_colorscreen_halftone(%struct.gx_device_pdf_s* %pdev, %struct.gs_colorscreen_halftone_s* %pcsht, %struct.gx_device_halftone_s* %pdht, i64* %pid) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pcsht.addr = alloca %struct.gs_colorscreen_halftone_s*, align 8
  %pdht.addr = alloca %struct.gx_device_halftone_s*, align 8
  %pid.addr = alloca i64*, align 8
  %i = alloca i32, align 4
  %s = alloca %struct.stream_s*, align 8
  %ht_ids = alloca [4 x i64], align 16
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_colorscreen_halftone_s* %pcsht, %struct.gs_colorscreen_halftone_s** %pcsht.addr, align 8, !tbaa !1
  store %struct.gx_device_halftone_s* %pdht, %struct.gx_device_halftone_s** %pdht.addr, align 8, !tbaa !1
  store i64* %pid, i64** %pid.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast [4 x i64]* %ht_ids to i8*
  call void @llvm.lifetime.start(i64 32, i8* %2) #1
  store i32 0, i32* %i, align 4, !tbaa !49
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4, !tbaa !49
  %4 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht.addr, align 8, !tbaa !1
  %num_comp = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %4, i32 0, i32 5
  %5 = load i32, i32* %num_comp, align 4, !tbaa !261
  %cmp = icmp ult i32 %3, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %8 = load i32, i32* %i, align 4, !tbaa !49
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.gs_colorscreen_halftone_s*, %struct.gs_colorscreen_halftone_s** %pcsht.addr, align 8, !tbaa !1
  %screens = getelementptr inbounds %struct.gs_colorscreen_halftone_s, %struct.gs_colorscreen_halftone_s* %9, i32 0, i32 0
  %indexed = bitcast %union._css* %screens to [4 x %struct.gs_screen_halftone_s]*
  %arrayidx = getelementptr inbounds [4 x %struct.gs_screen_halftone_s], [4 x %struct.gs_screen_halftone_s]* %indexed, i32 0, i64 %idxprom
  %10 = load i32, i32* %i, align 4, !tbaa !49
  %idxprom1 = sext i32 %10 to i64
  %11 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht.addr, align 8, !tbaa !1
  %components = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %11, i32 0, i32 4
  %12 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %components, align 8, !tbaa !224
  %arrayidx2 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %12, i64 %idxprom1
  %corder = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %arrayidx2, i32 0, i32 0
  %13 = load i32, i32* %i, align 4, !tbaa !49
  %idxprom3 = sext i32 %13 to i64
  %arrayidx4 = getelementptr inbounds [4 x i64], [4 x i64]* %ht_ids, i32 0, i64 %idxprom3
  %call = call i32 @pdf_write_screen_halftone(%struct.gx_device_pdf_s* %7, %struct.gs_screen_halftone_s* %arrayidx, %struct.gx_ht_order_s* %corder, i64* %arrayidx4) #7
  store i32 %call, i32* %code, align 4, !tbaa !49
  %14 = load i32, i32* %code, align 4, !tbaa !49
  %cmp5 = icmp slt i32 %14, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %15 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %16 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.30 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %17 = load i32, i32* %i, align 4, !tbaa !49
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4, !tbaa !49
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call6 = call i64 @pdf_begin_separate(%struct.gx_device_pdf_s* %18, i32 18) #7
  %19 = load i64*, i64** %pid.addr, align 8, !tbaa !1
  store i64 %call6, i64* %19, align 8, !tbaa !57
  %20 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %20, i32 0, i32 47
  %21 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !186
  store %struct.stream_s* %21, %struct.stream_s** %s, align 8, !tbaa !1
  %22 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %23 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht.addr, align 8, !tbaa !1
  %num_comp7 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %23, i32 0, i32 5
  %24 = load i32, i32* %num_comp7, align 4, !tbaa !261
  %cmp8 = icmp ugt i32 %24, 3
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  %arrayidx9 = getelementptr inbounds [4 x i64], [4 x i64]* %ht_ids, i32 0, i64 3
  %25 = load i64, i64* %arrayidx9, align 8, !tbaa !57
  br label %cond.end

cond.false:                                       ; preds = %for.end
  %arrayidx10 = getelementptr inbounds [4 x i64], [4 x i64]* %ht_ids, i32 0, i64 1
  %26 = load i64, i64* %arrayidx10, align 8, !tbaa !57
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %25, %cond.true ], [ %26, %cond.false ]
  %call11 = call i8* @pprintld1(%struct.stream_s* %22, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.63, i32 0, i32 0), i64 %cond) #7
  %27 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds [4 x i64], [4 x i64]* %ht_ids, i32 0, i64 0
  %28 = load i64, i64* %arrayidx12, align 8, !tbaa !57
  %arrayidx13 = getelementptr inbounds [4 x i64], [4 x i64]* %ht_ids, i32 0, i64 0
  %29 = load i64, i64* %arrayidx13, align 8, !tbaa !57
  %call14 = call i8* @pprintld2(%struct.stream_s* %27, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.64, i32 0, i32 0), i64 %28, i64 %29) #7
  %30 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds [4 x i64], [4 x i64]* %ht_ids, i32 0, i64 1
  %31 = load i64, i64* %arrayidx15, align 8, !tbaa !57
  %arrayidx16 = getelementptr inbounds [4 x i64], [4 x i64]* %ht_ids, i32 0, i64 1
  %32 = load i64, i64* %arrayidx16, align 8, !tbaa !57
  %call17 = call i8* @pprintld2(%struct.stream_s* %30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.65, i32 0, i32 0), i64 %31, i64 %32) #7
  %33 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds [4 x i64], [4 x i64]* %ht_ids, i32 0, i64 2
  %34 = load i64, i64* %arrayidx18, align 8, !tbaa !57
  %arrayidx19 = getelementptr inbounds [4 x i64], [4 x i64]* %ht_ids, i32 0, i64 2
  %35 = load i64, i64* %arrayidx19, align 8, !tbaa !57
  %call20 = call i8* @pprintld2(%struct.stream_s* %33, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.66, i32 0, i32 0), i64 %34, i64 %35) #7
  %36 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht.addr, align 8, !tbaa !1
  %num_comp21 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %36, i32 0, i32 5
  %37 = load i32, i32* %num_comp21, align 4, !tbaa !261
  %cmp22 = icmp ugt i32 %37, 3
  br i1 %cmp22, label %if.then.23, label %if.end.27

if.then.23:                                       ; preds = %cond.end
  %38 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %arrayidx24 = getelementptr inbounds [4 x i64], [4 x i64]* %ht_ids, i32 0, i64 3
  %39 = load i64, i64* %arrayidx24, align 8, !tbaa !57
  %arrayidx25 = getelementptr inbounds [4 x i64], [4 x i64]* %ht_ids, i32 0, i64 3
  %40 = load i64, i64* %arrayidx25, align 8, !tbaa !57
  %call26 = call i8* @pprintld2(%struct.stream_s* %38, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.67, i32 0, i32 0), i64 %39, i64 %40) #7
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.23, %cond.end
  %41 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call28 = call i32 @stream_puts(%struct.stream_s* %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.68, i32 0, i32 0)) #7
  %42 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call29 = call i32 @pdf_end_separate(%struct.gx_device_pdf_s* %42, i32 18) #7
  store i32 %call29, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.30

cleanup.30:                                       ; preds = %if.end.27, %cleanup
  %43 = bitcast [4 x i64]* %ht_ids to i8*
  call void @llvm.lifetime.end(i64 32, i8* %43) #1
  %44 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #1
  %45 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #1
  %46 = load i32, i32* %retval
  ret i32 %46
}

; Function Attrs: nounwind uwtable
define internal i32 @pdf_write_spot_halftone(%struct.gx_device_pdf_s* %pdev, %struct.gs_spot_halftone_s* %psht, %struct.gx_ht_order_s* %porder, i64* %pid) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %psht.addr = alloca %struct.gs_spot_halftone_s*, align 8
  %porder.addr = alloca %struct.gx_ht_order_s*, align 8
  %pid.addr = alloca i64*, align 8
  %trs = alloca [44 x i8], align 16
  %code = alloca i32, align 4
  %spot_id = alloca i64, align 8
  %s = alloca %struct.stream_s*, align 8
  %i = alloca i32, align 4
  %mem = alloca %struct.gs_memory_s*, align 8
  %cleanup.dest.slot = alloca i32
  %senum = alloca %struct.gs_screen_enum_s, align 8
  %order = alloca %struct.gx_ht_order_s, align 8
  %code1 = alloca i32, align 4
  %spot_proc = alloca double (double, double)*, align 8
  %pt = alloca %struct.gs_point_s, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_spot_halftone_s* %psht, %struct.gs_spot_halftone_s** %psht.addr, align 8, !tbaa !1
  store %struct.gx_ht_order_s* %porder, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  store i64* %pid, i64** %pid.addr, align 8, !tbaa !1
  %0 = bitcast [44 x i8]* %trs to i8*
  call void @llvm.lifetime.start(i64 44, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %3 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %transfer = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %3, i32 0, i32 15
  %4 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %transfer, align 8, !tbaa !262
  %arraydecay = getelementptr inbounds [44 x i8], [44 x i8]* %trs, i32 0, i32 0
  %call = call i32 @pdf_write_transfer(%struct.gx_device_pdf_s* %2, %struct.gx_transfer_map_s* %4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.69, i32 0, i32 0), i8* %arraydecay) #7
  store i32 %call, i32* %code, align 4, !tbaa !49
  %5 = bitcast i64* %spot_id to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 21, i32* %i, align 4, !tbaa !49
  %8 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %9, i32 0, i32 43
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory, align 8, !tbaa !51
  store %struct.gs_memory_s* %10, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %11 = load i32, i32* %code, align 4, !tbaa !49
  %cmp = icmp slt i32 %11, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.67

if.end:                                           ; preds = %entry
  %13 = bitcast %struct.gs_screen_enum_s* %senum to i8*
  call void @llvm.lifetime.start(i64 360, i8* %13) #1
  %14 = bitcast %struct.gx_ht_order_s* %order to i8*
  call void @llvm.lifetime.start(i64 160, i8* %14) #1
  %15 = bitcast i32* %code1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %17 = bitcast %struct.gx_ht_order_s* %order to i8*
  %18 = bitcast %struct.gx_ht_order_s* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 160, i32 8, i1 false), !tbaa.struct !263
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call2 = call i32 @gs_screen_order_alloc(%struct.gx_ht_order_s* %order, %struct.gs_memory_s* %19) #7
  store i32 %call2, i32* %code1, align 4, !tbaa !49
  %20 = load i32, i32* %code1, align 4, !tbaa !49
  %cmp3 = icmp slt i32 %20, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.30

if.end.5:                                         ; preds = %if.end
  store i32 0, i32* %i, align 4, !tbaa !49
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.5
  %21 = load i32, i32* %i, align 4, !tbaa !49
  %conv = sext i32 %21 to i64
  %cmp6 = icmp ult i64 %conv, 21
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = bitcast double (double, double)** %spot_proc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #1
  %23 = load i32, i32* %i, align 4, !tbaa !49
  %idxprom = sext i32 %23 to i64
  %arrayidx = getelementptr inbounds [21 x %struct.ht_function_s], [21 x %struct.ht_function_s]* @ht_functions, i32 0, i64 %idxprom
  %proc = getelementptr inbounds %struct.ht_function_s, %struct.ht_function_s* %arrayidx, i32 0, i32 1
  %24 = load double (double, double)*, double (double, double)** %proc, align 8, !tbaa !264
  store double (double, double)* %24, double (double, double)** %spot_proc, align 8, !tbaa !1
  %25 = bitcast %struct.gs_point_s* %pt to i8*
  call void @llvm.lifetime.start(i64 16, i8* %25) #1
  %26 = load %struct.gs_spot_halftone_s*, %struct.gs_spot_halftone_s** %psht.addr, align 8, !tbaa !1
  %screen = getelementptr inbounds %struct.gs_spot_halftone_s, %struct.gs_spot_halftone_s* %26, i32 0, i32 0
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call8 = call i32 @gs_screen_enum_init_memory(%struct.gs_screen_enum_s* %senum, %struct.gx_ht_order_s* %order, %struct.gs_state_s* null, %struct.gs_screen_halftone_s* %screen, %struct.gs_memory_s* %27) #7
  br label %while.cond

while.cond:                                       ; preds = %do.end, %for.body
  %call9 = call i32 @gs_screen_currentpoint(%struct.gs_screen_enum_s* %senum, %struct.gs_point_s* %pt) #7
  store i32 %call9, i32* %code1, align 4, !tbaa !49
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %28 = load double (double, double)*, double (double, double)** %spot_proc, align 8, !tbaa !1
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 0
  %29 = load double, double* %x, align 8, !tbaa !266
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 1
  %30 = load double, double* %y, align 8, !tbaa !267
  %call12 = call double %28(double %29, double %30) #7
  %call13 = call i32 @gs_screen_next(%struct.gs_screen_enum_s* %senum, double %call12) #7
  %cmp14 = icmp sge i32 %call13, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %31 = phi i1 [ false, %while.cond ], [ %cmp14, %land.rhs ]
  br i1 %31, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  br label %do.body

do.body:                                          ; preds = %while.body
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %while.cond

while.end:                                        ; preds = %land.end
  %32 = load i32, i32* %code1, align 4, !tbaa !49
  %cmp16 = icmp slt i32 %32, 0
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %while.end
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup

if.end.19:                                        ; preds = %while.end
  %33 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %call20 = call i32 @compare_gx_ht_order_levels(%struct.gx_ht_order_s* %order, %struct.gx_ht_order_s* %33) #7
  %tobool = icmp ne i32 %call20, 0
  br i1 %tobool, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.19
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup

if.end.22:                                        ; preds = %if.end.19
  %bit_data = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %order, i32 0, i32 13
  %34 = load i8*, i8** %bit_data, align 8, !tbaa !268
  %35 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %bit_data23 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %35, i32 0, i32 13
  %36 = load i8*, i8** %bit_data23, align 8, !tbaa !268
  %num_bits = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %order, i32 0, i32 9
  %37 = load i32, i32* %num_bits, align 4, !tbaa !269
  %38 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %38, i32 0, i32 10
  %39 = load %struct.gx_ht_order_procs_s*, %struct.gx_ht_order_procs_s** %procs, align 8, !tbaa !270
  %bit_data_elt_size = getelementptr inbounds %struct.gx_ht_order_procs_s, %struct.gx_ht_order_procs_s* %39, i32 0, i32 0
  %40 = load i32, i32* %bit_data_elt_size, align 4, !tbaa !271
  %mul = mul i32 %37, %40
  %conv24 = zext i32 %mul to i64
  %call25 = call i32 @memcmp(i8* %34, i8* %36, i64 %conv24) #9
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.22
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup

if.end.28:                                        ; preds = %if.end.22
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.28, %if.then.27, %if.then.21, %if.then.18
  %41 = bitcast %struct.gs_point_s* %pt to i8*
  call void @llvm.lifetime.end(i64 16, i8* %41) #1
  %42 = bitcast double (double, double)** %spot_proc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 5, label %for.inc
    i32 3, label %for.end
  ]

for.inc:                                          ; preds = %cleanup
  %43 = load i32, i32* %i, align 4, !tbaa !49
  %inc = add nsw i32 %43, 1
  store i32 %inc, i32* %i, align 4, !tbaa !49
  br label %for.cond

for.end:                                          ; preds = %cleanup, %for.cond
  %44 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  call void @gx_ht_order_release(%struct.gx_ht_order_s* %order, %struct.gs_memory_s* %44, i32 0) #7
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.30

cleanup.30:                                       ; preds = %if.then.4, %for.end
  %45 = bitcast i32* %code1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #1
  %46 = bitcast %struct.gx_ht_order_s* %order to i8*
  call void @llvm.lifetime.end(i64 160, i8* %46) #1
  %47 = bitcast %struct.gs_screen_enum_s* %senum to i8*
  call void @llvm.lifetime.end(i64 360, i8* %47) #1
  %cleanup.dest.33 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.33, label %cleanup.67 [
    i32 0, label %cleanup.cont
    i32 2, label %notrec
  ]

cleanup.cont:                                     ; preds = %cleanup.30
  br label %notrec

notrec:                                           ; preds = %cleanup.cont, %cleanup.30
  %48 = load i32, i32* %i, align 4, !tbaa !49
  %conv34 = sext i32 %48 to i64
  %cmp35 = icmp eq i64 %conv34, 21
  br i1 %cmp35, label %if.then.37, label %if.end.43

if.then.37:                                       ; preds = %notrec
  %49 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %50 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %call38 = call i32 @pdf_write_spot_function(%struct.gx_device_pdf_s* %49, %struct.gx_ht_order_s* %50, i64* %spot_id) #7
  store i32 %call38, i32* %code, align 4, !tbaa !49
  %51 = load i32, i32* %code, align 4, !tbaa !49
  %cmp39 = icmp slt i32 %51, 0
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.then.37
  %52 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %52, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.67

if.end.42:                                        ; preds = %if.then.37
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %notrec
  %53 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call44 = call i64 @pdf_begin_separate(%struct.gx_device_pdf_s* %53, i32 18) #7
  %54 = load i64*, i64** %pid.addr, align 8, !tbaa !1
  store i64 %call44, i64* %54, align 8, !tbaa !57
  %55 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %55, i32 0, i32 47
  %56 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !186
  store %struct.stream_s* %56, %struct.stream_s** %s, align 8, !tbaa !1
  %57 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %58 = load %struct.gs_spot_halftone_s*, %struct.gs_spot_halftone_s** %psht.addr, align 8, !tbaa !1
  %screen45 = getelementptr inbounds %struct.gs_spot_halftone_s, %struct.gs_spot_halftone_s* %58, i32 0, i32 0
  %frequency = getelementptr inbounds %struct.gs_screen_halftone_s, %struct.gs_screen_halftone_s* %screen45, i32 0, i32 0
  %59 = load float, float* %frequency, align 4, !tbaa !273
  %conv46 = fpext float %59 to double
  %60 = load %struct.gs_spot_halftone_s*, %struct.gs_spot_halftone_s** %psht.addr, align 8, !tbaa !1
  %screen47 = getelementptr inbounds %struct.gs_spot_halftone_s, %struct.gs_spot_halftone_s* %60, i32 0, i32 0
  %angle = getelementptr inbounds %struct.gs_screen_halftone_s, %struct.gs_screen_halftone_s* %screen47, i32 0, i32 1
  %61 = load float, float* %angle, align 4, !tbaa !274
  %conv48 = fpext float %61 to double
  %call49 = call i8* @pprintg2(%struct.stream_s* %57, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.70, i32 0, i32 0), double %conv46, double %conv48) #7
  %62 = load i32, i32* %i, align 4, !tbaa !49
  %conv50 = sext i32 %62 to i64
  %cmp51 = icmp ult i64 %conv50, 21
  br i1 %cmp51, label %if.then.53, label %if.else

if.then.53:                                       ; preds = %if.end.43
  %63 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %64 = load i32, i32* %i, align 4, !tbaa !49
  %idxprom54 = sext i32 %64 to i64
  %arrayidx55 = getelementptr inbounds [21 x %struct.ht_function_s], [21 x %struct.ht_function_s]* @ht_functions, i32 0, i64 %idxprom54
  %fname = getelementptr inbounds %struct.ht_function_s, %struct.ht_function_s* %arrayidx55, i32 0, i32 0
  %65 = load i8*, i8** %fname, align 8, !tbaa !275
  %call56 = call i8* @pprints1(%struct.stream_s* %63, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.71, i32 0, i32 0), i8* %65) #7
  br label %if.end.58

if.else:                                          ; preds = %if.end.43
  %66 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %67 = load i64, i64* %spot_id, align 8, !tbaa !57
  %call57 = call i8* @pprintld1(%struct.stream_s* %66, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.72, i32 0, i32 0), i64 %67) #7
  br label %if.end.58

if.end.58:                                        ; preds = %if.else, %if.then.53
  %68 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %arraydecay59 = getelementptr inbounds [44 x i8], [44 x i8]* %trs, i32 0, i32 0
  %call60 = call i32 @stream_puts(%struct.stream_s* %68, i8* %arraydecay59) #7
  %69 = load %struct.gs_spot_halftone_s*, %struct.gs_spot_halftone_s** %psht.addr, align 8, !tbaa !1
  %accurate_screens = getelementptr inbounds %struct.gs_spot_halftone_s, %struct.gs_spot_halftone_s* %69, i32 0, i32 1
  %70 = load i32, i32* %accurate_screens, align 4, !tbaa !256
  %tobool61 = icmp ne i32 %70, 0
  br i1 %tobool61, label %if.then.62, label %if.end.64

if.then.62:                                       ; preds = %if.end.58
  %71 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call63 = call i32 @stream_puts(%struct.stream_s* %71, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.73, i32 0, i32 0)) #7
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.62, %if.end.58
  %72 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call65 = call i32 @stream_puts(%struct.stream_s* %72, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.68, i32 0, i32 0)) #7
  %73 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call66 = call i32 @pdf_end_separate(%struct.gx_device_pdf_s* %73, i32 18) #7
  store i32 %call66, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.67

cleanup.67:                                       ; preds = %if.end.64, %if.then.41, %cleanup.30, %if.then
  %74 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #1
  %75 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #1
  %76 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %76) #1
  %77 = bitcast i64* %spot_id to i8*
  call void @llvm.lifetime.end(i64 8, i8* %77) #1
  %78 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #1
  %79 = bitcast [44 x i8]* %trs to i8*
  call void @llvm.lifetime.end(i64 44, i8* %79) #1
  %80 = load i32, i32* %retval
  ret i32 %80

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @pdf_write_threshold_halftone(%struct.gx_device_pdf_s* %pdev, %struct.gs_threshold_halftone_s* %ptht, %struct.gx_ht_order_s* %porder, i64* %pid) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %ptht.addr = alloca %struct.gs_threshold_halftone_s*, align 8
  %porder.addr = alloca %struct.gx_ht_order_s*, align 8
  %pid.addr = alloca i64*, align 8
  %trs = alloca [44 x i8], align 16
  %writer = alloca %struct.pdf_data_writer_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_threshold_halftone_s* %ptht, %struct.gs_threshold_halftone_s** %ptht.addr, align 8, !tbaa !1
  store %struct.gx_ht_order_s* %porder, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  store i64* %pid, i64** %pid.addr, align 8, !tbaa !1
  %0 = bitcast [44 x i8]* %trs to i8*
  call void @llvm.lifetime.start(i64 44, i8* %0) #1
  %1 = bitcast %struct.pdf_data_writer_s* %writer to i8*
  call void @llvm.lifetime.start(i64 80, i8* %1) #1
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %4 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %transfer = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %4, i32 0, i32 15
  %5 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %transfer, align 8, !tbaa !262
  %arraydecay = getelementptr inbounds [44 x i8], [44 x i8]* %trs, i32 0, i32 0
  %call = call i32 @pdf_write_transfer(%struct.gx_device_pdf_s* %3, %struct.gx_transfer_map_s* %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.41, i32 0, i32 0), i8* %arraydecay) #7
  store i32 %call, i32* %code, align 4, !tbaa !49
  %6 = load i32, i32* %code, align 4, !tbaa !49
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %8 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call1 = call i32 @pdf_begin_data(%struct.gx_device_pdf_s* %8, %struct.pdf_data_writer_s* %writer) #7
  store i32 %call1, i32* %code, align 4, !tbaa !49
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %do.body
  %9 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.4
  br label %do.end

do.end:                                           ; preds = %do.cond
  %pres = getelementptr inbounds %struct.pdf_data_writer_s, %struct.pdf_data_writer_s* %writer, i32 0, i32 3
  %10 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !276
  %object = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %10, i32 0, i32 7
  %11 = load %struct.cos_object_s*, %struct.cos_object_s** %object, align 8, !tbaa !161
  %id = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %11, i32 0, i32 1
  %12 = load i64, i64* %id, align 8, !tbaa !181
  %13 = load i64*, i64** %pid.addr, align 8, !tbaa !1
  store i64 %12, i64* %13, align 8, !tbaa !57
  br label %do.body.5

do.body.5:                                        ; preds = %do.end
  %pres6 = getelementptr inbounds %struct.pdf_data_writer_s, %struct.pdf_data_writer_s* %writer, i32 0, i32 3
  %14 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres6, align 8, !tbaa !276
  %object7 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %14, i32 0, i32 7
  %15 = load %struct.cos_object_s*, %struct.cos_object_s** %object7, align 8, !tbaa !161
  %16 = bitcast %struct.cos_object_s* %15 to %struct.cos_dict_s*
  %call8 = call i32 @cos_dict_put_c_strings(%struct.cos_dict_s* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.96, i32 0, i32 0)) #7
  store i32 %call8, i32* %code, align 4, !tbaa !49
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %do.body.5
  %17 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %do.body.5
  br label %do.cond.12

do.cond.12:                                       ; preds = %if.end.11
  br label %do.end.13

do.end.13:                                        ; preds = %do.cond.12
  br label %do.body.14

do.body.14:                                       ; preds = %do.end.13
  %pres15 = getelementptr inbounds %struct.pdf_data_writer_s, %struct.pdf_data_writer_s* %writer, i32 0, i32 3
  %18 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres15, align 8, !tbaa !276
  %object16 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %18, i32 0, i32 7
  %19 = load %struct.cos_object_s*, %struct.cos_object_s** %object16, align 8, !tbaa !161
  %20 = bitcast %struct.cos_object_s* %19 to %struct.cos_dict_s*
  %call17 = call i32 @cos_dict_put_c_strings(%struct.cos_dict_s* %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.98, i32 0, i32 0)) #7
  store i32 %call17, i32* %code, align 4, !tbaa !49
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %do.body.14
  %21 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.20:                                        ; preds = %do.body.14
  br label %do.cond.21

do.cond.21:                                       ; preds = %if.end.20
  br label %do.end.22

do.end.22:                                        ; preds = %do.cond.21
  br label %do.body.23

do.body.23:                                       ; preds = %do.end.22
  %pres24 = getelementptr inbounds %struct.pdf_data_writer_s, %struct.pdf_data_writer_s* %writer, i32 0, i32 3
  %22 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres24, align 8, !tbaa !276
  %object25 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %22, i32 0, i32 7
  %23 = load %struct.cos_object_s*, %struct.cos_object_s** %object25, align 8, !tbaa !161
  %24 = bitcast %struct.cos_object_s* %23 to %struct.cos_dict_s*
  %25 = load %struct.gs_threshold_halftone_s*, %struct.gs_threshold_halftone_s** %ptht.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gs_threshold_halftone_s, %struct.gs_threshold_halftone_s* %25, i32 0, i32 0
  %26 = load i32, i32* %width, align 4, !tbaa !279
  %call26 = call i32 @cos_dict_put_c_key_int(%struct.cos_dict_s* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.99, i32 0, i32 0), i32 %26) #7
  store i32 %call26, i32* %code, align 4, !tbaa !49
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %do.body.23
  %27 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %27, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.29:                                        ; preds = %do.body.23
  br label %do.cond.30

do.cond.30:                                       ; preds = %if.end.29
  br label %do.end.31

do.end.31:                                        ; preds = %do.cond.30
  br label %do.body.32

do.body.32:                                       ; preds = %do.end.31
  %pres33 = getelementptr inbounds %struct.pdf_data_writer_s, %struct.pdf_data_writer_s* %writer, i32 0, i32 3
  %28 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres33, align 8, !tbaa !276
  %object34 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %28, i32 0, i32 7
  %29 = load %struct.cos_object_s*, %struct.cos_object_s** %object34, align 8, !tbaa !161
  %30 = bitcast %struct.cos_object_s* %29 to %struct.cos_dict_s*
  %31 = load %struct.gs_threshold_halftone_s*, %struct.gs_threshold_halftone_s** %ptht.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gs_threshold_halftone_s, %struct.gs_threshold_halftone_s* %31, i32 0, i32 1
  %32 = load i32, i32* %height, align 4, !tbaa !281
  %call35 = call i32 @cos_dict_put_c_key_int(%struct.cos_dict_s* %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.100, i32 0, i32 0), i32 %32) #7
  store i32 %call35, i32* %code, align 4, !tbaa !49
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %do.body.32
  %33 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %33, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.38:                                        ; preds = %do.body.32
  br label %do.cond.39

do.cond.39:                                       ; preds = %if.end.38
  br label %do.end.40

do.end.40:                                        ; preds = %do.cond.39
  %arraydecay41 = getelementptr inbounds [44 x i8], [44 x i8]* %trs, i32 0, i32 0
  %34 = load i8, i8* %arraydecay41, align 1, !tbaa !91
  %conv = sext i8 %34 to i32
  %cmp42 = icmp ne i32 %conv, 0
  br i1 %cmp42, label %if.then.44, label %if.end.56

if.then.44:                                       ; preds = %do.end.40
  br label %do.body.45

do.body.45:                                       ; preds = %if.then.44
  %pres46 = getelementptr inbounds %struct.pdf_data_writer_s, %struct.pdf_data_writer_s* %writer, i32 0, i32 3
  %35 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres46, align 8, !tbaa !276
  %object47 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %35, i32 0, i32 7
  %36 = load %struct.cos_object_s*, %struct.cos_object_s** %object47, align 8, !tbaa !161
  %37 = bitcast %struct.cos_object_s* %36 to %struct.cos_dict_s*
  %arraydecay48 = getelementptr inbounds [44 x i8], [44 x i8]* %trs, i32 0, i32 0
  %call49 = call i32 @cos_dict_put_c_strings(%struct.cos_dict_s* %37, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.69, i32 0, i32 0), i8* %arraydecay48) #7
  store i32 %call49, i32* %code, align 4, !tbaa !49
  %cmp50 = icmp slt i32 %call49, 0
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %do.body.45
  %38 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %38, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.53:                                        ; preds = %do.body.45
  br label %do.cond.54

do.cond.54:                                       ; preds = %if.end.53
  br label %do.end.55

do.end.55:                                        ; preds = %do.cond.54
  br label %if.end.56

if.end.56:                                        ; preds = %do.end.55, %do.end.40
  %binary = getelementptr inbounds %struct.pdf_data_writer_s, %struct.pdf_data_writer_s* %writer, i32 0, i32 0
  %strm = getelementptr inbounds %struct.psdf_binary_writer_s, %struct.psdf_binary_writer_s* %binary, i32 0, i32 2
  %39 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !282
  %40 = load %struct.gs_threshold_halftone_s*, %struct.gs_threshold_halftone_s** %ptht.addr, align 8, !tbaa !1
  %thresholds = getelementptr inbounds %struct.gs_threshold_halftone_s, %struct.gs_threshold_halftone_s* %40, i32 0, i32 3
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %thresholds, i32 0, i32 0
  %41 = load i8*, i8** %data, align 8, !tbaa !283
  %42 = load %struct.gs_threshold_halftone_s*, %struct.gs_threshold_halftone_s** %ptht.addr, align 8, !tbaa !1
  %thresholds57 = getelementptr inbounds %struct.gs_threshold_halftone_s, %struct.gs_threshold_halftone_s* %42, i32 0, i32 3
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %thresholds57, i32 0, i32 1
  %43 = load i32, i32* %size, align 4, !tbaa !284
  %call58 = call i32 @stream_write(%struct.stream_s* %39, i8* %41, i32 %43) #7
  %call59 = call i32 @pdf_end_data(%struct.pdf_data_writer_s* %writer) #7
  store i32 %call59, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.56, %if.then.52, %if.then.37, %if.then.28, %if.then.19, %if.then.10, %if.then.3, %if.then
  %44 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #1
  %45 = bitcast %struct.pdf_data_writer_s* %writer to i8*
  call void @llvm.lifetime.end(i64 80, i8* %45) #1
  %46 = bitcast [44 x i8]* %trs to i8*
  call void @llvm.lifetime.end(i64 44, i8* %46) #1
  %47 = load i32, i32* %retval
  ret i32 %47
}

; Function Attrs: nounwind uwtable
define internal i32 @pdf_write_threshold2_halftone(%struct.gx_device_pdf_s* %pdev, %struct.gs_threshold2_halftone_s* %ptht, %struct.gx_ht_order_s* %porder, i64* %pid) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %ptht.addr = alloca %struct.gs_threshold2_halftone_s*, align 8
  %porder.addr = alloca %struct.gx_ht_order_s*, align 8
  %pid.addr = alloca i64*, align 8
  %trs = alloca [44 x i8], align 16
  %s = alloca %struct.stream_s*, align 8
  %writer = alloca %struct.pdf_data_writer_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %i = alloca i32, align 4
  %b = alloca i8, align 1
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_threshold2_halftone_s* %ptht, %struct.gs_threshold2_halftone_s** %ptht.addr, align 8, !tbaa !1
  store %struct.gx_ht_order_s* %porder, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  store i64* %pid, i64** %pid.addr, align 8, !tbaa !1
  %0 = bitcast [44 x i8]* %trs to i8*
  call void @llvm.lifetime.start(i64 44, i8* %0) #1
  %1 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast %struct.pdf_data_writer_s* %writer to i8*
  call void @llvm.lifetime.start(i64 80, i8* %2) #1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %5 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %transfer = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %5, i32 0, i32 15
  %6 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %transfer, align 8, !tbaa !262
  %arraydecay = getelementptr inbounds [44 x i8], [44 x i8]* %trs, i32 0, i32 0
  %call = call i32 @pdf_write_transfer(%struct.gx_device_pdf_s* %4, %struct.gx_transfer_map_s* %6, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.69, i32 0, i32 0), i8* %arraydecay) #7
  store i32 %call, i32* %code, align 4, !tbaa !49
  %7 = load i32, i32* %code, align 4, !tbaa !49
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %9 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call1 = call i32 @pdf_begin_data(%struct.gx_device_pdf_s* %9, %struct.pdf_data_writer_s* %writer) #7
  store i32 %call1, i32* %code, align 4, !tbaa !49
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %do.body
  %10 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.4
  br label %do.end

do.end:                                           ; preds = %do.cond
  %pres = getelementptr inbounds %struct.pdf_data_writer_s, %struct.pdf_data_writer_s* %writer, i32 0, i32 3
  %11 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !276
  %object = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %11, i32 0, i32 7
  %12 = load %struct.cos_object_s*, %struct.cos_object_s** %object, align 8, !tbaa !161
  %id = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %12, i32 0, i32 1
  %13 = load i64, i64* %id, align 8, !tbaa !181
  %14 = load i64*, i64** %pid.addr, align 8, !tbaa !1
  store i64 %13, i64* %14, align 8, !tbaa !57
  br label %do.body.5

do.body.5:                                        ; preds = %do.end
  %pres6 = getelementptr inbounds %struct.pdf_data_writer_s, %struct.pdf_data_writer_s* %writer, i32 0, i32 3
  %15 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres6, align 8, !tbaa !276
  %object7 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %15, i32 0, i32 7
  %16 = load %struct.cos_object_s*, %struct.cos_object_s** %object7, align 8, !tbaa !161
  %17 = bitcast %struct.cos_object_s* %16 to %struct.cos_dict_s*
  %call8 = call i32 @cos_dict_put_c_strings(%struct.cos_dict_s* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.96, i32 0, i32 0)) #7
  store i32 %call8, i32* %code, align 4, !tbaa !49
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %do.body.5
  %18 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %do.body.5
  br label %do.cond.12

do.cond.12:                                       ; preds = %if.end.11
  br label %do.end.13

do.end.13:                                        ; preds = %do.cond.12
  br label %do.body.14

do.body.14:                                       ; preds = %do.end.13
  %pres15 = getelementptr inbounds %struct.pdf_data_writer_s, %struct.pdf_data_writer_s* %writer, i32 0, i32 3
  %19 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres15, align 8, !tbaa !276
  %object16 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %19, i32 0, i32 7
  %20 = load %struct.cos_object_s*, %struct.cos_object_s** %object16, align 8, !tbaa !161
  %21 = bitcast %struct.cos_object_s* %20 to %struct.cos_dict_s*
  %call17 = call i32 @cos_dict_put_c_strings(%struct.cos_dict_s* %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.101, i32 0, i32 0)) #7
  store i32 %call17, i32* %code, align 4, !tbaa !49
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %do.body.14
  %22 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %22, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.20:                                        ; preds = %do.body.14
  br label %do.cond.21

do.cond.21:                                       ; preds = %if.end.20
  br label %do.end.22

do.end.22:                                        ; preds = %do.cond.21
  br label %do.body.23

do.body.23:                                       ; preds = %do.end.22
  %pres24 = getelementptr inbounds %struct.pdf_data_writer_s, %struct.pdf_data_writer_s* %writer, i32 0, i32 3
  %23 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres24, align 8, !tbaa !276
  %object25 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %23, i32 0, i32 7
  %24 = load %struct.cos_object_s*, %struct.cos_object_s** %object25, align 8, !tbaa !161
  %25 = bitcast %struct.cos_object_s* %24 to %struct.cos_dict_s*
  %26 = load %struct.gs_threshold2_halftone_s*, %struct.gs_threshold2_halftone_s** %ptht.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gs_threshold2_halftone_s, %struct.gs_threshold2_halftone_s* %26, i32 0, i32 0
  %27 = load i32, i32* %width, align 4, !tbaa !285
  %call26 = call i32 @cos_dict_put_c_key_int(%struct.cos_dict_s* %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.99, i32 0, i32 0), i32 %27) #7
  store i32 %call26, i32* %code, align 4, !tbaa !49
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %do.body.23
  %28 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.29:                                        ; preds = %do.body.23
  br label %do.cond.30

do.cond.30:                                       ; preds = %if.end.29
  br label %do.end.31

do.end.31:                                        ; preds = %do.cond.30
  br label %do.body.32

do.body.32:                                       ; preds = %do.end.31
  %pres33 = getelementptr inbounds %struct.pdf_data_writer_s, %struct.pdf_data_writer_s* %writer, i32 0, i32 3
  %29 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres33, align 8, !tbaa !276
  %object34 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %29, i32 0, i32 7
  %30 = load %struct.cos_object_s*, %struct.cos_object_s** %object34, align 8, !tbaa !161
  %31 = bitcast %struct.cos_object_s* %30 to %struct.cos_dict_s*
  %32 = load %struct.gs_threshold2_halftone_s*, %struct.gs_threshold2_halftone_s** %ptht.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gs_threshold2_halftone_s, %struct.gs_threshold2_halftone_s* %32, i32 0, i32 1
  %33 = load i32, i32* %height, align 4, !tbaa !288
  %call35 = call i32 @cos_dict_put_c_key_int(%struct.cos_dict_s* %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.100, i32 0, i32 0), i32 %33) #7
  store i32 %call35, i32* %code, align 4, !tbaa !49
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %do.body.32
  %34 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %34, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.38:                                        ; preds = %do.body.32
  br label %do.cond.39

do.cond.39:                                       ; preds = %if.end.38
  br label %do.end.40

do.end.40:                                        ; preds = %do.cond.39
  %35 = load %struct.gs_threshold2_halftone_s*, %struct.gs_threshold2_halftone_s** %ptht.addr, align 8, !tbaa !1
  %width2 = getelementptr inbounds %struct.gs_threshold2_halftone_s, %struct.gs_threshold2_halftone_s* %35, i32 0, i32 3
  %36 = load i32, i32* %width2, align 4, !tbaa !289
  %tobool = icmp ne i32 %36, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.63

land.lhs.true:                                    ; preds = %do.end.40
  %37 = load %struct.gs_threshold2_halftone_s*, %struct.gs_threshold2_halftone_s** %ptht.addr, align 8, !tbaa !1
  %height2 = getelementptr inbounds %struct.gs_threshold2_halftone_s, %struct.gs_threshold2_halftone_s* %37, i32 0, i32 4
  %38 = load i32, i32* %height2, align 4, !tbaa !290
  %tobool41 = icmp ne i32 %38, 0
  br i1 %tobool41, label %if.then.42, label %if.end.63

if.then.42:                                       ; preds = %land.lhs.true
  br label %do.body.43

do.body.43:                                       ; preds = %if.then.42
  %pres44 = getelementptr inbounds %struct.pdf_data_writer_s, %struct.pdf_data_writer_s* %writer, i32 0, i32 3
  %39 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres44, align 8, !tbaa !276
  %object45 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %39, i32 0, i32 7
  %40 = load %struct.cos_object_s*, %struct.cos_object_s** %object45, align 8, !tbaa !161
  %41 = bitcast %struct.cos_object_s* %40 to %struct.cos_dict_s*
  %42 = load %struct.gs_threshold2_halftone_s*, %struct.gs_threshold2_halftone_s** %ptht.addr, align 8, !tbaa !1
  %width246 = getelementptr inbounds %struct.gs_threshold2_halftone_s, %struct.gs_threshold2_halftone_s* %42, i32 0, i32 3
  %43 = load i32, i32* %width246, align 4, !tbaa !289
  %call47 = call i32 @cos_dict_put_c_key_int(%struct.cos_dict_s* %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.102, i32 0, i32 0), i32 %43) #7
  store i32 %call47, i32* %code, align 4, !tbaa !49
  %cmp48 = icmp slt i32 %call47, 0
  br i1 %cmp48, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %do.body.43
  %44 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %44, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.50:                                        ; preds = %do.body.43
  br label %do.cond.51

do.cond.51:                                       ; preds = %if.end.50
  br label %do.end.52

do.end.52:                                        ; preds = %do.cond.51
  br label %do.body.53

do.body.53:                                       ; preds = %do.end.52
  %pres54 = getelementptr inbounds %struct.pdf_data_writer_s, %struct.pdf_data_writer_s* %writer, i32 0, i32 3
  %45 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres54, align 8, !tbaa !276
  %object55 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %45, i32 0, i32 7
  %46 = load %struct.cos_object_s*, %struct.cos_object_s** %object55, align 8, !tbaa !161
  %47 = bitcast %struct.cos_object_s* %46 to %struct.cos_dict_s*
  %48 = load %struct.gs_threshold2_halftone_s*, %struct.gs_threshold2_halftone_s** %ptht.addr, align 8, !tbaa !1
  %height256 = getelementptr inbounds %struct.gs_threshold2_halftone_s, %struct.gs_threshold2_halftone_s* %48, i32 0, i32 4
  %49 = load i32, i32* %height256, align 4, !tbaa !290
  %call57 = call i32 @cos_dict_put_c_key_int(%struct.cos_dict_s* %47, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.103, i32 0, i32 0), i32 %49) #7
  store i32 %call57, i32* %code, align 4, !tbaa !49
  %cmp58 = icmp slt i32 %call57, 0
  br i1 %cmp58, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %do.body.53
  %50 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %50, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.60:                                        ; preds = %do.body.53
  br label %do.cond.61

do.cond.61:                                       ; preds = %if.end.60
  br label %do.end.62

do.end.62:                                        ; preds = %do.cond.61
  br label %if.end.63

if.end.63:                                        ; preds = %do.end.62, %land.lhs.true, %do.end.40
  %arraydecay64 = getelementptr inbounds [44 x i8], [44 x i8]* %trs, i32 0, i32 0
  %51 = load i8, i8* %arraydecay64, align 1, !tbaa !91
  %conv = sext i8 %51 to i32
  %cmp65 = icmp ne i32 %conv, 0
  br i1 %cmp65, label %if.then.67, label %if.end.79

if.then.67:                                       ; preds = %if.end.63
  br label %do.body.68

do.body.68:                                       ; preds = %if.then.67
  %pres69 = getelementptr inbounds %struct.pdf_data_writer_s, %struct.pdf_data_writer_s* %writer, i32 0, i32 3
  %52 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres69, align 8, !tbaa !276
  %object70 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %52, i32 0, i32 7
  %53 = load %struct.cos_object_s*, %struct.cos_object_s** %object70, align 8, !tbaa !161
  %54 = bitcast %struct.cos_object_s* %53 to %struct.cos_dict_s*
  %arraydecay71 = getelementptr inbounds [44 x i8], [44 x i8]* %trs, i32 0, i32 0
  %call72 = call i32 @cos_dict_put_c_strings(%struct.cos_dict_s* %54, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.69, i32 0, i32 0), i8* %arraydecay71) #7
  store i32 %call72, i32* %code, align 4, !tbaa !49
  %cmp73 = icmp slt i32 %call72, 0
  br i1 %cmp73, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %do.body.68
  %55 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %55, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.76:                                        ; preds = %do.body.68
  br label %do.cond.77

do.cond.77:                                       ; preds = %if.end.76
  br label %do.end.78

do.end.78:                                        ; preds = %do.cond.77
  br label %if.end.79

if.end.79:                                        ; preds = %do.end.78, %if.end.63
  %binary = getelementptr inbounds %struct.pdf_data_writer_s, %struct.pdf_data_writer_s* %writer, i32 0, i32 0
  %strm = getelementptr inbounds %struct.psdf_binary_writer_s, %struct.psdf_binary_writer_s* %binary, i32 0, i32 2
  %56 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !282
  store %struct.stream_s* %56, %struct.stream_s** %s, align 8, !tbaa !1
  %57 = load %struct.gs_threshold2_halftone_s*, %struct.gs_threshold2_halftone_s** %ptht.addr, align 8, !tbaa !1
  %bytes_per_sample = getelementptr inbounds %struct.gs_threshold2_halftone_s, %struct.gs_threshold2_halftone_s* %57, i32 0, i32 5
  %58 = load i32, i32* %bytes_per_sample, align 4, !tbaa !291
  %cmp80 = icmp eq i32 %58, 2
  br i1 %cmp80, label %if.then.82, label %if.else

if.then.82:                                       ; preds = %if.end.79
  %59 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %60 = load %struct.gs_threshold2_halftone_s*, %struct.gs_threshold2_halftone_s** %ptht.addr, align 8, !tbaa !1
  %thresholds = getelementptr inbounds %struct.gs_threshold2_halftone_s, %struct.gs_threshold2_halftone_s* %60, i32 0, i32 6
  %data = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %thresholds, i32 0, i32 0
  %61 = load i8*, i8** %data, align 8, !tbaa !292
  %62 = load %struct.gs_threshold2_halftone_s*, %struct.gs_threshold2_halftone_s** %ptht.addr, align 8, !tbaa !1
  %thresholds83 = getelementptr inbounds %struct.gs_threshold2_halftone_s, %struct.gs_threshold2_halftone_s* %62, i32 0, i32 6
  %size = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %thresholds83, i32 0, i32 1
  %63 = load i32, i32* %size, align 4, !tbaa !293
  %call84 = call i32 @stream_write(%struct.stream_s* %59, i8* %61, i32 %63) #7
  br label %if.end.93

if.else:                                          ; preds = %if.end.79
  %64 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %64) #1
  store i32 0, i32* %i, align 4, !tbaa !49
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %65 = load i32, i32* %i, align 4, !tbaa !49
  %66 = load %struct.gs_threshold2_halftone_s*, %struct.gs_threshold2_halftone_s** %ptht.addr, align 8, !tbaa !1
  %thresholds85 = getelementptr inbounds %struct.gs_threshold2_halftone_s, %struct.gs_threshold2_halftone_s* %66, i32 0, i32 6
  %size86 = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %thresholds85, i32 0, i32 1
  %67 = load i32, i32* %size86, align 4, !tbaa !293
  %cmp87 = icmp ult i32 %65, %67
  br i1 %cmp87, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start(i64 1, i8* %b) #1
  %68 = load i32, i32* %i, align 4, !tbaa !49
  %idxprom = sext i32 %68 to i64
  %69 = load %struct.gs_threshold2_halftone_s*, %struct.gs_threshold2_halftone_s** %ptht.addr, align 8, !tbaa !1
  %thresholds89 = getelementptr inbounds %struct.gs_threshold2_halftone_s, %struct.gs_threshold2_halftone_s* %69, i32 0, i32 6
  %data90 = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %thresholds89, i32 0, i32 0
  %70 = load i8*, i8** %data90, align 8, !tbaa !292
  %arrayidx = getelementptr inbounds i8, i8* %70, i64 %idxprom
  %71 = load i8, i8* %arrayidx, align 1, !tbaa !91
  store i8 %71, i8* %b, align 1, !tbaa !91
  %72 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %73 = load i8, i8* %b, align 1, !tbaa !91
  %call91 = call i32 @spputc(%struct.stream_s* %72, i8 zeroext %73) #7
  %74 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %75 = load i8, i8* %b, align 1, !tbaa !91
  %call92 = call i32 @spputc(%struct.stream_s* %74, i8 zeroext %75) #7
  call void @llvm.lifetime.end(i64 1, i8* %b) #1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %76 = load i32, i32* %i, align 4, !tbaa !49
  %inc = add nsw i32 %76, 1
  store i32 %inc, i32* %i, align 4, !tbaa !49
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %77 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #1
  br label %if.end.93

if.end.93:                                        ; preds = %for.end, %if.then.82
  %call94 = call i32 @pdf_end_data(%struct.pdf_data_writer_s* %writer) #7
  store i32 %call94, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.93, %if.then.75, %if.then.59, %if.then.49, %if.then.37, %if.then.28, %if.then.19, %if.then.10, %if.then.3, %if.then
  %78 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #1
  %79 = bitcast %struct.pdf_data_writer_s* %writer to i8*
  call void @llvm.lifetime.end(i64 80, i8* %79) #1
  %80 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %80) #1
  %81 = bitcast [44 x i8]* %trs to i8*
  call void @llvm.lifetime.end(i64 44, i8* %81) #1
  %82 = load i32, i32* %retval
  ret i32 %82
}

; Function Attrs: nounwind uwtable
define internal i32 @pdf_write_multiple_halftone(%struct.gx_device_pdf_s* %pdev, %struct.gs_multiple_halftone_s* %pmht, %struct.gx_device_halftone_s* %pdht, i64* %pid) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pmht.addr = alloca %struct.gs_multiple_halftone_s*, align 8
  %pdht.addr = alloca %struct.gx_device_halftone_s*, align 8
  %pid.addr = alloca i64*, align 8
  %s = alloca %struct.stream_s*, align 8
  %i = alloca i32, align 4
  %code = alloca i32, align 4
  %last_comp = alloca i32, align 4
  %mem = alloca %struct.gs_memory_s*, align 8
  %ids = alloca i64*, align 8
  %done_Default = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %phtc = alloca %struct.gs_halftone_component_s*, align 8
  %porder = alloca %struct.gx_ht_order_s*, align 8
  %phtc44 = alloca %struct.gs_halftone_component_s*, align 8
  %str = alloca i8*, align 8
  %len = alloca i32, align 4
  %value = alloca %struct.cos_value_s, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_multiple_halftone_s* %pmht, %struct.gs_multiple_halftone_s** %pmht.addr, align 8, !tbaa !1
  store %struct.gx_device_halftone_s* %pdht, %struct.gx_device_halftone_s** %pdht.addr, align 8, !tbaa !1
  store i64* %pid, i64** %pid.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %last_comp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %last_comp, align 4, !tbaa !49
  %4 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %5, i32 0, i32 43
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory, align 8, !tbaa !51
  store %struct.gs_memory_s* %6, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %7 = bitcast i64** %ids to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast i32* %done_Default to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  store i32 0, i32* %done_Default, align 4, !tbaa !49
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %9, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %10 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !294
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %12 = load %struct.gs_multiple_halftone_s*, %struct.gs_multiple_halftone_s** %pmht.addr, align 8, !tbaa !1
  %num_comp = getelementptr inbounds %struct.gs_multiple_halftone_s, %struct.gs_multiple_halftone_s* %12, i32 0, i32 1
  %13 = load i32, i32* %num_comp, align 4, !tbaa !295
  %call = call i8* %10(%struct.gs_memory_s* %11, i32 %13, i32 8, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.104, i32 0, i32 0)) #7
  %14 = bitcast i8* %call to i64*
  store i64* %14, i64** %ids, align 8, !tbaa !1
  %15 = load i64*, i64** %ids, align 8, !tbaa !1
  %cmp = icmp eq i64* %15, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.96

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !49
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %16 = load i32, i32* %i, align 4, !tbaa !49
  %17 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht.addr, align 8, !tbaa !1
  %num_comp1 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %17, i32 0, i32 5
  %18 = load i32, i32* %num_comp1, align 4, !tbaa !261
  %cmp2 = icmp ult i32 %16, %18
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = bitcast %struct.gs_halftone_component_s** %phtc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  %20 = bitcast %struct.gx_ht_order_s** %porder to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  %21 = load %struct.gs_multiple_halftone_s*, %struct.gs_multiple_halftone_s** %pmht.addr, align 8, !tbaa !1
  %22 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht.addr, align 8, !tbaa !1
  %23 = load i32, i32* %i, align 4, !tbaa !49
  %call3 = call i32 @pdf_get_halftone_component_index(%struct.gs_multiple_halftone_s* %21, %struct.gx_device_halftone_s* %22, i32 %23) #7
  store i32 %call3, i32* %code, align 4, !tbaa !49
  %24 = load i32, i32* %code, align 4, !tbaa !49
  %cmp4 = icmp slt i32 %24, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %for.body
  %25 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %for.body
  %26 = load i32, i32* %code, align 4, !tbaa !49
  %idxprom = sext i32 %26 to i64
  %27 = load %struct.gs_multiple_halftone_s*, %struct.gs_multiple_halftone_s** %pmht.addr, align 8, !tbaa !1
  %components = getelementptr inbounds %struct.gs_multiple_halftone_s, %struct.gs_multiple_halftone_s* %27, i32 0, i32 0
  %28 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %components, align 8, !tbaa !297
  %arrayidx = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %28, i64 %idxprom
  %comp_number = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %arrayidx, i32 0, i32 0
  %29 = load i32, i32* %comp_number, align 4, !tbaa !298
  %cmp7 = icmp eq i32 %29, 64
  br i1 %cmp7, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %if.end.6
  %30 = load i32, i32* %done_Default, align 4, !tbaa !49
  %tobool = icmp ne i32 %30, 0
  br i1 %tobool, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.then.8
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %if.then.8
  store i32 1, i32* %done_Default, align 4, !tbaa !49
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.end.6
  %31 = load i32, i32* %code, align 4, !tbaa !49
  %idxprom12 = sext i32 %31 to i64
  %32 = load %struct.gs_multiple_halftone_s*, %struct.gs_multiple_halftone_s** %pmht.addr, align 8, !tbaa !1
  %components13 = getelementptr inbounds %struct.gs_multiple_halftone_s, %struct.gs_multiple_halftone_s* %32, i32 0, i32 0
  %33 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %components13, align 8, !tbaa !297
  %arrayidx14 = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %33, i64 %idxprom12
  store %struct.gs_halftone_component_s* %arrayidx14, %struct.gs_halftone_component_s** %phtc, align 8, !tbaa !1
  %34 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht.addr, align 8, !tbaa !1
  %components15 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %34, i32 0, i32 4
  %35 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %components15, align 8, !tbaa !224
  %cmp16 = icmp eq %struct.gx_ht_order_component_s* %35, null
  br i1 %cmp16, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.11
  %36 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht.addr, align 8, !tbaa !1
  %order = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %36, i32 0, i32 0
  br label %cond.end

cond.false:                                       ; preds = %if.end.11
  %37 = load i32, i32* %i, align 4, !tbaa !49
  %idxprom17 = sext i32 %37 to i64
  %38 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht.addr, align 8, !tbaa !1
  %components18 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %38, i32 0, i32 4
  %39 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %components18, align 8, !tbaa !224
  %arrayidx19 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %39, i64 %idxprom17
  %corder = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %arrayidx19, i32 0, i32 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.gx_ht_order_s* [ %order, %cond.true ], [ %corder, %cond.false ]
  store %struct.gx_ht_order_s* %cond, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %40 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %phtc, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %40, i32 0, i32 2
  %41 = load i32, i32* %type, align 4, !tbaa !300
  switch i32 %41, label %sw.default [
    i32 3, label %sw.bb
    i32 4, label %sw.bb.23
    i32 5, label %sw.bb.28
  ]

sw.bb:                                            ; preds = %cond.end
  %42 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %43 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %phtc, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %43, i32 0, i32 3
  %spot = bitcast %union.anon.8* %params to %struct.gs_spot_halftone_s*
  %44 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %45 = load i32, i32* %i, align 4, !tbaa !49
  %idxprom20 = sext i32 %45 to i64
  %46 = load i64*, i64** %ids, align 8, !tbaa !1
  %arrayidx21 = getelementptr inbounds i64, i64* %46, i64 %idxprom20
  %call22 = call i32 @pdf_write_spot_halftone(%struct.gx_device_pdf_s* %42, %struct.gs_spot_halftone_s* %spot, %struct.gx_ht_order_s* %44, i64* %arrayidx21) #7
  store i32 %call22, i32* %code, align 4, !tbaa !49
  br label %sw.epilog

sw.bb.23:                                         ; preds = %cond.end
  %47 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %48 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %phtc, align 8, !tbaa !1
  %params24 = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %48, i32 0, i32 3
  %threshold = bitcast %union.anon.8* %params24 to %struct.gs_threshold_halftone_s*
  %49 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %50 = load i32, i32* %i, align 4, !tbaa !49
  %idxprom25 = sext i32 %50 to i64
  %51 = load i64*, i64** %ids, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds i64, i64* %51, i64 %idxprom25
  %call27 = call i32 @pdf_write_threshold_halftone(%struct.gx_device_pdf_s* %47, %struct.gs_threshold_halftone_s* %threshold, %struct.gx_ht_order_s* %49, i64* %arrayidx26) #7
  store i32 %call27, i32* %code, align 4, !tbaa !49
  br label %sw.epilog

sw.bb.28:                                         ; preds = %cond.end
  %52 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %53 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %phtc, align 8, !tbaa !1
  %params29 = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %53, i32 0, i32 3
  %threshold2 = bitcast %union.anon.8* %params29 to %struct.gs_threshold2_halftone_s*
  %54 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder, align 8, !tbaa !1
  %55 = load i32, i32* %i, align 4, !tbaa !49
  %idxprom30 = sext i32 %55 to i64
  %56 = load i64*, i64** %ids, align 8, !tbaa !1
  %arrayidx31 = getelementptr inbounds i64, i64* %56, i64 %idxprom30
  %call32 = call i32 @pdf_write_threshold2_halftone(%struct.gx_device_pdf_s* %52, %struct.gs_threshold2_halftone_s* %threshold2, %struct.gx_ht_order_s* %54, i64* %arrayidx31) #7
  store i32 %call32, i32* %code, align 4, !tbaa !49
  br label %sw.epilog

sw.default:                                       ; preds = %cond.end
  store i32 -15, i32* %code, align 4, !tbaa !49
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.28, %sw.bb.23, %sw.bb
  %57 = load i32, i32* %code, align 4, !tbaa !49
  %cmp33 = icmp slt i32 %57, 0
  br i1 %cmp33, label %if.then.34, label %if.end.36

if.then.34:                                       ; preds = %sw.epilog
  %58 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs35 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %58, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs35, i32 0, i32 2
  %59 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !56
  %60 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %61 = load i64*, i64** %ids, align 8, !tbaa !1
  %62 = bitcast i64* %61 to i8*
  call void %59(%struct.gs_memory_s* %60, i8* %62, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.104, i32 0, i32 0)) #7
  %63 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %63, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.36:                                        ; preds = %sw.epilog
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.36, %if.then.34, %if.then.9, %if.then.5
  %64 = bitcast %struct.gx_ht_order_s** %porder to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #1
  %65 = bitcast %struct.gs_halftone_component_s** %phtc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.96 [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %66 = load i32, i32* %i, align 4, !tbaa !49
  %inc = add nsw i32 %66, 1
  store i32 %inc, i32* %i, align 4, !tbaa !49
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %67 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call38 = call i64 @pdf_begin_separate(%struct.gx_device_pdf_s* %67, i32 18) #7
  %68 = load i64*, i64** %pid.addr, align 8, !tbaa !1
  store i64 %call38, i64* %68, align 8, !tbaa !57
  %69 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %69, i32 0, i32 47
  %70 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !186
  store %struct.stream_s* %70, %struct.stream_s** %s, align 8, !tbaa !1
  %71 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call39 = call i32 @stream_puts(%struct.stream_s* %71, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.105, i32 0, i32 0)) #7
  store i32 0, i32* %done_Default, align 4, !tbaa !49
  store i32 0, i32* %i, align 4, !tbaa !49
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.83, %for.end
  %72 = load i32, i32* %i, align 4, !tbaa !49
  %73 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht.addr, align 8, !tbaa !1
  %num_comp41 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %73, i32 0, i32 5
  %74 = load i32, i32* %num_comp41, align 4, !tbaa !261
  %cmp42 = icmp ult i32 %72, %74
  br i1 %cmp42, label %for.body.43, label %for.end.85

for.body.43:                                      ; preds = %for.cond.40
  %75 = bitcast %struct.gs_halftone_component_s** %phtc44 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %75) #1
  %76 = bitcast i8** %str to i8*
  call void @llvm.lifetime.start(i64 8, i8* %76) #1
  %77 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %77) #1
  %78 = bitcast %struct.cos_value_s* %value to i8*
  call void @llvm.lifetime.start(i64 24, i8* %78) #1
  %79 = load %struct.gs_multiple_halftone_s*, %struct.gs_multiple_halftone_s** %pmht.addr, align 8, !tbaa !1
  %80 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht.addr, align 8, !tbaa !1
  %81 = load i32, i32* %i, align 4, !tbaa !49
  %call45 = call i32 @pdf_get_halftone_component_index(%struct.gs_multiple_halftone_s* %79, %struct.gx_device_halftone_s* %80, i32 %81) #7
  store i32 %call45, i32* %code, align 4, !tbaa !49
  %82 = load i32, i32* %code, align 4, !tbaa !49
  %cmp46 = icmp slt i32 %82, 0
  br i1 %cmp46, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %for.body.43
  %83 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %83, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.77

if.end.48:                                        ; preds = %for.body.43
  %84 = load i32, i32* %code, align 4, !tbaa !49
  %idxprom49 = sext i32 %84 to i64
  %85 = load %struct.gs_multiple_halftone_s*, %struct.gs_multiple_halftone_s** %pmht.addr, align 8, !tbaa !1
  %components50 = getelementptr inbounds %struct.gs_multiple_halftone_s, %struct.gs_multiple_halftone_s* %85, i32 0, i32 0
  %86 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %components50, align 8, !tbaa !297
  %arrayidx51 = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %86, i64 %idxprom49
  %comp_number52 = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %arrayidx51, i32 0, i32 0
  %87 = load i32, i32* %comp_number52, align 4, !tbaa !298
  %cmp53 = icmp eq i32 %87, 64
  br i1 %cmp53, label %if.then.54, label %if.end.58

if.then.54:                                       ; preds = %if.end.48
  %88 = load i32, i32* %done_Default, align 4, !tbaa !49
  %tobool55 = icmp ne i32 %88, 0
  br i1 %tobool55, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %if.then.54
  store i32 8, i32* %cleanup.dest.slot
  br label %cleanup.77

if.end.57:                                        ; preds = %if.then.54
  store i32 1, i32* %done_Default, align 4, !tbaa !49
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %if.end.48
  %89 = load i32, i32* %code, align 4, !tbaa !49
  %idxprom59 = sext i32 %89 to i64
  %90 = load %struct.gs_multiple_halftone_s*, %struct.gs_multiple_halftone_s** %pmht.addr, align 8, !tbaa !1
  %components60 = getelementptr inbounds %struct.gs_multiple_halftone_s, %struct.gs_multiple_halftone_s* %90, i32 0, i32 0
  %91 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %components60, align 8, !tbaa !297
  %arrayidx61 = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %91, i64 %idxprom59
  store %struct.gs_halftone_component_s* %arrayidx61, %struct.gs_halftone_component_s** %phtc44, align 8, !tbaa !1
  %92 = load %struct.gs_multiple_halftone_s*, %struct.gs_multiple_halftone_s** %pmht.addr, align 8, !tbaa !1
  %get_colorname_string = getelementptr inbounds %struct.gs_multiple_halftone_s, %struct.gs_multiple_halftone_s* %92, i32 0, i32 2
  %93 = load i32 (%struct.gs_memory_s*, i64, i8**, i32*)*, i32 (%struct.gs_memory_s*, i64, i8**, i32*)** %get_colorname_string, align 8, !tbaa !301
  %94 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %94, i32 0, i32 3
  %95 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !98
  %96 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %phtc44, align 8, !tbaa !1
  %cname = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %96, i32 0, i32 1
  %97 = load i32, i32* %cname, align 4, !tbaa !302
  %conv = sext i32 %97 to i64
  %call62 = call i32 %93(%struct.gs_memory_s* %95, i64 %conv, i8** %str, i32* %len) #7
  store i32 %call62, i32* %code, align 4, !tbaa !49
  %cmp63 = icmp slt i32 %call62, 0
  br i1 %cmp63, label %if.then.68, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.58
  %98 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %99 = load i8*, i8** %str, align 8, !tbaa !1
  %100 = load i32, i32* %len, align 4, !tbaa !49
  %call65 = call i32 @pdf_string_to_cos_name(%struct.gx_device_pdf_s* %98, i8* %99, i32 %100, %struct.cos_value_s* %value) #7
  store i32 %call65, i32* %code, align 4, !tbaa !49
  %cmp66 = icmp slt i32 %call65, 0
  br i1 %cmp66, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %lor.lhs.false, %if.end.58
  %101 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %101, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.77

if.end.69:                                        ; preds = %lor.lhs.false
  %102 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call70 = call i32 @cos_value_write(%struct.cos_value_s* %value, %struct.gx_device_pdf_s* %102) #7
  %103 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs71 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %103, i32 0, i32 1
  %free_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs71, i32 0, i32 19
  %104 = load void (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)** %free_string, align 8, !tbaa !303
  %105 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %contents = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %value, i32 0, i32 1
  %chars = bitcast %union.vc_* %contents to %struct.gs_string_s*
  %data = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %chars, i32 0, i32 0
  %106 = load i8*, i8** %data, align 8, !tbaa !166
  %contents72 = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %value, i32 0, i32 1
  %chars73 = bitcast %union.vc_* %contents72 to %struct.gs_string_s*
  %size = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %chars73, i32 0, i32 1
  %107 = load i32, i32* %size, align 4, !tbaa !168
  call void %104(%struct.gs_memory_s* %105, i8* %106, i32 %107, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.104, i32 0, i32 0)) #7
  %108 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %109 = load i32, i32* %i, align 4, !tbaa !49
  %idxprom74 = sext i32 %109 to i64
  %110 = load i64*, i64** %ids, align 8, !tbaa !1
  %arrayidx75 = getelementptr inbounds i64, i64* %110, i64 %idxprom74
  %111 = load i64, i64* %arrayidx75, align 8, !tbaa !57
  %call76 = call i8* @pprintld1(%struct.stream_s* %108, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.106, i32 0, i32 0), i64 %111) #7
  %112 = load i32, i32* %i, align 4, !tbaa !49
  store i32 %112, i32* %last_comp, align 4, !tbaa !49
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.77

cleanup.77:                                       ; preds = %if.end.69, %if.then.68, %if.then.56, %if.then.47
  %113 = bitcast %struct.cos_value_s* %value to i8*
  call void @llvm.lifetime.end(i64 24, i8* %113) #1
  %114 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %114) #1
  %115 = bitcast i8** %str to i8*
  call void @llvm.lifetime.end(i64 8, i8* %115) #1
  %116 = bitcast %struct.gs_halftone_component_s** %phtc44 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %116) #1
  %cleanup.dest.81 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.81, label %cleanup.96 [
    i32 0, label %cleanup.cont.82
    i32 8, label %for.inc.83
  ]

cleanup.cont.82:                                  ; preds = %cleanup.77
  br label %for.inc.83

for.inc.83:                                       ; preds = %cleanup.cont.82, %cleanup.77
  %117 = load i32, i32* %i, align 4, !tbaa !49
  %inc84 = add nsw i32 %117, 1
  store i32 %inc84, i32* %i, align 4, !tbaa !49
  br label %for.cond.40

for.end.85:                                       ; preds = %for.cond.40
  %118 = load i32, i32* %done_Default, align 4, !tbaa !49
  %tobool86 = icmp ne i32 %118, 0
  br i1 %tobool86, label %if.end.91, label %if.then.87

if.then.87:                                       ; preds = %for.end.85
  %119 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %120 = load i32, i32* %last_comp, align 4, !tbaa !49
  %idxprom88 = sext i32 %120 to i64
  %121 = load i64*, i64** %ids, align 8, !tbaa !1
  %arrayidx89 = getelementptr inbounds i64, i64* %121, i64 %idxprom88
  %122 = load i64, i64* %arrayidx89, align 8, !tbaa !57
  %call90 = call i8* @pprintld1(%struct.stream_s* %119, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.107, i32 0, i32 0), i64 %122) #7
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.87, %for.end.85
  %123 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call92 = call i32 @stream_puts(%struct.stream_s* %123, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.68, i32 0, i32 0)) #7
  %124 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs93 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %124, i32 0, i32 1
  %free_object94 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs93, i32 0, i32 2
  %125 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object94, align 8, !tbaa !56
  %126 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %127 = load i64*, i64** %ids, align 8, !tbaa !1
  %128 = bitcast i64* %127 to i8*
  call void %125(%struct.gs_memory_s* %126, i8* %128, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.104, i32 0, i32 0)) #7
  %129 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call95 = call i32 @pdf_end_separate(%struct.gx_device_pdf_s* %129, i32 18) #7
  store i32 %call95, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.96

cleanup.96:                                       ; preds = %if.end.91, %cleanup.77, %cleanup, %if.then
  %130 = bitcast i32* %done_Default to i8*
  call void @llvm.lifetime.end(i64 4, i8* %130) #1
  %131 = bitcast i64** %ids to i8*
  call void @llvm.lifetime.end(i64 8, i8* %131) #1
  %132 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %132) #1
  %133 = bitcast i32* %last_comp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %133) #1
  %134 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %134) #1
  %135 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %135) #1
  %136 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %136) #1
  %137 = load i32, i32* %retval
  ret i32 %137
}

declare i64 @pdf_begin_separate(%struct.gx_device_pdf_s*, i32) #3

declare i8* @pprintld2(%struct.stream_s*, i8*, i64, i64) #3

declare i32 @pdf_end_separate(%struct.gx_device_pdf_s*, i32) #3

; Function Attrs: nounwind uwtable
define internal i32 @pdf_write_transfer(%struct.gx_device_pdf_s* %pdev, %struct.gx_transfer_map_s* %map, i8* %key, i8* %ids) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %map.addr = alloca %struct.gx_transfer_map_s*, align 8
  %key.addr = alloca i8*, align 8
  %ids.addr = alloca i8*, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gx_transfer_map_s* %map, %struct.gx_transfer_map_s** %map.addr, align 8, !tbaa !1
  store i8* %key, i8** %key.addr, align 8, !tbaa !1
  store i8* %ids, i8** %ids.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %1 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %map.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %ids.addr, align 8, !tbaa !1
  %call = call i32 @pdf_write_transfer_map(%struct.gx_device_pdf_s* %0, %struct.gx_transfer_map_s* %1, i32 0, i32 1, i8* %2, i8* %3) #7
  ret i32 %call
}

declare i32 @gs_screen_order_alloc(%struct.gx_ht_order_s*, %struct.gs_memory_s*) #3

declare i32 @gs_screen_enum_init_memory(%struct.gs_screen_enum_s*, %struct.gx_ht_order_s*, %struct.gs_state_s*, %struct.gs_screen_halftone_s*, %struct.gs_memory_s*) #3

declare i32 @gs_screen_currentpoint(%struct.gs_screen_enum_s*, %struct.gs_point_s*) #3

declare i32 @gs_screen_next(%struct.gs_screen_enum_s*, double) #3

; Function Attrs: nounwind uwtable
define internal i32 @compare_gx_ht_order_levels(%struct.gx_ht_order_s* %order1, %struct.gx_ht_order_s* %order2) #0 {
entry:
  %retval = alloca i32, align 4
  %order1.addr = alloca %struct.gx_ht_order_s*, align 8
  %order2.addr = alloca %struct.gx_ht_order_s*, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_ht_order_s* %order1, %struct.gx_ht_order_s** %order1.addr, align 8, !tbaa !1
  store %struct.gx_ht_order_s* %order2, %struct.gx_ht_order_s** %order2.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %i, align 4, !tbaa !49
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !49
  %2 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %order1.addr, align 8, !tbaa !1
  %num_levels = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %2, i32 0, i32 8
  %3 = load i32, i32* %num_levels, align 4, !tbaa !304
  %cmp = icmp ult i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !tbaa !49
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %order1.addr, align 8, !tbaa !1
  %levels = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %5, i32 0, i32 12
  %6 = load i32*, i32** %levels, align 8, !tbaa !305
  %arrayidx = getelementptr inbounds i32, i32* %6, i64 %idxprom
  %7 = load i32, i32* %arrayidx, align 4, !tbaa !49
  %8 = load i32, i32* %i, align 4, !tbaa !49
  %idxprom1 = sext i32 %8 to i64
  %9 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %order2.addr, align 8, !tbaa !1
  %levels2 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %9, i32 0, i32 12
  %10 = load i32*, i32** %levels2, align 8, !tbaa !305
  %arrayidx3 = getelementptr inbounds i32, i32* %10, i64 %idxprom1
  %11 = load i32, i32* %arrayidx3, align 4, !tbaa !49
  %cmp4 = icmp ne i32 %7, %11
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i32, i32* %i, align 4, !tbaa !49
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4, !tbaa !49
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %13 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #1
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #5

declare void @gx_ht_order_release(%struct.gx_ht_order_s*, %struct.gs_memory_s*, i32) #3

; Function Attrs: nounwind uwtable
define internal i32 @pdf_write_spot_function(%struct.gx_device_pdf_s* %pdev, %struct.gx_ht_order_s* %porder, i64* %pid) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %porder.addr = alloca %struct.gx_ht_order_s*, align 8
  %pid.addr = alloca i64*, align 8
  %w = alloca i32, align 4
  %h = alloca i32, align 4
  %num_bits = alloca i32, align 4
  %params = alloca %struct.gs_function_Sd_params_s, align 8
  %size = alloca [2 x i32], align 4
  %mem = alloca %struct.gs_memory_s*, align 8
  %values = alloca i8*, align 8
  %pfn = alloca %struct.gs_function_s*, align 8
  %i = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %pt = alloca %struct.gs_int_point_s, align 4
  %value = alloca i32, align 4
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gx_ht_order_s* %porder, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  store i64* %pid, i64** %pid.addr, align 8, !tbaa !1
  %0 = bitcast i32* %w to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %1, i32 0, i32 1
  %2 = load i16, i16* %width, align 2, !tbaa !306
  %conv = zext i16 %2 to i32
  store i32 %conv, i32* %w, align 4, !tbaa !49
  %3 = bitcast i32* %h to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %4, i32 0, i32 2
  %5 = load i16, i16* %height, align 2, !tbaa !307
  %conv1 = zext i16 %5 to i32
  store i32 %conv1, i32* %h, align 4, !tbaa !49
  %6 = bitcast i32* %num_bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %num_bits2 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %7, i32 0, i32 9
  %8 = load i32, i32* %num_bits2, align 4, !tbaa !269
  store i32 %8, i32* %num_bits, align 4, !tbaa !49
  %9 = bitcast %struct.gs_function_Sd_params_s* %params to i8*
  call void @llvm.lifetime.start(i64 136, i8* %9) #1
  %10 = bitcast [2 x i32]* %size to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %12, i32 0, i32 43
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory, align 8, !tbaa !51
  store %struct.gs_memory_s* %13, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %14 = bitcast i8** %values to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = bitcast %struct.gs_function_s** %pfn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  store i32 0, i32* %code, align 4, !tbaa !49
  %array_size = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 13
  store i32 0, i32* %array_size, align 4, !tbaa !308
  %m = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 0
  store i32 2, i32* %m, align 4, !tbaa !225
  %Domain = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 1
  store float* getelementptr inbounds ([4 x float], [4 x float]* @pdf_write_spot_function.domain_spot, i32 0, i32 0), float** %Domain, align 8, !tbaa !228
  %n = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 2
  store i32 1, i32* %n, align 4, !tbaa !229
  %Range = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 3
  store float* getelementptr inbounds ([4 x float], [4 x float]* @pdf_write_spot_function.range_spot, i32 0, i32 0), float** %Range, align 8, !tbaa !230
  %Order = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 4
  store i32 0, i32* %Order, align 4, !tbaa !231
  %18 = load i32, i32* %num_bits, align 4, !tbaa !49
  %cmp = icmp ugt i32 %18, 65536
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.46

if.end:                                           ; preds = %entry
  %BitsPerSample = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 6
  store i32 16, i32* %BitsPerSample, align 4, !tbaa !234
  %Encode = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 7
  store float* null, float** %Encode, align 8, !tbaa !235
  %Decode = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 8
  store float* null, float** %Decode, align 8, !tbaa !236
  %19 = load i32, i32* %w, align 4, !tbaa !49
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %size, i32 0, i64 0
  store i32 %19, i32* %arrayidx, align 4, !tbaa !49
  %20 = load i32, i32* %h, align 4, !tbaa !49
  %arrayidx4 = getelementptr inbounds [2 x i32], [2 x i32]* %size, i32 0, i64 1
  store i32 %20, i32* %arrayidx4, align 4, !tbaa !49
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %size, i32 0, i32 0
  %Size = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 9
  store i32* %arraydecay, i32** %Size, align 8, !tbaa !237
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %21, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %22 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !294
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %24 = load i32, i32* %num_bits, align 4, !tbaa !49
  %call = call i8* %22(%struct.gs_memory_s* %23, i32 %24, i32 2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.95, i32 0, i32 0)) #7
  store i8* %call, i8** %values, align 8, !tbaa !1
  %25 = load i8*, i8** %values, align 8, !tbaa !1
  %cmp5 = icmp eq i8* %25, null
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.46

if.end.8:                                         ; preds = %if.end
  store i32 0, i32* %i, align 4, !tbaa !49
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.8
  %26 = load i32, i32* %i, align 4, !tbaa !49
  %27 = load i32, i32* %num_bits, align 4, !tbaa !49
  %cmp9 = icmp ult i32 %26, %27
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = bitcast %struct.gs_int_point_s* %pt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %28) #1
  %29 = bitcast i32* %value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #1
  %30 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %procs11 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %30, i32 0, i32 10
  %31 = load %struct.gx_ht_order_procs_s*, %struct.gx_ht_order_procs_s** %procs11, align 8, !tbaa !270
  %bit_index = getelementptr inbounds %struct.gx_ht_order_procs_s, %struct.gx_ht_order_procs_s* %31, i32 0, i32 2
  %32 = load i32 (%struct.gx_ht_order_s*, i32, %struct.gs_int_point_s*)*, i32 (%struct.gx_ht_order_s*, i32, %struct.gs_int_point_s*)** %bit_index, align 8, !tbaa !309
  %33 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %34 = load i32, i32* %i, align 4, !tbaa !49
  %call12 = call i32 %32(%struct.gx_ht_order_s* %33, i32 %34, %struct.gs_int_point_s* %pt) #7
  store i32 %call12, i32* %code, align 4, !tbaa !49
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %for.body
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %for.body
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %pt, i32 0, i32 1
  %35 = load i32, i32* %y, align 4, !tbaa !215
  %36 = load i32, i32* %w, align 4, !tbaa !49
  %mul = mul nsw i32 %35, %36
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %pt, i32 0, i32 0
  %37 = load i32, i32* %x, align 4, !tbaa !214
  %add = add nsw i32 %mul, %37
  store i32 %add, i32* %value, align 4, !tbaa !49
  %38 = load i32, i32* %value, align 4, !tbaa !49
  %shr = ashr i32 %38, 8
  %conv17 = trunc i32 %shr to i8
  %39 = load i32, i32* %i, align 4, !tbaa !49
  %mul18 = mul i32 %39, 2
  %idxprom = zext i32 %mul18 to i64
  %40 = load i8*, i8** %values, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds i8, i8* %40, i64 %idxprom
  store i8 %conv17, i8* %arrayidx19, align 1, !tbaa !91
  %41 = load i32, i32* %value, align 4, !tbaa !49
  %conv20 = trunc i32 %41 to i8
  %42 = load i32, i32* %i, align 4, !tbaa !49
  %mul21 = mul i32 %42, 2
  %add22 = add i32 %mul21, 1
  %idxprom23 = zext i32 %add22 to i64
  %43 = load i8*, i8** %values, align 8, !tbaa !1
  %arrayidx24 = getelementptr inbounds i8, i8* %43, i64 %idxprom23
  store i8 %conv20, i8* %arrayidx24, align 1, !tbaa !91
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.16, %if.then.15
  %44 = bitcast i32* %value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #1
  %45 = bitcast %struct.gs_int_point_s* %pt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %46 = load i32, i32* %i, align 4, !tbaa !49
  %inc = add i32 %46, 1
  store i32 %inc, i32* %i, align 4, !tbaa !49
  br label %for.cond

for.end:                                          ; preds = %cleanup, %for.cond
  %DataSource = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 5
  %type = getelementptr inbounds %struct.gs_data_source_s, %struct.gs_data_source_s* %DataSource, i32 0, i32 1
  store i32 1, i32* %type, align 4, !tbaa !310
  %47 = load i8*, i8** %values, align 8, !tbaa !1
  %DataSource26 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 5
  %data = getelementptr inbounds %struct.gs_data_source_s, %struct.gs_data_source_s* %DataSource26, i32 0, i32 2
  %str = bitcast %union.d_* %data to %struct.gs_const_string_s*
  %data27 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str, i32 0, i32 0
  store i8* %47, i8** %data27, align 8, !tbaa !233
  %48 = load i32, i32* %num_bits, align 4, !tbaa !49
  %conv28 = zext i32 %48 to i64
  %mul29 = mul i64 1, %conv28
  %conv30 = trunc i64 %mul29 to i32
  %DataSource31 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 5
  %data32 = getelementptr inbounds %struct.gs_data_source_s, %struct.gs_data_source_s* %DataSource31, i32 0, i32 2
  %str33 = bitcast %union.d_* %data32 to %struct.gs_const_string_s*
  %size34 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str33, i32 0, i32 1
  store i32 %conv30, i32* %size34, align 4, !tbaa !311
  %DataSource35 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 5
  %access = getelementptr inbounds %struct.gs_data_source_s, %struct.gs_data_source_s* %DataSource35, i32 0, i32 0
  store i32 (%struct.gs_data_source_s*, i64, i32, i8*, i8**)* @data_source_access_bytes, i32 (%struct.gs_data_source_s*, i64, i32, i8*, i8**)** %access, align 8, !tbaa !312
  %49 = load i32, i32* %code, align 4, !tbaa !49
  %cmp36 = icmp sge i32 %49, 0
  br i1 %cmp36, label %land.lhs.true, label %if.end.44

land.lhs.true:                                    ; preds = %for.end
  %50 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call38 = call i32 @gs_function_Sd_init(%struct.gs_function_s** %pfn, %struct.gs_function_Sd_params_s* %params, %struct.gs_memory_s* %50) #7
  store i32 %call38, i32* %code, align 4, !tbaa !49
  %cmp39 = icmp sge i32 %call38, 0
  br i1 %cmp39, label %if.then.41, label %if.end.44

if.then.41:                                       ; preds = %land.lhs.true
  %51 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %52 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn, align 8, !tbaa !1
  %53 = load i64*, i64** %pid.addr, align 8, !tbaa !1
  %call42 = call i32 @pdf_write_function(%struct.gx_device_pdf_s* %51, %struct.gs_function_s* %52, i64* %53) #7
  store i32 %call42, i32* %code, align 4, !tbaa !49
  %54 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn, align 8, !tbaa !1
  %head = getelementptr inbounds %struct.gs_function_s, %struct.gs_function_s* %54, i32 0, i32 0
  %procs43 = getelementptr inbounds %struct.gs_function_head_s, %struct.gs_function_head_s* %head, i32 0, i32 1
  %free = getelementptr inbounds %struct.gs_function_procs_s, %struct.gs_function_procs_s* %procs43, i32 0, i32 6
  %55 = load void (%struct.gs_function_s*, i32, %struct.gs_memory_s*)*, void (%struct.gs_function_s*, i32, %struct.gs_memory_s*)** %free, align 8, !tbaa !238
  %56 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn, align 8, !tbaa !1
  %57 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  call void %55(%struct.gs_function_s* %56, i32 0, %struct.gs_memory_s* %57) #7
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.41, %land.lhs.true, %for.end
  %58 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs45 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %58, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs45, i32 0, i32 2
  %59 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !56
  %60 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %61 = load i8*, i8** %values, align 8, !tbaa !1
  call void %59(%struct.gs_memory_s* %60, i8* %61, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.95, i32 0, i32 0)) #7
  %62 = load i32, i32* %code, align 4, !tbaa !49
  store i32 %62, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.46

cleanup.46:                                       ; preds = %if.end.44, %if.then.7, %if.then
  %63 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #1
  %64 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #1
  %65 = bitcast %struct.gs_function_s** %pfn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #1
  %66 = bitcast i8** %values to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #1
  %67 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #1
  %68 = bitcast [2 x i32]* %size to i8*
  call void @llvm.lifetime.end(i64 8, i8* %68) #1
  %69 = bitcast %struct.gs_function_Sd_params_s* %params to i8*
  call void @llvm.lifetime.end(i64 136, i8* %69) #1
  %70 = bitcast i32* %num_bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #1
  %71 = bitcast i32* %h to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #1
  %72 = bitcast i32* %w to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #1
  %73 = load i32, i32* %retval
  ret i32 %73

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare i8* @pprintg2(%struct.stream_s*, i8*, double, double) #3

; Function Attrs: nounwind uwtable
define internal double @ht_Round(double %xf, double %yf) #0 {
entry:
  %retval = alloca double, align 8
  %xf.addr = alloca double, align 8
  %yf.addr = alloca double, align 8
  %x = alloca float, align 4
  %y = alloca float, align 4
  %xabs = alloca float, align 4
  %yabs = alloca float, align 4
  %cleanup.dest.slot = alloca i32
  store double %xf, double* %xf.addr, align 8, !tbaa !220
  store double %yf, double* %yf.addr, align 8, !tbaa !220
  %0 = bitcast float* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load double, double* %xf.addr, align 8, !tbaa !220
  %conv = fptrunc double %1 to float
  store float %conv, float* %x, align 4, !tbaa !94
  %2 = bitcast float* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load double, double* %yf.addr, align 8, !tbaa !220
  %conv1 = fptrunc double %3 to float
  store float %conv1, float* %y, align 4, !tbaa !94
  %4 = bitcast float* %xabs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load float, float* %x, align 4, !tbaa !94
  %conv2 = fpext float %5 to double
  %call = call double @fabs(double %conv2) #10
  %conv3 = fptrunc double %call to float
  store float %conv3, float* %xabs, align 4, !tbaa !94
  %6 = bitcast float* %yabs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load float, float* %y, align 4, !tbaa !94
  %conv4 = fpext float %7 to double
  %call5 = call double @fabs(double %conv4) #10
  %conv6 = fptrunc double %call5 to float
  store float %conv6, float* %yabs, align 4, !tbaa !94
  %8 = load float, float* %xabs, align 4, !tbaa !94
  %9 = load float, float* %yabs, align 4, !tbaa !94
  %add = fadd float %8, %9
  %conv7 = fpext float %add to double
  %call8 = call float @d2f(double %conv7) #7
  %cmp = fcmp ole float %call8, 1.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load float, float* %x, align 4, !tbaa !94
  %11 = load float, float* %x, align 4, !tbaa !94
  %mul = fmul float %10, %11
  %conv10 = fpext float %mul to double
  %call11 = call float @d2f(double %conv10) #7
  %12 = load float, float* %y, align 4, !tbaa !94
  %13 = load float, float* %y, align 4, !tbaa !94
  %mul12 = fmul float %12, %13
  %conv13 = fpext float %mul12 to double
  %call14 = call float @d2f(double %conv13) #7
  %add15 = fadd float %call11, %call14
  %conv16 = fpext float %add15 to double
  %call17 = call float @d2f(double %conv16) #7
  %sub = fsub float 1.000000e+00, %call17
  %conv18 = fpext float %sub to double
  %call19 = call float @d2f(double %conv18) #7
  %conv20 = fpext float %call19 to double
  store double %conv20, double* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = load float, float* %xabs, align 4, !tbaa !94
  %sub21 = fsub float %14, 1.000000e+00
  store float %sub21, float* %xabs, align 4, !tbaa !94
  %15 = load float, float* %yabs, align 4, !tbaa !94
  %sub22 = fsub float %15, 1.000000e+00
  store float %sub22, float* %yabs, align 4, !tbaa !94
  %16 = load float, float* %xabs, align 4, !tbaa !94
  %17 = load float, float* %xabs, align 4, !tbaa !94
  %mul23 = fmul float %16, %17
  %conv24 = fpext float %mul23 to double
  %call25 = call float @d2f(double %conv24) #7
  %18 = load float, float* %yabs, align 4, !tbaa !94
  %19 = load float, float* %yabs, align 4, !tbaa !94
  %mul26 = fmul float %18, %19
  %conv27 = fpext float %mul26 to double
  %call28 = call float @d2f(double %conv27) #7
  %add29 = fadd float %call25, %call28
  %conv30 = fpext float %add29 to double
  %call31 = call float @d2f(double %conv30) #7
  %sub32 = fsub float %call31, 1.000000e+00
  %conv33 = fpext float %sub32 to double
  %call34 = call float @d2f(double %conv33) #7
  %conv35 = fpext float %call34 to double
  store double %conv35, double* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %20 = bitcast float* %yabs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
  %21 = bitcast float* %xabs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  %22 = bitcast float* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #1
  %23 = bitcast float* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #1
  %24 = load double, double* %retval
  ret double %24
}

; Function Attrs: nounwind uwtable
define internal double @ht_Diamond(double %xf, double %yf) #0 {
entry:
  %retval = alloca double, align 8
  %xf.addr = alloca double, align 8
  %yf.addr = alloca double, align 8
  %x = alloca float, align 4
  %y = alloca float, align 4
  %xabs = alloca float, align 4
  %yabs = alloca float, align 4
  %cleanup.dest.slot = alloca i32
  store double %xf, double* %xf.addr, align 8, !tbaa !220
  store double %yf, double* %yf.addr, align 8, !tbaa !220
  %0 = bitcast float* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load double, double* %xf.addr, align 8, !tbaa !220
  %conv = fptrunc double %1 to float
  store float %conv, float* %x, align 4, !tbaa !94
  %2 = bitcast float* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load double, double* %yf.addr, align 8, !tbaa !220
  %conv1 = fptrunc double %3 to float
  store float %conv1, float* %y, align 4, !tbaa !94
  %4 = bitcast float* %xabs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load float, float* %x, align 4, !tbaa !94
  %conv2 = fpext float %5 to double
  %call = call double @fabs(double %conv2) #10
  %conv3 = fptrunc double %call to float
  store float %conv3, float* %xabs, align 4, !tbaa !94
  %6 = bitcast float* %yabs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load float, float* %y, align 4, !tbaa !94
  %conv4 = fpext float %7 to double
  %call5 = call double @fabs(double %conv4) #10
  %conv6 = fptrunc double %call5 to float
  store float %conv6, float* %yabs, align 4, !tbaa !94
  %8 = load float, float* %xabs, align 4, !tbaa !94
  %9 = load float, float* %yabs, align 4, !tbaa !94
  %add = fadd float %8, %9
  %conv7 = fpext float %add to double
  %call8 = call float @d2f(double %conv7) #7
  %conv9 = fpext float %call8 to double
  %cmp = fcmp ole double %conv9, 7.500000e-01
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load float, float* %x, align 4, !tbaa !94
  %11 = load float, float* %x, align 4, !tbaa !94
  %mul = fmul float %10, %11
  %conv11 = fpext float %mul to double
  %call12 = call float @d2f(double %conv11) #7
  %12 = load float, float* %y, align 4, !tbaa !94
  %13 = load float, float* %y, align 4, !tbaa !94
  %mul13 = fmul float %12, %13
  %conv14 = fpext float %mul13 to double
  %call15 = call float @d2f(double %conv14) #7
  %add16 = fadd float %call12, %call15
  %conv17 = fpext float %add16 to double
  %call18 = call float @d2f(double %conv17) #7
  %sub = fsub float 1.000000e+00, %call18
  %conv19 = fpext float %sub to double
  %call20 = call float @d2f(double %conv19) #7
  %conv21 = fpext float %call20 to double
  store double %conv21, double* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = load float, float* %xabs, align 4, !tbaa !94
  %15 = load float, float* %yabs, align 4, !tbaa !94
  %add22 = fadd float %14, %15
  %conv23 = fpext float %add22 to double
  %call24 = call float @d2f(double %conv23) #7
  %call25 = call float @d2f(double 1.230000e+00) #7
  %cmp26 = fcmp ole float %call24, %call25
  br i1 %cmp26, label %if.then.28, label %if.end.40

if.then.28:                                       ; preds = %if.end
  %call29 = call float @d2f(double 8.500000e-01) #7
  %16 = load float, float* %xabs, align 4, !tbaa !94
  %mul30 = fmul float %call29, %16
  %conv31 = fpext float %mul30 to double
  %call32 = call float @d2f(double %conv31) #7
  %17 = load float, float* %yabs, align 4, !tbaa !94
  %add33 = fadd float %call32, %17
  %conv34 = fpext float %add33 to double
  %call35 = call float @d2f(double %conv34) #7
  %sub36 = fsub float 1.000000e+00, %call35
  %conv37 = fpext float %sub36 to double
  %call38 = call float @d2f(double %conv37) #7
  %conv39 = fpext float %call38 to double
  store double %conv39, double* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.40:                                        ; preds = %if.end
  %18 = load float, float* %xabs, align 4, !tbaa !94
  %sub41 = fsub float %18, 1.000000e+00
  store float %sub41, float* %xabs, align 4, !tbaa !94
  %19 = load float, float* %yabs, align 4, !tbaa !94
  %sub42 = fsub float %19, 1.000000e+00
  store float %sub42, float* %yabs, align 4, !tbaa !94
  %20 = load float, float* %xabs, align 4, !tbaa !94
  %21 = load float, float* %xabs, align 4, !tbaa !94
  %mul43 = fmul float %20, %21
  %conv44 = fpext float %mul43 to double
  %call45 = call float @d2f(double %conv44) #7
  %22 = load float, float* %yabs, align 4, !tbaa !94
  %23 = load float, float* %yabs, align 4, !tbaa !94
  %mul46 = fmul float %22, %23
  %conv47 = fpext float %mul46 to double
  %call48 = call float @d2f(double %conv47) #7
  %add49 = fadd float %call45, %call48
  %conv50 = fpext float %add49 to double
  %call51 = call float @d2f(double %conv50) #7
  %sub52 = fsub float %call51, 1.000000e+00
  %conv53 = fpext float %sub52 to double
  %call54 = call float @d2f(double %conv53) #7
  %conv55 = fpext float %call54 to double
  store double %conv55, double* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.40, %if.then.28, %if.then
  %24 = bitcast float* %yabs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  %25 = bitcast float* %xabs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  %26 = bitcast float* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  %27 = bitcast float* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  %28 = load double, double* %retval
  ret double %28
}

; Function Attrs: nounwind uwtable
define internal double @ht_Ellipse(double %xf, double %yf) #0 {
entry:
  %retval = alloca double, align 8
  %xf.addr = alloca double, align 8
  %yf.addr = alloca double, align 8
  %x = alloca float, align 4
  %y = alloca float, align 4
  %xabs = alloca float, align 4
  %yabs = alloca float, align 4
  %w = alloca float, align 4
  %cleanup.dest.slot = alloca i32
  store double %xf, double* %xf.addr, align 8, !tbaa !220
  store double %yf, double* %yf.addr, align 8, !tbaa !220
  %0 = bitcast float* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load double, double* %xf.addr, align 8, !tbaa !220
  %conv = fptrunc double %1 to float
  store float %conv, float* %x, align 4, !tbaa !94
  %2 = bitcast float* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load double, double* %yf.addr, align 8, !tbaa !220
  %conv1 = fptrunc double %3 to float
  store float %conv1, float* %y, align 4, !tbaa !94
  %4 = bitcast float* %xabs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load float, float* %x, align 4, !tbaa !94
  %conv2 = fpext float %5 to double
  %call = call double @fabs(double %conv2) #10
  %conv3 = fptrunc double %call to float
  store float %conv3, float* %xabs, align 4, !tbaa !94
  %6 = bitcast float* %yabs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load float, float* %y, align 4, !tbaa !94
  %conv4 = fpext float %7 to double
  %call5 = call double @fabs(double %conv4) #10
  %conv6 = fptrunc double %call5 to float
  store float %conv6, float* %yabs, align 4, !tbaa !94
  %8 = bitcast float* %w to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load float, float* %xabs, align 4, !tbaa !94
  %mul = fmul float 3.000000e+00, %9
  %conv7 = fpext float %mul to double
  %call8 = call float @d2f(double %conv7) #7
  %10 = load float, float* %yabs, align 4, !tbaa !94
  %mul9 = fmul float 4.000000e+00, %10
  %conv10 = fpext float %mul9 to double
  %call11 = call float @d2f(double %conv10) #7
  %add = fadd float %call8, %call11
  %conv12 = fpext float %add to double
  %call13 = call float @d2f(double %conv12) #7
  %sub = fsub float %call13, 3.000000e+00
  store float %sub, float* %w, align 4, !tbaa !94
  %11 = load float, float* %w, align 4, !tbaa !94
  %cmp = fcmp olt float %11, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load float, float* %yabs, align 4, !tbaa !94
  %conv15 = fpext float %12 to double
  %div = fdiv double %conv15, 7.500000e-01
  %conv16 = fptrunc double %div to float
  store float %conv16, float* %yabs, align 4, !tbaa !94
  %13 = load float, float* %x, align 4, !tbaa !94
  %14 = load float, float* %x, align 4, !tbaa !94
  %mul17 = fmul float %13, %14
  %conv18 = fpext float %mul17 to double
  %call19 = call float @d2f(double %conv18) #7
  %15 = load float, float* %yabs, align 4, !tbaa !94
  %16 = load float, float* %yabs, align 4, !tbaa !94
  %mul20 = fmul float %15, %16
  %conv21 = fpext float %mul20 to double
  %call22 = call float @d2f(double %conv21) #7
  %add23 = fadd float %call19, %call22
  %div24 = fdiv float %add23, 4.000000e+00
  %conv25 = fpext float %div24 to double
  %call26 = call float @d2f(double %conv25) #7
  %sub27 = fsub float 1.000000e+00, %call26
  %conv28 = fpext float %sub27 to double
  %call29 = call float @d2f(double %conv28) #7
  %conv30 = fpext float %call29 to double
  store double %conv30, double* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %17 = load float, float* %w, align 4, !tbaa !94
  %cmp31 = fcmp ogt float %17, 1.000000e+00
  br i1 %cmp31, label %if.then.33, label %if.end.55

if.then.33:                                       ; preds = %if.end
  %18 = load float, float* %xabs, align 4, !tbaa !94
  %sub34 = fsub float 1.000000e+00, %18
  store float %sub34, float* %xabs, align 4, !tbaa !94
  %19 = load float, float* %yabs, align 4, !tbaa !94
  %sub35 = fsub float 1.000000e+00, %19
  %conv36 = fpext float %sub35 to double
  %call37 = call float @d2f(double %conv36) #7
  %conv38 = fpext float %call37 to double
  %div39 = fdiv double %conv38, 7.500000e-01
  %conv40 = fptrunc double %div39 to float
  store float %conv40, float* %yabs, align 4, !tbaa !94
  %20 = load float, float* %xabs, align 4, !tbaa !94
  %21 = load float, float* %xabs, align 4, !tbaa !94
  %mul41 = fmul float %20, %21
  %conv42 = fpext float %mul41 to double
  %call43 = call float @d2f(double %conv42) #7
  %22 = load float, float* %yabs, align 4, !tbaa !94
  %23 = load float, float* %yabs, align 4, !tbaa !94
  %mul44 = fmul float %22, %23
  %conv45 = fpext float %mul44 to double
  %call46 = call float @d2f(double %conv45) #7
  %add47 = fadd float %call43, %call46
  %div48 = fdiv float %add47, 4.000000e+00
  %conv49 = fpext float %div48 to double
  %call50 = call float @d2f(double %conv49) #7
  %sub51 = fsub float %call50, 1.000000e+00
  %conv52 = fpext float %sub51 to double
  %call53 = call float @d2f(double %conv52) #7
  %conv54 = fpext float %call53 to double
  store double %conv54, double* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.55:                                        ; preds = %if.end
  %24 = load float, float* %w, align 4, !tbaa !94
  %conv56 = fpext float %24 to double
  %sub57 = fsub double 5.000000e-01, %conv56
  %call58 = call float @d2f(double %sub57) #7
  %conv59 = fpext float %call58 to double
  store double %conv59, double* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.55, %if.then.33, %if.then
  %25 = bitcast float* %w to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  %26 = bitcast float* %yabs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  %27 = bitcast float* %xabs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  %28 = bitcast float* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  %29 = bitcast float* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #1
  %30 = load double, double* %retval
  ret double %30
}

; Function Attrs: nounwind uwtable
define internal double @ht_EllipseA(double %xd, double %yd) #0 {
entry:
  %xd.addr = alloca double, align 8
  %yd.addr = alloca double, align 8
  %x = alloca float, align 4
  %y = alloca float, align 4
  store double %xd, double* %xd.addr, align 8, !tbaa !220
  store double %yd, double* %yd.addr, align 8, !tbaa !220
  %0 = bitcast float* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load double, double* %xd.addr, align 8, !tbaa !220
  %conv = fptrunc double %1 to float
  store float %conv, float* %x, align 4, !tbaa !94
  %2 = bitcast float* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load double, double* %yd.addr, align 8, !tbaa !220
  %conv1 = fptrunc double %3 to float
  store float %conv1, float* %y, align 4, !tbaa !94
  %4 = load float, float* %x, align 4, !tbaa !94
  %5 = load float, float* %x, align 4, !tbaa !94
  %mul = fmul float %4, %5
  %conv2 = fpext float %mul to double
  %6 = load float, float* %y, align 4, !tbaa !94
  %conv3 = fpext float %6 to double
  %mul4 = fmul double 9.000000e-01, %conv3
  %7 = load float, float* %y, align 4, !tbaa !94
  %conv5 = fpext float %7 to double
  %mul6 = fmul double %mul4, %conv5
  %add = fadd double %conv2, %mul6
  %sub = fsub double 1.000000e+00, %add
  %call = call float @d2f(double %sub) #7
  %conv7 = fpext float %call to double
  %8 = bitcast float* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #1
  %9 = bitcast float* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %9) #1
  ret double %conv7
}

; Function Attrs: nounwind uwtable
define internal double @ht_InvertedEllipseA(double %xd, double %yd) #0 {
entry:
  %xd.addr = alloca double, align 8
  %yd.addr = alloca double, align 8
  %x = alloca float, align 4
  %y = alloca float, align 4
  store double %xd, double* %xd.addr, align 8, !tbaa !220
  store double %yd, double* %yd.addr, align 8, !tbaa !220
  %0 = bitcast float* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load double, double* %xd.addr, align 8, !tbaa !220
  %conv = fptrunc double %1 to float
  store float %conv, float* %x, align 4, !tbaa !94
  %2 = bitcast float* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load double, double* %yd.addr, align 8, !tbaa !220
  %conv1 = fptrunc double %3 to float
  store float %conv1, float* %y, align 4, !tbaa !94
  %4 = load float, float* %x, align 4, !tbaa !94
  %5 = load float, float* %x, align 4, !tbaa !94
  %mul = fmul float %4, %5
  %conv2 = fpext float %mul to double
  %6 = load float, float* %y, align 4, !tbaa !94
  %conv3 = fpext float %6 to double
  %mul4 = fmul double 9.000000e-01, %conv3
  %7 = load float, float* %y, align 4, !tbaa !94
  %conv5 = fpext float %7 to double
  %mul6 = fmul double %mul4, %conv5
  %add = fadd double %conv2, %mul6
  %sub = fsub double %add, 1.000000e+00
  %call = call float @d2f(double %sub) #7
  %conv7 = fpext float %call to double
  %8 = bitcast float* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #1
  %9 = bitcast float* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %9) #1
  ret double %conv7
}

; Function Attrs: nounwind uwtable
define internal double @ht_EllipseB(double %xd, double %yd) #0 {
entry:
  %xd.addr = alloca double, align 8
  %yd.addr = alloca double, align 8
  %x = alloca float, align 4
  %y = alloca float, align 4
  store double %xd, double* %xd.addr, align 8, !tbaa !220
  store double %yd, double* %yd.addr, align 8, !tbaa !220
  %0 = bitcast float* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load double, double* %xd.addr, align 8, !tbaa !220
  %conv = fptrunc double %1 to float
  store float %conv, float* %x, align 4, !tbaa !94
  %2 = bitcast float* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load double, double* %yd.addr, align 8, !tbaa !220
  %conv1 = fptrunc double %3 to float
  store float %conv1, float* %y, align 4, !tbaa !94
  %4 = load float, float* %x, align 4, !tbaa !94
  %5 = load float, float* %x, align 4, !tbaa !94
  %mul = fmul float %4, %5
  %conv2 = fpext float %mul to double
  %6 = load float, float* %y, align 4, !tbaa !94
  %conv3 = fpext float %6 to double
  %mul4 = fmul double 6.250000e-01, %conv3
  %7 = load float, float* %y, align 4, !tbaa !94
  %conv5 = fpext float %7 to double
  %mul6 = fmul double %mul4, %conv5
  %add = fadd double %conv2, %mul6
  %call = call double @sqrt(double %add) #8
  %sub = fsub double 1.000000e+00, %call
  %call7 = call float @d2f(double %sub) #7
  %conv8 = fpext float %call7 to double
  %8 = bitcast float* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #1
  %9 = bitcast float* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %9) #1
  ret double %conv8
}

; Function Attrs: nounwind uwtable
define internal double @ht_EllipseC(double %xd, double %yd) #0 {
entry:
  %xd.addr = alloca double, align 8
  %yd.addr = alloca double, align 8
  %x = alloca float, align 4
  %y = alloca float, align 4
  store double %xd, double* %xd.addr, align 8, !tbaa !220
  store double %yd, double* %yd.addr, align 8, !tbaa !220
  %0 = bitcast float* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load double, double* %xd.addr, align 8, !tbaa !220
  %conv = fptrunc double %1 to float
  store float %conv, float* %x, align 4, !tbaa !94
  %2 = bitcast float* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load double, double* %yd.addr, align 8, !tbaa !220
  %conv1 = fptrunc double %3 to float
  store float %conv1, float* %y, align 4, !tbaa !94
  %4 = load float, float* %x, align 4, !tbaa !94
  %conv2 = fpext float %4 to double
  %mul = fmul double 9.000000e-01, %conv2
  %5 = load float, float* %x, align 4, !tbaa !94
  %conv3 = fpext float %5 to double
  %mul4 = fmul double %mul, %conv3
  %6 = load float, float* %y, align 4, !tbaa !94
  %7 = load float, float* %y, align 4, !tbaa !94
  %mul5 = fmul float %6, %7
  %conv6 = fpext float %mul5 to double
  %add = fadd double %mul4, %conv6
  %sub = fsub double 1.000000e+00, %add
  %call = call float @d2f(double %sub) #7
  %conv7 = fpext float %call to double
  %8 = bitcast float* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #1
  %9 = bitcast float* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %9) #1
  ret double %conv7
}

; Function Attrs: nounwind uwtable
define internal double @ht_InvertedEllipseC(double %xd, double %yd) #0 {
entry:
  %xd.addr = alloca double, align 8
  %yd.addr = alloca double, align 8
  %x = alloca float, align 4
  %y = alloca float, align 4
  store double %xd, double* %xd.addr, align 8, !tbaa !220
  store double %yd, double* %yd.addr, align 8, !tbaa !220
  %0 = bitcast float* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load double, double* %xd.addr, align 8, !tbaa !220
  %conv = fptrunc double %1 to float
  store float %conv, float* %x, align 4, !tbaa !94
  %2 = bitcast float* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load double, double* %yd.addr, align 8, !tbaa !220
  %conv1 = fptrunc double %3 to float
  store float %conv1, float* %y, align 4, !tbaa !94
  %4 = load float, float* %x, align 4, !tbaa !94
  %conv2 = fpext float %4 to double
  %mul = fmul double 9.000000e-01, %conv2
  %5 = load float, float* %x, align 4, !tbaa !94
  %conv3 = fpext float %5 to double
  %mul4 = fmul double %mul, %conv3
  %6 = load float, float* %y, align 4, !tbaa !94
  %7 = load float, float* %y, align 4, !tbaa !94
  %mul5 = fmul float %6, %7
  %conv6 = fpext float %mul5 to double
  %add = fadd double %mul4, %conv6
  %sub = fsub double %add, 1.000000e+00
  %call = call float @d2f(double %sub) #7
  %conv7 = fpext float %call to double
  %8 = bitcast float* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #1
  %9 = bitcast float* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %9) #1
  ret double %conv7
}

; Function Attrs: nounwind uwtable
define internal double @ht_Line(double %xd, double %yd) #0 {
entry:
  %xd.addr = alloca double, align 8
  %yd.addr = alloca double, align 8
  %x = alloca float, align 4
  %y = alloca float, align 4
  store double %xd, double* %xd.addr, align 8, !tbaa !220
  store double %yd, double* %yd.addr, align 8, !tbaa !220
  %0 = bitcast float* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load double, double* %xd.addr, align 8, !tbaa !220
  %conv = fptrunc double %1 to float
  store float %conv, float* %x, align 4, !tbaa !94
  %2 = bitcast float* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load double, double* %yd.addr, align 8, !tbaa !220
  %conv1 = fptrunc double %3 to float
  store float %conv1, float* %y, align 4, !tbaa !94
  %4 = load float, float* %x, align 4, !tbaa !94
  %5 = load float, float* %x, align 4, !tbaa !94
  %sub = fsub float %4, %5
  %6 = load float, float* %y, align 4, !tbaa !94
  %add = fadd float %sub, %6
  %conv2 = fpext float %add to double
  %call = call double @fabs(double %conv2) #10
  %sub3 = fsub double -0.000000e+00, %call
  %call4 = call float @d2f(double %sub3) #7
  %conv5 = fpext float %call4 to double
  %7 = bitcast float* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %7) #1
  %8 = bitcast float* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #1
  ret double %conv5
}

; Function Attrs: nounwind uwtable
define internal double @ht_LineX(double %xd, double %yd) #0 {
entry:
  %xd.addr = alloca double, align 8
  %yd.addr = alloca double, align 8
  %x = alloca float, align 4
  %y = alloca float, align 4
  store double %xd, double* %xd.addr, align 8, !tbaa !220
  store double %yd, double* %yd.addr, align 8, !tbaa !220
  %0 = bitcast float* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load double, double* %xd.addr, align 8, !tbaa !220
  %conv = fptrunc double %1 to float
  store float %conv, float* %x, align 4, !tbaa !94
  %2 = bitcast float* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load double, double* %yd.addr, align 8, !tbaa !220
  %conv1 = fptrunc double %3 to float
  store float %conv1, float* %y, align 4, !tbaa !94
  %4 = load float, float* %y, align 4, !tbaa !94
  %5 = load float, float* %y, align 4, !tbaa !94
  %sub = fsub float %4, %5
  %6 = load float, float* %x, align 4, !tbaa !94
  %add = fadd float %sub, %6
  %conv2 = fpext float %add to double
  %call = call float @d2f(double %conv2) #7
  %conv3 = fpext float %call to double
  %7 = bitcast float* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %7) #1
  %8 = bitcast float* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #1
  ret double %conv3
}

; Function Attrs: nounwind uwtable
define internal double @ht_LineY(double %xd, double %yd) #0 {
entry:
  %xd.addr = alloca double, align 8
  %yd.addr = alloca double, align 8
  %x = alloca float, align 4
  %y = alloca float, align 4
  store double %xd, double* %xd.addr, align 8, !tbaa !220
  store double %yd, double* %yd.addr, align 8, !tbaa !220
  %0 = bitcast float* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load double, double* %xd.addr, align 8, !tbaa !220
  %conv = fptrunc double %1 to float
  store float %conv, float* %x, align 4, !tbaa !94
  %2 = bitcast float* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load double, double* %yd.addr, align 8, !tbaa !220
  %conv1 = fptrunc double %3 to float
  store float %conv1, float* %y, align 4, !tbaa !94
  %4 = load float, float* %x, align 4, !tbaa !94
  %5 = load float, float* %x, align 4, !tbaa !94
  %sub = fsub float %4, %5
  %6 = load float, float* %y, align 4, !tbaa !94
  %add = fadd float %sub, %6
  %conv2 = fpext float %add to double
  %call = call float @d2f(double %conv2) #7
  %conv3 = fpext float %call to double
  %7 = bitcast float* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %7) #1
  %8 = bitcast float* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #1
  ret double %conv3
}

; Function Attrs: nounwind uwtable
define internal double @ht_Square(double %xd, double %yd) #0 {
entry:
  %xd.addr = alloca double, align 8
  %yd.addr = alloca double, align 8
  %x = alloca float, align 4
  %y = alloca float, align 4
  store double %xd, double* %xd.addr, align 8, !tbaa !220
  store double %yd, double* %yd.addr, align 8, !tbaa !220
  %0 = bitcast float* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load double, double* %xd.addr, align 8, !tbaa !220
  %conv = fptrunc double %1 to float
  store float %conv, float* %x, align 4, !tbaa !94
  %2 = bitcast float* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load double, double* %yd.addr, align 8, !tbaa !220
  %conv1 = fptrunc double %3 to float
  store float %conv1, float* %y, align 4, !tbaa !94
  %4 = load float, float* %x, align 4, !tbaa !94
  %conv2 = fpext float %4 to double
  %call = call double @fabs(double %conv2) #10
  %5 = load float, float* %y, align 4, !tbaa !94
  %conv3 = fpext float %5 to double
  %call4 = call double @fabs(double %conv3) #10
  %cmp = fcmp ogt double %call, %call4
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %6 = load float, float* %x, align 4, !tbaa !94
  %conv6 = fpext float %6 to double
  %call7 = call double @fabs(double %conv6) #10
  br label %cond.end

cond.false:                                       ; preds = %entry
  %7 = load float, float* %y, align 4, !tbaa !94
  %conv8 = fpext float %7 to double
  %call9 = call double @fabs(double %conv8) #10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %call7, %cond.true ], [ %call9, %cond.false ]
  %sub = fsub double -0.000000e+00, %cond
  %call10 = call float @d2f(double %sub) #7
  %conv11 = fpext float %call10 to double
  %8 = bitcast float* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #1
  %9 = bitcast float* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %9) #1
  ret double %conv11
}

; Function Attrs: nounwind uwtable
define internal double @ht_Cross(double %xd, double %yd) #0 {
entry:
  %xd.addr = alloca double, align 8
  %yd.addr = alloca double, align 8
  %x = alloca float, align 4
  %y = alloca float, align 4
  store double %xd, double* %xd.addr, align 8, !tbaa !220
  store double %yd, double* %yd.addr, align 8, !tbaa !220
  %0 = bitcast float* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load double, double* %xd.addr, align 8, !tbaa !220
  %conv = fptrunc double %1 to float
  store float %conv, float* %x, align 4, !tbaa !94
  %2 = bitcast float* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load double, double* %yd.addr, align 8, !tbaa !220
  %conv1 = fptrunc double %3 to float
  store float %conv1, float* %y, align 4, !tbaa !94
  %4 = load float, float* %x, align 4, !tbaa !94
  %conv2 = fpext float %4 to double
  %call = call double @fabs(double %conv2) #10
  %5 = load float, float* %y, align 4, !tbaa !94
  %conv3 = fpext float %5 to double
  %call4 = call double @fabs(double %conv3) #10
  %cmp = fcmp olt double %call, %call4
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %6 = load float, float* %x, align 4, !tbaa !94
  %conv6 = fpext float %6 to double
  %call7 = call double @fabs(double %conv6) #10
  br label %cond.end

cond.false:                                       ; preds = %entry
  %7 = load float, float* %y, align 4, !tbaa !94
  %conv8 = fpext float %7 to double
  %call9 = call double @fabs(double %conv8) #10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %call7, %cond.true ], [ %call9, %cond.false ]
  %sub = fsub double -0.000000e+00, %cond
  %call10 = call float @d2f(double %sub) #7
  %conv11 = fpext float %call10 to double
  %8 = bitcast float* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #1
  %9 = bitcast float* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %9) #1
  ret double %conv11
}

; Function Attrs: nounwind uwtable
define internal double @ht_Rhomboid(double %xd, double %yd) #0 {
entry:
  %xd.addr = alloca double, align 8
  %yd.addr = alloca double, align 8
  %x = alloca float, align 4
  %y = alloca float, align 4
  store double %xd, double* %xd.addr, align 8, !tbaa !220
  store double %yd, double* %yd.addr, align 8, !tbaa !220
  %0 = bitcast float* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load double, double* %xd.addr, align 8, !tbaa !220
  %conv = fptrunc double %1 to float
  store float %conv, float* %x, align 4, !tbaa !94
  %2 = bitcast float* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load double, double* %yd.addr, align 8, !tbaa !220
  %conv1 = fptrunc double %3 to float
  store float %conv1, float* %y, align 4, !tbaa !94
  %4 = load float, float* %x, align 4, !tbaa !94
  %conv2 = fpext float %4 to double
  %call = call double @fabs(double %conv2) #10
  %mul = fmul double 9.000000e-01, %call
  %5 = load float, float* %y, align 4, !tbaa !94
  %conv3 = fpext float %5 to double
  %call4 = call double @fabs(double %conv3) #10
  %add = fadd double %mul, %call4
  %div = fdiv double %add, 2.000000e+00
  %call5 = call float @d2f(double %div) #7
  %conv6 = fpext float %call5 to double
  %6 = bitcast float* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %6) #1
  %7 = bitcast float* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %7) #1
  ret double %conv6
}

; Function Attrs: nounwind uwtable
define internal double @ht_DoubleDot(double %xd, double %yd) #0 {
entry:
  %xd.addr = alloca double, align 8
  %yd.addr = alloca double, align 8
  %x = alloca float, align 4
  %y = alloca float, align 4
  store double %xd, double* %xd.addr, align 8, !tbaa !220
  store double %yd, double* %yd.addr, align 8, !tbaa !220
  %0 = bitcast float* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load double, double* %xd.addr, align 8, !tbaa !220
  %conv = fptrunc double %1 to float
  store float %conv, float* %x, align 4, !tbaa !94
  %2 = bitcast float* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load double, double* %yd.addr, align 8, !tbaa !220
  %conv1 = fptrunc double %3 to float
  store float %conv1, float* %y, align 4, !tbaa !94
  %4 = load float, float* %x, align 4, !tbaa !94
  %mul = fmul float %4, 3.600000e+02
  %conv2 = fpext float %mul to double
  %call = call float @d2fsin_d(double %conv2) #7
  %5 = load float, float* %y, align 4, !tbaa !94
  %mul3 = fmul float %5, 3.600000e+02
  %conv4 = fpext float %mul3 to double
  %call5 = call float @d2fsin_d(double %conv4) #7
  %add = fadd float %call, %call5
  %div = fdiv float %add, 2.000000e+00
  %conv6 = fpext float %div to double
  %call7 = call float @d2f(double %conv6) #7
  %conv8 = fpext float %call7 to double
  %6 = bitcast float* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %6) #1
  %7 = bitcast float* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %7) #1
  ret double %conv8
}

; Function Attrs: nounwind uwtable
define internal double @ht_InvertedDoubleDot(double %xd, double %yd) #0 {
entry:
  %xd.addr = alloca double, align 8
  %yd.addr = alloca double, align 8
  %x = alloca float, align 4
  %y = alloca float, align 4
  store double %xd, double* %xd.addr, align 8, !tbaa !220
  store double %yd, double* %yd.addr, align 8, !tbaa !220
  %0 = bitcast float* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load double, double* %xd.addr, align 8, !tbaa !220
  %conv = fptrunc double %1 to float
  store float %conv, float* %x, align 4, !tbaa !94
  %2 = bitcast float* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load double, double* %yd.addr, align 8, !tbaa !220
  %conv1 = fptrunc double %3 to float
  store float %conv1, float* %y, align 4, !tbaa !94
  %4 = load float, float* %x, align 4, !tbaa !94
  %mul = fmul float %4, 3.600000e+02
  %conv2 = fpext float %mul to double
  %call = call float @d2fsin_d(double %conv2) #7
  %5 = load float, float* %y, align 4, !tbaa !94
  %mul3 = fmul float %5, 3.600000e+02
  %conv4 = fpext float %mul3 to double
  %call5 = call float @d2fsin_d(double %conv4) #7
  %add = fadd float %call, %call5
  %sub = fsub float -0.000000e+00, %add
  %div = fdiv float %sub, 2.000000e+00
  %conv6 = fpext float %div to double
  %call7 = call float @d2f(double %conv6) #7
  %conv8 = fpext float %call7 to double
  %6 = bitcast float* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %6) #1
  %7 = bitcast float* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %7) #1
  ret double %conv8
}

; Function Attrs: nounwind uwtable
define internal double @ht_SimpleDot(double %xd, double %yd) #0 {
entry:
  %xd.addr = alloca double, align 8
  %yd.addr = alloca double, align 8
  %x = alloca float, align 4
  %y = alloca float, align 4
  store double %xd, double* %xd.addr, align 8, !tbaa !220
  store double %yd, double* %yd.addr, align 8, !tbaa !220
  %0 = bitcast float* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load double, double* %xd.addr, align 8, !tbaa !220
  %conv = fptrunc double %1 to float
  store float %conv, float* %x, align 4, !tbaa !94
  %2 = bitcast float* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load double, double* %yd.addr, align 8, !tbaa !220
  %conv1 = fptrunc double %3 to float
  store float %conv1, float* %y, align 4, !tbaa !94
  %4 = load float, float* %x, align 4, !tbaa !94
  %5 = load float, float* %x, align 4, !tbaa !94
  %mul = fmul float %4, %5
  %conv2 = fpext float %mul to double
  %call = call float @d2f(double %conv2) #7
  %6 = load float, float* %y, align 4, !tbaa !94
  %7 = load float, float* %y, align 4, !tbaa !94
  %mul3 = fmul float %6, %7
  %conv4 = fpext float %mul3 to double
  %call5 = call float @d2f(double %conv4) #7
  %add = fadd float %call, %call5
  %conv6 = fpext float %add to double
  %call7 = call float @d2f(double %conv6) #7
  %sub = fsub float 1.000000e+00, %call7
  %conv8 = fpext float %sub to double
  %call9 = call float @d2f(double %conv8) #7
  %conv10 = fpext float %call9 to double
  %8 = bitcast float* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #1
  %9 = bitcast float* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %9) #1
  ret double %conv10
}

; Function Attrs: nounwind uwtable
define internal double @ht_InvertedSimpleDot(double %xd, double %yd) #0 {
entry:
  %xd.addr = alloca double, align 8
  %yd.addr = alloca double, align 8
  %x = alloca float, align 4
  %y = alloca float, align 4
  store double %xd, double* %xd.addr, align 8, !tbaa !220
  store double %yd, double* %yd.addr, align 8, !tbaa !220
  %0 = bitcast float* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load double, double* %xd.addr, align 8, !tbaa !220
  %conv = fptrunc double %1 to float
  store float %conv, float* %x, align 4, !tbaa !94
  %2 = bitcast float* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load double, double* %yd.addr, align 8, !tbaa !220
  %conv1 = fptrunc double %3 to float
  store float %conv1, float* %y, align 4, !tbaa !94
  %4 = load float, float* %x, align 4, !tbaa !94
  %5 = load float, float* %x, align 4, !tbaa !94
  %mul = fmul float %4, %5
  %conv2 = fpext float %mul to double
  %call = call float @d2f(double %conv2) #7
  %6 = load float, float* %y, align 4, !tbaa !94
  %7 = load float, float* %y, align 4, !tbaa !94
  %mul3 = fmul float %6, %7
  %conv4 = fpext float %mul3 to double
  %call5 = call float @d2f(double %conv4) #7
  %add = fadd float %call, %call5
  %conv6 = fpext float %add to double
  %call7 = call float @d2f(double %conv6) #7
  %sub = fsub float %call7, 1.000000e+00
  %conv8 = fpext float %sub to double
  %call9 = call float @d2f(double %conv8) #7
  %conv10 = fpext float %call9 to double
  %8 = bitcast float* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #1
  %9 = bitcast float* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %9) #1
  ret double %conv10
}

; Function Attrs: nounwind uwtable
define internal double @ht_CosineDot(double %xd, double %yd) #0 {
entry:
  %xd.addr = alloca double, align 8
  %yd.addr = alloca double, align 8
  %x = alloca float, align 4
  %y = alloca float, align 4
  store double %xd, double* %xd.addr, align 8, !tbaa !220
  store double %yd, double* %yd.addr, align 8, !tbaa !220
  %0 = bitcast float* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load double, double* %xd.addr, align 8, !tbaa !220
  %conv = fptrunc double %1 to float
  store float %conv, float* %x, align 4, !tbaa !94
  %2 = bitcast float* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load double, double* %yd.addr, align 8, !tbaa !220
  %conv1 = fptrunc double %3 to float
  store float %conv1, float* %y, align 4, !tbaa !94
  %4 = load float, float* %x, align 4, !tbaa !94
  %mul = fmul float %4, 1.800000e+02
  %conv2 = fpext float %mul to double
  %call = call float @d2fcos_d(double %conv2) #7
  %5 = load float, float* %y, align 4, !tbaa !94
  %mul3 = fmul float %5, 1.800000e+02
  %conv4 = fpext float %mul3 to double
  %call5 = call float @d2fcos_d(double %conv4) #7
  %add = fadd float %call, %call5
  %div = fdiv float %add, 2.000000e+00
  %conv6 = fpext float %div to double
  %call7 = call float @d2f(double %conv6) #7
  %conv8 = fpext float %call7 to double
  %6 = bitcast float* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %6) #1
  %7 = bitcast float* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %7) #1
  ret double %conv8
}

; Function Attrs: nounwind uwtable
define internal double @ht_Double(double %xd, double %yd) #0 {
entry:
  %xd.addr = alloca double, align 8
  %yd.addr = alloca double, align 8
  %x = alloca float, align 4
  %y = alloca float, align 4
  store double %xd, double* %xd.addr, align 8, !tbaa !220
  store double %yd, double* %yd.addr, align 8, !tbaa !220
  %0 = bitcast float* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load double, double* %xd.addr, align 8, !tbaa !220
  %conv = fptrunc double %1 to float
  store float %conv, float* %x, align 4, !tbaa !94
  %2 = bitcast float* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load double, double* %yd.addr, align 8, !tbaa !220
  %conv1 = fptrunc double %3 to float
  store float %conv1, float* %y, align 4, !tbaa !94
  %4 = load float, float* %x, align 4, !tbaa !94
  %mul = fmul float %4, 1.800000e+02
  %conv2 = fpext float %mul to double
  %call = call float @d2fsin_d(double %conv2) #7
  %5 = load float, float* %y, align 4, !tbaa !94
  %mul3 = fmul float %5, 3.600000e+02
  %conv4 = fpext float %mul3 to double
  %call5 = call float @d2fsin_d(double %conv4) #7
  %add = fadd float %call, %call5
  %div = fdiv float %add, 2.000000e+00
  %conv6 = fpext float %div to double
  %call7 = call float @d2f(double %conv6) #7
  %conv8 = fpext float %call7 to double
  %6 = bitcast float* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %6) #1
  %7 = bitcast float* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %7) #1
  ret double %conv8
}

; Function Attrs: nounwind uwtable
define internal double @ht_InvertedDouble(double %xd, double %yd) #0 {
entry:
  %xd.addr = alloca double, align 8
  %yd.addr = alloca double, align 8
  %x = alloca float, align 4
  %y = alloca float, align 4
  store double %xd, double* %xd.addr, align 8, !tbaa !220
  store double %yd, double* %yd.addr, align 8, !tbaa !220
  %0 = bitcast float* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load double, double* %xd.addr, align 8, !tbaa !220
  %conv = fptrunc double %1 to float
  store float %conv, float* %x, align 4, !tbaa !94
  %2 = bitcast float* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load double, double* %yd.addr, align 8, !tbaa !220
  %conv1 = fptrunc double %3 to float
  store float %conv1, float* %y, align 4, !tbaa !94
  %4 = load float, float* %x, align 4, !tbaa !94
  %mul = fmul float %4, 1.800000e+02
  %conv2 = fpext float %mul to double
  %call = call float @d2fsin_d(double %conv2) #7
  %5 = load float, float* %y, align 4, !tbaa !94
  %mul3 = fmul float %5, 3.600000e+02
  %conv4 = fpext float %mul3 to double
  %call5 = call float @d2fsin_d(double %conv4) #7
  %add = fadd float %call, %call5
  %sub = fsub float -0.000000e+00, %add
  %div = fdiv float %sub, 2.000000e+00
  %conv6 = fpext float %div to double
  %call7 = call float @d2f(double %conv6) #7
  %conv8 = fpext float %call7 to double
  %6 = bitcast float* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %6) #1
  %7 = bitcast float* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %7) #1
  ret double %conv8
}

; Function Attrs: nounwind readnone
declare double @fabs(double) #6

; Function Attrs: nounwind uwtable
define internal float @d2f(double %d) #0 {
entry:
  %d.addr = alloca double, align 8
  %f = alloca float, align 4
  store double %d, double* %d.addr, align 8, !tbaa !220
  %0 = bitcast float* %f to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load double, double* %d.addr, align 8, !tbaa !220
  %conv = fptrunc double %1 to float
  store float %conv, float* %f, align 4, !tbaa !94
  %2 = load float, float* %f, align 4, !tbaa !94
  %3 = bitcast float* %f to i8*
  call void @llvm.lifetime.end(i64 4, i8* %3) #1
  ret float %2
}

; Function Attrs: nounwind
declare double @sqrt(double) #2

; Function Attrs: nounwind uwtable
define internal float @d2fsin_d(double %x) #0 {
entry:
  %x.addr = alloca double, align 8
  store double %x, double* %x.addr, align 8, !tbaa !220
  %0 = load double, double* %x.addr, align 8, !tbaa !220
  %call = call float @d2f(double %0) #7
  %conv = fpext float %call to double
  %call1 = call double @gs_sin_degrees(double %conv) #7
  %call2 = call float @d2f(double %call1) #7
  ret float %call2
}

declare double @gs_sin_degrees(double) #3

; Function Attrs: nounwind uwtable
define internal float @d2fcos_d(double %x) #0 {
entry:
  %x.addr = alloca double, align 8
  store double %x, double* %x.addr, align 8, !tbaa !220
  %0 = load double, double* %x.addr, align 8, !tbaa !220
  %call = call float @d2f(double %0) #7
  %conv = fpext float %call to double
  %call1 = call double @gs_cos_degrees(double %conv) #7
  %call2 = call float @d2f(double %call1) #7
  ret float %call2
}

declare double @gs_cos_degrees(double) #3

declare i32 @data_source_access_bytes(%struct.gs_data_source_s*, i64, i32, i8*, i8**) #3

declare i32 @gs_function_Sd_init(%struct.gs_function_s**, %struct.gs_function_Sd_params_s*, %struct.gs_memory_s*) #3

declare i32 @pdf_write_function(%struct.gx_device_pdf_s*, %struct.gs_function_s*, i64*) #3

declare i32 @pdf_begin_data(%struct.gx_device_pdf_s*, %struct.pdf_data_writer_s*) #3

declare i32 @cos_dict_put_c_strings(%struct.cos_dict_s*, i8*, i8*) #3

declare i32 @stream_write(%struct.stream_s*, i8*, i32) #3

declare i32 @pdf_end_data(%struct.pdf_data_writer_s*) #3

declare i32 @spputc(%struct.stream_s*, i8 zeroext) #3

; Function Attrs: nounwind uwtable
define internal i32 @pdf_get_halftone_component_index(%struct.gs_multiple_halftone_s* %pmht, %struct.gx_device_halftone_s* %pdht, i32 %dht_index) #0 {
entry:
  %retval = alloca i32, align 4
  %pmht.addr = alloca %struct.gs_multiple_halftone_s*, align 8
  %pdht.addr = alloca %struct.gx_device_halftone_s*, align 8
  %dht_index.addr = alloca i32, align 4
  %j = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_multiple_halftone_s* %pmht, %struct.gs_multiple_halftone_s** %pmht.addr, align 8, !tbaa !1
  store %struct.gx_device_halftone_s* %pdht, %struct.gx_device_halftone_s** %pdht.addr, align 8, !tbaa !1
  store i32 %dht_index, i32* %dht_index.addr, align 4, !tbaa !49
  %0 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %j, align 4, !tbaa !49
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %j, align 4, !tbaa !49
  %2 = load %struct.gs_multiple_halftone_s*, %struct.gs_multiple_halftone_s** %pmht.addr, align 8, !tbaa !1
  %num_comp = getelementptr inbounds %struct.gs_multiple_halftone_s, %struct.gs_multiple_halftone_s* %2, i32 0, i32 1
  %3 = load i32, i32* %num_comp, align 4, !tbaa !295
  %cmp = icmp ult i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %j, align 4, !tbaa !49
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.gs_multiple_halftone_s*, %struct.gs_multiple_halftone_s** %pmht.addr, align 8, !tbaa !1
  %components = getelementptr inbounds %struct.gs_multiple_halftone_s, %struct.gs_multiple_halftone_s* %5, i32 0, i32 0
  %6 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %components, align 8, !tbaa !297
  %arrayidx = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %6, i64 %idxprom
  %comp_number = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %arrayidx, i32 0, i32 0
  %7 = load i32, i32* %comp_number, align 4, !tbaa !298
  %8 = load i32, i32* %dht_index.addr, align 4, !tbaa !49
  %cmp1 = icmp eq i32 %7, %8
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %j, align 4, !tbaa !49
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %j, align 4, !tbaa !49
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %10 = load i32, i32* %j, align 4, !tbaa !49
  %11 = load %struct.gs_multiple_halftone_s*, %struct.gs_multiple_halftone_s** %pmht.addr, align 8, !tbaa !1
  %num_comp2 = getelementptr inbounds %struct.gs_multiple_halftone_s, %struct.gs_multiple_halftone_s* %11, i32 0, i32 1
  %12 = load i32, i32* %num_comp2, align 4, !tbaa !295
  %cmp3 = icmp eq i32 %10, %12
  br i1 %cmp3, label %if.then.4, label %if.end.23

if.then.4:                                        ; preds = %for.end
  store i32 0, i32* %j, align 4, !tbaa !49
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.16, %if.then.4
  %13 = load i32, i32* %j, align 4, !tbaa !49
  %14 = load %struct.gs_multiple_halftone_s*, %struct.gs_multiple_halftone_s** %pmht.addr, align 8, !tbaa !1
  %num_comp6 = getelementptr inbounds %struct.gs_multiple_halftone_s, %struct.gs_multiple_halftone_s* %14, i32 0, i32 1
  %15 = load i32, i32* %num_comp6, align 4, !tbaa !295
  %cmp7 = icmp ult i32 %13, %15
  br i1 %cmp7, label %for.body.8, label %for.end.18

for.body.8:                                       ; preds = %for.cond.5
  %16 = load i32, i32* %j, align 4, !tbaa !49
  %idxprom9 = sext i32 %16 to i64
  %17 = load %struct.gs_multiple_halftone_s*, %struct.gs_multiple_halftone_s** %pmht.addr, align 8, !tbaa !1
  %components10 = getelementptr inbounds %struct.gs_multiple_halftone_s, %struct.gs_multiple_halftone_s* %17, i32 0, i32 0
  %18 = load %struct.gs_halftone_component_s*, %struct.gs_halftone_component_s** %components10, align 8, !tbaa !297
  %arrayidx11 = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %18, i64 %idxprom9
  %comp_number12 = getelementptr inbounds %struct.gs_halftone_component_s, %struct.gs_halftone_component_s* %arrayidx11, i32 0, i32 0
  %19 = load i32, i32* %comp_number12, align 4, !tbaa !298
  %cmp13 = icmp eq i32 %19, 64
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %for.body.8
  br label %for.end.18

if.end.15:                                        ; preds = %for.body.8
  br label %for.inc.16

for.inc.16:                                       ; preds = %if.end.15
  %20 = load i32, i32* %j, align 4, !tbaa !49
  %inc17 = add nsw i32 %20, 1
  store i32 %inc17, i32* %j, align 4, !tbaa !49
  br label %for.cond.5

for.end.18:                                       ; preds = %if.then.14, %for.cond.5
  %21 = load i32, i32* %j, align 4, !tbaa !49
  %22 = load %struct.gs_multiple_halftone_s*, %struct.gs_multiple_halftone_s** %pmht.addr, align 8, !tbaa !1
  %num_comp19 = getelementptr inbounds %struct.gs_multiple_halftone_s, %struct.gs_multiple_halftone_s* %22, i32 0, i32 1
  %23 = load i32, i32* %num_comp19, align 4, !tbaa !295
  %cmp20 = icmp eq i32 %21, %23
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %for.end.18
  store i32 -21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.22:                                        ; preds = %for.end.18
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %for.end
  %24 = load i32, i32* %j, align 4, !tbaa !49
  store i32 %24, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.23, %if.then.21
  %25 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  %26 = load i32, i32* %retval
  ret i32 %26
}

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @transfer_map_access_signed(%struct.gs_data_source_s* %psrc, i64 %start, i32 %length, i8* %buf, i8** %ptr) #0 {
entry:
  %psrc.addr = alloca %struct.gs_data_source_s*, align 8
  %start.addr = alloca i64, align 8
  %length.addr = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %ptr.addr = alloca i8**, align 8
  %map = alloca %struct.gx_transfer_map_s*, align 8
  %i = alloca i32, align 4
  store %struct.gs_data_source_s* %psrc, %struct.gs_data_source_s** %psrc.addr, align 8, !tbaa !1
  store i64 %start, i64* %start.addr, align 8, !tbaa !57
  store i32 %length, i32* %length.addr, align 4, !tbaa !49
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !1
  store i8** %ptr, i8*** %ptr.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_transfer_map_s** %map to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_data_source_s*, %struct.gs_data_source_s** %psrc.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_data_source_s, %struct.gs_data_source_s* %1, i32 0, i32 2
  %str = bitcast %union.d_* %data to %struct.gs_const_string_s*
  %data1 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str, i32 0, i32 0
  %2 = load i8*, i8** %data1, align 8, !tbaa !233
  %3 = bitcast i8* %2 to %struct.gx_transfer_map_s*
  store %struct.gx_transfer_map_s* %3, %struct.gx_transfer_map_s** %map, align 8, !tbaa !1
  %4 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %6 = load i8**, i8*** %ptr.addr, align 8, !tbaa !1
  store i8* %5, i8** %6, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !49
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %i, align 4, !tbaa !49
  %8 = load i32, i32* %length.addr, align 4, !tbaa !49
  %cmp = icmp ult i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i64, i64* %start.addr, align 8, !tbaa !57
  %conv = trunc i64 %9 to i32
  %10 = load i32, i32* %i, align 4, !tbaa !49
  %add = add i32 %conv, %10
  %idxprom = zext i32 %add to i64
  %11 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %map, align 8, !tbaa !1
  %values = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %11, i32 0, i32 4
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* %values, i32 0, i64 %idxprom
  %12 = load i16, i16* %arrayidx, align 2, !tbaa !92
  %conv2 = sext i16 %12 to i32
  %conv3 = sitofp i32 %conv2 to float
  %div = fdiv float %conv3, 3.276000e+04
  %add4 = fadd float %div, 1.000000e+00
  %mul = fmul float %add4, 1.270000e+02
  %conv5 = fptoui float %mul to i8
  %13 = load i32, i32* %i, align 4, !tbaa !49
  %idxprom6 = zext i32 %13 to i64
  %14 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i8, i8* %14, i64 %idxprom6
  store i8 %conv5, i8* %arrayidx7, align 1, !tbaa !91
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4, !tbaa !49
  %inc = add i32 %15, 1
  store i32 %inc, i32* %i, align 4, !tbaa !49
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #1
  %17 = bitcast %struct.gx_transfer_map_s** %map to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @transfer_map_access(%struct.gs_data_source_s* %psrc, i64 %start, i32 %length, i8* %buf, i8** %ptr) #0 {
entry:
  %psrc.addr = alloca %struct.gs_data_source_s*, align 8
  %start.addr = alloca i64, align 8
  %length.addr = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %ptr.addr = alloca i8**, align 8
  %map = alloca %struct.gx_transfer_map_s*, align 8
  %i = alloca i32, align 4
  store %struct.gs_data_source_s* %psrc, %struct.gs_data_source_s** %psrc.addr, align 8, !tbaa !1
  store i64 %start, i64* %start.addr, align 8, !tbaa !57
  store i32 %length, i32* %length.addr, align 4, !tbaa !49
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !1
  store i8** %ptr, i8*** %ptr.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_transfer_map_s** %map to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_data_source_s*, %struct.gs_data_source_s** %psrc.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_data_source_s, %struct.gs_data_source_s* %1, i32 0, i32 2
  %str = bitcast %union.d_* %data to %struct.gs_const_string_s*
  %data1 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str, i32 0, i32 0
  %2 = load i8*, i8** %data1, align 8, !tbaa !233
  %3 = bitcast i8* %2 to %struct.gx_transfer_map_s*
  store %struct.gx_transfer_map_s* %3, %struct.gx_transfer_map_s** %map, align 8, !tbaa !1
  %4 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load i8**, i8*** %ptr.addr, align 8, !tbaa !1
  %tobool = icmp ne i8** %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %7 = load i8**, i8*** %ptr.addr, align 8, !tbaa !1
  store i8* %6, i8** %7, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4, !tbaa !49
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i32, i32* %i, align 4, !tbaa !49
  %9 = load i32, i32* %length.addr, align 4, !tbaa !49
  %cmp = icmp ult i32 %8, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i64, i64* %start.addr, align 8, !tbaa !57
  %conv = trunc i64 %10 to i32
  %11 = load i32, i32* %i, align 4, !tbaa !49
  %add = add i32 %conv, %11
  %idxprom = zext i32 %add to i64
  %12 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %map, align 8, !tbaa !1
  %values = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %12, i32 0, i32 4
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* %values, i32 0, i64 %idxprom
  %13 = load i16, i16* %arrayidx, align 2, !tbaa !92
  %conv2 = sext i16 %13 to i32
  %shr = ashr i32 %conv2, 12
  %14 = load i64, i64* %start.addr, align 8, !tbaa !57
  %conv3 = trunc i64 %14 to i32
  %15 = load i32, i32* %i, align 4, !tbaa !49
  %add4 = add i32 %conv3, %15
  %idxprom5 = zext i32 %add4 to i64
  %16 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %map, align 8, !tbaa !1
  %values6 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %16, i32 0, i32 4
  %arrayidx7 = getelementptr inbounds [256 x i16], [256 x i16]* %values6, i32 0, i64 %idxprom5
  %17 = load i16, i16* %arrayidx7, align 2, !tbaa !92
  %conv8 = sext i16 %17 to i32
  %add9 = add nsw i32 %shr, %conv8
  %shr10 = ashr i32 %add9, 7
  %conv11 = trunc i32 %shr10 to i8
  %18 = load i32, i32* %i, align 4, !tbaa !49
  %idxprom12 = zext i32 %18 to i64
  %19 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds i8, i8* %19, i64 %idxprom12
  store i8 %conv11, i8* %arrayidx13, align 1, !tbaa !91
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %i, align 4, !tbaa !49
  %inc = add i32 %20, 1
  store i32 %inc, i32* %i, align 4, !tbaa !49
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  %22 = bitcast %struct.gx_transfer_map_s** %map to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  ret i32 0
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nobuiltin }
attributes #8 = { nobuiltin nounwind }
attributes #9 = { nobuiltin nounwind readonly }
attributes #10 = { nobuiltin nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !7, i64 28860}
!6 = !{!"gx_device_pdf_s", !7, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !2, i64 48, !8, i64 56, !7, i64 80, !7, i64 84, !7, i64 88, !10, i64 96, !13, i64 816, !7, i64 832, !7, i64 836, !7, i64 840, !7, i64 844, !7, i64 848, !7, i64 852, !3, i64 856, !3, i64 864, !7, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !9, i64 928, !9, i64 936, !7, i64 944, !7, i64 948, !7, i64 952, !7, i64 956, !7, i64 960, !9, i64 968, !9, i64 976, !14, i64 984, !7, i64 1052, !7, i64 1056, !15, i64 1064, !2, i64 1104, !3, i64 1112, !17, i64 1120, !18, i64 1144, !2, i64 1728, !2, i64 1736, !3, i64 1744, !2, i64 5840, !2, i64 5848, !2, i64 5856, !7, i64 5864, !7, i64 5868, !19, i64 5872, !2, i64 7488, !7, i64 7496, !7, i64 7500, !7, i64 7504, !32, i64 7512, !32, i64 8144, !9, i64 8776, !9, i64 8784, !3, i64 8792, !3, i64 8796, !25, i64 8800, !7, i64 8816, !2, i64 8824, !9, i64 8832, !9, i64 8840, !3, i64 8848, !7, i64 8852, !7, i64 8856, !7, i64 8860, !7, i64 8864, !26, i64 8872, !37, i64 8880, !7, i64 9360, !26, i64 9368, !7, i64 9376, !7, i64 9380, !7, i64 9384, !7, i64 9388, !7, i64 9392, !7, i64 9396, !7, i64 9400, !7, i64 9404, !7, i64 9408, !7, i64 9412, !7, i64 9416, !7, i64 9420, !42, i64 9424, !42, i64 9440, !7, i64 9456, !7, i64 9460, !7, i64 9464, !9, i64 9472, !7, i64 9480, !7, i64 9484, !41, i64 9488, !41, i64 9504, !7, i64 9520, !7, i64 9524, !7, i64 9528, !7, i64 9532, !7, i64 9536, !7, i64 9540, !7, i64 9544, !7, i64 9548, !7, i64 9552, !7, i64 9556, !7, i64 9560, !7, i64 9564, !7, i64 9568, !9, i64 9576, !9, i64 9584, !9, i64 9592, !43, i64 9600, !41, i64 9616, !41, i64 9632, !7, i64 9648, !7, i64 9652, !7, i64 9656, !41, i64 9664, !7, i64 9680, !7, i64 9684, !3, i64 9688, !3, i64 9720, !3, i64 9752, !7, i64 9768, !7, i64 9772, !7, i64 9776, !44, i64 9784, !45, i64 9816, !45, i64 9856, !7, i64 9896, !7, i64 9900, !7, i64 9904, !7, i64 9908, !7, i64 9912, !9, i64 9920, !3, i64 9928, !7, i64 9960, !9, i64 9968, !9, i64 9976, !3, i64 9984, !3, i64 9988, !46, i64 9992, !46, i64 14120, !46, i64 18248, !46, i64 22376, !9, i64 26504, !2, i64 26512, !2, i64 26520, !2, i64 26528, !9, i64 26536, !7, i64 26544, !7, i64 26548, !9, i64 26552, !3, i64 26560, !9, i64 26568, !9, i64 26576, !3, i64 26584, !2, i64 26592, !47, i64 26600, !2, i64 26648, !7, i64 26656, !9, i64 26664, !3, i64 26672, !3, i64 28592, !3, i64 28632, !2, i64 28648, !2, i64 28656, !9, i64 28664, !2, i64 28672, !7, i64 28680, !7, i64 28684, !7, i64 28688, !7, i64 28692, !2, i64 28696, !2, i64 28704, !2, i64 28712, !3, i64 28720, !3, i64 28736, !2, i64 28752, !2, i64 28760, !2, i64 28768, !2, i64 28776, !2, i64 28784, !25, i64 28792, !2, i64 28808, !2, i64 28816, !7, i64 28824, !2, i64 28832, !2, i64 28840, !2, i64 28848, !7, i64 28856, !7, i64 28860, !7, i64 28864, !48, i64 28872, !7, i64 30384, !7, i64 30388, !7, i64 30392, !2, i64 30400, !7, i64 30408, !7, i64 30412, !7, i64 30416, !22, i64 30420, !2, i64 30448, !3, i64 30456, !7, i64 30460, !7, i64 30464, !2, i64 30472, !2, i64 30480, !24, i64 30488, !7, i64 30524, !44, i64 30528, !7, i64 30560, !7, i64 30564, !7, i64 30568, !2, i64 30576, !7, i64 30584, !7, i64 30588, !9, i64 30592, !7, i64 30600, !7, i64 30604, !7, i64 30608, !22, i64 30612, !26, i64 30640, !2, i64 30648, !38, i64 30656, !7, i64 30672, !2, i64 30680, !7, i64 30688, !7, i64 30692, !7, i64 30696, !7, i64 30700, !7, i64 30704, !7, i64 30708, !7, i64 30712, !7, i64 30716, !7, i64 30720, !7, i64 30724, !7, i64 30728, !7, i64 30732, !7, i64 30736, !7, i64 30740, !7, i64 30744, !7, i64 30748, !7, i64 30752, !7, i64 30756, !7, i64 30760, !7, i64 30764, !7, i64 30768, !7, i64 30772, !2, i64 30776, !7, i64 30784, !7, i64 30788}
!7 = !{!"int", !3, i64 0}
!8 = !{!"rc_header_s", !9, i64 0, !2, i64 8, !2, i64 16}
!9 = !{!"long", !3, i64 0}
!10 = !{!"gx_device_color_info_s", !7, i64 0, !7, i64 4, !3, i64 8, !11, i64 12, !3, i64 14, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !12, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !9, i64 704, !7, i64 712}
!11 = !{!"short", !3, i64 0}
!12 = !{!"gx_device_anti_alias_info_s", !7, i64 0, !7, i64 4}
!13 = !{!"gx_device_cached_colors_s", !9, i64 0, !9, i64 8}
!14 = !{!"gx_stroked_gradient_recognizer_s", !7, i64 0, !3, i64 4, !3, i64 36}
!15 = !{!"gdev_space_params_s", !9, i64 0, !9, i64 8, !16, i64 16, !7, i64 32, !3, i64 36}
!16 = !{!"gx_band_params_s", !7, i64 0, !7, i64 4, !9, i64 8}
!17 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!18 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!19 = !{!"gs_imager_state_s", !7, i64 0, !2, i64 8, !2, i64 16, !20, i64 24, !7, i64 128, !24, i64 132, !7, i64 168, !25, i64 176, !25, i64 192, !7, i64 208, !7, i64 212, !11, i64 216, !3, i64 220, !27, i64 224, !27, i64 228, !28, i64 232, !9, i64 240, !7, i64 248, !7, i64 252, !7, i64 256, !2, i64 264, !7, i64 272, !7, i64 276, !7, i64 280, !7, i64 284, !7, i64 288, !7, i64 292, !21, i64 296, !29, i64 300, !7, i64 308, !7, i64 312, !7, i64 316, !21, i64 320, !7, i64 324, !7, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !7, i64 408, !2, i64 416, !2, i64 424, !30, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !31, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !31, i64 1336}
!20 = !{!"gx_line_params_s", !21, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !7, i64 20, !21, i64 24, !21, i64 28, !21, i64 32, !7, i64 36, !22, i64 40, !23, i64 64}
!21 = !{!"float", !3, i64 0}
!22 = !{!"gs_matrix_s", !21, i64 0, !21, i64 4, !21, i64 8, !21, i64 12, !21, i64 16, !21, i64 20}
!23 = !{!"gx_dash_params_s", !2, i64 0, !7, i64 8, !21, i64 12, !7, i64 16, !21, i64 20, !7, i64 24, !7, i64 28, !21, i64 32}
!24 = !{!"gs_matrix_fixed_s", !21, i64 0, !21, i64 4, !21, i64 8, !21, i64 12, !21, i64 16, !21, i64 20, !7, i64 24, !7, i64 28, !7, i64 32}
!25 = !{!"gs_point_s", !26, i64 0, !26, i64 8}
!26 = !{!"double", !3, i64 0}
!27 = !{!"gs_transparency_source_s", !21, i64 0}
!28 = !{!"gs_xstate_trans_flags", !7, i64 0, !7, i64 4}
!29 = !{!"gs_fixed_point_s", !7, i64 0, !7, i64 4}
!30 = !{!"gx_transfer_s", !7, i64 0, !2, i64 8, !7, i64 16, !2, i64 24, !7, i64 32, !2, i64 40, !7, i64 48, !2, i64 56}
!31 = !{!"gs_devicen_color_map_s", !7, i64 0, !3, i64 4, !7, i64 8, !7, i64 12, !9, i64 16, !3, i64 24}
!32 = !{!"gx_hl_saved_color_s", !9, i64 0, !9, i64 8, !7, i64 16, !33, i64 24, !35, i64 288}
!33 = !{!"gs_client_color_s", !2, i64 0, !34, i64 8}
!34 = !{!"gs_paint_color_s", !3, i64 0}
!35 = !{!"gx_device_color_saved_s", !2, i64 0, !3, i64 8, !36, i64 336}
!36 = !{!"gs_int_point_s", !7, i64 0, !7, i64 4}
!37 = !{!"psdf_distiller_params_s", !7, i64 0, !3, i64 4, !3, i64 8, !7, i64 12, !3, i64 16, !7, i64 20, !7, i64 24, !9, i64 32, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !38, i64 64, !38, i64 80, !38, i64 96, !38, i64 112, !3, i64 128, !7, i64 132, !7, i64 136, !3, i64 140, !3, i64 144, !39, i64 152, !7, i64 232, !7, i64 236, !39, i64 240, !39, i64 320, !40, i64 400, !40, i64 416, !3, i64 432, !7, i64 436, !7, i64 440, !7, i64 444, !41, i64 448, !40, i64 464}
!38 = !{!"gs_const_string_s", !2, i64 0, !7, i64 8}
!39 = !{!"psdf_image_params_s", !2, i64 0, !7, i64 8, !7, i64 12, !7, i64 16, !2, i64 24, !7, i64 32, !21, i64 36, !3, i64 40, !7, i64 44, !2, i64 48, !7, i64 56, !2, i64 64, !2, i64 72}
!40 = !{!"gs_param_string_array_s", !2, i64 0, !7, i64 8, !7, i64 12}
!41 = !{!"gs_param_string_s", !2, i64 0, !7, i64 8, !7, i64 12}
!42 = !{!"gs_param_float_array_s", !2, i64 0, !7, i64 8, !7, i64 12}
!43 = !{!"gs_param_int_array_s", !2, i64 0, !7, i64 8, !7, i64 12}
!44 = !{!"gs_rect_s", !25, i64 0, !25, i64 16}
!45 = !{!"pdf_page_dsc_info_s", !7, i64 0, !7, i64 4, !44, i64 8}
!46 = !{!"pdf_temp_file_s", !3, i64 0, !2, i64 4096, !2, i64 4104, !2, i64 4112, !2, i64 4120}
!47 = !{!"pdf_text_rotation_s", !3, i64 0, !7, i64 40}
!48 = !{!"pdf_viewer_state_s", !7, i64 0, !3, i64 8, !21, i64 40, !21, i64 44, !3, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !7, i64 80, !21, i64 84, !21, i64 88, !7, i64 92, !7, i64 96, !7, i64 100, !7, i64 104, !7, i64 108, !7, i64 112, !32, i64 120, !32, i64 752, !20, i64 1384, !2, i64 1488, !7, i64 1496, !9, i64 1504}
!49 = !{!7, !7, i64 0}
!50 = !{!6, !7, i64 28856}
!51 = !{!6, !2, i64 1728}
!52 = !{!53, !2, i64 64}
!53 = !{!"gs_memory_s", !2, i64 0, !54, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!54 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!55 = !{!6, !2, i64 28848}
!56 = !{!53, !2, i64 24}
!57 = !{!9, !9, i64 0}
!58 = !{!6, !7, i64 9960}
!59 = !{!48, !7, i64 0}
!60 = !{!6, !21, i64 6096}
!61 = !{!48, !21, i64 40}
!62 = !{!6, !21, i64 6100}
!63 = !{!48, !21, i64 44}
!64 = !{!6, !3, i64 6092}
!65 = !{!48, !3, i64 48}
!66 = !{!6, !9, i64 9920}
!67 = !{!48, !9, i64 56}
!68 = !{!6, !9, i64 9968}
!69 = !{!48, !9, i64 64}
!70 = !{!6, !9, i64 9976}
!71 = !{!48, !9, i64 72}
!72 = !{!6, !7, i64 9912}
!73 = !{!48, !7, i64 80}
!74 = !{!6, !21, i64 6192}
!75 = !{!48, !21, i64 84}
!76 = !{!6, !21, i64 6168}
!77 = !{!48, !21, i64 88}
!78 = !{!6, !7, i64 6120}
!79 = !{!48, !7, i64 92}
!80 = !{!6, !7, i64 9896}
!81 = !{!48, !7, i64 96}
!82 = !{!6, !7, i64 9900}
!83 = !{!48, !7, i64 100}
!84 = !{!6, !7, i64 6180}
!85 = !{!48, !7, i64 104}
!86 = !{!6, !7, i64 7500}
!87 = !{!48, !7, i64 108}
!88 = !{!6, !7, i64 7504}
!89 = !{!48, !7, i64 112}
!90 = !{i64 0, i64 8, !57, i64 8, i64 8, !57, i64 16, i64 4, !49, i64 24, i64 8, !1, i64 32, i64 256, !91, i64 288, i64 8, !1, i64 296, i64 8, !57, i64 296, i64 16, !91, i64 312, i64 4, !49, i64 316, i64 4, !49, i64 296, i64 64, !91, i64 360, i64 256, !91, i64 616, i64 2, !92, i64 296, i64 128, !91, i64 296, i64 8, !57, i64 304, i64 4, !49, i64 308, i64 4, !49, i64 296, i64 8, !57, i64 304, i64 4, !49, i64 624, i64 4, !49, i64 628, i64 4, !49}
!91 = !{!3, !3, i64 0}
!92 = !{!11, !11, i64 0}
!93 = !{i64 0, i64 4, !94, i64 4, i64 4, !91, i64 8, i64 4, !91, i64 12, i64 4, !91, i64 16, i64 4, !91, i64 20, i64 4, !49, i64 24, i64 4, !94, i64 28, i64 4, !94, i64 32, i64 4, !94, i64 36, i64 4, !49, i64 40, i64 4, !94, i64 44, i64 4, !94, i64 48, i64 4, !94, i64 52, i64 4, !94, i64 56, i64 4, !94, i64 60, i64 4, !94, i64 64, i64 8, !1, i64 72, i64 4, !49, i64 76, i64 4, !94, i64 80, i64 4, !49, i64 84, i64 4, !94, i64 88, i64 4, !49, i64 92, i64 4, !49, i64 96, i64 4, !94}
!94 = !{!21, !21, i64 0}
!95 = !{!48, !2, i64 1448}
!96 = !{!6, !2, i64 7488}
!97 = !{!48, !2, i64 1488}
!98 = !{!6, !2, i64 24}
!99 = !{!53, !2, i64 200}
!100 = !{!6, !7, i64 7496}
!101 = !{!48, !7, i64 1496}
!102 = !{!6, !7, i64 28864}
!103 = !{!53, !2, i64 0}
!104 = !{!6, !9, i64 8832}
!105 = !{!6, !9, i64 8840}
!106 = !{!107, !2, i64 0}
!107 = !{!"gx_device_color_s", !2, i64 0, !3, i64 8, !36, i64 352, !7, i64 360, !33, i64 368, !108, i64 632}
!108 = !{!"_mask", !109, i64 0, !9, i64 8, !2, i64 16}
!109 = !{!"mp_", !7, i64 0, !7, i64 4}
!110 = !{!107, !7, i64 360}
!111 = !{!19, !2, i64 440}
!112 = !{!113, !2, i64 24}
!113 = !{!"gx_transfer_map_s", !8, i64 0, !2, i64 24, !114, i64 32, !9, i64 48, !3, i64 56}
!114 = !{!"gs_mapping_closure_s", !2, i64 0, !2, i64 8}
!115 = !{!19, !2, i64 456}
!116 = !{!19, !2, i64 472}
!117 = !{!19, !2, i64 488}
!118 = !{!113, !9, i64 48}
!119 = !{!19, !21, i64 224}
!120 = !{!19, !21, i64 228}
!121 = !{!19, !3, i64 220}
!122 = !{!19, !2, i64 392}
!123 = !{!124, !9, i64 184}
!124 = !{!"gx_device_halftone_s", !125, i64 0, !8, i64 160, !9, i64 184, !3, i64 192, !2, i64 200, !7, i64 208, !7, i64 212, !7, i64 216, !7, i64 220}
!125 = !{!"gx_ht_order_s", !126, i64 0, !11, i64 40, !11, i64 42, !11, i64 44, !11, i64 46, !11, i64 48, !11, i64 50, !7, i64 52, !7, i64 56, !7, i64 60, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !127, i64 112, !2, i64 144, !7, i64 152}
!126 = !{!"gx_ht_cell_params_s", !11, i64 0, !11, i64 2, !11, i64 4, !11, i64 6, !11, i64 8, !11, i64 10, !9, i64 16, !11, i64 24, !11, i64 26, !7, i64 28, !7, i64 32, !7, i64 36}
!127 = !{!"gx_ht_order_screen_params_s", !22, i64 0, !9, i64 24}
!128 = !{!19, !2, i64 416}
!129 = !{!19, !2, i64 424}
!130 = !{!19, !21, i64 296}
!131 = !{!19, !21, i64 320}
!132 = !{!19, !7, i64 248}
!133 = !{!48, !21, i64 1384}
!134 = !{!48, !3, i64 1388}
!135 = !{!48, !3, i64 1392}
!136 = !{!48, !3, i64 1396}
!137 = !{!48, !3, i64 1400}
!138 = !{!48, !7, i64 1404}
!139 = !{!48, !21, i64 1408}
!140 = !{!48, !21, i64 1412}
!141 = !{!19, !21, i64 56}
!142 = !{!48, !21, i64 1416}
!143 = !{!19, !7, i64 60}
!144 = !{!48, !7, i64 1420}
!145 = !{i64 0, i64 4, !94, i64 4, i64 4, !94, i64 8, i64 4, !94, i64 12, i64 4, !94, i64 16, i64 4, !94, i64 20, i64 4, !94}
!146 = !{!6, !7, i64 30384}
!147 = !{!6, !7, i64 9904}
!148 = !{!6, !7, i64 9908}
!149 = !{!150, !7, i64 8}
!150 = !{!"gs_device_n_params_s", !2, i64 0, !7, i64 8, !2, i64 16, !2, i64 24, !7, i64 32, !2, i64 40}
!151 = !{!6, !7, i64 100}
!152 = !{!153, !2, i64 40}
!153 = !{!"gs_color_space_s", !2, i64 0, !8, i64 8, !9, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !3, i64 72}
!154 = !{!153, !2, i64 0}
!155 = !{!156, !2, i64 56}
!156 = !{!"gs_color_space_type_s", !3, i64 0, !7, i64 4, !7, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128}
!157 = !{!6, !3, i64 9008}
!158 = !{!150, !2, i64 40}
!159 = !{!150, !2, i64 0}
!160 = !{!150, !2, i64 24}
!161 = !{!162, !2, i64 64}
!162 = !{!"pdf_resource_s", !2, i64 0, !2, i64 8, !9, i64 16, !7, i64 24, !7, i64 28, !3, i64 32, !9, i64 56, !2, i64 64}
!163 = !{!164, !9, i64 24}
!164 = !{!"gs_device_n_attributes_s", !8, i64 0, !9, i64 24, !2, i64 32, !2, i64 40}
!165 = !{!164, !2, i64 32}
!166 = !{!167, !2, i64 0}
!167 = !{!"gs_string_s", !2, i64 0, !7, i64 8}
!168 = !{!167, !7, i64 8}
!169 = !{!164, !2, i64 40}
!170 = !{!6, !9, i64 26664}
!171 = !{!162, !9, i64 56}
!172 = !{!173, !2, i64 8}
!173 = !{!"pdf_color_space_names_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!174 = !{!173, !2, i64 16}
!175 = !{!173, !2, i64 0}
!176 = !{!153, !9, i64 32}
!177 = !{!178, !2, i64 88}
!178 = !{!"pdf_color_space_s", !2, i64 0, !2, i64 8, !9, i64 16, !7, i64 24, !7, i64 28, !3, i64 32, !9, i64 56, !2, i64 64, !2, i64 72, !7, i64 80, !2, i64 88}
!179 = !{!178, !7, i64 80}
!180 = !{!178, !2, i64 72}
!181 = !{!182, !9, i64 8}
!182 = !{!"cos_object_s", !2, i64 0, !9, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !3, i64 48, !3, i64 49, !3, i64 50, !9, i64 56, !2, i64 64, !183, i64 72, !7, i64 160, !3, i64 164, !7, i64 180, !3, i64 184}
!183 = !{!"gs_md5_state_s", !3, i64 0, !3, i64 8, !3, i64 24}
!184 = !{!185, !9, i64 8}
!185 = !{!"cos_array_s", !2, i64 0, !9, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !3, i64 48, !3, i64 49, !3, i64 50, !9, i64 56, !2, i64 64, !183, i64 72, !7, i64 160, !3, i64 164, !7, i64 180, !3, i64 184}
!186 = !{!6, !2, i64 5848}
!187 = !{!6, !2, i64 30448}
!188 = !{!189, !2, i64 24}
!189 = !{!"psdf_set_color_commands_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40}
!190 = !{!189, !2, i64 40}
!191 = !{!53, !2, i64 136}
!192 = !{!193, !2, i64 24}
!193 = !{!"gs_separation_params_s", !9, i64 0, !2, i64 8, !3, i64 16, !7, i64 20, !2, i64 24}
!194 = !{!193, !9, i64 0}
!195 = !{!196, !21, i64 0}
!196 = !{!"gs_range_s", !21, i64 0, !21, i64 4}
!197 = !{!196, !21, i64 4}
!198 = !{!6, !7, i64 30760}
!199 = !{!6, !7, i64 30460}
!200 = !{!153, !2, i64 64}
!201 = !{!189, !2, i64 0}
!202 = !{!189, !2, i64 8}
!203 = !{!189, !2, i64 16}
!204 = !{!6, !26, i64 9368}
!205 = !{!19, !7, i64 316}
!206 = !{!6, !7, i64 9524}
!207 = !{!6, !7, i64 9536}
!208 = !{!6, !7, i64 30392}
!209 = !{!6, !7, i64 9012}
!210 = !{!6, !7, i64 9560}
!211 = !{!6, !3, i64 9020}
!212 = !{!6, !7, i64 9564}
!213 = !{!6, !3, i64 9024}
!214 = !{!36, !7, i64 0}
!215 = !{!36, !7, i64 4}
!216 = !{!6, !7, i64 8928}
!217 = !{!6, !3, i64 26560}
!218 = !{!6, !9, i64 6112}
!219 = !{!19, !9, i64 240}
!220 = !{!26, !26, i64 0}
!221 = !{!19, !2, i64 368}
!222 = !{!223, !3, i64 0}
!223 = !{!"gs_halftone_s", !3, i64 0, !8, i64 8, !3, i64 32}
!224 = !{!124, !2, i64 200}
!225 = !{!226, !7, i64 0}
!226 = !{!"gs_function_Sd_params_s", !7, i64 0, !2, i64 8, !7, i64 16, !2, i64 24, !7, i64 32, !227, i64 40, !7, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !7, i64 128}
!227 = !{!"gs_data_source_s", !2, i64 0, !3, i64 8, !3, i64 16}
!228 = !{!226, !2, i64 8}
!229 = !{!226, !7, i64 16}
!230 = !{!226, !2, i64 24}
!231 = !{!226, !7, i64 32}
!232 = !{!226, !2, i64 40}
!233 = !{!38, !2, i64 0}
!234 = !{!226, !7, i64 72}
!235 = !{!226, !2, i64 80}
!236 = !{!226, !2, i64 88}
!237 = !{!226, !2, i64 96}
!238 = !{!239, !2, i64 56}
!239 = !{!"gs_function_s", !240, i64 0, !242, i64 72}
!240 = !{!"gs_function_head_s", !7, i64 0, !241, i64 8}
!241 = !{!"gs_function_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56}
!242 = !{!"gs_function_params_s", !7, i64 0, !2, i64 8, !7, i64 16, !2, i64 24}
!243 = !{!6, !7, i64 9016}
!244 = !{!19, !7, i64 272}
!245 = !{!6, !2, i64 30472}
!246 = !{!19, !7, i64 308}
!247 = !{!248, !2, i64 1680}
!248 = !{!"gx_device_s", !7, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !2, i64 48, !8, i64 56, !7, i64 80, !7, i64 84, !7, i64 88, !10, i64 96, !13, i64 816, !7, i64 832, !7, i64 836, !7, i64 840, !7, i64 844, !7, i64 848, !7, i64 852, !3, i64 856, !3, i64 864, !7, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !9, i64 928, !9, i64 936, !7, i64 944, !7, i64 948, !7, i64 952, !7, i64 956, !7, i64 960, !9, i64 968, !9, i64 976, !14, i64 984, !7, i64 1052, !7, i64 1056, !15, i64 1064, !2, i64 1104, !3, i64 1112, !17, i64 1120, !18, i64 1144}
!249 = !{!250, !3, i64 16}
!250 = !{!"cmm_profile_s", !3, i64 0, !3, i64 1, !7, i64 4, !7, i64 8, !3, i64 12, !3, i64 16, !251, i64 20, !9, i64 144, !7, i64 152, !3, i64 156, !7, i64 216, !7, i64 220, !7, i64 224, !252, i64 228, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !8, i64 288, !7, i64 312, !2, i64 320, !2, i64 328, !2, i64 336}
!251 = !{!"gs_range_icc_s", !3, i64 0}
!252 = !{!"gsicc_rendering_param_s", !3, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !7, i64 20}
!253 = !{!250, !7, i64 4}
!254 = !{!156, !2, i64 24}
!255 = !{i64 0, i64 4, !94, i64 4, i64 4, !94, i64 8, i64 8, !1, i64 16, i64 4, !94, i64 20, i64 4, !94}
!256 = !{!257, !7, i64 24}
!257 = !{!"gs_spot_halftone_s", !258, i64 0, !7, i64 24, !2, i64 32, !114, i64 40}
!258 = !{!"gs_screen_halftone_s", !21, i64 0, !21, i64 4, !2, i64 8, !21, i64 16, !21, i64 20}
!259 = !{!257, !2, i64 32}
!260 = !{!257, !2, i64 40}
!261 = !{!124, !7, i64 208}
!262 = !{!125, !2, i64 104}
!263 = !{i64 0, i64 2, !92, i64 2, i64 2, !92, i64 4, i64 2, !92, i64 6, i64 2, !92, i64 8, i64 2, !92, i64 10, i64 2, !92, i64 16, i64 8, !57, i64 24, i64 2, !92, i64 26, i64 2, !92, i64 28, i64 4, !49, i64 32, i64 4, !49, i64 36, i64 4, !49, i64 40, i64 2, !92, i64 42, i64 2, !92, i64 44, i64 2, !92, i64 46, i64 2, !92, i64 48, i64 2, !92, i64 50, i64 2, !92, i64 52, i64 4, !49, i64 56, i64 4, !49, i64 60, i64 4, !49, i64 64, i64 8, !1, i64 72, i64 8, !1, i64 80, i64 8, !1, i64 88, i64 8, !1, i64 96, i64 8, !1, i64 104, i64 8, !1, i64 112, i64 4, !94, i64 116, i64 4, !94, i64 120, i64 4, !94, i64 124, i64 4, !94, i64 128, i64 4, !94, i64 132, i64 4, !94, i64 136, i64 8, !57, i64 144, i64 8, !1, i64 152, i64 4, !49}
!264 = !{!265, !2, i64 8}
!265 = !{!"ht_function_s", !2, i64 0, !2, i64 8}
!266 = !{!25, !26, i64 0}
!267 = !{!25, !26, i64 8}
!268 = !{!125, !2, i64 88}
!269 = !{!125, !7, i64 60}
!270 = !{!125, !2, i64 64}
!271 = !{!272, !7, i64 0}
!272 = !{!"gx_ht_order_procs_s", !7, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32}
!273 = !{!257, !21, i64 0}
!274 = !{!257, !21, i64 4}
!275 = !{!265, !2, i64 0}
!276 = !{!277, !2, i64 48}
!277 = !{!"pdf_data_writer_s", !278, i64 0, !9, i64 32, !9, i64 40, !2, i64 48, !2, i64 56, !9, i64 64, !7, i64 72}
!278 = !{!"psdf_binary_writer_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!279 = !{!280, !7, i64 0}
!280 = !{!"gs_threshold_halftone_s", !7, i64 0, !7, i64 4, !114, i64 8, !38, i64 24, !2, i64 40}
!281 = !{!280, !7, i64 4}
!282 = !{!277, !2, i64 16}
!283 = !{!280, !2, i64 24}
!284 = !{!280, !7, i64 32}
!285 = !{!286, !7, i64 0}
!286 = !{!"gs_threshold2_halftone_s", !7, i64 0, !7, i64 4, !114, i64 8, !7, i64 24, !7, i64 28, !7, i64 32, !287, i64 40}
!287 = !{!"gs_const_bytestring_s", !2, i64 0, !7, i64 8, !2, i64 16}
!288 = !{!286, !7, i64 4}
!289 = !{!286, !7, i64 24}
!290 = !{!286, !7, i64 28}
!291 = !{!286, !7, i64 32}
!292 = !{!286, !2, i64 40}
!293 = !{!286, !7, i64 48}
!294 = !{!53, !2, i64 88}
!295 = !{!296, !7, i64 8}
!296 = !{!"gs_multiple_halftone_s", !2, i64 0, !7, i64 8, !2, i64 16}
!297 = !{!296, !2, i64 0}
!298 = !{!299, !7, i64 0}
!299 = !{!"gs_halftone_component_s", !7, i64 0, !7, i64 4, !3, i64 8, !3, i64 16}
!300 = !{!299, !3, i64 8}
!301 = !{!296, !2, i64 16}
!302 = !{!299, !7, i64 4}
!303 = !{!53, !2, i64 160}
!304 = !{!125, !7, i64 56}
!305 = !{!125, !2, i64 80}
!306 = !{!125, !11, i64 40}
!307 = !{!125, !11, i64 42}
!308 = !{!226, !7, i64 128}
!309 = !{!272, !2, i64 16}
!310 = !{!227, !3, i64 8}
!311 = !{!38, !7, i64 8}
!312 = !{!227, !2, i64 0}
