; ModuleID = './zpcolor.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct.op_def = type { i8*, i32 (%struct.gs_context_state_s*)* }
%struct.gs_context_state_s = type { %struct.gs_state_s*, %struct.gs_dual_memory_s, i32, %struct.ref_s, %struct.ref_s, i64, i64, i64, i32, i32, %struct.ref_s, %struct.ref_s, i32, i32, i32, i32, %struct.gs_file_path_s*, [3 x %struct.ref_s], %struct.stream_s*, %struct.op_array_table_s, %struct.op_array_table_s, i32 (%struct.gs_context_state_s**)*, i32, i32 (%struct.gs_context_state_s**)*, %struct.dict_stack_s, %struct.exec_stack_s, %struct.op_stack_s, %struct.i_plugin_holder_s* }
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
%struct.gs_pattern_instance_s = type { %struct.rc_header_s, %struct.gs_pattern_type_s*, %struct.gs_state_s*, i64 }
%struct.gs_pattern_type_s = type { i32, %struct.pp_ }
%struct.pp_ = type { i32 (%struct.gs_pattern_template_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_pattern_template_s*, %struct.gs_matrix_s*, %struct.gs_state_s*, %struct.gs_memory_s*)*, %struct.gs_pattern_template_s* (%struct.gs_pattern_instance_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_state_s*)* }
%struct.gs_pattern_template_s = type { %struct.gs_pattern_type_s*, i32, %struct.gs_uid_s, i8* }
%struct.gs_uid_s = type { i64, i64* }
%struct.gs_paint_color_s = type { [64 x float] }
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
%struct.gs_devn_params_s = type { i32, i8**, i32, i32, i32, %struct.gs_separations_s, i32, [70 x i32], %struct.compressed_color_list_s*, %struct.compressed_color_list_s*, %struct.gs_separations_s }
%struct.compressed_color_list_s = type { %struct.gs_memory_s*, i32, i32, i32, %union.anon.2 }
%union.anon.2 = type { [256 x %struct.comp_bit_map_list_s] }
%struct.comp_bit_map_list_s = type { i16, i16, i32, i64, i64 }
%struct.gs_separations_s = type { i32, [64 x %struct.devn_separation_name_s] }
%struct.devn_separation_name_s = type { i32, i8* }
%struct.gx_process_page_options_s = type { i32 (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i32, i32, i8**)*, void (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_int_rect_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, i8*)*, i8*, i32 }
%struct.gs_device_filter_stack_s = type { %struct.gs_device_filter_stack_s*, %struct.gs_device_filter_s*, %struct.gx_device_s*, %struct.rc_header_s }
%struct.gs_device_filter_s = type opaque
%struct.gs_state_client_procs_s = type { i8* (%struct.gs_memory_s*)*, i32 (i8*, i8*)*, void (i8*, %struct.gs_memory_s*)*, i32 (i8*, i8*, i32)* }
%struct.gs_dual_memory_s = type { %struct.gs_ref_memory_s*, %struct.vm_spaces_s, i32, i32 (%struct.gs_dual_memory_s*, i32)*, i32, i32 }
%struct.gs_ref_memory_s = type opaque
%struct.vm_spaces_s = type { void (%struct.vm_spaces_s*, i32)*, %union.anon.3 }
%union.anon.3 = type { [4 x %struct.gs_ref_memory_s*] }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16, i32 }
%union.v = type { i64 }
%struct.gs_file_path_s = type opaque
%struct.op_array_table_s = type { %struct.ref_s, i16*, i32, i32, i32 }
%struct.dict_stack_s = type { %struct.ref_stack_s, i32, i32, i32, i16*, i32, %struct.ref_s*, %struct.ref_s }
%struct.ref_stack_s = type { %struct.ref_s*, %struct.ref_s*, %struct.ref_s*, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, %struct.ref_stack_params_s*, %struct.gs_ref_memory_s* }
%struct.ref_stack_params_s = type opaque
%struct.exec_stack_s = type { %struct.ref_stack_s, %struct.ref_s* }
%struct.op_stack_s = type { %struct.ref_stack_s }
%struct.i_plugin_holder_s = type opaque
%struct.int_pattern_s = type { %struct.ref_s }
%struct.dict_s = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s }
%struct.obj_header_s = type opaque
%struct.gx_device_forward_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s* }
%struct.gx_device_pattern_accum_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, %struct.gs_memory_s*, %struct.gs_pattern1_instance_s*, %struct.gx_device_memory_s*, %struct.gx_device_memory_s*, %struct.gx_pattern_trans_s* }
%struct.gx_device_memory_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, i32, i8*, %struct.gs_memory_s*, i32, %struct.gs_memory_s*, i32, [64 x %struct.gx_render_plane_s], %struct.gs_matrix_s, i8**, %struct.gs_const_string_s, %struct._c24, %struct._c40, %struct._c48, %struct._c56, %struct._c64, %struct.gs_log2_scale_point_s, i32, i32, i32, i32, i32, i64, %struct.gx_device_color_s*, i32, i32 }
%struct.gx_render_plane_s = type { i32, i32, i32 }
%struct._c24 = type { i64, i32, i32, i32 }
%struct._c40 = type { i64, i32, i32, i32, i32, i32 }
%struct._c48 = type { i64, i32, i32, i32 }
%struct._c56 = type { i64, i32, i32, i32, i32, i32, i32, i32 }
%struct._c64 = type { i64, i32, i32 }
%struct._ssn = type { %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s* }
%struct.int_gstate_s = type { %struct.ref_s, %struct.anon.4, %struct.anon.4, %struct.ref_s, %struct.ref_s, [2 x %struct.ref_colorspace_s], [2 x %struct.ref_s], %struct.anon.8, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s }
%struct.anon.4 = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s }
%struct.ref_colorspace_s = type { %struct.ref_s, %struct.ref_color_procs_s }
%struct.ref_color_procs_s = type { %struct.ref_cie_procs_s, %union.anon.7 }
%struct.ref_cie_procs_s = type { %union.anon.5, %union.anon.6, %struct.ref_s }
%union.anon.5 = type { %struct.ref_s }
%union.anon.6 = type { %struct.ref_s }
%union.anon.7 = type { %struct.ref_device_n_params_s }
%struct.ref_device_n_params_s = type { %struct.ref_s, %struct.ref_s }
%struct.anon.8 = type { %struct.ref_s, %struct.ref_cie_render_procs_s }
%struct.ref_cie_render_procs_s = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s }
%struct.int_remap_color_info_s = type { i32 (%struct.gs_context_state_s*)*, [64 x float] }

@st_int_pattern = internal constant %struct.gs_memory_struct_type_s { i32 16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* @ref_struct_clear_marks, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @ref_struct_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @ref_struct_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@.str = private unnamed_addr constant [12 x i8] c"int_pattern\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"level2dict\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"2.buildpattern1\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"0%pattern_paint_prepare\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"0%pattern_paint_finish\00", align 1
@zpcolor_l2_op_defs = constant [5 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* null }, %struct.op_def { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zbuildpattern1 }, %struct.op_def { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @pattern_paint_prepare }, %struct.op_def { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @pattern_paint_finish }, %struct.op_def { i8* null, i32 (%struct.gs_context_state_s*)* @zpcolor_init }], align 16
@.str.5 = private unnamed_addr constant [10 x i8] c"PaintType\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"TilingType\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c".pattern_uses_transparency\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"BBox\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"XStep\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"YStep\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"PaintProc\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"pattern_paint_prepare\00", align 1
@gx_dc_type_data_none = external constant %struct.gx_device_color_type_s, align 8

