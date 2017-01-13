; ModuleID = './gdevpdfb.bc'
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
%struct.gx_device_halftone_s = type opaque
%struct.gs_int_point_s = type { i32, i32 }
%struct.gs_client_color_s = type { %struct.gs_pattern_instance_s*, %struct.gs_paint_color_s }
%struct.gs_pattern_instance_s = type { %struct.rc_header_s, %struct.gs_pattern_type_s*, %struct.gs_state_s*, i64 }
%struct.rc_header_s = type { i64, %struct.gs_memory_s*, void (%struct.gs_memory_s*, i8*, i8*)* }
%struct.gs_pattern_type_s = type { i32, %struct.pp_ }
%struct.pp_ = type { i32 (%struct.gs_pattern_template_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_pattern_template_s*, %struct.gs_matrix_s*, %struct.gs_state_s*, %struct.gs_memory_s*)*, %struct.gs_pattern_template_s* (%struct.gs_pattern_instance_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_state_s*)* }
%struct.gs_pattern_template_s = type { %struct.gs_pattern_type_s*, i32, %struct.gs_uid_s, i8* }
%struct.gs_uid_s = type { i64, i64* }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
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
%struct.gs_halftone_s = type opaque
%struct.gs_cie_render_s = type opaque
%struct.gx_transfer_map_s = type { %struct.rc_header_s, float (double, %struct.gx_transfer_map_s*)*, %struct.gs_mapping_closure_s, i64, [256 x i16] }
%struct.gs_mapping_closure_s = type { float (double, %struct.gx_transfer_map_s*, i8*)*, i8* }
%struct.gx_transfer_s = type { i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s* }
%struct.gx_color_map_procs_s = type { void (i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32, %struct.gs_color_space_s*)*, void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_imager_state_s*, %struct.gx_device_s*)* }
%struct.gx_pattern_cache_s = type { %struct.gs_memory_s*, %struct.gx_color_tile_s*, i32, i32, i32, i64, i64, void (%struct.gx_pattern_cache_s*)* }
%struct.gx_color_tile_s = type { i64, i32, %struct.gs_uid_s, i32, i32, %struct.gs_matrix_s, %struct.gs_rect_s, %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s, %struct.gx_pattern_trans_s*, %union.gx_device_clist_s*, i8, i8, i8, [2 x i8], i32, i32, i32 }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.gx_strip_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16, i16, i16, i32 }
%struct.gx_pattern_trans_s = type { %struct.gx_device_s*, i8*, %struct.gs_memory_s*, %struct.gx_pattern_trans_s*, %struct.gs_int_rect_s, i32, i32, i32, i32, i32, i32, %struct.pdf14_nonseparable_blending_procs_s*, i32, i32, %struct.gs_int_rect_s*, void (i32, i32, i32, i32, i32, i32, %struct.gx_color_tile_s*, %struct.gx_pattern_trans_s*)*, i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)* }
%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }
%struct.pdf14_nonseparable_blending_procs_s = type { void (i32, i8*, i8*, i8*)*, void (i32, i8*, i8*, i8*)* }
%struct.gx_image_enum_s = type opaque
%union.gx_device_clist_s = type opaque
%struct.gx_cie_joint_caches_s = type opaque
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
%struct.gx_device_color_info_s = type { i32, i32, i32, i16, i8, i32, i32, i32, i32, %struct.gx_device_anti_alias_info_s, i32, [64 x i8], [64 x i8], [64 x i64], i8*, i32, i64, i32 }
%struct.gx_device_anti_alias_info_s = type { i32, i32 }
%struct.gx_device_cached_colors_s = type { i64, i64 }
%struct.gx_stroked_gradient_recognizer_s = type { i32, [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s] }
%struct.gdev_space_params_s = type { i64, i64, %struct.gx_band_params_s, i32, i32 }
%struct.gx_band_params_s = type { i32, i32, i64 }
%struct.cmm_dev_profile_s = type { [4 x %struct.cmm_profile_s*], %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, [4 x %struct.gsicc_rendering_param_s], i32, i32, i32, i32, i32, i32, %struct.gsicc_namelist_s*, i32, %struct.gs_memory_s*, %struct.rc_header_s }
%struct.gx_page_device_procs_s = type { i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* }
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, {}*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i8*, i8**)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i64 (%struct.gx_device_s*, i16*)*, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i32, i32*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)*, i32 (%struct.gx_device_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, void (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* }
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
%struct.gs_show_enum_s = type { %struct.gs_text_params_s, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_procs_s*, %struct.rc_header_s, i8*, %struct.gs_font_s*, i64, i32, %struct.gs_log2_scale_point_s, %struct.cached_fm_pair_s*, i32, i32, %struct.gx_font_stack_s, i32, i32, i32, %struct.gs_point_s, i64, i32, %struct.gs_log2_scale_point_s, %struct.gs_point_s, %struct.gs_text_returned_s, i32, %struct.gs_state_s*, i32, i32, %struct.gs_state_s*, i32, %struct.gs_int_rect_s, %struct.gs_int_rect_s, i32, i32, i64 (%struct.gs_font_s*, i64, i32)*, %struct.gx_device_memory_s*, %struct.gx_device_memory_s*, %struct.gx_device_null_s*, %struct.gs_fixed_point_s, %struct.gs_point_s, i32, %struct.gs_fixed_point_s, %struct.cached_char_s*, i32, i32 (%struct.gs_show_enum_s*)* }
%struct.gx_device_memory_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, i32, i8*, %struct.gs_memory_s*, i32, %struct.gs_memory_s*, i32, [64 x %struct.gx_render_plane_s], %struct.gs_matrix_s, i8**, %struct.gs_const_string_s, %struct._c24, %struct._c40, %struct._c48, %struct._c56, %struct._c64, %struct.gs_log2_scale_point_s, i32, i32, i32, i32, i32, i64, %struct.gx_device_color_s*, i32, i32 }
%struct.gx_render_plane_s = type { i32, i32, i32 }
%struct._c24 = type { i64, i32, i32, i32 }
%struct._c40 = type { i64, i32, i32, i32, i32, i32 }
%struct._c48 = type { i64, i32, i32, i32 }
%struct._c56 = type { i64, i32, i32, i32, i32, i32, i32, i32 }
%struct._c64 = type { i64, i32, i32 }
%struct.gx_device_null_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s* }
%struct.cached_char_s = type opaque
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
%struct.psdf_set_color_commands_s = type { i8*, i8*, i8*, i8*, i8*, i8* }
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
%struct.pdf_text_data_s = type { %struct.pdf_outline_fonts_s*, %struct.pdf_bitmap_fonts_s*, %struct.pdf_text_state_s* }
%struct.pdf_outline_fonts_s = type { %struct.pdf_standard_font_s* }
%struct.pdf_standard_font_s = type { %struct.pdf_font_resource_s*, %struct.gs_matrix_s }
%struct.pdf_font_resource_s = type { %struct.pdf_font_resource_s*, %struct.pdf_resource_s*, i64, i32, i32, [24 x i8], i64, %struct.cos_object_s*, i32, i32 (%struct.gx_device_pdf_s*, %struct.pdf_font_resource_s*)*, %struct.gs_string_s, %struct.pdf_font_descriptor_s*, %struct.pdf_base_font_s*, i32, double*, i8*, %struct.pdf_resource_s*, %struct.gs_cmap_s*, i32 (%struct.gs_memory_s*, i64, i8*)*, i8*, %union.anon.1 }
%struct.cos_object_s = type { %struct.cos_object_procs_s*, i64, %struct.cos_element_s*, %struct.cos_stream_piece_s*, %struct.gx_device_pdf_s*, %struct.pdf_resource_s*, i8, i8, i8, i64, %struct.stream_s*, %struct.gs_md5_state_s, i32, [16 x i8], i32, [16 x i8] }
%struct.cos_object_procs_s = type { void (%struct.cos_object_s*, i8*)*, i32 (%struct.cos_object_s*, %struct.gx_device_pdf_s*, i64)*, i32 (%struct.cos_object_s*, %struct.cos_object_s*, %struct.gx_device_pdf_s*)*, i32 (%struct.cos_object_s*, %struct.gs_md5_state_s*, i8*, %struct.gx_device_pdf_s*)* }
%struct.cos_element_s = type opaque
%struct.cos_stream_piece_s = type opaque
%struct.gs_md5_state_s = type { [2 x i32], [4 x i32], [64 x i8] }
%struct.pdf_font_descriptor_s = type opaque
%struct.pdf_base_font_s = type { %struct.gs_font_base_s*, %struct.gs_font_base_s*, i32, i32, i32, i8*, i32, %struct.gs_string_s, i32, %struct.cos_dict_s* }
%struct.gs_font_base_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, %struct.gs_fapi_server_s*, i8*, i32, i32 }
%struct.gs_cmap_s = type opaque
%union.anon.1 = type { %struct.anon.3 }
%struct.anon.3 = type { i32, i32, i32, i32, %struct.pdf_encoding_element_s*, %struct.gs_point_s*, i32, %union.anon.4 }
%struct.pdf_encoding_element_s = type { i64, %struct.gs_const_string_s, i32 }
%union.anon.4 = type { %struct.anon.7 }
%struct.anon.7 = type { %struct.gs_rect_s, %struct.gs_matrix_s, %struct.pdf_char_proc_ownership_s*, i32, i32, %struct.cos_dict_s*, i8* }
%struct.pdf_char_proc_ownership_s = type opaque
%struct.pdf_bitmap_fonts_s = type { %struct.pdf_font_resource_s*, i32, i64, i32 }
%struct.pdf_text_state_s = type opaque
%struct.pdf_text_rotation_s = type { [5 x i64], i32 }
%struct.pdf_page_s = type { %struct.cos_dict_s*, %struct.gs_point_s, i32, i64, [7 x i64], i64, %struct.cos_array_s*, %struct.pdf_text_rotation_s, %struct.pdf_page_dsc_info_s, i32, i32 }
%struct.pdf_resource_list_s = type { [16 x %struct.pdf_resource_s*] }
%struct.pdf_outline_level_s = type { %struct.pdf_outline_node_s, %struct.pdf_outline_node_s, i32 }
%struct.pdf_outline_node_s = type { i64, i64, i64, i64, i64, i32, %struct.cos_dict_s* }
%struct.pdf_article_s = type { %struct.pdf_article_s*, %struct.cos_dict_s*, %struct.pdf_bead_s, %struct.pdf_bead_s }
%struct.pdf_bead_s = type { i64, i64, i64, i64, i64, %struct.gs_rect_s }
%struct.pdf_font_cache_elem_s = type { %struct.pdf_font_cache_elem_s*, i64, i32, i32, %struct.pdf_font_resource_s*, i8*, double*, %struct.gx_device_pdf_s* }
%struct.cos_array_s = type { %struct.cos_object_procs_s*, i64, %struct.cos_array_element_s*, %struct.cos_stream_piece_s*, %struct.gx_device_pdf_s*, %struct.pdf_resource_s*, i8, i8, i8, i64, %struct.stream_s*, %struct.gs_md5_state_s, i32, [16 x i8], i32, [16 x i8] }
%struct.cos_array_element_s = type opaque
%struct.pdf_viewer_state_s = type { i32, [4 x i64], float, float, i32, i64, i64, i64, i32, float, float, i32, i32, i32, i32, i32, i32, %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s, %struct.gx_line_params_s, float*, i32, i64 }
%struct.pdf_substream_save_s = type { i32, %struct.pdf_text_state_s*, %struct.gx_path_s*, i64, i32, %struct.stream_s*, %struct.cos_dict_s*, i32, i32, %struct.pdf_resource_s*, %struct.pdf_resource_s*, i32, i32, %struct.pdf_resource_s*, %struct.gs_const_string_s, i32 }
%struct.cos_dict_s = type { %struct.cos_object_procs_s*, i64, %struct.cos_dict_element_s*, %struct.cos_stream_piece_s*, %struct.gx_device_pdf_s*, %struct.pdf_resource_s*, i8, i8, i8, i64, %struct.stream_s*, %struct.gs_md5_state_s, i32, [16 x i8], i32, [16 x i8] }
%struct.cos_dict_element_s = type opaque
%struct.pdf_char_glyph_pairs_s = type opaque
%struct.pdf_resource_s = type { %struct.pdf_resource_s*, %struct.pdf_resource_s*, i64, i32, i32, [24 x i8], i64, %struct.cos_object_s* }
%struct.linearisation_record_s = type { i32, i32, i32*, i32, i64, i64, i64 }
%struct.cos_value_s = type { i32, %union.vc_ }
%union.vc_ = type { %struct.gs_string_s }
%struct.pdf_image_writer_s = type { [4 x %struct.psdf_binary_writer_s], i32, %struct.pdf_image_names_s*, %struct.pdf_resource_s*, i32, %struct.cos_stream_s*, i8*, %struct.cos_dict_s*, %struct.pdf_resource_s* }
%struct.psdf_binary_writer_s = type { %struct.gs_memory_s*, %struct.stream_s*, %struct.stream_s*, %struct.gx_device_psdf_s* }
%struct.gx_device_psdf_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gs_memory_s*, %struct.gx_device_vector_procs_s*, [4096 x i8], %struct._IO_FILE*, %struct.stream_s*, i8*, i32, i32, %struct.gs_imager_state_s, float*, i32, i32, i32, %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s, i64, i64, i32, i32, %struct.gs_point_s, i32, %struct.gx_device_bbox_s*, i64, i64, i32, i32, i32, i32, i32, double, %struct.psdf_distiller_params_s }
%struct.pdf_image_names_s = type { %struct.pdf_color_space_names_s, %struct.pdf_filter_names_s, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.pdf_color_space_names_s = type { i8*, i8*, i8*, i8* }
%struct.pdf_filter_names_s = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.cos_stream_s = type { %struct.cos_object_procs_s*, i64, %struct.cos_dict_element_s*, %struct.cos_stream_piece_s*, %struct.gx_device_pdf_s*, %struct.pdf_resource_s*, i8, i8, i8, i64, %struct.stream_s*, %struct.gs_md5_state_s, i32, [16 x i8], i32, [16 x i8] }
%struct.pdf_stream_position_s = type { i64, i64 }
%struct.pdf_char_proc_s = type opaque
%struct.gs_indexed_params_s = type { i32, i32, %union.anon.0, i32 }
%union.anon.0 = type { %struct.gs_const_string_s }
%struct.gs_pixel_image_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, i32, i32, i32, [130 x float], i32, i32, i32, %struct.gs_color_space_s* }

@.str = private unnamed_addr constant [3 x i8] c"q \00", align 1
@gx_dc_type_data_pure = external constant %struct.gx_device_color_type_s, align 8
@.str.1 = private unnamed_addr constant [54 x i8] c"/PatternType 1/PaintType %d/TilingType 1/Resources<<\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"/XObject<</R%ld %ld 0 R>>\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"/ProcSet[/PDF/Image%s]>>\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"/Matrix[%g 0 0 %g 0 0]\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"/BBox[0 0 1 1]/XStep 1/YStep 1/Length \00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"/R%ld Do\0A\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"%d>>stream\0A\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"%s\0Aendstream\0A\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"%sendstream\0A\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"%ld 0 R>>stream\0A\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"\0Aendstream\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"q %g 0 0 %g 0 0 cm\0A\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c" cs\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c" %g %g %g\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"/R%ld scn\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c" %g %g %g %g re f Q\0A\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"%g \00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"0 %d %d %d %d d1\0A\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"%d 0 0 %d %d %d cm\0A\00", align 1
@gs_color_space_type_Indexed = external constant %struct.gs_color_space_type_s, align 8
@.str.23 = private unnamed_addr constant [14 x i8] c"pdf_copy_mono\00", align 1
@.str.24 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@psdf_set_fill_color_commands = external constant %struct.psdf_set_color_commands_s, align 8
@psdf_set_stroke_color_commands = external constant %struct.psdf_set_color_commands_s, align 8

; Function Attrs: nounwind uwtable
define i32 @gdev_pdf_copy_mono(%struct.gx_device_s* %dev, i8* %base, i32 %sourcex, i32 %raster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h, i64 %zero, i64 %one) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %base.addr = alloca i8*, align 8
  %sourcex.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %zero.addr = alloca i64, align 8
  %one.addr = alloca i64, align 8
  %pdev = alloca %struct.gx_device_pdf_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %base, i8** %base.addr, align 8, !tbaa !1
  store i32 %sourcex, i32* %sourcex.addr, align 4, !tbaa !5
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !5
  store i64 %id, i64* %id.addr, align 8, !tbaa !7
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  store i64 %zero, i64* %zero.addr, align 8, !tbaa !7
  store i64 %one, i64* %one.addr, align 8, !tbaa !7
  %0 = bitcast %struct.gx_device_pdf_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_pdf_s*
  store %struct.gx_device_pdf_s* %2, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %3 = load i32, i32* %w.addr, align 4, !tbaa !5
  %cmp = icmp sle i32 %3, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i32, i32* %h.addr, align 4, !tbaa !5
  %cmp1 = icmp sle i32 %4, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %5 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %6 = load i8*, i8** %base.addr, align 8, !tbaa !1
  %7 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %8 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %9 = load i64, i64* %id.addr, align 8, !tbaa !7
  %10 = load i32, i32* %x.addr, align 4, !tbaa !5
  %11 = load i32, i32* %y.addr, align 4, !tbaa !5
  %12 = load i32, i32* %w.addr, align 4, !tbaa !5
  %13 = load i32, i32* %h.addr, align 4, !tbaa !5
  %14 = load i64, i64* %zero.addr, align 8, !tbaa !7
  %15 = load i64, i64* %one.addr, align 8, !tbaa !7
  %call = call i32 @pdf_copy_mono(%struct.gx_device_pdf_s* %5, i8* %6, i32 %7, i32 %8, i64 %9, i32 %10, i32 %11, i32 %12, i32 %13, i64 %14, i64 %15, %struct.gx_clip_path_s* null) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %16 = bitcast %struct.gx_device_pdf_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal i32 @pdf_copy_mono(%struct.gx_device_pdf_s* %pdev, i8* %base, i32 %sourcex, i32 %raster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h, i64 %zero, i64 %one, %struct.gx_clip_path_s* %pcpath) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %base.addr = alloca i8*, align 8
  %sourcex.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %zero.addr = alloca i64, align 8
  %one.addr = alloca i64, align 8
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %code = alloca i32, align 4
  %pcs = alloca %struct.gs_color_space_s*, align 8
  %cs_value = alloca %struct.cos_value_s, align 8
  %pcsvalue = alloca %struct.cos_value_s*, align 8
  %palette = alloca [16 x i8], align 16
  %image = alloca %struct.gs_image1_s, align 8
  %writer = alloca %struct.pdf_image_writer_s, align 8
  %ipos = alloca %struct.pdf_stream_position_s, align 8
  %pres = alloca %struct.pdf_resource_s*, align 8
  %invert = alloca i8, align 1
  %in_line = alloca i32, align 4
  %show_enum = alloca %struct.gs_show_enum_s*, align 8
  %x_offset = alloca i32, align 4
  %y_offset = alloca i32, align 4
  %width = alloca double, align 8
  %cleanup.dest.slot = alloca i32
  %pcp = alloca %struct.pdf_char_proc_s*, align 8
  %pcs_base = alloca %struct.gs_color_space_s*, align 8
  %c = alloca [2 x i64], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %ncomp = alloca i32, align 4
  %p = alloca i8*, align 8
  %nbytes = alloca i64, align 8
  %d0 = alloca float, align 4
  %imat = alloca %struct.gs_matrix_s, align 4
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store i8* %base, i8** %base.addr, align 8, !tbaa !1
  store i32 %sourcex, i32* %sourcex.addr, align 4, !tbaa !5
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !5
  store i64 %id, i64* %id.addr, align 8, !tbaa !7
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  store i64 %zero, i64* %zero.addr, align 8, !tbaa !7
  store i64 %one, i64* %one.addr, align 8, !tbaa !7
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store %struct.gs_color_space_s* null, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %2 = bitcast %struct.cos_value_s* %cs_value to i8*
  call void @llvm.lifetime.start(i64 24, i8* %2) #1
  %3 = bitcast %struct.cos_value_s** %pcsvalue to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast [16 x i8]* %palette to i8*
  call void @llvm.lifetime.start(i64 16, i8* %4) #1
  %5 = bitcast %struct.gs_image1_s* %image to i8*
  call void @llvm.lifetime.start(i64 600, i8* %5) #1
  %6 = bitcast %struct.pdf_image_writer_s* %writer to i8*
  call void @llvm.lifetime.start(i64 192, i8* %6) #1
  %7 = bitcast %struct.pdf_stream_position_s* %ipos to i8*
  call void @llvm.lifetime.start(i64 16, i8* %7) #1
  %8 = bitcast %struct.pdf_resource_s** %pres to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store %struct.pdf_resource_s* null, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %invert) #1
  store i8 0, i8* %invert, align 1, !tbaa !9
  %9 = bitcast i32* %in_line to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  store i32 0, i32* %in_line, align 4, !tbaa !5
  %10 = bitcast %struct.gs_show_enum_s** %show_enum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %pte = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %11, i32 0, i32 191
  %12 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte, align 8, !tbaa !10
  %13 = bitcast %struct.gs_text_enum_s* %12 to %struct.gs_show_enum_s*
  store %struct.gs_show_enum_s* %13, %struct.gs_show_enum_s** %show_enum, align 8, !tbaa !1
  %14 = bitcast i32* %x_offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast i32* %y_offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = bitcast double* %width to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %18 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call = call i32 @pdf_must_put_clip_path(%struct.gx_device_pdf_s* %17, %struct.gx_clip_path_s* %18) #4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %19 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call1 = call i32 @pdf_open_page(%struct.gx_device_pdf_s* %19, i32 1) #4
  store i32 %call1, i32* %code, align 4, !tbaa !5
  %20 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %20, 0
  br i1 %cmp, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %21 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.240

