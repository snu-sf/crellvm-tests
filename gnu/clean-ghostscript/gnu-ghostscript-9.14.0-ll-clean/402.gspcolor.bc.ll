; ModuleID = './gspcolor.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gc_struct_data_s = type { i16, i16, %struct.gs_memory_struct_type_s*, %struct.gc_ptr_element_s* }
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, {}*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.struct_shared_procs_s = type opaque
%struct.gs_ptr_procs_s = type { void (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i32 (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)* }
%struct.gs_memory_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s* }
%struct.gs_memory_procs_s = type { i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)*, void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)*, void (%struct.gs_memory_s*, i32, i8*)*, void (%struct.gs_memory_s*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i32 (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)*, i32 (%struct.gs_memory_s*, %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i8*)*, void (%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8*)*, void (%struct.gs_memory_s*, i32)* }
%struct.gs_memory_status_s = type { i64, i64, i32 }
%struct.gs_gc_root_s = type { %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i32 }
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
%struct.enum_ptr_s = type { i8*, i32 }
%struct.gc_state_s = type opaque
%struct.gc_ptr_element_s = type { i16, i16 }
%struct.gs_client_color_s = type { %struct.gs_pattern_instance_s*, %struct.gs_paint_color_s }
%struct.gs_pattern_instance_s = type { %struct.rc_header_s, %struct.gs_pattern_type_s*, %struct.gs_state_s*, i64 }
%struct.rc_header_s = type { i64, %struct.gs_memory_s*, void (%struct.gs_memory_s*, i8*, i8*)* }
%struct.gs_pattern_type_s = type { i32, %struct.pp_ }
%struct.pp_ = type { i32 (%struct.gs_pattern_template_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_pattern_template_s*, %struct.gs_matrix_s*, %struct.gs_state_s*, %struct.gs_memory_s*)*, %struct.gs_pattern_template_s* (%struct.gs_pattern_instance_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_state_s*)* }
%struct.gs_pattern_template_s = type { %struct.gs_pattern_type_s*, i32, %struct.gs_uid_s, i8* }
%struct.gs_uid_s = type { i64, i64* }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
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
%struct._mask = type { %struct.mp_, i64, %struct.gx_color_tile_s* }
%struct.mp_ = type { i32, i32 }
%struct.gx_color_tile_s = type { i64, i32, %struct.gs_uid_s, i32, i32, %struct.gs_matrix_s, %struct.gs_rect_s, %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s, %struct.gx_pattern_trans_s*, %union.gx_device_clist_s*, i8, i8, i8, [2 x i8], i32, i32, i32 }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.gx_strip_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16, i16, i16, i32 }
%struct.gx_pattern_trans_s = type { %struct.gx_device_s*, i8*, %struct.gs_memory_s*, %struct.gx_pattern_trans_s*, %struct.gs_int_rect_s, i32, i32, i32, i32, i32, i32, %struct.pdf14_nonseparable_blending_procs_s*, i32, i32, %struct.gs_int_rect_s*, void (i32, i32, i32, i32, i32, i32, %struct.gx_color_tile_s*, %struct.gx_pattern_trans_s*)*, i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)* }
%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }
%struct.pdf14_nonseparable_blending_procs_s = type { void (i32, i8*, i8*, i8*)*, void (i32, i8*, i8*, i8*)* }
%struct.gx_image_enum_s = type opaque
%union.gx_device_clist_s = type opaque
%struct.gx_pattern_cache_s = type { %struct.gs_memory_s*, %struct.gx_color_tile_s*, i32, i32, i32, i64, i64, void (%struct.gx_pattern_cache_s*)* }
%struct.gx_cie_joint_caches_s = type opaque
%struct.gs_devicen_color_map_s = type { i32, i32, i32, i32, i64, [64 x i32] }
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
%struct.gx_image_enum_common_s = type opaque
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_image_common_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s }
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
%struct.gx_transparency_mask_params_s = type { i32, i32, i32, i32, [64 x float], float, i32, i32, i32, i32, [256 x i8], i64, %struct.cmm_profile_s* }
%struct.gx_cm_color_map_procs_s = type { void (%struct.gx_device_s*, i16, i16*)*, void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)*, void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)* }
%struct.gs_pattern1_instance_s = type { %struct.rc_header_s, %struct.gs_pattern_type_s*, %struct.gs_state_s*, i64, %struct.gs_pattern1_template_s, %struct.gs_matrix_s, %struct.gs_rect_s, i32, i32, i32, i32, i32, %struct.gs_int_point_s, i64 }
%struct.gs_pattern1_template_s = type { %struct.gs_pattern_type_s*, i32, %struct.gs_uid_s, i8*, i32, i32, i32, %struct.gs_rect_s, float, float, i32 (%struct.gs_client_color_s*, %struct.gs_state_s*)* }
%struct.gs_fill_attributes_s = type { %struct.gs_fixed_rect_s*, i32, %struct.gx_device_halftone_s*, i32, i32, i32, %struct.patch_fill_state_s* }
%struct.patch_fill_state_s = type opaque
%struct.gs_devn_params_s = type opaque
%struct.gx_process_page_options_s = type { i32 (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i32, i32, i8**)*, void (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_int_rect_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, i8*)*, i8*, i32 }
%struct.gs_device_filter_stack_s = type { %struct.gs_device_filter_stack_s*, %struct.gs_device_filter_s*, %struct.gx_device_s*, %struct.rc_header_s }
%struct.gs_device_filter_s = type opaque
%struct.gs_state_client_procs_s = type { i8* (%struct.gs_memory_s*)*, i32 (i8*, i8*)*, void (i8*, %struct.gs_memory_s*)*, i32 (i8*, i8*, i32)* }
%struct.gs_paint_color_s = type { [64 x float] }
%struct.gs_color_space_s = type { %struct.gs_color_space_type_s*, %struct.rc_header_s, i64, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.client_color_space_data_s*, %struct.cmm_profile_s*, %union.anon }
%struct.gs_color_space_type_s = type { i32, i32, i32, %struct.gs_memory_struct_type_s*, {}*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, void (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)*, i32 (%struct.gs_color_space_s*)* }
%struct.client_color_space_data_s = type { void (%struct.gs_color_space_s*, i32)* }
%union.anon = type { %struct.gs_device_n_params_s }
%struct.gs_device_n_params_s = type { i64*, i32, %struct.gs_device_n_map_s*, %struct.gs_device_n_attributes_s*, i32, i32 (%struct.gs_memory_s*, i64, i8**, i32*)* }
%struct.gs_device_n_map_s = type opaque
%struct.gs_device_n_attributes_s = type opaque
%struct.gs_pattern_params_s = type { i32 }
%struct._pat = type { %struct.gx_color_tile_s* }

@.str = private unnamed_addr constant [22 x i8] c"gs_pattern_template_t\00", align 1
@pattern_template_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 2, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([2 x %struct.gc_ptr_element_s], [2 x %struct.gc_ptr_element_s]* @pattern_template_enum_ptrs, i32 0, i32 0) }, align 8
@st_pattern_template = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 40, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @pattern_template_reloc_ptrs to i8*) }, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"gs_pattern_instance_t\00", align 1
@pattern_instance_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 1, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([1 x %struct.gc_ptr_element_s], [1 x %struct.gc_ptr_element_s]* @pattern_instance_enum_ptrs, i32 0, i32 0) }, align 8
@st_pattern_instance = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 48, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @pattern_instance_reloc_ptrs to i8*) }, align 8
@gs_color_space_type_Pattern = constant { i32, i32, i32, %struct.gs_memory_struct_type_s*, i32 (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, void (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)*, i32 (%struct.gs_color_space_s*)* } { i32 11, i32 0, i32 0, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_color_space_Pattern to %struct.gs_memory_struct_type_s*), i32 (%struct.gs_color_space_s*)* @gx_num_components_Pattern, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)* @gx_init_Pattern, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)* @gx_restrict_Pattern, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)* @gx_no_concrete_space, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)* @gx_no_concretize_color, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)* null, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)* @gx_remap_Pattern, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)* @gx_install_Pattern, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)* @gx_set_overprint_Pattern, void (%struct.gs_color_space_s*)* @gx_final_Pattern, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)* @gx_adjust_color_Pattern, i32 (%struct.gs_color_space_s*, %struct.stream_s*)* @gx_serialize_Pattern, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)* @gx_cspace_no_linear, i32 (%struct.gs_color_space_s*)* @gx_polarity_unknown }, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"gs_make_pattern_common\00", align 1
@gx_dc_type_data_none = external constant %struct.gx_device_color_type_s, align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"gs_pattern_reference\00", align 1
@pattern_template_enum_ptrs = internal constant [2 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 24 }, %struct.gc_ptr_element_s { i16 0, i16 32 }], align 2
@pattern_instance_enum_ptrs = internal constant [1 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 32 }], align 2
@.str.4 = private unnamed_addr constant [23 x i8] c"gs_color_space_Pattern\00", align 1
@st_color_space_Pattern = internal constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 120, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @cs_Pattern_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @cs_Pattern_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@gx_dc_pattern = external constant %struct.gx_device_color_type_s, align 8
@.str.5 = private unnamed_addr constant [24 x i8] c"gx_adjust_color_Pattern\00", align 1

