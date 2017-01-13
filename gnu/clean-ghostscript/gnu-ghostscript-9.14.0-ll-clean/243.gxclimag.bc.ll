; ModuleID = './gxclimag.bc'
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
%struct.gx_image_enum_s = type { %struct.gx_image_type_s*, %struct.gx_image_enum_procs_s*, %struct.gx_device_s*, %struct.gs_memory_s*, i64, i32, i32, [65 x i32], [65 x i32], i32, i32, i8, i8, i8, i8, i32, %struct.mc_, i8, i8, i8, i8, %struct.gs_matrix_s, %struct.r_, %struct.anon, i32, i32, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s, i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)*, {}*, %struct.gs_imager_state_s*, %struct.gs_color_space_s*, i8*, i32, i8*, i32, i32, i32, i8, i8, i8, i8, %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s, i32, i32, i32, i32, %struct.gx_device_clip_s*, %struct.gx_device_rop_texture_s*, %struct.stream_image_scale_state_s*, i32, %struct.gs_int_point_s, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s, %struct.dd_, i32, i32, %struct.gs_int_point_s, i32, i32, i32, i32, i32, [65 x %struct.sample_map_s], %struct.gx_image_clue_s*, %struct.gx_device_color_s, %struct.gx_device_color_s, %struct.gx_device_color_s*, %struct.gx_device_color_s*, %struct.gsicc_link_s*, %struct.gx_image_color_cache_s*, i8*, i32, i32, i32, i8*, i32, i32, %struct.ht_landscape_info_s, %struct.gx_image_icc_setup_s, i32 }
%struct.gx_image_type_s = type { %struct.gs_memory_struct_type_s*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gs_imager_state_s*, %struct.gs_image_common_s*, %struct.gs_int_point_s*)*, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s**)*, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s*)*, void (%struct.gs_image_common_s*, %struct.gs_memory_s*)*, i32 }
%struct.gs_image_common_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s }
%struct.gx_clip_path_s = type opaque
%struct.gx_image_enum_common_s = type { %struct.gx_image_type_s*, %struct.gx_image_enum_procs_s*, %struct.gx_device_s*, %struct.gs_memory_s*, i64, i32, i32, [65 x i32], [65 x i32] }
%struct.gx_image_enum_procs_s = type { i32 (%struct.gx_image_enum_common_s*, %struct.gx_image_plane_s*, i32, i32*)*, i32 (%struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_image_enum_common_s*)*, i32 (%struct.gx_image_enum_common_s*, i8*)* }
%struct.gx_image_plane_s = type { i8*, i32, i32 }
%struct.mc_ = type { [130 x i32], i32, i32, i32 }
%struct.r_ = type { i32, i32, i32, i32 }
%struct.anon = type { i32, i32, i32, i32 }
%struct.sample_map_s = type { %union.sample_lookup_s, [16 x float], float, i32, i32 }
%union.sample_lookup_s = type { [16 x i32], [192 x i8] }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gx_device_clip_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, %struct.gx_clip_list_s, %struct.gx_clip_rect_s*, %struct.gs_int_point_s, %struct.gs_fixed_rect_s, i32 }
%struct.gx_device_color_info_s = type { i32, i32, i32, i16, i8, i32, i32, i32, i32, %struct.gx_device_anti_alias_info_s, i32, [64 x i8], [64 x i8], [64 x i64], i8*, i32, i64, i32 }
%struct.gx_device_anti_alias_info_s = type { i32, i32 }
%struct.gx_device_cached_colors_s = type { i64, i64 }
%struct.gx_stroked_gradient_recognizer_s = type { i32, [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s] }
%struct.gdev_space_params_s = type { i64, i64, %struct.gx_band_params_s, i32, i32 }
%struct.gx_band_params_s = type { i32, i32, i64 }
%struct.cmm_dev_profile_s = type { [4 x %struct.cmm_profile_s*], %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, [4 x %struct.gsicc_rendering_param_s], i32, i32, i32, i32, i32, i32, %struct.gsicc_namelist_s*, i32, %struct.gs_memory_s*, %struct.rc_header_s }
%struct.gx_page_device_procs_s = type { i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* }
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i8*, i8**)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i64 (%struct.gx_device_s*, i16*)*, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i32, i32*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, {}*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)*, i32 (%struct.gx_device_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, void (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* }
%struct.gx_tile_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16 }
%struct.gx_xfont_procs_s = type opaque
%struct.gx_path_s = type opaque
%struct.gx_fill_params_s = type opaque
%struct.gx_stroke_params_s = type opaque
%struct.gs_fixed_edge_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_image1_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, i32, i32, i32, [130 x float], i32, i32, i32, %struct.gs_color_space_s*, i32, i32, i32, i32 }
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
%struct.gx_clist_state_s = type { [2 x i64], %struct.gx_device_color_saved_s, i32, i64, i64, %struct.gs_int_point_s, [2 x i64], [2 x %struct.gx_device_color_s], %struct.gx_cmd_rect, i32, i16, i16, i32, i32, i32, %struct.cmd_list_s, %struct.gx_colors_usage_s }
%struct.gx_device_color_saved_s = type { %struct.gx_device_color_type_s*, %union._svc, %struct.gs_int_point_s }
%union._svc = type { %struct._svbin, [304 x i8] }
%struct._svbin = type { [2 x i64], i32, i32 }
%struct.gx_cmd_rect = type { i32, i32, i32, i32 }
%struct.cmd_list_s = type { %struct.cmd_prefix_s*, %struct.cmd_prefix_s* }
%struct.cmd_prefix_s = type { %struct.cmd_prefix_s*, i32, i64 }
%struct.clist_color_space_s = type { i8, i64, %struct.clist_icc_color_s, %struct.gs_color_space_s* }
%struct.clist_icc_color_s = type { i64, i8, i32, i32, i32 }
%struct.gs_pattern1_instance_s = type { %struct.rc_header_s, %struct.gs_pattern_type_s*, %struct.gs_state_s*, i64, %struct.gs_pattern1_template_s, %struct.gs_matrix_s, %struct.gs_rect_s, i32, i32, i32, i32, i32, %struct.gs_int_point_s, i64 }
%struct.gs_pattern1_template_s = type { %struct.gs_pattern_type_s*, i32, %struct.gs_uid_s, i8*, i32, i32, i32, %struct.gs_rect_s, float, float, i32 (%struct.gs_client_color_s*, %struct.gs_state_s*)* }
%struct.clist_writer_cropping_buffer_s = type { i32, i32, i32, i32, %struct.clist_writer_cropping_buffer_s* }
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
%struct.gx_clip_list_s = type { %struct.gx_clip_rect_s, %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s*, i32, i32, i32 }
%struct.gx_clip_rect_s = type { %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s*, i32, i32, i32, i32, i8 }
%struct.gx_device_rop_texture_s = type opaque
%struct.stream_image_scale_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], %struct.stream_image_scale_params_s }
%struct.stream_image_scale_params_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dd_ = type { %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s }
%struct.gx_dda_fixed_point_s = type { %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s }
%struct.gx_dda_fixed_s = type { %struct._a, %struct._e }
%struct._a = type { i32, i32 }
%struct._e = type { i32, i32, i32 }
%struct.gx_image_clue_s = type { %struct.gx_device_color_s, i32 }
%struct.gx_image_color_cache_s = type { i32*, i8* }
%struct.ht_landscape_info_s = type { i32, [64 x i32], i32, i32, i32, i32, i32, i32, i32 }
%struct.gx_image_icc_setup_s = type { i32, i32, i32, i32 }
%union.gx_device_clist_s = type { %struct.gx_device_clist_writer_s }
%struct.gx_cie_joint_caches_s = type opaque
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
%struct.gs_state_s = type opaque
%struct.gs_paint_color_s = type { [64 x float] }
%struct._mask = type { %struct.mp_, i64, %struct.gx_color_tile_s* }
%struct.mp_ = type { i32, i32 }
%struct.gx_rop_source_s = type { i8*, i32, i32, i64, [2 x i64], i32, i32 }
%struct.clist_select_color_t = type { i8, i8, i32, i32 }
%struct.gc_struct_data_s = type { i16, i16, %struct.gs_memory_struct_type_s*, %struct.gc_ptr_element_s* }
%struct.gc_ptr_element_s = type { i16, i16 }
%struct.cmd_rects_enum_s = type { i32, i32, i32, i32, i32, i32, %struct.gx_clist_state_s*, i32, i32 }
%struct.tile_slot = type { %struct.gx_cached_bits_head_s, i16, i16, i16, i16, i64, i8, i8, i16, i16, i16, i8 }
%struct.gx_cached_bits_head_s = type { i32, i32 }
%struct.gs_pixel_image_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, i32, i32, i32, [130 x float], i32, i32, i32, %struct.gs_color_space_s* }
%struct.clist_image_enum_s = type { %struct.gx_image_type_s*, %struct.gx_image_enum_procs_s*, %struct.gx_device_s*, %struct.gs_memory_s*, i64, i32, i32, [65 x i32], [65 x i32], %struct.gs_pixel_image_s, %struct.gx_device_color_s, %struct.gs_int_rect_s, %struct.gs_imager_state_s*, %struct.gx_clip_path_s*, i32, %struct.gs_int_point_s, i32, %struct.gs_matrix_s, i32, %struct.clist_color_space_s, i32, i32, %struct.gx_colors_usage_s, [920 x i8], i32, i32, i32, i32, i32, i32, i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)*, i8*, i32, [65 x %struct.sample_map_s] }
%struct.gs_data_image_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, i32, i32, i32, [130 x float], i32 }
%struct.gs_indexed_params_s = type { i32, i32, %union.anon.0, i32 }
%union.anon.0 = type { %struct.gs_const_string_s }

@gx_dc_type_data_pure = external constant %struct.gx_device_color_type_s, align 8
@clist_select_color1 = external constant %struct.clist_select_color_t, align 4
@st_clist_image_enum = internal constant %struct.gs_memory_struct_type_s { i32 24520, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @clist_image_enum_reloc_ptrs to i8*) }, align 8
@.str = private unnamed_addr constant [24 x i8] c"clist_begin_typed_image\00", align 1
@clist_image_enum_procs = internal constant %struct.gx_image_enum_procs_s { i32 (%struct.gx_image_enum_common_s*, %struct.gx_image_plane_s*, i32, i32*)* @clist_image_plane_data, i32 (%struct.gx_image_enum_common_s*, i32)* @clist_image_end_image, i32 (%struct.gx_image_enum_common_s*)* null, i32 (%struct.gx_image_enum_common_s*, i8*)* null }, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"image buffer\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"cmd_put_halftone\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"clist_image_enum\00", align 1
@clist_image_enum_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 4, i16 0, %struct.gs_memory_struct_type_s* @st_gx_image_enum_common, %struct.gc_ptr_element_s* getelementptr inbounds ([4 x %struct.gc_ptr_element_s], [4 x %struct.gc_ptr_element_s]* @clist_image_enum_enum_ptrs, i32 0, i32 0) }, align 8
@st_gx_image_enum_common = external constant %struct.gs_memory_struct_type_s, align 8
@clist_image_enum_enum_ptrs = internal constant [4 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 1824 }, %struct.gc_ptr_element_s { i16 0, i16 1832 }, %struct.gc_ptr_element_s { i16 0, i16 1928 }, %struct.gc_ptr_element_s { i16 0, i16 2928 }], align 16
@.str.4 = private unnamed_addr constant [9 x i8] c"\01\08\04\08\02\08\04\08\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"write_image_end_all\00", align 1
@get_unpack_proc.procs = internal global [2 x [6 x i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)*]] [[6 x i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)*] [i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)* @sample_unpack_1, i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)* @sample_unpack_2, i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)* @sample_unpack_4, i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)* @sample_unpack_8, i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)* null, i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)* null], [6 x i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)*] [i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)* @sample_unpack_1_interleaved, i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)* @sample_unpack_2_interleaved, i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)* @sample_unpack_4_interleaved, i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)* @sample_unpack_8_interleaved, i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)* null, i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)* null]], align 16
@sample_unpack_12_proc = external constant i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)*, align 8
@sample_unpackicc_16_proc = external constant i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)*, align 8
@get_map.default_decode = internal constant [10 x float] [float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00], align 16
@lookup4x1to32_identity = external constant [16 x i32], align 16
@lookup4x1to32_inverted = external constant [16 x i32], align 16
@gx_image_type_table_count = external constant i32, align 4
@gx_image_type_table = external constant [0 x %struct.gx_image_type_s*], align 8

; Function Attrs: nounwind uwtable
define i32 @clist_fill_mask(%struct.gx_device_s* %dev, i8* %data, i32 %data_x, i32 %raster, i64 %id, i32 %rx, i32 %ry, i32 %rwidth, i32 %rheight, %struct.gx_device_color_s* %pdcolor, i32 %depth, i32 %lop, %struct.gx_clip_path_s* %pcpath) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %data.addr = alloca i8*, align 8
  %data_x.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %rx.addr = alloca i32, align 4
  %ry.addr = alloca i32, align 4
  %rwidth.addr = alloca i32, align 4
  %rheight.addr = alloca i32, align 4
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %depth.addr = alloca i32, align 4
  %lop.addr = alloca i32, align 4
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %cdev = alloca %struct.gx_device_clist_writer_s*, align 8
  %orig_data = alloca i8*, align 8
  %orig_data_x = alloca i32, align 4
  %orig_x = alloca i32, align 4
  %orig_width = alloca i32, align 4
  %orig_height = alloca i32, align 4
  %y0 = alloca i32, align 4
  %copy_op = alloca i8, align 1
  %slow_rop = alloca i32, align 4
  %re = alloca %struct.cmd_rects_enum_s, align 8
  %cleanup.dest.slot = alloca i32
  %bbox = alloca %struct.gs_int_rect_s, align 4
  %code = alloca i32, align 4
  %offset_temp = alloca i64, align 8
  %dp = alloca i8*, align 8
  %tile = alloca %struct.gx_strip_bitmap_s, align 8
  %rect = alloca %struct.gx_cmd_rect, align 4
  %rsize = alloca i32, align 4
  %op = alloca i8, align 1
  %dp373 = alloca i8*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %data_x, i32* %data_x.addr, align 4, !tbaa !5
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !5
  store i64 %id, i64* %id.addr, align 8, !tbaa !7
  store i32 %rx, i32* %rx.addr, align 4, !tbaa !5
  store i32 %ry, i32* %ry.addr, align 4, !tbaa !5
  store i32 %rwidth, i32* %rwidth.addr, align 4, !tbaa !5
  store i32 %rheight, i32* %rheight.addr, align 4, !tbaa !5
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store i32 %depth, i32* %depth.addr, align 4, !tbaa !5
  store i32 %lop, i32* %lop.addr, align 4, !tbaa !5
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_clist_writer_s** %cdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %union.gx_device_clist_s*
  %writer = bitcast %union.gx_device_clist_s* %2 to %struct.gx_device_clist_writer_s*
  store %struct.gx_device_clist_writer_s* %writer, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %3 = bitcast i8** %orig_data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load i8*, i8** %data.addr, align 8, !tbaa !1
  store i8* %4, i8** %orig_data, align 8, !tbaa !1
  %5 = bitcast i32* %orig_data_x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  store i32 %6, i32* %orig_data_x, align 4, !tbaa !5
  %7 = bitcast i32* %orig_x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load i32, i32* %rx.addr, align 4, !tbaa !5
  store i32 %8, i32* %orig_x, align 4, !tbaa !5
  %9 = bitcast i32* %orig_width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load i32, i32* %rwidth.addr, align 4, !tbaa !5
  store i32 %10, i32* %orig_width, align 4, !tbaa !5
  %11 = bitcast i32* %orig_height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load i32, i32* %rheight.addr, align 4, !tbaa !5
  store i32 %12, i32* %orig_height, align 4, !tbaa !5
  %13 = bitcast i32* %y0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  call void @llvm.lifetime.start(i64 1, i8* %copy_op) #1
  %14 = load i32, i32* %depth.addr, align 4, !tbaa !5
  %cmp = icmp sgt i32 %14, 1
  %cond = select i1 %cmp, i32 160, i32 148
  %conv = trunc i32 %cond to i8
  store i8 %conv, i8* %copy_op, align 1, !tbaa !9
  %15 = bitcast i32* %slow_rop to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %17 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %and = and i32 %17, 51
  %shl = shl i32 %and, 2
  %18 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %and1 = and i32 %18, -205
  %or = or i32 %shl, %and1
  %and2 = and i32 %or, -257
  %19 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %call = call i32 @cmd_slow_rop(%struct.gx_device_s* %16, i32 %and2, %struct.gx_device_color_s* %19) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %21 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %and3 = and i32 %21, 256
  %tobool4 = icmp ne i32 %and3, 0
  br i1 %tobool4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.rhs
  br label %cond.end

cond.false:                                       ; preds = %lor.rhs
  %22 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %and5 = and i32 %22, 204
  %shr = lshr i32 %and5, 2
  %23 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %and6 = and i32 %23, -52
  %or7 = or i32 %shr, %and6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond8 = phi i32 [ 170, %cond.true ], [ %or7, %cond.false ]
  %24 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %call9 = call i32 @cmd_slow_rop(%struct.gx_device_s* %20, i32 %cond8, %struct.gx_device_color_s* %24) #6
  %tobool10 = icmp ne i32 %call9, 0
  br label %lor.end

lor.end:                                          ; preds = %cond.end, %entry
  %25 = phi i1 [ true, %entry ], [ %tobool10, %cond.end ]
  %lor.ext = zext i1 %25 to i32
  store i32 %lor.ext, i32* %slow_rop, align 4, !tbaa !5
  %26 = bitcast %struct.cmd_rects_enum_s* %re to i8*
  call void @llvm.lifetime.start(i64 40, i8* %26) #1
  %27 = load i32, i32* %depth.addr, align 4, !tbaa !5
  %cmp11 = icmp sgt i32 %27, 1
  br i1 %cmp11, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.end
  %28 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %disable_mask = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %28, i32 0, i32 99
  %29 = load i32, i32* %disable_mask, align 4, !tbaa !10
  %and13 = and i32 %29, 64
  %cmp14 = icmp ne i32 %and13, 0
  br i1 %cmp14, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.463

if.end:                                           ; preds = %land.lhs.true, %lor.end
  br label %do.body

do.body:                                          ; preds = %if.end
  %30 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %cmp16 = icmp slt i32 %30, 0
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %do.body
  %31 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %32 = load i32, i32* %rwidth.addr, align 4, !tbaa !5
  %add = add nsw i32 %32, %31
  store i32 %add, i32* %rwidth.addr, align 4, !tbaa !5
  %33 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %34 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %34, %33
  store i32 %sub, i32* %data_x.addr, align 4, !tbaa !5
  store i32 0, i32* %rx.addr, align 4, !tbaa !5
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %do.body
  br label %do.body.20

do.body.20:                                       ; preds = %if.end.19
  %35 = load i32, i32* %rwidth.addr, align 4, !tbaa !5
  %36 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %36, i32 0, i32 13
  %37 = load i32, i32* %width, align 4, !tbaa !44
  %38 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %sub21 = sub nsw i32 %37, %38
  %cmp22 = icmp sgt i32 %35, %sub21
  br i1 %cmp22, label %if.then.24, label %if.end.27

if.then.24:                                       ; preds = %do.body.20
  %39 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %width25 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %39, i32 0, i32 13
  %40 = load i32, i32* %width25, align 4, !tbaa !44
  %41 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %sub26 = sub nsw i32 %40, %41
  store i32 %sub26, i32* %rwidth.addr, align 4, !tbaa !5
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.24, %do.body.20
  br label %do.cond

do.cond:                                          ; preds = %if.end.27
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.28

do.body.28:                                       ; preds = %do.end
  %42 = load i32, i32* %ry.addr, align 4, !tbaa !5
  %43 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %cropping_min = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %43, i32 0, i32 101
  %44 = load i32, i32* %cropping_min, align 4, !tbaa !45
  %cmp29 = icmp slt i32 %42, %44
  br i1 %cmp29, label %if.then.31, label %if.end.38

if.then.31:                                       ; preds = %do.body.28
  %45 = load i32, i32* %ry.addr, align 4, !tbaa !5
  %46 = load i32, i32* %rheight.addr, align 4, !tbaa !5
  %add32 = add nsw i32 %45, %46
  %47 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %cropping_min33 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %47, i32 0, i32 101
  %48 = load i32, i32* %cropping_min33, align 4, !tbaa !45
  %sub34 = sub nsw i32 %add32, %48
  store i32 %sub34, i32* %rheight.addr, align 4, !tbaa !5
  %49 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %cropping_min35 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %49, i32 0, i32 101
  %50 = load i32, i32* %cropping_min35, align 4, !tbaa !45
  %51 = load i32, i32* %ry.addr, align 4, !tbaa !5
  %sub36 = sub nsw i32 %50, %51
  %52 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %sub36, %52
  %53 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %53, i64 %idx.ext
  store i8* %add.ptr, i8** %data.addr, align 8, !tbaa !1
  store i64 0, i64* %id.addr, align 8, !tbaa !7
  %54 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %cropping_min37 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %54, i32 0, i32 101
  %55 = load i32, i32* %cropping_min37, align 4, !tbaa !45
  store i32 %55, i32* %ry.addr, align 4, !tbaa !5
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.31, %do.body.28
  %56 = load i32, i32* %ry.addr, align 4, !tbaa !5
  %57 = load i32, i32* %rheight.addr, align 4, !tbaa !5
  %add39 = add nsw i32 %56, %57
  %58 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %cropping_max = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %58, i32 0, i32 102
  %59 = load i32, i32* %cropping_max, align 4, !tbaa !46
  %cmp40 = icmp sgt i32 %add39, %59
  br i1 %cmp40, label %if.then.42, label %if.end.45

if.then.42:                                       ; preds = %if.end.38
  %60 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %cropping_max43 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %60, i32 0, i32 102
  %61 = load i32, i32* %cropping_max43, align 4, !tbaa !46
  %62 = load i32, i32* %ry.addr, align 4, !tbaa !5
  %sub44 = sub nsw i32 %61, %62
  store i32 %sub44, i32* %rheight.addr, align 4, !tbaa !5
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.42, %if.end.38
  br label %do.cond.46

do.cond.46:                                       ; preds = %if.end.45
  br label %do.end.47

do.end.47:                                        ; preds = %do.cond.46
  br label %do.cond.48

do.cond.48:                                       ; preds = %do.end.47
  br label %do.end.49

do.end.49:                                        ; preds = %do.cond.48
  %63 = load i32, i32* %rwidth.addr, align 4, !tbaa !5
  %cmp50 = icmp sle i32 %63, 0
  br i1 %cmp50, label %if.then.54, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.49
  %64 = load i32, i32* %rheight.addr, align 4, !tbaa !5
  %cmp52 = icmp sle i32 %64, 0
  br i1 %cmp52, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %lor.lhs.false, %do.end.49
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.463

if.end.55:                                        ; preds = %lor.lhs.false
  %65 = load i32, i32* %ry.addr, align 4, !tbaa !5
  store i32 %65, i32* %y0, align 4, !tbaa !5
  %66 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %disable_mask56 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %66, i32 0, i32 99
  %67 = load i32, i32* %disable_mask56, align 4, !tbaa !10
  %and57 = and i32 %67, 8
  %tobool58 = icmp ne i32 %and57, 0
  br i1 %tobool58, label %land.lhs.true.59, label %lor.lhs.false.64

land.lhs.true.59:                                 ; preds = %if.end.55
  %68 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %69 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %70 = load i32, i32* %ry.addr, align 4, !tbaa !5
  %71 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %72 = load i32, i32* %rwidth.addr, align 4, !tbaa !5
  %add60 = add nsw i32 %71, %72
  %73 = load i32, i32* %ry.addr, align 4, !tbaa !5
  %74 = load i32, i32* %rheight.addr, align 4, !tbaa !5
  %add61 = add nsw i32 %73, %74
  %call62 = call i32 @check_rect_for_trivial_clip(%struct.gx_clip_path_s* %68, i32 %69, i32 %70, i32 %add60, i32 %add61) #6
  %tobool63 = icmp ne i32 %call62, 0
  br i1 %tobool63, label %lor.lhs.false.64, label %if.then.83

lor.lhs.false.64:                                 ; preds = %land.lhs.true.59, %if.end.55
  %call65 = call i32 @gs_debug_c(i32 96) #6
  %tobool66 = icmp ne i32 %call65, 0
  br i1 %tobool66, label %if.then.83, label %lor.lhs.false.67

lor.lhs.false.67:                                 ; preds = %lor.lhs.false.64
  %75 = load i64, i64* %id.addr, align 8, !tbaa !7
  %cmp68 = icmp eq i64 %75, 0
  br i1 %cmp68, label %if.then.83, label %lor.lhs.false.70

lor.lhs.false.70:                                 ; preds = %lor.lhs.false.67
  %76 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %cmp71 = icmp ne i32 %76, 252
  br i1 %cmp71, label %if.then.83, label %lor.lhs.false.73

lor.lhs.false.73:                                 ; preds = %lor.lhs.false.70
  %77 = load i32, i32* %depth.addr, align 4, !tbaa !5
  %cmp74 = icmp sgt i32 %77, 1
  br i1 %cmp74, label %land.lhs.true.76, label %if.end.85

land.lhs.true.76:                                 ; preds = %lor.lhs.false.73
  %78 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %78, i32 0, i32 0
  %79 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !47
  %cmp77 = icmp eq %struct.gx_device_color_type_s* %79, @gx_dc_type_data_pure
  br i1 %cmp77, label %land.lhs.true.79, label %if.then.83

land.lhs.true.79:                                 ; preds = %land.lhs.true.76
  %80 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %and80 = and i32 %80, 563
  %cmp81 = icmp eq i32 %and80, 48
  br i1 %cmp81, label %if.end.85, label %if.then.83

if.then.83:                                       ; preds = %land.lhs.true.79, %land.lhs.true.76, %lor.lhs.false.70, %lor.lhs.false.67, %lor.lhs.false.64, %land.lhs.true.59
  br label %copy

copy:                                             ; preds = %cleanup.453, %if.then.83
  %81 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %82 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %83 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %84 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %85 = load i64, i64* %id.addr, align 8, !tbaa !7
  %86 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %87 = load i32, i32* %ry.addr, align 4, !tbaa !5
  %88 = load i32, i32* %rwidth.addr, align 4, !tbaa !5
  %89 = load i32, i32* %rheight.addr, align 4, !tbaa !5
  %90 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %91 = load i32, i32* %depth.addr, align 4, !tbaa !5
  %92 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %93 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call84 = call i32 @gx_default_fill_mask(%struct.gx_device_s* %81, i8* %82, i32 %83, i32 %84, i64 %85, i32 %86, i32 %87, i32 %88, i32 %89, %struct.gx_device_color_s* %90, i32 %91, i32 %92, %struct.gx_clip_path_s* %93) #6
  store i32 %call84, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.463

if.end.85:                                        ; preds = %land.lhs.true.79, %lor.lhs.false.73
  %94 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %95 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call86 = call i32 @cmd_check_clip_path(%struct.gx_device_clist_writer_s* %94, %struct.gx_clip_path_s* %95) #6
  %tobool87 = icmp ne i32 %call86, 0
  br i1 %tobool87, label %if.then.88, label %if.end.89

if.then.88:                                       ; preds = %if.end.85
  %96 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  call void @cmd_clear_known(%struct.gx_device_clist_writer_s* %96, i32 8192) #6
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.88, %if.end.85
  %97 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %permanent_error = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %97, i32 0, i32 95
  %98 = load i32, i32* %permanent_error, align 4, !tbaa !53
  %cmp90 = icmp slt i32 %98, 0
  br i1 %cmp90, label %if.then.92, label %if.end.94

if.then.92:                                       ; preds = %if.end.89
  %99 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %permanent_error93 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %99, i32 0, i32 95
  %100 = load i32, i32* %permanent_error93, align 4, !tbaa !53
  store i32 %100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.463

if.end.94:                                        ; preds = %if.end.89
  %101 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pdf14_needed = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %101, i32 0, i32 81
  %102 = load i32, i32* %pdf14_needed, align 4, !tbaa !54
  %tobool95 = icmp ne i32 %102, 0
  br i1 %tobool95, label %if.then.96, label %if.end.105

if.then.96:                                       ; preds = %if.end.94
  %103 = bitcast %struct.gs_int_rect_s* %bbox to i8*
  call void @llvm.lifetime.start(i64 16, i8* %103) #1
  %104 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %p = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p, i32 0, i32 0
  store i32 %104, i32* %x, align 4, !tbaa !55
  %105 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %106 = load i32, i32* %rwidth.addr, align 4, !tbaa !5
  %add97 = add nsw i32 %105, %106
  %sub98 = sub nsw i32 %add97, 1
  %q = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox, i32 0, i32 1
  %x99 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q, i32 0, i32 0
  store i32 %sub98, i32* %x99, align 4, !tbaa !57
  %107 = load i32, i32* %ry.addr, align 4, !tbaa !5
  %p100 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p100, i32 0, i32 1
  store i32 %107, i32* %y, align 4, !tbaa !58
  %108 = load i32, i32* %ry.addr, align 4, !tbaa !5
  %109 = load i32, i32* %rheight.addr, align 4, !tbaa !5
  %add101 = add nsw i32 %108, %109
  %sub102 = sub nsw i32 %add101, 1
  %q103 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox, i32 0, i32 1
  %y104 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q103, i32 0, i32 1
  store i32 %sub102, i32* %y104, align 4, !tbaa !59
  %110 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  call void @clist_update_trans_bbox(%struct.gx_device_clist_writer_s* %110, %struct.gs_int_rect_s* %bbox) #6
  %111 = bitcast %struct.gs_int_rect_s* %bbox to i8*
  call void @llvm.lifetime.end(i64 16, i8* %111) #1
  br label %if.end.105

if.end.105:                                       ; preds = %if.then.96, %if.end.94
  %112 = load i32, i32* %ry.addr, align 4, !tbaa !5
  %y106 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  store i32 %112, i32* %y106, align 4, !tbaa !60
  %113 = load i32, i32* %rheight.addr, align 4, !tbaa !5
  %height = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  store i32 %113, i32* %height, align 4, !tbaa !62
  %y107 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %114 = load i32, i32* %y107, align 4, !tbaa !60
  %height108 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %115 = load i32, i32* %height108, align 4, !tbaa !62
  %add109 = add nsw i32 %114, %115
  %yend = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 2
  store i32 %add109, i32* %yend, align 4, !tbaa !63
  %116 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %page_info = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %116, i32 0, i32 58
  %band_params = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info, i32 0, i32 8
  %BandHeight = getelementptr inbounds %struct.gx_band_params_s, %struct.gx_band_params_s* %band_params, i32 0, i32 1
  %117 = load i32, i32* %BandHeight, align 4, !tbaa !64
  %band_height = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  store i32 %117, i32* %band_height, align 4, !tbaa !65
  %yend110 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 2
  %118 = load i32, i32* %yend110, align 4, !tbaa !63
  %y111 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %119 = load i32, i32* %y111, align 4, !tbaa !60
  %sub112 = sub nsw i32 %118, %119
  %band_height113 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  %120 = load i32, i32* %band_height113, align 4, !tbaa !65
  %add114 = add nsw i32 %sub112, %120
  %sub115 = sub nsw i32 %add114, 1
  %band_height116 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  %121 = load i32, i32* %band_height116, align 4, !tbaa !65
  %div = sdiv i32 %sub115, %121
  %rect_nbands = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 8
  store i32 %div, i32* %rect_nbands, align 4, !tbaa !66
  br label %do.body.117

do.body.117:                                      ; preds = %do.cond.457, %if.end.105
  %122 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %122) #1
  %123 = bitcast i64* %offset_temp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %123) #1
  %y118 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %124 = load i32, i32* %y118, align 4, !tbaa !60
  %band_height119 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  %125 = load i32, i32* %band_height119, align 4, !tbaa !65
  %div120 = sdiv i32 %124, %125
  %band = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 5
  store i32 %div120, i32* %band, align 4, !tbaa !67
  %126 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %states = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %126, i32 0, i32 66
  %127 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %states, align 8, !tbaa !68
  %band121 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 5
  %128 = load i32, i32* %band121, align 4, !tbaa !67
  %idx.ext122 = sext i32 %128 to i64
  %add.ptr123 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %127, i64 %idx.ext122
  %pcls = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  store %struct.gx_clist_state_s* %add.ptr123, %struct.gx_clist_state_s** %pcls, align 8, !tbaa !69
  %band124 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 5
  %129 = load i32, i32* %band124, align 4, !tbaa !67
  %add125 = add nsw i32 %129, 1
  %band_height126 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  %130 = load i32, i32* %band_height126, align 4, !tbaa !65
  %mul127 = mul nsw i32 %add125, %130
  %band_end = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 7
  store i32 %mul127, i32* %band_end, align 4, !tbaa !70
  %band_end128 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 7
  %131 = load i32, i32* %band_end128, align 4, !tbaa !70
  %yend129 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 2
  %132 = load i32, i32* %yend129, align 4, !tbaa !63
  %cmp130 = icmp slt i32 %131, %132
  br i1 %cmp130, label %cond.true.132, label %cond.false.134

cond.true.132:                                    ; preds = %do.body.117
  %band_end133 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 7
  %133 = load i32, i32* %band_end133, align 4, !tbaa !70
  br label %cond.end.136

cond.false.134:                                   ; preds = %do.body.117
  %yend135 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 2
  %134 = load i32, i32* %yend135, align 4, !tbaa !63
  br label %cond.end.136

cond.end.136:                                     ; preds = %cond.false.134, %cond.true.132
  %cond137 = phi i32 [ %133, %cond.true.132 ], [ %134, %cond.false.134 ]
  %y138 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %135 = load i32, i32* %y138, align 4, !tbaa !60
  %sub139 = sub nsw i32 %cond137, %135
  %height140 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  store i32 %sub139, i32* %height140, align 4, !tbaa !62
  br label %do.body.141

do.body.141:                                      ; preds = %land.end, %cond.end.136
  %136 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pcls142 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %137 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls142, align 8, !tbaa !69
  %138 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %call143 = call i32 @cmd_update_lop(%struct.gx_device_clist_writer_s* %136, %struct.gx_clist_state_s* %137, i32 %138) #6
  store i32 %call143, i32* %code, align 4, !tbaa !5
  br label %do.cond.144

do.cond.144:                                      ; preds = %do.body.141
  %139 = load i32, i32* %code, align 4, !tbaa !5
  %cmp145 = icmp slt i32 %139, 0
  br i1 %cmp145, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond.144
  %140 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %141 = load i32, i32* %code, align 4, !tbaa !5
  %call147 = call i32 @clist_VMerror_recover(%struct.gx_device_clist_writer_s* %140, i32 %141) #6
  store i32 %call147, i32* %code, align 4, !tbaa !5
  %cmp148 = icmp sge i32 %call147, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond.144
  %142 = phi i1 [ false, %do.cond.144 ], [ %cmp148, %land.rhs ]
  br i1 %142, label %do.body.141, label %do.end.150

do.end.150:                                       ; preds = %land.end
  %143 = load i32, i32* %code, align 4, !tbaa !5
  %cmp151 = icmp slt i32 %143, 0
  br i1 %cmp151, label %land.lhs.true.153, label %if.end.156

land.lhs.true.153:                                ; preds = %do.end.150
  %144 = load i32, i32* %code, align 4, !tbaa !5
  %band_code = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 4
  store i32 %144, i32* %band_code, align 4, !tbaa !71
  %tobool154 = icmp ne i32 %144, 0
  br i1 %tobool154, label %if.then.155, label %if.end.156

if.then.155:                                      ; preds = %land.lhs.true.153
  br label %error_in_rect

if.end.156:                                       ; preds = %land.lhs.true.153, %do.end.150
  %145 = load i32, i32* %depth.addr, align 4, !tbaa !5
  %cmp157 = icmp sgt i32 %145, 1
  br i1 %cmp157, label %land.lhs.true.159, label %if.end.190

land.lhs.true.159:                                ; preds = %if.end.156
  %pcls160 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %146 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls160, align 8, !tbaa !69
  %color_is_alpha = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %146, i32 0, i32 12
  %147 = load i32, i32* %color_is_alpha, align 4, !tbaa !72
  %tobool161 = icmp ne i32 %147, 0
  br i1 %tobool161, label %if.end.190, label %if.then.162

if.then.162:                                      ; preds = %land.lhs.true.159
  %148 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %148) #1
  br label %do.body.163

do.body.163:                                      ; preds = %land.end.179, %if.then.162
  %149 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pcls164 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %150 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls164, align 8, !tbaa !69
  %list = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %150, i32 0, i32 15
  %call165 = call i8* @cmd_put_list_op(%struct.gx_device_clist_writer_s* %149, %struct.cmd_list_s* %list, i32 1) #6
  store i8* %call165, i8** %dp, align 8, !tbaa !1
  %cmp166 = icmp eq i8* %call165, null
  br i1 %cmp166, label %cond.true.168, label %cond.false.169

cond.true.168:                                    ; preds = %do.body.163
  %151 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %error_code = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %151, i32 0, i32 65
  %152 = load i32, i32* %error_code, align 4, !tbaa !77
  br label %cond.end.170

cond.false.169:                                   ; preds = %do.body.163
  %153 = load i8*, i8** %dp, align 8, !tbaa !1
  store i8 15, i8* %153, align 1, !tbaa !9
  br label %cond.end.170

cond.end.170:                                     ; preds = %cond.false.169, %cond.true.168
  %cond171 = phi i32 [ %152, %cond.true.168 ], [ 0, %cond.false.169 ]
  store i32 %cond171, i32* %code, align 4, !tbaa !5
  br label %do.cond.172

do.cond.172:                                      ; preds = %cond.end.170
  %154 = load i32, i32* %code, align 4, !tbaa !5
  %cmp173 = icmp slt i32 %154, 0
  br i1 %cmp173, label %land.rhs.175, label %land.end.179

land.rhs.175:                                     ; preds = %do.cond.172
  %155 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %156 = load i32, i32* %code, align 4, !tbaa !5
  %call176 = call i32 @clist_VMerror_recover(%struct.gx_device_clist_writer_s* %155, i32 %156) #6
  store i32 %call176, i32* %code, align 4, !tbaa !5
  %cmp177 = icmp sge i32 %call176, 0
  br label %land.end.179

land.end.179:                                     ; preds = %land.rhs.175, %do.cond.172
  %157 = phi i1 [ false, %do.cond.172 ], [ %cmp177, %land.rhs.175 ]
  br i1 %157, label %do.body.163, label %do.end.180

do.end.180:                                       ; preds = %land.end.179
  %158 = load i32, i32* %code, align 4, !tbaa !5
  %cmp181 = icmp slt i32 %158, 0
  br i1 %cmp181, label %land.lhs.true.183, label %if.end.187

land.lhs.true.183:                                ; preds = %do.end.180
  %159 = load i32, i32* %code, align 4, !tbaa !5
  %band_code184 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 4
  store i32 %159, i32* %band_code184, align 4, !tbaa !71
  %tobool185 = icmp ne i32 %159, 0
  br i1 %tobool185, label %if.then.186, label %if.end.187

if.then.186:                                      ; preds = %land.lhs.true.183
  store i32 13, i32* %cleanup.dest.slot
  br label %cleanup

if.end.187:                                       ; preds = %land.lhs.true.183, %do.end.180
  %pcls188 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %160 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls188, align 8, !tbaa !69
  %color_is_alpha189 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %160, i32 0, i32 12
  store i32 1, i32* %color_is_alpha189, align 4, !tbaa !72
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.186, %if.end.187
  %161 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %161) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.453 [
    i32 0, label %cleanup.cont
    i32 13, label %error_in_rect
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.190

if.end.190:                                       ; preds = %cleanup.cont, %land.lhs.true.159, %if.end.156
  br label %do.body.191

do.body.191:                                      ; preds = %land.end.230, %if.end.190
  %pcls192 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %162 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls192, align 8, !tbaa !69
  %known = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %162, i32 0, i32 14
  %163 = load i32, i32* %known, align 4, !tbaa !78
  %neg = xor i32 %163, -1
  %and193 = and i32 %neg, 8192
  %tobool194 = icmp ne i32 %and193, 0
  br i1 %tobool194, label %cond.true.195, label %cond.false.198

cond.true.195:                                    ; preds = %do.body.191
  %164 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pcls196 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %165 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls196, align 8, !tbaa !69
  %call197 = call i32 @cmd_write_unknown(%struct.gx_device_clist_writer_s* %164, %struct.gx_clist_state_s* %165, i32 8192) #6
  br label %cond.end.199

cond.false.198:                                   ; preds = %do.body.191
  br label %cond.end.199

cond.end.199:                                     ; preds = %cond.false.198, %cond.true.195
  %cond200 = phi i32 [ %call197, %cond.true.195 ], [ 0, %cond.false.198 ]
  store i32 %cond200, i32* %code, align 4, !tbaa !5
  %166 = load i32, i32* %code, align 4, !tbaa !5
  %cmp201 = icmp sge i32 %166, 0
  br i1 %cmp201, label %if.then.203, label %if.end.222

if.then.203:                                      ; preds = %cond.end.199
  %pcls204 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %167 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls204, align 8, !tbaa !69
  %clip_enabled = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %167, i32 0, i32 11
  %168 = load i16, i16* %clip_enabled, align 2, !tbaa !79
  %conv205 = sext i16 %168 to i32
  %169 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %cmp206 = icmp ne %struct.gx_clip_path_s* %169, null
  %conv207 = zext i1 %cmp206 to i32
  %xor = xor i32 %conv207, 1
  %cmp208 = icmp eq i32 %conv205, %xor
  br i1 %cmp208, label %land.lhs.true.210, label %cond.false.219

land.lhs.true.210:                                ; preds = %if.then.203
  %170 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pcls211 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %171 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls211, align 8, !tbaa !69
  %172 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %cmp212 = icmp ne %struct.gx_clip_path_s* %172, null
  %conv213 = zext i1 %cmp212 to i32
  %call214 = call i32 @cmd_put_enable_clip(%struct.gx_device_clist_writer_s* %170, %struct.gx_clist_state_s* %171, i32 %conv213) #6
  %cmp215 = icmp slt i32 %call214, 0
  br i1 %cmp215, label %cond.true.217, label %cond.false.219

cond.true.217:                                    ; preds = %land.lhs.true.210
  %173 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %error_code218 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %173, i32 0, i32 65
  %174 = load i32, i32* %error_code218, align 4, !tbaa !77
  br label %cond.end.220

cond.false.219:                                   ; preds = %land.lhs.true.210, %if.then.203
  br label %cond.end.220

cond.end.220:                                     ; preds = %cond.false.219, %cond.true.217
  %cond221 = phi i32 [ %174, %cond.true.217 ], [ 0, %cond.false.219 ]
  store i32 %cond221, i32* %code, align 4, !tbaa !5
  br label %if.end.222

if.end.222:                                       ; preds = %cond.end.220, %cond.end.199
  br label %do.cond.223

do.cond.223:                                      ; preds = %if.end.222
  %175 = load i32, i32* %code, align 4, !tbaa !5
  %cmp224 = icmp slt i32 %175, 0
  br i1 %cmp224, label %land.rhs.226, label %land.end.230

land.rhs.226:                                     ; preds = %do.cond.223
  %176 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %177 = load i32, i32* %code, align 4, !tbaa !5
  %call227 = call i32 @clist_VMerror_recover(%struct.gx_device_clist_writer_s* %176, i32 %177) #6
  store i32 %call227, i32* %code, align 4, !tbaa !5
  %cmp228 = icmp sge i32 %call227, 0
  br label %land.end.230

land.end.230:                                     ; preds = %land.rhs.226, %do.cond.223
  %178 = phi i1 [ false, %do.cond.223 ], [ %cmp228, %land.rhs.226 ]
  br i1 %178, label %do.body.191, label %do.end.231

do.end.231:                                       ; preds = %land.end.230
  %179 = load i32, i32* %code, align 4, !tbaa !5
  %cmp232 = icmp slt i32 %179, 0
  br i1 %cmp232, label %land.lhs.true.234, label %if.end.238

land.lhs.true.234:                                ; preds = %do.end.231
  %180 = load i32, i32* %code, align 4, !tbaa !5
  %band_code235 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 4
  store i32 %180, i32* %band_code235, align 4, !tbaa !71
  %tobool236 = icmp ne i32 %180, 0
  br i1 %tobool236, label %if.then.237, label %if.end.238

if.then.237:                                      ; preds = %land.lhs.true.234
  br label %error_in_rect

if.end.238:                                       ; preds = %land.lhs.true.234, %do.end.231
  br label %do.body.239

do.body.239:                                      ; preds = %land.end.264, %if.end.238
  %181 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pcls240 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %182 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls240, align 8, !tbaa !69
  %183 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %call241 = call i32 @cmd_put_drawing_color(%struct.gx_device_clist_writer_s* %181, %struct.gx_clist_state_s* %182, %struct.gx_device_color_s* %183, %struct.cmd_rects_enum_s* %re, i32 0) #6
  store i32 %call241, i32* %code, align 4, !tbaa !5
  %184 = load i32, i32* %code, align 4, !tbaa !5
  %cmp242 = icmp eq i32 %184, -28
  br i1 %cmp242, label %if.then.244, label %if.end.245

if.then.244:                                      ; preds = %do.body.239
  %185 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %185, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.453

if.end.245:                                       ; preds = %do.body.239
  %186 = load i32, i32* %depth.addr, align 4, !tbaa !5
  %cmp246 = icmp sgt i32 %186, 1
  br i1 %cmp246, label %land.lhs.true.248, label %if.end.256

land.lhs.true.248:                                ; preds = %if.end.245
  %187 = load i32, i32* %code, align 4, !tbaa !5
  %cmp249 = icmp sge i32 %187, 0
  br i1 %cmp249, label %if.then.251, label %if.end.256

if.then.251:                                      ; preds = %land.lhs.true.248
  %188 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pcls252 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %189 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls252, align 8, !tbaa !69
  %190 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %190, i32 0, i32 1
  %pure = bitcast %union._c* %colors to i64*
  %191 = load i64, i64* %pure, align 8, !tbaa !7
  %pcls253 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %192 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls253, align 8, !tbaa !69
  %colors254 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %192, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %colors254, i32 0, i64 1
  %call255 = call i32 @cmd_put_color(%struct.gx_device_clist_writer_s* %188, %struct.gx_clist_state_s* %189, %struct.clist_select_color_t* @clist_select_color1, i64 %191, i64* %arrayidx) #6
  store i32 %call255, i32* %code, align 4, !tbaa !5
  br label %if.end.256

if.end.256:                                       ; preds = %if.then.251, %land.lhs.true.248, %if.end.245
  br label %do.cond.257

do.cond.257:                                      ; preds = %if.end.256
  %193 = load i32, i32* %code, align 4, !tbaa !5
  %cmp258 = icmp slt i32 %193, 0
  br i1 %cmp258, label %land.rhs.260, label %land.end.264

land.rhs.260:                                     ; preds = %do.cond.257
  %194 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %195 = load i32, i32* %code, align 4, !tbaa !5
  %call261 = call i32 @clist_VMerror_recover(%struct.gx_device_clist_writer_s* %194, i32 %195) #6
  store i32 %call261, i32* %code, align 4, !tbaa !5
  %cmp262 = icmp sge i32 %call261, 0
  br label %land.end.264

land.end.264:                                     ; preds = %land.rhs.260, %do.cond.257
  %196 = phi i1 [ false, %do.cond.257 ], [ %cmp262, %land.rhs.260 ]
  br i1 %196, label %do.body.239, label %do.end.265

do.end.265:                                       ; preds = %land.end.264
  %197 = load i32, i32* %code, align 4, !tbaa !5
  %cmp266 = icmp slt i32 %197, 0
  br i1 %cmp266, label %land.lhs.true.268, label %if.end.272

land.lhs.true.268:                                ; preds = %do.end.265
  %198 = load i32, i32* %code, align 4, !tbaa !5
  %band_code269 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 4
  store i32 %198, i32* %band_code269, align 4, !tbaa !71
  %tobool270 = icmp ne i32 %198, 0
  br i1 %tobool270, label %if.then.271, label %if.end.272

if.then.271:                                      ; preds = %land.lhs.true.268
  br label %error_in_rect

if.end.272:                                       ; preds = %land.lhs.true.268, %do.end.265
  %199 = load i32, i32* %slow_rop, align 4, !tbaa !5
  %pcls273 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %200 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls273, align 8, !tbaa !69
  %color_usage = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %200, i32 0, i32 16
  %slow_rop274 = getelementptr inbounds %struct.gx_colors_usage_s, %struct.gx_colors_usage_s* %color_usage, i32 0, i32 1
  %201 = load i32, i32* %slow_rop274, align 4, !tbaa !80
  %or275 = or i32 %201, %199
  store i32 %or275, i32* %slow_rop274, align 4, !tbaa !80
  %pcls276 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %202 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls276, align 8, !tbaa !69
  %tile_id = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %202, i32 0, i32 3
  %203 = load i64, i64* %tile_id, align 8, !tbaa !81
  %204 = load i64, i64* %id.addr, align 8, !tbaa !7
  %cmp277 = icmp eq i64 %203, %204
  br i1 %cmp277, label %land.lhs.true.279, label %if.then.290

land.lhs.true.279:                                ; preds = %if.end.272
  %pcls280 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %205 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls280, align 8, !tbaa !69
  %tile_index = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %205, i32 0, i32 2
  %206 = load i32, i32* %tile_index, align 4, !tbaa !82
  %idxprom = zext i32 %206 to i64
  %207 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %tile_table = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %207, i32 0, i32 55
  %208 = load %struct.tile_hash*, %struct.tile_hash** %tile_table, align 8, !tbaa !83
  %arrayidx281 = getelementptr inbounds %struct.tile_hash, %struct.tile_hash* %208, i64 %idxprom
  %offset = getelementptr inbounds %struct.tile_hash, %struct.tile_hash* %arrayidx281, i32 0, i32 0
  %209 = load i64, i64* %offset, align 8, !tbaa !84
  store i64 %209, i64* %offset_temp, align 8, !tbaa !7
  %cmp282 = icmp ne i64 %209, 0
  br i1 %cmp282, label %land.lhs.true.284, label %if.then.290

land.lhs.true.284:                                ; preds = %land.lhs.true.279
  %210 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %data285 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %210, i32 0, i32 46
  %211 = load i8*, i8** %data285, align 8, !tbaa !86
  %212 = load i64, i64* %offset_temp, align 8, !tbaa !7
  %add.ptr286 = getelementptr inbounds i8, i8* %211, i64 %212
  %213 = bitcast i8* %add.ptr286 to %struct.tile_slot*
  %id287 = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %213, i32 0, i32 5
  %214 = load i64, i64* %id287, align 8, !tbaa !87
  %215 = load i64, i64* %id.addr, align 8, !tbaa !7
  %cmp288 = icmp eq i64 %214, %215
  br i1 %cmp288, label %if.end.332, label %if.then.290

if.then.290:                                      ; preds = %land.lhs.true.284, %land.lhs.true.279, %if.end.272
  %216 = bitcast %struct.gx_strip_bitmap_s* %tile to i8*
  call void @llvm.lifetime.start(i64 48, i8* %216) #1
  %217 = load i8*, i8** %orig_data, align 8, !tbaa !1
  %data291 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tile, i32 0, i32 0
  store i8* %217, i8** %data291, align 8, !tbaa !90
  %218 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %raster292 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tile, i32 0, i32 1
  store i32 %218, i32* %raster292, align 4, !tbaa !91
  %219 = load i32, i32* %orig_width, align 4, !tbaa !5
  %conv293 = trunc i32 %219 to i16
  %rep_width = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tile, i32 0, i32 4
  store i16 %conv293, i16* %rep_width, align 2, !tbaa !92
  %conv294 = zext i16 %conv293 to i32
  %size = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tile, i32 0, i32 2
  %x295 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size, i32 0, i32 0
  store i32 %conv294, i32* %x295, align 4, !tbaa !93
  %220 = load i32, i32* %orig_height, align 4, !tbaa !5
  %conv296 = trunc i32 %220 to i16
  %rep_height = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tile, i32 0, i32 5
  store i16 %conv296, i16* %rep_height, align 2, !tbaa !94
  %conv297 = zext i16 %conv296 to i32
  %size298 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tile, i32 0, i32 2
  %y299 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size298, i32 0, i32 1
  store i32 %conv297, i32* %y299, align 4, !tbaa !95
  %shift = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tile, i32 0, i32 7
  store i16 0, i16* %shift, align 2, !tbaa !96
  %rep_shift = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tile, i32 0, i32 6
  store i16 0, i16* %rep_shift, align 2, !tbaa !97
  %221 = load i64, i64* %id.addr, align 8, !tbaa !7
  %id300 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tile, i32 0, i32 3
  store i64 %221, i64* %id300, align 8, !tbaa !98
  %num_planes = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tile, i32 0, i32 8
  store i32 1, i32* %num_planes, align 4, !tbaa !99
  br label %do.body.301

do.body.301:                                      ; preds = %land.end.311, %if.then.290
  %222 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pcls302 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %223 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls302, align 8, !tbaa !69
  %224 = load i32, i32* %depth.addr, align 4, !tbaa !5
  %call303 = call i32 @clist_change_bits(%struct.gx_device_clist_writer_s* %222, %struct.gx_clist_state_s* %223, %struct.gx_strip_bitmap_s* %tile, i32 %224) #6
  store i32 %call303, i32* %code, align 4, !tbaa !5
  br label %do.cond.304

do.cond.304:                                      ; preds = %do.body.301
  %225 = load i32, i32* %code, align 4, !tbaa !5
  %cmp305 = icmp slt i32 %225, 0
  br i1 %cmp305, label %land.rhs.307, label %land.end.311

land.rhs.307:                                     ; preds = %do.cond.304
  %226 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %227 = load i32, i32* %code, align 4, !tbaa !5
  %call308 = call i32 @clist_VMerror_recover(%struct.gx_device_clist_writer_s* %226, i32 %227) #6
  store i32 %call308, i32* %code, align 4, !tbaa !5
  %cmp309 = icmp sge i32 %call308, 0
  br label %land.end.311

land.end.311:                                     ; preds = %land.rhs.307, %do.cond.304
  %228 = phi i1 [ false, %do.cond.304 ], [ %cmp309, %land.rhs.307 ]
  br i1 %228, label %do.body.301, label %do.end.312

do.end.312:                                       ; preds = %land.end.311
  %229 = load i32, i32* %code, align 4, !tbaa !5
  %cmp313 = icmp slt i32 %229, 0
  br i1 %cmp313, label %land.lhs.true.315, label %if.end.324

land.lhs.true.315:                                ; preds = %do.end.312
  %230 = load i32, i32* %code, align 4, !tbaa !5
  %cmp316 = icmp ne i32 %230, -25
  br i1 %cmp316, label %if.end.324, label %lor.lhs.false.318

lor.lhs.false.318:                                ; preds = %land.lhs.true.315
  %231 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %error_is_retryable = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %231, i32 0, i32 94
  %232 = load i32, i32* %error_is_retryable, align 4, !tbaa !100
  %tobool319 = icmp ne i32 %232, 0
  br i1 %tobool319, label %land.lhs.true.320, label %if.end.324

land.lhs.true.320:                                ; preds = %lor.lhs.false.318
  %233 = load i32, i32* %code, align 4, !tbaa !5
  %band_code321 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 4
  store i32 %233, i32* %band_code321, align 4, !tbaa !71
  %tobool322 = icmp ne i32 %233, 0
  br i1 %tobool322, label %if.then.323, label %if.end.324

if.then.323:                                      ; preds = %land.lhs.true.320
  store i32 13, i32* %cleanup.dest.slot
  br label %cleanup.329

if.end.324:                                       ; preds = %land.lhs.true.320, %lor.lhs.false.318, %land.lhs.true.315, %do.end.312
  %234 = load i32, i32* %code, align 4, !tbaa !5
  %cmp325 = icmp slt i32 %234, 0
  br i1 %cmp325, label %if.then.327, label %if.end.328

if.then.327:                                      ; preds = %if.end.324
  store i32 8, i32* %cleanup.dest.slot
  br label %cleanup.329

if.end.328:                                       ; preds = %if.end.324
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.329

cleanup.329:                                      ; preds = %if.then.323, %if.end.328, %if.then.327
  %235 = bitcast %struct.gx_strip_bitmap_s* %tile to i8*
  call void @llvm.lifetime.end(i64 48, i8* %235) #1
  %cleanup.dest.330 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.330, label %cleanup.453 [
    i32 0, label %cleanup.cont.331
    i32 13, label %error_in_rect
  ]

cleanup.cont.331:                                 ; preds = %cleanup.329
  br label %if.end.332

if.end.332:                                       ; preds = %cleanup.cont.331, %land.lhs.true.284
  %236 = bitcast %struct.gx_cmd_rect* %rect to i8*
  call void @llvm.lifetime.start(i64 16, i8* %236) #1
  %237 = bitcast i32* %rsize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %237) #1
  call void @llvm.lifetime.start(i64 1, i8* %op) #1
  %238 = load i8, i8* %copy_op, align 1, !tbaa !9
  %conv333 = zext i8 %238 to i32
  %add334 = add nsw i32 %conv333, 8
  %conv335 = trunc i32 %add334 to i8
  store i8 %conv335, i8* %op, align 1, !tbaa !9
  %239 = load i32, i32* %orig_x, align 4, !tbaa !5
  %x336 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect, i32 0, i32 0
  store i32 %239, i32* %x336, align 4, !tbaa !101
  %240 = load i32, i32* %y0, align 4, !tbaa !5
  %y337 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect, i32 0, i32 1
  store i32 %240, i32* %y337, align 4, !tbaa !102
  %241 = load i32, i32* %orig_width, align 4, !tbaa !5
  %width338 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect, i32 0, i32 2
  store i32 %241, i32* %width338, align 4, !tbaa !103
  %yend339 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 2
  %242 = load i32, i32* %yend339, align 4, !tbaa !63
  %243 = load i32, i32* %y0, align 4, !tbaa !5
  %sub340 = sub nsw i32 %242, %243
  %height341 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect, i32 0, i32 3
  store i32 %sub340, i32* %height341, align 4, !tbaa !104
  %x342 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect, i32 0, i32 0
  %244 = load i32, i32* %x342, align 4, !tbaa !101
  %y343 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect, i32 0, i32 1
  %245 = load i32, i32* %y343, align 4, !tbaa !102
  %or344 = or i32 %244, %245
  %and345 = and i32 %or344, -128
  %tobool346 = icmp ne i32 %and345, 0
  br i1 %tobool346, label %cond.false.348, label %cond.true.347

cond.true.347:                                    ; preds = %if.end.332
  br label %cond.end.354

cond.false.348:                                   ; preds = %if.end.332
  %x349 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect, i32 0, i32 0
  %246 = load i32, i32* %x349, align 4, !tbaa !101
  %call350 = call i32 @cmd_size_w(i32 %246) #6
  %y351 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect, i32 0, i32 1
  %247 = load i32, i32* %y351, align 4, !tbaa !102
  %call352 = call i32 @cmd_size_w(i32 %247) #6
  %add353 = add nsw i32 %call350, %call352
  br label %cond.end.354

cond.end.354:                                     ; preds = %cond.false.348, %cond.true.347
  %cond355 = phi i32 [ 2, %cond.true.347 ], [ %add353, %cond.false.348 ]
  %add356 = add nsw i32 1, %cond355
  store i32 %add356, i32* %rsize, align 4, !tbaa !5
  %248 = load i32, i32* %depth.addr, align 4, !tbaa !5
  %cmp357 = icmp eq i32 %248, 1
  br i1 %cmp357, label %if.then.359, label %if.end.361

if.then.359:                                      ; preds = %cond.end.354
  %249 = load i32, i32* %rsize, align 4, !tbaa !5
  %add360 = add nsw i32 %249, 1
  store i32 %add360, i32* %rsize, align 4, !tbaa !5
  br label %if.end.361

if.end.361:                                       ; preds = %if.then.359, %cond.end.354
  br label %do.body.362

do.body.362:                                      ; preds = %land.end.421, %if.end.361
  %250 = load i32, i32* %orig_data_x, align 4, !tbaa !5
  %tobool363 = icmp ne i32 %250, 0
  br i1 %tobool363, label %cond.true.364, label %cond.false.367

cond.true.364:                                    ; preds = %do.body.362
  %251 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pcls365 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %252 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls365, align 8, !tbaa !69
  %253 = load i32, i32* %orig_data_x, align 4, !tbaa !5
  %call366 = call i32 @cmd_put_set_data_x(%struct.gx_device_clist_writer_s* %251, %struct.gx_clist_state_s* %252, i32 %253) #6
  br label %cond.end.368

cond.false.367:                                   ; preds = %do.body.362
  br label %cond.end.368

cond.end.368:                                     ; preds = %cond.false.367, %cond.true.364
  %cond369 = phi i32 [ %call366, %cond.true.364 ], [ 0, %cond.false.367 ]
  store i32 %cond369, i32* %code, align 4, !tbaa !5
  %254 = load i32, i32* %code, align 4, !tbaa !5
  %cmp370 = icmp sge i32 %254, 0
  br i1 %cmp370, label %if.then.372, label %if.end.413

if.then.372:                                      ; preds = %cond.end.368
  %255 = bitcast i8** %dp373 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %255) #1
  %256 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pcls374 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %257 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls374, align 8, !tbaa !69
  %list375 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %257, i32 0, i32 15
  %258 = load i32, i32* %rsize, align 4, !tbaa !5
  %call376 = call i8* @cmd_put_list_op(%struct.gx_device_clist_writer_s* %256, %struct.cmd_list_s* %list375, i32 %258) #6
  store i8* %call376, i8** %dp373, align 8, !tbaa !1
  %cmp377 = icmp eq i8* %call376, null
  br i1 %cmp377, label %cond.true.379, label %cond.false.381

cond.true.379:                                    ; preds = %if.then.372
  %259 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %error_code380 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %259, i32 0, i32 65
  %260 = load i32, i32* %error_code380, align 4, !tbaa !77
  br label %cond.end.382

cond.false.381:                                   ; preds = %if.then.372
  %261 = load i8, i8* %op, align 1, !tbaa !9
  %262 = load i8*, i8** %dp373, align 8, !tbaa !1
  store i8 %261, i8* %262, align 1, !tbaa !9
  br label %cond.end.382

cond.end.382:                                     ; preds = %cond.false.381, %cond.true.379
  %cond383 = phi i32 [ %260, %cond.true.379 ], [ 0, %cond.false.381 ]
  store i32 %cond383, i32* %code, align 4, !tbaa !5
  %263 = load i32, i32* %code, align 4, !tbaa !5
  %cmp384 = icmp sge i32 %263, 0
  br i1 %cmp384, label %if.then.386, label %if.end.412

if.then.386:                                      ; preds = %cond.end.382
  %264 = load i8*, i8** %dp373, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %264, i32 1
  store i8* %incdec.ptr, i8** %dp373, align 8, !tbaa !1
  %265 = load i32, i32* %depth.addr, align 4, !tbaa !5
  %cmp387 = icmp eq i32 %265, 1
  br i1 %cmp387, label %if.then.389, label %if.end.391

if.then.389:                                      ; preds = %if.then.386
  %266 = load i8*, i8** %dp373, align 8, !tbaa !1
  store i8 0, i8* %266, align 1, !tbaa !9
  %267 = load i8*, i8** %dp373, align 8, !tbaa !1
  %incdec.ptr390 = getelementptr inbounds i8, i8* %267, i32 1
  store i8* %incdec.ptr390, i8** %dp373, align 8, !tbaa !1
  br label %if.end.391

if.end.391:                                       ; preds = %if.then.389, %if.then.386
  %x392 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect, i32 0, i32 0
  %268 = load i32, i32* %x392, align 4, !tbaa !101
  %y393 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect, i32 0, i32 1
  %269 = load i32, i32* %y393, align 4, !tbaa !102
  %or394 = or i32 %268, %269
  %and395 = and i32 %or394, -128
  %tobool396 = icmp ne i32 %and395, 0
  br i1 %tobool396, label %cond.false.405, label %cond.true.397

cond.true.397:                                    ; preds = %if.end.391
  %x398 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect, i32 0, i32 0
  %270 = load i32, i32* %x398, align 4, !tbaa !101
  %conv399 = trunc i32 %270 to i8
  %271 = load i8*, i8** %dp373, align 8, !tbaa !1
  %arrayidx400 = getelementptr inbounds i8, i8* %271, i64 0
  store i8 %conv399, i8* %arrayidx400, align 1, !tbaa !9
  %y401 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect, i32 0, i32 1
  %272 = load i32, i32* %y401, align 4, !tbaa !102
  %conv402 = trunc i32 %272 to i8
  %273 = load i8*, i8** %dp373, align 8, !tbaa !1
  %arrayidx403 = getelementptr inbounds i8, i8* %273, i64 1
  store i8 %conv402, i8* %arrayidx403, align 1, !tbaa !9
  %274 = load i8*, i8** %dp373, align 8, !tbaa !1
  %add.ptr404 = getelementptr inbounds i8, i8* %274, i64 2
  store i8* %add.ptr404, i8** %dp373, align 8, !tbaa !1
  br label %cond.end.410

cond.false.405:                                   ; preds = %if.end.391
  %y406 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect, i32 0, i32 1
  %275 = load i32, i32* %y406, align 4, !tbaa !102
  %x407 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect, i32 0, i32 0
  %276 = load i32, i32* %x407, align 4, !tbaa !101
  %277 = load i8*, i8** %dp373, align 8, !tbaa !1
  %call408 = call i8* @cmd_put_w(i32 %276, i8* %277) #6
  %call409 = call i8* @cmd_put_w(i32 %275, i8* %call408) #6
  store i8* %call409, i8** %dp373, align 8, !tbaa !1
  br label %cond.end.410

cond.end.410:                                     ; preds = %cond.false.405, %cond.true.397
  %cond411 = phi i8* [ %add.ptr404, %cond.true.397 ], [ %call409, %cond.false.405 ]
  br label %if.end.412

if.end.412:                                       ; preds = %cond.end.410, %cond.end.382
  %278 = bitcast i8** %dp373 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %278) #1
  br label %if.end.413

if.end.413:                                       ; preds = %if.end.412, %cond.end.368
  br label %do.cond.414

do.cond.414:                                      ; preds = %if.end.413
  %279 = load i32, i32* %code, align 4, !tbaa !5
  %cmp415 = icmp slt i32 %279, 0
  br i1 %cmp415, label %land.rhs.417, label %land.end.421

land.rhs.417:                                     ; preds = %do.cond.414
  %280 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %281 = load i32, i32* %code, align 4, !tbaa !5
  %call418 = call i32 @clist_VMerror_recover(%struct.gx_device_clist_writer_s* %280, i32 %281) #6
  store i32 %call418, i32* %code, align 4, !tbaa !5
  %cmp419 = icmp sge i32 %call418, 0
  br label %land.end.421

land.end.421:                                     ; preds = %land.rhs.417, %do.cond.414
  %282 = phi i1 [ false, %do.cond.414 ], [ %cmp419, %land.rhs.417 ]
  br i1 %282, label %do.body.362, label %do.end.422

do.end.422:                                       ; preds = %land.end.421
  %283 = load i32, i32* %code, align 4, !tbaa !5
  %cmp423 = icmp slt i32 %283, 0
  br i1 %cmp423, label %land.lhs.true.425, label %if.end.429

land.lhs.true.425:                                ; preds = %do.end.422
  %284 = load i32, i32* %code, align 4, !tbaa !5
  %band_code426 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 4
  store i32 %284, i32* %band_code426, align 4, !tbaa !71
  %tobool427 = icmp ne i32 %284, 0
  br i1 %tobool427, label %if.then.428, label %if.end.429

if.then.428:                                      ; preds = %land.lhs.true.425
  store i32 13, i32* %cleanup.dest.slot
  br label %cleanup.432

if.end.429:                                       ; preds = %land.lhs.true.425, %do.end.422
  %pcls430 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %285 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls430, align 8, !tbaa !69
  %rect431 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %285, i32 0, i32 8
  %286 = bitcast %struct.gx_cmd_rect* %rect431 to i8*
  %287 = bitcast %struct.gx_cmd_rect* %rect to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %286, i8* %287, i64 16, i32 4, i1 false), !tbaa.struct !105
  store i32 24, i32* %cleanup.dest.slot
  br label %cleanup.432

cleanup.432:                                      ; preds = %if.end.429, %if.then.428
  call void @llvm.lifetime.end(i64 1, i8* %op) #1
  %288 = bitcast i32* %rsize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %288) #1
  %289 = bitcast %struct.gx_cmd_rect* %rect to i8*
  call void @llvm.lifetime.end(i64 16, i8* %289) #1
  %cleanup.dest435 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest435, label %cleanup.453 [
    i32 24, label %end
    i32 13, label %error_in_rect
  ]

end:                                              ; preds = %cleanup.432
  %height436 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %290 = load i32, i32* %height436, align 4, !tbaa !62
  %y437 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %291 = load i32, i32* %y437, align 4, !tbaa !60
  %add438 = add nsw i32 %291, %290
  store i32 %add438, i32* %y437, align 4, !tbaa !60
  store i32 10, i32* %cleanup.dest.slot
  br label %cleanup.453

error_in_rect:                                    ; preds = %cleanup.432, %cleanup.329, %cleanup, %if.then.271, %if.then.237, %if.then.155
  %292 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %error_is_retryable439 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %292, i32 0, i32 94
  %293 = load i32, i32* %error_is_retryable439, align 4, !tbaa !100
  %tobool440 = icmp ne i32 %293, 0
  br i1 %tobool440, label %land.lhs.true.441, label %if.then.450

land.lhs.true.441:                                ; preds = %error_in_rect
  %294 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %driver_call_nesting = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %294, i32 0, i32 96
  %295 = load i32, i32* %driver_call_nesting, align 4, !tbaa !106
  %cmp442 = icmp eq i32 %295, 0
  br i1 %cmp442, label %land.lhs.true.444, label %if.then.450

land.lhs.true.444:                                ; preds = %land.lhs.true.441
  %296 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %band_code445 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 4
  %297 = load i32, i32* %band_code445, align 4, !tbaa !71
  %call446 = call i32 @clist_VMerror_recover_flush(%struct.gx_device_clist_writer_s* %296, i32 %297) #6
  %band_code447 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 4
  store i32 %call446, i32* %band_code447, align 4, !tbaa !71
  %cmp448 = icmp sge i32 %call446, 0
  br i1 %cmp448, label %if.end.452, label %if.then.450

if.then.450:                                      ; preds = %land.lhs.true.444, %land.lhs.true.441, %error_in_rect
  %band_code451 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 4
  %298 = load i32, i32* %band_code451, align 4, !tbaa !71
  store i32 %298, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.453

if.end.452:                                       ; preds = %land.lhs.true.444
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.453

cleanup.453:                                      ; preds = %if.end.452, %if.then.450, %end, %cleanup.432, %cleanup.329, %if.then.244, %cleanup
  %299 = bitcast i64* %offset_temp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %299) #1
  %300 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %300) #1
  %cleanup.dest.455 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.455, label %cleanup.463 [
    i32 0, label %cleanup.cont.456
    i32 8, label %copy
    i32 10, label %do.cond.457
  ]

cleanup.cont.456:                                 ; preds = %cleanup.453
  br label %do.cond.457

do.cond.457:                                      ; preds = %cleanup.cont.456, %cleanup.453
  %y458 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %301 = load i32, i32* %y458, align 4, !tbaa !60
  %yend459 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 2
  %302 = load i32, i32* %yend459, align 4, !tbaa !63
  %cmp460 = icmp slt i32 %301, %302
  br i1 %cmp460, label %do.body.117, label %do.end.462

do.end.462:                                       ; preds = %do.cond.457
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.463

cleanup.463:                                      ; preds = %do.end.462, %cleanup.453, %if.then.92, %copy, %if.then.54, %if.then
  %303 = bitcast %struct.cmd_rects_enum_s* %re to i8*
  call void @llvm.lifetime.end(i64 40, i8* %303) #1
  %304 = bitcast i32* %slow_rop to i8*
  call void @llvm.lifetime.end(i64 4, i8* %304) #1
  call void @llvm.lifetime.end(i64 1, i8* %copy_op) #1
  %305 = bitcast i32* %y0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %305) #1
  %306 = bitcast i32* %orig_height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %306) #1
  %307 = bitcast i32* %orig_width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %307) #1
  %308 = bitcast i32* %orig_x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %308) #1
  %309 = bitcast i32* %orig_data_x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %309) #1
  %310 = bitcast i8** %orig_data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %310) #1
  %311 = bitcast %struct.gx_device_clist_writer_s** %cdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %311) #1
  %312 = load i32, i32* %retval
  ret i32 %312
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @cmd_slow_rop(%struct.gx_device_s*, i32, %struct.gx_device_color_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @check_rect_for_trivial_clip(%struct.gx_clip_path_s* %pcpath, i32 %px, i32 %py, i32 %qx, i32 %qy) #0 {
entry:
  %retval = alloca i32, align 4
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %px.addr = alloca i32, align 4
  %py.addr = alloca i32, align 4
  %qx.addr = alloca i32, align 4
  %qy.addr = alloca i32, align 4
  %obox = alloca %struct.gs_fixed_rect_s, align 4
  %imgbox = alloca %struct.gs_fixed_rect_s, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  store i32 %px, i32* %px.addr, align 4, !tbaa !5
  store i32 %py, i32* %py.addr, align 4, !tbaa !5
  store i32 %qx, i32* %qx.addr, align 4, !tbaa !5
  store i32 %qy, i32* %qy.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gs_fixed_rect_s* %obox to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #1
  %1 = bitcast %struct.gs_fixed_rect_s* %imgbox to i8*
  call void @llvm.lifetime.start(i64 16, i8* %1) #1
  %2 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.gx_clip_path_s* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %px.addr, align 4, !tbaa !5
  %shl = shl i32 %3, 8
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %imgbox, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  store i32 %shl, i32* %x, align 4, !tbaa !107
  %4 = load i32, i32* %py.addr, align 4, !tbaa !5
  %shl1 = shl i32 %4, 8
  %p2 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %imgbox, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p2, i32 0, i32 1
  store i32 %shl1, i32* %y, align 4, !tbaa !109
  %5 = load i32, i32* %qx.addr, align 4, !tbaa !5
  %shl3 = shl i32 %5, 8
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %imgbox, i32 0, i32 1
  %x4 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 0
  store i32 %shl3, i32* %x4, align 4, !tbaa !110
  %6 = load i32, i32* %qy.addr, align 4, !tbaa !5
  %shl5 = shl i32 %6, 8
  %q6 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %imgbox, i32 0, i32 1
  %y7 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q6, i32 0, i32 1
  store i32 %shl5, i32* %y7, align 4, !tbaa !111
  %7 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %p8 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %imgbox, i32 0, i32 0
  %x9 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p8, i32 0, i32 0
  %8 = load i32, i32* %x9, align 4, !tbaa !107
  %p10 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %imgbox, i32 0, i32 0
  %y11 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p10, i32 0, i32 1
  %9 = load i32, i32* %y11, align 4, !tbaa !109
  %q12 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %imgbox, i32 0, i32 1
  %x13 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q12, i32 0, i32 0
  %10 = load i32, i32* %x13, align 4, !tbaa !110
  %q14 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %imgbox, i32 0, i32 1
  %y15 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q14, i32 0, i32 1
  %11 = load i32, i32* %y15, align 4, !tbaa !111
  %call = call i32 @gx_cpath_includes_rectangle(%struct.gx_clip_path_s* %7, i32 %8, i32 %9, i32 %10, i32 %11) #6
  %tobool16 = icmp ne i32 %call, 0
  br i1 %tobool16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %if.end
  %12 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call19 = call i32 @gx_cpath_outer_box(%struct.gx_clip_path_s* %12, %struct.gs_fixed_rect_s* %obox) #6
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %if.end.18
  %p21 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %obox, i32 0, i32 0
  %x22 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p21, i32 0, i32 0
  %13 = load i32, i32* %x22, align 4, !tbaa !107
  %q23 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %imgbox, i32 0, i32 1
  %x24 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q23, i32 0, i32 0
  %14 = load i32, i32* %x24, align 4, !tbaa !110
  %cmp = icmp sle i32 %13, %14
  br i1 %cmp, label %land.lhs.true.25, label %land.end

land.lhs.true.25:                                 ; preds = %land.lhs.true
  %q26 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %obox, i32 0, i32 1
  %x27 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q26, i32 0, i32 0
  %15 = load i32, i32* %x27, align 4, !tbaa !110
  %p28 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %imgbox, i32 0, i32 0
  %x29 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p28, i32 0, i32 0
  %16 = load i32, i32* %x29, align 4, !tbaa !107
  %cmp30 = icmp sge i32 %15, %16
  br i1 %cmp30, label %land.lhs.true.31, label %land.end

land.lhs.true.31:                                 ; preds = %land.lhs.true.25
  %p32 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %obox, i32 0, i32 0
  %y33 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p32, i32 0, i32 1
  %17 = load i32, i32* %y33, align 4, !tbaa !109
  %q34 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %imgbox, i32 0, i32 1
  %y35 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q34, i32 0, i32 1
  %18 = load i32, i32* %y35, align 4, !tbaa !111
  %cmp36 = icmp sle i32 %17, %18
  br i1 %cmp36, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.31
  %q37 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %obox, i32 0, i32 1
  %y38 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q37, i32 0, i32 1
  %19 = load i32, i32* %y38, align 4, !tbaa !111
  %p39 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %imgbox, i32 0, i32 0
  %y40 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p39, i32 0, i32 1
  %20 = load i32, i32* %y40, align 4, !tbaa !109
  %cmp41 = icmp sge i32 %19, %20
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.31, %land.lhs.true.25, %land.lhs.true, %if.end.18
  %21 = phi i1 [ false, %land.lhs.true.31 ], [ false, %land.lhs.true.25 ], [ false, %land.lhs.true ], [ false, %if.end.18 ], [ %cmp41, %land.rhs ]
  %land.ext = zext i1 %21 to i32
  store i32 %land.ext, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %land.end, %if.then.17, %if.then
  %22 = bitcast %struct.gs_fixed_rect_s* %imgbox to i8*
  call void @llvm.lifetime.end(i64 16, i8* %22) #1
  %23 = bitcast %struct.gs_fixed_rect_s* %obox to i8*
  call void @llvm.lifetime.end(i64 16, i8* %23) #1
  %24 = load i32, i32* %retval
  ret i32 %24
}

declare i32 @gs_debug_c(i32) #2

declare i32 @gx_default_fill_mask(%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*) #2

declare i32 @cmd_check_clip_path(%struct.gx_device_clist_writer_s*, %struct.gx_clip_path_s*) #2

declare void @cmd_clear_known(%struct.gx_device_clist_writer_s*, i32) #2

declare void @clist_update_trans_bbox(%struct.gx_device_clist_writer_s*, %struct.gs_int_rect_s*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare i32 @cmd_update_lop(%struct.gx_device_clist_writer_s*, %struct.gx_clist_state_s*, i32) #2

declare i32 @clist_VMerror_recover(%struct.gx_device_clist_writer_s*, i32) #2

declare i8* @cmd_put_list_op(%struct.gx_device_clist_writer_s*, %struct.cmd_list_s*, i32) #2

declare i32 @cmd_write_unknown(%struct.gx_device_clist_writer_s*, %struct.gx_clist_state_s*, i32) #2

declare i32 @cmd_put_enable_clip(%struct.gx_device_clist_writer_s*, %struct.gx_clist_state_s*, i32) #2

declare i32 @cmd_put_drawing_color(%struct.gx_device_clist_writer_s*, %struct.gx_clist_state_s*, %struct.gx_device_color_s*, %struct.cmd_rects_enum_s*, i32) #2

declare i32 @cmd_put_color(%struct.gx_device_clist_writer_s*, %struct.gx_clist_state_s*, %struct.clist_select_color_t*, i64, i64*) #2

declare i32 @clist_change_bits(%struct.gx_device_clist_writer_s*, %struct.gx_clist_state_s*, %struct.gx_strip_bitmap_s*, i32) #2

declare i32 @cmd_size_w(i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @cmd_put_set_data_x(%struct.gx_device_clist_writer_s* %cldev, %struct.gx_clist_state_s* %pcls, i32 %data_x) #0 {
entry:
  %cldev.addr = alloca %struct.gx_device_clist_writer_s*, align 8
  %pcls.addr = alloca %struct.gx_clist_state_s*, align 8
  %data_x.addr = alloca i32, align 4
  %dp = alloca i8*, align 8
  %code = alloca i32, align 4
  %dx_msb = alloca i32, align 4
  store %struct.gx_device_clist_writer_s* %cldev, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  store %struct.gx_clist_state_s* %pcls, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  store i32 %data_x, i32* %data_x.addr, align 4, !tbaa !5
  %0 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %cmp = icmp sgt i32 %2, 31
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = bitcast i32* %dx_msb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %shr = ashr i32 %4, 5
  store i32 %shr, i32* %dx_msb, align 4, !tbaa !5
  %5 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %6 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %list = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %6, i32 0, i32 15
  %7 = load i32, i32* %dx_msb, align 4, !tbaa !5
  %call = call i32 @cmd_size_w(i32 %7) #6
  %add = add nsw i32 2, %call
  %call1 = call i8* @cmd_put_list_op(%struct.gx_device_clist_writer_s* %5, %struct.cmd_list_s* %list, i32 %add) #6
  store i8* %call1, i8** %dp, align 8, !tbaa !1
  %cmp2 = icmp eq i8* %call1, null
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %8 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %error_code = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %8, i32 0, i32 65
  %9 = load i32, i32* %error_code, align 4, !tbaa !77
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %10 = load i8*, i8** %dp, align 8, !tbaa !1
  store i8 6, i8* %10, align 1, !tbaa !9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %9, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %code, align 4, !tbaa !5
  %11 = load i32, i32* %code, align 4, !tbaa !5
  %cmp3 = icmp sge i32 %11, 0
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %cond.end
  %12 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %and = and i32 %12, 31
  %add5 = add nsw i32 96, %and
  %conv = trunc i32 %add5 to i8
  %13 = load i8*, i8** %dp, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 1
  store i8 %conv, i8* %arrayidx, align 1, !tbaa !9
  %14 = load i32, i32* %dx_msb, align 4, !tbaa !5
  %15 = load i8*, i8** %dp, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %15, i64 2
  %call6 = call i8* @cmd_put_w(i32 %14, i8* %add.ptr) #6
  br label %if.end

if.end:                                           ; preds = %if.then.4, %cond.end
  %16 = bitcast i32* %dx_msb to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #1
  br label %if.end.23

if.else:                                          ; preds = %entry
  %17 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %18 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %list7 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %18, i32 0, i32 15
  %call8 = call i8* @cmd_put_list_op(%struct.gx_device_clist_writer_s* %17, %struct.cmd_list_s* %list7, i32 2) #6
  store i8* %call8, i8** %dp, align 8, !tbaa !1
  %cmp9 = icmp eq i8* %call8, null
  br i1 %cmp9, label %cond.true.11, label %cond.false.13

cond.true.11:                                     ; preds = %if.else
  %19 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %error_code12 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %19, i32 0, i32 65
  %20 = load i32, i32* %error_code12, align 4, !tbaa !77
  br label %cond.end.14

cond.false.13:                                    ; preds = %if.else
  %21 = load i8*, i8** %dp, align 8, !tbaa !1
  store i8 6, i8* %21, align 1, !tbaa !9
  br label %cond.end.14

cond.end.14:                                      ; preds = %cond.false.13, %cond.true.11
  %cond15 = phi i32 [ %20, %cond.true.11 ], [ 0, %cond.false.13 ]
  store i32 %cond15, i32* %code, align 4, !tbaa !5
  %22 = load i32, i32* %code, align 4, !tbaa !5
  %cmp16 = icmp sge i32 %22, 0
  br i1 %cmp16, label %if.then.18, label %if.end.22

if.then.18:                                       ; preds = %cond.end.14
  %23 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %add19 = add nsw i32 64, %23
  %conv20 = trunc i32 %add19 to i8
  %24 = load i8*, i8** %dp, align 8, !tbaa !1
  %arrayidx21 = getelementptr inbounds i8, i8* %24, i64 1
  store i8 %conv20, i8* %arrayidx21, align 1, !tbaa !9
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.18, %cond.end.14
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.end
  %25 = load i32, i32* %code, align 4, !tbaa !5
  %26 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  %27 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  ret i32 %25
}

declare i8* @cmd_put_w(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @clist_VMerror_recover_flush(%struct.gx_device_clist_writer_s*, i32) #2

; Function Attrs: nounwind uwtable
define i32 @clist_begin_typed_image(%struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis, %struct.gs_matrix_s* %pmat, %struct.gs_image_common_s* %pic, %struct.gs_int_rect_s* %prect, %struct.gx_device_color_s* %pdcolor, %struct.gx_clip_path_s* %pcpath, %struct.gs_memory_s* %mem, %struct.gx_image_enum_common_s** %pinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %pic.addr = alloca %struct.gs_image_common_s*, align 8
  %prect.addr = alloca %struct.gs_int_rect_s*, align 8
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pinfo.addr = alloca %struct.gx_image_enum_common_s**, align 8
  %pim = alloca %struct.gs_pixel_image_s*, align 8
  %cdev = alloca %struct.gx_device_clist_writer_s*, align 8
  %pie = alloca %struct.clist_image_enum_s*, align 8
  %base_index = alloca i32, align 4
  %indexed = alloca i32, align 4
  %masked = alloca i32, align 4
  %has_alpha = alloca i32, align 4
  %num_components = alloca i32, align 4
  %bits_per_pixel = alloca i32, align 4
  %uses_color = alloca i32, align 4
  %varying_depths = alloca i32, align 4
  %mat = alloca %struct.gs_matrix_s, align 4
  %sbox = alloca %struct.gs_rect_s, align 8
  %dbox = alloca %struct.gs_rect_s, align 8
  %format = alloca i32, align 4
  %color_usage = alloca i64, align 8
  %code = alloca i32, align 4
  %mask_use_hl = alloca i32, align 4
  %icc_zero_init = alloca %struct.clist_icc_color_s, align 8
  %src_profile = alloca %struct.cmm_profile_s*, align 8
  %srcgtag_profile = alloca %struct.cmm_srcgtag_profile_s*, align 8
  %renderingintent = alloca i32, align 4
  %blackptcomp = alloca i32, align 4
  %stored_rendering_cond = alloca %struct.gsicc_rendering_param_s, align 4
  %dev_render_cond = alloca %struct.gsicc_rendering_param_s, align 4
  %pis_nonconst = alloca %struct.gs_imager_state_s*, align 8
  %intent_changed = alloca i32, align 4
  %bp_changed = alloca i32, align 4
  %dev_profile = alloca %struct.cmm_dev_profile_s*, align 8
  %gs_output_profile = alloca %struct.cmm_profile_s*, align 8
  %is_planar_dev = alloca i32, align 4
  %render_is_valid = alloca i32, align 4
  %csi = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %pcs = alloca %struct.gs_color_space_s*, align 8
  %pbcs = alloca %struct.gs_color_space_s*, align 8
  %i = alloca i32, align 4
  %bytes_per_plane = alloca i32, align 4
  %bytes_per_row = alloca i32, align 4
  %hash = alloca i64, align 8
  %temp_render_cond = alloca %struct.gsicc_rendering_param_s, align 4
  %bsize = alloca i32, align 4
  %dev_width = alloca i32, align 4
  %dev_height = alloca i32, align 4
  %src_size = alloca i32, align 4
  %des_size = alloca i32, align 4
  %all = alloca i64, align 8
  %pcs580 = alloca %struct.gs_color_space_s*, align 8
  %remap_color = alloca i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, align 8
  %cc = alloca %struct.gs_client_color_s, align 8
  %dcolor584 = alloca %struct.gx_device_color_s, align 8
  %i585 = alloca i32, align 4
  %max_value = alloca i32, align 4
  %y0 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %obox = alloca %struct.gs_fixed_rect_s, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  store %struct.gs_image_common_s* %pic, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  store %struct.gs_int_rect_s* %prect, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gx_image_enum_common_s** %pinfo, %struct.gx_image_enum_common_s*** %pinfo.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_pixel_image_s** %pim to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_image_common_s* %1 to %struct.gs_pixel_image_s*
  store %struct.gs_pixel_image_s* %2, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_clist_writer_s** %cdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gx_device_s* %4 to %union.gx_device_clist_s*
  %writer = bitcast %union.gx_device_clist_s* %5 to %struct.gx_device_clist_writer_s*
  store %struct.gx_device_clist_writer_s* %writer, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %6 = bitcast %struct.clist_image_enum_s** %pie to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store %struct.clist_image_enum_s* null, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %7 = bitcast i32* %base_index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %indexed to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %masked to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  store i32 0, i32* %masked, align 4, !tbaa !5
  %10 = bitcast i32* %has_alpha to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  store i32 0, i32* %has_alpha, align 4, !tbaa !5
  %11 = bitcast i32* %num_components to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast i32* %bits_per_pixel to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast i32* %uses_color to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast i32* %varying_depths to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  store i32 0, i32* %varying_depths, align 4, !tbaa !5
  %15 = bitcast %struct.gs_matrix_s* %mat to i8*
  call void @llvm.lifetime.start(i64 24, i8* %15) #1
  %16 = bitcast %struct.gs_rect_s* %sbox to i8*
  call void @llvm.lifetime.start(i64 32, i8* %16) #1
  %17 = bitcast %struct.gs_rect_s* %dbox to i8*
  call void @llvm.lifetime.start(i64 32, i8* %17) #1
  %18 = bitcast i32* %format to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = bitcast i64* %color_usage to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  store i64 0, i64* %color_usage, align 8, !tbaa !7
  %20 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = bitcast i32* %mask_use_hl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = bitcast %struct.clist_icc_color_s* %icc_zero_init to i8*
  call void @llvm.lifetime.start(i64 24, i8* %22) #1
  %23 = bitcast %struct.clist_icc_color_s* %icc_zero_init to i8*
  call void @llvm.memset.p0i8.i64(i8* %23, i8 0, i64 24, i32 8, i1 false)
  %24 = bitcast %struct.cmm_profile_s** %src_profile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #1
  %25 = bitcast %struct.cmm_srcgtag_profile_s** %srcgtag_profile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #1
  %26 = bitcast i32* %renderingintent to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #1
  %27 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %renderingintent1 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %27, i32 0, i32 33
  %28 = load i32, i32* %renderingintent1, align 4, !tbaa !112
  store i32 %28, i32* %renderingintent, align 4, !tbaa !9
  %29 = bitcast i32* %blackptcomp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #1
  %30 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %blackptcomp2 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %30, i32 0, i32 34
  %31 = load i32, i32* %blackptcomp2, align 4, !tbaa !113
  store i32 %31, i32* %blackptcomp, align 4, !tbaa !9
  %32 = bitcast %struct.gsicc_rendering_param_s* %stored_rendering_cond to i8*
  call void @llvm.lifetime.start(i64 24, i8* %32) #1
  %33 = bitcast %struct.gsicc_rendering_param_s* %dev_render_cond to i8*
  call void @llvm.lifetime.start(i64 24, i8* %33) #1
  %34 = bitcast %struct.gs_imager_state_s** %pis_nonconst to i8*
  call void @llvm.lifetime.start(i64 8, i8* %34) #1
  %35 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %35, %struct.gs_imager_state_s** %pis_nonconst, align 8, !tbaa !1
  %36 = bitcast i32* %intent_changed to i8*
  call void @llvm.lifetime.start(i64 4, i8* %36) #1
  store i32 0, i32* %intent_changed, align 4, !tbaa !5
  %37 = bitcast i32* %bp_changed to i8*
  call void @llvm.lifetime.start(i64 4, i8* %37) #1
  store i32 0, i32* %bp_changed, align 4, !tbaa !5
  %38 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %38) #1
  store %struct.cmm_dev_profile_s* null, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %39 = bitcast %struct.cmm_profile_s** %gs_output_profile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %39) #1
  %40 = bitcast i32* %is_planar_dev to i8*
  call void @llvm.lifetime.start(i64 4, i8* %40) #1
  %41 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %is_planar = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %41, i32 0, i32 17
  %42 = load i32, i32* %is_planar, align 4, !tbaa !114
  store i32 %42, i32* %is_planar_dev, align 4, !tbaa !5
  %43 = bitcast i32* %render_is_valid to i8*
  call void @llvm.lifetime.start(i64 4, i8* %43) #1
  %44 = bitcast i32* %csi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %44) #1
  %call = call i32 @gs_debug_c(i32 96) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %45 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_image_common_s, %struct.gs_image_common_s* %45, i32 0, i32 0
  %46 = load %struct.gx_image_type_s*, %struct.gx_image_type_s** %type, align 8, !tbaa !116
  %index = getelementptr inbounds %struct.gx_image_type_s, %struct.gx_image_type_s* %46, i32 0, i32 6
  %47 = load i32, i32* %index, align 4, !tbaa !118
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -1, %cond.true ], [ %47, %cond.false ]
  switch i32 %cond, label %sw.default [
    i32 1, label %sw.bb
    i32 4, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %cond.end
  %48 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %49 = bitcast %struct.gs_pixel_image_s* %48 to %struct.gs_image1_s*
  %ImageMask = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %49, i32 0, i32 10
  %50 = load i32, i32* %ImageMask, align 4, !tbaa !120
  store i32 %50, i32* %masked, align 4, !tbaa !5
  %51 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %52 = bitcast %struct.gs_pixel_image_s* %51 to %struct.gs_image1_s*
  %Alpha = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %52, i32 0, i32 12
  %53 = load i32, i32* %Alpha, align 4, !tbaa !122
  %cmp = icmp ne i32 %53, 0
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %has_alpha, align 4, !tbaa !5
  br label %sw.bb.3

sw.bb.3:                                          ; preds = %cond.end, %sw.bb
  %54 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %cmp4 = icmp eq %struct.gs_matrix_s* %54, null
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.3
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb.3
  br label %sw.default

sw.default:                                       ; preds = %cond.end, %if.end
  br label %use_default

sw.epilog:                                        ; preds = %if.then
  %55 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %format6 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %55, i32 0, i32 7
  %56 = load i32, i32* %format6, align 4, !tbaa !123
  store i32 %56, i32* %format, align 4, !tbaa !9
  %57 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %57, i32 0, i32 1
  %alloc_struct_immovable = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 9
  %58 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct_immovable, align 8, !tbaa !125
  %59 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call7 = call i8* %58(%struct.gs_memory_s* %59, %struct.gs_memory_struct_type_s* @st_clist_image_enum, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0)) #6
  %60 = bitcast i8* %call7 to %struct.clist_image_enum_s*
  store %struct.clist_image_enum_s* %60, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %61 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %cmp8 = icmp eq %struct.clist_image_enum_s* %61, null
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %sw.epilog
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.735

if.end.11:                                        ; preds = %sw.epilog
  %62 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %63 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %63, i32 0, i32 3
  store %struct.gs_memory_s* %62, %struct.gs_memory_s** %memory, align 8, !tbaa !128
  %64 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %buffer = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %64, i32 0, i32 31
  store i8* null, i8** %buffer, align 8, !tbaa !130
  %65 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %66 = bitcast %struct.clist_image_enum_s* %65 to %struct.gx_image_enum_common_s*
  %67 = load %struct.gx_image_enum_common_s**, %struct.gx_image_enum_common_s*** %pinfo.addr, align 8, !tbaa !1
  store %struct.gx_image_enum_common_s* %66, %struct.gx_image_enum_common_s** %67, align 8, !tbaa !1
  %68 = load i32, i32* %masked, align 4, !tbaa !5
  %tobool12 = icmp ne i32 %68, 0
  br i1 %tobool12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.end.11
  store i32 0, i32* %base_index, align 4, !tbaa !5
  store i32 0, i32* %indexed, align 4, !tbaa !5
  store i32 1, i32* %num_components, align 4, !tbaa !5
  store i32 1, i32* %uses_color, align 4, !tbaa !5
  br label %if.end.27

if.else:                                          ; preds = %if.end.11
  %69 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %69) #1
  %70 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %ColorSpace = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %70, i32 0, i32 9
  %71 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace, align 8, !tbaa !131
  store %struct.gs_color_space_s* %71, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %72 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %call14 = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %72) #6
  store i32 %call14, i32* %base_index, align 4, !tbaa !5
  %73 = load i32, i32* %base_index, align 4, !tbaa !5
  %cmp15 = icmp eq i32 %73, 10
  br i1 %cmp15, label %if.then.17, label %if.else.20

if.then.17:                                       ; preds = %if.else
  %74 = bitcast %struct.gs_color_space_s** %pbcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %74) #1
  %75 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %call18 = call %struct.gs_color_space_s* @gs_cspace_base_space(%struct.gs_color_space_s* %75) #6
  store %struct.gs_color_space_s* %call18, %struct.gs_color_space_s** %pbcs, align 8, !tbaa !1
  store i32 1, i32* %indexed, align 4, !tbaa !5
  %76 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pbcs, align 8, !tbaa !1
  %call19 = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %76) #6
  store i32 %call19, i32* %base_index, align 4, !tbaa !5
  store i32 1, i32* %num_components, align 4, !tbaa !5
  %77 = bitcast %struct.gs_color_space_s** %pbcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %77) #1
  br label %if.end.22

if.else.20:                                       ; preds = %if.else
  store i32 0, i32* %indexed, align 4, !tbaa !5
  %78 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %call21 = call i32 @gs_color_space_num_components(%struct.gs_color_space_s* %78) #6
  store i32 %call21, i32* %num_components, align 4, !tbaa !5
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.20, %if.then.17
  %79 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %CombineWithColor = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %79, i32 0, i32 8
  %80 = load i32, i32* %CombineWithColor, align 4, !tbaa !132
  %tobool23 = icmp ne i32 %80, 0
  br i1 %tobool23, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end.22
  %81 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %log_op = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %81, i32 0, i32 10
  %82 = load i32, i32* %log_op, align 4, !tbaa !133
  %shl = shl i32 %82, 4
  %83 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %log_op24 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %83, i32 0, i32 10
  %84 = load i32, i32* %log_op24, align 4, !tbaa !133
  %xor = xor i32 %shl, %84
  %and = and i32 %xor, 240
  %cmp25 = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.22
  %85 = phi i1 [ false, %if.end.22 ], [ %cmp25, %land.rhs ]
  %land.ext = zext i1 %85 to i32
  store i32 %land.ext, i32* %uses_color, align 4, !tbaa !5
  %86 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %86) #1
  br label %if.end.27

if.end.27:                                        ; preds = %land.end, %if.then.13
  %87 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %88 = bitcast %struct.clist_image_enum_s* %87 to %struct.gx_image_enum_common_s*
  %89 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %90 = bitcast %struct.gs_pixel_image_s* %89 to %struct.gs_data_image_s*
  %91 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %92 = load i32, i32* %num_components, align 4, !tbaa !5
  %93 = load i32, i32* %format, align 4, !tbaa !9
  %call28 = call i32 @gx_image_enum_common_init(%struct.gx_image_enum_common_s* %88, %struct.gs_data_image_s* %90, %struct.gx_image_enum_procs_s* @clist_image_enum_procs, %struct.gx_device_s* %91, i32 %92, i32 %93) #6
  store i32 %call28, i32* %code, align 4, !tbaa !5
  %94 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %94) #1
  store i32 1, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.27
  %95 = load i32, i32* %i, align 4, !tbaa !5
  %96 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %num_planes = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %96, i32 0, i32 6
  %97 = load i32, i32* %num_planes, align 4, !tbaa !134
  %cmp29 = icmp slt i32 %95, %97
  br i1 %cmp29, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %98 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %98 to i64
  %99 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %plane_depths = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %99, i32 0, i32 7
  %arrayidx = getelementptr inbounds [65 x i32], [65 x i32]* %plane_depths, i32 0, i64 %idxprom
  %100 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %101 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %plane_depths31 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %101, i32 0, i32 7
  %arrayidx32 = getelementptr inbounds [65 x i32], [65 x i32]* %plane_depths31, i32 0, i64 0
  %102 = load i32, i32* %arrayidx32, align 4, !tbaa !5
  %cmp33 = icmp ne i32 %100, %102
  %conv34 = zext i1 %cmp33 to i32
  %103 = load i32, i32* %varying_depths, align 4, !tbaa !5
  %or = or i32 %103, %conv34
  store i32 %or, i32* %varying_depths, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %104 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %104, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %105 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %105) #1
  %106 = load i32, i32* %code, align 4, !tbaa !5
  %cmp35 = icmp slt i32 %106, 0
  br i1 %cmp35, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %for.end
  br label %use_default

if.end.38:                                        ; preds = %for.end
  %107 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %disable_mask = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %107, i32 0, i32 99
  %108 = load i32, i32* %disable_mask, align 4, !tbaa !10
  %and39 = and i32 %108, 4
  %tobool40 = icmp ne i32 %and39, 0
  br i1 %tobool40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.end.38
  br label %use_default

if.end.42:                                        ; preds = %if.end.38
  %109 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %image_enum_id = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %109, i32 0, i32 93
  %110 = load i64, i64* %image_enum_id, align 8, !tbaa !135
  %cmp43 = icmp ne i64 %110, 0
  br i1 %cmp43, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.end.42
  br label %use_default

if.end.46:                                        ; preds = %if.end.42
  %111 = load i32, i32* %base_index, align 4, !tbaa !5
  %cmp47 = icmp sgt i32 %111, 2
  br i1 %cmp47, label %land.lhs.true, label %if.end.52

land.lhs.true:                                    ; preds = %if.end.46
  %112 = load i32, i32* %base_index, align 4, !tbaa !5
  %cmp49 = icmp ne i32 %112, 12
  br i1 %cmp49, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %land.lhs.true
  br label %use_default

if.end.52:                                        ; preds = %land.lhs.true, %if.end.46
  %113 = load i32, i32* %has_alpha, align 4, !tbaa !5
  %tobool53 = icmp ne i32 %113, 0
  br i1 %tobool53, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %if.end.52
  br label %use_default

if.end.55:                                        ; preds = %if.end.52
  %114 = load i32, i32* %varying_depths, align 4, !tbaa !5
  %tobool56 = icmp ne i32 %114, 0
  br i1 %tobool56, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %if.end.55
  br label %use_default

if.end.58:                                        ; preds = %if.end.55
  %115 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %ImageMatrix = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %115, i32 0, i32 1
  %call59 = call i32 @gs_matrix_invert(%struct.gs_matrix_s* %ImageMatrix, %struct.gs_matrix_s* %mat) #6
  store i32 %call59, i32* %code, align 4, !tbaa !5
  %cmp60 = icmp slt i32 %call59, 0
  br i1 %cmp60, label %if.then.88, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.58
  %116 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %116, i32 0, i32 5
  %117 = bitcast %struct.gs_matrix_fixed_s* %ctm to %struct.gs_matrix_s*
  %call62 = call i32 @gs_matrix_multiply(%struct.gs_matrix_s* %mat, %struct.gs_matrix_s* %117, %struct.gs_matrix_s* %mat) #6
  store i32 %call62, i32* %code, align 4, !tbaa !5
  %cmp63 = icmp slt i32 %call62, 0
  br i1 %cmp63, label %if.then.88, label %lor.lhs.false.65

lor.lhs.false.65:                                 ; preds = %lor.lhs.false
  %118 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %disable_mask66 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %118, i32 0, i32 99
  %119 = load i32, i32* %disable_mask66, align 4, !tbaa !10
  %and67 = and i32 %119, 16
  %tobool68 = icmp ne i32 %and67, 0
  br i1 %tobool68, label %cond.true.69, label %cond.false.85

cond.true.69:                                     ; preds = %lor.lhs.false.65
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 1
  %120 = load float, float* %xy, align 4, !tbaa !136
  %conv70 = fpext float %120 to double
  %cmp71 = fcmp oeq double %conv70, 0.000000e+00
  br i1 %cmp71, label %land.lhs.true.73, label %lor.lhs.false.77

land.lhs.true.73:                                 ; preds = %cond.true.69
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 2
  %121 = load float, float* %yx, align 4, !tbaa !137
  %conv74 = fpext float %121 to double
  %cmp75 = fcmp oeq double %conv74, 0.000000e+00
  br i1 %cmp75, label %if.end.89, label %lor.lhs.false.77

lor.lhs.false.77:                                 ; preds = %land.lhs.true.73, %cond.true.69
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 0
  %122 = load float, float* %xx, align 4, !tbaa !138
  %conv78 = fpext float %122 to double
  %cmp79 = fcmp oeq double %conv78, 0.000000e+00
  br i1 %cmp79, label %land.lhs.true.81, label %if.then.88

land.lhs.true.81:                                 ; preds = %lor.lhs.false.77
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 3
  %123 = load float, float* %yy, align 4, !tbaa !139
  %conv82 = fpext float %123 to double
  %cmp83 = fcmp oeq double %conv82, 0.000000e+00
  br i1 %cmp83, label %if.end.89, label %if.then.88

cond.false.85:                                    ; preds = %lor.lhs.false.65
  %call86 = call i32 @image_matrix_ok_to_band(%struct.gs_matrix_s* %mat) #6
  %tobool87 = icmp ne i32 %call86, 0
  br i1 %tobool87, label %if.end.89, label %if.then.88

if.then.88:                                       ; preds = %cond.false.85, %land.lhs.true.81, %lor.lhs.false.77, %lor.lhs.false, %if.end.58
  br label %use_default

if.end.89:                                        ; preds = %cond.false.85, %land.lhs.true.81, %land.lhs.true.73
  %124 = load i32, i32* %masked, align 4, !tbaa !5
  %tobool90 = icmp ne i32 %124, 0
  br i1 %tobool90, label %land.rhs.91, label %land.end.97

land.rhs.91:                                      ; preds = %if.end.89
  %125 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %call92 = call i32 @gx_dc_is_pattern1_color(%struct.gx_device_color_s* %125) #6
  %tobool93 = icmp ne i32 %call92, 0
  br i1 %tobool93, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs.91
  %126 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %type94 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %126, i32 0, i32 0
  %127 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type94, align 8, !tbaa !47
  %cmp95 = icmp eq %struct.gx_device_color_type_s* %127, @gx_dc_type_data_pure
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs.91
  %128 = phi i1 [ true, %land.rhs.91 ], [ %cmp95, %lor.rhs ]
  br label %land.end.97

land.end.97:                                      ; preds = %lor.end, %if.end.89
  %129 = phi i1 [ false, %if.end.89 ], [ %128, %lor.end ]
  %land.ext98 = zext i1 %129 to i32
  store i32 %land.ext98, i32* %mask_use_hl, align 4, !tbaa !5
  %130 = load i32, i32* %mask_use_hl, align 4, !tbaa !5
  %tobool99 = icmp ne i32 %130, 0
  br i1 %tobool99, label %if.end.110, label %land.lhs.true.100

land.lhs.true.100:                                ; preds = %land.end.97
  %131 = load i32, i32* %uses_color, align 4, !tbaa !5
  %tobool101 = icmp ne i32 %131, 0
  br i1 %tobool101, label %land.lhs.true.102, label %if.end.110

land.lhs.true.102:                                ; preds = %land.lhs.true.100
  %132 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %type103 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %132, i32 0, i32 0
  %133 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type103, align 8, !tbaa !47
  %cmp104 = icmp eq %struct.gx_device_color_type_s* %133, @gx_dc_type_data_pure
  br i1 %cmp104, label %if.end.110, label %land.lhs.true.106

land.lhs.true.106:                                ; preds = %land.lhs.true.102
  %134 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %call107 = call i32 @gx_dc_is_pattern1_color_clist_based(%struct.gx_device_color_s* %134) #6
  %tobool108 = icmp ne i32 %call107, 0
  br i1 %tobool108, label %if.end.110, label %if.then.109

if.then.109:                                      ; preds = %land.lhs.true.106
  br label %use_default

if.end.110:                                       ; preds = %land.lhs.true.106, %land.lhs.true.102, %land.lhs.true.100, %land.end.97
  %135 = bitcast i32* %bytes_per_plane to i8*
  call void @llvm.lifetime.start(i64 4, i8* %135) #1
  %136 = bitcast i32* %bytes_per_row to i8*
  call void @llvm.lifetime.start(i64 4, i8* %136) #1
  %137 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %BitsPerComponent = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %137, i32 0, i32 4
  %138 = load i32, i32* %BitsPerComponent, align 4, !tbaa !140
  %139 = load i32, i32* %num_components, align 4, !tbaa !5
  %mul = mul nsw i32 %138, %139
  store i32 %mul, i32* %bits_per_pixel, align 4, !tbaa !5
  %140 = load i32, i32* %bits_per_pixel, align 4, !tbaa !5
  %141 = load i32, i32* %num_components, align 4, !tbaa !5
  %div = sdiv i32 %140, %141
  %142 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %bps = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %142, i32 0, i32 28
  store i32 %div, i32* %bps, align 4, !tbaa !141
  %143 = load i32, i32* %num_components, align 4, !tbaa !5
  %144 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %spp = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %144, i32 0, i32 29
  store i32 %143, i32* %spp, align 4, !tbaa !142
  %145 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %image = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %145, i32 0, i32 9
  %146 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %147 = bitcast %struct.gs_pixel_image_s* %image to i8*
  %148 = bitcast %struct.gs_pixel_image_s* %146 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %147, i8* %148, i64 584, i32 8, i1 false), !tbaa.struct !143
  %149 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %dcolor = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %149, i32 0, i32 10
  %150 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %151 = bitcast %struct.gx_device_color_s* %dcolor to i8*
  %152 = bitcast %struct.gx_device_color_s* %150 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %151, i8* %152, i64 656, i32 8, i1 false), !tbaa.struct !145
  %153 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %tobool111 = icmp ne %struct.gs_int_rect_s* %153, null
  br i1 %tobool111, label %if.then.112, label %if.else.113

if.then.112:                                      ; preds = %if.end.110
  %154 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %rect = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %154, i32 0, i32 11
  %155 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %156 = bitcast %struct.gs_int_rect_s* %rect to i8*
  %157 = bitcast %struct.gs_int_rect_s* %155 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %156, i8* %157, i64 16, i32 4, i1 false), !tbaa.struct !105
  br label %if.end.122

if.else.113:                                      ; preds = %if.end.110
  %158 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %rect114 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %158, i32 0, i32 11
  %p = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect114, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p, i32 0, i32 0
  store i32 0, i32* %x, align 4, !tbaa !147
  %159 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %rect115 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %159, i32 0, i32 11
  %p116 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect115, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p116, i32 0, i32 1
  store i32 0, i32* %y, align 4, !tbaa !148
  %160 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %Width = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %160, i32 0, i32 2
  %161 = load i32, i32* %Width, align 4, !tbaa !149
  %162 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %rect117 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %162, i32 0, i32 11
  %q = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect117, i32 0, i32 1
  %x118 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q, i32 0, i32 0
  store i32 %161, i32* %x118, align 4, !tbaa !150
  %163 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %Height = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %163, i32 0, i32 3
  %164 = load i32, i32* %Height, align 4, !tbaa !151
  %165 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %rect119 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %165, i32 0, i32 11
  %q120 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect119, i32 0, i32 1
  %y121 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q120, i32 0, i32 1
  store i32 %164, i32* %y121, align 4, !tbaa !152
  br label %if.end.122

if.end.122:                                       ; preds = %if.else.113, %if.then.112
  %166 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %167 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %pis123 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %167, i32 0, i32 12
  store %struct.gs_imager_state_s* %166, %struct.gs_imager_state_s** %pis123, align 8, !tbaa !153
  %168 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %169 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %pcpath124 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %169, i32 0, i32 13
  store %struct.gx_clip_path_s* %168, %struct.gx_clip_path_s** %pcpath124, align 8, !tbaa !154
  %170 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %buffer125 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %170, i32 0, i32 31
  store i8* null, i8** %buffer125, align 8, !tbaa !130
  %171 = load i32, i32* %format, align 4, !tbaa !9
  %172 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %format126 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %172, i32 0, i32 14
  store i32 %171, i32* %format126, align 4, !tbaa !155
  %173 = load i32, i32* %bits_per_pixel, align 4, !tbaa !5
  %174 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %num_planes127 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %174, i32 0, i32 6
  %175 = load i32, i32* %num_planes127, align 4, !tbaa !134
  %div128 = sdiv i32 %173, %175
  %176 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %bits_per_plane = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %176, i32 0, i32 16
  store i32 %div128, i32* %bits_per_plane, align 4, !tbaa !156
  %177 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %matrix = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %177, i32 0, i32 17
  %178 = bitcast %struct.gs_matrix_s* %matrix to i8*
  %179 = bitcast %struct.gs_matrix_s* %mat to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %178, i8* %179, i64 24, i32 4, i1 false), !tbaa.struct !157
  %180 = load i32, i32* %uses_color, align 4, !tbaa !5
  %181 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %uses_color129 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %181, i32 0, i32 18
  store i32 %180, i32* %uses_color129, align 4, !tbaa !158
  %182 = load i32, i32* %masked, align 4, !tbaa !5
  %tobool130 = icmp ne i32 %182, 0
  br i1 %tobool130, label %if.then.131, label %if.else.135

if.then.131:                                      ; preds = %if.end.122
  %183 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %color_space = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %183, i32 0, i32 19
  %byte1 = getelementptr inbounds %struct.clist_color_space_s, %struct.clist_color_space_s* %color_space, i32 0, i32 0
  store i8 0, i8* %byte1, align 1, !tbaa !159
  %184 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %color_space132 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %184, i32 0, i32 19
  %icc_info = getelementptr inbounds %struct.clist_color_space_s, %struct.clist_color_space_s* %color_space132, i32 0, i32 2
  %185 = bitcast %struct.clist_icc_color_s* %icc_info to i8*
  %186 = bitcast %struct.clist_icc_color_s* %icc_zero_init to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %185, i8* %186, i64 24, i32 8, i1 false), !tbaa.struct !160
  %187 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %color_space133 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %187, i32 0, i32 19
  %space = getelementptr inbounds %struct.clist_color_space_s, %struct.clist_color_space_s* %color_space133, i32 0, i32 3
  store %struct.gs_color_space_s* null, %struct.gs_color_space_s** %space, align 8, !tbaa !161
  %188 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %color_space134 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %188, i32 0, i32 19
  %id = getelementptr inbounds %struct.clist_color_space_s, %struct.clist_color_space_s* %color_space134, i32 0, i32 1
  store i64 0, i64* %id, align 8, !tbaa !162
  br label %if.end.329

if.else.135:                                      ; preds = %if.end.122
  %189 = load i32, i32* %indexed, align 4, !tbaa !5
  %tobool136 = icmp ne i32 %189, 0
  br i1 %tobool136, label %if.then.137, label %if.else.142

if.then.137:                                      ; preds = %if.else.135
  %190 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %ColorSpace138 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %190, i32 0, i32 9
  %191 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace138, align 8, !tbaa !131
  %base_space = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %191, i32 0, i32 3
  %192 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space, align 8, !tbaa !163
  %cmm_icc_profile_data = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %192, i32 0, i32 6
  %193 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data, align 8, !tbaa !165
  %tobool139 = icmp ne %struct.cmm_profile_s* %193, null
  br i1 %tobool139, label %if.then.140, label %if.end.141

if.then.140:                                      ; preds = %if.then.137
  store i32 12, i32* %base_index, align 4, !tbaa !5
  br label %if.end.141

if.end.141:                                       ; preds = %if.then.140, %if.then.137
  br label %if.end.148

if.else.142:                                      ; preds = %if.else.135
  %194 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %ColorSpace143 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %194, i32 0, i32 9
  %195 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace143, align 8, !tbaa !131
  %cmm_icc_profile_data144 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %195, i32 0, i32 6
  %196 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data144, align 8, !tbaa !165
  %tobool145 = icmp ne %struct.cmm_profile_s* %196, null
  br i1 %tobool145, label %if.then.146, label %if.end.147

if.then.146:                                      ; preds = %if.else.142
  store i32 12, i32* %base_index, align 4, !tbaa !5
  br label %if.end.147

if.end.147:                                       ; preds = %if.then.146, %if.else.142
  br label %if.end.148

if.end.148:                                       ; preds = %if.end.147, %if.end.141
  %197 = load i32, i32* %base_index, align 4, !tbaa !5
  %shl149 = shl i32 %197, 4
  %198 = load i32, i32* %indexed, align 4, !tbaa !5
  %tobool150 = icmp ne i32 %198, 0
  br i1 %tobool150, label %cond.true.151, label %cond.false.156

cond.true.151:                                    ; preds = %if.end.148
  %199 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %ColorSpace152 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %199, i32 0, i32 9
  %200 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace152, align 8, !tbaa !131
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %200, i32 0, i32 7
  %indexed153 = bitcast %union.anon* %params to %struct.gs_indexed_params_s*
  %use_proc = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %indexed153, i32 0, i32 3
  %201 = load i32, i32* %use_proc, align 4, !tbaa !166
  %tobool154 = icmp ne i32 %201, 0
  %cond155 = select i1 %tobool154, i32 12, i32 8
  br label %cond.end.157

cond.false.156:                                   ; preds = %if.end.148
  br label %cond.end.157

cond.end.157:                                     ; preds = %cond.false.156, %cond.true.151
  %cond158 = phi i32 [ %cond155, %cond.true.151 ], [ 0, %cond.false.156 ]
  %or159 = or i32 %shl149, %cond158
  %conv160 = trunc i32 %or159 to i8
  %202 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %color_space161 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %202, i32 0, i32 19
  %byte1162 = getelementptr inbounds %struct.clist_color_space_s, %struct.clist_color_space_s* %color_space161, i32 0, i32 0
  store i8 %conv160, i8* %byte1162, align 1, !tbaa !159
  %203 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %ColorSpace163 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %203, i32 0, i32 9
  %204 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace163, align 8, !tbaa !131
  %205 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %color_space164 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %205, i32 0, i32 19
  %space165 = getelementptr inbounds %struct.clist_color_space_s, %struct.clist_color_space_s* %color_space164, i32 0, i32 3
  store %struct.gs_color_space_s* %204, %struct.gs_color_space_s** %space165, align 8, !tbaa !161
  %id166 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %204, i32 0, i32 2
  %206 = load i64, i64* %id166, align 8, !tbaa !168
  %207 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %color_space167 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %207, i32 0, i32 19
  %id168 = getelementptr inbounds %struct.clist_color_space_s, %struct.clist_color_space_s* %color_space167, i32 0, i32 1
  store i64 %206, i64* %id168, align 8, !tbaa !162
  %208 = load i32, i32* %base_index, align 4, !tbaa !5
  %cmp169 = icmp eq i32 %208, 12
  br i1 %cmp169, label %if.then.171, label %if.else.325

if.then.171:                                      ; preds = %cond.end.157
  %209 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs172 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %209, i32 0, i32 42
  %get_profile = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs172, i32 0, i32 67
  %210 = load i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile, align 8, !tbaa !169
  %211 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call173 = call i32 %210(%struct.gx_device_s* %211, %struct.cmm_dev_profile_s** %dev_profile) #6
  store i32 %call173, i32* %code, align 4, !tbaa !5
  %212 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %graphics_type_tag = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %212, i32 0, i32 40
  %213 = load i32, i32* %graphics_type_tag, align 4, !tbaa !170
  %214 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  call void @gsicc_extract_profile(i32 %213, %struct.cmm_dev_profile_s* %214, %struct.cmm_profile_s** %gs_output_profile, %struct.gsicc_rendering_param_s* %dev_render_cond) #6
  %215 = load i32, i32* %indexed, align 4, !tbaa !5
  %tobool174 = icmp ne i32 %215, 0
  br i1 %tobool174, label %if.else.178, label %if.then.175

if.then.175:                                      ; preds = %if.then.171
  %216 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %ColorSpace176 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %216, i32 0, i32 9
  %217 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace176, align 8, !tbaa !131
  %cmm_icc_profile_data177 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %217, i32 0, i32 6
  %218 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data177, align 8, !tbaa !165
  store %struct.cmm_profile_s* %218, %struct.cmm_profile_s** %src_profile, align 8, !tbaa !1
  br label %if.end.182

if.else.178:                                      ; preds = %if.then.171
  %219 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %ColorSpace179 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %219, i32 0, i32 9
  %220 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace179, align 8, !tbaa !131
  %base_space180 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %220, i32 0, i32 3
  %221 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space180, align 8, !tbaa !163
  %cmm_icc_profile_data181 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %221, i32 0, i32 6
  %222 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data181, align 8, !tbaa !165
  store %struct.cmm_profile_s* %222, %struct.cmm_profile_s** %src_profile, align 8, !tbaa !1
  br label %if.end.182

if.end.182:                                       ; preds = %if.else.178, %if.then.175
  %graphics_type_tag183 = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %stored_rendering_cond, i32 0, i32 3
  store i32 2, i32* %graphics_type_tag183, align 4, !tbaa !171
  %override_icc = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %dev_render_cond, i32 0, i32 5
  %223 = load i32, i32* %override_icc, align 4, !tbaa !173
  %override_icc184 = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %stored_rendering_cond, i32 0, i32 5
  store i32 %223, i32* %override_icc184, align 4, !tbaa !173
  %preserve_black = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %dev_render_cond, i32 0, i32 2
  %224 = load i32, i32* %preserve_black, align 4, !tbaa !174
  %preserve_black185 = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %stored_rendering_cond, i32 0, i32 2
  store i32 %224, i32* %preserve_black185, align 4, !tbaa !174
  %cmm = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %stored_rendering_cond, i32 0, i32 4
  store i32 0, i32* %cmm, align 4, !tbaa !175
  %225 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %icc_manager = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %225, i32 0, i32 35
  %226 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !176
  %srcgtag_profile186 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %226, i32 0, i32 9
  %227 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag_profile186, align 8, !tbaa !177
  %cmp187 = icmp ne %struct.cmm_srcgtag_profile_s* %227, null
  br i1 %cmp187, label %if.then.189, label %if.end.262

if.then.189:                                      ; preds = %if.end.182
  %228 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %icc_manager190 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %228, i32 0, i32 35
  %229 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager190, align 8, !tbaa !176
  %srcgtag_profile191 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %229, i32 0, i32 9
  %230 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag_profile191, align 8, !tbaa !177
  store %struct.cmm_srcgtag_profile_s* %230, %struct.cmm_srcgtag_profile_s** %srcgtag_profile, align 8, !tbaa !1
  %231 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %src_profile, align 8, !tbaa !1
  %data_cs = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %231, i32 0, i32 5
  %232 = load i32, i32* %data_cs, align 4, !tbaa !179
  %cmp192 = icmp eq i32 %232, 2
  br i1 %cmp192, label %if.then.194, label %if.else.224

if.then.194:                                      ; preds = %if.then.189
  %233 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag_profile, align 8, !tbaa !1
  %rgb_profiles = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %233, i32 0, i32 0
  %arrayidx195 = getelementptr inbounds [3 x %struct.cmm_profile_s*], [3 x %struct.cmm_profile_s*]* %rgb_profiles, i32 0, i64 1
  %234 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %arrayidx195, align 8, !tbaa !1
  %cmp196 = icmp ne %struct.cmm_profile_s* %234, null
  br i1 %cmp196, label %if.then.198, label %if.else.218

if.then.198:                                      ; preds = %if.then.194
  %235 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %src_profile, align 8, !tbaa !1
  %call199 = call i32 @gsicc_get_default_type(%struct.cmm_profile_s* %235) #6
  store i32 %call199, i32* %csi, align 4, !tbaa !5
  %236 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag_profile, align 8, !tbaa !1
  %rgb_rend_cond = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %236, i32 0, i32 1
  %arrayidx200 = getelementptr inbounds [3 x %struct.gsicc_rendering_param_s], [3 x %struct.gsicc_rendering_param_s]* %rgb_rend_cond, i32 0, i64 1
  %override_icc201 = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %arrayidx200, i32 0, i32 5
  %237 = load i32, i32* %override_icc201, align 4, !tbaa !173
  %tobool202 = icmp ne i32 %237, 0
  br i1 %tobool202, label %if.then.206, label %lor.lhs.false.203

lor.lhs.false.203:                                ; preds = %if.then.198
  %238 = load i32, i32* %csi, align 4, !tbaa !5
  %cmp204 = icmp eq i32 %238, 1
  br i1 %cmp204, label %if.then.206, label %if.end.217

if.then.206:                                      ; preds = %lor.lhs.false.203, %if.then.198
  %239 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag_profile, align 8, !tbaa !1
  %rgb_profiles207 = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %239, i32 0, i32 0
  %arrayidx208 = getelementptr inbounds [3 x %struct.cmm_profile_s*], [3 x %struct.cmm_profile_s*]* %rgb_profiles207, i32 0, i64 1
  %240 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %arrayidx208, align 8, !tbaa !1
  store %struct.cmm_profile_s* %240, %struct.cmm_profile_s** %src_profile, align 8, !tbaa !1
  %241 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag_profile, align 8, !tbaa !1
  %rgb_rend_cond209 = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %241, i32 0, i32 1
  %arrayidx210 = getelementptr inbounds [3 x %struct.gsicc_rendering_param_s], [3 x %struct.gsicc_rendering_param_s]* %rgb_rend_cond209, i32 0, i64 1
  %rendering_intent = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %arrayidx210, i32 0, i32 0
  %242 = load i32, i32* %rendering_intent, align 4, !tbaa !182
  %243 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis_nonconst, align 8, !tbaa !1
  %renderingintent211 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %243, i32 0, i32 33
  store i32 %242, i32* %renderingintent211, align 4, !tbaa !112
  %244 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag_profile, align 8, !tbaa !1
  %rgb_rend_cond212 = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %244, i32 0, i32 1
  %arrayidx213 = getelementptr inbounds [3 x %struct.gsicc_rendering_param_s], [3 x %struct.gsicc_rendering_param_s]* %rgb_rend_cond212, i32 0, i64 1
  %black_point_comp = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %arrayidx213, i32 0, i32 1
  %245 = load i32, i32* %black_point_comp, align 4, !tbaa !183
  %246 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis_nonconst, align 8, !tbaa !1
  %blackptcomp214 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %246, i32 0, i32 34
  store i32 %245, i32* %blackptcomp214, align 4, !tbaa !113
  %247 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag_profile, align 8, !tbaa !1
  %rgb_rend_cond215 = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %247, i32 0, i32 1
  %arrayidx216 = getelementptr inbounds [3 x %struct.gsicc_rendering_param_s], [3 x %struct.gsicc_rendering_param_s]* %rgb_rend_cond215, i32 0, i64 1
  %248 = bitcast %struct.gsicc_rendering_param_s* %stored_rendering_cond to i8*
  %249 = bitcast %struct.gsicc_rendering_param_s* %arrayidx216 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %248, i8* %249, i64 24, i32 4, i1 false), !tbaa.struct !184
  br label %if.end.217

if.end.217:                                       ; preds = %if.then.206, %lor.lhs.false.203
  br label %if.end.223

if.else.218:                                      ; preds = %if.then.194
  %250 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag_profile, align 8, !tbaa !1
  %rgb_rend_cond219 = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %250, i32 0, i32 1
  %arrayidx220 = getelementptr inbounds [3 x %struct.gsicc_rendering_param_s], [3 x %struct.gsicc_rendering_param_s]* %rgb_rend_cond219, i32 0, i64 1
  %cmm221 = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %arrayidx220, i32 0, i32 4
  %251 = load i32, i32* %cmm221, align 4, !tbaa !175
  %cmm222 = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %stored_rendering_cond, i32 0, i32 4
  store i32 %251, i32* %cmm222, align 4, !tbaa !175
  br label %if.end.223

if.end.223:                                       ; preds = %if.else.218, %if.end.217
  br label %if.end.261

if.else.224:                                      ; preds = %if.then.189
  %252 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %src_profile, align 8, !tbaa !1
  %data_cs225 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %252, i32 0, i32 5
  %253 = load i32, i32* %data_cs225, align 4, !tbaa !179
  %cmp226 = icmp eq i32 %253, 3
  br i1 %cmp226, label %if.then.228, label %if.end.260

if.then.228:                                      ; preds = %if.else.224
  %254 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag_profile, align 8, !tbaa !1
  %cmyk_profiles = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %254, i32 0, i32 2
  %arrayidx229 = getelementptr inbounds [3 x %struct.cmm_profile_s*], [3 x %struct.cmm_profile_s*]* %cmyk_profiles, i32 0, i64 1
  %255 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %arrayidx229, align 8, !tbaa !1
  %cmp230 = icmp ne %struct.cmm_profile_s* %255, null
  br i1 %cmp230, label %if.then.232, label %if.else.254

if.then.232:                                      ; preds = %if.then.228
  %256 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %src_profile, align 8, !tbaa !1
  %call233 = call i32 @gsicc_get_default_type(%struct.cmm_profile_s* %256) #6
  store i32 %call233, i32* %csi, align 4, !tbaa !5
  %257 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag_profile, align 8, !tbaa !1
  %rgb_rend_cond234 = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %257, i32 0, i32 1
  %arrayidx235 = getelementptr inbounds [3 x %struct.gsicc_rendering_param_s], [3 x %struct.gsicc_rendering_param_s]* %rgb_rend_cond234, i32 0, i64 1
  %override_icc236 = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %arrayidx235, i32 0, i32 5
  %258 = load i32, i32* %override_icc236, align 4, !tbaa !173
  %tobool237 = icmp ne i32 %258, 0
  br i1 %tobool237, label %if.then.241, label %lor.lhs.false.238

lor.lhs.false.238:                                ; preds = %if.then.232
  %259 = load i32, i32* %csi, align 4, !tbaa !5
  %cmp239 = icmp eq i32 %259, 2
  br i1 %cmp239, label %if.then.241, label %if.end.253

if.then.241:                                      ; preds = %lor.lhs.false.238, %if.then.232
  %260 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag_profile, align 8, !tbaa !1
  %cmyk_profiles242 = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %260, i32 0, i32 2
  %arrayidx243 = getelementptr inbounds [3 x %struct.cmm_profile_s*], [3 x %struct.cmm_profile_s*]* %cmyk_profiles242, i32 0, i64 1
  %261 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %arrayidx243, align 8, !tbaa !1
  store %struct.cmm_profile_s* %261, %struct.cmm_profile_s** %src_profile, align 8, !tbaa !1
  %262 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag_profile, align 8, !tbaa !1
  %cmyk_rend_cond = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %262, i32 0, i32 3
  %arrayidx244 = getelementptr inbounds [3 x %struct.gsicc_rendering_param_s], [3 x %struct.gsicc_rendering_param_s]* %cmyk_rend_cond, i32 0, i64 1
  %rendering_intent245 = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %arrayidx244, i32 0, i32 0
  %263 = load i32, i32* %rendering_intent245, align 4, !tbaa !182
  %264 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis_nonconst, align 8, !tbaa !1
  %renderingintent246 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %264, i32 0, i32 33
  store i32 %263, i32* %renderingintent246, align 4, !tbaa !112
  %265 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag_profile, align 8, !tbaa !1
  %cmyk_rend_cond247 = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %265, i32 0, i32 3
  %arrayidx248 = getelementptr inbounds [3 x %struct.gsicc_rendering_param_s], [3 x %struct.gsicc_rendering_param_s]* %cmyk_rend_cond247, i32 0, i64 1
  %black_point_comp249 = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %arrayidx248, i32 0, i32 1
  %266 = load i32, i32* %black_point_comp249, align 4, !tbaa !183
  %267 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis_nonconst, align 8, !tbaa !1
  %blackptcomp250 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %267, i32 0, i32 34
  store i32 %266, i32* %blackptcomp250, align 4, !tbaa !113
  %268 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag_profile, align 8, !tbaa !1
  %cmyk_rend_cond251 = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %268, i32 0, i32 3
  %arrayidx252 = getelementptr inbounds [3 x %struct.gsicc_rendering_param_s], [3 x %struct.gsicc_rendering_param_s]* %cmyk_rend_cond251, i32 0, i64 1
  %269 = bitcast %struct.gsicc_rendering_param_s* %stored_rendering_cond to i8*
  %270 = bitcast %struct.gsicc_rendering_param_s* %arrayidx252 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %269, i8* %270, i64 24, i32 4, i1 false), !tbaa.struct !184
  br label %if.end.253

if.end.253:                                       ; preds = %if.then.241, %lor.lhs.false.238
  br label %if.end.259

if.else.254:                                      ; preds = %if.then.228
  %271 = load %struct.cmm_srcgtag_profile_s*, %struct.cmm_srcgtag_profile_s** %srcgtag_profile, align 8, !tbaa !1
  %cmyk_rend_cond255 = getelementptr inbounds %struct.cmm_srcgtag_profile_s, %struct.cmm_srcgtag_profile_s* %271, i32 0, i32 3
  %arrayidx256 = getelementptr inbounds [3 x %struct.gsicc_rendering_param_s], [3 x %struct.gsicc_rendering_param_s]* %cmyk_rend_cond255, i32 0, i64 1
  %cmm257 = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %arrayidx256, i32 0, i32 4
  %272 = load i32, i32* %cmm257, align 4, !tbaa !175
  %cmm258 = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %stored_rendering_cond, i32 0, i32 4
  store i32 %272, i32* %cmm258, align 4, !tbaa !175
  br label %if.end.259

if.end.259:                                       ; preds = %if.else.254, %if.end.253
  br label %if.end.260

if.end.260:                                       ; preds = %if.end.259, %if.else.224
  br label %if.end.261

if.end.261:                                       ; preds = %if.end.260, %if.end.223
  br label %if.end.262

if.end.262:                                       ; preds = %if.end.261, %if.end.182
  %273 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis_nonconst, align 8, !tbaa !1
  %renderingintent263 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %273, i32 0, i32 33
  %274 = load i32, i32* %renderingintent263, align 4, !tbaa !112
  %and264 = and i32 %274, 4
  %tobool265 = icmp ne i32 %and264, 0
  br i1 %tobool265, label %if.end.274, label %if.then.266

if.then.266:                                      ; preds = %if.end.262
  %rendering_intent267 = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %dev_render_cond, i32 0, i32 0
  %275 = load i32, i32* %rendering_intent267, align 4, !tbaa !182
  %cmp268 = icmp ne i32 %275, 8
  br i1 %cmp268, label %if.then.270, label %if.end.273

if.then.270:                                      ; preds = %if.then.266
  %rendering_intent271 = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %dev_render_cond, i32 0, i32 0
  %276 = load i32, i32* %rendering_intent271, align 4, !tbaa !182
  %277 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis_nonconst, align 8, !tbaa !1
  %renderingintent272 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %277, i32 0, i32 33
  store i32 %276, i32* %renderingintent272, align 4, !tbaa !112
  br label %if.end.273

if.end.273:                                       ; preds = %if.then.270, %if.then.266
  br label %if.end.274

if.end.274:                                       ; preds = %if.end.273, %if.end.262
  %278 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis_nonconst, align 8, !tbaa !1
  %blackptcomp275 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %278, i32 0, i32 34
  %279 = load i32, i32* %blackptcomp275, align 4, !tbaa !113
  %and276 = and i32 %279, 4
  %tobool277 = icmp ne i32 %and276, 0
  br i1 %tobool277, label %if.end.286, label %if.then.278

if.then.278:                                      ; preds = %if.end.274
  %black_point_comp279 = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %dev_render_cond, i32 0, i32 1
  %280 = load i32, i32* %black_point_comp279, align 4, !tbaa !183
  %cmp280 = icmp ne i32 %280, 8
  br i1 %cmp280, label %if.then.282, label %if.end.285

if.then.282:                                      ; preds = %if.then.278
  %black_point_comp283 = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %dev_render_cond, i32 0, i32 1
  %281 = load i32, i32* %black_point_comp283, align 4, !tbaa !183
  %282 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis_nonconst, align 8, !tbaa !1
  %blackptcomp284 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %282, i32 0, i32 34
  store i32 %281, i32* %blackptcomp284, align 4, !tbaa !113
  br label %if.end.285

if.end.285:                                       ; preds = %if.then.282, %if.then.278
  br label %if.end.286

if.end.286:                                       ; preds = %if.end.285, %if.end.274
  %283 = load i32, i32* %renderingintent, align 4, !tbaa !9
  %284 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis_nonconst, align 8, !tbaa !1
  %renderingintent287 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %284, i32 0, i32 33
  %285 = load i32, i32* %renderingintent287, align 4, !tbaa !112
  %cmp288 = icmp ne i32 %283, %285
  br i1 %cmp288, label %if.then.290, label %if.end.291

if.then.290:                                      ; preds = %if.end.286
  store i32 1, i32* %intent_changed, align 4, !tbaa !5
  br label %if.end.291

if.end.291:                                       ; preds = %if.then.290, %if.end.286
  %286 = load i32, i32* %blackptcomp, align 4, !tbaa !9
  %287 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis_nonconst, align 8, !tbaa !1
  %blackptcomp292 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %287, i32 0, i32 34
  %288 = load i32, i32* %blackptcomp292, align 4, !tbaa !113
  %cmp293 = icmp ne i32 %286, %288
  br i1 %cmp293, label %if.then.295, label %if.end.296

if.then.295:                                      ; preds = %if.end.291
  store i32 1, i32* %bp_changed, align 4, !tbaa !5
  br label %if.end.296

if.end.296:                                       ; preds = %if.then.295, %if.end.291
  %289 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis_nonconst, align 8, !tbaa !1
  %renderingintent297 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %289, i32 0, i32 33
  %290 = load i32, i32* %renderingintent297, align 4, !tbaa !112
  %rendering_intent298 = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %stored_rendering_cond, i32 0, i32 0
  store i32 %290, i32* %rendering_intent298, align 4, !tbaa !182
  %291 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis_nonconst, align 8, !tbaa !1
  %blackptcomp299 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %291, i32 0, i32 34
  %292 = load i32, i32* %blackptcomp299, align 4, !tbaa !113
  %black_point_comp300 = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %stored_rendering_cond, i32 0, i32 1
  store i32 %292, i32* %black_point_comp300, align 4, !tbaa !183
  %graphics_type_tag301 = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %stored_rendering_cond, i32 0, i32 3
  store i32 2, i32* %graphics_type_tag301, align 4, !tbaa !171
  %293 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %src_profile, align 8, !tbaa !1
  %hash_is_valid = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %293, i32 0, i32 8
  %294 = load i32, i32* %hash_is_valid, align 4, !tbaa !185
  %tobool302 = icmp ne i32 %294, 0
  br i1 %tobool302, label %if.end.306, label %if.then.303

if.then.303:                                      ; preds = %if.end.296
  %295 = bitcast i64* %hash to i8*
  call void @llvm.lifetime.start(i64 8, i8* %295) #1
  %296 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %src_profile, align 8, !tbaa !1
  %buffer304 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %296, i32 0, i32 14
  %297 = load i8*, i8** %buffer304, align 8, !tbaa !186
  %298 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %src_profile, align 8, !tbaa !1
  %buffer_size = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %298, i32 0, i32 11
  %299 = load i32, i32* %buffer_size, align 4, !tbaa !187
  call void @gsicc_get_icc_buff_hash(i8* %297, i64* %hash, i32 %299) #6
  %300 = load i64, i64* %hash, align 8, !tbaa !7
  %301 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %src_profile, align 8, !tbaa !1
  %hashcode = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %301, i32 0, i32 7
  store i64 %300, i64* %hashcode, align 8, !tbaa !188
  %302 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %src_profile, align 8, !tbaa !1
  %hash_is_valid305 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %302, i32 0, i32 8
  store i32 1, i32* %hash_is_valid305, align 4, !tbaa !185
  %303 = bitcast i64* %hash to i8*
  call void @llvm.lifetime.end(i64 8, i8* %303) #1
  br label %if.end.306

if.end.306:                                       ; preds = %if.then.303, %if.end.296
  %304 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %src_profile, align 8, !tbaa !1
  %hashcode307 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %304, i32 0, i32 7
  %305 = load i64, i64* %hashcode307, align 8, !tbaa !188
  %306 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %color_space308 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %306, i32 0, i32 19
  %icc_info309 = getelementptr inbounds %struct.clist_color_space_s, %struct.clist_color_space_s* %color_space308, i32 0, i32 2
  %icc_hash = getelementptr inbounds %struct.clist_icc_color_s, %struct.clist_icc_color_s* %icc_info309, i32 0, i32 0
  store i64 %305, i64* %icc_hash, align 8, !tbaa !189
  %307 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %src_profile, align 8, !tbaa !1
  %num_comps = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %307, i32 0, i32 0
  %308 = load i8, i8* %num_comps, align 1, !tbaa !190
  %309 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %color_space310 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %309, i32 0, i32 19
  %icc_info311 = getelementptr inbounds %struct.clist_color_space_s, %struct.clist_color_space_s* %color_space310, i32 0, i32 2
  %icc_num_components = getelementptr inbounds %struct.clist_icc_color_s, %struct.clist_icc_color_s* %icc_info311, i32 0, i32 1
  store i8 %308, i8* %icc_num_components, align 1, !tbaa !191
  %310 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %src_profile, align 8, !tbaa !1
  %islab = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %310, i32 0, i32 2
  %311 = load i32, i32* %islab, align 4, !tbaa !192
  %312 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %color_space312 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %312, i32 0, i32 19
  %icc_info313 = getelementptr inbounds %struct.clist_color_space_s, %struct.clist_color_space_s* %color_space312, i32 0, i32 2
  %is_lab = getelementptr inbounds %struct.clist_icc_color_s, %struct.clist_icc_color_s* %icc_info313, i32 0, i32 2
  store i32 %311, i32* %is_lab, align 4, !tbaa !193
  %313 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %src_profile, align 8, !tbaa !1
  %default_match = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %313, i32 0, i32 4
  %314 = load i32, i32* %default_match, align 4, !tbaa !194
  %315 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %color_space314 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %315, i32 0, i32 19
  %icc_info315 = getelementptr inbounds %struct.clist_color_space_s, %struct.clist_color_space_s* %color_space314, i32 0, i32 2
  %default_match316 = getelementptr inbounds %struct.clist_icc_color_s, %struct.clist_icc_color_s* %icc_info315, i32 0, i32 3
  store i32 %314, i32* %default_match316, align 4, !tbaa !195
  %316 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %src_profile, align 8, !tbaa !1
  %data_cs317 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %316, i32 0, i32 5
  %317 = load i32, i32* %data_cs317, align 4, !tbaa !179
  %318 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %color_space318 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %318, i32 0, i32 19
  %icc_info319 = getelementptr inbounds %struct.clist_color_space_s, %struct.clist_color_space_s* %color_space318, i32 0, i32 2
  %data_cs320 = getelementptr inbounds %struct.clist_icc_color_s, %struct.clist_icc_color_s* %icc_info319, i32 0, i32 4
  store i32 %317, i32* %data_cs320, align 4, !tbaa !196
  %319 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %src_profile, align 8, !tbaa !1
  %rend_cond = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %319, i32 0, i32 13
  %320 = bitcast %struct.gsicc_rendering_param_s* %rend_cond to i8*
  %321 = bitcast %struct.gsicc_rendering_param_s* %stored_rendering_cond to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %320, i8* %321, i64 24, i32 4, i1 false), !tbaa.struct !184
  %322 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %src_profile, align 8, !tbaa !1
  %rend_is_valid = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %322, i32 0, i32 12
  %323 = load i32, i32* %rend_is_valid, align 4, !tbaa !197
  store i32 %323, i32* %render_is_valid, align 4, !tbaa !5
  %324 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %src_profile, align 8, !tbaa !1
  %rend_is_valid321 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %324, i32 0, i32 12
  store i32 1, i32* %rend_is_valid321, align 4, !tbaa !197
  %325 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %326 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %src_profile, align 8, !tbaa !1
  %hashcode322 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %326, i32 0, i32 7
  %327 = load i64, i64* %hashcode322, align 8, !tbaa !188
  %328 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %src_profile, align 8, !tbaa !1
  %call323 = call i32 @clist_icc_addentry(%struct.gx_device_clist_writer_s* %325, i64 %327, %struct.cmm_profile_s* %328) #6
  %329 = load i32, i32* %render_is_valid, align 4, !tbaa !5
  %330 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %src_profile, align 8, !tbaa !1
  %rend_is_valid324 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %330, i32 0, i32 12
  store i32 %329, i32* %rend_is_valid324, align 4, !tbaa !197
  br label %if.end.328

if.else.325:                                      ; preds = %cond.end.157
  %331 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %color_space326 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %331, i32 0, i32 19
  %icc_info327 = getelementptr inbounds %struct.clist_color_space_s, %struct.clist_color_space_s* %color_space326, i32 0, i32 2
  %332 = bitcast %struct.clist_icc_color_s* %icc_info327 to i8*
  %333 = bitcast %struct.clist_icc_color_s* %icc_zero_init to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %332, i8* %333, i64 24, i32 8, i1 false), !tbaa.struct !160
  br label %if.end.328

if.end.328:                                       ; preds = %if.else.325, %if.end.306
  br label %if.end.329

if.end.329:                                       ; preds = %if.end.328, %if.then.131
  %334 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %rect330 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %334, i32 0, i32 11
  %p331 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect330, i32 0, i32 0
  %y332 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p331, i32 0, i32 1
  %335 = load i32, i32* %y332, align 4, !tbaa !148
  %336 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %y333 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %336, i32 0, i32 25
  store i32 %335, i32* %y333, align 4, !tbaa !198
  %337 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %Width334 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %337, i32 0, i32 2
  %338 = load i32, i32* %Width334, align 4, !tbaa !149
  %339 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %bits_per_plane335 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %339, i32 0, i32 16
  %340 = load i32, i32* %bits_per_plane335, align 4, !tbaa !156
  %mul336 = mul nsw i32 %338, %340
  %add = add nsw i32 %mul336, 7
  %shr = ashr i32 %add, 3
  store i32 %shr, i32* %bytes_per_plane, align 4, !tbaa !5
  %341 = load i32, i32* %bytes_per_plane, align 4, !tbaa !5
  %342 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %num_planes337 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %342, i32 0, i32 6
  %343 = load i32, i32* %num_planes337, align 4, !tbaa !134
  %mul338 = mul nsw i32 %341, %343
  store i32 %mul338, i32* %bytes_per_row, align 4, !tbaa !5
  %344 = load i32, i32* %bytes_per_row, align 4, !tbaa !5
  %cmp339 = icmp sgt i32 %344, 1
  br i1 %cmp339, label %cond.true.341, label %cond.false.342

cond.true.341:                                    ; preds = %if.end.329
  %345 = load i32, i32* %bytes_per_row, align 4, !tbaa !5
  br label %cond.end.343

cond.false.342:                                   ; preds = %if.end.329
  br label %cond.end.343

cond.end.343:                                     ; preds = %cond.false.342, %cond.true.341
  %cond344 = phi i32 [ %345, %cond.true.341 ], [ 1, %cond.false.342 ]
  store i32 %cond344, i32* %bytes_per_row, align 4, !tbaa !5
  %346 = load i32, i32* %bytes_per_row, align 4, !tbaa !5
  %conv345 = sext i32 %346 to i64
  %add346 = add i64 54, %conv345
  %347 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %cend = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %347, i32 0, i32 69
  %348 = load i8*, i8** %cend, align 8, !tbaa !199
  %349 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %cbuf = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %349, i32 0, i32 67
  %350 = load i8*, i8** %cbuf, align 8, !tbaa !200
  %sub.ptr.lhs.cast = ptrtoint i8* %348 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %350 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp347 = icmp ugt i64 %add346, %sub.ptr.sub
  br i1 %cmp347, label %if.then.349, label %if.end.350

if.then.349:                                      ; preds = %cond.end.343
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

if.end.350:                                       ; preds = %cond.end.343
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.349, %if.end.350
  %351 = bitcast i32* %bytes_per_row to i8*
  call void @llvm.lifetime.end(i64 4, i8* %351) #1
  %352 = bitcast i32* %bytes_per_plane to i8*
  call void @llvm.lifetime.end(i64 4, i8* %352) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.735 [
    i32 0, label %cleanup.cont
    i32 3, label %use_default
  ]

cleanup.cont:                                     ; preds = %cleanup
  %353 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %Interpolate = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %353, i32 0, i32 6
  %354 = load i32, i32* %Interpolate, align 4, !tbaa !201
  %tobool352 = icmp ne i32 %354, 0
  br i1 %tobool352, label %if.then.353, label %if.else.361

if.then.353:                                      ; preds = %cleanup.cont
  %355 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call354 = call i32 @gx_device_is_pattern_clist(%struct.gx_device_s* %355) #6
  %tobool355 = icmp ne i32 %call354, 0
  br i1 %tobool355, label %if.then.356, label %if.end.357

if.then.356:                                      ; preds = %if.then.353
  br label %use_default

if.end.357:                                       ; preds = %if.then.353
  %356 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %support = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %356, i32 0, i32 15
  %y358 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %support, i32 0, i32 1
  store i32 9, i32* %y358, align 4, !tbaa !202
  %357 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %support359 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %357, i32 0, i32 15
  %x360 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %support359, i32 0, i32 0
  store i32 9, i32* %x360, align 4, !tbaa !203
  br label %if.end.366

if.else.361:                                      ; preds = %cleanup.cont
  %358 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %support362 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %358, i32 0, i32 15
  %y363 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %support362, i32 0, i32 1
  store i32 0, i32* %y363, align 4, !tbaa !202
  %359 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %support364 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %359, i32 0, i32 15
  %x365 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %support364, i32 0, i32 0
  store i32 0, i32* %x365, align 4, !tbaa !203
  br label %if.end.366

if.end.366:                                       ; preds = %if.else.361, %if.end.357
  %360 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %rect367 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %360, i32 0, i32 11
  %p368 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect367, i32 0, i32 0
  %x369 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p368, i32 0, i32 0
  %361 = load i32, i32* %x369, align 4, !tbaa !147
  %362 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %support370 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %362, i32 0, i32 15
  %x371 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %support370, i32 0, i32 0
  %363 = load i32, i32* %x371, align 4, !tbaa !203
  %sub = sub nsw i32 %361, %363
  %conv372 = sitofp i32 %sub to double
  %p373 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %sbox, i32 0, i32 0
  %x374 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p373, i32 0, i32 0
  store double %conv372, double* %x374, align 8, !tbaa !204
  %364 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %rect375 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %364, i32 0, i32 11
  %p376 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect375, i32 0, i32 0
  %y377 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p376, i32 0, i32 1
  %365 = load i32, i32* %y377, align 4, !tbaa !148
  %366 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %support378 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %366, i32 0, i32 15
  %y379 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %support378, i32 0, i32 1
  %367 = load i32, i32* %y379, align 4, !tbaa !202
  %sub380 = sub nsw i32 %365, %367
  %conv381 = sitofp i32 %sub380 to double
  %p382 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %sbox, i32 0, i32 0
  %y383 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p382, i32 0, i32 1
  store double %conv381, double* %y383, align 8, !tbaa !206
  %368 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %rect384 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %368, i32 0, i32 11
  %q385 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect384, i32 0, i32 1
  %x386 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q385, i32 0, i32 0
  %369 = load i32, i32* %x386, align 4, !tbaa !150
  %370 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %support387 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %370, i32 0, i32 15
  %x388 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %support387, i32 0, i32 0
  %371 = load i32, i32* %x388, align 4, !tbaa !203
  %add389 = add nsw i32 %369, %371
  %conv390 = sitofp i32 %add389 to double
  %q391 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %sbox, i32 0, i32 1
  %x392 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q391, i32 0, i32 0
  store double %conv390, double* %x392, align 8, !tbaa !207
  %372 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %rect393 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %372, i32 0, i32 11
  %q394 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect393, i32 0, i32 1
  %y395 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q394, i32 0, i32 1
  %373 = load i32, i32* %y395, align 4, !tbaa !152
  %374 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %support396 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %374, i32 0, i32 15
  %y397 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %support396, i32 0, i32 1
  %375 = load i32, i32* %y397, align 4, !tbaa !202
  %add398 = add nsw i32 %373, %375
  %conv399 = sitofp i32 %add398 to double
  %q400 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %sbox, i32 0, i32 1
  %y401 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q400, i32 0, i32 1
  store double %conv399, double* %y401, align 8, !tbaa !208
  %call402 = call i32 @gs_bbox_transform(%struct.gs_rect_s* %sbox, %struct.gs_matrix_s* %mat, %struct.gs_rect_s* %dbox) #6
  %376 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %disable_mask403 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %376, i32 0, i32 99
  %377 = load i32, i32* %disable_mask403, align 4, !tbaa !10
  %and404 = and i32 %377, 8
  %tobool405 = icmp ne i32 %and404, 0
  br i1 %tobool405, label %if.then.406, label %if.end.427

if.then.406:                                      ; preds = %if.end.366
  %378 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %p407 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %dbox, i32 0, i32 0
  %x408 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p407, i32 0, i32 0
  %379 = load double, double* %x408, align 8, !tbaa !204
  %call409 = call double @floor(double %379) #7
  %conv410 = fptosi double %call409 to i32
  %p411 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %dbox, i32 0, i32 0
  %y412 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p411, i32 0, i32 1
  %380 = load double, double* %y412, align 8, !tbaa !206
  %call413 = call double @floor(double %380) #7
  %conv414 = fptosi double %call413 to i32
  %q415 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %dbox, i32 0, i32 1
  %x416 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q415, i32 0, i32 0
  %381 = load double, double* %x416, align 8, !tbaa !207
  %call417 = call double @ceil(double %381) #7
  %conv418 = fptosi double %call417 to i32
  %q419 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %dbox, i32 0, i32 1
  %y420 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q419, i32 0, i32 1
  %382 = load double, double* %y420, align 8, !tbaa !208
  %call421 = call double @ceil(double %382) #7
  %conv422 = fptosi double %call421 to i32
  %call423 = call i32 @check_rect_for_trivial_clip(%struct.gx_clip_path_s* %378, i32 %conv410, i32 %conv414, i32 %conv418, i32 %conv422) #6
  %tobool424 = icmp ne i32 %call423, 0
  br i1 %tobool424, label %if.end.426, label %if.then.425

if.then.425:                                      ; preds = %if.then.406
  br label %use_default

if.end.426:                                       ; preds = %if.then.406
  br label %if.end.427

if.end.427:                                       ; preds = %if.end.426, %if.end.366
  %383 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %cmp428 = icmp eq %struct.cmm_dev_profile_s* %383, null
  br i1 %cmp428, label %if.then.430, label %if.end.435

if.then.430:                                      ; preds = %if.end.427
  %384 = bitcast %struct.gsicc_rendering_param_s* %temp_render_cond to i8*
  call void @llvm.lifetime.start(i64 24, i8* %384) #1
  %385 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs431 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %385, i32 0, i32 42
  %get_profile432 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs431, i32 0, i32 67
  %386 = load i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile432, align 8, !tbaa !169
  %387 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call433 = call i32 %386(%struct.gx_device_s* %387, %struct.cmm_dev_profile_s** %dev_profile) #6
  store i32 %call433, i32* %code, align 4, !tbaa !5
  %388 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %graphics_type_tag434 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %388, i32 0, i32 40
  %389 = load i32, i32* %graphics_type_tag434, align 4, !tbaa !170
  %390 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  call void @gsicc_extract_profile(i32 %389, %struct.cmm_dev_profile_s* %390, %struct.cmm_profile_s** %gs_output_profile, %struct.gsicc_rendering_param_s* %temp_render_cond) #6
  %391 = bitcast %struct.gsicc_rendering_param_s* %temp_render_cond to i8*
  call void @llvm.lifetime.end(i64 24, i8* %391) #1
  br label %if.end.435

if.end.435:                                       ; preds = %if.then.430, %if.end.427
  %392 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %unpack = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %392, i32 0, i32 30
  store i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)* null, i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)** %unpack, align 8, !tbaa !209
  %393 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %pageneutralcolor = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %393, i32 0, i32 7
  %394 = load i32, i32* %pageneutralcolor, align 4, !tbaa !210
  %tobool436 = icmp ne i32 %394, 0
  br i1 %tobool436, label %land.lhs.true.437, label %if.else.490

land.lhs.true.437:                                ; preds = %if.end.435
  %395 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %color_space438 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %395, i32 0, i32 19
  %icc_info439 = getelementptr inbounds %struct.clist_color_space_s, %struct.clist_color_space_s* %color_space438, i32 0, i32 2
  %data_cs440 = getelementptr inbounds %struct.clist_icc_color_s, %struct.clist_icc_color_s* %icc_info439, i32 0, i32 4
  %396 = load i32, i32* %data_cs440, align 4, !tbaa !196
  %cmp441 = icmp ne i32 %396, 1
  br i1 %cmp441, label %if.then.443, label %if.else.490

if.then.443:                                      ; preds = %land.lhs.true.437
  %397 = load i32, i32* %indexed, align 4, !tbaa !5
  %tobool444 = icmp ne i32 %397, 0
  br i1 %tobool444, label %if.else.480, label %if.then.445

if.then.445:                                      ; preds = %if.then.443
  %398 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %monitor_color = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %398, i32 0, i32 27
  store i32 1, i32* %monitor_color, align 4, !tbaa !212
  %399 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %400 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %Decode = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %400, i32 0, i32 5
  %arraydecay = getelementptr inbounds [130 x float], [130 x float]* %Decode, i32 0, i32 0
  call void @get_unpack_proc(%struct.clist_image_enum_s* %399, float* %arraydecay) #6
  %401 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %402 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %format446 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %402, i32 0, i32 7
  %403 = load i32, i32* %format446, align 4, !tbaa !123
  %404 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %Decode447 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %404, i32 0, i32 5
  %arraydecay448 = getelementptr inbounds [130 x float], [130 x float]* %Decode447, i32 0, i32 0
  call void @get_map(%struct.clist_image_enum_s* %401, i32 %403, float* %arraydecay448) #6
  %405 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %unpack449 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %405, i32 0, i32 30
  %406 = load i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)*, i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)** %unpack449, align 8, !tbaa !209
  %cmp450 = icmp eq i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)* %406, null
  br i1 %cmp450, label %if.then.452, label %if.else.454

if.then.452:                                      ; preds = %if.then.445
  %407 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %pageneutralcolor453 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %407, i32 0, i32 7
  store i32 0, i32* %pageneutralcolor453, align 4, !tbaa !210
  %408 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %icc_link_cache = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %408, i32 0, i32 36
  %409 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache, align 8, !tbaa !213
  %410 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  call void @gsicc_mcm_end_monitor(%struct.gsicc_link_cache_s* %409, %struct.gx_device_s* %410) #6
  br label %if.end.479

if.else.454:                                      ; preds = %if.then.445
  %411 = bitcast i32* %bsize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %411) #1
  %412 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %bps455 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %412, i32 0, i32 28
  %413 = load i32, i32* %bps455, align 4, !tbaa !141
  %cmp456 = icmp sgt i32 %413, 8
  br i1 %cmp456, label %cond.true.458, label %cond.false.461

cond.true.458:                                    ; preds = %if.else.454
  %414 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %Width459 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %414, i32 0, i32 2
  %415 = load i32, i32* %Width459, align 4, !tbaa !149
  %mul460 = mul nsw i32 %415, 2
  br label %cond.end.463

cond.false.461:                                   ; preds = %if.else.454
  %416 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %Width462 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %416, i32 0, i32 2
  %417 = load i32, i32* %Width462, align 4, !tbaa !149
  br label %cond.end.463

cond.end.463:                                     ; preds = %cond.false.461, %cond.true.458
  %cond464 = phi i32 [ %mul460, %cond.true.458 ], [ %417, %cond.false.461 ]
  %add465 = add nsw i32 %cond464, 15
  %418 = load i32, i32* %num_components, align 4, !tbaa !5
  %mul466 = mul nsw i32 %add465, %418
  store i32 %mul466, i32* %bsize, align 4, !tbaa !5
  %419 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs467 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %419, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs467, i32 0, i32 7
  %420 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !214
  %421 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %422 = load i32, i32* %bsize, align 4, !tbaa !5
  %call468 = call i8* %420(%struct.gs_memory_s* %421, i32 %422, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0)) #6
  %423 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %buffer469 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %423, i32 0, i32 31
  store i8* %call468, i8** %buffer469, align 8, !tbaa !130
  %424 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %buffer470 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %424, i32 0, i32 31
  %425 = load i8*, i8** %buffer470, align 8, !tbaa !130
  %cmp471 = icmp eq i8* %425, null
  br i1 %cmp471, label %if.then.473, label %if.end.475

if.then.473:                                      ; preds = %cond.end.463
  %426 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs474 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %426, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs474, i32 0, i32 2
  %427 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !215
  %428 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %429 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %430 = bitcast %struct.clist_image_enum_s* %429 to i8*
  call void %427(%struct.gs_memory_s* %428, i8* %430, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0)) #6
  %431 = load %struct.gx_image_enum_common_s**, %struct.gx_image_enum_common_s*** %pinfo.addr, align 8, !tbaa !1
  store %struct.gx_image_enum_common_s* null, %struct.gx_image_enum_common_s** %431, align 8, !tbaa !1
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.476

if.end.475:                                       ; preds = %cond.end.463
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.476

cleanup.476:                                      ; preds = %if.end.475, %if.then.473
  %432 = bitcast i32* %bsize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %432) #1
  %cleanup.dest.477 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.477, label %cleanup.735 [
    i32 0, label %cleanup.cont.478
  ]

cleanup.cont.478:                                 ; preds = %cleanup.476
  br label %if.end.479

if.end.479:                                       ; preds = %cleanup.cont.478, %if.then.452
  br label %if.end.489

if.else.480:                                      ; preds = %if.then.443
  %433 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %monitor_color481 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %433, i32 0, i32 27
  store i32 0, i32* %monitor_color481, align 4, !tbaa !212
  %434 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %ColorSpace482 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %434, i32 0, i32 9
  %435 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace482, align 8, !tbaa !131
  %436 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %call483 = call i32 @palette_has_color(%struct.gs_color_space_s* %435, %struct.gs_pixel_image_s* %436) #6
  %tobool484 = icmp ne i32 %call483, 0
  br i1 %tobool484, label %if.then.485, label %if.end.488

if.then.485:                                      ; preds = %if.else.480
  %437 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %pageneutralcolor486 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %437, i32 0, i32 7
  store i32 0, i32* %pageneutralcolor486, align 4, !tbaa !210
  %438 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %icc_link_cache487 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %438, i32 0, i32 36
  %439 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache487, align 8, !tbaa !213
  %440 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  call void @gsicc_mcm_end_monitor(%struct.gsicc_link_cache_s* %439, %struct.gx_device_s* %440) #6
  br label %if.end.488

if.end.488:                                       ; preds = %if.then.485, %if.else.480
  br label %if.end.489

if.end.489:                                       ; preds = %if.end.488, %if.end.479
  br label %if.end.492

if.else.490:                                      ; preds = %land.lhs.true.437, %if.end.435
  %441 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %monitor_color491 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %441, i32 0, i32 27
  store i32 0, i32* %monitor_color491, align 4, !tbaa !212
  br label %if.end.492

if.end.492:                                       ; preds = %if.else.490, %if.end.489
  %442 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %442, i32 0, i32 11
  %num_components493 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %443 = load i32, i32* %num_components493, align 4, !tbaa !216
  %cmp494 = icmp sgt i32 %443, 1
  br i1 %cmp494, label %cond.true.501, label %lor.lhs.false.496

lor.lhs.false.496:                                ; preds = %if.end.492
  %444 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info497 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %444, i32 0, i32 11
  %gray_index = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info497, i32 0, i32 4
  %445 = load i8, i8* %gray_index, align 1, !tbaa !217
  %conv498 = zext i8 %445 to i32
  %cmp499 = icmp eq i32 %conv498, 255
  br i1 %cmp499, label %cond.true.501, label %cond.false.503

cond.true.501:                                    ; preds = %lor.lhs.false.496, %if.end.492
  %446 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info502 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %446, i32 0, i32 11
  %max_color = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info502, i32 0, i32 6
  %447 = load i32, i32* %max_color, align 4, !tbaa !218
  br label %cond.end.505

cond.false.503:                                   ; preds = %lor.lhs.false.496
  %448 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info504 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %448, i32 0, i32 11
  %max_gray = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info504, i32 0, i32 5
  %449 = load i32, i32* %max_gray, align 4, !tbaa !219
  br label %cond.end.505

cond.end.505:                                     ; preds = %cond.false.503, %cond.true.501
  %cond506 = phi i32 [ %447, %cond.true.501 ], [ %449, %cond.false.503 ]
  %cmp507 = icmp ult i32 %cond506, 31
  br i1 %cmp507, label %land.lhs.true.509, label %if.end.563

land.lhs.true.509:                                ; preds = %cond.end.505
  %450 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %BitsPerComponent510 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %450, i32 0, i32 4
  %451 = load i32, i32* %BitsPerComponent510, align 4, !tbaa !140
  %cmp511 = icmp eq i32 %451, 8
  br i1 %cmp511, label %land.lhs.true.513, label %if.end.563

land.lhs.true.513:                                ; preds = %land.lhs.true.509
  %452 = load i32, i32* %masked, align 4, !tbaa !5
  %tobool514 = icmp ne i32 %452, 0
  br i1 %tobool514, label %if.end.563, label %land.lhs.true.515

land.lhs.true.515:                                ; preds = %land.lhs.true.513
  %453 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info516 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %453, i32 0, i32 11
  %num_components517 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info516, i32 0, i32 1
  %454 = load i32, i32* %num_components517, align 4, !tbaa !216
  %cmp518 = icmp eq i32 %454, 1
  br i1 %cmp518, label %land.lhs.true.522, label %lor.lhs.false.520

lor.lhs.false.520:                                ; preds = %land.lhs.true.515
  %455 = load i32, i32* %is_planar_dev, align 4, !tbaa !5
  %tobool521 = icmp ne i32 %455, 0
  br i1 %tobool521, label %land.lhs.true.522, label %if.end.563

land.lhs.true.522:                                ; preds = %lor.lhs.false.520, %land.lhs.true.515
  %456 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %prebandthreshold = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %456, i32 0, i32 12
  %457 = load i32, i32* %prebandthreshold, align 4, !tbaa !220
  %tobool523 = icmp ne i32 %457, 0
  br i1 %tobool523, label %if.then.524, label %if.end.563

if.then.524:                                      ; preds = %land.lhs.true.522
  %458 = bitcast i32* %dev_width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %458) #1
  %q525 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %dbox, i32 0, i32 1
  %x526 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q525, i32 0, i32 0
  %459 = load double, double* %x526, align 8, !tbaa !207
  %p527 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %dbox, i32 0, i32 0
  %x528 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p527, i32 0, i32 0
  %460 = load double, double* %x528, align 8, !tbaa !204
  %sub529 = fsub double %459, %460
  %conv530 = fptosi double %sub529 to i32
  store i32 %conv530, i32* %dev_width, align 4, !tbaa !5
  %461 = bitcast i32* %dev_height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %461) #1
  %q531 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %dbox, i32 0, i32 1
  %y532 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q531, i32 0, i32 1
  %462 = load double, double* %y532, align 8, !tbaa !208
  %p533 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %dbox, i32 0, i32 0
  %y534 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p533, i32 0, i32 1
  %463 = load double, double* %y534, align 8, !tbaa !206
  %sub535 = fsub double %462, %463
  %conv536 = fptosi double %sub535 to i32
  store i32 %conv536, i32* %dev_height, align 4, !tbaa !5
  %464 = bitcast i32* %src_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %464) #1
  %465 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %Height537 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %465, i32 0, i32 3
  %466 = load i32, i32* %Height537, align 4, !tbaa !151
  %467 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %Width538 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %467, i32 0, i32 2
  %468 = load i32, i32* %Width538, align 4, !tbaa !149
  %469 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %BitsPerComponent539 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %469, i32 0, i32 4
  %470 = load i32, i32* %BitsPerComponent539, align 4, !tbaa !140
  %mul540 = mul nsw i32 %468, %470
  %471 = load i32, i32* %num_components, align 4, !tbaa !5
  %mul541 = mul nsw i32 %mul540, %471
  %add542 = add nsw i32 %mul541, 63
  %shr543 = ashr i32 %add542, 6
  %shl544 = shl i32 %shr543, 3
  %mul545 = mul i32 %466, %shl544
  store i32 %mul545, i32* %src_size, align 4, !tbaa !5
  %472 = bitcast i32* %des_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %472) #1
  %473 = load i32, i32* %dev_height, align 4, !tbaa !5
  %474 = load i32, i32* %dev_width, align 4, !tbaa !5
  %475 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info546 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %475, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info546, i32 0, i32 3
  %476 = load i16, i16* %depth, align 2, !tbaa !221
  %conv547 = zext i16 %476 to i32
  %mul548 = mul nsw i32 %474, %conv547
  %add549 = add nsw i32 %mul548, 63
  %shr550 = ashr i32 %add549, 6
  %shl551 = shl i32 %shr550, 3
  %mul552 = mul i32 %473, %shl551
  store i32 %mul552, i32* %des_size, align 4, !tbaa !5
  %477 = load i32, i32* %src_size, align 4, !tbaa !5
  %478 = load i32, i32* %des_size, align 4, !tbaa !5
  %cmp553 = icmp sgt i32 %477, %478
  br i1 %cmp553, label %if.then.555, label %if.end.556

if.then.555:                                      ; preds = %if.then.524
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup.557

if.end.556:                                       ; preds = %if.then.524
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.557

cleanup.557:                                      ; preds = %if.then.555, %if.end.556
  %479 = bitcast i32* %des_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %479) #1
  %480 = bitcast i32* %src_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %480) #1
  %481 = bitcast i32* %dev_height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %481) #1
  %482 = bitcast i32* %dev_width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %482) #1
  %cleanup.dest.561 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.561, label %cleanup.735 [
    i32 0, label %cleanup.cont.562
    i32 3, label %use_default
  ]

cleanup.cont.562:                                 ; preds = %cleanup.557
  br label %if.end.563

if.end.563:                                       ; preds = %cleanup.cont.562, %land.lhs.true.522, %lor.lhs.false.520, %land.lhs.true.513, %land.lhs.true.509, %cond.end.505
  %483 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %begin_image_command = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %483, i32 0, i32 23
  %arraydecay564 = getelementptr inbounds [920 x i8], [920 x i8]* %begin_image_command, i32 0, i32 0
  %484 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %call565 = call i32 @begin_image_command(i8* %arraydecay564, i32 920, %struct.gs_image_common_s* %484) #6
  %485 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %begin_image_command_length = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %485, i32 0, i32 24
  store i32 %call565, i32* %begin_image_command_length, align 4, !tbaa !222
  %cmp566 = icmp slt i32 %call565, 0
  br i1 %cmp566, label %if.then.568, label %if.end.569

if.then.568:                                      ; preds = %if.end.563
  br label %use_default

if.end.569:                                       ; preds = %if.end.563
  %486 = load i32, i32* %masked, align 4, !tbaa !5
  %tobool570 = icmp ne i32 %486, 0
  br i1 %tobool570, label %if.end.607, label %if.then.571

if.then.571:                                      ; preds = %if.end.569
  %487 = bitcast i64* %all to i8*
  call void @llvm.lifetime.start(i64 8, i8* %487) #1
  %488 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %color_info572 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %488, i32 0, i32 11
  %num_components573 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info572, i32 0, i32 1
  %489 = load i32, i32* %num_components573, align 4, !tbaa !223
  %sh_prom = zext i32 %489 to i64
  %shl574 = shl i64 1, %sh_prom
  %sub575 = sub i64 %shl574, 1
  store i64 %sub575, i64* %all, align 8, !tbaa !7
  %490 = load i32, i32* %num_components, align 4, !tbaa !5
  %cmp576 = icmp sgt i32 %490, 1
  br i1 %cmp576, label %if.then.578, label %if.else.579

if.then.578:                                      ; preds = %if.then.571
  %491 = load i64, i64* %all, align 8, !tbaa !7
  store i64 %491, i64* %color_usage, align 8, !tbaa !7
  br label %if.end.606

if.else.579:                                      ; preds = %if.then.571
  %492 = bitcast %struct.gs_color_space_s** %pcs580 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %492) #1
  %493 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %ColorSpace581 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %493, i32 0, i32 9
  %494 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace581, align 8, !tbaa !131
  store %struct.gs_color_space_s* %494, %struct.gs_color_space_s** %pcs580, align 8, !tbaa !1
  %495 = bitcast i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %remap_color to i8*
  call void @llvm.lifetime.start(i64 8, i8* %495) #1
  %496 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs580, align 8, !tbaa !1
  %type582 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %496, i32 0, i32 0
  %497 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type582, align 8, !tbaa !224
  %remap_color583 = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %497, i32 0, i32 10
  %498 = load i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %remap_color583, align 8, !tbaa !225
  store i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)* %498, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %remap_color, align 8, !tbaa !1
  %499 = bitcast %struct.gs_client_color_s* %cc to i8*
  call void @llvm.lifetime.start(i64 264, i8* %499) #1
  %500 = bitcast %struct.gx_device_color_s* %dcolor584 to i8*
  call void @llvm.lifetime.start(i64 656, i8* %500) #1
  %501 = bitcast i32* %i585 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %501) #1
  %502 = bitcast i32* %max_value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %502) #1
  %503 = load i32, i32* %indexed, align 4, !tbaa !5
  %tobool586 = icmp ne i32 %503, 0
  br i1 %tobool586, label %cond.true.587, label %cond.false.590

cond.true.587:                                    ; preds = %if.else.579
  %504 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs580, align 8, !tbaa !1
  %params588 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %504, i32 0, i32 7
  %indexed589 = bitcast %union.anon* %params588 to %struct.gs_indexed_params_s*
  %hival = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %indexed589, i32 0, i32 0
  %505 = load i32, i32* %hival, align 4, !tbaa !227
  br label %cond.end.591

cond.false.590:                                   ; preds = %if.else.579
  br label %cond.end.591

cond.end.591:                                     ; preds = %cond.false.590, %cond.true.587
  %cond592 = phi i32 [ %505, %cond.true.587 ], [ 1, %cond.false.590 ]
  store i32 %cond592, i32* %max_value, align 4, !tbaa !5
  store i32 0, i32* %i585, align 4, !tbaa !5
  br label %for.cond.593

for.cond.593:                                     ; preds = %for.inc.603, %cond.end.591
  %506 = load i32, i32* %i585, align 4, !tbaa !5
  %507 = load i32, i32* %max_value, align 4, !tbaa !5
  %cmp594 = icmp sle i32 %506, %507
  br i1 %cmp594, label %for.body.596, label %for.end.605

for.body.596:                                     ; preds = %for.cond.593
  %508 = load i32, i32* %i585, align 4, !tbaa !5
  %conv597 = sitofp i32 %508 to double
  %conv598 = fptrunc double %conv597 to float
  %paint = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint, i32 0, i32 0
  %arrayidx599 = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 0
  store float %conv598, float* %arrayidx599, align 4, !tbaa !144
  %509 = load i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %remap_color, align 8, !tbaa !1
  %510 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs580, align 8, !tbaa !1
  %511 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %512 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call600 = call i32 %509(%struct.gs_client_color_s* %cc, %struct.gs_color_space_s* %510, %struct.gx_device_color_s* %dcolor584, %struct.gs_imager_state_s* %511, %struct.gx_device_s* %512, i32 1) #6
  %513 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %call601 = call i64 @cmd_drawing_color_usage(%struct.gx_device_clist_writer_s* %513, %struct.gx_device_color_s* %dcolor584) #6
  %514 = load i64, i64* %color_usage, align 8, !tbaa !7
  %or602 = or i64 %514, %call601
  store i64 %or602, i64* %color_usage, align 8, !tbaa !7
  br label %for.inc.603

for.inc.603:                                      ; preds = %for.body.596
  %515 = load i32, i32* %i585, align 4, !tbaa !5
  %inc604 = add nsw i32 %515, 1
  store i32 %inc604, i32* %i585, align 4, !tbaa !5
  br label %for.cond.593

for.end.605:                                      ; preds = %for.cond.593
  %516 = bitcast i32* %max_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %516) #1
  %517 = bitcast i32* %i585 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %517) #1
  %518 = bitcast %struct.gx_device_color_s* %dcolor584 to i8*
  call void @llvm.lifetime.end(i64 656, i8* %518) #1
  %519 = bitcast %struct.gs_client_color_s* %cc to i8*
  call void @llvm.lifetime.end(i64 264, i8* %519) #1
  %520 = bitcast i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %remap_color to i8*
  call void @llvm.lifetime.end(i64 8, i8* %520) #1
  %521 = bitcast %struct.gs_color_space_s** %pcs580 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %521) #1
  br label %if.end.606

if.end.606:                                       ; preds = %for.end.605, %if.then.578
  %522 = bitcast i64* %all to i8*
  call void @llvm.lifetime.end(i64 8, i8* %522) #1
  br label %if.end.607

if.end.607:                                       ; preds = %if.end.606, %if.end.569
  %523 = load i64, i64* %color_usage, align 8, !tbaa !7
  %524 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %color_usage608 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %524, i32 0, i32 22
  %or609 = getelementptr inbounds %struct.gx_colors_usage_s, %struct.gx_colors_usage_s* %color_usage608, i32 0, i32 0
  store i64 %523, i64* %or609, align 8, !tbaa !228
  %525 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %526 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %log_op610 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %526, i32 0, i32 10
  %527 = load i32, i32* %log_op610, align 4, !tbaa !133
  %528 = load i32, i32* %uses_color, align 4, !tbaa !5
  %tobool611 = icmp ne i32 %528, 0
  br i1 %tobool611, label %cond.true.612, label %cond.false.613

cond.true.612:                                    ; preds = %if.end.607
  %529 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  br label %cond.end.614

cond.false.613:                                   ; preds = %if.end.607
  br label %cond.end.614

cond.end.614:                                     ; preds = %cond.false.613, %cond.true.612
  %cond615 = phi %struct.gx_device_color_s* [ %529, %cond.true.612 ], [ null, %cond.false.613 ]
  %call616 = call i32 @cmd_slow_rop(%struct.gx_device_s* %525, i32 %527, %struct.gx_device_color_s* %cond615) #6
  %530 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %color_usage617 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %530, i32 0, i32 22
  %slow_rop = getelementptr inbounds %struct.gx_colors_usage_s, %struct.gx_colors_usage_s* %color_usage617, i32 0, i32 1
  store i32 %call616, i32* %slow_rop, align 4, !tbaa !229
  %531 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %color_map_is_known = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %531, i32 0, i32 26
  store i32 0, i32* %color_map_is_known, align 4, !tbaa !230
  %532 = bitcast i32* %y0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %532) #1
  %p618 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %dbox, i32 0, i32 0
  %y619 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p618, i32 0, i32 1
  %533 = load double, double* %y619, align 8, !tbaa !206
  %sub620 = fsub double %533, 5.100000e-01
  %call621 = call double @floor(double %sub620) #7
  %conv622 = fptosi double %call621 to i32
  store i32 %conv622, i32* %y0, align 4, !tbaa !5
  %534 = bitcast i32* %y1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %534) #1
  %q623 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %dbox, i32 0, i32 1
  %y624 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q623, i32 0, i32 1
  %535 = load double, double* %y624, align 8, !tbaa !208
  %add625 = fadd double %535, 5.100000e-01
  %call626 = call double @ceil(double %add625) #7
  %conv627 = fptosi double %call626 to i32
  store i32 %conv627, i32* %y1, align 4, !tbaa !5
  %536 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %tobool628 = icmp ne %struct.gx_clip_path_s* %536, null
  br i1 %tobool628, label %if.then.629, label %if.else.692

if.then.629:                                      ; preds = %cond.end.614
  %537 = bitcast %struct.gs_fixed_rect_s* %obox to i8*
  call void @llvm.lifetime.start(i64 16, i8* %537) #1
  %538 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call630 = call i32 @gx_cpath_outer_box(%struct.gx_clip_path_s* %538, %struct.gs_fixed_rect_s* %obox) #6
  %539 = load i32, i32* %y0, align 4, !tbaa !5
  %p631 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %obox, i32 0, i32 0
  %y632 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p631, i32 0, i32 1
  %540 = load i32, i32* %y632, align 4, !tbaa !109
  %shr633 = ashr i32 %540, 8
  %cmp634 = icmp sgt i32 %539, %shr633
  br i1 %cmp634, label %cond.true.636, label %cond.false.637

cond.true.636:                                    ; preds = %if.then.629
  %541 = load i32, i32* %y0, align 4, !tbaa !5
  br label %cond.end.641

cond.false.637:                                   ; preds = %if.then.629
  %p638 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %obox, i32 0, i32 0
  %y639 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p638, i32 0, i32 1
  %542 = load i32, i32* %y639, align 4, !tbaa !109
  %shr640 = ashr i32 %542, 8
  br label %cond.end.641

cond.end.641:                                     ; preds = %cond.false.637, %cond.true.636
  %cond642 = phi i32 [ %541, %cond.true.636 ], [ %shr640, %cond.false.637 ]
  %cmp643 = icmp sgt i32 0, %cond642
  br i1 %cmp643, label %cond.true.645, label %cond.false.646

cond.true.645:                                    ; preds = %cond.end.641
  br label %cond.end.659

cond.false.646:                                   ; preds = %cond.end.641
  %543 = load i32, i32* %y0, align 4, !tbaa !5
  %p647 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %obox, i32 0, i32 0
  %y648 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p647, i32 0, i32 1
  %544 = load i32, i32* %y648, align 4, !tbaa !109
  %shr649 = ashr i32 %544, 8
  %cmp650 = icmp sgt i32 %543, %shr649
  br i1 %cmp650, label %cond.true.652, label %cond.false.653

cond.true.652:                                    ; preds = %cond.false.646
  %545 = load i32, i32* %y0, align 4, !tbaa !5
  br label %cond.end.657

cond.false.653:                                   ; preds = %cond.false.646
  %p654 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %obox, i32 0, i32 0
  %y655 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p654, i32 0, i32 1
  %546 = load i32, i32* %y655, align 4, !tbaa !109
  %shr656 = ashr i32 %546, 8
  br label %cond.end.657

cond.end.657:                                     ; preds = %cond.false.653, %cond.true.652
  %cond658 = phi i32 [ %545, %cond.true.652 ], [ %shr656, %cond.false.653 ]
  br label %cond.end.659

cond.end.659:                                     ; preds = %cond.end.657, %cond.true.645
  %cond660 = phi i32 [ 0, %cond.true.645 ], [ %cond658, %cond.end.657 ]
  %547 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %ymin = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %547, i32 0, i32 20
  store i32 %cond660, i32* %ymin, align 4, !tbaa !231
  %548 = load i32, i32* %y1, align 4, !tbaa !5
  %q661 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %obox, i32 0, i32 1
  %y662 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q661, i32 0, i32 1
  %549 = load i32, i32* %y662, align 4, !tbaa !111
  %shr663 = ashr i32 %549, 8
  %cmp664 = icmp slt i32 %548, %shr663
  br i1 %cmp664, label %cond.true.666, label %cond.false.667

cond.true.666:                                    ; preds = %cond.end.659
  %550 = load i32, i32* %y1, align 4, !tbaa !5
  br label %cond.end.671

cond.false.667:                                   ; preds = %cond.end.659
  %q668 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %obox, i32 0, i32 1
  %y669 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q668, i32 0, i32 1
  %551 = load i32, i32* %y669, align 4, !tbaa !111
  %shr670 = ashr i32 %551, 8
  br label %cond.end.671

cond.end.671:                                     ; preds = %cond.false.667, %cond.true.666
  %cond672 = phi i32 [ %550, %cond.true.666 ], [ %shr670, %cond.false.667 ]
  %552 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %552, i32 0, i32 14
  %553 = load i32, i32* %height, align 4, !tbaa !232
  %cmp673 = icmp slt i32 %cond672, %553
  br i1 %cmp673, label %cond.true.675, label %cond.false.688

cond.true.675:                                    ; preds = %cond.end.671
  %554 = load i32, i32* %y1, align 4, !tbaa !5
  %q676 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %obox, i32 0, i32 1
  %y677 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q676, i32 0, i32 1
  %555 = load i32, i32* %y677, align 4, !tbaa !111
  %shr678 = ashr i32 %555, 8
  %cmp679 = icmp slt i32 %554, %shr678
  br i1 %cmp679, label %cond.true.681, label %cond.false.682

cond.true.681:                                    ; preds = %cond.true.675
  %556 = load i32, i32* %y1, align 4, !tbaa !5
  br label %cond.end.686

cond.false.682:                                   ; preds = %cond.true.675
  %q683 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %obox, i32 0, i32 1
  %y684 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q683, i32 0, i32 1
  %557 = load i32, i32* %y684, align 4, !tbaa !111
  %shr685 = ashr i32 %557, 8
  br label %cond.end.686

cond.end.686:                                     ; preds = %cond.false.682, %cond.true.681
  %cond687 = phi i32 [ %556, %cond.true.681 ], [ %shr685, %cond.false.682 ]
  br label %cond.end.690

cond.false.688:                                   ; preds = %cond.end.671
  %558 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height689 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %558, i32 0, i32 14
  %559 = load i32, i32* %height689, align 4, !tbaa !232
  br label %cond.end.690

cond.end.690:                                     ; preds = %cond.false.688, %cond.end.686
  %cond691 = phi i32 [ %cond687, %cond.end.686 ], [ %559, %cond.false.688 ]
  %560 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %ymax = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %560, i32 0, i32 21
  store i32 %cond691, i32* %ymax, align 4, !tbaa !233
  %561 = bitcast %struct.gs_fixed_rect_s* %obox to i8*
  call void @llvm.lifetime.end(i64 16, i8* %561) #1
  br label %if.end.709

if.else.692:                                      ; preds = %cond.end.614
  %562 = load i32, i32* %y0, align 4, !tbaa !5
  %cmp693 = icmp sgt i32 %562, 0
  br i1 %cmp693, label %cond.true.695, label %cond.false.696

cond.true.695:                                    ; preds = %if.else.692
  %563 = load i32, i32* %y0, align 4, !tbaa !5
  br label %cond.end.697

cond.false.696:                                   ; preds = %if.else.692
  br label %cond.end.697

cond.end.697:                                     ; preds = %cond.false.696, %cond.true.695
  %cond698 = phi i32 [ %563, %cond.true.695 ], [ 0, %cond.false.696 ]
  %564 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %ymin699 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %564, i32 0, i32 20
  store i32 %cond698, i32* %ymin699, align 4, !tbaa !231
  %565 = load i32, i32* %y1, align 4, !tbaa !5
  %566 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height700 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %566, i32 0, i32 14
  %567 = load i32, i32* %height700, align 4, !tbaa !232
  %cmp701 = icmp slt i32 %565, %567
  br i1 %cmp701, label %cond.true.703, label %cond.false.704

cond.true.703:                                    ; preds = %cond.end.697
  %568 = load i32, i32* %y1, align 4, !tbaa !5
  br label %cond.end.706

cond.false.704:                                   ; preds = %cond.end.697
  %569 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height705 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %569, i32 0, i32 14
  %570 = load i32, i32* %height705, align 4, !tbaa !232
  br label %cond.end.706

cond.end.706:                                     ; preds = %cond.false.704, %cond.true.703
  %cond707 = phi i32 [ %568, %cond.true.703 ], [ %570, %cond.false.704 ]
  %571 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %ymax708 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %571, i32 0, i32 21
  store i32 %cond707, i32* %ymax708, align 4, !tbaa !233
  br label %if.end.709

if.end.709:                                       ; preds = %cond.end.706, %cond.end.690
  %572 = bitcast i32* %y1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %572) #1
  %573 = bitcast i32* %y0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %573) #1
  %574 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %575 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %576 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %call710 = call i32 @clist_image_unknowns(%struct.gx_device_s* %575, %struct.clist_image_enum_s* %576) #6
  %or711 = or i32 %call710, 16384
  call void @cmd_clear_known(%struct.gx_device_clist_writer_s* %574, i32 %or711) #6
  %577 = load i32, i32* %intent_changed, align 4, !tbaa !5
  %tobool712 = icmp ne i32 %577, 0
  br i1 %tobool712, label %if.then.713, label %if.end.715

if.then.713:                                      ; preds = %if.end.709
  %578 = load i32, i32* %renderingintent, align 4, !tbaa !9
  %579 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis_nonconst, align 8, !tbaa !1
  %renderingintent714 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %579, i32 0, i32 33
  store i32 %578, i32* %renderingintent714, align 4, !tbaa !112
  br label %if.end.715

if.end.715:                                       ; preds = %if.then.713, %if.end.709
  %580 = load i32, i32* %bp_changed, align 4, !tbaa !5
  %tobool716 = icmp ne i32 %580, 0
  br i1 %tobool716, label %if.then.717, label %if.end.719

if.then.717:                                      ; preds = %if.end.715
  %581 = load i32, i32* %blackptcomp, align 4, !tbaa !9
  %582 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis_nonconst, align 8, !tbaa !1
  %blackptcomp718 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %582, i32 0, i32 34
  store i32 %581, i32* %blackptcomp718, align 4, !tbaa !113
  br label %if.end.719

if.end.719:                                       ; preds = %if.then.717, %if.end.715
  %583 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %id720 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %583, i32 0, i32 4
  %584 = load i64, i64* %id720, align 8, !tbaa !234
  %585 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %image_enum_id721 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %585, i32 0, i32 93
  store i64 %584, i64* %image_enum_id721, align 8, !tbaa !135
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.735

use_default:                                      ; preds = %cleanup.557, %cleanup, %if.then.568, %if.then.425, %if.then.356, %if.then.109, %if.then.88, %if.then.57, %if.then.54, %if.then.51, %if.then.45, %if.then.41, %if.then.37, %sw.default
  %586 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %cmp722 = icmp ne %struct.clist_image_enum_s* %586, null
  br i1 %cmp722, label %if.then.724, label %if.end.728

if.then.724:                                      ; preds = %use_default
  %587 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs725 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %587, i32 0, i32 1
  %free_object726 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs725, i32 0, i32 2
  %588 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object726, align 8, !tbaa !215
  %589 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %590 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %buffer727 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %590, i32 0, i32 31
  %591 = load i8*, i8** %buffer727, align 8, !tbaa !130
  call void %588(%struct.gs_memory_s* %589, i8* %591, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0)) #6
  br label %if.end.728

if.end.728:                                       ; preds = %if.then.724, %use_default
  %592 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs729 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %592, i32 0, i32 1
  %free_object730 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs729, i32 0, i32 2
  %593 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object730, align 8, !tbaa !215
  %594 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %595 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %596 = bitcast %struct.clist_image_enum_s* %595 to i8*
  call void %593(%struct.gs_memory_s* %594, i8* %596, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0)) #6
  %597 = load %struct.gx_image_enum_common_s**, %struct.gx_image_enum_common_s*** %pinfo.addr, align 8, !tbaa !1
  store %struct.gx_image_enum_common_s* null, %struct.gx_image_enum_common_s** %597, align 8, !tbaa !1
  %598 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %has_transparency = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %598, i32 0, i32 19
  %599 = load i32, i32* %has_transparency, align 4, !tbaa !235
  %tobool731 = icmp ne i32 %599, 0
  br i1 %tobool731, label %if.then.732, label %if.else.733

if.then.732:                                      ; preds = %if.end.728
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.735

if.else.733:                                      ; preds = %if.end.728
  %600 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %601 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %602 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %603 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %604 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %605 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %606 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %607 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %608 = load %struct.gx_image_enum_common_s**, %struct.gx_image_enum_common_s*** %pinfo.addr, align 8, !tbaa !1
  %call734 = call i32 @gx_default_begin_typed_image(%struct.gx_device_s* %600, %struct.gs_imager_state_s* %601, %struct.gs_matrix_s* %602, %struct.gs_image_common_s* %603, %struct.gs_int_rect_s* %604, %struct.gx_device_color_s* %605, %struct.gx_clip_path_s* %606, %struct.gs_memory_s* %607, %struct.gx_image_enum_common_s** %608) #6
  store i32 %call734, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.735

cleanup.735:                                      ; preds = %if.else.733, %if.then.732, %if.end.719, %cleanup.557, %cleanup.476, %cleanup, %if.then.10
  %609 = bitcast i32* %csi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %609) #1
  %610 = bitcast i32* %render_is_valid to i8*
  call void @llvm.lifetime.end(i64 4, i8* %610) #1
  %611 = bitcast i32* %is_planar_dev to i8*
  call void @llvm.lifetime.end(i64 4, i8* %611) #1
  %612 = bitcast %struct.cmm_profile_s** %gs_output_profile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %612) #1
  %613 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %613) #1
  %614 = bitcast i32* %bp_changed to i8*
  call void @llvm.lifetime.end(i64 4, i8* %614) #1
  %615 = bitcast i32* %intent_changed to i8*
  call void @llvm.lifetime.end(i64 4, i8* %615) #1
  %616 = bitcast %struct.gs_imager_state_s** %pis_nonconst to i8*
  call void @llvm.lifetime.end(i64 8, i8* %616) #1
  %617 = bitcast %struct.gsicc_rendering_param_s* %dev_render_cond to i8*
  call void @llvm.lifetime.end(i64 24, i8* %617) #1
  %618 = bitcast %struct.gsicc_rendering_param_s* %stored_rendering_cond to i8*
  call void @llvm.lifetime.end(i64 24, i8* %618) #1
  %619 = bitcast i32* %blackptcomp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %619) #1
  %620 = bitcast i32* %renderingintent to i8*
  call void @llvm.lifetime.end(i64 4, i8* %620) #1
  %621 = bitcast %struct.cmm_srcgtag_profile_s** %srcgtag_profile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %621) #1
  %622 = bitcast %struct.cmm_profile_s** %src_profile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %622) #1
  %623 = bitcast %struct.clist_icc_color_s* %icc_zero_init to i8*
  call void @llvm.lifetime.end(i64 24, i8* %623) #1
  %624 = bitcast i32* %mask_use_hl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %624) #1
  %625 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %625) #1
  %626 = bitcast i64* %color_usage to i8*
  call void @llvm.lifetime.end(i64 8, i8* %626) #1
  %627 = bitcast i32* %format to i8*
  call void @llvm.lifetime.end(i64 4, i8* %627) #1
  %628 = bitcast %struct.gs_rect_s* %dbox to i8*
  call void @llvm.lifetime.end(i64 32, i8* %628) #1
  %629 = bitcast %struct.gs_rect_s* %sbox to i8*
  call void @llvm.lifetime.end(i64 32, i8* %629) #1
  %630 = bitcast %struct.gs_matrix_s* %mat to i8*
  call void @llvm.lifetime.end(i64 24, i8* %630) #1
  %631 = bitcast i32* %varying_depths to i8*
  call void @llvm.lifetime.end(i64 4, i8* %631) #1
  %632 = bitcast i32* %uses_color to i8*
  call void @llvm.lifetime.end(i64 4, i8* %632) #1
  %633 = bitcast i32* %bits_per_pixel to i8*
  call void @llvm.lifetime.end(i64 4, i8* %633) #1
  %634 = bitcast i32* %num_components to i8*
  call void @llvm.lifetime.end(i64 4, i8* %634) #1
  %635 = bitcast i32* %has_alpha to i8*
  call void @llvm.lifetime.end(i64 4, i8* %635) #1
  %636 = bitcast i32* %masked to i8*
  call void @llvm.lifetime.end(i64 4, i8* %636) #1
  %637 = bitcast i32* %indexed to i8*
  call void @llvm.lifetime.end(i64 4, i8* %637) #1
  %638 = bitcast i32* %base_index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %638) #1
  %639 = bitcast %struct.clist_image_enum_s** %pie to i8*
  call void @llvm.lifetime.end(i64 8, i8* %639) #1
  %640 = bitcast %struct.gx_device_clist_writer_s** %cdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %640) #1
  %641 = bitcast %struct.gs_pixel_image_s** %pim to i8*
  call void @llvm.lifetime.end(i64 8, i8* %641) #1
  %642 = load i32, i32* %retval
  ret i32 %642
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

declare i32 @gs_color_space_get_index(%struct.gs_color_space_s*) #2

declare %struct.gs_color_space_s* @gs_cspace_base_space(%struct.gs_color_space_s*) #2

declare i32 @gs_color_space_num_components(%struct.gs_color_space_s*) #2

declare i32 @gx_image_enum_common_init(%struct.gx_image_enum_common_s*, %struct.gs_data_image_s*, %struct.gx_image_enum_procs_s*, %struct.gx_device_s*, i32, i32) #2

declare i32 @gs_matrix_invert(%struct.gs_matrix_s*, %struct.gs_matrix_s*) #2

declare i32 @gs_matrix_multiply(%struct.gs_matrix_s*, %struct.gs_matrix_s*, %struct.gs_matrix_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @image_matrix_ok_to_band(%struct.gs_matrix_s* %pmat) #0 {
entry:
  %retval = alloca i32, align 4
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %t = alloca double, align 8
  %one = alloca float, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %0 = bitcast double* %t to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast float* %one to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store float 0x3FEFFFEB00000000, float* %one, align 4, !tbaa !144
  %2 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %2, i32 0, i32 0
  %3 = load float, float* %xx, align 4, !tbaa !138
  %4 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %4, i32 0, i32 3
  %5 = load float, float* %yy, align 4, !tbaa !139
  %mul = fmul float %3, %5
  %6 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %6, i32 0, i32 1
  %7 = load float, float* %xy, align 4, !tbaa !136
  %8 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %8, i32 0, i32 2
  %9 = load float, float* %yx, align 4, !tbaa !137
  %mul1 = fmul float %7, %9
  %sub = fsub float %mul, %mul1
  %conv = fpext float %sub to double
  %call = call double @fabs(double %conv) #7
  %cmp = fcmp olt double %call, 1.000000e-03
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xy3 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %10, i32 0, i32 1
  %11 = load float, float* %xy3, align 4, !tbaa !136
  %conv4 = fpext float %11 to double
  %cmp5 = fcmp oeq double %conv4, 0.000000e+00
  br i1 %cmp5, label %land.lhs.true, label %if.end.24

land.lhs.true:                                    ; preds = %if.end
  %12 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %yx7 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %12, i32 0, i32 2
  %13 = load float, float* %yx7, align 4, !tbaa !137
  %conv8 = fpext float %13 to double
  %cmp9 = fcmp oeq double %conv8, 0.000000e+00
  br i1 %cmp9, label %if.then.11, label %if.end.24

if.then.11:                                       ; preds = %land.lhs.true
  %14 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xx12 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %14, i32 0, i32 0
  %15 = load float, float* %xx12, align 4, !tbaa !138
  %conv13 = fpext float %15 to double
  %call14 = call double @fabs(double %conv13) #7
  %16 = load float, float* %one, align 4, !tbaa !144
  %conv15 = fpext float %16 to double
  %cmp16 = fcmp oge double %call14, %conv15
  br i1 %cmp16, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then.11
  %17 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %yy18 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %17, i32 0, i32 3
  %18 = load float, float* %yy18, align 4, !tbaa !139
  %conv19 = fpext float %18 to double
  %call20 = call double @fabs(double %conv19) #7
  %19 = load float, float* %one, align 4, !tbaa !144
  %conv21 = fpext float %19 to double
  %cmp22 = fcmp oge double %call20, %conv21
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then.11
  %20 = phi i1 [ false, %if.then.11 ], [ %cmp22, %land.rhs ]
  %land.ext = zext i1 %20 to i32
  store i32 %land.ext, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.24:                                        ; preds = %land.lhs.true, %if.end
  %21 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xx25 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %21, i32 0, i32 0
  %22 = load float, float* %xx25, align 4, !tbaa !138
  %conv26 = fpext float %22 to double
  %cmp27 = fcmp oeq double %conv26, 0.000000e+00
  br i1 %cmp27, label %land.lhs.true.29, label %if.end.50

land.lhs.true.29:                                 ; preds = %if.end.24
  %23 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %yy30 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %23, i32 0, i32 3
  %24 = load float, float* %yy30, align 4, !tbaa !139
  %conv31 = fpext float %24 to double
  %cmp32 = fcmp oeq double %conv31, 0.000000e+00
  br i1 %cmp32, label %if.then.34, label %if.end.50

if.then.34:                                       ; preds = %land.lhs.true.29
  %25 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xy35 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %25, i32 0, i32 1
  %26 = load float, float* %xy35, align 4, !tbaa !136
  %conv36 = fpext float %26 to double
  %call37 = call double @fabs(double %conv36) #7
  %27 = load float, float* %one, align 4, !tbaa !144
  %conv38 = fpext float %27 to double
  %cmp39 = fcmp oge double %call37, %conv38
  br i1 %cmp39, label %land.rhs.41, label %land.end.48

land.rhs.41:                                      ; preds = %if.then.34
  %28 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %yx42 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %28, i32 0, i32 2
  %29 = load float, float* %yx42, align 4, !tbaa !137
  %conv43 = fpext float %29 to double
  %call44 = call double @fabs(double %conv43) #7
  %30 = load float, float* %one, align 4, !tbaa !144
  %conv45 = fpext float %30 to double
  %cmp46 = fcmp oge double %call44, %conv45
  br label %land.end.48

land.end.48:                                      ; preds = %land.rhs.41, %if.then.34
  %31 = phi i1 [ false, %if.then.34 ], [ %cmp46, %land.rhs.41 ]
  %land.ext49 = zext i1 %31 to i32
  store i32 %land.ext49, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.50:                                        ; preds = %land.lhs.true.29, %if.end.24
  %32 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xx51 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %32, i32 0, i32 0
  %33 = load float, float* %xx51, align 4, !tbaa !138
  %34 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xx52 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %34, i32 0, i32 0
  %35 = load float, float* %xx52, align 4, !tbaa !138
  %mul53 = fmul float %33, %35
  %36 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xy54 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %36, i32 0, i32 1
  %37 = load float, float* %xy54, align 4, !tbaa !136
  %38 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xy55 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %38, i32 0, i32 1
  %39 = load float, float* %xy55, align 4, !tbaa !136
  %mul56 = fmul float %37, %39
  %add = fadd float %mul53, %mul56
  %40 = load float, float* %one, align 4, !tbaa !144
  %cmp57 = fcmp olt float %add, %40
  br i1 %cmp57, label %if.then.68, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.50
  %41 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %yx59 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %41, i32 0, i32 2
  %42 = load float, float* %yx59, align 4, !tbaa !137
  %43 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %yx60 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %43, i32 0, i32 2
  %44 = load float, float* %yx60, align 4, !tbaa !137
  %mul61 = fmul float %42, %44
  %45 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %yy62 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %45, i32 0, i32 3
  %46 = load float, float* %yy62, align 4, !tbaa !139
  %47 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %yy63 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %47, i32 0, i32 3
  %48 = load float, float* %yy63, align 4, !tbaa !139
  %mul64 = fmul float %46, %48
  %add65 = fadd float %mul61, %mul64
  %49 = load float, float* %one, align 4, !tbaa !144
  %cmp66 = fcmp olt float %add65, %49
  br i1 %cmp66, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %lor.lhs.false, %if.end.50
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.69:                                        ; preds = %lor.lhs.false
  %50 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xx70 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %50, i32 0, i32 0
  %51 = load float, float* %xx70, align 4, !tbaa !138
  %conv71 = fpext float %51 to double
  %call72 = call double @fabs(double %conv71) #7
  %52 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %yy73 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %52, i32 0, i32 3
  %53 = load float, float* %yy73, align 4, !tbaa !139
  %conv74 = fpext float %53 to double
  %call75 = call double @fabs(double %conv74) #7
  %add76 = fadd double %call72, %call75
  %54 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xy77 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %54, i32 0, i32 1
  %55 = load float, float* %xy77, align 4, !tbaa !136
  %conv78 = fpext float %55 to double
  %call79 = call double @fabs(double %conv78) #7
  %56 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %yx80 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %56, i32 0, i32 2
  %57 = load float, float* %yx80, align 4, !tbaa !137
  %conv81 = fpext float %57 to double
  %call82 = call double @fabs(double %conv81) #7
  %add83 = fadd double %call79, %call82
  %div = fdiv double %add76, %add83
  store double %div, double* %t, align 8, !tbaa !236
  %58 = load double, double* %t, align 8, !tbaa !236
  %cmp84 = fcmp olt double %58, 2.000000e-01
  br i1 %cmp84, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end.69
  %59 = load double, double* %t, align 8, !tbaa !236
  %cmp86 = fcmp ogt double %59, 5.000000e+00
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end.69
  %60 = phi i1 [ true, %if.end.69 ], [ %cmp86, %lor.rhs ]
  %lor.ext = zext i1 %60 to i32
  store i32 %lor.ext, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %lor.end, %if.then.68, %land.end.48, %land.end, %if.then
  %61 = bitcast float* %one to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #1
  %62 = bitcast double* %t to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #1
  %63 = load i32, i32* %retval
  ret i32 %63
}

declare i32 @gx_dc_is_pattern1_color(%struct.gx_device_color_s*) #2

declare i32 @gx_dc_is_pattern1_color_clist_based(%struct.gx_device_color_s*) #2

declare void @gsicc_extract_profile(i32, %struct.cmm_dev_profile_s*, %struct.cmm_profile_s**, %struct.gsicc_rendering_param_s*) #2

declare i32 @gsicc_get_default_type(%struct.cmm_profile_s*) #2

declare void @gsicc_get_icc_buff_hash(i8*, i64*, i32) #2

declare i32 @clist_icc_addentry(%struct.gx_device_clist_writer_s*, i64, %struct.cmm_profile_s*) #2

declare i32 @gx_device_is_pattern_clist(%struct.gx_device_s*) #2

declare i32 @gs_bbox_transform(%struct.gs_rect_s*, %struct.gs_matrix_s*, %struct.gs_rect_s*) #2

; Function Attrs: nounwind readnone
declare double @floor(double) #3

; Function Attrs: nounwind readnone
declare double @ceil(double) #3

; Function Attrs: nounwind uwtable
define internal void @get_unpack_proc(%struct.clist_image_enum_s* %pie, float* %decode) #0 {
entry:
  %pie.addr = alloca %struct.clist_image_enum_s*, align 8
  %decode.addr = alloca float*, align 8
  %num_planes = alloca i32, align 4
  %interleaved = alloca i32, align 4
  %i = alloca i32, align 4
  %index_bps = alloca i32, align 4
  %format = alloca i32, align 4
  %log2_xbytes = alloca i32, align 4
  %num_components = alloca i32, align 4
  store %struct.clist_image_enum_s* %pie, %struct.clist_image_enum_s** %pie.addr, align 8, !tbaa !1
  store float* %decode, float** %decode.addr, align 8, !tbaa !1
  %0 = bitcast i32* %num_planes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie.addr, align 8, !tbaa !1
  %num_planes1 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %1, i32 0, i32 6
  %2 = load i32, i32* %num_planes1, align 4, !tbaa !134
  store i32 %2, i32* %num_planes, align 4, !tbaa !5
  %3 = bitcast i32* %interleaved to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i32, i32* %num_planes, align 4, !tbaa !5
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %5 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie.addr, align 8, !tbaa !1
  %plane_depths = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %5, i32 0, i32 7
  %arrayidx = getelementptr inbounds [65 x i32], [65 x i32]* %plane_depths, i32 0, i64 0
  %6 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %7 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie.addr, align 8, !tbaa !1
  %bps = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %7, i32 0, i32 28
  %8 = load i32, i32* %bps, align 4, !tbaa !141
  %cmp2 = icmp ne i32 %6, %8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %9 = phi i1 [ false, %entry ], [ %cmp2, %land.rhs ]
  %land.ext = zext i1 %9 to i32
  store i32 %land.ext, i32* %interleaved, align 4, !tbaa !5
  %10 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %index_bps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie.addr, align 8, !tbaa !1
  %bps3 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %12, i32 0, i32 28
  %13 = load i32, i32* %bps3, align 4, !tbaa !141
  %cmp4 = icmp slt i32 %13, 8
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.end
  %14 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie.addr, align 8, !tbaa !1
  %bps5 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %14, i32 0, i32 28
  %15 = load i32, i32* %bps5, align 4, !tbaa !141
  %shr = ashr i32 %15, 1
  br label %cond.end

cond.false:                                       ; preds = %land.end
  %16 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie.addr, align 8, !tbaa !1
  %bps6 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %16, i32 0, i32 28
  %17 = load i32, i32* %bps6, align 4, !tbaa !141
  %shr7 = ashr i32 %17, 2
  %add = add nsw i32 %shr7, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %shr, %cond.true ], [ %add, %cond.false ]
  store i32 %cond, i32* %index_bps, align 4, !tbaa !5
  %18 = bitcast i32* %format to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie.addr, align 8, !tbaa !1
  %format8 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %19, i32 0, i32 14
  %20 = load i32, i32* %format8, align 4, !tbaa !155
  store i32 %20, i32* %format, align 4, !tbaa !9
  %21 = bitcast i32* %log2_xbytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie.addr, align 8, !tbaa !1
  %bps9 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %22, i32 0, i32 28
  %23 = load i32, i32* %bps9, align 4, !tbaa !141
  %cmp10 = icmp sle i32 %23, 8
  %cond11 = select i1 %cmp10, i32 0, i32 1
  store i32 %cond11, i32* %log2_xbytes, align 4, !tbaa !5
  %24 = load i32, i32* %format, align 4, !tbaa !9
  switch i32 %24, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.12
    i32 2, label %sw.bb.15
  ]

sw.bb:                                            ; preds = %cond.end
  %25 = load i32, i32* %log2_xbytes, align 4, !tbaa !5
  %shl = shl i32 1, %25
  %26 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie.addr, align 8, !tbaa !1
  %spread = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %26, i32 0, i32 32
  store i32 %shl, i32* %spread, align 4, !tbaa !237
  br label %sw.epilog

sw.bb.12:                                         ; preds = %cond.end
  %27 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie.addr, align 8, !tbaa !1
  %spp = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %27, i32 0, i32 29
  %28 = load i32, i32* %spp, align 4, !tbaa !142
  %29 = load i32, i32* %log2_xbytes, align 4, !tbaa !5
  %shl13 = shl i32 %28, %29
  %30 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie.addr, align 8, !tbaa !1
  %spread14 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %30, i32 0, i32 32
  store i32 %shl13, i32* %spread14, align 4, !tbaa !237
  br label %sw.epilog

sw.bb.15:                                         ; preds = %cond.end
  %31 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie.addr, align 8, !tbaa !1
  %spp16 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %31, i32 0, i32 29
  %32 = load i32, i32* %spp16, align 4, !tbaa !142
  %33 = load i32, i32* %log2_xbytes, align 4, !tbaa !5
  %shl17 = shl i32 %32, %33
  %34 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie.addr, align 8, !tbaa !1
  %spread18 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %34, i32 0, i32 32
  store i32 %shl17, i32* %spread18, align 4, !tbaa !237
  br label %sw.epilog

sw.default:                                       ; preds = %cond.end
  %35 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie.addr, align 8, !tbaa !1
  %spread19 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %35, i32 0, i32 32
  store i32 0, i32* %spread19, align 4, !tbaa !237
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.15, %sw.bb.12, %sw.bb
  %36 = load i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)*, i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)** @sample_unpack_12_proc, align 8, !tbaa !1
  store i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)* %36, i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)** getelementptr inbounds ([2 x [6 x i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)*]], [2 x [6 x i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)*]]* @get_unpack_proc.procs, i32 0, i64 1, i64 4), align 8, !tbaa !1
  store i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)* %36, i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)** getelementptr inbounds ([2 x [6 x i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)*]], [2 x [6 x i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)*]]* @get_unpack_proc.procs, i32 0, i64 0, i64 4), align 8, !tbaa !1
  %37 = load i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)*, i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)** @sample_unpackicc_16_proc, align 8, !tbaa !1
  store i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)* %37, i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)** getelementptr inbounds ([2 x [6 x i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)*]], [2 x [6 x i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)*]]* @get_unpack_proc.procs, i32 0, i64 1, i64 5), align 8, !tbaa !1
  store i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)* %37, i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)** getelementptr inbounds ([2 x [6 x i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)*]], [2 x [6 x i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)*]]* @get_unpack_proc.procs, i32 0, i64 0, i64 5), align 8, !tbaa !1
  %38 = load i32, i32* %interleaved, align 4, !tbaa !5
  %tobool = icmp ne i32 %38, 0
  br i1 %tobool, label %if.then, label %if.end.38

if.then:                                          ; preds = %sw.epilog
  %39 = bitcast i32* %num_components to i8*
  call void @llvm.lifetime.start(i64 4, i8* %39) #1
  %40 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie.addr, align 8, !tbaa !1
  %plane_depths20 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %40, i32 0, i32 7
  %arrayidx21 = getelementptr inbounds [65 x i32], [65 x i32]* %plane_depths20, i32 0, i64 0
  %41 = load i32, i32* %arrayidx21, align 4, !tbaa !5
  %42 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie.addr, align 8, !tbaa !1
  %bps22 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %42, i32 0, i32 28
  %43 = load i32, i32* %bps22, align 4, !tbaa !141
  %div = sdiv i32 %41, %43
  store i32 %div, i32* %num_components, align 4, !tbaa !5
  store i32 1, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %44 = load i32, i32* %i, align 4, !tbaa !5
  %45 = load i32, i32* %num_components, align 4, !tbaa !5
  %cmp23 = icmp slt i32 %44, %45
  br i1 %cmp23, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %46 = load float*, float** %decode.addr, align 8, !tbaa !1
  %arrayidx24 = getelementptr inbounds float, float* %46, i64 0
  %47 = load float, float* %arrayidx24, align 4, !tbaa !144
  %48 = load i32, i32* %i, align 4, !tbaa !5
  %mul = mul nsw i32 %48, 2
  %add25 = add nsw i32 %mul, 0
  %idxprom = sext i32 %add25 to i64
  %49 = load float*, float** %decode.addr, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds float, float* %49, i64 %idxprom
  %50 = load float, float* %arrayidx26, align 4, !tbaa !144
  %cmp27 = fcmp une float %47, %50
  br i1 %cmp27, label %if.then.34, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %51 = load float*, float** %decode.addr, align 8, !tbaa !1
  %arrayidx28 = getelementptr inbounds float, float* %51, i64 1
  %52 = load float, float* %arrayidx28, align 4, !tbaa !144
  %53 = load i32, i32* %i, align 4, !tbaa !5
  %mul29 = mul nsw i32 %53, 2
  %add30 = add nsw i32 %mul29, 1
  %idxprom31 = sext i32 %add30 to i64
  %54 = load float*, float** %decode.addr, align 8, !tbaa !1
  %arrayidx32 = getelementptr inbounds float, float* %54, i64 %idxprom31
  %55 = load float, float* %arrayidx32, align 4, !tbaa !144
  %cmp33 = fcmp une float %52, %55
  br i1 %cmp33, label %if.then.34, label %if.end

if.then.34:                                       ; preds = %lor.lhs.false, %for.body
  br label %for.end

if.end:                                           ; preds = %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %56 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %56, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %if.then.34, %for.cond
  %57 = load i32, i32* %i, align 4, !tbaa !5
  %58 = load i32, i32* %num_components, align 4, !tbaa !5
  %cmp35 = icmp eq i32 %57, %58
  br i1 %cmp35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %for.end
  store i32 0, i32* %interleaved, align 4, !tbaa !5
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %for.end
  %59 = bitcast i32* %num_components to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #1
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %sw.epilog
  %60 = load i32, i32* %index_bps, align 4, !tbaa !5
  %idxprom39 = sext i32 %60 to i64
  %61 = load i32, i32* %interleaved, align 4, !tbaa !5
  %idxprom40 = sext i32 %61 to i64
  %arrayidx41 = getelementptr inbounds [2 x [6 x i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)*]], [2 x [6 x i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)*]]* @get_unpack_proc.procs, i32 0, i64 %idxprom40
  %arrayidx42 = getelementptr inbounds [6 x i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)*], [6 x i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)*]* %arrayidx41, i32 0, i64 %idxprom39
  %62 = load i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)*, i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)** %arrayidx42, align 8, !tbaa !1
  %63 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie.addr, align 8, !tbaa !1
  %unpack = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %63, i32 0, i32 30
  store i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)* %62, i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)** %unpack, align 8, !tbaa !209
  %64 = bitcast i32* %log2_xbytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #1
  %65 = bitcast i32* %format to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #1
  %66 = bitcast i32* %index_bps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #1
  %67 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #1
  %68 = bitcast i32* %interleaved to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #1
  %69 = bitcast i32* %num_planes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @get_map(%struct.clist_image_enum_s* %pie, i32 %format, float* %decode) #0 {
entry:
  %pie.addr = alloca %struct.clist_image_enum_s*, align 8
  %format.addr = alloca i32, align 4
  %decode.addr = alloca float*, align 8
  %ci = alloca i32, align 4
  %decode_type = alloca i32, align 4
  %bps = alloca i32, align 4
  %spp = alloca i32, align 4
  %pmap = alloca %struct.sample_map_s*, align 8
  %this_decode = alloca float*, align 8
  %map_decode = alloca float*, align 8
  %real_decode = alloca float*, align 8
  %map52 = alloca [4 x i8], align 1
  %i = alloca i32, align 4
  %p = alloca i32*, align 8
  %p106 = alloca i16*, align 8
  %step = alloca i32, align 4
  %i149 = alloca i32, align 4
  store %struct.clist_image_enum_s* %pie, %struct.clist_image_enum_s** %pie.addr, align 8, !tbaa !1
  store i32 %format, i32* %format.addr, align 4, !tbaa !9
  store float* %decode, float** %decode.addr, align 8, !tbaa !1
  %0 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %decode_type to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %bps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie.addr, align 8, !tbaa !1
  %bps1 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %3, i32 0, i32 28
  %4 = load i32, i32* %bps1, align 4, !tbaa !141
  store i32 %4, i32* %bps, align 4, !tbaa !5
  %5 = bitcast i32* %spp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie.addr, align 8, !tbaa !1
  %spp2 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %6, i32 0, i32 29
  %7 = load i32, i32* %spp2, align 4, !tbaa !142
  store i32 %7, i32* %spp, align 4, !tbaa !5
  store i32 3, i32* %decode_type, align 4, !tbaa !5
  store i32 0, i32* %ci, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %ci, align 4, !tbaa !5
  %9 = load i32, i32* %spp, align 4, !tbaa !5
  %cmp = icmp slt i32 %8, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %ci, align 4, !tbaa !5
  %idxprom = sext i32 %10 to i64
  %11 = load float*, float** %decode.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds float, float* %11, i64 %idxprom
  %12 = load float, float* %arrayidx, align 4, !tbaa !144
  %conv = fpext float %12 to double
  %cmp3 = fcmp oeq double %conv, 0.000000e+00
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.body
  %13 = load i32, i32* %ci, align 4, !tbaa !5
  %add = add nsw i32 %13, 1
  %idxprom5 = sext i32 %add to i64
  %14 = load float*, float** %decode.addr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds float, float* %14, i64 %idxprom5
  %15 = load float, float* %arrayidx6, align 4, !tbaa !144
  %conv7 = fpext float %15 to double
  %cmp8 = fcmp oeq double %conv7, 1.000000e+00
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.body
  %16 = phi i1 [ false, %for.body ], [ %cmp8, %land.rhs ]
  %land.ext = zext i1 %16 to i32
  %17 = load i32, i32* %ci, align 4, !tbaa !5
  %idxprom10 = sext i32 %17 to i64
  %18 = load float*, float** %decode.addr, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds float, float* %18, i64 %idxprom10
  %19 = load float, float* %arrayidx11, align 4, !tbaa !144
  %conv12 = fpext float %19 to double
  %cmp13 = fcmp oeq double %conv12, 1.000000e+00
  br i1 %cmp13, label %land.rhs.15, label %land.end.22

land.rhs.15:                                      ; preds = %land.end
  %20 = load i32, i32* %ci, align 4, !tbaa !5
  %add16 = add nsw i32 %20, 1
  %idxprom17 = sext i32 %add16 to i64
  %21 = load float*, float** %decode.addr, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds float, float* %21, i64 %idxprom17
  %22 = load float, float* %arrayidx18, align 4, !tbaa !144
  %conv19 = fpext float %22 to double
  %cmp20 = fcmp oeq double %conv19, 0.000000e+00
  br label %land.end.22

land.end.22:                                      ; preds = %land.rhs.15, %land.end
  %23 = phi i1 [ false, %land.end ], [ %cmp20, %land.rhs.15 ]
  %land.ext23 = zext i1 %23 to i32
  %shl = shl i32 %land.ext23, 1
  %or = or i32 %land.ext, %shl
  %24 = load i32, i32* %decode_type, align 4, !tbaa !5
  %and = and i32 %24, %or
  store i32 %and, i32* %decode_type, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %land.end.22
  %25 = load i32, i32* %ci, align 4, !tbaa !5
  %add24 = add nsw i32 %25, 2
  store i32 %add24, i32* %ci, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %ci, align 4, !tbaa !5
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc.176, %for.end
  %26 = load i32, i32* %ci, align 4, !tbaa !5
  %27 = load i32, i32* %spp, align 4, !tbaa !5
  %cmp26 = icmp slt i32 %26, %27
  br i1 %cmp26, label %for.body.28, label %for.end.178

for.body.28:                                      ; preds = %for.cond.25
  %28 = bitcast %struct.sample_map_s** %pmap to i8*
  call void @llvm.lifetime.start(i64 8, i8* %28) #1
  %29 = load i32, i32* %ci, align 4, !tbaa !5
  %idxprom29 = sext i32 %29 to i64
  %30 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie.addr, align 8, !tbaa !1
  %map = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %30, i32 0, i32 33
  %arrayidx30 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map, i32 0, i64 %idxprom29
  store %struct.sample_map_s* %arrayidx30, %struct.sample_map_s** %pmap, align 8, !tbaa !1
  %31 = bitcast float** %this_decode to i8*
  call void @llvm.lifetime.start(i64 8, i8* %31) #1
  %32 = load i32, i32* %ci, align 4, !tbaa !5
  %mul = mul nsw i32 %32, 2
  %idxprom31 = sext i32 %mul to i64
  %33 = load float*, float** %decode.addr, align 8, !tbaa !1
  %arrayidx32 = getelementptr inbounds float, float* %33, i64 %idxprom31
  store float* %arrayidx32, float** %this_decode, align 8, !tbaa !1
  %34 = bitcast float** %map_decode to i8*
  call void @llvm.lifetime.start(i64 8, i8* %34) #1
  %35 = bitcast float** %real_decode to i8*
  call void @llvm.lifetime.start(i64 8, i8* %35) #1
  %36 = load float*, float** %this_decode, align 8, !tbaa !1
  store float* %36, float** %real_decode, align 8, !tbaa !1
  store float* %36, float** %map_decode, align 8, !tbaa !1
  %37 = load i32, i32* %decode_type, align 4, !tbaa !5
  %and33 = and i32 %37, 1
  %tobool = icmp ne i32 %and33, 0
  br i1 %tobool, label %if.end.39, label %if.then

if.then:                                          ; preds = %for.body.28
  %38 = load i32, i32* %decode_type, align 4, !tbaa !5
  %and34 = and i32 %38, 2
  %tobool35 = icmp ne i32 %and34, 0
  br i1 %tobool35, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %39 = load i32, i32* %bps, align 4, !tbaa !5
  %cmp36 = icmp sle i32 %39, 8
  br i1 %cmp36, label %if.then.38, label %if.else

if.then.38:                                       ; preds = %land.lhs.true
  store float* getelementptr inbounds ([10 x float], [10 x float]* @get_map.default_decode, i32 0, i32 0), float** %real_decode, align 8, !tbaa !1
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %if.then
  store float* getelementptr inbounds ([10 x float], [10 x float]* @get_map.default_decode, i32 0, i32 0), float** %map_decode, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.38
  br label %if.end.39

if.end.39:                                        ; preds = %if.end, %for.body.28
  %40 = load i32, i32* %bps, align 4, !tbaa !5
  %cmp40 = icmp sgt i32 %40, 2
  br i1 %cmp40, label %if.then.44, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.39
  %41 = load i32, i32* %format.addr, align 4, !tbaa !9
  %cmp42 = icmp ne i32 %41, 0
  br i1 %cmp42, label %if.then.44, label %if.else.51

if.then.44:                                       ; preds = %lor.lhs.false, %if.end.39
  %42 = load i32, i32* %bps, align 4, !tbaa !5
  %cmp45 = icmp sle i32 %42, 8
  br i1 %cmp45, label %if.then.47, label %if.end.50

if.then.47:                                       ; preds = %if.then.44
  %43 = load %struct.sample_map_s*, %struct.sample_map_s** %pmap, align 8, !tbaa !1
  %table = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %43, i32 0, i32 0
  %lookup8 = bitcast %union.sample_lookup_s* %table to [256 x i8]*
  %arrayidx48 = getelementptr inbounds [256 x i8], [256 x i8]* %lookup8, i32 0, i64 0
  %44 = load i32, i32* %bps, align 4, !tbaa !5
  %shl49 = shl i32 1, %44
  %45 = load float*, float** %map_decode, align 8, !tbaa !1
  call void @image_init_map(i8* %arrayidx48, i32 %shl49, float* %45) #6
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.47, %if.then.44
  br label %if.end.125

if.else.51:                                       ; preds = %lor.lhs.false
  %46 = bitcast [4 x i8]* %map52 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %46) #1
  %47 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %47) #1
  %arrayidx53 = getelementptr inbounds [4 x i8], [4 x i8]* %map52, i32 0, i64 0
  %48 = load i32, i32* %bps, align 4, !tbaa !5
  %shl54 = shl i32 1, %48
  %49 = load float*, float** %map_decode, align 8, !tbaa !1
  call void @image_init_map(i8* %arrayidx53, i32 %shl54, float* %49) #6
  %50 = load i32, i32* %bps, align 4, !tbaa !5
  switch i32 %50, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.105
  ]

sw.bb:                                            ; preds = %if.else.51
  %51 = bitcast i32** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %51) #1
  %52 = load %struct.sample_map_s*, %struct.sample_map_s** %pmap, align 8, !tbaa !1
  %table55 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %52, i32 0, i32 0
  %lookup4x1to32 = bitcast %union.sample_lookup_s* %table55 to [16 x i32]*
  %arrayidx56 = getelementptr inbounds [16 x i32], [16 x i32]* %lookup4x1to32, i32 0, i64 0
  store i32* %arrayidx56, i32** %p, align 8, !tbaa !1
  %arrayidx57 = getelementptr inbounds [4 x i8], [4 x i8]* %map52, i32 0, i64 0
  %53 = load i8, i8* %arrayidx57, align 1, !tbaa !9
  %conv58 = zext i8 %53 to i32
  %cmp59 = icmp eq i32 %conv58, 0
  br i1 %cmp59, label %land.lhs.true.61, label %if.else.67

land.lhs.true.61:                                 ; preds = %sw.bb
  %arrayidx62 = getelementptr inbounds [4 x i8], [4 x i8]* %map52, i32 0, i64 1
  %54 = load i8, i8* %arrayidx62, align 1, !tbaa !9
  %conv63 = zext i8 %54 to i32
  %cmp64 = icmp eq i32 %conv63, 255
  br i1 %cmp64, label %if.then.66, label %if.else.67

if.then.66:                                       ; preds = %land.lhs.true.61
  %55 = load i32*, i32** %p, align 8, !tbaa !1
  %56 = bitcast i32* %55 to i8*
  %call = call i8* @memcpy(i8* %56, i8* bitcast ([16 x i32]* @lookup4x1to32_identity to i8*), i64 64) #8
  br label %if.end.104

if.else.67:                                       ; preds = %land.lhs.true.61, %sw.bb
  %arrayidx68 = getelementptr inbounds [4 x i8], [4 x i8]* %map52, i32 0, i64 0
  %57 = load i8, i8* %arrayidx68, align 1, !tbaa !9
  %conv69 = zext i8 %57 to i32
  %cmp70 = icmp eq i32 %conv69, 255
  br i1 %cmp70, label %land.lhs.true.72, label %if.else.79

land.lhs.true.72:                                 ; preds = %if.else.67
  %arrayidx73 = getelementptr inbounds [4 x i8], [4 x i8]* %map52, i32 0, i64 1
  %58 = load i8, i8* %arrayidx73, align 1, !tbaa !9
  %conv74 = zext i8 %58 to i32
  %cmp75 = icmp eq i32 %conv74, 0
  br i1 %cmp75, label %if.then.77, label %if.else.79

if.then.77:                                       ; preds = %land.lhs.true.72
  %59 = load i32*, i32** %p, align 8, !tbaa !1
  %60 = bitcast i32* %59 to i8*
  %call78 = call i8* @memcpy(i8* %60, i8* bitcast ([16 x i32]* @lookup4x1to32_inverted to i8*), i64 64) #8
  br label %if.end.103

if.else.79:                                       ; preds = %land.lhs.true.72, %if.else.67
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.80

for.cond.80:                                      ; preds = %for.inc.101, %if.else.79
  %61 = load i32, i32* %i, align 4, !tbaa !5
  %cmp81 = icmp slt i32 %61, 16
  br i1 %cmp81, label %for.body.83, label %for.end.102

for.body.83:                                      ; preds = %for.cond.80
  %62 = load i32, i32* %i, align 4, !tbaa !5
  %shr = ashr i32 %62, 3
  %idxprom84 = sext i32 %shr to i64
  %arrayidx85 = getelementptr inbounds [4 x i8], [4 x i8]* %map52, i32 0, i64 %idxprom84
  %63 = load i8, i8* %arrayidx85, align 1, !tbaa !9
  %64 = load i32*, i32** %p, align 8, !tbaa !1
  %65 = bitcast i32* %64 to i8*
  %arrayidx86 = getelementptr inbounds i8, i8* %65, i64 0
  store i8 %63, i8* %arrayidx86, align 1, !tbaa !9
  %66 = load i32, i32* %i, align 4, !tbaa !5
  %shr87 = ashr i32 %66, 2
  %and88 = and i32 %shr87, 1
  %idxprom89 = sext i32 %and88 to i64
  %arrayidx90 = getelementptr inbounds [4 x i8], [4 x i8]* %map52, i32 0, i64 %idxprom89
  %67 = load i8, i8* %arrayidx90, align 1, !tbaa !9
  %68 = load i32*, i32** %p, align 8, !tbaa !1
  %69 = bitcast i32* %68 to i8*
  %arrayidx91 = getelementptr inbounds i8, i8* %69, i64 1
  store i8 %67, i8* %arrayidx91, align 1, !tbaa !9
  %70 = load i32, i32* %i, align 4, !tbaa !5
  %shr92 = ashr i32 %70, 1
  %and93 = and i32 %shr92, 1
  %idxprom94 = sext i32 %and93 to i64
  %arrayidx95 = getelementptr inbounds [4 x i8], [4 x i8]* %map52, i32 0, i64 %idxprom94
  %71 = load i8, i8* %arrayidx95, align 1, !tbaa !9
  %72 = load i32*, i32** %p, align 8, !tbaa !1
  %73 = bitcast i32* %72 to i8*
  %arrayidx96 = getelementptr inbounds i8, i8* %73, i64 2
  store i8 %71, i8* %arrayidx96, align 1, !tbaa !9
  %74 = load i32, i32* %i, align 4, !tbaa !5
  %and97 = and i32 %74, 1
  %idxprom98 = sext i32 %and97 to i64
  %arrayidx99 = getelementptr inbounds [4 x i8], [4 x i8]* %map52, i32 0, i64 %idxprom98
  %75 = load i8, i8* %arrayidx99, align 1, !tbaa !9
  %76 = load i32*, i32** %p, align 8, !tbaa !1
  %77 = bitcast i32* %76 to i8*
  %arrayidx100 = getelementptr inbounds i8, i8* %77, i64 3
  store i8 %75, i8* %arrayidx100, align 1, !tbaa !9
  br label %for.inc.101

for.inc.101:                                      ; preds = %for.body.83
  %78 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %78, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  %79 = load i32*, i32** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i32, i32* %79, i32 1
  store i32* %incdec.ptr, i32** %p, align 8, !tbaa !1
  br label %for.cond.80

for.end.102:                                      ; preds = %for.cond.80
  br label %if.end.103

if.end.103:                                       ; preds = %for.end.102, %if.then.77
  br label %if.end.104

if.end.104:                                       ; preds = %if.end.103, %if.then.66
  %80 = bitcast i32** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %80) #1
  br label %sw.epilog

sw.bb.105:                                        ; preds = %if.else.51
  %81 = bitcast i16** %p106 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %81) #1
  %82 = load %struct.sample_map_s*, %struct.sample_map_s** %pmap, align 8, !tbaa !1
  %table107 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %82, i32 0, i32 0
  %lookup2x2to16 = bitcast %union.sample_lookup_s* %table107 to [16 x i16]*
  %arrayidx108 = getelementptr inbounds [16 x i16], [16 x i16]* %lookup2x2to16, i32 0, i64 0
  store i16* %arrayidx108, i16** %p106, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.109

for.cond.109:                                     ; preds = %for.inc.121, %sw.bb.105
  %83 = load i32, i32* %i, align 4, !tbaa !5
  %cmp110 = icmp slt i32 %83, 16
  br i1 %cmp110, label %for.body.112, label %for.end.124

for.body.112:                                     ; preds = %for.cond.109
  %84 = load i32, i32* %i, align 4, !tbaa !5
  %shr113 = ashr i32 %84, 2
  %idxprom114 = sext i32 %shr113 to i64
  %arrayidx115 = getelementptr inbounds [4 x i8], [4 x i8]* %map52, i32 0, i64 %idxprom114
  %85 = load i8, i8* %arrayidx115, align 1, !tbaa !9
  %86 = load i16*, i16** %p106, align 8, !tbaa !1
  %87 = bitcast i16* %86 to i8*
  %arrayidx116 = getelementptr inbounds i8, i8* %87, i64 0
  store i8 %85, i8* %arrayidx116, align 1, !tbaa !9
  %88 = load i32, i32* %i, align 4, !tbaa !5
  %and117 = and i32 %88, 3
  %idxprom118 = sext i32 %and117 to i64
  %arrayidx119 = getelementptr inbounds [4 x i8], [4 x i8]* %map52, i32 0, i64 %idxprom118
  %89 = load i8, i8* %arrayidx119, align 1, !tbaa !9
  %90 = load i16*, i16** %p106, align 8, !tbaa !1
  %91 = bitcast i16* %90 to i8*
  %arrayidx120 = getelementptr inbounds i8, i8* %91, i64 1
  store i8 %89, i8* %arrayidx120, align 1, !tbaa !9
  br label %for.inc.121

for.inc.121:                                      ; preds = %for.body.112
  %92 = load i32, i32* %i, align 4, !tbaa !5
  %inc122 = add nsw i32 %92, 1
  store i32 %inc122, i32* %i, align 4, !tbaa !5
  %93 = load i16*, i16** %p106, align 8, !tbaa !1
  %incdec.ptr123 = getelementptr inbounds i16, i16* %93, i32 1
  store i16* %incdec.ptr123, i16** %p106, align 8, !tbaa !1
  br label %for.cond.109

for.end.124:                                      ; preds = %for.cond.109
  %94 = bitcast i16** %p106 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %94) #1
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else.51, %for.end.124, %if.end.104
  %95 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %95) #1
  %96 = bitcast [4 x i8]* %map52 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %96) #1
  br label %if.end.125

if.end.125:                                       ; preds = %sw.epilog, %if.end.50
  %97 = load float*, float** %real_decode, align 8, !tbaa !1
  %arrayidx126 = getelementptr inbounds float, float* %97, i64 0
  %98 = load float, float* %arrayidx126, align 4, !tbaa !144
  %99 = load %struct.sample_map_s*, %struct.sample_map_s** %pmap, align 8, !tbaa !1
  %decode_lookup = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %99, i32 0, i32 1
  %arrayidx127 = getelementptr inbounds [16 x float], [16 x float]* %decode_lookup, i32 0, i64 0
  store float %98, float* %arrayidx127, align 4, !tbaa !144
  %100 = load float*, float** %real_decode, align 8, !tbaa !1
  %arrayidx128 = getelementptr inbounds float, float* %100, i64 1
  %101 = load float, float* %arrayidx128, align 4, !tbaa !144
  %102 = load float*, float** %real_decode, align 8, !tbaa !1
  %arrayidx129 = getelementptr inbounds float, float* %102, i64 0
  %103 = load float, float* %arrayidx129, align 4, !tbaa !144
  %sub = fsub float %101, %103
  %conv130 = fpext float %sub to double
  %104 = load i32, i32* %bps, align 4, !tbaa !5
  %cmp131 = icmp sle i32 %104, 8
  %cond = select i1 %cmp131, double 2.550000e+02, double 3.276000e+04
  %div = fdiv double %conv130, %cond
  %conv133 = fptrunc double %div to float
  %105 = load %struct.sample_map_s*, %struct.sample_map_s** %pmap, align 8, !tbaa !1
  %decode_factor = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %105, i32 0, i32 2
  store float %conv133, float* %decode_factor, align 4, !tbaa !238
  %106 = load float*, float** %real_decode, align 8, !tbaa !1
  %arrayidx134 = getelementptr inbounds float, float* %106, i64 1
  %107 = load float, float* %arrayidx134, align 4, !tbaa !144
  %108 = load %struct.sample_map_s*, %struct.sample_map_s** %pmap, align 8, !tbaa !1
  %decode_lookup135 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %108, i32 0, i32 1
  %arrayidx136 = getelementptr inbounds [16 x float], [16 x float]* %decode_lookup135, i32 0, i64 15
  store float %107, float* %arrayidx136, align 4, !tbaa !144
  %109 = load i32, i32* %decode_type, align 4, !tbaa !5
  %tobool137 = icmp ne i32 %109, 0
  br i1 %tobool137, label %if.then.138, label %if.else.142

if.then.138:                                      ; preds = %if.end.125
  %110 = load %struct.sample_map_s*, %struct.sample_map_s** %pmap, align 8, !tbaa !1
  %decoding = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %110, i32 0, i32 3
  store i32 0, i32* %decoding, align 4, !tbaa !240
  %111 = load float*, float** %map_decode, align 8, !tbaa !1
  %arrayidx139 = getelementptr inbounds float, float* %111, i64 0
  %112 = load float, float* %arrayidx139, align 4, !tbaa !144
  %cmp140 = fcmp une float %112, 0.000000e+00
  %conv141 = zext i1 %cmp140 to i32
  %113 = load %struct.sample_map_s*, %struct.sample_map_s** %pmap, align 8, !tbaa !1
  %inverted = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %113, i32 0, i32 4
  store i32 %conv141, i32* %inverted, align 4, !tbaa !241
  br label %if.end.175

if.else.142:                                      ; preds = %if.end.125
  %114 = load i32, i32* %bps, align 4, !tbaa !5
  %cmp143 = icmp sle i32 %114, 4
  br i1 %cmp143, label %if.then.145, label %if.else.172

if.then.145:                                      ; preds = %if.else.142
  %115 = bitcast i32* %step to i8*
  call void @llvm.lifetime.start(i64 4, i8* %115) #1
  %116 = load i32, i32* %bps, align 4, !tbaa !5
  %shl146 = shl i32 1, %116
  %sub147 = sub nsw i32 %shl146, 1
  %div148 = sdiv i32 15, %sub147
  store i32 %div148, i32* %step, align 4, !tbaa !5
  %117 = bitcast i32* %i149 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %117) #1
  %118 = load %struct.sample_map_s*, %struct.sample_map_s** %pmap, align 8, !tbaa !1
  %decoding150 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %118, i32 0, i32 3
  store i32 1, i32* %decoding150, align 4, !tbaa !240
  %119 = load i32, i32* %step, align 4, !tbaa !5
  %sub151 = sub nsw i32 15, %119
  store i32 %sub151, i32* %i149, align 4, !tbaa !5
  br label %for.cond.152

for.cond.152:                                     ; preds = %for.inc.169, %if.then.145
  %120 = load i32, i32* %i149, align 4, !tbaa !5
  %cmp153 = icmp sgt i32 %120, 0
  br i1 %cmp153, label %for.body.155, label %for.end.171

for.body.155:                                     ; preds = %for.cond.152
  %121 = load %struct.sample_map_s*, %struct.sample_map_s** %pmap, align 8, !tbaa !1
  %decode_lookup156 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %121, i32 0, i32 1
  %arrayidx157 = getelementptr inbounds [16 x float], [16 x float]* %decode_lookup156, i32 0, i64 0
  %122 = load float, float* %arrayidx157, align 4, !tbaa !144
  %conv158 = fpext float %122 to double
  %123 = load i32, i32* %i149, align 4, !tbaa !5
  %conv159 = sitofp i32 %123 to double
  %mul160 = fmul double %conv159, 1.700000e+01
  %124 = load %struct.sample_map_s*, %struct.sample_map_s** %pmap, align 8, !tbaa !1
  %decode_factor161 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %124, i32 0, i32 2
  %125 = load float, float* %decode_factor161, align 4, !tbaa !238
  %conv162 = fpext float %125 to double
  %mul163 = fmul double %mul160, %conv162
  %add164 = fadd double %conv158, %mul163
  %conv165 = fptrunc double %add164 to float
  %126 = load i32, i32* %i149, align 4, !tbaa !5
  %idxprom166 = sext i32 %126 to i64
  %127 = load %struct.sample_map_s*, %struct.sample_map_s** %pmap, align 8, !tbaa !1
  %decode_lookup167 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %127, i32 0, i32 1
  %arrayidx168 = getelementptr inbounds [16 x float], [16 x float]* %decode_lookup167, i32 0, i64 %idxprom166
  store float %conv165, float* %arrayidx168, align 4, !tbaa !144
  br label %for.inc.169

for.inc.169:                                      ; preds = %for.body.155
  %128 = load i32, i32* %step, align 4, !tbaa !5
  %129 = load i32, i32* %i149, align 4, !tbaa !5
  %sub170 = sub nsw i32 %129, %128
  store i32 %sub170, i32* %i149, align 4, !tbaa !5
  br label %for.cond.152

for.end.171:                                      ; preds = %for.cond.152
  %130 = bitcast i32* %i149 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %130) #1
  %131 = bitcast i32* %step to i8*
  call void @llvm.lifetime.end(i64 4, i8* %131) #1
  br label %if.end.174

if.else.172:                                      ; preds = %if.else.142
  %132 = load %struct.sample_map_s*, %struct.sample_map_s** %pmap, align 8, !tbaa !1
  %decoding173 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %132, i32 0, i32 3
  store i32 2, i32* %decoding173, align 4, !tbaa !240
  br label %if.end.174

if.end.174:                                       ; preds = %if.else.172, %for.end.171
  br label %if.end.175

if.end.175:                                       ; preds = %if.end.174, %if.then.138
  %133 = bitcast float** %real_decode to i8*
  call void @llvm.lifetime.end(i64 8, i8* %133) #1
  %134 = bitcast float** %map_decode to i8*
  call void @llvm.lifetime.end(i64 8, i8* %134) #1
  %135 = bitcast float** %this_decode to i8*
  call void @llvm.lifetime.end(i64 8, i8* %135) #1
  %136 = bitcast %struct.sample_map_s** %pmap to i8*
  call void @llvm.lifetime.end(i64 8, i8* %136) #1
  br label %for.inc.176

for.inc.176:                                      ; preds = %if.end.175
  %137 = load i32, i32* %ci, align 4, !tbaa !5
  %inc177 = add nsw i32 %137, 1
  store i32 %inc177, i32* %ci, align 4, !tbaa !5
  br label %for.cond.25

for.end.178:                                      ; preds = %for.cond.25
  %138 = bitcast i32* %spp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %138) #1
  %139 = bitcast i32* %bps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %139) #1
  %140 = bitcast i32* %decode_type to i8*
  call void @llvm.lifetime.end(i64 4, i8* %140) #1
  %141 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %141) #1
  ret void
}

declare void @gsicc_mcm_end_monitor(%struct.gsicc_link_cache_s*, %struct.gx_device_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @palette_has_color(%struct.gs_color_space_s* %pcs, %struct.gs_pixel_image_s* %pim) #0 {
entry:
  %retval = alloca i32, align 4
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pim.addr = alloca %struct.gs_pixel_image_s*, align 8
  %pbcs = alloca %struct.gs_color_space_s*, align 8
  %base_type = alloca i32, align 4
  %is_neutral = alloca i32 (i8*, i32)*, align 8
  %bps = alloca i32, align 4
  %num_entries = alloca i32, align 4
  %k = alloca i32, align 4
  %psrc = alloca [4 x i8], align 1
  %cleanup.dest.slot = alloca i32
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gs_pixel_image_s* %pim, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_color_space_s** %pbcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %base_space = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %1, i32 0, i32 3
  %2 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space, align 8, !tbaa !163
  store %struct.gs_color_space_s* %2, %struct.gs_color_space_s** %pbcs, align 8, !tbaa !1
  %3 = bitcast i32* %base_type to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pbcs, align 8, !tbaa !1
  %call = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %4) #6
  store i32 %call, i32* %base_type, align 4, !tbaa !9
  %5 = bitcast i32 (i8*, i32)** %is_neutral to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i32* %bps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %BitsPerComponent = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %7, i32 0, i32 4
  %8 = load i32, i32* %BitsPerComponent, align 4, !tbaa !140
  store i32 %8, i32* %bps, align 4, !tbaa !5
  %9 = bitcast i32* %num_entries to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load i32, i32* %bps, align 4, !tbaa !5
  %shl = shl i32 1, %10
  store i32 %shl, i32* %num_entries, align 4, !tbaa !5
  %11 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast [4 x i8]* %psrc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load i32, i32* %base_type, align 4, !tbaa !9
  switch i32 %13, label %sw.default.8 [
    i32 0, label %sw.bb
    i32 8, label %sw.bb
    i32 1, label %sw.bb.1
    i32 7, label %sw.bb.1
    i32 6, label %sw.bb.1
    i32 2, label %sw.bb.2
    i32 5, label %sw.bb.2
    i32 3, label %sw.bb.3
    i32 4, label %sw.bb.3
    i32 9, label %sw.bb.3
    i32 10, label %sw.bb.3
    i32 11, label %sw.bb.3
    i32 12, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %entry, %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.1:                                          ; preds = %entry, %entry, %entry
  store i32 (i8*, i32)* @gsicc_mcm_monitor_rgb, i32 (i8*, i32)** %is_neutral, align 8, !tbaa !1
  br label %sw.epilog.9

sw.bb.2:                                          ; preds = %entry, %entry
  store i32 (i8*, i32)* @gsicc_mcm_monitor_cmyk, i32 (i8*, i32)** %is_neutral, align 8, !tbaa !1
  br label %sw.epilog.9

sw.bb.3:                                          ; preds = %entry, %entry, %entry, %entry, %entry
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.4:                                          ; preds = %entry
  %14 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pbcs, align 8, !tbaa !1
  %cmm_icc_profile_data = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %14, i32 0, i32 6
  %15 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data, align 8, !tbaa !165
  %data_cs = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %15, i32 0, i32 5
  %16 = load i32, i32* %data_cs, align 4, !tbaa !179
  switch i32 %16, label %sw.default [
    i32 2, label %sw.bb.5
    i32 3, label %sw.bb.6
    i32 6, label %sw.bb.7
  ]

sw.bb.5:                                          ; preds = %sw.bb.4
  store i32 (i8*, i32)* @gsicc_mcm_monitor_rgb, i32 (i8*, i32)** %is_neutral, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.6:                                          ; preds = %sw.bb.4
  store i32 (i8*, i32)* @gsicc_mcm_monitor_cmyk, i32 (i8*, i32)** %is_neutral, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.7:                                          ; preds = %sw.bb.4
  store i32 (i8*, i32)* @gsicc_mcm_monitor_lab, i32 (i8*, i32)** %is_neutral, align 8, !tbaa !1
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb.4
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb.7, %sw.bb.6, %sw.bb.5
  br label %sw.epilog.9

sw.default.8:                                     ; preds = %entry
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog.9:                                      ; preds = %sw.epilog, %sw.bb.2, %sw.bb.1
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.epilog.9
  %17 = load i32, i32* %k, align 4, !tbaa !5
  %18 = load i32, i32* %num_entries, align 4, !tbaa !5
  %cmp = icmp slt i32 %17, %18
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %20 = load i32, i32* %k, align 4, !tbaa !5
  %conv = sitofp i32 %20 to float
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %psrc, i32 0, i32 0
  %call10 = call i32 @gs_cspace_indexed_lookup_bytes(%struct.gs_color_space_s* %19, float %conv, i8* %arraydecay) #6
  %21 = load i32 (i8*, i32)*, i32 (i8*, i32)** %is_neutral, align 8, !tbaa !1
  %arraydecay11 = getelementptr inbounds [4 x i8], [4 x i8]* %psrc, i32 0, i32 0
  %call12 = call i32 %21(i8* %arraydecay11, i32 1) #6
  %tobool = icmp ne i32 %call12, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %22 = load i32, i32* %k, align 4, !tbaa !5
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then, %sw.default.8, %sw.default, %sw.bb.3, %sw.bb
  %23 = bitcast [4 x i8]* %psrc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #1
  %24 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  %25 = bitcast i32* %num_entries to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  %26 = bitcast i32* %bps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  %27 = bitcast i32 (i8*, i32)** %is_neutral to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  %28 = bitcast i32* %base_type to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  %29 = bitcast %struct.gs_color_space_s** %pbcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  %30 = load i32, i32* %retval
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define internal i32 @begin_image_command(i8* %buf, i32 %buf_size, %struct.gs_image_common_s* %pic) #0 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %buf_size.addr = alloca i32, align 4
  %pic.addr = alloca %struct.gs_image_common_s*, align 8
  %i = alloca i32, align 4
  %s = alloca %struct.stream_s, align 8
  %ignore_pcs = alloca %struct.gs_color_space_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !1
  store i32 %buf_size, i32* %buf_size.addr, align 4, !tbaa !5
  store %struct.gs_image_common_s* %pic, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.stream_s* %s to i8*
  call void @llvm.lifetime.start(i64 352, i8* %1) #1
  %2 = bitcast %struct.gs_color_space_s** %ignore_pcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4, !tbaa !5
  %5 = load i32, i32* @gx_image_type_table_count, align 4, !tbaa !5
  %cmp = icmp ult i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [0 x %struct.gx_image_type_s*], [0 x %struct.gx_image_type_s*]* @gx_image_type_table, i32 0, i64 %idxprom
  %7 = load %struct.gx_image_type_s*, %struct.gx_image_type_s** %arrayidx, align 8, !tbaa !1
  %8 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_image_common_s, %struct.gs_image_common_s* %8, i32 0, i32 0
  %9 = load %struct.gx_image_type_s*, %struct.gx_image_type_s** %type, align 8, !tbaa !116
  %cmp1 = icmp eq %struct.gx_image_type_s* %7, %9
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %11 = load i32, i32* %i, align 4, !tbaa !5
  %12 = load i32, i32* @gx_image_type_table_count, align 4, !tbaa !5
  %cmp2 = icmp uge i32 %11, %12
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %for.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %for.end
  call void @s_init(%struct.stream_s* %s, %struct.gs_memory_s* null) #6
  %13 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %14 = load i32, i32* %buf_size.addr, align 4, !tbaa !5
  call void @swrite_string(%struct.stream_s* %s, i8* %13, i32 %14) #6
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %s, i32 0, i32 5
  %w = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_write_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 1
  %15 = load i8*, i8** %ptr, align 8, !tbaa !242
  %cursor5 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %s, i32 0, i32 5
  %w6 = bitcast %union.stream_cursor_s* %cursor5 to %struct.stream_cursor_write_s*
  %limit = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w6, i32 0, i32 2
  %16 = load i8*, i8** %limit, align 8, !tbaa !244
  %cmp7 = icmp uge i8* %15, %16
  br i1 %cmp7, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end.4
  %cursor8 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %s, i32 0, i32 5
  %w9 = bitcast %union.stream_cursor_s* %cursor8 to %struct.stream_cursor_write_s*
  %ptr10 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w9, i32 0, i32 1
  %17 = load i8*, i8** %ptr10, align 8, !tbaa !242
  %incdec.ptr = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr, i8** %ptr10, align 8, !tbaa !242
  %18 = load i32, i32* %i, align 4, !tbaa !5
  %conv = trunc i32 %18 to i8
  %cursor11 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %s, i32 0, i32 5
  %w12 = bitcast %union.stream_cursor_s* %cursor11 to %struct.stream_cursor_write_s*
  %ptr13 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w12, i32 0, i32 1
  %19 = load i8*, i8** %ptr13, align 8, !tbaa !242
  store i8 %conv, i8* %19, align 1, !tbaa !9
  br label %cond.end

cond.false:                                       ; preds = %if.end.4
  %20 = load i32, i32* %i, align 4, !tbaa !5
  %conv14 = trunc i32 %20 to i8
  %call = call i32 @spputc(%struct.stream_s* %s, i8 zeroext %conv14) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call, %cond.false ]
  %21 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %type15 = getelementptr inbounds %struct.gs_image_common_s, %struct.gs_image_common_s* %21, i32 0, i32 0
  %22 = load %struct.gx_image_type_s*, %struct.gx_image_type_s** %type15, align 8, !tbaa !116
  %sput = getelementptr inbounds %struct.gx_image_type_s, %struct.gx_image_type_s* %22, i32 0, i32 3
  %23 = load i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s**)*, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s**)** %sput, align 8, !tbaa !245
  %24 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %call16 = call i32 %23(%struct.gs_image_common_s* %24, %struct.stream_s* %s, %struct.gs_color_space_s** %ignore_pcs) #6
  store i32 %call16, i32* %code, align 4, !tbaa !5
  %25 = load i32, i32* %code, align 4, !tbaa !5
  %cmp17 = icmp slt i32 %25, 0
  br i1 %cmp17, label %cond.true.19, label %cond.false.21

cond.true.19:                                     ; preds = %cond.end
  %26 = load i32, i32* %code, align 4, !tbaa !5
  %conv20 = sext i32 %26 to i64
  br label %cond.end.23

cond.false.21:                                    ; preds = %cond.end
  %call22 = call i64 @stell(%struct.stream_s* %s) #6
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.21, %cond.true.19
  %cond24 = phi i64 [ %conv20, %cond.true.19 ], [ %call22, %cond.false.21 ]
  %conv25 = trunc i64 %cond24 to i32
  store i32 %conv25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end.23, %if.then.3
  %27 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  %28 = bitcast %struct.gs_color_space_s** %ignore_pcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #1
  %29 = bitcast %struct.stream_s* %s to i8*
  call void @llvm.lifetime.end(i64 352, i8* %29) #1
  %30 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #1
  %31 = load i32, i32* %retval
  ret i32 %31
}

declare i64 @cmd_drawing_color_usage(%struct.gx_device_clist_writer_s*, %struct.gx_device_color_s*) #2

declare i32 @gx_cpath_outer_box(%struct.gx_clip_path_s*, %struct.gs_fixed_rect_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @clist_image_unknowns(%struct.gx_device_s* %dev, %struct.clist_image_enum_s* %pie) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pie.addr = alloca %struct.clist_image_enum_s*, align 8
  %cdev = alloca %struct.gx_device_clist_writer_s*, align 8
  %pis = alloca %struct.gs_imager_state_s*, align 8
  %unknown = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.clist_image_enum_s* %pie, %struct.clist_image_enum_s** %pie.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_clist_writer_s** %cdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %union.gx_device_clist_s*
  %writer = bitcast %union.gx_device_clist_s* %2 to %struct.gx_device_clist_writer_s*
  store %struct.gx_device_clist_writer_s* %writer, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %3 = bitcast %struct.gs_imager_state_s** %pis to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie.addr, align 8, !tbaa !1
  %pis1 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %4, i32 0, i32 12
  %5 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis1, align 8, !tbaa !153
  store %struct.gs_imager_state_s* %5, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %6 = bitcast i32* %unknown to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i32 0, i32* %unknown, align 4, !tbaa !5
  %7 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %imager_state = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %7, i32 0, i32 80
  %ctm = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state, i32 0, i32 5
  %xx = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm, i32 0, i32 0
  %8 = load float, float* %xx, align 4, !tbaa !246
  %9 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %ctm2 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %9, i32 0, i32 5
  %xx3 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm2, i32 0, i32 0
  %10 = load float, float* %xx3, align 4, !tbaa !247
  %cmp = fcmp une float %8, %10
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %11 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %imager_state4 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %11, i32 0, i32 80
  %ctm5 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state4, i32 0, i32 5
  %xy = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm5, i32 0, i32 1
  %12 = load float, float* %xy, align 4, !tbaa !248
  %13 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %ctm6 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %13, i32 0, i32 5
  %xy7 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm6, i32 0, i32 1
  %14 = load float, float* %xy7, align 4, !tbaa !249
  %cmp8 = fcmp une float %12, %14
  br i1 %cmp8, label %if.then, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %lor.lhs.false
  %15 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %imager_state10 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %15, i32 0, i32 80
  %ctm11 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state10, i32 0, i32 5
  %yx = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm11, i32 0, i32 2
  %16 = load float, float* %yx, align 4, !tbaa !250
  %17 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %ctm12 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %17, i32 0, i32 5
  %yx13 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm12, i32 0, i32 2
  %18 = load float, float* %yx13, align 4, !tbaa !251
  %cmp14 = fcmp une float %16, %18
  br i1 %cmp14, label %if.then, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %lor.lhs.false.9
  %19 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %imager_state16 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %19, i32 0, i32 80
  %ctm17 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state16, i32 0, i32 5
  %yy = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm17, i32 0, i32 3
  %20 = load float, float* %yy, align 4, !tbaa !252
  %21 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %ctm18 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %21, i32 0, i32 5
  %yy19 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm18, i32 0, i32 3
  %22 = load float, float* %yy19, align 4, !tbaa !253
  %cmp20 = fcmp une float %20, %22
  br i1 %cmp20, label %if.then, label %lor.lhs.false.21

lor.lhs.false.21:                                 ; preds = %lor.lhs.false.15
  %23 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %imager_state22 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %23, i32 0, i32 80
  %ctm23 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state22, i32 0, i32 5
  %tx = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm23, i32 0, i32 4
  %24 = load float, float* %tx, align 4, !tbaa !254
  %25 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %ctm24 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %25, i32 0, i32 5
  %tx25 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm24, i32 0, i32 4
  %26 = load float, float* %tx25, align 4, !tbaa !255
  %cmp26 = fcmp une float %24, %26
  br i1 %cmp26, label %if.then, label %lor.lhs.false.27

lor.lhs.false.27:                                 ; preds = %lor.lhs.false.21
  %27 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %imager_state28 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %27, i32 0, i32 80
  %ctm29 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state28, i32 0, i32 5
  %ty = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm29, i32 0, i32 5
  %28 = load float, float* %ty, align 4, !tbaa !256
  %29 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %ctm30 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %29, i32 0, i32 5
  %ty31 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm30, i32 0, i32 5
  %30 = load float, float* %ty31, align 4, !tbaa !257
  %cmp32 = fcmp une float %28, %30
  br i1 %cmp32, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.27, %lor.lhs.false.21, %lor.lhs.false.15, %lor.lhs.false.9, %lor.lhs.false, %entry
  %31 = load i32, i32* %unknown, align 4, !tbaa !5
  %or = or i32 %31, 2048
  store i32 %or, i32* %unknown, align 4, !tbaa !5
  %32 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %imager_state33 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %32, i32 0, i32 80
  %ctm34 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state33, i32 0, i32 5
  %33 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %ctm35 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %33, i32 0, i32 5
  %34 = bitcast %struct.gs_matrix_fixed_s* %ctm34 to i8*
  %35 = bitcast %struct.gs_matrix_fixed_s* %ctm35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* %35, i64 36, i32 4, i1 false), !tbaa.struct !258
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.27
  %36 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie.addr, align 8, !tbaa !1
  %color_space = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %36, i32 0, i32 19
  %id = getelementptr inbounds %struct.clist_color_space_s, %struct.clist_color_space_s* %color_space, i32 0, i32 1
  %37 = load i64, i64* %id, align 8, !tbaa !162
  %cmp36 = icmp eq i64 %37, 0
  br i1 %cmp36, label %if.then.37, label %if.else

if.then.37:                                       ; preds = %if.end
  %38 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %color_space38 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %38, i32 0, i32 88
  %space = getelementptr inbounds %struct.clist_color_space_s, %struct.clist_color_space_s* %color_space38, i32 0, i32 3
  store %struct.gs_color_space_s* null, %struct.gs_color_space_s** %space, align 8, !tbaa !259
  br label %if.end.54

if.else:                                          ; preds = %if.end
  %39 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %color_space39 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %39, i32 0, i32 88
  %id40 = getelementptr inbounds %struct.clist_color_space_s, %struct.clist_color_space_s* %color_space39, i32 0, i32 1
  %40 = load i64, i64* %id40, align 8, !tbaa !260
  %41 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie.addr, align 8, !tbaa !1
  %color_space41 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %41, i32 0, i32 19
  %id42 = getelementptr inbounds %struct.clist_color_space_s, %struct.clist_color_space_s* %color_space41, i32 0, i32 1
  %42 = load i64, i64* %id42, align 8, !tbaa !162
  %cmp43 = icmp eq i64 %40, %42
  br i1 %cmp43, label %if.then.44, label %if.else.49

if.then.44:                                       ; preds = %if.else
  %43 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie.addr, align 8, !tbaa !1
  %color_space45 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %43, i32 0, i32 19
  %space46 = getelementptr inbounds %struct.clist_color_space_s, %struct.clist_color_space_s* %color_space45, i32 0, i32 3
  %44 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %space46, align 8, !tbaa !161
  %45 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %color_space47 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %45, i32 0, i32 88
  %space48 = getelementptr inbounds %struct.clist_color_space_s, %struct.clist_color_space_s* %color_space47, i32 0, i32 3
  store %struct.gs_color_space_s* %44, %struct.gs_color_space_s** %space48, align 8, !tbaa !259
  br label %if.end.53

if.else.49:                                       ; preds = %if.else
  %46 = load i32, i32* %unknown, align 4, !tbaa !5
  %or50 = or i32 %46, 16384
  store i32 %or50, i32* %unknown, align 4, !tbaa !5
  %47 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %color_space51 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %47, i32 0, i32 88
  %48 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie.addr, align 8, !tbaa !1
  %color_space52 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %48, i32 0, i32 19
  %49 = bitcast %struct.clist_color_space_s* %color_space51 to i8*
  %50 = bitcast %struct.clist_color_space_s* %color_space52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %49, i8* %50, i64 48, i32 8, i1 false), !tbaa.struct !261
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.49, %if.then.44
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %if.then.37
  %51 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %52 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie.addr, align 8, !tbaa !1
  %pcpath = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %52, i32 0, i32 13
  %53 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath, align 8, !tbaa !154
  %call = call i32 @cmd_check_clip_path(%struct.gx_device_clist_writer_s* %51, %struct.gx_clip_path_s* %53) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.55, label %if.end.57

if.then.55:                                       ; preds = %if.end.54
  %54 = load i32, i32* %unknown, align 4, !tbaa !5
  %or56 = or i32 %54, 8192
  store i32 %or56, i32* %unknown, align 4, !tbaa !5
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.55, %if.end.54
  %55 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %imager_state58 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %55, i32 0, i32 80
  %overprint = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state58, i32 0, i32 21
  %56 = load i32, i32* %overprint, align 4, !tbaa !262
  %57 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %overprint59 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %57, i32 0, i32 21
  %58 = load i32, i32* %overprint59, align 4, !tbaa !263
  %cmp60 = icmp ne i32 %56, %58
  br i1 %cmp60, label %if.then.77, label %lor.lhs.false.61

lor.lhs.false.61:                                 ; preds = %if.end.57
  %59 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %imager_state62 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %59, i32 0, i32 80
  %overprint_mode = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state62, i32 0, i32 22
  %60 = load i32, i32* %overprint_mode, align 4, !tbaa !264
  %61 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %overprint_mode63 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %61, i32 0, i32 22
  %62 = load i32, i32* %overprint_mode63, align 4, !tbaa !265
  %cmp64 = icmp ne i32 %60, %62
  br i1 %cmp64, label %if.then.77, label %lor.lhs.false.65

lor.lhs.false.65:                                 ; preds = %lor.lhs.false.61
  %63 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %imager_state66 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %63, i32 0, i32 80
  %blend_mode = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state66, i32 0, i32 12
  %64 = load i32, i32* %blend_mode, align 4, !tbaa !266
  %65 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %blend_mode67 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %65, i32 0, i32 12
  %66 = load i32, i32* %blend_mode67, align 4, !tbaa !267
  %cmp68 = icmp ne i32 %64, %66
  br i1 %cmp68, label %if.then.77, label %lor.lhs.false.69

lor.lhs.false.69:                                 ; preds = %lor.lhs.false.65
  %67 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %imager_state70 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %67, i32 0, i32 80
  %text_knockout = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state70, i32 0, i32 17
  %68 = load i32, i32* %text_knockout, align 4, !tbaa !268
  %69 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %text_knockout71 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %69, i32 0, i32 17
  %70 = load i32, i32* %text_knockout71, align 4, !tbaa !269
  %cmp72 = icmp ne i32 %68, %70
  br i1 %cmp72, label %if.then.77, label %lor.lhs.false.73

lor.lhs.false.73:                                 ; preds = %lor.lhs.false.69
  %71 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %imager_state74 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %71, i32 0, i32 80
  %renderingintent = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state74, i32 0, i32 33
  %72 = load i32, i32* %renderingintent, align 4, !tbaa !270
  %73 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %renderingintent75 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %73, i32 0, i32 33
  %74 = load i32, i32* %renderingintent75, align 4, !tbaa !112
  %cmp76 = icmp ne i32 %72, %74
  br i1 %cmp76, label %if.then.77, label %if.end.94

if.then.77:                                       ; preds = %lor.lhs.false.73, %lor.lhs.false.69, %lor.lhs.false.65, %lor.lhs.false.61, %if.end.57
  %75 = load i32, i32* %unknown, align 4, !tbaa !5
  %or78 = or i32 %75, 32
  store i32 %or78, i32* %unknown, align 4, !tbaa !5
  %76 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %overprint79 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %76, i32 0, i32 21
  %77 = load i32, i32* %overprint79, align 4, !tbaa !263
  %78 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %imager_state80 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %78, i32 0, i32 80
  %overprint81 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state80, i32 0, i32 21
  store i32 %77, i32* %overprint81, align 4, !tbaa !262
  %79 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %overprint_mode82 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %79, i32 0, i32 22
  %80 = load i32, i32* %overprint_mode82, align 4, !tbaa !265
  %81 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %imager_state83 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %81, i32 0, i32 80
  %overprint_mode84 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state83, i32 0, i32 22
  store i32 %80, i32* %overprint_mode84, align 4, !tbaa !264
  %82 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %blend_mode85 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %82, i32 0, i32 12
  %83 = load i32, i32* %blend_mode85, align 4, !tbaa !267
  %84 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %imager_state86 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %84, i32 0, i32 80
  %blend_mode87 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state86, i32 0, i32 12
  store i32 %83, i32* %blend_mode87, align 4, !tbaa !266
  %85 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %text_knockout88 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %85, i32 0, i32 17
  %86 = load i32, i32* %text_knockout88, align 4, !tbaa !269
  %87 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %imager_state89 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %87, i32 0, i32 80
  %text_knockout90 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state89, i32 0, i32 17
  store i32 %86, i32* %text_knockout90, align 4, !tbaa !268
  %88 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %renderingintent91 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %88, i32 0, i32 33
  %89 = load i32, i32* %renderingintent91, align 4, !tbaa !112
  %90 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %imager_state92 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %90, i32 0, i32 80
  %renderingintent93 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state92, i32 0, i32 33
  store i32 %89, i32* %renderingintent93, align 4, !tbaa !270
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.77, %lor.lhs.false.73
  %91 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %imager_state95 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %91, i32 0, i32 80
  %opacity = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state95, i32 0, i32 13
  %alpha = getelementptr inbounds %struct.gs_transparency_source_s, %struct.gs_transparency_source_s* %opacity, i32 0, i32 0
  %92 = load float, float* %alpha, align 4, !tbaa !271
  %93 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %opacity96 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %93, i32 0, i32 13
  %alpha97 = getelementptr inbounds %struct.gs_transparency_source_s, %struct.gs_transparency_source_s* %opacity96, i32 0, i32 0
  %94 = load float, float* %alpha97, align 4, !tbaa !272
  %cmp98 = fcmp une float %92, %94
  br i1 %cmp98, label %if.then.99, label %if.end.106

if.then.99:                                       ; preds = %if.end.94
  %95 = load i32, i32* %unknown, align 4, !tbaa !5
  %or100 = or i32 %95, 128
  store i32 %or100, i32* %unknown, align 4, !tbaa !5
  %96 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %opacity101 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %96, i32 0, i32 13
  %alpha102 = getelementptr inbounds %struct.gs_transparency_source_s, %struct.gs_transparency_source_s* %opacity101, i32 0, i32 0
  %97 = load float, float* %alpha102, align 4, !tbaa !272
  %98 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %imager_state103 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %98, i32 0, i32 80
  %opacity104 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state103, i32 0, i32 13
  %alpha105 = getelementptr inbounds %struct.gs_transparency_source_s, %struct.gs_transparency_source_s* %opacity104, i32 0, i32 0
  store float %97, float* %alpha105, align 4, !tbaa !271
  br label %if.end.106

if.end.106:                                       ; preds = %if.then.99, %if.end.94
  %99 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %imager_state107 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %99, i32 0, i32 80
  %shape = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state107, i32 0, i32 14
  %alpha108 = getelementptr inbounds %struct.gs_transparency_source_s, %struct.gs_transparency_source_s* %shape, i32 0, i32 0
  %100 = load float, float* %alpha108, align 4, !tbaa !273
  %101 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %shape109 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %101, i32 0, i32 14
  %alpha110 = getelementptr inbounds %struct.gs_transparency_source_s, %struct.gs_transparency_source_s* %shape109, i32 0, i32 0
  %102 = load float, float* %alpha110, align 4, !tbaa !274
  %cmp111 = fcmp une float %100, %102
  br i1 %cmp111, label %if.then.112, label %if.end.119

if.then.112:                                      ; preds = %if.end.106
  %103 = load i32, i32* %unknown, align 4, !tbaa !5
  %or113 = or i32 %103, 256
  store i32 %or113, i32* %unknown, align 4, !tbaa !5
  %104 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %shape114 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %104, i32 0, i32 14
  %alpha115 = getelementptr inbounds %struct.gs_transparency_source_s, %struct.gs_transparency_source_s* %shape114, i32 0, i32 0
  %105 = load float, float* %alpha115, align 4, !tbaa !274
  %106 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %imager_state116 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %106, i32 0, i32 80
  %shape117 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state116, i32 0, i32 14
  %alpha118 = getelementptr inbounds %struct.gs_transparency_source_s, %struct.gs_transparency_source_s* %shape117, i32 0, i32 0
  store float %105, float* %alpha118, align 4, !tbaa !273
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.112, %if.end.106
  %107 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %imager_state120 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %107, i32 0, i32 80
  %alpha121 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state120, i32 0, i32 11
  %108 = load i16, i16* %alpha121, align 2, !tbaa !275
  %conv = zext i16 %108 to i32
  %109 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %alpha122 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %109, i32 0, i32 11
  %110 = load i16, i16* %alpha122, align 2, !tbaa !276
  %conv123 = zext i16 %110 to i32
  %cmp124 = icmp ne i32 %conv, %conv123
  br i1 %cmp124, label %if.then.126, label %if.end.131

if.then.126:                                      ; preds = %if.end.119
  %111 = load i32, i32* %unknown, align 4, !tbaa !5
  %or127 = or i32 %111, 512
  store i32 %or127, i32* %unknown, align 4, !tbaa !5
  %112 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %alpha128 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %112, i32 0, i32 11
  %113 = load i16, i16* %alpha128, align 2, !tbaa !276
  %114 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %imager_state129 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %114, i32 0, i32 80
  %alpha130 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %imager_state129, i32 0, i32 11
  store i16 %113, i16* %alpha130, align 2, !tbaa !275
  br label %if.end.131

if.end.131:                                       ; preds = %if.then.126, %if.end.119
  %115 = load i32, i32* %unknown, align 4, !tbaa !5
  %116 = bitcast i32* %unknown to i8*
  call void @llvm.lifetime.end(i64 4, i8* %116) #1
  %117 = bitcast %struct.gs_imager_state_s** %pis to i8*
  call void @llvm.lifetime.end(i64 8, i8* %117) #1
  %118 = bitcast %struct.gx_device_clist_writer_s** %cdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %118) #1
  ret i32 %115
}

declare i32 @gx_default_begin_typed_image(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**) #2

; Function Attrs: nounwind uwtable
define i32 @clist_create_compositor(%struct.gx_device_s* %dev, %struct.gx_device_s** %pcdev, %struct.gs_composite_s* %pcte, %struct.gs_imager_state_s* %pis, %struct.gs_memory_s* %mem, %struct.gx_device_s* %cldev) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pcdev.addr = alloca %struct.gx_device_s**, align 8
  %pcte.addr = alloca %struct.gs_composite_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %cldev.addr = alloca %struct.gx_device_s*, align 8
  %dp = alloca i8*, align 8
  %size = alloca i32, align 4
  %size_dummy = alloca i32, align 4
  %cdev = alloca %struct.gx_device_clist_writer_s*, align 8
  %ry = alloca i32, align 4
  %rheight = alloca i32, align 4
  %cropping_op = alloca i32, align 4
  %band_height = alloca i32, align 4
  %last_band = alloca i32, align 4
  %first_band = alloca i32, align 4
  %no_of_bands = alloca i32, align 4
  %code = alloca i32, align 4
  %temp_cropping_min = alloca i32, align 4
  %temp_cropping_max = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %re = alloca %struct.cmd_rects_enum_s, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gx_device_s** %pcdev, %struct.gx_device_s*** %pcdev.addr, align 8, !tbaa !1
  store %struct.gs_composite_s* %pcte, %struct.gs_composite_s** %pcte.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %cldev, %struct.gx_device_s** %cldev.addr, align 8, !tbaa !1
  %0 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %size, align 4, !tbaa !5
  %2 = bitcast i32* %size_dummy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast %struct.gx_device_clist_writer_s** %cdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gx_device_s* %4 to %union.gx_device_clist_s*
  %writer = bitcast %union.gx_device_clist_s* %5 to %struct.gx_device_clist_writer_s*
  store %struct.gx_device_clist_writer_s* %writer, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %6 = bitcast i32* %ry to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %rheight to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %cropping_op to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %band_height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %page_info = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %10, i32 0, i32 58
  %band_params = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info, i32 0, i32 8
  %BandHeight = getelementptr inbounds %struct.gx_band_params_s, %struct.gx_band_params_s* %band_params, i32 0, i32 1
  %11 = load i32, i32* %BandHeight, align 4, !tbaa !64
  store i32 %11, i32* %band_height, align 4, !tbaa !5
  %12 = bitcast i32* %last_band to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %13, i32 0, i32 14
  %14 = load i32, i32* %height, align 4, !tbaa !277
  %15 = load i32, i32* %band_height, align 4, !tbaa !5
  %add = add nsw i32 %14, %15
  %sub = sub nsw i32 %add, 1
  %16 = load i32, i32* %band_height, align 4, !tbaa !5
  %div = sdiv i32 %sub, %16
  store i32 %div, i32* %last_band, align 4, !tbaa !5
  %17 = bitcast i32* %first_band to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  store i32 0, i32* %first_band, align 4, !tbaa !5
  %18 = bitcast i32* %no_of_bands to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = load i32, i32* %last_band, align 4, !tbaa !5
  %add1 = add nsw i32 %19, 1
  store i32 %add1, i32* %no_of_bands, align 4, !tbaa !5
  %20 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcte.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_composite_s, %struct.gs_composite_s* %21, i32 0, i32 0
  %22 = load %struct.gs_composite_type_s*, %struct.gs_composite_type_s** %type, align 8, !tbaa !278
  %procs = getelementptr inbounds %struct.gs_composite_type_s, %struct.gs_composite_type_s* %22, i32 0, i32 1
  %write = getelementptr inbounds %struct.gs_composite_type_procs_s, %struct.gs_composite_type_procs_s* %procs, i32 0, i32 2
  %23 = load i32 (%struct.gs_composite_s*, i8*, i32*, %struct.gx_device_clist_writer_s*)*, i32 (%struct.gs_composite_s*, i8*, i32*, %struct.gx_device_clist_writer_s*)** %write, align 8, !tbaa !280
  %24 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcte.addr, align 8, !tbaa !1
  %25 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %call = call i32 %23(%struct.gs_composite_s* %24, i8* null, i32* %size, %struct.gx_device_clist_writer_s* %25) #6
  store i32 %call, i32* %code, align 4, !tbaa !5
  %26 = bitcast i32* %temp_cropping_min to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #1
  %27 = bitcast i32* %temp_cropping_max to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  %28 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %28, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %29 = load i32, i32* %code, align 4, !tbaa !5
  %cmp2 = icmp ne i32 %29, -15
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %30 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %30, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.183

if.end:                                           ; preds = %land.lhs.true, %entry
  %31 = load i32, i32* %size, align 4, !tbaa !5
  %add3 = add i32 %31, 3
  store i32 %add3, i32* %size, align 4, !tbaa !5
  %32 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcte.addr, align 8, !tbaa !1
  %type4 = getelementptr inbounds %struct.gs_composite_s, %struct.gs_composite_s* %32, i32 0, i32 0
  %33 = load %struct.gs_composite_type_s*, %struct.gs_composite_type_s** %type4, align 8, !tbaa !278
  %procs5 = getelementptr inbounds %struct.gs_composite_type_s, %struct.gs_composite_type_s* %33, i32 0, i32 1
  %clist_compositor_write_update = getelementptr inbounds %struct.gs_composite_type_procs_s, %struct.gs_composite_type_procs_s* %procs5, i32 0, i32 7
  %34 = load i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_imager_state_s*, %struct.gs_memory_s*)** %clist_compositor_write_update, align 8, !tbaa !283
  %35 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcte.addr, align 8, !tbaa !1
  %36 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %37 = load %struct.gx_device_s**, %struct.gx_device_s*** %pcdev.addr, align 8, !tbaa !1
  %38 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %39 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call6 = call i32 %34(%struct.gs_composite_s* %35, %struct.gx_device_s* %36, %struct.gx_device_s** %37, %struct.gs_imager_state_s* %38, %struct.gs_memory_s* %39) #6
  store i32 %call6, i32* %code, align 4, !tbaa !5
  %40 = load i32, i32* %code, align 4, !tbaa !5
  %cmp7 = icmp slt i32 %40, 0
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  %41 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %41, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.183

if.end.9:                                         ; preds = %if.end
  %42 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcte.addr, align 8, !tbaa !1
  %type10 = getelementptr inbounds %struct.gs_composite_s, %struct.gs_composite_s* %42, i32 0, i32 0
  %43 = load %struct.gs_composite_type_s*, %struct.gs_composite_type_s** %type10, align 8, !tbaa !278
  %procs11 = getelementptr inbounds %struct.gs_composite_type_s, %struct.gs_composite_type_s* %43, i32 0, i32 1
  %get_cropping = getelementptr inbounds %struct.gs_composite_type_procs_s, %struct.gs_composite_type_procs_s* %procs11, i32 0, i32 9
  %44 = load i32 (%struct.gs_composite_s*, i32*, i32*, i32, i32)*, i32 (%struct.gs_composite_s*, i32*, i32*, i32, i32)** %get_cropping, align 8, !tbaa !284
  %45 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcte.addr, align 8, !tbaa !1
  %46 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %cropping_min = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %46, i32 0, i32 101
  %47 = load i32, i32* %cropping_min, align 4, !tbaa !45
  %48 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %cropping_max = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %48, i32 0, i32 102
  %49 = load i32, i32* %cropping_max, align 4, !tbaa !46
  %call12 = call i32 %44(%struct.gs_composite_s* %45, i32* %ry, i32* %rheight, i32 %47, i32 %49) #6
  store i32 %call12, i32* %code, align 4, !tbaa !5
  %50 = load i32, i32* %code, align 4, !tbaa !5
  %cmp13 = icmp slt i32 %50, 0
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.9
  %51 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %51, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.183

if.end.15:                                        ; preds = %if.end.9
  %52 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %52, i32* %cropping_op, align 4, !tbaa !5
  %53 = load i32, i32* %cropping_op, align 4, !tbaa !5
  %cmp16 = icmp eq i32 %53, 1
  br i1 %cmp16, label %if.then.18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.15
  %54 = load i32, i32* %cropping_op, align 4, !tbaa !5
  %cmp17 = icmp eq i32 %54, 4
  br i1 %cmp17, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %lor.lhs.false, %if.end.15
  %55 = load i32, i32* %ry, align 4, !tbaa !5
  %56 = load i32, i32* %band_height, align 4, !tbaa !5
  %div19 = sdiv i32 %55, %56
  store i32 %div19, i32* %first_band, align 4, !tbaa !5
  %57 = load i32, i32* %ry, align 4, !tbaa !5
  %58 = load i32, i32* %rheight, align 4, !tbaa !5
  %add20 = add nsw i32 %57, %58
  %59 = load i32, i32* %band_height, align 4, !tbaa !5
  %add21 = add nsw i32 %add20, %59
  %sub22 = sub nsw i32 %add21, 1
  %60 = load i32, i32* %band_height, align 4, !tbaa !5
  %div23 = sdiv i32 %sub22, %60
  store i32 %div23, i32* %last_band, align 4, !tbaa !5
  br label %if.end.35

if.else:                                          ; preds = %lor.lhs.false
  %61 = load i32, i32* %cropping_op, align 4, !tbaa !5
  %cmp24 = icmp eq i32 %61, 2
  br i1 %cmp24, label %if.then.27, label %lor.lhs.false.25

lor.lhs.false.25:                                 ; preds = %if.else
  %62 = load i32, i32* %cropping_op, align 4, !tbaa !5
  %cmp26 = icmp eq i32 %62, 3
  br i1 %cmp26, label %if.then.27, label %if.end.34

if.then.27:                                       ; preds = %lor.lhs.false.25, %if.else
  %63 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %cropping_min28 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %63, i32 0, i32 101
  %64 = load i32, i32* %cropping_min28, align 4, !tbaa !45
  %65 = load i32, i32* %band_height, align 4, !tbaa !5
  %div29 = sdiv i32 %64, %65
  store i32 %div29, i32* %first_band, align 4, !tbaa !5
  %66 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %cropping_max30 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %66, i32 0, i32 102
  %67 = load i32, i32* %cropping_max30, align 4, !tbaa !46
  %68 = load i32, i32* %band_height, align 4, !tbaa !5
  %add31 = add nsw i32 %67, %68
  %sub32 = sub nsw i32 %add31, 1
  %69 = load i32, i32* %band_height, align 4, !tbaa !5
  %div33 = sdiv i32 %sub32, %69
  store i32 %div33, i32* %last_band, align 4, !tbaa !5
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.27, %lor.lhs.false.25
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.then.18
  %70 = load i32, i32* %last_band, align 4, !tbaa !5
  %71 = load i32, i32* %first_band, align 4, !tbaa !5
  %sub36 = sub nsw i32 %70, %71
  %72 = load i32, i32* %no_of_bands, align 4, !tbaa !5
  %mul = mul nsw i32 %72, 2
  %div37 = sdiv i32 %mul, 3
  %cmp38 = icmp sgt i32 %sub36, %div37
  br i1 %cmp38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.end.35
  store i32 0, i32* %cropping_op, align 4, !tbaa !5
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.39, %if.end.35
  %73 = load i32, i32* %cropping_op, align 4, !tbaa !5
  %cmp41 = icmp eq i32 %73, 0
  br i1 %cmp41, label %if.then.42, label %if.end.58

if.then.42:                                       ; preds = %if.end.40
  %74 = load i32, i32* %size, align 4, !tbaa !5
  store i32 %74, i32* %size_dummy, align 4, !tbaa !5
  %75 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %76 = bitcast %struct.gx_device_s* %75 to %struct.gx_device_clist_writer_s*
  %77 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %78 = bitcast %struct.gx_device_s* %77 to %struct.gx_device_clist_writer_s*
  %nbands = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %78, i32 0, i32 59
  %79 = load i32, i32* %nbands, align 4, !tbaa !285
  %sub43 = sub nsw i32 %79, 1
  %80 = load i32, i32* %size, align 4, !tbaa !5
  %call44 = call i8* @cmd_put_range_op(%struct.gx_device_clist_writer_s* %76, i32 0, i32 %sub43, i32 %80) #6
  store i8* %call44, i8** %dp, align 8, !tbaa !1
  %cmp45 = icmp eq i8* %call44, null
  br i1 %cmp45, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.42
  %81 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %82 = bitcast %struct.gx_device_s* %81 to %struct.gx_device_clist_writer_s*
  %error_code = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %82, i32 0, i32 65
  %83 = load i32, i32* %error_code, align 4, !tbaa !77
  br label %cond.end

cond.false:                                       ; preds = %if.then.42
  %84 = load i8*, i8** %dp, align 8, !tbaa !1
  store i8 -33, i8* %84, align 1, !tbaa !9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %83, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %code, align 4, !tbaa !5
  %85 = load i32, i32* %code, align 4, !tbaa !5
  %cmp46 = icmp slt i32 %85, 0
  br i1 %cmp46, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %cond.end
  %86 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %86, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.183

if.end.48:                                        ; preds = %cond.end
  %87 = load i8*, i8** %dp, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %87, i64 1
  store i8 1, i8* %arrayidx, align 1, !tbaa !9
  %88 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcte.addr, align 8, !tbaa !1
  %type49 = getelementptr inbounds %struct.gs_composite_s, %struct.gs_composite_s* %88, i32 0, i32 0
  %89 = load %struct.gs_composite_type_s*, %struct.gs_composite_type_s** %type49, align 8, !tbaa !278
  %comp_id = getelementptr inbounds %struct.gs_composite_type_s, %struct.gs_composite_type_s* %89, i32 0, i32 0
  %90 = load i8, i8* %comp_id, align 1, !tbaa !286
  %91 = load i8*, i8** %dp, align 8, !tbaa !1
  %arrayidx50 = getelementptr inbounds i8, i8* %91, i64 2
  store i8 %90, i8* %arrayidx50, align 1, !tbaa !9
  %92 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcte.addr, align 8, !tbaa !1
  %type51 = getelementptr inbounds %struct.gs_composite_s, %struct.gs_composite_s* %92, i32 0, i32 0
  %93 = load %struct.gs_composite_type_s*, %struct.gs_composite_type_s** %type51, align 8, !tbaa !278
  %procs52 = getelementptr inbounds %struct.gs_composite_type_s, %struct.gs_composite_type_s* %93, i32 0, i32 1
  %write53 = getelementptr inbounds %struct.gs_composite_type_procs_s, %struct.gs_composite_type_procs_s* %procs52, i32 0, i32 2
  %94 = load i32 (%struct.gs_composite_s*, i8*, i32*, %struct.gx_device_clist_writer_s*)*, i32 (%struct.gs_composite_s*, i8*, i32*, %struct.gx_device_clist_writer_s*)** %write53, align 8, !tbaa !280
  %95 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcte.addr, align 8, !tbaa !1
  %96 = load i8*, i8** %dp, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %96, i64 3
  %97 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %call54 = call i32 %94(%struct.gs_composite_s* %95, i8* %add.ptr, i32* %size_dummy, %struct.gx_device_clist_writer_s* %97) #6
  store i32 %call54, i32* %code, align 4, !tbaa !5
  %cmp55 = icmp slt i32 %call54, 0
  br i1 %cmp55, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %if.end.48
  %98 = load i8*, i8** %dp, align 8, !tbaa !1
  %99 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %100 = bitcast %struct.gx_device_s* %99 to %struct.gx_device_clist_writer_s*
  %cnext = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %100, i32 0, i32 68
  store i8* %98, i8** %cnext, align 8, !tbaa !287
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.56, %if.end.48
  %101 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %101, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.183

if.end.58:                                        ; preds = %if.end.40
  %102 = load i32, i32* %cropping_op, align 4, !tbaa !5
  %cmp59 = icmp eq i32 %102, 1
  br i1 %cmp59, label %if.then.60, label %if.end.65

if.then.60:                                       ; preds = %if.end.58
  %103 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %104 = load i32, i32* %ry, align 4, !tbaa !5
  %105 = load i32, i32* %rheight, align 4, !tbaa !5
  %call61 = call i32 @clist_writer_push_cropping(%struct.gx_device_clist_writer_s* %103, i32 %104, i32 %105) #6
  store i32 %call61, i32* %code, align 4, !tbaa !5
  %106 = load i32, i32* %code, align 4, !tbaa !5
  %cmp62 = icmp slt i32 %106, 0
  br i1 %cmp62, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %if.then.60
  %107 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %107, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.183

if.end.64:                                        ; preds = %if.then.60
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %if.end.58
  %108 = load i32, i32* %cropping_op, align 4, !tbaa !5
  %cmp66 = icmp eq i32 %108, 4
  br i1 %cmp66, label %if.then.67, label %if.else.84

if.then.67:                                       ; preds = %if.end.65
  %109 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %cropping_min68 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %109, i32 0, i32 101
  %110 = load i32, i32* %cropping_min68, align 4, !tbaa !45
  %111 = load i32, i32* %ry, align 4, !tbaa !5
  %cmp69 = icmp sgt i32 %110, %111
  br i1 %cmp69, label %cond.true.70, label %cond.false.72

cond.true.70:                                     ; preds = %if.then.67
  %112 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %cropping_min71 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %112, i32 0, i32 101
  %113 = load i32, i32* %cropping_min71, align 4, !tbaa !45
  br label %cond.end.73

cond.false.72:                                    ; preds = %if.then.67
  %114 = load i32, i32* %ry, align 4, !tbaa !5
  br label %cond.end.73

cond.end.73:                                      ; preds = %cond.false.72, %cond.true.70
  %cond74 = phi i32 [ %113, %cond.true.70 ], [ %114, %cond.false.72 ]
  store i32 %cond74, i32* %temp_cropping_min, align 4, !tbaa !5
  %115 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %cropping_max75 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %115, i32 0, i32 102
  %116 = load i32, i32* %cropping_max75, align 4, !tbaa !46
  %117 = load i32, i32* %ry, align 4, !tbaa !5
  %118 = load i32, i32* %rheight, align 4, !tbaa !5
  %add76 = add nsw i32 %117, %118
  %cmp77 = icmp slt i32 %116, %add76
  br i1 %cmp77, label %cond.true.78, label %cond.false.80

cond.true.78:                                     ; preds = %cond.end.73
  %119 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %cropping_max79 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %119, i32 0, i32 102
  %120 = load i32, i32* %cropping_max79, align 4, !tbaa !46
  br label %cond.end.82

cond.false.80:                                    ; preds = %cond.end.73
  %121 = load i32, i32* %ry, align 4, !tbaa !5
  %122 = load i32, i32* %rheight, align 4, !tbaa !5
  %add81 = add nsw i32 %121, %122
  br label %cond.end.82

cond.end.82:                                      ; preds = %cond.false.80, %cond.true.78
  %cond83 = phi i32 [ %120, %cond.true.78 ], [ %add81, %cond.false.80 ]
  store i32 %cond83, i32* %temp_cropping_max, align 4, !tbaa !5
  br label %if.end.87

if.else.84:                                       ; preds = %if.end.65
  %123 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %cropping_min85 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %123, i32 0, i32 101
  %124 = load i32, i32* %cropping_min85, align 4, !tbaa !45
  store i32 %124, i32* %temp_cropping_min, align 4, !tbaa !5
  %125 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %cropping_max86 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %125, i32 0, i32 102
  %126 = load i32, i32* %cropping_max86, align 4, !tbaa !46
  store i32 %126, i32* %temp_cropping_max, align 4, !tbaa !5
  br label %if.end.87

if.end.87:                                        ; preds = %if.else.84, %cond.end.82
  %127 = load i32, i32* %temp_cropping_min, align 4, !tbaa !5
  %128 = load i32, i32* %temp_cropping_max, align 4, !tbaa !5
  %cmp88 = icmp slt i32 %127, %128
  br i1 %cmp88, label %if.then.89, label %if.end.175

if.then.89:                                       ; preds = %if.end.87
  %129 = bitcast %struct.cmd_rects_enum_s* %re to i8*
  call void @llvm.lifetime.start(i64 40, i8* %129) #1
  %130 = load i32, i32* %temp_cropping_min, align 4, !tbaa !5
  %y = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  store i32 %130, i32* %y, align 4, !tbaa !60
  %131 = load i32, i32* %temp_cropping_max, align 4, !tbaa !5
  %132 = load i32, i32* %temp_cropping_min, align 4, !tbaa !5
  %sub90 = sub nsw i32 %131, %132
  %height91 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  store i32 %sub90, i32* %height91, align 4, !tbaa !62
  %y92 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %133 = load i32, i32* %y92, align 4, !tbaa !60
  %height93 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %134 = load i32, i32* %height93, align 4, !tbaa !62
  %add94 = add nsw i32 %133, %134
  %yend = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 2
  store i32 %add94, i32* %yend, align 4, !tbaa !63
  %135 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %page_info95 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %135, i32 0, i32 58
  %band_params96 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info95, i32 0, i32 8
  %BandHeight97 = getelementptr inbounds %struct.gx_band_params_s, %struct.gx_band_params_s* %band_params96, i32 0, i32 1
  %136 = load i32, i32* %BandHeight97, align 4, !tbaa !64
  %band_height98 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  store i32 %136, i32* %band_height98, align 4, !tbaa !65
  %yend99 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 2
  %137 = load i32, i32* %yend99, align 4, !tbaa !63
  %y100 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %138 = load i32, i32* %y100, align 4, !tbaa !60
  %sub101 = sub nsw i32 %137, %138
  %band_height102 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  %139 = load i32, i32* %band_height102, align 4, !tbaa !65
  %add103 = add nsw i32 %sub101, %139
  %sub104 = sub nsw i32 %add103, 1
  %band_height105 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  %140 = load i32, i32* %band_height105, align 4, !tbaa !65
  %div106 = sdiv i32 %sub104, %140
  %rect_nbands = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 8
  store i32 %div106, i32* %rect_nbands, align 4, !tbaa !66
  br label %do.body

do.body:                                          ; preds = %do.cond.170, %if.then.89
  %y107 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %141 = load i32, i32* %y107, align 4, !tbaa !60
  %band_height108 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  %142 = load i32, i32* %band_height108, align 4, !tbaa !65
  %div109 = sdiv i32 %141, %142
  %band = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 5
  store i32 %div109, i32* %band, align 4, !tbaa !67
  %143 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %states = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %143, i32 0, i32 66
  %144 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %states, align 8, !tbaa !68
  %band110 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 5
  %145 = load i32, i32* %band110, align 4, !tbaa !67
  %idx.ext = sext i32 %145 to i64
  %add.ptr111 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %144, i64 %idx.ext
  %pcls = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  store %struct.gx_clist_state_s* %add.ptr111, %struct.gx_clist_state_s** %pcls, align 8, !tbaa !69
  %band112 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 5
  %146 = load i32, i32* %band112, align 4, !tbaa !67
  %add113 = add nsw i32 %146, 1
  %band_height114 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  %147 = load i32, i32* %band_height114, align 4, !tbaa !65
  %mul115 = mul nsw i32 %add113, %147
  %band_end = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 7
  store i32 %mul115, i32* %band_end, align 4, !tbaa !70
  %band_end116 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 7
  %148 = load i32, i32* %band_end116, align 4, !tbaa !70
  %yend117 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 2
  %149 = load i32, i32* %yend117, align 4, !tbaa !63
  %cmp118 = icmp slt i32 %148, %149
  br i1 %cmp118, label %cond.true.119, label %cond.false.121

cond.true.119:                                    ; preds = %do.body
  %band_end120 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 7
  %150 = load i32, i32* %band_end120, align 4, !tbaa !70
  br label %cond.end.123

cond.false.121:                                   ; preds = %do.body
  %yend122 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 2
  %151 = load i32, i32* %yend122, align 4, !tbaa !63
  br label %cond.end.123

cond.end.123:                                     ; preds = %cond.false.121, %cond.true.119
  %cond124 = phi i32 [ %150, %cond.true.119 ], [ %151, %cond.false.121 ]
  %y125 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %152 = load i32, i32* %y125, align 4, !tbaa !60
  %sub126 = sub nsw i32 %cond124, %152
  %height127 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  store i32 %sub126, i32* %height127, align 4, !tbaa !62
  br label %do.body.128

do.body.128:                                      ; preds = %land.end, %cond.end.123
  %153 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pcls129 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %154 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls129, align 8, !tbaa !69
  %list = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %154, i32 0, i32 15
  %155 = load i32, i32* %size, align 4, !tbaa !5
  %call130 = call i8* @cmd_put_list_op(%struct.gx_device_clist_writer_s* %153, %struct.cmd_list_s* %list, i32 %155) #6
  store i8* %call130, i8** %dp, align 8, !tbaa !1
  %cmp131 = icmp eq i8* %call130, null
  br i1 %cmp131, label %cond.true.132, label %cond.false.134

cond.true.132:                                    ; preds = %do.body.128
  %156 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %error_code133 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %156, i32 0, i32 65
  %157 = load i32, i32* %error_code133, align 4, !tbaa !77
  br label %cond.end.135

cond.false.134:                                   ; preds = %do.body.128
  %158 = load i8*, i8** %dp, align 8, !tbaa !1
  store i8 -33, i8* %158, align 1, !tbaa !9
  br label %cond.end.135

cond.end.135:                                     ; preds = %cond.false.134, %cond.true.132
  %cond136 = phi i32 [ %157, %cond.true.132 ], [ 0, %cond.false.134 ]
  store i32 %cond136, i32* %code, align 4, !tbaa !5
  %159 = load i32, i32* %code, align 4, !tbaa !5
  %cmp137 = icmp sge i32 %159, 0
  br i1 %cmp137, label %if.then.138, label %if.end.148

if.then.138:                                      ; preds = %cond.end.135
  %160 = load i32, i32* %size, align 4, !tbaa !5
  store i32 %160, i32* %size_dummy, align 4, !tbaa !5
  %161 = load i8*, i8** %dp, align 8, !tbaa !1
  %arrayidx139 = getelementptr inbounds i8, i8* %161, i64 1
  store i8 1, i8* %arrayidx139, align 1, !tbaa !9
  %162 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcte.addr, align 8, !tbaa !1
  %type140 = getelementptr inbounds %struct.gs_composite_s, %struct.gs_composite_s* %162, i32 0, i32 0
  %163 = load %struct.gs_composite_type_s*, %struct.gs_composite_type_s** %type140, align 8, !tbaa !278
  %comp_id141 = getelementptr inbounds %struct.gs_composite_type_s, %struct.gs_composite_type_s* %163, i32 0, i32 0
  %164 = load i8, i8* %comp_id141, align 1, !tbaa !286
  %165 = load i8*, i8** %dp, align 8, !tbaa !1
  %arrayidx142 = getelementptr inbounds i8, i8* %165, i64 2
  store i8 %164, i8* %arrayidx142, align 1, !tbaa !9
  %166 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcte.addr, align 8, !tbaa !1
  %type143 = getelementptr inbounds %struct.gs_composite_s, %struct.gs_composite_s* %166, i32 0, i32 0
  %167 = load %struct.gs_composite_type_s*, %struct.gs_composite_type_s** %type143, align 8, !tbaa !278
  %procs144 = getelementptr inbounds %struct.gs_composite_type_s, %struct.gs_composite_type_s* %167, i32 0, i32 1
  %write145 = getelementptr inbounds %struct.gs_composite_type_procs_s, %struct.gs_composite_type_procs_s* %procs144, i32 0, i32 2
  %168 = load i32 (%struct.gs_composite_s*, i8*, i32*, %struct.gx_device_clist_writer_s*)*, i32 (%struct.gs_composite_s*, i8*, i32*, %struct.gx_device_clist_writer_s*)** %write145, align 8, !tbaa !280
  %169 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcte.addr, align 8, !tbaa !1
  %170 = load i8*, i8** %dp, align 8, !tbaa !1
  %add.ptr146 = getelementptr inbounds i8, i8* %170, i64 3
  %171 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %call147 = call i32 %168(%struct.gs_composite_s* %169, i8* %add.ptr146, i32* %size_dummy, %struct.gx_device_clist_writer_s* %171) #6
  store i32 %call147, i32* %code, align 4, !tbaa !5
  br label %if.end.148

if.end.148:                                       ; preds = %if.then.138, %cond.end.135
  br label %do.cond

do.cond:                                          ; preds = %if.end.148
  %172 = load i32, i32* %code, align 4, !tbaa !5
  %cmp149 = icmp slt i32 %172, 0
  br i1 %cmp149, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %173 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %174 = load i32, i32* %code, align 4, !tbaa !5
  %call150 = call i32 @clist_VMerror_recover(%struct.gx_device_clist_writer_s* %173, i32 %174) #6
  store i32 %call150, i32* %code, align 4, !tbaa !5
  %cmp151 = icmp sge i32 %call150, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %175 = phi i1 [ false, %do.cond ], [ %cmp151, %land.rhs ]
  br i1 %175, label %do.body.128, label %do.end

do.end:                                           ; preds = %land.end
  %176 = load i32, i32* %code, align 4, !tbaa !5
  %cmp152 = icmp slt i32 %176, 0
  br i1 %cmp152, label %land.lhs.true.153, label %if.end.155

land.lhs.true.153:                                ; preds = %do.end
  %177 = load i32, i32* %code, align 4, !tbaa !5
  %band_code = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 4
  store i32 %177, i32* %band_code, align 4, !tbaa !71
  %tobool = icmp ne i32 %177, 0
  br i1 %tobool, label %if.then.154, label %if.end.155

if.then.154:                                      ; preds = %land.lhs.true.153
  br label %error_in_rect

if.end.155:                                       ; preds = %land.lhs.true.153, %do.end
  %height156 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %178 = load i32, i32* %height156, align 4, !tbaa !62
  %y157 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %179 = load i32, i32* %y157, align 4, !tbaa !60
  %add158 = add nsw i32 %179, %178
  store i32 %add158, i32* %y157, align 4, !tbaa !60
  br label %do.cond.170

error_in_rect:                                    ; preds = %if.then.154
  %180 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %error_is_retryable = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %180, i32 0, i32 94
  %181 = load i32, i32* %error_is_retryable, align 4, !tbaa !100
  %tobool159 = icmp ne i32 %181, 0
  br i1 %tobool159, label %land.lhs.true.160, label %if.then.167

land.lhs.true.160:                                ; preds = %error_in_rect
  %182 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %driver_call_nesting = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %182, i32 0, i32 96
  %183 = load i32, i32* %driver_call_nesting, align 4, !tbaa !106
  %cmp161 = icmp eq i32 %183, 0
  br i1 %cmp161, label %land.lhs.true.162, label %if.then.167

land.lhs.true.162:                                ; preds = %land.lhs.true.160
  %184 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %band_code163 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 4
  %185 = load i32, i32* %band_code163, align 4, !tbaa !71
  %call164 = call i32 @clist_VMerror_recover_flush(%struct.gx_device_clist_writer_s* %184, i32 %185) #6
  %band_code165 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 4
  store i32 %call164, i32* %band_code165, align 4, !tbaa !71
  %cmp166 = icmp sge i32 %call164, 0
  br i1 %cmp166, label %if.end.169, label %if.then.167

if.then.167:                                      ; preds = %land.lhs.true.162, %land.lhs.true.160, %error_in_rect
  %band_code168 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 4
  %186 = load i32, i32* %band_code168, align 4, !tbaa !71
  store i32 %186, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.169:                                       ; preds = %land.lhs.true.162
  br label %do.cond.170

do.cond.170:                                      ; preds = %if.end.169, %if.end.155
  %y171 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %187 = load i32, i32* %y171, align 4, !tbaa !60
  %yend172 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 2
  %188 = load i32, i32* %yend172, align 4, !tbaa !63
  %cmp173 = icmp slt i32 %187, %188
  br i1 %cmp173, label %do.body, label %do.end.174

do.end.174:                                       ; preds = %do.cond.170
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.174, %if.then.167
  %189 = bitcast %struct.cmd_rects_enum_s* %re to i8*
  call void @llvm.lifetime.end(i64 40, i8* %189) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.183 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.175

if.end.175:                                       ; preds = %cleanup.cont, %if.end.87
  %190 = load i32, i32* %cropping_op, align 4, !tbaa !5
  %cmp176 = icmp eq i32 %190, 2
  br i1 %cmp176, label %if.then.177, label %if.end.182

if.then.177:                                      ; preds = %if.end.175
  %191 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %call178 = call i32 @clist_writer_pop_cropping(%struct.gx_device_clist_writer_s* %191) #6
  store i32 %call178, i32* %code, align 4, !tbaa !5
  %192 = load i32, i32* %code, align 4, !tbaa !5
  %cmp179 = icmp slt i32 %192, 0
  br i1 %cmp179, label %if.then.180, label %if.end.181

if.then.180:                                      ; preds = %if.then.177
  %193 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %193, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.183

if.end.181:                                       ; preds = %if.then.177
  br label %if.end.182

if.end.182:                                       ; preds = %if.end.181, %if.end.175
  %194 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %194, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.183

cleanup.183:                                      ; preds = %if.end.182, %if.then.180, %cleanup, %if.then.63, %if.end.57, %if.then.47, %if.then.14, %if.then.8, %if.then
  %195 = bitcast i32* %temp_cropping_max to i8*
  call void @llvm.lifetime.end(i64 4, i8* %195) #1
  %196 = bitcast i32* %temp_cropping_min to i8*
  call void @llvm.lifetime.end(i64 4, i8* %196) #1
  %197 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %197) #1
  %198 = bitcast i32* %no_of_bands to i8*
  call void @llvm.lifetime.end(i64 4, i8* %198) #1
  %199 = bitcast i32* %first_band to i8*
  call void @llvm.lifetime.end(i64 4, i8* %199) #1
  %200 = bitcast i32* %last_band to i8*
  call void @llvm.lifetime.end(i64 4, i8* %200) #1
  %201 = bitcast i32* %band_height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %201) #1
  %202 = bitcast i32* %cropping_op to i8*
  call void @llvm.lifetime.end(i64 4, i8* %202) #1
  %203 = bitcast i32* %rheight to i8*
  call void @llvm.lifetime.end(i64 4, i8* %203) #1
  %204 = bitcast i32* %ry to i8*
  call void @llvm.lifetime.end(i64 4, i8* %204) #1
  %205 = bitcast %struct.gx_device_clist_writer_s** %cdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %205) #1
  %206 = bitcast i32* %size_dummy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %206) #1
  %207 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %207) #1
  %208 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %208) #1
  %209 = load i32, i32* %retval
  ret i32 %209
}

declare i8* @cmd_put_range_op(%struct.gx_device_clist_writer_s*, i32, i32, i32) #2

declare i32 @clist_writer_push_cropping(%struct.gx_device_clist_writer_s*, i32, i32) #2

declare i32 @clist_writer_pop_cropping(%struct.gx_device_clist_writer_s*) #2

; Function Attrs: nounwind uwtable
define i32 @cmd_put_halftone(%struct.gx_device_clist_writer_s* %cldev, %struct.gx_device_halftone_s* %pdht) #0 {
entry:
  %retval = alloca i32, align 4
  %cldev.addr = alloca %struct.gx_device_clist_writer_s*, align 8
  %pdht.addr = alloca %struct.gx_device_halftone_s*, align 8
  %ht_size = alloca i32, align 4
  %req_size = alloca i32, align 4
  %dp = alloca i8*, align 8
  %dp0 = alloca i8*, align 8
  %pht_buff = alloca i8*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %pbuff = alloca i8*, align 8
  %seg_size = alloca i32, align 4
  %tmp_size = alloca i32, align 4
  store %struct.gx_device_clist_writer_s* %cldev, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  store %struct.gx_device_halftone_s* %pdht, %struct.gx_device_halftone_s** %pdht.addr, align 8, !tbaa !1
  %0 = bitcast i32* %ht_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %ht_size, align 4, !tbaa !5
  %1 = bitcast i32* %req_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i8** %dp0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store i8* null, i8** %dp0, align 8, !tbaa !1
  %4 = bitcast i8** %pht_buff to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store i8* null, i8** %pht_buff, align 8, !tbaa !1
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht.addr, align 8, !tbaa !1
  %7 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %8 = bitcast %struct.gx_device_clist_writer_s* %7 to %struct.gx_device_s*
  %call = call i32 @gx_ht_write(%struct.gx_device_halftone_s* %6, %struct.gx_device_s* %8, i8* null, i32* %ht_size) #6
  store i32 %call, i32* %code, align 4, !tbaa !5
  %9 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %9, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %10 = load i32, i32* %code, align 4, !tbaa !5
  %cmp1 = icmp ne i32 %10, -15
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %11 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  %12 = load i32, i32* %ht_size, align 4, !tbaa !5
  %cmp2 = icmp ult i32 %12, 128
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end.7

cond.false:                                       ; preds = %if.end
  %13 = load i32, i32* %ht_size, align 4, !tbaa !5
  %cmp3 = icmp ult i32 %13, 16384
  br i1 %cmp3, label %cond.true.4, label %cond.false.5

cond.true.4:                                      ; preds = %cond.false
  br label %cond.end

cond.false.5:                                     ; preds = %cond.false
  %14 = load i32, i32* %ht_size, align 4, !tbaa !5
  %call6 = call i32 @enc_u_size_uint(i32 %14) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false.5, %cond.true.4
  %cond = phi i32 [ 2, %cond.true.4 ], [ %call6, %cond.false.5 ]
  br label %cond.end.7

cond.end.7:                                       ; preds = %cond.end, %cond.true
  %cond8 = phi i32 [ 1, %cond.true ], [ %cond, %cond.end ]
  %add = add nsw i32 2, %cond8
  store i32 %add, i32* %req_size, align 4, !tbaa !5
  %15 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %16 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %nbands = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %16, i32 0, i32 59
  %17 = load i32, i32* %nbands, align 4, !tbaa !285
  %sub = sub nsw i32 %17, 1
  %18 = load i32, i32* %req_size, align 4, !tbaa !5
  %call9 = call i8* @cmd_put_range_op(%struct.gx_device_clist_writer_s* %15, i32 0, i32 %sub, i32 %18) #6
  store i8* %call9, i8** %dp, align 8, !tbaa !1
  %cmp10 = icmp eq i8* %call9, null
  br i1 %cmp10, label %cond.true.11, label %cond.false.12

cond.true.11:                                     ; preds = %cond.end.7
  %19 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %error_code = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %19, i32 0, i32 65
  %20 = load i32, i32* %error_code, align 4, !tbaa !77
  br label %cond.end.13

cond.false.12:                                    ; preds = %cond.end.7
  %21 = load i8*, i8** %dp, align 8, !tbaa !1
  store i8 -33, i8* %21, align 1, !tbaa !9
  br label %cond.end.13

cond.end.13:                                      ; preds = %cond.false.12, %cond.true.11
  %cond14 = phi i32 [ %20, %cond.true.11 ], [ 0, %cond.false.12 ]
  store i32 %cond14, i32* %code, align 4, !tbaa !5
  %cmp15 = icmp slt i32 %cond14, 0
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %cond.end.13
  %22 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %22, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.17:                                        ; preds = %cond.end.13
  %23 = load i8*, i8** %dp, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %23, i64 1
  store i8 2, i8* %arrayidx, align 1, !tbaa !9
  %24 = load i8*, i8** %dp, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %24, i64 2
  store i8* %add.ptr, i8** %dp, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %if.end.17
  %25 = load i32, i32* %ht_size, align 4, !tbaa !5
  %cmp18 = icmp ult i32 %25, 128
  br i1 %cmp18, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %do.body
  %26 = load i32, i32* %ht_size, align 4, !tbaa !5
  %conv = trunc i32 %26 to i8
  %27 = load i8*, i8** %dp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr, i8** %dp, align 8, !tbaa !1
  store i8 %conv, i8* %27, align 1, !tbaa !9
  br label %if.end.30

if.else:                                          ; preds = %do.body
  %28 = load i32, i32* %ht_size, align 4, !tbaa !5
  %cmp20 = icmp ult i32 %28, 16384
  br i1 %cmp20, label %if.then.22, label %if.else.27

if.then.22:                                       ; preds = %if.else
  %29 = load i32, i32* %ht_size, align 4, !tbaa !5
  %and = and i32 %29, 127
  %or = or i32 128, %and
  %conv23 = trunc i32 %or to i8
  %30 = load i8*, i8** %dp, align 8, !tbaa !1
  %incdec.ptr24 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr24, i8** %dp, align 8, !tbaa !1
  store i8 %conv23, i8* %30, align 1, !tbaa !9
  %31 = load i32, i32* %ht_size, align 4, !tbaa !5
  %shr = lshr i32 %31, 7
  %conv25 = trunc i32 %shr to i8
  %32 = load i8*, i8** %dp, align 8, !tbaa !1
  %incdec.ptr26 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr26, i8** %dp, align 8, !tbaa !1
  store i8 %conv25, i8* %32, align 1, !tbaa !9
  br label %if.end.29

if.else.27:                                       ; preds = %if.else
  %33 = load i32, i32* %ht_size, align 4, !tbaa !5
  %34 = load i8*, i8** %dp, align 8, !tbaa !1
  %call28 = call i8* @enc_u_put_uint(i32 %33, i8* %34) #6
  store i8* %call28, i8** %dp, align 8, !tbaa !1
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.27, %if.then.22
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.then.19
  br label %do.cond

do.cond:                                          ; preds = %if.end.30
  br label %do.end

do.end:                                           ; preds = %do.cond
  %35 = load i32, i32* %ht_size, align 4, !tbaa !5
  %cmp31 = icmp ugt i32 %35, 4064
  br i1 %cmp31, label %if.then.33, label %if.else.40

if.then.33:                                       ; preds = %do.end
  %36 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %bandlist_memory = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %36, i32 0, i32 45
  %37 = load %struct.gs_memory_s*, %struct.gs_memory_s** %bandlist_memory, align 8, !tbaa !288
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %37, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %38 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !214
  %39 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %bandlist_memory34 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %39, i32 0, i32 45
  %40 = load %struct.gs_memory_s*, %struct.gs_memory_s** %bandlist_memory34, align 8, !tbaa !288
  %41 = load i32, i32* %ht_size, align 4, !tbaa !5
  %call35 = call i8* %38(%struct.gs_memory_s* %40, i32 %41, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0)) #6
  store i8* %call35, i8** %pht_buff, align 8, !tbaa !1
  %42 = load i8*, i8** %pht_buff, align 8, !tbaa !1
  %cmp36 = icmp eq i8* %42, null
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.then.33
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.39:                                        ; preds = %if.then.33
  br label %if.end.81

if.else.40:                                       ; preds = %do.end
  %43 = load i32, i32* %ht_size, align 4, !tbaa !5
  %44 = load i32, i32* %req_size, align 4, !tbaa !5
  %add41 = add i32 %44, %43
  store i32 %add41, i32* %req_size, align 4, !tbaa !5
  %45 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %46 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %nbands42 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %46, i32 0, i32 59
  %47 = load i32, i32* %nbands42, align 4, !tbaa !285
  %sub43 = sub nsw i32 %47, 1
  %48 = load i32, i32* %req_size, align 4, !tbaa !5
  %call44 = call i8* @cmd_put_range_op(%struct.gx_device_clist_writer_s* %45, i32 0, i32 %sub43, i32 %48) #6
  store i8* %call44, i8** %dp, align 8, !tbaa !1
  %cmp45 = icmp eq i8* %call44, null
  br i1 %cmp45, label %cond.true.47, label %cond.false.49

cond.true.47:                                     ; preds = %if.else.40
  %49 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %error_code48 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %49, i32 0, i32 65
  %50 = load i32, i32* %error_code48, align 4, !tbaa !77
  br label %cond.end.50

cond.false.49:                                    ; preds = %if.else.40
  %51 = load i8*, i8** %dp, align 8, !tbaa !1
  store i8 -33, i8* %51, align 1, !tbaa !9
  br label %cond.end.50

cond.end.50:                                      ; preds = %cond.false.49, %cond.true.47
  %cond51 = phi i32 [ %50, %cond.true.47 ], [ 0, %cond.false.49 ]
  store i32 %cond51, i32* %code, align 4, !tbaa !5
  %52 = load i32, i32* %code, align 4, !tbaa !5
  %cmp52 = icmp slt i32 %52, 0
  br i1 %cmp52, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %cond.end.50
  %53 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %53, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.55:                                        ; preds = %cond.end.50
  %54 = load i8*, i8** %dp, align 8, !tbaa !1
  store i8* %54, i8** %dp0, align 8, !tbaa !1
  %55 = load i8*, i8** %dp, align 8, !tbaa !1
  %arrayidx56 = getelementptr inbounds i8, i8* %55, i64 1
  store i8 3, i8* %arrayidx56, align 1, !tbaa !9
  %56 = load i8*, i8** %dp, align 8, !tbaa !1
  %add.ptr57 = getelementptr inbounds i8, i8* %56, i64 2
  store i8* %add.ptr57, i8** %dp, align 8, !tbaa !1
  br label %do.body.58

do.body.58:                                       ; preds = %if.end.55
  %57 = load i32, i32* %ht_size, align 4, !tbaa !5
  %cmp59 = icmp ult i32 %57, 128
  br i1 %cmp59, label %if.then.61, label %if.else.64

if.then.61:                                       ; preds = %do.body.58
  %58 = load i32, i32* %ht_size, align 4, !tbaa !5
  %conv62 = trunc i32 %58 to i8
  %59 = load i8*, i8** %dp, align 8, !tbaa !1
  %incdec.ptr63 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %incdec.ptr63, i8** %dp, align 8, !tbaa !1
  store i8 %conv62, i8* %59, align 1, !tbaa !9
  br label %if.end.78

if.else.64:                                       ; preds = %do.body.58
  %60 = load i32, i32* %ht_size, align 4, !tbaa !5
  %cmp65 = icmp ult i32 %60, 16384
  br i1 %cmp65, label %if.then.67, label %if.else.75

if.then.67:                                       ; preds = %if.else.64
  %61 = load i32, i32* %ht_size, align 4, !tbaa !5
  %and68 = and i32 %61, 127
  %or69 = or i32 128, %and68
  %conv70 = trunc i32 %or69 to i8
  %62 = load i8*, i8** %dp, align 8, !tbaa !1
  %incdec.ptr71 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %incdec.ptr71, i8** %dp, align 8, !tbaa !1
  store i8 %conv70, i8* %62, align 1, !tbaa !9
  %63 = load i32, i32* %ht_size, align 4, !tbaa !5
  %shr72 = lshr i32 %63, 7
  %conv73 = trunc i32 %shr72 to i8
  %64 = load i8*, i8** %dp, align 8, !tbaa !1
  %incdec.ptr74 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %incdec.ptr74, i8** %dp, align 8, !tbaa !1
  store i8 %conv73, i8* %64, align 1, !tbaa !9
  br label %if.end.77

if.else.75:                                       ; preds = %if.else.64
  %65 = load i32, i32* %ht_size, align 4, !tbaa !5
  %66 = load i8*, i8** %dp, align 8, !tbaa !1
  %call76 = call i8* @enc_u_put_uint(i32 %65, i8* %66) #6
  store i8* %call76, i8** %dp, align 8, !tbaa !1
  br label %if.end.77

if.end.77:                                        ; preds = %if.else.75, %if.then.67
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %if.then.61
  br label %do.cond.79

do.cond.79:                                       ; preds = %if.end.78
  br label %do.end.80

do.end.80:                                        ; preds = %do.cond.79
  %67 = load i8*, i8** %dp, align 8, !tbaa !1
  store i8* %67, i8** %pht_buff, align 8, !tbaa !1
  br label %if.end.81

if.end.81:                                        ; preds = %do.end.80, %if.end.39
  %68 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht.addr, align 8, !tbaa !1
  %69 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %70 = bitcast %struct.gx_device_clist_writer_s* %69 to %struct.gx_device_s*
  %71 = load i8*, i8** %pht_buff, align 8, !tbaa !1
  %call82 = call i32 @gx_ht_write(%struct.gx_device_halftone_s* %68, %struct.gx_device_s* %70, i8* %71, i32* %ht_size) #6
  store i32 %call82, i32* %code, align 4, !tbaa !5
  %72 = load i32, i32* %code, align 4, !tbaa !5
  %cmp83 = icmp slt i32 %72, 0
  br i1 %cmp83, label %if.then.85, label %if.end.94

if.then.85:                                       ; preds = %if.end.81
  %73 = load i32, i32* %ht_size, align 4, !tbaa !5
  %cmp86 = icmp ugt i32 %73, 4064
  br i1 %cmp86, label %if.then.88, label %if.else.92

if.then.88:                                       ; preds = %if.then.85
  %74 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %bandlist_memory89 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %74, i32 0, i32 45
  %75 = load %struct.gs_memory_s*, %struct.gs_memory_s** %bandlist_memory89, align 8, !tbaa !288
  %procs90 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %75, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs90, i32 0, i32 2
  %76 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !215
  %77 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %bandlist_memory91 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %77, i32 0, i32 45
  %78 = load %struct.gs_memory_s*, %struct.gs_memory_s** %bandlist_memory91, align 8, !tbaa !288
  %79 = load i8*, i8** %pht_buff, align 8, !tbaa !1
  call void %76(%struct.gs_memory_s* %78, i8* %79, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0)) #6
  br label %if.end.93

if.else.92:                                       ; preds = %if.then.85
  %80 = load i8*, i8** %dp0, align 8, !tbaa !1
  %81 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %cnext = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %81, i32 0, i32 68
  store i8* %80, i8** %cnext, align 8, !tbaa !287
  br label %if.end.93

if.end.93:                                        ; preds = %if.else.92, %if.then.88
  %82 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %82, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.94:                                        ; preds = %if.end.81
  %83 = load i32, i32* %ht_size, align 4, !tbaa !5
  %cmp95 = icmp ugt i32 %83, 4064
  br i1 %cmp95, label %if.then.97, label %if.end.170

if.then.97:                                       ; preds = %if.end.94
  %84 = bitcast i8** %pbuff to i8*
  call void @llvm.lifetime.start(i64 8, i8* %84) #1
  %85 = load i8*, i8** %pht_buff, align 8, !tbaa !1
  store i8* %85, i8** %pbuff, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %if.end.165, %if.then.97
  %86 = load i32, i32* %ht_size, align 4, !tbaa !5
  %cmp98 = icmp ugt i32 %86, 0
  br i1 %cmp98, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %87 = load i32, i32* %code, align 4, !tbaa !5
  %cmp100 = icmp sge i32 %87, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %88 = phi i1 [ false, %while.cond ], [ %cmp100, %land.rhs ]
  br i1 %88, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %89 = bitcast i32* %seg_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %89) #1
  %90 = bitcast i32* %tmp_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %90) #1
  %91 = load i32, i32* %ht_size, align 4, !tbaa !5
  %cmp102 = icmp ugt i32 %91, 4064
  br i1 %cmp102, label %cond.true.104, label %cond.false.105

cond.true.104:                                    ; preds = %while.body
  br label %cond.end.106

cond.false.105:                                   ; preds = %while.body
  %92 = load i32, i32* %ht_size, align 4, !tbaa !5
  br label %cond.end.106

cond.end.106:                                     ; preds = %cond.false.105, %cond.true.104
  %cond107 = phi i32 [ 4064, %cond.true.104 ], [ %92, %cond.false.105 ]
  store i32 %cond107, i32* %seg_size, align 4, !tbaa !5
  %93 = load i32, i32* %seg_size, align 4, !tbaa !5
  %cmp108 = icmp ult i32 %93, 128
  br i1 %cmp108, label %cond.true.110, label %cond.false.111

cond.true.110:                                    ; preds = %cond.end.106
  br label %cond.end.119

cond.false.111:                                   ; preds = %cond.end.106
  %94 = load i32, i32* %seg_size, align 4, !tbaa !5
  %cmp112 = icmp ult i32 %94, 16384
  br i1 %cmp112, label %cond.true.114, label %cond.false.115

cond.true.114:                                    ; preds = %cond.false.111
  br label %cond.end.117

cond.false.115:                                   ; preds = %cond.false.111
  %95 = load i32, i32* %seg_size, align 4, !tbaa !5
  %call116 = call i32 @enc_u_size_uint(i32 %95) #6
  br label %cond.end.117

cond.end.117:                                     ; preds = %cond.false.115, %cond.true.114
  %cond118 = phi i32 [ 2, %cond.true.114 ], [ %call116, %cond.false.115 ]
  br label %cond.end.119

cond.end.119:                                     ; preds = %cond.end.117, %cond.true.110
  %cond120 = phi i32 [ 1, %cond.true.110 ], [ %cond118, %cond.end.117 ]
  %add121 = add nsw i32 2, %cond120
  %96 = load i32, i32* %seg_size, align 4, !tbaa !5
  %add122 = add nsw i32 %add121, %96
  store i32 %add122, i32* %tmp_size, align 4, !tbaa !5
  %97 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %98 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %nbands123 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %98, i32 0, i32 59
  %99 = load i32, i32* %nbands123, align 4, !tbaa !285
  %sub124 = sub nsw i32 %99, 1
  %100 = load i32, i32* %tmp_size, align 4, !tbaa !5
  %call125 = call i8* @cmd_put_range_op(%struct.gx_device_clist_writer_s* %97, i32 0, i32 %sub124, i32 %100) #6
  store i8* %call125, i8** %dp, align 8, !tbaa !1
  %cmp126 = icmp eq i8* %call125, null
  br i1 %cmp126, label %cond.true.128, label %cond.false.130

cond.true.128:                                    ; preds = %cond.end.119
  %101 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %error_code129 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %101, i32 0, i32 65
  %102 = load i32, i32* %error_code129, align 4, !tbaa !77
  br label %cond.end.131

cond.false.130:                                   ; preds = %cond.end.119
  %103 = load i8*, i8** %dp, align 8, !tbaa !1
  store i8 -33, i8* %103, align 1, !tbaa !9
  br label %cond.end.131

cond.end.131:                                     ; preds = %cond.false.130, %cond.true.128
  %cond132 = phi i32 [ %102, %cond.true.128 ], [ 0, %cond.false.130 ]
  store i32 %cond132, i32* %code, align 4, !tbaa !5
  %104 = load i32, i32* %code, align 4, !tbaa !5
  %cmp133 = icmp sge i32 %104, 0
  br i1 %cmp133, label %if.then.135, label %if.end.165

if.then.135:                                      ; preds = %cond.end.131
  %105 = load i8*, i8** %dp, align 8, !tbaa !1
  %arrayidx136 = getelementptr inbounds i8, i8* %105, i64 1
  store i8 3, i8* %arrayidx136, align 1, !tbaa !9
  %106 = load i8*, i8** %dp, align 8, !tbaa !1
  %add.ptr137 = getelementptr inbounds i8, i8* %106, i64 2
  store i8* %add.ptr137, i8** %dp, align 8, !tbaa !1
  br label %do.body.138

do.body.138:                                      ; preds = %if.then.135
  %107 = load i32, i32* %seg_size, align 4, !tbaa !5
  %cmp139 = icmp ult i32 %107, 128
  br i1 %cmp139, label %if.then.141, label %if.else.144

if.then.141:                                      ; preds = %do.body.138
  %108 = load i32, i32* %seg_size, align 4, !tbaa !5
  %conv142 = trunc i32 %108 to i8
  %109 = load i8*, i8** %dp, align 8, !tbaa !1
  %incdec.ptr143 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %incdec.ptr143, i8** %dp, align 8, !tbaa !1
  store i8 %conv142, i8* %109, align 1, !tbaa !9
  br label %if.end.158

if.else.144:                                      ; preds = %do.body.138
  %110 = load i32, i32* %seg_size, align 4, !tbaa !5
  %cmp145 = icmp ult i32 %110, 16384
  br i1 %cmp145, label %if.then.147, label %if.else.155

if.then.147:                                      ; preds = %if.else.144
  %111 = load i32, i32* %seg_size, align 4, !tbaa !5
  %and148 = and i32 %111, 127
  %or149 = or i32 128, %and148
  %conv150 = trunc i32 %or149 to i8
  %112 = load i8*, i8** %dp, align 8, !tbaa !1
  %incdec.ptr151 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %incdec.ptr151, i8** %dp, align 8, !tbaa !1
  store i8 %conv150, i8* %112, align 1, !tbaa !9
  %113 = load i32, i32* %seg_size, align 4, !tbaa !5
  %shr152 = ashr i32 %113, 7
  %conv153 = trunc i32 %shr152 to i8
  %114 = load i8*, i8** %dp, align 8, !tbaa !1
  %incdec.ptr154 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %incdec.ptr154, i8** %dp, align 8, !tbaa !1
  store i8 %conv153, i8* %114, align 1, !tbaa !9
  br label %if.end.157

if.else.155:                                      ; preds = %if.else.144
  %115 = load i32, i32* %seg_size, align 4, !tbaa !5
  %116 = load i8*, i8** %dp, align 8, !tbaa !1
  %call156 = call i8* @enc_u_put_uint(i32 %115, i8* %116) #6
  store i8* %call156, i8** %dp, align 8, !tbaa !1
  br label %if.end.157

if.end.157:                                       ; preds = %if.else.155, %if.then.147
  br label %if.end.158

if.end.158:                                       ; preds = %if.end.157, %if.then.141
  br label %do.cond.159

do.cond.159:                                      ; preds = %if.end.158
  br label %do.end.160

do.end.160:                                       ; preds = %do.cond.159
  %117 = load i8*, i8** %dp, align 8, !tbaa !1
  %118 = load i8*, i8** %pbuff, align 8, !tbaa !1
  %119 = load i32, i32* %seg_size, align 4, !tbaa !5
  %conv161 = sext i32 %119 to i64
  %call162 = call i8* @memcpy(i8* %117, i8* %118, i64 %conv161) #8
  %120 = load i32, i32* %seg_size, align 4, !tbaa !5
  %121 = load i32, i32* %ht_size, align 4, !tbaa !5
  %sub163 = sub i32 %121, %120
  store i32 %sub163, i32* %ht_size, align 4, !tbaa !5
  %122 = load i32, i32* %seg_size, align 4, !tbaa !5
  %123 = load i8*, i8** %pbuff, align 8, !tbaa !1
  %idx.ext = sext i32 %122 to i64
  %add.ptr164 = getelementptr inbounds i8, i8* %123, i64 %idx.ext
  store i8* %add.ptr164, i8** %pbuff, align 8, !tbaa !1
  br label %if.end.165

if.end.165:                                       ; preds = %do.end.160, %cond.end.131
  %124 = bitcast i32* %tmp_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %124) #1
  %125 = bitcast i32* %seg_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %125) #1
  br label %while.cond

while.end:                                        ; preds = %land.end
  %126 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %bandlist_memory166 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %126, i32 0, i32 45
  %127 = load %struct.gs_memory_s*, %struct.gs_memory_s** %bandlist_memory166, align 8, !tbaa !288
  %procs167 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %127, i32 0, i32 1
  %free_object168 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs167, i32 0, i32 2
  %128 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object168, align 8, !tbaa !215
  %129 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %bandlist_memory169 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %129, i32 0, i32 45
  %130 = load %struct.gs_memory_s*, %struct.gs_memory_s** %bandlist_memory169, align 8, !tbaa !288
  %131 = load i8*, i8** %pht_buff, align 8, !tbaa !1
  call void %128(%struct.gs_memory_s* %130, i8* %131, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0)) #6
  store i8* null, i8** %pht_buff, align 8, !tbaa !1
  %132 = bitcast i8** %pbuff to i8*
  call void @llvm.lifetime.end(i64 8, i8* %132) #1
  br label %if.end.170

if.end.170:                                       ; preds = %while.end, %if.end.94
  %133 = load i32, i32* %code, align 4, !tbaa !5
  %cmp171 = icmp sge i32 %133, 0
  br i1 %cmp171, label %if.then.173, label %if.end.174

if.then.173:                                      ; preds = %if.end.170
  %134 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht.addr, align 8, !tbaa !1
  %id = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %134, i32 0, i32 2
  %135 = load i64, i64* %id, align 8, !tbaa !289
  %136 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %device_halftone_id = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %136, i32 0, i32 92
  store i64 %135, i64* %device_halftone_id, align 8, !tbaa !294
  br label %if.end.174

if.end.174:                                       ; preds = %if.then.173, %if.end.170
  %137 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %137, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.174, %if.end.93, %if.then.54, %if.then.38, %if.then.16, %if.then
  %138 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %138) #1
  %139 = bitcast i8** %pht_buff to i8*
  call void @llvm.lifetime.end(i64 8, i8* %139) #1
  %140 = bitcast i8** %dp0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %140) #1
  %141 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %141) #1
  %142 = bitcast i32* %req_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %142) #1
  %143 = bitcast i32* %ht_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %143) #1
  %144 = load i32, i32* %retval
  ret i32 %144
}

declare i32 @gx_ht_write(%struct.gx_device_halftone_s*, %struct.gx_device_s*, i8*, i32*) #2

declare i32 @enc_u_size_uint(i32) #2

declare i8* @enc_u_put_uint(i32, i8*) #2

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #4

; Function Attrs: nounwind uwtable
define i32 @cmd_put_color_mapping(%struct.gx_device_clist_writer_s* %cldev, %struct.gs_imager_state_s* %pis) #0 {
entry:
  %retval = alloca i32, align 4
  %cldev.addr = alloca %struct.gx_device_clist_writer_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %code = alloca i32, align 4
  %pdht = alloca %struct.gx_device_halftone_s*, align 8
  %cleanup.dest.slot = alloca i32
  %which = alloca i32, align 4
  %send_default_comp = alloca i32, align 4
  %i = alloca i32, align 4
  %default_comp_id = alloca i64, align 8
  %xfer_ids = alloca [4 x i64], align 16
  %dummy = alloca i64, align 8
  store %struct.gx_device_clist_writer_s* %cldev, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.gx_device_halftone_s** %pdht to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %dev_ht = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %2, i32 0, i32 41
  %3 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %dev_ht, align 8, !tbaa !295
  store %struct.gx_device_halftone_s* %3, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  %4 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  %tobool = icmp ne %struct.gx_device_halftone_s* %4, null
  br i1 %tobool, label %land.lhs.true, label %if.end.5

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  %id = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %5, i32 0, i32 2
  %6 = load i64, i64* %id, align 8, !tbaa !289
  %7 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %device_halftone_id = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %7, i32 0, i32 92
  %8 = load i64, i64* %device_halftone_id, align 8, !tbaa !294
  %cmp = icmp ne i64 %6, %8
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %land.lhs.true
  %9 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %10 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  %call = call i32 @cmd_put_halftone(%struct.gx_device_clist_writer_s* %9, %struct.gx_device_halftone_s* %10) #6
  store i32 %call, i32* %code, align 4, !tbaa !5
  %11 = load i32, i32* %code, align 4, !tbaa !5
  %cmp1 = icmp slt i32 %11, 0
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %12 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.170

if.end:                                           ; preds = %if.then
  %13 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  %id3 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %13, i32 0, i32 2
  %14 = load i64, i64* %id3, align 8, !tbaa !289
  %15 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %device_halftone_id4 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %15, i32 0, i32 92
  store i64 %14, i64* %device_halftone_id4, align 8, !tbaa !294
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %land.lhs.true, %entry
  %16 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %17 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %black_generation = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %17, i32 0, i32 44
  %18 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %black_generation, align 8, !tbaa !296
  %19 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %black_generation_id = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %19, i32 0, i32 90
  %call6 = call i32 @cmd_put_color_map(%struct.gx_device_clist_writer_s* %16, i32 5, i32 0, %struct.gx_transfer_map_s* %18, i64* %black_generation_id) #6
  store i32 %call6, i32* %code, align 4, !tbaa !5
  %20 = load i32, i32* %code, align 4, !tbaa !5
  %cmp7 = icmp slt i32 %20, 0
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.5
  %21 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.170

if.end.9:                                         ; preds = %if.end.5
  %22 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %23 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %undercolor_removal = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %23, i32 0, i32 45
  %24 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %undercolor_removal, align 8, !tbaa !297
  %25 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %undercolor_removal_id = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %25, i32 0, i32 91
  %call10 = call i32 @cmd_put_color_map(%struct.gx_device_clist_writer_s* %22, i32 6, i32 0, %struct.gx_transfer_map_s* %24, i64* %undercolor_removal_id) #6
  store i32 %call10, i32* %code, align 4, !tbaa !5
  %26 = load i32, i32* %code, align 4, !tbaa !5
  %cmp11 = icmp slt i32 %26, 0
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.9
  %27 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %27, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.170

if.end.13:                                        ; preds = %if.end.9
  %28 = bitcast i32* %which to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #1
  store i32 0, i32* %which, align 4, !tbaa !5
  %29 = bitcast i32* %send_default_comp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #1
  store i32 0, i32* %send_default_comp, align 4, !tbaa !5
  %30 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %30) #1
  %31 = bitcast i64* %default_comp_id to i8*
  call void @llvm.lifetime.start(i64 8, i8* %31) #1
  %32 = bitcast [4 x i64]* %xfer_ids to i8*
  call void @llvm.lifetime.start(i64 32, i8* %32) #1
  %33 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %33, i32 0, i32 46
  %red = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer, i32 0, i32 1
  %34 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %red, align 8, !tbaa !298
  %cmp14 = icmp ne %struct.gx_transfer_map_s* %34, null
  br i1 %cmp14, label %land.lhs.true.15, label %cond.false

land.lhs.true.15:                                 ; preds = %if.end.13
  %35 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer16 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %35, i32 0, i32 46
  %red_component_num = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer16, i32 0, i32 0
  %36 = load i32, i32* %red_component_num, align 4, !tbaa !299
  %cmp17 = icmp sge i32 %36, 0
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.15
  %37 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer18 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %37, i32 0, i32 46
  %red19 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer18, i32 0, i32 1
  %38 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %red19, align 8, !tbaa !298
  %id20 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %38, i32 0, i32 3
  %39 = load i64, i64* %id20, align 8, !tbaa !300
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.15, %if.end.13
  %40 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer21 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %40, i32 0, i32 46
  %gray = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer21, i32 0, i32 7
  %41 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %gray, align 8, !tbaa !303
  %id22 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %41, i32 0, i32 3
  %42 = load i64, i64* %id22, align 8, !tbaa !300
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %39, %cond.true ], [ %42, %cond.false ]
  %arrayidx = getelementptr inbounds [4 x i64], [4 x i64]* %xfer_ids, i32 0, i64 0
  store i64 %cond, i64* %arrayidx, align 8, !tbaa !7
  %43 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer23 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %43, i32 0, i32 46
  %green = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer23, i32 0, i32 3
  %44 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %green, align 8, !tbaa !304
  %cmp24 = icmp ne %struct.gx_transfer_map_s* %44, null
  br i1 %cmp24, label %land.lhs.true.25, label %cond.false.32

land.lhs.true.25:                                 ; preds = %cond.end
  %45 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer26 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %45, i32 0, i32 46
  %green_component_num = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer26, i32 0, i32 2
  %46 = load i32, i32* %green_component_num, align 4, !tbaa !305
  %cmp27 = icmp sge i32 %46, 0
  br i1 %cmp27, label %cond.true.28, label %cond.false.32

cond.true.28:                                     ; preds = %land.lhs.true.25
  %47 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer29 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %47, i32 0, i32 46
  %green30 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer29, i32 0, i32 3
  %48 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %green30, align 8, !tbaa !304
  %id31 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %48, i32 0, i32 3
  %49 = load i64, i64* %id31, align 8, !tbaa !300
  br label %cond.end.36

cond.false.32:                                    ; preds = %land.lhs.true.25, %cond.end
  %50 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer33 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %50, i32 0, i32 46
  %gray34 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer33, i32 0, i32 7
  %51 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %gray34, align 8, !tbaa !303
  %id35 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %51, i32 0, i32 3
  %52 = load i64, i64* %id35, align 8, !tbaa !300
  br label %cond.end.36

cond.end.36:                                      ; preds = %cond.false.32, %cond.true.28
  %cond37 = phi i64 [ %49, %cond.true.28 ], [ %52, %cond.false.32 ]
  %arrayidx38 = getelementptr inbounds [4 x i64], [4 x i64]* %xfer_ids, i32 0, i64 1
  store i64 %cond37, i64* %arrayidx38, align 8, !tbaa !7
  %53 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer39 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %53, i32 0, i32 46
  %blue = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer39, i32 0, i32 5
  %54 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %blue, align 8, !tbaa !306
  %cmp40 = icmp ne %struct.gx_transfer_map_s* %54, null
  br i1 %cmp40, label %land.lhs.true.41, label %cond.false.48

land.lhs.true.41:                                 ; preds = %cond.end.36
  %55 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer42 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %55, i32 0, i32 46
  %blue_component_num = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer42, i32 0, i32 4
  %56 = load i32, i32* %blue_component_num, align 4, !tbaa !307
  %cmp43 = icmp sge i32 %56, 0
  br i1 %cmp43, label %cond.true.44, label %cond.false.48

cond.true.44:                                     ; preds = %land.lhs.true.41
  %57 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer45 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %57, i32 0, i32 46
  %blue46 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer45, i32 0, i32 5
  %58 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %blue46, align 8, !tbaa !306
  %id47 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %58, i32 0, i32 3
  %59 = load i64, i64* %id47, align 8, !tbaa !300
  br label %cond.end.52

cond.false.48:                                    ; preds = %land.lhs.true.41, %cond.end.36
  %60 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer49 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %60, i32 0, i32 46
  %gray50 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer49, i32 0, i32 7
  %61 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %gray50, align 8, !tbaa !303
  %id51 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %61, i32 0, i32 3
  %62 = load i64, i64* %id51, align 8, !tbaa !300
  br label %cond.end.52

cond.end.52:                                      ; preds = %cond.false.48, %cond.true.44
  %cond53 = phi i64 [ %59, %cond.true.44 ], [ %62, %cond.false.48 ]
  %arrayidx54 = getelementptr inbounds [4 x i64], [4 x i64]* %xfer_ids, i32 0, i64 2
  store i64 %cond53, i64* %arrayidx54, align 8, !tbaa !7
  %63 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer55 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %63, i32 0, i32 46
  %gray56 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer55, i32 0, i32 7
  %64 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %gray56, align 8, !tbaa !303
  %id57 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %64, i32 0, i32 3
  %65 = load i64, i64* %id57, align 8, !tbaa !300
  store i64 %65, i64* %default_comp_id, align 8, !tbaa !7
  %arrayidx58 = getelementptr inbounds [4 x i64], [4 x i64]* %xfer_ids, i32 0, i64 3
  store i64 %65, i64* %arrayidx58, align 8, !tbaa !7
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.52
  %66 = load i32, i32* %i, align 4, !tbaa !5
  %conv = sext i32 %66 to i64
  %cmp59 = icmp ult i64 %conv, 4
  br i1 %cmp59, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %67 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %67 to i64
  %arrayidx61 = getelementptr inbounds [4 x i64], [4 x i64]* %xfer_ids, i32 0, i64 %idxprom
  %68 = load i64, i64* %arrayidx61, align 8, !tbaa !7
  %69 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom62 = sext i32 %69 to i64
  %70 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %transfer_ids = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %70, i32 0, i32 89
  %arrayidx63 = getelementptr inbounds [4 x i64], [4 x i64]* %transfer_ids, i32 0, i64 %idxprom62
  %71 = load i64, i64* %arrayidx63, align 8, !tbaa !7
  %cmp64 = icmp ne i64 %68, %71
  br i1 %cmp64, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %for.body
  %72 = load i32, i32* %i, align 4, !tbaa !5
  %shl = shl i32 1, %72
  %73 = load i32, i32* %which, align 4, !tbaa !5
  %or = or i32 %73, %shl
  store i32 %or, i32* %which, align 4, !tbaa !5
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.66, %for.body
  %74 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom68 = sext i32 %74 to i64
  %arrayidx69 = getelementptr inbounds [4 x i64], [4 x i64]* %xfer_ids, i32 0, i64 %idxprom68
  %75 = load i64, i64* %arrayidx69, align 8, !tbaa !7
  %76 = load i64, i64* %default_comp_id, align 8, !tbaa !7
  %cmp70 = icmp eq i64 %75, %76
  br i1 %cmp70, label %land.lhs.true.72, label %if.end.79

land.lhs.true.72:                                 ; preds = %if.end.67
  %77 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom73 = sext i32 %77 to i64
  %78 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %transfer_ids74 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %78, i32 0, i32 89
  %arrayidx75 = getelementptr inbounds [4 x i64], [4 x i64]* %transfer_ids74, i32 0, i64 %idxprom73
  %79 = load i64, i64* %arrayidx75, align 8, !tbaa !7
  %80 = load i64, i64* %default_comp_id, align 8, !tbaa !7
  %cmp76 = icmp ne i64 %79, %80
  br i1 %cmp76, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %land.lhs.true.72
  store i32 1, i32* %send_default_comp, align 4, !tbaa !5
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.78, %land.lhs.true.72, %if.end.67
  br label %for.inc

for.inc:                                          ; preds = %if.end.79
  %81 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %81, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %82 = load i32, i32* %which, align 4, !tbaa !5
  %cmp80 = icmp eq i32 %82, 0
  br i1 %cmp80, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %for.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.163

if.end.83:                                        ; preds = %for.end
  %83 = load i32, i32* %send_default_comp, align 4, !tbaa !5
  %tobool84 = icmp ne i32 %83, 0
  br i1 %tobool84, label %if.then.89, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.83
  %84 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %transfer_ids85 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %84, i32 0, i32 89
  %arrayidx86 = getelementptr inbounds [4 x i64], [4 x i64]* %transfer_ids85, i32 0, i64 0
  %85 = load i64, i64* %arrayidx86, align 8, !tbaa !7
  %86 = load i64, i64* %default_comp_id, align 8, !tbaa !7
  %cmp87 = icmp ne i64 %85, %86
  br i1 %cmp87, label %if.then.89, label %if.end.108

if.then.89:                                       ; preds = %lor.lhs.false, %if.end.83
  %87 = bitcast i64* %dummy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %87) #1
  store i64 0, i64* %dummy, align 8, !tbaa !7
  %88 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %89 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer90 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %89, i32 0, i32 46
  %gray91 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer90, i32 0, i32 7
  %90 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %gray91, align 8, !tbaa !303
  %call92 = call i32 @cmd_put_color_map(%struct.gx_device_clist_writer_s* %88, i32 0, i32 0, %struct.gx_transfer_map_s* %90, i64* %dummy) #6
  store i32 %call92, i32* %code, align 4, !tbaa !5
  %91 = load i32, i32* %code, align 4, !tbaa !5
  %cmp93 = icmp slt i32 %91, 0
  br i1 %cmp93, label %if.then.95, label %if.end.96

if.then.95:                                       ; preds = %if.then.89
  %92 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %92, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.96:                                        ; preds = %if.then.89
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.97

for.cond.97:                                      ; preds = %for.inc.105, %if.end.96
  %93 = load i32, i32* %i, align 4, !tbaa !5
  %conv98 = sext i32 %93 to i64
  %cmp99 = icmp ult i64 %conv98, 4
  br i1 %cmp99, label %for.body.101, label %for.end.107

for.body.101:                                     ; preds = %for.cond.97
  %94 = load i64, i64* %default_comp_id, align 8, !tbaa !7
  %95 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom102 = sext i32 %95 to i64
  %96 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %transfer_ids103 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %96, i32 0, i32 89
  %arrayidx104 = getelementptr inbounds [4 x i64], [4 x i64]* %transfer_ids103, i32 0, i64 %idxprom102
  store i64 %94, i64* %arrayidx104, align 8, !tbaa !7
  br label %for.inc.105

for.inc.105:                                      ; preds = %for.body.101
  %97 = load i32, i32* %i, align 4, !tbaa !5
  %inc106 = add nsw i32 %97, 1
  store i32 %inc106, i32* %i, align 4, !tbaa !5
  br label %for.cond.97

for.end.107:                                      ; preds = %for.cond.97
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.107, %if.then.95
  %98 = bitcast i64* %dummy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %98) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.163 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.108

if.end.108:                                       ; preds = %cleanup.cont, %lor.lhs.false
  %99 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %transfer_ids109 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %99, i32 0, i32 89
  %arrayidx110 = getelementptr inbounds [4 x i64], [4 x i64]* %transfer_ids109, i32 0, i64 0
  %100 = load i64, i64* %arrayidx110, align 8, !tbaa !7
  %arrayidx111 = getelementptr inbounds [4 x i64], [4 x i64]* %xfer_ids, i32 0, i64 0
  %101 = load i64, i64* %arrayidx111, align 8, !tbaa !7
  %cmp112 = icmp ne i64 %100, %101
  br i1 %cmp112, label %if.then.114, label %if.end.126

if.then.114:                                      ; preds = %if.end.108
  %102 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %103 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer115 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %103, i32 0, i32 46
  %red_component_num116 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer115, i32 0, i32 0
  %104 = load i32, i32* %red_component_num116, align 4, !tbaa !299
  %105 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer117 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %105, i32 0, i32 46
  %red118 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer117, i32 0, i32 1
  %106 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %red118, align 8, !tbaa !298
  %107 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %transfer_ids119 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %107, i32 0, i32 89
  %arrayidx120 = getelementptr inbounds [4 x i64], [4 x i64]* %transfer_ids119, i32 0, i64 0
  %call121 = call i32 @cmd_put_color_map(%struct.gx_device_clist_writer_s* %102, i32 1, i32 %104, %struct.gx_transfer_map_s* %106, i64* %arrayidx120) #6
  store i32 %call121, i32* %code, align 4, !tbaa !5
  %108 = load i32, i32* %code, align 4, !tbaa !5
  %cmp122 = icmp slt i32 %108, 0
  br i1 %cmp122, label %if.then.124, label %if.end.125

if.then.124:                                      ; preds = %if.then.114
  %109 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %109, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.163

if.end.125:                                       ; preds = %if.then.114
  br label %if.end.126

if.end.126:                                       ; preds = %if.end.125, %if.end.108
  %110 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %transfer_ids127 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %110, i32 0, i32 89
  %arrayidx128 = getelementptr inbounds [4 x i64], [4 x i64]* %transfer_ids127, i32 0, i64 1
  %111 = load i64, i64* %arrayidx128, align 8, !tbaa !7
  %arrayidx129 = getelementptr inbounds [4 x i64], [4 x i64]* %xfer_ids, i32 0, i64 1
  %112 = load i64, i64* %arrayidx129, align 8, !tbaa !7
  %cmp130 = icmp ne i64 %111, %112
  br i1 %cmp130, label %if.then.132, label %if.end.144

if.then.132:                                      ; preds = %if.end.126
  %113 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %114 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer133 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %114, i32 0, i32 46
  %green_component_num134 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer133, i32 0, i32 2
  %115 = load i32, i32* %green_component_num134, align 4, !tbaa !305
  %116 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer135 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %116, i32 0, i32 46
  %green136 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer135, i32 0, i32 3
  %117 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %green136, align 8, !tbaa !304
  %118 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %transfer_ids137 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %118, i32 0, i32 89
  %arrayidx138 = getelementptr inbounds [4 x i64], [4 x i64]* %transfer_ids137, i32 0, i64 1
  %call139 = call i32 @cmd_put_color_map(%struct.gx_device_clist_writer_s* %113, i32 2, i32 %115, %struct.gx_transfer_map_s* %117, i64* %arrayidx138) #6
  store i32 %call139, i32* %code, align 4, !tbaa !5
  %119 = load i32, i32* %code, align 4, !tbaa !5
  %cmp140 = icmp slt i32 %119, 0
  br i1 %cmp140, label %if.then.142, label %if.end.143

if.then.142:                                      ; preds = %if.then.132
  %120 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %120, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.163

if.end.143:                                       ; preds = %if.then.132
  br label %if.end.144

if.end.144:                                       ; preds = %if.end.143, %if.end.126
  %121 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %transfer_ids145 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %121, i32 0, i32 89
  %arrayidx146 = getelementptr inbounds [4 x i64], [4 x i64]* %transfer_ids145, i32 0, i64 2
  %122 = load i64, i64* %arrayidx146, align 8, !tbaa !7
  %arrayidx147 = getelementptr inbounds [4 x i64], [4 x i64]* %xfer_ids, i32 0, i64 2
  %123 = load i64, i64* %arrayidx147, align 8, !tbaa !7
  %cmp148 = icmp ne i64 %122, %123
  br i1 %cmp148, label %if.then.150, label %if.end.162

if.then.150:                                      ; preds = %if.end.144
  %124 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %125 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer151 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %125, i32 0, i32 46
  %blue_component_num152 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer151, i32 0, i32 4
  %126 = load i32, i32* %blue_component_num152, align 4, !tbaa !307
  %127 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %set_transfer153 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %127, i32 0, i32 46
  %blue154 = getelementptr inbounds %struct.gx_transfer_s, %struct.gx_transfer_s* %set_transfer153, i32 0, i32 5
  %128 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %blue154, align 8, !tbaa !306
  %129 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %transfer_ids155 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %129, i32 0, i32 89
  %arrayidx156 = getelementptr inbounds [4 x i64], [4 x i64]* %transfer_ids155, i32 0, i64 2
  %call157 = call i32 @cmd_put_color_map(%struct.gx_device_clist_writer_s* %124, i32 3, i32 %126, %struct.gx_transfer_map_s* %128, i64* %arrayidx156) #6
  store i32 %call157, i32* %code, align 4, !tbaa !5
  %130 = load i32, i32* %code, align 4, !tbaa !5
  %cmp158 = icmp slt i32 %130, 0
  br i1 %cmp158, label %if.then.160, label %if.end.161

if.then.160:                                      ; preds = %if.then.150
  %131 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %131, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.163

if.end.161:                                       ; preds = %if.then.150
  br label %if.end.162

if.end.162:                                       ; preds = %if.end.161, %if.end.144
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.163

cleanup.163:                                      ; preds = %if.end.162, %if.then.160, %if.then.142, %if.then.124, %cleanup, %if.then.82
  %132 = bitcast [4 x i64]* %xfer_ids to i8*
  call void @llvm.lifetime.end(i64 32, i8* %132) #1
  %133 = bitcast i64* %default_comp_id to i8*
  call void @llvm.lifetime.end(i64 8, i8* %133) #1
  %134 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %134) #1
  %135 = bitcast i32* %send_default_comp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %135) #1
  %136 = bitcast i32* %which to i8*
  call void @llvm.lifetime.end(i64 4, i8* %136) #1
  %cleanup.dest.168 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.168, label %cleanup.170 [
    i32 0, label %cleanup.cont.169
  ]

cleanup.cont.169:                                 ; preds = %cleanup.163
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.170

cleanup.170:                                      ; preds = %cleanup.cont.169, %cleanup.163, %if.then.12, %if.then.8, %if.then.2
  %137 = bitcast %struct.gx_device_halftone_s** %pdht to i8*
  call void @llvm.lifetime.end(i64 8, i8* %137) #1
  %138 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %138) #1
  %139 = load i32, i32* %retval
  ret i32 %139
}

declare i32 @cmd_put_color_map(%struct.gx_device_clist_writer_s*, i32, i32, %struct.gx_transfer_map_s*, i64*) #2

declare %struct.gs_ptr_procs_s* @basic_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #2

declare void @basic_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @clist_image_plane_data(%struct.gx_image_enum_common_s* %info, %struct.gx_image_plane_s* %planes, i32 %yh, i32* %rows_used) #0 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct.gx_image_enum_common_s*, align 8
  %planes.addr = alloca %struct.gx_image_plane_s*, align 8
  %yh.addr = alloca i32, align 4
  %rows_used.addr = alloca i32*, align 8
  %dev = alloca %struct.gx_device_s*, align 8
  %cdev = alloca %struct.gx_device_clist_writer_s*, align 8
  %pie = alloca %struct.clist_image_enum_s*, align 8
  %sbox = alloca %struct.gs_rect_s, align 8
  %dbox = alloca %struct.gs_rect_s, align 8
  %y_orig = alloca i32, align 4
  %yh_used = alloca i32, align 4
  %y0 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %ry = alloca i32, align 4
  %rheight = alloca i32, align 4
  %code = alloca i32, align 4
  %re = alloca %struct.cmd_rects_enum_s, align 8
  %found_color = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %ry0 = alloca i32, align 4
  %ry1 = alloca i32, align 4
  %band_height0 = alloca i32, align 4
  %bbox = alloca %struct.gs_int_rect_s, align 4
  %ibox = alloca %struct.gs_int_rect_s, align 4
  %entire_box = alloca %struct.gs_int_rect_s, align 4
  %band_ymax = alloca i32, align 4
  %band_ymin = alloca i32, align 4
  %lop = alloca i32, align 4
  %dp = alloca i8*, align 8
  %bp = alloca i8*, align 8
  %len = alloca i32, align 4
  %image_op = alloca i8, align 1
  %want_known = alloca i32, align 4
  %bx0 = alloca i32, align 4
  %bx1 = alloca i32, align 4
  %by0 = alloca i32, align 4
  %by1 = alloca i32, align 4
  %bpp = alloca i32, align 4
  %num_planes463 = alloca i32, align 4
  %offsets = alloca [65 x i32], align 16
  %i465 = alloca i32, align 4
  %iy = alloca i32, align 4
  %ih = alloca i32, align 4
  %xskip = alloca i32, align 4
  %xoff = alloca i32, align 4
  %nrows = alloca i32, align 4
  %bytes_per_plane = alloca i32, align 4
  %bytes_per_row = alloca i32, align 4
  %rows_per_cmd = alloca i32, align 4
  %dev_profile = alloca %struct.cmm_dev_profile_s*, align 8
  store %struct.gx_image_enum_common_s* %info, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  store %struct.gx_image_plane_s* %planes, %struct.gx_image_plane_s** %planes.addr, align 8, !tbaa !1
  store i32 %yh, i32* %yh.addr, align 4, !tbaa !5
  store i32* %rows_used, i32** %rows_used.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  %dev1 = getelementptr inbounds %struct.gx_image_enum_common_s, %struct.gx_image_enum_common_s* %1, i32 0, i32 2
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev1, align 8, !tbaa !308
  store %struct.gx_device_s* %2, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_clist_writer_s** %cdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %5 = bitcast %struct.gx_device_s* %4 to %union.gx_device_clist_s*
  %writer = bitcast %union.gx_device_clist_s* %5 to %struct.gx_device_clist_writer_s*
  store %struct.gx_device_clist_writer_s* %writer, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %6 = bitcast %struct.clist_image_enum_s** %pie to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  %8 = bitcast %struct.gx_image_enum_common_s* %7 to %struct.clist_image_enum_s*
  store %struct.clist_image_enum_s* %8, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %9 = bitcast %struct.gs_rect_s* %sbox to i8*
  call void @llvm.lifetime.start(i64 32, i8* %9) #1
  %10 = bitcast %struct.gs_rect_s* %dbox to i8*
  call void @llvm.lifetime.start(i64 32, i8* %10) #1
  %11 = bitcast i32* %y_orig to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %y = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %12, i32 0, i32 25
  %13 = load i32, i32* %y, align 4, !tbaa !198
  store i32 %13, i32* %y_orig, align 4, !tbaa !5
  %14 = bitcast i32* %yh_used to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load i32, i32* %yh.addr, align 4, !tbaa !5
  %16 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %rect = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %16, i32 0, i32 11
  %q = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 1
  %y2 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q, i32 0, i32 1
  %17 = load i32, i32* %y2, align 4, !tbaa !152
  %18 = load i32, i32* %y_orig, align 4, !tbaa !5
  %sub = sub nsw i32 %17, %18
  %cmp = icmp slt i32 %15, %sub
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %19 = load i32, i32* %yh.addr, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %entry
  %20 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %rect3 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %20, i32 0, i32 11
  %q4 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect3, i32 0, i32 1
  %y5 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q4, i32 0, i32 1
  %21 = load i32, i32* %y5, align 4, !tbaa !152
  %22 = load i32, i32* %y_orig, align 4, !tbaa !5
  %sub6 = sub nsw i32 %21, %22
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %19, %cond.true ], [ %sub6, %cond.false ]
  store i32 %cond, i32* %yh_used, align 4, !tbaa !5
  %23 = bitcast i32* %y0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %24 = bitcast i32* %y1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  %25 = bitcast i32* %ry to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #1
  %26 = bitcast i32* %rheight to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #1
  %27 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  %28 = bitcast %struct.cmd_rects_enum_s* %re to i8*
  call void @llvm.lifetime.start(i64 40, i8* %28) #1
  %29 = bitcast i32* %found_color to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #1
  store i32 0, i32* %found_color, align 4, !tbaa !5
  %30 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %30) #1
  store i32 1, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %31 = load i32, i32* %i, align 4, !tbaa !5
  %32 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  %num_planes = getelementptr inbounds %struct.gx_image_enum_common_s, %struct.gx_image_enum_common_s* %32, i32 0, i32 6
  %33 = load i32, i32* %num_planes, align 4, !tbaa !310
  %cmp7 = icmp slt i32 %31, %33
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %34 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %34 to i64
  %35 = load %struct.gx_image_plane_s*, %struct.gx_image_plane_s** %planes.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %35, i64 %idxprom
  %data_x = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %arrayidx, i32 0, i32 1
  %36 = load i32, i32* %data_x, align 4, !tbaa !311
  %37 = load %struct.gx_image_plane_s*, %struct.gx_image_plane_s** %planes.addr, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %37, i64 0
  %data_x9 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %arrayidx8, i32 0, i32 1
  %38 = load i32, i32* %data_x9, align 4, !tbaa !311
  %cmp10 = icmp ne i32 %36, %38
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %39 = load i32*, i32** %rows_used.addr, align 8, !tbaa !1
  store i32 0, i32* %39, align 4, !tbaa !5
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %40 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %41 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.706 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  %42 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %rect11 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %42, i32 0, i32 11
  %p = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect11, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p, i32 0, i32 0
  %43 = load i32, i32* %x, align 4, !tbaa !147
  %44 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %support = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %44, i32 0, i32 15
  %x12 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %support, i32 0, i32 0
  %45 = load i32, i32* %x12, align 4, !tbaa !203
  %sub13 = sub nsw i32 %43, %45
  %conv = sitofp i32 %sub13 to double
  %p14 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %sbox, i32 0, i32 0
  %x15 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p14, i32 0, i32 0
  store double %conv, double* %x15, align 8, !tbaa !204
  %46 = load i32, i32* %y_orig, align 4, !tbaa !5
  store i32 %46, i32* %y0, align 4, !tbaa !5
  %47 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %support16 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %47, i32 0, i32 15
  %y17 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %support16, i32 0, i32 1
  %48 = load i32, i32* %y17, align 4, !tbaa !202
  %sub18 = sub nsw i32 %46, %48
  %conv19 = sitofp i32 %sub18 to double
  %p20 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %sbox, i32 0, i32 0
  %y21 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p20, i32 0, i32 1
  store double %conv19, double* %y21, align 8, !tbaa !206
  %49 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %rect22 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %49, i32 0, i32 11
  %q23 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect22, i32 0, i32 1
  %x24 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q23, i32 0, i32 0
  %50 = load i32, i32* %x24, align 4, !tbaa !150
  %51 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %support25 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %51, i32 0, i32 15
  %x26 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %support25, i32 0, i32 0
  %52 = load i32, i32* %x26, align 4, !tbaa !203
  %add = add nsw i32 %50, %52
  %conv27 = sitofp i32 %add to double
  %q28 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %sbox, i32 0, i32 1
  %x29 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q28, i32 0, i32 0
  store double %conv27, double* %x29, align 8, !tbaa !207
  %53 = load i32, i32* %yh_used, align 4, !tbaa !5
  %54 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %y30 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %54, i32 0, i32 25
  %55 = load i32, i32* %y30, align 4, !tbaa !198
  %add31 = add nsw i32 %55, %53
  store i32 %add31, i32* %y30, align 4, !tbaa !198
  store i32 %add31, i32* %y1, align 4, !tbaa !5
  %56 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %support32 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %56, i32 0, i32 15
  %y33 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %support32, i32 0, i32 1
  %57 = load i32, i32* %y33, align 4, !tbaa !202
  %add34 = add nsw i32 %add31, %57
  %conv35 = sitofp i32 %add34 to double
  %q36 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %sbox, i32 0, i32 1
  %y37 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q36, i32 0, i32 1
  store double %conv35, double* %y37, align 8, !tbaa !208
  %58 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %matrix = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %58, i32 0, i32 17
  %call = call i32 @gs_bbox_transform(%struct.gs_rect_s* %sbox, %struct.gs_matrix_s* %matrix, %struct.gs_rect_s* %dbox) #6
  %59 = bitcast i32* %ry0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %59) #1
  %p38 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %dbox, i32 0, i32 0
  %y39 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p38, i32 0, i32 1
  %60 = load double, double* %y39, align 8, !tbaa !206
  %call40 = call double @floor(double %60) #7
  %conv41 = fptosi double %call40 to i32
  %sub42 = sub nsw i32 %conv41, 2
  store i32 %sub42, i32* %ry0, align 4, !tbaa !5
  %61 = bitcast i32* %ry1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %61) #1
  %q43 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %dbox, i32 0, i32 1
  %y44 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q43, i32 0, i32 1
  %62 = load double, double* %y44, align 8, !tbaa !208
  %call45 = call double @ceil(double %62) #7
  %conv46 = fptosi double %call45 to i32
  %add47 = add nsw i32 %conv46, 2
  store i32 %add47, i32* %ry1, align 4, !tbaa !5
  %63 = bitcast i32* %band_height0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %63) #1
  %64 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %page_info = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %64, i32 0, i32 58
  %band_params = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info, i32 0, i32 8
  %BandHeight = getelementptr inbounds %struct.gx_band_params_s, %struct.gx_band_params_s* %band_params, i32 0, i32 1
  %65 = load i32, i32* %BandHeight, align 4, !tbaa !64
  store i32 %65, i32* %band_height0, align 4, !tbaa !5
  %66 = load i32, i32* %ry0, align 4, !tbaa !5
  %67 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %ymin = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %67, i32 0, i32 20
  %68 = load i32, i32* %ymin, align 4, !tbaa !231
  %cmp48 = icmp slt i32 %66, %68
  br i1 %cmp48, label %if.then.50, label %if.end.52

if.then.50:                                       ; preds = %cleanup.cont
  %69 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %ymin51 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %69, i32 0, i32 20
  %70 = load i32, i32* %ymin51, align 4, !tbaa !231
  store i32 %70, i32* %ry0, align 4, !tbaa !5
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.50, %cleanup.cont
  %71 = load i32, i32* %ry1, align 4, !tbaa !5
  %72 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %ymax = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %72, i32 0, i32 21
  %73 = load i32, i32* %ymax, align 4, !tbaa !233
  %cmp53 = icmp sgt i32 %71, %73
  br i1 %cmp53, label %if.then.55, label %if.end.57

if.then.55:                                       ; preds = %if.end.52
  %74 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %ymax56 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %74, i32 0, i32 21
  %75 = load i32, i32* %ymax56, align 4, !tbaa !233
  store i32 %75, i32* %ry1, align 4, !tbaa !5
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.55, %if.end.52
  %76 = load i32, i32* %ry0, align 4, !tbaa !5
  %77 = load i32, i32* %ry1, align 4, !tbaa !5
  %cmp58 = icmp sge i32 %76, %77
  br i1 %cmp58, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %if.end.57
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup.98

if.end.61:                                        ; preds = %if.end.57
  %78 = load i32, i32* %ry0, align 4, !tbaa !5
  %79 = load i32, i32* %band_height0, align 4, !tbaa !5
  %div = sdiv i32 %78, %79
  %80 = load i32, i32* %band_height0, align 4, !tbaa !5
  %mul = mul nsw i32 %div, %80
  store i32 %mul, i32* %ry, align 4, !tbaa !5
  %81 = load i32, i32* %band_height0, align 4, !tbaa !5
  %82 = load i32, i32* %band_height0, align 4, !tbaa !5
  %sub62 = sub nsw i32 %82, 1
  %and = and i32 %81, %sub62
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true.63, label %cond.false.68

cond.true.63:                                     ; preds = %if.end.61
  %83 = load i32, i32* %ry1, align 4, !tbaa !5
  %84 = load i32, i32* %band_height0, align 4, !tbaa !5
  %sub64 = sub nsw i32 %84, 1
  %add65 = add nsw i32 %83, %sub64
  %85 = load i32, i32* %band_height0, align 4, !tbaa !5
  %div66 = sdiv i32 %add65, %85
  %86 = load i32, i32* %band_height0, align 4, !tbaa !5
  %mul67 = mul nsw i32 %div66, %86
  br label %cond.end.73

cond.false.68:                                    ; preds = %if.end.61
  %87 = load i32, i32* %ry1, align 4, !tbaa !5
  %88 = load i32, i32* %band_height0, align 4, !tbaa !5
  %sub69 = sub nsw i32 %88, 1
  %add70 = add nsw i32 %87, %sub69
  %89 = load i32, i32* %band_height0, align 4, !tbaa !5
  %sub71 = sub nsw i32 0, %89
  %and72 = and i32 %add70, %sub71
  br label %cond.end.73

cond.end.73:                                      ; preds = %cond.false.68, %cond.true.63
  %cond74 = phi i32 [ %mul67, %cond.true.63 ], [ %and72, %cond.false.68 ]
  %90 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %90, i32 0, i32 14
  %91 = load i32, i32* %height, align 4, !tbaa !232
  %cmp75 = icmp slt i32 %cond74, %91
  br i1 %cmp75, label %cond.true.77, label %cond.false.93

cond.true.77:                                     ; preds = %cond.end.73
  %92 = load i32, i32* %band_height0, align 4, !tbaa !5
  %93 = load i32, i32* %band_height0, align 4, !tbaa !5
  %sub78 = sub nsw i32 %93, 1
  %and79 = and i32 %92, %sub78
  %tobool80 = icmp ne i32 %and79, 0
  br i1 %tobool80, label %cond.true.81, label %cond.false.86

cond.true.81:                                     ; preds = %cond.true.77
  %94 = load i32, i32* %ry1, align 4, !tbaa !5
  %95 = load i32, i32* %band_height0, align 4, !tbaa !5
  %sub82 = sub nsw i32 %95, 1
  %add83 = add nsw i32 %94, %sub82
  %96 = load i32, i32* %band_height0, align 4, !tbaa !5
  %div84 = sdiv i32 %add83, %96
  %97 = load i32, i32* %band_height0, align 4, !tbaa !5
  %mul85 = mul nsw i32 %div84, %97
  br label %cond.end.91

cond.false.86:                                    ; preds = %cond.true.77
  %98 = load i32, i32* %ry1, align 4, !tbaa !5
  %99 = load i32, i32* %band_height0, align 4, !tbaa !5
  %sub87 = sub nsw i32 %99, 1
  %add88 = add nsw i32 %98, %sub87
  %100 = load i32, i32* %band_height0, align 4, !tbaa !5
  %sub89 = sub nsw i32 0, %100
  %and90 = and i32 %add88, %sub89
  br label %cond.end.91

cond.end.91:                                      ; preds = %cond.false.86, %cond.true.81
  %cond92 = phi i32 [ %mul85, %cond.true.81 ], [ %and90, %cond.false.86 ]
  br label %cond.end.95

cond.false.93:                                    ; preds = %cond.end.73
  %101 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %height94 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %101, i32 0, i32 14
  %102 = load i32, i32* %height94, align 4, !tbaa !232
  br label %cond.end.95

cond.end.95:                                      ; preds = %cond.false.93, %cond.end.91
  %cond96 = phi i32 [ %cond92, %cond.end.91 ], [ %102, %cond.false.93 ]
  %103 = load i32, i32* %ry, align 4, !tbaa !5
  %sub97 = sub nsw i32 %cond96, %103
  store i32 %sub97, i32* %rheight, align 4, !tbaa !5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.98

cleanup.98:                                       ; preds = %if.then.60, %cond.end.95
  %104 = bitcast i32* %band_height0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %104) #1
  %105 = bitcast i32* %ry1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %105) #1
  %106 = bitcast i32* %ry0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %106) #1
  %cleanup.dest.101 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.101, label %cleanup.706 [
    i32 0, label %cleanup.cont.102
    i32 5, label %done
  ]

cleanup.cont.102:                                 ; preds = %cleanup.98
  %107 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %permanent_error = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %107, i32 0, i32 95
  %108 = load i32, i32* %permanent_error, align 4, !tbaa !53
  %cmp103 = icmp slt i32 %108, 0
  br i1 %cmp103, label %if.then.105, label %if.end.107

if.then.105:                                      ; preds = %cleanup.cont.102
  %109 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %permanent_error106 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %109, i32 0, i32 95
  %110 = load i32, i32* %permanent_error106, align 4, !tbaa !53
  store i32 %110, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.706

if.end.107:                                       ; preds = %cleanup.cont.102
  %111 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pdf14_needed = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %111, i32 0, i32 81
  %112 = load i32, i32* %pdf14_needed, align 4, !tbaa !54
  %tobool108 = icmp ne i32 %112, 0
  br i1 %tobool108, label %if.then.109, label %if.end.128

if.then.109:                                      ; preds = %if.end.107
  %113 = bitcast %struct.gs_int_rect_s* %bbox to i8*
  call void @llvm.lifetime.start(i64 16, i8* %113) #1
  %p110 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %dbox, i32 0, i32 0
  %x111 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p110, i32 0, i32 0
  %114 = load double, double* %x111, align 8, !tbaa !204
  %call112 = call double @floor(double %114) #7
  %conv113 = fptosi double %call112 to i32
  %p114 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox, i32 0, i32 0
  %x115 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p114, i32 0, i32 0
  store i32 %conv113, i32* %x115, align 4, !tbaa !55
  %q116 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %dbox, i32 0, i32 1
  %x117 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q116, i32 0, i32 0
  %115 = load double, double* %x117, align 8, !tbaa !207
  %call118 = call double @ceil(double %115) #7
  %conv119 = fptosi double %call118 to i32
  %q120 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox, i32 0, i32 1
  %x121 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q120, i32 0, i32 0
  store i32 %conv119, i32* %x121, align 4, !tbaa !57
  %116 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %ymin122 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %116, i32 0, i32 20
  %117 = load i32, i32* %ymin122, align 4, !tbaa !231
  %p123 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox, i32 0, i32 0
  %y124 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p123, i32 0, i32 1
  store i32 %117, i32* %y124, align 4, !tbaa !58
  %118 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %ymax125 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %118, i32 0, i32 21
  %119 = load i32, i32* %ymax125, align 4, !tbaa !233
  %q126 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox, i32 0, i32 1
  %y127 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q126, i32 0, i32 1
  store i32 %119, i32* %y127, align 4, !tbaa !59
  %120 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  call void @clist_update_trans_bbox(%struct.gx_device_clist_writer_s* %120, %struct.gs_int_rect_s* %bbox) #6
  %121 = bitcast %struct.gs_int_rect_s* %bbox to i8*
  call void @llvm.lifetime.end(i64 16, i8* %121) #1
  br label %if.end.128

if.end.128:                                       ; preds = %if.then.109, %if.end.107
  %122 = load i32, i32* %ry, align 4, !tbaa !5
  %y129 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  store i32 %122, i32* %y129, align 4, !tbaa !60
  %123 = load i32, i32* %rheight, align 4, !tbaa !5
  %height130 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  store i32 %123, i32* %height130, align 4, !tbaa !62
  %y131 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %124 = load i32, i32* %y131, align 4, !tbaa !60
  %height132 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %125 = load i32, i32* %height132, align 4, !tbaa !62
  %add133 = add nsw i32 %124, %125
  %yend = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 2
  store i32 %add133, i32* %yend, align 4, !tbaa !63
  %126 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %page_info134 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %126, i32 0, i32 58
  %band_params135 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info134, i32 0, i32 8
  %BandHeight136 = getelementptr inbounds %struct.gx_band_params_s, %struct.gx_band_params_s* %band_params135, i32 0, i32 1
  %127 = load i32, i32* %BandHeight136, align 4, !tbaa !64
  %band_height = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  store i32 %127, i32* %band_height, align 4, !tbaa !65
  %yend137 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 2
  %128 = load i32, i32* %yend137, align 4, !tbaa !63
  %y138 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %129 = load i32, i32* %y138, align 4, !tbaa !60
  %sub139 = sub nsw i32 %128, %129
  %band_height140 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  %130 = load i32, i32* %band_height140, align 4, !tbaa !65
  %add141 = add nsw i32 %sub139, %130
  %sub142 = sub nsw i32 %add141, 1
  %band_height143 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  %131 = load i32, i32* %band_height143, align 4, !tbaa !65
  %div144 = sdiv i32 %sub142, %131
  %rect_nbands = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 8
  store i32 %div144, i32* %rect_nbands, align 4, !tbaa !66
  br label %do.body

do.body:                                          ; preds = %do.cond.690, %if.end.128
  %132 = bitcast %struct.gs_int_rect_s* %ibox to i8*
  call void @llvm.lifetime.start(i64 16, i8* %132) #1
  %133 = bitcast %struct.gs_int_rect_s* %entire_box to i8*
  call void @llvm.lifetime.start(i64 16, i8* %133) #1
  %y145 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %134 = load i32, i32* %y145, align 4, !tbaa !60
  %band_height146 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  %135 = load i32, i32* %band_height146, align 4, !tbaa !65
  %div147 = sdiv i32 %134, %135
  %band = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 5
  store i32 %div147, i32* %band, align 4, !tbaa !67
  %136 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %states = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %136, i32 0, i32 66
  %137 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %states, align 8, !tbaa !68
  %band148 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 5
  %138 = load i32, i32* %band148, align 4, !tbaa !67
  %idx.ext = sext i32 %138 to i64
  %add.ptr = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %137, i64 %idx.ext
  %pcls = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  store %struct.gx_clist_state_s* %add.ptr, %struct.gx_clist_state_s** %pcls, align 8, !tbaa !69
  %band149 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 5
  %139 = load i32, i32* %band149, align 4, !tbaa !67
  %add150 = add nsw i32 %139, 1
  %band_height151 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  %140 = load i32, i32* %band_height151, align 4, !tbaa !65
  %mul152 = mul nsw i32 %add150, %140
  %band_end = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 7
  store i32 %mul152, i32* %band_end, align 4, !tbaa !70
  %band_end153 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 7
  %141 = load i32, i32* %band_end153, align 4, !tbaa !70
  %yend154 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 2
  %142 = load i32, i32* %yend154, align 4, !tbaa !63
  %cmp155 = icmp slt i32 %141, %142
  br i1 %cmp155, label %cond.true.157, label %cond.false.159

cond.true.157:                                    ; preds = %do.body
  %band_end158 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 7
  %143 = load i32, i32* %band_end158, align 4, !tbaa !70
  br label %cond.end.161

cond.false.159:                                   ; preds = %do.body
  %yend160 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 2
  %144 = load i32, i32* %yend160, align 4, !tbaa !63
  br label %cond.end.161

cond.end.161:                                     ; preds = %cond.false.159, %cond.true.157
  %cond162 = phi i32 [ %143, %cond.true.157 ], [ %144, %cond.false.159 ]
  %y163 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %145 = load i32, i32* %y163, align 4, !tbaa !60
  %sub164 = sub nsw i32 %cond162, %145
  %height165 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  store i32 %sub164, i32* %height165, align 4, !tbaa !62
  %146 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %147 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %y166 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %148 = load i32, i32* %y166, align 4, !tbaa !60
  %height167 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %149 = load i32, i32* %height167, align 4, !tbaa !62
  %call168 = call i32 @image_band_box(%struct.gx_device_s* %146, %struct.clist_image_enum_s* %147, i32 %148, i32 %149, %struct.gs_int_rect_s* %ibox) #6
  %tobool169 = icmp ne i32 %call168, 0
  br i1 %tobool169, label %if.end.171, label %if.then.170

if.then.170:                                      ; preds = %cond.end.161
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup.687

if.end.171:                                       ; preds = %cond.end.161
  %150 = bitcast i32* %band_ymax to i8*
  call void @llvm.lifetime.start(i64 4, i8* %150) #1
  %band_end172 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 7
  %151 = load i32, i32* %band_end172, align 4, !tbaa !70
  %152 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %ymax173 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %152, i32 0, i32 21
  %153 = load i32, i32* %ymax173, align 4, !tbaa !233
  %cmp174 = icmp slt i32 %151, %153
  br i1 %cmp174, label %cond.true.176, label %cond.false.178

cond.true.176:                                    ; preds = %if.end.171
  %band_end177 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 7
  %154 = load i32, i32* %band_end177, align 4, !tbaa !70
  br label %cond.end.180

cond.false.178:                                   ; preds = %if.end.171
  %155 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %ymax179 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %155, i32 0, i32 21
  %156 = load i32, i32* %ymax179, align 4, !tbaa !233
  br label %cond.end.180

cond.end.180:                                     ; preds = %cond.false.178, %cond.true.176
  %cond181 = phi i32 [ %154, %cond.true.176 ], [ %156, %cond.false.178 ]
  store i32 %cond181, i32* %band_ymax, align 4, !tbaa !5
  %157 = bitcast i32* %band_ymin to i8*
  call void @llvm.lifetime.start(i64 4, i8* %157) #1
  %band_end182 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 7
  %158 = load i32, i32* %band_end182, align 4, !tbaa !70
  %band_height183 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  %159 = load i32, i32* %band_height183, align 4, !tbaa !65
  %sub184 = sub nsw i32 %158, %159
  %160 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %ymin185 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %160, i32 0, i32 20
  %161 = load i32, i32* %ymin185, align 4, !tbaa !231
  %cmp186 = icmp sgt i32 %sub184, %161
  br i1 %cmp186, label %cond.true.188, label %cond.false.192

cond.true.188:                                    ; preds = %cond.end.180
  %band_end189 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 7
  %162 = load i32, i32* %band_end189, align 4, !tbaa !70
  %band_height190 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  %163 = load i32, i32* %band_height190, align 4, !tbaa !65
  %sub191 = sub nsw i32 %162, %163
  br label %cond.end.194

cond.false.192:                                   ; preds = %cond.end.180
  %164 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %ymin193 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %164, i32 0, i32 20
  %165 = load i32, i32* %ymin193, align 4, !tbaa !231
  br label %cond.end.194

cond.end.194:                                     ; preds = %cond.false.192, %cond.true.188
  %cond195 = phi i32 [ %sub191, %cond.true.188 ], [ %165, %cond.false.192 ]
  store i32 %cond195, i32* %band_ymin, align 4, !tbaa !5
  %166 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %167 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %168 = load i32, i32* %band_ymin, align 4, !tbaa !5
  %169 = load i32, i32* %band_ymax, align 4, !tbaa !5
  %170 = load i32, i32* %band_ymin, align 4, !tbaa !5
  %sub196 = sub nsw i32 %169, %170
  %call197 = call i32 @image_band_box(%struct.gx_device_s* %166, %struct.clist_image_enum_s* %167, i32 %168, i32 %sub196, %struct.gs_int_rect_s* %entire_box) #6
  %tobool198 = icmp ne i32 %call197, 0
  br i1 %tobool198, label %if.end.200, label %if.then.199

if.then.199:                                      ; preds = %cond.end.194
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup.201

if.end.200:                                       ; preds = %cond.end.194
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.201

cleanup.201:                                      ; preds = %if.end.200, %if.then.199
  %171 = bitcast i32* %band_ymin to i8*
  call void @llvm.lifetime.end(i64 4, i8* %171) #1
  %172 = bitcast i32* %band_ymax to i8*
  call void @llvm.lifetime.end(i64 4, i8* %172) #1
  %cleanup.dest.203 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.203, label %cleanup.687 [
    i32 0, label %cleanup.cont.204
  ]

cleanup.cont.204:                                 ; preds = %cleanup.201
  %173 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %color_usage = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %173, i32 0, i32 22
  %or = getelementptr inbounds %struct.gx_colors_usage_s, %struct.gx_colors_usage_s* %color_usage, i32 0, i32 0
  %174 = load i64, i64* %or, align 8, !tbaa !228
  %pcls205 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %175 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls205, align 8, !tbaa !69
  %color_usage206 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %175, i32 0, i32 16
  %or207 = getelementptr inbounds %struct.gx_colors_usage_s, %struct.gx_colors_usage_s* %color_usage206, i32 0, i32 0
  %176 = load i64, i64* %or207, align 8, !tbaa !313
  %or208 = or i64 %176, %174
  store i64 %or208, i64* %or207, align 8, !tbaa !313
  %177 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %color_usage209 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %177, i32 0, i32 22
  %slow_rop = getelementptr inbounds %struct.gx_colors_usage_s, %struct.gx_colors_usage_s* %color_usage209, i32 0, i32 1
  %178 = load i32, i32* %slow_rop, align 4, !tbaa !229
  %pcls210 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %179 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls210, align 8, !tbaa !69
  %color_usage211 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %179, i32 0, i32 16
  %slow_rop212 = getelementptr inbounds %struct.gx_colors_usage_s, %struct.gx_colors_usage_s* %color_usage211, i32 0, i32 1
  %180 = load i32, i32* %slow_rop212, align 4, !tbaa !80
  %or213 = or i32 %180, %178
  store i32 %or213, i32* %slow_rop212, align 4, !tbaa !80
  %pcls214 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %181 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls214, align 8, !tbaa !69
  %known = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %181, i32 0, i32 14
  %182 = load i32, i32* %known, align 4, !tbaa !78
  %and215 = and i32 %182, 16384
  %tobool216 = icmp ne i32 %and215, 0
  br i1 %tobool216, label %if.end.454, label %if.then.217

if.then.217:                                      ; preds = %cleanup.cont.204
  %183 = bitcast i32* %lop to i8*
  call void @llvm.lifetime.start(i64 4, i8* %183) #1
  %184 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %pis = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %184, i32 0, i32 12
  %185 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !153
  %log_op = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %185, i32 0, i32 10
  %186 = load i32, i32* %log_op, align 4, !tbaa !133
  store i32 %186, i32* %lop, align 4, !tbaa !5
  %187 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %187) #1
  %188 = bitcast i8** %bp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %188) #1
  %189 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %begin_image_command = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %189, i32 0, i32 23
  %arraydecay = getelementptr inbounds [920 x i8], [920 x i8]* %begin_image_command, i32 0, i32 0
  %190 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %begin_image_command_length = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %190, i32 0, i32 24
  %191 = load i32, i32* %begin_image_command_length, align 4, !tbaa !222
  %idx.ext218 = sext i32 %191 to i64
  %add.ptr219 = getelementptr inbounds i8, i8* %arraydecay, i64 %idx.ext218
  store i8* %add.ptr219, i8** %bp, align 8, !tbaa !1
  %192 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %192) #1
  call void @llvm.lifetime.start(i64 1, i8* %image_op) #1
  store i8 -36, i8* %image_op, align 1, !tbaa !9
  br label %do.body.220

do.body.220:                                      ; preds = %land.end, %if.then.217
  %193 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %color_map_is_known = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %193, i32 0, i32 26
  %194 = load i32, i32* %color_map_is_known, align 4, !tbaa !230
  %tobool221 = icmp ne i32 %194, 0
  br i1 %tobool221, label %cond.true.222, label %cond.false.223

cond.true.222:                                    ; preds = %do.body.220
  br label %cond.end.226

cond.false.223:                                   ; preds = %do.body.220
  %195 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %196 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %pis224 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %196, i32 0, i32 12
  %197 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis224, align 8, !tbaa !153
  %call225 = call i32 @cmd_put_color_mapping(%struct.gx_device_clist_writer_s* %195, %struct.gs_imager_state_s* %197) #6
  br label %cond.end.226

cond.end.226:                                     ; preds = %cond.false.223, %cond.true.222
  %cond227 = phi i32 [ 0, %cond.true.222 ], [ %call225, %cond.false.223 ]
  store i32 %cond227, i32* %code, align 4, !tbaa !5
  %198 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %color_map_is_known228 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %198, i32 0, i32 26
  store i32 1, i32* %color_map_is_known228, align 4, !tbaa !230
  %199 = load i32, i32* %code, align 4, !tbaa !5
  %cmp229 = icmp sge i32 %199, 0
  br i1 %cmp229, label %if.then.231, label %if.end.246

if.then.231:                                      ; preds = %cond.end.226
  %200 = bitcast i32* %want_known to i8*
  call void @llvm.lifetime.start(i64 4, i8* %200) #1
  %201 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %color_space = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %201, i32 0, i32 19
  %id = getelementptr inbounds %struct.clist_color_space_s, %struct.clist_color_space_s* %color_space, i32 0, i32 1
  %202 = load i64, i64* %id, align 8, !tbaa !162
  %cmp232 = icmp eq i64 %202, 0
  %cond234 = select i1 %cmp232, i32 0, i32 16384
  %or235 = or i32 11168, %cond234
  store i32 %or235, i32* %want_known, align 4, !tbaa !5
  %pcls236 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %203 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls236, align 8, !tbaa !69
  %known237 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %203, i32 0, i32 14
  %204 = load i32, i32* %known237, align 4, !tbaa !78
  %neg = xor i32 %204, -1
  %205 = load i32, i32* %want_known, align 4, !tbaa !5
  %and238 = and i32 %neg, %205
  %tobool239 = icmp ne i32 %and238, 0
  br i1 %tobool239, label %cond.true.240, label %cond.false.243

cond.true.240:                                    ; preds = %if.then.231
  %206 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pcls241 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %207 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls241, align 8, !tbaa !69
  %208 = load i32, i32* %want_known, align 4, !tbaa !5
  %call242 = call i32 @cmd_write_unknown(%struct.gx_device_clist_writer_s* %206, %struct.gx_clist_state_s* %207, i32 %208) #6
  br label %cond.end.244

cond.false.243:                                   ; preds = %if.then.231
  br label %cond.end.244

cond.end.244:                                     ; preds = %cond.false.243, %cond.true.240
  %cond245 = phi i32 [ %call242, %cond.true.240 ], [ 0, %cond.false.243 ]
  store i32 %cond245, i32* %code, align 4, !tbaa !5
  %209 = bitcast i32* %want_known to i8*
  call void @llvm.lifetime.end(i64 4, i8* %209) #1
  br label %if.end.246

if.end.246:                                       ; preds = %cond.end.244, %cond.end.226
  %210 = load i32, i32* %code, align 4, !tbaa !5
  %cmp247 = icmp sge i32 %210, 0
  br i1 %cmp247, label %if.then.249, label %if.end.267

if.then.249:                                      ; preds = %if.end.246
  %pcls250 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %211 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls250, align 8, !tbaa !69
  %clip_enabled = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %211, i32 0, i32 11
  %212 = load i16, i16* %clip_enabled, align 2, !tbaa !79
  %conv251 = sext i16 %212 to i32
  %213 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %pcpath = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %213, i32 0, i32 13
  %214 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath, align 8, !tbaa !154
  %cmp252 = icmp ne %struct.gx_clip_path_s* %214, null
  %conv253 = zext i1 %cmp252 to i32
  %xor = xor i32 %conv253, 1
  %cmp254 = icmp eq i32 %conv251, %xor
  br i1 %cmp254, label %land.lhs.true, label %cond.false.264

land.lhs.true:                                    ; preds = %if.then.249
  %215 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pcls256 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %216 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls256, align 8, !tbaa !69
  %217 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %pcpath257 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %217, i32 0, i32 13
  %218 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath257, align 8, !tbaa !154
  %cmp258 = icmp ne %struct.gx_clip_path_s* %218, null
  %conv259 = zext i1 %cmp258 to i32
  %call260 = call i32 @cmd_put_enable_clip(%struct.gx_device_clist_writer_s* %215, %struct.gx_clist_state_s* %216, i32 %conv259) #6
  %cmp261 = icmp slt i32 %call260, 0
  br i1 %cmp261, label %cond.true.263, label %cond.false.264

cond.true.263:                                    ; preds = %land.lhs.true
  %219 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %error_code = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %219, i32 0, i32 65
  %220 = load i32, i32* %error_code, align 4, !tbaa !77
  br label %cond.end.265

cond.false.264:                                   ; preds = %land.lhs.true, %if.then.249
  br label %cond.end.265

cond.end.265:                                     ; preds = %cond.false.264, %cond.true.263
  %cond266 = phi i32 [ %220, %cond.true.263 ], [ 0, %cond.false.264 ]
  store i32 %cond266, i32* %code, align 4, !tbaa !5
  br label %if.end.267

if.end.267:                                       ; preds = %cond.end.265, %if.end.246
  %221 = load i32, i32* %code, align 4, !tbaa !5
  %cmp268 = icmp sge i32 %221, 0
  br i1 %cmp268, label %if.then.270, label %if.end.273

if.then.270:                                      ; preds = %if.end.267
  %222 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pcls271 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %223 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls271, align 8, !tbaa !69
  %224 = load i32, i32* %lop, align 4, !tbaa !5
  %call272 = call i32 @cmd_update_lop(%struct.gx_device_clist_writer_s* %222, %struct.gx_clist_state_s* %223, i32 %224) #6
  store i32 %call272, i32* %code, align 4, !tbaa !5
  br label %if.end.273

if.end.273:                                       ; preds = %if.then.270, %if.end.267
  br label %do.cond

do.cond:                                          ; preds = %if.end.273
  %225 = load i32, i32* %code, align 4, !tbaa !5
  %cmp274 = icmp slt i32 %225, 0
  br i1 %cmp274, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %226 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %227 = load i32, i32* %code, align 4, !tbaa !5
  %call276 = call i32 @clist_VMerror_recover(%struct.gx_device_clist_writer_s* %226, i32 %227) #6
  store i32 %call276, i32* %code, align 4, !tbaa !5
  %cmp277 = icmp sge i32 %call276, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %228 = phi i1 [ false, %do.cond ], [ %cmp277, %land.rhs ]
  br i1 %228, label %do.body.220, label %do.end

do.end:                                           ; preds = %land.end
  %229 = load i32, i32* %code, align 4, !tbaa !5
  %cmp279 = icmp slt i32 %229, 0
  br i1 %cmp279, label %land.lhs.true.281, label %if.end.284

land.lhs.true.281:                                ; preds = %do.end
  %230 = load i32, i32* %code, align 4, !tbaa !5
  %band_code = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 4
  store i32 %230, i32* %band_code, align 4, !tbaa !71
  %tobool282 = icmp ne i32 %230, 0
  br i1 %tobool282, label %if.then.283, label %if.end.284

if.then.283:                                      ; preds = %land.lhs.true.281
  store i32 10, i32* %cleanup.dest.slot
  br label %cleanup.447

if.end.284:                                       ; preds = %land.lhs.true.281, %do.end
  %231 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %uses_color = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %231, i32 0, i32 18
  %232 = load i32, i32* %uses_color, align 4, !tbaa !158
  %tobool285 = icmp ne i32 %232, 0
  br i1 %tobool285, label %if.then.286, label %if.end.317

if.then.286:                                      ; preds = %if.end.284
  br label %do.body.287

do.body.287:                                      ; preds = %land.end.308, %if.then.286
  %233 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %ymax288 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %233, i32 0, i32 21
  %234 = load i32, i32* %ymax288, align 4, !tbaa !233
  %band_height289 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  %235 = load i32, i32* %band_height289, align 4, !tbaa !65
  %add290 = add nsw i32 %234, %235
  %sub291 = sub nsw i32 %add290, 1
  %band_height292 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  %236 = load i32, i32* %band_height292, align 4, !tbaa !65
  %div293 = sdiv i32 %sub291, %236
  %237 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %ymin294 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %237, i32 0, i32 20
  %238 = load i32, i32* %ymin294, align 4, !tbaa !231
  %band_height295 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  %239 = load i32, i32* %band_height295, align 4, !tbaa !65
  %div296 = sdiv i32 %238, %239
  %sub297 = sub nsw i32 %div293, %div296
  %rect_nbands298 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 8
  store i32 %sub297, i32* %rect_nbands298, align 4, !tbaa !66
  %240 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pcls299 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %241 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls299, align 8, !tbaa !69
  %242 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %dcolor = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %242, i32 0, i32 10
  %call300 = call i32 @cmd_put_drawing_color(%struct.gx_device_clist_writer_s* %240, %struct.gx_clist_state_s* %241, %struct.gx_device_color_s* %dcolor, %struct.cmd_rects_enum_s* %re, i32 0) #6
  store i32 %call300, i32* %code, align 4, !tbaa !5
  br label %do.cond.301

do.cond.301:                                      ; preds = %do.body.287
  %243 = load i32, i32* %code, align 4, !tbaa !5
  %cmp302 = icmp slt i32 %243, 0
  br i1 %cmp302, label %land.rhs.304, label %land.end.308

land.rhs.304:                                     ; preds = %do.cond.301
  %244 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %245 = load i32, i32* %code, align 4, !tbaa !5
  %call305 = call i32 @clist_VMerror_recover(%struct.gx_device_clist_writer_s* %244, i32 %245) #6
  store i32 %call305, i32* %code, align 4, !tbaa !5
  %cmp306 = icmp sge i32 %call305, 0
  br label %land.end.308

land.end.308:                                     ; preds = %land.rhs.304, %do.cond.301
  %246 = phi i1 [ false, %do.cond.301 ], [ %cmp306, %land.rhs.304 ]
  br i1 %246, label %do.body.287, label %do.end.309

do.end.309:                                       ; preds = %land.end.308
  %247 = load i32, i32* %code, align 4, !tbaa !5
  %cmp310 = icmp slt i32 %247, 0
  br i1 %cmp310, label %land.lhs.true.312, label %if.end.316

land.lhs.true.312:                                ; preds = %do.end.309
  %248 = load i32, i32* %code, align 4, !tbaa !5
  %band_code313 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 4
  store i32 %248, i32* %band_code313, align 4, !tbaa !71
  %tobool314 = icmp ne i32 %248, 0
  br i1 %tobool314, label %if.then.315, label %if.end.316

if.then.315:                                      ; preds = %land.lhs.true.312
  store i32 10, i32* %cleanup.dest.slot
  br label %cleanup.447

if.end.316:                                       ; preds = %land.lhs.true.312, %do.end.309
  br label %if.end.317

if.end.317:                                       ; preds = %if.end.316, %if.end.284
  %p318 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %entire_box, i32 0, i32 0
  %x319 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p318, i32 0, i32 0
  %249 = load i32, i32* %x319, align 4, !tbaa !55
  %cmp320 = icmp ne i32 %249, 0
  br i1 %cmp320, label %if.then.337, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.317
  %p322 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %entire_box, i32 0, i32 0
  %y323 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p322, i32 0, i32 1
  %250 = load i32, i32* %y323, align 4, !tbaa !58
  %cmp324 = icmp ne i32 %250, 0
  br i1 %cmp324, label %if.then.337, label %lor.lhs.false.326

lor.lhs.false.326:                                ; preds = %lor.lhs.false
  %q327 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %entire_box, i32 0, i32 1
  %x328 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q327, i32 0, i32 0
  %251 = load i32, i32* %x328, align 4, !tbaa !57
  %252 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %image = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %252, i32 0, i32 9
  %Width = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %image, i32 0, i32 2
  %253 = load i32, i32* %Width, align 4, !tbaa !314
  %cmp329 = icmp ne i32 %251, %253
  br i1 %cmp329, label %if.then.337, label %lor.lhs.false.331

lor.lhs.false.331:                                ; preds = %lor.lhs.false.326
  %q332 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %entire_box, i32 0, i32 1
  %y333 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q332, i32 0, i32 1
  %254 = load i32, i32* %y333, align 4, !tbaa !59
  %255 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %image334 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %255, i32 0, i32 9
  %Height = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %image334, i32 0, i32 3
  %256 = load i32, i32* %Height, align 4, !tbaa !315
  %cmp335 = icmp ne i32 %254, %256
  br i1 %cmp335, label %if.then.337, label %if.end.408

if.then.337:                                      ; preds = %lor.lhs.false.331, %lor.lhs.false.326, %lor.lhs.false, %if.end.317
  store i8 -37, i8* %image_op, align 1, !tbaa !9
  %p338 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %entire_box, i32 0, i32 0
  %x339 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p338, i32 0, i32 0
  %257 = load i32, i32* %x339, align 4, !tbaa !55
  %p340 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %entire_box, i32 0, i32 0
  %y341 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p340, i32 0, i32 1
  %258 = load i32, i32* %y341, align 4, !tbaa !58
  %or342 = or i32 %257, %258
  %and343 = and i32 %or342, -128
  %tobool344 = icmp ne i32 %and343, 0
  br i1 %tobool344, label %cond.false.355, label %cond.true.345

cond.true.345:                                    ; preds = %if.then.337
  %p346 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %entire_box, i32 0, i32 0
  %x347 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p346, i32 0, i32 0
  %259 = load i32, i32* %x347, align 4, !tbaa !55
  %conv348 = trunc i32 %259 to i8
  %260 = load i8*, i8** %bp, align 8, !tbaa !1
  %arrayidx349 = getelementptr inbounds i8, i8* %260, i64 0
  store i8 %conv348, i8* %arrayidx349, align 1, !tbaa !9
  %p350 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %entire_box, i32 0, i32 0
  %y351 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p350, i32 0, i32 1
  %261 = load i32, i32* %y351, align 4, !tbaa !58
  %conv352 = trunc i32 %261 to i8
  %262 = load i8*, i8** %bp, align 8, !tbaa !1
  %arrayidx353 = getelementptr inbounds i8, i8* %262, i64 1
  store i8 %conv352, i8* %arrayidx353, align 1, !tbaa !9
  %263 = load i8*, i8** %bp, align 8, !tbaa !1
  %add.ptr354 = getelementptr inbounds i8, i8* %263, i64 2
  store i8* %add.ptr354, i8** %bp, align 8, !tbaa !1
  br label %cond.end.362

cond.false.355:                                   ; preds = %if.then.337
  %p356 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %entire_box, i32 0, i32 0
  %y357 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p356, i32 0, i32 1
  %264 = load i32, i32* %y357, align 4, !tbaa !58
  %p358 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %entire_box, i32 0, i32 0
  %x359 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p358, i32 0, i32 0
  %265 = load i32, i32* %x359, align 4, !tbaa !55
  %266 = load i8*, i8** %bp, align 8, !tbaa !1
  %call360 = call i8* @cmd_put_w(i32 %265, i8* %266) #6
  %call361 = call i8* @cmd_put_w(i32 %264, i8* %call360) #6
  store i8* %call361, i8** %bp, align 8, !tbaa !1
  br label %cond.end.362

cond.end.362:                                     ; preds = %cond.false.355, %cond.true.345
  %cond363 = phi i8* [ %add.ptr354, %cond.true.345 ], [ %call361, %cond.false.355 ]
  %267 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %image364 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %267, i32 0, i32 9
  %Width365 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %image364, i32 0, i32 2
  %268 = load i32, i32* %Width365, align 4, !tbaa !314
  %q366 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %entire_box, i32 0, i32 1
  %x367 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q366, i32 0, i32 0
  %269 = load i32, i32* %x367, align 4, !tbaa !57
  %sub368 = sub nsw i32 %268, %269
  %270 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %image369 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %270, i32 0, i32 9
  %Height370 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %image369, i32 0, i32 3
  %271 = load i32, i32* %Height370, align 4, !tbaa !315
  %q371 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %entire_box, i32 0, i32 1
  %y372 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q371, i32 0, i32 1
  %272 = load i32, i32* %y372, align 4, !tbaa !59
  %sub373 = sub nsw i32 %271, %272
  %or374 = or i32 %sub368, %sub373
  %and375 = and i32 %or374, -128
  %tobool376 = icmp ne i32 %and375, 0
  br i1 %tobool376, label %cond.false.393, label %cond.true.377

cond.true.377:                                    ; preds = %cond.end.362
  %273 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %image378 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %273, i32 0, i32 9
  %Width379 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %image378, i32 0, i32 2
  %274 = load i32, i32* %Width379, align 4, !tbaa !314
  %q380 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %entire_box, i32 0, i32 1
  %x381 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q380, i32 0, i32 0
  %275 = load i32, i32* %x381, align 4, !tbaa !57
  %sub382 = sub nsw i32 %274, %275
  %conv383 = trunc i32 %sub382 to i8
  %276 = load i8*, i8** %bp, align 8, !tbaa !1
  %arrayidx384 = getelementptr inbounds i8, i8* %276, i64 0
  store i8 %conv383, i8* %arrayidx384, align 1, !tbaa !9
  %277 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %image385 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %277, i32 0, i32 9
  %Height386 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %image385, i32 0, i32 3
  %278 = load i32, i32* %Height386, align 4, !tbaa !315
  %q387 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %entire_box, i32 0, i32 1
  %y388 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q387, i32 0, i32 1
  %279 = load i32, i32* %y388, align 4, !tbaa !59
  %sub389 = sub nsw i32 %278, %279
  %conv390 = trunc i32 %sub389 to i8
  %280 = load i8*, i8** %bp, align 8, !tbaa !1
  %arrayidx391 = getelementptr inbounds i8, i8* %280, i64 1
  store i8 %conv390, i8* %arrayidx391, align 1, !tbaa !9
  %281 = load i8*, i8** %bp, align 8, !tbaa !1
  %add.ptr392 = getelementptr inbounds i8, i8* %281, i64 2
  store i8* %add.ptr392, i8** %bp, align 8, !tbaa !1
  br label %cond.end.406

cond.false.393:                                   ; preds = %cond.end.362
  %282 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %image394 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %282, i32 0, i32 9
  %Height395 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %image394, i32 0, i32 3
  %283 = load i32, i32* %Height395, align 4, !tbaa !315
  %q396 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %entire_box, i32 0, i32 1
  %y397 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q396, i32 0, i32 1
  %284 = load i32, i32* %y397, align 4, !tbaa !59
  %sub398 = sub nsw i32 %283, %284
  %285 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %image399 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %285, i32 0, i32 9
  %Width400 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %image399, i32 0, i32 2
  %286 = load i32, i32* %Width400, align 4, !tbaa !314
  %q401 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %entire_box, i32 0, i32 1
  %x402 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q401, i32 0, i32 0
  %287 = load i32, i32* %x402, align 4, !tbaa !57
  %sub403 = sub nsw i32 %286, %287
  %288 = load i8*, i8** %bp, align 8, !tbaa !1
  %call404 = call i8* @cmd_put_w(i32 %sub403, i8* %288) #6
  %call405 = call i8* @cmd_put_w(i32 %sub398, i8* %call404) #6
  store i8* %call405, i8** %bp, align 8, !tbaa !1
  br label %cond.end.406

cond.end.406:                                     ; preds = %cond.false.393, %cond.true.377
  %cond407 = phi i8* [ %add.ptr392, %cond.true.377 ], [ %call405, %cond.false.393 ]
  br label %if.end.408

if.end.408:                                       ; preds = %cond.end.406, %lor.lhs.false.331
  %289 = load i8*, i8** %bp, align 8, !tbaa !1
  %290 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %begin_image_command409 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %290, i32 0, i32 23
  %arraydecay410 = getelementptr inbounds [920 x i8], [920 x i8]* %begin_image_command409, i32 0, i32 0
  %sub.ptr.lhs.cast = ptrtoint i8* %289 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %arraydecay410 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv411 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv411, i32* %len, align 4, !tbaa !5
  br label %do.body.412

do.body.412:                                      ; preds = %land.end.430, %if.end.408
  %291 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pcls413 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %292 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls413, align 8, !tbaa !69
  %list = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %292, i32 0, i32 15
  %293 = load i32, i32* %len, align 4, !tbaa !5
  %add414 = add i32 1, %293
  %call415 = call i8* @cmd_put_list_op(%struct.gx_device_clist_writer_s* %291, %struct.cmd_list_s* %list, i32 %add414) #6
  store i8* %call415, i8** %dp, align 8, !tbaa !1
  %cmp416 = icmp eq i8* %call415, null
  br i1 %cmp416, label %cond.true.418, label %cond.false.420

cond.true.418:                                    ; preds = %do.body.412
  %294 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %error_code419 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %294, i32 0, i32 65
  %295 = load i32, i32* %error_code419, align 4, !tbaa !77
  br label %cond.end.421

cond.false.420:                                   ; preds = %do.body.412
  %296 = load i8, i8* %image_op, align 1, !tbaa !9
  %297 = load i8*, i8** %dp, align 8, !tbaa !1
  store i8 %296, i8* %297, align 1, !tbaa !9
  br label %cond.end.421

cond.end.421:                                     ; preds = %cond.false.420, %cond.true.418
  %cond422 = phi i32 [ %295, %cond.true.418 ], [ 0, %cond.false.420 ]
  store i32 %cond422, i32* %code, align 4, !tbaa !5
  br label %do.cond.423

do.cond.423:                                      ; preds = %cond.end.421
  %298 = load i32, i32* %code, align 4, !tbaa !5
  %cmp424 = icmp slt i32 %298, 0
  br i1 %cmp424, label %land.rhs.426, label %land.end.430

land.rhs.426:                                     ; preds = %do.cond.423
  %299 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %300 = load i32, i32* %code, align 4, !tbaa !5
  %call427 = call i32 @clist_VMerror_recover(%struct.gx_device_clist_writer_s* %299, i32 %300) #6
  store i32 %call427, i32* %code, align 4, !tbaa !5
  %cmp428 = icmp sge i32 %call427, 0
  br label %land.end.430

land.end.430:                                     ; preds = %land.rhs.426, %do.cond.423
  %301 = phi i1 [ false, %do.cond.423 ], [ %cmp428, %land.rhs.426 ]
  br i1 %301, label %do.body.412, label %do.end.431

do.end.431:                                       ; preds = %land.end.430
  %302 = load i32, i32* %code, align 4, !tbaa !5
  %cmp432 = icmp slt i32 %302, 0
  br i1 %cmp432, label %land.lhs.true.434, label %if.end.438

land.lhs.true.434:                                ; preds = %do.end.431
  %303 = load i32, i32* %code, align 4, !tbaa !5
  %band_code435 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 4
  store i32 %303, i32* %band_code435, align 4, !tbaa !71
  %tobool436 = icmp ne i32 %303, 0
  br i1 %tobool436, label %if.then.437, label %if.end.438

if.then.437:                                      ; preds = %land.lhs.true.434
  store i32 10, i32* %cleanup.dest.slot
  br label %cleanup.447

if.end.438:                                       ; preds = %land.lhs.true.434, %do.end.431
  %304 = load i8*, i8** %dp, align 8, !tbaa !1
  %add.ptr439 = getelementptr inbounds i8, i8* %304, i64 1
  %305 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %begin_image_command440 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %305, i32 0, i32 23
  %arraydecay441 = getelementptr inbounds [920 x i8], [920 x i8]* %begin_image_command440, i32 0, i32 0
  %306 = load i32, i32* %len, align 4, !tbaa !5
  %conv442 = zext i32 %306 to i64
  %call443 = call i8* @memcpy(i8* %add.ptr439, i8* %arraydecay441, i64 %conv442) #8
  %pcls444 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %307 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls444, align 8, !tbaa !69
  %known445 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %307, i32 0, i32 14
  %308 = load i32, i32* %known445, align 4, !tbaa !78
  %or446 = or i32 %308, 16384
  store i32 %or446, i32* %known445, align 4, !tbaa !78
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.447

cleanup.447:                                      ; preds = %if.then.437, %if.then.315, %if.then.283, %if.end.438
  call void @llvm.lifetime.end(i64 1, i8* %image_op) #1
  %309 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %309) #1
  %310 = bitcast i8** %bp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %310) #1
  %311 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %311) #1
  %312 = bitcast i32* %lop to i8*
  call void @llvm.lifetime.end(i64 4, i8* %312) #1
  %cleanup.dest.452 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.452, label %cleanup.687 [
    i32 0, label %cleanup.cont.453
    i32 10, label %error_in_rect
  ]

cleanup.cont.453:                                 ; preds = %cleanup.447
  br label %if.end.454

if.end.454:                                       ; preds = %cleanup.cont.453, %cleanup.cont.204
  %313 = bitcast i32* %bx0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %313) #1
  %p455 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %entire_box, i32 0, i32 0
  %x456 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p455, i32 0, i32 0
  %314 = load i32, i32* %x456, align 4, !tbaa !55
  store i32 %314, i32* %bx0, align 4, !tbaa !5
  %315 = bitcast i32* %bx1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %315) #1
  %q457 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %entire_box, i32 0, i32 1
  %x458 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q457, i32 0, i32 0
  %316 = load i32, i32* %x458, align 4, !tbaa !57
  store i32 %316, i32* %bx1, align 4, !tbaa !5
  %317 = bitcast i32* %by0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %317) #1
  %p459 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %ibox, i32 0, i32 0
  %y460 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p459, i32 0, i32 1
  %318 = load i32, i32* %y460, align 4, !tbaa !58
  store i32 %318, i32* %by0, align 4, !tbaa !5
  %319 = bitcast i32* %by1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %319) #1
  %q461 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %ibox, i32 0, i32 1
  %y462 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q461, i32 0, i32 1
  %320 = load i32, i32* %y462, align 4, !tbaa !59
  store i32 %320, i32* %by1, align 4, !tbaa !5
  %321 = bitcast i32* %bpp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %321) #1
  %322 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %bits_per_plane = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %322, i32 0, i32 16
  %323 = load i32, i32* %bits_per_plane, align 4, !tbaa !156
  store i32 %323, i32* %bpp, align 4, !tbaa !5
  %324 = bitcast i32* %num_planes463 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %324) #1
  %325 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %num_planes464 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %325, i32 0, i32 6
  %326 = load i32, i32* %num_planes464, align 4, !tbaa !134
  store i32 %326, i32* %num_planes463, align 4, !tbaa !5
  %327 = bitcast [65 x i32]* %offsets to i8*
  call void @llvm.lifetime.start(i64 260, i8* %327) #1
  %328 = bitcast i32* %i465 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %328) #1
  %329 = bitcast i32* %iy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %329) #1
  %330 = bitcast i32* %ih to i8*
  call void @llvm.lifetime.start(i64 4, i8* %330) #1
  %331 = bitcast i32* %xskip to i8*
  call void @llvm.lifetime.start(i64 4, i8* %331) #1
  %332 = bitcast i32* %xoff to i8*
  call void @llvm.lifetime.start(i64 4, i8* %332) #1
  %333 = bitcast i32* %nrows to i8*
  call void @llvm.lifetime.start(i64 4, i8* %333) #1
  %334 = bitcast i32* %bytes_per_plane to i8*
  call void @llvm.lifetime.start(i64 4, i8* %334) #1
  %335 = bitcast i32* %bytes_per_row to i8*
  call void @llvm.lifetime.start(i64 4, i8* %335) #1
  %336 = bitcast i32* %rows_per_cmd to i8*
  call void @llvm.lifetime.start(i64 4, i8* %336) #1
  %337 = load i32, i32* %by0, align 4, !tbaa !5
  %338 = load i32, i32* %y0, align 4, !tbaa !5
  %cmp466 = icmp slt i32 %337, %338
  br i1 %cmp466, label %if.then.468, label %if.end.469

if.then.468:                                      ; preds = %if.end.454
  %339 = load i32, i32* %y0, align 4, !tbaa !5
  store i32 %339, i32* %by0, align 4, !tbaa !5
  br label %if.end.469

if.end.469:                                       ; preds = %if.then.468, %if.end.454
  %340 = load i32, i32* %by1, align 4, !tbaa !5
  %341 = load i32, i32* %y1, align 4, !tbaa !5
  %cmp470 = icmp sgt i32 %340, %341
  br i1 %cmp470, label %if.then.472, label %if.end.473

if.then.472:                                      ; preds = %if.end.469
  %342 = load i32, i32* %y1, align 4, !tbaa !5
  store i32 %342, i32* %by1, align 4, !tbaa !5
  br label %if.end.473

if.end.473:                                       ; preds = %if.then.472, %if.end.469
  %343 = load i32, i32* %bx0, align 4, !tbaa !5
  %344 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %rect474 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %344, i32 0, i32 11
  %p475 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect474, i32 0, i32 0
  %x476 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p475, i32 0, i32 0
  %345 = load i32, i32* %x476, align 4, !tbaa !147
  %sub477 = sub nsw i32 %343, %345
  store i32 %sub477, i32* %xoff, align 4, !tbaa !5
  %346 = load i32, i32* %xoff, align 4, !tbaa !5
  %347 = load i32, i32* %bpp, align 4, !tbaa !5
  %and478 = and i32 %347, 7
  %idxprom479 = sext i32 %and478 to i64
  %arrayidx480 = getelementptr inbounds [9 x i8], [9 x i8]* @.str.4, i32 0, i64 %idxprom479
  %348 = load i8, i8* %arrayidx480, align 1, !tbaa !9
  %conv481 = sext i8 %348 to i32
  %sub482 = sub nsw i32 0, %conv481
  %and483 = and i32 %346, %sub482
  store i32 %and483, i32* %xskip, align 4, !tbaa !5
  store i32 0, i32* %i465, align 4, !tbaa !5
  br label %for.cond.484

for.cond.484:                                     ; preds = %for.inc.496, %if.end.473
  %349 = load i32, i32* %i465, align 4, !tbaa !5
  %350 = load i32, i32* %num_planes463, align 4, !tbaa !5
  %cmp485 = icmp slt i32 %349, %350
  br i1 %cmp485, label %for.body.487, label %for.end.498

for.body.487:                                     ; preds = %for.cond.484
  %351 = load i32, i32* %by0, align 4, !tbaa !5
  %352 = load i32, i32* %y0, align 4, !tbaa !5
  %sub488 = sub nsw i32 %351, %352
  %353 = load i32, i32* %i465, align 4, !tbaa !5
  %idxprom489 = sext i32 %353 to i64
  %354 = load %struct.gx_image_plane_s*, %struct.gx_image_plane_s** %planes.addr, align 8, !tbaa !1
  %arrayidx490 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %354, i64 %idxprom489
  %raster = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %arrayidx490, i32 0, i32 2
  %355 = load i32, i32* %raster, align 4, !tbaa !316
  %mul491 = mul i32 %sub488, %355
  %356 = load i32, i32* %xskip, align 4, !tbaa !5
  %357 = load i32, i32* %bpp, align 4, !tbaa !5
  %mul492 = mul nsw i32 %356, %357
  %shr = ashr i32 %mul492, 3
  %add493 = add i32 %mul491, %shr
  %358 = load i32, i32* %i465, align 4, !tbaa !5
  %idxprom494 = sext i32 %358 to i64
  %arrayidx495 = getelementptr inbounds [65 x i32], [65 x i32]* %offsets, i32 0, i64 %idxprom494
  store i32 %add493, i32* %arrayidx495, align 4, !tbaa !5
  br label %for.inc.496

for.inc.496:                                      ; preds = %for.body.487
  %359 = load i32, i32* %i465, align 4, !tbaa !5
  %inc497 = add nsw i32 %359, 1
  store i32 %inc497, i32* %i465, align 4, !tbaa !5
  br label %for.cond.484

for.end.498:                                      ; preds = %for.cond.484
  %360 = load i32, i32* %bx1, align 4, !tbaa !5
  %361 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %rect499 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %361, i32 0, i32 11
  %p500 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect499, i32 0, i32 0
  %x501 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p500, i32 0, i32 0
  %362 = load i32, i32* %x501, align 4, !tbaa !147
  %363 = load i32, i32* %xskip, align 4, !tbaa !5
  %add502 = add nsw i32 %362, %363
  %sub503 = sub nsw i32 %360, %add502
  %364 = load i32, i32* %bpp, align 4, !tbaa !5
  %mul504 = mul nsw i32 %sub503, %364
  %add505 = add nsw i32 %mul504, 7
  %shr506 = ashr i32 %add505, 3
  store i32 %shr506, i32* %bytes_per_plane, align 4, !tbaa !5
  %365 = load i32, i32* %bytes_per_plane, align 4, !tbaa !5
  %366 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %num_planes507 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %366, i32 0, i32 6
  %367 = load i32, i32* %num_planes507, align 4, !tbaa !134
  %mul508 = mul i32 %365, %367
  store i32 %mul508, i32* %bytes_per_row, align 4, !tbaa !5
  %368 = load i32, i32* %bytes_per_row, align 4, !tbaa !5
  %cmp509 = icmp ugt i32 %368, 1
  br i1 %cmp509, label %cond.true.511, label %cond.false.512

cond.true.511:                                    ; preds = %for.end.498
  %369 = load i32, i32* %bytes_per_row, align 4, !tbaa !5
  br label %cond.end.513

cond.false.512:                                   ; preds = %for.end.498
  br label %cond.end.513

cond.end.513:                                     ; preds = %cond.false.512, %cond.true.511
  %cond514 = phi i32 [ %369, %cond.true.511 ], [ 1, %cond.false.512 ]
  %conv515 = zext i32 %cond514 to i64
  %div516 = udiv i64 4042, %conv515
  %conv517 = trunc i64 %div516 to i32
  store i32 %conv517, i32* %rows_per_cmd, align 4, !tbaa !5
  %370 = load i32, i32* %rows_per_cmd, align 4, !tbaa !5
  %cmp518 = icmp eq i32 %370, 0
  br i1 %cmp518, label %if.then.520, label %if.end.521

if.then.520:                                      ; preds = %cond.end.513
  store i32 1, i32* %rows_per_cmd, align 4, !tbaa !5
  br label %if.end.521

if.end.521:                                       ; preds = %if.then.520, %cond.end.513
  %371 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %monitor_color = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %371, i32 0, i32 27
  %372 = load i32, i32* %monitor_color, align 4, !tbaa !212
  %tobool522 = icmp ne i32 %372, 0
  br i1 %tobool522, label %if.then.523, label %if.else.587

if.then.523:                                      ; preds = %if.end.521
  %373 = load i32, i32* %by0, align 4, !tbaa !5
  store i32 %373, i32* %iy, align 4, !tbaa !5
  %374 = load i32, i32* %by1, align 4, !tbaa !5
  %375 = load i32, i32* %by0, align 4, !tbaa !5
  %sub524 = sub nsw i32 %374, %375
  store i32 %sub524, i32* %ih, align 4, !tbaa !5
  br label %for.cond.525

for.cond.525:                                     ; preds = %for.inc.583, %if.then.523
  %376 = load i32, i32* %ih, align 4, !tbaa !5
  %cmp526 = icmp sgt i32 %376, 0
  br i1 %cmp526, label %for.body.528, label %for.end.586

for.body.528:                                     ; preds = %for.cond.525
  %377 = load i32, i32* %ih, align 4, !tbaa !5
  %378 = load i32, i32* %rows_per_cmd, align 4, !tbaa !5
  %cmp529 = icmp ult i32 %377, %378
  br i1 %cmp529, label %cond.true.531, label %cond.false.532

cond.true.531:                                    ; preds = %for.body.528
  %379 = load i32, i32* %ih, align 4, !tbaa !5
  br label %cond.end.533

cond.false.532:                                   ; preds = %for.body.528
  %380 = load i32, i32* %rows_per_cmd, align 4, !tbaa !5
  br label %cond.end.533

cond.end.533:                                     ; preds = %cond.false.532, %cond.true.531
  %cond534 = phi i32 [ %379, %cond.true.531 ], [ %380, %cond.false.532 ]
  store i32 %cond534, i32* %nrows, align 4, !tbaa !5
  br label %do.body.535

do.body.535:                                      ; preds = %land.end.560, %cond.end.533
  %381 = load i32, i32* %found_color, align 4, !tbaa !5
  %tobool536 = icmp ne i32 %381, 0
  br i1 %tobool536, label %if.else, label %if.then.537

if.then.537:                                      ; preds = %do.body.535
  %382 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pcls538 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %383 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls538, align 8, !tbaa !69
  %384 = load %struct.gx_image_plane_s*, %struct.gx_image_plane_s** %planes.addr, align 8, !tbaa !1
  %385 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  %386 = load i32, i32* %bytes_per_plane, align 4, !tbaa !5
  %arraydecay539 = getelementptr inbounds [65 x i32], [65 x i32]* %offsets, i32 0, i32 0
  %387 = load i32, i32* %xoff, align 4, !tbaa !5
  %388 = load i32, i32* %xskip, align 4, !tbaa !5
  %sub540 = sub nsw i32 %387, %388
  %389 = load i32, i32* %nrows, align 4, !tbaa !5
  %call541 = call i32 @cmd_image_plane_data_mon(%struct.gx_device_clist_writer_s* %382, %struct.gx_clist_state_s* %383, %struct.gx_image_plane_s* %384, %struct.gx_image_enum_common_s* %385, i32 %386, i32* %arraydecay539, i32 %sub540, i32 %389, i32* %found_color) #6
  store i32 %call541, i32* %code, align 4, !tbaa !5
  %390 = load i32, i32* %found_color, align 4, !tbaa !5
  %tobool542 = icmp ne i32 %390, 0
  br i1 %tobool542, label %if.then.543, label %if.end.547

if.then.543:                                      ; preds = %if.then.537
  %391 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %391) #1
  %392 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %392, i32 0, i32 42
  %get_profile = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 67
  %393 = load i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile, align 8, !tbaa !169
  %394 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %call544 = call i32 %393(%struct.gx_device_s* %394, %struct.cmm_dev_profile_s** %dev_profile) #6
  store i32 %call544, i32* %code, align 4, !tbaa !5
  %395 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %pageneutralcolor = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %395, i32 0, i32 7
  store i32 0, i32* %pageneutralcolor, align 4, !tbaa !210
  %396 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %pis545 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %396, i32 0, i32 12
  %397 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis545, align 8, !tbaa !153
  %icc_link_cache = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %397, i32 0, i32 36
  %398 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache, align 8, !tbaa !213
  %399 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  call void @gsicc_mcm_end_monitor(%struct.gsicc_link_cache_s* %398, %struct.gx_device_s* %399) #6
  %400 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %monitor_color546 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %400, i32 0, i32 27
  store i32 0, i32* %monitor_color546, align 4, !tbaa !212
  %401 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %401) #1
  br label %if.end.547

if.end.547:                                       ; preds = %if.then.543, %if.then.537
  br label %if.end.552

if.else:                                          ; preds = %do.body.535
  %402 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pcls548 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %403 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls548, align 8, !tbaa !69
  %404 = load %struct.gx_image_plane_s*, %struct.gx_image_plane_s** %planes.addr, align 8, !tbaa !1
  %405 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  %406 = load i32, i32* %bytes_per_plane, align 4, !tbaa !5
  %arraydecay549 = getelementptr inbounds [65 x i32], [65 x i32]* %offsets, i32 0, i32 0
  %407 = load i32, i32* %xoff, align 4, !tbaa !5
  %408 = load i32, i32* %xskip, align 4, !tbaa !5
  %sub550 = sub nsw i32 %407, %408
  %409 = load i32, i32* %nrows, align 4, !tbaa !5
  %call551 = call i32 @cmd_image_plane_data(%struct.gx_device_clist_writer_s* %402, %struct.gx_clist_state_s* %403, %struct.gx_image_plane_s* %404, %struct.gx_image_enum_common_s* %405, i32 %406, i32* %arraydecay549, i32 %sub550, i32 %409) #6
  store i32 %call551, i32* %code, align 4, !tbaa !5
  br label %if.end.552

if.end.552:                                       ; preds = %if.else, %if.end.547
  br label %do.cond.553

do.cond.553:                                      ; preds = %if.end.552
  %410 = load i32, i32* %code, align 4, !tbaa !5
  %cmp554 = icmp slt i32 %410, 0
  br i1 %cmp554, label %land.rhs.556, label %land.end.560

land.rhs.556:                                     ; preds = %do.cond.553
  %411 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %412 = load i32, i32* %code, align 4, !tbaa !5
  %call557 = call i32 @clist_VMerror_recover(%struct.gx_device_clist_writer_s* %411, i32 %412) #6
  store i32 %call557, i32* %code, align 4, !tbaa !5
  %cmp558 = icmp sge i32 %call557, 0
  br label %land.end.560

land.end.560:                                     ; preds = %land.rhs.556, %do.cond.553
  %413 = phi i1 [ false, %do.cond.553 ], [ %cmp558, %land.rhs.556 ]
  br i1 %413, label %do.body.535, label %do.end.561

do.end.561:                                       ; preds = %land.end.560
  %414 = load i32, i32* %code, align 4, !tbaa !5
  %cmp562 = icmp slt i32 %414, 0
  br i1 %cmp562, label %land.lhs.true.564, label %if.end.568

land.lhs.true.564:                                ; preds = %do.end.561
  %415 = load i32, i32* %code, align 4, !tbaa !5
  %band_code565 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 4
  store i32 %415, i32* %band_code565, align 4, !tbaa !71
  %tobool566 = icmp ne i32 %415, 0
  br i1 %tobool566, label %if.then.567, label %if.end.568

if.then.567:                                      ; preds = %land.lhs.true.564
  store i32 10, i32* %cleanup.dest.slot
  br label %cleanup.639

if.end.568:                                       ; preds = %land.lhs.true.564, %do.end.561
  store i32 0, i32* %i465, align 4, !tbaa !5
  br label %for.cond.569

for.cond.569:                                     ; preds = %for.inc.580, %if.end.568
  %416 = load i32, i32* %i465, align 4, !tbaa !5
  %417 = load i32, i32* %num_planes463, align 4, !tbaa !5
  %cmp570 = icmp slt i32 %416, %417
  br i1 %cmp570, label %for.body.572, label %for.end.582

for.body.572:                                     ; preds = %for.cond.569
  %418 = load i32, i32* %i465, align 4, !tbaa !5
  %idxprom573 = sext i32 %418 to i64
  %419 = load %struct.gx_image_plane_s*, %struct.gx_image_plane_s** %planes.addr, align 8, !tbaa !1
  %arrayidx574 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %419, i64 %idxprom573
  %raster575 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %arrayidx574, i32 0, i32 2
  %420 = load i32, i32* %raster575, align 4, !tbaa !316
  %421 = load i32, i32* %nrows, align 4, !tbaa !5
  %mul576 = mul i32 %420, %421
  %422 = load i32, i32* %i465, align 4, !tbaa !5
  %idxprom577 = sext i32 %422 to i64
  %arrayidx578 = getelementptr inbounds [65 x i32], [65 x i32]* %offsets, i32 0, i64 %idxprom577
  %423 = load i32, i32* %arrayidx578, align 4, !tbaa !5
  %add579 = add i32 %423, %mul576
  store i32 %add579, i32* %arrayidx578, align 4, !tbaa !5
  br label %for.inc.580

for.inc.580:                                      ; preds = %for.body.572
  %424 = load i32, i32* %i465, align 4, !tbaa !5
  %inc581 = add nsw i32 %424, 1
  store i32 %inc581, i32* %i465, align 4, !tbaa !5
  br label %for.cond.569

for.end.582:                                      ; preds = %for.cond.569
  br label %for.inc.583

for.inc.583:                                      ; preds = %for.end.582
  %425 = load i32, i32* %nrows, align 4, !tbaa !5
  %426 = load i32, i32* %iy, align 4, !tbaa !5
  %add584 = add nsw i32 %426, %425
  store i32 %add584, i32* %iy, align 4, !tbaa !5
  %427 = load i32, i32* %nrows, align 4, !tbaa !5
  %428 = load i32, i32* %ih, align 4, !tbaa !5
  %sub585 = sub nsw i32 %428, %427
  store i32 %sub585, i32* %ih, align 4, !tbaa !5
  br label %for.cond.525

for.end.586:                                      ; preds = %for.cond.525
  br label %if.end.638

if.else.587:                                      ; preds = %if.end.521
  %429 = load i32, i32* %by0, align 4, !tbaa !5
  store i32 %429, i32* %iy, align 4, !tbaa !5
  %430 = load i32, i32* %by1, align 4, !tbaa !5
  %431 = load i32, i32* %by0, align 4, !tbaa !5
  %sub588 = sub nsw i32 %430, %431
  store i32 %sub588, i32* %ih, align 4, !tbaa !5
  br label %for.cond.589

for.cond.589:                                     ; preds = %for.inc.634, %if.else.587
  %432 = load i32, i32* %ih, align 4, !tbaa !5
  %cmp590 = icmp sgt i32 %432, 0
  br i1 %cmp590, label %for.body.592, label %for.end.637

for.body.592:                                     ; preds = %for.cond.589
  %433 = load i32, i32* %ih, align 4, !tbaa !5
  %434 = load i32, i32* %rows_per_cmd, align 4, !tbaa !5
  %cmp593 = icmp ult i32 %433, %434
  br i1 %cmp593, label %cond.true.595, label %cond.false.596

cond.true.595:                                    ; preds = %for.body.592
  %435 = load i32, i32* %ih, align 4, !tbaa !5
  br label %cond.end.597

cond.false.596:                                   ; preds = %for.body.592
  %436 = load i32, i32* %rows_per_cmd, align 4, !tbaa !5
  br label %cond.end.597

cond.end.597:                                     ; preds = %cond.false.596, %cond.true.595
  %cond598 = phi i32 [ %435, %cond.true.595 ], [ %436, %cond.false.596 ]
  store i32 %cond598, i32* %nrows, align 4, !tbaa !5
  br label %do.body.599

do.body.599:                                      ; preds = %land.end.611, %cond.end.597
  %437 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pcls600 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %438 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls600, align 8, !tbaa !69
  %439 = load %struct.gx_image_plane_s*, %struct.gx_image_plane_s** %planes.addr, align 8, !tbaa !1
  %440 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  %441 = load i32, i32* %bytes_per_plane, align 4, !tbaa !5
  %arraydecay601 = getelementptr inbounds [65 x i32], [65 x i32]* %offsets, i32 0, i32 0
  %442 = load i32, i32* %xoff, align 4, !tbaa !5
  %443 = load i32, i32* %xskip, align 4, !tbaa !5
  %sub602 = sub nsw i32 %442, %443
  %444 = load i32, i32* %nrows, align 4, !tbaa !5
  %call603 = call i32 @cmd_image_plane_data(%struct.gx_device_clist_writer_s* %437, %struct.gx_clist_state_s* %438, %struct.gx_image_plane_s* %439, %struct.gx_image_enum_common_s* %440, i32 %441, i32* %arraydecay601, i32 %sub602, i32 %444) #6
  store i32 %call603, i32* %code, align 4, !tbaa !5
  br label %do.cond.604

do.cond.604:                                      ; preds = %do.body.599
  %445 = load i32, i32* %code, align 4, !tbaa !5
  %cmp605 = icmp slt i32 %445, 0
  br i1 %cmp605, label %land.rhs.607, label %land.end.611

land.rhs.607:                                     ; preds = %do.cond.604
  %446 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %447 = load i32, i32* %code, align 4, !tbaa !5
  %call608 = call i32 @clist_VMerror_recover(%struct.gx_device_clist_writer_s* %446, i32 %447) #6
  store i32 %call608, i32* %code, align 4, !tbaa !5
  %cmp609 = icmp sge i32 %call608, 0
  br label %land.end.611

land.end.611:                                     ; preds = %land.rhs.607, %do.cond.604
  %448 = phi i1 [ false, %do.cond.604 ], [ %cmp609, %land.rhs.607 ]
  br i1 %448, label %do.body.599, label %do.end.612

do.end.612:                                       ; preds = %land.end.611
  %449 = load i32, i32* %code, align 4, !tbaa !5
  %cmp613 = icmp slt i32 %449, 0
  br i1 %cmp613, label %land.lhs.true.615, label %if.end.619

land.lhs.true.615:                                ; preds = %do.end.612
  %450 = load i32, i32* %code, align 4, !tbaa !5
  %band_code616 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 4
  store i32 %450, i32* %band_code616, align 4, !tbaa !71
  %tobool617 = icmp ne i32 %450, 0
  br i1 %tobool617, label %if.then.618, label %if.end.619

if.then.618:                                      ; preds = %land.lhs.true.615
  store i32 10, i32* %cleanup.dest.slot
  br label %cleanup.639

if.end.619:                                       ; preds = %land.lhs.true.615, %do.end.612
  store i32 0, i32* %i465, align 4, !tbaa !5
  br label %for.cond.620

for.cond.620:                                     ; preds = %for.inc.631, %if.end.619
  %451 = load i32, i32* %i465, align 4, !tbaa !5
  %452 = load i32, i32* %num_planes463, align 4, !tbaa !5
  %cmp621 = icmp slt i32 %451, %452
  br i1 %cmp621, label %for.body.623, label %for.end.633

for.body.623:                                     ; preds = %for.cond.620
  %453 = load i32, i32* %i465, align 4, !tbaa !5
  %idxprom624 = sext i32 %453 to i64
  %454 = load %struct.gx_image_plane_s*, %struct.gx_image_plane_s** %planes.addr, align 8, !tbaa !1
  %arrayidx625 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %454, i64 %idxprom624
  %raster626 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %arrayidx625, i32 0, i32 2
  %455 = load i32, i32* %raster626, align 4, !tbaa !316
  %456 = load i32, i32* %nrows, align 4, !tbaa !5
  %mul627 = mul i32 %455, %456
  %457 = load i32, i32* %i465, align 4, !tbaa !5
  %idxprom628 = sext i32 %457 to i64
  %arrayidx629 = getelementptr inbounds [65 x i32], [65 x i32]* %offsets, i32 0, i64 %idxprom628
  %458 = load i32, i32* %arrayidx629, align 4, !tbaa !5
  %add630 = add i32 %458, %mul627
  store i32 %add630, i32* %arrayidx629, align 4, !tbaa !5
  br label %for.inc.631

for.inc.631:                                      ; preds = %for.body.623
  %459 = load i32, i32* %i465, align 4, !tbaa !5
  %inc632 = add nsw i32 %459, 1
  store i32 %inc632, i32* %i465, align 4, !tbaa !5
  br label %for.cond.620

for.end.633:                                      ; preds = %for.cond.620
  br label %for.inc.634

for.inc.634:                                      ; preds = %for.end.633
  %460 = load i32, i32* %nrows, align 4, !tbaa !5
  %461 = load i32, i32* %iy, align 4, !tbaa !5
  %add635 = add nsw i32 %461, %460
  store i32 %add635, i32* %iy, align 4, !tbaa !5
  %462 = load i32, i32* %nrows, align 4, !tbaa !5
  %463 = load i32, i32* %ih, align 4, !tbaa !5
  %sub636 = sub nsw i32 %463, %462
  store i32 %sub636, i32* %ih, align 4, !tbaa !5
  br label %for.cond.589

for.end.637:                                      ; preds = %for.cond.589
  br label %if.end.638

if.end.638:                                       ; preds = %for.end.637, %for.end.586
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.639

cleanup.639:                                      ; preds = %if.then.618, %if.then.567, %if.end.638
  %464 = bitcast i32* %rows_per_cmd to i8*
  call void @llvm.lifetime.end(i64 4, i8* %464) #1
  %465 = bitcast i32* %bytes_per_row to i8*
  call void @llvm.lifetime.end(i64 4, i8* %465) #1
  %466 = bitcast i32* %bytes_per_plane to i8*
  call void @llvm.lifetime.end(i64 4, i8* %466) #1
  %467 = bitcast i32* %nrows to i8*
  call void @llvm.lifetime.end(i64 4, i8* %467) #1
  %468 = bitcast i32* %xoff to i8*
  call void @llvm.lifetime.end(i64 4, i8* %468) #1
  %469 = bitcast i32* %xskip to i8*
  call void @llvm.lifetime.end(i64 4, i8* %469) #1
  %470 = bitcast i32* %ih to i8*
  call void @llvm.lifetime.end(i64 4, i8* %470) #1
  %471 = bitcast i32* %iy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %471) #1
  %472 = bitcast i32* %i465 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %472) #1
  %473 = bitcast [65 x i32]* %offsets to i8*
  call void @llvm.lifetime.end(i64 260, i8* %473) #1
  %474 = bitcast i32* %num_planes463 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %474) #1
  %475 = bitcast i32* %bpp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %475) #1
  %476 = bitcast i32* %by1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %476) #1
  %477 = bitcast i32* %by0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %477) #1
  %478 = bitcast i32* %bx1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %478) #1
  %479 = bitcast i32* %bx0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %479) #1
  %cleanup.dest.655 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.655, label %cleanup.687 [
    i32 0, label %cleanup.cont.656
    i32 10, label %error_in_rect
  ]

cleanup.cont.656:                                 ; preds = %cleanup.639
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup.687

error_in_rect:                                    ; preds = %cleanup.639, %cleanup.447
  %480 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %error_is_retryable = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %480, i32 0, i32 94
  %481 = load i32, i32* %error_is_retryable, align 4, !tbaa !100
  %tobool657 = icmp ne i32 %481, 0
  br i1 %tobool657, label %if.then.658, label %if.end.685

if.then.658:                                      ; preds = %error_in_rect
  %482 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %483 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %484 = load i32, i32* %yh_used, align 4, !tbaa !5
  %485 = load i32, i32* %code, align 4, !tbaa !5
  %call659 = call i32 @clist_image_plane_data_retry_cleanup(%struct.gx_device_s* %482, %struct.clist_image_enum_s* %483, i32 %484, i32 %485) #6
  store i32 %call659, i32* %code, align 4, !tbaa !5
  %486 = load i32, i32* %code, align 4, !tbaa !5
  %cmp660 = icmp slt i32 %486, 0
  br i1 %cmp660, label %if.then.662, label %if.else.664

if.then.662:                                      ; preds = %if.then.658
  %487 = load i32, i32* %code, align 4, !tbaa !5
  %band_code663 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 4
  store i32 %487, i32* %band_code663, align 4, !tbaa !71
  br label %if.end.684

if.else.664:                                      ; preds = %if.then.658
  %488 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %driver_call_nesting = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %488, i32 0, i32 96
  %489 = load i32, i32* %driver_call_nesting, align 4, !tbaa !106
  %cmp665 = icmp eq i32 %489, 0
  br i1 %cmp665, label %if.then.667, label %if.end.683

if.then.667:                                      ; preds = %if.else.664
  %490 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %band_code668 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 4
  %491 = load i32, i32* %band_code668, align 4, !tbaa !71
  %call669 = call i32 @clist_VMerror_recover_flush(%struct.gx_device_clist_writer_s* %490, i32 %491) #6
  %band_code670 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 4
  store i32 %call669, i32* %band_code670, align 4, !tbaa !71
  %band_code671 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 4
  %492 = load i32, i32* %band_code671, align 4, !tbaa !71
  %cmp672 = icmp sge i32 %492, 0
  br i1 %cmp672, label %if.then.674, label %if.end.682

if.then.674:                                      ; preds = %if.then.667
  %493 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %494 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %495 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %call675 = call i32 @clist_image_unknowns(%struct.gx_device_s* %494, %struct.clist_image_enum_s* %495) #6
  %or676 = or i32 %call675, 16384
  call void @cmd_clear_known(%struct.gx_device_clist_writer_s* %493, i32 %or676) #6
  %496 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %color_map_is_known677 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %496, i32 0, i32 26
  store i32 0, i32* %color_map_is_known677, align 4, !tbaa !230
  %497 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %id678 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %497, i32 0, i32 4
  %498 = load i64, i64* %id678, align 8, !tbaa !234
  %499 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %image_enum_id = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %499, i32 0, i32 93
  store i64 %498, i64* %image_enum_id, align 8, !tbaa !135
  %height679 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %500 = load i32, i32* %height679, align 4, !tbaa !62
  %y680 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %501 = load i32, i32* %y680, align 4, !tbaa !60
  %sub681 = sub nsw i32 %501, %500
  store i32 %sub681, i32* %y680, align 4, !tbaa !60
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup.687

if.end.682:                                       ; preds = %if.then.667
  br label %if.end.683

if.end.683:                                       ; preds = %if.end.682, %if.else.664
  br label %if.end.684

if.end.684:                                       ; preds = %if.end.683, %if.then.662
  br label %if.end.685

if.end.685:                                       ; preds = %if.end.684, %error_in_rect
  %band_code686 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 4
  %502 = load i32, i32* %band_code686, align 4, !tbaa !71
  store i32 %502, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.687

cleanup.687:                                      ; preds = %if.end.685, %if.then.674, %cleanup.cont.656, %cleanup.639, %cleanup.447, %cleanup.201, %if.then.170
  %503 = bitcast %struct.gs_int_rect_s* %entire_box to i8*
  call void @llvm.lifetime.end(i64 16, i8* %503) #1
  %504 = bitcast %struct.gs_int_rect_s* %ibox to i8*
  call void @llvm.lifetime.end(i64 16, i8* %504) #1
  %cleanup.dest.689 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.689, label %cleanup.706 [
    i32 7, label %do.cond.690
  ]

do.cond.690:                                      ; preds = %cleanup.687
  %height691 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %505 = load i32, i32* %height691, align 4, !tbaa !62
  %y692 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %506 = load i32, i32* %y692, align 4, !tbaa !60
  %add693 = add nsw i32 %506, %505
  store i32 %add693, i32* %y692, align 4, !tbaa !60
  %yend694 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 2
  %507 = load i32, i32* %yend694, align 4, !tbaa !63
  %cmp695 = icmp slt i32 %add693, %507
  br i1 %cmp695, label %do.body, label %do.end.697

do.end.697:                                       ; preds = %do.cond.690
  br label %done

done:                                             ; preds = %do.end.697, %cleanup.98
  %508 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %y698 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %508, i32 0, i32 25
  %509 = load i32, i32* %y698, align 4, !tbaa !198
  %510 = load i32, i32* %y_orig, align 4, !tbaa !5
  %sub699 = sub nsw i32 %509, %510
  %511 = load i32*, i32** %rows_used.addr, align 8, !tbaa !1
  store i32 %sub699, i32* %511, align 4, !tbaa !5
  %512 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %y700 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %512, i32 0, i32 25
  %513 = load i32, i32* %y700, align 4, !tbaa !198
  %514 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %rect701 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %514, i32 0, i32 11
  %q702 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect701, i32 0, i32 1
  %y703 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q702, i32 0, i32 1
  %515 = load i32, i32* %y703, align 4, !tbaa !152
  %cmp704 = icmp sge i32 %513, %515
  %conv705 = zext i1 %cmp704 to i32
  store i32 %conv705, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.706

cleanup.706:                                      ; preds = %done, %cleanup.687, %if.then.105, %cleanup.98, %cleanup
  %516 = bitcast i32* %found_color to i8*
  call void @llvm.lifetime.end(i64 4, i8* %516) #1
  %517 = bitcast %struct.cmd_rects_enum_s* %re to i8*
  call void @llvm.lifetime.end(i64 40, i8* %517) #1
  %518 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %518) #1
  %519 = bitcast i32* %rheight to i8*
  call void @llvm.lifetime.end(i64 4, i8* %519) #1
  %520 = bitcast i32* %ry to i8*
  call void @llvm.lifetime.end(i64 4, i8* %520) #1
  %521 = bitcast i32* %y1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %521) #1
  %522 = bitcast i32* %y0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %522) #1
  %523 = bitcast i32* %yh_used to i8*
  call void @llvm.lifetime.end(i64 4, i8* %523) #1
  %524 = bitcast i32* %y_orig to i8*
  call void @llvm.lifetime.end(i64 4, i8* %524) #1
  %525 = bitcast %struct.gs_rect_s* %dbox to i8*
  call void @llvm.lifetime.end(i64 32, i8* %525) #1
  %526 = bitcast %struct.gs_rect_s* %sbox to i8*
  call void @llvm.lifetime.end(i64 32, i8* %526) #1
  %527 = bitcast %struct.clist_image_enum_s** %pie to i8*
  call void @llvm.lifetime.end(i64 8, i8* %527) #1
  %528 = bitcast %struct.gx_device_clist_writer_s** %cdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %528) #1
  %529 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %529) #1
  %530 = load i32, i32* %retval
  ret i32 %530
}

; Function Attrs: nounwind uwtable
define internal i32 @clist_image_end_image(%struct.gx_image_enum_common_s* %info, i32 %draw_last) #0 {
entry:
  %info.addr = alloca %struct.gx_image_enum_common_s*, align 8
  %draw_last.addr = alloca i32, align 4
  %dev = alloca %struct.gx_device_s*, align 8
  %cdev = alloca %struct.gx_device_clist_writer_s*, align 8
  %pie = alloca %struct.clist_image_enum_s*, align 8
  %code = alloca i32, align 4
  %retry_code = alloca i32, align 4
  store %struct.gx_image_enum_common_s* %info, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  store i32 %draw_last, i32* %draw_last.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  %dev1 = getelementptr inbounds %struct.gx_image_enum_common_s, %struct.gx_image_enum_common_s* %1, i32 0, i32 2
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev1, align 8, !tbaa !308
  store %struct.gx_device_s* %2, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_clist_writer_s** %cdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %5 = bitcast %struct.gx_device_s* %4 to %union.gx_device_clist_s*
  %writer = bitcast %union.gx_device_clist_s* %5 to %struct.gx_device_clist_writer_s*
  store %struct.gx_device_clist_writer_s* %writer, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %6 = bitcast %struct.clist_image_enum_s** %pie to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  %8 = bitcast %struct.gx_image_enum_common_s* %7 to %struct.clist_image_enum_s*
  store %struct.clist_image_enum_s* %8, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %9 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %driver_call_nesting = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %10, i32 0, i32 96
  %11 = load i32, i32* %driver_call_nesting, align 4, !tbaa !106
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %driver_call_nesting, align 4, !tbaa !106
  br label %do.body

do.body:                                          ; preds = %land.end, %entry
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %13 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %call = call i32 @write_image_end_all(%struct.gx_device_s* %12, %struct.clist_image_enum_s* %13) #6
  store i32 %call, i32* %code, align 4, !tbaa !5
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %14 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %14, 0
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %do.cond
  %15 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %error_is_retryable = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %15, i32 0, i32 94
  %16 = load i32, i32* %error_is_retryable, align 4, !tbaa !100
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %17 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %18 = load i32, i32* %code, align 4, !tbaa !5
  %call2 = call i32 @clist_VMerror_recover(%struct.gx_device_clist_writer_s* %17, i32 %18) #6
  store i32 %call2, i32* %code, align 4, !tbaa !5
  %cmp3 = icmp sge i32 %call2, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %do.cond
  %19 = phi i1 [ false, %land.lhs.true ], [ false, %do.cond ], [ %cmp3, %land.rhs ]
  br i1 %19, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  %20 = load i32, i32* %code, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %20, 0
  br i1 %cmp4, label %land.lhs.true.5, label %if.end.17

land.lhs.true.5:                                  ; preds = %do.end
  %21 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %error_is_retryable6 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %21, i32 0, i32 94
  %22 = load i32, i32* %error_is_retryable6, align 4, !tbaa !100
  %tobool7 = icmp ne i32 %22, 0
  br i1 %tobool7, label %if.then, label %if.end.17

if.then:                                          ; preds = %land.lhs.true.5
  %23 = bitcast i32* %retry_code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %24 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %ignore_lo_mem_warnings = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %24, i32 0, i32 97
  %25 = load i32, i32* %ignore_lo_mem_warnings, align 4, !tbaa !317
  %inc8 = add nsw i32 %25, 1
  store i32 %inc8, i32* %ignore_lo_mem_warnings, align 4, !tbaa !317
  %26 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %27 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie, align 8, !tbaa !1
  %call9 = call i32 @write_image_end_all(%struct.gx_device_s* %26, %struct.clist_image_enum_s* %27) #6
  store i32 %call9, i32* %retry_code, align 4, !tbaa !5
  %28 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %ignore_lo_mem_warnings10 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %28, i32 0, i32 97
  %29 = load i32, i32* %ignore_lo_mem_warnings10, align 4, !tbaa !317
  %dec = add nsw i32 %29, -1
  store i32 %dec, i32* %ignore_lo_mem_warnings10, align 4, !tbaa !317
  %30 = load i32, i32* %retry_code, align 4, !tbaa !5
  %cmp11 = icmp sge i32 %30, 0
  br i1 %cmp11, label %land.lhs.true.12, label %if.end

land.lhs.true.12:                                 ; preds = %if.then
  %31 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %driver_call_nesting13 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %31, i32 0, i32 96
  %32 = load i32, i32* %driver_call_nesting13, align 4, !tbaa !106
  %cmp14 = icmp eq i32 %32, 0
  br i1 %cmp14, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %land.lhs.true.12
  %33 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %34 = load i32, i32* %code, align 4, !tbaa !5
  %call16 = call i32 @clist_VMerror_recover_flush(%struct.gx_device_clist_writer_s* %33, i32 %34) #6
  store i32 %call16, i32* %code, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.15, %land.lhs.true.12, %if.then
  %35 = bitcast i32* %retry_code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  br label %if.end.17

if.end.17:                                        ; preds = %if.end, %land.lhs.true.5, %do.end
  %36 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %driver_call_nesting18 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %36, i32 0, i32 96
  %37 = load i32, i32* %driver_call_nesting18, align 4, !tbaa !106
  %dec19 = add nsw i32 %37, -1
  store i32 %dec19, i32* %driver_call_nesting18, align 4, !tbaa !106
  %38 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %image_enum_id = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %38, i32 0, i32 93
  store i64 0, i64* %image_enum_id, align 8, !tbaa !135
  call void @gx_image_free_enum(%struct.gx_image_enum_common_s** %info.addr) #6
  %39 = load i32, i32* %code, align 4, !tbaa !5
  %40 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  %41 = bitcast %struct.clist_image_enum_s** %pie to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  %42 = bitcast %struct.gx_device_clist_writer_s** %cdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  %43 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #1
  ret i32 %39
}

; Function Attrs: nounwind uwtable
define internal i32 @image_band_box(%struct.gx_device_s* %dev, %struct.clist_image_enum_s* %pie, i32 %y, i32 %h, %struct.gs_int_rect_s* %pbox) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pie.addr = alloca %struct.clist_image_enum_s*, align 8
  %y.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %pbox.addr = alloca %struct.gs_int_rect_s*, align 8
  %by0 = alloca i32, align 4
  %by1 = alloca i32, align 4
  %px = alloca i32, align 4
  %py = alloca i32, align 4
  %qx = alloca i32, align 4
  %qy = alloca i32, align 4
  %cbox = alloca %struct.gs_fixed_rect_s, align 4
  %bbox = alloca %struct.gs_rect_s, align 8
  %ibox = alloca %struct.gs_rect_s, align 8
  %cleanup.dest.slot = alloca i32
  %rect156 = alloca [4 x %struct.gs_point_s], align 16
  %corners = alloca [5 x %struct.gs_point_s], align 16
  %i = alloca i32, align 4
  %pa = alloca %struct.gs_point_s, align 8
  %pt = alloca %struct.gs_point_s, align 8
  %dx = alloca double, align 8
  %dy = alloca double, align 8
  %t = alloca double, align 8
  %t356 = alloca double, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.clist_image_enum_s* %pie, %struct.clist_image_enum_s** %pie.addr, align 8, !tbaa !1
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  store %struct.gs_int_rect_s* %pbox, %struct.gs_int_rect_s** %pbox.addr, align 8, !tbaa !1
  %0 = bitcast i32* %by0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %y.addr, align 4, !tbaa !5
  %shl = shl i32 %1, 8
  store i32 %shl, i32* %by0, align 4, !tbaa !5
  %2 = bitcast i32* %by1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load i32, i32* %y.addr, align 4, !tbaa !5
  %4 = load i32, i32* %h.addr, align 4, !tbaa !5
  %add = add nsw i32 %3, %4
  %shl1 = shl i32 %add, 8
  store i32 %shl1, i32* %by1, align 4, !tbaa !5
  %5 = bitcast i32* %px to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie.addr, align 8, !tbaa !1
  %rect = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %6, i32 0, i32 11
  %p = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p, i32 0, i32 0
  %7 = load i32, i32* %x, align 4, !tbaa !147
  store i32 %7, i32* %px, align 4, !tbaa !5
  %8 = bitcast i32* %py to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie.addr, align 8, !tbaa !1
  %rect2 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %9, i32 0, i32 11
  %p3 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect2, i32 0, i32 0
  %y4 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p3, i32 0, i32 1
  %10 = load i32, i32* %y4, align 4, !tbaa !148
  store i32 %10, i32* %py, align 4, !tbaa !5
  %11 = bitcast i32* %qx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie.addr, align 8, !tbaa !1
  %rect5 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %12, i32 0, i32 11
  %q = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect5, i32 0, i32 1
  %x6 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q, i32 0, i32 0
  %13 = load i32, i32* %x6, align 4, !tbaa !150
  store i32 %13, i32* %qx, align 4, !tbaa !5
  %14 = bitcast i32* %qy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie.addr, align 8, !tbaa !1
  %rect7 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %15, i32 0, i32 11
  %q8 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect7, i32 0, i32 1
  %y9 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q8, i32 0, i32 1
  %16 = load i32, i32* %y9, align 4, !tbaa !152
  store i32 %16, i32* %qy, align 4, !tbaa !5
  %17 = bitcast %struct.gs_fixed_rect_s* %cbox to i8*
  call void @llvm.lifetime.start(i64 16, i8* %17) #1
  %18 = bitcast %struct.gs_rect_s* %bbox to i8*
  call void @llvm.lifetime.start(i64 32, i8* %18) #1
  %19 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %19, i32 0, i32 42
  %get_clipping_box = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 36
  %20 = load void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)** %get_clipping_box, align 8, !tbaa !318
  %21 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  call void %20(%struct.gx_device_s* %21, %struct.gs_fixed_rect_s* %cbox) #6
  %p10 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox, i32 0, i32 0
  %x11 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p10, i32 0, i32 0
  %22 = load i32, i32* %x11, align 4, !tbaa !107
  %conv = sext i32 %22 to i64
  %sub = sub nsw i64 %conv, 128
  %conv12 = sitofp i64 %sub to double
  %mul = fmul double %conv12, 3.906250e-03
  %p13 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 0
  %x14 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p13, i32 0, i32 0
  store double %mul, double* %x14, align 8, !tbaa !204
  %q15 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox, i32 0, i32 1
  %x16 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q15, i32 0, i32 0
  %23 = load i32, i32* %x16, align 4, !tbaa !110
  %conv17 = sext i32 %23 to i64
  %add18 = add nsw i64 %conv17, 128
  %conv19 = sitofp i64 %add18 to double
  %mul20 = fmul double %conv19, 3.906250e-03
  %q21 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 1
  %x22 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q21, i32 0, i32 0
  store double %mul20, double* %x22, align 8, !tbaa !207
  %p23 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox, i32 0, i32 0
  %y24 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p23, i32 0, i32 1
  %24 = load i32, i32* %y24, align 4, !tbaa !109
  %25 = load i32, i32* %by0, align 4, !tbaa !5
  %cmp = icmp sgt i32 %24, %25
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %p26 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox, i32 0, i32 0
  %y27 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p26, i32 0, i32 1
  %26 = load i32, i32* %y27, align 4, !tbaa !109
  br label %cond.end

cond.false:                                       ; preds = %entry
  %27 = load i32, i32* %by0, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %26, %cond.true ], [ %27, %cond.false ]
  %conv28 = sext i32 %cond to i64
  %sub29 = sub nsw i64 %conv28, 128
  %conv30 = sitofp i64 %sub29 to double
  %mul31 = fmul double %conv30, 3.906250e-03
  %p32 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 0
  %y33 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p32, i32 0, i32 1
  store double %mul31, double* %y33, align 8, !tbaa !206
  %q34 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox, i32 0, i32 1
  %y35 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q34, i32 0, i32 1
  %28 = load i32, i32* %y35, align 4, !tbaa !111
  %29 = load i32, i32* %by1, align 4, !tbaa !5
  %cmp36 = icmp slt i32 %28, %29
  br i1 %cmp36, label %cond.true.38, label %cond.false.41

cond.true.38:                                     ; preds = %cond.end
  %q39 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox, i32 0, i32 1
  %y40 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q39, i32 0, i32 1
  %30 = load i32, i32* %y40, align 4, !tbaa !111
  br label %cond.end.42

cond.false.41:                                    ; preds = %cond.end
  %31 = load i32, i32* %by1, align 4, !tbaa !5
  br label %cond.end.42

cond.end.42:                                      ; preds = %cond.false.41, %cond.true.38
  %cond43 = phi i32 [ %30, %cond.true.38 ], [ %31, %cond.false.41 ]
  %conv44 = sext i32 %cond43 to i64
  %add45 = add nsw i64 %conv44, 128
  %conv46 = sitofp i64 %add45 to double
  %mul47 = fmul double %conv46, 3.906250e-03
  %q48 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 1
  %y49 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q48, i32 0, i32 1
  store double %mul47, double* %y49, align 8, !tbaa !208
  %p50 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 0
  %y51 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p50, i32 0, i32 1
  %32 = load double, double* %y51, align 8, !tbaa !206
  %33 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie.addr, align 8, !tbaa !1
  %ymin = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %33, i32 0, i32 20
  %34 = load i32, i32* %ymin, align 4, !tbaa !231
  %conv52 = sitofp i32 %34 to double
  %cmp53 = fcmp olt double %32, %conv52
  br i1 %cmp53, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.42
  %35 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie.addr, align 8, !tbaa !1
  %ymin55 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %35, i32 0, i32 20
  %36 = load i32, i32* %ymin55, align 4, !tbaa !231
  %conv56 = sitofp i32 %36 to double
  %p57 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 0
  %y58 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p57, i32 0, i32 1
  store double %conv56, double* %y58, align 8, !tbaa !206
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.42
  %q59 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 1
  %y60 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q59, i32 0, i32 1
  %37 = load double, double* %y60, align 8, !tbaa !208
  %38 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie.addr, align 8, !tbaa !1
  %ymax = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %38, i32 0, i32 21
  %39 = load i32, i32* %ymax, align 4, !tbaa !233
  %conv61 = sitofp i32 %39 to double
  %cmp62 = fcmp ogt double %37, %conv61
  br i1 %cmp62, label %if.then.64, label %if.end.69

if.then.64:                                       ; preds = %if.end
  %40 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie.addr, align 8, !tbaa !1
  %ymax65 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %40, i32 0, i32 21
  %41 = load i32, i32* %ymax65, align 4, !tbaa !233
  %conv66 = sitofp i32 %41 to double
  %q67 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 1
  %y68 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q67, i32 0, i32 1
  store double %conv66, double* %y68, align 8, !tbaa !208
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.64, %if.end
  %42 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie.addr, align 8, !tbaa !1
  %matrix = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %42, i32 0, i32 17
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %matrix, i32 0, i32 1
  %43 = load float, float* %xy, align 4, !tbaa !136
  %conv70 = fpext float %43 to double
  %cmp71 = fcmp oeq double %conv70, 0.000000e+00
  br i1 %cmp71, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end.69
  %44 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie.addr, align 8, !tbaa !1
  %matrix73 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %44, i32 0, i32 17
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %matrix73, i32 0, i32 2
  %45 = load float, float* %yx, align 4, !tbaa !137
  %conv74 = fpext float %45 to double
  %cmp75 = fcmp oeq double %conv74, 0.000000e+00
  br i1 %cmp75, label %if.then.86, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.end.69
  %46 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie.addr, align 8, !tbaa !1
  %matrix77 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %46, i32 0, i32 17
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %matrix77, i32 0, i32 0
  %47 = load float, float* %xx, align 4, !tbaa !138
  %conv78 = fpext float %47 to double
  %cmp79 = fcmp oeq double %conv78, 0.000000e+00
  br i1 %cmp79, label %land.lhs.true.81, label %if.else

land.lhs.true.81:                                 ; preds = %lor.lhs.false
  %48 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie.addr, align 8, !tbaa !1
  %matrix82 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %48, i32 0, i32 17
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %matrix82, i32 0, i32 3
  %49 = load float, float* %yy, align 4, !tbaa !139
  %conv83 = fpext float %49 to double
  %cmp84 = fcmp oeq double %conv83, 0.000000e+00
  br i1 %cmp84, label %if.then.86, label %if.else

if.then.86:                                       ; preds = %land.lhs.true.81, %land.lhs.true
  %50 = bitcast %struct.gs_rect_s* %ibox to i8*
  call void @llvm.lifetime.start(i64 32, i8* %50) #1
  %51 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie.addr, align 8, !tbaa !1
  %matrix87 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %51, i32 0, i32 17
  %call = call i32 @gs_bbox_transform_inverse(%struct.gs_rect_s* %bbox, %struct.gs_matrix_s* %matrix87, %struct.gs_rect_s* %ibox) #6
  %cmp88 = icmp slt i32 %call, 0
  br i1 %cmp88, label %if.then.90, label %if.end.91

if.then.90:                                       ; preds = %if.then.86
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.91:                                        ; preds = %if.then.86
  %52 = load i32, i32* %px, align 4, !tbaa !5
  %p92 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %ibox, i32 0, i32 0
  %x93 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p92, i32 0, i32 0
  %53 = load double, double* %x93, align 8, !tbaa !204
  %call94 = call double @floor(double %53) #7
  %conv95 = fptosi double %call94 to i32
  %cmp96 = icmp sgt i32 %52, %conv95
  br i1 %cmp96, label %cond.true.98, label %cond.false.99

cond.true.98:                                     ; preds = %if.end.91
  %54 = load i32, i32* %px, align 4, !tbaa !5
  br label %cond.end.104

cond.false.99:                                    ; preds = %if.end.91
  %p100 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %ibox, i32 0, i32 0
  %x101 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p100, i32 0, i32 0
  %55 = load double, double* %x101, align 8, !tbaa !204
  %call102 = call double @floor(double %55) #7
  %conv103 = fptosi double %call102 to i32
  br label %cond.end.104

cond.end.104:                                     ; preds = %cond.false.99, %cond.true.98
  %cond105 = phi i32 [ %54, %cond.true.98 ], [ %conv103, %cond.false.99 ]
  %56 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %pbox.addr, align 8, !tbaa !1
  %p106 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %56, i32 0, i32 0
  %x107 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p106, i32 0, i32 0
  store i32 %cond105, i32* %x107, align 4, !tbaa !55
  %57 = load i32, i32* %qx, align 4, !tbaa !5
  %q108 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %ibox, i32 0, i32 1
  %x109 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q108, i32 0, i32 0
  %58 = load double, double* %x109, align 8, !tbaa !207
  %call110 = call double @ceil(double %58) #7
  %conv111 = fptosi double %call110 to i32
  %cmp112 = icmp slt i32 %57, %conv111
  br i1 %cmp112, label %cond.true.114, label %cond.false.115

cond.true.114:                                    ; preds = %cond.end.104
  %59 = load i32, i32* %qx, align 4, !tbaa !5
  br label %cond.end.120

cond.false.115:                                   ; preds = %cond.end.104
  %q116 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %ibox, i32 0, i32 1
  %x117 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q116, i32 0, i32 0
  %60 = load double, double* %x117, align 8, !tbaa !207
  %call118 = call double @ceil(double %60) #7
  %conv119 = fptosi double %call118 to i32
  br label %cond.end.120

cond.end.120:                                     ; preds = %cond.false.115, %cond.true.114
  %cond121 = phi i32 [ %59, %cond.true.114 ], [ %conv119, %cond.false.115 ]
  %61 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %pbox.addr, align 8, !tbaa !1
  %q122 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %61, i32 0, i32 1
  %x123 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q122, i32 0, i32 0
  store i32 %cond121, i32* %x123, align 4, !tbaa !57
  %62 = load i32, i32* %py, align 4, !tbaa !5
  %p124 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %ibox, i32 0, i32 0
  %y125 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p124, i32 0, i32 1
  %63 = load double, double* %y125, align 8, !tbaa !206
  %call126 = call double @floor(double %63) #7
  %conv127 = fptosi double %call126 to i32
  %cmp128 = icmp sgt i32 %62, %conv127
  br i1 %cmp128, label %cond.true.130, label %cond.false.131

cond.true.130:                                    ; preds = %cond.end.120
  %64 = load i32, i32* %py, align 4, !tbaa !5
  br label %cond.end.136

cond.false.131:                                   ; preds = %cond.end.120
  %p132 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %ibox, i32 0, i32 0
  %y133 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p132, i32 0, i32 1
  %65 = load double, double* %y133, align 8, !tbaa !206
  %call134 = call double @floor(double %65) #7
  %conv135 = fptosi double %call134 to i32
  br label %cond.end.136

cond.end.136:                                     ; preds = %cond.false.131, %cond.true.130
  %cond137 = phi i32 [ %64, %cond.true.130 ], [ %conv135, %cond.false.131 ]
  %66 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %pbox.addr, align 8, !tbaa !1
  %p138 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %66, i32 0, i32 0
  %y139 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p138, i32 0, i32 1
  store i32 %cond137, i32* %y139, align 4, !tbaa !58
  %67 = load i32, i32* %qy, align 4, !tbaa !5
  %q140 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %ibox, i32 0, i32 1
  %y141 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q140, i32 0, i32 1
  %68 = load double, double* %y141, align 8, !tbaa !208
  %call142 = call double @ceil(double %68) #7
  %conv143 = fptosi double %call142 to i32
  %cmp144 = icmp slt i32 %67, %conv143
  br i1 %cmp144, label %cond.true.146, label %cond.false.147

cond.true.146:                                    ; preds = %cond.end.136
  %69 = load i32, i32* %qy, align 4, !tbaa !5
  br label %cond.end.152

cond.false.147:                                   ; preds = %cond.end.136
  %q148 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %ibox, i32 0, i32 1
  %y149 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q148, i32 0, i32 1
  %70 = load double, double* %y149, align 8, !tbaa !208
  %call150 = call double @ceil(double %70) #7
  %conv151 = fptosi double %call150 to i32
  br label %cond.end.152

cond.end.152:                                     ; preds = %cond.false.147, %cond.true.146
  %cond153 = phi i32 [ %69, %cond.true.146 ], [ %conv151, %cond.false.147 ]
  %71 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %pbox.addr, align 8, !tbaa !1
  %q154 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %71, i32 0, i32 1
  %y155 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q154, i32 0, i32 1
  store i32 %cond153, i32* %y155, align 4, !tbaa !59
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end.152, %if.then.90
  %72 = bitcast %struct.gs_rect_s* %ibox to i8*
  call void @llvm.lifetime.end(i64 32, i8* %72) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.498 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.415

if.else:                                          ; preds = %land.lhs.true.81, %lor.lhs.false
  %73 = bitcast [4 x %struct.gs_point_s]* %rect156 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %73) #1
  %74 = bitcast [5 x %struct.gs_point_s]* %corners to i8*
  call void @llvm.lifetime.start(i64 80, i8* %74) #1
  %75 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %75) #1
  %76 = load i32, i32* %px, align 4, !tbaa !5
  %conv157 = sitofp i32 %76 to double
  %arrayidx = getelementptr inbounds [4 x %struct.gs_point_s], [4 x %struct.gs_point_s]* %rect156, i32 0, i64 3
  %x158 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx, i32 0, i32 0
  store double %conv157, double* %x158, align 8, !tbaa !319
  %arrayidx159 = getelementptr inbounds [4 x %struct.gs_point_s], [4 x %struct.gs_point_s]* %rect156, i32 0, i64 0
  %x160 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx159, i32 0, i32 0
  store double %conv157, double* %x160, align 8, !tbaa !319
  %77 = load i32, i32* %qx, align 4, !tbaa !5
  %conv161 = sitofp i32 %77 to double
  %arrayidx162 = getelementptr inbounds [4 x %struct.gs_point_s], [4 x %struct.gs_point_s]* %rect156, i32 0, i64 2
  %x163 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx162, i32 0, i32 0
  store double %conv161, double* %x163, align 8, !tbaa !319
  %arrayidx164 = getelementptr inbounds [4 x %struct.gs_point_s], [4 x %struct.gs_point_s]* %rect156, i32 0, i64 1
  %x165 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx164, i32 0, i32 0
  store double %conv161, double* %x165, align 8, !tbaa !319
  %78 = load i32, i32* %py, align 4, !tbaa !5
  %conv166 = sitofp i32 %78 to double
  %arrayidx167 = getelementptr inbounds [4 x %struct.gs_point_s], [4 x %struct.gs_point_s]* %rect156, i32 0, i64 1
  %y168 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx167, i32 0, i32 1
  store double %conv166, double* %y168, align 8, !tbaa !320
  %arrayidx169 = getelementptr inbounds [4 x %struct.gs_point_s], [4 x %struct.gs_point_s]* %rect156, i32 0, i64 0
  %y170 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx169, i32 0, i32 1
  store double %conv166, double* %y170, align 8, !tbaa !320
  %79 = load i32, i32* %qy, align 4, !tbaa !5
  %conv171 = sitofp i32 %79 to double
  %arrayidx172 = getelementptr inbounds [4 x %struct.gs_point_s], [4 x %struct.gs_point_s]* %rect156, i32 0, i64 3
  %y173 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx172, i32 0, i32 1
  store double %conv171, double* %y173, align 8, !tbaa !320
  %arrayidx174 = getelementptr inbounds [4 x %struct.gs_point_s], [4 x %struct.gs_point_s]* %rect156, i32 0, i64 2
  %y175 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx174, i32 0, i32 1
  store double %conv171, double* %y175, align 8, !tbaa !320
  %p176 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 0
  %x177 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p176, i32 0, i32 0
  %80 = load double, double* %x177, align 8, !tbaa !204
  %p178 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 0
  %y179 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p178, i32 0, i32 1
  %81 = load double, double* %y179, align 8, !tbaa !206
  %82 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie.addr, align 8, !tbaa !1
  %matrix180 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %82, i32 0, i32 17
  %arrayidx181 = getelementptr inbounds [5 x %struct.gs_point_s], [5 x %struct.gs_point_s]* %corners, i32 0, i64 0
  %call182 = call i32 @gs_point_transform_inverse(double %80, double %81, %struct.gs_matrix_s* %matrix180, %struct.gs_point_s* %arrayidx181) #6
  %cmp183 = icmp slt i32 %call182, 0
  br i1 %cmp183, label %if.then.215, label %lor.lhs.false.185

lor.lhs.false.185:                                ; preds = %if.else
  %q186 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 1
  %x187 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q186, i32 0, i32 0
  %83 = load double, double* %x187, align 8, !tbaa !207
  %p188 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 0
  %y189 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p188, i32 0, i32 1
  %84 = load double, double* %y189, align 8, !tbaa !206
  %85 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie.addr, align 8, !tbaa !1
  %matrix190 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %85, i32 0, i32 17
  %arrayidx191 = getelementptr inbounds [5 x %struct.gs_point_s], [5 x %struct.gs_point_s]* %corners, i32 0, i64 1
  %call192 = call i32 @gs_point_transform_inverse(double %83, double %84, %struct.gs_matrix_s* %matrix190, %struct.gs_point_s* %arrayidx191) #6
  %cmp193 = icmp slt i32 %call192, 0
  br i1 %cmp193, label %if.then.215, label %lor.lhs.false.195

lor.lhs.false.195:                                ; preds = %lor.lhs.false.185
  %q196 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 1
  %x197 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q196, i32 0, i32 0
  %86 = load double, double* %x197, align 8, !tbaa !207
  %q198 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 1
  %y199 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q198, i32 0, i32 1
  %87 = load double, double* %y199, align 8, !tbaa !208
  %88 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie.addr, align 8, !tbaa !1
  %matrix200 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %88, i32 0, i32 17
  %arrayidx201 = getelementptr inbounds [5 x %struct.gs_point_s], [5 x %struct.gs_point_s]* %corners, i32 0, i64 2
  %call202 = call i32 @gs_point_transform_inverse(double %86, double %87, %struct.gs_matrix_s* %matrix200, %struct.gs_point_s* %arrayidx201) #6
  %cmp203 = icmp slt i32 %call202, 0
  br i1 %cmp203, label %if.then.215, label %lor.lhs.false.205

lor.lhs.false.205:                                ; preds = %lor.lhs.false.195
  %p206 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 0
  %x207 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p206, i32 0, i32 0
  %89 = load double, double* %x207, align 8, !tbaa !204
  %q208 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 1
  %y209 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q208, i32 0, i32 1
  %90 = load double, double* %y209, align 8, !tbaa !208
  %91 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie.addr, align 8, !tbaa !1
  %matrix210 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %91, i32 0, i32 17
  %arrayidx211 = getelementptr inbounds [5 x %struct.gs_point_s], [5 x %struct.gs_point_s]* %corners, i32 0, i64 3
  %call212 = call i32 @gs_point_transform_inverse(double %89, double %90, %struct.gs_matrix_s* %matrix210, %struct.gs_point_s* %arrayidx211) #6
  %cmp213 = icmp slt i32 %call212, 0
  br i1 %cmp213, label %if.then.215, label %if.end.216

if.then.215:                                      ; preds = %lor.lhs.false.205, %lor.lhs.false.195, %lor.lhs.false.185, %if.else
  br label %do.body

do.body:                                          ; preds = %if.then.215
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.410

if.end.216:                                       ; preds = %lor.lhs.false.205
  %arrayidx217 = getelementptr inbounds [5 x %struct.gs_point_s], [5 x %struct.gs_point_s]* %corners, i32 0, i64 4
  %arrayidx218 = getelementptr inbounds [5 x %struct.gs_point_s], [5 x %struct.gs_point_s]* %corners, i32 0, i64 0
  %92 = bitcast %struct.gs_point_s* %arrayidx217 to i8*
  %93 = bitcast %struct.gs_point_s* %arrayidx218 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %92, i8* %93, i64 16, i32 8, i1 false), !tbaa.struct !321
  %94 = load i32, i32* %qx, align 4, !tbaa !5
  %95 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %pbox.addr, align 8, !tbaa !1
  %p219 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %95, i32 0, i32 0
  %x220 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p219, i32 0, i32 0
  store i32 %94, i32* %x220, align 4, !tbaa !55
  %96 = load i32, i32* %qy, align 4, !tbaa !5
  %97 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %pbox.addr, align 8, !tbaa !1
  %p221 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %97, i32 0, i32 0
  %y222 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p221, i32 0, i32 1
  store i32 %96, i32* %y222, align 4, !tbaa !58
  %98 = load i32, i32* %px, align 4, !tbaa !5
  %99 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %pbox.addr, align 8, !tbaa !1
  %q223 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %99, i32 0, i32 1
  %x224 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q223, i32 0, i32 0
  store i32 %98, i32* %x224, align 4, !tbaa !57
  %100 = load i32, i32* %py, align 4, !tbaa !5
  %101 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %pbox.addr, align 8, !tbaa !1
  %q225 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %101, i32 0, i32 1
  %y226 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q225, i32 0, i32 1
  store i32 %100, i32* %y226, align 4, !tbaa !59
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.216
  %102 = load i32, i32* %i, align 4, !tbaa !5
  %cmp227 = icmp slt i32 %102, 4
  br i1 %cmp227, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %103 = bitcast %struct.gs_point_s* %pa to i8*
  call void @llvm.lifetime.start(i64 16, i8* %103) #1
  %104 = bitcast %struct.gs_point_s* %pt to i8*
  call void @llvm.lifetime.start(i64 16, i8* %104) #1
  %105 = bitcast double* %dx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %105) #1
  %106 = bitcast double* %dy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %106) #1
  %107 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %107 to i64
  %arrayidx229 = getelementptr inbounds [4 x %struct.gs_point_s], [4 x %struct.gs_point_s]* %rect156, i32 0, i64 %idxprom
  %108 = bitcast %struct.gs_point_s* %pa to i8*
  %109 = bitcast %struct.gs_point_s* %arrayidx229 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %108, i8* %109, i64 16, i32 8, i1 false), !tbaa.struct !321
  %x230 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pa, i32 0, i32 0
  %110 = load double, double* %x230, align 8, !tbaa !319
  %y231 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pa, i32 0, i32 1
  %111 = load double, double* %y231, align 8, !tbaa !320
  %112 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie.addr, align 8, !tbaa !1
  %matrix232 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %112, i32 0, i32 17
  %call233 = call i32 @gs_point_transform(double %110, double %111, %struct.gs_matrix_s* %matrix232, %struct.gs_point_s* %pt) #6
  %x234 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 0
  %113 = load double, double* %x234, align 8, !tbaa !319
  %p235 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 0
  %x236 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p235, i32 0, i32 0
  %114 = load double, double* %x236, align 8, !tbaa !204
  %cmp237 = fcmp oge double %113, %114
  br i1 %cmp237, label %land.lhs.true.239, label %if.end.260

land.lhs.true.239:                                ; preds = %for.body
  %x240 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 0
  %115 = load double, double* %x240, align 8, !tbaa !319
  %q241 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 1
  %x242 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q241, i32 0, i32 0
  %116 = load double, double* %x242, align 8, !tbaa !207
  %cmp243 = fcmp ole double %115, %116
  br i1 %cmp243, label %land.lhs.true.245, label %if.end.260

land.lhs.true.245:                                ; preds = %land.lhs.true.239
  %y246 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 1
  %117 = load double, double* %y246, align 8, !tbaa !320
  %p247 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 0
  %y248 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p247, i32 0, i32 1
  %118 = load double, double* %y248, align 8, !tbaa !206
  %cmp249 = fcmp oge double %117, %118
  br i1 %cmp249, label %land.lhs.true.251, label %if.end.260

land.lhs.true.251:                                ; preds = %land.lhs.true.245
  %y252 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 1
  %119 = load double, double* %y252, align 8, !tbaa !320
  %q253 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 1
  %y254 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q253, i32 0, i32 1
  %120 = load double, double* %y254, align 8, !tbaa !208
  %cmp255 = fcmp ole double %119, %120
  br i1 %cmp255, label %if.then.257, label %if.end.260

if.then.257:                                      ; preds = %land.lhs.true.251
  %121 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %pbox.addr, align 8, !tbaa !1
  %x258 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pa, i32 0, i32 0
  %122 = load double, double* %x258, align 8, !tbaa !319
  %y259 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pa, i32 0, i32 1
  %123 = load double, double* %y259, align 8, !tbaa !320
  call void @box_merge_point(%struct.gs_int_rect_s* %121, double %122, double %123) #6
  br label %if.end.260

if.end.260:                                       ; preds = %if.then.257, %land.lhs.true.251, %land.lhs.true.245, %land.lhs.true.239, %for.body
  %124 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom261 = sext i32 %124 to i64
  %arrayidx262 = getelementptr inbounds [5 x %struct.gs_point_s], [5 x %struct.gs_point_s]* %corners, i32 0, i64 %idxprom261
  %125 = bitcast %struct.gs_point_s* %pa to i8*
  %126 = bitcast %struct.gs_point_s* %arrayidx262 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %125, i8* %126, i64 16, i32 8, i1 false), !tbaa.struct !321
  %x263 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pa, i32 0, i32 0
  %127 = load double, double* %x263, align 8, !tbaa !319
  %128 = load i32, i32* %px, align 4, !tbaa !5
  %conv264 = sitofp i32 %128 to double
  %cmp265 = fcmp oge double %127, %conv264
  br i1 %cmp265, label %land.lhs.true.267, label %if.end.285

land.lhs.true.267:                                ; preds = %if.end.260
  %x268 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pa, i32 0, i32 0
  %129 = load double, double* %x268, align 8, !tbaa !319
  %130 = load i32, i32* %qx, align 4, !tbaa !5
  %conv269 = sitofp i32 %130 to double
  %cmp270 = fcmp ole double %129, %conv269
  br i1 %cmp270, label %land.lhs.true.272, label %if.end.285

land.lhs.true.272:                                ; preds = %land.lhs.true.267
  %y273 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pa, i32 0, i32 1
  %131 = load double, double* %y273, align 8, !tbaa !320
  %132 = load i32, i32* %py, align 4, !tbaa !5
  %conv274 = sitofp i32 %132 to double
  %cmp275 = fcmp oge double %131, %conv274
  br i1 %cmp275, label %land.lhs.true.277, label %if.end.285

land.lhs.true.277:                                ; preds = %land.lhs.true.272
  %y278 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pa, i32 0, i32 1
  %133 = load double, double* %y278, align 8, !tbaa !320
  %134 = load i32, i32* %qy, align 4, !tbaa !5
  %conv279 = sitofp i32 %134 to double
  %cmp280 = fcmp ole double %133, %conv279
  br i1 %cmp280, label %if.then.282, label %if.end.285

if.then.282:                                      ; preds = %land.lhs.true.277
  %135 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %pbox.addr, align 8, !tbaa !1
  %x283 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pa, i32 0, i32 0
  %136 = load double, double* %x283, align 8, !tbaa !319
  %y284 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pa, i32 0, i32 1
  %137 = load double, double* %y284, align 8, !tbaa !320
  call void @box_merge_point(%struct.gs_int_rect_s* %135, double %136, double %137) #6
  br label %if.end.285

if.end.285:                                       ; preds = %if.then.282, %land.lhs.true.277, %land.lhs.true.272, %land.lhs.true.267, %if.end.260
  %138 = load i32, i32* %i, align 4, !tbaa !5
  %add286 = add nsw i32 %138, 1
  %idxprom287 = sext i32 %add286 to i64
  %arrayidx288 = getelementptr inbounds [5 x %struct.gs_point_s], [5 x %struct.gs_point_s]* %corners, i32 0, i64 %idxprom287
  %x289 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx288, i32 0, i32 0
  %139 = load double, double* %x289, align 8, !tbaa !319
  %x290 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pa, i32 0, i32 0
  %140 = load double, double* %x290, align 8, !tbaa !319
  %sub291 = fsub double %139, %140
  store double %sub291, double* %dx, align 8, !tbaa !236
  %141 = load i32, i32* %i, align 4, !tbaa !5
  %add292 = add nsw i32 %141, 1
  %idxprom293 = sext i32 %add292 to i64
  %arrayidx294 = getelementptr inbounds [5 x %struct.gs_point_s], [5 x %struct.gs_point_s]* %corners, i32 0, i64 %idxprom293
  %y295 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx294, i32 0, i32 1
  %142 = load double, double* %y295, align 8, !tbaa !320
  %y296 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pa, i32 0, i32 1
  %143 = load double, double* %y296, align 8, !tbaa !320
  %sub297 = fsub double %142, %143
  store double %sub297, double* %dy, align 8, !tbaa !236
  %144 = load double, double* %dx, align 8, !tbaa !236
  %cmp298 = fcmp une double %144, 0.000000e+00
  br i1 %cmp298, label %if.then.300, label %if.end.352

if.then.300:                                      ; preds = %if.end.285
  %145 = bitcast double* %t to i8*
  call void @llvm.lifetime.start(i64 8, i8* %145) #1
  %146 = load i32, i32* %px, align 4, !tbaa !5
  %conv301 = sitofp i32 %146 to double
  %x302 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pa, i32 0, i32 0
  %147 = load double, double* %x302, align 8, !tbaa !319
  %sub303 = fsub double %conv301, %147
  %148 = load double, double* %dx, align 8, !tbaa !236
  %div = fdiv double %sub303, %148
  store double %div, double* %t, align 8, !tbaa !236
  br label %do.body.304

do.body.304:                                      ; preds = %if.then.300
  br label %do.cond.305

do.cond.305:                                      ; preds = %do.body.304
  br label %do.end.306

do.end.306:                                       ; preds = %do.cond.305
  %149 = load double, double* %t, align 8, !tbaa !236
  %cmp307 = fcmp ole double 0.000000e+00, %149
  br i1 %cmp307, label %land.lhs.true.309, label %if.end.325

land.lhs.true.309:                                ; preds = %do.end.306
  %150 = load double, double* %t, align 8, !tbaa !236
  %cmp310 = fcmp ole double %150, 1.000000e+00
  br i1 %cmp310, label %land.lhs.true.312, label %if.end.325

land.lhs.true.312:                                ; preds = %land.lhs.true.309
  %y313 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pa, i32 0, i32 1
  %151 = load double, double* %y313, align 8, !tbaa !320
  %152 = load double, double* %t, align 8, !tbaa !236
  %153 = load double, double* %dy, align 8, !tbaa !236
  %mul314 = fmul double %152, %153
  %add315 = fadd double %151, %mul314
  store double %add315, double* %t, align 8, !tbaa !236
  %154 = load i32, i32* %py, align 4, !tbaa !5
  %conv316 = sitofp i32 %154 to double
  %cmp317 = fcmp oge double %add315, %conv316
  br i1 %cmp317, label %land.lhs.true.319, label %if.end.325

land.lhs.true.319:                                ; preds = %land.lhs.true.312
  %155 = load double, double* %t, align 8, !tbaa !236
  %156 = load i32, i32* %qy, align 4, !tbaa !5
  %conv320 = sitofp i32 %156 to double
  %cmp321 = fcmp ole double %155, %conv320
  br i1 %cmp321, label %if.then.323, label %if.end.325

if.then.323:                                      ; preds = %land.lhs.true.319
  %157 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %pbox.addr, align 8, !tbaa !1
  %158 = load i32, i32* %px, align 4, !tbaa !5
  %conv324 = sitofp i32 %158 to double
  %159 = load double, double* %t, align 8, !tbaa !236
  call void @box_merge_point(%struct.gs_int_rect_s* %157, double %conv324, double %159) #6
  br label %if.end.325

if.end.325:                                       ; preds = %if.then.323, %land.lhs.true.319, %land.lhs.true.312, %land.lhs.true.309, %do.end.306
  %160 = load i32, i32* %qx, align 4, !tbaa !5
  %conv326 = sitofp i32 %160 to double
  %x327 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pa, i32 0, i32 0
  %161 = load double, double* %x327, align 8, !tbaa !319
  %sub328 = fsub double %conv326, %161
  %162 = load double, double* %dx, align 8, !tbaa !236
  %div329 = fdiv double %sub328, %162
  store double %div329, double* %t, align 8, !tbaa !236
  br label %do.body.330

do.body.330:                                      ; preds = %if.end.325
  br label %do.cond.331

do.cond.331:                                      ; preds = %do.body.330
  br label %do.end.332

do.end.332:                                       ; preds = %do.cond.331
  %163 = load double, double* %t, align 8, !tbaa !236
  %cmp333 = fcmp ole double 0.000000e+00, %163
  br i1 %cmp333, label %land.lhs.true.335, label %if.end.351

land.lhs.true.335:                                ; preds = %do.end.332
  %164 = load double, double* %t, align 8, !tbaa !236
  %cmp336 = fcmp ole double %164, 1.000000e+00
  br i1 %cmp336, label %land.lhs.true.338, label %if.end.351

land.lhs.true.338:                                ; preds = %land.lhs.true.335
  %y339 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pa, i32 0, i32 1
  %165 = load double, double* %y339, align 8, !tbaa !320
  %166 = load double, double* %t, align 8, !tbaa !236
  %167 = load double, double* %dy, align 8, !tbaa !236
  %mul340 = fmul double %166, %167
  %add341 = fadd double %165, %mul340
  store double %add341, double* %t, align 8, !tbaa !236
  %168 = load i32, i32* %py, align 4, !tbaa !5
  %conv342 = sitofp i32 %168 to double
  %cmp343 = fcmp oge double %add341, %conv342
  br i1 %cmp343, label %land.lhs.true.345, label %if.end.351

land.lhs.true.345:                                ; preds = %land.lhs.true.338
  %169 = load double, double* %t, align 8, !tbaa !236
  %170 = load i32, i32* %qy, align 4, !tbaa !5
  %conv346 = sitofp i32 %170 to double
  %cmp347 = fcmp ole double %169, %conv346
  br i1 %cmp347, label %if.then.349, label %if.end.351

if.then.349:                                      ; preds = %land.lhs.true.345
  %171 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %pbox.addr, align 8, !tbaa !1
  %172 = load i32, i32* %qx, align 4, !tbaa !5
  %conv350 = sitofp i32 %172 to double
  %173 = load double, double* %t, align 8, !tbaa !236
  call void @box_merge_point(%struct.gs_int_rect_s* %171, double %conv350, double %173) #6
  br label %if.end.351

if.end.351:                                       ; preds = %if.then.349, %land.lhs.true.345, %land.lhs.true.338, %land.lhs.true.335, %do.end.332
  %174 = bitcast double* %t to i8*
  call void @llvm.lifetime.end(i64 8, i8* %174) #1
  br label %if.end.352

if.end.352:                                       ; preds = %if.end.351, %if.end.285
  %175 = load double, double* %dy, align 8, !tbaa !236
  %cmp353 = fcmp une double %175, 0.000000e+00
  br i1 %cmp353, label %if.then.355, label %if.end.409

if.then.355:                                      ; preds = %if.end.352
  %176 = bitcast double* %t356 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %176) #1
  %177 = load i32, i32* %py, align 4, !tbaa !5
  %conv357 = sitofp i32 %177 to double
  %y358 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pa, i32 0, i32 1
  %178 = load double, double* %y358, align 8, !tbaa !320
  %sub359 = fsub double %conv357, %178
  %179 = load double, double* %dy, align 8, !tbaa !236
  %div360 = fdiv double %sub359, %179
  store double %div360, double* %t356, align 8, !tbaa !236
  br label %do.body.361

do.body.361:                                      ; preds = %if.then.355
  br label %do.cond.362

do.cond.362:                                      ; preds = %do.body.361
  br label %do.end.363

do.end.363:                                       ; preds = %do.cond.362
  %180 = load double, double* %t356, align 8, !tbaa !236
  %cmp364 = fcmp ole double 0.000000e+00, %180
  br i1 %cmp364, label %land.lhs.true.366, label %if.end.382

land.lhs.true.366:                                ; preds = %do.end.363
  %181 = load double, double* %t356, align 8, !tbaa !236
  %cmp367 = fcmp ole double %181, 1.000000e+00
  br i1 %cmp367, label %land.lhs.true.369, label %if.end.382

land.lhs.true.369:                                ; preds = %land.lhs.true.366
  %x370 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pa, i32 0, i32 0
  %182 = load double, double* %x370, align 8, !tbaa !319
  %183 = load double, double* %t356, align 8, !tbaa !236
  %184 = load double, double* %dx, align 8, !tbaa !236
  %mul371 = fmul double %183, %184
  %add372 = fadd double %182, %mul371
  store double %add372, double* %t356, align 8, !tbaa !236
  %185 = load i32, i32* %px, align 4, !tbaa !5
  %conv373 = sitofp i32 %185 to double
  %cmp374 = fcmp oge double %add372, %conv373
  br i1 %cmp374, label %land.lhs.true.376, label %if.end.382

land.lhs.true.376:                                ; preds = %land.lhs.true.369
  %186 = load double, double* %t356, align 8, !tbaa !236
  %187 = load i32, i32* %qx, align 4, !tbaa !5
  %conv377 = sitofp i32 %187 to double
  %cmp378 = fcmp ole double %186, %conv377
  br i1 %cmp378, label %if.then.380, label %if.end.382

if.then.380:                                      ; preds = %land.lhs.true.376
  %188 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %pbox.addr, align 8, !tbaa !1
  %189 = load double, double* %t356, align 8, !tbaa !236
  %190 = load i32, i32* %py, align 4, !tbaa !5
  %conv381 = sitofp i32 %190 to double
  call void @box_merge_point(%struct.gs_int_rect_s* %188, double %189, double %conv381) #6
  br label %if.end.382

if.end.382:                                       ; preds = %if.then.380, %land.lhs.true.376, %land.lhs.true.369, %land.lhs.true.366, %do.end.363
  %191 = load i32, i32* %qy, align 4, !tbaa !5
  %conv383 = sitofp i32 %191 to double
  %y384 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pa, i32 0, i32 1
  %192 = load double, double* %y384, align 8, !tbaa !320
  %sub385 = fsub double %conv383, %192
  %193 = load double, double* %dy, align 8, !tbaa !236
  %div386 = fdiv double %sub385, %193
  store double %div386, double* %t356, align 8, !tbaa !236
  br label %do.body.387

do.body.387:                                      ; preds = %if.end.382
  br label %do.cond.388

do.cond.388:                                      ; preds = %do.body.387
  br label %do.end.389

do.end.389:                                       ; preds = %do.cond.388
  %194 = load double, double* %t356, align 8, !tbaa !236
  %cmp390 = fcmp ole double 0.000000e+00, %194
  br i1 %cmp390, label %land.lhs.true.392, label %if.end.408

land.lhs.true.392:                                ; preds = %do.end.389
  %195 = load double, double* %t356, align 8, !tbaa !236
  %cmp393 = fcmp ole double %195, 1.000000e+00
  br i1 %cmp393, label %land.lhs.true.395, label %if.end.408

land.lhs.true.395:                                ; preds = %land.lhs.true.392
  %x396 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pa, i32 0, i32 0
  %196 = load double, double* %x396, align 8, !tbaa !319
  %197 = load double, double* %t356, align 8, !tbaa !236
  %198 = load double, double* %dx, align 8, !tbaa !236
  %mul397 = fmul double %197, %198
  %add398 = fadd double %196, %mul397
  store double %add398, double* %t356, align 8, !tbaa !236
  %199 = load i32, i32* %px, align 4, !tbaa !5
  %conv399 = sitofp i32 %199 to double
  %cmp400 = fcmp oge double %add398, %conv399
  br i1 %cmp400, label %land.lhs.true.402, label %if.end.408

land.lhs.true.402:                                ; preds = %land.lhs.true.395
  %200 = load double, double* %t356, align 8, !tbaa !236
  %201 = load i32, i32* %qx, align 4, !tbaa !5
  %conv403 = sitofp i32 %201 to double
  %cmp404 = fcmp ole double %200, %conv403
  br i1 %cmp404, label %if.then.406, label %if.end.408

if.then.406:                                      ; preds = %land.lhs.true.402
  %202 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %pbox.addr, align 8, !tbaa !1
  %203 = load double, double* %t356, align 8, !tbaa !236
  %204 = load i32, i32* %qy, align 4, !tbaa !5
  %conv407 = sitofp i32 %204 to double
  call void @box_merge_point(%struct.gs_int_rect_s* %202, double %203, double %conv407) #6
  br label %if.end.408

if.end.408:                                       ; preds = %if.then.406, %land.lhs.true.402, %land.lhs.true.395, %land.lhs.true.392, %do.end.389
  %205 = bitcast double* %t356 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %205) #1
  br label %if.end.409

if.end.409:                                       ; preds = %if.end.408, %if.end.352
  %206 = bitcast double* %dy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %206) #1
  %207 = bitcast double* %dx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %207) #1
  %208 = bitcast %struct.gs_point_s* %pt to i8*
  call void @llvm.lifetime.end(i64 16, i8* %208) #1
  %209 = bitcast %struct.gs_point_s* %pa to i8*
  call void @llvm.lifetime.end(i64 16, i8* %209) #1
  br label %for.inc

for.inc:                                          ; preds = %if.end.409
  %210 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %210, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.410

cleanup.410:                                      ; preds = %for.end, %do.end
  %211 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %211) #1
  %212 = bitcast [5 x %struct.gs_point_s]* %corners to i8*
  call void @llvm.lifetime.end(i64 80, i8* %212) #1
  %213 = bitcast [4 x %struct.gs_point_s]* %rect156 to i8*
  call void @llvm.lifetime.end(i64 64, i8* %213) #1
  %cleanup.dest.413 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.413, label %cleanup.498 [
    i32 0, label %cleanup.cont.414
  ]

cleanup.cont.414:                                 ; preds = %cleanup.410
  br label %if.end.415

if.end.415:                                       ; preds = %cleanup.cont.414, %cleanup.cont
  br label %do.body.416

do.body.416:                                      ; preds = %if.end.415
  br label %do.cond.417

do.cond.417:                                      ; preds = %do.body.416
  br label %do.end.418

do.end.418:                                       ; preds = %do.cond.417
  %214 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie.addr, align 8, !tbaa !1
  %support = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %214, i32 0, i32 15
  %x419 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %support, i32 0, i32 0
  %215 = load i32, i32* %x419, align 4, !tbaa !203
  %216 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %pbox.addr, align 8, !tbaa !1
  %p420 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %216, i32 0, i32 0
  %x421 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p420, i32 0, i32 0
  %217 = load i32, i32* %x421, align 4, !tbaa !55
  %sub422 = sub nsw i32 %217, %215
  store i32 %sub422, i32* %x421, align 4, !tbaa !55
  %218 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie.addr, align 8, !tbaa !1
  %rect423 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %218, i32 0, i32 11
  %p424 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect423, i32 0, i32 0
  %x425 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p424, i32 0, i32 0
  %219 = load i32, i32* %x425, align 4, !tbaa !147
  %cmp426 = icmp slt i32 %sub422, %219
  br i1 %cmp426, label %if.then.428, label %if.end.434

if.then.428:                                      ; preds = %do.end.418
  %220 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie.addr, align 8, !tbaa !1
  %rect429 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %220, i32 0, i32 11
  %p430 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect429, i32 0, i32 0
  %x431 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p430, i32 0, i32 0
  %221 = load i32, i32* %x431, align 4, !tbaa !147
  %222 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %pbox.addr, align 8, !tbaa !1
  %p432 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %222, i32 0, i32 0
  %x433 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p432, i32 0, i32 0
  store i32 %221, i32* %x433, align 4, !tbaa !55
  br label %if.end.434

if.end.434:                                       ; preds = %if.then.428, %do.end.418
  %223 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie.addr, align 8, !tbaa !1
  %support435 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %223, i32 0, i32 15
  %y436 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %support435, i32 0, i32 1
  %224 = load i32, i32* %y436, align 4, !tbaa !202
  %225 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %pbox.addr, align 8, !tbaa !1
  %p437 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %225, i32 0, i32 0
  %y438 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p437, i32 0, i32 1
  %226 = load i32, i32* %y438, align 4, !tbaa !58
  %sub439 = sub nsw i32 %226, %224
  store i32 %sub439, i32* %y438, align 4, !tbaa !58
  %227 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie.addr, align 8, !tbaa !1
  %rect440 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %227, i32 0, i32 11
  %p441 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect440, i32 0, i32 0
  %y442 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p441, i32 0, i32 1
  %228 = load i32, i32* %y442, align 4, !tbaa !148
  %cmp443 = icmp slt i32 %sub439, %228
  br i1 %cmp443, label %if.then.445, label %if.end.451

if.then.445:                                      ; preds = %if.end.434
  %229 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie.addr, align 8, !tbaa !1
  %rect446 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %229, i32 0, i32 11
  %p447 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect446, i32 0, i32 0
  %y448 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p447, i32 0, i32 1
  %230 = load i32, i32* %y448, align 4, !tbaa !148
  %231 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %pbox.addr, align 8, !tbaa !1
  %p449 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %231, i32 0, i32 0
  %y450 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p449, i32 0, i32 1
  store i32 %230, i32* %y450, align 4, !tbaa !58
  br label %if.end.451

if.end.451:                                       ; preds = %if.then.445, %if.end.434
  %232 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie.addr, align 8, !tbaa !1
  %support452 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %232, i32 0, i32 15
  %x453 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %support452, i32 0, i32 0
  %233 = load i32, i32* %x453, align 4, !tbaa !203
  %234 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %pbox.addr, align 8, !tbaa !1
  %q454 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %234, i32 0, i32 1
  %x455 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q454, i32 0, i32 0
  %235 = load i32, i32* %x455, align 4, !tbaa !57
  %add456 = add nsw i32 %235, %233
  store i32 %add456, i32* %x455, align 4, !tbaa !57
  %236 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie.addr, align 8, !tbaa !1
  %rect457 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %236, i32 0, i32 11
  %q458 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect457, i32 0, i32 1
  %x459 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q458, i32 0, i32 0
  %237 = load i32, i32* %x459, align 4, !tbaa !150
  %cmp460 = icmp sgt i32 %add456, %237
  br i1 %cmp460, label %if.then.462, label %if.end.468

if.then.462:                                      ; preds = %if.end.451
  %238 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie.addr, align 8, !tbaa !1
  %rect463 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %238, i32 0, i32 11
  %q464 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect463, i32 0, i32 1
  %x465 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q464, i32 0, i32 0
  %239 = load i32, i32* %x465, align 4, !tbaa !150
  %240 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %pbox.addr, align 8, !tbaa !1
  %q466 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %240, i32 0, i32 1
  %x467 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q466, i32 0, i32 0
  store i32 %239, i32* %x467, align 4, !tbaa !57
  br label %if.end.468

if.end.468:                                       ; preds = %if.then.462, %if.end.451
  %241 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie.addr, align 8, !tbaa !1
  %support469 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %241, i32 0, i32 15
  %y470 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %support469, i32 0, i32 1
  %242 = load i32, i32* %y470, align 4, !tbaa !202
  %243 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %pbox.addr, align 8, !tbaa !1
  %q471 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %243, i32 0, i32 1
  %y472 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q471, i32 0, i32 1
  %244 = load i32, i32* %y472, align 4, !tbaa !59
  %add473 = add nsw i32 %244, %242
  store i32 %add473, i32* %y472, align 4, !tbaa !59
  %245 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie.addr, align 8, !tbaa !1
  %rect474 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %245, i32 0, i32 11
  %q475 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect474, i32 0, i32 1
  %y476 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q475, i32 0, i32 1
  %246 = load i32, i32* %y476, align 4, !tbaa !152
  %cmp477 = icmp sgt i32 %add473, %246
  br i1 %cmp477, label %if.then.479, label %if.end.485

if.then.479:                                      ; preds = %if.end.468
  %247 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie.addr, align 8, !tbaa !1
  %rect480 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %247, i32 0, i32 11
  %q481 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect480, i32 0, i32 1
  %y482 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q481, i32 0, i32 1
  %248 = load i32, i32* %y482, align 4, !tbaa !152
  %249 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %pbox.addr, align 8, !tbaa !1
  %q483 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %249, i32 0, i32 1
  %y484 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q483, i32 0, i32 1
  store i32 %248, i32* %y484, align 4, !tbaa !59
  br label %if.end.485

if.end.485:                                       ; preds = %if.then.479, %if.end.468
  %250 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %pbox.addr, align 8, !tbaa !1
  %p486 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %250, i32 0, i32 0
  %x487 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p486, i32 0, i32 0
  %251 = load i32, i32* %x487, align 4, !tbaa !55
  %252 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %pbox.addr, align 8, !tbaa !1
  %q488 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %252, i32 0, i32 1
  %x489 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q488, i32 0, i32 0
  %253 = load i32, i32* %x489, align 4, !tbaa !57
  %cmp490 = icmp slt i32 %251, %253
  br i1 %cmp490, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end.485
  %254 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %pbox.addr, align 8, !tbaa !1
  %p492 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %254, i32 0, i32 0
  %y493 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p492, i32 0, i32 1
  %255 = load i32, i32* %y493, align 4, !tbaa !58
  %256 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %pbox.addr, align 8, !tbaa !1
  %q494 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %256, i32 0, i32 1
  %y495 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q494, i32 0, i32 1
  %257 = load i32, i32* %y495, align 4, !tbaa !59
  %cmp496 = icmp slt i32 %255, %257
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.485
  %258 = phi i1 [ false, %if.end.485 ], [ %cmp496, %land.rhs ]
  %land.ext = zext i1 %258 to i32
  store i32 %land.ext, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.498

cleanup.498:                                      ; preds = %land.end, %cleanup.410, %cleanup
  %259 = bitcast %struct.gs_rect_s* %bbox to i8*
  call void @llvm.lifetime.end(i64 32, i8* %259) #1
  %260 = bitcast %struct.gs_fixed_rect_s* %cbox to i8*
  call void @llvm.lifetime.end(i64 16, i8* %260) #1
  %261 = bitcast i32* %qy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %261) #1
  %262 = bitcast i32* %qx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %262) #1
  %263 = bitcast i32* %py to i8*
  call void @llvm.lifetime.end(i64 4, i8* %263) #1
  %264 = bitcast i32* %px to i8*
  call void @llvm.lifetime.end(i64 4, i8* %264) #1
  %265 = bitcast i32* %by1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %265) #1
  %266 = bitcast i32* %by0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %266) #1
  %267 = load i32, i32* %retval
  ret i32 %267
}

; Function Attrs: nounwind uwtable
define internal i32 @cmd_image_plane_data_mon(%struct.gx_device_clist_writer_s* %cldev, %struct.gx_clist_state_s* %pcls, %struct.gx_image_plane_s* %planes, %struct.gx_image_enum_common_s* %pie, i32 %bytes_per_plane, i32* %offsets, i32 %dx, i32 %h, i32* %found_color) #0 {
entry:
  %retval = alloca i32, align 4
  %cldev.addr = alloca %struct.gx_device_clist_writer_s*, align 8
  %pcls.addr = alloca %struct.gx_clist_state_s*, align 8
  %planes.addr = alloca %struct.gx_image_plane_s*, align 8
  %pie.addr = alloca %struct.gx_image_enum_common_s*, align 8
  %bytes_per_plane.addr = alloca i32, align 4
  %offsets.addr = alloca i32*, align 8
  %dx.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %found_color.addr = alloca i32*, align 8
  %pie_c = alloca %struct.clist_image_enum_s*, align 8
  %data_x = alloca i32, align 4
  %nbytes = alloca i32, align 4
  %len = alloca i32, align 4
  %dp = alloca i8*, align 8
  %offset = alloca i32, align 4
  %plane = alloca i32, align 4
  %i = alloca i32, align 4
  %code = alloca i32, align 4
  %width = alloca i32, align 4
  %dsize = alloca i32, align 4
  %data_size = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %pdata_x = alloca i32, align 4
  %data_ptr = alloca i8*, align 8
  %buffer = alloca i8*, align 8
  store %struct.gx_device_clist_writer_s* %cldev, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  store %struct.gx_clist_state_s* %pcls, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  store %struct.gx_image_plane_s* %planes, %struct.gx_image_plane_s** %planes.addr, align 8, !tbaa !1
  store %struct.gx_image_enum_common_s* %pie, %struct.gx_image_enum_common_s** %pie.addr, align 8, !tbaa !1
  store i32 %bytes_per_plane, i32* %bytes_per_plane.addr, align 4, !tbaa !5
  store i32* %offsets, i32** %offsets.addr, align 8, !tbaa !1
  store i32 %dx, i32* %dx.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  store i32* %found_color, i32** %found_color.addr, align 8, !tbaa !1
  %0 = bitcast %struct.clist_image_enum_s** %pie_c to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %pie.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_image_enum_common_s* %1 to %struct.clist_image_enum_s*
  store %struct.clist_image_enum_s* %2, %struct.clist_image_enum_s** %pie_c, align 8, !tbaa !1
  %3 = bitcast i32* %data_x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gx_image_plane_s*, %struct.gx_image_plane_s** %planes.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %4, i64 0
  %data_x1 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %arrayidx, i32 0, i32 1
  %5 = load i32, i32* %data_x1, align 4, !tbaa !311
  %6 = load i32, i32* %dx.addr, align 4, !tbaa !5
  %add = add nsw i32 %5, %6
  store i32 %add, i32* %data_x, align 4, !tbaa !5
  %7 = bitcast i32* %nbytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load i32, i32* %bytes_per_plane.addr, align 4, !tbaa !5
  %9 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %pie.addr, align 8, !tbaa !1
  %num_planes = getelementptr inbounds %struct.gx_image_enum_common_s, %struct.gx_image_enum_common_s* %9, i32 0, i32 6
  %10 = load i32, i32* %num_planes, align 4, !tbaa !310
  %mul = mul i32 %8, %10
  %11 = load i32, i32* %h.addr, align 4, !tbaa !5
  %mul2 = mul i32 %mul, %11
  store i32 %mul2, i32* %nbytes, align 4, !tbaa !5
  %12 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load i32, i32* %h.addr, align 4, !tbaa !5
  %14 = load i32, i32* %bytes_per_plane.addr, align 4, !tbaa !5
  %or = or i32 %13, %14
  %and = and i32 %or, -128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %15 = load i32, i32* %h.addr, align 4, !tbaa !5
  %call = call i32 @cmd_size_w(i32 %15) #6
  %16 = load i32, i32* %bytes_per_plane.addr, align 4, !tbaa !5
  %call3 = call i32 @cmd_size_w(i32 %16) #6
  %add4 = add nsw i32 %call, %call3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 2, %cond.true ], [ %add4, %cond.false ]
  %add5 = add nsw i32 1, %cond
  %17 = load i32, i32* %nbytes, align 4, !tbaa !5
  %add6 = add i32 %add5, %17
  store i32 %add6, i32* %len, align 4, !tbaa !5
  %18 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  %19 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  store i32 0, i32* %offset, align 4, !tbaa !5
  %20 = bitcast i32* %plane to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  %23 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %24 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie_c, align 8, !tbaa !1
  %rect = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %24, i32 0, i32 11
  %q = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 1
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q, i32 0, i32 0
  %25 = load i32, i32* %x, align 4, !tbaa !150
  %26 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie_c, align 8, !tbaa !1
  %rect7 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %26, i32 0, i32 11
  %p = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect7, i32 0, i32 0
  %x8 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p, i32 0, i32 0
  %27 = load i32, i32* %x8, align 4, !tbaa !147
  %sub = sub nsw i32 %25, %27
  store i32 %sub, i32* %width, align 4, !tbaa !5
  %28 = bitcast i32* %dsize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #1
  %29 = load i32, i32* %width, align 4, !tbaa !5
  %30 = load %struct.gx_image_plane_s*, %struct.gx_image_plane_s** %planes.addr, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %30, i64 0
  %data_x10 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %arrayidx9, i32 0, i32 1
  %31 = load i32, i32* %data_x10, align 4, !tbaa !311
  %add11 = add nsw i32 %29, %31
  %32 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie_c, align 8, !tbaa !1
  %spp = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %32, i32 0, i32 29
  %33 = load i32, i32* %spp, align 4, !tbaa !142
  %mul12 = mul nsw i32 %add11, %33
  %34 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie_c, align 8, !tbaa !1
  %bps = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %34, i32 0, i32 28
  %35 = load i32, i32* %bps, align 4, !tbaa !141
  %mul13 = mul nsw i32 %mul12, %35
  %36 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %pie.addr, align 8, !tbaa !1
  %num_planes14 = getelementptr inbounds %struct.gx_image_enum_common_s, %struct.gx_image_enum_common_s* %36, i32 0, i32 6
  %37 = load i32, i32* %num_planes14, align 4, !tbaa !310
  %div = sdiv i32 %mul13, %37
  %add15 = add nsw i32 %div, 7
  %shr = ashr i32 %add15, 3
  store i32 %shr, i32* %dsize, align 4, !tbaa !5
  %38 = bitcast i32* %data_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %38) #1
  %39 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie_c, align 8, !tbaa !1
  %spread = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %39, i32 0, i32 32
  %40 = load i32, i32* %spread, align 4, !tbaa !237
  %41 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %pie.addr, align 8, !tbaa !1
  %num_planes16 = getelementptr inbounds %struct.gx_image_enum_common_s, %struct.gx_image_enum_common_s* %41, i32 0, i32 6
  %42 = load i32, i32* %num_planes16, align 4, !tbaa !310
  %div17 = sdiv i32 %40, %42
  store i32 %div17, i32* %data_size, align 4, !tbaa !5
  %43 = load i32*, i32** %found_color.addr, align 8, !tbaa !1
  store i32 0, i32* %43, align 4, !tbaa !5
  %44 = load i32, i32* %data_x, align 4, !tbaa !5
  %tobool18 = icmp ne i32 %44, 0
  br i1 %tobool18, label %if.then, label %if.end.24

if.then:                                          ; preds = %cond.end
  %45 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %46 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %47 = load i32, i32* %data_x, align 4, !tbaa !5
  %call19 = call i32 @cmd_put_set_data_x(%struct.gx_device_clist_writer_s* %45, %struct.gx_clist_state_s* %46, i32 %47) #6
  store i32 %call19, i32* %code, align 4, !tbaa !5
  %48 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %48, 0
  br i1 %cmp, label %if.then.20, label %if.end

if.then.20:                                       ; preds = %if.then
  %49 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %49, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %50 = load i32, i32* %data_x, align 4, !tbaa !5
  %and21 = and i32 %50, -8
  %51 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %clist_color_info = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %51, i32 0, i32 113
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %clist_color_info, i32 0, i32 3
  %52 = load i16, i16* %depth, align 2, !tbaa !322
  %conv = zext i16 %52 to i32
  %mul22 = mul nsw i32 %and21, %conv
  %shr23 = ashr i32 %mul22, 3
  store i32 %shr23, i32* %offset, align 4, !tbaa !5
  br label %if.end.24

if.end.24:                                        ; preds = %if.end, %cond.end
  %53 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %54 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %list = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %54, i32 0, i32 15
  %55 = load i32, i32* %len, align 4, !tbaa !5
  %call25 = call i8* @cmd_put_list_op(%struct.gx_device_clist_writer_s* %53, %struct.cmd_list_s* %list, i32 %55) #6
  store i8* %call25, i8** %dp, align 8, !tbaa !1
  %cmp26 = icmp eq i8* %call25, null
  br i1 %cmp26, label %cond.true.28, label %cond.false.29

cond.true.28:                                     ; preds = %if.end.24
  %56 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %error_code = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %56, i32 0, i32 65
  %57 = load i32, i32* %error_code, align 4, !tbaa !77
  br label %cond.end.30

cond.false.29:                                    ; preds = %if.end.24
  %58 = load i8*, i8** %dp, align 8, !tbaa !1
  store i8 -35, i8* %58, align 1, !tbaa !9
  br label %cond.end.30

cond.end.30:                                      ; preds = %cond.false.29, %cond.true.28
  %cond31 = phi i32 [ %57, %cond.true.28 ], [ 0, %cond.false.29 ]
  store i32 %cond31, i32* %code, align 4, !tbaa !5
  %59 = load i32, i32* %code, align 4, !tbaa !5
  %cmp32 = icmp slt i32 %59, 0
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %cond.end.30
  %60 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %60, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.35:                                        ; preds = %cond.end.30
  %61 = load i8*, i8** %dp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %incdec.ptr, i8** %dp, align 8, !tbaa !1
  %62 = load i32, i32* %h.addr, align 4, !tbaa !5
  %63 = load i32, i32* %bytes_per_plane.addr, align 4, !tbaa !5
  %or36 = or i32 %62, %63
  %and37 = and i32 %or36, -128
  %tobool38 = icmp ne i32 %and37, 0
  br i1 %tobool38, label %cond.false.44, label %cond.true.39

cond.true.39:                                     ; preds = %if.end.35
  %64 = load i32, i32* %h.addr, align 4, !tbaa !5
  %conv40 = trunc i32 %64 to i8
  %65 = load i8*, i8** %dp, align 8, !tbaa !1
  %arrayidx41 = getelementptr inbounds i8, i8* %65, i64 0
  store i8 %conv40, i8* %arrayidx41, align 1, !tbaa !9
  %66 = load i32, i32* %bytes_per_plane.addr, align 4, !tbaa !5
  %conv42 = trunc i32 %66 to i8
  %67 = load i8*, i8** %dp, align 8, !tbaa !1
  %arrayidx43 = getelementptr inbounds i8, i8* %67, i64 1
  store i8 %conv42, i8* %arrayidx43, align 1, !tbaa !9
  %68 = load i8*, i8** %dp, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %68, i64 2
  store i8* %add.ptr, i8** %dp, align 8, !tbaa !1
  br label %cond.end.47

cond.false.44:                                    ; preds = %if.end.35
  %69 = load i32, i32* %bytes_per_plane.addr, align 4, !tbaa !5
  %70 = load i32, i32* %h.addr, align 4, !tbaa !5
  %71 = load i8*, i8** %dp, align 8, !tbaa !1
  %call45 = call i8* @cmd_put_w(i32 %70, i8* %71) #6
  %call46 = call i8* @cmd_put_w(i32 %69, i8* %call45) #6
  store i8* %call46, i8** %dp, align 8, !tbaa !1
  br label %cond.end.47

cond.end.47:                                      ; preds = %cond.false.44, %cond.true.39
  %cond48 = phi i8* [ %add.ptr, %cond.true.39 ], [ %call46, %cond.false.44 ]
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.127, %cond.end.47
  %72 = load i32, i32* %i, align 4, !tbaa !5
  %73 = load i32, i32* %h.addr, align 4, !tbaa !5
  %cmp49 = icmp slt i32 %72, %73
  br i1 %cmp49, label %for.body, label %for.end.129

for.body:                                         ; preds = %for.cond
  %74 = load i32*, i32** %found_color.addr, align 8, !tbaa !1
  %75 = load i32, i32* %74, align 4, !tbaa !5
  %tobool51 = icmp ne i32 %75, 0
  br i1 %tobool51, label %if.end.99, label %if.then.52

if.then.52:                                       ; preds = %for.body
  %76 = bitcast i32* %pdata_x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %76) #1
  %77 = bitcast i8** %data_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %77) #1
  %78 = load %struct.gx_image_plane_s*, %struct.gx_image_plane_s** %planes.addr, align 8, !tbaa !1
  %arrayidx53 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %78, i64 0
  %data = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %arrayidx53, i32 0, i32 0
  %79 = load i8*, i8** %data, align 8, !tbaa !323
  %80 = load i32, i32* %i, align 4, !tbaa !5
  %81 = load %struct.gx_image_plane_s*, %struct.gx_image_plane_s** %planes.addr, align 8, !tbaa !1
  %arrayidx54 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %81, i64 0
  %raster = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %arrayidx54, i32 0, i32 2
  %82 = load i32, i32* %raster, align 4, !tbaa !316
  %mul55 = mul i32 %80, %82
  %idx.ext = zext i32 %mul55 to i64
  %add.ptr56 = getelementptr inbounds i8, i8* %79, i64 %idx.ext
  %83 = load i32*, i32** %offsets.addr, align 8, !tbaa !1
  %arrayidx57 = getelementptr inbounds i32, i32* %83, i64 0
  %84 = load i32, i32* %arrayidx57, align 4, !tbaa !5
  %idx.ext58 = zext i32 %84 to i64
  %add.ptr59 = getelementptr inbounds i8, i8* %add.ptr56, i64 %idx.ext58
  %85 = load i32, i32* %offset, align 4, !tbaa !5
  %idx.ext60 = zext i32 %85 to i64
  %add.ptr61 = getelementptr inbounds i8, i8* %add.ptr59, i64 %idx.ext60
  store i8* %add.ptr61, i8** %data_ptr, align 8, !tbaa !1
  %86 = bitcast i8** %buffer to i8*
  call void @llvm.lifetime.start(i64 8, i8* %86) #1
  %87 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie_c, align 8, !tbaa !1
  %unpack = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %87, i32 0, i32 30
  %88 = load i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)*, i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)** %unpack, align 8, !tbaa !209
  %89 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie_c, align 8, !tbaa !1
  %buffer62 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %89, i32 0, i32 31
  %90 = load i8*, i8** %buffer62, align 8, !tbaa !130
  %91 = load i8*, i8** %data_ptr, align 8, !tbaa !1
  %92 = load i32, i32* %dsize, align 4, !tbaa !5
  %93 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie_c, align 8, !tbaa !1
  %map = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %93, i32 0, i32 33
  %arraydecay = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map, i32 0, i32 0
  %94 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie_c, align 8, !tbaa !1
  %spread63 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %94, i32 0, i32 32
  %95 = load i32, i32* %spread63, align 4, !tbaa !237
  %96 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie_c, align 8, !tbaa !1
  %spp64 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %96, i32 0, i32 29
  %97 = load i32, i32* %spp64, align 4, !tbaa !142
  %call65 = call i8* %88(i8* %90, i32* %pdata_x, i8* %91, i32 0, i32 %92, %struct.sample_map_s* %arraydecay, i32 %95, i32 %97) #6
  store i8* %call65, i8** %buffer, align 8, !tbaa !1
  store i32 1, i32* %plane, align 4, !tbaa !5
  br label %for.cond.66

for.cond.66:                                      ; preds = %for.inc, %if.then.52
  %98 = load i32, i32* %plane, align 4, !tbaa !5
  %99 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %pie.addr, align 8, !tbaa !1
  %num_planes67 = getelementptr inbounds %struct.gx_image_enum_common_s, %struct.gx_image_enum_common_s* %99, i32 0, i32 6
  %100 = load i32, i32* %num_planes67, align 4, !tbaa !310
  %cmp68 = icmp slt i32 %98, %100
  br i1 %cmp68, label %for.body.70, label %for.end

for.body.70:                                      ; preds = %for.cond.66
  %101 = load i32, i32* %plane, align 4, !tbaa !5
  %idxprom = sext i32 %101 to i64
  %102 = load %struct.gx_image_plane_s*, %struct.gx_image_plane_s** %planes.addr, align 8, !tbaa !1
  %arrayidx71 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %102, i64 %idxprom
  %data72 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %arrayidx71, i32 0, i32 0
  %103 = load i8*, i8** %data72, align 8, !tbaa !323
  %104 = load i32, i32* %i, align 4, !tbaa !5
  %105 = load i32, i32* %plane, align 4, !tbaa !5
  %idxprom73 = sext i32 %105 to i64
  %106 = load %struct.gx_image_plane_s*, %struct.gx_image_plane_s** %planes.addr, align 8, !tbaa !1
  %arrayidx74 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %106, i64 %idxprom73
  %raster75 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %arrayidx74, i32 0, i32 2
  %107 = load i32, i32* %raster75, align 4, !tbaa !316
  %mul76 = mul i32 %104, %107
  %idx.ext77 = zext i32 %mul76 to i64
  %add.ptr78 = getelementptr inbounds i8, i8* %103, i64 %idx.ext77
  %108 = load i32, i32* %plane, align 4, !tbaa !5
  %idxprom79 = sext i32 %108 to i64
  %109 = load i32*, i32** %offsets.addr, align 8, !tbaa !1
  %arrayidx80 = getelementptr inbounds i32, i32* %109, i64 %idxprom79
  %110 = load i32, i32* %arrayidx80, align 4, !tbaa !5
  %idx.ext81 = zext i32 %110 to i64
  %add.ptr82 = getelementptr inbounds i8, i8* %add.ptr78, i64 %idx.ext81
  %111 = load i32, i32* %offset, align 4, !tbaa !5
  %idx.ext83 = zext i32 %111 to i64
  %add.ptr84 = getelementptr inbounds i8, i8* %add.ptr82, i64 %idx.ext83
  store i8* %add.ptr84, i8** %data_ptr, align 8, !tbaa !1
  %112 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie_c, align 8, !tbaa !1
  %unpack85 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %112, i32 0, i32 30
  %113 = load i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)*, i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)** %unpack85, align 8, !tbaa !209
  %114 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie_c, align 8, !tbaa !1
  %buffer86 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %114, i32 0, i32 31
  %115 = load i8*, i8** %buffer86, align 8, !tbaa !130
  %116 = load i32, i32* %data_size, align 4, !tbaa !5
  %117 = load i32, i32* %plane, align 4, !tbaa !5
  %mul87 = mul nsw i32 %116, %117
  %idx.ext88 = sext i32 %mul87 to i64
  %add.ptr89 = getelementptr inbounds i8, i8* %115, i64 %idx.ext88
  %118 = load i8*, i8** %data_ptr, align 8, !tbaa !1
  %119 = load i32, i32* %dsize, align 4, !tbaa !5
  %120 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie_c, align 8, !tbaa !1
  %map90 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %120, i32 0, i32 33
  %arraydecay91 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map90, i32 0, i32 0
  %121 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie_c, align 8, !tbaa !1
  %spread92 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %121, i32 0, i32 32
  %122 = load i32, i32* %spread92, align 4, !tbaa !237
  %123 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie_c, align 8, !tbaa !1
  %spp93 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %123, i32 0, i32 29
  %124 = load i32, i32* %spp93, align 4, !tbaa !142
  %call94 = call i8* %113(i8* %add.ptr89, i32* %pdata_x, i8* %118, i32 0, i32 %119, %struct.sample_map_s* %arraydecay91, i32 %122, i32 %124) #6
  br label %for.inc

for.inc:                                          ; preds = %for.body.70
  %125 = load i32, i32* %plane, align 4, !tbaa !5
  %inc = add nsw i32 %125, 1
  store i32 %inc, i32* %plane, align 4, !tbaa !5
  br label %for.cond.66

for.end:                                          ; preds = %for.cond.66
  %126 = load i8*, i8** %buffer, align 8, !tbaa !1
  %127 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie_c, align 8, !tbaa !1
  %128 = load i32, i32* %data_size, align 4, !tbaa !5
  %129 = load i32, i32* %width, align 4, !tbaa !5
  %call95 = call i32 @row_has_color(i8* %126, %struct.clist_image_enum_s* %127, i32 %128, i32 %129) #6
  %tobool96 = icmp ne i32 %call95, 0
  br i1 %tobool96, label %if.then.97, label %if.end.98

if.then.97:                                       ; preds = %for.end
  %130 = load i32*, i32** %found_color.addr, align 8, !tbaa !1
  store i32 1, i32* %130, align 4, !tbaa !5
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.97, %for.end
  %131 = bitcast i8** %buffer to i8*
  call void @llvm.lifetime.end(i64 8, i8* %131) #1
  %132 = bitcast i8** %data_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %132) #1
  %133 = bitcast i32* %pdata_x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %133) #1
  br label %if.end.99

if.end.99:                                        ; preds = %if.end.98, %for.body
  store i32 0, i32* %plane, align 4, !tbaa !5
  br label %for.cond.100

for.cond.100:                                     ; preds = %for.inc.124, %if.end.99
  %134 = load i32, i32* %plane, align 4, !tbaa !5
  %135 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %pie.addr, align 8, !tbaa !1
  %num_planes101 = getelementptr inbounds %struct.gx_image_enum_common_s, %struct.gx_image_enum_common_s* %135, i32 0, i32 6
  %136 = load i32, i32* %num_planes101, align 4, !tbaa !310
  %cmp102 = icmp slt i32 %134, %136
  br i1 %cmp102, label %for.body.104, label %for.end.126

for.body.104:                                     ; preds = %for.cond.100
  %137 = load i8*, i8** %dp, align 8, !tbaa !1
  %138 = load i32, i32* %plane, align 4, !tbaa !5
  %idxprom105 = sext i32 %138 to i64
  %139 = load %struct.gx_image_plane_s*, %struct.gx_image_plane_s** %planes.addr, align 8, !tbaa !1
  %arrayidx106 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %139, i64 %idxprom105
  %data107 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %arrayidx106, i32 0, i32 0
  %140 = load i8*, i8** %data107, align 8, !tbaa !323
  %141 = load i32, i32* %i, align 4, !tbaa !5
  %142 = load i32, i32* %plane, align 4, !tbaa !5
  %idxprom108 = sext i32 %142 to i64
  %143 = load %struct.gx_image_plane_s*, %struct.gx_image_plane_s** %planes.addr, align 8, !tbaa !1
  %arrayidx109 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %143, i64 %idxprom108
  %raster110 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %arrayidx109, i32 0, i32 2
  %144 = load i32, i32* %raster110, align 4, !tbaa !316
  %mul111 = mul i32 %141, %144
  %idx.ext112 = zext i32 %mul111 to i64
  %add.ptr113 = getelementptr inbounds i8, i8* %140, i64 %idx.ext112
  %145 = load i32, i32* %plane, align 4, !tbaa !5
  %idxprom114 = sext i32 %145 to i64
  %146 = load i32*, i32** %offsets.addr, align 8, !tbaa !1
  %arrayidx115 = getelementptr inbounds i32, i32* %146, i64 %idxprom114
  %147 = load i32, i32* %arrayidx115, align 4, !tbaa !5
  %idx.ext116 = zext i32 %147 to i64
  %add.ptr117 = getelementptr inbounds i8, i8* %add.ptr113, i64 %idx.ext116
  %148 = load i32, i32* %offset, align 4, !tbaa !5
  %idx.ext118 = zext i32 %148 to i64
  %add.ptr119 = getelementptr inbounds i8, i8* %add.ptr117, i64 %idx.ext118
  %149 = load i32, i32* %bytes_per_plane.addr, align 4, !tbaa !5
  %conv120 = zext i32 %149 to i64
  %call121 = call i8* @memcpy(i8* %137, i8* %add.ptr119, i64 %conv120) #8
  %150 = load i32, i32* %bytes_per_plane.addr, align 4, !tbaa !5
  %151 = load i8*, i8** %dp, align 8, !tbaa !1
  %idx.ext122 = zext i32 %150 to i64
  %add.ptr123 = getelementptr inbounds i8, i8* %151, i64 %idx.ext122
  store i8* %add.ptr123, i8** %dp, align 8, !tbaa !1
  br label %for.inc.124

for.inc.124:                                      ; preds = %for.body.104
  %152 = load i32, i32* %plane, align 4, !tbaa !5
  %inc125 = add nsw i32 %152, 1
  store i32 %inc125, i32* %plane, align 4, !tbaa !5
  br label %for.cond.100

for.end.126:                                      ; preds = %for.cond.100
  br label %for.inc.127

for.inc.127:                                      ; preds = %for.end.126
  %153 = load i32, i32* %i, align 4, !tbaa !5
  %inc128 = add nsw i32 %153, 1
  store i32 %inc128, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end.129:                                      ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.129, %if.then.34, %if.then.20
  %154 = bitcast i32* %data_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %154) #1
  %155 = bitcast i32* %dsize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %155) #1
  %156 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %156) #1
  %157 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %157) #1
  %158 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %158) #1
  %159 = bitcast i32* %plane to i8*
  call void @llvm.lifetime.end(i64 4, i8* %159) #1
  %160 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %160) #1
  %161 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %161) #1
  %162 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %162) #1
  %163 = bitcast i32* %nbytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %163) #1
  %164 = bitcast i32* %data_x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %164) #1
  %165 = bitcast %struct.clist_image_enum_s** %pie_c to i8*
  call void @llvm.lifetime.end(i64 8, i8* %165) #1
  %166 = load i32, i32* %retval
  ret i32 %166
}

; Function Attrs: nounwind uwtable
define internal i32 @cmd_image_plane_data(%struct.gx_device_clist_writer_s* %cldev, %struct.gx_clist_state_s* %pcls, %struct.gx_image_plane_s* %planes, %struct.gx_image_enum_common_s* %pie, i32 %bytes_per_plane, i32* %offsets, i32 %dx, i32 %h) #0 {
entry:
  %retval = alloca i32, align 4
  %cldev.addr = alloca %struct.gx_device_clist_writer_s*, align 8
  %pcls.addr = alloca %struct.gx_clist_state_s*, align 8
  %planes.addr = alloca %struct.gx_image_plane_s*, align 8
  %pie.addr = alloca %struct.gx_image_enum_common_s*, align 8
  %bytes_per_plane.addr = alloca i32, align 4
  %offsets.addr = alloca i32*, align 8
  %dx.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %data_x = alloca i32, align 4
  %nbytes = alloca i32, align 4
  %len = alloca i32, align 4
  %dp = alloca i8*, align 8
  %offset = alloca i32, align 4
  %plane = alloca i32, align 4
  %i = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_clist_writer_s* %cldev, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  store %struct.gx_clist_state_s* %pcls, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  store %struct.gx_image_plane_s* %planes, %struct.gx_image_plane_s** %planes.addr, align 8, !tbaa !1
  store %struct.gx_image_enum_common_s* %pie, %struct.gx_image_enum_common_s** %pie.addr, align 8, !tbaa !1
  store i32 %bytes_per_plane, i32* %bytes_per_plane.addr, align 4, !tbaa !5
  store i32* %offsets, i32** %offsets.addr, align 8, !tbaa !1
  store i32 %dx, i32* %dx.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  %0 = bitcast i32* %data_x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gx_image_plane_s*, %struct.gx_image_plane_s** %planes.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %1, i64 0
  %data_x1 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %arrayidx, i32 0, i32 1
  %2 = load i32, i32* %data_x1, align 4, !tbaa !311
  %3 = load i32, i32* %dx.addr, align 4, !tbaa !5
  %add = add nsw i32 %2, %3
  store i32 %add, i32* %data_x, align 4, !tbaa !5
  %4 = bitcast i32* %nbytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load i32, i32* %bytes_per_plane.addr, align 4, !tbaa !5
  %6 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %pie.addr, align 8, !tbaa !1
  %num_planes = getelementptr inbounds %struct.gx_image_enum_common_s, %struct.gx_image_enum_common_s* %6, i32 0, i32 6
  %7 = load i32, i32* %num_planes, align 4, !tbaa !310
  %mul = mul i32 %5, %7
  %8 = load i32, i32* %h.addr, align 4, !tbaa !5
  %mul2 = mul i32 %mul, %8
  store i32 %mul2, i32* %nbytes, align 4, !tbaa !5
  %9 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load i32, i32* %h.addr, align 4, !tbaa !5
  %11 = load i32, i32* %bytes_per_plane.addr, align 4, !tbaa !5
  %or = or i32 %10, %11
  %and = and i32 %or, -128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %12 = load i32, i32* %h.addr, align 4, !tbaa !5
  %call = call i32 @cmd_size_w(i32 %12) #6
  %13 = load i32, i32* %bytes_per_plane.addr, align 4, !tbaa !5
  %call3 = call i32 @cmd_size_w(i32 %13) #6
  %add4 = add nsw i32 %call, %call3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 2, %cond.true ], [ %add4, %cond.false ]
  %add5 = add nsw i32 1, %cond
  %14 = load i32, i32* %nbytes, align 4, !tbaa !5
  %add6 = add i32 %add5, %14
  store i32 %add6, i32* %len, align 4, !tbaa !5
  %15 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  store i32 0, i32* %offset, align 4, !tbaa !5
  %17 = bitcast i32* %plane to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  %20 = load i32, i32* %data_x, align 4, !tbaa !5
  %tobool7 = icmp ne i32 %20, 0
  br i1 %tobool7, label %if.then, label %if.end.12

if.then:                                          ; preds = %cond.end
  %21 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %22 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %23 = load i32, i32* %data_x, align 4, !tbaa !5
  %call8 = call i32 @cmd_put_set_data_x(%struct.gx_device_clist_writer_s* %21, %struct.gx_clist_state_s* %22, i32 %23) #6
  store i32 %call8, i32* %code, align 4, !tbaa !5
  %24 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %24, 0
  br i1 %cmp, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then
  %25 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %26 = load i32, i32* %data_x, align 4, !tbaa !5
  %and10 = and i32 %26, -8
  %27 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %clist_color_info = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %27, i32 0, i32 113
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %clist_color_info, i32 0, i32 3
  %28 = load i16, i16* %depth, align 2, !tbaa !322
  %conv = zext i16 %28 to i32
  %mul11 = mul nsw i32 %and10, %conv
  %shr = ashr i32 %mul11, 3
  store i32 %shr, i32* %offset, align 4, !tbaa !5
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %cond.end
  %29 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %30 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %list = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %30, i32 0, i32 15
  %31 = load i32, i32* %len, align 4, !tbaa !5
  %call13 = call i8* @cmd_put_list_op(%struct.gx_device_clist_writer_s* %29, %struct.cmd_list_s* %list, i32 %31) #6
  store i8* %call13, i8** %dp, align 8, !tbaa !1
  %cmp14 = icmp eq i8* %call13, null
  br i1 %cmp14, label %cond.true.16, label %cond.false.17

cond.true.16:                                     ; preds = %if.end.12
  %32 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %error_code = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %32, i32 0, i32 65
  %33 = load i32, i32* %error_code, align 4, !tbaa !77
  br label %cond.end.18

cond.false.17:                                    ; preds = %if.end.12
  %34 = load i8*, i8** %dp, align 8, !tbaa !1
  store i8 -35, i8* %34, align 1, !tbaa !9
  br label %cond.end.18

cond.end.18:                                      ; preds = %cond.false.17, %cond.true.16
  %cond19 = phi i32 [ %33, %cond.true.16 ], [ 0, %cond.false.17 ]
  store i32 %cond19, i32* %code, align 4, !tbaa !5
  %35 = load i32, i32* %code, align 4, !tbaa !5
  %cmp20 = icmp slt i32 %35, 0
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %cond.end.18
  %36 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %36, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.23:                                        ; preds = %cond.end.18
  %37 = load i8*, i8** %dp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr, i8** %dp, align 8, !tbaa !1
  %38 = load i32, i32* %h.addr, align 4, !tbaa !5
  %39 = load i32, i32* %bytes_per_plane.addr, align 4, !tbaa !5
  %or24 = or i32 %38, %39
  %and25 = and i32 %or24, -128
  %tobool26 = icmp ne i32 %and25, 0
  br i1 %tobool26, label %cond.false.32, label %cond.true.27

cond.true.27:                                     ; preds = %if.end.23
  %40 = load i32, i32* %h.addr, align 4, !tbaa !5
  %conv28 = trunc i32 %40 to i8
  %41 = load i8*, i8** %dp, align 8, !tbaa !1
  %arrayidx29 = getelementptr inbounds i8, i8* %41, i64 0
  store i8 %conv28, i8* %arrayidx29, align 1, !tbaa !9
  %42 = load i32, i32* %bytes_per_plane.addr, align 4, !tbaa !5
  %conv30 = trunc i32 %42 to i8
  %43 = load i8*, i8** %dp, align 8, !tbaa !1
  %arrayidx31 = getelementptr inbounds i8, i8* %43, i64 1
  store i8 %conv30, i8* %arrayidx31, align 1, !tbaa !9
  %44 = load i8*, i8** %dp, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %44, i64 2
  store i8* %add.ptr, i8** %dp, align 8, !tbaa !1
  br label %cond.end.35

cond.false.32:                                    ; preds = %if.end.23
  %45 = load i32, i32* %bytes_per_plane.addr, align 4, !tbaa !5
  %46 = load i32, i32* %h.addr, align 4, !tbaa !5
  %47 = load i8*, i8** %dp, align 8, !tbaa !1
  %call33 = call i8* @cmd_put_w(i32 %46, i8* %47) #6
  %call34 = call i8* @cmd_put_w(i32 %45, i8* %call33) #6
  store i8* %call34, i8** %dp, align 8, !tbaa !1
  br label %cond.end.35

cond.end.35:                                      ; preds = %cond.false.32, %cond.true.27
  %cond36 = phi i8* [ %add.ptr, %cond.true.27 ], [ %call34, %cond.false.32 ]
  store i32 0, i32* %plane, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.59, %cond.end.35
  %48 = load i32, i32* %plane, align 4, !tbaa !5
  %49 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %pie.addr, align 8, !tbaa !1
  %num_planes37 = getelementptr inbounds %struct.gx_image_enum_common_s, %struct.gx_image_enum_common_s* %49, i32 0, i32 6
  %50 = load i32, i32* %num_planes37, align 4, !tbaa !310
  %cmp38 = icmp slt i32 %48, %50
  br i1 %cmp38, label %for.body, label %for.end.61

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc, %for.body
  %51 = load i32, i32* %i, align 4, !tbaa !5
  %52 = load i32, i32* %h.addr, align 4, !tbaa !5
  %cmp41 = icmp slt i32 %51, %52
  br i1 %cmp41, label %for.body.43, label %for.end

for.body.43:                                      ; preds = %for.cond.40
  %53 = load i8*, i8** %dp, align 8, !tbaa !1
  %54 = load i32, i32* %plane, align 4, !tbaa !5
  %idxprom = sext i32 %54 to i64
  %55 = load %struct.gx_image_plane_s*, %struct.gx_image_plane_s** %planes.addr, align 8, !tbaa !1
  %arrayidx44 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %55, i64 %idxprom
  %data = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %arrayidx44, i32 0, i32 0
  %56 = load i8*, i8** %data, align 8, !tbaa !323
  %57 = load i32, i32* %i, align 4, !tbaa !5
  %58 = load i32, i32* %plane, align 4, !tbaa !5
  %idxprom45 = sext i32 %58 to i64
  %59 = load %struct.gx_image_plane_s*, %struct.gx_image_plane_s** %planes.addr, align 8, !tbaa !1
  %arrayidx46 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %59, i64 %idxprom45
  %raster = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %arrayidx46, i32 0, i32 2
  %60 = load i32, i32* %raster, align 4, !tbaa !316
  %mul47 = mul i32 %57, %60
  %idx.ext = zext i32 %mul47 to i64
  %add.ptr48 = getelementptr inbounds i8, i8* %56, i64 %idx.ext
  %61 = load i32, i32* %plane, align 4, !tbaa !5
  %idxprom49 = sext i32 %61 to i64
  %62 = load i32*, i32** %offsets.addr, align 8, !tbaa !1
  %arrayidx50 = getelementptr inbounds i32, i32* %62, i64 %idxprom49
  %63 = load i32, i32* %arrayidx50, align 4, !tbaa !5
  %idx.ext51 = zext i32 %63 to i64
  %add.ptr52 = getelementptr inbounds i8, i8* %add.ptr48, i64 %idx.ext51
  %64 = load i32, i32* %offset, align 4, !tbaa !5
  %idx.ext53 = zext i32 %64 to i64
  %add.ptr54 = getelementptr inbounds i8, i8* %add.ptr52, i64 %idx.ext53
  %65 = load i32, i32* %bytes_per_plane.addr, align 4, !tbaa !5
  %conv55 = zext i32 %65 to i64
  %call56 = call i8* @memcpy(i8* %53, i8* %add.ptr54, i64 %conv55) #8
  %66 = load i32, i32* %bytes_per_plane.addr, align 4, !tbaa !5
  %67 = load i8*, i8** %dp, align 8, !tbaa !1
  %idx.ext57 = zext i32 %66 to i64
  %add.ptr58 = getelementptr inbounds i8, i8* %67, i64 %idx.ext57
  store i8* %add.ptr58, i8** %dp, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body.43
  %68 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %68, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond.40

for.end:                                          ; preds = %for.cond.40
  br label %for.inc.59

for.inc.59:                                       ; preds = %for.end
  %69 = load i32, i32* %plane, align 4, !tbaa !5
  %inc60 = add nsw i32 %69, 1
  store i32 %inc60, i32* %plane, align 4, !tbaa !5
  br label %for.cond

for.end.61:                                       ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.61, %if.then.22, %if.then.9
  %70 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #1
  %71 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #1
  %72 = bitcast i32* %plane to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #1
  %73 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #1
  %74 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #1
  %75 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #1
  %76 = bitcast i32* %nbytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #1
  %77 = bitcast i32* %data_x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #1
  %78 = load i32, i32* %retval
  ret i32 %78
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clist_image_plane_data_retry_cleanup(%struct.gx_device_s* %dev, %struct.clist_image_enum_s* %pie, i32 %yh_used, i32 %code) #5 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pie.addr = alloca %struct.clist_image_enum_s*, align 8
  %yh_used.addr = alloca i32, align 4
  %code.addr = alloca i32, align 4
  %cdev = alloca %struct.gx_device_clist_writer_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.clist_image_enum_s* %pie, %struct.clist_image_enum_s** %pie.addr, align 8, !tbaa !1
  store i32 %yh_used, i32* %yh_used.addr, align 4, !tbaa !5
  store i32 %code, i32* %code.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_device_clist_writer_s** %cdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %union.gx_device_clist_s*
  %writer = bitcast %union.gx_device_clist_s* %2 to %struct.gx_device_clist_writer_s*
  store %struct.gx_device_clist_writer_s* %writer, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %3 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %ignore_lo_mem_warnings = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %3, i32 0, i32 97
  %4 = load i32, i32* %ignore_lo_mem_warnings, align 4, !tbaa !317
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %ignore_lo_mem_warnings, align 4, !tbaa !317
  %5 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %driver_call_nesting = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %5, i32 0, i32 96
  %6 = load i32, i32* %driver_call_nesting, align 4, !tbaa !106
  %inc1 = add nsw i32 %6, 1
  store i32 %inc1, i32* %driver_call_nesting, align 4, !tbaa !106
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %8 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie.addr, align 8, !tbaa !1
  %call = call i32 @write_image_end_all(%struct.gx_device_s* %7, %struct.clist_image_enum_s* %8) #6
  store i32 %call, i32* %code.addr, align 4, !tbaa !5
  %9 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %driver_call_nesting2 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %9, i32 0, i32 96
  %10 = load i32, i32* %driver_call_nesting2, align 4, !tbaa !106
  %dec = add nsw i32 %10, -1
  store i32 %dec, i32* %driver_call_nesting2, align 4, !tbaa !106
  %11 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %ignore_lo_mem_warnings3 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %11, i32 0, i32 97
  %12 = load i32, i32* %ignore_lo_mem_warnings3, align 4, !tbaa !317
  %dec4 = add nsw i32 %12, -1
  store i32 %dec4, i32* %ignore_lo_mem_warnings3, align 4, !tbaa !317
  %13 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie.addr, align 8, !tbaa !1
  %image = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %13, i32 0, i32 9
  %Interpolate = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %image, i32 0, i32 6
  %14 = load i32, i32* %Interpolate, align 4, !tbaa !324
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %15 = load i32, i32* %yh_used.addr, align 4, !tbaa !5
  %16 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie.addr, align 8, !tbaa !1
  %rect = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %16, i32 0, i32 11
  %p = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p, i32 0, i32 1
  %17 = load i32, i32* %y, align 4, !tbaa !148
  %add = add nsw i32 %17, %15
  store i32 %add, i32* %y, align 4, !tbaa !148
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %18 = load i32, i32* %code.addr, align 4, !tbaa !5
  %19 = bitcast %struct.gx_device_clist_writer_s** %cdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #1
  ret i32 %18
}

declare i32 @gs_bbox_transform_inverse(%struct.gs_rect_s*, %struct.gs_matrix_s*, %struct.gs_rect_s*) #2

declare i32 @gs_point_transform_inverse(double, double, %struct.gs_matrix_s*, %struct.gs_point_s*) #2

declare i32 @gs_point_transform(double, double, %struct.gs_matrix_s*, %struct.gs_point_s*) #2

; Function Attrs: nounwind uwtable
define internal void @box_merge_point(%struct.gs_int_rect_s* %pbox, double %x, double %y) #0 {
entry:
  %pbox.addr = alloca %struct.gs_int_rect_s*, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %t = alloca i32, align 4
  store %struct.gs_int_rect_s* %pbox, %struct.gs_int_rect_s** %pbox.addr, align 8, !tbaa !1
  store double %x, double* %x.addr, align 8, !tbaa !236
  store double %y, double* %y.addr, align 8, !tbaa !236
  %0 = bitcast i32* %t to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load double, double* %x.addr, align 8, !tbaa !236
  %call = call double @floor(double %1) #7
  %conv = fptosi double %call to i32
  store i32 %conv, i32* %t, align 4, !tbaa !5
  %2 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %pbox.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %2, i32 0, i32 0
  %x1 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p, i32 0, i32 0
  %3 = load i32, i32* %x1, align 4, !tbaa !55
  %cmp = icmp slt i32 %conv, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %t, align 4, !tbaa !5
  %5 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %pbox.addr, align 8, !tbaa !1
  %p3 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %5, i32 0, i32 0
  %x4 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p3, i32 0, i32 0
  store i32 %4, i32* %x4, align 4, !tbaa !55
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load double, double* %x.addr, align 8, !tbaa !236
  %call5 = call double @ceil(double %6) #7
  %conv6 = fptosi double %call5 to i32
  store i32 %conv6, i32* %t, align 4, !tbaa !5
  %7 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %pbox.addr, align 8, !tbaa !1
  %q = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %7, i32 0, i32 1
  %x7 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q, i32 0, i32 0
  %8 = load i32, i32* %x7, align 4, !tbaa !57
  %cmp8 = icmp sgt i32 %conv6, %8
  br i1 %cmp8, label %if.then.10, label %if.end.13

if.then.10:                                       ; preds = %if.end
  %9 = load i32, i32* %t, align 4, !tbaa !5
  %10 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %pbox.addr, align 8, !tbaa !1
  %q11 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %10, i32 0, i32 1
  %x12 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q11, i32 0, i32 0
  store i32 %9, i32* %x12, align 4, !tbaa !57
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.10, %if.end
  %11 = load double, double* %y.addr, align 8, !tbaa !236
  %call14 = call double @floor(double %11) #7
  %conv15 = fptosi double %call14 to i32
  store i32 %conv15, i32* %t, align 4, !tbaa !5
  %12 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %pbox.addr, align 8, !tbaa !1
  %p16 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %12, i32 0, i32 0
  %y17 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p16, i32 0, i32 1
  %13 = load i32, i32* %y17, align 4, !tbaa !58
  %cmp18 = icmp slt i32 %conv15, %13
  br i1 %cmp18, label %if.then.20, label %if.end.23

if.then.20:                                       ; preds = %if.end.13
  %14 = load i32, i32* %t, align 4, !tbaa !5
  %15 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %pbox.addr, align 8, !tbaa !1
  %p21 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %15, i32 0, i32 0
  %y22 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p21, i32 0, i32 1
  store i32 %14, i32* %y22, align 4, !tbaa !58
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.20, %if.end.13
  %16 = load double, double* %y.addr, align 8, !tbaa !236
  %call24 = call double @ceil(double %16) #7
  %conv25 = fptosi double %call24 to i32
  store i32 %conv25, i32* %t, align 4, !tbaa !5
  %17 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %pbox.addr, align 8, !tbaa !1
  %q26 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %17, i32 0, i32 1
  %y27 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q26, i32 0, i32 1
  %18 = load i32, i32* %y27, align 4, !tbaa !59
  %cmp28 = icmp sgt i32 %conv25, %18
  br i1 %cmp28, label %if.then.30, label %if.end.33

if.then.30:                                       ; preds = %if.end.23
  %19 = load i32, i32* %t, align 4, !tbaa !5
  %20 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %pbox.addr, align 8, !tbaa !1
  %q31 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %20, i32 0, i32 1
  %y32 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q31, i32 0, i32 1
  store i32 %19, i32* %y32, align 4, !tbaa !59
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.30, %if.end.23
  %21 = bitcast i32* %t to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @row_has_color(i8* %data_ptr, %struct.clist_image_enum_s* %pie_c, i32 %data_size, i32 %width) #0 {
entry:
  %retval = alloca i32, align 4
  %data_ptr.addr = alloca i8*, align 8
  %pie_c.addr = alloca %struct.clist_image_enum_s*, align 8
  %data_size.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %pclcs = alloca %struct.clist_color_space_s, align 8
  %is_neutral = alloca i32 (i8*, i32)*, align 8
  %step_size = alloca i32, align 4
  %ptr = alloca i8*, align 8
  %is_mono = alloca i32, align 4
  %k = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %data_ptr, i8** %data_ptr.addr, align 8, !tbaa !1
  store %struct.clist_image_enum_s* %pie_c, %struct.clist_image_enum_s** %pie_c.addr, align 8, !tbaa !1
  store i32 %data_size, i32* %data_size.addr, align 4, !tbaa !5
  store i32 %width, i32* %width.addr, align 4, !tbaa !5
  %0 = bitcast %struct.clist_color_space_s* %pclcs to i8*
  call void @llvm.lifetime.start(i64 48, i8* %0) #1
  %1 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie_c.addr, align 8, !tbaa !1
  %color_space = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %1, i32 0, i32 19
  %2 = bitcast %struct.clist_color_space_s* %pclcs to i8*
  %3 = bitcast %struct.clist_color_space_s* %color_space to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 48, i32 8, i1 false), !tbaa.struct !261
  %4 = bitcast i32 (i8*, i32)** %is_neutral to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i32* %step_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load i32, i32* %data_size.addr, align 4, !tbaa !5
  %7 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie_c.addr, align 8, !tbaa !1
  %spp = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %7, i32 0, i32 29
  %8 = load i32, i32* %spp, align 4, !tbaa !142
  %mul = mul nsw i32 %6, %8
  store i32 %mul, i32* %step_size, align 4, !tbaa !5
  %9 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast i32* %is_mono to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %icc_info = getelementptr inbounds %struct.clist_color_space_s, %struct.clist_color_space_s* %pclcs, i32 0, i32 2
  %is_lab = getelementptr inbounds %struct.clist_icc_color_s, %struct.clist_icc_color_s* %icc_info, i32 0, i32 2
  %12 = load i32, i32* %is_lab, align 4, !tbaa !325
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 (i8*, i32)* @gsicc_mcm_monitor_lab, i32 (i8*, i32)** %is_neutral, align 8, !tbaa !1
  br label %if.end

if.else:                                          ; preds = %entry
  %icc_info1 = getelementptr inbounds %struct.clist_color_space_s, %struct.clist_color_space_s* %pclcs, i32 0, i32 2
  %icc_num_components = getelementptr inbounds %struct.clist_icc_color_s, %struct.clist_icc_color_s* %icc_info1, i32 0, i32 1
  %13 = load i8, i8* %icc_num_components, align 1, !tbaa !326
  %conv = zext i8 %13 to i32
  switch i32 %conv, label %sw.default [
    i32 3, label %sw.bb
    i32 4, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %if.else
  store i32 (i8*, i32)* @gsicc_mcm_monitor_rgb, i32 (i8*, i32)** %is_neutral, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.2:                                          ; preds = %if.else
  store i32 (i8*, i32)* @gsicc_mcm_monitor_cmyk, i32 (i8*, i32)** %is_neutral, align 8, !tbaa !1
  br label %sw.epilog

sw.default:                                       ; preds = %if.else
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb.2, %sw.bb
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %if.then
  %14 = load i8*, i8** %data_ptr.addr, align 8, !tbaa !1
  store i8* %14, i8** %ptr, align 8, !tbaa !1
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %15 = load i32, i32* %k, align 4, !tbaa !5
  %16 = load i32, i32* %width.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %15, %16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i32 (i8*, i32)*, i32 (i8*, i32)** %is_neutral, align 8, !tbaa !1
  %18 = load i8*, i8** %ptr, align 8, !tbaa !1
  %19 = load i32, i32* %data_size.addr, align 4, !tbaa !5
  %call = call i32 %17(i8* %18, i32 %19) #6
  store i32 %call, i32* %is_mono, align 4, !tbaa !5
  %20 = load i32, i32* %is_mono, align 4, !tbaa !5
  %tobool4 = icmp ne i32 %20, 0
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %for.body
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %for.body
  %21 = load i32, i32* %step_size, align 4, !tbaa !5
  %22 = load i8*, i8** %ptr, align 8, !tbaa !1
  %idx.ext = sext i32 %21 to i64
  %add.ptr = getelementptr inbounds i8, i8* %22, i64 %idx.ext
  store i8* %add.ptr, i8** %ptr, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %if.end.6
  %23 = load i32, i32* %k, align 4, !tbaa !5
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.5, %sw.default
  %24 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  %25 = bitcast i32* %is_mono to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  %26 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  %27 = bitcast i32* %step_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  %28 = bitcast i32 (i8*, i32)** %is_neutral to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #1
  %29 = bitcast %struct.clist_color_space_s* %pclcs to i8*
  call void @llvm.lifetime.end(i64 48, i8* %29) #1
  %30 = load i32, i32* %retval
  ret i32 %30
}

declare i32 @gsicc_mcm_monitor_lab(i8*, i32) #2

declare i32 @gsicc_mcm_monitor_rgb(i8*, i32) #2

declare i32 @gsicc_mcm_monitor_cmyk(i8*, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @write_image_end_all(%struct.gx_device_s* %dev, %struct.clist_image_enum_s* %pie) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pie.addr = alloca %struct.clist_image_enum_s*, align 8
  %cdev = alloca %struct.gx_device_clist_writer_s*, align 8
  %code = alloca i32, align 4
  %ry = alloca i32, align 4
  %rheight = alloca i32, align 4
  %re = alloca %struct.cmd_rects_enum_s, align 8
  %cleanup.dest.slot = alloca i32
  %dp = alloca i8*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.clist_image_enum_s* %pie, %struct.clist_image_enum_s** %pie.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_clist_writer_s** %cdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %union.gx_device_clist_s*
  %writer = bitcast %union.gx_device_clist_s* %2 to %struct.gx_device_clist_writer_s*
  store %struct.gx_device_clist_writer_s* %writer, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %ry to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie.addr, align 8, !tbaa !1
  %ymin = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %5, i32 0, i32 20
  %6 = load i32, i32* %ymin, align 4, !tbaa !231
  store i32 %6, i32* %ry, align 4, !tbaa !5
  %7 = bitcast i32* %rheight to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie.addr, align 8, !tbaa !1
  %ymax = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %8, i32 0, i32 21
  %9 = load i32, i32* %ymax, align 4, !tbaa !233
  %10 = load i32, i32* %ry, align 4, !tbaa !5
  %sub = sub nsw i32 %9, %10
  store i32 %sub, i32* %rheight, align 4, !tbaa !5
  %11 = bitcast %struct.cmd_rects_enum_s* %re to i8*
  call void @llvm.lifetime.start(i64 40, i8* %11) #1
  %12 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie.addr, align 8, !tbaa !1
  %ymax1 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %12, i32 0, i32 21
  %13 = load i32, i32* %ymax1, align 4, !tbaa !233
  %cmp = icmp slt i32 %13, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %14 = load i32, i32* %ry, align 4, !tbaa !5
  %15 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %15, i32 0, i32 14
  %16 = load i32, i32* %height, align 4, !tbaa !232
  %cmp2 = icmp sge i32 %14, %16
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.78

if.end:                                           ; preds = %lor.lhs.false
  %17 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %permanent_error = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %17, i32 0, i32 95
  %18 = load i32, i32* %permanent_error, align 4, !tbaa !53
  %cmp3 = icmp slt i32 %18, 0
  br i1 %cmp3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %19 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %permanent_error5 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %19, i32 0, i32 95
  %20 = load i32, i32* %permanent_error5, align 4, !tbaa !53
  store i32 %20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.78

if.end.6:                                         ; preds = %if.end
  %21 = load i32, i32* %ry, align 4, !tbaa !5
  %y = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  store i32 %21, i32* %y, align 4, !tbaa !60
  %22 = load i32, i32* %rheight, align 4, !tbaa !5
  %height7 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  store i32 %22, i32* %height7, align 4, !tbaa !62
  %y8 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %23 = load i32, i32* %y8, align 4, !tbaa !60
  %height9 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %24 = load i32, i32* %height9, align 4, !tbaa !62
  %add = add nsw i32 %23, %24
  %yend = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 2
  store i32 %add, i32* %yend, align 4, !tbaa !63
  %25 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %page_info = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %25, i32 0, i32 58
  %band_params = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info, i32 0, i32 8
  %BandHeight = getelementptr inbounds %struct.gx_band_params_s, %struct.gx_band_params_s* %band_params, i32 0, i32 1
  %26 = load i32, i32* %BandHeight, align 4, !tbaa !64
  %band_height = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  store i32 %26, i32* %band_height, align 4, !tbaa !65
  %yend10 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 2
  %27 = load i32, i32* %yend10, align 4, !tbaa !63
  %y11 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %28 = load i32, i32* %y11, align 4, !tbaa !60
  %sub12 = sub nsw i32 %27, %28
  %band_height13 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  %29 = load i32, i32* %band_height13, align 4, !tbaa !65
  %add14 = add nsw i32 %sub12, %29
  %sub15 = sub nsw i32 %add14, 1
  %band_height16 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  %30 = load i32, i32* %band_height16, align 4, !tbaa !65
  %div = sdiv i32 %sub15, %30
  %rect_nbands = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 8
  store i32 %div, i32* %rect_nbands, align 4, !tbaa !66
  br label %do.body

do.body:                                          ; preds = %do.cond.68, %if.end.6
  %31 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %31) #1
  %y17 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %32 = load i32, i32* %y17, align 4, !tbaa !60
  %band_height18 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  %33 = load i32, i32* %band_height18, align 4, !tbaa !65
  %div19 = sdiv i32 %32, %33
  %band = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 5
  store i32 %div19, i32* %band, align 4, !tbaa !67
  %34 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %states = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %34, i32 0, i32 66
  %35 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %states, align 8, !tbaa !68
  %band20 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 5
  %36 = load i32, i32* %band20, align 4, !tbaa !67
  %idx.ext = sext i32 %36 to i64
  %add.ptr = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %35, i64 %idx.ext
  %pcls = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  store %struct.gx_clist_state_s* %add.ptr, %struct.gx_clist_state_s** %pcls, align 8, !tbaa !69
  %band21 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 5
  %37 = load i32, i32* %band21, align 4, !tbaa !67
  %add22 = add nsw i32 %37, 1
  %band_height23 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  %38 = load i32, i32* %band_height23, align 4, !tbaa !65
  %mul = mul nsw i32 %add22, %38
  %band_end = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 7
  store i32 %mul, i32* %band_end, align 4, !tbaa !70
  %band_end24 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 7
  %39 = load i32, i32* %band_end24, align 4, !tbaa !70
  %yend25 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 2
  %40 = load i32, i32* %yend25, align 4, !tbaa !63
  %cmp26 = icmp slt i32 %39, %40
  br i1 %cmp26, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.body
  %band_end27 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 7
  %41 = load i32, i32* %band_end27, align 4, !tbaa !70
  br label %cond.end

cond.false:                                       ; preds = %do.body
  %yend28 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 2
  %42 = load i32, i32* %yend28, align 4, !tbaa !63
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %41, %cond.true ], [ %42, %cond.false ]
  %y29 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %43 = load i32, i32* %y29, align 4, !tbaa !60
  %sub30 = sub nsw i32 %cond, %43
  %height31 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  store i32 %sub30, i32* %height31, align 4, !tbaa !62
  %pcls32 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %44 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls32, align 8, !tbaa !69
  %known = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %44, i32 0, i32 14
  %45 = load i32, i32* %known, align 4, !tbaa !78
  %and = and i32 %45, 16384
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.33, label %if.end.53

if.then.33:                                       ; preds = %cond.end
  br label %do.body.34

do.body.34:                                       ; preds = %land.end, %if.then.33
  br label %do.body.35

do.body.35:                                       ; preds = %do.body.34
  br label %do.cond

do.cond:                                          ; preds = %do.body.35
  br label %do.end

do.end:                                           ; preds = %do.cond
  %46 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pcls36 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %47 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls36, align 8, !tbaa !69
  %list = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %47, i32 0, i32 15
  %call = call i8* @cmd_put_list_op(%struct.gx_device_clist_writer_s* %46, %struct.cmd_list_s* %list, i32 2) #6
  store i8* %call, i8** %dp, align 8, !tbaa !1
  %cmp37 = icmp eq i8* %call, null
  br i1 %cmp37, label %cond.true.38, label %cond.false.39

cond.true.38:                                     ; preds = %do.end
  %48 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %error_code = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %48, i32 0, i32 65
  %49 = load i32, i32* %error_code, align 4, !tbaa !77
  br label %cond.end.40

cond.false.39:                                    ; preds = %do.end
  %50 = load i8*, i8** %dp, align 8, !tbaa !1
  store i8 -35, i8* %50, align 1, !tbaa !9
  br label %cond.end.40

cond.end.40:                                      ; preds = %cond.false.39, %cond.true.38
  %cond41 = phi i32 [ %49, %cond.true.38 ], [ 0, %cond.false.39 ]
  store i32 %cond41, i32* %code, align 4, !tbaa !5
  br label %do.cond.42

do.cond.42:                                       ; preds = %cond.end.40
  %51 = load i32, i32* %code, align 4, !tbaa !5
  %cmp43 = icmp slt i32 %51, 0
  br i1 %cmp43, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond.42
  %52 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %53 = load i32, i32* %code, align 4, !tbaa !5
  %call44 = call i32 @clist_VMerror_recover(%struct.gx_device_clist_writer_s* %52, i32 %53) #6
  store i32 %call44, i32* %code, align 4, !tbaa !5
  %cmp45 = icmp sge i32 %call44, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond.42
  %54 = phi i1 [ false, %do.cond.42 ], [ %cmp45, %land.rhs ]
  br i1 %54, label %do.body.34, label %do.end.46

do.end.46:                                        ; preds = %land.end
  %55 = load i32, i32* %code, align 4, !tbaa !5
  %cmp47 = icmp slt i32 %55, 0
  br i1 %cmp47, label %land.lhs.true, label %if.end.50

land.lhs.true:                                    ; preds = %do.end.46
  %56 = load i32, i32* %code, align 4, !tbaa !5
  %band_code = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 4
  store i32 %56, i32* %band_code, align 4, !tbaa !71
  %tobool48 = icmp ne i32 %56, 0
  br i1 %tobool48, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %land.lhs.true
  br label %error_in_rect

if.end.50:                                        ; preds = %land.lhs.true, %do.end.46
  %57 = load i8*, i8** %dp, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %57, i64 1
  store i8 0, i8* %arrayidx, align 1, !tbaa !9
  %pcls51 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %58 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls51, align 8, !tbaa !69
  %known52 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %58, i32 0, i32 14
  %59 = load i32, i32* %known52, align 4, !tbaa !78
  %xor = xor i32 %59, 16384
  store i32 %xor, i32* %known52, align 4, !tbaa !78
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.50, %cond.end
  %height54 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %60 = load i32, i32* %height54, align 4, !tbaa !62
  %y55 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %61 = load i32, i32* %y55, align 4, !tbaa !60
  %add56 = add nsw i32 %61, %60
  store i32 %add56, i32* %y55, align 4, !tbaa !60
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

error_in_rect:                                    ; preds = %if.then.49
  %62 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %error_is_retryable = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %62, i32 0, i32 94
  %63 = load i32, i32* %error_is_retryable, align 4, !tbaa !100
  %tobool57 = icmp ne i32 %63, 0
  br i1 %tobool57, label %land.lhs.true.58, label %if.then.65

land.lhs.true.58:                                 ; preds = %error_in_rect
  %64 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %driver_call_nesting = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %64, i32 0, i32 96
  %65 = load i32, i32* %driver_call_nesting, align 4, !tbaa !106
  %cmp59 = icmp eq i32 %65, 0
  br i1 %cmp59, label %land.lhs.true.60, label %if.then.65

land.lhs.true.60:                                 ; preds = %land.lhs.true.58
  %66 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %band_code61 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 4
  %67 = load i32, i32* %band_code61, align 4, !tbaa !71
  %call62 = call i32 @clist_VMerror_recover_flush(%struct.gx_device_clist_writer_s* %66, i32 %67) #6
  %band_code63 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 4
  store i32 %call62, i32* %band_code63, align 4, !tbaa !71
  %cmp64 = icmp sge i32 %call62, 0
  br i1 %cmp64, label %if.end.67, label %if.then.65

if.then.65:                                       ; preds = %land.lhs.true.60, %land.lhs.true.58, %error_in_rect
  %band_code66 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 4
  %68 = load i32, i32* %band_code66, align 4, !tbaa !71
  store i32 %68, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.67:                                        ; preds = %land.lhs.true.60
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.67, %if.then.65, %if.end.53
  %69 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %69) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.78 [
    i32 0, label %cleanup.cont
    i32 3, label %do.cond.68
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.cond.68

do.cond.68:                                       ; preds = %cleanup.cont, %cleanup
  %y69 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %70 = load i32, i32* %y69, align 4, !tbaa !60
  %yend70 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 2
  %71 = load i32, i32* %yend70, align 4, !tbaa !63
  %cmp71 = icmp slt i32 %70, %71
  br i1 %cmp71, label %do.body, label %do.end.72

do.end.72:                                        ; preds = %do.cond.68
  %72 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie.addr, align 8, !tbaa !1
  %buffer = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %72, i32 0, i32 31
  %73 = load i8*, i8** %buffer, align 8, !tbaa !130
  %cmp73 = icmp ne i8* %73, null
  br i1 %cmp73, label %if.then.74, label %if.end.77

if.then.74:                                       ; preds = %do.end.72
  %74 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %74, i32 0, i32 3
  %75 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !128
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %75, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %76 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !215
  %77 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie.addr, align 8, !tbaa !1
  %memory75 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %77, i32 0, i32 3
  %78 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory75, align 8, !tbaa !128
  %79 = load %struct.clist_image_enum_s*, %struct.clist_image_enum_s** %pie.addr, align 8, !tbaa !1
  %buffer76 = getelementptr inbounds %struct.clist_image_enum_s, %struct.clist_image_enum_s* %79, i32 0, i32 31
  %80 = load i8*, i8** %buffer76, align 8, !tbaa !130
  call void %76(%struct.gs_memory_s* %78, i8* %80, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0)) #6
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.74, %do.end.72
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.78

cleanup.78:                                       ; preds = %if.end.77, %cleanup, %if.then.4, %if.then
  %81 = bitcast %struct.cmd_rects_enum_s* %re to i8*
  call void @llvm.lifetime.end(i64 40, i8* %81) #1
  %82 = bitcast i32* %rheight to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #1
  %83 = bitcast i32* %ry to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #1
  %84 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #1
  %85 = bitcast %struct.gx_device_clist_writer_s** %cdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %85) #1
  %86 = load i32, i32* %retval
  ret i32 %86
}

declare void @gx_image_free_enum(%struct.gx_image_enum_common_s**) #2

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

declare i8* @sample_unpack_1(i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32) #2

declare i8* @sample_unpack_2(i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32) #2

declare i8* @sample_unpack_4(i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32) #2

declare i8* @sample_unpack_8(i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32) #2

declare i8* @sample_unpack_1_interleaved(i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32) #2

declare i8* @sample_unpack_2_interleaved(i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32) #2

declare i8* @sample_unpack_4_interleaved(i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32) #2

declare i8* @sample_unpack_8_interleaved(i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32) #2

declare void @image_init_map(i8*, i32, float*) #2

declare i32 @gs_cspace_indexed_lookup_bytes(%struct.gs_color_space_s*, float, i8*) #2

declare void @s_init(%struct.stream_s*, %struct.gs_memory_s*) #2

declare void @swrite_string(%struct.stream_s*, i8*, i32) #2

declare i32 @spputc(%struct.stream_s*, i8 zeroext) #2

declare i64 @stell(%struct.stream_s*) #2

declare i32 @gx_cpath_includes_rectangle(%struct.gx_clip_path_s*, i32, i32, i32, i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin }
attributes #7 = { nobuiltin nounwind readnone }
attributes #8 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !8, i64 0}
!8 = !{!"long", !3, i64 0}
!9 = !{!3, !3, i64 0}
!10 = !{!11, !6, i64 12168}
!11 = !{!"gx_device_clist_writer_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !12, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !13, i64 96, !16, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !8, i64 928, !8, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !8, i64 968, !8, i64 976, !17, i64 984, !6, i64 1052, !6, i64 1056, !18, i64 1064, !2, i64 1104, !3, i64 1112, !20, i64 1120, !21, i64 1144, !2, i64 1728, !22, i64 1736, !2, i64 1768, !2, i64 1776, !6, i64 1784, !19, i64 1792, !6, i64 1808, !6, i64 1812, !23, i64 1816, !24, i64 1840, !6, i64 1864, !6, i64 1868, !2, i64 1872, !6, i64 1880, !6, i64 1884, !25, i64 1888, !6, i64 10144, !8, i64 10152, !2, i64 10160, !2, i64 10168, !6, i64 10176, !2, i64 10184, !6, i64 10192, !2, i64 10200, !2, i64 10208, !2, i64 10216, !2, i64 10224, !2, i64 10232, !26, i64 10240, !6, i64 10256, !6, i64 10260, !6, i64 10264, !6, i64 10268, !27, i64 10272, !6, i64 10320, !6, i64 10324, !6, i64 10328, !29, i64 10336, !6, i64 11952, !6, i64 11956, !6, i64 11960, !6, i64 11964, !3, i64 11968, !2, i64 12016, !8, i64 12024, !42, i64 12032, !3, i64 12080, !8, i64 12112, !8, i64 12120, !8, i64 12128, !8, i64 12136, !6, i64 12144, !6, i64 12148, !6, i64 12152, !6, i64 12156, !2, i64 12160, !6, i64 12168, !2, i64 12176, !6, i64 12184, !6, i64 12188, !6, i64 12192, !6, i64 12196, !6, i64 12200, !6, i64 12204, !2, i64 12208, !8, i64 12216, !6, i64 12224, !6, i64 12228, !6, i64 12232, !6, i64 12236, !13, i64 12240}
!12 = !{!"rc_header_s", !8, i64 0, !2, i64 8, !2, i64 16}
!13 = !{!"gx_device_color_info_s", !6, i64 0, !6, i64 4, !3, i64 8, !14, i64 12, !3, i64 14, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !15, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !8, i64 704, !6, i64 712}
!14 = !{!"short", !3, i64 0}
!15 = !{!"gx_device_anti_alias_info_s", !6, i64 0, !6, i64 4}
!16 = !{!"gx_device_cached_colors_s", !8, i64 0, !8, i64 8}
!17 = !{!"gx_stroked_gradient_recognizer_s", !6, i64 0, !3, i64 4, !3, i64 36}
!18 = !{!"gdev_space_params_s", !8, i64 0, !8, i64 8, !19, i64 16, !6, i64 32, !3, i64 36}
!19 = !{!"gx_band_params_s", !6, i64 0, !6, i64 4, !8, i64 8}
!20 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!21 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!22 = !{!"gx_device_buf_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!23 = !{!"gx_bits_cache_chunk_s", !2, i64 0, !2, i64 8, !6, i64 16, !6, i64 20}
!24 = !{!"gx_bits_cache_s", !2, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!25 = !{!"gx_band_page_info_s", !3, i64 0, !2, i64 4096, !3, i64 4104, !2, i64 8200, !2, i64 8208, !6, i64 8216, !8, i64 8224, !8, i64 8232, !19, i64 8240}
!26 = !{!"cmd_list_s", !2, i64 0, !2, i64 8}
!27 = !{!"gx_strip_bitmap_s", !2, i64 0, !6, i64 8, !28, i64 12, !8, i64 24, !14, i64 32, !14, i64 34, !14, i64 36, !14, i64 38, !6, i64 40}
!28 = !{!"gs_int_point_s", !6, i64 0, !6, i64 4}
!29 = !{!"gs_imager_state_s", !6, i64 0, !2, i64 8, !2, i64 16, !30, i64 24, !6, i64 128, !34, i64 132, !6, i64 168, !35, i64 176, !35, i64 192, !6, i64 208, !6, i64 212, !14, i64 216, !3, i64 220, !37, i64 224, !37, i64 228, !38, i64 232, !8, i64 240, !6, i64 248, !6, i64 252, !6, i64 256, !2, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !31, i64 296, !39, i64 300, !6, i64 308, !6, i64 312, !6, i64 316, !31, i64 320, !6, i64 324, !6, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !6, i64 408, !2, i64 416, !2, i64 424, !40, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !41, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !41, i64 1336}
!30 = !{!"gx_line_params_s", !31, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !6, i64 20, !31, i64 24, !31, i64 28, !31, i64 32, !6, i64 36, !32, i64 40, !33, i64 64}
!31 = !{!"float", !3, i64 0}
!32 = !{!"gs_matrix_s", !31, i64 0, !31, i64 4, !31, i64 8, !31, i64 12, !31, i64 16, !31, i64 20}
!33 = !{!"gx_dash_params_s", !2, i64 0, !6, i64 8, !31, i64 12, !6, i64 16, !31, i64 20, !6, i64 24, !6, i64 28, !31, i64 32}
!34 = !{!"gs_matrix_fixed_s", !31, i64 0, !31, i64 4, !31, i64 8, !31, i64 12, !31, i64 16, !31, i64 20, !6, i64 24, !6, i64 28, !6, i64 32}
!35 = !{!"gs_point_s", !36, i64 0, !36, i64 8}
!36 = !{!"double", !3, i64 0}
!37 = !{!"gs_transparency_source_s", !31, i64 0}
!38 = !{!"gs_xstate_trans_flags", !6, i64 0, !6, i64 4}
!39 = !{!"gs_fixed_point_s", !6, i64 0, !6, i64 4}
!40 = !{!"gx_transfer_s", !6, i64 0, !2, i64 8, !6, i64 16, !2, i64 24, !6, i64 32, !2, i64 40, !6, i64 48, !2, i64 56}
!41 = !{!"gs_devicen_color_map_s", !6, i64 0, !3, i64 4, !6, i64 8, !6, i64 12, !8, i64 16, !3, i64 24}
!42 = !{!"clist_color_space_s", !3, i64 0, !8, i64 8, !43, i64 16, !2, i64 40}
!43 = !{!"clist_icc_color_s", !8, i64 0, !3, i64 8, !6, i64 12, !3, i64 16, !3, i64 20}
!44 = !{!11, !6, i64 832}
!45 = !{!11, !6, i64 12184}
!46 = !{!11, !6, i64 12188}
!47 = !{!48, !2, i64 0}
!48 = !{!"gx_device_color_s", !2, i64 0, !3, i64 8, !28, i64 352, !6, i64 360, !49, i64 368, !51, i64 632}
!49 = !{!"gs_client_color_s", !2, i64 0, !50, i64 8}
!50 = !{!"gs_paint_color_s", !3, i64 0}
!51 = !{!"_mask", !52, i64 0, !8, i64 8, !2, i64 16}
!52 = !{!"mp_", !6, i64 0, !6, i64 4}
!53 = !{!11, !6, i64 12148}
!54 = !{!11, !6, i64 11952}
!55 = !{!56, !6, i64 0}
!56 = !{!"gs_int_rect_s", !28, i64 0, !28, i64 8}
!57 = !{!56, !6, i64 8}
!58 = !{!56, !6, i64 4}
!59 = !{!56, !6, i64 12}
!60 = !{!61, !6, i64 0}
!61 = !{!"cmd_rects_enum_s", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !2, i64 24, !6, i64 32, !6, i64 36}
!62 = !{!61, !6, i64 4}
!63 = !{!61, !6, i64 8}
!64 = !{!11, !6, i64 10132}
!65 = !{!61, !6, i64 12}
!66 = !{!61, !6, i64 36}
!67 = !{!61, !6, i64 20}
!68 = !{!11, !2, i64 10200}
!69 = !{!61, !2, i64 24}
!70 = !{!61, !6, i64 32}
!71 = !{!61, !6, i64 16}
!72 = !{!73, !6, i64 1744}
!73 = !{!"gx_clist_state_s", !3, i64 0, !74, i64 16, !6, i64 360, !8, i64 368, !8, i64 376, !28, i64 384, !3, i64 392, !3, i64 408, !75, i64 1720, !6, i64 1736, !14, i64 1740, !14, i64 1742, !6, i64 1744, !6, i64 1748, !6, i64 1752, !26, i64 1760, !76, i64 1776}
!74 = !{!"gx_device_color_saved_s", !2, i64 0, !3, i64 8, !28, i64 336}
!75 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!76 = !{!"gx_colors_usage_s", !8, i64 0, !6, i64 8, !56, i64 12}
!77 = !{!11, !6, i64 10192}
!78 = !{!73, !6, i64 1752}
!79 = !{!73, !14, i64 1742}
!80 = !{!73, !6, i64 1784}
!81 = !{!73, !8, i64 368}
!82 = !{!73, !6, i64 360}
!83 = !{!11, !2, i64 1872}
!84 = !{!85, !8, i64 0}
!85 = !{!"", !8, i64 0}
!86 = !{!11, !2, i64 1776}
!87 = !{!88, !8, i64 16}
!88 = !{!"", !89, i64 0, !14, i64 8, !14, i64 10, !14, i64 12, !14, i64 14, !8, i64 16, !3, i64 24, !3, i64 25, !14, i64 26, !14, i64 28, !14, i64 30, !3, i64 32}
!89 = !{!"gx_cached_bits_head_s", !6, i64 0, !6, i64 4}
!90 = !{!27, !2, i64 0}
!91 = !{!27, !6, i64 8}
!92 = !{!27, !14, i64 32}
!93 = !{!27, !6, i64 12}
!94 = !{!27, !14, i64 34}
!95 = !{!27, !6, i64 16}
!96 = !{!27, !14, i64 38}
!97 = !{!27, !14, i64 36}
!98 = !{!27, !8, i64 24}
!99 = !{!27, !6, i64 40}
!100 = !{!11, !6, i64 12144}
!101 = !{!75, !6, i64 0}
!102 = !{!75, !6, i64 4}
!103 = !{!75, !6, i64 8}
!104 = !{!75, !6, i64 12}
!105 = !{i64 0, i64 4, !5, i64 4, i64 4, !5, i64 8, i64 4, !5, i64 12, i64 4, !5}
!106 = !{!11, !6, i64 12152}
!107 = !{!108, !6, i64 0}
!108 = !{!"gs_fixed_rect_s", !39, i64 0, !39, i64 8}
!109 = !{!108, !6, i64 4}
!110 = !{!108, !6, i64 8}
!111 = !{!108, !6, i64 12}
!112 = !{!29, !6, i64 324}
!113 = !{!29, !6, i64 328}
!114 = !{!115, !6, i64 848}
!115 = !{!"gx_device_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !12, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !13, i64 96, !16, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !8, i64 928, !8, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !8, i64 968, !8, i64 976, !17, i64 984, !6, i64 1052, !6, i64 1056, !18, i64 1064, !2, i64 1104, !3, i64 1112, !20, i64 1120, !21, i64 1144}
!116 = !{!117, !2, i64 0}
!117 = !{!"gs_image_common_s", !2, i64 0, !32, i64 8}
!118 = !{!119, !6, i64 48}
!119 = !{!"gx_image_type_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !6, i64 48}
!120 = !{!121, !6, i64 584}
!121 = !{!"gs_image1_s", !2, i64 0, !32, i64 8, !6, i64 32, !6, i64 36, !6, i64 40, !3, i64 44, !6, i64 564, !3, i64 568, !6, i64 572, !2, i64 576, !6, i64 584, !6, i64 588, !3, i64 592, !3, i64 596}
!122 = !{!121, !3, i64 592}
!123 = !{!124, !3, i64 568}
!124 = !{!"gs_pixel_image_s", !2, i64 0, !32, i64 8, !6, i64 32, !6, i64 36, !6, i64 40, !3, i64 44, !6, i64 564, !3, i64 568, !6, i64 572, !2, i64 576}
!125 = !{!126, !2, i64 80}
!126 = !{!"gs_memory_s", !2, i64 0, !127, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!127 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!128 = !{!129, !2, i64 24}
!129 = !{!"clist_image_enum_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !8, i64 32, !6, i64 40, !6, i64 44, !3, i64 48, !3, i64 308, !124, i64 568, !48, i64 1152, !56, i64 1808, !2, i64 1824, !2, i64 1832, !3, i64 1840, !28, i64 1844, !6, i64 1852, !32, i64 1856, !6, i64 1880, !42, i64 1888, !6, i64 1936, !6, i64 1940, !76, i64 1944, !3, i64 1976, !6, i64 2896, !6, i64 2900, !6, i64 2904, !6, i64 2908, !6, i64 2912, !6, i64 2916, !2, i64 2920, !2, i64 2928, !6, i64 2936, !3, i64 2940}
!130 = !{!129, !2, i64 2928}
!131 = !{!124, !2, i64 576}
!132 = !{!124, !6, i64 572}
!133 = !{!29, !6, i64 212}
!134 = !{!129, !6, i64 44}
!135 = !{!11, !8, i64 12136}
!136 = !{!32, !31, i64 4}
!137 = !{!32, !31, i64 8}
!138 = !{!32, !31, i64 0}
!139 = !{!32, !31, i64 12}
!140 = !{!124, !6, i64 40}
!141 = !{!129, !6, i64 2912}
!142 = !{!129, !6, i64 2916}
!143 = !{i64 0, i64 8, !1, i64 8, i64 4, !144, i64 12, i64 4, !144, i64 16, i64 4, !144, i64 20, i64 4, !144, i64 24, i64 4, !144, i64 28, i64 4, !144, i64 32, i64 4, !5, i64 36, i64 4, !5, i64 40, i64 4, !5, i64 44, i64 520, !9, i64 564, i64 4, !5, i64 568, i64 4, !9, i64 572, i64 4, !5, i64 576, i64 8, !1}
!144 = !{!31, !31, i64 0}
!145 = !{i64 0, i64 8, !1, i64 8, i64 8, !7, i64 8, i64 8, !1, i64 16, i64 16, !9, i64 32, i64 4, !5, i64 36, i64 4, !5, i64 40, i64 8, !1, i64 8, i64 8, !1, i64 16, i64 2, !146, i64 18, i64 64, !9, i64 84, i64 256, !9, i64 340, i64 2, !146, i64 344, i64 8, !7, i64 8, i64 8, !1, i64 8, i64 128, !9, i64 352, i64 4, !5, i64 356, i64 4, !5, i64 360, i64 4, !5, i64 368, i64 8, !1, i64 376, i64 256, !9, i64 632, i64 4, !5, i64 636, i64 4, !5, i64 640, i64 8, !7, i64 648, i64 8, !1}
!146 = !{!14, !14, i64 0}
!147 = !{!129, !6, i64 1808}
!148 = !{!129, !6, i64 1812}
!149 = !{!124, !6, i64 32}
!150 = !{!129, !6, i64 1816}
!151 = !{!124, !6, i64 36}
!152 = !{!129, !6, i64 1820}
!153 = !{!129, !2, i64 1824}
!154 = !{!129, !2, i64 1832}
!155 = !{!129, !3, i64 1840}
!156 = !{!129, !6, i64 1852}
!157 = !{i64 0, i64 4, !144, i64 4, i64 4, !144, i64 8, i64 4, !144, i64 12, i64 4, !144, i64 16, i64 4, !144, i64 20, i64 4, !144}
!158 = !{!129, !6, i64 1880}
!159 = !{!129, !3, i64 1888}
!160 = !{i64 0, i64 8, !7, i64 8, i64 1, !9, i64 12, i64 4, !5, i64 16, i64 4, !9, i64 20, i64 4, !9}
!161 = !{!129, !2, i64 1928}
!162 = !{!129, !8, i64 1896}
!163 = !{!164, !2, i64 40}
!164 = !{!"gs_color_space_s", !2, i64 0, !12, i64 8, !8, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !3, i64 72}
!165 = !{!164, !2, i64 64}
!166 = !{!167, !6, i64 24}
!167 = !{!"gs_indexed_params_s", !6, i64 0, !6, i64 4, !3, i64 8, !6, i64 24}
!168 = !{!164, !8, i64 32}
!169 = !{!115, !2, i64 1680}
!170 = !{!115, !3, i64 1112}
!171 = !{!172, !3, i64 12}
!172 = !{!"gsicc_rendering_param_s", !3, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !6, i64 20}
!173 = !{!172, !6, i64 20}
!174 = !{!172, !3, i64 8}
!175 = !{!172, !3, i64 16}
!176 = !{!29, !2, i64 336}
!177 = !{!178, !2, i64 72}
!178 = !{!"gsicc_manager_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !6, i64 64, !2, i64 72, !2, i64 80, !12, i64 88}
!179 = !{!180, !3, i64 16}
!180 = !{!"cmm_profile_s", !3, i64 0, !3, i64 1, !6, i64 4, !6, i64 8, !3, i64 12, !3, i64 16, !181, i64 20, !8, i64 144, !6, i64 152, !3, i64 156, !6, i64 216, !6, i64 220, !6, i64 224, !172, i64 228, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !12, i64 288, !6, i64 312, !2, i64 320, !2, i64 328, !2, i64 336}
!181 = !{!"gs_range_icc_s", !3, i64 0}
!182 = !{!172, !3, i64 0}
!183 = !{!172, !3, i64 4}
!184 = !{i64 0, i64 4, !9, i64 4, i64 4, !9, i64 8, i64 4, !9, i64 12, i64 4, !9, i64 16, i64 4, !9, i64 20, i64 4, !5}
!185 = !{!180, !6, i64 152}
!186 = !{!180, !2, i64 256}
!187 = !{!180, !6, i64 220}
!188 = !{!180, !8, i64 144}
!189 = !{!129, !8, i64 1904}
!190 = !{!180, !3, i64 0}
!191 = !{!129, !3, i64 1912}
!192 = !{!180, !6, i64 4}
!193 = !{!129, !6, i64 1916}
!194 = !{!180, !3, i64 12}
!195 = !{!129, !3, i64 1920}
!196 = !{!129, !3, i64 1924}
!197 = !{!180, !6, i64 224}
!198 = !{!129, !6, i64 2900}
!199 = !{!11, !2, i64 10224}
!200 = !{!11, !2, i64 10208}
!201 = !{!124, !6, i64 564}
!202 = !{!129, !6, i64 1848}
!203 = !{!129, !6, i64 1844}
!204 = !{!205, !36, i64 0}
!205 = !{!"gs_rect_s", !35, i64 0, !35, i64 16}
!206 = !{!205, !36, i64 8}
!207 = !{!205, !36, i64 16}
!208 = !{!205, !36, i64 24}
!209 = !{!129, !2, i64 2920}
!210 = !{!211, !6, i64 160}
!211 = !{!"cmm_dev_profile_s", !3, i64 0, !2, i64 32, !2, i64 40, !2, i64 48, !3, i64 56, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !2, i64 176, !6, i64 184, !2, i64 192, !12, i64 200}
!212 = !{!129, !6, i64 2908}
!213 = !{!29, !2, i64 344}
!214 = !{!126, !2, i64 64}
!215 = !{!126, !2, i64 24}
!216 = !{!115, !6, i64 100}
!217 = !{!115, !3, i64 110}
!218 = !{!115, !6, i64 116}
!219 = !{!115, !6, i64 112}
!220 = !{!211, !6, i64 184}
!221 = !{!115, !14, i64 108}
!222 = !{!129, !6, i64 2896}
!223 = !{!11, !6, i64 100}
!224 = !{!164, !2, i64 0}
!225 = !{!226, !2, i64 72}
!226 = !{!"gs_color_space_type_s", !3, i64 0, !6, i64 4, !6, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128}
!227 = !{!167, !6, i64 0}
!228 = !{!129, !8, i64 1944}
!229 = !{!129, !6, i64 1952}
!230 = !{!129, !6, i64 2904}
!231 = !{!129, !6, i64 1936}
!232 = !{!115, !6, i64 836}
!233 = !{!129, !6, i64 1940}
!234 = !{!129, !8, i64 32}
!235 = !{!29, !6, i64 256}
!236 = !{!36, !36, i64 0}
!237 = !{!129, !6, i64 2936}
!238 = !{!239, !31, i64 320}
!239 = !{!"sample_map_s", !3, i64 0, !3, i64 256, !31, i64 320, !3, i64 324, !6, i64 328}
!240 = !{!239, !3, i64 324}
!241 = !{!239, !6, i64 328}
!242 = !{!243, !2, i64 8}
!243 = !{!"stream_cursor_write_s", !2, i64 0, !2, i64 8, !2, i64 16}
!244 = !{!243, !2, i64 16}
!245 = !{!119, !2, i64 24}
!246 = !{!11, !31, i64 10468}
!247 = !{!29, !31, i64 132}
!248 = !{!11, !31, i64 10472}
!249 = !{!29, !31, i64 136}
!250 = !{!11, !31, i64 10476}
!251 = !{!29, !31, i64 140}
!252 = !{!11, !31, i64 10480}
!253 = !{!29, !31, i64 144}
!254 = !{!11, !31, i64 10484}
!255 = !{!29, !31, i64 148}
!256 = !{!11, !31, i64 10488}
!257 = !{!29, !31, i64 152}
!258 = !{i64 0, i64 4, !144, i64 4, i64 4, !144, i64 8, i64 4, !144, i64 12, i64 4, !144, i64 16, i64 4, !144, i64 20, i64 4, !144, i64 24, i64 4, !5, i64 28, i64 4, !5, i64 32, i64 4, !5}
!259 = !{!11, !2, i64 12072}
!260 = !{!11, !8, i64 12040}
!261 = !{i64 0, i64 1, !9, i64 8, i64 8, !7, i64 16, i64 8, !7, i64 24, i64 1, !9, i64 28, i64 4, !5, i64 32, i64 4, !9, i64 36, i64 4, !9, i64 40, i64 8, !1}
!262 = !{!11, !6, i64 10608}
!263 = !{!29, !6, i64 272}
!264 = !{!11, !6, i64 10612}
!265 = !{!29, !6, i64 276}
!266 = !{!11, !3, i64 10556}
!267 = !{!29, !3, i64 220}
!268 = !{!11, !6, i64 10584}
!269 = !{!29, !6, i64 248}
!270 = !{!11, !6, i64 10660}
!271 = !{!11, !31, i64 10560}
!272 = !{!29, !31, i64 224}
!273 = !{!11, !31, i64 10564}
!274 = !{!29, !31, i64 228}
!275 = !{!11, !14, i64 10552}
!276 = !{!29, !14, i64 216}
!277 = !{!11, !6, i64 836}
!278 = !{!279, !2, i64 0}
!279 = !{!"gs_composite_s", !2, i64 0, !8, i64 8, !6, i64 16, !2, i64 24, !2, i64 32}
!280 = !{!281, !2, i64 24}
!281 = !{!"gs_composite_type_s", !3, i64 0, !282, i64 8}
!282 = !{!"gs_composite_type_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72}
!283 = !{!281, !2, i64 64}
!284 = !{!281, !2, i64 80}
!285 = !{!11, !6, i64 10144}
!286 = !{!281, !3, i64 0}
!287 = !{!11, !2, i64 10216}
!288 = !{!11, !2, i64 1768}
!289 = !{!290, !8, i64 184}
!290 = !{!"gx_device_halftone_s", !291, i64 0, !12, i64 160, !8, i64 184, !3, i64 192, !2, i64 200, !6, i64 208, !6, i64 212, !6, i64 216, !6, i64 220}
!291 = !{!"gx_ht_order_s", !292, i64 0, !14, i64 40, !14, i64 42, !14, i64 44, !14, i64 46, !14, i64 48, !14, i64 50, !6, i64 52, !6, i64 56, !6, i64 60, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !293, i64 112, !2, i64 144, !6, i64 152}
!292 = !{!"gx_ht_cell_params_s", !14, i64 0, !14, i64 2, !14, i64 4, !14, i64 6, !14, i64 8, !14, i64 10, !8, i64 16, !14, i64 24, !14, i64 26, !6, i64 28, !6, i64 32, !6, i64 36}
!293 = !{!"gx_ht_order_screen_params_s", !32, i64 0, !8, i64 24}
!294 = !{!11, !8, i64 12128}
!295 = !{!29, !2, i64 392}
!296 = !{!29, !2, i64 416}
!297 = !{!29, !2, i64 424}
!298 = !{!29, !2, i64 440}
!299 = !{!29, !6, i64 432}
!300 = !{!301, !8, i64 48}
!301 = !{!"gx_transfer_map_s", !12, i64 0, !2, i64 24, !302, i64 32, !8, i64 48, !3, i64 56}
!302 = !{!"gs_mapping_closure_s", !2, i64 0, !2, i64 8}
!303 = !{!29, !2, i64 488}
!304 = !{!29, !2, i64 456}
!305 = !{!29, !6, i64 448}
!306 = !{!29, !2, i64 472}
!307 = !{!29, !6, i64 464}
!308 = !{!309, !2, i64 16}
!309 = !{!"gx_image_enum_common_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !8, i64 32, !6, i64 40, !6, i64 44, !3, i64 48, !3, i64 308}
!310 = !{!309, !6, i64 44}
!311 = !{!312, !6, i64 8}
!312 = !{!"gx_image_plane_s", !2, i64 0, !6, i64 8, !6, i64 12}
!313 = !{!73, !8, i64 1776}
!314 = !{!129, !6, i64 600}
!315 = !{!129, !6, i64 604}
!316 = !{!312, !6, i64 12}
!317 = !{!11, !6, i64 12156}
!318 = !{!115, !2, i64 1432}
!319 = !{!35, !36, i64 0}
!320 = !{!35, !36, i64 8}
!321 = !{i64 0, i64 8, !236, i64 8, i64 8, !236}
!322 = !{!11, !14, i64 12252}
!323 = !{!312, !2, i64 0}
!324 = !{!129, !6, i64 1132}
!325 = !{!42, !6, i64 28}
!326 = !{!42, !3, i64 24}