; Function Attrs: nounwind uwtable
define i32 @int_pattern_alloc(%struct.int_pattern_s** %ppdata, %struct.ref_s* %op, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %ppdata.addr = alloca %struct.int_pattern_s**, align 8
  %op.addr = alloca %struct.ref_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pdata = alloca %struct.int_pattern_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.int_pattern_s** %ppdata, %struct.int_pattern_s*** %ppdata.addr, align 8, !tbaa !1
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.int_pattern_s** %pdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %1, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %2 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !5
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i8* %2(%struct.gs_memory_s* %3, %struct.gs_memory_struct_type_s* @st_int_pattern, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0)) #3
  %4 = bitcast i8* %call to %struct.int_pattern_s*
  store %struct.int_pattern_s* %4, %struct.int_pattern_s** %pdata, align 8, !tbaa !1
  %5 = load %struct.int_pattern_s*, %struct.int_pattern_s** %pdata, align 8, !tbaa !1
  %cmp = icmp eq %struct.int_pattern_s* %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load %struct.int_pattern_s*, %struct.int_pattern_s** %pdata, align 8, !tbaa !1
  %dict = getelementptr inbounds %struct.int_pattern_s, %struct.int_pattern_s* %6, i32 0, i32 0
  %7 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %8 = bitcast %struct.ref_s* %dict to i8*
  %9 = bitcast %struct.ref_s* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 16, i32 8, i1 false), !tbaa.struct !8
  %10 = load %struct.int_pattern_s*, %struct.int_pattern_s** %pdata, align 8, !tbaa !1
  %11 = load %struct.int_pattern_s**, %struct.int_pattern_s*** %ppdata.addr, align 8, !tbaa !1
  store %struct.int_pattern_s* %10, %struct.int_pattern_s** %11, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %12 = bitcast %struct.int_pattern_s** %pdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #1
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal i32 @zbuildpattern1(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %op1 = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %mat = alloca %struct.gs_matrix_s, align 4
  %BBox = alloca [4 x float], align 16
  %templat = alloca %struct.gs_pattern1_template_s, align 8
  %pdata = alloca %struct.int_pattern_s*, align 8
  %cc_instance = alloca %struct.gs_client_color_s, align 8
  %pPaintProc = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !17
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.ref_s** %op1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op1, align 8, !tbaa !1
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast %struct.gs_matrix_s* %mat to i8*
  call void @llvm.lifetime.start(i64 24, i8* %6) #1
  %7 = bitcast [4 x float]* %BBox to i8*
  call void @llvm.lifetime.start(i64 16, i8* %7) #1
  %8 = bitcast %struct.gs_pattern1_template_s* %templat to i8*
  call void @llvm.lifetime.start(i64 104, i8* %8) #1
  %9 = bitcast %struct.int_pattern_s** %pdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast %struct.gs_client_color_s* %cc_instance to i8*
  call void @llvm.lifetime.start(i64 264, i8* %10) #1
  %11 = bitcast %struct.ref_s** %pPaintProc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %12, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %13 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !28
  %14 = bitcast %struct.gs_ref_memory_s* %13 to %struct.gs_memory_s*
  %15 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @read_matrix(%struct.gs_memory_s* %14, %struct.ref_s* %15, %struct.gs_matrix_s* %mat) #3
  store i32 %call, i32* %code, align 4, !tbaa !11
  %16 = load i32, i32* %code, align 4, !tbaa !11
  %cmp = icmp slt i32 %16, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %17 = load i32, i32* %code, align 4, !tbaa !11
  store i32 %17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %18 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %19 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %19, i64 1
  %20 = load i8, i8* %arrayidx, align 1, !tbaa !29
  %conv = zext i8 %20 to i32
  %cmp1 = icmp eq i32 %conv, 2
  br i1 %cmp1, label %if.end.5, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %21 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %call4 = call i32 @check_type_failed(%struct.ref_s* %21) #3
  store i32 %call4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.end.5
  %22 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 0, i32 1
  %pdict = bitcast %union.v* %value to %struct.dict_s**
  %23 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !1
  %values = getelementptr inbounds %struct.dict_s, %struct.dict_s* %23, i32 0, i32 0
  %tas6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %values, i32 0, i32 0
  %type_attrs7 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas6, i32 0, i32 0
  %24 = load i16, i16* %type_attrs7, align 2, !tbaa !30
  %conv8 = zext i16 %24 to i32
  %and = and i32 %conv8, 32
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %do.body
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.10
  br label %do.end

do.end:                                           ; preds = %do.cond
  call void @gs_pattern1_init(%struct.gs_pattern1_template_s* %templat) #3
  %25 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %uid = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %templat, i32 0, i32 2
  %26 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory11 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %26, i32 0, i32 1
  %current12 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory11, i32 0, i32 0
  %27 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current12, align 8, !tbaa !28
  %28 = bitcast %struct.gs_ref_memory_s* %27 to %struct.gs_memory_s*
  %29 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call13 = call i32 @dict_uid_param(%struct.ref_s* %25, %struct.gs_uid_s* %uid, i32 1, %struct.gs_memory_s* %28, %struct.gs_context_state_s* %29) #3
  store i32 %call13, i32* %code, align 4, !tbaa !11
  %30 = load i32, i32* %code, align 4, !tbaa !11
  %cmp14 = icmp slt i32 %30, 0
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %do.end
  %31 = load i32, i32* %code, align 4, !tbaa !11
  store i32 %31, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.17:                                        ; preds = %do.end
  %32 = load i32, i32* %code, align 4, !tbaa !11
  %cmp18 = icmp ne i32 %32, 1
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.17
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %if.end.17
  %33 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %PaintType = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %templat, i32 0, i32 4
  %call22 = call i32 @dict_int_param(%struct.ref_s* %33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), i32 1, i32 2, i32 0, i32* %PaintType) #3
  store i32 %call22, i32* %code, align 4, !tbaa !11
  %34 = load i32, i32* %code, align 4, !tbaa !11
  %cmp23 = icmp slt i32 %34, 0
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.21
  %35 = load i32, i32* %code, align 4, !tbaa !11
  store i32 %35, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.26:                                        ; preds = %if.end.21
  %36 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %TilingType = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %templat, i32 0, i32 5
  %call27 = call i32 @dict_int_param(%struct.ref_s* %36, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i32 1, i32 3, i32 0, i32* %TilingType) #3
  store i32 %call27, i32* %code, align 4, !tbaa !11
  %37 = load i32, i32* %code, align 4, !tbaa !11
  %cmp28 = icmp slt i32 %37, 0
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end.26
  %38 = load i32, i32* %code, align 4, !tbaa !11
  store i32 %38, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.31:                                        ; preds = %if.end.26
  %39 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %uses_transparency = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %templat, i32 0, i32 6
  %call32 = call i32 @dict_bool_param(%struct.ref_s* %39, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i32 0, i32 0), i32 0, i32* %uses_transparency) #3
  store i32 %call32, i32* %code, align 4, !tbaa !11
  %40 = load i32, i32* %code, align 4, !tbaa !11
  %cmp33 = icmp slt i32 %40, 0
  br i1 %cmp33, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.end.31
  %41 = load i32, i32* %code, align 4, !tbaa !11
  store i32 %41, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.36:                                        ; preds = %if.end.31
  %42 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory37 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %42, i32 0, i32 1
  %current38 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory37, i32 0, i32 0
  %43 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current38, align 8, !tbaa !28
  %44 = bitcast %struct.gs_ref_memory_s* %43 to %struct.gs_memory_s*
  %45 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [4 x float], [4 x float]* %BBox, i32 0, i32 0
  %call39 = call i32 @dict_floats_param(%struct.gs_memory_s* %44, %struct.ref_s* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 4, float* %arraydecay, float* null) #3
  store i32 %call39, i32* %code, align 4, !tbaa !11
  %46 = load i32, i32* %code, align 4, !tbaa !11
  %cmp40 = icmp slt i32 %46, 0
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.end.36
  %47 = load i32, i32* %code, align 4, !tbaa !11
  store i32 %47, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.43:                                        ; preds = %if.end.36
  %48 = load i32, i32* %code, align 4, !tbaa !11
  %cmp44 = icmp eq i32 %48, 0
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.end.43
  store i32 -21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.47:                                        ; preds = %if.end.43
  %49 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %XStep = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %templat, i32 0, i32 8
  %call48 = call i32 @dict_float_param(%struct.ref_s* %49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), double 0.000000e+00, float* %XStep) #3
  store i32 %call48, i32* %code, align 4, !tbaa !11
  %50 = load i32, i32* %code, align 4, !tbaa !11
  %cmp49 = icmp slt i32 %50, 0
  br i1 %cmp49, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %if.end.47
  %51 = load i32, i32* %code, align 4, !tbaa !11
  store i32 %51, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.52:                                        ; preds = %if.end.47
  %52 = load i32, i32* %code, align 4, !tbaa !11
  %cmp53 = icmp eq i32 %52, 1
  br i1 %cmp53, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.end.52
  store i32 -21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.56:                                        ; preds = %if.end.52
  %53 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %YStep = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %templat, i32 0, i32 9
  %call57 = call i32 @dict_float_param(%struct.ref_s* %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), double 0.000000e+00, float* %YStep) #3
  store i32 %call57, i32* %code, align 4, !tbaa !11
  %54 = load i32, i32* %code, align 4, !tbaa !11
  %cmp58 = icmp slt i32 %54, 0
  br i1 %cmp58, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %if.end.56
  %55 = load i32, i32* %code, align 4, !tbaa !11
  store i32 %55, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.61:                                        ; preds = %if.end.56
  %56 = load i32, i32* %code, align 4, !tbaa !11
  %cmp62 = icmp eq i32 %56, 1
  br i1 %cmp62, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %if.end.61
  store i32 -21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.65:                                        ; preds = %if.end.61
  %57 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %call66 = call i32 @dict_find_string(%struct.ref_s* %57, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), %struct.ref_s** %pPaintProc) #3
  store i32 %call66, i32* %code, align 4, !tbaa !11
  %58 = load i32, i32* %code, align 4, !tbaa !11
  %cmp67 = icmp slt i32 %58, 0
  br i1 %cmp67, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %if.end.65
  %59 = load i32, i32* %code, align 4, !tbaa !11
  store i32 %59, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.70:                                        ; preds = %if.end.65
  %60 = load i32, i32* %code, align 4, !tbaa !11
  %cmp71 = icmp eq i32 %60, 0
  br i1 %cmp71, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %if.end.70
  store i32 -21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.74:                                        ; preds = %if.end.70
  br label %do.body.75

do.body.75:                                       ; preds = %if.end.74
  %61 = load %struct.ref_s*, %struct.ref_s** %pPaintProc, align 8, !tbaa !1
  %tas76 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %61, i32 0, i32 0
  %type_attrs77 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas76, i32 0, i32 0
  %62 = load i16, i16* %type_attrs77, align 2, !tbaa !30
  %conv78 = zext i16 %62 to i32
  %and79 = and i32 %conv78, 15552
  %cmp80 = icmp eq i32 %and79, 1216
  br i1 %cmp80, label %if.end.84, label %if.then.82

if.then.82:                                       ; preds = %do.body.75
  %63 = load %struct.ref_s*, %struct.ref_s** %pPaintProc, align 8, !tbaa !1
  %call83 = call i32 @check_proc_failed(%struct.ref_s* %63) #3
  store i32 %call83, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.84:                                        ; preds = %do.body.75
  br label %do.cond.85

do.cond.85:                                       ; preds = %if.end.84
  br label %do.end.86

do.end.86:                                        ; preds = %do.cond.85
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 0
  %64 = load float, float* %xx, align 4, !tbaa !31
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 3
  %65 = load float, float* %yy, align 4, !tbaa !33
  %mul = fmul float %64, %65
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 1
  %66 = load float, float* %xy, align 4, !tbaa !34
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 2
  %67 = load float, float* %yx, align 4, !tbaa !35
  %mul87 = fmul float %66, %67
  %cmp88 = fcmp oeq float %mul, %mul87
  br i1 %cmp88, label %if.then.90, label %if.end.91

if.then.90:                                       ; preds = %do.end.86
  store i32 -23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.91:                                        ; preds = %do.end.86
  %arrayidx92 = getelementptr inbounds [4 x float], [4 x float]* %BBox, i32 0, i64 0
  %68 = load float, float* %arrayidx92, align 4, !tbaa !15
  %arrayidx93 = getelementptr inbounds [4 x float], [4 x float]* %BBox, i32 0, i64 2
  %69 = load float, float* %arrayidx93, align 4, !tbaa !15
  %cmp94 = fcmp oge float %68, %69
  br i1 %cmp94, label %if.then.100, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.91
  %arrayidx96 = getelementptr inbounds [4 x float], [4 x float]* %BBox, i32 0, i64 1
  %70 = load float, float* %arrayidx96, align 4, !tbaa !15
  %arrayidx97 = getelementptr inbounds [4 x float], [4 x float]* %BBox, i32 0, i64 3
  %71 = load float, float* %arrayidx97, align 4, !tbaa !15
  %cmp98 = fcmp oge float %70, %71
  br i1 %cmp98, label %if.then.100, label %if.end.101

if.then.100:                                      ; preds = %lor.lhs.false, %if.end.91
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.101:                                       ; preds = %lor.lhs.false
  %arrayidx102 = getelementptr inbounds [4 x float], [4 x float]* %BBox, i32 0, i64 0
  %72 = load float, float* %arrayidx102, align 4, !tbaa !15
  %conv103 = fpext float %72 to double
  %BBox104 = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %templat, i32 0, i32 7
  %p105 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %BBox104, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p105, i32 0, i32 0
  store double %conv103, double* %x, align 8, !tbaa !36
  %arrayidx106 = getelementptr inbounds [4 x float], [4 x float]* %BBox, i32 0, i64 1
  %73 = load float, float* %arrayidx106, align 4, !tbaa !15
  %conv107 = fpext float %73 to double
  %BBox108 = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %templat, i32 0, i32 7
  %p109 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %BBox108, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p109, i32 0, i32 1
  store double %conv107, double* %y, align 8, !tbaa !42
  %arrayidx110 = getelementptr inbounds [4 x float], [4 x float]* %BBox, i32 0, i64 2
  %74 = load float, float* %arrayidx110, align 4, !tbaa !15
  %conv111 = fpext float %74 to double
  %BBox112 = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %templat, i32 0, i32 7
  %q = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %BBox112, i32 0, i32 1
  %x113 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q, i32 0, i32 0
  store double %conv111, double* %x113, align 8, !tbaa !43
  %arrayidx114 = getelementptr inbounds [4 x float], [4 x float]* %BBox, i32 0, i64 3
  %75 = load float, float* %arrayidx114, align 4, !tbaa !15
  %conv115 = fpext float %75 to double
  %BBox116 = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %templat, i32 0, i32 7
  %q117 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %BBox116, i32 0, i32 1
  %y118 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q117, i32 0, i32 1
  store double %conv115, double* %y118, align 8, !tbaa !44
  %PaintProc = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %templat, i32 0, i32 10
  store i32 (%struct.gs_client_color_s*, %struct.gs_state_s*)* @zPaintProc, i32 (%struct.gs_client_color_s*, %struct.gs_state_s*)** %PaintProc, align 8, !tbaa !45
  %76 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %77 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory119 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %77, i32 0, i32 1
  %current120 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory119, i32 0, i32 0
  %78 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current120, align 8, !tbaa !28
  %79 = bitcast %struct.gs_ref_memory_s* %78 to %struct.gs_memory_s*
  %call121 = call i32 @int_pattern_alloc(%struct.int_pattern_s** %pdata, %struct.ref_s* %76, %struct.gs_memory_s* %79) #3
  store i32 %call121, i32* %code, align 4, !tbaa !11
  %80 = load i32, i32* %code, align 4, !tbaa !11
  %cmp122 = icmp slt i32 %80, 0
  br i1 %cmp122, label %if.then.124, label %if.end.125

