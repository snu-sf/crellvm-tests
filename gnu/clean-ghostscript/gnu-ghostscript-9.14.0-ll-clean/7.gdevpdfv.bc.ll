; ModuleID = './gdevpdfv.bc'
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
%struct.gs_pattern1_instance_s = type { %struct.rc_header_s, %struct.gs_pattern_type_s*, %struct.gs_state_s*, i64, %struct.gs_pattern1_template_s, %struct.gs_matrix_s, %struct.gs_rect_s, i32, i32, i32, i32, i32, %struct.gs_int_point_s, i64 }
%struct.gs_pattern1_template_s = type { %struct.gs_pattern_type_s*, i32, %struct.gs_uid_s, i8*, i32, i32, i32, %struct.gs_rect_s, float, float, i32 (%struct.gs_client_color_s*, %struct.gs_state_s*)* }
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
%struct.pdf_color_space_names_s = type { i8*, i8*, i8*, i8* }
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
%struct.cos_stream_s = type { %struct.cos_object_procs_s*, i64, %struct.cos_dict_element_s*, %struct.cos_stream_piece_s*, %struct.gx_device_pdf_s*, %struct.pdf_resource_s*, i8, i8, i8, i64, %struct.stream_s*, %struct.gs_md5_state_s, i32, [16 x i8], i32, [16 x i8] }
%struct.cos_value_s = type { i32, %union.vc_ }
%union.vc_ = type { %struct.gs_string_s }
%struct.pdf_image_writer_s = type { [4 x %struct.psdf_binary_writer_s], i32, %struct.pdf_image_names_s*, %struct.pdf_resource_s*, i32, %struct.cos_stream_s*, i8*, %struct.cos_dict_s*, %struct.pdf_resource_s* }
%struct.psdf_binary_writer_s = type { %struct.gs_memory_s*, %struct.stream_s*, %struct.stream_s*, %struct.gx_device_psdf_s* }
%struct.gx_device_psdf_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gs_memory_s*, %struct.gx_device_vector_procs_s*, [4096 x i8], %struct._IO_FILE*, %struct.stream_s*, i8*, i32, i32, %struct.gs_imager_state_s, float*, i32, i32, i32, %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s, i64, i64, i32, i32, %struct.gs_point_s, i32, %struct.gx_device_bbox_s*, i64, i64, i32, i32, i32, i32, i32, double, %struct.psdf_distiller_params_s }
%struct.pdf_image_names_s = type { %struct.pdf_color_space_names_s, %struct.pdf_filter_names_s, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.pdf_filter_names_s = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.gs_data_image_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, i32, i32, i32, [130 x float], i32 }
%struct.gs_pixel_image_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, i32, i32, i32, [130 x float], i32, i32, i32, %struct.gs_color_space_s* }
%struct._pat = type { %struct.gx_color_tile_s* }
%struct.gs_pattern2_instance_s = type { %struct.rc_header_s, %struct.gs_pattern_type_s*, %struct.gs_state_s*, i64, %struct.gs_pattern2_template_s, i32 }
%struct.gs_pattern2_template_s = type { %struct.gs_pattern_type_s*, i32, %struct.gs_uid_s, i8*, %struct.gs_shading_s* }
%struct.gs_shading_s = type { %struct.gs_shading_head_s, %struct.gs_shading_params_s }
%struct.gs_shading_head_s = type { i32, %struct.gs_shading_procs_s }
%struct.gs_shading_procs_s = type { i32 (%struct.gs_shading_s*, %struct.gs_rect_s*, %struct.gs_fixed_rect_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*)* }
%struct.gs_shading_params_s = type { %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_client_color_s*, i32, %struct.gs_rect_s, i32 }
%struct.gs_shading_mesh_params_s = type { %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_client_color_s*, i32, %struct.gs_rect_s, i32, %struct.gs_data_source_s, i32, i32, float*, %struct.gs_function_s* }
%struct.gs_data_source_s = type { i32 (%struct.gs_data_source_s*, i64, i32, i8*, i8**)*, i32, %union.d_ }
%union.d_ = type { %struct.gs_const_string_s }
%struct.gs_function_s = type { %struct.gs_function_head_s, %struct.gs_function_params_s }
%struct.gs_function_head_s = type { i32, %struct.gs_function_procs_s }
%struct.gs_function_procs_s = type { i32 (%struct.gs_function_s*, float*, float*)*, i32 (%struct.gs_function_s*, float*, float*, i32*)*, void (%struct.gs_function_s*, %struct.gs_function_info_s*)*, i32 (%struct.gs_function_s*, %struct.gs_param_list_s*)*, i32 (%struct.gs_function_s*, %struct.gs_function_s**, %struct.gs_range_s*, %struct.gs_memory_s*)*, void (%struct.gs_function_params_s*, %struct.gs_memory_s*)*, void (%struct.gs_function_s*, i32, %struct.gs_memory_s*)*, i32 (%struct.gs_function_s*, %struct.stream_s*)* }
%struct.gs_function_info_s = type { %struct.gs_data_source_s*, i64, %struct.gs_function_s**, i32 }
%struct.gs_function_params_s = type { i32, float*, i32, float* }
%struct.pdf_mesh_data_params_s = type { i32, i32, i32, float*, %struct.gs_range_s* }
%struct.shade_coord_stream_s = type { %struct.stream_s, %struct.stream_s*, i32, i32, i32, %struct.gs_shading_mesh_params_s*, %struct.gs_matrix_fixed_s*, i32 (%struct.shade_coord_stream_s*, i32, i32*)*, i32 (%struct.shade_coord_stream_s*, i32, float*, float*)*, void (%struct.shade_coord_stream_s*, i32)*, i32 (%struct.shade_coord_stream_s*)* }
%struct.gs_shading_FfGt_params_s = type { %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_client_color_s*, i32, %struct.gs_rect_s, i32, %struct.gs_data_source_s, i32, i32, float*, %struct.gs_function_s*, i32 }
%struct.gs_shading_LfGt_params_s = type { %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_client_color_s*, i32, %struct.gs_rect_s, i32, %struct.gs_data_source_s, i32, i32, float*, %struct.gs_function_s*, i32 }
%struct.gs_shading_Cp_params_s = type { %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_client_color_s*, i32, %struct.gs_rect_s, i32, %struct.gs_data_source_s, i32, i32, float*, %struct.gs_function_s*, i32 }
%struct.gs_shading_Tpp_params_s = type { %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_client_color_s*, i32, %struct.gs_rect_s, i32, %struct.gs_data_source_s, i32, i32, float*, %struct.gs_function_s*, i32 }
%struct.gs_shading_Fb_params_s = type { %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_client_color_s*, i32, %struct.gs_rect_s, i32, [4 x float], %struct.gs_matrix_s, %struct.gs_function_s* }
%struct.gs_shading_A_params_s = type { %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_client_color_s*, i32, %struct.gs_rect_s, i32, [4 x float], [2 x float], %struct.gs_function_s*, [2 x i32] }
%struct.gs_shading_R_params_s = type { %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_client_color_s*, i32, %struct.gs_rect_s, i32, [6 x float], [2 x float], %struct.gs_function_s*, [2 x i32] }

@.str = private unnamed_addr constant [23 x i8] c"pdf_pattern(Resources)\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"/Type\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"/Pattern\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"/PatternType\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"/PaintType\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"/TilingType\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"/BBox\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"/Matrix\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"/XStep\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"/YStep\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"/Resources\00", align 1
@gx_dc_type_data_pure = external constant %struct.gx_device_color_type_s, align 8
@pdf_put_uncolored_pattern.no_scc = internal constant %struct.psdf_set_color_commands_s zeroinitializer, align 8
@.str.11 = private unnamed_addr constant [9 x i8] c"q q Q Q\0A\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c" %s \00", align 1
@pdf_color_space_names = external constant %struct.pdf_color_space_names_s, align 8
@.str.13 = private unnamed_addr constant [6 x i8] c"/Mask\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"pdf_put_colored_pattern\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@cos_dict_procs = external constant %struct.cos_object_procs_s, align 8
@cos_stream_procs = external constant %struct.cos_object_procs_s, align 8
@.str.16 = private unnamed_addr constant [9 x i8] c"/Shading\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c" %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"pdf_pattern(XObject)\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"/R%ld\00", align 1
@.str.20 = private unnamed_addr constant [39 x i8] c"pdf_pattern(reference copy of XObject)\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"/XObject\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"/ProcSet\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"[/PDF/ImageB]\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"[/PDF/ImageC]\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"[0 0 1 1]\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"/R%ld Do\0A\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"/ShadingType\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"/AntiAlias\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"/ColorSpace\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"/Background\00", align 1
@.str.32 = private unnamed_addr constant [21 x i8] c"pdf_put_mesh_shading\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"/Decode\00", align 1
@.str.34 = private unnamed_addr constant [19 x i8] c"/BitsPerCoordinate\00", align 1
@.str.35 = private unnamed_addr constant [18 x i8] c"/BitsPerComponent\00", align 1
@.str.36 = private unnamed_addr constant [16 x i8] c"/VerticesPerRow\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"/BitsPerFlag\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"/Function\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"/Domain\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"/Coords\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"[%s %s]\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"/Extend\00", align 1

; Function Attrs: nounwind uwtable
define i32 @pdf_store_pattern1_params(%struct.gx_device_pdf_s* %pdev, %struct.pdf_resource_s* %pres, %struct.gs_pattern1_instance_s* %pinst) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pres.addr = alloca %struct.pdf_resource_s*, align 8
  %pinst.addr = alloca %struct.gs_pattern1_instance_s*, align 8
  %t = alloca %struct.gs_pattern1_template_s*, align 8
  %smat2 = alloca %struct.gs_matrix_s, align 4
  %smat = alloca %struct.gs_matrix_s, align 4
  %scale_x = alloca double, align 8
  %scale_y = alloca double, align 8
  %pcd = alloca %struct.cos_dict_s*, align 8
  %pcd_Resources = alloca %struct.cos_dict_s*, align 8
  %bbox = alloca [4 x float], align 16
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %scaled = alloca %struct.gs_matrix_s, align 4
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.pdf_resource_s* %pres, %struct.pdf_resource_s** %pres.addr, align 8, !tbaa !1
  store %struct.gs_pattern1_instance_s* %pinst, %struct.gs_pattern1_instance_s** %pinst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_pattern1_template_s** %t to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst.addr, align 8, !tbaa !1
  %templat = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %1, i32 0, i32 4
  store %struct.gs_pattern1_template_s* %templat, %struct.gs_pattern1_template_s** %t, align 8, !tbaa !1
  %2 = bitcast %struct.gs_matrix_s* %smat2 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %2) #1
  %3 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst.addr, align 8, !tbaa !1
  %saved = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %3, i32 0, i32 2
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8, !tbaa !5
  %5 = bitcast %struct.gs_state_s* %4 to %struct.gs_imager_state_s*
  %ctm = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %5, i32 0, i32 5
  %6 = bitcast %struct.gs_matrix_fixed_s* %ctm to %struct.gs_matrix_s*
  %7 = bitcast %struct.gs_matrix_s* %smat2 to i8*
  %8 = bitcast %struct.gs_matrix_s* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 24, i32 4, i1 false), !tbaa.struct !18
  %9 = bitcast %struct.gs_matrix_s* %smat to i8*
  call void @llvm.lifetime.start(i64 24, i8* %9) #1
  %10 = bitcast double* %scale_x to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %11, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %12 = load float, float* %arrayidx, align 4, !tbaa !19
  %conv = fpext float %12 to double
  %div = fdiv double %conv, 7.200000e+01
  store double %div, double* %scale_x, align 8, !tbaa !20
  %13 = bitcast double* %scale_y to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution1 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %14, i32 0, i32 22
  %arrayidx2 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution1, i32 0, i64 1
  %15 = load float, float* %arrayidx2, align 4, !tbaa !19
  %conv3 = fpext float %15 to double
  %div4 = fdiv double %conv3, 7.200000e+01
  store double %div4, double* %scale_y, align 8, !tbaa !20
  %16 = bitcast %struct.cos_dict_s** %pcd to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres.addr, align 8, !tbaa !1
  %object = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %17, i32 0, i32 7
  %18 = load %struct.cos_object_s*, %struct.cos_object_s** %object, align 8, !tbaa !21
  %19 = bitcast %struct.cos_object_s* %18 to %struct.cos_stream_s*
  %call = call %struct.cos_dict_s* @cos_stream_dict(%struct.cos_stream_s* %19) #5
  store %struct.cos_dict_s* %call, %struct.cos_dict_s** %pcd, align 8, !tbaa !1
  %20 = bitcast %struct.cos_dict_s** %pcd_Resources to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  %21 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call5 = call %struct.cos_dict_s* @cos_dict_alloc(%struct.gx_device_pdf_s* %21, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0)) #5
  store %struct.cos_dict_s* %call5, %struct.cos_dict_s** %pcd_Resources, align 8, !tbaa !1
  %22 = bitcast [4 x float]* %bbox to i8*
  call void @llvm.lifetime.start(i64 16, i8* %22) #1
  %23 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %24 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd, align 8, !tbaa !1
  %cmp = icmp eq %struct.cos_dict_s* %24, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %25 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd_Resources, align 8, !tbaa !1
  %cmp7 = icmp eq %struct.cos_dict_s* %25, null
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %26 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd_Resources, align 8, !tbaa !1
  %27 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %substream_Resources = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %27, i32 0, i32 205
  store %struct.cos_dict_s* %26, %struct.cos_dict_s** %substream_Resources, align 8, !tbaa !23
  %28 = load %struct.gs_pattern1_template_s*, %struct.gs_pattern1_template_s** %t, align 8, !tbaa !1
  %BBox = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %28, i32 0, i32 7
  %p = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %BBox, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p, i32 0, i32 0
  %29 = load double, double* %x, align 8, !tbaa !58
  %conv9 = fptrunc double %29 to float
  %arrayidx10 = getelementptr inbounds [4 x float], [4 x float]* %bbox, i32 0, i64 0
  store float %conv9, float* %arrayidx10, align 4, !tbaa !19
  %30 = load %struct.gs_pattern1_template_s*, %struct.gs_pattern1_template_s** %t, align 8, !tbaa !1
  %BBox11 = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %30, i32 0, i32 7
  %p12 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %BBox11, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p12, i32 0, i32 1
  %31 = load double, double* %y, align 8, !tbaa !59
  %conv13 = fptrunc double %31 to float
  %arrayidx14 = getelementptr inbounds [4 x float], [4 x float]* %bbox, i32 0, i64 1
  store float %conv13, float* %arrayidx14, align 4, !tbaa !19
  %32 = load %struct.gs_pattern1_template_s*, %struct.gs_pattern1_template_s** %t, align 8, !tbaa !1
  %BBox15 = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %32, i32 0, i32 7
  %q = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %BBox15, i32 0, i32 1
  %x16 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q, i32 0, i32 0
  %33 = load double, double* %x16, align 8, !tbaa !60
  %conv17 = fptrunc double %33 to float
  %arrayidx18 = getelementptr inbounds [4 x float], [4 x float]* %bbox, i32 0, i64 2
  store float %conv17, float* %arrayidx18, align 4, !tbaa !19
  %34 = load %struct.gs_pattern1_template_s*, %struct.gs_pattern1_template_s** %t, align 8, !tbaa !1
  %BBox19 = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %34, i32 0, i32 7
  %q20 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %BBox19, i32 0, i32 1
  %y21 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q20, i32 0, i32 1
  %35 = load double, double* %y21, align 8, !tbaa !61
  %conv22 = fptrunc double %35 to float
  %arrayidx23 = getelementptr inbounds [4 x float], [4 x float]* %bbox, i32 0, i64 3
  store float %conv22, float* %arrayidx23, align 4, !tbaa !19
  %36 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst.addr, align 8, !tbaa !1
  %step_matrix = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %36, i32 0, i32 5
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix, i32 0, i32 4
  %37 = load float, float* %tx, align 4, !tbaa !62
  %tx24 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %smat2, i32 0, i32 4
  %38 = load float, float* %tx24, align 4, !tbaa !63
  %add = fadd float %38, %37
  store float %add, float* %tx24, align 4, !tbaa !63
  %39 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst.addr, align 8, !tbaa !1
  %step_matrix25 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %39, i32 0, i32 5
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix25, i32 0, i32 5
  %40 = load float, float* %ty, align 4, !tbaa !64
  %ty26 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %smat2, i32 0, i32 5
  %41 = load float, float* %ty26, align 4, !tbaa !65
  %add27 = fadd float %41, %40
  store float %add27, float* %ty26, align 4, !tbaa !65
  %42 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %FormDepth = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %42, i32 0, i32 201
  %43 = load i32, i32* %FormDepth, align 4, !tbaa !66
  %cmp28 = icmp eq i32 %43, 0
  br i1 %cmp28, label %if.then.30, label %if.else

if.then.30:                                       ; preds = %if.end
  %44 = bitcast %struct.gs_matrix_s* %scaled to i8*
  call void @llvm.lifetime.start(i64 24, i8* %44) #1
  %45 = load double, double* %scale_x, align 8, !tbaa !20
  %div31 = fdiv double 1.000000e+00, %45
  %46 = load double, double* %scale_y, align 8, !tbaa !20
  %div32 = fdiv double 1.000000e+00, %46
  %call33 = call i32 @gs_make_scaling(double %div31, double %div32, %struct.gs_matrix_s* %scaled) #5
  %call34 = call i32 @gs_matrix_multiply(%struct.gs_matrix_s* %smat2, %struct.gs_matrix_s* %scaled, %struct.gs_matrix_s* %smat) #5
  %47 = bitcast %struct.gs_matrix_s* %scaled to i8*
  call void @llvm.lifetime.end(i64 24, i8* %47) #1
  br label %if.end.35

if.else:                                          ; preds = %if.end
  %48 = bitcast %struct.gs_matrix_s* %smat to i8*
  %49 = bitcast %struct.gs_matrix_s* %smat2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %48, i8* %49, i64 24, i32 4, i1 false), !tbaa.struct !18
  br label %if.end.35

if.end.35:                                        ; preds = %if.else, %if.then.30
  %50 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %ForOPDFRead = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %50, i32 0, i32 99
  %51 = load i32, i32* %ForOPDFRead, align 4, !tbaa !67
  %tobool = icmp ne i32 %51, 0
  br i1 %tobool, label %if.then.36, label %if.end.49

if.then.36:                                       ; preds = %if.end.35
  %52 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PatternDepth = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %52, i32 0, i32 203
  %53 = load i32, i32* %PatternDepth, align 4, !tbaa !68
  %tobool37 = icmp ne i32 %53, 0
  br i1 %tobool37, label %if.then.38, label %if.else.43

if.then.38:                                       ; preds = %if.then.36
  %54 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %AccumulatedPatternMatrix = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %54, i32 0, i32 204
  %call39 = call i32 @gs_matrix_multiply(%struct.gs_matrix_s* %smat, %struct.gs_matrix_s* %AccumulatedPatternMatrix, %struct.gs_matrix_s* %smat2) #5
  %55 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %AccumulatedPatternMatrix40 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %55, i32 0, i32 204
  %56 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %AccumulatedPatternMatrix41 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %56, i32 0, i32 204
  %call42 = call i32 @gs_matrix_multiply(%struct.gs_matrix_s* %AccumulatedPatternMatrix40, %struct.gs_matrix_s* %smat, %struct.gs_matrix_s* %AccumulatedPatternMatrix41) #5
  %57 = bitcast %struct.gs_matrix_s* %smat to i8*
  %58 = bitcast %struct.gs_matrix_s* %smat2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %57, i8* %58, i64 24, i32 4, i1 false), !tbaa.struct !18
  br label %if.end.48

if.else.43:                                       ; preds = %if.then.36
  %59 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %AccumulatedPatternMatrix44 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %59, i32 0, i32 204
  call void @gs_make_identity(%struct.gs_matrix_s* %AccumulatedPatternMatrix44) #5
  %60 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %AccumulatedPatternMatrix45 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %60, i32 0, i32 204
  %61 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %AccumulatedPatternMatrix46 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %61, i32 0, i32 204
  %call47 = call i32 @gs_matrix_multiply(%struct.gs_matrix_s* %AccumulatedPatternMatrix45, %struct.gs_matrix_s* %smat, %struct.gs_matrix_s* %AccumulatedPatternMatrix46) #5
  br label %if.end.48

if.end.48:                                        ; preds = %if.else.43, %if.then.38
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.end.35
  %tx50 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %smat, i32 0, i32 4
  %62 = load float, float* %tx50, align 4, !tbaa !63
  %cmp51 = fcmp olt float %62, 0.000000e+00
  br i1 %cmp51, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.49
  %tx53 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %smat, i32 0, i32 4
  %63 = load float, float* %tx53, align 4, !tbaa !63
  %sub = fsub float -0.000000e+00, %63
  br label %cond.end

cond.false:                                       ; preds = %if.end.49
  %tx54 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %smat, i32 0, i32 4
  %64 = load float, float* %tx54, align 4, !tbaa !63
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %sub, %cond.true ], [ %64, %cond.false ]
  %conv55 = fpext float %cond to double
  %cmp56 = fcmp olt double %conv55, 1.000000e-04
  br i1 %cmp56, label %if.then.58, label %if.end.60

if.then.58:                                       ; preds = %cond.end
  %tx59 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %smat, i32 0, i32 4
  store float 0.000000e+00, float* %tx59, align 4, !tbaa !63
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.58, %cond.end
  %ty61 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %smat, i32 0, i32 5
  %65 = load float, float* %ty61, align 4, !tbaa !65
  %cmp62 = fcmp olt float %65, 0.000000e+00
  br i1 %cmp62, label %cond.true.64, label %cond.false.67

cond.true.64:                                     ; preds = %if.end.60
  %ty65 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %smat, i32 0, i32 5
  %66 = load float, float* %ty65, align 4, !tbaa !65
  %sub66 = fsub float -0.000000e+00, %66
  br label %cond.end.69

cond.false.67:                                    ; preds = %if.end.60
  %ty68 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %smat, i32 0, i32 5
  %67 = load float, float* %ty68, align 4, !tbaa !65
  br label %cond.end.69

cond.end.69:                                      ; preds = %cond.false.67, %cond.true.64
  %cond70 = phi float [ %sub66, %cond.true.64 ], [ %67, %cond.false.67 ]
  %conv71 = fpext float %cond70 to double
  %cmp72 = fcmp olt double %conv71, 1.000000e-04
  br i1 %cmp72, label %if.then.74, label %if.end.76

if.then.74:                                       ; preds = %cond.end.69
  %ty75 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %smat, i32 0, i32 5
  store float 0.000000e+00, float* %ty75, align 4, !tbaa !65
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.74, %cond.end.69
  %68 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd, align 8, !tbaa !1
  %call77 = call i32 @cos_dict_put_c_strings(%struct.cos_dict_s* %68, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0)) #5
  store i32 %call77, i32* %code, align 4, !tbaa !69
  %69 = load i32, i32* %code, align 4, !tbaa !69
  %cmp78 = icmp sge i32 %69, 0
  br i1 %cmp78, label %if.then.80, label %if.end.82

if.then.80:                                       ; preds = %if.end.76
  %70 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd, align 8, !tbaa !1
  %call81 = call i32 @cos_dict_put_c_key_int(%struct.cos_dict_s* %70, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i32 1) #5
  store i32 %call81, i32* %code, align 4, !tbaa !69
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.80, %if.end.76
  %71 = load i32, i32* %code, align 4, !tbaa !69
  %cmp83 = icmp sge i32 %71, 0
  br i1 %cmp83, label %if.then.85, label %if.end.87

if.then.85:                                       ; preds = %if.end.82
  %72 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd, align 8, !tbaa !1
  %73 = load %struct.gs_pattern1_template_s*, %struct.gs_pattern1_template_s** %t, align 8, !tbaa !1
  %PaintType = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %73, i32 0, i32 4
  %74 = load i32, i32* %PaintType, align 4, !tbaa !70
  %call86 = call i32 @cos_dict_put_c_key_int(%struct.cos_dict_s* %72, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 %74) #5
  store i32 %call86, i32* %code, align 4, !tbaa !69
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.85, %if.end.82
  %75 = load i32, i32* %code, align 4, !tbaa !69
  %cmp88 = icmp sge i32 %75, 0
  br i1 %cmp88, label %if.then.90, label %if.end.92

if.then.90:                                       ; preds = %if.end.87
  %76 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd, align 8, !tbaa !1
  %77 = load %struct.gs_pattern1_template_s*, %struct.gs_pattern1_template_s** %t, align 8, !tbaa !1
  %TilingType = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %77, i32 0, i32 5
  %78 = load i32, i32* %TilingType, align 4, !tbaa !71
  %call91 = call i32 @cos_dict_put_c_key_int(%struct.cos_dict_s* %76, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i32 %78) #5
  store i32 %call91, i32* %code, align 4, !tbaa !69
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.90, %if.end.87
  %79 = load i32, i32* %code, align 4, !tbaa !69
  %cmp93 = icmp sge i32 %79, 0
  br i1 %cmp93, label %if.then.95, label %if.end.97

if.then.95:                                       ; preds = %if.end.92
  %80 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [4 x float], [4 x float]* %bbox, i32 0, i32 0
  %call96 = call i32 @cos_dict_put_c_key_floats(%struct.cos_dict_s* %80, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), float* %arraydecay, i32 4) #5
  store i32 %call96, i32* %code, align 4, !tbaa !69
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.95, %if.end.92
  %81 = load i32, i32* %code, align 4, !tbaa !69
  %cmp98 = icmp sge i32 %81, 0
  br i1 %cmp98, label %if.then.100, label %if.end.102

if.then.100:                                      ; preds = %if.end.97
  %82 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd, align 8, !tbaa !1
  %call101 = call i32 @cos_dict_put_matrix(%struct.cos_dict_s* %82, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), %struct.gs_matrix_s* %smat) #5
  store i32 %call101, i32* %code, align 4, !tbaa !69
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.100, %if.end.97
  %83 = load i32, i32* %code, align 4, !tbaa !69
  %cmp103 = icmp sge i32 %83, 0
  br i1 %cmp103, label %if.then.105, label %if.end.108

if.then.105:                                      ; preds = %if.end.102
  %84 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd, align 8, !tbaa !1
  %85 = load %struct.gs_pattern1_template_s*, %struct.gs_pattern1_template_s** %t, align 8, !tbaa !1
  %XStep = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %85, i32 0, i32 8
  %86 = load float, float* %XStep, align 4, !tbaa !72
  %conv106 = fpext float %86 to double
  %call107 = call i32 @cos_dict_put_c_key_real(%struct.cos_dict_s* %84, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), double %conv106) #5
  store i32 %call107, i32* %code, align 4, !tbaa !69
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.105, %if.end.102
  %87 = load i32, i32* %code, align 4, !tbaa !69
  %cmp109 = icmp sge i32 %87, 0
  br i1 %cmp109, label %if.then.111, label %if.end.114

if.then.111:                                      ; preds = %if.end.108
  %88 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd, align 8, !tbaa !1
  %89 = load %struct.gs_pattern1_template_s*, %struct.gs_pattern1_template_s** %t, align 8, !tbaa !1
  %YStep = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %89, i32 0, i32 9
  %90 = load float, float* %YStep, align 4, !tbaa !73
  %conv112 = fpext float %90 to double
  %call113 = call i32 @cos_dict_put_c_key_real(%struct.cos_dict_s* %88, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), double %conv112) #5
  store i32 %call113, i32* %code, align 4, !tbaa !69
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.111, %if.end.108
  %91 = load i32, i32* %code, align 4, !tbaa !69
  %cmp115 = icmp sge i32 %91, 0
  br i1 %cmp115, label %if.then.117, label %if.end.119

if.then.117:                                      ; preds = %if.end.114
  %92 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd, align 8, !tbaa !1
  %93 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd_Resources, align 8, !tbaa !1
  %cos_procs = getelementptr inbounds %struct.cos_dict_s, %struct.cos_dict_s* %93, i32 0, i32 0
  %94 = bitcast %struct.cos_object_procs_s** %cos_procs to %struct.cos_object_s*
  %call118 = call i32 @cos_dict_put_c_key_object(%struct.cos_dict_s* %92, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), %struct.cos_object_s* %94) #5
  store i32 %call118, i32* %code, align 4, !tbaa !69
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.117, %if.end.114
  %95 = load %struct.gs_pattern1_template_s*, %struct.gs_pattern1_template_s** %t, align 8, !tbaa !1
  %PaintType120 = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %95, i32 0, i32 4
  %96 = load i32, i32* %PaintType120, align 4, !tbaa !70
  %cmp121 = icmp eq i32 %96, 2
  %conv122 = zext i1 %cmp121 to i32
  %97 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %skip_colors = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %97, i32 0, i32 207
  store i32 %conv122, i32* %skip_colors, align 4, !tbaa !74
  %98 = load i32, i32* %code, align 4, !tbaa !69
  store i32 %98, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.119, %if.then
  %99 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %99) #1
  %100 = bitcast [4 x float]* %bbox to i8*
  call void @llvm.lifetime.end(i64 16, i8* %100) #1
  %101 = bitcast %struct.cos_dict_s** %pcd_Resources to i8*
  call void @llvm.lifetime.end(i64 8, i8* %101) #1
  %102 = bitcast %struct.cos_dict_s** %pcd to i8*
  call void @llvm.lifetime.end(i64 8, i8* %102) #1
  %103 = bitcast double* %scale_y to i8*
  call void @llvm.lifetime.end(i64 8, i8* %103) #1
  %104 = bitcast double* %scale_x to i8*
  call void @llvm.lifetime.end(i64 8, i8* %104) #1
  %105 = bitcast %struct.gs_matrix_s* %smat to i8*
  call void @llvm.lifetime.end(i64 24, i8* %105) #1
  %106 = bitcast %struct.gs_matrix_s* %smat2 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %106) #1
  %107 = bitcast %struct.gs_pattern1_template_s** %t to i8*
  call void @llvm.lifetime.end(i64 8, i8* %107) #1
  %108 = load i32, i32* %retval
  ret i32 %108
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare %struct.cos_dict_s* @cos_stream_dict(%struct.cos_stream_s*) #2

declare %struct.cos_dict_s* @cos_dict_alloc(%struct.gx_device_pdf_s*, i8*) #2

declare i32 @gs_make_scaling(double, double, %struct.gs_matrix_s*) #2