declare %struct.gs_ptr_procs_s* @basic_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #0

declare void @basic_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @gx_num_components_Pattern(%struct.gs_color_space_s* %pcs) #1 {
entry:
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %0, i32 0, i32 7
  %pattern = bitcast %union.anon* %params to %struct.gs_pattern_params_s*
  %has_base_space = getelementptr inbounds %struct.gs_pattern_params_s, %struct.gs_pattern_params_s* %pattern, i32 0, i32 0
  %1 = load i32, i32* %has_base_space, align 4, !tbaa !5
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %base_space = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %2, i32 0, i32 3
  %3 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space, align 8, !tbaa !8
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %3, i32 0, i32 0
  %4 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !12
  %num_components = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %4, i32 0, i32 4
  %num_components1 = bitcast {}** %num_components to i32 (%struct.gs_color_space_s*)**
  %5 = load i32 (%struct.gs_color_space_s*)*, i32 (%struct.gs_color_space_s*)** %num_components1, align 8, !tbaa !13
  %6 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %base_space2 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %6, i32 0, i32 3
  %7 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space2, align 8, !tbaa !8
  %call = call i32 %5(%struct.gs_color_space_s* %7) #3
  %sub = sub nsw i32 -1, %call
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ -1, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define internal void @gx_init_Pattern(%struct.gs_client_color_s* %pcc, %struct.gs_color_space_s* %pcs) #1 {
entry:
  %pcc.addr = alloca %struct.gs_client_color_s*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pbcs = alloca %struct.gs_color_space_s*, align 8
  store %struct.gs_client_color_s* %pcc, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %0, i32 0, i32 7
  %pattern = bitcast %union.anon* %params to %struct.gs_pattern_params_s*
  %has_base_space = getelementptr inbounds %struct.gs_pattern_params_s, %struct.gs_pattern_params_s* %pattern, i32 0, i32 0
  %1 = load i32, i32* %has_base_space, align 4, !tbaa !5
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = bitcast %struct.gs_color_space_s** %pbcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %base_space = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %3, i32 0, i32 3
  %4 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space, align 8, !tbaa !8
  store %struct.gs_color_space_s* %4, %struct.gs_color_space_s** %pbcs, align 8, !tbaa !1
  %5 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pbcs, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %5, i32 0, i32 0
  %6 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !12
  %init_color = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %6, i32 0, i32 5
  %7 = load void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)** %init_color, align 8, !tbaa !15
  %8 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %9 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pbcs, align 8, !tbaa !1
  call void %7(%struct.gs_client_color_s* %8, %struct.gs_color_space_s* %9) #3
  %10 = bitcast %struct.gs_color_space_s** %pbcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gx_restrict_Pattern(%struct.gs_client_color_s* %pcc, %struct.gs_color_space_s* %pcs) #1 {
entry:
  %pcc.addr = alloca %struct.gs_client_color_s*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pbcs = alloca %struct.gs_color_space_s*, align 8
  store %struct.gs_client_color_s* %pcc, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %pattern = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %0, i32 0, i32 0
  %1 = load %struct.gs_pattern_instance_s*, %struct.gs_pattern_instance_s** %pattern, align 8, !tbaa !16
  %tobool = icmp ne %struct.gs_pattern_instance_s* %1, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %pattern1 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %2, i32 0, i32 0
  %3 = load %struct.gs_pattern_instance_s*, %struct.gs_pattern_instance_s** %pattern1, align 8, !tbaa !16
  %type = getelementptr inbounds %struct.gs_pattern_instance_s, %struct.gs_pattern_instance_s* %3, i32 0, i32 1
  %4 = load %struct.gs_pattern_type_s*, %struct.gs_pattern_type_s** %type, align 8, !tbaa !19
  %procs = getelementptr inbounds %struct.gs_pattern_type_s, %struct.gs_pattern_type_s* %4, i32 0, i32 1
  %uses_base_space = getelementptr inbounds %struct.pp_, %struct.pp_* %procs, i32 0, i32 0
  %5 = load i32 (%struct.gs_pattern_template_s*)*, i32 (%struct.gs_pattern_template_s*)** %uses_base_space, align 8, !tbaa !21
  %6 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %call = call %struct.gs_pattern_template_s* @gs_get_pattern(%struct.gs_client_color_s* %6) #3
  %call2 = call i32 %5(%struct.gs_pattern_template_s* %call) #3
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %land.lhs.true.4, label %if.end

land.lhs.true.4:                                  ; preds = %land.lhs.true
  %7 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %7, i32 0, i32 7
  %pattern5 = bitcast %union.anon* %params to %struct.gs_pattern_params_s*
  %has_base_space = getelementptr inbounds %struct.gs_pattern_params_s, %struct.gs_pattern_params_s* %pattern5, i32 0, i32 0
  %8 = load i32, i32* %has_base_space, align 4, !tbaa !5
  %tobool6 = icmp ne i32 %8, 0
  br i1 %tobool6, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.4
  %9 = bitcast %struct.gs_color_space_s** %pbcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %base_space = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %10, i32 0, i32 3
  %11 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space, align 8, !tbaa !8
  store %struct.gs_color_space_s* %11, %struct.gs_color_space_s** %pbcs, align 8, !tbaa !1
  %12 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pbcs, align 8, !tbaa !1
  %type7 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %12, i32 0, i32 0
  %13 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type7, align 8, !tbaa !12
  %restrict_color = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %13, i32 0, i32 6
  %14 = load void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)** %restrict_color, align 8, !tbaa !24
  %15 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %16 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pbcs, align 8, !tbaa !1
  call void %14(%struct.gs_client_color_s* %15, %struct.gs_color_space_s* %16) #3
  %17 = bitcast %struct.gs_color_space_s** %pbcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.4, %land.lhs.true, %entry
  ret void
}

declare %struct.gs_color_space_s* @gx_no_concrete_space(%struct.gs_color_space_s*, %struct.gs_imager_state_s*) #0