if.then.124:                                      ; preds = %if.end.101
  %81 = load i32, i32* %code, align 4, !tbaa !11
  store i32 %81, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.125:                                       ; preds = %if.end.101
  %82 = load %struct.int_pattern_s*, %struct.int_pattern_s** %pdata, align 8, !tbaa !1
  %83 = bitcast %struct.int_pattern_s* %82 to i8*
  %client_data = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %templat, i32 0, i32 3
  store i8* %83, i8** %client_data, align 8, !tbaa !46
  %84 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %84, i32 0, i32 0
  %85 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !47
  %86 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory126 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %86, i32 0, i32 1
  %current127 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory126, i32 0, i32 0
  %87 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current127, align 8, !tbaa !28
  %88 = bitcast %struct.gs_ref_memory_s* %87 to %struct.gs_memory_s*
  %call128 = call i32 @gs_makepattern(%struct.gs_client_color_s* %cc_instance, %struct.gs_pattern1_template_s* %templat, %struct.gs_matrix_s* %mat, %struct.gs_state_s* %85, %struct.gs_memory_s* %88) #3
  store i32 %call128, i32* %code, align 4, !tbaa !11
  %89 = load i32, i32* %code, align 4, !tbaa !11
  %cmp129 = icmp slt i32 %89, 0
  br i1 %cmp129, label %if.then.131, label %if.end.136

if.then.131:                                      ; preds = %if.end.125
  %90 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory132 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %90, i32 0, i32 1
  %current133 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory132, i32 0, i32 0
  %91 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current133, align 8, !tbaa !28
  %92 = bitcast %struct.gs_ref_memory_s* %91 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %92, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %93 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !48
  %94 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory134 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %94, i32 0, i32 1
  %current135 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory134, i32 0, i32 0
  %95 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current135, align 8, !tbaa !28
  %96 = bitcast %struct.gs_ref_memory_s* %95 to %struct.gs_memory_s*
  %97 = load %struct.int_pattern_s*, %struct.int_pattern_s** %pdata, align 8, !tbaa !1
  %98 = bitcast %struct.int_pattern_s* %97 to i8*
  call void %93(%struct.gs_memory_s* %96, i8* %98, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0)) #3
  %99 = load i32, i32* %code, align 4, !tbaa !11
  store i32 %99, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.136:                                       ; preds = %if.end.125
  %pattern = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc_instance, i32 0, i32 0
  %100 = load %struct.gs_pattern_instance_s*, %struct.gs_pattern_instance_s** %pattern, align 8, !tbaa !49
  %101 = bitcast %struct.gs_pattern_instance_s* %100 to %struct.obj_header_s*
  %102 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value137 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %102, i32 0, i32 1
  %pstruct = bitcast %union.v* %value137 to %struct.obj_header_s**
  store %struct.obj_header_s* %101, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %103 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory138 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %103, i32 0, i32 1
  %current_space = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory138, i32 0, i32 2
  %104 = load i32, i32* %current_space, align 4, !tbaa !52
  %or = or i32 96, %104
  %add = add i32 2048, %or
  %conv139 = trunc i32 %add to i16
  %105 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas140 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %105, i32 0, i32 0
  %type_attrs141 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas140, i32 0, i32 0
  store i16 %conv139, i16* %type_attrs141, align 2, !tbaa !30
  %106 = load i32, i32* %code, align 4, !tbaa !11
  store i32 %106, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.136, %if.then.131, %if.then.124, %if.then.100, %if.then.90, %if.then.82, %if.then.73, %if.then.69, %if.then.64, %if.then.60, %if.then.55, %if.then.51, %if.then.46, %if.then.42, %if.then.35, %if.then.30, %if.then.25, %if.then.20, %if.then.16, %if.then.9, %if.then.3, %if.then
  %107 = bitcast %struct.ref_s** %pPaintProc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %107) #1
  %108 = bitcast %struct.gs_client_color_s* %cc_instance to i8*
  call void @llvm.lifetime.end(i64 264, i8* %108) #1
  %109 = bitcast %struct.int_pattern_s** %pdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %109) #1
  %110 = bitcast %struct.gs_pattern1_template_s* %templat to i8*
  call void @llvm.lifetime.end(i64 104, i8* %110) #1
  %111 = bitcast [4 x float]* %BBox to i8*
  call void @llvm.lifetime.end(i64 16, i8* %111) #1
  %112 = bitcast %struct.gs_matrix_s* %mat to i8*
  call void @llvm.lifetime.end(i64 24, i8* %112) #1
  %113 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %113) #1
  %114 = bitcast %struct.ref_s** %op1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %114) #1
  %115 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %115) #1
  %116 = load i32, i32* %retval
  ret i32 %116
}

; Function Attrs: nounwind uwtable
define internal i32 @pattern_paint_prepare(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %pgs = alloca %struct.gs_state_s*, align 8
  %pinst = alloca %struct.gs_pattern1_instance_s*, align 8
  %pdict = alloca %struct.ref_s*, align 8
  %pdev = alloca %struct.gx_device_forward_s*, align 8
  %cdev = alloca %struct.gx_device_s*, align 8
  %code = alloca i32, align 4
  %ppp = alloca %struct.ref_s*, align 8
  %internal_accum = alloca i32, align 4
  %es_code_ = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %storage_memory = alloca %struct.gs_memory_s*, align 8
  %m = alloca %struct.gs_matrix_s, align 4
  %bbox = alloca %struct.gs_rect_s, align 8
  %clip_box = alloca %struct.gs_fixed_rect_s, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_state_s** %pgs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 0
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs1, align 8, !tbaa !47
  store %struct.gs_state_s* %2, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %3 = bitcast %struct.gs_pattern1_instance_s** %pinst to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %call = call %struct.gs_client_color_s* @gs_currentcolor(%struct.gs_state_s* %4) #3
  %pattern = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %call, i32 0, i32 0
  %5 = load %struct.gs_pattern_instance_s*, %struct.gs_pattern_instance_s** %pattern, align 8, !tbaa !49
  %6 = bitcast %struct.gs_pattern_instance_s* %5 to %struct.gs_pattern1_instance_s*
  store %struct.gs_pattern1_instance_s* %6, %struct.gs_pattern1_instance_s** %pinst, align 8, !tbaa !1
  %7 = bitcast %struct.ref_s** %pdict to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst, align 8, !tbaa !1
  %templat = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %8, i32 0, i32 4
  %client_data = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %templat, i32 0, i32 3
  %9 = load i8*, i8** %client_data, align 8, !tbaa !53
  %10 = bitcast i8* %9 to %struct.int_pattern_s*
  %dict = getelementptr inbounds %struct.int_pattern_s, %struct.int_pattern_s* %10, i32 0, i32 0
  store %struct.ref_s* %dict, %struct.ref_s** %pdict, align 8, !tbaa !1
  %11 = bitcast %struct.gx_device_forward_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  store %struct.gx_device_forward_s* null, %struct.gx_device_forward_s** %pdev, align 8, !tbaa !1
  %12 = bitcast %struct.gx_device_s** %cdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs2 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %13, i32 0, i32 0
  %14 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs2, align 8, !tbaa !47
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %14, i32 0, i32 78
  %15 = load %struct.gx_device_s*, %struct.gx_device_s** %device, align 8, !tbaa !57
  store %struct.gx_device_s* %15, %struct.gx_device_s** %cdev, align 8, !tbaa !1
  %16 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = bitcast %struct.ref_s** %ppp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  %18 = bitcast i32* %internal_accum to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  store i32 1, i32* %internal_accum, align 4, !tbaa !11
  %19 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %19, i32 0, i32 25
  %stack = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %20 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !68
  %21 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %21, i32 0, i32 25
  %stack4 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack3, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack4, i32 0, i32 2
  %22 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !69
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i64 -6
  %cmp = icmp ugt %struct.ref_s* %20, %add.ptr
  br i1 %cmp, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %23 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %24 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack5 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %24, i32 0, i32 25
  %stack6 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack5, i32 0, i32 0
  %call7 = call i32 @ref_stack_extend(%struct.ref_stack_s* %stack6, i32 6) #3
  store i32 %call7, i32* %es_code_, align 4, !tbaa !11
  %25 = load i32, i32* %es_code_, align 4, !tbaa !11
  %cmp8 = icmp slt i32 %25, 0
  br i1 %cmp8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then
  %26 = load i32, i32* %es_code_, align 4, !tbaa !11
  store i32 %26, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.9
  %27 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.214 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.10

if.end.10:                                        ; preds = %cleanup.cont, %entry
  %28 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %have_pattern_streams = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %28, i32 0, i32 31
  %29 = load i32, i32* %have_pattern_streams, align 4, !tbaa !70
  %tobool = icmp ne i32 %29, 0
  br i1 %tobool, label %if.then.11, label %if.end.19

if.then.11:                                       ; preds = %if.end.10
  %30 = load %struct.gx_device_s*, %struct.gx_device_s** %cdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %30, i32 0, i32 42
  %dev_spec_op = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 65
  %31 = load i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)** %dev_spec_op, align 8, !tbaa !71
  %32 = load %struct.gx_device_s*, %struct.gx_device_s** %cdev, align 8, !tbaa !1
  %33 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst, align 8, !tbaa !1
  %34 = bitcast %struct.gs_pattern1_instance_s* %33 to i8*
  %35 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst, align 8, !tbaa !1
  %id = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %35, i32 0, i32 13
  %36 = load i64, i64* %id, align 8, !tbaa !81
  %conv = trunc i64 %36 to i32
  %call12 = call i32 %31(%struct.gx_device_s* %32, i32 0, i8* %34, i32 %conv) #3
  store i32 %call12, i32* %code, align 4, !tbaa !11
  %37 = load i32, i32* %code, align 4, !tbaa !11
  %cmp13 = icmp slt i32 %37, 0
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.then.11
  %38 = load i32, i32* %code, align 4, !tbaa !11
  store i32 %38, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.214

if.end.16:                                        ; preds = %if.then.11
  %39 = load i32, i32* %code, align 4, !tbaa !11
  %cmp17 = icmp eq i32 %39, 0
  %conv18 = zext i1 %cmp17 to i32
  store i32 %conv18, i32* %internal_accum, align 4, !tbaa !11
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.16, %if.end.10
  %40 = load i32, i32* %internal_accum, align 4, !tbaa !11
  %tobool20 = icmp ne i32 %40, 0
  br i1 %tobool20, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %if.end.19
  %41 = bitcast %struct.gs_memory_s** %storage_memory to i8*
  call void @llvm.lifetime.start(i64 8, i8* %41) #1
  %42 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %call22 = call %struct.gx_pattern_cache_s* @gstate_pattern_cache(%struct.gs_state_s* %42) #3
  %memory = getelementptr inbounds %struct.gx_pattern_cache_s, %struct.gx_pattern_cache_s* %call22, i32 0, i32 0
  %43 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !82
  store %struct.gs_memory_s* %43, %struct.gs_memory_s** %storage_memory, align 8, !tbaa !1
  %44 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory23 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %44, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory23, i32 0, i32 0
  %45 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !28
  %46 = bitcast %struct.gs_ref_memory_s* %45 to %struct.gs_memory_s*
  %47 = load %struct.gs_memory_s*, %struct.gs_memory_s** %storage_memory, align 8, !tbaa !1
  %48 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst, align 8, !tbaa !1
  %call24 = call %struct.gx_device_forward_s* @gx_pattern_accum_alloc(%struct.gs_memory_s* %46, %struct.gs_memory_s* %47, %struct.gs_pattern1_instance_s* %48, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i32 0, i32 0)) #3
  store %struct.gx_device_forward_s* %call24, %struct.gx_device_forward_s** %pdev, align 8, !tbaa !1
  %49 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %pdev, align 8, !tbaa !1
  %cmp25 = icmp eq %struct.gx_device_forward_s* %49, null
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.then.21
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.40