declare i32 @gs_matrix_multiply(%struct.gs_matrix_s*, %struct.gs_matrix_s*, %struct.gs_matrix_s*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare void @gs_make_identity(%struct.gs_matrix_s*) #2

declare i32 @cos_dict_put_c_strings(%struct.cos_dict_s*, i8*, i8*) #2

declare i32 @cos_dict_put_c_key_int(%struct.cos_dict_s*, i8*, i32) #2

declare i32 @cos_dict_put_c_key_floats(%struct.cos_dict_s*, i8*, float*, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @cos_dict_put_matrix(%struct.cos_dict_s* %pscd, i8* %key, %struct.gs_matrix_s* %pmat) #0 {
entry:
  %pscd.addr = alloca %struct.cos_dict_s*, align 8
  %key.addr = alloca i8*, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %matrix = alloca [6 x float], align 16
  store %struct.cos_dict_s* %pscd, %struct.cos_dict_s** %pscd.addr, align 8, !tbaa !1
  store i8* %key, i8** %key.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %0 = bitcast [6 x float]* %matrix to i8*
  call void @llvm.lifetime.start(i64 24, i8* %0) #1
  %1 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %1, i32 0, i32 0
  %2 = load float, float* %xx, align 4, !tbaa !75
  %arrayidx = getelementptr inbounds [6 x float], [6 x float]* %matrix, i32 0, i64 0
  store float %2, float* %arrayidx, align 4, !tbaa !19
  %3 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %3, i32 0, i32 1
  %4 = load float, float* %xy, align 4, !tbaa !76
  %arrayidx1 = getelementptr inbounds [6 x float], [6 x float]* %matrix, i32 0, i64 1
  store float %4, float* %arrayidx1, align 4, !tbaa !19
  %5 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %5, i32 0, i32 2
  %6 = load float, float* %yx, align 4, !tbaa !77
  %arrayidx2 = getelementptr inbounds [6 x float], [6 x float]* %matrix, i32 0, i64 2
  store float %6, float* %arrayidx2, align 4, !tbaa !19
  %7 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %7, i32 0, i32 3
  %8 = load float, float* %yy, align 4, !tbaa !78
  %arrayidx3 = getelementptr inbounds [6 x float], [6 x float]* %matrix, i32 0, i64 3
  store float %8, float* %arrayidx3, align 4, !tbaa !19
  %9 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %9, i32 0, i32 4
  %10 = load float, float* %tx, align 4, !tbaa !63
  %arrayidx4 = getelementptr inbounds [6 x float], [6 x float]* %matrix, i32 0, i64 4
  store float %10, float* %arrayidx4, align 4, !tbaa !19
  %11 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %11, i32 0, i32 5
  %12 = load float, float* %ty, align 4, !tbaa !65
  %arrayidx5 = getelementptr inbounds [6 x float], [6 x float]* %matrix, i32 0, i64 5
  store float %12, float* %arrayidx5, align 4, !tbaa !19
  %13 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pscd.addr, align 8, !tbaa !1
  %14 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [6 x float], [6 x float]* %matrix, i32 0, i32 0
  %call = call i32 @cos_dict_put_c_key_floats(%struct.cos_dict_s* %13, i8* %14, float* %arraydecay, i32 6) #5
  %15 = bitcast [6 x float]* %matrix to i8*
  call void @llvm.lifetime.end(i64 24, i8* %15) #1
  ret i32 %call
}

declare i32 @cos_dict_put_c_key_real(%struct.cos_dict_s*, i8*, double) #2

declare i32 @cos_dict_put_c_key_object(%struct.cos_dict_s*, i8*, %struct.cos_object_s*) #2

; Function Attrs: nounwind uwtable
define i32 @pdf_put_uncolored_pattern(%struct.gx_device_pdf_s* %pdev, %struct.gx_device_color_s* %pdc, %struct.gs_color_space_s* %pcs, %struct.psdf_set_color_commands_s* %ppscc, i32 %have_pattern_streams, %struct.pdf_resource_s** %ppres) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pdc.addr = alloca %struct.gx_device_color_s*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %ppscc.addr = alloca %struct.psdf_set_color_commands_s*, align 8
  %have_pattern_streams.addr = alloca i32, align 4
  %ppres.addr = alloca %struct.pdf_resource_s**, align 8
  %m_tile = alloca %struct.gx_color_tile_s*, align 8
  %dc_pure = alloca %struct.gx_device_color_s, align 8
  %cleanup.dest.slot = alloca i32
  %v = alloca %struct.cos_value_s, align 8
  %s = alloca %struct.stream_s*, align 8
  %code = alloca i32, align 4
  %pcs_image = alloca %struct.cos_stream_s*, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdc, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.psdf_set_color_commands_s* %ppscc, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  store i32 %have_pattern_streams, i32* %have_pattern_streams.addr, align 4, !tbaa !69
  store %struct.pdf_resource_s** %ppres, %struct.pdf_resource_s*** %ppres.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_color_tile_s** %m_tile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %mask = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %1, i32 0, i32 5
  %m_tile1 = getelementptr inbounds %struct._mask, %struct._mask* %mask, i32 0, i32 2
  %2 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %m_tile1, align 8, !tbaa !79
  store %struct.gx_color_tile_s* %2, %struct.gx_color_tile_s** %m_tile, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_color_s* %dc_pure to i8*
  call void @llvm.lifetime.start(i64 656, i8* %3) #1
  %4 = load i32, i32* %have_pattern_streams.addr, align 4, !tbaa !69
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %m_tile, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_color_tile_s* %5, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct.pdf_resource_s**, %struct.pdf_resource_s*** %ppres.addr, align 8, !tbaa !1
  store %struct.pdf_resource_s* null, %struct.pdf_resource_s** %6, align 8, !tbaa !1
  %7 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %7, i32 0, i32 1
  %pure = bitcast %union._c* %colors to i64*
  %8 = load i64, i64* %pure, align 8, !tbaa !83
  %colors2 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %dc_pure, i32 0, i32 1
  %pure3 = bitcast %union._c* %colors2 to i64*
  store i64 %8, i64* %pure3, align 8, !tbaa !83
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %dc_pure, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_pure, %struct.gx_device_color_type_s** %type, align 8, !tbaa !84
  %ccolor_valid = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %dc_pure, i32 0, i32 3
  store i32 0, i32* %ccolor_valid, align 4, !tbaa !85
  %9 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %10 = bitcast %struct.gx_device_pdf_s* %9 to %struct.gx_device_vector_s*
  %11 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %12 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %UseOldColor = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %12, i32 0, i32 248
  %13 = load i32, i32* %UseOldColor, align 4, !tbaa !86
  %call = call i32 @psdf_set_color(%struct.gx_device_vector_s* %10, %struct.gx_device_color_s* %dc_pure, %struct.psdf_set_color_commands_s* %11, i32 %13) #5
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.51

if.else:                                          ; preds = %land.lhs.true, %entry
  %14 = bitcast %struct.cos_value_s* %v to i8*
  call void @llvm.lifetime.start(i64 24, i8* %14) #1
  %15 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %16, i32 0, i32 47
  %17 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !87
  store %struct.stream_s* %17, %struct.stream_s** %s, align 8, !tbaa !1
  %18 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = bitcast %struct.cos_stream_s** %pcs_image to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  %20 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %21 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %m_tile, align 8, !tbaa !1
  %call4 = call i32 @tile_size_ok(%struct.gx_device_pdf_s* %20, %struct.gx_color_tile_s* null, %struct.gx_color_tile_s* %21) #5
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.end, label %if.then.6

if.then.6:                                        ; preds = %if.else
  store i32 -13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.else
  %22 = load i32, i32* %have_pattern_streams.addr, align 4, !tbaa !69
  %tobool7 = icmp ne i32 %22, 0
  br i1 %tobool7, label %if.else.18, label %if.then.8

if.then.8:                                        ; preds = %if.end
  %23 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call9 = call i32 @pdf_cs_Pattern_uncolored(%struct.gx_device_pdf_s* %23, %struct.cos_value_s* %v) #5
  store i32 %call9, i32* %code, align 4, !tbaa !69
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then.16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.8
  %24 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %25 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %m_tile, align 8, !tbaa !1
  %call11 = call i32 @pdf_put_pattern_mask(%struct.gx_device_pdf_s* %24, %struct.gx_color_tile_s* %25, %struct.cos_stream_s** %pcs_image) #5
  store i32 %call11, i32* %code, align 4, !tbaa !69
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.then.16, label %lor.lhs.false.13

lor.lhs.false.13:                                 ; preds = %lor.lhs.false
  %26 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %27 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %28 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %m_tile, align 8, !tbaa !1
  %29 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcs_image, align 8, !tbaa !1
  %30 = load %struct.pdf_resource_s**, %struct.pdf_resource_s*** %ppres.addr, align 8, !tbaa !1
  %call14 = call i32 @pdf_pattern(%struct.gx_device_pdf_s* %26, %struct.gx_device_color_s* %27, %struct.gx_color_tile_s* null, %struct.gx_color_tile_s* %28, %struct.cos_stream_s* %29, %struct.pdf_resource_s** %30) #5
  store i32 %call14, i32* %code, align 4, !tbaa !69
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %lor.lhs.false.13, %lor.lhs.false, %if.then.8
  %31 = load i32, i32* %code, align 4, !tbaa !69
  store i32 %31, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.17:                                        ; preds = %lor.lhs.false.13
  br label %if.end.34

if.else.18:                                       ; preds = %if.end
  %32 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %33 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %call19 = call i32 @pdf_cs_Pattern_uncolored_hl(%struct.gx_device_pdf_s* %32, %struct.gs_color_space_s* %33, %struct.cos_value_s* %v) #5
  store i32 %call19, i32* %code, align 4, !tbaa !69
  %34 = load i32, i32* %code, align 4, !tbaa !69
  %cmp20 = icmp slt i32 %34, 0
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.else.18
  %35 = load i32, i32* %code, align 4, !tbaa !69
  store i32 %35, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.22:                                        ; preds = %if.else.18
  %36 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %37 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %mask23 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %37, i32 0, i32 5
  %id = getelementptr inbounds %struct._mask, %struct._mask* %mask23, i32 0, i32 1
  %38 = load i64, i64* %id, align 8, !tbaa !88
  %call24 = call %struct.pdf_resource_s* @pdf_find_resource_by_gs_id(%struct.gx_device_pdf_s* %36, i32 2, i64 %38) #5
  %39 = load %struct.pdf_resource_s**, %struct.pdf_resource_s*** %ppres.addr, align 8, !tbaa !1
  store %struct.pdf_resource_s* %call24, %struct.pdf_resource_s** %39, align 8, !tbaa !1
  %40 = load %struct.pdf_resource_s**, %struct.pdf_resource_s*** %ppres.addr, align 8, !tbaa !1
  %41 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %40, align 8, !tbaa !1
  %call25 = call %struct.pdf_resource_s* @pdf_substitute_pattern(%struct.pdf_resource_s* %41) #5
  %42 = load %struct.pdf_resource_s**, %struct.pdf_resource_s*** %ppres.addr, align 8, !tbaa !1
  store %struct.pdf_resource_s* %call25, %struct.pdf_resource_s** %42, align 8, !tbaa !1
  %43 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %AR4_save_bug = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %43, i32 0, i32 208
  %44 = load i32, i32* %AR4_save_bug, align 4, !tbaa !89
  %tobool26 = icmp ne i32 %44, 0
  br i1 %tobool26, label %if.end.33, label %land.lhs.true.27

land.lhs.true.27:                                 ; preds = %if.end.22
  %45 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %CompatibilityLevel = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %45, i32 0, i32 75
  %46 = load double, double* %CompatibilityLevel, align 8, !tbaa !90
  %cmp28 = fcmp ole double %46, 1.300000e+00
  br i1 %cmp28, label %if.then.29, label %if.end.33

if.then.29:                                       ; preds = %land.lhs.true.27
  %47 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm30 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %47, i32 0, i32 47
  %48 = load %struct.stream_s*, %struct.stream_s** %strm30, align 8, !tbaa !87
  %call31 = call i32 @stream_puts(%struct.stream_s* %48, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0)) #5
  %49 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %AR4_save_bug32 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %49, i32 0, i32 208
  store i32 1, i32* %AR4_save_bug32, align 4, !tbaa !89
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.29, %land.lhs.true.27, %if.end.22
  %50 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %used_mask = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %50, i32 0, i32 164
  %51 = load i64, i64* %used_mask, align 8, !tbaa !91
  %52 = load %struct.pdf_resource_s**, %struct.pdf_resource_s*** %ppres.addr, align 8, !tbaa !1
  %53 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %52, align 8, !tbaa !1
  %where_used = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %53, i32 0, i32 6
  %54 = load i64, i64* %where_used, align 8, !tbaa !92
  %or = or i64 %54, %51
  store i64 %or, i64* %where_used, align 8, !tbaa !92
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.end.17
  %55 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call35 = call i32 @cos_value_write(%struct.cos_value_s* %v, %struct.gx_device_pdf_s* %55) #5
  %56 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %57 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %setcolorspace = getelementptr inbounds %struct.psdf_set_color_commands_s, %struct.psdf_set_color_commands_s* %57, i32 0, i32 3
  %58 = load i8*, i8** %setcolorspace, align 8, !tbaa !93
  %call36 = call i8* @pprints1(%struct.stream_s* %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i8* %58) #5
  %59 = load i32, i32* %have_pattern_streams.addr, align 4, !tbaa !69
  %tobool37 = icmp ne i32 %59, 0
  br i1 %tobool37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.end.34
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.39:                                        ; preds = %if.end.34
  %60 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %colors40 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %60, i32 0, i32 1
  %pure41 = bitcast %union._c* %colors40 to i64*
  %61 = load i64, i64* %pure41, align 8, !tbaa !83
  %colors42 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %dc_pure, i32 0, i32 1
  %pure43 = bitcast %union._c* %colors42 to i64*
  store i64 %61, i64* %pure43, align 8, !tbaa !83
  %type44 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %dc_pure, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_pure, %struct.gx_device_color_type_s** %type44, align 8, !tbaa !84
  %ccolor_valid45 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %dc_pure, i32 0, i32 3
  store i32 0, i32* %ccolor_valid45, align 4, !tbaa !85
  %62 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %63 = bitcast %struct.gx_device_pdf_s* %62 to %struct.gx_device_vector_s*
  %64 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %UseOldColor46 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %64, i32 0, i32 248
  %65 = load i32, i32* %UseOldColor46, align 4, !tbaa !86
  %call47 = call i32 @psdf_set_color(%struct.gx_device_vector_s* %63, %struct.gx_device_color_s* %dc_pure, %struct.psdf_set_color_commands_s* @pdf_put_uncolored_pattern.no_scc, i32 %65) #5
  store i32 %call47, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.39, %if.then.38, %if.then.21, %if.then.16, %if.then.6
  %66 = bitcast %struct.cos_stream_s** %pcs_image to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #1
  %67 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #1
  %68 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %68) #1
  %69 = bitcast %struct.cos_value_s* %v to i8*
  call void @llvm.lifetime.end(i64 24, i8* %69) #1
  br label %cleanup.51

cleanup.51:                                       ; preds = %cleanup, %if.then
  %70 = bitcast %struct.gx_device_color_s* %dc_pure to i8*
  call void @llvm.lifetime.end(i64 656, i8* %70) #1
  %71 = bitcast %struct.gx_color_tile_s** %m_tile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #1
  %72 = load i32, i32* %retval
  ret i32 %72
}

declare i32 @psdf_set_color(%struct.gx_device_vector_s*, %struct.gx_device_color_s*, %struct.psdf_set_color_commands_s*, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @tile_size_ok(%struct.gx_device_pdf_s* %pdev, %struct.gx_color_tile_s* %p_tile, %struct.gx_color_tile_s* %m_tile) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %p_tile.addr = alloca %struct.gx_color_tile_s*, align 8
  %m_tile.addr = alloca %struct.gx_color_tile_s*, align 8
  %p_size = alloca i32, align 4
  %m_size = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gx_color_tile_s* %p_tile, %struct.gx_color_tile_s** %p_tile.addr, align 8, !tbaa !1
  store %struct.gx_color_tile_s* %m_tile, %struct.gx_color_tile_s** %m_tile.addr, align 8, !tbaa !1
  %0 = bitcast i32* %p_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %p_tile.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_color_tile_s* %1, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %p_tile.addr, align 8, !tbaa !1
  %tbits = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %2, i32 0, i32 7
  %3 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %p_tile.addr, align 8, !tbaa !1
  %depth = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %3, i32 0, i32 1
  %4 = load i32, i32* %depth, align 4, !tbaa !95
  %call = call i32 @tile_size(%struct.gx_strip_bitmap_s* %tbits, i32 %4) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call, %cond.false ]
  store i32 %cond, i32* %p_size, align 4, !tbaa !69
  %5 = bitcast i32* %m_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %m_tile.addr, align 8, !tbaa !1
  %cmp1 = icmp eq %struct.gx_color_tile_s* %6, null
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.end
  br label %cond.end.5

cond.false.3:                                     ; preds = %cond.end
  %7 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %m_tile.addr, align 8, !tbaa !1
  %tmask = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %7, i32 0, i32 8
  %call4 = call i32 @tile_size(%struct.gx_strip_bitmap_s* %tmask, i32 1) #5
  br label %cond.end.5

cond.end.5:                                       ; preds = %cond.false.3, %cond.true.2
  %cond6 = phi i32 [ 0, %cond.true.2 ], [ %call4, %cond.false.3 ]
  store i32 %cond6, i32* %m_size, align 4, !tbaa !69
  %8 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %CompatibilityLevel = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %8, i32 0, i32 75
  %9 = load double, double* %CompatibilityLevel, align 8, !tbaa !90
  %cmp7 = fcmp olt double %9, 1.400000e+00
  br i1 %cmp7, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end.5
  %10 = load i32, i32* %p_size, align 4, !tbaa !69
  %11 = load i32, i32* %m_size, align 4, !tbaa !69
  %cmp8 = icmp ugt i32 %10, %11
  br i1 %cmp8, label %cond.true.9, label %cond.false.10

cond.true.9:                                      ; preds = %if.then
  %12 = load i32, i32* %p_size, align 4, !tbaa !69
  br label %cond.end.11

cond.false.10:                                    ; preds = %if.then
  %13 = load i32, i32* %m_size, align 4, !tbaa !69
  br label %cond.end.11

cond.end.11:                                      ; preds = %cond.false.10, %cond.true.9
  %cond12 = phi i32 [ %12, %cond.true.9 ], [ %13, %cond.false.10 ]
  %cmp13 = icmp ule i32 %cond12, 65500
  %conv = zext i1 %cmp13 to i32
  store i32 %conv, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %cond.end.5
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else, %cond.end.11
  %14 = bitcast i32* %m_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #1
  %15 = bitcast i32* %p_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #1
  %16 = load i32, i32* %retval
  ret i32 %16
}

declare i32 @pdf_cs_Pattern_uncolored(%struct.gx_device_pdf_s*, %struct.cos_value_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @pdf_put_pattern_mask(%struct.gx_device_pdf_s* %pdev, %struct.gx_color_tile_s* %m_tile, %struct.cos_stream_s** %ppcs_mask) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %m_tile.addr = alloca %struct.gx_color_tile_s*, align 8
  %ppcs_mask.addr = alloca %struct.cos_stream_s**, align 8
  %w = alloca i32, align 4
  %h = alloca i32, align 4
  %image = alloca %struct.gs_image1_s, align 8
  %writer = alloca %struct.pdf_image_writer_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gx_color_tile_s* %m_tile, %struct.gx_color_tile_s** %m_tile.addr, align 8, !tbaa !1
  store %struct.cos_stream_s** %ppcs_mask, %struct.cos_stream_s*** %ppcs_mask.addr, align 8, !tbaa !1
  %0 = bitcast i32* %w to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %m_tile.addr, align 8, !tbaa !1
  %tmask = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %1, i32 0, i32 8
  %rep_width = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tmask, i32 0, i32 4
  %2 = load i16, i16* %rep_width, align 2, !tbaa !98
  %conv = zext i16 %2 to i32
  store i32 %conv, i32* %w, align 4, !tbaa !69
  %3 = bitcast i32* %h to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %m_tile.addr, align 8, !tbaa !1
  %tmask1 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %4, i32 0, i32 8
  %rep_height = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tmask1, i32 0, i32 5
  %5 = load i16, i16* %rep_height, align 2, !tbaa !99
  %conv2 = zext i16 %5 to i32
  store i32 %conv2, i32* %h, align 4, !tbaa !69
  %6 = bitcast %struct.gs_image1_s* %image to i8*
  call void @llvm.lifetime.start(i64 600, i8* %6) #1
  %7 = bitcast %struct.pdf_image_writer_s* %writer to i8*
  call void @llvm.lifetime.start(i64 192, i8* %7) #1
  %8 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  call void @gs_image_t_init_mask_adjust(%struct.gs_image1_s* %image, i32 1, i32 0) #5
  %9 = bitcast %struct.gs_image1_s* %image to %struct.gs_data_image_s*
  %10 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %m_tile.addr, align 8, !tbaa !1
  %tmask3 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %10, i32 0, i32 8
  call void @pdf_set_pattern_image(%struct.gs_data_image_s* %9, %struct.gx_strip_bitmap_s* %tmask3) #5
  call void @pdf_image_writer_init(%struct.pdf_image_writer_s* %writer) #5
  %11 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %12 = load i32, i32* %w, align 4, !tbaa !69
  %13 = load i32, i32* %h, align 4, !tbaa !69
  %call = call i32 @pdf_begin_write_image(%struct.gx_device_pdf_s* %11, %struct.pdf_image_writer_s* %writer, i64 0, i32 %12, i32 %13, %struct.cos_dict_s* null, i32 0) #5
  store i32 %call, i32* %code, align 4, !tbaa !69
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %14 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %14, i32 0, i32 73
  %MonoImage = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params, i32 0, i32 26
  %Encode = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %MonoImage, i32 0, i32 8
  %15 = load i32, i32* %Encode, align 4, !tbaa !100
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %land.lhs.true, label %lor.lhs.false.8

land.lhs.true:                                    ; preds = %lor.lhs.false
  %binary = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %writer, i32 0, i32 0
  %arrayidx = getelementptr inbounds [4 x %struct.psdf_binary_writer_s], [4 x %struct.psdf_binary_writer_s]* %binary, i32 0, i64 0
  %16 = load i32, i32* %w, align 4, !tbaa !69
  %17 = load i32, i32* %h, align 4, !tbaa !69
  %call5 = call i32 @psdf_CFE_binary(%struct.psdf_binary_writer_s* %arrayidx, i32 %16, i32 %17, i32 1) #5
  store i32 %call5, i32* %code, align 4, !tbaa !69
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %land.lhs.true, %lor.lhs.false
  %18 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %19 = bitcast %struct.gs_image1_s* %image to %struct.gs_pixel_image_s*
  %call9 = call i32 @pdf_begin_image_data(%struct.gx_device_pdf_s* %18, %struct.pdf_image_writer_s* %writer, %struct.gs_pixel_image_s* %19, %struct.cos_value_s* null, i32 0) #5
  store i32 %call9, i32* %code, align 4, !tbaa !69
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.8, %land.lhs.true, %entry
  %20 = load i32, i32* %code, align 4, !tbaa !69
  store i32 %20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.8
  %binary12 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %writer, i32 0, i32 0
  %arrayidx13 = getelementptr inbounds [4 x %struct.psdf_binary_writer_s], [4 x %struct.psdf_binary_writer_s]* %binary12, i32 0, i64 0
  %strm = getelementptr inbounds %struct.psdf_binary_writer_s, %struct.psdf_binary_writer_s* %arrayidx13, i32 0, i32 2
  %21 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !101
  %22 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %m_tile.addr, align 8, !tbaa !1
  %tmask14 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %22, i32 0, i32 8
  %data = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tmask14, i32 0, i32 0
  %23 = load i8*, i8** %data, align 8, !tbaa !103
  %24 = load i32, i32* %h, align 4, !tbaa !69
  %sub = sub nsw i32 %24, 1
  %25 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %m_tile.addr, align 8, !tbaa !1
  %tmask15 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %25, i32 0, i32 8
  %raster = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tmask15, i32 0, i32 1
  %26 = load i32, i32* %raster, align 4, !tbaa !104
  %mul = mul nsw i32 %sub, %26
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %23, i64 %idx.ext
  %27 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %m_tile.addr, align 8, !tbaa !1
  %tmask16 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %27, i32 0, i32 8
  %raster17 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tmask16, i32 0, i32 1
  %28 = load i32, i32* %raster17, align 4, !tbaa !104
  %sub18 = sub nsw i32 0, %28
  %29 = load i32, i32* %w, align 4, !tbaa !69
  %30 = load i32, i32* %h, align 4, !tbaa !69
  %call19 = call i32 @pdf_copy_mask_bits(%struct.stream_s* %21, i8* %add.ptr, i32 0, i32 %sub18, i32 %29, i32 %30, i8 zeroext 0) #5
  store i32 %call19, i32* %code, align 4, !tbaa !69
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.then.30, label %lor.lhs.false.22

lor.lhs.false.22:                                 ; preds = %if.end
  %31 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %32 = load i32, i32* %h, align 4, !tbaa !69
  %call23 = call i32 @pdf_end_image_binary(%struct.gx_device_pdf_s* %31, %struct.pdf_image_writer_s* %writer, i32 %32) #5
  store i32 %call23, i32* %code, align 4, !tbaa !69
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.then.30, label %lor.lhs.false.26

lor.lhs.false.26:                                 ; preds = %lor.lhs.false.22
  %33 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call27 = call i32 @pdf_end_write_image(%struct.gx_device_pdf_s* %33, %struct.pdf_image_writer_s* %writer) #5
  store i32 %call27, i32* %code, align 4, !tbaa !69
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %lor.lhs.false.26, %lor.lhs.false.22, %if.end
  %34 = load i32, i32* %code, align 4, !tbaa !69
  store i32 %34, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.31:                                        ; preds = %lor.lhs.false.26
  %pres = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %writer, i32 0, i32 3
  %35 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !105
  %object = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %35, i32 0, i32 7
  %36 = load %struct.cos_object_s*, %struct.cos_object_s** %object, align 8, !tbaa !21
  %37 = bitcast %struct.cos_object_s* %36 to %struct.cos_stream_s*
  %38 = load %struct.cos_stream_s**, %struct.cos_stream_s*** %ppcs_mask.addr, align 8, !tbaa !1
  store %struct.cos_stream_s* %37, %struct.cos_stream_s** %38, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.31, %if.then.30, %if.then
  %39 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  %40 = bitcast %struct.pdf_image_writer_s* %writer to i8*
  call void @llvm.lifetime.end(i64 192, i8* %40) #1
  %41 = bitcast %struct.gs_image1_s* %image to i8*
  call void @llvm.lifetime.end(i64 600, i8* %41) #1
  %42 = bitcast i32* %h to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #1
  %43 = bitcast i32* %w to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #1
  %44 = load i32, i32* %retval
  ret i32 %44
}

; Function Attrs: nounwind uwtable
define internal i32 @pdf_pattern(%struct.gx_device_pdf_s* %pdev, %struct.gx_device_color_s* %pdc, %struct.gx_color_tile_s* %p_tile, %struct.gx_color_tile_s* %m_tile, %struct.cos_stream_s* %pcs_image, %struct.pdf_resource_s** %ppres) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pdc.addr = alloca %struct.gx_device_color_s*, align 8
  %p_tile.addr = alloca %struct.gx_color_tile_s*, align 8
  %m_tile.addr = alloca %struct.gx_color_tile_s*, align 8
  %pcs_image.addr = alloca %struct.cos_stream_s*, align 8
  %ppres.addr = alloca %struct.pdf_resource_s**, align 8
  %pres = alloca %struct.pdf_resource_s*, align 8
  %code = alloca i32, align 4
  %pcos = alloca %struct.cos_stream_s*, align 8
  %pcd = alloca %struct.cos_dict_s*, align 8
  %pcd_Resources = alloca %struct.cos_dict_s*, align 8
  %tile = alloca %struct.gx_color_tile_s*, align 8
  %btile = alloca %struct.gx_strip_bitmap_s*, align 8
  %mask7 = alloca i32, align 4
  %step = alloca %struct.gs_point_s, align 8
  %smat = alloca %struct.gs_matrix_s, align 4
  %cleanup.dest.slot = alloca i32
  %pcd_XObject = alloca %struct.cos_dict_s*, align 8
  %key = alloca [25 x i8], align 16
  %v = alloca %struct.cos_value_s, align 8
  %object = alloca %struct.cos_object_s*, align 8
  %buf = alloca [29 x i8], align 16
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdc, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  store %struct.gx_color_tile_s* %p_tile, %struct.gx_color_tile_s** %p_tile.addr, align 8, !tbaa !1
  store %struct.gx_color_tile_s* %m_tile, %struct.gx_color_tile_s** %m_tile.addr, align 8, !tbaa !1
  store %struct.cos_stream_s* %pcs_image, %struct.cos_stream_s** %pcs_image.addr, align 8, !tbaa !1
  store %struct.pdf_resource_s** %ppres, %struct.pdf_resource_s*** %ppres.addr, align 8, !tbaa !1
  %0 = bitcast %struct.pdf_resource_s** %pres to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %3 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %mask = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %3, i32 0, i32 5
  %id = getelementptr inbounds %struct._mask, %struct._mask* %mask, i32 0, i32 1
  %4 = load i64, i64* %id, align 8, !tbaa !88
  %5 = load %struct.pdf_resource_s**, %struct.pdf_resource_s*** %ppres.addr, align 8, !tbaa !1
  %call = call i32 @pdf_alloc_resource(%struct.gx_device_pdf_s* %2, i32 2, i64 %4, %struct.pdf_resource_s** %5, i64 0) #5
  store i32 %call, i32* %code, align 4, !tbaa !69
  %6 = bitcast %struct.cos_stream_s** %pcos to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast %struct.cos_dict_s** %pcd to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast %struct.cos_dict_s** %pcd_Resources to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call1 = call %struct.cos_dict_s* @cos_dict_alloc(%struct.gx_device_pdf_s* %9, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0)) #5
  store %struct.cos_dict_s* %call1, %struct.cos_dict_s** %pcd_Resources, align 8, !tbaa !1
  %10 = bitcast %struct.gx_color_tile_s** %tile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %p_tile.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.gx_color_tile_s* %11, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %12 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %p_tile.addr, align 8, !tbaa !1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %13 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %m_tile.addr, align 8, !tbaa !1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.gx_color_tile_s* [ %12, %cond.true ], [ %13, %cond.false ]
  store %struct.gx_color_tile_s* %cond, %struct.gx_color_tile_s** %tile, align 8, !tbaa !1
  %14 = bitcast %struct.gx_strip_bitmap_s** %btile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %p_tile.addr, align 8, !tbaa !1
  %tobool2 = icmp ne %struct.gx_color_tile_s* %15, null
  br i1 %tobool2, label %cond.true.3, label %cond.false.4

cond.true.3:                                      ; preds = %cond.end
  %16 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %p_tile.addr, align 8, !tbaa !1
  %tbits = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %16, i32 0, i32 7
  br label %cond.end.5

cond.false.4:                                     ; preds = %cond.end
  %17 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %m_tile.addr, align 8, !tbaa !1
  %tmask = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %17, i32 0, i32 8
  br label %cond.end.5

cond.end.5:                                       ; preds = %cond.false.4, %cond.true.3
  %cond6 = phi %struct.gx_strip_bitmap_s* [ %tbits, %cond.true.3 ], [ %tmask, %cond.false.4 ]
  store %struct.gx_strip_bitmap_s* %cond6, %struct.gx_strip_bitmap_s** %btile, align 8, !tbaa !1
  %18 = bitcast i32* %mask7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %p_tile.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_color_tile_s* %19, null
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %mask7, align 4, !tbaa !69
  %20 = bitcast %struct.gs_point_s* %step to i8*
  call void @llvm.lifetime.start(i64 16, i8* %20) #1
  %21 = bitcast %struct.gs_matrix_s* %smat to i8*
  call void @llvm.lifetime.start(i64 24, i8* %21) #1
  %22 = load i32, i32* %code, align 4, !tbaa !69
  %cmp8 = icmp slt i32 %22, 0
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.5
  %23 = load i32, i32* %code, align 4, !tbaa !69
  store i32 %23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.178

if.end:                                           ; preds = %cond.end.5
  %24 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %25 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %p_tile.addr, align 8, !tbaa !1
  %26 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %m_tile.addr, align 8, !tbaa !1
  %call10 = call i32 @tile_size_ok(%struct.gx_device_pdf_s* %24, %struct.gx_color_tile_s* %25, %struct.gx_color_tile_s* %26) #5
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %if.end
  store i32 -13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.178

if.end.13:                                        ; preds = %if.end
  %27 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %tile, align 8, !tbaa !1
  %step_matrix = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %27, i32 0, i32 5
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix, i32 0, i32 1
  %28 = load float, float* %xy, align 4, !tbaa !76
  %conv14 = fpext float %28 to double
  %cmp15 = fcmp oeq double %conv14, 0.000000e+00
  br i1 %cmp15, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end.13
  %29 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %tile, align 8, !tbaa !1
  %step_matrix17 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %29, i32 0, i32 5
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix17, i32 0, i32 2
  %30 = load float, float* %yx, align 4, !tbaa !77
  %conv18 = fpext float %30 to double
  %cmp19 = fcmp oeq double %conv18, 0.000000e+00
  br i1 %cmp19, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %land.lhs.true
  %31 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %tile, align 8, !tbaa !1
  %step_matrix22 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %31, i32 0, i32 5
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix22, i32 0, i32 0
  %32 = load float, float* %xx, align 4, !tbaa !107
  %conv23 = fpext float %32 to double
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %step, i32 0, i32 0
  store double %conv23, double* %x, align 8, !tbaa !108
  %33 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %tile, align 8, !tbaa !1
  %step_matrix24 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %33, i32 0, i32 5
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix24, i32 0, i32 3
  %34 = load float, float* %yy, align 4, !tbaa !109
  %conv25 = fpext float %34 to double
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %step, i32 0, i32 1
  store double %conv25, double* %y, align 8, !tbaa !110
  br label %if.end.48

if.else:                                          ; preds = %land.lhs.true, %if.end.13
  %35 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %tile, align 8, !tbaa !1
  %step_matrix26 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %35, i32 0, i32 5
  %xx27 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix26, i32 0, i32 0
  %36 = load float, float* %xx27, align 4, !tbaa !75
  %conv28 = fpext float %36 to double
  %cmp29 = fcmp oeq double %conv28, 0.000000e+00
  br i1 %cmp29, label %land.lhs.true.31, label %if.else.46

land.lhs.true.31:                                 ; preds = %if.else
  %37 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %tile, align 8, !tbaa !1
  %step_matrix32 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %37, i32 0, i32 5
  %yy33 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix32, i32 0, i32 3
  %38 = load float, float* %yy33, align 4, !tbaa !78
  %conv34 = fpext float %38 to double
  %cmp35 = fcmp oeq double %conv34, 0.000000e+00
  br i1 %cmp35, label %if.then.37, label %if.else.46

if.then.37:                                       ; preds = %land.lhs.true.31
  %39 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %tile, align 8, !tbaa !1
  %step_matrix38 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %39, i32 0, i32 5
  %yx39 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix38, i32 0, i32 2
  %40 = load float, float* %yx39, align 4, !tbaa !111
  %conv40 = fpext float %40 to double
  %x41 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %step, i32 0, i32 0
  store double %conv40, double* %x41, align 8, !tbaa !108
  %41 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %tile, align 8, !tbaa !1
  %step_matrix42 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %41, i32 0, i32 5
  %xy43 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix42, i32 0, i32 1
  %42 = load float, float* %xy43, align 4, !tbaa !112
  %conv44 = fpext float %42 to double
  %y45 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %step, i32 0, i32 1
  store double %conv44, double* %y45, align 8, !tbaa !110
  br label %if.end.47

if.else.46:                                       ; preds = %land.lhs.true.31, %if.else
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.178

if.end.47:                                        ; preds = %if.then.37
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.then.21
  %43 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd_Resources, align 8, !tbaa !1
  %cmp49 = icmp eq %struct.cos_dict_s* %43, null
  br i1 %cmp49, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %if.end.48
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.178

if.end.52:                                        ; preds = %if.end.48
  call void @gs_make_identity(%struct.gs_matrix_s* %smat) #5
  %44 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %btile, align 8, !tbaa !1
  %rep_width = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %44, i32 0, i32 4
  %45 = load i16, i16* %rep_width, align 2, !tbaa !113
  %conv53 = zext i16 %45 to i32
  %conv54 = sitofp i32 %conv53 to double
  %46 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %46, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %47 = load float, float* %arrayidx, align 4, !tbaa !19
  %conv55 = fpext float %47 to double
  %div = fdiv double %conv55, 7.200000e+01
  %div56 = fdiv double %conv54, %div
  %conv57 = fptrunc double %div56 to float
  %xx58 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %smat, i32 0, i32 0
  store float %conv57, float* %xx58, align 4, !tbaa !75
  %48 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %btile, align 8, !tbaa !1
  %rep_height = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %48, i32 0, i32 5
  %49 = load i16, i16* %rep_height, align 2, !tbaa !114
  %conv59 = zext i16 %49 to i32
  %conv60 = sitofp i32 %conv59 to double
  %50 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution61 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %50, i32 0, i32 22
  %arrayidx62 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution61, i32 0, i64 1
  %51 = load float, float* %arrayidx62, align 4, !tbaa !19
  %conv63 = fpext float %51 to double
  %div64 = fdiv double %conv63, 7.200000e+01
  %div65 = fdiv double %conv60, %div64
  %conv66 = fptrunc double %div65 to float
  %yy67 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %smat, i32 0, i32 3
  store float %conv66, float* %yy67, align 4, !tbaa !78
  %52 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %tile, align 8, !tbaa !1
  %step_matrix68 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %52, i32 0, i32 5
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix68, i32 0, i32 4
  %53 = load float, float* %tx, align 4, !tbaa !115
  %conv69 = fpext float %53 to double
  %54 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution70 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %54, i32 0, i32 22
  %arrayidx71 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution70, i32 0, i64 0
  %55 = load float, float* %arrayidx71, align 4, !tbaa !19
  %conv72 = fpext float %55 to double
  %div73 = fdiv double %conv72, 7.200000e+01
  %div74 = fdiv double %conv69, %div73
  %conv75 = fptrunc double %div74 to float
  %tx76 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %smat, i32 0, i32 4
  store float %conv75, float* %tx76, align 4, !tbaa !63
  %56 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %tile, align 8, !tbaa !1
  %step_matrix77 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %56, i32 0, i32 5
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %step_matrix77, i32 0, i32 5
  %57 = load float, float* %ty, align 4, !tbaa !116
  %conv78 = fpext float %57 to double
  %58 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution79 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %58, i32 0, i32 22
  %arrayidx80 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution79, i32 0, i64 1
  %59 = load float, float* %arrayidx80, align 4, !tbaa !19
  %conv81 = fpext float %59 to double
  %div82 = fdiv double %conv81, 7.200000e+01
  %div83 = fdiv double %conv78, %div82
  %conv84 = fptrunc double %div83 to float
  %ty85 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %smat, i32 0, i32 5
  store float %conv84, float* %ty85, align 4, !tbaa !65
  %60 = load %struct.pdf_resource_s**, %struct.pdf_resource_s*** %ppres.addr, align 8, !tbaa !1
  %61 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %60, align 8, !tbaa !1
  store %struct.pdf_resource_s* %61, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %62 = bitcast %struct.cos_dict_s** %pcd_XObject to i8*
  call void @llvm.lifetime.start(i64 8, i8* %62) #1
  %63 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call86 = call %struct.cos_dict_s* @cos_dict_alloc(%struct.gx_device_pdf_s* %63, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i32 0, i32 0)) #5
  store %struct.cos_dict_s* %call86, %struct.cos_dict_s** %pcd_XObject, align 8, !tbaa !1
  %64 = bitcast [25 x i8]* %key to i8*
  call void @llvm.lifetime.start(i64 25, i8* %64) #1
  %65 = bitcast %struct.cos_value_s* %v to i8*
  call void @llvm.lifetime.start(i64 24, i8* %65) #1
  %66 = bitcast %struct.cos_object_s** %object to i8*
  call void @llvm.lifetime.start(i64 8, i8* %66) #1
  %67 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd_XObject, align 8, !tbaa !1
  %cmp87 = icmp eq %struct.cos_dict_s* %67, null
  br i1 %cmp87, label %if.then.89, label %if.end.90