declare i32 @gx_no_concretize_color(%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @gx_remap_Pattern(%struct.gs_client_color_s* %pc, %struct.gs_color_space_s* %pcs, %struct.gx_device_color_s* %pdc, %struct.gs_imager_state_s* %pis, %struct.gx_device_s* %dev, i32 %select) #1 {
entry:
  %retval = alloca i32, align 4
  %pc.addr = alloca %struct.gs_client_color_s*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pdc.addr = alloca %struct.gx_device_color_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %select.addr = alloca i32, align 4
  store %struct.gs_client_color_s* %pc, %struct.gs_client_color_s** %pc.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdc, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %select, i32* %select.addr, align 4, !tbaa !25
  %0 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pc.addr, align 8, !tbaa !1
  %pattern = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %0, i32 0, i32 0
  %1 = load %struct.gs_pattern_instance_s*, %struct.gs_pattern_instance_s** %pattern, align 8, !tbaa !16
  %cmp = icmp eq %struct.gs_pattern_instance_s* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %ccolor_valid = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %2, i32 0, i32 3
  store i32 0, i32* %ccolor_valid, align 4, !tbaa !26
  %3 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %ccolor = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %3, i32 0, i32 4
  %pattern1 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %ccolor, i32 0, i32 0
  store %struct.gs_pattern_instance_s* null, %struct.gs_pattern_instance_s** %pattern1, align 8, !tbaa !31
  %4 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %mask = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %4, i32 0, i32 5
  %id = getelementptr inbounds %struct._mask, %struct._mask* %mask, i32 0, i32 1
  store i64 0, i64* %id, align 8, !tbaa !32
  %5 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %mask2 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %5, i32 0, i32 5
  %m_tile = getelementptr inbounds %struct._mask, %struct._mask* %mask2, i32 0, i32 2
  store %struct.gx_color_tile_s* null, %struct.gx_color_tile_s** %m_tile, align 8, !tbaa !33
  %6 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %6, i32 0, i32 1
  %pattern3 = bitcast %union._c* %colors to %struct._pat*
  %p_tile = getelementptr inbounds %struct._pat, %struct._pat* %pattern3, i32 0, i32 0
  store %struct.gx_color_tile_s* null, %struct.gx_color_tile_s** %p_tile, align 8, !tbaa !34
  %7 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %7, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_pattern, %struct.gx_device_color_type_s** %type, align 8, !tbaa !36
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %8 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pc.addr, align 8, !tbaa !1
  %pattern4 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %8, i32 0, i32 0
  %9 = load %struct.gs_pattern_instance_s*, %struct.gs_pattern_instance_s** %pattern4, align 8, !tbaa !16
  %type5 = getelementptr inbounds %struct.gs_pattern_instance_s, %struct.gs_pattern_instance_s* %9, i32 0, i32 1
  %10 = load %struct.gs_pattern_type_s*, %struct.gs_pattern_type_s** %type5, align 8, !tbaa !19
  %procs = getelementptr inbounds %struct.gs_pattern_type_s, %struct.gs_pattern_type_s* %10, i32 0, i32 1
  %remap_color = getelementptr inbounds %struct.pp_, %struct.pp_* %procs, i32 0, i32 3
  %11 = load i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %remap_color, align 8, !tbaa !37
  %12 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pc.addr, align 8, !tbaa !1
  %13 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %14 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %15 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %16 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %17 = load i32, i32* %select.addr, align 4, !tbaa !25
  %call = call i32 %11(%struct.gs_client_color_s* %12, %struct.gs_color_space_s* %13, %struct.gx_device_color_s* %14, %struct.gs_imager_state_s* %15, %struct.gx_device_s* %16, i32 %17) #3
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_install_Pattern(%struct.gs_color_space_s* %pcs, %struct.gs_state_s* %pgs) #1 {
entry:
  %retval = alloca i32, align 4
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %0, i32 0, i32 7
  %pattern = bitcast %union.anon* %params to %struct.gs_pattern_params_s*
  %has_base_space = getelementptr inbounds %struct.gs_pattern_params_s, %struct.gs_pattern_params_s* %pattern, i32 0, i32 0
  %1 = load i32, i32* %has_base_space, align 4, !tbaa !5
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %base_space = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %2, i32 0, i32 3
  %3 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space, align 8, !tbaa !8
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %3, i32 0, i32 0
  %4 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !12
  %install_cspace = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %4, i32 0, i32 11
  %5 = load i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)** %install_cspace, align 8, !tbaa !38
  %6 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %base_space1 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %6, i32 0, i32 3
  %7 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space1, align 8, !tbaa !8
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call = call i32 %5(%struct.gs_color_space_s* %7, %struct.gs_state_s* %8) #3
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_set_overprint_Pattern(%struct.gs_color_space_s* %pcs, %struct.gs_state_s* %pgs) #1 {
entry:
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @gx_final_Pattern(%struct.gs_color_space_s* %pcs) #1 {
entry:
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gx_adjust_color_Pattern(%struct.gs_client_color_s* %pcc, %struct.gs_color_space_s* %pcs, i32 %delta) #1 {
entry:
  %pcc.addr = alloca %struct.gs_client_color_s*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %delta.addr = alloca i32, align 4
  %pinst = alloca %struct.gs_pattern_instance_s*, align 8
  store %struct.gs_client_color_s* %pcc, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store i32 %delta, i32* %delta.addr, align 4, !tbaa !39
  %0 = bitcast %struct.gs_pattern_instance_s** %pinst to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %pattern = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %1, i32 0, i32 0
  %2 = load %struct.gs_pattern_instance_s*, %struct.gs_pattern_instance_s** %pattern, align 8, !tbaa !16
  store %struct.gs_pattern_instance_s* %2, %struct.gs_pattern_instance_s** %pinst, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load %struct.gs_pattern_instance_s*, %struct.gs_pattern_instance_s** %pinst, align 8, !tbaa !1
  %tobool = icmp ne %struct.gs_pattern_instance_s* %3, null
  br i1 %tobool, label %if.then, label %if.end.23

if.then:                                          ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %if.then
  br label %do.body.2

do.body.2:                                        ; preds = %do.body.1
  br label %do.cond

do.cond:                                          ; preds = %do.body.2
  br label %do.end

do.end:                                           ; preds = %do.cond
  %4 = load i32, i32* %delta.addr, align 4, !tbaa !39
  %conv = sext i32 %4 to i64
  %5 = load %struct.gs_pattern_instance_s*, %struct.gs_pattern_instance_s** %pinst, align 8, !tbaa !1
  %rc = getelementptr inbounds %struct.gs_pattern_instance_s, %struct.gs_pattern_instance_s* %5, i32 0, i32 0
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %6 = load i64, i64* %ref_count, align 8, !tbaa !40
  %add = add nsw i64 %6, %conv
  store i64 %add, i64* %ref_count, align 8, !tbaa !40
  br label %do.cond.3

do.cond.3:                                        ; preds = %do.end
  br label %do.end.4

do.end.4:                                         ; preds = %do.cond.3
  %7 = load %struct.gs_pattern_instance_s*, %struct.gs_pattern_instance_s** %pinst, align 8, !tbaa !1
  %rc5 = getelementptr inbounds %struct.gs_pattern_instance_s, %struct.gs_pattern_instance_s* %7, i32 0, i32 0
  %ref_count6 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc5, i32 0, i32 0
  %8 = load i64, i64* %ref_count6, align 8, !tbaa !40
  %tobool7 = icmp ne i64 %8, 0
  br i1 %tobool7, label %if.else, label %if.then.8

if.then.8:                                        ; preds = %do.end.4
  br label %do.body.9

do.body.9:                                        ; preds = %if.then.8
  br label %do.body.10

do.body.10:                                       ; preds = %do.body.9
  br label %do.cond.11

do.cond.11:                                       ; preds = %do.body.10
  br label %do.end.12

do.end.12:                                        ; preds = %do.cond.11
  %9 = load %struct.gs_pattern_instance_s*, %struct.gs_pattern_instance_s** %pinst, align 8, !tbaa !1
  %rc13 = getelementptr inbounds %struct.gs_pattern_instance_s, %struct.gs_pattern_instance_s* %9, i32 0, i32 0
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc13, i32 0, i32 2
  %10 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !41
  %11 = load %struct.gs_pattern_instance_s*, %struct.gs_pattern_instance_s** %pinst, align 8, !tbaa !1
  %rc14 = getelementptr inbounds %struct.gs_pattern_instance_s, %struct.gs_pattern_instance_s* %11, i32 0, i32 0
  %memory = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc14, i32 0, i32 1
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !42
  %13 = load %struct.gs_pattern_instance_s*, %struct.gs_pattern_instance_s** %pinst, align 8, !tbaa !1
  %14 = bitcast %struct.gs_pattern_instance_s* %13 to i8*
  call void %10(%struct.gs_memory_s* %12, i8* %14, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i32 0, i32 0)) #3
  br label %do.cond.15