if.end.28:                                        ; preds = %if.then.21
  %50 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %pdev, align 8, !tbaa !1
  %procs29 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %50, i32 0, i32 42
  %open_device = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs29, i32 0, i32 0
  %51 = load i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)** %open_device, align 8, !tbaa !84
  %52 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %pdev, align 8, !tbaa !1
  %53 = bitcast %struct.gx_device_forward_s* %52 to %struct.gx_device_s*
  %call30 = call i32 %51(%struct.gx_device_s* %53) #3
  store i32 %call30, i32* %code, align 4, !tbaa !11
  %54 = load i32, i32* %code, align 4, !tbaa !11
  %cmp31 = icmp slt i32 %54, 0
  br i1 %cmp31, label %if.then.33, label %if.end.39

if.then.33:                                       ; preds = %if.end.28
  %55 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory34 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %55, i32 0, i32 1
  %current35 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory34, i32 0, i32 0
  %56 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current35, align 8, !tbaa !28
  %57 = bitcast %struct.gs_ref_memory_s* %56 to %struct.gs_memory_s*
  %procs36 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %57, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs36, i32 0, i32 2
  %58 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !48
  %59 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory37 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %59, i32 0, i32 1
  %current38 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory37, i32 0, i32 0
  %60 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current38, align 8, !tbaa !28
  %61 = bitcast %struct.gs_ref_memory_s* %60 to %struct.gs_memory_s*
  %62 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %pdev, align 8, !tbaa !1
  %63 = bitcast %struct.gx_device_forward_s* %62 to i8*
  call void %58(%struct.gs_memory_s* %61, i8* %63, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i32 0, i32 0)) #3
  %64 = load i32, i32* %code, align 4, !tbaa !11
  store i32 %64, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.40

if.end.39:                                        ; preds = %if.end.28
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.40

cleanup.40:                                       ; preds = %if.end.39, %if.then.33, %if.then.27
  %65 = bitcast %struct.gs_memory_s** %storage_memory to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #1
  %cleanup.dest.41 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.41, label %cleanup.214 [
    i32 0, label %cleanup.cont.42
  ]

cleanup.cont.42:                                  ; preds = %cleanup.40
  br label %if.end.50

if.else:                                          ; preds = %if.end.19
  %66 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs43 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %66, i32 0, i32 0
  %67 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs43, align 8, !tbaa !47
  %68 = bitcast %struct.gs_state_s* %67 to %struct.gs_imager_state_s*
  %69 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst, align 8, !tbaa !1
  %70 = load %struct.gx_device_s*, %struct.gx_device_s** %cdev, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %70, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %71 = load i16, i16* %depth, align 2, !tbaa !86
  %conv44 = zext i16 %71 to i32
  %call45 = call i32 @gx_pattern_cache_add_dummy_entry(%struct.gs_imager_state_s* %68, %struct.gs_pattern1_instance_s* %69, i32 %conv44) #3
  store i32 %call45, i32* %code, align 4, !tbaa !11
  %72 = load i32, i32* %code, align 4, !tbaa !11
  %cmp46 = icmp slt i32 %72, 0
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %if.else
  %73 = load i32, i32* %code, align 4, !tbaa !11
  store i32 %73, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.214

if.end.49:                                        ; preds = %if.else
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %cleanup.cont.42
  %74 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %call51 = call i32 @gs_gsave(%struct.gs_state_s* %74) #3
  store i32 %call51, i32* %code, align 4, !tbaa !11
  %75 = load i32, i32* %code, align 4, !tbaa !11
  %cmp52 = icmp slt i32 %75, 0
  br i1 %cmp52, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %if.end.50
  %76 = load i32, i32* %code, align 4, !tbaa !11
  store i32 %76, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.214

if.end.55:                                        ; preds = %if.end.50
  %77 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %78 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst, align 8, !tbaa !1
  %saved = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %78, i32 0, i32 2
  %79 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8, !tbaa !87
  %call56 = call i32 @gs_setgstate(%struct.gs_state_s* %77, %struct.gs_state_s* %79) #3
  store i32 %call56, i32* %code, align 4, !tbaa !11
  %80 = load i32, i32* %code, align 4, !tbaa !11
  %cmp57 = icmp slt i32 %80, 0
  br i1 %cmp57, label %if.then.59, label %if.end.61

if.then.59:                                       ; preds = %if.end.55
  %81 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %call60 = call i32 @gs_grestore(%struct.gs_state_s* %81) #3
  %82 = load i32, i32* %code, align 4, !tbaa !11
  store i32 %82, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.214

if.end.61:                                        ; preds = %if.end.55
  %83 = load i32, i32* %internal_accum, align 4, !tbaa !11
  %tobool62 = icmp ne i32 %83, 0
  br i1 %tobool62, label %if.then.63, label %if.else.86

if.then.63:                                       ; preds = %if.end.61
  %84 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %85 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %pdev, align 8, !tbaa !1
  %86 = bitcast %struct.gx_device_forward_s* %85 to %struct.gx_device_s*
  %call64 = call i32 @gs_setdevice_no_init(%struct.gs_state_s* %84, %struct.gx_device_s* %86) #3
  %87 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst, align 8, !tbaa !1
  %templat65 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %87, i32 0, i32 4
  %uses_transparency = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %templat65, i32 0, i32 6
  %88 = load i32, i32* %uses_transparency, align 4, !tbaa !88
  %tobool66 = icmp ne i32 %88, 0
  br i1 %tobool66, label %if.then.67, label %if.else.73

if.then.67:                                       ; preds = %if.then.63
  br label %do.body

do.body:                                          ; preds = %if.then.67
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %89 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %call68 = call i32 @gs_push_pdf14trans_device(%struct.gs_state_s* %89, i32 1) #3
  store i32 %call68, i32* %code, align 4, !tbaa !11
  %cmp69 = icmp slt i32 %call68, 0
  br i1 %cmp69, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %do.end
  %90 = load i32, i32* %code, align 4, !tbaa !11
  store i32 %90, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.214

if.end.72:                                        ; preds = %do.end
  br label %if.end.85

if.else.73:                                       ; preds = %if.then.63
  %91 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst, align 8, !tbaa !1
  %templat74 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %91, i32 0, i32 4
  %PaintType = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %templat74, i32 0, i32 4
  %92 = load i32, i32* %PaintType, align 4, !tbaa !89
  %cmp75 = icmp eq i32 %92, 1
  br i1 %cmp75, label %land.lhs.true, label %if.end.84

land.lhs.true:                                    ; preds = %if.else.73
  %93 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst, align 8, !tbaa !1
  %is_clist = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %93, i32 0, i32 11
  %94 = load i32, i32* %is_clist, align 4, !tbaa !90
  %tobool77 = icmp ne i32 %94, 0
  br i1 %tobool77, label %if.end.84, label %if.then.78

if.then.78:                                       ; preds = %land.lhs.true
  %95 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %call79 = call i32 @gx_erase_colored_pattern(%struct.gs_state_s* %95) #3
  store i32 %call79, i32* %code, align 4, !tbaa !11
  %cmp80 = icmp slt i32 %call79, 0
  br i1 %cmp80, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %if.then.78
  %96 = load i32, i32* %code, align 4, !tbaa !11
  store i32 %96, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.214

if.end.83:                                        ; preds = %if.then.78
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %land.lhs.true, %if.else.73
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.84, %if.end.72
  br label %if.end.141

if.else.86:                                       ; preds = %if.end.61
  %97 = bitcast %struct.gs_matrix_s* %m to i8*
  call void @llvm.lifetime.start(i64 24, i8* %97) #1
  %98 = bitcast %struct.gs_rect_s* %bbox to i8*
  call void @llvm.lifetime.start(i64 32, i8* %98) #1
  %99 = bitcast %struct.gs_fixed_rect_s* %clip_box to i8*
  call void @llvm.lifetime.start(i64 16, i8* %99) #1
  %100 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %device87 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %100, i32 0, i32 78
  %101 = load %struct.gx_device_s*, %struct.gx_device_s** %device87, align 8, !tbaa !57
  %procs88 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %101, i32 0, i32 42
  %get_initial_matrix = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs88, i32 0, i32 1
  %102 = load void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)** %get_initial_matrix, align 8, !tbaa !91
  %103 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %device89 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %103, i32 0, i32 78
  %104 = load %struct.gx_device_s*, %struct.gx_device_s** %device89, align 8, !tbaa !57
  call void %102(%struct.gx_device_s* %104, %struct.gs_matrix_s* %m) #3
  %105 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs90 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %105, i32 0, i32 0
  %106 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs90, align 8, !tbaa !47
  %call91 = call i32 @gs_setmatrix(%struct.gs_state_s* %106, %struct.gs_matrix_s* %m) #3
  %107 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst, align 8, !tbaa !1
  %templat92 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %107, i32 0, i32 4
  %BBox = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %templat92, i32 0, i32 7
  %108 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %ctm = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %108, i32 0, i32 5
  %109 = bitcast %struct.gs_matrix_fixed_s* %ctm to %struct.gs_matrix_s*
  %call93 = call i32 @gs_bbox_transform(%struct.gs_rect_s* %BBox, %struct.gs_matrix_s* %109, %struct.gs_rect_s* %bbox) #3
  store i32 %call93, i32* %code, align 4, !tbaa !11
  %110 = load i32, i32* %code, align 4, !tbaa !11
  %cmp94 = icmp slt i32 %110, 0
  br i1 %cmp94, label %if.then.96, label %if.end.98

if.then.96:                                       ; preds = %if.else.86
  %111 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %call97 = call i32 @gs_grestore(%struct.gs_state_s* %111) #3
  %112 = load i32, i32* %code, align 4, !tbaa !11
  store i32 %112, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.136