if.then.89:                                       ; preds = %if.end.52
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.90:                                        ; preds = %if.end.52
  %arraydecay = getelementptr inbounds [25 x i8], [25 x i8]* %key, i32 0, i32 0
  %68 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcs_image.addr, align 8, !tbaa !1
  %id91 = getelementptr inbounds %struct.cos_stream_s, %struct.cos_stream_s* %68, i32 0, i32 1
  %69 = load i64, i64* %id91, align 8, !tbaa !117
  %call92 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i64 %69) #5
  %70 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call93 = call %struct.cos_object_s* @cos_reference_alloc(%struct.gx_device_pdf_s* %70, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.20, i32 0, i32 0)) #5
  store %struct.cos_object_s* %call93, %struct.cos_object_s** %object, align 8, !tbaa !1
  %71 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcs_image.addr, align 8, !tbaa !1
  %id94 = getelementptr inbounds %struct.cos_stream_s, %struct.cos_stream_s* %71, i32 0, i32 1
  %72 = load i64, i64* %id94, align 8, !tbaa !117
  %73 = load %struct.cos_object_s*, %struct.cos_object_s** %object, align 8, !tbaa !1
  %id95 = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %73, i32 0, i32 1
  store i64 %72, i64* %id95, align 8, !tbaa !120
  %74 = load %struct.cos_object_s*, %struct.cos_object_s** %object, align 8, !tbaa !1
  %cos_procs = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %74, i32 0, i32 0
  %75 = bitcast %struct.cos_object_procs_s** %cos_procs to %struct.cos_object_s*
  %call96 = call %struct.cos_value_s* @cos_object_value(%struct.cos_value_s* %v, %struct.cos_object_s* %75) #5
  %76 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd_XObject, align 8, !tbaa !1
  %arraydecay97 = getelementptr inbounds [25 x i8], [25 x i8]* %key, i32 0, i32 0
  %arraydecay98 = getelementptr inbounds [25 x i8], [25 x i8]* %key, i32 0, i32 0
  %call99 = call i64 @strlen(i8* %arraydecay98) #6
  %conv100 = trunc i64 %call99 to i32
  %call101 = call i32 @cos_dict_put(%struct.cos_dict_s* %76, i8* %arraydecay97, i32 %conv100, %struct.cos_value_s* %v) #5
  store i32 %call101, i32* %code, align 4, !tbaa !69
  %cmp102 = icmp slt i32 %call101, 0
  br i1 %cmp102, label %if.then.108, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.90
  %77 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd_Resources, align 8, !tbaa !1
  %78 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd_XObject, align 8, !tbaa !1
  %cos_procs104 = getelementptr inbounds %struct.cos_dict_s, %struct.cos_dict_s* %78, i32 0, i32 0
  %79 = bitcast %struct.cos_object_procs_s** %cos_procs104 to %struct.cos_object_s*
  %call105 = call i32 @cos_dict_put_c_key_object(%struct.cos_dict_s* %77, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), %struct.cos_object_s* %79) #5
  store i32 %call105, i32* %code, align 4, !tbaa !69
  %cmp106 = icmp slt i32 %call105, 0
  br i1 %cmp106, label %if.then.108, label %if.end.109

if.then.108:                                      ; preds = %lor.lhs.false, %if.end.90
  %80 = load i32, i32* %code, align 4, !tbaa !69
  store i32 %80, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.109:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.109, %if.then.108, %if.then.89
  %81 = bitcast %struct.cos_object_s** %object to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #1
  %82 = bitcast %struct.cos_value_s* %v to i8*
  call void @llvm.lifetime.end(i64 24, i8* %82) #1
  %83 = bitcast [25 x i8]* %key to i8*
  call void @llvm.lifetime.end(i64 25, i8* %83) #1
  %84 = bitcast %struct.cos_dict_s** %pcd_XObject to i8*
  call void @llvm.lifetime.end(i64 8, i8* %84) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.178 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  %85 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd_Resources, align 8, !tbaa !1
  %86 = load i32, i32* %mask7, align 4, !tbaa !69
  %tobool113 = icmp ne i32 %86, 0
  %cond114 = select i1 %tobool113, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0)
  %call115 = call i32 @cos_dict_put_c_strings(%struct.cos_dict_s* %85, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i8* %cond114) #5
  store i32 %call115, i32* %code, align 4, !tbaa !69
  %cmp116 = icmp slt i32 %call115, 0
  br i1 %cmp116, label %if.then.118, label %if.end.119

if.then.118:                                      ; preds = %cleanup.cont
  %87 = load i32, i32* %code, align 4, !tbaa !69
  store i32 %87, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.178

if.end.119:                                       ; preds = %cleanup.cont
  %88 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %object120 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %88, i32 0, i32 7
  %89 = load %struct.cos_object_s*, %struct.cos_object_s** %object120, align 8, !tbaa !21
  %call121 = call i32 @cos_become(%struct.cos_object_s* %89, %struct.cos_object_procs_s* @cos_stream_procs) #5
  %90 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %object122 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %90, i32 0, i32 7
  %91 = load %struct.cos_object_s*, %struct.cos_object_s** %object122, align 8, !tbaa !21
  %92 = bitcast %struct.cos_object_s* %91 to %struct.cos_stream_s*
  store %struct.cos_stream_s* %92, %struct.cos_stream_s** %pcos, align 8, !tbaa !1
  %93 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcos, align 8, !tbaa !1
  %call123 = call %struct.cos_dict_s* @cos_stream_dict(%struct.cos_stream_s* %93) #5
  store %struct.cos_dict_s* %call123, %struct.cos_dict_s** %pcd, align 8, !tbaa !1
  %94 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd, align 8, !tbaa !1
  %call124 = call i32 @cos_dict_put_c_key_int(%struct.cos_dict_s* %94, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i32 1) #5
  store i32 %call124, i32* %code, align 4, !tbaa !69
  %cmp125 = icmp slt i32 %call124, 0
  br i1 %cmp125, label %if.then.168, label %lor.lhs.false.127

lor.lhs.false.127:                                ; preds = %if.end.119
  %95 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd, align 8, !tbaa !1
  %96 = load i32, i32* %mask7, align 4, !tbaa !69
  %tobool128 = icmp ne i32 %96, 0
  %cond129 = select i1 %tobool128, i32 2, i32 1
  %call130 = call i32 @cos_dict_put_c_key_int(%struct.cos_dict_s* %95, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 %cond129) #5
  store i32 %call130, i32* %code, align 4, !tbaa !69
  %cmp131 = icmp slt i32 %call130, 0
  br i1 %cmp131, label %if.then.168, label %lor.lhs.false.133

lor.lhs.false.133:                                ; preds = %lor.lhs.false.127
  %97 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd, align 8, !tbaa !1
  %98 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %tile, align 8, !tbaa !1
  %tiling_type = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %98, i32 0, i32 4
  %99 = load i32, i32* %tiling_type, align 4, !tbaa !122
  %call134 = call i32 @cos_dict_put_c_key_int(%struct.cos_dict_s* %97, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i32 %99) #5
  store i32 %call134, i32* %code, align 4, !tbaa !69
  %cmp135 = icmp slt i32 %call134, 0
  br i1 %cmp135, label %if.then.168, label %lor.lhs.false.137

lor.lhs.false.137:                                ; preds = %lor.lhs.false.133
  %100 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd, align 8, !tbaa !1
  %101 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd_Resources, align 8, !tbaa !1
  %cos_procs138 = getelementptr inbounds %struct.cos_dict_s, %struct.cos_dict_s* %101, i32 0, i32 0
  %102 = bitcast %struct.cos_object_procs_s** %cos_procs138 to %struct.cos_object_s*
  %call139 = call i32 @cos_dict_put_c_key_object(%struct.cos_dict_s* %100, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), %struct.cos_object_s* %102) #5
  store i32 %call139, i32* %code, align 4, !tbaa !69
  %cmp140 = icmp slt i32 %call139, 0
  br i1 %cmp140, label %if.then.168, label %lor.lhs.false.142

lor.lhs.false.142:                                ; preds = %lor.lhs.false.137
  %103 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd, align 8, !tbaa !1
  %call143 = call i32 @cos_dict_put_c_strings(%struct.cos_dict_s* %103, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0)) #5
  store i32 %call143, i32* %code, align 4, !tbaa !69
  %cmp144 = icmp slt i32 %call143, 0
  br i1 %cmp144, label %if.then.168, label %lor.lhs.false.146

lor.lhs.false.146:                                ; preds = %lor.lhs.false.142
  %104 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd, align 8, !tbaa !1
  %call147 = call i32 @cos_dict_put_matrix(%struct.cos_dict_s* %104, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), %struct.gs_matrix_s* %smat) #5
  store i32 %call147, i32* %code, align 4, !tbaa !69
  %cmp148 = icmp slt i32 %call147, 0
  br i1 %cmp148, label %if.then.168, label %lor.lhs.false.150

lor.lhs.false.150:                                ; preds = %lor.lhs.false.146
  %105 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd, align 8, !tbaa !1
  %x151 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %step, i32 0, i32 0
  %106 = load double, double* %x151, align 8, !tbaa !108
  %107 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %btile, align 8, !tbaa !1
  %rep_width152 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %107, i32 0, i32 4
  %108 = load i16, i16* %rep_width152, align 2, !tbaa !113
  %conv153 = zext i16 %108 to i32
  %conv154 = sitofp i32 %conv153 to double
  %div155 = fdiv double %106, %conv154
  %call156 = call i32 @cos_dict_put_c_key_real(%struct.cos_dict_s* %105, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), double %div155) #5
  store i32 %call156, i32* %code, align 4, !tbaa !69
  %cmp157 = icmp slt i32 %call156, 0
  br i1 %cmp157, label %if.then.168, label %lor.lhs.false.159

lor.lhs.false.159:                                ; preds = %lor.lhs.false.150
  %109 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd, align 8, !tbaa !1
  %y160 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %step, i32 0, i32 1
  %110 = load double, double* %y160, align 8, !tbaa !110
  %111 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %btile, align 8, !tbaa !1
  %rep_height161 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %111, i32 0, i32 5
  %112 = load i16, i16* %rep_height161, align 2, !tbaa !114
  %conv162 = zext i16 %112 to i32
  %conv163 = sitofp i32 %conv162 to double
  %div164 = fdiv double %110, %conv163
  %call165 = call i32 @cos_dict_put_c_key_real(%struct.cos_dict_s* %109, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), double %div164) #5
  store i32 %call165, i32* %code, align 4, !tbaa !69
  %cmp166 = icmp slt i32 %call165, 0
  br i1 %cmp166, label %if.then.168, label %if.end.169

if.then.168:                                      ; preds = %lor.lhs.false.159, %lor.lhs.false.150, %lor.lhs.false.146, %lor.lhs.false.142, %lor.lhs.false.137, %lor.lhs.false.133, %lor.lhs.false.127, %if.end.119
  %113 = load i32, i32* %code, align 4, !tbaa !69
  store i32 %113, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.178

if.end.169:                                       ; preds = %lor.lhs.false.159
  %114 = bitcast [29 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 29, i8* %114) #1
  %arraydecay170 = getelementptr inbounds [29 x i8], [29 x i8]* %buf, i32 0, i32 0
  %115 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcs_image.addr, align 8, !tbaa !1
  %id171 = getelementptr inbounds %struct.cos_stream_s, %struct.cos_stream_s* %115, i32 0, i32 1
  %116 = load i64, i64* %id171, align 8, !tbaa !117
  %call172 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay170, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0), i64 %116) #5
  %117 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcos, align 8, !tbaa !1
  %arraydecay173 = getelementptr inbounds [29 x i8], [29 x i8]* %buf, i32 0, i32 0
  %arraydecay174 = getelementptr inbounds [29 x i8], [29 x i8]* %buf, i32 0, i32 0
  %call175 = call i64 @strlen(i8* %arraydecay174) #6
  %conv176 = trunc i64 %call175 to i32
  %call177 = call i32 @cos_stream_add_bytes(%struct.cos_stream_s* %117, i8* %arraydecay173, i32 %conv176) #5
  %118 = bitcast [29 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 29, i8* %118) #1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.178

cleanup.178:                                      ; preds = %if.end.169, %if.then.168, %if.then.118, %cleanup, %if.then.51, %if.else.46, %if.then.12, %if.then
  %119 = bitcast %struct.gs_matrix_s* %smat to i8*
  call void @llvm.lifetime.end(i64 24, i8* %119) #1
  %120 = bitcast %struct.gs_point_s* %step to i8*
  call void @llvm.lifetime.end(i64 16, i8* %120) #1
  %121 = bitcast i32* %mask7 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %121) #1
  %122 = bitcast %struct.gx_strip_bitmap_s** %btile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %122) #1
  %123 = bitcast %struct.gx_color_tile_s** %tile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %123) #1
  %124 = bitcast %struct.cos_dict_s** %pcd_Resources to i8*
  call void @llvm.lifetime.end(i64 8, i8* %124) #1
  %125 = bitcast %struct.cos_dict_s** %pcd to i8*
  call void @llvm.lifetime.end(i64 8, i8* %125) #1
  %126 = bitcast %struct.cos_stream_s** %pcos to i8*
  call void @llvm.lifetime.end(i64 8, i8* %126) #1
  %127 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %127) #1
  %128 = bitcast %struct.pdf_resource_s** %pres to i8*
  call void @llvm.lifetime.end(i64 8, i8* %128) #1
  %129 = load i32, i32* %retval
  ret i32 %129
}

declare i32 @pdf_cs_Pattern_uncolored_hl(%struct.gx_device_pdf_s*, %struct.gs_color_space_s*, %struct.cos_value_s*) #2

declare %struct.pdf_resource_s* @pdf_find_resource_by_gs_id(%struct.gx_device_pdf_s*, i32, i64) #2

declare %struct.pdf_resource_s* @pdf_substitute_pattern(%struct.pdf_resource_s*) #2

declare i32 @stream_puts(%struct.stream_s*, i8*) #2

declare i32 @cos_value_write(%struct.cos_value_s*, %struct.gx_device_pdf_s*) #2

declare i8* @pprints1(%struct.stream_s*, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define i32 @pdf_put_colored_pattern(%struct.gx_device_pdf_s* %pdev, %struct.gx_device_color_s* %pdc, %struct.gs_color_space_s* %pcs, %struct.psdf_set_color_commands_s* %ppscc, i32 %have_pattern_streams, %struct.pdf_resource_s** %ppres) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pdc.addr = alloca %struct.gx_device_color_s*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %ppscc.addr = alloca %struct.psdf_set_color_commands_s*, align 8
  %have_pattern_streams.addr = alloca i32, align 4
  %ppres.addr = alloca %struct.pdf_resource_s**, align 8
  %p_tile = alloca %struct.gx_color_tile_s*, align 8
  %pcs_Device = alloca %struct.gs_color_space_s*, align 8
  %cs_value = alloca %struct.cos_value_s, align 8
  %v = alloca %struct.cos_value_s, align 8
  %code = alloca i32, align 4
  %image = alloca %struct.gs_image1_s, align 8
  %m_tile = alloca %struct.gx_color_tile_s*, align 8
  %writer = alloca %struct.pdf_image_writer_s, align 8
  %w = alloca i32, align 4
  %h = alloca i32, align 4
  %depth_bytes = alloca i32, align 4
  %width = alloca i32, align 4
  %skip = alloca i32, align 4
  %bp = alloca i8*, align 8
  %mp = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %color = alloca i64, align 8
  %first = alloca i32, align 4
  %ci = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %dcolor = alloca %struct.gx_device_color_s, align 8
  %pcs_mask = alloca %struct.cos_stream_s*, align 8
  %pcs_image = alloca %struct.cos_stream_s*, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdc, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.psdf_set_color_commands_s* %ppscc, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  store i32 %have_pattern_streams, i32* %have_pattern_streams.addr, align 4, !tbaa !69
  store %struct.pdf_resource_s** %ppres, %struct.pdf_resource_s*** %ppres.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_color_tile_s** %p_tile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %1, i32 0, i32 1
  %pattern = bitcast %union._c* %colors to %struct._pat*
  %p_tile1 = getelementptr inbounds %struct._pat, %struct._pat* %pattern, i32 0, i32 0
  %2 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %p_tile1, align 8, !tbaa !123
  store %struct.gx_color_tile_s* %2, %struct.gx_color_tile_s** %p_tile, align 8, !tbaa !1
  %3 = bitcast %struct.gs_color_space_s** %pcs_Device to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast %struct.cos_value_s* %cs_value to i8*
  call void @llvm.lifetime.start(i64 24, i8* %4) #1
  %5 = bitcast %struct.cos_value_s* %v to i8*
  call void @llvm.lifetime.start(i64 24, i8* %5) #1
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast %struct.gs_image1_s* %image to i8*
  call void @llvm.lifetime.start(i64 600, i8* %7) #1
  %8 = bitcast %struct.gx_color_tile_s** %m_tile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store %struct.gx_color_tile_s* null, %struct.gx_color_tile_s** %m_tile, align 8, !tbaa !1
  %9 = bitcast %struct.pdf_image_writer_s* %writer to i8*
  call void @llvm.lifetime.start(i64 192, i8* %9) #1
  %10 = bitcast i32* %w to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %p_tile, align 8, !tbaa !1
  %tbits = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %11, i32 0, i32 7
  %rep_width = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tbits, i32 0, i32 4
  %12 = load i16, i16* %rep_width, align 2, !tbaa !125
  %conv = zext i16 %12 to i32
  store i32 %conv, i32* %w, align 4, !tbaa !69
  %13 = bitcast i32* %h to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %p_tile, align 8, !tbaa !1
  %tbits2 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %14, i32 0, i32 7
  %rep_height = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tbits2, i32 0, i32 5
  %15 = load i16, i16* %rep_height, align 2, !tbaa !126
  %conv3 = zext i16 %15 to i32
  store i32 %conv3, i32* %h, align 4, !tbaa !69
  %16 = load i32, i32* %have_pattern_streams.addr, align 4, !tbaa !69
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %if.end.89, label %if.then

if.then:                                          ; preds = %entry
  %17 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %mask = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %17, i32 0, i32 5
  %m_tile4 = getelementptr inbounds %struct._mask, %struct._mask* %mask, i32 0, i32 2
  %18 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %m_tile4, align 8, !tbaa !79
  store %struct.gx_color_tile_s* %18, %struct.gx_color_tile_s** %m_tile, align 8, !tbaa !1
  %19 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %m_tile, align 8, !tbaa !1
  %tobool5 = icmp ne %struct.gx_color_tile_s* %19, null
  br i1 %tobool5, label %if.then.6, label %if.end.84

if.then.6:                                        ; preds = %if.then
  %20 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %p_tile, align 8, !tbaa !1
  %tobool7 = icmp ne %struct.gx_color_tile_s* %20, null
  br i1 %tobool7, label %land.lhs.true, label %if.end.79

land.lhs.true:                                    ; preds = %if.then.6
  %21 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %p_tile, align 8, !tbaa !1
  %depth = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %21, i32 0, i32 1
  %22 = load i32, i32* %depth, align 4, !tbaa !95
  %and = and i32 %22, 7
  %tobool8 = icmp ne i32 %and, 0
  br i1 %tobool8, label %if.end.79, label %land.lhs.true.9

land.lhs.true.9:                                  ; preds = %land.lhs.true
  %23 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %p_tile, align 8, !tbaa !1
  %depth10 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %23, i32 0, i32 1
  %24 = load i32, i32* %depth10, align 4, !tbaa !95
  %conv11 = sext i32 %24 to i64
  %cmp = icmp ule i64 %conv11, 64
  br i1 %cmp, label %if.then.13, label %if.end.79

if.then.13:                                       ; preds = %land.lhs.true.9
  %25 = bitcast i32* %depth_bytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #1
  %26 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %p_tile, align 8, !tbaa !1
  %depth14 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %26, i32 0, i32 1
  %27 = load i32, i32* %depth14, align 4, !tbaa !95
  %shr = ashr i32 %27, 3
  store i32 %shr, i32* %depth_bytes, align 4, !tbaa !69
  %28 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #1
  %29 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %p_tile, align 8, !tbaa !1
  %tbits15 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %29, i32 0, i32 7
  %rep_width16 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tbits15, i32 0, i32 4
  %30 = load i16, i16* %rep_width16, align 2, !tbaa !125
  %conv17 = zext i16 %30 to i32
  store i32 %conv17, i32* %width, align 4, !tbaa !69
  %31 = bitcast i32* %skip to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #1
  %32 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %p_tile, align 8, !tbaa !1
  %tbits18 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %32, i32 0, i32 7
  %raster = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tbits18, i32 0, i32 1
  %33 = load i32, i32* %raster, align 4, !tbaa !127
  %34 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %p_tile, align 8, !tbaa !1
  %tbits19 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %34, i32 0, i32 7
  %rep_width20 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tbits19, i32 0, i32 4
  %35 = load i16, i16* %rep_width20, align 2, !tbaa !125
  %conv21 = zext i16 %35 to i32
  %36 = load i32, i32* %depth_bytes, align 4, !tbaa !69
  %mul = mul nsw i32 %conv21, %36
  %sub = sub nsw i32 %33, %mul
  store i32 %sub, i32* %skip, align 4, !tbaa !69
  %37 = bitcast i8** %bp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %37) #1
  %38 = bitcast i8** %mp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %38) #1
  %39 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %39) #1
  %40 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %40) #1
  %41 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %41) #1
  %42 = bitcast i64* %color to i8*
  call void @llvm.lifetime.start(i64 8, i8* %42) #1
  store i64 0, i64* %color, align 8, !tbaa !83
  %43 = bitcast i32* %first to i8*
  call void @llvm.lifetime.start(i64 4, i8* %43) #1
  store i32 1, i32* %first, align 4, !tbaa !69
  store i32 0, i32* %i, align 4, !tbaa !69
  %44 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %p_tile, align 8, !tbaa !1
  %tbits22 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %44, i32 0, i32 7
  %data = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tbits22, i32 0, i32 0
  %45 = load i8*, i8** %data, align 8, !tbaa !128
  store i8* %45, i8** %bp, align 8, !tbaa !1
  %46 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %p_tile, align 8, !tbaa !1
  %tmask = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %46, i32 0, i32 8
  %data23 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tmask, i32 0, i32 0
  %47 = load i8*, i8** %data23, align 8, !tbaa !103
  store i8* %47, i8** %mp, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc.56, %if.then.13
  %48 = load i32, i32* %i, align 4, !tbaa !69
  %49 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %p_tile, align 8, !tbaa !1
  %tbits24 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %49, i32 0, i32 7
  %rep_height25 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tbits24, i32 0, i32 5
  %50 = load i16, i16* %rep_height25, align 2, !tbaa !126
  %conv26 = zext i16 %50 to i32
  %cmp27 = icmp slt i32 %48, %conv26
  br i1 %cmp27, label %for.body, label %for.end.64

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !tbaa !69
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.53, %for.body
  %51 = load i32, i32* %j, align 4, !tbaa !69
  %52 = load i32, i32* %width, align 4, !tbaa !69
  %cmp30 = icmp slt i32 %51, %52
  br i1 %cmp30, label %for.body.32, label %for.end.55

for.body.32:                                      ; preds = %for.cond.29
  %53 = load i32, i32* %j, align 4, !tbaa !69
  %shr33 = ashr i32 %53, 3
  %idxprom = sext i32 %shr33 to i64
  %54 = load i8*, i8** %mp, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %54, i64 %idxprom
  %55 = load i8, i8* %arrayidx, align 1, !tbaa !129
  %conv34 = zext i8 %55 to i32
  %56 = load i32, i32* %j, align 4, !tbaa !69
  %and35 = and i32 %56, 7
  %shr36 = ashr i32 128, %and35
  %and37 = and i32 %conv34, %shr36
  %tobool38 = icmp ne i32 %and37, 0
  br i1 %tobool38, label %if.then.39, label %if.else.51

if.then.39:                                       ; preds = %for.body.32
  %57 = bitcast i64* %ci to i8*
  call void @llvm.lifetime.start(i64 8, i8* %57) #1
  store i64 0, i64* %ci, align 8, !tbaa !83
  store i32 0, i32* %k, align 4, !tbaa !69
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc, %if.then.39
  %58 = load i32, i32* %k, align 4, !tbaa !69
  %59 = load i32, i32* %depth_bytes, align 4, !tbaa !69
  %cmp41 = icmp slt i32 %58, %59
  br i1 %cmp41, label %for.body.43, label %for.end

for.body.43:                                      ; preds = %for.cond.40
  %60 = load i64, i64* %ci, align 8, !tbaa !83
  %shl = shl i64 %60, 8
  %61 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %incdec.ptr, i8** %bp, align 8, !tbaa !1
  %62 = load i8, i8* %61, align 1, !tbaa !129
  %conv44 = zext i8 %62 to i64
  %add = add i64 %shl, %conv44
  store i64 %add, i64* %ci, align 8, !tbaa !83
  br label %for.inc

for.inc:                                          ; preds = %for.body.43
  %63 = load i32, i32* %k, align 4, !tbaa !69
  %inc = add nsw i32 %63, 1
  store i32 %inc, i32* %k, align 4, !tbaa !69
  br label %for.cond.40

for.end:                                          ; preds = %for.cond.40
  %64 = load i32, i32* %first, align 4, !tbaa !69
  %tobool45 = icmp ne i32 %64, 0
  br i1 %tobool45, label %if.then.46, label %if.else

if.then.46:                                       ; preds = %for.end
  %65 = load i64, i64* %ci, align 8, !tbaa !83
  store i64 %65, i64* %color, align 8, !tbaa !83
  store i32 0, i32* %first, align 4, !tbaa !69
  br label %if.end.50

if.else:                                          ; preds = %for.end
  %66 = load i64, i64* %ci, align 8, !tbaa !83
  %67 = load i64, i64* %color, align 8, !tbaa !83
  %cmp47 = icmp ne i64 %66, %67
  br i1 %cmp47, label %if.then.49, label %if.end

if.then.49:                                       ; preds = %if.else
  store i32 11, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.else
  br label %if.end.50

if.end.50:                                        ; preds = %if.end, %if.then.46
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.49, %if.end.50
  %68 = bitcast i64* %ci to i8*
  call void @llvm.lifetime.end(i64 8, i8* %68) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.67 [
    i32 0, label %cleanup.cont
    i32 11, label %not_pure
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.52

if.else.51:                                       ; preds = %for.body.32
  %69 = load i32, i32* %depth_bytes, align 4, !tbaa !69
  %70 = load i8*, i8** %bp, align 8, !tbaa !1
  %idx.ext = sext i32 %69 to i64
  %add.ptr = getelementptr inbounds i8, i8* %70, i64 %idx.ext
  store i8* %add.ptr, i8** %bp, align 8, !tbaa !1
  br label %if.end.52

if.end.52:                                        ; preds = %if.else.51, %cleanup.cont
  br label %for.inc.53

for.inc.53:                                       ; preds = %if.end.52
  %71 = load i32, i32* %j, align 4, !tbaa !69
  %inc54 = add nsw i32 %71, 1
  store i32 %inc54, i32* %j, align 4, !tbaa !69
  br label %for.cond.29

for.end.55:                                       ; preds = %for.cond.29
  br label %for.inc.56

for.inc.56:                                       ; preds = %for.end.55
  %72 = load i32, i32* %i, align 4, !tbaa !69
  %inc57 = add nsw i32 %72, 1
  store i32 %inc57, i32* %i, align 4, !tbaa !69
  %73 = load i32, i32* %skip, align 4, !tbaa !69
  %74 = load i8*, i8** %bp, align 8, !tbaa !1
  %idx.ext58 = sext i32 %73 to i64
  %add.ptr59 = getelementptr inbounds i8, i8* %74, i64 %idx.ext58
  store i8* %add.ptr59, i8** %bp, align 8, !tbaa !1
  %75 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %p_tile, align 8, !tbaa !1
  %tmask60 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %75, i32 0, i32 8
  %raster61 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tmask60, i32 0, i32 1
  %76 = load i32, i32* %raster61, align 4, !tbaa !104
  %77 = load i8*, i8** %mp, align 8, !tbaa !1
  %idx.ext62 = sext i32 %76 to i64
  %add.ptr63 = getelementptr inbounds i8, i8* %77, i64 %idx.ext62
  store i8* %add.ptr63, i8** %mp, align 8, !tbaa !1
  br label %for.cond

for.end.64:                                       ; preds = %for.cond
  %78 = bitcast %struct.gx_device_color_s* %dcolor to i8*
  call void @llvm.lifetime.start(i64 656, i8* %78) #1
  %79 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %80 = bitcast %struct.gx_device_color_s* %dcolor to i8*
  %81 = bitcast %struct.gx_device_color_s* %79 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %80, i8* %81, i64 656, i32 8, i1 false), !tbaa.struct !130
  %82 = load i64, i64* %color, align 8, !tbaa !83
  %colors65 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %dcolor, i32 0, i32 1
  %pure = bitcast %union._c* %colors65 to i64*
  store i64 %82, i64* %pure, align 8, !tbaa !83
  %83 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %84 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %85 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %86 = load i32, i32* %have_pattern_streams.addr, align 4, !tbaa !69
  %87 = load %struct.pdf_resource_s**, %struct.pdf_resource_s*** %ppres.addr, align 8, !tbaa !1
  %call = call i32 @pdf_put_uncolored_pattern(%struct.gx_device_pdf_s* %83, %struct.gx_device_color_s* %dcolor, %struct.gs_color_space_s* %84, %struct.psdf_set_color_commands_s* %85, i32 %86, %struct.pdf_resource_s** %87) #5
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %88 = bitcast %struct.gx_device_color_s* %dcolor to i8*
  call void @llvm.lifetime.end(i64 656, i8* %88) #1
  br label %cleanup.67

not_pure:                                         ; preds = %cleanup
  br label %do.body

do.body:                                          ; preds = %not_pure
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.67

cleanup.67:                                       ; preds = %do.end, %for.end.64, %cleanup
  %89 = bitcast i32* %first to i8*
  call void @llvm.lifetime.end(i64 4, i8* %89) #1
  %90 = bitcast i64* %color to i8*
  call void @llvm.lifetime.end(i64 8, i8* %90) #1
  %91 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %91) #1
  %92 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %92) #1
  %93 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %93) #1
  %94 = bitcast i8** %mp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %94) #1
  %95 = bitcast i8** %bp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %95) #1
  %96 = bitcast i32* %skip to i8*
  call void @llvm.lifetime.end(i64 4, i8* %96) #1
  %97 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %97) #1
  %98 = bitcast i32* %depth_bytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %98) #1
  %cleanup.dest.77 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.77, label %cleanup.183 [
    i32 0, label %cleanup.cont.78
  ]

cleanup.cont.78:                                  ; preds = %cleanup.67
  br label %if.end.79

if.end.79:                                        ; preds = %cleanup.cont.78, %land.lhs.true.9, %land.lhs.true, %if.then.6
  %99 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %CompatibilityLevel = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %99, i32 0, i32 75
  %100 = load double, double* %CompatibilityLevel, align 8, !tbaa !90
  %cmp80 = fcmp olt double %100, 1.300000e+00
  br i1 %cmp80, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %if.end.79
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.183

if.end.83:                                        ; preds = %if.end.79
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %if.then
  %101 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %102 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %p_tile, align 8, !tbaa !1
  %103 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %m_tile, align 8, !tbaa !1
  %call85 = call i32 @tile_size_ok(%struct.gx_device_pdf_s* %101, %struct.gx_color_tile_s* %102, %struct.gx_color_tile_s* %103) #5
  %tobool86 = icmp ne i32 %call85, 0
  br i1 %tobool86, label %if.end.88, label %if.then.87

if.then.87:                                       ; preds = %if.end.84
  store i32 -13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.183

if.end.88:                                        ; preds = %if.end.84
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.88, %entry
  %104 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call90 = call i32 @pdf_cs_Pattern_colored(%struct.gx_device_pdf_s* %104, %struct.cos_value_s* %v) #5
  store i32 %call90, i32* %code, align 4, !tbaa !69
  %105 = load i32, i32* %code, align 4, !tbaa !69
  %cmp91 = icmp slt i32 %105, 0
  br i1 %cmp91, label %if.then.93, label %if.end.94

if.then.93:                                       ; preds = %if.end.89
  %106 = load i32, i32* %code, align 4, !tbaa !69
  store i32 %106, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.183

if.end.94:                                        ; preds = %if.end.89
  %107 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %107, i32 0, i32 3
  %108 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !132
  %109 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %109, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %110 = load i32, i32* %num_components, align 4, !tbaa !133
  %call95 = call i32 @pdf_cspace_init_Device(%struct.gs_memory_s* %108, %struct.gs_color_space_s** %pcs_Device, i32 %110) #5
  %111 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %112 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_Device, align 8, !tbaa !1
  %call96 = call i32 @pdf_color_space_named(%struct.gx_device_pdf_s* %111, %struct.cos_value_s* %cs_value, %struct.gs_range_s** null, %struct.gs_color_space_s* %112, %struct.pdf_color_space_names_s* @pdf_color_space_names, i32 1, i8* null, i32 0, i32 0) #5
  store i32 %call96, i32* %code, align 4, !tbaa !69
  %113 = load i32, i32* %code, align 4, !tbaa !69
  %cmp97 = icmp slt i32 %113, 0
  br i1 %cmp97, label %if.then.99, label %if.end.100

if.then.99:                                       ; preds = %if.end.94
  %114 = load i32, i32* %code, align 4, !tbaa !69
  store i32 %114, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.183

if.end.100:                                       ; preds = %if.end.94
  %115 = load i32, i32* %have_pattern_streams.addr, align 4, !tbaa !69
  %tobool101 = icmp ne i32 %115, 0
  br i1 %tobool101, label %if.else.176, label %if.then.102

if.then.102:                                      ; preds = %if.end.100
  %116 = bitcast %struct.cos_stream_s** %pcs_mask to i8*
  call void @llvm.lifetime.start(i64 8, i8* %116) #1
  store %struct.cos_stream_s* null, %struct.cos_stream_s** %pcs_mask, align 8, !tbaa !1
  %117 = bitcast %struct.cos_stream_s** %pcs_image to i8*
  call void @llvm.lifetime.start(i64 8, i8* %117) #1
  %118 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_Device, align 8, !tbaa !1
  call void @gs_image_t_init_adjust(%struct.gs_image1_s* %image, %struct.gs_color_space_s* %118, i32 0) #5
  %BitsPerComponent = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %image, i32 0, i32 4
  store i32 8, i32* %BitsPerComponent, align 4, !tbaa !134
  %119 = bitcast %struct.gs_image1_s* %image to %struct.gs_data_image_s*
  %120 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %p_tile, align 8, !tbaa !1
  %tbits103 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %120, i32 0, i32 7
  call void @pdf_set_pattern_image(%struct.gs_data_image_s* %119, %struct.gx_strip_bitmap_s* %tbits103) #5
  %121 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %m_tile, align 8, !tbaa !1
  %tobool104 = icmp ne %struct.gx_color_tile_s* %121, null
  br i1 %tobool104, label %if.then.105, label %if.end.111