if.end:                                           ; preds = %if.then
  %22 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %23 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call3 = call i32 @pdf_put_clip_path(%struct.gx_device_pdf_s* %22, %struct.gx_clip_path_s* %23) #4
  store i32 %call3, i32* %code, align 4, !tbaa !5
  %24 = load i32, i32* %code, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %24, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %25 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.240

if.end.6:                                         ; preds = %if.end
  br label %if.end.7

if.end.7:                                         ; preds = %if.end.6, %entry
  %26 = load i64, i64* %zero.addr, align 8, !tbaa !7
  %cmp8 = icmp eq i64 %26, -1
  br i1 %cmp8, label %if.then.9, label %if.else.76

if.then.9:                                        ; preds = %if.end.7
  %27 = load i64, i64* %one.addr, align 8, !tbaa !7
  %cmp10 = icmp eq i64 %27, -1
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.then.9
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.240

if.end.12:                                        ; preds = %if.then.9
  %28 = load i64, i64* %id.addr, align 8, !tbaa !7
  %cmp13 = icmp ne i64 %28, 0
  br i1 %cmp13, label %land.lhs.true, label %if.end.75

land.lhs.true:                                    ; preds = %if.end.12
  %29 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %cmp14 = icmp eq i32 %29, 0
  br i1 %cmp14, label %land.lhs.true.15, label %if.end.75

land.lhs.true.15:                                 ; preds = %land.lhs.true
  %30 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %show_enum, align 8, !tbaa !1
  %tobool16 = icmp ne %struct.gs_show_enum_s* %30, null
  br i1 %tobool16, label %if.then.17, label %if.end.75

if.then.17:                                       ; preds = %land.lhs.true.15
  %31 = bitcast %struct.pdf_char_proc_s** %pcp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %31) #1
  %32 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %show_enum, align 8, !tbaa !1
  %use_wxy_float = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %32, i32 0, i32 45
  %33 = load i32, i32* %use_wxy_float, align 4, !tbaa !52
  %tobool18 = icmp ne i32 %33, 0
  br i1 %tobool18, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %if.then.17
  %34 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %show_enum, align 8, !tbaa !1
  %wxy_float = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %34, i32 0, i32 44
  %x20 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %wxy_float, i32 0, i32 0
  %35 = load double, double* %x20, align 8, !tbaa !59
  %36 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %char_width = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %36, i32 0, i32 186
  %x21 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %char_width, i32 0, i32 0
  store double %35, double* %x21, align 8, !tbaa !60
  br label %if.end.25

if.else:                                          ; preds = %if.then.17
  %37 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %show_enum, align 8, !tbaa !1
  %wxy = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %37, i32 0, i32 43
  %x22 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %wxy, i32 0, i32 0
  %38 = load i32, i32* %x22, align 4, !tbaa !61
  %conv = sitofp i32 %38 to double
  %mul = fmul double %conv, 3.906250e-03
  %39 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %char_width23 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %39, i32 0, i32 186
  %x24 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %char_width23, i32 0, i32 0
  store double %mul, double* %x24, align 8, !tbaa !60
  br label %if.end.25

if.end.25:                                        ; preds = %if.else, %if.then.19
  %40 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %41 = load i64, i64* %id.addr, align 8, !tbaa !7
  %call26 = call %struct.pdf_resource_s* @pdf_find_resource_by_gs_id(%struct.gx_device_pdf_s* %40, i32 7, i64 %41) #4
  store %struct.pdf_resource_s* %call26, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %42 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %cmp27 = icmp eq %struct.pdf_resource_s* %42, null
  br i1 %cmp27, label %if.then.29, label %if.else.63

if.then.29:                                       ; preds = %if.end.25
  call void @gs_image_t_init_mask_adjust(%struct.gs_image1_s* %image, i32 0, i32 1) #4
  store i8 -1, i8* %invert, align 1, !tbaa !9
  %43 = load i32, i32* %x.addr, align 4, !tbaa !5
  %44 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %show_enum, align 8, !tbaa !1
  %pis = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %44, i32 0, i32 3
  %45 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !62
  %current_point = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %45, i32 0, i32 7
  %x30 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %current_point, i32 0, i32 0
  %46 = load double, double* %x30, align 8, !tbaa !63
  %conv31 = fptosi double %46 to i32
  %sub = sub nsw i32 %43, %conv31
  store i32 %sub, i32* %x_offset, align 4, !tbaa !5
  %47 = load i32, i32* %y.addr, align 4, !tbaa !5
  %48 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %show_enum, align 8, !tbaa !1
  %pis32 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %48, i32 0, i32 3
  %49 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis32, align 8, !tbaa !62
  %current_point33 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %49, i32 0, i32 7
  %y34 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %current_point33, i32 0, i32 1
  %50 = load double, double* %y34, align 8, !tbaa !64
  %conv35 = fptosi double %50 to i32
  %sub36 = sub nsw i32 %47, %conv35
  store i32 %sub36, i32* %y_offset, align 4, !tbaa !5
  %51 = load i32, i32* %x_offset, align 4, !tbaa !5
  %52 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub37 = sub nsw i32 %52, %51
  store i32 %sub37, i32* %x.addr, align 4, !tbaa !5
  %53 = load i32, i32* %y_offset, align 4, !tbaa !5
  %54 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub38 = sub nsw i32 %54, %53
  store i32 %sub38, i32* %y.addr, align 4, !tbaa !5
  %55 = load i32, i32* %h.addr, align 4, !tbaa !5
  %56 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub39 = sub nsw i32 %56, %55
  store i32 %sub39, i32* %y.addr, align 4, !tbaa !5
  %57 = load i32, i32* %x.addr, align 4, !tbaa !5
  %58 = load i32, i32* %y.addr, align 4, !tbaa !5
  %59 = load i32, i32* %w.addr, align 4, !tbaa !5
  %60 = load i32, i32* %h.addr, align 4, !tbaa !5
  call void @pdf_make_bitmap_image(%struct.gs_image1_s* %image, i32 %57, i32 %58, i32 %59, i32 %60) #4
  %61 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %62 = load i32, i32* %w.addr, align 4, !tbaa !5
  %63 = load i32, i32* %h.addr, align 4, !tbaa !5
  %64 = load i32, i32* %y_offset, align 4, !tbaa !5
  %65 = load i32, i32* %x_offset, align 4, !tbaa !5
  %66 = load i64, i64* %id.addr, align 8, !tbaa !7
  %call40 = call i32 @pdf_begin_char_proc(%struct.gx_device_pdf_s* %61, i32 %62, i32 %63, i32 0, i32 %64, i32 %65, i64 %66, %struct.pdf_char_proc_s** %pcp, %struct.pdf_stream_position_s* %ipos) #4
  store i32 %call40, i32* %code, align 4, !tbaa !5
  %67 = load i32, i32* %code, align 4, !tbaa !5
  %cmp41 = icmp slt i32 %67, 0
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.then.29
  %68 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %68, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.44:                                        ; preds = %if.then.29
  %69 = load i32, i32* %y_offset, align 4, !tbaa !5
  %sub45 = sub nsw i32 0, %69
  store i32 %sub45, i32* %y_offset, align 4, !tbaa !5
  %70 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %char_width46 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %70, i32 0, i32 186
  %x47 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %char_width46, i32 0, i32 0
  %71 = load double, double* %x47, align 8, !tbaa !60
  %call48 = call double @psdf_round(double %71, i32 100, i32 10) #4
  store double %call48, double* %width, align 8, !tbaa !65
  %72 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %72, i32 0, i32 47
  %73 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !66
  %74 = load double, double* %width, align 8, !tbaa !65
  %call49 = call i8* @pprintg1(%struct.stream_s* %73, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), double %74) #4
  %75 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm50 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %75, i32 0, i32 47
  %76 = load %struct.stream_s*, %struct.stream_s** %strm50, align 8, !tbaa !66
  %77 = load i32, i32* %x_offset, align 4, !tbaa !5
  %78 = load i32, i32* %h.addr, align 4, !tbaa !5
  %sub51 = sub nsw i32 0, %78
  %79 = load i32, i32* %y_offset, align 4, !tbaa !5
  %add = add nsw i32 %sub51, %79
  %80 = load i32, i32* %w.addr, align 4, !tbaa !5
  %81 = load i32, i32* %x_offset, align 4, !tbaa !5
  %add52 = add nsw i32 %80, %81
  %82 = load i32, i32* %y_offset, align 4, !tbaa !5
  %call53 = call i8* @pprintd4(%struct.stream_s* %76, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i32 0, i32 0), i32 %77, i32 %add, i32 %add52, i32 %82) #4
  %83 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm54 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %83, i32 0, i32 47
  %84 = load %struct.stream_s*, %struct.stream_s** %strm54, align 8, !tbaa !66
  %85 = load i32, i32* %w.addr, align 4, !tbaa !5
  %86 = load i32, i32* %h.addr, align 4, !tbaa !5
  %87 = load i32, i32* %x_offset, align 4, !tbaa !5
  %88 = load i32, i32* %h.addr, align 4, !tbaa !5
  %sub55 = sub nsw i32 0, %88
  %89 = load i32, i32* %y_offset, align 4, !tbaa !5
  %add56 = add nsw i32 %sub55, %89
  %call57 = call i8* @pprintd4(%struct.stream_s* %84, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i32 0, i32 0), i32 %85, i32 %86, i32 %87, i32 %add56) #4
  call void @pdf_image_writer_init(%struct.pdf_image_writer_s* %writer) #4
  %90 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %91 = load i32, i32* %w.addr, align 4, !tbaa !5
  %92 = load i32, i32* %h.addr, align 4, !tbaa !5
  %call58 = call i32 @pdf_begin_write_image(%struct.gx_device_pdf_s* %90, %struct.pdf_image_writer_s* %writer, i64 0, i32 %91, i32 %92, %struct.cos_dict_s* null, i32 1) #4
  store i32 %call58, i32* %code, align 4, !tbaa !5
  %93 = load i32, i32* %code, align 4, !tbaa !5
  %cmp59 = icmp slt i32 %93, 0
  br i1 %cmp59, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %if.end.44
  %94 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %94, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.62:                                        ; preds = %if.end.44
  %95 = load %struct.pdf_char_proc_s*, %struct.pdf_char_proc_s** %pcp, align 8, !tbaa !1
  %96 = bitcast %struct.pdf_char_proc_s* %95 to %struct.pdf_resource_s*
  store %struct.pdf_resource_s* %96, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.else.63:                                       ; preds = %if.end.25
  %97 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %pte64 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %97, i32 0, i32 191
  %98 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte64, align 8, !tbaa !10
  %tobool65 = icmp ne %struct.gs_text_enum_s* %98, null
  br i1 %tobool65, label %if.then.66, label %if.else.67

if.then.66:                                       ; preds = %if.else.63
  br label %if.end.68

if.else.67:                                       ; preds = %if.else.63
  %99 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %100 = load i64, i64* %one.addr, align 8, !tbaa !7
  call void @set_image_color(%struct.gx_device_pdf_s* %99, i64 %100) #4
  br label %if.end.68

if.end.68:                                        ; preds = %if.else.67, %if.then.66
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68
  %101 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %102 = bitcast %struct.pdf_resource_s* %101 to %struct.pdf_char_proc_s*
  store %struct.pdf_char_proc_s* %102, %struct.pdf_char_proc_s** %pcp, align 8, !tbaa !1
  %103 = load %struct.pdf_char_proc_s*, %struct.pdf_char_proc_s** %pcp, align 8, !tbaa !1
  %call70 = call i32 @pdf_charproc_x_offset(%struct.pdf_char_proc_s* %103) #4
  %104 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub71 = sub nsw i32 %104, %call70
  store i32 %sub71, i32* %x.addr, align 4, !tbaa !5
  %105 = load %struct.pdf_char_proc_s*, %struct.pdf_char_proc_s** %pcp, align 8, !tbaa !1
  %call72 = call i32 @pdf_charproc_y_offset(%struct.pdf_char_proc_s* %105) #4
  %106 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub73 = sub nsw i32 %106, %call72
  store i32 %sub73, i32* %y.addr, align 4, !tbaa !5
  %107 = load i32, i32* %h.addr, align 4, !tbaa !5
  %108 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub74 = sub nsw i32 %108, %107
  store i32 %sub74, i32* %y.addr, align 4, !tbaa !5
  %109 = load i32, i32* %x.addr, align 4, !tbaa !5
  %110 = load i32, i32* %y.addr, align 4, !tbaa !5
  %111 = load i32, i32* %w.addr, align 4, !tbaa !5
  %112 = load i32, i32* %h.addr, align 4, !tbaa !5
  call void @pdf_make_bitmap_image(%struct.gs_image1_s* %image, i32 %109, i32 %110, i32 %111, i32 %112) #4
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.69, %if.end.62, %if.then.61, %if.then.43
  %113 = bitcast %struct.pdf_char_proc_s** %pcp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %113) #1
  %cleanup.dest173 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest173, label %cleanup.240 [
    i32 2, label %wr
    i32 3, label %rx
  ]

if.end.75:                                        ; preds = %land.lhs.true.15, %land.lhs.true, %if.end.12
  %114 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %115 = load i64, i64* %one.addr, align 8, !tbaa !7
  call void @set_image_color(%struct.gx_device_pdf_s* %114, i64 %115) #4
  call void @gs_image_t_init_mask_adjust(%struct.gs_image1_s* %image, i32 0, i32 1) #4
  store i8 -1, i8* %invert, align 1, !tbaa !9
  br label %if.end.149

if.else.76:                                       ; preds = %if.end.7
  %116 = load i64, i64* %one.addr, align 8, !tbaa !7
  %cmp77 = icmp eq i64 %116, -1
  br i1 %cmp77, label %if.then.79, label %if.else.80

if.then.79:                                       ; preds = %if.else.76
  call void @gs_image_t_init_mask_adjust(%struct.gs_image1_s* %image, i32 0, i32 1) #4
  %117 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %118 = load i64, i64* %zero.addr, align 8, !tbaa !7
  call void @set_image_color(%struct.gx_device_pdf_s* %117, i64 %118) #4
  br label %if.end.148

if.else.80:                                       ; preds = %if.else.76
  %119 = load i64, i64* %zero.addr, align 8, !tbaa !7
  %120 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %black = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %120, i32 0, i32 65
  %121 = load i64, i64* %black, align 8, !tbaa !67
  %cmp81 = icmp eq i64 %119, %121
  br i1 %cmp81, label %land.lhs.true.83, label %if.else.88

land.lhs.true.83:                                 ; preds = %if.else.80
  %122 = load i64, i64* %one.addr, align 8, !tbaa !7
  %123 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %white = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %123, i32 0, i32 66
  %124 = load i64, i64* %white, align 8, !tbaa !68
  %cmp84 = icmp eq i64 %122, %124
  br i1 %cmp84, label %if.then.86, label %if.else.88

if.then.86:                                       ; preds = %land.lhs.true.83
  %125 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %125, i32 0, i32 3
  %126 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !69
  %call87 = call %struct.gs_color_space_s* @gs_cspace_new_DeviceGray(%struct.gs_memory_s* %126) #4
  store %struct.gs_color_space_s* %call87, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %127 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  call void @gs_image_t_init_adjust(%struct.gs_image1_s* %image, %struct.gs_color_space_s* %127, i32 1) #4
  br label %if.end.147

if.else.88:                                       ; preds = %land.lhs.true.83, %if.else.80
  %128 = load i64, i64* %zero.addr, align 8, !tbaa !7
  %129 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %white89 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %129, i32 0, i32 66
  %130 = load i64, i64* %white89, align 8, !tbaa !68
  %cmp90 = icmp eq i64 %128, %130
  br i1 %cmp90, label %land.lhs.true.92, label %if.else.99

land.lhs.true.92:                                 ; preds = %if.else.88
  %131 = load i64, i64* %one.addr, align 8, !tbaa !7
  %132 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %black93 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %132, i32 0, i32 65
  %133 = load i64, i64* %black93, align 8, !tbaa !67
  %cmp94 = icmp eq i64 %131, %133
  br i1 %cmp94, label %if.then.96, label %if.else.99

if.then.96:                                       ; preds = %land.lhs.true.92
  %134 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory97 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %134, i32 0, i32 3
  %135 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory97, align 8, !tbaa !69
  %call98 = call %struct.gs_color_space_s* @gs_cspace_new_DeviceGray(%struct.gs_memory_s* %135) #4
  store %struct.gs_color_space_s* %call98, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %136 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  call void @gs_image_t_init_adjust(%struct.gs_image1_s* %image, %struct.gs_color_space_s* %136, i32 1) #4
  store i8 -1, i8* %invert, align 1, !tbaa !9
  br label %if.end.146