if.end.98:                                        ; preds = %if.else.86
  %p99 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p99, i32 0, i32 0
  %113 = load double, double* %x, align 8, !tbaa !92
  %mul = fmul double %113, 2.560000e+02
  %conv100 = fptosi double %mul to i32
  %p101 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %clip_box, i32 0, i32 0
  %x102 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p101, i32 0, i32 0
  store i32 %conv100, i32* %x102, align 4, !tbaa !93
  %p103 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p103, i32 0, i32 1
  %114 = load double, double* %y, align 8, !tbaa !95
  %mul104 = fmul double %114, 2.560000e+02
  %conv105 = fptosi double %mul104 to i32
  %p106 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %clip_box, i32 0, i32 0
  %y107 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p106, i32 0, i32 1
  store i32 %conv105, i32* %y107, align 4, !tbaa !96
  %q = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 1
  %x108 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q, i32 0, i32 0
  %115 = load double, double* %x108, align 8, !tbaa !97
  %mul109 = fmul double %115, 2.560000e+02
  %conv110 = fptosi double %mul109 to i32
  %q111 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %clip_box, i32 0, i32 1
  %x112 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q111, i32 0, i32 0
  store i32 %conv110, i32* %x112, align 4, !tbaa !98
  %q113 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 1
  %y114 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q113, i32 0, i32 1
  %116 = load double, double* %y114, align 8, !tbaa !99
  %mul115 = fmul double %116, 2.560000e+02
  %conv116 = fptosi double %mul115 to i32
  %q117 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %clip_box, i32 0, i32 1
  %y118 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q117, i32 0, i32 1
  store i32 %conv116, i32* %y118, align 4, !tbaa !100
  %117 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs119 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %117, i32 0, i32 0
  %118 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs119, align 8, !tbaa !47
  %call120 = call i32 @gx_clip_to_rectangle(%struct.gs_state_s* %118, %struct.gs_fixed_rect_s* %clip_box) #3
  store i32 %call120, i32* %code, align 4, !tbaa !11
  %119 = load i32, i32* %code, align 4, !tbaa !11
  %cmp121 = icmp slt i32 %119, 0
  br i1 %cmp121, label %if.then.123, label %if.end.125

if.then.123:                                      ; preds = %if.end.98
  %120 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %call124 = call i32 @gs_grestore(%struct.gs_state_s* %120) #3
  %121 = load i32, i32* %code, align 4, !tbaa !11
  store i32 %121, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.136

if.end.125:                                       ; preds = %if.end.98
  %122 = load %struct.gx_device_s*, %struct.gx_device_s** %cdev, align 8, !tbaa !1
  %procs126 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %122, i32 0, i32 42
  %dev_spec_op127 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs126, i32 0, i32 65
  %123 = load i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)** %dev_spec_op127, align 8, !tbaa !71
  %124 = load %struct.gx_device_s*, %struct.gx_device_s** %cdev, align 8, !tbaa !1
  %125 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst, align 8, !tbaa !1
  %126 = bitcast %struct.gs_pattern1_instance_s* %125 to i8*
  %127 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst, align 8, !tbaa !1
  %id128 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %127, i32 0, i32 13
  %128 = load i64, i64* %id128, align 8, !tbaa !81
  %conv129 = trunc i64 %128 to i32
  %call130 = call i32 %123(%struct.gx_device_s* %124, i32 1, i8* %126, i32 %conv129) #3
  store i32 %call130, i32* %code, align 4, !tbaa !11
  %129 = load i32, i32* %code, align 4, !tbaa !11
  %cmp131 = icmp slt i32 %129, 0
  br i1 %cmp131, label %if.then.133, label %if.end.135

if.then.133:                                      ; preds = %if.end.125
  %130 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %call134 = call i32 @gs_grestore(%struct.gs_state_s* %130) #3
  %131 = load i32, i32* %code, align 4, !tbaa !11
  store i32 %131, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.136

if.end.135:                                       ; preds = %if.end.125
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.136

cleanup.136:                                      ; preds = %if.end.135, %if.then.133, %if.then.123, %if.then.96
  %132 = bitcast %struct.gs_fixed_rect_s* %clip_box to i8*
  call void @llvm.lifetime.end(i64 16, i8* %132) #1
  %133 = bitcast %struct.gs_rect_s* %bbox to i8*
  call void @llvm.lifetime.end(i64 32, i8* %133) #1
  %134 = bitcast %struct.gs_matrix_s* %m to i8*
  call void @llvm.lifetime.end(i64 24, i8* %134) #1
  %cleanup.dest.139 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.139, label %cleanup.214 [
    i32 0, label %cleanup.cont.140
  ]

cleanup.cont.140:                                 ; preds = %cleanup.136
  br label %if.end.141

if.end.141:                                       ; preds = %cleanup.cont.140, %if.end.85
  %135 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack142 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %135, i32 0, i32 25
  %stack143 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack142, i32 0, i32 0
  %p144 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack143, i32 0, i32 0
  %136 = load %struct.ref_s*, %struct.ref_s** %p144, align 8, !tbaa !68
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %136, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %p144, align 8, !tbaa !68
  %137 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack145 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %137, i32 0, i32 25
  %stack146 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack145, i32 0, i32 0
  %p147 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack146, i32 0, i32 0
  %138 = load %struct.ref_s*, %struct.ref_s** %p147, align 8, !tbaa !68
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %138, i32 0, i32 1
  %opproc = bitcast %union.v* %value to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @pattern_paint_cleanup, i32 (%struct.gs_context_state_s*)** %opproc, align 8, !tbaa !1
  %139 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack148 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %139, i32 0, i32 25
  %stack149 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack148, i32 0, i32 0
  %p150 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack149, i32 0, i32 0
  %140 = load %struct.ref_s*, %struct.ref_s** %p150, align 8, !tbaa !68
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %140, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 3712, i16* %type_attrs, align 2, !tbaa !30
  %141 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack151 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %141, i32 0, i32 25
  %stack152 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack151, i32 0, i32 0
  %p153 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack152, i32 0, i32 0
  %142 = load %struct.ref_s*, %struct.ref_s** %p153, align 8, !tbaa !68
  %tas154 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %142, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas154, i32 0, i32 2
  store i32 0, i32* %rsize, align 4, !tbaa !101
  %143 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack155 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %143, i32 0, i32 25
  %stack156 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack155, i32 0, i32 0
  %p157 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack156, i32 0, i32 0
  %144 = load %struct.ref_s*, %struct.ref_s** %p157, align 8, !tbaa !68
  %incdec.ptr158 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %144, i32 1
  store %struct.ref_s* %incdec.ptr158, %struct.ref_s** %p157, align 8, !tbaa !68
  %145 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %pdev, align 8, !tbaa !1
  %146 = bitcast %struct.gx_device_forward_s* %145 to %struct.obj_header_s*
  %147 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack159 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %147, i32 0, i32 25
  %stack160 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack159, i32 0, i32 0
  %p161 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack160, i32 0, i32 0
  %148 = load %struct.ref_s*, %struct.ref_s** %p161, align 8, !tbaa !68
  %value162 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %148, i32 0, i32 1
  %pstruct = bitcast %union.v* %value162 to %struct.obj_header_s**
  store %struct.obj_header_s* %146, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %149 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory163 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %149, i32 0, i32 1
  %current_space = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory163, i32 0, i32 2
  %150 = load i32, i32* %current_space, align 4, !tbaa !52
  %or = or i32 0, %150
  %add = add i32 2048, %or
  %conv164 = trunc i32 %add to i16
  %151 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack165 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %151, i32 0, i32 25
  %stack166 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack165, i32 0, i32 0
  %p167 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack166, i32 0, i32 0
  %152 = load %struct.ref_s*, %struct.ref_s** %p167, align 8, !tbaa !68
  %tas168 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %152, i32 0, i32 0
  %type_attrs169 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas168, i32 0, i32 0
  store i16 %conv164, i16* %type_attrs169, align 2, !tbaa !30
  %153 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack170 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %153, i32 0, i32 25
  %stack171 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack170, i32 0, i32 0
  %p172 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack171, i32 0, i32 0
  %154 = load %struct.ref_s*, %struct.ref_s** %p172, align 8, !tbaa !68
  %incdec.ptr173 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %154, i32 1
  store %struct.ref_s* %incdec.ptr173, %struct.ref_s** %p172, align 8, !tbaa !68
  %155 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %155, i32 0, i32 26
  %stack174 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %call175 = call i32 @ref_stack_count(%struct.ref_stack_s* %stack174) #3
  %conv176 = zext i32 %call175 to i64
  %156 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack177 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %156, i32 0, i32 25
  %stack178 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack177, i32 0, i32 0
  %p179 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack178, i32 0, i32 0
  %157 = load %struct.ref_s*, %struct.ref_s** %p179, align 8, !tbaa !68
  %value180 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %157, i32 0, i32 1
  %intval = bitcast %union.v* %value180 to i64*
  store i64 %conv176, i64* %intval, align 8, !tbaa !13
  %158 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack181 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %158, i32 0, i32 25
  %stack182 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack181, i32 0, i32 0
  %p183 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack182, i32 0, i32 0
  %159 = load %struct.ref_s*, %struct.ref_s** %p183, align 8, !tbaa !68
  %tas184 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %159, i32 0, i32 0
  %type_attrs185 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas184, i32 0, i32 0
  store i16 2816, i16* %type_attrs185, align 2, !tbaa !30
  %160 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack186 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %160, i32 0, i32 25
  %stack187 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack186, i32 0, i32 0
  %p188 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack187, i32 0, i32 0
  %161 = load %struct.ref_s*, %struct.ref_s** %p188, align 8, !tbaa !68
  %incdec.ptr189 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %161, i32 1
  store %struct.ref_s* %incdec.ptr189, %struct.ref_s** %p188, align 8, !tbaa !68
  %162 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack190 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %162, i32 0, i32 25
  %stack191 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack190, i32 0, i32 0
  %p192 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack191, i32 0, i32 0
  %163 = load %struct.ref_s*, %struct.ref_s** %p192, align 8, !tbaa !68
  %value193 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %163, i32 0, i32 1
  %opproc194 = bitcast %union.v* %value193 to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @pattern_paint_finish, i32 (%struct.gs_context_state_s*)** %opproc194, align 8, !tbaa !1
  %164 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack195 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %164, i32 0, i32 25
  %stack196 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack195, i32 0, i32 0
  %p197 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack196, i32 0, i32 0
  %165 = load %struct.ref_s*, %struct.ref_s** %p197, align 8, !tbaa !68
  %tas198 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %165, i32 0, i32 0
  %type_attrs199 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas198, i32 0, i32 0
  store i16 3968, i16* %type_attrs199, align 2, !tbaa !30
  %166 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack200 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %166, i32 0, i32 25
  %stack201 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack200, i32 0, i32 0
  %p202 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack201, i32 0, i32 0
  %167 = load %struct.ref_s*, %struct.ref_s** %p202, align 8, !tbaa !68
  %tas203 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %167, i32 0, i32 0
  %rsize204 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas203, i32 0, i32 2
  store i32 0, i32* %rsize204, align 4, !tbaa !101
  %168 = load %struct.ref_s*, %struct.ref_s** %pdict, align 8, !tbaa !1
  %call205 = call i32 @dict_find_string(%struct.ref_s* %168, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), %struct.ref_s** %ppp) #3
  %169 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack206 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %169, i32 0, i32 25
  %stack207 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack206, i32 0, i32 0
  %p208 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack207, i32 0, i32 0
  %170 = load %struct.ref_s*, %struct.ref_s** %p208, align 8, !tbaa !68
  %incdec.ptr209 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %170, i32 1
  store %struct.ref_s* %incdec.ptr209, %struct.ref_s** %p208, align 8, !tbaa !68
  %171 = load %struct.ref_s*, %struct.ref_s** %ppp, align 8, !tbaa !1
  %172 = bitcast %struct.ref_s* %incdec.ptr209 to i8*
  %173 = bitcast %struct.ref_s* %171 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %172, i8* %173, i64 16, i32 8, i1 false), !tbaa.struct !8
  %174 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack210 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %174, i32 0, i32 25
  %stack211 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack210, i32 0, i32 0
  %p212 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack211, i32 0, i32 0
  %175 = load %struct.ref_s*, %struct.ref_s** %p212, align 8, !tbaa !68
  %incdec.ptr213 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %175, i32 1
  store %struct.ref_s* %incdec.ptr213, %struct.ref_s** %p212, align 8, !tbaa !68
  %176 = load %struct.ref_s*, %struct.ref_s** %pdict, align 8, !tbaa !1
  %177 = bitcast %struct.ref_s* %incdec.ptr213 to i8*
  %178 = bitcast %struct.ref_s* %176 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %177, i8* %178, i64 16, i32 8, i1 false), !tbaa.struct !8
  store i32 5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.214