do.cond.15:                                       ; preds = %do.end.12
  br label %do.end.16

do.end.16:                                        ; preds = %do.cond.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  br label %do.cond.18

do.cond.18:                                       ; preds = %do.body.17
  br label %do.end.19

do.end.19:                                        ; preds = %do.cond.18
  br label %if.end

if.else:                                          ; preds = %do.end.4
  br label %do.body.20

do.body.20:                                       ; preds = %if.else
  br label %do.cond.21

do.cond.21:                                       ; preds = %do.body.20
  br label %do.end.22

do.end.22:                                        ; preds = %do.cond.21
  br label %if.end

if.end:                                           ; preds = %do.end.22, %do.end.19
  br label %if.end.23

if.end.23:                                        ; preds = %if.end, %do.body
  br label %do.cond.24

do.cond.24:                                       ; preds = %if.end.23
  br label %do.end.25

do.end.25:                                        ; preds = %do.cond.24
  %15 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %tobool26 = icmp ne %struct.gs_color_space_s* %15, null
  br i1 %tobool26, label %land.lhs.true, label %if.end.31

land.lhs.true:                                    ; preds = %do.end.25
  %16 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %16, i32 0, i32 7
  %pattern27 = bitcast %union.anon* %params to %struct.gs_pattern_params_s*
  %has_base_space = getelementptr inbounds %struct.gs_pattern_params_s, %struct.gs_pattern_params_s* %pattern27, i32 0, i32 0
  %17 = load i32, i32* %has_base_space, align 4, !tbaa !5
  %tobool28 = icmp ne i32 %17, 0
  br i1 %tobool28, label %if.then.29, label %if.end.31

if.then.29:                                       ; preds = %land.lhs.true
  %18 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %base_space = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %18, i32 0, i32 3
  %19 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space, align 8, !tbaa !8
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %19, i32 0, i32 0
  %20 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !12
  %adjust_color_count = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %20, i32 0, i32 14
  %21 = load void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)** %adjust_color_count, align 8, !tbaa !43
  %22 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %23 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %base_space30 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %23, i32 0, i32 3
  %24 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space30, align 8, !tbaa !8
  %25 = load i32, i32* %delta.addr, align 4, !tbaa !39
  call void %21(%struct.gs_client_color_s* %22, %struct.gs_color_space_s* %24, i32 %25) #3
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.29, %land.lhs.true, %do.end.25
  %26 = bitcast %struct.gs_pattern_instance_s** %pinst to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_serialize_Pattern(%struct.gs_color_space_s* %pcs, %struct.stream_s* %s) #1 {
entry:
  %retval = alloca i32, align 4
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %s.addr = alloca %struct.stream_s*, align 8
  %p = alloca %struct.gs_pattern_params_s*, align 8
  %n = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_pattern_params_s** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %1, i32 0, i32 7
  %pattern = bitcast %union.anon* %params to %struct.gs_pattern_params_s*
  store %struct.gs_pattern_params_s* %pattern, %struct.gs_pattern_params_s** %p, align 8, !tbaa !1
  %2 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %5 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call = call i32 @gx_serialize_cspace_type(%struct.gs_color_space_s* %4, %struct.stream_s* %5) #3
  store i32 %call, i32* %code, align 4, !tbaa !39
  %6 = load i32, i32* %code, align 4, !tbaa !39
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %code, align 4, !tbaa !39
  store i32 %7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %9 = load %struct.gs_pattern_params_s*, %struct.gs_pattern_params_s** %p, align 8, !tbaa !1
  %has_base_space = getelementptr inbounds %struct.gs_pattern_params_s, %struct.gs_pattern_params_s* %9, i32 0, i32 0
  %10 = bitcast i32* %has_base_space to i8*
  %call1 = call i32 @sputs(%struct.stream_s* %8, i8* %10, i32 4, i32* %n) #3
  store i32 %call1, i32* %code, align 4, !tbaa !39
  %11 = load i32, i32* %code, align 4, !tbaa !39
  %cmp2 = icmp slt i32 %11, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %12 = load i32, i32* %code, align 4, !tbaa !39
  store i32 %12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %13 = load %struct.gs_pattern_params_s*, %struct.gs_pattern_params_s** %p, align 8, !tbaa !1
  %has_base_space5 = getelementptr inbounds %struct.gs_pattern_params_s, %struct.gs_pattern_params_s* %13, i32 0, i32 0
  %14 = load i32, i32* %has_base_space5, align 4, !tbaa !5
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %if.end.4
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %if.end.4
  %15 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %base_space = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %15, i32 0, i32 3
  %16 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space, align 8, !tbaa !8
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %16, i32 0, i32 0
  %17 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !12
  %serialize = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %17, i32 0, i32 15
  %18 = load i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)** %serialize, align 8, !tbaa !44
  %19 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %base_space8 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %19, i32 0, i32 3
  %20 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space8, align 8, !tbaa !8
  %21 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call9 = call i32 %18(%struct.gs_color_space_s* %20, %struct.stream_s* %21) #3
  store i32 %call9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.7, %if.then.6, %if.then.3, %if.then
  %22 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #2
  %23 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #2
  %24 = bitcast %struct.gs_pattern_params_s** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #2
  %25 = load i32, i32* %retval
  ret i32 %25
}

declare i32 @gx_cspace_no_linear(%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*) #0

declare i32 @gx_polarity_unknown(%struct.gs_color_space_s*) #0