if.then.105:                                      ; preds = %if.then.102
  %122 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %123 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %m_tile, align 8, !tbaa !1
  %call106 = call i32 @pdf_put_pattern_mask(%struct.gx_device_pdf_s* %122, %struct.gx_color_tile_s* %123, %struct.cos_stream_s** %pcs_mask) #5
  store i32 %call106, i32* %code, align 4, !tbaa !69
  %cmp107 = icmp slt i32 %call106, 0
  br i1 %cmp107, label %if.then.109, label %if.end.110

if.then.109:                                      ; preds = %if.then.105
  %124 = load i32, i32* %code, align 4, !tbaa !69
  store i32 %124, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.172

if.end.110:                                       ; preds = %if.then.105
  br label %if.end.111

if.end.111:                                       ; preds = %if.end.110, %if.then.102
  call void @pdf_image_writer_init(%struct.pdf_image_writer_s* %writer) #5
  %125 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %CompatibilityLevel112 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %125, i32 0, i32 75
  %126 = load double, double* %CompatibilityLevel112, align 8, !tbaa !90
  %127 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %ParamCompatibilityLevel = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %127, i32 0, i32 72
  store double %126, double* %ParamCompatibilityLevel, align 8, !tbaa !136
  %128 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %129 = load i32, i32* %w, align 4, !tbaa !69
  %130 = load i32, i32* %h, align 4, !tbaa !69
  %call113 = call i32 @pdf_begin_write_image(%struct.gx_device_pdf_s* %128, %struct.pdf_image_writer_s* %writer, i64 0, i32 %129, i32 %130, %struct.cos_dict_s* null, i32 0) #5
  store i32 %call113, i32* %code, align 4, !tbaa !69
  %cmp114 = icmp slt i32 %call113, 0
  br i1 %cmp114, label %if.then.124, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.111
  %131 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %132 = bitcast %struct.gx_device_pdf_s* %131 to %struct.gx_device_psdf_s*
  %binary = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %writer, i32 0, i32 0
  %arrayidx116 = getelementptr inbounds [4 x %struct.psdf_binary_writer_s], [4 x %struct.psdf_binary_writer_s]* %binary, i32 0, i64 0
  %133 = bitcast %struct.gs_image1_s* %image to %struct.gs_pixel_image_s*
  %call117 = call i32 @psdf_setup_lossless_filters(%struct.gx_device_psdf_s* %132, %struct.psdf_binary_writer_s* %arrayidx116, %struct.gs_pixel_image_s* %133, i32 0) #5
  store i32 %call117, i32* %code, align 4, !tbaa !69
  %cmp118 = icmp slt i32 %call117, 0
  br i1 %cmp118, label %if.then.124, label %lor.lhs.false.120

lor.lhs.false.120:                                ; preds = %lor.lhs.false
  %134 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %135 = bitcast %struct.gs_image1_s* %image to %struct.gs_pixel_image_s*
  %call121 = call i32 @pdf_begin_image_data(%struct.gx_device_pdf_s* %134, %struct.pdf_image_writer_s* %writer, %struct.gs_pixel_image_s* %135, %struct.cos_value_s* %cs_value, i32 0) #5
  store i32 %call121, i32* %code, align 4, !tbaa !69
  %cmp122 = icmp slt i32 %call121, 0
  br i1 %cmp122, label %if.then.124, label %if.end.125

if.then.124:                                      ; preds = %lor.lhs.false.120, %lor.lhs.false, %if.end.111
  %136 = load i32, i32* %code, align 4, !tbaa !69
  store i32 %136, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.172

if.end.125:                                       ; preds = %lor.lhs.false.120
  %binary126 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %writer, i32 0, i32 0
  %arrayidx127 = getelementptr inbounds [4 x %struct.psdf_binary_writer_s], [4 x %struct.psdf_binary_writer_s]* %binary126, i32 0, i64 0
  %strm = getelementptr inbounds %struct.psdf_binary_writer_s, %struct.psdf_binary_writer_s* %arrayidx127, i32 0, i32 2
  %137 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !101
  %138 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %p_tile, align 8, !tbaa !1
  %tbits128 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %138, i32 0, i32 7
  %data129 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tbits128, i32 0, i32 0
  %139 = load i8*, i8** %data129, align 8, !tbaa !128
  %140 = load i32, i32* %h, align 4, !tbaa !69
  %sub130 = sub nsw i32 %140, 1
  %141 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %p_tile, align 8, !tbaa !1
  %tbits131 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %141, i32 0, i32 7
  %raster132 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tbits131, i32 0, i32 1
  %142 = load i32, i32* %raster132, align 4, !tbaa !127
  %mul133 = mul nsw i32 %sub130, %142
  %idx.ext134 = sext i32 %mul133 to i64
  %add.ptr135 = getelementptr inbounds i8, i8* %139, i64 %idx.ext134
  %143 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %p_tile, align 8, !tbaa !1
  %tbits136 = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %143, i32 0, i32 7
  %raster137 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tbits136, i32 0, i32 1
  %144 = load i32, i32* %raster137, align 4, !tbaa !127
  %sub138 = sub nsw i32 0, %144
  %145 = load i32, i32* %w, align 4, !tbaa !69
  %146 = load i32, i32* %h, align 4, !tbaa !69
  %147 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %color_info139 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %147, i32 0, i32 11
  %depth140 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info139, i32 0, i32 3
  %148 = load i16, i16* %depth140, align 2, !tbaa !137
  %conv141 = zext i16 %148 to i32
  %shr142 = ashr i32 %conv141, 3
  %call143 = call i32 @pdf_copy_color_bits(%struct.stream_s* %137, i8* %add.ptr135, i32 0, i32 %sub138, i32 %145, i32 %146, i32 %shr142) #5
  store i32 %call143, i32* %code, align 4, !tbaa !69
  %cmp144 = icmp slt i32 %call143, 0
  br i1 %cmp144, label %if.then.150, label %lor.lhs.false.146

lor.lhs.false.146:                                ; preds = %if.end.125
  %149 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %150 = load i32, i32* %h, align 4, !tbaa !69
  %call147 = call i32 @pdf_end_image_binary(%struct.gx_device_pdf_s* %149, %struct.pdf_image_writer_s* %writer, i32 %150) #5
  store i32 %call147, i32* %code, align 4, !tbaa !69
  %cmp148 = icmp slt i32 %call147, 0
  br i1 %cmp148, label %if.then.150, label %if.end.151

if.then.150:                                      ; preds = %lor.lhs.false.146, %if.end.125
  %151 = load i32, i32* %code, align 4, !tbaa !69
  store i32 %151, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.172

if.end.151:                                       ; preds = %lor.lhs.false.146
  %pres = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %writer, i32 0, i32 3
  %152 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !105
  %object = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %152, i32 0, i32 7
  %153 = load %struct.cos_object_s*, %struct.cos_object_s** %object, align 8, !tbaa !21
  %154 = bitcast %struct.cos_object_s* %153 to %struct.cos_stream_s*
  store %struct.cos_stream_s* %154, %struct.cos_stream_s** %pcs_image, align 8, !tbaa !1
  %155 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcs_mask, align 8, !tbaa !1
  %cmp152 = icmp ne %struct.cos_stream_s* %155, null
  br i1 %cmp152, label %land.lhs.true.154, label %lor.lhs.false.159

land.lhs.true.154:                                ; preds = %if.end.151
  %156 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcs_image, align 8, !tbaa !1
  %call155 = call %struct.cos_dict_s* @cos_stream_dict(%struct.cos_stream_s* %156) #5
  %157 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcs_mask, align 8, !tbaa !1
  %cos_procs = getelementptr inbounds %struct.cos_stream_s, %struct.cos_stream_s* %157, i32 0, i32 0
  %158 = bitcast %struct.cos_object_procs_s** %cos_procs to %struct.cos_object_s*
  %call156 = call i32 @cos_dict_put_c_key_object(%struct.cos_dict_s* %call155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), %struct.cos_object_s* %158) #5
  store i32 %call156, i32* %code, align 4, !tbaa !69
  %cmp157 = icmp slt i32 %call156, 0
  br i1 %cmp157, label %if.then.163, label %lor.lhs.false.159

lor.lhs.false.159:                                ; preds = %land.lhs.true.154, %if.end.151
  %159 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call160 = call i32 @pdf_end_write_image(%struct.gx_device_pdf_s* %159, %struct.pdf_image_writer_s* %writer) #5
  store i32 %call160, i32* %code, align 4, !tbaa !69
  %cmp161 = icmp slt i32 %call160, 0
  br i1 %cmp161, label %if.then.163, label %if.end.164

if.then.163:                                      ; preds = %lor.lhs.false.159, %land.lhs.true.154
  %160 = load i32, i32* %code, align 4, !tbaa !69
  store i32 %160, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.172

if.end.164:                                       ; preds = %lor.lhs.false.159
  %pres165 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %writer, i32 0, i32 3
  %161 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres165, align 8, !tbaa !105
  %object166 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %161, i32 0, i32 7
  %162 = load %struct.cos_object_s*, %struct.cos_object_s** %object166, align 8, !tbaa !21
  %163 = bitcast %struct.cos_object_s* %162 to %struct.cos_stream_s*
  store %struct.cos_stream_s* %163, %struct.cos_stream_s** %pcs_image, align 8, !tbaa !1
  %164 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %165 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %166 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %p_tile, align 8, !tbaa !1
  %167 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %m_tile, align 8, !tbaa !1
  %168 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcs_image, align 8, !tbaa !1
  %169 = load %struct.pdf_resource_s**, %struct.pdf_resource_s*** %ppres.addr, align 8, !tbaa !1
  %call167 = call i32 @pdf_pattern(%struct.gx_device_pdf_s* %164, %struct.gx_device_color_s* %165, %struct.gx_color_tile_s* %166, %struct.gx_color_tile_s* %167, %struct.cos_stream_s* %168, %struct.pdf_resource_s** %169) #5
  store i32 %call167, i32* %code, align 4, !tbaa !69
  %170 = load i32, i32* %code, align 4, !tbaa !69
  %cmp168 = icmp slt i32 %170, 0
  br i1 %cmp168, label %if.then.170, label %if.end.171

if.then.170:                                      ; preds = %if.end.164
  %171 = load i32, i32* %code, align 4, !tbaa !69
  store i32 %171, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.172

if.end.171:                                       ; preds = %if.end.164
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.172

cleanup.172:                                      ; preds = %if.end.171, %if.then.170, %if.then.163, %if.then.150, %if.then.124, %if.then.109
  %172 = bitcast %struct.cos_stream_s** %pcs_image to i8*
  call void @llvm.lifetime.end(i64 8, i8* %172) #1
  %173 = bitcast %struct.cos_stream_s** %pcs_mask to i8*
  call void @llvm.lifetime.end(i64 8, i8* %173) #1
  %cleanup.dest.174 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.174, label %cleanup.183 [
    i32 0, label %cleanup.cont.175
  ]

cleanup.cont.175:                                 ; preds = %cleanup.172
  br label %if.end.179

if.else.176:                                      ; preds = %if.end.100
  %174 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %175 = load %struct.gx_color_tile_s*, %struct.gx_color_tile_s** %p_tile, align 8, !tbaa !1
  %id = getelementptr inbounds %struct.gx_color_tile_s, %struct.gx_color_tile_s* %175, i32 0, i32 0
  %176 = load i64, i64* %id, align 8, !tbaa !138
  %call177 = call %struct.pdf_resource_s* @pdf_find_resource_by_gs_id(%struct.gx_device_pdf_s* %174, i32 2, i64 %176) #5
  %177 = load %struct.pdf_resource_s**, %struct.pdf_resource_s*** %ppres.addr, align 8, !tbaa !1
  store %struct.pdf_resource_s* %call177, %struct.pdf_resource_s** %177, align 8, !tbaa !1
  %178 = load %struct.pdf_resource_s**, %struct.pdf_resource_s*** %ppres.addr, align 8, !tbaa !1
  %179 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %178, align 8, !tbaa !1
  %call178 = call %struct.pdf_resource_s* @pdf_substitute_pattern(%struct.pdf_resource_s* %179) #5
  %180 = load %struct.pdf_resource_s**, %struct.pdf_resource_s*** %ppres.addr, align 8, !tbaa !1
  store %struct.pdf_resource_s* %call178, %struct.pdf_resource_s** %180, align 8, !tbaa !1
  %181 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %used_mask = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %181, i32 0, i32 164
  %182 = load i64, i64* %used_mask, align 8, !tbaa !91
  %183 = load %struct.pdf_resource_s**, %struct.pdf_resource_s*** %ppres.addr, align 8, !tbaa !1
  %184 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %183, align 8, !tbaa !1
  %where_used = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %184, i32 0, i32 6
  %185 = load i64, i64* %where_used, align 8, !tbaa !92
  %or = or i64 %185, %182
  store i64 %or, i64* %where_used, align 8, !tbaa !92
  br label %if.end.179

if.end.179:                                       ; preds = %if.else.176, %cleanup.cont.175
  %186 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_Device, align 8, !tbaa !1
  call void @rc_decrement_cs(%struct.gs_color_space_s* %186, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i32 0, i32 0)) #5
  %187 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call180 = call i32 @cos_value_write(%struct.cos_value_s* %v, %struct.gx_device_pdf_s* %187) #5
  %188 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm181 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %188, i32 0, i32 47
  %189 = load %struct.stream_s*, %struct.stream_s** %strm181, align 8, !tbaa !87
  %190 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %setcolorspace = getelementptr inbounds %struct.psdf_set_color_commands_s, %struct.psdf_set_color_commands_s* %190, i32 0, i32 3
  %191 = load i8*, i8** %setcolorspace, align 8, !tbaa !93
  %call182 = call i8* @pprints1(%struct.stream_s* %189, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i8* %191) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.183

cleanup.183:                                      ; preds = %if.end.179, %cleanup.172, %if.then.99, %if.then.93, %if.then.87, %if.then.82, %cleanup.67
  %192 = bitcast i32* %h to i8*
  call void @llvm.lifetime.end(i64 4, i8* %192) #1
  %193 = bitcast i32* %w to i8*
  call void @llvm.lifetime.end(i64 4, i8* %193) #1
  %194 = bitcast %struct.pdf_image_writer_s* %writer to i8*
  call void @llvm.lifetime.end(i64 192, i8* %194) #1
  %195 = bitcast %struct.gx_color_tile_s** %m_tile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %195) #1
  %196 = bitcast %struct.gs_image1_s* %image to i8*
  call void @llvm.lifetime.end(i64 600, i8* %196) #1
  %197 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %197) #1
  %198 = bitcast %struct.cos_value_s* %v to i8*
  call void @llvm.lifetime.end(i64 24, i8* %198) #1
  %199 = bitcast %struct.cos_value_s* %cs_value to i8*
  call void @llvm.lifetime.end(i64 24, i8* %199) #1
  %200 = bitcast %struct.gs_color_space_s** %pcs_Device to i8*
  call void @llvm.lifetime.end(i64 8, i8* %200) #1
  %201 = bitcast %struct.gx_color_tile_s** %p_tile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %201) #1
  %202 = load i32, i32* %retval
  ret i32 %202
}

declare i32 @pdf_cs_Pattern_colored(%struct.gx_device_pdf_s*, %struct.cos_value_s*) #2

declare i32 @pdf_cspace_init_Device(%struct.gs_memory_s*, %struct.gs_color_space_s**, i32) #2

declare i32 @pdf_color_space_named(%struct.gx_device_pdf_s*, %struct.cos_value_s*, %struct.gs_range_s**, %struct.gs_color_space_s*, %struct.pdf_color_space_names_s*, i32, i8*, i32, i32) #2

declare void @gs_image_t_init_adjust(%struct.gs_image1_s*, %struct.gs_color_space_s*, i32) #2

; Function Attrs: nounwind uwtable
define internal void @pdf_set_pattern_image(%struct.gs_data_image_s* %pic, %struct.gx_strip_bitmap_s* %tile) #0 {
entry:
  %pic.addr = alloca %struct.gs_data_image_s*, align 8
  %tile.addr = alloca %struct.gx_strip_bitmap_s*, align 8
  store %struct.gs_data_image_s* %pic, %struct.gs_data_image_s** %pic.addr, align 8, !tbaa !1
  store %struct.gx_strip_bitmap_s* %tile, %struct.gx_strip_bitmap_s** %tile.addr, align 8, !tbaa !1
  %0 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tile.addr, align 8, !tbaa !1
  %rep_width = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %0, i32 0, i32 4
  %1 = load i16, i16* %rep_width, align 2, !tbaa !113
  %conv = zext i16 %1 to i32
  %2 = load %struct.gs_data_image_s*, %struct.gs_data_image_s** %pic.addr, align 8, !tbaa !1
  %Width = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %2, i32 0, i32 2
  store i32 %conv, i32* %Width, align 4, !tbaa !139
  %conv1 = sitofp i32 %conv to float
  %3 = load %struct.gs_data_image_s*, %struct.gs_data_image_s** %pic.addr, align 8, !tbaa !1
  %ImageMatrix = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %3, i32 0, i32 1
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ImageMatrix, i32 0, i32 0
  store float %conv1, float* %xx, align 4, !tbaa !141
  %4 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tile.addr, align 8, !tbaa !1
  %rep_height = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %4, i32 0, i32 5
  %5 = load i16, i16* %rep_height, align 2, !tbaa !114
  %conv2 = zext i16 %5 to i32
  %6 = load %struct.gs_data_image_s*, %struct.gs_data_image_s** %pic.addr, align 8, !tbaa !1
  %Height = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %6, i32 0, i32 3
  store i32 %conv2, i32* %Height, align 4, !tbaa !142
  %conv3 = sitofp i32 %conv2 to float
  %7 = load %struct.gs_data_image_s*, %struct.gs_data_image_s** %pic.addr, align 8, !tbaa !1
  %ImageMatrix4 = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %7, i32 0, i32 1
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ImageMatrix4, i32 0, i32 3
  store float %conv3, float* %yy, align 4, !tbaa !143
  ret void
}

declare void @pdf_image_writer_init(%struct.pdf_image_writer_s*) #2

declare i32 @pdf_begin_write_image(%struct.gx_device_pdf_s*, %struct.pdf_image_writer_s*, i64, i32, i32, %struct.cos_dict_s*, i32) #2

declare i32 @psdf_setup_lossless_filters(%struct.gx_device_psdf_s*, %struct.psdf_binary_writer_s*, %struct.gs_pixel_image_s*, i32) #2

declare i32 @pdf_begin_image_data(%struct.gx_device_pdf_s*, %struct.pdf_image_writer_s*, %struct.gs_pixel_image_s*, %struct.cos_value_s*, i32) #2

declare i32 @pdf_copy_color_bits(%struct.stream_s*, i8*, i32, i32, i32, i32, i32) #2

declare i32 @pdf_end_image_binary(%struct.gx_device_pdf_s*, %struct.pdf_image_writer_s*, i32) #2

declare i32 @pdf_end_write_image(%struct.gx_device_pdf_s*, %struct.pdf_image_writer_s*) #2

declare void @rc_decrement_cs(%struct.gs_color_space_s*, i8*) #2

; Function Attrs: nounwind uwtable
define i32 @pdf_put_pattern2(%struct.gx_device_pdf_s* %pdev, %struct.gx_device_color_s* %pdc, %struct.psdf_set_color_commands_s* %ppscc, %struct.pdf_resource_s** %ppres) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pdc.addr = alloca %struct.gx_device_color_s*, align 8
  %ppscc.addr = alloca %struct.psdf_set_color_commands_s*, align 8
  %ppres.addr = alloca %struct.pdf_resource_s**, align 8
  %pinst = alloca %struct.gs_pattern2_instance_s*, align 8
  %psh = alloca %struct.gs_shading_s*, align 8
  %v = alloca %struct.cos_value_s, align 8
  %pres = alloca %struct.pdf_resource_s*, align 8
  %psres = alloca %struct.pdf_resource_s*, align 8
  %pcd = alloca %struct.cos_dict_s*, align 8
  %psco = alloca %struct.cos_object_s*, align 8
  %pranges = alloca %struct.gs_range_s*, align 8
  %code = alloca i32, align 4
  %code1 = alloca i32, align 4
  %smat = alloca %struct.gs_matrix_s, align 4
  %cleanup.dest.slot = alloca i32
  %xscale = alloca double, align 8
  %yscale = alloca double, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdc, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  store %struct.psdf_set_color_commands_s* %ppscc, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  store %struct.pdf_resource_s** %ppres, %struct.pdf_resource_s*** %ppres.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_pattern2_instance_s** %pinst to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %ccolor = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %1, i32 0, i32 4
  %pattern = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %ccolor, i32 0, i32 0
  %2 = load %struct.gs_pattern_instance_s*, %struct.gs_pattern_instance_s** %pattern, align 8, !tbaa !144
  %3 = bitcast %struct.gs_pattern_instance_s* %2 to %struct.gs_pattern2_instance_s*
  store %struct.gs_pattern2_instance_s* %3, %struct.gs_pattern2_instance_s** %pinst, align 8, !tbaa !1
  %4 = bitcast %struct.gs_shading_s** %psh to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gs_pattern2_instance_s*, %struct.gs_pattern2_instance_s** %pinst, align 8, !tbaa !1
  %templat = getelementptr inbounds %struct.gs_pattern2_instance_s, %struct.gs_pattern2_instance_s* %5, i32 0, i32 4
  %Shading = getelementptr inbounds %struct.gs_pattern2_template_s, %struct.gs_pattern2_template_s* %templat, i32 0, i32 4
  %6 = load %struct.gs_shading_s*, %struct.gs_shading_s** %Shading, align 8, !tbaa !145
  store %struct.gs_shading_s* %6, %struct.gs_shading_s** %psh, align 8, !tbaa !1
  %7 = bitcast %struct.cos_value_s* %v to i8*
  call void @llvm.lifetime.start(i64 24, i8* %7) #1
  %8 = bitcast %struct.pdf_resource_s** %pres to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast %struct.pdf_resource_s** %psres to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast %struct.cos_dict_s** %pcd to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast %struct.cos_object_s** %psco to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = bitcast %struct.gs_range_s** %pranges to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call = call i32 @pdf_cs_Pattern_colored(%struct.gx_device_pdf_s* %14, %struct.cos_value_s* %v) #5
  store i32 %call, i32* %code, align 4, !tbaa !69
  %15 = bitcast i32* %code1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  store i32 0, i32* %code1, align 4, !tbaa !69
  %16 = bitcast %struct.gs_matrix_s* %smat to i8*
  call void @llvm.lifetime.start(i64 24, i8* %16) #1
  %17 = load i32, i32* %code, align 4, !tbaa !69
  %cmp = icmp slt i32 %17, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %18 = load i32, i32* %code, align 4, !tbaa !69
  store i32 %18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %19 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %20 = load %struct.pdf_resource_s**, %struct.pdf_resource_s*** %ppres.addr, align 8, !tbaa !1
  %call1 = call i32 @pdf_alloc_resource(%struct.gx_device_pdf_s* %19, i32 2, i64 0, %struct.pdf_resource_s** %20, i64 -1) #5
  store i32 %call1, i32* %code, align 4, !tbaa !69
  %21 = load i32, i32* %code, align 4, !tbaa !69
  %cmp2 = icmp slt i32 %21, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %22 = load i32, i32* %code, align 4, !tbaa !69
  store i32 %22, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %23 = load %struct.pdf_resource_s**, %struct.pdf_resource_s*** %ppres.addr, align 8, !tbaa !1
  %24 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %23, align 8, !tbaa !1
  store %struct.pdf_resource_s* %24, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %25 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %object = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %25, i32 0, i32 7
  %26 = load %struct.cos_object_s*, %struct.cos_object_s** %object, align 8, !tbaa !21
  %call5 = call i32 @cos_become(%struct.cos_object_s* %26, %struct.cos_object_procs_s* @cos_dict_procs) #5
  %27 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %object6 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %27, i32 0, i32 7
  %28 = load %struct.cos_object_s*, %struct.cos_object_s** %object6, align 8, !tbaa !21
  %29 = bitcast %struct.cos_object_s* %28 to %struct.cos_dict_s*
  store %struct.cos_dict_s* %29, %struct.cos_dict_s** %pcd, align 8, !tbaa !1
  %30 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call7 = call i32 @pdf_alloc_resource(%struct.gx_device_pdf_s* %30, i32 3, i64 0, %struct.pdf_resource_s** %psres, i64 -1) #5
  store i32 %call7, i32* %code, align 4, !tbaa !69
  %31 = load i32, i32* %code, align 4, !tbaa !69
  %cmp8 = icmp slt i32 %31, 0
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.4
  %32 = load i32, i32* %code, align 4, !tbaa !69
  store i32 %32, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %if.end.4
  %33 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %psres, align 8, !tbaa !1
  %object11 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %33, i32 0, i32 7
  %34 = load %struct.cos_object_s*, %struct.cos_object_s** %object11, align 8, !tbaa !21
  store %struct.cos_object_s* %34, %struct.cos_object_s** %psco, align 8, !tbaa !1
  %35 = load %struct.gs_shading_s*, %struct.gs_shading_s** %psh, align 8, !tbaa !1
  %head = getelementptr inbounds %struct.gs_shading_s, %struct.gs_shading_s* %35, i32 0, i32 0
  %type = getelementptr inbounds %struct.gs_shading_head_s, %struct.gs_shading_head_s* %head, i32 0, i32 0
  %36 = load i32, i32* %type, align 4, !tbaa !148
  %cmp12 = icmp uge i32 %36, 4
  br i1 %cmp12, label %if.then.13, label %if.else.21

if.then.13:                                       ; preds = %if.end.10
  %37 = load %struct.cos_object_s*, %struct.cos_object_s** %psco, align 8, !tbaa !1
  %call14 = call i32 @cos_become(%struct.cos_object_s* %37, %struct.cos_object_procs_s* @cos_stream_procs) #5
  %38 = load %struct.cos_object_s*, %struct.cos_object_s** %psco, align 8, !tbaa !1
  %39 = bitcast %struct.cos_object_s* %38 to %struct.cos_stream_s*
  %call15 = call %struct.cos_dict_s* @cos_stream_dict(%struct.cos_stream_s* %39) #5
  %40 = load %struct.gs_shading_s*, %struct.gs_shading_s** %psh, align 8, !tbaa !1
  %41 = load %struct.gs_pattern2_instance_s*, %struct.gs_pattern2_instance_s** %pinst, align 8, !tbaa !1
  %shfill = getelementptr inbounds %struct.gs_pattern2_instance_s, %struct.gs_pattern2_instance_s* %41, i32 0, i32 5
  %42 = load i32, i32* %shfill, align 4, !tbaa !153
  %call16 = call i32 @pdf_put_shading_common(%struct.cos_dict_s* %call15, %struct.gs_shading_s* %40, i32 %42, %struct.gs_range_s** %pranges) #5
  store i32 %call16, i32* %code, align 4, !tbaa !69
  %43 = load i32, i32* %code, align 4, !tbaa !69
  %cmp17 = icmp sge i32 %43, 0
  br i1 %cmp17, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %if.then.13
  %44 = load %struct.cos_object_s*, %struct.cos_object_s** %psco, align 8, !tbaa !1
  %45 = bitcast %struct.cos_object_s* %44 to %struct.cos_stream_s*
  %46 = load %struct.gs_shading_s*, %struct.gs_shading_s** %psh, align 8, !tbaa !1
  %47 = load %struct.gs_range_s*, %struct.gs_range_s** %pranges, align 8, !tbaa !1
  %call19 = call i32 @pdf_put_mesh_shading(%struct.cos_stream_s* %45, %struct.gs_shading_s* %46, %struct.gs_range_s* %47) #5
  store i32 %call19, i32* %code1, align 4, !tbaa !69
  br label %if.end.20

if.else:                                          ; preds = %if.then.13
  %48 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %psres, align 8, !tbaa !1
  %where_used = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %48, i32 0, i32 6
  store i64 0, i64* %where_used, align 8, !tbaa !92
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.then.18
  br label %if.end.31

if.else.21:                                       ; preds = %if.end.10
  %49 = load %struct.cos_object_s*, %struct.cos_object_s** %psco, align 8, !tbaa !1
  %call22 = call i32 @cos_become(%struct.cos_object_s* %49, %struct.cos_object_procs_s* @cos_dict_procs) #5
  %50 = load %struct.cos_object_s*, %struct.cos_object_s** %psco, align 8, !tbaa !1
  %51 = bitcast %struct.cos_object_s* %50 to %struct.cos_dict_s*
  %52 = load %struct.gs_shading_s*, %struct.gs_shading_s** %psh, align 8, !tbaa !1
  %53 = load %struct.gs_pattern2_instance_s*, %struct.gs_pattern2_instance_s** %pinst, align 8, !tbaa !1
  %shfill23 = getelementptr inbounds %struct.gs_pattern2_instance_s, %struct.gs_pattern2_instance_s* %53, i32 0, i32 5
  %54 = load i32, i32* %shfill23, align 4, !tbaa !153
  %call24 = call i32 @pdf_put_shading_common(%struct.cos_dict_s* %51, %struct.gs_shading_s* %52, i32 %54, %struct.gs_range_s** %pranges) #5
  store i32 %call24, i32* %code, align 4, !tbaa !69
  %55 = load i32, i32* %code, align 4, !tbaa !69
  %cmp25 = icmp sge i32 %55, 0
  br i1 %cmp25, label %if.then.26, label %if.else.28

if.then.26:                                       ; preds = %if.else.21
  %56 = load %struct.cos_object_s*, %struct.cos_object_s** %psco, align 8, !tbaa !1
  %57 = bitcast %struct.cos_object_s* %56 to %struct.cos_dict_s*
  %58 = load %struct.gs_shading_s*, %struct.gs_shading_s** %psh, align 8, !tbaa !1
  %59 = load %struct.gs_range_s*, %struct.gs_range_s** %pranges, align 8, !tbaa !1
  %call27 = call i32 @pdf_put_scalar_shading(%struct.cos_dict_s* %57, %struct.gs_shading_s* %58, %struct.gs_range_s* %59) #5
  store i32 %call27, i32* %code, align 4, !tbaa !69
  br label %if.end.30

if.else.28:                                       ; preds = %if.else.21
  %60 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %psres, align 8, !tbaa !1
  %where_used29 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %60, i32 0, i32 6
  store i64 0, i64* %where_used29, align 8, !tbaa !92
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.28, %if.then.26
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.end.20
  %61 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %psres, align 8, !tbaa !1
  %where_used32 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %61, i32 0, i32 6
  %62 = load i64, i64* %where_used32, align 8, !tbaa !92
  %tobool = icmp ne i64 %62, 0
  br i1 %tobool, label %if.then.33, label %if.end.40

if.then.33:                                       ; preds = %if.end.31
  %63 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call34 = call i32 @pdf_substitute_resource(%struct.gx_device_pdf_s* %63, %struct.pdf_resource_s** %psres, i32 3, i32 (%struct.gx_device_pdf_s*, %struct.pdf_resource_s*, %struct.pdf_resource_s*)* null, i32 0) #5
  store i32 %call34, i32* %code, align 4, !tbaa !69
  %64 = load i32, i32* %code, align 4, !tbaa !69
  %cmp35 = icmp slt i32 %64, 0
  br i1 %cmp35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.then.33
  %65 = load i32, i32* %code, align 4, !tbaa !69
  store i32 %65, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.37:                                        ; preds = %if.then.33
  %66 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %psres, align 8, !tbaa !1
  %object38 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %66, i32 0, i32 7
  %67 = load %struct.cos_object_s*, %struct.cos_object_s** %object38, align 8, !tbaa !21
  store %struct.cos_object_s* %67, %struct.cos_object_s** %psco, align 8, !tbaa !1
  %68 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %used_mask = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %68, i32 0, i32 164
  %69 = load i64, i64* %used_mask, align 8, !tbaa !91
  %70 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %psres, align 8, !tbaa !1
  %where_used39 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %70, i32 0, i32 6
  %71 = load i64, i64* %where_used39, align 8, !tbaa !92
  %or = or i64 %71, %69
  store i64 %or, i64* %where_used39, align 8, !tbaa !92
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.37, %if.end.31
  %72 = load %struct.gs_pattern2_instance_s*, %struct.gs_pattern2_instance_s** %pinst, align 8, !tbaa !1
  %saved = getelementptr inbounds %struct.gs_pattern2_instance_s, %struct.gs_pattern2_instance_s* %72, i32 0, i32 2
  %73 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8, !tbaa !154
  %call41 = call i32 @gs_currentmatrix(%struct.gs_state_s* %73, %struct.gs_matrix_s* %smat) #5
  %74 = bitcast double* %xscale to i8*
  call void @llvm.lifetime.start(i64 8, i8* %74) #1
  store double 1.000000e+00, double* %xscale, align 8, !tbaa !20
  %75 = bitcast double* %yscale to i8*
  call void @llvm.lifetime.start(i64 8, i8* %75) #1
  store double 1.000000e+00, double* %yscale, align 8, !tbaa !20
  %76 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %FormDepth = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %76, i32 0, i32 201
  %77 = load i32, i32* %FormDepth, align 4, !tbaa !66
  %cmp42 = icmp eq i32 %77, 0
  br i1 %cmp42, label %if.then.43, label %if.end.48