if.else.99:                                       ; preds = %land.lhs.true.92, %if.else.88
  %137 = bitcast %struct.gs_color_space_s** %pcs_base to i8*
  call void @llvm.lifetime.start(i64 8, i8* %137) #1
  %138 = bitcast [2 x i64]* %c to i8*
  call void @llvm.lifetime.start(i64 16, i8* %138) #1
  %139 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %139) #1
  %140 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %140) #1
  %141 = bitcast i32* %ncomp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %141) #1
  %142 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %142, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %143 = load i32, i32* %num_components, align 4, !tbaa !70
  store i32 %143, i32* %ncomp, align 4, !tbaa !5
  %144 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %144) #1
  %145 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory100 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %145, i32 0, i32 3
  %146 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory100, align 8, !tbaa !69
  %147 = load i32, i32* %ncomp, align 4, !tbaa !5
  %call101 = call i32 @pdf_cspace_init_Device(%struct.gs_memory_s* %146, %struct.gs_color_space_s** %pcs_base, i32 %147) #4
  store i32 %call101, i32* %code, align 4, !tbaa !5
  %148 = load i32, i32* %code, align 4, !tbaa !5
  %cmp102 = icmp slt i32 %148, 0
  br i1 %cmp102, label %if.then.104, label %if.end.105

if.then.104:                                      ; preds = %if.else.99
  %149 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %149, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.140

if.end.105:                                       ; preds = %if.else.99
  %150 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %151 = bitcast %struct.gx_device_pdf_s* %150 to %struct.gx_device_vector_s*
  %152 = load i64, i64* %zero.addr, align 8, !tbaa !7
  %call106 = call i64 @psdf_adjust_color_index(%struct.gx_device_vector_s* %151, i64 %152) #4
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %c, i32 0, i64 0
  store i64 %call106, i64* %arrayidx, align 8, !tbaa !7
  %153 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %154 = bitcast %struct.gx_device_pdf_s* %153 to %struct.gx_device_vector_s*
  %155 = load i64, i64* %one.addr, align 8, !tbaa !7
  %call107 = call i64 @psdf_adjust_color_index(%struct.gx_device_vector_s* %154, i64 %155) #4
  %arrayidx108 = getelementptr inbounds [2 x i64], [2 x i64]* %c, i32 0, i64 1
  store i64 %call107, i64* %arrayidx108, align 8, !tbaa !7
  %156 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory109 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %156, i32 0, i32 3
  %157 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory109, align 8, !tbaa !69
  %call110 = call %struct.gs_color_space_s* @gs_cspace_alloc(%struct.gs_memory_s* %157, %struct.gs_color_space_type_s* @gs_color_space_type_Indexed) #4
  store %struct.gs_color_space_s* %call110, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %158 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %cmp111 = icmp eq %struct.gs_color_space_s* %158, null
  br i1 %cmp111, label %if.then.113, label %if.end.114

if.then.113:                                      ; preds = %if.end.105
  %159 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_base, align 8, !tbaa !1
  call void @rc_decrement_cs(%struct.gs_color_space_s* %159, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i32 0, i32 0)) #4
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.140

if.end.114:                                       ; preds = %if.end.105
  %160 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_base, align 8, !tbaa !1
  %161 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %base_space = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %161, i32 0, i32 3
  store %struct.gs_color_space_s* %160, %struct.gs_color_space_s** %base_space, align 8, !tbaa !71
  %162 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %162, i32 0, i32 7
  %indexed = bitcast %union.anon* %params to %struct.gs_indexed_params_s*
  %hival = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %indexed, i32 0, i32 0
  store i32 1, i32* %hival, align 4, !tbaa !73
  %163 = load i32, i32* %ncomp, align 4, !tbaa !5
  %164 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %params115 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %164, i32 0, i32 7
  %indexed116 = bitcast %union.anon* %params115 to %struct.gs_indexed_params_s*
  %n_comps = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %indexed116, i32 0, i32 1
  store i32 %163, i32* %n_comps, align 4, !tbaa !75
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %palette, i32 0, i32 0
  store i8* %arraydecay, i8** %p, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.127, %if.end.114
  %165 = load i32, i32* %i, align 4, !tbaa !5
  %cmp117 = icmp slt i32 %165, 2
  br i1 %cmp117, label %for.body, label %for.end.128

for.body:                                         ; preds = %for.cond
  %166 = load i32, i32* %ncomp, align 4, !tbaa !5
  %sub119 = sub nsw i32 %166, 1
  store i32 %sub119, i32* %j, align 4, !tbaa !5
  br label %for.cond.120

for.cond.120:                                     ; preds = %for.inc, %for.body
  %167 = load i32, i32* %j, align 4, !tbaa !5
  %cmp121 = icmp sge i32 %167, 0
  br i1 %cmp121, label %for.body.123, label %for.end

for.body.123:                                     ; preds = %for.cond.120
  %168 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %168 to i64
  %arrayidx124 = getelementptr inbounds [2 x i64], [2 x i64]* %c, i32 0, i64 %idxprom
  %169 = load i64, i64* %arrayidx124, align 8, !tbaa !7
  %170 = load i32, i32* %j, align 4, !tbaa !5
  %mul125 = mul nsw i32 %170, 8
  %sh_prom = zext i32 %mul125 to i64
  %shr = lshr i64 %169, %sh_prom
  %conv126 = trunc i64 %shr to i8
  %171 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %171, i32 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !1
  store i8 %conv126, i8* %171, align 1, !tbaa !9
  br label %for.inc

for.inc:                                          ; preds = %for.body.123
  %172 = load i32, i32* %j, align 4, !tbaa !5
  %dec = add nsw i32 %172, -1
  store i32 %dec, i32* %j, align 4, !tbaa !5
  br label %for.cond.120

for.end:                                          ; preds = %for.cond.120
  br label %for.inc.127

for.inc.127:                                      ; preds = %for.end
  %173 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %173, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end.128:                                      ; preds = %for.cond
  %arraydecay129 = getelementptr inbounds [16 x i8], [16 x i8]* %palette, i32 0, i32 0
  %174 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %params130 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %174, i32 0, i32 7
  %indexed131 = bitcast %union.anon* %params130 to %struct.gs_indexed_params_s*
  %lookup = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %indexed131, i32 0, i32 2
  %table = bitcast %union.anon.0* %lookup to %struct.gs_const_string_s*
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %table, i32 0, i32 0
  store i8* %arraydecay129, i8** %data, align 8, !tbaa !76
  %175 = load i8*, i8** %p, align 8, !tbaa !1
  %arraydecay132 = getelementptr inbounds [16 x i8], [16 x i8]* %palette, i32 0, i32 0
  %sub.ptr.lhs.cast = ptrtoint i8* %175 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %arraydecay132 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv133 = trunc i64 %sub.ptr.sub to i32
  %176 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %params134 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %176, i32 0, i32 7
  %indexed135 = bitcast %union.anon* %params134 to %struct.gs_indexed_params_s*
  %lookup136 = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %indexed135, i32 0, i32 2
  %table137 = bitcast %union.anon.0* %lookup136 to %struct.gs_const_string_s*
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %table137, i32 0, i32 1
  store i32 %conv133, i32* %size, align 4, !tbaa !77
  %177 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %params138 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %177, i32 0, i32 7
  %indexed139 = bitcast %union.anon* %params138 to %struct.gs_indexed_params_s*
  %use_proc = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %indexed139, i32 0, i32 3
  store i32 0, i32* %use_proc, align 4, !tbaa !78
  %178 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  call void @gs_image_t_init_adjust(%struct.gs_image1_s* %image, %struct.gs_color_space_s* %178, i32 1) #4
  %BitsPerComponent = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %image, i32 0, i32 4
  store i32 1, i32* %BitsPerComponent, align 4, !tbaa !79
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.140

cleanup.140:                                      ; preds = %for.end.128, %if.then.113, %if.then.104
  %179 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %179) #1
  %180 = bitcast i32* %ncomp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %180) #1
  %181 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %181) #1
  %182 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %182) #1
  %183 = bitcast [2 x i64]* %c to i8*
  call void @llvm.lifetime.end(i64 16, i8* %183) #1
  %184 = bitcast %struct.gs_color_space_s** %pcs_base to i8*
  call void @llvm.lifetime.end(i64 8, i8* %184) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.240 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup.140
  br label %if.end.146

if.end.146:                                       ; preds = %cleanup.cont, %if.then.96
  br label %if.end.147

if.end.147:                                       ; preds = %if.end.146, %if.then.86
  br label %if.end.148

if.end.148:                                       ; preds = %if.end.147, %if.then.79
  br label %if.end.149

if.end.149:                                       ; preds = %if.end.148, %if.end.75
  %185 = load i32, i32* %x.addr, align 4, !tbaa !5
  %186 = load i32, i32* %y.addr, align 4, !tbaa !5
  %187 = load i32, i32* %w.addr, align 4, !tbaa !5
  %188 = load i32, i32* %h.addr, align 4, !tbaa !5
  call void @pdf_make_bitmap_image(%struct.gs_image1_s* %image, i32 %185, i32 %186, i32 %187, i32 %188) #4
  %189 = bitcast i64* %nbytes to i8*
  call void @llvm.lifetime.start(i64 8, i8* %189) #1
  %190 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add150 = add nsw i32 %190, 7
  %shr151 = ashr i32 %add150, 3
  %conv152 = sext i32 %shr151 to i64
  %191 = load i32, i32* %h.addr, align 4, !tbaa !5
  %conv153 = sext i32 %191 to i64
  %mul154 = mul i64 %conv152, %conv153
  store i64 %mul154, i64* %nbytes, align 8, !tbaa !7
  %192 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call155 = call i32 @pdf_open_page(%struct.gx_device_pdf_s* %192, i32 1) #4
  store i32 %call155, i32* %code, align 4, !tbaa !5
  %193 = load i32, i32* %code, align 4, !tbaa !5
  %cmp156 = icmp slt i32 %193, 0
  br i1 %cmp156, label %if.then.158, label %if.end.159

if.then.158:                                      ; preds = %if.end.149
  %194 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %194, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.170

if.end.159:                                       ; preds = %if.end.149
  %195 = load i64, i64* %nbytes, align 8, !tbaa !7
  %196 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %MaxInlineImageSize = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %196, i32 0, i32 113
  %197 = load i64, i64* %MaxInlineImageSize, align 8, !tbaa !81
  %cmp160 = icmp ult i64 %195, %197
  %conv161 = zext i1 %cmp160 to i32
  store i32 %conv161, i32* %in_line, align 4, !tbaa !5
  %198 = load i32, i32* %in_line, align 4, !tbaa !5
  %tobool162 = icmp ne i32 %198, 0
  br i1 %tobool162, label %if.then.163, label %if.end.164

if.then.163:                                      ; preds = %if.end.159
  %199 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %ImageMatrix = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %image, i32 0, i32 1
  call void @pdf_put_image_matrix(%struct.gx_device_pdf_s* %199, %struct.gs_matrix_s* %ImageMatrix, double 1.000000e+00) #4
  br label %if.end.164

if.end.164:                                       ; preds = %if.then.163, %if.end.159
  call void @pdf_image_writer_init(%struct.pdf_image_writer_s* %writer) #4
  %200 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %201 = load i32, i32* %w.addr, align 4, !tbaa !5
  %202 = load i32, i32* %h.addr, align 4, !tbaa !5
  %203 = load i32, i32* %in_line, align 4, !tbaa !5
  %call165 = call i32 @pdf_begin_write_image(%struct.gx_device_pdf_s* %200, %struct.pdf_image_writer_s* %writer, i64 0, i32 %201, i32 %202, %struct.cos_dict_s* null, i32 %203) #4
  store i32 %call165, i32* %code, align 4, !tbaa !5
  %204 = load i32, i32* %code, align 4, !tbaa !5
  %cmp166 = icmp slt i32 %204, 0
  br i1 %cmp166, label %if.then.168, label %if.end.169

if.then.168:                                      ; preds = %if.end.164
  %205 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %205, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.170

if.end.169:                                       ; preds = %if.end.164
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.170

cleanup.170:                                      ; preds = %if.end.169, %if.then.168, %if.then.158
  %206 = bitcast i64* %nbytes to i8*
  call void @llvm.lifetime.end(i64 8, i8* %206) #1
  %cleanup.dest.171 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.171, label %cleanup.240 [
    i32 0, label %cleanup.cont.172
  ]

cleanup.cont.172:                                 ; preds = %cleanup.170
  br label %wr

wr:                                               ; preds = %cleanup.cont.172, %cleanup
  %ImageMask = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %image, i32 0, i32 10
  %207 = load i32, i32* %ImageMask, align 4, !tbaa !82
  %tobool174 = icmp ne i32 %207, 0
  br i1 %tobool174, label %if.then.175, label %if.else.176

if.then.175:                                      ; preds = %wr
  store %struct.cos_value_s* null, %struct.cos_value_s** %pcsvalue, align 8, !tbaa !1
  br label %if.end.182

if.else.176:                                      ; preds = %wr
  %208 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %209 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %pin = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %writer, i32 0, i32 2
  %210 = load %struct.pdf_image_names_s*, %struct.pdf_image_names_s** %pin, align 8, !tbaa !83
  %color_spaces = getelementptr inbounds %struct.pdf_image_names_s, %struct.pdf_image_names_s* %210, i32 0, i32 0
  %211 = load i32, i32* %in_line, align 4, !tbaa !5
  %call177 = call i32 @pdf_color_space_named(%struct.gx_device_pdf_s* %208, %struct.cos_value_s* %cs_value, %struct.gs_range_s** null, %struct.gs_color_space_s* %209, %struct.pdf_color_space_names_s* %color_spaces, i32 %211, i8* null, i32 0, i32 0) #4
  store i32 %call177, i32* %code, align 4, !tbaa !5
  %212 = load i32, i32* %code, align 4, !tbaa !5
  %cmp178 = icmp slt i32 %212, 0
  br i1 %cmp178, label %if.then.180, label %if.end.181

if.then.180:                                      ; preds = %if.else.176
  %213 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %213, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.240

if.end.181:                                       ; preds = %if.else.176
  store %struct.cos_value_s* %cs_value, %struct.cos_value_s** %pcsvalue, align 8, !tbaa !1
  br label %if.end.182

if.end.182:                                       ; preds = %if.end.181, %if.then.175
  %214 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %tobool183 = icmp ne %struct.pdf_resource_s* %214, null
  br i1 %tobool183, label %if.then.184, label %if.else.199

if.then.184:                                      ; preds = %if.end.182
  %215 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %NoT3CCITT = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %215, i32 0, i32 247
  %216 = load i32, i32* %NoT3CCITT, align 4, !tbaa !85
  %tobool185 = icmp ne i32 %216, 0
  br i1 %tobool185, label %if.end.198, label %if.then.186

if.then.186:                                      ; preds = %if.then.184
  %217 = bitcast float* %d0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %217) #1
  %Decode = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %image, i32 0, i32 5
  %arrayidx187 = getelementptr inbounds [130 x float], [130 x float]* %Decode, i32 0, i64 0
  %218 = load float, float* %arrayidx187, align 4, !tbaa !86
  store float %218, float* %d0, align 4, !tbaa !86
  %Decode188 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %image, i32 0, i32 5
  %arrayidx189 = getelementptr inbounds [130 x float], [130 x float]* %Decode188, i32 0, i64 1
  %219 = load float, float* %arrayidx189, align 4, !tbaa !86
  %Decode190 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %image, i32 0, i32 5
  %arrayidx191 = getelementptr inbounds [130 x float], [130 x float]* %Decode190, i32 0, i64 0
  store float %219, float* %arrayidx191, align 4, !tbaa !86
  %220 = load float, float* %d0, align 4, !tbaa !86
  %Decode192 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %image, i32 0, i32 5
  %arrayidx193 = getelementptr inbounds [130 x float], [130 x float]* %Decode192, i32 0, i64 1
  store float %220, float* %arrayidx193, align 4, !tbaa !86
  %binary = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %writer, i32 0, i32 0
  %arrayidx194 = getelementptr inbounds [4 x %struct.psdf_binary_writer_s], [4 x %struct.psdf_binary_writer_s]* %binary, i32 0, i64 0
  %Width = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %image, i32 0, i32 2
  %221 = load i32, i32* %Width, align 4, !tbaa !87
  %Height = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %image, i32 0, i32 3
  %222 = load i32, i32* %Height, align 4, !tbaa !88
  %call195 = call i32 @psdf_CFE_binary(%struct.psdf_binary_writer_s* %arrayidx194, i32 %221, i32 %222, i32 1) #4
  %223 = load i8, i8* %invert, align 1, !tbaa !9
  %conv196 = zext i8 %223 to i32
  %xor = xor i32 %conv196, 255
  %conv197 = trunc i32 %xor to i8
  store i8 %conv197, i8* %invert, align 1, !tbaa !9
  %224 = bitcast float* %d0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %224) #1
  br label %if.end.198

if.end.198:                                       ; preds = %if.then.186, %if.then.184
  br label %if.end.203

if.else.199:                                      ; preds = %if.end.182
  %225 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %CompatibilityLevel = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %225, i32 0, i32 75
  %226 = load double, double* %CompatibilityLevel, align 8, !tbaa !89
  %227 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %ParamCompatibilityLevel = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %227, i32 0, i32 72
  store double %226, double* %ParamCompatibilityLevel, align 8, !tbaa !90
  %228 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %229 = bitcast %struct.gx_device_pdf_s* %228 to %struct.gx_device_psdf_s*
  %binary200 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %writer, i32 0, i32 0
  %arrayidx201 = getelementptr inbounds [4 x %struct.psdf_binary_writer_s], [4 x %struct.psdf_binary_writer_s]* %binary200, i32 0, i64 0
  %230 = bitcast %struct.gs_image1_s* %image to %struct.gs_pixel_image_s*
  %231 = load i32, i32* %in_line, align 4, !tbaa !5
  %call202 = call i32 @psdf_setup_image_filters(%struct.gx_device_psdf_s* %229, %struct.psdf_binary_writer_s* %arrayidx201, %struct.gs_pixel_image_s* %230, %struct.gs_matrix_s* null, %struct.gs_imager_state_s* null, i32 1, i32 %231) #4
  br label %if.end.203

if.end.203:                                       ; preds = %if.else.199, %if.end.198
  %232 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %233 = bitcast %struct.gs_image1_s* %image to %struct.gs_pixel_image_s*
  %234 = load %struct.cos_value_s*, %struct.cos_value_s** %pcsvalue, align 8, !tbaa !1
  %call204 = call i32 @pdf_begin_image_data(%struct.gx_device_pdf_s* %232, %struct.pdf_image_writer_s* %writer, %struct.gs_pixel_image_s* %233, %struct.cos_value_s* %234, i32 0) #4
  %binary205 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %writer, i32 0, i32 0
  %arrayidx206 = getelementptr inbounds [4 x %struct.psdf_binary_writer_s], [4 x %struct.psdf_binary_writer_s]* %binary205, i32 0, i64 0
  %strm207 = getelementptr inbounds %struct.psdf_binary_writer_s, %struct.psdf_binary_writer_s* %arrayidx206, i32 0, i32 2
  %235 = load %struct.stream_s*, %struct.stream_s** %strm207, align 8, !tbaa !91
  %236 = load i8*, i8** %base.addr, align 8, !tbaa !1
  %237 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %238 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %239 = load i32, i32* %w.addr, align 4, !tbaa !5
  %240 = load i32, i32* %h.addr, align 4, !tbaa !5
  %241 = load i8, i8* %invert, align 1, !tbaa !9
  %call208 = call i32 @pdf_copy_mask_bits(%struct.stream_s* %235, i8* %236, i32 %237, i32 %238, i32 %239, i32 %240, i8 zeroext %241) #4
  store i32 %call208, i32* %code, align 4, !tbaa !5
  %242 = load i32, i32* %code, align 4, !tbaa !5
  %cmp209 = icmp slt i32 %242, 0
  br i1 %cmp209, label %if.then.211, label %if.end.212