; Function Attrs: nounwind uwtable
define void @gs_pattern_common_init(%struct.gs_pattern_template_s* %ppat, %struct.gs_pattern_type_s* %type) #1 {
entry:
  %ppat.addr = alloca %struct.gs_pattern_template_s*, align 8
  %type.addr = alloca %struct.gs_pattern_type_s*, align 8
  store %struct.gs_pattern_template_s* %ppat, %struct.gs_pattern_template_s** %ppat.addr, align 8, !tbaa !1
  store %struct.gs_pattern_type_s* %type, %struct.gs_pattern_type_s** %type.addr, align 8, !tbaa !1
  %0 = load %struct.gs_pattern_type_s*, %struct.gs_pattern_type_s** %type.addr, align 8, !tbaa !1
  %1 = load %struct.gs_pattern_template_s*, %struct.gs_pattern_template_s** %ppat.addr, align 8, !tbaa !1
  %type1 = getelementptr inbounds %struct.gs_pattern_template_s, %struct.gs_pattern_template_s* %1, i32 0, i32 0
  store %struct.gs_pattern_type_s* %0, %struct.gs_pattern_type_s** %type1, align 8, !tbaa !45
  %2 = load %struct.gs_pattern_type_s*, %struct.gs_pattern_type_s** %type.addr, align 8, !tbaa !1
  %PatternType = getelementptr inbounds %struct.gs_pattern_type_s, %struct.gs_pattern_type_s* %2, i32 0, i32 0
  %3 = load i32, i32* %PatternType, align 4, !tbaa !48
  %4 = load %struct.gs_pattern_template_s*, %struct.gs_pattern_template_s** %ppat.addr, align 8, !tbaa !1
  %PatternType2 = getelementptr inbounds %struct.gs_pattern_template_s, %struct.gs_pattern_template_s* %4, i32 0, i32 1
  store i32 %3, i32* %PatternType2, align 4, !tbaa !49
  %5 = load %struct.gs_pattern_template_s*, %struct.gs_pattern_template_s** %ppat.addr, align 8, !tbaa !1
  %uid = getelementptr inbounds %struct.gs_pattern_template_s, %struct.gs_pattern_template_s* %5, i32 0, i32 2
  %id = getelementptr inbounds %struct.gs_uid_s, %struct.gs_uid_s* %uid, i32 0, i32 0
  store i64 9223372036854775807, i64* %id, align 8, !tbaa !50
  %6 = load %struct.gs_pattern_template_s*, %struct.gs_pattern_template_s** %ppat.addr, align 8, !tbaa !1
  %uid3 = getelementptr inbounds %struct.gs_pattern_template_s, %struct.gs_pattern_template_s* %6, i32 0, i32 2
  %xvalues = getelementptr inbounds %struct.gs_uid_s, %struct.gs_uid_s* %uid3, i32 0, i32 1
  store i64* null, i64** %xvalues, align 8, !tbaa !51
  %7 = load %struct.gs_pattern_template_s*, %struct.gs_pattern_template_s** %ppat.addr, align 8, !tbaa !1
  %client_data = getelementptr inbounds %struct.gs_pattern_template_s, %struct.gs_pattern_template_s* %7, i32 0, i32 3
  store i8* null, i8** %client_data, align 8, !tbaa !52
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gs_make_pattern(%struct.gs_client_color_s* %pcc, %struct.gs_pattern_template_s* %pcp, %struct.gs_matrix_s* %pmat, %struct.gs_state_s* %pgs, %struct.gs_memory_s* %mem) #1 {
entry:
  %pcc.addr = alloca %struct.gs_client_color_s*, align 8
  %pcp.addr = alloca %struct.gs_pattern_template_s*, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  store %struct.gs_client_color_s* %pcc, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  store %struct.gs_pattern_template_s* %pcp, %struct.gs_pattern_template_s** %pcp.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = load %struct.gs_pattern_template_s*, %struct.gs_pattern_template_s** %pcp.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_pattern_template_s, %struct.gs_pattern_template_s* %0, i32 0, i32 0
  %1 = load %struct.gs_pattern_type_s*, %struct.gs_pattern_type_s** %type, align 8, !tbaa !45
  %procs = getelementptr inbounds %struct.gs_pattern_type_s, %struct.gs_pattern_type_s* %1, i32 0, i32 1
  %make_pattern = getelementptr inbounds %struct.pp_, %struct.pp_* %procs, i32 0, i32 1
  %2 = load i32 (%struct.gs_client_color_s*, %struct.gs_pattern_template_s*, %struct.gs_matrix_s*, %struct.gs_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_pattern_template_s*, %struct.gs_matrix_s*, %struct.gs_state_s*, %struct.gs_memory_s*)** %make_pattern, align 8, !tbaa !53
  %3 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %4 = load %struct.gs_pattern_template_s*, %struct.gs_pattern_template_s** %pcp.addr, align 8, !tbaa !1
  %5 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i32 %2(%struct.gs_client_color_s* %3, %struct.gs_pattern_template_s* %4, %struct.gs_matrix_s* %5, %struct.gs_state_s* %6, %struct.gs_memory_s* %7) #3
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gs_make_pattern_common(%struct.gs_client_color_s* %pcc, %struct.gs_pattern_template_s* %ptemp, %struct.gs_matrix_s* %pmat, %struct.gs_state_s* %pgs, %struct.gs_memory_s* %mem, %struct.gs_memory_struct_type_s* %pstype) #1 {
entry:
  %retval = alloca i32, align 4
  %pcc.addr = alloca %struct.gs_client_color_s*, align 8
  %ptemp.addr = alloca %struct.gs_pattern_template_s*, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %pinst = alloca %struct.gs_pattern_instance_s*, align 8
  %saved = alloca %struct.gs_state_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_client_color_s* %pcc, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  store %struct.gs_pattern_template_s* %ptemp, %struct.gs_pattern_template_s** %ptemp.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_pattern_instance_s** %pinst to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast %struct.gs_state_s** %saved to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_memory_s* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call = call %struct.gs_memory_s* @gs_state_memory(%struct.gs_state_s* %3) #3
  store %struct.gs_memory_s* %call, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %4, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %5 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !54
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %7 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  %call1 = call i8* %5(%struct.gs_memory_s* %6, %struct.gs_memory_struct_type_s* %7, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0)) #3
  %8 = bitcast i8* %call1 to %struct.gs_pattern_instance_s*
  store %struct.gs_pattern_instance_s* %8, %struct.gs_pattern_instance_s** %pinst, align 8, !tbaa !1
  %cmp2 = icmp eq %struct.gs_pattern_instance_s* %8, null
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body
  br label %do.body.4

do.body.4:                                        ; preds = %if.else
  %9 = load %struct.gs_pattern_instance_s*, %struct.gs_pattern_instance_s** %pinst, align 8, !tbaa !1
  %rc = getelementptr inbounds %struct.gs_pattern_instance_s, %struct.gs_pattern_instance_s* %9, i32 0, i32 0
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  store i64 1, i64* %ref_count, align 8, !tbaa !40
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %11 = load %struct.gs_pattern_instance_s*, %struct.gs_pattern_instance_s** %pinst, align 8, !tbaa !1
  %rc5 = getelementptr inbounds %struct.gs_pattern_instance_s, %struct.gs_pattern_instance_s* %11, i32 0, i32 0
  %memory = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc5, i32 0, i32 1
  store %struct.gs_memory_s* %10, %struct.gs_memory_s** %memory, align 8, !tbaa !42
  %12 = load %struct.gs_pattern_instance_s*, %struct.gs_pattern_instance_s** %pinst, align 8, !tbaa !1
  %rc6 = getelementptr inbounds %struct.gs_pattern_instance_s, %struct.gs_pattern_instance_s* %12, i32 0, i32 0
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc6, i32 0, i32 2
  store void (%struct.gs_memory_s*, i8*, i8*)* @rc_free_struct_only, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !41
  br label %do.body.7

do.body.7:                                        ; preds = %do.body.4
  br label %do.cond

do.cond:                                          ; preds = %do.body.7
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.cond.8

do.cond.8:                                        ; preds = %do.end
  br label %do.end.9

do.end.9:                                         ; preds = %do.cond.8
  br label %if.end.10

if.end.10:                                        ; preds = %do.end.9
  br label %do.cond.11

do.cond.11:                                       ; preds = %if.end.10
  br label %do.end.12