cleanup.214:                                      ; preds = %if.end.141, %cleanup.136, %if.then.82, %if.then.71, %if.then.59, %if.then.54, %if.then.48, %cleanup.40, %if.then.15, %cleanup
  %179 = bitcast i32* %internal_accum to i8*
  call void @llvm.lifetime.end(i64 4, i8* %179) #1
  %180 = bitcast %struct.ref_s** %ppp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %180) #1
  %181 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %181) #1
  %182 = bitcast %struct.gx_device_s** %cdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %182) #1
  %183 = bitcast %struct.gx_device_forward_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %183) #1
  %184 = bitcast %struct.ref_s** %pdict to i8*
  call void @llvm.lifetime.end(i64 8, i8* %184) #1
  %185 = bitcast %struct.gs_pattern1_instance_s** %pinst to i8*
  call void @llvm.lifetime.end(i64 8, i8* %185) #1
  %186 = bitcast %struct.gs_state_s** %pgs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %186) #1
  %187 = load i32, i32* %retval
  ret i32 %187
}

; Function Attrs: nounwind uwtable
define internal i32 @pattern_paint_finish(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %o_stack_adjust = alloca i32, align 4
  %pdev = alloca %struct.gx_device_forward_s*, align 8
  %pinst = alloca %struct.gs_pattern1_instance_s*, align 8
  %padev = alloca %struct.gx_device_pattern_accum_s*, align 8
  %ctile = alloca %struct.gx_color_tile_s*, align 8
  %code = alloca i32, align 4
  %pgs10 = alloca %struct.gs_state_s*, align 8
  %code12 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast i32* %o_stack_adjust to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %call = call i32 @ref_stack_count(%struct.ref_stack_s* %stack) #3
  %conv = zext i32 %call to i64
  %2 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %2, i32 0, i32 25
  %stack1 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack1, i32 0, i32 0
  %3 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !68
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %4 = load i64, i64* %intval, align 8, !tbaa !13
  %sub = sub nsw i64 %conv, %4
  %conv2 = trunc i64 %sub to i32
  store i32 %conv2, i32* %o_stack_adjust, align 4, !tbaa !11
  %5 = bitcast %struct.gx_device_forward_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %6, i32 0, i32 25
  %stack4 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack3, i32 0, i32 0
  %p5 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack4, i32 0, i32 0
  %7 = load %struct.ref_s*, %struct.ref_s** %p5, align 8, !tbaa !68
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i64 -1
  %value6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i32 0, i32 1
  %pstruct = bitcast %union.v* %value6 to %struct.obj_header_s**
  %8 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %9 = bitcast %struct.obj_header_s* %8 to %struct.gx_device_forward_s*
  store %struct.gx_device_forward_s* %9, %struct.gx_device_forward_s** %pdev, align 8, !tbaa !1
  %10 = bitcast %struct.gs_pattern1_instance_s** %pinst to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %11, i32 0, i32 0
  %12 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !47
  %saved = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %12, i32 0, i32 56
  %13 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8, !tbaa !102
  %call7 = call %struct.gs_client_color_s* @gs_currentcolor(%struct.gs_state_s* %13) #3
  %pattern = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %call7, i32 0, i32 0
  %14 = load %struct.gs_pattern_instance_s*, %struct.gs_pattern_instance_s** %pattern, align 8, !tbaa !49
  %15 = bitcast %struct.gs_pattern_instance_s* %14 to %struct.gs_pattern1_instance_s*
  store %struct.gs_pattern1_instance_s* %15, %struct.gs_pattern1_instance_s** %pinst, align 8, !tbaa !1
  %16 = bitcast %struct.gx_device_pattern_accum_s** %padev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %pdev, align 8, !tbaa !1
  %18 = bitcast %struct.gx_device_forward_s* %17 to %struct.gx_device_pattern_accum_s*
  store %struct.gx_device_pattern_accum_s* %18, %struct.gx_device_pattern_accum_s** %padev, align 8, !tbaa !1
  %19 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %pdev, align 8, !tbaa !1
  %cmp = icmp ne %struct.gx_device_forward_s* %19, null
  br i1 %cmp, label %if.then, label %if.end.39

if.then:                                          ; preds = %entry
  %20 = bitcast %struct.gx_color_tile_s** %ctile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  %21 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst, align 8, !tbaa !1
  %templat = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %22, i32 0, i32 4
  %uses_transparency = getelementptr inbounds %struct.gs_pattern1_template_s, %struct.gs_pattern1_template_s* %templat, i32 0, i32 6
  %23 = load i32, i32* %uses_transparency, align 4, !tbaa !88
  %tobool = icmp ne i32 %23, 0
  br i1 %tobool, label %if.then.9, label %if.end.28

if.then.9:                                        ; preds = %if.then
  %24 = bitcast %struct.gs_state_s** %pgs10 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #1
  %25 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs11 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %25, i32 0, i32 0
  %26 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs11, align 8, !tbaa !47
  store %struct.gs_state_s* %26, %struct.gs_state_s** %pgs10, align 8, !tbaa !1
  %27 = bitcast i32* %code12 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  %28 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst, align 8, !tbaa !1
  %is_clist = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %28, i32 0, i32 11
  %29 = load i32, i32* %is_clist, align 4, !tbaa !90
  %tobool13 = icmp ne i32 %29, 0
  br i1 %tobool13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.then.9
  %30 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs10, align 8, !tbaa !1
  %call15 = call i32 @gs_pop_pdf14trans_device(%struct.gs_state_s* %30, i32 1) #3
  %cmp16 = icmp slt i32 %call15, 0
  %conv17 = zext i1 %cmp16 to i32
  store i32 %conv17, i32* %code12, align 4, !tbaa !11
  %31 = load i32, i32* %code12, align 4, !tbaa !11
  %cmp18 = icmp slt i32 %31, 0
  br i1 %cmp18, label %if.then.20, label %if.end

if.then.20:                                       ; preds = %if.then.14
  %32 = load i32, i32* %code12, align 4, !tbaa !11
  store i32 %32, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then.14
  br label %if.end.26

if.else:                                          ; preds = %if.then.9
  %33 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs10, align 8, !tbaa !1
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %33, i32 0, i32 78
  %34 = load %struct.gx_device_s*, %struct.gx_device_s** %device, align 8, !tbaa !57
  %35 = load %struct.gx_device_pattern_accum_s*, %struct.gx_device_pattern_accum_s** %padev, align 8, !tbaa !1
  %transbuff = getelementptr inbounds %struct.gx_device_pattern_accum_s, %struct.gx_device_pattern_accum_s* %35, i32 0, i32 48
  %36 = load %struct.gx_pattern_trans_s*, %struct.gx_pattern_trans_s** %transbuff, align 8, !tbaa !103
  %37 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs10, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %37, i32 0, i32 1
  %38 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !105
  %call21 = call i32 @pdf14_get_buffer_information(%struct.gx_device_s* %34, %struct.gx_pattern_trans_s* %36, %struct.gs_memory_s* %38, i32 1) #3
  store i32 %call21, i32* %code12, align 4, !tbaa !11
  %39 = load i32, i32* %code12, align 4, !tbaa !11
  %cmp22 = icmp slt i32 %39, 0
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.else
  %40 = load i32, i32* %code12, align 4, !tbaa !11
  store i32 %40, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.25:                                        ; preds = %if.else
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.26, %if.then.24, %if.then.20
  %41 = bitcast i32* %code12 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #1
  %42 = bitcast %struct.gs_state_s** %pgs10 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.35 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.28

if.end.28:                                        ; preds = %cleanup.cont, %if.then
  %43 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs29 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %43, i32 0, i32 0
  %44 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs29, align 8, !tbaa !47
  %45 = bitcast %struct.gs_state_s* %44 to %struct.gs_imager_state_s*
  %46 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %pdev, align 8, !tbaa !1
  %call30 = call i32 @gx_pattern_cache_add_entry(%struct.gs_imager_state_s* %45, %struct.gx_device_forward_s* %46, %struct.gx_color_tile_s** %ctile) #3
  store i32 %call30, i32* %code, align 4, !tbaa !11
  %47 = load i32, i32* %code, align 4, !tbaa !11
  %cmp31 = icmp slt i32 %47, 0
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.end.28
  %48 = load i32, i32* %code, align 4, !tbaa !11
  store i32 %48, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.35

if.end.34:                                        ; preds = %if.end.28
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.35

cleanup.35:                                       ; preds = %if.end.34, %if.then.33, %cleanup
  %49 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #1
  %50 = bitcast %struct.gx_color_tile_s** %ctile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #1
  %cleanup.dest.37 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.37, label %cleanup.53 [
    i32 0, label %cleanup.cont.38
  ]

cleanup.cont.38:                                  ; preds = %cleanup.35
  br label %if.end.39

if.end.39:                                        ; preds = %cleanup.cont.38, %entry
  %51 = load i32, i32* %o_stack_adjust, align 4, !tbaa !11
  %cmp40 = icmp sgt i32 %51, 0
  br i1 %cmp40, label %if.then.42, label %if.end.47

if.then.42:                                       ; preds = %if.end.39
  %52 = load i32, i32* %o_stack_adjust, align 4, !tbaa !11
  %53 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack43 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %53, i32 0, i32 26
  %stack44 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack43, i32 0, i32 0
  %p45 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack44, i32 0, i32 0
  %54 = load %struct.ref_s*, %struct.ref_s** %p45, align 8, !tbaa !17
  %idx.ext = sext i32 %52 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr46 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %54, i64 %idx.neg
  store %struct.ref_s* %add.ptr46, %struct.ref_s** %p45, align 8, !tbaa !17
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.42, %if.end.39
  %55 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack48 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %55, i32 0, i32 25
  %stack49 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack48, i32 0, i32 0
  %p50 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack49, i32 0, i32 0
  %56 = load %struct.ref_s*, %struct.ref_s** %p50, align 8, !tbaa !68
  %add.ptr51 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %56, i64 -3
  store %struct.ref_s* %add.ptr51, %struct.ref_s** %p50, align 8, !tbaa !68
  %57 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call52 = call i32 @pattern_paint_cleanup(%struct.gs_context_state_s* %57) #3
  store i32 14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.53

cleanup.53:                                       ; preds = %if.end.47, %cleanup.35
  %58 = bitcast %struct.gx_device_pattern_accum_s** %padev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #1
  %59 = bitcast %struct.gs_pattern1_instance_s** %pinst to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #1
  %60 = bitcast %struct.gx_device_forward_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %60) #1
  %61 = bitcast i32* %o_stack_adjust to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #1
  %62 = load i32, i32* %retval
  ret i32 %62
}

