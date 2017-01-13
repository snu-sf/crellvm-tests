; ModuleID = './gxclpath.bc'
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
%struct.gx_ht_cache_s = type opaque
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
%struct.gs_halftone_s = type { i32, %struct.rc_header_s, %union.anon.2 }
%union.anon.2 = type { %struct.gs_colorscreen_halftone_s }
%struct.gs_colorscreen_halftone_s = type { %union._css }
%union._css = type { [4 x %struct.gs_screen_halftone_s] }
%struct.gs_screen_halftone_s = type { float, float, float (double, double)*, float, float }
%struct.gs_cie_render_s = type opaque
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
%struct.gx_image_type_s = type opaque
%struct.gx_image_enum_common_s = type opaque
%struct.gs_image_common_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s }
%struct.gs_get_bits_params_s = type opaque
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
%struct.patch_fill_state_s = type opaque
%struct.gs_devn_params_s = type opaque
%struct.gx_process_page_options_s = type { i32 (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i32, i32, i8**)*, void (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_int_rect_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, i8*)*, i8*, i32 }
%struct.gx_device_buf_procs_s = type { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)*, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)*, void (%struct.gx_device_s*)* }
%struct.gx_render_plane_s = type { i32, i32, i32 }
%struct.gx_colors_usage_s = type { i64, i32, %struct.gs_int_rect_s }
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
%struct.gx_clist_state_s = type { [2 x i64], %struct.gx_device_color_saved_s, i32, i64, i64, %struct.gs_int_point_s, [2 x i64], [2 x %struct.gx_device_color_s], %struct.gx_cmd_rect, i32, i16, i16, i32, i32, i32, %struct.cmd_list_s, %struct.gx_colors_usage_s }
%struct.gx_device_color_saved_s = type { %struct.gx_device_color_type_s*, %union._svc, %struct.gs_int_point_s }
%union._svc = type { %struct._svbin, [304 x i8] }
%struct._svbin = type { [2 x i64], i32, i32 }
%struct.gx_cmd_rect = type { i32, i32, i32, i32 }
%struct.cmd_list_s = type { %struct.cmd_prefix_s*, %struct.cmd_prefix_s* }
%struct.cmd_prefix_s = type { %struct.cmd_prefix_s*, i32, i64 }
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
%struct.gx_cie_joint_caches_s = type opaque
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
%struct.gs_state_s = type opaque
%struct.gs_paint_color_s = type { [64 x float] }
%struct._mask = type { %struct.mp_, i64, %struct.gx_color_tile_s* }
%struct.mp_ = type { i32, i32 }
%struct.gx_rop_source_s = type { i8*, i32, i32, i64, [2 x i64], i32, i32 }
%struct.cmd_rects_enum_s = type { i32, i32, i32, i32, i32, i32, %struct.gx_clist_state_s*, i32, i32 }
%struct._pattern = type { i64, %struct.gs_int_point_s }
%struct._bin = type { %struct.gx_device_halftone_s*, [2 x i64], i32, i32, %struct.gx_ht_tile_s* }
%struct.gs_indexed_params_s = type { i32, i32, %union.anon.0, i32 }
%union.anon.0 = type { %struct.gs_const_string_s }
%struct.gs_indexed_map_s = type { %struct.rc_header_s, %union.anon.1, i8*, i32, float* }
%union.anon.1 = type { i32 (%struct.gs_color_space_s*, i32, float*)* }
%struct.gs_path_enum_s = type { %struct.gs_memory_s*, %struct.gs_matrix_s, %struct.segment_s*, %struct.gx_path_s*, %struct.gx_path_s*, i32, i32 }
%struct.cmd_segment_writer_s = type { %struct.gx_device_clist_writer_s*, %struct.gx_clist_state_s*, i32, i8*, i32, %struct.gs_fixed_point_s, [30 x i8] }
%struct.anon = type { [6 x i32] }

@gx_dc_type_data_pure = external constant %struct.gx_device_color_type_s, align 8
@gx_dc_type_data_none = external constant %struct.gx_device_color_type_s, align 8
@gx_dc_type_data_ht_binary = external constant %struct.gx_device_color_type_s, align 8
@gx_dc_type_data_ht_colored = external constant %struct.gx_device_color_type_s, align 8
@gx_dc_type_data_devn = external constant %struct.gx_device_color_type_s, align 8
@byte_reverse_bits = external constant [256 x i8], align 16
@.str = private unnamed_addr constant [19 x i8] c"clist_put_polyfill\00", align 1
@cmd_put_segment.op_num_operands = internal constant [16 x i8] c"\02\02\01\01\04\06\06\06\04\04\04\04\02\02\00\00", align 16

; Function Attrs: nounwind uwtable
define i32 @cmd_slow_rop(%struct.gx_device_s* %dev, i32 %lop, %struct.gx_device_color_s* %pdcolor) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %lop.addr = alloca i32, align 4
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %rop = alloca i32, align 4
  %color = alloca i64, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %lop, i32* %lop.addr, align 4, !tbaa !5
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %0 = bitcast i32* %rop to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %and = and i32 %1, 255
  store i32 %and, i32* %rop, align 4, !tbaa !7
  %2 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.gx_device_color_s* %2, null
  br i1 %cmp, label %land.lhs.true, label %if.end.13

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %3, i32 0, i32 0
  %4 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !8
  %cmp1 = icmp eq %struct.gx_device_color_type_s* %4, @gx_dc_type_data_pure
  br i1 %cmp1, label %if.then, label %if.end.13

if.then:                                          ; preds = %land.lhs.true
  %5 = bitcast i64* %color to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %6, i32 0, i32 1
  %pure = bitcast %union._c* %colors to i64*
  %7 = load i64, i64* %pure, align 8, !tbaa !16
  store i64 %7, i64* %color, align 8, !tbaa !16
  %8 = load i64, i64* %color, align 8, !tbaa !16
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call i64 @gx_device_black(%struct.gx_device_s* %9) #5
  %cmp2 = icmp eq i64 %8, %call
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %10 = load i32, i32* %rop, align 4, !tbaa !7
  %and4 = and i32 %10, 15
  %shl = shl i32 %and4, 4
  %11 = load i32, i32* %rop, align 4, !tbaa !7
  %and5 = and i32 %11, -241
  %or = or i32 %shl, %and5
  store i32 %or, i32* %rop, align 4, !tbaa !7
  br label %if.end.12

if.else:                                          ; preds = %if.then
  %12 = load i64, i64* %color, align 8, !tbaa !16
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call6 = call i64 @gx_device_white(%struct.gx_device_s* %13) #5
  %cmp7 = icmp eq i64 %12, %call6
  br i1 %cmp7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.else
  %14 = load i32, i32* %rop, align 4, !tbaa !7
  %and9 = and i32 %14, 240
  %shr = lshr i32 %and9, 4
  %15 = load i32, i32* %rop, align 4, !tbaa !7
  %and10 = and i32 %15, -16
  %or11 = or i32 %shr, %and10
  store i32 %or11, i32* %rop, align 4, !tbaa !7
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.else
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %if.then.3
  %16 = bitcast i64* %color to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %land.lhs.true, %entry
  %17 = load i32, i32* %rop, align 4, !tbaa !7
  %cmp14 = icmp eq i32 %17, 0
  br i1 %cmp14, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.13
  %18 = load i32, i32* %rop, align 4, !tbaa !7
  %cmp15 = icmp eq i32 %18, 255
  br i1 %cmp15, label %lor.end, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %lor.lhs.false
  %19 = load i32, i32* %rop, align 4, !tbaa !7
  %cmp17 = icmp eq i32 %19, 204
  br i1 %cmp17, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.16
  %20 = load i32, i32* %rop, align 4, !tbaa !7
  %cmp18 = icmp eq i32 %20, 240
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.16, %lor.lhs.false, %if.end.13
  %21 = phi i1 [ true, %lor.lhs.false.16 ], [ true, %lor.lhs.false ], [ true, %if.end.13 ], [ %cmp18, %lor.rhs ]
  %lnot = xor i1 %21, true
  %lnot.ext = zext i1 %lnot to i32
  %22 = bitcast i32* %rop to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #1
  ret i32 %lnot.ext
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i64 @gx_device_black(%struct.gx_device_s*) #2

declare i64 @gx_device_white(%struct.gx_device_s*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @cmd_put_drawing_color(%struct.gx_device_clist_writer_s* %cldev, %struct.gx_clist_state_s* %pcls, %struct.gx_device_color_s* %pdcolor, %struct.cmd_rects_enum_s* %pre, i32 %devn_type) #0 {
entry:
  %retval = alloca i32, align 4
  %cldev.addr = alloca %struct.gx_device_clist_writer_s*, align 8
  %pcls.addr = alloca %struct.gx_clist_state_s*, align 8
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %pre.addr = alloca %struct.cmd_rects_enum_s*, align 8
  %devn_type.addr = alloca i32, align 4
  %pdht = alloca %struct.gx_device_halftone_s*, align 8
  %code = alloca i32, align 4
  %di = alloca i32, align 4
  %dc_size = alloca i32, align 4
  %req_size = alloca i32, align 4
  %psdc = alloca %struct.gx_device_color_saved_s*, align 8
  %dp = alloca i8*, align 8
  %dp0 = alloca i8*, align 8
  %color_phase = alloca %struct.gs_int_point_s, align 4
  %buffer_space = alloca i32, align 4
  %offset = alloca i32, align 4
  %left = alloca i32, align 4
  %portion_size = alloca i32, align 4
  %prefix_size = alloca i32, align 4
  %req_size_final = alloca i32, align 4
  %is_pattern = alloca i32, align 4
  %pattern_id = alloca i64, align 8
  %all_bands = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %pcls1 = alloca %struct.gx_clist_state_s*, align 8
  %pcls1322 = alloca %struct.gx_clist_state_s*, align 8
  store %struct.gx_device_clist_writer_s* %cldev, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  store %struct.gx_clist_state_s* %pcls, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store %struct.cmd_rects_enum_s* %pre, %struct.cmd_rects_enum_s** %pre.addr, align 8, !tbaa !1
  store i32 %devn_type, i32* %devn_type.addr, align 4, !tbaa !7
  %0 = bitcast %struct.gx_device_halftone_s** %pdht to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %1, i32 0, i32 0
  %2 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !8
  %get_dev_halftone = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %2, i32 0, i32 2
  %3 = load %struct.gx_device_halftone_s* (%struct.gx_device_color_s*)*, %struct.gx_device_halftone_s* (%struct.gx_device_color_s*)** %get_dev_halftone, align 8, !tbaa !17
  %4 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %call = call %struct.gx_device_halftone_s* %3(%struct.gx_device_color_s* %4) #5
  store %struct.gx_device_halftone_s* %call, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %di to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %dc_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 0, i32* %dc_size, align 4, !tbaa !5
  %8 = bitcast i32* %req_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast %struct.gx_device_color_saved_s** %psdc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %sdc = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %10, i32 0, i32 1
  store %struct.gx_device_color_saved_s* %sdc, %struct.gx_device_color_saved_s** %psdc, align 8, !tbaa !1
  %11 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = bitcast i8** %dp0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = bitcast %struct.gs_int_point_s* %color_phase to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = bitcast i32* %buffer_space to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  store i32 0, i32* %offset, align 4, !tbaa !5
  %16 = bitcast i32* %left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = bitcast i32* %portion_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = bitcast i32* %prefix_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = bitcast i32* %req_size_final to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  %20 = bitcast i32* %is_pattern to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = bitcast i64* %pattern_id to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  store i64 0, i64* %pattern_id, align 8, !tbaa !16
  %22 = bitcast i32* %all_bands to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  %23 = load %struct.cmd_rects_enum_s*, %struct.cmd_rects_enum_s** %pre.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.cmd_rects_enum_s* %23, null
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %all_bands, align 4, !tbaa !5
  %24 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  %cmp1 = icmp ne %struct.gx_device_halftone_s* %24, null
  br i1 %cmp1, label %land.lhs.true, label %if.end.10

land.lhs.true:                                    ; preds = %entry
  %25 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  %id = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %25, i32 0, i32 2
  %26 = load i64, i64* %id, align 8, !tbaa !19
  %27 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %device_halftone_id = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %27, i32 0, i32 92
  %28 = load i64, i64* %device_halftone_id, align 8, !tbaa !28
  %cmp3 = icmp ne i64 %26, %28
  br i1 %cmp3, label %if.then, label %if.end.10

if.then:                                          ; preds = %land.lhs.true
  %29 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %30 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  %call5 = call i32 @cmd_put_halftone(%struct.gx_device_clist_writer_s* %29, %struct.gx_device_halftone_s* %30) #5
  store i32 %call5, i32* %code, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then
  %31 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %31, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %32 = load %struct.gx_device_color_saved_s*, %struct.gx_device_color_saved_s** %psdc, align 8, !tbaa !1
  %type9 = getelementptr inbounds %struct.gx_device_color_saved_s, %struct.gx_device_color_saved_s* %32, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_none, %struct.gx_device_color_type_s** %type9, align 8, !tbaa !57
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %land.lhs.true, %entry
  %33 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %call11 = call i32 @gx_get_dc_type_index(%struct.gx_device_color_s* %33) #5
  store i32 %call11, i32* %di, align 4, !tbaa !5
  %34 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %type12 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %34, i32 0, i32 0
  %35 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type12, align 8, !tbaa !8
  %write = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %35, i32 0, i32 8
  %36 = load i32 (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*, %struct.gx_device_s*, i64, i8*, i32*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*, %struct.gx_device_s*, i64, i8*, i32*)** %write, align 8, !tbaa !59
  %37 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %38 = load %struct.gx_device_color_saved_s*, %struct.gx_device_color_saved_s** %psdc, align 8, !tbaa !1
  %39 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %40 = bitcast %struct.gx_device_clist_writer_s* %39 to %struct.gx_device_s*
  %call13 = call i32 %36(%struct.gx_device_color_s* %37, %struct.gx_device_color_saved_s* %38, %struct.gx_device_s* %40, i64 0, i8* null, i32* %dc_size) #5
  store i32 %call13, i32* %code, align 4, !tbaa !5
  %41 = load i32, i32* %code, align 4, !tbaa !5
  %cmp14 = icmp sgt i32 %41, 0
  br i1 %cmp14, label %land.lhs.true.16, label %if.else

land.lhs.true.16:                                 ; preds = %if.end.10
  %42 = load i32, i32* %devn_type.addr, align 4, !tbaa !7
  %cmp17 = icmp eq i32 %42, 0
  br i1 %cmp17, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %land.lhs.true.16
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.16, %if.end.10
  %43 = load i32, i32* %code, align 4, !tbaa !5
  %cmp20 = icmp slt i32 %43, 0
  br i1 %cmp20, label %land.lhs.true.22, label %if.end.26

land.lhs.true.22:                                 ; preds = %if.else
  %44 = load i32, i32* %code, align 4, !tbaa !5
  %cmp23 = icmp ne i32 %44, -15
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %land.lhs.true.22
  %45 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %45, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.26:                                        ; preds = %land.lhs.true.22, %if.else
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26
  %46 = load i32, i32* %all_bands, align 4, !tbaa !5
  %tobool = icmp ne i32 %46, 0
  br i1 %tobool, label %if.end.32, label %land.lhs.true.28

land.lhs.true.28:                                 ; preds = %if.end.27
  %47 = load i32, i32* %dc_size, align 4, !tbaa !5
  %48 = load %struct.cmd_rects_enum_s*, %struct.cmd_rects_enum_s** %pre.addr, align 8, !tbaa !1
  %rect_nbands = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %48, i32 0, i32 8
  %49 = load i32, i32* %rect_nbands, align 4, !tbaa !60
  %mul = mul i32 %47, %49
  %cmp29 = icmp ugt i32 %mul, 1048576
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %land.lhs.true.28
  store i32 1, i32* %all_bands, align 4, !tbaa !5
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %land.lhs.true.28, %if.end.27
  %50 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %call33 = call i32 @gx_dc_is_pattern1_color(%struct.gx_device_color_s* %50) #5
  store i32 %call33, i32* %is_pattern, align 4, !tbaa !5
  %51 = load i32, i32* %is_pattern, align 4, !tbaa !5
  %tobool34 = icmp ne i32 %51, 0
  br i1 %tobool34, label %if.then.35, label %if.end.37

if.then.35:                                       ; preds = %if.end.32
  %52 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %call36 = call i64 @gs_dc_get_pattern_id(%struct.gx_device_color_s* %52) #5
  store i64 %call36, i64* %pattern_id, align 8, !tbaa !16
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.35, %if.end.32
  %53 = load i32, i32* %all_bands, align 4, !tbaa !5
  %tobool38 = icmp ne i32 %53, 0
  br i1 %tobool38, label %if.then.39, label %if.end.49

if.then.39:                                       ; preds = %if.end.37
  %54 = bitcast %struct.gx_clist_state_s** %pcls1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %54) #1
  %55 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %states = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %55, i32 0, i32 66
  %56 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %states, align 8, !tbaa !62
  store %struct.gx_clist_state_s* %56, %struct.gx_clist_state_s** %pcls1, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.39
  %57 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls1, align 8, !tbaa !1
  %58 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %states40 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %58, i32 0, i32 66
  %59 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %states40, align 8, !tbaa !62
  %60 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %nbands = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %60, i32 0, i32 59
  %61 = load i32, i32* %nbands, align 4, !tbaa !63
  %idx.ext = sext i32 %61 to i64
  %add.ptr = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %59, i64 %idx.ext
  %cmp41 = icmp ult %struct.gx_clist_state_s* %57, %add.ptr
  br i1 %cmp41, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %62 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls1, align 8, !tbaa !1
  %pattern_id43 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %62, i32 0, i32 4
  %63 = load i64, i64* %pattern_id43, align 8, !tbaa !64
  %64 = load i64, i64* %pattern_id, align 8, !tbaa !16
  %cmp44 = icmp eq i64 %63, %64
  br i1 %cmp44, label %if.then.46, label %if.end.48

if.then.46:                                       ; preds = %for.body
  %65 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %pattern_id47 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %65, i32 0, i32 4
  store i64 0, i64* %pattern_id47, align 8, !tbaa !64
  br label %for.end

if.end.48:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.48
  %66 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls1, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %66, i32 1
  store %struct.gx_clist_state_s* %incdec.ptr, %struct.gx_clist_state_s** %pcls1, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %if.then.46, %for.cond
  %67 = bitcast %struct.gx_clist_state_s** %pcls1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #1
  br label %if.end.49

if.end.49:                                        ; preds = %for.end, %if.end.37
  %68 = load i32, i32* %dc_size, align 4, !tbaa !5
  store i32 %68, i32* %left, align 4, !tbaa !5
  %69 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %type50 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %69, i32 0, i32 0
  %70 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type50, align 8, !tbaa !8
  %get_phase = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %70, i32 0, i32 3
  %71 = load i32 (%struct.gx_device_color_s*, %struct.gs_int_point_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_int_point_s*)** %get_phase, align 8, !tbaa !69
  %72 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %call51 = call i32 %71(%struct.gx_device_color_s* %72, %struct.gs_int_point_s* %color_phase) #5
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %land.lhs.true.53, label %if.end.70

land.lhs.true.53:                                 ; preds = %if.end.49
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %color_phase, i32 0, i32 0
  %73 = load i32, i32* %x, align 4, !tbaa !70
  %74 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %tile_phase = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %74, i32 0, i32 5
  %x54 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %tile_phase, i32 0, i32 0
  %75 = load i32, i32* %x54, align 4, !tbaa !71
  %cmp55 = icmp ne i32 %73, %75
  br i1 %cmp55, label %land.lhs.true.63, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.53
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %color_phase, i32 0, i32 1
  %76 = load i32, i32* %y, align 4, !tbaa !72
  %77 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %tile_phase57 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %77, i32 0, i32 5
  %y58 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %tile_phase57, i32 0, i32 1
  %78 = load i32, i32* %y58, align 4, !tbaa !73
  %cmp59 = icmp ne i32 %76, %78
  br i1 %cmp59, label %land.lhs.true.63, label %lor.lhs.false.61

lor.lhs.false.61:                                 ; preds = %lor.lhs.false
  %79 = load i32, i32* %all_bands, align 4, !tbaa !5
  %tobool62 = icmp ne i32 %79, 0
  br i1 %tobool62, label %land.lhs.true.63, label %if.end.70

land.lhs.true.63:                                 ; preds = %lor.lhs.false.61, %lor.lhs.false, %land.lhs.true.53
  %80 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %81 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %x64 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %color_phase, i32 0, i32 0
  %82 = load i32, i32* %x64, align 4, !tbaa !70
  %y65 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %color_phase, i32 0, i32 1
  %83 = load i32, i32* %y65, align 4, !tbaa !72
  %84 = load i32, i32* %all_bands, align 4, !tbaa !5
  %call66 = call i32 @cmd_set_tile_phase_generic(%struct.gx_device_clist_writer_s* %80, %struct.gx_clist_state_s* %81, i32 %82, i32 %83, i32 %84) #5
  store i32 %call66, i32* %code, align 4, !tbaa !5
  %cmp67 = icmp slt i32 %call66, 0
  br i1 %cmp67, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %land.lhs.true.63
  %85 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %85, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.70:                                        ; preds = %land.lhs.true.63, %lor.lhs.false.61, %if.end.49
  %86 = load i32, i32* %is_pattern, align 4, !tbaa !5
  %tobool71 = icmp ne i32 %86, 0
  br i1 %tobool71, label %if.then.72, label %if.end.82

if.then.72:                                       ; preds = %if.end.70
  %87 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %call73 = call i64 @gs_dc_get_pattern_id(%struct.gx_device_color_s* %87) #5
  store i64 %call73, i64* %pattern_id, align 8, !tbaa !16
  %88 = load i64, i64* %pattern_id, align 8, !tbaa !16
  %cmp74 = icmp ne i64 %88, 0
  br i1 %cmp74, label %land.lhs.true.76, label %if.end.81

land.lhs.true.76:                                 ; preds = %if.then.72
  %89 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %pattern_id77 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %89, i32 0, i32 4
  %90 = load i64, i64* %pattern_id77, align 8, !tbaa !64
  %91 = load i64, i64* %pattern_id, align 8, !tbaa !16
  %cmp78 = icmp eq i64 %90, %91
  br i1 %cmp78, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %land.lhs.true.76
  store i32 8, i32* %left, align 4, !tbaa !5
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.80, %land.lhs.true.76, %if.then.72
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %if.end.70
  br label %do.body

do.body:                                          ; preds = %do.cond.254, %if.end.82
  %92 = load i32, i32* %offset, align 4, !tbaa !5
  %cmp83 = icmp sgt i32 %92, 0
  br i1 %cmp83, label %cond.true, label %cond.false.95

cond.true:                                        ; preds = %do.body
  %93 = load i32, i32* %offset, align 4, !tbaa !5
  %cmp85 = icmp ult i32 %93, 128
  br i1 %cmp85, label %cond.true.87, label %cond.false

cond.true.87:                                     ; preds = %cond.true
  br label %cond.end.93

cond.false:                                       ; preds = %cond.true
  %94 = load i32, i32* %offset, align 4, !tbaa !5
  %cmp88 = icmp ult i32 %94, 16384
  br i1 %cmp88, label %cond.true.90, label %cond.false.91

cond.true.90:                                     ; preds = %cond.false
  br label %cond.end

cond.false.91:                                    ; preds = %cond.false
  %95 = load i32, i32* %offset, align 4, !tbaa !5
  %call92 = call i32 @enc_u_size_uint(i32 %95) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false.91, %cond.true.90
  %cond = phi i32 [ 2, %cond.true.90 ], [ %call92, %cond.false.91 ]
  br label %cond.end.93

cond.end.93:                                      ; preds = %cond.end, %cond.true.87
  %cond94 = phi i32 [ 1, %cond.true.87 ], [ %cond, %cond.end ]
  br label %cond.end.96

cond.false.95:                                    ; preds = %do.body
  br label %cond.end.96

cond.end.96:                                      ; preds = %cond.false.95, %cond.end.93
  %cond97 = phi i32 [ %cond94, %cond.end.93 ], [ 0, %cond.false.95 ]
  %add = add nsw i32 3, %cond97
  store i32 %add, i32* %prefix_size, align 4, !tbaa !5
  %96 = load i32, i32* %left, align 4, !tbaa !5
  %97 = load i32, i32* %prefix_size, align 4, !tbaa !5
  %add98 = add i32 %96, %97
  %98 = load i32, i32* %left, align 4, !tbaa !5
  %cmp99 = icmp ult i32 %98, 128
  br i1 %cmp99, label %cond.true.101, label %cond.false.102

cond.true.101:                                    ; preds = %cond.end.96
  br label %cond.end.110

cond.false.102:                                   ; preds = %cond.end.96
  %99 = load i32, i32* %left, align 4, !tbaa !5
  %cmp103 = icmp ult i32 %99, 16384
  br i1 %cmp103, label %cond.true.105, label %cond.false.106

cond.true.105:                                    ; preds = %cond.false.102
  br label %cond.end.108

cond.false.106:                                   ; preds = %cond.false.102
  %100 = load i32, i32* %left, align 4, !tbaa !5
  %call107 = call i32 @enc_u_size_uint(i32 %100) #5
  br label %cond.end.108

cond.end.108:                                     ; preds = %cond.false.106, %cond.true.105
  %cond109 = phi i32 [ 2, %cond.true.105 ], [ %call107, %cond.false.106 ]
  br label %cond.end.110

cond.end.110:                                     ; preds = %cond.end.108, %cond.true.101
  %cond111 = phi i32 [ 1, %cond.true.101 ], [ %cond109, %cond.end.108 ]
  %add112 = add i32 %add98, %cond111
  store i32 %add112, i32* %req_size, align 4, !tbaa !5
  %101 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %102 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %103 = load i32, i32* %req_size, align 4, !tbaa !5
  %call113 = call i32 @cmd_get_buffer_space(%struct.gx_device_clist_writer_s* %101, %struct.gx_clist_state_s* %102, i32 %103) #5
  store i32 %call113, i32* %code, align 4, !tbaa !5
  %104 = load i32, i32* %code, align 4, !tbaa !5
  %cmp114 = icmp slt i32 %104, 0
  br i1 %cmp114, label %if.then.116, label %if.end.117

if.then.116:                                      ; preds = %cond.end.110
  %105 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %105, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.117:                                       ; preds = %cond.end.110
  %106 = load i32, i32* %code, align 4, !tbaa !5
  %107 = load i32, i32* %req_size, align 4, !tbaa !5
  %cmp118 = icmp ult i32 %106, %107
  br i1 %cmp118, label %cond.true.120, label %cond.false.121

cond.true.120:                                    ; preds = %if.end.117
  %108 = load i32, i32* %code, align 4, !tbaa !5
  br label %cond.end.122

cond.false.121:                                   ; preds = %if.end.117
  %109 = load i32, i32* %req_size, align 4, !tbaa !5
  br label %cond.end.122

cond.end.122:                                     ; preds = %cond.false.121, %cond.true.120
  %cond123 = phi i32 [ %108, %cond.true.120 ], [ %109, %cond.false.121 ]
  store i32 %cond123, i32* %buffer_space, align 4, !tbaa !5
  %110 = load i32, i32* %buffer_space, align 4, !tbaa !5
  %111 = load i32, i32* %prefix_size, align 4, !tbaa !5
  %sub = sub i32 %110, %111
  %112 = load i32, i32* %left, align 4, !tbaa !5
  %cmp124 = icmp ult i32 %112, 128
  br i1 %cmp124, label %cond.true.126, label %cond.false.127

cond.true.126:                                    ; preds = %cond.end.122
  br label %cond.end.135

cond.false.127:                                   ; preds = %cond.end.122
  %113 = load i32, i32* %left, align 4, !tbaa !5
  %cmp128 = icmp ult i32 %113, 16384
  br i1 %cmp128, label %cond.true.130, label %cond.false.131

cond.true.130:                                    ; preds = %cond.false.127
  br label %cond.end.133

cond.false.131:                                   ; preds = %cond.false.127
  %114 = load i32, i32* %left, align 4, !tbaa !5
  %call132 = call i32 @enc_u_size_uint(i32 %114) #5
  br label %cond.end.133

cond.end.133:                                     ; preds = %cond.false.131, %cond.true.130
  %cond134 = phi i32 [ 2, %cond.true.130 ], [ %call132, %cond.false.131 ]
  br label %cond.end.135

cond.end.135:                                     ; preds = %cond.end.133, %cond.true.126
  %cond136 = phi i32 [ 1, %cond.true.126 ], [ %cond134, %cond.end.133 ]
  %sub137 = sub i32 %sub, %cond136
  store i32 %sub137, i32* %portion_size, align 4, !tbaa !5
  %115 = load i32, i32* %portion_size, align 4, !tbaa !5
  %116 = load i32, i32* %prefix_size, align 4, !tbaa !5
  %add138 = add i32 %115, %116
  %117 = load i32, i32* %portion_size, align 4, !tbaa !5
  %cmp139 = icmp ult i32 %117, 128
  br i1 %cmp139, label %cond.true.141, label %cond.false.142

cond.true.141:                                    ; preds = %cond.end.135
  br label %cond.end.150

cond.false.142:                                   ; preds = %cond.end.135
  %118 = load i32, i32* %portion_size, align 4, !tbaa !5
  %cmp143 = icmp ult i32 %118, 16384
  br i1 %cmp143, label %cond.true.145, label %cond.false.146

cond.true.145:                                    ; preds = %cond.false.142
  br label %cond.end.148

cond.false.146:                                   ; preds = %cond.false.142
  %119 = load i32, i32* %portion_size, align 4, !tbaa !5
  %call147 = call i32 @enc_u_size_uint(i32 %119) #5
  br label %cond.end.148

cond.end.148:                                     ; preds = %cond.false.146, %cond.true.145
  %cond149 = phi i32 [ 2, %cond.true.145 ], [ %call147, %cond.false.146 ]
  br label %cond.end.150

cond.end.150:                                     ; preds = %cond.end.148, %cond.true.141
  %cond151 = phi i32 [ 1, %cond.true.141 ], [ %cond149, %cond.end.148 ]
  %add152 = add i32 %add138, %cond151
  store i32 %add152, i32* %req_size_final, align 4, !tbaa !5
  %120 = load i32, i32* %req_size_final, align 4, !tbaa !5
  %121 = load i32, i32* %buffer_space, align 4, !tbaa !5
  %cmp153 = icmp sgt i32 %120, %121
  br i1 %cmp153, label %if.then.155, label %if.end.156

if.then.155:                                      ; preds = %cond.end.150
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.156:                                       ; preds = %cond.end.150
  %122 = load i32, i32* %all_bands, align 4, !tbaa !5
  %tobool157 = icmp ne i32 %122, 0
  br i1 %tobool157, label %if.then.158, label %if.else.168

if.then.158:                                      ; preds = %if.end.156
  %123 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %124 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %nbands159 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %124, i32 0, i32 59
  %125 = load i32, i32* %nbands159, align 4, !tbaa !63
  %sub160 = sub nsw i32 %125, 1
  %126 = load i32, i32* %req_size_final, align 4, !tbaa !5
  %call161 = call i8* @cmd_put_range_op(%struct.gx_device_clist_writer_s* %123, i32 0, i32 %sub160, i32 %126) #5
  store i8* %call161, i8** %dp, align 8, !tbaa !1
  %cmp162 = icmp eq i8* %call161, null
  br i1 %cmp162, label %cond.true.164, label %cond.false.165

cond.true.164:                                    ; preds = %if.then.158
  %127 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %error_code = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %127, i32 0, i32 65
  %128 = load i32, i32* %error_code, align 4, !tbaa !74
  br label %cond.end.166

cond.false.165:                                   ; preds = %if.then.158
  %129 = load i8*, i8** %dp, align 8, !tbaa !1
  store i8 -33, i8* %129, align 1, !tbaa !7
  br label %cond.end.166

cond.end.166:                                     ; preds = %cond.false.165, %cond.true.164
  %cond167 = phi i32 [ %128, %cond.true.164 ], [ 0, %cond.false.165 ]
  store i32 %cond167, i32* %code, align 4, !tbaa !5
  br label %if.end.177

if.else.168:                                      ; preds = %if.end.156
  %130 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %131 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %list = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %131, i32 0, i32 15
  %132 = load i32, i32* %req_size_final, align 4, !tbaa !5
  %call169 = call i8* @cmd_put_list_op(%struct.gx_device_clist_writer_s* %130, %struct.cmd_list_s* %list, i32 %132) #5
  store i8* %call169, i8** %dp, align 8, !tbaa !1
  %cmp170 = icmp eq i8* %call169, null
  br i1 %cmp170, label %cond.true.172, label %cond.false.174

cond.true.172:                                    ; preds = %if.else.168
  %133 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %error_code173 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %133, i32 0, i32 65
  %134 = load i32, i32* %error_code173, align 4, !tbaa !74
  br label %cond.end.175

cond.false.174:                                   ; preds = %if.else.168
  %135 = load i8*, i8** %dp, align 8, !tbaa !1
  store i8 -33, i8* %135, align 1, !tbaa !7
  br label %cond.end.175

cond.end.175:                                     ; preds = %cond.false.174, %cond.true.172
  %cond176 = phi i32 [ %134, %cond.true.172 ], [ 0, %cond.false.174 ]
  store i32 %cond176, i32* %code, align 4, !tbaa !5
  br label %if.end.177

if.end.177:                                       ; preds = %cond.end.175, %cond.end.166
  %136 = load i32, i32* %code, align 4, !tbaa !5
  %cmp178 = icmp slt i32 %136, 0
  br i1 %cmp178, label %if.then.180, label %if.end.181

if.then.180:                                      ; preds = %if.end.177
  %137 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %137, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.181:                                       ; preds = %if.end.177
  %138 = load i8*, i8** %dp, align 8, !tbaa !1
  store i8* %138, i8** %dp0, align 8, !tbaa !1
  %139 = load i32, i32* %devn_type.addr, align 4, !tbaa !7
  switch i32 %139, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.182
    i32 2, label %sw.bb.184
  ]

sw.bb:                                            ; preds = %if.end.181
  %140 = load i8*, i8** %dp, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %140, i64 1
  store i8 4, i8* %arrayidx, align 1, !tbaa !7
  br label %sw.epilog

sw.bb.182:                                        ; preds = %if.end.181
  %141 = load i8*, i8** %dp, align 8, !tbaa !1
  %arrayidx183 = getelementptr inbounds i8, i8* %141, i64 1
  store i8 6, i8* %arrayidx183, align 1, !tbaa !7
  br label %sw.epilog

sw.bb.184:                                        ; preds = %if.end.181
  %142 = load i8*, i8** %dp, align 8, !tbaa !1
  %arrayidx185 = getelementptr inbounds i8, i8* %142, i64 1
  store i8 7, i8* %arrayidx185, align 1, !tbaa !7
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.181
  %143 = load i8*, i8** %dp, align 8, !tbaa !1
  %arrayidx186 = getelementptr inbounds i8, i8* %143, i64 1
  store i8 4, i8* %arrayidx186, align 1, !tbaa !7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.184, %sw.bb.182, %sw.bb
  %144 = load i8*, i8** %dp, align 8, !tbaa !1
  %add.ptr187 = getelementptr inbounds i8, i8* %144, i64 2
  store i8* %add.ptr187, i8** %dp, align 8, !tbaa !1
  %145 = load i32, i32* %di, align 4, !tbaa !5
  %146 = load i32, i32* %offset, align 4, !tbaa !5
  %cmp188 = icmp sgt i32 %146, 0
  %cond190 = select i1 %cmp188, i32 128, i32 0
  %or = or i32 %145, %cond190
  %conv191 = trunc i32 %or to i8
  %147 = load i8*, i8** %dp, align 8, !tbaa !1
  %incdec.ptr192 = getelementptr inbounds i8, i8* %147, i32 1
  store i8* %incdec.ptr192, i8** %dp, align 8, !tbaa !1
  store i8 %conv191, i8* %147, align 1, !tbaa !7
  %148 = load i32, i32* %offset, align 4, !tbaa !5
  %cmp193 = icmp sgt i32 %148, 0
  br i1 %cmp193, label %if.then.195, label %if.end.215

if.then.195:                                      ; preds = %sw.epilog
  br label %do.body.196

do.body.196:                                      ; preds = %if.then.195
  %149 = load i32, i32* %offset, align 4, !tbaa !5
  %cmp197 = icmp ult i32 %149, 128
  br i1 %cmp197, label %if.then.199, label %if.else.202

if.then.199:                                      ; preds = %do.body.196
  %150 = load i32, i32* %offset, align 4, !tbaa !5
  %conv200 = trunc i32 %150 to i8
  %151 = load i8*, i8** %dp, align 8, !tbaa !1
  %incdec.ptr201 = getelementptr inbounds i8, i8* %151, i32 1
  store i8* %incdec.ptr201, i8** %dp, align 8, !tbaa !1
  store i8 %conv200, i8* %151, align 1, !tbaa !7
  br label %if.end.214

if.else.202:                                      ; preds = %do.body.196
  %152 = load i32, i32* %offset, align 4, !tbaa !5
  %cmp203 = icmp ult i32 %152, 16384
  br i1 %cmp203, label %if.then.205, label %if.else.211

if.then.205:                                      ; preds = %if.else.202
  %153 = load i32, i32* %offset, align 4, !tbaa !5
  %and = and i32 %153, 127
  %or206 = or i32 128, %and
  %conv207 = trunc i32 %or206 to i8
  %154 = load i8*, i8** %dp, align 8, !tbaa !1
  %incdec.ptr208 = getelementptr inbounds i8, i8* %154, i32 1
  store i8* %incdec.ptr208, i8** %dp, align 8, !tbaa !1
  store i8 %conv207, i8* %154, align 1, !tbaa !7
  %155 = load i32, i32* %offset, align 4, !tbaa !5
  %shr = ashr i32 %155, 7
  %conv209 = trunc i32 %shr to i8
  %156 = load i8*, i8** %dp, align 8, !tbaa !1
  %incdec.ptr210 = getelementptr inbounds i8, i8* %156, i32 1
  store i8* %incdec.ptr210, i8** %dp, align 8, !tbaa !1
  store i8 %conv209, i8* %156, align 1, !tbaa !7
  br label %if.end.213

if.else.211:                                      ; preds = %if.else.202
  %157 = load i32, i32* %offset, align 4, !tbaa !5
  %158 = load i8*, i8** %dp, align 8, !tbaa !1
  %call212 = call i8* @enc_u_put_uint(i32 %157, i8* %158) #5
  store i8* %call212, i8** %dp, align 8, !tbaa !1
  br label %if.end.213

if.end.213:                                       ; preds = %if.else.211, %if.then.205
  br label %if.end.214

if.end.214:                                       ; preds = %if.end.213, %if.then.199
  br label %do.cond

do.cond:                                          ; preds = %if.end.214
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.215

if.end.215:                                       ; preds = %do.end, %sw.epilog
  br label %do.body.216

do.body.216:                                      ; preds = %if.end.215
  %159 = load i32, i32* %portion_size, align 4, !tbaa !5
  %cmp217 = icmp ult i32 %159, 128
  br i1 %cmp217, label %if.then.219, label %if.else.222

if.then.219:                                      ; preds = %do.body.216
  %160 = load i32, i32* %portion_size, align 4, !tbaa !5
  %conv220 = trunc i32 %160 to i8
  %161 = load i8*, i8** %dp, align 8, !tbaa !1
  %incdec.ptr221 = getelementptr inbounds i8, i8* %161, i32 1
  store i8* %incdec.ptr221, i8** %dp, align 8, !tbaa !1
  store i8 %conv220, i8* %161, align 1, !tbaa !7
  br label %if.end.236

if.else.222:                                      ; preds = %do.body.216
  %162 = load i32, i32* %portion_size, align 4, !tbaa !5
  %cmp223 = icmp ult i32 %162, 16384
  br i1 %cmp223, label %if.then.225, label %if.else.233

if.then.225:                                      ; preds = %if.else.222
  %163 = load i32, i32* %portion_size, align 4, !tbaa !5
  %and226 = and i32 %163, 127
  %or227 = or i32 128, %and226
  %conv228 = trunc i32 %or227 to i8
  %164 = load i8*, i8** %dp, align 8, !tbaa !1
  %incdec.ptr229 = getelementptr inbounds i8, i8* %164, i32 1
  store i8* %incdec.ptr229, i8** %dp, align 8, !tbaa !1
  store i8 %conv228, i8* %164, align 1, !tbaa !7
  %165 = load i32, i32* %portion_size, align 4, !tbaa !5
  %shr230 = lshr i32 %165, 7
  %conv231 = trunc i32 %shr230 to i8
  %166 = load i8*, i8** %dp, align 8, !tbaa !1
  %incdec.ptr232 = getelementptr inbounds i8, i8* %166, i32 1
  store i8* %incdec.ptr232, i8** %dp, align 8, !tbaa !1
  store i8 %conv231, i8* %166, align 1, !tbaa !7
  br label %if.end.235

if.else.233:                                      ; preds = %if.else.222
  %167 = load i32, i32* %portion_size, align 4, !tbaa !5
  %168 = load i8*, i8** %dp, align 8, !tbaa !1
  %call234 = call i8* @enc_u_put_uint(i32 %167, i8* %168) #5
  store i8* %call234, i8** %dp, align 8, !tbaa !1
  br label %if.end.235

if.end.235:                                       ; preds = %if.else.233, %if.then.225
  br label %if.end.236

if.end.236:                                       ; preds = %if.end.235, %if.then.219
  br label %do.cond.237

do.cond.237:                                      ; preds = %if.end.236
  br label %do.end.238

do.end.238:                                       ; preds = %do.cond.237
  %169 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %type239 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %169, i32 0, i32 0
  %170 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type239, align 8, !tbaa !8
  %write240 = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %170, i32 0, i32 8
  %171 = load i32 (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*, %struct.gx_device_s*, i64, i8*, i32*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*, %struct.gx_device_s*, i64, i8*, i32*)** %write240, align 8, !tbaa !59
  %172 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %173 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %sdc241 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %173, i32 0, i32 1
  %174 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %175 = bitcast %struct.gx_device_clist_writer_s* %174 to %struct.gx_device_s*
  %176 = load i32, i32* %offset, align 4, !tbaa !5
  %conv242 = sext i32 %176 to i64
  %177 = load i8*, i8** %dp, align 8, !tbaa !1
  %call243 = call i32 %171(%struct.gx_device_color_s* %172, %struct.gx_device_color_saved_s* %sdc241, %struct.gx_device_s* %175, i64 %conv242, i8* %177, i32* %portion_size) #5
  store i32 %call243, i32* %code, align 4, !tbaa !5
  %178 = load i32, i32* %code, align 4, !tbaa !5
  %cmp244 = icmp slt i32 %178, 0
  br i1 %cmp244, label %if.then.246, label %if.end.251

if.then.246:                                      ; preds = %do.end.238
  %179 = load i32, i32* %offset, align 4, !tbaa !5
  %cmp247 = icmp eq i32 %179, 0
  br i1 %cmp247, label %if.then.249, label %if.end.250

if.then.249:                                      ; preds = %if.then.246
  %180 = load i8*, i8** %dp0, align 8, !tbaa !1
  %181 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %cnext = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %181, i32 0, i32 68
  store i8* %180, i8** %cnext, align 8, !tbaa !75
  br label %if.end.250

if.end.250:                                       ; preds = %if.then.249, %if.then.246
  %182 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %182, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.251:                                       ; preds = %do.end.238
  %183 = load i32, i32* %portion_size, align 4, !tbaa !5
  %184 = load i32, i32* %offset, align 4, !tbaa !5
  %add252 = add i32 %184, %183
  store i32 %add252, i32* %offset, align 4, !tbaa !5
  %185 = load i32, i32* %portion_size, align 4, !tbaa !5
  %186 = load i32, i32* %left, align 4, !tbaa !5
  %sub253 = sub i32 %186, %185
  store i32 %sub253, i32* %left, align 4, !tbaa !5
  br label %do.cond.254

do.cond.254:                                      ; preds = %if.end.251
  %187 = load i32, i32* %left, align 4, !tbaa !5
  %tobool255 = icmp ne i32 %187, 0
  br i1 %tobool255, label %do.body, label %do.end.256

do.end.256:                                       ; preds = %do.cond.254
  %188 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %189 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %call257 = call i64 @cmd_drawing_color_usage(%struct.gx_device_clist_writer_s* %188, %struct.gx_device_color_s* %189) #5
  %190 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %color_usage = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %190, i32 0, i32 16
  %or258 = getelementptr inbounds %struct.gx_colors_usage_s, %struct.gx_colors_usage_s* %color_usage, i32 0, i32 0
  %191 = load i64, i64* %or258, align 8, !tbaa !76
  %or259 = or i64 %191, %call257
  store i64 %or259, i64* %or258, align 8, !tbaa !76
  %192 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %type260 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %192, i32 0, i32 0
  %193 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type260, align 8, !tbaa !8
  %save_dc = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %193, i32 0, i32 1
  %194 = load void (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*)*, void (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*)** %save_dc, align 8, !tbaa !77
  %195 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %196 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %sdc261 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %196, i32 0, i32 1
  call void %194(%struct.gx_device_color_s* %195, %struct.gx_device_color_saved_s* %sdc261) #5
  %197 = load i64, i64* %pattern_id, align 8, !tbaa !16
  %tobool262 = icmp ne i64 %197, 0
  br i1 %tobool262, label %if.then.263, label %if.end.265

if.then.263:                                      ; preds = %do.end.256
  %198 = load i64, i64* %pattern_id, align 8, !tbaa !16
  %199 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %pattern_id264 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %199, i32 0, i32 4
  store i64 %198, i64* %pattern_id264, align 8, !tbaa !64
  br label %if.end.265

if.end.265:                                       ; preds = %if.then.263, %do.end.256
  %200 = load i32, i32* %is_pattern, align 4, !tbaa !5
  %tobool266 = icmp ne i32 %200, 0
  br i1 %tobool266, label %if.then.267, label %if.end.317

if.then.267:                                      ; preds = %if.end.265
  %201 = load i64, i64* %pattern_id, align 8, !tbaa !16
  %202 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %sdc268 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %202, i32 0, i32 1
  %colors = getelementptr inbounds %struct.gx_device_color_saved_s, %struct.gx_device_color_saved_s* %sdc268, i32 0, i32 1
  %pattern = bitcast %union._svc* %colors to %struct._pattern*
  %id269 = getelementptr inbounds %struct._pattern, %struct._pattern* %pattern, i32 0, i32 0
  store i64 %201, i64* %id269, align 8, !tbaa !78
  %203 = load i64, i64* %pattern_id, align 8, !tbaa !16
  %tobool270 = icmp ne i64 %203, 0
  br i1 %tobool270, label %land.lhs.true.271, label %if.end.316

land.lhs.true.271:                                ; preds = %if.then.267
  %204 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %call272 = call i8* @gx_pattern1_get_transptr(%struct.gx_device_color_s* %204) #5
  %cmp273 = icmp ne i8* %call272, null
  br i1 %cmp273, label %if.then.278, label %lor.lhs.false.275

lor.lhs.false.275:                                ; preds = %land.lhs.true.271
  %205 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %call276 = call i32 @gx_pattern1_clist_has_trans(%struct.gx_device_color_s* %205) #5
  %tobool277 = icmp ne i32 %call276, 0
  br i1 %tobool277, label %if.then.278, label %if.end.316

if.then.278:                                      ; preds = %lor.lhs.false.275, %land.lhs.true.271
  %206 = load i32, i32* %all_bands, align 4, !tbaa !5
  %tobool279 = icmp ne i32 %206, 0
  br i1 %tobool279, label %if.then.280, label %if.else.296

if.then.280:                                      ; preds = %if.then.278
  %207 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %color_usage281 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %207, i32 0, i32 16
  %trans_bbox = getelementptr inbounds %struct.gx_colors_usage_s, %struct.gx_colors_usage_s* %color_usage281, i32 0, i32 2
  %p = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %trans_bbox, i32 0, i32 0
  %x282 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p, i32 0, i32 0
  store i32 0, i32* %x282, align 4, !tbaa !80
  %208 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %208, i32 0, i32 13
  %209 = load i32, i32* %width, align 4, !tbaa !81
  %210 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %color_usage283 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %210, i32 0, i32 16
  %trans_bbox284 = getelementptr inbounds %struct.gx_colors_usage_s, %struct.gx_colors_usage_s* %color_usage283, i32 0, i32 2
  %q = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %trans_bbox284, i32 0, i32 1
  %x285 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q, i32 0, i32 0
  store i32 %209, i32* %x285, align 4, !tbaa !82
  %211 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %color_usage286 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %211, i32 0, i32 16
  %trans_bbox287 = getelementptr inbounds %struct.gx_colors_usage_s, %struct.gx_colors_usage_s* %color_usage286, i32 0, i32 2
  %p288 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %trans_bbox287, i32 0, i32 0
  %y289 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p288, i32 0, i32 1
  store i32 0, i32* %y289, align 4, !tbaa !83
  %212 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %212, i32 0, i32 14
  %213 = load i32, i32* %height, align 4, !tbaa !84
  %214 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %color_usage290 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %214, i32 0, i32 16
  %trans_bbox291 = getelementptr inbounds %struct.gx_colors_usage_s, %struct.gx_colors_usage_s* %color_usage290, i32 0, i32 2
  %q292 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %trans_bbox291, i32 0, i32 1
  %y293 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q292, i32 0, i32 1
  store i32 %213, i32* %y293, align 4, !tbaa !85
  %215 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %216 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %color_usage294 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %216, i32 0, i32 16
  %trans_bbox295 = getelementptr inbounds %struct.gx_colors_usage_s, %struct.gx_colors_usage_s* %color_usage294, i32 0, i32 2
  call void @clist_update_trans_bbox(%struct.gx_device_clist_writer_s* %215, %struct.gs_int_rect_s* %trans_bbox295) #5
  br label %if.end.315

if.else.296:                                      ; preds = %if.then.278
  %217 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %color_usage297 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %217, i32 0, i32 16
  %trans_bbox298 = getelementptr inbounds %struct.gx_colors_usage_s, %struct.gx_colors_usage_s* %color_usage297, i32 0, i32 2
  %p299 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %trans_bbox298, i32 0, i32 0
  %x300 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p299, i32 0, i32 0
  store i32 0, i32* %x300, align 4, !tbaa !80
  %218 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %width301 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %218, i32 0, i32 13
  %219 = load i32, i32* %width301, align 4, !tbaa !81
  %220 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %color_usage302 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %220, i32 0, i32 16
  %trans_bbox303 = getelementptr inbounds %struct.gx_colors_usage_s, %struct.gx_colors_usage_s* %color_usage302, i32 0, i32 2
  %q304 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %trans_bbox303, i32 0, i32 1
  %x305 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q304, i32 0, i32 0
  store i32 %219, i32* %x305, align 4, !tbaa !82
  %221 = load %struct.cmd_rects_enum_s*, %struct.cmd_rects_enum_s** %pre.addr, align 8, !tbaa !1
  %y306 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %221, i32 0, i32 0
  %222 = load i32, i32* %y306, align 4, !tbaa !86
  %223 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %color_usage307 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %223, i32 0, i32 16
  %trans_bbox308 = getelementptr inbounds %struct.gx_colors_usage_s, %struct.gx_colors_usage_s* %color_usage307, i32 0, i32 2
  %p309 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %trans_bbox308, i32 0, i32 0
  %y310 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p309, i32 0, i32 1
  store i32 %222, i32* %y310, align 4, !tbaa !83
  %224 = load %struct.cmd_rects_enum_s*, %struct.cmd_rects_enum_s** %pre.addr, align 8, !tbaa !1
  %yend = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %224, i32 0, i32 2
  %225 = load i32, i32* %yend, align 4, !tbaa !87
  %226 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %color_usage311 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %226, i32 0, i32 16
  %trans_bbox312 = getelementptr inbounds %struct.gx_colors_usage_s, %struct.gx_colors_usage_s* %color_usage311, i32 0, i32 2
  %q313 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %trans_bbox312, i32 0, i32 1
  %y314 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q313, i32 0, i32 1
  store i32 %225, i32* %y314, align 4, !tbaa !85
  br label %if.end.315

if.end.315:                                       ; preds = %if.else.296, %if.then.280
  br label %if.end.316

if.end.316:                                       ; preds = %if.end.315, %lor.lhs.false.275, %if.then.267
  br label %if.end.317

if.end.317:                                       ; preds = %if.end.316, %if.end.265
  %227 = load i32, i32* %is_pattern, align 4, !tbaa !5
  %tobool318 = icmp ne i32 %227, 0
  br i1 %tobool318, label %land.lhs.true.319, label %if.end.347

land.lhs.true.319:                                ; preds = %if.end.317
  %228 = load i32, i32* %all_bands, align 4, !tbaa !5
  %tobool320 = icmp ne i32 %228, 0
  br i1 %tobool320, label %if.then.321, label %if.end.347

if.then.321:                                      ; preds = %land.lhs.true.319
  %229 = bitcast %struct.gx_clist_state_s** %pcls1322 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %229) #1
  %230 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %states323 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %230, i32 0, i32 66
  %231 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %states323, align 8, !tbaa !62
  store %struct.gx_clist_state_s* %231, %struct.gx_clist_state_s** %pcls1322, align 8, !tbaa !1
  br label %for.cond.324

for.cond.324:                                     ; preds = %for.inc.344, %if.then.321
  %232 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls1322, align 8, !tbaa !1
  %233 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %states325 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %233, i32 0, i32 66
  %234 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %states325, align 8, !tbaa !62
  %235 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %nbands326 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %235, i32 0, i32 59
  %236 = load i32, i32* %nbands326, align 4, !tbaa !63
  %idx.ext327 = sext i32 %236 to i64
  %add.ptr328 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %234, i64 %idx.ext327
  %cmp329 = icmp ult %struct.gx_clist_state_s* %232, %add.ptr328
  br i1 %cmp329, label %for.body.331, label %for.end.346

for.body.331:                                     ; preds = %for.cond.324
  %237 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls1322, align 8, !tbaa !1
  %sdc332 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %237, i32 0, i32 1
  %238 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %sdc333 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %238, i32 0, i32 1
  %239 = bitcast %struct.gx_device_color_saved_s* %sdc332 to i8*
  %240 = bitcast %struct.gx_device_color_saved_s* %sdc333 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %239, i8* %240, i64 344, i32 8, i1 false), !tbaa.struct !88
  %241 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %pattern_id334 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %241, i32 0, i32 4
  %242 = load i64, i64* %pattern_id334, align 8, !tbaa !64
  %243 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls1322, align 8, !tbaa !1
  %pattern_id335 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %243, i32 0, i32 4
  store i64 %242, i64* %pattern_id335, align 8, !tbaa !64
  %244 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %tile_phase336 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %244, i32 0, i32 5
  %x337 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %tile_phase336, i32 0, i32 0
  %245 = load i32, i32* %x337, align 4, !tbaa !71
  %246 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls1322, align 8, !tbaa !1
  %tile_phase338 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %246, i32 0, i32 5
  %x339 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %tile_phase338, i32 0, i32 0
  store i32 %245, i32* %x339, align 4, !tbaa !71
  %247 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %tile_phase340 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %247, i32 0, i32 5
  %y341 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %tile_phase340, i32 0, i32 1
  %248 = load i32, i32* %y341, align 4, !tbaa !73
  %249 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls1322, align 8, !tbaa !1
  %tile_phase342 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %249, i32 0, i32 5
  %y343 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %tile_phase342, i32 0, i32 1
  store i32 %248, i32* %y343, align 4, !tbaa !73
  br label %for.inc.344

for.inc.344:                                      ; preds = %for.body.331
  %250 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls1322, align 8, !tbaa !1
  %incdec.ptr345 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %250, i32 1
  store %struct.gx_clist_state_s* %incdec.ptr345, %struct.gx_clist_state_s** %pcls1322, align 8, !tbaa !1
  br label %for.cond.324

for.end.346:                                      ; preds = %for.cond.324
  %251 = bitcast %struct.gx_clist_state_s** %pcls1322 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %251) #1
  br label %if.end.347

if.end.347:                                       ; preds = %for.end.346, %land.lhs.true.319, %if.end.317
  %252 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %252, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.347, %if.end.250, %if.then.180, %if.then.155, %if.then.116, %if.then.69, %if.then.25, %if.then.19, %if.then.8
  %253 = bitcast i32* %all_bands to i8*
  call void @llvm.lifetime.end(i64 4, i8* %253) #1
  %254 = bitcast i64* %pattern_id to i8*
  call void @llvm.lifetime.end(i64 8, i8* %254) #1
  %255 = bitcast i32* %is_pattern to i8*
  call void @llvm.lifetime.end(i64 4, i8* %255) #1
  %256 = bitcast i32* %req_size_final to i8*
  call void @llvm.lifetime.end(i64 4, i8* %256) #1
  %257 = bitcast i32* %prefix_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %257) #1
  %258 = bitcast i32* %portion_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %258) #1
  %259 = bitcast i32* %left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %259) #1
  %260 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %260) #1
  %261 = bitcast i32* %buffer_space to i8*
  call void @llvm.lifetime.end(i64 4, i8* %261) #1
  %262 = bitcast %struct.gs_int_point_s* %color_phase to i8*
  call void @llvm.lifetime.end(i64 8, i8* %262) #1
  %263 = bitcast i8** %dp0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %263) #1
  %264 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %264) #1
  %265 = bitcast %struct.gx_device_color_saved_s** %psdc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %265) #1
  %266 = bitcast i32* %req_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %266) #1
  %267 = bitcast i32* %dc_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %267) #1
  %268 = bitcast i32* %di to i8*
  call void @llvm.lifetime.end(i64 4, i8* %268) #1
  %269 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %269) #1
  %270 = bitcast %struct.gx_device_halftone_s** %pdht to i8*
  call void @llvm.lifetime.end(i64 8, i8* %270) #1
  %271 = load i32, i32* %retval
  ret i32 %271
}

declare i32 @cmd_put_halftone(%struct.gx_device_clist_writer_s*, %struct.gx_device_halftone_s*) #2

declare i32 @gx_get_dc_type_index(%struct.gx_device_color_s*) #2

declare i32 @gx_dc_is_pattern1_color(%struct.gx_device_color_s*) #2

declare i64 @gs_dc_get_pattern_id(%struct.gx_device_color_s*) #2

declare i32 @cmd_set_tile_phase_generic(%struct.gx_device_clist_writer_s*, %struct.gx_clist_state_s*, i32, i32, i32) #2

declare i32 @enc_u_size_uint(i32) #2

declare i32 @cmd_get_buffer_space(%struct.gx_device_clist_writer_s*, %struct.gx_clist_state_s*, i32) #2

declare i8* @cmd_put_range_op(%struct.gx_device_clist_writer_s*, i32, i32, i32) #2

declare i8* @cmd_put_list_op(%struct.gx_device_clist_writer_s*, %struct.cmd_list_s*, i32) #2

declare i8* @enc_u_put_uint(i32, i8*) #2

; Function Attrs: nounwind uwtable
define i64 @cmd_drawing_color_usage(%struct.gx_device_clist_writer_s* %cldev, %struct.gx_device_color_s* %pdcolor) #0 {
entry:
  %retval = alloca i64, align 8
  %cldev.addr = alloca %struct.gx_device_clist_writer_s*, align 8
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %bits = alloca i64, align 8
  store %struct.gx_device_clist_writer_s* %cldev, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %0, i32 0, i32 0
  %1 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !8
  %cmp = icmp eq %struct.gx_device_color_type_s* %1, @gx_dc_type_data_pure
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_clist_writer_s* %2 to %struct.gx_device_s*
  %4 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %4, i32 0, i32 1
  %pure = bitcast %union._c* %colors to i64*
  %5 = load i64, i64* %pure, align 8, !tbaa !16
  %call = call i64 @gx_color_index2usage(%struct.gx_device_s* %3, i64 %5) #5
  store i64 %call, i64* %retval
  br label %return

if.else:                                          ; preds = %entry
  %6 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %type1 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %6, i32 0, i32 0
  %7 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type1, align 8, !tbaa !8
  %cmp2 = icmp eq %struct.gx_device_color_type_s* %7, @gx_dc_type_data_ht_binary
  br i1 %cmp2, label %if.then.3, label %if.else.12

if.then.3:                                        ; preds = %if.else
  %8 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %9 = bitcast %struct.gx_device_clist_writer_s* %8 to %struct.gx_device_s*
  %10 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %11 = bitcast %struct.gx_device_clist_writer_s* %10 to %struct.gx_device_s*
  %12 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %colors4 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %12, i32 0, i32 1
  %binary = bitcast %union._c* %colors4 to %struct._bin*
  %color = getelementptr inbounds %struct._bin, %struct._bin* %binary, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %color, i32 0, i64 0
  %13 = load i64, i64* %arrayidx, align 8, !tbaa !16
  %call5 = call i64 @gx_color_index2usage(%struct.gx_device_s* %11, i64 %13) #5
  %14 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %15 = bitcast %struct.gx_device_clist_writer_s* %14 to %struct.gx_device_s*
  %16 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %colors6 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %16, i32 0, i32 1
  %binary7 = bitcast %union._c* %colors6 to %struct._bin*
  %color8 = getelementptr inbounds %struct._bin, %struct._bin* %binary7, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [2 x i64], [2 x i64]* %color8, i32 0, i64 1
  %17 = load i64, i64* %arrayidx9, align 8, !tbaa !16
  %call10 = call i64 @gx_color_index2usage(%struct.gx_device_s* %15, i64 %17) #5
  %or = or i64 %call5, %call10
  %call11 = call i64 @gx_color_index2usage(%struct.gx_device_s* %9, i64 %or) #5
  store i64 %call11, i64* %retval
  br label %return

if.else.12:                                       ; preds = %if.else
  %18 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %type13 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %18, i32 0, i32 0
  %19 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type13, align 8, !tbaa !8
  %cmp14 = icmp eq %struct.gx_device_color_type_s* %19, @gx_dc_type_data_ht_colored
  br i1 %cmp14, label %if.then.15, label %if.else.18

if.then.15:                                       ; preds = %if.else.12
  %20 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %21 = bitcast %struct.gx_device_clist_writer_s* %20 to %struct.gx_device_s*
  %22 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %23 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %call16 = call i64 @colored_halftone_color_usage(%struct.gx_device_clist_writer_s* %22, %struct.gx_device_color_s* %23) #5
  %call17 = call i64 @gx_color_index2usage(%struct.gx_device_s* %21, i64 %call16) #5
  store i64 %call17, i64* %retval
  br label %return

if.else.18:                                       ; preds = %if.else.12
  %24 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %type19 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %24, i32 0, i32 0
  %25 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type19, align 8, !tbaa !8
  %cmp20 = icmp eq %struct.gx_device_color_type_s* %25, @gx_dc_type_data_devn
  br i1 %cmp20, label %if.then.21, label %if.else.23

if.then.21:                                       ; preds = %if.else.18
  %26 = bitcast i64* %bits to i8*
  call void @llvm.lifetime.start(i64 8, i8* %26) #1
  store i64 0, i64* %bits, align 8, !tbaa !16
  %27 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %28 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %29 = bitcast %struct.gx_device_clist_writer_s* %28 to %struct.gx_device_s*
  %30 = bitcast i64* %bits to i32*
  %31 = bitcast i32* %30 to i64*
  %call22 = call i32 @gx_dc_devn_get_nonzero_comps(%struct.gx_device_color_s* %27, %struct.gx_device_s* %29, i64* %31) #5
  %32 = load i64, i64* %bits, align 8, !tbaa !16
  store i64 %32, i64* %retval
  %33 = bitcast i64* %bits to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  br label %return

if.else.23:                                       ; preds = %if.else.18
  %34 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %34, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %35 = load i32, i32* %num_components, align 4, !tbaa !90
  %sh_prom = zext i32 %35 to i64
  %shl = shl i64 1, %sh_prom
  %sub = sub i64 %shl, 1
  store i64 %sub, i64* %retval
  br label %return

return:                                           ; preds = %if.else.23, %if.then.21, %if.then.15, %if.then.3, %if.then
  %36 = load i64, i64* %retval
  ret i64 %36
}

declare i8* @gx_pattern1_get_transptr(%struct.gx_device_color_s*) #2

declare i32 @gx_pattern1_clist_has_trans(%struct.gx_device_color_s*) #2

declare void @clist_update_trans_bbox(%struct.gx_device_clist_writer_s*, %struct.gs_int_rect_s*) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i64 @gx_color_index2usage(%struct.gx_device_s*, i64) #2

; Function Attrs: nounwind uwtable
define internal i64 @colored_halftone_color_usage(%struct.gx_device_clist_writer_s* %cldev, %struct.gx_device_color_s* %pdcolor) #0 {
entry:
  %retval = alloca i64, align 8
  %cldev.addr = alloca %struct.gx_device_clist_writer_s*, align 8
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  store %struct.gx_device_clist_writer_s* %cldev, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %0, i32 0, i32 42
  %dev_spec_op = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 65
  %1 = load i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)** %dev_spec_op, align 8, !tbaa !91
  %2 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_clist_writer_s* %2 to %struct.gx_device_s*
  %call = call i32 %1(%struct.gx_device_s* %3, i32 8, i8* null, i32 0) #5
  %cmp = icmp sle i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %4, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %5 = load i16, i16* %depth, align 2, !tbaa !92
  %conv = zext i16 %5 to i32
  %sh_prom = zext i32 %conv to i64
  %shl = shl i64 1, %sh_prom
  %sub = sub i64 %shl, 1
  store i64 %sub, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %6, i32 0, i32 1
  %colored = bitcast %union._c* %colors to %struct._col*
  %c_base = getelementptr inbounds %struct._col, %struct._col* %colored, i32 0, i32 2
  %arrayidx = getelementptr inbounds [64 x i8], [64 x i8]* %c_base, i32 0, i64 0
  %7 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %conv1 = zext i8 %7 to i32
  %shl2 = shl i32 %conv1, 3
  %8 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %colors3 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %8, i32 0, i32 1
  %colored4 = bitcast %union._c* %colors3 to %struct._col*
  %c_base5 = getelementptr inbounds %struct._col, %struct._col* %colored4, i32 0, i32 2
  %arrayidx6 = getelementptr inbounds [64 x i8], [64 x i8]* %c_base5, i32 0, i64 1
  %9 = load i8, i8* %arrayidx6, align 1, !tbaa !7
  %conv7 = zext i8 %9 to i32
  %shl8 = shl i32 %conv7, 2
  %or = or i32 %shl2, %shl8
  %10 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %colors9 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %10, i32 0, i32 1
  %colored10 = bitcast %union._c* %colors9 to %struct._col*
  %c_base11 = getelementptr inbounds %struct._col, %struct._col* %colored10, i32 0, i32 2
  %arrayidx12 = getelementptr inbounds [64 x i8], [64 x i8]* %c_base11, i32 0, i64 2
  %11 = load i8, i8* %arrayidx12, align 1, !tbaa !7
  %conv13 = zext i8 %11 to i32
  %shl14 = shl i32 %conv13, 1
  %or15 = or i32 %or, %shl14
  %12 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %colors16 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %12, i32 0, i32 1
  %colored17 = bitcast %union._c* %colors16 to %struct._col*
  %c_base18 = getelementptr inbounds %struct._col, %struct._col* %colored17, i32 0, i32 2
  %arrayidx19 = getelementptr inbounds [64 x i8], [64 x i8]* %c_base18, i32 0, i64 3
  %13 = load i8, i8* %arrayidx19, align 1, !tbaa !7
  %conv20 = zext i8 %13 to i32
  %or21 = or i32 %or15, %conv20
  %14 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %colors22 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %14, i32 0, i32 1
  %colored23 = bitcast %union._c* %colors22 to %struct._col*
  %plane_mask = getelementptr inbounds %struct._col, %struct._col* %colored23, i32 0, i32 5
  %15 = load i64, i64* %plane_mask, align 8, !tbaa !93
  %arrayidx24 = getelementptr inbounds [256 x i8], [256 x i8]* @byte_reverse_bits, i32 0, i64 %15
  %16 = load i8, i8* %arrayidx24, align 1, !tbaa !7
  %conv25 = zext i8 %16 to i32
  %shr = ashr i32 %conv25, 4
  %or26 = or i32 %or21, %shr
  %conv27 = sext i32 %or26 to i64
  store i64 %conv27, i64* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %17 = load i64, i64* %retval
  ret i64 %17
}

declare i32 @gx_dc_devn_get_nonzero_comps(%struct.gx_device_color_s*, %struct.gx_device_s*, i64*) #2

; Function Attrs: nounwind uwtable
define void @cmd_clear_known(%struct.gx_device_clist_writer_s* %cldev, i32 %known) #0 {
entry:
  %cldev.addr = alloca %struct.gx_device_clist_writer_s*, align 8
  %known.addr = alloca i32, align 4
  %unknown = alloca i32, align 4
  %pcls = alloca %struct.gx_clist_state_s*, align 8
  %i = alloca i32, align 4
  store %struct.gx_device_clist_writer_s* %cldev, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  store i32 %known, i32* %known.addr, align 4, !tbaa !5
  %0 = bitcast i32* %unknown to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %known.addr, align 4, !tbaa !5
  %neg = xor i32 %1, -1
  store i32 %neg, i32* %unknown, align 4, !tbaa !5
  %2 = bitcast %struct.gx_clist_state_s** %pcls to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %states = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %3, i32 0, i32 66
  %4 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %states, align 8, !tbaa !62
  store %struct.gx_clist_state_s* %4, %struct.gx_clist_state_s** %pcls, align 8, !tbaa !1
  %5 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %nbands = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %6, i32 0, i32 59
  %7 = load i32, i32* %nbands, align 4, !tbaa !63
  store i32 %7, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %i, align 4, !tbaa !5
  %dec = add nsw i32 %8, -1
  store i32 %dec, i32* %i, align 4, !tbaa !5
  %cmp = icmp sge i32 %dec, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %unknown, align 4, !tbaa !5
  %10 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls, align 8, !tbaa !1
  %known1 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %10, i32 0, i32 14
  %11 = load i32, i32* %known1, align 4, !tbaa !95
  %and = and i32 %11, %9
  store i32 %and, i32* %known1, align 4, !tbaa !95
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %12, i32 1
  store %struct.gx_clist_state_s* %incdec.ptr, %struct.gx_clist_state_s** %pcls, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #1
  %14 = bitcast %struct.gx_clist_state_s** %pcls to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  %15 = bitcast i32* %unknown to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @cmd_check_clip_path(%struct.gx_device_clist_writer_s* %cldev, %struct.gx_clip_path_s* %pcpath) #0 {
entry:
  %retval = alloca i32, align 4
  %cldev.addr = alloca %struct.gx_device_clist_writer_s*, align 8
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  store %struct.gx_device_clist_writer_s* %cldev, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %0 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_clip_path_s* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %2 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %clip_path = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %2, i32 0, i32 86
  store %struct.gx_clip_path_s* %1, %struct.gx_clip_path_s** %clip_path, align 8, !tbaa !96
  %3 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %id = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %3, i32 0, i32 8
  %4 = load i64, i64* %id, align 8, !tbaa !97
  %5 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %clip_path_id = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %5, i32 0, i32 87
  %6 = load i64, i64* %clip_path_id, align 8, !tbaa !106
  %cmp1 = icmp eq i64 %4, %6
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %7 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %id4 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %7, i32 0, i32 8
  %8 = load i64, i64* %id4, align 8, !tbaa !97
  %9 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %clip_path_id5 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %9, i32 0, i32 87
  store i64 %8, i64* %clip_path_id5, align 8, !tbaa !106
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define i32 @cmd_write_ctm_return_length(%struct.gx_device_clist_writer_s* %cldev, %struct.gs_matrix_s* %m) #0 {
entry:
  %cldev.addr = alloca %struct.gx_device_clist_writer_s*, align 8
  %m.addr = alloca %struct.gs_matrix_s*, align 8
  %s = alloca %struct.stream_s, align 8
  store %struct.gx_device_clist_writer_s* %cldev, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %m, %struct.gs_matrix_s** %m.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_s* %s to i8*
  call void @llvm.lifetime.start(i64 352, i8* %0) #1
  %1 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %1, i32 0, i32 3
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !107
  call void @s_init(%struct.stream_s* %s, %struct.gs_memory_s* %2) #5
  call void @swrite_position_only(%struct.stream_s* %s) #5
  %3 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %m.addr, align 8, !tbaa !1
  %call = call i32 @sput_matrix(%struct.stream_s* %s, %struct.gs_matrix_s* %3) #5
  %call1 = call i64 @stell(%struct.stream_s* %s) #5
  %conv = trunc i64 %call1 to i32
  %4 = bitcast %struct.stream_s* %s to i8*
  call void @llvm.lifetime.end(i64 352, i8* %4) #1
  ret i32 %conv
}

declare void @s_init(%struct.stream_s*, %struct.gs_memory_s*) #2

declare void @swrite_position_only(%struct.stream_s*) #2

declare i32 @sput_matrix(%struct.stream_s*, %struct.gs_matrix_s*) #2

declare i64 @stell(%struct.stream_s*) #2

; Function Attrs: nounwind uwtable
define i32 @cmd_write_ctm_return_length_nodevice(%struct.gs_matrix_s* %m) #0 {
entry:
  %m.addr = alloca %struct.gs_matrix_s*, align 8
  %s = alloca %struct.stream_s, align 8
  store %struct.gs_matrix_s* %m, %struct.gs_matrix_s** %m.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_s* %s to i8*
  call void @llvm.lifetime.start(i64 352, i8* %0) #1
  call void @s_init(%struct.stream_s* %s, %struct.gs_memory_s* null) #5
  call void @swrite_position_only(%struct.stream_s* %s) #5
  %1 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %m.addr, align 8, !tbaa !1
  %call = call i32 @sput_matrix(%struct.stream_s* %s, %struct.gs_matrix_s* %1) #5
  %call1 = call i64 @stell(%struct.stream_s* %s) #5
  %conv = trunc i64 %call1 to i32
  %2 = bitcast %struct.stream_s* %s to i8*
  call void @llvm.lifetime.end(i64 352, i8* %2) #1
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define i32 @cmd_write_ctm(%struct.gs_matrix_s* %m, i8* %dp, i32 %len) #0 {
entry:
  %m.addr = alloca %struct.gs_matrix_s*, align 8
  %dp.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %s = alloca %struct.stream_s, align 8
  store %struct.gs_matrix_s* %m, %struct.gs_matrix_s** %m.addr, align 8, !tbaa !1
  store i8* %dp, i8** %dp.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !5
  %0 = bitcast %struct.stream_s* %s to i8*
  call void @llvm.lifetime.start(i64 352, i8* %0) #1
  call void @s_init(%struct.stream_s* %s, %struct.gs_memory_s* null) #5
  %1 = load i8*, i8** %dp.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 1
  %2 = load i32, i32* %len.addr, align 4, !tbaa !5
  call void @swrite_string(%struct.stream_s* %s, i8* %add.ptr, i32 %2) #5
  %3 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %m.addr, align 8, !tbaa !1
  %call = call i32 @sput_matrix(%struct.stream_s* %s, %struct.gs_matrix_s* %3) #5
  %4 = bitcast %struct.stream_s* %s to i8*
  call void @llvm.lifetime.end(i64 352, i8* %4) #1
  ret i32 0
}

declare void @swrite_string(%struct.stream_s*, i8*, i32) #2

; Function Attrs: nounwind uwtable
define i32 @cmd_write_unknown(%struct.gx_device_clist_writer_s* %cldev, %struct.gx_clist_state_s* %pcls, i32 %must_know) #0 {
entry:
  %retval = alloca i32, align 4
  %cldev.addr = alloca %struct.gx_device_clist_writer_s*, align 8
  %pcls.addr = alloca %struct.gx_clist_state_s*, align 8
  %must_know.addr = alloca i32, align 4
  %unknown = alloca i32, align 4
  %misc2_unknown = alloca i32, align 4
  %dp = alloca i8*, align 8
  %code = alloca i32, align 4
  %buf = alloca [26 x i8], align 16
  %bp = alloca i8*, align 8
  %width = alloca float, align 4
  %cleanup.dest.slot = alloca i32
  %len = alloca i32, align 4
  %n = alloca i32, align 4
  %pcpath = alloca %struct.gx_clip_path_s*, align 8
  %band_height = alloca i32, align 4
  %ymin = alloca i32, align 4
  %ymax = alloca i32, align 4
  %box = alloca %struct.gs_fixed_rect_s, align 4
  %punt_to_outer_box = alloca i32, align 4
  %code268 = alloca i32, align 4
  %list333 = alloca %struct.gx_clip_list_s*, align 8
  %prect = alloca %struct.gx_clip_rect_s*, align 8
  %box376 = alloca %struct.gs_fixed_rect_s, align 4
  %end_code = alloca i32, align 4
  %dp462 = alloca i8*, align 8
  %pcs = alloca %struct.gs_color_space_s*, align 8
  %hival = alloca i32, align 4
  %num_values = alloca i32, align 4
  %use_proc = alloca i32, align 4
  %map_data = alloca i8*, align 8
  %map_size = alloca i32, align 4
  store %struct.gx_device_clist_writer_s* %cldev, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  store %struct.gx_clist_state_s* %pcls, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  store i32 %must_know, i32* %must_know.addr, align 4, !tbaa !5
  %0 = bitcast i32* %unknown to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %known = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %1, i32 0, i32 14
  %2 = load i32, i32* %known, align 4, !tbaa !95
  %neg = xor i32 %2, -1
  %3 = load i32, i32* %must_know.addr, align 4, !tbaa !5
  %and = and i32 %neg, %3
  store i32 %and, i32* %unknown, align 4, !tbaa !5
  %4 = bitcast i32* %misc2_unknown to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load i32, i32* %unknown, align 4, !tbaa !5
  %and1 = and i32 %5, 1023
  store i32 %and1, i32* %misc2_unknown, align 4, !tbaa !5
  %6 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load i32, i32* %misc2_unknown, align 4, !tbaa !5
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.end.129

if.then:                                          ; preds = %entry
  %9 = bitcast [26 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 26, i8* %9) #1
  %10 = bitcast i8** %bp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %arraydecay = getelementptr inbounds [26 x i8], [26 x i8]* %buf, i32 0, i32 0
  store i8* %arraydecay, i8** %bp, align 8, !tbaa !1
  %11 = load i32, i32* %unknown, align 4, !tbaa !5
  %and2 = and i32 %11, 1
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %12 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %imager_state = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %12, i32 0, i32 80
  %line_params = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state, i32 0, i32 3
  %start_cap = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params, i32 0, i32 1
  %13 = load i32, i32* %start_cap, align 4, !tbaa !108
  %shl = shl i32 %13, 3
  %14 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %imager_state5 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %14, i32 0, i32 80
  %line_params6 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state5, i32 0, i32 3
  %join = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params6, i32 0, i32 4
  %15 = load i32, i32* %join, align 4, !tbaa !109
  %add = add i32 %shl, %15
  %conv = trunc i32 %add to i8
  %16 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr, i8** %bp, align 8, !tbaa !1
  store i8 %conv, i8* %16, align 1, !tbaa !7
  %17 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %imager_state7 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %17, i32 0, i32 80
  %line_params8 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state7, i32 0, i32 3
  %end_cap = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params8, i32 0, i32 2
  %18 = load i32, i32* %end_cap, align 4, !tbaa !110
  %shl9 = shl i32 %18, 3
  %19 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %imager_state10 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %19, i32 0, i32 80
  %line_params11 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state10, i32 0, i32 3
  %dash_cap = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params11, i32 0, i32 3
  %20 = load i32, i32* %dash_cap, align 4, !tbaa !111
  %add12 = add i32 %shl9, %20
  %conv13 = trunc i32 %add12 to i8
  %21 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr14 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr14, i8** %bp, align 8, !tbaa !1
  store i8 %conv13, i8* %21, align 1, !tbaa !7
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  %22 = load i32, i32* %unknown, align 4, !tbaa !5
  %and15 = and i32 %22, 2
  %tobool16 = icmp ne i32 %and15, 0
  br i1 %tobool16, label %if.then.17, label %if.end.31

if.then.17:                                       ; preds = %if.end
  %23 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %imager_state18 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %23, i32 0, i32 80
  %line_params19 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state18, i32 0, i32 3
  %curve_join = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params19, i32 0, i32 5
  %24 = load i32, i32* %curve_join, align 4, !tbaa !112
  %add20 = add nsw i32 %24, 1
  %shl21 = shl i32 %add20, 2
  %25 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %imager_state22 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %25, i32 0, i32 80
  %accurate_curves = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state22, i32 0, i32 30
  %26 = load i32, i32* %accurate_curves, align 4, !tbaa !113
  %tobool23 = icmp ne i32 %26, 0
  %cond = select i1 %tobool23, i32 2, i32 0
  %add24 = add nsw i32 %shl21, %cond
  %27 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %imager_state25 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %27, i32 0, i32 80
  %stroke_adjust = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state25, i32 0, i32 29
  %28 = load i32, i32* %stroke_adjust, align 4, !tbaa !114
  %tobool26 = icmp ne i32 %28, 0
  %cond27 = select i1 %tobool26, i32 1, i32 0
  %add28 = add nsw i32 %add24, %cond27
  %conv29 = trunc i32 %add28 to i8
  %29 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr30, i8** %bp, align 8, !tbaa !1
  store i8 %conv29, i8* %29, align 1, !tbaa !7
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.17, %if.end
  %30 = load i32, i32* %unknown, align 4, !tbaa !5
  %and32 = and i32 %30, 4
  %tobool33 = icmp ne i32 %and32, 0
  br i1 %tobool33, label %if.then.34, label %if.end.36

if.then.34:                                       ; preds = %if.end.31
  %31 = load i8*, i8** %bp, align 8, !tbaa !1
  %32 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %imager_state35 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %32, i32 0, i32 80
  %flatness = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state35, i32 0, i32 27
  %33 = bitcast float* %flatness to i8*
  %call = call i8* @memcpy(i8* %31, i8* %33, i64 4) #6
  %34 = load i8*, i8** %bp, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %34, i64 4
  store i8* %add.ptr, i8** %bp, align 8, !tbaa !1
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.34, %if.end.31
  %35 = load i32, i32* %unknown, align 4, !tbaa !5
  %and37 = and i32 %35, 8
  %tobool38 = icmp ne i32 %and37, 0
  br i1 %tobool38, label %if.then.39, label %if.end.44

if.then.39:                                       ; preds = %if.end.36
  %36 = bitcast float* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %36) #1
  %37 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %imager_state40 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %37, i32 0, i32 80
  %line_params41 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state40, i32 0, i32 3
  %half_width = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params41, i32 0, i32 0
  %38 = load float, float* %half_width, align 4, !tbaa !115
  %mul = fmul float %38, 2.000000e+00
  store float %mul, float* %width, align 4, !tbaa !116
  %39 = load i8*, i8** %bp, align 8, !tbaa !1
  %40 = bitcast float* %width to i8*
  %call42 = call i8* @memcpy(i8* %39, i8* %40, i64 4) #6
  %41 = load i8*, i8** %bp, align 8, !tbaa !1
  %add.ptr43 = getelementptr inbounds i8, i8* %41, i64 4
  store i8* %add.ptr43, i8** %bp, align 8, !tbaa !1
  %42 = bitcast float* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #1
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.39, %if.end.36
  %43 = load i32, i32* %unknown, align 4, !tbaa !5
  %and45 = and i32 %43, 16
  %tobool46 = icmp ne i32 %and45, 0
  br i1 %tobool46, label %if.then.47, label %if.end.52

if.then.47:                                       ; preds = %if.end.44
  %44 = load i8*, i8** %bp, align 8, !tbaa !1
  %45 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %imager_state48 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %45, i32 0, i32 80
  %line_params49 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state48, i32 0, i32 3
  %miter_limit = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params49, i32 0, i32 6
  %46 = bitcast float* %miter_limit to i8*
  %call50 = call i8* @memcpy(i8* %44, i8* %46, i64 4) #6
  %47 = load i8*, i8** %bp, align 8, !tbaa !1
  %add.ptr51 = getelementptr inbounds i8, i8* %47, i64 4
  store i8* %add.ptr51, i8** %bp, align 8, !tbaa !1
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.47, %if.end.44
  %48 = load i32, i32* %unknown, align 4, !tbaa !5
  %and53 = and i32 %48, 32
  %tobool54 = icmp ne i32 %and53, 0
  br i1 %tobool54, label %if.then.55, label %if.end.71

if.then.55:                                       ; preds = %if.end.52
  %49 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %imager_state56 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %49, i32 0, i32 80
  %blend_mode = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state56, i32 0, i32 12
  %50 = load i32, i32* %blend_mode, align 4, !tbaa !117
  %shl57 = shl i32 %50, 3
  %51 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %imager_state58 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %51, i32 0, i32 80
  %text_knockout = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state58, i32 0, i32 17
  %52 = load i32, i32* %text_knockout, align 4, !tbaa !118
  %shl59 = shl i32 %52, 2
  %add60 = add nsw i32 %shl57, %shl59
  %53 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %imager_state61 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %53, i32 0, i32 80
  %overprint_mode = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state61, i32 0, i32 22
  %54 = load i32, i32* %overprint_mode, align 4, !tbaa !119
  %shl62 = shl i32 %54, 1
  %add63 = add nsw i32 %add60, %shl62
  %55 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %imager_state64 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %55, i32 0, i32 80
  %overprint = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state64, i32 0, i32 21
  %56 = load i32, i32* %overprint, align 4, !tbaa !120
  %add65 = add nsw i32 %add63, %56
  %conv66 = trunc i32 %add65 to i8
  %57 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr67 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %incdec.ptr67, i8** %bp, align 8, !tbaa !1
  store i8 %conv66, i8* %57, align 1, !tbaa !7
  %58 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %imager_state68 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %58, i32 0, i32 80
  %renderingintent = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state68, i32 0, i32 33
  %59 = load i32, i32* %renderingintent, align 4, !tbaa !121
  %conv69 = trunc i32 %59 to i8
  %60 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr70 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %incdec.ptr70, i8** %bp, align 8, !tbaa !1
  store i8 %conv69, i8* %60, align 1, !tbaa !7
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.55, %if.end.52
  %61 = load i32, i32* %unknown, align 4, !tbaa !5
  %and72 = and i32 %61, 128
  %tobool73 = icmp ne i32 %and72, 0
  br i1 %tobool73, label %if.then.74, label %if.end.78

if.then.74:                                       ; preds = %if.end.71
  %62 = load i8*, i8** %bp, align 8, !tbaa !1
  %63 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %imager_state75 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %63, i32 0, i32 80
  %opacity = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state75, i32 0, i32 13
  %alpha = getelementptr inbounds %struct.gs_transparency_source_s, %struct.gs_transparency_source_s* %opacity, i32 0, i32 0
  %64 = bitcast float* %alpha to i8*
  %call76 = call i8* @memcpy(i8* %62, i8* %64, i64 4) #6
  %65 = load i8*, i8** %bp, align 8, !tbaa !1
  %add.ptr77 = getelementptr inbounds i8, i8* %65, i64 4
  store i8* %add.ptr77, i8** %bp, align 8, !tbaa !1
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.74, %if.end.71
  %66 = load i32, i32* %unknown, align 4, !tbaa !5
  %and79 = and i32 %66, 256
  %tobool80 = icmp ne i32 %and79, 0
  br i1 %tobool80, label %if.then.81, label %if.end.86

if.then.81:                                       ; preds = %if.end.78
  %67 = load i8*, i8** %bp, align 8, !tbaa !1
  %68 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %imager_state82 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %68, i32 0, i32 80
  %shape = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state82, i32 0, i32 14
  %alpha83 = getelementptr inbounds %struct.gs_transparency_source_s, %struct.gs_transparency_source_s* %shape, i32 0, i32 0
  %69 = bitcast float* %alpha83 to i8*
  %call84 = call i8* @memcpy(i8* %67, i8* %69, i64 4) #6
  %70 = load i8*, i8** %bp, align 8, !tbaa !1
  %add.ptr85 = getelementptr inbounds i8, i8* %70, i64 4
  store i8* %add.ptr85, i8** %bp, align 8, !tbaa !1
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.81, %if.end.78
  %71 = load i32, i32* %unknown, align 4, !tbaa !5
  %and87 = and i32 %71, 512
  %tobool88 = icmp ne i32 %and87, 0
  br i1 %tobool88, label %if.then.89, label %if.end.94

if.then.89:                                       ; preds = %if.end.86
  %72 = load i8*, i8** %bp, align 8, !tbaa !1
  %73 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %imager_state90 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %73, i32 0, i32 80
  %alpha91 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state90, i32 0, i32 11
  %74 = bitcast i16* %alpha91 to i8*
  %call92 = call i8* @memcpy(i8* %72, i8* %74, i64 2) #6
  %75 = load i8*, i8** %bp, align 8, !tbaa !1
  %add.ptr93 = getelementptr inbounds i8, i8* %75, i64 2
  store i8* %add.ptr93, i8** %bp, align 8, !tbaa !1
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.89, %if.end.86
  %76 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %77 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %list = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %77, i32 0, i32 15
  %78 = load i32, i32* %misc2_unknown, align 4, !tbaa !5
  %and95 = and i32 %78, -128
  %tobool96 = icmp ne i32 %and95, 0
  br i1 %tobool96, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end.94
  br label %cond.end.103

cond.false:                                       ; preds = %if.end.94
  %79 = load i32, i32* %misc2_unknown, align 4, !tbaa !5
  %and97 = and i32 %79, -16384
  %tobool98 = icmp ne i32 %and97, 0
  br i1 %tobool98, label %cond.false.100, label %cond.true.99

cond.true.99:                                     ; preds = %cond.false
  br label %cond.end

cond.false.100:                                   ; preds = %cond.false
  %80 = load i32, i32* %misc2_unknown, align 4, !tbaa !5
  %call101 = call i32 @cmd_size_w(i32 %80) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false.100, %cond.true.99
  %cond102 = phi i32 [ 2, %cond.true.99 ], [ %call101, %cond.false.100 ]
  br label %cond.end.103

cond.end.103:                                     ; preds = %cond.end, %cond.true
  %cond104 = phi i32 [ 1, %cond.true ], [ %cond102, %cond.end ]
  %add105 = add nsw i32 1, %cond104
  %81 = load i8*, i8** %bp, align 8, !tbaa !1
  %idx.ext = sext i32 %add105 to i64
  %add.ptr106 = getelementptr inbounds i8, i8* %81, i64 %idx.ext
  %arraydecay107 = getelementptr inbounds [26 x i8], [26 x i8]* %buf, i32 0, i32 0
  %sub.ptr.lhs.cast = ptrtoint i8* %add.ptr106 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %arraydecay107 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv108 = trunc i64 %sub.ptr.sub to i32
  %call109 = call i8* @cmd_put_list_op(%struct.gx_device_clist_writer_s* %76, %struct.cmd_list_s* %list, i32 %conv108) #5
  store i8* %call109, i8** %dp, align 8, !tbaa !1
  %cmp = icmp eq i8* %call109, null
  br i1 %cmp, label %cond.true.111, label %cond.false.112

cond.true.111:                                    ; preds = %cond.end.103
  %82 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %error_code = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %82, i32 0, i32 65
  %83 = load i32, i32* %error_code, align 4, !tbaa !74
  br label %cond.end.113

cond.false.112:                                   ; preds = %cond.end.103
  %84 = load i8*, i8** %dp, align 8, !tbaa !1
  store i8 -43, i8* %84, align 1, !tbaa !7
  br label %cond.end.113

cond.end.113:                                     ; preds = %cond.false.112, %cond.true.111
  %cond114 = phi i32 [ %83, %cond.true.111 ], [ 0, %cond.false.112 ]
  store i32 %cond114, i32* %code, align 4, !tbaa !5
  %85 = load i32, i32* %code, align 4, !tbaa !5
  %cmp115 = icmp slt i32 %85, 0
  br i1 %cmp115, label %if.then.117, label %if.end.118

if.then.117:                                      ; preds = %cond.end.113
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.118:                                       ; preds = %cond.end.113
  %86 = load i32, i32* %misc2_unknown, align 4, !tbaa !5
  %87 = load i8*, i8** %dp, align 8, !tbaa !1
  %add.ptr119 = getelementptr inbounds i8, i8* %87, i64 1
  %call120 = call i8* @cmd_put_w(i32 %86, i8* %add.ptr119) #5
  %arraydecay121 = getelementptr inbounds [26 x i8], [26 x i8]* %buf, i32 0, i32 0
  %88 = load i8*, i8** %bp, align 8, !tbaa !1
  %arraydecay122 = getelementptr inbounds [26 x i8], [26 x i8]* %buf, i32 0, i32 0
  %sub.ptr.lhs.cast123 = ptrtoint i8* %88 to i64
  %sub.ptr.rhs.cast124 = ptrtoint i8* %arraydecay122 to i64
  %sub.ptr.sub125 = sub i64 %sub.ptr.lhs.cast123, %sub.ptr.rhs.cast124
  %call126 = call i8* @memcpy(i8* %call120, i8* %arraydecay121, i64 %sub.ptr.sub125) #6
  %89 = load i32, i32* %misc2_unknown, align 4, !tbaa !5
  %90 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %known127 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %90, i32 0, i32 14
  %91 = load i32, i32* %known127, align 4, !tbaa !95
  %or = or i32 %91, %89
  store i32 %or, i32* %known127, align 4, !tbaa !95
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.118, %if.then.117
  %92 = bitcast i8** %bp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %92) #1
  %93 = bitcast [26 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 26, i8* %93) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.563 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.129

if.end.129:                                       ; preds = %cleanup.cont, %entry
  %94 = load i32, i32* %unknown, align 4, !tbaa !5
  %and130 = and i32 %94, 1024
  %tobool131 = icmp ne i32 %and130, 0
  br i1 %tobool131, label %if.then.132, label %if.end.156

if.then.132:                                      ; preds = %if.end.129
  %95 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %96 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %list133 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %96, i32 0, i32 15
  %call134 = call i8* @cmd_put_list_op(%struct.gx_device_clist_writer_s* %95, %struct.cmd_list_s* %list133, i32 9) #5
  store i8* %call134, i8** %dp, align 8, !tbaa !1
  %cmp135 = icmp eq i8* %call134, null
  br i1 %cmp135, label %cond.true.137, label %cond.false.139

cond.true.137:                                    ; preds = %if.then.132
  %97 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %error_code138 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %97, i32 0, i32 65
  %98 = load i32, i32* %error_code138, align 4, !tbaa !74
  br label %cond.end.140

cond.false.139:                                   ; preds = %if.then.132
  %99 = load i8*, i8** %dp, align 8, !tbaa !1
  store i8 -46, i8* %99, align 1, !tbaa !7
  br label %cond.end.140

cond.end.140:                                     ; preds = %cond.false.139, %cond.true.137
  %cond141 = phi i32 [ %98, %cond.true.137 ], [ 0, %cond.false.139 ]
  store i32 %cond141, i32* %code, align 4, !tbaa !5
  %100 = load i32, i32* %code, align 4, !tbaa !5
  %cmp142 = icmp slt i32 %100, 0
  br i1 %cmp142, label %if.then.144, label %if.end.145

if.then.144:                                      ; preds = %cond.end.140
  %101 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %101, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.563

if.end.145:                                       ; preds = %cond.end.140
  %102 = load i8*, i8** %dp, align 8, !tbaa !1
  %add.ptr146 = getelementptr inbounds i8, i8* %102, i64 1
  %103 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %imager_state147 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %103, i32 0, i32 80
  %fill_adjust = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state147, i32 0, i32 28
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %fill_adjust, i32 0, i32 0
  %104 = bitcast i32* %x to i8*
  %call148 = call i8* @memcpy(i8* %add.ptr146, i8* %104, i64 4) #6
  %105 = load i8*, i8** %dp, align 8, !tbaa !1
  %add.ptr149 = getelementptr inbounds i8, i8* %105, i64 1
  %add.ptr150 = getelementptr inbounds i8, i8* %add.ptr149, i64 4
  %106 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %imager_state151 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %106, i32 0, i32 80
  %fill_adjust152 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state151, i32 0, i32 28
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %fill_adjust152, i32 0, i32 1
  %107 = bitcast i32* %y to i8*
  %call153 = call i8* @memcpy(i8* %add.ptr150, i8* %107, i64 4) #6
  %108 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %known154 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %108, i32 0, i32 14
  %109 = load i32, i32* %known154, align 4, !tbaa !95
  %or155 = or i32 %109, 1024
  store i32 %or155, i32* %known154, align 4, !tbaa !95
  br label %if.end.156

if.end.156:                                       ; preds = %if.end.145, %if.end.129
  %110 = load i32, i32* %unknown, align 4, !tbaa !5
  %and157 = and i32 %110, 2048
  %tobool158 = icmp ne i32 %and157, 0
  br i1 %tobool158, label %if.then.159, label %if.end.188

if.then.159:                                      ; preds = %if.end.156
  %111 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %111) #1
  %112 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %113 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %imager_state160 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %113, i32 0, i32 80
  %ctm = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state160, i32 0, i32 5
  %114 = bitcast %struct.gs_matrix_fixed_s* %ctm to %struct.gs_matrix_s*
  %call161 = call i32 @cmd_write_ctm_return_length(%struct.gx_device_clist_writer_s* %112, %struct.gs_matrix_s* %114) #5
  store i32 %call161, i32* %len, align 4, !tbaa !5
  %115 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %116 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %list162 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %116, i32 0, i32 15
  %117 = load i32, i32* %len, align 4, !tbaa !5
  %add163 = add nsw i32 %117, 1
  %call164 = call i8* @cmd_put_list_op(%struct.gx_device_clist_writer_s* %115, %struct.cmd_list_s* %list162, i32 %add163) #5
  store i8* %call164, i8** %dp, align 8, !tbaa !1
  %cmp165 = icmp eq i8* %call164, null
  br i1 %cmp165, label %cond.true.167, label %cond.false.169

cond.true.167:                                    ; preds = %if.then.159
  %118 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %error_code168 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %118, i32 0, i32 65
  %119 = load i32, i32* %error_code168, align 4, !tbaa !74
  br label %cond.end.170

cond.false.169:                                   ; preds = %if.then.159
  %120 = load i8*, i8** %dp, align 8, !tbaa !1
  store i8 -45, i8* %120, align 1, !tbaa !7
  br label %cond.end.170

cond.end.170:                                     ; preds = %cond.false.169, %cond.true.167
  %cond171 = phi i32 [ %119, %cond.true.167 ], [ 0, %cond.false.169 ]
  store i32 %cond171, i32* %code, align 4, !tbaa !5
  %121 = load i32, i32* %code, align 4, !tbaa !5
  %cmp172 = icmp slt i32 %121, 0
  br i1 %cmp172, label %if.then.174, label %if.end.175

if.then.174:                                      ; preds = %cond.end.170
  %122 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %122, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.185

if.end.175:                                       ; preds = %cond.end.170
  %123 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %imager_state176 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %123, i32 0, i32 80
  %ctm177 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state176, i32 0, i32 5
  %124 = bitcast %struct.gs_matrix_fixed_s* %ctm177 to %struct.gs_matrix_s*
  %125 = load i8*, i8** %dp, align 8, !tbaa !1
  %126 = load i32, i32* %len, align 4, !tbaa !5
  %call178 = call i32 @cmd_write_ctm(%struct.gs_matrix_s* %124, i8* %125, i32 %126) #5
  store i32 %call178, i32* %code, align 4, !tbaa !5
  %127 = load i32, i32* %code, align 4, !tbaa !5
  %cmp179 = icmp slt i32 %127, 0
  br i1 %cmp179, label %if.then.181, label %if.end.182

if.then.181:                                      ; preds = %if.end.175
  %128 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %128, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.185

if.end.182:                                       ; preds = %if.end.175
  %129 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %known183 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %129, i32 0, i32 14
  %130 = load i32, i32* %known183, align 4, !tbaa !95
  %or184 = or i32 %130, 2048
  store i32 %or184, i32* %known183, align 4, !tbaa !95
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.185

cleanup.185:                                      ; preds = %if.end.182, %if.then.181, %if.then.174
  %131 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %131) #1
  %cleanup.dest.186 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.186, label %cleanup.563 [
    i32 0, label %cleanup.cont.187
  ]

cleanup.cont.187:                                 ; preds = %cleanup.185
  br label %if.end.188

if.end.188:                                       ; preds = %cleanup.cont.187, %if.end.156
  %132 = load i32, i32* %unknown, align 4, !tbaa !5
  %and189 = and i32 %132, 4096
  %tobool190 = icmp ne i32 %and189, 0
  br i1 %tobool190, label %if.then.191, label %if.end.249

if.then.191:                                      ; preds = %if.end.188
  %133 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %133) #1
  %134 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %imager_state192 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %134, i32 0, i32 80
  %line_params193 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state192, i32 0, i32 3
  %dash = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params193, i32 0, i32 11
  %pattern_size = getelementptr inbounds %struct.gx_dash_params_s, %struct.gx_dash_params_s* %dash, i32 0, i32 1
  %135 = load i32, i32* %pattern_size, align 4, !tbaa !122
  store i32 %135, i32* %n, align 4, !tbaa !5
  %136 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %137 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %list194 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %137, i32 0, i32 15
  %138 = load i32, i32* %n, align 4, !tbaa !5
  %add195 = add nsw i32 %138, 2
  %conv196 = sext i32 %add195 to i64
  %mul197 = mul i64 %conv196, 4
  %add198 = add i64 2, %mul197
  %conv199 = trunc i64 %add198 to i32
  %call200 = call i8* @cmd_put_list_op(%struct.gx_device_clist_writer_s* %136, %struct.cmd_list_s* %list194, i32 %conv199) #5
  store i8* %call200, i8** %dp, align 8, !tbaa !1
  %cmp201 = icmp eq i8* %call200, null
  br i1 %cmp201, label %cond.true.203, label %cond.false.205

cond.true.203:                                    ; preds = %if.then.191
  %139 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %error_code204 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %139, i32 0, i32 65
  %140 = load i32, i32* %error_code204, align 4, !tbaa !74
  br label %cond.end.206

cond.false.205:                                   ; preds = %if.then.191
  %141 = load i8*, i8** %dp, align 8, !tbaa !1
  store i8 -42, i8* %141, align 1, !tbaa !7
  br label %cond.end.206

cond.end.206:                                     ; preds = %cond.false.205, %cond.true.203
  %cond207 = phi i32 [ %140, %cond.true.203 ], [ 0, %cond.false.205 ]
  store i32 %cond207, i32* %code, align 4, !tbaa !5
  %142 = load i32, i32* %code, align 4, !tbaa !5
  %cmp208 = icmp slt i32 %142, 0
  br i1 %cmp208, label %if.then.210, label %if.end.211

if.then.210:                                      ; preds = %cond.end.206
  %143 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %143, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.246

if.end.211:                                       ; preds = %cond.end.206
  %144 = load i32, i32* %n, align 4, !tbaa !5
  %145 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %imager_state212 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %145, i32 0, i32 80
  %line_params213 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state212, i32 0, i32 3
  %dash214 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params213, i32 0, i32 11
  %adapt = getelementptr inbounds %struct.gx_dash_params_s, %struct.gx_dash_params_s* %dash214, i32 0, i32 3
  %146 = load i32, i32* %adapt, align 4, !tbaa !123
  %tobool215 = icmp ne i32 %146, 0
  %cond216 = select i1 %tobool215, i32 128, i32 0
  %add217 = add nsw i32 %144, %cond216
  %147 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %imager_state218 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %147, i32 0, i32 80
  %line_params219 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state218, i32 0, i32 3
  %dot_length_absolute = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params219, i32 0, i32 9
  %148 = load i32, i32* %dot_length_absolute, align 4, !tbaa !124
  %tobool220 = icmp ne i32 %148, 0
  %cond221 = select i1 %tobool220, i32 64, i32 0
  %add222 = add nsw i32 %add217, %cond221
  %conv223 = trunc i32 %add222 to i8
  %149 = load i8*, i8** %dp, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %149, i64 1
  store i8 %conv223, i8* %arrayidx, align 1, !tbaa !7
  %150 = load i8*, i8** %dp, align 8, !tbaa !1
  %add.ptr224 = getelementptr inbounds i8, i8* %150, i64 2
  %151 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %imager_state225 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %151, i32 0, i32 80
  %line_params226 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state225, i32 0, i32 3
  %dot_length = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params226, i32 0, i32 8
  %152 = bitcast float* %dot_length to i8*
  %call227 = call i8* @memcpy(i8* %add.ptr224, i8* %152, i64 4) #6
  %153 = load i8*, i8** %dp, align 8, !tbaa !1
  %add.ptr228 = getelementptr inbounds i8, i8* %153, i64 2
  %add.ptr229 = getelementptr inbounds i8, i8* %add.ptr228, i64 4
  %154 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %imager_state230 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %154, i32 0, i32 80
  %line_params231 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state230, i32 0, i32 3
  %dash232 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params231, i32 0, i32 11
  %offset = getelementptr inbounds %struct.gx_dash_params_s, %struct.gx_dash_params_s* %dash232, i32 0, i32 2
  %155 = bitcast float* %offset to i8*
  %call233 = call i8* @memcpy(i8* %add.ptr229, i8* %155, i64 4) #6
  %156 = load i32, i32* %n, align 4, !tbaa !5
  %cmp234 = icmp ne i32 %156, 0
  br i1 %cmp234, label %if.then.236, label %if.end.243

if.then.236:                                      ; preds = %if.end.211
  %157 = load i8*, i8** %dp, align 8, !tbaa !1
  %add.ptr237 = getelementptr inbounds i8, i8* %157, i64 2
  %add.ptr238 = getelementptr inbounds i8, i8* %add.ptr237, i64 8
  %158 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %dash_pattern = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %158, i32 0, i32 85
  %arraydecay239 = getelementptr inbounds [11 x float], [11 x float]* %dash_pattern, i32 0, i32 0
  %159 = bitcast float* %arraydecay239 to i8*
  %160 = load i32, i32* %n, align 4, !tbaa !5
  %conv240 = sext i32 %160 to i64
  %mul241 = mul i64 %conv240, 4
  %call242 = call i8* @memcpy(i8* %add.ptr238, i8* %159, i64 %mul241) #6
  br label %if.end.243

if.end.243:                                       ; preds = %if.then.236, %if.end.211
  %161 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %known244 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %161, i32 0, i32 14
  %162 = load i32, i32* %known244, align 4, !tbaa !95
  %or245 = or i32 %162, 4096
  store i32 %or245, i32* %known244, align 4, !tbaa !95
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.246

cleanup.246:                                      ; preds = %if.end.243, %if.then.210
  %163 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %163) #1
  %cleanup.dest.247 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.247, label %cleanup.563 [
    i32 0, label %cleanup.cont.248
  ]

cleanup.cont.248:                                 ; preds = %cleanup.246
  br label %if.end.249

if.end.249:                                       ; preds = %cleanup.cont.248, %if.end.188
  %164 = load i32, i32* %unknown, align 4, !tbaa !5
  %and250 = and i32 %164, 8192
  %tobool251 = icmp ne i32 %and250, 0
  br i1 %tobool251, label %if.then.252, label %if.end.458

if.then.252:                                      ; preds = %if.end.249
  %165 = bitcast %struct.gx_clip_path_s** %pcpath to i8*
  call void @llvm.lifetime.start(i64 8, i8* %165) #1
  %166 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %clip_path = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %166, i32 0, i32 86
  %167 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %clip_path, align 8, !tbaa !96
  store %struct.gx_clip_path_s* %167, %struct.gx_clip_path_s** %pcpath, align 8, !tbaa !1
  %168 = bitcast i32* %band_height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %168) #1
  %169 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %page_info = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %169, i32 0, i32 58
  %band_params = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info, i32 0, i32 8
  %BandHeight = getelementptr inbounds %struct.gx_band_params_s, %struct.gx_band_params_s* %band_params, i32 0, i32 1
  %170 = load i32, i32* %BandHeight, align 4, !tbaa !125
  store i32 %170, i32* %band_height, align 4, !tbaa !5
  %171 = bitcast i32* %ymin to i8*
  call void @llvm.lifetime.start(i64 4, i8* %171) #1
  %172 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %173 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %states = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %173, i32 0, i32 66
  %174 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %states, align 8, !tbaa !62
  %sub.ptr.lhs.cast253 = ptrtoint %struct.gx_clist_state_s* %172 to i64
  %sub.ptr.rhs.cast254 = ptrtoint %struct.gx_clist_state_s* %174 to i64
  %sub.ptr.sub255 = sub i64 %sub.ptr.lhs.cast253, %sub.ptr.rhs.cast254
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub255, 1808
  %175 = load i32, i32* %band_height, align 4, !tbaa !5
  %conv256 = sext i32 %175 to i64
  %mul257 = mul nsw i64 %sub.ptr.div, %conv256
  %conv258 = trunc i64 %mul257 to i32
  store i32 %conv258, i32* %ymin, align 4, !tbaa !5
  %176 = bitcast i32* %ymax to i8*
  call void @llvm.lifetime.start(i64 4, i8* %176) #1
  %177 = load i32, i32* %ymin, align 4, !tbaa !5
  %178 = load i32, i32* %band_height, align 4, !tbaa !5
  %add259 = add nsw i32 %177, %178
  %179 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %179, i32 0, i32 14
  %180 = load i32, i32* %height, align 4, !tbaa !84
  %cmp260 = icmp slt i32 %add259, %180
  br i1 %cmp260, label %cond.true.262, label %cond.false.264

cond.true.262:                                    ; preds = %if.then.252
  %181 = load i32, i32* %ymin, align 4, !tbaa !5
  %182 = load i32, i32* %band_height, align 4, !tbaa !5
  %add263 = add nsw i32 %181, %182
  br label %cond.end.266

cond.false.264:                                   ; preds = %if.then.252
  %183 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %height265 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %183, i32 0, i32 14
  %184 = load i32, i32* %height265, align 4, !tbaa !84
  br label %cond.end.266

cond.end.266:                                     ; preds = %cond.false.264, %cond.true.262
  %cond267 = phi i32 [ %add263, %cond.true.262 ], [ %184, %cond.false.264 ]
  store i32 %cond267, i32* %ymax, align 4, !tbaa !5
  %185 = bitcast %struct.gs_fixed_rect_s* %box to i8*
  call void @llvm.lifetime.start(i64 16, i8* %185) #1
  %186 = bitcast i32* %punt_to_outer_box to i8*
  call void @llvm.lifetime.start(i64 4, i8* %186) #1
  store i32 0, i32* %punt_to_outer_box, align 4, !tbaa !5
  %187 = bitcast i32* %code268 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %187) #1
  %188 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %189 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %list269 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %189, i32 0, i32 15
  %call270 = call i8* @cmd_put_list_op(%struct.gx_device_clist_writer_s* %188, %struct.cmd_list_s* %list269, i32 1) #5
  store i8* %call270, i8** %dp, align 8, !tbaa !1
  %cmp271 = icmp eq i8* %call270, null
  br i1 %cmp271, label %cond.true.273, label %cond.false.275

cond.true.273:                                    ; preds = %cond.end.266
  %190 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %error_code274 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %190, i32 0, i32 65
  %191 = load i32, i32* %error_code274, align 4, !tbaa !74
  br label %cond.end.276

cond.false.275:                                   ; preds = %cond.end.266
  %192 = load i8*, i8** %dp, align 8, !tbaa !1
  store i8 -39, i8* %192, align 1, !tbaa !7
  br label %cond.end.276

cond.end.276:                                     ; preds = %cond.false.275, %cond.true.273
  %cond277 = phi i32 [ %191, %cond.true.273 ], [ 0, %cond.false.275 ]
  store i32 %cond277, i32* %code268, align 4, !tbaa !5
  %193 = load i32, i32* %code268, align 4, !tbaa !5
  %cmp278 = icmp slt i32 %193, 0
  br i1 %cmp278, label %if.then.280, label %if.end.281

if.then.280:                                      ; preds = %cond.end.276
  %194 = load i32, i32* %code268, align 4, !tbaa !5
  store i32 %194, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.449

if.end.281:                                       ; preds = %cond.end.276
  %195 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath, align 8, !tbaa !1
  %path_valid = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %195, i32 0, i32 6
  %196 = load i32, i32* %path_valid, align 4, !tbaa !126
  %tobool282 = icmp ne i32 %196, 0
  br i1 %tobool282, label %if.then.283, label %if.else.332

if.then.283:                                      ; preds = %if.end.281
  %197 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath, align 8, !tbaa !1
  %path = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %197, i32 0, i32 0
  %call284 = call i32 @gx_path_is_rectangular(%struct.gx_path_s* %path, %struct.gs_fixed_rect_s* %box) #5
  %cmp285 = icmp ne i32 %call284, 0
  br i1 %cmp285, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then.283
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box, i32 0, i32 0
  %x287 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  %198 = load i32, i32* %x287, align 4, !tbaa !127
  %p288 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box, i32 0, i32 0
  %y289 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p288, i32 0, i32 1
  %199 = load i32, i32* %y289, align 4, !tbaa !128
  %or290 = or i32 %198, %199
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box, i32 0, i32 1
  %x291 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 0
  %200 = load i32, i32* %x291, align 4, !tbaa !129
  %or292 = or i32 %or290, %200
  %q293 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box, i32 0, i32 1
  %y294 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q293, i32 0, i32 1
  %201 = load i32, i32* %y294, align 4, !tbaa !130
  %or295 = or i32 %or292, %201
  %and296 = and i32 %or295, 255
  %tobool297 = icmp ne i32 %and296, 0
  br i1 %tobool297, label %if.else, label %if.then.298

if.then.298:                                      ; preds = %land.lhs.true
  %202 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %203 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %p299 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box, i32 0, i32 0
  %x300 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p299, i32 0, i32 0
  %204 = load i32, i32* %x300, align 4, !tbaa !127
  %shr = ashr i32 %204, 8
  %p301 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box, i32 0, i32 0
  %y302 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p301, i32 0, i32 1
  %205 = load i32, i32* %y302, align 4, !tbaa !128
  %shr303 = ashr i32 %205, 8
  %q304 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box, i32 0, i32 1
  %x305 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q304, i32 0, i32 0
  %206 = load i32, i32* %x305, align 4, !tbaa !129
  %p306 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box, i32 0, i32 0
  %x307 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p306, i32 0, i32 0
  %207 = load i32, i32* %x307, align 4, !tbaa !127
  %sub = sub nsw i32 %206, %207
  %shr308 = ashr i32 %sub, 8
  %q309 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box, i32 0, i32 1
  %y310 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q309, i32 0, i32 1
  %208 = load i32, i32* %y310, align 4, !tbaa !130
  %p311 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box, i32 0, i32 0
  %y312 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p311, i32 0, i32 1
  %209 = load i32, i32* %y312, align 4, !tbaa !128
  %sub313 = sub nsw i32 %208, %209
  %shr314 = ashr i32 %sub313, 8
  %call315 = call i32 @cmd_write_rect_cmd(%struct.gx_device_clist_writer_s* %202, %struct.gx_clist_state_s* %203, i32 48, i32 %shr, i32 %shr303, i32 %shr308, i32 %shr314) #5
  store i32 %call315, i32* %code268, align 4, !tbaa !5
  br label %if.end.331

if.else:                                          ; preds = %land.lhs.true, %if.then.283
  %210 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %disable_mask = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %210, i32 0, i32 99
  %211 = load i32, i32* %disable_mask, align 4, !tbaa !131
  %and316 = and i32 %211, 8
  %tobool317 = icmp ne i32 %and316, 0
  br i1 %tobool317, label %if.else.329, label %if.then.318

if.then.318:                                      ; preds = %if.else
  %212 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %213 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %214 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath, align 8, !tbaa !1
  %path319 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %214, i32 0, i32 0
  %215 = load i32, i32* %ymin, align 4, !tbaa !5
  %sub320 = sub nsw i32 %215, 1
  %shl321 = shl i32 %sub320, 8
  %216 = load i32, i32* %ymax, align 4, !tbaa !5
  %add322 = add nsw i32 %216, 1
  %shl323 = shl i32 %add322, 8
  %217 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath, align 8, !tbaa !1
  %rule = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %217, i32 0, i32 2
  %218 = load i32, i32* %rule, align 4, !tbaa !132
  %cmp324 = icmp eq i32 %218, 1
  %cond326 = select i1 %cmp324, i32 243, i32 240
  %conv327 = trunc i32 %cond326 to i8
  %call328 = call i32 @cmd_put_path(%struct.gx_device_clist_writer_s* %212, %struct.gx_clist_state_s* %213, %struct.gx_path_s* %path319, i32 %shl321, i32 %shl323, i8 zeroext %conv327, i32 1, i32 1) #5
  store i32 %call328, i32* %code268, align 4, !tbaa !5
  br label %if.end.330

if.else.329:                                      ; preds = %if.else
  store i32 1, i32* %punt_to_outer_box, align 4, !tbaa !5
  br label %if.end.330

if.end.330:                                       ; preds = %if.else.329, %if.then.318
  br label %if.end.331

if.end.331:                                       ; preds = %if.end.330, %if.then.298
  br label %if.end.373

if.else.332:                                      ; preds = %if.end.281
  %219 = bitcast %struct.gx_clip_list_s** %list333 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %219) #1
  %220 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath, align 8, !tbaa !1
  %call334 = call %struct.gx_clip_list_s* @gx_cpath_list(%struct.gx_clip_path_s* %220) #5
  store %struct.gx_clip_list_s* %call334, %struct.gx_clip_list_s** %list333, align 8, !tbaa !1
  %221 = bitcast %struct.gx_clip_rect_s** %prect to i8*
  call void @llvm.lifetime.start(i64 8, i8* %221) #1
  %222 = load %struct.gx_clip_list_s*, %struct.gx_clip_list_s** %list333, align 8, !tbaa !1
  %head = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %222, i32 0, i32 1
  %223 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %head, align 8, !tbaa !133
  store %struct.gx_clip_rect_s* %223, %struct.gx_clip_rect_s** %prect, align 8, !tbaa !1
  %224 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %prect, align 8, !tbaa !1
  %cmp335 = icmp eq %struct.gx_clip_rect_s* %224, null
  br i1 %cmp335, label %if.then.337, label %if.else.338

if.then.337:                                      ; preds = %if.else.332
  %225 = load %struct.gx_clip_list_s*, %struct.gx_clip_list_s** %list333, align 8, !tbaa !1
  %single = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %225, i32 0, i32 0
  store %struct.gx_clip_rect_s* %single, %struct.gx_clip_rect_s** %prect, align 8, !tbaa !1
  br label %if.end.344

if.else.338:                                      ; preds = %if.else.332
  %226 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %disable_mask339 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %226, i32 0, i32 99
  %227 = load i32, i32* %disable_mask339, align 4, !tbaa !131
  %and340 = and i32 %227, 8
  %tobool341 = icmp ne i32 %and340, 0
  br i1 %tobool341, label %if.then.342, label %if.end.343

if.then.342:                                      ; preds = %if.else.338
  store i32 1, i32* %punt_to_outer_box, align 4, !tbaa !5
  br label %if.end.343

if.end.343:                                       ; preds = %if.then.342, %if.else.338
  br label %if.end.344

if.end.344:                                       ; preds = %if.end.343, %if.then.337
  %228 = load i32, i32* %punt_to_outer_box, align 4, !tbaa !5
  %tobool345 = icmp ne i32 %228, 0
  br i1 %tobool345, label %if.end.372, label %if.then.346

if.then.346:                                      ; preds = %if.end.344
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.346
  %229 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %prect, align 8, !tbaa !1
  %cmp347 = icmp ne %struct.gx_clip_rect_s* %229, null
  br i1 %cmp347, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %230 = load i32, i32* %code268, align 4, !tbaa !5
  %cmp349 = icmp sge i32 %230, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %231 = phi i1 [ false, %for.cond ], [ %cmp349, %land.rhs ]
  br i1 %231, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %232 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %prect, align 8, !tbaa !1
  %xmax = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %232, i32 0, i32 5
  %233 = load i32, i32* %xmax, align 4, !tbaa !134
  %234 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %prect, align 8, !tbaa !1
  %xmin = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %234, i32 0, i32 4
  %235 = load i32, i32* %xmin, align 4, !tbaa !135
  %cmp351 = icmp sgt i32 %233, %235
  br i1 %cmp351, label %land.lhs.true.353, label %if.end.371

land.lhs.true.353:                                ; preds = %for.body
  %236 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %prect, align 8, !tbaa !1
  %ymin354 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %236, i32 0, i32 2
  %237 = load i32, i32* %ymin354, align 4, !tbaa !136
  %238 = load i32, i32* %ymax, align 4, !tbaa !5
  %cmp355 = icmp slt i32 %237, %238
  br i1 %cmp355, label %land.lhs.true.357, label %if.end.371

land.lhs.true.357:                                ; preds = %land.lhs.true.353
  %239 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %prect, align 8, !tbaa !1
  %ymax358 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %239, i32 0, i32 3
  %240 = load i32, i32* %ymax358, align 4, !tbaa !137
  %241 = load i32, i32* %ymin, align 4, !tbaa !5
  %cmp359 = icmp sgt i32 %240, %241
  br i1 %cmp359, label %if.then.361, label %if.end.371

if.then.361:                                      ; preds = %land.lhs.true.357
  %242 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %243 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %244 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %prect, align 8, !tbaa !1
  %xmin362 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %244, i32 0, i32 4
  %245 = load i32, i32* %xmin362, align 4, !tbaa !135
  %246 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %prect, align 8, !tbaa !1
  %ymin363 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %246, i32 0, i32 2
  %247 = load i32, i32* %ymin363, align 4, !tbaa !136
  %248 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %prect, align 8, !tbaa !1
  %xmax364 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %248, i32 0, i32 5
  %249 = load i32, i32* %xmax364, align 4, !tbaa !134
  %250 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %prect, align 8, !tbaa !1
  %xmin365 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %250, i32 0, i32 4
  %251 = load i32, i32* %xmin365, align 4, !tbaa !135
  %sub366 = sub nsw i32 %249, %251
  %252 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %prect, align 8, !tbaa !1
  %ymax367 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %252, i32 0, i32 3
  %253 = load i32, i32* %ymax367, align 4, !tbaa !137
  %254 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %prect, align 8, !tbaa !1
  %ymin368 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %254, i32 0, i32 2
  %255 = load i32, i32* %ymin368, align 4, !tbaa !136
  %sub369 = sub nsw i32 %253, %255
  %call370 = call i32 @cmd_write_rect_cmd(%struct.gx_device_clist_writer_s* %242, %struct.gx_clist_state_s* %243, i32 48, i32 %245, i32 %247, i32 %sub366, i32 %sub369) #5
  store i32 %call370, i32* %code268, align 4, !tbaa !5
  br label %if.end.371

if.end.371:                                       ; preds = %if.then.361, %land.lhs.true.357, %land.lhs.true.353, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.371
  %256 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %prect, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %256, i32 0, i32 0
  %257 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %next, align 8, !tbaa !138
  store %struct.gx_clip_rect_s* %257, %struct.gx_clip_rect_s** %prect, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %land.end
  br label %if.end.372

if.end.372:                                       ; preds = %for.end, %if.end.344
  %258 = bitcast %struct.gx_clip_rect_s** %prect to i8*
  call void @llvm.lifetime.end(i64 8, i8* %258) #1
  %259 = bitcast %struct.gx_clip_list_s** %list333 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %259) #1
  br label %if.end.373

if.end.373:                                       ; preds = %if.end.372, %if.end.331
  %260 = load i32, i32* %punt_to_outer_box, align 4, !tbaa !5
  %tobool374 = icmp ne i32 %260, 0
  br i1 %tobool374, label %if.then.375, label %if.end.413

if.then.375:                                      ; preds = %if.end.373
  %261 = bitcast %struct.gs_fixed_rect_s* %box376 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %261) #1
  %262 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath, align 8, !tbaa !1
  %call377 = call i32 @gx_cpath_outer_box(%struct.gx_clip_path_s* %262, %struct.gs_fixed_rect_s* %box376) #5
  %p378 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box376, i32 0, i32 0
  %x379 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p378, i32 0, i32 0
  %263 = load i32, i32* %x379, align 4, !tbaa !127
  %conv380 = sext i32 %263 to i64
  %and381 = and i64 %conv380, -256
  %conv382 = trunc i64 %and381 to i32
  %p383 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box376, i32 0, i32 0
  %x384 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p383, i32 0, i32 0
  store i32 %conv382, i32* %x384, align 4, !tbaa !127
  %p385 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box376, i32 0, i32 0
  %y386 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p385, i32 0, i32 1
  %264 = load i32, i32* %y386, align 4, !tbaa !128
  %conv387 = sext i32 %264 to i64
  %and388 = and i64 %conv387, -256
  %conv389 = trunc i64 %and388 to i32
  %p390 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box376, i32 0, i32 0
  %y391 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p390, i32 0, i32 1
  store i32 %conv389, i32* %y391, align 4, !tbaa !128
  %265 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %266 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %p392 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box376, i32 0, i32 0
  %x393 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p392, i32 0, i32 0
  %267 = load i32, i32* %x393, align 4, !tbaa !127
  %shr394 = ashr i32 %267, 8
  %p395 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box376, i32 0, i32 0
  %y396 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p395, i32 0, i32 1
  %268 = load i32, i32* %y396, align 4, !tbaa !128
  %shr397 = ashr i32 %268, 8
  %q398 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box376, i32 0, i32 1
  %x399 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q398, i32 0, i32 0
  %269 = load i32, i32* %x399, align 4, !tbaa !129
  %p400 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box376, i32 0, i32 0
  %x401 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p400, i32 0, i32 0
  %270 = load i32, i32* %x401, align 4, !tbaa !127
  %sub402 = sub nsw i32 %269, %270
  %add403 = add nsw i32 %sub402, 255
  %shr404 = ashr i32 %add403, 8
  %q405 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box376, i32 0, i32 1
  %y406 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q405, i32 0, i32 1
  %271 = load i32, i32* %y406, align 4, !tbaa !130
  %p407 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box376, i32 0, i32 0
  %y408 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p407, i32 0, i32 1
  %272 = load i32, i32* %y408, align 4, !tbaa !128
  %sub409 = sub nsw i32 %271, %272
  %add410 = add nsw i32 %sub409, 255
  %shr411 = ashr i32 %add410, 8
  %call412 = call i32 @cmd_write_rect_cmd(%struct.gx_device_clist_writer_s* %265, %struct.gx_clist_state_s* %266, i32 48, i32 %shr394, i32 %shr397, i32 %shr404, i32 %shr411) #5
  store i32 %call412, i32* %code268, align 4, !tbaa !5
  %273 = bitcast %struct.gs_fixed_rect_s* %box376 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %273) #1
  br label %if.end.413

if.end.413:                                       ; preds = %if.then.375, %if.end.373
  %274 = bitcast i32* %end_code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %274) #1
  %275 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %276 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %list414 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %276, i32 0, i32 15
  %call415 = call i8* @cmd_put_list_op(%struct.gx_device_clist_writer_s* %275, %struct.cmd_list_s* %list414, i32 1) #5
  store i8* %call415, i8** %dp, align 8, !tbaa !1
  %cmp416 = icmp eq i8* %call415, null
  br i1 %cmp416, label %cond.true.418, label %cond.false.420

cond.true.418:                                    ; preds = %if.end.413
  %277 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %error_code419 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %277, i32 0, i32 65
  %278 = load i32, i32* %error_code419, align 4, !tbaa !74
  br label %cond.end.421

cond.false.420:                                   ; preds = %if.end.413
  %279 = load i8*, i8** %dp, align 8, !tbaa !1
  store i8 -38, i8* %279, align 1, !tbaa !7
  br label %cond.end.421

cond.end.421:                                     ; preds = %cond.false.420, %cond.true.418
  %cond422 = phi i32 [ %278, %cond.true.418 ], [ 0, %cond.false.420 ]
  store i32 %cond422, i32* %end_code, align 4, !tbaa !5
  %280 = load i32, i32* %code268, align 4, !tbaa !5
  %cmp423 = icmp sge i32 %280, 0
  br i1 %cmp423, label %if.then.425, label %if.end.426

if.then.425:                                      ; preds = %cond.end.421
  %281 = load i32, i32* %end_code, align 4, !tbaa !5
  store i32 %281, i32* %code268, align 4, !tbaa !5
  br label %if.end.426

if.end.426:                                       ; preds = %if.then.425, %cond.end.421
  %282 = load i32, i32* %end_code, align 4, !tbaa !5
  %cmp427 = icmp slt i32 %282, 0
  br i1 %cmp427, label %land.lhs.true.429, label %if.end.442

land.lhs.true.429:                                ; preds = %if.end.426
  %283 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %error_is_retryable = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %283, i32 0, i32 94
  %284 = load i32, i32* %error_is_retryable, align 4, !tbaa !139
  %tobool430 = icmp ne i32 %284, 0
  br i1 %tobool430, label %if.then.431, label %if.end.442

if.then.431:                                      ; preds = %land.lhs.true.429
  %285 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %ignore_lo_mem_warnings = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %285, i32 0, i32 97
  %286 = load i32, i32* %ignore_lo_mem_warnings, align 4, !tbaa !140
  %inc = add nsw i32 %286, 1
  store i32 %inc, i32* %ignore_lo_mem_warnings, align 4, !tbaa !140
  %287 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %288 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %list432 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %288, i32 0, i32 15
  %call433 = call i8* @cmd_put_list_op(%struct.gx_device_clist_writer_s* %287, %struct.cmd_list_s* %list432, i32 1) #5
  store i8* %call433, i8** %dp, align 8, !tbaa !1
  %cmp434 = icmp eq i8* %call433, null
  br i1 %cmp434, label %cond.true.436, label %cond.false.438

cond.true.436:                                    ; preds = %if.then.431
  %289 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %error_code437 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %289, i32 0, i32 65
  %290 = load i32, i32* %error_code437, align 4, !tbaa !74
  br label %cond.end.439

cond.false.438:                                   ; preds = %if.then.431
  %291 = load i8*, i8** %dp, align 8, !tbaa !1
  store i8 -38, i8* %291, align 1, !tbaa !7
  br label %cond.end.439

cond.end.439:                                     ; preds = %cond.false.438, %cond.true.436
  %cond440 = phi i32 [ %290, %cond.true.436 ], [ 0, %cond.false.438 ]
  store i32 %cond440, i32* %end_code, align 4, !tbaa !5
  %292 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %ignore_lo_mem_warnings441 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %292, i32 0, i32 97
  %293 = load i32, i32* %ignore_lo_mem_warnings441, align 4, !tbaa !140
  %dec = add nsw i32 %293, -1
  store i32 %dec, i32* %ignore_lo_mem_warnings441, align 4, !tbaa !140
  br label %if.end.442

if.end.442:                                       ; preds = %cond.end.439, %land.lhs.true.429, %if.end.426
  %294 = bitcast i32* %end_code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %294) #1
  %295 = load i32, i32* %code268, align 4, !tbaa !5
  %cmp443 = icmp slt i32 %295, 0
  br i1 %cmp443, label %if.then.445, label %if.end.446

if.then.445:                                      ; preds = %if.end.442
  %296 = load i32, i32* %code268, align 4, !tbaa !5
  store i32 %296, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.449

if.end.446:                                       ; preds = %if.end.442
  %297 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %clip_enabled = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %297, i32 0, i32 11
  store i16 1, i16* %clip_enabled, align 2, !tbaa !141
  %298 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %known447 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %298, i32 0, i32 14
  %299 = load i32, i32* %known447, align 4, !tbaa !95
  %or448 = or i32 %299, 8192
  store i32 %or448, i32* %known447, align 4, !tbaa !95
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.449

cleanup.449:                                      ; preds = %if.end.446, %if.then.445, %if.then.280
  %300 = bitcast i32* %code268 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %300) #1
  %301 = bitcast i32* %punt_to_outer_box to i8*
  call void @llvm.lifetime.end(i64 4, i8* %301) #1
  %302 = bitcast %struct.gs_fixed_rect_s* %box to i8*
  call void @llvm.lifetime.end(i64 16, i8* %302) #1
  %303 = bitcast i32* %ymax to i8*
  call void @llvm.lifetime.end(i64 4, i8* %303) #1
  %304 = bitcast i32* %ymin to i8*
  call void @llvm.lifetime.end(i64 4, i8* %304) #1
  %305 = bitcast i32* %band_height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %305) #1
  %306 = bitcast %struct.gx_clip_path_s** %pcpath to i8*
  call void @llvm.lifetime.end(i64 8, i8* %306) #1
  %cleanup.dest.456 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.456, label %cleanup.563 [
    i32 0, label %cleanup.cont.457
  ]

cleanup.cont.457:                                 ; preds = %cleanup.449
  br label %if.end.458

if.end.458:                                       ; preds = %cleanup.cont.457, %if.end.249
  %307 = load i32, i32* %unknown, align 4, !tbaa !5
  %and459 = and i32 %307, 16384
  %tobool460 = icmp ne i32 %and459, 0
  br i1 %tobool460, label %if.then.461, label %if.end.562

if.then.461:                                      ; preds = %if.end.458
  %308 = bitcast i8** %dp462 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %308) #1
  %309 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %color_space = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %309, i32 0, i32 88
  %byte1 = getelementptr inbounds %struct.clist_color_space_s, %struct.clist_color_space_s* %color_space, i32 0, i32 0
  %310 = load i8, i8* %byte1, align 1, !tbaa !142
  %conv463 = zext i8 %310 to i32
  %and464 = and i32 %conv463, 8
  %tobool465 = icmp ne i32 %and464, 0
  br i1 %tobool465, label %if.then.466, label %if.else.535

if.then.466:                                      ; preds = %if.then.461
  %311 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %311) #1
  %312 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %color_space467 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %312, i32 0, i32 88
  %space = getelementptr inbounds %struct.clist_color_space_s, %struct.clist_color_space_s* %color_space467, i32 0, i32 3
  %313 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %space, align 8, !tbaa !143
  store %struct.gs_color_space_s* %313, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %314 = bitcast i32* %hival to i8*
  call void @llvm.lifetime.start(i64 4, i8* %314) #1
  %315 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %315, i32 0, i32 7
  %indexed = bitcast %union.anon* %params to %struct.gs_indexed_params_s*
  %hival468 = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %indexed, i32 0, i32 0
  %316 = load i32, i32* %hival468, align 4, !tbaa !144
  store i32 %316, i32* %hival, align 4, !tbaa !5
  %317 = bitcast i32* %num_values to i8*
  call void @llvm.lifetime.start(i64 4, i8* %317) #1
  %318 = load i32, i32* %hival, align 4, !tbaa !5
  %add469 = add nsw i32 %318, 1
  %319 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %base_space = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %319, i32 0, i32 3
  %320 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space, align 8, !tbaa !146
  %call470 = call i32 @gs_color_space_num_components(%struct.gs_color_space_s* %320) #5
  %mul471 = mul nsw i32 %add469, %call470
  store i32 %mul471, i32* %num_values, align 4, !tbaa !5
  %321 = bitcast i32* %use_proc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %321) #1
  %322 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %color_space472 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %322, i32 0, i32 88
  %byte1473 = getelementptr inbounds %struct.clist_color_space_s, %struct.clist_color_space_s* %color_space472, i32 0, i32 0
  %323 = load i8, i8* %byte1473, align 1, !tbaa !142
  %conv474 = zext i8 %323 to i32
  %and475 = and i32 %conv474, 4
  store i32 %and475, i32* %use_proc, align 4, !tbaa !5
  %324 = bitcast i8** %map_data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %324) #1
  %325 = bitcast i32* %map_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %325) #1
  %326 = load i32, i32* %use_proc, align 4, !tbaa !5
  %tobool476 = icmp ne i32 %326, 0
  br i1 %tobool476, label %if.then.477, label %if.else.483

if.then.477:                                      ; preds = %if.then.466
  %327 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %params478 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %327, i32 0, i32 7
  %indexed479 = bitcast %union.anon* %params478 to %struct.gs_indexed_params_s*
  %lookup = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %indexed479, i32 0, i32 2
  %map = bitcast %union.anon.0* %lookup to %struct.gs_indexed_map_s**
  %328 = load %struct.gs_indexed_map_s*, %struct.gs_indexed_map_s** %map, align 8, !tbaa !1
  %values = getelementptr inbounds %struct.gs_indexed_map_s, %struct.gs_indexed_map_s* %328, i32 0, i32 4
  %329 = load float*, float** %values, align 8, !tbaa !148
  %330 = bitcast float* %329 to i8*
  store i8* %330, i8** %map_data, align 8, !tbaa !1
  %331 = load i32, i32* %num_values, align 4, !tbaa !5
  %conv480 = zext i32 %331 to i64
  %mul481 = mul i64 %conv480, 4
  %conv482 = trunc i64 %mul481 to i32
  store i32 %conv482, i32* %map_size, align 4, !tbaa !5
  br label %if.end.487

if.else.483:                                      ; preds = %if.then.466
  %332 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %params484 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %332, i32 0, i32 7
  %indexed485 = bitcast %union.anon* %params484 to %struct.gs_indexed_params_s*
  %lookup486 = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %indexed485, i32 0, i32 2
  %table = bitcast %union.anon.0* %lookup486 to %struct.gs_const_string_s*
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %table, i32 0, i32 0
  %333 = load i8*, i8** %data, align 8, !tbaa !150
  store i8* %333, i8** %map_data, align 8, !tbaa !1
  %334 = load i32, i32* %num_values, align 4, !tbaa !5
  store i32 %334, i32* %map_size, align 4, !tbaa !5
  br label %if.end.487

if.end.487:                                       ; preds = %if.else.483, %if.then.477
  %335 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %336 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %list488 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %336, i32 0, i32 15
  %337 = load i32, i32* %hival, align 4, !tbaa !5
  %and489 = and i32 %337, -128
  %tobool490 = icmp ne i32 %and489, 0
  br i1 %tobool490, label %cond.false.492, label %cond.true.491

cond.true.491:                                    ; preds = %if.end.487
  br label %cond.end.500

cond.false.492:                                   ; preds = %if.end.487
  %338 = load i32, i32* %hival, align 4, !tbaa !5
  %and493 = and i32 %338, -16384
  %tobool494 = icmp ne i32 %and493, 0
  br i1 %tobool494, label %cond.false.496, label %cond.true.495

cond.true.495:                                    ; preds = %cond.false.492
  br label %cond.end.498

cond.false.496:                                   ; preds = %cond.false.492
  %339 = load i32, i32* %hival, align 4, !tbaa !5
  %call497 = call i32 @cmd_size_w(i32 %339) #5
  br label %cond.end.498

cond.end.498:                                     ; preds = %cond.false.496, %cond.true.495
  %cond499 = phi i32 [ 2, %cond.true.495 ], [ %call497, %cond.false.496 ]
  br label %cond.end.500

cond.end.500:                                     ; preds = %cond.end.498, %cond.true.491
  %cond501 = phi i32 [ 1, %cond.true.491 ], [ %cond499, %cond.end.498 ]
  %add502 = add nsw i32 2, %cond501
  %340 = load i32, i32* %map_size, align 4, !tbaa !5
  %add503 = add i32 %add502, %340
  %conv504 = zext i32 %add503 to i64
  %add505 = add i64 %conv504, 24
  %conv506 = trunc i64 %add505 to i32
  %call507 = call i8* @cmd_put_list_op(%struct.gx_device_clist_writer_s* %335, %struct.cmd_list_s* %list488, i32 %conv506) #5
  store i8* %call507, i8** %dp462, align 8, !tbaa !1
  %cmp508 = icmp eq i8* %call507, null
  br i1 %cmp508, label %cond.true.510, label %cond.false.512

cond.true.510:                                    ; preds = %cond.end.500
  %341 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %error_code511 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %341, i32 0, i32 65
  %342 = load i32, i32* %error_code511, align 4, !tbaa !74
  br label %cond.end.513

cond.false.512:                                   ; preds = %cond.end.500
  %343 = load i8*, i8** %dp462, align 8, !tbaa !1
  store i8 -44, i8* %343, align 1, !tbaa !7
  br label %cond.end.513

cond.end.513:                                     ; preds = %cond.false.512, %cond.true.510
  %cond514 = phi i32 [ %342, %cond.true.510 ], [ 0, %cond.false.512 ]
  store i32 %cond514, i32* %code, align 4, !tbaa !5
  %344 = load i32, i32* %code, align 4, !tbaa !5
  %cmp515 = icmp slt i32 %344, 0
  br i1 %cmp515, label %if.then.517, label %if.end.518

if.then.517:                                      ; preds = %cond.end.513
  %345 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %345, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.527

if.end.518:                                       ; preds = %cond.end.513
  %346 = load i8*, i8** %dp462, align 8, !tbaa !1
  %add.ptr519 = getelementptr inbounds i8, i8* %346, i64 2
  %347 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %color_space520 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %347, i32 0, i32 88
  %icc_info = getelementptr inbounds %struct.clist_color_space_s, %struct.clist_color_space_s* %color_space520, i32 0, i32 2
  %348 = bitcast %struct.clist_icc_color_s* %icc_info to i8*
  %call521 = call i8* @memcpy(i8* %add.ptr519, i8* %348, i64 24) #6
  %349 = load i32, i32* %hival, align 4, !tbaa !5
  %350 = load i8*, i8** %dp462, align 8, !tbaa !1
  %add.ptr522 = getelementptr inbounds i8, i8* %350, i64 2
  %add.ptr523 = getelementptr inbounds i8, i8* %add.ptr522, i64 24
  %call524 = call i8* @cmd_put_w(i32 %349, i8* %add.ptr523) #5
  %351 = load i8*, i8** %map_data, align 8, !tbaa !1
  %352 = load i32, i32* %map_size, align 4, !tbaa !5
  %conv525 = zext i32 %352 to i64
  %call526 = call i8* @memcpy(i8* %call524, i8* %351, i64 %conv525) #6
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.527

cleanup.527:                                      ; preds = %if.end.518, %if.then.517
  %353 = bitcast i32* %map_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %353) #1
  %354 = bitcast i8** %map_data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %354) #1
  %355 = bitcast i32* %use_proc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %355) #1
  %356 = bitcast i32* %num_values to i8*
  call void @llvm.lifetime.end(i64 4, i8* %356) #1
  %357 = bitcast i32* %hival to i8*
  call void @llvm.lifetime.end(i64 4, i8* %357) #1
  %358 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %358) #1
  %cleanup.dest.533 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.533, label %cleanup.559 [
    i32 0, label %cleanup.cont.534
  ]

cleanup.cont.534:                                 ; preds = %cleanup.527
  br label %if.end.553

if.else.535:                                      ; preds = %if.then.461
  %359 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %360 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %list536 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %360, i32 0, i32 15
  %call537 = call i8* @cmd_put_list_op(%struct.gx_device_clist_writer_s* %359, %struct.cmd_list_s* %list536, i32 26) #5
  store i8* %call537, i8** %dp462, align 8, !tbaa !1
  %cmp538 = icmp eq i8* %call537, null
  br i1 %cmp538, label %cond.true.540, label %cond.false.542

cond.true.540:                                    ; preds = %if.else.535
  %361 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %error_code541 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %361, i32 0, i32 65
  %362 = load i32, i32* %error_code541, align 4, !tbaa !74
  br label %cond.end.543

cond.false.542:                                   ; preds = %if.else.535
  %363 = load i8*, i8** %dp462, align 8, !tbaa !1
  store i8 -44, i8* %363, align 1, !tbaa !7
  br label %cond.end.543

cond.end.543:                                     ; preds = %cond.false.542, %cond.true.540
  %cond544 = phi i32 [ %362, %cond.true.540 ], [ 0, %cond.false.542 ]
  store i32 %cond544, i32* %code, align 4, !tbaa !5
  %364 = load i8*, i8** %dp462, align 8, !tbaa !1
  %add.ptr545 = getelementptr inbounds i8, i8* %364, i64 2
  %365 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %color_space546 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %365, i32 0, i32 88
  %icc_info547 = getelementptr inbounds %struct.clist_color_space_s, %struct.clist_color_space_s* %color_space546, i32 0, i32 2
  %366 = bitcast %struct.clist_icc_color_s* %icc_info547 to i8*
  %call548 = call i8* @memcpy(i8* %add.ptr545, i8* %366, i64 24) #6
  %367 = load i32, i32* %code, align 4, !tbaa !5
  %cmp549 = icmp slt i32 %367, 0
  br i1 %cmp549, label %if.then.551, label %if.end.552

if.then.551:                                      ; preds = %cond.end.543
  %368 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %368, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.559

if.end.552:                                       ; preds = %cond.end.543
  br label %if.end.553

if.end.553:                                       ; preds = %if.end.552, %cleanup.cont.534
  %369 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %color_space554 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %369, i32 0, i32 88
  %byte1555 = getelementptr inbounds %struct.clist_color_space_s, %struct.clist_color_space_s* %color_space554, i32 0, i32 0
  %370 = load i8, i8* %byte1555, align 1, !tbaa !142
  %371 = load i8*, i8** %dp462, align 8, !tbaa !1
  %arrayidx556 = getelementptr inbounds i8, i8* %371, i64 1
  store i8 %370, i8* %arrayidx556, align 1, !tbaa !7
  %372 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %known557 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %372, i32 0, i32 14
  %373 = load i32, i32* %known557, align 4, !tbaa !95
  %or558 = or i32 %373, 16384
  store i32 %or558, i32* %known557, align 4, !tbaa !95
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.559

cleanup.559:                                      ; preds = %if.end.553, %if.then.551, %cleanup.527
  %374 = bitcast i8** %dp462 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %374) #1
  %cleanup.dest.560 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.560, label %cleanup.563 [
    i32 0, label %cleanup.cont.561
  ]

cleanup.cont.561:                                 ; preds = %cleanup.559
  br label %if.end.562

if.end.562:                                       ; preds = %cleanup.cont.561, %if.end.458
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.563

cleanup.563:                                      ; preds = %if.end.562, %cleanup.559, %cleanup.449, %cleanup.246, %cleanup.185, %if.then.144, %cleanup
  %375 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %375) #1
  %376 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %376) #1
  %377 = bitcast i32* %misc2_unknown to i8*
  call void @llvm.lifetime.end(i64 4, i8* %377) #1
  %378 = bitcast i32* %unknown to i8*
  call void @llvm.lifetime.end(i64 4, i8* %378) #1
  %379 = load i32, i32* %retval
  ret i32 %379
}

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

declare i32 @cmd_size_w(i32) #2

declare i8* @cmd_put_w(i32, i8*) #2

declare i32 @gx_path_is_rectangular(%struct.gx_path_s*, %struct.gs_fixed_rect_s*) #2

declare i32 @cmd_write_rect_cmd(%struct.gx_device_clist_writer_s*, %struct.gx_clist_state_s*, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @cmd_put_path(%struct.gx_device_clist_writer_s* %cldev, %struct.gx_clist_state_s* %pcls, %struct.gx_path_s* %ppath, i32 %ymin, i32 %ymax, i8 zeroext %path_op, i32 %implicit_close, i32 %keep_notes) #0 {
entry:
  %retval = alloca i32, align 4
  %cldev.addr = alloca %struct.gx_device_clist_writer_s*, align 8
  %pcls.addr = alloca %struct.gx_clist_state_s*, align 8
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %ymin.addr = alloca i32, align 4
  %ymax.addr = alloca i32, align 4
  %path_op.addr = alloca i8, align 1
  %implicit_close.addr = alloca i32, align 4
  %keep_notes.addr = alloca i32, align 4
  %cenum = alloca %struct.gs_path_enum_s, align 8
  %writer = alloca %struct.cmd_segment_writer_s, align 8
  %initial_op = alloca i8, align 1
  %start = alloca %struct.gs_fixed_point_s, align 4
  %start_side = alloca i32, align 4
  %start_skip = alloca i32, align 4
  %side = alloca i32, align 4
  %out = alloca %struct.gs_fixed_point_s, align 4
  %out_notes = alloca i32, align 4
  %px = alloca i32, align 4
  %py = alloca i32, align 4
  %first = alloca %struct.gs_fixed_point_s, align 4
  %open = alloca i32, align 4
  %prev = alloca %struct.anon, align 4
  %vs = alloca [6 x i32], align 16
  %pe_op = alloca i32, align 4
  %dp12 = alloca i8*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %next_side = alloca i32, align 4
  %notes76 = alloca i32, align 4
  %next_side147 = alloca i32, align 4
  %notes157 = alloca i32, align 4
  %notes303 = alloca i32, align 4
  %bpy = alloca i32, align 4
  %bqy = alloca i32, align 4
  %all_side = alloca i32, align 4
  %out_side = alloca i32, align 4
  %diff = alloca [2 x i32], align 4
  %nx = alloca i32, align 4
  %ny = alloca i32, align 4
  %optr = alloca i32*, align 8
  %op = alloca i8, align 1
  store %struct.gx_device_clist_writer_s* %cldev, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  store %struct.gx_clist_state_s* %pcls, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store i32 %ymin, i32* %ymin.addr, align 4, !tbaa !5
  store i32 %ymax, i32* %ymax.addr, align 4, !tbaa !5
  store i8 %path_op, i8* %path_op.addr, align 1, !tbaa !7
  store i32 %implicit_close, i32* %implicit_close.addr, align 4, !tbaa !5
  store i32 %keep_notes, i32* %keep_notes.addr, align 4, !tbaa !7
  %0 = bitcast %struct.gs_path_enum_s* %cenum to i8*
  call void @llvm.lifetime.start(i64 64, i8* %0) #1
  %1 = bitcast %struct.cmd_segment_writer_s* %writer to i8*
  call void @llvm.lifetime.start(i64 80, i8* %1) #1
  call void @llvm.lifetime.start(i64 1, i8* %initial_op) #1
  store i8 0, i8* %initial_op, align 1, !tbaa !7
  %2 = bitcast %struct.gs_fixed_point_s* %start to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i32* %start_side to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 2074996749, i32* %start_side, align 4, !tbaa !5
  %4 = bitcast i32* %start_skip to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 2074996749, i32* %start_skip, align 4, !tbaa !5
  %5 = bitcast i32* %side to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 2074996749, i32* %side, align 4, !tbaa !5
  %6 = bitcast %struct.gs_fixed_point_s* %out to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i32* %out_notes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 2074996749, i32* %out_notes, align 4, !tbaa !7
  %8 = bitcast i32* %px to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %rect = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %9, i32 0, i32 8
  %x = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect, i32 0, i32 0
  %10 = load i32, i32* %x, align 4, !tbaa !152
  %shl = shl i32 %10, 8
  store i32 %shl, i32* %px, align 4, !tbaa !5
  %11 = bitcast i32* %py to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %rect1 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %12, i32 0, i32 8
  %y = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect1, i32 0, i32 1
  %13 = load i32, i32* %y, align 4, !tbaa !153
  %shl2 = shl i32 %13, 8
  store i32 %shl2, i32* %py, align 4, !tbaa !5
  %14 = bitcast %struct.gs_fixed_point_s* %first to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = bitcast i32* %open to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  store i32 0, i32* %open, align 4, !tbaa !5
  %16 = bitcast %struct.anon* %prev to i8*
  call void @llvm.lifetime.start(i64 24, i8* %16) #1
  %y3 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start, i32 0, i32 1
  store i32 0, i32* %y3, align 4, !tbaa !154
  %x4 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start, i32 0, i32 0
  store i32 0, i32* %x4, align 4, !tbaa !155
  %y5 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %out, i32 0, i32 1
  store i32 0, i32* %y5, align 4, !tbaa !154
  %x6 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %out, i32 0, i32 0
  store i32 0, i32* %x6, align 4, !tbaa !155
  %y7 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %first, i32 0, i32 1
  store i32 0, i32* %y7, align 4, !tbaa !154
  %x8 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %first, i32 0, i32 0
  store i32 0, i32* %x8, align 4, !tbaa !155
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %17 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %call = call i32 @gx_path_enum_init(%struct.gs_path_enum_s* %cenum, %struct.gx_path_s* %17) #5
  %18 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %cldev9 = getelementptr inbounds %struct.cmd_segment_writer_s, %struct.cmd_segment_writer_s* %writer, i32 0, i32 0
  store %struct.gx_device_clist_writer_s* %18, %struct.gx_device_clist_writer_s** %cldev9, align 8, !tbaa !156
  %19 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %pcls10 = getelementptr inbounds %struct.cmd_segment_writer_s, %struct.cmd_segment_writer_s* %writer, i32 0, i32 1
  store %struct.gx_clist_state_s* %19, %struct.gx_clist_state_s** %pcls10, align 8, !tbaa !158
  %notes = getelementptr inbounds %struct.cmd_segment_writer_s, %struct.cmd_segment_writer_s* %writer, i32 0, i32 2
  store i32 0, i32* %notes, align 4, !tbaa !159
  %dp = getelementptr inbounds %struct.cmd_segment_writer_s, %struct.cmd_segment_writer_s* %writer, i32 0, i32 3
  store i8* %initial_op, i8** %dp, align 8, !tbaa !160
  br label %for.cond

for.cond:                                         ; preds = %cleanup.cont.658, %cleanup.653, %do.end
  %20 = bitcast [6 x i32]* %vs to i8*
  call void @llvm.lifetime.start(i64 24, i8* %20) #1
  %21 = bitcast i32* %pe_op to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %arraydecay = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i32 0
  %22 = bitcast i32* %arraydecay to %struct.gs_fixed_point_s*
  %call11 = call i32 @gx_path_enum_next(%struct.gs_path_enum_s* %cenum, %struct.gs_fixed_point_s* %22) #5
  store i32 %call11, i32* %pe_op, align 4, !tbaa !5
  %23 = bitcast i8** %dp12 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #1
  %24 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  %25 = load i32, i32* %pe_op, align 4, !tbaa !5
  switch i32 %25, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.23
    i32 5, label %sw.bb.66
    i32 2, label %sw.bb.146
    i32 4, label %sw.bb.233
    i32 3, label %sw.bb.302
  ]

sw.bb:                                            ; preds = %for.cond
  %26 = load i32, i32* %open, align 4, !tbaa !5
  %cmp = icmp sgt i32 %26, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %sw.bb
  %27 = load i32, i32* %implicit_close.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %27, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %close

if.end:                                           ; preds = %land.lhs.true, %sw.bb
  %28 = load i32, i32* %px, align 4, !tbaa !5
  %shr = ashr i32 %28, 8
  %29 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %rect13 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %29, i32 0, i32 8
  %x14 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect13, i32 0, i32 0
  store i32 %shr, i32* %x14, align 4, !tbaa !152
  %30 = load i32, i32* %py, align 4, !tbaa !5
  %shr15 = ashr i32 %30, 8
  %31 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %rect16 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %31, i32 0, i32 8
  %y17 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect16, i32 0, i32 1
  store i32 %shr15, i32* %y17, align 4, !tbaa !153
  br label %do.body.18

do.body.18:                                       ; preds = %if.end
  br label %do.cond.19

do.cond.19:                                       ; preds = %do.body.18
  br label %do.end.20

do.end.20:                                        ; preds = %do.cond.19
  %32 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %33 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %list = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %33, i32 0, i32 15
  %call21 = call i8* @cmd_put_list_op(%struct.gx_device_clist_writer_s* %32, %struct.cmd_list_s* %list, i32 1) #5
  store i8* %call21, i8** %dp12, align 8, !tbaa !1
  %cmp22 = icmp eq i8* %call21, null
  br i1 %cmp22, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end.20
  %34 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %error_code = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %34, i32 0, i32 65
  %35 = load i32, i32* %error_code, align 4, !tbaa !74
  br label %cond.end

cond.false:                                       ; preds = %do.end.20
  %36 = load i8, i8* %path_op.addr, align 1, !tbaa !7
  %37 = load i8*, i8** %dp12, align 8, !tbaa !1
  store i8 %36, i8* %37, align 1, !tbaa !7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %35, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.653

sw.bb.23:                                         ; preds = %for.cond
  %38 = load i32, i32* %open, align 4, !tbaa !5
  %cmp24 = icmp sgt i32 %38, 0
  br i1 %cmp24, label %land.lhs.true.25, label %if.end.29

land.lhs.true.25:                                 ; preds = %sw.bb.23
  %39 = load i32, i32* %implicit_close.addr, align 4, !tbaa !5
  %tobool26 = icmp ne i32 %39, 0
  br i1 %tobool26, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %land.lhs.true.25
  %call28 = call i32 @gx_path_enum_backup(%struct.gs_path_enum_s* %cenum) #5
  br label %close

if.end.29:                                        ; preds = %land.lhs.true.25, %sw.bb.23
  store i32 -1, i32* %open, align 4, !tbaa !5
  %arrayidx = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 0
  %40 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %x30 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start, i32 0, i32 0
  store i32 %40, i32* %x30, align 4, !tbaa !155
  %arrayidx31 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 1
  %41 = load i32, i32* %arrayidx31, align 4, !tbaa !5
  %y32 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start, i32 0, i32 1
  store i32 %41, i32* %y32, align 4, !tbaa !154
  store i32 0, i32* %start_skip, align 4, !tbaa !5
  %arrayidx33 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 1
  %42 = load i32, i32* %arrayidx33, align 4, !tbaa !5
  %43 = load i32, i32* %ymin.addr, align 4, !tbaa !5
  %cmp34 = icmp slt i32 %42, %43
  br i1 %cmp34, label %cond.true.35, label %cond.false.36

cond.true.35:                                     ; preds = %if.end.29
  br label %cond.end.40

cond.false.36:                                    ; preds = %if.end.29
  %arrayidx37 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 1
  %44 = load i32, i32* %arrayidx37, align 4, !tbaa !5
  %45 = load i32, i32* %ymax.addr, align 4, !tbaa !5
  %cmp38 = icmp sge i32 %44, %45
  %cond39 = select i1 %cmp38, i32 1, i32 0
  br label %cond.end.40

cond.end.40:                                      ; preds = %cond.false.36, %cond.true.35
  %cond41 = phi i32 [ -1, %cond.true.35 ], [ %cond39, %cond.false.36 ]
  store i32 %cond41, i32* %side, align 4, !tbaa !5
  store i32 %cond41, i32* %start_side, align 4, !tbaa !5
  %cmp42 = icmp ne i32 %cond41, 0
  br i1 %cmp42, label %if.then.43, label %if.end.51

if.then.43:                                       ; preds = %cond.end.40
  %arrayidx44 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 0
  %46 = load i32, i32* %arrayidx44, align 4, !tbaa !5
  %x45 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %out, i32 0, i32 0
  store i32 %46, i32* %x45, align 4, !tbaa !155
  %arrayidx46 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 1
  %47 = load i32, i32* %arrayidx46, align 4, !tbaa !5
  %y47 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %out, i32 0, i32 1
  store i32 %47, i32* %y47, align 4, !tbaa !154
  br label %do.body.48

do.body.48:                                       ; preds = %if.then.43
  br label %do.cond.49

do.cond.49:                                       ; preds = %do.body.48
  br label %do.end.50

do.end.50:                                        ; preds = %do.cond.49
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup.653

if.end.51:                                        ; preds = %cond.end.40
  %arrayidx52 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 0
  %48 = load i32, i32* %arrayidx52, align 4, !tbaa !5
  %49 = load i32, i32* %px, align 4, !tbaa !5
  %sub = sub nsw i32 %48, %49
  %arrayidx53 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 2
  store i32 %sub, i32* %arrayidx53, align 4, !tbaa !5
  %arrayidx54 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 1
  %50 = load i32, i32* %arrayidx54, align 4, !tbaa !5
  %51 = load i32, i32* %py, align 4, !tbaa !5
  %sub55 = sub nsw i32 %50, %51
  %arrayidx56 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 3
  store i32 %sub55, i32* %arrayidx56, align 4, !tbaa !5
  %arrayidx57 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 0
  %52 = load i32, i32* %arrayidx57, align 4, !tbaa !5
  store i32 %52, i32* %px, align 4, !tbaa !5
  %x58 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %first, i32 0, i32 0
  store i32 %52, i32* %x58, align 4, !tbaa !155
  %arrayidx59 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 1
  %53 = load i32, i32* %arrayidx59, align 4, !tbaa !5
  store i32 %53, i32* %py, align 4, !tbaa !5
  %y60 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %first, i32 0, i32 1
  store i32 %53, i32* %y60, align 4, !tbaa !154
  %arrayidx61 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 2
  %call62 = call i32 @cmd_put_segment(%struct.cmd_segment_writer_s* %writer, i8 zeroext -32, i32* %arrayidx61, i32 0) #5
  store i32 %call62, i32* %code, align 4, !tbaa !5
  br label %do.body.63

do.body.63:                                       ; preds = %if.end.51
  br label %do.cond.64

do.cond.64:                                       ; preds = %do.body.63
  br label %do.end.65

do.end.65:                                        ; preds = %do.cond.64
  br label %sw.epilog

sw.bb.66:                                         ; preds = %for.cond
  %54 = bitcast i32* %next_side to i8*
  call void @llvm.lifetime.start(i64 4, i8* %54) #1
  %arrayidx67 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 1
  %55 = load i32, i32* %arrayidx67, align 4, !tbaa !5
  %56 = load i32, i32* %ymin.addr, align 4, !tbaa !5
  %cmp68 = icmp slt i32 %55, %56
  br i1 %cmp68, label %cond.true.69, label %cond.false.70

cond.true.69:                                     ; preds = %sw.bb.66
  br label %cond.end.74

cond.false.70:                                    ; preds = %sw.bb.66
  %arrayidx71 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 1
  %57 = load i32, i32* %arrayidx71, align 4, !tbaa !5
  %58 = load i32, i32* %ymax.addr, align 4, !tbaa !5
  %cmp72 = icmp sge i32 %57, %58
  %cond73 = select i1 %cmp72, i32 1, i32 0
  br label %cond.end.74

cond.end.74:                                      ; preds = %cond.false.70, %cond.true.69
  %cond75 = phi i32 [ -1, %cond.true.69 ], [ %cond73, %cond.false.70 ]
  store i32 %cond75, i32* %next_side, align 4, !tbaa !5
  %59 = bitcast i32* %notes76 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %59) #1
  %call77 = call i32 @gx_path_enum_notes(%struct.gs_path_enum_s* %cenum) #5
  %60 = load i32, i32* %keep_notes.addr, align 4, !tbaa !7
  %and = and i32 %call77, %60
  store i32 %and, i32* %notes76, align 4, !tbaa !7
  %61 = load i32, i32* %next_side, align 4, !tbaa !5
  %62 = load i32, i32* %side, align 4, !tbaa !5
  %cmp78 = icmp eq i32 %61, %62
  br i1 %cmp78, label %land.lhs.true.79, label %if.end.92

land.lhs.true.79:                                 ; preds = %cond.end.74
  %63 = load i32, i32* %side, align 4, !tbaa !5
  %cmp80 = icmp ne i32 %63, 0
  br i1 %cmp80, label %if.then.81, label %if.end.92

if.then.81:                                       ; preds = %land.lhs.true.79
  %64 = load i32, i32* %open, align 4, !tbaa !5
  %cmp82 = icmp slt i32 %64, 0
  br i1 %cmp82, label %if.then.83, label %if.end.84

if.then.83:                                       ; preds = %if.then.81
  store i32 1, i32* %start_skip, align 4, !tbaa !5
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.83, %if.then.81
  %arrayidx85 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 0
  %65 = load i32, i32* %arrayidx85, align 4, !tbaa !5
  %x86 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %out, i32 0, i32 0
  store i32 %65, i32* %x86, align 4, !tbaa !155
  %arrayidx87 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 1
  %66 = load i32, i32* %arrayidx87, align 4, !tbaa !5
  %y88 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %out, i32 0, i32 1
  store i32 %66, i32* %y88, align 4, !tbaa !154
  %67 = load i32, i32* %notes76, align 4, !tbaa !7
  store i32 %67, i32* %out_notes, align 4, !tbaa !7
  br label %do.body.89

do.body.89:                                       ; preds = %if.end.84
  br label %do.cond.90

do.cond.90:                                       ; preds = %do.body.89
  br label %do.end.91

do.end.91:                                        ; preds = %do.cond.90
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup

if.end.92:                                        ; preds = %land.lhs.true.79, %cond.end.74
  %68 = load i32, i32* %side, align 4, !tbaa !5
  %tobool93 = icmp ne i32 %68, 0
  br i1 %tobool93, label %land.lhs.true.94, label %if.end.124

land.lhs.true.94:                                 ; preds = %if.end.92
  %69 = load i32, i32* %px, align 4, !tbaa !5
  %x95 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %out, i32 0, i32 0
  %70 = load i32, i32* %x95, align 4, !tbaa !155
  %cmp96 = icmp ne i32 %69, %70
  br i1 %cmp96, label %if.then.102, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.94
  %71 = load i32, i32* %py, align 4, !tbaa !5
  %y97 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %out, i32 0, i32 1
  %72 = load i32, i32* %y97, align 4, !tbaa !154
  %cmp98 = icmp ne i32 %71, %72
  br i1 %cmp98, label %if.then.102, label %lor.lhs.false.99

lor.lhs.false.99:                                 ; preds = %lor.lhs.false
  %dp100 = getelementptr inbounds %struct.cmd_segment_writer_s, %struct.cmd_segment_writer_s* %writer, i32 0, i32 3
  %73 = load i8*, i8** %dp100, align 8, !tbaa !160
  %cmp101 = icmp eq i8* %73, %initial_op
  br i1 %cmp101, label %if.then.102, label %if.end.124

if.then.102:                                      ; preds = %lor.lhs.false.99, %lor.lhs.false, %land.lhs.true.94
  %x103 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %out, i32 0, i32 0
  %74 = load i32, i32* %x103, align 4, !tbaa !155
  %75 = load i32, i32* %px, align 4, !tbaa !5
  %sub104 = sub nsw i32 %74, %75
  %arrayidx105 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 2
  store i32 %sub104, i32* %arrayidx105, align 4, !tbaa !5
  %y106 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %out, i32 0, i32 1
  %76 = load i32, i32* %y106, align 4, !tbaa !154
  %77 = load i32, i32* %py, align 4, !tbaa !5
  %sub107 = sub nsw i32 %76, %77
  %arrayidx108 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 3
  store i32 %sub107, i32* %arrayidx108, align 4, !tbaa !5
  %78 = load i32, i32* %open, align 4, !tbaa !5
  %cmp109 = icmp slt i32 %78, 0
  br i1 %cmp109, label %if.then.110, label %if.else

if.then.110:                                      ; preds = %if.then.102
  %79 = bitcast %struct.gs_fixed_point_s* %first to i8*
  %80 = bitcast %struct.gs_fixed_point_s* %out to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %79, i8* %80, i64 8, i32 4, i1 false), !tbaa.struct !161
  %arrayidx111 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 2
  %call112 = call i32 @cmd_put_segment(%struct.cmd_segment_writer_s* %writer, i8 zeroext -32, i32* %arrayidx111, i32 0) #5
  store i32 %call112, i32* %code, align 4, !tbaa !5
  br label %if.end.115

if.else:                                          ; preds = %if.then.102
  %arrayidx113 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 2
  %81 = load i32, i32* %out_notes, align 4, !tbaa !7
  %call114 = call i32 @cmd_put_segment(%struct.cmd_segment_writer_s* %writer, i8 zeroext -31, i32* %arrayidx113, i32 %81) #5
  store i32 %call114, i32* %code, align 4, !tbaa !5
  br label %if.end.115

if.end.115:                                       ; preds = %if.else, %if.then.110
  %82 = load i32, i32* %code, align 4, !tbaa !5
  %cmp116 = icmp slt i32 %82, 0
  br i1 %cmp116, label %if.then.117, label %if.end.118

if.then.117:                                      ; preds = %if.end.115
  %83 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %83, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.118:                                       ; preds = %if.end.115
  %x119 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %out, i32 0, i32 0
  %84 = load i32, i32* %x119, align 4, !tbaa !155
  store i32 %84, i32* %px, align 4, !tbaa !5
  %y120 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %out, i32 0, i32 1
  %85 = load i32, i32* %y120, align 4, !tbaa !154
  store i32 %85, i32* %py, align 4, !tbaa !5
  br label %do.body.121

do.body.121:                                      ; preds = %if.end.118
  br label %do.cond.122

do.cond.122:                                      ; preds = %do.body.121
  br label %do.end.123

do.end.123:                                       ; preds = %do.cond.122
  br label %if.end.124

if.end.124:                                       ; preds = %do.end.123, %lor.lhs.false.99, %if.end.92
  %86 = load i32, i32* %next_side, align 4, !tbaa !5
  store i32 %86, i32* %side, align 4, !tbaa !5
  %cmp125 = icmp ne i32 %86, 0
  br i1 %cmp125, label %if.then.126, label %if.end.131

if.then.126:                                      ; preds = %if.end.124
  %arrayidx127 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 0
  %87 = load i32, i32* %arrayidx127, align 4, !tbaa !5
  %x128 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %out, i32 0, i32 0
  store i32 %87, i32* %x128, align 4, !tbaa !155
  %arrayidx129 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 1
  %88 = load i32, i32* %arrayidx129, align 4, !tbaa !5
  %y130 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %out, i32 0, i32 1
  store i32 %88, i32* %y130, align 4, !tbaa !154
  br label %if.end.131

if.end.131:                                       ; preds = %if.then.126, %if.end.124
  %arrayidx132 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 0
  %89 = load i32, i32* %arrayidx132, align 4, !tbaa !5
  %90 = load i32, i32* %px, align 4, !tbaa !5
  %sub133 = sub nsw i32 %89, %90
  %arrayidx134 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 2
  store i32 %sub133, i32* %arrayidx134, align 4, !tbaa !5
  %arrayidx135 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 1
  %91 = load i32, i32* %arrayidx135, align 4, !tbaa !5
  %92 = load i32, i32* %py, align 4, !tbaa !5
  %sub136 = sub nsw i32 %91, %92
  %arrayidx137 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 3
  store i32 %sub136, i32* %arrayidx137, align 4, !tbaa !5
  %arrayidx138 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 0
  %93 = load i32, i32* %arrayidx138, align 4, !tbaa !5
  store i32 %93, i32* %px, align 4, !tbaa !5
  %arrayidx139 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 1
  %94 = load i32, i32* %arrayidx139, align 4, !tbaa !5
  store i32 %94, i32* %py, align 4, !tbaa !5
  store i32 1, i32* %open, align 4, !tbaa !5
  %arrayidx140 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 2
  %95 = load i32, i32* %notes76, align 4, !tbaa !7
  %call141 = call i32 @cmd_put_segment(%struct.cmd_segment_writer_s* %writer, i8 zeroext -15, i32* %arrayidx140, i32 %95) #5
  store i32 %call141, i32* %code, align 4, !tbaa !5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.131, %if.then.117, %do.end.91
  %96 = bitcast i32* %notes76 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %96) #1
  %97 = bitcast i32* %next_side to i8*
  call void @llvm.lifetime.end(i64 4, i8* %97) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.653 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.body.143

do.body.143:                                      ; preds = %cleanup.cont
  br label %do.cond.144

do.cond.144:                                      ; preds = %do.body.143
  br label %do.end.145

do.end.145:                                       ; preds = %do.cond.144
  br label %sw.epilog

sw.bb.146:                                        ; preds = %for.cond
  %98 = bitcast i32* %next_side147 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %98) #1
  %arrayidx148 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 1
  %99 = load i32, i32* %arrayidx148, align 4, !tbaa !5
  %100 = load i32, i32* %ymin.addr, align 4, !tbaa !5
  %cmp149 = icmp slt i32 %99, %100
  br i1 %cmp149, label %cond.true.150, label %cond.false.151

cond.true.150:                                    ; preds = %sw.bb.146
  br label %cond.end.155

cond.false.151:                                   ; preds = %sw.bb.146
  %arrayidx152 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 1
  %101 = load i32, i32* %arrayidx152, align 4, !tbaa !5
  %102 = load i32, i32* %ymax.addr, align 4, !tbaa !5
  %cmp153 = icmp sge i32 %101, %102
  %cond154 = select i1 %cmp153, i32 1, i32 0
  br label %cond.end.155

cond.end.155:                                     ; preds = %cond.false.151, %cond.true.150
  %cond156 = phi i32 [ -1, %cond.true.150 ], [ %cond154, %cond.false.151 ]
  store i32 %cond156, i32* %next_side147, align 4, !tbaa !5
  %103 = bitcast i32* %notes157 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %103) #1
  %call158 = call i32 @gx_path_enum_notes(%struct.gs_path_enum_s* %cenum) #5
  %104 = load i32, i32* %keep_notes.addr, align 4, !tbaa !7
  %and159 = and i32 %call158, %104
  store i32 %and159, i32* %notes157, align 4, !tbaa !7
  %105 = load i32, i32* %next_side147, align 4, !tbaa !5
  %106 = load i32, i32* %side, align 4, !tbaa !5
  %cmp160 = icmp eq i32 %105, %106
  br i1 %cmp160, label %land.lhs.true.161, label %if.end.174

land.lhs.true.161:                                ; preds = %cond.end.155
  %107 = load i32, i32* %side, align 4, !tbaa !5
  %cmp162 = icmp ne i32 %107, 0
  br i1 %cmp162, label %if.then.163, label %if.end.174

if.then.163:                                      ; preds = %land.lhs.true.161
  %108 = load i32, i32* %open, align 4, !tbaa !5
  %cmp164 = icmp slt i32 %108, 0
  br i1 %cmp164, label %if.then.165, label %if.end.166

if.then.165:                                      ; preds = %if.then.163
  store i32 1, i32* %start_skip, align 4, !tbaa !5
  br label %if.end.166

if.end.166:                                       ; preds = %if.then.165, %if.then.163
  %arrayidx167 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 0
  %109 = load i32, i32* %arrayidx167, align 4, !tbaa !5
  %x168 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %out, i32 0, i32 0
  store i32 %109, i32* %x168, align 4, !tbaa !155
  %arrayidx169 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 1
  %110 = load i32, i32* %arrayidx169, align 4, !tbaa !5
  %y170 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %out, i32 0, i32 1
  store i32 %110, i32* %y170, align 4, !tbaa !154
  %111 = load i32, i32* %notes157, align 4, !tbaa !7
  store i32 %111, i32* %out_notes, align 4, !tbaa !7
  br label %do.body.171

do.body.171:                                      ; preds = %if.end.166
  br label %do.cond.172

do.cond.172:                                      ; preds = %do.body.171
  br label %do.end.173

do.end.173:                                       ; preds = %do.cond.172
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup.226

if.end.174:                                       ; preds = %land.lhs.true.161, %cond.end.155
  %112 = load i32, i32* %side, align 4, !tbaa !5
  %tobool175 = icmp ne i32 %112, 0
  br i1 %tobool175, label %land.lhs.true.176, label %if.end.208

land.lhs.true.176:                                ; preds = %if.end.174
  %113 = load i32, i32* %px, align 4, !tbaa !5
  %x177 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %out, i32 0, i32 0
  %114 = load i32, i32* %x177, align 4, !tbaa !155
  %cmp178 = icmp ne i32 %113, %114
  br i1 %cmp178, label %if.then.185, label %lor.lhs.false.179

lor.lhs.false.179:                                ; preds = %land.lhs.true.176
  %115 = load i32, i32* %py, align 4, !tbaa !5
  %y180 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %out, i32 0, i32 1
  %116 = load i32, i32* %y180, align 4, !tbaa !154
  %cmp181 = icmp ne i32 %115, %116
  br i1 %cmp181, label %if.then.185, label %lor.lhs.false.182

lor.lhs.false.182:                                ; preds = %lor.lhs.false.179
  %dp183 = getelementptr inbounds %struct.cmd_segment_writer_s, %struct.cmd_segment_writer_s* %writer, i32 0, i32 3
  %117 = load i8*, i8** %dp183, align 8, !tbaa !160
  %cmp184 = icmp eq i8* %117, %initial_op
  br i1 %cmp184, label %if.then.185, label %if.end.208

if.then.185:                                      ; preds = %lor.lhs.false.182, %lor.lhs.false.179, %land.lhs.true.176
  %x186 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %out, i32 0, i32 0
  %118 = load i32, i32* %x186, align 4, !tbaa !155
  %119 = load i32, i32* %px, align 4, !tbaa !5
  %sub187 = sub nsw i32 %118, %119
  %arrayidx188 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 2
  store i32 %sub187, i32* %arrayidx188, align 4, !tbaa !5
  %y189 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %out, i32 0, i32 1
  %120 = load i32, i32* %y189, align 4, !tbaa !154
  %121 = load i32, i32* %py, align 4, !tbaa !5
  %sub190 = sub nsw i32 %120, %121
  %arrayidx191 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 3
  store i32 %sub190, i32* %arrayidx191, align 4, !tbaa !5
  %122 = load i32, i32* %open, align 4, !tbaa !5
  %cmp192 = icmp slt i32 %122, 0
  br i1 %cmp192, label %if.then.193, label %if.else.196

if.then.193:                                      ; preds = %if.then.185
  %123 = bitcast %struct.gs_fixed_point_s* %first to i8*
  %124 = bitcast %struct.gs_fixed_point_s* %out to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %123, i8* %124, i64 8, i32 4, i1 false), !tbaa.struct !161
  %arrayidx194 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 2
  %call195 = call i32 @cmd_put_segment(%struct.cmd_segment_writer_s* %writer, i8 zeroext -32, i32* %arrayidx194, i32 0) #5
  store i32 %call195, i32* %code, align 4, !tbaa !5
  br label %if.end.199

if.else.196:                                      ; preds = %if.then.185
  %arrayidx197 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 2
  %125 = load i32, i32* %out_notes, align 4, !tbaa !7
  %call198 = call i32 @cmd_put_segment(%struct.cmd_segment_writer_s* %writer, i8 zeroext -31, i32* %arrayidx197, i32 %125) #5
  store i32 %call198, i32* %code, align 4, !tbaa !5
  br label %if.end.199

if.end.199:                                       ; preds = %if.else.196, %if.then.193
  %126 = load i32, i32* %code, align 4, !tbaa !5
  %cmp200 = icmp slt i32 %126, 0
  br i1 %cmp200, label %if.then.201, label %if.end.202

if.then.201:                                      ; preds = %if.end.199
  %127 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %127, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.226

if.end.202:                                       ; preds = %if.end.199
  %x203 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %out, i32 0, i32 0
  %128 = load i32, i32* %x203, align 4, !tbaa !155
  store i32 %128, i32* %px, align 4, !tbaa !5
  %y204 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %out, i32 0, i32 1
  %129 = load i32, i32* %y204, align 4, !tbaa !154
  store i32 %129, i32* %py, align 4, !tbaa !5
  br label %do.body.205

do.body.205:                                      ; preds = %if.end.202
  br label %do.cond.206

do.cond.206:                                      ; preds = %do.body.205
  br label %do.end.207

do.end.207:                                       ; preds = %do.cond.206
  br label %if.end.208

if.end.208:                                       ; preds = %do.end.207, %lor.lhs.false.182, %if.end.174
  %130 = load i32, i32* %next_side147, align 4, !tbaa !5
  store i32 %130, i32* %side, align 4, !tbaa !5
  %cmp209 = icmp ne i32 %130, 0
  br i1 %cmp209, label %if.then.210, label %if.end.215

if.then.210:                                      ; preds = %if.end.208
  %arrayidx211 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 0
  %131 = load i32, i32* %arrayidx211, align 4, !tbaa !5
  %x212 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %out, i32 0, i32 0
  store i32 %131, i32* %x212, align 4, !tbaa !155
  %arrayidx213 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 1
  %132 = load i32, i32* %arrayidx213, align 4, !tbaa !5
  %y214 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %out, i32 0, i32 1
  store i32 %132, i32* %y214, align 4, !tbaa !154
  br label %if.end.215

if.end.215:                                       ; preds = %if.then.210, %if.end.208
  %arrayidx216 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 0
  %133 = load i32, i32* %arrayidx216, align 4, !tbaa !5
  %134 = load i32, i32* %px, align 4, !tbaa !5
  %sub217 = sub nsw i32 %133, %134
  %arrayidx218 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 2
  store i32 %sub217, i32* %arrayidx218, align 4, !tbaa !5
  %arrayidx219 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 1
  %135 = load i32, i32* %arrayidx219, align 4, !tbaa !5
  %136 = load i32, i32* %py, align 4, !tbaa !5
  %sub220 = sub nsw i32 %135, %136
  %arrayidx221 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 3
  store i32 %sub220, i32* %arrayidx221, align 4, !tbaa !5
  %arrayidx222 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 0
  %137 = load i32, i32* %arrayidx222, align 4, !tbaa !5
  store i32 %137, i32* %px, align 4, !tbaa !5
  %arrayidx223 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 1
  %138 = load i32, i32* %arrayidx223, align 4, !tbaa !5
  store i32 %138, i32* %py, align 4, !tbaa !5
  store i32 1, i32* %open, align 4, !tbaa !5
  %arrayidx224 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 2
  %139 = load i32, i32* %notes157, align 4, !tbaa !7
  %call225 = call i32 @cmd_put_segment(%struct.cmd_segment_writer_s* %writer, i8 zeroext -31, i32* %arrayidx224, i32 %139) #5
  store i32 %call225, i32* %code, align 4, !tbaa !5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.226

cleanup.226:                                      ; preds = %if.end.215, %if.then.201, %do.end.173
  %140 = bitcast i32* %notes157 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %140) #1
  %141 = bitcast i32* %next_side147 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %141) #1
  %cleanup.dest.228 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.228, label %cleanup.653 [
    i32 0, label %cleanup.cont.229
  ]

cleanup.cont.229:                                 ; preds = %cleanup.226
  br label %do.body.230

do.body.230:                                      ; preds = %cleanup.cont.229
  br label %do.cond.231

do.cond.231:                                      ; preds = %do.body.230
  br label %do.end.232

do.end.232:                                       ; preds = %do.cond.231
  br label %sw.epilog

sw.bb.233:                                        ; preds = %for.cond
  br label %close

close:                                            ; preds = %sw.bb.233, %if.then.27, %if.then
  %142 = load i32, i32* %side, align 4, !tbaa !5
  %143 = load i32, i32* %start_side, align 4, !tbaa !5
  %cmp234 = icmp ne i32 %142, %143
  br i1 %cmp234, label %if.then.235, label %if.end.285

if.then.235:                                      ; preds = %close
  %144 = load i32, i32* %side, align 4, !tbaa !5
  %tobool236 = icmp ne i32 %144, 0
  br i1 %tobool236, label %land.lhs.true.237, label %if.end.263

land.lhs.true.237:                                ; preds = %if.then.235
  %145 = load i32, i32* %px, align 4, !tbaa !5
  %x238 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %out, i32 0, i32 0
  %146 = load i32, i32* %x238, align 4, !tbaa !155
  %cmp239 = icmp ne i32 %145, %146
  br i1 %cmp239, label %if.then.246, label %lor.lhs.false.240

lor.lhs.false.240:                                ; preds = %land.lhs.true.237
  %147 = load i32, i32* %py, align 4, !tbaa !5
  %y241 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %out, i32 0, i32 1
  %148 = load i32, i32* %y241, align 4, !tbaa !154
  %cmp242 = icmp ne i32 %147, %148
  br i1 %cmp242, label %if.then.246, label %lor.lhs.false.243

lor.lhs.false.243:                                ; preds = %lor.lhs.false.240
  %dp244 = getelementptr inbounds %struct.cmd_segment_writer_s, %struct.cmd_segment_writer_s* %writer, i32 0, i32 3
  %149 = load i8*, i8** %dp244, align 8, !tbaa !160
  %cmp245 = icmp eq i8* %149, %initial_op
  br i1 %cmp245, label %if.then.246, label %if.end.263

if.then.246:                                      ; preds = %lor.lhs.false.243, %lor.lhs.false.240, %land.lhs.true.237
  %x247 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %out, i32 0, i32 0
  %150 = load i32, i32* %x247, align 4, !tbaa !155
  %151 = load i32, i32* %px, align 4, !tbaa !5
  %sub248 = sub nsw i32 %150, %151
  %arrayidx249 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 2
  store i32 %sub248, i32* %arrayidx249, align 4, !tbaa !5
  %y250 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %out, i32 0, i32 1
  %152 = load i32, i32* %y250, align 4, !tbaa !154
  %153 = load i32, i32* %py, align 4, !tbaa !5
  %sub251 = sub nsw i32 %152, %153
  %arrayidx252 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 3
  store i32 %sub251, i32* %arrayidx252, align 4, !tbaa !5
  %arrayidx253 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 2
  %154 = load i32, i32* %out_notes, align 4, !tbaa !7
  %call254 = call i32 @cmd_put_segment(%struct.cmd_segment_writer_s* %writer, i8 zeroext -31, i32* %arrayidx253, i32 %154) #5
  store i32 %call254, i32* %code, align 4, !tbaa !5
  %155 = load i32, i32* %code, align 4, !tbaa !5
  %cmp255 = icmp slt i32 %155, 0
  br i1 %cmp255, label %if.then.256, label %if.end.257

if.then.256:                                      ; preds = %if.then.246
  %156 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %156, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.653

if.end.257:                                       ; preds = %if.then.246
  %x258 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %out, i32 0, i32 0
  %157 = load i32, i32* %x258, align 4, !tbaa !155
  store i32 %157, i32* %px, align 4, !tbaa !5
  %y259 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %out, i32 0, i32 1
  %158 = load i32, i32* %y259, align 4, !tbaa !154
  store i32 %158, i32* %py, align 4, !tbaa !5
  br label %do.body.260

do.body.260:                                      ; preds = %if.end.257
  br label %do.cond.261

do.cond.261:                                      ; preds = %do.body.260
  br label %do.end.262

do.end.262:                                       ; preds = %do.cond.261
  br label %if.end.263

if.end.263:                                       ; preds = %do.end.262, %lor.lhs.false.243, %if.then.235
  %159 = load i32, i32* %open, align 4, !tbaa !5
  %cmp264 = icmp sgt i32 %159, 0
  br i1 %cmp264, label %land.lhs.true.265, label %if.end.284

land.lhs.true.265:                                ; preds = %if.end.263
  %160 = load i32, i32* %start_skip, align 4, !tbaa !5
  %tobool266 = icmp ne i32 %160, 0
  br i1 %tobool266, label %if.then.267, label %if.end.284

if.then.267:                                      ; preds = %land.lhs.true.265
  %x268 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start, i32 0, i32 0
  %161 = load i32, i32* %x268, align 4, !tbaa !155
  %162 = load i32, i32* %px, align 4, !tbaa !5
  %sub269 = sub nsw i32 %161, %162
  %arrayidx270 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 2
  store i32 %sub269, i32* %arrayidx270, align 4, !tbaa !5
  %y271 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start, i32 0, i32 1
  %163 = load i32, i32* %y271, align 4, !tbaa !154
  %164 = load i32, i32* %py, align 4, !tbaa !5
  %sub272 = sub nsw i32 %163, %164
  %arrayidx273 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 3
  store i32 %sub272, i32* %arrayidx273, align 4, !tbaa !5
  %arrayidx274 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 2
  %call275 = call i32 @cmd_put_segment(%struct.cmd_segment_writer_s* %writer, i8 zeroext -31, i32* %arrayidx274, i32 0) #5
  store i32 %call275, i32* %code, align 4, !tbaa !5
  %165 = load i32, i32* %code, align 4, !tbaa !5
  %cmp276 = icmp slt i32 %165, 0
  br i1 %cmp276, label %if.then.277, label %if.end.278

if.then.277:                                      ; preds = %if.then.267
  %166 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %166, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.653

if.end.278:                                       ; preds = %if.then.267
  %x279 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start, i32 0, i32 0
  %167 = load i32, i32* %x279, align 4, !tbaa !155
  store i32 %167, i32* %px, align 4, !tbaa !5
  %y280 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start, i32 0, i32 1
  %168 = load i32, i32* %y280, align 4, !tbaa !154
  store i32 %168, i32* %py, align 4, !tbaa !5
  br label %do.body.281

do.body.281:                                      ; preds = %if.end.278
  br label %do.cond.282

do.cond.282:                                      ; preds = %do.body.281
  br label %do.end.283

do.end.283:                                       ; preds = %do.cond.282
  br label %if.end.284

if.end.284:                                       ; preds = %do.end.283, %land.lhs.true.265, %if.end.263
  br label %if.end.285

if.end.285:                                       ; preds = %if.end.284, %close
  %169 = load i32, i32* %implicit_close.addr, align 4, !tbaa !5
  %tobool286 = icmp ne i32 %169, 0
  br i1 %tobool286, label %if.then.289, label %lor.lhs.false.287

lor.lhs.false.287:                                ; preds = %if.end.285
  %170 = load i32, i32* %open, align 4, !tbaa !5
  %cmp288 = icmp sle i32 %170, 0
  br i1 %cmp288, label %if.then.289, label %if.end.294

if.then.289:                                      ; preds = %lor.lhs.false.287, %if.end.285
  %dp290 = getelementptr inbounds %struct.cmd_segment_writer_s, %struct.cmd_segment_writer_s* %writer, i32 0, i32 3
  store i8* %initial_op, i8** %dp290, align 8, !tbaa !160
  %171 = load i32, i32* %side, align 4, !tbaa !5
  %cmp291 = icmp ne i32 %171, 0
  br i1 %cmp291, label %if.then.292, label %if.end.293

if.then.292:                                      ; preds = %if.then.289
  store i32 0, i32* %open, align 4, !tbaa !5
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup.653

if.end.293:                                       ; preds = %if.then.289
  br label %if.end.294

if.end.294:                                       ; preds = %if.end.293, %lor.lhs.false.287
  store i32 0, i32* %open, align 4, !tbaa !5
  %x295 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %first, i32 0, i32 0
  %172 = load i32, i32* %x295, align 4, !tbaa !155
  store i32 %172, i32* %px, align 4, !tbaa !5
  %y296 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %first, i32 0, i32 1
  %173 = load i32, i32* %y296, align 4, !tbaa !154
  store i32 %173, i32* %py, align 4, !tbaa !5
  %arrayidx297 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 0
  %call298 = call i32 @cmd_put_segment(%struct.cmd_segment_writer_s* %writer, i8 zeroext -17, i32* %arrayidx297, i32 0) #5
  store i32 %call298, i32* %code, align 4, !tbaa !5
  br label %do.body.299

do.body.299:                                      ; preds = %if.end.294
  br label %do.cond.300

do.cond.300:                                      ; preds = %do.body.299
  br label %do.end.301

do.end.301:                                       ; preds = %do.cond.300
  br label %sw.epilog

sw.bb.302:                                        ; preds = %for.cond
  %174 = bitcast i32* %notes303 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %174) #1
  %call304 = call i32 @gx_path_enum_notes(%struct.gs_path_enum_s* %cenum) #5
  %175 = load i32, i32* %keep_notes.addr, align 4, !tbaa !7
  %and305 = and i32 %call304, %175
  store i32 %and305, i32* %notes303, align 4, !tbaa !7
  %176 = bitcast i32* %bpy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %176) #1
  %177 = bitcast i32* %bqy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %177) #1
  %178 = bitcast i32* %all_side to i8*
  call void @llvm.lifetime.start(i64 4, i8* %178) #1
  %179 = bitcast i32* %out_side to i8*
  call void @llvm.lifetime.start(i64 4, i8* %179) #1
  %arrayidx306 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 1
  %180 = load i32, i32* %arrayidx306, align 4, !tbaa !5
  %arrayidx307 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 3
  %181 = load i32, i32* %arrayidx307, align 4, !tbaa !5
  %cmp308 = icmp slt i32 %180, %181
  br i1 %cmp308, label %if.then.309, label %if.else.312

if.then.309:                                      ; preds = %sw.bb.302
  %arrayidx310 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 1
  %182 = load i32, i32* %arrayidx310, align 4, !tbaa !5
  store i32 %182, i32* %bpy, align 4, !tbaa !5
  %arrayidx311 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 3
  %183 = load i32, i32* %arrayidx311, align 4, !tbaa !5
  store i32 %183, i32* %bqy, align 4, !tbaa !5
  br label %if.end.315

if.else.312:                                      ; preds = %sw.bb.302
  %arrayidx313 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 3
  %184 = load i32, i32* %arrayidx313, align 4, !tbaa !5
  store i32 %184, i32* %bpy, align 4, !tbaa !5
  %arrayidx314 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 1
  %185 = load i32, i32* %arrayidx314, align 4, !tbaa !5
  store i32 %185, i32* %bqy, align 4, !tbaa !5
  br label %if.end.315

if.end.315:                                       ; preds = %if.else.312, %if.then.309
  %arrayidx316 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 5
  %186 = load i32, i32* %arrayidx316, align 4, !tbaa !5
  %187 = load i32, i32* %bpy, align 4, !tbaa !5
  %cmp317 = icmp slt i32 %186, %187
  br i1 %cmp317, label %if.then.318, label %if.else.320

if.then.318:                                      ; preds = %if.end.315
  %arrayidx319 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 5
  %188 = load i32, i32* %arrayidx319, align 4, !tbaa !5
  store i32 %188, i32* %bpy, align 4, !tbaa !5
  br label %if.end.326

if.else.320:                                      ; preds = %if.end.315
  %arrayidx321 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 5
  %189 = load i32, i32* %arrayidx321, align 4, !tbaa !5
  %190 = load i32, i32* %bqy, align 4, !tbaa !5
  %cmp322 = icmp sgt i32 %189, %190
  br i1 %cmp322, label %if.then.323, label %if.end.325

if.then.323:                                      ; preds = %if.else.320
  %arrayidx324 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 5
  %191 = load i32, i32* %arrayidx324, align 4, !tbaa !5
  store i32 %191, i32* %bqy, align 4, !tbaa !5
  br label %if.end.325

if.end.325:                                       ; preds = %if.then.323, %if.else.320
  br label %if.end.326

if.end.326:                                       ; preds = %if.end.325, %if.then.318
  %192 = load i32, i32* %bqy, align 4, !tbaa !5
  %193 = load i32, i32* %ymin.addr, align 4, !tbaa !5
  %cmp327 = icmp slt i32 %192, %193
  br i1 %cmp327, label %cond.true.328, label %cond.false.329

cond.true.328:                                    ; preds = %if.end.326
  br label %cond.end.332

cond.false.329:                                   ; preds = %if.end.326
  %194 = load i32, i32* %bpy, align 4, !tbaa !5
  %195 = load i32, i32* %ymax.addr, align 4, !tbaa !5
  %cmp330 = icmp sgt i32 %194, %195
  %cond331 = select i1 %cmp330, i32 1, i32 0
  br label %cond.end.332

cond.end.332:                                     ; preds = %cond.false.329, %cond.true.328
  %cond333 = phi i32 [ -1, %cond.true.328 ], [ %cond331, %cond.false.329 ]
  store i32 %cond333, i32* %all_side, align 4, !tbaa !5
  %196 = load i32, i32* %all_side, align 4, !tbaa !5
  %cmp334 = icmp ne i32 %196, 0
  br i1 %cmp334, label %if.then.335, label %if.else.349

if.then.335:                                      ; preds = %cond.end.332
  %197 = load i32, i32* %all_side, align 4, !tbaa !5
  %198 = load i32, i32* %side, align 4, !tbaa !5
  %cmp336 = icmp eq i32 %197, %198
  br i1 %cmp336, label %if.then.337, label %if.end.348

if.then.337:                                      ; preds = %if.then.335
  %199 = load i32, i32* %open, align 4, !tbaa !5
  %cmp338 = icmp slt i32 %199, 0
  br i1 %cmp338, label %if.then.339, label %if.end.340

if.then.339:                                      ; preds = %if.then.337
  store i32 1, i32* %start_skip, align 4, !tbaa !5
  br label %if.end.340

if.end.340:                                       ; preds = %if.then.339, %if.then.337
  %arrayidx341 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 4
  %200 = load i32, i32* %arrayidx341, align 4, !tbaa !5
  %x342 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %out, i32 0, i32 0
  store i32 %200, i32* %x342, align 4, !tbaa !155
  %arrayidx343 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 5
  %201 = load i32, i32* %arrayidx343, align 4, !tbaa !5
  %y344 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %out, i32 0, i32 1
  store i32 %201, i32* %y344, align 4, !tbaa !154
  %202 = load i32, i32* %notes303, align 4, !tbaa !7
  store i32 %202, i32* %out_notes, align 4, !tbaa !7
  br label %do.body.345

do.body.345:                                      ; preds = %if.end.340
  br label %do.cond.346

do.cond.346:                                      ; preds = %do.body.345
  br label %do.end.347

do.end.347:                                       ; preds = %do.cond.346
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup.404

if.end.348:                                       ; preds = %if.then.335
  %203 = load i32, i32* %all_side, align 4, !tbaa !5
  store i32 %203, i32* %out_side, align 4, !tbaa !5
  br label %if.end.359

if.else.349:                                      ; preds = %cond.end.332
  %arrayidx350 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 5
  %204 = load i32, i32* %arrayidx350, align 4, !tbaa !5
  %205 = load i32, i32* %ymin.addr, align 4, !tbaa !5
  %cmp351 = icmp slt i32 %204, %205
  br i1 %cmp351, label %cond.true.352, label %cond.false.353

cond.true.352:                                    ; preds = %if.else.349
  br label %cond.end.357

cond.false.353:                                   ; preds = %if.else.349
  %arrayidx354 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 5
  %206 = load i32, i32* %arrayidx354, align 4, !tbaa !5
  %207 = load i32, i32* %ymax.addr, align 4, !tbaa !5
  %cmp355 = icmp sge i32 %206, %207
  %cond356 = select i1 %cmp355, i32 1, i32 0
  br label %cond.end.357

cond.end.357:                                     ; preds = %cond.false.353, %cond.true.352
  %cond358 = phi i32 [ -1, %cond.true.352 ], [ %cond356, %cond.false.353 ]
  store i32 %cond358, i32* %out_side, align 4, !tbaa !5
  br label %if.end.359

if.end.359:                                       ; preds = %cond.end.357, %if.end.348
  %208 = load i32, i32* %side, align 4, !tbaa !5
  %tobool360 = icmp ne i32 %208, 0
  br i1 %tobool360, label %land.lhs.true.361, label %if.end.396

land.lhs.true.361:                                ; preds = %if.end.359
  %209 = load i32, i32* %px, align 4, !tbaa !5
  %x362 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %out, i32 0, i32 0
  %210 = load i32, i32* %x362, align 4, !tbaa !155
  %cmp363 = icmp ne i32 %209, %210
  br i1 %cmp363, label %if.then.370, label %lor.lhs.false.364

lor.lhs.false.364:                                ; preds = %land.lhs.true.361
  %211 = load i32, i32* %py, align 4, !tbaa !5
  %y365 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %out, i32 0, i32 1
  %212 = load i32, i32* %y365, align 4, !tbaa !154
  %cmp366 = icmp ne i32 %211, %212
  br i1 %cmp366, label %if.then.370, label %lor.lhs.false.367

lor.lhs.false.367:                                ; preds = %lor.lhs.false.364
  %dp368 = getelementptr inbounds %struct.cmd_segment_writer_s, %struct.cmd_segment_writer_s* %writer, i32 0, i32 3
  %213 = load i8*, i8** %dp368, align 8, !tbaa !160
  %cmp369 = icmp eq i8* %213, %initial_op
  br i1 %cmp369, label %if.then.370, label %if.end.396

if.then.370:                                      ; preds = %lor.lhs.false.367, %lor.lhs.false.364, %land.lhs.true.361
  %214 = bitcast [2 x i32]* %diff to i8*
  call void @llvm.lifetime.start(i64 8, i8* %214) #1
  %x371 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %out, i32 0, i32 0
  %215 = load i32, i32* %x371, align 4, !tbaa !155
  %216 = load i32, i32* %px, align 4, !tbaa !5
  %sub372 = sub nsw i32 %215, %216
  %arrayidx373 = getelementptr inbounds [2 x i32], [2 x i32]* %diff, i32 0, i64 0
  store i32 %sub372, i32* %arrayidx373, align 4, !tbaa !5
  %y374 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %out, i32 0, i32 1
  %217 = load i32, i32* %y374, align 4, !tbaa !154
  %218 = load i32, i32* %py, align 4, !tbaa !5
  %sub375 = sub nsw i32 %217, %218
  %arrayidx376 = getelementptr inbounds [2 x i32], [2 x i32]* %diff, i32 0, i64 1
  store i32 %sub375, i32* %arrayidx376, align 4, !tbaa !5
  %219 = load i32, i32* %open, align 4, !tbaa !5
  %cmp377 = icmp slt i32 %219, 0
  br i1 %cmp377, label %if.then.378, label %if.else.381

if.then.378:                                      ; preds = %if.then.370
  %220 = bitcast %struct.gs_fixed_point_s* %first to i8*
  %221 = bitcast %struct.gs_fixed_point_s* %out to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %220, i8* %221, i64 8, i32 4, i1 false), !tbaa.struct !161
  %arraydecay379 = getelementptr inbounds [2 x i32], [2 x i32]* %diff, i32 0, i32 0
  %call380 = call i32 @cmd_put_segment(%struct.cmd_segment_writer_s* %writer, i8 zeroext -32, i32* %arraydecay379, i32 0) #5
  store i32 %call380, i32* %code, align 4, !tbaa !5
  br label %if.end.384

if.else.381:                                      ; preds = %if.then.370
  %arraydecay382 = getelementptr inbounds [2 x i32], [2 x i32]* %diff, i32 0, i32 0
  %222 = load i32, i32* %out_notes, align 4, !tbaa !7
  %call383 = call i32 @cmd_put_segment(%struct.cmd_segment_writer_s* %writer, i8 zeroext -31, i32* %arraydecay382, i32 %222) #5
  store i32 %call383, i32* %code, align 4, !tbaa !5
  br label %if.end.384

if.end.384:                                       ; preds = %if.else.381, %if.then.378
  %223 = load i32, i32* %code, align 4, !tbaa !5
  %cmp385 = icmp slt i32 %223, 0
  br i1 %cmp385, label %if.then.386, label %if.end.387

if.then.386:                                      ; preds = %if.end.384
  %224 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %224, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.393

if.end.387:                                       ; preds = %if.end.384
  %x388 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %out, i32 0, i32 0
  %225 = load i32, i32* %x388, align 4, !tbaa !155
  store i32 %225, i32* %px, align 4, !tbaa !5
  %y389 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %out, i32 0, i32 1
  %226 = load i32, i32* %y389, align 4, !tbaa !154
  store i32 %226, i32* %py, align 4, !tbaa !5
  br label %do.body.390

do.body.390:                                      ; preds = %if.end.387
  br label %do.cond.391

do.cond.391:                                      ; preds = %do.body.390
  br label %do.end.392

do.end.392:                                       ; preds = %do.cond.391
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.393

cleanup.393:                                      ; preds = %do.end.392, %if.then.386
  %227 = bitcast [2 x i32]* %diff to i8*
  call void @llvm.lifetime.end(i64 8, i8* %227) #1
  %cleanup.dest.394 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.394, label %cleanup.404 [
    i32 0, label %cleanup.cont.395
  ]

cleanup.cont.395:                                 ; preds = %cleanup.393
  br label %if.end.396

if.end.396:                                       ; preds = %cleanup.cont.395, %lor.lhs.false.367, %if.end.359
  %228 = load i32, i32* %out_side, align 4, !tbaa !5
  store i32 %228, i32* %side, align 4, !tbaa !5
  %cmp397 = icmp ne i32 %228, 0
  br i1 %cmp397, label %if.then.398, label %if.end.403

if.then.398:                                      ; preds = %if.end.396
  %arrayidx399 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 4
  %229 = load i32, i32* %arrayidx399, align 4, !tbaa !5
  %x400 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %out, i32 0, i32 0
  store i32 %229, i32* %x400, align 4, !tbaa !155
  %arrayidx401 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 5
  %230 = load i32, i32* %arrayidx401, align 4, !tbaa !5
  %y402 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %out, i32 0, i32 1
  store i32 %230, i32* %y402, align 4, !tbaa !154
  br label %if.end.403

if.end.403:                                       ; preds = %if.then.398, %if.end.396
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.404

cleanup.404:                                      ; preds = %if.end.403, %cleanup.393, %do.end.347
  %231 = bitcast i32* %out_side to i8*
  call void @llvm.lifetime.end(i64 4, i8* %231) #1
  %232 = bitcast i32* %all_side to i8*
  call void @llvm.lifetime.end(i64 4, i8* %232) #1
  %233 = bitcast i32* %bqy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %233) #1
  %234 = bitcast i32* %bpy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %234) #1
  %cleanup.dest.408 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.408, label %cleanup.646 [
    i32 0, label %cleanup.cont.409
  ]

cleanup.cont.409:                                 ; preds = %cleanup.404
  %235 = bitcast i32* %nx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %235) #1
  %arrayidx410 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 4
  %236 = load i32, i32* %arrayidx410, align 4, !tbaa !5
  store i32 %236, i32* %nx, align 4, !tbaa !5
  %237 = bitcast i32* %ny to i8*
  call void @llvm.lifetime.start(i64 4, i8* %237) #1
  %arrayidx411 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 5
  %238 = load i32, i32* %arrayidx411, align 4, !tbaa !5
  store i32 %238, i32* %ny, align 4, !tbaa !5
  %239 = bitcast i32** %optr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %239) #1
  %arraydecay412 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i32 0
  store i32* %arraydecay412, i32** %optr, align 8, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %op) #1
  br label %do.body.413

do.body.413:                                      ; preds = %cleanup.cont.409
  br label %do.cond.414

do.cond.414:                                      ; preds = %do.body.413
  br label %do.end.415

do.end.415:                                       ; preds = %do.cond.414
  %arrayidx416 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 2
  %240 = load i32, i32* %arrayidx416, align 4, !tbaa !5
  %arrayidx417 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 4
  %241 = load i32, i32* %arrayidx417, align 4, !tbaa !5
  %sub418 = sub nsw i32 %241, %240
  store i32 %sub418, i32* %arrayidx417, align 4, !tbaa !5
  %arrayidx419 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 3
  %242 = load i32, i32* %arrayidx419, align 4, !tbaa !5
  %arrayidx420 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 5
  %243 = load i32, i32* %arrayidx420, align 4, !tbaa !5
  %sub421 = sub nsw i32 %243, %242
  store i32 %sub421, i32* %arrayidx420, align 4, !tbaa !5
  %arrayidx422 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 0
  %244 = load i32, i32* %arrayidx422, align 4, !tbaa !5
  %arrayidx423 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 2
  %245 = load i32, i32* %arrayidx423, align 4, !tbaa !5
  %sub424 = sub nsw i32 %245, %244
  store i32 %sub424, i32* %arrayidx423, align 4, !tbaa !5
  %arrayidx425 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 1
  %246 = load i32, i32* %arrayidx425, align 4, !tbaa !5
  %arrayidx426 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 3
  %247 = load i32, i32* %arrayidx426, align 4, !tbaa !5
  %sub427 = sub nsw i32 %247, %246
  store i32 %sub427, i32* %arrayidx426, align 4, !tbaa !5
  %248 = load i32, i32* %px, align 4, !tbaa !5
  %arrayidx428 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 0
  %249 = load i32, i32* %arrayidx428, align 4, !tbaa !5
  %sub429 = sub nsw i32 %249, %248
  store i32 %sub429, i32* %arrayidx428, align 4, !tbaa !5
  %250 = load i32, i32* %py, align 4, !tbaa !5
  %arrayidx430 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 1
  %251 = load i32, i32* %arrayidx430, align 4, !tbaa !5
  %sub431 = sub nsw i32 %251, %250
  store i32 %sub431, i32* %arrayidx430, align 4, !tbaa !5
  %dp432 = getelementptr inbounds %struct.cmd_segment_writer_s, %struct.cmd_segment_writer_s* %writer, i32 0, i32 3
  %252 = load i8*, i8** %dp432, align 8, !tbaa !160
  %253 = load i8, i8* %252, align 1, !tbaa !7
  %conv = zext i8 %253 to i32
  %cmp433 = icmp sge i32 %conv, 231
  br i1 %cmp433, label %land.lhs.true.435, label %if.else.529

land.lhs.true.435:                                ; preds = %do.end.415
  %dp436 = getelementptr inbounds %struct.cmd_segment_writer_s, %struct.cmd_segment_writer_s* %writer, i32 0, i32 3
  %254 = load i8*, i8** %dp436, align 8, !tbaa !160
  %255 = load i8, i8* %254, align 1, !tbaa !7
  %conv437 = zext i8 %255 to i32
  %cmp438 = icmp sle i32 %conv437, 238
  br i1 %cmp438, label %land.lhs.true.440, label %if.else.529

land.lhs.true.440:                                ; preds = %land.lhs.true.435
  %vs441 = getelementptr inbounds %struct.anon, %struct.anon* %prev, i32 0, i32 0
  %arrayidx442 = getelementptr inbounds [6 x i32], [6 x i32]* %vs441, i32 0, i64 0
  %256 = load i32, i32* %arrayidx442, align 4, !tbaa !5
  %cmp443 = icmp eq i32 %256, 0
  br i1 %cmp443, label %land.lhs.true.445, label %lor.lhs.false.484

land.lhs.true.445:                                ; preds = %land.lhs.true.440
  %arrayidx446 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 0
  %257 = load i32, i32* %arrayidx446, align 4, !tbaa !5
  %vs447 = getelementptr inbounds %struct.anon, %struct.anon* %prev, i32 0, i32 0
  %arrayidx448 = getelementptr inbounds [6 x i32], [6 x i32]* %vs447, i32 0, i64 4
  %258 = load i32, i32* %arrayidx448, align 4, !tbaa !5
  %cmp449 = icmp eq i32 %257, %258
  br i1 %cmp449, label %land.lhs.true.451, label %lor.lhs.false.484

land.lhs.true.451:                                ; preds = %land.lhs.true.445
  %arrayidx452 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 2
  %259 = load i32, i32* %arrayidx452, align 4, !tbaa !5
  %vs453 = getelementptr inbounds %struct.anon, %struct.anon* %prev, i32 0, i32 0
  %arrayidx454 = getelementptr inbounds [6 x i32], [6 x i32]* %vs453, i32 0, i64 2
  %260 = load i32, i32* %arrayidx454, align 4, !tbaa !5
  %cmp455 = icmp eq i32 %259, %260
  br i1 %cmp455, label %land.lhs.true.457, label %lor.lhs.false.484

land.lhs.true.457:                                ; preds = %land.lhs.true.451
  %arrayidx458 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 4
  %261 = load i32, i32* %arrayidx458, align 4, !tbaa !5
  %vs459 = getelementptr inbounds %struct.anon, %struct.anon* %prev, i32 0, i32 0
  %arrayidx460 = getelementptr inbounds [6 x i32], [6 x i32]* %vs459, i32 0, i64 0
  %262 = load i32, i32* %arrayidx460, align 4, !tbaa !5
  %cmp461 = icmp eq i32 %261, %262
  br i1 %cmp461, label %land.lhs.true.463, label %lor.lhs.false.484

land.lhs.true.463:                                ; preds = %land.lhs.true.457
  %arrayidx464 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 1
  %263 = load i32, i32* %arrayidx464, align 4, !tbaa !5
  %vs465 = getelementptr inbounds %struct.anon, %struct.anon* %prev, i32 0, i32 0
  %arrayidx466 = getelementptr inbounds [6 x i32], [6 x i32]* %vs465, i32 0, i64 5
  %264 = load i32, i32* %arrayidx466, align 4, !tbaa !5
  %sub467 = sub nsw i32 0, %264
  %cmp468 = icmp eq i32 %263, %sub467
  br i1 %cmp468, label %land.lhs.true.470, label %lor.lhs.false.484

land.lhs.true.470:                                ; preds = %land.lhs.true.463
  %arrayidx471 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 3
  %265 = load i32, i32* %arrayidx471, align 4, !tbaa !5
  %vs472 = getelementptr inbounds %struct.anon, %struct.anon* %prev, i32 0, i32 0
  %arrayidx473 = getelementptr inbounds [6 x i32], [6 x i32]* %vs472, i32 0, i64 3
  %266 = load i32, i32* %arrayidx473, align 4, !tbaa !5
  %sub474 = sub nsw i32 0, %266
  %cmp475 = icmp eq i32 %265, %sub474
  br i1 %cmp475, label %land.lhs.true.477, label %lor.lhs.false.484

land.lhs.true.477:                                ; preds = %land.lhs.true.470
  %arrayidx478 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 5
  %267 = load i32, i32* %arrayidx478, align 4, !tbaa !5
  %vs479 = getelementptr inbounds %struct.anon, %struct.anon* %prev, i32 0, i32 0
  %arrayidx480 = getelementptr inbounds [6 x i32], [6 x i32]* %vs479, i32 0, i64 1
  %268 = load i32, i32* %arrayidx480, align 4, !tbaa !5
  %sub481 = sub nsw i32 0, %268
  %cmp482 = icmp eq i32 %267, %sub481
  br i1 %cmp482, label %if.then.528, label %lor.lhs.false.484

lor.lhs.false.484:                                ; preds = %land.lhs.true.477, %land.lhs.true.470, %land.lhs.true.463, %land.lhs.true.457, %land.lhs.true.451, %land.lhs.true.445, %land.lhs.true.440
  %vs485 = getelementptr inbounds %struct.anon, %struct.anon* %prev, i32 0, i32 0
  %arrayidx486 = getelementptr inbounds [6 x i32], [6 x i32]* %vs485, i32 0, i64 0
  %269 = load i32, i32* %arrayidx486, align 4, !tbaa !5
  %cmp487 = icmp ne i32 %269, 0
  br i1 %cmp487, label %land.lhs.true.489, label %if.else.529

land.lhs.true.489:                                ; preds = %lor.lhs.false.484
  %arrayidx490 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 0
  %270 = load i32, i32* %arrayidx490, align 4, !tbaa !5
  %vs491 = getelementptr inbounds %struct.anon, %struct.anon* %prev, i32 0, i32 0
  %arrayidx492 = getelementptr inbounds [6 x i32], [6 x i32]* %vs491, i32 0, i64 4
  %271 = load i32, i32* %arrayidx492, align 4, !tbaa !5
  %sub493 = sub nsw i32 0, %271
  %cmp494 = icmp eq i32 %270, %sub493
  br i1 %cmp494, label %land.lhs.true.496, label %if.else.529

land.lhs.true.496:                                ; preds = %land.lhs.true.489
  %arrayidx497 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 2
  %272 = load i32, i32* %arrayidx497, align 4, !tbaa !5
  %vs498 = getelementptr inbounds %struct.anon, %struct.anon* %prev, i32 0, i32 0
  %arrayidx499 = getelementptr inbounds [6 x i32], [6 x i32]* %vs498, i32 0, i64 2
  %273 = load i32, i32* %arrayidx499, align 4, !tbaa !5
  %sub500 = sub nsw i32 0, %273
  %cmp501 = icmp eq i32 %272, %sub500
  br i1 %cmp501, label %land.lhs.true.503, label %if.else.529

land.lhs.true.503:                                ; preds = %land.lhs.true.496
  %arrayidx504 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 4
  %274 = load i32, i32* %arrayidx504, align 4, !tbaa !5
  %vs505 = getelementptr inbounds %struct.anon, %struct.anon* %prev, i32 0, i32 0
  %arrayidx506 = getelementptr inbounds [6 x i32], [6 x i32]* %vs505, i32 0, i64 0
  %275 = load i32, i32* %arrayidx506, align 4, !tbaa !5
  %sub507 = sub nsw i32 0, %275
  %cmp508 = icmp eq i32 %274, %sub507
  br i1 %cmp508, label %land.lhs.true.510, label %if.else.529

land.lhs.true.510:                                ; preds = %land.lhs.true.503
  %arrayidx511 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 1
  %276 = load i32, i32* %arrayidx511, align 4, !tbaa !5
  %vs512 = getelementptr inbounds %struct.anon, %struct.anon* %prev, i32 0, i32 0
  %arrayidx513 = getelementptr inbounds [6 x i32], [6 x i32]* %vs512, i32 0, i64 5
  %277 = load i32, i32* %arrayidx513, align 4, !tbaa !5
  %cmp514 = icmp eq i32 %276, %277
  br i1 %cmp514, label %land.lhs.true.516, label %if.else.529

land.lhs.true.516:                                ; preds = %land.lhs.true.510
  %arrayidx517 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 3
  %278 = load i32, i32* %arrayidx517, align 4, !tbaa !5
  %vs518 = getelementptr inbounds %struct.anon, %struct.anon* %prev, i32 0, i32 0
  %arrayidx519 = getelementptr inbounds [6 x i32], [6 x i32]* %vs518, i32 0, i64 3
  %279 = load i32, i32* %arrayidx519, align 4, !tbaa !5
  %cmp520 = icmp eq i32 %278, %279
  br i1 %cmp520, label %land.lhs.true.522, label %if.else.529

land.lhs.true.522:                                ; preds = %land.lhs.true.516
  %arrayidx523 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 5
  %280 = load i32, i32* %arrayidx523, align 4, !tbaa !5
  %vs524 = getelementptr inbounds %struct.anon, %struct.anon* %prev, i32 0, i32 0
  %arrayidx525 = getelementptr inbounds [6 x i32], [6 x i32]* %vs524, i32 0, i64 1
  %281 = load i32, i32* %arrayidx525, align 4, !tbaa !5
  %cmp526 = icmp eq i32 %280, %281
  br i1 %cmp526, label %if.then.528, label %if.else.529

if.then.528:                                      ; preds = %land.lhs.true.522, %land.lhs.true.477
  store i8 -18, i8* %op, align 1, !tbaa !7
  br label %if.end.640

if.else.529:                                      ; preds = %land.lhs.true.522, %land.lhs.true.516, %land.lhs.true.510, %land.lhs.true.503, %land.lhs.true.496, %land.lhs.true.489, %lor.lhs.false.484, %land.lhs.true.435, %do.end.415
  %arrayidx530 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 1
  %282 = load i32, i32* %arrayidx530, align 4, !tbaa !5
  %cmp531 = icmp eq i32 %282, 0
  br i1 %cmp531, label %land.lhs.true.533, label %if.else.575

land.lhs.true.533:                                ; preds = %if.else.529
  %arrayidx534 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 4
  %283 = load i32, i32* %arrayidx534, align 4, !tbaa !5
  %cmp535 = icmp eq i32 %283, 0
  br i1 %cmp535, label %if.then.537, label %if.else.575

if.then.537:                                      ; preds = %land.lhs.true.533
  %arrayidx538 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 0
  %284 = load i32, i32* %arrayidx538, align 4, !tbaa !5
  %arrayidx539 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 1
  store i32 %284, i32* %arrayidx539, align 4, !tbaa !5
  %arrayidx540 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 5
  %285 = load i32, i32* %arrayidx540, align 4, !tbaa !5
  %arrayidx541 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 4
  store i32 %285, i32* %arrayidx541, align 4, !tbaa !5
  %286 = load i32*, i32** %optr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i32, i32* %286, i32 1
  store i32* %incdec.ptr, i32** %optr, align 8, !tbaa !1
  store i8 -24, i8* %op, align 1, !tbaa !7
  %arrayidx542 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 1
  %287 = load i32, i32* %arrayidx542, align 4, !tbaa !5
  %arrayidx543 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 3
  %288 = load i32, i32* %arrayidx543, align 4, !tbaa !5
  %xor = xor i32 %287, %288
  %cmp544 = icmp sge i32 %xor, 0
  br i1 %cmp544, label %if.then.546, label %if.else.558

if.then.546:                                      ; preds = %if.then.537
  %arrayidx547 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 2
  %289 = load i32, i32* %arrayidx547, align 4, !tbaa !5
  %arrayidx548 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 3
  %290 = load i32, i32* %arrayidx548, align 4, !tbaa !5
  %cmp549 = icmp eq i32 %289, %290
  br i1 %cmp549, label %land.lhs.true.551, label %if.end.557

land.lhs.true.551:                                ; preds = %if.then.546
  %arrayidx552 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 4
  %291 = load i32, i32* %arrayidx552, align 4, !tbaa !5
  %arrayidx553 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 1
  %292 = load i32, i32* %arrayidx553, align 4, !tbaa !5
  %cmp554 = icmp eq i32 %291, %292
  br i1 %cmp554, label %if.then.556, label %if.end.557

if.then.556:                                      ; preds = %land.lhs.true.551
  store i8 -19, i8* %op, align 1, !tbaa !7
  br label %if.end.557

if.end.557:                                       ; preds = %if.then.556, %land.lhs.true.551, %if.then.546
  br label %if.end.574

if.else.558:                                      ; preds = %if.then.537
  %arrayidx559 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 2
  %293 = load i32, i32* %arrayidx559, align 4, !tbaa !5
  %arrayidx560 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 3
  %294 = load i32, i32* %arrayidx560, align 4, !tbaa !5
  %sub561 = sub nsw i32 0, %294
  %cmp562 = icmp eq i32 %293, %sub561
  br i1 %cmp562, label %land.lhs.true.564, label %if.end.573

land.lhs.true.564:                                ; preds = %if.else.558
  %arrayidx565 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 4
  %295 = load i32, i32* %arrayidx565, align 4, !tbaa !5
  %arrayidx566 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 1
  %296 = load i32, i32* %arrayidx566, align 4, !tbaa !5
  %sub567 = sub nsw i32 0, %296
  %cmp568 = icmp eq i32 %295, %sub567
  br i1 %cmp568, label %if.then.570, label %if.end.573

if.then.570:                                      ; preds = %land.lhs.true.564
  %arrayidx571 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 3
  %297 = load i32, i32* %arrayidx571, align 4, !tbaa !5
  %arrayidx572 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 2
  store i32 %297, i32* %arrayidx572, align 4, !tbaa !5
  store i8 -19, i8* %op, align 1, !tbaa !7
  br label %if.end.573

if.end.573:                                       ; preds = %if.then.570, %land.lhs.true.564, %if.else.558
  br label %if.end.574

if.end.574:                                       ; preds = %if.end.573, %if.end.557
  br label %if.end.639

if.else.575:                                      ; preds = %land.lhs.true.533, %if.else.529
  %arrayidx576 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 0
  %298 = load i32, i32* %arrayidx576, align 4, !tbaa !5
  %cmp577 = icmp eq i32 %298, 0
  br i1 %cmp577, label %land.lhs.true.579, label %if.else.617

land.lhs.true.579:                                ; preds = %if.else.575
  %arrayidx580 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 5
  %299 = load i32, i32* %arrayidx580, align 4, !tbaa !5
  %cmp581 = icmp eq i32 %299, 0
  br i1 %cmp581, label %if.then.583, label %if.else.617

if.then.583:                                      ; preds = %land.lhs.true.579
  %300 = load i32*, i32** %optr, align 8, !tbaa !1
  %incdec.ptr584 = getelementptr inbounds i32, i32* %300, i32 1
  store i32* %incdec.ptr584, i32** %optr, align 8, !tbaa !1
  store i8 -23, i8* %op, align 1, !tbaa !7
  %arrayidx585 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 1
  %301 = load i32, i32* %arrayidx585, align 4, !tbaa !5
  %arrayidx586 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 2
  %302 = load i32, i32* %arrayidx586, align 4, !tbaa !5
  %xor587 = xor i32 %301, %302
  %cmp588 = icmp sge i32 %xor587, 0
  br i1 %cmp588, label %if.then.590, label %if.else.602

if.then.590:                                      ; preds = %if.then.583
  %arrayidx591 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 3
  %303 = load i32, i32* %arrayidx591, align 4, !tbaa !5
  %arrayidx592 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 2
  %304 = load i32, i32* %arrayidx592, align 4, !tbaa !5
  %cmp593 = icmp eq i32 %303, %304
  br i1 %cmp593, label %land.lhs.true.595, label %if.end.601

land.lhs.true.595:                                ; preds = %if.then.590
  %arrayidx596 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 4
  %305 = load i32, i32* %arrayidx596, align 4, !tbaa !5
  %arrayidx597 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 1
  %306 = load i32, i32* %arrayidx597, align 4, !tbaa !5
  %cmp598 = icmp eq i32 %305, %306
  br i1 %cmp598, label %if.then.600, label %if.end.601

if.then.600:                                      ; preds = %land.lhs.true.595
  store i8 -20, i8* %op, align 1, !tbaa !7
  br label %if.end.601

if.end.601:                                       ; preds = %if.then.600, %land.lhs.true.595, %if.then.590
  br label %if.end.616

if.else.602:                                      ; preds = %if.then.583
  %arrayidx603 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 3
  %307 = load i32, i32* %arrayidx603, align 4, !tbaa !5
  %arrayidx604 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 2
  %308 = load i32, i32* %arrayidx604, align 4, !tbaa !5
  %sub605 = sub nsw i32 0, %308
  %cmp606 = icmp eq i32 %307, %sub605
  br i1 %cmp606, label %land.lhs.true.608, label %if.end.615

land.lhs.true.608:                                ; preds = %if.else.602
  %arrayidx609 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 4
  %309 = load i32, i32* %arrayidx609, align 4, !tbaa !5
  %arrayidx610 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 1
  %310 = load i32, i32* %arrayidx610, align 4, !tbaa !5
  %sub611 = sub nsw i32 0, %310
  %cmp612 = icmp eq i32 %309, %sub611
  br i1 %cmp612, label %if.then.614, label %if.end.615

if.then.614:                                      ; preds = %land.lhs.true.608
  store i8 -20, i8* %op, align 1, !tbaa !7
  br label %if.end.615

if.end.615:                                       ; preds = %if.then.614, %land.lhs.true.608, %if.else.602
  br label %if.end.616

if.end.616:                                       ; preds = %if.end.615, %if.end.601
  br label %if.end.638

if.else.617:                                      ; preds = %land.lhs.true.579, %if.else.575
  %arrayidx618 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 0
  %311 = load i32, i32* %arrayidx618, align 4, !tbaa !5
  %cmp619 = icmp eq i32 %311, 0
  br i1 %cmp619, label %land.lhs.true.621, label %if.else.626

land.lhs.true.621:                                ; preds = %if.else.617
  %arrayidx622 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 1
  %312 = load i32, i32* %arrayidx622, align 4, !tbaa !5
  %cmp623 = icmp eq i32 %312, 0
  br i1 %cmp623, label %if.then.625, label %if.else.626

if.then.625:                                      ; preds = %land.lhs.true.621
  %313 = load i32*, i32** %optr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i32, i32* %313, i64 2
  store i32* %add.ptr, i32** %optr, align 8, !tbaa !1
  store i8 -22, i8* %op, align 1, !tbaa !7
  br label %if.end.637

if.else.626:                                      ; preds = %land.lhs.true.621, %if.else.617
  %arrayidx627 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 4
  %314 = load i32, i32* %arrayidx627, align 4, !tbaa !5
  %cmp628 = icmp eq i32 %314, 0
  br i1 %cmp628, label %land.lhs.true.630, label %if.else.635

land.lhs.true.630:                                ; preds = %if.else.626
  %arrayidx631 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i64 5
  %315 = load i32, i32* %arrayidx631, align 4, !tbaa !5
  %cmp632 = icmp eq i32 %315, 0
  br i1 %cmp632, label %if.then.634, label %if.else.635

if.then.634:                                      ; preds = %land.lhs.true.630
  store i8 -21, i8* %op, align 1, !tbaa !7
  br label %if.end.636

if.else.635:                                      ; preds = %land.lhs.true.630, %if.else.626
  store i8 -25, i8* %op, align 1, !tbaa !7
  br label %if.end.636

if.end.636:                                       ; preds = %if.else.635, %if.then.634
  br label %if.end.637

if.end.637:                                       ; preds = %if.end.636, %if.then.625
  br label %if.end.638

if.end.638:                                       ; preds = %if.end.637, %if.end.616
  br label %if.end.639

if.end.639:                                       ; preds = %if.end.638, %if.end.574
  br label %if.end.640

if.end.640:                                       ; preds = %if.end.639, %if.then.528
  %vs641 = getelementptr inbounds %struct.anon, %struct.anon* %prev, i32 0, i32 0
  %arraydecay642 = getelementptr inbounds [6 x i32], [6 x i32]* %vs641, i32 0, i32 0
  %316 = bitcast i32* %arraydecay642 to i8*
  %arraydecay643 = getelementptr inbounds [6 x i32], [6 x i32]* %vs, i32 0, i32 0
  %317 = bitcast i32* %arraydecay643 to i8*
  %call644 = call i8* @memcpy(i8* %316, i8* %317, i64 24) #6
  %318 = load i32, i32* %nx, align 4, !tbaa !5
  store i32 %318, i32* %px, align 4, !tbaa !5
  %319 = load i32, i32* %ny, align 4, !tbaa !5
  store i32 %319, i32* %py, align 4, !tbaa !5
  store i32 1, i32* %open, align 4, !tbaa !5
  %320 = load i8, i8* %op, align 1, !tbaa !7
  %321 = load i32*, i32** %optr, align 8, !tbaa !1
  %322 = load i32, i32* %notes303, align 4, !tbaa !7
  %call645 = call i32 @cmd_put_segment(%struct.cmd_segment_writer_s* %writer, i8 zeroext %320, i32* %321, i32 %322) #5
  store i32 %call645, i32* %code, align 4, !tbaa !5
  call void @llvm.lifetime.end(i64 1, i8* %op) #1
  %323 = bitcast i32** %optr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %323) #1
  %324 = bitcast i32* %ny to i8*
  call void @llvm.lifetime.end(i64 4, i8* %324) #1
  %325 = bitcast i32* %nx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %325) #1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.646

cleanup.646:                                      ; preds = %if.end.640, %cleanup.404
  %326 = bitcast i32* %notes303 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %326) #1
  %cleanup.dest.647 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.647, label %cleanup.653 [
    i32 0, label %cleanup.cont.648
  ]

cleanup.cont.648:                                 ; preds = %cleanup.646
  br label %sw.epilog

sw.default:                                       ; preds = %for.cond
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.653

sw.epilog:                                        ; preds = %cleanup.cont.648, %do.end.301, %do.end.232, %do.end.145, %do.end.65
  %327 = load i32, i32* %code, align 4, !tbaa !5
  %cmp649 = icmp slt i32 %327, 0
  br i1 %cmp649, label %if.then.651, label %if.end.652

if.then.651:                                      ; preds = %sw.epilog
  %328 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %328, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.653

if.end.652:                                       ; preds = %sw.epilog
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.653

cleanup.653:                                      ; preds = %if.end.652, %if.then.651, %sw.default, %cleanup.646, %if.then.292, %if.then.277, %if.then.256, %cleanup.226, %cleanup, %do.end.50, %cond.end
  %329 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %329) #1
  %330 = bitcast i8** %dp12 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %330) #1
  %331 = bitcast i32* %pe_op to i8*
  call void @llvm.lifetime.end(i64 4, i8* %331) #1
  %332 = bitcast [6 x i32]* %vs to i8*
  call void @llvm.lifetime.end(i64 24, i8* %332) #1
  %cleanup.dest.657 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.657, label %cleanup.659 [
    i32 0, label %cleanup.cont.658
    i32 5, label %for.cond
  ]

cleanup.cont.658:                                 ; preds = %cleanup.653
  br label %for.cond

cleanup.659:                                      ; preds = %cleanup.653
  %333 = bitcast %struct.anon* %prev to i8*
  call void @llvm.lifetime.end(i64 24, i8* %333) #1
  %334 = bitcast i32* %open to i8*
  call void @llvm.lifetime.end(i64 4, i8* %334) #1
  %335 = bitcast %struct.gs_fixed_point_s* %first to i8*
  call void @llvm.lifetime.end(i64 8, i8* %335) #1
  %336 = bitcast i32* %py to i8*
  call void @llvm.lifetime.end(i64 4, i8* %336) #1
  %337 = bitcast i32* %px to i8*
  call void @llvm.lifetime.end(i64 4, i8* %337) #1
  %338 = bitcast i32* %out_notes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %338) #1
  %339 = bitcast %struct.gs_fixed_point_s* %out to i8*
  call void @llvm.lifetime.end(i64 8, i8* %339) #1
  %340 = bitcast i32* %side to i8*
  call void @llvm.lifetime.end(i64 4, i8* %340) #1
  %341 = bitcast i32* %start_skip to i8*
  call void @llvm.lifetime.end(i64 4, i8* %341) #1
  %342 = bitcast i32* %start_side to i8*
  call void @llvm.lifetime.end(i64 4, i8* %342) #1
  %343 = bitcast %struct.gs_fixed_point_s* %start to i8*
  call void @llvm.lifetime.end(i64 8, i8* %343) #1
  call void @llvm.lifetime.end(i64 1, i8* %initial_op) #1
  %344 = bitcast %struct.cmd_segment_writer_s* %writer to i8*
  call void @llvm.lifetime.end(i64 80, i8* %344) #1
  %345 = bitcast %struct.gs_path_enum_s* %cenum to i8*
  call void @llvm.lifetime.end(i64 64, i8* %345) #1
  %346 = load i32, i32* %retval
  ret i32 %346
}

declare %struct.gx_clip_list_s* @gx_cpath_list(%struct.gx_clip_path_s*) #2

declare i32 @gx_cpath_outer_box(%struct.gx_clip_path_s*, %struct.gs_fixed_rect_s*) #2

declare i32 @gs_color_space_num_components(%struct.gs_color_space_s*) #2

; Function Attrs: nounwind uwtable
define i32 @clist_fill_path(%struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis, %struct.gx_path_s* %ppath, %struct.gx_fill_params_s* %params, %struct.gx_device_color_s* %pdcolor, %struct.gx_clip_path_s* %pcpath) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %params.addr = alloca %struct.gx_fill_params_s*, align 8
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %cdev = alloca %struct.gx_device_clist_writer_s*, align 8
  %unknown = alloca i32, align 4
  %ry = alloca i32, align 4
  %rheight = alloca i32, align 4
  %rx = alloca i32, align 4
  %rwidth = alloca i32, align 4
  %y0 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %lop = alloca i32, align 4
  %op = alloca i8, align 1
  %adjust = alloca %struct.gs_fixed_point_s, align 4
  %slow_rop = alloca i32, align 4
  %re = alloca %struct.cmd_rects_enum_s, align 8
  %code = alloca i32, align 4
  %bbox = alloca %struct.gs_fixed_rect_s, align 4
  %cleanup.dest.slot = alloca i32
  %bbox192 = alloca %struct.gs_int_rect_s, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store %struct.gx_fill_params_s* %params, %struct.gx_fill_params_s** %params.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_clist_writer_s** %cdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %union.gx_device_clist_s*
  %writer = bitcast %union.gx_device_clist_s* %2 to %struct.gx_device_clist_writer_s*
  store %struct.gx_device_clist_writer_s* %writer, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %3 = bitcast i32* %unknown to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %unknown, align 4, !tbaa !5
  %4 = bitcast i32* %ry to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %rheight to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %rx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %rwidth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %y0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %y1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %lop to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %log_op = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %11, i32 0, i32 10
  %12 = load i32, i32* %log_op, align 4, !tbaa !162
  store i32 %12, i32* %lop, align 4, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %op) #1
  %13 = load %struct.gx_fill_params_s*, %struct.gx_fill_params_s** %params.addr, align 8, !tbaa !1
  %rule = getelementptr inbounds %struct.gx_fill_params_s, %struct.gx_fill_params_s* %13, i32 0, i32 0
  %14 = load i32, i32* %rule, align 4, !tbaa !163
  %cmp = icmp eq i32 %14, 1
  %cond = select i1 %cmp, i32 243, i32 240
  %conv = trunc i32 %cond to i8
  store i8 %conv, i8* %op, align 1, !tbaa !7
  %15 = bitcast %struct.gs_fixed_point_s* %adjust to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = bitcast i32* %slow_rop to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %18 = load i32, i32* %lop, align 4, !tbaa !5
  %and = and i32 %18, 51
  %shl = shl i32 %and, 2
  %19 = load i32, i32* %lop, align 4, !tbaa !5
  %and1 = and i32 %19, -205
  %or = or i32 %shl, %and1
  %and2 = and i32 %or, -257
  %20 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %call = call i32 @cmd_slow_rop(%struct.gx_device_s* %17, i32 %and2, %struct.gx_device_color_s* %20) #5
  store i32 %call, i32* %slow_rop, align 4, !tbaa !5
  %21 = bitcast %struct.cmd_rects_enum_s* %re to i8*
  call void @llvm.lifetime.start(i64 40, i8* %21) #1
  %22 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  %23 = load %struct.gx_fill_params_s*, %struct.gx_fill_params_s** %params.addr, align 8, !tbaa !1
  %adjust3 = getelementptr inbounds %struct.gx_fill_params_s, %struct.gx_fill_params_s* %23, i32 0, i32 1
  %24 = bitcast %struct.gs_fixed_point_s* %adjust to i8*
  %25 = bitcast %struct.gs_fixed_point_s* %adjust3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* %25, i64 8, i32 4, i1 false), !tbaa.struct !161
  %26 = bitcast %struct.gs_fixed_rect_s* %bbox to i8*
  call void @llvm.lifetime.start(i64 16, i8* %26) #1
  %27 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %cmp4 = icmp ne %struct.gx_path_s* %27, null
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %28 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %call6 = call i32 @gx_path_bbox(%struct.gx_path_s* %28, %struct.gs_fixed_rect_s* %bbox) #5
  br label %if.end

if.else:                                          ; preds = %entry
  %29 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call7 = call i32 @gx_cpath_outer_box(%struct.gx_clip_path_s* %29, %struct.gs_fixed_rect_s* %bbox) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 1
  %30 = load i32, i32* %y, align 4, !tbaa !128
  %shr = ashr i32 %30, 8
  %sub = sub nsw i32 %shr, 1
  store i32 %sub, i32* %ry, align 4, !tbaa !5
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 1
  %y8 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 1
  %31 = load i32, i32* %y8, align 4, !tbaa !130
  %add = add nsw i32 %31, 255
  %shr9 = ashr i32 %add, 8
  %32 = load i32, i32* %ry, align 4, !tbaa !5
  %sub10 = sub nsw i32 %shr9, %32
  %add11 = add nsw i32 %sub10, 1
  store i32 %add11, i32* %rheight, align 4, !tbaa !5
  br label %do.body

do.body:                                          ; preds = %if.end
  %33 = load i32, i32* %ry, align 4, !tbaa !5
  %34 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %cropping_min = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %34, i32 0, i32 101
  %35 = load i32, i32* %cropping_min, align 4, !tbaa !165
  %cmp12 = icmp slt i32 %33, %35
  br i1 %cmp12, label %if.then.14, label %if.end.19

if.then.14:                                       ; preds = %do.body
  %36 = load i32, i32* %ry, align 4, !tbaa !5
  %37 = load i32, i32* %rheight, align 4, !tbaa !5
  %add15 = add nsw i32 %36, %37
  %38 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %cropping_min16 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %38, i32 0, i32 101
  %39 = load i32, i32* %cropping_min16, align 4, !tbaa !165
  %sub17 = sub nsw i32 %add15, %39
  store i32 %sub17, i32* %rheight, align 4, !tbaa !5
  %40 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %cropping_min18 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %40, i32 0, i32 101
  %41 = load i32, i32* %cropping_min18, align 4, !tbaa !165
  store i32 %41, i32* %ry, align 4, !tbaa !5
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.14, %do.body
  %42 = load i32, i32* %ry, align 4, !tbaa !5
  %43 = load i32, i32* %rheight, align 4, !tbaa !5
  %add20 = add nsw i32 %42, %43
  %44 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %cropping_max = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %44, i32 0, i32 102
  %45 = load i32, i32* %cropping_max, align 4, !tbaa !166
  %cmp21 = icmp sgt i32 %add20, %45
  br i1 %cmp21, label %if.then.23, label %if.end.26

if.then.23:                                       ; preds = %if.end.19
  %46 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %cropping_max24 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %46, i32 0, i32 102
  %47 = load i32, i32* %cropping_max24, align 4, !tbaa !166
  %48 = load i32, i32* %ry, align 4, !tbaa !5
  %sub25 = sub nsw i32 %47, %48
  store i32 %sub25, i32* %rheight, align 4, !tbaa !5
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.23, %if.end.19
  br label %do.cond

do.cond:                                          ; preds = %if.end.26
  br label %do.end

do.end:                                           ; preds = %do.cond
  %49 = load i32, i32* %rheight, align 4, !tbaa !5
  %cmp27 = icmp sle i32 %49, 0
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %do.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.30:                                        ; preds = %do.end
  %p31 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p31, i32 0, i32 0
  %50 = load i32, i32* %x, align 4, !tbaa !127
  %shr32 = ashr i32 %50, 8
  %sub33 = sub nsw i32 %shr32, 1
  store i32 %sub33, i32* %rx, align 4, !tbaa !5
  %q34 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 1
  %x35 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q34, i32 0, i32 0
  %51 = load i32, i32* %x35, align 4, !tbaa !129
  %add36 = add nsw i32 %51, 255
  %shr37 = ashr i32 %add36, 8
  %52 = load i32, i32* %rx, align 4, !tbaa !5
  %sub38 = sub nsw i32 %shr37, %52
  %add39 = add nsw i32 %sub38, 1
  store i32 %add39, i32* %rwidth, align 4, !tbaa !5
  br label %do.body.40

do.body.40:                                       ; preds = %if.end.30
  %53 = load i32, i32* %rwidth, align 4, !tbaa !5
  %54 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %54, i32 0, i32 13
  %55 = load i32, i32* %width, align 4, !tbaa !81
  %56 = load i32, i32* %rx, align 4, !tbaa !5
  %sub41 = sub nsw i32 %55, %56
  %cmp42 = icmp sgt i32 %53, %sub41
  br i1 %cmp42, label %if.then.44, label %if.end.47

if.then.44:                                       ; preds = %do.body.40
  %57 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %width45 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %57, i32 0, i32 13
  %58 = load i32, i32* %width45, align 4, !tbaa !81
  %59 = load i32, i32* %rx, align 4, !tbaa !5
  %sub46 = sub nsw i32 %58, %59
  store i32 %sub46, i32* %rwidth, align 4, !tbaa !5
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.44, %do.body.40
  br label %do.cond.48

do.cond.48:                                       ; preds = %if.end.47
  br label %do.end.49

do.end.49:                                        ; preds = %do.cond.48
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.49, %if.then.29
  %60 = bitcast %struct.gs_fixed_rect_s* %bbox to i8*
  call void @llvm.lifetime.end(i64 16, i8* %60) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.353 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  %61 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %disable_mask = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %61, i32 0, i32 99
  %62 = load i32, i32* %disable_mask, align 4, !tbaa !131
  %and50 = and i32 %62, 1
  %tobool = icmp ne i32 %and50, 0
  br i1 %tobool, label %if.then.53, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cleanup.cont
  %call51 = call i32 @gs_debug_c(i32 44) #5
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %if.then.53, label %if.end.55

if.then.53:                                       ; preds = %lor.lhs.false, %cleanup.cont
  %63 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %64 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %65 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %66 = load %struct.gx_fill_params_s*, %struct.gx_fill_params_s** %params.addr, align 8, !tbaa !1
  %67 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %68 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call54 = call i32 @gx_default_fill_path(%struct.gx_device_s* %63, %struct.gs_imager_state_s* %64, %struct.gx_path_s* %65, %struct.gx_fill_params_s* %66, %struct.gx_device_color_s* %67, %struct.gx_clip_path_s* %68) #5
  store i32 %call54, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.353

if.end.55:                                        ; preds = %lor.lhs.false
  %69 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %cmp56 = icmp ne %struct.gx_device_color_s* %69, null
  br i1 %cmp56, label %land.lhs.true, label %if.end.71

land.lhs.true:                                    ; preds = %if.end.55
  %70 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %call58 = call i32 @gx_dc_is_pattern2_color(%struct.gx_device_color_s* %70) #5
  %tobool59 = icmp ne i32 %call58, 0
  br i1 %tobool59, label %if.then.60, label %if.end.71

if.then.60:                                       ; preds = %land.lhs.true
  %71 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %cropping_saved = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %71, i32 0, i32 105
  store i32 0, i32* %cropping_saved, align 4, !tbaa !167
  %72 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %73 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %74 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %75 = load %struct.gx_fill_params_s*, %struct.gx_fill_params_s** %params.addr, align 8, !tbaa !1
  %76 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %77 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call61 = call i32 @gx_default_fill_path(%struct.gx_device_s* %72, %struct.gs_imager_state_s* %73, %struct.gx_path_s* %74, %struct.gx_fill_params_s* %75, %struct.gx_device_color_s* %76, %struct.gx_clip_path_s* %77) #5
  store i32 %call61, i32* %code, align 4, !tbaa !5
  %78 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %cropping_saved62 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %78, i32 0, i32 105
  %79 = load i32, i32* %cropping_saved62, align 4, !tbaa !167
  %tobool63 = icmp ne i32 %79, 0
  br i1 %tobool63, label %if.then.64, label %if.end.70

if.then.64:                                       ; preds = %if.then.60
  %80 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %save_cropping_min = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %80, i32 0, i32 103
  %81 = load i32, i32* %save_cropping_min, align 4, !tbaa !168
  %82 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %cropping_min65 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %82, i32 0, i32 101
  store i32 %81, i32* %cropping_min65, align 4, !tbaa !165
  %83 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %save_cropping_max = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %83, i32 0, i32 104
  %84 = load i32, i32* %save_cropping_max, align 4, !tbaa !169
  %85 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %cropping_max66 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %85, i32 0, i32 102
  store i32 %84, i32* %cropping_max66, align 4, !tbaa !166
  br label %do.body.67

do.body.67:                                       ; preds = %if.then.64
  br label %do.cond.68

do.cond.68:                                       ; preds = %do.body.67
  br label %do.end.69

do.end.69:                                        ; preds = %do.cond.68
  br label %if.end.70

if.end.70:                                        ; preds = %do.end.69, %if.then.60
  %86 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %86, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.353

if.end.71:                                        ; preds = %land.lhs.true, %if.end.55
  %87 = load i32, i32* %ry, align 4, !tbaa !5
  store i32 %87, i32* %y0, align 4, !tbaa !5
  %88 = load i32, i32* %ry, align 4, !tbaa !5
  %89 = load i32, i32* %rheight, align 4, !tbaa !5
  %add72 = add nsw i32 %88, %89
  store i32 %add72, i32* %y1, align 4, !tbaa !5
  %90 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %91 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %92 = load %struct.gx_fill_params_s*, %struct.gx_fill_params_s** %params.addr, align 8, !tbaa !1
  %flatness = getelementptr inbounds %struct.gx_fill_params_s, %struct.gx_fill_params_s* %92, i32 0, i32 2
  %93 = load float, float* %flatness, align 4, !tbaa !170
  %conv73 = fpext float %93 to double
  %94 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  call void @cmd_check_fill_known(%struct.gx_device_clist_writer_s* %90, %struct.gs_imager_state_s* %91, double %conv73, %struct.gs_fixed_point_s* %adjust, %struct.gx_clip_path_s* %94, i32* %unknown) #5
  %95 = load i32, i32* %unknown, align 4, !tbaa !5
  %tobool74 = icmp ne i32 %95, 0
  br i1 %tobool74, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %if.end.71
  %96 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %97 = load i32, i32* %unknown, align 4, !tbaa !5
  call void @cmd_clear_known(%struct.gx_device_clist_writer_s* %96, i32 %97) #5
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.75, %if.end.71
  %98 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %permanent_error = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %98, i32 0, i32 95
  %99 = load i32, i32* %permanent_error, align 4, !tbaa !171
  %cmp77 = icmp slt i32 %99, 0
  br i1 %cmp77, label %if.then.79, label %if.end.81

if.then.79:                                       ; preds = %if.end.76
  %100 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %permanent_error80 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %100, i32 0, i32 95
  %101 = load i32, i32* %permanent_error80, align 4, !tbaa !171
  store i32 %101, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.353

if.end.81:                                        ; preds = %if.end.76
  %102 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %cmp82 = icmp eq %struct.gx_device_color_s* %102, null
  br i1 %cmp82, label %if.then.84, label %if.else.189

if.then.84:                                       ; preds = %if.end.81
  %103 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %cropping_saved85 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %103, i32 0, i32 105
  store i32 1, i32* %cropping_saved85, align 4, !tbaa !167
  %104 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %cropping_min86 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %104, i32 0, i32 101
  %105 = load i32, i32* %cropping_min86, align 4, !tbaa !165
  %106 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %save_cropping_min87 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %106, i32 0, i32 103
  store i32 %105, i32* %save_cropping_min87, align 4, !tbaa !168
  %107 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %cropping_max88 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %107, i32 0, i32 102
  %108 = load i32, i32* %cropping_max88, align 4, !tbaa !166
  %109 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %save_cropping_max89 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %109, i32 0, i32 104
  store i32 %108, i32* %save_cropping_max89, align 4, !tbaa !169
  %110 = load i32, i32* %ry, align 4, !tbaa !5
  %111 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %cropping_min90 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %111, i32 0, i32 101
  %112 = load i32, i32* %cropping_min90, align 4, !tbaa !165
  %cmp91 = icmp sgt i32 %110, %112
  br i1 %cmp91, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.84
  %113 = load i32, i32* %ry, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %if.then.84
  %114 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %cropping_min93 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %114, i32 0, i32 101
  %115 = load i32, i32* %cropping_min93, align 4, !tbaa !165
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond94 = phi i32 [ %113, %cond.true ], [ %115, %cond.false ]
  %116 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %cropping_min95 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %116, i32 0, i32 101
  store i32 %cond94, i32* %cropping_min95, align 4, !tbaa !165
  %117 = load i32, i32* %ry, align 4, !tbaa !5
  %118 = load i32, i32* %rheight, align 4, !tbaa !5
  %add96 = add nsw i32 %117, %118
  %119 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %cropping_max97 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %119, i32 0, i32 102
  %120 = load i32, i32* %cropping_max97, align 4, !tbaa !166
  %cmp98 = icmp slt i32 %add96, %120
  br i1 %cmp98, label %cond.true.100, label %cond.false.102

cond.true.100:                                    ; preds = %cond.end
  %121 = load i32, i32* %ry, align 4, !tbaa !5
  %122 = load i32, i32* %rheight, align 4, !tbaa !5
  %add101 = add nsw i32 %121, %122
  br label %cond.end.104

cond.false.102:                                   ; preds = %cond.end
  %123 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %cropping_max103 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %123, i32 0, i32 102
  %124 = load i32, i32* %cropping_max103, align 4, !tbaa !166
  br label %cond.end.104

cond.end.104:                                     ; preds = %cond.false.102, %cond.true.100
  %cond105 = phi i32 [ %add101, %cond.true.100 ], [ %124, %cond.false.102 ]
  %125 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %cropping_max106 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %125, i32 0, i32 102
  store i32 %cond105, i32* %cropping_max106, align 4, !tbaa !166
  br label %do.body.107

do.body.107:                                      ; preds = %cond.end.104
  br label %do.cond.108

do.cond.108:                                      ; preds = %do.body.107
  br label %do.end.109

do.end.109:                                       ; preds = %do.cond.108
  %126 = load i32, i32* %ry, align 4, !tbaa !5
  %y110 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  store i32 %126, i32* %y110, align 4, !tbaa !86
  %127 = load i32, i32* %rheight, align 4, !tbaa !5
  %height = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  store i32 %127, i32* %height, align 4, !tbaa !172
  %y111 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %128 = load i32, i32* %y111, align 4, !tbaa !86
  %height112 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %129 = load i32, i32* %height112, align 4, !tbaa !172
  %add113 = add nsw i32 %128, %129
  %yend = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 2
  store i32 %add113, i32* %yend, align 4, !tbaa !87
  %130 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %page_info = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %130, i32 0, i32 58
  %band_params = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info, i32 0, i32 8
  %BandHeight = getelementptr inbounds %struct.gx_band_params_s, %struct.gx_band_params_s* %band_params, i32 0, i32 1
  %131 = load i32, i32* %BandHeight, align 4, !tbaa !125
  %band_height = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  store i32 %131, i32* %band_height, align 4, !tbaa !173
  %yend114 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 2
  %132 = load i32, i32* %yend114, align 4, !tbaa !87
  %y115 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %133 = load i32, i32* %y115, align 4, !tbaa !86
  %sub116 = sub nsw i32 %132, %133
  %band_height117 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  %134 = load i32, i32* %band_height117, align 4, !tbaa !173
  %add118 = add nsw i32 %sub116, %134
  %sub119 = sub nsw i32 %add118, 1
  %band_height120 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  %135 = load i32, i32* %band_height120, align 4, !tbaa !173
  %div = sdiv i32 %sub119, %135
  %rect_nbands = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 8
  store i32 %div, i32* %rect_nbands, align 4, !tbaa !60
  br label %do.body.121

do.body.121:                                      ; preds = %do.cond.183, %do.end.109
  %y122 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %136 = load i32, i32* %y122, align 4, !tbaa !86
  %band_height123 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  %137 = load i32, i32* %band_height123, align 4, !tbaa !173
  %div124 = sdiv i32 %136, %137
  %band = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 5
  store i32 %div124, i32* %band, align 4, !tbaa !174
  %138 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %states = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %138, i32 0, i32 66
  %139 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %states, align 8, !tbaa !62
  %band125 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 5
  %140 = load i32, i32* %band125, align 4, !tbaa !174
  %idx.ext = sext i32 %140 to i64
  %add.ptr = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %139, i64 %idx.ext
  %pcls = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  store %struct.gx_clist_state_s* %add.ptr, %struct.gx_clist_state_s** %pcls, align 8, !tbaa !175
  %band126 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 5
  %141 = load i32, i32* %band126, align 4, !tbaa !174
  %add127 = add nsw i32 %141, 1
  %band_height128 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  %142 = load i32, i32* %band_height128, align 4, !tbaa !173
  %mul = mul nsw i32 %add127, %142
  %band_end = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 7
  store i32 %mul, i32* %band_end, align 4, !tbaa !176
  %band_end129 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 7
  %143 = load i32, i32* %band_end129, align 4, !tbaa !176
  %yend130 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 2
  %144 = load i32, i32* %yend130, align 4, !tbaa !87
  %cmp131 = icmp slt i32 %143, %144
  br i1 %cmp131, label %cond.true.133, label %cond.false.135

cond.true.133:                                    ; preds = %do.body.121
  %band_end134 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 7
  %145 = load i32, i32* %band_end134, align 4, !tbaa !176
  br label %cond.end.137

cond.false.135:                                   ; preds = %do.body.121
  %yend136 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 2
  %146 = load i32, i32* %yend136, align 4, !tbaa !87
  br label %cond.end.137

cond.end.137:                                     ; preds = %cond.false.135, %cond.true.133
  %cond138 = phi i32 [ %145, %cond.true.133 ], [ %146, %cond.false.135 ]
  %y139 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %147 = load i32, i32* %y139, align 4, !tbaa !86
  %sub140 = sub nsw i32 %cond138, %147
  %height141 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  store i32 %sub140, i32* %height141, align 4, !tbaa !172
  %148 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %cmp142 = icmp ne %struct.gx_clip_path_s* %148, null
  br i1 %cmp142, label %if.then.144, label %if.end.158

if.then.144:                                      ; preds = %cond.end.137
  %pcls145 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %149 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls145, align 8, !tbaa !175
  %known = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %149, i32 0, i32 14
  %150 = load i32, i32* %known, align 4, !tbaa !95
  %neg = xor i32 %150, -1
  %and146 = and i32 %neg, 8192
  %tobool147 = icmp ne i32 %and146, 0
  br i1 %tobool147, label %cond.true.148, label %cond.false.151

cond.true.148:                                    ; preds = %if.then.144
  %151 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pcls149 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %152 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls149, align 8, !tbaa !175
  %call150 = call i32 @cmd_write_unknown(%struct.gx_device_clist_writer_s* %151, %struct.gx_clist_state_s* %152, i32 8192) #5
  br label %cond.end.152

cond.false.151:                                   ; preds = %if.then.144
  br label %cond.end.152

cond.end.152:                                     ; preds = %cond.false.151, %cond.true.148
  %cond153 = phi i32 [ %call150, %cond.true.148 ], [ 0, %cond.false.151 ]
  store i32 %cond153, i32* %code, align 4, !tbaa !5
  %153 = load i32, i32* %code, align 4, !tbaa !5
  %cmp154 = icmp slt i32 %153, 0
  br i1 %cmp154, label %if.then.156, label %if.end.157

if.then.156:                                      ; preds = %cond.end.152
  %154 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %154, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.353

if.end.157:                                       ; preds = %cond.end.152
  br label %if.end.158

if.end.158:                                       ; preds = %if.end.157, %cond.end.137
  %pcls159 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %155 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls159, align 8, !tbaa !175
  %clip_enabled = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %155, i32 0, i32 11
  %156 = load i16, i16* %clip_enabled, align 2, !tbaa !141
  %conv160 = sext i16 %156 to i32
  %157 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %cmp161 = icmp ne %struct.gx_clip_path_s* %157, null
  %conv162 = zext i1 %cmp161 to i32
  %xor = xor i32 %conv162, 1
  %cmp163 = icmp eq i32 %conv160, %xor
  br i1 %cmp163, label %land.lhs.true.165, label %cond.false.173

land.lhs.true.165:                                ; preds = %if.end.158
  %158 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pcls166 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %159 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls166, align 8, !tbaa !175
  %160 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %cmp167 = icmp ne %struct.gx_clip_path_s* %160, null
  %conv168 = zext i1 %cmp167 to i32
  %call169 = call i32 @cmd_put_enable_clip(%struct.gx_device_clist_writer_s* %158, %struct.gx_clist_state_s* %159, i32 %conv168) #5
  %cmp170 = icmp slt i32 %call169, 0
  br i1 %cmp170, label %cond.true.172, label %cond.false.173

cond.true.172:                                    ; preds = %land.lhs.true.165
  %161 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %error_code = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %161, i32 0, i32 65
  %162 = load i32, i32* %error_code, align 4, !tbaa !74
  br label %cond.end.174

cond.false.173:                                   ; preds = %land.lhs.true.165, %if.end.158
  br label %cond.end.174

cond.end.174:                                     ; preds = %cond.false.173, %cond.true.172
  %cond175 = phi i32 [ %162, %cond.true.172 ], [ 0, %cond.false.173 ]
  store i32 %cond175, i32* %code, align 4, !tbaa !5
  %163 = load i32, i32* %code, align 4, !tbaa !5
  %cmp176 = icmp slt i32 %163, 0
  br i1 %cmp176, label %if.then.178, label %if.end.179

if.then.178:                                      ; preds = %cond.end.174
  %164 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %164, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.353

if.end.179:                                       ; preds = %cond.end.174
  %height180 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %165 = load i32, i32* %height180, align 4, !tbaa !172
  %y181 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %166 = load i32, i32* %y181, align 4, !tbaa !86
  %add182 = add nsw i32 %166, %165
  store i32 %add182, i32* %y181, align 4, !tbaa !86
  br label %do.cond.183

do.cond.183:                                      ; preds = %if.end.179
  %y184 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %167 = load i32, i32* %y184, align 4, !tbaa !86
  %yend185 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 2
  %168 = load i32, i32* %yend185, align 4, !tbaa !87
  %cmp186 = icmp slt i32 %167, %168
  br i1 %cmp186, label %do.body.121, label %do.end.188

do.end.188:                                       ; preds = %do.cond.183
  br label %if.end.352

if.else.189:                                      ; preds = %if.end.81
  %169 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pdf14_needed = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %169, i32 0, i32 81
  %170 = load i32, i32* %pdf14_needed, align 4, !tbaa !177
  %tobool190 = icmp ne i32 %170, 0
  br i1 %tobool190, label %if.then.191, label %if.end.205

if.then.191:                                      ; preds = %if.else.189
  %171 = bitcast %struct.gs_int_rect_s* %bbox192 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %171) #1
  %172 = load i32, i32* %rx, align 4, !tbaa !5
  %p193 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox192, i32 0, i32 0
  %x194 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p193, i32 0, i32 0
  store i32 %172, i32* %x194, align 4, !tbaa !178
  %173 = load i32, i32* %rx, align 4, !tbaa !5
  %174 = load i32, i32* %rwidth, align 4, !tbaa !5
  %add195 = add nsw i32 %173, %174
  %sub196 = sub nsw i32 %add195, 1
  %q197 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox192, i32 0, i32 1
  %x198 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q197, i32 0, i32 0
  store i32 %sub196, i32* %x198, align 4, !tbaa !179
  %175 = load i32, i32* %ry, align 4, !tbaa !5
  %p199 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox192, i32 0, i32 0
  %y200 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p199, i32 0, i32 1
  store i32 %175, i32* %y200, align 4, !tbaa !180
  %176 = load i32, i32* %ry, align 4, !tbaa !5
  %177 = load i32, i32* %rheight, align 4, !tbaa !5
  %add201 = add nsw i32 %176, %177
  %sub202 = sub nsw i32 %add201, 1
  %q203 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox192, i32 0, i32 1
  %y204 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q203, i32 0, i32 1
  store i32 %sub202, i32* %y204, align 4, !tbaa !181
  %178 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  call void @clist_update_trans_bbox(%struct.gx_device_clist_writer_s* %178, %struct.gs_int_rect_s* %bbox192) #5
  %179 = bitcast %struct.gs_int_rect_s* %bbox192 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %179) #1
  br label %if.end.205

if.end.205:                                       ; preds = %if.then.191, %if.else.189
  %180 = load i32, i32* %ry, align 4, !tbaa !5
  %y206 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  store i32 %180, i32* %y206, align 4, !tbaa !86
  %181 = load i32, i32* %rheight, align 4, !tbaa !5
  %height207 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  store i32 %181, i32* %height207, align 4, !tbaa !172
  %y208 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %182 = load i32, i32* %y208, align 4, !tbaa !86
  %height209 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %183 = load i32, i32* %height209, align 4, !tbaa !172
  %add210 = add nsw i32 %182, %183
  %yend211 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 2
  store i32 %add210, i32* %yend211, align 4, !tbaa !87
  %184 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %page_info212 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %184, i32 0, i32 58
  %band_params213 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info212, i32 0, i32 8
  %BandHeight214 = getelementptr inbounds %struct.gx_band_params_s, %struct.gx_band_params_s* %band_params213, i32 0, i32 1
  %185 = load i32, i32* %BandHeight214, align 4, !tbaa !125
  %band_height215 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  store i32 %185, i32* %band_height215, align 4, !tbaa !173
  %yend216 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 2
  %186 = load i32, i32* %yend216, align 4, !tbaa !87
  %y217 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %187 = load i32, i32* %y217, align 4, !tbaa !86
  %sub218 = sub nsw i32 %186, %187
  %band_height219 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  %188 = load i32, i32* %band_height219, align 4, !tbaa !173
  %add220 = add nsw i32 %sub218, %188
  %sub221 = sub nsw i32 %add220, 1
  %band_height222 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  %189 = load i32, i32* %band_height222, align 4, !tbaa !173
  %div223 = sdiv i32 %sub221, %189
  %rect_nbands224 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 8
  store i32 %div223, i32* %rect_nbands224, align 4, !tbaa !60
  br label %do.body.225

do.body.225:                                      ; preds = %do.cond.346, %if.end.205
  %y226 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %190 = load i32, i32* %y226, align 4, !tbaa !86
  %band_height227 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  %191 = load i32, i32* %band_height227, align 4, !tbaa !173
  %div228 = sdiv i32 %190, %191
  %band229 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 5
  store i32 %div228, i32* %band229, align 4, !tbaa !174
  %192 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %states230 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %192, i32 0, i32 66
  %193 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %states230, align 8, !tbaa !62
  %band231 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 5
  %194 = load i32, i32* %band231, align 4, !tbaa !174
  %idx.ext232 = sext i32 %194 to i64
  %add.ptr233 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %193, i64 %idx.ext232
  %pcls234 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  store %struct.gx_clist_state_s* %add.ptr233, %struct.gx_clist_state_s** %pcls234, align 8, !tbaa !175
  %band235 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 5
  %195 = load i32, i32* %band235, align 4, !tbaa !174
  %add236 = add nsw i32 %195, 1
  %band_height237 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  %196 = load i32, i32* %band_height237, align 4, !tbaa !173
  %mul238 = mul nsw i32 %add236, %196
  %band_end239 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 7
  store i32 %mul238, i32* %band_end239, align 4, !tbaa !176
  %band_end240 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 7
  %197 = load i32, i32* %band_end240, align 4, !tbaa !176
  %yend241 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 2
  %198 = load i32, i32* %yend241, align 4, !tbaa !87
  %cmp242 = icmp slt i32 %197, %198
  br i1 %cmp242, label %cond.true.244, label %cond.false.246

cond.true.244:                                    ; preds = %do.body.225
  %band_end245 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 7
  %199 = load i32, i32* %band_end245, align 4, !tbaa !176
  br label %cond.end.248

cond.false.246:                                   ; preds = %do.body.225
  %yend247 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 2
  %200 = load i32, i32* %yend247, align 4, !tbaa !87
  br label %cond.end.248

cond.end.248:                                     ; preds = %cond.false.246, %cond.true.244
  %cond249 = phi i32 [ %199, %cond.true.244 ], [ %200, %cond.false.246 ]
  %y250 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %201 = load i32, i32* %y250, align 4, !tbaa !86
  %sub251 = sub nsw i32 %cond249, %201
  %height252 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  store i32 %sub251, i32* %height252, align 4, !tbaa !172
  %pcls253 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %202 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls253, align 8, !tbaa !175
  %known254 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %202, i32 0, i32 14
  %203 = load i32, i32* %known254, align 4, !tbaa !95
  %neg255 = xor i32 %203, -1
  %and256 = and i32 %neg255, 10150
  %tobool257 = icmp ne i32 %and256, 0
  br i1 %tobool257, label %cond.true.258, label %cond.false.261

cond.true.258:                                    ; preds = %cond.end.248
  %204 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pcls259 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %205 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls259, align 8, !tbaa !175
  %call260 = call i32 @cmd_write_unknown(%struct.gx_device_clist_writer_s* %204, %struct.gx_clist_state_s* %205, i32 10150) #5
  br label %cond.end.262

cond.false.261:                                   ; preds = %cond.end.248
  br label %cond.end.262

cond.end.262:                                     ; preds = %cond.false.261, %cond.true.258
  %cond263 = phi i32 [ %call260, %cond.true.258 ], [ 0, %cond.false.261 ]
  store i32 %cond263, i32* %code, align 4, !tbaa !5
  %206 = load i32, i32* %code, align 4, !tbaa !5
  %cmp264 = icmp slt i32 %206, 0
  br i1 %cmp264, label %if.then.266, label %if.end.267

if.then.266:                                      ; preds = %cond.end.262
  %207 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %207, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.353

if.end.267:                                       ; preds = %cond.end.262
  %pcls268 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %208 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls268, align 8, !tbaa !175
  %clip_enabled269 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %208, i32 0, i32 11
  %209 = load i16, i16* %clip_enabled269, align 2, !tbaa !141
  %conv270 = sext i16 %209 to i32
  %210 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %cmp271 = icmp ne %struct.gx_clip_path_s* %210, null
  %conv272 = zext i1 %cmp271 to i32
  %xor273 = xor i32 %conv272, 1
  %cmp274 = icmp eq i32 %conv270, %xor273
  br i1 %cmp274, label %land.lhs.true.276, label %cond.false.285

land.lhs.true.276:                                ; preds = %if.end.267
  %211 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pcls277 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %212 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls277, align 8, !tbaa !175
  %213 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %cmp278 = icmp ne %struct.gx_clip_path_s* %213, null
  %conv279 = zext i1 %cmp278 to i32
  %call280 = call i32 @cmd_put_enable_clip(%struct.gx_device_clist_writer_s* %211, %struct.gx_clist_state_s* %212, i32 %conv279) #5
  %cmp281 = icmp slt i32 %call280, 0
  br i1 %cmp281, label %cond.true.283, label %cond.false.285

cond.true.283:                                    ; preds = %land.lhs.true.276
  %214 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %error_code284 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %214, i32 0, i32 65
  %215 = load i32, i32* %error_code284, align 4, !tbaa !74
  br label %cond.end.286

cond.false.285:                                   ; preds = %land.lhs.true.276, %if.end.267
  br label %cond.end.286

cond.end.286:                                     ; preds = %cond.false.285, %cond.true.283
  %cond287 = phi i32 [ %215, %cond.true.283 ], [ 0, %cond.false.285 ]
  store i32 %cond287, i32* %code, align 4, !tbaa !5
  %cmp288 = icmp slt i32 %cond287, 0
  br i1 %cmp288, label %if.then.295, label %lor.lhs.false.290

lor.lhs.false.290:                                ; preds = %cond.end.286
  %216 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pcls291 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %217 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls291, align 8, !tbaa !175
  %218 = load i32, i32* %lop, align 4, !tbaa !5
  %call292 = call i32 @cmd_update_lop(%struct.gx_device_clist_writer_s* %216, %struct.gx_clist_state_s* %217, i32 %218) #5
  store i32 %call292, i32* %code, align 4, !tbaa !5
  %cmp293 = icmp slt i32 %call292, 0
  br i1 %cmp293, label %if.then.295, label %if.end.296

if.then.295:                                      ; preds = %lor.lhs.false.290, %cond.end.286
  %219 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %219, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.353

if.end.296:                                       ; preds = %lor.lhs.false.290
  %220 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pcls297 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %221 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls297, align 8, !tbaa !175
  %222 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %call298 = call i32 @cmd_put_drawing_color(%struct.gx_device_clist_writer_s* %220, %struct.gx_clist_state_s* %221, %struct.gx_device_color_s* %222, %struct.cmd_rects_enum_s* %re, i32 0) #5
  store i32 %call298, i32* %code, align 4, !tbaa !5
  %223 = load i32, i32* %code, align 4, !tbaa !5
  %cmp299 = icmp eq i32 %223, -28
  br i1 %cmp299, label %if.then.301, label %if.end.302

if.then.301:                                      ; preds = %if.end.296
  %224 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %224, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.353

if.end.302:                                       ; preds = %if.end.296
  %225 = load i32, i32* %code, align 4, !tbaa !5
  %cmp303 = icmp slt i32 %225, 0
  br i1 %cmp303, label %if.then.305, label %if.end.307

if.then.305:                                      ; preds = %if.end.302
  %226 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %227 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %228 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %229 = load %struct.gx_fill_params_s*, %struct.gx_fill_params_s** %params.addr, align 8, !tbaa !1
  %230 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %231 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call306 = call i32 @gx_default_fill_path(%struct.gx_device_s* %226, %struct.gs_imager_state_s* %227, %struct.gx_path_s* %228, %struct.gx_fill_params_s* %229, %struct.gx_device_color_s* %230, %struct.gx_clip_path_s* %231) #5
  store i32 %call306, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.353

if.end.307:                                       ; preds = %if.end.302
  %232 = load i32, i32* %slow_rop, align 4, !tbaa !5
  %pcls308 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %233 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls308, align 8, !tbaa !175
  %color_usage = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %233, i32 0, i32 16
  %slow_rop309 = getelementptr inbounds %struct.gx_colors_usage_s, %struct.gx_colors_usage_s* %color_usage, i32 0, i32 1
  %234 = load i32, i32* %slow_rop309, align 4, !tbaa !182
  %or310 = or i32 %234, %232
  store i32 %or310, i32* %slow_rop309, align 4, !tbaa !182
  %235 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pcls311 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %236 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls311, align 8, !tbaa !175
  %237 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %y312 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %238 = load i32, i32* %y312, align 4, !tbaa !86
  %sub313 = sub nsw i32 %238, 1
  %239 = load i32, i32* %y0, align 4, !tbaa !5
  %cmp314 = icmp sgt i32 %sub313, %239
  br i1 %cmp314, label %cond.true.316, label %cond.false.319

cond.true.316:                                    ; preds = %if.end.307
  %y317 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %240 = load i32, i32* %y317, align 4, !tbaa !86
  %sub318 = sub nsw i32 %240, 1
  br label %cond.end.320

cond.false.319:                                   ; preds = %if.end.307
  %241 = load i32, i32* %y0, align 4, !tbaa !5
  br label %cond.end.320

cond.end.320:                                     ; preds = %cond.false.319, %cond.true.316
  %cond321 = phi i32 [ %sub318, %cond.true.316 ], [ %241, %cond.false.319 ]
  %shl322 = shl i32 %cond321, 8
  %y323 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %242 = load i32, i32* %y323, align 4, !tbaa !86
  %height324 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %243 = load i32, i32* %height324, align 4, !tbaa !172
  %add325 = add nsw i32 %242, %243
  %add326 = add nsw i32 %add325, 1
  %244 = load i32, i32* %y1, align 4, !tbaa !5
  %cmp327 = icmp slt i32 %add326, %244
  br i1 %cmp327, label %cond.true.329, label %cond.false.334

cond.true.329:                                    ; preds = %cond.end.320
  %y330 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %245 = load i32, i32* %y330, align 4, !tbaa !86
  %height331 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %246 = load i32, i32* %height331, align 4, !tbaa !172
  %add332 = add nsw i32 %245, %246
  %add333 = add nsw i32 %add332, 1
  br label %cond.end.335

cond.false.334:                                   ; preds = %cond.end.320
  %247 = load i32, i32* %y1, align 4, !tbaa !5
  br label %cond.end.335

cond.end.335:                                     ; preds = %cond.false.334, %cond.true.329
  %cond336 = phi i32 [ %add333, %cond.true.329 ], [ %247, %cond.false.334 ]
  %shl337 = shl i32 %cond336, 8
  %248 = load i8, i8* %op, align 1, !tbaa !7
  %call338 = call i32 @cmd_put_path(%struct.gx_device_clist_writer_s* %235, %struct.gx_clist_state_s* %236, %struct.gx_path_s* %237, i32 %shl322, i32 %shl337, i8 zeroext %248, i32 1, i32 0) #5
  store i32 %call338, i32* %code, align 4, !tbaa !5
  %249 = load i32, i32* %code, align 4, !tbaa !5
  %cmp339 = icmp slt i32 %249, 0
  br i1 %cmp339, label %if.then.341, label %if.end.342

if.then.341:                                      ; preds = %cond.end.335
  %250 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %250, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.353

if.end.342:                                       ; preds = %cond.end.335
  %height343 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %251 = load i32, i32* %height343, align 4, !tbaa !172
  %y344 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %252 = load i32, i32* %y344, align 4, !tbaa !86
  %add345 = add nsw i32 %252, %251
  store i32 %add345, i32* %y344, align 4, !tbaa !86
  br label %do.cond.346

do.cond.346:                                      ; preds = %if.end.342
  %y347 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %253 = load i32, i32* %y347, align 4, !tbaa !86
  %yend348 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 2
  %254 = load i32, i32* %yend348, align 4, !tbaa !87
  %cmp349 = icmp slt i32 %253, %254
  br i1 %cmp349, label %do.body.225, label %do.end.351

do.end.351:                                       ; preds = %do.cond.346
  br label %if.end.352

if.end.352:                                       ; preds = %do.end.351, %do.end.188
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.353

cleanup.353:                                      ; preds = %if.end.352, %if.then.341, %if.then.305, %if.then.301, %if.then.295, %if.then.266, %if.then.178, %if.then.156, %if.then.79, %if.end.70, %if.then.53, %cleanup
  %255 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %255) #1
  %256 = bitcast %struct.cmd_rects_enum_s* %re to i8*
  call void @llvm.lifetime.end(i64 40, i8* %256) #1
  %257 = bitcast i32* %slow_rop to i8*
  call void @llvm.lifetime.end(i64 4, i8* %257) #1
  %258 = bitcast %struct.gs_fixed_point_s* %adjust to i8*
  call void @llvm.lifetime.end(i64 8, i8* %258) #1
  call void @llvm.lifetime.end(i64 1, i8* %op) #1
  %259 = bitcast i32* %lop to i8*
  call void @llvm.lifetime.end(i64 4, i8* %259) #1
  %260 = bitcast i32* %y1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %260) #1
  %261 = bitcast i32* %y0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %261) #1
  %262 = bitcast i32* %rwidth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %262) #1
  %263 = bitcast i32* %rx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %263) #1
  %264 = bitcast i32* %rheight to i8*
  call void @llvm.lifetime.end(i64 4, i8* %264) #1
  %265 = bitcast i32* %ry to i8*
  call void @llvm.lifetime.end(i64 4, i8* %265) #1
  %266 = bitcast i32* %unknown to i8*
  call void @llvm.lifetime.end(i64 4, i8* %266) #1
  %267 = bitcast %struct.gx_device_clist_writer_s** %cdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %267) #1
  %268 = load i32, i32* %retval
  ret i32 %268
}

declare i32 @gx_path_bbox(%struct.gx_path_s*, %struct.gs_fixed_rect_s*) #2

declare i32 @gs_debug_c(i32) #2

declare i32 @gx_default_fill_path(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*) #2

declare i32 @gx_dc_is_pattern2_color(%struct.gx_device_color_s*) #2

; Function Attrs: nounwind uwtable
define internal void @cmd_check_fill_known(%struct.gx_device_clist_writer_s* %cdev, %struct.gs_imager_state_s* %pis, double %flatness, %struct.gs_fixed_point_s* %padjust, %struct.gx_clip_path_s* %pcpath, i32* %punknown) #0 {
entry:
  %cdev.addr = alloca %struct.gx_device_clist_writer_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %flatness.addr = alloca double, align 8
  %padjust.addr = alloca %struct.gs_fixed_point_s*, align 8
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %punknown.addr = alloca i32*, align 8
  store %struct.gx_device_clist_writer_s* %cdev, %struct.gx_device_clist_writer_s** %cdev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store double %flatness, double* %flatness.addr, align 8, !tbaa !183
  store %struct.gs_fixed_point_s* %padjust, %struct.gs_fixed_point_s** %padjust.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  store i32* %punknown, i32** %punknown.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev.addr, align 8, !tbaa !1
  %imager_state = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %0, i32 0, i32 80
  %line_params = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state, i32 0, i32 3
  %curve_join = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params, i32 0, i32 5
  %1 = load i32, i32* %curve_join, align 4, !tbaa !112
  %2 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %line_params1 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %2, i32 0, i32 3
  %curve_join2 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params1, i32 0, i32 5
  %3 = load i32, i32* %curve_join2, align 4, !tbaa !184
  %cmp = icmp ne i32 %1, %3
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev.addr, align 8, !tbaa !1
  %imager_state3 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %4, i32 0, i32 80
  %accurate_curves = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state3, i32 0, i32 30
  %5 = load i32, i32* %accurate_curves, align 4, !tbaa !113
  %6 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %accurate_curves4 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %6, i32 0, i32 30
  %7 = load i32, i32* %accurate_curves4, align 4, !tbaa !185
  %cmp5 = icmp ne i32 %5, %7
  br i1 %cmp5, label %if.then, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false
  %8 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev.addr, align 8, !tbaa !1
  %imager_state7 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %8, i32 0, i32 80
  %stroke_adjust = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state7, i32 0, i32 29
  %9 = load i32, i32* %stroke_adjust, align 4, !tbaa !114
  %10 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %stroke_adjust8 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %10, i32 0, i32 29
  %11 = load i32, i32* %stroke_adjust8, align 4, !tbaa !186
  %cmp9 = icmp ne i32 %9, %11
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.6, %lor.lhs.false, %entry
  %12 = load i32*, i32** %punknown.addr, align 8, !tbaa !1
  %13 = load i32, i32* %12, align 4, !tbaa !5
  %or = or i32 %13, 2
  store i32 %or, i32* %12, align 4, !tbaa !5
  %14 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %line_params10 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %14, i32 0, i32 3
  %curve_join11 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params10, i32 0, i32 5
  %15 = load i32, i32* %curve_join11, align 4, !tbaa !184
  %16 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev.addr, align 8, !tbaa !1
  %imager_state12 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %16, i32 0, i32 80
  %line_params13 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state12, i32 0, i32 3
  %curve_join14 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params13, i32 0, i32 5
  store i32 %15, i32* %curve_join14, align 4, !tbaa !112
  %17 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %accurate_curves15 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %17, i32 0, i32 30
  %18 = load i32, i32* %accurate_curves15, align 4, !tbaa !185
  %19 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev.addr, align 8, !tbaa !1
  %imager_state16 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %19, i32 0, i32 80
  %accurate_curves17 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state16, i32 0, i32 30
  store i32 %18, i32* %accurate_curves17, align 4, !tbaa !113
  %20 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %stroke_adjust18 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %20, i32 0, i32 29
  %21 = load i32, i32* %stroke_adjust18, align 4, !tbaa !186
  %22 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev.addr, align 8, !tbaa !1
  %imager_state19 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %22, i32 0, i32 80
  %stroke_adjust20 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state19, i32 0, i32 29
  store i32 %21, i32* %stroke_adjust20, align 4, !tbaa !114
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.6
  %23 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev.addr, align 8, !tbaa !1
  %imager_state21 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %23, i32 0, i32 80
  %flatness22 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state21, i32 0, i32 27
  %24 = load float, float* %flatness22, align 4, !tbaa !187
  %conv = fpext float %24 to double
  %25 = load double, double* %flatness.addr, align 8, !tbaa !183
  %cmp23 = fcmp une double %conv, %25
  br i1 %cmp23, label %if.then.25, label %if.end.30

if.then.25:                                       ; preds = %if.end
  %26 = load i32*, i32** %punknown.addr, align 8, !tbaa !1
  %27 = load i32, i32* %26, align 4, !tbaa !5
  %or26 = or i32 %27, 4
  store i32 %or26, i32* %26, align 4, !tbaa !5
  %28 = load double, double* %flatness.addr, align 8, !tbaa !183
  %conv27 = fptrunc double %28 to float
  %29 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev.addr, align 8, !tbaa !1
  %imager_state28 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %29, i32 0, i32 80
  %flatness29 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state28, i32 0, i32 27
  store float %conv27, float* %flatness29, align 4, !tbaa !187
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.25, %if.end
  %30 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev.addr, align 8, !tbaa !1
  %imager_state31 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %30, i32 0, i32 80
  %overprint = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state31, i32 0, i32 21
  %31 = load i32, i32* %overprint, align 4, !tbaa !120
  %32 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %overprint32 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %32, i32 0, i32 21
  %33 = load i32, i32* %overprint32, align 4, !tbaa !188
  %cmp33 = icmp ne i32 %31, %33
  br i1 %cmp33, label %if.then.55, label %lor.lhs.false.35

lor.lhs.false.35:                                 ; preds = %if.end.30
  %34 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev.addr, align 8, !tbaa !1
  %imager_state36 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %34, i32 0, i32 80
  %overprint_mode = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state36, i32 0, i32 22
  %35 = load i32, i32* %overprint_mode, align 4, !tbaa !119
  %36 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %overprint_mode37 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %36, i32 0, i32 22
  %37 = load i32, i32* %overprint_mode37, align 4, !tbaa !189
  %cmp38 = icmp ne i32 %35, %37
  br i1 %cmp38, label %if.then.55, label %lor.lhs.false.40

lor.lhs.false.40:                                 ; preds = %lor.lhs.false.35
  %38 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev.addr, align 8, !tbaa !1
  %imager_state41 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %38, i32 0, i32 80
  %blend_mode = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state41, i32 0, i32 12
  %39 = load i32, i32* %blend_mode, align 4, !tbaa !117
  %40 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %blend_mode42 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %40, i32 0, i32 12
  %41 = load i32, i32* %blend_mode42, align 4, !tbaa !190
  %cmp43 = icmp ne i32 %39, %41
  br i1 %cmp43, label %if.then.55, label %lor.lhs.false.45

lor.lhs.false.45:                                 ; preds = %lor.lhs.false.40
  %42 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev.addr, align 8, !tbaa !1
  %imager_state46 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %42, i32 0, i32 80
  %text_knockout = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state46, i32 0, i32 17
  %43 = load i32, i32* %text_knockout, align 4, !tbaa !118
  %44 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %text_knockout47 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %44, i32 0, i32 17
  %45 = load i32, i32* %text_knockout47, align 4, !tbaa !191
  %cmp48 = icmp ne i32 %43, %45
  br i1 %cmp48, label %if.then.55, label %lor.lhs.false.50

lor.lhs.false.50:                                 ; preds = %lor.lhs.false.45
  %46 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev.addr, align 8, !tbaa !1
  %imager_state51 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %46, i32 0, i32 80
  %renderingintent = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state51, i32 0, i32 33
  %47 = load i32, i32* %renderingintent, align 4, !tbaa !121
  %48 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %renderingintent52 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %48, i32 0, i32 33
  %49 = load i32, i32* %renderingintent52, align 4, !tbaa !192
  %cmp53 = icmp ne i32 %47, %49
  br i1 %cmp53, label %if.then.55, label %if.end.72

if.then.55:                                       ; preds = %lor.lhs.false.50, %lor.lhs.false.45, %lor.lhs.false.40, %lor.lhs.false.35, %if.end.30
  %50 = load i32*, i32** %punknown.addr, align 8, !tbaa !1
  %51 = load i32, i32* %50, align 4, !tbaa !5
  %or56 = or i32 %51, 32
  store i32 %or56, i32* %50, align 4, !tbaa !5
  %52 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %overprint57 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %52, i32 0, i32 21
  %53 = load i32, i32* %overprint57, align 4, !tbaa !188
  %54 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev.addr, align 8, !tbaa !1
  %imager_state58 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %54, i32 0, i32 80
  %overprint59 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state58, i32 0, i32 21
  store i32 %53, i32* %overprint59, align 4, !tbaa !120
  %55 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %overprint_mode60 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %55, i32 0, i32 22
  %56 = load i32, i32* %overprint_mode60, align 4, !tbaa !189
  %57 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev.addr, align 8, !tbaa !1
  %imager_state61 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %57, i32 0, i32 80
  %overprint_mode62 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state61, i32 0, i32 22
  store i32 %56, i32* %overprint_mode62, align 4, !tbaa !119
  %58 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %blend_mode63 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %58, i32 0, i32 12
  %59 = load i32, i32* %blend_mode63, align 4, !tbaa !190
  %60 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev.addr, align 8, !tbaa !1
  %imager_state64 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %60, i32 0, i32 80
  %blend_mode65 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state64, i32 0, i32 12
  store i32 %59, i32* %blend_mode65, align 4, !tbaa !117
  %61 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %text_knockout66 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %61, i32 0, i32 17
  %62 = load i32, i32* %text_knockout66, align 4, !tbaa !191
  %63 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev.addr, align 8, !tbaa !1
  %imager_state67 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %63, i32 0, i32 80
  %text_knockout68 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state67, i32 0, i32 17
  store i32 %62, i32* %text_knockout68, align 4, !tbaa !118
  %64 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %renderingintent69 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %64, i32 0, i32 33
  %65 = load i32, i32* %renderingintent69, align 4, !tbaa !192
  %66 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev.addr, align 8, !tbaa !1
  %imager_state70 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %66, i32 0, i32 80
  %renderingintent71 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state70, i32 0, i32 33
  store i32 %65, i32* %renderingintent71, align 4, !tbaa !121
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.55, %lor.lhs.false.50
  %67 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev.addr, align 8, !tbaa !1
  %imager_state73 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %67, i32 0, i32 80
  %opacity = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state73, i32 0, i32 13
  %alpha = getelementptr inbounds %struct.gs_transparency_source_s, %struct.gs_transparency_source_s* %opacity, i32 0, i32 0
  %68 = load float, float* %alpha, align 4, !tbaa !193
  %69 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %opacity74 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %69, i32 0, i32 13
  %alpha75 = getelementptr inbounds %struct.gs_transparency_source_s, %struct.gs_transparency_source_s* %opacity74, i32 0, i32 0
  %70 = load float, float* %alpha75, align 4, !tbaa !194
  %cmp76 = fcmp une float %68, %70
  br i1 %cmp76, label %if.then.78, label %if.end.85

if.then.78:                                       ; preds = %if.end.72
  %71 = load i32*, i32** %punknown.addr, align 8, !tbaa !1
  %72 = load i32, i32* %71, align 4, !tbaa !5
  %or79 = or i32 %72, 128
  store i32 %or79, i32* %71, align 4, !tbaa !5
  %73 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %opacity80 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %73, i32 0, i32 13
  %alpha81 = getelementptr inbounds %struct.gs_transparency_source_s, %struct.gs_transparency_source_s* %opacity80, i32 0, i32 0
  %74 = load float, float* %alpha81, align 4, !tbaa !194
  %75 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev.addr, align 8, !tbaa !1
  %imager_state82 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %75, i32 0, i32 80
  %opacity83 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state82, i32 0, i32 13
  %alpha84 = getelementptr inbounds %struct.gs_transparency_source_s, %struct.gs_transparency_source_s* %opacity83, i32 0, i32 0
  store float %74, float* %alpha84, align 4, !tbaa !193
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.78, %if.end.72
  %76 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev.addr, align 8, !tbaa !1
  %imager_state86 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %76, i32 0, i32 80
  %shape = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state86, i32 0, i32 14
  %alpha87 = getelementptr inbounds %struct.gs_transparency_source_s, %struct.gs_transparency_source_s* %shape, i32 0, i32 0
  %77 = load float, float* %alpha87, align 4, !tbaa !195
  %78 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %shape88 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %78, i32 0, i32 14
  %alpha89 = getelementptr inbounds %struct.gs_transparency_source_s, %struct.gs_transparency_source_s* %shape88, i32 0, i32 0
  %79 = load float, float* %alpha89, align 4, !tbaa !196
  %cmp90 = fcmp une float %77, %79
  br i1 %cmp90, label %if.then.92, label %if.end.99

if.then.92:                                       ; preds = %if.end.85
  %80 = load i32*, i32** %punknown.addr, align 8, !tbaa !1
  %81 = load i32, i32* %80, align 4, !tbaa !5
  %or93 = or i32 %81, 256
  store i32 %or93, i32* %80, align 4, !tbaa !5
  %82 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %shape94 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %82, i32 0, i32 14
  %alpha95 = getelementptr inbounds %struct.gs_transparency_source_s, %struct.gs_transparency_source_s* %shape94, i32 0, i32 0
  %83 = load float, float* %alpha95, align 4, !tbaa !196
  %84 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev.addr, align 8, !tbaa !1
  %imager_state96 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %84, i32 0, i32 80
  %shape97 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state96, i32 0, i32 14
  %alpha98 = getelementptr inbounds %struct.gs_transparency_source_s, %struct.gs_transparency_source_s* %shape97, i32 0, i32 0
  store float %83, float* %alpha98, align 4, !tbaa !195
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.92, %if.end.85
  %85 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev.addr, align 8, !tbaa !1
  %imager_state100 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %85, i32 0, i32 80
  %fill_adjust = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state100, i32 0, i32 28
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %fill_adjust, i32 0, i32 0
  %86 = load i32, i32* %x, align 4, !tbaa !197
  %87 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %padjust.addr, align 8, !tbaa !1
  %x101 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %87, i32 0, i32 0
  %88 = load i32, i32* %x101, align 4, !tbaa !155
  %cmp102 = icmp ne i32 %86, %88
  br i1 %cmp102, label %if.then.110, label %lor.lhs.false.104

lor.lhs.false.104:                                ; preds = %if.end.99
  %89 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev.addr, align 8, !tbaa !1
  %imager_state105 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %89, i32 0, i32 80
  %fill_adjust106 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state105, i32 0, i32 28
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %fill_adjust106, i32 0, i32 1
  %90 = load i32, i32* %y, align 4, !tbaa !198
  %91 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %padjust.addr, align 8, !tbaa !1
  %y107 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %91, i32 0, i32 1
  %92 = load i32, i32* %y107, align 4, !tbaa !154
  %cmp108 = icmp ne i32 %90, %92
  br i1 %cmp108, label %if.then.110, label %if.end.114

if.then.110:                                      ; preds = %lor.lhs.false.104, %if.end.99
  %93 = load i32*, i32** %punknown.addr, align 8, !tbaa !1
  %94 = load i32, i32* %93, align 4, !tbaa !5
  %or111 = or i32 %94, 1024
  store i32 %or111, i32* %93, align 4, !tbaa !5
  %95 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev.addr, align 8, !tbaa !1
  %imager_state112 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %95, i32 0, i32 80
  %fill_adjust113 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state112, i32 0, i32 28
  %96 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %padjust.addr, align 8, !tbaa !1
  %97 = bitcast %struct.gs_fixed_point_s* %fill_adjust113 to i8*
  %98 = bitcast %struct.gs_fixed_point_s* %96 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %97, i8* %98, i64 8, i32 4, i1 false), !tbaa.struct !161
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.110, %lor.lhs.false.104
  %99 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev.addr, align 8, !tbaa !1
  %imager_state115 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %99, i32 0, i32 80
  %alpha116 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state115, i32 0, i32 11
  %100 = load i16, i16* %alpha116, align 2, !tbaa !199
  %conv117 = zext i16 %100 to i32
  %101 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %alpha118 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %101, i32 0, i32 11
  %102 = load i16, i16* %alpha118, align 2, !tbaa !200
  %conv119 = zext i16 %102 to i32
  %cmp120 = icmp ne i32 %conv117, %conv119
  br i1 %cmp120, label %if.then.122, label %if.end.127

if.then.122:                                      ; preds = %if.end.114
  %103 = load i32*, i32** %punknown.addr, align 8, !tbaa !1
  %104 = load i32, i32* %103, align 4, !tbaa !5
  %or123 = or i32 %104, 512
  store i32 %or123, i32* %103, align 4, !tbaa !5
  %105 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %alpha124 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %105, i32 0, i32 11
  %106 = load i16, i16* %alpha124, align 2, !tbaa !200
  %107 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev.addr, align 8, !tbaa !1
  %imager_state125 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %107, i32 0, i32 80
  %alpha126 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state125, i32 0, i32 11
  store i16 %106, i16* %alpha126, align 2, !tbaa !199
  br label %if.end.127

if.end.127:                                       ; preds = %if.then.122, %if.end.114
  %108 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev.addr, align 8, !tbaa !1
  %109 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call = call i32 @cmd_check_clip_path(%struct.gx_device_clist_writer_s* %108, %struct.gx_clip_path_s* %109) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.128, label %if.end.130

if.then.128:                                      ; preds = %if.end.127
  %110 = load i32*, i32** %punknown.addr, align 8, !tbaa !1
  %111 = load i32, i32* %110, align 4, !tbaa !5
  %or129 = or i32 %111, 8192
  store i32 %or129, i32* %110, align 4, !tbaa !5
  br label %if.end.130

if.end.130:                                       ; preds = %if.then.128, %if.end.127
  ret void
}

declare i32 @cmd_put_enable_clip(%struct.gx_device_clist_writer_s*, %struct.gx_clist_state_s*, i32) #2

declare i32 @cmd_update_lop(%struct.gx_device_clist_writer_s*, %struct.gx_clist_state_s*, i32) #2

; Function Attrs: nounwind uwtable
define i32 @clist_stroke_path(%struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis, %struct.gx_path_s* %ppath, %struct.gx_stroke_params_s* %params, %struct.gx_device_color_s* %pdcolor, %struct.gx_clip_path_s* %pcpath) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %params.addr = alloca %struct.gx_stroke_params_s*, align 8
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %cdev = alloca %struct.gx_device_clist_writer_s*, align 8
  %pattern_size = alloca i32, align 4
  %unknown = alloca i32, align 4
  %bbox = alloca %struct.gs_fixed_rect_s, align 4
  %expansion = alloca %struct.gs_fixed_point_s, align 4
  %adjust_y = alloca i32, align 4
  %expansion_code = alloca i32, align 4
  %ry = alloca i32, align 4
  %rheight = alloca i32, align 4
  %lop = alloca i32, align 4
  %slow_rop = alloca i32, align 4
  %re = alloca %struct.cmd_rects_enum_s, align 8
  %cleanup.dest.slot = alloca i32
  %trans_bbox = alloca %struct.gs_int_rect_s, align 4
  %rx = alloca i32, align 4
  %rwidth = alloca i32, align 4
  %code = alloca i32, align 4
  %ymin = alloca i32, align 4
  %ymax = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store %struct.gx_stroke_params_s* %params, %struct.gx_stroke_params_s** %params.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_clist_writer_s** %cdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %union.gx_device_clist_s*
  %writer = bitcast %union.gx_device_clist_s* %2 to %struct.gx_device_clist_writer_s*
  store %struct.gx_device_clist_writer_s* %writer, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %3 = bitcast i32* %pattern_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %line_params = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %4, i32 0, i32 3
  %dash = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params, i32 0, i32 11
  %pattern_size1 = getelementptr inbounds %struct.gx_dash_params_s, %struct.gx_dash_params_s* %dash, i32 0, i32 1
  %5 = load i32, i32* %pattern_size1, align 4, !tbaa !201
  store i32 %5, i32* %pattern_size, align 4, !tbaa !5
  %6 = bitcast i32* %unknown to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i32 0, i32* %unknown, align 4, !tbaa !5
  %7 = bitcast %struct.gs_fixed_rect_s* %bbox to i8*
  call void @llvm.lifetime.start(i64 16, i8* %7) #1
  %8 = bitcast %struct.gs_fixed_point_s* %expansion to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast i32* %adjust_y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %expansion_code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %ry to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast i32* %rheight to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast i32* %lop to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %log_op = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %14, i32 0, i32 10
  %15 = load i32, i32* %log_op, align 4, !tbaa !162
  store i32 %15, i32* %lop, align 4, !tbaa !5
  %16 = bitcast i32* %slow_rop to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %18 = load i32, i32* %lop, align 4, !tbaa !5
  %and = and i32 %18, 51
  %shl = shl i32 %and, 2
  %19 = load i32, i32* %lop, align 4, !tbaa !5
  %and2 = and i32 %19, -205
  %or = or i32 %shl, %and2
  %and3 = and i32 %or, -257
  %20 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %call = call i32 @cmd_slow_rop(%struct.gx_device_s* %17, i32 %and3, %struct.gx_device_color_s* %20) #5
  store i32 %call, i32* %slow_rop, align 4, !tbaa !5
  %21 = bitcast %struct.cmd_rects_enum_s* %re to i8*
  call void @llvm.lifetime.start(i64 40, i8* %21) #1
  %22 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %disable_mask = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %22, i32 0, i32 99
  %23 = load i32, i32* %disable_mask, align 4, !tbaa !131
  %and4 = and i32 %23, 2
  %tobool = icmp ne i32 %and4, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call5 = call i32 @gs_debug_c(i32 44) #5
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %24 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %25 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %26 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %27 = load %struct.gx_stroke_params_s*, %struct.gx_stroke_params_s** %params.addr, align 8, !tbaa !1
  %28 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %29 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call7 = call i32 @gx_default_stroke_path(%struct.gx_device_s* %24, %struct.gs_imager_state_s* %25, %struct.gx_path_s* %26, %struct.gx_stroke_params_s* %27, %struct.gx_device_color_s* %28, %struct.gx_clip_path_s* %29) #5
  store i32 %call7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.410

if.end:                                           ; preds = %lor.lhs.false
  %30 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %call8 = call i32 @gx_path_bbox(%struct.gx_path_s* %30, %struct.gs_fixed_rect_s* %bbox) #5
  %31 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %32 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %call9 = call i32 @gx_stroke_path_expansion(%struct.gs_imager_state_s* %31, %struct.gx_path_s* %32, %struct.gs_fixed_point_s* %expansion) #5
  store i32 %call9, i32* %expansion_code, align 4, !tbaa !5
  %33 = load i32, i32* %expansion_code, align 4, !tbaa !5
  %cmp = icmp slt i32 %33, 0
  br i1 %cmp, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.end
  store i32 0, i32* %adjust_y, align 4, !tbaa !5
  store i32 0, i32* %ry, align 4, !tbaa !5
  %34 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %34, i32 0, i32 14
  %35 = load i32, i32* %height, align 4, !tbaa !202
  store i32 %35, i32* %rheight, align 4, !tbaa !5
  br label %if.end.36

if.else:                                          ; preds = %if.end
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %expansion, i32 0, i32 1
  %36 = load i32, i32* %y, align 4, !tbaa !154
  %add = add nsw i32 %36, 255
  %shr = ashr i32 %add, 8
  %add11 = add nsw i32 %shr, 1
  store i32 %add11, i32* %adjust_y, align 4, !tbaa !5
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 0
  %y12 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 1
  %37 = load i32, i32* %y12, align 4, !tbaa !128
  %shr13 = ashr i32 %37, 8
  %38 = load i32, i32* %adjust_y, align 4, !tbaa !5
  %sub = sub nsw i32 %shr13, %38
  store i32 %sub, i32* %ry, align 4, !tbaa !5
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 1
  %y14 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 1
  %39 = load i32, i32* %y14, align 4, !tbaa !130
  %add15 = add nsw i32 %39, 255
  %shr16 = ashr i32 %add15, 8
  %40 = load i32, i32* %ry, align 4, !tbaa !5
  %sub17 = sub nsw i32 %shr16, %40
  %41 = load i32, i32* %adjust_y, align 4, !tbaa !5
  %add18 = add nsw i32 %sub17, %41
  store i32 %add18, i32* %rheight, align 4, !tbaa !5
  br label %do.body

do.body:                                          ; preds = %if.else
  %42 = load i32, i32* %ry, align 4, !tbaa !5
  %cmp19 = icmp slt i32 %42, 0
  br i1 %cmp19, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %do.body
  %43 = load i32, i32* %ry, align 4, !tbaa !5
  %44 = load i32, i32* %rheight, align 4, !tbaa !5
  %add21 = add nsw i32 %44, %43
  store i32 %add21, i32* %rheight, align 4, !tbaa !5
  store i32 0, i32* %ry, align 4, !tbaa !5
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.22
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.23

do.body.23:                                       ; preds = %do.end
  %45 = load i32, i32* %rheight, align 4, !tbaa !5
  %46 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height24 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %46, i32 0, i32 14
  %47 = load i32, i32* %height24, align 4, !tbaa !202
  %48 = load i32, i32* %ry, align 4, !tbaa !5
  %sub25 = sub nsw i32 %47, %48
  %cmp26 = icmp sgt i32 %45, %sub25
  br i1 %cmp26, label %if.then.27, label %if.end.30

if.then.27:                                       ; preds = %do.body.23
  %49 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height28 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %49, i32 0, i32 14
  %50 = load i32, i32* %height28, align 4, !tbaa !202
  %51 = load i32, i32* %ry, align 4, !tbaa !5
  %sub29 = sub nsw i32 %50, %51
  store i32 %sub29, i32* %rheight, align 4, !tbaa !5
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.27, %do.body.23
  br label %do.cond.31

do.cond.31:                                       ; preds = %if.end.30
  br label %do.end.32

do.end.32:                                        ; preds = %do.cond.31
  %52 = load i32, i32* %rheight, align 4, !tbaa !5
  %cmp33 = icmp sle i32 %52, 0
  br i1 %cmp33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %do.end.32
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.410

if.end.35:                                        ; preds = %do.end.32
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.then.10
  %53 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %imager_state = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %53, i32 0, i32 80
  %line_params37 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state, i32 0, i32 3
  %dash38 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params37, i32 0, i32 11
  %pattern_size39 = getelementptr inbounds %struct.gx_dash_params_s, %struct.gx_dash_params_s* %dash38, i32 0, i32 1
  %54 = load i32, i32* %pattern_size39, align 4, !tbaa !122
  %55 = load i32, i32* %pattern_size, align 4, !tbaa !5
  %cmp40 = icmp ne i32 %54, %55
  br i1 %cmp40, label %if.then.79, label %lor.lhs.false.41

lor.lhs.false.41:                                 ; preds = %if.end.36
  %56 = load i32, i32* %pattern_size, align 4, !tbaa !5
  %cmp42 = icmp ne i32 %56, 0
  br i1 %cmp42, label %land.lhs.true, label %lor.lhs.false.47

land.lhs.true:                                    ; preds = %lor.lhs.false.41
  %57 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %dash_pattern = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %57, i32 0, i32 85
  %arraydecay = getelementptr inbounds [11 x float], [11 x float]* %dash_pattern, i32 0, i32 0
  %58 = bitcast float* %arraydecay to i8*
  %59 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %line_params43 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %59, i32 0, i32 3
  %dash44 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params43, i32 0, i32 11
  %pattern = getelementptr inbounds %struct.gx_dash_params_s, %struct.gx_dash_params_s* %dash44, i32 0, i32 0
  %60 = load float*, float** %pattern, align 8, !tbaa !204
  %61 = bitcast float* %60 to i8*
  %62 = load i32, i32* %pattern_size, align 4, !tbaa !5
  %conv = sext i32 %62 to i64
  %mul = mul i64 %conv, 4
  %call45 = call i32 @memcmp(i8* %58, i8* %61, i64 %mul) #7
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.then.79, label %lor.lhs.false.47

lor.lhs.false.47:                                 ; preds = %land.lhs.true, %lor.lhs.false.41
  %63 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %imager_state48 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %63, i32 0, i32 80
  %line_params49 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state48, i32 0, i32 3
  %dash50 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params49, i32 0, i32 11
  %offset = getelementptr inbounds %struct.gx_dash_params_s, %struct.gx_dash_params_s* %dash50, i32 0, i32 2
  %64 = load float, float* %offset, align 4, !tbaa !205
  %65 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %line_params51 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %65, i32 0, i32 3
  %dash52 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params51, i32 0, i32 11
  %offset53 = getelementptr inbounds %struct.gx_dash_params_s, %struct.gx_dash_params_s* %dash52, i32 0, i32 2
  %66 = load float, float* %offset53, align 4, !tbaa !206
  %cmp54 = fcmp une float %64, %66
  br i1 %cmp54, label %if.then.79, label %lor.lhs.false.56

lor.lhs.false.56:                                 ; preds = %lor.lhs.false.47
  %67 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %imager_state57 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %67, i32 0, i32 80
  %line_params58 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state57, i32 0, i32 3
  %dash59 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params58, i32 0, i32 11
  %adapt = getelementptr inbounds %struct.gx_dash_params_s, %struct.gx_dash_params_s* %dash59, i32 0, i32 3
  %68 = load i32, i32* %adapt, align 4, !tbaa !123
  %69 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %line_params60 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %69, i32 0, i32 3
  %dash61 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params60, i32 0, i32 11
  %adapt62 = getelementptr inbounds %struct.gx_dash_params_s, %struct.gx_dash_params_s* %dash61, i32 0, i32 3
  %70 = load i32, i32* %adapt62, align 4, !tbaa !207
  %cmp63 = icmp ne i32 %68, %70
  br i1 %cmp63, label %if.then.79, label %lor.lhs.false.65

lor.lhs.false.65:                                 ; preds = %lor.lhs.false.56
  %71 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %imager_state66 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %71, i32 0, i32 80
  %line_params67 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state66, i32 0, i32 3
  %dot_length = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params67, i32 0, i32 8
  %72 = load float, float* %dot_length, align 4, !tbaa !208
  %73 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %line_params68 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %73, i32 0, i32 3
  %dot_length69 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params68, i32 0, i32 8
  %74 = load float, float* %dot_length69, align 4, !tbaa !209
  %cmp70 = fcmp une float %72, %74
  br i1 %cmp70, label %if.then.79, label %lor.lhs.false.72

lor.lhs.false.72:                                 ; preds = %lor.lhs.false.65
  %75 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %imager_state73 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %75, i32 0, i32 80
  %line_params74 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state73, i32 0, i32 3
  %dot_length_absolute = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params74, i32 0, i32 9
  %76 = load i32, i32* %dot_length_absolute, align 4, !tbaa !124
  %77 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %line_params75 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %77, i32 0, i32 3
  %dot_length_absolute76 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params75, i32 0, i32 9
  %78 = load i32, i32* %dot_length_absolute76, align 4, !tbaa !210
  %cmp77 = icmp ne i32 %76, %78
  br i1 %cmp77, label %if.then.79, label %if.end.125

if.then.79:                                       ; preds = %lor.lhs.false.72, %lor.lhs.false.65, %lor.lhs.false.56, %lor.lhs.false.47, %land.lhs.true, %if.end.36
  %79 = load i32, i32* %pattern_size, align 4, !tbaa !5
  %cmp80 = icmp sgt i32 %79, 11
  br i1 %cmp80, label %if.then.82, label %if.end.84

if.then.82:                                       ; preds = %if.then.79
  %80 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %81 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %82 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %83 = load %struct.gx_stroke_params_s*, %struct.gx_stroke_params_s** %params.addr, align 8, !tbaa !1
  %84 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %85 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call83 = call i32 @gx_default_stroke_path(%struct.gx_device_s* %80, %struct.gs_imager_state_s* %81, %struct.gx_path_s* %82, %struct.gx_stroke_params_s* %83, %struct.gx_device_color_s* %84, %struct.gx_clip_path_s* %85) #5
  store i32 %call83, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.410

if.end.84:                                        ; preds = %if.then.79
  %86 = load i32, i32* %unknown, align 4, !tbaa !5
  %or85 = or i32 %86, 4096
  store i32 %or85, i32* %unknown, align 4, !tbaa !5
  %87 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %dash_pattern86 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %87, i32 0, i32 85
  %arraydecay87 = getelementptr inbounds [11 x float], [11 x float]* %dash_pattern86, i32 0, i32 0
  %88 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %imager_state88 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %88, i32 0, i32 80
  %line_params89 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state88, i32 0, i32 3
  %dash90 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params89, i32 0, i32 11
  %pattern91 = getelementptr inbounds %struct.gx_dash_params_s, %struct.gx_dash_params_s* %dash90, i32 0, i32 0
  store float* %arraydecay87, float** %pattern91, align 8, !tbaa !211
  %89 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %imager_state92 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %89, i32 0, i32 80
  %line_params93 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state92, i32 0, i32 3
  %dash94 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params93, i32 0, i32 11
  %90 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %line_params95 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %90, i32 0, i32 3
  %dash96 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params95, i32 0, i32 11
  %pattern97 = getelementptr inbounds %struct.gx_dash_params_s, %struct.gx_dash_params_s* %dash96, i32 0, i32 0
  %91 = load float*, float** %pattern97, align 8, !tbaa !204
  %92 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %line_params98 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %92, i32 0, i32 3
  %dash99 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params98, i32 0, i32 11
  %pattern_size100 = getelementptr inbounds %struct.gx_dash_params_s, %struct.gx_dash_params_s* %dash99, i32 0, i32 1
  %93 = load i32, i32* %pattern_size100, align 4, !tbaa !201
  %94 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %line_params101 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %94, i32 0, i32 3
  %dash102 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params101, i32 0, i32 11
  %offset103 = getelementptr inbounds %struct.gx_dash_params_s, %struct.gx_dash_params_s* %dash102, i32 0, i32 2
  %95 = load float, float* %offset103, align 4, !tbaa !206
  %conv104 = fpext float %95 to double
  %call105 = call i32 @gx_set_dash(%struct.gx_dash_params_s* %dash94, float* %91, i32 %93, double %conv104, %struct.gs_memory_s* null) #5
  %96 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %imager_state106 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %96, i32 0, i32 80
  %line_params107 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state106, i32 0, i32 3
  %dash108 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params107, i32 0, i32 11
  %pattern109 = getelementptr inbounds %struct.gx_dash_params_s, %struct.gx_dash_params_s* %dash108, i32 0, i32 0
  store float* null, float** %pattern109, align 8, !tbaa !211
  %97 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %line_params110 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %97, i32 0, i32 3
  %dash111 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params110, i32 0, i32 11
  %adapt112 = getelementptr inbounds %struct.gx_dash_params_s, %struct.gx_dash_params_s* %dash111, i32 0, i32 3
  %98 = load i32, i32* %adapt112, align 4, !tbaa !207
  %99 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %imager_state113 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %99, i32 0, i32 80
  %line_params114 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state113, i32 0, i32 3
  %dash115 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params114, i32 0, i32 11
  %adapt116 = getelementptr inbounds %struct.gx_dash_params_s, %struct.gx_dash_params_s* %dash115, i32 0, i32 3
  store i32 %98, i32* %adapt116, align 4, !tbaa !212
  %100 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %imager_state117 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %100, i32 0, i32 80
  %line_params118 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state117, i32 0, i32 3
  %101 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %line_params119 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %101, i32 0, i32 3
  %dot_length120 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params119, i32 0, i32 8
  %102 = load float, float* %dot_length120, align 4, !tbaa !209
  %conv121 = fpext float %102 to double
  %103 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %line_params122 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %103, i32 0, i32 3
  %dot_length_absolute123 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params122, i32 0, i32 9
  %104 = load i32, i32* %dot_length_absolute123, align 4, !tbaa !210
  %call124 = call i32 @gx_set_dot_length(%struct.gx_line_params_s* %line_params118, double %conv121, i32 %104) #5
  br label %if.end.125

if.end.125:                                       ; preds = %if.end.84, %lor.lhs.false.72
  %105 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %imager_state126 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %105, i32 0, i32 80
  %line_params127 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state126, i32 0, i32 3
  %start_cap = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params127, i32 0, i32 1
  %106 = load i32, i32* %start_cap, align 4, !tbaa !108
  %107 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %line_params128 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %107, i32 0, i32 3
  %start_cap129 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params128, i32 0, i32 1
  %108 = load i32, i32* %start_cap129, align 4, !tbaa !213
  %cmp130 = icmp ne i32 %106, %108
  br i1 %cmp130, label %if.then.153, label %lor.lhs.false.132

lor.lhs.false.132:                                ; preds = %if.end.125
  %109 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %imager_state133 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %109, i32 0, i32 80
  %line_params134 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state133, i32 0, i32 3
  %join = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params134, i32 0, i32 4
  %110 = load i32, i32* %join, align 4, !tbaa !109
  %111 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %line_params135 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %111, i32 0, i32 3
  %join136 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params135, i32 0, i32 4
  %112 = load i32, i32* %join136, align 4, !tbaa !214
  %cmp137 = icmp ne i32 %110, %112
  br i1 %cmp137, label %if.then.153, label %lor.lhs.false.139

lor.lhs.false.139:                                ; preds = %lor.lhs.false.132
  %113 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %imager_state140 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %113, i32 0, i32 80
  %line_params141 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state140, i32 0, i32 3
  %end_cap = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params141, i32 0, i32 2
  %114 = load i32, i32* %end_cap, align 4, !tbaa !110
  %115 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %line_params142 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %115, i32 0, i32 3
  %end_cap143 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params142, i32 0, i32 2
  %116 = load i32, i32* %end_cap143, align 4, !tbaa !215
  %cmp144 = icmp ne i32 %114, %116
  br i1 %cmp144, label %if.then.153, label %lor.lhs.false.146

lor.lhs.false.146:                                ; preds = %lor.lhs.false.139
  %117 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %imager_state147 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %117, i32 0, i32 80
  %line_params148 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state147, i32 0, i32 3
  %dash_cap = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params148, i32 0, i32 3
  %118 = load i32, i32* %dash_cap, align 4, !tbaa !111
  %119 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %line_params149 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %119, i32 0, i32 3
  %dash_cap150 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params149, i32 0, i32 3
  %120 = load i32, i32* %dash_cap150, align 4, !tbaa !216
  %cmp151 = icmp ne i32 %118, %120
  br i1 %cmp151, label %if.then.153, label %if.end.175

if.then.153:                                      ; preds = %lor.lhs.false.146, %lor.lhs.false.139, %lor.lhs.false.132, %if.end.125
  %121 = load i32, i32* %unknown, align 4, !tbaa !5
  %or154 = or i32 %121, 1
  store i32 %or154, i32* %unknown, align 4, !tbaa !5
  %122 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %line_params155 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %122, i32 0, i32 3
  %start_cap156 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params155, i32 0, i32 1
  %123 = load i32, i32* %start_cap156, align 4, !tbaa !213
  %124 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %imager_state157 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %124, i32 0, i32 80
  %line_params158 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state157, i32 0, i32 3
  %start_cap159 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params158, i32 0, i32 1
  store i32 %123, i32* %start_cap159, align 4, !tbaa !108
  %125 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %line_params160 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %125, i32 0, i32 3
  %end_cap161 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params160, i32 0, i32 2
  %126 = load i32, i32* %end_cap161, align 4, !tbaa !215
  %127 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %imager_state162 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %127, i32 0, i32 80
  %line_params163 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state162, i32 0, i32 3
  %end_cap164 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params163, i32 0, i32 2
  store i32 %126, i32* %end_cap164, align 4, !tbaa !110
  %128 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %line_params165 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %128, i32 0, i32 3
  %dash_cap166 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params165, i32 0, i32 3
  %129 = load i32, i32* %dash_cap166, align 4, !tbaa !216
  %130 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %imager_state167 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %130, i32 0, i32 80
  %line_params168 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state167, i32 0, i32 3
  %dash_cap169 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params168, i32 0, i32 3
  store i32 %129, i32* %dash_cap169, align 4, !tbaa !111
  %131 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %line_params170 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %131, i32 0, i32 3
  %join171 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params170, i32 0, i32 4
  %132 = load i32, i32* %join171, align 4, !tbaa !214
  %133 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %imager_state172 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %133, i32 0, i32 80
  %line_params173 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state172, i32 0, i32 3
  %join174 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params173, i32 0, i32 4
  store i32 %132, i32* %join174, align 4, !tbaa !109
  br label %if.end.175

if.end.175:                                       ; preds = %if.then.153, %lor.lhs.false.146
  %134 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %135 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %136 = load %struct.gx_stroke_params_s*, %struct.gx_stroke_params_s** %params.addr, align 8, !tbaa !1
  %flatness = getelementptr inbounds %struct.gx_stroke_params_s, %struct.gx_stroke_params_s* %136, i32 0, i32 0
  %137 = load float, float* %flatness, align 4, !tbaa !217
  %conv176 = fpext float %137 to double
  %138 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %fill_adjust = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %138, i32 0, i32 28
  %139 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  call void @cmd_check_fill_known(%struct.gx_device_clist_writer_s* %134, %struct.gs_imager_state_s* %135, double %conv176, %struct.gs_fixed_point_s* %fill_adjust, %struct.gx_clip_path_s* %139, i32* %unknown) #5
  %140 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %imager_state177 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %140, i32 0, i32 80
  %line_params178 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state177, i32 0, i32 3
  %half_width = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params178, i32 0, i32 0
  %141 = load float, float* %half_width, align 4, !tbaa !219
  %142 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %line_params179 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %142, i32 0, i32 3
  %half_width180 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params179, i32 0, i32 0
  %143 = load float, float* %half_width180, align 4, !tbaa !220
  %cmp181 = fcmp une float %141, %143
  br i1 %cmp181, label %if.then.183, label %if.end.190

if.then.183:                                      ; preds = %if.end.175
  %144 = load i32, i32* %unknown, align 4, !tbaa !5
  %or184 = or i32 %144, 8
  store i32 %or184, i32* %unknown, align 4, !tbaa !5
  %145 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %line_params185 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %145, i32 0, i32 3
  %half_width186 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params185, i32 0, i32 0
  %146 = load float, float* %half_width186, align 4, !tbaa !220
  %147 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %imager_state187 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %147, i32 0, i32 80
  %line_params188 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state187, i32 0, i32 3
  %half_width189 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params188, i32 0, i32 0
  store float %146, float* %half_width189, align 4, !tbaa !219
  br label %if.end.190

if.end.190:                                       ; preds = %if.then.183, %if.end.175
  %148 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %imager_state191 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %148, i32 0, i32 80
  %line_params192 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state191, i32 0, i32 3
  %miter_limit = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params192, i32 0, i32 6
  %149 = load float, float* %miter_limit, align 4, !tbaa !221
  %150 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %line_params193 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %150, i32 0, i32 3
  %miter_limit194 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params193, i32 0, i32 6
  %151 = load float, float* %miter_limit194, align 4, !tbaa !222
  %cmp195 = fcmp une float %149, %151
  br i1 %cmp195, label %if.then.197, label %if.end.205

if.then.197:                                      ; preds = %if.end.190
  %152 = load i32, i32* %unknown, align 4, !tbaa !5
  %or198 = or i32 %152, 16
  store i32 %or198, i32* %unknown, align 4, !tbaa !5
  %153 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %imager_state199 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %153, i32 0, i32 80
  %line_params200 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state199, i32 0, i32 3
  %154 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %line_params201 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %154, i32 0, i32 3
  %miter_limit202 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params201, i32 0, i32 6
  %155 = load float, float* %miter_limit202, align 4, !tbaa !222
  %conv203 = fpext float %155 to double
  %call204 = call i32 @gx_set_miter_limit(%struct.gx_line_params_s* %line_params200, double %conv203) #5
  br label %if.end.205

if.end.205:                                       ; preds = %if.then.197, %if.end.190
  %156 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %imager_state206 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %156, i32 0, i32 80
  %ctm = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state206, i32 0, i32 5
  %xx = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm, i32 0, i32 0
  %157 = load float, float* %xx, align 4, !tbaa !223
  %158 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm207 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %158, i32 0, i32 5
  %xx208 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm207, i32 0, i32 0
  %159 = load float, float* %xx208, align 4, !tbaa !224
  %cmp209 = fcmp une float %157, %159
  br i1 %cmp209, label %if.then.246, label %lor.lhs.false.211

lor.lhs.false.211:                                ; preds = %if.end.205
  %160 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %imager_state212 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %160, i32 0, i32 80
  %ctm213 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state212, i32 0, i32 5
  %xy = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm213, i32 0, i32 1
  %161 = load float, float* %xy, align 4, !tbaa !225
  %162 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm214 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %162, i32 0, i32 5
  %xy215 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm214, i32 0, i32 1
  %163 = load float, float* %xy215, align 4, !tbaa !226
  %cmp216 = fcmp une float %161, %163
  br i1 %cmp216, label %if.then.246, label %lor.lhs.false.218

lor.lhs.false.218:                                ; preds = %lor.lhs.false.211
  %164 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %imager_state219 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %164, i32 0, i32 80
  %ctm220 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state219, i32 0, i32 5
  %yx = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm220, i32 0, i32 2
  %165 = load float, float* %yx, align 4, !tbaa !227
  %166 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm221 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %166, i32 0, i32 5
  %yx222 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm221, i32 0, i32 2
  %167 = load float, float* %yx222, align 4, !tbaa !228
  %cmp223 = fcmp une float %165, %167
  br i1 %cmp223, label %if.then.246, label %lor.lhs.false.225

lor.lhs.false.225:                                ; preds = %lor.lhs.false.218
  %168 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %imager_state226 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %168, i32 0, i32 80
  %ctm227 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state226, i32 0, i32 5
  %yy = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm227, i32 0, i32 3
  %169 = load float, float* %yy, align 4, !tbaa !229
  %170 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm228 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %170, i32 0, i32 5
  %yy229 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm228, i32 0, i32 3
  %171 = load float, float* %yy229, align 4, !tbaa !230
  %cmp230 = fcmp une float %169, %171
  br i1 %cmp230, label %if.then.246, label %lor.lhs.false.232

lor.lhs.false.232:                                ; preds = %lor.lhs.false.225
  %172 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %imager_state233 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %172, i32 0, i32 80
  %ctm234 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state233, i32 0, i32 5
  %tx = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm234, i32 0, i32 4
  %173 = load float, float* %tx, align 4, !tbaa !231
  %174 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm235 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %174, i32 0, i32 5
  %tx236 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm235, i32 0, i32 4
  %175 = load float, float* %tx236, align 4, !tbaa !232
  %cmp237 = fcmp une float %173, %175
  br i1 %cmp237, label %if.then.246, label %lor.lhs.false.239

lor.lhs.false.239:                                ; preds = %lor.lhs.false.232
  %176 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %imager_state240 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %176, i32 0, i32 80
  %ctm241 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state240, i32 0, i32 5
  %ty = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm241, i32 0, i32 5
  %177 = load float, float* %ty, align 4, !tbaa !233
  %178 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm242 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %178, i32 0, i32 5
  %ty243 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm242, i32 0, i32 5
  %179 = load float, float* %ty243, align 4, !tbaa !234
  %cmp244 = fcmp une float %177, %179
  br i1 %cmp244, label %if.then.246, label %if.end.251

if.then.246:                                      ; preds = %lor.lhs.false.239, %lor.lhs.false.232, %lor.lhs.false.225, %lor.lhs.false.218, %lor.lhs.false.211, %if.end.205
  %180 = load i32, i32* %unknown, align 4, !tbaa !5
  %or247 = or i32 %180, 2048
  store i32 %or247, i32* %unknown, align 4, !tbaa !5
  %181 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %imager_state248 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %181, i32 0, i32 80
  %ctm249 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state248, i32 0, i32 5
  %182 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm250 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %182, i32 0, i32 5
  %183 = bitcast %struct.gs_matrix_fixed_s* %ctm249 to i8*
  %184 = bitcast %struct.gs_matrix_fixed_s* %ctm250 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %183, i8* %184, i64 36, i32 4, i1 false), !tbaa.struct !235
  br label %if.end.251

if.end.251:                                       ; preds = %if.then.246, %lor.lhs.false.239
  %185 = load i32, i32* %unknown, align 4, !tbaa !5
  %tobool252 = icmp ne i32 %185, 0
  br i1 %tobool252, label %if.then.253, label %if.end.254

if.then.253:                                      ; preds = %if.end.251
  %186 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %187 = load i32, i32* %unknown, align 4, !tbaa !5
  call void @cmd_clear_known(%struct.gx_device_clist_writer_s* %186, i32 %187) #5
  br label %if.end.254

if.end.254:                                       ; preds = %if.then.253, %if.end.251
  %188 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %permanent_error = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %188, i32 0, i32 95
  %189 = load i32, i32* %permanent_error, align 4, !tbaa !171
  %cmp255 = icmp slt i32 %189, 0
  br i1 %cmp255, label %if.then.257, label %if.end.259

if.then.257:                                      ; preds = %if.end.254
  %190 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %permanent_error258 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %190, i32 0, i32 95
  %191 = load i32, i32* %permanent_error258, align 4, !tbaa !171
  store i32 %191, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.410

if.end.259:                                       ; preds = %if.end.254
  %192 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pdf14_needed = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %192, i32 0, i32 81
  %193 = load i32, i32* %pdf14_needed, align 4, !tbaa !177
  %tobool260 = icmp ne i32 %193, 0
  br i1 %tobool260, label %if.then.261, label %if.end.293

if.then.261:                                      ; preds = %if.end.259
  %194 = bitcast %struct.gs_int_rect_s* %trans_bbox to i8*
  call void @llvm.lifetime.start(i64 16, i8* %194) #1
  %195 = bitcast i32* %rx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %195) #1
  %p262 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p262, i32 0, i32 0
  %196 = load i32, i32* %x, align 4, !tbaa !127
  %shr263 = ashr i32 %196, 8
  %sub264 = sub nsw i32 %shr263, 1
  store i32 %sub264, i32* %rx, align 4, !tbaa !5
  %197 = bitcast i32* %rwidth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %197) #1
  %q265 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 1
  %x266 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q265, i32 0, i32 0
  %198 = load i32, i32* %x266, align 4, !tbaa !129
  %add267 = add nsw i32 %198, 255
  %shr268 = ashr i32 %add267, 8
  %199 = load i32, i32* %rx, align 4, !tbaa !5
  %sub269 = sub nsw i32 %shr268, %199
  %add270 = add nsw i32 %sub269, 1
  store i32 %add270, i32* %rwidth, align 4, !tbaa !5
  br label %do.body.271

do.body.271:                                      ; preds = %if.then.261
  %200 = load i32, i32* %rwidth, align 4, !tbaa !5
  %201 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %201, i32 0, i32 13
  %202 = load i32, i32* %width, align 4, !tbaa !81
  %203 = load i32, i32* %rx, align 4, !tbaa !5
  %sub272 = sub nsw i32 %202, %203
  %cmp273 = icmp sgt i32 %200, %sub272
  br i1 %cmp273, label %if.then.275, label %if.end.278

if.then.275:                                      ; preds = %do.body.271
  %204 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %width276 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %204, i32 0, i32 13
  %205 = load i32, i32* %width276, align 4, !tbaa !81
  %206 = load i32, i32* %rx, align 4, !tbaa !5
  %sub277 = sub nsw i32 %205, %206
  store i32 %sub277, i32* %rwidth, align 4, !tbaa !5
  br label %if.end.278

if.end.278:                                       ; preds = %if.then.275, %do.body.271
  br label %do.cond.279

do.cond.279:                                      ; preds = %if.end.278
  br label %do.end.280

do.end.280:                                       ; preds = %do.cond.279
  %207 = load i32, i32* %rx, align 4, !tbaa !5
  %p281 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %trans_bbox, i32 0, i32 0
  %x282 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p281, i32 0, i32 0
  store i32 %207, i32* %x282, align 4, !tbaa !178
  %208 = load i32, i32* %rx, align 4, !tbaa !5
  %209 = load i32, i32* %rwidth, align 4, !tbaa !5
  %add283 = add nsw i32 %208, %209
  %sub284 = sub nsw i32 %add283, 1
  %q285 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %trans_bbox, i32 0, i32 1
  %x286 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q285, i32 0, i32 0
  store i32 %sub284, i32* %x286, align 4, !tbaa !179
  %210 = load i32, i32* %ry, align 4, !tbaa !5
  %p287 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %trans_bbox, i32 0, i32 0
  %y288 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p287, i32 0, i32 1
  store i32 %210, i32* %y288, align 4, !tbaa !180
  %211 = load i32, i32* %ry, align 4, !tbaa !5
  %212 = load i32, i32* %rheight, align 4, !tbaa !5
  %add289 = add nsw i32 %211, %212
  %sub290 = sub nsw i32 %add289, 1
  %q291 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %trans_bbox, i32 0, i32 1
  %y292 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q291, i32 0, i32 1
  store i32 %sub290, i32* %y292, align 4, !tbaa !181
  %213 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  call void @clist_update_trans_bbox(%struct.gx_device_clist_writer_s* %213, %struct.gs_int_rect_s* %trans_bbox) #5
  %214 = bitcast i32* %rwidth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %214) #1
  %215 = bitcast i32* %rx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %215) #1
  %216 = bitcast %struct.gs_int_rect_s* %trans_bbox to i8*
  call void @llvm.lifetime.end(i64 16, i8* %216) #1
  br label %if.end.293

if.end.293:                                       ; preds = %do.end.280, %if.end.259
  %217 = load i32, i32* %ry, align 4, !tbaa !5
  %y294 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  store i32 %217, i32* %y294, align 4, !tbaa !86
  %218 = load i32, i32* %rheight, align 4, !tbaa !5
  %height295 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  store i32 %218, i32* %height295, align 4, !tbaa !172
  %y296 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %219 = load i32, i32* %y296, align 4, !tbaa !86
  %height297 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %220 = load i32, i32* %height297, align 4, !tbaa !172
  %add298 = add nsw i32 %219, %220
  %yend = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 2
  store i32 %add298, i32* %yend, align 4, !tbaa !87
  %221 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %page_info = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %221, i32 0, i32 58
  %band_params = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info, i32 0, i32 8
  %BandHeight = getelementptr inbounds %struct.gx_band_params_s, %struct.gx_band_params_s* %band_params, i32 0, i32 1
  %222 = load i32, i32* %BandHeight, align 4, !tbaa !125
  %band_height = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  store i32 %222, i32* %band_height, align 4, !tbaa !173
  %yend299 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 2
  %223 = load i32, i32* %yend299, align 4, !tbaa !87
  %y300 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %224 = load i32, i32* %y300, align 4, !tbaa !86
  %sub301 = sub nsw i32 %223, %224
  %band_height302 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  %225 = load i32, i32* %band_height302, align 4, !tbaa !173
  %add303 = add nsw i32 %sub301, %225
  %sub304 = sub nsw i32 %add303, 1
  %band_height305 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  %226 = load i32, i32* %band_height305, align 4, !tbaa !173
  %div = sdiv i32 %sub304, %226
  %rect_nbands = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 8
  store i32 %div, i32* %rect_nbands, align 4, !tbaa !60
  br label %do.body.306

do.body.306:                                      ; preds = %do.cond.404, %if.end.293
  %227 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %227) #1
  %y307 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %228 = load i32, i32* %y307, align 4, !tbaa !86
  %band_height308 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  %229 = load i32, i32* %band_height308, align 4, !tbaa !173
  %div309 = sdiv i32 %228, %229
  %band = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 5
  store i32 %div309, i32* %band, align 4, !tbaa !174
  %230 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %states = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %230, i32 0, i32 66
  %231 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %states, align 8, !tbaa !62
  %band310 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 5
  %232 = load i32, i32* %band310, align 4, !tbaa !174
  %idx.ext = sext i32 %232 to i64
  %add.ptr = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %231, i64 %idx.ext
  %pcls = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  store %struct.gx_clist_state_s* %add.ptr, %struct.gx_clist_state_s** %pcls, align 8, !tbaa !175
  %band311 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 5
  %233 = load i32, i32* %band311, align 4, !tbaa !174
  %add312 = add nsw i32 %233, 1
  %band_height313 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  %234 = load i32, i32* %band_height313, align 4, !tbaa !173
  %mul314 = mul nsw i32 %add312, %234
  %band_end = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 7
  store i32 %mul314, i32* %band_end, align 4, !tbaa !176
  %band_end315 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 7
  %235 = load i32, i32* %band_end315, align 4, !tbaa !176
  %yend316 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 2
  %236 = load i32, i32* %yend316, align 4, !tbaa !87
  %cmp317 = icmp slt i32 %235, %236
  br i1 %cmp317, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.body.306
  %band_end319 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 7
  %237 = load i32, i32* %band_end319, align 4, !tbaa !176
  br label %cond.end

cond.false:                                       ; preds = %do.body.306
  %yend320 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 2
  %238 = load i32, i32* %yend320, align 4, !tbaa !87
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %237, %cond.true ], [ %238, %cond.false ]
  %y321 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %239 = load i32, i32* %y321, align 4, !tbaa !86
  %sub322 = sub nsw i32 %cond, %239
  %height323 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  store i32 %sub322, i32* %height323, align 4, !tbaa !172
  %pcls324 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %240 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls324, align 8, !tbaa !175
  %known = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %240, i32 0, i32 14
  %241 = load i32, i32* %known, align 4, !tbaa !95
  %neg = xor i32 %241, -1
  %and325 = and i32 %neg, 16383
  %tobool326 = icmp ne i32 %and325, 0
  br i1 %tobool326, label %cond.true.327, label %cond.false.330

cond.true.327:                                    ; preds = %cond.end
  %242 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pcls328 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %243 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls328, align 8, !tbaa !175
  %call329 = call i32 @cmd_write_unknown(%struct.gx_device_clist_writer_s* %242, %struct.gx_clist_state_s* %243, i32 16383) #5
  br label %cond.end.331

cond.false.330:                                   ; preds = %cond.end
  br label %cond.end.331

cond.end.331:                                     ; preds = %cond.false.330, %cond.true.327
  %cond332 = phi i32 [ %call329, %cond.true.327 ], [ 0, %cond.false.330 ]
  store i32 %cond332, i32* %code, align 4, !tbaa !5
  %cmp333 = icmp slt i32 %cond332, 0
  br i1 %cmp333, label %if.then.360, label %lor.lhs.false.335

lor.lhs.false.335:                                ; preds = %cond.end.331
  %pcls336 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %244 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls336, align 8, !tbaa !175
  %clip_enabled = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %244, i32 0, i32 11
  %245 = load i16, i16* %clip_enabled, align 2, !tbaa !141
  %conv337 = sext i16 %245 to i32
  %246 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %cmp338 = icmp ne %struct.gx_clip_path_s* %246, null
  %conv339 = zext i1 %cmp338 to i32
  %xor = xor i32 %conv339, 1
  %cmp340 = icmp eq i32 %conv337, %xor
  br i1 %cmp340, label %land.lhs.true.342, label %cond.false.350

land.lhs.true.342:                                ; preds = %lor.lhs.false.335
  %247 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pcls343 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %248 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls343, align 8, !tbaa !175
  %249 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %cmp344 = icmp ne %struct.gx_clip_path_s* %249, null
  %conv345 = zext i1 %cmp344 to i32
  %call346 = call i32 @cmd_put_enable_clip(%struct.gx_device_clist_writer_s* %247, %struct.gx_clist_state_s* %248, i32 %conv345) #5
  %cmp347 = icmp slt i32 %call346, 0
  br i1 %cmp347, label %cond.true.349, label %cond.false.350

cond.true.349:                                    ; preds = %land.lhs.true.342
  %250 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %error_code = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %250, i32 0, i32 65
  %251 = load i32, i32* %error_code, align 4, !tbaa !74
  br label %cond.end.351

cond.false.350:                                   ; preds = %land.lhs.true.342, %lor.lhs.false.335
  br label %cond.end.351

cond.end.351:                                     ; preds = %cond.false.350, %cond.true.349
  %cond352 = phi i32 [ %251, %cond.true.349 ], [ 0, %cond.false.350 ]
  store i32 %cond352, i32* %code, align 4, !tbaa !5
  %cmp353 = icmp slt i32 %cond352, 0
  br i1 %cmp353, label %if.then.360, label %lor.lhs.false.355

lor.lhs.false.355:                                ; preds = %cond.end.351
  %252 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pcls356 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %253 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls356, align 8, !tbaa !175
  %254 = load i32, i32* %lop, align 4, !tbaa !5
  %call357 = call i32 @cmd_update_lop(%struct.gx_device_clist_writer_s* %252, %struct.gx_clist_state_s* %253, i32 %254) #5
  store i32 %call357, i32* %code, align 4, !tbaa !5
  %cmp358 = icmp slt i32 %call357, 0
  br i1 %cmp358, label %if.then.360, label %if.end.361

if.then.360:                                      ; preds = %lor.lhs.false.355, %cond.end.351, %cond.end.331
  %255 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %255, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.401

if.end.361:                                       ; preds = %lor.lhs.false.355
  %256 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pcls362 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %257 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls362, align 8, !tbaa !175
  %258 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %call363 = call i32 @cmd_put_drawing_color(%struct.gx_device_clist_writer_s* %256, %struct.gx_clist_state_s* %257, %struct.gx_device_color_s* %258, %struct.cmd_rects_enum_s* %re, i32 0) #5
  store i32 %call363, i32* %code, align 4, !tbaa !5
  %259 = load i32, i32* %code, align 4, !tbaa !5
  %cmp364 = icmp eq i32 %259, -28
  br i1 %cmp364, label %if.then.366, label %if.end.367

if.then.366:                                      ; preds = %if.end.361
  %260 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %260, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.401

if.end.367:                                       ; preds = %if.end.361
  %261 = load i32, i32* %code, align 4, !tbaa !5
  %cmp368 = icmp slt i32 %261, 0
  br i1 %cmp368, label %if.then.370, label %if.end.372

if.then.370:                                      ; preds = %if.end.367
  %262 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %263 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %264 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %265 = load %struct.gx_stroke_params_s*, %struct.gx_stroke_params_s** %params.addr, align 8, !tbaa !1
  %266 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %267 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call371 = call i32 @gx_default_stroke_path(%struct.gx_device_s* %262, %struct.gs_imager_state_s* %263, %struct.gx_path_s* %264, %struct.gx_stroke_params_s* %265, %struct.gx_device_color_s* %266, %struct.gx_clip_path_s* %267) #5
  store i32 %call371, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.401

if.end.372:                                       ; preds = %if.end.367
  %268 = load i32, i32* %slow_rop, align 4, !tbaa !5
  %pcls373 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %269 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls373, align 8, !tbaa !175
  %color_usage = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %269, i32 0, i32 16
  %slow_rop374 = getelementptr inbounds %struct.gx_colors_usage_s, %struct.gx_colors_usage_s* %color_usage, i32 0, i32 1
  %270 = load i32, i32* %slow_rop374, align 4, !tbaa !182
  %or375 = or i32 %270, %268
  store i32 %or375, i32* %slow_rop374, align 4, !tbaa !182
  %271 = bitcast i32* %ymin to i8*
  call void @llvm.lifetime.start(i64 4, i8* %271) #1
  %272 = bitcast i32* %ymax to i8*
  call void @llvm.lifetime.start(i64 4, i8* %272) #1
  %273 = load i32, i32* %pattern_size, align 4, !tbaa !5
  %tobool376 = icmp ne i32 %273, 0
  br i1 %tobool376, label %if.then.380, label %lor.lhs.false.377

lor.lhs.false.377:                                ; preds = %if.end.372
  %274 = load i32, i32* %expansion_code, align 4, !tbaa !5
  %cmp378 = icmp slt i32 %274, 0
  br i1 %cmp378, label %if.then.380, label %if.else.381

if.then.380:                                      ; preds = %lor.lhs.false.377, %if.end.372
  store i32 -2147483648, i32* %ymin, align 4, !tbaa !5
  store i32 2147483647, i32* %ymax, align 4, !tbaa !5
  br label %if.end.390

if.else.381:                                      ; preds = %lor.lhs.false.377
  %y382 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %275 = load i32, i32* %y382, align 4, !tbaa !86
  %276 = load i32, i32* %adjust_y, align 4, !tbaa !5
  %sub383 = sub nsw i32 %275, %276
  %shl384 = shl i32 %sub383, 8
  store i32 %shl384, i32* %ymin, align 4, !tbaa !5
  %y385 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %277 = load i32, i32* %y385, align 4, !tbaa !86
  %height386 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %278 = load i32, i32* %height386, align 4, !tbaa !172
  %add387 = add nsw i32 %277, %278
  %279 = load i32, i32* %adjust_y, align 4, !tbaa !5
  %add388 = add nsw i32 %add387, %279
  %shl389 = shl i32 %add388, 8
  store i32 %shl389, i32* %ymax, align 4, !tbaa !5
  br label %if.end.390

if.end.390:                                       ; preds = %if.else.381, %if.then.380
  %280 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pcls391 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %281 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls391, align 8, !tbaa !175
  %282 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %283 = load i32, i32* %ymin, align 4, !tbaa !5
  %284 = load i32, i32* %ymax, align 4, !tbaa !5
  %call392 = call i32 @cmd_put_path(%struct.gx_device_clist_writer_s* %280, %struct.gx_clist_state_s* %281, %struct.gx_path_s* %282, i32 %283, i32 %284, i8 zeroext -10, i32 0, i32 -1) #5
  store i32 %call392, i32* %code, align 4, !tbaa !5
  %285 = load i32, i32* %code, align 4, !tbaa !5
  %cmp393 = icmp slt i32 %285, 0
  br i1 %cmp393, label %if.then.395, label %if.end.396

if.then.395:                                      ; preds = %if.end.390
  %286 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %286, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.396:                                       ; preds = %if.end.390
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.396, %if.then.395
  %287 = bitcast i32* %ymax to i8*
  call void @llvm.lifetime.end(i64 4, i8* %287) #1
  %288 = bitcast i32* %ymin to i8*
  call void @llvm.lifetime.end(i64 4, i8* %288) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.401 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  %height398 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %289 = load i32, i32* %height398, align 4, !tbaa !172
  %y399 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %290 = load i32, i32* %y399, align 4, !tbaa !86
  %add400 = add nsw i32 %290, %289
  store i32 %add400, i32* %y399, align 4, !tbaa !86
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.401

cleanup.401:                                      ; preds = %cleanup.cont, %cleanup, %if.then.370, %if.then.366, %if.then.360
  %291 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %291) #1
  %cleanup.dest.402 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.402, label %cleanup.410 [
    i32 0, label %cleanup.cont.403
  ]

cleanup.cont.403:                                 ; preds = %cleanup.401
  br label %do.cond.404

do.cond.404:                                      ; preds = %cleanup.cont.403
  %y405 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %292 = load i32, i32* %y405, align 4, !tbaa !86
  %yend406 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 2
  %293 = load i32, i32* %yend406, align 4, !tbaa !87
  %cmp407 = icmp slt i32 %292, %293
  br i1 %cmp407, label %do.body.306, label %do.end.409

do.end.409:                                       ; preds = %do.cond.404
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.410

cleanup.410:                                      ; preds = %do.end.409, %cleanup.401, %if.then.257, %if.then.82, %if.then.34, %if.then
  %294 = bitcast %struct.cmd_rects_enum_s* %re to i8*
  call void @llvm.lifetime.end(i64 40, i8* %294) #1
  %295 = bitcast i32* %slow_rop to i8*
  call void @llvm.lifetime.end(i64 4, i8* %295) #1
  %296 = bitcast i32* %lop to i8*
  call void @llvm.lifetime.end(i64 4, i8* %296) #1
  %297 = bitcast i32* %rheight to i8*
  call void @llvm.lifetime.end(i64 4, i8* %297) #1
  %298 = bitcast i32* %ry to i8*
  call void @llvm.lifetime.end(i64 4, i8* %298) #1
  %299 = bitcast i32* %expansion_code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %299) #1
  %300 = bitcast i32* %adjust_y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %300) #1
  %301 = bitcast %struct.gs_fixed_point_s* %expansion to i8*
  call void @llvm.lifetime.end(i64 8, i8* %301) #1
  %302 = bitcast %struct.gs_fixed_rect_s* %bbox to i8*
  call void @llvm.lifetime.end(i64 16, i8* %302) #1
  %303 = bitcast i32* %unknown to i8*
  call void @llvm.lifetime.end(i64 4, i8* %303) #1
  %304 = bitcast i32* %pattern_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %304) #1
  %305 = bitcast %struct.gx_device_clist_writer_s** %cdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %305) #1
  %306 = load i32, i32* %retval
  ret i32 %306
}

declare i32 @gx_default_stroke_path(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*) #2

declare i32 @gx_stroke_path_expansion(%struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gs_fixed_point_s*) #2

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #4

declare i32 @gx_set_dash(%struct.gx_dash_params_s*, float*, i32, double, %struct.gs_memory_s*) #2

declare i32 @gx_set_dot_length(%struct.gx_line_params_s*, double, i32) #2

declare i32 @gx_set_miter_limit(%struct.gx_line_params_s*, double) #2

; Function Attrs: nounwind uwtable
define i32 @clist_fill_parallelogram(%struct.gx_device_s* %dev, i32 %px, i32 %py, i32 %ax, i32 %ay, i32 %bx, i32 %by, %struct.gx_device_color_s* %pdcolor, i32 %lop) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %px.addr = alloca i32, align 4
  %py.addr = alloca i32, align 4
  %ax.addr = alloca i32, align 4
  %ay.addr = alloca i32, align 4
  %bx.addr = alloca i32, align 4
  %by.addr = alloca i32, align 4
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %lop.addr = alloca i32, align 4
  %pts = alloca [3 x %struct.gs_fixed_point_s], align 16
  %code = alloca i32, align 4
  %r = alloca %struct.gs_int_rect_s, align 4
  %px_ = alloca i32, align 4
  %py_ = alloca i32, align 4
  %qx_ = alloca i32, align 4
  %qy_ = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %px, i32* %px.addr, align 4, !tbaa !5
  store i32 %py, i32* %py.addr, align 4, !tbaa !5
  store i32 %ax, i32* %ax.addr, align 4, !tbaa !5
  store i32 %ay, i32* %ay.addr, align 4, !tbaa !5
  store i32 %bx, i32* %bx.addr, align 4, !tbaa !5
  store i32 %by, i32* %by.addr, align 4, !tbaa !5
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store i32 %lop, i32* %lop.addr, align 4, !tbaa !5
  %0 = bitcast [3 x %struct.gs_fixed_point_s]* %pts to i8*
  call void @llvm.lifetime.start(i64 24, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load i32, i32* %ax.addr, align 4, !tbaa !5
  %3 = load i32, i32* %by.addr, align 4, !tbaa !5
  %or = or i32 %2, %3
  %cmp = icmp eq i32 %or, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i32, i32* %bx.addr, align 4, !tbaa !5
  %5 = load i32, i32* %ay.addr, align 4, !tbaa !5
  %or1 = or i32 %4, %5
  %cmp2 = icmp eq i32 %or1, 0
  br i1 %cmp2, label %if.then, label %if.end.53

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = bitcast %struct.gs_int_rect_s* %r to i8*
  call void @llvm.lifetime.start(i64 16, i8* %6) #1
  br label %do.body

do.body:                                          ; preds = %if.then
  %7 = bitcast i32* %px_ to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load i32, i32* %px.addr, align 4, !tbaa !5
  %conv = sext i32 %8 to i64
  %add = add nsw i64 %conv, 127
  %shr = ashr i64 %add, 8
  %conv3 = trunc i64 %shr to i32
  store i32 %conv3, i32* %px_, align 4, !tbaa !5
  %9 = bitcast i32* %py_ to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load i32, i32* %py.addr, align 4, !tbaa !5
  %conv4 = sext i32 %10 to i64
  %add5 = add nsw i64 %conv4, 127
  %shr6 = ashr i64 %add5, 8
  %conv7 = trunc i64 %shr6 to i32
  store i32 %conv7, i32* %py_, align 4, !tbaa !5
  %11 = bitcast i32* %qx_ to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load i32, i32* %px.addr, align 4, !tbaa !5
  %13 = load i32, i32* %ax.addr, align 4, !tbaa !5
  %add8 = add nsw i32 %12, %13
  %14 = load i32, i32* %bx.addr, align 4, !tbaa !5
  %add9 = add nsw i32 %add8, %14
  %conv10 = sext i32 %add9 to i64
  %add11 = add nsw i64 %conv10, 127
  %shr12 = ashr i64 %add11, 8
  %conv13 = trunc i64 %shr12 to i32
  store i32 %conv13, i32* %qx_, align 4, !tbaa !5
  %15 = bitcast i32* %qy_ to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load i32, i32* %py.addr, align 4, !tbaa !5
  %17 = load i32, i32* %ay.addr, align 4, !tbaa !5
  %add14 = add nsw i32 %16, %17
  %18 = load i32, i32* %by.addr, align 4, !tbaa !5
  %add15 = add nsw i32 %add14, %18
  %conv16 = sext i32 %add15 to i64
  %add17 = add nsw i64 %conv16, 127
  %shr18 = ashr i64 %add17, 8
  %conv19 = trunc i64 %shr18 to i32
  store i32 %conv19, i32* %qy_, align 4, !tbaa !5
  %19 = load i32, i32* %qx_, align 4, !tbaa !5
  %20 = load i32, i32* %px_, align 4, !tbaa !5
  %cmp20 = icmp slt i32 %19, %20
  br i1 %cmp20, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %do.body
  %21 = load i32, i32* %qx_, align 4, !tbaa !5
  %p = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %r, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p, i32 0, i32 0
  store i32 %21, i32* %x, align 4, !tbaa !178
  %22 = load i32, i32* %px_, align 4, !tbaa !5
  %q = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %r, i32 0, i32 1
  %x23 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q, i32 0, i32 0
  store i32 %22, i32* %x23, align 4, !tbaa !179
  br label %if.end

if.else:                                          ; preds = %do.body
  %23 = load i32, i32* %px_, align 4, !tbaa !5
  %p24 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %r, i32 0, i32 0
  %x25 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p24, i32 0, i32 0
  store i32 %23, i32* %x25, align 4, !tbaa !178
  %24 = load i32, i32* %qx_, align 4, !tbaa !5
  %q26 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %r, i32 0, i32 1
  %x27 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q26, i32 0, i32 0
  store i32 %24, i32* %x27, align 4, !tbaa !179
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.22
  %25 = load i32, i32* %qy_, align 4, !tbaa !5
  %26 = load i32, i32* %py_, align 4, !tbaa !5
  %cmp28 = icmp slt i32 %25, %26
  br i1 %cmp28, label %if.then.30, label %if.else.34

if.then.30:                                       ; preds = %if.end
  %27 = load i32, i32* %qy_, align 4, !tbaa !5
  %p31 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %r, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p31, i32 0, i32 1
  store i32 %27, i32* %y, align 4, !tbaa !180
  %28 = load i32, i32* %py_, align 4, !tbaa !5
  %q32 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %r, i32 0, i32 1
  %y33 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q32, i32 0, i32 1
  store i32 %28, i32* %y33, align 4, !tbaa !181
  br label %if.end.39

if.else.34:                                       ; preds = %if.end
  %29 = load i32, i32* %py_, align 4, !tbaa !5
  %p35 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %r, i32 0, i32 0
  %y36 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p35, i32 0, i32 1
  store i32 %29, i32* %y36, align 4, !tbaa !180
  %30 = load i32, i32* %qy_, align 4, !tbaa !5
  %q37 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %r, i32 0, i32 1
  %y38 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q37, i32 0, i32 1
  store i32 %30, i32* %y38, align 4, !tbaa !181
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.34, %if.then.30
  %31 = bitcast i32* %qy_ to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  %32 = bitcast i32* %qx_ to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #1
  %33 = bitcast i32* %py_ to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  %34 = bitcast i32* %px_ to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  br label %do.cond

do.cond:                                          ; preds = %if.end.39
  br label %do.end

do.end:                                           ; preds = %do.cond
  %35 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %35, i32 0, i32 0
  %36 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !8
  %fill_rectangle = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %36, i32 0, i32 5
  %37 = load i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)** %fill_rectangle, align 8, !tbaa !236
  %38 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %p40 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %r, i32 0, i32 0
  %x41 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p40, i32 0, i32 0
  %39 = load i32, i32* %x41, align 4, !tbaa !178
  %p42 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %r, i32 0, i32 0
  %y43 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p42, i32 0, i32 1
  %40 = load i32, i32* %y43, align 4, !tbaa !180
  %q44 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %r, i32 0, i32 1
  %x45 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q44, i32 0, i32 0
  %41 = load i32, i32* %x45, align 4, !tbaa !179
  %p46 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %r, i32 0, i32 0
  %x47 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p46, i32 0, i32 0
  %42 = load i32, i32* %x47, align 4, !tbaa !178
  %sub = sub nsw i32 %41, %42
  %q48 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %r, i32 0, i32 1
  %y49 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q48, i32 0, i32 1
  %43 = load i32, i32* %y49, align 4, !tbaa !181
  %p50 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %r, i32 0, i32 0
  %y51 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p50, i32 0, i32 1
  %44 = load i32, i32* %y51, align 4, !tbaa !180
  %sub52 = sub nsw i32 %43, %44
  %45 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %46 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %call = call i32 %37(%struct.gx_device_color_s* %38, i32 %39, i32 %40, i32 %sub, i32 %sub52, %struct.gx_device_s* %45, i32 %46, %struct.gx_rop_source_s* null) #5
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %47 = bitcast %struct.gs_int_rect_s* %r to i8*
  call void @llvm.lifetime.end(i64 16, i8* %47) #1
  br label %cleanup

if.end.53:                                        ; preds = %lor.lhs.false
  %48 = load i32, i32* %px.addr, align 4, !tbaa !5
  %49 = load i32, i32* %ax.addr, align 4, !tbaa !5
  %add54 = add nsw i32 %48, %49
  %arrayidx = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %pts, i32 0, i64 0
  %x55 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx, i32 0, i32 0
  store i32 %add54, i32* %x55, align 4, !tbaa !155
  %50 = load i32, i32* %py.addr, align 4, !tbaa !5
  %51 = load i32, i32* %ay.addr, align 4, !tbaa !5
  %add56 = add nsw i32 %50, %51
  %arrayidx57 = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %pts, i32 0, i64 0
  %y58 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx57, i32 0, i32 1
  store i32 %add56, i32* %y58, align 4, !tbaa !154
  %arrayidx59 = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %pts, i32 0, i64 0
  %x60 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx59, i32 0, i32 0
  %52 = load i32, i32* %x60, align 4, !tbaa !155
  %53 = load i32, i32* %bx.addr, align 4, !tbaa !5
  %add61 = add nsw i32 %52, %53
  %arrayidx62 = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %pts, i32 0, i64 1
  %x63 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx62, i32 0, i32 0
  store i32 %add61, i32* %x63, align 4, !tbaa !155
  %arrayidx64 = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %pts, i32 0, i64 0
  %y65 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx64, i32 0, i32 1
  %54 = load i32, i32* %y65, align 4, !tbaa !154
  %55 = load i32, i32* %by.addr, align 4, !tbaa !5
  %add66 = add nsw i32 %54, %55
  %arrayidx67 = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %pts, i32 0, i64 1
  %y68 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx67, i32 0, i32 1
  store i32 %add66, i32* %y68, align 4, !tbaa !154
  %56 = load i32, i32* %px.addr, align 4, !tbaa !5
  %57 = load i32, i32* %bx.addr, align 4, !tbaa !5
  %add69 = add nsw i32 %56, %57
  %arrayidx70 = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %pts, i32 0, i64 2
  %x71 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx70, i32 0, i32 0
  store i32 %add69, i32* %x71, align 4, !tbaa !155
  %58 = load i32, i32* %py.addr, align 4, !tbaa !5
  %59 = load i32, i32* %by.addr, align 4, !tbaa !5
  %add72 = add nsw i32 %58, %59
  %arrayidx73 = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %pts, i32 0, i64 2
  %y74 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx73, i32 0, i32 1
  store i32 %add72, i32* %y74, align 4, !tbaa !154
  %60 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %61 = load i32, i32* %px.addr, align 4, !tbaa !5
  %62 = load i32, i32* %py.addr, align 4, !tbaa !5
  %arraydecay = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %pts, i32 0, i32 0
  %63 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %64 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %call75 = call i32 @clist_put_polyfill(%struct.gx_device_s* %60, i32 %61, i32 %62, %struct.gs_fixed_point_s* %arraydecay, i32 3, %struct.gx_device_color_s* %63, i32 %64) #5
  store i32 %call75, i32* %code, align 4, !tbaa !5
  %65 = load i32, i32* %code, align 4, !tbaa !5
  %cmp76 = icmp sge i32 %65, 0
  br i1 %cmp76, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.53
  %66 = load i32, i32* %code, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %if.end.53
  %67 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %68 = load i32, i32* %px.addr, align 4, !tbaa !5
  %69 = load i32, i32* %py.addr, align 4, !tbaa !5
  %70 = load i32, i32* %ax.addr, align 4, !tbaa !5
  %71 = load i32, i32* %ay.addr, align 4, !tbaa !5
  %72 = load i32, i32* %bx.addr, align 4, !tbaa !5
  %73 = load i32, i32* %by.addr, align 4, !tbaa !5
  %74 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %75 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %call78 = call i32 @gx_default_fill_parallelogram(%struct.gx_device_s* %67, i32 %68, i32 %69, i32 %70, i32 %71, i32 %72, i32 %73, %struct.gx_device_color_s* %74, i32 %75) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %66, %cond.true ], [ %call78, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %do.end
  %76 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #1
  %77 = bitcast [3 x %struct.gs_fixed_point_s]* %pts to i8*
  call void @llvm.lifetime.end(i64 24, i8* %77) #1
  %78 = load i32, i32* %retval
  ret i32 %78
}

; Function Attrs: nounwind uwtable
define internal i32 @clist_put_polyfill(%struct.gx_device_s* %dev, i32 %px, i32 %py, %struct.gs_fixed_point_s* %points, i32 %num_points, %struct.gx_device_color_s* %pdcolor, i32 %lop) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %px.addr = alloca i32, align 4
  %py.addr = alloca i32, align 4
  %points.addr = alloca %struct.gs_fixed_point_s*, align 8
  %num_points.addr = alloca i32, align 4
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %lop.addr = alloca i32, align 4
  %path = alloca %struct.gx_path_s, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %code = alloca i32, align 4
  %cdev = alloca %struct.gx_device_clist_writer_s*, align 8
  %bbox = alloca %struct.gs_fixed_rect_s, align 4
  %ry = alloca i32, align 4
  %rheight = alloca i32, align 4
  %y0 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %slow_rop = alloca i32, align 4
  %re = alloca %struct.cmd_rects_enum_s, align 8
  %cleanup.dest.slot = alloca i32
  %trans_bbox = alloca %struct.gs_int_rect_s, align 4
  %rx = alloca i32, align 4
  %rwidth = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %px, i32* %px.addr, align 4, !tbaa !5
  store i32 %py, i32* %py.addr, align 4, !tbaa !5
  store %struct.gs_fixed_point_s* %points, %struct.gs_fixed_point_s** %points.addr, align 8, !tbaa !1
  store i32 %num_points, i32* %num_points.addr, align 4, !tbaa !5
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store i32 %lop, i32* %lop.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_path_s* %path to i8*
  call void @llvm.lifetime.start(i64 128, i8* %0) #1
  %1 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %2, i32 0, i32 3
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !237
  store %struct.gs_memory_s* %3, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast %struct.gx_device_clist_writer_s** %cdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %7 = bitcast %struct.gx_device_s* %6 to %union.gx_device_clist_s*
  %writer = bitcast %union.gx_device_clist_s* %7 to %struct.gx_device_clist_writer_s*
  store %struct.gx_device_clist_writer_s* %writer, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %8 = bitcast %struct.gs_fixed_rect_s* %bbox to i8*
  call void @llvm.lifetime.start(i64 16, i8* %8) #1
  %9 = bitcast i32* %ry to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %rheight to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %y0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast i32* %y1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast i32* %slow_rop to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %15 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %and = and i32 %15, 51
  %shl = shl i32 %and, 2
  %16 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %and1 = and i32 %16, -205
  %or = or i32 %shl, %and1
  %and2 = and i32 %or, -257
  %17 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %call = call i32 @cmd_slow_rop(%struct.gx_device_s* %14, i32 %and2, %struct.gx_device_color_s* %17) #5
  store i32 %call, i32* %slow_rop, align 4, !tbaa !5
  %18 = bitcast %struct.cmd_rects_enum_s* %re to i8*
  call void @llvm.lifetime.start(i64 40, i8* %18) #1
  %call3 = call i32 @gs_debug_c(i32 44) #5
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call4 = call i32 @gx_path_init_local_shared(%struct.gx_path_s* %path, %struct.gx_path_s* null, %struct.gs_memory_s* %19) #5
  %20 = load i32, i32* %px.addr, align 4, !tbaa !5
  %21 = load i32, i32* %py.addr, align 4, !tbaa !5
  %call5 = call i32 @gx_path_add_point(%struct.gx_path_s* %path, i32 %20, i32 %21) #5
  store i32 %call5, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %22 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %points.addr, align 8, !tbaa !1
  %23 = load i32, i32* %num_points.addr, align 4, !tbaa !5
  %call6 = call i32 @gx_path_add_lines_notes(%struct.gx_path_s* %path, %struct.gs_fixed_point_s* %22, i32 %23, i32 0) #5
  store i32 %call6, i32* %code, align 4, !tbaa !5
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %lor.lhs.false, %if.end
  br label %out

if.end.9:                                         ; preds = %lor.lhs.false
  %call10 = call i32 @gx_path_bbox(%struct.gx_path_s* %path, %struct.gs_fixed_rect_s* %bbox) #5
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 1
  %24 = load i32, i32* %y, align 4, !tbaa !128
  %shr = ashr i32 %24, 8
  %sub = sub nsw i32 %shr, 1
  store i32 %sub, i32* %ry, align 4, !tbaa !5
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 1
  %y11 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 1
  %25 = load i32, i32* %y11, align 4, !tbaa !130
  %add = add nsw i32 %25, 255
  %shr12 = ashr i32 %add, 8
  %26 = load i32, i32* %ry, align 4, !tbaa !5
  %sub13 = sub nsw i32 %shr12, %26
  %add14 = add nsw i32 %sub13, 1
  store i32 %add14, i32* %rheight, align 4, !tbaa !5
  br label %do.body

do.body:                                          ; preds = %if.end.9
  %27 = load i32, i32* %ry, align 4, !tbaa !5
  %cmp15 = icmp slt i32 %27, 0
  br i1 %cmp15, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %do.body
  %28 = load i32, i32* %ry, align 4, !tbaa !5
  %29 = load i32, i32* %rheight, align 4, !tbaa !5
  %add17 = add nsw i32 %29, %28
  store i32 %add17, i32* %rheight, align 4, !tbaa !5
  store i32 0, i32* %ry, align 4, !tbaa !5
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.18
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.19

do.body.19:                                       ; preds = %do.end
  %30 = load i32, i32* %rheight, align 4, !tbaa !5
  %31 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %31, i32 0, i32 14
  %32 = load i32, i32* %height, align 4, !tbaa !202
  %33 = load i32, i32* %ry, align 4, !tbaa !5
  %sub20 = sub nsw i32 %32, %33
  %cmp21 = icmp sgt i32 %30, %sub20
  br i1 %cmp21, label %if.then.22, label %if.end.25

if.then.22:                                       ; preds = %do.body.19
  %34 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height23 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %34, i32 0, i32 14
  %35 = load i32, i32* %height23, align 4, !tbaa !202
  %36 = load i32, i32* %ry, align 4, !tbaa !5
  %sub24 = sub nsw i32 %35, %36
  store i32 %sub24, i32* %rheight, align 4, !tbaa !5
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.22, %do.body.19
  br label %do.cond.26

do.cond.26:                                       ; preds = %if.end.25
  br label %do.end.27

do.end.27:                                        ; preds = %do.cond.26
  %37 = load i32, i32* %rheight, align 4, !tbaa !5
  %cmp28 = icmp sle i32 %37, 0
  br i1 %cmp28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %do.end.27
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.30:                                        ; preds = %do.end.27
  %38 = load i32, i32* %ry, align 4, !tbaa !5
  store i32 %38, i32* %y0, align 4, !tbaa !5
  %39 = load i32, i32* %ry, align 4, !tbaa !5
  %40 = load i32, i32* %rheight, align 4, !tbaa !5
  %add31 = add nsw i32 %39, %40
  store i32 %add31, i32* %y1, align 4, !tbaa !5
  %41 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %permanent_error = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %41, i32 0, i32 95
  %42 = load i32, i32* %permanent_error, align 4, !tbaa !171
  %cmp32 = icmp slt i32 %42, 0
  br i1 %cmp32, label %if.then.33, label %if.end.35

if.then.33:                                       ; preds = %if.end.30
  %43 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %permanent_error34 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %43, i32 0, i32 95
  %44 = load i32, i32* %permanent_error34, align 4, !tbaa !171
  store i32 %44, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.35:                                        ; preds = %if.end.30
  %45 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pdf14_needed = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %45, i32 0, i32 81
  %46 = load i32, i32* %pdf14_needed, align 4, !tbaa !177
  %tobool36 = icmp ne i32 %46, 0
  br i1 %tobool36, label %if.then.37, label %if.end.68

if.then.37:                                       ; preds = %if.end.35
  %47 = bitcast %struct.gs_int_rect_s* %trans_bbox to i8*
  call void @llvm.lifetime.start(i64 16, i8* %47) #1
  %48 = bitcast i32* %rx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %48) #1
  %p38 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p38, i32 0, i32 0
  %49 = load i32, i32* %x, align 4, !tbaa !127
  %shr39 = ashr i32 %49, 8
  %sub40 = sub nsw i32 %shr39, 1
  store i32 %sub40, i32* %rx, align 4, !tbaa !5
  %50 = bitcast i32* %rwidth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %50) #1
  %q41 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 1
  %x42 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q41, i32 0, i32 0
  %51 = load i32, i32* %x42, align 4, !tbaa !129
  %add43 = add nsw i32 %51, 255
  %shr44 = ashr i32 %add43, 8
  %52 = load i32, i32* %rx, align 4, !tbaa !5
  %sub45 = sub nsw i32 %shr44, %52
  %add46 = add nsw i32 %sub45, 1
  store i32 %add46, i32* %rwidth, align 4, !tbaa !5
  br label %do.body.47

do.body.47:                                       ; preds = %if.then.37
  %53 = load i32, i32* %rwidth, align 4, !tbaa !5
  %54 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %54, i32 0, i32 13
  %55 = load i32, i32* %width, align 4, !tbaa !81
  %56 = load i32, i32* %rx, align 4, !tbaa !5
  %sub48 = sub nsw i32 %55, %56
  %cmp49 = icmp sgt i32 %53, %sub48
  br i1 %cmp49, label %if.then.50, label %if.end.53

if.then.50:                                       ; preds = %do.body.47
  %57 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %width51 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %57, i32 0, i32 13
  %58 = load i32, i32* %width51, align 4, !tbaa !81
  %59 = load i32, i32* %rx, align 4, !tbaa !5
  %sub52 = sub nsw i32 %58, %59
  store i32 %sub52, i32* %rwidth, align 4, !tbaa !5
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.50, %do.body.47
  br label %do.cond.54

do.cond.54:                                       ; preds = %if.end.53
  br label %do.end.55

do.end.55:                                        ; preds = %do.cond.54
  %60 = load i32, i32* %rx, align 4, !tbaa !5
  %p56 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %trans_bbox, i32 0, i32 0
  %x57 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p56, i32 0, i32 0
  store i32 %60, i32* %x57, align 4, !tbaa !178
  %61 = load i32, i32* %rx, align 4, !tbaa !5
  %62 = load i32, i32* %rwidth, align 4, !tbaa !5
  %add58 = add nsw i32 %61, %62
  %sub59 = sub nsw i32 %add58, 1
  %q60 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %trans_bbox, i32 0, i32 1
  %x61 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q60, i32 0, i32 0
  store i32 %sub59, i32* %x61, align 4, !tbaa !179
  %63 = load i32, i32* %ry, align 4, !tbaa !5
  %p62 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %trans_bbox, i32 0, i32 0
  %y63 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p62, i32 0, i32 1
  store i32 %63, i32* %y63, align 4, !tbaa !180
  %64 = load i32, i32* %ry, align 4, !tbaa !5
  %65 = load i32, i32* %rheight, align 4, !tbaa !5
  %add64 = add nsw i32 %64, %65
  %sub65 = sub nsw i32 %add64, 1
  %q66 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %trans_bbox, i32 0, i32 1
  %y67 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q66, i32 0, i32 1
  store i32 %sub65, i32* %y67, align 4, !tbaa !181
  %66 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  call void @clist_update_trans_bbox(%struct.gx_device_clist_writer_s* %66, %struct.gs_int_rect_s* %trans_bbox) #5
  %67 = bitcast i32* %rwidth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #1
  %68 = bitcast i32* %rx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #1
  %69 = bitcast %struct.gs_int_rect_s* %trans_bbox to i8*
  call void @llvm.lifetime.end(i64 16, i8* %69) #1
  br label %if.end.68

if.end.68:                                        ; preds = %do.end.55, %if.end.35
  %70 = load i32, i32* %ry, align 4, !tbaa !5
  %y69 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  store i32 %70, i32* %y69, align 4, !tbaa !86
  %71 = load i32, i32* %rheight, align 4, !tbaa !5
  %height70 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  store i32 %71, i32* %height70, align 4, !tbaa !172
  %y71 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %72 = load i32, i32* %y71, align 4, !tbaa !86
  %height72 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %73 = load i32, i32* %height72, align 4, !tbaa !172
  %add73 = add nsw i32 %72, %73
  %yend = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 2
  store i32 %add73, i32* %yend, align 4, !tbaa !87
  %74 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %page_info = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %74, i32 0, i32 58
  %band_params = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info, i32 0, i32 8
  %BandHeight = getelementptr inbounds %struct.gx_band_params_s, %struct.gx_band_params_s* %band_params, i32 0, i32 1
  %75 = load i32, i32* %BandHeight, align 4, !tbaa !125
  %band_height = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  store i32 %75, i32* %band_height, align 4, !tbaa !173
  %yend74 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 2
  %76 = load i32, i32* %yend74, align 4, !tbaa !87
  %y75 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %77 = load i32, i32* %y75, align 4, !tbaa !86
  %sub76 = sub nsw i32 %76, %77
  %band_height77 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  %78 = load i32, i32* %band_height77, align 4, !tbaa !173
  %add78 = add nsw i32 %sub76, %78
  %sub79 = sub nsw i32 %add78, 1
  %band_height80 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  %79 = load i32, i32* %band_height80, align 4, !tbaa !173
  %div = sdiv i32 %sub79, %79
  %rect_nbands = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 8
  store i32 %div, i32* %rect_nbands, align 4, !tbaa !60
  br label %do.body.81

do.body.81:                                       ; preds = %do.cond.141, %if.end.68
  %y82 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %80 = load i32, i32* %y82, align 4, !tbaa !86
  %band_height83 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  %81 = load i32, i32* %band_height83, align 4, !tbaa !173
  %div84 = sdiv i32 %80, %81
  %band = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 5
  store i32 %div84, i32* %band, align 4, !tbaa !174
  %82 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %states = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %82, i32 0, i32 66
  %83 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %states, align 8, !tbaa !62
  %band85 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 5
  %84 = load i32, i32* %band85, align 4, !tbaa !174
  %idx.ext = sext i32 %84 to i64
  %add.ptr = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %83, i64 %idx.ext
  %pcls = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  store %struct.gx_clist_state_s* %add.ptr, %struct.gx_clist_state_s** %pcls, align 8, !tbaa !175
  %band86 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 5
  %85 = load i32, i32* %band86, align 4, !tbaa !174
  %add87 = add nsw i32 %85, 1
  %band_height88 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  %86 = load i32, i32* %band_height88, align 4, !tbaa !173
  %mul = mul nsw i32 %add87, %86
  %band_end = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 7
  store i32 %mul, i32* %band_end, align 4, !tbaa !176
  %band_end89 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 7
  %87 = load i32, i32* %band_end89, align 4, !tbaa !176
  %yend90 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 2
  %88 = load i32, i32* %yend90, align 4, !tbaa !87
  %cmp91 = icmp slt i32 %87, %88
  br i1 %cmp91, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.body.81
  %band_end92 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 7
  %89 = load i32, i32* %band_end92, align 4, !tbaa !176
  br label %cond.end

cond.false:                                       ; preds = %do.body.81
  %yend93 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 2
  %90 = load i32, i32* %yend93, align 4, !tbaa !87
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %89, %cond.true ], [ %90, %cond.false ]
  %y94 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %91 = load i32, i32* %y94, align 4, !tbaa !86
  %sub95 = sub nsw i32 %cond, %91
  %height96 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  store i32 %sub95, i32* %height96, align 4, !tbaa !172
  %92 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pcls97 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %93 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls97, align 8, !tbaa !175
  %94 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %call98 = call i32 @cmd_update_lop(%struct.gx_device_clist_writer_s* %92, %struct.gx_clist_state_s* %93, i32 %94) #5
  store i32 %call98, i32* %code, align 4, !tbaa !5
  %cmp99 = icmp slt i32 %call98, 0
  br i1 %cmp99, label %if.then.104, label %lor.lhs.false.100

lor.lhs.false.100:                                ; preds = %cond.end
  %95 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pcls101 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %96 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls101, align 8, !tbaa !175
  %97 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %call102 = call i32 @cmd_put_drawing_color(%struct.gx_device_clist_writer_s* %95, %struct.gx_clist_state_s* %96, %struct.gx_device_color_s* %97, %struct.cmd_rects_enum_s* %re, i32 0) #5
  store i32 %call102, i32* %code, align 4, !tbaa !5
  %cmp103 = icmp slt i32 %call102, 0
  br i1 %cmp103, label %if.then.104, label %if.end.105

if.then.104:                                      ; preds = %lor.lhs.false.100, %cond.end
  br label %out

if.end.105:                                       ; preds = %lor.lhs.false.100
  %98 = load i32, i32* %slow_rop, align 4, !tbaa !5
  %pcls106 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %99 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls106, align 8, !tbaa !175
  %color_usage = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %99, i32 0, i32 16
  %slow_rop107 = getelementptr inbounds %struct.gx_colors_usage_s, %struct.gx_colors_usage_s* %color_usage, i32 0, i32 1
  %100 = load i32, i32* %slow_rop107, align 4, !tbaa !182
  %or108 = or i32 %100, %98
  store i32 %or108, i32* %slow_rop107, align 4, !tbaa !182
  %101 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pcls109 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %102 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls109, align 8, !tbaa !175
  %y110 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %103 = load i32, i32* %y110, align 4, !tbaa !86
  %sub111 = sub nsw i32 %103, 1
  %104 = load i32, i32* %y0, align 4, !tbaa !5
  %cmp112 = icmp sgt i32 %sub111, %104
  br i1 %cmp112, label %cond.true.113, label %cond.false.116

cond.true.113:                                    ; preds = %if.end.105
  %y114 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %105 = load i32, i32* %y114, align 4, !tbaa !86
  %sub115 = sub nsw i32 %105, 1
  br label %cond.end.117

cond.false.116:                                   ; preds = %if.end.105
  %106 = load i32, i32* %y0, align 4, !tbaa !5
  br label %cond.end.117

cond.end.117:                                     ; preds = %cond.false.116, %cond.true.113
  %cond118 = phi i32 [ %sub115, %cond.true.113 ], [ %106, %cond.false.116 ]
  %shl119 = shl i32 %cond118, 8
  %y120 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %107 = load i32, i32* %y120, align 4, !tbaa !86
  %height121 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %108 = load i32, i32* %height121, align 4, !tbaa !172
  %add122 = add nsw i32 %107, %108
  %add123 = add nsw i32 %add122, 1
  %109 = load i32, i32* %y1, align 4, !tbaa !5
  %cmp124 = icmp slt i32 %add123, %109
  br i1 %cmp124, label %cond.true.125, label %cond.false.130

cond.true.125:                                    ; preds = %cond.end.117
  %y126 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %110 = load i32, i32* %y126, align 4, !tbaa !86
  %height127 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %111 = load i32, i32* %height127, align 4, !tbaa !172
  %add128 = add nsw i32 %110, %111
  %add129 = add nsw i32 %add128, 1
  br label %cond.end.131

cond.false.130:                                   ; preds = %cond.end.117
  %112 = load i32, i32* %y1, align 4, !tbaa !5
  br label %cond.end.131

cond.end.131:                                     ; preds = %cond.false.130, %cond.true.125
  %cond132 = phi i32 [ %add129, %cond.true.125 ], [ %112, %cond.false.130 ]
  %shl133 = shl i32 %cond132, 8
  %call134 = call i32 @cmd_put_path(%struct.gx_device_clist_writer_s* %101, %struct.gx_clist_state_s* %102, %struct.gx_path_s* %path, i32 %shl119, i32 %shl133, i8 zeroext -7, i32 1, i32 0) #5
  store i32 %call134, i32* %code, align 4, !tbaa !5
  %113 = load i32, i32* %code, align 4, !tbaa !5
  %cmp135 = icmp slt i32 %113, 0
  br i1 %cmp135, label %if.then.136, label %if.end.137

if.then.136:                                      ; preds = %cond.end.131
  br label %out

if.end.137:                                       ; preds = %cond.end.131
  %height138 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %114 = load i32, i32* %height138, align 4, !tbaa !172
  %y139 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %115 = load i32, i32* %y139, align 4, !tbaa !86
  %add140 = add nsw i32 %115, %114
  store i32 %add140, i32* %y139, align 4, !tbaa !86
  br label %do.cond.141

do.cond.141:                                      ; preds = %if.end.137
  %y142 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %116 = load i32, i32* %y142, align 4, !tbaa !86
  %yend143 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 2
  %117 = load i32, i32* %yend143, align 4, !tbaa !87
  %cmp144 = icmp slt i32 %116, %117
  br i1 %cmp144, label %do.body.81, label %do.end.145

do.end.145:                                       ; preds = %do.cond.141
  br label %out

out:                                              ; preds = %do.end.145, %if.then.136, %if.then.104, %if.then.8
  call void @gx_path_free(%struct.gx_path_s* %path, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0)) #5
  %118 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %118, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then.33, %if.then.29, %if.then
  %119 = bitcast %struct.cmd_rects_enum_s* %re to i8*
  call void @llvm.lifetime.end(i64 40, i8* %119) #1
  %120 = bitcast i32* %slow_rop to i8*
  call void @llvm.lifetime.end(i64 4, i8* %120) #1
  %121 = bitcast i32* %y1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %121) #1
  %122 = bitcast i32* %y0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %122) #1
  %123 = bitcast i32* %rheight to i8*
  call void @llvm.lifetime.end(i64 4, i8* %123) #1
  %124 = bitcast i32* %ry to i8*
  call void @llvm.lifetime.end(i64 4, i8* %124) #1
  %125 = bitcast %struct.gs_fixed_rect_s* %bbox to i8*
  call void @llvm.lifetime.end(i64 16, i8* %125) #1
  %126 = bitcast %struct.gx_device_clist_writer_s** %cdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %126) #1
  %127 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %127) #1
  %128 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %128) #1
  %129 = bitcast %struct.gx_path_s* %path to i8*
  call void @llvm.lifetime.end(i64 128, i8* %129) #1
  %130 = load i32, i32* %retval
  ret i32 %130
}

declare i32 @gx_default_fill_parallelogram(%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32) #2

; Function Attrs: nounwind uwtable
define i32 @clist_fill_triangle(%struct.gx_device_s* %dev, i32 %px, i32 %py, i32 %ax, i32 %ay, i32 %bx, i32 %by, %struct.gx_device_color_s* %pdcolor, i32 %lop) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %px.addr = alloca i32, align 4
  %py.addr = alloca i32, align 4
  %ax.addr = alloca i32, align 4
  %ay.addr = alloca i32, align 4
  %bx.addr = alloca i32, align 4
  %by.addr = alloca i32, align 4
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %lop.addr = alloca i32, align 4
  %pts = alloca [2 x %struct.gs_fixed_point_s], align 16
  %code = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %px, i32* %px.addr, align 4, !tbaa !5
  store i32 %py, i32* %py.addr, align 4, !tbaa !5
  store i32 %ax, i32* %ax.addr, align 4, !tbaa !5
  store i32 %ay, i32* %ay.addr, align 4, !tbaa !5
  store i32 %bx, i32* %bx.addr, align 4, !tbaa !5
  store i32 %by, i32* %by.addr, align 4, !tbaa !5
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store i32 %lop, i32* %lop.addr, align 4, !tbaa !5
  %0 = bitcast [2 x %struct.gs_fixed_point_s]* %pts to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load i32, i32* %px.addr, align 4, !tbaa !5
  %3 = load i32, i32* %ax.addr, align 4, !tbaa !5
  %add = add nsw i32 %2, %3
  %arrayidx = getelementptr inbounds [2 x %struct.gs_fixed_point_s], [2 x %struct.gs_fixed_point_s]* %pts, i32 0, i64 0
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx, i32 0, i32 0
  store i32 %add, i32* %x, align 4, !tbaa !155
  %4 = load i32, i32* %py.addr, align 4, !tbaa !5
  %5 = load i32, i32* %ay.addr, align 4, !tbaa !5
  %add1 = add nsw i32 %4, %5
  %arrayidx2 = getelementptr inbounds [2 x %struct.gs_fixed_point_s], [2 x %struct.gs_fixed_point_s]* %pts, i32 0, i64 0
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx2, i32 0, i32 1
  store i32 %add1, i32* %y, align 4, !tbaa !154
  %6 = load i32, i32* %px.addr, align 4, !tbaa !5
  %7 = load i32, i32* %bx.addr, align 4, !tbaa !5
  %add3 = add nsw i32 %6, %7
  %arrayidx4 = getelementptr inbounds [2 x %struct.gs_fixed_point_s], [2 x %struct.gs_fixed_point_s]* %pts, i32 0, i64 1
  %x5 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx4, i32 0, i32 0
  store i32 %add3, i32* %x5, align 4, !tbaa !155
  %8 = load i32, i32* %py.addr, align 4, !tbaa !5
  %9 = load i32, i32* %by.addr, align 4, !tbaa !5
  %add6 = add nsw i32 %8, %9
  %arrayidx7 = getelementptr inbounds [2 x %struct.gs_fixed_point_s], [2 x %struct.gs_fixed_point_s]* %pts, i32 0, i64 1
  %y8 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx7, i32 0, i32 1
  store i32 %add6, i32* %y8, align 4, !tbaa !154
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %11 = load i32, i32* %px.addr, align 4, !tbaa !5
  %12 = load i32, i32* %py.addr, align 4, !tbaa !5
  %arraydecay = getelementptr inbounds [2 x %struct.gs_fixed_point_s], [2 x %struct.gs_fixed_point_s]* %pts, i32 0, i32 0
  %13 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %14 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %call = call i32 @clist_put_polyfill(%struct.gx_device_s* %10, i32 %11, i32 %12, %struct.gs_fixed_point_s* %arraydecay, i32 2, %struct.gx_device_color_s* %13, i32 %14) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %15 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp sge i32 %15, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %16 = load i32, i32* %code, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %entry
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %18 = load i32, i32* %px.addr, align 4, !tbaa !5
  %19 = load i32, i32* %py.addr, align 4, !tbaa !5
  %20 = load i32, i32* %ax.addr, align 4, !tbaa !5
  %21 = load i32, i32* %ay.addr, align 4, !tbaa !5
  %22 = load i32, i32* %bx.addr, align 4, !tbaa !5
  %23 = load i32, i32* %by.addr, align 4, !tbaa !5
  %24 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %25 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %call9 = call i32 @gx_default_fill_triangle(%struct.gx_device_s* %17, i32 %18, i32 %19, i32 %20, i32 %21, i32 %22, i32 %23, %struct.gx_device_color_s* %24, i32 %25) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %16, %cond.true ], [ %call9, %cond.false ]
  %26 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  %27 = bitcast [2 x %struct.gs_fixed_point_s]* %pts to i8*
  call void @llvm.lifetime.end(i64 16, i8* %27) #1
  ret i32 %cond
}

declare i32 @gx_default_fill_triangle(%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32) #2

declare i32 @gx_path_init_local_shared(%struct.gx_path_s*, %struct.gx_path_s*, %struct.gs_memory_s*) #2

declare i32 @gx_path_add_point(%struct.gx_path_s*, i32, i32) #2

declare i32 @gx_path_add_lines_notes(%struct.gx_path_s*, %struct.gs_fixed_point_s*, i32, i32) #2

declare void @gx_path_free(%struct.gx_path_s*, i8*) #2

declare i32 @gx_path_enum_init(%struct.gs_path_enum_s*, %struct.gx_path_s*) #2

declare i32 @gx_path_enum_next(%struct.gs_path_enum_s*, %struct.gs_fixed_point_s*) #2

declare i32 @gx_path_enum_backup(%struct.gs_path_enum_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @cmd_put_segment(%struct.cmd_segment_writer_s* %psw, i8 zeroext %op, i32* %operands, i32 %notes) #0 {
entry:
  %retval = alloca i32, align 4
  %psw.addr = alloca %struct.cmd_segment_writer_s*, align 8
  %op.addr = alloca i8, align 1
  %operands.addr = alloca i32*, align 8
  %notes.addr = alloca i32, align 4
  %optr = alloca i32*, align 8
  %i = alloca i32, align 4
  %q = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %d = alloca i32, align 4
  %d2 = alloca i32, align 4
  %b = alloca i32, align 4
  %dp165 = alloca i8*, align 8
  %code = alloca i32, align 4
  %len185 = alloca i32, align 4
  %dp190 = alloca i8*, align 8
  %code191 = alloca i32, align 4
  store %struct.cmd_segment_writer_s* %psw, %struct.cmd_segment_writer_s** %psw.addr, align 8, !tbaa !1
  store i8 %op, i8* %op.addr, align 1, !tbaa !7
  store i32* %operands, i32** %operands.addr, align 8, !tbaa !1
  store i32 %notes, i32* %notes.addr, align 4, !tbaa !7
  %0 = bitcast i32** %optr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i32*, i32** %operands.addr, align 8, !tbaa !1
  store i32* %1, i32** %optr, align 8, !tbaa !1
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load i8, i8* %op.addr, align 1, !tbaa !7
  %conv = zext i8 %3 to i32
  %and = and i32 %conv, 15
  %idxprom = sext i32 %and to i64
  %arrayidx = getelementptr inbounds [16 x i8], [16 x i8]* @cmd_put_segment.op_num_operands, i32 0, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %conv1 = zext i8 %4 to i32
  store i32 %conv1, i32* %i, align 4, !tbaa !5
  %5 = bitcast i8** %q to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.cmd_segment_writer_s*, %struct.cmd_segment_writer_s** %psw.addr, align 8, !tbaa !1
  %cmd = getelementptr inbounds %struct.cmd_segment_writer_s, %struct.cmd_segment_writer_s* %6, i32 0, i32 6
  %arraydecay = getelementptr inbounds [30 x i8], [30 x i8]* %cmd, i32 0, i32 0
  store i8* %arraydecay, i8** %q, align 8, !tbaa !1
  %7 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 -1
  store i8* %incdec.ptr, i8** %q, align 8, !tbaa !1
  %8 = load i8, i8* %op.addr, align 1, !tbaa !7
  %conv2 = zext i8 %8 to i32
  %cmp = icmp eq i32 %conv2, 225
  br i1 %cmp, label %if.then, label %if.end.54

if.then:                                          ; preds = %entry
  %9 = load i32*, i32** %operands.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i32, i32* %9, i64 0
  %10 = load i32, i32* %arrayidx4, align 4, !tbaa !5
  %cmp5 = icmp eq i32 %10, 0
  br i1 %cmp5, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.then
  store i8 -29, i8* %op.addr, align 1, !tbaa !7
  %11 = load i32*, i32** %operands.addr, align 8, !tbaa !1
  %incdec.ptr8 = getelementptr inbounds i32, i32* %11, i32 1
  store i32* %incdec.ptr8, i32** %operands.addr, align 8, !tbaa !1
  store i32* %incdec.ptr8, i32** %optr, align 8, !tbaa !1
  store i32 1, i32* %i, align 4, !tbaa !5
  br label %if.end.53

if.else:                                          ; preds = %if.then
  %12 = load i32*, i32** %operands.addr, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds i32, i32* %12, i64 1
  %13 = load i32, i32* %arrayidx9, align 4, !tbaa !5
  %cmp10 = icmp eq i32 %13, 0
  br i1 %cmp10, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %if.else
  store i8 -30, i8* %op.addr, align 1, !tbaa !7
  store i32 1, i32* %i, align 4, !tbaa !5
  br label %if.end.52

if.else.13:                                       ; preds = %if.else
  %14 = load %struct.cmd_segment_writer_s*, %struct.cmd_segment_writer_s** %psw.addr, align 8, !tbaa !1
  %dp = getelementptr inbounds %struct.cmd_segment_writer_s, %struct.cmd_segment_writer_s* %14, i32 0, i32 3
  %15 = load i8*, i8** %dp, align 8, !tbaa !160
  %16 = load i8, i8* %15, align 1, !tbaa !7
  %conv14 = zext i8 %16 to i32
  switch i32 %conv14, label %sw.default [
    i32 224, label %sw.bb
    i32 228, label %sw.bb.23
    i32 229, label %sw.bb.28
  ]

sw.bb:                                            ; preds = %if.else.13
  %17 = load i32*, i32** %operands.addr, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds i32, i32* %17, i64 0
  %18 = load i32, i32* %arrayidx15, align 4, !tbaa !5
  %19 = load %struct.cmd_segment_writer_s*, %struct.cmd_segment_writer_s** %psw.addr, align 8, !tbaa !1
  %delta_first = getelementptr inbounds %struct.cmd_segment_writer_s, %struct.cmd_segment_writer_s* %19, i32 0, i32 5
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %delta_first, i32 0, i32 0
  store i32 %18, i32* %x, align 4, !tbaa !238
  %20 = load i32*, i32** %operands.addr, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds i32, i32* %20, i64 1
  %21 = load i32, i32* %arrayidx16, align 4, !tbaa !5
  %22 = load %struct.cmd_segment_writer_s*, %struct.cmd_segment_writer_s** %psw.addr, align 8, !tbaa !1
  %delta_first17 = getelementptr inbounds %struct.cmd_segment_writer_s, %struct.cmd_segment_writer_s* %22, i32 0, i32 5
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %delta_first17, i32 0, i32 1
  store i32 %21, i32* %y, align 4, !tbaa !239
  store i8 -28, i8* %op.addr, align 1, !tbaa !7
  br label %merge

merge:                                            ; preds = %if.end, %sw.bb
  br label %do.body

do.body:                                          ; preds = %merge
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %23 = load %struct.cmd_segment_writer_s*, %struct.cmd_segment_writer_s** %psw.addr, align 8, !tbaa !1
  %len = getelementptr inbounds %struct.cmd_segment_writer_s, %struct.cmd_segment_writer_s* %23, i32 0, i32 4
  %24 = load i32, i32* %len, align 4, !tbaa !240
  %25 = load %struct.cmd_segment_writer_s*, %struct.cmd_segment_writer_s** %psw.addr, align 8, !tbaa !1
  %pcls = getelementptr inbounds %struct.cmd_segment_writer_s, %struct.cmd_segment_writer_s* %25, i32 0, i32 1
  %26 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls, align 8, !tbaa !158
  %list = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %26, i32 0, i32 15
  %tail = getelementptr inbounds %struct.cmd_list_s, %struct.cmd_list_s* %list, i32 0, i32 1
  %27 = load %struct.cmd_prefix_s*, %struct.cmd_prefix_s** %tail, align 8, !tbaa !241
  %size = getelementptr inbounds %struct.cmd_prefix_s, %struct.cmd_prefix_s* %27, i32 0, i32 1
  %28 = load i32, i32* %size, align 4, !tbaa !242
  %sub = sub i32 %28, %24
  store i32 %sub, i32* %size, align 4, !tbaa !242
  %29 = load %struct.cmd_segment_writer_s*, %struct.cmd_segment_writer_s** %psw.addr, align 8, !tbaa !1
  %len18 = getelementptr inbounds %struct.cmd_segment_writer_s, %struct.cmd_segment_writer_s* %29, i32 0, i32 4
  %30 = load i32, i32* %len18, align 4, !tbaa !240
  %31 = load %struct.cmd_segment_writer_s*, %struct.cmd_segment_writer_s** %psw.addr, align 8, !tbaa !1
  %cldev = getelementptr inbounds %struct.cmd_segment_writer_s, %struct.cmd_segment_writer_s* %31, i32 0, i32 0
  %32 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev, align 8, !tbaa !156
  %cnext = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %32, i32 0, i32 68
  %33 = load i8*, i8** %cnext, align 8, !tbaa !75
  %idx.ext = sext i32 %30 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %33, i64 %idx.neg
  store i8* %add.ptr, i8** %cnext, align 8, !tbaa !75
  %34 = load %struct.cmd_segment_writer_s*, %struct.cmd_segment_writer_s** %psw.addr, align 8, !tbaa !1
  %len19 = getelementptr inbounds %struct.cmd_segment_writer_s, %struct.cmd_segment_writer_s* %34, i32 0, i32 4
  %35 = load i32, i32* %len19, align 4, !tbaa !240
  %sub20 = sub nsw i32 %35, 1
  %36 = load i8*, i8** %q, align 8, !tbaa !1
  %idx.ext21 = sext i32 %sub20 to i64
  %add.ptr22 = getelementptr inbounds i8, i8* %36, i64 %idx.ext21
  store i8* %add.ptr22, i8** %q, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.23:                                         ; preds = %if.else.13
  %37 = load i32, i32* %notes.addr, align 4, !tbaa !7
  %38 = load %struct.cmd_segment_writer_s*, %struct.cmd_segment_writer_s** %psw.addr, align 8, !tbaa !1
  %notes24 = getelementptr inbounds %struct.cmd_segment_writer_s, %struct.cmd_segment_writer_s* %38, i32 0, i32 2
  %39 = load i32, i32* %notes24, align 4, !tbaa !159
  %cmp25 = icmp ne i32 %37, %39
  br i1 %cmp25, label %if.then.27, label %if.end

if.then.27:                                       ; preds = %sw.bb.23
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb.23
  store i8 -27, i8* %op.addr, align 1, !tbaa !7
  br label %merge

sw.bb.28:                                         ; preds = %if.else.13
  %40 = load i32, i32* %notes.addr, align 4, !tbaa !7
  %41 = load %struct.cmd_segment_writer_s*, %struct.cmd_segment_writer_s** %psw.addr, align 8, !tbaa !1
  %notes29 = getelementptr inbounds %struct.cmd_segment_writer_s, %struct.cmd_segment_writer_s* %41, i32 0, i32 2
  %42 = load i32, i32* %notes29, align 4, !tbaa !159
  %cmp30 = icmp ne i32 %40, %42
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %sw.bb.28
  br label %sw.epilog

if.end.33:                                        ; preds = %sw.bb.28
  %43 = load i32*, i32** %operands.addr, align 8, !tbaa !1
  %arrayidx34 = getelementptr inbounds i32, i32* %43, i64 0
  %44 = load i32, i32* %arrayidx34, align 4, !tbaa !5
  %45 = load %struct.cmd_segment_writer_s*, %struct.cmd_segment_writer_s** %psw.addr, align 8, !tbaa !1
  %delta_first35 = getelementptr inbounds %struct.cmd_segment_writer_s, %struct.cmd_segment_writer_s* %45, i32 0, i32 5
  %x36 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %delta_first35, i32 0, i32 0
  %46 = load i32, i32* %x36, align 4, !tbaa !238
  %sub37 = sub nsw i32 0, %46
  %cmp38 = icmp eq i32 %44, %sub37
  br i1 %cmp38, label %land.lhs.true, label %if.end.51

land.lhs.true:                                    ; preds = %if.end.33
  %47 = load i32*, i32** %operands.addr, align 8, !tbaa !1
  %arrayidx40 = getelementptr inbounds i32, i32* %47, i64 1
  %48 = load i32, i32* %arrayidx40, align 4, !tbaa !5
  %49 = load %struct.cmd_segment_writer_s*, %struct.cmd_segment_writer_s** %psw.addr, align 8, !tbaa !1
  %delta_first41 = getelementptr inbounds %struct.cmd_segment_writer_s, %struct.cmd_segment_writer_s* %49, i32 0, i32 5
  %y42 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %delta_first41, i32 0, i32 1
  %50 = load i32, i32* %y42, align 4, !tbaa !239
  %sub43 = sub nsw i32 0, %50
  %cmp44 = icmp eq i32 %48, %sub43
  br i1 %cmp44, label %if.then.46, label %if.end.51

if.then.46:                                       ; preds = %land.lhs.true
  br label %do.body.47

do.body.47:                                       ; preds = %if.then.46
  br label %do.cond.48

do.cond.48:                                       ; preds = %do.body.47
  br label %do.end.49

do.end.49:                                        ; preds = %do.cond.48
  %51 = load %struct.cmd_segment_writer_s*, %struct.cmd_segment_writer_s** %psw.addr, align 8, !tbaa !1
  %dp50 = getelementptr inbounds %struct.cmd_segment_writer_s, %struct.cmd_segment_writer_s* %51, i32 0, i32 3
  %52 = load i8*, i8** %dp50, align 8, !tbaa !160
  store i8 -26, i8* %52, align 1, !tbaa !7
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.221

if.end.51:                                        ; preds = %land.lhs.true, %if.end.33
  br label %sw.epilog

sw.default:                                       ; preds = %if.else.13
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.51, %if.then.32, %if.then.27, %do.end
  br label %if.end.52

if.end.52:                                        ; preds = %sw.epilog, %if.then.12
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %if.then.7
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %entry
  br label %for.cond

for.cond:                                         ; preds = %for.inc.158, %if.end.54
  %53 = load i32, i32* %i, align 4, !tbaa !5
  %dec = add nsw i32 %53, -1
  store i32 %dec, i32* %i, align 4, !tbaa !5
  %cmp55 = icmp sge i32 %dec, 0
  br i1 %cmp55, label %for.body, label %for.end.160

for.body:                                         ; preds = %for.cond
  %54 = bitcast i32* %d to i8*
  call void @llvm.lifetime.start(i64 4, i8* %54) #1
  %55 = load i32*, i32** %optr, align 8, !tbaa !1
  %56 = load i32, i32* %55, align 4, !tbaa !5
  store i32 %56, i32* %d, align 4, !tbaa !5
  %57 = bitcast i32* %d2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %57) #1
  %58 = load i32, i32* %d, align 4, !tbaa !5
  %add = add nsw i32 %58, 262144
  %and57 = and i32 %add, -524288
  %tobool = icmp ne i32 %and57, 0
  br i1 %tobool, label %if.else.68, label %land.lhs.true.58

land.lhs.true.58:                                 ; preds = %for.body
  %59 = load i32, i32* %d, align 4, !tbaa !5
  %and59 = and i32 %59, 63
  %tobool60 = icmp ne i32 %and59, 0
  br i1 %tobool60, label %if.else.68, label %if.then.61

if.then.61:                                       ; preds = %land.lhs.true.58
  br label %do.body.62

do.body.62:                                       ; preds = %if.then.61
  br label %do.cond.63

do.cond.63:                                       ; preds = %do.body.62
  br label %do.end.64

do.end.64:                                        ; preds = %do.cond.63
  %60 = load i32, i32* %d, align 4, !tbaa !5
  %shr = ashr i32 %60, 6
  %and65 = and i32 %shr, 8191
  %add66 = add nsw i32 %and65, 49152
  store i32 %add66, i32* %d, align 4, !tbaa !5
  %61 = load i8*, i8** %q, align 8, !tbaa !1
  %add.ptr67 = getelementptr inbounds i8, i8* %61, i64 2
  store i8* %add.ptr67, i8** %q, align 8, !tbaa !1
  br label %if.end.152

if.else.68:                                       ; preds = %land.lhs.true.58, %for.body
  %62 = load i32, i32* %d, align 4, !tbaa !5
  %add69 = add nsw i32 %62, 262144
  %and70 = and i32 %add69, -524288
  %tobool71 = icmp ne i32 %and70, 0
  br i1 %tobool71, label %if.else.104, label %land.lhs.true.72

land.lhs.true.72:                                 ; preds = %if.else.68
  %63 = load i32, i32* %i, align 4, !tbaa !5
  %cmp73 = icmp sgt i32 %63, 0
  br i1 %cmp73, label %land.lhs.true.75, label %if.else.104

land.lhs.true.75:                                 ; preds = %land.lhs.true.72
  %64 = load i32*, i32** %optr, align 8, !tbaa !1
  %arrayidx76 = getelementptr inbounds i32, i32* %64, i64 1
  %65 = load i32, i32* %arrayidx76, align 4, !tbaa !5
  store i32 %65, i32* %d2, align 4, !tbaa !5
  %add77 = add nsw i32 %65, 262144
  %and78 = and i32 %add77, -524288
  %tobool79 = icmp ne i32 %and78, 0
  br i1 %tobool79, label %if.else.104, label %if.then.80

if.then.80:                                       ; preds = %land.lhs.true.75
  br label %do.body.81

do.body.81:                                       ; preds = %if.then.80
  br label %do.cond.82

do.cond.82:                                       ; preds = %do.body.81
  br label %do.end.83

do.end.83:                                        ; preds = %do.cond.82
  %66 = load i32, i32* %d, align 4, !tbaa !5
  %shr84 = ashr i32 %66, 13
  %and85 = and i32 %shr84, 63
  %conv86 = trunc i32 %and85 to i8
  %67 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx87 = getelementptr inbounds i8, i8* %67, i64 1
  store i8 %conv86, i8* %arrayidx87, align 1, !tbaa !7
  %68 = load i32, i32* %d, align 4, !tbaa !5
  %shr88 = ashr i32 %68, 5
  %conv89 = trunc i32 %shr88 to i8
  %69 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx90 = getelementptr inbounds i8, i8* %69, i64 2
  store i8 %conv89, i8* %arrayidx90, align 1, !tbaa !7
  %70 = load i32, i32* %d, align 4, !tbaa !5
  %shl = shl i32 %70, 3
  %71 = load i32, i32* %d2, align 4, !tbaa !5
  %shr91 = ashr i32 %71, 16
  %and92 = and i32 %shr91, 7
  %add93 = add nsw i32 %shl, %and92
  %conv94 = trunc i32 %add93 to i8
  %72 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx95 = getelementptr inbounds i8, i8* %72, i64 3
  store i8 %conv94, i8* %arrayidx95, align 1, !tbaa !7
  %73 = load i32, i32* %d2, align 4, !tbaa !5
  %shr96 = ashr i32 %73, 8
  %conv97 = trunc i32 %shr96 to i8
  %74 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx98 = getelementptr inbounds i8, i8* %74, i64 4
  store i8 %conv97, i8* %arrayidx98, align 1, !tbaa !7
  %75 = load i32, i32* %d2, align 4, !tbaa !5
  %conv99 = trunc i32 %75 to i8
  %76 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx100 = getelementptr inbounds i8, i8* %76, i64 5
  store i8 %conv99, i8* %arrayidx100, align 1, !tbaa !7
  %77 = load i8*, i8** %q, align 8, !tbaa !1
  %add.ptr101 = getelementptr inbounds i8, i8* %77, i64 5
  store i8* %add.ptr101, i8** %q, align 8, !tbaa !1
  %78 = load i32, i32* %i, align 4, !tbaa !5
  %dec102 = add nsw i32 %78, -1
  store i32 %dec102, i32* %i, align 4, !tbaa !5
  %79 = load i32*, i32** %optr, align 8, !tbaa !1
  %incdec.ptr103 = getelementptr inbounds i32, i32* %79, i32 1
  store i32* %incdec.ptr103, i32** %optr, align 8, !tbaa !1
  store i32 10, i32* %cleanup.dest.slot
  br label %cleanup

if.else.104:                                      ; preds = %land.lhs.true.75, %land.lhs.true.72, %if.else.68
  %80 = load i32, i32* %d, align 4, !tbaa !5
  %add105 = add nsw i32 %80, 2097152
  %and106 = and i32 %add105, -4194304
  %tobool107 = icmp ne i32 %and106, 0
  br i1 %tobool107, label %if.else.118, label %if.then.108

if.then.108:                                      ; preds = %if.else.104
  br label %do.body.109

do.body.109:                                      ; preds = %if.then.108
  br label %do.cond.110

do.cond.110:                                      ; preds = %do.body.109
  br label %do.end.111

do.end.111:                                       ; preds = %do.cond.110
  %81 = load i32, i32* %d, align 4, !tbaa !5
  %shr112 = ashr i32 %81, 16
  %and113 = and i32 %shr112, 63
  %add114 = add nsw i32 %and113, 64
  %conv115 = trunc i32 %add114 to i8
  %82 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx116 = getelementptr inbounds i8, i8* %82, i64 1
  store i8 %conv115, i8* %arrayidx116, align 1, !tbaa !7
  %83 = load i8*, i8** %q, align 8, !tbaa !1
  %add.ptr117 = getelementptr inbounds i8, i8* %83, i64 3
  store i8* %add.ptr117, i8** %q, align 8, !tbaa !1
  br label %if.end.150

if.else.118:                                      ; preds = %if.else.104
  %84 = load i32, i32* %d, align 4, !tbaa !5
  %add119 = add nsw i32 %84, 536870912
  %and120 = and i32 %add119, -1073741824
  %tobool121 = icmp ne i32 %and120, 0
  br i1 %tobool121, label %if.else.135, label %if.then.122

if.then.122:                                      ; preds = %if.else.118
  br label %do.body.123

do.body.123:                                      ; preds = %if.then.122
  br label %do.cond.124

do.cond.124:                                      ; preds = %do.body.123
  br label %do.end.125

do.end.125:                                       ; preds = %do.cond.124
  %85 = load i32, i32* %d, align 4, !tbaa !5
  %shr126 = ashr i32 %85, 24
  %and127 = and i32 %shr126, 63
  %add128 = add nsw i32 %and127, 128
  %conv129 = trunc i32 %add128 to i8
  %86 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx130 = getelementptr inbounds i8, i8* %86, i64 1
  store i8 %conv129, i8* %arrayidx130, align 1, !tbaa !7
  %87 = load i32, i32* %d, align 4, !tbaa !5
  %shr131 = ashr i32 %87, 16
  %conv132 = trunc i32 %shr131 to i8
  %88 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx133 = getelementptr inbounds i8, i8* %88, i64 2
  store i8 %conv132, i8* %arrayidx133, align 1, !tbaa !7
  %89 = load i8*, i8** %q, align 8, !tbaa !1
  %add.ptr134 = getelementptr inbounds i8, i8* %89, i64 4
  store i8* %add.ptr134, i8** %q, align 8, !tbaa !1
  br label %if.end.149

if.else.135:                                      ; preds = %if.else.118
  %90 = bitcast i32* %b to i8*
  call void @llvm.lifetime.start(i64 4, i8* %90) #1
  br label %do.body.136

do.body.136:                                      ; preds = %if.else.135
  br label %do.cond.137

do.cond.137:                                      ; preds = %do.body.136
  br label %do.end.138

do.end.138:                                       ; preds = %do.cond.137
  %91 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr139 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %incdec.ptr139, i8** %q, align 8, !tbaa !1
  store i8 -32, i8* %incdec.ptr139, align 1, !tbaa !7
  store i32 3, i32* %b, align 4, !tbaa !5
  br label %for.cond.140

for.cond.140:                                     ; preds = %for.inc, %do.end.138
  %92 = load i32, i32* %b, align 4, !tbaa !5
  %cmp141 = icmp sgt i32 %92, 1
  br i1 %cmp141, label %for.body.143, label %for.end

for.body.143:                                     ; preds = %for.cond.140
  %93 = load i32, i32* %d, align 4, !tbaa !5
  %94 = load i32, i32* %b, align 4, !tbaa !5
  %mul = mul nsw i32 %94, 8
  %shr144 = ashr i32 %93, %mul
  %conv145 = trunc i32 %shr144 to i8
  %95 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr146 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %incdec.ptr146, i8** %q, align 8, !tbaa !1
  store i8 %conv145, i8* %incdec.ptr146, align 1, !tbaa !7
  br label %for.inc

for.inc:                                          ; preds = %for.body.143
  %96 = load i32, i32* %b, align 4, !tbaa !5
  %dec147 = add nsw i32 %96, -1
  store i32 %dec147, i32* %b, align 4, !tbaa !5
  br label %for.cond.140

for.end:                                          ; preds = %for.cond.140
  %97 = load i8*, i8** %q, align 8, !tbaa !1
  %add.ptr148 = getelementptr inbounds i8, i8* %97, i64 2
  store i8* %add.ptr148, i8** %q, align 8, !tbaa !1
  %98 = bitcast i32* %b to i8*
  call void @llvm.lifetime.end(i64 4, i8* %98) #1
  br label %if.end.149

if.end.149:                                       ; preds = %for.end, %do.end.125
  br label %if.end.150

if.end.150:                                       ; preds = %if.end.149, %do.end.111
  br label %if.end.151

if.end.151:                                       ; preds = %if.end.150
  br label %if.end.152

if.end.152:                                       ; preds = %if.end.151, %do.end.64
  %99 = load i32, i32* %d, align 4, !tbaa !5
  %shr153 = ashr i32 %99, 8
  %conv154 = trunc i32 %shr153 to i8
  %100 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx155 = getelementptr inbounds i8, i8* %100, i64 -1
  store i8 %conv154, i8* %arrayidx155, align 1, !tbaa !7
  %101 = load i32, i32* %d, align 4, !tbaa !5
  %conv156 = trunc i32 %101 to i8
  %102 = load i8*, i8** %q, align 8, !tbaa !1
  store i8 %conv156, i8* %102, align 1, !tbaa !7
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.152, %do.end.83
  %103 = bitcast i32* %d2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %103) #1
  %104 = bitcast i32* %d to i8*
  call void @llvm.lifetime.end(i64 4, i8* %104) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 10, label %for.inc.158
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc.158

for.inc.158:                                      ; preds = %cleanup.cont, %cleanup
  %105 = load i32*, i32** %optr, align 8, !tbaa !1
  %incdec.ptr159 = getelementptr inbounds i32, i32* %105, i32 1
  store i32* %incdec.ptr159, i32** %optr, align 8, !tbaa !1
  br label %for.cond

for.end.160:                                      ; preds = %for.cond
  %106 = load i32, i32* %notes.addr, align 4, !tbaa !7
  %107 = load %struct.cmd_segment_writer_s*, %struct.cmd_segment_writer_s** %psw.addr, align 8, !tbaa !1
  %notes161 = getelementptr inbounds %struct.cmd_segment_writer_s, %struct.cmd_segment_writer_s* %107, i32 0, i32 2
  %108 = load i32, i32* %notes161, align 4, !tbaa !159
  %cmp162 = icmp ne i32 %106, %108
  br i1 %cmp162, label %if.then.164, label %if.end.184

if.then.164:                                      ; preds = %for.end.160
  %109 = bitcast i8** %dp165 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %109) #1
  %110 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %110) #1
  %111 = load %struct.cmd_segment_writer_s*, %struct.cmd_segment_writer_s** %psw.addr, align 8, !tbaa !1
  %cldev166 = getelementptr inbounds %struct.cmd_segment_writer_s, %struct.cmd_segment_writer_s* %111, i32 0, i32 0
  %112 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev166, align 8, !tbaa !156
  %113 = load %struct.cmd_segment_writer_s*, %struct.cmd_segment_writer_s** %psw.addr, align 8, !tbaa !1
  %pcls167 = getelementptr inbounds %struct.cmd_segment_writer_s, %struct.cmd_segment_writer_s* %113, i32 0, i32 1
  %114 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls167, align 8, !tbaa !158
  %list168 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %114, i32 0, i32 15
  %call = call i8* @cmd_put_list_op(%struct.gx_device_clist_writer_s* %112, %struct.cmd_list_s* %list168, i32 3) #5
  store i8* %call, i8** %dp165, align 8, !tbaa !1
  %cmp169 = icmp eq i8* %call, null
  br i1 %cmp169, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.164
  %115 = load %struct.cmd_segment_writer_s*, %struct.cmd_segment_writer_s** %psw.addr, align 8, !tbaa !1
  %cldev171 = getelementptr inbounds %struct.cmd_segment_writer_s, %struct.cmd_segment_writer_s* %115, i32 0, i32 0
  %116 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev171, align 8, !tbaa !156
  %error_code = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %116, i32 0, i32 65
  %117 = load i32, i32* %error_code, align 4, !tbaa !74
  br label %cond.end

cond.false:                                       ; preds = %if.then.164
  %118 = load i8*, i8** %dp165, align 8, !tbaa !1
  store i8 -43, i8* %118, align 1, !tbaa !7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %117, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %code, align 4, !tbaa !5
  %119 = load i32, i32* %code, align 4, !tbaa !5
  %cmp172 = icmp slt i32 %119, 0
  br i1 %cmp172, label %if.then.174, label %if.end.175

if.then.174:                                      ; preds = %cond.end
  %120 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %120, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.180

if.end.175:                                       ; preds = %cond.end
  %121 = load i8*, i8** %dp165, align 8, !tbaa !1
  %arrayidx176 = getelementptr inbounds i8, i8* %121, i64 1
  store i8 64, i8* %arrayidx176, align 1, !tbaa !7
  %122 = load i32, i32* %notes.addr, align 4, !tbaa !7
  %conv177 = trunc i32 %122 to i8
  %123 = load i8*, i8** %dp165, align 8, !tbaa !1
  %arrayidx178 = getelementptr inbounds i8, i8* %123, i64 2
  store i8 %conv177, i8* %arrayidx178, align 1, !tbaa !7
  %124 = load i32, i32* %notes.addr, align 4, !tbaa !7
  %125 = load %struct.cmd_segment_writer_s*, %struct.cmd_segment_writer_s** %psw.addr, align 8, !tbaa !1
  %notes179 = getelementptr inbounds %struct.cmd_segment_writer_s, %struct.cmd_segment_writer_s* %125, i32 0, i32 2
  store i32 %124, i32* %notes179, align 4, !tbaa !159
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.180

cleanup.180:                                      ; preds = %if.end.175, %if.then.174
  %126 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %126) #1
  %127 = bitcast i8** %dp165 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %127) #1
  %cleanup.dest.182 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.182, label %cleanup.221 [
    i32 0, label %cleanup.cont.183
  ]

cleanup.cont.183:                                 ; preds = %cleanup.180
  br label %if.end.184

if.end.184:                                       ; preds = %cleanup.cont.183, %for.end.160
  %128 = bitcast i32* %len185 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %128) #1
  %129 = load i8*, i8** %q, align 8, !tbaa !1
  %add.ptr186 = getelementptr inbounds i8, i8* %129, i64 2
  %130 = load %struct.cmd_segment_writer_s*, %struct.cmd_segment_writer_s** %psw.addr, align 8, !tbaa !1
  %cmd187 = getelementptr inbounds %struct.cmd_segment_writer_s, %struct.cmd_segment_writer_s* %130, i32 0, i32 6
  %arraydecay188 = getelementptr inbounds [30 x i8], [30 x i8]* %cmd187, i32 0, i32 0
  %sub.ptr.lhs.cast = ptrtoint i8* %add.ptr186 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %arraydecay188 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv189 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv189, i32* %len185, align 4, !tbaa !5
  %131 = bitcast i8** %dp190 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %131) #1
  %132 = bitcast i32* %code191 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %132) #1
  %133 = load %struct.cmd_segment_writer_s*, %struct.cmd_segment_writer_s** %psw.addr, align 8, !tbaa !1
  %cldev192 = getelementptr inbounds %struct.cmd_segment_writer_s, %struct.cmd_segment_writer_s* %133, i32 0, i32 0
  %134 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev192, align 8, !tbaa !156
  %135 = load %struct.cmd_segment_writer_s*, %struct.cmd_segment_writer_s** %psw.addr, align 8, !tbaa !1
  %pcls193 = getelementptr inbounds %struct.cmd_segment_writer_s, %struct.cmd_segment_writer_s* %135, i32 0, i32 1
  %136 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls193, align 8, !tbaa !158
  %list194 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %136, i32 0, i32 15
  %137 = load i32, i32* %len185, align 4, !tbaa !5
  %call195 = call i8* @cmd_put_list_op(%struct.gx_device_clist_writer_s* %134, %struct.cmd_list_s* %list194, i32 %137) #5
  store i8* %call195, i8** %dp190, align 8, !tbaa !1
  %cmp196 = icmp eq i8* %call195, null
  br i1 %cmp196, label %cond.true.198, label %cond.false.201

cond.true.198:                                    ; preds = %if.end.184
  %138 = load %struct.cmd_segment_writer_s*, %struct.cmd_segment_writer_s** %psw.addr, align 8, !tbaa !1
  %cldev199 = getelementptr inbounds %struct.cmd_segment_writer_s, %struct.cmd_segment_writer_s* %138, i32 0, i32 0
  %139 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev199, align 8, !tbaa !156
  %error_code200 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %139, i32 0, i32 65
  %140 = load i32, i32* %error_code200, align 4, !tbaa !74
  br label %cond.end.202

cond.false.201:                                   ; preds = %if.end.184
  %141 = load i8, i8* %op.addr, align 1, !tbaa !7
  %142 = load i8*, i8** %dp190, align 8, !tbaa !1
  store i8 %141, i8* %142, align 1, !tbaa !7
  br label %cond.end.202

cond.end.202:                                     ; preds = %cond.false.201, %cond.true.198
  %cond203 = phi i32 [ %140, %cond.true.198 ], [ 0, %cond.false.201 ]
  store i32 %cond203, i32* %code191, align 4, !tbaa !5
  %143 = load i32, i32* %code191, align 4, !tbaa !5
  %cmp204 = icmp slt i32 %143, 0
  br i1 %cmp204, label %if.then.206, label %if.end.207

if.then.206:                                      ; preds = %cond.end.202
  %144 = load i32, i32* %code191, align 4, !tbaa !5
  store i32 %144, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.216

if.end.207:                                       ; preds = %cond.end.202
  %145 = load i8*, i8** %dp190, align 8, !tbaa !1
  %add.ptr208 = getelementptr inbounds i8, i8* %145, i64 1
  %146 = load %struct.cmd_segment_writer_s*, %struct.cmd_segment_writer_s** %psw.addr, align 8, !tbaa !1
  %cmd209 = getelementptr inbounds %struct.cmd_segment_writer_s, %struct.cmd_segment_writer_s* %146, i32 0, i32 6
  %arraydecay210 = getelementptr inbounds [30 x i8], [30 x i8]* %cmd209, i32 0, i32 0
  %147 = load i32, i32* %len185, align 4, !tbaa !5
  %sub211 = sub nsw i32 %147, 1
  %conv212 = sext i32 %sub211 to i64
  %call213 = call i8* @memcpy(i8* %add.ptr208, i8* %arraydecay210, i64 %conv212) #6
  %148 = load i32, i32* %len185, align 4, !tbaa !5
  %149 = load %struct.cmd_segment_writer_s*, %struct.cmd_segment_writer_s** %psw.addr, align 8, !tbaa !1
  %len214 = getelementptr inbounds %struct.cmd_segment_writer_s, %struct.cmd_segment_writer_s* %149, i32 0, i32 4
  store i32 %148, i32* %len214, align 4, !tbaa !240
  %150 = load i8*, i8** %dp190, align 8, !tbaa !1
  %151 = load %struct.cmd_segment_writer_s*, %struct.cmd_segment_writer_s** %psw.addr, align 8, !tbaa !1
  %dp215 = getelementptr inbounds %struct.cmd_segment_writer_s, %struct.cmd_segment_writer_s* %151, i32 0, i32 3
  store i8* %150, i8** %dp215, align 8, !tbaa !160
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.216

cleanup.216:                                      ; preds = %if.end.207, %if.then.206
  %152 = bitcast i32* %code191 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %152) #1
  %153 = bitcast i8** %dp190 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %153) #1
  %154 = bitcast i32* %len185 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %154) #1
  %cleanup.dest.219 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.219, label %cleanup.221 [
    i32 0, label %cleanup.cont.220
  ]

cleanup.cont.220:                                 ; preds = %cleanup.216
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.221

cleanup.221:                                      ; preds = %cleanup.cont.220, %cleanup.216, %cleanup.180, %do.end.49
  %155 = bitcast i8** %q to i8*
  call void @llvm.lifetime.end(i64 8, i8* %155) #1
  %156 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %156) #1
  %157 = bitcast i32** %optr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %157) #1
  %158 = load i32, i32* %retval
  ret i32 %158

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare i32 @gx_path_enum_notes(%struct.gs_path_enum_s*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!3, !3, i64 0}
!8 = !{!9, !2, i64 0}
!9 = !{!"gx_device_color_s", !2, i64 0, !3, i64 8, !10, i64 352, !6, i64 360, !11, i64 368, !13, i64 632}
!10 = !{!"gs_int_point_s", !6, i64 0, !6, i64 4}
!11 = !{!"gs_client_color_s", !2, i64 0, !12, i64 8}
!12 = !{!"gs_paint_color_s", !3, i64 0}
!13 = !{!"_mask", !14, i64 0, !15, i64 8, !2, i64 16}
!14 = !{!"mp_", !6, i64 0, !6, i64 4}
!15 = !{!"long", !3, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!18, !2, i64 16}
!18 = !{!"gx_device_color_type_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80}
!19 = !{!20, !15, i64 184}
!20 = !{!"gx_device_halftone_s", !21, i64 0, !27, i64 160, !15, i64 184, !3, i64 192, !2, i64 200, !6, i64 208, !6, i64 212, !6, i64 216, !6, i64 220}
!21 = !{!"gx_ht_order_s", !22, i64 0, !23, i64 40, !23, i64 42, !23, i64 44, !23, i64 46, !23, i64 48, !23, i64 50, !6, i64 52, !6, i64 56, !6, i64 60, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !24, i64 112, !2, i64 144, !6, i64 152}
!22 = !{!"gx_ht_cell_params_s", !23, i64 0, !23, i64 2, !23, i64 4, !23, i64 6, !23, i64 8, !23, i64 10, !15, i64 16, !23, i64 24, !23, i64 26, !6, i64 28, !6, i64 32, !6, i64 36}
!23 = !{!"short", !3, i64 0}
!24 = !{!"gx_ht_order_screen_params_s", !25, i64 0, !15, i64 24}
!25 = !{!"gs_matrix_s", !26, i64 0, !26, i64 4, !26, i64 8, !26, i64 12, !26, i64 16, !26, i64 20}
!26 = !{!"float", !3, i64 0}
!27 = !{!"rc_header_s", !15, i64 0, !2, i64 8, !2, i64 16}
!28 = !{!29, !15, i64 12128}
!29 = !{!"gx_device_clist_writer_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !27, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !30, i64 96, !32, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !15, i64 928, !15, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !15, i64 968, !15, i64 976, !33, i64 984, !6, i64 1052, !6, i64 1056, !34, i64 1064, !2, i64 1104, !3, i64 1112, !36, i64 1120, !37, i64 1144, !2, i64 1728, !38, i64 1736, !2, i64 1768, !2, i64 1776, !6, i64 1784, !35, i64 1792, !6, i64 1808, !6, i64 1812, !39, i64 1816, !40, i64 1840, !6, i64 1864, !6, i64 1868, !2, i64 1872, !6, i64 1880, !6, i64 1884, !41, i64 1888, !6, i64 10144, !15, i64 10152, !2, i64 10160, !2, i64 10168, !6, i64 10176, !2, i64 10184, !6, i64 10192, !2, i64 10200, !2, i64 10208, !2, i64 10216, !2, i64 10224, !2, i64 10232, !42, i64 10240, !6, i64 10256, !6, i64 10260, !6, i64 10264, !6, i64 10268, !43, i64 10272, !6, i64 10320, !6, i64 10324, !6, i64 10328, !44, i64 10336, !6, i64 11952, !6, i64 11956, !6, i64 11960, !6, i64 11964, !3, i64 11968, !2, i64 12016, !15, i64 12024, !55, i64 12032, !3, i64 12080, !15, i64 12112, !15, i64 12120, !15, i64 12128, !15, i64 12136, !6, i64 12144, !6, i64 12148, !6, i64 12152, !6, i64 12156, !2, i64 12160, !6, i64 12168, !2, i64 12176, !6, i64 12184, !6, i64 12188, !6, i64 12192, !6, i64 12196, !6, i64 12200, !6, i64 12204, !2, i64 12208, !15, i64 12216, !6, i64 12224, !6, i64 12228, !6, i64 12232, !6, i64 12236, !30, i64 12240}
!30 = !{!"gx_device_color_info_s", !6, i64 0, !6, i64 4, !3, i64 8, !23, i64 12, !3, i64 14, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !31, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !15, i64 704, !6, i64 712}
!31 = !{!"gx_device_anti_alias_info_s", !6, i64 0, !6, i64 4}
!32 = !{!"gx_device_cached_colors_s", !15, i64 0, !15, i64 8}
!33 = !{!"gx_stroked_gradient_recognizer_s", !6, i64 0, !3, i64 4, !3, i64 36}
!34 = !{!"gdev_space_params_s", !15, i64 0, !15, i64 8, !35, i64 16, !6, i64 32, !3, i64 36}
!35 = !{!"gx_band_params_s", !6, i64 0, !6, i64 4, !15, i64 8}
!36 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!37 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!38 = !{!"gx_device_buf_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!39 = !{!"gx_bits_cache_chunk_s", !2, i64 0, !2, i64 8, !6, i64 16, !6, i64 20}
!40 = !{!"gx_bits_cache_s", !2, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!41 = !{!"gx_band_page_info_s", !3, i64 0, !2, i64 4096, !3, i64 4104, !2, i64 8200, !2, i64 8208, !6, i64 8216, !15, i64 8224, !15, i64 8232, !35, i64 8240}
!42 = !{!"cmd_list_s", !2, i64 0, !2, i64 8}
!43 = !{!"gx_strip_bitmap_s", !2, i64 0, !6, i64 8, !10, i64 12, !15, i64 24, !23, i64 32, !23, i64 34, !23, i64 36, !23, i64 38, !6, i64 40}
!44 = !{!"gs_imager_state_s", !6, i64 0, !2, i64 8, !2, i64 16, !45, i64 24, !6, i64 128, !47, i64 132, !6, i64 168, !48, i64 176, !48, i64 192, !6, i64 208, !6, i64 212, !23, i64 216, !3, i64 220, !50, i64 224, !50, i64 228, !51, i64 232, !15, i64 240, !6, i64 248, !6, i64 252, !6, i64 256, !2, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !26, i64 296, !52, i64 300, !6, i64 308, !6, i64 312, !6, i64 316, !26, i64 320, !6, i64 324, !6, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !6, i64 408, !2, i64 416, !2, i64 424, !53, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !54, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !54, i64 1336}
!45 = !{!"gx_line_params_s", !26, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !6, i64 20, !26, i64 24, !26, i64 28, !26, i64 32, !6, i64 36, !25, i64 40, !46, i64 64}
!46 = !{!"gx_dash_params_s", !2, i64 0, !6, i64 8, !26, i64 12, !6, i64 16, !26, i64 20, !6, i64 24, !6, i64 28, !26, i64 32}
!47 = !{!"gs_matrix_fixed_s", !26, i64 0, !26, i64 4, !26, i64 8, !26, i64 12, !26, i64 16, !26, i64 20, !6, i64 24, !6, i64 28, !6, i64 32}
!48 = !{!"gs_point_s", !49, i64 0, !49, i64 8}
!49 = !{!"double", !3, i64 0}
!50 = !{!"gs_transparency_source_s", !26, i64 0}
!51 = !{!"gs_xstate_trans_flags", !6, i64 0, !6, i64 4}
!52 = !{!"gs_fixed_point_s", !6, i64 0, !6, i64 4}
!53 = !{!"gx_transfer_s", !6, i64 0, !2, i64 8, !6, i64 16, !2, i64 24, !6, i64 32, !2, i64 40, !6, i64 48, !2, i64 56}
!54 = !{!"gs_devicen_color_map_s", !6, i64 0, !3, i64 4, !6, i64 8, !6, i64 12, !15, i64 16, !3, i64 24}
!55 = !{!"clist_color_space_s", !3, i64 0, !15, i64 8, !56, i64 16, !2, i64 40}
!56 = !{!"clist_icc_color_s", !15, i64 0, !3, i64 8, !6, i64 12, !3, i64 16, !3, i64 20}
!57 = !{!58, !2, i64 0}
!58 = !{!"gx_device_color_saved_s", !2, i64 0, !3, i64 8, !10, i64 336}
!59 = !{!18, !2, i64 64}
!60 = !{!61, !6, i64 36}
!61 = !{!"cmd_rects_enum_s", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !2, i64 24, !6, i64 32, !6, i64 36}
!62 = !{!29, !2, i64 10200}
!63 = !{!29, !6, i64 10144}
!64 = !{!65, !15, i64 376}
!65 = !{!"gx_clist_state_s", !3, i64 0, !58, i64 16, !6, i64 360, !15, i64 368, !15, i64 376, !10, i64 384, !3, i64 392, !3, i64 408, !66, i64 1720, !6, i64 1736, !23, i64 1740, !23, i64 1742, !6, i64 1744, !6, i64 1748, !6, i64 1752, !42, i64 1760, !67, i64 1776}
!66 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!67 = !{!"gx_colors_usage_s", !15, i64 0, !6, i64 8, !68, i64 12}
!68 = !{!"gs_int_rect_s", !10, i64 0, !10, i64 8}
!69 = !{!18, !2, i64 24}
!70 = !{!10, !6, i64 0}
!71 = !{!65, !6, i64 384}
!72 = !{!10, !6, i64 4}
!73 = !{!65, !6, i64 388}
!74 = !{!29, !6, i64 10192}
!75 = !{!29, !2, i64 10216}
!76 = !{!65, !15, i64 1776}
!77 = !{!18, !2, i64 8}
!78 = !{!79, !15, i64 0}
!79 = !{!"_pattern", !15, i64 0, !10, i64 8}
!80 = !{!65, !6, i64 1788}
!81 = !{!29, !6, i64 832}
!82 = !{!65, !6, i64 1796}
!83 = !{!65, !6, i64 1792}
!84 = !{!29, !6, i64 836}
!85 = !{!65, !6, i64 1800}
!86 = !{!61, !6, i64 0}
!87 = !{!61, !6, i64 8}
!88 = !{i64 0, i64 8, !1, i64 8, i64 8, !16, i64 8, i64 16, !7, i64 24, i64 4, !5, i64 28, i64 4, !5, i64 8, i64 64, !7, i64 72, i64 256, !7, i64 328, i64 2, !89, i64 8, i64 128, !7, i64 8, i64 8, !16, i64 16, i64 4, !5, i64 20, i64 4, !5, i64 8, i64 8, !16, i64 16, i64 4, !5, i64 336, i64 4, !5, i64 340, i64 4, !5}
!89 = !{!23, !23, i64 0}
!90 = !{!29, !6, i64 100}
!91 = !{!29, !2, i64 1664}
!92 = !{!29, !23, i64 108}
!93 = !{!94, !15, i64 336}
!94 = !{!"_col", !2, i64 0, !23, i64 8, !3, i64 10, !3, i64 76, !23, i64 332, !15, i64 336}
!95 = !{!65, !6, i64 1752}
!96 = !{!29, !2, i64 12016}
!97 = !{!98, !15, i64 296}
!98 = !{!"gx_clip_path_s", !99, i64 0, !103, i64 128, !6, i64 232, !102, i64 236, !102, i64 252, !2, i64 272, !6, i64 280, !2, i64 288, !15, i64 296}
!99 = !{!"gx_path_s", !100, i64 0, !2, i64 40, !3, i64 48, !2, i64 56, !2, i64 64, !102, i64 72, !2, i64 88, !3, i64 96, !3, i64 97, !3, i64 98, !3, i64 99, !3, i64 100, !6, i64 104, !6, i64 108, !52, i64 112, !2, i64 120}
!100 = !{!"gx_path_segments_s", !27, i64 0, !101, i64 24}
!101 = !{!"psc_", !2, i64 0, !2, i64 8}
!102 = !{!"gs_fixed_rect_s", !52, i64 0, !52, i64 8}
!103 = !{!"gx_clip_rect_list_s", !27, i64 0, !104, i64 24}
!104 = !{!"gx_clip_list_s", !105, i64 0, !2, i64 40, !2, i64 48, !2, i64 56, !6, i64 64, !6, i64 68, !6, i64 72}
!105 = !{!"gx_clip_rect_s", !2, i64 0, !2, i64 8, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !3, i64 32}
!106 = !{!29, !15, i64 12024}
!107 = !{!29, !2, i64 24}
!108 = !{!29, !3, i64 10364}
!109 = !{!29, !3, i64 10376}
!110 = !{!29, !3, i64 10368}
!111 = !{!29, !3, i64 10372}
!112 = !{!29, !6, i64 10380}
!113 = !{!29, !6, i64 10648}
!114 = !{!29, !6, i64 10644}
!115 = !{!45, !26, i64 0}
!116 = !{!26, !26, i64 0}
!117 = !{!29, !3, i64 10556}
!118 = !{!29, !6, i64 10584}
!119 = !{!29, !6, i64 10612}
!120 = !{!29, !6, i64 10608}
!121 = !{!29, !6, i64 10660}
!122 = !{!29, !6, i64 10432}
!123 = !{!29, !6, i64 10440}
!124 = !{!29, !6, i64 10396}
!125 = !{!29, !6, i64 10132}
!126 = !{!98, !6, i64 280}
!127 = !{!102, !6, i64 0}
!128 = !{!102, !6, i64 4}
!129 = !{!102, !6, i64 8}
!130 = !{!102, !6, i64 12}
!131 = !{!29, !6, i64 12168}
!132 = !{!98, !6, i64 232}
!133 = !{!104, !2, i64 40}
!134 = !{!105, !6, i64 28}
!135 = !{!105, !6, i64 24}
!136 = !{!105, !6, i64 16}
!137 = !{!105, !6, i64 20}
!138 = !{!105, !2, i64 0}
!139 = !{!29, !6, i64 12144}
!140 = !{!29, !6, i64 12156}
!141 = !{!65, !23, i64 1742}
!142 = !{!29, !3, i64 12032}
!143 = !{!29, !2, i64 12072}
!144 = !{!145, !6, i64 0}
!145 = !{!"gs_indexed_params_s", !6, i64 0, !6, i64 4, !3, i64 8, !6, i64 24}
!146 = !{!147, !2, i64 40}
!147 = !{!"gs_color_space_s", !2, i64 0, !27, i64 8, !15, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !3, i64 72}
!148 = !{!149, !2, i64 48}
!149 = !{!"gs_indexed_map_s", !27, i64 0, !3, i64 24, !2, i64 32, !6, i64 40, !2, i64 48}
!150 = !{!151, !2, i64 0}
!151 = !{!"gs_const_string_s", !2, i64 0, !6, i64 8}
!152 = !{!65, !6, i64 1720}
!153 = !{!65, !6, i64 1724}
!154 = !{!52, !6, i64 4}
!155 = !{!52, !6, i64 0}
!156 = !{!157, !2, i64 0}
!157 = !{!"cmd_segment_writer_s", !2, i64 0, !2, i64 8, !3, i64 16, !2, i64 24, !6, i64 32, !52, i64 36, !3, i64 44}
!158 = !{!157, !2, i64 8}
!159 = !{!157, !3, i64 16}
!160 = !{!157, !2, i64 24}
!161 = !{i64 0, i64 4, !5, i64 4, i64 4, !5}
!162 = !{!44, !6, i64 212}
!163 = !{!164, !6, i64 0}
!164 = !{!"gx_fill_params_s", !6, i64 0, !52, i64 4, !26, i64 12}
!165 = !{!29, !6, i64 12184}
!166 = !{!29, !6, i64 12188}
!167 = !{!29, !6, i64 12200}
!168 = !{!29, !6, i64 12192}
!169 = !{!29, !6, i64 12196}
!170 = !{!164, !26, i64 12}
!171 = !{!29, !6, i64 12148}
!172 = !{!61, !6, i64 4}
!173 = !{!61, !6, i64 12}
!174 = !{!61, !6, i64 20}
!175 = !{!61, !2, i64 24}
!176 = !{!61, !6, i64 32}
!177 = !{!29, !6, i64 11952}
!178 = !{!68, !6, i64 0}
!179 = !{!68, !6, i64 8}
!180 = !{!68, !6, i64 4}
!181 = !{!68, !6, i64 12}
!182 = !{!65, !6, i64 1784}
!183 = !{!49, !49, i64 0}
!184 = !{!44, !6, i64 44}
!185 = !{!44, !6, i64 312}
!186 = !{!44, !6, i64 308}
!187 = !{!29, !26, i64 10632}
!188 = !{!44, !6, i64 272}
!189 = !{!44, !6, i64 276}
!190 = !{!44, !3, i64 220}
!191 = !{!44, !6, i64 248}
!192 = !{!44, !6, i64 324}
!193 = !{!29, !26, i64 10560}
!194 = !{!44, !26, i64 224}
!195 = !{!29, !26, i64 10564}
!196 = !{!44, !26, i64 228}
!197 = !{!29, !6, i64 10636}
!198 = !{!29, !6, i64 10640}
!199 = !{!29, !23, i64 10552}
!200 = !{!44, !23, i64 216}
!201 = !{!44, !6, i64 96}
!202 = !{!203, !6, i64 836}
!203 = !{!"gx_device_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !27, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !30, i64 96, !32, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !15, i64 928, !15, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !15, i64 968, !15, i64 976, !33, i64 984, !6, i64 1052, !6, i64 1056, !34, i64 1064, !2, i64 1104, !3, i64 1112, !36, i64 1120, !37, i64 1144}
!204 = !{!44, !2, i64 88}
!205 = !{!29, !26, i64 10436}
!206 = !{!44, !26, i64 100}
!207 = !{!44, !6, i64 104}
!208 = !{!29, !26, i64 10392}
!209 = !{!44, !26, i64 56}
!210 = !{!44, !6, i64 60}
!211 = !{!29, !2, i64 10424}
!212 = !{!46, !6, i64 16}
!213 = !{!44, !3, i64 28}
!214 = !{!44, !3, i64 40}
!215 = !{!44, !3, i64 32}
!216 = !{!44, !3, i64 36}
!217 = !{!218, !26, i64 0}
!218 = !{!"gx_stroke_params_s", !26, i64 0, !6, i64 4}
!219 = !{!29, !26, i64 10360}
!220 = !{!44, !26, i64 24}
!221 = !{!29, !26, i64 10384}
!222 = !{!44, !26, i64 48}
!223 = !{!29, !26, i64 10468}
!224 = !{!44, !26, i64 132}
!225 = !{!29, !26, i64 10472}
!226 = !{!44, !26, i64 136}
!227 = !{!29, !26, i64 10476}
!228 = !{!44, !26, i64 140}
!229 = !{!29, !26, i64 10480}
!230 = !{!44, !26, i64 144}
!231 = !{!29, !26, i64 10484}
!232 = !{!44, !26, i64 148}
!233 = !{!29, !26, i64 10488}
!234 = !{!44, !26, i64 152}
!235 = !{i64 0, i64 4, !116, i64 4, i64 4, !116, i64 8, i64 4, !116, i64 12, i64 4, !116, i64 16, i64 4, !116, i64 20, i64 4, !116, i64 24, i64 4, !5, i64 28, i64 4, !5, i64 32, i64 4, !5}
!236 = !{!18, !2, i64 40}
!237 = !{!203, !2, i64 24}
!238 = !{!157, !6, i64 36}
!239 = !{!157, !6, i64 40}
!240 = !{!157, !6, i64 32}
!241 = !{!42, !2, i64 8}
!242 = !{!243, !6, i64 8}
!243 = !{!"cmd_prefix_s", !2, i64 0, !6, i64 8, !15, i64 16}