if.then.43:                                       ; preds = %if.end.40
  %78 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %78, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %79 = load float, float* %arrayidx, align 4, !tbaa !19
  %conv = fpext float %79 to double
  %div = fdiv double 7.200000e+01, %conv
  store double %div, double* %xscale, align 8, !tbaa !20
  %80 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution44 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %80, i32 0, i32 22
  %arrayidx45 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution44, i32 0, i64 1
  %81 = load float, float* %arrayidx45, align 4, !tbaa !19
  %conv46 = fpext float %81 to double
  %div47 = fdiv double 7.200000e+01, %conv46
  store double %div47, double* %yscale, align 8, !tbaa !20
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.43, %if.end.40
  %82 = load double, double* %xscale, align 8, !tbaa !20
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %smat, i32 0, i32 0
  %83 = load float, float* %xx, align 4, !tbaa !75
  %conv49 = fpext float %83 to double
  %mul = fmul double %conv49, %82
  %conv50 = fptrunc double %mul to float
  store float %conv50, float* %xx, align 4, !tbaa !75
  %84 = load double, double* %xscale, align 8, !tbaa !20
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %smat, i32 0, i32 2
  %85 = load float, float* %yx, align 4, !tbaa !77
  %conv51 = fpext float %85 to double
  %mul52 = fmul double %conv51, %84
  %conv53 = fptrunc double %mul52 to float
  store float %conv53, float* %yx, align 4, !tbaa !77
  %86 = load double, double* %xscale, align 8, !tbaa !20
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %smat, i32 0, i32 4
  %87 = load float, float* %tx, align 4, !tbaa !63
  %conv54 = fpext float %87 to double
  %mul55 = fmul double %conv54, %86
  %conv56 = fptrunc double %mul55 to float
  store float %conv56, float* %tx, align 4, !tbaa !63
  %88 = load double, double* %yscale, align 8, !tbaa !20
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %smat, i32 0, i32 1
  %89 = load float, float* %xy, align 4, !tbaa !76
  %conv57 = fpext float %89 to double
  %mul58 = fmul double %conv57, %88
  %conv59 = fptrunc double %mul58 to float
  store float %conv59, float* %xy, align 4, !tbaa !76
  %90 = load double, double* %yscale, align 8, !tbaa !20
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %smat, i32 0, i32 3
  %91 = load float, float* %yy, align 4, !tbaa !78
  %conv60 = fpext float %91 to double
  %mul61 = fmul double %conv60, %90
  %conv62 = fptrunc double %mul61 to float
  store float %conv62, float* %yy, align 4, !tbaa !78
  %92 = load double, double* %yscale, align 8, !tbaa !20
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %smat, i32 0, i32 5
  %93 = load float, float* %ty, align 4, !tbaa !65
  %conv63 = fpext float %93 to double
  %mul64 = fmul double %conv63, %92
  %conv65 = fptrunc double %mul64 to float
  store float %conv65, float* %ty, align 4, !tbaa !65
  %94 = bitcast double* %yscale to i8*
  call void @llvm.lifetime.end(i64 8, i8* %94) #1
  %95 = bitcast double* %xscale to i8*
  call void @llvm.lifetime.end(i64 8, i8* %95) #1
  %96 = load i32, i32* %code, align 4, !tbaa !69
  %cmp66 = icmp slt i32 %96, 0
  br i1 %cmp66, label %if.then.79, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.48
  %97 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd, align 8, !tbaa !1
  %call68 = call i32 @cos_dict_put_c_key_int(%struct.cos_dict_s* %97, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i32 2) #5
  store i32 %call68, i32* %code, align 4, !tbaa !69
  %cmp69 = icmp slt i32 %call68, 0
  br i1 %cmp69, label %if.then.79, label %lor.lhs.false.71

lor.lhs.false.71:                                 ; preds = %lor.lhs.false
  %98 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd, align 8, !tbaa !1
  %99 = load %struct.cos_object_s*, %struct.cos_object_s** %psco, align 8, !tbaa !1
  %call72 = call i32 @cos_dict_put_c_key_object(%struct.cos_dict_s* %98, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), %struct.cos_object_s* %99) #5
  store i32 %call72, i32* %code, align 4, !tbaa !69
  %cmp73 = icmp slt i32 %call72, 0
  br i1 %cmp73, label %if.then.79, label %lor.lhs.false.75

lor.lhs.false.75:                                 ; preds = %lor.lhs.false.71
  %100 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd, align 8, !tbaa !1
  %call76 = call i32 @cos_dict_put_matrix(%struct.cos_dict_s* %100, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), %struct.gs_matrix_s* %smat) #5
  store i32 %call76, i32* %code, align 4, !tbaa !69
  %cmp77 = icmp slt i32 %call76, 0
  br i1 %cmp77, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %lor.lhs.false.75, %lor.lhs.false.71, %lor.lhs.false, %if.end.48
  %101 = load i32, i32* %code, align 4, !tbaa !69
  store i32 %101, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.80:                                        ; preds = %lor.lhs.false.75
  %102 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call81 = call i32 @pdf_substitute_resource(%struct.gx_device_pdf_s* %102, %struct.pdf_resource_s** %pres, i32 2, i32 (%struct.gx_device_pdf_s*, %struct.pdf_resource_s*, %struct.pdf_resource_s*)* null, i32 0) #5
  store i32 %call81, i32* %code, align 4, !tbaa !69
  %103 = load i32, i32* %code, align 4, !tbaa !69
  %cmp82 = icmp slt i32 %103, 0
  br i1 %cmp82, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %if.end.80
  %104 = load i32, i32* %code, align 4, !tbaa !69
  store i32 %104, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.85:                                        ; preds = %if.end.80
  %105 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %used_mask86 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %105, i32 0, i32 164
  %106 = load i64, i64* %used_mask86, align 8, !tbaa !91
  %107 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %where_used87 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %107, i32 0, i32 6
  %108 = load i64, i64* %where_used87, align 8, !tbaa !92
  %or88 = or i64 %108, %106
  store i64 %or88, i64* %where_used87, align 8, !tbaa !92
  %109 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %110 = load %struct.pdf_resource_s**, %struct.pdf_resource_s*** %ppres.addr, align 8, !tbaa !1
  store %struct.pdf_resource_s* %109, %struct.pdf_resource_s** %110, align 8, !tbaa !1
  %111 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call89 = call i32 @cos_value_write(%struct.cos_value_s* %v, %struct.gx_device_pdf_s* %111) #5
  %112 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %112, i32 0, i32 47
  %113 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !87
  %114 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %setcolorspace = getelementptr inbounds %struct.psdf_set_color_commands_s, %struct.psdf_set_color_commands_s* %114, i32 0, i32 3
  %115 = load i8*, i8** %setcolorspace, align 8, !tbaa !93
  %call90 = call i8* @pprints1(%struct.stream_s* %113, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i8* %115) #5
  %116 = load i32, i32* %code1, align 4, !tbaa !69
  store i32 %116, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.85, %if.then.84, %if.then.79, %if.then.36, %if.then.9, %if.then.3, %if.then
  %117 = bitcast %struct.gs_matrix_s* %smat to i8*
  call void @llvm.lifetime.end(i64 24, i8* %117) #1
  %118 = bitcast i32* %code1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %118) #1
  %119 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %119) #1
  %120 = bitcast %struct.gs_range_s** %pranges to i8*
  call void @llvm.lifetime.end(i64 8, i8* %120) #1
  %121 = bitcast %struct.cos_object_s** %psco to i8*
  call void @llvm.lifetime.end(i64 8, i8* %121) #1
  %122 = bitcast %struct.cos_dict_s** %pcd to i8*
  call void @llvm.lifetime.end(i64 8, i8* %122) #1
  %123 = bitcast %struct.pdf_resource_s** %psres to i8*
  call void @llvm.lifetime.end(i64 8, i8* %123) #1
  %124 = bitcast %struct.pdf_resource_s** %pres to i8*
  call void @llvm.lifetime.end(i64 8, i8* %124) #1
  %125 = bitcast %struct.cos_value_s* %v to i8*
  call void @llvm.lifetime.end(i64 24, i8* %125) #1
  %126 = bitcast %struct.gs_shading_s** %psh to i8*
  call void @llvm.lifetime.end(i64 8, i8* %126) #1
  %127 = bitcast %struct.gs_pattern2_instance_s** %pinst to i8*
  call void @llvm.lifetime.end(i64 8, i8* %127) #1
  %128 = load i32, i32* %retval
  ret i32 %128
}

declare i32 @pdf_alloc_resource(%struct.gx_device_pdf_s*, i32, i64, %struct.pdf_resource_s**, i64) #2

declare i32 @cos_become(%struct.cos_object_s*, %struct.cos_object_procs_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @pdf_put_shading_common(%struct.cos_dict_s* %pscd, %struct.gs_shading_s* %psh, i32 %shfill, %struct.gs_range_s** %ppranges) #0 {
entry:
  %retval = alloca i32, align 4
  %pscd.addr = alloca %struct.cos_dict_s*, align 8
  %psh.addr = alloca %struct.gs_shading_s*, align 8
  %shfill.addr = alloca i32, align 4
  %ppranges.addr = alloca %struct.gs_range_s**, align 8
  %type = alloca i32, align 4
  %pcs = alloca %struct.gs_color_space_s*, align 8
  %code = alloca i32, align 4
  %cs_value = alloca %struct.cos_value_s, align 8
  %cleanup.dest.slot = alloca i32
  %bbox = alloca [4 x float], align 16
  store %struct.cos_dict_s* %pscd, %struct.cos_dict_s** %pscd.addr, align 8, !tbaa !1
  store %struct.gs_shading_s* %psh, %struct.gs_shading_s** %psh.addr, align 8, !tbaa !1
  store i32 %shfill, i32* %shfill.addr, align 4, !tbaa !69
  store %struct.gs_range_s** %ppranges, %struct.gs_range_s*** %ppranges.addr, align 8, !tbaa !1
  %0 = bitcast i32* %type to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_shading_s*, %struct.gs_shading_s** %psh.addr, align 8, !tbaa !1
  %head = getelementptr inbounds %struct.gs_shading_s, %struct.gs_shading_s* %1, i32 0, i32 0
  %type1 = getelementptr inbounds %struct.gs_shading_head_s, %struct.gs_shading_head_s* %head, i32 0, i32 0
  %2 = load i32, i32* %type1, align 4, !tbaa !148
  store i32 %2, i32* %type, align 4, !tbaa !129
  %3 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_shading_s*, %struct.gs_shading_s** %psh.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_shading_s, %struct.gs_shading_s* %4, i32 0, i32 1
  %ColorSpace = getelementptr inbounds %struct.gs_shading_params_s, %struct.gs_shading_params_s* %params, i32 0, i32 0
  %5 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace, align 8, !tbaa !155
  store %struct.gs_color_space_s* %5, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pscd.addr, align 8, !tbaa !1
  %8 = load i32, i32* %type, align 4, !tbaa !129
  %call = call i32 @cos_dict_put_c_key_int(%struct.cos_dict_s* %7, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i32 0, i32 0), i32 %8) #5
  store i32 %call, i32* %code, align 4, !tbaa !69
  %9 = bitcast %struct.cos_value_s* %cs_value to i8*
  call void @llvm.lifetime.start(i64 24, i8* %9) #1
  %10 = load i32, i32* %code, align 4, !tbaa !69
  %cmp = icmp slt i32 %10, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %11 = load %struct.gs_shading_s*, %struct.gs_shading_s** %psh.addr, align 8, !tbaa !1
  %params2 = getelementptr inbounds %struct.gs_shading_s, %struct.gs_shading_s* %11, i32 0, i32 1
  %AntiAlias = getelementptr inbounds %struct.gs_shading_params_s, %struct.gs_shading_params_s* %params2, i32 0, i32 5
  %12 = load i32, i32* %AntiAlias, align 4, !tbaa !156
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %land.lhs.true, label %lor.lhs.false.5

land.lhs.true:                                    ; preds = %lor.lhs.false
  %13 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pscd.addr, align 8, !tbaa !1
  %call3 = call i32 @cos_dict_put_c_strings(%struct.cos_dict_s* %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0)) #5
  store i32 %call3, i32* %code, align 4, !tbaa !69
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.then, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %land.lhs.true, %lor.lhs.false
  %14 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pscd.addr, align 8, !tbaa !1
  %pdev = getelementptr inbounds %struct.cos_dict_s, %struct.cos_dict_s* %14, i32 0, i32 4
  %15 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !157
  %16 = load %struct.gs_range_s**, %struct.gs_range_s*** %ppranges.addr, align 8, !tbaa !1
  %17 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %call6 = call i32 @pdf_color_space_named(%struct.gx_device_pdf_s* %15, %struct.cos_value_s* %cs_value, %struct.gs_range_s** %16, %struct.gs_color_space_s* %17, %struct.pdf_color_space_names_s* @pdf_color_space_names, i32 0, i8* null, i32 0, i32 0) #5
  store i32 %call6, i32* %code, align 4, !tbaa !69
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.then, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %lor.lhs.false.5
  %18 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pscd.addr, align 8, !tbaa !1
  %call9 = call i32 @cos_dict_put_c_key(%struct.cos_dict_s* %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i32 0, i32 0), %struct.cos_value_s* %cs_value) #5
  store i32 %call9, i32* %code, align 4, !tbaa !69
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.8, %lor.lhs.false.5, %land.lhs.true, %entry
  %19 = load i32, i32* %code, align 4, !tbaa !69
  store i32 %19, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.51

if.end:                                           ; preds = %lor.lhs.false.8
  %20 = load %struct.gs_shading_s*, %struct.gs_shading_s** %psh.addr, align 8, !tbaa !1
  %params11 = getelementptr inbounds %struct.gs_shading_s, %struct.gs_shading_s* %20, i32 0, i32 1
  %Background = getelementptr inbounds %struct.gs_shading_params_s, %struct.gs_shading_params_s* %params11, i32 0, i32 2
  %21 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %Background, align 8, !tbaa !159
  %tobool12 = icmp ne %struct.gs_client_color_s* %21, null
  br i1 %tobool12, label %land.lhs.true.13, label %if.end.23

land.lhs.true.13:                                 ; preds = %if.end
  %22 = load i32, i32* %shfill.addr, align 4, !tbaa !69
  %tobool14 = icmp ne i32 %22, 0
  br i1 %tobool14, label %if.end.23, label %if.then.15

if.then.15:                                       ; preds = %land.lhs.true.13
  %23 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pscd.addr, align 8, !tbaa !1
  %24 = load %struct.gs_shading_s*, %struct.gs_shading_s** %psh.addr, align 8, !tbaa !1
  %params16 = getelementptr inbounds %struct.gs_shading_s, %struct.gs_shading_s* %24, i32 0, i32 1
  %Background17 = getelementptr inbounds %struct.gs_shading_params_s, %struct.gs_shading_params_s* %params16, i32 0, i32 2
  %25 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %Background17, align 8, !tbaa !159
  %paint = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %25, i32 0, i32 1
  %values = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint, i32 0, i32 0
  %arraydecay = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i32 0
  %26 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %call18 = call i32 @gs_color_space_num_components(%struct.gs_color_space_s* %26) #5
  %call19 = call i32 @cos_dict_put_c_key_floats(%struct.cos_dict_s* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i32 0, i32 0), float* %arraydecay, i32 %call18) #5
  store i32 %call19, i32* %code, align 4, !tbaa !69
  %27 = load i32, i32* %code, align 4, !tbaa !69
  %cmp20 = icmp slt i32 %27, 0
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.then.15
  %28 = load i32, i32* %code, align 4, !tbaa !69
  store i32 %28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.51

if.end.22:                                        ; preds = %if.then.15
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %land.lhs.true.13, %if.end
  %29 = load %struct.gs_shading_s*, %struct.gs_shading_s** %psh.addr, align 8, !tbaa !1
  %params24 = getelementptr inbounds %struct.gs_shading_s, %struct.gs_shading_s* %29, i32 0, i32 1
  %have_BBox = getelementptr inbounds %struct.gs_shading_params_s, %struct.gs_shading_params_s* %params24, i32 0, i32 3
  %30 = load i32, i32* %have_BBox, align 4, !tbaa !160
  %tobool25 = icmp ne i32 %30, 0
  br i1 %tobool25, label %if.then.26, label %if.end.50

if.then.26:                                       ; preds = %if.end.23
  %31 = bitcast [4 x float]* %bbox to i8*
  call void @llvm.lifetime.start(i64 16, i8* %31) #1
  %32 = load %struct.gs_shading_s*, %struct.gs_shading_s** %psh.addr, align 8, !tbaa !1
  %params27 = getelementptr inbounds %struct.gs_shading_s, %struct.gs_shading_s* %32, i32 0, i32 1
  %BBox = getelementptr inbounds %struct.gs_shading_params_s, %struct.gs_shading_params_s* %params27, i32 0, i32 4
  %p = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %BBox, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p, i32 0, i32 0
  %33 = load double, double* %x, align 8, !tbaa !161
  %conv = fptrunc double %33 to float
  %arrayidx = getelementptr inbounds [4 x float], [4 x float]* %bbox, i32 0, i64 0
  store float %conv, float* %arrayidx, align 4, !tbaa !19
  %34 = load %struct.gs_shading_s*, %struct.gs_shading_s** %psh.addr, align 8, !tbaa !1
  %params28 = getelementptr inbounds %struct.gs_shading_s, %struct.gs_shading_s* %34, i32 0, i32 1
  %BBox29 = getelementptr inbounds %struct.gs_shading_params_s, %struct.gs_shading_params_s* %params28, i32 0, i32 4
  %p30 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %BBox29, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p30, i32 0, i32 1
  %35 = load double, double* %y, align 8, !tbaa !162
  %conv31 = fptrunc double %35 to float
  %arrayidx32 = getelementptr inbounds [4 x float], [4 x float]* %bbox, i32 0, i64 1
  store float %conv31, float* %arrayidx32, align 4, !tbaa !19
  %36 = load %struct.gs_shading_s*, %struct.gs_shading_s** %psh.addr, align 8, !tbaa !1
  %params33 = getelementptr inbounds %struct.gs_shading_s, %struct.gs_shading_s* %36, i32 0, i32 1
  %BBox34 = getelementptr inbounds %struct.gs_shading_params_s, %struct.gs_shading_params_s* %params33, i32 0, i32 4
  %q = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %BBox34, i32 0, i32 1
  %x35 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q, i32 0, i32 0
  %37 = load double, double* %x35, align 8, !tbaa !163
  %conv36 = fptrunc double %37 to float
  %arrayidx37 = getelementptr inbounds [4 x float], [4 x float]* %bbox, i32 0, i64 2
  store float %conv36, float* %arrayidx37, align 4, !tbaa !19
  %38 = load %struct.gs_shading_s*, %struct.gs_shading_s** %psh.addr, align 8, !tbaa !1
  %params38 = getelementptr inbounds %struct.gs_shading_s, %struct.gs_shading_s* %38, i32 0, i32 1
  %BBox39 = getelementptr inbounds %struct.gs_shading_params_s, %struct.gs_shading_params_s* %params38, i32 0, i32 4
  %q40 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %BBox39, i32 0, i32 1
  %y41 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q40, i32 0, i32 1
  %39 = load double, double* %y41, align 8, !tbaa !164
  %conv42 = fptrunc double %39 to float
  %arrayidx43 = getelementptr inbounds [4 x float], [4 x float]* %bbox, i32 0, i64 3
  store float %conv42, float* %arrayidx43, align 4, !tbaa !19
  %40 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pscd.addr, align 8, !tbaa !1
  %arraydecay44 = getelementptr inbounds [4 x float], [4 x float]* %bbox, i32 0, i32 0
  %call45 = call i32 @cos_dict_put_c_key_floats(%struct.cos_dict_s* %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), float* %arraydecay44, i32 4) #5
  store i32 %call45, i32* %code, align 4, !tbaa !69
  %41 = load i32, i32* %code, align 4, !tbaa !69
  %cmp46 = icmp slt i32 %41, 0
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %if.then.26
  %42 = load i32, i32* %code, align 4, !tbaa !69
  store i32 %42, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.49:                                        ; preds = %if.then.26
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.49, %if.then.48
  %43 = bitcast [4 x float]* %bbox to i8*
  call void @llvm.lifetime.end(i64 16, i8* %43) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.51 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.50

if.end.50:                                        ; preds = %cleanup.cont, %if.end.23
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.51

cleanup.51:                                       ; preds = %if.end.50, %cleanup, %if.then.21, %if.then
  %44 = bitcast %struct.cos_value_s* %cs_value to i8*
  call void @llvm.lifetime.end(i64 24, i8* %44) #1
  %45 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #1
  %46 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #1
  %47 = bitcast i32* %type to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #1
  %48 = load i32, i32* %retval
  ret i32 %48
}

; Function Attrs: nounwind uwtable
define internal i32 @pdf_put_mesh_shading(%struct.cos_stream_s* %pscs, %struct.gs_shading_s* %psh, %struct.gs_range_s* %pranges) #0 {
entry:
  %retval = alloca i32, align 4
  %pscs.addr = alloca %struct.cos_stream_s*, align 8
  %psh.addr = alloca %struct.gs_shading_s*, align 8
  %pranges.addr = alloca %struct.gs_range_s*, align 8
  %pscd = alloca %struct.cos_dict_s*, align 8
  %pcs = alloca %struct.gs_color_space_s*, align 8
  %pmp = alloca %struct.gs_shading_mesh_params_s*, align 8
  %code = alloca i32, align 4
  %code1 = alloca i32, align 4
  %bits_per_coordinate = alloca i32, align 4
  %bits_per_component = alloca i32, align 4
  %bits_per_flag = alloca i32, align 4
  %num_comp = alloca i32, align 4
  %from_array = alloca i32, align 4
  %data_params = alloca %struct.pdf_mesh_data_params_s, align 8
  %cs = alloca %struct.shade_coord_stream_s, align 8
  %ctm_ident = alloca %struct.gs_matrix_fixed_s, align 4
  %flag = alloca i32, align 4
  %pca = alloca %struct.cos_array_s*, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %rmin = alloca double, align 8
  %rmax = alloca double, align 8
  %params106 = alloca %struct.gs_shading_FfGt_params_s*, align 8
  %params137 = alloca %struct.gs_shading_LfGt_params_s*, align 8
  %params169 = alloca %struct.gs_shading_Cp_params_s*, align 8
  %params219 = alloca %struct.gs_shading_Tpp_params_s*, align 8
  store %struct.cos_stream_s* %pscs, %struct.cos_stream_s** %pscs.addr, align 8, !tbaa !1
  store %struct.gs_shading_s* %psh, %struct.gs_shading_s** %psh.addr, align 8, !tbaa !1
  store %struct.gs_range_s* %pranges, %struct.gs_range_s** %pranges.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cos_dict_s** %pscd to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pscs.addr, align 8, !tbaa !1
  %call = call %struct.cos_dict_s* @cos_stream_dict(%struct.cos_stream_s* %1) #5
  store %struct.cos_dict_s* %call, %struct.cos_dict_s** %pscd, align 8, !tbaa !1
  %2 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.gs_shading_s*, %struct.gs_shading_s** %psh.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_shading_s, %struct.gs_shading_s* %3, i32 0, i32 1
  %ColorSpace = getelementptr inbounds %struct.gs_shading_params_s, %struct.gs_shading_params_s* %params, i32 0, i32 0
  %4 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace, align 8, !tbaa !155
  store %struct.gs_color_space_s* %4, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %5 = bitcast %struct.gs_shading_mesh_params_s** %pmp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.gs_shading_s*, %struct.gs_shading_s** %psh.addr, align 8, !tbaa !1
  %params1 = getelementptr inbounds %struct.gs_shading_s, %struct.gs_shading_s* %6, i32 0, i32 1
  %7 = bitcast %struct.gs_shading_params_s* %params1 to %struct.gs_shading_mesh_params_s*
  store %struct.gs_shading_mesh_params_s* %7, %struct.gs_shading_mesh_params_s** %pmp, align 8, !tbaa !1
  %8 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %code1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %bits_per_coordinate to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %bits_per_component to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast i32* %bits_per_flag to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast i32* %num_comp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast i32* %from_array to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load %struct.gs_shading_mesh_params_s*, %struct.gs_shading_mesh_params_s** %pmp, align 8, !tbaa !1
  %DataSource = getelementptr inbounds %struct.gs_shading_mesh_params_s, %struct.gs_shading_mesh_params_s* %15, i32 0, i32 6
  %type = getelementptr inbounds %struct.gs_data_source_s, %struct.gs_data_source_s* %DataSource, i32 0, i32 1
  %16 = load i32, i32* %type, align 4, !tbaa !165
  %cmp = icmp eq i32 %16, 2
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %from_array, align 4, !tbaa !69
  %17 = bitcast %struct.pdf_mesh_data_params_s* %data_params to i8*
  call void @llvm.lifetime.start(i64 32, i8* %17) #1
  %18 = bitcast %struct.shade_coord_stream_s* %cs to i8*
  call void @llvm.lifetime.start(i64 424, i8* %18) #1
  %19 = bitcast %struct.gs_matrix_fixed_s* %ctm_ident to i8*
  call void @llvm.lifetime.start(i64 36, i8* %19) #1
  %20 = bitcast i32* %flag to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = load %struct.gs_shading_mesh_params_s*, %struct.gs_shading_mesh_params_s** %pmp, align 8, !tbaa !1
  %Function = getelementptr inbounds %struct.gs_shading_mesh_params_s, %struct.gs_shading_mesh_params_s* %21, i32 0, i32 10
  %22 = load %struct.gs_function_s*, %struct.gs_function_s** %Function, align 8, !tbaa !168
  %tobool = icmp ne %struct.gs_function_s* %22, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %Domain = getelementptr inbounds %struct.pdf_mesh_data_params_s, %struct.pdf_mesh_data_params_s* %data_params, i32 0, i32 3
  store float* null, float** %Domain, align 8, !tbaa !169
  store i32 1, i32* %num_comp, align 4, !tbaa !69
  br label %if.end

if.else:                                          ; preds = %entry
  %23 = load %struct.gs_shading_mesh_params_s*, %struct.gs_shading_mesh_params_s** %pmp, align 8, !tbaa !1
  %Decode = getelementptr inbounds %struct.gs_shading_mesh_params_s, %struct.gs_shading_mesh_params_s* %23, i32 0, i32 9
  %24 = load float*, float** %Decode, align 8, !tbaa !171
  %cmp2 = icmp ne float* %24, null
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %25 = load %struct.gs_shading_mesh_params_s*, %struct.gs_shading_mesh_params_s** %pmp, align 8, !tbaa !1
  %Decode4 = getelementptr inbounds %struct.gs_shading_mesh_params_s, %struct.gs_shading_mesh_params_s* %25, i32 0, i32 9
  %26 = load float*, float** %Decode4, align 8, !tbaa !171
  %add.ptr = getelementptr inbounds float, float* %26, i64 4
  br label %cond.end

cond.false:                                       ; preds = %if.else
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float* [ %add.ptr, %cond.true ], [ null, %cond.false ]
  %Domain5 = getelementptr inbounds %struct.pdf_mesh_data_params_s, %struct.pdf_mesh_data_params_s* %data_params, i32 0, i32 3
  store float* %cond, float** %Domain5, align 8, !tbaa !169
  %27 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %call6 = call i32 @gs_color_space_num_components(%struct.gs_color_space_s* %27) #5
  store i32 %call6, i32* %num_comp, align 4, !tbaa !69
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then
  %28 = load %struct.gs_range_s*, %struct.gs_range_s** %pranges.addr, align 8, !tbaa !1
  %ranges = getelementptr inbounds %struct.pdf_mesh_data_params_s, %struct.pdf_mesh_data_params_s* %data_params, i32 0, i32 4
  store %struct.gs_range_s* %28, %struct.gs_range_s** %ranges, align 8, !tbaa !172
  %29 = load %struct.gs_shading_mesh_params_s*, %struct.gs_shading_mesh_params_s** %pmp, align 8, !tbaa !1
  call void @shade_next_init(%struct.shade_coord_stream_s* %cs, %struct.gs_shading_mesh_params_s* %29, %struct.gs_imager_state_s* null) #5
  %30 = load i32, i32* %from_array, align 4, !tbaa !69
  %tobool7 = icmp ne i32 %30, 0
  br i1 %tobool7, label %if.then.8, label %if.else.77

if.then.8:                                        ; preds = %if.end
  %31 = bitcast %struct.cos_array_s** %pca to i8*
  call void @llvm.lifetime.start(i64 8, i8* %31) #1
  %32 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pscd, align 8, !tbaa !1
  %pdev = getelementptr inbounds %struct.cos_dict_s, %struct.cos_dict_s* %32, i32 0, i32 4
  %33 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !157
  %call9 = call %struct.cos_array_s* @cos_array_alloc(%struct.gx_device_pdf_s* %33, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.32, i32 0, i32 0)) #5
  store %struct.cos_array_s* %call9, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %34 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #1
  %35 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %cmp10 = icmp eq %struct.cos_array_s* %35, null
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.then.8
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.73

if.end.13:                                        ; preds = %if.then.8
  store i32 0, i32* %i, align 4, !tbaa !69
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.13
  %36 = load i32, i32* %i, align 4, !tbaa !69
  %cmp14 = icmp slt i32 %36, 2
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %37 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %call16 = call i32 @pdf_array_add_real2(%struct.cos_array_s* %37, double -1.638400e+04, double 0x40CFFFFF80000000) #5
  store i32 %call16, i32* %code, align 4, !tbaa !69
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %for.body
  %38 = load i32, i32* %code, align 4, !tbaa !69
  store i32 %38, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.73

if.end.20:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.20
  %39 = load i32, i32* %i, align 4, !tbaa !69
  %inc = add nsw i32 %39, 1
  store i32 %inc, i32* %i, align 4, !tbaa !69
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %is_indexed = getelementptr inbounds %struct.pdf_mesh_data_params_s, %struct.pdf_mesh_data_params_s* %data_params, i32 0, i32 2
  store i32 0, i32* %is_indexed, align 4, !tbaa !173
  %40 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %call21 = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %40) #5
  %cmp22 = icmp eq i32 %call21, 10
  br i1 %cmp22, label %if.then.24, label %if.else.31

if.then.24:                                       ; preds = %for.end
  %is_indexed25 = getelementptr inbounds %struct.pdf_mesh_data_params_s, %struct.pdf_mesh_data_params_s* %data_params, i32 0, i32 2
  store i32 1, i32* %is_indexed25, align 4, !tbaa !173
  %41 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %call26 = call i32 @pdf_array_add_real2(%struct.cos_array_s* %41, double 0.000000e+00, double 6.553500e+04) #5
  store i32 %call26, i32* %code, align 4, !tbaa !69
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.then.24
  %42 = load i32, i32* %code, align 4, !tbaa !69
  store i32 %42, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.73

if.end.30:                                        ; preds = %if.then.24
  br label %if.end.62

if.else.31:                                       ; preds = %for.end
  store i32 0, i32* %i, align 4, !tbaa !69
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc.59, %if.else.31
  %43 = load i32, i32* %i, align 4, !tbaa !69
  %44 = load i32, i32* %num_comp, align 4, !tbaa !69
  %cmp33 = icmp slt i32 %43, %44
  br i1 %cmp33, label %for.body.35, label %for.end.61

for.body.35:                                      ; preds = %for.cond.32
  %45 = bitcast double* %rmin to i8*
  call void @llvm.lifetime.start(i64 8, i8* %45) #1
  %46 = bitcast double* %rmax to i8*
  call void @llvm.lifetime.start(i64 8, i8* %46) #1
  %47 = load %struct.gs_shading_mesh_params_s*, %struct.gs_shading_mesh_params_s** %pmp, align 8, !tbaa !1
  %Function36 = getelementptr inbounds %struct.gs_shading_mesh_params_s, %struct.gs_shading_mesh_params_s* %47, i32 0, i32 10
  %48 = load %struct.gs_function_s*, %struct.gs_function_s** %Function36, align 8, !tbaa !168
  %tobool37 = icmp ne %struct.gs_function_s* %48, null
  br i1 %tobool37, label %if.then.43, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.35
  %49 = load %struct.gs_range_s*, %struct.gs_range_s** %pranges.addr, align 8, !tbaa !1
  %tobool38 = icmp ne %struct.gs_range_s* %49, null
  br i1 %tobool38, label %if.then.43, label %lor.lhs.false.39

lor.lhs.false.39:                                 ; preds = %lor.lhs.false
  %Domain40 = getelementptr inbounds %struct.pdf_mesh_data_params_s, %struct.pdf_mesh_data_params_s* %data_params, i32 0, i32 3
  %50 = load float*, float** %Domain40, align 8, !tbaa !169
  %cmp41 = icmp eq float* %50, null
  br i1 %cmp41, label %if.then.43, label %if.else.44

if.then.43:                                       ; preds = %lor.lhs.false.39, %lor.lhs.false, %for.body.35
  store double 0.000000e+00, double* %rmin, align 8, !tbaa !20
  store double 1.000000e+00, double* %rmax, align 8, !tbaa !20
  br label %if.end.52

if.else.44:                                       ; preds = %lor.lhs.false.39
  %51 = load i32, i32* %i, align 4, !tbaa !69
  %mul = mul nsw i32 2, %51
  %idxprom = sext i32 %mul to i64
  %Domain45 = getelementptr inbounds %struct.pdf_mesh_data_params_s, %struct.pdf_mesh_data_params_s* %data_params, i32 0, i32 3
  %52 = load float*, float** %Domain45, align 8, !tbaa !169
  %arrayidx = getelementptr inbounds float, float* %52, i64 %idxprom
  %53 = load float, float* %arrayidx, align 4, !tbaa !19
  %conv46 = fpext float %53 to double
  store double %conv46, double* %rmin, align 8, !tbaa !20
  %54 = load i32, i32* %i, align 4, !tbaa !69
  %mul47 = mul nsw i32 2, %54
  %add = add nsw i32 %mul47, 1
  %idxprom48 = sext i32 %add to i64
  %Domain49 = getelementptr inbounds %struct.pdf_mesh_data_params_s, %struct.pdf_mesh_data_params_s* %data_params, i32 0, i32 3
  %55 = load float*, float** %Domain49, align 8, !tbaa !169
  %arrayidx50 = getelementptr inbounds float, float* %55, i64 %idxprom48
  %56 = load float, float* %arrayidx50, align 4, !tbaa !19
  %conv51 = fpext float %56 to double
  store double %conv51, double* %rmax, align 8, !tbaa !20
  br label %if.end.52

if.end.52:                                        ; preds = %if.else.44, %if.then.43
  %57 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %58 = load double, double* %rmin, align 8, !tbaa !20
  %59 = load double, double* %rmax, align 8, !tbaa !20
  %call53 = call i32 @pdf_array_add_real2(%struct.cos_array_s* %57, double %58, double %59) #5
  store i32 %call53, i32* %code, align 4, !tbaa !69
  %cmp54 = icmp slt i32 %call53, 0
  br i1 %cmp54, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %if.end.52
  %60 = load i32, i32* %code, align 4, !tbaa !69
  store i32 %60, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.57:                                        ; preds = %if.end.52
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.57, %if.then.56
  %61 = bitcast double* %rmax to i8*
  call void @llvm.lifetime.end(i64 8, i8* %61) #1
  %62 = bitcast double* %rmin to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.73 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc.59

for.inc.59:                                       ; preds = %cleanup.cont
  %63 = load i32, i32* %i, align 4, !tbaa !69
  %inc60 = add nsw i32 %63, 1
  store i32 %inc60, i32* %i, align 4, !tbaa !69
  br label %for.cond.32

for.end.61:                                       ; preds = %for.cond.32
  br label %if.end.62

if.end.62:                                        ; preds = %for.end.61, %if.end.30
  %64 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pscd, align 8, !tbaa !1
  %65 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %cos_procs = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %65, i32 0, i32 0
  %66 = bitcast %struct.cos_object_procs_s** %cos_procs to %struct.cos_object_s*
  %call63 = call i32 @cos_dict_put_c_key_object(%struct.cos_dict_s* %64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i32 0, i32 0), %struct.cos_object_s* %66) #5
  store i32 %call63, i32* %code, align 4, !tbaa !69
  %67 = load i32, i32* %code, align 4, !tbaa !69
  %cmp64 = icmp slt i32 %67, 0
  br i1 %cmp64, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %if.end.62
  %68 = load i32, i32* %code, align 4, !tbaa !69
  store i32 %68, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.73