; Function Attrs: nounwind uwtable
define internal i32 @zpcolor_init(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %pc = alloca %struct.gx_pattern_cache_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_pattern_cache_s** %pc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 1
  %spaces = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 1
  %memories = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces, i32 0, i32 1
  %named = bitcast %union.anon.3* %memories to %struct._ssn*
  %system = getelementptr inbounds %struct._ssn, %struct._ssn* %named, i32 0, i32 1
  %2 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %system, align 8, !tbaa !106
  %3 = bitcast %struct.gs_ref_memory_s* %2 to %struct.gs_memory_s*
  %call = call i32 @gx_pat_cache_default_tiles() #3
  %call1 = call i64 @gx_pat_cache_default_bits() #3
  %call2 = call %struct.gx_pattern_cache_s* @gx_pattern_alloc_cache(%struct.gs_memory_s* %3, i32 %call, i64 %call1) #3
  store %struct.gx_pattern_cache_s* %call2, %struct.gx_pattern_cache_s** %pc, align 8, !tbaa !1
  %4 = load %struct.gx_pattern_cache_s*, %struct.gx_pattern_cache_s** %pc, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_pattern_cache_s* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %5, i32 0, i32 0
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !47
  %7 = load %struct.gx_pattern_cache_s*, %struct.gx_pattern_cache_s** %pc, align 8, !tbaa !1
  call void @gstate_set_pattern_cache(%struct.gs_state_s* %6, %struct.gx_pattern_cache_s* %7) #3
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %8 = bitcast %struct.gx_pattern_cache_s** %pc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %8) #1
  %9 = load i32, i32* %retval
  ret i32 %9
}

declare void @ref_struct_clear_marks(%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*) #2

declare %struct.gs_ptr_procs_s* @ref_struct_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #2

declare void @ref_struct_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #2

declare i32 @read_matrix(%struct.gs_memory_s*, %struct.ref_s*, %struct.gs_matrix_s*) #2

declare i32 @check_type_failed(%struct.ref_s*) #2

declare void @gs_pattern1_init(%struct.gs_pattern1_template_s*) #2

declare i32 @dict_uid_param(%struct.ref_s*, %struct.gs_uid_s*, i32, %struct.gs_memory_s*, %struct.gs_context_state_s*) #2

declare i32 @dict_int_param(%struct.ref_s*, i8*, i32, i32, i32, i32*) #2

declare i32 @dict_bool_param(%struct.ref_s*, i8*, i32, i32*) #2

declare i32 @dict_floats_param(%struct.gs_memory_s*, %struct.ref_s*, i8*, i32, float*, float*) #2

declare i32 @dict_float_param(%struct.ref_s*, i8*, double, float*) #2

declare i32 @dict_find_string(%struct.ref_s*, i8*, %struct.ref_s**) #2

declare i32 @check_proc_failed(%struct.ref_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @zPaintProc(%struct.gs_client_color_s* %pcc, %struct.gs_state_s* %pgs) #0 {
entry:
  %pcc.addr = alloca %struct.gs_client_color_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_client_color_s* %pcc, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !1
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %client_data = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 2
  %1 = load i8*, i8** %client_data, align 8, !tbaa !108
  %2 = bitcast i8* %1 to %struct.int_gstate_s*
  %remap_color_info = getelementptr inbounds %struct.int_gstate_s, %struct.int_gstate_s* %2, i32 0, i32 11
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %remap_color_info, i32 0, i32 1
  %pstruct = bitcast %union.v* %value to %struct.obj_header_s**
  %3 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %4 = bitcast %struct.obj_header_s* %3 to %struct.int_remap_color_info_s*
  %proc = getelementptr inbounds %struct.int_remap_color_info_s, %struct.int_remap_color_info_s* %4, i32 0, i32 0
  store i32 (%struct.gs_context_state_s*)* @pattern_paint_prepare, i32 (%struct.gs_context_state_s*)** %proc, align 8, !tbaa !109
  ret i32 -103
}

declare i32 @gs_makepattern(%struct.gs_client_color_s*, %struct.gs_pattern1_template_s*, %struct.gs_matrix_s*, %struct.gs_state_s*, %struct.gs_memory_s*) #2

declare %struct.gx_pattern_cache_s* @gx_pattern_alloc_cache(%struct.gs_memory_s*, i32, i64) #2

declare i32 @gx_pat_cache_default_tiles() #2

declare i64 @gx_pat_cache_default_bits() #2

declare void @gstate_set_pattern_cache(%struct.gs_state_s*, %struct.gx_pattern_cache_s*) #2

declare %struct.gs_client_color_s* @gs_currentcolor(%struct.gs_state_s*) #2

declare i32 @ref_stack_extend(%struct.ref_stack_s*, i32) #2

declare %struct.gx_pattern_cache_s* @gstate_pattern_cache(%struct.gs_state_s*) #2

declare %struct.gx_device_forward_s* @gx_pattern_accum_alloc(%struct.gs_memory_s*, %struct.gs_memory_s*, %struct.gs_pattern1_instance_s*, i8*) #2

declare i32 @gx_pattern_cache_add_dummy_entry(%struct.gs_imager_state_s*, %struct.gs_pattern1_instance_s*, i32) #2

declare i32 @gs_gsave(%struct.gs_state_s*) #2

declare i32 @gs_setgstate(%struct.gs_state_s*, %struct.gs_state_s*) #2

declare i32 @gs_grestore(%struct.gs_state_s*) #2

declare i32 @gs_setdevice_no_init(%struct.gs_state_s*, %struct.gx_device_s*) #2

declare i32 @gs_push_pdf14trans_device(%struct.gs_state_s*, i32) #2

declare i32 @gx_erase_colored_pattern(%struct.gs_state_s*) #2

declare i32 @gs_setmatrix(%struct.gs_state_s*, %struct.gs_matrix_s*) #2

declare i32 @gs_bbox_transform(%struct.gs_rect_s*, %struct.gs_matrix_s*, %struct.gs_rect_s*) #2

declare i32 @gx_clip_to_rectangle(%struct.gs_state_s*, %struct.gs_fixed_rect_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @pattern_paint_cleanup(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %pdev = alloca %struct.gx_device_pattern_accum_s*, align 8
  %code = alloca i32, align 4
  %cdev = alloca %struct.gx_device_s*, align 8
  %code1 = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_pattern_accum_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 25
  %stack = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !68
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 2
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i32 0, i32 1
  %pstruct = bitcast %union.v* %value to %struct.obj_header_s**
  %3 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %4 = bitcast %struct.obj_header_s* %3 to %struct.gx_device_pattern_accum_s*
  store %struct.gx_device_pattern_accum_s* %4, %struct.gx_device_pattern_accum_s** %pdev, align 8, !tbaa !1
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.gx_device_pattern_accum_s*, %struct.gx_device_pattern_accum_s** %pdev, align 8, !tbaa !1
  %cmp = icmp ne %struct.gx_device_pattern_accum_s* %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.gx_device_pattern_accum_s*, %struct.gx_device_pattern_accum_s** %pdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_pattern_accum_s, %struct.gx_device_pattern_accum_s* %7, i32 0, i32 42
  %close_device = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 4
  %8 = load i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)** %close_device, align 8, !tbaa !111
  %9 = load %struct.gx_device_pattern_accum_s*, %struct.gx_device_pattern_accum_s** %pdev, align 8, !tbaa !1
  %10 = bitcast %struct.gx_device_pattern_accum_s* %9 to %struct.gx_device_s*
  %call = call i32 %8(%struct.gx_device_s* %10) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %11, i32 0, i32 0
  %12 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !47
  %call1 = call i32 @gs_grestore(%struct.gs_state_s* %12) #3
  store i32 %call1, i32* %code, align 4, !tbaa !11
  %13 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs2 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %13, i32 0, i32 0
  %14 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs2, align 8, !tbaa !47
  %color = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %14, i32 0, i32 69
  %arrayidx = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %color, i32 0, i64 0
  %dev_color = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx, i32 0, i32 2
  %15 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color, align 8, !tbaa !112
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %15, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_none, %struct.gx_device_color_type_s** %type, align 8, !tbaa !114
  %16 = load %struct.gx_device_pattern_accum_s*, %struct.gx_device_pattern_accum_s** %pdev, align 8, !tbaa !1
  %cmp3 = icmp eq %struct.gx_device_pattern_accum_s* %16, null
  br i1 %cmp3, label %if.then.4, label %if.end.12

if.then.4:                                        ; preds = %if.end
  %17 = bitcast %struct.gx_device_s** %cdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  %18 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs5 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %18, i32 0, i32 0
  %19 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs5, align 8, !tbaa !47
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %19, i32 0, i32 78
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %device, align 8, !tbaa !57
  store %struct.gx_device_s* %20, %struct.gx_device_s** %cdev, align 8, !tbaa !1
  %21 = bitcast i32* %code1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = load %struct.gx_device_s*, %struct.gx_device_s** %cdev, align 8, !tbaa !1
  %procs6 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %22, i32 0, i32 42
  %dev_spec_op = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs6, i32 0, i32 65
  %23 = load i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)** %dev_spec_op, align 8, !tbaa !71
  %24 = load %struct.gx_device_s*, %struct.gx_device_s** %cdev, align 8, !tbaa !1
  %call7 = call i32 %23(%struct.gx_device_s* %24, i32 2, i8* null, i32 0) #3
  store i32 %call7, i32* %code1, align 4, !tbaa !11
  %25 = load i32, i32* %code, align 4, !tbaa !11
  %cmp8 = icmp eq i32 %25, 0
  br i1 %cmp8, label %land.lhs.true, label %if.end.11

land.lhs.true:                                    ; preds = %if.then.4
  %26 = load i32, i32* %code1, align 4, !tbaa !11
  %cmp9 = icmp slt i32 %26, 0
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %land.lhs.true
  %27 = load i32, i32* %code1, align 4, !tbaa !11
  store i32 %27, i32* %code, align 4, !tbaa !11
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %land.lhs.true, %if.then.4
  %28 = bitcast i32* %code1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  %29 = bitcast %struct.gx_device_s** %cdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %if.end
  %30 = load i32, i32* %code, align 4, !tbaa !11
  %31 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  %32 = bitcast %struct.gx_device_pattern_accum_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  ret i32 %30
}

declare i32 @ref_stack_count(%struct.ref_stack_s*) #2

declare i32 @gs_pop_pdf14trans_device(%struct.gs_state_s*, i32) #2

declare i32 @pdf14_get_buffer_information(%struct.gx_device_s*, %struct.gx_pattern_trans_s*, %struct.gs_memory_s*, i32) #2