do.end.12:                                        ; preds = %do.cond.11
  %13 = load %struct.gs_pattern_instance_s*, %struct.gs_pattern_instance_s** %pinst, align 8, !tbaa !1
  %rc13 = getelementptr inbounds %struct.gs_pattern_instance_s, %struct.gs_pattern_instance_s* %13, i32 0, i32 0
  %free14 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc13, i32 0, i32 2
  store void (%struct.gs_memory_s*, i8*, i8*)* @rc_free_pattern_instance, void (%struct.gs_memory_s*, i8*, i8*)** %free14, align 8, !tbaa !41
  %14 = load %struct.gs_pattern_template_s*, %struct.gs_pattern_template_s** %ptemp.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_pattern_template_s, %struct.gs_pattern_template_s* %14, i32 0, i32 0
  %15 = load %struct.gs_pattern_type_s*, %struct.gs_pattern_type_s** %type, align 8, !tbaa !45
  %16 = load %struct.gs_pattern_instance_s*, %struct.gs_pattern_instance_s** %pinst, align 8, !tbaa !1
  %type15 = getelementptr inbounds %struct.gs_pattern_instance_s, %struct.gs_pattern_instance_s* %16, i32 0, i32 1
  store %struct.gs_pattern_type_s* %15, %struct.gs_pattern_type_s** %type15, align 8, !tbaa !19
  %17 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call16 = call %struct.gs_state_s* @gs_state_copy(%struct.gs_state_s* %17, %struct.gs_memory_s* %18) #3
  store %struct.gs_state_s* %call16, %struct.gs_state_s** %saved, align 8, !tbaa !1
  %19 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8, !tbaa !1
  %cmp17 = icmp eq %struct.gs_state_s* %19, null
  br i1 %cmp17, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %do.end.12
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs19 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %20, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs19, i32 0, i32 2
  %21 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !57
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %23 = load %struct.gs_pattern_instance_s*, %struct.gs_pattern_instance_s** %pinst, align 8, !tbaa !1
  %24 = bitcast %struct.gs_pattern_instance_s* %23 to i8*
  call void %21(%struct.gs_memory_s* %22, i8* %24, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0)) #3
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.20:                                        ; preds = %do.end.12
  %25 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8, !tbaa !1
  %26 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %call21 = call i32 @gs_concat(%struct.gs_state_s* %25, %struct.gs_matrix_s* %26) #3
  %27 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8, !tbaa !1
  %call22 = call i32 @gs_newpath(%struct.gs_state_s* %27) #3
  %28 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8, !tbaa !1
  %29 = load %struct.gs_pattern_instance_s*, %struct.gs_pattern_instance_s** %pinst, align 8, !tbaa !1
  %saved23 = getelementptr inbounds %struct.gs_pattern_instance_s, %struct.gs_pattern_instance_s* %29, i32 0, i32 2
  store %struct.gs_state_s* %28, %struct.gs_state_s** %saved23, align 8, !tbaa !58
  %30 = load %struct.gs_pattern_instance_s*, %struct.gs_pattern_instance_s** %pinst, align 8, !tbaa !1
  %31 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %pattern = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %31, i32 0, i32 0
  store %struct.gs_pattern_instance_s* %30, %struct.gs_pattern_instance_s** %pattern, align 8, !tbaa !16
  %32 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call24 = call i64 @gs_next_ids(%struct.gs_memory_s* %32, i32 1) #3
  %33 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %pattern25 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %33, i32 0, i32 0
  %34 = load %struct.gs_pattern_instance_s*, %struct.gs_pattern_instance_s** %pattern25, align 8, !tbaa !16
  %pattern_id = getelementptr inbounds %struct.gs_pattern_instance_s, %struct.gs_pattern_instance_s* %34, i32 0, i32 3
  store i64 %call24, i64* %pattern_id, align 8, !tbaa !59
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.20, %if.then.18, %if.then.3
  %35 = bitcast %struct.gs_state_s** %saved to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #2
  %36 = bitcast %struct.gs_pattern_instance_s** %pinst to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #2
  %37 = load i32, i32* %retval
  ret i32 %37
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare %struct.gs_memory_s* @gs_state_memory(%struct.gs_state_s*) #0

declare void @rc_free_struct_only(%struct.gs_memory_s*, i8*, i8*) #0

; Function Attrs: nounwind uwtable
define void @rc_free_pattern_instance(%struct.gs_memory_s* %mem, i8* %pinst_void, i8* %cname) #1 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pinst_void.addr = alloca i8*, align 8
  %cname.addr = alloca i8*, align 8
  %pinst = alloca %struct.gs_pattern_instance_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %pinst_void, i8** %pinst_void.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_pattern_instance_s** %pinst to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %pinst_void.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_pattern_instance_s*
  store %struct.gs_pattern_instance_s* %2, %struct.gs_pattern_instance_s** %pinst, align 8, !tbaa !1
  %3 = load %struct.gs_pattern_instance_s*, %struct.gs_pattern_instance_s** %pinst, align 8, !tbaa !1
  %saved = getelementptr inbounds %struct.gs_pattern_instance_s, %struct.gs_pattern_instance_s* %3, i32 0, i32 2
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8, !tbaa !58
  %call = call i32 @gs_state_free(%struct.gs_state_s* %4) #3
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %6 = load i8*, i8** %pinst_void.addr, align 8, !tbaa !1
  %7 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void @rc_free_struct_only(%struct.gs_memory_s* %5, i8* %6, i8* %7) #3
  %8 = bitcast %struct.gs_pattern_instance_s** %pinst to i8*
  call void @llvm.lifetime.end(i64 8, i8* %8) #2
  ret void
}

declare %struct.gs_state_s* @gs_state_copy(%struct.gs_state_s*, %struct.gs_memory_s*) #0

declare i32 @gs_concat(%struct.gs_state_s*, %struct.gs_matrix_s*) #0

declare i32 @gs_newpath(%struct.gs_state_s*) #0

declare i64 @gs_next_ids(%struct.gs_memory_s*, i32) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

declare i32 @gs_state_free(%struct.gs_state_s*) #0

; Function Attrs: nounwind uwtable
define i32 @gs_setpattern(%struct.gs_state_s* %pgs, %struct.gs_client_color_s* %pcc) #1 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pcc.addr = alloca %struct.gs_client_color_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_client_color_s* %pcc, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call = call i32 @gs_setpatternspace(%struct.gs_state_s* %1) #3
  store i32 %call, i32* %code, align 4, !tbaa !39
  %2 = load i32, i32* %code, align 4, !tbaa !39
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %code, align 4, !tbaa !39
  store i32 %3, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %5 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %call1 = call i32 @gs_setcolor(%struct.gs_state_s* %4, %struct.gs_client_color_s* %5) #3
  store i32 %call1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %6) #2
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @gs_setpatternspace(%struct.gs_state_s* %pgs) #1 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %code = alloca i32, align 4
  %ccs_old = alloca %struct.gs_color_space_s*, align 8
  %cleanup.dest.slot = alloca i32
  %pcs = alloca %struct.gs_color_space_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 0, i32* %code, align 4, !tbaa !39
  %1 = bitcast %struct.gs_color_space_s** %ccs_old to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %in_cachedevice = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %2, i32 0, i32 74
  %3 = load i32, i32* %in_cachedevice, align 4, !tbaa !60
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.19

if.end:                                           ; preds = %entry
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %4, i32 0, i32 69
  %arrayidx = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %color, i32 0, i64 0
  %color_space = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx, i32 0, i32 0
  %5 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %color_space, align 8, !tbaa !76
  store %struct.gs_color_space_s* %5, %struct.gs_color_space_s** %ccs_old, align 8, !tbaa !1
  %6 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ccs_old, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %6, i32 0, i32 0
  %7 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !12
  %index = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %7, i32 0, i32 0
  %8 = load i32, i32* %index, align 4, !tbaa !78
  %cmp = icmp ne i32 %8, 11
  br i1 %cmp, label %if.then.1, label %if.end.18

if.then.1:                                        ; preds = %if.end
  %9 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %10, i32 0, i32 1
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !79
  %call = call %struct.gs_color_space_s* @gs_cspace_alloc(%struct.gs_memory_s* %11, %struct.gs_color_space_type_s* bitcast ({ i32, i32, i32, %struct.gs_memory_struct_type_s*, i32 (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, void (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)*, i32 (%struct.gs_color_space_s*)* }* @gs_color_space_type_Pattern to %struct.gs_color_space_type_s*)) #3
  store %struct.gs_color_space_s* %call, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %12 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %cmp2 = icmp eq %struct.gs_color_space_s* %12, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.then.1
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.then.1
  %13 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ccs_old, align 8, !tbaa !1
  %14 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %base_space = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %14, i32 0, i32 3
  store %struct.gs_color_space_s* %13, %struct.gs_color_space_s** %base_space, align 8, !tbaa !8
  %15 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %15, i32 0, i32 7
  %pattern = bitcast %union.anon* %params to %struct.gs_pattern_params_s*
  %has_base_space = getelementptr inbounds %struct.gs_pattern_params_s, %struct.gs_pattern_params_s* %pattern, i32 0, i32 0
  store i32 1, i32* %has_base_space, align 4, !tbaa !5
  %16 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %17 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color5 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %17, i32 0, i32 69
  %arrayidx6 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %color5, i32 0, i64 0
  %color_space7 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx6, i32 0, i32 0
  store %struct.gs_color_space_s* %16, %struct.gs_color_space_s** %color_space7, align 8, !tbaa !76
  %18 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color8 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %18, i32 0, i32 69
  %arrayidx9 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %color8, i32 0, i64 0
  %ccolor = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx9, i32 0, i32 1
  %19 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %ccolor, align 8, !tbaa !80
  %pattern10 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %19, i32 0, i32 0
  store %struct.gs_pattern_instance_s* null, %struct.gs_pattern_instance_s** %pattern10, align 8, !tbaa !16
  %20 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %type11 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %20, i32 0, i32 0
  %21 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type11, align 8, !tbaa !12
  %init_color = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %21, i32 0, i32 5
  %22 = load void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)** %init_color, align 8, !tbaa !15
  %23 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color12 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %23, i32 0, i32 69
  %arrayidx13 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %color12, i32 0, i64 0
  %ccolor14 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx13, i32 0, i32 1
  %24 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %ccolor14, align 8, !tbaa !80
  %25 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  call void %22(%struct.gs_client_color_s* %24, %struct.gs_color_space_s* %25) #3
  %26 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color15 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %26, i32 0, i32 69
  %arrayidx16 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %color15, i32 0, i64 0
  %dev_color = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx16, i32 0, i32 2
  %27 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color, align 8, !tbaa !81
  %type17 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %27, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_none, %struct.gx_device_color_type_s** %type17, align 8, !tbaa !36
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.4, %if.then.3
  %28 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.19 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.18