if.end.67:                                        ; preds = %if.end.62
  store i32 24, i32* %bits_per_coordinate, align 4, !tbaa !69
  store i32 16, i32* %bits_per_component, align 4, !tbaa !69
  store i32 8, i32* %bits_per_flag, align 4, !tbaa !69
  %69 = bitcast %struct.gs_matrix_fixed_s* %ctm_ident to %struct.gs_matrix_s*
  call void @gs_make_identity(%struct.gs_matrix_s* %69) #5
  %ty_fixed = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm_ident, i32 0, i32 7
  store i32 0, i32* %ty_fixed, align 4, !tbaa !174
  %tx_fixed = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm_ident, i32 0, i32 6
  store i32 0, i32* %tx_fixed, align 4, !tbaa !175
  %txy_fixed_valid = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm_ident, i32 0, i32 8
  store i32 1, i32* %txy_fixed_valid, align 4, !tbaa !176
  %pctm = getelementptr inbounds %struct.shade_coord_stream_s, %struct.shade_coord_stream_s* %cs, i32 0, i32 6
  store %struct.gs_matrix_fixed_s* %ctm_ident, %struct.gs_matrix_fixed_s** %pctm, align 8, !tbaa !177
  %70 = load %struct.gs_shading_mesh_params_s*, %struct.gs_shading_mesh_params_s** %pmp, align 8, !tbaa !1
  %Function68 = getelementptr inbounds %struct.gs_shading_mesh_params_s, %struct.gs_shading_mesh_params_s* %70, i32 0, i32 10
  %71 = load %struct.gs_function_s*, %struct.gs_function_s** %Function68, align 8, !tbaa !168
  %tobool69 = icmp ne %struct.gs_function_s* %71, null
  br i1 %tobool69, label %if.then.70, label %if.end.72

if.then.70:                                       ; preds = %if.end.67
  %ranges71 = getelementptr inbounds %struct.pdf_mesh_data_params_s, %struct.pdf_mesh_data_params_s* %data_params, i32 0, i32 4
  store %struct.gs_range_s* null, %struct.gs_range_s** %ranges71, align 8, !tbaa !172
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.70, %if.end.67
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.73

cleanup.73:                                       ; preds = %if.end.72, %if.then.66, %cleanup, %if.then.29, %if.then.19, %if.then.12
  %72 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #1
  %73 = bitcast %struct.cos_array_s** %pca to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #1
  %cleanup.dest.75 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.75, label %cleanup.273 [
    i32 0, label %cleanup.cont.76
  ]

cleanup.cont.76:                                  ; preds = %cleanup.73
  br label %if.end.87

if.else.77:                                       ; preds = %if.end
  %74 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pscd, align 8, !tbaa !1
  %75 = load %struct.gs_shading_mesh_params_s*, %struct.gs_shading_mesh_params_s** %pmp, align 8, !tbaa !1
  %Decode78 = getelementptr inbounds %struct.gs_shading_mesh_params_s, %struct.gs_shading_mesh_params_s* %75, i32 0, i32 9
  %76 = load float*, float** %Decode78, align 8, !tbaa !171
  %77 = load i32, i32* %num_comp, align 4, !tbaa !69
  %mul79 = mul nsw i32 %77, 2
  %add80 = add nsw i32 4, %mul79
  %call81 = call i32 @cos_dict_put_c_key_floats(%struct.cos_dict_s* %74, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i32 0, i32 0), float* %76, i32 %add80) #5
  store i32 %call81, i32* %code, align 4, !tbaa !69
  %78 = load i32, i32* %code, align 4, !tbaa !69
  %cmp82 = icmp sge i32 %78, 0
  br i1 %cmp82, label %if.then.84, label %if.end.86

if.then.84:                                       ; preds = %if.else.77
  %79 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pscs.addr, align 8, !tbaa !1
  %s = getelementptr inbounds %struct.shade_coord_stream_s, %struct.shade_coord_stream_s* %cs, i32 0, i32 1
  %80 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !182
  %call85 = call i32 @cos_stream_add_stream_contents(%struct.cos_stream_s* %79, %struct.stream_s* %80) #5
  store i32 %call85, i32* %code, align 4, !tbaa !69
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.84, %if.else.77
  %81 = load %struct.gs_shading_mesh_params_s*, %struct.gs_shading_mesh_params_s** %pmp, align 8, !tbaa !1
  %BitsPerCoordinate = getelementptr inbounds %struct.gs_shading_mesh_params_s, %struct.gs_shading_mesh_params_s* %81, i32 0, i32 7
  %82 = load i32, i32* %BitsPerCoordinate, align 4, !tbaa !183
  store i32 %82, i32* %bits_per_coordinate, align 4, !tbaa !69
  %83 = load %struct.gs_shading_mesh_params_s*, %struct.gs_shading_mesh_params_s** %pmp, align 8, !tbaa !1
  %BitsPerComponent = getelementptr inbounds %struct.gs_shading_mesh_params_s, %struct.gs_shading_mesh_params_s* %83, i32 0, i32 8
  %84 = load i32, i32* %BitsPerComponent, align 4, !tbaa !184
  store i32 %84, i32* %bits_per_component, align 4, !tbaa !69
  store i32 -1, i32* %bits_per_flag, align 4, !tbaa !69
  br label %if.end.87

if.end.87:                                        ; preds = %if.end.86, %cleanup.cont.76
  %85 = load i32, i32* %code, align 4, !tbaa !69
  %cmp88 = icmp slt i32 %85, 0
  br i1 %cmp88, label %if.then.103, label %lor.lhs.false.90

lor.lhs.false.90:                                 ; preds = %if.end.87
  %86 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pscd, align 8, !tbaa !1
  %87 = load %struct.gs_shading_mesh_params_s*, %struct.gs_shading_mesh_params_s** %pmp, align 8, !tbaa !1
  %Function91 = getelementptr inbounds %struct.gs_shading_mesh_params_s, %struct.gs_shading_mesh_params_s* %87, i32 0, i32 10
  %88 = load %struct.gs_function_s*, %struct.gs_function_s** %Function91, align 8, !tbaa !168
  %89 = load %struct.gs_range_s*, %struct.gs_range_s** %pranges.addr, align 8, !tbaa !1
  %call92 = call i32 @pdf_put_shading_Function(%struct.cos_dict_s* %86, %struct.gs_function_s* %88, %struct.gs_range_s* %89) #5
  store i32 %call92, i32* %code, align 4, !tbaa !69
  %cmp93 = icmp slt i32 %call92, 0
  br i1 %cmp93, label %if.then.103, label %lor.lhs.false.95

lor.lhs.false.95:                                 ; preds = %lor.lhs.false.90
  %90 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pscd, align 8, !tbaa !1
  %91 = load i32, i32* %bits_per_coordinate, align 4, !tbaa !69
  %call96 = call i32 @cos_dict_put_c_key_int(%struct.cos_dict_s* %90, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.34, i32 0, i32 0), i32 %91) #5
  store i32 %call96, i32* %code, align 4, !tbaa !69
  %cmp97 = icmp slt i32 %call96, 0
  br i1 %cmp97, label %if.then.103, label %lor.lhs.false.99

lor.lhs.false.99:                                 ; preds = %lor.lhs.false.95
  %92 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pscd, align 8, !tbaa !1
  %93 = load i32, i32* %bits_per_component, align 4, !tbaa !69
  %call100 = call i32 @cos_dict_put_c_key_int(%struct.cos_dict_s* %92, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.35, i32 0, i32 0), i32 %93) #5
  store i32 %call100, i32* %code, align 4, !tbaa !69
  %cmp101 = icmp slt i32 %call100, 0
  br i1 %cmp101, label %if.then.103, label %if.end.104

if.then.103:                                      ; preds = %lor.lhs.false.99, %lor.lhs.false.95, %lor.lhs.false.90, %if.end.87
  %94 = load i32, i32* %code, align 4, !tbaa !69
  store i32 %94, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.273

if.end.104:                                       ; preds = %lor.lhs.false.99
  %95 = load %struct.gs_shading_s*, %struct.gs_shading_s** %psh.addr, align 8, !tbaa !1
  %head = getelementptr inbounds %struct.gs_shading_s, %struct.gs_shading_s* %95, i32 0, i32 0
  %type105 = getelementptr inbounds %struct.gs_shading_head_s, %struct.gs_shading_head_s* %head, i32 0, i32 0
  %96 = load i32, i32* %type105, align 4, !tbaa !148
  switch i32 %96, label %sw.default [
    i32 4, label %sw.bb
    i32 5, label %sw.bb.136
    i32 6, label %sw.bb.168
    i32 7, label %sw.bb.218
  ]

sw.bb:                                            ; preds = %if.end.104
  %97 = bitcast %struct.gs_shading_FfGt_params_s** %params106 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %97) #1
  %98 = load %struct.gs_shading_mesh_params_s*, %struct.gs_shading_mesh_params_s** %pmp, align 8, !tbaa !1
  %99 = bitcast %struct.gs_shading_mesh_params_s* %98 to %struct.gs_shading_FfGt_params_s*
  store %struct.gs_shading_FfGt_params_s* %99, %struct.gs_shading_FfGt_params_s** %params106, align 8, !tbaa !1
  %num_points = getelementptr inbounds %struct.pdf_mesh_data_params_s, %struct.pdf_mesh_data_params_s* %data_params, i32 0, i32 0
  store i32 1, i32* %num_points, align 4, !tbaa !185
  %100 = load i32, i32* %num_comp, align 4, !tbaa !69
  %num_components = getelementptr inbounds %struct.pdf_mesh_data_params_s, %struct.pdf_mesh_data_params_s* %data_params, i32 0, i32 1
  store i32 %100, i32* %num_components, align 4, !tbaa !186
  %101 = load i32, i32* %from_array, align 4, !tbaa !69
  %tobool107 = icmp ne i32 %101, 0
  br i1 %tobool107, label %if.then.108, label %if.end.129

if.then.108:                                      ; preds = %sw.bb
  br label %while.cond

while.cond:                                       ; preds = %if.end.116, %if.then.108
  %call109 = call i32 @shade_next_flag(%struct.shade_coord_stream_s* %cs, i32 0) #5
  store i32 %call109, i32* %flag, align 4, !tbaa !69
  %cmp110 = icmp sge i32 %call109, 0
  br i1 %cmp110, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %102 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pscs.addr, align 8, !tbaa !1
  %103 = load i32, i32* %flag, align 4, !tbaa !69
  %call112 = call i32 @put_float_mesh_data(%struct.cos_stream_s* %102, %struct.shade_coord_stream_s* %cs, i32 %103, %struct.pdf_mesh_data_params_s* %data_params) #5
  store i32 %call112, i32* %code, align 4, !tbaa !69
  %cmp113 = icmp slt i32 %call112, 0
  br i1 %cmp113, label %if.then.115, label %if.end.116

if.then.115:                                      ; preds = %while.body
  %104 = load i32, i32* %code, align 4, !tbaa !69
  store i32 %104, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.134

if.end.116:                                       ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %s117 = getelementptr inbounds %struct.shade_coord_stream_s, %struct.shade_coord_stream_s* %cs, i32 0, i32 1
  %105 = load %struct.stream_s*, %struct.stream_s** %s117, align 8, !tbaa !182
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %105, i32 0, i32 5
  %r = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_read_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 0
  %106 = load i8*, i8** %ptr, align 8, !tbaa !187
  %s118 = getelementptr inbounds %struct.shade_coord_stream_s, %struct.shade_coord_stream_s* %cs, i32 0, i32 1
  %107 = load %struct.stream_s*, %struct.stream_s** %s118, align 8, !tbaa !182
  %cursor119 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %107, i32 0, i32 5
  %r120 = bitcast %union.stream_cursor_s* %cursor119 to %struct.stream_cursor_read_s*
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r120, i32 0, i32 1
  %108 = load i8*, i8** %limit, align 8, !tbaa !189
  %cmp121 = icmp uge i8* %106, %108
  br i1 %cmp121, label %land.lhs.true, label %if.then.127

land.lhs.true:                                    ; preds = %while.end
  %s123 = getelementptr inbounds %struct.shade_coord_stream_s, %struct.shade_coord_stream_s* %cs, i32 0, i32 1
  %109 = load %struct.stream_s*, %struct.stream_s** %s123, align 8, !tbaa !182
  %end_status = getelementptr inbounds %struct.stream_s, %struct.stream_s* %109, i32 0, i32 9
  %110 = load i16, i16* %end_status, align 2, !tbaa !190
  %conv124 = sext i16 %110 to i32
  %cmp125 = icmp eq i32 %conv124, -1
  br i1 %cmp125, label %if.end.128, label %if.then.127

if.then.127:                                      ; preds = %land.lhs.true, %while.end
  store i32 -15, i32* %code, align 4, !tbaa !69
  br label %if.end.128

if.end.128:                                       ; preds = %if.then.127, %land.lhs.true
  br label %if.end.129

if.end.129:                                       ; preds = %if.end.128, %sw.bb
  %111 = load i32, i32* %bits_per_flag, align 4, !tbaa !69
  %cmp130 = icmp slt i32 %111, 0
  br i1 %cmp130, label %if.then.132, label %if.end.133

if.then.132:                                      ; preds = %if.end.129
  %112 = load %struct.gs_shading_FfGt_params_s*, %struct.gs_shading_FfGt_params_s** %params106, align 8, !tbaa !1
  %BitsPerFlag = getelementptr inbounds %struct.gs_shading_FfGt_params_s, %struct.gs_shading_FfGt_params_s* %112, i32 0, i32 11
  %113 = load i32, i32* %BitsPerFlag, align 4, !tbaa !191
  store i32 %113, i32* %bits_per_flag, align 4, !tbaa !69
  br label %if.end.133

if.end.133:                                       ; preds = %if.then.132, %if.end.129
  store i32 8, i32* %cleanup.dest.slot
  br label %cleanup.134

cleanup.134:                                      ; preds = %if.end.133, %if.then.115
  %114 = bitcast %struct.gs_shading_FfGt_params_s** %params106 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %114) #1
  %cleanup.dest.135 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.135, label %cleanup.273 [
    i32 8, label %sw.epilog
  ]

sw.bb.136:                                        ; preds = %if.end.104
  %115 = bitcast %struct.gs_shading_LfGt_params_s** %params137 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %115) #1
  %116 = load %struct.gs_shading_mesh_params_s*, %struct.gs_shading_mesh_params_s** %pmp, align 8, !tbaa !1
  %117 = bitcast %struct.gs_shading_mesh_params_s* %116 to %struct.gs_shading_LfGt_params_s*
  store %struct.gs_shading_LfGt_params_s* %117, %struct.gs_shading_LfGt_params_s** %params137, align 8, !tbaa !1
  %num_points138 = getelementptr inbounds %struct.pdf_mesh_data_params_s, %struct.pdf_mesh_data_params_s* %data_params, i32 0, i32 0
  store i32 1, i32* %num_points138, align 4, !tbaa !185
  %118 = load i32, i32* %num_comp, align 4, !tbaa !69
  %num_components139 = getelementptr inbounds %struct.pdf_mesh_data_params_s, %struct.pdf_mesh_data_params_s* %data_params, i32 0, i32 1
  store i32 %118, i32* %num_components139, align 4, !tbaa !186
  %119 = load i32, i32* %from_array, align 4, !tbaa !69
  %tobool140 = icmp ne i32 %119, 0
  br i1 %tobool140, label %if.then.141, label %if.end.165

if.then.141:                                      ; preds = %sw.bb.136
  br label %while.cond.142

while.cond.142:                                   ; preds = %if.end.163, %if.then.141
  %s143 = getelementptr inbounds %struct.shade_coord_stream_s, %struct.shade_coord_stream_s* %cs, i32 0, i32 1
  %120 = load %struct.stream_s*, %struct.stream_s** %s143, align 8, !tbaa !182
  %cursor144 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %120, i32 0, i32 5
  %r145 = bitcast %union.stream_cursor_s* %cursor144 to %struct.stream_cursor_read_s*
  %ptr146 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r145, i32 0, i32 0
  %121 = load i8*, i8** %ptr146, align 8, !tbaa !187
  %s147 = getelementptr inbounds %struct.shade_coord_stream_s, %struct.shade_coord_stream_s* %cs, i32 0, i32 1
  %122 = load %struct.stream_s*, %struct.stream_s** %s147, align 8, !tbaa !182
  %cursor148 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %122, i32 0, i32 5
  %r149 = bitcast %union.stream_cursor_s* %cursor148 to %struct.stream_cursor_read_s*
  %limit150 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r149, i32 0, i32 1
  %123 = load i8*, i8** %limit150, align 8, !tbaa !189
  %cmp151 = icmp uge i8* %121, %123
  br i1 %cmp151, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.142
  %s153 = getelementptr inbounds %struct.shade_coord_stream_s, %struct.shade_coord_stream_s* %cs, i32 0, i32 1
  %124 = load %struct.stream_s*, %struct.stream_s** %s153, align 8, !tbaa !182
  %end_status154 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %124, i32 0, i32 9
  %125 = load i16, i16* %end_status154, align 2, !tbaa !190
  %conv155 = sext i16 %125 to i32
  %cmp156 = icmp eq i32 %conv155, -1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.142
  %126 = phi i1 [ false, %while.cond.142 ], [ %cmp156, %land.rhs ]
  %lnot = xor i1 %126, true
  br i1 %lnot, label %while.body.158, label %while.end.164

while.body.158:                                   ; preds = %land.end
  %127 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pscs.addr, align 8, !tbaa !1
  %call159 = call i32 @put_float_mesh_data(%struct.cos_stream_s* %127, %struct.shade_coord_stream_s* %cs, i32 -1, %struct.pdf_mesh_data_params_s* %data_params) #5
  store i32 %call159, i32* %code, align 4, !tbaa !69
  %cmp160 = icmp slt i32 %call159, 0
  br i1 %cmp160, label %if.then.162, label %if.end.163

if.then.162:                                      ; preds = %while.body.158
  %128 = load i32, i32* %code, align 4, !tbaa !69
  store i32 %128, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.167

if.end.163:                                       ; preds = %while.body.158
  br label %while.cond.142

while.end.164:                                    ; preds = %land.end
  br label %if.end.165

if.end.165:                                       ; preds = %while.end.164, %sw.bb.136
  %129 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pscd, align 8, !tbaa !1
  %130 = load %struct.gs_shading_LfGt_params_s*, %struct.gs_shading_LfGt_params_s** %params137, align 8, !tbaa !1
  %VerticesPerRow = getelementptr inbounds %struct.gs_shading_LfGt_params_s, %struct.gs_shading_LfGt_params_s* %130, i32 0, i32 11
  %131 = load i32, i32* %VerticesPerRow, align 4, !tbaa !193
  %call166 = call i32 @cos_dict_put_c_key_int(%struct.cos_dict_s* %129, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.36, i32 0, i32 0), i32 %131) #5
  store i32 %call166, i32* %code, align 4, !tbaa !69
  %132 = load i32, i32* %code, align 4, !tbaa !69
  store i32 %132, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.167

cleanup.167:                                      ; preds = %if.end.165, %if.then.162
  %133 = bitcast %struct.gs_shading_LfGt_params_s** %params137 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %133) #1
  br label %cleanup.273

sw.bb.168:                                        ; preds = %if.end.104
  %134 = bitcast %struct.gs_shading_Cp_params_s** %params169 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %134) #1
  %135 = load %struct.gs_shading_mesh_params_s*, %struct.gs_shading_mesh_params_s** %pmp, align 8, !tbaa !1
  %136 = bitcast %struct.gs_shading_mesh_params_s* %135 to %struct.gs_shading_Cp_params_s*
  store %struct.gs_shading_Cp_params_s* %136, %struct.gs_shading_Cp_params_s** %params169, align 8, !tbaa !1
  %137 = load i32, i32* %from_array, align 4, !tbaa !69
  %tobool170 = icmp ne i32 %137, 0
  br i1 %tobool170, label %if.then.171, label %if.end.210

if.then.171:                                      ; preds = %sw.bb.168
  br label %while.cond.172

while.cond.172:                                   ; preds = %if.end.190, %if.then.171
  %call173 = call i32 @shade_next_flag(%struct.shade_coord_stream_s* %cs, i32 0) #5
  store i32 %call173, i32* %flag, align 4, !tbaa !69
  %cmp174 = icmp sge i32 %call173, 0
  br i1 %cmp174, label %while.body.176, label %while.end.191

while.body.176:                                   ; preds = %while.cond.172
  %138 = load i32, i32* %flag, align 4, !tbaa !69
  %cmp177 = icmp eq i32 %138, 0
  %cond179 = select i1 %cmp177, i32 12, i32 8
  %num_points180 = getelementptr inbounds %struct.pdf_mesh_data_params_s, %struct.pdf_mesh_data_params_s* %data_params, i32 0, i32 0
  store i32 %cond179, i32* %num_points180, align 4, !tbaa !185
  %139 = load i32, i32* %num_comp, align 4, !tbaa !69
  %140 = load i32, i32* %flag, align 4, !tbaa !69
  %cmp181 = icmp eq i32 %140, 0
  %cond183 = select i1 %cmp181, i32 4, i32 2
  %mul184 = mul nsw i32 %139, %cond183
  %num_components185 = getelementptr inbounds %struct.pdf_mesh_data_params_s, %struct.pdf_mesh_data_params_s* %data_params, i32 0, i32 1
  store i32 %mul184, i32* %num_components185, align 4, !tbaa !186
  %141 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pscs.addr, align 8, !tbaa !1
  %142 = load i32, i32* %flag, align 4, !tbaa !69
  %call186 = call i32 @put_float_mesh_data(%struct.cos_stream_s* %141, %struct.shade_coord_stream_s* %cs, i32 %142, %struct.pdf_mesh_data_params_s* %data_params) #5
  store i32 %call186, i32* %code, align 4, !tbaa !69
  %cmp187 = icmp slt i32 %call186, 0
  br i1 %cmp187, label %if.then.189, label %if.end.190

if.then.189:                                      ; preds = %while.body.176
  %143 = load i32, i32* %code, align 4, !tbaa !69
  store i32 %143, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.216

if.end.190:                                       ; preds = %while.body.176
  br label %while.cond.172

while.end.191:                                    ; preds = %while.cond.172
  %s192 = getelementptr inbounds %struct.shade_coord_stream_s, %struct.shade_coord_stream_s* %cs, i32 0, i32 1
  %144 = load %struct.stream_s*, %struct.stream_s** %s192, align 8, !tbaa !182
  %cursor193 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %144, i32 0, i32 5
  %r194 = bitcast %union.stream_cursor_s* %cursor193 to %struct.stream_cursor_read_s*
  %ptr195 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r194, i32 0, i32 0
  %145 = load i8*, i8** %ptr195, align 8, !tbaa !187
  %s196 = getelementptr inbounds %struct.shade_coord_stream_s, %struct.shade_coord_stream_s* %cs, i32 0, i32 1
  %146 = load %struct.stream_s*, %struct.stream_s** %s196, align 8, !tbaa !182
  %cursor197 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %146, i32 0, i32 5
  %r198 = bitcast %union.stream_cursor_s* %cursor197 to %struct.stream_cursor_read_s*
  %limit199 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r198, i32 0, i32 1
  %147 = load i8*, i8** %limit199, align 8, !tbaa !189
  %cmp200 = icmp uge i8* %145, %147
  br i1 %cmp200, label %land.lhs.true.202, label %if.then.208

land.lhs.true.202:                                ; preds = %while.end.191
  %s203 = getelementptr inbounds %struct.shade_coord_stream_s, %struct.shade_coord_stream_s* %cs, i32 0, i32 1
  %148 = load %struct.stream_s*, %struct.stream_s** %s203, align 8, !tbaa !182
  %end_status204 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %148, i32 0, i32 9
  %149 = load i16, i16* %end_status204, align 2, !tbaa !190
  %conv205 = sext i16 %149 to i32
  %cmp206 = icmp eq i32 %conv205, -1
  br i1 %cmp206, label %if.end.209, label %if.then.208

if.then.208:                                      ; preds = %land.lhs.true.202, %while.end.191
  store i32 -15, i32* %code, align 4, !tbaa !69
  br label %if.end.209

if.end.209:                                       ; preds = %if.then.208, %land.lhs.true.202
  br label %if.end.210

if.end.210:                                       ; preds = %if.end.209, %sw.bb.168
  %150 = load i32, i32* %bits_per_flag, align 4, !tbaa !69
  %cmp211 = icmp slt i32 %150, 0
  br i1 %cmp211, label %if.then.213, label %if.end.215

if.then.213:                                      ; preds = %if.end.210
  %151 = load %struct.gs_shading_Cp_params_s*, %struct.gs_shading_Cp_params_s** %params169, align 8, !tbaa !1
  %BitsPerFlag214 = getelementptr inbounds %struct.gs_shading_Cp_params_s, %struct.gs_shading_Cp_params_s* %151, i32 0, i32 11
  %152 = load i32, i32* %BitsPerFlag214, align 4, !tbaa !195
  store i32 %152, i32* %bits_per_flag, align 4, !tbaa !69
  br label %if.end.215

if.end.215:                                       ; preds = %if.then.213, %if.end.210
  store i32 8, i32* %cleanup.dest.slot
  br label %cleanup.216

cleanup.216:                                      ; preds = %if.end.215, %if.then.189
  %153 = bitcast %struct.gs_shading_Cp_params_s** %params169 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %153) #1
  %cleanup.dest.217 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.217, label %cleanup.273 [
    i32 8, label %sw.epilog
  ]

sw.bb.218:                                        ; preds = %if.end.104
  %154 = bitcast %struct.gs_shading_Tpp_params_s** %params219 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %154) #1
  %155 = load %struct.gs_shading_mesh_params_s*, %struct.gs_shading_mesh_params_s** %pmp, align 8, !tbaa !1
  %156 = bitcast %struct.gs_shading_mesh_params_s* %155 to %struct.gs_shading_Tpp_params_s*
  store %struct.gs_shading_Tpp_params_s* %156, %struct.gs_shading_Tpp_params_s** %params219, align 8, !tbaa !1
  %157 = load i32, i32* %from_array, align 4, !tbaa !69
  %tobool220 = icmp ne i32 %157, 0
  br i1 %tobool220, label %if.then.221, label %if.end.260

if.then.221:                                      ; preds = %sw.bb.218
  br label %while.cond.222

while.cond.222:                                   ; preds = %if.end.240, %if.then.221
  %call223 = call i32 @shade_next_flag(%struct.shade_coord_stream_s* %cs, i32 0) #5
  store i32 %call223, i32* %flag, align 4, !tbaa !69
  %cmp224 = icmp sge i32 %call223, 0
  br i1 %cmp224, label %while.body.226, label %while.end.241

while.body.226:                                   ; preds = %while.cond.222
  %158 = load i32, i32* %flag, align 4, !tbaa !69
  %cmp227 = icmp eq i32 %158, 0
  %cond229 = select i1 %cmp227, i32 16, i32 12
  %num_points230 = getelementptr inbounds %struct.pdf_mesh_data_params_s, %struct.pdf_mesh_data_params_s* %data_params, i32 0, i32 0
  store i32 %cond229, i32* %num_points230, align 4, !tbaa !185
  %159 = load i32, i32* %num_comp, align 4, !tbaa !69
  %160 = load i32, i32* %flag, align 4, !tbaa !69
  %cmp231 = icmp eq i32 %160, 0
  %cond233 = select i1 %cmp231, i32 4, i32 2
  %mul234 = mul nsw i32 %159, %cond233
  %num_components235 = getelementptr inbounds %struct.pdf_mesh_data_params_s, %struct.pdf_mesh_data_params_s* %data_params, i32 0, i32 1
  store i32 %mul234, i32* %num_components235, align 4, !tbaa !186
  %161 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pscs.addr, align 8, !tbaa !1
  %162 = load i32, i32* %flag, align 4, !tbaa !69
  %call236 = call i32 @put_float_mesh_data(%struct.cos_stream_s* %161, %struct.shade_coord_stream_s* %cs, i32 %162, %struct.pdf_mesh_data_params_s* %data_params) #5
  store i32 %call236, i32* %code, align 4, !tbaa !69
  %cmp237 = icmp slt i32 %call236, 0
  br i1 %cmp237, label %if.then.239, label %if.end.240

if.then.239:                                      ; preds = %while.body.226
  %163 = load i32, i32* %code, align 4, !tbaa !69
  store i32 %163, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.266

if.end.240:                                       ; preds = %while.body.226
  br label %while.cond.222

while.end.241:                                    ; preds = %while.cond.222
  %s242 = getelementptr inbounds %struct.shade_coord_stream_s, %struct.shade_coord_stream_s* %cs, i32 0, i32 1
  %164 = load %struct.stream_s*, %struct.stream_s** %s242, align 8, !tbaa !182
  %cursor243 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %164, i32 0, i32 5
  %r244 = bitcast %union.stream_cursor_s* %cursor243 to %struct.stream_cursor_read_s*
  %ptr245 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r244, i32 0, i32 0
  %165 = load i8*, i8** %ptr245, align 8, !tbaa !187
  %s246 = getelementptr inbounds %struct.shade_coord_stream_s, %struct.shade_coord_stream_s* %cs, i32 0, i32 1
  %166 = load %struct.stream_s*, %struct.stream_s** %s246, align 8, !tbaa !182
  %cursor247 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %166, i32 0, i32 5
  %r248 = bitcast %union.stream_cursor_s* %cursor247 to %struct.stream_cursor_read_s*
  %limit249 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r248, i32 0, i32 1
  %167 = load i8*, i8** %limit249, align 8, !tbaa !189
  %cmp250 = icmp uge i8* %165, %167
  br i1 %cmp250, label %land.lhs.true.252, label %if.then.258

land.lhs.true.252:                                ; preds = %while.end.241
  %s253 = getelementptr inbounds %struct.shade_coord_stream_s, %struct.shade_coord_stream_s* %cs, i32 0, i32 1
  %168 = load %struct.stream_s*, %struct.stream_s** %s253, align 8, !tbaa !182
  %end_status254 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %168, i32 0, i32 9
  %169 = load i16, i16* %end_status254, align 2, !tbaa !190
  %conv255 = sext i16 %169 to i32
  %cmp256 = icmp eq i32 %conv255, -1
  br i1 %cmp256, label %if.end.259, label %if.then.258

if.then.258:                                      ; preds = %land.lhs.true.252, %while.end.241
  store i32 -15, i32* %code, align 4, !tbaa !69
  br label %if.end.259

if.end.259:                                       ; preds = %if.then.258, %land.lhs.true.252
  br label %if.end.260

if.end.260:                                       ; preds = %if.end.259, %sw.bb.218
  %170 = load i32, i32* %bits_per_flag, align 4, !tbaa !69
  %cmp261 = icmp slt i32 %170, 0
  br i1 %cmp261, label %if.then.263, label %if.end.265

if.then.263:                                      ; preds = %if.end.260
  %171 = load %struct.gs_shading_Tpp_params_s*, %struct.gs_shading_Tpp_params_s** %params219, align 8, !tbaa !1
  %BitsPerFlag264 = getelementptr inbounds %struct.gs_shading_Tpp_params_s, %struct.gs_shading_Tpp_params_s* %171, i32 0, i32 11
  %172 = load i32, i32* %BitsPerFlag264, align 4, !tbaa !197
  store i32 %172, i32* %bits_per_flag, align 4, !tbaa !69
  br label %if.end.265

if.end.265:                                       ; preds = %if.then.263, %if.end.260
  store i32 8, i32* %cleanup.dest.slot
  br label %cleanup.266

cleanup.266:                                      ; preds = %if.end.265, %if.then.239
  %173 = bitcast %struct.gs_shading_Tpp_params_s** %params219 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %173) #1
  %cleanup.dest.267 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.267, label %cleanup.273 [
    i32 8, label %sw.epilog
  ]

sw.default:                                       ; preds = %if.end.104
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.273

sw.epilog:                                        ; preds = %cleanup.266, %cleanup.216, %cleanup.134
  %174 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pscd, align 8, !tbaa !1
  %175 = load i32, i32* %bits_per_flag, align 4, !tbaa !69
  %call268 = call i32 @cos_dict_put_c_key_int(%struct.cos_dict_s* %174, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i32 0, i32 0), i32 %175) #5
  store i32 %call268, i32* %code1, align 4, !tbaa !69
  %176 = load i32, i32* %code1, align 4, !tbaa !69
  %cmp269 = icmp slt i32 %176, 0
  br i1 %cmp269, label %if.then.271, label %if.end.272

if.then.271:                                      ; preds = %sw.epilog
  %177 = load i32, i32* %code, align 4, !tbaa !69
  store i32 %177, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.273

if.end.272:                                       ; preds = %sw.epilog
  %178 = load i32, i32* %code, align 4, !tbaa !69
  store i32 %178, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.273

cleanup.273:                                      ; preds = %if.end.272, %if.then.271, %sw.default, %cleanup.266, %cleanup.216, %cleanup.167, %cleanup.134, %if.then.103, %cleanup.73
  %179 = bitcast i32* %flag to i8*
  call void @llvm.lifetime.end(i64 4, i8* %179) #1
  %180 = bitcast %struct.gs_matrix_fixed_s* %ctm_ident to i8*
  call void @llvm.lifetime.end(i64 36, i8* %180) #1
  %181 = bitcast %struct.shade_coord_stream_s* %cs to i8*
  call void @llvm.lifetime.end(i64 424, i8* %181) #1
  %182 = bitcast %struct.pdf_mesh_data_params_s* %data_params to i8*
  call void @llvm.lifetime.end(i64 32, i8* %182) #1
  %183 = bitcast i32* %from_array to i8*
  call void @llvm.lifetime.end(i64 4, i8* %183) #1
  %184 = bitcast i32* %num_comp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %184) #1
  %185 = bitcast i32* %bits_per_flag to i8*
  call void @llvm.lifetime.end(i64 4, i8* %185) #1
  %186 = bitcast i32* %bits_per_component to i8*
  call void @llvm.lifetime.end(i64 4, i8* %186) #1
  %187 = bitcast i32* %bits_per_coordinate to i8*
  call void @llvm.lifetime.end(i64 4, i8* %187) #1
  %188 = bitcast i32* %code1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %188) #1
  %189 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %189) #1
  %190 = bitcast %struct.gs_shading_mesh_params_s** %pmp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %190) #1
  %191 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %191) #1
  %192 = bitcast %struct.cos_dict_s** %pscd to i8*
  call void @llvm.lifetime.end(i64 8, i8* %192) #1
  %193 = load i32, i32* %retval
  ret i32 %193
}

; Function Attrs: nounwind uwtable
define internal i32 @pdf_put_scalar_shading(%struct.cos_dict_s* %pscd, %struct.gs_shading_s* %psh, %struct.gs_range_s* %pranges) #0 {
entry:
  %retval = alloca i32, align 4
  %pscd.addr = alloca %struct.cos_dict_s*, align 8
  %psh.addr = alloca %struct.gs_shading_s*, align 8
  %pranges.addr = alloca %struct.gs_range_s*, align 8
  %code = alloca i32, align 4
  %params = alloca %struct.gs_shading_Fb_params_s*, align 8
  %cleanup.dest.slot = alloca i32
  %params8 = alloca %struct.gs_shading_A_params_s*, align 8
  %params18 = alloca %struct.gs_shading_R_params_s*, align 8
  store %struct.cos_dict_s* %pscd, %struct.cos_dict_s** %pscd.addr, align 8, !tbaa !1
  store %struct.gs_shading_s* %psh, %struct.gs_shading_s** %psh.addr, align 8, !tbaa !1
  store %struct.gs_range_s* %pranges, %struct.gs_range_s** %pranges.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_shading_s*, %struct.gs_shading_s** %psh.addr, align 8, !tbaa !1
  %head = getelementptr inbounds %struct.gs_shading_s, %struct.gs_shading_s* %1, i32 0, i32 0
  %type = getelementptr inbounds %struct.gs_shading_head_s, %struct.gs_shading_head_s* %head, i32 0, i32 0
  %2 = load i32, i32* %type, align 4, !tbaa !148
  switch i32 %2, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.7
    i32 3, label %sw.bb.17
  ]

