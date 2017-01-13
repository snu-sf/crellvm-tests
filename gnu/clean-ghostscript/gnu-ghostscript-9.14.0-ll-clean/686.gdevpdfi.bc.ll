; ModuleID = './gdevpdfi.bc'
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
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i8*, i8**)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i64 (%struct.gx_device_s*, i16*)*, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i32, i32*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, {}*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)*, i32 (%struct.gx_device_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, void (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* }
%struct.gx_tile_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16 }
%struct.gx_xfont_procs_s = type opaque
%struct.gx_path_s = type opaque
%struct.gx_fill_params_s = type opaque
%struct.gx_clip_path_s = type opaque
%struct.gx_stroke_params_s = type opaque
%struct.gs_fixed_edge_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_image1_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, i32, i32, i32, [130 x float], i32, i32, i32, %struct.gs_color_space_s*, i32, i32, i32, i32 }
%struct.gx_image_type_s = type { %struct.gs_memory_struct_type_s*, {}*, i32 (%struct.gs_imager_state_s*, %struct.gs_image_common_s*, %struct.gs_int_point_s*)*, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s**)*, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s*)*, void (%struct.gs_image_common_s*, %struct.gs_memory_s*)*, i32 }
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
%struct.pdf_color_space_names_s = type { i8*, i8*, i8*, i8* }
%struct.gx_device_null_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s* }
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
%struct.cos_object_procs_s = type { void (%struct.cos_object_s*, i8*)*, i32 (%struct.cos_object_s*, %struct.gx_device_pdf_s*, i64)*, i32 (%struct.cos_object_s*, %struct.cos_object_s*, %struct.gx_device_pdf_s*)*, i32 (%struct.cos_object_s*, %struct.gs_md5_state_s*, i8*, %struct.gx_device_pdf_s*)* }
%struct.cos_object_s = type { %struct.cos_object_procs_s*, i64, %struct.cos_element_s*, %struct.cos_stream_piece_s*, %struct.gx_device_pdf_s*, %struct.pdf_resource_s*, i8, i8, i8, i64, %struct.stream_s*, %struct.gs_md5_state_s, i32, [16 x i8], i32, [16 x i8] }
%struct.cos_element_s = type opaque
%struct.cos_array_element_s = type opaque
%struct.cos_stream_piece_s = type opaque
%struct.gs_md5_state_s = type { [2 x i32], [4 x i32], [64 x i8] }
%struct.pdf_viewer_state_s = type { i32, [4 x i64], float, float, i32, i64, i64, i64, i32, float, float, i32, i32, i32, i32, i32, i32, %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s, %struct.gx_line_params_s, float*, i32, i64 }
%struct.pdf_substream_save_s = type { i32, %struct.pdf_text_state_s*, %struct.gx_path_s*, i64, i32, %struct.stream_s*, %struct.cos_dict_s*, i32, i32, %struct.pdf_resource_s*, %struct.pdf_resource_s*, i32, i32, %struct.pdf_resource_s*, %struct.gs_const_string_s, i32 }
%struct.pdf_text_state_s = type opaque
%struct.cos_dict_s = type { %struct.cos_object_procs_s*, i64, %struct.cos_dict_element_s*, %struct.cos_stream_piece_s*, %struct.gx_device_pdf_s*, %struct.pdf_resource_s*, i8, i8, i8, i64, %struct.stream_s*, %struct.gs_md5_state_s, i32, [16 x i8], i32, [16 x i8] }
%struct.cos_dict_element_s = type opaque
%struct.pdf_char_glyph_pairs_s = type opaque
%struct.pdf_resource_s = type { %struct.pdf_resource_s*, %struct.pdf_resource_s*, i64, i32, i32, [24 x i8], i64, %struct.cos_object_s* }
%struct.linearisation_record_s = type { i32, i32, i32*, i32, i64, i64, i64 }
%struct.pdf_pattern_s = type { %struct.pdf_pattern_s*, %struct.pdf_resource_s*, i64, i32, i32, [24 x i8], i64, %struct.cos_object_s*, %struct.pdf_pattern_s* }
%struct.gs_form_template_s = type { %struct.gs_rect_s, %struct.gs_matrix_s, %struct.gs_matrix_s, %struct.gx_clip_path_s* }
%struct.cos_stream_s = type { %struct.cos_object_procs_s*, i64, %struct.cos_dict_element_s*, %struct.cos_stream_piece_s*, %struct.gx_device_pdf_s*, %struct.pdf_resource_s*, i8, i8, i8, i64, %struct.stream_s*, %struct.gs_md5_state_s, i32, [16 x i8], i32, [16 x i8] }
%union.image_union_s = type { %struct.gs_image3x_s }
%struct.gs_image3x_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, i32, i32, i32, [130 x float], i32, i32, i32, %struct.gs_color_space_s*, %struct.gs_image3x_mask_s, %struct.gs_image3x_mask_s }
%struct.gs_image3x_mask_s = type { i32, [64 x float], i32, %struct.gs_data_image_s }
%struct.gs_data_image_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, i32, i32, i32, [130 x float], i32 }
%struct.gs_pixel_image_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, i32, i32, i32, [130 x float], i32, i32, i32, %struct.gs_color_space_s* }
%struct.pdf_image_enum_s = type { %struct.gx_image_type_s*, %struct.gx_image_enum_procs_s*, %struct.gx_device_s*, %struct.gs_memory_s*, i64, i32, i32, [65 x i32], [65 x i32], i32, i32, i32, %struct.pdf_image_writer_s, %struct.gs_matrix_s }
%struct.pdf_image_writer_s = type { [4 x %struct.psdf_binary_writer_s], i32, %struct.pdf_image_names_s*, %struct.pdf_resource_s*, i32, %struct.cos_stream_s*, i8*, %struct.cos_dict_s*, %struct.pdf_resource_s* }
%struct.psdf_binary_writer_s = type { %struct.gs_memory_s*, %struct.stream_s*, %struct.stream_s*, %struct.gx_device_psdf_s* }
%struct.gx_device_psdf_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gs_memory_s*, %struct.gx_device_vector_procs_s*, [4096 x i8], %struct._IO_FILE*, %struct.stream_s*, i8*, i32, i32, %struct.gs_imager_state_s, float*, i32, i32, i32, %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s, i64, i64, i32, i32, %struct.gs_point_s, i32, %struct.gx_device_bbox_s*, i64, i64, i32, i32, i32, i32, i32, double, %struct.psdf_distiller_params_s }
%struct.pdf_image_names_s = type { %struct.pdf_color_space_names_s, %struct.pdf_filter_names_s, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.pdf_filter_names_s = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.cos_value_s = type { i32, %union.vc_ }
%union.vc_ = type { %struct.gs_string_s }
%struct.gx_device_clip_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, %struct.gx_clip_list_s, %struct.gx_clip_rect_s*, %struct.gs_int_point_s, %struct.gs_fixed_rect_s, i32 }
%struct.gx_clip_list_s = type { %struct.gx_clip_rect_s, %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s*, i32, i32, i32 }
%struct.gx_clip_rect_s = type { %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s*, i32, i32, i32, i32, i8 }
%struct.gs_image3_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, i32, i32, i32, [130 x float], i32, i32, i32, %struct.gs_color_space_s*, i32, %struct.gs_data_image_s }
%struct.gs_image4_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, i32, i32, i32, [130 x float], i32, i32, i32, %struct.gs_color_space_s*, i32, [130 x i32], i32 }
%struct.psdf_set_color_commands_s = type { i8*, i8*, i8*, i8*, i8*, i8* }
%struct.pdf_lcvd_s = type { %struct.gx_device_memory_s, %struct.gx_device_memory_s*, %struct.gx_device_pdf_s*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, i32, i32, i32, i32, i32, %struct.gs_matrix_s, %struct.gs_point_s }
%struct.gx_device_memory_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, i32, i8*, %struct.gs_memory_s*, i32, %struct.gs_memory_s*, i32, [64 x %struct.gx_render_plane_s], %struct.gs_matrix_s, i8**, %struct.gs_const_string_s, %struct._c24, %struct._c40, %struct._c48, %struct._c56, %struct._c64, %struct.gs_log2_scale_point_s, i32, i32, i32, i32, i32, i64, %struct.gx_device_color_s*, i32, i32 }
%struct.gx_render_plane_s = type { i32, i32, i32 }
%struct._c24 = type { i64, i32, i32, i32 }
%struct._c40 = type { i64, i32, i32, i32, i32, i32 }
%struct._c48 = type { i64, i32, i32, i32 }
%struct._c56 = type { i64, i32, i32, i32, i32, i32, i32, i32 }
%struct._c64 = type { i64, i32, i32 }
%struct.gx_device_forward_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s* }
%struct.pdf_x_object_s = type { %struct.pdf_x_object_s*, %struct.pdf_resource_s*, i64, i32, i32, [24 x i8], i64, %struct.cos_object_s*, i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"q %g %g %g %g %g %g cm\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"pdf_pattern(Resources)\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"/Type\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"/XObject\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"/Subtype\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"/Form\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"/FormType\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"/Resources\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"/BBox\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"/Matrix\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"%g 0 0 %g 0 0 cm\0A\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"/R%ld Do Q\0A\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"/Pattern\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"pdf_begin_typed_image(image)\00", align 1
@gx_dc_type_data_pure = external constant %struct.gx_device_color_type_s, align 8
@st_pdf_image_enum = internal constant %struct.gs_memory_struct_type_s { i32 800, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @pdf_image_enum_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @pdf_image_enum_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@.str.15 = private unnamed_addr constant [16 x i8] c"pdf_begin_image\00", align 1
@pdf_image_object_enum_procs = internal constant %struct.gx_image_enum_procs_s { i32 (%struct.gx_image_enum_common_s*, %struct.gx_image_plane_s*, i32, i32*)* @pdf_image_plane_data, i32 (%struct.gx_image_enum_common_s*, i32)* @pdf_image_end_image_object, i32 (%struct.gx_image_enum_common_s*)* null, i32 (%struct.gx_image_enum_common_s*, i8*)* null }, align 8
@pdf_image_enum_procs = internal constant %struct.gx_image_enum_procs_s { i32 (%struct.gx_image_enum_common_s*, %struct.gx_image_plane_s*, i32, i32*)* @pdf_image_plane_data, i32 (%struct.gx_image_enum_common_s*, i32)* @pdf_image_end_image, i32 (%struct.gx_image_enum_common_s*)* null, i32 (%struct.gx_image_enum_common_s*, i8*)* null }, align 8
@pdf_image_object_enum_procs2 = internal constant %struct.gx_image_enum_procs_s { i32 (%struct.gx_image_enum_common_s*, %struct.gx_image_plane_s*, i32, i32*)* @pdf_image_plane_data, i32 (%struct.gx_image_enum_common_s*, i32)* @pdf_image_end_image_object2, i32 (%struct.gx_image_enum_common_s*)* null, i32 (%struct.gx_image_enum_common_s*, i8*)* null }, align 8
@pdf_color_space_names_short = external constant %struct.pdf_color_space_names_s, align 8
@pdf_color_space_names = external constant %struct.pdf_color_space_names_s, align 8
@.str.16 = private unnamed_addr constant [24 x i8] c"compressed image stream\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"pdf_begin_typed_image_impl\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"compressed image cos_stream\00", align 1
@gs_null_device = external constant %struct.gx_device_null_s, align 8
@.str.19 = private unnamed_addr constant [22 x i8] c"pdf_image3x_make_mcde\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"/Matte\00", align 1
@pdf_image_cvd_enum_procs = internal constant %struct.gx_image_enum_procs_s { i32 (%struct.gx_image_enum_common_s*, %struct.gx_image_plane_s*, i32, i32*)* @gx_image1_plane_data, i32 (%struct.gx_image_enum_common_s*, i32)* @pdf_image_end_image_cvd, i32 (%struct.gx_image_enum_common_s*)* @gx_image1_flush, i32 (%struct.gx_image_enum_common_s*, i8*)* null }, align 8
@.str.21 = private unnamed_addr constant [24 x i8] c"pdf_image_end_image_cvd\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"pdf_image_enum\00", align 1
@st_pdf_image_writer = external constant %struct.gs_memory_struct_type_s, align 8
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8
@st_gx_image_enum_common = external constant %struct.gs_memory_struct_type_s, align 8
@.str.23 = private unnamed_addr constant [8 x i8] c"%ld 0 R\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"/SMask\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"/Mask\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"/R%ld Do\0A\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"q \00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c" cs /R%ld scn \00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"Q\0A\00", align 1
@.str.30 = private unnamed_addr constant [31 x i8] c"Unsupported ProcessColorModel.\00", align 1
@.str.31 = private unnamed_addr constant [30 x i8] c"Unsupported ProcessColorModel\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"DeviceCMYK\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"DeviceRGB\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"DeviceGray\00", align 1
@.str.35 = private unnamed_addr constant [63 x i8] c"ColorConversionStrategy isn't compatible to ProcessColorModel.\00", align 1
@.str.36 = private unnamed_addr constant [25 x i8] c"psdf_setup_image_filters\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gdev_pdf_begin_typed_image(%struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis, %struct.gs_matrix_s* %pmat, %struct.gs_image_common_s* %pic, %struct.gs_int_rect_s* %prect, %struct.gx_device_color_s* %pdcolor, %struct.gx_clip_path_s* %pcpath, %struct.gs_memory_s* %mem, %struct.gx_image_enum_common_s** %pinfo) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %pic.addr = alloca %struct.gs_image_common_s*, align 8
  %prect.addr = alloca %struct.gs_int_rect_s*, align 8
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pinfo.addr = alloca %struct.gx_image_enum_common_s**, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  store %struct.gs_image_common_s* %pic, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  store %struct.gs_int_rect_s* %prect, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gx_image_enum_common_s** %pinfo, %struct.gx_image_enum_common_s*** %pinfo.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %1 = bitcast %struct.gx_device_s* %0 to %struct.gx_device_pdf_s*
  %2 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %3 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %4 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %5 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %6 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %7 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %9 = load %struct.gx_image_enum_common_s**, %struct.gx_image_enum_common_s*** %pinfo.addr, align 8, !tbaa !1
  %call = call i32 @pdf_begin_typed_image(%struct.gx_device_pdf_s* %1, %struct.gs_imager_state_s* %2, %struct.gs_matrix_s* %3, %struct.gs_image_common_s* %4, %struct.gs_int_rect_s* %5, %struct.gx_device_color_s* %6, %struct.gx_clip_path_s* %7, %struct.gs_memory_s* %8, %struct.gx_image_enum_common_s** %9, i32 0) #6
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @pdf_begin_typed_image(%struct.gx_device_pdf_s* %pdev, %struct.gs_imager_state_s* %pis, %struct.gs_matrix_s* %pmat, %struct.gs_image_common_s* %pic, %struct.gs_int_rect_s* %prect, %struct.gx_device_color_s* %pdcolor, %struct.gx_clip_path_s* %pcpath, %struct.gs_memory_s* %mem, %struct.gx_image_enum_common_s** %pinfo, i32 %context) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %pic.addr = alloca %struct.gs_image_common_s*, align 8
  %prect.addr = alloca %struct.gs_int_rect_s*, align 8
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pinfo.addr = alloca %struct.gx_image_enum_common_s**, align 8
  %context.addr = alloca i32, align 4
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  store %struct.gs_image_common_s* %pic, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  store %struct.gs_int_rect_s* %prect, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gx_image_enum_common_s** %pinfo, %struct.gx_image_enum_common_s*** %pinfo.addr, align 8, !tbaa !1
  store i32 %context, i32* %context.addr, align 4, !tbaa !5
  %0 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %UseOldColor = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %0, i32 0, i32 248
  %1 = load i32, i32* %UseOldColor, align 4, !tbaa !6
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %3 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %4 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %5 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %6 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %7 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %8 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %10 = load %struct.gx_image_enum_common_s**, %struct.gx_image_enum_common_s*** %pinfo.addr, align 8, !tbaa !1
  %11 = load i32, i32* %context.addr, align 4, !tbaa !5
  %call = call i32 @new_pdf_begin_typed_image(%struct.gx_device_pdf_s* %2, %struct.gs_imager_state_s* %3, %struct.gs_matrix_s* %4, %struct.gs_image_common_s* %5, %struct.gs_int_rect_s* %6, %struct.gx_device_color_s* %7, %struct.gx_clip_path_s* %8, %struct.gs_memory_s* %9, %struct.gx_image_enum_common_s** %10, i32 %11) #6
  store i32 %call, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %12 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %13 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %14 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %15 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %16 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %17 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %18 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %20 = load %struct.gx_image_enum_common_s**, %struct.gx_image_enum_common_s*** %pinfo.addr, align 8, !tbaa !1
  %21 = load i32, i32* %context.addr, align 4, !tbaa !5
  %call1 = call i32 @old_pdf_begin_typed_image(%struct.gx_device_pdf_s* %12, %struct.gs_imager_state_s* %13, %struct.gs_matrix_s* %14, %struct.gs_image_common_s* %15, %struct.gs_int_rect_s* %16, %struct.gx_device_color_s* %17, %struct.gx_clip_path_s* %18, %struct.gs_memory_s* %19, %struct.gx_image_enum_common_s** %20, i32 %21) #6
  store i32 %call1, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define %struct.pdf_resource_s* @pdf_substitute_pattern(%struct.pdf_resource_s* %pres) #0 {
entry:
  %pres.addr = alloca %struct.pdf_resource_s*, align 8
  %ppat = alloca %struct.pdf_pattern_s*, align 8
  store %struct.pdf_resource_s* %pres, %struct.pdf_resource_s** %pres.addr, align 8, !tbaa !1
  %0 = bitcast %struct.pdf_pattern_s** %ppat to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres.addr, align 8, !tbaa !1
  %2 = bitcast %struct.pdf_resource_s* %1 to %struct.pdf_pattern_s*
  store %struct.pdf_pattern_s* %2, %struct.pdf_pattern_s** %ppat, align 8, !tbaa !1
  %3 = load %struct.pdf_pattern_s*, %struct.pdf_pattern_s** %ppat, align 8, !tbaa !1
  %substitute = getelementptr inbounds %struct.pdf_pattern_s, %struct.pdf_pattern_s* %3, i32 0, i32 8
  %4 = load %struct.pdf_pattern_s*, %struct.pdf_pattern_s** %substitute, align 8, !tbaa !50
  %cmp = icmp ne %struct.pdf_pattern_s* %4, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %5 = load %struct.pdf_pattern_s*, %struct.pdf_pattern_s** %ppat, align 8, !tbaa !1
  %substitute1 = getelementptr inbounds %struct.pdf_pattern_s, %struct.pdf_pattern_s* %5, i32 0, i32 8
  %6 = load %struct.pdf_pattern_s*, %struct.pdf_pattern_s** %substitute1, align 8, !tbaa !50
  br label %cond.end

cond.false:                                       ; preds = %entry
  %7 = load %struct.pdf_pattern_s*, %struct.pdf_pattern_s** %ppat, align 8, !tbaa !1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.pdf_pattern_s* [ %6, %cond.true ], [ %7, %cond.false ]
  %8 = bitcast %struct.pdf_pattern_s* %cond to %struct.pdf_resource_s*
  %9 = bitcast %struct.pdf_pattern_s** %ppat to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #1
  ret %struct.pdf_resource_s* %8
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @gdev_pdf_dev_spec_op(%struct.gx_device_s* %pdev1, i32 %dev_spec_op, i8* %data, i32 %size) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev1.addr = alloca %struct.gx_device_s*, align 8
  %dev_spec_op.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pdev = alloca %struct.gx_device_pdf_s*, align 8
  %code = alloca i32, align 4
  %pres = alloca %struct.pdf_resource_s*, align 8
  %pres1 = alloca %struct.pdf_resource_s*, align 8
  %id = alloca i64, align 8
  %pinst = alloca %struct.gs_pattern1_instance_s*, align 8
  %cleanup.dest.slot = alloca i32
  %tmplate = alloca %struct.gs_form_template_s*, align 8
  %arry = alloca [6 x float], align 16
  %pcd = alloca %struct.cos_dict_s*, align 8
  %pcd_Resources = alloca %struct.cos_dict_s*, align 8
  %ppat = alloca %struct.pdf_pattern_s*, align 8
  store %struct.gx_device_s* %pdev1, %struct.gx_device_s** %pdev1.addr, align 8, !tbaa !1
  store i32 %dev_spec_op, i32* %dev_spec_op.addr, align 4, !tbaa !52
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !52
  %0 = bitcast %struct.gx_device_pdf_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev1.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_pdf_s*
  store %struct.gx_device_pdf_s* %2, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %code, align 4, !tbaa !52
  %4 = bitcast %struct.pdf_resource_s** %pres to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast %struct.pdf_resource_s** %pres1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i64* %id to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load i32, i32* %size.addr, align 4, !tbaa !52
  %conv = sext i32 %7 to i64
  store i64 %conv, i64* %id, align 8, !tbaa !53
  %8 = bitcast %struct.gs_pattern1_instance_s** %pinst to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %10 = bitcast i8* %9 to %struct.gs_pattern1_instance_s*
  store %struct.gs_pattern1_instance_s* %10, %struct.gs_pattern1_instance_s** %pinst, align 8, !tbaa !1
  %11 = load i32, i32* %dev_spec_op.addr, align 4, !tbaa !52
  switch i32 %11, label %sw.epilog [
    i32 0, label %sw.bb
    i32 17, label %sw.bb.1
    i32 18, label %sw.bb.136
    i32 1, label %sw.bb.181
    i32 2, label %sw.bb.206
    i32 3, label %sw.bb.259
    i32 4, label %sw.bb.275
    i32 5, label %sw.bb.276
    i32 6, label %sw.bb.277
    i32 7, label %sw.bb.278
    i32 12, label %sw.bb.279
    i32 15, label %sw.bb.280
  ]

sw.bb:                                            ; preds = %entry
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.282

sw.bb.1:                                          ; preds = %entry
  %12 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %HighLevelForm = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %12, i32 0, i32 202
  %13 = load i32, i32* %HighLevelForm, align 4, !tbaa !54
  %cmp = icmp eq i32 %13, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.135

land.lhs.true:                                    ; preds = %sw.bb.1
  %14 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %PatternDepth = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %14, i32 0, i32 203
  %15 = load i32, i32* %PatternDepth, align 4, !tbaa !55
  %cmp3 = icmp eq i32 %15, 0
  br i1 %cmp3, label %if.then, label %if.end.135

if.then:                                          ; preds = %land.lhs.true
  %16 = bitcast %struct.gs_form_template_s** %tmplate to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %18 = bitcast i8* %17 to %struct.gs_form_template_s*
  store %struct.gs_form_template_s* %18, %struct.gs_form_template_s** %tmplate, align 8, !tbaa !1
  %19 = bitcast [6 x float]* %arry to i8*
  call void @llvm.lifetime.start(i64 24, i8* %19) #1
  %20 = bitcast %struct.cos_dict_s** %pcd to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  store %struct.cos_dict_s* null, %struct.cos_dict_s** %pcd, align 8, !tbaa !1
  %21 = bitcast %struct.cos_dict_s** %pcd_Resources to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  store %struct.cos_dict_s* null, %struct.cos_dict_s** %pcd_Resources, align 8, !tbaa !1
  %22 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %call = call i32 @pdfwrite_pdf_open_document(%struct.gx_device_pdf_s* %22) #6
  store i32 %call, i32* %code, align 4, !tbaa !52
  %23 = load i32, i32* %code, align 4, !tbaa !52
  %cmp5 = icmp slt i32 %23, 0
  br i1 %cmp5, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  %24 = load i32, i32* %code, align 4, !tbaa !52
  store i32 %24, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %25 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %call8 = call i32 @pdf_open_contents(%struct.gx_device_pdf_s* %25, i32 1) #6
  store i32 %call8, i32* %code, align 4, !tbaa !52
  %26 = load i32, i32* %code, align 4, !tbaa !52
  %cmp9 = icmp slt i32 %26, 0
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end
  %27 = load i32, i32* %code, align 4, !tbaa !52
  store i32 %27, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.end
  %28 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %29 = load %struct.gs_form_template_s*, %struct.gs_form_template_s** %tmplate, align 8, !tbaa !1
  %pcpath = getelementptr inbounds %struct.gs_form_template_s, %struct.gs_form_template_s* %29, i32 0, i32 3
  %30 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath, align 8, !tbaa !56
  %call13 = call i32 @pdf_put_clip_path(%struct.gx_device_pdf_s* %28, %struct.gx_clip_path_s* %30) #6
  store i32 %call13, i32* %code, align 4, !tbaa !52
  %31 = load i32, i32* %code, align 4, !tbaa !52
  %cmp14 = icmp slt i32 %31, 0
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.12
  %32 = load i32, i32* %code, align 4, !tbaa !52
  store i32 %32, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.17:                                        ; preds = %if.end.12
  %33 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %33, i32 0, i32 47
  %34 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !58
  %35 = load %struct.gs_form_template_s*, %struct.gs_form_template_s** %tmplate, align 8, !tbaa !1
  %CTM = getelementptr inbounds %struct.gs_form_template_s, %struct.gs_form_template_s* %35, i32 0, i32 2
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %CTM, i32 0, i32 0
  %36 = load float, float* %xx, align 4, !tbaa !59
  %conv18 = fpext float %36 to double
  %37 = load %struct.gs_form_template_s*, %struct.gs_form_template_s** %tmplate, align 8, !tbaa !1
  %CTM19 = getelementptr inbounds %struct.gs_form_template_s, %struct.gs_form_template_s* %37, i32 0, i32 2
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %CTM19, i32 0, i32 1
  %38 = load float, float* %xy, align 4, !tbaa !60
  %conv20 = fpext float %38 to double
  %39 = load %struct.gs_form_template_s*, %struct.gs_form_template_s** %tmplate, align 8, !tbaa !1
  %CTM21 = getelementptr inbounds %struct.gs_form_template_s, %struct.gs_form_template_s* %39, i32 0, i32 2
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %CTM21, i32 0, i32 2
  %40 = load float, float* %yx, align 4, !tbaa !61
  %conv22 = fpext float %40 to double
  %41 = load %struct.gs_form_template_s*, %struct.gs_form_template_s** %tmplate, align 8, !tbaa !1
  %CTM23 = getelementptr inbounds %struct.gs_form_template_s, %struct.gs_form_template_s* %41, i32 0, i32 2
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %CTM23, i32 0, i32 3
  %42 = load float, float* %yy, align 4, !tbaa !62
  %conv24 = fpext float %42 to double
  %43 = load %struct.gs_form_template_s*, %struct.gs_form_template_s** %tmplate, align 8, !tbaa !1
  %CTM25 = getelementptr inbounds %struct.gs_form_template_s, %struct.gs_form_template_s* %43, i32 0, i32 2
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %CTM25, i32 0, i32 4
  %44 = load float, float* %tx, align 4, !tbaa !63
  %conv26 = fpext float %44 to double
  %45 = load %struct.gs_form_template_s*, %struct.gs_form_template_s** %tmplate, align 8, !tbaa !1
  %CTM27 = getelementptr inbounds %struct.gs_form_template_s, %struct.gs_form_template_s* %45, i32 0, i32 2
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %CTM27, i32 0, i32 5
  %46 = load float, float* %ty, align 4, !tbaa !64
  %conv28 = fpext float %46 to double
  %call29 = call i8* @pprintg6(%struct.stream_s* %34, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0), double %conv18, double %conv20, double %conv22, double %conv24, double %conv26, double %conv28) #6
  %47 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %48 = load i64, i64* %id, align 8, !tbaa !53
  %49 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %CompressFonts = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %49, i32 0, i32 94
  %50 = load i32, i32* %CompressFonts, align 4, !tbaa !65
  %call30 = call i32 @pdf_enter_substream(%struct.gx_device_pdf_s* %47, i32 4, i64 %48, %struct.pdf_resource_s** %pres, i32 0, i32 %50) #6
  store i32 %call30, i32* %code, align 4, !tbaa !52
  %51 = load i32, i32* %code, align 4, !tbaa !52
  %cmp31 = icmp slt i32 %51, 0
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.end.17
  %52 = load i32, i32* %code, align 4, !tbaa !52
  store i32 %52, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.34:                                        ; preds = %if.end.17
  %53 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %object = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %53, i32 0, i32 7
  %54 = load %struct.cos_object_s*, %struct.cos_object_s** %object, align 8, !tbaa !66
  %55 = bitcast %struct.cos_object_s* %54 to %struct.cos_stream_s*
  %call35 = call %struct.cos_dict_s* @cos_stream_dict(%struct.cos_stream_s* %55) #6
  store %struct.cos_dict_s* %call35, %struct.cos_dict_s** %pcd, align 8, !tbaa !1
  %56 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %call36 = call %struct.cos_dict_s* @cos_dict_alloc(%struct.gx_device_pdf_s* %56, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0)) #6
  store %struct.cos_dict_s* %call36, %struct.cos_dict_s** %pcd_Resources, align 8, !tbaa !1
  %57 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd, align 8, !tbaa !1
  %cmp37 = icmp eq %struct.cos_dict_s* %57, null
  br i1 %cmp37, label %if.then.41, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.34
  %58 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd_Resources, align 8, !tbaa !1
  %cmp39 = icmp eq %struct.cos_dict_s* %58, null
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %lor.lhs.false, %if.end.34
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.42:                                        ; preds = %lor.lhs.false
  %59 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd, align 8, !tbaa !1
  %call43 = call i32 @cos_dict_put_c_strings(%struct.cos_dict_s* %59, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0)) #6
  store i32 %call43, i32* %code, align 4, !tbaa !52
  %60 = load i32, i32* %code, align 4, !tbaa !52
  %cmp44 = icmp sge i32 %60, 0
  br i1 %cmp44, label %if.then.46, label %if.end.48

if.then.46:                                       ; preds = %if.end.42
  %61 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd, align 8, !tbaa !1
  %call47 = call i32 @cos_dict_put_c_strings(%struct.cos_dict_s* %61, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0)) #6
  store i32 %call47, i32* %code, align 4, !tbaa !52
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.46, %if.end.42
  %62 = load i32, i32* %code, align 4, !tbaa !52
  %cmp49 = icmp sge i32 %62, 0
  br i1 %cmp49, label %if.then.51, label %if.end.53

if.then.51:                                       ; preds = %if.end.48
  %63 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd, align 8, !tbaa !1
  %call52 = call i32 @cos_dict_put_c_strings(%struct.cos_dict_s* %63, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0)) #6
  store i32 %call52, i32* %code, align 4, !tbaa !52
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.51, %if.end.48
  %64 = load i32, i32* %code, align 4, !tbaa !52
  %cmp54 = icmp sge i32 %64, 0
  br i1 %cmp54, label %if.then.56, label %if.end.58

if.then.56:                                       ; preds = %if.end.53
  %65 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd, align 8, !tbaa !1
  %66 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd_Resources, align 8, !tbaa !1
  %cos_procs = getelementptr inbounds %struct.cos_dict_s, %struct.cos_dict_s* %66, i32 0, i32 0
  %67 = bitcast %struct.cos_object_procs_s** %cos_procs to %struct.cos_object_s*
  %call57 = call i32 @cos_dict_put_c_key_object(%struct.cos_dict_s* %65, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), %struct.cos_object_s* %67) #6
  store i32 %call57, i32* %code, align 4, !tbaa !52
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.56, %if.end.53
  %68 = load %struct.gs_form_template_s*, %struct.gs_form_template_s** %tmplate, align 8, !tbaa !1
  %BBox = getelementptr inbounds %struct.gs_form_template_s, %struct.gs_form_template_s* %68, i32 0, i32 0
  %p = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %BBox, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p, i32 0, i32 0
  %69 = load double, double* %x, align 8, !tbaa !68
  %conv59 = fptrunc double %69 to float
  %arrayidx = getelementptr inbounds [6 x float], [6 x float]* %arry, i32 0, i64 0
  store float %conv59, float* %arrayidx, align 4, !tbaa !69
  %70 = load %struct.gs_form_template_s*, %struct.gs_form_template_s** %tmplate, align 8, !tbaa !1
  %BBox60 = getelementptr inbounds %struct.gs_form_template_s, %struct.gs_form_template_s* %70, i32 0, i32 0
  %p61 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %BBox60, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p61, i32 0, i32 1
  %71 = load double, double* %y, align 8, !tbaa !70
  %conv62 = fptrunc double %71 to float
  %arrayidx63 = getelementptr inbounds [6 x float], [6 x float]* %arry, i32 0, i64 1
  store float %conv62, float* %arrayidx63, align 4, !tbaa !69
  %72 = load %struct.gs_form_template_s*, %struct.gs_form_template_s** %tmplate, align 8, !tbaa !1
  %BBox64 = getelementptr inbounds %struct.gs_form_template_s, %struct.gs_form_template_s* %72, i32 0, i32 0
  %q = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %BBox64, i32 0, i32 1
  %x65 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q, i32 0, i32 0
  %73 = load double, double* %x65, align 8, !tbaa !71
  %conv66 = fptrunc double %73 to float
  %arrayidx67 = getelementptr inbounds [6 x float], [6 x float]* %arry, i32 0, i64 2
  store float %conv66, float* %arrayidx67, align 4, !tbaa !69
  %74 = load %struct.gs_form_template_s*, %struct.gs_form_template_s** %tmplate, align 8, !tbaa !1
  %BBox68 = getelementptr inbounds %struct.gs_form_template_s, %struct.gs_form_template_s* %74, i32 0, i32 0
  %q69 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %BBox68, i32 0, i32 1
  %y70 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q69, i32 0, i32 1
  %75 = load double, double* %y70, align 8, !tbaa !72
  %conv71 = fptrunc double %75 to float
  %arrayidx72 = getelementptr inbounds [6 x float], [6 x float]* %arry, i32 0, i64 3
  store float %conv71, float* %arrayidx72, align 4, !tbaa !69
  %76 = load i32, i32* %code, align 4, !tbaa !52
  %cmp73 = icmp sge i32 %76, 0
  br i1 %cmp73, label %if.then.75, label %if.end.77

if.then.75:                                       ; preds = %if.end.58
  %77 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [6 x float], [6 x float]* %arry, i32 0, i32 0
  %call76 = call i32 @cos_dict_put_c_key_floats(%struct.cos_dict_s* %77, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), float* %arraydecay, i32 4) #6
  store i32 %call76, i32* %code, align 4, !tbaa !52
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.75, %if.end.58
  %78 = load i32, i32* %code, align 4, !tbaa !52
  %cmp78 = icmp slt i32 %78, 0
  br i1 %cmp78, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %if.end.77
  %79 = load i32, i32* %code, align 4, !tbaa !52
  store i32 %79, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.81:                                        ; preds = %if.end.77
  %80 = load %struct.gs_form_template_s*, %struct.gs_form_template_s** %tmplate, align 8, !tbaa !1
  %form_matrix = getelementptr inbounds %struct.gs_form_template_s, %struct.gs_form_template_s* %80, i32 0, i32 1
  %xx82 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %form_matrix, i32 0, i32 0
  %81 = load float, float* %xx82, align 4, !tbaa !73
  %arrayidx83 = getelementptr inbounds [6 x float], [6 x float]* %arry, i32 0, i64 0
  store float %81, float* %arrayidx83, align 4, !tbaa !69
  %82 = load %struct.gs_form_template_s*, %struct.gs_form_template_s** %tmplate, align 8, !tbaa !1
  %form_matrix84 = getelementptr inbounds %struct.gs_form_template_s, %struct.gs_form_template_s* %82, i32 0, i32 1
  %xy85 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %form_matrix84, i32 0, i32 1
  %83 = load float, float* %xy85, align 4, !tbaa !74
  %arrayidx86 = getelementptr inbounds [6 x float], [6 x float]* %arry, i32 0, i64 1
  store float %83, float* %arrayidx86, align 4, !tbaa !69
  %84 = load %struct.gs_form_template_s*, %struct.gs_form_template_s** %tmplate, align 8, !tbaa !1
  %form_matrix87 = getelementptr inbounds %struct.gs_form_template_s, %struct.gs_form_template_s* %84, i32 0, i32 1
  %yx88 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %form_matrix87, i32 0, i32 2
  %85 = load float, float* %yx88, align 4, !tbaa !75
  %arrayidx89 = getelementptr inbounds [6 x float], [6 x float]* %arry, i32 0, i64 2
  store float %85, float* %arrayidx89, align 4, !tbaa !69
  %86 = load %struct.gs_form_template_s*, %struct.gs_form_template_s** %tmplate, align 8, !tbaa !1
  %form_matrix90 = getelementptr inbounds %struct.gs_form_template_s, %struct.gs_form_template_s* %86, i32 0, i32 1
  %yy91 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %form_matrix90, i32 0, i32 3
  %87 = load float, float* %yy91, align 4, !tbaa !76
  %arrayidx92 = getelementptr inbounds [6 x float], [6 x float]* %arry, i32 0, i64 3
  store float %87, float* %arrayidx92, align 4, !tbaa !69
  %88 = load %struct.gs_form_template_s*, %struct.gs_form_template_s** %tmplate, align 8, !tbaa !1
  %form_matrix93 = getelementptr inbounds %struct.gs_form_template_s, %struct.gs_form_template_s* %88, i32 0, i32 1
  %tx94 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %form_matrix93, i32 0, i32 4
  %89 = load float, float* %tx94, align 4, !tbaa !77
  %arrayidx95 = getelementptr inbounds [6 x float], [6 x float]* %arry, i32 0, i64 4
  store float %89, float* %arrayidx95, align 4, !tbaa !69
  %90 = load %struct.gs_form_template_s*, %struct.gs_form_template_s** %tmplate, align 8, !tbaa !1
  %form_matrix96 = getelementptr inbounds %struct.gs_form_template_s, %struct.gs_form_template_s* %90, i32 0, i32 1
  %ty97 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %form_matrix96, i32 0, i32 5
  %91 = load float, float* %ty97, align 4, !tbaa !78
  %arrayidx98 = getelementptr inbounds [6 x float], [6 x float]* %arry, i32 0, i64 5
  store float %91, float* %arrayidx98, align 4, !tbaa !69
  %92 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd, align 8, !tbaa !1
  %arraydecay99 = getelementptr inbounds [6 x float], [6 x float]* %arry, i32 0, i32 0
  %call100 = call i32 @cos_dict_put_c_key_floats(%struct.cos_dict_s* %92, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), float* %arraydecay99, i32 6) #6
  store i32 %call100, i32* %code, align 4, !tbaa !52
  %93 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %strm101 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %93, i32 0, i32 47
  %94 = load %struct.stream_s*, %struct.stream_s** %strm101, align 8, !tbaa !58
  %95 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %95, i32 0, i32 22
  %arrayidx102 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %96 = load float, float* %arrayidx102, align 4, !tbaa !69
  %conv103 = fpext float %96 to double
  %div = fdiv double 7.200000e+01, %conv103
  %97 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %HWResolution104 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %97, i32 0, i32 22
  %arrayidx105 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution104, i32 0, i64 1
  %98 = load float, float* %arrayidx105, align 4, !tbaa !69
  %conv106 = fpext float %98 to double
  %div107 = fdiv double 7.200000e+01, %conv106
  %call108 = call i8* @pprintg2(%struct.stream_s* %94, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i32 0, i32 0), double %div, double %div107) #6
  %99 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %HWResolution109 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %99, i32 0, i32 22
  %arrayidx110 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution109, i32 0, i64 0
  %100 = load float, float* %arrayidx110, align 4, !tbaa !69
  %div111 = fdiv float %100, 7.200000e+01
  %101 = load %struct.gs_form_template_s*, %struct.gs_form_template_s** %tmplate, align 8, !tbaa !1
  %CTM112 = getelementptr inbounds %struct.gs_form_template_s, %struct.gs_form_template_s* %101, i32 0, i32 2
  %xx113 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %CTM112, i32 0, i32 0
  store float %div111, float* %xx113, align 4, !tbaa !59
  %102 = load %struct.gs_form_template_s*, %struct.gs_form_template_s** %tmplate, align 8, !tbaa !1
  %CTM114 = getelementptr inbounds %struct.gs_form_template_s, %struct.gs_form_template_s* %102, i32 0, i32 2
  %xy115 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %CTM114, i32 0, i32 1
  store float 0.000000e+00, float* %xy115, align 4, !tbaa !60
  %103 = load %struct.gs_form_template_s*, %struct.gs_form_template_s** %tmplate, align 8, !tbaa !1
  %CTM116 = getelementptr inbounds %struct.gs_form_template_s, %struct.gs_form_template_s* %103, i32 0, i32 2
  %yx117 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %CTM116, i32 0, i32 2
  store float 0.000000e+00, float* %yx117, align 4, !tbaa !61
  %104 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %HWResolution118 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %104, i32 0, i32 22
  %arrayidx119 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution118, i32 0, i64 0
  %105 = load float, float* %arrayidx119, align 4, !tbaa !69
  %div120 = fdiv float %105, 7.200000e+01
  %106 = load %struct.gs_form_template_s*, %struct.gs_form_template_s** %tmplate, align 8, !tbaa !1
  %CTM121 = getelementptr inbounds %struct.gs_form_template_s, %struct.gs_form_template_s* %106, i32 0, i32 2
  %yy122 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %CTM121, i32 0, i32 3
  store float %div120, float* %yy122, align 4, !tbaa !62
  %107 = load %struct.gs_form_template_s*, %struct.gs_form_template_s** %tmplate, align 8, !tbaa !1
  %CTM123 = getelementptr inbounds %struct.gs_form_template_s, %struct.gs_form_template_s* %107, i32 0, i32 2
  %tx124 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %CTM123, i32 0, i32 4
  store float 0.000000e+00, float* %tx124, align 4, !tbaa !63
  %108 = load %struct.gs_form_template_s*, %struct.gs_form_template_s** %tmplate, align 8, !tbaa !1
  %CTM125 = getelementptr inbounds %struct.gs_form_template_s, %struct.gs_form_template_s* %108, i32 0, i32 2
  %ty126 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %CTM125, i32 0, i32 5
  store float 0.000000e+00, float* %ty126, align 4, !tbaa !64
  %109 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd_Resources, align 8, !tbaa !1
  %110 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %substream_Resources = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %110, i32 0, i32 205
  store %struct.cos_dict_s* %109, %struct.cos_dict_s** %substream_Resources, align 8, !tbaa !79
  %111 = load i64, i64* %id, align 8, !tbaa !53
  %112 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %rid = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %112, i32 0, i32 2
  store i64 %111, i64* %rid, align 8, !tbaa !80
  %113 = load i32, i32* %code, align 4, !tbaa !52
  %cmp127 = icmp sge i32 %113, 0
  br i1 %cmp127, label %if.then.129, label %if.end.131

if.then.129:                                      ; preds = %if.end.81
  %114 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %HighLevelForm130 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %114, i32 0, i32 202
  %115 = load i32, i32* %HighLevelForm130, align 4, !tbaa !54
  %inc = add nsw i32 %115, 1
  store i32 %inc, i32* %HighLevelForm130, align 4, !tbaa !54
  br label %if.end.131

if.end.131:                                       ; preds = %if.then.129, %if.end.81
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.131, %if.then.80, %if.then.41, %if.then.33, %if.then.16, %if.then.11, %if.then.7
  %116 = bitcast %struct.cos_dict_s** %pcd_Resources to i8*
  call void @llvm.lifetime.end(i64 8, i8* %116) #1
  %117 = bitcast %struct.cos_dict_s** %pcd to i8*
  call void @llvm.lifetime.end(i64 8, i8* %117) #1
  %118 = bitcast [6 x float]* %arry to i8*
  call void @llvm.lifetime.end(i64 24, i8* %118) #1
  %119 = bitcast %struct.gs_form_template_s** %tmplate to i8*
  call void @llvm.lifetime.end(i64 8, i8* %119) #1
  br label %cleanup.282

if.end.135:                                       ; preds = %land.lhs.true, %sw.bb.1
  %120 = load i32, i32* %code, align 4, !tbaa !52
  store i32 %120, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.282

sw.bb.136:                                        ; preds = %entry
  %121 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %HighLevelForm137 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %121, i32 0, i32 202
  %122 = load i32, i32* %HighLevelForm137, align 4, !tbaa !54
  %cmp138 = icmp eq i32 %122, 1
  br i1 %cmp138, label %land.lhs.true.140, label %if.end.180

land.lhs.true.140:                                ; preds = %sw.bb.136
  %123 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %PatternDepth141 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %123, i32 0, i32 203
  %124 = load i32, i32* %PatternDepth141, align 4, !tbaa !55
  %cmp142 = icmp eq i32 %124, 0
  br i1 %cmp142, label %if.then.144, label %if.end.180

if.then.144:                                      ; preds = %land.lhs.true.140
  %125 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %substream_Resources145 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %125, i32 0, i32 205
  %126 = load %struct.cos_dict_s*, %struct.cos_dict_s** %substream_Resources145, align 8, !tbaa !79
  %127 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %procsets = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %127, i32 0, i32 159
  %128 = load i32, i32* %procsets, align 4, !tbaa !81
  %call146 = call i32 @pdf_add_procsets(%struct.cos_dict_s* %126, i32 %128) #6
  store i32 %call146, i32* %code, align 4, !tbaa !52
  %129 = load i32, i32* %code, align 4, !tbaa !52
  %cmp147 = icmp slt i32 %129, 0
  br i1 %cmp147, label %if.then.149, label %if.end.150

if.then.149:                                      ; preds = %if.then.144
  %130 = load i32, i32* %code, align 4, !tbaa !52
  store i32 %130, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.282

if.end.150:                                       ; preds = %if.then.144
  %131 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %accumulating_substream_resource = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %131, i32 0, i32 210
  %132 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %accumulating_substream_resource, align 8, !tbaa !82
  store %struct.pdf_resource_s* %132, %struct.pdf_resource_s** %pres1, align 8, !tbaa !1
  store %struct.pdf_resource_s* %132, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %133 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %call151 = call i32 @pdf_exit_substream(%struct.gx_device_pdf_s* %133) #6
  store i32 %call151, i32* %code, align 4, !tbaa !52
  %134 = load i32, i32* %code, align 4, !tbaa !52
  %cmp152 = icmp slt i32 %134, 0
  br i1 %cmp152, label %if.then.154, label %if.end.155

if.then.154:                                      ; preds = %if.end.150
  %135 = load i32, i32* %code, align 4, !tbaa !52
  store i32 %135, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.282

if.end.155:                                       ; preds = %if.end.150
  %136 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %call156 = call i32 @pdf_find_same_resource(%struct.gx_device_pdf_s* %136, i32 4, %struct.pdf_resource_s** %pres, i32 (%struct.gx_device_pdf_s*, %struct.pdf_resource_s*, %struct.pdf_resource_s*)* @check_unsubstituted2) #6
  store i32 %call156, i32* %code, align 4, !tbaa !52
  %137 = load i32, i32* %code, align 4, !tbaa !52
  %cmp157 = icmp slt i32 %137, 0
  br i1 %cmp157, label %if.then.159, label %if.end.160

if.then.159:                                      ; preds = %if.end.155
  %138 = load i32, i32* %code, align 4, !tbaa !52
  store i32 %138, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.282

if.end.160:                                       ; preds = %if.end.155
  %139 = load i32, i32* %code, align 4, !tbaa !52
  %cmp161 = icmp sgt i32 %139, 0
  br i1 %cmp161, label %if.then.163, label %if.else

if.then.163:                                      ; preds = %if.end.160
  %140 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %141 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres1, align 8, !tbaa !1
  %call164 = call i32 @pdf_cancel_resource(%struct.gx_device_pdf_s* %140, %struct.pdf_resource_s* %141, i32 4) #6
  store i32 %call164, i32* %code, align 4, !tbaa !52
  %142 = load i32, i32* %code, align 4, !tbaa !52
  %cmp165 = icmp slt i32 %142, 0
  br i1 %cmp165, label %if.then.167, label %if.end.168

if.then.167:                                      ; preds = %if.then.163
  %143 = load i32, i32* %code, align 4, !tbaa !52
  store i32 %143, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.282

if.end.168:                                       ; preds = %if.then.163
  %144 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %used_mask = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %144, i32 0, i32 164
  %145 = load i64, i64* %used_mask, align 8, !tbaa !83
  %146 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %where_used = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %146, i32 0, i32 6
  %147 = load i64, i64* %where_used, align 8, !tbaa !84
  %or = or i64 %147, %145
  store i64 %or, i64* %where_used, align 8, !tbaa !84
  br label %if.end.175

if.else:                                          ; preds = %if.end.160
  %148 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %object169 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %148, i32 0, i32 7
  %149 = load %struct.cos_object_s*, %struct.cos_object_s** %object169, align 8, !tbaa !66
  %id170 = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %149, i32 0, i32 1
  %150 = load i64, i64* %id170, align 8, !tbaa !85
  %cmp171 = icmp slt i64 %150, 0
  br i1 %cmp171, label %if.then.173, label %if.end.174

if.then.173:                                      ; preds = %if.else
  %151 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %152 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  call void @pdf_reserve_object_id(%struct.gx_device_pdf_s* %151, %struct.pdf_resource_s* %152, i64 0) #6
  br label %if.end.174

if.end.174:                                       ; preds = %if.then.173, %if.else
  br label %if.end.175

if.end.175:                                       ; preds = %if.end.174, %if.end.168
  %153 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %strm176 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %153, i32 0, i32 47
  %154 = load %struct.stream_s*, %struct.stream_s** %strm176, align 8, !tbaa !58
  %155 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %call177 = call i64 @pdf_resource_id(%struct.pdf_resource_s* %155) #6
  %call178 = call i8* @pprintld1(%struct.stream_s* %154, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), i64 %call177) #6
  %156 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %HighLevelForm179 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %156, i32 0, i32 202
  %157 = load i32, i32* %HighLevelForm179, align 4, !tbaa !54
  %dec = add nsw i32 %157, -1
  store i32 %dec, i32* %HighLevelForm179, align 4, !tbaa !54
  br label %if.end.180

if.end.180:                                       ; preds = %if.end.175, %land.lhs.true.140, %sw.bb.136
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.282

sw.bb.181:                                        ; preds = %entry
  %158 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %159 = load i64, i64* %id, align 8, !tbaa !53
  %160 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %CompressFonts182 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %160, i32 0, i32 94
  %161 = load i32, i32* %CompressFonts182, align 4, !tbaa !65
  %call183 = call i32 @pdf_enter_substream(%struct.gx_device_pdf_s* %158, i32 2, i64 %159, %struct.pdf_resource_s** %pres, i32 0, i32 %161) #6
  store i32 %call183, i32* %code, align 4, !tbaa !52
  %162 = load i32, i32* %code, align 4, !tbaa !52
  %cmp184 = icmp slt i32 %162, 0
  br i1 %cmp184, label %if.then.186, label %if.end.187

if.then.186:                                      ; preds = %sw.bb.181
  %163 = load i32, i32* %code, align 4, !tbaa !52
  store i32 %163, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.282

if.end.187:                                       ; preds = %sw.bb.181
  %164 = load i64, i64* %id, align 8, !tbaa !53
  %165 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %rid188 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %165, i32 0, i32 2
  store i64 %164, i64* %rid188, align 8, !tbaa !80
  %166 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %167 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %168 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst, align 8, !tbaa !1
  %call189 = call i32 @pdf_store_pattern1_params(%struct.gx_device_pdf_s* %166, %struct.pdf_resource_s* %167, %struct.gs_pattern1_instance_s* %168) #6
  store i32 %call189, i32* %code, align 4, !tbaa !52
  %169 = load i32, i32* %code, align 4, !tbaa !52
  %cmp190 = icmp slt i32 %169, 0
  br i1 %cmp190, label %if.then.192, label %if.end.193

if.then.192:                                      ; preds = %if.end.187
  %170 = load i32, i32* %code, align 4, !tbaa !52
  store i32 %170, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.282

if.end.193:                                       ; preds = %if.end.187
  %171 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %strm194 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %171, i32 0, i32 47
  %172 = load %struct.stream_s*, %struct.stream_s** %strm194, align 8, !tbaa !58
  %173 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %HWResolution195 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %173, i32 0, i32 22
  %arrayidx196 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution195, i32 0, i64 0
  %174 = load float, float* %arrayidx196, align 4, !tbaa !69
  %conv197 = fpext float %174 to double
  %div198 = fdiv double 7.200000e+01, %conv197
  %175 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %HWResolution199 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %175, i32 0, i32 22
  %arrayidx200 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution199, i32 0, i64 1
  %176 = load float, float* %arrayidx200, align 4, !tbaa !69
  %conv201 = fpext float %176 to double
  %div202 = fdiv double 7.200000e+01, %conv201
  %call203 = call i8* @pprintg2(%struct.stream_s* %172, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i32 0, i32 0), double %div198, double %div202) #6
  %177 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %PatternDepth204 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %177, i32 0, i32 203
  %178 = load i32, i32* %PatternDepth204, align 4, !tbaa !55
  %inc205 = add nsw i32 %178, 1
  store i32 %inc205, i32* %PatternDepth204, align 4, !tbaa !55
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.282

sw.bb.206:                                        ; preds = %entry
  %179 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %substream_Resources207 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %179, i32 0, i32 205
  %180 = load %struct.cos_dict_s*, %struct.cos_dict_s** %substream_Resources207, align 8, !tbaa !79
  %181 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %procsets208 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %181, i32 0, i32 159
  %182 = load i32, i32* %procsets208, align 4, !tbaa !81
  %call209 = call i32 @pdf_add_procsets(%struct.cos_dict_s* %180, i32 %182) #6
  store i32 %call209, i32* %code, align 4, !tbaa !52
  %183 = load i32, i32* %code, align 4, !tbaa !52
  %cmp210 = icmp slt i32 %183, 0
  br i1 %cmp210, label %if.then.212, label %if.end.213

if.then.212:                                      ; preds = %sw.bb.206
  %184 = load i32, i32* %code, align 4, !tbaa !52
  store i32 %184, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.282

if.end.213:                                       ; preds = %sw.bb.206
  %185 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %accumulating_substream_resource214 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %185, i32 0, i32 210
  %186 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %accumulating_substream_resource214, align 8, !tbaa !82
  store %struct.pdf_resource_s* %186, %struct.pdf_resource_s** %pres1, align 8, !tbaa !1
  store %struct.pdf_resource_s* %186, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %187 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %call215 = call i32 @pdf_exit_substream(%struct.gx_device_pdf_s* %187) #6
  store i32 %call215, i32* %code, align 4, !tbaa !52
  %188 = load i32, i32* %code, align 4, !tbaa !52
  %cmp216 = icmp slt i32 %188, 0
  br i1 %cmp216, label %if.then.218, label %if.end.219

if.then.218:                                      ; preds = %if.end.213
  %189 = load i32, i32* %code, align 4, !tbaa !52
  store i32 %189, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.282

if.end.219:                                       ; preds = %if.end.213
  %190 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %substituted_pattern_count = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %190, i32 0, i32 218
  %191 = load i32, i32* %substituted_pattern_count, align 4, !tbaa !88
  %cmp220 = icmp sgt i32 %191, 300
  br i1 %cmp220, label %land.lhs.true.222, label %if.end.229

land.lhs.true.222:                                ; preds = %if.end.219
  %192 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %substituted_pattern_drop_page = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %192, i32 0, i32 219
  %193 = load i32, i32* %substituted_pattern_drop_page, align 4, !tbaa !89
  %194 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %next_page = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %194, i32 0, i32 153
  %195 = load i32, i32* %next_page, align 4, !tbaa !90
  %cmp223 = icmp ne i32 %193, %195
  br i1 %cmp223, label %if.then.225, label %if.end.229

if.then.225:                                      ; preds = %land.lhs.true.222
  %196 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  call void @pdf_drop_resources(%struct.gx_device_pdf_s* %196, i32 2, i32 (%struct.gx_device_pdf_s*, %struct.pdf_resource_s*)* @check_unsubstituted1) #6
  %197 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %substituted_pattern_count226 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %197, i32 0, i32 218
  store i32 0, i32* %substituted_pattern_count226, align 4, !tbaa !88
  %198 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %next_page227 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %198, i32 0, i32 153
  %199 = load i32, i32* %next_page227, align 4, !tbaa !90
  %200 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %substituted_pattern_drop_page228 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %200, i32 0, i32 219
  store i32 %199, i32* %substituted_pattern_drop_page228, align 4, !tbaa !89
  br label %if.end.229

if.end.229:                                       ; preds = %if.then.225, %land.lhs.true.222, %if.end.219
  %201 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %call230 = call i32 @pdf_find_same_resource(%struct.gx_device_pdf_s* %201, i32 2, %struct.pdf_resource_s** %pres, i32 (%struct.gx_device_pdf_s*, %struct.pdf_resource_s*, %struct.pdf_resource_s*)* @check_unsubstituted2) #6
  store i32 %call230, i32* %code, align 4, !tbaa !52
  %202 = load i32, i32* %code, align 4, !tbaa !52
  %cmp231 = icmp slt i32 %202, 0
  br i1 %cmp231, label %if.then.233, label %if.end.234

if.then.233:                                      ; preds = %if.end.229
  %203 = load i32, i32* %code, align 4, !tbaa !52
  store i32 %203, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.282

if.end.234:                                       ; preds = %if.end.229
  %204 = load i32, i32* %code, align 4, !tbaa !52
  %cmp235 = icmp sgt i32 %204, 0
  br i1 %cmp235, label %if.then.237, label %if.else.249

if.then.237:                                      ; preds = %if.end.234
  %205 = bitcast %struct.pdf_pattern_s** %ppat to i8*
  call void @llvm.lifetime.start(i64 8, i8* %205) #1
  %206 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres1, align 8, !tbaa !1
  %207 = bitcast %struct.pdf_resource_s* %206 to %struct.pdf_pattern_s*
  store %struct.pdf_pattern_s* %207, %struct.pdf_pattern_s** %ppat, align 8, !tbaa !1
  %208 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %209 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres1, align 8, !tbaa !1
  %call238 = call i32 @pdf_cancel_resource(%struct.gx_device_pdf_s* %208, %struct.pdf_resource_s* %209, i32 2) #6
  store i32 %call238, i32* %code, align 4, !tbaa !52
  %210 = load i32, i32* %code, align 4, !tbaa !52
  %cmp239 = icmp slt i32 %210, 0
  br i1 %cmp239, label %if.then.241, label %if.end.242

if.then.241:                                      ; preds = %if.then.237
  %211 = load i32, i32* %code, align 4, !tbaa !52
  store i32 %211, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.248

if.end.242:                                       ; preds = %if.then.237
  %212 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %213 = bitcast %struct.pdf_resource_s* %212 to %struct.pdf_pattern_s*
  %214 = load %struct.pdf_pattern_s*, %struct.pdf_pattern_s** %ppat, align 8, !tbaa !1
  %substitute = getelementptr inbounds %struct.pdf_pattern_s, %struct.pdf_pattern_s* %214, i32 0, i32 8
  store %struct.pdf_pattern_s* %213, %struct.pdf_pattern_s** %substitute, align 8, !tbaa !50
  %215 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %used_mask243 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %215, i32 0, i32 164
  %216 = load i64, i64* %used_mask243, align 8, !tbaa !83
  %217 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %where_used244 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %217, i32 0, i32 6
  %218 = load i64, i64* %where_used244, align 8, !tbaa !84
  %or245 = or i64 %218, %216
  store i64 %or245, i64* %where_used244, align 8, !tbaa !84
  %219 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %substituted_pattern_count246 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %219, i32 0, i32 218
  %220 = load i32, i32* %substituted_pattern_count246, align 4, !tbaa !88
  %inc247 = add nsw i32 %220, 1
  store i32 %inc247, i32* %substituted_pattern_count246, align 4, !tbaa !88
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.248

cleanup.248:                                      ; preds = %if.end.242, %if.then.241
  %221 = bitcast %struct.pdf_pattern_s** %ppat to i8*
  call void @llvm.lifetime.end(i64 8, i8* %221) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.282 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup.248
  br label %if.end.256

if.else.249:                                      ; preds = %if.end.234
  %222 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %object250 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %222, i32 0, i32 7
  %223 = load %struct.cos_object_s*, %struct.cos_object_s** %object250, align 8, !tbaa !66
  %id251 = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %223, i32 0, i32 1
  %224 = load i64, i64* %id251, align 8, !tbaa !85
  %cmp252 = icmp slt i64 %224, 0
  br i1 %cmp252, label %if.then.254, label %if.end.255

if.then.254:                                      ; preds = %if.else.249
  %225 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %226 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  call void @pdf_reserve_object_id(%struct.gx_device_pdf_s* %225, %struct.pdf_resource_s* %226, i64 0) #6
  br label %if.end.255

if.end.255:                                       ; preds = %if.then.254, %if.else.249
  br label %if.end.256

if.end.256:                                       ; preds = %if.end.255, %cleanup.cont
  %227 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %PatternDepth257 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %227, i32 0, i32 203
  %228 = load i32, i32* %PatternDepth257, align 4, !tbaa !55
  %dec258 = add nsw i32 %228, -1
  store i32 %dec258, i32* %PatternDepth257, align 4, !tbaa !55
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.282

sw.bb.259:                                        ; preds = %entry
  %229 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %230 = load i64, i64* %id, align 8, !tbaa !53
  %call260 = call %struct.pdf_resource_s* @pdf_find_resource_by_gs_id(%struct.gx_device_pdf_s* %229, i32 2, i64 %230) #6
  store %struct.pdf_resource_s* %call260, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %231 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %cmp261 = icmp eq %struct.pdf_resource_s* %231, null
  br i1 %cmp261, label %if.then.263, label %if.end.264

if.then.263:                                      ; preds = %sw.bb.259
  store i32 -21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.282

if.end.264:                                       ; preds = %sw.bb.259
  %232 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %call265 = call %struct.pdf_resource_s* @pdf_substitute_pattern(%struct.pdf_resource_s* %232) #6
  store %struct.pdf_resource_s* %call265, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %233 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %used_mask266 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %233, i32 0, i32 164
  %234 = load i64, i64* %used_mask266, align 8, !tbaa !83
  %235 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %where_used267 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %235, i32 0, i32 6
  %236 = load i64, i64* %where_used267, align 8, !tbaa !84
  %or268 = or i64 %236, %234
  store i64 %or268, i64* %where_used267, align 8, !tbaa !84
  %237 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %238 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %substream_Resources269 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %238, i32 0, i32 205
  %239 = load %struct.cos_dict_s*, %struct.cos_dict_s** %substream_Resources269, align 8, !tbaa !79
  %240 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %call270 = call i32 @pdf_add_resource(%struct.gx_device_pdf_s* %237, %struct.cos_dict_s* %239, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), %struct.pdf_resource_s* %240) #6
  store i32 %call270, i32* %code, align 4, !tbaa !52
  %241 = load i32, i32* %code, align 4, !tbaa !52
  %cmp271 = icmp slt i32 %241, 0
  br i1 %cmp271, label %if.then.273, label %if.end.274

if.then.273:                                      ; preds = %if.end.264
  %242 = load i32, i32* %code, align 4, !tbaa !52
  store i32 %242, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.282

if.end.274:                                       ; preds = %if.end.264
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.282

sw.bb.275:                                        ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.282

sw.bb.276:                                        ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.282

sw.bb.277:                                        ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.282

sw.bb.278:                                        ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.282

sw.bb.279:                                        ; preds = %entry
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.282

sw.bb.280:                                        ; preds = %entry
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.282

sw.epilog:                                        ; preds = %entry
  %243 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev1.addr, align 8, !tbaa !1
  %244 = load i32, i32* %dev_spec_op.addr, align 4, !tbaa !52
  %245 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %246 = load i32, i32* %size.addr, align 4, !tbaa !52
  %call281 = call i32 @gx_default_dev_spec_op(%struct.gx_device_s* %243, i32 %244, i8* %245, i32 %246) #6
  store i32 %call281, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.282

cleanup.282:                                      ; preds = %sw.epilog, %sw.bb.280, %sw.bb.279, %sw.bb.278, %sw.bb.277, %sw.bb.276, %sw.bb.275, %if.end.274, %if.then.273, %if.then.263, %if.end.256, %cleanup.248, %if.then.233, %if.then.218, %if.then.212, %if.end.193, %if.then.192, %if.then.186, %if.end.180, %if.then.167, %if.then.159, %if.then.154, %if.then.149, %if.end.135, %cleanup, %sw.bb
  %247 = bitcast %struct.gs_pattern1_instance_s** %pinst to i8*
  call void @llvm.lifetime.end(i64 8, i8* %247) #1
  %248 = bitcast i64* %id to i8*
  call void @llvm.lifetime.end(i64 8, i8* %248) #1
  %249 = bitcast %struct.pdf_resource_s** %pres1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %249) #1
  %250 = bitcast %struct.pdf_resource_s** %pres to i8*
  call void @llvm.lifetime.end(i64 8, i8* %250) #1
  %251 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %251) #1
  %252 = bitcast %struct.gx_device_pdf_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %252) #1
  %253 = load i32, i32* %retval
  ret i32 %253
}

declare i32 @pdfwrite_pdf_open_document(%struct.gx_device_pdf_s*) #2

declare i32 @pdf_open_contents(%struct.gx_device_pdf_s*, i32) #2

declare i32 @pdf_put_clip_path(%struct.gx_device_pdf_s*, %struct.gx_clip_path_s*) #2

declare i8* @pprintg6(%struct.stream_s*, i8*, double, double, double, double, double, double) #2

declare i32 @pdf_enter_substream(%struct.gx_device_pdf_s*, i32, i64, %struct.pdf_resource_s**, i32, i32) #2

declare %struct.cos_dict_s* @cos_stream_dict(%struct.cos_stream_s*) #2

declare %struct.cos_dict_s* @cos_dict_alloc(%struct.gx_device_pdf_s*, i8*) #2

declare i32 @cos_dict_put_c_strings(%struct.cos_dict_s*, i8*, i8*) #2

declare i32 @cos_dict_put_c_key_object(%struct.cos_dict_s*, i8*, %struct.cos_object_s*) #2

declare i32 @cos_dict_put_c_key_floats(%struct.cos_dict_s*, i8*, float*, i32) #2

declare i8* @pprintg2(%struct.stream_s*, i8*, double, double) #2

declare i32 @pdf_add_procsets(%struct.cos_dict_s*, i32) #2

declare i32 @pdf_exit_substream(%struct.gx_device_pdf_s*) #2

declare i32 @pdf_find_same_resource(%struct.gx_device_pdf_s*, i32, %struct.pdf_resource_s**, i32 (%struct.gx_device_pdf_s*, %struct.pdf_resource_s*, %struct.pdf_resource_s*)*) #2

; Function Attrs: nounwind uwtable
define internal i32 @check_unsubstituted2(%struct.gx_device_pdf_s* %pdev, %struct.pdf_resource_s* %pres0, %struct.pdf_resource_s* %pres1) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pres0.addr = alloca %struct.pdf_resource_s*, align 8
  %pres1.addr = alloca %struct.pdf_resource_s*, align 8
  %ppat0 = alloca %struct.pdf_pattern_s*, align 8
  %ppat1 = alloca %struct.pdf_pattern_s*, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.pdf_resource_s* %pres0, %struct.pdf_resource_s** %pres0.addr, align 8, !tbaa !1
  store %struct.pdf_resource_s* %pres1, %struct.pdf_resource_s** %pres1.addr, align 8, !tbaa !1
  %0 = bitcast %struct.pdf_pattern_s** %ppat0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres0.addr, align 8, !tbaa !1
  %2 = bitcast %struct.pdf_resource_s* %1 to %struct.pdf_pattern_s*
  store %struct.pdf_pattern_s* %2, %struct.pdf_pattern_s** %ppat0, align 8, !tbaa !1
  %3 = bitcast %struct.pdf_pattern_s** %ppat1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres1.addr, align 8, !tbaa !1
  %5 = bitcast %struct.pdf_resource_s* %4 to %struct.pdf_pattern_s*
  store %struct.pdf_pattern_s* %5, %struct.pdf_pattern_s** %ppat1, align 8, !tbaa !1
  %6 = load %struct.pdf_pattern_s*, %struct.pdf_pattern_s** %ppat0, align 8, !tbaa !1
  %substitute = getelementptr inbounds %struct.pdf_pattern_s, %struct.pdf_pattern_s* %6, i32 0, i32 8
  %7 = load %struct.pdf_pattern_s*, %struct.pdf_pattern_s** %substitute, align 8, !tbaa !50
  %cmp = icmp eq %struct.pdf_pattern_s* %7, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %8 = load %struct.pdf_pattern_s*, %struct.pdf_pattern_s** %ppat1, align 8, !tbaa !1
  %substitute1 = getelementptr inbounds %struct.pdf_pattern_s, %struct.pdf_pattern_s* %8, i32 0, i32 8
  %9 = load %struct.pdf_pattern_s*, %struct.pdf_pattern_s** %substitute1, align 8, !tbaa !50
  %cmp2 = icmp eq %struct.pdf_pattern_s* %9, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %10 = phi i1 [ false, %entry ], [ %cmp2, %land.rhs ]
  %land.ext = zext i1 %10 to i32
  %11 = bitcast %struct.pdf_pattern_s** %ppat1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #1
  %12 = bitcast %struct.pdf_pattern_s** %ppat0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #1
  ret i32 %land.ext
}

declare i32 @pdf_cancel_resource(%struct.gx_device_pdf_s*, %struct.pdf_resource_s*, i32) #2

declare void @pdf_reserve_object_id(%struct.gx_device_pdf_s*, %struct.pdf_resource_s*, i64) #2

declare i8* @pprintld1(%struct.stream_s*, i8*, i64) #2

declare i64 @pdf_resource_id(%struct.pdf_resource_s*) #2

declare i32 @pdf_store_pattern1_params(%struct.gx_device_pdf_s*, %struct.pdf_resource_s*, %struct.gs_pattern1_instance_s*) #2

declare void @pdf_drop_resources(%struct.gx_device_pdf_s*, i32, i32 (%struct.gx_device_pdf_s*, %struct.pdf_resource_s*)*) #2

; Function Attrs: nounwind uwtable
define internal i32 @check_unsubstituted1(%struct.gx_device_pdf_s* %pdev, %struct.pdf_resource_s* %pres0) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pres0.addr = alloca %struct.pdf_resource_s*, align 8
  %ppat = alloca %struct.pdf_pattern_s*, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.pdf_resource_s* %pres0, %struct.pdf_resource_s** %pres0.addr, align 8, !tbaa !1
  %0 = bitcast %struct.pdf_pattern_s** %ppat to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres0.addr, align 8, !tbaa !1
  %2 = bitcast %struct.pdf_resource_s* %1 to %struct.pdf_pattern_s*
  store %struct.pdf_pattern_s* %2, %struct.pdf_pattern_s** %ppat, align 8, !tbaa !1
  %3 = load %struct.pdf_pattern_s*, %struct.pdf_pattern_s** %ppat, align 8, !tbaa !1
  %substitute = getelementptr inbounds %struct.pdf_pattern_s, %struct.pdf_pattern_s* %3, i32 0, i32 8
  %4 = load %struct.pdf_pattern_s*, %struct.pdf_pattern_s** %substitute, align 8, !tbaa !50
  %cmp = icmp ne %struct.pdf_pattern_s* %4, null
  %conv = zext i1 %cmp to i32
  %5 = bitcast %struct.pdf_pattern_s** %ppat to i8*
  call void @llvm.lifetime.end(i64 8, i8* %5) #1
  ret i32 %conv
}

declare %struct.pdf_resource_s* @pdf_find_resource_by_gs_id(%struct.gx_device_pdf_s*, i32, i64) #2

declare i32 @pdf_add_resource(%struct.gx_device_pdf_s*, %struct.cos_dict_s*, i8*, %struct.pdf_resource_s*) #2

declare i32 @gx_default_dev_spec_op(%struct.gx_device_s*, i32, i8*, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @new_pdf_begin_typed_image(%struct.gx_device_pdf_s* %pdev, %struct.gs_imager_state_s* %pis, %struct.gs_matrix_s* %pmat, %struct.gs_image_common_s* %pic, %struct.gs_int_rect_s* %prect, %struct.gx_device_color_s* %pdcolor, %struct.gx_clip_path_s* %pcpath, %struct.gs_memory_s* %mem, %struct.gx_image_enum_common_s** %pinfo, i32 %context) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %pic.addr = alloca %struct.gs_image_common_s*, align 8
  %prect.addr = alloca %struct.gs_int_rect_s*, align 8
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pinfo.addr = alloca %struct.gx_image_enum_common_s**, align 8
  %context.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %i = alloca i32, align 4
  %use_fallback = alloca i32, align 4
  %in_line = alloca i32, align 4
  %is_mask = alloca i32, align 4
  %force_lossless = alloca i32, align 4
  %convert_to_process_colors = alloca i32, align 4
  %reduce_bits = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %pnamed = alloca %struct.cos_dict_s*, align 8
  %image = alloca %union.image_union_s*, align 8
  %pim = alloca %struct.gs_pixel_image_s*, align 8
  %rect = alloca %struct.gs_int_rect_s, align 4
  %format = alloca i32, align 4
  %pcs = alloca %struct.gs_color_space_s*, align 8
  %num_components = alloca i32, align 4
  %pie = alloca %struct.pdf_image_enum_s*, align 8
  %names = alloca %struct.pdf_color_space_names_s*, align 8
  %pcs_orig = alloca %struct.gs_color_space_s*, align 8
  %pcs_device = alloca %struct.gs_color_space_s*, align 8
  %cs_value = alloca %struct.cos_value_s, align 8
  %pranges = alloca %struct.gs_range_s*, align 8
  %cleanup.dest.slot = alloca i32
  %ni_value = alloca %struct.cos_value_s, align 8
  %sbox = alloca %struct.gs_rect_s, align 8
  %dbox = alloca %struct.gs_rect_s, align 8
  %Box = alloca %struct.gs_rect_s*, align 8
  %corners = alloca [4 x %struct.gs_point_s], align 16
  %ibox = alloca %struct.gs_fixed_rect_s, align 4
  %pmat1 = alloca %struct.gs_matrix_s*, align 8
  %mat = alloca %struct.gs_matrix_s, align 4
  %cdev = alloca %struct.gx_device_clip_s, align 8
  %devc = alloca %struct.gx_device_color_s, align 8
  %x0 = alloca i32, align 4
  %y0 = alloca i32, align 4
  %bx2 = alloca i32, align 4
  %by2 = alloca i32, align 4
  %x0281 = alloca float, align 4
  %y0282 = alloca float, align 4
  %x1 = alloca float, align 4
  %y1 = alloca float, align 4
  %nbytes = alloca double, align 8
  %mat500 = alloca %struct.gs_matrix_s, align 4
  %bmat = alloca %struct.gs_matrix_s, align 4
  %code501 = alloca i32, align 4
  %saved_downsample = alloca i32, align 4
  %s = alloca %struct.stream_s*, align 8
  %pcos = alloca %struct.cos_stream_s*, align 8
  %i872 = alloca i32, align 4
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  store %struct.gs_image_common_s* %pic, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  store %struct.gs_int_rect_s* %prect, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gx_image_enum_common_s** %pinfo, %struct.gx_image_enum_common_s*** %pinfo.addr, align 8, !tbaa !1
  store i32 %context, i32* %context.addr, align 4, !tbaa !5
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %use_fallback to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 0, i32* %use_fallback, align 4, !tbaa !52
  %3 = bitcast i32* %in_line to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %in_line, align 4, !tbaa !52
  %4 = bitcast i32* %is_mask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 0, i32* %is_mask, align 4, !tbaa !52
  %5 = bitcast i32* %force_lossless to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 0, i32* %force_lossless, align 4, !tbaa !52
  %6 = bitcast i32* %convert_to_process_colors to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i32 0, i32* %convert_to_process_colors, align 4, !tbaa !52
  %7 = bitcast i32* %reduce_bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 0, i32* %reduce_bits, align 4, !tbaa !52
  %8 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast %struct.cos_dict_s** %pnamed to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store %struct.cos_dict_s* null, %struct.cos_dict_s** %pnamed, align 8, !tbaa !1
  %11 = bitcast %union.image_union_s** %image to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = bitcast %struct.gs_pixel_image_s** %pim to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = bitcast %struct.gs_int_rect_s* %rect to i8*
  call void @llvm.lifetime.start(i64 16, i8* %13) #1
  %14 = bitcast i32* %format to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = bitcast i32* %num_components to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = bitcast %struct.pdf_image_enum_s** %pie to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  %18 = bitcast %struct.pdf_color_space_names_s** %names to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  %19 = bitcast %struct.gs_color_space_s** %pcs_orig to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  store %struct.gs_color_space_s* null, %struct.gs_color_space_s** %pcs_orig, align 8, !tbaa !1
  %20 = bitcast %struct.gs_color_space_s** %pcs_device to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  store %struct.gs_color_space_s* null, %struct.gs_color_space_s** %pcs_device, align 8, !tbaa !1
  %21 = bitcast %struct.cos_value_s* %cs_value to i8*
  call void @llvm.lifetime.start(i64 24, i8* %21) #1
  %22 = bitcast %struct.gs_range_s** %pranges to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #1
  store %struct.gs_range_s* null, %struct.gs_range_s** %pranges, align 8, !tbaa !1
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %23, i32 0, i32 3
  %24 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !91
  %non_gc_memory1 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %24, i32 0, i32 3
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory1, align 8, !tbaa !91
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %25, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %26 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !94
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %non_gc_memory2 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %27, i32 0, i32 3
  %28 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory2, align 8, !tbaa !91
  %non_gc_memory3 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %28, i32 0, i32 3
  %29 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory3, align 8, !tbaa !91
  %call = call i8* %26(%struct.gs_memory_s* %29, i32 4, i32 2248, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i32 0, i32 0)) #6
  %30 = bitcast i8* %call to %union.image_union_s*
  store %union.image_union_s* %30, %union.image_union_s** %image, align 8, !tbaa !1
  %31 = load %union.image_union_s*, %union.image_union_s** %image, align 8, !tbaa !1
  %cmp = icmp eq %union.image_union_s* %31, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.950

if.end:                                           ; preds = %entry
  %32 = bitcast %struct.cos_value_s* %ni_value to i8*
  call void @llvm.lifetime.start(i64 24, i8* %32) #1
  %33 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %NI_stack = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %33, i32 0, i32 183
  %34 = load %struct.cos_array_s*, %struct.cos_array_s** %NI_stack, align 8, !tbaa !95
  %call4 = call i32 @cos_array_unadd(%struct.cos_array_s* %34, %struct.cos_value_s* %ni_value) #6
  %cmp5 = icmp sge i32 %call4, 0
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  %contents = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %ni_value, i32 0, i32 1
  %object = bitcast %union.vc_* %contents to %struct.cos_object_s**
  %35 = load %struct.cos_object_s*, %struct.cos_object_s** %object, align 8, !tbaa !1
  %36 = bitcast %struct.cos_object_s* %35 to %struct.cos_dict_s*
  store %struct.cos_dict_s* %36, %struct.cos_dict_s** %pnamed, align 8, !tbaa !1
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end
  %37 = bitcast %struct.cos_value_s* %ni_value to i8*
  call void @llvm.lifetime.end(i64 24, i8* %37) #1
  %38 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %image_mask_id = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %38, i32 0, i32 220
  store i64 0, i64* %image_mask_id, align 8, !tbaa !96
  %39 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_image_common_s, %struct.gs_image_common_s* %39, i32 0, i32 0
  %40 = load %struct.gx_image_type_s*, %struct.gx_image_type_s** %type, align 8, !tbaa !97
  %index = getelementptr inbounds %struct.gx_image_type_s, %struct.gx_image_type_s* %40, i32 0, i32 6
  %41 = load i32, i32* %index, align 4, !tbaa !99
  switch i32 %41, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb.12
    i32 103, label %sw.bb.40
    i32 4, label %sw.bb.74
  ]

sw.bb:                                            ; preds = %if.end.7
  %42 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %43 = bitcast %struct.gs_image_common_s* %42 to %struct.gs_image1_s*
  %ImageMask = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %43, i32 0, i32 10
  %44 = load i32, i32* %ImageMask, align 4, !tbaa !101
  store i32 %44, i32* %is_mask, align 4, !tbaa !52
  %45 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %46 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %47 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %48 = load %union.image_union_s*, %union.image_union_s** %image, align 8, !tbaa !1
  %49 = load i32, i32* %context.addr, align 4, !tbaa !5
  %call8 = call i32 @setup_type1_image(%struct.gx_device_pdf_s* %45, %struct.gs_image_common_s* %46, %struct.gx_device_color_s* %47, %union.image_union_s* %48, i32 %49) #6
  store i32 %call8, i32* %code, align 4, !tbaa !52
  %50 = load i32, i32* %code, align 4, !tbaa !52
  %cmp9 = icmp slt i32 %50, 0
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %sw.bb
  store i32 1, i32* %use_fallback, align 4, !tbaa !52
  br label %if.end.11

if.else:                                          ; preds = %sw.bb
  %51 = load i32, i32* %code, align 4, !tbaa !52
  store i32 %51, i32* %in_line, align 4, !tbaa !52
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.10
  br label %sw.epilog

sw.bb.12:                                         ; preds = %if.end.7
  %52 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %image_mask_is_SMask = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %52, i32 0, i32 221
  store i32 0, i32* %image_mask_is_SMask, align 4, !tbaa !103
  %53 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %CompatibilityLevel = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %53, i32 0, i32 75
  %54 = load double, double* %CompatibilityLevel, align 8, !tbaa !104
  %cmp13 = fcmp olt double %54, 1.200000e+00
  br i1 %cmp13, label %if.then.25, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.12
  %55 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.gs_int_rect_s* %55, null
  br i1 %tobool, label %land.lhs.true, label %if.end.32

land.lhs.true:                                    ; preds = %lor.lhs.false
  %56 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %56, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p, i32 0, i32 0
  %57 = load i32, i32* %x, align 4, !tbaa !105
  %cmp14 = icmp eq i32 %57, 0
  br i1 %cmp14, label %land.lhs.true.15, label %if.then.25

land.lhs.true.15:                                 ; preds = %land.lhs.true
  %58 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %p16 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %58, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p16, i32 0, i32 1
  %59 = load i32, i32* %y, align 4, !tbaa !107
  %cmp17 = icmp eq i32 %59, 0
  br i1 %cmp17, label %land.lhs.true.18, label %if.then.25

land.lhs.true.18:                                 ; preds = %land.lhs.true.15
  %60 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %q = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %60, i32 0, i32 1
  %x19 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q, i32 0, i32 0
  %61 = load i32, i32* %x19, align 4, !tbaa !108
  %62 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %63 = bitcast %struct.gs_image_common_s* %62 to %struct.gs_image3_s*
  %Width = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %63, i32 0, i32 2
  %64 = load i32, i32* %Width, align 4, !tbaa !109
  %cmp20 = icmp eq i32 %61, %64
  br i1 %cmp20, label %land.lhs.true.21, label %if.then.25

land.lhs.true.21:                                 ; preds = %land.lhs.true.18
  %65 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %q22 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %65, i32 0, i32 1
  %y23 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q22, i32 0, i32 1
  %66 = load i32, i32* %y23, align 4, !tbaa !112
  %67 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %68 = bitcast %struct.gs_image_common_s* %67 to %struct.gs_image3_s*
  %Height = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %68, i32 0, i32 3
  %69 = load i32, i32* %Height, align 4, !tbaa !113
  %cmp24 = icmp eq i32 %66, %69
  br i1 %cmp24, label %if.end.32, label %if.then.25

if.then.25:                                       ; preds = %land.lhs.true.21, %land.lhs.true.18, %land.lhs.true.15, %land.lhs.true, %sw.bb.12
  %70 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %non_gc_memory26 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %70, i32 0, i32 3
  %71 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory26, align 8, !tbaa !91
  %non_gc_memory27 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %71, i32 0, i32 3
  %72 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory27, align 8, !tbaa !91
  %procs28 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %72, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs28, i32 0, i32 2
  %73 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !114
  %74 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %non_gc_memory29 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %74, i32 0, i32 3
  %75 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory29, align 8, !tbaa !91
  %non_gc_memory30 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %75, i32 0, i32 3
  %76 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory30, align 8, !tbaa !91
  %77 = load %union.image_union_s*, %union.image_union_s** %image, align 8, !tbaa !1
  %78 = bitcast %union.image_union_s* %77 to i8*
  call void %73(%struct.gs_memory_s* %76, i8* %78, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i32 0, i32 0)) #6
  %79 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %80 = bitcast %struct.gx_device_pdf_s* %79 to %struct.gx_device_s*
  %81 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %82 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %83 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %84 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %85 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %86 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %87 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %88 = load %struct.gx_image_enum_common_s**, %struct.gx_image_enum_common_s*** %pinfo.addr, align 8, !tbaa !1
  %call31 = call i32 @gx_default_begin_typed_image(%struct.gx_device_s* %80, %struct.gs_imager_state_s* %81, %struct.gs_matrix_s* %82, %struct.gs_image_common_s* %83, %struct.gs_int_rect_s* %84, %struct.gx_device_color_s* %85, %struct.gx_clip_path_s* %86, %struct.gs_memory_s* %87, %struct.gx_image_enum_common_s** %88) #6
  store i32 %call31, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.950

if.end.32:                                        ; preds = %land.lhs.true.21, %lor.lhs.false
  %89 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %non_gc_memory33 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %89, i32 0, i32 3
  %90 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory33, align 8, !tbaa !91
  %non_gc_memory34 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %90, i32 0, i32 3
  %91 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory34, align 8, !tbaa !91
  %procs35 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %91, i32 0, i32 1
  %free_object36 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs35, i32 0, i32 2
  %92 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object36, align 8, !tbaa !114
  %93 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %non_gc_memory37 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %93, i32 0, i32 3
  %94 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory37, align 8, !tbaa !91
  %non_gc_memory38 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %94, i32 0, i32 3
  %95 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory38, align 8, !tbaa !91
  %96 = load %union.image_union_s*, %union.image_union_s** %image, align 8, !tbaa !1
  %97 = bitcast %union.image_union_s* %96 to i8*
  call void %92(%struct.gs_memory_s* %95, i8* %97, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i32 0, i32 0)) #6
  %98 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %99 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %100 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %101 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %102 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %103 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %104 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %105 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %106 = load %struct.gx_image_enum_common_s**, %struct.gx_image_enum_common_s*** %pinfo.addr, align 8, !tbaa !1
  %107 = load %union.image_union_s*, %union.image_union_s** %image, align 8, !tbaa !1
  %call39 = call i32 @setup_type3_image(%struct.gx_device_pdf_s* %98, %struct.gs_imager_state_s* %99, %struct.gs_matrix_s* %100, %struct.gs_image_common_s* %101, %struct.gs_int_rect_s* %102, %struct.gx_device_color_s* %103, %struct.gx_clip_path_s* %104, %struct.gs_memory_s* %105, %struct.gx_image_enum_common_s** %106, %union.image_union_s* %107) #6
  store i32 %call39, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.950

sw.bb.40:                                         ; preds = %if.end.7
  %108 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %non_gc_memory41 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %108, i32 0, i32 3
  %109 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory41, align 8, !tbaa !91
  %non_gc_memory42 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %109, i32 0, i32 3
  %110 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory42, align 8, !tbaa !91
  %procs43 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %110, i32 0, i32 1
  %free_object44 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs43, i32 0, i32 2
  %111 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object44, align 8, !tbaa !114
  %112 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %non_gc_memory45 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %112, i32 0, i32 3
  %113 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory45, align 8, !tbaa !91
  %non_gc_memory46 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %113, i32 0, i32 3
  %114 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory46, align 8, !tbaa !91
  %115 = load %union.image_union_s*, %union.image_union_s** %image, align 8, !tbaa !1
  %116 = bitcast %union.image_union_s* %115 to i8*
  call void %111(%struct.gs_memory_s* %114, i8* %116, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i32 0, i32 0)) #6
  %117 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %CompatibilityLevel47 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %117, i32 0, i32 75
  %118 = load double, double* %CompatibilityLevel47, align 8, !tbaa !104
  %cmp48 = fcmp olt double %118, 1.400000e+00
  br i1 %cmp48, label %if.then.69, label %lor.lhs.false.49

lor.lhs.false.49:                                 ; preds = %sw.bb.40
  %119 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %tobool50 = icmp ne %struct.gs_int_rect_s* %119, null
  br i1 %tobool50, label %land.lhs.true.51, label %if.end.71

land.lhs.true.51:                                 ; preds = %lor.lhs.false.49
  %120 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %p52 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %120, i32 0, i32 0
  %x53 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p52, i32 0, i32 0
  %121 = load i32, i32* %x53, align 4, !tbaa !105
  %cmp54 = icmp eq i32 %121, 0
  br i1 %cmp54, label %land.lhs.true.55, label %if.then.69

land.lhs.true.55:                                 ; preds = %land.lhs.true.51
  %122 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %p56 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %122, i32 0, i32 0
  %y57 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p56, i32 0, i32 1
  %123 = load i32, i32* %y57, align 4, !tbaa !107
  %cmp58 = icmp eq i32 %123, 0
  br i1 %cmp58, label %land.lhs.true.59, label %if.then.69

land.lhs.true.59:                                 ; preds = %land.lhs.true.55
  %124 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %q60 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %124, i32 0, i32 1
  %x61 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q60, i32 0, i32 0
  %125 = load i32, i32* %x61, align 4, !tbaa !108
  %126 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %127 = bitcast %struct.gs_image_common_s* %126 to %struct.gs_image3x_s*
  %Width62 = getelementptr inbounds %struct.gs_image3x_s, %struct.gs_image3x_s* %127, i32 0, i32 2
  %128 = load i32, i32* %Width62, align 4, !tbaa !115
  %cmp63 = icmp eq i32 %125, %128
  br i1 %cmp63, label %land.lhs.true.64, label %if.then.69

land.lhs.true.64:                                 ; preds = %land.lhs.true.59
  %129 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %q65 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %129, i32 0, i32 1
  %y66 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q65, i32 0, i32 1
  %130 = load i32, i32* %y66, align 4, !tbaa !112
  %131 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %132 = bitcast %struct.gs_image_common_s* %131 to %struct.gs_image3x_s*
  %Height67 = getelementptr inbounds %struct.gs_image3x_s, %struct.gs_image3x_s* %132, i32 0, i32 3
  %133 = load i32, i32* %Height67, align 4, !tbaa !118
  %cmp68 = icmp eq i32 %130, %133
  br i1 %cmp68, label %if.end.71, label %if.then.69

if.then.69:                                       ; preds = %land.lhs.true.64, %land.lhs.true.59, %land.lhs.true.55, %land.lhs.true.51, %sw.bb.40
  %134 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %135 = bitcast %struct.gx_device_pdf_s* %134 to %struct.gx_device_s*
  %136 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %137 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %138 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %139 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %140 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %141 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %142 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %143 = load %struct.gx_image_enum_common_s**, %struct.gx_image_enum_common_s*** %pinfo.addr, align 8, !tbaa !1
  %call70 = call i32 @gx_default_begin_typed_image(%struct.gx_device_s* %135, %struct.gs_imager_state_s* %136, %struct.gs_matrix_s* %137, %struct.gs_image_common_s* %138, %struct.gs_int_rect_s* %139, %struct.gx_device_color_s* %140, %struct.gx_clip_path_s* %141, %struct.gs_memory_s* %142, %struct.gx_image_enum_common_s** %143) #6
  store i32 %call70, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.950

if.end.71:                                        ; preds = %land.lhs.true.64, %lor.lhs.false.49
  %144 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %image_mask_is_SMask72 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %144, i32 0, i32 221
  store i32 1, i32* %image_mask_is_SMask72, align 4, !tbaa !103
  %145 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %146 = bitcast %struct.gx_device_pdf_s* %145 to %struct.gx_device_s*
  %147 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %148 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %149 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %150 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %151 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %152 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %153 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %154 = load %struct.gx_image_enum_common_s**, %struct.gx_image_enum_common_s*** %pinfo.addr, align 8, !tbaa !1
  %call73 = call i32 @gx_begin_image3x_generic(%struct.gx_device_s* %146, %struct.gs_imager_state_s* %147, %struct.gs_matrix_s* %148, %struct.gs_image_common_s* %149, %struct.gs_int_rect_s* %150, %struct.gx_device_color_s* %151, %struct.gx_clip_path_s* %152, %struct.gs_memory_s* %153, i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, i32, i32, %struct.gs_memory_s*)* @pdf_image3x_make_mid, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**, %struct.gx_device_s**, %struct.gx_device_s**, %struct.gx_image_enum_common_s**, %struct.gs_int_point_s*, %struct.gs_image3x_s*)* @pdf_image3x_make_mcde, %struct.gx_image_enum_common_s** %154) #6
  store i32 %call73, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.950

sw.bb.74:                                         ; preds = %if.end.7
  %155 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %156 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %157 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %158 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %159 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %160 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %161 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %162 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %163 = load %struct.gx_image_enum_common_s**, %struct.gx_image_enum_common_s*** %pinfo.addr, align 8, !tbaa !1
  %164 = load i32, i32* %context.addr, align 4, !tbaa !5
  %165 = load %union.image_union_s*, %union.image_union_s** %image, align 8, !tbaa !1
  %166 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pnamed, align 8, !tbaa !1
  %call75 = call i32 @convert_type4_image(%struct.gx_device_pdf_s* %155, %struct.gs_imager_state_s* %156, %struct.gs_matrix_s* %157, %struct.gs_image_common_s* %158, %struct.gs_int_rect_s* %159, %struct.gx_device_color_s* %160, %struct.gx_clip_path_s* %161, %struct.gs_memory_s* %162, %struct.gx_image_enum_common_s** %163, i32 %164, %union.image_union_s* %165, %struct.cos_dict_s* %166) #6
  store i32 %call75, i32* %code, align 4, !tbaa !52
  %167 = load i32, i32* %code, align 4, !tbaa !52
  %cmp76 = icmp slt i32 %167, 0
  br i1 %cmp76, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %sw.bb.74
  store i32 1, i32* %use_fallback, align 4, !tbaa !52
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.77, %sw.bb.74
  %168 = load i32, i32* %code, align 4, !tbaa !52
  %cmp79 = icmp eq i32 %168, 0
  br i1 %cmp79, label %if.then.80, label %if.end.87

if.then.80:                                       ; preds = %if.end.78
  %169 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %non_gc_memory81 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %169, i32 0, i32 3
  %170 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory81, align 8, !tbaa !91
  %non_gc_memory82 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %170, i32 0, i32 3
  %171 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory82, align 8, !tbaa !91
  %procs83 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %171, i32 0, i32 1
  %free_object84 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs83, i32 0, i32 2
  %172 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object84, align 8, !tbaa !114
  %173 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %non_gc_memory85 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %173, i32 0, i32 3
  %174 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory85, align 8, !tbaa !91
  %non_gc_memory86 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %174, i32 0, i32 3
  %175 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory86, align 8, !tbaa !91
  %176 = load %union.image_union_s*, %union.image_union_s** %image, align 8, !tbaa !1
  %177 = bitcast %union.image_union_s* %176 to i8*
  call void %172(%struct.gs_memory_s* %175, i8* %177, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i32 0, i32 0)) #6
  %178 = load i32, i32* %code, align 4, !tbaa !52
  store i32 %178, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.950

if.end.87:                                        ; preds = %if.end.78
  %179 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %CompatibilityLevel88 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %179, i32 0, i32 75
  %180 = load double, double* %CompatibilityLevel88, align 8, !tbaa !104
  %cmp89 = fcmp olt double %180, 1.200000e+00
  br i1 %cmp89, label %if.then.90, label %if.end.91

if.then.90:                                       ; preds = %if.end.87
  store i32 1, i32* %use_fallback, align 4, !tbaa !52
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.90, %if.end.87
  %181 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %CompatibilityLevel92 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %181, i32 0, i32 75
  %182 = load double, double* %CompatibilityLevel92, align 8, !tbaa !104
  %cmp93 = fcmp olt double %182, 1.300000e+00
  br i1 %cmp93, label %land.lhs.true.94, label %if.end.104

land.lhs.true.94:                                 ; preds = %if.end.91
  %183 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PatternImagemask = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %183, i32 0, i32 107
  %184 = load i32, i32* %PatternImagemask, align 4, !tbaa !119
  %tobool95 = icmp ne i32 %184, 0
  br i1 %tobool95, label %if.end.104, label %if.then.96

if.then.96:                                       ; preds = %land.lhs.true.94
  %185 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %non_gc_memory97 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %185, i32 0, i32 3
  %186 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory97, align 8, !tbaa !91
  %non_gc_memory98 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %186, i32 0, i32 3
  %187 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory98, align 8, !tbaa !91
  %procs99 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %187, i32 0, i32 1
  %free_object100 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs99, i32 0, i32 2
  %188 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object100, align 8, !tbaa !114
  %189 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %non_gc_memory101 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %189, i32 0, i32 3
  %190 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory101, align 8, !tbaa !91
  %non_gc_memory102 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %190, i32 0, i32 3
  %191 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory102, align 8, !tbaa !91
  %192 = load %union.image_union_s*, %union.image_union_s** %image, align 8, !tbaa !1
  %193 = bitcast %union.image_union_s* %192 to i8*
  call void %188(%struct.gs_memory_s* %191, i8* %193, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i32 0, i32 0)) #6
  %194 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %195 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %196 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %197 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %198 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %199 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %200 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %201 = load %struct.gx_image_enum_common_s**, %struct.gx_image_enum_common_s*** %pinfo.addr, align 8, !tbaa !1
  %call103 = call i32 @convert_type4_to_masked_image(%struct.gx_device_pdf_s* %194, %struct.gs_imager_state_s* %195, %struct.gs_image_common_s* %196, %struct.gs_int_rect_s* %197, %struct.gx_device_color_s* %198, %struct.gx_clip_path_s* %199, %struct.gs_memory_s* %200, %struct.gx_image_enum_common_s** %201) #6
  store i32 %call103, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.950

if.end.104:                                       ; preds = %land.lhs.true.94, %if.end.91
  %202 = load %union.image_union_s*, %union.image_union_s** %image, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %union.image_union_s, %union.image_union_s* %202, i64 0
  %type4 = bitcast %union.image_union_s* %arrayidx to %struct.gs_image4_s*
  %203 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %204 = bitcast %struct.gs_image_common_s* %203 to %struct.gs_image4_s*
  %205 = bitcast %struct.gs_image4_s* %type4 to i8*
  %206 = bitcast %struct.gs_image4_s* %204 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %205, i8* %206, i64 1112, i32 8, i1 false), !tbaa.struct !120
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.7
  store i32 1, i32* %use_fallback, align 4, !tbaa !52
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.104, %if.end.11
  %207 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %208 = bitcast %struct.gs_image_common_s* %207 to %struct.gs_pixel_image_s*
  store %struct.gs_pixel_image_s* %208, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %209 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %format105 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %209, i32 0, i32 7
  %210 = load i32, i32* %format105, align 4, !tbaa !121
  store i32 %210, i32* %format, align 4, !tbaa !5
  %211 = load i32, i32* %format, align 4, !tbaa !5
  switch i32 %211, label %sw.default.107 [
    i32 0, label %sw.bb.106
    i32 1, label %sw.bb.106
  ]

sw.bb.106:                                        ; preds = %sw.epilog, %sw.epilog
  br label %sw.epilog.108

sw.default.107:                                   ; preds = %sw.epilog
  store i32 1, i32* %use_fallback, align 4, !tbaa !52
  br label %sw.epilog.108

sw.epilog.108:                                    ; preds = %sw.default.107, %sw.bb.106
  %212 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %Width109 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %212, i32 0, i32 2
  %213 = load i32, i32* %Width109, align 4, !tbaa !123
  %cmp110 = icmp eq i32 %213, 0
  br i1 %cmp110, label %if.then.114, label %lor.lhs.false.111

lor.lhs.false.111:                                ; preds = %sw.epilog.108
  %214 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %Height112 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %214, i32 0, i32 3
  %215 = load i32, i32* %Height112, align 4, !tbaa !124
  %cmp113 = icmp eq i32 %215, 0
  br i1 %cmp113, label %if.then.114, label %if.end.115

if.then.114:                                      ; preds = %lor.lhs.false.111, %sw.epilog.108
  store i32 1, i32* %use_fallback, align 4, !tbaa !52
  br label %if.end.115

if.end.115:                                       ; preds = %if.then.114, %lor.lhs.false.111
  %216 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %BitsPerComponent = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %216, i32 0, i32 4
  %217 = load i32, i32* %BitsPerComponent, align 4, !tbaa !125
  switch i32 %217, label %sw.default.118 [
    i32 1, label %sw.bb.116
    i32 2, label %sw.bb.116
    i32 4, label %sw.bb.116
    i32 8, label %sw.bb.116
    i32 12, label %sw.bb.117
    i32 16, label %sw.bb.117
  ]

sw.bb.116:                                        ; preds = %if.end.115, %if.end.115, %if.end.115, %if.end.115
  br label %sw.epilog.125

sw.bb.117:                                        ; preds = %if.end.115, %if.end.115
  store i32 1, i32* %use_fallback, align 4, !tbaa !52
  br label %sw.epilog.125

sw.default.118:                                   ; preds = %if.end.115
  %218 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %non_gc_memory119 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %218, i32 0, i32 3
  %219 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory119, align 8, !tbaa !91
  %non_gc_memory120 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %219, i32 0, i32 3
  %220 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory120, align 8, !tbaa !91
  %procs121 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %220, i32 0, i32 1
  %free_object122 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs121, i32 0, i32 2
  %221 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object122, align 8, !tbaa !114
  %222 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %non_gc_memory123 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %222, i32 0, i32 3
  %223 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory123, align 8, !tbaa !91
  %non_gc_memory124 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %223, i32 0, i32 3
  %224 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory124, align 8, !tbaa !91
  %225 = load %union.image_union_s*, %union.image_union_s** %image, align 8, !tbaa !1
  %226 = bitcast %union.image_union_s* %225 to i8*
  call void %221(%struct.gs_memory_s* %224, i8* %226, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i32 0, i32 0)) #6
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.950

sw.epilog.125:                                    ; preds = %sw.bb.117, %sw.bb.116
  %227 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %tobool126 = icmp ne %struct.gs_int_rect_s* %227, null
  br i1 %tobool126, label %if.then.127, label %if.else.128

if.then.127:                                      ; preds = %sw.epilog.125
  %228 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %229 = bitcast %struct.gs_int_rect_s* %rect to i8*
  %230 = bitcast %struct.gs_int_rect_s* %228 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %229, i8* %230, i64 16, i32 4, i1 false), !tbaa.struct !126
  br label %if.end.139

if.else.128:                                      ; preds = %sw.epilog.125
  %p129 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 0
  %y130 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p129, i32 0, i32 1
  store i32 0, i32* %y130, align 4, !tbaa !107
  %p131 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 0
  %x132 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p131, i32 0, i32 0
  store i32 0, i32* %x132, align 4, !tbaa !105
  %231 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %Width133 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %231, i32 0, i32 2
  %232 = load i32, i32* %Width133, align 4, !tbaa !123
  %q134 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 1
  %x135 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q134, i32 0, i32 0
  store i32 %232, i32* %x135, align 4, !tbaa !108
  %233 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %Height136 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %233, i32 0, i32 3
  %234 = load i32, i32* %Height136, align 4, !tbaa !124
  %q137 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 1
  %y138 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q137, i32 0, i32 1
  store i32 %234, i32* %y138, align 4, !tbaa !112
  br label %if.end.139

if.end.139:                                       ; preds = %if.else.128, %if.then.127
  %p140 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 0
  %x141 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p140, i32 0, i32 0
  %235 = load i32, i32* %x141, align 4, !tbaa !105
  %cmp142 = icmp ne i32 %235, 0
  br i1 %cmp142, label %if.then.161, label %lor.lhs.false.143

lor.lhs.false.143:                                ; preds = %if.end.139
  %p144 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 0
  %y145 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p144, i32 0, i32 1
  %236 = load i32, i32* %y145, align 4, !tbaa !107
  %cmp146 = icmp ne i32 %236, 0
  br i1 %cmp146, label %if.then.161, label %lor.lhs.false.147

lor.lhs.false.147:                                ; preds = %lor.lhs.false.143
  %q148 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 1
  %x149 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q148, i32 0, i32 0
  %237 = load i32, i32* %x149, align 4, !tbaa !108
  %238 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %Width150 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %238, i32 0, i32 2
  %239 = load i32, i32* %Width150, align 4, !tbaa !123
  %cmp151 = icmp ne i32 %237, %239
  br i1 %cmp151, label %if.then.161, label %lor.lhs.false.152

lor.lhs.false.152:                                ; preds = %lor.lhs.false.147
  %q153 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 1
  %y154 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q153, i32 0, i32 1
  %240 = load i32, i32* %y154, align 4, !tbaa !112
  %241 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %Height155 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %241, i32 0, i32 3
  %242 = load i32, i32* %Height155, align 4, !tbaa !124
  %cmp156 = icmp ne i32 %240, %242
  br i1 %cmp156, label %if.then.161, label %lor.lhs.false.157

lor.lhs.false.157:                                ; preds = %lor.lhs.false.152
  %243 = load i32, i32* %is_mask, align 4, !tbaa !52
  %tobool158 = icmp ne i32 %243, 0
  br i1 %tobool158, label %land.lhs.true.159, label %if.end.162

land.lhs.true.159:                                ; preds = %lor.lhs.false.157
  %244 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %CombineWithColor = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %244, i32 0, i32 8
  %245 = load i32, i32* %CombineWithColor, align 4, !tbaa !127
  %tobool160 = icmp ne i32 %245, 0
  br i1 %tobool160, label %if.then.161, label %if.end.162

if.then.161:                                      ; preds = %land.lhs.true.159, %lor.lhs.false.152, %lor.lhs.false.147, %lor.lhs.false.143, %if.end.139
  store i32 1, i32* %use_fallback, align 4, !tbaa !52
  br label %if.end.162

if.end.162:                                       ; preds = %if.then.161, %land.lhs.true.159, %lor.lhs.false.157
  %246 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %Eps2Write = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %246, i32 0, i32 100
  %247 = load i32, i32* %Eps2Write, align 4, !tbaa !128
  %tobool163 = icmp ne i32 %247, 0
  br i1 %tobool163, label %if.then.164, label %if.end.368

if.then.164:                                      ; preds = %if.end.162
  %248 = bitcast %struct.gs_rect_s* %sbox to i8*
  call void @llvm.lifetime.start(i64 32, i8* %248) #1
  %249 = bitcast %struct.gs_rect_s* %dbox to i8*
  call void @llvm.lifetime.start(i64 32, i8* %249) #1
  %250 = bitcast %struct.gs_rect_s** %Box to i8*
  call void @llvm.lifetime.start(i64 8, i8* %250) #1
  %251 = bitcast [4 x %struct.gs_point_s]* %corners to i8*
  call void @llvm.lifetime.start(i64 64, i8* %251) #1
  %252 = bitcast %struct.gs_fixed_rect_s* %ibox to i8*
  call void @llvm.lifetime.start(i64 16, i8* %252) #1
  %253 = bitcast %struct.gs_matrix_s** %pmat1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %253) #1
  %254 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %254, %struct.gs_matrix_s** %pmat1, align 8, !tbaa !1
  %255 = bitcast %struct.gs_matrix_s* %mat to i8*
  call void @llvm.lifetime.start(i64 24, i8* %255) #1
  %256 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %accumulating_charproc = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %256, i32 0, i32 212
  %257 = load i32, i32* %accumulating_charproc, align 4, !tbaa !129
  %tobool165 = icmp ne i32 %257, 0
  br i1 %tobool165, label %if.else.167, label %if.then.166

if.then.166:                                      ; preds = %if.then.164
  %258 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %BBox = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %258, i32 0, i32 129
  store %struct.gs_rect_s* %BBox, %struct.gs_rect_s** %Box, align 8, !tbaa !1
  br label %if.end.168

if.else.167:                                      ; preds = %if.then.164
  %259 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %charproc_BBox = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %259, i32 0, i32 213
  store %struct.gs_rect_s* %charproc_BBox, %struct.gs_rect_s** %Box, align 8, !tbaa !1
  br label %if.end.168

if.end.168:                                       ; preds = %if.else.167, %if.then.166
  %260 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat1, align 8, !tbaa !1
  %cmp169 = icmp eq %struct.gs_matrix_s* %260, null
  br i1 %cmp169, label %if.then.170, label %if.end.171

if.then.170:                                      ; preds = %if.end.168
  %261 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %261, i32 0, i32 5
  %262 = bitcast %struct.gs_matrix_fixed_s* %ctm to %struct.gs_matrix_s*
  store %struct.gs_matrix_s* %262, %struct.gs_matrix_s** %pmat1, align 8, !tbaa !1
  br label %if.end.171

if.end.171:                                       ; preds = %if.then.170, %if.end.168
  %263 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %ImageMatrix = getelementptr inbounds %struct.gs_image_common_s, %struct.gs_image_common_s* %263, i32 0, i32 1
  %call172 = call i32 @gs_matrix_invert(%struct.gs_matrix_s* %ImageMatrix, %struct.gs_matrix_s* %mat) #6
  store i32 %call172, i32* %code, align 4, !tbaa !52
  %cmp173 = icmp slt i32 %call172, 0
  br i1 %cmp173, label %if.then.177, label %lor.lhs.false.174

lor.lhs.false.174:                                ; preds = %if.end.171
  %264 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat1, align 8, !tbaa !1
  %call175 = call i32 @gs_matrix_multiply(%struct.gs_matrix_s* %mat, %struct.gs_matrix_s* %264, %struct.gs_matrix_s* %mat) #6
  store i32 %call175, i32* %code, align 4, !tbaa !52
  %cmp176 = icmp slt i32 %call175, 0
  br i1 %cmp176, label %if.then.177, label %if.end.178

if.then.177:                                      ; preds = %lor.lhs.false.174, %if.end.171
  %265 = load i32, i32* %code, align 4, !tbaa !52
  store i32 %265, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.178:                                       ; preds = %lor.lhs.false.174
  %p179 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 0
  %x180 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p179, i32 0, i32 0
  %266 = load i32, i32* %x180, align 4, !tbaa !105
  %conv = sitofp i32 %266 to double
  %p181 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %sbox, i32 0, i32 0
  %x182 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p181, i32 0, i32 0
  store double %conv, double* %x182, align 8, !tbaa !130
  %p183 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 0
  %y184 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p183, i32 0, i32 1
  %267 = load i32, i32* %y184, align 4, !tbaa !107
  %conv185 = sitofp i32 %267 to double
  %p186 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %sbox, i32 0, i32 0
  %y187 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p186, i32 0, i32 1
  store double %conv185, double* %y187, align 8, !tbaa !131
  %q188 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 1
  %x189 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q188, i32 0, i32 0
  %268 = load i32, i32* %x189, align 4, !tbaa !108
  %conv190 = sitofp i32 %268 to double
  %q191 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %sbox, i32 0, i32 1
  %x192 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q191, i32 0, i32 0
  store double %conv190, double* %x192, align 8, !tbaa !132
  %q193 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 1
  %y194 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q193, i32 0, i32 1
  %269 = load i32, i32* %y194, align 4, !tbaa !112
  %conv195 = sitofp i32 %269 to double
  %q196 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %sbox, i32 0, i32 1
  %y197 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q196, i32 0, i32 1
  store double %conv195, double* %y197, align 8, !tbaa !133
  %arraydecay = getelementptr inbounds [4 x %struct.gs_point_s], [4 x %struct.gs_point_s]* %corners, i32 0, i32 0
  %call198 = call i32 @gs_bbox_transform_only(%struct.gs_rect_s* %sbox, %struct.gs_matrix_s* %mat, %struct.gs_point_s* %arraydecay) #6
  %arraydecay199 = getelementptr inbounds [4 x %struct.gs_point_s], [4 x %struct.gs_point_s]* %corners, i32 0, i32 0
  %call200 = call i32 @gs_points_bbox(%struct.gs_point_s* %arraydecay199, %struct.gs_rect_s* %dbox) #6
  %p201 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %dbox, i32 0, i32 0
  %x202 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p201, i32 0, i32 0
  %270 = load double, double* %x202, align 8, !tbaa !130
  %mul = fmul double %270, 2.560000e+02
  %conv203 = fptosi double %mul to i32
  %p204 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 0
  %x205 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p204, i32 0, i32 0
  store i32 %conv203, i32* %x205, align 4, !tbaa !134
  %p206 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %dbox, i32 0, i32 0
  %y207 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p206, i32 0, i32 1
  %271 = load double, double* %y207, align 8, !tbaa !131
  %mul208 = fmul double %271, 2.560000e+02
  %conv209 = fptosi double %mul208 to i32
  %p210 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 0
  %y211 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p210, i32 0, i32 1
  store i32 %conv209, i32* %y211, align 4, !tbaa !136
  %q212 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %dbox, i32 0, i32 1
  %x213 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q212, i32 0, i32 0
  %272 = load double, double* %x213, align 8, !tbaa !132
  %mul214 = fmul double %272, 2.560000e+02
  %conv215 = fptosi double %mul214 to i32
  %q216 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 1
  %x217 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q216, i32 0, i32 0
  store i32 %conv215, i32* %x217, align 4, !tbaa !137
  %q218 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %dbox, i32 0, i32 1
  %y219 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q218, i32 0, i32 1
  %273 = load double, double* %y219, align 8, !tbaa !133
  %mul220 = fmul double %273, 2.560000e+02
  %conv221 = fptosi double %mul220 to i32
  %q222 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 1
  %y223 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q222, i32 0, i32 1
  store i32 %conv221, i32* %y223, align 4, !tbaa !138
  %274 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %cmp224 = icmp ne %struct.gx_clip_path_s* %274, null
  br i1 %cmp224, label %land.lhs.true.226, label %if.else.280

land.lhs.true.226:                                ; preds = %if.end.178
  %275 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %p227 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 0
  %x228 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p227, i32 0, i32 0
  %276 = load i32, i32* %x228, align 4, !tbaa !134
  %p229 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 0
  %y230 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p229, i32 0, i32 1
  %277 = load i32, i32* %y230, align 4, !tbaa !136
  %q231 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 1
  %x232 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q231, i32 0, i32 0
  %278 = load i32, i32* %x232, align 4, !tbaa !137
  %q233 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 1
  %y234 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q233, i32 0, i32 1
  %279 = load i32, i32* %y234, align 4, !tbaa !138
  %call235 = call i32 @gx_cpath_includes_rectangle(%struct.gx_clip_path_s* %275, i32 %276, i32 %277, i32 %278, i32 %279) #6
  %tobool236 = icmp ne i32 %call235, 0
  br i1 %tobool236, label %if.else.280, label %if.then.237

if.then.237:                                      ; preds = %land.lhs.true.226
  %280 = bitcast %struct.gx_device_clip_s* %cdev to i8*
  call void @llvm.lifetime.start(i64 1856, i8* %280) #1
  %281 = bitcast %struct.gx_device_color_s* %devc to i8*
  call void @llvm.lifetime.start(i64 656, i8* %281) #1
  %282 = bitcast i32* %x0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %282) #1
  %arrayidx238 = getelementptr inbounds [4 x %struct.gs_point_s], [4 x %struct.gs_point_s]* %corners, i32 0, i64 0
  %x239 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx238, i32 0, i32 0
  %283 = load double, double* %x239, align 8, !tbaa !139
  %mul240 = fmul double %283, 2.560000e+02
  %conv241 = fptosi double %mul240 to i32
  store i32 %conv241, i32* %x0, align 4, !tbaa !52
  %284 = bitcast i32* %y0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %284) #1
  %arrayidx242 = getelementptr inbounds [4 x %struct.gs_point_s], [4 x %struct.gs_point_s]* %corners, i32 0, i64 0
  %y243 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx242, i32 0, i32 1
  %285 = load double, double* %y243, align 8, !tbaa !140
  %mul244 = fmul double %285, 2.560000e+02
  %conv245 = fptosi double %mul244 to i32
  store i32 %conv245, i32* %y0, align 4, !tbaa !52
  %286 = bitcast i32* %bx2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %286) #1
  %arrayidx246 = getelementptr inbounds [4 x %struct.gs_point_s], [4 x %struct.gs_point_s]* %corners, i32 0, i64 2
  %x247 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx246, i32 0, i32 0
  %287 = load double, double* %x247, align 8, !tbaa !139
  %mul248 = fmul double %287, 2.560000e+02
  %conv249 = fptosi double %mul248 to i32
  %288 = load i32, i32* %x0, align 4, !tbaa !52
  %sub = sub nsw i32 %conv249, %288
  store i32 %sub, i32* %bx2, align 4, !tbaa !52
  %289 = bitcast i32* %by2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %289) #1
  %arrayidx250 = getelementptr inbounds [4 x %struct.gs_point_s], [4 x %struct.gs_point_s]* %corners, i32 0, i64 2
  %y251 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx250, i32 0, i32 1
  %290 = load double, double* %y251, align 8, !tbaa !140
  %mul252 = fmul double %290, 2.560000e+02
  %conv253 = fptosi double %mul252 to i32
  %291 = load i32, i32* %y0, align 4, !tbaa !52
  %sub254 = sub nsw i32 %conv253, %291
  store i32 %sub254, i32* %by2, align 4, !tbaa !52
  %292 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %AccumulatingBBox = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %292, i32 0, i32 128
  %293 = load i32, i32* %AccumulatingBBox, align 4, !tbaa !141
  %inc = add nsw i32 %293, 1
  store i32 %inc, i32* %AccumulatingBBox, align 4, !tbaa !141
  %294 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %295 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %296 = bitcast %struct.gx_device_pdf_s* %295 to %struct.gx_device_s*
  call void @gx_make_clip_device_on_stack(%struct.gx_device_clip_s* %cdev, %struct.gx_clip_path_s* %294, %struct.gx_device_s* %296) #6
  %297 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %298 = bitcast %struct.gx_device_pdf_s* %297 to %struct.gx_device_s*
  %call255 = call i64 @gx_device_black(%struct.gx_device_s* %298) #6
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %devc, i32 0, i32 1
  %pure = bitcast %union._c* %colors to i64*
  store i64 %call255, i64* %pure, align 8, !tbaa !53
  %type256 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %devc, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_pure, %struct.gx_device_color_type_s** %type256, align 8, !tbaa !142
  %ccolor_valid = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %devc, i32 0, i32 3
  store i32 0, i32* %ccolor_valid, align 4, !tbaa !146
  %299 = bitcast %struct.gx_device_clip_s* %cdev to %struct.gx_device_s*
  %300 = load i32, i32* %x0, align 4, !tbaa !52
  %301 = load i32, i32* %y0, align 4, !tbaa !52
  %arrayidx257 = getelementptr inbounds [4 x %struct.gs_point_s], [4 x %struct.gs_point_s]* %corners, i32 0, i64 1
  %x258 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx257, i32 0, i32 0
  %302 = load double, double* %x258, align 8, !tbaa !139
  %mul259 = fmul double %302, 2.560000e+02
  %conv260 = fptosi double %mul259 to i32
  %303 = load i32, i32* %x0, align 4, !tbaa !52
  %sub261 = sub nsw i32 %conv260, %303
  %arrayidx262 = getelementptr inbounds [4 x %struct.gs_point_s], [4 x %struct.gs_point_s]* %corners, i32 0, i64 1
  %y263 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx262, i32 0, i32 1
  %304 = load double, double* %y263, align 8, !tbaa !140
  %mul264 = fmul double %304, 2.560000e+02
  %conv265 = fptosi double %mul264 to i32
  %305 = load i32, i32* %y0, align 4, !tbaa !52
  %sub266 = sub nsw i32 %conv265, %305
  %306 = load i32, i32* %bx2, align 4, !tbaa !52
  %307 = load i32, i32* %by2, align 4, !tbaa !52
  %call267 = call i32 @gx_default_fill_triangle(%struct.gx_device_s* %299, i32 %300, i32 %301, i32 %sub261, i32 %sub266, i32 %306, i32 %307, %struct.gx_device_color_s* %devc, i32 252) #6
  %308 = bitcast %struct.gx_device_clip_s* %cdev to %struct.gx_device_s*
  %309 = load i32, i32* %x0, align 4, !tbaa !52
  %310 = load i32, i32* %y0, align 4, !tbaa !52
  %arrayidx268 = getelementptr inbounds [4 x %struct.gs_point_s], [4 x %struct.gs_point_s]* %corners, i32 0, i64 3
  %x269 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx268, i32 0, i32 0
  %311 = load double, double* %x269, align 8, !tbaa !139
  %mul270 = fmul double %311, 2.560000e+02
  %conv271 = fptosi double %mul270 to i32
  %312 = load i32, i32* %x0, align 4, !tbaa !52
  %sub272 = sub nsw i32 %conv271, %312
  %arrayidx273 = getelementptr inbounds [4 x %struct.gs_point_s], [4 x %struct.gs_point_s]* %corners, i32 0, i64 3
  %y274 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx273, i32 0, i32 1
  %313 = load double, double* %y274, align 8, !tbaa !140
  %mul275 = fmul double %313, 2.560000e+02
  %conv276 = fptosi double %mul275 to i32
  %314 = load i32, i32* %y0, align 4, !tbaa !52
  %sub277 = sub nsw i32 %conv276, %314
  %315 = load i32, i32* %bx2, align 4, !tbaa !52
  %316 = load i32, i32* %by2, align 4, !tbaa !52
  %call278 = call i32 @gx_default_fill_triangle(%struct.gx_device_s* %308, i32 %309, i32 %310, i32 %sub272, i32 %sub277, i32 %315, i32 %316, %struct.gx_device_color_s* %devc, i32 252) #6
  %317 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %AccumulatingBBox279 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %317, i32 0, i32 128
  %318 = load i32, i32* %AccumulatingBBox279, align 4, !tbaa !141
  %dec = add nsw i32 %318, -1
  store i32 %dec, i32* %AccumulatingBBox279, align 4, !tbaa !141
  %319 = bitcast i32* %by2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %319) #1
  %320 = bitcast i32* %bx2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %320) #1
  %321 = bitcast i32* %y0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %321) #1
  %322 = bitcast i32* %x0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %322) #1
  %323 = bitcast %struct.gx_device_color_s* %devc to i8*
  call void @llvm.lifetime.end(i64 656, i8* %323) #1
  %324 = bitcast %struct.gx_device_clip_s* %cdev to i8*
  call void @llvm.lifetime.end(i64 1856, i8* %324) #1
  br label %if.end.361

if.else.280:                                      ; preds = %land.lhs.true.226, %if.end.178
  %325 = bitcast float* %x0281 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %325) #1
  %326 = bitcast float* %y0282 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %326) #1
  %327 = bitcast float* %x1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %327) #1
  %328 = bitcast float* %y1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %328) #1
  %p283 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 0
  %x284 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p283, i32 0, i32 0
  %329 = load i32, i32* %x284, align 4, !tbaa !134
  %conv285 = sitofp i32 %329 to double
  %mul286 = fmul double %conv285, 3.906250e-03
  %330 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %330, i32 0, i32 22
  %arrayidx287 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %331 = load float, float* %arrayidx287, align 4, !tbaa !69
  %conv288 = fpext float %331 to double
  %div = fdiv double %conv288, 7.200000e+01
  %div289 = fdiv double %mul286, %div
  %conv290 = fptrunc double %div289 to float
  store float %conv290, float* %x0281, align 4, !tbaa !69
  %p291 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 0
  %y292 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p291, i32 0, i32 1
  %332 = load i32, i32* %y292, align 4, !tbaa !136
  %conv293 = sitofp i32 %332 to double
  %mul294 = fmul double %conv293, 3.906250e-03
  %333 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution295 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %333, i32 0, i32 22
  %arrayidx296 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution295, i32 0, i64 1
  %334 = load float, float* %arrayidx296, align 4, !tbaa !69
  %conv297 = fpext float %334 to double
  %div298 = fdiv double %conv297, 7.200000e+01
  %div299 = fdiv double %mul294, %div298
  %conv300 = fptrunc double %div299 to float
  store float %conv300, float* %y0282, align 4, !tbaa !69
  %q301 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 1
  %x302 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q301, i32 0, i32 0
  %335 = load i32, i32* %x302, align 4, !tbaa !137
  %conv303 = sitofp i32 %335 to double
  %mul304 = fmul double %conv303, 3.906250e-03
  %336 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution305 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %336, i32 0, i32 22
  %arrayidx306 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution305, i32 0, i64 0
  %337 = load float, float* %arrayidx306, align 4, !tbaa !69
  %conv307 = fpext float %337 to double
  %div308 = fdiv double %conv307, 7.200000e+01
  %div309 = fdiv double %mul304, %div308
  %conv310 = fptrunc double %div309 to float
  store float %conv310, float* %x1, align 4, !tbaa !69
  %q311 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 1
  %y312 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q311, i32 0, i32 1
  %338 = load i32, i32* %y312, align 4, !tbaa !138
  %conv313 = sitofp i32 %338 to double
  %mul314 = fmul double %conv313, 3.906250e-03
  %339 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution315 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %339, i32 0, i32 22
  %arrayidx316 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution315, i32 0, i64 1
  %340 = load float, float* %arrayidx316, align 4, !tbaa !69
  %conv317 = fpext float %340 to double
  %div318 = fdiv double %conv317, 7.200000e+01
  %div319 = fdiv double %mul314, %div318
  %conv320 = fptrunc double %div319 to float
  store float %conv320, float* %y1, align 4, !tbaa !69
  %341 = load %struct.gs_rect_s*, %struct.gs_rect_s** %Box, align 8, !tbaa !1
  %p321 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %341, i32 0, i32 0
  %x322 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p321, i32 0, i32 0
  %342 = load double, double* %x322, align 8, !tbaa !130
  %343 = load float, float* %x0281, align 4, !tbaa !69
  %conv323 = fpext float %343 to double
  %cmp324 = fcmp ogt double %342, %conv323
  br i1 %cmp324, label %if.then.326, label %if.end.330

if.then.326:                                      ; preds = %if.else.280
  %344 = load float, float* %x0281, align 4, !tbaa !69
  %conv327 = fpext float %344 to double
  %345 = load %struct.gs_rect_s*, %struct.gs_rect_s** %Box, align 8, !tbaa !1
  %p328 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %345, i32 0, i32 0
  %x329 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p328, i32 0, i32 0
  store double %conv327, double* %x329, align 8, !tbaa !130
  br label %if.end.330

if.end.330:                                       ; preds = %if.then.326, %if.else.280
  %346 = load %struct.gs_rect_s*, %struct.gs_rect_s** %Box, align 8, !tbaa !1
  %p331 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %346, i32 0, i32 0
  %y332 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p331, i32 0, i32 1
  %347 = load double, double* %y332, align 8, !tbaa !131
  %348 = load float, float* %y0282, align 4, !tbaa !69
  %conv333 = fpext float %348 to double
  %cmp334 = fcmp ogt double %347, %conv333
  br i1 %cmp334, label %if.then.336, label %if.end.340

if.then.336:                                      ; preds = %if.end.330
  %349 = load float, float* %y0282, align 4, !tbaa !69
  %conv337 = fpext float %349 to double
  %350 = load %struct.gs_rect_s*, %struct.gs_rect_s** %Box, align 8, !tbaa !1
  %p338 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %350, i32 0, i32 0
  %y339 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p338, i32 0, i32 1
  store double %conv337, double* %y339, align 8, !tbaa !131
  br label %if.end.340

if.end.340:                                       ; preds = %if.then.336, %if.end.330
  %351 = load %struct.gs_rect_s*, %struct.gs_rect_s** %Box, align 8, !tbaa !1
  %q341 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %351, i32 0, i32 1
  %x342 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q341, i32 0, i32 0
  %352 = load double, double* %x342, align 8, !tbaa !132
  %353 = load float, float* %x1, align 4, !tbaa !69
  %conv343 = fpext float %353 to double
  %cmp344 = fcmp olt double %352, %conv343
  br i1 %cmp344, label %if.then.346, label %if.end.350

if.then.346:                                      ; preds = %if.end.340
  %354 = load float, float* %x1, align 4, !tbaa !69
  %conv347 = fpext float %354 to double
  %355 = load %struct.gs_rect_s*, %struct.gs_rect_s** %Box, align 8, !tbaa !1
  %q348 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %355, i32 0, i32 1
  %x349 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q348, i32 0, i32 0
  store double %conv347, double* %x349, align 8, !tbaa !132
  br label %if.end.350

if.end.350:                                       ; preds = %if.then.346, %if.end.340
  %356 = load %struct.gs_rect_s*, %struct.gs_rect_s** %Box, align 8, !tbaa !1
  %q351 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %356, i32 0, i32 1
  %y352 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q351, i32 0, i32 1
  %357 = load double, double* %y352, align 8, !tbaa !133
  %358 = load float, float* %y1, align 4, !tbaa !69
  %conv353 = fpext float %358 to double
  %cmp354 = fcmp olt double %357, %conv353
  br i1 %cmp354, label %if.then.356, label %if.end.360

if.then.356:                                      ; preds = %if.end.350
  %359 = load float, float* %y1, align 4, !tbaa !69
  %conv357 = fpext float %359 to double
  %360 = load %struct.gs_rect_s*, %struct.gs_rect_s** %Box, align 8, !tbaa !1
  %q358 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %360, i32 0, i32 1
  %y359 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q358, i32 0, i32 1
  store double %conv357, double* %y359, align 8, !tbaa !133
  br label %if.end.360

if.end.360:                                       ; preds = %if.then.356, %if.end.350
  %361 = bitcast float* %y1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %361) #1
  %362 = bitcast float* %x1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %362) #1
  %363 = bitcast float* %y0282 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %363) #1
  %364 = bitcast float* %x0281 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %364) #1
  br label %if.end.361

if.end.361:                                       ; preds = %if.end.360, %if.then.237
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.361, %if.then.177
  %365 = bitcast %struct.gs_matrix_s* %mat to i8*
  call void @llvm.lifetime.end(i64 24, i8* %365) #1
  %366 = bitcast %struct.gs_matrix_s** %pmat1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %366) #1
  %367 = bitcast %struct.gs_fixed_rect_s* %ibox to i8*
  call void @llvm.lifetime.end(i64 16, i8* %367) #1
  %368 = bitcast [4 x %struct.gs_point_s]* %corners to i8*
  call void @llvm.lifetime.end(i64 64, i8* %368) #1
  %369 = bitcast %struct.gs_rect_s** %Box to i8*
  call void @llvm.lifetime.end(i64 8, i8* %369) #1
  %370 = bitcast %struct.gs_rect_s* %dbox to i8*
  call void @llvm.lifetime.end(i64 32, i8* %370) #1
  %371 = bitcast %struct.gs_rect_s* %sbox to i8*
  call void @llvm.lifetime.end(i64 32, i8* %371) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.950 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.368

if.end.368:                                       ; preds = %cleanup.cont, %if.end.162
  %372 = load i32, i32* %use_fallback, align 4, !tbaa !52
  %tobool369 = icmp ne i32 %372, 0
  br i1 %tobool369, label %if.then.370, label %if.end.378

if.then.370:                                      ; preds = %if.end.368
  %373 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %non_gc_memory371 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %373, i32 0, i32 3
  %374 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory371, align 8, !tbaa !91
  %non_gc_memory372 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %374, i32 0, i32 3
  %375 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory372, align 8, !tbaa !91
  %procs373 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %375, i32 0, i32 1
  %free_object374 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs373, i32 0, i32 2
  %376 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object374, align 8, !tbaa !114
  %377 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %non_gc_memory375 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %377, i32 0, i32 3
  %378 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory375, align 8, !tbaa !91
  %non_gc_memory376 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %378, i32 0, i32 3
  %379 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory376, align 8, !tbaa !91
  %380 = load %union.image_union_s*, %union.image_union_s** %image, align 8, !tbaa !1
  %381 = bitcast %union.image_union_s* %380 to i8*
  call void %376(%struct.gs_memory_s* %379, i8* %381, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i32 0, i32 0)) #6
  %382 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %383 = bitcast %struct.gx_device_pdf_s* %382 to %struct.gx_device_s*
  %384 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %385 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %386 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %387 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %388 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %389 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %390 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %391 = load %struct.gx_image_enum_common_s**, %struct.gx_image_enum_common_s*** %pinfo.addr, align 8, !tbaa !1
  %call377 = call i32 @gx_default_begin_typed_image(%struct.gx_device_s* %383, %struct.gs_imager_state_s* %384, %struct.gs_matrix_s* %385, %struct.gs_image_common_s* %386, %struct.gs_int_rect_s* %387, %struct.gx_device_color_s* %388, %struct.gx_clip_path_s* %389, %struct.gs_memory_s* %390, %struct.gx_image_enum_common_s** %391) #6
  store i32 %call377, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.950

if.end.378:                                       ; preds = %if.end.368
  %392 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %ColorSpace = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %392, i32 0, i32 9
  %393 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace, align 8, !tbaa !147
  store %struct.gs_color_space_s* %393, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %394 = load i32, i32* %is_mask, align 4, !tbaa !52
  %tobool379 = icmp ne i32 %394, 0
  br i1 %tobool379, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.378
  br label %cond.end

cond.false:                                       ; preds = %if.end.378
  %395 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %call380 = call i32 @gs_color_space_num_components(%struct.gs_color_space_s* %395) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %call380, %cond.false ]
  store i32 %cond, i32* %num_components, align 4, !tbaa !52
  %396 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %397 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call381 = call i32 @pdf_must_put_clip_path(%struct.gx_device_pdf_s* %396, %struct.gx_clip_path_s* %397) #6
  %tobool382 = icmp ne i32 %call381, 0
  br i1 %tobool382, label %if.then.383, label %if.else.385

if.then.383:                                      ; preds = %cond.end
  %398 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call384 = call i32 @pdf_unclip(%struct.gx_device_pdf_s* %398) #6
  store i32 %call384, i32* %code, align 4, !tbaa !52
  br label %if.end.387

if.else.385:                                      ; preds = %cond.end
  %399 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call386 = call i32 @pdf_open_page(%struct.gx_device_pdf_s* %399, i32 1) #6
  store i32 %call386, i32* %code, align 4, !tbaa !52
  br label %if.end.387

if.end.387:                                       ; preds = %if.else.385, %if.then.383
  %400 = load i32, i32* %code, align 4, !tbaa !52
  %cmp388 = icmp slt i32 %400, 0
  br i1 %cmp388, label %if.then.390, label %if.end.398

if.then.390:                                      ; preds = %if.end.387
  %401 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %non_gc_memory391 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %401, i32 0, i32 3
  %402 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory391, align 8, !tbaa !91
  %non_gc_memory392 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %402, i32 0, i32 3
  %403 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory392, align 8, !tbaa !91
  %procs393 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %403, i32 0, i32 1
  %free_object394 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs393, i32 0, i32 2
  %404 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object394, align 8, !tbaa !114
  %405 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %non_gc_memory395 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %405, i32 0, i32 3
  %406 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory395, align 8, !tbaa !91
  %non_gc_memory396 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %406, i32 0, i32 3
  %407 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory396, align 8, !tbaa !91
  %408 = load %union.image_union_s*, %union.image_union_s** %image, align 8, !tbaa !1
  %409 = bitcast %union.image_union_s* %408 to i8*
  call void %404(%struct.gs_memory_s* %407, i8* %409, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i32 0, i32 0)) #6
  %410 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %411 = bitcast %struct.gx_device_pdf_s* %410 to %struct.gx_device_s*
  %412 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %413 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %414 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %415 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %416 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %417 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %418 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %419 = load %struct.gx_image_enum_common_s**, %struct.gx_image_enum_common_s*** %pinfo.addr, align 8, !tbaa !1
  %call397 = call i32 @gx_default_begin_typed_image(%struct.gx_device_s* %411, %struct.gs_imager_state_s* %412, %struct.gs_matrix_s* %413, %struct.gs_image_common_s* %414, %struct.gs_int_rect_s* %415, %struct.gx_device_color_s* %416, %struct.gx_clip_path_s* %417, %struct.gs_memory_s* %418, %struct.gx_image_enum_common_s** %419) #6
  store i32 %call397, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.950

if.end.398:                                       ; preds = %if.end.387
  %420 = load i32, i32* %context.addr, align 4, !tbaa !5
  %cmp399 = icmp eq i32 %420, 1
  br i1 %cmp399, label %if.then.401, label %if.else.403

if.then.401:                                      ; preds = %if.end.398
  %421 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %421, i32 0, i32 3
  %422 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !148
  %call402 = call %struct.gs_color_space_s* @gs_cspace_new_DeviceGray(%struct.gs_memory_s* %422) #6
  store %struct.gs_color_space_s* %call402, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  br label %if.end.410

if.else.403:                                      ; preds = %if.end.398
  %423 = load i32, i32* %is_mask, align 4, !tbaa !52
  %tobool404 = icmp ne i32 %423, 0
  br i1 %tobool404, label %if.then.405, label %if.else.407

if.then.405:                                      ; preds = %if.else.403
  %424 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %425 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %426 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %call406 = call i32 @pdf_prepare_imagemask(%struct.gx_device_pdf_s* %424, %struct.gs_imager_state_s* %425, %struct.gx_device_color_s* %426) #6
  store i32 %call406, i32* %code, align 4, !tbaa !52
  br label %if.end.409

if.else.407:                                      ; preds = %if.else.403
  %427 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %428 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %call408 = call i32 @pdf_prepare_image(%struct.gx_device_pdf_s* %427, %struct.gs_imager_state_s* %428) #6
  store i32 %call408, i32* %code, align 4, !tbaa !52
  br label %if.end.409

if.end.409:                                       ; preds = %if.else.407, %if.then.405
  br label %if.end.410

if.end.410:                                       ; preds = %if.end.409, %if.then.401
  %429 = load i32, i32* %code, align 4, !tbaa !52
  %cmp411 = icmp slt i32 %429, 0
  br i1 %cmp411, label %if.then.413, label %if.end.421

if.then.413:                                      ; preds = %if.end.410
  %430 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %non_gc_memory414 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %430, i32 0, i32 3
  %431 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory414, align 8, !tbaa !91
  %non_gc_memory415 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %431, i32 0, i32 3
  %432 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory415, align 8, !tbaa !91
  %procs416 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %432, i32 0, i32 1
  %free_object417 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs416, i32 0, i32 2
  %433 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object417, align 8, !tbaa !114
  %434 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %non_gc_memory418 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %434, i32 0, i32 3
  %435 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory418, align 8, !tbaa !91
  %non_gc_memory419 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %435, i32 0, i32 3
  %436 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory419, align 8, !tbaa !91
  %437 = load %union.image_union_s*, %union.image_union_s** %image, align 8, !tbaa !1
  %438 = bitcast %union.image_union_s* %437 to i8*
  call void %433(%struct.gs_memory_s* %436, i8* %438, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i32 0, i32 0)) #6
  %439 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %440 = bitcast %struct.gx_device_pdf_s* %439 to %struct.gx_device_s*
  %441 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %442 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %443 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %444 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %445 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %446 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %447 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %448 = load %struct.gx_image_enum_common_s**, %struct.gx_image_enum_common_s*** %pinfo.addr, align 8, !tbaa !1
  %call420 = call i32 @gx_default_begin_typed_image(%struct.gx_device_s* %440, %struct.gs_imager_state_s* %441, %struct.gs_matrix_s* %442, %struct.gs_image_common_s* %443, %struct.gs_int_rect_s* %444, %struct.gx_device_color_s* %445, %struct.gx_clip_path_s* %446, %struct.gs_memory_s* %447, %struct.gx_image_enum_common_s** %448) #6
  store i32 %call420, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.950

if.end.421:                                       ; preds = %if.end.410
  %449 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs422 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %449, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs422, i32 0, i32 8
  %450 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !149
  %451 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call423 = call i8* %450(%struct.gs_memory_s* %451, %struct.gs_memory_struct_type_s* @st_pdf_image_enum, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0)) #6
  %452 = bitcast i8* %call423 to %struct.pdf_image_enum_s*
  store %struct.pdf_image_enum_s* %452, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %453 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %cmp424 = icmp eq %struct.pdf_image_enum_s* %453, null
  br i1 %cmp424, label %if.then.426, label %if.end.433

if.then.426:                                      ; preds = %if.end.421
  %454 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %non_gc_memory427 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %454, i32 0, i32 3
  %455 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory427, align 8, !tbaa !91
  %non_gc_memory428 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %455, i32 0, i32 3
  %456 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory428, align 8, !tbaa !91
  %procs429 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %456, i32 0, i32 1
  %free_object430 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs429, i32 0, i32 2
  %457 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object430, align 8, !tbaa !114
  %458 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %non_gc_memory431 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %458, i32 0, i32 3
  %459 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory431, align 8, !tbaa !91
  %non_gc_memory432 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %459, i32 0, i32 3
  %460 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory432, align 8, !tbaa !91
  %461 = load %union.image_union_s*, %union.image_union_s** %image, align 8, !tbaa !1
  %462 = bitcast %union.image_union_s* %461 to i8*
  call void %457(%struct.gs_memory_s* %460, i8* %462, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i32 0, i32 0)) #6
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.950

if.end.433:                                       ; preds = %if.end.421
  %463 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %464 = bitcast %struct.pdf_image_enum_s* %463 to i8*
  %call434 = call i8* @memset(i8* %464, i32 0, i64 800) #7
  %465 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %466 = bitcast %struct.pdf_image_enum_s* %465 to %struct.gx_image_enum_common_s*
  %467 = load %struct.gx_image_enum_common_s**, %struct.gx_image_enum_common_s*** %pinfo.addr, align 8, !tbaa !1
  store %struct.gx_image_enum_common_s* %466, %struct.gx_image_enum_common_s** %467, align 8, !tbaa !1
  %468 = load %struct.gx_image_enum_common_s**, %struct.gx_image_enum_common_s*** %pinfo.addr, align 8, !tbaa !1
  %469 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %468, align 8, !tbaa !1
  %470 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %471 = bitcast %struct.gs_pixel_image_s* %470 to %struct.gs_data_image_s*
  %472 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %CompatibilityLevel435 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %472, i32 0, i32 75
  %473 = load double, double* %CompatibilityLevel435, align 8, !tbaa !104
  %cmp436 = fcmp oge double %473, 1.300000e+00
  br i1 %cmp436, label %cond.true.438, label %cond.false.442

cond.true.438:                                    ; preds = %if.end.433
  %474 = load i32, i32* %context.addr, align 4, !tbaa !5
  %cmp439 = icmp eq i32 %474, 1
  %cond441 = select i1 %cmp439, %struct.gx_image_enum_procs_s* @pdf_image_object_enum_procs, %struct.gx_image_enum_procs_s* @pdf_image_enum_procs
  br label %cond.end.452

cond.false.442:                                   ; preds = %if.end.433
  %475 = load i32, i32* %context.addr, align 4, !tbaa !5
  %cmp443 = icmp eq i32 %475, 1
  br i1 %cmp443, label %cond.true.445, label %cond.false.446

cond.true.445:                                    ; preds = %cond.false.442
  br label %cond.end.450

cond.false.446:                                   ; preds = %cond.false.442
  %476 = load i32, i32* %context.addr, align 4, !tbaa !5
  %cmp447 = icmp eq i32 %476, 2
  %cond449 = select i1 %cmp447, %struct.gx_image_enum_procs_s* @pdf_image_object_enum_procs2, %struct.gx_image_enum_procs_s* @pdf_image_enum_procs
  br label %cond.end.450

cond.end.450:                                     ; preds = %cond.false.446, %cond.true.445
  %cond451 = phi %struct.gx_image_enum_procs_s* [ @pdf_image_object_enum_procs, %cond.true.445 ], [ %cond449, %cond.false.446 ]
  br label %cond.end.452

cond.end.452:                                     ; preds = %cond.end.450, %cond.true.438
  %cond453 = phi %struct.gx_image_enum_procs_s* [ %cond441, %cond.true.438 ], [ %cond451, %cond.end.450 ]
  %477 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %478 = bitcast %struct.gx_device_pdf_s* %477 to %struct.gx_device_s*
  %479 = load i32, i32* %num_components, align 4, !tbaa !52
  %480 = load i32, i32* %format, align 4, !tbaa !5
  %call454 = call i32 @gx_image_enum_common_init(%struct.gx_image_enum_common_s* %469, %struct.gs_data_image_s* %471, %struct.gx_image_enum_procs_s* %cond453, %struct.gx_device_s* %478, i32 %479, i32 %480) #6
  %481 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %482 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %memory455 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %482, i32 0, i32 3
  store %struct.gs_memory_s* %481, %struct.gs_memory_s** %memory455, align 8, !tbaa !150
  %q456 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 1
  %x457 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q456, i32 0, i32 0
  %483 = load i32, i32* %x457, align 4, !tbaa !108
  %p458 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 0
  %x459 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p458, i32 0, i32 0
  %484 = load i32, i32* %x459, align 4, !tbaa !105
  %sub460 = sub nsw i32 %483, %484
  store i32 %sub460, i32* %width, align 4, !tbaa !52
  %485 = load i32, i32* %width, align 4, !tbaa !52
  %486 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %width461 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %486, i32 0, i32 9
  store i32 %485, i32* %width461, align 4, !tbaa !153
  %q462 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 1
  %y463 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q462, i32 0, i32 1
  %487 = load i32, i32* %y463, align 4, !tbaa !112
  %p464 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 0
  %y465 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p464, i32 0, i32 1
  %488 = load i32, i32* %y465, align 4, !tbaa !107
  %sub466 = sub nsw i32 %487, %488
  store i32 %sub466, i32* %height, align 4, !tbaa !52
  %489 = load i32, i32* %reduce_bits, align 4, !tbaa !52
  %tobool467 = icmp ne i32 %489, 0
  br i1 %tobool467, label %cond.true.468, label %cond.false.469

cond.true.468:                                    ; preds = %cond.end.452
  %490 = load i32, i32* %reduce_bits, align 4, !tbaa !52
  br label %cond.end.471

cond.false.469:                                   ; preds = %cond.end.452
  %491 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %BitsPerComponent470 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %491, i32 0, i32 4
  %492 = load i32, i32* %BitsPerComponent470, align 4, !tbaa !125
  br label %cond.end.471

cond.end.471:                                     ; preds = %cond.false.469, %cond.true.468
  %cond472 = phi i32 [ %490, %cond.true.468 ], [ %492, %cond.false.469 ]
  %493 = load i32, i32* %num_components, align 4, !tbaa !52
  %mul473 = mul i32 %cond472, %493
  %494 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %num_planes = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %494, i32 0, i32 6
  %495 = load i32, i32* %num_planes, align 4, !tbaa !154
  %div474 = udiv i32 %mul473, %495
  %496 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %bits_per_pixel = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %496, i32 0, i32 10
  store i32 %div474, i32* %bits_per_pixel, align 4, !tbaa !155
  %497 = load i32, i32* %height, align 4, !tbaa !52
  %498 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %rows_left = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %498, i32 0, i32 11
  store i32 %497, i32* %rows_left, align 4, !tbaa !156
  %499 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pnamed, align 8, !tbaa !1
  %cmp475 = icmp ne %struct.cos_dict_s* %499, null
  br i1 %cmp475, label %if.then.477, label %if.else.478

if.then.477:                                      ; preds = %cond.end.471
  store i32 0, i32* %in_line, align 4, !tbaa !52
  br label %if.end.494

if.else.478:                                      ; preds = %cond.end.471
  %500 = bitcast double* %nbytes to i8*
  call void @llvm.lifetime.start(i64 8, i8* %500) #1
  %501 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %width479 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %501, i32 0, i32 9
  %502 = load i32, i32* %width479, align 4, !tbaa !153
  %conv480 = sext i32 %502 to i64
  %503 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %bits_per_pixel481 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %503, i32 0, i32 10
  %504 = load i32, i32* %bits_per_pixel481, align 4, !tbaa !155
  %conv482 = sext i32 %504 to i64
  %mul483 = mul i64 %conv480, %conv482
  %add = add i64 %mul483, 7
  %shr = lshr i64 %add, 3
  %conv484 = uitofp i64 %shr to double
  %505 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %num_planes485 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %505, i32 0, i32 6
  %506 = load i32, i32* %num_planes485, align 4, !tbaa !154
  %conv486 = sitofp i32 %506 to double
  %mul487 = fmul double %conv484, %conv486
  %507 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %rows_left488 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %507, i32 0, i32 11
  %508 = load i32, i32* %rows_left488, align 4, !tbaa !156
  %conv489 = sitofp i32 %508 to double
  %mul490 = fmul double %mul487, %conv489
  store double %mul490, double* %nbytes, align 8, !tbaa !157
  %509 = load double, double* %nbytes, align 8, !tbaa !157
  %510 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %MaxInlineImageSize = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %510, i32 0, i32 113
  %511 = load i64, i64* %MaxInlineImageSize, align 8, !tbaa !158
  %conv491 = sitofp i64 %511 to double
  %cmp492 = fcmp olt double %509, %conv491
  %conv493 = zext i1 %cmp492 to i32
  %512 = load i32, i32* %in_line, align 4, !tbaa !52
  %and = and i32 %512, %conv493
  store i32 %and, i32* %in_line, align 4, !tbaa !52
  %513 = bitcast double* %nbytes to i8*
  call void @llvm.lifetime.end(i64 8, i8* %513) #1
  br label %if.end.494

if.end.494:                                       ; preds = %if.else.478, %if.then.477
  %514 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %cmp495 = icmp eq %struct.gs_matrix_s* %514, null
  br i1 %cmp495, label %if.then.497, label %if.end.499

if.then.497:                                      ; preds = %if.end.494
  %515 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm498 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %515, i32 0, i32 5
  %516 = bitcast %struct.gs_matrix_fixed_s* %ctm498 to %struct.gs_matrix_s*
  store %struct.gs_matrix_s* %516, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  br label %if.end.499

if.end.499:                                       ; preds = %if.then.497, %if.end.494
  %517 = bitcast %struct.gs_matrix_s* %mat500 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %517) #1
  %518 = bitcast %struct.gs_matrix_s* %bmat to i8*
  call void @llvm.lifetime.start(i64 24, i8* %518) #1
  %519 = bitcast i32* %code501 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %519) #1
  %p502 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 0
  %x503 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p502, i32 0, i32 0
  %520 = load i32, i32* %x503, align 4, !tbaa !105
  %sub504 = sub nsw i32 0, %520
  %p505 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 0
  %y506 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p505, i32 0, i32 1
  %521 = load i32, i32* %y506, align 4, !tbaa !107
  %sub507 = sub nsw i32 0, %521
  %522 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %Width508 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %522, i32 0, i32 2
  %523 = load i32, i32* %Width508, align 4, !tbaa !123
  %524 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %Height509 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %524, i32 0, i32 3
  %525 = load i32, i32* %Height509, align 4, !tbaa !124
  %526 = load i32, i32* %height, align 4, !tbaa !52
  call void @pdf_make_bitmap_matrix(%struct.gs_matrix_s* %bmat, i32 %sub504, i32 %sub507, i32 %523, i32 %525, i32 %526) #6
  %527 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %ImageMatrix510 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %527, i32 0, i32 1
  %call511 = call i32 @gs_matrix_invert(%struct.gs_matrix_s* %ImageMatrix510, %struct.gs_matrix_s* %mat500) #6
  store i32 %call511, i32* %code501, align 4, !tbaa !52
  %cmp512 = icmp slt i32 %call511, 0
  br i1 %cmp512, label %if.then.523, label %lor.lhs.false.514

lor.lhs.false.514:                                ; preds = %if.end.499
  %call515 = call i32 @gs_matrix_multiply(%struct.gs_matrix_s* %bmat, %struct.gs_matrix_s* %mat500, %struct.gs_matrix_s* %mat500) #6
  store i32 %call515, i32* %code501, align 4, !tbaa !52
  %cmp516 = icmp slt i32 %call515, 0
  br i1 %cmp516, label %if.then.523, label %lor.lhs.false.518

lor.lhs.false.518:                                ; preds = %lor.lhs.false.514
  %528 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %529 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %mat519 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %529, i32 0, i32 13
  %call520 = call i32 @gs_matrix_multiply(%struct.gs_matrix_s* %mat500, %struct.gs_matrix_s* %528, %struct.gs_matrix_s* %mat519) #6
  store i32 %call520, i32* %code501, align 4, !tbaa !52
  %cmp521 = icmp slt i32 %call520, 0
  br i1 %cmp521, label %if.then.523, label %if.end.532

if.then.523:                                      ; preds = %lor.lhs.false.518, %lor.lhs.false.514, %if.end.499
  %530 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %non_gc_memory524 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %530, i32 0, i32 3
  %531 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory524, align 8, !tbaa !91
  %non_gc_memory525 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %531, i32 0, i32 3
  %532 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory525, align 8, !tbaa !91
  %procs526 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %532, i32 0, i32 1
  %free_object527 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs526, i32 0, i32 2
  %533 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object527, align 8, !tbaa !114
  %534 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %non_gc_memory528 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %534, i32 0, i32 3
  %535 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory528, align 8, !tbaa !91
  %non_gc_memory529 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %535, i32 0, i32 3
  %536 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory529, align 8, !tbaa !91
  %537 = load %union.image_union_s*, %union.image_union_s** %image, align 8, !tbaa !1
  %538 = bitcast %union.image_union_s* %537 to i8*
  call void %533(%struct.gs_memory_s* %536, i8* %538, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i32 0, i32 0)) #6
  %539 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs530 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %539, i32 0, i32 1
  %free_object531 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs530, i32 0, i32 2
  %540 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object531, align 8, !tbaa !114
  %541 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %542 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %543 = bitcast %struct.pdf_image_enum_s* %542 to i8*
  call void %540(%struct.gs_memory_s* %541, i8* %543, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0)) #6
  %544 = load i32, i32* %code501, align 4, !tbaa !52
  store i32 %544, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.543

if.end.532:                                       ; preds = %lor.lhs.false.518
  %545 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %mat533 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %545, i32 0, i32 13
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat533, i32 0, i32 0
  %546 = load float, float* %xx, align 4, !tbaa !159
  %547 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %mat534 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %547, i32 0, i32 13
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat534, i32 0, i32 3
  %548 = load float, float* %yy, align 4, !tbaa !160
  %mul535 = fmul float %546, %548
  %549 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %mat536 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %549, i32 0, i32 13
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat536, i32 0, i32 1
  %550 = load float, float* %xy, align 4, !tbaa !161
  %551 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %mat537 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %551, i32 0, i32 13
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat537, i32 0, i32 2
  %552 = load float, float* %yx, align 4, !tbaa !162
  %mul538 = fmul float %550, %552
  %cmp539 = fcmp oeq float %mul535, %mul538
  br i1 %cmp539, label %if.then.541, label %if.end.542

if.then.541:                                      ; preds = %if.end.532
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup.543

if.end.542:                                       ; preds = %if.end.532
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.543

cleanup.543:                                      ; preds = %if.then.541, %if.end.542, %if.then.523
  %553 = bitcast i32* %code501 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %553) #1
  %554 = bitcast %struct.gs_matrix_s* %bmat to i8*
  call void @llvm.lifetime.end(i64 24, i8* %554) #1
  %555 = bitcast %struct.gs_matrix_s* %mat500 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %555) #1
  %cleanup.dest.546 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.546, label %cleanup.950 [
    i32 0, label %cleanup.cont.547
    i32 5, label %fail_and_fallback
  ]

cleanup.cont.547:                                 ; preds = %cleanup.543
  %556 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %557 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call548 = call i32 @pdf_put_clip_path(%struct.gx_device_pdf_s* %556, %struct.gx_clip_path_s* %557) #6
  store i32 %call548, i32* %code, align 4, !tbaa !52
  %558 = load i32, i32* %code, align 4, !tbaa !52
  %cmp549 = icmp slt i32 %558, 0
  br i1 %cmp549, label %if.then.551, label %if.end.560

if.then.551:                                      ; preds = %cleanup.cont.547
  %559 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %non_gc_memory552 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %559, i32 0, i32 3
  %560 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory552, align 8, !tbaa !91
  %non_gc_memory553 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %560, i32 0, i32 3
  %561 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory553, align 8, !tbaa !91
  %procs554 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %561, i32 0, i32 1
  %free_object555 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs554, i32 0, i32 2
  %562 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object555, align 8, !tbaa !114
  %563 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %non_gc_memory556 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %563, i32 0, i32 3
  %564 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory556, align 8, !tbaa !91
  %non_gc_memory557 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %564, i32 0, i32 3
  %565 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory557, align 8, !tbaa !91
  %566 = load %union.image_union_s*, %union.image_union_s** %image, align 8, !tbaa !1
  %567 = bitcast %union.image_union_s* %566 to i8*
  call void %562(%struct.gs_memory_s* %565, i8* %567, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i32 0, i32 0)) #6
  %568 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs558 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %568, i32 0, i32 1
  %free_object559 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs558, i32 0, i32 2
  %569 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object559, align 8, !tbaa !114
  %570 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %571 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %572 = bitcast %struct.pdf_image_enum_s* %571 to i8*
  call void %569(%struct.gs_memory_s* %570, i8* %572, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0)) #6
  %573 = load i32, i32* %code, align 4, !tbaa !52
  store i32 %573, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.950

if.end.560:                                       ; preds = %cleanup.cont.547
  %574 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %writer = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %574, i32 0, i32 12
  call void @pdf_image_writer_init(%struct.pdf_image_writer_s* %writer) #6
  %575 = load i32, i32* %in_line, align 4, !tbaa !52
  %tobool561 = icmp ne i32 %575, 0
  br i1 %tobool561, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end.560
  %576 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %Width562 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %576, i32 0, i32 2
  %577 = load i32, i32* %Width562, align 4, !tbaa !123
  %cmp563 = icmp sle i32 %577, 64
  br i1 %cmp563, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %578 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %Height565 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %578, i32 0, i32 3
  %579 = load i32, i32* %Height565, align 4, !tbaa !124
  %cmp566 = icmp sle i32 %579, 64
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %580 = phi i1 [ false, %lor.rhs ], [ %cmp566, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %if.end.560
  %581 = phi i1 [ true, %if.end.560 ], [ %580, %land.end ]
  %cond568 = select i1 %581, i32 1, i32 2
  %582 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %writer569 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %582, i32 0, i32 12
  %alt_writer_count = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %writer569, i32 0, i32 1
  store i32 %cond568, i32* %alt_writer_count, align 4, !tbaa !163
  %583 = load %union.image_union_s*, %union.image_union_s** %image, align 8, !tbaa !1
  %arrayidx570 = getelementptr inbounds %union.image_union_s, %union.image_union_s* %583, i64 0
  %pixel = bitcast %union.image_union_s* %arrayidx570 to %struct.gs_pixel_image_s*
  %ColorSpace571 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %pixel, i32 0, i32 9
  %584 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace571, align 8, !tbaa !147
  %cmp572 = icmp ne %struct.gs_color_space_s* %584, null
  br i1 %cmp572, label %land.lhs.true.574, label %lor.lhs.false.585

land.lhs.true.574:                                ; preds = %lor.end
  %585 = load %union.image_union_s*, %union.image_union_s** %image, align 8, !tbaa !1
  %arrayidx575 = getelementptr inbounds %union.image_union_s, %union.image_union_s* %585, i64 0
  %pixel576 = bitcast %union.image_union_s* %arrayidx575 to %struct.gs_pixel_image_s*
  %ColorSpace577 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %pixel576, i32 0, i32 9
  %586 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace577, align 8, !tbaa !147
  %type578 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %586, i32 0, i32 0
  %587 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type578, align 8, !tbaa !164
  %index579 = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %587, i32 0, i32 0
  %588 = load i32, i32* %index579, align 4, !tbaa !166
  %cmp580 = icmp eq i32 %588, 10
  br i1 %cmp580, label %land.lhs.true.582, label %lor.lhs.false.585

land.lhs.true.582:                                ; preds = %land.lhs.true.574
  %589 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %589, i32 0, i32 73
  %ColorImage = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params, i32 0, i32 22
  %DownsampleType = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %ColorImage, i32 0, i32 7
  %590 = load i32, i32* %DownsampleType, align 4, !tbaa !168
  %cmp583 = icmp ne i32 %590, 2
  br i1 %cmp583, label %if.then.587, label %lor.lhs.false.585

lor.lhs.false.585:                                ; preds = %land.lhs.true.582, %land.lhs.true.574, %lor.end
  %591 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %transfer_not_identity = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %591, i32 0, i32 139
  %592 = load i32, i32* %transfer_not_identity, align 4, !tbaa !169
  %tobool586 = icmp ne i32 %592, 0
  br i1 %tobool586, label %if.then.587, label %if.end.588

if.then.587:                                      ; preds = %lor.lhs.false.585, %land.lhs.true.582
  store i32 1, i32* %force_lossless, align 4, !tbaa !52
  br label %if.end.588

if.end.588:                                       ; preds = %if.then.587, %lor.lhs.false.585
  %593 = load i32, i32* %in_line, align 4, !tbaa !52
  %tobool589 = icmp ne i32 %593, 0
  %cond590 = select i1 %tobool589, %struct.pdf_color_space_names_s* @pdf_color_space_names_short, %struct.pdf_color_space_names_s* @pdf_color_space_names
  store %struct.pdf_color_space_names_s* %cond590, %struct.pdf_color_space_names_s** %names, align 8, !tbaa !1
  %594 = load i32, i32* %is_mask, align 4, !tbaa !52
  %tobool591 = icmp ne i32 %594, 0
  br i1 %tobool591, label %if.end.656, label %if.then.592

if.then.592:                                      ; preds = %if.end.588
  %595 = load %union.image_union_s*, %union.image_union_s** %image, align 8, !tbaa !1
  %arrayidx593 = getelementptr inbounds %union.image_union_s, %union.image_union_s* %595, i64 0
  %pixel594 = bitcast %union.image_union_s* %arrayidx593 to %struct.gs_pixel_image_s*
  %ColorSpace595 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %pixel594, i32 0, i32 9
  %596 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace595, align 8, !tbaa !147
  %cmp596 = icmp ne %struct.gs_color_space_s* %596, null
  br i1 %cmp596, label %land.lhs.true.598, label %if.end.604

land.lhs.true.598:                                ; preds = %if.then.592
  %597 = load i32, i32* %context.addr, align 4, !tbaa !5
  %cmp599 = icmp eq i32 %597, 1
  br i1 %cmp599, label %if.end.604, label %if.then.601

if.then.601:                                      ; preds = %land.lhs.true.598
  %598 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %599 = load %union.image_union_s*, %union.image_union_s** %image, align 8, !tbaa !1
  %arrayidx602 = getelementptr inbounds %union.image_union_s, %union.image_union_s* %599, i64 0
  %600 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %601 = load %struct.pdf_color_space_names_s*, %struct.pdf_color_space_names_s** %names, align 8, !tbaa !1
  %call603 = call i32 @setup_image_colorspace(%struct.gx_device_pdf_s* %598, %union.image_union_s* %arrayidx602, %struct.gs_color_space_s* %600, %struct.gs_color_space_s** %pcs_orig, %struct.pdf_color_space_names_s* %601, %struct.cos_value_s* %cs_value) #6
  store i32 %call603, i32* %convert_to_process_colors, align 4, !tbaa !52
  br label %if.end.604

if.end.604:                                       ; preds = %if.then.601, %land.lhs.true.598, %if.then.592
  %602 = load i32, i32* %convert_to_process_colors, align 4, !tbaa !52
  %cmp605 = icmp eq i32 %602, 4
  br i1 %cmp605, label %if.then.607, label %if.end.613

if.then.607:                                      ; preds = %if.end.604
  %603 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %604 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %605 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %606 = load i32, i32* %in_line, align 4, !tbaa !52
  %call608 = call i32 @convert_DeviceN_alternate(%struct.gx_device_pdf_s* %603, %struct.gs_imager_state_s* %604, %struct.gs_color_space_s* %605, %struct.gx_device_color_s* null, i32* null, %struct.psdf_set_color_commands_s* null, %struct.gs_client_color_s* null, %struct.cos_value_s* %cs_value, i32 %606) #6
  store i32 %call608, i32* %code, align 4, !tbaa !52
  %607 = load i32, i32* %code, align 4, !tbaa !52
  %cmp609 = icmp slt i32 %607, 0
  br i1 %cmp609, label %if.then.611, label %if.end.612

if.then.611:                                      ; preds = %if.then.607
  br label %fail_and_fallback

if.end.612:                                       ; preds = %if.then.607
  br label %if.end.613

if.end.613:                                       ; preds = %if.end.612, %if.end.604
  %608 = load i32, i32* %convert_to_process_colors, align 4, !tbaa !52
  %cmp614 = icmp eq i32 %608, 3
  br i1 %cmp614, label %if.then.616, label %if.end.622

if.then.616:                                      ; preds = %if.end.613
  %609 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %610 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %611 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %612 = load i32, i32* %in_line, align 4, !tbaa !52
  %call617 = call i32 @convert_separation_alternate(%struct.gx_device_pdf_s* %609, %struct.gs_imager_state_s* %610, %struct.gs_color_space_s* %611, %struct.gx_device_color_s* null, i32* null, %struct.psdf_set_color_commands_s* null, %struct.gs_client_color_s* null, %struct.cos_value_s* %cs_value, i32 %612) #6
  store i32 %call617, i32* %code, align 4, !tbaa !52
  %613 = load i32, i32* %code, align 4, !tbaa !52
  %cmp618 = icmp slt i32 %613, 0
  br i1 %cmp618, label %if.then.620, label %if.end.621

if.then.620:                                      ; preds = %if.then.616
  br label %fail_and_fallback

if.end.621:                                       ; preds = %if.then.616
  br label %if.end.622

if.end.622:                                       ; preds = %if.end.621, %if.end.613
  %614 = load i32, i32* %convert_to_process_colors, align 4, !tbaa !52
  %cmp623 = icmp eq i32 %614, 1
  br i1 %cmp623, label %if.then.625, label %if.else.639

if.then.625:                                      ; preds = %if.end.622
  %615 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %616 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %pcm_color_info_index = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %616, i32 0, i32 206
  %617 = load i32, i32* %pcm_color_info_index, align 4, !tbaa !170
  %call626 = call i32 @make_device_color_space(%struct.gx_device_pdf_s* %615, i32 %617, %struct.gs_color_space_s** %pcs_device) #6
  store i32 %call626, i32* %code, align 4, !tbaa !52
  %618 = load i32, i32* %code, align 4, !tbaa !52
  %cmp627 = icmp slt i32 %618, 0
  br i1 %cmp627, label %if.then.629, label %if.end.630

if.then.629:                                      ; preds = %if.then.625
  br label %fail_and_fallback

if.end.630:                                       ; preds = %if.then.625
  %619 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_device, align 8, !tbaa !1
  %620 = load %union.image_union_s*, %union.image_union_s** %image, align 8, !tbaa !1
  %arrayidx631 = getelementptr inbounds %union.image_union_s, %union.image_union_s* %620, i64 0
  %pixel632 = bitcast %union.image_union_s* %arrayidx631 to %struct.gs_pixel_image_s*
  %ColorSpace633 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %pixel632, i32 0, i32 9
  store %struct.gs_color_space_s* %619, %struct.gs_color_space_s** %ColorSpace633, align 8, !tbaa !147
  %621 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %622 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_device, align 8, !tbaa !1
  %623 = load %struct.pdf_color_space_names_s*, %struct.pdf_color_space_names_s** %names, align 8, !tbaa !1
  %624 = load i32, i32* %in_line, align 4, !tbaa !52
  %call634 = call i32 @pdf_color_space_named(%struct.gx_device_pdf_s* %621, %struct.cos_value_s* %cs_value, %struct.gs_range_s** %pranges, %struct.gs_color_space_s* %622, %struct.pdf_color_space_names_s* %623, i32 %624, i8* null, i32 0, i32 0) #6
  store i32 %call634, i32* %code, align 4, !tbaa !52
  %625 = load i32, i32* %code, align 4, !tbaa !52
  %cmp635 = icmp slt i32 %625, 0
  br i1 %cmp635, label %if.then.637, label %if.end.638

if.then.637:                                      ; preds = %if.end.630
  br label %fail_and_fallback

if.end.638:                                       ; preds = %if.end.630
  br label %if.end.655

if.else.639:                                      ; preds = %if.end.622
  %626 = load i32, i32* %convert_to_process_colors, align 4, !tbaa !52
  %cmp640 = icmp eq i32 %626, 2
  br i1 %cmp640, label %if.then.642, label %if.else.648

if.then.642:                                      ; preds = %if.else.639
  store i32 0, i32* %convert_to_process_colors, align 4, !tbaa !52
  %627 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %628 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %629 = load %struct.pdf_color_space_names_s*, %struct.pdf_color_space_names_s** %names, align 8, !tbaa !1
  %630 = load i32, i32* %in_line, align 4, !tbaa !52
  %call643 = call i32 @pdf_color_space_named(%struct.gx_device_pdf_s* %627, %struct.cos_value_s* %cs_value, %struct.gs_range_s** %pranges, %struct.gs_color_space_s* %628, %struct.pdf_color_space_names_s* %629, i32 %630, i8* null, i32 0, i32 1) #6
  store i32 %call643, i32* %code, align 4, !tbaa !52
  %631 = load i32, i32* %code, align 4, !tbaa !52
  %cmp644 = icmp slt i32 %631, 0
  br i1 %cmp644, label %if.then.646, label %if.end.647

if.then.646:                                      ; preds = %if.then.642
  br label %fail_and_fallback

if.end.647:                                       ; preds = %if.then.642
  br label %if.end.654

if.else.648:                                      ; preds = %if.else.639
  store i32 0, i32* %convert_to_process_colors, align 4, !tbaa !52
  %632 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %633 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %634 = load %struct.pdf_color_space_names_s*, %struct.pdf_color_space_names_s** %names, align 8, !tbaa !1
  %635 = load i32, i32* %in_line, align 4, !tbaa !52
  %call649 = call i32 @pdf_color_space_named(%struct.gx_device_pdf_s* %632, %struct.cos_value_s* %cs_value, %struct.gs_range_s** %pranges, %struct.gs_color_space_s* %633, %struct.pdf_color_space_names_s* %634, i32 %635, i8* null, i32 0, i32 0) #6
  store i32 %call649, i32* %code, align 4, !tbaa !52
  %636 = load i32, i32* %code, align 4, !tbaa !52
  %cmp650 = icmp slt i32 %636, 0
  br i1 %cmp650, label %if.then.652, label %if.end.653

if.then.652:                                      ; preds = %if.else.648
  br label %fail_and_fallback

if.end.653:                                       ; preds = %if.else.648
  br label %if.end.654

if.end.654:                                       ; preds = %if.end.653, %if.end.647
  br label %if.end.655

if.end.655:                                       ; preds = %if.end.654, %if.end.638
  br label %if.end.656

if.end.656:                                       ; preds = %if.end.655, %if.end.588
  %637 = load %union.image_union_s*, %union.image_union_s** %image, align 8, !tbaa !1
  %arrayidx657 = getelementptr inbounds %union.image_union_s, %union.image_union_s* %637, i64 1
  %638 = load %union.image_union_s*, %union.image_union_s** %image, align 8, !tbaa !1
  %arrayidx658 = getelementptr inbounds %union.image_union_s, %union.image_union_s* %638, i64 0
  %639 = bitcast %union.image_union_s* %arrayidx657 to i8*
  %640 = bitcast %union.image_union_s* %arrayidx658 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %639, i8* %640, i64 2248, i32 8, i1 false), !tbaa.struct !171
  %641 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %CompatibilityLevel659 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %641, i32 0, i32 75
  %642 = load double, double* %CompatibilityLevel659, align 8, !tbaa !104
  %643 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %ParamCompatibilityLevel = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %643, i32 0, i32 72
  store double %642, double* %ParamCompatibilityLevel, align 8, !tbaa !172
  %644 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %645 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %writer660 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %645, i32 0, i32 12
  %646 = load i32, i32* %width, align 4, !tbaa !52
  %647 = load i32, i32* %height, align 4, !tbaa !52
  %648 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pnamed, align 8, !tbaa !1
  %649 = load i32, i32* %in_line, align 4, !tbaa !52
  %call661 = call i32 @pdf_begin_write_image(%struct.gx_device_pdf_s* %644, %struct.pdf_image_writer_s* %writer660, i64 0, i32 %646, i32 %647, %struct.cos_dict_s* %648, i32 %649) #6
  store i32 %call661, i32* %code, align 4, !tbaa !52
  %650 = load i32, i32* %code, align 4, !tbaa !52
  %cmp662 = icmp slt i32 %650, 0
  br i1 %cmp662, label %if.then.664, label %if.end.665

if.then.664:                                      ; preds = %if.end.656
  br label %fail_and_fallback

if.end.665:                                       ; preds = %if.end.656
  %651 = load i32, i32* %in_line, align 4, !tbaa !52
  %tobool666 = icmp ne i32 %651, 0
  br i1 %tobool666, label %if.then.667, label %if.else.673

if.then.667:                                      ; preds = %if.end.665
  %652 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %653 = bitcast %struct.gx_device_pdf_s* %652 to %struct.gx_device_psdf_s*
  %654 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %writer668 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %654, i32 0, i32 12
  %binary = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %writer668, i32 0, i32 0
  %arrayidx669 = getelementptr inbounds [4 x %struct.psdf_binary_writer_s], [4 x %struct.psdf_binary_writer_s]* %binary, i32 0, i64 0
  %655 = load %union.image_union_s*, %union.image_union_s** %image, align 8, !tbaa !1
  %arrayidx670 = getelementptr inbounds %union.image_union_s, %union.image_union_s* %655, i64 0
  %pixel671 = bitcast %union.image_union_s* %arrayidx670 to %struct.gs_pixel_image_s*
  %656 = load i32, i32* %in_line, align 4, !tbaa !52
  %657 = load i32, i32* %convert_to_process_colors, align 4, !tbaa !52
  %call672 = call i32 @new_setup_lossless_filters(%struct.gx_device_psdf_s* %653, %struct.psdf_binary_writer_s* %arrayidx669, %struct.gs_pixel_image_s* %pixel671, i32 %656, i32 %657) #6
  store i32 %call672, i32* %code, align 4, !tbaa !52
  br label %if.end.699

if.else.673:                                      ; preds = %if.end.665
  %658 = load i32, i32* %force_lossless, align 4, !tbaa !52
  %tobool674 = icmp ne i32 %658, 0
  br i1 %tobool674, label %if.then.675, label %if.else.691

if.then.675:                                      ; preds = %if.else.673
  %659 = bitcast i32* %saved_downsample to i8*
  call void @llvm.lifetime.start(i64 4, i8* %659) #1
  %660 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %params676 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %660, i32 0, i32 73
  %ColorImage677 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params676, i32 0, i32 22
  %DownsampleType678 = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %ColorImage677, i32 0, i32 7
  %661 = load i32, i32* %DownsampleType678, align 4, !tbaa !168
  store i32 %661, i32* %saved_downsample, align 4, !tbaa !52
  %662 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %params679 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %662, i32 0, i32 73
  %ColorImage680 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params679, i32 0, i32 22
  %DownsampleType681 = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %ColorImage680, i32 0, i32 7
  store i32 2, i32* %DownsampleType681, align 4, !tbaa !168
  %663 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %664 = bitcast %struct.gx_device_pdf_s* %663 to %struct.gx_device_psdf_s*
  %665 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %writer682 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %665, i32 0, i32 12
  %binary683 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %writer682, i32 0, i32 0
  %arrayidx684 = getelementptr inbounds [4 x %struct.psdf_binary_writer_s], [4 x %struct.psdf_binary_writer_s]* %binary683, i32 0, i64 0
  %666 = load %union.image_union_s*, %union.image_union_s** %image, align 8, !tbaa !1
  %arrayidx685 = getelementptr inbounds %union.image_union_s, %union.image_union_s* %666, i64 0
  %pixel686 = bitcast %union.image_union_s* %arrayidx685 to %struct.gs_pixel_image_s*
  %667 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %668 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %669 = load i32, i32* %in_line, align 4, !tbaa !52
  %670 = load i32, i32* %convert_to_process_colors, align 4, !tbaa !52
  %call687 = call i32 @new_setup_image_filters(%struct.gx_device_psdf_s* %664, %struct.psdf_binary_writer_s* %arrayidx684, %struct.gs_pixel_image_s* %pixel686, %struct.gs_matrix_s* %667, %struct.gs_imager_state_s* %668, i32 1, i32 %669, i32 %670) #6
  store i32 %call687, i32* %code, align 4, !tbaa !52
  %671 = load i32, i32* %saved_downsample, align 4, !tbaa !52
  %672 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %params688 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %672, i32 0, i32 73
  %ColorImage689 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params688, i32 0, i32 22
  %DownsampleType690 = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %ColorImage689, i32 0, i32 7
  store i32 %671, i32* %DownsampleType690, align 4, !tbaa !168
  %673 = bitcast i32* %saved_downsample to i8*
  call void @llvm.lifetime.end(i64 4, i8* %673) #1
  br label %if.end.698

if.else.691:                                      ; preds = %if.else.673
  %674 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %675 = bitcast %struct.gx_device_pdf_s* %674 to %struct.gx_device_psdf_s*
  %676 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %writer692 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %676, i32 0, i32 12
  %binary693 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %writer692, i32 0, i32 0
  %arrayidx694 = getelementptr inbounds [4 x %struct.psdf_binary_writer_s], [4 x %struct.psdf_binary_writer_s]* %binary693, i32 0, i64 0
  %677 = load %union.image_union_s*, %union.image_union_s** %image, align 8, !tbaa !1
  %arrayidx695 = getelementptr inbounds %union.image_union_s, %union.image_union_s* %677, i64 0
  %pixel696 = bitcast %union.image_union_s* %arrayidx695 to %struct.gs_pixel_image_s*
  %678 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %679 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %680 = load i32, i32* %in_line, align 4, !tbaa !52
  %681 = load i32, i32* %convert_to_process_colors, align 4, !tbaa !52
  %call697 = call i32 @new_setup_image_filters(%struct.gx_device_psdf_s* %675, %struct.psdf_binary_writer_s* %arrayidx694, %struct.gs_pixel_image_s* %pixel696, %struct.gs_matrix_s* %678, %struct.gs_imager_state_s* %679, i32 1, i32 %680, i32 %681) #6
  store i32 %call697, i32* %code, align 4, !tbaa !52
  br label %if.end.698

if.end.698:                                       ; preds = %if.else.691, %if.then.675
  br label %if.end.699

if.end.699:                                       ; preds = %if.end.698, %if.then.667
  %682 = load i32, i32* %code, align 4, !tbaa !52
  %cmp700 = icmp slt i32 %682, 0
  br i1 %cmp700, label %if.then.702, label %if.end.703

if.then.702:                                      ; preds = %if.end.699
  br label %fail_and_fallback

if.end.703:                                       ; preds = %if.end.699
  %683 = load i32, i32* %convert_to_process_colors, align 4, !tbaa !52
  %tobool704 = icmp ne i32 %683, 0
  br i1 %tobool704, label %if.then.705, label %if.end.722

if.then.705:                                      ; preds = %if.end.703
  %684 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_orig, align 8, !tbaa !1
  %685 = load %union.image_union_s*, %union.image_union_s** %image, align 8, !tbaa !1
  %arrayidx706 = getelementptr inbounds %union.image_union_s, %union.image_union_s* %685, i64 0
  %pixel707 = bitcast %union.image_union_s* %arrayidx706 to %struct.gs_pixel_image_s*
  %ColorSpace708 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %pixel707, i32 0, i32 9
  store %struct.gs_color_space_s* %684, %struct.gs_color_space_s** %ColorSpace708, align 8, !tbaa !147
  %686 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %writer709 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %686, i32 0, i32 12
  %binary710 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %writer709, i32 0, i32 0
  %arrayidx711 = getelementptr inbounds [4 x %struct.psdf_binary_writer_s], [4 x %struct.psdf_binary_writer_s]* %binary710, i32 0, i64 0
  %687 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %688 = bitcast %struct.gx_device_pdf_s* %687 to %struct.gx_device_psdf_s*
  %689 = load %union.image_union_s*, %union.image_union_s** %image, align 8, !tbaa !1
  %arrayidx712 = getelementptr inbounds %union.image_union_s, %union.image_union_s* %689, i64 0
  %pixel713 = bitcast %union.image_union_s* %arrayidx712 to %struct.gs_pixel_image_s*
  %690 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %call714 = call i32 @psdf_setup_image_colors_filter(%struct.psdf_binary_writer_s* %arrayidx711, %struct.gx_device_psdf_s* %688, %struct.gs_pixel_image_s* %pixel713, %struct.gs_imager_state_s* %690) #6
  store i32 %call714, i32* %code, align 4, !tbaa !52
  %691 = load i32, i32* %code, align 4, !tbaa !52
  %cmp715 = icmp slt i32 %691, 0
  br i1 %cmp715, label %if.then.717, label %if.end.718

if.then.717:                                      ; preds = %if.then.705
  br label %fail_and_fallback

if.end.718:                                       ; preds = %if.then.705
  %692 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_device, align 8, !tbaa !1
  %693 = load %union.image_union_s*, %union.image_union_s** %image, align 8, !tbaa !1
  %arrayidx719 = getelementptr inbounds %union.image_union_s, %union.image_union_s* %693, i64 0
  %pixel720 = bitcast %union.image_union_s* %arrayidx719 to %struct.gs_pixel_image_s*
  %ColorSpace721 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %pixel720, i32 0, i32 9
  store %struct.gs_color_space_s* %692, %struct.gs_color_space_s** %ColorSpace721, align 8, !tbaa !147
  br label %if.end.722

if.end.722:                                       ; preds = %if.end.718, %if.end.703
  %694 = load i32, i32* %reduce_bits, align 4, !tbaa !52
  %tobool723 = icmp ne i32 %694, 0
  br i1 %tobool723, label %if.then.724, label %if.end.736

if.then.724:                                      ; preds = %if.end.722
  %695 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %writer725 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %695, i32 0, i32 12
  %binary726 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %writer725, i32 0, i32 0
  %arrayidx727 = getelementptr inbounds [4 x %struct.psdf_binary_writer_s], [4 x %struct.psdf_binary_writer_s]* %binary726, i32 0, i64 0
  %696 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %Width728 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %696, i32 0, i32 2
  %697 = load i32, i32* %Width728, align 4, !tbaa !123
  %698 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %ColorSpace729 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %698, i32 0, i32 9
  %699 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace729, align 8, !tbaa !147
  %call730 = call i32 @gs_color_space_num_components(%struct.gs_color_space_s* %699) #6
  %700 = load i32, i32* %reduce_bits, align 4, !tbaa !52
  %call731 = call i32 @new_resize_input(%struct.psdf_binary_writer_s* %arrayidx727, i32 %697, i32 %call730, i32 %700, i32 8) #6
  store i32 %call731, i32* %code, align 4, !tbaa !52
  %701 = load i32, i32* %code, align 4, !tbaa !52
  %cmp732 = icmp slt i32 %701, 0
  br i1 %cmp732, label %if.then.734, label %if.end.735

if.then.734:                                      ; preds = %if.then.724
  br label %fail_and_fallback

if.end.735:                                       ; preds = %if.then.724
  br label %if.end.736

if.end.736:                                       ; preds = %if.end.735, %if.end.722
  %702 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %writer737 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %702, i32 0, i32 12
  %alt_writer_count738 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %writer737, i32 0, i32 1
  %703 = load i32, i32* %alt_writer_count738, align 4, !tbaa !163
  %cmp739 = icmp sgt i32 %703, 1
  br i1 %cmp739, label %if.then.741, label %if.end.830

if.then.741:                                      ; preds = %if.end.736
  %704 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %705 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %writer742 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %705, i32 0, i32 12
  %binary743 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %writer742, i32 0, i32 0
  %arrayidx744 = getelementptr inbounds [4 x %struct.psdf_binary_writer_s], [4 x %struct.psdf_binary_writer_s]* %binary743, i32 0, i64 1
  %call745 = call i32 @pdf_make_alt_stream(%struct.gx_device_pdf_s* %704, %struct.psdf_binary_writer_s* %arrayidx744) #6
  store i32 %call745, i32* %code, align 4, !tbaa !52
  %706 = load i32, i32* %code, align 4, !tbaa !52
  %tobool746 = icmp ne i32 %706, 0
  br i1 %tobool746, label %if.then.747, label %if.end.748

if.then.747:                                      ; preds = %if.then.741
  br label %fail_and_fallback

if.end.748:                                       ; preds = %if.then.741
  %707 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %708 = bitcast %struct.gx_device_pdf_s* %707 to %struct.gx_device_psdf_s*
  %709 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %writer749 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %709, i32 0, i32 12
  %binary750 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %writer749, i32 0, i32 0
  %arrayidx751 = getelementptr inbounds [4 x %struct.psdf_binary_writer_s], [4 x %struct.psdf_binary_writer_s]* %binary750, i32 0, i64 1
  %710 = load %union.image_union_s*, %union.image_union_s** %image, align 8, !tbaa !1
  %arrayidx752 = getelementptr inbounds %union.image_union_s, %union.image_union_s* %710, i64 1
  %pixel753 = bitcast %union.image_union_s* %arrayidx752 to %struct.gs_pixel_image_s*
  %711 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %712 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %713 = load i32, i32* %force_lossless, align 4, !tbaa !52
  %714 = load i32, i32* %in_line, align 4, !tbaa !52
  %715 = load i32, i32* %convert_to_process_colors, align 4, !tbaa !52
  %call754 = call i32 @new_setup_image_filters(%struct.gx_device_psdf_s* %708, %struct.psdf_binary_writer_s* %arrayidx751, %struct.gs_pixel_image_s* %pixel753, %struct.gs_matrix_s* %711, %struct.gs_imager_state_s* %712, i32 %713, i32 %714, i32 %715) #6
  store i32 %call754, i32* %code, align 4, !tbaa !52
  %716 = load i32, i32* %code, align 4, !tbaa !52
  %cmp755 = icmp eq i32 %716, -15
  br i1 %cmp755, label %if.then.757, label %if.else.791

if.then.757:                                      ; preds = %if.end.748
  store i32 1, i32* %i, align 4, !tbaa !52
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.757
  %717 = load i32, i32* %i, align 4, !tbaa !52
  %718 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %writer758 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %718, i32 0, i32 12
  %alt_writer_count759 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %writer758, i32 0, i32 1
  %719 = load i32, i32* %alt_writer_count759, align 4, !tbaa !163
  %cmp760 = icmp slt i32 %717, %719
  br i1 %cmp760, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %720 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %720) #1
  %721 = load i32, i32* %i, align 4, !tbaa !52
  %idxprom = sext i32 %721 to i64
  %722 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %writer762 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %722, i32 0, i32 12
  %binary763 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %writer762, i32 0, i32 0
  %arrayidx764 = getelementptr inbounds [4 x %struct.psdf_binary_writer_s], [4 x %struct.psdf_binary_writer_s]* %binary763, i32 0, i64 %idxprom
  %strm = getelementptr inbounds %struct.psdf_binary_writer_s, %struct.psdf_binary_writer_s* %arrayidx764, i32 0, i32 2
  %723 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !173
  store %struct.stream_s* %723, %struct.stream_s** %s, align 8, !tbaa !1
  %724 = bitcast %struct.cos_stream_s** %pcos to i8*
  call void @llvm.lifetime.start(i64 8, i8* %724) #1
  %725 = load i32, i32* %i, align 4, !tbaa !52
  %idxprom765 = sext i32 %725 to i64
  %726 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %writer766 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %726, i32 0, i32 12
  %binary767 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %writer766, i32 0, i32 0
  %arrayidx768 = getelementptr inbounds [4 x %struct.psdf_binary_writer_s], [4 x %struct.psdf_binary_writer_s]* %binary767, i32 0, i64 %idxprom765
  %strm769 = getelementptr inbounds %struct.psdf_binary_writer_s, %struct.psdf_binary_writer_s* %arrayidx768, i32 0, i32 2
  %727 = load %struct.stream_s*, %struct.stream_s** %strm769, align 8, !tbaa !173
  %call770 = call %struct.cos_stream_s* @cos_stream_from_pipeline(%struct.stream_s* %727) #6
  store %struct.cos_stream_s* %call770, %struct.cos_stream_s** %pcos, align 8, !tbaa !1
  %call771 = call i32 @s_close_filters(%struct.stream_s** %s, %struct.stream_s* null) #6
  %728 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %728, i32 0, i32 43
  %729 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory, align 8, !tbaa !175
  %procs772 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %729, i32 0, i32 1
  %free_object773 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs772, i32 0, i32 2
  %730 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object773, align 8, !tbaa !114
  %731 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory774 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %731, i32 0, i32 43
  %732 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory774, align 8, !tbaa !175
  %733 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %734 = bitcast %struct.stream_s* %733 to i8*
  call void %730(%struct.gs_memory_s* %732, i8* %734, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i32 0, i32 0)) #6
  %735 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcos, align 8, !tbaa !1
  %cos_procs = getelementptr inbounds %struct.cos_stream_s, %struct.cos_stream_s* %735, i32 0, i32 0
  %736 = load %struct.cos_object_procs_s*, %struct.cos_object_procs_s** %cos_procs, align 8, !tbaa !176
  %release = getelementptr inbounds %struct.cos_object_procs_s, %struct.cos_object_procs_s* %736, i32 0, i32 0
  %737 = load void (%struct.cos_object_s*, i8*)*, void (%struct.cos_object_s*, i8*)** %release, align 8, !tbaa !178
  %738 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcos, align 8, !tbaa !1
  %739 = bitcast %struct.cos_stream_s* %738 to %struct.cos_object_s*
  call void %737(%struct.cos_object_s* %739, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.17, i32 0, i32 0)) #6
  %740 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory775 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %740, i32 0, i32 43
  %741 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory775, align 8, !tbaa !175
  %procs776 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %741, i32 0, i32 1
  %free_object777 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs776, i32 0, i32 2
  %742 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object777, align 8, !tbaa !114
  %743 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory778 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %743, i32 0, i32 43
  %744 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory778, align 8, !tbaa !175
  %745 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcos, align 8, !tbaa !1
  %746 = bitcast %struct.cos_stream_s* %745 to i8*
  call void %742(%struct.gs_memory_s* %744, i8* %746, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i32 0, i32 0)) #6
  %747 = bitcast %struct.cos_stream_s** %pcos to i8*
  call void @llvm.lifetime.end(i64 8, i8* %747) #1
  %748 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %748) #1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %749 = load i32, i32* %i, align 4, !tbaa !52
  %inc779 = add nsw i32 %749, 1
  store i32 %inc779, i32* %i, align 4, !tbaa !52
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %750 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %writer780 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %750, i32 0, i32 12
  %alt_writer_count781 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %writer780, i32 0, i32 1
  store i32 1, i32* %alt_writer_count781, align 4, !tbaa !163
  %751 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %writer782 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %751, i32 0, i32 12
  %binary783 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %writer782, i32 0, i32 0
  %arraydecay784 = getelementptr inbounds [4 x %struct.psdf_binary_writer_s], [4 x %struct.psdf_binary_writer_s]* %binary783, i32 0, i32 0
  %add.ptr = getelementptr inbounds %struct.psdf_binary_writer_s, %struct.psdf_binary_writer_s* %arraydecay784, i64 1
  %752 = bitcast %struct.psdf_binary_writer_s* %add.ptr to i8*
  %call785 = call i8* @memset(i8* %752, i32 0, i64 32) #7
  %753 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %writer786 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %753, i32 0, i32 12
  %binary787 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %writer786, i32 0, i32 0
  %arraydecay788 = getelementptr inbounds [4 x %struct.psdf_binary_writer_s], [4 x %struct.psdf_binary_writer_s]* %binary787, i32 0, i32 0
  %add.ptr789 = getelementptr inbounds %struct.psdf_binary_writer_s, %struct.psdf_binary_writer_s* %arraydecay788, i64 2
  %754 = bitcast %struct.psdf_binary_writer_s* %add.ptr789 to i8*
  %call790 = call i8* @memset(i8* %754, i32 0, i64 32) #7
  br label %if.end.815

if.else.791:                                      ; preds = %if.end.748
  %755 = load i32, i32* %code, align 4, !tbaa !52
  %tobool792 = icmp ne i32 %755, 0
  br i1 %tobool792, label %if.then.793, label %if.else.794

if.then.793:                                      ; preds = %if.else.791
  br label %fail_and_fallback

if.else.794:                                      ; preds = %if.else.791
  %756 = load i32, i32* %convert_to_process_colors, align 4, !tbaa !52
  %tobool795 = icmp ne i32 %756, 0
  br i1 %tobool795, label %if.then.796, label %if.end.813

if.then.796:                                      ; preds = %if.else.794
  %757 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_orig, align 8, !tbaa !1
  %758 = load %union.image_union_s*, %union.image_union_s** %image, align 8, !tbaa !1
  %arrayidx797 = getelementptr inbounds %union.image_union_s, %union.image_union_s* %758, i64 1
  %pixel798 = bitcast %union.image_union_s* %arrayidx797 to %struct.gs_pixel_image_s*
  %ColorSpace799 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %pixel798, i32 0, i32 9
  store %struct.gs_color_space_s* %757, %struct.gs_color_space_s** %ColorSpace799, align 8, !tbaa !147
  %759 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %writer800 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %759, i32 0, i32 12
  %binary801 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %writer800, i32 0, i32 0
  %arrayidx802 = getelementptr inbounds [4 x %struct.psdf_binary_writer_s], [4 x %struct.psdf_binary_writer_s]* %binary801, i32 0, i64 1
  %760 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %761 = bitcast %struct.gx_device_pdf_s* %760 to %struct.gx_device_psdf_s*
  %762 = load %union.image_union_s*, %union.image_union_s** %image, align 8, !tbaa !1
  %arrayidx803 = getelementptr inbounds %union.image_union_s, %union.image_union_s* %762, i64 1
  %pixel804 = bitcast %union.image_union_s* %arrayidx803 to %struct.gs_pixel_image_s*
  %763 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %call805 = call i32 @psdf_setup_image_colors_filter(%struct.psdf_binary_writer_s* %arrayidx802, %struct.gx_device_psdf_s* %761, %struct.gs_pixel_image_s* %pixel804, %struct.gs_imager_state_s* %763) #6
  store i32 %call805, i32* %code, align 4, !tbaa !52
  %764 = load i32, i32* %code, align 4, !tbaa !52
  %cmp806 = icmp slt i32 %764, 0
  br i1 %cmp806, label %if.then.808, label %if.end.809

if.then.808:                                      ; preds = %if.then.796
  br label %fail_and_fallback

if.end.809:                                       ; preds = %if.then.796
  %765 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_device, align 8, !tbaa !1
  %766 = load %union.image_union_s*, %union.image_union_s** %image, align 8, !tbaa !1
  %arrayidx810 = getelementptr inbounds %union.image_union_s, %union.image_union_s* %766, i64 1
  %pixel811 = bitcast %union.image_union_s* %arrayidx810 to %struct.gs_pixel_image_s*
  %ColorSpace812 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %pixel811, i32 0, i32 9
  store %struct.gs_color_space_s* %765, %struct.gs_color_space_s** %ColorSpace812, align 8, !tbaa !147
  br label %if.end.813

if.end.813:                                       ; preds = %if.end.809, %if.else.794
  br label %if.end.814

if.end.814:                                       ; preds = %if.end.813
  br label %if.end.815

if.end.815:                                       ; preds = %if.end.814, %for.end
  %767 = load i32, i32* %reduce_bits, align 4, !tbaa !52
  %tobool816 = icmp ne i32 %767, 0
  br i1 %tobool816, label %if.then.817, label %if.end.829

if.then.817:                                      ; preds = %if.end.815
  %768 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %writer818 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %768, i32 0, i32 12
  %binary819 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %writer818, i32 0, i32 0
  %arrayidx820 = getelementptr inbounds [4 x %struct.psdf_binary_writer_s], [4 x %struct.psdf_binary_writer_s]* %binary819, i32 0, i64 0
  %769 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %Width821 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %769, i32 0, i32 2
  %770 = load i32, i32* %Width821, align 4, !tbaa !123
  %771 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %ColorSpace822 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %771, i32 0, i32 9
  %772 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace822, align 8, !tbaa !147
  %call823 = call i32 @gs_color_space_num_components(%struct.gs_color_space_s* %772) #6
  %773 = load i32, i32* %reduce_bits, align 4, !tbaa !52
  %call824 = call i32 @new_resize_input(%struct.psdf_binary_writer_s* %arrayidx820, i32 %770, i32 %call823, i32 %773, i32 8) #6
  store i32 %call824, i32* %code, align 4, !tbaa !52
  %774 = load i32, i32* %code, align 4, !tbaa !52
  %cmp825 = icmp slt i32 %774, 0
  br i1 %cmp825, label %if.then.827, label %if.end.828

if.then.827:                                      ; preds = %if.then.817
  br label %fail_and_fallback

if.end.828:                                       ; preds = %if.then.817
  br label %if.end.829

if.end.829:                                       ; preds = %if.end.828, %if.end.815
  br label %if.end.830

if.end.830:                                       ; preds = %if.end.829, %if.end.736
  store i32 0, i32* %i, align 4, !tbaa !52
  br label %for.cond.831

for.cond.831:                                     ; preds = %for.inc.845, %if.end.830
  %775 = load i32, i32* %i, align 4, !tbaa !52
  %776 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %writer832 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %776, i32 0, i32 12
  %alt_writer_count833 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %writer832, i32 0, i32 1
  %777 = load i32, i32* %alt_writer_count833, align 4, !tbaa !163
  %cmp834 = icmp slt i32 %775, %777
  br i1 %cmp834, label %for.body.836, label %for.end.847

for.body.836:                                     ; preds = %for.cond.831
  %778 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %779 = load i32, i32* %num_components, align 4, !tbaa !52
  %780 = load %struct.gs_range_s*, %struct.gs_range_s** %pranges, align 8, !tbaa !1
  %781 = load i32, i32* %i, align 4, !tbaa !52
  %782 = load i32, i32* %i, align 4, !tbaa !52
  %idxprom837 = sext i32 %782 to i64
  %783 = load %union.image_union_s*, %union.image_union_s** %image, align 8, !tbaa !1
  %arrayidx838 = getelementptr inbounds %union.image_union_s, %union.image_union_s* %783, i64 %idxprom837
  %pixel839 = bitcast %union.image_union_s* %arrayidx838 to %struct.gs_pixel_image_s*
  %784 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %call840 = call i32 @pdf_begin_image_data_decoded(%struct.gx_device_pdf_s* %778, i32 %779, %struct.gs_range_s* %780, i32 %781, %struct.gs_pixel_image_s* %pixel839, %struct.cos_value_s* %cs_value, %struct.pdf_image_enum_s* %784) #6
  store i32 %call840, i32* %code, align 4, !tbaa !52
  %785 = load i32, i32* %code, align 4, !tbaa !52
  %cmp841 = icmp slt i32 %785, 0
  br i1 %cmp841, label %if.then.843, label %if.end.844

if.then.843:                                      ; preds = %for.body.836
  br label %fail_and_fallback

if.end.844:                                       ; preds = %for.body.836
  br label %for.inc.845

for.inc.845:                                      ; preds = %if.end.844
  %786 = load i32, i32* %i, align 4, !tbaa !52
  %inc846 = add nsw i32 %786, 1
  store i32 %inc846, i32* %i, align 4, !tbaa !52
  br label %for.cond.831

for.end.847:                                      ; preds = %for.cond.831
  %787 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %writer848 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %787, i32 0, i32 12
  %alt_writer_count849 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %writer848, i32 0, i32 1
  %788 = load i32, i32* %alt_writer_count849, align 4, !tbaa !163
  %cmp850 = icmp eq i32 %788, 2
  br i1 %cmp850, label %if.then.852, label %if.end.862

if.then.852:                                      ; preds = %for.end.847
  %789 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %writer853 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %789, i32 0, i32 12
  %binary854 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %writer853, i32 0, i32 0
  %arrayidx855 = getelementptr inbounds [4 x %struct.psdf_binary_writer_s], [4 x %struct.psdf_binary_writer_s]* %binary854, i32 0, i64 2
  %790 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %791 = bitcast %struct.gx_device_pdf_s* %790 to %struct.gx_device_psdf_s*
  %792 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %Width856 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %792, i32 0, i32 2
  %793 = load i32, i32* %Width856, align 4, !tbaa !123
  %794 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %Height857 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %794, i32 0, i32 3
  %795 = load i32, i32* %Height857, align 4, !tbaa !124
  %796 = load i32, i32* %num_components, align 4, !tbaa !52
  %797 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %BitsPerComponent858 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %797, i32 0, i32 4
  %798 = load i32, i32* %BitsPerComponent858, align 4, !tbaa !125
  %call859 = call i32 @psdf_setup_compression_chooser(%struct.psdf_binary_writer_s* %arrayidx855, %struct.gx_device_psdf_s* %791, i32 %793, i32 %795, i32 %796, i32 %798) #6
  %799 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %writer860 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %799, i32 0, i32 12
  %alt_writer_count861 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %writer860, i32 0, i32 1
  store i32 3, i32* %alt_writer_count861, align 4, !tbaa !163
  br label %if.end.862

if.end.862:                                       ; preds = %if.then.852, %for.end.847
  %800 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %type863 = getelementptr inbounds %struct.gs_image_common_s, %struct.gs_image_common_s* %800, i32 0, i32 0
  %801 = load %struct.gx_image_type_s*, %struct.gx_image_type_s** %type863, align 8, !tbaa !97
  %index864 = getelementptr inbounds %struct.gx_image_type_s, %struct.gx_image_type_s* %801, i32 0, i32 6
  %802 = load i32, i32* %index864, align 4, !tbaa !99
  %cmp865 = icmp eq i32 %802, 4
  br i1 %cmp865, label %land.lhs.true.867, label %if.end.934

land.lhs.true.867:                                ; preds = %if.end.862
  %803 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %CompatibilityLevel868 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %803, i32 0, i32 75
  %804 = load double, double* %CompatibilityLevel868, align 8, !tbaa !104
  %cmp869 = fcmp olt double %804, 1.300000e+00
  br i1 %cmp869, label %if.then.871, label %if.end.934

if.then.871:                                      ; preds = %land.lhs.true.867
  %805 = bitcast i32* %i872 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %805) #1
  %806 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %writer873 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %806, i32 0, i32 12
  %alt_writer_count874 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %writer873, i32 0, i32 1
  %807 = load i32, i32* %alt_writer_count874, align 4, !tbaa !163
  store i32 %807, i32* %i872, align 4, !tbaa !52
  %808 = load i32, i32* %i872, align 4, !tbaa !52
  %idxprom875 = sext i32 %808 to i64
  %809 = load %union.image_union_s*, %union.image_union_s** %image, align 8, !tbaa !1
  %arrayidx876 = getelementptr inbounds %union.image_union_s, %union.image_union_s* %809, i64 %idxprom875
  %type1 = bitcast %union.image_union_s* %arrayidx876 to %struct.gs_image1_s*
  call void @gs_image_t_init_mask_adjust(%struct.gs_image1_s* %type1, i32 1, i32 0) #6
  %810 = load %union.image_union_s*, %union.image_union_s** %image, align 8, !tbaa !1
  %arrayidx877 = getelementptr inbounds %union.image_union_s, %union.image_union_s* %810, i64 0
  %pixel878 = bitcast %union.image_union_s* %arrayidx877 to %struct.gs_pixel_image_s*
  %Width879 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %pixel878, i32 0, i32 2
  %811 = load i32, i32* %Width879, align 4, !tbaa !123
  %812 = load i32, i32* %i872, align 4, !tbaa !52
  %idxprom880 = sext i32 %812 to i64
  %813 = load %union.image_union_s*, %union.image_union_s** %image, align 8, !tbaa !1
  %arrayidx881 = getelementptr inbounds %union.image_union_s, %union.image_union_s* %813, i64 %idxprom880
  %type1882 = bitcast %union.image_union_s* %arrayidx881 to %struct.gs_image1_s*
  %Width883 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %type1882, i32 0, i32 2
  store i32 %811, i32* %Width883, align 4, !tbaa !180
  %814 = load %union.image_union_s*, %union.image_union_s** %image, align 8, !tbaa !1
  %arrayidx884 = getelementptr inbounds %union.image_union_s, %union.image_union_s* %814, i64 0
  %pixel885 = bitcast %union.image_union_s* %arrayidx884 to %struct.gs_pixel_image_s*
  %Height886 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %pixel885, i32 0, i32 3
  %815 = load i32, i32* %Height886, align 4, !tbaa !124
  %816 = load i32, i32* %i872, align 4, !tbaa !52
  %idxprom887 = sext i32 %816 to i64
  %817 = load %union.image_union_s*, %union.image_union_s** %image, align 8, !tbaa !1
  %arrayidx888 = getelementptr inbounds %union.image_union_s, %union.image_union_s* %817, i64 %idxprom887
  %type1889 = bitcast %union.image_union_s* %arrayidx888 to %struct.gs_image1_s*
  %Height890 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %type1889, i32 0, i32 3
  store i32 %815, i32* %Height890, align 4, !tbaa !181
  %818 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %819 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %writer891 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %819, i32 0, i32 12
  %820 = load i32, i32* %width, align 4, !tbaa !52
  %821 = load i32, i32* %height, align 4, !tbaa !52
  %call892 = call i32 @pdf_begin_write_image(%struct.gx_device_pdf_s* %818, %struct.pdf_image_writer_s* %writer891, i64 0, i32 %820, i32 %821, %struct.cos_dict_s* null, i32 0) #6
  store i32 %call892, i32* %code, align 4, !tbaa !52
  %822 = load i32, i32* %code, align 4, !tbaa !52
  %tobool893 = icmp ne i32 %822, 0
  br i1 %tobool893, label %if.then.894, label %if.end.895

if.then.894:                                      ; preds = %if.then.871
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup.931

if.end.895:                                       ; preds = %if.then.871
  %823 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %824 = bitcast %struct.gx_device_pdf_s* %823 to %struct.gx_device_psdf_s*
  %825 = load i32, i32* %i872, align 4, !tbaa !52
  %idxprom896 = sext i32 %825 to i64
  %826 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %writer897 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %826, i32 0, i32 12
  %binary898 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %writer897, i32 0, i32 0
  %arrayidx899 = getelementptr inbounds [4 x %struct.psdf_binary_writer_s], [4 x %struct.psdf_binary_writer_s]* %binary898, i32 0, i64 %idxprom896
  %827 = load i32, i32* %i872, align 4, !tbaa !52
  %idxprom900 = sext i32 %827 to i64
  %828 = load %union.image_union_s*, %union.image_union_s** %image, align 8, !tbaa !1
  %arrayidx901 = getelementptr inbounds %union.image_union_s, %union.image_union_s* %828, i64 %idxprom900
  %pixel902 = bitcast %union.image_union_s* %arrayidx901 to %struct.gs_pixel_image_s*
  %829 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %830 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %831 = load i32, i32* %force_lossless, align 4, !tbaa !52
  %832 = load i32, i32* %in_line, align 4, !tbaa !52
  %call903 = call i32 @psdf_setup_image_filters(%struct.gx_device_psdf_s* %824, %struct.psdf_binary_writer_s* %arrayidx899, %struct.gs_pixel_image_s* %pixel902, %struct.gs_matrix_s* %829, %struct.gs_imager_state_s* %830, i32 %831, i32 %832) #6
  store i32 %call903, i32* %code, align 4, !tbaa !52
  %833 = load i32, i32* %code, align 4, !tbaa !52
  %cmp904 = icmp slt i32 %833, 0
  br i1 %cmp904, label %if.then.906, label %if.end.907

if.then.906:                                      ; preds = %if.end.895
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup.931

if.end.907:                                       ; preds = %if.end.895
  %834 = load i32, i32* %i872, align 4, !tbaa !52
  %idxprom908 = sext i32 %834 to i64
  %835 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %writer909 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %835, i32 0, i32 12
  %binary910 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %writer909, i32 0, i32 0
  %arrayidx911 = getelementptr inbounds [4 x %struct.psdf_binary_writer_s], [4 x %struct.psdf_binary_writer_s]* %binary910, i32 0, i64 %idxprom908
  %836 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %837 = bitcast %struct.gx_device_pdf_s* %836 to %struct.gx_device_psdf_s*
  %838 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %Width912 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %838, i32 0, i32 2
  %839 = load i32, i32* %Width912, align 4, !tbaa !123
  %840 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %Height913 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %840, i32 0, i32 3
  %841 = load i32, i32* %Height913, align 4, !tbaa !124
  %842 = load i32, i32* %num_components, align 4, !tbaa !52
  %843 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %BitsPerComponent914 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %843, i32 0, i32 4
  %844 = load i32, i32* %BitsPerComponent914, align 4, !tbaa !125
  %845 = load i32, i32* %i872, align 4, !tbaa !52
  %idxprom915 = sext i32 %845 to i64
  %846 = load %union.image_union_s*, %union.image_union_s** %image, align 8, !tbaa !1
  %arrayidx916 = getelementptr inbounds %union.image_union_s, %union.image_union_s* %846, i64 %idxprom915
  %type4917 = bitcast %union.image_union_s* %arrayidx916 to %struct.gs_image4_s*
  %MaskColor = getelementptr inbounds %struct.gs_image4_s, %struct.gs_image4_s* %type4917, i32 0, i32 11
  %arraydecay918 = getelementptr inbounds [130 x i32], [130 x i32]* %MaskColor, i32 0, i32 0
  %call919 = call i32 @psdf_setup_image_to_mask_filter(%struct.psdf_binary_writer_s* %arrayidx911, %struct.gx_device_psdf_s* %837, i32 %839, i32 %841, i32 %842, i32 %844, i32* %arraydecay918) #6
  %847 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %848 = load i32, i32* %num_components, align 4, !tbaa !52
  %849 = load %struct.gs_range_s*, %struct.gs_range_s** %pranges, align 8, !tbaa !1
  %850 = load i32, i32* %i872, align 4, !tbaa !52
  %851 = load i32, i32* %i872, align 4, !tbaa !52
  %idxprom920 = sext i32 %851 to i64
  %852 = load %union.image_union_s*, %union.image_union_s** %image, align 8, !tbaa !1
  %arrayidx921 = getelementptr inbounds %union.image_union_s, %union.image_union_s* %852, i64 %idxprom920
  %pixel922 = bitcast %union.image_union_s* %arrayidx921 to %struct.gs_pixel_image_s*
  %853 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %call923 = call i32 @pdf_begin_image_data_decoded(%struct.gx_device_pdf_s* %847, i32 %848, %struct.gs_range_s* %849, i32 %850, %struct.gs_pixel_image_s* %pixel922, %struct.cos_value_s* %cs_value, %struct.pdf_image_enum_s* %853) #6
  store i32 %call923, i32* %code, align 4, !tbaa !52
  %854 = load i32, i32* %code, align 4, !tbaa !52
  %cmp924 = icmp slt i32 %854, 0
  br i1 %cmp924, label %if.then.926, label %if.end.927

if.then.926:                                      ; preds = %if.end.907
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup.931

if.end.927:                                       ; preds = %if.end.907
  %855 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %writer928 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %855, i32 0, i32 12
  %alt_writer_count929 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %writer928, i32 0, i32 1
  %856 = load i32, i32* %alt_writer_count929, align 4, !tbaa !163
  %inc930 = add nsw i32 %856, 1
  store i32 %inc930, i32* %alt_writer_count929, align 4, !tbaa !163
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.931

cleanup.931:                                      ; preds = %if.then.926, %if.then.906, %if.then.894, %if.end.927
  %857 = bitcast i32* %i872 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %857) #1
  %cleanup.dest.932 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.932, label %cleanup.950 [
    i32 0, label %cleanup.cont.933
    i32 5, label %fail_and_fallback
  ]

cleanup.cont.933:                                 ; preds = %cleanup.931
  br label %if.end.934

if.end.934:                                       ; preds = %cleanup.cont.933, %land.lhs.true.867, %if.end.862
  %858 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %non_gc_memory935 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %858, i32 0, i32 3
  %859 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory935, align 8, !tbaa !91
  %non_gc_memory936 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %859, i32 0, i32 3
  %860 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory936, align 8, !tbaa !91
  %procs937 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %860, i32 0, i32 1
  %free_object938 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs937, i32 0, i32 2
  %861 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object938, align 8, !tbaa !114
  %862 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %non_gc_memory939 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %862, i32 0, i32 3
  %863 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory939, align 8, !tbaa !91
  %non_gc_memory940 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %863, i32 0, i32 3
  %864 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory940, align 8, !tbaa !91
  %865 = load %union.image_union_s*, %union.image_union_s** %image, align 8, !tbaa !1
  %866 = bitcast %union.image_union_s* %865 to i8*
  call void %861(%struct.gs_memory_s* %864, i8* %866, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i32 0, i32 0)) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.950

fail_and_fallback:                                ; preds = %cleanup.931, %cleanup.543, %if.then.843, %if.then.827, %if.then.808, %if.then.793, %if.then.747, %if.then.734, %if.then.717, %if.then.702, %if.then.664, %if.then.652, %if.then.646, %if.then.637, %if.then.629, %if.then.620, %if.then.611
  %867 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %non_gc_memory941 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %867, i32 0, i32 3
  %868 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory941, align 8, !tbaa !91
  %non_gc_memory942 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %868, i32 0, i32 3
  %869 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory942, align 8, !tbaa !91
  %procs943 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %869, i32 0, i32 1
  %free_object944 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs943, i32 0, i32 2
  %870 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object944, align 8, !tbaa !114
  %871 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %non_gc_memory945 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %871, i32 0, i32 3
  %872 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory945, align 8, !tbaa !91
  %non_gc_memory946 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %872, i32 0, i32 3
  %873 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory946, align 8, !tbaa !91
  %874 = load %union.image_union_s*, %union.image_union_s** %image, align 8, !tbaa !1
  %875 = bitcast %union.image_union_s* %874 to i8*
  call void %870(%struct.gs_memory_s* %873, i8* %875, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i32 0, i32 0)) #6
  %876 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs947 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %876, i32 0, i32 1
  %free_object948 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs947, i32 0, i32 2
  %877 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object948, align 8, !tbaa !114
  %878 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %879 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %880 = bitcast %struct.pdf_image_enum_s* %879 to i8*
  call void %877(%struct.gs_memory_s* %878, i8* %880, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0)) #6
  %881 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %882 = bitcast %struct.gx_device_pdf_s* %881 to %struct.gx_device_s*
  %883 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %884 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %885 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %886 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %887 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %888 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %889 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %890 = load %struct.gx_image_enum_common_s**, %struct.gx_image_enum_common_s*** %pinfo.addr, align 8, !tbaa !1
  %call949 = call i32 @gx_default_begin_typed_image(%struct.gx_device_s* %882, %struct.gs_imager_state_s* %883, %struct.gs_matrix_s* %884, %struct.gs_image_common_s* %885, %struct.gs_int_rect_s* %886, %struct.gx_device_color_s* %887, %struct.gx_clip_path_s* %888, %struct.gs_memory_s* %889, %struct.gx_image_enum_common_s** %890) #6
  store i32 %call949, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.950

cleanup.950:                                      ; preds = %fail_and_fallback, %if.end.934, %cleanup.931, %if.then.551, %cleanup.543, %if.then.426, %if.then.413, %if.then.390, %if.then.370, %cleanup, %sw.default.118, %if.then.96, %if.then.80, %if.end.71, %if.then.69, %if.end.32, %if.then.25, %if.then
  %891 = bitcast %struct.gs_range_s** %pranges to i8*
  call void @llvm.lifetime.end(i64 8, i8* %891) #1
  %892 = bitcast %struct.cos_value_s* %cs_value to i8*
  call void @llvm.lifetime.end(i64 24, i8* %892) #1
  %893 = bitcast %struct.gs_color_space_s** %pcs_device to i8*
  call void @llvm.lifetime.end(i64 8, i8* %893) #1
  %894 = bitcast %struct.gs_color_space_s** %pcs_orig to i8*
  call void @llvm.lifetime.end(i64 8, i8* %894) #1
  %895 = bitcast %struct.pdf_color_space_names_s** %names to i8*
  call void @llvm.lifetime.end(i64 8, i8* %895) #1
  %896 = bitcast %struct.pdf_image_enum_s** %pie to i8*
  call void @llvm.lifetime.end(i64 8, i8* %896) #1
  %897 = bitcast i32* %num_components to i8*
  call void @llvm.lifetime.end(i64 4, i8* %897) #1
  %898 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %898) #1
  %899 = bitcast i32* %format to i8*
  call void @llvm.lifetime.end(i64 4, i8* %899) #1
  %900 = bitcast %struct.gs_int_rect_s* %rect to i8*
  call void @llvm.lifetime.end(i64 16, i8* %900) #1
  %901 = bitcast %struct.gs_pixel_image_s** %pim to i8*
  call void @llvm.lifetime.end(i64 8, i8* %901) #1
  %902 = bitcast %union.image_union_s** %image to i8*
  call void @llvm.lifetime.end(i64 8, i8* %902) #1
  %903 = bitcast %struct.cos_dict_s** %pnamed to i8*
  call void @llvm.lifetime.end(i64 8, i8* %903) #1
  %904 = bitcast i32* %height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %904) #1
  %905 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %905) #1
  %906 = bitcast i32* %reduce_bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %906) #1
  %907 = bitcast i32* %convert_to_process_colors to i8*
  call void @llvm.lifetime.end(i64 4, i8* %907) #1
  %908 = bitcast i32* %force_lossless to i8*
  call void @llvm.lifetime.end(i64 4, i8* %908) #1
  %909 = bitcast i32* %is_mask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %909) #1
  %910 = bitcast i32* %in_line to i8*
  call void @llvm.lifetime.end(i64 4, i8* %910) #1
  %911 = bitcast i32* %use_fallback to i8*
  call void @llvm.lifetime.end(i64 4, i8* %911) #1
  %912 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %912) #1
  %913 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %913) #1
  %914 = load i32, i32* %retval
  ret i32 %914
}

; Function Attrs: nounwind uwtable
define internal i32 @old_pdf_begin_typed_image(%struct.gx_device_pdf_s* %pdev, %struct.gs_imager_state_s* %pis, %struct.gs_matrix_s* %pmat, %struct.gs_image_common_s* %pic, %struct.gs_int_rect_s* %prect, %struct.gx_device_color_s* %pdcolor, %struct.gx_clip_path_s* %pcpath, %struct.gs_memory_s* %mem, %struct.gx_image_enum_common_s** %pinfo, i32 %context) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %pic.addr = alloca %struct.gs_image_common_s*, align 8
  %prect.addr = alloca %struct.gs_int_rect_s*, align 8
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pinfo.addr = alloca %struct.gx_image_enum_common_s**, align 8
  %context.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %image = alloca %union.image_union_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  store %struct.gs_image_common_s* %pic, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  store %struct.gs_int_rect_s* %prect, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gx_image_enum_common_s** %pinfo, %struct.gx_image_enum_common_s*** %pinfo.addr, align 8, !tbaa !1
  store i32 %context, i32* %context.addr, align 4, !tbaa !5
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %union.image_union_s** %image to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %2, i32 0, i32 3
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !91
  %non_gc_memory1 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %3, i32 0, i32 3
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory1, align 8, !tbaa !91
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %4, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %5 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !94
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %non_gc_memory2 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %6, i32 0, i32 3
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory2, align 8, !tbaa !91
  %non_gc_memory3 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %7, i32 0, i32 3
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory3, align 8, !tbaa !91
  %call = call i8* %5(%struct.gs_memory_s* %8, i32 4, i32 2248, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i32 0, i32 0)) #6
  %9 = bitcast i8* %call to %union.image_union_s*
  store %union.image_union_s* %9, %union.image_union_s** %image, align 8, !tbaa !1
  %10 = load %union.image_union_s*, %union.image_union_s** %image, align 8, !tbaa !1
  %cmp = icmp eq %union.image_union_s* %10, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %12 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %13 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %14 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %15 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %16 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %17 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %19 = load %struct.gx_image_enum_common_s**, %struct.gx_image_enum_common_s*** %pinfo.addr, align 8, !tbaa !1
  %20 = load i32, i32* %context.addr, align 4, !tbaa !5
  %21 = load %union.image_union_s*, %union.image_union_s** %image, align 8, !tbaa !1
  %call4 = call i32 @pdf_begin_typed_image_impl(%struct.gx_device_pdf_s* %11, %struct.gs_imager_state_s* %12, %struct.gs_matrix_s* %13, %struct.gs_image_common_s* %14, %struct.gs_int_rect_s* %15, %struct.gx_device_color_s* %16, %struct.gx_clip_path_s* %17, %struct.gs_memory_s* %18, %struct.gx_image_enum_common_s** %19, i32 %20, %union.image_union_s* %21) #6
  store i32 %call4, i32* %code, align 4, !tbaa !52
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %non_gc_memory5 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %22, i32 0, i32 3
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory5, align 8, !tbaa !91
  %non_gc_memory6 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %23, i32 0, i32 3
  %24 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory6, align 8, !tbaa !91
  %procs7 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %24, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs7, i32 0, i32 2
  %25 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !114
  %26 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %non_gc_memory8 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %26, i32 0, i32 3
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory8, align 8, !tbaa !91
  %non_gc_memory9 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %27, i32 0, i32 3
  %28 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory9, align 8, !tbaa !91
  %29 = load %union.image_union_s*, %union.image_union_s** %image, align 8, !tbaa !1
  %30 = bitcast %union.image_union_s* %29 to i8*
  call void %25(%struct.gs_memory_s* %28, i8* %30, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i32 0, i32 0)) #6
  %31 = load i32, i32* %code, align 4, !tbaa !52
  store i32 %31, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %32 = bitcast %union.image_union_s** %image to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  %33 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  %34 = load i32, i32* %retval
  ret i32 %34
}

declare i32 @cos_array_unadd(%struct.cos_array_s*, %struct.cos_value_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @setup_type1_image(%struct.gx_device_pdf_s* %pdev, %struct.gs_image_common_s* %pic, %struct.gx_device_color_s* %pdcolor, %union.image_union_s* %image, i32 %context) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pic.addr = alloca %struct.gs_image_common_s*, align 8
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %image.addr = alloca %union.image_union_s*, align 8
  %context.addr = alloca i32, align 4
  %pim1 = alloca %struct.gs_image1_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_image_common_s* %pic, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store %union.image_union_s* %image, %union.image_union_s** %image.addr, align 8, !tbaa !1
  store i32 %context, i32* %context.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gs_image1_s** %pim1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_image_common_s* %1 to %struct.gs_image1_s*
  store %struct.gs_image1_s* %2, %struct.gs_image1_s** %pim1, align 8, !tbaa !1
  %3 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim1, align 8, !tbaa !1
  %Alpha = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %3, i32 0, i32 12
  %4 = load i32, i32* %Alpha, align 4, !tbaa !182
  %cmp = icmp ne i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim1, align 8, !tbaa !1
  %ImageMask = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %5, i32 0, i32 10
  %6 = load i32, i32* %ImageMask, align 4, !tbaa !101
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then.1, label %if.end.27

if.then.1:                                        ; preds = %if.end
  %7 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %call = call i32 @gx_dc_is_pattern1_color(%struct.gx_device_color_s* %7) #6
  %tobool2 = icmp ne i32 %call, 0
  br i1 %tobool2, label %if.end.26, label %if.then.3

if.then.3:                                        ; preds = %if.then.1
  %8 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim1, align 8, !tbaa !1
  %BitsPerComponent = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %8, i32 0, i32 4
  %9 = load i32, i32* %BitsPerComponent, align 4, !tbaa !183
  %cmp4 = icmp ne i32 %9, 1
  br i1 %cmp4, label %if.then.24, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.3
  %10 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim1, align 8, !tbaa !1
  %Decode = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %10, i32 0, i32 5
  %arrayidx = getelementptr inbounds [130 x float], [130 x float]* %Decode, i32 0, i64 0
  %11 = load float, float* %arrayidx, align 4, !tbaa !69
  %conv = fpext float %11 to double
  %cmp5 = fcmp oeq double %conv, 0.000000e+00
  br i1 %cmp5, label %land.lhs.true, label %lor.lhs.false.12

land.lhs.true:                                    ; preds = %lor.lhs.false
  %12 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim1, align 8, !tbaa !1
  %Decode7 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %12, i32 0, i32 5
  %arrayidx8 = getelementptr inbounds [130 x float], [130 x float]* %Decode7, i32 0, i64 1
  %13 = load float, float* %arrayidx8, align 4, !tbaa !69
  %conv9 = fpext float %13 to double
  %cmp10 = fcmp oeq double %conv9, 1.000000e+00
  br i1 %cmp10, label %if.end.25, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %land.lhs.true, %lor.lhs.false
  %14 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim1, align 8, !tbaa !1
  %Decode13 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %14, i32 0, i32 5
  %arrayidx14 = getelementptr inbounds [130 x float], [130 x float]* %Decode13, i32 0, i64 0
  %15 = load float, float* %arrayidx14, align 4, !tbaa !69
  %conv15 = fpext float %15 to double
  %cmp16 = fcmp oeq double %conv15, 1.000000e+00
  br i1 %cmp16, label %land.lhs.true.18, label %if.then.24

land.lhs.true.18:                                 ; preds = %lor.lhs.false.12
  %16 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim1, align 8, !tbaa !1
  %Decode19 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %16, i32 0, i32 5
  %arrayidx20 = getelementptr inbounds [130 x float], [130 x float]* %Decode19, i32 0, i64 1
  %17 = load float, float* %arrayidx20, align 4, !tbaa !69
  %conv21 = fpext float %17 to double
  %cmp22 = fcmp oeq double %conv21, 0.000000e+00
  br i1 %cmp22, label %if.end.25, label %if.then.24

if.then.24:                                       ; preds = %land.lhs.true.18, %lor.lhs.false.12, %if.then.3
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.25:                                        ; preds = %land.lhs.true.18, %land.lhs.true
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.then.1
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.end
  %18 = load %union.image_union_s*, %union.image_union_s** %image.addr, align 8, !tbaa !1
  %arrayidx28 = getelementptr inbounds %union.image_union_s, %union.image_union_s* %18, i64 0
  %type1 = bitcast %union.image_union_s* %arrayidx28 to %struct.gs_image1_s*
  %19 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim1, align 8, !tbaa !1
  %20 = bitcast %struct.gs_image1_s* %type1 to i8*
  %21 = bitcast %struct.gs_image1_s* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 600, i32 8, i1 false), !tbaa.struct !184
  %22 = load i32, i32* %context.addr, align 4, !tbaa !5
  %cmp29 = icmp eq i32 %22, 0
  br i1 %cmp29, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end.27
  %23 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %24 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim1, align 8, !tbaa !1
  %call31 = call i32 @can_write_image_in_line(%struct.gx_device_pdf_s* %23, %struct.gs_image1_s* %24) #6
  %tobool32 = icmp ne i32 %call31, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.27
  %25 = phi i1 [ false, %if.end.27 ], [ %tobool32, %land.rhs ]
  %land.ext = zext i1 %25 to i32
  store i32 %land.ext, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %land.end, %if.then.24, %if.then
  %26 = bitcast %struct.gs_image1_s** %pim1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  %27 = load i32, i32* %retval
  ret i32 %27
}

declare i32 @gx_default_begin_typed_image(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**) #2

; Function Attrs: nounwind uwtable
define internal i32 @setup_type3_image(%struct.gx_device_pdf_s* %pdev, %struct.gs_imager_state_s* %pis, %struct.gs_matrix_s* %pmat, %struct.gs_image_common_s* %pic, %struct.gs_int_rect_s* %prect, %struct.gx_device_color_s* %pdcolor, %struct.gx_clip_path_s* %pcpath, %struct.gs_memory_s* %mem, %struct.gx_image_enum_common_s** %pinfo, %union.image_union_s* %image) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %pic.addr = alloca %struct.gs_image_common_s*, align 8
  %prect.addr = alloca %struct.gs_int_rect_s*, align 8
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pinfo.addr = alloca %struct.gx_image_enum_common_s**, align 8
  %image.addr = alloca %union.image_union_s*, align 8
  %pim3 = alloca %struct.gs_image3_s*, align 8
  %pim3a = alloca %struct.gs_image3_s, align 8
  %pic1 = alloca %struct.gs_image_common_s*, align 8
  %m = alloca %struct.gs_matrix_s, align 4
  %mi = alloca %struct.gs_matrix_s, align 4
  %pmat1 = alloca %struct.gs_matrix_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %sx = alloca i32, align 4
  %sy = alloca i32, align 4
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  store %struct.gs_image_common_s* %pic, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  store %struct.gs_int_rect_s* %prect, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gx_image_enum_common_s** %pinfo, %struct.gx_image_enum_common_s*** %pinfo.addr, align 8, !tbaa !1
  store %union.image_union_s* %image, %union.image_union_s** %image.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_image3_s** %pim3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_image_common_s* %1 to %struct.gs_image3_s*
  store %struct.gs_image3_s* %2, %struct.gs_image3_s** %pim3, align 8, !tbaa !1
  %3 = bitcast %struct.gs_image3_s* %pim3a to i8*
  call void @llvm.lifetime.start(i64 1160, i8* %3) #1
  %4 = bitcast %struct.gs_image_common_s** %pic1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  store %struct.gs_image_common_s* %5, %struct.gs_image_common_s** %pic1, align 8, !tbaa !1
  %6 = bitcast %struct.gs_matrix_s* %m to i8*
  call void @llvm.lifetime.start(i64 24, i8* %6) #1
  %7 = bitcast %struct.gs_matrix_s* %mi to i8*
  call void @llvm.lifetime.start(i64 24, i8* %7) #1
  %8 = bitcast %struct.gs_matrix_s** %pmat1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %9, %struct.gs_matrix_s** %pmat1, align 8, !tbaa !1
  %10 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %CompatibilityLevel = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %11, i32 0, i32 75
  %12 = load double, double* %CompatibilityLevel, align 8, !tbaa !104
  %cmp = fcmp olt double %12, 1.300000e+00
  br i1 %cmp, label %land.lhs.true, label %if.end.77

land.lhs.true:                                    ; preds = %entry
  %13 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PatternImagemask = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %13, i32 0, i32 107
  %14 = load i32, i32* %PatternImagemask, align 4, !tbaa !119
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.end.77, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %15 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %16 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call = call i32 @pdf_must_put_clip_path(%struct.gx_device_pdf_s* %15, %struct.gx_clip_path_s* %16) #6
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %17 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call3 = call i32 @pdf_unclip(%struct.gx_device_pdf_s* %17) #6
  store i32 %call3, i32* %code, align 4, !tbaa !52
  br label %if.end

if.else:                                          ; preds = %if.then
  %18 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call4 = call i32 @pdf_open_page(%struct.gx_device_pdf_s* %18, i32 1) #6
  store i32 %call4, i32* %code, align 4, !tbaa !52
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  %19 = load i32, i32* %code, align 4, !tbaa !52
  %cmp5 = icmp slt i32 %19, 0
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  %20 = load i32, i32* %code, align 4, !tbaa !52
  store i32 %20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %if.end
  %21 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %22 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call8 = call i32 @pdf_put_clip_path(%struct.gx_device_pdf_s* %21, %struct.gx_clip_path_s* %22) #6
  store i32 %call8, i32* %code, align 4, !tbaa !52
  %23 = load i32, i32* %code, align 4, !tbaa !52
  %cmp9 = icmp slt i32 %23, 0
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.7
  %24 = load i32, i32* %code, align 4, !tbaa !52
  store i32 %24, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %if.end.7
  call void @gs_make_identity(%struct.gs_matrix_s* %m) #6
  store %struct.gs_matrix_s* %m, %struct.gs_matrix_s** %pmat1, align 8, !tbaa !1
  %25 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %25, i32 0, i32 5
  %tx = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm, i32 0, i32 4
  %26 = load float, float* %tx, align 4, !tbaa !185
  %conv = fpext float %26 to double
  %add = fadd double %conv, 5.000000e-01
  %call12 = call double @floor(double %add) #8
  %conv13 = fptrunc double %call12 to float
  %tx14 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %m, i32 0, i32 4
  store float %conv13, float* %tx14, align 4, !tbaa !186
  %27 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm15 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %27, i32 0, i32 5
  %ty = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm15, i32 0, i32 5
  %28 = load float, float* %ty, align 4, !tbaa !187
  %conv16 = fpext float %28 to double
  %add17 = fadd double %conv16, 5.000000e-01
  %call18 = call double @floor(double %add17) #8
  %conv19 = fptrunc double %call18 to float
  %ty20 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %m, i32 0, i32 5
  store float %conv19, float* %ty20, align 4, !tbaa !188
  %29 = load %struct.gs_image3_s*, %struct.gs_image3_s** %pim3, align 8, !tbaa !1
  %30 = bitcast %struct.gs_image3_s* %pim3a to i8*
  %31 = bitcast %struct.gs_image3_s* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 1160, i32 8, i1 false), !tbaa.struct !189
  %ImageMatrix = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %pim3a, i32 0, i32 1
  %call21 = call i32 @gs_matrix_invert(%struct.gs_matrix_s* %ImageMatrix, %struct.gs_matrix_s* %mi) #6
  %ImageMatrix22 = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %pim3a, i32 0, i32 1
  call void @gs_make_identity(%struct.gs_matrix_s* %ImageMatrix22) #6
  %Width = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %pim3a, i32 0, i32 2
  %32 = load i32, i32* %Width, align 4, !tbaa !109
  %MaskDict = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %pim3a, i32 0, i32 11
  %Width23 = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %MaskDict, i32 0, i32 2
  %33 = load i32, i32* %Width23, align 4, !tbaa !190
  %cmp24 = icmp slt i32 %32, %33
  br i1 %cmp24, label %land.lhs.true.26, label %if.end.44

land.lhs.true.26:                                 ; preds = %if.end.11
  %Width27 = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %pim3a, i32 0, i32 2
  %34 = load i32, i32* %Width27, align 4, !tbaa !109
  %cmp28 = icmp sgt i32 %34, 0
  br i1 %cmp28, label %if.then.30, label %if.end.44

if.then.30:                                       ; preds = %land.lhs.true.26
  %35 = bitcast i32* %sx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %35) #1
  %MaskDict31 = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %pim3a, i32 0, i32 11
  %Width32 = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %MaskDict31, i32 0, i32 2
  %36 = load i32, i32* %Width32, align 4, !tbaa !190
  %Width33 = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %pim3a, i32 0, i32 2
  %37 = load i32, i32* %Width33, align 4, !tbaa !109
  %add34 = add nsw i32 %36, %37
  %sub = sub nsw i32 %add34, 1
  %Width35 = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %pim3a, i32 0, i32 2
  %38 = load i32, i32* %Width35, align 4, !tbaa !109
  %div = sdiv i32 %sub, %38
  store i32 %div, i32* %sx, align 4, !tbaa !52
  %39 = load i32, i32* %sx, align 4, !tbaa !52
  %conv36 = sitofp i32 %39 to double
  %div37 = fdiv double 1.000000e+00, %conv36
  %call38 = call i32 @gs_matrix_scale(%struct.gs_matrix_s* %mi, double %div37, double 1.000000e+00, %struct.gs_matrix_s* %mi) #6
  %ImageMatrix39 = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %pim3a, i32 0, i32 1
  %40 = load i32, i32* %sx, align 4, !tbaa !52
  %conv40 = sitofp i32 %40 to double
  %div41 = fdiv double 1.000000e+00, %conv40
  %ImageMatrix42 = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %pim3a, i32 0, i32 1
  %call43 = call i32 @gs_matrix_scale(%struct.gs_matrix_s* %ImageMatrix39, double %div41, double 1.000000e+00, %struct.gs_matrix_s* %ImageMatrix42) #6
  %41 = bitcast i32* %sx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #1
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.30, %land.lhs.true.26, %if.end.11
  %Height = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %pim3a, i32 0, i32 3
  %42 = load i32, i32* %Height, align 4, !tbaa !113
  %MaskDict45 = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %pim3a, i32 0, i32 11
  %Height46 = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %MaskDict45, i32 0, i32 3
  %43 = load i32, i32* %Height46, align 4, !tbaa !191
  %cmp47 = icmp slt i32 %42, %43
  br i1 %cmp47, label %land.lhs.true.49, label %if.end.69

land.lhs.true.49:                                 ; preds = %if.end.44
  %Height50 = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %pim3a, i32 0, i32 3
  %44 = load i32, i32* %Height50, align 4, !tbaa !113
  %cmp51 = icmp sgt i32 %44, 0
  br i1 %cmp51, label %if.then.53, label %if.end.69

if.then.53:                                       ; preds = %land.lhs.true.49
  %45 = bitcast i32* %sy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %45) #1
  %MaskDict54 = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %pim3a, i32 0, i32 11
  %Height55 = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %MaskDict54, i32 0, i32 3
  %46 = load i32, i32* %Height55, align 4, !tbaa !191
  %Height56 = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %pim3a, i32 0, i32 3
  %47 = load i32, i32* %Height56, align 4, !tbaa !113
  %add57 = add nsw i32 %46, %47
  %sub58 = sub nsw i32 %add57, 1
  %Height59 = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %pim3a, i32 0, i32 3
  %48 = load i32, i32* %Height59, align 4, !tbaa !113
  %div60 = sdiv i32 %sub58, %48
  store i32 %div60, i32* %sy, align 4, !tbaa !52
  %49 = load i32, i32* %sy, align 4, !tbaa !52
  %conv61 = sitofp i32 %49 to double
  %div62 = fdiv double 1.000000e+00, %conv61
  %call63 = call i32 @gs_matrix_scale(%struct.gs_matrix_s* %mi, double 1.000000e+00, double %div62, %struct.gs_matrix_s* %mi) #6
  %ImageMatrix64 = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %pim3a, i32 0, i32 1
  %50 = load i32, i32* %sy, align 4, !tbaa !52
  %conv65 = sitofp i32 %50 to double
  %div66 = fdiv double 1.000000e+00, %conv65
  %ImageMatrix67 = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %pim3a, i32 0, i32 1
  %call68 = call i32 @gs_matrix_scale(%struct.gs_matrix_s* %ImageMatrix64, double 1.000000e+00, double %div66, %struct.gs_matrix_s* %ImageMatrix67) #6
  %51 = bitcast i32* %sy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #1
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.53, %land.lhs.true.49, %if.end.44
  %MaskDict70 = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %pim3a, i32 0, i32 11
  %ImageMatrix71 = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %MaskDict70, i32 0, i32 1
  %MaskDict72 = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %pim3a, i32 0, i32 11
  %ImageMatrix73 = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %MaskDict72, i32 0, i32 1
  %call74 = call i32 @gs_matrix_multiply(%struct.gs_matrix_s* %mi, %struct.gs_matrix_s* %ImageMatrix71, %struct.gs_matrix_s* %ImageMatrix73) #6
  %52 = bitcast %struct.gs_image3_s* %pim3a to %struct.gs_image_common_s*
  store %struct.gs_image_common_s* %52, %struct.gs_image_common_s** %pic1, align 8, !tbaa !1
  %53 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm75 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %53, i32 0, i32 5
  %54 = bitcast %struct.gs_matrix_fixed_s* %ctm75 to %struct.gs_matrix_s*
  %55 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %converting_image_matrix = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %55, i32 0, i32 224
  %call76 = call i32 @gs_matrix_multiply(%struct.gs_matrix_s* %mi, %struct.gs_matrix_s* %54, %struct.gs_matrix_s* %converting_image_matrix) #6
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.69, %land.lhs.true, %entry
  %56 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %57 = bitcast %struct.gx_device_pdf_s* %56 to %struct.gx_device_s*
  %58 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %59 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat1, align 8, !tbaa !1
  %60 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic1, align 8, !tbaa !1
  %61 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %62 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %63 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %64 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %65 = load %struct.gx_image_enum_common_s**, %struct.gx_image_enum_common_s*** %pinfo.addr, align 8, !tbaa !1
  %call78 = call i32 @gx_begin_image3_generic(%struct.gx_device_s* %57, %struct.gs_imager_state_s* %58, %struct.gs_matrix_s* %59, %struct.gs_image_common_s* %60, %struct.gs_int_rect_s* %61, %struct.gx_device_color_s* %62, %struct.gx_clip_path_s* %63, %struct.gs_memory_s* %64, i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, i32, %struct.gs_memory_s*)* @pdf_image3_make_mid, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**, %struct.gx_device_s**, %struct.gx_device_s*, %struct.gx_image_enum_common_s*, %struct.gs_int_point_s*)* @pdf_image3_make_mcde, %struct.gx_image_enum_common_s** %65) #6
  store i32 %call78, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.77, %if.then.10, %if.then.6
  %66 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #1
  %67 = bitcast %struct.gs_matrix_s** %pmat1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #1
  %68 = bitcast %struct.gs_matrix_s* %mi to i8*
  call void @llvm.lifetime.end(i64 24, i8* %68) #1
  %69 = bitcast %struct.gs_matrix_s* %m to i8*
  call void @llvm.lifetime.end(i64 24, i8* %69) #1
  %70 = bitcast %struct.gs_image_common_s** %pic1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #1
  %71 = bitcast %struct.gs_image3_s* %pim3a to i8*
  call void @llvm.lifetime.end(i64 1160, i8* %71) #1
  %72 = bitcast %struct.gs_image3_s** %pim3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #1
  %73 = load i32, i32* %retval
  ret i32 %73
}

declare i32 @gx_begin_image3x_generic(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, i32, i32, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**, %struct.gx_device_s**, %struct.gx_device_s**, %struct.gx_image_enum_common_s**, %struct.gs_int_point_s*, %struct.gs_image3x_s*)*, %struct.gx_image_enum_common_s**) #2

; Function Attrs: nounwind uwtable
define internal i32 @pdf_image3x_make_mid(%struct.gx_device_s** %pmidev, %struct.gx_device_s* %dev, i32 %width, i32 %height, i32 %depth, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %pmidev.addr = alloca %struct.gx_device_s**, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %depth.addr = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s** %pmidev, %struct.gx_device_s*** %pmidev.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %width, i32* %width.addr, align 4, !tbaa !52
  store i32 %height, i32* %height.addr, align 4, !tbaa !52
  store i32 %depth, i32* %depth.addr, align 4, !tbaa !52
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gx_device_s**, %struct.gx_device_s*** %pmidev.addr, align 8, !tbaa !1
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i32 @pdf_make_mxd(%struct.gx_device_s** %1, %struct.gx_device_s* %2, %struct.gs_memory_s* %3) #6
  store i32 %call, i32* %code, align 4, !tbaa !52
  %4 = load i32, i32* %code, align 4, !tbaa !52
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %code, align 4, !tbaa !52
  store i32 %5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load %struct.gx_device_s**, %struct.gx_device_s*** %pmidev.addr, align 8, !tbaa !1
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %6, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %7, i32 0, i32 42
  %begin_typed_image = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 37
  %begin_typed_image1 = bitcast {}** %begin_typed_image to i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)**
  store i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* @pdf_mid_begin_typed_image, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)** %begin_typed_image1, align 8, !tbaa !192
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %8 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #1
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define internal i32 @pdf_image3x_make_mcde(%struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis, %struct.gs_matrix_s* %pmat, %struct.gs_image_common_s* %pic, %struct.gs_int_rect_s* %prect, %struct.gx_device_color_s* %pdcolor, %struct.gx_clip_path_s* %pcpath, %struct.gs_memory_s* %mem, %struct.gx_image_enum_common_s** %pinfo, %struct.gx_device_s** %pmcdev, %struct.gx_device_s** %midev, %struct.gx_image_enum_common_s** %pminfo, %struct.gs_int_point_s* %origin, %struct.gs_image3x_s* %pim) #0 {
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
  %pmcdev.addr = alloca %struct.gx_device_s**, align 8
  %midev.addr = alloca %struct.gx_device_s**, align 8
  %pminfo.addr = alloca %struct.gx_image_enum_common_s**, align 8
  %origin.addr = alloca %struct.gs_int_point_s*, align 8
  %pim.addr = alloca %struct.gs_image3x_s*, align 8
  %code = alloca i32, align 4
  %pmie = alloca %struct.pdf_image_enum_s*, align 8
  %i = alloca i32, align 4
  %pixm = alloca %struct.gs_image3x_mask_s*, align 8
  %cleanup.dest.slot = alloca i32
  %num_components = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  store %struct.gs_image_common_s* %pic, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  store %struct.gs_int_rect_s* %prect, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gx_image_enum_common_s** %pinfo, %struct.gx_image_enum_common_s*** %pinfo.addr, align 8, !tbaa !1
  store %struct.gx_device_s** %pmcdev, %struct.gx_device_s*** %pmcdev.addr, align 8, !tbaa !1
  store %struct.gx_device_s** %midev, %struct.gx_device_s*** %midev.addr, align 8, !tbaa !1
  store %struct.gx_image_enum_common_s** %pminfo, %struct.gx_image_enum_common_s*** %pminfo.addr, align 8, !tbaa !1
  store %struct.gs_int_point_s* %origin, %struct.gs_int_point_s** %origin.addr, align 8, !tbaa !1
  store %struct.gs_image3x_s* %pim, %struct.gs_image3x_s** %pim.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.pdf_image_enum_s** %pmie to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast %struct.gs_image3x_mask_s** %pixm to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gx_device_s**, %struct.gx_device_s*** %midev.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.gx_device_s*, %struct.gx_device_s** %4, i64 0
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %arrayidx, align 8, !tbaa !1
  %tobool = icmp ne %struct.gx_device_s* %5, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load %struct.gx_device_s**, %struct.gx_device_s*** %midev.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds %struct.gx_device_s*, %struct.gx_device_s** %6, i64 1
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %arrayidx1, align 8, !tbaa !1
  %tobool2 = icmp ne %struct.gx_device_s* %7, null
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.32

if.end:                                           ; preds = %if.then
  store i32 0, i32* %i, align 4, !tbaa !52
  %8 = load %struct.gs_image3x_s*, %struct.gs_image3x_s** %pim.addr, align 8, !tbaa !1
  %Opacity = getelementptr inbounds %struct.gs_image3x_s, %struct.gs_image3x_s* %8, i32 0, i32 10
  store %struct.gs_image3x_mask_s* %Opacity, %struct.gs_image3x_mask_s** %pixm, align 8, !tbaa !1
  br label %if.end.9

if.else:                                          ; preds = %entry
  %9 = load %struct.gx_device_s**, %struct.gx_device_s*** %midev.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds %struct.gx_device_s*, %struct.gx_device_s** %9, i64 1
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %arrayidx4, align 8, !tbaa !1
  %tobool5 = icmp ne %struct.gx_device_s* %10, null
  br i1 %tobool5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.else
  store i32 1, i32* %i, align 4, !tbaa !52
  %11 = load %struct.gs_image3x_s*, %struct.gs_image3x_s** %pim.addr, align 8, !tbaa !1
  %Shape = getelementptr inbounds %struct.gs_image3x_s, %struct.gs_image3x_s* %11, i32 0, i32 11
  store %struct.gs_image3x_mask_s* %Shape, %struct.gs_image3x_mask_s** %pixm, align 8, !tbaa !1
  br label %if.end.8

if.else.7:                                        ; preds = %if.else
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.32

if.end.8:                                         ; preds = %if.then.6
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %if.end
  %12 = load %struct.gx_device_s**, %struct.gx_device_s*** %pmcdev.addr, align 8, !tbaa !1
  %13 = load i32, i32* %i, align 4, !tbaa !52
  %idxprom = sext i32 %13 to i64
  %14 = load %struct.gx_device_s**, %struct.gx_device_s*** %midev.addr, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds %struct.gx_device_s*, %struct.gx_device_s** %14, i64 %idxprom
  %15 = load %struct.gx_device_s*, %struct.gx_device_s** %arrayidx10, align 8, !tbaa !1
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i32 @pdf_make_mxd(%struct.gx_device_s** %12, %struct.gx_device_s* %15, %struct.gs_memory_s* %16) #6
  store i32 %call, i32* %code, align 4, !tbaa !52
  %17 = load i32, i32* %code, align 4, !tbaa !52
  %cmp = icmp slt i32 %17, 0
  br i1 %cmp, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.9
  %18 = load i32, i32* %code, align 4, !tbaa !52
  store i32 %18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.32

if.end.12:                                        ; preds = %if.end.9
  %19 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %20 = bitcast %struct.gx_device_s* %19 to %struct.gx_device_pdf_s*
  %21 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %22 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %23 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %24 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %25 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %26 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %28 = load %struct.gx_image_enum_common_s**, %struct.gx_image_enum_common_s*** %pinfo.addr, align 8, !tbaa !1
  %call13 = call i32 @pdf_begin_typed_image(%struct.gx_device_pdf_s* %20, %struct.gs_imager_state_s* %21, %struct.gs_matrix_s* %22, %struct.gs_image_common_s* %23, %struct.gs_int_rect_s* %24, %struct.gx_device_color_s* %25, %struct.gx_clip_path_s* %26, %struct.gs_memory_s* %27, %struct.gx_image_enum_common_s** %28, i32 2) #6
  store i32 %call13, i32* %code, align 4, !tbaa !52
  %29 = load i32, i32* %code, align 4, !tbaa !52
  %cmp14 = icmp slt i32 %29, 0
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.12
  %30 = load i32, i32* %code, align 4, !tbaa !52
  store i32 %30, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.32

if.end.16:                                        ; preds = %if.end.12
  %31 = load %struct.gx_image_enum_common_s**, %struct.gx_image_enum_common_s*** %pinfo.addr, align 8, !tbaa !1
  %32 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %31, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_image_enum_common_s, %struct.gx_image_enum_common_s* %32, i32 0, i32 1
  %33 = load %struct.gx_image_enum_procs_s*, %struct.gx_image_enum_procs_s** %procs, align 8, !tbaa !194
  %cmp17 = icmp ne %struct.gx_image_enum_procs_s* %33, @pdf_image_enum_procs
  br i1 %cmp17, label %if.then.18, label %if.end.21

if.then.18:                                       ; preds = %if.end.16
  %34 = load %struct.gx_image_enum_common_s**, %struct.gx_image_enum_common_s*** %pinfo.addr, align 8, !tbaa !1
  %35 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %34, align 8, !tbaa !1
  %call19 = call i32 @gx_image_end(%struct.gx_image_enum_common_s* %35, i32 0) #6
  %36 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs20 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %36, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs20, i32 0, i32 2
  %37 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !114
  %38 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %39 = load %struct.gx_device_s**, %struct.gx_device_s*** %pmcdev.addr, align 8, !tbaa !1
  %40 = load %struct.gx_device_s*, %struct.gx_device_s** %39, align 8, !tbaa !1
  %41 = bitcast %struct.gx_device_s* %40 to i8*
  call void %37(%struct.gs_memory_s* %38, i8* %41, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i32 0, i32 0)) #6
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.32

if.end.21:                                        ; preds = %if.end.16
  %42 = load i32, i32* %i, align 4, !tbaa !52
  %idxprom22 = sext i32 %42 to i64
  %43 = load %struct.gx_image_enum_common_s**, %struct.gx_image_enum_common_s*** %pminfo.addr, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %43, i64 %idxprom22
  %44 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %arrayidx23, align 8, !tbaa !1
  %45 = bitcast %struct.gx_image_enum_common_s* %44 to %struct.pdf_image_enum_s*
  store %struct.pdf_image_enum_s* %45, %struct.pdf_image_enum_s** %pmie, align 8, !tbaa !1
  %46 = load %struct.gs_image3x_mask_s*, %struct.gs_image3x_mask_s** %pixm, align 8, !tbaa !1
  %has_Matte = getelementptr inbounds %struct.gs_image3x_mask_s, %struct.gs_image3x_mask_s* %46, i32 0, i32 2
  %47 = load i32, i32* %has_Matte, align 4, !tbaa !196
  %tobool24 = icmp ne i32 %47, 0
  br i1 %tobool24, label %if.then.25, label %if.end.31

if.then.25:                                       ; preds = %if.end.21
  %48 = bitcast i32* %num_components to i8*
  call void @llvm.lifetime.start(i64 4, i8* %48) #1
  %49 = load %struct.gs_image3x_s*, %struct.gs_image3x_s** %pim.addr, align 8, !tbaa !1
  %ColorSpace = getelementptr inbounds %struct.gs_image3x_s, %struct.gs_image3x_s* %49, i32 0, i32 9
  %50 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace, align 8, !tbaa !197
  %call26 = call i32 @gs_color_space_num_components(%struct.gs_color_space_s* %50) #6
  store i32 %call26, i32* %num_components, align 4, !tbaa !52
  %51 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pmie, align 8, !tbaa !1
  %writer = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %51, i32 0, i32 12
  %pres = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %writer, i32 0, i32 3
  %52 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !198
  %object = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %52, i32 0, i32 7
  %53 = load %struct.cos_object_s*, %struct.cos_object_s** %object, align 8, !tbaa !66
  %54 = bitcast %struct.cos_object_s* %53 to %struct.cos_dict_s*
  %55 = load %struct.gs_image3x_mask_s*, %struct.gs_image3x_mask_s** %pixm, align 8, !tbaa !1
  %Matte = getelementptr inbounds %struct.gs_image3x_mask_s, %struct.gs_image3x_mask_s* %55, i32 0, i32 1
  %arraydecay = getelementptr inbounds [64 x float], [64 x float]* %Matte, i32 0, i32 0
  %56 = load i32, i32* %num_components, align 4, !tbaa !52
  %call27 = call i32 @cos_dict_put_c_key_floats(%struct.cos_dict_s* %54, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0), float* %arraydecay, i32 %56) #6
  store i32 %call27, i32* %code, align 4, !tbaa !52
  %57 = load i32, i32* %code, align 4, !tbaa !52
  %cmp28 = icmp slt i32 %57, 0
  br i1 %cmp28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.then.25
  %58 = load i32, i32* %code, align 4, !tbaa !52
  store i32 %58, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.30:                                        ; preds = %if.then.25
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.30, %if.then.29
  %59 = bitcast i32* %num_components to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.32 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.31

if.end.31:                                        ; preds = %cleanup.cont, %if.end.21
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.32

cleanup.32:                                       ; preds = %if.end.31, %cleanup, %if.then.18, %if.then.15, %if.then.11, %if.else.7, %if.then.3
  %60 = bitcast %struct.gs_image3x_mask_s** %pixm to i8*
  call void @llvm.lifetime.end(i64 8, i8* %60) #1
  %61 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #1
  %62 = bitcast %struct.pdf_image_enum_s** %pmie to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #1
  %63 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #1
  %64 = load i32, i32* %retval
  ret i32 %64
}

; Function Attrs: nounwind uwtable
define internal i32 @convert_type4_image(%struct.gx_device_pdf_s* %pdev, %struct.gs_imager_state_s* %pis, %struct.gs_matrix_s* %pmat, %struct.gs_image_common_s* %pic, %struct.gs_int_rect_s* %prect, %struct.gx_device_color_s* %pdcolor, %struct.gx_clip_path_s* %pcpath, %struct.gs_memory_s* %mem, %struct.gx_image_enum_common_s** %pinfo, i32 %context, %union.image_union_s* %image, %struct.cos_dict_s* %pnamed) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %pic.addr = alloca %struct.gs_image_common_s*, align 8
  %prect.addr = alloca %struct.gs_int_rect_s*, align 8
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pinfo.addr = alloca %struct.gx_image_enum_common_s**, align 8
  %context.addr = alloca i32, align 4
  %image.addr = alloca %union.image_union_s*, align 8
  %pnamed.addr = alloca %struct.cos_dict_s*, align 8
  %icolor = alloca %struct.gx_device_color_s, align 8
  %code = alloca i32, align 4
  %pgs = alloca %struct.gs_state_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  store %struct.gs_image_common_s* %pic, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  store %struct.gs_int_rect_s* %prect, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gx_image_enum_common_s** %pinfo, %struct.gx_image_enum_common_s*** %pinfo.addr, align 8, !tbaa !1
  store i32 %context, i32* %context.addr, align 4, !tbaa !5
  store %union.image_union_s* %image, %union.image_union_s** %image.addr, align 8, !tbaa !1
  store %struct.cos_dict_s* %pnamed, %struct.cos_dict_s** %pnamed.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_color_s* %icolor to i8*
  call void @llvm.lifetime.start(i64 656, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %image_mask_is_SMask = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %2, i32 0, i32 221
  store i32 0, i32* %image_mask_is_SMask, align 4, !tbaa !103
  %3 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %4 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %5 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %6 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %7 = bitcast %struct.gs_image_common_s* %6 to %struct.gs_image4_s*
  %8 = load %union.image_union_s*, %union.image_union_s** %image.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %union.image_union_s, %union.image_union_s* %8, i64 0
  %type1 = bitcast %union.image_union_s* %arrayidx to %struct.gs_image1_s*
  %call = call i32 @pdf_convert_image4_to_image1(%struct.gx_device_pdf_s* %3, %struct.gs_imager_state_s* %4, %struct.gx_device_color_s* %5, %struct.gs_image4_s* %7, %struct.gs_image1_s* %type1, %struct.gx_device_color_s* %icolor) #6
  %cmp = icmp sge i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end.22

if.then:                                          ; preds = %entry
  %9 = bitcast %struct.gs_state_s** %pgs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %call1 = call %struct.gs_state_s* @gx_hld_get_gstate_ptr(%struct.gs_imager_state_s* %10) #6
  store %struct.gs_state_s* %call1, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %11 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %cmp2 = icmp eq %struct.gs_state_s* %11, null
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %12 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pnamed.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.cos_dict_s* %12, null
  br i1 %tobool, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %13 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %NI_stack = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %13, i32 0, i32 183
  %14 = load %struct.cos_array_s*, %struct.cos_array_s** %NI_stack, align 8, !tbaa !95
  %15 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pnamed.addr, align 8, !tbaa !1
  %cos_procs = getelementptr inbounds %struct.cos_dict_s, %struct.cos_dict_s* %15, i32 0, i32 0
  %16 = bitcast %struct.cos_object_procs_s** %cos_procs to %struct.cos_object_s*
  %call5 = call i32 @cos_array_add_object(%struct.cos_array_s* %14, %struct.cos_object_s* %16) #6
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.end
  %17 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %call7 = call i32 @gs_gsave(%struct.gs_state_s* %17) #6
  store i32 %call7, i32* %code, align 4, !tbaa !52
  %18 = load i32, i32* %code, align 4, !tbaa !52
  %cmp8 = icmp slt i32 %18, 0
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.6
  %19 = load i32, i32* %code, align 4, !tbaa !52
  store i32 %19, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %if.end.6
  %20 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %21 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %22 = bitcast %struct.gs_image_common_s* %21 to %struct.gs_image4_s*
  %ColorSpace = getelementptr inbounds %struct.gs_image4_s, %struct.gs_image4_s* %22, i32 0, i32 9
  %23 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace, align 8, !tbaa !199
  %call11 = call i32 @gs_setcolorspace(%struct.gs_state_s* %20, %struct.gs_color_space_s* %23) #6
  store i32 %call11, i32* %code, align 4, !tbaa !52
  %24 = load i32, i32* %code, align 4, !tbaa !52
  %cmp12 = icmp slt i32 %24, 0
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.10
  %25 = load i32, i32* %code, align 4, !tbaa !52
  store i32 %25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %if.end.10
  %26 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %27 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %28 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %29 = load %union.image_union_s*, %union.image_union_s** %image.addr, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds %union.image_union_s, %union.image_union_s* %29, i64 0
  %type116 = bitcast %union.image_union_s* %arrayidx15 to %struct.gs_image1_s*
  %30 = bitcast %struct.gs_image1_s* %type116 to %struct.gs_image_common_s*
  %31 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %32 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %33 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %34 = load %struct.gx_image_enum_common_s**, %struct.gx_image_enum_common_s*** %pinfo.addr, align 8, !tbaa !1
  %35 = load i32, i32* %context.addr, align 4, !tbaa !5
  %call17 = call i32 @pdf_begin_typed_image(%struct.gx_device_pdf_s* %26, %struct.gs_imager_state_s* %27, %struct.gs_matrix_s* %28, %struct.gs_image_common_s* %30, %struct.gs_int_rect_s* %31, %struct.gx_device_color_s* %icolor, %struct.gx_clip_path_s* %32, %struct.gs_memory_s* %33, %struct.gx_image_enum_common_s** %34, i32 %35) #6
  store i32 %call17, i32* %code, align 4, !tbaa !52
  %36 = load i32, i32* %code, align 4, !tbaa !52
  %cmp18 = icmp slt i32 %36, 0
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.14
  %37 = load i32, i32* %code, align 4, !tbaa !52
  store i32 %37, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.20:                                        ; preds = %if.end.14
  %38 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %call21 = call i32 @gs_grestore(%struct.gs_state_s* %38) #6
  store i32 %call21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.20, %if.then.19, %if.then.13, %if.then.9, %if.then.3
  %39 = bitcast %struct.gs_state_s** %pgs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  br label %cleanup.23

if.end.22:                                        ; preds = %entry
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.23

cleanup.23:                                       ; preds = %if.end.22, %cleanup
  %40 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  %41 = bitcast %struct.gx_device_color_s* %icolor to i8*
  call void @llvm.lifetime.end(i64 656, i8* %41) #1
  %42 = load i32, i32* %retval
  ret i32 %42
}

; Function Attrs: nounwind uwtable
define internal i32 @convert_type4_to_masked_image(%struct.gx_device_pdf_s* %pdev, %struct.gs_imager_state_s* %pis, %struct.gs_image_common_s* %pic, %struct.gs_int_rect_s* %prect, %struct.gx_device_color_s* %pdcolor, %struct.gx_clip_path_s* %pcpath, %struct.gs_memory_s* %mem, %struct.gx_image_enum_common_s** %pinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pic.addr = alloca %struct.gs_image_common_s*, align 8
  %prect.addr = alloca %struct.gs_int_rect_s*, align 8
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pinfo.addr = alloca %struct.gx_image_enum_common_s**, align 8
  %m = alloca %struct.gs_matrix_s, align 4
  %m1 = alloca %struct.gs_matrix_s, align 4
  %mi = alloca %struct.gs_matrix_s, align 4
  %pi4 = alloca %struct.gs_image4_s, align 8
  %code = alloca i32, align 4
  %cvd = alloca %struct.pdf_lcvd_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gs_image_common_s* %pic, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  store %struct.gs_int_rect_s* %prect, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gx_image_enum_common_s** %pinfo, %struct.gx_image_enum_common_s*** %pinfo.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_matrix_s* %m to i8*
  call void @llvm.lifetime.start(i64 24, i8* %0) #1
  %1 = bitcast %struct.gs_matrix_s* %m1 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %1) #1
  %2 = bitcast %struct.gs_matrix_s* %mi to i8*
  call void @llvm.lifetime.start(i64 24, i8* %2) #1
  %3 = bitcast %struct.gs_image4_s* %pi4 to i8*
  call void @llvm.lifetime.start(i64 1112, i8* %3) #1
  %4 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gs_image_common_s* %4 to %struct.gs_image4_s*
  %6 = bitcast %struct.gs_image4_s* %pi4 to i8*
  %7 = bitcast %struct.gs_image4_s* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 1112, i32 8, i1 false), !tbaa.struct !120
  %8 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast %struct.pdf_lcvd_s** %cvd to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store %struct.pdf_lcvd_s* null, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %10 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %11 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call = call i32 @pdf_must_put_clip_path(%struct.gx_device_pdf_s* %10, %struct.gx_clip_path_s* %11) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %12 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call1 = call i32 @pdf_unclip(%struct.gx_device_pdf_s* %12) #6
  store i32 %call1, i32* %code, align 4, !tbaa !52
  br label %if.end

if.else:                                          ; preds = %entry
  %13 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call2 = call i32 @pdf_open_page(%struct.gx_device_pdf_s* %13, i32 1) #6
  store i32 %call2, i32* %code, align 4, !tbaa !52
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %14 = load i32, i32* %code, align 4, !tbaa !52
  %cmp = icmp slt i32 %14, 0
  br i1 %cmp, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %15 = load i32, i32* %code, align 4, !tbaa !52
  store i32 %15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %16 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %17 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call5 = call i32 @pdf_put_clip_path(%struct.gx_device_pdf_s* %16, %struct.gx_clip_path_s* %17) #6
  store i32 %call5, i32* %code, align 4, !tbaa !52
  %18 = load i32, i32* %code, align 4, !tbaa !52
  %cmp6 = icmp slt i32 %18, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  %19 = load i32, i32* %code, align 4, !tbaa !52
  store i32 %19, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.end.4
  call void @gs_make_identity(%struct.gs_matrix_s* %m1) #6
  %20 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %ImageMatrix = getelementptr inbounds %struct.gs_image_common_s, %struct.gs_image_common_s* %20, i32 0, i32 1
  %call9 = call i32 @gs_matrix_invert(%struct.gs_matrix_s* %ImageMatrix, %struct.gs_matrix_s* %mi) #6
  %21 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %21, i32 0, i32 5
  %22 = bitcast %struct.gs_matrix_fixed_s* %ctm to %struct.gs_matrix_s*
  %call10 = call i32 @gs_matrix_multiply(%struct.gs_matrix_s* %mi, %struct.gs_matrix_s* %22, %struct.gs_matrix_s* %m) #6
  %23 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %24 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %Width = getelementptr inbounds %struct.gs_image4_s, %struct.gs_image4_s* %pi4, i32 0, i32 2
  %25 = load i32, i32* %Width, align 4, !tbaa !201
  %Height = getelementptr inbounds %struct.gs_image4_s, %struct.gs_image4_s* %pi4, i32 0, i32 3
  %26 = load i32, i32* %Height, align 4, !tbaa !202
  %call11 = call i32 @pdf_setup_masked_image_converter(%struct.gx_device_pdf_s* %23, %struct.gs_memory_s* %24, %struct.gs_matrix_s* %m, %struct.pdf_lcvd_s** %cvd, i32 1, i32 0, i32 0, i32 %25, i32 %26, i32 0) #6
  store i32 %call11, i32* %code, align 4, !tbaa !52
  %27 = load i32, i32* %code, align 4, !tbaa !52
  %cmp12 = icmp slt i32 %27, 0
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.8
  %28 = load i32, i32* %code, align 4, !tbaa !52
  store i32 %28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %if.end.8
  %29 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %mdev = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %29, i32 0, i32 0
  %is_open = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev, i32 0, i32 9
  store i32 1, i32* %is_open, align 4, !tbaa !203
  %30 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %mask = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %30, i32 0, i32 1
  %31 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask, align 8, !tbaa !212
  %is_open15 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %31, i32 0, i32 9
  store i32 1, i32* %is_open15, align 4, !tbaa !213
  %32 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %mask_is_empty = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %32, i32 0, i32 7
  store i32 0, i32* %mask_is_empty, align 4, !tbaa !214
  %33 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %mask16 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %33, i32 0, i32 1
  %34 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask16, align 8, !tbaa !212
  %procs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %34, i32 0, i32 42
  %fill_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 7
  %35 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rectangle, align 8, !tbaa !215
  %36 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %mask17 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %36, i32 0, i32 1
  %37 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask17, align 8, !tbaa !212
  %38 = bitcast %struct.gx_device_memory_s* %37 to %struct.gx_device_s*
  %39 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %mask18 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %39, i32 0, i32 1
  %40 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask18, align 8, !tbaa !212
  %width = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %40, i32 0, i32 13
  %41 = load i32, i32* %width, align 4, !tbaa !216
  %42 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %mask19 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %42, i32 0, i32 1
  %43 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask19, align 8, !tbaa !212
  %height = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %43, i32 0, i32 14
  %44 = load i32, i32* %height, align 4, !tbaa !217
  %call20 = call i32 %35(%struct.gx_device_s* %38, i32 0, i32 0, i32 %41, i32 %44, i64 0) #6
  store i32 %call20, i32* %code, align 4, !tbaa !52
  %45 = load i32, i32* %code, align 4, !tbaa !52
  %cmp21 = icmp slt i32 %45, 0
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.14
  %46 = load i32, i32* %code, align 4, !tbaa !52
  store i32 %46, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.23:                                        ; preds = %if.end.14
  %47 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %48 = bitcast %struct.pdf_lcvd_s* %47 to %struct.gx_device_s*
  call void @gx_device_retain(%struct.gx_device_s* %48, i32 1) #6
  %49 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %mask24 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %49, i32 0, i32 1
  %50 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask24, align 8, !tbaa !212
  %51 = bitcast %struct.gx_device_memory_s* %50 to %struct.gx_device_s*
  call void @gx_device_retain(%struct.gx_device_s* %51, i32 1) #6
  %ImageMatrix25 = getelementptr inbounds %struct.gs_image4_s, %struct.gs_image4_s* %pi4, i32 0, i32 1
  call void @gs_make_identity(%struct.gs_matrix_s* %ImageMatrix25) #6
  %52 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %53 = bitcast %struct.pdf_lcvd_s* %52 to %struct.gx_device_s*
  %54 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %55 = bitcast %struct.gs_image4_s* %pi4 to %struct.gs_image_common_s*
  %56 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %57 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %58 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %59 = load %struct.gx_image_enum_common_s**, %struct.gx_image_enum_common_s*** %pinfo.addr, align 8, !tbaa !1
  %call26 = call i32 @gx_default_begin_typed_image(%struct.gx_device_s* %53, %struct.gs_imager_state_s* %54, %struct.gs_matrix_s* %m1, %struct.gs_image_common_s* %55, %struct.gs_int_rect_s* %56, %struct.gx_device_color_s* %57, %struct.gx_clip_path_s* null, %struct.gs_memory_s* %58, %struct.gx_image_enum_common_s** %59) #6
  store i32 %call26, i32* %code, align 4, !tbaa !52
  %60 = load i32, i32* %code, align 4, !tbaa !52
  %cmp27 = icmp slt i32 %60, 0
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.23
  %61 = load i32, i32* %code, align 4, !tbaa !52
  store i32 %61, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.29:                                        ; preds = %if.end.23
  %62 = load %struct.gx_image_enum_common_s**, %struct.gx_image_enum_common_s*** %pinfo.addr, align 8, !tbaa !1
  %63 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %62, align 8, !tbaa !1
  %procs30 = getelementptr inbounds %struct.gx_image_enum_common_s, %struct.gx_image_enum_common_s* %63, i32 0, i32 1
  store %struct.gx_image_enum_procs_s* @pdf_image_cvd_enum_procs, %struct.gx_image_enum_procs_s** %procs30, align 8, !tbaa !194
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.29, %if.then.28, %if.then.22, %if.then.13, %if.then.7, %if.then.3
  %64 = bitcast %struct.pdf_lcvd_s** %cvd to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #1
  %65 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #1
  %66 = bitcast %struct.gs_image4_s* %pi4 to i8*
  call void @llvm.lifetime.end(i64 1112, i8* %66) #1
  %67 = bitcast %struct.gs_matrix_s* %mi to i8*
  call void @llvm.lifetime.end(i64 24, i8* %67) #1
  %68 = bitcast %struct.gs_matrix_s* %m1 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %68) #1
  %69 = bitcast %struct.gs_matrix_s* %m to i8*
  call void @llvm.lifetime.end(i64 24, i8* %69) #1
  %70 = load i32, i32* %retval
  ret i32 %70
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @gs_matrix_invert(%struct.gs_matrix_s*, %struct.gs_matrix_s*) #2

declare i32 @gs_matrix_multiply(%struct.gs_matrix_s*, %struct.gs_matrix_s*, %struct.gs_matrix_s*) #2

declare i32 @gs_bbox_transform_only(%struct.gs_rect_s*, %struct.gs_matrix_s*, %struct.gs_point_s*) #2

declare i32 @gs_points_bbox(%struct.gs_point_s*, %struct.gs_rect_s*) #2

declare i32 @gx_cpath_includes_rectangle(%struct.gx_clip_path_s*, i32, i32, i32, i32) #2

declare void @gx_make_clip_device_on_stack(%struct.gx_device_clip_s*, %struct.gx_clip_path_s*, %struct.gx_device_s*) #2

declare i64 @gx_device_black(%struct.gx_device_s*) #2

declare i32 @gx_default_fill_triangle(%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32) #2

declare i32 @gs_color_space_num_components(%struct.gs_color_space_s*) #2

declare i32 @pdf_must_put_clip_path(%struct.gx_device_pdf_s*, %struct.gx_clip_path_s*) #2

declare i32 @pdf_unclip(%struct.gx_device_pdf_s*) #2

declare i32 @pdf_open_page(%struct.gx_device_pdf_s*, i32) #2

declare %struct.gs_color_space_s* @gs_cspace_new_DeviceGray(%struct.gs_memory_s*) #2

declare i32 @pdf_prepare_imagemask(%struct.gx_device_pdf_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*) #2

declare i32 @pdf_prepare_image(%struct.gx_device_pdf_s*, %struct.gs_imager_state_s*) #2

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #3

declare i32 @gx_image_enum_common_init(%struct.gx_image_enum_common_s*, %struct.gs_data_image_s*, %struct.gx_image_enum_procs_s*, %struct.gx_device_s*, i32, i32) #2

declare void @pdf_make_bitmap_matrix(%struct.gs_matrix_s*, i32, i32, i32, i32, i32) #2

declare void @pdf_image_writer_init(%struct.pdf_image_writer_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @setup_image_colorspace(%struct.gx_device_pdf_s* %pdev, %union.image_union_s* %image, %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs_orig, %struct.pdf_color_space_names_s* %names, %struct.cos_value_s* %cs_value) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %image.addr = alloca %union.image_union_s*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pcs_orig.addr = alloca %struct.gs_color_space_s**, align 8
  %names.addr = alloca %struct.pdf_color_space_names_s*, align 8
  %cs_value.addr = alloca %struct.cos_value_s*, align 8
  %code = alloca i32, align 4
  %csi = alloca i32, align 4
  %csi2 = alloca i32, align 4
  %pcs2 = alloca %struct.gs_color_space_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %union.image_union_s* %image, %union.image_union_s** %image.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s** %pcs_orig, %struct.gs_color_space_s*** %pcs_orig.addr, align 8, !tbaa !1
  store %struct.pdf_color_space_names_s* %names, %struct.pdf_color_space_names_s** %names.addr, align 8, !tbaa !1
  store %struct.cos_value_s* %cs_value, %struct.cos_value_s** %cs_value.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %code, align 4, !tbaa !52
  %1 = bitcast i32* %csi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %csi2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast %struct.gs_color_space_s** %pcs2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %4, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %5 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %call = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %5) #6
  store i32 %call, i32* %csi2, align 4, !tbaa !5
  store i32 %call, i32* %csi, align 4, !tbaa !5
  %6 = load i32, i32* %csi, align 4, !tbaa !5
  %cmp = icmp eq i32 %6, 12
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %cmm_icc_profile_data = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %7, i32 0, i32 6
  %8 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data, align 8, !tbaa !218
  %call1 = call i32 @gsicc_get_default_type(%struct.cmm_profile_s* %8) #6
  store i32 %call1, i32* %csi2, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %CompatibilityLevel = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %9, i32 0, i32 75
  %10 = load double, double* %CompatibilityLevel, align 8, !tbaa !104
  %cmp2 = fcmp ole double %10, 1.200000e+00
  br i1 %cmp2, label %if.then.3, label %if.else.130

if.then.3:                                        ; preds = %if.end
  %11 = load i32, i32* %csi2, align 4, !tbaa !5
  %cmp4 = icmp eq i32 %11, 10
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.then.3
  %12 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %base_space = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %12, i32 0, i32 3
  %13 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space, align 8, !tbaa !219
  store %struct.gs_color_space_s* %13, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %14 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %call6 = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %14) #6
  store i32 %call6, i32* %csi2, align 4, !tbaa !5
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.then.3
  %15 = load i32, i32* %csi2, align 4, !tbaa !5
  switch i32 %15, label %sw.default.129 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.17
    i32 2, label %sw.bb.31
    i32 8, label %sw.bb.46
    i32 7, label %sw.bb.46
    i32 6, label %sw.bb.46
    i32 5, label %sw.bb.46
    i32 9, label %sw.bb.46
    i32 12, label %sw.bb.73
    i32 4, label %sw.bb.108
    i32 3, label %sw.bb.108
    i32 10, label %sw.bb.108
  ]

sw.bb:                                            ; preds = %if.end.7
  %16 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %16, i32 0, i32 73
  %ColorConversionStrategy = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params, i32 0, i32 17
  %17 = load i32, i32* %ColorConversionStrategy, align 4, !tbaa !220
  %cmp8 = icmp eq i32 %17, 0
  br i1 %cmp8, label %if.then.12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb
  %18 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %params9 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %18, i32 0, i32 73
  %ColorConversionStrategy10 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params9, i32 0, i32 17
  %19 = load i32, i32* %ColorConversionStrategy10, align 4, !tbaa !220
  %cmp11 = icmp eq i32 %19, 6
  br i1 %cmp11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %lor.lhs.false, %sw.bb
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false
  %20 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %21 = load %union.image_union_s*, %union.image_union_s** %image.addr, align 8, !tbaa !1
  %22 = load %struct.gs_color_space_s**, %struct.gs_color_space_s*** %pcs_orig.addr, align 8, !tbaa !1
  %23 = load %struct.pdf_color_space_names_s*, %struct.pdf_color_space_names_s** %names.addr, align 8, !tbaa !1
  %DeviceGray = getelementptr inbounds %struct.pdf_color_space_names_s, %struct.pdf_color_space_names_s* %23, i32 0, i32 1
  %24 = load i8*, i8** %DeviceGray, align 8, !tbaa !221
  %25 = load %struct.cos_value_s*, %struct.cos_value_s** %cs_value.addr, align 8, !tbaa !1
  %call13 = call i32 @setup_image_process_colorspace(%struct.gx_device_pdf_s* %20, %union.image_union_s* %21, %struct.gs_color_space_s** %22, i8* %24, %struct.cos_value_s* %25) #6
  store i32 %call13, i32* %code, align 4, !tbaa !52
  %26 = load i32, i32* %code, align 4, !tbaa !52
  %cmp14 = icmp slt i32 %26, 0
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.else
  %27 = load i32, i32* %code, align 4, !tbaa !52
  store i32 %27, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %if.else
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.17:                                         ; preds = %if.end.7
  %28 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %params18 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %28, i32 0, i32 73
  %ColorConversionStrategy19 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params18, i32 0, i32 17
  %29 = load i32, i32* %ColorConversionStrategy19, align 4, !tbaa !220
  %cmp20 = icmp eq i32 %29, 0
  br i1 %cmp20, label %if.then.25, label %lor.lhs.false.21

lor.lhs.false.21:                                 ; preds = %sw.bb.17
  %30 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %params22 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %30, i32 0, i32 73
  %ColorConversionStrategy23 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params22, i32 0, i32 17
  %31 = load i32, i32* %ColorConversionStrategy23, align 4, !tbaa !220
  %cmp24 = icmp eq i32 %31, 7
  br i1 %cmp24, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %lor.lhs.false.21, %sw.bb.17
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.26:                                       ; preds = %lor.lhs.false.21
  %32 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %33 = load %union.image_union_s*, %union.image_union_s** %image.addr, align 8, !tbaa !1
  %34 = load %struct.gs_color_space_s**, %struct.gs_color_space_s*** %pcs_orig.addr, align 8, !tbaa !1
  %35 = load %struct.pdf_color_space_names_s*, %struct.pdf_color_space_names_s** %names.addr, align 8, !tbaa !1
  %DeviceRGB = getelementptr inbounds %struct.pdf_color_space_names_s, %struct.pdf_color_space_names_s* %35, i32 0, i32 2
  %36 = load i8*, i8** %DeviceRGB, align 8, !tbaa !223
  %37 = load %struct.cos_value_s*, %struct.cos_value_s** %cs_value.addr, align 8, !tbaa !1
  %call27 = call i32 @setup_image_process_colorspace(%struct.gx_device_pdf_s* %32, %union.image_union_s* %33, %struct.gs_color_space_s** %34, i8* %36, %struct.cos_value_s* %37) #6
  store i32 %call27, i32* %code, align 4, !tbaa !52
  %38 = load i32, i32* %code, align 4, !tbaa !52
  %cmp28 = icmp slt i32 %38, 0
  br i1 %cmp28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.else.26
  %39 = load i32, i32* %code, align 4, !tbaa !52
  store i32 %39, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.30:                                        ; preds = %if.else.26
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.31:                                         ; preds = %if.end.7
  %40 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %params32 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %40, i32 0, i32 73
  %ColorConversionStrategy33 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params32, i32 0, i32 17
  %41 = load i32, i32* %ColorConversionStrategy33, align 4, !tbaa !220
  %cmp34 = icmp eq i32 %41, 0
  br i1 %cmp34, label %land.lhs.true, label %lor.lhs.false.35

lor.lhs.false.35:                                 ; preds = %sw.bb.31
  %42 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %params36 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %42, i32 0, i32 73
  %ColorConversionStrategy37 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params36, i32 0, i32 17
  %43 = load i32, i32* %ColorConversionStrategy37, align 4, !tbaa !220
  %cmp38 = icmp eq i32 %43, 5
  br i1 %cmp38, label %land.lhs.true, label %if.else.41

land.lhs.true:                                    ; preds = %lor.lhs.false.35, %sw.bb.31
  %44 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %params39 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %44, i32 0, i32 73
  %ConvertCMYKImagesToRGB = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params39, i32 0, i32 23
  %45 = load i32, i32* %ConvertCMYKImagesToRGB, align 4, !tbaa !224
  %tobool = icmp ne i32 %45, 0
  br i1 %tobool, label %if.else.41, label %if.then.40

if.then.40:                                       ; preds = %land.lhs.true
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.41:                                       ; preds = %land.lhs.true, %lor.lhs.false.35
  %46 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %47 = load %union.image_union_s*, %union.image_union_s** %image.addr, align 8, !tbaa !1
  %48 = load %struct.gs_color_space_s**, %struct.gs_color_space_s*** %pcs_orig.addr, align 8, !tbaa !1
  %49 = load %struct.pdf_color_space_names_s*, %struct.pdf_color_space_names_s** %names.addr, align 8, !tbaa !1
  %DeviceCMYK = getelementptr inbounds %struct.pdf_color_space_names_s, %struct.pdf_color_space_names_s* %49, i32 0, i32 0
  %50 = load i8*, i8** %DeviceCMYK, align 8, !tbaa !225
  %51 = load %struct.cos_value_s*, %struct.cos_value_s** %cs_value.addr, align 8, !tbaa !1
  %call42 = call i32 @setup_image_process_colorspace(%struct.gx_device_pdf_s* %46, %union.image_union_s* %47, %struct.gs_color_space_s** %48, i8* %50, %struct.cos_value_s* %51) #6
  store i32 %call42, i32* %code, align 4, !tbaa !52
  %52 = load i32, i32* %code, align 4, !tbaa !52
  %cmp43 = icmp slt i32 %52, 0
  br i1 %cmp43, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.else.41
  %53 = load i32, i32* %code, align 4, !tbaa !52
  store i32 %53, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.45:                                        ; preds = %if.else.41
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.46:                                         ; preds = %if.end.7, %if.end.7, %if.end.7, %if.end.7, %if.end.7
  %54 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %ForOPDFRead = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %54, i32 0, i32 99
  %55 = load i32, i32* %ForOPDFRead, align 4, !tbaa !226
  %tobool47 = icmp ne i32 %55, 0
  br i1 %tobool47, label %if.then.48, label %if.else.72

if.then.48:                                       ; preds = %sw.bb.46
  %56 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %params49 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %56, i32 0, i32 73
  %ColorConversionStrategy50 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params49, i32 0, i32 17
  %57 = load i32, i32* %ColorConversionStrategy50, align 4, !tbaa !220
  switch i32 %57, label %sw.default [
    i32 8, label %sw.bb.51
    i32 1, label %sw.bb.51
    i32 3, label %sw.bb.51
    i32 0, label %sw.bb.51
  ]

sw.bb.51:                                         ; preds = %if.then.48, %if.then.48, %if.then.48, %if.then.48
  %58 = load i32, i32* %csi2, align 4, !tbaa !5
  %cmp52 = icmp eq i32 %58, 9
  br i1 %cmp52, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %sw.bb.51
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.54:                                        ; preds = %sw.bb.51
  br label %sw.default

sw.default:                                       ; preds = %if.then.48, %if.end.54
  %59 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %pcm_color_info_index = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %59, i32 0, i32 206
  %60 = load i32, i32* %pcm_color_info_index, align 4, !tbaa !170
  switch i32 %60, label %sw.default.64 [
    i32 0, label %sw.bb.55
    i32 1, label %sw.bb.58
    i32 2, label %sw.bb.61
  ]

sw.bb.55:                                         ; preds = %sw.default
  %61 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %62 = load %union.image_union_s*, %union.image_union_s** %image.addr, align 8, !tbaa !1
  %63 = load %struct.gs_color_space_s**, %struct.gs_color_space_s*** %pcs_orig.addr, align 8, !tbaa !1
  %64 = load %struct.pdf_color_space_names_s*, %struct.pdf_color_space_names_s** %names.addr, align 8, !tbaa !1
  %DeviceGray56 = getelementptr inbounds %struct.pdf_color_space_names_s, %struct.pdf_color_space_names_s* %64, i32 0, i32 1
  %65 = load i8*, i8** %DeviceGray56, align 8, !tbaa !221
  %66 = load %struct.cos_value_s*, %struct.cos_value_s** %cs_value.addr, align 8, !tbaa !1
  %call57 = call i32 @setup_image_process_colorspace(%struct.gx_device_pdf_s* %61, %union.image_union_s* %62, %struct.gs_color_space_s** %63, i8* %65, %struct.cos_value_s* %66) #6
  store i32 %call57, i32* %code, align 4, !tbaa !52
  br label %sw.epilog

sw.bb.58:                                         ; preds = %sw.default
  %67 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %68 = load %union.image_union_s*, %union.image_union_s** %image.addr, align 8, !tbaa !1
  %69 = load %struct.gs_color_space_s**, %struct.gs_color_space_s*** %pcs_orig.addr, align 8, !tbaa !1
  %70 = load %struct.pdf_color_space_names_s*, %struct.pdf_color_space_names_s** %names.addr, align 8, !tbaa !1
  %DeviceRGB59 = getelementptr inbounds %struct.pdf_color_space_names_s, %struct.pdf_color_space_names_s* %70, i32 0, i32 2
  %71 = load i8*, i8** %DeviceRGB59, align 8, !tbaa !223
  %72 = load %struct.cos_value_s*, %struct.cos_value_s** %cs_value.addr, align 8, !tbaa !1
  %call60 = call i32 @setup_image_process_colorspace(%struct.gx_device_pdf_s* %67, %union.image_union_s* %68, %struct.gs_color_space_s** %69, i8* %71, %struct.cos_value_s* %72) #6
  store i32 %call60, i32* %code, align 4, !tbaa !52
  br label %sw.epilog

sw.bb.61:                                         ; preds = %sw.default
  %73 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %74 = load %union.image_union_s*, %union.image_union_s** %image.addr, align 8, !tbaa !1
  %75 = load %struct.gs_color_space_s**, %struct.gs_color_space_s*** %pcs_orig.addr, align 8, !tbaa !1
  %76 = load %struct.pdf_color_space_names_s*, %struct.pdf_color_space_names_s** %names.addr, align 8, !tbaa !1
  %DeviceCMYK62 = getelementptr inbounds %struct.pdf_color_space_names_s, %struct.pdf_color_space_names_s* %76, i32 0, i32 0
  %77 = load i8*, i8** %DeviceCMYK62, align 8, !tbaa !225
  %78 = load %struct.cos_value_s*, %struct.cos_value_s** %cs_value.addr, align 8, !tbaa !1
  %call63 = call i32 @setup_image_process_colorspace(%struct.gx_device_pdf_s* %73, %union.image_union_s* %74, %struct.gs_color_space_s** %75, i8* %77, %struct.cos_value_s* %78) #6
  store i32 %call63, i32* %code, align 4, !tbaa !52
  br label %sw.epilog

sw.default.64:                                    ; preds = %sw.default
  %79 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %79, i32 0, i32 3
  %80 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !148
  %call65 = call i8* @gs_program_name() #6
  %call66 = call i64 @gs_revision_number() #6
  call void @emprintf_program_ident(%struct.gs_memory_s* %80, i8* %call65, i64 %call66) #6
  %81 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory67 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %81, i32 0, i32 3
  %82 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory67, align 8, !tbaa !148
  %call68 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %82, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.30, i32 0, i32 0)) #6
  store i32 -21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb.61, %sw.bb.58, %sw.bb.55
  %83 = load i32, i32* %code, align 4, !tbaa !52
  %cmp69 = icmp slt i32 %83, 0
  br i1 %cmp69, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %sw.epilog
  %84 = load i32, i32* %code, align 4, !tbaa !52
  store i32 %84, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.71:                                        ; preds = %sw.epilog
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.72:                                       ; preds = %sw.bb.46
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.73:                                         ; preds = %if.end.7
  %85 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %cmm_icc_profile_data74 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %85, i32 0, i32 6
  %86 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data74, align 8, !tbaa !218
  %call75 = call i32 @gsicc_get_default_type(%struct.cmm_profile_s* %86) #6
  store i32 %call75, i32* %csi2, align 4, !tbaa !5
  %87 = load i32, i32* %csi2, align 4, !tbaa !5
  switch i32 %87, label %sw.default.106 [
    i32 0, label %sw.bb.76
    i32 1, label %sw.bb.86
    i32 2, label %sw.bb.96
  ]

sw.bb.76:                                         ; preds = %sw.bb.73
  %88 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %params77 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %88, i32 0, i32 73
  %ColorConversionStrategy78 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params77, i32 0, i32 17
  %89 = load i32, i32* %ColorConversionStrategy78, align 4, !tbaa !220
  %cmp79 = icmp eq i32 %89, 6
  br i1 %cmp79, label %if.then.84, label %lor.lhs.false.80

lor.lhs.false.80:                                 ; preds = %sw.bb.76
  %90 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %params81 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %90, i32 0, i32 73
  %ColorConversionStrategy82 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params81, i32 0, i32 17
  %91 = load i32, i32* %ColorConversionStrategy82, align 4, !tbaa !220
  %cmp83 = icmp eq i32 %91, 0
  br i1 %cmp83, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %lor.lhs.false.80, %sw.bb.76
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.85:                                        ; preds = %lor.lhs.false.80
  br label %sw.epilog.107

sw.bb.86:                                         ; preds = %sw.bb.73
  %92 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %params87 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %92, i32 0, i32 73
  %ColorConversionStrategy88 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params87, i32 0, i32 17
  %93 = load i32, i32* %ColorConversionStrategy88, align 4, !tbaa !220
  %cmp89 = icmp eq i32 %93, 7
  br i1 %cmp89, label %if.then.94, label %lor.lhs.false.90

lor.lhs.false.90:                                 ; preds = %sw.bb.86
  %94 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %params91 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %94, i32 0, i32 73
  %ColorConversionStrategy92 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params91, i32 0, i32 17
  %95 = load i32, i32* %ColorConversionStrategy92, align 4, !tbaa !220
  %cmp93 = icmp eq i32 %95, 0
  br i1 %cmp93, label %if.then.94, label %if.end.95

if.then.94:                                       ; preds = %lor.lhs.false.90, %sw.bb.86
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.95:                                        ; preds = %lor.lhs.false.90
  br label %sw.epilog.107

sw.bb.96:                                         ; preds = %sw.bb.73
  %96 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %params97 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %96, i32 0, i32 73
  %ColorConversionStrategy98 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params97, i32 0, i32 17
  %97 = load i32, i32* %ColorConversionStrategy98, align 4, !tbaa !220
  %cmp99 = icmp eq i32 %97, 5
  br i1 %cmp99, label %if.then.104, label %lor.lhs.false.100

lor.lhs.false.100:                                ; preds = %sw.bb.96
  %98 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %params101 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %98, i32 0, i32 73
  %ColorConversionStrategy102 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params101, i32 0, i32 17
  %99 = load i32, i32* %ColorConversionStrategy102, align 4, !tbaa !220
  %cmp103 = icmp eq i32 %99, 0
  br i1 %cmp103, label %if.then.104, label %if.end.105

if.then.104:                                      ; preds = %lor.lhs.false.100, %sw.bb.96
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.105:                                       ; preds = %lor.lhs.false.100
  br label %sw.epilog.107

sw.default.106:                                   ; preds = %sw.bb.73
  br label %sw.epilog.107

sw.epilog.107:                                    ; preds = %sw.default.106, %if.end.105, %if.end.95, %if.end.85
  br label %sw.bb.108

sw.bb.108:                                        ; preds = %if.end.7, %if.end.7, %if.end.7, %sw.epilog.107
  %100 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %pcm_color_info_index109 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %100, i32 0, i32 206
  %101 = load i32, i32* %pcm_color_info_index109, align 4, !tbaa !170
  switch i32 %101, label %sw.default.119 [
    i32 0, label %sw.bb.110
    i32 1, label %sw.bb.113
    i32 2, label %sw.bb.116
  ]

sw.bb.110:                                        ; preds = %sw.bb.108
  %102 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %103 = load %union.image_union_s*, %union.image_union_s** %image.addr, align 8, !tbaa !1
  %104 = load %struct.gs_color_space_s**, %struct.gs_color_space_s*** %pcs_orig.addr, align 8, !tbaa !1
  %105 = load %struct.pdf_color_space_names_s*, %struct.pdf_color_space_names_s** %names.addr, align 8, !tbaa !1
  %DeviceGray111 = getelementptr inbounds %struct.pdf_color_space_names_s, %struct.pdf_color_space_names_s* %105, i32 0, i32 1
  %106 = load i8*, i8** %DeviceGray111, align 8, !tbaa !221
  %107 = load %struct.cos_value_s*, %struct.cos_value_s** %cs_value.addr, align 8, !tbaa !1
  %call112 = call i32 @setup_image_process_colorspace(%struct.gx_device_pdf_s* %102, %union.image_union_s* %103, %struct.gs_color_space_s** %104, i8* %106, %struct.cos_value_s* %107) #6
  store i32 %call112, i32* %code, align 4, !tbaa !52
  br label %sw.epilog.125

sw.bb.113:                                        ; preds = %sw.bb.108
  %108 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %109 = load %union.image_union_s*, %union.image_union_s** %image.addr, align 8, !tbaa !1
  %110 = load %struct.gs_color_space_s**, %struct.gs_color_space_s*** %pcs_orig.addr, align 8, !tbaa !1
  %111 = load %struct.pdf_color_space_names_s*, %struct.pdf_color_space_names_s** %names.addr, align 8, !tbaa !1
  %DeviceRGB114 = getelementptr inbounds %struct.pdf_color_space_names_s, %struct.pdf_color_space_names_s* %111, i32 0, i32 2
  %112 = load i8*, i8** %DeviceRGB114, align 8, !tbaa !223
  %113 = load %struct.cos_value_s*, %struct.cos_value_s** %cs_value.addr, align 8, !tbaa !1
  %call115 = call i32 @setup_image_process_colorspace(%struct.gx_device_pdf_s* %108, %union.image_union_s* %109, %struct.gs_color_space_s** %110, i8* %112, %struct.cos_value_s* %113) #6
  store i32 %call115, i32* %code, align 4, !tbaa !52
  br label %sw.epilog.125

sw.bb.116:                                        ; preds = %sw.bb.108
  %114 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %115 = load %union.image_union_s*, %union.image_union_s** %image.addr, align 8, !tbaa !1
  %116 = load %struct.gs_color_space_s**, %struct.gs_color_space_s*** %pcs_orig.addr, align 8, !tbaa !1
  %117 = load %struct.pdf_color_space_names_s*, %struct.pdf_color_space_names_s** %names.addr, align 8, !tbaa !1
  %DeviceCMYK117 = getelementptr inbounds %struct.pdf_color_space_names_s, %struct.pdf_color_space_names_s* %117, i32 0, i32 0
  %118 = load i8*, i8** %DeviceCMYK117, align 8, !tbaa !225
  %119 = load %struct.cos_value_s*, %struct.cos_value_s** %cs_value.addr, align 8, !tbaa !1
  %call118 = call i32 @setup_image_process_colorspace(%struct.gx_device_pdf_s* %114, %union.image_union_s* %115, %struct.gs_color_space_s** %116, i8* %118, %struct.cos_value_s* %119) #6
  store i32 %call118, i32* %code, align 4, !tbaa !52
  br label %sw.epilog.125

sw.default.119:                                   ; preds = %sw.bb.108
  %120 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory120 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %120, i32 0, i32 3
  %121 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory120, align 8, !tbaa !148
  %call121 = call i8* @gs_program_name() #6
  %call122 = call i64 @gs_revision_number() #6
  call void @emprintf_program_ident(%struct.gs_memory_s* %121, i8* %call121, i64 %call122) #6
  %122 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory123 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %122, i32 0, i32 3
  %123 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory123, align 8, !tbaa !148
  %call124 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %123, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.30, i32 0, i32 0)) #6
  store i32 -21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog.125:                                    ; preds = %sw.bb.116, %sw.bb.113, %sw.bb.110
  %124 = load i32, i32* %code, align 4, !tbaa !52
  %cmp126 = icmp slt i32 %124, 0
  br i1 %cmp126, label %if.then.127, label %if.end.128

if.then.127:                                      ; preds = %sw.epilog.125
  %125 = load i32, i32* %code, align 4, !tbaa !52
  store i32 %125, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.128:                                       ; preds = %sw.epilog.125
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.default.129:                                   ; preds = %if.end.7
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.130:                                      ; preds = %if.end
  %126 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %params131 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %126, i32 0, i32 73
  %ColorConversionStrategy132 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params131, i32 0, i32 17
  %127 = load i32, i32* %ColorConversionStrategy132, align 4, !tbaa !220
  switch i32 %127, label %sw.default.408 [
    i32 8, label %sw.bb.133
    i32 1, label %sw.bb.133
    i32 3, label %sw.bb.133
    i32 0, label %sw.bb.133
    i32 2, label %sw.bb.134
    i32 5, label %sw.bb.135
    i32 6, label %sw.bb.234
    i32 4, label %sw.bb.321
    i32 7, label %sw.bb.321
  ]

sw.bb.133:                                        ; preds = %if.else.130, %if.else.130, %if.else.130, %if.else.130
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.134:                                        ; preds = %if.else.130
  store i32 2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.135:                                        ; preds = %if.else.130
  %128 = load i32, i32* %csi2, align 4, !tbaa !5
  switch i32 %128, label %sw.default.228 [
    i32 0, label %sw.bb.136
    i32 2, label %sw.bb.136
    i32 9, label %sw.bb.137
    i32 4, label %sw.bb.150
    i32 10, label %sw.bb.166
  ]

sw.bb.136:                                        ; preds = %sw.bb.135, %sw.bb.135
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.137:                                        ; preds = %sw.bb.135
  %129 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %129, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %sw.bb.137
  %130 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %base_space138 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %130, i32 0, i32 3
  %131 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space138, align 8, !tbaa !219
  %tobool139 = icmp ne %struct.gs_color_space_s* %131, null
  br i1 %tobool139, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %132 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %base_space140 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %132, i32 0, i32 3
  %133 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space140, align 8, !tbaa !219
  store %struct.gs_color_space_s* %133, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %134 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %call141 = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %134) #6
  store i32 %call141, i32* %csi, align 4, !tbaa !5
  %135 = load i32, i32* %csi, align 4, !tbaa !5
  %cmp142 = icmp eq i32 %135, 12
  br i1 %cmp142, label %if.then.143, label %if.end.146

if.then.143:                                      ; preds = %while.end
  %136 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %cmm_icc_profile_data144 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %136, i32 0, i32 6
  %137 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data144, align 8, !tbaa !218
  %call145 = call i32 @gsicc_get_default_type(%struct.cmm_profile_s* %137) #6
  store i32 %call145, i32* %csi, align 4, !tbaa !5
  br label %if.end.146

if.end.146:                                       ; preds = %if.then.143, %while.end
  %138 = load i32, i32* %csi, align 4, !tbaa !5
  %cmp147 = icmp eq i32 %138, 2
  br i1 %cmp147, label %if.then.148, label %if.else.149

if.then.148:                                      ; preds = %if.end.146
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.149:                                      ; preds = %if.end.146
  store i32 3, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.150:                                        ; preds = %sw.bb.135
  %139 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %139, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  br label %while.cond.151

while.cond.151:                                   ; preds = %while.body.154, %sw.bb.150
  %140 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %base_space152 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %140, i32 0, i32 3
  %141 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space152, align 8, !tbaa !219
  %tobool153 = icmp ne %struct.gs_color_space_s* %141, null
  br i1 %tobool153, label %while.body.154, label %while.end.156

while.body.154:                                   ; preds = %while.cond.151
  %142 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %base_space155 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %142, i32 0, i32 3
  %143 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space155, align 8, !tbaa !219
  store %struct.gs_color_space_s* %143, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  br label %while.cond.151

while.end.156:                                    ; preds = %while.cond.151
  %144 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %call157 = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %144) #6
  store i32 %call157, i32* %csi, align 4, !tbaa !5
  %145 = load i32, i32* %csi, align 4, !tbaa !5
  %cmp158 = icmp eq i32 %145, 12
  br i1 %cmp158, label %if.then.159, label %if.end.162

if.then.159:                                      ; preds = %while.end.156
  %146 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %cmm_icc_profile_data160 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %146, i32 0, i32 6
  %147 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data160, align 8, !tbaa !218
  %call161 = call i32 @gsicc_get_default_type(%struct.cmm_profile_s* %147) #6
  store i32 %call161, i32* %csi, align 4, !tbaa !5
  br label %if.end.162

if.end.162:                                       ; preds = %if.then.159, %while.end.156
  %148 = load i32, i32* %csi, align 4, !tbaa !5
  %cmp163 = icmp eq i32 %148, 2
  br i1 %cmp163, label %if.then.164, label %if.else.165

if.then.164:                                      ; preds = %if.end.162
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.165:                                      ; preds = %if.end.162
  store i32 4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.166:                                        ; preds = %sw.bb.135
  %149 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %base_space167 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %149, i32 0, i32 3
  %150 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space167, align 8, !tbaa !219
  store %struct.gs_color_space_s* %150, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %151 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %call168 = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %151) #6
  store i32 %call168, i32* %csi, align 4, !tbaa !5
  %152 = load i32, i32* %csi, align 4, !tbaa !5
  %cmp169 = icmp eq i32 %152, 12
  br i1 %cmp169, label %if.then.170, label %if.end.173

if.then.170:                                      ; preds = %sw.bb.166
  %153 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %cmm_icc_profile_data171 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %153, i32 0, i32 6
  %154 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data171, align 8, !tbaa !218
  %call172 = call i32 @gsicc_get_default_type(%struct.cmm_profile_s* %154) #6
  store i32 %call172, i32* %csi, align 4, !tbaa !5
  br label %if.end.173

if.end.173:                                       ; preds = %if.then.170, %sw.bb.166
  %155 = load i32, i32* %csi, align 4, !tbaa !5
  switch i32 %155, label %sw.default.207 [
    i32 0, label %sw.bb.174
    i32 2, label %sw.bb.174
    i32 9, label %sw.bb.175
    i32 4, label %sw.bb.191
  ]

sw.bb.174:                                        ; preds = %if.end.173, %if.end.173
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.175:                                        ; preds = %if.end.173
  %156 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %156, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  br label %while.cond.176

while.cond.176:                                   ; preds = %while.body.179, %sw.bb.175
  %157 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %base_space177 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %157, i32 0, i32 3
  %158 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space177, align 8, !tbaa !219
  %tobool178 = icmp ne %struct.gs_color_space_s* %158, null
  br i1 %tobool178, label %while.body.179, label %while.end.181

while.body.179:                                   ; preds = %while.cond.176
  %159 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %base_space180 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %159, i32 0, i32 3
  %160 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space180, align 8, !tbaa !219
  store %struct.gs_color_space_s* %160, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  br label %while.cond.176

while.end.181:                                    ; preds = %while.cond.176
  %161 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %call182 = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %161) #6
  store i32 %call182, i32* %csi, align 4, !tbaa !5
  %162 = load i32, i32* %csi, align 4, !tbaa !5
  %cmp183 = icmp eq i32 %162, 12
  br i1 %cmp183, label %if.then.184, label %if.end.187

if.then.184:                                      ; preds = %while.end.181
  %163 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %cmm_icc_profile_data185 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %163, i32 0, i32 6
  %164 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data185, align 8, !tbaa !218
  %call186 = call i32 @gsicc_get_default_type(%struct.cmm_profile_s* %164) #6
  store i32 %call186, i32* %csi, align 4, !tbaa !5
  br label %if.end.187

if.end.187:                                       ; preds = %if.then.184, %while.end.181
  %165 = load i32, i32* %csi, align 4, !tbaa !5
  %cmp188 = icmp eq i32 %165, 2
  br i1 %cmp188, label %if.then.189, label %if.else.190

if.then.189:                                      ; preds = %if.end.187
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.190:                                      ; preds = %if.end.187
  store i32 3, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.191:                                        ; preds = %if.end.173
  %166 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %166, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  br label %while.cond.192

while.cond.192:                                   ; preds = %while.body.195, %sw.bb.191
  %167 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %base_space193 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %167, i32 0, i32 3
  %168 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space193, align 8, !tbaa !219
  %tobool194 = icmp ne %struct.gs_color_space_s* %168, null
  br i1 %tobool194, label %while.body.195, label %while.end.197

while.body.195:                                   ; preds = %while.cond.192
  %169 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %base_space196 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %169, i32 0, i32 3
  %170 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space196, align 8, !tbaa !219
  store %struct.gs_color_space_s* %170, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  br label %while.cond.192

while.end.197:                                    ; preds = %while.cond.192
  %171 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %call198 = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %171) #6
  store i32 %call198, i32* %csi, align 4, !tbaa !5
  %172 = load i32, i32* %csi, align 4, !tbaa !5
  %cmp199 = icmp eq i32 %172, 12
  br i1 %cmp199, label %if.then.200, label %if.end.203

if.then.200:                                      ; preds = %while.end.197
  %173 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %cmm_icc_profile_data201 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %173, i32 0, i32 6
  %174 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data201, align 8, !tbaa !218
  %call202 = call i32 @gsicc_get_default_type(%struct.cmm_profile_s* %174) #6
  store i32 %call202, i32* %csi, align 4, !tbaa !5
  br label %if.end.203

if.end.203:                                       ; preds = %if.then.200, %while.end.197
  %175 = load i32, i32* %csi, align 4, !tbaa !5
  %cmp204 = icmp eq i32 %175, 2
  br i1 %cmp204, label %if.then.205, label %if.else.206

if.then.205:                                      ; preds = %if.end.203
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.206:                                      ; preds = %if.end.203
  store i32 4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.default.207:                                   ; preds = %if.end.173
  %176 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %pcm_color_info_index208 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %176, i32 0, i32 206
  %177 = load i32, i32* %pcm_color_info_index208, align 4, !tbaa !170
  switch i32 %177, label %sw.default.218 [
    i32 0, label %sw.bb.209
    i32 1, label %sw.bb.212
    i32 2, label %sw.bb.215
  ]

sw.bb.209:                                        ; preds = %sw.default.207
  %178 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %179 = load %union.image_union_s*, %union.image_union_s** %image.addr, align 8, !tbaa !1
  %180 = load %struct.gs_color_space_s**, %struct.gs_color_space_s*** %pcs_orig.addr, align 8, !tbaa !1
  %181 = load %struct.pdf_color_space_names_s*, %struct.pdf_color_space_names_s** %names.addr, align 8, !tbaa !1
  %DeviceGray210 = getelementptr inbounds %struct.pdf_color_space_names_s, %struct.pdf_color_space_names_s* %181, i32 0, i32 1
  %182 = load i8*, i8** %DeviceGray210, align 8, !tbaa !221
  %183 = load %struct.cos_value_s*, %struct.cos_value_s** %cs_value.addr, align 8, !tbaa !1
  %call211 = call i32 @setup_image_process_colorspace(%struct.gx_device_pdf_s* %178, %union.image_union_s* %179, %struct.gs_color_space_s** %180, i8* %182, %struct.cos_value_s* %183) #6
  store i32 %call211, i32* %code, align 4, !tbaa !52
  br label %sw.epilog.224

sw.bb.212:                                        ; preds = %sw.default.207
  %184 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %185 = load %union.image_union_s*, %union.image_union_s** %image.addr, align 8, !tbaa !1
  %186 = load %struct.gs_color_space_s**, %struct.gs_color_space_s*** %pcs_orig.addr, align 8, !tbaa !1
  %187 = load %struct.pdf_color_space_names_s*, %struct.pdf_color_space_names_s** %names.addr, align 8, !tbaa !1
  %DeviceRGB213 = getelementptr inbounds %struct.pdf_color_space_names_s, %struct.pdf_color_space_names_s* %187, i32 0, i32 2
  %188 = load i8*, i8** %DeviceRGB213, align 8, !tbaa !223
  %189 = load %struct.cos_value_s*, %struct.cos_value_s** %cs_value.addr, align 8, !tbaa !1
  %call214 = call i32 @setup_image_process_colorspace(%struct.gx_device_pdf_s* %184, %union.image_union_s* %185, %struct.gs_color_space_s** %186, i8* %188, %struct.cos_value_s* %189) #6
  store i32 %call214, i32* %code, align 4, !tbaa !52
  br label %sw.epilog.224

sw.bb.215:                                        ; preds = %sw.default.207
  %190 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %191 = load %union.image_union_s*, %union.image_union_s** %image.addr, align 8, !tbaa !1
  %192 = load %struct.gs_color_space_s**, %struct.gs_color_space_s*** %pcs_orig.addr, align 8, !tbaa !1
  %193 = load %struct.pdf_color_space_names_s*, %struct.pdf_color_space_names_s** %names.addr, align 8, !tbaa !1
  %DeviceCMYK216 = getelementptr inbounds %struct.pdf_color_space_names_s, %struct.pdf_color_space_names_s* %193, i32 0, i32 0
  %194 = load i8*, i8** %DeviceCMYK216, align 8, !tbaa !225
  %195 = load %struct.cos_value_s*, %struct.cos_value_s** %cs_value.addr, align 8, !tbaa !1
  %call217 = call i32 @setup_image_process_colorspace(%struct.gx_device_pdf_s* %190, %union.image_union_s* %191, %struct.gs_color_space_s** %192, i8* %194, %struct.cos_value_s* %195) #6
  store i32 %call217, i32* %code, align 4, !tbaa !52
  br label %sw.epilog.224

sw.default.218:                                   ; preds = %sw.default.207
  %196 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory219 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %196, i32 0, i32 3
  %197 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory219, align 8, !tbaa !148
  %call220 = call i8* @gs_program_name() #6
  %call221 = call i64 @gs_revision_number() #6
  call void @emprintf_program_ident(%struct.gs_memory_s* %197, i8* %call220, i64 %call221) #6
  %198 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory222 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %198, i32 0, i32 3
  %199 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory222, align 8, !tbaa !148
  %call223 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %199, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.30, i32 0, i32 0)) #6
  store i32 -21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog.224:                                    ; preds = %sw.bb.215, %sw.bb.212, %sw.bb.209
  %200 = load i32, i32* %code, align 4, !tbaa !52
  %cmp225 = icmp slt i32 %200, 0
  br i1 %cmp225, label %if.then.226, label %if.end.227

if.then.226:                                      ; preds = %sw.epilog.224
  %201 = load i32, i32* %code, align 4, !tbaa !52
  store i32 %201, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.227:                                       ; preds = %sw.epilog.224
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.default.228:                                   ; preds = %sw.bb.135
  %202 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %203 = load %union.image_union_s*, %union.image_union_s** %image.addr, align 8, !tbaa !1
  %204 = load %struct.gs_color_space_s**, %struct.gs_color_space_s*** %pcs_orig.addr, align 8, !tbaa !1
  %205 = load %struct.pdf_color_space_names_s*, %struct.pdf_color_space_names_s** %names.addr, align 8, !tbaa !1
  %DeviceCMYK229 = getelementptr inbounds %struct.pdf_color_space_names_s, %struct.pdf_color_space_names_s* %205, i32 0, i32 0
  %206 = load i8*, i8** %DeviceCMYK229, align 8, !tbaa !225
  %207 = load %struct.cos_value_s*, %struct.cos_value_s** %cs_value.addr, align 8, !tbaa !1
  %call230 = call i32 @setup_image_process_colorspace(%struct.gx_device_pdf_s* %202, %union.image_union_s* %203, %struct.gs_color_space_s** %204, i8* %206, %struct.cos_value_s* %207) #6
  store i32 %call230, i32* %code, align 4, !tbaa !52
  %208 = load i32, i32* %code, align 4, !tbaa !52
  %cmp231 = icmp slt i32 %208, 0
  br i1 %cmp231, label %if.then.232, label %if.end.233

if.then.232:                                      ; preds = %sw.default.228
  %209 = load i32, i32* %code, align 4, !tbaa !52
  store i32 %209, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.233:                                       ; preds = %sw.default.228
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.234:                                        ; preds = %if.else.130
  %210 = load i32, i32* %csi2, align 4, !tbaa !5
  switch i32 %210, label %sw.default.315 [
    i32 0, label %sw.bb.235
    i32 9, label %sw.bb.236
    i32 4, label %sw.bb.252
    i32 10, label %sw.bb.268
  ]

sw.bb.235:                                        ; preds = %sw.bb.234
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.236:                                        ; preds = %sw.bb.234
  %211 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %211, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  br label %while.cond.237

while.cond.237:                                   ; preds = %while.body.240, %sw.bb.236
  %212 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %base_space238 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %212, i32 0, i32 3
  %213 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space238, align 8, !tbaa !219
  %tobool239 = icmp ne %struct.gs_color_space_s* %213, null
  br i1 %tobool239, label %while.body.240, label %while.end.242

while.body.240:                                   ; preds = %while.cond.237
  %214 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %base_space241 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %214, i32 0, i32 3
  %215 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space241, align 8, !tbaa !219
  store %struct.gs_color_space_s* %215, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  br label %while.cond.237

while.end.242:                                    ; preds = %while.cond.237
  %216 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %call243 = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %216) #6
  store i32 %call243, i32* %csi, align 4, !tbaa !5
  %217 = load i32, i32* %csi, align 4, !tbaa !5
  %cmp244 = icmp eq i32 %217, 12
  br i1 %cmp244, label %if.then.245, label %if.end.248

if.then.245:                                      ; preds = %while.end.242
  %218 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %cmm_icc_profile_data246 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %218, i32 0, i32 6
  %219 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data246, align 8, !tbaa !218
  %call247 = call i32 @gsicc_get_default_type(%struct.cmm_profile_s* %219) #6
  store i32 %call247, i32* %csi, align 4, !tbaa !5
  br label %if.end.248

if.end.248:                                       ; preds = %if.then.245, %while.end.242
  %220 = load i32, i32* %csi, align 4, !tbaa !5
  %cmp249 = icmp eq i32 %220, 0
  br i1 %cmp249, label %if.then.250, label %if.else.251

if.then.250:                                      ; preds = %if.end.248
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.251:                                      ; preds = %if.end.248
  store i32 3, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.252:                                        ; preds = %sw.bb.234
  %221 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %221, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  br label %while.cond.253

while.cond.253:                                   ; preds = %while.body.256, %sw.bb.252
  %222 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %base_space254 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %222, i32 0, i32 3
  %223 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space254, align 8, !tbaa !219
  %tobool255 = icmp ne %struct.gs_color_space_s* %223, null
  br i1 %tobool255, label %while.body.256, label %while.end.258

while.body.256:                                   ; preds = %while.cond.253
  %224 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %base_space257 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %224, i32 0, i32 3
  %225 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space257, align 8, !tbaa !219
  store %struct.gs_color_space_s* %225, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  br label %while.cond.253

while.end.258:                                    ; preds = %while.cond.253
  %226 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %call259 = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %226) #6
  store i32 %call259, i32* %csi, align 4, !tbaa !5
  %227 = load i32, i32* %csi, align 4, !tbaa !5
  %cmp260 = icmp eq i32 %227, 12
  br i1 %cmp260, label %if.then.261, label %if.end.264

if.then.261:                                      ; preds = %while.end.258
  %228 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %cmm_icc_profile_data262 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %228, i32 0, i32 6
  %229 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data262, align 8, !tbaa !218
  %call263 = call i32 @gsicc_get_default_type(%struct.cmm_profile_s* %229) #6
  store i32 %call263, i32* %csi, align 4, !tbaa !5
  br label %if.end.264

if.end.264:                                       ; preds = %if.then.261, %while.end.258
  %230 = load i32, i32* %csi, align 4, !tbaa !5
  %cmp265 = icmp eq i32 %230, 0
  br i1 %cmp265, label %if.then.266, label %if.else.267

if.then.266:                                      ; preds = %if.end.264
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.267:                                      ; preds = %if.end.264
  store i32 4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.268:                                        ; preds = %sw.bb.234
  %231 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %base_space269 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %231, i32 0, i32 3
  %232 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space269, align 8, !tbaa !219
  store %struct.gs_color_space_s* %232, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %233 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %call270 = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %233) #6
  store i32 %call270, i32* %csi, align 4, !tbaa !5
  %234 = load i32, i32* %csi, align 4, !tbaa !5
  %cmp271 = icmp eq i32 %234, 12
  br i1 %cmp271, label %if.then.272, label %if.end.275

if.then.272:                                      ; preds = %sw.bb.268
  %235 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %cmm_icc_profile_data273 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %235, i32 0, i32 6
  %236 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data273, align 8, !tbaa !218
  %call274 = call i32 @gsicc_get_default_type(%struct.cmm_profile_s* %236) #6
  store i32 %call274, i32* %csi, align 4, !tbaa !5
  br label %if.end.275

if.end.275:                                       ; preds = %if.then.272, %sw.bb.268
  %237 = load i32, i32* %csi, align 4, !tbaa !5
  switch i32 %237, label %sw.default.309 [
    i32 0, label %sw.bb.276
    i32 9, label %sw.bb.277
    i32 4, label %sw.bb.293
  ]

sw.bb.276:                                        ; preds = %if.end.275
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.277:                                        ; preds = %if.end.275
  %238 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %238, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  br label %while.cond.278

while.cond.278:                                   ; preds = %while.body.281, %sw.bb.277
  %239 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %base_space279 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %239, i32 0, i32 3
  %240 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space279, align 8, !tbaa !219
  %tobool280 = icmp ne %struct.gs_color_space_s* %240, null
  br i1 %tobool280, label %while.body.281, label %while.end.283

while.body.281:                                   ; preds = %while.cond.278
  %241 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %base_space282 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %241, i32 0, i32 3
  %242 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space282, align 8, !tbaa !219
  store %struct.gs_color_space_s* %242, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  br label %while.cond.278

while.end.283:                                    ; preds = %while.cond.278
  %243 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %call284 = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %243) #6
  store i32 %call284, i32* %csi, align 4, !tbaa !5
  %244 = load i32, i32* %csi, align 4, !tbaa !5
  %cmp285 = icmp eq i32 %244, 12
  br i1 %cmp285, label %if.then.286, label %if.end.289

if.then.286:                                      ; preds = %while.end.283
  %245 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %cmm_icc_profile_data287 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %245, i32 0, i32 6
  %246 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data287, align 8, !tbaa !218
  %call288 = call i32 @gsicc_get_default_type(%struct.cmm_profile_s* %246) #6
  store i32 %call288, i32* %csi, align 4, !tbaa !5
  br label %if.end.289

if.end.289:                                       ; preds = %if.then.286, %while.end.283
  %247 = load i32, i32* %csi, align 4, !tbaa !5
  %cmp290 = icmp eq i32 %247, 0
  br i1 %cmp290, label %if.then.291, label %if.else.292

if.then.291:                                      ; preds = %if.end.289
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.292:                                      ; preds = %if.end.289
  store i32 3, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.293:                                        ; preds = %if.end.275
  %248 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %248, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  br label %while.cond.294

while.cond.294:                                   ; preds = %while.body.297, %sw.bb.293
  %249 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %base_space295 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %249, i32 0, i32 3
  %250 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space295, align 8, !tbaa !219
  %tobool296 = icmp ne %struct.gs_color_space_s* %250, null
  br i1 %tobool296, label %while.body.297, label %while.end.299

while.body.297:                                   ; preds = %while.cond.294
  %251 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %base_space298 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %251, i32 0, i32 3
  %252 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space298, align 8, !tbaa !219
  store %struct.gs_color_space_s* %252, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  br label %while.cond.294

while.end.299:                                    ; preds = %while.cond.294
  %253 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %call300 = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %253) #6
  store i32 %call300, i32* %csi, align 4, !tbaa !5
  %254 = load i32, i32* %csi, align 4, !tbaa !5
  %cmp301 = icmp eq i32 %254, 12
  br i1 %cmp301, label %if.then.302, label %if.end.305

if.then.302:                                      ; preds = %while.end.299
  %255 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %cmm_icc_profile_data303 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %255, i32 0, i32 6
  %256 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data303, align 8, !tbaa !218
  %call304 = call i32 @gsicc_get_default_type(%struct.cmm_profile_s* %256) #6
  store i32 %call304, i32* %csi, align 4, !tbaa !5
  br label %if.end.305

if.end.305:                                       ; preds = %if.then.302, %while.end.299
  %257 = load i32, i32* %csi, align 4, !tbaa !5
  %cmp306 = icmp eq i32 %257, 0
  br i1 %cmp306, label %if.then.307, label %if.else.308

if.then.307:                                      ; preds = %if.end.305
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.308:                                      ; preds = %if.end.305
  store i32 4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.default.309:                                   ; preds = %if.end.275
  %258 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %259 = load %union.image_union_s*, %union.image_union_s** %image.addr, align 8, !tbaa !1
  %260 = load %struct.gs_color_space_s**, %struct.gs_color_space_s*** %pcs_orig.addr, align 8, !tbaa !1
  %261 = load %struct.pdf_color_space_names_s*, %struct.pdf_color_space_names_s** %names.addr, align 8, !tbaa !1
  %DeviceGray310 = getelementptr inbounds %struct.pdf_color_space_names_s, %struct.pdf_color_space_names_s* %261, i32 0, i32 1
  %262 = load i8*, i8** %DeviceGray310, align 8, !tbaa !221
  %263 = load %struct.cos_value_s*, %struct.cos_value_s** %cs_value.addr, align 8, !tbaa !1
  %call311 = call i32 @setup_image_process_colorspace(%struct.gx_device_pdf_s* %258, %union.image_union_s* %259, %struct.gs_color_space_s** %260, i8* %262, %struct.cos_value_s* %263) #6
  store i32 %call311, i32* %code, align 4, !tbaa !52
  %264 = load i32, i32* %code, align 4, !tbaa !52
  %cmp312 = icmp slt i32 %264, 0
  br i1 %cmp312, label %if.then.313, label %if.end.314

if.then.313:                                      ; preds = %sw.default.309
  %265 = load i32, i32* %code, align 4, !tbaa !52
  store i32 %265, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.314:                                       ; preds = %sw.default.309
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.default.315:                                   ; preds = %sw.bb.234
  %266 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %267 = load %union.image_union_s*, %union.image_union_s** %image.addr, align 8, !tbaa !1
  %268 = load %struct.gs_color_space_s**, %struct.gs_color_space_s*** %pcs_orig.addr, align 8, !tbaa !1
  %269 = load %struct.pdf_color_space_names_s*, %struct.pdf_color_space_names_s** %names.addr, align 8, !tbaa !1
  %DeviceGray316 = getelementptr inbounds %struct.pdf_color_space_names_s, %struct.pdf_color_space_names_s* %269, i32 0, i32 1
  %270 = load i8*, i8** %DeviceGray316, align 8, !tbaa !221
  %271 = load %struct.cos_value_s*, %struct.cos_value_s** %cs_value.addr, align 8, !tbaa !1
  %call317 = call i32 @setup_image_process_colorspace(%struct.gx_device_pdf_s* %266, %union.image_union_s* %267, %struct.gs_color_space_s** %268, i8* %270, %struct.cos_value_s* %271) #6
  store i32 %call317, i32* %code, align 4, !tbaa !52
  %272 = load i32, i32* %code, align 4, !tbaa !52
  %cmp318 = icmp slt i32 %272, 0
  br i1 %cmp318, label %if.then.319, label %if.end.320

if.then.319:                                      ; preds = %sw.default.315
  %273 = load i32, i32* %code, align 4, !tbaa !52
  store i32 %273, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.320:                                       ; preds = %sw.default.315
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.321:                                        ; preds = %if.else.130, %if.else.130
  %274 = load i32, i32* %csi2, align 4, !tbaa !5
  switch i32 %274, label %sw.default.402 [
    i32 0, label %sw.bb.322
    i32 1, label %sw.bb.322
    i32 9, label %sw.bb.323
    i32 4, label %sw.bb.339
    i32 10, label %sw.bb.355
  ]

sw.bb.322:                                        ; preds = %sw.bb.321, %sw.bb.321
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.323:                                        ; preds = %sw.bb.321
  %275 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %275, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  br label %while.cond.324

while.cond.324:                                   ; preds = %while.body.327, %sw.bb.323
  %276 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %base_space325 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %276, i32 0, i32 3
  %277 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space325, align 8, !tbaa !219
  %tobool326 = icmp ne %struct.gs_color_space_s* %277, null
  br i1 %tobool326, label %while.body.327, label %while.end.329

while.body.327:                                   ; preds = %while.cond.324
  %278 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %base_space328 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %278, i32 0, i32 3
  %279 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space328, align 8, !tbaa !219
  store %struct.gs_color_space_s* %279, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  br label %while.cond.324

while.end.329:                                    ; preds = %while.cond.324
  %280 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %call330 = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %280) #6
  store i32 %call330, i32* %csi, align 4, !tbaa !5
  %281 = load i32, i32* %csi, align 4, !tbaa !5
  %cmp331 = icmp eq i32 %281, 12
  br i1 %cmp331, label %if.then.332, label %if.end.335

if.then.332:                                      ; preds = %while.end.329
  %282 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %cmm_icc_profile_data333 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %282, i32 0, i32 6
  %283 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data333, align 8, !tbaa !218
  %call334 = call i32 @gsicc_get_default_type(%struct.cmm_profile_s* %283) #6
  store i32 %call334, i32* %csi, align 4, !tbaa !5
  br label %if.end.335

if.end.335:                                       ; preds = %if.then.332, %while.end.329
  %284 = load i32, i32* %csi, align 4, !tbaa !5
  %cmp336 = icmp eq i32 %284, 1
  br i1 %cmp336, label %if.then.337, label %if.else.338

if.then.337:                                      ; preds = %if.end.335
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.338:                                      ; preds = %if.end.335
  store i32 3, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.339:                                        ; preds = %sw.bb.321
  %285 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %285, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  br label %while.cond.340

while.cond.340:                                   ; preds = %while.body.343, %sw.bb.339
  %286 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %base_space341 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %286, i32 0, i32 3
  %287 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space341, align 8, !tbaa !219
  %tobool342 = icmp ne %struct.gs_color_space_s* %287, null
  br i1 %tobool342, label %while.body.343, label %while.end.345

while.body.343:                                   ; preds = %while.cond.340
  %288 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %base_space344 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %288, i32 0, i32 3
  %289 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space344, align 8, !tbaa !219
  store %struct.gs_color_space_s* %289, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  br label %while.cond.340

while.end.345:                                    ; preds = %while.cond.340
  %290 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %call346 = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %290) #6
  store i32 %call346, i32* %csi, align 4, !tbaa !5
  %291 = load i32, i32* %csi, align 4, !tbaa !5
  %cmp347 = icmp eq i32 %291, 12
  br i1 %cmp347, label %if.then.348, label %if.end.351

if.then.348:                                      ; preds = %while.end.345
  %292 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %cmm_icc_profile_data349 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %292, i32 0, i32 6
  %293 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data349, align 8, !tbaa !218
  %call350 = call i32 @gsicc_get_default_type(%struct.cmm_profile_s* %293) #6
  store i32 %call350, i32* %csi, align 4, !tbaa !5
  br label %if.end.351

if.end.351:                                       ; preds = %if.then.348, %while.end.345
  %294 = load i32, i32* %csi, align 4, !tbaa !5
  %cmp352 = icmp eq i32 %294, 1
  br i1 %cmp352, label %if.then.353, label %if.else.354

if.then.353:                                      ; preds = %if.end.351
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.354:                                      ; preds = %if.end.351
  store i32 4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.355:                                        ; preds = %sw.bb.321
  %295 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %base_space356 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %295, i32 0, i32 3
  %296 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space356, align 8, !tbaa !219
  store %struct.gs_color_space_s* %296, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %297 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %call357 = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %297) #6
  store i32 %call357, i32* %csi, align 4, !tbaa !5
  %298 = load i32, i32* %csi, align 4, !tbaa !5
  %cmp358 = icmp eq i32 %298, 12
  br i1 %cmp358, label %if.then.359, label %if.end.362

if.then.359:                                      ; preds = %sw.bb.355
  %299 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %cmm_icc_profile_data360 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %299, i32 0, i32 6
  %300 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data360, align 8, !tbaa !218
  %call361 = call i32 @gsicc_get_default_type(%struct.cmm_profile_s* %300) #6
  store i32 %call361, i32* %csi, align 4, !tbaa !5
  br label %if.end.362

if.end.362:                                       ; preds = %if.then.359, %sw.bb.355
  %301 = load i32, i32* %csi, align 4, !tbaa !5
  switch i32 %301, label %sw.default.396 [
    i32 0, label %sw.bb.363
    i32 1, label %sw.bb.363
    i32 9, label %sw.bb.364
    i32 4, label %sw.bb.380
  ]

sw.bb.363:                                        ; preds = %if.end.362, %if.end.362
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.364:                                        ; preds = %if.end.362
  %302 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %302, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  br label %while.cond.365

while.cond.365:                                   ; preds = %while.body.368, %sw.bb.364
  %303 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %base_space366 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %303, i32 0, i32 3
  %304 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space366, align 8, !tbaa !219
  %tobool367 = icmp ne %struct.gs_color_space_s* %304, null
  br i1 %tobool367, label %while.body.368, label %while.end.370

while.body.368:                                   ; preds = %while.cond.365
  %305 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %base_space369 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %305, i32 0, i32 3
  %306 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space369, align 8, !tbaa !219
  store %struct.gs_color_space_s* %306, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  br label %while.cond.365

while.end.370:                                    ; preds = %while.cond.365
  %307 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %call371 = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %307) #6
  store i32 %call371, i32* %csi, align 4, !tbaa !5
  %308 = load i32, i32* %csi, align 4, !tbaa !5
  %cmp372 = icmp eq i32 %308, 12
  br i1 %cmp372, label %if.then.373, label %if.end.376

if.then.373:                                      ; preds = %while.end.370
  %309 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %cmm_icc_profile_data374 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %309, i32 0, i32 6
  %310 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data374, align 8, !tbaa !218
  %call375 = call i32 @gsicc_get_default_type(%struct.cmm_profile_s* %310) #6
  store i32 %call375, i32* %csi, align 4, !tbaa !5
  br label %if.end.376

if.end.376:                                       ; preds = %if.then.373, %while.end.370
  %311 = load i32, i32* %csi, align 4, !tbaa !5
  %cmp377 = icmp eq i32 %311, 1
  br i1 %cmp377, label %if.then.378, label %if.else.379

if.then.378:                                      ; preds = %if.end.376
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.379:                                      ; preds = %if.end.376
  store i32 3, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.380:                                        ; preds = %if.end.362
  %312 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %312, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  br label %while.cond.381

while.cond.381:                                   ; preds = %while.body.384, %sw.bb.380
  %313 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %base_space382 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %313, i32 0, i32 3
  %314 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space382, align 8, !tbaa !219
  %tobool383 = icmp ne %struct.gs_color_space_s* %314, null
  br i1 %tobool383, label %while.body.384, label %while.end.386

while.body.384:                                   ; preds = %while.cond.381
  %315 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %base_space385 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %315, i32 0, i32 3
  %316 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space385, align 8, !tbaa !219
  store %struct.gs_color_space_s* %316, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  br label %while.cond.381

while.end.386:                                    ; preds = %while.cond.381
  %317 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %call387 = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %317) #6
  store i32 %call387, i32* %csi, align 4, !tbaa !5
  %318 = load i32, i32* %csi, align 4, !tbaa !5
  %cmp388 = icmp eq i32 %318, 12
  br i1 %cmp388, label %if.then.389, label %if.end.392

if.then.389:                                      ; preds = %while.end.386
  %319 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs2, align 8, !tbaa !1
  %cmm_icc_profile_data390 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %319, i32 0, i32 6
  %320 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data390, align 8, !tbaa !218
  %call391 = call i32 @gsicc_get_default_type(%struct.cmm_profile_s* %320) #6
  store i32 %call391, i32* %csi, align 4, !tbaa !5
  br label %if.end.392

if.end.392:                                       ; preds = %if.then.389, %while.end.386
  %321 = load i32, i32* %csi, align 4, !tbaa !5
  %cmp393 = icmp eq i32 %321, 1
  br i1 %cmp393, label %if.then.394, label %if.else.395

if.then.394:                                      ; preds = %if.end.392
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.395:                                      ; preds = %if.end.392
  store i32 4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.default.396:                                   ; preds = %if.end.362
  %322 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %323 = load %union.image_union_s*, %union.image_union_s** %image.addr, align 8, !tbaa !1
  %324 = load %struct.gs_color_space_s**, %struct.gs_color_space_s*** %pcs_orig.addr, align 8, !tbaa !1
  %325 = load %struct.pdf_color_space_names_s*, %struct.pdf_color_space_names_s** %names.addr, align 8, !tbaa !1
  %DeviceRGB397 = getelementptr inbounds %struct.pdf_color_space_names_s, %struct.pdf_color_space_names_s* %325, i32 0, i32 2
  %326 = load i8*, i8** %DeviceRGB397, align 8, !tbaa !223
  %327 = load %struct.cos_value_s*, %struct.cos_value_s** %cs_value.addr, align 8, !tbaa !1
  %call398 = call i32 @setup_image_process_colorspace(%struct.gx_device_pdf_s* %322, %union.image_union_s* %323, %struct.gs_color_space_s** %324, i8* %326, %struct.cos_value_s* %327) #6
  store i32 %call398, i32* %code, align 4, !tbaa !52
  %328 = load i32, i32* %code, align 4, !tbaa !52
  %cmp399 = icmp slt i32 %328, 0
  br i1 %cmp399, label %if.then.400, label %if.end.401

if.then.400:                                      ; preds = %sw.default.396
  %329 = load i32, i32* %code, align 4, !tbaa !52
  store i32 %329, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.401:                                       ; preds = %sw.default.396
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.default.402:                                   ; preds = %sw.bb.321
  %330 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %331 = load %union.image_union_s*, %union.image_union_s** %image.addr, align 8, !tbaa !1
  %332 = load %struct.gs_color_space_s**, %struct.gs_color_space_s*** %pcs_orig.addr, align 8, !tbaa !1
  %333 = load %struct.pdf_color_space_names_s*, %struct.pdf_color_space_names_s** %names.addr, align 8, !tbaa !1
  %DeviceRGB403 = getelementptr inbounds %struct.pdf_color_space_names_s, %struct.pdf_color_space_names_s* %333, i32 0, i32 2
  %334 = load i8*, i8** %DeviceRGB403, align 8, !tbaa !223
  %335 = load %struct.cos_value_s*, %struct.cos_value_s** %cs_value.addr, align 8, !tbaa !1
  %call404 = call i32 @setup_image_process_colorspace(%struct.gx_device_pdf_s* %330, %union.image_union_s* %331, %struct.gs_color_space_s** %332, i8* %334, %struct.cos_value_s* %335) #6
  store i32 %call404, i32* %code, align 4, !tbaa !52
  %336 = load i32, i32* %code, align 4, !tbaa !52
  %cmp405 = icmp slt i32 %336, 0
  br i1 %cmp405, label %if.then.406, label %if.end.407

if.then.406:                                      ; preds = %sw.default.402
  %337 = load i32, i32* %code, align 4, !tbaa !52
  store i32 %337, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.407:                                       ; preds = %sw.default.402
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.default.408:                                   ; preds = %if.else.130
  br label %sw.epilog.409

sw.epilog.409:                                    ; preds = %sw.default.408
  br label %if.end.410

if.end.410:                                       ; preds = %sw.epilog.409
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.410, %if.end.407, %if.then.406, %if.end.401, %if.then.400, %if.else.395, %if.then.394, %if.else.379, %if.then.378, %sw.bb.363, %if.else.354, %if.then.353, %if.else.338, %if.then.337, %sw.bb.322, %if.end.320, %if.then.319, %if.end.314, %if.then.313, %if.else.308, %if.then.307, %if.else.292, %if.then.291, %sw.bb.276, %if.else.267, %if.then.266, %if.else.251, %if.then.250, %sw.bb.235, %if.end.233, %if.then.232, %if.end.227, %if.then.226, %sw.default.218, %if.else.206, %if.then.205, %if.else.190, %if.then.189, %sw.bb.174, %if.else.165, %if.then.164, %if.else.149, %if.then.148, %sw.bb.136, %sw.bb.134, %sw.bb.133, %sw.default.129, %if.end.128, %if.then.127, %sw.default.119, %if.then.104, %if.then.94, %if.then.84, %if.else.72, %if.end.71, %if.then.70, %sw.default.64, %if.then.53, %if.end.45, %if.then.44, %if.then.40, %if.end.30, %if.then.29, %if.then.25, %if.end.16, %if.then.15, %if.then.12
  %338 = bitcast %struct.gs_color_space_s** %pcs2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %338) #1
  %339 = bitcast i32* %csi2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %339) #1
  %340 = bitcast i32* %csi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %340) #1
  %341 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %341) #1
  %342 = load i32, i32* %retval
  ret i32 %342
}

declare i32 @convert_DeviceN_alternate(%struct.gx_device_pdf_s*, %struct.gs_imager_state_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, i32*, %struct.psdf_set_color_commands_s*, %struct.gs_client_color_s*, %struct.cos_value_s*, i32) #2

declare i32 @convert_separation_alternate(%struct.gx_device_pdf_s*, %struct.gs_imager_state_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, i32*, %struct.psdf_set_color_commands_s*, %struct.gs_client_color_s*, %struct.cos_value_s*, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @make_device_color_space(%struct.gx_device_pdf_s* %pdev, i32 %output_cspace_index, %struct.gs_color_space_s** %ppcs) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %output_cspace_index.addr = alloca i32, align 4
  %ppcs.addr = alloca %struct.gs_color_space_s**, align 8
  %cs = alloca %struct.gs_color_space_s*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store i32 %output_cspace_index, i32* %output_cspace_index.addr, align 4, !tbaa !5
  store %struct.gs_color_space_s** %ppcs, %struct.gs_color_space_s*** %ppcs.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_color_space_s** %cs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %2, i32 0, i32 43
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory, align 8, !tbaa !175
  store %struct.gs_memory_s* %3, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %4 = load i32, i32* %output_cspace_index.addr, align 4, !tbaa !5
  switch i32 %4, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %entry
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call = call %struct.gs_color_space_s* @gs_cspace_new_DeviceGray(%struct.gs_memory_s* %5) #6
  store %struct.gs_color_space_s* %call, %struct.gs_color_space_s** %cs, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call2 = call %struct.gs_color_space_s* @gs_cspace_new_DeviceRGB(%struct.gs_memory_s* %6) #6
  store %struct.gs_color_space_s* %call2, %struct.gs_color_space_s** %cs, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call4 = call %struct.gs_color_space_s* @gs_cspace_new_DeviceCMYK(%struct.gs_memory_s* %7) #6
  store %struct.gs_color_space_s* %call4, %struct.gs_color_space_s** %cs, align 8, !tbaa !1
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call5 = call i8* @gs_program_name() #6
  %call6 = call i64 @gs_revision_number() #6
  call void @emprintf_program_ident(%struct.gs_memory_s* %8, i8* %call5, i64 %call6) #6
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call7 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %9, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.31, i32 0, i32 0)) #6
  store i32 -21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb.3, %sw.bb.1, %sw.bb
  %10 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %cs, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_color_space_s* %10, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  %11 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %cs, align 8, !tbaa !1
  %12 = load %struct.gs_color_space_s**, %struct.gs_color_space_s*** %ppcs.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %11, %struct.gs_color_space_s** %12, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then, %sw.default
  %13 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #1
  %14 = bitcast %struct.gs_color_space_s** %cs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  %15 = load i32, i32* %retval
  ret i32 %15
}

declare i32 @pdf_color_space_named(%struct.gx_device_pdf_s*, %struct.cos_value_s*, %struct.gs_range_s**, %struct.gs_color_space_s*, %struct.pdf_color_space_names_s*, i32, i8*, i32, i32) #2

declare i32 @pdf_begin_write_image(%struct.gx_device_pdf_s*, %struct.pdf_image_writer_s*, i64, i32, i32, %struct.cos_dict_s*, i32) #2

declare i32 @new_setup_lossless_filters(%struct.gx_device_psdf_s*, %struct.psdf_binary_writer_s*, %struct.gs_pixel_image_s*, i32, i32) #2

declare i32 @new_setup_image_filters(%struct.gx_device_psdf_s*, %struct.psdf_binary_writer_s*, %struct.gs_pixel_image_s*, %struct.gs_matrix_s*, %struct.gs_imager_state_s*, i32, i32, i32) #2

declare i32 @psdf_setup_image_colors_filter(%struct.psdf_binary_writer_s*, %struct.gx_device_psdf_s*, %struct.gs_pixel_image_s*, %struct.gs_imager_state_s*) #2

declare i32 @new_resize_input(%struct.psdf_binary_writer_s*, i32, i32, i32, i32) #2

declare i32 @pdf_make_alt_stream(%struct.gx_device_pdf_s*, %struct.psdf_binary_writer_s*) #2

declare %struct.cos_stream_s* @cos_stream_from_pipeline(%struct.stream_s*) #2

declare i32 @s_close_filters(%struct.stream_s**, %struct.stream_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @pdf_begin_image_data_decoded(%struct.gx_device_pdf_s* %pdev, i32 %num_components, %struct.gs_range_s* %pranges, i32 %i, %struct.gs_pixel_image_s* %pi, %struct.cos_value_s* %cs_value, %struct.pdf_image_enum_s* %pie) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %num_components.addr = alloca i32, align 4
  %pranges.addr = alloca %struct.gs_range_s*, align 8
  %i.addr = alloca i32, align 4
  %pi.addr = alloca %struct.gs_pixel_image_s*, align 8
  %cs_value.addr = alloca %struct.cos_value_s*, align 8
  %pie.addr = alloca %struct.pdf_image_enum_s*, align 8
  %pr = alloca %struct.gs_range_s*, align 8
  %decode = alloca float*, align 8
  %j = alloca i32, align 4
  %vmin = alloca double, align 8
  %vmax = alloca double, align 8
  %base = alloca double, align 8
  %factor = alloca double, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store i32 %num_components, i32* %num_components.addr, align 4, !tbaa !52
  store %struct.gs_range_s* %pranges, %struct.gs_range_s** %pranges.addr, align 8, !tbaa !1
  store i32 %i, i32* %i.addr, align 4, !tbaa !52
  store %struct.gs_pixel_image_s* %pi, %struct.gs_pixel_image_s** %pi.addr, align 8, !tbaa !1
  store %struct.cos_value_s* %cs_value, %struct.cos_value_s** %cs_value.addr, align 8, !tbaa !1
  store %struct.pdf_image_enum_s* %pie, %struct.pdf_image_enum_s** %pie.addr, align 8, !tbaa !1
  %0 = load %struct.gs_range_s*, %struct.gs_range_s** %pranges.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.gs_range_s* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.gs_range_s** %pr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gs_range_s*, %struct.gs_range_s** %pranges.addr, align 8, !tbaa !1
  store %struct.gs_range_s* %2, %struct.gs_range_s** %pr, align 8, !tbaa !1
  %3 = bitcast float** %decode to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pi.addr, align 8, !tbaa !1
  %Decode = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %4, i32 0, i32 5
  %arraydecay = getelementptr inbounds [130 x float], [130 x float]* %Decode, i32 0, i32 0
  store float* %arraydecay, float** %decode, align 8, !tbaa !1
  %5 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 0, i32* %j, align 4, !tbaa !52
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %6 = load i32, i32* %j, align 4, !tbaa !52
  %7 = load i32, i32* %num_components.addr, align 4, !tbaa !52
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = bitcast double* %vmin to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load float*, float** %decode, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds float, float* %9, i64 0
  %10 = load float, float* %arrayidx, align 4, !tbaa !69
  %conv = fpext float %10 to double
  store double %conv, double* %vmin, align 8, !tbaa !157
  %11 = bitcast double* %vmax to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = load float*, float** %decode, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds float, float* %12, i64 1
  %13 = load float, float* %arrayidx1, align 4, !tbaa !69
  %conv2 = fpext float %13 to double
  store double %conv2, double* %vmax, align 8, !tbaa !157
  %14 = bitcast double* %base to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = load %struct.gs_range_s*, %struct.gs_range_s** %pr, align 8, !tbaa !1
  %rmin = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %15, i32 0, i32 0
  %16 = load float, float* %rmin, align 4, !tbaa !227
  %conv3 = fpext float %16 to double
  store double %conv3, double* %base, align 8, !tbaa !157
  %17 = bitcast double* %factor to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  %18 = load %struct.gs_range_s*, %struct.gs_range_s** %pr, align 8, !tbaa !1
  %rmax = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %18, i32 0, i32 1
  %19 = load float, float* %rmax, align 4, !tbaa !229
  %conv4 = fpext float %19 to double
  %20 = load double, double* %base, align 8, !tbaa !157
  %sub = fsub double %conv4, %20
  store double %sub, double* %factor, align 8, !tbaa !157
  %21 = load double, double* %vmax, align 8, !tbaa !157
  %22 = load double, double* %vmin, align 8, !tbaa !157
  %sub5 = fsub double %21, %22
  %23 = load double, double* %factor, align 8, !tbaa !157
  %div = fdiv double %sub5, %23
  %24 = load double, double* %vmin, align 8, !tbaa !157
  %25 = load double, double* %base, align 8, !tbaa !157
  %sub6 = fsub double %24, %25
  %add = fadd double %div, %sub6
  %conv7 = fptrunc double %add to float
  %26 = load float*, float** %decode, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds float, float* %26, i64 1
  store float %conv7, float* %arrayidx8, align 4, !tbaa !69
  %27 = load double, double* %vmin, align 8, !tbaa !157
  %28 = load double, double* %base, align 8, !tbaa !157
  %sub9 = fsub double %27, %28
  %conv10 = fptrunc double %sub9 to float
  %29 = load float*, float** %decode, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds float, float* %29, i64 0
  store float %conv10, float* %arrayidx11, align 4, !tbaa !69
  %30 = bitcast double* %factor to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #1
  %31 = bitcast double* %base to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  %32 = bitcast double* %vmax to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  %33 = bitcast double* %vmin to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %34 = load i32, i32* %j, align 4, !tbaa !52
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %j, align 4, !tbaa !52
  %35 = load %struct.gs_range_s*, %struct.gs_range_s** %pr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %35, i32 1
  store %struct.gs_range_s* %incdec.ptr, %struct.gs_range_s** %pr, align 8, !tbaa !1
  %36 = load float*, float** %decode, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds float, float* %36, i64 2
  store float* %add.ptr, float** %decode, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %37 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  %38 = bitcast float** %decode to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #1
  %39 = bitcast %struct.gs_range_s** %pr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %40 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %41 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie.addr, align 8, !tbaa !1
  %writer = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %41, i32 0, i32 12
  %42 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pi.addr, align 8, !tbaa !1
  %43 = load %struct.cos_value_s*, %struct.cos_value_s** %cs_value.addr, align 8, !tbaa !1
  %44 = load i32, i32* %i.addr, align 4, !tbaa !52
  %call = call i32 @pdf_begin_image_data(%struct.gx_device_pdf_s* %40, %struct.pdf_image_writer_s* %writer, %struct.gs_pixel_image_s* %42, %struct.cos_value_s* %43, i32 %44) #6
  ret i32 %call
}

declare i32 @psdf_setup_compression_chooser(%struct.psdf_binary_writer_s*, %struct.gx_device_psdf_s*, i32, i32, i32, i32) #2

declare void @gs_image_t_init_mask_adjust(%struct.gs_image1_s*, i32, i32) #2

declare i32 @psdf_setup_image_filters(%struct.gx_device_psdf_s*, %struct.psdf_binary_writer_s*, %struct.gs_pixel_image_s*, %struct.gs_matrix_s*, %struct.gs_imager_state_s*, i32, i32) #2

declare i32 @psdf_setup_image_to_mask_filter(%struct.psdf_binary_writer_s*, %struct.gx_device_psdf_s*, i32, i32, i32, i32, i32*) #2

declare i32 @gx_dc_is_pattern1_color(%struct.gx_device_color_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @can_write_image_in_line(%struct.gx_device_pdf_s* %pdev, %struct.gs_image1_s* %pim) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pim.addr = alloca %struct.gs_image1_s*, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_image1_s* %pim, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  ret i32 1
}

declare void @gs_make_identity(%struct.gs_matrix_s*) #2

; Function Attrs: nounwind readnone
declare double @floor(double) #4

declare i32 @gs_matrix_scale(%struct.gs_matrix_s*, double, double, %struct.gs_matrix_s*) #2

declare i32 @gx_begin_image3_generic(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, i32, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**, %struct.gx_device_s**, %struct.gx_device_s*, %struct.gx_image_enum_common_s*, %struct.gs_int_point_s*)*, %struct.gx_image_enum_common_s**) #2

; Function Attrs: nounwind uwtable
define internal i32 @pdf_image3_make_mid(%struct.gx_device_s** %pmidev, %struct.gx_device_s* %dev, i32 %width, i32 %height, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %pmidev.addr = alloca %struct.gx_device_s**, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pdev = alloca %struct.gx_device_pdf_s*, align 8
  %m = alloca %struct.gs_matrix_s, align 4
  %cvd = alloca %struct.pdf_lcvd_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %code6 = alloca i32, align 4
  store %struct.gx_device_s** %pmidev, %struct.gx_device_s*** %pmidev.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %width, i32* %width.addr, align 4, !tbaa !52
  store i32 %height, i32* %height.addr, align 4, !tbaa !52
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_pdf_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_pdf_s*
  store %struct.gx_device_pdf_s* %2, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %3 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %CompatibilityLevel = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %3, i32 0, i32 75
  %4 = load double, double* %CompatibilityLevel, align 8, !tbaa !104
  %cmp = fcmp olt double %4, 1.300000e+00
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %PatternImagemask = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %5, i32 0, i32 107
  %6 = load i32, i32* %PatternImagemask, align 4, !tbaa !119
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %7 = bitcast %struct.gs_matrix_s* %m to i8*
  call void @llvm.lifetime.start(i64 24, i8* %7) #1
  %8 = bitcast %struct.pdf_lcvd_s** %cvd to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store %struct.pdf_lcvd_s* null, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %9 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  call void @gs_make_identity(%struct.gs_matrix_s* %m) #6
  %10 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %12 = load i32, i32* %width.addr, align 4, !tbaa !52
  %13 = load i32, i32* %height.addr, align 4, !tbaa !52
  %call = call i32 @pdf_setup_masked_image_converter(%struct.gx_device_pdf_s* %10, %struct.gs_memory_s* %11, %struct.gs_matrix_s* %m, %struct.pdf_lcvd_s** %cvd, i32 1, i32 0, i32 0, i32 %12, i32 %13, i32 1) #6
  store i32 %call, i32* %code, align 4, !tbaa !52
  %14 = load i32, i32* %code, align 4, !tbaa !52
  %cmp1 = icmp slt i32 %14, 0
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %15 = load i32, i32* %code, align 4, !tbaa !52
  store i32 %15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %16 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %17 = bitcast %struct.pdf_lcvd_s* %16 to %struct.gx_device_s*
  %18 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %mask = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %18, i32 0, i32 1
  %19 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask, align 8, !tbaa !212
  %target = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %19, i32 0, i32 43
  store %struct.gx_device_s* %17, %struct.gx_device_s** %target, align 8, !tbaa !230
  %20 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %mask_is_empty = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %20, i32 0, i32 7
  store i32 0, i32* %mask_is_empty, align 4, !tbaa !214
  %21 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %mask3 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %21, i32 0, i32 1
  %22 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask3, align 8, !tbaa !212
  %23 = bitcast %struct.gx_device_memory_s* %22 to %struct.gx_device_s*
  %24 = load %struct.gx_device_s**, %struct.gx_device_s*** %pmidev.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %23, %struct.gx_device_s** %24, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.2
  %25 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  %26 = bitcast %struct.pdf_lcvd_s** %cvd to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  %27 = bitcast %struct.gs_matrix_s* %m to i8*
  call void @llvm.lifetime.end(i64 24, i8* %27) #1
  br label %cleanup.13

if.else:                                          ; preds = %land.lhs.true, %entry
  %28 = bitcast i32* %code6 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #1
  %29 = load %struct.gx_device_s**, %struct.gx_device_s*** %pmidev.addr, align 8, !tbaa !1
  %30 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %31 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call7 = call i32 @pdf_make_mxd(%struct.gx_device_s** %29, %struct.gx_device_s* %30, %struct.gs_memory_s* %31) #6
  store i32 %call7, i32* %code6, align 4, !tbaa !52
  %32 = load i32, i32* %code6, align 4, !tbaa !52
  %cmp8 = icmp slt i32 %32, 0
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.else
  %33 = load i32, i32* %code6, align 4, !tbaa !52
  store i32 %33, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.12

if.end.10:                                        ; preds = %if.else
  %34 = load %struct.gx_device_s**, %struct.gx_device_s*** %pmidev.addr, align 8, !tbaa !1
  %35 = load %struct.gx_device_s*, %struct.gx_device_s** %34, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %35, i32 0, i32 42
  %begin_typed_image = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 37
  %begin_typed_image11 = bitcast {}** %begin_typed_image to i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)**
  store i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* @pdf_mid_begin_typed_image, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)** %begin_typed_image11, align 8, !tbaa !192
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.12

cleanup.12:                                       ; preds = %if.end.10, %if.then.9
  %36 = bitcast i32* %code6 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  br label %cleanup.13

cleanup.13:                                       ; preds = %cleanup.12, %cleanup
  %37 = bitcast %struct.gx_device_pdf_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  %38 = load i32, i32* %retval
  ret i32 %38
}

; Function Attrs: nounwind uwtable
define internal i32 @pdf_image3_make_mcde(%struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis, %struct.gs_matrix_s* %pmat, %struct.gs_image_common_s* %pic, %struct.gs_int_rect_s* %prect, %struct.gx_device_color_s* %pdcolor, %struct.gx_clip_path_s* %pcpath, %struct.gs_memory_s* %mem, %struct.gx_image_enum_common_s** %pinfo, %struct.gx_device_s** %pmcdev, %struct.gx_device_s* %midev, %struct.gx_image_enum_common_s* %pminfo, %struct.gs_int_point_s* %origin) #0 {
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
  %pmcdev.addr = alloca %struct.gx_device_s**, align 8
  %midev.addr = alloca %struct.gx_device_s*, align 8
  %pminfo.addr = alloca %struct.gx_image_enum_common_s*, align 8
  %origin.addr = alloca %struct.gs_int_point_s*, align 8
  %code = alloca i32, align 4
  %pdev = alloca %struct.gx_device_pdf_s*, align 8
  %cvd = alloca %struct.pdf_lcvd_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  store %struct.gs_image_common_s* %pic, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  store %struct.gs_int_rect_s* %prect, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gx_image_enum_common_s** %pinfo, %struct.gx_image_enum_common_s*** %pinfo.addr, align 8, !tbaa !1
  store %struct.gx_device_s** %pmcdev, %struct.gx_device_s*** %pmcdev.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %midev, %struct.gx_device_s** %midev.addr, align 8, !tbaa !1
  store %struct.gx_image_enum_common_s* %pminfo, %struct.gx_image_enum_common_s** %pminfo.addr, align 8, !tbaa !1
  store %struct.gs_int_point_s* %origin, %struct.gs_int_point_s** %origin.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.gx_device_pdf_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s* %2 to %struct.gx_device_pdf_s*
  store %struct.gx_device_pdf_s* %3, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %4 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %CompatibilityLevel = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %4, i32 0, i32 75
  %5 = load double, double* %CompatibilityLevel, align 8, !tbaa !104
  %cmp = fcmp olt double %5, 1.300000e+00
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %6 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %PatternImagemask = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %6, i32 0, i32 107
  %7 = load i32, i32* %PatternImagemask, align 4, !tbaa !119
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %8 = bitcast %struct.pdf_lcvd_s** %cvd to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %midev.addr, align 8, !tbaa !1
  %10 = bitcast %struct.gx_device_s* %9 to %struct.gx_device_memory_s*
  %target = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %10, i32 0, i32 43
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !230
  %12 = bitcast %struct.gx_device_s* %11 to %struct.pdf_lcvd_s*
  store %struct.pdf_lcvd_s* %12, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %midev.addr, align 8, !tbaa !1
  %14 = bitcast %struct.gx_device_s* %13 to %struct.gx_device_memory_s*
  %target1 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %14, i32 0, i32 43
  store %struct.gx_device_s* null, %struct.gx_device_s** %target1, align 8, !tbaa !230
  %15 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %m = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %15, i32 0, i32 12
  %16 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %converting_image_matrix = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %16, i32 0, i32 224
  %17 = bitcast %struct.gs_matrix_s* %m to i8*
  %18 = bitcast %struct.gs_matrix_s* %converting_image_matrix to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 24, i32 4, i1 false), !tbaa.struct !231
  %19 = load %struct.gs_int_point_s*, %struct.gs_int_point_s** %origin.addr, align 8, !tbaa !1
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %19, i32 0, i32 0
  %20 = load i32, i32* %x, align 4, !tbaa !232
  %21 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %mdev = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %21, i32 0, i32 0
  %mapped_x = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev, i32 0, i32 61
  store i32 %20, i32* %mapped_x, align 4, !tbaa !233
  %22 = load %struct.gs_int_point_s*, %struct.gs_int_point_s** %origin.addr, align 8, !tbaa !1
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %22, i32 0, i32 1
  %23 = load i32, i32* %y, align 4, !tbaa !234
  %24 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %mdev2 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %24, i32 0, i32 0
  %mapped_y = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev2, i32 0, i32 62
  store i32 %23, i32* %mapped_y, align 4, !tbaa !235
  %25 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %mdev3 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %25, i32 0, i32 0
  %26 = bitcast %struct.gx_device_memory_s* %mdev3 to %struct.gx_device_s*
  %27 = load %struct.gx_device_s**, %struct.gx_device_s*** %pmcdev.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %26, %struct.gx_device_s** %27, align 8, !tbaa !1
  %28 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %mdev4 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %28, i32 0, i32 0
  %29 = bitcast %struct.gx_device_memory_s* %mdev4 to %struct.gx_device_s*
  %30 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %31 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %32 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %33 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %34 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %35 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %36 = load %struct.gx_image_enum_common_s**, %struct.gx_image_enum_common_s*** %pinfo.addr, align 8, !tbaa !1
  %call = call i32 @gx_default_begin_typed_image(%struct.gx_device_s* %29, %struct.gs_imager_state_s* %30, %struct.gs_matrix_s* %31, %struct.gs_image_common_s* %32, %struct.gs_int_rect_s* %33, %struct.gx_device_color_s* %34, %struct.gx_clip_path_s* null, %struct.gs_memory_s* %35, %struct.gx_image_enum_common_s** %36) #6
  store i32 %call, i32* %code, align 4, !tbaa !52
  %37 = load i32, i32* %code, align 4, !tbaa !52
  %cmp5 = icmp slt i32 %37, 0
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  %38 = load i32, i32* %code, align 4, !tbaa !52
  store i32 %38, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.6
  %39 = bitcast %struct.pdf_lcvd_s** %cvd to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.16 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.15

if.else:                                          ; preds = %land.lhs.true, %entry
  %40 = load %struct.gx_device_s**, %struct.gx_device_s*** %pmcdev.addr, align 8, !tbaa !1
  %41 = load %struct.gx_device_s*, %struct.gx_device_s** %midev.addr, align 8, !tbaa !1
  %42 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call7 = call i32 @pdf_make_mxd(%struct.gx_device_s** %40, %struct.gx_device_s* %41, %struct.gs_memory_s* %42) #6
  store i32 %call7, i32* %code, align 4, !tbaa !52
  %43 = load i32, i32* %code, align 4, !tbaa !52
  %cmp8 = icmp slt i32 %43, 0
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.else
  %44 = load i32, i32* %code, align 4, !tbaa !52
  store i32 %44, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.16

if.end.10:                                        ; preds = %if.else
  %45 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %46 = bitcast %struct.gx_device_s* %45 to %struct.gx_device_pdf_s*
  %47 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %48 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %49 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %50 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %51 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %52 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %53 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %54 = load %struct.gx_image_enum_common_s**, %struct.gx_image_enum_common_s*** %pinfo.addr, align 8, !tbaa !1
  %call11 = call i32 @pdf_begin_typed_image(%struct.gx_device_pdf_s* %46, %struct.gs_imager_state_s* %47, %struct.gs_matrix_s* %48, %struct.gs_image_common_s* %49, %struct.gs_int_rect_s* %50, %struct.gx_device_color_s* %51, %struct.gx_clip_path_s* %52, %struct.gs_memory_s* %53, %struct.gx_image_enum_common_s** %54, i32 2) #6
  store i32 %call11, i32* %code, align 4, !tbaa !52
  %55 = load i32, i32* %code, align 4, !tbaa !52
  %cmp12 = icmp slt i32 %55, 0
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.10
  %56 = load i32, i32* %code, align 4, !tbaa !52
  store i32 %56, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.16

if.end.14:                                        ; preds = %if.end.10
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %cleanup.cont
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.16

cleanup.16:                                       ; preds = %if.end.15, %if.then.13, %if.then.9, %cleanup
  %57 = bitcast %struct.gx_device_pdf_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %57) #1
  %58 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #1
  %59 = load i32, i32* %retval
  ret i32 %59
}

declare i32 @pdf_setup_masked_image_converter(%struct.gx_device_pdf_s*, %struct.gs_memory_s*, %struct.gs_matrix_s*, %struct.pdf_lcvd_s**, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @pdf_make_mxd(%struct.gx_device_s** %pmxdev, %struct.gx_device_s* %tdev, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %pmxdev.addr = alloca %struct.gx_device_s**, align 8
  %tdev.addr = alloca %struct.gx_device_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %fdev = alloca %struct.gx_device_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s** %pmxdev, %struct.gx_device_s*** %pmxdev.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %tdev, %struct.gx_device_s** %tdev.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_s** %fdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i32 @gs_copydevice(%struct.gx_device_s** %fdev, %struct.gx_device_s* bitcast (%struct.gx_device_null_s* @gs_null_device to %struct.gx_device_s*), %struct.gs_memory_s* %2) #6
  store i32 %call, i32* %code, align 4, !tbaa !52
  %3 = load i32, i32* %code, align 4, !tbaa !52
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %code, align 4, !tbaa !52
  store i32 %4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %fdev, align 8, !tbaa !1
  %6 = bitcast %struct.gx_device_s* %5 to %struct.gx_device_forward_s*
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev.addr, align 8, !tbaa !1
  call void @gx_device_set_target(%struct.gx_device_forward_s* %6, %struct.gx_device_s* %7) #6
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %fdev, align 8, !tbaa !1
  %9 = load %struct.gx_device_s**, %struct.gx_device_s*** %pmxdev.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %8, %struct.gx_device_s** %9, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %10 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #1
  %11 = bitcast %struct.gx_device_s** %fdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #1
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal i32 @pdf_mid_begin_typed_image(%struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis, %struct.gs_matrix_s* %pmat, %struct.gs_image_common_s* %pic, %struct.gs_int_rect_s* %prect, %struct.gx_device_color_s* %pdcolor, %struct.gx_clip_path_s* %pcpath, %struct.gs_memory_s* %mem, %struct.gx_image_enum_common_s** %pinfo) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %pic.addr = alloca %struct.gs_image_common_s*, align 8
  %prect.addr = alloca %struct.gs_int_rect_s*, align 8
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pinfo.addr = alloca %struct.gx_image_enum_common_s**, align 8
  %pdev = alloca %struct.gx_device_pdf_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  store %struct.gs_image_common_s* %pic, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  store %struct.gs_int_rect_s* %prect, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gx_image_enum_common_s** %pinfo, %struct.gx_image_enum_common_s*** %pinfo.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_pdf_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_null_s*
  %target = getelementptr inbounds %struct.gx_device_null_s, %struct.gx_device_null_s* %2, i32 0, i32 43
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !236
  %4 = bitcast %struct.gx_device_s* %3 to %struct.gx_device_pdf_s*
  store %struct.gx_device_pdf_s* %4, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %5 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %6 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %7 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %8 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %9 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %10 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %11 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %13 = load %struct.gx_image_enum_common_s**, %struct.gx_image_enum_common_s*** %pinfo.addr, align 8, !tbaa !1
  %call = call i32 @pdf_begin_typed_image(%struct.gx_device_pdf_s* %5, %struct.gs_imager_state_s* %6, %struct.gs_matrix_s* %7, %struct.gs_image_common_s* %8, %struct.gs_int_rect_s* %9, %struct.gx_device_color_s* %10, %struct.gx_clip_path_s* %11, %struct.gs_memory_s* %12, %struct.gx_image_enum_common_s** %13, i32 1) #6
  %14 = bitcast %struct.gx_device_pdf_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  ret i32 %call
}

declare i32 @gs_copydevice(%struct.gx_device_s**, %struct.gx_device_s*, %struct.gs_memory_s*) #2

declare void @gx_device_set_target(%struct.gx_device_forward_s*, %struct.gx_device_s*) #2

declare i32 @gx_image_end(%struct.gx_image_enum_common_s*, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @pdf_convert_image4_to_image1(%struct.gx_device_pdf_s* %pdev, %struct.gs_imager_state_s* %pis, %struct.gx_device_color_s* %pbcolor, %struct.gs_image4_s* %pim4, %struct.gs_image1_s* %pim1, %struct.gx_device_color_s* %pdcolor) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pbcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %pim4.addr = alloca %struct.gs_image4_s*, align 8
  %pim1.addr = alloca %struct.gs_image1_s*, align 8
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %dev = alloca %struct.gx_device_s*, align 8
  %pcs = alloca %struct.gs_color_space_s*, align 8
  %write_1s = alloca i32, align 4
  %cc = alloca %struct.gs_client_color_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %lop = alloca i32, align 4
  %black_or_white = alloca i32, align 4
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pbcolor, %struct.gx_device_color_s** %pbcolor.addr, align 8, !tbaa !1
  store %struct.gs_image4_s* %pim4, %struct.gs_image4_s** %pim4.addr, align 8, !tbaa !1
  store %struct.gs_image1_s* %pim1, %struct.gs_image1_s** %pim1.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %0 = load %struct.gs_image4_s*, %struct.gs_image4_s** %pim4.addr, align 8, !tbaa !1
  %BitsPerComponent = getelementptr inbounds %struct.gs_image4_s, %struct.gs_image4_s* %0, i32 0, i32 4
  %1 = load i32, i32* %BitsPerComponent, align 4, !tbaa !238
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %land.lhs.true, label %if.end.92

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.gs_image4_s*, %struct.gs_image4_s** %pim4.addr, align 8, !tbaa !1
  %ColorSpace = getelementptr inbounds %struct.gs_image4_s, %struct.gs_image4_s* %2, i32 0, i32 9
  %3 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace, align 8, !tbaa !199
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %3, i32 0, i32 0
  %4 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !164
  %num_components = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %4, i32 0, i32 4
  %5 = load i32 (%struct.gs_color_space_s*)*, i32 (%struct.gs_color_space_s*)** %num_components, align 8, !tbaa !239
  %6 = load %struct.gs_image4_s*, %struct.gs_image4_s** %pim4.addr, align 8, !tbaa !1
  %ColorSpace1 = getelementptr inbounds %struct.gs_image4_s, %struct.gs_image4_s* %6, i32 0, i32 9
  %7 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace1, align 8, !tbaa !199
  %call = call i32 %5(%struct.gs_color_space_s* %7) #6
  %cmp2 = icmp eq i32 %call, 1
  br i1 %cmp2, label %land.lhs.true.3, label %if.end.92

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %8 = load %struct.gs_image4_s*, %struct.gs_image4_s** %pim4.addr, align 8, !tbaa !1
  %MaskColor_is_range = getelementptr inbounds %struct.gs_image4_s, %struct.gs_image4_s* %8, i32 0, i32 10
  %9 = load i32, i32* %MaskColor_is_range, align 4, !tbaa !240
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.3
  %10 = load %struct.gs_image4_s*, %struct.gs_image4_s** %pim4.addr, align 8, !tbaa !1
  %MaskColor = getelementptr inbounds %struct.gs_image4_s, %struct.gs_image4_s* %10, i32 0, i32 11
  %arrayidx = getelementptr inbounds [130 x i32], [130 x i32]* %MaskColor, i32 0, i64 0
  %11 = load i32, i32* %arrayidx, align 4, !tbaa !52
  %12 = load %struct.gs_image4_s*, %struct.gs_image4_s** %pim4.addr, align 8, !tbaa !1
  %MaskColor4 = getelementptr inbounds %struct.gs_image4_s, %struct.gs_image4_s* %12, i32 0, i32 11
  %arrayidx5 = getelementptr inbounds [130 x i32], [130 x i32]* %MaskColor4, i32 0, i64 1
  %13 = load i32, i32* %arrayidx5, align 4, !tbaa !52
  %or = or i32 %11, %13
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.3
  %14 = load %struct.gs_image4_s*, %struct.gs_image4_s** %pim4.addr, align 8, !tbaa !1
  %MaskColor6 = getelementptr inbounds %struct.gs_image4_s, %struct.gs_image4_s* %14, i32 0, i32 11
  %arrayidx7 = getelementptr inbounds [130 x i32], [130 x i32]* %MaskColor6, i32 0, i64 0
  %15 = load i32, i32* %arrayidx7, align 4, !tbaa !52
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %or, %cond.true ], [ %15, %cond.false ]
  %cmp8 = icmp ule i32 %cond, 1
  br i1 %cmp8, label %if.then, label %if.end.92

if.then:                                          ; preds = %cond.end
  %16 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %18 = bitcast %struct.gx_device_pdf_s* %17 to %struct.gx_device_s*
  store %struct.gx_device_s* %18, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %19 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  %20 = load %struct.gs_image4_s*, %struct.gs_image4_s** %pim4.addr, align 8, !tbaa !1
  %ColorSpace9 = getelementptr inbounds %struct.gs_image4_s, %struct.gs_image4_s* %20, i32 0, i32 9
  %21 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace9, align 8, !tbaa !199
  store %struct.gs_color_space_s* %21, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %22 = bitcast i32* %write_1s to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  %23 = load %struct.gs_image4_s*, %struct.gs_image4_s** %pim4.addr, align 8, !tbaa !1
  %MaskColor10 = getelementptr inbounds %struct.gs_image4_s, %struct.gs_image4_s* %23, i32 0, i32 11
  %arrayidx11 = getelementptr inbounds [130 x i32], [130 x i32]* %MaskColor10, i32 0, i64 0
  %24 = load i32, i32* %arrayidx11, align 4, !tbaa !52
  %tobool12 = icmp ne i32 %24, 0
  %lnot = xor i1 %tobool12, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %write_1s, align 4, !tbaa !52
  %25 = bitcast %struct.gs_client_color_s* %cc to i8*
  call void @llvm.lifetime.start(i64 264, i8* %25) #1
  %26 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #1
  %27 = load i32, i32* %write_1s, align 4, !tbaa !52
  %idxprom = sext i32 %27 to i64
  %28 = load %struct.gs_image4_s*, %struct.gs_image4_s** %pim4.addr, align 8, !tbaa !1
  %Decode = getelementptr inbounds %struct.gs_image4_s, %struct.gs_image4_s* %28, i32 0, i32 5
  %arrayidx13 = getelementptr inbounds [130 x float], [130 x float]* %Decode, i32 0, i64 %idxprom
  %29 = load float, float* %arrayidx13, align 4, !tbaa !69
  %paint = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint, i32 0, i32 0
  %arrayidx14 = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 0
  store float %29, float* %arrayidx14, align 4, !tbaa !69
  %pattern = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 0
  store %struct.gs_pattern_instance_s* null, %struct.gs_pattern_instance_s** %pattern, align 8, !tbaa !241
  %30 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %type15 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %30, i32 0, i32 0
  %31 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type15, align 8, !tbaa !164
  %remap_color = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %31, i32 0, i32 10
  %32 = load i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %remap_color, align 8, !tbaa !242
  %33 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %34 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %35 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %36 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %call16 = call i32 %32(%struct.gs_client_color_s* %cc, %struct.gs_color_space_s* %33, %struct.gx_device_color_s* %34, %struct.gs_imager_state_s* %35, %struct.gx_device_s* %36, i32 0) #6
  store i32 %call16, i32* %code, align 4, !tbaa !52
  %37 = load i32, i32* %code, align 4, !tbaa !52
  %cmp17 = icmp slt i32 %37, 0
  br i1 %cmp17, label %if.then.18, label %if.end

if.then.18:                                       ; preds = %if.then
  %38 = load i32, i32* %code, align 4, !tbaa !52
  store i32 %38, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.87

if.end:                                           ; preds = %if.then
  %39 = bitcast i32* %lop to i8*
  call void @llvm.lifetime.start(i64 4, i8* %39) #1
  %40 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %log_op = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %40, i32 0, i32 10
  %41 = load i32, i32* %log_op, align 4, !tbaa !243
  store i32 %41, i32* %lop, align 4, !tbaa !52
  %42 = bitcast i32* %black_or_white to i8*
  call void @llvm.lifetime.start(i64 4, i8* %42) #1
  %43 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %44 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %call19 = call i32 @color_is_black_or_white(%struct.gx_device_s* %43, %struct.gx_device_color_s* %44) #6
  store i32 %call19, i32* %black_or_white, align 4, !tbaa !52
  %45 = load i32, i32* %black_or_white, align 4, !tbaa !52
  switch i32 %45, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.23
  ]

sw.bb:                                            ; preds = %if.end
  %46 = load i32, i32* %lop, align 4, !tbaa !52
  %and = and i32 %46, 51
  %shl = shl i32 %and, 2
  %47 = load i32, i32* %lop, align 4, !tbaa !52
  %and20 = and i32 %47, -205
  %or21 = or i32 %shl, %and20
  %and22 = and i32 %or21, -257
  store i32 %and22, i32* %lop, align 4, !tbaa !52
  br label %sw.epilog

sw.bb.23:                                         ; preds = %if.end
  %48 = load i32, i32* %lop, align 4, !tbaa !52
  %and24 = and i32 %48, 256
  %tobool25 = icmp ne i32 %and24, 0
  br i1 %tobool25, label %cond.true.26, label %cond.false.27

cond.true.26:                                     ; preds = %sw.bb.23
  br label %cond.end.31

cond.false.27:                                    ; preds = %sw.bb.23
  %49 = load i32, i32* %lop, align 4, !tbaa !52
  %and28 = and i32 %49, 204
  %shr = lshr i32 %and28, 2
  %50 = load i32, i32* %lop, align 4, !tbaa !52
  %and29 = and i32 %50, -52
  %or30 = or i32 %shr, %and29
  br label %cond.end.31

cond.end.31:                                      ; preds = %cond.false.27, %cond.true.26
  %cond32 = phi i32 [ 170, %cond.true.26 ], [ %or30, %cond.false.27 ]
  store i32 %cond32, i32* %lop, align 4, !tbaa !52
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %sw.default
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %cond.end.31, %sw.bb
  %51 = load %struct.gs_image4_s*, %struct.gs_image4_s** %pim4.addr, align 8, !tbaa !1
  %CombineWithColor = getelementptr inbounds %struct.gs_image4_s, %struct.gs_image4_s* %51, i32 0, i32 8
  %52 = load i32, i32* %CombineWithColor, align 4, !tbaa !244
  %tobool33 = icmp ne i32 %52, 0
  br i1 %tobool33, label %if.then.34, label %if.else

if.then.34:                                       ; preds = %sw.epilog
  %53 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %54 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pbcolor.addr, align 8, !tbaa !1
  %call35 = call i32 @color_is_black_or_white(%struct.gx_device_s* %53, %struct.gx_device_color_s* %54) #6
  switch i32 %call35, label %sw.default.53 [
    i32 0, label %sw.bb.36
    i32 1, label %sw.bb.42
  ]

sw.bb.36:                                         ; preds = %if.then.34
  %55 = load i32, i32* %lop, align 4, !tbaa !52
  %and37 = and i32 %55, 15
  %shl38 = shl i32 %and37, 4
  %56 = load i32, i32* %lop, align 4, !tbaa !52
  %and39 = and i32 %56, -241
  %or40 = or i32 %shl38, %and39
  %and41 = and i32 %or40, -513
  store i32 %and41, i32* %lop, align 4, !tbaa !52
  br label %sw.epilog.57

sw.bb.42:                                         ; preds = %if.then.34
  %57 = load i32, i32* %lop, align 4, !tbaa !52
  %and43 = and i32 %57, 512
  %tobool44 = icmp ne i32 %and43, 0
  br i1 %tobool44, label %cond.true.45, label %cond.false.46

cond.true.45:                                     ; preds = %sw.bb.42
  br label %cond.end.51

cond.false.46:                                    ; preds = %sw.bb.42
  %58 = load i32, i32* %lop, align 4, !tbaa !52
  %and47 = and i32 %58, 240
  %shr48 = lshr i32 %and47, 4
  %59 = load i32, i32* %lop, align 4, !tbaa !52
  %and49 = and i32 %59, -16
  %or50 = or i32 %shr48, %and49
  br label %cond.end.51

cond.end.51:                                      ; preds = %cond.false.46, %cond.true.45
  %cond52 = phi i32 [ 170, %cond.true.45 ], [ %or50, %cond.false.46 ]
  store i32 %cond52, i32* %lop, align 4, !tbaa !52
  br label %sw.epilog.57

sw.default.53:                                    ; preds = %if.then.34
  br label %do.body.54

do.body.54:                                       ; preds = %sw.default.53
  br label %do.cond.55

do.cond.55:                                       ; preds = %do.body.54
  br label %do.end.56

do.end.56:                                        ; preds = %do.cond.55
  br label %sw.epilog.57

sw.epilog.57:                                     ; preds = %do.end.56, %cond.end.51, %sw.bb.36
  br label %if.end.63

if.else:                                          ; preds = %sw.epilog
  %60 = load i32, i32* %lop, align 4, !tbaa !52
  %and58 = and i32 %60, 15
  %shl59 = shl i32 %and58, 4
  %61 = load i32, i32* %lop, align 4, !tbaa !52
  %and60 = and i32 %61, -241
  %or61 = or i32 %shl59, %and60
  %and62 = and i32 %or61, -513
  store i32 %and62, i32* %lop, align 4, !tbaa !52
  br label %if.end.63

if.end.63:                                        ; preds = %if.else, %sw.epilog.57
  %62 = load i32, i32* %lop, align 4, !tbaa !52
  %and64 = and i32 %62, 255
  switch i32 %and64, label %sw.default.73 [
    i32 0, label %sw.bb.65
    i32 255, label %sw.bb.69
    i32 204, label %sw.epilog.74
  ]

sw.bb.65:                                         ; preds = %if.end.63
  %63 = load i32, i32* %black_or_white, align 4, !tbaa !52
  %cmp66 = icmp ne i32 %63, 0
  br i1 %cmp66, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %sw.bb.65
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.68:                                        ; preds = %sw.bb.65
  br label %sw.epilog.74

sw.bb.69:                                         ; preds = %if.end.63
  %64 = load i32, i32* %black_or_white, align 4, !tbaa !52
  %cmp70 = icmp ne i32 %64, 1
  br i1 %cmp70, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %sw.bb.69
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.72:                                        ; preds = %sw.bb.69
  br label %sw.epilog.74

sw.default.73:                                    ; preds = %if.end.63
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog.74:                                     ; preds = %if.end.63, %if.end.72, %if.end.68
  %65 = load i32, i32* %lop, align 4, !tbaa !52
  %and75 = and i32 %65, 256
  %tobool76 = icmp ne i32 %and75, 0
  br i1 %tobool76, label %land.lhs.true.77, label %if.end.80

land.lhs.true.77:                                 ; preds = %sw.epilog.74
  %66 = load i32, i32* %black_or_white, align 4, !tbaa !52
  %cmp78 = icmp eq i32 %66, 1
  br i1 %cmp78, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %land.lhs.true.77
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.80:                                        ; preds = %land.lhs.true.77, %sw.epilog.74
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.80, %if.then.79, %sw.default.73, %if.then.71, %if.then.67
  %67 = bitcast i32* %black_or_white to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #1
  %68 = bitcast i32* %lop to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.87 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  %69 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim1.addr, align 8, !tbaa !1
  %70 = load i32, i32* %write_1s, align 4, !tbaa !52
  call void @gs_image_t_init_mask_adjust(%struct.gs_image1_s* %69, i32 %70, i32 0) #6
  %71 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim1.addr, align 8, !tbaa !1
  %ImageMatrix = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %71, i32 0, i32 1
  %72 = load %struct.gs_image4_s*, %struct.gs_image4_s** %pim4.addr, align 8, !tbaa !1
  %ImageMatrix82 = getelementptr inbounds %struct.gs_image4_s, %struct.gs_image4_s* %72, i32 0, i32 1
  %73 = bitcast %struct.gs_matrix_s* %ImageMatrix to i8*
  %74 = bitcast %struct.gs_matrix_s* %ImageMatrix82 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %73, i8* %74, i64 24, i32 4, i1 false), !tbaa.struct !231
  %75 = load %struct.gs_image4_s*, %struct.gs_image4_s** %pim4.addr, align 8, !tbaa !1
  %Width = getelementptr inbounds %struct.gs_image4_s, %struct.gs_image4_s* %75, i32 0, i32 2
  %76 = load i32, i32* %Width, align 4, !tbaa !201
  %77 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim1.addr, align 8, !tbaa !1
  %Width83 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %77, i32 0, i32 2
  store i32 %76, i32* %Width83, align 4, !tbaa !180
  %78 = load %struct.gs_image4_s*, %struct.gs_image4_s** %pim4.addr, align 8, !tbaa !1
  %Height = getelementptr inbounds %struct.gs_image4_s, %struct.gs_image4_s* %78, i32 0, i32 3
  %79 = load i32, i32* %Height, align 4, !tbaa !202
  %80 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim1.addr, align 8, !tbaa !1
  %Height84 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %80, i32 0, i32 3
  store i32 %79, i32* %Height84, align 4, !tbaa !181
  %81 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim1.addr, align 8, !tbaa !1
  %BitsPerComponent85 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %81, i32 0, i32 4
  store i32 1, i32* %BitsPerComponent85, align 4, !tbaa !183
  %82 = load %struct.gs_image4_s*, %struct.gs_image4_s** %pim4.addr, align 8, !tbaa !1
  %Interpolate = getelementptr inbounds %struct.gs_image4_s, %struct.gs_image4_s* %82, i32 0, i32 6
  %83 = load i32, i32* %Interpolate, align 4, !tbaa !245
  %84 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim1.addr, align 8, !tbaa !1
  %Interpolate86 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %84, i32 0, i32 6
  store i32 %83, i32* %Interpolate86, align 4, !tbaa !246
  %85 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim1.addr, align 8, !tbaa !1
  %format = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %85, i32 0, i32 7
  store i32 0, i32* %format, align 4, !tbaa !247
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.87

cleanup.87:                                       ; preds = %cleanup.cont, %cleanup, %if.then.18
  %86 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #1
  %87 = bitcast %struct.gs_client_color_s* %cc to i8*
  call void @llvm.lifetime.end(i64 264, i8* %87) #1
  %88 = bitcast i32* %write_1s to i8*
  call void @llvm.lifetime.end(i64 4, i8* %88) #1
  %89 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %89) #1
  %90 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %90) #1
  br label %return

if.end.92:                                        ; preds = %cond.end, %land.lhs.true, %entry
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.92, %cleanup.87
  %91 = load i32, i32* %retval
  ret i32 %91
}

declare %struct.gs_state_s* @gx_hld_get_gstate_ptr(%struct.gs_imager_state_s*) #2

declare i32 @cos_array_add_object(%struct.cos_array_s*, %struct.cos_object_s*) #2

declare i32 @gs_gsave(%struct.gs_state_s*) #2

declare i32 @gs_setcolorspace(%struct.gs_state_s*, %struct.gs_color_space_s*) #2

declare i32 @gs_grestore(%struct.gs_state_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @color_is_black_or_white(%struct.gx_device_s* %dev, %struct.gx_device_color_s* %pdcolor) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %0, i32 0, i32 0
  %1 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !142
  %cmp = icmp eq %struct.gx_device_color_type_s* %1, @gx_dc_type_data_pure
  br i1 %cmp, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  br label %cond.end.9

cond.false:                                       ; preds = %entry
  %2 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %2, i32 0, i32 1
  %pure = bitcast %union._c* %colors to i64*
  %3 = load i64, i64* %pure, align 8, !tbaa !53
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call i64 @gx_device_black(%struct.gx_device_s* %4) #6
  %cmp1 = icmp eq i64 %3, %call
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.false
  br label %cond.end

cond.false.3:                                     ; preds = %cond.false
  %5 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %colors4 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %5, i32 0, i32 1
  %pure5 = bitcast %union._c* %colors4 to i64*
  %6 = load i64, i64* %pure5, align 8, !tbaa !53
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call6 = call i64 @gx_device_white(%struct.gx_device_s* %7) #6
  %cmp7 = icmp eq i64 %6, %call6
  %cond = select i1 %cmp7, i32 1, i32 -1
  br label %cond.end

cond.end:                                         ; preds = %cond.false.3, %cond.true.2
  %cond8 = phi i32 [ 0, %cond.true.2 ], [ %cond, %cond.false.3 ]
  br label %cond.end.9

cond.end.9:                                       ; preds = %cond.end, %cond.true
  %cond10 = phi i32 [ -1, %cond.true ], [ %cond8, %cond.end ]
  ret i32 %cond10
}

declare i64 @gx_device_white(%struct.gx_device_s*) #2

declare void @gx_device_retain(%struct.gx_device_s*, i32) #2

declare i32 @gx_image1_plane_data(%struct.gx_image_enum_common_s*, %struct.gx_image_plane_s*, i32, i32*) #2

; Function Attrs: nounwind uwtable
define internal i32 @pdf_image_end_image_cvd(%struct.gx_image_enum_common_s* %info, i32 %draw_last) #0 {
entry:
  %info.addr = alloca %struct.gx_image_enum_common_s*, align 8
  %draw_last.addr = alloca i32, align 4
  %cvd = alloca %struct.pdf_lcvd_s*, align 8
  %code = alloca i32, align 4
  %code1 = alloca i32, align 4
  %code2 = alloca i32, align 4
  %code3 = alloca i32, align 4
  store %struct.gx_image_enum_common_s* %info, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  store i32 %draw_last, i32* %draw_last.addr, align 4, !tbaa !52
  %0 = bitcast %struct.pdf_lcvd_s** %cvd to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  %dev = getelementptr inbounds %struct.gx_image_enum_common_s, %struct.gx_image_enum_common_s* %1, i32 0, i32 2
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !248
  %3 = bitcast %struct.gx_device_s* %2 to %struct.pdf_lcvd_s*
  store %struct.pdf_lcvd_s* %3, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %pdev = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %5, i32 0, i32 2
  %6 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !249
  %7 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %call = call i32 @pdf_dump_converted_image(%struct.gx_device_pdf_s* %6, %struct.pdf_lcvd_s* %7) #6
  store i32 %call, i32* %code, align 4, !tbaa !52
  %8 = bitcast i32* %code1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  %10 = load i32, i32* %draw_last.addr, align 4, !tbaa !52
  %call1 = call i32 @gx_image1_end_image(%struct.gx_image_enum_common_s* %9, i32 %10) #6
  store i32 %call1, i32* %code1, align 4, !tbaa !52
  %11 = bitcast i32* %code2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %mask = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %12, i32 0, i32 1
  %13 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask, align 8, !tbaa !212
  %14 = bitcast %struct.gx_device_memory_s* %13 to %struct.gx_device_s*
  %call2 = call i32 @gs_closedevice(%struct.gx_device_s* %14) #6
  store i32 %call2, i32* %code2, align 4, !tbaa !52
  %15 = bitcast i32* %code3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %17 = bitcast %struct.pdf_lcvd_s* %16 to %struct.gx_device_s*
  %call3 = call i32 @gs_closedevice(%struct.gx_device_s* %17) #6
  store i32 %call3, i32* %code3, align 4, !tbaa !52
  %18 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %mask4 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %18, i32 0, i32 1
  %19 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask4, align 8, !tbaa !212
  %memory = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %19, i32 0, i32 3
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !250
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %20, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %21 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !114
  %22 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %mask5 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %22, i32 0, i32 1
  %23 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask5, align 8, !tbaa !212
  %memory6 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %23, i32 0, i32 3
  %24 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory6, align 8, !tbaa !250
  %25 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %mask7 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %25, i32 0, i32 1
  %26 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask7, align 8, !tbaa !212
  %27 = bitcast %struct.gx_device_memory_s* %26 to %struct.gx_device_s*
  %28 = bitcast %struct.gx_device_s* %27 to i8*
  call void %21(%struct.gs_memory_s* %24, i8* %28, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i32 0, i32 0)) #6
  %29 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %mdev = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %29, i32 0, i32 0
  %memory8 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev, i32 0, i32 3
  %30 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory8, align 8, !tbaa !251
  %procs9 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %30, i32 0, i32 1
  %free_object10 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs9, i32 0, i32 2
  %31 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object10, align 8, !tbaa !114
  %32 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %mdev11 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %32, i32 0, i32 0
  %memory12 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev11, i32 0, i32 3
  %33 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory12, align 8, !tbaa !251
  %34 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %35 = bitcast %struct.pdf_lcvd_s* %34 to %struct.gx_device_s*
  %36 = bitcast %struct.gx_device_s* %35 to i8*
  call void %31(%struct.gs_memory_s* %33, i8* %36, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i32 0, i32 0)) #6
  %37 = load i32, i32* %code, align 4, !tbaa !52
  %cmp = icmp slt i32 %37, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %38 = load i32, i32* %code, align 4, !tbaa !52
  br label %cond.end.21

cond.false:                                       ; preds = %entry
  %39 = load i32, i32* %code1, align 4, !tbaa !52
  %cmp13 = icmp slt i32 %39, 0
  br i1 %cmp13, label %cond.true.14, label %cond.false.15

cond.true.14:                                     ; preds = %cond.false
  %40 = load i32, i32* %code1, align 4, !tbaa !52
  br label %cond.end.19

cond.false.15:                                    ; preds = %cond.false
  %41 = load i32, i32* %code2, align 4, !tbaa !52
  %cmp16 = icmp slt i32 %41, 0
  br i1 %cmp16, label %cond.true.17, label %cond.false.18

cond.true.17:                                     ; preds = %cond.false.15
  %42 = load i32, i32* %code2, align 4, !tbaa !52
  br label %cond.end

cond.false.18:                                    ; preds = %cond.false.15
  %43 = load i32, i32* %code3, align 4, !tbaa !52
  br label %cond.end

cond.end:                                         ; preds = %cond.false.18, %cond.true.17
  %cond = phi i32 [ %42, %cond.true.17 ], [ %43, %cond.false.18 ]
  br label %cond.end.19

cond.end.19:                                      ; preds = %cond.end, %cond.true.14
  %cond20 = phi i32 [ %40, %cond.true.14 ], [ %cond, %cond.end ]
  br label %cond.end.21

cond.end.21:                                      ; preds = %cond.end.19, %cond.true
  %cond22 = phi i32 [ %38, %cond.true ], [ %cond20, %cond.end.19 ]
  %44 = bitcast i32* %code3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #1
  %45 = bitcast i32* %code2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #1
  %46 = bitcast i32* %code1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #1
  %47 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #1
  %48 = bitcast %struct.pdf_lcvd_s** %cvd to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
  ret i32 %cond22
}

declare i32 @gx_image1_flush(%struct.gx_image_enum_common_s*) #2

declare i32 @pdf_dump_converted_image(%struct.gx_device_pdf_s*, %struct.pdf_lcvd_s*) #2

declare i32 @gx_image1_end_image(%struct.gx_image_enum_common_s*, i32) #2

declare i32 @gs_closedevice(%struct.gx_device_s*) #2

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @pdf_image_enum_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %retval = alloca %struct.gs_ptr_procs_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %pie = alloca %struct.pdf_image_enum_s*, align 8
  %ret = alloca %struct.gs_ptr_procs_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !52
  store i32 %index, i32* %index.addr, align 4, !tbaa !52
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.pdf_image_enum_s** %pie to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.pdf_image_enum_s*
  store %struct.pdf_image_enum_s* %2, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %3 = load i32, i32* %index.addr, align 4, !tbaa !52
  switch i32 %3, label %sw.default [
  ]

sw.default:                                       ; preds = %entry
  %4 = load i32, i32* %index.addr, align 4, !tbaa !52
  %cmp = icmp slt i32 %4, 16
  br i1 %cmp, label %if.then, label %if.end.3

if.then:                                          ; preds = %sw.default
  %5 = bitcast %struct.gs_ptr_procs_s** %ret to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_pdf_image_writer, i32 0, i32 4), align 8, !tbaa !252
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %8 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %writer = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %8, i32 0, i32 12
  %9 = bitcast %struct.pdf_image_writer_s* %writer to i8*
  %10 = load i32, i32* %index.addr, align 4, !tbaa !52
  %11 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %12 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call %struct.gs_ptr_procs_s* %6(%struct.gs_memory_s* %7, i8* %9, i32 192, i32 %10, %struct.enum_ptr_s* %11, %struct.gs_memory_struct_type_s* @st_pdf_image_writer, %struct.gc_state_s* %12) #6
  store %struct.gs_ptr_procs_s* %call, %struct.gs_ptr_procs_s** %ret, align 8, !tbaa !1
  %13 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %ret, align 8, !tbaa !1
  %cmp1 = icmp eq %struct.gs_ptr_procs_s* %13, null
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %14 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %14, i32 0, i32 0
  store i8* null, i8** %ptr, align 8, !tbaa !254
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %15 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %ret, align 8, !tbaa !1
  store %struct.gs_ptr_procs_s* %15, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.2
  %16 = bitcast %struct.gs_ptr_procs_s** %ret to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  br label %cleanup.5

if.end.3:                                         ; preds = %sw.default
  %17 = load %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_gx_image_enum_common, i32 0, i32 4), align 8, !tbaa !252
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %19 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %20 = load i32, i32* %size.addr, align 4, !tbaa !52
  %21 = load i32, i32* %index.addr, align 4, !tbaa !52
  %sub = sub nsw i32 %21, 16
  %22 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %23 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call4 = call %struct.gs_ptr_procs_s* %17(%struct.gs_memory_s* %18, i8* %19, i32 %20, i32 %sub, %struct.enum_ptr_s* %22, %struct.gs_memory_struct_type_s* @st_gx_image_enum_common, %struct.gc_state_s* %23) #6
  store %struct.gs_ptr_procs_s* %call4, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.5

cleanup.5:                                        ; preds = %if.end.3, %cleanup
  %24 = bitcast %struct.pdf_image_enum_s** %pie to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %25
}

; Function Attrs: nounwind uwtable
define internal void @pdf_image_enum_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %pie = alloca %struct.pdf_image_enum_s*, align 8
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !52
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.pdf_image_enum_s** %pie to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.pdf_image_enum_s*
  store %struct.pdf_image_enum_s* %2, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %3 = load void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_pdf_image_writer, i32 0, i32 5), align 8, !tbaa !256
  %4 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %writer = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %4, i32 0, i32 12
  %5 = bitcast %struct.pdf_image_writer_s* %writer to i8*
  %6 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %3(i8* %5, i32 192, %struct.gs_memory_struct_type_s* @st_pdf_image_writer, %struct.gc_state_s* %6) #6
  %7 = load void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_gx_image_enum_common, i32 0, i32 5), align 8, !tbaa !256
  %8 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %9 = load i32, i32* %size.addr, align 4, !tbaa !52
  %10 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %7(i8* %8, i32 %9, %struct.gs_memory_struct_type_s* @st_gx_image_enum_common, %struct.gc_state_s* %10) #6
  %11 = bitcast %struct.pdf_image_enum_s** %pie to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @pdf_image_plane_data(%struct.gx_image_enum_common_s* %info, %struct.gx_image_plane_s* %planes, i32 %height, i32* %rows_used) #0 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct.gx_image_enum_common_s*, align 8
  %planes.addr = alloca %struct.gx_image_plane_s*, align 8
  %height.addr = alloca i32, align 4
  %rows_used.addr = alloca i32*, align 8
  %pie = alloca %struct.pdf_image_enum_s*, align 8
  %i = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_image_enum_common_s* %info, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  store %struct.gx_image_plane_s* %planes, %struct.gx_image_plane_s** %planes.addr, align 8, !tbaa !1
  store i32 %height, i32* %height.addr, align 4, !tbaa !52
  store i32* %rows_used, i32** %rows_used.addr, align 8, !tbaa !1
  %0 = bitcast %struct.pdf_image_enum_s** %pie to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_image_enum_common_s* %1 to %struct.pdf_image_enum_s*
  store %struct.pdf_image_enum_s* %2, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %i, align 4, !tbaa !52
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4, !tbaa !52
  %5 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %writer = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %5, i32 0, i32 12
  %alt_writer_count = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %writer, i32 0, i32 1
  %6 = load i32, i32* %alt_writer_count, align 4, !tbaa !163
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  %9 = load %struct.gx_image_plane_s*, %struct.gx_image_plane_s** %planes.addr, align 8, !tbaa !1
  %10 = load i32, i32* %height.addr, align 4, !tbaa !52
  %11 = load i32*, i32** %rows_used.addr, align 8, !tbaa !1
  %12 = load i32, i32* %i, align 4, !tbaa !52
  %call = call i32 @pdf_image_plane_data_alt(%struct.gx_image_enum_common_s* %8, %struct.gx_image_plane_s* %9, i32 %10, i32* %11, i32 %12) #6
  store i32 %call, i32* %code, align 4, !tbaa !52
  %13 = load i32, i32* %code, align 4, !tbaa !52
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %14 = load i32, i32* %code, align 4, !tbaa !52
  store i32 %14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %15 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.10 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %16 = load i32, i32* %i, align 4, !tbaa !52
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4, !tbaa !52
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load i32*, i32** %rows_used.addr, align 8, !tbaa !1
  %18 = load i32, i32* %17, align 4, !tbaa !52
  %19 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %rows_left = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %19, i32 0, i32 11
  %20 = load i32, i32* %rows_left, align 4, !tbaa !156
  %sub = sub nsw i32 %20, %18
  store i32 %sub, i32* %rows_left, align 4, !tbaa !156
  %21 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %writer1 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %21, i32 0, i32 12
  %alt_writer_count2 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %writer1, i32 0, i32 1
  %22 = load i32, i32* %alt_writer_count2, align 4, !tbaa !163
  %cmp3 = icmp sgt i32 %22, 2
  br i1 %cmp3, label %if.then.4, label %if.end.7

if.then.4:                                        ; preds = %for.end
  %23 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %writer5 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %23, i32 0, i32 12
  %call6 = call i32 @pdf_choose_compression(%struct.pdf_image_writer_s* %writer5, i32 0) #6
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.4, %for.end
  %24 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %rows_left8 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %24, i32 0, i32 11
  %25 = load i32, i32* %rows_left8, align 4, !tbaa !156
  %tobool9 = icmp ne i32 %25, 0
  %lnot = xor i1 %tobool9, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.10

cleanup.10:                                       ; preds = %if.end.7, %cleanup
  %26 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  %27 = bitcast %struct.pdf_image_enum_s** %pie to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  %28 = load i32, i32* %retval
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define internal i32 @pdf_image_end_image_object(%struct.gx_image_enum_common_s* %info, i32 %draw_last) #0 {
entry:
  %info.addr = alloca %struct.gx_image_enum_common_s*, align 8
  %draw_last.addr = alloca i32, align 4
  store %struct.gx_image_enum_common_s* %info, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  store i32 %draw_last, i32* %draw_last.addr, align 4, !tbaa !52
  %0 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  %1 = load i32, i32* %draw_last.addr, align 4, !tbaa !52
  %call = call i32 @pdf_image_end_image_data(%struct.gx_image_enum_common_s* %0, i32 %1, i32 0) #6
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @pdf_image_plane_data_alt(%struct.gx_image_enum_common_s* %info, %struct.gx_image_plane_s* %planes, i32 %height, i32* %rows_used, i32 %alt_writer_index) #0 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct.gx_image_enum_common_s*, align 8
  %planes.addr = alloca %struct.gx_image_plane_s*, align 8
  %height.addr = alloca i32, align 4
  %rows_used.addr = alloca i32*, align 8
  %alt_writer_index.addr = alloca i32, align 4
  %pie = alloca %struct.pdf_image_enum_s*, align 8
  %h = alloca i32, align 4
  %y = alloca i32, align 4
  %width_bits = alloca i32, align 4
  %bcount = alloca i32, align 4
  %ignore = alloca i32, align 4
  %nplanes = alloca i32, align 4
  %status = alloca i32, align 4
  %pi = alloca i32, align 4
  %count = alloca i32, align 4
  %offset = alloca i32, align 4
  %bit_planes = alloca [65 x i8*], align 16
  %block_bytes = alloca i32, align 4
  %row = alloca [200 x i8], align 16
  %flip_count = alloca i32, align 4
  %flipped_count = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_image_enum_common_s* %info, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  store %struct.gx_image_plane_s* %planes, %struct.gx_image_plane_s** %planes.addr, align 8, !tbaa !1
  store i32 %height, i32* %height.addr, align 4, !tbaa !52
  store i32* %rows_used, i32** %rows_used.addr, align 8, !tbaa !1
  store i32 %alt_writer_index, i32* %alt_writer_index.addr, align 4, !tbaa !52
  %0 = bitcast %struct.pdf_image_enum_s** %pie to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_image_enum_common_s* %1 to %struct.pdf_image_enum_s*
  store %struct.pdf_image_enum_s* %2, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %3 = bitcast i32* %h to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i32, i32* %height.addr, align 4, !tbaa !52
  store i32 %4, i32* %h, align 4, !tbaa !52
  %5 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %width_bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %7, i32 0, i32 9
  %8 = load i32, i32* %width, align 4, !tbaa !153
  %9 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %plane_depths = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %9, i32 0, i32 7
  %arrayidx = getelementptr inbounds [65 x i32], [65 x i32]* %plane_depths, i32 0, i64 0
  %10 = load i32, i32* %arrayidx, align 4, !tbaa !52
  %mul = mul nsw i32 %8, %10
  store i32 %mul, i32* %width_bits, align 4, !tbaa !52
  %11 = bitcast i32* %bcount to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load i32, i32* %width_bits, align 4, !tbaa !52
  %add = add i32 %12, 7
  %shr = lshr i32 %add, 3
  store i32 %shr, i32* %bcount, align 4, !tbaa !52
  %13 = bitcast i32* %ignore to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast i32* %nplanes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %num_planes = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %15, i32 0, i32 6
  %16 = load i32, i32* %num_planes, align 4, !tbaa !154
  store i32 %16, i32* %nplanes, align 4, !tbaa !52
  %17 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  store i32 0, i32* %status, align 4, !tbaa !52
  %18 = load i32, i32* %h, align 4, !tbaa !52
  %19 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %rows_left = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %19, i32 0, i32 11
  %20 = load i32, i32* %rows_left, align 4, !tbaa !156
  %cmp = icmp sgt i32 %18, %20
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %21 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %rows_left1 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %21, i32 0, i32 11
  %22 = load i32, i32* %rows_left1, align 4, !tbaa !156
  store i32 %22, i32* %h, align 4, !tbaa !52
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %y, align 4, !tbaa !52
  br label %for.cond

for.cond:                                         ; preds = %for.inc.54, %if.end
  %23 = load i32, i32* %y, align 4, !tbaa !52
  %24 = load i32, i32* %h, align 4, !tbaa !52
  %cmp2 = icmp slt i32 %23, %24
  br i1 %cmp2, label %for.body, label %for.end.56

for.body:                                         ; preds = %for.cond
  %25 = load i32, i32* %nplanes, align 4, !tbaa !52
  %cmp3 = icmp sgt i32 %25, 1
  br i1 %cmp3, label %if.then.4, label %if.else.36

if.then.4:                                        ; preds = %for.body
  %26 = bitcast i32* %pi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #1
  %27 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  %28 = load i32, i32* %bcount, align 4, !tbaa !52
  store i32 %28, i32* %count, align 4, !tbaa !52
  %29 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #1
  store i32 0, i32* %offset, align 4, !tbaa !52
  %30 = bitcast [65 x i8*]* %bit_planes to i8*
  call void @llvm.lifetime.start(i64 520, i8* %30) #1
  %31 = bitcast i32* %block_bytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #1
  %32 = load i32, i32* %nplanes, align 4, !tbaa !52
  %mul5 = mul nsw i32 3, %32
  %div = sdiv i32 200, %mul5
  %mul6 = mul nsw i32 %div, 3
  store i32 %mul6, i32* %block_bytes, align 4, !tbaa !52
  %33 = bitcast [200 x i8]* %row to i8*
  call void @llvm.lifetime.start(i64 200, i8* %33) #1
  store i32 0, i32* %pi, align 4, !tbaa !52
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc, %if.then.4
  %34 = load i32, i32* %pi, align 4, !tbaa !52
  %35 = load i32, i32* %nplanes, align 4, !tbaa !52
  %cmp8 = icmp slt i32 %34, %35
  br i1 %cmp8, label %for.body.9, label %for.end

for.body.9:                                       ; preds = %for.cond.7
  %36 = load i32, i32* %pi, align 4, !tbaa !52
  %idxprom = sext i32 %36 to i64
  %37 = load %struct.gx_image_plane_s*, %struct.gx_image_plane_s** %planes.addr, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %37, i64 %idxprom
  %data = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %arrayidx10, i32 0, i32 0
  %38 = load i8*, i8** %data, align 8, !tbaa !257
  %39 = load i32, i32* %pi, align 4, !tbaa !52
  %idxprom11 = sext i32 %39 to i64
  %40 = load %struct.gx_image_plane_s*, %struct.gx_image_plane_s** %planes.addr, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %40, i64 %idxprom11
  %raster = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %arrayidx12, i32 0, i32 2
  %41 = load i32, i32* %raster, align 4, !tbaa !259
  %42 = load i32, i32* %y, align 4, !tbaa !52
  %mul13 = mul i32 %41, %42
  %idx.ext = zext i32 %mul13 to i64
  %add.ptr = getelementptr inbounds i8, i8* %38, i64 %idx.ext
  %43 = load i32, i32* %pi, align 4, !tbaa !52
  %idxprom14 = sext i32 %43 to i64
  %arrayidx15 = getelementptr inbounds [65 x i8*], [65 x i8*]* %bit_planes, i32 0, i64 %idxprom14
  store i8* %add.ptr, i8** %arrayidx15, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body.9
  %44 = load i32, i32* %pi, align 4, !tbaa !52
  %inc = add nsw i32 %44, 1
  store i32 %inc, i32* %pi, align 4, !tbaa !52
  br label %for.cond.7

for.end:                                          ; preds = %for.cond.7
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %for.end
  %45 = load i32, i32* %count, align 4, !tbaa !52
  %tobool = icmp ne i32 %45, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %46 = bitcast i32* %flip_count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %46) #1
  %47 = bitcast i32* %flipped_count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %47) #1
  %48 = load i32, i32* %count, align 4, !tbaa !52
  %49 = load i32, i32* %block_bytes, align 4, !tbaa !52
  %cmp16 = icmp uge i32 %48, %49
  br i1 %cmp16, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %while.body
  %50 = load i32, i32* %block_bytes, align 4, !tbaa !52
  store i32 %50, i32* %flip_count, align 4, !tbaa !52
  %51 = load i32, i32* %block_bytes, align 4, !tbaa !52
  %52 = load i32, i32* %nplanes, align 4, !tbaa !52
  %mul18 = mul nsw i32 %51, %52
  store i32 %mul18, i32* %flipped_count, align 4, !tbaa !52
  br label %if.end.23

if.else:                                          ; preds = %while.body
  %53 = load i32, i32* %count, align 4, !tbaa !52
  store i32 %53, i32* %flip_count, align 4, !tbaa !52
  %54 = load i32, i32* %width_bits, align 4, !tbaa !52
  %55 = load i32, i32* %block_bytes, align 4, !tbaa !52
  %mul19 = mul nsw i32 %55, 8
  %rem = urem i32 %54, %mul19
  %56 = load i32, i32* %nplanes, align 4, !tbaa !52
  %mul20 = mul i32 %rem, %56
  %add21 = add i32 %mul20, 7
  %shr22 = lshr i32 %add21, 3
  store i32 %shr22, i32* %flipped_count, align 4, !tbaa !52
  br label %if.end.23

if.end.23:                                        ; preds = %if.else, %if.then.17
  %arraydecay = getelementptr inbounds [200 x i8], [200 x i8]* %row, i32 0, i32 0
  %arraydecay24 = getelementptr inbounds [65 x i8*], [65 x i8*]* %bit_planes, i32 0, i32 0
  %57 = load i32, i32* %offset, align 4, !tbaa !52
  %58 = load i32, i32* %flip_count, align 4, !tbaa !52
  %59 = load i32, i32* %nplanes, align 4, !tbaa !52
  %60 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %plane_depths25 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %60, i32 0, i32 7
  %arrayidx26 = getelementptr inbounds [65 x i32], [65 x i32]* %plane_depths25, i32 0, i64 0
  %61 = load i32, i32* %arrayidx26, align 4, !tbaa !52
  %call = call i32 @image_flip_planes(i8* %arraydecay, i8** %arraydecay24, i32 %57, i32 %58, i32 %59, i32 %61) #6
  %62 = load i32, i32* %alt_writer_index.addr, align 4, !tbaa !52
  %idxprom27 = sext i32 %62 to i64
  %63 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %writer = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %63, i32 0, i32 12
  %binary = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %writer, i32 0, i32 0
  %arrayidx28 = getelementptr inbounds [4 x %struct.psdf_binary_writer_s], [4 x %struct.psdf_binary_writer_s]* %binary, i32 0, i64 %idxprom27
  %strm = getelementptr inbounds %struct.psdf_binary_writer_s, %struct.psdf_binary_writer_s* %arrayidx28, i32 0, i32 2
  %64 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !173
  %arraydecay29 = getelementptr inbounds [200 x i8], [200 x i8]* %row, i32 0, i32 0
  %65 = load i32, i32* %flipped_count, align 4, !tbaa !52
  %call30 = call i32 @sputs(%struct.stream_s* %64, i8* %arraydecay29, i32 %65, i32* %ignore) #6
  store i32 %call30, i32* %status, align 4, !tbaa !52
  %66 = load i32, i32* %status, align 4, !tbaa !52
  %cmp31 = icmp slt i32 %66, 0
  br i1 %cmp31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.end.23
  store i32 9, i32* %cleanup.dest.slot
  br label %cleanup

if.end.33:                                        ; preds = %if.end.23
  %67 = load i32, i32* %flip_count, align 4, !tbaa !52
  %68 = load i32, i32* %offset, align 4, !tbaa !52
  %add34 = add i32 %68, %67
  store i32 %add34, i32* %offset, align 4, !tbaa !52
  %69 = load i32, i32* %flip_count, align 4, !tbaa !52
  %70 = load i32, i32* %count, align 4, !tbaa !52
  %sub = sub i32 %70, %69
  store i32 %sub, i32* %count, align 4, !tbaa !52
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.33, %if.then.32
  %71 = bitcast i32* %flipped_count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #1
  %72 = bitcast i32* %flip_count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 9, label %while.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end:                                        ; preds = %cleanup, %while.cond
  %73 = bitcast [200 x i8]* %row to i8*
  call void @llvm.lifetime.end(i64 200, i8* %73) #1
  %74 = bitcast i32* %block_bytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #1
  %75 = bitcast [65 x i8*]* %bit_planes to i8*
  call void @llvm.lifetime.end(i64 520, i8* %75) #1
  %76 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #1
  %77 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #1
  %78 = bitcast i32* %pi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #1
  br label %if.end.50

if.else.36:                                       ; preds = %for.body
  %79 = load i32, i32* %alt_writer_index.addr, align 4, !tbaa !52
  %idxprom37 = sext i32 %79 to i64
  %80 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %writer38 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %80, i32 0, i32 12
  %binary39 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %writer38, i32 0, i32 0
  %arrayidx40 = getelementptr inbounds [4 x %struct.psdf_binary_writer_s], [4 x %struct.psdf_binary_writer_s]* %binary39, i32 0, i64 %idxprom37
  %strm41 = getelementptr inbounds %struct.psdf_binary_writer_s, %struct.psdf_binary_writer_s* %arrayidx40, i32 0, i32 2
  %81 = load %struct.stream_s*, %struct.stream_s** %strm41, align 8, !tbaa !173
  %82 = load %struct.gx_image_plane_s*, %struct.gx_image_plane_s** %planes.addr, align 8, !tbaa !1
  %arrayidx42 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %82, i64 0
  %data43 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %arrayidx42, i32 0, i32 0
  %83 = load i8*, i8** %data43, align 8, !tbaa !257
  %84 = load %struct.gx_image_plane_s*, %struct.gx_image_plane_s** %planes.addr, align 8, !tbaa !1
  %arrayidx44 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %84, i64 0
  %raster45 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %arrayidx44, i32 0, i32 2
  %85 = load i32, i32* %raster45, align 4, !tbaa !259
  %86 = load i32, i32* %y, align 4, !tbaa !52
  %mul46 = mul i32 %85, %86
  %idx.ext47 = zext i32 %mul46 to i64
  %add.ptr48 = getelementptr inbounds i8, i8* %83, i64 %idx.ext47
  %87 = load i32, i32* %bcount, align 4, !tbaa !52
  %call49 = call i32 @sputs(%struct.stream_s* %81, i8* %add.ptr48, i32 %87, i32* %ignore) #6
  store i32 %call49, i32* %status, align 4, !tbaa !52
  br label %if.end.50

if.end.50:                                        ; preds = %if.else.36, %while.end
  %88 = load i32, i32* %status, align 4, !tbaa !52
  %cmp51 = icmp slt i32 %88, 0
  br i1 %cmp51, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.end.50
  br label %for.end.56

if.end.53:                                        ; preds = %if.end.50
  br label %for.inc.54

for.inc.54:                                       ; preds = %if.end.53
  %89 = load i32, i32* %y, align 4, !tbaa !52
  %inc55 = add nsw i32 %89, 1
  store i32 %inc55, i32* %y, align 4, !tbaa !52
  br label %for.cond

for.end.56:                                       ; preds = %if.then.52, %for.cond
  %90 = load i32, i32* %h, align 4, !tbaa !52
  %91 = load i32*, i32** %rows_used.addr, align 8, !tbaa !1
  store i32 %90, i32* %91, align 4, !tbaa !52
  %92 = load i32, i32* %status, align 4, !tbaa !52
  %cmp57 = icmp slt i32 %92, 0
  br i1 %cmp57, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %for.end.56
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.62

if.end.59:                                        ; preds = %for.end.56
  %93 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %rows_left60 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %93, i32 0, i32 11
  %94 = load i32, i32* %rows_left60, align 4, !tbaa !156
  %tobool61 = icmp ne i32 %94, 0
  %lnot = xor i1 %tobool61, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.62

cleanup.62:                                       ; preds = %if.end.59, %if.then.58
  %95 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %95) #1
  %96 = bitcast i32* %nplanes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %96) #1
  %97 = bitcast i32* %ignore to i8*
  call void @llvm.lifetime.end(i64 4, i8* %97) #1
  %98 = bitcast i32* %bcount to i8*
  call void @llvm.lifetime.end(i64 4, i8* %98) #1
  %99 = bitcast i32* %width_bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %99) #1
  %100 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %100) #1
  %101 = bitcast i32* %h to i8*
  call void @llvm.lifetime.end(i64 4, i8* %101) #1
  %102 = bitcast %struct.pdf_image_enum_s** %pie to i8*
  call void @llvm.lifetime.end(i64 8, i8* %102) #1
  %103 = load i32, i32* %retval
  ret i32 %103

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare i32 @pdf_choose_compression(%struct.pdf_image_writer_s*, i32) #2

declare i32 @image_flip_planes(i8*, i8**, i32, i32, i32, i32) #2

declare i32 @sputs(%struct.stream_s*, i8*, i32, i32*) #2

; Function Attrs: nounwind uwtable
define internal i32 @pdf_image_end_image_data(%struct.gx_image_enum_common_s* %info, i32 %draw_last, i32 %do_image) #0 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct.gx_image_enum_common_s*, align 8
  %draw_last.addr = alloca i32, align 4
  %do_image.addr = alloca i32, align 4
  %pdev = alloca %struct.gx_device_pdf_s*, align 8
  %pie = alloca %struct.pdf_image_enum_s*, align 8
  %height = alloca i32, align 4
  %data_height = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %writer27 = alloca %struct.pdf_image_writer_s, align 8
  store %struct.gx_image_enum_common_s* %info, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  store i32 %draw_last, i32* %draw_last.addr, align 4, !tbaa !52
  store i32 %do_image, i32* %do_image.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_device_pdf_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  %dev = getelementptr inbounds %struct.gx_image_enum_common_s, %struct.gx_image_enum_common_s* %1, i32 0, i32 2
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !248
  %3 = bitcast %struct.gx_device_s* %2 to %struct.gx_device_pdf_s*
  store %struct.gx_device_pdf_s* %3, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %4 = bitcast %struct.pdf_image_enum_s** %pie to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  %6 = bitcast %struct.gx_image_enum_common_s* %5 to %struct.pdf_image_enum_s*
  store %struct.pdf_image_enum_s* %6, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %7 = bitcast i32* %height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %writer = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %8, i32 0, i32 12
  %height1 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %writer, i32 0, i32 4
  %9 = load i32, i32* %height1, align 4, !tbaa !260
  store i32 %9, i32* %height, align 4, !tbaa !52
  %10 = bitcast i32* %data_height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load i32, i32* %height, align 4, !tbaa !52
  %12 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %rows_left = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %12, i32 0, i32 11
  %13 = load i32, i32* %rows_left, align 4, !tbaa !156
  %sub = sub nsw i32 %11, %13
  store i32 %sub, i32* %data_height, align 4, !tbaa !52
  %14 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  store i32 0, i32* %code, align 4, !tbaa !52
  %15 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %writer2 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %15, i32 0, i32 12
  %pres = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %writer2, i32 0, i32 3
  %16 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !198
  %tobool = icmp ne %struct.pdf_resource_s* %16, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %17 = load i32, i32* %data_height, align 4, !tbaa !52
  %18 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %writer3 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %18, i32 0, i32 12
  %pres4 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %writer3, i32 0, i32 3
  %19 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres4, align 8, !tbaa !198
  %20 = bitcast %struct.pdf_resource_s* %19 to %struct.pdf_x_object_s*
  %data_height5 = getelementptr inbounds %struct.pdf_x_object_s, %struct.pdf_x_object_s* %20, i32 0, i32 10
  store i32 %17, i32* %data_height5, align 4, !tbaa !261
  br label %if.end.8

if.else:                                          ; preds = %entry
  %21 = load i32, i32* %data_height, align 4, !tbaa !52
  %cmp = icmp sgt i32 %21, 0
  br i1 %cmp, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.else
  %22 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %23 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %mat = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %23, i32 0, i32 13
  %24 = load i32, i32* %data_height, align 4, !tbaa !52
  %conv = sitofp i32 %24 to double
  %25 = load i32, i32* %height, align 4, !tbaa !52
  %conv7 = sitofp i32 %25 to double
  %div = fdiv double %conv, %conv7
  call void @pdf_put_image_matrix(%struct.gx_device_pdf_s* %22, %struct.gs_matrix_s* %mat, double %div) #6
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.else
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %if.then
  %26 = load i32, i32* %data_height, align 4, !tbaa !52
  %cmp9 = icmp sgt i32 %26, 0
  br i1 %cmp9, label %if.then.11, label %if.end.67

if.then.11:                                       ; preds = %if.end.8
  %27 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %28 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %writer12 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %28, i32 0, i32 12
  %29 = load i32, i32* %data_height, align 4, !tbaa !52
  %30 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %30, i32 0, i32 9
  %31 = load i32, i32* %width, align 4, !tbaa !153
  %32 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %bits_per_pixel = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %32, i32 0, i32 10
  %33 = load i32, i32* %bits_per_pixel, align 4, !tbaa !155
  %call = call i32 @pdf_complete_image_data(%struct.gx_device_pdf_s* %27, %struct.pdf_image_writer_s* %writer12, i32 %29, i32 %31, i32 %33) #6
  store i32 %call, i32* %code, align 4, !tbaa !52
  %34 = load i32, i32* %code, align 4, !tbaa !52
  %cmp13 = icmp slt i32 %34, 0
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.then.11
  %35 = load i32, i32* %code, align 4, !tbaa !52
  store i32 %35, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.68

if.end.16:                                        ; preds = %if.then.11
  %36 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %37 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %writer17 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %37, i32 0, i32 12
  %38 = load i32, i32* %data_height, align 4, !tbaa !52
  %call18 = call i32 @pdf_end_image_binary(%struct.gx_device_pdf_s* %36, %struct.pdf_image_writer_s* %writer17, i32 %38) #6
  store i32 %call18, i32* %code, align 4, !tbaa !52
  %39 = load i32, i32* %code, align 4, !tbaa !52
  %cmp19 = icmp slt i32 %39, 0
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.16
  %40 = load i32, i32* %code, align 4, !tbaa !52
  store i32 %40, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.68

if.end.22:                                        ; preds = %if.end.16
  %41 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %writer23 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %41, i32 0, i32 12
  %alt_writer_count = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %writer23, i32 0, i32 1
  %42 = load i32, i32* %alt_writer_count, align 4, !tbaa !163
  %cmp24 = icmp eq i32 %42, 2
  br i1 %cmp24, label %if.then.26, label %if.else.58

if.then.26:                                       ; preds = %if.end.22
  %43 = bitcast %struct.pdf_image_writer_s* %writer27 to i8*
  call void @llvm.lifetime.start(i64 192, i8* %43) #1
  %44 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %writer28 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %44, i32 0, i32 12
  %45 = bitcast %struct.pdf_image_writer_s* %writer27 to i8*
  %46 = bitcast %struct.pdf_image_writer_s* %writer28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %45, i8* %46, i64 192, i32 8, i1 false), !tbaa.struct !263
  %binary = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %writer27, i32 0, i32 0
  %arrayidx = getelementptr inbounds [4 x %struct.psdf_binary_writer_s], [4 x %struct.psdf_binary_writer_s]* %binary, i32 0, i64 0
  %47 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %writer29 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %47, i32 0, i32 12
  %binary30 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %writer29, i32 0, i32 0
  %arrayidx31 = getelementptr inbounds [4 x %struct.psdf_binary_writer_s], [4 x %struct.psdf_binary_writer_s]* %binary30, i32 0, i64 1
  %48 = bitcast %struct.psdf_binary_writer_s* %arrayidx to i8*
  %49 = bitcast %struct.psdf_binary_writer_s* %arrayidx31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %48, i8* %49, i64 32, i32 8, i1 false), !tbaa.struct !264
  %50 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %writer32 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %50, i32 0, i32 12
  %pres_mask = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %writer32, i32 0, i32 8
  %51 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres_mask, align 8, !tbaa !265
  %pres33 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %writer27, i32 0, i32 3
  store %struct.pdf_resource_s* %51, %struct.pdf_resource_s** %pres33, align 8, !tbaa !266
  %alt_writer_count34 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %writer27, i32 0, i32 1
  store i32 1, i32* %alt_writer_count34, align 4, !tbaa !267
  %52 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %writer35 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %52, i32 0, i32 12
  %binary36 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %writer35, i32 0, i32 0
  %arrayidx37 = getelementptr inbounds [4 x %struct.psdf_binary_writer_s], [4 x %struct.psdf_binary_writer_s]* %binary36, i32 0, i64 1
  %53 = bitcast %struct.psdf_binary_writer_s* %arrayidx37 to i8*
  %call38 = call i8* @memset(i8* %53, i32 0, i64 32) #7
  %54 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %writer39 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %54, i32 0, i32 12
  %alt_writer_count40 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %writer39, i32 0, i32 1
  %55 = load i32, i32* %alt_writer_count40, align 4, !tbaa !163
  %dec = add nsw i32 %55, -1
  store i32 %dec, i32* %alt_writer_count40, align 4, !tbaa !163
  %56 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %writer41 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %56, i32 0, i32 12
  %pres_mask42 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %writer41, i32 0, i32 8
  store %struct.pdf_resource_s* null, %struct.pdf_resource_s** %pres_mask42, align 8, !tbaa !265
  %57 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %58 = load i32, i32* %data_height, align 4, !tbaa !52
  %call43 = call i32 @pdf_end_image_binary(%struct.gx_device_pdf_s* %57, %struct.pdf_image_writer_s* %writer27, i32 %58) #6
  store i32 %call43, i32* %code, align 4, !tbaa !52
  %59 = load i32, i32* %code, align 4, !tbaa !52
  %cmp44 = icmp slt i32 %59, 0
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.then.26
  %60 = load i32, i32* %code, align 4, !tbaa !52
  store i32 %60, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.47:                                        ; preds = %if.then.26
  %61 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %62 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %mat48 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %62, i32 0, i32 13
  %63 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  %id = getelementptr inbounds %struct.gx_image_enum_common_s, %struct.gx_image_enum_common_s* %63, i32 0, i32 4
  %64 = load i64, i64* %id, align 8, !tbaa !268
  %call49 = call i32 @pdf_end_and_do_image(%struct.gx_device_pdf_s* %61, %struct.pdf_image_writer_s* %writer27, %struct.gs_matrix_s* %mat48, i64 %64, i32 0) #6
  store i32 %call49, i32* %code, align 4, !tbaa !52
  %65 = load i32, i32* %code, align 4, !tbaa !52
  %cmp50 = icmp slt i32 %65, 0
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.end.47
  %66 = load i32, i32* %code, align 4, !tbaa !52
  store i32 %66, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.53:                                        ; preds = %if.end.47
  %67 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %68 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %writer54 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %68, i32 0, i32 12
  %69 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %mat55 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %69, i32 0, i32 13
  %70 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  %id56 = getelementptr inbounds %struct.gx_image_enum_common_s, %struct.gx_image_enum_common_s* %70, i32 0, i32 4
  %71 = load i64, i64* %id56, align 8, !tbaa !268
  %call57 = call i32 @pdf_end_and_do_image(%struct.gx_device_pdf_s* %67, %struct.pdf_image_writer_s* %writer54, %struct.gs_matrix_s* %mat55, i64 %71, i32 2) #6
  store i32 %call57, i32* %code, align 4, !tbaa !52
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.53, %if.then.52, %if.then.46
  %72 = bitcast %struct.pdf_image_writer_s* %writer27 to i8*
  call void @llvm.lifetime.end(i64 192, i8* %72) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.68 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.63

if.else.58:                                       ; preds = %if.end.22
  %73 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %74 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %writer59 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %74, i32 0, i32 12
  %75 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %mat60 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %75, i32 0, i32 13
  %76 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  %id61 = getelementptr inbounds %struct.gx_image_enum_common_s, %struct.gx_image_enum_common_s* %76, i32 0, i32 4
  %77 = load i64, i64* %id61, align 8, !tbaa !268
  %78 = load i32, i32* %do_image.addr, align 4, !tbaa !5
  %call62 = call i32 @pdf_end_and_do_image(%struct.gx_device_pdf_s* %73, %struct.pdf_image_writer_s* %writer59, %struct.gs_matrix_s* %mat60, i64 %77, i32 %78) #6
  store i32 %call62, i32* %code, align 4, !tbaa !52
  br label %if.end.63

if.end.63:                                        ; preds = %if.else.58, %cleanup.cont
  %79 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %writer64 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %79, i32 0, i32 12
  %alt_writer_count65 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %writer64, i32 0, i32 1
  %80 = load i32, i32* %alt_writer_count65, align 4, !tbaa !163
  %dec66 = add nsw i32 %80, -1
  store i32 %dec66, i32* %alt_writer_count65, align 4, !tbaa !163
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.63, %if.end.8
  call void @gx_image_free_enum(%struct.gx_image_enum_common_s** %info.addr) #6
  %81 = load i32, i32* %code, align 4, !tbaa !52
  store i32 %81, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.68

cleanup.68:                                       ; preds = %if.end.67, %cleanup, %if.then.21, %if.then.15
  %82 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #1
  %83 = bitcast i32* %data_height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #1
  %84 = bitcast i32* %height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #1
  %85 = bitcast %struct.pdf_image_enum_s** %pie to i8*
  call void @llvm.lifetime.end(i64 8, i8* %85) #1
  %86 = bitcast %struct.gx_device_pdf_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %86) #1
  %87 = load i32, i32* %retval
  ret i32 %87
}

declare void @pdf_put_image_matrix(%struct.gx_device_pdf_s*, %struct.gs_matrix_s*, double) #2

declare i32 @pdf_complete_image_data(%struct.gx_device_pdf_s*, %struct.pdf_image_writer_s*, i32, i32, i32) #2

declare i32 @pdf_end_image_binary(%struct.gx_device_pdf_s*, %struct.pdf_image_writer_s*, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @pdf_end_and_do_image(%struct.gx_device_pdf_s* %pdev, %struct.pdf_image_writer_s* %piw, %struct.gs_matrix_s* %mat, i64 %ps_bitmap_id, i32 %do_image) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %piw.addr = alloca %struct.pdf_image_writer_s*, align 8
  %mat.addr = alloca %struct.gs_matrix_s*, align 8
  %ps_bitmap_id.addr = alloca i64, align 8
  %do_image.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %pres = alloca %struct.pdf_resource_s*, align 8
  %cleanup.dest.slot = alloca i32
  %buf = alloca [20 x i8], align 16
  %pxo = alloca %struct.pdf_x_object_s*, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.pdf_image_writer_s* %piw, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %mat, %struct.gs_matrix_s** %mat.addr, align 8, !tbaa !1
  store i64 %ps_bitmap_id, i64* %ps_bitmap_id.addr, align 8, !tbaa !53
  store i32 %do_image, i32* %do_image.addr, align 4, !tbaa !5
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %2 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %call = call i32 @pdf_end_write_image(%struct.gx_device_pdf_s* %1, %struct.pdf_image_writer_s* %2) #6
  store i32 %call, i32* %code, align 4, !tbaa !52
  %3 = bitcast %struct.pdf_resource_s** %pres to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %pres1 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %4, i32 0, i32 3
  %5 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres1, align 8, !tbaa !266
  store %struct.pdf_resource_s* %5, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %6 = load i32, i32* %code, align 4, !tbaa !52
  switch i32 %6, label %sw.default [
    i32 1, label %sw.bb
    i32 0, label %sw.bb.2
  ]

sw.default:                                       ; preds = %entry
  %7 = load i32, i32* %code, align 4, !tbaa !52
  store i32 %7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.30

sw.bb:                                            ; preds = %entry
  store i32 0, i32* %code, align 4, !tbaa !52
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %8 = load i32, i32* %do_image.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %8, 1
  br i1 %cmp, label %if.then, label %if.else.16

if.then:                                          ; preds = %sw.bb.2
  %9 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %image_mask_id = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %9, i32 0, i32 220
  %10 = load i64, i64* %image_mask_id, align 8, !tbaa !96
  %cmp3 = icmp ne i64 %10, 0
  br i1 %cmp3, label %if.then.4, label %if.end.11

if.then.4:                                        ; preds = %if.then
  %11 = bitcast [20 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 20, i8* %11) #1
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i32 0, i32 0
  %12 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %image_mask_id5 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %12, i32 0, i32 220
  %13 = load i64, i64* %image_mask_id5, align 8, !tbaa !96
  %call6 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0), i64 %13) #6
  %14 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %object = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %14, i32 0, i32 7
  %15 = load %struct.cos_object_s*, %struct.cos_object_s** %object, align 8, !tbaa !66
  %16 = bitcast %struct.cos_object_s* %15 to %struct.cos_dict_s*
  %17 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %image_mask_is_SMask = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %17, i32 0, i32 221
  %18 = load i32, i32* %image_mask_is_SMask, align 4, !tbaa !103
  %tobool = icmp ne i32 %18, 0
  %cond = select i1 %tobool, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0)
  %arraydecay7 = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i32 0, i32 0
  %call8 = call i32 @cos_dict_put_string_copy(%struct.cos_dict_s* %16, i8* %cond, i8* %arraydecay7) #6
  store i32 %call8, i32* %code, align 4, !tbaa !52
  %19 = load i32, i32* %code, align 4, !tbaa !52
  %cmp9 = icmp slt i32 %19, 0
  br i1 %cmp9, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.then.4
  %20 = load i32, i32* %code, align 4, !tbaa !52
  store i32 %20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then.4
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.10
  %21 = bitcast [20 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 20, i8* %21) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.30 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.11

if.end.11:                                        ; preds = %cleanup.cont, %if.then
  %22 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %image_mask_skip = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %22, i32 0, i32 222
  %23 = load i32, i32* %image_mask_skip, align 4, !tbaa !269
  %tobool12 = icmp ne i32 %23, 0
  br i1 %tobool12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.end.11
  store i32 0, i32* %code, align 4, !tbaa !52
  br label %if.end.15

if.else:                                          ; preds = %if.end.11
  %24 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %25 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %26 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %mat.addr, align 8, !tbaa !1
  %call14 = call i32 @pdf_do_image(%struct.gx_device_pdf_s* %24, %struct.pdf_resource_s* %25, %struct.gs_matrix_s* %26, i32 1) #6
  store i32 %call14, i32* %code, align 4, !tbaa !52
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.then.13
  br label %if.end.29

if.else.16:                                       ; preds = %sw.bb.2
  %27 = load i32, i32* %do_image.addr, align 4, !tbaa !5
  %cmp17 = icmp eq i32 %27, 0
  br i1 %cmp17, label %if.then.18, label %if.else.22

if.then.18:                                       ; preds = %if.else.16
  %28 = bitcast %struct.pdf_x_object_s** %pxo to i8*
  call void @llvm.lifetime.start(i64 8, i8* %28) #1
  %29 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %30 = bitcast %struct.pdf_resource_s* %29 to %struct.pdf_x_object_s*
  store %struct.pdf_x_object_s* %30, %struct.pdf_x_object_s** %pxo, align 8, !tbaa !1
  %31 = load %struct.pdf_x_object_s*, %struct.pdf_x_object_s** %pxo, align 8, !tbaa !1
  %data_height = getelementptr inbounds %struct.pdf_x_object_s, %struct.pdf_x_object_s* %31, i32 0, i32 10
  %32 = load i32, i32* %data_height, align 4, !tbaa !261
  %conv = sitofp i32 %32 to double
  %33 = load %struct.pdf_x_object_s*, %struct.pdf_x_object_s** %pxo, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.pdf_x_object_s, %struct.pdf_x_object_s* %33, i32 0, i32 9
  %34 = load i32, i32* %height, align 4, !tbaa !270
  %conv19 = sitofp i32 %34 to double
  %div = fdiv double %conv, %conv19
  %35 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %image_mask_scale = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %35, i32 0, i32 225
  store double %div, double* %image_mask_scale, align 8, !tbaa !271
  %36 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %call20 = call i64 @pdf_resource_id(%struct.pdf_resource_s* %36) #6
  %37 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %image_mask_id21 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %37, i32 0, i32 220
  store i64 %call20, i64* %image_mask_id21, align 8, !tbaa !96
  %38 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %converting_image_matrix = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %38, i32 0, i32 224
  %39 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %mat.addr, align 8, !tbaa !1
  %40 = bitcast %struct.gs_matrix_s* %converting_image_matrix to i8*
  %41 = bitcast %struct.gs_matrix_s* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* %41, i64 24, i32 4, i1 false), !tbaa.struct !231
  %42 = bitcast %struct.pdf_x_object_s** %pxo to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  br label %if.end.28

if.else.22:                                       ; preds = %if.else.16
  %43 = load i32, i32* %do_image.addr, align 4, !tbaa !5
  %cmp23 = icmp eq i32 %43, 2
  br i1 %cmp23, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %if.else.22
  %44 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %45 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %46 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %mat.addr, align 8, !tbaa !1
  %47 = load i64, i64* %ps_bitmap_id.addr, align 8, !tbaa !53
  %call26 = call i32 @use_image_as_pattern(%struct.gx_device_pdf_s* %44, %struct.pdf_resource_s* %45, %struct.gs_matrix_s* %46, i64 %47) #6
  store i32 %call26, i32* %code, align 4, !tbaa !52
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %if.else.22
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.then.18
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.end.15
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.29, %sw.bb
  %48 = load i32, i32* %code, align 4, !tbaa !52
  store i32 %48, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.30

cleanup.30:                                       ; preds = %sw.epilog, %cleanup, %sw.default
  %49 = bitcast %struct.pdf_resource_s** %pres to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #1
  %50 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #1
  %51 = load i32, i32* %retval
  ret i32 %51
}

declare void @gx_image_free_enum(%struct.gx_image_enum_common_s**) #2

declare i32 @pdf_end_write_image(%struct.gx_device_pdf_s*, %struct.pdf_image_writer_s*) #2

declare i32 @gs_sprintf(i8*, i8*, ...) #2

declare i32 @cos_dict_put_string_copy(%struct.cos_dict_s*, i8*, i8*) #2

declare i32 @pdf_do_image(%struct.gx_device_pdf_s*, %struct.pdf_resource_s*, %struct.gs_matrix_s*, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @use_image_as_pattern(%struct.gx_device_pdf_s* %pdev, %struct.pdf_resource_s* %pres1, %struct.gs_matrix_s* %pmat, i64 %id) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pres1.addr = alloca %struct.pdf_resource_s*, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %id.addr = alloca i64, align 8
  %s = alloca %struct.gs_imager_state_s, align 8
  %inst = alloca %struct.gs_pattern1_instance_s, align 8
  %v = alloca %struct.cos_value_s, align 8
  %pres = alloca %struct.pdf_resource_s*, align 8
  %code = alloca i32, align 4
  %m = alloca %struct.gs_matrix_s, align 4
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.pdf_resource_s* %pres1, %struct.pdf_resource_s** %pres1.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  store i64 %id, i64* %id.addr, align 8, !tbaa !53
  %0 = bitcast %struct.gs_imager_state_s* %s to i8*
  call void @llvm.lifetime.start(i64 1616, i8* %0) #1
  %1 = bitcast %struct.gs_pattern1_instance_s* %inst to i8*
  call void @llvm.lifetime.start(i64 248, i8* %1) #1
  %2 = bitcast %struct.cos_value_s* %v to i8*
  call void @llvm.lifetime.start(i64 24, i8* %2) #1
  %3 = bitcast %struct.pdf_resource_s** %pres to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast %struct.gs_imager_state_s* %s to i8*
  %call = call i8* @memset(i8* %5, i32 0, i64 1616) #7
  %6 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %6, i32 0, i32 0
  %7 = load float, float* %xx, align 4, !tbaa !272
  %ctm = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %s, i32 0, i32 5
  %xx1 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm, i32 0, i32 0
  store float %7, float* %xx1, align 4, !tbaa !273
  %8 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %8, i32 0, i32 1
  %9 = load float, float* %xy, align 4, !tbaa !274
  %ctm2 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %s, i32 0, i32 5
  %xy3 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm2, i32 0, i32 1
  store float %9, float* %xy3, align 4, !tbaa !275
  %10 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %10, i32 0, i32 2
  %11 = load float, float* %yx, align 4, !tbaa !276
  %ctm4 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %s, i32 0, i32 5
  %yx5 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm4, i32 0, i32 2
  store float %11, float* %yx5, align 4, !tbaa !277
  %12 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %12, i32 0, i32 3
  %13 = load float, float* %yy, align 4, !tbaa !278
  %ctm6 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %s, i32 0, i32 5
  %yy7 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm6, i32 0, i32 3
  store float %13, float* %yy7, align 4, !tbaa !279
  %14 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %14, i32 0, i32 4
  %15 = load float, float* %tx, align 4, !tbaa !186
  %ctm8 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %s, i32 0, i32 5
  %tx9 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm8, i32 0, i32 4
  store float %15, float* %tx9, align 4, !tbaa !185
  %16 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %16, i32 0, i32 5
  %17 = load float, float* %ty, align 4, !tbaa !188
  %ctm10 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %s, i32 0, i32 5
  %ty11 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm10, i32 0, i32 5
  store float %17, float* %ty11, align 4, !tbaa !187
  %18 = bitcast %struct.gs_pattern1_instance_s* %inst to i8*
  %call12 = call i8* @memset(i8* %18, i32 0, i64 248) #7
  %19 = bitcast %struct.gs_imager_state_s* %s to %struct.gs_state_s*
  %saved = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 2
  store %struct.gs_state_s* %19, %struct.gs_state_s** %saved, align 8, !tbaa !280
  %templat = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 4
  %PaintType = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %templat, i32 0, i32 4
  store i32 1, i32* %PaintType, align 4, !tbaa !284
  %templat13 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 4
  %TilingType = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %templat13, i32 0, i32 5
  store i32 1, i32* %TilingType, align 4, !tbaa !285
  %templat14 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 4
  %BBox = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %templat14, i32 0, i32 7
  %p = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %BBox, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p, i32 0, i32 1
  store double 0.000000e+00, double* %y, align 8, !tbaa !286
  %templat15 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 4
  %BBox16 = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %templat15, i32 0, i32 7
  %p17 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %BBox16, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p17, i32 0, i32 0
  store double 0.000000e+00, double* %x, align 8, !tbaa !287
  %templat18 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 4
  %BBox19 = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %templat18, i32 0, i32 7
  %q = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %BBox19, i32 0, i32 1
  %x20 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q, i32 0, i32 0
  store double 1.000000e+00, double* %x20, align 8, !tbaa !288
  %templat21 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 4
  %BBox22 = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %templat21, i32 0, i32 7
  %q23 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %BBox22, i32 0, i32 1
  %y24 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q23, i32 0, i32 1
  store double 1.000000e+00, double* %y24, align 8, !tbaa !289
  %templat25 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 4
  %XStep = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %templat25, i32 0, i32 8
  store float 2.000000e+00, float* %XStep, align 4, !tbaa !290
  %templat26 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %inst, i32 0, i32 4
  %YStep = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %templat26, i32 0, i32 9
  store float 2.000000e+00, float* %YStep, align 4, !tbaa !291
  %20 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %20, i32 0, i32 42
  %dev_spec_op = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 65
  %21 = load i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)** %dev_spec_op, align 8, !tbaa !292
  %22 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %23 = bitcast %struct.gx_device_pdf_s* %22 to %struct.gx_device_s*
  %24 = bitcast %struct.gs_pattern1_instance_s* %inst to i8*
  %25 = load i64, i64* %id.addr, align 8, !tbaa !53
  %conv = trunc i64 %25 to i32
  %call27 = call i32 %21(%struct.gx_device_s* %23, i32 1, i8* %24, i32 %conv) #6
  store i32 %call27, i32* %code, align 4, !tbaa !52
  %26 = load i32, i32* %code, align 4, !tbaa !52
  %cmp = icmp sge i32 %26, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %27 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %27, i32 0, i32 47
  %28 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !58
  %29 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres1.addr, align 8, !tbaa !1
  %call29 = call i64 @pdf_resource_id(%struct.pdf_resource_s* %29) #6
  %call30 = call i8* @pprintld1(%struct.stream_s* %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0), i64 %call29) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %30 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %accumulating_substream_resource = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %30, i32 0, i32 210
  %31 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %accumulating_substream_resource, align 8, !tbaa !82
  store %struct.pdf_resource_s* %31, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %32 = load i32, i32* %code, align 4, !tbaa !52
  %cmp31 = icmp sge i32 %32, 0
  br i1 %cmp31, label %if.then.33, label %if.end.35

if.then.33:                                       ; preds = %if.end
  %33 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %34 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %substream_Resources = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %34, i32 0, i32 205
  %35 = load %struct.cos_dict_s*, %struct.cos_dict_s** %substream_Resources, align 8, !tbaa !79
  %36 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres1.addr, align 8, !tbaa !1
  %call34 = call i32 @pdf_add_resource(%struct.gx_device_pdf_s* %33, %struct.cos_dict_s* %35, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), %struct.pdf_resource_s* %36) #6
  store i32 %call34, i32* %code, align 4, !tbaa !52
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.33, %if.end
  %37 = load i32, i32* %code, align 4, !tbaa !52
  %cmp36 = icmp sge i32 %37, 0
  br i1 %cmp36, label %if.then.38, label %if.end.43

if.then.38:                                       ; preds = %if.end.35
  %38 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %procs39 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %38, i32 0, i32 42
  %dev_spec_op40 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs39, i32 0, i32 65
  %39 = load i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)** %dev_spec_op40, align 8, !tbaa !292
  %40 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %41 = bitcast %struct.gx_device_pdf_s* %40 to %struct.gx_device_s*
  %42 = bitcast %struct.gs_pattern1_instance_s* %inst to i8*
  %43 = load i64, i64* %id.addr, align 8, !tbaa !53
  %conv41 = trunc i64 %43 to i32
  %call42 = call i32 %39(%struct.gx_device_s* %41, i32 2, i8* %42, i32 %conv41) #6
  store i32 %call42, i32* %code, align 4, !tbaa !52
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.38, %if.end.35
  %44 = load i32, i32* %code, align 4, !tbaa !52
  %cmp44 = icmp sge i32 %44, 0
  br i1 %cmp44, label %if.then.46, label %if.end.51

if.then.46:                                       ; preds = %if.end.43
  %45 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %procs47 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %45, i32 0, i32 42
  %dev_spec_op48 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs47, i32 0, i32 65
  %46 = load i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)** %dev_spec_op48, align 8, !tbaa !292
  %47 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %48 = bitcast %struct.gx_device_pdf_s* %47 to %struct.gx_device_s*
  %49 = bitcast %struct.gs_pattern1_instance_s* %inst to i8*
  %50 = load i64, i64* %id.addr, align 8, !tbaa !53
  %conv49 = trunc i64 %50 to i32
  %call50 = call i32 %46(%struct.gx_device_s* %48, i32 3, i8* %49, i32 %conv49) #6
  store i32 %call50, i32* %code, align 4, !tbaa !52
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.46, %if.end.43
  %51 = load i32, i32* %code, align 4, !tbaa !52
  %cmp52 = icmp sge i32 %51, 0
  br i1 %cmp52, label %if.then.54, label %if.end.58

if.then.54:                                       ; preds = %if.end.51
  %52 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm55 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %52, i32 0, i32 47
  %53 = load %struct.stream_s*, %struct.stream_s** %strm55, align 8, !tbaa !58
  %call56 = call i32 @stream_puts(%struct.stream_s* %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i32 0, i32 0)) #6
  %54 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call57 = call i32 @pdf_cs_Pattern_colored(%struct.gx_device_pdf_s* %54, %struct.cos_value_s* %v) #6
  store i32 %call57, i32* %code, align 4, !tbaa !52
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.54, %if.end.51
  %55 = load i32, i32* %code, align 4, !tbaa !52
  %cmp59 = icmp sge i32 %55, 0
  br i1 %cmp59, label %if.then.61, label %if.end.66

if.then.61:                                       ; preds = %if.end.58
  %56 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call62 = call i32 @cos_value_write(%struct.cos_value_s* %v, %struct.gx_device_pdf_s* %56) #6
  %57 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm63 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %57, i32 0, i32 47
  %58 = load %struct.stream_s*, %struct.stream_s** %strm63, align 8, !tbaa !58
  %59 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %call64 = call i64 @pdf_resource_id(%struct.pdf_resource_s* %59) #6
  %call65 = call i8* @pprintld1(%struct.stream_s* %58, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i32 0, i32 0), i64 %call64) #6
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.61, %if.end.58
  %60 = load i32, i32* %code, align 4, !tbaa !52
  %cmp67 = icmp sge i32 %60, 0
  br i1 %cmp67, label %if.then.69, label %if.end.77

if.then.69:                                       ; preds = %if.end.66
  %61 = bitcast %struct.gs_matrix_s* %m to i8*
  call void @llvm.lifetime.start(i64 24, i8* %61) #1
  %62 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %converting_image_matrix = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %62, i32 0, i32 224
  %63 = bitcast %struct.gs_matrix_s* %m to i8*
  %64 = bitcast %struct.gs_matrix_s* %converting_image_matrix to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %63, i8* %64, i64 24, i32 4, i1 false), !tbaa.struct !231
  %65 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %tx70 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %65, i32 0, i32 4
  %66 = load float, float* %tx70, align 4, !tbaa !186
  %tx71 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %m, i32 0, i32 4
  store float %66, float* %tx71, align 4, !tbaa !186
  %67 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %ty72 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %67, i32 0, i32 5
  %68 = load float, float* %ty72, align 4, !tbaa !188
  %ty73 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %m, i32 0, i32 5
  store float %68, float* %ty73, align 4, !tbaa !188
  %69 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %70 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %image_mask_scale = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %70, i32 0, i32 225
  %71 = load double, double* %image_mask_scale, align 8, !tbaa !271
  %72 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %image_mask_id = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %72, i32 0, i32 220
  %73 = load i64, i64* %image_mask_id, align 8, !tbaa !96
  %call74 = call i32 @pdf_do_image_by_id(%struct.gx_device_pdf_s* %69, double %71, %struct.gs_matrix_s* %m, i32 1, i64 %73) #6
  store i32 %call74, i32* %code, align 4, !tbaa !52
  %74 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm75 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %74, i32 0, i32 47
  %75 = load %struct.stream_s*, %struct.stream_s** %strm75, align 8, !tbaa !58
  %call76 = call i32 @stream_puts(%struct.stream_s* %75, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i32 0, i32 0)) #6
  %76 = bitcast %struct.gs_matrix_s* %m to i8*
  call void @llvm.lifetime.end(i64 24, i8* %76) #1
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.69, %if.end.66
  %77 = load i32, i32* %code, align 4, !tbaa !52
  %78 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #1
  %79 = bitcast %struct.pdf_resource_s** %pres to i8*
  call void @llvm.lifetime.end(i64 8, i8* %79) #1
  %80 = bitcast %struct.cos_value_s* %v to i8*
  call void @llvm.lifetime.end(i64 24, i8* %80) #1
  %81 = bitcast %struct.gs_pattern1_instance_s* %inst to i8*
  call void @llvm.lifetime.end(i64 248, i8* %81) #1
  %82 = bitcast %struct.gs_imager_state_s* %s to i8*
  call void @llvm.lifetime.end(i64 1616, i8* %82) #1
  ret i32 %77
}

declare i32 @stream_puts(%struct.stream_s*, i8*) #2

declare i32 @pdf_cs_Pattern_colored(%struct.gx_device_pdf_s*, %struct.cos_value_s*) #2

declare i32 @cos_value_write(%struct.cos_value_s*, %struct.gx_device_pdf_s*) #2

declare i32 @pdf_do_image_by_id(%struct.gx_device_pdf_s*, double, %struct.gs_matrix_s*, i32, i64) #2

; Function Attrs: nounwind uwtable
define internal i32 @pdf_image_end_image(%struct.gx_image_enum_common_s* %info, i32 %draw_last) #0 {
entry:
  %info.addr = alloca %struct.gx_image_enum_common_s*, align 8
  %draw_last.addr = alloca i32, align 4
  store %struct.gx_image_enum_common_s* %info, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  store i32 %draw_last, i32* %draw_last.addr, align 4, !tbaa !52
  %0 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  %1 = load i32, i32* %draw_last.addr, align 4, !tbaa !52
  %call = call i32 @pdf_image_end_image_data(%struct.gx_image_enum_common_s* %0, i32 %1, i32 1) #6
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @pdf_image_end_image_object2(%struct.gx_image_enum_common_s* %info, i32 %draw_last) #0 {
entry:
  %info.addr = alloca %struct.gx_image_enum_common_s*, align 8
  %draw_last.addr = alloca i32, align 4
  store %struct.gx_image_enum_common_s* %info, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  store i32 %draw_last, i32* %draw_last.addr, align 4, !tbaa !52
  %0 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  %1 = load i32, i32* %draw_last.addr, align 4, !tbaa !52
  %call = call i32 @pdf_image_end_image_data(%struct.gx_image_enum_common_s* %0, i32 %1, i32 2) #6
  ret i32 %call
}

declare i32 @gs_color_space_get_index(%struct.gs_color_space_s*) #2

declare i32 @gsicc_get_default_type(%struct.cmm_profile_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @setup_image_process_colorspace(%struct.gx_device_pdf_s* %pdev, %union.image_union_s* %image, %struct.gs_color_space_s** %pcs_orig, i8* %sname, %struct.cos_value_s* %cs_value) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %image.addr = alloca %union.image_union_s*, align 8
  %pcs_orig.addr = alloca %struct.gs_color_space_s**, align 8
  %sname.addr = alloca i8*, align 8
  %cs_value.addr = alloca %struct.cos_value_s*, align 8
  %code = alloca i32, align 4
  %pcs_device = alloca %struct.gs_color_space_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %union.image_union_s* %image, %union.image_union_s** %image.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s** %pcs_orig, %struct.gs_color_space_s*** %pcs_orig.addr, align 8, !tbaa !1
  store i8* %sname, i8** %sname.addr, align 8, !tbaa !1
  store %struct.cos_value_s* %cs_value, %struct.cos_value_s** %cs_value.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.gs_color_space_s** %pcs_device to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store %struct.gs_color_space_s* null, %struct.gs_color_space_s** %pcs_device, align 8, !tbaa !1
  %2 = load %struct.cos_value_s*, %struct.cos_value_s** %cs_value.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %sname.addr, align 8, !tbaa !1
  %call = call %struct.cos_value_s* @cos_c_string_value(%struct.cos_value_s* %2, i8* %3) #6
  %4 = load %union.image_union_s*, %union.image_union_s** %image.addr, align 8, !tbaa !1
  %pixel = bitcast %union.image_union_s* %4 to %struct.gs_pixel_image_s*
  %ColorSpace = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %pixel, i32 0, i32 9
  %5 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace, align 8, !tbaa !147
  %6 = load %struct.gs_color_space_s**, %struct.gs_color_space_s*** %pcs_orig.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %5, %struct.gs_color_space_s** %6, align 8, !tbaa !1
  %7 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %8 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %pcm_color_info_index = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %8, i32 0, i32 206
  %9 = load i32, i32* %pcm_color_info_index, align 4, !tbaa !170
  %call1 = call i32 @make_device_color_space(%struct.gx_device_pdf_s* %7, i32 %9, %struct.gs_color_space_s** %pcs_device) #6
  store i32 %call1, i32* %code, align 4, !tbaa !52
  %10 = load i32, i32* %code, align 4, !tbaa !52
  %cmp = icmp slt i32 %10, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load i32, i32* %code, align 4, !tbaa !52
  store i32 %11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_device, align 8, !tbaa !1
  %13 = load %union.image_union_s*, %union.image_union_s** %image.addr, align 8, !tbaa !1
  %pixel2 = bitcast %union.image_union_s* %13 to %struct.gs_pixel_image_s*
  %ColorSpace3 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %pixel2, i32 0, i32 9
  store %struct.gs_color_space_s* %12, %struct.gs_color_space_s** %ColorSpace3, align 8, !tbaa !147
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %14 = bitcast %struct.gs_color_space_s** %pcs_device to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  %15 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #1
  %16 = load i32, i32* %retval
  ret i32 %16
}

declare void @emprintf_program_ident(%struct.gs_memory_s*, i8*, i64) #2

declare i8* @gs_program_name() #2

declare i64 @gs_revision_number() #2

declare i32 @errprintf(%struct.gs_memory_s*, i8*, ...) #2

declare %struct.cos_value_s* @cos_c_string_value(%struct.cos_value_s*, i8*) #2

declare %struct.gs_color_space_s* @gs_cspace_new_DeviceRGB(%struct.gs_memory_s*) #2

declare %struct.gs_color_space_s* @gs_cspace_new_DeviceCMYK(%struct.gs_memory_s*) #2

declare i32 @pdf_begin_image_data(%struct.gx_device_pdf_s*, %struct.pdf_image_writer_s*, %struct.gs_pixel_image_s*, %struct.cos_value_s*, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @pdf_begin_typed_image_impl(%struct.gx_device_pdf_s* %pdev, %struct.gs_imager_state_s* %pis, %struct.gs_matrix_s* %pmat, %struct.gs_image_common_s* %pic, %struct.gs_int_rect_s* %prect, %struct.gx_device_color_s* %pdcolor, %struct.gx_clip_path_s* %pcpath, %struct.gs_memory_s* %mem, %struct.gx_image_enum_common_s** %pinfo, i32 %context, %union.image_union_s* %image) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %pic.addr = alloca %struct.gs_image_common_s*, align 8
  %prect.addr = alloca %struct.gs_int_rect_s*, align 8
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pinfo.addr = alloca %struct.gx_image_enum_common_s**, align 8
  %context.addr = alloca i32, align 4
  %image.addr = alloca %union.image_union_s*, align 8
  %pnamed = alloca %struct.cos_dict_s*, align 8
  %pim = alloca %struct.gs_pixel_image_s*, align 8
  %code = alloca i32, align 4
  %i = alloca i32, align 4
  %pie = alloca %struct.pdf_image_enum_s*, align 8
  %format = alloca i32, align 4
  %pcs = alloca %struct.gs_color_space_s*, align 8
  %cs_value = alloca %struct.cos_value_s, align 8
  %num_components = alloca i32, align 4
  %is_mask = alloca i32, align 4
  %in_line = alloca i32, align 4
  %rect = alloca %struct.gs_int_rect_s, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %pranges = alloca %struct.gs_range_s*, align 8
  %names = alloca %struct.pdf_color_space_names_s*, align 8
  %convert_to_process_colors = alloca i32, align 4
  %pcs_device = alloca %struct.gs_color_space_s*, align 8
  %pcs_orig = alloca %struct.gs_color_space_s*, align 8
  %BPC_orig = alloca i32, align 4
  %BPC_device = alloca i32, align 4
  %cvd = alloca %struct.pdf_lcvd_s*, align 8
  %force_lossless = alloca i32, align 4
  %ni_value = alloca %struct.cos_value_s, align 8
  %pim1 = alloca %struct.gs_image1_s*, align 8
  %cleanup.dest.slot = alloca i32
  %pim3 = alloca %struct.gs_image3_s*, align 8
  %pim3a = alloca %struct.gs_image3_s, align 8
  %pic1 = alloca %struct.gs_image_common_s*, align 8
  %m = alloca %struct.gs_matrix_s, align 4
  %mi = alloca %struct.gs_matrix_s, align 4
  %pmat1 = alloca %struct.gs_matrix_s*, align 8
  %sx = alloca i32, align 4
  %sy = alloca i32, align 4
  %pim3x = alloca %struct.gs_image3x_s*, align 8
  %icolor = alloca %struct.gx_device_color_s, align 8
  %pgs = alloca %struct.gs_state_s*, align 8
  %m245 = alloca %struct.gs_matrix_s, align 4
  %m1 = alloca %struct.gs_matrix_s, align 4
  %mi246 = alloca %struct.gs_matrix_s, align 4
  %pi4 = alloca %struct.gs_image4_s, align 8
  %nbytes = alloca double, align 8
  %mat = alloca %struct.gs_matrix_s, align 4
  %bmat = alloca %struct.gs_matrix_s, align 4
  %code459 = alloca i32, align 4
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__s1 = alloca i8*, align 8
  %__result = alloca i32, align 4
  %tmp682 = alloca i32, align 4
  %__s1_len697 = alloca i64, align 8
  %__s2_len699 = alloca i64, align 8
  %tmp700 = alloca i32, align 4
  %__s1707 = alloca i8*, align 8
  %__result711 = alloca i32, align 4
  %tmp749 = alloca i32, align 4
  %__s1_len764 = alloca i64, align 8
  %__s2_len766 = alloca i64, align 8
  %tmp767 = alloca i32, align 4
  %__s1774 = alloca i8*, align 8
  %__result778 = alloca i32, align 4
  %tmp816 = alloca i32, align 4
  %sname = alloca i8*, align 8
  %saved_downsample = alloca i32, align 4
  %s = alloca %struct.stream_s*, align 8
  %pcos = alloca %struct.cos_stream_s*, align 8
  %Width1042 = alloca i32, align 4
  %Height1047 = alloca i32, align 4
  %i1159 = alloca i32, align 4
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  store %struct.gs_image_common_s* %pic, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  store %struct.gs_int_rect_s* %prect, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gx_image_enum_common_s** %pinfo, %struct.gx_image_enum_common_s*** %pinfo.addr, align 8, !tbaa !1
  store i32 %context, i32* %context.addr, align 4, !tbaa !5
  store %union.image_union_s* %image, %union.image_union_s** %image.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cos_dict_s** %pnamed to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store %struct.cos_dict_s* null, %struct.cos_dict_s** %pnamed, align 8, !tbaa !1
  %1 = bitcast %struct.gs_pixel_image_s** %pim to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast %struct.pdf_image_enum_s** %pie to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i32* %format to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast %struct.cos_value_s* %cs_value to i8*
  call void @llvm.lifetime.start(i64 24, i8* %7) #1
  %8 = bitcast i32* %num_components to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %is_mask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  store i32 0, i32* %is_mask, align 4, !tbaa !52
  %10 = bitcast i32* %in_line to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  store i32 0, i32* %in_line, align 4, !tbaa !52
  %11 = bitcast %struct.gs_int_rect_s* %rect to i8*
  call void @llvm.lifetime.start(i64 16, i8* %11) #1
  %12 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast i32* %height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast %struct.gs_range_s** %pranges to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  store %struct.gs_range_s* null, %struct.gs_range_s** %pranges, align 8, !tbaa !1
  %15 = bitcast %struct.pdf_color_space_names_s** %names to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = bitcast i32* %convert_to_process_colors to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  store i32 0, i32* %convert_to_process_colors, align 4, !tbaa !52
  %17 = bitcast %struct.gs_color_space_s** %pcs_device to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  store %struct.gs_color_space_s* null, %struct.gs_color_space_s** %pcs_device, align 8, !tbaa !1
  %18 = bitcast %struct.gs_color_space_s** %pcs_orig to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  store %struct.gs_color_space_s* null, %struct.gs_color_space_s** %pcs_orig, align 8, !tbaa !1
  %19 = bitcast i32* %BPC_orig to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  store i32 1, i32* %BPC_orig, align 4, !tbaa !52
  %20 = bitcast i32* %BPC_device to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  store i32 8, i32* %BPC_device, align 4, !tbaa !52
  %21 = bitcast %struct.pdf_lcvd_s** %cvd to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  store %struct.pdf_lcvd_s* null, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %22 = bitcast i32* %force_lossless to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  store i32 0, i32* %force_lossless, align 4, !tbaa !52
  %23 = bitcast %struct.cos_value_s* %ni_value to i8*
  call void @llvm.lifetime.start(i64 24, i8* %23) #1
  %24 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %NI_stack = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %24, i32 0, i32 183
  %25 = load %struct.cos_array_s*, %struct.cos_array_s** %NI_stack, align 8, !tbaa !95
  %call = call i32 @cos_array_unadd(%struct.cos_array_s* %25, %struct.cos_value_s* %ni_value) #6
  %cmp = icmp sge i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %contents = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %ni_value, i32 0, i32 1
  %object = bitcast %union.vc_* %contents to %struct.cos_object_s**
  %26 = load %struct.cos_object_s*, %struct.cos_object_s** %object, align 8, !tbaa !1
  %27 = bitcast %struct.cos_object_s* %26 to %struct.cos_dict_s*
  store %struct.cos_dict_s* %27, %struct.cos_dict_s** %pnamed, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %28 = bitcast %struct.cos_value_s* %ni_value to i8*
  call void @llvm.lifetime.end(i64 24, i8* %28) #1
  %29 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %image_mask_id = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %29, i32 0, i32 220
  store i64 0, i64* %image_mask_id, align 8, !tbaa !96
  %30 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_image_common_s, %struct.gs_image_common_s* %30, i32 0, i32 0
  %31 = load %struct.gx_image_type_s*, %struct.gx_image_type_s** %type, align 8, !tbaa !97
  %index = getelementptr inbounds %struct.gx_image_type_s, %struct.gx_image_type_s* %31, i32 0, i32 6
  %32 = load i32, i32* %index, align 4, !tbaa !99
  switch i32 %32, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb.37
    i32 103, label %sw.bb.158
    i32 4, label %sw.bb.192
  ]

sw.bb:                                            ; preds = %if.end
  %33 = bitcast %struct.gs_image1_s** %pim1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %33) #1
  %34 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %35 = bitcast %struct.gs_image_common_s* %34 to %struct.gs_image1_s*
  store %struct.gs_image1_s* %35, %struct.gs_image1_s** %pim1, align 8, !tbaa !1
  %36 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim1, align 8, !tbaa !1
  %Alpha = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %36, i32 0, i32 12
  %37 = load i32, i32* %Alpha, align 4, !tbaa !182
  %cmp1 = icmp ne i32 %37, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %sw.bb
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %sw.bb
  %38 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim1, align 8, !tbaa !1
  %ImageMask = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %38, i32 0, i32 10
  %39 = load i32, i32* %ImageMask, align 4, !tbaa !101
  store i32 %39, i32* %is_mask, align 4, !tbaa !52
  %40 = load i32, i32* %is_mask, align 4, !tbaa !52
  %tobool = icmp ne i32 %40, 0
  br i1 %tobool, label %if.then.4, label %if.end.31

if.then.4:                                        ; preds = %if.end.3
  %41 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %call5 = call i32 @gx_dc_is_pattern1_color(%struct.gx_device_color_s* %41) #6
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.end.30, label %if.then.7

if.then.7:                                        ; preds = %if.then.4
  %42 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim1, align 8, !tbaa !1
  %BitsPerComponent = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %42, i32 0, i32 4
  %43 = load i32, i32* %BitsPerComponent, align 4, !tbaa !183
  %cmp8 = icmp ne i32 %43, 1
  br i1 %cmp8, label %if.then.28, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.7
  %44 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim1, align 8, !tbaa !1
  %Decode = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %44, i32 0, i32 5
  %arrayidx = getelementptr inbounds [130 x float], [130 x float]* %Decode, i32 0, i64 0
  %45 = load float, float* %arrayidx, align 4, !tbaa !69
  %conv = fpext float %45 to double
  %cmp9 = fcmp oeq double %conv, 0.000000e+00
  br i1 %cmp9, label %land.lhs.true, label %lor.lhs.false.16

land.lhs.true:                                    ; preds = %lor.lhs.false
  %46 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim1, align 8, !tbaa !1
  %Decode11 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %46, i32 0, i32 5
  %arrayidx12 = getelementptr inbounds [130 x float], [130 x float]* %Decode11, i32 0, i64 1
  %47 = load float, float* %arrayidx12, align 4, !tbaa !69
  %conv13 = fpext float %47 to double
  %cmp14 = fcmp oeq double %conv13, 1.000000e+00
  br i1 %cmp14, label %if.end.29, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %land.lhs.true, %lor.lhs.false
  %48 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim1, align 8, !tbaa !1
  %Decode17 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %48, i32 0, i32 5
  %arrayidx18 = getelementptr inbounds [130 x float], [130 x float]* %Decode17, i32 0, i64 0
  %49 = load float, float* %arrayidx18, align 4, !tbaa !69
  %conv19 = fpext float %49 to double
  %cmp20 = fcmp oeq double %conv19, 1.000000e+00
  br i1 %cmp20, label %land.lhs.true.22, label %if.then.28

land.lhs.true.22:                                 ; preds = %lor.lhs.false.16
  %50 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim1, align 8, !tbaa !1
  %Decode23 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %50, i32 0, i32 5
  %arrayidx24 = getelementptr inbounds [130 x float], [130 x float]* %Decode23, i32 0, i64 1
  %51 = load float, float* %arrayidx24, align 4, !tbaa !69
  %conv25 = fpext float %51 to double
  %cmp26 = fcmp oeq double %conv25, 0.000000e+00
  br i1 %cmp26, label %if.end.29, label %if.then.28

if.then.28:                                       ; preds = %land.lhs.true.22, %lor.lhs.false.16, %if.then.7
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

if.end.29:                                        ; preds = %land.lhs.true.22, %land.lhs.true
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.then.4
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.end.3
  %52 = load i32, i32* %context.addr, align 4, !tbaa !5
  %cmp32 = icmp eq i32 %52, 0
  br i1 %cmp32, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end.31
  %53 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %54 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim1, align 8, !tbaa !1
  %call34 = call i32 @can_write_image_in_line(%struct.gx_device_pdf_s* %53, %struct.gs_image1_s* %54) #6
  %tobool35 = icmp ne i32 %call34, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.31
  %55 = phi i1 [ false, %if.end.31 ], [ %tobool35, %land.rhs ]
  %land.ext = zext i1 %55 to i32
  store i32 %land.ext, i32* %in_line, align 4, !tbaa !52
  %56 = load %union.image_union_s*, %union.image_union_s** %image.addr, align 8, !tbaa !1
  %arrayidx36 = getelementptr inbounds %union.image_union_s, %union.image_union_s* %56, i64 0
  %type1 = bitcast %union.image_union_s* %arrayidx36 to %struct.gs_image1_s*
  %57 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim1, align 8, !tbaa !1
  %58 = bitcast %struct.gs_image1_s* %type1 to i8*
  %59 = bitcast %struct.gs_image1_s* %57 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %58, i8* %59, i64 600, i32 8, i1 false), !tbaa.struct !184
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.28, %if.then.2, %land.end
  %60 = bitcast %struct.gs_image1_s** %pim1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %60) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.1226 [
    i32 2, label %sw.epilog
    i32 3, label %nyi
  ]

sw.bb.37:                                         ; preds = %if.end
  %61 = bitcast %struct.gs_image3_s** %pim3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %61) #1
  %62 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %63 = bitcast %struct.gs_image_common_s* %62 to %struct.gs_image3_s*
  store %struct.gs_image3_s* %63, %struct.gs_image3_s** %pim3, align 8, !tbaa !1
  %64 = bitcast %struct.gs_image3_s* %pim3a to i8*
  call void @llvm.lifetime.start(i64 1160, i8* %64) #1
  %65 = bitcast %struct.gs_image_common_s** %pic1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %65) #1
  %66 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  store %struct.gs_image_common_s* %66, %struct.gs_image_common_s** %pic1, align 8, !tbaa !1
  %67 = bitcast %struct.gs_matrix_s* %m to i8*
  call void @llvm.lifetime.start(i64 24, i8* %67) #1
  %68 = bitcast %struct.gs_matrix_s* %mi to i8*
  call void @llvm.lifetime.start(i64 24, i8* %68) #1
  %69 = bitcast %struct.gs_matrix_s** %pmat1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %69) #1
  %70 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %70, %struct.gs_matrix_s** %pmat1, align 8, !tbaa !1
  %71 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %image_mask_is_SMask = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %71, i32 0, i32 221
  store i32 0, i32* %image_mask_is_SMask, align 4, !tbaa !103
  %72 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %CompatibilityLevel = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %72, i32 0, i32 75
  %73 = load double, double* %CompatibilityLevel, align 8, !tbaa !104
  %cmp38 = fcmp olt double %73, 1.200000e+00
  br i1 %cmp38, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %sw.bb.37
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup.152

if.end.41:                                        ; preds = %sw.bb.37
  %74 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %tobool42 = icmp ne %struct.gs_int_rect_s* %74, null
  br i1 %tobool42, label %land.lhs.true.43, label %if.end.60

land.lhs.true.43:                                 ; preds = %if.end.41
  %75 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %75, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p, i32 0, i32 0
  %76 = load i32, i32* %x, align 4, !tbaa !105
  %cmp44 = icmp eq i32 %76, 0
  br i1 %cmp44, label %land.lhs.true.46, label %if.then.59

land.lhs.true.46:                                 ; preds = %land.lhs.true.43
  %77 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %p47 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %77, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p47, i32 0, i32 1
  %78 = load i32, i32* %y, align 4, !tbaa !107
  %cmp48 = icmp eq i32 %78, 0
  br i1 %cmp48, label %land.lhs.true.50, label %if.then.59

land.lhs.true.50:                                 ; preds = %land.lhs.true.46
  %79 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %q = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %79, i32 0, i32 1
  %x51 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q, i32 0, i32 0
  %80 = load i32, i32* %x51, align 4, !tbaa !108
  %81 = load %struct.gs_image3_s*, %struct.gs_image3_s** %pim3, align 8, !tbaa !1
  %Width = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %81, i32 0, i32 2
  %82 = load i32, i32* %Width, align 4, !tbaa !109
  %cmp52 = icmp eq i32 %80, %82
  br i1 %cmp52, label %land.lhs.true.54, label %if.then.59

land.lhs.true.54:                                 ; preds = %land.lhs.true.50
  %83 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %q55 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %83, i32 0, i32 1
  %y56 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q55, i32 0, i32 1
  %84 = load i32, i32* %y56, align 4, !tbaa !112
  %85 = load %struct.gs_image3_s*, %struct.gs_image3_s** %pim3, align 8, !tbaa !1
  %Height = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %85, i32 0, i32 3
  %86 = load i32, i32* %Height, align 4, !tbaa !113
  %cmp57 = icmp eq i32 %84, %86
  br i1 %cmp57, label %if.end.60, label %if.then.59

if.then.59:                                       ; preds = %land.lhs.true.54, %land.lhs.true.50, %land.lhs.true.46, %land.lhs.true.43
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup.152

if.end.60:                                        ; preds = %land.lhs.true.54, %if.end.41
  %87 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %CompatibilityLevel61 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %87, i32 0, i32 75
  %88 = load double, double* %CompatibilityLevel61, align 8, !tbaa !104
  %cmp62 = fcmp olt double %88, 1.300000e+00
  br i1 %cmp62, label %land.lhs.true.64, label %if.end.150

land.lhs.true.64:                                 ; preds = %if.end.60
  %89 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PatternImagemask = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %89, i32 0, i32 107
  %90 = load i32, i32* %PatternImagemask, align 4, !tbaa !119
  %tobool65 = icmp ne i32 %90, 0
  br i1 %tobool65, label %if.end.150, label %if.then.66

if.then.66:                                       ; preds = %land.lhs.true.64
  %91 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %92 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call67 = call i32 @pdf_must_put_clip_path(%struct.gx_device_pdf_s* %91, %struct.gx_clip_path_s* %92) #6
  %tobool68 = icmp ne i32 %call67, 0
  br i1 %tobool68, label %if.then.69, label %if.else

if.then.69:                                       ; preds = %if.then.66
  %93 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call70 = call i32 @pdf_unclip(%struct.gx_device_pdf_s* %93) #6
  store i32 %call70, i32* %code, align 4, !tbaa !52
  br label %if.end.72

if.else:                                          ; preds = %if.then.66
  %94 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call71 = call i32 @pdf_open_page(%struct.gx_device_pdf_s* %94, i32 1) #6
  store i32 %call71, i32* %code, align 4, !tbaa !52
  br label %if.end.72

if.end.72:                                        ; preds = %if.else, %if.then.69
  %95 = load i32, i32* %code, align 4, !tbaa !52
  %cmp73 = icmp slt i32 %95, 0
  br i1 %cmp73, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %if.end.72
  %96 = load i32, i32* %code, align 4, !tbaa !52
  store i32 %96, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.152

if.end.76:                                        ; preds = %if.end.72
  %97 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %98 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call77 = call i32 @pdf_put_clip_path(%struct.gx_device_pdf_s* %97, %struct.gx_clip_path_s* %98) #6
  store i32 %call77, i32* %code, align 4, !tbaa !52
  %99 = load i32, i32* %code, align 4, !tbaa !52
  %cmp78 = icmp slt i32 %99, 0
  br i1 %cmp78, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %if.end.76
  %100 = load i32, i32* %code, align 4, !tbaa !52
  store i32 %100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.152

if.end.81:                                        ; preds = %if.end.76
  call void @gs_make_identity(%struct.gs_matrix_s* %m) #6
  store %struct.gs_matrix_s* %m, %struct.gs_matrix_s** %pmat1, align 8, !tbaa !1
  %101 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %101, i32 0, i32 5
  %tx = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm, i32 0, i32 4
  %102 = load float, float* %tx, align 4, !tbaa !185
  %conv82 = fpext float %102 to double
  %add = fadd double %conv82, 5.000000e-01
  %call83 = call double @floor(double %add) #8
  %conv84 = fptrunc double %call83 to float
  %tx85 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %m, i32 0, i32 4
  store float %conv84, float* %tx85, align 4, !tbaa !186
  %103 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm86 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %103, i32 0, i32 5
  %ty = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm86, i32 0, i32 5
  %104 = load float, float* %ty, align 4, !tbaa !187
  %conv87 = fpext float %104 to double
  %add88 = fadd double %conv87, 5.000000e-01
  %call89 = call double @floor(double %add88) #8
  %conv90 = fptrunc double %call89 to float
  %ty91 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %m, i32 0, i32 5
  store float %conv90, float* %ty91, align 4, !tbaa !188
  %105 = load %struct.gs_image3_s*, %struct.gs_image3_s** %pim3, align 8, !tbaa !1
  %106 = bitcast %struct.gs_image3_s* %pim3a to i8*
  %107 = bitcast %struct.gs_image3_s* %105 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %106, i8* %107, i64 1160, i32 8, i1 false), !tbaa.struct !189
  %ImageMatrix = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %pim3a, i32 0, i32 1
  %call92 = call i32 @gs_matrix_invert(%struct.gs_matrix_s* %ImageMatrix, %struct.gs_matrix_s* %mi) #6
  %ImageMatrix93 = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %pim3a, i32 0, i32 1
  call void @gs_make_identity(%struct.gs_matrix_s* %ImageMatrix93) #6
  %Width94 = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %pim3a, i32 0, i32 2
  %108 = load i32, i32* %Width94, align 4, !tbaa !109
  %MaskDict = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %pim3a, i32 0, i32 11
  %Width95 = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %MaskDict, i32 0, i32 2
  %109 = load i32, i32* %Width95, align 4, !tbaa !190
  %cmp96 = icmp slt i32 %108, %109
  br i1 %cmp96, label %land.lhs.true.98, label %if.end.116

land.lhs.true.98:                                 ; preds = %if.end.81
  %Width99 = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %pim3a, i32 0, i32 2
  %110 = load i32, i32* %Width99, align 4, !tbaa !109
  %cmp100 = icmp sgt i32 %110, 0
  br i1 %cmp100, label %if.then.102, label %if.end.116

if.then.102:                                      ; preds = %land.lhs.true.98
  %111 = bitcast i32* %sx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %111) #1
  %MaskDict103 = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %pim3a, i32 0, i32 11
  %Width104 = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %MaskDict103, i32 0, i32 2
  %112 = load i32, i32* %Width104, align 4, !tbaa !190
  %Width105 = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %pim3a, i32 0, i32 2
  %113 = load i32, i32* %Width105, align 4, !tbaa !109
  %add106 = add nsw i32 %112, %113
  %sub = sub nsw i32 %add106, 1
  %Width107 = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %pim3a, i32 0, i32 2
  %114 = load i32, i32* %Width107, align 4, !tbaa !109
  %div = sdiv i32 %sub, %114
  store i32 %div, i32* %sx, align 4, !tbaa !52
  %115 = load i32, i32* %sx, align 4, !tbaa !52
  %conv108 = sitofp i32 %115 to double
  %div109 = fdiv double 1.000000e+00, %conv108
  %call110 = call i32 @gs_matrix_scale(%struct.gs_matrix_s* %mi, double %div109, double 1.000000e+00, %struct.gs_matrix_s* %mi) #6
  %ImageMatrix111 = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %pim3a, i32 0, i32 1
  %116 = load i32, i32* %sx, align 4, !tbaa !52
  %conv112 = sitofp i32 %116 to double
  %div113 = fdiv double 1.000000e+00, %conv112
  %ImageMatrix114 = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %pim3a, i32 0, i32 1
  %call115 = call i32 @gs_matrix_scale(%struct.gs_matrix_s* %ImageMatrix111, double %div113, double 1.000000e+00, %struct.gs_matrix_s* %ImageMatrix114) #6
  %117 = bitcast i32* %sx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %117) #1
  br label %if.end.116

if.end.116:                                       ; preds = %if.then.102, %land.lhs.true.98, %if.end.81
  %Height117 = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %pim3a, i32 0, i32 3
  %118 = load i32, i32* %Height117, align 4, !tbaa !113
  %MaskDict118 = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %pim3a, i32 0, i32 11
  %Height119 = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %MaskDict118, i32 0, i32 3
  %119 = load i32, i32* %Height119, align 4, !tbaa !191
  %cmp120 = icmp slt i32 %118, %119
  br i1 %cmp120, label %land.lhs.true.122, label %if.end.142

land.lhs.true.122:                                ; preds = %if.end.116
  %Height123 = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %pim3a, i32 0, i32 3
  %120 = load i32, i32* %Height123, align 4, !tbaa !113
  %cmp124 = icmp sgt i32 %120, 0
  br i1 %cmp124, label %if.then.126, label %if.end.142

if.then.126:                                      ; preds = %land.lhs.true.122
  %121 = bitcast i32* %sy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %121) #1
  %MaskDict127 = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %pim3a, i32 0, i32 11
  %Height128 = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %MaskDict127, i32 0, i32 3
  %122 = load i32, i32* %Height128, align 4, !tbaa !191
  %Height129 = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %pim3a, i32 0, i32 3
  %123 = load i32, i32* %Height129, align 4, !tbaa !113
  %add130 = add nsw i32 %122, %123
  %sub131 = sub nsw i32 %add130, 1
  %Height132 = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %pim3a, i32 0, i32 3
  %124 = load i32, i32* %Height132, align 4, !tbaa !113
  %div133 = sdiv i32 %sub131, %124
  store i32 %div133, i32* %sy, align 4, !tbaa !52
  %125 = load i32, i32* %sy, align 4, !tbaa !52
  %conv134 = sitofp i32 %125 to double
  %div135 = fdiv double 1.000000e+00, %conv134
  %call136 = call i32 @gs_matrix_scale(%struct.gs_matrix_s* %mi, double 1.000000e+00, double %div135, %struct.gs_matrix_s* %mi) #6
  %ImageMatrix137 = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %pim3a, i32 0, i32 1
  %126 = load i32, i32* %sy, align 4, !tbaa !52
  %conv138 = sitofp i32 %126 to double
  %div139 = fdiv double 1.000000e+00, %conv138
  %ImageMatrix140 = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %pim3a, i32 0, i32 1
  %call141 = call i32 @gs_matrix_scale(%struct.gs_matrix_s* %ImageMatrix137, double 1.000000e+00, double %div139, %struct.gs_matrix_s* %ImageMatrix140) #6
  %127 = bitcast i32* %sy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %127) #1
  br label %if.end.142

if.end.142:                                       ; preds = %if.then.126, %land.lhs.true.122, %if.end.116
  %MaskDict143 = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %pim3a, i32 0, i32 11
  %ImageMatrix144 = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %MaskDict143, i32 0, i32 1
  %MaskDict145 = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %pim3a, i32 0, i32 11
  %ImageMatrix146 = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %MaskDict145, i32 0, i32 1
  %call147 = call i32 @gs_matrix_multiply(%struct.gs_matrix_s* %mi, %struct.gs_matrix_s* %ImageMatrix144, %struct.gs_matrix_s* %ImageMatrix146) #6
  %128 = bitcast %struct.gs_image3_s* %pim3a to %struct.gs_image_common_s*
  store %struct.gs_image_common_s* %128, %struct.gs_image_common_s** %pic1, align 8, !tbaa !1
  %129 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm148 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %129, i32 0, i32 5
  %130 = bitcast %struct.gs_matrix_fixed_s* %ctm148 to %struct.gs_matrix_s*
  %131 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %converting_image_matrix = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %131, i32 0, i32 224
  %call149 = call i32 @gs_matrix_multiply(%struct.gs_matrix_s* %mi, %struct.gs_matrix_s* %130, %struct.gs_matrix_s* %converting_image_matrix) #6
  br label %if.end.150

if.end.150:                                       ; preds = %if.end.142, %land.lhs.true.64, %if.end.60
  %132 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %133 = bitcast %struct.gx_device_pdf_s* %132 to %struct.gx_device_s*
  %134 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %135 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat1, align 8, !tbaa !1
  %136 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic1, align 8, !tbaa !1
  %137 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %138 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %139 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %140 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %141 = load %struct.gx_image_enum_common_s**, %struct.gx_image_enum_common_s*** %pinfo.addr, align 8, !tbaa !1
  %call151 = call i32 @gx_begin_image3_generic(%struct.gx_device_s* %133, %struct.gs_imager_state_s* %134, %struct.gs_matrix_s* %135, %struct.gs_image_common_s* %136, %struct.gs_int_rect_s* %137, %struct.gx_device_color_s* %138, %struct.gx_clip_path_s* %139, %struct.gs_memory_s* %140, i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, i32, %struct.gs_memory_s*)* @pdf_image3_make_mid, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**, %struct.gx_device_s**, %struct.gx_device_s*, %struct.gx_image_enum_common_s*, %struct.gs_int_point_s*)* @pdf_image3_make_mcde, %struct.gx_image_enum_common_s** %141) #6
  store i32 %call151, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.152

cleanup.152:                                      ; preds = %if.then.59, %if.then.40, %if.end.150, %if.then.80, %if.then.75
  %142 = bitcast %struct.gs_matrix_s** %pmat1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %142) #1
  %143 = bitcast %struct.gs_matrix_s* %mi to i8*
  call void @llvm.lifetime.end(i64 24, i8* %143) #1
  %144 = bitcast %struct.gs_matrix_s* %m to i8*
  call void @llvm.lifetime.end(i64 24, i8* %144) #1
  %145 = bitcast %struct.gs_image_common_s** %pic1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %145) #1
  %146 = bitcast %struct.gs_image3_s* %pim3a to i8*
  call void @llvm.lifetime.end(i64 1160, i8* %146) #1
  %147 = bitcast %struct.gs_image3_s** %pim3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %147) #1
  %cleanup.dest1223 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest1223, label %cleanup.1226 [
    i32 3, label %nyi
  ]

sw.bb.158:                                        ; preds = %if.end
  %148 = bitcast %struct.gs_image3x_s** %pim3x to i8*
  call void @llvm.lifetime.start(i64 8, i8* %148) #1
  %149 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %150 = bitcast %struct.gs_image_common_s* %149 to %struct.gs_image3x_s*
  store %struct.gs_image3x_s* %150, %struct.gs_image3x_s** %pim3x, align 8, !tbaa !1
  %151 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %CompatibilityLevel159 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %151, i32 0, i32 75
  %152 = load double, double* %CompatibilityLevel159, align 8, !tbaa !104
  %cmp160 = fcmp olt double %152, 1.400000e+00
  br i1 %cmp160, label %if.then.162, label %if.end.163

if.then.162:                                      ; preds = %sw.bb.158
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup.191

if.end.163:                                       ; preds = %sw.bb.158
  %153 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %tobool164 = icmp ne %struct.gs_int_rect_s* %153, null
  br i1 %tobool164, label %land.lhs.true.165, label %if.end.188

land.lhs.true.165:                                ; preds = %if.end.163
  %154 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %p166 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %154, i32 0, i32 0
  %x167 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p166, i32 0, i32 0
  %155 = load i32, i32* %x167, align 4, !tbaa !105
  %cmp168 = icmp eq i32 %155, 0
  br i1 %cmp168, label %land.lhs.true.170, label %if.then.187

land.lhs.true.170:                                ; preds = %land.lhs.true.165
  %156 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %p171 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %156, i32 0, i32 0
  %y172 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p171, i32 0, i32 1
  %157 = load i32, i32* %y172, align 4, !tbaa !107
  %cmp173 = icmp eq i32 %157, 0
  br i1 %cmp173, label %land.lhs.true.175, label %if.then.187

land.lhs.true.175:                                ; preds = %land.lhs.true.170
  %158 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %q176 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %158, i32 0, i32 1
  %x177 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q176, i32 0, i32 0
  %159 = load i32, i32* %x177, align 4, !tbaa !108
  %160 = load %struct.gs_image3x_s*, %struct.gs_image3x_s** %pim3x, align 8, !tbaa !1
  %Width178 = getelementptr inbounds %struct.gs_image3x_s, %struct.gs_image3x_s* %160, i32 0, i32 2
  %161 = load i32, i32* %Width178, align 4, !tbaa !115
  %cmp179 = icmp eq i32 %159, %161
  br i1 %cmp179, label %land.lhs.true.181, label %if.then.187

land.lhs.true.181:                                ; preds = %land.lhs.true.175
  %162 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %q182 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %162, i32 0, i32 1
  %y183 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q182, i32 0, i32 1
  %163 = load i32, i32* %y183, align 4, !tbaa !112
  %164 = load %struct.gs_image3x_s*, %struct.gs_image3x_s** %pim3x, align 8, !tbaa !1
  %Height184 = getelementptr inbounds %struct.gs_image3x_s, %struct.gs_image3x_s* %164, i32 0, i32 3
  %165 = load i32, i32* %Height184, align 4, !tbaa !118
  %cmp185 = icmp eq i32 %163, %165
  br i1 %cmp185, label %if.end.188, label %if.then.187

if.then.187:                                      ; preds = %land.lhs.true.181, %land.lhs.true.175, %land.lhs.true.170, %land.lhs.true.165
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup.191

if.end.188:                                       ; preds = %land.lhs.true.181, %if.end.163
  %166 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %image_mask_is_SMask189 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %166, i32 0, i32 221
  store i32 1, i32* %image_mask_is_SMask189, align 4, !tbaa !103
  %167 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %168 = bitcast %struct.gx_device_pdf_s* %167 to %struct.gx_device_s*
  %169 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %170 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %171 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %172 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %173 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %174 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %175 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %176 = load %struct.gx_image_enum_common_s**, %struct.gx_image_enum_common_s*** %pinfo.addr, align 8, !tbaa !1
  %call190 = call i32 @gx_begin_image3x_generic(%struct.gx_device_s* %168, %struct.gs_imager_state_s* %169, %struct.gs_matrix_s* %170, %struct.gs_image_common_s* %171, %struct.gs_int_rect_s* %172, %struct.gx_device_color_s* %173, %struct.gx_clip_path_s* %174, %struct.gs_memory_s* %175, i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, i32, i32, %struct.gs_memory_s*)* @pdf_image3x_make_mid, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**, %struct.gx_device_s**, %struct.gx_device_s**, %struct.gx_image_enum_common_s**, %struct.gs_int_point_s*, %struct.gs_image3x_s*)* @pdf_image3x_make_mcde, %struct.gx_image_enum_common_s** %176) #6
  store i32 %call190, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.191

cleanup.191:                                      ; preds = %if.then.187, %if.then.162, %if.end.188
  %177 = bitcast %struct.gs_image3x_s** %pim3x to i8*
  call void @llvm.lifetime.end(i64 8, i8* %177) #1
  %cleanup.dest1224 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest1224, label %cleanup.1226 [
    i32 3, label %nyi
  ]

sw.bb.192:                                        ; preds = %if.end
  %178 = bitcast %struct.gx_device_color_s* %icolor to i8*
  call void @llvm.lifetime.start(i64 656, i8* %178) #1
  %179 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %image_mask_is_SMask193 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %179, i32 0, i32 221
  store i32 0, i32* %image_mask_is_SMask193, align 4, !tbaa !103
  %180 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %181 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %182 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %183 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %184 = bitcast %struct.gs_image_common_s* %183 to %struct.gs_image4_s*
  %185 = load %union.image_union_s*, %union.image_union_s** %image.addr, align 8, !tbaa !1
  %arrayidx194 = getelementptr inbounds %union.image_union_s, %union.image_union_s* %185, i64 0
  %type1195 = bitcast %union.image_union_s* %arrayidx194 to %struct.gs_image1_s*
  %call196 = call i32 @pdf_convert_image4_to_image1(%struct.gx_device_pdf_s* %180, %struct.gs_imager_state_s* %181, %struct.gx_device_color_s* %182, %struct.gs_image4_s* %184, %struct.gs_image1_s* %type1195, %struct.gx_device_color_s* %icolor) #6
  %cmp197 = icmp sge i32 %call196, 0
  br i1 %cmp197, label %if.then.199, label %if.end.229

if.then.199:                                      ; preds = %sw.bb.192
  %186 = bitcast %struct.gs_state_s** %pgs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %186) #1
  %187 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %call200 = call %struct.gs_state_s* @gx_hld_get_gstate_ptr(%struct.gs_imager_state_s* %187) #6
  store %struct.gs_state_s* %call200, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %188 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %cmp201 = icmp eq %struct.gs_state_s* %188, null
  br i1 %cmp201, label %if.then.203, label %if.end.204

if.then.203:                                      ; preds = %if.then.199
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.228

if.end.204:                                       ; preds = %if.then.199
  %189 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pnamed, align 8, !tbaa !1
  %tobool205 = icmp ne %struct.cos_dict_s* %189, null
  br i1 %tobool205, label %if.then.206, label %if.end.209

if.then.206:                                      ; preds = %if.end.204
  %190 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %NI_stack207 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %190, i32 0, i32 183
  %191 = load %struct.cos_array_s*, %struct.cos_array_s** %NI_stack207, align 8, !tbaa !95
  %192 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pnamed, align 8, !tbaa !1
  %cos_procs = getelementptr inbounds %struct.cos_dict_s, %struct.cos_dict_s* %192, i32 0, i32 0
  %193 = bitcast %struct.cos_object_procs_s** %cos_procs to %struct.cos_object_s*
  %call208 = call i32 @cos_array_add_object(%struct.cos_array_s* %191, %struct.cos_object_s* %193) #6
  br label %if.end.209

if.end.209:                                       ; preds = %if.then.206, %if.end.204
  %194 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %call210 = call i32 @gs_gsave(%struct.gs_state_s* %194) #6
  store i32 %call210, i32* %code, align 4, !tbaa !52
  %195 = load i32, i32* %code, align 4, !tbaa !52
  %cmp211 = icmp slt i32 %195, 0
  br i1 %cmp211, label %if.then.213, label %if.end.214

if.then.213:                                      ; preds = %if.end.209
  %196 = load i32, i32* %code, align 4, !tbaa !52
  store i32 %196, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.228

if.end.214:                                       ; preds = %if.end.209
  %197 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %198 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %199 = bitcast %struct.gs_image_common_s* %198 to %struct.gs_image4_s*
  %ColorSpace = getelementptr inbounds %struct.gs_image4_s, %struct.gs_image4_s* %199, i32 0, i32 9
  %200 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace, align 8, !tbaa !199
  %call215 = call i32 @gs_setcolorspace(%struct.gs_state_s* %197, %struct.gs_color_space_s* %200) #6
  store i32 %call215, i32* %code, align 4, !tbaa !52
  %201 = load i32, i32* %code, align 4, !tbaa !52
  %cmp216 = icmp slt i32 %201, 0
  br i1 %cmp216, label %if.then.218, label %if.end.219

if.then.218:                                      ; preds = %if.end.214
  %202 = load i32, i32* %code, align 4, !tbaa !52
  store i32 %202, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.228

if.end.219:                                       ; preds = %if.end.214
  %203 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %204 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %205 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %206 = load %union.image_union_s*, %union.image_union_s** %image.addr, align 8, !tbaa !1
  %arrayidx220 = getelementptr inbounds %union.image_union_s, %union.image_union_s* %206, i64 0
  %type1221 = bitcast %union.image_union_s* %arrayidx220 to %struct.gs_image1_s*
  %207 = bitcast %struct.gs_image1_s* %type1221 to %struct.gs_image_common_s*
  %208 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %209 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %210 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %211 = load %struct.gx_image_enum_common_s**, %struct.gx_image_enum_common_s*** %pinfo.addr, align 8, !tbaa !1
  %212 = load i32, i32* %context.addr, align 4, !tbaa !5
  %call222 = call i32 @pdf_begin_typed_image(%struct.gx_device_pdf_s* %203, %struct.gs_imager_state_s* %204, %struct.gs_matrix_s* %205, %struct.gs_image_common_s* %207, %struct.gs_int_rect_s* %208, %struct.gx_device_color_s* %icolor, %struct.gx_clip_path_s* %209, %struct.gs_memory_s* %210, %struct.gx_image_enum_common_s** %211, i32 %212) #6
  store i32 %call222, i32* %code, align 4, !tbaa !52
  %213 = load i32, i32* %code, align 4, !tbaa !52
  %cmp223 = icmp slt i32 %213, 0
  br i1 %cmp223, label %if.then.225, label %if.end.226

if.then.225:                                      ; preds = %if.end.219
  %214 = load i32, i32* %code, align 4, !tbaa !52
  store i32 %214, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.228

if.end.226:                                       ; preds = %if.end.219
  %215 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %call227 = call i32 @gs_grestore(%struct.gs_state_s* %215) #6
  store i32 %call227, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.228

cleanup.228:                                      ; preds = %if.end.226, %if.then.225, %if.then.218, %if.then.213, %if.then.203
  %216 = bitcast %struct.gs_state_s** %pgs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %216) #1
  br label %cleanup.300

if.end.229:                                       ; preds = %sw.bb.192
  %217 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %CompatibilityLevel230 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %217, i32 0, i32 75
  %218 = load double, double* %CompatibilityLevel230, align 8, !tbaa !104
  %cmp231 = fcmp olt double %218, 1.200000e+00
  br i1 %cmp231, label %if.then.236, label %lor.lhs.false.233

lor.lhs.false.233:                                ; preds = %if.end.229
  %219 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %219, i32 0, i32 73
  %ColorConversionStrategy = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params, i32 0, i32 17
  %220 = load i32, i32* %ColorConversionStrategy, align 4, !tbaa !220
  %cmp234 = icmp ne i32 %220, 0
  br i1 %cmp234, label %if.then.236, label %if.end.237

if.then.236:                                      ; preds = %lor.lhs.false.233, %if.end.229
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup.300

if.end.237:                                       ; preds = %lor.lhs.false.233
  %221 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %CompatibilityLevel238 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %221, i32 0, i32 75
  %222 = load double, double* %CompatibilityLevel238, align 8, !tbaa !104
  %cmp239 = fcmp olt double %222, 1.300000e+00
  br i1 %cmp239, label %land.lhs.true.241, label %if.end.298

land.lhs.true.241:                                ; preds = %if.end.237
  %223 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PatternImagemask242 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %223, i32 0, i32 107
  %224 = load i32, i32* %PatternImagemask242, align 4, !tbaa !119
  %tobool243 = icmp ne i32 %224, 0
  br i1 %tobool243, label %if.end.298, label %if.then.244

if.then.244:                                      ; preds = %land.lhs.true.241
  %225 = bitcast %struct.gs_matrix_s* %m245 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %225) #1
  %226 = bitcast %struct.gs_matrix_s* %m1 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %226) #1
  %227 = bitcast %struct.gs_matrix_s* %mi246 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %227) #1
  %228 = bitcast %struct.gs_image4_s* %pi4 to i8*
  call void @llvm.lifetime.start(i64 1112, i8* %228) #1
  %229 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %230 = bitcast %struct.gs_image_common_s* %229 to %struct.gs_image4_s*
  %231 = bitcast %struct.gs_image4_s* %pi4 to i8*
  %232 = bitcast %struct.gs_image4_s* %230 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %231, i8* %232, i64 1112, i32 8, i1 false), !tbaa.struct !120
  %233 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %234 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call247 = call i32 @pdf_must_put_clip_path(%struct.gx_device_pdf_s* %233, %struct.gx_clip_path_s* %234) #6
  %tobool248 = icmp ne i32 %call247, 0
  br i1 %tobool248, label %if.then.249, label %if.else.251

if.then.249:                                      ; preds = %if.then.244
  %235 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call250 = call i32 @pdf_unclip(%struct.gx_device_pdf_s* %235) #6
  store i32 %call250, i32* %code, align 4, !tbaa !52
  br label %if.end.253

if.else.251:                                      ; preds = %if.then.244
  %236 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call252 = call i32 @pdf_open_page(%struct.gx_device_pdf_s* %236, i32 1) #6
  store i32 %call252, i32* %code, align 4, !tbaa !52
  br label %if.end.253

if.end.253:                                       ; preds = %if.else.251, %if.then.249
  %237 = load i32, i32* %code, align 4, !tbaa !52
  %cmp254 = icmp slt i32 %237, 0
  br i1 %cmp254, label %if.then.256, label %if.end.257

if.then.256:                                      ; preds = %if.end.253
  %238 = load i32, i32* %code, align 4, !tbaa !52
  store i32 %238, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.294

if.end.257:                                       ; preds = %if.end.253
  %239 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %240 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call258 = call i32 @pdf_put_clip_path(%struct.gx_device_pdf_s* %239, %struct.gx_clip_path_s* %240) #6
  store i32 %call258, i32* %code, align 4, !tbaa !52
  %241 = load i32, i32* %code, align 4, !tbaa !52
  %cmp259 = icmp slt i32 %241, 0
  br i1 %cmp259, label %if.then.261, label %if.end.262

if.then.261:                                      ; preds = %if.end.257
  %242 = load i32, i32* %code, align 4, !tbaa !52
  store i32 %242, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.294

if.end.262:                                       ; preds = %if.end.257
  call void @gs_make_identity(%struct.gs_matrix_s* %m1) #6
  %243 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %ImageMatrix263 = getelementptr inbounds %struct.gs_image_common_s, %struct.gs_image_common_s* %243, i32 0, i32 1
  %call264 = call i32 @gs_matrix_invert(%struct.gs_matrix_s* %ImageMatrix263, %struct.gs_matrix_s* %mi246) #6
  %244 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm265 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %244, i32 0, i32 5
  %245 = bitcast %struct.gs_matrix_fixed_s* %ctm265 to %struct.gs_matrix_s*
  %call266 = call i32 @gs_matrix_multiply(%struct.gs_matrix_s* %mi246, %struct.gs_matrix_s* %245, %struct.gs_matrix_s* %m245) #6
  %246 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %247 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %Width267 = getelementptr inbounds %struct.gs_image4_s, %struct.gs_image4_s* %pi4, i32 0, i32 2
  %248 = load i32, i32* %Width267, align 4, !tbaa !201
  %Height268 = getelementptr inbounds %struct.gs_image4_s, %struct.gs_image4_s* %pi4, i32 0, i32 3
  %249 = load i32, i32* %Height268, align 4, !tbaa !202
  %call269 = call i32 @pdf_setup_masked_image_converter(%struct.gx_device_pdf_s* %246, %struct.gs_memory_s* %247, %struct.gs_matrix_s* %m245, %struct.pdf_lcvd_s** %cvd, i32 1, i32 0, i32 0, i32 %248, i32 %249, i32 0) #6
  store i32 %call269, i32* %code, align 4, !tbaa !52
  %250 = load i32, i32* %code, align 4, !tbaa !52
  %cmp270 = icmp slt i32 %250, 0
  br i1 %cmp270, label %if.then.272, label %if.end.273

if.then.272:                                      ; preds = %if.end.262
  %251 = load i32, i32* %code, align 4, !tbaa !52
  store i32 %251, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.294

if.end.273:                                       ; preds = %if.end.262
  %252 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %mdev = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %252, i32 0, i32 0
  %is_open = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev, i32 0, i32 9
  store i32 1, i32* %is_open, align 4, !tbaa !203
  %253 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %mask = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %253, i32 0, i32 1
  %254 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask, align 8, !tbaa !212
  %is_open274 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %254, i32 0, i32 9
  store i32 1, i32* %is_open274, align 4, !tbaa !213
  %255 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %mask_is_empty = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %255, i32 0, i32 7
  store i32 0, i32* %mask_is_empty, align 4, !tbaa !214
  %256 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %mask275 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %256, i32 0, i32 1
  %257 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask275, align 8, !tbaa !212
  %procs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %257, i32 0, i32 42
  %fill_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 7
  %258 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rectangle, align 8, !tbaa !215
  %259 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %mask276 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %259, i32 0, i32 1
  %260 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask276, align 8, !tbaa !212
  %261 = bitcast %struct.gx_device_memory_s* %260 to %struct.gx_device_s*
  %262 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %mask277 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %262, i32 0, i32 1
  %263 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask277, align 8, !tbaa !212
  %width278 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %263, i32 0, i32 13
  %264 = load i32, i32* %width278, align 4, !tbaa !216
  %265 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %mask279 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %265, i32 0, i32 1
  %266 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask279, align 8, !tbaa !212
  %height280 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %266, i32 0, i32 14
  %267 = load i32, i32* %height280, align 4, !tbaa !217
  %call281 = call i32 %258(%struct.gx_device_s* %261, i32 0, i32 0, i32 %264, i32 %267, i64 0) #6
  store i32 %call281, i32* %code, align 4, !tbaa !52
  %268 = load i32, i32* %code, align 4, !tbaa !52
  %cmp282 = icmp slt i32 %268, 0
  br i1 %cmp282, label %if.then.284, label %if.end.285

if.then.284:                                      ; preds = %if.end.273
  %269 = load i32, i32* %code, align 4, !tbaa !52
  store i32 %269, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.294

if.end.285:                                       ; preds = %if.end.273
  %270 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %271 = bitcast %struct.pdf_lcvd_s* %270 to %struct.gx_device_s*
  call void @gx_device_retain(%struct.gx_device_s* %271, i32 1) #6
  %272 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %mask286 = getelementptr inbounds %struct.pdf_lcvd_s, %struct.pdf_lcvd_s* %272, i32 0, i32 1
  %273 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mask286, align 8, !tbaa !212
  %274 = bitcast %struct.gx_device_memory_s* %273 to %struct.gx_device_s*
  call void @gx_device_retain(%struct.gx_device_s* %274, i32 1) #6
  %ImageMatrix287 = getelementptr inbounds %struct.gs_image4_s, %struct.gs_image4_s* %pi4, i32 0, i32 1
  call void @gs_make_identity(%struct.gs_matrix_s* %ImageMatrix287) #6
  %275 = load %struct.pdf_lcvd_s*, %struct.pdf_lcvd_s** %cvd, align 8, !tbaa !1
  %276 = bitcast %struct.pdf_lcvd_s* %275 to %struct.gx_device_s*
  %277 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %278 = bitcast %struct.gs_image4_s* %pi4 to %struct.gs_image_common_s*
  %279 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %280 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %281 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %282 = load %struct.gx_image_enum_common_s**, %struct.gx_image_enum_common_s*** %pinfo.addr, align 8, !tbaa !1
  %call288 = call i32 @gx_default_begin_typed_image(%struct.gx_device_s* %276, %struct.gs_imager_state_s* %277, %struct.gs_matrix_s* %m1, %struct.gs_image_common_s* %278, %struct.gs_int_rect_s* %279, %struct.gx_device_color_s* %280, %struct.gx_clip_path_s* null, %struct.gs_memory_s* %281, %struct.gx_image_enum_common_s** %282) #6
  store i32 %call288, i32* %code, align 4, !tbaa !52
  %283 = load i32, i32* %code, align 4, !tbaa !52
  %cmp289 = icmp slt i32 %283, 0
  br i1 %cmp289, label %if.then.291, label %if.end.292

if.then.291:                                      ; preds = %if.end.285
  %284 = load i32, i32* %code, align 4, !tbaa !52
  store i32 %284, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.294

if.end.292:                                       ; preds = %if.end.285
  %285 = load %struct.gx_image_enum_common_s**, %struct.gx_image_enum_common_s*** %pinfo.addr, align 8, !tbaa !1
  %286 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %285, align 8, !tbaa !1
  %procs293 = getelementptr inbounds %struct.gx_image_enum_common_s, %struct.gx_image_enum_common_s* %286, i32 0, i32 1
  store %struct.gx_image_enum_procs_s* @pdf_image_cvd_enum_procs, %struct.gx_image_enum_procs_s** %procs293, align 8, !tbaa !194
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.294

cleanup.294:                                      ; preds = %if.end.292, %if.then.291, %if.then.284, %if.then.272, %if.then.261, %if.then.256
  %287 = bitcast %struct.gs_image4_s* %pi4 to i8*
  call void @llvm.lifetime.end(i64 1112, i8* %287) #1
  %288 = bitcast %struct.gs_matrix_s* %mi246 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %288) #1
  %289 = bitcast %struct.gs_matrix_s* %m1 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %289) #1
  %290 = bitcast %struct.gs_matrix_s* %m245 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %290) #1
  br label %cleanup.300

if.end.298:                                       ; preds = %land.lhs.true.241, %if.end.237
  %291 = load %union.image_union_s*, %union.image_union_s** %image.addr, align 8, !tbaa !1
  %arrayidx299 = getelementptr inbounds %union.image_union_s, %union.image_union_s* %291, i64 0
  %type4 = bitcast %union.image_union_s* %arrayidx299 to %struct.gs_image4_s*
  %292 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %293 = bitcast %struct.gs_image_common_s* %292 to %struct.gs_image4_s*
  %294 = bitcast %struct.gs_image4_s* %type4 to i8*
  %295 = bitcast %struct.gs_image4_s* %293 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %294, i8* %295, i64 1112, i32 8, i1 false), !tbaa.struct !120
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.300

cleanup.300:                                      ; preds = %if.then.236, %if.end.298, %cleanup.294, %cleanup.228
  %296 = bitcast %struct.gx_device_color_s* %icolor to i8*
  call void @llvm.lifetime.end(i64 656, i8* %296) #1
  %cleanup.dest.301 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.301, label %cleanup.1226 [
    i32 2, label %sw.epilog
    i32 3, label %nyi
  ]

sw.default:                                       ; preds = %if.end
  br label %nyi

sw.epilog:                                        ; preds = %cleanup.300, %cleanup
  %297 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %298 = bitcast %struct.gs_image_common_s* %297 to %struct.gs_pixel_image_s*
  store %struct.gs_pixel_image_s* %298, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %299 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %format302 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %299, i32 0, i32 7
  %300 = load i32, i32* %format302, align 4, !tbaa !121
  store i32 %300, i32* %format, align 4, !tbaa !5
  %301 = load i32, i32* %format, align 4, !tbaa !5
  switch i32 %301, label %sw.default.304 [
    i32 0, label %sw.bb.303
    i32 1, label %sw.bb.303
  ]

sw.bb.303:                                        ; preds = %sw.epilog, %sw.epilog
  br label %sw.epilog.305

sw.default.304:                                   ; preds = %sw.epilog
  br label %nyi

sw.epilog.305:                                    ; preds = %sw.bb.303
  %302 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %Width306 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %302, i32 0, i32 2
  %303 = load i32, i32* %Width306, align 4, !tbaa !123
  %cmp307 = icmp eq i32 %303, 0
  br i1 %cmp307, label %if.then.313, label %lor.lhs.false.309

lor.lhs.false.309:                                ; preds = %sw.epilog.305
  %304 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %Height310 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %304, i32 0, i32 3
  %305 = load i32, i32* %Height310, align 4, !tbaa !124
  %cmp311 = icmp eq i32 %305, 0
  br i1 %cmp311, label %if.then.313, label %if.end.314

if.then.313:                                      ; preds = %lor.lhs.false.309, %sw.epilog.305
  br label %nyi

if.end.314:                                       ; preds = %lor.lhs.false.309
  %306 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %BitsPerComponent315 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %306, i32 0, i32 4
  %307 = load i32, i32* %BitsPerComponent315, align 4, !tbaa !125
  switch i32 %307, label %sw.default.318 [
    i32 1, label %sw.bb.316
    i32 2, label %sw.bb.316
    i32 4, label %sw.bb.316
    i32 8, label %sw.bb.316
    i32 12, label %sw.bb.317
    i32 16, label %sw.bb.317
  ]

sw.bb.316:                                        ; preds = %if.end.314, %if.end.314, %if.end.314, %if.end.314
  br label %sw.epilog.319

sw.bb.317:                                        ; preds = %if.end.314, %if.end.314
  br label %nyi

sw.default.318:                                   ; preds = %if.end.314
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1226

sw.epilog.319:                                    ; preds = %sw.bb.316
  %308 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %ColorSpace320 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %308, i32 0, i32 9
  %309 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace320, align 8, !tbaa !147
  store %struct.gs_color_space_s* %309, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %310 = load i32, i32* %is_mask, align 4, !tbaa !52
  %tobool321 = icmp ne i32 %310, 0
  br i1 %tobool321, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.epilog.319
  br label %cond.end

cond.false:                                       ; preds = %sw.epilog.319
  %311 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %call322 = call i32 @gs_color_space_num_components(%struct.gs_color_space_s* %311) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %call322, %cond.false ]
  store i32 %cond, i32* %num_components, align 4, !tbaa !52
  %312 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %313 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call323 = call i32 @pdf_must_put_clip_path(%struct.gx_device_pdf_s* %312, %struct.gx_clip_path_s* %313) #6
  %tobool324 = icmp ne i32 %call323, 0
  br i1 %tobool324, label %if.then.325, label %if.else.327

if.then.325:                                      ; preds = %cond.end
  %314 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call326 = call i32 @pdf_unclip(%struct.gx_device_pdf_s* %314) #6
  store i32 %call326, i32* %code, align 4, !tbaa !52
  br label %if.end.329

if.else.327:                                      ; preds = %cond.end
  %315 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call328 = call i32 @pdf_open_page(%struct.gx_device_pdf_s* %315, i32 1) #6
  store i32 %call328, i32* %code, align 4, !tbaa !52
  br label %if.end.329

if.end.329:                                       ; preds = %if.else.327, %if.then.325
  %316 = load i32, i32* %code, align 4, !tbaa !52
  %cmp330 = icmp slt i32 %316, 0
  br i1 %cmp330, label %if.then.332, label %if.end.333

if.then.332:                                      ; preds = %if.end.329
  %317 = load i32, i32* %code, align 4, !tbaa !52
  store i32 %317, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1226

if.end.333:                                       ; preds = %if.end.329
  %318 = load i32, i32* %context.addr, align 4, !tbaa !5
  %cmp334 = icmp eq i32 %318, 1
  br i1 %cmp334, label %if.then.336, label %if.else.338

if.then.336:                                      ; preds = %if.end.333
  %319 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %319, i32 0, i32 3
  %320 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !148
  %call337 = call %struct.gs_color_space_s* @gs_cspace_new_DeviceGray(%struct.gs_memory_s* %320) #6
  store %struct.gs_color_space_s* %call337, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  br label %if.end.345

if.else.338:                                      ; preds = %if.end.333
  %321 = load i32, i32* %is_mask, align 4, !tbaa !52
  %tobool339 = icmp ne i32 %321, 0
  br i1 %tobool339, label %if.then.340, label %if.else.342

if.then.340:                                      ; preds = %if.else.338
  %322 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %323 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %324 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %call341 = call i32 @pdf_prepare_imagemask(%struct.gx_device_pdf_s* %322, %struct.gs_imager_state_s* %323, %struct.gx_device_color_s* %324) #6
  store i32 %call341, i32* %code, align 4, !tbaa !52
  br label %if.end.344

if.else.342:                                      ; preds = %if.else.338
  %325 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %326 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %call343 = call i32 @pdf_prepare_image(%struct.gx_device_pdf_s* %325, %struct.gs_imager_state_s* %326) #6
  store i32 %call343, i32* %code, align 4, !tbaa !52
  br label %if.end.344

if.end.344:                                       ; preds = %if.else.342, %if.then.340
  br label %if.end.345

if.end.345:                                       ; preds = %if.end.344, %if.then.336
  %327 = load i32, i32* %code, align 4, !tbaa !52
  %cmp346 = icmp slt i32 %327, 0
  br i1 %cmp346, label %if.then.348, label %if.end.349

if.then.348:                                      ; preds = %if.end.345
  br label %nyi

if.end.349:                                       ; preds = %if.end.345
  %328 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %tobool350 = icmp ne %struct.gs_int_rect_s* %328, null
  br i1 %tobool350, label %if.then.351, label %if.else.352

if.then.351:                                      ; preds = %if.end.349
  %329 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %330 = bitcast %struct.gs_int_rect_s* %rect to i8*
  %331 = bitcast %struct.gs_int_rect_s* %329 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %330, i8* %331, i64 16, i32 4, i1 false), !tbaa.struct !126
  br label %if.end.363

if.else.352:                                      ; preds = %if.end.349
  %p353 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 0
  %y354 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p353, i32 0, i32 1
  store i32 0, i32* %y354, align 4, !tbaa !107
  %p355 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 0
  %x356 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p355, i32 0, i32 0
  store i32 0, i32* %x356, align 4, !tbaa !105
  %332 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %Width357 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %332, i32 0, i32 2
  %333 = load i32, i32* %Width357, align 4, !tbaa !123
  %q358 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 1
  %x359 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q358, i32 0, i32 0
  store i32 %333, i32* %x359, align 4, !tbaa !108
  %334 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %Height360 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %334, i32 0, i32 3
  %335 = load i32, i32* %Height360, align 4, !tbaa !124
  %q361 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 1
  %y362 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q361, i32 0, i32 1
  store i32 %335, i32* %y362, align 4, !tbaa !112
  br label %if.end.363

if.end.363:                                       ; preds = %if.else.352, %if.then.351
  %336 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs364 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %336, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs364, i32 0, i32 8
  %337 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !149
  %338 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call365 = call i8* %337(%struct.gs_memory_s* %338, %struct.gs_memory_struct_type_s* @st_pdf_image_enum, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0)) #6
  %339 = bitcast i8* %call365 to %struct.pdf_image_enum_s*
  store %struct.pdf_image_enum_s* %339, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %340 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %cmp366 = icmp eq %struct.pdf_image_enum_s* %340, null
  br i1 %cmp366, label %if.then.368, label %if.end.369

if.then.368:                                      ; preds = %if.end.363
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1226

if.end.369:                                       ; preds = %if.end.363
  %341 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %342 = bitcast %struct.pdf_image_enum_s* %341 to i8*
  %call370 = call i8* @memset(i8* %342, i32 0, i64 800) #7
  %343 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %344 = bitcast %struct.pdf_image_enum_s* %343 to %struct.gx_image_enum_common_s*
  %345 = load %struct.gx_image_enum_common_s**, %struct.gx_image_enum_common_s*** %pinfo.addr, align 8, !tbaa !1
  store %struct.gx_image_enum_common_s* %344, %struct.gx_image_enum_common_s** %345, align 8, !tbaa !1
  %346 = load %struct.gx_image_enum_common_s**, %struct.gx_image_enum_common_s*** %pinfo.addr, align 8, !tbaa !1
  %347 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %346, align 8, !tbaa !1
  %348 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %349 = bitcast %struct.gs_pixel_image_s* %348 to %struct.gs_data_image_s*
  %350 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %CompatibilityLevel371 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %350, i32 0, i32 75
  %351 = load double, double* %CompatibilityLevel371, align 8, !tbaa !104
  %cmp372 = fcmp oge double %351, 1.300000e+00
  br i1 %cmp372, label %cond.true.374, label %cond.false.378

cond.true.374:                                    ; preds = %if.end.369
  %352 = load i32, i32* %context.addr, align 4, !tbaa !5
  %cmp375 = icmp eq i32 %352, 1
  %cond377 = select i1 %cmp375, %struct.gx_image_enum_procs_s* @pdf_image_object_enum_procs, %struct.gx_image_enum_procs_s* @pdf_image_enum_procs
  br label %cond.end.388

cond.false.378:                                   ; preds = %if.end.369
  %353 = load i32, i32* %context.addr, align 4, !tbaa !5
  %cmp379 = icmp eq i32 %353, 1
  br i1 %cmp379, label %cond.true.381, label %cond.false.382

cond.true.381:                                    ; preds = %cond.false.378
  br label %cond.end.386

cond.false.382:                                   ; preds = %cond.false.378
  %354 = load i32, i32* %context.addr, align 4, !tbaa !5
  %cmp383 = icmp eq i32 %354, 2
  %cond385 = select i1 %cmp383, %struct.gx_image_enum_procs_s* @pdf_image_object_enum_procs2, %struct.gx_image_enum_procs_s* @pdf_image_enum_procs
  br label %cond.end.386

cond.end.386:                                     ; preds = %cond.false.382, %cond.true.381
  %cond387 = phi %struct.gx_image_enum_procs_s* [ @pdf_image_object_enum_procs, %cond.true.381 ], [ %cond385, %cond.false.382 ]
  br label %cond.end.388

cond.end.388:                                     ; preds = %cond.end.386, %cond.true.374
  %cond389 = phi %struct.gx_image_enum_procs_s* [ %cond377, %cond.true.374 ], [ %cond387, %cond.end.386 ]
  %355 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %356 = bitcast %struct.gx_device_pdf_s* %355 to %struct.gx_device_s*
  %357 = load i32, i32* %num_components, align 4, !tbaa !52
  %358 = load i32, i32* %format, align 4, !tbaa !5
  %call390 = call i32 @gx_image_enum_common_init(%struct.gx_image_enum_common_s* %347, %struct.gs_data_image_s* %349, %struct.gx_image_enum_procs_s* %cond389, %struct.gx_device_s* %356, i32 %357, i32 %358) #6
  %359 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %360 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %memory391 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %360, i32 0, i32 3
  store %struct.gs_memory_s* %359, %struct.gs_memory_s** %memory391, align 8, !tbaa !150
  %q392 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 1
  %x393 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q392, i32 0, i32 0
  %361 = load i32, i32* %x393, align 4, !tbaa !108
  %p394 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 0
  %x395 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p394, i32 0, i32 0
  %362 = load i32, i32* %x395, align 4, !tbaa !105
  %sub396 = sub nsw i32 %361, %362
  store i32 %sub396, i32* %width, align 4, !tbaa !52
  %363 = load i32, i32* %width, align 4, !tbaa !52
  %364 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %width397 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %364, i32 0, i32 9
  store i32 %363, i32* %width397, align 4, !tbaa !153
  %q398 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 1
  %y399 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q398, i32 0, i32 1
  %365 = load i32, i32* %y399, align 4, !tbaa !112
  %p400 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 0
  %y401 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p400, i32 0, i32 1
  %366 = load i32, i32* %y401, align 4, !tbaa !107
  %sub402 = sub nsw i32 %365, %366
  store i32 %sub402, i32* %height, align 4, !tbaa !52
  %367 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %BitsPerComponent403 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %367, i32 0, i32 4
  %368 = load i32, i32* %BitsPerComponent403, align 4, !tbaa !125
  %369 = load i32, i32* %num_components, align 4, !tbaa !52
  %mul = mul nsw i32 %368, %369
  %370 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %num_planes = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %370, i32 0, i32 6
  %371 = load i32, i32* %num_planes, align 4, !tbaa !154
  %div404 = sdiv i32 %mul, %371
  %372 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %bits_per_pixel = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %372, i32 0, i32 10
  store i32 %div404, i32* %bits_per_pixel, align 4, !tbaa !155
  %373 = load i32, i32* %height, align 4, !tbaa !52
  %374 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %rows_left = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %374, i32 0, i32 11
  store i32 %373, i32* %rows_left, align 4, !tbaa !156
  %375 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pnamed, align 8, !tbaa !1
  %cmp405 = icmp ne %struct.cos_dict_s* %375, null
  br i1 %cmp405, label %if.then.407, label %if.else.408

if.then.407:                                      ; preds = %cond.end.388
  store i32 0, i32* %in_line, align 4, !tbaa !52
  br label %if.end.425

if.else.408:                                      ; preds = %cond.end.388
  %376 = bitcast double* %nbytes to i8*
  call void @llvm.lifetime.start(i64 8, i8* %376) #1
  %377 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %width409 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %377, i32 0, i32 9
  %378 = load i32, i32* %width409, align 4, !tbaa !153
  %conv410 = sext i32 %378 to i64
  %379 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %bits_per_pixel411 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %379, i32 0, i32 10
  %380 = load i32, i32* %bits_per_pixel411, align 4, !tbaa !155
  %conv412 = sext i32 %380 to i64
  %mul413 = mul i64 %conv410, %conv412
  %add414 = add i64 %mul413, 7
  %shr = lshr i64 %add414, 3
  %conv415 = uitofp i64 %shr to double
  %381 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %num_planes416 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %381, i32 0, i32 6
  %382 = load i32, i32* %num_planes416, align 4, !tbaa !154
  %conv417 = sitofp i32 %382 to double
  %mul418 = fmul double %conv415, %conv417
  %383 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %rows_left419 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %383, i32 0, i32 11
  %384 = load i32, i32* %rows_left419, align 4, !tbaa !156
  %conv420 = sitofp i32 %384 to double
  %mul421 = fmul double %mul418, %conv420
  store double %mul421, double* %nbytes, align 8, !tbaa !157
  %385 = load double, double* %nbytes, align 8, !tbaa !157
  %386 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %MaxInlineImageSize = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %386, i32 0, i32 113
  %387 = load i64, i64* %MaxInlineImageSize, align 8, !tbaa !158
  %conv422 = sitofp i64 %387 to double
  %cmp423 = fcmp olt double %385, %conv422
  %conv424 = zext i1 %cmp423 to i32
  %388 = load i32, i32* %in_line, align 4, !tbaa !52
  %and = and i32 %388, %conv424
  store i32 %and, i32* %in_line, align 4, !tbaa !52
  %389 = bitcast double* %nbytes to i8*
  call void @llvm.lifetime.end(i64 8, i8* %389) #1
  br label %if.end.425

if.end.425:                                       ; preds = %if.else.408, %if.then.407
  %p426 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 0
  %x427 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p426, i32 0, i32 0
  %390 = load i32, i32* %x427, align 4, !tbaa !105
  %cmp428 = icmp ne i32 %390, 0
  br i1 %cmp428, label %if.then.451, label %lor.lhs.false.430

lor.lhs.false.430:                                ; preds = %if.end.425
  %p431 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 0
  %y432 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p431, i32 0, i32 1
  %391 = load i32, i32* %y432, align 4, !tbaa !107
  %cmp433 = icmp ne i32 %391, 0
  br i1 %cmp433, label %if.then.451, label %lor.lhs.false.435

lor.lhs.false.435:                                ; preds = %lor.lhs.false.430
  %q436 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 1
  %x437 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q436, i32 0, i32 0
  %392 = load i32, i32* %x437, align 4, !tbaa !108
  %393 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %Width438 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %393, i32 0, i32 2
  %394 = load i32, i32* %Width438, align 4, !tbaa !123
  %cmp439 = icmp ne i32 %392, %394
  br i1 %cmp439, label %if.then.451, label %lor.lhs.false.441

lor.lhs.false.441:                                ; preds = %lor.lhs.false.435
  %q442 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 1
  %y443 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q442, i32 0, i32 1
  %395 = load i32, i32* %y443, align 4, !tbaa !112
  %396 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %Height444 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %396, i32 0, i32 3
  %397 = load i32, i32* %Height444, align 4, !tbaa !124
  %cmp445 = icmp ne i32 %395, %397
  br i1 %cmp445, label %if.then.451, label %lor.lhs.false.447

lor.lhs.false.447:                                ; preds = %lor.lhs.false.441
  %398 = load i32, i32* %is_mask, align 4, !tbaa !52
  %tobool448 = icmp ne i32 %398, 0
  br i1 %tobool448, label %land.lhs.true.449, label %if.end.453

land.lhs.true.449:                                ; preds = %lor.lhs.false.447
  %399 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %CombineWithColor = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %399, i32 0, i32 8
  %400 = load i32, i32* %CombineWithColor, align 4, !tbaa !127
  %tobool450 = icmp ne i32 %400, 0
  br i1 %tobool450, label %if.then.451, label %if.end.453

if.then.451:                                      ; preds = %land.lhs.true.449, %lor.lhs.false.441, %lor.lhs.false.435, %lor.lhs.false.430, %if.end.425
  %401 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs452 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %401, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs452, i32 0, i32 2
  %402 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !114
  %403 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %404 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %405 = bitcast %struct.pdf_image_enum_s* %404 to i8*
  call void %402(%struct.gs_memory_s* %403, i8* %405, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0)) #6
  br label %nyi

if.end.453:                                       ; preds = %land.lhs.true.449, %lor.lhs.false.447
  %406 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %cmp454 = icmp eq %struct.gs_matrix_s* %406, null
  br i1 %cmp454, label %if.then.456, label %if.end.458

if.then.456:                                      ; preds = %if.end.453
  %407 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm457 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %407, i32 0, i32 5
  %408 = bitcast %struct.gs_matrix_fixed_s* %ctm457 to %struct.gs_matrix_s*
  store %struct.gs_matrix_s* %408, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  br label %if.end.458

if.end.458:                                       ; preds = %if.then.456, %if.end.453
  %409 = bitcast %struct.gs_matrix_s* %mat to i8*
  call void @llvm.lifetime.start(i64 24, i8* %409) #1
  %410 = bitcast %struct.gs_matrix_s* %bmat to i8*
  call void @llvm.lifetime.start(i64 24, i8* %410) #1
  %411 = bitcast i32* %code459 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %411) #1
  %p460 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 0
  %x461 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p460, i32 0, i32 0
  %412 = load i32, i32* %x461, align 4, !tbaa !105
  %sub462 = sub nsw i32 0, %412
  %p463 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 0
  %y464 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p463, i32 0, i32 1
  %413 = load i32, i32* %y464, align 4, !tbaa !107
  %sub465 = sub nsw i32 0, %413
  %414 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %Width466 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %414, i32 0, i32 2
  %415 = load i32, i32* %Width466, align 4, !tbaa !123
  %416 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %Height467 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %416, i32 0, i32 3
  %417 = load i32, i32* %Height467, align 4, !tbaa !124
  %418 = load i32, i32* %height, align 4, !tbaa !52
  call void @pdf_make_bitmap_matrix(%struct.gs_matrix_s* %bmat, i32 %sub462, i32 %sub465, i32 %415, i32 %417, i32 %418) #6
  %419 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %ImageMatrix468 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %419, i32 0, i32 1
  %call469 = call i32 @gs_matrix_invert(%struct.gs_matrix_s* %ImageMatrix468, %struct.gs_matrix_s* %mat) #6
  store i32 %call469, i32* %code459, align 4, !tbaa !52
  %cmp470 = icmp slt i32 %call469, 0
  br i1 %cmp470, label %if.then.481, label %lor.lhs.false.472

lor.lhs.false.472:                                ; preds = %if.end.458
  %call473 = call i32 @gs_matrix_multiply(%struct.gs_matrix_s* %bmat, %struct.gs_matrix_s* %mat, %struct.gs_matrix_s* %mat) #6
  store i32 %call473, i32* %code459, align 4, !tbaa !52
  %cmp474 = icmp slt i32 %call473, 0
  br i1 %cmp474, label %if.then.481, label %lor.lhs.false.476

lor.lhs.false.476:                                ; preds = %lor.lhs.false.472
  %420 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %421 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %mat477 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %421, i32 0, i32 13
  %call478 = call i32 @gs_matrix_multiply(%struct.gs_matrix_s* %mat, %struct.gs_matrix_s* %420, %struct.gs_matrix_s* %mat477) #6
  store i32 %call478, i32* %code459, align 4, !tbaa !52
  %cmp479 = icmp slt i32 %call478, 0
  br i1 %cmp479, label %if.then.481, label %if.end.484

if.then.481:                                      ; preds = %lor.lhs.false.476, %lor.lhs.false.472, %if.end.458
  %422 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs482 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %422, i32 0, i32 1
  %free_object483 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs482, i32 0, i32 2
  %423 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object483, align 8, !tbaa !114
  %424 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %425 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %426 = bitcast %struct.pdf_image_enum_s* %425 to i8*
  call void %423(%struct.gs_memory_s* %424, i8* %426, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0)) #6
  %427 = load i32, i32* %code459, align 4, !tbaa !52
  store i32 %427, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.497

if.end.484:                                       ; preds = %lor.lhs.false.476
  %428 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %mat485 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %428, i32 0, i32 13
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat485, i32 0, i32 0
  %429 = load float, float* %xx, align 4, !tbaa !159
  %430 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %mat486 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %430, i32 0, i32 13
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat486, i32 0, i32 3
  %431 = load float, float* %yy, align 4, !tbaa !160
  %mul487 = fmul float %429, %431
  %432 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %mat488 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %432, i32 0, i32 13
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat488, i32 0, i32 1
  %433 = load float, float* %xy, align 4, !tbaa !161
  %434 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %mat489 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %434, i32 0, i32 13
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat489, i32 0, i32 2
  %435 = load float, float* %yx, align 4, !tbaa !162
  %mul490 = fmul float %433, %435
  %cmp491 = fcmp oeq float %mul487, %mul490
  br i1 %cmp491, label %if.then.493, label %if.end.496

if.then.493:                                      ; preds = %if.end.484
  %436 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs494 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %436, i32 0, i32 1
  %free_object495 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs494, i32 0, i32 2
  %437 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object495, align 8, !tbaa !114
  %438 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %439 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %440 = bitcast %struct.pdf_image_enum_s* %439 to i8*
  call void %437(%struct.gs_memory_s* %438, i8* %440, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0)) #6
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup.497

if.end.496:                                       ; preds = %if.end.484
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.497

cleanup.497:                                      ; preds = %if.then.493, %if.end.496, %if.then.481
  %441 = bitcast i32* %code459 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %441) #1
  %442 = bitcast %struct.gs_matrix_s* %bmat to i8*
  call void @llvm.lifetime.end(i64 24, i8* %442) #1
  %443 = bitcast %struct.gs_matrix_s* %mat to i8*
  call void @llvm.lifetime.end(i64 24, i8* %443) #1
  %cleanup.dest.500 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.500, label %cleanup.1226 [
    i32 0, label %cleanup.cont
    i32 3, label %nyi
  ]

cleanup.cont:                                     ; preds = %cleanup.497
  %444 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %445 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call501 = call i32 @pdf_put_clip_path(%struct.gx_device_pdf_s* %444, %struct.gx_clip_path_s* %445) #6
  store i32 %call501, i32* %code, align 4, !tbaa !52
  %446 = load i32, i32* %code, align 4, !tbaa !52
  %cmp502 = icmp slt i32 %446, 0
  br i1 %cmp502, label %if.then.504, label %if.end.505

if.then.504:                                      ; preds = %cleanup.cont
  %447 = load i32, i32* %code, align 4, !tbaa !52
  store i32 %447, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1226

if.end.505:                                       ; preds = %cleanup.cont
  %448 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %writer = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %448, i32 0, i32 12
  call void @pdf_image_writer_init(%struct.pdf_image_writer_s* %writer) #6
  %449 = load i32, i32* %in_line, align 4, !tbaa !52
  %tobool506 = icmp ne i32 %449, 0
  br i1 %tobool506, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end.505
  %450 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %Width507 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %450, i32 0, i32 2
  %451 = load i32, i32* %Width507, align 4, !tbaa !123
  %cmp508 = icmp sle i32 %451, 64
  br i1 %cmp508, label %land.rhs.510, label %land.end.514

land.rhs.510:                                     ; preds = %lor.rhs
  %452 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %Height511 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %452, i32 0, i32 3
  %453 = load i32, i32* %Height511, align 4, !tbaa !124
  %cmp512 = icmp sle i32 %453, 64
  br label %land.end.514

land.end.514:                                     ; preds = %land.rhs.510, %lor.rhs
  %454 = phi i1 [ false, %lor.rhs ], [ %cmp512, %land.rhs.510 ]
  br label %lor.end

lor.end:                                          ; preds = %land.end.514, %if.end.505
  %455 = phi i1 [ true, %if.end.505 ], [ %454, %land.end.514 ]
  %cond516 = select i1 %455, i32 1, i32 2
  %456 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %writer517 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %456, i32 0, i32 12
  %alt_writer_count = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %writer517, i32 0, i32 1
  store i32 %cond516, i32* %alt_writer_count, align 4, !tbaa !163
  %457 = load %union.image_union_s*, %union.image_union_s** %image.addr, align 8, !tbaa !1
  %arrayidx518 = getelementptr inbounds %union.image_union_s, %union.image_union_s* %457, i64 0
  %pixel = bitcast %union.image_union_s* %arrayidx518 to %struct.gs_pixel_image_s*
  %ColorSpace519 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %pixel, i32 0, i32 9
  %458 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace519, align 8, !tbaa !147
  %cmp520 = icmp ne %struct.gs_color_space_s* %458, null
  br i1 %cmp520, label %land.lhs.true.522, label %lor.lhs.false.534

land.lhs.true.522:                                ; preds = %lor.end
  %459 = load %union.image_union_s*, %union.image_union_s** %image.addr, align 8, !tbaa !1
  %arrayidx523 = getelementptr inbounds %union.image_union_s, %union.image_union_s* %459, i64 0
  %pixel524 = bitcast %union.image_union_s* %arrayidx523 to %struct.gs_pixel_image_s*
  %ColorSpace525 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %pixel524, i32 0, i32 9
  %460 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace525, align 8, !tbaa !147
  %type526 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %460, i32 0, i32 0
  %461 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type526, align 8, !tbaa !164
  %index527 = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %461, i32 0, i32 0
  %462 = load i32, i32* %index527, align 4, !tbaa !166
  %cmp528 = icmp eq i32 %462, 10
  br i1 %cmp528, label %land.lhs.true.530, label %lor.lhs.false.534

land.lhs.true.530:                                ; preds = %land.lhs.true.522
  %463 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %params531 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %463, i32 0, i32 73
  %ColorImage = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params531, i32 0, i32 22
  %DownsampleType = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %ColorImage, i32 0, i32 7
  %464 = load i32, i32* %DownsampleType, align 4, !tbaa !168
  %cmp532 = icmp ne i32 %464, 2
  br i1 %cmp532, label %if.then.536, label %lor.lhs.false.534

lor.lhs.false.534:                                ; preds = %land.lhs.true.530, %land.lhs.true.522, %lor.end
  %465 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %transfer_not_identity = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %465, i32 0, i32 139
  %466 = load i32, i32* %transfer_not_identity, align 4, !tbaa !169
  %tobool535 = icmp ne i32 %466, 0
  br i1 %tobool535, label %if.then.536, label %if.end.537

if.then.536:                                      ; preds = %lor.lhs.false.534, %land.lhs.true.530
  store i32 1, i32* %force_lossless, align 4, !tbaa !52
  br label %if.end.537

if.end.537:                                       ; preds = %if.then.536, %lor.lhs.false.534
  %467 = load %union.image_union_s*, %union.image_union_s** %image.addr, align 8, !tbaa !1
  %arrayidx538 = getelementptr inbounds %union.image_union_s, %union.image_union_s* %467, i64 1
  %468 = load %union.image_union_s*, %union.image_union_s** %image.addr, align 8, !tbaa !1
  %arrayidx539 = getelementptr inbounds %union.image_union_s, %union.image_union_s* %468, i64 0
  %469 = bitcast %union.image_union_s* %arrayidx538 to i8*
  %470 = bitcast %union.image_union_s* %arrayidx539 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %469, i8* %470, i64 2248, i32 8, i1 false), !tbaa.struct !171
  %471 = load i32, i32* %in_line, align 4, !tbaa !52
  %tobool540 = icmp ne i32 %471, 0
  %cond541 = select i1 %tobool540, %struct.pdf_color_space_names_s* @pdf_color_space_names_short, %struct.pdf_color_space_names_s* @pdf_color_space_names
  store %struct.pdf_color_space_names_s* %cond541, %struct.pdf_color_space_names_s** %names, align 8, !tbaa !1
  %472 = load i32, i32* %is_mask, align 4, !tbaa !52
  %tobool542 = icmp ne i32 %472, 0
  br i1 %tobool542, label %if.end.578, label %if.then.543

if.then.543:                                      ; preds = %if.end.537
  %473 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %474 = bitcast %struct.gx_device_pdf_s* %473 to %struct.gx_device_psdf_s*
  %475 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %476 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %call544 = call i32 @psdf_is_converting_image_to_RGB(%struct.gx_device_psdf_s* %474, %struct.gs_imager_state_s* %475, %struct.gs_pixel_image_s* %476) #6
  %tobool545 = icmp ne i32 %call544, 0
  br i1 %tobool545, label %if.then.546, label %if.else.548

if.then.546:                                      ; preds = %if.then.543
  %477 = load %struct.pdf_color_space_names_s*, %struct.pdf_color_space_names_s** %names, align 8, !tbaa !1
  %DeviceRGB = getelementptr inbounds %struct.pdf_color_space_names_s, %struct.pdf_color_space_names_s* %477, i32 0, i32 2
  %478 = load i8*, i8** %DeviceRGB, align 8, !tbaa !223
  %call547 = call %struct.cos_value_s* @cos_c_string_value(%struct.cos_value_s* %cs_value, i8* %478) #6
  br label %if.end.577

if.else.548:                                      ; preds = %if.then.543
  %479 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %cmm_icc_profile_data = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %479, i32 0, i32 6
  %480 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data, align 8, !tbaa !218
  %cmp549 = icmp ne %struct.cmm_profile_s* %480, null
  br i1 %cmp549, label %land.lhs.true.551, label %if.end.556

land.lhs.true.551:                                ; preds = %if.else.548
  %481 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %cmm_icc_profile_data552 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %481, i32 0, i32 6
  %482 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data552, align 8, !tbaa !218
  %islab = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %482, i32 0, i32 2
  %483 = load i32, i32* %islab, align 4, !tbaa !293
  %tobool553 = icmp ne i32 %483, 0
  br i1 %tobool553, label %if.then.554, label %if.end.556

if.then.554:                                      ; preds = %land.lhs.true.551
  %484 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %cmm_icc_profile_data555 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %484, i32 0, i32 6
  call void @gscms_set_icc_range(%struct.cmm_profile_s** %cmm_icc_profile_data555) #6
  br label %if.end.556

if.end.556:                                       ; preds = %if.then.554, %land.lhs.true.551, %if.else.548
  %485 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %486 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %487 = load %struct.pdf_color_space_names_s*, %struct.pdf_color_space_names_s** %names, align 8, !tbaa !1
  %call557 = call i32 @pdf_convert_ICC(%struct.gx_device_pdf_s* %485, %struct.gs_color_space_s* %486, %struct.cos_value_s* %cs_value, %struct.pdf_color_space_names_s* %487) #6
  store i32 %call557, i32* %code, align 4, !tbaa !52
  %488 = load i32, i32* %code, align 4, !tbaa !52
  %cmp558 = icmp eq i32 %488, 0
  br i1 %cmp558, label %if.then.560, label %if.end.562

if.then.560:                                      ; preds = %if.end.556
  %489 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %490 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %491 = load %struct.pdf_color_space_names_s*, %struct.pdf_color_space_names_s** %names, align 8, !tbaa !1
  %492 = load i32, i32* %in_line, align 4, !tbaa !52
  %call561 = call i32 @pdf_color_space_named(%struct.gx_device_pdf_s* %489, %struct.cos_value_s* %cs_value, %struct.gs_range_s** %pranges, %struct.gs_color_space_s* %490, %struct.pdf_color_space_names_s* %491, i32 %492, i8* null, i32 0, i32 0) #6
  store i32 %call561, i32* %code, align 4, !tbaa !52
  br label %if.end.562

if.end.562:                                       ; preds = %if.then.560, %if.end.556
  %493 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %cmm_icc_profile_data563 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %493, i32 0, i32 6
  %494 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data563, align 8, !tbaa !218
  %cmp564 = icmp ne %struct.cmm_profile_s* %494, null
  br i1 %cmp564, label %land.lhs.true.566, label %if.end.572

land.lhs.true.566:                                ; preds = %if.end.562
  %495 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %cmm_icc_profile_data567 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %495, i32 0, i32 6
  %496 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data567, align 8, !tbaa !218
  %islab568 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %496, i32 0, i32 2
  %497 = load i32, i32* %islab568, align 4, !tbaa !293
  %tobool569 = icmp ne i32 %497, 0
  br i1 %tobool569, label %if.then.570, label %if.end.572

if.then.570:                                      ; preds = %land.lhs.true.566
  %498 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %cmm_icc_profile_data571 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %498, i32 0, i32 6
  %499 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data571, align 8, !tbaa !218
  call void @gsicc_setrange_lab(%struct.cmm_profile_s* %499) #6
  br label %if.end.572

if.end.572:                                       ; preds = %if.then.570, %land.lhs.true.566, %if.end.562
  %500 = load i32, i32* %code, align 4, !tbaa !52
  %cmp573 = icmp slt i32 %500, 0
  br i1 %cmp573, label %if.then.575, label %if.end.576

if.then.575:                                      ; preds = %if.end.572
  store i32 1, i32* %convert_to_process_colors, align 4, !tbaa !52
  br label %if.end.576

if.end.576:                                       ; preds = %if.then.575, %if.end.572
  br label %if.end.577

if.end.577:                                       ; preds = %if.end.576, %if.then.546
  br label %if.end.578

if.end.578:                                       ; preds = %if.end.577, %if.end.537
  %501 = load %union.image_union_s*, %union.image_union_s** %image.addr, align 8, !tbaa !1
  %arrayidx579 = getelementptr inbounds %union.image_union_s, %union.image_union_s* %501, i64 0
  %pixel580 = bitcast %union.image_union_s* %arrayidx579 to %struct.gs_pixel_image_s*
  %ColorSpace581 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %pixel580, i32 0, i32 9
  %502 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace581, align 8, !tbaa !147
  %cmp582 = icmp ne %struct.gs_color_space_s* %502, null
  br i1 %cmp582, label %land.lhs.true.584, label %if.end.832

land.lhs.true.584:                                ; preds = %if.end.578
  %503 = load i32, i32* %context.addr, align 4, !tbaa !5
  %cmp585 = icmp eq i32 %503, 1
  br i1 %cmp585, label %if.end.832, label %if.then.587

if.then.587:                                      ; preds = %land.lhs.true.584
  %504 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %params588 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %504, i32 0, i32 73
  %ColorConversionStrategy589 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params588, i32 0, i32 17
  %505 = load i32, i32* %ColorConversionStrategy589, align 4, !tbaa !220
  %cmp590 = icmp eq i32 %505, 6
  br i1 %cmp590, label %land.lhs.true.592, label %lor.lhs.false.597

land.lhs.true.592:                                ; preds = %if.then.587
  %506 = load %union.image_union_s*, %union.image_union_s** %image.addr, align 8, !tbaa !1
  %arrayidx593 = getelementptr inbounds %union.image_union_s, %union.image_union_s* %506, i64 0
  %pixel594 = bitcast %union.image_union_s* %arrayidx593 to %struct.gs_pixel_image_s*
  %call595 = call i32 @check_image_color_space(%struct.gs_pixel_image_s* %pixel594, i32 0) #6
  %tobool596 = icmp ne i32 %call595, 0
  br i1 %tobool596, label %lor.lhs.false.597, label %if.then.632

lor.lhs.false.597:                                ; preds = %land.lhs.true.592, %if.then.587
  %507 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %params598 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %507, i32 0, i32 73
  %ColorConversionStrategy599 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params598, i32 0, i32 17
  %508 = load i32, i32* %ColorConversionStrategy599, align 4, !tbaa !220
  %cmp600 = icmp eq i32 %508, 4
  br i1 %cmp600, label %land.lhs.true.602, label %lor.lhs.false.617

land.lhs.true.602:                                ; preds = %lor.lhs.false.597
  %509 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %510 = bitcast %struct.gx_device_pdf_s* %509 to %struct.gx_device_psdf_s*
  %511 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %512 = load %union.image_union_s*, %union.image_union_s** %image.addr, align 8, !tbaa !1
  %arrayidx603 = getelementptr inbounds %union.image_union_s, %union.image_union_s* %512, i64 0
  %pixel604 = bitcast %union.image_union_s* %arrayidx603 to %struct.gs_pixel_image_s*
  %call605 = call i32 @psdf_is_converting_image_to_RGB(%struct.gx_device_psdf_s* %510, %struct.gs_imager_state_s* %511, %struct.gs_pixel_image_s* %pixel604) #6
  %tobool606 = icmp ne i32 %call605, 0
  br i1 %tobool606, label %lor.lhs.false.617, label %land.lhs.true.607

land.lhs.true.607:                                ; preds = %land.lhs.true.602
  %513 = load %union.image_union_s*, %union.image_union_s** %image.addr, align 8, !tbaa !1
  %arrayidx608 = getelementptr inbounds %union.image_union_s, %union.image_union_s* %513, i64 0
  %pixel609 = bitcast %union.image_union_s* %arrayidx608 to %struct.gs_pixel_image_s*
  %call610 = call i32 @check_image_color_space(%struct.gs_pixel_image_s* %pixel609, i32 0) #6
  %tobool611 = icmp ne i32 %call610, 0
  br i1 %tobool611, label %lor.lhs.false.617, label %land.lhs.true.612

land.lhs.true.612:                                ; preds = %land.lhs.true.607
  %514 = load %union.image_union_s*, %union.image_union_s** %image.addr, align 8, !tbaa !1
  %arrayidx613 = getelementptr inbounds %union.image_union_s, %union.image_union_s* %514, i64 0
  %pixel614 = bitcast %union.image_union_s* %arrayidx613 to %struct.gs_pixel_image_s*
  %call615 = call i32 @check_image_color_space(%struct.gs_pixel_image_s* %pixel614, i32 1) #6
  %tobool616 = icmp ne i32 %call615, 0
  br i1 %tobool616, label %lor.lhs.false.617, label %if.then.632

lor.lhs.false.617:                                ; preds = %land.lhs.true.612, %land.lhs.true.607, %land.lhs.true.602, %lor.lhs.false.597
  %515 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %params618 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %515, i32 0, i32 73
  %ColorConversionStrategy619 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params618, i32 0, i32 17
  %516 = load i32, i32* %ColorConversionStrategy619, align 4, !tbaa !220
  %cmp620 = icmp eq i32 %516, 5
  br i1 %cmp620, label %land.lhs.true.622, label %if.end.831

land.lhs.true.622:                                ; preds = %lor.lhs.false.617
  %517 = load %union.image_union_s*, %union.image_union_s** %image.addr, align 8, !tbaa !1
  %arrayidx623 = getelementptr inbounds %union.image_union_s, %union.image_union_s* %517, i64 0
  %pixel624 = bitcast %union.image_union_s* %arrayidx623 to %struct.gs_pixel_image_s*
  %call625 = call i32 @check_image_color_space(%struct.gs_pixel_image_s* %pixel624, i32 0) #6
  %tobool626 = icmp ne i32 %call625, 0
  br i1 %tobool626, label %if.end.831, label %land.lhs.true.627

land.lhs.true.627:                                ; preds = %land.lhs.true.622
  %518 = load %union.image_union_s*, %union.image_union_s** %image.addr, align 8, !tbaa !1
  %arrayidx628 = getelementptr inbounds %union.image_union_s, %union.image_union_s* %518, i64 0
  %pixel629 = bitcast %union.image_union_s* %arrayidx628 to %struct.gs_pixel_image_s*
  %call630 = call i32 @check_image_color_space(%struct.gs_pixel_image_s* %pixel629, i32 2) #6
  %tobool631 = icmp ne i32 %call630, 0
  br i1 %tobool631, label %if.end.831, label %if.then.632

if.then.632:                                      ; preds = %land.lhs.true.627, %land.lhs.true.612, %land.lhs.true.592
  %519 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %params633 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %519, i32 0, i32 73
  %ColorConversionStrategy634 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params633, i32 0, i32 17
  %520 = load i32, i32* %ColorConversionStrategy634, align 4, !tbaa !220
  %cmp635 = icmp eq i32 %520, 5
  br i1 %cmp635, label %land.lhs.true.637, label %lor.lhs.false.690

land.lhs.true.637:                                ; preds = %if.then.632
  %521 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %521) #1
  %522 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %522) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i64 1) to i64), i64 ptrtoint ([11 x i8]* @.str.32 to i64)), i64 1), label %land.lhs.true.638, label %cond.false.683

land.lhs.true.638:                                ; preds = %land.lhs.true.637
  %call639 = call i64 @strlen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i32 0)) #9
  store i64 %call639, i64* %__s2_len, align 8, !tbaa !53
  %523 = load i64, i64* %__s2_len, align 8, !tbaa !53
  %cmp640 = icmp ult i64 %523, 4
  br i1 %cmp640, label %cond.true.642, label %cond.false.683

cond.true.642:                                    ; preds = %land.lhs.true.638
  %524 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %524) #1
  %525 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %525, i32 0, i32 11
  %cm_name = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 14
  %526 = load i8*, i8** %cm_name, align 8, !tbaa !297
  store i8* %526, i8** %__s1, align 8, !tbaa !1
  %527 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %527) #1
  %528 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx645 = getelementptr inbounds i8, i8* %528, i64 0
  %529 = load i8, i8* %arrayidx645, align 1, !tbaa !5
  %conv646 = zext i8 %529 to i32
  %530 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i32 0), align 1, !tbaa !5
  %conv647 = zext i8 %530 to i32
  %sub648 = sub nsw i32 %conv646, %conv647
  store i32 %sub648, i32* %__result, align 4, !tbaa !52
  %531 = load i64, i64* %__s2_len, align 8, !tbaa !53
  %cmp649 = icmp ugt i64 %531, 0
  br i1 %cmp649, label %land.lhs.true.651, label %if.end.681

land.lhs.true.651:                                ; preds = %cond.true.642
  %532 = load i32, i32* %__result, align 4, !tbaa !52
  %cmp652 = icmp eq i32 %532, 0
  br i1 %cmp652, label %if.then.654, label %if.end.681

if.then.654:                                      ; preds = %land.lhs.true.651
  %533 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx655 = getelementptr inbounds i8, i8* %533, i64 1
  %534 = load i8, i8* %arrayidx655, align 1, !tbaa !5
  %conv656 = zext i8 %534 to i32
  %535 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i64 1), align 1, !tbaa !5
  %conv657 = zext i8 %535 to i32
  %sub658 = sub nsw i32 %conv656, %conv657
  store i32 %sub658, i32* %__result, align 4, !tbaa !52
  %536 = load i64, i64* %__s2_len, align 8, !tbaa !53
  %cmp659 = icmp ugt i64 %536, 1
  br i1 %cmp659, label %land.lhs.true.661, label %if.end.680

land.lhs.true.661:                                ; preds = %if.then.654
  %537 = load i32, i32* %__result, align 4, !tbaa !52
  %cmp662 = icmp eq i32 %537, 0
  br i1 %cmp662, label %if.then.664, label %if.end.680

if.then.664:                                      ; preds = %land.lhs.true.661
  %538 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx665 = getelementptr inbounds i8, i8* %538, i64 2
  %539 = load i8, i8* %arrayidx665, align 1, !tbaa !5
  %conv666 = zext i8 %539 to i32
  %540 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i64 2), align 1, !tbaa !5
  %conv667 = zext i8 %540 to i32
  %sub668 = sub nsw i32 %conv666, %conv667
  store i32 %sub668, i32* %__result, align 4, !tbaa !52
  %541 = load i64, i64* %__s2_len, align 8, !tbaa !53
  %cmp669 = icmp ugt i64 %541, 2
  br i1 %cmp669, label %land.lhs.true.671, label %if.end.679

land.lhs.true.671:                                ; preds = %if.then.664
  %542 = load i32, i32* %__result, align 4, !tbaa !52
  %cmp672 = icmp eq i32 %542, 0
  br i1 %cmp672, label %if.then.674, label %if.end.679

if.then.674:                                      ; preds = %land.lhs.true.671
  %543 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx675 = getelementptr inbounds i8, i8* %543, i64 3
  %544 = load i8, i8* %arrayidx675, align 1, !tbaa !5
  %conv676 = zext i8 %544 to i32
  %545 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i64 3), align 1, !tbaa !5
  %conv677 = zext i8 %545 to i32
  %sub678 = sub nsw i32 %conv676, %conv677
  store i32 %sub678, i32* %__result, align 4, !tbaa !52
  br label %if.end.679

if.end.679:                                       ; preds = %if.then.674, %land.lhs.true.671, %if.then.664
  br label %if.end.680

if.end.680:                                       ; preds = %if.end.679, %land.lhs.true.661, %if.then.654
  br label %if.end.681

if.end.681:                                       ; preds = %if.end.680, %land.lhs.true.651, %cond.true.642
  %546 = load i32, i32* %__result, align 4, !tbaa !52
  store i32 %546, i32* %tmp682, !tbaa !52
  %547 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %547) #1
  %548 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %548) #1
  %549 = load i32, i32* %tmp682, !tbaa !52
  br label %cond.end.687

cond.false.683:                                   ; preds = %land.lhs.true.638, %land.lhs.true.637
  %550 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %color_info684 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %550, i32 0, i32 11
  %cm_name685 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info684, i32 0, i32 14
  %551 = load i8*, i8** %cm_name685, align 8, !tbaa !297
  %call686 = call i32 @strcmp(i8* %551, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i32 0)) #7
  br label %cond.end.687

cond.end.687:                                     ; preds = %cond.false.683, %if.end.681
  %cond688 = phi i32 [ %549, %if.end.681 ], [ %call686, %cond.false.683 ]
  store i32 %cond688, i32* %tmp, !tbaa !52
  %552 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %552) #1
  %553 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %553) #1
  %554 = load i32, i32* %tmp, !tbaa !52
  %tobool689 = icmp ne i32 %554, 0
  br i1 %tobool689, label %if.then.824, label %lor.lhs.false.690

lor.lhs.false.690:                                ; preds = %cond.end.687, %if.then.632
  %555 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %params691 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %555, i32 0, i32 73
  %ColorConversionStrategy692 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params691, i32 0, i32 17
  %556 = load i32, i32* %ColorConversionStrategy692, align 4, !tbaa !220
  %cmp693 = icmp eq i32 %556, 4
  br i1 %cmp693, label %land.lhs.true.695, label %lor.lhs.false.757

land.lhs.true.695:                                ; preds = %lor.lhs.false.690
  %557 = bitcast i64* %__s1_len697 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %557) #1
  %558 = bitcast i64* %__s2_len699 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %558) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i64 1) to i64), i64 ptrtoint ([10 x i8]* @.str.33 to i64)), i64 1), label %land.lhs.true.701, label %cond.false.750

land.lhs.true.701:                                ; preds = %land.lhs.true.695
  %call702 = call i64 @strlen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0)) #9
  store i64 %call702, i64* %__s2_len699, align 8, !tbaa !53
  %559 = load i64, i64* %__s2_len699, align 8, !tbaa !53
  %cmp703 = icmp ult i64 %559, 4
  br i1 %cmp703, label %cond.true.705, label %cond.false.750

cond.true.705:                                    ; preds = %land.lhs.true.701
  %560 = bitcast i8** %__s1707 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %560) #1
  %561 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %color_info708 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %561, i32 0, i32 11
  %cm_name709 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info708, i32 0, i32 14
  %562 = load i8*, i8** %cm_name709, align 8, !tbaa !297
  store i8* %562, i8** %__s1707, align 8, !tbaa !1
  %563 = bitcast i32* %__result711 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %563) #1
  %564 = load i8*, i8** %__s1707, align 8, !tbaa !1
  %arrayidx712 = getelementptr inbounds i8, i8* %564, i64 0
  %565 = load i8, i8* %arrayidx712, align 1, !tbaa !5
  %conv713 = zext i8 %565 to i32
  %566 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0), align 1, !tbaa !5
  %conv714 = zext i8 %566 to i32
  %sub715 = sub nsw i32 %conv713, %conv714
  store i32 %sub715, i32* %__result711, align 4, !tbaa !52
  %567 = load i64, i64* %__s2_len699, align 8, !tbaa !53
  %cmp716 = icmp ugt i64 %567, 0
  br i1 %cmp716, label %land.lhs.true.718, label %if.end.748

land.lhs.true.718:                                ; preds = %cond.true.705
  %568 = load i32, i32* %__result711, align 4, !tbaa !52
  %cmp719 = icmp eq i32 %568, 0
  br i1 %cmp719, label %if.then.721, label %if.end.748

if.then.721:                                      ; preds = %land.lhs.true.718
  %569 = load i8*, i8** %__s1707, align 8, !tbaa !1
  %arrayidx722 = getelementptr inbounds i8, i8* %569, i64 1
  %570 = load i8, i8* %arrayidx722, align 1, !tbaa !5
  %conv723 = zext i8 %570 to i32
  %571 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i64 1), align 1, !tbaa !5
  %conv724 = zext i8 %571 to i32
  %sub725 = sub nsw i32 %conv723, %conv724
  store i32 %sub725, i32* %__result711, align 4, !tbaa !52
  %572 = load i64, i64* %__s2_len699, align 8, !tbaa !53
  %cmp726 = icmp ugt i64 %572, 1
  br i1 %cmp726, label %land.lhs.true.728, label %if.end.747

land.lhs.true.728:                                ; preds = %if.then.721
  %573 = load i32, i32* %__result711, align 4, !tbaa !52
  %cmp729 = icmp eq i32 %573, 0
  br i1 %cmp729, label %if.then.731, label %if.end.747

if.then.731:                                      ; preds = %land.lhs.true.728
  %574 = load i8*, i8** %__s1707, align 8, !tbaa !1
  %arrayidx732 = getelementptr inbounds i8, i8* %574, i64 2
  %575 = load i8, i8* %arrayidx732, align 1, !tbaa !5
  %conv733 = zext i8 %575 to i32
  %576 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i64 2), align 1, !tbaa !5
  %conv734 = zext i8 %576 to i32
  %sub735 = sub nsw i32 %conv733, %conv734
  store i32 %sub735, i32* %__result711, align 4, !tbaa !52
  %577 = load i64, i64* %__s2_len699, align 8, !tbaa !53
  %cmp736 = icmp ugt i64 %577, 2
  br i1 %cmp736, label %land.lhs.true.738, label %if.end.746

land.lhs.true.738:                                ; preds = %if.then.731
  %578 = load i32, i32* %__result711, align 4, !tbaa !52
  %cmp739 = icmp eq i32 %578, 0
  br i1 %cmp739, label %if.then.741, label %if.end.746

if.then.741:                                      ; preds = %land.lhs.true.738
  %579 = load i8*, i8** %__s1707, align 8, !tbaa !1
  %arrayidx742 = getelementptr inbounds i8, i8* %579, i64 3
  %580 = load i8, i8* %arrayidx742, align 1, !tbaa !5
  %conv743 = zext i8 %580 to i32
  %581 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i64 3), align 1, !tbaa !5
  %conv744 = zext i8 %581 to i32
  %sub745 = sub nsw i32 %conv743, %conv744
  store i32 %sub745, i32* %__result711, align 4, !tbaa !52
  br label %if.end.746

if.end.746:                                       ; preds = %if.then.741, %land.lhs.true.738, %if.then.731
  br label %if.end.747

if.end.747:                                       ; preds = %if.end.746, %land.lhs.true.728, %if.then.721
  br label %if.end.748

if.end.748:                                       ; preds = %if.end.747, %land.lhs.true.718, %cond.true.705
  %582 = load i32, i32* %__result711, align 4, !tbaa !52
  store i32 %582, i32* %tmp749, !tbaa !52
  %583 = bitcast i32* %__result711 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %583) #1
  %584 = bitcast i8** %__s1707 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %584) #1
  %585 = load i32, i32* %tmp749, !tbaa !52
  br label %cond.end.754

cond.false.750:                                   ; preds = %land.lhs.true.701, %land.lhs.true.695
  %586 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %color_info751 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %586, i32 0, i32 11
  %cm_name752 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info751, i32 0, i32 14
  %587 = load i8*, i8** %cm_name752, align 8, !tbaa !297
  %call753 = call i32 @strcmp(i8* %587, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0)) #7
  br label %cond.end.754

cond.end.754:                                     ; preds = %cond.false.750, %if.end.748
  %cond755 = phi i32 [ %585, %if.end.748 ], [ %call753, %cond.false.750 ]
  store i32 %cond755, i32* %tmp700, !tbaa !52
  %588 = bitcast i64* %__s2_len699 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %588) #1
  %589 = bitcast i64* %__s1_len697 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %589) #1
  %590 = load i32, i32* %tmp700, !tbaa !52
  %tobool756 = icmp ne i32 %590, 0
  br i1 %tobool756, label %if.then.824, label %lor.lhs.false.757

lor.lhs.false.757:                                ; preds = %cond.end.754, %lor.lhs.false.690
  %591 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %params758 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %591, i32 0, i32 73
  %ColorConversionStrategy759 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params758, i32 0, i32 17
  %592 = load i32, i32* %ColorConversionStrategy759, align 4, !tbaa !220
  %cmp760 = icmp eq i32 %592, 6
  br i1 %cmp760, label %land.lhs.true.762, label %if.end.830

land.lhs.true.762:                                ; preds = %lor.lhs.false.757
  %593 = bitcast i64* %__s1_len764 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %593) #1
  %594 = bitcast i64* %__s2_len766 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %594) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i32 0, i64 1) to i64), i64 ptrtoint ([11 x i8]* @.str.34 to i64)), i64 1), label %land.lhs.true.768, label %cond.false.817

land.lhs.true.768:                                ; preds = %land.lhs.true.762
  %call769 = call i64 @strlen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i32 0, i32 0)) #9
  store i64 %call769, i64* %__s2_len766, align 8, !tbaa !53
  %595 = load i64, i64* %__s2_len766, align 8, !tbaa !53
  %cmp770 = icmp ult i64 %595, 4
  br i1 %cmp770, label %cond.true.772, label %cond.false.817

cond.true.772:                                    ; preds = %land.lhs.true.768
  %596 = bitcast i8** %__s1774 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %596) #1
  %597 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %color_info775 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %597, i32 0, i32 11
  %cm_name776 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info775, i32 0, i32 14
  %598 = load i8*, i8** %cm_name776, align 8, !tbaa !297
  store i8* %598, i8** %__s1774, align 8, !tbaa !1
  %599 = bitcast i32* %__result778 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %599) #1
  %600 = load i8*, i8** %__s1774, align 8, !tbaa !1
  %arrayidx779 = getelementptr inbounds i8, i8* %600, i64 0
  %601 = load i8, i8* %arrayidx779, align 1, !tbaa !5
  %conv780 = zext i8 %601 to i32
  %602 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i32 0, i32 0), align 1, !tbaa !5
  %conv781 = zext i8 %602 to i32
  %sub782 = sub nsw i32 %conv780, %conv781
  store i32 %sub782, i32* %__result778, align 4, !tbaa !52
  %603 = load i64, i64* %__s2_len766, align 8, !tbaa !53
  %cmp783 = icmp ugt i64 %603, 0
  br i1 %cmp783, label %land.lhs.true.785, label %if.end.815

land.lhs.true.785:                                ; preds = %cond.true.772
  %604 = load i32, i32* %__result778, align 4, !tbaa !52
  %cmp786 = icmp eq i32 %604, 0
  br i1 %cmp786, label %if.then.788, label %if.end.815

if.then.788:                                      ; preds = %land.lhs.true.785
  %605 = load i8*, i8** %__s1774, align 8, !tbaa !1
  %arrayidx789 = getelementptr inbounds i8, i8* %605, i64 1
  %606 = load i8, i8* %arrayidx789, align 1, !tbaa !5
  %conv790 = zext i8 %606 to i32
  %607 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i32 0, i64 1), align 1, !tbaa !5
  %conv791 = zext i8 %607 to i32
  %sub792 = sub nsw i32 %conv790, %conv791
  store i32 %sub792, i32* %__result778, align 4, !tbaa !52
  %608 = load i64, i64* %__s2_len766, align 8, !tbaa !53
  %cmp793 = icmp ugt i64 %608, 1
  br i1 %cmp793, label %land.lhs.true.795, label %if.end.814

land.lhs.true.795:                                ; preds = %if.then.788
  %609 = load i32, i32* %__result778, align 4, !tbaa !52
  %cmp796 = icmp eq i32 %609, 0
  br i1 %cmp796, label %if.then.798, label %if.end.814

if.then.798:                                      ; preds = %land.lhs.true.795
  %610 = load i8*, i8** %__s1774, align 8, !tbaa !1
  %arrayidx799 = getelementptr inbounds i8, i8* %610, i64 2
  %611 = load i8, i8* %arrayidx799, align 1, !tbaa !5
  %conv800 = zext i8 %611 to i32
  %612 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i32 0, i64 2), align 1, !tbaa !5
  %conv801 = zext i8 %612 to i32
  %sub802 = sub nsw i32 %conv800, %conv801
  store i32 %sub802, i32* %__result778, align 4, !tbaa !52
  %613 = load i64, i64* %__s2_len766, align 8, !tbaa !53
  %cmp803 = icmp ugt i64 %613, 2
  br i1 %cmp803, label %land.lhs.true.805, label %if.end.813

land.lhs.true.805:                                ; preds = %if.then.798
  %614 = load i32, i32* %__result778, align 4, !tbaa !52
  %cmp806 = icmp eq i32 %614, 0
  br i1 %cmp806, label %if.then.808, label %if.end.813

if.then.808:                                      ; preds = %land.lhs.true.805
  %615 = load i8*, i8** %__s1774, align 8, !tbaa !1
  %arrayidx809 = getelementptr inbounds i8, i8* %615, i64 3
  %616 = load i8, i8* %arrayidx809, align 1, !tbaa !5
  %conv810 = zext i8 %616 to i32
  %617 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i32 0, i64 3), align 1, !tbaa !5
  %conv811 = zext i8 %617 to i32
  %sub812 = sub nsw i32 %conv810, %conv811
  store i32 %sub812, i32* %__result778, align 4, !tbaa !52
  br label %if.end.813

if.end.813:                                       ; preds = %if.then.808, %land.lhs.true.805, %if.then.798
  br label %if.end.814

if.end.814:                                       ; preds = %if.end.813, %land.lhs.true.795, %if.then.788
  br label %if.end.815

if.end.815:                                       ; preds = %if.end.814, %land.lhs.true.785, %cond.true.772
  %618 = load i32, i32* %__result778, align 4, !tbaa !52
  store i32 %618, i32* %tmp816, !tbaa !52
  %619 = bitcast i32* %__result778 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %619) #1
  %620 = bitcast i8** %__s1774 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %620) #1
  %621 = load i32, i32* %tmp816, !tbaa !52
  br label %cond.end.821

cond.false.817:                                   ; preds = %land.lhs.true.768, %land.lhs.true.762
  %622 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %color_info818 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %622, i32 0, i32 11
  %cm_name819 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info818, i32 0, i32 14
  %623 = load i8*, i8** %cm_name819, align 8, !tbaa !297
  %call820 = call i32 @strcmp(i8* %623, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i32 0, i32 0)) #7
  br label %cond.end.821

cond.end.821:                                     ; preds = %cond.false.817, %if.end.815
  %cond822 = phi i32 [ %621, %if.end.815 ], [ %call820, %cond.false.817 ]
  store i32 %cond822, i32* %tmp767, !tbaa !52
  %624 = bitcast i64* %__s2_len766 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %624) #1
  %625 = bitcast i64* %__s1_len764 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %625) #1
  %626 = load i32, i32* %tmp767, !tbaa !52
  %tobool823 = icmp ne i32 %626, 0
  br i1 %tobool823, label %if.then.824, label %if.end.830

if.then.824:                                      ; preds = %cond.end.821, %cond.end.754, %cond.end.687
  %627 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory825 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %627, i32 0, i32 3
  %628 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory825, align 8, !tbaa !148
  %call826 = call i8* @gs_program_name() #6
  %call827 = call i64 @gs_revision_number() #6
  call void @emprintf_program_ident(%struct.gs_memory_s* %628, i8* %call826, i64 %call827) #6
  %629 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory828 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %629, i32 0, i32 3
  %630 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory828, align 8, !tbaa !148
  %call829 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %630, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.35, i32 0, i32 0)) #6
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1226

if.end.830:                                       ; preds = %cond.end.821, %lor.lhs.false.757
  store i32 1, i32* %convert_to_process_colors, align 4, !tbaa !52
  br label %if.end.831

if.end.831:                                       ; preds = %if.end.830, %land.lhs.true.627, %land.lhs.true.622, %lor.lhs.false.617
  br label %if.end.832

if.end.832:                                       ; preds = %if.end.831, %land.lhs.true.584, %if.end.578
  %631 = load i32, i32* %convert_to_process_colors, align 4, !tbaa !52
  %tobool833 = icmp ne i32 %631, 0
  br i1 %tobool833, label %if.then.834, label %if.end.869

if.then.834:                                      ; preds = %if.end.832
  %632 = bitcast i8** %sname to i8*
  call void @llvm.lifetime.start(i64 8, i8* %632) #1
  %633 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %pcm_color_info_index = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %633, i32 0, i32 206
  %634 = load i32, i32* %pcm_color_info_index, align 4, !tbaa !170
  switch i32 %634, label %sw.default.840 [
    i32 0, label %sw.bb.836
    i32 1, label %sw.bb.837
    i32 2, label %sw.bb.839
  ]

sw.bb.836:                                        ; preds = %if.then.834
  %635 = load %struct.pdf_color_space_names_s*, %struct.pdf_color_space_names_s** %names, align 8, !tbaa !1
  %DeviceGray = getelementptr inbounds %struct.pdf_color_space_names_s, %struct.pdf_color_space_names_s* %635, i32 0, i32 1
  %636 = load i8*, i8** %DeviceGray, align 8, !tbaa !221
  store i8* %636, i8** %sname, align 8, !tbaa !1
  br label %sw.epilog.846

sw.bb.837:                                        ; preds = %if.then.834
  %637 = load %struct.pdf_color_space_names_s*, %struct.pdf_color_space_names_s** %names, align 8, !tbaa !1
  %DeviceRGB838 = getelementptr inbounds %struct.pdf_color_space_names_s, %struct.pdf_color_space_names_s* %637, i32 0, i32 2
  %638 = load i8*, i8** %DeviceRGB838, align 8, !tbaa !223
  store i8* %638, i8** %sname, align 8, !tbaa !1
  br label %sw.epilog.846

sw.bb.839:                                        ; preds = %if.then.834
  %639 = load %struct.pdf_color_space_names_s*, %struct.pdf_color_space_names_s** %names, align 8, !tbaa !1
  %DeviceCMYK = getelementptr inbounds %struct.pdf_color_space_names_s, %struct.pdf_color_space_names_s* %639, i32 0, i32 0
  %640 = load i8*, i8** %DeviceCMYK, align 8, !tbaa !225
  store i8* %640, i8** %sname, align 8, !tbaa !1
  br label %sw.epilog.846

sw.default.840:                                   ; preds = %if.then.834
  %641 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory841 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %641, i32 0, i32 3
  %642 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory841, align 8, !tbaa !148
  %call842 = call i8* @gs_program_name() #6
  %call843 = call i64 @gs_revision_number() #6
  call void @emprintf_program_ident(%struct.gs_memory_s* %642, i8* %call842, i64 %call843) #6
  %643 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory844 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %643, i32 0, i32 3
  %644 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory844, align 8, !tbaa !148
  %call845 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %644, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.30, i32 0, i32 0)) #6
  store i32 -21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.866

sw.epilog.846:                                    ; preds = %sw.bb.839, %sw.bb.837, %sw.bb.836
  %645 = load i8*, i8** %sname, align 8, !tbaa !1
  %call847 = call %struct.cos_value_s* @cos_c_string_value(%struct.cos_value_s* %cs_value, i8* %645) #6
  %646 = load %union.image_union_s*, %union.image_union_s** %image.addr, align 8, !tbaa !1
  %arrayidx848 = getelementptr inbounds %union.image_union_s, %union.image_union_s* %646, i64 0
  %pixel849 = bitcast %union.image_union_s* %arrayidx848 to %struct.gs_pixel_image_s*
  %ColorSpace850 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %pixel849, i32 0, i32 9
  %647 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace850, align 8, !tbaa !147
  store %struct.gs_color_space_s* %647, %struct.gs_color_space_s** %pcs_orig, align 8, !tbaa !1
  %648 = load %union.image_union_s*, %union.image_union_s** %image.addr, align 8, !tbaa !1
  %arrayidx851 = getelementptr inbounds %union.image_union_s, %union.image_union_s* %648, i64 0
  %pixel852 = bitcast %union.image_union_s* %arrayidx851 to %struct.gs_pixel_image_s*
  %BitsPerComponent853 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %pixel852, i32 0, i32 4
  %649 = load i32, i32* %BitsPerComponent853, align 4, !tbaa !125
  store i32 %649, i32* %BPC_orig, align 4, !tbaa !52
  %650 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %651 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %pcm_color_info_index854 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %651, i32 0, i32 206
  %652 = load i32, i32* %pcm_color_info_index854, align 4, !tbaa !170
  %call855 = call i32 @make_device_color_space(%struct.gx_device_pdf_s* %650, i32 %652, %struct.gs_color_space_s** %pcs_device) #6
  store i32 %call855, i32* %code, align 4, !tbaa !52
  %653 = load i32, i32* %code, align 4, !tbaa !52
  %cmp856 = icmp slt i32 %653, 0
  br i1 %cmp856, label %if.then.858, label %if.end.859

if.then.858:                                      ; preds = %sw.epilog.846
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup.866

if.end.859:                                       ; preds = %sw.epilog.846
  %654 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_device, align 8, !tbaa !1
  %655 = load %union.image_union_s*, %union.image_union_s** %image.addr, align 8, !tbaa !1
  %arrayidx860 = getelementptr inbounds %union.image_union_s, %union.image_union_s* %655, i64 0
  %pixel861 = bitcast %union.image_union_s* %arrayidx860 to %struct.gs_pixel_image_s*
  %ColorSpace862 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %pixel861, i32 0, i32 9
  store %struct.gs_color_space_s* %654, %struct.gs_color_space_s** %ColorSpace862, align 8, !tbaa !147
  store i32 8, i32* %BPC_device, align 4, !tbaa !52
  %656 = load %union.image_union_s*, %union.image_union_s** %image.addr, align 8, !tbaa !1
  %arrayidx863 = getelementptr inbounds %union.image_union_s, %union.image_union_s* %656, i64 0
  %pixel864 = bitcast %union.image_union_s* %arrayidx863 to %struct.gs_pixel_image_s*
  %BitsPerComponent865 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %pixel864, i32 0, i32 4
  store i32 8, i32* %BitsPerComponent865, align 4, !tbaa !125
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.866

cleanup.866:                                      ; preds = %if.then.858, %if.end.859, %sw.default.840
  %657 = bitcast i8** %sname to i8*
  call void @llvm.lifetime.end(i64 8, i8* %657) #1
  %cleanup.dest.867 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.867, label %cleanup.1226 [
    i32 0, label %cleanup.cont.868
    i32 7, label %fail
  ]

cleanup.cont.868:                                 ; preds = %cleanup.866
  br label %if.end.869

if.end.869:                                       ; preds = %cleanup.cont.868, %if.end.832
  %658 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %CompatibilityLevel870 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %658, i32 0, i32 75
  %659 = load double, double* %CompatibilityLevel870, align 8, !tbaa !104
  %660 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %ParamCompatibilityLevel = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %660, i32 0, i32 72
  store double %659, double* %ParamCompatibilityLevel, align 8, !tbaa !172
  %661 = load %union.image_union_s*, %union.image_union_s** %image.addr, align 8, !tbaa !1
  %arrayidx871 = getelementptr inbounds %union.image_union_s, %union.image_union_s* %661, i64 0
  %pixel872 = bitcast %union.image_union_s* %arrayidx871 to %struct.gs_pixel_image_s*
  %ColorSpace873 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %pixel872, i32 0, i32 9
  %662 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace873, align 8, !tbaa !147
  call void @rc_increment_cs(%struct.gs_color_space_s* %662) #6
  %663 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %664 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %writer874 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %664, i32 0, i32 12
  %665 = load i32, i32* %width, align 4, !tbaa !52
  %666 = load i32, i32* %height, align 4, !tbaa !52
  %667 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pnamed, align 8, !tbaa !1
  %668 = load i32, i32* %in_line, align 4, !tbaa !52
  %call875 = call i32 @pdf_begin_write_image(%struct.gx_device_pdf_s* %663, %struct.pdf_image_writer_s* %writer874, i64 0, i32 %665, i32 %666, %struct.cos_dict_s* %667, i32 %668) #6
  store i32 %call875, i32* %code, align 4, !tbaa !52
  %669 = load i32, i32* %code, align 4, !tbaa !52
  %cmp876 = icmp slt i32 %669, 0
  br i1 %cmp876, label %if.then.878, label %if.end.879

if.then.878:                                      ; preds = %if.end.869
  br label %fail

if.end.879:                                       ; preds = %if.end.869
  %670 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %writer880 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %670, i32 0, i32 12
  %alt_writer_count881 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %writer880, i32 0, i32 1
  %671 = load i32, i32* %alt_writer_count881, align 4, !tbaa !163
  %cmp882 = icmp eq i32 %671, 1
  br i1 %cmp882, label %if.then.884, label %if.else.890

if.then.884:                                      ; preds = %if.end.879
  %672 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %673 = bitcast %struct.gx_device_pdf_s* %672 to %struct.gx_device_psdf_s*
  %674 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %writer885 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %674, i32 0, i32 12
  %binary = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %writer885, i32 0, i32 0
  %arrayidx886 = getelementptr inbounds [4 x %struct.psdf_binary_writer_s], [4 x %struct.psdf_binary_writer_s]* %binary, i32 0, i64 0
  %675 = load %union.image_union_s*, %union.image_union_s** %image.addr, align 8, !tbaa !1
  %arrayidx887 = getelementptr inbounds %union.image_union_s, %union.image_union_s* %675, i64 0
  %pixel888 = bitcast %union.image_union_s* %arrayidx887 to %struct.gs_pixel_image_s*
  %676 = load i32, i32* %in_line, align 4, !tbaa !52
  %call889 = call i32 @psdf_setup_lossless_filters(%struct.gx_device_psdf_s* %673, %struct.psdf_binary_writer_s* %arrayidx886, %struct.gs_pixel_image_s* %pixel888, i32 %676) #6
  store i32 %call889, i32* %code, align 4, !tbaa !52
  br label %if.end.920

if.else.890:                                      ; preds = %if.end.879
  %677 = load i32, i32* %force_lossless, align 4, !tbaa !52
  %tobool891 = icmp ne i32 %677, 0
  br i1 %tobool891, label %if.then.892, label %if.else.909

if.then.892:                                      ; preds = %if.else.890
  %678 = bitcast i32* %saved_downsample to i8*
  call void @llvm.lifetime.start(i64 4, i8* %678) #1
  %679 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %params894 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %679, i32 0, i32 73
  %ColorImage895 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params894, i32 0, i32 22
  %DownsampleType896 = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %ColorImage895, i32 0, i32 7
  %680 = load i32, i32* %DownsampleType896, align 4, !tbaa !168
  store i32 %680, i32* %saved_downsample, align 4, !tbaa !52
  %681 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %params897 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %681, i32 0, i32 73
  %ColorImage898 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params897, i32 0, i32 22
  %DownsampleType899 = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %ColorImage898, i32 0, i32 7
  store i32 2, i32* %DownsampleType899, align 4, !tbaa !168
  %682 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %683 = bitcast %struct.gx_device_pdf_s* %682 to %struct.gx_device_psdf_s*
  %684 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %writer900 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %684, i32 0, i32 12
  %binary901 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %writer900, i32 0, i32 0
  %arrayidx902 = getelementptr inbounds [4 x %struct.psdf_binary_writer_s], [4 x %struct.psdf_binary_writer_s]* %binary901, i32 0, i64 0
  %685 = load %union.image_union_s*, %union.image_union_s** %image.addr, align 8, !tbaa !1
  %arrayidx903 = getelementptr inbounds %union.image_union_s, %union.image_union_s* %685, i64 0
  %pixel904 = bitcast %union.image_union_s* %arrayidx903 to %struct.gs_pixel_image_s*
  %686 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %687 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %688 = load i32, i32* %in_line, align 4, !tbaa !52
  %call905 = call i32 @psdf_setup_image_filters(%struct.gx_device_psdf_s* %683, %struct.psdf_binary_writer_s* %arrayidx902, %struct.gs_pixel_image_s* %pixel904, %struct.gs_matrix_s* %686, %struct.gs_imager_state_s* %687, i32 1, i32 %688) #6
  store i32 %call905, i32* %code, align 4, !tbaa !52
  %689 = load i32, i32* %saved_downsample, align 4, !tbaa !52
  %690 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %params906 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %690, i32 0, i32 73
  %ColorImage907 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params906, i32 0, i32 22
  %DownsampleType908 = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %ColorImage907, i32 0, i32 7
  store i32 %689, i32* %DownsampleType908, align 4, !tbaa !168
  %691 = bitcast i32* %saved_downsample to i8*
  call void @llvm.lifetime.end(i64 4, i8* %691) #1
  br label %if.end.919

if.else.909:                                      ; preds = %if.else.890
  %692 = load i32, i32* %convert_to_process_colors, align 4, !tbaa !52
  %tobool910 = icmp ne i32 %692, 0
  br i1 %tobool910, label %if.end.918, label %if.then.911

if.then.911:                                      ; preds = %if.else.909
  %693 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %694 = bitcast %struct.gx_device_pdf_s* %693 to %struct.gx_device_psdf_s*
  %695 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %writer912 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %695, i32 0, i32 12
  %binary913 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %writer912, i32 0, i32 0
  %arrayidx914 = getelementptr inbounds [4 x %struct.psdf_binary_writer_s], [4 x %struct.psdf_binary_writer_s]* %binary913, i32 0, i64 0
  %696 = load %union.image_union_s*, %union.image_union_s** %image.addr, align 8, !tbaa !1
  %arrayidx915 = getelementptr inbounds %union.image_union_s, %union.image_union_s* %696, i64 0
  %pixel916 = bitcast %union.image_union_s* %arrayidx915 to %struct.gs_pixel_image_s*
  %697 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %698 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %699 = load i32, i32* %in_line, align 4, !tbaa !52
  %call917 = call i32 @psdf_setup_image_filters(%struct.gx_device_psdf_s* %694, %struct.psdf_binary_writer_s* %arrayidx914, %struct.gs_pixel_image_s* %pixel916, %struct.gs_matrix_s* %697, %struct.gs_imager_state_s* %698, i32 1, i32 %699) #6
  store i32 %call917, i32* %code, align 4, !tbaa !52
  br label %if.end.918

if.end.918:                                       ; preds = %if.then.911, %if.else.909
  br label %if.end.919

if.end.919:                                       ; preds = %if.end.918, %if.then.892
  br label %if.end.920

if.end.920:                                       ; preds = %if.end.919, %if.then.884
  %700 = load i32, i32* %code, align 4, !tbaa !52
  %cmp921 = icmp slt i32 %700, 0
  br i1 %cmp921, label %if.then.923, label %if.end.933

if.then.923:                                      ; preds = %if.end.920
  %701 = load %union.image_union_s*, %union.image_union_s** %image.addr, align 8, !tbaa !1
  %arrayidx924 = getelementptr inbounds %union.image_union_s, %union.image_union_s* %701, i64 0
  %pixel925 = bitcast %union.image_union_s* %arrayidx924 to %struct.gs_pixel_image_s*
  %ColorSpace926 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %pixel925, i32 0, i32 9
  %702 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace926, align 8, !tbaa !147
  %703 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %ColorSpace927 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %703, i32 0, i32 9
  %704 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace927, align 8, !tbaa !147
  %cmp928 = icmp eq %struct.gs_color_space_s* %702, %704
  br i1 %cmp928, label %if.then.930, label %if.end.932

if.then.930:                                      ; preds = %if.then.923
  %705 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %ColorSpace931 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %705, i32 0, i32 9
  %706 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace931, align 8, !tbaa !147
  call void @rc_decrement_only_cs(%struct.gs_color_space_s* %706, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.36, i32 0, i32 0)) #6
  br label %if.end.932

if.end.932:                                       ; preds = %if.then.930, %if.then.923
  br label %fail

if.end.933:                                       ; preds = %if.end.920
  %707 = load i32, i32* %convert_to_process_colors, align 4, !tbaa !52
  %tobool934 = icmp ne i32 %707, 0
  br i1 %tobool934, label %if.then.935, label %if.end.958

if.then.935:                                      ; preds = %if.end.933
  %708 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_orig, align 8, !tbaa !1
  %709 = load %union.image_union_s*, %union.image_union_s** %image.addr, align 8, !tbaa !1
  %arrayidx936 = getelementptr inbounds %union.image_union_s, %union.image_union_s* %709, i64 0
  %pixel937 = bitcast %union.image_union_s* %arrayidx936 to %struct.gs_pixel_image_s*
  %ColorSpace938 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %pixel937, i32 0, i32 9
  store %struct.gs_color_space_s* %708, %struct.gs_color_space_s** %ColorSpace938, align 8, !tbaa !147
  %710 = load i32, i32* %BPC_orig, align 4, !tbaa !52
  %711 = load %union.image_union_s*, %union.image_union_s** %image.addr, align 8, !tbaa !1
  %arrayidx939 = getelementptr inbounds %union.image_union_s, %union.image_union_s* %711, i64 0
  %pixel940 = bitcast %union.image_union_s* %arrayidx939 to %struct.gs_pixel_image_s*
  %BitsPerComponent941 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %pixel940, i32 0, i32 4
  store i32 %710, i32* %BitsPerComponent941, align 4, !tbaa !125
  %712 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %writer942 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %712, i32 0, i32 12
  %binary943 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %writer942, i32 0, i32 0
  %arrayidx944 = getelementptr inbounds [4 x %struct.psdf_binary_writer_s], [4 x %struct.psdf_binary_writer_s]* %binary943, i32 0, i64 0
  %713 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %714 = bitcast %struct.gx_device_pdf_s* %713 to %struct.gx_device_psdf_s*
  %715 = load %union.image_union_s*, %union.image_union_s** %image.addr, align 8, !tbaa !1
  %arrayidx945 = getelementptr inbounds %union.image_union_s, %union.image_union_s* %715, i64 0
  %pixel946 = bitcast %union.image_union_s* %arrayidx945 to %struct.gs_pixel_image_s*
  %716 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %call947 = call i32 @psdf_setup_image_colors_filter(%struct.psdf_binary_writer_s* %arrayidx944, %struct.gx_device_psdf_s* %714, %struct.gs_pixel_image_s* %pixel946, %struct.gs_imager_state_s* %716) #6
  store i32 %call947, i32* %code, align 4, !tbaa !52
  %717 = load i32, i32* %code, align 4, !tbaa !52
  %cmp948 = icmp slt i32 %717, 0
  br i1 %cmp948, label %if.then.950, label %if.end.951

if.then.950:                                      ; preds = %if.then.935
  br label %fail

if.end.951:                                       ; preds = %if.then.935
  %718 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_device, align 8, !tbaa !1
  %719 = load %union.image_union_s*, %union.image_union_s** %image.addr, align 8, !tbaa !1
  %arrayidx952 = getelementptr inbounds %union.image_union_s, %union.image_union_s* %719, i64 0
  %pixel953 = bitcast %union.image_union_s* %arrayidx952 to %struct.gs_pixel_image_s*
  %ColorSpace954 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %pixel953, i32 0, i32 9
  store %struct.gs_color_space_s* %718, %struct.gs_color_space_s** %ColorSpace954, align 8, !tbaa !147
  %720 = load i32, i32* %BPC_device, align 4, !tbaa !52
  %721 = load %union.image_union_s*, %union.image_union_s** %image.addr, align 8, !tbaa !1
  %arrayidx955 = getelementptr inbounds %union.image_union_s, %union.image_union_s* %721, i64 0
  %pixel956 = bitcast %union.image_union_s* %arrayidx955 to %struct.gs_pixel_image_s*
  %BitsPerComponent957 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %pixel956, i32 0, i32 4
  store i32 %720, i32* %BitsPerComponent957, align 4, !tbaa !125
  br label %if.end.958

if.end.958:                                       ; preds = %if.end.951, %if.end.933
  %722 = load %union.image_union_s*, %union.image_union_s** %image.addr, align 8, !tbaa !1
  %arrayidx959 = getelementptr inbounds %union.image_union_s, %union.image_union_s* %722, i64 1
  %pixel960 = bitcast %union.image_union_s* %arrayidx959 to %struct.gs_pixel_image_s*
  %ColorSpace961 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %pixel960, i32 0, i32 9
  %723 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace961, align 8, !tbaa !147
  call void @rc_increment_cs(%struct.gs_color_space_s* %723) #6
  %724 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %writer962 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %724, i32 0, i32 12
  %alt_writer_count963 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %writer962, i32 0, i32 1
  %725 = load i32, i32* %alt_writer_count963, align 4, !tbaa !163
  %cmp964 = icmp sgt i32 %725, 1
  br i1 %cmp964, label %if.then.966, label %if.end.1107

if.then.966:                                      ; preds = %if.end.958
  %726 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %727 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %writer967 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %727, i32 0, i32 12
  %binary968 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %writer967, i32 0, i32 0
  %arrayidx969 = getelementptr inbounds [4 x %struct.psdf_binary_writer_s], [4 x %struct.psdf_binary_writer_s]* %binary968, i32 0, i64 1
  %call970 = call i32 @pdf_make_alt_stream(%struct.gx_device_pdf_s* %726, %struct.psdf_binary_writer_s* %arrayidx969) #6
  store i32 %call970, i32* %code, align 4, !tbaa !52
  %728 = load i32, i32* %code, align 4, !tbaa !52
  %tobool971 = icmp ne i32 %728, 0
  br i1 %tobool971, label %if.then.972, label %if.end.973

if.then.972:                                      ; preds = %if.then.966
  br label %fail

if.end.973:                                       ; preds = %if.then.966
  %729 = load i32, i32* %convert_to_process_colors, align 4, !tbaa !52
  %tobool974 = icmp ne i32 %729, 0
  br i1 %tobool974, label %if.then.975, label %if.end.982

if.then.975:                                      ; preds = %if.end.973
  %730 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_device, align 8, !tbaa !1
  %731 = load %union.image_union_s*, %union.image_union_s** %image.addr, align 8, !tbaa !1
  %arrayidx976 = getelementptr inbounds %union.image_union_s, %union.image_union_s* %731, i64 1
  %pixel977 = bitcast %union.image_union_s* %arrayidx976 to %struct.gs_pixel_image_s*
  %ColorSpace978 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %pixel977, i32 0, i32 9
  store %struct.gs_color_space_s* %730, %struct.gs_color_space_s** %ColorSpace978, align 8, !tbaa !147
  %732 = load i32, i32* %BPC_device, align 4, !tbaa !52
  %733 = load %union.image_union_s*, %union.image_union_s** %image.addr, align 8, !tbaa !1
  %arrayidx979 = getelementptr inbounds %union.image_union_s, %union.image_union_s* %733, i64 1
  %pixel980 = bitcast %union.image_union_s* %arrayidx979 to %struct.gs_pixel_image_s*
  %BitsPerComponent981 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %pixel980, i32 0, i32 4
  store i32 %732, i32* %BitsPerComponent981, align 4, !tbaa !125
  br label %if.end.982

if.end.982:                                       ; preds = %if.then.975, %if.end.973
  %734 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %735 = bitcast %struct.gx_device_pdf_s* %734 to %struct.gx_device_psdf_s*
  %736 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %writer983 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %736, i32 0, i32 12
  %binary984 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %writer983, i32 0, i32 0
  %arrayidx985 = getelementptr inbounds [4 x %struct.psdf_binary_writer_s], [4 x %struct.psdf_binary_writer_s]* %binary984, i32 0, i64 1
  %737 = load %union.image_union_s*, %union.image_union_s** %image.addr, align 8, !tbaa !1
  %arrayidx986 = getelementptr inbounds %union.image_union_s, %union.image_union_s* %737, i64 1
  %pixel987 = bitcast %union.image_union_s* %arrayidx986 to %struct.gs_pixel_image_s*
  %738 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %739 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %740 = load i32, i32* %force_lossless, align 4, !tbaa !52
  %741 = load i32, i32* %in_line, align 4, !tbaa !52
  %call988 = call i32 @psdf_setup_image_filters(%struct.gx_device_psdf_s* %735, %struct.psdf_binary_writer_s* %arrayidx985, %struct.gs_pixel_image_s* %pixel987, %struct.gs_matrix_s* %738, %struct.gs_imager_state_s* %739, i32 %740, i32 %741) #6
  store i32 %call988, i32* %code, align 4, !tbaa !52
  %742 = load i32, i32* %code, align 4, !tbaa !52
  %cmp989 = icmp eq i32 %742, -15
  br i1 %cmp989, label %if.then.991, label %if.else.1026

if.then.991:                                      ; preds = %if.end.982
  store i32 1, i32* %i, align 4, !tbaa !52
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.991
  %743 = load i32, i32* %i, align 4, !tbaa !52
  %744 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %writer992 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %744, i32 0, i32 12
  %alt_writer_count993 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %writer992, i32 0, i32 1
  %745 = load i32, i32* %alt_writer_count993, align 4, !tbaa !163
  %cmp994 = icmp slt i32 %743, %745
  br i1 %cmp994, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %746 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %746) #1
  %747 = load i32, i32* %i, align 4, !tbaa !52
  %idxprom = sext i32 %747 to i64
  %748 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %writer997 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %748, i32 0, i32 12
  %binary998 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %writer997, i32 0, i32 0
  %arrayidx999 = getelementptr inbounds [4 x %struct.psdf_binary_writer_s], [4 x %struct.psdf_binary_writer_s]* %binary998, i32 0, i64 %idxprom
  %strm = getelementptr inbounds %struct.psdf_binary_writer_s, %struct.psdf_binary_writer_s* %arrayidx999, i32 0, i32 2
  %749 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !173
  store %struct.stream_s* %749, %struct.stream_s** %s, align 8, !tbaa !1
  %750 = bitcast %struct.cos_stream_s** %pcos to i8*
  call void @llvm.lifetime.start(i64 8, i8* %750) #1
  %751 = load i32, i32* %i, align 4, !tbaa !52
  %idxprom1001 = sext i32 %751 to i64
  %752 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %writer1002 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %752, i32 0, i32 12
  %binary1003 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %writer1002, i32 0, i32 0
  %arrayidx1004 = getelementptr inbounds [4 x %struct.psdf_binary_writer_s], [4 x %struct.psdf_binary_writer_s]* %binary1003, i32 0, i64 %idxprom1001
  %strm1005 = getelementptr inbounds %struct.psdf_binary_writer_s, %struct.psdf_binary_writer_s* %arrayidx1004, i32 0, i32 2
  %753 = load %struct.stream_s*, %struct.stream_s** %strm1005, align 8, !tbaa !173
  %call1006 = call %struct.cos_stream_s* @cos_stream_from_pipeline(%struct.stream_s* %753) #6
  store %struct.cos_stream_s* %call1006, %struct.cos_stream_s** %pcos, align 8, !tbaa !1
  %call1007 = call i32 @s_close_filters(%struct.stream_s** %s, %struct.stream_s* null) #6
  %754 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %754, i32 0, i32 43
  %755 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory, align 8, !tbaa !175
  %procs1008 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %755, i32 0, i32 1
  %free_object1009 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs1008, i32 0, i32 2
  %756 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object1009, align 8, !tbaa !114
  %757 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory1010 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %757, i32 0, i32 43
  %758 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory1010, align 8, !tbaa !175
  %759 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %760 = bitcast %struct.stream_s* %759 to i8*
  call void %756(%struct.gs_memory_s* %758, i8* %760, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i32 0, i32 0)) #6
  %761 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcos, align 8, !tbaa !1
  %cos_procs1011 = getelementptr inbounds %struct.cos_stream_s, %struct.cos_stream_s* %761, i32 0, i32 0
  %762 = load %struct.cos_object_procs_s*, %struct.cos_object_procs_s** %cos_procs1011, align 8, !tbaa !176
  %release = getelementptr inbounds %struct.cos_object_procs_s, %struct.cos_object_procs_s* %762, i32 0, i32 0
  %763 = load void (%struct.cos_object_s*, i8*)*, void (%struct.cos_object_s*, i8*)** %release, align 8, !tbaa !178
  %764 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcos, align 8, !tbaa !1
  %765 = bitcast %struct.cos_stream_s* %764 to %struct.cos_object_s*
  call void %763(%struct.cos_object_s* %765, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.17, i32 0, i32 0)) #6
  %766 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory1012 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %766, i32 0, i32 43
  %767 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory1012, align 8, !tbaa !175
  %procs1013 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %767, i32 0, i32 1
  %free_object1014 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs1013, i32 0, i32 2
  %768 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object1014, align 8, !tbaa !114
  %769 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory1015 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %769, i32 0, i32 43
  %770 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory1015, align 8, !tbaa !175
  %771 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcos, align 8, !tbaa !1
  %772 = bitcast %struct.cos_stream_s* %771 to i8*
  call void %768(%struct.gs_memory_s* %770, i8* %772, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i32 0, i32 0)) #6
  %773 = bitcast %struct.cos_stream_s** %pcos to i8*
  call void @llvm.lifetime.end(i64 8, i8* %773) #1
  %774 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %774) #1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %775 = load i32, i32* %i, align 4, !tbaa !52
  %inc = add nsw i32 %775, 1
  store i32 %inc, i32* %i, align 4, !tbaa !52
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %776 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %writer1016 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %776, i32 0, i32 12
  %alt_writer_count1017 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %writer1016, i32 0, i32 1
  store i32 1, i32* %alt_writer_count1017, align 4, !tbaa !163
  %777 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %writer1018 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %777, i32 0, i32 12
  %binary1019 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %writer1018, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4 x %struct.psdf_binary_writer_s], [4 x %struct.psdf_binary_writer_s]* %binary1019, i32 0, i32 0
  %add.ptr = getelementptr inbounds %struct.psdf_binary_writer_s, %struct.psdf_binary_writer_s* %arraydecay, i64 1
  %778 = bitcast %struct.psdf_binary_writer_s* %add.ptr to i8*
  %call1020 = call i8* @memset(i8* %778, i32 0, i64 32) #7
  %779 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %writer1021 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %779, i32 0, i32 12
  %binary1022 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %writer1021, i32 0, i32 0
  %arraydecay1023 = getelementptr inbounds [4 x %struct.psdf_binary_writer_s], [4 x %struct.psdf_binary_writer_s]* %binary1022, i32 0, i32 0
  %add.ptr1024 = getelementptr inbounds %struct.psdf_binary_writer_s, %struct.psdf_binary_writer_s* %arraydecay1023, i64 2
  %780 = bitcast %struct.psdf_binary_writer_s* %add.ptr1024 to i8*
  %call1025 = call i8* @memset(i8* %780, i32 0, i64 32) #7
  br label %if.end.1106

if.else.1026:                                     ; preds = %if.end.982
  %781 = load i32, i32* %code, align 4, !tbaa !52
  %tobool1027 = icmp ne i32 %781, 0
  br i1 %tobool1027, label %if.then.1028, label %if.else.1038

if.then.1028:                                     ; preds = %if.else.1026
  %782 = load %union.image_union_s*, %union.image_union_s** %image.addr, align 8, !tbaa !1
  %arrayidx1029 = getelementptr inbounds %union.image_union_s, %union.image_union_s* %782, i64 1
  %pixel1030 = bitcast %union.image_union_s* %arrayidx1029 to %struct.gs_pixel_image_s*
  %ColorSpace1031 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %pixel1030, i32 0, i32 9
  %783 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace1031, align 8, !tbaa !147
  %784 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %ColorSpace1032 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %784, i32 0, i32 9
  %785 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace1032, align 8, !tbaa !147
  %cmp1033 = icmp eq %struct.gs_color_space_s* %783, %785
  br i1 %cmp1033, label %if.then.1035, label %if.end.1037

if.then.1035:                                     ; preds = %if.then.1028
  %786 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %ColorSpace1036 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %786, i32 0, i32 9
  %787 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace1036, align 8, !tbaa !147
  call void @rc_decrement_only_cs(%struct.gs_color_space_s* %787, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.36, i32 0, i32 0)) #6
  br label %if.end.1037

if.end.1037:                                      ; preds = %if.then.1035, %if.then.1028
  br label %fail

if.else.1038:                                     ; preds = %if.else.1026
  %788 = load i32, i32* %convert_to_process_colors, align 4, !tbaa !52
  %tobool1039 = icmp ne i32 %788, 0
  br i1 %tobool1039, label %if.then.1040, label %if.end.1104

if.then.1040:                                     ; preds = %if.else.1038
  %789 = bitcast i32* %Width1042 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %789) #1
  %790 = load %union.image_union_s*, %union.image_union_s** %image.addr, align 8, !tbaa !1
  %arrayidx1043 = getelementptr inbounds %union.image_union_s, %union.image_union_s* %790, i64 1
  %pixel1044 = bitcast %union.image_union_s* %arrayidx1043 to %struct.gs_pixel_image_s*
  %Width1045 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %pixel1044, i32 0, i32 2
  %791 = load i32, i32* %Width1045, align 4, !tbaa !123
  store i32 %791, i32* %Width1042, align 4, !tbaa !52
  %792 = bitcast i32* %Height1047 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %792) #1
  %793 = load %union.image_union_s*, %union.image_union_s** %image.addr, align 8, !tbaa !1
  %arrayidx1048 = getelementptr inbounds %union.image_union_s, %union.image_union_s* %793, i64 1
  %pixel1049 = bitcast %union.image_union_s* %arrayidx1048 to %struct.gs_pixel_image_s*
  %Height1050 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %pixel1049, i32 0, i32 3
  %794 = load i32, i32* %Height1050, align 4, !tbaa !124
  store i32 %794, i32* %Height1047, align 4, !tbaa !52
  %795 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_orig, align 8, !tbaa !1
  %796 = load %union.image_union_s*, %union.image_union_s** %image.addr, align 8, !tbaa !1
  %arrayidx1051 = getelementptr inbounds %union.image_union_s, %union.image_union_s* %796, i64 1
  %pixel1052 = bitcast %union.image_union_s* %arrayidx1051 to %struct.gs_pixel_image_s*
  %ColorSpace1053 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %pixel1052, i32 0, i32 9
  store %struct.gs_color_space_s* %795, %struct.gs_color_space_s** %ColorSpace1053, align 8, !tbaa !147
  %797 = load i32, i32* %BPC_orig, align 4, !tbaa !52
  %798 = load %union.image_union_s*, %union.image_union_s** %image.addr, align 8, !tbaa !1
  %arrayidx1054 = getelementptr inbounds %union.image_union_s, %union.image_union_s* %798, i64 1
  %pixel1055 = bitcast %union.image_union_s* %arrayidx1054 to %struct.gs_pixel_image_s*
  %BitsPerComponent1056 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %pixel1055, i32 0, i32 4
  store i32 %797, i32* %BitsPerComponent1056, align 4, !tbaa !125
  %799 = load %union.image_union_s*, %union.image_union_s** %image.addr, align 8, !tbaa !1
  %arrayidx1057 = getelementptr inbounds %union.image_union_s, %union.image_union_s* %799, i64 0
  %pixel1058 = bitcast %union.image_union_s* %arrayidx1057 to %struct.gs_pixel_image_s*
  %Width1059 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %pixel1058, i32 0, i32 2
  %800 = load i32, i32* %Width1059, align 4, !tbaa !123
  %801 = load %union.image_union_s*, %union.image_union_s** %image.addr, align 8, !tbaa !1
  %arrayidx1060 = getelementptr inbounds %union.image_union_s, %union.image_union_s* %801, i64 1
  %pixel1061 = bitcast %union.image_union_s* %arrayidx1060 to %struct.gs_pixel_image_s*
  %Width1062 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %pixel1061, i32 0, i32 2
  store i32 %800, i32* %Width1062, align 4, !tbaa !123
  %802 = load %union.image_union_s*, %union.image_union_s** %image.addr, align 8, !tbaa !1
  %arrayidx1063 = getelementptr inbounds %union.image_union_s, %union.image_union_s* %802, i64 0
  %pixel1064 = bitcast %union.image_union_s* %arrayidx1063 to %struct.gs_pixel_image_s*
  %Height1065 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %pixel1064, i32 0, i32 3
  %803 = load i32, i32* %Height1065, align 4, !tbaa !124
  %804 = load %union.image_union_s*, %union.image_union_s** %image.addr, align 8, !tbaa !1
  %arrayidx1066 = getelementptr inbounds %union.image_union_s, %union.image_union_s* %804, i64 1
  %pixel1067 = bitcast %union.image_union_s* %arrayidx1066 to %struct.gs_pixel_image_s*
  %Height1068 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %pixel1067, i32 0, i32 3
  store i32 %803, i32* %Height1068, align 4, !tbaa !124
  %805 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %writer1069 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %805, i32 0, i32 12
  %binary1070 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %writer1069, i32 0, i32 0
  %arrayidx1071 = getelementptr inbounds [4 x %struct.psdf_binary_writer_s], [4 x %struct.psdf_binary_writer_s]* %binary1070, i32 0, i64 1
  %806 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %807 = bitcast %struct.gx_device_pdf_s* %806 to %struct.gx_device_psdf_s*
  %808 = load %union.image_union_s*, %union.image_union_s** %image.addr, align 8, !tbaa !1
  %arrayidx1072 = getelementptr inbounds %union.image_union_s, %union.image_union_s* %808, i64 1
  %pixel1073 = bitcast %union.image_union_s* %arrayidx1072 to %struct.gs_pixel_image_s*
  %809 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %call1074 = call i32 @psdf_setup_image_colors_filter(%struct.psdf_binary_writer_s* %arrayidx1071, %struct.gx_device_psdf_s* %807, %struct.gs_pixel_image_s* %pixel1073, %struct.gs_imager_state_s* %809) #6
  store i32 %call1074, i32* %code, align 4, !tbaa !52
  %810 = load i32, i32* %code, align 4, !tbaa !52
  %cmp1075 = icmp slt i32 %810, 0
  br i1 %cmp1075, label %if.then.1077, label %if.end.1087

if.then.1077:                                     ; preds = %if.then.1040
  %811 = load %union.image_union_s*, %union.image_union_s** %image.addr, align 8, !tbaa !1
  %arrayidx1078 = getelementptr inbounds %union.image_union_s, %union.image_union_s* %811, i64 1
  %pixel1079 = bitcast %union.image_union_s* %arrayidx1078 to %struct.gs_pixel_image_s*
  %ColorSpace1080 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %pixel1079, i32 0, i32 9
  %812 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace1080, align 8, !tbaa !147
  %813 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %ColorSpace1081 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %813, i32 0, i32 9
  %814 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace1081, align 8, !tbaa !147
  %cmp1082 = icmp eq %struct.gs_color_space_s* %812, %814
  br i1 %cmp1082, label %if.then.1084, label %if.end.1086

if.then.1084:                                     ; preds = %if.then.1077
  %815 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %ColorSpace1085 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %815, i32 0, i32 9
  %816 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace1085, align 8, !tbaa !147
  call void @rc_decrement_only_cs(%struct.gs_color_space_s* %816, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.36, i32 0, i32 0)) #6
  br label %if.end.1086

if.end.1086:                                      ; preds = %if.then.1084, %if.then.1077
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup.1100

if.end.1087:                                      ; preds = %if.then.1040
  %817 = load i32, i32* %Width1042, align 4, !tbaa !52
  %818 = load %union.image_union_s*, %union.image_union_s** %image.addr, align 8, !tbaa !1
  %arrayidx1088 = getelementptr inbounds %union.image_union_s, %union.image_union_s* %818, i64 1
  %pixel1089 = bitcast %union.image_union_s* %arrayidx1088 to %struct.gs_pixel_image_s*
  %Width1090 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %pixel1089, i32 0, i32 2
  store i32 %817, i32* %Width1090, align 4, !tbaa !123
  %819 = load i32, i32* %Height1047, align 4, !tbaa !52
  %820 = load %union.image_union_s*, %union.image_union_s** %image.addr, align 8, !tbaa !1
  %arrayidx1091 = getelementptr inbounds %union.image_union_s, %union.image_union_s* %820, i64 1
  %pixel1092 = bitcast %union.image_union_s* %arrayidx1091 to %struct.gs_pixel_image_s*
  %Height1093 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %pixel1092, i32 0, i32 3
  store i32 %819, i32* %Height1093, align 4, !tbaa !124
  %821 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_device, align 8, !tbaa !1
  %822 = load %union.image_union_s*, %union.image_union_s** %image.addr, align 8, !tbaa !1
  %arrayidx1094 = getelementptr inbounds %union.image_union_s, %union.image_union_s* %822, i64 1
  %pixel1095 = bitcast %union.image_union_s* %arrayidx1094 to %struct.gs_pixel_image_s*
  %ColorSpace1096 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %pixel1095, i32 0, i32 9
  store %struct.gs_color_space_s* %821, %struct.gs_color_space_s** %ColorSpace1096, align 8, !tbaa !147
  %823 = load i32, i32* %BPC_device, align 4, !tbaa !52
  %824 = load %union.image_union_s*, %union.image_union_s** %image.addr, align 8, !tbaa !1
  %arrayidx1097 = getelementptr inbounds %union.image_union_s, %union.image_union_s* %824, i64 1
  %pixel1098 = bitcast %union.image_union_s* %arrayidx1097 to %struct.gs_pixel_image_s*
  %BitsPerComponent1099 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %pixel1098, i32 0, i32 4
  store i32 %823, i32* %BitsPerComponent1099, align 4, !tbaa !125
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.1100

cleanup.1100:                                     ; preds = %if.end.1086, %if.end.1087
  %825 = bitcast i32* %Height1047 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %825) #1
  %826 = bitcast i32* %Width1042 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %826) #1
  %cleanup.dest.1102 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.1102, label %cleanup.1226 [
    i32 0, label %cleanup.cont.1103
    i32 7, label %fail
  ]

cleanup.cont.1103:                                ; preds = %cleanup.1100
  br label %if.end.1104

if.end.1104:                                      ; preds = %cleanup.cont.1103, %if.else.1038
  br label %if.end.1105

if.end.1105:                                      ; preds = %if.end.1104
  br label %if.end.1106

if.end.1106:                                      ; preds = %if.end.1105, %for.end
  br label %if.end.1107

if.end.1107:                                      ; preds = %if.end.1106, %if.end.958
  %827 = load %union.image_union_s*, %union.image_union_s** %image.addr, align 8, !tbaa !1
  %arrayidx1108 = getelementptr inbounds %union.image_union_s, %union.image_union_s* %827, i64 1
  %pixel1109 = bitcast %union.image_union_s* %arrayidx1108 to %struct.gs_pixel_image_s*
  %ColorSpace1110 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %pixel1109, i32 0, i32 9
  %828 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace1110, align 8, !tbaa !147
  %829 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %ColorSpace1111 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %829, i32 0, i32 9
  %830 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace1111, align 8, !tbaa !147
  %cmp1112 = icmp eq %struct.gs_color_space_s* %828, %830
  br i1 %cmp1112, label %if.then.1114, label %if.end.1116

if.then.1114:                                     ; preds = %if.end.1107
  %831 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %ColorSpace1115 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %831, i32 0, i32 9
  %832 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace1115, align 8, !tbaa !147
  call void @rc_decrement_only_cs(%struct.gs_color_space_s* %832, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.36, i32 0, i32 0)) #6
  br label %if.end.1116

if.end.1116:                                      ; preds = %if.then.1114, %if.end.1107
  store i32 0, i32* %i, align 4, !tbaa !52
  br label %for.cond.1117

for.cond.1117:                                    ; preds = %for.inc.1131, %if.end.1116
  %833 = load i32, i32* %i, align 4, !tbaa !52
  %834 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %writer1118 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %834, i32 0, i32 12
  %alt_writer_count1119 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %writer1118, i32 0, i32 1
  %835 = load i32, i32* %alt_writer_count1119, align 4, !tbaa !163
  %cmp1120 = icmp slt i32 %833, %835
  br i1 %cmp1120, label %for.body.1122, label %for.end.1133

for.body.1122:                                    ; preds = %for.cond.1117
  %836 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %837 = load i32, i32* %num_components, align 4, !tbaa !52
  %838 = load %struct.gs_range_s*, %struct.gs_range_s** %pranges, align 8, !tbaa !1
  %839 = load i32, i32* %i, align 4, !tbaa !52
  %840 = load i32, i32* %i, align 4, !tbaa !52
  %idxprom1123 = sext i32 %840 to i64
  %841 = load %union.image_union_s*, %union.image_union_s** %image.addr, align 8, !tbaa !1
  %arrayidx1124 = getelementptr inbounds %union.image_union_s, %union.image_union_s* %841, i64 %idxprom1123
  %pixel1125 = bitcast %union.image_union_s* %arrayidx1124 to %struct.gs_pixel_image_s*
  %842 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %call1126 = call i32 @pdf_begin_image_data_decoded(%struct.gx_device_pdf_s* %836, i32 %837, %struct.gs_range_s* %838, i32 %839, %struct.gs_pixel_image_s* %pixel1125, %struct.cos_value_s* %cs_value, %struct.pdf_image_enum_s* %842) #6
  store i32 %call1126, i32* %code, align 4, !tbaa !52
  %843 = load i32, i32* %code, align 4, !tbaa !52
  %cmp1127 = icmp slt i32 %843, 0
  br i1 %cmp1127, label %if.then.1129, label %if.end.1130

if.then.1129:                                     ; preds = %for.body.1122
  br label %fail

if.end.1130:                                      ; preds = %for.body.1122
  br label %for.inc.1131

for.inc.1131:                                     ; preds = %if.end.1130
  %844 = load i32, i32* %i, align 4, !tbaa !52
  %inc1132 = add nsw i32 %844, 1
  store i32 %inc1132, i32* %i, align 4, !tbaa !52
  br label %for.cond.1117

for.end.1133:                                     ; preds = %for.cond.1117
  %845 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %writer1134 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %845, i32 0, i32 12
  %alt_writer_count1135 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %writer1134, i32 0, i32 1
  %846 = load i32, i32* %alt_writer_count1135, align 4, !tbaa !163
  %cmp1136 = icmp eq i32 %846, 2
  br i1 %cmp1136, label %if.then.1138, label %if.end.1148

if.then.1138:                                     ; preds = %for.end.1133
  %847 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %writer1139 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %847, i32 0, i32 12
  %binary1140 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %writer1139, i32 0, i32 0
  %arrayidx1141 = getelementptr inbounds [4 x %struct.psdf_binary_writer_s], [4 x %struct.psdf_binary_writer_s]* %binary1140, i32 0, i64 2
  %848 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %849 = bitcast %struct.gx_device_pdf_s* %848 to %struct.gx_device_psdf_s*
  %850 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %Width1142 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %850, i32 0, i32 2
  %851 = load i32, i32* %Width1142, align 4, !tbaa !123
  %852 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %Height1143 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %852, i32 0, i32 3
  %853 = load i32, i32* %Height1143, align 4, !tbaa !124
  %854 = load i32, i32* %num_components, align 4, !tbaa !52
  %855 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %BitsPerComponent1144 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %855, i32 0, i32 4
  %856 = load i32, i32* %BitsPerComponent1144, align 4, !tbaa !125
  %call1145 = call i32 @psdf_setup_compression_chooser(%struct.psdf_binary_writer_s* %arrayidx1141, %struct.gx_device_psdf_s* %849, i32 %851, i32 %853, i32 %854, i32 %856) #6
  %857 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %writer1146 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %857, i32 0, i32 12
  %alt_writer_count1147 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %writer1146, i32 0, i32 1
  store i32 3, i32* %alt_writer_count1147, align 4, !tbaa !163
  br label %if.end.1148

if.end.1148:                                      ; preds = %if.then.1138, %for.end.1133
  %858 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %type1149 = getelementptr inbounds %struct.gs_image_common_s, %struct.gs_image_common_s* %858, i32 0, i32 0
  %859 = load %struct.gx_image_type_s*, %struct.gx_image_type_s** %type1149, align 8, !tbaa !97
  %index1150 = getelementptr inbounds %struct.gx_image_type_s, %struct.gx_image_type_s* %859, i32 0, i32 6
  %860 = load i32, i32* %index1150, align 4, !tbaa !99
  %cmp1151 = icmp eq i32 %860, 4
  br i1 %cmp1151, label %land.lhs.true.1153, label %if.end.1222

land.lhs.true.1153:                               ; preds = %if.end.1148
  %861 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %CompatibilityLevel1154 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %861, i32 0, i32 75
  %862 = load double, double* %CompatibilityLevel1154, align 8, !tbaa !104
  %cmp1155 = fcmp olt double %862, 1.300000e+00
  br i1 %cmp1155, label %if.then.1157, label %if.end.1222

if.then.1157:                                     ; preds = %land.lhs.true.1153
  %863 = bitcast i32* %i1159 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %863) #1
  %864 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %writer1160 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %864, i32 0, i32 12
  %alt_writer_count1161 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %writer1160, i32 0, i32 1
  %865 = load i32, i32* %alt_writer_count1161, align 4, !tbaa !163
  store i32 %865, i32* %i1159, align 4, !tbaa !52
  %866 = load i32, i32* %i1159, align 4, !tbaa !52
  %idxprom1162 = sext i32 %866 to i64
  %867 = load %union.image_union_s*, %union.image_union_s** %image.addr, align 8, !tbaa !1
  %arrayidx1163 = getelementptr inbounds %union.image_union_s, %union.image_union_s* %867, i64 %idxprom1162
  %type11164 = bitcast %union.image_union_s* %arrayidx1163 to %struct.gs_image1_s*
  call void @gs_image_t_init_mask_adjust(%struct.gs_image1_s* %type11164, i32 1, i32 0) #6
  %868 = load %union.image_union_s*, %union.image_union_s** %image.addr, align 8, !tbaa !1
  %arrayidx1165 = getelementptr inbounds %union.image_union_s, %union.image_union_s* %868, i64 0
  %pixel1166 = bitcast %union.image_union_s* %arrayidx1165 to %struct.gs_pixel_image_s*
  %Width1167 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %pixel1166, i32 0, i32 2
  %869 = load i32, i32* %Width1167, align 4, !tbaa !123
  %870 = load i32, i32* %i1159, align 4, !tbaa !52
  %idxprom1168 = sext i32 %870 to i64
  %871 = load %union.image_union_s*, %union.image_union_s** %image.addr, align 8, !tbaa !1
  %arrayidx1169 = getelementptr inbounds %union.image_union_s, %union.image_union_s* %871, i64 %idxprom1168
  %type11170 = bitcast %union.image_union_s* %arrayidx1169 to %struct.gs_image1_s*
  %Width1171 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %type11170, i32 0, i32 2
  store i32 %869, i32* %Width1171, align 4, !tbaa !180
  %872 = load %union.image_union_s*, %union.image_union_s** %image.addr, align 8, !tbaa !1
  %arrayidx1172 = getelementptr inbounds %union.image_union_s, %union.image_union_s* %872, i64 0
  %pixel1173 = bitcast %union.image_union_s* %arrayidx1172 to %struct.gs_pixel_image_s*
  %Height1174 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %pixel1173, i32 0, i32 3
  %873 = load i32, i32* %Height1174, align 4, !tbaa !124
  %874 = load i32, i32* %i1159, align 4, !tbaa !52
  %idxprom1175 = sext i32 %874 to i64
  %875 = load %union.image_union_s*, %union.image_union_s** %image.addr, align 8, !tbaa !1
  %arrayidx1176 = getelementptr inbounds %union.image_union_s, %union.image_union_s* %875, i64 %idxprom1175
  %type11177 = bitcast %union.image_union_s* %arrayidx1176 to %struct.gs_image1_s*
  %Height1178 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %type11177, i32 0, i32 3
  store i32 %873, i32* %Height1178, align 4, !tbaa !181
  %876 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %877 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %writer1179 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %877, i32 0, i32 12
  %878 = load i32, i32* %width, align 4, !tbaa !52
  %879 = load i32, i32* %height, align 4, !tbaa !52
  %call1180 = call i32 @pdf_begin_write_image(%struct.gx_device_pdf_s* %876, %struct.pdf_image_writer_s* %writer1179, i64 0, i32 %878, i32 %879, %struct.cos_dict_s* null, i32 0) #6
  store i32 %call1180, i32* %code, align 4, !tbaa !52
  %880 = load i32, i32* %code, align 4, !tbaa !52
  %tobool1181 = icmp ne i32 %880, 0
  br i1 %tobool1181, label %if.then.1182, label %if.end.1183

if.then.1182:                                     ; preds = %if.then.1157
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup.1219

if.end.1183:                                      ; preds = %if.then.1157
  %881 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %882 = bitcast %struct.gx_device_pdf_s* %881 to %struct.gx_device_psdf_s*
  %883 = load i32, i32* %i1159, align 4, !tbaa !52
  %idxprom1184 = sext i32 %883 to i64
  %884 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %writer1185 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %884, i32 0, i32 12
  %binary1186 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %writer1185, i32 0, i32 0
  %arrayidx1187 = getelementptr inbounds [4 x %struct.psdf_binary_writer_s], [4 x %struct.psdf_binary_writer_s]* %binary1186, i32 0, i64 %idxprom1184
  %885 = load i32, i32* %i1159, align 4, !tbaa !52
  %idxprom1188 = sext i32 %885 to i64
  %886 = load %union.image_union_s*, %union.image_union_s** %image.addr, align 8, !tbaa !1
  %arrayidx1189 = getelementptr inbounds %union.image_union_s, %union.image_union_s* %886, i64 %idxprom1188
  %pixel1190 = bitcast %union.image_union_s* %arrayidx1189 to %struct.gs_pixel_image_s*
  %887 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %888 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %889 = load i32, i32* %force_lossless, align 4, !tbaa !52
  %890 = load i32, i32* %in_line, align 4, !tbaa !52
  %call1191 = call i32 @psdf_setup_image_filters(%struct.gx_device_psdf_s* %882, %struct.psdf_binary_writer_s* %arrayidx1187, %struct.gs_pixel_image_s* %pixel1190, %struct.gs_matrix_s* %887, %struct.gs_imager_state_s* %888, i32 %889, i32 %890) #6
  store i32 %call1191, i32* %code, align 4, !tbaa !52
  %891 = load i32, i32* %code, align 4, !tbaa !52
  %cmp1192 = icmp slt i32 %891, 0
  br i1 %cmp1192, label %if.then.1194, label %if.end.1195

if.then.1194:                                     ; preds = %if.end.1183
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup.1219

if.end.1195:                                      ; preds = %if.end.1183
  %892 = load i32, i32* %i1159, align 4, !tbaa !52
  %idxprom1196 = sext i32 %892 to i64
  %893 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %writer1197 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %893, i32 0, i32 12
  %binary1198 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %writer1197, i32 0, i32 0
  %arrayidx1199 = getelementptr inbounds [4 x %struct.psdf_binary_writer_s], [4 x %struct.psdf_binary_writer_s]* %binary1198, i32 0, i64 %idxprom1196
  %894 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %895 = bitcast %struct.gx_device_pdf_s* %894 to %struct.gx_device_psdf_s*
  %896 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %Width1200 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %896, i32 0, i32 2
  %897 = load i32, i32* %Width1200, align 4, !tbaa !123
  %898 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %Height1201 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %898, i32 0, i32 3
  %899 = load i32, i32* %Height1201, align 4, !tbaa !124
  %900 = load i32, i32* %num_components, align 4, !tbaa !52
  %901 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim, align 8, !tbaa !1
  %BitsPerComponent1202 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %901, i32 0, i32 4
  %902 = load i32, i32* %BitsPerComponent1202, align 4, !tbaa !125
  %903 = load i32, i32* %i1159, align 4, !tbaa !52
  %idxprom1203 = sext i32 %903 to i64
  %904 = load %union.image_union_s*, %union.image_union_s** %image.addr, align 8, !tbaa !1
  %arrayidx1204 = getelementptr inbounds %union.image_union_s, %union.image_union_s* %904, i64 %idxprom1203
  %type41205 = bitcast %union.image_union_s* %arrayidx1204 to %struct.gs_image4_s*
  %MaskColor = getelementptr inbounds %struct.gs_image4_s, %struct.gs_image4_s* %type41205, i32 0, i32 11
  %arraydecay1206 = getelementptr inbounds [130 x i32], [130 x i32]* %MaskColor, i32 0, i32 0
  %call1207 = call i32 @psdf_setup_image_to_mask_filter(%struct.psdf_binary_writer_s* %arrayidx1199, %struct.gx_device_psdf_s* %895, i32 %897, i32 %899, i32 %900, i32 %902, i32* %arraydecay1206) #6
  %905 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %906 = load i32, i32* %num_components, align 4, !tbaa !52
  %907 = load %struct.gs_range_s*, %struct.gs_range_s** %pranges, align 8, !tbaa !1
  %908 = load i32, i32* %i1159, align 4, !tbaa !52
  %909 = load i32, i32* %i1159, align 4, !tbaa !52
  %idxprom1208 = sext i32 %909 to i64
  %910 = load %union.image_union_s*, %union.image_union_s** %image.addr, align 8, !tbaa !1
  %arrayidx1209 = getelementptr inbounds %union.image_union_s, %union.image_union_s* %910, i64 %idxprom1208
  %pixel1210 = bitcast %union.image_union_s* %arrayidx1209 to %struct.gs_pixel_image_s*
  %911 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %call1211 = call i32 @pdf_begin_image_data_decoded(%struct.gx_device_pdf_s* %905, i32 %906, %struct.gs_range_s* %907, i32 %908, %struct.gs_pixel_image_s* %pixel1210, %struct.cos_value_s* %cs_value, %struct.pdf_image_enum_s* %911) #6
  store i32 %call1211, i32* %code, align 4, !tbaa !52
  %912 = load i32, i32* %code, align 4, !tbaa !52
  %cmp1212 = icmp slt i32 %912, 0
  br i1 %cmp1212, label %if.then.1214, label %if.end.1215

if.then.1214:                                     ; preds = %if.end.1195
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup.1219

if.end.1215:                                      ; preds = %if.end.1195
  %913 = load %struct.pdf_image_enum_s*, %struct.pdf_image_enum_s** %pie, align 8, !tbaa !1
  %writer1216 = getelementptr inbounds %struct.pdf_image_enum_s, %struct.pdf_image_enum_s* %913, i32 0, i32 12
  %alt_writer_count1217 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %writer1216, i32 0, i32 1
  %914 = load i32, i32* %alt_writer_count1217, align 4, !tbaa !163
  %inc1218 = add nsw i32 %914, 1
  store i32 %inc1218, i32* %alt_writer_count1217, align 4, !tbaa !163
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.1219

cleanup.1219:                                     ; preds = %if.then.1214, %if.then.1194, %if.then.1182, %if.end.1215
  %915 = bitcast i32* %i1159 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %915) #1
  %cleanup.dest.1220 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.1220, label %cleanup.1226 [
    i32 0, label %cleanup.cont.1221
    i32 7, label %fail
  ]

cleanup.cont.1221:                                ; preds = %cleanup.1219
  br label %if.end.1222

if.end.1222:                                      ; preds = %cleanup.cont.1221, %land.lhs.true.1153, %if.end.1148
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1226

fail:                                             ; preds = %cleanup.1219, %cleanup.1100, %cleanup.866, %if.then.1129, %if.end.1037, %if.then.972, %if.then.950, %if.end.932, %if.then.878
  br label %nyi

nyi:                                              ; preds = %fail, %cleanup.497, %cleanup.300, %cleanup.191, %cleanup.152, %cleanup, %if.then.451, %if.then.348, %sw.bb.317, %if.then.313, %sw.default.304, %sw.default
  %916 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %917 = bitcast %struct.gx_device_pdf_s* %916 to %struct.gx_device_s*
  %918 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %919 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %920 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %921 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %922 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %923 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %924 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %925 = load %struct.gx_image_enum_common_s**, %struct.gx_image_enum_common_s*** %pinfo.addr, align 8, !tbaa !1
  %call1225 = call i32 @gx_default_begin_typed_image(%struct.gx_device_s* %917, %struct.gs_imager_state_s* %918, %struct.gs_matrix_s* %919, %struct.gs_image_common_s* %920, %struct.gs_int_rect_s* %921, %struct.gx_device_color_s* %922, %struct.gx_clip_path_s* %923, %struct.gs_memory_s* %924, %struct.gx_image_enum_common_s** %925) #6
  store i32 %call1225, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1226

cleanup.1226:                                     ; preds = %nyi, %cleanup.191, %cleanup.152, %if.end.1222, %cleanup.1219, %cleanup.1100, %cleanup.866, %if.then.824, %if.then.504, %cleanup.497, %if.then.368, %if.then.332, %sw.default.318, %cleanup.300, %cleanup
  %926 = bitcast i32* %force_lossless to i8*
  call void @llvm.lifetime.end(i64 4, i8* %926) #1
  %927 = bitcast %struct.pdf_lcvd_s** %cvd to i8*
  call void @llvm.lifetime.end(i64 8, i8* %927) #1
  %928 = bitcast i32* %BPC_device to i8*
  call void @llvm.lifetime.end(i64 4, i8* %928) #1
  %929 = bitcast i32* %BPC_orig to i8*
  call void @llvm.lifetime.end(i64 4, i8* %929) #1
  %930 = bitcast %struct.gs_color_space_s** %pcs_orig to i8*
  call void @llvm.lifetime.end(i64 8, i8* %930) #1
  %931 = bitcast %struct.gs_color_space_s** %pcs_device to i8*
  call void @llvm.lifetime.end(i64 8, i8* %931) #1
  %932 = bitcast i32* %convert_to_process_colors to i8*
  call void @llvm.lifetime.end(i64 4, i8* %932) #1
  %933 = bitcast %struct.pdf_color_space_names_s** %names to i8*
  call void @llvm.lifetime.end(i64 8, i8* %933) #1
  %934 = bitcast %struct.gs_range_s** %pranges to i8*
  call void @llvm.lifetime.end(i64 8, i8* %934) #1
  %935 = bitcast i32* %height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %935) #1
  %936 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %936) #1
  %937 = bitcast %struct.gs_int_rect_s* %rect to i8*
  call void @llvm.lifetime.end(i64 16, i8* %937) #1
  %938 = bitcast i32* %in_line to i8*
  call void @llvm.lifetime.end(i64 4, i8* %938) #1
  %939 = bitcast i32* %is_mask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %939) #1
  %940 = bitcast i32* %num_components to i8*
  call void @llvm.lifetime.end(i64 4, i8* %940) #1
  %941 = bitcast %struct.cos_value_s* %cs_value to i8*
  call void @llvm.lifetime.end(i64 24, i8* %941) #1
  %942 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %942) #1
  %943 = bitcast i32* %format to i8*
  call void @llvm.lifetime.end(i64 4, i8* %943) #1
  %944 = bitcast %struct.pdf_image_enum_s** %pie to i8*
  call void @llvm.lifetime.end(i64 8, i8* %944) #1
  %945 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %945) #1
  %946 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %946) #1
  %947 = bitcast %struct.gs_pixel_image_s** %pim to i8*
  call void @llvm.lifetime.end(i64 8, i8* %947) #1
  %948 = bitcast %struct.cos_dict_s** %pnamed to i8*
  call void @llvm.lifetime.end(i64 8, i8* %948) #1
  %949 = load i32, i32* %retval
  ret i32 %949
}

declare i32 @psdf_is_converting_image_to_RGB(%struct.gx_device_psdf_s*, %struct.gs_imager_state_s*, %struct.gs_pixel_image_s*) #2

declare void @gscms_set_icc_range(%struct.cmm_profile_s**) #2

declare i32 @pdf_convert_ICC(%struct.gx_device_pdf_s*, %struct.gs_color_space_s*, %struct.cos_value_s*, %struct.pdf_color_space_names_s*) #2

declare void @gsicc_setrange_lab(%struct.cmm_profile_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @check_image_color_space(%struct.gs_pixel_image_s* %pim, i32 %index) #0 {
entry:
  %retval = alloca i32, align 4
  %pim.addr = alloca %struct.gs_pixel_image_s*, align 8
  %index.addr = alloca i32, align 4
  store %struct.gs_pixel_image_s* %pim, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  %0 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %ColorSpace = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %0, i32 0, i32 9
  %1 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace, align 8, !tbaa !147
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %1, i32 0, i32 0
  %2 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !164
  %index1 = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %2, i32 0, i32 0
  %3 = load i32, i32* %index1, align 4, !tbaa !166
  %4 = load i32, i32* %index.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %ColorSpace2 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %5, i32 0, i32 9
  %6 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace2, align 8, !tbaa !147
  %type3 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %6, i32 0, i32 0
  %7 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type3, align 8, !tbaa !164
  %index4 = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %7, i32 0, i32 0
  %8 = load i32, i32* %index4, align 4, !tbaa !166
  %cmp5 = icmp eq i32 %8, 10
  br i1 %cmp5, label %if.then.6, label %if.end.13

if.then.6:                                        ; preds = %if.end
  %9 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %ColorSpace7 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %9, i32 0, i32 9
  %10 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace7, align 8, !tbaa !147
  %base_space = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %10, i32 0, i32 3
  %11 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space, align 8, !tbaa !219
  %type8 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %11, i32 0, i32 0
  %12 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type8, align 8, !tbaa !164
  %index9 = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %12, i32 0, i32 0
  %13 = load i32, i32* %index9, align 4, !tbaa !166
  %14 = load i32, i32* %index.addr, align 4, !tbaa !5
  %cmp10 = icmp eq i32 %13, %14
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.then.6
  store i32 1, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.then.6
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.13, %if.then.11, %if.then
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

; Function Attrs: nounwind
declare i32 @strcmp(i8*, i8*) #3

declare void @rc_increment_cs(%struct.gs_color_space_s*) #2

declare i32 @psdf_setup_lossless_filters(%struct.gx_device_psdf_s*, %struct.psdf_binary_writer_s*, %struct.gs_pixel_image_s*, i32) #2

declare void @rc_decrement_only_cs(%struct.gs_color_space_s*, i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin }
attributes #7 = { nobuiltin nounwind }
attributes #8 = { nobuiltin nounwind readnone }
attributes #9 = { nobuiltin nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!3, !3, i64 0}
!6 = !{!7, !8, i64 30760}
!7 = !{!"gx_device_pdf_s", !8, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !8, i64 40, !2, i64 48, !9, i64 56, !8, i64 80, !8, i64 84, !8, i64 88, !11, i64 96, !14, i64 816, !8, i64 832, !8, i64 836, !8, i64 840, !8, i64 844, !8, i64 848, !8, i64 852, !3, i64 856, !3, i64 864, !8, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !10, i64 928, !10, i64 936, !8, i64 944, !8, i64 948, !8, i64 952, !8, i64 956, !8, i64 960, !10, i64 968, !10, i64 976, !15, i64 984, !8, i64 1052, !8, i64 1056, !16, i64 1064, !2, i64 1104, !3, i64 1112, !18, i64 1120, !19, i64 1144, !2, i64 1728, !2, i64 1736, !3, i64 1744, !2, i64 5840, !2, i64 5848, !2, i64 5856, !8, i64 5864, !8, i64 5868, !20, i64 5872, !2, i64 7488, !8, i64 7496, !8, i64 7500, !8, i64 7504, !33, i64 7512, !33, i64 8144, !10, i64 8776, !10, i64 8784, !3, i64 8792, !3, i64 8796, !26, i64 8800, !8, i64 8816, !2, i64 8824, !10, i64 8832, !10, i64 8840, !3, i64 8848, !8, i64 8852, !8, i64 8856, !8, i64 8860, !8, i64 8864, !27, i64 8872, !38, i64 8880, !8, i64 9360, !27, i64 9368, !8, i64 9376, !8, i64 9380, !8, i64 9384, !8, i64 9388, !8, i64 9392, !8, i64 9396, !8, i64 9400, !8, i64 9404, !8, i64 9408, !8, i64 9412, !8, i64 9416, !8, i64 9420, !43, i64 9424, !43, i64 9440, !8, i64 9456, !8, i64 9460, !8, i64 9464, !10, i64 9472, !8, i64 9480, !8, i64 9484, !42, i64 9488, !42, i64 9504, !8, i64 9520, !8, i64 9524, !8, i64 9528, !8, i64 9532, !8, i64 9536, !8, i64 9540, !8, i64 9544, !8, i64 9548, !8, i64 9552, !8, i64 9556, !8, i64 9560, !8, i64 9564, !8, i64 9568, !10, i64 9576, !10, i64 9584, !10, i64 9592, !44, i64 9600, !42, i64 9616, !42, i64 9632, !8, i64 9648, !8, i64 9652, !8, i64 9656, !42, i64 9664, !8, i64 9680, !8, i64 9684, !3, i64 9688, !3, i64 9720, !3, i64 9752, !8, i64 9768, !8, i64 9772, !8, i64 9776, !45, i64 9784, !46, i64 9816, !46, i64 9856, !8, i64 9896, !8, i64 9900, !8, i64 9904, !8, i64 9908, !8, i64 9912, !10, i64 9920, !3, i64 9928, !8, i64 9960, !10, i64 9968, !10, i64 9976, !3, i64 9984, !3, i64 9988, !47, i64 9992, !47, i64 14120, !47, i64 18248, !47, i64 22376, !10, i64 26504, !2, i64 26512, !2, i64 26520, !2, i64 26528, !10, i64 26536, !8, i64 26544, !8, i64 26548, !10, i64 26552, !3, i64 26560, !10, i64 26568, !10, i64 26576, !3, i64 26584, !2, i64 26592, !48, i64 26600, !2, i64 26648, !8, i64 26656, !10, i64 26664, !3, i64 26672, !3, i64 28592, !3, i64 28632, !2, i64 28648, !2, i64 28656, !10, i64 28664, !2, i64 28672, !8, i64 28680, !8, i64 28684, !8, i64 28688, !8, i64 28692, !2, i64 28696, !2, i64 28704, !2, i64 28712, !3, i64 28720, !3, i64 28736, !2, i64 28752, !2, i64 28760, !2, i64 28768, !2, i64 28776, !2, i64 28784, !26, i64 28792, !2, i64 28808, !2, i64 28816, !8, i64 28824, !2, i64 28832, !2, i64 28840, !2, i64 28848, !8, i64 28856, !8, i64 28860, !8, i64 28864, !49, i64 28872, !8, i64 30384, !8, i64 30388, !8, i64 30392, !2, i64 30400, !8, i64 30408, !8, i64 30412, !8, i64 30416, !23, i64 30420, !2, i64 30448, !3, i64 30456, !8, i64 30460, !8, i64 30464, !2, i64 30472, !2, i64 30480, !25, i64 30488, !8, i64 30524, !45, i64 30528, !8, i64 30560, !8, i64 30564, !8, i64 30568, !2, i64 30576, !8, i64 30584, !8, i64 30588, !10, i64 30592, !8, i64 30600, !8, i64 30604, !8, i64 30608, !23, i64 30612, !27, i64 30640, !2, i64 30648, !39, i64 30656, !8, i64 30672, !2, i64 30680, !8, i64 30688, !8, i64 30692, !8, i64 30696, !8, i64 30700, !8, i64 30704, !8, i64 30708, !8, i64 30712, !8, i64 30716, !8, i64 30720, !8, i64 30724, !8, i64 30728, !8, i64 30732, !8, i64 30736, !8, i64 30740, !8, i64 30744, !8, i64 30748, !8, i64 30752, !8, i64 30756, !8, i64 30760, !8, i64 30764, !8, i64 30768, !8, i64 30772, !2, i64 30776, !8, i64 30784, !8, i64 30788}
!8 = !{!"int", !3, i64 0}
!9 = !{!"rc_header_s", !10, i64 0, !2, i64 8, !2, i64 16}
!10 = !{!"long", !3, i64 0}
!11 = !{!"gx_device_color_info_s", !8, i64 0, !8, i64 4, !3, i64 8, !12, i64 12, !3, i64 14, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !13, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !10, i64 704, !8, i64 712}
!12 = !{!"short", !3, i64 0}
!13 = !{!"gx_device_anti_alias_info_s", !8, i64 0, !8, i64 4}
!14 = !{!"gx_device_cached_colors_s", !10, i64 0, !10, i64 8}
!15 = !{!"gx_stroked_gradient_recognizer_s", !8, i64 0, !3, i64 4, !3, i64 36}
!16 = !{!"gdev_space_params_s", !10, i64 0, !10, i64 8, !17, i64 16, !8, i64 32, !3, i64 36}
!17 = !{!"gx_band_params_s", !8, i64 0, !8, i64 4, !10, i64 8}
!18 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!19 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!20 = !{!"gs_imager_state_s", !8, i64 0, !2, i64 8, !2, i64 16, !21, i64 24, !8, i64 128, !25, i64 132, !8, i64 168, !26, i64 176, !26, i64 192, !8, i64 208, !8, i64 212, !12, i64 216, !3, i64 220, !28, i64 224, !28, i64 228, !29, i64 232, !10, i64 240, !8, i64 248, !8, i64 252, !8, i64 256, !2, i64 264, !8, i64 272, !8, i64 276, !8, i64 280, !8, i64 284, !8, i64 288, !8, i64 292, !22, i64 296, !30, i64 300, !8, i64 308, !8, i64 312, !8, i64 316, !22, i64 320, !8, i64 324, !8, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !8, i64 408, !2, i64 416, !2, i64 424, !31, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !32, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !32, i64 1336}
!21 = !{!"gx_line_params_s", !22, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !8, i64 20, !22, i64 24, !22, i64 28, !22, i64 32, !8, i64 36, !23, i64 40, !24, i64 64}
!22 = !{!"float", !3, i64 0}
!23 = !{!"gs_matrix_s", !22, i64 0, !22, i64 4, !22, i64 8, !22, i64 12, !22, i64 16, !22, i64 20}
!24 = !{!"gx_dash_params_s", !2, i64 0, !8, i64 8, !22, i64 12, !8, i64 16, !22, i64 20, !8, i64 24, !8, i64 28, !22, i64 32}
!25 = !{!"gs_matrix_fixed_s", !22, i64 0, !22, i64 4, !22, i64 8, !22, i64 12, !22, i64 16, !22, i64 20, !8, i64 24, !8, i64 28, !8, i64 32}
!26 = !{!"gs_point_s", !27, i64 0, !27, i64 8}
!27 = !{!"double", !3, i64 0}
!28 = !{!"gs_transparency_source_s", !22, i64 0}
!29 = !{!"gs_xstate_trans_flags", !8, i64 0, !8, i64 4}
!30 = !{!"gs_fixed_point_s", !8, i64 0, !8, i64 4}
!31 = !{!"gx_transfer_s", !8, i64 0, !2, i64 8, !8, i64 16, !2, i64 24, !8, i64 32, !2, i64 40, !8, i64 48, !2, i64 56}
!32 = !{!"gs_devicen_color_map_s", !8, i64 0, !3, i64 4, !8, i64 8, !8, i64 12, !10, i64 16, !3, i64 24}
!33 = !{!"gx_hl_saved_color_s", !10, i64 0, !10, i64 8, !8, i64 16, !34, i64 24, !36, i64 288}
!34 = !{!"gs_client_color_s", !2, i64 0, !35, i64 8}
!35 = !{!"gs_paint_color_s", !3, i64 0}
!36 = !{!"gx_device_color_saved_s", !2, i64 0, !3, i64 8, !37, i64 336}
!37 = !{!"gs_int_point_s", !8, i64 0, !8, i64 4}
!38 = !{!"psdf_distiller_params_s", !8, i64 0, !3, i64 4, !3, i64 8, !8, i64 12, !3, i64 16, !8, i64 20, !8, i64 24, !10, i64 32, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !39, i64 64, !39, i64 80, !39, i64 96, !39, i64 112, !3, i64 128, !8, i64 132, !8, i64 136, !3, i64 140, !3, i64 144, !40, i64 152, !8, i64 232, !8, i64 236, !40, i64 240, !40, i64 320, !41, i64 400, !41, i64 416, !3, i64 432, !8, i64 436, !8, i64 440, !8, i64 444, !42, i64 448, !41, i64 464}
!39 = !{!"gs_const_string_s", !2, i64 0, !8, i64 8}
!40 = !{!"psdf_image_params_s", !2, i64 0, !8, i64 8, !8, i64 12, !8, i64 16, !2, i64 24, !8, i64 32, !22, i64 36, !3, i64 40, !8, i64 44, !2, i64 48, !8, i64 56, !2, i64 64, !2, i64 72}
!41 = !{!"gs_param_string_array_s", !2, i64 0, !8, i64 8, !8, i64 12}
!42 = !{!"gs_param_string_s", !2, i64 0, !8, i64 8, !8, i64 12}
!43 = !{!"gs_param_float_array_s", !2, i64 0, !8, i64 8, !8, i64 12}
!44 = !{!"gs_param_int_array_s", !2, i64 0, !8, i64 8, !8, i64 12}
!45 = !{!"gs_rect_s", !26, i64 0, !26, i64 16}
!46 = !{!"pdf_page_dsc_info_s", !8, i64 0, !8, i64 4, !45, i64 8}
!47 = !{!"pdf_temp_file_s", !3, i64 0, !2, i64 4096, !2, i64 4104, !2, i64 4112, !2, i64 4120}
!48 = !{!"pdf_text_rotation_s", !3, i64 0, !8, i64 40}
!49 = !{!"pdf_viewer_state_s", !8, i64 0, !3, i64 8, !22, i64 40, !22, i64 44, !3, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !8, i64 80, !22, i64 84, !22, i64 88, !8, i64 92, !8, i64 96, !8, i64 100, !8, i64 104, !8, i64 108, !8, i64 112, !33, i64 120, !33, i64 752, !21, i64 1384, !2, i64 1488, !8, i64 1496, !10, i64 1504}
!50 = !{!51, !2, i64 72}
!51 = !{!"pdf_pattern_s", !2, i64 0, !2, i64 8, !10, i64 16, !8, i64 24, !8, i64 28, !3, i64 32, !10, i64 56, !2, i64 64, !2, i64 72}
!52 = !{!8, !8, i64 0}
!53 = !{!10, !10, i64 0}
!54 = !{!7, !8, i64 30412}
!55 = !{!7, !8, i64 30416}
!56 = !{!57, !2, i64 80}
!57 = !{!"gs_form_template_s", !45, i64 0, !23, i64 32, !23, i64 56, !2, i64 80}
!58 = !{!7, !2, i64 5848}
!59 = !{!57, !22, i64 56}
!60 = !{!57, !22, i64 60}
!61 = !{!57, !22, i64 64}
!62 = !{!57, !22, i64 68}
!63 = !{!57, !22, i64 72}
!64 = !{!57, !22, i64 76}
!65 = !{!7, !8, i64 9480}
!66 = !{!67, !2, i64 64}
!67 = !{!"pdf_resource_s", !2, i64 0, !2, i64 8, !10, i64 16, !8, i64 24, !8, i64 28, !3, i64 32, !10, i64 56, !2, i64 64}
!68 = !{!57, !27, i64 0}
!69 = !{!22, !22, i64 0}
!70 = !{!57, !27, i64 8}
!71 = !{!57, !27, i64 16}
!72 = !{!57, !27, i64 24}
!73 = !{!57, !22, i64 32}
!74 = !{!57, !22, i64 36}
!75 = !{!57, !22, i64 40}
!76 = !{!57, !22, i64 44}
!77 = !{!57, !22, i64 48}
!78 = !{!57, !22, i64 52}
!79 = !{!7, !2, i64 30448}
!80 = !{!67, !10, i64 16}
!81 = !{!7, !3, i64 26584}
!82 = !{!7, !2, i64 30480}
!83 = !{!7, !10, i64 26664}
!84 = !{!67, !10, i64 56}
!85 = !{!86, !10, i64 8}
!86 = !{!"cos_object_s", !2, i64 0, !10, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !3, i64 48, !3, i64 49, !3, i64 50, !10, i64 56, !2, i64 64, !87, i64 72, !8, i64 160, !3, i64 164, !8, i64 180, !3, i64 184}
!87 = !{!"gs_md5_state_s", !3, i64 0, !3, i64 8, !3, i64 24}
!88 = !{!7, !8, i64 30584}
!89 = !{!7, !8, i64 30588}
!90 = !{!7, !8, i64 26544}
!91 = !{!92, !2, i64 200}
!92 = !{!"gs_memory_s", !2, i64 0, !93, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!93 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!94 = !{!92, !2, i64 88}
!95 = !{!7, !2, i64 28768}
!96 = !{!7, !10, i64 30592}
!97 = !{!98, !2, i64 0}
!98 = !{!"gs_image_common_s", !2, i64 0, !23, i64 8}
!99 = !{!100, !8, i64 48}
!100 = !{!"gx_image_type_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !8, i64 48}
!101 = !{!102, !8, i64 584}
!102 = !{!"gs_image1_s", !2, i64 0, !23, i64 8, !8, i64 32, !8, i64 36, !8, i64 40, !3, i64 44, !8, i64 564, !3, i64 568, !8, i64 572, !2, i64 576, !8, i64 584, !8, i64 588, !3, i64 592, !3, i64 596}
!103 = !{!7, !8, i64 30600}
!104 = !{!7, !27, i64 9368}
!105 = !{!106, !8, i64 0}
!106 = !{!"gs_int_rect_s", !37, i64 0, !37, i64 8}
!107 = !{!106, !8, i64 4}
!108 = !{!106, !8, i64 8}
!109 = !{!110, !8, i64 32}
!110 = !{!"gs_image3_s", !2, i64 0, !23, i64 8, !8, i64 32, !8, i64 36, !8, i64 40, !3, i64 44, !8, i64 564, !3, i64 568, !8, i64 572, !2, i64 576, !8, i64 584, !111, i64 592}
!111 = !{!"gs_data_image_s", !2, i64 0, !23, i64 8, !8, i64 32, !8, i64 36, !8, i64 40, !3, i64 44, !8, i64 564}
!112 = !{!106, !8, i64 12}
!113 = !{!110, !8, i64 36}
!114 = !{!92, !2, i64 24}
!115 = !{!116, !8, i64 32}
!116 = !{!"gs_image3x_s", !2, i64 0, !23, i64 8, !8, i64 32, !8, i64 36, !8, i64 40, !3, i64 44, !8, i64 564, !3, i64 568, !8, i64 572, !2, i64 576, !117, i64 584, !117, i64 1416}
!117 = !{!"gs_image3x_mask_s", !8, i64 0, !3, i64 4, !8, i64 260, !111, i64 264}
!118 = !{!116, !8, i64 36}
!119 = !{!7, !8, i64 9556}
!120 = !{i64 0, i64 8, !1, i64 8, i64 4, !69, i64 12, i64 4, !69, i64 16, i64 4, !69, i64 20, i64 4, !69, i64 24, i64 4, !69, i64 28, i64 4, !69, i64 32, i64 4, !52, i64 36, i64 4, !52, i64 40, i64 4, !52, i64 44, i64 520, !5, i64 564, i64 4, !52, i64 568, i64 4, !5, i64 572, i64 4, !52, i64 576, i64 8, !1, i64 584, i64 4, !52, i64 588, i64 520, !5, i64 1108, i64 4, !5}
!121 = !{!122, !3, i64 568}
!122 = !{!"gs_pixel_image_s", !2, i64 0, !23, i64 8, !8, i64 32, !8, i64 36, !8, i64 40, !3, i64 44, !8, i64 564, !3, i64 568, !8, i64 572, !2, i64 576}
!123 = !{!122, !8, i64 32}
!124 = !{!122, !8, i64 36}
!125 = !{!122, !8, i64 40}
!126 = !{i64 0, i64 4, !52, i64 4, i64 4, !52, i64 8, i64 4, !52, i64 12, i64 4, !52}
!127 = !{!122, !8, i64 572}
!128 = !{!7, !8, i64 9528}
!129 = !{!7, !8, i64 30524}
!130 = !{!45, !27, i64 0}
!131 = !{!45, !27, i64 8}
!132 = !{!45, !27, i64 16}
!133 = !{!45, !27, i64 24}
!134 = !{!135, !8, i64 0}
!135 = !{!"gs_fixed_rect_s", !30, i64 0, !30, i64 8}
!136 = !{!135, !8, i64 4}
!137 = !{!135, !8, i64 8}
!138 = !{!135, !8, i64 12}
!139 = !{!26, !27, i64 0}
!140 = !{!26, !27, i64 8}
!141 = !{!7, !8, i64 9776}
!142 = !{!143, !2, i64 0}
!143 = !{!"gx_device_color_s", !2, i64 0, !3, i64 8, !37, i64 352, !8, i64 360, !34, i64 368, !144, i64 632}
!144 = !{!"_mask", !145, i64 0, !10, i64 8, !2, i64 16}
!145 = !{!"mp_", !8, i64 0, !8, i64 4}
!146 = !{!143, !8, i64 360}
!147 = !{!122, !2, i64 576}
!148 = !{!7, !2, i64 24}
!149 = !{!92, !2, i64 72}
!150 = !{!151, !2, i64 24}
!151 = !{!"pdf_image_enum_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !10, i64 32, !8, i64 40, !8, i64 44, !3, i64 48, !3, i64 308, !8, i64 568, !8, i64 572, !8, i64 576, !152, i64 584, !23, i64 776}
!152 = !{!"pdf_image_writer_s", !3, i64 0, !8, i64 128, !2, i64 136, !2, i64 144, !8, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184}
!153 = !{!151, !8, i64 568}
!154 = !{!151, !8, i64 44}
!155 = !{!151, !8, i64 572}
!156 = !{!151, !8, i64 576}
!157 = !{!27, !27, i64 0}
!158 = !{!7, !10, i64 9592}
!159 = !{!151, !22, i64 776}
!160 = !{!151, !22, i64 788}
!161 = !{!151, !22, i64 780}
!162 = !{!151, !22, i64 784}
!163 = !{!151, !8, i64 712}
!164 = !{!165, !2, i64 0}
!165 = !{!"gs_color_space_s", !2, i64 0, !9, i64 8, !10, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !3, i64 72}
!166 = !{!167, !3, i64 0}
!167 = !{!"gs_color_space_type_s", !3, i64 0, !8, i64 4, !8, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128}
!168 = !{!7, !3, i64 9072}
!169 = !{!7, !8, i64 9960}
!170 = !{!7, !3, i64 30456}
!171 = !{i64 0, i64 8, !1, i64 8, i64 4, !69, i64 12, i64 4, !69, i64 16, i64 4, !69, i64 20, i64 4, !69, i64 24, i64 4, !69, i64 28, i64 4, !69, i64 32, i64 4, !52, i64 36, i64 4, !52, i64 40, i64 4, !52, i64 44, i64 520, !5, i64 564, i64 4, !52, i64 568, i64 4, !5, i64 572, i64 4, !52, i64 576, i64 8, !1, i64 0, i64 8, !1, i64 8, i64 4, !69, i64 12, i64 4, !69, i64 16, i64 4, !69, i64 20, i64 4, !69, i64 24, i64 4, !69, i64 28, i64 4, !69, i64 32, i64 4, !52, i64 36, i64 4, !52, i64 40, i64 4, !52, i64 44, i64 520, !5, i64 564, i64 4, !52, i64 568, i64 4, !5, i64 572, i64 4, !52, i64 576, i64 8, !1, i64 584, i64 4, !52, i64 588, i64 4, !52, i64 592, i64 4, !5, i64 596, i64 4, !5, i64 0, i64 8, !1, i64 8, i64 4, !69, i64 12, i64 4, !69, i64 16, i64 4, !69, i64 20, i64 4, !69, i64 24, i64 4, !69, i64 28, i64 4, !69, i64 32, i64 4, !52, i64 36, i64 4, !52, i64 40, i64 4, !52, i64 44, i64 520, !5, i64 564, i64 4, !52, i64 568, i64 4, !5, i64 572, i64 4, !52, i64 576, i64 8, !1, i64 584, i64 4, !52, i64 592, i64 8, !1, i64 600, i64 4, !69, i64 604, i64 4, !69, i64 608, i64 4, !69, i64 612, i64 4, !69, i64 616, i64 4, !69, i64 620, i64 4, !69, i64 624, i64 4, !52, i64 628, i64 4, !52, i64 632, i64 4, !52, i64 636, i64 520, !5, i64 1156, i64 4, !52, i64 0, i64 8, !1, i64 8, i64 4, !69, i64 12, i64 4, !69, i64 16, i64 4, !69, i64 20, i64 4, !69, i64 24, i64 4, !69, i64 28, i64 4, !69, i64 32, i64 4, !52, i64 36, i64 4, !52, i64 40, i64 4, !52, i64 44, i64 520, !5, i64 564, i64 4, !52, i64 568, i64 4, !5, i64 572, i64 4, !52, i64 576, i64 8, !1, i64 584, i64 4, !52, i64 588, i64 256, !5, i64 844, i64 4, !52, i64 848, i64 8, !1, i64 856, i64 4, !69, i64 860, i64 4, !69, i64 864, i64 4, !69, i64 868, i64 4, !69, i64 872, i64 4, !69, i64 876, i64 4, !69, i64 880, i64 4, !52, i64 884, i64 4, !52, i64 888, i64 4, !52, i64 892, i64 520, !5, i64 1412, i64 4, !52, i64 1416, i64 4, !52, i64 1420, i64 256, !5, i64 1676, i64 4, !52, i64 1680, i64 8, !1, i64 1688, i64 4, !69, i64 1692, i64 4, !69, i64 1696, i64 4, !69, i64 1700, i64 4, !69, i64 1704, i64 4, !69, i64 1708, i64 4, !69, i64 1712, i64 4, !52, i64 1716, i64 4, !52, i64 1720, i64 4, !52, i64 1724, i64 520, !5, i64 2244, i64 4, !52, i64 0, i64 8, !1, i64 8, i64 4, !69, i64 12, i64 4, !69, i64 16, i64 4, !69, i64 20, i64 4, !69, i64 24, i64 4, !69, i64 28, i64 4, !69, i64 32, i64 4, !52, i64 36, i64 4, !52, i64 40, i64 4, !52, i64 44, i64 520, !5, i64 564, i64 4, !52, i64 568, i64 4, !5, i64 572, i64 4, !52, i64 576, i64 8, !1, i64 584, i64 4, !52, i64 588, i64 520, !5, i64 1108, i64 4, !5}
!172 = !{!7, !27, i64 8872}
!173 = !{!174, !2, i64 16}
!174 = !{!"psdf_binary_writer_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!175 = !{!7, !2, i64 1728}
!176 = !{!177, !2, i64 0}
!177 = !{!"cos_stream_s", !2, i64 0, !10, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !3, i64 48, !3, i64 49, !3, i64 50, !10, i64 56, !2, i64 64, !87, i64 72, !8, i64 160, !3, i64 164, !8, i64 180, !3, i64 184}
!178 = !{!179, !2, i64 0}
!179 = !{!"cos_object_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!180 = !{!102, !8, i64 32}
!181 = !{!102, !8, i64 36}
!182 = !{!102, !3, i64 592}
!183 = !{!102, !8, i64 40}
!184 = !{i64 0, i64 8, !1, i64 8, i64 4, !69, i64 12, i64 4, !69, i64 16, i64 4, !69, i64 20, i64 4, !69, i64 24, i64 4, !69, i64 28, i64 4, !69, i64 32, i64 4, !52, i64 36, i64 4, !52, i64 40, i64 4, !52, i64 44, i64 520, !5, i64 564, i64 4, !52, i64 568, i64 4, !5, i64 572, i64 4, !52, i64 576, i64 8, !1, i64 584, i64 4, !52, i64 588, i64 4, !52, i64 592, i64 4, !5, i64 596, i64 4, !5}
!185 = !{!20, !22, i64 148}
!186 = !{!23, !22, i64 16}
!187 = !{!20, !22, i64 152}
!188 = !{!23, !22, i64 20}
!189 = !{i64 0, i64 8, !1, i64 8, i64 4, !69, i64 12, i64 4, !69, i64 16, i64 4, !69, i64 20, i64 4, !69, i64 24, i64 4, !69, i64 28, i64 4, !69, i64 32, i64 4, !52, i64 36, i64 4, !52, i64 40, i64 4, !52, i64 44, i64 520, !5, i64 564, i64 4, !52, i64 568, i64 4, !5, i64 572, i64 4, !52, i64 576, i64 8, !1, i64 584, i64 4, !52, i64 592, i64 8, !1, i64 600, i64 4, !69, i64 604, i64 4, !69, i64 608, i64 4, !69, i64 612, i64 4, !69, i64 616, i64 4, !69, i64 620, i64 4, !69, i64 624, i64 4, !52, i64 628, i64 4, !52, i64 632, i64 4, !52, i64 636, i64 520, !5, i64 1156, i64 4, !52}
!190 = !{!110, !8, i64 624}
!191 = !{!110, !8, i64 628}
!192 = !{!193, !2, i64 1440}
!193 = !{!"gx_device_s", !8, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !8, i64 40, !2, i64 48, !9, i64 56, !8, i64 80, !8, i64 84, !8, i64 88, !11, i64 96, !14, i64 816, !8, i64 832, !8, i64 836, !8, i64 840, !8, i64 844, !8, i64 848, !8, i64 852, !3, i64 856, !3, i64 864, !8, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !10, i64 928, !10, i64 936, !8, i64 944, !8, i64 948, !8, i64 952, !8, i64 956, !8, i64 960, !10, i64 968, !10, i64 976, !15, i64 984, !8, i64 1052, !8, i64 1056, !16, i64 1064, !2, i64 1104, !3, i64 1112, !18, i64 1120, !19, i64 1144}
!194 = !{!195, !2, i64 8}
!195 = !{!"gx_image_enum_common_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !10, i64 32, !8, i64 40, !8, i64 44, !3, i64 48, !3, i64 308}
!196 = !{!117, !8, i64 260}
!197 = !{!116, !2, i64 576}
!198 = !{!151, !2, i64 728}
!199 = !{!200, !2, i64 576}
!200 = !{!"gs_image4_s", !2, i64 0, !23, i64 8, !8, i64 32, !8, i64 36, !8, i64 40, !3, i64 44, !8, i64 564, !3, i64 568, !8, i64 572, !2, i64 576, !8, i64 584, !3, i64 588, !3, i64 1108}
!201 = !{!200, !8, i64 32}
!202 = !{!200, !8, i64 36}
!203 = !{!204, !8, i64 84}
!204 = !{!"pdf_lcvd_s", !205, i64 0, !2, i64 2792, !2, i64 2800, !2, i64 2808, !2, i64 2816, !2, i64 2824, !2, i64 2832, !8, i64 2840, !8, i64 2844, !8, i64 2848, !8, i64 2852, !8, i64 2856, !23, i64 2860, !26, i64 2888}
!205 = !{!"gx_device_memory_s", !8, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !8, i64 40, !2, i64 48, !9, i64 56, !8, i64 80, !8, i64 84, !8, i64 88, !11, i64 96, !14, i64 816, !8, i64 832, !8, i64 836, !8, i64 840, !8, i64 844, !8, i64 848, !8, i64 852, !3, i64 856, !3, i64 864, !8, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !10, i64 928, !10, i64 936, !8, i64 944, !8, i64 948, !8, i64 952, !8, i64 956, !8, i64 960, !10, i64 968, !10, i64 976, !15, i64 984, !8, i64 1052, !8, i64 1056, !16, i64 1064, !2, i64 1104, !3, i64 1112, !18, i64 1120, !19, i64 1144, !2, i64 1728, !8, i64 1736, !2, i64 1744, !2, i64 1752, !8, i64 1760, !2, i64 1768, !8, i64 1776, !3, i64 1780, !23, i64 2548, !2, i64 2576, !39, i64 2584, !206, i64 2600, !207, i64 2624, !208, i64 2656, !209, i64 2680, !210, i64 2720, !211, i64 2736, !8, i64 2744, !8, i64 2748, !8, i64 2752, !8, i64 2756, !8, i64 2760, !10, i64 2768, !2, i64 2776, !8, i64 2784, !8, i64 2788}
!206 = !{!"_c24", !10, i64 0, !8, i64 8, !8, i64 12, !8, i64 16}
!207 = !{!"_c40", !10, i64 0, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24}
!208 = !{!"_c48", !10, i64 0, !8, i64 8, !8, i64 12, !8, i64 16}
!209 = !{!"_c56", !10, i64 0, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32}
!210 = !{!"_c64", !10, i64 0, !8, i64 8, !8, i64 12}
!211 = !{!"gs_log2_scale_point_s", !8, i64 0, !8, i64 4}
!212 = !{!204, !2, i64 2792}
!213 = !{!205, !8, i64 84}
!214 = !{!204, !8, i64 2840}
!215 = !{!205, !2, i64 1200}
!216 = !{!205, !8, i64 832}
!217 = !{!205, !8, i64 836}
!218 = !{!165, !2, i64 64}
!219 = !{!165, !2, i64 40}
!220 = !{!7, !3, i64 9008}
!221 = !{!222, !2, i64 8}
!222 = !{!"pdf_color_space_names_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!223 = !{!222, !2, i64 16}
!224 = !{!7, !8, i64 9112}
!225 = !{!222, !2, i64 0}
!226 = !{!7, !8, i64 9524}
!227 = !{!228, !22, i64 0}
!228 = !{!"gs_range_s", !22, i64 0, !22, i64 4}
!229 = !{!228, !22, i64 4}
!230 = !{!205, !2, i64 1728}
!231 = !{i64 0, i64 4, !69, i64 4, i64 4, !69, i64 8, i64 4, !69, i64 12, i64 4, !69, i64 16, i64 4, !69, i64 20, i64 4, !69}
!232 = !{!37, !8, i64 0}
!233 = !{!204, !8, i64 2748}
!234 = !{!37, !8, i64 4}
!235 = !{!204, !8, i64 2752}
!236 = !{!237, !2, i64 1728}
!237 = !{!"gx_device_null_s", !8, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !8, i64 40, !2, i64 48, !9, i64 56, !8, i64 80, !8, i64 84, !8, i64 88, !11, i64 96, !14, i64 816, !8, i64 832, !8, i64 836, !8, i64 840, !8, i64 844, !8, i64 848, !8, i64 852, !3, i64 856, !3, i64 864, !8, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !10, i64 928, !10, i64 936, !8, i64 944, !8, i64 948, !8, i64 952, !8, i64 956, !8, i64 960, !10, i64 968, !10, i64 976, !15, i64 984, !8, i64 1052, !8, i64 1056, !16, i64 1064, !2, i64 1104, !3, i64 1112, !18, i64 1120, !19, i64 1144, !2, i64 1728}
!238 = !{!200, !8, i64 40}
!239 = !{!167, !2, i64 24}
!240 = !{!200, !8, i64 584}
!241 = !{!34, !2, i64 0}
!242 = !{!167, !2, i64 72}
!243 = !{!20, !8, i64 212}
!244 = !{!200, !8, i64 572}
!245 = !{!200, !8, i64 564}
!246 = !{!102, !8, i64 564}
!247 = !{!102, !3, i64 568}
!248 = !{!195, !2, i64 16}
!249 = !{!204, !2, i64 2800}
!250 = !{!205, !2, i64 24}
!251 = !{!204, !2, i64 24}
!252 = !{!253, !2, i64 32}
!253 = !{!"gs_memory_struct_type_s", !8, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56}
!254 = !{!255, !2, i64 0}
!255 = !{!"enum_ptr_s", !2, i64 0, !8, i64 8}
!256 = !{!253, !2, i64 40}
!257 = !{!258, !2, i64 0}
!258 = !{!"gx_image_plane_s", !2, i64 0, !8, i64 8, !8, i64 12}
!259 = !{!258, !8, i64 12}
!260 = !{!151, !8, i64 736}
!261 = !{!262, !8, i64 80}
!262 = !{!"pdf_x_object_s", !2, i64 0, !2, i64 8, !10, i64 16, !8, i64 24, !8, i64 28, !3, i64 32, !10, i64 56, !2, i64 64, !8, i64 72, !8, i64 76, !8, i64 80}
!263 = !{i64 0, i64 128, !5, i64 128, i64 4, !52, i64 136, i64 8, !1, i64 144, i64 8, !1, i64 152, i64 4, !52, i64 160, i64 8, !1, i64 168, i64 8, !1, i64 176, i64 8, !1, i64 184, i64 8, !1}
!264 = !{i64 0, i64 8, !1, i64 8, i64 8, !1, i64 16, i64 8, !1, i64 24, i64 8, !1}
!265 = !{!151, !2, i64 768}
!266 = !{!152, !2, i64 144}
!267 = !{!152, !8, i64 128}
!268 = !{!195, !10, i64 32}
!269 = !{!7, !8, i64 30604}
!270 = !{!262, !8, i64 76}
!271 = !{!7, !27, i64 30640}
!272 = !{!23, !22, i64 0}
!273 = !{!20, !22, i64 132}
!274 = !{!23, !22, i64 4}
!275 = !{!20, !22, i64 136}
!276 = !{!23, !22, i64 8}
!277 = !{!20, !22, i64 140}
!278 = !{!23, !22, i64 12}
!279 = !{!20, !22, i64 144}
!280 = !{!281, !2, i64 32}
!281 = !{!"gs_pattern1_instance_s", !9, i64 0, !2, i64 24, !2, i64 32, !10, i64 40, !282, i64 48, !23, i64 152, !45, i64 176, !8, i64 208, !8, i64 212, !8, i64 216, !8, i64 220, !8, i64 224, !37, i64 228, !10, i64 240}
!282 = !{!"gs_pattern1_template_s", !2, i64 0, !8, i64 8, !283, i64 16, !2, i64 32, !8, i64 40, !8, i64 44, !8, i64 48, !45, i64 56, !22, i64 88, !22, i64 92, !2, i64 96}
!283 = !{!"gs_uid_s", !10, i64 0, !2, i64 8}
!284 = !{!281, !8, i64 88}
!285 = !{!281, !8, i64 92}
!286 = !{!281, !27, i64 112}
!287 = !{!281, !27, i64 104}
!288 = !{!281, !27, i64 120}
!289 = !{!281, !27, i64 128}
!290 = !{!281, !22, i64 136}
!291 = !{!281, !22, i64 140}
!292 = !{!7, !2, i64 1664}
!293 = !{!294, !8, i64 4}
!294 = !{!"cmm_profile_s", !3, i64 0, !3, i64 1, !8, i64 4, !8, i64 8, !3, i64 12, !3, i64 16, !295, i64 20, !10, i64 144, !8, i64 152, !3, i64 156, !8, i64 216, !8, i64 220, !8, i64 224, !296, i64 228, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !9, i64 288, !8, i64 312, !2, i64 320, !2, i64 328, !2, i64 336}
!295 = !{!"gs_range_icc_s", !3, i64 0}
!296 = !{!"gsicc_rendering_param_s", !3, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !8, i64 20}
!297 = !{!7, !2, i64 784}