declare i32 @gx_pattern_cache_add_entry(%struct.gs_imager_state_s*, %struct.gx_device_forward_s*, %struct.gx_color_tile_s**) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !2, i64 72}
!6 = !{!"gs_memory_s", !2, i64 0, !7, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!7 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!8 = !{i64 0, i64 2, !9, i64 2, i64 2, !9, i64 4, i64 4, !11, i64 8, i64 8, !13, i64 8, i64 2, !9, i64 8, i64 4, !15, i64 8, i64 8, !13, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !13}
!9 = !{!10, !10, i64 0}
!10 = !{!"short", !3, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !3, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"long", !3, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"float", !3, i64 0}
!17 = !{!18, !2, i64 624}
!18 = !{!"gs_context_state_s", !2, i64 0, !19, i64 8, !12, i64 80, !21, i64 88, !21, i64 104, !14, i64 120, !14, i64 128, !14, i64 136, !12, i64 144, !12, i64 148, !21, i64 152, !21, i64 168, !12, i64 184, !12, i64 188, !12, i64 192, !12, i64 196, !2, i64 200, !3, i64 208, !2, i64 256, !23, i64 264, !23, i64 304, !2, i64 344, !12, i64 352, !2, i64 360, !24, i64 368, !26, i64 520, !27, i64 624, !2, i64 720}
!19 = !{!"gs_dual_memory_s", !2, i64 0, !20, i64 8, !12, i64 48, !2, i64 56, !12, i64 64, !12, i64 68}
!20 = !{!"vm_spaces_s", !2, i64 0, !3, i64 8}
!21 = !{!"ref_s", !22, i64 0, !3, i64 8}
!22 = !{!"tas_s", !10, i64 0, !10, i64 2, !12, i64 4}
!23 = !{!"op_array_table_s", !21, i64 0, !2, i64 16, !12, i64 24, !12, i64 28, !12, i64 32}
!24 = !{!"dict_stack_s", !25, i64 0, !12, i64 96, !12, i64 100, !12, i64 104, !2, i64 112, !12, i64 120, !2, i64 128, !21, i64 136}
!25 = !{!"ref_stack_s", !2, i64 0, !2, i64 8, !2, i64 16, !21, i64 24, !12, i64 40, !12, i64 44, !21, i64 48, !12, i64 64, !12, i64 68, !12, i64 72, !2, i64 80, !2, i64 88}
!26 = !{!"exec_stack_s", !25, i64 0, !2, i64 96}
!27 = !{!"op_stack_s", !25, i64 0}
!28 = !{!18, !2, i64 8}
!29 = !{!3, !3, i64 0}
!30 = !{!21, !10, i64 0}
!31 = !{!32, !16, i64 0}
!32 = !{!"gs_matrix_s", !16, i64 0, !16, i64 4, !16, i64 8, !16, i64 12, !16, i64 16, !16, i64 20}
!33 = !{!32, !16, i64 12}
!34 = !{!32, !16, i64 4}
!35 = !{!32, !16, i64 8}
!36 = !{!37, !41, i64 56}
!37 = !{!"gs_pattern1_template_s", !2, i64 0, !12, i64 8, !38, i64 16, !2, i64 32, !12, i64 40, !12, i64 44, !12, i64 48, !39, i64 56, !16, i64 88, !16, i64 92, !2, i64 96}
!38 = !{!"gs_uid_s", !14, i64 0, !2, i64 8}
!39 = !{!"gs_rect_s", !40, i64 0, !40, i64 16}
!40 = !{!"gs_point_s", !41, i64 0, !41, i64 8}
!41 = !{!"double", !3, i64 0}
!42 = !{!37, !41, i64 64}
!43 = !{!37, !41, i64 72}
!44 = !{!37, !41, i64 80}
!45 = !{!37, !2, i64 96}
!46 = !{!37, !2, i64 32}
!47 = !{!18, !2, i64 0}
!48 = !{!6, !2, i64 24}
!49 = !{!50, !2, i64 0}
!50 = !{!"gs_client_color_s", !2, i64 0, !51, i64 8}
!51 = !{!"gs_paint_color_s", !3, i64 0}
!52 = !{!19, !12, i64 48}
!53 = !{!54, !2, i64 80}
!54 = !{!"gs_pattern1_instance_s", !55, i64 0, !2, i64 24, !2, i64 32, !14, i64 40, !37, i64 48, !32, i64 152, !39, i64 176, !12, i64 208, !12, i64 212, !12, i64 216, !12, i64 220, !12, i64 224, !56, i64 228, !14, i64 240}
!55 = !{!"rc_header_s", !14, i64 0, !2, i64 8, !2, i64 16}
!56 = !{!"gs_int_point_s", !12, i64 0, !12, i64 4}
!57 = !{!58, !2, i64 1872}
!58 = !{!"gs_state_s", !12, i64 0, !2, i64 8, !2, i64 16, !59, i64 24, !12, i64 128, !61, i64 132, !12, i64 168, !40, i64 176, !40, i64 192, !12, i64 208, !12, i64 212, !10, i64 216, !3, i64 220, !62, i64 224, !62, i64 228, !63, i64 232, !14, i64 240, !12, i64 248, !12, i64 252, !12, i64 256, !2, i64 264, !12, i64 272, !12, i64 276, !12, i64 280, !12, i64 284, !12, i64 288, !12, i64 292, !16, i64 296, !64, i64 300, !12, i64 308, !12, i64 312, !12, i64 316, !16, i64 320, !12, i64 324, !12, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !12, i64 408, !2, i64 416, !2, i64 424, !65, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !66, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !66, i64 1336, !2, i64 1616, !32, i64 1624, !12, i64 1648, !32, i64 1652, !12, i64 1676, !2, i64 1680, !2, i64 1688, !2, i64 1696, !2, i64 1704, !14, i64 1712, !14, i64 1720, !2, i64 1728, !12, i64 1736, !3, i64 1744, !2, i64 1792, !2, i64 1800, !61, i64 1808, !12, i64 1844, !3, i64 1848, !3, i64 1852, !2, i64 1856, !12, i64 1864, !2, i64 1872, !2, i64 1880, !67, i64 1888}
!59 = !{!"gx_line_params_s", !16, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !12, i64 20, !16, i64 24, !16, i64 28, !16, i64 32, !12, i64 36, !32, i64 40, !60, i64 64}
!60 = !{!"gx_dash_params_s", !2, i64 0, !12, i64 8, !16, i64 12, !12, i64 16, !16, i64 20, !12, i64 24, !12, i64 28, !16, i64 32}
!61 = !{!"gs_matrix_fixed_s", !16, i64 0, !16, i64 4, !16, i64 8, !16, i64 12, !16, i64 16, !16, i64 20, !12, i64 24, !12, i64 28, !12, i64 32}
!62 = !{!"gs_transparency_source_s", !16, i64 0}
!63 = !{!"gs_xstate_trans_flags", !12, i64 0, !12, i64 4}
!64 = !{!"gs_fixed_point_s", !12, i64 0, !12, i64 4}
!65 = !{!"gx_transfer_s", !12, i64 0, !2, i64 8, !12, i64 16, !2, i64 24, !12, i64 32, !2, i64 40, !12, i64 48, !2, i64 56}
!66 = !{!"gs_devicen_color_map_s", !12, i64 0, !3, i64 4, !12, i64 8, !12, i64 12, !14, i64 16, !3, i64 24}
!67 = !{!"gs_state_client_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!68 = !{!18, !2, i64 520}
!69 = !{!18, !2, i64 536}
!70 = !{!58, !12, i64 316}
!71 = !{!72, !2, i64 1664}
!72 = !{!"gx_device_s", !12, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !12, i64 40, !2, i64 48, !55, i64 56, !12, i64 80, !12, i64 84, !12, i64 88, !73, i64 96, !75, i64 816, !12, i64 832, !12, i64 836, !12, i64 840, !12, i64 844, !12, i64 848, !12, i64 852, !3, i64 856, !3, i64 864, !12, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !14, i64 928, !14, i64 936, !12, i64 944, !12, i64 948, !12, i64 952, !12, i64 956, !12, i64 960, !14, i64 968, !14, i64 976, !76, i64 984, !12, i64 1052, !12, i64 1056, !77, i64 1064, !2, i64 1104, !3, i64 1112, !79, i64 1120, !80, i64 1144}
!73 = !{!"gx_device_color_info_s", !12, i64 0, !12, i64 4, !3, i64 8, !10, i64 12, !3, i64 14, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !74, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !14, i64 704, !12, i64 712}
!74 = !{!"gx_device_anti_alias_info_s", !12, i64 0, !12, i64 4}
!75 = !{!"gx_device_cached_colors_s", !14, i64 0, !14, i64 8}
!76 = !{!"gx_stroked_gradient_recognizer_s", !12, i64 0, !3, i64 4, !3, i64 36}
!77 = !{!"gdev_space_params_s", !14, i64 0, !14, i64 8, !78, i64 16, !12, i64 32, !3, i64 36}
!78 = !{!"gx_band_params_s", !12, i64 0, !12, i64 4, !14, i64 8}
!79 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!80 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!81 = !{!54, !14, i64 240}
!82 = !{!83, !2, i64 0}
!83 = !{!"gx_pattern_cache_s", !2, i64 0, !2, i64 8, !12, i64 16, !12, i64 20, !12, i64 24, !14, i64 32, !14, i64 40, !2, i64 48}
!84 = !{!85, !2, i64 1144}
!85 = !{!"gx_device_forward_s", !12, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !12, i64 40, !2, i64 48, !55, i64 56, !12, i64 80, !12, i64 84, !12, i64 88, !73, i64 96, !75, i64 816, !12, i64 832, !12, i64 836, !12, i64 840, !12, i64 844, !12, i64 848, !12, i64 852, !3, i64 856, !3, i64 864, !12, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !14, i64 928, !14, i64 936, !12, i64 944, !12, i64 948, !12, i64 952, !12, i64 956, !12, i64 960, !14, i64 968, !14, i64 976, !76, i64 984, !12, i64 1052, !12, i64 1056, !77, i64 1064, !2, i64 1104, !3, i64 1112, !79, i64 1120, !80, i64 1144, !2, i64 1728}
!86 = !{!72, !10, i64 108}
!87 = !{!54, !2, i64 32}
!88 = !{!54, !12, i64 96}
!89 = !{!54, !12, i64 88}
!90 = !{!54, !12, i64 224}
!91 = !{!72, !2, i64 1152}
!92 = !{!39, !41, i64 0}
!93 = !{!94, !12, i64 0}
!94 = !{!"gs_fixed_rect_s", !64, i64 0, !64, i64 8}
!95 = !{!39, !41, i64 8}
!96 = !{!94, !12, i64 4}
!97 = !{!39, !41, i64 16}
!98 = !{!94, !12, i64 8}
!99 = !{!39, !41, i64 24}
!100 = !{!94, !12, i64 12}
!101 = !{!21, !12, i64 4}
!102 = !{!58, !2, i64 1616}
!103 = !{!104, !2, i64 1768}
!104 = !{!"gx_device_pattern_accum_s", !12, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !12, i64 40, !2, i64 48, !55, i64 56, !12, i64 80, !12, i64 84, !12, i64 88, !73, i64 96, !75, i64 816, !12, i64 832, !12, i64 836, !12, i64 840, !12, i64 844, !12, i64 848, !12, i64 852, !3, i64 856, !3, i64 864, !12, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !14, i64 928, !14, i64 936, !12, i64 944, !12, i64 948, !12, i64 952, !12, i64 956, !12, i64 960, !14, i64 968, !14, i64 976, !76, i64 984, !12, i64 1052, !12, i64 1056, !77, i64 1064, !2, i64 1104, !3, i64 1112, !79, i64 1120, !80, i64 1144, !2, i64 1728, !2, i64 1736, !2, i64 1744, !2, i64 1752, !2, i64 1760, !2, i64 1768}
!105 = !{!58, !2, i64 8}
!106 = !{!107, !2, i64 8}
!107 = !{!"_ssn", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!108 = !{!58, !2, i64 16}
!109 = !{!110, !2, i64 0}
!110 = !{!"int_remap_color_info_s", !2, i64 0, !3, i64 8}
!111 = !{!104, !2, i64 1176}
!112 = !{!113, !2, i64 16}
!113 = !{!"", !2, i64 0, !2, i64 8, !2, i64 16}
!114 = !{!115, !2, i64 0}
!115 = !{!"gx_device_color_s", !2, i64 0, !3, i64 8, !56, i64 352, !12, i64 360, !50, i64 368, !116, i64 632}
!116 = !{!"_mask", !117, i64 0, !14, i64 8, !2, i64 16}
!117 = !{!"mp_", !12, i64 0, !12, i64 4}