if.end.18:                                        ; preds = %cleanup.cont, %if.end
  %29 = load i32, i32* %code, align 4, !tbaa !39
  store i32 %29, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.19

cleanup.19:                                       ; preds = %if.end.18, %cleanup, %if.then
  %30 = bitcast %struct.gs_color_space_s** %ccs_old to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #2
  %31 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #2
  %32 = load i32, i32* %retval
  ret i32 %32
}

declare i32 @gs_setcolor(%struct.gs_state_s*, %struct.gs_client_color_s*) #0

declare %struct.gs_color_space_s* @gs_cspace_alloc(%struct.gs_memory_s*, %struct.gs_color_space_type_s*) #0

; Function Attrs: nounwind uwtable
define void @gs_pattern_reference(%struct.gs_client_color_s* %pcc, i32 %delta) #1 {
entry:
  %pcc.addr = alloca %struct.gs_client_color_s*, align 8
  %delta.addr = alloca i32, align 4
  store %struct.gs_client_color_s* %pcc, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  store i32 %delta, i32* %delta.addr, align 4, !tbaa !39
  %0 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %pattern = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %0, i32 0, i32 0
  %1 = load %struct.gs_pattern_instance_s*, %struct.gs_pattern_instance_s** %pattern, align 8, !tbaa !16
  %cmp = icmp ne %struct.gs_pattern_instance_s* %1, null
  br i1 %cmp, label %if.then, label %if.end.26

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %2 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %pattern1 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %2, i32 0, i32 0
  %3 = load %struct.gs_pattern_instance_s*, %struct.gs_pattern_instance_s** %pattern1, align 8, !tbaa !16
  %tobool = icmp ne %struct.gs_pattern_instance_s* %3, null
  br i1 %tobool, label %if.then.2, label %if.end.24

if.then.2:                                        ; preds = %do.body
  br label %do.body.3

do.body.3:                                        ; preds = %if.then.2
  br label %do.body.4

do.body.4:                                        ; preds = %do.body.3
  br label %do.end

do.end:                                           ; preds = %do.body.4
  %4 = load i32, i32* %delta.addr, align 4, !tbaa !39
  %conv = sext i32 %4 to i64
  %5 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %pattern5 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %5, i32 0, i32 0
  %6 = load %struct.gs_pattern_instance_s*, %struct.gs_pattern_instance_s** %pattern5, align 8, !tbaa !16
  %rc = getelementptr inbounds %struct.gs_pattern_instance_s, %struct.gs_pattern_instance_s* %6, i32 0, i32 0
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %7 = load i64, i64* %ref_count, align 8, !tbaa !40
  %add = add nsw i64 %7, %conv
  store i64 %add, i64* %ref_count, align 8, !tbaa !40
  br label %do.end.6

do.end.6:                                         ; preds = %do.end
  %8 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %pattern7 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %8, i32 0, i32 0
  %9 = load %struct.gs_pattern_instance_s*, %struct.gs_pattern_instance_s** %pattern7, align 8, !tbaa !16
  %rc8 = getelementptr inbounds %struct.gs_pattern_instance_s, %struct.gs_pattern_instance_s* %9, i32 0, i32 0
  %ref_count9 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc8, i32 0, i32 0
  %10 = load i64, i64* %ref_count9, align 8, !tbaa !40
  %tobool10 = icmp ne i64 %10, 0
  br i1 %tobool10, label %if.else, label %if.then.11

if.then.11:                                       ; preds = %do.end.6
  br label %do.body.12

do.body.12:                                       ; preds = %if.then.11
  br label %do.body.13

do.body.13:                                       ; preds = %do.body.12
  br label %do.end.14

do.end.14:                                        ; preds = %do.body.13
  %11 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %pattern15 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %11, i32 0, i32 0
  %12 = load %struct.gs_pattern_instance_s*, %struct.gs_pattern_instance_s** %pattern15, align 8, !tbaa !16
  %rc16 = getelementptr inbounds %struct.gs_pattern_instance_s, %struct.gs_pattern_instance_s* %12, i32 0, i32 0
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc16, i32 0, i32 2
  %13 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !41
  %14 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %pattern17 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %14, i32 0, i32 0
  %15 = load %struct.gs_pattern_instance_s*, %struct.gs_pattern_instance_s** %pattern17, align 8, !tbaa !16
  %rc18 = getelementptr inbounds %struct.gs_pattern_instance_s, %struct.gs_pattern_instance_s* %15, i32 0, i32 0
  %memory = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc18, i32 0, i32 1
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !42
  %17 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %pattern19 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %17, i32 0, i32 0
  %18 = load %struct.gs_pattern_instance_s*, %struct.gs_pattern_instance_s** %pattern19, align 8, !tbaa !16
  %19 = bitcast %struct.gs_pattern_instance_s* %18 to i8*
  call void %13(%struct.gs_memory_s* %16, i8* %19, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0)) #3
  br label %do.end.20

do.end.20:                                        ; preds = %do.end.14
  %20 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %pattern21 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %20, i32 0, i32 0
  store %struct.gs_pattern_instance_s* null, %struct.gs_pattern_instance_s** %pattern21, align 8, !tbaa !16
  br label %if.end

if.else:                                          ; preds = %do.end.6
  br label %do.body.22

do.body.22:                                       ; preds = %if.else
  br label %do.end.23

do.end.23:                                        ; preds = %do.body.22
  br label %if.end

if.end:                                           ; preds = %do.end.23, %do.end.20
  br label %if.end.24

if.end.24:                                        ; preds = %if.end, %do.body
  br label %do.end.25

do.end.25:                                        ; preds = %if.end.24
  br label %if.end.26

if.end.26:                                        ; preds = %do.end.25, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.gs_pattern_template_s* @gs_get_pattern(%struct.gs_client_color_s* %pcc) #1 {
entry:
  %pcc.addr = alloca %struct.gs_client_color_s*, align 8
  %pinst = alloca %struct.gs_pattern_instance_s*, align 8
  store %struct.gs_client_color_s* %pcc, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_pattern_instance_s** %pinst to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  %pattern = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %1, i32 0, i32 0
  %2 = load %struct.gs_pattern_instance_s*, %struct.gs_pattern_instance_s** %pattern, align 8, !tbaa !16
  store %struct.gs_pattern_instance_s* %2, %struct.gs_pattern_instance_s** %pinst, align 8, !tbaa !1
  %3 = load %struct.gs_pattern_instance_s*, %struct.gs_pattern_instance_s** %pinst, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_pattern_instance_s* %3, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load %struct.gs_pattern_instance_s*, %struct.gs_pattern_instance_s** %pinst, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_pattern_instance_s, %struct.gs_pattern_instance_s* %4, i32 0, i32 1
  %5 = load %struct.gs_pattern_type_s*, %struct.gs_pattern_type_s** %type, align 8, !tbaa !19
  %procs = getelementptr inbounds %struct.gs_pattern_type_s, %struct.gs_pattern_type_s* %5, i32 0, i32 1
  %get_pattern = getelementptr inbounds %struct.pp_, %struct.pp_* %procs, i32 0, i32 2
  %6 = load %struct.gs_pattern_template_s* (%struct.gs_pattern_instance_s*)*, %struct.gs_pattern_template_s* (%struct.gs_pattern_instance_s*)** %get_pattern, align 8, !tbaa !82
  %7 = load %struct.gs_pattern_instance_s*, %struct.gs_pattern_instance_s** %pinst, align 8, !tbaa !1
  %call = call %struct.gs_pattern_template_s* %6(%struct.gs_pattern_instance_s* %7) #3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.gs_pattern_template_s* [ null, %cond.true ], [ %call, %cond.false ]
  %8 = bitcast %struct.gs_pattern_instance_s** %pinst to i8*
  call void @llvm.lifetime.end(i64 8, i8* %8) #2
  ret %struct.gs_pattern_template_s* %cond
}

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @cs_Pattern_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #1 {
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
  store i32 %size, i32* %size.addr, align 4, !tbaa !39
  store i32 %index, i32* %index.addr, align 4, !tbaa !39
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  ret %struct.gs_ptr_procs_s* null
}