sw.bb:                                            ; preds = %entry
  %3 = bitcast %struct.gs_shading_Fb_params_s** %params to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_shading_s*, %struct.gs_shading_s** %psh.addr, align 8, !tbaa !1
  %params1 = getelementptr inbounds %struct.gs_shading_s, %struct.gs_shading_s* %4, i32 0, i32 1
  %5 = bitcast %struct.gs_shading_params_s* %params1 to %struct.gs_shading_Fb_params_s*
  store %struct.gs_shading_Fb_params_s* %5, %struct.gs_shading_Fb_params_s** %params, align 8, !tbaa !1
  %6 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pscd.addr, align 8, !tbaa !1
  %7 = load %struct.gs_shading_Fb_params_s*, %struct.gs_shading_Fb_params_s** %params, align 8, !tbaa !1
  %Domain = getelementptr inbounds %struct.gs_shading_Fb_params_s, %struct.gs_shading_Fb_params_s* %7, i32 0, i32 6
  %arraydecay = getelementptr inbounds [4 x float], [4 x float]* %Domain, i32 0, i32 0
  %call = call i32 @cos_dict_put_c_key_floats(%struct.cos_dict_s* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i32 0, i32 0), float* %arraydecay, i32 4) #5
  store i32 %call, i32* %code, align 4, !tbaa !69
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb
  %8 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pscd.addr, align 8, !tbaa !1
  %9 = load %struct.gs_shading_Fb_params_s*, %struct.gs_shading_Fb_params_s** %params, align 8, !tbaa !1
  %Function = getelementptr inbounds %struct.gs_shading_Fb_params_s, %struct.gs_shading_Fb_params_s* %9, i32 0, i32 8
  %10 = load %struct.gs_function_s*, %struct.gs_function_s** %Function, align 8, !tbaa !199
  %11 = load %struct.gs_range_s*, %struct.gs_range_s** %pranges.addr, align 8, !tbaa !1
  %call2 = call i32 @pdf_put_shading_Function(%struct.cos_dict_s* %8, %struct.gs_function_s* %10, %struct.gs_range_s* %11) #5
  store i32 %call2, i32* %code, align 4, !tbaa !69
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false
  %12 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pscd.addr, align 8, !tbaa !1
  %13 = load %struct.gs_shading_Fb_params_s*, %struct.gs_shading_Fb_params_s** %params, align 8, !tbaa !1
  %Matrix = getelementptr inbounds %struct.gs_shading_Fb_params_s, %struct.gs_shading_Fb_params_s* %13, i32 0, i32 7
  %call5 = call i32 @cos_dict_put_matrix(%struct.cos_dict_s* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), %struct.gs_matrix_s* %Matrix) #5
  store i32 %call5, i32* %code, align 4, !tbaa !69
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.4, %lor.lhs.false, %sw.bb
  %14 = load i32, i32* %code, align 4, !tbaa !69
  store i32 %14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.4
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %15 = bitcast %struct.gs_shading_Fb_params_s** %params to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  br label %cleanup.29

sw.bb.7:                                          ; preds = %entry
  %16 = bitcast %struct.gs_shading_A_params_s** %params8 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = load %struct.gs_shading_s*, %struct.gs_shading_s** %psh.addr, align 8, !tbaa !1
  %params9 = getelementptr inbounds %struct.gs_shading_s, %struct.gs_shading_s* %17, i32 0, i32 1
  %18 = bitcast %struct.gs_shading_params_s* %params9 to %struct.gs_shading_A_params_s*
  store %struct.gs_shading_A_params_s* %18, %struct.gs_shading_A_params_s** %params8, align 8, !tbaa !1
  %19 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pscd.addr, align 8, !tbaa !1
  %20 = load %struct.gs_shading_A_params_s*, %struct.gs_shading_A_params_s** %params8, align 8, !tbaa !1
  %Coords = getelementptr inbounds %struct.gs_shading_A_params_s, %struct.gs_shading_A_params_s* %20, i32 0, i32 6
  %arraydecay10 = getelementptr inbounds [4 x float], [4 x float]* %Coords, i32 0, i32 0
  %21 = load %struct.gs_shading_A_params_s*, %struct.gs_shading_A_params_s** %params8, align 8, !tbaa !1
  %Domain11 = getelementptr inbounds %struct.gs_shading_A_params_s, %struct.gs_shading_A_params_s* %21, i32 0, i32 7
  %arraydecay12 = getelementptr inbounds [2 x float], [2 x float]* %Domain11, i32 0, i32 0
  %22 = load %struct.gs_shading_A_params_s*, %struct.gs_shading_A_params_s** %params8, align 8, !tbaa !1
  %Function13 = getelementptr inbounds %struct.gs_shading_A_params_s, %struct.gs_shading_A_params_s* %22, i32 0, i32 8
  %23 = load %struct.gs_function_s*, %struct.gs_function_s** %Function13, align 8, !tbaa !201
  %24 = load %struct.gs_shading_A_params_s*, %struct.gs_shading_A_params_s** %params8, align 8, !tbaa !1
  %Extend = getelementptr inbounds %struct.gs_shading_A_params_s, %struct.gs_shading_A_params_s* %24, i32 0, i32 9
  %arraydecay14 = getelementptr inbounds [2 x i32], [2 x i32]* %Extend, i32 0, i32 0
  %25 = load %struct.gs_range_s*, %struct.gs_range_s** %pranges.addr, align 8, !tbaa !1
  %call15 = call i32 @pdf_put_linear_shading(%struct.cos_dict_s* %19, float* %arraydecay10, i32 4, float* %arraydecay12, %struct.gs_function_s* %23, i32* %arraydecay14, %struct.gs_range_s* %25) #5
  store i32 %call15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %26 = bitcast %struct.gs_shading_A_params_s** %params8 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  br label %cleanup.29

sw.bb.17:                                         ; preds = %entry
  %27 = bitcast %struct.gs_shading_R_params_s** %params18 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %27) #1
  %28 = load %struct.gs_shading_s*, %struct.gs_shading_s** %psh.addr, align 8, !tbaa !1
  %params19 = getelementptr inbounds %struct.gs_shading_s, %struct.gs_shading_s* %28, i32 0, i32 1
  %29 = bitcast %struct.gs_shading_params_s* %params19 to %struct.gs_shading_R_params_s*
  store %struct.gs_shading_R_params_s* %29, %struct.gs_shading_R_params_s** %params18, align 8, !tbaa !1
  %30 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pscd.addr, align 8, !tbaa !1
  %31 = load %struct.gs_shading_R_params_s*, %struct.gs_shading_R_params_s** %params18, align 8, !tbaa !1
  %Coords20 = getelementptr inbounds %struct.gs_shading_R_params_s, %struct.gs_shading_R_params_s* %31, i32 0, i32 6
  %arraydecay21 = getelementptr inbounds [6 x float], [6 x float]* %Coords20, i32 0, i32 0
  %32 = load %struct.gs_shading_R_params_s*, %struct.gs_shading_R_params_s** %params18, align 8, !tbaa !1
  %Domain22 = getelementptr inbounds %struct.gs_shading_R_params_s, %struct.gs_shading_R_params_s* %32, i32 0, i32 7
  %arraydecay23 = getelementptr inbounds [2 x float], [2 x float]* %Domain22, i32 0, i32 0
  %33 = load %struct.gs_shading_R_params_s*, %struct.gs_shading_R_params_s** %params18, align 8, !tbaa !1
  %Function24 = getelementptr inbounds %struct.gs_shading_R_params_s, %struct.gs_shading_R_params_s* %33, i32 0, i32 8
  %34 = load %struct.gs_function_s*, %struct.gs_function_s** %Function24, align 8, !tbaa !203
  %35 = load %struct.gs_shading_R_params_s*, %struct.gs_shading_R_params_s** %params18, align 8, !tbaa !1
  %Extend25 = getelementptr inbounds %struct.gs_shading_R_params_s, %struct.gs_shading_R_params_s* %35, i32 0, i32 9
  %arraydecay26 = getelementptr inbounds [2 x i32], [2 x i32]* %Extend25, i32 0, i32 0
  %36 = load %struct.gs_range_s*, %struct.gs_range_s** %pranges.addr, align 8, !tbaa !1
  %call27 = call i32 @pdf_put_linear_shading(%struct.cos_dict_s* %30, float* %arraydecay21, i32 6, float* %arraydecay23, %struct.gs_function_s* %34, i32* %arraydecay26, %struct.gs_range_s* %36) #5
  store i32 %call27, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %37 = bitcast %struct.gs_shading_R_params_s** %params18 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  br label %cleanup.29

sw.default:                                       ; preds = %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.29

cleanup.29:                                       ; preds = %sw.default, %sw.bb.17, %sw.bb.7, %cleanup
  %38 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  %39 = load i32, i32* %retval
  ret i32 %39
}

declare i32 @pdf_substitute_resource(%struct.gx_device_pdf_s*, %struct.pdf_resource_s**, i32, i32 (%struct.gx_device_pdf_s*, %struct.pdf_resource_s*, %struct.pdf_resource_s*)*, i32) #2

declare i32 @gs_currentmatrix(%struct.gs_state_s*, %struct.gs_matrix_s*) #2

; Function Attrs: nounwind uwtable
define i32 @gdev_pdf_include_color_space(%struct.gx_device_s* %dev, %struct.gs_color_space_s* %cspace, i8* %res_name, i32 %name_length) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %cspace.addr = alloca %struct.gs_color_space_s*, align 8
  %res_name.addr = alloca i8*, align 8
  %name_length.addr = alloca i32, align 4
  %pdev = alloca %struct.gx_device_pdf_s*, align 8
  %cs_value = alloca %struct.cos_value_s, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %cspace, %struct.gs_color_space_s** %cspace.addr, align 8, !tbaa !1
  store i8* %res_name, i8** %res_name.addr, align 8, !tbaa !1
  store i32 %name_length, i32* %name_length.addr, align 4, !tbaa !69
  %0 = bitcast %struct.gx_device_pdf_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_pdf_s*
  store %struct.gx_device_pdf_s* %2, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %3 = bitcast %struct.cos_value_s* %cs_value to i8*
  call void @llvm.lifetime.start(i64 24, i8* %3) #1
  %4 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %5 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %cspace.addr, align 8, !tbaa !1
  %6 = load i8*, i8** %res_name.addr, align 8, !tbaa !1
  %7 = load i32, i32* %name_length.addr, align 4, !tbaa !69
  %call = call i32 @pdf_color_space_named(%struct.gx_device_pdf_s* %4, %struct.cos_value_s* %cs_value, %struct.gs_range_s** null, %struct.gs_color_space_s* %5, %struct.pdf_color_space_names_s* @pdf_color_space_names, i32 1, i8* %6, i32 %7, i32 0) #5
  %8 = bitcast %struct.cos_value_s* %cs_value to i8*
  call void @llvm.lifetime.end(i64 24, i8* %8) #1
  %9 = bitcast %struct.gx_device_pdf_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #1
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @tile_size(%struct.gx_strip_bitmap_s* %tile, i32 %depth) #0 {
entry:
  %tile.addr = alloca %struct.gx_strip_bitmap_s*, align 8
  %depth.addr = alloca i32, align 4
  store %struct.gx_strip_bitmap_s* %tile, %struct.gx_strip_bitmap_s** %tile.addr, align 8, !tbaa !1
  store i32 %depth, i32* %depth.addr, align 4, !tbaa !69
  %0 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tile.addr, align 8, !tbaa !1
  %rep_width = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %0, i32 0, i32 4
  %1 = load i16, i16* %rep_width, align 2, !tbaa !113
  %conv = zext i16 %1 to i32
  %2 = load i32, i32* %depth.addr, align 4, !tbaa !69
  %mul = mul nsw i32 %conv, %2
  %add = add nsw i32 %mul, 7
  %div = sdiv i32 %add, 8
  %3 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tile.addr, align 8, !tbaa !1
  %rep_height = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %3, i32 0, i32 5
  %4 = load i16, i16* %rep_height, align 2, !tbaa !114
  %conv1 = zext i16 %4 to i32
  %mul2 = mul nsw i32 %div, %conv1
  ret i32 %mul2
}

declare void @gs_image_t_init_mask_adjust(%struct.gs_image1_s*, i32, i32) #2

declare i32 @psdf_CFE_binary(%struct.psdf_binary_writer_s*, i32, i32, i32) #2

declare i32 @pdf_copy_mask_bits(%struct.stream_s*, i8*, i32, i32, i32, i32, i8 zeroext) #2

declare i32 @gs_sprintf(i8*, i8*, ...) #2

declare %struct.cos_object_s* @cos_reference_alloc(%struct.gx_device_pdf_s*, i8*) #2

declare %struct.cos_value_s* @cos_object_value(%struct.cos_value_s*, %struct.cos_object_s*) #2

declare i32 @cos_dict_put(%struct.cos_dict_s*, i8*, i32, %struct.cos_value_s*) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare i32 @cos_stream_add_bytes(%struct.cos_stream_s*, i8*, i32) #2

declare i32 @cos_dict_put_c_key(%struct.cos_dict_s*, i8*, %struct.cos_value_s*) #2

declare i32 @gs_color_space_num_components(%struct.gs_color_space_s*) #2

declare void @shade_next_init(%struct.shade_coord_stream_s*, %struct.gs_shading_mesh_params_s*, %struct.gs_imager_state_s*) #2

declare %struct.cos_array_s* @cos_array_alloc(%struct.gx_device_pdf_s*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @pdf_array_add_real2(%struct.cos_array_s* %pca, double %lower, double %upper) #0 {
entry:
  %pca.addr = alloca %struct.cos_array_s*, align 8
  %lower.addr = alloca double, align 8
  %upper.addr = alloca double, align 8
  %code = alloca i32, align 4
  store %struct.cos_array_s* %pca, %struct.cos_array_s** %pca.addr, align 8, !tbaa !1
  store double %lower, double* %lower.addr, align 8, !tbaa !20
  store double %upper, double* %upper.addr, align 8, !tbaa !20
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.cos_array_s*, %struct.cos_array_s** %pca.addr, align 8, !tbaa !1
  %2 = load double, double* %lower.addr, align 8, !tbaa !20
  %call = call i32 @cos_array_add_real(%struct.cos_array_s* %1, double %2) #5
  store i32 %call, i32* %code, align 4, !tbaa !69
  %3 = load i32, i32* %code, align 4, !tbaa !69
  %cmp = icmp sge i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.cos_array_s*, %struct.cos_array_s** %pca.addr, align 8, !tbaa !1
  %5 = load double, double* %upper.addr, align 8, !tbaa !20
  %call1 = call i32 @cos_array_add_real(%struct.cos_array_s* %4, double %5) #5
  store i32 %call1, i32* %code, align 4, !tbaa !69
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, i32* %code, align 4, !tbaa !69
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %7) #1
  ret i32 %6
}

declare i32 @gs_color_space_get_index(%struct.gs_color_space_s*) #2

declare i32 @cos_stream_add_stream_contents(%struct.cos_stream_s*, %struct.stream_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @pdf_put_shading_Function(%struct.cos_dict_s* %pscd, %struct.gs_function_s* %pfn, %struct.gs_range_s* %pranges) #0 {
entry:
  %pscd.addr = alloca %struct.cos_dict_s*, align 8
  %pfn.addr = alloca %struct.gs_function_s*, align 8
  %pranges.addr = alloca %struct.gs_range_s*, align 8
  %code = alloca i32, align 4
  %fn_value = alloca %struct.cos_value_s, align 8
  store %struct.cos_dict_s* %pscd, %struct.cos_dict_s** %pscd.addr, align 8, !tbaa !1
  store %struct.gs_function_s* %pfn, %struct.gs_function_s** %pfn.addr, align 8, !tbaa !1
  store %struct.gs_range_s* %pranges, %struct.gs_range_s** %pranges.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %code, align 4, !tbaa !69
  %1 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.gs_function_s* %1, null
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %2 = bitcast %struct.cos_value_s* %fn_value to i8*
  call void @llvm.lifetime.start(i64 24, i8* %2) #1
  %3 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pscd.addr, align 8, !tbaa !1
  %pdev = getelementptr inbounds %struct.cos_dict_s, %struct.cos_dict_s* %3, i32 0, i32 4
  %4 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !157
  %5 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn.addr, align 8, !tbaa !1
  %6 = load %struct.gs_range_s*, %struct.gs_range_s** %pranges.addr, align 8, !tbaa !1
  %call = call i32 @pdf_function_scaled(%struct.gx_device_pdf_s* %4, %struct.gs_function_s* %5, %struct.gs_range_s* %6, %struct.cos_value_s* %fn_value) #5
  store i32 %call, i32* %code, align 4, !tbaa !69
  %cmp1 = icmp sge i32 %call, 0
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %7 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pscd.addr, align 8, !tbaa !1
  %call3 = call i32 @cos_dict_put_c_key(%struct.cos_dict_s* %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i32 0, i32 0), %struct.cos_value_s* %fn_value) #5
  store i32 %call3, i32* %code, align 4, !tbaa !69
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %8 = bitcast %struct.cos_value_s* %fn_value to i8*
  call void @llvm.lifetime.end(i64 24, i8* %8) #1
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  %9 = load i32, i32* %code, align 4, !tbaa !69
  %10 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #1
  ret i32 %9
}

declare i32 @shade_next_flag(%struct.shade_coord_stream_s*, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @put_float_mesh_data(%struct.cos_stream_s* %pscs, %struct.shade_coord_stream_s* %cs, i32 %flag, %struct.pdf_mesh_data_params_s* %pmdp) #0 {
entry:
  %retval = alloca i32, align 4
  %pscs.addr = alloca %struct.cos_stream_s*, align 8
  %cs.addr = alloca %struct.shade_coord_stream_s*, align 8
  %flag.addr = alloca i32, align 4
  %pmdp.addr = alloca %struct.pdf_mesh_data_params_s*, align 8
  %num_points = alloca i32, align 4
  %b = alloca [97 x i8], align 16
  %pts = alloca [16 x %struct.gs_fixed_point_s], align 16
  %domain = alloca float*, align 8
  %pranges = alloca %struct.gs_range_s*, align 8
  %i = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %c = alloca float, align 4
  %v = alloca double, align 8
  %vmin = alloca double, align 8
  %vmax = alloca double, align 8
  %base = alloca double, align 8
  %factor = alloca double, align 8
  store %struct.cos_stream_s* %pscs, %struct.cos_stream_s** %pscs.addr, align 8, !tbaa !1
  store %struct.shade_coord_stream_s* %cs, %struct.shade_coord_stream_s** %cs.addr, align 8, !tbaa !1
  store i32 %flag, i32* %flag.addr, align 4, !tbaa !69
  store %struct.pdf_mesh_data_params_s* %pmdp, %struct.pdf_mesh_data_params_s** %pmdp.addr, align 8, !tbaa !1
  %0 = bitcast i32* %num_points to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.pdf_mesh_data_params_s*, %struct.pdf_mesh_data_params_s** %pmdp.addr, align 8, !tbaa !1
  %num_points1 = getelementptr inbounds %struct.pdf_mesh_data_params_s, %struct.pdf_mesh_data_params_s* %1, i32 0, i32 0
  %2 = load i32, i32* %num_points1, align 4, !tbaa !185
  store i32 %2, i32* %num_points, align 4, !tbaa !69
  %3 = bitcast [97 x i8]* %b to i8*
  call void @llvm.lifetime.start(i64 97, i8* %3) #1
  %4 = bitcast [16 x %struct.gs_fixed_point_s]* %pts to i8*
  call void @llvm.lifetime.start(i64 128, i8* %4) #1
  %5 = bitcast float** %domain to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.pdf_mesh_data_params_s*, %struct.pdf_mesh_data_params_s** %pmdp.addr, align 8, !tbaa !1
  %Domain = getelementptr inbounds %struct.pdf_mesh_data_params_s, %struct.pdf_mesh_data_params_s* %6, i32 0, i32 3
  %7 = load float*, float** %Domain, align 8, !tbaa !169
  store float* %7, float** %domain, align 8, !tbaa !1
  %8 = bitcast %struct.gs_range_s** %pranges to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load %struct.pdf_mesh_data_params_s*, %struct.pdf_mesh_data_params_s** %pmdp.addr, align 8, !tbaa !1
  %ranges = getelementptr inbounds %struct.pdf_mesh_data_params_s, %struct.pdf_mesh_data_params_s* %9, i32 0, i32 4
  %10 = load %struct.gs_range_s*, %struct.gs_range_s** %ranges, align 8, !tbaa !172
  store %struct.gs_range_s* %10, %struct.gs_range_s** %pranges, align 8, !tbaa !1
  %11 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load i32, i32* %flag.addr, align 4, !tbaa !69
  %conv = trunc i32 %13 to i8
  %arrayidx = getelementptr inbounds [97 x i8], [97 x i8]* %b, i32 0, i64 0
  store i8 %conv, i8* %arrayidx, align 1, !tbaa !129
  %14 = load %struct.shade_coord_stream_s*, %struct.shade_coord_stream_s** %cs.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [16 x %struct.gs_fixed_point_s], [16 x %struct.gs_fixed_point_s]* %pts, i32 0, i32 0
  %15 = load i32, i32* %num_points, align 4, !tbaa !69
  %call = call i32 @shade_next_coords(%struct.shade_coord_stream_s* %14, %struct.gs_fixed_point_s* %arraydecay, i32 %15) #5
  store i32 %call, i32* %code, align 4, !tbaa !69
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %16 = load i32, i32* %code, align 4, !tbaa !69
  store i32 %16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.82

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !69
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %17 = load i32, i32* %i, align 4, !tbaa !69
  %18 = load i32, i32* %num_points, align 4, !tbaa !69
  %cmp3 = icmp slt i32 %17, %18
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay5 = getelementptr inbounds [97 x i8], [97 x i8]* %b, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay5, i64 1
  %19 = load i32, i32* %i, align 4, !tbaa !69
  %mul = mul nsw i32 %19, 6
  %idx.ext = sext i32 %mul to i64
  %add.ptr6 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext
  %20 = load i32, i32* %i, align 4, !tbaa !69
  %idxprom = sext i32 %20 to i64
  %arrayidx7 = getelementptr inbounds [16 x %struct.gs_fixed_point_s], [16 x %struct.gs_fixed_point_s]* %pts, i32 0, i64 %idxprom
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx7, i32 0, i32 0
  %21 = load i32, i32* %x, align 4, !tbaa !205
  %conv8 = sitofp i32 %21 to double
  %mul9 = fmul double %conv8, 3.906250e-03
  call void @put_clamped_coord(i8* %add.ptr6, double %mul9, i32 3) #5
  %arraydecay10 = getelementptr inbounds [97 x i8], [97 x i8]* %b, i32 0, i32 0
  %add.ptr11 = getelementptr inbounds i8, i8* %arraydecay10, i64 4
  %22 = load i32, i32* %i, align 4, !tbaa !69
  %mul12 = mul nsw i32 %22, 6
  %idx.ext13 = sext i32 %mul12 to i64
  %add.ptr14 = getelementptr inbounds i8, i8* %add.ptr11, i64 %idx.ext13
  %23 = load i32, i32* %i, align 4, !tbaa !69
  %idxprom15 = sext i32 %23 to i64
  %arrayidx16 = getelementptr inbounds [16 x %struct.gs_fixed_point_s], [16 x %struct.gs_fixed_point_s]* %pts, i32 0, i64 %idxprom15
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx16, i32 0, i32 1
  %24 = load i32, i32* %y, align 4, !tbaa !206
  %conv17 = sitofp i32 %24 to double
  %mul18 = fmul double %conv17, 3.906250e-03
  call void @put_clamped_coord(i8* %add.ptr14, double %mul18, i32 3) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %25 = load i32, i32* %i, align 4, !tbaa !69
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %i, align 4, !tbaa !69
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %26 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pscs.addr, align 8, !tbaa !1
  %arraydecay19 = getelementptr inbounds [97 x i8], [97 x i8]* %b, i32 0, i32 0
  %27 = load i32, i32* %flag.addr, align 4, !tbaa !69
  %cmp20 = icmp slt i32 %27, 0
  %conv21 = zext i1 %cmp20 to i32
  %idx.ext22 = sext i32 %conv21 to i64
  %add.ptr23 = getelementptr inbounds i8, i8* %arraydecay19, i64 %idx.ext22
  %28 = load i32, i32* %flag.addr, align 4, !tbaa !69
  %cmp24 = icmp sge i32 %28, 0
  %conv25 = zext i1 %cmp24 to i32
  %29 = load i32, i32* %num_points, align 4, !tbaa !69
  %mul26 = mul nsw i32 %29, 6
  %add = add nsw i32 %conv25, %mul26
  %call27 = call i32 @cos_stream_add_bytes(%struct.cos_stream_s* %26, i8* %add.ptr23, i32 %add) #5
  store i32 %call27, i32* %code, align 4, !tbaa !69
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %for.end
  %30 = load i32, i32* %code, align 4, !tbaa !69
  store i32 %30, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.82

if.end.31:                                        ; preds = %for.end
  store i32 0, i32* %i, align 4, !tbaa !69
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc.79, %if.end.31
  %31 = load i32, i32* %i, align 4, !tbaa !69
  %32 = load %struct.pdf_mesh_data_params_s*, %struct.pdf_mesh_data_params_s** %pmdp.addr, align 8, !tbaa !1
  %num_components = getelementptr inbounds %struct.pdf_mesh_data_params_s, %struct.pdf_mesh_data_params_s* %32, i32 0, i32 1
  %33 = load i32, i32* %num_components, align 4, !tbaa !186
  %cmp33 = icmp slt i32 %31, %33
  br i1 %cmp33, label %for.body.35, label %for.end.81

for.body.35:                                      ; preds = %for.cond.32
  %34 = bitcast float* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #1
  %35 = bitcast double* %v to i8*
  call void @llvm.lifetime.start(i64 8, i8* %35) #1
  %36 = load %struct.shade_coord_stream_s*, %struct.shade_coord_stream_s** %cs.addr, align 8, !tbaa !1
  %get_decoded = getelementptr inbounds %struct.shade_coord_stream_s, %struct.shade_coord_stream_s* %36, i32 0, i32 8
  %37 = load i32 (%struct.shade_coord_stream_s*, i32, float*, float*)*, i32 (%struct.shade_coord_stream_s*, i32, float*, float*)** %get_decoded, align 8, !tbaa !207
  %38 = load %struct.shade_coord_stream_s*, %struct.shade_coord_stream_s** %cs.addr, align 8, !tbaa !1
  %call36 = call i32 %37(%struct.shade_coord_stream_s* %38, i32 0, float* null, float* %c) #5
  %39 = load %struct.pdf_mesh_data_params_s*, %struct.pdf_mesh_data_params_s** %pmdp.addr, align 8, !tbaa !1
  %is_indexed = getelementptr inbounds %struct.pdf_mesh_data_params_s, %struct.pdf_mesh_data_params_s* %39, i32 0, i32 2
  %40 = load i32, i32* %is_indexed, align 4, !tbaa !173
  %tobool = icmp ne i32 %40, 0
  br i1 %tobool, label %if.then.37, label %if.else

if.then.37:                                       ; preds = %for.body.35
  %41 = load float, float* %c, align 4, !tbaa !19
  %add38 = fadd float %41, 0.000000e+00
  %conv39 = fpext float %add38 to double
  store double %conv39, double* %v, align 8, !tbaa !20
  br label %if.end.70

if.else:                                          ; preds = %for.body.35
  %42 = bitcast double* %vmin to i8*
  call void @llvm.lifetime.start(i64 8, i8* %42) #1
  %43 = bitcast double* %vmax to i8*
  call void @llvm.lifetime.start(i64 8, i8* %43) #1
  %44 = load float*, float** %domain, align 8, !tbaa !1
  %tobool40 = icmp ne float* %44, null
  br i1 %tobool40, label %if.then.41, label %if.else.51

if.then.41:                                       ; preds = %if.else
  %45 = load i32, i32* %i, align 4, !tbaa !69
  %mul42 = mul nsw i32 2, %45
  %idxprom43 = sext i32 %mul42 to i64
  %46 = load float*, float** %domain, align 8, !tbaa !1
  %arrayidx44 = getelementptr inbounds float, float* %46, i64 %idxprom43
  %47 = load float, float* %arrayidx44, align 4, !tbaa !19
  %conv45 = fpext float %47 to double
  store double %conv45, double* %vmin, align 8, !tbaa !20
  %48 = load i32, i32* %i, align 4, !tbaa !69
  %mul46 = mul nsw i32 2, %48
  %add47 = add nsw i32 %mul46, 1
  %idxprom48 = sext i32 %add47 to i64
  %49 = load float*, float** %domain, align 8, !tbaa !1
  %arrayidx49 = getelementptr inbounds float, float* %49, i64 %idxprom48
  %50 = load float, float* %arrayidx49, align 4, !tbaa !19
  %conv50 = fpext float %50 to double
  store double %conv50, double* %vmax, align 8, !tbaa !20
  br label %if.end.52

if.else.51:                                       ; preds = %if.else
  store double 0.000000e+00, double* %vmin, align 8, !tbaa !20
  store double 1.000000e+00, double* %vmax, align 8, !tbaa !20
  br label %if.end.52

if.end.52:                                        ; preds = %if.else.51, %if.then.41
  %51 = load %struct.gs_range_s*, %struct.gs_range_s** %pranges, align 8, !tbaa !1
  %tobool53 = icmp ne %struct.gs_range_s* %51, null
  br i1 %tobool53, label %if.then.54, label %if.end.65

if.then.54:                                       ; preds = %if.end.52
  %52 = bitcast double* %base to i8*
  call void @llvm.lifetime.start(i64 8, i8* %52) #1
  %53 = load i32, i32* %i, align 4, !tbaa !69
  %idxprom55 = sext i32 %53 to i64
  %54 = load %struct.gs_range_s*, %struct.gs_range_s** %pranges, align 8, !tbaa !1
  %arrayidx56 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %54, i64 %idxprom55
  %rmin = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx56, i32 0, i32 0
  %55 = load float, float* %rmin, align 4, !tbaa !208
  %conv57 = fpext float %55 to double
  store double %conv57, double* %base, align 8, !tbaa !20
  %56 = bitcast double* %factor to i8*
  call void @llvm.lifetime.start(i64 8, i8* %56) #1
  %57 = load i32, i32* %i, align 4, !tbaa !69
  %idxprom58 = sext i32 %57 to i64
  %58 = load %struct.gs_range_s*, %struct.gs_range_s** %pranges, align 8, !tbaa !1
  %arrayidx59 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %58, i64 %idxprom58
  %rmax = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx59, i32 0, i32 1
  %59 = load float, float* %rmax, align 4, !tbaa !210
  %conv60 = fpext float %59 to double
  %60 = load double, double* %base, align 8, !tbaa !20
  %sub = fsub double %conv60, %60
  store double %sub, double* %factor, align 8, !tbaa !20
  %61 = load double, double* %vmin, align 8, !tbaa !20
  %62 = load double, double* %factor, align 8, !tbaa !20
  %mul61 = fmul double %61, %62
  %63 = load double, double* %base, align 8, !tbaa !20
  %add62 = fadd double %mul61, %63
  store double %add62, double* %vmin, align 8, !tbaa !20
  %64 = load double, double* %vmax, align 8, !tbaa !20
  %65 = load double, double* %factor, align 8, !tbaa !20
  %mul63 = fmul double %64, %65
  %66 = load double, double* %base, align 8, !tbaa !20
  %add64 = fadd double %mul63, %66
  store double %add64, double* %vmax, align 8, !tbaa !20
  %67 = bitcast double* %factor to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #1
  %68 = bitcast double* %base to i8*
  call void @llvm.lifetime.end(i64 8, i8* %68) #1
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.54, %if.end.52
  %69 = load float, float* %c, align 4, !tbaa !19
  %conv66 = fpext float %69 to double
  %70 = load double, double* %vmin, align 8, !tbaa !20
  %sub67 = fsub double %conv66, %70
  %71 = load double, double* %vmax, align 8, !tbaa !20
  %72 = load double, double* %vmin, align 8, !tbaa !20
  %sub68 = fsub double %71, %72
  %div = fdiv double 6.553500e+04, %sub68
  %mul69 = fmul double %sub67, %div
  store double %mul69, double* %v, align 8, !tbaa !20
  %73 = bitcast double* %vmax to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #1
  %74 = bitcast double* %vmin to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #1
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.65, %if.then.37
  %arraydecay71 = getelementptr inbounds [97 x i8], [97 x i8]* %b, i32 0, i32 0
  %75 = load double, double* %v, align 8, !tbaa !20
  call void @put_clamped(i8* %arraydecay71, double %75, i32 2) #5
  %76 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pscs.addr, align 8, !tbaa !1
  %arraydecay72 = getelementptr inbounds [97 x i8], [97 x i8]* %b, i32 0, i32 0
  %call73 = call i32 @cos_stream_add_bytes(%struct.cos_stream_s* %76, i8* %arraydecay72, i32 2) #5
  store i32 %call73, i32* %code, align 4, !tbaa !69
  %cmp74 = icmp slt i32 %call73, 0
  br i1 %cmp74, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %if.end.70
  %77 = load i32, i32* %code, align 4, !tbaa !69
  store i32 %77, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.77:                                        ; preds = %if.end.70
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.77, %if.then.76
  %78 = bitcast double* %v to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #1
  %79 = bitcast float* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %79) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.82 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc.79

for.inc.79:                                       ; preds = %cleanup.cont
  %80 = load i32, i32* %i, align 4, !tbaa !69
  %inc80 = add nsw i32 %80, 1
  store i32 %inc80, i32* %i, align 4, !tbaa !69
  br label %for.cond.32

for.end.81:                                       ; preds = %for.cond.32
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.82

cleanup.82:                                       ; preds = %for.end.81, %cleanup, %if.then.30, %if.then
  %81 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %81) #1
  %82 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #1
  %83 = bitcast %struct.gs_range_s** %pranges to i8*
  call void @llvm.lifetime.end(i64 8, i8* %83) #1
  %84 = bitcast float** %domain to i8*
  call void @llvm.lifetime.end(i64 8, i8* %84) #1
  %85 = bitcast [16 x %struct.gs_fixed_point_s]* %pts to i8*
  call void @llvm.lifetime.end(i64 128, i8* %85) #1
  %86 = bitcast [97 x i8]* %b to i8*
  call void @llvm.lifetime.end(i64 97, i8* %86) #1
  %87 = bitcast i32* %num_points to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #1
  %88 = load i32, i32* %retval
  ret i32 %88
}

declare i32 @cos_array_add_real(%struct.cos_array_s*, double) #2