if.then.211:                                      ; preds = %if.end.203
  %243 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %243, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.240

if.end.212:                                       ; preds = %if.end.203
  %244 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %writer, i32 0, i32 4
  %245 = load i32, i32* %height, align 4, !tbaa !93
  %call213 = call i32 @pdf_end_image_binary(%struct.gx_device_pdf_s* %244, %struct.pdf_image_writer_s* %writer, i32 %245) #4
  %246 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %tobool214 = icmp ne %struct.pdf_resource_s* %246, null
  br i1 %tobool214, label %if.end.221, label %if.then.215

if.then.215:                                      ; preds = %if.end.212
  %247 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call216 = call i32 @pdf_end_write_image(%struct.gx_device_pdf_s* %247, %struct.pdf_image_writer_s* %writer) #4
  store i32 %call216, i32* %code, align 4, !tbaa !5
  switch i32 %call216, label %sw.default [
    i32 1, label %sw.bb
    i32 0, label %sw.bb.217
  ]

sw.default:                                       ; preds = %if.then.215
  %248 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %248, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.240

sw.bb:                                            ; preds = %if.then.215
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.240

sw.bb.217:                                        ; preds = %if.then.215
  %249 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %pres218 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %writer, i32 0, i32 3
  %250 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres218, align 8, !tbaa !94
  %ImageMatrix219 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %image, i32 0, i32 1
  %call220 = call i32 @pdf_do_image(%struct.gx_device_pdf_s* %249, %struct.pdf_resource_s* %250, %struct.gs_matrix_s* %ImageMatrix219, i32 1) #4
  store i32 %call220, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.240

if.end.221:                                       ; preds = %if.end.212
  %end_string = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %writer, i32 0, i32 6
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.24, i32 0, i32 0), i8** %end_string, align 8, !tbaa !95
  %251 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call222 = call i32 @pdf_end_write_image(%struct.gx_device_pdf_s* %251, %struct.pdf_image_writer_s* %writer) #4
  store i32 %call222, i32* %code, align 4, !tbaa !5
  switch i32 %call222, label %sw.default.223 [
    i32 0, label %sw.bb.224
    i32 1, label %sw.epilog
  ]

sw.default.223:                                   ; preds = %if.end.221
  %252 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %252, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.240

sw.bb.224:                                        ; preds = %if.end.221
  store i32 -100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.240

sw.epilog:                                        ; preds = %if.end.221
  %253 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call225 = call i32 @pdf_end_char_proc(%struct.gx_device_pdf_s* %253, %struct.pdf_stream_position_s* %ipos) #4
  store i32 %call225, i32* %code, align 4, !tbaa !5
  %254 = load i32, i32* %code, align 4, !tbaa !5
  %cmp226 = icmp slt i32 %254, 0
  br i1 %cmp226, label %if.then.228, label %if.end.229

if.then.228:                                      ; preds = %sw.epilog
  %255 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %255, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.240

if.end.229:                                       ; preds = %sw.epilog
  br label %rx

rx:                                               ; preds = %if.end.229, %cleanup
  %256 = bitcast %struct.gs_matrix_s* %imat to i8*
  call void @llvm.lifetime.start(i64 24, i8* %256) #1
  %ImageMatrix230 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %image, i32 0, i32 1
  %257 = bitcast %struct.gs_matrix_s* %imat to i8*
  %258 = bitcast %struct.gs_matrix_s* %ImageMatrix230 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %257, i8* %258, i64 24, i32 4, i1 false), !tbaa.struct !96
  %259 = load i32, i32* %w.addr, align 4, !tbaa !5
  %conv231 = sitofp i32 %259 to float
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %imat, i32 0, i32 0
  %260 = load float, float* %xx, align 4, !tbaa !97
  %div = fdiv float %260, %conv231
  store float %div, float* %xx, align 4, !tbaa !97
  %261 = load i32, i32* %h.addr, align 4, !tbaa !5
  %conv232 = sitofp i32 %261 to float
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %imat, i32 0, i32 1
  %262 = load float, float* %xy, align 4, !tbaa !98
  %div233 = fdiv float %262, %conv232
  store float %div233, float* %xy, align 4, !tbaa !98
  %263 = load i32, i32* %w.addr, align 4, !tbaa !5
  %conv234 = sitofp i32 %263 to float
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %imat, i32 0, i32 2
  %264 = load float, float* %yx, align 4, !tbaa !99
  %div235 = fdiv float %264, %conv234
  store float %div235, float* %yx, align 4, !tbaa !99
  %265 = load i32, i32* %h.addr, align 4, !tbaa !5
  %conv236 = sitofp i32 %265 to float
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %imat, i32 0, i32 3
  %266 = load float, float* %yy, align 4, !tbaa !100
  %div237 = fdiv float %266, %conv236
  store float %div237, float* %yy, align 4, !tbaa !100
  %267 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %268 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %269 = bitcast %struct.pdf_resource_s* %268 to %struct.pdf_char_proc_s*
  %call238 = call i32 @pdf_do_char_image(%struct.gx_device_pdf_s* %267, %struct.pdf_char_proc_s* %269, %struct.gs_matrix_s* %imat) #4
  store i32 %call238, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %270 = bitcast %struct.gs_matrix_s* %imat to i8*
  call void @llvm.lifetime.end(i64 24, i8* %270) #1
  br label %cleanup.240

cleanup.240:                                      ; preds = %rx, %if.then.228, %sw.bb.224, %sw.default.223, %sw.bb.217, %sw.bb, %sw.default, %if.then.211, %if.then.180, %cleanup, %cleanup.170, %cleanup.140, %if.then.11, %if.then.5, %if.then.2
  %271 = bitcast double* %width to i8*
  call void @llvm.lifetime.end(i64 8, i8* %271) #1
  %272 = bitcast i32* %y_offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %272) #1
  %273 = bitcast i32* %x_offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %273) #1
  %274 = bitcast %struct.gs_show_enum_s** %show_enum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %274) #1
  %275 = bitcast i32* %in_line to i8*
  call void @llvm.lifetime.end(i64 4, i8* %275) #1
  call void @llvm.lifetime.end(i64 1, i8* %invert) #1
  %276 = bitcast %struct.pdf_resource_s** %pres to i8*
  call void @llvm.lifetime.end(i64 8, i8* %276) #1
  %277 = bitcast %struct.pdf_stream_position_s* %ipos to i8*
  call void @llvm.lifetime.end(i64 16, i8* %277) #1
  %278 = bitcast %struct.pdf_image_writer_s* %writer to i8*
  call void @llvm.lifetime.end(i64 192, i8* %278) #1
  %279 = bitcast %struct.gs_image1_s* %image to i8*
  call void @llvm.lifetime.end(i64 600, i8* %279) #1
  %280 = bitcast [16 x i8]* %palette to i8*
  call void @llvm.lifetime.end(i64 16, i8* %280) #1
  %281 = bitcast %struct.cos_value_s** %pcsvalue to i8*
  call void @llvm.lifetime.end(i64 8, i8* %281) #1
  %282 = bitcast %struct.cos_value_s* %cs_value to i8*
  call void @llvm.lifetime.end(i64 24, i8* %282) #1
  %283 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %283) #1
  %284 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %284) #1
  %285 = load i32, i32* %retval
  ret i32 %285
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @pdf_copy_color_data(%struct.gx_device_pdf_s* %pdev, i8* %base, i32 %sourcex, i32 %raster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h, %struct.gs_image1_s* %pim, %struct.pdf_image_writer_s* %piw, i32 %for_pattern) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %base.addr = alloca i8*, align 8
  %sourcex.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %pim.addr = alloca %struct.gs_image1_s*, align 8
  %piw.addr = alloca %struct.pdf_image_writer_s*, align 8
  %for_pattern.addr = alloca i32, align 4
  %depth = alloca i32, align 4
  %bytes_per_pixel = alloca i32, align 4
  %pcs = alloca %struct.gs_color_space_s*, align 8
  %cs_value = alloca %struct.cos_value_s, align 8
  %nbytes = alloca i64, align 8
  %code = alloca i32, align 4
  %row_base = alloca i8*, align 8
  %row_step = alloca i32, align 4
  %in_line = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store i8* %base, i8** %base.addr, align 8, !tbaa !1
  store i32 %sourcex, i32* %sourcex.addr, align 4, !tbaa !5
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !5
  store i64 %id, i64* %id.addr, align 8, !tbaa !7
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  store %struct.gs_image1_s* %pim, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  store %struct.pdf_image_writer_s* %piw, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  store i32 %for_pattern, i32* %for_pattern.addr, align 4, !tbaa !5
  %0 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %1, i32 0, i32 11
  %depth1 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %2 = load i16, i16* %depth1, align 2, !tbaa !101
  %conv = zext i16 %2 to i32
  store i32 %conv, i32* %depth, align 4, !tbaa !5
  %3 = bitcast i32* %bytes_per_pixel to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i32, i32* %depth, align 4, !tbaa !5
  %shr = ashr i32 %4, 3
  store i32 %shr, i32* %bytes_per_pixel, align 4, !tbaa !5
  %5 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast %struct.cos_value_s* %cs_value to i8*
  call void @llvm.lifetime.start(i64 24, i8* %6) #1
  %7 = bitcast i64* %nbytes to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %9, i32 0, i32 3
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !69
  %11 = load i32, i32* %bytes_per_pixel, align 4, !tbaa !5
  %call = call i32 @pdf_cspace_init_Device(%struct.gs_memory_s* %10, %struct.gs_color_space_s** %pcs, i32 %11) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %12 = bitcast i8** %row_base to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = bitcast i32* %row_step to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast i32* %in_line to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %15, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %16 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %17 = load i8*, i8** %base.addr, align 8, !tbaa !1
  %tobool = icmp ne i8* %17, null
  br i1 %tobool, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %18 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %19 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  call void @gs_image_t_init_adjust(%struct.gs_image1_s* %18, %struct.gs_color_space_s* %19, i32 1) #4
  %20 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %21 = load i32, i32* %x.addr, align 4, !tbaa !5
  %22 = load i32, i32* %y.addr, align 4, !tbaa !5
  %23 = load i32, i32* %w.addr, align 4, !tbaa !5
  %24 = load i32, i32* %h.addr, align 4, !tbaa !5
  call void @pdf_make_bitmap_image(%struct.gs_image1_s* %20, i32 %21, i32 %22, i32 %23, i32 %24) #4
  %25 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %BitsPerComponent = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %25, i32 0, i32 4
  store i32 8, i32* %BitsPerComponent, align 4, !tbaa !79
  %26 = load i32, i32* %w.addr, align 4, !tbaa !5
  %conv5 = sext i32 %26 to i64
  %27 = load i32, i32* %bytes_per_pixel, align 4, !tbaa !5
  %conv6 = sext i32 %27 to i64
  %mul = mul i64 %conv5, %conv6
  %28 = load i32, i32* %h.addr, align 4, !tbaa !5
  %conv7 = sext i32 %28 to i64
  %mul8 = mul i64 %mul, %conv7
  store i64 %mul8, i64* %nbytes, align 8, !tbaa !7
  %29 = load i32, i32* %for_pattern.addr, align 4, !tbaa !5
  %cmp9 = icmp eq i32 %29, 1
  br i1 %cmp9, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.end.4
  %30 = load i8*, i8** %base.addr, align 8, !tbaa !1
  %31 = load i32, i32* %h.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %31, 1
  %32 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %mul12 = mul nsw i32 %sub, %32
  %idx.ext = sext i32 %mul12 to i64
  %add.ptr = getelementptr inbounds i8, i8* %30, i64 %idx.ext
  store i8* %add.ptr, i8** %row_base, align 8, !tbaa !1
  %33 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %sub13 = sub nsw i32 0, %33
  store i32 %sub13, i32* %row_step, align 4, !tbaa !5
  %34 = load i32, i32* %for_pattern.addr, align 4, !tbaa !5
  %cmp14 = icmp slt i32 %34, 0
  %conv15 = zext i1 %cmp14 to i32
  store i32 %conv15, i32* %in_line, align 4, !tbaa !5
  br label %if.end.27

if.else:                                          ; preds = %if.end.4
  %35 = load i8*, i8** %base.addr, align 8, !tbaa !1
  store i8* %35, i8** %row_base, align 8, !tbaa !1
  %36 = load i32, i32* %raster.addr, align 4, !tbaa !5
  store i32 %36, i32* %row_step, align 4, !tbaa !5
  %37 = load i64, i64* %nbytes, align 8, !tbaa !7
  %38 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %MaxInlineImageSize = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %38, i32 0, i32 113
  %39 = load i64, i64* %MaxInlineImageSize, align 8, !tbaa !81
  %cmp16 = icmp ult i64 %37, %39
  %conv17 = zext i1 %cmp16 to i32
  store i32 %conv17, i32* %in_line, align 4, !tbaa !5
  %40 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %41 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %ImageMatrix = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %41, i32 0, i32 1
  call void @pdf_put_image_matrix(%struct.gx_device_pdf_s* %40, %struct.gs_matrix_s* %ImageMatrix, double 1.000000e+00) #4
  %42 = load i64, i64* %id.addr, align 8, !tbaa !7
  %cmp18 = icmp ne i64 %42, 0
  br i1 %cmp18, label %if.then.20, label %if.end.26

if.then.20:                                       ; preds = %if.else
  %43 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %44 = load i64, i64* %id.addr, align 8, !tbaa !7
  %call21 = call %struct.pdf_resource_s* @pdf_find_resource_by_gs_id(%struct.gx_device_pdf_s* %43, i32 4, i64 %44) #4
  %45 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %pres = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %45, i32 0, i32 3
  store %struct.pdf_resource_s* %call21, %struct.pdf_resource_s** %pres, align 8, !tbaa !94
  %46 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %pres22 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %46, i32 0, i32 3
  %47 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres22, align 8, !tbaa !94
  %tobool23 = icmp ne %struct.pdf_resource_s* %47, null
  br i1 %tobool23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.then.20
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.25:                                        ; preds = %if.then.20
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.else
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.then.11
  %48 = load i32, i32* %for_pattern.addr, align 4, !tbaa !5
  %cmp28 = icmp slt i32 %48, 0
  br i1 %cmp28, label %if.then.30, label %if.end.32

if.then.30:                                       ; preds = %if.end.27
  %49 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %49, i32 0, i32 47
  %50 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !66
  %call31 = call i32 @stream_puts(%struct.stream_s* %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0)) #4
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.30, %if.end.27
  %51 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  call void @pdf_image_writer_init(%struct.pdf_image_writer_s* %51) #4
  %52 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %CompatibilityLevel = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %52, i32 0, i32 75
  %53 = load double, double* %CompatibilityLevel, align 8, !tbaa !89
  %54 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %ParamCompatibilityLevel = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %54, i32 0, i32 72
  store double %53, double* %ParamCompatibilityLevel, align 8, !tbaa !90
  %55 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %56 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %57 = load i64, i64* %id.addr, align 8, !tbaa !7
  %58 = load i32, i32* %w.addr, align 4, !tbaa !5
  %59 = load i32, i32* %h.addr, align 4, !tbaa !5
  %60 = load i32, i32* %in_line, align 4, !tbaa !5
  %call33 = call i32 @pdf_begin_write_image(%struct.gx_device_pdf_s* %55, %struct.pdf_image_writer_s* %56, i64 %57, i32 %58, i32 %59, %struct.cos_dict_s* null, i32 %60) #4
  store i32 %call33, i32* %code, align 4, !tbaa !5
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.then.55, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.32
  %61 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %62 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %63 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %pin = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %63, i32 0, i32 2
  %64 = load %struct.pdf_image_names_s*, %struct.pdf_image_names_s** %pin, align 8, !tbaa !83
  %color_spaces = getelementptr inbounds %struct.pdf_image_names_s, %struct.pdf_image_names_s* %64, i32 0, i32 0
  %65 = load i32, i32* %in_line, align 4, !tbaa !5
  %call36 = call i32 @pdf_color_space_named(%struct.gx_device_pdf_s* %61, %struct.cos_value_s* %cs_value, %struct.gs_range_s** null, %struct.gs_color_space_s* %62, %struct.pdf_color_space_names_s* %color_spaces, i32 %65, i8* null, i32 0, i32 0) #4
  store i32 %call36, i32* %code, align 4, !tbaa !5
  %cmp37 = icmp slt i32 %call36, 0
  br i1 %cmp37, label %if.then.55, label %lor.lhs.false.39

lor.lhs.false.39:                                 ; preds = %lor.lhs.false
  %66 = load i32, i32* %for_pattern.addr, align 4, !tbaa !5
  %cmp40 = icmp slt i32 %66, 2
  br i1 %cmp40, label %cond.true, label %lor.lhs.false.42

lor.lhs.false.42:                                 ; preds = %lor.lhs.false.39
  %67 = load i64, i64* %nbytes, align 8, !tbaa !7
  %cmp43 = icmp ult i64 %67, 512000
  br i1 %cmp43, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false.42, %lor.lhs.false.39
  %68 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %69 = bitcast %struct.gx_device_pdf_s* %68 to %struct.gx_device_psdf_s*
  %70 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %binary = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %70, i32 0, i32 0
  %arrayidx = getelementptr inbounds [4 x %struct.psdf_binary_writer_s], [4 x %struct.psdf_binary_writer_s]* %binary, i32 0, i64 0
  %71 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %72 = bitcast %struct.gs_image1_s* %71 to %struct.gs_pixel_image_s*
  %call45 = call i32 @psdf_setup_lossless_filters(%struct.gx_device_psdf_s* %69, %struct.psdf_binary_writer_s* %arrayidx, %struct.gs_pixel_image_s* %72, i32 0) #4
  store i32 %call45, i32* %code, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false.42
  %73 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %74 = bitcast %struct.gx_device_pdf_s* %73 to %struct.gx_device_psdf_s*
  %75 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %binary46 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %75, i32 0, i32 0
  %arrayidx47 = getelementptr inbounds [4 x %struct.psdf_binary_writer_s], [4 x %struct.psdf_binary_writer_s]* %binary46, i32 0, i64 0
  %76 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %77 = bitcast %struct.gs_image1_s* %76 to %struct.gs_pixel_image_s*
  %call48 = call i32 @psdf_setup_image_filters(%struct.gx_device_psdf_s* %74, %struct.psdf_binary_writer_s* %arrayidx47, %struct.gs_pixel_image_s* %77, %struct.gs_matrix_s* null, %struct.gs_imager_state_s* null, i32 0, i32 0) #4
  store i32 %call48, i32* %code, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call45, %cond.true ], [ %call48, %cond.false ]
  %cmp49 = icmp slt i32 %cond, 0
  br i1 %cmp49, label %if.then.55, label %lor.lhs.false.51