; Function Attrs: nounwind uwtable
define internal void @cs_Pattern_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #1 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !39
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  ret void
}

declare i32 @gx_serialize_cspace_type(%struct.gs_color_space_s*, %struct.stream_s*) #0

declare i32 @sputs(%struct.stream_s*, i8*, i32, i32*) #0

attributes #0 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !7, i64 0}
!6 = !{!"gs_pattern_params_s", !7, i64 0}
!7 = !{!"int", !3, i64 0}
!8 = !{!9, !2, i64 40}
!9 = !{!"gs_color_space_s", !2, i64 0, !10, i64 8, !11, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !3, i64 72}
!10 = !{!"rc_header_s", !11, i64 0, !2, i64 8, !2, i64 16}
!11 = !{!"long", !3, i64 0}
!12 = !{!9, !2, i64 0}
!13 = !{!14, !2, i64 24}
!14 = !{!"gs_color_space_type_s", !3, i64 0, !7, i64 4, !7, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128}
!15 = !{!14, !2, i64 32}
!16 = !{!17, !2, i64 0}
!17 = !{!"gs_client_color_s", !2, i64 0, !18, i64 8}
!18 = !{!"gs_paint_color_s", !3, i64 0}
!19 = !{!20, !2, i64 24}
!20 = !{!"gs_pattern_instance_s", !10, i64 0, !2, i64 24, !2, i64 32, !11, i64 40}
!21 = !{!22, !2, i64 8}
!22 = !{!"gs_pattern_type_s", !7, i64 0, !23, i64 8}
!23 = !{!"pp_", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32}
!24 = !{!14, !2, i64 40}
!25 = !{!3, !3, i64 0}
!26 = !{!27, !7, i64 360}
!27 = !{!"gx_device_color_s", !2, i64 0, !3, i64 8, !28, i64 352, !7, i64 360, !17, i64 368, !29, i64 632}
!28 = !{!"gs_int_point_s", !7, i64 0, !7, i64 4}
!29 = !{!"_mask", !30, i64 0, !11, i64 8, !2, i64 16}
!30 = !{!"mp_", !7, i64 0, !7, i64 4}
!31 = !{!27, !2, i64 368}
!32 = !{!27, !11, i64 640}
!33 = !{!27, !2, i64 648}
!34 = !{!35, !2, i64 0}
!35 = !{!"_pat", !2, i64 0}
!36 = !{!27, !2, i64 0}
!37 = !{!22, !2, i64 32}
!38 = !{!14, !2, i64 80}
!39 = !{!7, !7, i64 0}
!40 = !{!20, !11, i64 0}
!41 = !{!20, !2, i64 16}
!42 = !{!20, !2, i64 8}
!43 = !{!14, !2, i64 104}
!44 = !{!14, !2, i64 112}
!45 = !{!46, !2, i64 0}
!46 = !{!"gs_pattern_template_s", !2, i64 0, !7, i64 8, !47, i64 16, !2, i64 32}
!47 = !{!"gs_uid_s", !11, i64 0, !2, i64 8}
!48 = !{!22, !7, i64 0}
!49 = !{!46, !7, i64 8}
!50 = !{!47, !11, i64 0}
!51 = !{!47, !2, i64 8}
!52 = !{!46, !2, i64 32}
!53 = !{!22, !2, i64 16}
!54 = !{!55, !2, i64 72}
!55 = !{!"gs_memory_s", !2, i64 0, !56, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!56 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!57 = !{!55, !2, i64 24}
!58 = !{!20, !2, i64 32}
!59 = !{!20, !11, i64 40}
!60 = !{!61, !3, i64 1848}
!61 = !{!"gs_state_s", !7, i64 0, !2, i64 8, !2, i64 16, !62, i64 24, !7, i64 128, !66, i64 132, !7, i64 168, !67, i64 176, !67, i64 192, !7, i64 208, !7, i64 212, !69, i64 216, !3, i64 220, !70, i64 224, !70, i64 228, !71, i64 232, !11, i64 240, !7, i64 248, !7, i64 252, !7, i64 256, !2, i64 264, !7, i64 272, !7, i64 276, !7, i64 280, !7, i64 284, !7, i64 288, !7, i64 292, !63, i64 296, !72, i64 300, !7, i64 308, !7, i64 312, !7, i64 316, !63, i64 320, !7, i64 324, !7, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !7, i64 408, !2, i64 416, !2, i64 424, !73, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !74, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !74, i64 1336, !2, i64 1616, !64, i64 1624, !7, i64 1648, !64, i64 1652, !7, i64 1676, !2, i64 1680, !2, i64 1688, !2, i64 1696, !2, i64 1704, !11, i64 1712, !11, i64 1720, !2, i64 1728, !7, i64 1736, !3, i64 1744, !2, i64 1792, !2, i64 1800, !66, i64 1808, !7, i64 1844, !3, i64 1848, !3, i64 1852, !2, i64 1856, !7, i64 1864, !2, i64 1872, !2, i64 1880, !75, i64 1888}
!62 = !{!"gx_line_params_s", !63, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !7, i64 20, !63, i64 24, !63, i64 28, !63, i64 32, !7, i64 36, !64, i64 40, !65, i64 64}
!63 = !{!"float", !3, i64 0}
!64 = !{!"gs_matrix_s", !63, i64 0, !63, i64 4, !63, i64 8, !63, i64 12, !63, i64 16, !63, i64 20}
!65 = !{!"gx_dash_params_s", !2, i64 0, !7, i64 8, !63, i64 12, !7, i64 16, !63, i64 20, !7, i64 24, !7, i64 28, !63, i64 32}
!66 = !{!"gs_matrix_fixed_s", !63, i64 0, !63, i64 4, !63, i64 8, !63, i64 12, !63, i64 16, !63, i64 20, !7, i64 24, !7, i64 28, !7, i64 32}
!67 = !{!"gs_point_s", !68, i64 0, !68, i64 8}
!68 = !{!"double", !3, i64 0}
!69 = !{!"short", !3, i64 0}
!70 = !{!"gs_transparency_source_s", !63, i64 0}
!71 = !{!"gs_xstate_trans_flags", !7, i64 0, !7, i64 4}
!72 = !{!"gs_fixed_point_s", !7, i64 0, !7, i64 4}
!73 = !{!"gx_transfer_s", !7, i64 0, !2, i64 8, !7, i64 16, !2, i64 24, !7, i64 32, !2, i64 40, !7, i64 48, !2, i64 56}
!74 = !{!"gs_devicen_color_map_s", !7, i64 0, !3, i64 4, !7, i64 8, !7, i64 12, !11, i64 16, !3, i64 24}
!75 = !{!"gs_state_client_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!76 = !{!77, !2, i64 0}
!77 = !{!"", !2, i64 0, !2, i64 8, !2, i64 16}
!78 = !{!14, !3, i64 0}
!79 = !{!61, !2, i64 8}
!80 = !{!77, !2, i64 8}
!81 = !{!77, !2, i64 16}
!82 = !{!22, !2, i64 24}