declare i32 @pdf_function_scaled(%struct.gx_device_pdf_s*, %struct.gs_function_s*, %struct.gs_range_s*, %struct.cos_value_s*) #2

declare i32 @shade_next_coords(%struct.shade_coord_stream_s*, %struct.gs_fixed_point_s*, i32) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @put_clamped_coord(i8* %p, double %v, i32 %num_bytes) #4 {
entry:
  %p.addr = alloca i8*, align 8
  %v.addr = alloca double, align 8
  %num_bytes.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8, !tbaa !1
  store double %v, double* %v.addr, align 8, !tbaa !20
  store i32 %num_bytes, i32* %num_bytes.addr, align 4, !tbaa !69
  %0 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %1 = load double, double* %v.addr, align 8, !tbaa !20
  %sub = fsub double %1, -1.638400e+04
  %mul = fmul double %sub, 0x4080000010000020
  %2 = load i32, i32* %num_bytes.addr, align 4, !tbaa !69
  call void @put_clamped(i8* %0, double %mul, i32 %2) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @put_clamped(i8* %p, double %v, i32 %num_bytes) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %v.addr = alloca double, align 8
  %num_bytes.addr = alloca i32, align 4
  %limit = alloca i32, align 4
  %i = alloca i32, align 4
  %shift = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8, !tbaa !1
  store double %v, double* %v.addr, align 8, !tbaa !20
  store i32 %num_bytes, i32* %num_bytes.addr, align 4, !tbaa !69
  %0 = bitcast i32* %limit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %num_bytes.addr, align 4, !tbaa !69
  %mul = mul nsw i32 %1, 8
  %shl = shl i32 1, %mul
  store i32 %shl, i32* %limit, align 4, !tbaa !69
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load double, double* %v.addr, align 8, !tbaa !20
  %5 = load i32, i32* %limit, align 4, !tbaa !69
  %sub = sub nsw i32 0, %5
  %conv = sitofp i32 %sub to double
  %cmp = fcmp ole double %4, %conv
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %limit, align 4, !tbaa !69
  %sub2 = sub nsw i32 0, %6
  %add = add nsw i32 %sub2, 1
  store i32 %add, i32* %i, align 4, !tbaa !69
  br label %if.end.10

if.else:                                          ; preds = %entry
  %7 = load double, double* %v.addr, align 8, !tbaa !20
  %8 = load i32, i32* %limit, align 4, !tbaa !69
  %conv3 = sitofp i32 %8 to double
  %cmp4 = fcmp oge double %7, %conv3
  br i1 %cmp4, label %if.then.6, label %if.else.8

if.then.6:                                        ; preds = %if.else
  %9 = load i32, i32* %limit, align 4, !tbaa !69
  %sub7 = sub nsw i32 %9, 1
  store i32 %sub7, i32* %i, align 4, !tbaa !69
  br label %if.end

if.else.8:                                        ; preds = %if.else
  %10 = load double, double* %v.addr, align 8, !tbaa !20
  %conv9 = fptosi double %10 to i32
  store i32 %conv9, i32* %i, align 4, !tbaa !69
  br label %if.end

if.end:                                           ; preds = %if.else.8, %if.then.6
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %if.then
  %11 = load i32, i32* %num_bytes.addr, align 4, !tbaa !69
  %sub11 = sub nsw i32 %11, 1
  %mul12 = mul nsw i32 %sub11, 8
  store i32 %mul12, i32* %shift, align 4, !tbaa !69
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.10
  %12 = load i32, i32* %shift, align 4, !tbaa !69
  %cmp13 = icmp sge i32 %12, 0
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %i, align 4, !tbaa !69
  %14 = load i32, i32* %shift, align 4, !tbaa !69
  %shr = ashr i32 %13, %14
  %conv15 = trunc i32 %shr to i8
  %15 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr, i8** %p.addr, align 8, !tbaa !1
  store i8 %conv15, i8* %15, align 1, !tbaa !129
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %shift, align 4, !tbaa !69
  %sub16 = sub nsw i32 %16, 8
  store i32 %sub16, i32* %shift, align 4, !tbaa !69
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #1
  %18 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #1
  %19 = bitcast i32* %limit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @pdf_put_linear_shading(%struct.cos_dict_s* %pscd, float* %Coords, i32 %num_coords, float* %Domain, %struct.gs_function_s* %Function, i32* %Extend, %struct.gs_range_s* %pranges) #0 {
entry:
  %retval = alloca i32, align 4
  %pscd.addr = alloca %struct.cos_dict_s*, align 8
  %Coords.addr = alloca float*, align 8
  %num_coords.addr = alloca i32, align 4
  %Domain.addr = alloca float*, align 8
  %Function.addr = alloca %struct.gs_function_s*, align 8
  %Extend.addr = alloca i32*, align 8
  %pranges.addr = alloca %struct.gs_range_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %extend_str = alloca [14 x i8], align 1
  store %struct.cos_dict_s* %pscd, %struct.cos_dict_s** %pscd.addr, align 8, !tbaa !1
  store float* %Coords, float** %Coords.addr, align 8, !tbaa !1
  store i32 %num_coords, i32* %num_coords.addr, align 4, !tbaa !69
  store float* %Domain, float** %Domain.addr, align 8, !tbaa !1
  store %struct.gs_function_s* %Function, %struct.gs_function_s** %Function.addr, align 8, !tbaa !1
  store i32* %Extend, i32** %Extend.addr, align 8, !tbaa !1
  store %struct.gs_range_s* %pranges, %struct.gs_range_s** %pranges.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pscd.addr, align 8, !tbaa !1
  %2 = load float*, float** %Coords.addr, align 8, !tbaa !1
  %3 = load i32, i32* %num_coords.addr, align 4, !tbaa !69
  %call = call i32 @cos_dict_put_c_key_floats(%struct.cos_dict_s* %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i32 0, i32 0), float* %2, i32 %3) #5
  store i32 %call, i32* %code, align 4, !tbaa !69
  %4 = load i32, i32* %code, align 4, !tbaa !69
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load float*, float** %Domain.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds float, float* %5, i64 0
  %6 = load float, float* %arrayidx, align 4, !tbaa !19
  %cmp1 = fcmp une float %6, 0.000000e+00
  br i1 %cmp1, label %land.lhs.true, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %7 = load float*, float** %Domain.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds float, float* %7, i64 1
  %8 = load float, float* %arrayidx3, align 4, !tbaa !19
  %cmp4 = fcmp une float %8, 1.000000e+00
  br i1 %cmp4, label %land.lhs.true, label %lor.lhs.false.7

land.lhs.true:                                    ; preds = %lor.lhs.false.2, %lor.lhs.false
  %9 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pscd.addr, align 8, !tbaa !1
  %10 = load float*, float** %Domain.addr, align 8, !tbaa !1
  %call5 = call i32 @cos_dict_put_c_key_floats(%struct.cos_dict_s* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i32 0, i32 0), float* %10, i32 2) #5
  store i32 %call5, i32* %code, align 4, !tbaa !69
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %land.lhs.true, %lor.lhs.false.2
  %11 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pscd.addr, align 8, !tbaa !1
  %12 = load %struct.gs_function_s*, %struct.gs_function_s** %Function.addr, align 8, !tbaa !1
  %13 = load %struct.gs_range_s*, %struct.gs_range_s** %pranges.addr, align 8, !tbaa !1
  %call8 = call i32 @pdf_put_shading_Function(%struct.cos_dict_s* %11, %struct.gs_function_s* %12, %struct.gs_range_s* %13) #5
  store i32 %call8, i32* %code, align 4, !tbaa !69
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.7, %land.lhs.true, %entry
  %14 = load i32, i32* %code, align 4, !tbaa !69
  store i32 %14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.7
  %15 = load i32*, i32** %Extend.addr, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds i32, i32* %15, i64 0
  %16 = load i32, i32* %arrayidx10, align 4, !tbaa !69
  %17 = load i32*, i32** %Extend.addr, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i32, i32* %17, i64 1
  %18 = load i32, i32* %arrayidx11, align 4, !tbaa !69
  %or = or i32 %16, %18
  %tobool = icmp ne i32 %or, 0
  br i1 %tobool, label %if.then.12, label %if.end.23

if.then.12:                                       ; preds = %if.end
  %19 = bitcast [14 x i8]* %extend_str to i8*
  call void @llvm.lifetime.start(i64 14, i8* %19) #1
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %extend_str, i32 0, i32 0
  %20 = load i32*, i32** %Extend.addr, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds i32, i32* %20, i64 0
  %21 = load i32, i32* %arrayidx13, align 4, !tbaa !69
  %tobool14 = icmp ne i32 %21, 0
  %cond = select i1 %tobool14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0)
  %22 = load i32*, i32** %Extend.addr, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds i32, i32* %22, i64 1
  %23 = load i32, i32* %arrayidx15, align 4, !tbaa !69
  %tobool16 = icmp ne i32 %23, 0
  %cond17 = select i1 %tobool16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0)
  %call18 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0), i8* %cond, i8* %cond17) #5
  %24 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pscd.addr, align 8, !tbaa !1
  %arraydecay19 = getelementptr inbounds [14 x i8], [14 x i8]* %extend_str, i32 0, i32 0
  %arraydecay20 = getelementptr inbounds [14 x i8], [14 x i8]* %extend_str, i32 0, i32 0
  %call21 = call i64 @strlen(i8* %arraydecay20) #6
  %conv = trunc i64 %call21 to i32
  %call22 = call i32 @cos_dict_put_c_key_string(%struct.cos_dict_s* %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i32 0, i32 0), i8* %arraydecay19, i32 %conv) #5
  store i32 %call22, i32* %code, align 4, !tbaa !69
  %25 = bitcast [14 x i8]* %extend_str to i8*
  call void @llvm.lifetime.end(i64 14, i8* %25) #1
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.12, %if.end
  %26 = load i32, i32* %code, align 4, !tbaa !69
  store i32 %26, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.23, %if.then
  %27 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  %28 = load i32, i32* %retval
  ret i32 %28
}

declare i32 @cos_dict_put_c_key_string(%struct.cos_dict_s*, i8*, i8*, i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin }
attributes #6 = { nobuiltin nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !2, i64 32}
!6 = !{!"gs_pattern1_instance_s", !7, i64 0, !2, i64 24, !2, i64 32, !8, i64 40, !9, i64 48, !16, i64 152, !12, i64 176, !10, i64 208, !10, i64 212, !10, i64 216, !10, i64 220, !10, i64 224, !17, i64 228, !8, i64 240}
!7 = !{!"rc_header_s", !8, i64 0, !2, i64 8, !2, i64 16}
!8 = !{!"long", !3, i64 0}
!9 = !{!"gs_pattern1_template_s", !2, i64 0, !10, i64 8, !11, i64 16, !2, i64 32, !10, i64 40, !10, i64 44, !10, i64 48, !12, i64 56, !15, i64 88, !15, i64 92, !2, i64 96}
!10 = !{!"int", !3, i64 0}
!11 = !{!"gs_uid_s", !8, i64 0, !2, i64 8}
!12 = !{!"gs_rect_s", !13, i64 0, !13, i64 16}
!13 = !{!"gs_point_s", !14, i64 0, !14, i64 8}
!14 = !{!"double", !3, i64 0}
!15 = !{!"float", !3, i64 0}
!16 = !{!"gs_matrix_s", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !15, i64 20}
!17 = !{!"gs_int_point_s", !10, i64 0, !10, i64 4}
!18 = !{i64 0, i64 4, !19, i64 4, i64 4, !19, i64 8, i64 4, !19, i64 12, i64 4, !19, i64 16, i64 4, !19, i64 20, i64 4, !19}
!19 = !{!15, !15, i64 0}
!20 = !{!14, !14, i64 0}
!21 = !{!22, !2, i64 64}
!22 = !{!"pdf_resource_s", !2, i64 0, !2, i64 8, !8, i64 16, !10, i64 24, !10, i64 28, !3, i64 32, !8, i64 56, !2, i64 64}
!23 = !{!24, !2, i64 30448}
!24 = !{!"gx_device_pdf_s", !10, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !10, i64 40, !2, i64 48, !7, i64 56, !10, i64 80, !10, i64 84, !10, i64 88, !25, i64 96, !28, i64 816, !10, i64 832, !10, i64 836, !10, i64 840, !10, i64 844, !10, i64 848, !10, i64 852, !3, i64 856, !3, i64 864, !10, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !8, i64 928, !8, i64 936, !10, i64 944, !10, i64 948, !10, i64 952, !10, i64 956, !10, i64 960, !8, i64 968, !8, i64 976, !29, i64 984, !10, i64 1052, !10, i64 1056, !30, i64 1064, !2, i64 1104, !3, i64 1112, !32, i64 1120, !33, i64 1144, !2, i64 1728, !2, i64 1736, !3, i64 1744, !2, i64 5840, !2, i64 5848, !2, i64 5856, !10, i64 5864, !10, i64 5868, !34, i64 5872, !2, i64 7488, !10, i64 7496, !10, i64 7500, !10, i64 7504, !43, i64 7512, !43, i64 8144, !8, i64 8776, !8, i64 8784, !3, i64 8792, !3, i64 8796, !13, i64 8800, !10, i64 8816, !2, i64 8824, !8, i64 8832, !8, i64 8840, !3, i64 8848, !10, i64 8852, !10, i64 8856, !10, i64 8860, !10, i64 8864, !14, i64 8872, !47, i64 8880, !10, i64 9360, !14, i64 9368, !10, i64 9376, !10, i64 9380, !10, i64 9384, !10, i64 9388, !10, i64 9392, !10, i64 9396, !10, i64 9400, !10, i64 9404, !10, i64 9408, !10, i64 9412, !10, i64 9416, !10, i64 9420, !52, i64 9424, !52, i64 9440, !10, i64 9456, !10, i64 9460, !10, i64 9464, !8, i64 9472, !10, i64 9480, !10, i64 9484, !51, i64 9488, !51, i64 9504, !10, i64 9520, !10, i64 9524, !10, i64 9528, !10, i64 9532, !10, i64 9536, !10, i64 9540, !10, i64 9544, !10, i64 9548, !10, i64 9552, !10, i64 9556, !10, i64 9560, !10, i64 9564, !10, i64 9568, !8, i64 9576, !8, i64 9584, !8, i64 9592, !53, i64 9600, !51, i64 9616, !51, i64 9632, !10, i64 9648, !10, i64 9652, !10, i64 9656, !51, i64 9664, !10, i64 9680, !10, i64 9684, !3, i64 9688, !3, i64 9720, !3, i64 9752, !10, i64 9768, !10, i64 9772, !10, i64 9776, !12, i64 9784, !54, i64 9816, !54, i64 9856, !10, i64 9896, !10, i64 9900, !10, i64 9904, !10, i64 9908, !10, i64 9912, !8, i64 9920, !3, i64 9928, !10, i64 9960, !8, i64 9968, !8, i64 9976, !3, i64 9984, !3, i64 9988, !55, i64 9992, !55, i64 14120, !55, i64 18248, !55, i64 22376, !8, i64 26504, !2, i64 26512, !2, i64 26520, !2, i64 26528, !8, i64 26536, !10, i64 26544, !10, i64 26548, !8, i64 26552, !3, i64 26560, !8, i64 26568, !8, i64 26576, !3, i64 26584, !2, i64 26592, !56, i64 26600, !2, i64 26648, !10, i64 26656, !8, i64 26664, !3, i64 26672, !3, i64 28592, !3, i64 28632, !2, i64 28648, !2, i64 28656, !8, i64 28664, !2, i64 28672, !10, i64 28680, !10, i64 28684, !10, i64 28688, !10, i64 28692, !2, i64 28696, !2, i64 28704, !2, i64 28712, !3, i64 28720, !3, i64 28736, !2, i64 28752, !2, i64 28760, !2, i64 28768, !2, i64 28776, !2, i64 28784, !13, i64 28792, !2, i64 28808, !2, i64 28816, !10, i64 28824, !2, i64 28832, !2, i64 28840, !2, i64 28848, !10, i64 28856, !10, i64 28860, !10, i64 28864, !57, i64 28872, !10, i64 30384, !10, i64 30388, !10, i64 30392, !2, i64 30400, !10, i64 30408, !10, i64 30412, !10, i64 30416, !16, i64 30420, !2, i64 30448, !3, i64 30456, !10, i64 30460, !10, i64 30464, !2, i64 30472, !2, i64 30480, !37, i64 30488, !10, i64 30524, !12, i64 30528, !10, i64 30560, !10, i64 30564, !10, i64 30568, !2, i64 30576, !10, i64 30584, !10, i64 30588, !8, i64 30592, !10, i64 30600, !10, i64 30604, !10, i64 30608, !16, i64 30612, !14, i64 30640, !2, i64 30648, !48, i64 30656, !10, i64 30672, !2, i64 30680, !10, i64 30688, !10, i64 30692, !10, i64 30696, !10, i64 30700, !10, i64 30704, !10, i64 30708, !10, i64 30712, !10, i64 30716, !10, i64 30720, !10, i64 30724, !10, i64 30728, !10, i64 30732, !10, i64 30736, !10, i64 30740, !10, i64 30744, !10, i64 30748, !10, i64 30752, !10, i64 30756, !10, i64 30760, !10, i64 30764, !10, i64 30768, !10, i64 30772, !2, i64 30776, !10, i64 30784, !10, i64 30788}
!25 = !{!"gx_device_color_info_s", !10, i64 0, !10, i64 4, !3, i64 8, !26, i64 12, !3, i64 14, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !27, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !8, i64 704, !10, i64 712}
!26 = !{!"short", !3, i64 0}
!27 = !{!"gx_device_anti_alias_info_s", !10, i64 0, !10, i64 4}
!28 = !{!"gx_device_cached_colors_s", !8, i64 0, !8, i64 8}
!29 = !{!"gx_stroked_gradient_recognizer_s", !10, i64 0, !3, i64 4, !3, i64 36}
!30 = !{!"gdev_space_params_s", !8, i64 0, !8, i64 8, !31, i64 16, !10, i64 32, !3, i64 36}
!31 = !{!"gx_band_params_s", !10, i64 0, !10, i64 4, !8, i64 8}
!32 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!33 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!34 = !{!"gs_imager_state_s", !10, i64 0, !2, i64 8, !2, i64 16, !35, i64 24, !10, i64 128, !37, i64 132, !10, i64 168, !13, i64 176, !13, i64 192, !10, i64 208, !10, i64 212, !26, i64 216, !3, i64 220, !38, i64 224, !38, i64 228, !39, i64 232, !8, i64 240, !10, i64 248, !10, i64 252, !10, i64 256, !2, i64 264, !10, i64 272, !10, i64 276, !10, i64 280, !10, i64 284, !10, i64 288, !10, i64 292, !15, i64 296, !40, i64 300, !10, i64 308, !10, i64 312, !10, i64 316, !15, i64 320, !10, i64 324, !10, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !10, i64 408, !2, i64 416, !2, i64 424, !41, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !42, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !42, i64 1336}
!35 = !{!"gx_line_params_s", !15, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !10, i64 20, !15, i64 24, !15, i64 28, !15, i64 32, !10, i64 36, !16, i64 40, !36, i64 64}
!36 = !{!"gx_dash_params_s", !2, i64 0, !10, i64 8, !15, i64 12, !10, i64 16, !15, i64 20, !10, i64 24, !10, i64 28, !15, i64 32}
!37 = !{!"gs_matrix_fixed_s", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !15, i64 20, !10, i64 24, !10, i64 28, !10, i64 32}
!38 = !{!"gs_transparency_source_s", !15, i64 0}
!39 = !{!"gs_xstate_trans_flags", !10, i64 0, !10, i64 4}
!40 = !{!"gs_fixed_point_s", !10, i64 0, !10, i64 4}
!41 = !{!"gx_transfer_s", !10, i64 0, !2, i64 8, !10, i64 16, !2, i64 24, !10, i64 32, !2, i64 40, !10, i64 48, !2, i64 56}
!42 = !{!"gs_devicen_color_map_s", !10, i64 0, !3, i64 4, !10, i64 8, !10, i64 12, !8, i64 16, !3, i64 24}
!43 = !{!"gx_hl_saved_color_s", !8, i64 0, !8, i64 8, !10, i64 16, !44, i64 24, !46, i64 288}
!44 = !{!"gs_client_color_s", !2, i64 0, !45, i64 8}
!45 = !{!"gs_paint_color_s", !3, i64 0}
!46 = !{!"gx_device_color_saved_s", !2, i64 0, !3, i64 8, !17, i64 336}
!47 = !{!"psdf_distiller_params_s", !10, i64 0, !3, i64 4, !3, i64 8, !10, i64 12, !3, i64 16, !10, i64 20, !10, i64 24, !8, i64 32, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !48, i64 64, !48, i64 80, !48, i64 96, !48, i64 112, !3, i64 128, !10, i64 132, !10, i64 136, !3, i64 140, !3, i64 144, !49, i64 152, !10, i64 232, !10, i64 236, !49, i64 240, !49, i64 320, !50, i64 400, !50, i64 416, !3, i64 432, !10, i64 436, !10, i64 440, !10, i64 444, !51, i64 448, !50, i64 464}
!48 = !{!"gs_const_string_s", !2, i64 0, !10, i64 8}
!49 = !{!"psdf_image_params_s", !2, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !2, i64 24, !10, i64 32, !15, i64 36, !3, i64 40, !10, i64 44, !2, i64 48, !10, i64 56, !2, i64 64, !2, i64 72}
!50 = !{!"gs_param_string_array_s", !2, i64 0, !10, i64 8, !10, i64 12}
!51 = !{!"gs_param_string_s", !2, i64 0, !10, i64 8, !10, i64 12}
!52 = !{!"gs_param_float_array_s", !2, i64 0, !10, i64 8, !10, i64 12}
!53 = !{!"gs_param_int_array_s", !2, i64 0, !10, i64 8, !10, i64 12}
!54 = !{!"pdf_page_dsc_info_s", !10, i64 0, !10, i64 4, !12, i64 8}
!55 = !{!"pdf_temp_file_s", !3, i64 0, !2, i64 4096, !2, i64 4104, !2, i64 4112, !2, i64 4120}
!56 = !{!"pdf_text_rotation_s", !3, i64 0, !10, i64 40}
!57 = !{!"pdf_viewer_state_s", !10, i64 0, !3, i64 8, !15, i64 40, !15, i64 44, !3, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !10, i64 80, !15, i64 84, !15, i64 88, !10, i64 92, !10, i64 96, !10, i64 100, !10, i64 104, !10, i64 108, !10, i64 112, !43, i64 120, !43, i64 752, !35, i64 1384, !2, i64 1488, !10, i64 1496, !8, i64 1504}
!58 = !{!9, !14, i64 56}
!59 = !{!9, !14, i64 64}
!60 = !{!9, !14, i64 72}
!61 = !{!9, !14, i64 80}
!62 = !{!6, !15, i64 168}
!63 = !{!16, !15, i64 16}
!64 = !{!6, !15, i64 172}
!65 = !{!16, !15, i64 20}
!66 = !{!24, !10, i64 30408}
!67 = !{!24, !10, i64 9524}
!68 = !{!24, !10, i64 30416}
!69 = !{!10, !10, i64 0}
!70 = !{!9, !10, i64 40}
!71 = !{!9, !10, i64 44}
!72 = !{!9, !15, i64 88}
!73 = !{!9, !15, i64 92}
!74 = !{!24, !10, i64 30460}
!75 = !{!16, !15, i64 0}
!76 = !{!16, !15, i64 4}
!77 = !{!16, !15, i64 8}
!78 = !{!16, !15, i64 12}
!79 = !{!80, !2, i64 648}
!80 = !{!"gx_device_color_s", !2, i64 0, !3, i64 8, !17, i64 352, !10, i64 360, !44, i64 368, !81, i64 632}
!81 = !{!"_mask", !82, i64 0, !8, i64 8, !2, i64 16}
!82 = !{!"mp_", !10, i64 0, !10, i64 4}
!83 = !{!8, !8, i64 0}
!84 = !{!80, !2, i64 0}
!85 = !{!80, !10, i64 360}
!86 = !{!24, !10, i64 30760}
!87 = !{!24, !2, i64 5848}
!88 = !{!80, !8, i64 640}
!89 = !{!24, !10, i64 30464}
!90 = !{!24, !14, i64 9368}
!91 = !{!24, !8, i64 26664}
!92 = !{!22, !8, i64 56}
!93 = !{!94, !2, i64 24}
!94 = !{!"psdf_set_color_commands_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40}
!95 = !{!96, !10, i64 8}
!96 = !{!"gx_color_tile_s", !8, i64 0, !10, i64 8, !11, i64 16, !10, i64 32, !10, i64 36, !16, i64 40, !12, i64 64, !97, i64 96, !97, i64 144, !2, i64 192, !2, i64 200, !3, i64 208, !3, i64 209, !3, i64 210, !3, i64 211, !10, i64 216, !10, i64 220, !10, i64 224}
!97 = !{!"gx_strip_bitmap_s", !2, i64 0, !10, i64 8, !17, i64 12, !8, i64 24, !26, i64 32, !26, i64 34, !26, i64 36, !26, i64 38, !10, i64 40}
!98 = !{!96, !26, i64 176}
!99 = !{!96, !26, i64 178}
!100 = !{!24, !10, i64 9244}
!101 = !{!102, !2, i64 16}
!102 = !{!"psdf_binary_writer_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!103 = !{!96, !2, i64 144}
!104 = !{!96, !10, i64 152}
!105 = !{!106, !2, i64 144}
!106 = !{!"pdf_image_writer_s", !3, i64 0, !10, i64 128, !2, i64 136, !2, i64 144, !10, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184}
!107 = !{!96, !15, i64 40}
!108 = !{!13, !14, i64 0}
!109 = !{!96, !15, i64 52}
!110 = !{!13, !14, i64 8}
!111 = !{!96, !15, i64 48}
!112 = !{!96, !15, i64 44}
!113 = !{!97, !26, i64 32}
!114 = !{!97, !26, i64 34}
!115 = !{!96, !15, i64 56}
!116 = !{!96, !15, i64 60}
!117 = !{!118, !8, i64 8}
!118 = !{!"cos_stream_s", !2, i64 0, !8, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !3, i64 48, !3, i64 49, !3, i64 50, !8, i64 56, !2, i64 64, !119, i64 72, !10, i64 160, !3, i64 164, !10, i64 180, !3, i64 184}
!119 = !{!"gs_md5_state_s", !3, i64 0, !3, i64 8, !3, i64 24}
!120 = !{!121, !8, i64 8}
!121 = !{!"cos_object_s", !2, i64 0, !8, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !3, i64 48, !3, i64 49, !3, i64 50, !8, i64 56, !2, i64 64, !119, i64 72, !10, i64 160, !3, i64 164, !10, i64 180, !3, i64 184}
!122 = !{!96, !10, i64 36}
!123 = !{!124, !2, i64 0}
!124 = !{!"_pat", !2, i64 0}
!125 = !{!96, !26, i64 128}
!126 = !{!96, !26, i64 130}
!127 = !{!96, !10, i64 104}
!128 = !{!96, !2, i64 96}
!129 = !{!3, !3, i64 0}
!130 = !{i64 0, i64 8, !1, i64 8, i64 8, !83, i64 8, i64 8, !1, i64 16, i64 16, !129, i64 32, i64 4, !69, i64 36, i64 4, !69, i64 40, i64 8, !1, i64 8, i64 8, !1, i64 16, i64 2, !131, i64 18, i64 64, !129, i64 84, i64 256, !129, i64 340, i64 2, !131, i64 344, i64 8, !83, i64 8, i64 8, !1, i64 8, i64 128, !129, i64 352, i64 4, !69, i64 356, i64 4, !69, i64 360, i64 4, !69, i64 368, i64 8, !1, i64 376, i64 256, !129, i64 632, i64 4, !69, i64 636, i64 4, !69, i64 640, i64 8, !83, i64 648, i64 8, !1}
!131 = !{!26, !26, i64 0}
!132 = !{!24, !2, i64 24}
!133 = !{!24, !10, i64 100}
!134 = !{!135, !10, i64 40}
!135 = !{!"gs_image1_s", !2, i64 0, !16, i64 8, !10, i64 32, !10, i64 36, !10, i64 40, !3, i64 44, !10, i64 564, !3, i64 568, !10, i64 572, !2, i64 576, !10, i64 584, !10, i64 588, !3, i64 592, !3, i64 596}
!136 = !{!24, !14, i64 8872}
!137 = !{!24, !26, i64 108}
!138 = !{!96, !8, i64 0}
!139 = !{!140, !10, i64 32}
!140 = !{!"gs_data_image_s", !2, i64 0, !16, i64 8, !10, i64 32, !10, i64 36, !10, i64 40, !3, i64 44, !10, i64 564}
!141 = !{!140, !15, i64 8}
!142 = !{!140, !10, i64 36}
!143 = !{!140, !15, i64 20}
!144 = !{!80, !2, i64 368}
!145 = !{!146, !2, i64 88}
!146 = !{!"gs_pattern2_instance_s", !7, i64 0, !2, i64 24, !2, i64 32, !8, i64 40, !147, i64 48, !10, i64 96}
!147 = !{!"gs_pattern2_template_s", !2, i64 0, !10, i64 8, !11, i64 16, !2, i64 32, !2, i64 40}
!148 = !{!149, !3, i64 0}
!149 = !{!"gs_shading_s", !150, i64 0, !152, i64 16}
!150 = !{!"gs_shading_head_s", !3, i64 0, !151, i64 8}
!151 = !{!"gs_shading_procs_s", !2, i64 0}
!152 = !{!"gs_shading_params_s", !2, i64 0, !2, i64 8, !2, i64 16, !10, i64 24, !12, i64 32, !10, i64 64}
!153 = !{!146, !10, i64 96}
!154 = !{!146, !2, i64 32}
!155 = !{!149, !2, i64 16}
!156 = !{!149, !10, i64 80}
!157 = !{!158, !2, i64 32}
!158 = !{!"cos_dict_s", !2, i64 0, !8, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !3, i64 48, !3, i64 49, !3, i64 50, !8, i64 56, !2, i64 64, !119, i64 72, !10, i64 160, !3, i64 164, !10, i64 180, !3, i64 184}
!159 = !{!149, !2, i64 32}
!160 = !{!149, !10, i64 40}
!161 = !{!149, !14, i64 48}
!162 = !{!149, !14, i64 56}
!163 = !{!149, !14, i64 64}
!164 = !{!149, !14, i64 72}
!165 = !{!166, !3, i64 80}
!166 = !{!"gs_shading_mesh_params_s", !2, i64 0, !2, i64 8, !2, i64 16, !10, i64 24, !12, i64 32, !10, i64 64, !167, i64 72, !10, i64 104, !10, i64 108, !2, i64 112, !2, i64 120}
!167 = !{!"gs_data_source_s", !2, i64 0, !3, i64 8, !3, i64 16}
!168 = !{!166, !2, i64 120}
!169 = !{!170, !2, i64 16}
!170 = !{!"pdf_mesh_data_params_s", !10, i64 0, !10, i64 4, !10, i64 8, !2, i64 16, !2, i64 24}
!171 = !{!166, !2, i64 112}
!172 = !{!170, !2, i64 24}
!173 = !{!170, !10, i64 8}
!174 = !{!37, !10, i64 28}
!175 = !{!37, !10, i64 24}
!176 = !{!37, !10, i64 32}
!177 = !{!178, !2, i64 384}
!178 = !{!"shade_coord_stream_s", !179, i64 0, !2, i64 352, !10, i64 360, !10, i64 364, !10, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416}
!179 = !{!"stream_s", !2, i64 0, !2, i64 8, !2, i64 16, !10, i64 24, !3, i64 28, !3, i64 112, !2, i64 136, !10, i64 144, !10, i64 148, !26, i64 152, !3, i64 154, !3, i64 155, !180, i64 160, !8, i64 176, !181, i64 184, !2, i64 240, !10, i64 248, !10, i64 252, !2, i64 256, !26, i64 264, !26, i64 266, !2, i64 272, !2, i64 280, !10, i64 288, !10, i64 292, !2, i64 296, !2, i64 304, !48, i64 312, !10, i64 328, !8, i64 336, !8, i64 344}
!180 = !{!"gs_string_s", !2, i64 0, !10, i64 8}
!181 = !{!"", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48}
!182 = !{!178, !2, i64 352}
!183 = !{!166, !10, i64 104}
!184 = !{!166, !10, i64 108}
!185 = !{!170, !10, i64 0}
!186 = !{!170, !10, i64 4}
!187 = !{!188, !2, i64 0}
!188 = !{!"stream_cursor_read_s", !2, i64 0, !2, i64 8, !2, i64 16}
!189 = !{!188, !2, i64 8}
!190 = !{!179, !26, i64 152}
!191 = !{!192, !10, i64 128}
!192 = !{!"gs_shading_FfGt_params_s", !2, i64 0, !2, i64 8, !2, i64 16, !10, i64 24, !12, i64 32, !10, i64 64, !167, i64 72, !10, i64 104, !10, i64 108, !2, i64 112, !2, i64 120, !10, i64 128}
!193 = !{!194, !10, i64 128}
!194 = !{!"gs_shading_LfGt_params_s", !2, i64 0, !2, i64 8, !2, i64 16, !10, i64 24, !12, i64 32, !10, i64 64, !167, i64 72, !10, i64 104, !10, i64 108, !2, i64 112, !2, i64 120, !10, i64 128}
!195 = !{!196, !10, i64 128}
!196 = !{!"gs_shading_Cp_params_s", !2, i64 0, !2, i64 8, !2, i64 16, !10, i64 24, !12, i64 32, !10, i64 64, !167, i64 72, !10, i64 104, !10, i64 108, !2, i64 112, !2, i64 120, !10, i64 128}
!197 = !{!198, !10, i64 128}
!198 = !{!"gs_shading_Tpp_params_s", !2, i64 0, !2, i64 8, !2, i64 16, !10, i64 24, !12, i64 32, !10, i64 64, !167, i64 72, !10, i64 104, !10, i64 108, !2, i64 112, !2, i64 120, !10, i64 128}
!199 = !{!200, !2, i64 112}
!200 = !{!"gs_shading_Fb_params_s", !2, i64 0, !2, i64 8, !2, i64 16, !10, i64 24, !12, i64 32, !10, i64 64, !3, i64 68, !16, i64 84, !2, i64 112}
!201 = !{!202, !2, i64 96}
!202 = !{!"gs_shading_A_params_s", !2, i64 0, !2, i64 8, !2, i64 16, !10, i64 24, !12, i64 32, !10, i64 64, !3, i64 68, !3, i64 84, !2, i64 96, !3, i64 104}
!203 = !{!204, !2, i64 104}
!204 = !{!"gs_shading_R_params_s", !2, i64 0, !2, i64 8, !2, i64 16, !10, i64 24, !12, i64 32, !10, i64 64, !3, i64 68, !3, i64 92, !2, i64 104, !3, i64 112}
!205 = !{!40, !10, i64 0}
!206 = !{!40, !10, i64 4}
!207 = !{!178, !2, i64 400}
!208 = !{!209, !15, i64 0}
!209 = !{!"gs_range_s", !15, i64 0, !15, i64 4}
!210 = !{!209, !15, i64 4}