lor.lhs.false.51:                                 ; preds = %cond.end
  %78 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %79 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %80 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %81 = bitcast %struct.gs_image1_s* %80 to %struct.gs_pixel_image_s*
  %call52 = call i32 @pdf_begin_image_data(%struct.gx_device_pdf_s* %78, %struct.pdf_image_writer_s* %79, %struct.gs_pixel_image_s* %81, %struct.cos_value_s* %cs_value, i32 0) #4
  store i32 %call52, i32* %code, align 4, !tbaa !5
  %cmp53 = icmp slt i32 %call52, 0
  br i1 %cmp53, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %lor.lhs.false.51, %cond.end, %lor.lhs.false, %if.end.32
  %82 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %82, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.56:                                        ; preds = %lor.lhs.false.51
  %83 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %binary57 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %83, i32 0, i32 0
  %arrayidx58 = getelementptr inbounds [4 x %struct.psdf_binary_writer_s], [4 x %struct.psdf_binary_writer_s]* %binary57, i32 0, i64 0
  %strm59 = getelementptr inbounds %struct.psdf_binary_writer_s, %struct.psdf_binary_writer_s* %arrayidx58, i32 0, i32 2
  %84 = load %struct.stream_s*, %struct.stream_s** %strm59, align 8, !tbaa !91
  %85 = load i8*, i8** %row_base, align 8, !tbaa !1
  %86 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %87 = load i32, i32* %row_step, align 4, !tbaa !5
  %88 = load i32, i32* %w.addr, align 4, !tbaa !5
  %89 = load i32, i32* %h.addr, align 4, !tbaa !5
  %90 = load i32, i32* %bytes_per_pixel, align 4, !tbaa !5
  %call60 = call i32 @pdf_copy_color_bits(%struct.stream_s* %84, i8* %85, i32 %86, i32 %87, i32 %88, i32 %89, i32 %90) #4
  %91 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %92 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %93 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %93, i32 0, i32 4
  %94 = load i32, i32* %height, align 4, !tbaa !93
  %call61 = call i32 @pdf_end_image_binary(%struct.gx_device_pdf_s* %91, %struct.pdf_image_writer_s* %92, i32 %94) #4
  %95 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %96 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %call62 = call i32 @pdf_end_write_image(%struct.gx_device_pdf_s* %95, %struct.pdf_image_writer_s* %96) #4
  store i32 %call62, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.56, %if.then.55, %if.then.24, %if.then.3, %if.then
  %97 = bitcast i32* %in_line to i8*
  call void @llvm.lifetime.end(i64 4, i8* %97) #1
  %98 = bitcast i32* %row_step to i8*
  call void @llvm.lifetime.end(i64 4, i8* %98) #1
  %99 = bitcast i8** %row_base to i8*
  call void @llvm.lifetime.end(i64 8, i8* %99) #1
  %100 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %100) #1
  %101 = bitcast i64* %nbytes to i8*
  call void @llvm.lifetime.end(i64 8, i8* %101) #1
  %102 = bitcast %struct.cos_value_s* %cs_value to i8*
  call void @llvm.lifetime.end(i64 24, i8* %102) #1
  %103 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %103) #1
  %104 = bitcast i32* %bytes_per_pixel to i8*
  call void @llvm.lifetime.end(i64 4, i8* %104) #1
  %105 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %105) #1
  %106 = load i32, i32* %retval
  ret i32 %106
}

declare i32 @pdf_cspace_init_Device(%struct.gs_memory_s*, %struct.gs_color_space_s**, i32) #2

declare void @gs_image_t_init_adjust(%struct.gs_image1_s*, %struct.gs_color_space_s*, i32) #2

; Function Attrs: nounwind uwtable
define internal void @pdf_make_bitmap_image(%struct.gs_image1_s* %pim, i32 %x, i32 %y, i32 %w, i32 %h) #0 {
entry:
  %pim.addr = alloca %struct.gs_image1_s*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  store %struct.gs_image1_s* %pim, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  %0 = load i32, i32* %w.addr, align 4, !tbaa !5
  %1 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %Width = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %1, i32 0, i32 2
  store i32 %0, i32* %Width, align 4, !tbaa !87
  %2 = load i32, i32* %h.addr, align 4, !tbaa !5
  %3 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %Height = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %3, i32 0, i32 3
  store i32 %2, i32* %Height, align 4, !tbaa !88
  %4 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %ImageMatrix = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %4, i32 0, i32 1
  %5 = load i32, i32* %x.addr, align 4, !tbaa !5
  %6 = load i32, i32* %y.addr, align 4, !tbaa !5
  %7 = load i32, i32* %w.addr, align 4, !tbaa !5
  %8 = load i32, i32* %h.addr, align 4, !tbaa !5
  %9 = load i32, i32* %h.addr, align 4, !tbaa !5
  call void @pdf_make_bitmap_matrix(%struct.gs_matrix_s* %ImageMatrix, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9) #4
  ret void
}

declare void @pdf_put_image_matrix(%struct.gx_device_pdf_s*, %struct.gs_matrix_s*, double) #2

declare %struct.pdf_resource_s* @pdf_find_resource_by_gs_id(%struct.gx_device_pdf_s*, i32, i64) #2

declare i32 @stream_puts(%struct.stream_s*, i8*) #2

declare void @pdf_image_writer_init(%struct.pdf_image_writer_s*) #2

declare i32 @pdf_begin_write_image(%struct.gx_device_pdf_s*, %struct.pdf_image_writer_s*, i64, i32, i32, %struct.cos_dict_s*, i32) #2

declare i32 @pdf_color_space_named(%struct.gx_device_pdf_s*, %struct.cos_value_s*, %struct.gs_range_s**, %struct.gs_color_space_s*, %struct.pdf_color_space_names_s*, i32, i8*, i32, i32) #2

declare i32 @psdf_setup_lossless_filters(%struct.gx_device_psdf_s*, %struct.psdf_binary_writer_s*, %struct.gs_pixel_image_s*, i32) #2

declare i32 @psdf_setup_image_filters(%struct.gx_device_psdf_s*, %struct.psdf_binary_writer_s*, %struct.gs_pixel_image_s*, %struct.gs_matrix_s*, %struct.gs_imager_state_s*, i32, i32) #2

declare i32 @pdf_begin_image_data(%struct.gx_device_pdf_s*, %struct.pdf_image_writer_s*, %struct.gs_pixel_image_s*, %struct.cos_value_s*, i32) #2

declare i32 @pdf_copy_color_bits(%struct.stream_s*, i8*, i32, i32, i32, i32, i32) #2

declare i32 @pdf_end_image_binary(%struct.gx_device_pdf_s*, %struct.pdf_image_writer_s*, i32) #2

declare i32 @pdf_end_write_image(%struct.gx_device_pdf_s*, %struct.pdf_image_writer_s*) #2

; Function Attrs: nounwind uwtable
define i32 @gdev_pdf_copy_color(%struct.gx_device_s* %dev, i8* %base, i32 %sourcex, i32 %raster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %base.addr = alloca i8*, align 8
  %sourcex.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %pdev = alloca %struct.gx_device_pdf_s*, align 8
  %image = alloca %struct.gs_image1_s, align 8
  %writer = alloca %struct.pdf_image_writer_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %base, i8** %base.addr, align 8, !tbaa !1
  store i32 %sourcex, i32* %sourcex.addr, align 4, !tbaa !5
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !5
  store i64 %id, i64* %id.addr, align 8, !tbaa !7
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_device_pdf_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_pdf_s*
  store %struct.gx_device_pdf_s* %2, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %3 = bitcast %struct.gs_image1_s* %image to i8*
  call void @llvm.lifetime.start(i64 600, i8* %3) #1
  %4 = bitcast %struct.pdf_image_writer_s* %writer to i8*
  call void @llvm.lifetime.start(i64 192, i8* %4) #1
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load i32, i32* %w.addr, align 4, !tbaa !5
  %cmp = icmp sle i32 %6, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %7 = load i32, i32* %h.addr, align 4, !tbaa !5
  %cmp1 = icmp sle i32 %7, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %8 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %call = call i32 @pdf_open_page(%struct.gx_device_pdf_s* %8, i32 1) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %9 = load i32, i32* %code, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %9, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %10 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %11 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %call5 = call i32 @pdf_put_clip_path(%struct.gx_device_pdf_s* %11, %struct.gx_clip_path_s* null) #4
  store i32 %call5, i32* %code, align 4, !tbaa !5
  %12 = load i32, i32* %code, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %12, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  %13 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.end.4
  %14 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %15 = load i8*, i8** %base.addr, align 8, !tbaa !1
  %16 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %17 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %18 = load i64, i64* %id.addr, align 8, !tbaa !7
  %19 = load i32, i32* %x.addr, align 4, !tbaa !5
  %20 = load i32, i32* %y.addr, align 4, !tbaa !5
  %21 = load i32, i32* %w.addr, align 4, !tbaa !5
  %22 = load i32, i32* %h.addr, align 4, !tbaa !5
  %call9 = call i32 @pdf_copy_color_data(%struct.gx_device_pdf_s* %14, i8* %15, i32 %16, i32 %17, i64 %18, i32 %19, i32 %20, i32 %21, i32 %22, %struct.gs_image1_s* %image, %struct.pdf_image_writer_s* %writer, i32 0) #4
  store i32 %call9, i32* %code, align 4, !tbaa !5
  %23 = load i32, i32* %code, align 4, !tbaa !5
  switch i32 %23, label %sw.default [
    i32 1, label %sw.bb
    i32 0, label %sw.bb.10
  ]

sw.default:                                       ; preds = %if.end.8
  %24 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %24, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb:                                            ; preds = %if.end.8
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.10:                                         ; preds = %if.end.8
  %25 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %pres = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %writer, i32 0, i32 3
  %26 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !94
  %call11 = call i32 @pdf_do_image(%struct.gx_device_pdf_s* %25, %struct.pdf_resource_s* %26, %struct.gs_matrix_s* null, i32 1) #4
  store i32 %call11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.bb.10, %sw.bb, %sw.default, %if.then.7, %if.then.3, %if.then
  %27 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  %28 = bitcast %struct.pdf_image_writer_s* %writer to i8*
  call void @llvm.lifetime.end(i64 192, i8* %28) #1
  %29 = bitcast %struct.gs_image1_s* %image to i8*
  call void @llvm.lifetime.end(i64 600, i8* %29) #1
  %30 = bitcast %struct.gx_device_pdf_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #1
  %31 = load i32, i32* %retval
  ret i32 %31
}

declare i32 @pdf_open_page(%struct.gx_device_pdf_s*, i32) #2

declare i32 @pdf_put_clip_path(%struct.gx_device_pdf_s*, %struct.gx_clip_path_s*) #2

declare i32 @pdf_do_image(%struct.gx_device_pdf_s*, %struct.pdf_resource_s*, %struct.gs_matrix_s*, i32) #2

; Function Attrs: nounwind uwtable
define i32 @gdev_pdf_fill_mask(%struct.gx_device_s* %dev, i8* %data, i32 %data_x, i32 %raster, i64 %id, i32 %x, i32 %y, i32 %width, i32 %height, %struct.gx_device_color_s* %pdcolor, i32 %depth, i32 %lop, %struct.gx_clip_path_s* %pcpath) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %data.addr = alloca i8*, align 8
  %data_x.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %depth.addr = alloca i32, align 4
  %lop.addr = alloca i32, align 4
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %pdev = alloca %struct.gx_device_pdf_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %data_x, i32* %data_x.addr, align 4, !tbaa !5
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !5
  store i64 %id, i64* %id.addr, align 8, !tbaa !7
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %width, i32* %width.addr, align 4, !tbaa !5
  store i32 %height, i32* %height.addr, align 4, !tbaa !5
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store i32 %depth, i32* %depth.addr, align 4, !tbaa !5
  store i32 %lop, i32* %lop.addr, align 4, !tbaa !5
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_pdf_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_pdf_s*
  store %struct.gx_device_pdf_s* %2, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %3 = load i32, i32* %width.addr, align 4, !tbaa !5
  %cmp = icmp sle i32 %3, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i32, i32* %height.addr, align 4, !tbaa !5
  %cmp1 = icmp sle i32 %4, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %5 = load i32, i32* %depth.addr, align 4, !tbaa !5
  %cmp2 = icmp sgt i32 %5, 1
  br i1 %cmp2, label %if.then.6, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %if.end
  %6 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %6, i32 0, i32 0
  %7 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !102
  %cmp4 = icmp eq %struct.gx_device_color_type_s* %7, @gx_dc_type_data_pure
  %lnot = xor i1 %cmp4, true
  %lnot.ext = zext i1 %lnot to i32
  %cmp5 = icmp ne i32 %lnot.ext, 0
  br i1 %cmp5, label %land.lhs.true, label %if.end.8

land.lhs.true:                                    ; preds = %lor.lhs.false.3
  %8 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %call = call i32 @gx_dc_is_pattern1_color(%struct.gx_device_color_s* %8) #4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.8, label %if.then.6

if.then.6:                                        ; preds = %land.lhs.true, %if.end
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %10 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %11 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %12 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %13 = load i64, i64* %id.addr, align 8, !tbaa !7
  %14 = load i32, i32* %x.addr, align 4, !tbaa !5
  %15 = load i32, i32* %y.addr, align 4, !tbaa !5
  %16 = load i32, i32* %width.addr, align 4, !tbaa !5
  %17 = load i32, i32* %height.addr, align 4, !tbaa !5
  %18 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %19 = load i32, i32* %depth.addr, align 4, !tbaa !5
  %20 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %21 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call7 = call i32 @gx_default_fill_mask(%struct.gx_device_s* %9, i8* %10, i32 %11, i32 %12, i64 %13, i32 %14, i32 %15, i32 %16, i32 %17, %struct.gx_device_color_s* %18, i32 %19, i32 %20, %struct.gx_clip_path_s* %21) #4
  store i32 %call7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %land.lhs.true, %lor.lhs.false.3
  %22 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %23 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %24 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %25 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %26 = load i64, i64* %id.addr, align 8, !tbaa !7
  %27 = load i32, i32* %x.addr, align 4, !tbaa !5
  %28 = load i32, i32* %y.addr, align 4, !tbaa !5
  %29 = load i32, i32* %width.addr, align 4, !tbaa !5
  %30 = load i32, i32* %height.addr, align 4, !tbaa !5
  %31 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %31, i32 0, i32 1
  %pure = bitcast %union._c* %colors to i64*
  %32 = load i64, i64* %pure, align 8, !tbaa !7
  %33 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call9 = call i32 @pdf_copy_mono(%struct.gx_device_pdf_s* %22, i8* %23, i32 %24, i32 %25, i64 %26, i32 %27, i32 %28, i32 %29, i32 %30, i64 -1, i64 %32, %struct.gx_clip_path_s* %33) #4
  store i32 %call9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.8, %if.then.6, %if.then
  %34 = bitcast %struct.gx_device_pdf_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  %35 = load i32, i32* %retval
  ret i32 %35
}

declare i32 @gx_dc_is_pattern1_color(%struct.gx_device_color_s*) #2

declare i32 @gx_default_fill_mask(%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*) #2

; Function Attrs: nounwind uwtable
define i32 @gdev_pdf_strip_tile_rectangle(%struct.gx_device_s* %dev, %struct.gx_strip_bitmap_s* %tiles, i32 %x, i32 %y, i32 %w, i32 %h, i64 %color0, i64 %color1, i32 %px, i32 %py) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %tiles.addr = alloca %struct.gx_strip_bitmap_s*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %color0.addr = alloca i64, align 8
  %color1.addr = alloca i64, align 8
  %px.addr = alloca i32, align 4
  %py.addr = alloca i32, align 4
  %pdev = alloca %struct.gx_device_pdf_s*, align 8
  %tw = alloca i32, align 4
  %th = alloca i32, align 4
  %xscale = alloca double, align 8
  %yscale = alloca double, align 8
  %mask = alloca i32, align 4
  %depth = alloca i32, align 4
  %copy_data = alloca i32 (%struct.gx_device_pdf_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gs_image1_s*, %struct.pdf_image_writer_s*, i32)*, align 8
  %pres = alloca %struct.pdf_resource_s*, align 8
  %cs_value = alloca %struct.cos_value_s, align 8
  %code = alloca i32, align 4
  %code33 = alloca i32, align 4
  %image_id = alloca i64, align 8
  %length_id = alloca i64, align 8
  %start = alloca i64, align 8
  %end = alloca i64, align 8
  %s = alloca %struct.stream_s*, align 8
  %image = alloca %struct.gs_image1_s, align 8
  %writer = alloca %struct.pdf_image_writer_s, align 8
  %image_bytes = alloca i64, align 8
  %in_line = alloca i32, align 4
  %tile_id = alloca i64, align 8
  %buf = alloca [29 x i8], align 16
  %cleanup.dest.slot = alloca i32
  %code131 = alloca i32, align 4
  %s133 = alloca %struct.stream_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gx_strip_bitmap_s* %tiles, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  store i64 %color0, i64* %color0.addr, align 8, !tbaa !7
  store i64 %color1, i64* %color1.addr, align 8, !tbaa !7
  store i32 %px, i32* %px.addr, align 4, !tbaa !5
  store i32 %py, i32* %py.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_device_pdf_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_pdf_s*
  store %struct.gx_device_pdf_s* %2, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %3 = bitcast i32* %tw to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !1
  %rep_width = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %4, i32 0, i32 4
  %5 = load i16, i16* %rep_width, align 2, !tbaa !106
  %conv = zext i16 %5 to i32
  store i32 %conv, i32* %tw, align 4, !tbaa !5
  %6 = bitcast i32* %th to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !1
  %rep_height = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %7, i32 0, i32 5
  %8 = load i16, i16* %rep_height, align 2, !tbaa !108
  %conv1 = zext i16 %8 to i32
  store i32 %conv1, i32* %th, align 4, !tbaa !5
  %9 = bitcast double* %xscale to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %10, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %11 = load float, float* %arrayidx, align 4, !tbaa !86
  %conv2 = fpext float %11 to double
  %div = fdiv double %conv2, 7.200000e+01
  store double %div, double* %xscale, align 8, !tbaa !65
  %12 = bitcast double* %yscale to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %HWResolution3 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %13, i32 0, i32 22
  %arrayidx4 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution3, i32 0, i64 1
  %14 = load float, float* %arrayidx4, align 4, !tbaa !86
  %conv5 = fpext float %14 to double
  %div6 = fdiv double %conv5, 7.200000e+01
  store double %div6, double* %yscale, align 8, !tbaa !65
  %15 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = bitcast i32 (%struct.gx_device_pdf_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gs_image1_s*, %struct.pdf_image_writer_s*, i32)** %copy_data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  %18 = bitcast %struct.pdf_resource_s** %pres to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  %19 = bitcast %struct.cos_value_s* %cs_value to i8*
  call void @llvm.lifetime.start(i64 24, i8* %19) #1
  %20 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !1
  %id = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %21, i32 0, i32 3
  %22 = load i64, i64* %id, align 8, !tbaa !109
  %cmp = icmp eq i64 %22, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %23 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !1
  %shift = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %23, i32 0, i32 7
  %24 = load i16, i16* %shift, align 2, !tbaa !110
  %conv8 = zext i16 %24 to i32
  %cmp9 = icmp ne i32 %conv8, 0
  br i1 %cmp9, label %if.then, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %lor.lhs.false
  %25 = load i32, i32* %w.addr, align 4, !tbaa !5
  %26 = load i32, i32* %tw, align 4, !tbaa !5
  %cmp12 = icmp slt i32 %25, %26
  br i1 %cmp12, label %land.lhs.true, label %lor.lhs.false.16

land.lhs.true:                                    ; preds = %lor.lhs.false.11
  %27 = load i32, i32* %h.addr, align 4, !tbaa !5
  %28 = load i32, i32* %th, align 4, !tbaa !5
  %cmp14 = icmp slt i32 %27, %28
  br i1 %cmp14, label %if.then, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %land.lhs.true, %lor.lhs.false.11
  %29 = load i64, i64* %color0.addr, align 8, !tbaa !7
  %cmp17 = icmp ne i64 %29, -1
  br i1 %cmp17, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.16, %land.lhs.true, %lor.lhs.false, %entry
  br label %use_default

if.end:                                           ; preds = %lor.lhs.false.16
  %30 = load i64, i64* %color1.addr, align 8, !tbaa !7
  %cmp19 = icmp ne i64 %30, -1
  br i1 %cmp19, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %if.end
  store i32 1, i32* %mask, align 4, !tbaa !5
  store i32 1, i32* %depth, align 4, !tbaa !5
  store i32 (%struct.gx_device_pdf_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gs_image1_s*, %struct.pdf_image_writer_s*, i32)* @pdf_copy_mask_data, i32 (%struct.gx_device_pdf_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gs_image1_s*, %struct.pdf_image_writer_s*, i32)** %copy_data, align 8, !tbaa !1
  %31 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %call = call i32 @pdf_cs_Pattern_uncolored(%struct.gx_device_pdf_s* %31, %struct.cos_value_s* %cs_value) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  br label %if.end.25

if.else:                                          ; preds = %if.end
  store i32 0, i32* %mask, align 4, !tbaa !5
  %32 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %32, i32 0, i32 11
  %depth22 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %33 = load i16, i16* %depth22, align 2, !tbaa !101
  %conv23 = zext i16 %33 to i32
  store i32 %conv23, i32* %depth, align 4, !tbaa !5
  store i32 (%struct.gx_device_pdf_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gs_image1_s*, %struct.pdf_image_writer_s*, i32)* @pdf_copy_color_data, i32 (%struct.gx_device_pdf_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gs_image1_s*, %struct.pdf_image_writer_s*, i32)** %copy_data, align 8, !tbaa !1
  %34 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %call24 = call i32 @pdf_cs_Pattern_colored(%struct.gx_device_pdf_s* %34, %struct.cos_value_s* %cs_value) #4
  store i32 %call24, i32* %code, align 4, !tbaa !5
  br label %if.end.25

if.end.25:                                        ; preds = %if.else, %if.then.21
  %35 = load i32, i32* %code, align 4, !tbaa !5
  %cmp26 = icmp slt i32 %35, 0
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.25
  br label %use_default

if.end.29:                                        ; preds = %if.end.25
  %36 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %37 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !1
  %id30 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %37, i32 0, i32 3
  %38 = load i64, i64* %id30, align 8, !tbaa !109
  %call31 = call %struct.pdf_resource_s* @pdf_find_resource_by_gs_id(%struct.gx_device_pdf_s* %36, i32 2, i64 %38) #4
  store %struct.pdf_resource_s* %call31, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %39 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %tobool = icmp ne %struct.pdf_resource_s* %39, null
  br i1 %tobool, label %if.end.130, label %if.then.32

if.then.32:                                       ; preds = %if.end.29
  %40 = bitcast i32* %code33 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %40) #1
  %41 = bitcast i64* %image_id to i8*
  call void @llvm.lifetime.start(i64 8, i8* %41) #1
  %42 = bitcast i64* %length_id to i8*
  call void @llvm.lifetime.start(i64 8, i8* %42) #1
  %43 = bitcast i64* %start to i8*
  call void @llvm.lifetime.start(i64 8, i8* %43) #1
  %44 = bitcast i64* %end to i8*
  call void @llvm.lifetime.start(i64 8, i8* %44) #1
  %45 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %45) #1
  %46 = bitcast %struct.gs_image1_s* %image to i8*
  call void @llvm.lifetime.start(i64 600, i8* %46) #1
  %47 = bitcast %struct.pdf_image_writer_s* %writer to i8*
  call void @llvm.lifetime.start(i64 192, i8* %47) #1
  %48 = bitcast i64* %image_bytes to i8*
  call void @llvm.lifetime.start(i64 8, i8* %48) #1
  %49 = load i32, i32* %tw, align 4, !tbaa !5
  %conv34 = sext i32 %49 to i64
  %50 = load i32, i32* %depth, align 4, !tbaa !5
  %conv35 = sext i32 %50 to i64
  %mul = mul nsw i64 %conv34, %conv35
  %add = add nsw i64 %mul, 7
  %div36 = sdiv i64 %add, 8
  %51 = load i32, i32* %th, align 4, !tbaa !5
  %conv37 = sext i32 %51 to i64
  %mul38 = mul nsw i64 %div36, %conv37
  store i64 %mul38, i64* %image_bytes, align 8, !tbaa !7
  %52 = bitcast i32* %in_line to i8*
  call void @llvm.lifetime.start(i64 4, i8* %52) #1
  %53 = load i64, i64* %image_bytes, align 8, !tbaa !7
  %54 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %MaxInlineImageSize = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %54, i32 0, i32 113
  %55 = load i64, i64* %MaxInlineImageSize, align 8, !tbaa !81
  %cmp39 = icmp slt i64 %53, %55
  %conv40 = zext i1 %cmp39 to i32
  store i32 %conv40, i32* %in_line, align 4, !tbaa !5
  %56 = bitcast i64* %tile_id to i8*
  call void @llvm.lifetime.start(i64 8, i8* %56) #1
  %57 = load i32, i32* %tw, align 4, !tbaa !5
  %58 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %58, i32 0, i32 2
  %x41 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size, i32 0, i32 0
  %59 = load i32, i32* %x41, align 4, !tbaa !111
  %cmp42 = icmp eq i32 %57, %59
  br i1 %cmp42, label %land.lhs.true.44, label %cond.false

land.lhs.true.44:                                 ; preds = %if.then.32
  %60 = load i32, i32* %th, align 4, !tbaa !5
  %61 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !1
  %size45 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %61, i32 0, i32 2
  %y46 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size45, i32 0, i32 1
  %62 = load i32, i32* %y46, align 4, !tbaa !112
  %cmp47 = icmp eq i32 %60, %62
  br i1 %cmp47, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.44
  %63 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !1
  %id49 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %63, i32 0, i32 3
  %64 = load i64, i64* %id49, align 8, !tbaa !109
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.44, %if.then.32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %64, %cond.true ], [ 0, %cond.false ]
  store i64 %cond, i64* %tile_id, align 8, !tbaa !7
  %65 = load i32, i32* %in_line, align 4, !tbaa !5
  %tobool50 = icmp ne i32 %65, 0
  br i1 %tobool50, label %if.then.51, label %if.else.52

if.then.51:                                       ; preds = %cond.end
  store i64 0, i64* %image_id, align 8, !tbaa !7
  br label %if.end.65

if.else.52:                                       ; preds = %cond.end
  %66 = load i64, i64* %image_bytes, align 8, !tbaa !7
  %cmp53 = icmp sgt i64 %66, 65500
  br i1 %cmp53, label %if.then.55, label %if.else.56

if.then.55:                                       ; preds = %if.else.52
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.else.56:                                       ; preds = %if.else.52
  %67 = load i32 (%struct.gx_device_pdf_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gs_image1_s*, %struct.pdf_image_writer_s*, i32)*, i32 (%struct.gx_device_pdf_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gs_image1_s*, %struct.pdf_image_writer_s*, i32)** %copy_data, align 8, !tbaa !1
  %68 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %69 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %69, i32 0, i32 0
  %70 = load i8*, i8** %data, align 8, !tbaa !113
  %71 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !1
  %raster = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %71, i32 0, i32 1
  %72 = load i32, i32* %raster, align 4, !tbaa !114
  %73 = load i64, i64* %tile_id, align 8, !tbaa !7
  %74 = load i32, i32* %tw, align 4, !tbaa !5
  %75 = load i32, i32* %th, align 4, !tbaa !5
  %call57 = call i32 %67(%struct.gx_device_pdf_s* %68, i8* %70, i32 0, i32 %72, i64 %73, i32 0, i32 0, i32 %74, i32 %75, %struct.gs_image1_s* %image, %struct.pdf_image_writer_s* %writer, i32 1) #4
  store i32 %call57, i32* %code33, align 4, !tbaa !5
  %76 = load i32, i32* %code33, align 4, !tbaa !5
  %cmp58 = icmp slt i32 %76, 0
  br i1 %cmp58, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %if.else.56
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.61:                                        ; preds = %if.else.56
  %pres62 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %writer, i32 0, i32 3
  %77 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres62, align 8, !tbaa !94
  %call63 = call i64 @pdf_resource_id(%struct.pdf_resource_s* %77) #4
  store i64 %call63, i64* %image_id, align 8, !tbaa !7
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.61
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %if.then.51
  %78 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %79 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !1
  %id66 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %79, i32 0, i32 3
  %80 = load i64, i64* %id66, align 8, !tbaa !109
  %call67 = call i32 @pdf_begin_resource(%struct.gx_device_pdf_s* %78, i32 2, i64 %80, %struct.pdf_resource_s** %pres) #4
  store i32 %call67, i32* %code33, align 4, !tbaa !5
  %81 = load i32, i32* %code33, align 4, !tbaa !5
  %cmp68 = icmp slt i32 %81, 0
  br i1 %cmp68, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %if.end.65
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.71:                                        ; preds = %if.end.65
  %82 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %82, i32 0, i32 47
  %83 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !66
  store %struct.stream_s* %83, %struct.stream_s** %s, align 8, !tbaa !1
  %84 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %85 = load i32, i32* %mask, align 4, !tbaa !5
  %tobool72 = icmp ne i32 %85, 0
  %cond73 = select i1 %tobool72, i32 2, i32 1
  %call74 = call i8* @pprintd1(%struct.stream_s* %84, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i32 0, i32 0), i32 %cond73) #4
  %86 = load i64, i64* %image_id, align 8, !tbaa !7
  %tobool75 = icmp ne i64 %86, 0
  br i1 %tobool75, label %if.then.76, label %if.end.78

if.then.76:                                       ; preds = %if.end.71
  %87 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %88 = load i64, i64* %image_id, align 8, !tbaa !7
  %89 = load i64, i64* %image_id, align 8, !tbaa !7
  %call77 = call i8* @pprintld2(%struct.stream_s* %87, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0), i64 %88, i64 %89) #4
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.76, %if.end.71
  %90 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %91 = load i32, i32* %mask, align 4, !tbaa !5
  %tobool79 = icmp ne i32 %91, 0
  %cond80 = select i1 %tobool79, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0)
  %call81 = call i8* @pprints1(%struct.stream_s* %90, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0), i8* %cond80) #4
  %92 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %93 = load i32, i32* %tw, align 4, !tbaa !5
  %conv82 = sitofp i32 %93 to double
  %94 = load double, double* %xscale, align 8, !tbaa !65
  %div83 = fdiv double %conv82, %94
  %95 = load i32, i32* %th, align 4, !tbaa !5
  %conv84 = sitofp i32 %95 to double
  %96 = load double, double* %yscale, align 8, !tbaa !65
  %div85 = fdiv double %conv84, %96
  %call86 = call i8* @pprintg2(%struct.stream_s* %92, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0), double %div83, double %div85) #4
  %97 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call87 = call i32 @stream_puts(%struct.stream_s* %97, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i32 0, i32 0)) #4
  %98 = load i64, i64* %image_id, align 8, !tbaa !7
  %tobool88 = icmp ne i64 %98, 0
  br i1 %tobool88, label %if.then.89, label %if.else.105

if.then.89:                                       ; preds = %if.end.78
  %99 = bitcast [29 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 29, i8* %99) #1
  %arraydecay = getelementptr inbounds [29 x i8], [29 x i8]* %buf, i32 0, i32 0
  %100 = load i64, i64* %image_id, align 8, !tbaa !7
  %call90 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i64 %100) #4
  %101 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %arraydecay91 = getelementptr inbounds [29 x i8], [29 x i8]* %buf, i32 0, i32 0
  %call92 = call i64 @strlen(i8* %arraydecay91) #5
  %conv93 = trunc i64 %call92 to i32
  %call94 = call i8* @pprintd1(%struct.stream_s* %101, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i32 %conv93) #4
  %102 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %PDFA = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %102, i32 0, i32 109
  %103 = load i32, i32* %PDFA, align 4, !tbaa !115
  %cmp95 = icmp ne i32 %103, 0
  br i1 %cmp95, label %if.then.97, label %if.else.100

if.then.97:                                       ; preds = %if.then.89
  %104 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %arraydecay98 = getelementptr inbounds [29 x i8], [29 x i8]* %buf, i32 0, i32 0
  %call99 = call i8* @pprints1(%struct.stream_s* %104, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i8* %arraydecay98) #4
  br label %if.end.103

if.else.100:                                      ; preds = %if.then.89
  %105 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %arraydecay101 = getelementptr inbounds [29 x i8], [29 x i8]* %buf, i32 0, i32 0
  %call102 = call i8* @pprints1(%struct.stream_s* %105, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), i8* %arraydecay101) #4
  br label %if.end.103

if.end.103:                                       ; preds = %if.else.100, %if.then.97
  %106 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %call104 = call i32 @pdf_end_resource(%struct.gx_device_pdf_s* %106, i32 2) #4
  %107 = bitcast [29 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 29, i8* %107) #1
  br label %if.end.119

if.else.105:                                      ; preds = %if.end.78
  %108 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %call106 = call i64 @pdf_obj_ref(%struct.gx_device_pdf_s* %108) #4
  store i64 %call106, i64* %length_id, align 8, !tbaa !7
  %109 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %110 = load i64, i64* %length_id, align 8, !tbaa !7
  %call107 = call i8* @pprintld1(%struct.stream_s* %109, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i32 0, i32 0), i64 %110) #4
  %111 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %call108 = call i64 @pdf_stell(%struct.gx_device_pdf_s* %111) #4
  store i64 %call108, i64* %start, align 8, !tbaa !7
  %112 = load i32 (%struct.gx_device_pdf_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gs_image1_s*, %struct.pdf_image_writer_s*, i32)*, i32 (%struct.gx_device_pdf_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gs_image1_s*, %struct.pdf_image_writer_s*, i32)** %copy_data, align 8, !tbaa !1
  %113 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %114 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !1
  %data109 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %114, i32 0, i32 0
  %115 = load i8*, i8** %data109, align 8, !tbaa !113
  %116 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !1
  %raster110 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %116, i32 0, i32 1
  %117 = load i32, i32* %raster110, align 4, !tbaa !114
  %118 = load i64, i64* %tile_id, align 8, !tbaa !7
  %119 = load i32, i32* %tw, align 4, !tbaa !5
  %120 = load i32, i32* %th, align 4, !tbaa !5
  %call111 = call i32 %112(%struct.gx_device_pdf_s* %113, i8* %115, i32 0, i32 %117, i64 %118, i32 0, i32 0, i32 %119, i32 %120, %struct.gs_image1_s* %image, %struct.pdf_image_writer_s* %writer, i32 -1) #4
  store i32 %call111, i32* %code33, align 4, !tbaa !5
  %121 = load i32, i32* %code33, align 4, !tbaa !5
  switch i32 %121, label %sw.default [
    i32 1, label %sw.epilog
    i32 0, label %sw.bb
  ]

sw.default:                                       ; preds = %if.else.105
  %122 = load i32, i32* %code33, align 4, !tbaa !5
  store i32 %122, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb:                                            ; preds = %if.else.105
  store i32 -100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %if.else.105
  %123 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %call112 = call i64 @pdf_stell(%struct.gx_device_pdf_s* %123) #4
  store i64 %call112, i64* %end, align 8, !tbaa !7
  %124 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call113 = call i32 @stream_puts(%struct.stream_s* %124, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0)) #4
  %125 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %call114 = call i32 @pdf_end_resource(%struct.gx_device_pdf_s* %125, i32 2) #4
  %126 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %127 = load i64, i64* %length_id, align 8, !tbaa !7
  %call115 = call i64 @pdf_open_separate(%struct.gx_device_pdf_s* %126, i64 %127, i32 34) #4
  %128 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %strm116 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %128, i32 0, i32 47
  %129 = load %struct.stream_s*, %struct.stream_s** %strm116, align 8, !tbaa !66
  %130 = load i64, i64* %end, align 8, !tbaa !7
  %131 = load i64, i64* %start, align 8, !tbaa !7
  %sub = sub nsw i64 %130, %131
  %call117 = call i8* @pprintld1(%struct.stream_s* %129, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i64 %sub) #4
  %132 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %call118 = call i32 @pdf_end_separate(%struct.gx_device_pdf_s* %132, i32 34) #4
  br label %if.end.119

if.end.119:                                       ; preds = %sw.epilog, %if.end.103
  %133 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %object = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %133, i32 0, i32 7
  %134 = load %struct.cos_object_s*, %struct.cos_object_s** %object, align 8, !tbaa !116
  %written = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %134, i32 0, i32 8
  store i8 1, i8* %written, align 1, !tbaa !118
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.70, %if.then.60, %if.then.55, %if.end.119, %sw.bb, %sw.default
  %135 = bitcast i64* %tile_id to i8*
  call void @llvm.lifetime.end(i64 8, i8* %135) #1
  %136 = bitcast i32* %in_line to i8*
  call void @llvm.lifetime.end(i64 4, i8* %136) #1
  %137 = bitcast i64* %image_bytes to i8*
  call void @llvm.lifetime.end(i64 8, i8* %137) #1
  %138 = bitcast %struct.pdf_image_writer_s* %writer to i8*
  call void @llvm.lifetime.end(i64 192, i8* %138) #1
  %139 = bitcast %struct.gs_image1_s* %image to i8*
  call void @llvm.lifetime.end(i64 600, i8* %139) #1
  %140 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %140) #1
  %141 = bitcast i64* %end to i8*
  call void @llvm.lifetime.end(i64 8, i8* %141) #1
  %142 = bitcast i64* %start to i8*
  call void @llvm.lifetime.end(i64 8, i8* %142) #1
  %143 = bitcast i64* %length_id to i8*
  call void @llvm.lifetime.end(i64 8, i8* %143) #1
  %144 = bitcast i64* %image_id to i8*
  call void @llvm.lifetime.end(i64 8, i8* %144) #1
  %145 = bitcast i32* %code33 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %145) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.178 [
    i32 0, label %cleanup.cont
    i32 2, label %use_default
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.130

if.end.130:                                       ; preds = %cleanup.cont, %if.end.29
  %146 = bitcast i32* %code131 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %146) #1
  %147 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %call132 = call i32 @pdf_open_page(%struct.gx_device_pdf_s* %147, i32 1) #4
  store i32 %call132, i32* %code131, align 4, !tbaa !5
  %148 = bitcast %struct.stream_s** %s133 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %148) #1
  %149 = load i32, i32* %code131, align 4, !tbaa !5
  %cmp134 = icmp slt i32 %149, 0
  br i1 %cmp134, label %if.then.136, label %if.end.137

if.then.136:                                      ; preds = %if.end.130
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.173

if.end.137:                                       ; preds = %if.end.130
  %150 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %call138 = call i32 @pdf_put_clip_path(%struct.gx_device_pdf_s* %150, %struct.gx_clip_path_s* null) #4
  store i32 %call138, i32* %code131, align 4, !tbaa !5
  %151 = load i32, i32* %code131, align 4, !tbaa !5
  %cmp139 = icmp slt i32 %151, 0
  br i1 %cmp139, label %if.then.141, label %if.end.142

if.then.141:                                      ; preds = %if.end.137
  %152 = load i32, i32* %code131, align 4, !tbaa !5
  store i32 %152, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.173

if.end.142:                                       ; preds = %if.end.137
  %153 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %strm143 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %153, i32 0, i32 47
  %154 = load %struct.stream_s*, %struct.stream_s** %strm143, align 8, !tbaa !66
  store %struct.stream_s* %154, %struct.stream_s** %s133, align 8, !tbaa !1
  %155 = load %struct.stream_s*, %struct.stream_s** %s133, align 8, !tbaa !1
  %156 = load double, double* %xscale, align 8, !tbaa !65
  %157 = load double, double* %yscale, align 8, !tbaa !65
  %call144 = call i8* @pprintg2(%struct.stream_s* %155, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i32 0, i32 0), double %156, double %157) #4
  %158 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %call145 = call i32 @cos_value_write(%struct.cos_value_s* %cs_value, %struct.gx_device_pdf_s* %158) #4
  %159 = load %struct.stream_s*, %struct.stream_s** %s133, align 8, !tbaa !1
  %call146 = call i32 @stream_puts(%struct.stream_s* %159, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0)) #4
  %160 = load i32, i32* %mask, align 4, !tbaa !5
  %tobool147 = icmp ne i32 %160, 0
  br i1 %tobool147, label %if.then.148, label %if.end.161

if.then.148:                                      ; preds = %if.end.142
  %161 = load %struct.stream_s*, %struct.stream_s** %s133, align 8, !tbaa !1
  %162 = load i64, i64* %color1.addr, align 8, !tbaa !7
  %shr = lshr i64 %162, 16
  %conv149 = trunc i64 %shr to i32
  %conv150 = sitofp i32 %conv149 to double
  %div151 = fdiv double %conv150, 2.550000e+02
  %163 = load i64, i64* %color1.addr, align 8, !tbaa !7
  %shr152 = lshr i64 %163, 8
  %and = and i64 %shr152, 255
  %conv153 = trunc i64 %and to i32
  %conv154 = sitofp i32 %conv153 to double
  %div155 = fdiv double %conv154, 2.550000e+02
  %164 = load i64, i64* %color1.addr, align 8, !tbaa !7
  %and156 = and i64 %164, 255
  %conv157 = trunc i64 %and156 to i32
  %conv158 = sitofp i32 %conv157 to double
  %div159 = fdiv double %conv158, 2.550000e+02
  %call160 = call i8* @pprintg3(%struct.stream_s* %161, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), double %div151, double %div155, double %div159) #4
  br label %if.end.161

if.end.161:                                       ; preds = %if.then.148, %if.end.142
  %165 = load %struct.stream_s*, %struct.stream_s** %s133, align 8, !tbaa !1
  %166 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %call162 = call i64 @pdf_resource_id(%struct.pdf_resource_s* %166) #4
  %call163 = call i8* @pprintld1(%struct.stream_s* %165, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i64 %call162) #4
  %167 = load %struct.stream_s*, %struct.stream_s** %s133, align 8, !tbaa !1
  %168 = load i32, i32* %x.addr, align 4, !tbaa !5
  %conv164 = sitofp i32 %168 to double
  %169 = load double, double* %xscale, align 8, !tbaa !65
  %div165 = fdiv double %conv164, %169
  %170 = load i32, i32* %y.addr, align 4, !tbaa !5
  %conv166 = sitofp i32 %170 to double
  %171 = load double, double* %yscale, align 8, !tbaa !65
  %div167 = fdiv double %conv166, %171
  %172 = load i32, i32* %w.addr, align 4, !tbaa !5
  %conv168 = sitofp i32 %172 to double
  %173 = load double, double* %xscale, align 8, !tbaa !65
  %div169 = fdiv double %conv168, %173
  %174 = load i32, i32* %h.addr, align 4, !tbaa !5
  %conv170 = sitofp i32 %174 to double
  %175 = load double, double* %xscale, align 8, !tbaa !65
  %div171 = fdiv double %conv170, %175
  %call172 = call i8* @pprintg4(%struct.stream_s* %167, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i32 0, i32 0), double %div165, double %div167, double %div169, double %div171) #4
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.173

cleanup.173:                                      ; preds = %if.then.136, %if.end.161, %if.then.141
  %176 = bitcast %struct.stream_s** %s133 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %176) #1
  %177 = bitcast i32* %code131 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %177) #1
  %cleanup.dest.175 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.175, label %cleanup.178 [
    i32 0, label %cleanup.cont.176
    i32 2, label %use_default
  ]

cleanup.cont.176:                                 ; preds = %cleanup.173
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.178

use_default:                                      ; preds = %cleanup.173, %cleanup, %if.then.28, %if.then
  %178 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %179 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !1
  %180 = load i32, i32* %x.addr, align 4, !tbaa !5
  %181 = load i32, i32* %y.addr, align 4, !tbaa !5
  %182 = load i32, i32* %w.addr, align 4, !tbaa !5
  %183 = load i32, i32* %h.addr, align 4, !tbaa !5
  %184 = load i64, i64* %color0.addr, align 8, !tbaa !7
  %185 = load i64, i64* %color1.addr, align 8, !tbaa !7
  %186 = load i32, i32* %px.addr, align 4, !tbaa !5
  %187 = load i32, i32* %py.addr, align 4, !tbaa !5
  %call177 = call i32 @gx_default_strip_tile_rectangle(%struct.gx_device_s* %178, %struct.gx_strip_bitmap_s* %179, i32 %180, i32 %181, i32 %182, i32 %183, i64 %184, i64 %185, i32 %186, i32 %187) #4
  store i32 %call177, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.178

cleanup.178:                                      ; preds = %use_default, %cleanup.cont.176, %cleanup.173, %cleanup
  %188 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %188) #1
  %189 = bitcast %struct.cos_value_s* %cs_value to i8*
  call void @llvm.lifetime.end(i64 24, i8* %189) #1
  %190 = bitcast %struct.pdf_resource_s** %pres to i8*
  call void @llvm.lifetime.end(i64 8, i8* %190) #1
  %191 = bitcast i32 (%struct.gx_device_pdf_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gs_image1_s*, %struct.pdf_image_writer_s*, i32)** %copy_data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %191) #1
  %192 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %192) #1
  %193 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %193) #1
  %194 = bitcast double* %yscale to i8*
  call void @llvm.lifetime.end(i64 8, i8* %194) #1
  %195 = bitcast double* %xscale to i8*
  call void @llvm.lifetime.end(i64 8, i8* %195) #1
  %196 = bitcast i32* %th to i8*
  call void @llvm.lifetime.end(i64 4, i8* %196) #1
  %197 = bitcast i32* %tw to i8*
  call void @llvm.lifetime.end(i64 4, i8* %197) #1
  %198 = bitcast %struct.gx_device_pdf_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %198) #1
  %199 = load i32, i32* %retval
  ret i32 %199
}

; Function Attrs: nounwind uwtable
define internal i32 @pdf_copy_mask_data(%struct.gx_device_pdf_s* %pdev, i8* %base, i32 %sourcex, i32 %raster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h, %struct.gs_image1_s* %pim, %struct.pdf_image_writer_s* %piw, i32 %for_pattern) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %base.addr = alloca i8*, align 8
  %sourcex.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %pim.addr = alloca %struct.gs_image1_s*, align 8
  %piw.addr = alloca %struct.pdf_image_writer_s*, align 8
  %for_pattern.addr = alloca i32, align 4
  %nbytes = alloca i64, align 8
  %code = alloca i32, align 4
  %row_base = alloca i8*, align 8
  %row_step = alloca i32, align 4
  %in_line = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store i8* %base, i8** %base.addr, align 8, !tbaa !1
  store i32 %sourcex, i32* %sourcex.addr, align 4, !tbaa !5
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !5
  store i64 %id, i64* %id.addr, align 8, !tbaa !7
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  store %struct.gs_image1_s* %pim, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  store %struct.pdf_image_writer_s* %piw, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  store i32 %for_pattern, i32* %for_pattern.addr, align 4, !tbaa !5
  %0 = bitcast i64* %nbytes to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i8** %row_base to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i32* %row_step to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %in_line to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  call void @gs_image_t_init_mask_adjust(%struct.gs_image1_s* %5, i32 1, i32 1) #4
  %6 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %7 = load i32, i32* %x.addr, align 4, !tbaa !5
  %8 = load i32, i32* %y.addr, align 4, !tbaa !5
  %9 = load i32, i32* %w.addr, align 4, !tbaa !5
  %10 = load i32, i32* %h.addr, align 4, !tbaa !5
  call void @pdf_make_bitmap_image(%struct.gs_image1_s* %6, i32 %7, i32 %8, i32 %9, i32 %10) #4
  %11 = load i32, i32* %w.addr, align 4, !tbaa !5
  %conv = sext i32 %11 to i64
  %12 = load i32, i32* %h.addr, align 4, !tbaa !5
  %conv1 = sext i32 %12 to i64
  %mul = mul i64 %conv, %conv1
  %add = add i64 %mul, 7
  %div = udiv i64 %add, 8
  store i64 %div, i64* %nbytes, align 8, !tbaa !7
  %13 = load i32, i32* %for_pattern.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %14 = load i8*, i8** %base.addr, align 8, !tbaa !1
  %15 = load i32, i32* %h.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %15, 1
  %16 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %mul2 = mul nsw i32 %sub, %16
  %idx.ext = sext i32 %mul2 to i64
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 %idx.ext
  store i8* %add.ptr, i8** %row_base, align 8, !tbaa !1
  %17 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %sub3 = sub nsw i32 0, %17
  store i32 %sub3, i32* %row_step, align 4, !tbaa !5
  %18 = load i32, i32* %for_pattern.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %18, 0
  %conv4 = zext i1 %cmp to i32
  store i32 %conv4, i32* %in_line, align 4, !tbaa !5
  br label %if.end.14

if.else:                                          ; preds = %entry
  %19 = load i8*, i8** %base.addr, align 8, !tbaa !1
  store i8* %19, i8** %row_base, align 8, !tbaa !1
  %20 = load i32, i32* %raster.addr, align 4, !tbaa !5
  store i32 %20, i32* %row_step, align 4, !tbaa !5
  %21 = load i64, i64* %nbytes, align 8, !tbaa !7
  %22 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %MaxInlineImageSize = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %22, i32 0, i32 113
  %23 = load i64, i64* %MaxInlineImageSize, align 8, !tbaa !81
  %cmp5 = icmp ult i64 %21, %23
  %conv6 = zext i1 %cmp5 to i32
  store i32 %conv6, i32* %in_line, align 4, !tbaa !5
  %24 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %25 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %ImageMatrix = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %25, i32 0, i32 1
  call void @pdf_put_image_matrix(%struct.gx_device_pdf_s* %24, %struct.gs_matrix_s* %ImageMatrix, double 1.000000e+00) #4
  %26 = load i64, i64* %id.addr, align 8, !tbaa !7
  %cmp7 = icmp ne i64 %26, 0
  br i1 %cmp7, label %if.then.9, label %if.end.13

if.then.9:                                        ; preds = %if.else
  %27 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %28 = load i64, i64* %id.addr, align 8, !tbaa !7
  %call = call %struct.pdf_resource_s* @pdf_find_resource_by_gs_id(%struct.gx_device_pdf_s* %27, i32 4, i64 %28) #4
  %29 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %pres = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %29, i32 0, i32 3
  store %struct.pdf_resource_s* %call, %struct.pdf_resource_s** %pres, align 8, !tbaa !94
  %30 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %pres10 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %30, i32 0, i32 3
  %31 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres10, align 8, !tbaa !94
  %tobool11 = icmp ne %struct.pdf_resource_s* %31, null
  br i1 %tobool11, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %if.then.9
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then.9
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %if.else
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.then
  %32 = load i32, i32* %for_pattern.addr, align 4, !tbaa !5
  %cmp15 = icmp slt i32 %32, 0
  br i1 %cmp15, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %if.end.14
  %33 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %33, i32 0, i32 47
  %34 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !66
  %call18 = call i32 @stream_puts(%struct.stream_s* %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0)) #4
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.17, %if.end.14
  %35 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  call void @pdf_image_writer_init(%struct.pdf_image_writer_s* %35) #4
  %36 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %CompatibilityLevel = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %36, i32 0, i32 75
  %37 = load double, double* %CompatibilityLevel, align 8, !tbaa !89
  %38 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %ParamCompatibilityLevel = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %38, i32 0, i32 72
  store double %37, double* %ParamCompatibilityLevel, align 8, !tbaa !90
  %39 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %40 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %41 = load i64, i64* %id.addr, align 8, !tbaa !7
  %42 = load i32, i32* %w.addr, align 4, !tbaa !5
  %43 = load i32, i32* %h.addr, align 4, !tbaa !5
  %44 = load i32, i32* %in_line, align 4, !tbaa !5
  %call20 = call i32 @pdf_begin_write_image(%struct.gx_device_pdf_s* %39, %struct.pdf_image_writer_s* %40, i64 %41, i32 %42, i32 %43, %struct.cos_dict_s* null, i32 %44) #4
  store i32 %call20, i32* %code, align 4, !tbaa !5
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.then.30, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.19
  %45 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %46 = bitcast %struct.gx_device_pdf_s* %45 to %struct.gx_device_psdf_s*
  %47 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %binary = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %47, i32 0, i32 0
  %arrayidx = getelementptr inbounds [4 x %struct.psdf_binary_writer_s], [4 x %struct.psdf_binary_writer_s]* %binary, i32 0, i64 0
  %48 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %49 = bitcast %struct.gs_image1_s* %48 to %struct.gs_pixel_image_s*
  %50 = load i32, i32* %in_line, align 4, !tbaa !5
  %call23 = call i32 @psdf_setup_lossless_filters(%struct.gx_device_psdf_s* %46, %struct.psdf_binary_writer_s* %arrayidx, %struct.gs_pixel_image_s* %49, i32 %50) #4
  store i32 %call23, i32* %code, align 4, !tbaa !5
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.then.30, label %lor.lhs.false.26

lor.lhs.false.26:                                 ; preds = %lor.lhs.false
  %51 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %52 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %53 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %54 = bitcast %struct.gs_image1_s* %53 to %struct.gs_pixel_image_s*
  %call27 = call i32 @pdf_begin_image_data(%struct.gx_device_pdf_s* %51, %struct.pdf_image_writer_s* %52, %struct.gs_pixel_image_s* %54, %struct.cos_value_s* null, i32 0) #4
  store i32 %call27, i32* %code, align 4, !tbaa !5
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %lor.lhs.false.26, %lor.lhs.false, %if.end.19
  %55 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %55, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.31:                                        ; preds = %lor.lhs.false.26
  %56 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %binary32 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %56, i32 0, i32 0
  %arrayidx33 = getelementptr inbounds [4 x %struct.psdf_binary_writer_s], [4 x %struct.psdf_binary_writer_s]* %binary32, i32 0, i64 0
  %strm34 = getelementptr inbounds %struct.psdf_binary_writer_s, %struct.psdf_binary_writer_s* %arrayidx33, i32 0, i32 2
  %57 = load %struct.stream_s*, %struct.stream_s** %strm34, align 8, !tbaa !91
  %58 = load i8*, i8** %row_base, align 8, !tbaa !1
  %59 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %60 = load i32, i32* %row_step, align 4, !tbaa !5
  %61 = load i32, i32* %w.addr, align 4, !tbaa !5
  %62 = load i32, i32* %h.addr, align 4, !tbaa !5
  %call35 = call i32 @pdf_copy_mask_bits(%struct.stream_s* %57, i8* %58, i32 %59, i32 %60, i32 %61, i32 %62, i8 zeroext 0) #4
  %63 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %64 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %65 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %65, i32 0, i32 4
  %66 = load i32, i32* %height, align 4, !tbaa !93
  %call36 = call i32 @pdf_end_image_binary(%struct.gx_device_pdf_s* %63, %struct.pdf_image_writer_s* %64, i32 %66) #4
  %67 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %68 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %call37 = call i32 @pdf_end_write_image(%struct.gx_device_pdf_s* %67, %struct.pdf_image_writer_s* %68) #4
  store i32 %call37, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.31, %if.then.30, %if.then.12
  %69 = bitcast i32* %in_line to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #1
  %70 = bitcast i32* %row_step to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #1
  %71 = bitcast i8** %row_base to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #1
  %72 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #1
  %73 = bitcast i64* %nbytes to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #1
  %74 = load i32, i32* %retval
  ret i32 %74
}

declare i32 @pdf_cs_Pattern_uncolored(%struct.gx_device_pdf_s*, %struct.cos_value_s*) #2

declare i32 @pdf_cs_Pattern_colored(%struct.gx_device_pdf_s*, %struct.cos_value_s*) #2

declare i64 @pdf_resource_id(%struct.pdf_resource_s*) #2

declare i32 @pdf_begin_resource(%struct.gx_device_pdf_s*, i32, i64, %struct.pdf_resource_s**) #2

declare i8* @pprintd1(%struct.stream_s*, i8*, i32) #2

declare i8* @pprintld2(%struct.stream_s*, i8*, i64, i64) #2

declare i8* @pprints1(%struct.stream_s*, i8*, i8*) #2

declare i8* @pprintg2(%struct.stream_s*, i8*, double, double) #2

declare i32 @gs_sprintf(i8*, i8*, ...) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare i32 @pdf_end_resource(%struct.gx_device_pdf_s*, i32) #2

declare i64 @pdf_obj_ref(%struct.gx_device_pdf_s*) #2

declare i8* @pprintld1(%struct.stream_s*, i8*, i64) #2

declare i64 @pdf_stell(%struct.gx_device_pdf_s*) #2

declare i64 @pdf_open_separate(%struct.gx_device_pdf_s*, i64, i32) #2

declare i32 @pdf_end_separate(%struct.gx_device_pdf_s*, i32) #2

declare i32 @cos_value_write(%struct.cos_value_s*, %struct.gx_device_pdf_s*) #2

declare i8* @pprintg3(%struct.stream_s*, i8*, double, double, double) #2

declare i8* @pprintg4(%struct.stream_s*, i8*, double, double, double, double) #2

declare i32 @gx_default_strip_tile_rectangle(%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32) #2

declare i32 @pdf_must_put_clip_path(%struct.gx_device_pdf_s*, %struct.gx_clip_path_s*) #2

declare void @gs_image_t_init_mask_adjust(%struct.gs_image1_s*, i32, i32) #2

declare i32 @pdf_begin_char_proc(%struct.gx_device_pdf_s*, i32, i32, i32, i32, i32, i64, %struct.pdf_char_proc_s**, %struct.pdf_stream_position_s*) #2

declare double @psdf_round(double, i32, i32) #2

declare i8* @pprintg1(%struct.stream_s*, i8*, double) #2

declare i8* @pprintd4(%struct.stream_s*, i8*, i32, i32, i32, i32) #2

; Function Attrs: nounwind uwtable
define internal void @set_image_color(%struct.gx_device_pdf_s* %pdev, i64 %c) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %c.addr = alloca i64, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store i64 %c, i64* %c.addr, align 8, !tbaa !7
  %0 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %1 = load i64, i64* %c.addr, align 8, !tbaa !7
  %2 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %saved_fill_color = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %2, i32 0, i32 56
  %3 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %fill_used_process_color = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %3, i32 0, i32 54
  %call = call i32 @pdf_set_pure_color(%struct.gx_device_pdf_s* %0, i64 %1, %struct.gx_hl_saved_color_s* %saved_fill_color, i32* %fill_used_process_color, %struct.psdf_set_color_commands_s* @psdf_set_fill_color_commands) #4
  %4 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %HaveStrokeColor = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %4, i32 0, i32 104
  %5 = load i32, i32* %HaveStrokeColor, align 4, !tbaa !121
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %6 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %7 = load i64, i64* %c.addr, align 8, !tbaa !7
  %8 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %saved_stroke_color = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %8, i32 0, i32 57
  %9 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %stroke_used_process_color = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %9, i32 0, i32 55
  %call1 = call i32 @pdf_set_pure_color(%struct.gx_device_pdf_s* %6, i64 %7, %struct.gx_hl_saved_color_s* %saved_stroke_color, i32* %stroke_used_process_color, %struct.psdf_set_color_commands_s* @psdf_set_stroke_color_commands) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @pdf_charproc_x_offset(%struct.pdf_char_proc_s*) #2

declare i32 @pdf_charproc_y_offset(%struct.pdf_char_proc_s*) #2

declare %struct.gs_color_space_s* @gs_cspace_new_DeviceGray(%struct.gs_memory_s*) #2

declare i64 @psdf_adjust_color_index(%struct.gx_device_vector_s*, i64) #2

declare %struct.gs_color_space_s* @gs_cspace_alloc(%struct.gs_memory_s*, %struct.gs_color_space_type_s*) #2

declare void @rc_decrement_cs(%struct.gs_color_space_s*, i8*) #2

declare i32 @psdf_CFE_binary(%struct.psdf_binary_writer_s*, i32, i32, i32) #2

declare i32 @pdf_copy_mask_bits(%struct.stream_s*, i8*, i32, i32, i32, i32, i8 zeroext) #2

declare i32 @pdf_end_char_proc(%struct.gx_device_pdf_s*, %struct.pdf_stream_position_s*) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @pdf_do_char_image(%struct.gx_device_pdf_s*, %struct.pdf_char_proc_s*, %struct.gs_matrix_s*) #2

declare i32 @pdf_set_pure_color(%struct.gx_device_pdf_s*, i64, %struct.gx_hl_saved_color_s*, i32*, %struct.psdf_set_color_commands_s*) #2

declare void @pdf_make_bitmap_matrix(%struct.gs_matrix_s*, i32, i32, i32, i32, i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin }
attributes #5 = { nobuiltin nounwind readonly }

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
!10 = !{!11, !2, i64 28840}
!11 = !{!"gx_device_pdf_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !12, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !13, i64 96, !16, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !8, i64 928, !8, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !8, i64 968, !8, i64 976, !17, i64 984, !6, i64 1052, !6, i64 1056, !18, i64 1064, !2, i64 1104, !3, i64 1112, !20, i64 1120, !21, i64 1144, !2, i64 1728, !2, i64 1736, !3, i64 1744, !2, i64 5840, !2, i64 5848, !2, i64 5856, !6, i64 5864, !6, i64 5868, !22, i64 5872, !2, i64 7488, !6, i64 7496, !6, i64 7500, !6, i64 7504, !35, i64 7512, !35, i64 8144, !8, i64 8776, !8, i64 8784, !3, i64 8792, !3, i64 8796, !28, i64 8800, !6, i64 8816, !2, i64 8824, !8, i64 8832, !8, i64 8840, !3, i64 8848, !6, i64 8852, !6, i64 8856, !6, i64 8860, !6, i64 8864, !29, i64 8872, !40, i64 8880, !6, i64 9360, !29, i64 9368, !6, i64 9376, !6, i64 9380, !6, i64 9384, !6, i64 9388, !6, i64 9392, !6, i64 9396, !6, i64 9400, !6, i64 9404, !6, i64 9408, !6, i64 9412, !6, i64 9416, !6, i64 9420, !45, i64 9424, !45, i64 9440, !6, i64 9456, !6, i64 9460, !6, i64 9464, !8, i64 9472, !6, i64 9480, !6, i64 9484, !44, i64 9488, !44, i64 9504, !6, i64 9520, !6, i64 9524, !6, i64 9528, !6, i64 9532, !6, i64 9536, !6, i64 9540, !6, i64 9544, !6, i64 9548, !6, i64 9552, !6, i64 9556, !6, i64 9560, !6, i64 9564, !6, i64 9568, !8, i64 9576, !8, i64 9584, !8, i64 9592, !46, i64 9600, !44, i64 9616, !44, i64 9632, !6, i64 9648, !6, i64 9652, !6, i64 9656, !44, i64 9664, !6, i64 9680, !6, i64 9684, !3, i64 9688, !3, i64 9720, !3, i64 9752, !6, i64 9768, !6, i64 9772, !6, i64 9776, !47, i64 9784, !48, i64 9816, !48, i64 9856, !6, i64 9896, !6, i64 9900, !6, i64 9904, !6, i64 9908, !6, i64 9912, !8, i64 9920, !3, i64 9928, !6, i64 9960, !8, i64 9968, !8, i64 9976, !3, i64 9984, !3, i64 9988, !49, i64 9992, !49, i64 14120, !49, i64 18248, !49, i64 22376, !8, i64 26504, !2, i64 26512, !2, i64 26520, !2, i64 26528, !8, i64 26536, !6, i64 26544, !6, i64 26548, !8, i64 26552, !3, i64 26560, !8, i64 26568, !8, i64 26576, !3, i64 26584, !2, i64 26592, !50, i64 26600, !2, i64 26648, !6, i64 26656, !8, i64 26664, !3, i64 26672, !3, i64 28592, !3, i64 28632, !2, i64 28648, !2, i64 28656, !8, i64 28664, !2, i64 28672, !6, i64 28680, !6, i64 28684, !6, i64 28688, !6, i64 28692, !2, i64 28696, !2, i64 28704, !2, i64 28712, !3, i64 28720, !3, i64 28736, !2, i64 28752, !2, i64 28760, !2, i64 28768, !2, i64 28776, !2, i64 28784, !28, i64 28792, !2, i64 28808, !2, i64 28816, !6, i64 28824, !2, i64 28832, !2, i64 28840, !2, i64 28848, !6, i64 28856, !6, i64 28860, !6, i64 28864, !51, i64 28872, !6, i64 30384, !6, i64 30388, !6, i64 30392, !2, i64 30400, !6, i64 30408, !6, i64 30412, !6, i64 30416, !25, i64 30420, !2, i64 30448, !3, i64 30456, !6, i64 30460, !6, i64 30464, !2, i64 30472, !2, i64 30480, !27, i64 30488, !6, i64 30524, !47, i64 30528, !6, i64 30560, !6, i64 30564, !6, i64 30568, !2, i64 30576, !6, i64 30584, !6, i64 30588, !8, i64 30592, !6, i64 30600, !6, i64 30604, !6, i64 30608, !25, i64 30612, !29, i64 30640, !2, i64 30648, !41, i64 30656, !6, i64 30672, !2, i64 30680, !6, i64 30688, !6, i64 30692, !6, i64 30696, !6, i64 30700, !6, i64 30704, !6, i64 30708, !6, i64 30712, !6, i64 30716, !6, i64 30720, !6, i64 30724, !6, i64 30728, !6, i64 30732, !6, i64 30736, !6, i64 30740, !6, i64 30744, !6, i64 30748, !6, i64 30752, !6, i64 30756, !6, i64 30760, !6, i64 30764, !6, i64 30768, !6, i64 30772, !2, i64 30776, !6, i64 30784, !6, i64 30788}
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
!22 = !{!"gs_imager_state_s", !6, i64 0, !2, i64 8, !2, i64 16, !23, i64 24, !6, i64 128, !27, i64 132, !6, i64 168, !28, i64 176, !28, i64 192, !6, i64 208, !6, i64 212, !14, i64 216, !3, i64 220, !30, i64 224, !30, i64 228, !31, i64 232, !8, i64 240, !6, i64 248, !6, i64 252, !6, i64 256, !2, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !24, i64 296, !32, i64 300, !6, i64 308, !6, i64 312, !6, i64 316, !24, i64 320, !6, i64 324, !6, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !6, i64 408, !2, i64 416, !2, i64 424, !33, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !34, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !34, i64 1336}
!23 = !{!"gx_line_params_s", !24, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !6, i64 20, !24, i64 24, !24, i64 28, !24, i64 32, !6, i64 36, !25, i64 40, !26, i64 64}
!24 = !{!"float", !3, i64 0}
!25 = !{!"gs_matrix_s", !24, i64 0, !24, i64 4, !24, i64 8, !24, i64 12, !24, i64 16, !24, i64 20}
!26 = !{!"gx_dash_params_s", !2, i64 0, !6, i64 8, !24, i64 12, !6, i64 16, !24, i64 20, !6, i64 24, !6, i64 28, !24, i64 32}
!27 = !{!"gs_matrix_fixed_s", !24, i64 0, !24, i64 4, !24, i64 8, !24, i64 12, !24, i64 16, !24, i64 20, !6, i64 24, !6, i64 28, !6, i64 32}
!28 = !{!"gs_point_s", !29, i64 0, !29, i64 8}
!29 = !{!"double", !3, i64 0}
!30 = !{!"gs_transparency_source_s", !24, i64 0}
!31 = !{!"gs_xstate_trans_flags", !6, i64 0, !6, i64 4}
!32 = !{!"gs_fixed_point_s", !6, i64 0, !6, i64 4}
!33 = !{!"gx_transfer_s", !6, i64 0, !2, i64 8, !6, i64 16, !2, i64 24, !6, i64 32, !2, i64 40, !6, i64 48, !2, i64 56}
!34 = !{!"gs_devicen_color_map_s", !6, i64 0, !3, i64 4, !6, i64 8, !6, i64 12, !8, i64 16, !3, i64 24}
!35 = !{!"gx_hl_saved_color_s", !8, i64 0, !8, i64 8, !6, i64 16, !36, i64 24, !38, i64 288}
!36 = !{!"gs_client_color_s", !2, i64 0, !37, i64 8}
!37 = !{!"gs_paint_color_s", !3, i64 0}
!38 = !{!"gx_device_color_saved_s", !2, i64 0, !3, i64 8, !39, i64 336}
!39 = !{!"gs_int_point_s", !6, i64 0, !6, i64 4}
!40 = !{!"psdf_distiller_params_s", !6, i64 0, !3, i64 4, !3, i64 8, !6, i64 12, !3, i64 16, !6, i64 20, !6, i64 24, !8, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !41, i64 64, !41, i64 80, !41, i64 96, !41, i64 112, !3, i64 128, !6, i64 132, !6, i64 136, !3, i64 140, !3, i64 144, !42, i64 152, !6, i64 232, !6, i64 236, !42, i64 240, !42, i64 320, !43, i64 400, !43, i64 416, !3, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !44, i64 448, !43, i64 464}
!41 = !{!"gs_const_string_s", !2, i64 0, !6, i64 8}
!42 = !{!"psdf_image_params_s", !2, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !2, i64 24, !6, i64 32, !24, i64 36, !3, i64 40, !6, i64 44, !2, i64 48, !6, i64 56, !2, i64 64, !2, i64 72}
!43 = !{!"gs_param_string_array_s", !2, i64 0, !6, i64 8, !6, i64 12}
!44 = !{!"gs_param_string_s", !2, i64 0, !6, i64 8, !6, i64 12}
!45 = !{!"gs_param_float_array_s", !2, i64 0, !6, i64 8, !6, i64 12}
!46 = !{!"gs_param_int_array_s", !2, i64 0, !6, i64 8, !6, i64 12}
!47 = !{!"gs_rect_s", !28, i64 0, !28, i64 16}
!48 = !{!"pdf_page_dsc_info_s", !6, i64 0, !6, i64 4, !47, i64 8}
!49 = !{!"pdf_temp_file_s", !3, i64 0, !2, i64 4096, !2, i64 4104, !2, i64 4112, !2, i64 4120}
!50 = !{!"pdf_text_rotation_s", !3, i64 0, !6, i64 40}
!51 = !{!"pdf_viewer_state_s", !6, i64 0, !3, i64 8, !24, i64 40, !24, i64 44, !3, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !6, i64 80, !24, i64 84, !24, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !35, i64 120, !35, i64 752, !23, i64 1384, !2, i64 1488, !6, i64 1496, !8, i64 1504}
!52 = !{!53, !6, i64 584}
!53 = !{!"gs_show_enum_s", !54, i64 0, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !12, i64 160, !2, i64 184, !2, i64 192, !8, i64 200, !6, i64 208, !55, i64 212, !2, i64 224, !6, i64 232, !6, i64 236, !56, i64 240, !6, i64 344, !6, i64 348, !6, i64 352, !28, i64 360, !8, i64 376, !6, i64 384, !55, i64 388, !28, i64 400, !57, i64 416, !6, i64 448, !2, i64 456, !6, i64 464, !3, i64 468, !2, i64 472, !6, i64 480, !58, i64 484, !58, i64 500, !6, i64 516, !6, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !32, i64 560, !28, i64 568, !6, i64 584, !32, i64 588, !2, i64 600, !3, i64 608, !2, i64 616}
!54 = !{!"gs_text_params_s", !6, i64 0, !3, i64 8, !6, i64 16, !28, i64 24, !28, i64 40, !3, i64 56, !2, i64 64, !2, i64 72, !6, i64 80}
!55 = !{!"gs_log2_scale_point_s", !6, i64 0, !6, i64 4}
!56 = !{!"gx_font_stack_s", !6, i64 0, !3, i64 8}
!57 = !{!"gs_text_returned_s", !8, i64 0, !8, i64 8, !28, i64 16}
!58 = !{!"gs_int_rect_s", !39, i64 0, !39, i64 8}
!59 = !{!53, !29, i64 568}
!60 = !{!11, !29, i64 28792}
!61 = !{!53, !6, i64 560}
!62 = !{!53, !2, i64 104}
!63 = !{!22, !29, i64 176}
!64 = !{!22, !29, i64 184}
!65 = !{!29, !29, i64 0}
!66 = !{!11, !2, i64 5848}
!67 = !{!11, !8, i64 8832}
!68 = !{!11, !8, i64 8840}
!69 = !{!11, !2, i64 24}
!70 = !{!11, !6, i64 100}
!71 = !{!72, !2, i64 40}
!72 = !{!"gs_color_space_s", !2, i64 0, !12, i64 8, !8, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !3, i64 72}
!73 = !{!74, !6, i64 0}
!74 = !{!"gs_indexed_params_s", !6, i64 0, !6, i64 4, !3, i64 8, !6, i64 24}
!75 = !{!74, !6, i64 4}
!76 = !{!41, !2, i64 0}
!77 = !{!41, !6, i64 8}
!78 = !{!74, !6, i64 24}
!79 = !{!80, !6, i64 40}
!80 = !{!"gs_image1_s", !2, i64 0, !25, i64 8, !6, i64 32, !6, i64 36, !6, i64 40, !3, i64 44, !6, i64 564, !3, i64 568, !6, i64 572, !2, i64 576, !6, i64 584, !6, i64 588, !3, i64 592, !3, i64 596}
!81 = !{!11, !8, i64 9592}
!82 = !{!80, !6, i64 584}
!83 = !{!84, !2, i64 136}
!84 = !{!"pdf_image_writer_s", !3, i64 0, !6, i64 128, !2, i64 136, !2, i64 144, !6, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184}
!85 = !{!11, !6, i64 30756}
!86 = !{!24, !24, i64 0}
!87 = !{!80, !6, i64 32}
!88 = !{!80, !6, i64 36}
!89 = !{!11, !29, i64 9368}
!90 = !{!11, !29, i64 8872}
!91 = !{!92, !2, i64 16}
!92 = !{!"psdf_binary_writer_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!93 = !{!84, !6, i64 152}
!94 = !{!84, !2, i64 144}
!95 = !{!84, !2, i64 168}
!96 = !{i64 0, i64 4, !86, i64 4, i64 4, !86, i64 8, i64 4, !86, i64 12, i64 4, !86, i64 16, i64 4, !86, i64 20, i64 4, !86}
!97 = !{!25, !24, i64 0}
!98 = !{!25, !24, i64 4}
!99 = !{!25, !24, i64 8}
!100 = !{!25, !24, i64 12}
!101 = !{!11, !14, i64 108}
!102 = !{!103, !2, i64 0}
!103 = !{!"gx_device_color_s", !2, i64 0, !3, i64 8, !39, i64 352, !6, i64 360, !36, i64 368, !104, i64 632}
!104 = !{!"_mask", !105, i64 0, !8, i64 8, !2, i64 16}
!105 = !{!"mp_", !6, i64 0, !6, i64 4}
!106 = !{!107, !14, i64 32}
!107 = !{!"gx_strip_bitmap_s", !2, i64 0, !6, i64 8, !39, i64 12, !8, i64 24, !14, i64 32, !14, i64 34, !14, i64 36, !14, i64 38, !6, i64 40}
!108 = !{!107, !14, i64 34}
!109 = !{!107, !8, i64 24}
!110 = !{!107, !14, i64 38}
!111 = !{!107, !6, i64 12}
!112 = !{!107, !6, i64 16}
!113 = !{!107, !2, i64 0}
!114 = !{!107, !6, i64 8}
!115 = !{!11, !6, i64 9564}
!116 = !{!117, !2, i64 64}
!117 = !{!"pdf_resource_s", !2, i64 0, !2, i64 8, !8, i64 16, !6, i64 24, !6, i64 28, !3, i64 32, !8, i64 56, !2, i64 64}
!118 = !{!119, !3, i64 50}
!119 = !{!"cos_object_s", !2, i64 0, !8, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !3, i64 48, !3, i64 49, !3, i64 50, !8, i64 56, !2, i64 64, !120, i64 72, !6, i64 160, !3, i64 164, !6, i64 180, !3, i64 184}
!120 = !{!"gs_md5_state_s", !3, i64 0, !3, i64 8, !3, i64 24}
!121 = !{!11, !6, i64 9544}
